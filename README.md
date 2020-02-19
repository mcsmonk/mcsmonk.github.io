
## Github Blog
- [https://mcsmonk.github.io](https://mcsmonk.github.io)
- 이 블로그는 아래 분들의 블로그들을 참고하여 수정할 예정입니다
    - 메인테마
        - [minimal-mistakes](https://github.com/mmistakes/minimal-mistakes)
    - 참고
        - [zzsza](https://zzsza.github.io/)님 - 기존 블로그 스타일
        - [devinlife](https://devinlife.com/)님 - 새로 변경한 블로그 만들기 참고함
        - [ntalbs](https://ntalbs.github.io/about/)님
        - [shryu8902](https://shryu8902.github.io/about/)님
        - [Halryang](http://www.halryang.net/)님
        - [TOT0Ro](https://tot0rokr.github.io/)님
        - [parksb](https://parksb.github.io/about.html)님
- 추가 예정 기능
    - 각주


### Structure

```
.
| # 폴더
├── _data
├── _includes
├── _ipynbs
├── _layouts
├── _pages
|     └── about.md : about에서 나타날 내용
├── _plugins
├── _posts
├── _sass
├── _site : 빌드시 생기는 폴더, 신경쓸 필요 없음
├── assets : css, js, img 등 저장하는 폴더
|
| # 파일
├── README.md
├── _config.yml : 기본 설정이 저장된 파일
├── feed.xml
├── index.html
├── robots.xml
└── sitemap.xml
```

- ```_config.yml```, ```_data```, ```_featured_categories```, ```_featured_tags```, ```about.md``` 내용 수정
- ```seminar.ico```, ```tile-wide.png```, ```tile.png``` 원하는 이미지로 설정

### 로컬 빌드
- Ruby가 설치되어 있어야 합니다
- Ruby 설치는 [공식 문서](https://www.ruby-lang.org/ko/documentation/installation/) 참고
- Jekyll 동작을 위한 [튜토리얼](https://jekyllrb.com/docs/step-by-step/01-setup/) 참고
```
bundle exec jekyll serve
```

### 원격 빌드
- Github 저장소에 Push

### 글 작성
- ```_featured_categories```, ```_featured_tags``` 설정한 후, ```_posts```에 글을 작성합니다 (이전 zzsza님의 방식)
- 글 제목 형태는 ```2018-01-03-title1.md``` 이런 방식처럼 작성! 날짜를 빼고 쓰면 반영되지 않습니다
