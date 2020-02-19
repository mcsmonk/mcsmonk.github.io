---
title:  "Iamroot16 History"
#excerpt: "블라블라"

#header:
#  teaser: /assets/img/seminar.jpg

permalink: /iamroot16/

categories:
    - study
tags:
    - study
    - record
    - linux
    - kernel

last_modified_at: 2020-02-08T18:00:00-15:00

toc: true
toc_sticky: true
toc_label: "On this page"
---

Iamroot 16차 커널 스터디 기록용

# Resources

1. __Iamroot16 주요 사이트__
    0. 16차 통합 커널소스 깃허브 저장소 \[[link](https://github.com/iamroot16/linux)\]
    1. 16차 통합 구글 드라이브 \[[link](https://drive.google.com/drive/folders/1k1f0Q87LehqTN7P--gZ777t-srVI-urm)\]  
    2. 16차 통합 슬랙 \[[link](https://app.slack.com/client/TQNJN657T/CQNJN69AM)\]
    3. 16차 B조 커널소스 깃허브 저장소 \[[link](https://github.com/iamroot16b/linux)\]

2. __참고 사이트__
    0. Linux kernel git repository [link](https://github.com/torvalds/linux)
    1. 문C블로그 [link](http://jake.dothome.co.kr/)
    2. Iamroot [link](http://www.iamroot.org/xe/)
    3. 커널연구회 [link](https://kernel.bz/kernel)
    4. Linux Kernel(4.19) Hacks 블로그 [link](http://rousalome.egloos.com/)
    5. LWN.net [link](https://lwn.net/Kernel/Index/)
    6. GNU manual [link](http://www.gnu.org/manual/), korea [link](http://korea.gnu.org/manual/)

# Records

200215 - 34주차 - 14명 - 세종대학교 대양AI센터 B20

200208 - 33주차 - 14명 - 한양대학교 퓨전테크센터 403호 세미나실

~~200201 - 32주차 - ?명 - 세종대학교 대양AI센터 B103~~ - __휴가__

200118 - 31주차 - 명 - 한양대학교 퓨전테크센터 403호 세미나실

200111 - 30주차 - 15명 - 세종대학교 대양AI센터 B103

200104 - 29주차 - 16명 - 세종대학교 대양AI센터 B103

191221 - 28주차 - ?명 - 세종대학교 대양AI센터 B102 - __주말 여행__

191214 - 27주차 - 16명 - 세종대학교 대양AI센터 B102

191207 - 26주차 - 11명 - 세종대학교 대양AI센터 B102

191130 - 25주차 - 12명 - 세종대학교 충무관 - 친척 형 결혼식 후 7시부터 참석

191123 - 24주차 - 18명 - 세종대학교 대양AI센터 - 통합 시작 !

191116 - 20주차(23주차) - 2명 - 고려대학교 미래융합기술관

191109 - 19주차 - 명 - 세종대학교 광개토관 428호, 통합 스터디 2차 시도

191102 - 18주차 - 18명 - 세종대학교 대양AI센터, 통합 스터디 시도

191025 - 17주차 - 2명 - 고려대학교 미래융합기술관, 통합논의 강남 힐스터디

191019 - 16주차 - 2명 - 고려대학교 미래융합기술관

191012 - 15주차 - 2명 - 고려대학교 미래융합기술관

191005 - 14주차 - 3명 - 강남 스터디블룸

190921 - 13주차 - 2명 - 강남 슈퍼스타트

~~190914 - 13주차 - ?명 - ?~~ - __추석__ ~~핑계가 너무 많다~~

~~190907 - 13주차 - ?명 - ?~~ - __태풍 링링__

~~190824 - 12주차 - ?명 - ?~~ - __CHES 2019 참석__

190817 - 11주차 - 6명 - 강남 힐스터디

190810 - 25명 - Iamroot 16기 연합스터디

190803 - 10주차 - 6명 - 강남 힐스터디

190720 - 9주차 - 8명 - 강남 슈퍼스타트

> arch/arm64/kernel/head.S 분석 완료  
> init/main.c : start_kernel 분석 시작  

190713 - 8주차 - 7명 - 독산 모카플레이스

~~190706 - 7주차 - ??명 - 강남 SG 스터디룸~~ - __휴가 제주도__

190629 - 6주차 - 15명 - 강남 공간이즈

~~190622 - 5주차 - 15명 - 이수역 코지모임공간 교대점~~ - __CISC-S 2019 발표__

> arch/arm64/kernel/head.S 분석 시작

190615 - 4주차 - ??명 - 고려대학교 로봇융합관 301호

190608 - 3주차 - ??명 - 고려대학교 로봇융합관 301호

190601 - 2주차 - ?? 명 - 광운대학교 비마관 504호

190525 - 1주차 - ?? 명 - 고려대학교 우정정보관 202호

190518 - 0주차 - 오리엔테이션


# 스터디 진행 내용

## 34주차
> 요약  
> 1. 진행사항  
> start_kernel (init/main.c)  
>  - setup_arch (arch/arm64/kernel/setup.c) 진행 중  
>    - cpu_uninstall_idmap (arch/arm64/include/asm/mmu_context.h) 진행 중  
>      - cpu_set_reserved_ttbr0 (arch/arm64/include/asm/mmu_context.h)  
>      - local_flush_tlb_all (arch/arm64/include/asm/tlbflush.h)  
>      - cpu_set_default_tcr_t0sz (arch/arm64/include/asm/mmu_context.h)  
>      - cpu_switch_mm (arch/arm64/include/asm/mmu_context.h)  
>        - cpu_set_reserved_ttbr0 (arch/arm64/include/asm/mmu_context.h)  
>        - cpu_do_switch_mm (arch/arm64/include/mm/proc.S)  
>    - xen_early_init (include/xen/arm/hypervisor.h)  
>    - efi_init (drivers/firmware/efi/arm-init.c)  
>      - efi_get_fdt_params (drivers/firmware/efi/efi.c)  
>        - fdt_find_uefi_params (drivers/firmware/efi/efi.c)  
>      -  efi_memmap_init_early(drivers/firmware/efi/memmap.c) 완료  
>        - __efi_memmap_init (drivers/firmware/efi/memmap.c)  
>          - early_memremap (mm/early_ioremap.c)  
>            - __early_ioremap (mm/early_ioremap.c)  

1. 정리
    - offsetof 함수
        ```
        sunghyun@sunghyun:~$ cat ./offset.c
        #include <stdio.h>

        #define offsetof(TYPE, MEMBER)  ((size_t)&((TYPE *)0)->MEMBER)

        #pragma pack(push,1)
        typedef struct _abc abc;
        struct _abc {
                char a;
                int b;
                int c;
        };
        #pragma pack(pop)


        int main(int argc, char *argv[])
        {
                printf("%lX\n", offsetof(abc, a));
                printf("%lX\n", offsetof(abc, b));
                printf("%lX\n", offsetof(abc, c));

                return 0;
        }
        sunghyun@sunghyun:~$ gcc -o offset ./offset.c
        sunghyun@sunghyun:~$ ./offset
        0
        1
        5
        ```
2. 의문점들
    - d

참고
0. Kernel patch commit message
    - https://www.kernel.org/doc/Documentation/efi-stub.txt
0. Kernel patch commit message
    - 
1. 문C블로그  
    - http://jake.dothome.co.kr/head-64/
    - http://jake.dothome.co.kr/cpu_replace_ttbr1/
2. ARM® Doc  
    - https://developer.arm.com/docs/ddi0595/b/aarch64-system-registers/tcr_el1
3. etc  
    - https://elixir.bootlin.com/linux/v5.1/ident/idmap_t0sz
    - 

## 33주차
> 요약  
> 1. 진행사항  
> start_kernel (init/main.c)  
>  - setup_arch (arch/arm64/kernel/setup.c) 진행 중  
>    - local_daif_restore (arch/arm64/include/asm/daifflags.h) 완료  
>      -  () 진행 중  

1. 정리
    - f
2. 의문점들
    - d

참고
0. Kernel patch commit message
    - https://github.com/iamroot16/linux/commit/cdbc81ddef43c8fdcbd3a26e1a7530c70b629cfc#diff-66b5bf2ac9742f20c65e0b78e669dd77
    - https://patchwork.kernel.org/patch/2849665/
1. 문C블로그  
    - http://jake.dothome.co.kr/
    - http://jake.dothome.co.kr/ic/
2. ARM® Doc
    - https://static.docs.arm.com/ihi0069/c/IHI0069C_gic_architecture_specification.pdf
    - https://static.docs.arm.com/ddi0487/ea/DDI0487E_a_armv8_arm.pdf


## 32주차
> 요약  
> 1. 진행사항  
> start_kernel (init/main.c)  
>  - setup_arch (arch/arm64/kernel/setup.c) 진행 중  
>    - parse_early_param (init/main.c) 완료  
>      - parse_early_options (init/main.c)   
>        - do_early_param (init/main.c)   
>        - parse_args (kernel/params.c)   
>          - parse_args (kernel/params.c)   

1. 정리
    - f
2. 의문점들
    - d

참고
1. 문C블로그  
    - http://jake.dothome.co.kr/parse_args/
    - http://jake.dothome.co.kr/earlycon/

## 31주차
> 요약  
> 1. 진행사항  
> start_kernel (init/main.c)  
>  - setup_arch (arch/arm64/kernel/setup.c) 진행 중  
>    - setup_machine_fdt (arch/arm64/mm/mmu.c) 완료  
>      - early_init_dt_scan (drivers/of/fdt.c)     
>        - early_init_dt_scan_memory (drivers/of/fdt.c)   
>          - early_init_dt_add_memory_arch (drivers/of/fdt.c)   
>            - memblock_add (mm/memblock.c)   
>              - memblock_add_range (mm/memblock.c)   
>                - memblock_double_array (mm/memblock.c)   
>                  - memblock_find_in_range (mm/memblock.c)   
>                    - memblock_find_in_range_node (mm/memblock.c)   
>                      - __memblock_find_range_bottom_up (mm/memblock.c)   
>                        - __next_mem_range (mm/memblock.c)   
>                      - __memblock_find_range_top_down (mm/memblock.c)   
>                  - memblock_free (mm/memblock.c)   
>                    - memblock_remove_range (mm/memblock.c)   
>                      - memblock_isolate_range (mm/memblock.c)   
>                        - memblock_insert_region (mm/memblock.c)   
>                      - memblock_remove_region (mm/memblock.c)   
>                - memblock_merge_regions (mm/memblock.c)   
>          - early_init_dt_mark_hotplug_memory_arch (drivers/of/fdt.c)   
>            - memblock_mark_hotplug (drivers/of/fdt.c)   
>              - memblock_setclr_flag (mm/memblock.c)   

참고
1. 문C블로그  
    - http://jake.dothome.co.kr/memblock-1/
    - http://jake.dothome.co.kr/memblock-2/
2. partial address space mirroring
    - https://lwn.net/Articles/684866/

## 30주차
> 요약  
> 1. 진행사항  
> start_kernel (init/main.c)  
>  - setup_arch (arch/arm64/kernel/setup.c) 진행 중  
>    - setup_machine_fdt (arch/arm64/mm/mmu.c) 진행 중  
>      - early_init_dt_scan (drivers/of/fdt.c)   
>        - early_init_dt_scan_nodes (drivers/of/fdt.c)   
>        - early_init_dt_scan_chosen (drivers/of/fdt.c)   
>        - early_init_dt_scan_root (drivers/of/fdt.c)   
>        - early_init_dt_scan_memory (drivers/of/fdt.c)   
>          - early_init_dt_add_memory_arch (drivers/of/fdt.c)   
>            - memblock_add (mm/memblock.c) 진행 중  

1. 정리
    - fdt 관련 api 정리 필요
2. 의문점들
    - dts,dtsi가 바이너리로 세팅되는 방법

참고
1. 문C블로그  
    - http://jake.dothome.co.kr/dtb1/
    - http://jake.dothome.co.kr/dtb2/
    - http://jake.dothome.co.kr/dtb-fdt-api/

## 29주차
> 요약  
> 1. 복습  
>    1. 차상우님 물리주소<->가상주소 변환 및 페이지 테이블 세팅  
>    2. 양원혁님 : \[[link](https://ywhyuk.github.io/demo/2020/01/01/Translation-table-format-descriptors.html)\]  
>    - 현재까지 한거 거의 전부 요약된 느낌 !  
> 2. 분석  
> start_kernel (init/main.c)  
>  - setup_arch (arch/arm64/kernel/setup.c) 진행 중  
>    - setup_machine_fdt (arch/arm64/mm/mmu.c) 진행 중  
>      - fixmap_remap_fdt (arch/arm64/mm/mmu.c)     
>        - memblock_reserve (mm/memblock.c)   
>          - memblock_add_range (mm/memblock.c)   
>      - early_init_dt_scan (drivers/of/fdt.c)   
>          - early_init_dt_scan_nodes (drivers/of/fdt.c)   
>              - of_scan_flat_dt (drivers/of/fdt.c)   
>              - early_init_dt_scan_chosen (drivers/of/fdt.c)   
>                  - early_init_dt_check_for_initrd (drivers/of/fdt.c)   
>                      - (생략)...  
>                          - fdt_next_tag (scripts/dtc/libfdt/fdt.c) 진행 중  

1. 정리  
    - DTB 구조  
        - 문C블로그 문영일님께서 작성하신 dtb 그림 \[[link](http://jake.dothome.co.kr/dtb1/)\]  
        - [![fig-iamroot-kernel-moonc-dtb1-fig-001](http://jake.dothome.co.kr/wp-content/uploads/2015/11/dtb1.png)](http://jake.dothome.co.kr/dtb1/)  
    - OF (Open Firmware)  
    - bootargs 설정하는 곳 : 검토 필요  
        - bootloader / compile 시점 / device tree  
    - dts, dtsi 차이  
        - .dts <- files for board-level definitions  
        - .dtsi <- files for included files, generally containing SoC-level definitions (the i in dtsi stands for Include)  
    - device tree 의 structure block
        - 4바이트 읽어서 1,2,3 인지에 따라 BEGIN_NODE, END_NODE, PROP 결정  
    - zero length array in structure : a gcc extension  
      ```
      sunghyun@sunghyun:/mnt/c/Users/jin/Desktop$ cat ./arr0.c
      #include \<stdio.h\>
      typedef struct arr0 {
              char a;
              char b;
              char c[0];
      } arr0;
      int main(int argc, char *argv[])
      {
              char a[6] = { 0x12, 0x34, 0x56, 0x78, 0x9A, 0xBC };
              arr0 *aa = (arr0 *) a;
              printf("%p\n", &(aa->a));
              printf("%p\n", &(aa->b));
              printf("%p\n", &(aa->c));
              printf("%p\n", (aa->c+1));
              printf("aa->a    : %x\n", aa->a);
              printf("aa->b    : %x\n", aa->b);
              printf("aa->c[0] : %x\n", (unsigned char)*(aa->c+0));
              printf("aa->c[1] : %x\n", (unsigned char)*(aa->c+1));
              printf("aa->c[2] : %x\n", (unsigned char)*(aa->c+2));
              printf("aa->c[3] : %x\n", (unsigned char)*(aa->c+3));
              return 0;
      }
      sunghyun@sunghyun:/mnt/c/Users/jin/Desktop$ ./arr0
      0x7fffca8bb862
      0x7fffca8bb863
      0x7fffca8bb864
      0x7fffca8bb865
      aa->a    : 12
      aa->b    : 34
      aa->c[0] : 56
      aa->c[1] : 78
      aa->c[2] : 9a
      aa->c[3] : bc
      ```

2. 의문점들
    - Q. Device tree 초기 세팅할 때, CRC32를 이용해 checksum을 계산해놓는데 왜 다른 해쉬함수를 사용하지 않는지 궁금함  
        - 아마도 처음 커널 나올 땐 해쉬함수가 없었을듯 ? 근데 중간에 바뀌지도 않음 ?  
        - 빨라서 ?  
    - Q. 대략 2M dt 에 대한 checksum 계산시 CRC32와 SHA 속도 차이?  

참고
1. 문C블로그  
    - http://jake.dothome.co.kr/fixmap/
    - http://jake.dothome.co.kr/memblock-1/
    - http://jake.dothome.co.kr/dtb1/
2. iamroot16a memblock 정리
    - https://github.com/iamroot16a/study/wiki/memblock
3. Device tree - chosen node
    - https://elinux.org/Device_Tree_Usage#chosen_Node
4. array of length zero
    - https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html

## 27주차
> 요약  
> start_kernel (init/main.c) - boot_cpu_init (init/main.c) 내부  
>  - setup_arch (arch/arm64/kernel/setup.c) 진행 중  
>    - early_fixmap_init (arch/arm64/mm/mmu.c)   
>    - early_ioremap_init (arch/arm64/mm/ioremap.c)   
>    - setup_machine_fdt (arch/arm64/mm/mmu.c) 진행 중  
>      - fixmap_remap_fdt (arch/arm64/mm/mmu.c)   
>        - __fixmap_remap_fdt (arch/arm64/mm/mmu.c)   
>          - create_mapping_noalloc (arch/arm64/mm/mmu.c)   
>            - __create_pgd_mapping (arch/arm64/mm/mmu.c)   
>              - alloc_init_pud (arch/arm64/mm/mmu.c) 진행 중  

1. Folded 개념  
    - 리눅스에서는 4단계 페이지 테이블을 사용  
    - X86 에서 128 PB 메모리 지원을 위해 5레벨 페이지 테이블이 도입됨  
    - 아키텍처에 따라 HW table 레벨 지원이 달라지기 때문에 folded 개념이 생김  
    - LPAE (Large Physical Address Extension)  

2. 의문점들
    - Q. Folded paging 방식이 실제 하드웨어적으로 동작하는 방법  
    - Q. Fixed_addresses enum 에서 __end_of_permanent_fixed_addresses 와 __end_of_fixed_addresses 구분된 이유?  

참고
1. Folded 개념 참고
    -	http://www.renyujie.net/articles/article_os_kernel_1.php
2. 5-level paging at lwn.net
	  - https://lwn.net/Articles/708526/
3. 문C블로그
    - http://jake.dothome.co.kr/pt/
    - http://jake.dothome.co.kr/pt64/
    - http://jake.dothome.co.kr/fixmap/

## 26주차
> 요약  
> start_kernel (init/main.c) - boot_cpu_init (init/main.c) 내부  
>  - setup_arch (arch/arm64/kernel/setup.c) 진행 중  
>    - early_fixmap_init (arch/arm64/mm/mmu.c) 진행 중  

1. early_fixmap_init (arch/arm64/mm/mmu.c)  
    - init_pg_dir, swapper_pg_dir 차이  
    - __VA_ARGS__ 동작 예제 코드
      ```
      sunghyun@sunghyun:/mnt/c/Users/jin/Desktop$ cat ./test.c
      #include <stdio.h>
      #define a1(x) printf("%d...a1\n", x);
      #define a2(x) printf("%d...a2\n", x);
      #define a(x,y,z,...) a##z(x)
      #define aa(x,...) a(x, ##__VA_ARGS__, 1, 2)
      int main()
      {
              aa(5);
              aa(6, 1);
              return 0;
      }
      sunghyun@sunghyun:/mnt/c/Users/jin/Desktop$ ./test
      5...a2
      6...a1
      ```

참고
1. arm64/mm: Separate boot-time page tables from swapper_pg_dir
    - https://github.com/raspberrypi/linux/commit/2b5548b68199c17c1466d5798cf2c9cd806bdaa9
2. 문C블로그
    - http://jake.dothome.co.kr/pt64/
    - http://jake.dothome.co.kr/map64/
    - http://jake.dothome.co.kr/fixmap/
2. iamroot
    - http://www.iamroot.org/xe/index.php?document_srl=209118&mid=Programming#1
3. page table management
    - https://www.kernel.org/doc/gorman/html/understand/understand006.html
4. linux mmu and page table mapping
    - https://developpaper.com/original-armv8-mmu-and-linux-page-table-mapping/

## 25주차
> 요약  
> start_kernel (init/main.c) - boot_cpu_init (init/main.c) 내부  
>  - page_address_init (mm/highmem.c)   
>  - setup_arch (arch/arm64/kernel/setup.c) 진행 중  
>    - early_fixmap_init (arch/arm64/mm/mmu.c) 진행 중  

## 24주차
> 요약  
> start_kernel (init/main.c) - boot_cpu_init (init/main.c) 내부  
>  - smp_processor_id (kernel/cpu.c) 완료  
>  - set_cpu_(online, active, present, possible) (include/linux/cpumask.h) 완료  

start_kernel() -  init/main.c  
  boot_cpu_init() -  init/main.c  
    smp_processor_id() -  kernel/cpu.c  
      raw_smp_processor_id() include/linux/smp.h   //   (*raw_cpu_ptr(&cpu_number))  
    set_cpu_{ online | active | present | possible }(cpu, {true | false}) // cpu bitmap setting (set or clear)  
  
1. smp_processor_id  
  
arch/arm64/include/asm/smp.h  
DECLARE_PER_CPU_READ_MOSTLY(int, cpu_number);  
arch/arm64/kernel/smp.c  
DEFINE_PER_CPU_READ_MOSTLY(int, cpu_number);  
EXPORT_PER_CPU_SYMBOL(cpu_number);  
  
#define DEFINE_PER_CPU_SECTION(type, name, sec) \_\_PCPU_ATTRS(sec) \_\_typeof\_\_(type) name  
#define \_\_PCPU_ATTRS(sec) \_\_percpu \_\_attribute\_\_((section(PER_CPU_BASE_SECTION sec))) PER_CPU_ATTRIBUTES  
  
#define raw_cpu_ptr(ptr) ({ \  
  __verify_pcpu_ptr(ptr); \ // ptr 변수가 들어온지 컴파일 타임에 확인하기 위한 함수 ?  
  arch_raw_cpu_ptr(ptr); \  
})  
  
#define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)  
  
static inline unsigned long __my_cpu_offset(void)  
{  
   unsigned long off;  
   /*  
    * We want to allow caching the value, so avoid using volatile and  
    * instead use a fake stack read to hazard against barrier().  
    */  
   asm(ALTERNATIVE("mrs %0, tpidr_el1",  
                   "mrs %0, tpidr_el2",  
                   ARM64_HAS_VIRT_HOST_EXTN)  
       : "=r" (off) :  
       "Q" (*(const unsigned long *)current_stack_pointer));  
  
   return off;  
}  
  
volatile 이 없음  
입력 변수가 사용되지 않지만 존재  
AAPCS64 에서 stack 는 full-descending 방식으로 변화됨  
즉, sp 는 off 가 들어있는 곳을 가리킴  
비어있는 레지스터에 값을 읽어오고 추후에 off에 값을 넣는방식으로 동작  
  
2. set_cpu_\{online, active, present, possible \}  
p[nr / \_\_BITS_PER_LONG]  |= 1UL << (nr % \_\_BITS_PER_LONG); // atomic하지 않은 동일한 코드  
  
\_\_builtin_return_address(0) : This function returns the return address of the current function, or of one of its callers. The level argument is number of frames to scan up the call stack. A value of 0 yields the return address of the current function, a value of 1 yields the return address of the caller of the current function, and so forth. When inlining the expected behavior is that the function returns the address of the function that is returned to. To work around this behavior use the noinline function attribute.  
  
참고  
1. http://jake.dothome.co.kr/attr1/  
2. http://jake.dothome.co.kr/per-cpu/  
3. http://recipes.egloos.com/5059742  
4. https://community.arm.com/developer/ip-products/processors/b/processors-ip-blog/posts/using-the-stack-in-aarch32-and-aarch64  
5. https://lore.kernel.org/linux-arm-kernel/20180904104830.2975-5-mark.rutland@arm.com/  
6. https://gcc.gnu.org/onlinedocs/gcc/Return-Address.html  

## 20주차 == 23주차
> 요약  
> start_kernel (init/main.c) - setup_arch (arch/arm64/kernel/setup.c) 내부  
>  - early_fixmap_init (arch/arm64/mm/mmu.c)   
>  - early_ioremap_init (arch/arm64/mm/ioremap.c)   
>  - setup_machine_fdt (arch/arm64/kernel/setup.c) 진행 중  

## 19주차
> 요약  
> 통합 시도 스터디 2차 진행  
> A조 스타일  

## 18주차
> 요약  
> 통합 시도 스터디 진행
> 라인바이라인 분석    
> 1. start_kernel 함수 분석  
> 통합할 경우 어떤 방식으로 진행할지 논의  
> ~~논의가 필요한 사항이긴 하지만 어쨌건 평소 스터디보다 만족스럽지 못한 시간 ...~~  

## 17주차
> 요약  
> 13 - 20 스터디 진행  
> 1. Control groups 관련 문서
> - \[LinuxCon Europe 2016\] Control Groups (cgroups) \[[link](http://man7.org/conf/lceu2016/cgroups-LinuxCon.eu_2016-Kerrisk.pdf)\]  
>   
> 20 - 21 강남 이동  
> 21 - 22 조전체 통합 논의  

## 16주차
> 요약  
> 1. arch/arm64/kernel/head.S 재분석 완료  
> - KASLR 생략  
>
> 2. init/main.c : start_kernel 분석  
> - cgroups(Control Groups) 내용 확인  
> - cgroup 관련 자료구조 분석  
> - cgroup_init_early 진행  

## 15주차
> 요약  
> arch/arm64/kernel/head.S  
> - __create_page_tables 완료  
> - idmap_pg_dir 구조 예제 정리 그림  
> ![fig-iamroot-kernel-001-idmap_pg_dir](/assets/img/iamroot16-kernel/191012-iamroot-kernel-001-idmap_pg_dir.png)  

## 14주차
> 요약  
> 부트로더 종류 및 역할  
> Divice Tree 역할 및 예제 확인  
> arch/arm64/kernel/head.S  
> - __create_page_tables 에서 VA_BITS가 PA_BITS보다 작을 경우

## 13주차
> 요약  
> init/main.c : start_kernel 분석  
> - fixmap  
>
> arch/arm64/kernel/head.S : 위 내용과 연관된 부분 복습  
> - 커널 이미지 구성  
> - __create_page_tables  

## 11주차
> 요약  
> init/main.c : start_kernel 분석  
> - cgroups(Control Groups)  
> - Static Key  

## 10주차
> 요약  
> init/main.c : start_kernel 분석  
> - cgroups(Control Groups)  

## 9주차
> 요약  
> arch/arm64/kernel/head.S 분석 완료  
> init/main.c : start_kernel 분석 시작  

## 8주차
> 요약  
> arch/arm64/kernel/head.S 분석  

## 7주차
> 요약  
> arch/arm64/kernel/head.S 분석  

## 6주차
> 요약  
> arch/arm64/kernel/head.S 분석  

## 5주차
> 요약  
CISC-S 2019 발표로 인한 불참  
> "코드로 알아보는 ARM 리눅스 커널"  
> - 1장 ARMv8 아키텍처  

> arch/arm64/kernel/head.S 분석 시작  

## 4주차
> 요약  
> "리눅스 커널 내부구조"  
> - 6장 인터럽트와 트랩 그리고 시스템 호출  

## 3주차
> 요약  
> "리눅스 커널 내부구조"  
> - 4장 메모리관리  
> - 5장 파일시스템과 가상 파일시스템  

## 2주차
> 요약  
> "리눅스 커널 내부구조"  
> - 3장 태스크 관리  
> - 4장 메모리관리 (~Buddy와 Slab)  

## 1주차
> 요약  
> "코드로 알아보는 ARM 리눅스 커널"  
> - 1장 ARMv8 아키텍처  

1. 의문점들
   - 용어
      - 마이크로 아키텍처, TrustZone, Trusted Execution Environment
   - ARMv7 AArch32 vs ARMv8 AArch32 차이
   - ILP32, LP64, 리눅스 데이터 모델
   - 함수 호출시 파라미터 몇개인지 체크하는 방법
   - AAPCS64가 caller, callee에서 레지스터 나눠서 처리하게 하는 방식 사용하는 이유
   - IRQ, FIQ 방식 차이
