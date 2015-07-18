angular.module('writingSupporter', [
  'monospaced.elastic'
])
  .controller('WritingController', ['$scope', ($scope) ->
    $scope.totalLength = '0文字'
    $scope.syucho1 =  ''
    $scope.konkyo =   ''
    $scope.teisetsu = ''
    $scope.keni =     ''
    $scope.gutairei = ''
    $scope.jirei =    ''
    $scope.hiyu =     ''
    $scope.gimon =    ''
    $scope.hanron =   ''
    $scope.syucho2 =  ''

    save: ->
      alert '保存しました (localStrage)'

    download: ->
      alert '未実装'
    
    setSample: ->
      $scope.syucho1  = '私はウルトラマンは誰も居ないところで戦うべきだと考えます。'
      $scope.konkyo   = 'なぜなら人の住んでいる街中で戦うとひとが踏まれるからです。'
      $scope.teisetsu = '一般にひとは小さいものに気づきづらいものです。'
      $scope.keni     = 'お父さんによれば私はちいさくて気づかないと言われます。'
      $scope.gutairei = 'たとえばあれです。'
      $scope.jirei    = 'かつてお店で店員さんがわたしに躓くことがありました。'
      $scope.hiyu     = 'まるでゾウとアリのようなものです。'
      $scope.gimon    = 'なるほど確かに怪獣が街中に出るのが悪いという面はあります。'
      $scope.hanron   = 'しかし人類を守りたいのであれば街中で戦うことは避けるべきです。'
      $scope.syucho2  = 'それゆえウルトラマンは山の中など誰も居ないところで戦うべきなのです。'
      @calc()

    reset: ->
      if confirm('本当によろしいですか？')
        $scope.syucho1 =  ''
        $scope.konkyo =   ''
        $scope.teisetsu = ''
        $scope.keni =     ''
        $scope.gutairei = ''
        $scope.jirei =    ''
        $scope.hiyu =     ''
        $scope.gimon =    ''
        $scope.hanron =   ''
        $scope.syucho2 =  ''

    calc: ->
      length = $scope.syucho1.length +
        $scope.konkyo.length +
        $scope.teisetsu.length +
        $scope.keni.length +
        $scope.gutairei.length +
        $scope.jirei.length +
        $scope.hiyu.length +
        $scope.gimon.length +
        $scope.hanron.length +
        $scope.syucho2.length
      $scope.totalLength = "#{length}文字"
])
