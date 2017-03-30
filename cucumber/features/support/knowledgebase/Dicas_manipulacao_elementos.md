# Dicas de manipulação de elementos

-  Criar uma page

```ruby
class Home < SitePrism::Page
end
```

-  Criar uma section

```ruby
class Menu < SitePrism::Section
end
```

-  Navegar para url

```ruby
visit(url)
```

-  Localizar um elemento

```ruby
element :campo_busca, "input[name='q']"
```

-  Localizar uma lista de elementos

```ruby
elements :cursos, "ul#cursos li a"
```

-  Acessar um elemento

```ruby
@home = Home.new
@home.campo_busca
```

-  Preencher um campo

```ruby
@home.campo_busca.set valor
```

-  Clicar em um elemento

```ruby
@home.btn_buscar.click
```

-  Recuperar o texto de um elemento

```ruby
@home.cursos.text
```

-  IFrames

```ruby
class Iframe < SitePrism::Page
  element :campo, "input.username"
end

class PaginaComIframe < SitePrism::Page
  iframe :meu_iframe, Iframe, "#iframe_id"
end
```
### Mais manipulações de elementos###
```
  =Navigating=
      visit('/projects')
      visit(post_comments_path(post))

  =Clicking links and buttons=
      click_link('id-of-link')
      click_link('Link Text')
      click_button('Save')
      click('Link Text') # Click either a link or a button
      click('Button Value')

  =Interacting with forms=
      fill_in('First Name', :with => 'John')
      fill_in('Password', :with => 'Seekrit')
      fill_in('Description', :with => 'Really Long Text…')
      choose('A Radio Button')
      check('A Checkbox')
      uncheck('A Checkbox')
      attach_file('Image', '/path/to/image.jpg')
      select('Option', :from => 'Select Box')

  =scoping=
      within("//li[@id='employee']") do
        fill_in 'Name', :with => 'Jimmy'
      end
      within(:css, "li#employee") do
        fill_in 'Name', :with => 'Jimmy'
      end
      within_fieldset('Employee') do
        fill_in 'Name', :with => 'Jimmy'
      end
      within_table('Employee') do
        fill_in 'Name', :with => 'Jimmy'
      end

  =Querying=
      page.has_xpath?('//table/tr')
      page.has_css?('table tr.foo')
      page.has_content?('foo')
      page.should have_xpath('//table/tr')
      page.should have_css('table tr.foo')
      page.should have_content('foo')
      page.should have_no_content('foo')
      find_field('First Name').value
      find_link('Hello').visible?
      find_button('Send').click
      find('//table/tr').click
      locate("//*[@id='overlay'").find("//h1").click
      all('a').each { |a| a[:href] }

  =Scripting=
      result = page.evaluate_script('4 + 4');

  =Debugging=
      save_and_open_page

  =Asynchronous JavaScript=
      click_link('foo')
      click_link('bar')
      page.should have_content('baz')
      page.should_not have_xpath('//a')
      page.should have_no_xpath('//a')

  =XPath and CSS=
      within(:css, 'ul li') { ... }
      find(:css, 'ul li').text
      locate(:css, 'input#name').value
      Capybara.default_selector = :css
      within('ul li') { ... }
      find('ul li').text
      locate('input#name').value
```

No capybara basicamente se utilizam os comandos:
```
visit ‘https://google.com.br’ – Para visitar alguma url.

page.find(:id, “id do elemento”).click – Clica em um elemento definido por ID.
page.find(:css, “css do elemento”).click – Clica em um elemento definido por CSS.
page.find(:xpath, “xpath do elemento”).click – Clica em um elemento definido por XPATH.

page.all(:id, “id do elemento”)[0].click – Clica no primeiro elemento dentro de uma lista definido por ID.
page.all(:css, “css do elemento”)[0].click – Clica no primeiro elemento dentro de uma lista definido por CSS.
page.all(:xpath, “xpath do elemento”)[0].click – Clica no primeiro elemento dentro de uma lista definido por XPATH.

PS: Quando nos depararmos com um checkbox, radiobutton, utilizar da seguinte forma:

page.find(:radio_button, ‘nome do radiobutton’).set(true) – Nesse caso, ele vai selecionar aquele radiobutton.
page.find(:checkbox, ‘nome do checkbox’).set(true) – Nesse caso, ele vai selecionar aquele checkbox.

fill_in ‘nome do elemento para inserir valor’, :with => “Aprendendo Capybara” – Irá inserir no elemento a string Aprendendo Capybara.

select ‘Nome do item no Drop Down’, from: ‘nome do elemento drop down’ – Seleciona um item de um drop down.
ex: select ‘Apto’, from ‘tipo_moradia’

click_button ‘Cadastrar’ – Clic no botão cadastrar.

click_link ‘Home’ – Clica no link Home caso haja algum na página.

expect(page).to have_content ‘Cadastro efetuado com sucesso’ – Procura a mensagem e caso tenha, será sucesso.
```

Mais informações:
- SitePrism - https://github.com/natritmeyer/site_prism
- Capybara - https://github.com/jnicklas/capybara
