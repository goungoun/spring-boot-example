## 출처
- 강의: 스프링 부트 2.0 Day 1. 스프링 부트 시작하기
- 강의자료 :https://docs.spring.io/spring-boot/docs/2.1.0.RELEASE/reference/htmlsingle/#using-boot-maven-parent-pom

## 노트

### pom.xml

##### 필요한 내용들 확인
Dependency:
- spring-boot-starter-web

Build:
- spring-boot-maven-plugin

##### 자동으로 생성된 pom.xml 
~~~java
    <parent>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-parent</artifactId>
        <version>2.1.0.RELEASE</version>
        <relativePath/> <!-- lookup parent from repository -->
    </parent>
~~~

Terminal에서 mvn package로 빌드하여 문제가 있는지 없는지 확인 가능

예전에는 multi project를 만들려면 parent pom을 사용해야해서 겹쳤었기 때문에 다른 parent POM을 사용하고 싶다면 13.2.2 Using Spring Boot without the Parent을 참고
~~~java
<dependencyManagement>
		<dependencies>
		<dependency>
			<!-- Import dependency management from Spring Boot -->
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-dependencies</artifactId>
			<version>2.1.0.RELEASE</version>
			<type>pom</type>
			<scope>import</scope>
		</dependency>
	</dependencies>
</dependencyManagement>
~~~

##### 사설 저장소
정식 버전이 나오면 44:17과 같이 사설 저장소 설정에 필요한 설정들이 pom.xml에서 사라짐
동영상 녹화 시점의 스프링 2.1은 RC 버전 (Release Candidate)이 GA RELEASE로 올라감

### 생략
spring boot cli를 사용하는 부분이나 이와 관련된 설치는 활용용도가 많지 않아서 생략

### 기타 유용한 도구
SDKMAN(The Software Development Kit Manager) 은 여러 버전의 SDK를 관리할 때 사용
~~~
$ sdk install springboot
$ spring --version
Spring CLI v2.1.0.RELEASE
$ sdk ls springboot
================================================================================
Available Springboot Versions
================================================================================
 > * 2.1.0.RELEASE       1.5.8.RELEASE       1.3.7.RELEASE       1.1.12.RELEASE 
     2.0.6.RELEASE       1.5.7.RELEASE       1.3.6.RELEASE       1.1.11.RELEASE 
     2.0.5.RELEASE       1.5.6.RELEASE       1.3.5.RELEASE       1.1.10.RELEASE 
~~~

### Hello World [50:30]

@RequestMapping과 @RestController는 스프링 부트가 아니라 [스프링 MVC](https://docs.spring.io/spring/docs/5.1.2.RELEASE/spring-framework-reference/web.html#mvc)에서 온 개념
@RestController : Example class 앞에 @RestController와 같은 annotation을  붙여주면 Spring이 web에서 들어오는 요청을 처리하는 web @Controller로 인식

@EnableAutoConfiguration는 스프링 부트가 제공하는 의존성을 사용하라는 뜻

* spring annotation의 예
@Controller : Presentation Layer
@Service : Business Layer
@Repository : Persistent Layer
@Component : for component scan
 
실행하기
spring-boot-starter-parent POM을 작성하면 run goal을 사용해서 웹 어플리케이션을 실행할 수 있음
~~~bash
$ mvn spring-boot:run
~~~



