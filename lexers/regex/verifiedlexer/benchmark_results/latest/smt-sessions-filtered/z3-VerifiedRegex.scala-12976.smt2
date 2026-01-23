; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!713606 () Bool)

(assert start!713606)

(declare-fun b_free!134081 () Bool)

(declare-fun b_next!134871 () Bool)

(assert (=> start!713606 (= b_free!134081 (not b_next!134871))))

(declare-fun tp!2078255 () Bool)

(declare-fun b_and!351489 () Bool)

(assert (=> start!713606 (= tp!2078255 b_and!351489)))

(declare-fun setIsEmpty!55006 () Bool)

(declare-fun setRes!55007 () Bool)

(assert (=> setIsEmpty!55006 setRes!55007))

(declare-fun b!7318388 () Bool)

(declare-fun e!4381425 () Bool)

(declare-fun tp_is_empty!47745 () Bool)

(declare-fun tp!2078256 () Bool)

(assert (=> b!7318388 (= e!4381425 (and tp_is_empty!47745 tp!2078256))))

(declare-fun b!7318389 () Bool)

(declare-fun e!4381424 () Bool)

(declare-datatypes ((B!3629 0))(
  ( (B!3630 (val!29247 Int)) )
))
(declare-datatypes ((List!71378 0))(
  ( (Nil!71254) (Cons!71254 (h!77702 B!3629) (t!385610 List!71378)) )
))
(declare-fun l2!808 () List!71378)

(declare-fun size!41888 (List!71378) Int)

(assert (=> b!7318389 (= e!4381424 (< (size!41888 (t!385610 l2!808)) (size!41888 l2!808)))))

(declare-fun b!7318390 () Bool)

(declare-fun e!4381426 () Bool)

(declare-fun tp!2078257 () Bool)

(assert (=> b!7318390 (= e!4381426 (and tp_is_empty!47745 tp!2078257))))

(declare-fun res!2957347 () Bool)

(declare-fun e!4381427 () Bool)

(assert (=> start!713606 (=> (not res!2957347) (not e!4381427))))

(declare-fun l1!819 () List!71378)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2603163 () (InoxSet B!3629))

(declare-fun toList!11665 ((InoxSet B!3629)) List!71378)

(assert (=> start!713606 (= res!2957347 (= l1!819 (toList!11665 lt!2603163)))))

(declare-datatypes ((A!927 0))(
  ( (A!928 (val!29248 Int)) )
))
(declare-fun s1!456 () (InoxSet A!927))

(declare-fun f!803 () Int)

(declare-fun s2!427 () (InoxSet A!927))

(declare-fun flatMap!3083 ((InoxSet A!927) Int) (InoxSet B!3629))

(assert (=> start!713606 (= lt!2603163 ((_ map or) (flatMap!3083 s1!456 f!803) (flatMap!3083 s2!427 f!803)))))

(assert (=> start!713606 e!4381427))

(assert (=> start!713606 e!4381425))

(declare-fun condSetEmpty!55007 () Bool)

(assert (=> start!713606 (= condSetEmpty!55007 (= s1!456 ((as const (Array A!927 Bool)) false)))))

(declare-fun setRes!55006 () Bool)

(assert (=> start!713606 setRes!55006))

(assert (=> start!713606 tp!2078255))

(assert (=> start!713606 e!4381426))

(declare-fun condSetEmpty!55006 () Bool)

(assert (=> start!713606 (= condSetEmpty!55006 (= s2!427 ((as const (Array A!927 Bool)) false)))))

(assert (=> start!713606 setRes!55007))

(declare-fun b!7318391 () Bool)

(declare-fun e!4381428 () Bool)

(assert (=> b!7318391 (= e!4381428 (not e!4381424))))

(declare-fun res!2957348 () Bool)

(assert (=> b!7318391 (=> res!2957348 e!4381424)))

(declare-fun lt!2603166 () List!71378)

(declare-fun subseq!875 (List!71378 List!71378) Bool)

(assert (=> b!7318391 (= res!2957348 (not (subseq!875 (t!385610 l2!808) lt!2603166)))))

(declare-datatypes ((Unit!164751 0))(
  ( (Unit!164752) )
))
(declare-fun lt!2603165 () Unit!164751)

(declare-fun subseqTail!96 (List!71378 List!71378) Unit!164751)

(assert (=> b!7318391 (= lt!2603165 (subseqTail!96 l2!808 lt!2603166))))

(declare-fun lt!2603164 () (InoxSet B!3629))

(assert (=> b!7318391 (= (select lt!2603163 (h!77702 l2!808)) (select lt!2603164 (h!77702 l2!808)))))

(declare-fun lt!2603162 () Unit!164751)

(declare-fun lemmaFlatMapAssociativeElem!12 ((InoxSet A!927) (InoxSet A!927) Int B!3629) Unit!164751)

(assert (=> b!7318391 (= lt!2603162 (lemmaFlatMapAssociativeElem!12 s1!456 s2!427 f!803 (h!77702 l2!808)))))

(declare-fun b!7318392 () Bool)

(assert (=> b!7318392 (= e!4381427 e!4381428)))

(declare-fun res!2957349 () Bool)

(assert (=> b!7318392 (=> (not res!2957349) (not e!4381428))))

(assert (=> b!7318392 (= res!2957349 (subseq!875 l2!808 lt!2603166))))

(assert (=> b!7318392 (= lt!2603166 (toList!11665 lt!2603164))))

(assert (=> b!7318392 (= lt!2603164 (flatMap!3083 ((_ map or) s1!456 s2!427) f!803))))

(declare-fun setIsEmpty!55007 () Bool)

(assert (=> setIsEmpty!55007 setRes!55006))

(declare-fun setNonEmpty!55006 () Bool)

(declare-fun tp!2078258 () Bool)

(declare-fun tp_is_empty!47747 () Bool)

(assert (=> setNonEmpty!55006 (= setRes!55006 (and tp!2078258 tp_is_empty!47747))))

(declare-fun setElem!55006 () A!927)

(declare-fun setRest!55007 () (InoxSet A!927))

(assert (=> setNonEmpty!55006 (= s1!456 ((_ map or) (store ((as const (Array A!927 Bool)) false) setElem!55006 true) setRest!55007))))

(declare-fun b!7318393 () Bool)

(declare-fun res!2957346 () Bool)

(assert (=> b!7318393 (=> (not res!2957346) (not e!4381428))))

(get-info :version)

(assert (=> b!7318393 (= res!2957346 ((_ is Cons!71254) l2!808))))

(declare-fun setNonEmpty!55007 () Bool)

(declare-fun tp!2078259 () Bool)

(assert (=> setNonEmpty!55007 (= setRes!55007 (and tp!2078259 tp_is_empty!47747))))

(declare-fun setElem!55007 () A!927)

(declare-fun setRest!55006 () (InoxSet A!927))

(assert (=> setNonEmpty!55007 (= s2!427 ((_ map or) (store ((as const (Array A!927 Bool)) false) setElem!55007 true) setRest!55006))))

(assert (= (and start!713606 res!2957347) b!7318392))

(assert (= (and b!7318392 res!2957349) b!7318393))

(assert (= (and b!7318393 res!2957346) b!7318391))

(assert (= (and b!7318391 (not res!2957348)) b!7318389))

(assert (= (and start!713606 ((_ is Cons!71254) l2!808)) b!7318388))

(assert (= (and start!713606 condSetEmpty!55007) setIsEmpty!55007))

(assert (= (and start!713606 (not condSetEmpty!55007)) setNonEmpty!55006))

(assert (= (and start!713606 ((_ is Cons!71254) l1!819)) b!7318390))

(assert (= (and start!713606 condSetEmpty!55006) setIsEmpty!55006))

(assert (= (and start!713606 (not condSetEmpty!55006)) setNonEmpty!55007))

(declare-fun m!7983158 () Bool)

(assert (=> b!7318389 m!7983158))

(declare-fun m!7983160 () Bool)

(assert (=> b!7318389 m!7983160))

(declare-fun m!7983162 () Bool)

(assert (=> start!713606 m!7983162))

(declare-fun m!7983164 () Bool)

(assert (=> start!713606 m!7983164))

(declare-fun m!7983166 () Bool)

(assert (=> start!713606 m!7983166))

(declare-fun m!7983168 () Bool)

(assert (=> b!7318391 m!7983168))

(declare-fun m!7983170 () Bool)

(assert (=> b!7318391 m!7983170))

(declare-fun m!7983172 () Bool)

(assert (=> b!7318391 m!7983172))

(declare-fun m!7983174 () Bool)

(assert (=> b!7318391 m!7983174))

(declare-fun m!7983176 () Bool)

(assert (=> b!7318391 m!7983176))

(declare-fun m!7983178 () Bool)

(assert (=> b!7318392 m!7983178))

(declare-fun m!7983180 () Bool)

(assert (=> b!7318392 m!7983180))

(declare-fun m!7983182 () Bool)

(assert (=> b!7318392 m!7983182))

(check-sat (not setNonEmpty!55006) (not setNonEmpty!55007) (not start!713606) (not b!7318392) tp_is_empty!47745 (not b!7318391) tp_is_empty!47747 (not b!7318388) (not b!7318389) b_and!351489 (not b!7318390) (not b_next!134871))
(check-sat b_and!351489 (not b_next!134871))
(get-model)

(declare-fun d!2272543 () Bool)

(declare-fun lt!2603173 () Int)

(assert (=> d!2272543 (>= lt!2603173 0)))

(declare-fun e!4381435 () Int)

(assert (=> d!2272543 (= lt!2603173 e!4381435)))

(declare-fun c!1358582 () Bool)

(assert (=> d!2272543 (= c!1358582 ((_ is Nil!71254) (t!385610 l2!808)))))

(assert (=> d!2272543 (= (size!41888 (t!385610 l2!808)) lt!2603173)))

(declare-fun b!7318406 () Bool)

(assert (=> b!7318406 (= e!4381435 0)))

(declare-fun b!7318407 () Bool)

(assert (=> b!7318407 (= e!4381435 (+ 1 (size!41888 (t!385610 (t!385610 l2!808)))))))

(assert (= (and d!2272543 c!1358582) b!7318406))

(assert (= (and d!2272543 (not c!1358582)) b!7318407))

(declare-fun m!7983186 () Bool)

(assert (=> b!7318407 m!7983186))

(assert (=> b!7318389 d!2272543))

(declare-fun d!2272549 () Bool)

(declare-fun lt!2603174 () Int)

(assert (=> d!2272549 (>= lt!2603174 0)))

(declare-fun e!4381440 () Int)

(assert (=> d!2272549 (= lt!2603174 e!4381440)))

(declare-fun c!1358583 () Bool)

(assert (=> d!2272549 (= c!1358583 ((_ is Nil!71254) l2!808))))

(assert (=> d!2272549 (= (size!41888 l2!808) lt!2603174)))

(declare-fun b!7318412 () Bool)

(assert (=> b!7318412 (= e!4381440 0)))

(declare-fun b!7318413 () Bool)

(assert (=> b!7318413 (= e!4381440 (+ 1 (size!41888 (t!385610 l2!808))))))

(assert (= (and d!2272549 c!1358583) b!7318412))

(assert (= (and d!2272549 (not c!1358583)) b!7318413))

(assert (=> b!7318413 m!7983158))

(assert (=> b!7318389 d!2272549))

(declare-fun d!2272551 () Bool)

(declare-fun e!4381451 () Bool)

(assert (=> d!2272551 e!4381451))

(declare-fun res!2957364 () Bool)

(assert (=> d!2272551 (=> (not res!2957364) (not e!4381451))))

(declare-fun lt!2603177 () List!71378)

(declare-fun noDuplicate!3070 (List!71378) Bool)

(assert (=> d!2272551 (= res!2957364 (noDuplicate!3070 lt!2603177))))

(declare-fun choose!56800 ((InoxSet B!3629)) List!71378)

(assert (=> d!2272551 (= lt!2603177 (choose!56800 lt!2603163))))

(assert (=> d!2272551 (= (toList!11665 lt!2603163) lt!2603177)))

(declare-fun b!7318424 () Bool)

(declare-fun content!14889 (List!71378) (InoxSet B!3629))

(assert (=> b!7318424 (= e!4381451 (= (content!14889 lt!2603177) lt!2603163))))

(assert (= (and d!2272551 res!2957364) b!7318424))

(declare-fun m!7983192 () Bool)

(assert (=> d!2272551 m!7983192))

(declare-fun m!7983194 () Bool)

(assert (=> d!2272551 m!7983194))

(declare-fun m!7983196 () Bool)

(assert (=> b!7318424 m!7983196))

(assert (=> start!713606 d!2272551))

(declare-fun d!2272555 () Bool)

(declare-fun choose!56801 ((InoxSet A!927) Int) (InoxSet B!3629))

(assert (=> d!2272555 (= (flatMap!3083 s1!456 f!803) (choose!56801 s1!456 f!803))))

(declare-fun bs!1915620 () Bool)

(assert (= bs!1915620 d!2272555))

(declare-fun m!7983198 () Bool)

(assert (=> bs!1915620 m!7983198))

(assert (=> start!713606 d!2272555))

(declare-fun d!2272557 () Bool)

(assert (=> d!2272557 (= (flatMap!3083 s2!427 f!803) (choose!56801 s2!427 f!803))))

(declare-fun bs!1915621 () Bool)

(assert (= bs!1915621 d!2272557))

(declare-fun m!7983200 () Bool)

(assert (=> bs!1915621 m!7983200))

(assert (=> start!713606 d!2272557))

(declare-fun b!7318449 () Bool)

(declare-fun e!4381468 () Bool)

(assert (=> b!7318449 (= e!4381468 (subseq!875 (t!385610 l2!808) (t!385610 lt!2603166)))))

(declare-fun b!7318450 () Bool)

(declare-fun e!4381471 () Bool)

(assert (=> b!7318450 (= e!4381471 (subseq!875 l2!808 (t!385610 lt!2603166)))))

(declare-fun b!7318447 () Bool)

(declare-fun e!4381469 () Bool)

(declare-fun e!4381470 () Bool)

(assert (=> b!7318447 (= e!4381469 e!4381470)))

(declare-fun res!2957376 () Bool)

(assert (=> b!7318447 (=> (not res!2957376) (not e!4381470))))

(assert (=> b!7318447 (= res!2957376 ((_ is Cons!71254) lt!2603166))))

(declare-fun b!7318448 () Bool)

(assert (=> b!7318448 (= e!4381470 e!4381471)))

(declare-fun res!2957377 () Bool)

(assert (=> b!7318448 (=> res!2957377 e!4381471)))

(assert (=> b!7318448 (= res!2957377 e!4381468)))

(declare-fun res!2957375 () Bool)

(assert (=> b!7318448 (=> (not res!2957375) (not e!4381468))))

(assert (=> b!7318448 (= res!2957375 (= (h!77702 l2!808) (h!77702 lt!2603166)))))

(declare-fun d!2272559 () Bool)

(declare-fun res!2957378 () Bool)

(assert (=> d!2272559 (=> res!2957378 e!4381469)))

(assert (=> d!2272559 (= res!2957378 ((_ is Nil!71254) l2!808))))

(assert (=> d!2272559 (= (subseq!875 l2!808 lt!2603166) e!4381469)))

(assert (= (and d!2272559 (not res!2957378)) b!7318447))

(assert (= (and b!7318447 res!2957376) b!7318448))

(assert (= (and b!7318448 res!2957375) b!7318449))

(assert (= (and b!7318448 (not res!2957377)) b!7318450))

(declare-fun m!7983202 () Bool)

(assert (=> b!7318449 m!7983202))

(declare-fun m!7983204 () Bool)

(assert (=> b!7318450 m!7983204))

(assert (=> b!7318392 d!2272559))

(declare-fun d!2272561 () Bool)

(declare-fun e!4381472 () Bool)

(assert (=> d!2272561 e!4381472))

(declare-fun res!2957379 () Bool)

(assert (=> d!2272561 (=> (not res!2957379) (not e!4381472))))

(declare-fun lt!2603180 () List!71378)

(assert (=> d!2272561 (= res!2957379 (noDuplicate!3070 lt!2603180))))

(assert (=> d!2272561 (= lt!2603180 (choose!56800 lt!2603164))))

(assert (=> d!2272561 (= (toList!11665 lt!2603164) lt!2603180)))

(declare-fun b!7318451 () Bool)

(assert (=> b!7318451 (= e!4381472 (= (content!14889 lt!2603180) lt!2603164))))

(assert (= (and d!2272561 res!2957379) b!7318451))

(declare-fun m!7983206 () Bool)

(assert (=> d!2272561 m!7983206))

(declare-fun m!7983208 () Bool)

(assert (=> d!2272561 m!7983208))

(declare-fun m!7983210 () Bool)

(assert (=> b!7318451 m!7983210))

(assert (=> b!7318392 d!2272561))

(declare-fun d!2272563 () Bool)

(assert (=> d!2272563 (= (flatMap!3083 ((_ map or) s1!456 s2!427) f!803) (choose!56801 ((_ map or) s1!456 s2!427) f!803))))

(declare-fun bs!1915622 () Bool)

(assert (= bs!1915622 d!2272563))

(declare-fun m!7983212 () Bool)

(assert (=> bs!1915622 m!7983212))

(assert (=> b!7318392 d!2272563))

(declare-fun b!7318454 () Bool)

(declare-fun e!4381473 () Bool)

(assert (=> b!7318454 (= e!4381473 (subseq!875 (t!385610 (t!385610 l2!808)) (t!385610 lt!2603166)))))

(declare-fun b!7318455 () Bool)

(declare-fun e!4381476 () Bool)

(assert (=> b!7318455 (= e!4381476 (subseq!875 (t!385610 l2!808) (t!385610 lt!2603166)))))

(declare-fun b!7318452 () Bool)

(declare-fun e!4381474 () Bool)

(declare-fun e!4381475 () Bool)

(assert (=> b!7318452 (= e!4381474 e!4381475)))

(declare-fun res!2957381 () Bool)

(assert (=> b!7318452 (=> (not res!2957381) (not e!4381475))))

(assert (=> b!7318452 (= res!2957381 ((_ is Cons!71254) lt!2603166))))

(declare-fun b!7318453 () Bool)

(assert (=> b!7318453 (= e!4381475 e!4381476)))

(declare-fun res!2957382 () Bool)

(assert (=> b!7318453 (=> res!2957382 e!4381476)))

(assert (=> b!7318453 (= res!2957382 e!4381473)))

(declare-fun res!2957380 () Bool)

(assert (=> b!7318453 (=> (not res!2957380) (not e!4381473))))

(assert (=> b!7318453 (= res!2957380 (= (h!77702 (t!385610 l2!808)) (h!77702 lt!2603166)))))

(declare-fun d!2272565 () Bool)

(declare-fun res!2957383 () Bool)

(assert (=> d!2272565 (=> res!2957383 e!4381474)))

(assert (=> d!2272565 (= res!2957383 ((_ is Nil!71254) (t!385610 l2!808)))))

(assert (=> d!2272565 (= (subseq!875 (t!385610 l2!808) lt!2603166) e!4381474)))

(assert (= (and d!2272565 (not res!2957383)) b!7318452))

(assert (= (and b!7318452 res!2957381) b!7318453))

(assert (= (and b!7318453 res!2957380) b!7318454))

(assert (= (and b!7318453 (not res!2957382)) b!7318455))

(declare-fun m!7983214 () Bool)

(assert (=> b!7318454 m!7983214))

(assert (=> b!7318455 m!7983202))

(assert (=> b!7318391 d!2272565))

(declare-fun b!7318484 () Bool)

(declare-fun e!4381496 () Bool)

(assert (=> b!7318484 (= e!4381496 (subseq!875 l2!808 lt!2603166))))

(declare-fun b!7318485 () Bool)

(declare-fun e!4381495 () Unit!164751)

(declare-fun e!4381498 () Unit!164751)

(assert (=> b!7318485 (= e!4381495 e!4381498)))

(declare-fun c!1358601 () Bool)

(assert (=> b!7318485 (= c!1358601 (subseq!875 l2!808 (t!385610 lt!2603166)))))

(declare-fun b!7318486 () Bool)

(declare-fun Unit!164755 () Unit!164751)

(assert (=> b!7318486 (= e!4381495 Unit!164755)))

(declare-fun d!2272567 () Bool)

(declare-fun tail!14648 (List!71378) List!71378)

(assert (=> d!2272567 (subseq!875 (tail!14648 l2!808) lt!2603166)))

(declare-fun lt!2603189 () Unit!164751)

(assert (=> d!2272567 (= lt!2603189 e!4381495)))

(declare-fun c!1358600 () Bool)

(assert (=> d!2272567 (= c!1358600 (and ((_ is Cons!71254) l2!808) ((_ is Cons!71254) lt!2603166)))))

(assert (=> d!2272567 e!4381496))

(declare-fun res!2957393 () Bool)

(assert (=> d!2272567 (=> (not res!2957393) (not e!4381496))))

(declare-fun isEmpty!40871 (List!71378) Bool)

(assert (=> d!2272567 (= res!2957393 (not (isEmpty!40871 l2!808)))))

(assert (=> d!2272567 (= (subseqTail!96 l2!808 lt!2603166) lt!2603189)))

(declare-fun b!7318487 () Bool)

(declare-fun call!665832 () Unit!164751)

(assert (=> b!7318487 (= e!4381498 call!665832)))

(declare-fun bm!665827 () Bool)

(assert (=> bm!665827 (= call!665832 (subseqTail!96 (ite c!1358601 l2!808 (t!385610 l2!808)) (t!385610 lt!2603166)))))

(declare-fun b!7318488 () Bool)

(declare-fun e!4381497 () Unit!164751)

(assert (=> b!7318488 (= e!4381497 call!665832)))

(declare-fun b!7318489 () Bool)

(declare-fun Unit!164756 () Unit!164751)

(assert (=> b!7318489 (= e!4381497 Unit!164756)))

(declare-fun b!7318490 () Bool)

(declare-fun c!1358599 () Bool)

(assert (=> b!7318490 (= c!1358599 (not (isEmpty!40871 (t!385610 l2!808))))))

(assert (=> b!7318490 (= e!4381498 e!4381497)))

(assert (= (and d!2272567 res!2957393) b!7318484))

(assert (= (and d!2272567 c!1358600) b!7318485))

(assert (= (and d!2272567 (not c!1358600)) b!7318486))

(assert (= (and b!7318485 c!1358601) b!7318487))

(assert (= (and b!7318485 (not c!1358601)) b!7318490))

(assert (= (and b!7318490 c!1358599) b!7318488))

(assert (= (and b!7318490 (not c!1358599)) b!7318489))

(assert (= (or b!7318487 b!7318488) bm!665827))

(declare-fun m!7983240 () Bool)

(assert (=> d!2272567 m!7983240))

(assert (=> d!2272567 m!7983240))

(declare-fun m!7983242 () Bool)

(assert (=> d!2272567 m!7983242))

(declare-fun m!7983244 () Bool)

(assert (=> d!2272567 m!7983244))

(assert (=> b!7318485 m!7983204))

(declare-fun m!7983246 () Bool)

(assert (=> bm!665827 m!7983246))

(declare-fun m!7983248 () Bool)

(assert (=> b!7318490 m!7983248))

(assert (=> b!7318484 m!7983178))

(assert (=> b!7318391 d!2272567))

(declare-fun d!2272577 () Bool)

(assert (=> d!2272577 (= (select ((_ map or) (flatMap!3083 s1!456 f!803) (flatMap!3083 s2!427 f!803)) (h!77702 l2!808)) (select (flatMap!3083 ((_ map or) s1!456 s2!427) f!803) (h!77702 l2!808)))))

(declare-fun lt!2603194 () Unit!164751)

(declare-fun choose!56805 ((InoxSet A!927) (InoxSet A!927) Int B!3629) Unit!164751)

(assert (=> d!2272577 (= lt!2603194 (choose!56805 s1!456 s2!427 f!803 (h!77702 l2!808)))))

(assert (=> d!2272577 (= (lemmaFlatMapAssociativeElem!12 s1!456 s2!427 f!803 (h!77702 l2!808)) lt!2603194)))

(declare-fun bs!1915627 () Bool)

(assert (= bs!1915627 d!2272577))

(declare-fun m!7983262 () Bool)

(assert (=> bs!1915627 m!7983262))

(assert (=> bs!1915627 m!7983166))

(declare-fun m!7983264 () Bool)

(assert (=> bs!1915627 m!7983264))

(assert (=> bs!1915627 m!7983182))

(declare-fun m!7983266 () Bool)

(assert (=> bs!1915627 m!7983266))

(assert (=> bs!1915627 m!7983164))

(assert (=> b!7318391 d!2272577))

(declare-fun condSetEmpty!55014 () Bool)

(assert (=> setNonEmpty!55006 (= condSetEmpty!55014 (= setRest!55007 ((as const (Array A!927 Bool)) false)))))

(declare-fun setRes!55014 () Bool)

(assert (=> setNonEmpty!55006 (= tp!2078258 setRes!55014)))

(declare-fun setIsEmpty!55014 () Bool)

(assert (=> setIsEmpty!55014 setRes!55014))

(declare-fun setNonEmpty!55014 () Bool)

(declare-fun tp!2078270 () Bool)

(assert (=> setNonEmpty!55014 (= setRes!55014 (and tp!2078270 tp_is_empty!47747))))

(declare-fun setElem!55014 () A!927)

(declare-fun setRest!55014 () (InoxSet A!927))

(assert (=> setNonEmpty!55014 (= setRest!55007 ((_ map or) (store ((as const (Array A!927 Bool)) false) setElem!55014 true) setRest!55014))))

(assert (= (and setNonEmpty!55006 condSetEmpty!55014) setIsEmpty!55014))

(assert (= (and setNonEmpty!55006 (not condSetEmpty!55014)) setNonEmpty!55014))

(declare-fun b!7318508 () Bool)

(declare-fun e!4381507 () Bool)

(declare-fun tp!2078273 () Bool)

(assert (=> b!7318508 (= e!4381507 (and tp_is_empty!47745 tp!2078273))))

(assert (=> b!7318388 (= tp!2078256 e!4381507)))

(assert (= (and b!7318388 ((_ is Cons!71254) (t!385610 l2!808))) b!7318508))

(declare-fun b!7318509 () Bool)

(declare-fun e!4381508 () Bool)

(declare-fun tp!2078274 () Bool)

(assert (=> b!7318509 (= e!4381508 (and tp_is_empty!47745 tp!2078274))))

(assert (=> b!7318390 (= tp!2078257 e!4381508)))

(assert (= (and b!7318390 ((_ is Cons!71254) (t!385610 l1!819))) b!7318509))

(declare-fun condSetEmpty!55015 () Bool)

(assert (=> setNonEmpty!55007 (= condSetEmpty!55015 (= setRest!55006 ((as const (Array A!927 Bool)) false)))))

(declare-fun setRes!55015 () Bool)

(assert (=> setNonEmpty!55007 (= tp!2078259 setRes!55015)))

(declare-fun setIsEmpty!55015 () Bool)

(assert (=> setIsEmpty!55015 setRes!55015))

(declare-fun setNonEmpty!55015 () Bool)

(declare-fun tp!2078275 () Bool)

(assert (=> setNonEmpty!55015 (= setRes!55015 (and tp!2078275 tp_is_empty!47747))))

(declare-fun setElem!55015 () A!927)

(declare-fun setRest!55015 () (InoxSet A!927))

(assert (=> setNonEmpty!55015 (= setRest!55006 ((_ map or) (store ((as const (Array A!927 Bool)) false) setElem!55015 true) setRest!55015))))

(assert (= (and setNonEmpty!55007 condSetEmpty!55015) setIsEmpty!55015))

(assert (= (and setNonEmpty!55007 (not condSetEmpty!55015)) setNonEmpty!55015))

(check-sat (not b!7318413) (not d!2272555) (not b!7318484) (not bm!665827) tp_is_empty!47747 (not d!2272551) (not setNonEmpty!55015) (not b!7318407) (not d!2272567) (not b!7318424) (not b_next!134871) (not b!7318508) tp_is_empty!47745 (not b!7318455) (not b!7318454) (not b!7318451) (not b!7318485) (not d!2272561) (not b!7318490) (not b!7318450) (not d!2272557) (not d!2272577) (not setNonEmpty!55014) b_and!351489 (not b!7318509) (not b!7318449) (not d!2272563))
(check-sat b_and!351489 (not b_next!134871))
