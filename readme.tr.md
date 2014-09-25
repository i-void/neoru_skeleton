Neoru İskeleti
==============
Bu iskelet sizin neoru ile ilk web uygulamanızın çatısını oluşturacak.  
Bu döküman altında dosyaların işlevleri ile ilgili bilgiler bulacaksınız.  

Ana dizinden başlayacak olursak. Neoru framework'umuze yardımcı olacak bazı dosyaların olduğunu görebilirsiniz.

### console.rb
Uygulamanızda yazdığınız tüm komutlar bu dosya sayesinde işlenir. Örnek olarak `User` modülü  
altına yazdığınız hesabını aktif hale getirmeyenleri silen `delete_deactive` şeklinde bir komut(metod) olduğunu  
düşünürsek bunu çalıştırmak için ana dizindeyken `ruby console.rb user:delete_deactive` demeniz yeterli olacaktır.

### Gemfile
Herhangi bir gem uygulamanız için gerekli olduğunda `gem 'gemin-ismi'` şeklinde bir satırı bu dosyaya ekleyerek  
ve sistemde ister `bundler` kullanarak isterseniz de `gem install 'gemin-ismi'` yönergesi kullanarak  
gem'i sisteme yükleyebilirsiniz. Gemfile ile ilgili daha geniş bilgiyi
[http://bundler.io/gemfile.html](http://bundler.io/gemfile.html)
adresinden bulabilirsiniz

### init_test.rb
Neoru test sistemi olarak cucumber, rspec ve selenium-webdriver kullanır. Cucumber için yazdığınız testlerden  
hemen önce bu dosyayı include ederseniz, Neoru'yu init etmiş ve gerekli dosyaları otomatikmen yüklemiş olursunuz.


