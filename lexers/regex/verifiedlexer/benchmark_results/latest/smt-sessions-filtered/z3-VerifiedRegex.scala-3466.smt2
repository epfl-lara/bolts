; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!200484 () Bool)

(assert start!200484)

(declare-fun b_free!56795 () Bool)

(declare-fun b_next!57499 () Bool)

(assert (=> start!200484 (= b_free!56795 (not b_next!57499))))

(declare-fun tp!604504 () Bool)

(declare-fun b_and!162547 () Bool)

(assert (=> start!200484 (= tp!604504 b_and!162547)))

(declare-fun res!892431 () Bool)

(declare-fun e!1285379 () Bool)

(assert (=> start!200484 (=> (not res!892431) (not e!1285379))))

(declare-datatypes ((T!35878 0))(
  ( (T!35879 (val!6458 Int)) )
))
(declare-datatypes ((List!22341 0))(
  ( (Nil!22259) (Cons!22259 (h!27660 T!35878) (t!191188 List!22341)) )
))
(declare-datatypes ((IArray!14907 0))(
  ( (IArray!14908 (innerList!7511 List!22341)) )
))
(declare-datatypes ((Conc!7451 0))(
  ( (Node!7451 (left!17713 Conc!7451) (right!18043 Conc!7451) (csize!15132 Int) (cheight!7662 Int)) (Leaf!10918 (xs!10353 IArray!14907) (csize!15133 Int)) (Empty!7451) )
))
(declare-fun t!4319 () Conc!7451)

(declare-fun isBalanced!2329 (Conc!7451) Bool)

(assert (=> start!200484 (= res!892431 (isBalanced!2329 t!4319))))

(assert (=> start!200484 e!1285379))

(declare-fun e!1285378 () Bool)

(declare-fun inv!29484 (Conc!7451) Bool)

(assert (=> start!200484 (and (inv!29484 t!4319) e!1285378)))

(assert (=> start!200484 tp!604504))

(declare-fun b!2035187 () Bool)

(declare-fun e!1285381 () Bool)

(assert (=> b!2035187 (= e!1285381 (not (isBalanced!2329 (right!18043 t!4319))))))

(declare-fun lt!764620 () Conc!7451)

(declare-fun p!1489 () Int)

(declare-fun filter!443 (Conc!7451 Int) Conc!7451)

(assert (=> b!2035187 (= lt!764620 (filter!443 (left!17713 t!4319) p!1489))))

(declare-fun b!2035188 () Bool)

(declare-fun e!1285380 () Bool)

(declare-fun inv!29485 (IArray!14907) Bool)

(assert (=> b!2035188 (= e!1285378 (and (inv!29485 (xs!10353 t!4319)) e!1285380))))

(declare-fun b!2035189 () Bool)

(assert (=> b!2035189 (= e!1285379 e!1285381)))

(declare-fun res!892429 () Bool)

(assert (=> b!2035189 (=> (not res!892429) (not e!1285381))))

(declare-fun lt!764619 () List!22341)

(declare-fun lt!764618 () List!22341)

(declare-fun filter!444 (List!22341 Int) List!22341)

(declare-fun ++!6033 (List!22341 List!22341) List!22341)

(assert (=> b!2035189 (= res!892429 (= (filter!444 (++!6033 lt!764618 lt!764619) p!1489) (++!6033 (filter!444 lt!764618 p!1489) (filter!444 lt!764619 p!1489))))))

(declare-datatypes ((Unit!36960 0))(
  ( (Unit!36961) )
))
(declare-fun lt!764617 () Unit!36960)

(declare-fun lemmaFilterConcat!22 (List!22341 List!22341 Int) Unit!36960)

(assert (=> b!2035189 (= lt!764617 (lemmaFilterConcat!22 lt!764618 lt!764619 p!1489))))

(declare-fun list!9105 (Conc!7451) List!22341)

(assert (=> b!2035189 (= lt!764619 (list!9105 (right!18043 t!4319)))))

(assert (=> b!2035189 (= lt!764618 (list!9105 (left!17713 t!4319)))))

(declare-fun b!2035190 () Bool)

(declare-fun res!892430 () Bool)

(assert (=> b!2035190 (=> (not res!892430) (not e!1285379))))

(get-info :version)

(assert (=> b!2035190 (= res!892430 (and (not ((_ is Empty!7451) t!4319)) (not ((_ is Leaf!10918) t!4319))))))

(declare-fun tp!604505 () Bool)

(declare-fun b!2035191 () Bool)

(declare-fun tp!604506 () Bool)

(assert (=> b!2035191 (= e!1285378 (and (inv!29484 (left!17713 t!4319)) tp!604505 (inv!29484 (right!18043 t!4319)) tp!604506))))

(declare-fun b!2035192 () Bool)

(declare-fun tp!604503 () Bool)

(assert (=> b!2035192 (= e!1285380 tp!604503)))

(assert (= (and start!200484 res!892431) b!2035190))

(assert (= (and b!2035190 res!892430) b!2035189))

(assert (= (and b!2035189 res!892429) b!2035187))

(assert (= (and start!200484 ((_ is Node!7451) t!4319)) b!2035191))

(assert (= b!2035188 b!2035192))

(assert (= (and start!200484 ((_ is Leaf!10918) t!4319)) b!2035188))

(declare-fun m!2477835 () Bool)

(assert (=> b!2035188 m!2477835))

(declare-fun m!2477837 () Bool)

(assert (=> b!2035189 m!2477837))

(declare-fun m!2477839 () Bool)

(assert (=> b!2035189 m!2477839))

(declare-fun m!2477841 () Bool)

(assert (=> b!2035189 m!2477841))

(declare-fun m!2477843 () Bool)

(assert (=> b!2035189 m!2477843))

(declare-fun m!2477845 () Bool)

(assert (=> b!2035189 m!2477845))

(declare-fun m!2477847 () Bool)

(assert (=> b!2035189 m!2477847))

(assert (=> b!2035189 m!2477837))

(declare-fun m!2477849 () Bool)

(assert (=> b!2035189 m!2477849))

(assert (=> b!2035189 m!2477841))

(assert (=> b!2035189 m!2477843))

(declare-fun m!2477851 () Bool)

(assert (=> b!2035189 m!2477851))

(declare-fun m!2477853 () Bool)

(assert (=> b!2035191 m!2477853))

(declare-fun m!2477855 () Bool)

(assert (=> b!2035191 m!2477855))

(declare-fun m!2477857 () Bool)

(assert (=> start!200484 m!2477857))

(declare-fun m!2477859 () Bool)

(assert (=> start!200484 m!2477859))

(declare-fun m!2477861 () Bool)

(assert (=> b!2035187 m!2477861))

(declare-fun m!2477863 () Bool)

(assert (=> b!2035187 m!2477863))

(check-sat (not b!2035189) (not b!2035192) (not b!2035187) (not start!200484) (not b_next!57499) (not b!2035191) (not b!2035188) b_and!162547)
(check-sat b_and!162547 (not b_next!57499))
(get-model)

(declare-fun d!623009 () Bool)

(declare-fun res!892462 () Bool)

(declare-fun e!1285393 () Bool)

(assert (=> d!623009 (=> res!892462 e!1285393)))

(assert (=> d!623009 (= res!892462 (not ((_ is Node!7451) t!4319)))))

(assert (=> d!623009 (= (isBalanced!2329 t!4319) e!1285393)))

(declare-fun b!2035223 () Bool)

(declare-fun e!1285392 () Bool)

(assert (=> b!2035223 (= e!1285393 e!1285392)))

(declare-fun res!892463 () Bool)

(assert (=> b!2035223 (=> (not res!892463) (not e!1285392))))

(declare-fun height!1152 (Conc!7451) Int)

(assert (=> b!2035223 (= res!892463 (<= (- 1) (- (height!1152 (left!17713 t!4319)) (height!1152 (right!18043 t!4319)))))))

(declare-fun b!2035224 () Bool)

(declare-fun res!892465 () Bool)

(assert (=> b!2035224 (=> (not res!892465) (not e!1285392))))

(declare-fun isEmpty!13910 (Conc!7451) Bool)

(assert (=> b!2035224 (= res!892465 (not (isEmpty!13910 (left!17713 t!4319))))))

(declare-fun b!2035225 () Bool)

(assert (=> b!2035225 (= e!1285392 (not (isEmpty!13910 (right!18043 t!4319))))))

(declare-fun b!2035226 () Bool)

(declare-fun res!892467 () Bool)

(assert (=> b!2035226 (=> (not res!892467) (not e!1285392))))

(assert (=> b!2035226 (= res!892467 (isBalanced!2329 (right!18043 t!4319)))))

(declare-fun b!2035227 () Bool)

(declare-fun res!892466 () Bool)

(assert (=> b!2035227 (=> (not res!892466) (not e!1285392))))

(assert (=> b!2035227 (= res!892466 (isBalanced!2329 (left!17713 t!4319)))))

(declare-fun b!2035228 () Bool)

(declare-fun res!892464 () Bool)

(assert (=> b!2035228 (=> (not res!892464) (not e!1285392))))

(assert (=> b!2035228 (= res!892464 (<= (- (height!1152 (left!17713 t!4319)) (height!1152 (right!18043 t!4319))) 1))))

(assert (= (and d!623009 (not res!892462)) b!2035223))

(assert (= (and b!2035223 res!892463) b!2035228))

(assert (= (and b!2035228 res!892464) b!2035227))

(assert (= (and b!2035227 res!892466) b!2035226))

(assert (= (and b!2035226 res!892467) b!2035224))

(assert (= (and b!2035224 res!892465) b!2035225))

(declare-fun m!2477875 () Bool)

(assert (=> b!2035227 m!2477875))

(declare-fun m!2477877 () Bool)

(assert (=> b!2035224 m!2477877))

(declare-fun m!2477879 () Bool)

(assert (=> b!2035228 m!2477879))

(declare-fun m!2477881 () Bool)

(assert (=> b!2035228 m!2477881))

(assert (=> b!2035223 m!2477879))

(assert (=> b!2035223 m!2477881))

(declare-fun m!2477883 () Bool)

(assert (=> b!2035225 m!2477883))

(assert (=> b!2035226 m!2477861))

(assert (=> start!200484 d!623009))

(declare-fun d!623013 () Bool)

(declare-fun c!329543 () Bool)

(assert (=> d!623013 (= c!329543 ((_ is Node!7451) t!4319))))

(declare-fun e!1285406 () Bool)

(assert (=> d!623013 (= (inv!29484 t!4319) e!1285406)))

(declare-fun b!2035250 () Bool)

(declare-fun inv!29488 (Conc!7451) Bool)

(assert (=> b!2035250 (= e!1285406 (inv!29488 t!4319))))

(declare-fun b!2035251 () Bool)

(declare-fun e!1285407 () Bool)

(assert (=> b!2035251 (= e!1285406 e!1285407)))

(declare-fun res!892479 () Bool)

(assert (=> b!2035251 (= res!892479 (not ((_ is Leaf!10918) t!4319)))))

(assert (=> b!2035251 (=> res!892479 e!1285407)))

(declare-fun b!2035252 () Bool)

(declare-fun inv!29489 (Conc!7451) Bool)

(assert (=> b!2035252 (= e!1285407 (inv!29489 t!4319))))

(assert (= (and d!623013 c!329543) b!2035250))

(assert (= (and d!623013 (not c!329543)) b!2035251))

(assert (= (and b!2035251 (not res!892479)) b!2035252))

(declare-fun m!2477891 () Bool)

(assert (=> b!2035250 m!2477891))

(declare-fun m!2477893 () Bool)

(assert (=> b!2035252 m!2477893))

(assert (=> start!200484 d!623013))

(declare-fun d!623019 () Bool)

(declare-fun res!892480 () Bool)

(declare-fun e!1285409 () Bool)

(assert (=> d!623019 (=> res!892480 e!1285409)))

(assert (=> d!623019 (= res!892480 (not ((_ is Node!7451) (right!18043 t!4319))))))

(assert (=> d!623019 (= (isBalanced!2329 (right!18043 t!4319)) e!1285409)))

(declare-fun b!2035253 () Bool)

(declare-fun e!1285408 () Bool)

(assert (=> b!2035253 (= e!1285409 e!1285408)))

(declare-fun res!892481 () Bool)

(assert (=> b!2035253 (=> (not res!892481) (not e!1285408))))

(assert (=> b!2035253 (= res!892481 (<= (- 1) (- (height!1152 (left!17713 (right!18043 t!4319))) (height!1152 (right!18043 (right!18043 t!4319))))))))

(declare-fun b!2035254 () Bool)

(declare-fun res!892483 () Bool)

(assert (=> b!2035254 (=> (not res!892483) (not e!1285408))))

(assert (=> b!2035254 (= res!892483 (not (isEmpty!13910 (left!17713 (right!18043 t!4319)))))))

(declare-fun b!2035255 () Bool)

(assert (=> b!2035255 (= e!1285408 (not (isEmpty!13910 (right!18043 (right!18043 t!4319)))))))

(declare-fun b!2035256 () Bool)

(declare-fun res!892485 () Bool)

(assert (=> b!2035256 (=> (not res!892485) (not e!1285408))))

(assert (=> b!2035256 (= res!892485 (isBalanced!2329 (right!18043 (right!18043 t!4319))))))

(declare-fun b!2035257 () Bool)

(declare-fun res!892484 () Bool)

(assert (=> b!2035257 (=> (not res!892484) (not e!1285408))))

(assert (=> b!2035257 (= res!892484 (isBalanced!2329 (left!17713 (right!18043 t!4319))))))

(declare-fun b!2035258 () Bool)

(declare-fun res!892482 () Bool)

(assert (=> b!2035258 (=> (not res!892482) (not e!1285408))))

(assert (=> b!2035258 (= res!892482 (<= (- (height!1152 (left!17713 (right!18043 t!4319))) (height!1152 (right!18043 (right!18043 t!4319)))) 1))))

(assert (= (and d!623019 (not res!892480)) b!2035253))

(assert (= (and b!2035253 res!892481) b!2035258))

(assert (= (and b!2035258 res!892482) b!2035257))

(assert (= (and b!2035257 res!892484) b!2035256))

(assert (= (and b!2035256 res!892485) b!2035254))

(assert (= (and b!2035254 res!892483) b!2035255))

(declare-fun m!2477907 () Bool)

(assert (=> b!2035257 m!2477907))

(declare-fun m!2477909 () Bool)

(assert (=> b!2035254 m!2477909))

(declare-fun m!2477911 () Bool)

(assert (=> b!2035258 m!2477911))

(declare-fun m!2477913 () Bool)

(assert (=> b!2035258 m!2477913))

(assert (=> b!2035253 m!2477911))

(assert (=> b!2035253 m!2477913))

(declare-fun m!2477915 () Bool)

(assert (=> b!2035255 m!2477915))

(declare-fun m!2477917 () Bool)

(assert (=> b!2035256 m!2477917))

(assert (=> b!2035187 d!623019))

(declare-fun b!2035294 () Bool)

(declare-fun e!1285433 () Conc!7451)

(declare-fun lt!764637 () IArray!14907)

(declare-fun size!17395 (IArray!14907) Int)

(assert (=> b!2035294 (= e!1285433 (Leaf!10918 lt!764637 (size!17395 lt!764637)))))

(declare-fun b!2035295 () Bool)

(declare-fun e!1285431 () Conc!7451)

(declare-fun e!1285430 () Conc!7451)

(assert (=> b!2035295 (= e!1285431 e!1285430)))

(declare-fun c!329560 () Bool)

(assert (=> b!2035295 (= c!329560 ((_ is Leaf!10918) (left!17713 t!4319)))))

(declare-fun b!2035296 () Bool)

(declare-fun lt!764636 () Unit!36960)

(assert (=> b!2035296 (= lt!764636 (lemmaFilterConcat!22 (list!9105 (left!17713 (left!17713 t!4319))) (list!9105 (right!18043 (left!17713 t!4319))) p!1489))))

(declare-fun ++!6035 (Conc!7451 Conc!7451) Conc!7451)

(assert (=> b!2035296 (= e!1285430 (++!6035 (filter!443 (left!17713 (left!17713 t!4319)) p!1489) (filter!443 (right!18043 (left!17713 t!4319)) p!1489)))))

(declare-fun b!2035297 () Bool)

(assert (=> b!2035297 (= e!1285431 (left!17713 t!4319))))

(declare-fun b!2035298 () Bool)

(declare-fun c!329559 () Bool)

(assert (=> b!2035298 (= c!329559 (= (size!17395 lt!764637) 0))))

(declare-fun filter!446 (IArray!14907 Int) IArray!14907)

(assert (=> b!2035298 (= lt!764637 (filter!446 (xs!10353 (left!17713 t!4319)) p!1489))))

(assert (=> b!2035298 (= e!1285430 e!1285433)))

(declare-fun lt!764638 () Conc!7451)

(declare-fun e!1285432 () Bool)

(declare-fun b!2035299 () Bool)

(assert (=> b!2035299 (= e!1285432 (= (list!9105 lt!764638) (filter!444 (list!9105 (left!17713 t!4319)) p!1489)))))

(declare-fun d!623023 () Bool)

(assert (=> d!623023 e!1285432))

(declare-fun res!892491 () Bool)

(assert (=> d!623023 (=> (not res!892491) (not e!1285432))))

(assert (=> d!623023 (= res!892491 (isBalanced!2329 lt!764638))))

(assert (=> d!623023 (= lt!764638 e!1285431)))

(declare-fun c!329561 () Bool)

(assert (=> d!623023 (= c!329561 ((_ is Empty!7451) (left!17713 t!4319)))))

(assert (=> d!623023 (isBalanced!2329 (left!17713 t!4319))))

(assert (=> d!623023 (= (filter!443 (left!17713 t!4319) p!1489) lt!764638)))

(declare-fun b!2035300 () Bool)

(assert (=> b!2035300 (= e!1285433 Empty!7451)))

(assert (= (and d!623023 c!329561) b!2035297))

(assert (= (and d!623023 (not c!329561)) b!2035295))

(assert (= (and b!2035295 c!329560) b!2035298))

(assert (= (and b!2035295 (not c!329560)) b!2035296))

(assert (= (and b!2035298 c!329559) b!2035300))

(assert (= (and b!2035298 (not c!329559)) b!2035294))

(assert (= (and d!623023 res!892491) b!2035299))

(declare-fun m!2477941 () Bool)

(assert (=> b!2035296 m!2477941))

(declare-fun m!2477943 () Bool)

(assert (=> b!2035296 m!2477943))

(declare-fun m!2477945 () Bool)

(assert (=> b!2035296 m!2477945))

(declare-fun m!2477947 () Bool)

(assert (=> b!2035296 m!2477947))

(assert (=> b!2035296 m!2477941))

(declare-fun m!2477949 () Bool)

(assert (=> b!2035296 m!2477949))

(assert (=> b!2035296 m!2477947))

(declare-fun m!2477951 () Bool)

(assert (=> b!2035296 m!2477951))

(assert (=> b!2035296 m!2477949))

(assert (=> b!2035296 m!2477943))

(declare-fun m!2477953 () Bool)

(assert (=> b!2035299 m!2477953))

(assert (=> b!2035299 m!2477839))

(assert (=> b!2035299 m!2477839))

(declare-fun m!2477955 () Bool)

(assert (=> b!2035299 m!2477955))

(declare-fun m!2477957 () Bool)

(assert (=> b!2035294 m!2477957))

(assert (=> b!2035298 m!2477957))

(declare-fun m!2477959 () Bool)

(assert (=> b!2035298 m!2477959))

(declare-fun m!2477961 () Bool)

(assert (=> d!623023 m!2477961))

(assert (=> d!623023 m!2477875))

(assert (=> b!2035187 d!623023))

(declare-fun lt!764644 () List!22341)

(declare-fun e!1285445 () Bool)

(declare-fun b!2035324 () Bool)

(assert (=> b!2035324 (= e!1285445 (or (not (= (filter!444 lt!764619 p!1489) Nil!22259)) (= lt!764644 (filter!444 lt!764618 p!1489))))))

(declare-fun b!2035323 () Bool)

(declare-fun res!892503 () Bool)

(assert (=> b!2035323 (=> (not res!892503) (not e!1285445))))

(declare-fun size!17396 (List!22341) Int)

(assert (=> b!2035323 (= res!892503 (= (size!17396 lt!764644) (+ (size!17396 (filter!444 lt!764618 p!1489)) (size!17396 (filter!444 lt!764619 p!1489)))))))

(declare-fun b!2035321 () Bool)

(declare-fun e!1285444 () List!22341)

(assert (=> b!2035321 (= e!1285444 (filter!444 lt!764619 p!1489))))

(declare-fun d!623027 () Bool)

(assert (=> d!623027 e!1285445))

(declare-fun res!892502 () Bool)

(assert (=> d!623027 (=> (not res!892502) (not e!1285445))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3295 (List!22341) (InoxSet T!35878))

(assert (=> d!623027 (= res!892502 (= (content!3295 lt!764644) ((_ map or) (content!3295 (filter!444 lt!764618 p!1489)) (content!3295 (filter!444 lt!764619 p!1489)))))))

(assert (=> d!623027 (= lt!764644 e!1285444)))

(declare-fun c!329567 () Bool)

(assert (=> d!623027 (= c!329567 ((_ is Nil!22259) (filter!444 lt!764618 p!1489)))))

(assert (=> d!623027 (= (++!6033 (filter!444 lt!764618 p!1489) (filter!444 lt!764619 p!1489)) lt!764644)))

(declare-fun b!2035322 () Bool)

(assert (=> b!2035322 (= e!1285444 (Cons!22259 (h!27660 (filter!444 lt!764618 p!1489)) (++!6033 (t!191188 (filter!444 lt!764618 p!1489)) (filter!444 lt!764619 p!1489))))))

(assert (= (and d!623027 c!329567) b!2035321))

(assert (= (and d!623027 (not c!329567)) b!2035322))

(assert (= (and d!623027 res!892502) b!2035323))

(assert (= (and b!2035323 res!892503) b!2035324))

(declare-fun m!2477977 () Bool)

(assert (=> b!2035323 m!2477977))

(assert (=> b!2035323 m!2477841))

(declare-fun m!2477979 () Bool)

(assert (=> b!2035323 m!2477979))

(assert (=> b!2035323 m!2477843))

(declare-fun m!2477981 () Bool)

(assert (=> b!2035323 m!2477981))

(declare-fun m!2477983 () Bool)

(assert (=> d!623027 m!2477983))

(assert (=> d!623027 m!2477841))

(declare-fun m!2477985 () Bool)

(assert (=> d!623027 m!2477985))

(assert (=> d!623027 m!2477843))

(declare-fun m!2477987 () Bool)

(assert (=> d!623027 m!2477987))

(assert (=> b!2035322 m!2477843))

(declare-fun m!2477989 () Bool)

(assert (=> b!2035322 m!2477989))

(assert (=> b!2035189 d!623027))

(declare-fun b!2035345 () Bool)

(declare-fun e!1285458 () List!22341)

(assert (=> b!2035345 (= e!1285458 Nil!22259)))

(declare-fun d!623031 () Bool)

(declare-fun e!1285456 () Bool)

(assert (=> d!623031 e!1285456))

(declare-fun res!892509 () Bool)

(assert (=> d!623031 (=> (not res!892509) (not e!1285456))))

(declare-fun lt!764652 () List!22341)

(assert (=> d!623031 (= res!892509 (<= (size!17396 lt!764652) (size!17396 lt!764618)))))

(assert (=> d!623031 (= lt!764652 e!1285458)))

(declare-fun c!329576 () Bool)

(assert (=> d!623031 (= c!329576 ((_ is Nil!22259) lt!764618))))

(assert (=> d!623031 (= (filter!444 lt!764618 p!1489) lt!764652)))

(declare-fun b!2035346 () Bool)

(declare-fun e!1285457 () List!22341)

(declare-fun call!124895 () List!22341)

(assert (=> b!2035346 (= e!1285457 call!124895)))

(declare-fun b!2035347 () Bool)

(assert (=> b!2035347 (= e!1285457 (Cons!22259 (h!27660 lt!764618) call!124895))))

(declare-fun b!2035348 () Bool)

(assert (=> b!2035348 (= e!1285458 e!1285457)))

(declare-fun c!329577 () Bool)

(declare-fun dynLambda!11092 (Int T!35878) Bool)

(assert (=> b!2035348 (= c!329577 (dynLambda!11092 p!1489 (h!27660 lt!764618)))))

(declare-fun b!2035349 () Bool)

(declare-fun res!892508 () Bool)

(assert (=> b!2035349 (=> (not res!892508) (not e!1285456))))

(assert (=> b!2035349 (= res!892508 (= ((_ map implies) (content!3295 lt!764652) (content!3295 lt!764618)) ((as const (InoxSet T!35878)) true)))))

(declare-fun b!2035350 () Bool)

(declare-fun forall!4742 (List!22341 Int) Bool)

(assert (=> b!2035350 (= e!1285456 (forall!4742 lt!764652 p!1489))))

(declare-fun bm!124890 () Bool)

(assert (=> bm!124890 (= call!124895 (filter!444 (t!191188 lt!764618) p!1489))))

(assert (= (and d!623031 c!329576) b!2035345))

(assert (= (and d!623031 (not c!329576)) b!2035348))

(assert (= (and b!2035348 c!329577) b!2035347))

(assert (= (and b!2035348 (not c!329577)) b!2035346))

(assert (= (or b!2035347 b!2035346) bm!124890))

(assert (= (and d!623031 res!892509) b!2035349))

(assert (= (and b!2035349 res!892508) b!2035350))

(declare-fun b_lambda!68677 () Bool)

(assert (=> (not b_lambda!68677) (not b!2035348)))

(declare-fun t!191194 () Bool)

(declare-fun tb!128793 () Bool)

(assert (=> (and start!200484 (= p!1489 p!1489) t!191194) tb!128793))

(declare-fun result!154024 () Bool)

(assert (=> tb!128793 (= result!154024 true)))

(assert (=> b!2035348 t!191194))

(declare-fun b_and!162549 () Bool)

(assert (= b_and!162547 (and (=> t!191194 result!154024) b_and!162549)))

(declare-fun m!2477993 () Bool)

(assert (=> bm!124890 m!2477993))

(declare-fun m!2477995 () Bool)

(assert (=> d!623031 m!2477995))

(declare-fun m!2477997 () Bool)

(assert (=> d!623031 m!2477997))

(declare-fun m!2477999 () Bool)

(assert (=> b!2035348 m!2477999))

(declare-fun m!2478001 () Bool)

(assert (=> b!2035350 m!2478001))

(declare-fun m!2478003 () Bool)

(assert (=> b!2035349 m!2478003))

(declare-fun m!2478005 () Bool)

(assert (=> b!2035349 m!2478005))

(assert (=> b!2035189 d!623031))

(declare-fun d!623035 () Bool)

(assert (=> d!623035 (= (filter!444 (++!6033 lt!764618 lt!764619) p!1489) (++!6033 (filter!444 lt!764618 p!1489) (filter!444 lt!764619 p!1489)))))

(declare-fun lt!764656 () Unit!36960)

(declare-fun choose!12420 (List!22341 List!22341 Int) Unit!36960)

(assert (=> d!623035 (= lt!764656 (choose!12420 lt!764618 lt!764619 p!1489))))

(assert (=> d!623035 (= (lemmaFilterConcat!22 lt!764618 lt!764619 p!1489) lt!764656)))

(declare-fun bs!421321 () Bool)

(assert (= bs!421321 d!623035))

(assert (=> bs!421321 m!2477837))

(assert (=> bs!421321 m!2477841))

(assert (=> bs!421321 m!2477837))

(assert (=> bs!421321 m!2477849))

(assert (=> bs!421321 m!2477843))

(assert (=> bs!421321 m!2477841))

(assert (=> bs!421321 m!2477843))

(assert (=> bs!421321 m!2477851))

(declare-fun m!2478021 () Bool)

(assert (=> bs!421321 m!2478021))

(assert (=> b!2035189 d!623035))

(declare-fun d!623039 () Bool)

(declare-fun c!329595 () Bool)

(assert (=> d!623039 (= c!329595 ((_ is Empty!7451) (right!18043 t!4319)))))

(declare-fun e!1285482 () List!22341)

(assert (=> d!623039 (= (list!9105 (right!18043 t!4319)) e!1285482)))

(declare-fun b!2035399 () Bool)

(declare-fun e!1285483 () List!22341)

(declare-fun list!9107 (IArray!14907) List!22341)

(assert (=> b!2035399 (= e!1285483 (list!9107 (xs!10353 (right!18043 t!4319))))))

(declare-fun b!2035397 () Bool)

(assert (=> b!2035397 (= e!1285482 Nil!22259)))

(declare-fun b!2035400 () Bool)

(assert (=> b!2035400 (= e!1285483 (++!6033 (list!9105 (left!17713 (right!18043 t!4319))) (list!9105 (right!18043 (right!18043 t!4319)))))))

(declare-fun b!2035398 () Bool)

(assert (=> b!2035398 (= e!1285482 e!1285483)))

(declare-fun c!329596 () Bool)

(assert (=> b!2035398 (= c!329596 ((_ is Leaf!10918) (right!18043 t!4319)))))

(assert (= (and d!623039 c!329595) b!2035397))

(assert (= (and d!623039 (not c!329595)) b!2035398))

(assert (= (and b!2035398 c!329596) b!2035399))

(assert (= (and b!2035398 (not c!329596)) b!2035400))

(declare-fun m!2478065 () Bool)

(assert (=> b!2035399 m!2478065))

(declare-fun m!2478067 () Bool)

(assert (=> b!2035400 m!2478067))

(declare-fun m!2478069 () Bool)

(assert (=> b!2035400 m!2478069))

(assert (=> b!2035400 m!2478067))

(assert (=> b!2035400 m!2478069))

(declare-fun m!2478073 () Bool)

(assert (=> b!2035400 m!2478073))

(assert (=> b!2035189 d!623039))

(declare-fun b!2035408 () Bool)

(declare-fun e!1285490 () List!22341)

(assert (=> b!2035408 (= e!1285490 Nil!22259)))

(declare-fun d!623049 () Bool)

(declare-fun e!1285488 () Bool)

(assert (=> d!623049 e!1285488))

(declare-fun res!892524 () Bool)

(assert (=> d!623049 (=> (not res!892524) (not e!1285488))))

(declare-fun lt!764660 () List!22341)

(assert (=> d!623049 (= res!892524 (<= (size!17396 lt!764660) (size!17396 (++!6033 lt!764618 lt!764619))))))

(assert (=> d!623049 (= lt!764660 e!1285490)))

(declare-fun c!329600 () Bool)

(assert (=> d!623049 (= c!329600 ((_ is Nil!22259) (++!6033 lt!764618 lt!764619)))))

(assert (=> d!623049 (= (filter!444 (++!6033 lt!764618 lt!764619) p!1489) lt!764660)))

(declare-fun b!2035409 () Bool)

(declare-fun e!1285489 () List!22341)

(declare-fun call!124899 () List!22341)

(assert (=> b!2035409 (= e!1285489 call!124899)))

(declare-fun b!2035410 () Bool)

(assert (=> b!2035410 (= e!1285489 (Cons!22259 (h!27660 (++!6033 lt!764618 lt!764619)) call!124899))))

(declare-fun b!2035411 () Bool)

(assert (=> b!2035411 (= e!1285490 e!1285489)))

(declare-fun c!329601 () Bool)

(assert (=> b!2035411 (= c!329601 (dynLambda!11092 p!1489 (h!27660 (++!6033 lt!764618 lt!764619))))))

(declare-fun b!2035412 () Bool)

(declare-fun res!892523 () Bool)

(assert (=> b!2035412 (=> (not res!892523) (not e!1285488))))

(assert (=> b!2035412 (= res!892523 (= ((_ map implies) (content!3295 lt!764660) (content!3295 (++!6033 lt!764618 lt!764619))) ((as const (InoxSet T!35878)) true)))))

(declare-fun b!2035413 () Bool)

(assert (=> b!2035413 (= e!1285488 (forall!4742 lt!764660 p!1489))))

(declare-fun bm!124894 () Bool)

(assert (=> bm!124894 (= call!124899 (filter!444 (t!191188 (++!6033 lt!764618 lt!764619)) p!1489))))

(assert (= (and d!623049 c!329600) b!2035408))

(assert (= (and d!623049 (not c!329600)) b!2035411))

(assert (= (and b!2035411 c!329601) b!2035410))

(assert (= (and b!2035411 (not c!329601)) b!2035409))

(assert (= (or b!2035410 b!2035409) bm!124894))

(assert (= (and d!623049 res!892524) b!2035412))

(assert (= (and b!2035412 res!892523) b!2035413))

(declare-fun b_lambda!68685 () Bool)

(assert (=> (not b_lambda!68685) (not b!2035411)))

(declare-fun t!191204 () Bool)

(declare-fun tb!128801 () Bool)

(assert (=> (and start!200484 (= p!1489 p!1489) t!191204) tb!128801))

(declare-fun result!154034 () Bool)

(assert (=> tb!128801 (= result!154034 true)))

(assert (=> b!2035411 t!191204))

(declare-fun b_and!162557 () Bool)

(assert (= b_and!162549 (and (=> t!191204 result!154034) b_and!162557)))

(declare-fun m!2478085 () Bool)

(assert (=> bm!124894 m!2478085))

(declare-fun m!2478087 () Bool)

(assert (=> d!623049 m!2478087))

(assert (=> d!623049 m!2477837))

(declare-fun m!2478089 () Bool)

(assert (=> d!623049 m!2478089))

(declare-fun m!2478091 () Bool)

(assert (=> b!2035411 m!2478091))

(declare-fun m!2478093 () Bool)

(assert (=> b!2035413 m!2478093))

(declare-fun m!2478095 () Bool)

(assert (=> b!2035412 m!2478095))

(assert (=> b!2035412 m!2477837))

(declare-fun m!2478097 () Bool)

(assert (=> b!2035412 m!2478097))

(assert (=> b!2035189 d!623049))

(declare-fun b!2035426 () Bool)

(declare-fun e!1285500 () List!22341)

(assert (=> b!2035426 (= e!1285500 Nil!22259)))

(declare-fun d!623055 () Bool)

(declare-fun e!1285496 () Bool)

(assert (=> d!623055 e!1285496))

(declare-fun res!892527 () Bool)

(assert (=> d!623055 (=> (not res!892527) (not e!1285496))))

(declare-fun lt!764661 () List!22341)

(assert (=> d!623055 (= res!892527 (<= (size!17396 lt!764661) (size!17396 lt!764619)))))

(assert (=> d!623055 (= lt!764661 e!1285500)))

(declare-fun c!329603 () Bool)

(assert (=> d!623055 (= c!329603 ((_ is Nil!22259) lt!764619))))

(assert (=> d!623055 (= (filter!444 lt!764619 p!1489) lt!764661)))

(declare-fun b!2035427 () Bool)

(declare-fun e!1285499 () List!22341)

(declare-fun call!124900 () List!22341)

(assert (=> b!2035427 (= e!1285499 call!124900)))

(declare-fun b!2035428 () Bool)

(assert (=> b!2035428 (= e!1285499 (Cons!22259 (h!27660 lt!764619) call!124900))))

(declare-fun b!2035429 () Bool)

(assert (=> b!2035429 (= e!1285500 e!1285499)))

(declare-fun c!329604 () Bool)

(assert (=> b!2035429 (= c!329604 (dynLambda!11092 p!1489 (h!27660 lt!764619)))))

(declare-fun b!2035430 () Bool)

(declare-fun res!892526 () Bool)

(assert (=> b!2035430 (=> (not res!892526) (not e!1285496))))

(assert (=> b!2035430 (= res!892526 (= ((_ map implies) (content!3295 lt!764661) (content!3295 lt!764619)) ((as const (InoxSet T!35878)) true)))))

(declare-fun b!2035431 () Bool)

(assert (=> b!2035431 (= e!1285496 (forall!4742 lt!764661 p!1489))))

(declare-fun bm!124895 () Bool)

(assert (=> bm!124895 (= call!124900 (filter!444 (t!191188 lt!764619) p!1489))))

(assert (= (and d!623055 c!329603) b!2035426))

(assert (= (and d!623055 (not c!329603)) b!2035429))

(assert (= (and b!2035429 c!329604) b!2035428))

(assert (= (and b!2035429 (not c!329604)) b!2035427))

(assert (= (or b!2035428 b!2035427) bm!124895))

(assert (= (and d!623055 res!892527) b!2035430))

(assert (= (and b!2035430 res!892526) b!2035431))

(declare-fun b_lambda!68687 () Bool)

(assert (=> (not b_lambda!68687) (not b!2035429)))

(declare-fun t!191206 () Bool)

(declare-fun tb!128803 () Bool)

(assert (=> (and start!200484 (= p!1489 p!1489) t!191206) tb!128803))

(declare-fun result!154038 () Bool)

(assert (=> tb!128803 (= result!154038 true)))

(assert (=> b!2035429 t!191206))

(declare-fun b_and!162559 () Bool)

(assert (= b_and!162557 (and (=> t!191206 result!154038) b_and!162559)))

(declare-fun m!2478099 () Bool)

(assert (=> bm!124895 m!2478099))

(declare-fun m!2478101 () Bool)

(assert (=> d!623055 m!2478101))

(declare-fun m!2478103 () Bool)

(assert (=> d!623055 m!2478103))

(declare-fun m!2478105 () Bool)

(assert (=> b!2035429 m!2478105))

(declare-fun m!2478107 () Bool)

(assert (=> b!2035431 m!2478107))

(declare-fun m!2478109 () Bool)

(assert (=> b!2035430 m!2478109))

(declare-fun m!2478111 () Bool)

(assert (=> b!2035430 m!2478111))

(assert (=> b!2035189 d!623055))

(declare-fun lt!764662 () List!22341)

(declare-fun b!2035439 () Bool)

(declare-fun e!1285504 () Bool)

(assert (=> b!2035439 (= e!1285504 (or (not (= lt!764619 Nil!22259)) (= lt!764662 lt!764618)))))

(declare-fun b!2035438 () Bool)

(declare-fun res!892529 () Bool)

(assert (=> b!2035438 (=> (not res!892529) (not e!1285504))))

(assert (=> b!2035438 (= res!892529 (= (size!17396 lt!764662) (+ (size!17396 lt!764618) (size!17396 lt!764619))))))

(declare-fun b!2035436 () Bool)

(declare-fun e!1285503 () List!22341)

(assert (=> b!2035436 (= e!1285503 lt!764619)))

(declare-fun d!623057 () Bool)

(assert (=> d!623057 e!1285504))

(declare-fun res!892528 () Bool)

(assert (=> d!623057 (=> (not res!892528) (not e!1285504))))

(assert (=> d!623057 (= res!892528 (= (content!3295 lt!764662) ((_ map or) (content!3295 lt!764618) (content!3295 lt!764619))))))

(assert (=> d!623057 (= lt!764662 e!1285503)))

(declare-fun c!329605 () Bool)

(assert (=> d!623057 (= c!329605 ((_ is Nil!22259) lt!764618))))

(assert (=> d!623057 (= (++!6033 lt!764618 lt!764619) lt!764662)))

(declare-fun b!2035437 () Bool)

(assert (=> b!2035437 (= e!1285503 (Cons!22259 (h!27660 lt!764618) (++!6033 (t!191188 lt!764618) lt!764619)))))

(assert (= (and d!623057 c!329605) b!2035436))

(assert (= (and d!623057 (not c!329605)) b!2035437))

(assert (= (and d!623057 res!892528) b!2035438))

(assert (= (and b!2035438 res!892529) b!2035439))

(declare-fun m!2478113 () Bool)

(assert (=> b!2035438 m!2478113))

(assert (=> b!2035438 m!2477997))

(assert (=> b!2035438 m!2478103))

(declare-fun m!2478115 () Bool)

(assert (=> d!623057 m!2478115))

(assert (=> d!623057 m!2478005))

(assert (=> d!623057 m!2478111))

(declare-fun m!2478117 () Bool)

(assert (=> b!2035437 m!2478117))

(assert (=> b!2035189 d!623057))

(declare-fun d!623059 () Bool)

(declare-fun c!329606 () Bool)

(assert (=> d!623059 (= c!329606 ((_ is Empty!7451) (left!17713 t!4319)))))

(declare-fun e!1285507 () List!22341)

(assert (=> d!623059 (= (list!9105 (left!17713 t!4319)) e!1285507)))

(declare-fun b!2035445 () Bool)

(declare-fun e!1285508 () List!22341)

(assert (=> b!2035445 (= e!1285508 (list!9107 (xs!10353 (left!17713 t!4319))))))

(declare-fun b!2035443 () Bool)

(assert (=> b!2035443 (= e!1285507 Nil!22259)))

(declare-fun b!2035446 () Bool)

(assert (=> b!2035446 (= e!1285508 (++!6033 (list!9105 (left!17713 (left!17713 t!4319))) (list!9105 (right!18043 (left!17713 t!4319)))))))

(declare-fun b!2035444 () Bool)

(assert (=> b!2035444 (= e!1285507 e!1285508)))

(declare-fun c!329607 () Bool)

(assert (=> b!2035444 (= c!329607 ((_ is Leaf!10918) (left!17713 t!4319)))))

(assert (= (and d!623059 c!329606) b!2035443))

(assert (= (and d!623059 (not c!329606)) b!2035444))

(assert (= (and b!2035444 c!329607) b!2035445))

(assert (= (and b!2035444 (not c!329607)) b!2035446))

(declare-fun m!2478125 () Bool)

(assert (=> b!2035445 m!2478125))

(assert (=> b!2035446 m!2477949))

(assert (=> b!2035446 m!2477947))

(assert (=> b!2035446 m!2477949))

(assert (=> b!2035446 m!2477947))

(declare-fun m!2478133 () Bool)

(assert (=> b!2035446 m!2478133))

(assert (=> b!2035189 d!623059))

(declare-fun d!623061 () Bool)

(assert (=> d!623061 (= (inv!29485 (xs!10353 t!4319)) (<= (size!17396 (innerList!7511 (xs!10353 t!4319))) 2147483647))))

(declare-fun bs!421322 () Bool)

(assert (= bs!421322 d!623061))

(declare-fun m!2478135 () Bool)

(assert (=> bs!421322 m!2478135))

(assert (=> b!2035188 d!623061))

(declare-fun d!623063 () Bool)

(declare-fun c!329608 () Bool)

(assert (=> d!623063 (= c!329608 ((_ is Node!7451) (left!17713 t!4319)))))

(declare-fun e!1285511 () Bool)

(assert (=> d!623063 (= (inv!29484 (left!17713 t!4319)) e!1285511)))

(declare-fun b!2035450 () Bool)

(assert (=> b!2035450 (= e!1285511 (inv!29488 (left!17713 t!4319)))))

(declare-fun b!2035451 () Bool)

(declare-fun e!1285512 () Bool)

(assert (=> b!2035451 (= e!1285511 e!1285512)))

(declare-fun res!892530 () Bool)

(assert (=> b!2035451 (= res!892530 (not ((_ is Leaf!10918) (left!17713 t!4319))))))

(assert (=> b!2035451 (=> res!892530 e!1285512)))

(declare-fun b!2035452 () Bool)

(assert (=> b!2035452 (= e!1285512 (inv!29489 (left!17713 t!4319)))))

(assert (= (and d!623063 c!329608) b!2035450))

(assert (= (and d!623063 (not c!329608)) b!2035451))

(assert (= (and b!2035451 (not res!892530)) b!2035452))

(declare-fun m!2478137 () Bool)

(assert (=> b!2035450 m!2478137))

(declare-fun m!2478139 () Bool)

(assert (=> b!2035452 m!2478139))

(assert (=> b!2035191 d!623063))

(declare-fun d!623065 () Bool)

(declare-fun c!329609 () Bool)

(assert (=> d!623065 (= c!329609 ((_ is Node!7451) (right!18043 t!4319)))))

(declare-fun e!1285513 () Bool)

(assert (=> d!623065 (= (inv!29484 (right!18043 t!4319)) e!1285513)))

(declare-fun b!2035453 () Bool)

(assert (=> b!2035453 (= e!1285513 (inv!29488 (right!18043 t!4319)))))

(declare-fun b!2035454 () Bool)

(declare-fun e!1285514 () Bool)

(assert (=> b!2035454 (= e!1285513 e!1285514)))

(declare-fun res!892531 () Bool)

(assert (=> b!2035454 (= res!892531 (not ((_ is Leaf!10918) (right!18043 t!4319))))))

(assert (=> b!2035454 (=> res!892531 e!1285514)))

(declare-fun b!2035455 () Bool)

(assert (=> b!2035455 (= e!1285514 (inv!29489 (right!18043 t!4319)))))

(assert (= (and d!623065 c!329609) b!2035453))

(assert (= (and d!623065 (not c!329609)) b!2035454))

(assert (= (and b!2035454 (not res!892531)) b!2035455))

(declare-fun m!2478141 () Bool)

(assert (=> b!2035453 m!2478141))

(declare-fun m!2478143 () Bool)

(assert (=> b!2035455 m!2478143))

(assert (=> b!2035191 d!623065))

(declare-fun b!2035460 () Bool)

(declare-fun e!1285517 () Bool)

(declare-fun tp_is_empty!9241 () Bool)

(declare-fun tp!604524 () Bool)

(assert (=> b!2035460 (= e!1285517 (and tp_is_empty!9241 tp!604524))))

(assert (=> b!2035192 (= tp!604503 e!1285517)))

(assert (= (and b!2035192 ((_ is Cons!22259) (innerList!7511 (xs!10353 t!4319)))) b!2035460))

(declare-fun e!1285522 () Bool)

(declare-fun tp!604532 () Bool)

(declare-fun b!2035469 () Bool)

(declare-fun tp!604531 () Bool)

(assert (=> b!2035469 (= e!1285522 (and (inv!29484 (left!17713 (left!17713 t!4319))) tp!604531 (inv!29484 (right!18043 (left!17713 t!4319))) tp!604532))))

(declare-fun b!2035471 () Bool)

(declare-fun e!1285523 () Bool)

(declare-fun tp!604533 () Bool)

(assert (=> b!2035471 (= e!1285523 tp!604533)))

(declare-fun b!2035470 () Bool)

(assert (=> b!2035470 (= e!1285522 (and (inv!29485 (xs!10353 (left!17713 t!4319))) e!1285523))))

(assert (=> b!2035191 (= tp!604505 (and (inv!29484 (left!17713 t!4319)) e!1285522))))

(assert (= (and b!2035191 ((_ is Node!7451) (left!17713 t!4319))) b!2035469))

(assert (= b!2035470 b!2035471))

(assert (= (and b!2035191 ((_ is Leaf!10918) (left!17713 t!4319))) b!2035470))

(declare-fun m!2478145 () Bool)

(assert (=> b!2035469 m!2478145))

(declare-fun m!2478147 () Bool)

(assert (=> b!2035469 m!2478147))

(declare-fun m!2478149 () Bool)

(assert (=> b!2035470 m!2478149))

(assert (=> b!2035191 m!2477853))

(declare-fun tp!604535 () Bool)

(declare-fun e!1285524 () Bool)

(declare-fun b!2035472 () Bool)

(declare-fun tp!604534 () Bool)

(assert (=> b!2035472 (= e!1285524 (and (inv!29484 (left!17713 (right!18043 t!4319))) tp!604534 (inv!29484 (right!18043 (right!18043 t!4319))) tp!604535))))

(declare-fun b!2035474 () Bool)

(declare-fun e!1285525 () Bool)

(declare-fun tp!604536 () Bool)

(assert (=> b!2035474 (= e!1285525 tp!604536)))

(declare-fun b!2035473 () Bool)

(assert (=> b!2035473 (= e!1285524 (and (inv!29485 (xs!10353 (right!18043 t!4319))) e!1285525))))

(assert (=> b!2035191 (= tp!604506 (and (inv!29484 (right!18043 t!4319)) e!1285524))))

(assert (= (and b!2035191 ((_ is Node!7451) (right!18043 t!4319))) b!2035472))

(assert (= b!2035473 b!2035474))

(assert (= (and b!2035191 ((_ is Leaf!10918) (right!18043 t!4319))) b!2035473))

(declare-fun m!2478151 () Bool)

(assert (=> b!2035472 m!2478151))

(declare-fun m!2478153 () Bool)

(assert (=> b!2035472 m!2478153))

(declare-fun m!2478155 () Bool)

(assert (=> b!2035473 m!2478155))

(assert (=> b!2035191 m!2477855))

(declare-fun b_lambda!68695 () Bool)

(assert (= b_lambda!68685 (or (and start!200484 b_free!56795) b_lambda!68695)))

(declare-fun b_lambda!68697 () Bool)

(assert (= b_lambda!68687 (or (and start!200484 b_free!56795) b_lambda!68697)))

(declare-fun b_lambda!68699 () Bool)

(assert (= b_lambda!68677 (or (and start!200484 b_free!56795) b_lambda!68699)))

(check-sat (not bm!124890) (not b_lambda!68697) (not d!623049) (not b!2035438) (not b!2035460) (not b!2035349) (not b!2035399) (not d!623061) (not b!2035225) (not b!2035299) (not d!623055) (not d!623023) (not b!2035437) (not b_lambda!68695) (not b!2035350) (not b!2035294) (not b!2035400) (not b!2035257) (not b!2035255) (not b!2035224) (not bm!124894) (not b!2035322) (not b!2035250) (not d!623035) (not d!623027) (not b!2035227) (not b_lambda!68699) (not b!2035474) (not b!2035455) (not b!2035252) (not d!623031) (not b_next!57499) (not b!2035450) (not b!2035254) (not b!2035431) (not b!2035258) b_and!162559 (not b!2035470) (not b!2035473) (not bm!124895) (not b!2035412) (not b!2035191) (not b!2035298) (not b!2035226) (not d!623057) (not b!2035228) (not b!2035453) (not b!2035253) (not b!2035446) (not b!2035413) (not b!2035471) (not b!2035296) tp_is_empty!9241 (not b!2035256) (not b!2035223) (not b!2035472) (not b!2035430) (not b!2035452) (not b!2035323) (not b!2035469) (not b!2035445))
(check-sat b_and!162559 (not b_next!57499))
