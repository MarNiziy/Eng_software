module Resource
  def connection(routes)
    if routes.nil?
      puts "No route matches for #{self}"
      return
    end

    loop do
      print 'Choose verb to interact with resources (GET/POST or COMMENT/PUT/DELETE) / q to exit: '
      verb = gets.chomp
      break if verb == 'q'

      action = nil

      if verb == 'GET'
        print 'Choose action (index/show) / q to exit: '
        action = gets.chomp
        break if action == 'q'
      end


      action.nil? ? routes[verb].call : routes[verb][action].call
    end
  end
end

class PostsController
  extend Resource

  def initialize
    @posts = []
  end

  def index
    @posts.each_with_index{|val,index|puts "#{index}.#{val}"}
  end

  def show
    print 'Введите идентификатор поста для просмотра: '
    k = gets.to_i

    puts @posts[k]
  end

  def create
  	print 'Введите текст поста: '
    @posts << gets.chomp

    @posts.each_with_index{|val,index|puts "#{index}.#{val}"}
  end

  def update
  	print 'Введите идентификатор поста для обновления: '
    k = gets.to_i

    print 'Введите новый текст поста: '
    n = gets.chomp

    @posts[k] = n
  end

  def destroy
  	print 'Введите идентификатор поста для удаления: '
    k = gets.to_i

    @posts.delete_at(k)
  end
end

class CommentsController
  extend Resource

  def initialize
    @comments = []
  end

  def index
    @comments.each_with_index{|val,index|puts "#{index}.#{val}"}
  end

  def show
    print 'Введите идентификатор поста для комментария: '
    n = gets.to_i

    puts @comments[n]
  end

  def create
  	print 'Введите текст комментария: '

    @comments << gets.chomp
    @comments.each_with_index{|val,index|puts "#{index}.#{val}"}
  end

  def update
  	print 'Введите идентификатор комментария для обновления: '
    n = gets.to_i

    print 'Введите новый текст комментария: '
    s = gets.chomp

    @comments[n] = s
  end

  def destroy
  	print 'Введите идентификатор комментария для удаления: '
    n = gets.to_i
    @comments.delete_at(n)
  end
end

class Router
  def initialize
    @routes = {}
  end

  def init
    resources(PostsController, 'posts')
    resources1(CommentsController, 'comments')

    loop do
      print 'Choose resource you want to interact (1 - Posts, 2 - Comments, q - Exit): '
      @choise = gets.chomp

      if @choise == '1'
        PostsController.connection(@routes['posts'])
      elsif @choise == '2'
        CommentsController.connection(@routes['comments']) 
      elsif @choise == 'q'
        break
      end
    end

    puts 'Good bye!'
  end

  def resources(klass, keyword)
    controller = klass.new
    @routes[keyword] = {
      'GET' => {
        'index' => controller.method(:index),
        'show' => controller.method(:show)
      },
      'POST' => controller.method(:create),
      'PUT' => controller.method(:update),
      'DELETE' => controller.method(:destroy)
    }
  end

  def resources1(klass, keyword)
    controller = klass.new
    @routes[keyword] = {
      'GET' => {
        'index' => controller.method(:index),
        'show' => controller.method(:show)
      },
      'COMMENT' => controller.method(:create),
      'PUT' => controller.method(:update),
      'DELETE' => controller.method(:destroy)
    }
  end
end
router = Router.new
router.init
