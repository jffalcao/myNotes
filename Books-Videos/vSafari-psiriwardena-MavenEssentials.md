# Maven Essentials

## 1.4 Hello Maven

```
mkdir maven-essentials
cd maven-essentials/
mvn archetype:generate -DgroupId=com.packt.samples -DartifactId=com.packt.samples.archetype -Dversion=1.0.0 -DinteractiveMode=false

```
Add *Build* section in POM (Surefire plugin)

```
...
  <build>
    <plugins>
          <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-surefire-plugin</artifactId>
            <version>3.0.0-M3</version>
          </plugin>
    </plugins>
  </build>
  <dependencies>
  ...
  </dependencies>
```
Buid the project

```
mvn clean install
mvn dependency:tree
mvn help:system
```
