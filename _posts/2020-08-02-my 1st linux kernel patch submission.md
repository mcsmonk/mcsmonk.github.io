---
title:  "리눅스 커널 패치 제출 첫경험"
#excerpt: "블라블라"

#header:
#  teaser: /assets/img/seminar.jpg

categories:
    - study
tags:
    - study
    - record
    - linux
    - kernel

last_modified_at: 2020-09-03T19:00:00

toc: true
toc_sticky: true
toc_label: "On this page"
---

# 첫 커널 패치 제출

- [iamroot16](https://github.com/iamroot16/linux) 스터디 진행 중에 발견한 버그를 경험삼아 커널 패치 제출 과정을 해봄
- [AustinKim](http://rousalome.egloos.com/)님의 잘 정리된 [커널 제출 방법](https://kldp.org/node/162104)을 그대로 수행
- 위 글이 있지만 내가 직접 리눅스 커널 패치 제출을 위해 사용한 터미널 명령어 기록을 위해 정리

# 과정
- [iamroot16](https://github.com/iamroot16/linux) 스터디 진행 중에 버그 발견
    - percpu 관련 함수인 pcpu_alloc_first_chunk 함수에서 메모리 할당을 위한 사이즈 계산시 아래 부분에 관련한 버그 존재
    ``` C
    // in mm/percpu.c
    1104         /* allocate chunk */
    1105         alloc_size = sizeof(struct pcpu_chunk) +
    1106                 BITS_TO_LONGS(region_size >> PAGE_SHIFT);
    1107         chunk = memblock_alloc(alloc_size, SMP_CACHE_BYTES);
    ...
    1142         /* manage populated page bitmap */
    1143         chunk->immutable = true;
    1144         bitmap_fill(chunk->populated, chunk->nr_pages);
    ...
    230 static inline void bitmap_fill(unsigned long *dst, unsigned int nbits)
    231 {
    232         unsigned int len = BITS_TO_LONGS(nbits) * sizeof(unsigned long);
    233         memset(dst, 0xff, len);
    234 }
    ```

- 언제 제출해볼 기회가 생길지 몰라서 커널 패치 제출 방법에 대해 자세히 알아보지 않았는데 갑자기 해보고 싶어져 마음만 급했던 상황
- [AustinKim](http://rousalome.egloos.com/)님의 [글](https://kldp.org/node/162104)을 참고하였지만 마지막에 구글 2단계 인증으로 인해 마지막 제출 부분에 문제를 겪었음
    1. 커널 패치 제출물 준비
        ``` BASH
        $ git add ./mm/percpu.c
        $ git commit -m 'mm/percpu.c: Modify size of populated bitmap of chunk for memory allocation'
        $ git commit --amend --author="Sunghyun Jin <mcsmonk@gmail.com>"
        ...
        Write here a description on your patch
        ...

        Signed-off-by: Sunghyun Jin <mcsmonk@gmail.com>

        $ git log -p
        $ git format-patch -1
        $ git format-patch -o /tmp/ head^
        ```
    2. 커널 패치 제출물 컨벤션 검사
        ``` BASH
        $ ./scripts/checkpatch.pl ./0001-mm-percpu.c-Modify-size-of-populated-bitmap-of-chunk.patch
        total: 0 errors, 0 warnings, 8 lines checked

        ./0001-mm-percpu.c-Modify-size-of-populated-bitmap-of-chunk.patch has no obvious style problems and is ready for submission.
        ```
    3. 관련 메인테이너 확인
        ``` BASH
        $ git show HEAD | perl scripts/get_maintainer.pl --separator , --nokeywords --nogit --nogit-fallback --norolestats --nol
        Dennis Zhou <dennis@kernel.org>,Tejun Heo <tj@kernel.org>,Christoph Lameter <cl@linux.com>,Andrew Morton <akpm@linux-foundation.org>
        $ perl scripts/get_maintainer.pl --separator , --nokeywords --nogit --nogit-fallback --norolestats --nol -f ./mm/percpu.c
        Dennis Zhou <dennis@kernel.org>,Tejun Heo <tj@kernel.org>,Christoph Lameter <cl@linux.com>,Andrew Morton <akpm@linux-foundation.org>
        ```
    4. 커널 패치 제출
        - 구글 2단계 인증 때문에 mutt으로 계속 실패해서 git send-email로 시도함

        ``` BASH
        $ sudo apt-get install git-email
        $ git send-email --annotate HEAD^
        $ git send-email head^
        /tmp/QUJQQ7b5bp/0001-mm-percpu.c-Modify-size-of-populated-bitmap-of-chunk.patch
        To whom should the emails be sent (if anyone)? linux-kernel@vger.kernel.org
        Message-ID to be used as In-Reply-To for the first email (if any)? dennis@kernel.org; tj@kernel.org; cl@linux.com; akpm@linux-foundation.org
        (mbox) Adding cc: Sunghyun Jin <mcsmonk@gmail.com> from line 'From: Sunghyun Jin <mcsmonk@gmail.com>'
        (body) Adding cc: Sunghyun Jin <mcsmonk@gmail.com> from line 'Signed-off-by: Sunghyun Jin <mcsmonk@gmail.com>'

        From: mcsmonk <mcsmonk@gmail.com>
        To: linux-kernel@vger.kernel.org
        Cc: Sunghyun Jin <mcsmonk@gmail.com>
        Subject: [PATCH] mm/percpu.c: Modify size of populated bitmap of chunk for memory allocation
        Date: Sun,  2 Aug 2020 21:12:43 +0900
        Message-Id: <20200802121243.15148-1-mcsmonk@gmail.com>
        X-Mailer: git-send-email 2.17.1
        In-Reply-To: <dennis@kernel.org; tj@kernel.org; cl@linux.com; akpm@linux-foundation.org>
        References: <dennis@kernel.org; tj@kernel.org; cl@linux.com; akpm@linux-foundation.org>

            The Cc list above has been expanded by additional
            addresses found in the patch commit message. By default
            send-email prompts before sending whenever this occurs.
            This behavior is controlled by the sendemail.confirm
            configuration setting.

            For additional information, run 'git send-email --help'.
            To retain the current behavior, but squelch this message,
            run 'git config --global sendemail.confirm auto'.

        Send this email? ([y]es|[n]o|[q]uit|[a]ll): y
        OK. Log says:
        Server: smtp.googlemail.com
        MAIL FROM:<mcsmonk@gmail.com>
        RCPT TO:<linux-kernel@vger.kernel.org>
        RCPT TO:<mcsmonk@gmail.com>
        From: mcsmonk <mcsmonk@gmail.com>
        To: linux-kernel@vger.kernel.org
        Cc: Sunghyun Jin <mcsmonk@gmail.com>
        Subject: [PATCH] mm/percpu.c: Modify size of populated bitmap of chunk for memory allocation
        Date: Sun,  2 Aug 2020 21:12:43 +0900
        Message-Id: <20200802121243.15148-1-mcsmonk@gmail.com>
        X-Mailer: git-send-email 2.17.1
        In-Reply-To: <dennis@kernel.org; tj@kernel.org; cl@linux.com; akpm@linux-foundation.org>
        References: <dennis@kernel.org; tj@kernel.org; cl@linux.com; akpm@linux-foundation.org>

        Result: 250
        ```

# 결과
- https://marc.info/?l=linux-kernel&m=159637037815556&w=2
- https://lkml.org/lkml/2020/8/2/94
- 급한 마음에 리눅스 커널 패치 컨벤션도 무시해버림
- 제출한 커밋이 제대로 된건지 피드백 자체가 없어서 모르겠음
    - 제출한 패치가 잘못된 수정인지, 제대로 받을 사람에게 보내진건지, 컨벤션 미준수로 스킵 당한건지 ... 

# TODOLIST
    1. 커널 컨벤션 확인
    2. 커널 패치 제출글 확인
    3. mutt, git send-email 사용법 공부

# 문제 해결 방법
- 구글 2단계 인증으로 인한 문제 해결 방법
    - (구글 계정 - 보안 - 앱 비밀번호) 설정을 통해 만든 비밀번호 사용

# 참고 사이트
- Linux Kernel Official Doc
    - https://www.kernel.org/doc/html/latest/process/submitting-patches.html
- [AustinKim](http://rousalome.egloos.com/)님의 커널 제출 방법
    - https://kldp.org/node/162104
- KernelNewbies: Outreachyfirstpatch
    - https://kernelnewbies.org/Outreachyfirstpatch
- git send-email
    - https://riptutorial.com/ko/git/example/16977/gmail%EC%97%90%EC%84%9C-git-send-email-%EC%82%AC%EC%9A%A9
