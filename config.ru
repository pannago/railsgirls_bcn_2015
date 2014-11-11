use Rack::Static,
  :urls => ["/images", "/js", "/css"]

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html'
    },
    File.open('barcelona_2015_es.html', File::RDONLY)
  ]
}
