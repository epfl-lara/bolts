; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272372 () Bool)

(assert start!272372)

(declare-fun b!2813002 () Bool)

(declare-fun e!1778931 () Bool)

(declare-fun tp_is_empty!14411 () Bool)

(declare-fun tp!898228 () Bool)

(assert (=> b!2813002 (= e!1778931 (and tp_is_empty!14411 tp!898228))))

(declare-datatypes ((B!2437 0))(
  ( (B!2438 (val!10344 Int)) )
))
(declare-datatypes ((List!32991 0))(
  ( (Nil!32869) (Cons!32869 (h!38289 B!2437) (t!229961 List!32991)) )
))
(declare-fun l2!1521 () List!32991)

(declare-fun l1!1552 () List!32991)

(declare-fun e!1778930 () Bool)

(declare-fun l3!334 () List!32991)

(declare-fun b!2813000 () Bool)

(declare-fun ++!8077 (List!32991 List!32991) List!32991)

(assert (=> b!2813000 (= e!1778930 (not (= (++!8077 (++!8077 l1!1552 l2!1521) l3!334) (++!8077 l1!1552 (++!8077 l2!1521 l3!334)))))))

(declare-fun b!2813001 () Bool)

(declare-fun e!1778932 () Bool)

(declare-fun tp!898226 () Bool)

(assert (=> b!2813001 (= e!1778932 (and tp_is_empty!14411 tp!898226))))

(declare-fun b!2813003 () Bool)

(declare-fun e!1778933 () Bool)

(declare-fun tp!898227 () Bool)

(assert (=> b!2813003 (= e!1778933 (and tp_is_empty!14411 tp!898227))))

(declare-fun res!1171000 () Bool)

(assert (=> start!272372 (=> (not res!1171000) (not e!1778930))))

(get-info :version)

(assert (=> start!272372 (= res!1171000 (not ((_ is Cons!32869) l1!1552)))))

(assert (=> start!272372 e!1778930))

(assert (=> start!272372 e!1778932))

(assert (=> start!272372 e!1778931))

(assert (=> start!272372 e!1778933))

(assert (= (and start!272372 res!1171000) b!2813000))

(assert (= (and start!272372 ((_ is Cons!32869) l1!1552)) b!2813001))

(assert (= (and start!272372 ((_ is Cons!32869) l2!1521)) b!2813002))

(assert (= (and start!272372 ((_ is Cons!32869) l3!334)) b!2813003))

(declare-fun m!3243425 () Bool)

(assert (=> b!2813000 m!3243425))

(assert (=> b!2813000 m!3243425))

(declare-fun m!3243427 () Bool)

(assert (=> b!2813000 m!3243427))

(declare-fun m!3243429 () Bool)

(assert (=> b!2813000 m!3243429))

(assert (=> b!2813000 m!3243429))

(declare-fun m!3243431 () Bool)

(assert (=> b!2813000 m!3243431))

(check-sat tp_is_empty!14411 (not b!2813000) (not b!2813003) (not b!2813002) (not b!2813001))
(check-sat)
(get-model)

(declare-fun d!816605 () Bool)

(declare-fun e!1778950 () Bool)

(assert (=> d!816605 e!1778950))

(declare-fun res!1171018 () Bool)

(assert (=> d!816605 (=> (not res!1171018) (not e!1778950))))

(declare-fun lt!1004998 () List!32991)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4589 (List!32991) (InoxSet B!2437))

(assert (=> d!816605 (= res!1171018 (= (content!4589 lt!1004998) ((_ map or) (content!4589 (++!8077 l1!1552 l2!1521)) (content!4589 l3!334))))))

(declare-fun e!1778951 () List!32991)

(assert (=> d!816605 (= lt!1004998 e!1778951)))

(declare-fun c!455815 () Bool)

(assert (=> d!816605 (= c!455815 ((_ is Nil!32869) (++!8077 l1!1552 l2!1521)))))

(assert (=> d!816605 (= (++!8077 (++!8077 l1!1552 l2!1521) l3!334) lt!1004998)))

(declare-fun b!2813037 () Bool)

(assert (=> b!2813037 (= e!1778951 (Cons!32869 (h!38289 (++!8077 l1!1552 l2!1521)) (++!8077 (t!229961 (++!8077 l1!1552 l2!1521)) l3!334)))))

(declare-fun b!2813036 () Bool)

(assert (=> b!2813036 (= e!1778951 l3!334)))

(declare-fun b!2813039 () Bool)

(assert (=> b!2813039 (= e!1778950 (or (not (= l3!334 Nil!32869)) (= lt!1004998 (++!8077 l1!1552 l2!1521))))))

(declare-fun b!2813038 () Bool)

(declare-fun res!1171017 () Bool)

(assert (=> b!2813038 (=> (not res!1171017) (not e!1778950))))

(declare-fun size!25614 (List!32991) Int)

(assert (=> b!2813038 (= res!1171017 (= (size!25614 lt!1004998) (+ (size!25614 (++!8077 l1!1552 l2!1521)) (size!25614 l3!334))))))

(assert (= (and d!816605 c!455815) b!2813036))

(assert (= (and d!816605 (not c!455815)) b!2813037))

(assert (= (and d!816605 res!1171018) b!2813038))

(assert (= (and b!2813038 res!1171017) b!2813039))

(declare-fun m!3243477 () Bool)

(assert (=> d!816605 m!3243477))

(assert (=> d!816605 m!3243425))

(declare-fun m!3243479 () Bool)

(assert (=> d!816605 m!3243479))

(declare-fun m!3243481 () Bool)

(assert (=> d!816605 m!3243481))

(declare-fun m!3243483 () Bool)

(assert (=> b!2813037 m!3243483))

(declare-fun m!3243485 () Bool)

(assert (=> b!2813038 m!3243485))

(assert (=> b!2813038 m!3243425))

(declare-fun m!3243487 () Bool)

(assert (=> b!2813038 m!3243487))

(declare-fun m!3243489 () Bool)

(assert (=> b!2813038 m!3243489))

(assert (=> b!2813000 d!816605))

(declare-fun d!816613 () Bool)

(declare-fun e!1778955 () Bool)

(assert (=> d!816613 e!1778955))

(declare-fun res!1171020 () Bool)

(assert (=> d!816613 (=> (not res!1171020) (not e!1778955))))

(declare-fun lt!1004999 () List!32991)

(assert (=> d!816613 (= res!1171020 (= (content!4589 lt!1004999) ((_ map or) (content!4589 l1!1552) (content!4589 l2!1521))))))

(declare-fun e!1778956 () List!32991)

(assert (=> d!816613 (= lt!1004999 e!1778956)))

(declare-fun c!455816 () Bool)

(assert (=> d!816613 (= c!455816 ((_ is Nil!32869) l1!1552))))

(assert (=> d!816613 (= (++!8077 l1!1552 l2!1521) lt!1004999)))

(declare-fun b!2813046 () Bool)

(assert (=> b!2813046 (= e!1778956 (Cons!32869 (h!38289 l1!1552) (++!8077 (t!229961 l1!1552) l2!1521)))))

(declare-fun b!2813045 () Bool)

(assert (=> b!2813045 (= e!1778956 l2!1521)))

(declare-fun b!2813048 () Bool)

(assert (=> b!2813048 (= e!1778955 (or (not (= l2!1521 Nil!32869)) (= lt!1004999 l1!1552)))))

(declare-fun b!2813047 () Bool)

(declare-fun res!1171019 () Bool)

(assert (=> b!2813047 (=> (not res!1171019) (not e!1778955))))

(assert (=> b!2813047 (= res!1171019 (= (size!25614 lt!1004999) (+ (size!25614 l1!1552) (size!25614 l2!1521))))))

(assert (= (and d!816613 c!455816) b!2813045))

(assert (= (and d!816613 (not c!455816)) b!2813046))

(assert (= (and d!816613 res!1171020) b!2813047))

(assert (= (and b!2813047 res!1171019) b!2813048))

(declare-fun m!3243491 () Bool)

(assert (=> d!816613 m!3243491))

(declare-fun m!3243493 () Bool)

(assert (=> d!816613 m!3243493))

(declare-fun m!3243495 () Bool)

(assert (=> d!816613 m!3243495))

(declare-fun m!3243497 () Bool)

(assert (=> b!2813046 m!3243497))

(declare-fun m!3243499 () Bool)

(assert (=> b!2813047 m!3243499))

(declare-fun m!3243501 () Bool)

(assert (=> b!2813047 m!3243501))

(declare-fun m!3243503 () Bool)

(assert (=> b!2813047 m!3243503))

(assert (=> b!2813000 d!816613))

(declare-fun d!816615 () Bool)

(declare-fun e!1778959 () Bool)

(assert (=> d!816615 e!1778959))

(declare-fun res!1171022 () Bool)

(assert (=> d!816615 (=> (not res!1171022) (not e!1778959))))

(declare-fun lt!1005000 () List!32991)

(assert (=> d!816615 (= res!1171022 (= (content!4589 lt!1005000) ((_ map or) (content!4589 l1!1552) (content!4589 (++!8077 l2!1521 l3!334)))))))

(declare-fun e!1778960 () List!32991)

(assert (=> d!816615 (= lt!1005000 e!1778960)))

(declare-fun c!455817 () Bool)

(assert (=> d!816615 (= c!455817 ((_ is Nil!32869) l1!1552))))

(assert (=> d!816615 (= (++!8077 l1!1552 (++!8077 l2!1521 l3!334)) lt!1005000)))

(declare-fun b!2813052 () Bool)

(assert (=> b!2813052 (= e!1778960 (Cons!32869 (h!38289 l1!1552) (++!8077 (t!229961 l1!1552) (++!8077 l2!1521 l3!334))))))

(declare-fun b!2813051 () Bool)

(assert (=> b!2813051 (= e!1778960 (++!8077 l2!1521 l3!334))))

(declare-fun b!2813054 () Bool)

(assert (=> b!2813054 (= e!1778959 (or (not (= (++!8077 l2!1521 l3!334) Nil!32869)) (= lt!1005000 l1!1552)))))

(declare-fun b!2813053 () Bool)

(declare-fun res!1171021 () Bool)

(assert (=> b!2813053 (=> (not res!1171021) (not e!1778959))))

(assert (=> b!2813053 (= res!1171021 (= (size!25614 lt!1005000) (+ (size!25614 l1!1552) (size!25614 (++!8077 l2!1521 l3!334)))))))

(assert (= (and d!816615 c!455817) b!2813051))

(assert (= (and d!816615 (not c!455817)) b!2813052))

(assert (= (and d!816615 res!1171022) b!2813053))

(assert (= (and b!2813053 res!1171021) b!2813054))

(declare-fun m!3243505 () Bool)

(assert (=> d!816615 m!3243505))

(assert (=> d!816615 m!3243493))

(assert (=> d!816615 m!3243429))

(declare-fun m!3243507 () Bool)

(assert (=> d!816615 m!3243507))

(assert (=> b!2813052 m!3243429))

(declare-fun m!3243509 () Bool)

(assert (=> b!2813052 m!3243509))

(declare-fun m!3243511 () Bool)

(assert (=> b!2813053 m!3243511))

(assert (=> b!2813053 m!3243501))

(assert (=> b!2813053 m!3243429))

(declare-fun m!3243513 () Bool)

(assert (=> b!2813053 m!3243513))

(assert (=> b!2813000 d!816615))

(declare-fun d!816617 () Bool)

(declare-fun e!1778961 () Bool)

(assert (=> d!816617 e!1778961))

(declare-fun res!1171024 () Bool)

(assert (=> d!816617 (=> (not res!1171024) (not e!1778961))))

(declare-fun lt!1005001 () List!32991)

(assert (=> d!816617 (= res!1171024 (= (content!4589 lt!1005001) ((_ map or) (content!4589 l2!1521) (content!4589 l3!334))))))

(declare-fun e!1778962 () List!32991)

(assert (=> d!816617 (= lt!1005001 e!1778962)))

(declare-fun c!455818 () Bool)

(assert (=> d!816617 (= c!455818 ((_ is Nil!32869) l2!1521))))

(assert (=> d!816617 (= (++!8077 l2!1521 l3!334) lt!1005001)))

(declare-fun b!2813056 () Bool)

(assert (=> b!2813056 (= e!1778962 (Cons!32869 (h!38289 l2!1521) (++!8077 (t!229961 l2!1521) l3!334)))))

(declare-fun b!2813055 () Bool)

(assert (=> b!2813055 (= e!1778962 l3!334)))

(declare-fun b!2813058 () Bool)

(assert (=> b!2813058 (= e!1778961 (or (not (= l3!334 Nil!32869)) (= lt!1005001 l2!1521)))))

(declare-fun b!2813057 () Bool)

(declare-fun res!1171023 () Bool)

(assert (=> b!2813057 (=> (not res!1171023) (not e!1778961))))

(assert (=> b!2813057 (= res!1171023 (= (size!25614 lt!1005001) (+ (size!25614 l2!1521) (size!25614 l3!334))))))

(assert (= (and d!816617 c!455818) b!2813055))

(assert (= (and d!816617 (not c!455818)) b!2813056))

(assert (= (and d!816617 res!1171024) b!2813057))

(assert (= (and b!2813057 res!1171023) b!2813058))

(declare-fun m!3243515 () Bool)

(assert (=> d!816617 m!3243515))

(assert (=> d!816617 m!3243495))

(assert (=> d!816617 m!3243481))

(declare-fun m!3243517 () Bool)

(assert (=> b!2813056 m!3243517))

(declare-fun m!3243519 () Bool)

(assert (=> b!2813057 m!3243519))

(assert (=> b!2813057 m!3243503))

(assert (=> b!2813057 m!3243489))

(assert (=> b!2813000 d!816617))

(declare-fun b!2813063 () Bool)

(declare-fun e!1778965 () Bool)

(declare-fun tp!898236 () Bool)

(assert (=> b!2813063 (= e!1778965 (and tp_is_empty!14411 tp!898236))))

(assert (=> b!2813003 (= tp!898227 e!1778965)))

(assert (= (and b!2813003 ((_ is Cons!32869) (t!229961 l3!334))) b!2813063))

(declare-fun b!2813064 () Bool)

(declare-fun e!1778966 () Bool)

(declare-fun tp!898237 () Bool)

(assert (=> b!2813064 (= e!1778966 (and tp_is_empty!14411 tp!898237))))

(assert (=> b!2813002 (= tp!898228 e!1778966)))

(assert (= (and b!2813002 ((_ is Cons!32869) (t!229961 l2!1521))) b!2813064))

(declare-fun b!2813065 () Bool)

(declare-fun e!1778967 () Bool)

(declare-fun tp!898238 () Bool)

(assert (=> b!2813065 (= e!1778967 (and tp_is_empty!14411 tp!898238))))

(assert (=> b!2813001 (= tp!898226 e!1778967)))

(assert (= (and b!2813001 ((_ is Cons!32869) (t!229961 l1!1552))) b!2813065))

(check-sat (not d!816617) (not b!2813052) (not d!816613) (not b!2813037) (not d!816605) (not b!2813053) (not b!2813063) (not d!816615) (not b!2813065) (not b!2813046) (not b!2813057) (not b!2813047) (not b!2813064) (not b!2813056) tp_is_empty!14411 (not b!2813038))
(check-sat)
