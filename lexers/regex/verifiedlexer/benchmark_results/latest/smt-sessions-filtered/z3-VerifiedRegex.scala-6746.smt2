; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!352280 () Bool)

(assert start!352280)

(declare-fun b_free!100415 () Bool)

(declare-fun b_next!101119 () Bool)

(assert (=> start!352280 (= b_free!100415 (not b_next!101119))))

(declare-fun tp!1145614 () Bool)

(declare-fun b_and!278805 () Bool)

(assert (=> start!352280 (= tp!1145614 b_and!278805)))

(declare-fun res!1520353 () Bool)

(declare-fun e!2320522 () Bool)

(assert (=> start!352280 (=> (not res!1520353) (not e!2320522))))

(declare-datatypes ((T!69098 0))(
  ( (T!69099 (val!13172 Int)) )
))
(declare-datatypes ((List!40131 0))(
  ( (Nil!40007) (Cons!40007 (h!45427 T!69098) (t!303124 List!40131)) )
))
(declare-datatypes ((IArray!24471 0))(
  ( (IArray!24472 (innerList!12293 List!40131)) )
))
(declare-datatypes ((Conc!12233 0))(
  ( (Node!12233 (left!30971 Conc!12233) (right!31301 Conc!12233) (csize!24696 Int) (cheight!12444 Int)) (Leaf!18980 (xs!15435 IArray!24471) (csize!24697 Int)) (Empty!12233) )
))
(declare-fun t!3709 () Conc!12233)

(get-info :version)

(assert (=> start!352280 (= res!1520353 (and (not ((_ is Empty!12233) t!3709)) (not ((_ is Leaf!18980) t!3709))))))

(assert (=> start!352280 e!2320522))

(declare-fun e!2320520 () Bool)

(declare-fun inv!53554 (Conc!12233) Bool)

(assert (=> start!352280 (and (inv!53554 t!3709) e!2320520)))

(assert (=> start!352280 tp!1145614))

(declare-fun b!3751446 () Bool)

(declare-fun e!2320521 () Bool)

(declare-fun tp!1145613 () Bool)

(assert (=> b!3751446 (= e!2320521 tp!1145613)))

(declare-fun b!3751445 () Bool)

(declare-fun inv!53555 (IArray!24471) Bool)

(assert (=> b!3751445 (= e!2320520 (and (inv!53555 (xs!15435 t!3709)) e!2320521))))

(declare-fun tp!1145612 () Bool)

(declare-fun tp!1145611 () Bool)

(declare-fun b!3751444 () Bool)

(assert (=> b!3751444 (= e!2320520 (and (inv!53554 (left!30971 t!3709)) tp!1145612 (inv!53554 (right!31301 t!3709)) tp!1145611))))

(declare-fun b!3751443 () Bool)

(declare-fun height!1742 (Conc!12233) Int)

(assert (=> b!3751443 (= e!2320522 (>= (height!1742 (left!30971 t!3709)) (height!1742 t!3709)))))

(declare-datatypes ((Unit!57734 0))(
  ( (Unit!57735) )
))
(declare-fun lt!1299877 () Unit!57734)

(declare-fun p!1451 () Int)

(declare-fun lemmaForallConcat!209 (List!40131 List!40131 Int) Unit!57734)

(declare-fun list!14738 (Conc!12233) List!40131)

(assert (=> b!3751443 (= lt!1299877 (lemmaForallConcat!209 (list!14738 (left!30971 t!3709)) (list!14738 (right!31301 t!3709)) p!1451))))

(assert (= (and start!352280 res!1520353) b!3751443))

(assert (= (and start!352280 ((_ is Node!12233) t!3709)) b!3751444))

(assert (= b!3751445 b!3751446))

(assert (= (and start!352280 ((_ is Leaf!18980) t!3709)) b!3751445))

(declare-fun m!4242227 () Bool)

(assert (=> start!352280 m!4242227))

(declare-fun m!4242229 () Bool)

(assert (=> b!3751445 m!4242229))

(declare-fun m!4242231 () Bool)

(assert (=> b!3751444 m!4242231))

(declare-fun m!4242233 () Bool)

(assert (=> b!3751444 m!4242233))

(declare-fun m!4242235 () Bool)

(assert (=> b!3751443 m!4242235))

(declare-fun m!4242237 () Bool)

(assert (=> b!3751443 m!4242237))

(declare-fun m!4242239 () Bool)

(assert (=> b!3751443 m!4242239))

(declare-fun m!4242241 () Bool)

(assert (=> b!3751443 m!4242241))

(declare-fun m!4242243 () Bool)

(assert (=> b!3751443 m!4242243))

(assert (=> b!3751443 m!4242241))

(assert (=> b!3751443 m!4242239))

(check-sat (not b!3751445) (not b!3751446) (not start!352280) (not b!3751444) (not b_next!101119) (not b!3751443) b_and!278805)
(check-sat b_and!278805 (not b_next!101119))
(get-model)

(declare-fun d!1094223 () Bool)

(declare-fun e!2320528 () Bool)

(declare-fun forall!8227 (List!40131 Int) Bool)

(declare-fun ++!9901 (List!40131 List!40131) List!40131)

(assert (=> d!1094223 (= (forall!8227 (++!9901 (list!14738 (left!30971 t!3709)) (list!14738 (right!31301 t!3709))) p!1451) e!2320528)))

(declare-fun res!1520359 () Bool)

(assert (=> d!1094223 (=> (not res!1520359) (not e!2320528))))

(assert (=> d!1094223 (= res!1520359 (forall!8227 (list!14738 (left!30971 t!3709)) p!1451))))

(declare-fun lt!1299883 () Unit!57734)

(declare-fun choose!22254 (List!40131 List!40131 Int) Unit!57734)

(assert (=> d!1094223 (= lt!1299883 (choose!22254 (list!14738 (left!30971 t!3709)) (list!14738 (right!31301 t!3709)) p!1451))))

(assert (=> d!1094223 (= (lemmaForallConcat!209 (list!14738 (left!30971 t!3709)) (list!14738 (right!31301 t!3709)) p!1451) lt!1299883)))

(declare-fun b!3751452 () Bool)

(assert (=> b!3751452 (= e!2320528 (forall!8227 (list!14738 (right!31301 t!3709)) p!1451))))

(assert (= (and d!1094223 res!1520359) b!3751452))

(assert (=> d!1094223 m!4242239))

(assert (=> d!1094223 m!4242241))

(declare-fun m!4242255 () Bool)

(assert (=> d!1094223 m!4242255))

(assert (=> d!1094223 m!4242255))

(declare-fun m!4242257 () Bool)

(assert (=> d!1094223 m!4242257))

(assert (=> d!1094223 m!4242239))

(declare-fun m!4242259 () Bool)

(assert (=> d!1094223 m!4242259))

(assert (=> d!1094223 m!4242239))

(assert (=> d!1094223 m!4242241))

(declare-fun m!4242261 () Bool)

(assert (=> d!1094223 m!4242261))

(assert (=> b!3751452 m!4242241))

(declare-fun m!4242263 () Bool)

(assert (=> b!3751452 m!4242263))

(assert (=> b!3751443 d!1094223))

(declare-fun d!1094227 () Bool)

(assert (=> d!1094227 (= (height!1742 (left!30971 t!3709)) (ite ((_ is Empty!12233) (left!30971 t!3709)) 0 (ite ((_ is Leaf!18980) (left!30971 t!3709)) 1 (cheight!12444 (left!30971 t!3709)))))))

(assert (=> b!3751443 d!1094227))

(declare-fun d!1094233 () Bool)

(assert (=> d!1094233 (= (height!1742 t!3709) (ite ((_ is Empty!12233) t!3709) 0 (ite ((_ is Leaf!18980) t!3709) 1 (cheight!12444 t!3709))))))

(assert (=> b!3751443 d!1094233))

(declare-fun b!3751477 () Bool)

(declare-fun e!2320541 () List!40131)

(assert (=> b!3751477 (= e!2320541 Nil!40007)))

(declare-fun d!1094235 () Bool)

(declare-fun c!649292 () Bool)

(assert (=> d!1094235 (= c!649292 ((_ is Empty!12233) (left!30971 t!3709)))))

(assert (=> d!1094235 (= (list!14738 (left!30971 t!3709)) e!2320541)))

(declare-fun b!3751478 () Bool)

(declare-fun e!2320542 () List!40131)

(assert (=> b!3751478 (= e!2320541 e!2320542)))

(declare-fun c!649293 () Bool)

(assert (=> b!3751478 (= c!649293 ((_ is Leaf!18980) (left!30971 t!3709)))))

(declare-fun b!3751479 () Bool)

(declare-fun list!14740 (IArray!24471) List!40131)

(assert (=> b!3751479 (= e!2320542 (list!14740 (xs!15435 (left!30971 t!3709))))))

(declare-fun b!3751480 () Bool)

(assert (=> b!3751480 (= e!2320542 (++!9901 (list!14738 (left!30971 (left!30971 t!3709))) (list!14738 (right!31301 (left!30971 t!3709)))))))

(assert (= (and d!1094235 c!649292) b!3751477))

(assert (= (and d!1094235 (not c!649292)) b!3751478))

(assert (= (and b!3751478 c!649293) b!3751479))

(assert (= (and b!3751478 (not c!649293)) b!3751480))

(declare-fun m!4242281 () Bool)

(assert (=> b!3751479 m!4242281))

(declare-fun m!4242283 () Bool)

(assert (=> b!3751480 m!4242283))

(declare-fun m!4242285 () Bool)

(assert (=> b!3751480 m!4242285))

(assert (=> b!3751480 m!4242283))

(assert (=> b!3751480 m!4242285))

(declare-fun m!4242287 () Bool)

(assert (=> b!3751480 m!4242287))

(assert (=> b!3751443 d!1094235))

(declare-fun b!3751481 () Bool)

(declare-fun e!2320543 () List!40131)

(assert (=> b!3751481 (= e!2320543 Nil!40007)))

(declare-fun d!1094241 () Bool)

(declare-fun c!649294 () Bool)

(assert (=> d!1094241 (= c!649294 ((_ is Empty!12233) (right!31301 t!3709)))))

(assert (=> d!1094241 (= (list!14738 (right!31301 t!3709)) e!2320543)))

(declare-fun b!3751482 () Bool)

(declare-fun e!2320544 () List!40131)

(assert (=> b!3751482 (= e!2320543 e!2320544)))

(declare-fun c!649295 () Bool)

(assert (=> b!3751482 (= c!649295 ((_ is Leaf!18980) (right!31301 t!3709)))))

(declare-fun b!3751483 () Bool)

(assert (=> b!3751483 (= e!2320544 (list!14740 (xs!15435 (right!31301 t!3709))))))

(declare-fun b!3751484 () Bool)

(assert (=> b!3751484 (= e!2320544 (++!9901 (list!14738 (left!30971 (right!31301 t!3709))) (list!14738 (right!31301 (right!31301 t!3709)))))))

(assert (= (and d!1094241 c!649294) b!3751481))

(assert (= (and d!1094241 (not c!649294)) b!3751482))

(assert (= (and b!3751482 c!649295) b!3751483))

(assert (= (and b!3751482 (not c!649295)) b!3751484))

(declare-fun m!4242289 () Bool)

(assert (=> b!3751483 m!4242289))

(declare-fun m!4242291 () Bool)

(assert (=> b!3751484 m!4242291))

(declare-fun m!4242293 () Bool)

(assert (=> b!3751484 m!4242293))

(assert (=> b!3751484 m!4242291))

(assert (=> b!3751484 m!4242293))

(declare-fun m!4242295 () Bool)

(assert (=> b!3751484 m!4242295))

(assert (=> b!3751443 d!1094241))

(declare-fun d!1094243 () Bool)

(declare-fun c!649303 () Bool)

(assert (=> d!1094243 (= c!649303 ((_ is Node!12233) (left!30971 t!3709)))))

(declare-fun e!2320559 () Bool)

(assert (=> d!1094243 (= (inv!53554 (left!30971 t!3709)) e!2320559)))

(declare-fun b!3751506 () Bool)

(declare-fun inv!53556 (Conc!12233) Bool)

(assert (=> b!3751506 (= e!2320559 (inv!53556 (left!30971 t!3709)))))

(declare-fun b!3751507 () Bool)

(declare-fun e!2320560 () Bool)

(assert (=> b!3751507 (= e!2320559 e!2320560)))

(declare-fun res!1520367 () Bool)

(assert (=> b!3751507 (= res!1520367 (not ((_ is Leaf!18980) (left!30971 t!3709))))))

(assert (=> b!3751507 (=> res!1520367 e!2320560)))

(declare-fun b!3751508 () Bool)

(declare-fun inv!53558 (Conc!12233) Bool)

(assert (=> b!3751508 (= e!2320560 (inv!53558 (left!30971 t!3709)))))

(assert (= (and d!1094243 c!649303) b!3751506))

(assert (= (and d!1094243 (not c!649303)) b!3751507))

(assert (= (and b!3751507 (not res!1520367)) b!3751508))

(declare-fun m!4242309 () Bool)

(assert (=> b!3751506 m!4242309))

(declare-fun m!4242311 () Bool)

(assert (=> b!3751508 m!4242311))

(assert (=> b!3751444 d!1094243))

(declare-fun d!1094251 () Bool)

(declare-fun c!649304 () Bool)

(assert (=> d!1094251 (= c!649304 ((_ is Node!12233) (right!31301 t!3709)))))

(declare-fun e!2320561 () Bool)

(assert (=> d!1094251 (= (inv!53554 (right!31301 t!3709)) e!2320561)))

(declare-fun b!3751509 () Bool)

(assert (=> b!3751509 (= e!2320561 (inv!53556 (right!31301 t!3709)))))

(declare-fun b!3751510 () Bool)

(declare-fun e!2320562 () Bool)

(assert (=> b!3751510 (= e!2320561 e!2320562)))

(declare-fun res!1520368 () Bool)

(assert (=> b!3751510 (= res!1520368 (not ((_ is Leaf!18980) (right!31301 t!3709))))))

(assert (=> b!3751510 (=> res!1520368 e!2320562)))

(declare-fun b!3751511 () Bool)

(assert (=> b!3751511 (= e!2320562 (inv!53558 (right!31301 t!3709)))))

(assert (= (and d!1094251 c!649304) b!3751509))

(assert (= (and d!1094251 (not c!649304)) b!3751510))

(assert (= (and b!3751510 (not res!1520368)) b!3751511))

(declare-fun m!4242313 () Bool)

(assert (=> b!3751509 m!4242313))

(declare-fun m!4242315 () Bool)

(assert (=> b!3751511 m!4242315))

(assert (=> b!3751444 d!1094251))

(declare-fun d!1094253 () Bool)

(declare-fun c!649305 () Bool)

(assert (=> d!1094253 (= c!649305 ((_ is Node!12233) t!3709))))

(declare-fun e!2320563 () Bool)

(assert (=> d!1094253 (= (inv!53554 t!3709) e!2320563)))

(declare-fun b!3751512 () Bool)

(assert (=> b!3751512 (= e!2320563 (inv!53556 t!3709))))

(declare-fun b!3751513 () Bool)

(declare-fun e!2320564 () Bool)

(assert (=> b!3751513 (= e!2320563 e!2320564)))

(declare-fun res!1520369 () Bool)

(assert (=> b!3751513 (= res!1520369 (not ((_ is Leaf!18980) t!3709)))))

(assert (=> b!3751513 (=> res!1520369 e!2320564)))

(declare-fun b!3751514 () Bool)

(assert (=> b!3751514 (= e!2320564 (inv!53558 t!3709))))

(assert (= (and d!1094253 c!649305) b!3751512))

(assert (= (and d!1094253 (not c!649305)) b!3751513))

(assert (= (and b!3751513 (not res!1520369)) b!3751514))

(declare-fun m!4242319 () Bool)

(assert (=> b!3751512 m!4242319))

(declare-fun m!4242321 () Bool)

(assert (=> b!3751514 m!4242321))

(assert (=> start!352280 d!1094253))

(declare-fun d!1094255 () Bool)

(declare-fun size!30099 (List!40131) Int)

(assert (=> d!1094255 (= (inv!53555 (xs!15435 t!3709)) (<= (size!30099 (innerList!12293 (xs!15435 t!3709))) 2147483647))))

(declare-fun bs!575400 () Bool)

(assert (= bs!575400 d!1094255))

(declare-fun m!4242323 () Bool)

(assert (=> bs!575400 m!4242323))

(assert (=> b!3751445 d!1094255))

(declare-fun b!3751530 () Bool)

(declare-fun e!2320573 () Bool)

(declare-fun tp_is_empty!19047 () Bool)

(declare-fun tp!1145626 () Bool)

(assert (=> b!3751530 (= e!2320573 (and tp_is_empty!19047 tp!1145626))))

(assert (=> b!3751446 (= tp!1145613 e!2320573)))

(assert (= (and b!3751446 ((_ is Cons!40007) (innerList!12293 (xs!15435 t!3709)))) b!3751530))

(declare-fun e!2320584 () Bool)

(declare-fun tp!1145641 () Bool)

(declare-fun b!3751547 () Bool)

(declare-fun tp!1145639 () Bool)

(assert (=> b!3751547 (= e!2320584 (and (inv!53554 (left!30971 (left!30971 t!3709))) tp!1145641 (inv!53554 (right!31301 (left!30971 t!3709))) tp!1145639))))

(declare-fun b!3751549 () Bool)

(declare-fun e!2320583 () Bool)

(declare-fun tp!1145640 () Bool)

(assert (=> b!3751549 (= e!2320583 tp!1145640)))

(declare-fun b!3751548 () Bool)

(assert (=> b!3751548 (= e!2320584 (and (inv!53555 (xs!15435 (left!30971 t!3709))) e!2320583))))

(assert (=> b!3751444 (= tp!1145612 (and (inv!53554 (left!30971 t!3709)) e!2320584))))

(assert (= (and b!3751444 ((_ is Node!12233) (left!30971 t!3709))) b!3751547))

(assert (= b!3751548 b!3751549))

(assert (= (and b!3751444 ((_ is Leaf!18980) (left!30971 t!3709))) b!3751548))

(declare-fun m!4242337 () Bool)

(assert (=> b!3751547 m!4242337))

(declare-fun m!4242339 () Bool)

(assert (=> b!3751547 m!4242339))

(declare-fun m!4242341 () Bool)

(assert (=> b!3751548 m!4242341))

(assert (=> b!3751444 m!4242231))

(declare-fun b!3751550 () Bool)

(declare-fun tp!1145644 () Bool)

(declare-fun e!2320586 () Bool)

(declare-fun tp!1145642 () Bool)

(assert (=> b!3751550 (= e!2320586 (and (inv!53554 (left!30971 (right!31301 t!3709))) tp!1145644 (inv!53554 (right!31301 (right!31301 t!3709))) tp!1145642))))

(declare-fun b!3751552 () Bool)

(declare-fun e!2320585 () Bool)

(declare-fun tp!1145643 () Bool)

(assert (=> b!3751552 (= e!2320585 tp!1145643)))

(declare-fun b!3751551 () Bool)

(assert (=> b!3751551 (= e!2320586 (and (inv!53555 (xs!15435 (right!31301 t!3709))) e!2320585))))

(assert (=> b!3751444 (= tp!1145611 (and (inv!53554 (right!31301 t!3709)) e!2320586))))

(assert (= (and b!3751444 ((_ is Node!12233) (right!31301 t!3709))) b!3751550))

(assert (= b!3751551 b!3751552))

(assert (= (and b!3751444 ((_ is Leaf!18980) (right!31301 t!3709))) b!3751551))

(declare-fun m!4242343 () Bool)

(assert (=> b!3751550 m!4242343))

(declare-fun m!4242345 () Bool)

(assert (=> b!3751550 m!4242345))

(declare-fun m!4242347 () Bool)

(assert (=> b!3751551 m!4242347))

(assert (=> b!3751444 m!4242233))

(check-sat (not b!3751549) (not b!3751444) tp_is_empty!19047 (not b_next!101119) (not d!1094223) (not b!3751548) (not b!3751484) (not b!3751550) (not b!3751480) (not b!3751452) (not b!3751552) (not b!3751509) (not b!3751508) (not b!3751506) (not b!3751479) (not b!3751547) (not b!3751511) (not d!1094255) (not b!3751530) (not b!3751512) (not b!3751551) (not b!3751514) (not b!3751483) b_and!278805)
(check-sat b_and!278805 (not b_next!101119))
(get-model)

(declare-fun d!1094257 () Bool)

(declare-fun c!649306 () Bool)

(assert (=> d!1094257 (= c!649306 ((_ is Node!12233) (left!30971 (right!31301 t!3709))))))

(declare-fun e!2320587 () Bool)

(assert (=> d!1094257 (= (inv!53554 (left!30971 (right!31301 t!3709))) e!2320587)))

(declare-fun b!3751553 () Bool)

(assert (=> b!3751553 (= e!2320587 (inv!53556 (left!30971 (right!31301 t!3709))))))

(declare-fun b!3751554 () Bool)

(declare-fun e!2320588 () Bool)

(assert (=> b!3751554 (= e!2320587 e!2320588)))

(declare-fun res!1520370 () Bool)

(assert (=> b!3751554 (= res!1520370 (not ((_ is Leaf!18980) (left!30971 (right!31301 t!3709)))))))

(assert (=> b!3751554 (=> res!1520370 e!2320588)))

(declare-fun b!3751555 () Bool)

(assert (=> b!3751555 (= e!2320588 (inv!53558 (left!30971 (right!31301 t!3709))))))

(assert (= (and d!1094257 c!649306) b!3751553))

(assert (= (and d!1094257 (not c!649306)) b!3751554))

(assert (= (and b!3751554 (not res!1520370)) b!3751555))

(declare-fun m!4242349 () Bool)

(assert (=> b!3751553 m!4242349))

(declare-fun m!4242351 () Bool)

(assert (=> b!3751555 m!4242351))

(assert (=> b!3751550 d!1094257))

(declare-fun d!1094259 () Bool)

(declare-fun c!649307 () Bool)

(assert (=> d!1094259 (= c!649307 ((_ is Node!12233) (right!31301 (right!31301 t!3709))))))

(declare-fun e!2320589 () Bool)

(assert (=> d!1094259 (= (inv!53554 (right!31301 (right!31301 t!3709))) e!2320589)))

(declare-fun b!3751556 () Bool)

(assert (=> b!3751556 (= e!2320589 (inv!53556 (right!31301 (right!31301 t!3709))))))

(declare-fun b!3751557 () Bool)

(declare-fun e!2320590 () Bool)

(assert (=> b!3751557 (= e!2320589 e!2320590)))

(declare-fun res!1520371 () Bool)

(assert (=> b!3751557 (= res!1520371 (not ((_ is Leaf!18980) (right!31301 (right!31301 t!3709)))))))

(assert (=> b!3751557 (=> res!1520371 e!2320590)))

(declare-fun b!3751558 () Bool)

(assert (=> b!3751558 (= e!2320590 (inv!53558 (right!31301 (right!31301 t!3709))))))

(assert (= (and d!1094259 c!649307) b!3751556))

(assert (= (and d!1094259 (not c!649307)) b!3751557))

(assert (= (and b!3751557 (not res!1520371)) b!3751558))

(declare-fun m!4242353 () Bool)

(assert (=> b!3751556 m!4242353))

(declare-fun m!4242355 () Bool)

(assert (=> b!3751558 m!4242355))

(assert (=> b!3751550 d!1094259))

(declare-fun d!1094261 () Bool)

(assert (=> d!1094261 (= (inv!53555 (xs!15435 (right!31301 t!3709))) (<= (size!30099 (innerList!12293 (xs!15435 (right!31301 t!3709)))) 2147483647))))

(declare-fun bs!575401 () Bool)

(assert (= bs!575401 d!1094261))

(declare-fun m!4242357 () Bool)

(assert (=> bs!575401 m!4242357))

(assert (=> b!3751551 d!1094261))

(declare-fun d!1094263 () Bool)

(declare-fun res!1520378 () Bool)

(declare-fun e!2320593 () Bool)

(assert (=> d!1094263 (=> (not res!1520378) (not e!2320593))))

(declare-fun size!30101 (Conc!12233) Int)

(assert (=> d!1094263 (= res!1520378 (= (csize!24696 (left!30971 t!3709)) (+ (size!30101 (left!30971 (left!30971 t!3709))) (size!30101 (right!31301 (left!30971 t!3709))))))))

(assert (=> d!1094263 (= (inv!53556 (left!30971 t!3709)) e!2320593)))

(declare-fun b!3751565 () Bool)

(declare-fun res!1520379 () Bool)

(assert (=> b!3751565 (=> (not res!1520379) (not e!2320593))))

(assert (=> b!3751565 (= res!1520379 (and (not (= (left!30971 (left!30971 t!3709)) Empty!12233)) (not (= (right!31301 (left!30971 t!3709)) Empty!12233))))))

(declare-fun b!3751566 () Bool)

(declare-fun res!1520380 () Bool)

(assert (=> b!3751566 (=> (not res!1520380) (not e!2320593))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3751566 (= res!1520380 (= (cheight!12444 (left!30971 t!3709)) (+ (max!0 (height!1742 (left!30971 (left!30971 t!3709))) (height!1742 (right!31301 (left!30971 t!3709)))) 1)))))

(declare-fun b!3751567 () Bool)

(assert (=> b!3751567 (= e!2320593 (<= 0 (cheight!12444 (left!30971 t!3709))))))

(assert (= (and d!1094263 res!1520378) b!3751565))

(assert (= (and b!3751565 res!1520379) b!3751566))

(assert (= (and b!3751566 res!1520380) b!3751567))

(declare-fun m!4242359 () Bool)

(assert (=> d!1094263 m!4242359))

(declare-fun m!4242361 () Bool)

(assert (=> d!1094263 m!4242361))

(declare-fun m!4242363 () Bool)

(assert (=> b!3751566 m!4242363))

(declare-fun m!4242365 () Bool)

(assert (=> b!3751566 m!4242365))

(assert (=> b!3751566 m!4242363))

(assert (=> b!3751566 m!4242365))

(declare-fun m!4242367 () Bool)

(assert (=> b!3751566 m!4242367))

(assert (=> b!3751506 d!1094263))

(assert (=> b!3751444 d!1094243))

(assert (=> b!3751444 d!1094251))

(declare-fun d!1094265 () Bool)

(declare-fun res!1520385 () Bool)

(declare-fun e!2320596 () Bool)

(assert (=> d!1094265 (=> (not res!1520385) (not e!2320596))))

(assert (=> d!1094265 (= res!1520385 (<= (size!30099 (list!14740 (xs!15435 (left!30971 t!3709)))) 512))))

(assert (=> d!1094265 (= (inv!53558 (left!30971 t!3709)) e!2320596)))

(declare-fun b!3751572 () Bool)

(declare-fun res!1520386 () Bool)

(assert (=> b!3751572 (=> (not res!1520386) (not e!2320596))))

(assert (=> b!3751572 (= res!1520386 (= (csize!24697 (left!30971 t!3709)) (size!30099 (list!14740 (xs!15435 (left!30971 t!3709))))))))

(declare-fun b!3751573 () Bool)

(assert (=> b!3751573 (= e!2320596 (and (> (csize!24697 (left!30971 t!3709)) 0) (<= (csize!24697 (left!30971 t!3709)) 512)))))

(assert (= (and d!1094265 res!1520385) b!3751572))

(assert (= (and b!3751572 res!1520386) b!3751573))

(assert (=> d!1094265 m!4242281))

(assert (=> d!1094265 m!4242281))

(declare-fun m!4242369 () Bool)

(assert (=> d!1094265 m!4242369))

(assert (=> b!3751572 m!4242281))

(assert (=> b!3751572 m!4242281))

(assert (=> b!3751572 m!4242369))

(assert (=> b!3751508 d!1094265))

(declare-fun d!1094267 () Bool)

(declare-fun e!2320605 () Bool)

(assert (=> d!1094267 e!2320605))

(declare-fun res!1520393 () Bool)

(assert (=> d!1094267 (=> (not res!1520393) (not e!2320605))))

(declare-fun lt!1299886 () List!40131)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5865 (List!40131) (InoxSet T!69098))

(assert (=> d!1094267 (= res!1520393 (= (content!5865 lt!1299886) ((_ map or) (content!5865 (list!14738 (left!30971 (right!31301 t!3709)))) (content!5865 (list!14738 (right!31301 (right!31301 t!3709)))))))))

(declare-fun e!2320606 () List!40131)

(assert (=> d!1094267 (= lt!1299886 e!2320606)))

(declare-fun c!649312 () Bool)

(assert (=> d!1094267 (= c!649312 ((_ is Nil!40007) (list!14738 (left!30971 (right!31301 t!3709)))))))

(assert (=> d!1094267 (= (++!9901 (list!14738 (left!30971 (right!31301 t!3709))) (list!14738 (right!31301 (right!31301 t!3709)))) lt!1299886)))

(declare-fun b!3751588 () Bool)

(assert (=> b!3751588 (= e!2320606 (list!14738 (right!31301 (right!31301 t!3709))))))

(declare-fun b!3751590 () Bool)

(declare-fun res!1520394 () Bool)

(assert (=> b!3751590 (=> (not res!1520394) (not e!2320605))))

(assert (=> b!3751590 (= res!1520394 (= (size!30099 lt!1299886) (+ (size!30099 (list!14738 (left!30971 (right!31301 t!3709)))) (size!30099 (list!14738 (right!31301 (right!31301 t!3709)))))))))

(declare-fun b!3751589 () Bool)

(assert (=> b!3751589 (= e!2320606 (Cons!40007 (h!45427 (list!14738 (left!30971 (right!31301 t!3709)))) (++!9901 (t!303124 (list!14738 (left!30971 (right!31301 t!3709)))) (list!14738 (right!31301 (right!31301 t!3709))))))))

(declare-fun b!3751591 () Bool)

(assert (=> b!3751591 (= e!2320605 (or (not (= (list!14738 (right!31301 (right!31301 t!3709))) Nil!40007)) (= lt!1299886 (list!14738 (left!30971 (right!31301 t!3709))))))))

(assert (= (and d!1094267 c!649312) b!3751588))

(assert (= (and d!1094267 (not c!649312)) b!3751589))

(assert (= (and d!1094267 res!1520393) b!3751590))

(assert (= (and b!3751590 res!1520394) b!3751591))

(declare-fun m!4242379 () Bool)

(assert (=> d!1094267 m!4242379))

(assert (=> d!1094267 m!4242291))

(declare-fun m!4242381 () Bool)

(assert (=> d!1094267 m!4242381))

(assert (=> d!1094267 m!4242293))

(declare-fun m!4242383 () Bool)

(assert (=> d!1094267 m!4242383))

(declare-fun m!4242385 () Bool)

(assert (=> b!3751590 m!4242385))

(assert (=> b!3751590 m!4242291))

(declare-fun m!4242387 () Bool)

(assert (=> b!3751590 m!4242387))

(assert (=> b!3751590 m!4242293))

(declare-fun m!4242389 () Bool)

(assert (=> b!3751590 m!4242389))

(assert (=> b!3751589 m!4242293))

(declare-fun m!4242391 () Bool)

(assert (=> b!3751589 m!4242391))

(assert (=> b!3751484 d!1094267))

(declare-fun b!3751592 () Bool)

(declare-fun e!2320607 () List!40131)

(assert (=> b!3751592 (= e!2320607 Nil!40007)))

(declare-fun d!1094277 () Bool)

(declare-fun c!649313 () Bool)

(assert (=> d!1094277 (= c!649313 ((_ is Empty!12233) (left!30971 (right!31301 t!3709))))))

(assert (=> d!1094277 (= (list!14738 (left!30971 (right!31301 t!3709))) e!2320607)))

(declare-fun b!3751593 () Bool)

(declare-fun e!2320608 () List!40131)

(assert (=> b!3751593 (= e!2320607 e!2320608)))

(declare-fun c!649314 () Bool)

(assert (=> b!3751593 (= c!649314 ((_ is Leaf!18980) (left!30971 (right!31301 t!3709))))))

(declare-fun b!3751594 () Bool)

(assert (=> b!3751594 (= e!2320608 (list!14740 (xs!15435 (left!30971 (right!31301 t!3709)))))))

(declare-fun b!3751595 () Bool)

(assert (=> b!3751595 (= e!2320608 (++!9901 (list!14738 (left!30971 (left!30971 (right!31301 t!3709)))) (list!14738 (right!31301 (left!30971 (right!31301 t!3709))))))))

(assert (= (and d!1094277 c!649313) b!3751592))

(assert (= (and d!1094277 (not c!649313)) b!3751593))

(assert (= (and b!3751593 c!649314) b!3751594))

(assert (= (and b!3751593 (not c!649314)) b!3751595))

(declare-fun m!4242393 () Bool)

(assert (=> b!3751594 m!4242393))

(declare-fun m!4242395 () Bool)

(assert (=> b!3751595 m!4242395))

(declare-fun m!4242397 () Bool)

(assert (=> b!3751595 m!4242397))

(assert (=> b!3751595 m!4242395))

(assert (=> b!3751595 m!4242397))

(declare-fun m!4242399 () Bool)

(assert (=> b!3751595 m!4242399))

(assert (=> b!3751484 d!1094277))

(declare-fun b!3751596 () Bool)

(declare-fun e!2320609 () List!40131)

(assert (=> b!3751596 (= e!2320609 Nil!40007)))

(declare-fun d!1094279 () Bool)

(declare-fun c!649315 () Bool)

(assert (=> d!1094279 (= c!649315 ((_ is Empty!12233) (right!31301 (right!31301 t!3709))))))

(assert (=> d!1094279 (= (list!14738 (right!31301 (right!31301 t!3709))) e!2320609)))

(declare-fun b!3751597 () Bool)

(declare-fun e!2320610 () List!40131)

(assert (=> b!3751597 (= e!2320609 e!2320610)))

(declare-fun c!649316 () Bool)

(assert (=> b!3751597 (= c!649316 ((_ is Leaf!18980) (right!31301 (right!31301 t!3709))))))

(declare-fun b!3751598 () Bool)

(assert (=> b!3751598 (= e!2320610 (list!14740 (xs!15435 (right!31301 (right!31301 t!3709)))))))

(declare-fun b!3751599 () Bool)

(assert (=> b!3751599 (= e!2320610 (++!9901 (list!14738 (left!30971 (right!31301 (right!31301 t!3709)))) (list!14738 (right!31301 (right!31301 (right!31301 t!3709))))))))

(assert (= (and d!1094279 c!649315) b!3751596))

(assert (= (and d!1094279 (not c!649315)) b!3751597))

(assert (= (and b!3751597 c!649316) b!3751598))

(assert (= (and b!3751597 (not c!649316)) b!3751599))

(declare-fun m!4242401 () Bool)

(assert (=> b!3751598 m!4242401))

(declare-fun m!4242403 () Bool)

(assert (=> b!3751599 m!4242403))

(declare-fun m!4242405 () Bool)

(assert (=> b!3751599 m!4242405))

(assert (=> b!3751599 m!4242403))

(assert (=> b!3751599 m!4242405))

(declare-fun m!4242407 () Bool)

(assert (=> b!3751599 m!4242407))

(assert (=> b!3751484 d!1094279))

(declare-fun d!1094281 () Bool)

(declare-fun c!649317 () Bool)

(assert (=> d!1094281 (= c!649317 ((_ is Node!12233) (left!30971 (left!30971 t!3709))))))

(declare-fun e!2320613 () Bool)

(assert (=> d!1094281 (= (inv!53554 (left!30971 (left!30971 t!3709))) e!2320613)))

(declare-fun b!3751606 () Bool)

(assert (=> b!3751606 (= e!2320613 (inv!53556 (left!30971 (left!30971 t!3709))))))

(declare-fun b!3751607 () Bool)

(declare-fun e!2320614 () Bool)

(assert (=> b!3751607 (= e!2320613 e!2320614)))

(declare-fun res!1520401 () Bool)

(assert (=> b!3751607 (= res!1520401 (not ((_ is Leaf!18980) (left!30971 (left!30971 t!3709)))))))

(assert (=> b!3751607 (=> res!1520401 e!2320614)))

(declare-fun b!3751608 () Bool)

(assert (=> b!3751608 (= e!2320614 (inv!53558 (left!30971 (left!30971 t!3709))))))

(assert (= (and d!1094281 c!649317) b!3751606))

(assert (= (and d!1094281 (not c!649317)) b!3751607))

(assert (= (and b!3751607 (not res!1520401)) b!3751608))

(declare-fun m!4242409 () Bool)

(assert (=> b!3751606 m!4242409))

(declare-fun m!4242411 () Bool)

(assert (=> b!3751608 m!4242411))

(assert (=> b!3751547 d!1094281))

(declare-fun d!1094283 () Bool)

(declare-fun c!649318 () Bool)

(assert (=> d!1094283 (= c!649318 ((_ is Node!12233) (right!31301 (left!30971 t!3709))))))

(declare-fun e!2320615 () Bool)

(assert (=> d!1094283 (= (inv!53554 (right!31301 (left!30971 t!3709))) e!2320615)))

(declare-fun b!3751609 () Bool)

(assert (=> b!3751609 (= e!2320615 (inv!53556 (right!31301 (left!30971 t!3709))))))

(declare-fun b!3751610 () Bool)

(declare-fun e!2320616 () Bool)

(assert (=> b!3751610 (= e!2320615 e!2320616)))

(declare-fun res!1520402 () Bool)

(assert (=> b!3751610 (= res!1520402 (not ((_ is Leaf!18980) (right!31301 (left!30971 t!3709)))))))

(assert (=> b!3751610 (=> res!1520402 e!2320616)))

(declare-fun b!3751611 () Bool)

(assert (=> b!3751611 (= e!2320616 (inv!53558 (right!31301 (left!30971 t!3709))))))

(assert (= (and d!1094283 c!649318) b!3751609))

(assert (= (and d!1094283 (not c!649318)) b!3751610))

(assert (= (and b!3751610 (not res!1520402)) b!3751611))

(declare-fun m!4242413 () Bool)

(assert (=> b!3751609 m!4242413))

(declare-fun m!4242415 () Bool)

(assert (=> b!3751611 m!4242415))

(assert (=> b!3751547 d!1094283))

(declare-fun d!1094285 () Bool)

(declare-fun res!1520403 () Bool)

(declare-fun e!2320617 () Bool)

(assert (=> d!1094285 (=> (not res!1520403) (not e!2320617))))

(assert (=> d!1094285 (= res!1520403 (<= (size!30099 (list!14740 (xs!15435 t!3709))) 512))))

(assert (=> d!1094285 (= (inv!53558 t!3709) e!2320617)))

(declare-fun b!3751612 () Bool)

(declare-fun res!1520404 () Bool)

(assert (=> b!3751612 (=> (not res!1520404) (not e!2320617))))

(assert (=> b!3751612 (= res!1520404 (= (csize!24697 t!3709) (size!30099 (list!14740 (xs!15435 t!3709)))))))

(declare-fun b!3751613 () Bool)

(assert (=> b!3751613 (= e!2320617 (and (> (csize!24697 t!3709) 0) (<= (csize!24697 t!3709) 512)))))

(assert (= (and d!1094285 res!1520403) b!3751612))

(assert (= (and b!3751612 res!1520404) b!3751613))

(declare-fun m!4242417 () Bool)

(assert (=> d!1094285 m!4242417))

(assert (=> d!1094285 m!4242417))

(declare-fun m!4242419 () Bool)

(assert (=> d!1094285 m!4242419))

(assert (=> b!3751612 m!4242417))

(assert (=> b!3751612 m!4242417))

(assert (=> b!3751612 m!4242419))

(assert (=> b!3751514 d!1094285))

(declare-fun d!1094287 () Bool)

(assert (=> d!1094287 (= (inv!53555 (xs!15435 (left!30971 t!3709))) (<= (size!30099 (innerList!12293 (xs!15435 (left!30971 t!3709)))) 2147483647))))

(declare-fun bs!575402 () Bool)

(assert (= bs!575402 d!1094287))

(declare-fun m!4242421 () Bool)

(assert (=> bs!575402 m!4242421))

(assert (=> b!3751548 d!1094287))

(declare-fun d!1094289 () Bool)

(declare-fun res!1520412 () Bool)

(declare-fun e!2320623 () Bool)

(assert (=> d!1094289 (=> res!1520412 e!2320623)))

(assert (=> d!1094289 (= res!1520412 ((_ is Nil!40007) (list!14738 (right!31301 t!3709))))))

(assert (=> d!1094289 (= (forall!8227 (list!14738 (right!31301 t!3709)) p!1451) e!2320623)))

(declare-fun b!3751621 () Bool)

(declare-fun e!2320624 () Bool)

(assert (=> b!3751621 (= e!2320623 e!2320624)))

(declare-fun res!1520413 () Bool)

(assert (=> b!3751621 (=> (not res!1520413) (not e!2320624))))

(declare-fun dynLambda!17300 (Int T!69098) Bool)

(assert (=> b!3751621 (= res!1520413 (dynLambda!17300 p!1451 (h!45427 (list!14738 (right!31301 t!3709)))))))

(declare-fun b!3751622 () Bool)

(assert (=> b!3751622 (= e!2320624 (forall!8227 (t!303124 (list!14738 (right!31301 t!3709))) p!1451))))

(assert (= (and d!1094289 (not res!1520412)) b!3751621))

(assert (= (and b!3751621 res!1520413) b!3751622))

(declare-fun b_lambda!109991 () Bool)

(assert (=> (not b_lambda!109991) (not b!3751621)))

(declare-fun t!303130 () Bool)

(declare-fun tb!214649 () Bool)

(assert (=> (and start!352280 (= p!1451 p!1451) t!303130) tb!214649))

(declare-fun result!262130 () Bool)

(assert (=> tb!214649 (= result!262130 true)))

(assert (=> b!3751621 t!303130))

(declare-fun b_and!278807 () Bool)

(assert (= b_and!278805 (and (=> t!303130 result!262130) b_and!278807)))

(declare-fun m!4242435 () Bool)

(assert (=> b!3751621 m!4242435))

(declare-fun m!4242437 () Bool)

(assert (=> b!3751622 m!4242437))

(assert (=> b!3751452 d!1094289))

(declare-fun d!1094295 () Bool)

(declare-fun res!1520414 () Bool)

(declare-fun e!2320625 () Bool)

(assert (=> d!1094295 (=> (not res!1520414) (not e!2320625))))

(assert (=> d!1094295 (= res!1520414 (= (csize!24696 (right!31301 t!3709)) (+ (size!30101 (left!30971 (right!31301 t!3709))) (size!30101 (right!31301 (right!31301 t!3709))))))))

(assert (=> d!1094295 (= (inv!53556 (right!31301 t!3709)) e!2320625)))

(declare-fun b!3751623 () Bool)

(declare-fun res!1520415 () Bool)

(assert (=> b!3751623 (=> (not res!1520415) (not e!2320625))))

(assert (=> b!3751623 (= res!1520415 (and (not (= (left!30971 (right!31301 t!3709)) Empty!12233)) (not (= (right!31301 (right!31301 t!3709)) Empty!12233))))))

(declare-fun b!3751624 () Bool)

(declare-fun res!1520416 () Bool)

(assert (=> b!3751624 (=> (not res!1520416) (not e!2320625))))

(assert (=> b!3751624 (= res!1520416 (= (cheight!12444 (right!31301 t!3709)) (+ (max!0 (height!1742 (left!30971 (right!31301 t!3709))) (height!1742 (right!31301 (right!31301 t!3709)))) 1)))))

(declare-fun b!3751625 () Bool)

(assert (=> b!3751625 (= e!2320625 (<= 0 (cheight!12444 (right!31301 t!3709))))))

(assert (= (and d!1094295 res!1520414) b!3751623))

(assert (= (and b!3751623 res!1520415) b!3751624))

(assert (= (and b!3751624 res!1520416) b!3751625))

(declare-fun m!4242439 () Bool)

(assert (=> d!1094295 m!4242439))

(declare-fun m!4242441 () Bool)

(assert (=> d!1094295 m!4242441))

(declare-fun m!4242443 () Bool)

(assert (=> b!3751624 m!4242443))

(declare-fun m!4242445 () Bool)

(assert (=> b!3751624 m!4242445))

(assert (=> b!3751624 m!4242443))

(assert (=> b!3751624 m!4242445))

(declare-fun m!4242447 () Bool)

(assert (=> b!3751624 m!4242447))

(assert (=> b!3751509 d!1094295))

(declare-fun d!1094297 () Bool)

(assert (=> d!1094297 (= (list!14740 (xs!15435 (left!30971 t!3709))) (innerList!12293 (xs!15435 (left!30971 t!3709))))))

(assert (=> b!3751479 d!1094297))

(declare-fun d!1094299 () Bool)

(declare-fun res!1520417 () Bool)

(declare-fun e!2320628 () Bool)

(assert (=> d!1094299 (=> res!1520417 e!2320628)))

(assert (=> d!1094299 (= res!1520417 ((_ is Nil!40007) (++!9901 (list!14738 (left!30971 t!3709)) (list!14738 (right!31301 t!3709)))))))

(assert (=> d!1094299 (= (forall!8227 (++!9901 (list!14738 (left!30971 t!3709)) (list!14738 (right!31301 t!3709))) p!1451) e!2320628)))

(declare-fun b!3751630 () Bool)

(declare-fun e!2320629 () Bool)

(assert (=> b!3751630 (= e!2320628 e!2320629)))

(declare-fun res!1520418 () Bool)

(assert (=> b!3751630 (=> (not res!1520418) (not e!2320629))))

(assert (=> b!3751630 (= res!1520418 (dynLambda!17300 p!1451 (h!45427 (++!9901 (list!14738 (left!30971 t!3709)) (list!14738 (right!31301 t!3709))))))))

(declare-fun b!3751631 () Bool)

(assert (=> b!3751631 (= e!2320629 (forall!8227 (t!303124 (++!9901 (list!14738 (left!30971 t!3709)) (list!14738 (right!31301 t!3709)))) p!1451))))

(assert (= (and d!1094299 (not res!1520417)) b!3751630))

(assert (= (and b!3751630 res!1520418) b!3751631))

(declare-fun b_lambda!109993 () Bool)

(assert (=> (not b_lambda!109993) (not b!3751630)))

(declare-fun t!303132 () Bool)

(declare-fun tb!214651 () Bool)

(assert (=> (and start!352280 (= p!1451 p!1451) t!303132) tb!214651))

(declare-fun result!262132 () Bool)

(assert (=> tb!214651 (= result!262132 true)))

(assert (=> b!3751630 t!303132))

(declare-fun b_and!278809 () Bool)

(assert (= b_and!278807 (and (=> t!303132 result!262132) b_and!278809)))

(declare-fun m!4242449 () Bool)

(assert (=> b!3751630 m!4242449))

(declare-fun m!4242451 () Bool)

(assert (=> b!3751631 m!4242451))

(assert (=> d!1094223 d!1094299))

(declare-fun d!1094301 () Bool)

(declare-fun e!2320632 () Bool)

(assert (=> d!1094301 e!2320632))

(declare-fun res!1520423 () Bool)

(assert (=> d!1094301 (=> (not res!1520423) (not e!2320632))))

(declare-fun lt!1299889 () List!40131)

(assert (=> d!1094301 (= res!1520423 (= (content!5865 lt!1299889) ((_ map or) (content!5865 (list!14738 (left!30971 t!3709))) (content!5865 (list!14738 (right!31301 t!3709))))))))

(declare-fun e!2320633 () List!40131)

(assert (=> d!1094301 (= lt!1299889 e!2320633)))

(declare-fun c!649321 () Bool)

(assert (=> d!1094301 (= c!649321 ((_ is Nil!40007) (list!14738 (left!30971 t!3709))))))

(assert (=> d!1094301 (= (++!9901 (list!14738 (left!30971 t!3709)) (list!14738 (right!31301 t!3709))) lt!1299889)))

(declare-fun b!3751636 () Bool)

(assert (=> b!3751636 (= e!2320633 (list!14738 (right!31301 t!3709)))))

(declare-fun b!3751638 () Bool)

(declare-fun res!1520424 () Bool)

(assert (=> b!3751638 (=> (not res!1520424) (not e!2320632))))

(assert (=> b!3751638 (= res!1520424 (= (size!30099 lt!1299889) (+ (size!30099 (list!14738 (left!30971 t!3709))) (size!30099 (list!14738 (right!31301 t!3709))))))))

(declare-fun b!3751637 () Bool)

(assert (=> b!3751637 (= e!2320633 (Cons!40007 (h!45427 (list!14738 (left!30971 t!3709))) (++!9901 (t!303124 (list!14738 (left!30971 t!3709))) (list!14738 (right!31301 t!3709)))))))

(declare-fun b!3751639 () Bool)

(assert (=> b!3751639 (= e!2320632 (or (not (= (list!14738 (right!31301 t!3709)) Nil!40007)) (= lt!1299889 (list!14738 (left!30971 t!3709)))))))

(assert (= (and d!1094301 c!649321) b!3751636))

(assert (= (and d!1094301 (not c!649321)) b!3751637))

(assert (= (and d!1094301 res!1520423) b!3751638))

(assert (= (and b!3751638 res!1520424) b!3751639))

(declare-fun m!4242453 () Bool)

(assert (=> d!1094301 m!4242453))

(assert (=> d!1094301 m!4242239))

(declare-fun m!4242455 () Bool)

(assert (=> d!1094301 m!4242455))

(assert (=> d!1094301 m!4242241))

(declare-fun m!4242457 () Bool)

(assert (=> d!1094301 m!4242457))

(declare-fun m!4242459 () Bool)

(assert (=> b!3751638 m!4242459))

(assert (=> b!3751638 m!4242239))

(declare-fun m!4242461 () Bool)

(assert (=> b!3751638 m!4242461))

(assert (=> b!3751638 m!4242241))

(declare-fun m!4242463 () Bool)

(assert (=> b!3751638 m!4242463))

(assert (=> b!3751637 m!4242241))

(declare-fun m!4242465 () Bool)

(assert (=> b!3751637 m!4242465))

(assert (=> d!1094223 d!1094301))

(declare-fun d!1094303 () Bool)

(declare-fun res!1520425 () Bool)

(declare-fun e!2320634 () Bool)

(assert (=> d!1094303 (=> res!1520425 e!2320634)))

(assert (=> d!1094303 (= res!1520425 ((_ is Nil!40007) (list!14738 (left!30971 t!3709))))))

(assert (=> d!1094303 (= (forall!8227 (list!14738 (left!30971 t!3709)) p!1451) e!2320634)))

(declare-fun b!3751640 () Bool)

(declare-fun e!2320635 () Bool)

(assert (=> b!3751640 (= e!2320634 e!2320635)))

(declare-fun res!1520426 () Bool)

(assert (=> b!3751640 (=> (not res!1520426) (not e!2320635))))

(assert (=> b!3751640 (= res!1520426 (dynLambda!17300 p!1451 (h!45427 (list!14738 (left!30971 t!3709)))))))

(declare-fun b!3751641 () Bool)

(assert (=> b!3751641 (= e!2320635 (forall!8227 (t!303124 (list!14738 (left!30971 t!3709))) p!1451))))

(assert (= (and d!1094303 (not res!1520425)) b!3751640))

(assert (= (and b!3751640 res!1520426) b!3751641))

(declare-fun b_lambda!109995 () Bool)

(assert (=> (not b_lambda!109995) (not b!3751640)))

(declare-fun t!303134 () Bool)

(declare-fun tb!214653 () Bool)

(assert (=> (and start!352280 (= p!1451 p!1451) t!303134) tb!214653))

(declare-fun result!262134 () Bool)

(assert (=> tb!214653 (= result!262134 true)))

(assert (=> b!3751640 t!303134))

(declare-fun b_and!278811 () Bool)

(assert (= b_and!278809 (and (=> t!303134 result!262134) b_and!278811)))

(declare-fun m!4242467 () Bool)

(assert (=> b!3751640 m!4242467))

(declare-fun m!4242469 () Bool)

(assert (=> b!3751641 m!4242469))

(assert (=> d!1094223 d!1094303))

(declare-fun d!1094305 () Bool)

(declare-fun e!2320644 () Bool)

(assert (=> d!1094305 (= (forall!8227 (++!9901 (list!14738 (left!30971 t!3709)) (list!14738 (right!31301 t!3709))) p!1451) e!2320644)))

(declare-fun res!1520431 () Bool)

(assert (=> d!1094305 (=> (not res!1520431) (not e!2320644))))

(assert (=> d!1094305 (= res!1520431 (forall!8227 (list!14738 (left!30971 t!3709)) p!1451))))

(assert (=> d!1094305 true))

(declare-fun _$79!144 () Unit!57734)

(assert (=> d!1094305 (= (choose!22254 (list!14738 (left!30971 t!3709)) (list!14738 (right!31301 t!3709)) p!1451) _$79!144)))

(declare-fun b!3751656 () Bool)

(assert (=> b!3751656 (= e!2320644 (forall!8227 (list!14738 (right!31301 t!3709)) p!1451))))

(assert (= (and d!1094305 res!1520431) b!3751656))

(assert (=> d!1094305 m!4242239))

(assert (=> d!1094305 m!4242241))

(assert (=> d!1094305 m!4242255))

(assert (=> d!1094305 m!4242255))

(assert (=> d!1094305 m!4242257))

(assert (=> d!1094305 m!4242239))

(assert (=> d!1094305 m!4242259))

(assert (=> b!3751656 m!4242241))

(assert (=> b!3751656 m!4242263))

(assert (=> d!1094223 d!1094305))

(declare-fun d!1094313 () Bool)

(assert (=> d!1094313 (= (list!14740 (xs!15435 (right!31301 t!3709))) (innerList!12293 (xs!15435 (right!31301 t!3709))))))

(assert (=> b!3751483 d!1094313))

(declare-fun d!1094315 () Bool)

(declare-fun e!2320649 () Bool)

(assert (=> d!1094315 e!2320649))

(declare-fun res!1520436 () Bool)

(assert (=> d!1094315 (=> (not res!1520436) (not e!2320649))))

(declare-fun lt!1299891 () List!40131)

(assert (=> d!1094315 (= res!1520436 (= (content!5865 lt!1299891) ((_ map or) (content!5865 (list!14738 (left!30971 (left!30971 t!3709)))) (content!5865 (list!14738 (right!31301 (left!30971 t!3709)))))))))

(declare-fun e!2320650 () List!40131)

(assert (=> d!1094315 (= lt!1299891 e!2320650)))

(declare-fun c!649327 () Bool)

(assert (=> d!1094315 (= c!649327 ((_ is Nil!40007) (list!14738 (left!30971 (left!30971 t!3709)))))))

(assert (=> d!1094315 (= (++!9901 (list!14738 (left!30971 (left!30971 t!3709))) (list!14738 (right!31301 (left!30971 t!3709)))) lt!1299891)))

(declare-fun b!3751661 () Bool)

(assert (=> b!3751661 (= e!2320650 (list!14738 (right!31301 (left!30971 t!3709))))))

(declare-fun b!3751663 () Bool)

(declare-fun res!1520437 () Bool)

(assert (=> b!3751663 (=> (not res!1520437) (not e!2320649))))

(assert (=> b!3751663 (= res!1520437 (= (size!30099 lt!1299891) (+ (size!30099 (list!14738 (left!30971 (left!30971 t!3709)))) (size!30099 (list!14738 (right!31301 (left!30971 t!3709)))))))))

(declare-fun b!3751662 () Bool)

(assert (=> b!3751662 (= e!2320650 (Cons!40007 (h!45427 (list!14738 (left!30971 (left!30971 t!3709)))) (++!9901 (t!303124 (list!14738 (left!30971 (left!30971 t!3709)))) (list!14738 (right!31301 (left!30971 t!3709))))))))

(declare-fun b!3751664 () Bool)

(assert (=> b!3751664 (= e!2320649 (or (not (= (list!14738 (right!31301 (left!30971 t!3709))) Nil!40007)) (= lt!1299891 (list!14738 (left!30971 (left!30971 t!3709))))))))

(assert (= (and d!1094315 c!649327) b!3751661))

(assert (= (and d!1094315 (not c!649327)) b!3751662))

(assert (= (and d!1094315 res!1520436) b!3751663))

(assert (= (and b!3751663 res!1520437) b!3751664))

(declare-fun m!4242501 () Bool)

(assert (=> d!1094315 m!4242501))

(assert (=> d!1094315 m!4242283))

(declare-fun m!4242503 () Bool)

(assert (=> d!1094315 m!4242503))

(assert (=> d!1094315 m!4242285))

(declare-fun m!4242505 () Bool)

(assert (=> d!1094315 m!4242505))

(declare-fun m!4242507 () Bool)

(assert (=> b!3751663 m!4242507))

(assert (=> b!3751663 m!4242283))

(declare-fun m!4242509 () Bool)

(assert (=> b!3751663 m!4242509))

(assert (=> b!3751663 m!4242285))

(declare-fun m!4242511 () Bool)

(assert (=> b!3751663 m!4242511))

(assert (=> b!3751662 m!4242285))

(declare-fun m!4242513 () Bool)

(assert (=> b!3751662 m!4242513))

(assert (=> b!3751480 d!1094315))

(declare-fun b!3751665 () Bool)

(declare-fun e!2320651 () List!40131)

(assert (=> b!3751665 (= e!2320651 Nil!40007)))

(declare-fun d!1094317 () Bool)

(declare-fun c!649328 () Bool)

(assert (=> d!1094317 (= c!649328 ((_ is Empty!12233) (left!30971 (left!30971 t!3709))))))

(assert (=> d!1094317 (= (list!14738 (left!30971 (left!30971 t!3709))) e!2320651)))

(declare-fun b!3751666 () Bool)

(declare-fun e!2320652 () List!40131)

(assert (=> b!3751666 (= e!2320651 e!2320652)))

(declare-fun c!649329 () Bool)

(assert (=> b!3751666 (= c!649329 ((_ is Leaf!18980) (left!30971 (left!30971 t!3709))))))

(declare-fun b!3751667 () Bool)

(assert (=> b!3751667 (= e!2320652 (list!14740 (xs!15435 (left!30971 (left!30971 t!3709)))))))

(declare-fun b!3751668 () Bool)

(assert (=> b!3751668 (= e!2320652 (++!9901 (list!14738 (left!30971 (left!30971 (left!30971 t!3709)))) (list!14738 (right!31301 (left!30971 (left!30971 t!3709))))))))

(assert (= (and d!1094317 c!649328) b!3751665))

(assert (= (and d!1094317 (not c!649328)) b!3751666))

(assert (= (and b!3751666 c!649329) b!3751667))

(assert (= (and b!3751666 (not c!649329)) b!3751668))

(declare-fun m!4242515 () Bool)

(assert (=> b!3751667 m!4242515))

(declare-fun m!4242517 () Bool)

(assert (=> b!3751668 m!4242517))

(declare-fun m!4242519 () Bool)

(assert (=> b!3751668 m!4242519))

(assert (=> b!3751668 m!4242517))

(assert (=> b!3751668 m!4242519))

(declare-fun m!4242521 () Bool)

(assert (=> b!3751668 m!4242521))

(assert (=> b!3751480 d!1094317))

(declare-fun b!3751671 () Bool)

(declare-fun e!2320655 () List!40131)

(assert (=> b!3751671 (= e!2320655 Nil!40007)))

(declare-fun d!1094319 () Bool)

(declare-fun c!649330 () Bool)

(assert (=> d!1094319 (= c!649330 ((_ is Empty!12233) (right!31301 (left!30971 t!3709))))))

(assert (=> d!1094319 (= (list!14738 (right!31301 (left!30971 t!3709))) e!2320655)))

(declare-fun b!3751672 () Bool)

(declare-fun e!2320656 () List!40131)

(assert (=> b!3751672 (= e!2320655 e!2320656)))

(declare-fun c!649331 () Bool)

(assert (=> b!3751672 (= c!649331 ((_ is Leaf!18980) (right!31301 (left!30971 t!3709))))))

(declare-fun b!3751673 () Bool)

(assert (=> b!3751673 (= e!2320656 (list!14740 (xs!15435 (right!31301 (left!30971 t!3709)))))))

(declare-fun b!3751674 () Bool)

(assert (=> b!3751674 (= e!2320656 (++!9901 (list!14738 (left!30971 (right!31301 (left!30971 t!3709)))) (list!14738 (right!31301 (right!31301 (left!30971 t!3709))))))))

(assert (= (and d!1094319 c!649330) b!3751671))

(assert (= (and d!1094319 (not c!649330)) b!3751672))

(assert (= (and b!3751672 c!649331) b!3751673))

(assert (= (and b!3751672 (not c!649331)) b!3751674))

(declare-fun m!4242527 () Bool)

(assert (=> b!3751673 m!4242527))

(declare-fun m!4242529 () Bool)

(assert (=> b!3751674 m!4242529))

(declare-fun m!4242531 () Bool)

(assert (=> b!3751674 m!4242531))

(assert (=> b!3751674 m!4242529))

(assert (=> b!3751674 m!4242531))

(declare-fun m!4242533 () Bool)

(assert (=> b!3751674 m!4242533))

(assert (=> b!3751480 d!1094319))

(declare-fun d!1094323 () Bool)

(declare-fun res!1520442 () Bool)

(declare-fun e!2320659 () Bool)

(assert (=> d!1094323 (=> (not res!1520442) (not e!2320659))))

(assert (=> d!1094323 (= res!1520442 (<= (size!30099 (list!14740 (xs!15435 (right!31301 t!3709)))) 512))))

(assert (=> d!1094323 (= (inv!53558 (right!31301 t!3709)) e!2320659)))

(declare-fun b!3751679 () Bool)

(declare-fun res!1520443 () Bool)

(assert (=> b!3751679 (=> (not res!1520443) (not e!2320659))))

(assert (=> b!3751679 (= res!1520443 (= (csize!24697 (right!31301 t!3709)) (size!30099 (list!14740 (xs!15435 (right!31301 t!3709))))))))

(declare-fun b!3751680 () Bool)

(assert (=> b!3751680 (= e!2320659 (and (> (csize!24697 (right!31301 t!3709)) 0) (<= (csize!24697 (right!31301 t!3709)) 512)))))

(assert (= (and d!1094323 res!1520442) b!3751679))

(assert (= (and b!3751679 res!1520443) b!3751680))

(assert (=> d!1094323 m!4242289))

(assert (=> d!1094323 m!4242289))

(declare-fun m!4242547 () Bool)

(assert (=> d!1094323 m!4242547))

(assert (=> b!3751679 m!4242289))

(assert (=> b!3751679 m!4242289))

(assert (=> b!3751679 m!4242547))

(assert (=> b!3751511 d!1094323))

(declare-fun d!1094327 () Bool)

(declare-fun lt!1299895 () Int)

(assert (=> d!1094327 (>= lt!1299895 0)))

(declare-fun e!2320666 () Int)

(assert (=> d!1094327 (= lt!1299895 e!2320666)))

(declare-fun c!649335 () Bool)

(assert (=> d!1094327 (= c!649335 ((_ is Nil!40007) (innerList!12293 (xs!15435 t!3709))))))

(assert (=> d!1094327 (= (size!30099 (innerList!12293 (xs!15435 t!3709))) lt!1299895)))

(declare-fun b!3751689 () Bool)

(assert (=> b!3751689 (= e!2320666 0)))

(declare-fun b!3751690 () Bool)

(assert (=> b!3751690 (= e!2320666 (+ 1 (size!30099 (t!303124 (innerList!12293 (xs!15435 t!3709))))))))

(assert (= (and d!1094327 c!649335) b!3751689))

(assert (= (and d!1094327 (not c!649335)) b!3751690))

(declare-fun m!4242555 () Bool)

(assert (=> b!3751690 m!4242555))

(assert (=> d!1094255 d!1094327))

(declare-fun d!1094331 () Bool)

(declare-fun res!1520449 () Bool)

(declare-fun e!2320668 () Bool)

(assert (=> d!1094331 (=> (not res!1520449) (not e!2320668))))

(assert (=> d!1094331 (= res!1520449 (= (csize!24696 t!3709) (+ (size!30101 (left!30971 t!3709)) (size!30101 (right!31301 t!3709)))))))

(assert (=> d!1094331 (= (inv!53556 t!3709) e!2320668)))

(declare-fun b!3751692 () Bool)

(declare-fun res!1520450 () Bool)

(assert (=> b!3751692 (=> (not res!1520450) (not e!2320668))))

(assert (=> b!3751692 (= res!1520450 (and (not (= (left!30971 t!3709) Empty!12233)) (not (= (right!31301 t!3709) Empty!12233))))))

(declare-fun b!3751693 () Bool)

(declare-fun res!1520451 () Bool)

(assert (=> b!3751693 (=> (not res!1520451) (not e!2320668))))

(assert (=> b!3751693 (= res!1520451 (= (cheight!12444 t!3709) (+ (max!0 (height!1742 (left!30971 t!3709)) (height!1742 (right!31301 t!3709))) 1)))))

(declare-fun b!3751694 () Bool)

(assert (=> b!3751694 (= e!2320668 (<= 0 (cheight!12444 t!3709)))))

(assert (= (and d!1094331 res!1520449) b!3751692))

(assert (= (and b!3751692 res!1520450) b!3751693))

(assert (= (and b!3751693 res!1520451) b!3751694))

(declare-fun m!4242557 () Bool)

(assert (=> d!1094331 m!4242557))

(declare-fun m!4242559 () Bool)

(assert (=> d!1094331 m!4242559))

(assert (=> b!3751693 m!4242235))

(declare-fun m!4242561 () Bool)

(assert (=> b!3751693 m!4242561))

(assert (=> b!3751693 m!4242235))

(assert (=> b!3751693 m!4242561))

(declare-fun m!4242563 () Bool)

(assert (=> b!3751693 m!4242563))

(assert (=> b!3751512 d!1094331))

(declare-fun tp!1145647 () Bool)

(declare-fun tp!1145645 () Bool)

(declare-fun b!3751697 () Bool)

(declare-fun e!2320672 () Bool)

(assert (=> b!3751697 (= e!2320672 (and (inv!53554 (left!30971 (left!30971 (right!31301 t!3709)))) tp!1145647 (inv!53554 (right!31301 (left!30971 (right!31301 t!3709)))) tp!1145645))))

(declare-fun b!3751699 () Bool)

(declare-fun e!2320671 () Bool)

(declare-fun tp!1145646 () Bool)

(assert (=> b!3751699 (= e!2320671 tp!1145646)))

(declare-fun b!3751698 () Bool)

(assert (=> b!3751698 (= e!2320672 (and (inv!53555 (xs!15435 (left!30971 (right!31301 t!3709)))) e!2320671))))

(assert (=> b!3751550 (= tp!1145644 (and (inv!53554 (left!30971 (right!31301 t!3709))) e!2320672))))

(assert (= (and b!3751550 ((_ is Node!12233) (left!30971 (right!31301 t!3709)))) b!3751697))

(assert (= b!3751698 b!3751699))

(assert (= (and b!3751550 ((_ is Leaf!18980) (left!30971 (right!31301 t!3709)))) b!3751698))

(declare-fun m!4242569 () Bool)

(assert (=> b!3751697 m!4242569))

(declare-fun m!4242571 () Bool)

(assert (=> b!3751697 m!4242571))

(declare-fun m!4242573 () Bool)

(assert (=> b!3751698 m!4242573))

(assert (=> b!3751550 m!4242343))

(declare-fun tp!1145650 () Bool)

(declare-fun e!2320674 () Bool)

(declare-fun tp!1145648 () Bool)

(declare-fun b!3751700 () Bool)

(assert (=> b!3751700 (= e!2320674 (and (inv!53554 (left!30971 (right!31301 (right!31301 t!3709)))) tp!1145650 (inv!53554 (right!31301 (right!31301 (right!31301 t!3709)))) tp!1145648))))

(declare-fun b!3751702 () Bool)

(declare-fun e!2320673 () Bool)

(declare-fun tp!1145649 () Bool)

(assert (=> b!3751702 (= e!2320673 tp!1145649)))

(declare-fun b!3751701 () Bool)

(assert (=> b!3751701 (= e!2320674 (and (inv!53555 (xs!15435 (right!31301 (right!31301 t!3709)))) e!2320673))))

(assert (=> b!3751550 (= tp!1145642 (and (inv!53554 (right!31301 (right!31301 t!3709))) e!2320674))))

(assert (= (and b!3751550 ((_ is Node!12233) (right!31301 (right!31301 t!3709)))) b!3751700))

(assert (= b!3751701 b!3751702))

(assert (= (and b!3751550 ((_ is Leaf!18980) (right!31301 (right!31301 t!3709)))) b!3751701))

(declare-fun m!4242575 () Bool)

(assert (=> b!3751700 m!4242575))

(declare-fun m!4242577 () Bool)

(assert (=> b!3751700 m!4242577))

(declare-fun m!4242579 () Bool)

(assert (=> b!3751701 m!4242579))

(assert (=> b!3751550 m!4242345))

(declare-fun b!3751703 () Bool)

(declare-fun tp!1145653 () Bool)

(declare-fun e!2320676 () Bool)

(declare-fun tp!1145651 () Bool)

(assert (=> b!3751703 (= e!2320676 (and (inv!53554 (left!30971 (left!30971 (left!30971 t!3709)))) tp!1145653 (inv!53554 (right!31301 (left!30971 (left!30971 t!3709)))) tp!1145651))))

(declare-fun b!3751705 () Bool)

(declare-fun e!2320675 () Bool)

(declare-fun tp!1145652 () Bool)

(assert (=> b!3751705 (= e!2320675 tp!1145652)))

(declare-fun b!3751704 () Bool)

(assert (=> b!3751704 (= e!2320676 (and (inv!53555 (xs!15435 (left!30971 (left!30971 t!3709)))) e!2320675))))

(assert (=> b!3751547 (= tp!1145641 (and (inv!53554 (left!30971 (left!30971 t!3709))) e!2320676))))

(assert (= (and b!3751547 ((_ is Node!12233) (left!30971 (left!30971 t!3709)))) b!3751703))

(assert (= b!3751704 b!3751705))

(assert (= (and b!3751547 ((_ is Leaf!18980) (left!30971 (left!30971 t!3709)))) b!3751704))

(declare-fun m!4242581 () Bool)

(assert (=> b!3751703 m!4242581))

(declare-fun m!4242583 () Bool)

(assert (=> b!3751703 m!4242583))

(declare-fun m!4242585 () Bool)

(assert (=> b!3751704 m!4242585))

(assert (=> b!3751547 m!4242337))

(declare-fun b!3751706 () Bool)

(declare-fun tp!1145654 () Bool)

(declare-fun e!2320678 () Bool)

(declare-fun tp!1145656 () Bool)

(assert (=> b!3751706 (= e!2320678 (and (inv!53554 (left!30971 (right!31301 (left!30971 t!3709)))) tp!1145656 (inv!53554 (right!31301 (right!31301 (left!30971 t!3709)))) tp!1145654))))

(declare-fun b!3751708 () Bool)

(declare-fun e!2320677 () Bool)

(declare-fun tp!1145655 () Bool)

(assert (=> b!3751708 (= e!2320677 tp!1145655)))

(declare-fun b!3751707 () Bool)

(assert (=> b!3751707 (= e!2320678 (and (inv!53555 (xs!15435 (right!31301 (left!30971 t!3709)))) e!2320677))))

(assert (=> b!3751547 (= tp!1145639 (and (inv!53554 (right!31301 (left!30971 t!3709))) e!2320678))))

(assert (= (and b!3751547 ((_ is Node!12233) (right!31301 (left!30971 t!3709)))) b!3751706))

(assert (= b!3751707 b!3751708))

(assert (= (and b!3751547 ((_ is Leaf!18980) (right!31301 (left!30971 t!3709)))) b!3751707))

(declare-fun m!4242587 () Bool)

(assert (=> b!3751706 m!4242587))

(declare-fun m!4242589 () Bool)

(assert (=> b!3751706 m!4242589))

(declare-fun m!4242591 () Bool)

(assert (=> b!3751707 m!4242591))

(assert (=> b!3751547 m!4242339))

(declare-fun b!3751713 () Bool)

(declare-fun e!2320681 () Bool)

(declare-fun tp!1145657 () Bool)

(assert (=> b!3751713 (= e!2320681 (and tp_is_empty!19047 tp!1145657))))

(assert (=> b!3751552 (= tp!1145643 e!2320681)))

(assert (= (and b!3751552 ((_ is Cons!40007) (innerList!12293 (xs!15435 (right!31301 t!3709))))) b!3751713))

(declare-fun b!3751714 () Bool)

(declare-fun e!2320682 () Bool)

(declare-fun tp!1145658 () Bool)

(assert (=> b!3751714 (= e!2320682 (and tp_is_empty!19047 tp!1145658))))

(assert (=> b!3751549 (= tp!1145640 e!2320682)))

(assert (= (and b!3751549 ((_ is Cons!40007) (innerList!12293 (xs!15435 (left!30971 t!3709))))) b!3751714))

(declare-fun b!3751715 () Bool)

(declare-fun e!2320683 () Bool)

(declare-fun tp!1145659 () Bool)

(assert (=> b!3751715 (= e!2320683 (and tp_is_empty!19047 tp!1145659))))

(assert (=> b!3751530 (= tp!1145626 e!2320683)))

(assert (= (and b!3751530 ((_ is Cons!40007) (t!303124 (innerList!12293 (xs!15435 t!3709))))) b!3751715))

(declare-fun b_lambda!110003 () Bool)

(assert (= b_lambda!109993 (or (and start!352280 b_free!100415) b_lambda!110003)))

(declare-fun b_lambda!110005 () Bool)

(assert (= b_lambda!109995 (or (and start!352280 b_free!100415) b_lambda!110005)))

(declare-fun b_lambda!110007 () Bool)

(assert (= b_lambda!109991 (or (and start!352280 b_free!100415) b_lambda!110007)))

(check-sat (not b!3751697) (not b!3751679) (not b_lambda!110003) (not b!3751556) (not b!3751606) (not b_lambda!110005) (not b!3751599) (not b!3751595) (not b!3751555) (not d!1094285) (not b!3751700) (not b!3751611) (not b!3751706) (not b!3751713) (not b!3751693) (not b!3751702) (not b!3751708) (not b!3751704) (not b!3751638) (not b!3751656) (not b!3751703) (not b!3751631) (not d!1094295) (not b!3751572) (not b!3751608) (not b!3751609) (not d!1094287) (not b!3751673) (not b!3751707) (not b!3751558) tp_is_empty!19047 (not b!3751674) (not b_next!101119) (not b!3751714) (not d!1094305) (not d!1094331) (not b!3751705) (not b!3751589) (not d!1094267) (not b!3751612) (not d!1094323) (not b!3751715) (not b!3751641) (not d!1094301) (not b!3751550) (not b!3751590) (not d!1094315) (not b_lambda!110007) (not b!3751699) (not d!1094265) (not b!3751701) (not b!3751622) (not b!3751662) (not b!3751663) (not b!3751594) b_and!278811 (not b!3751690) (not b!3751637) (not b!3751667) (not b!3751624) (not b!3751553) (not b!3751598) (not d!1094261) (not b!3751566) (not b!3751547) (not d!1094263) (not b!3751668) (not b!3751698))
(check-sat b_and!278811 (not b_next!101119))
(get-model)

(declare-fun d!1094361 () Bool)

(assert (=> d!1094361 (= (list!14740 (xs!15435 (left!30971 (right!31301 t!3709)))) (innerList!12293 (xs!15435 (left!30971 (right!31301 t!3709)))))))

(assert (=> b!3751594 d!1094361))

(declare-fun d!1094363 () Bool)

(declare-fun e!2320713 () Bool)

(assert (=> d!1094363 e!2320713))

(declare-fun res!1520474 () Bool)

(assert (=> d!1094363 (=> (not res!1520474) (not e!2320713))))

(declare-fun lt!1299900 () List!40131)

(assert (=> d!1094363 (= res!1520474 (= (content!5865 lt!1299900) ((_ map or) (content!5865 (list!14738 (left!30971 (right!31301 (right!31301 t!3709))))) (content!5865 (list!14738 (right!31301 (right!31301 (right!31301 t!3709))))))))))

(declare-fun e!2320714 () List!40131)

(assert (=> d!1094363 (= lt!1299900 e!2320714)))

(declare-fun c!649346 () Bool)

(assert (=> d!1094363 (= c!649346 ((_ is Nil!40007) (list!14738 (left!30971 (right!31301 (right!31301 t!3709))))))))

(assert (=> d!1094363 (= (++!9901 (list!14738 (left!30971 (right!31301 (right!31301 t!3709)))) (list!14738 (right!31301 (right!31301 (right!31301 t!3709))))) lt!1299900)))

(declare-fun b!3751767 () Bool)

(assert (=> b!3751767 (= e!2320714 (list!14738 (right!31301 (right!31301 (right!31301 t!3709)))))))

(declare-fun b!3751769 () Bool)

(declare-fun res!1520475 () Bool)

(assert (=> b!3751769 (=> (not res!1520475) (not e!2320713))))

(assert (=> b!3751769 (= res!1520475 (= (size!30099 lt!1299900) (+ (size!30099 (list!14738 (left!30971 (right!31301 (right!31301 t!3709))))) (size!30099 (list!14738 (right!31301 (right!31301 (right!31301 t!3709))))))))))

(declare-fun b!3751768 () Bool)

(assert (=> b!3751768 (= e!2320714 (Cons!40007 (h!45427 (list!14738 (left!30971 (right!31301 (right!31301 t!3709))))) (++!9901 (t!303124 (list!14738 (left!30971 (right!31301 (right!31301 t!3709))))) (list!14738 (right!31301 (right!31301 (right!31301 t!3709)))))))))

(declare-fun b!3751770 () Bool)

(assert (=> b!3751770 (= e!2320713 (or (not (= (list!14738 (right!31301 (right!31301 (right!31301 t!3709)))) Nil!40007)) (= lt!1299900 (list!14738 (left!30971 (right!31301 (right!31301 t!3709)))))))))

(assert (= (and d!1094363 c!649346) b!3751767))

(assert (= (and d!1094363 (not c!649346)) b!3751768))

(assert (= (and d!1094363 res!1520474) b!3751769))

(assert (= (and b!3751769 res!1520475) b!3751770))

(declare-fun m!4242685 () Bool)

(assert (=> d!1094363 m!4242685))

(assert (=> d!1094363 m!4242403))

(declare-fun m!4242687 () Bool)

(assert (=> d!1094363 m!4242687))

(assert (=> d!1094363 m!4242405))

(declare-fun m!4242689 () Bool)

(assert (=> d!1094363 m!4242689))

(declare-fun m!4242691 () Bool)

(assert (=> b!3751769 m!4242691))

(assert (=> b!3751769 m!4242403))

(declare-fun m!4242693 () Bool)

(assert (=> b!3751769 m!4242693))

(assert (=> b!3751769 m!4242405))

(declare-fun m!4242695 () Bool)

(assert (=> b!3751769 m!4242695))

(assert (=> b!3751768 m!4242405))

(declare-fun m!4242697 () Bool)

(assert (=> b!3751768 m!4242697))

(assert (=> b!3751599 d!1094363))

(declare-fun b!3751771 () Bool)

(declare-fun e!2320715 () List!40131)

(assert (=> b!3751771 (= e!2320715 Nil!40007)))

(declare-fun d!1094365 () Bool)

(declare-fun c!649347 () Bool)

(assert (=> d!1094365 (= c!649347 ((_ is Empty!12233) (left!30971 (right!31301 (right!31301 t!3709)))))))

(assert (=> d!1094365 (= (list!14738 (left!30971 (right!31301 (right!31301 t!3709)))) e!2320715)))

(declare-fun b!3751772 () Bool)

(declare-fun e!2320716 () List!40131)

(assert (=> b!3751772 (= e!2320715 e!2320716)))

(declare-fun c!649348 () Bool)

(assert (=> b!3751772 (= c!649348 ((_ is Leaf!18980) (left!30971 (right!31301 (right!31301 t!3709)))))))

(declare-fun b!3751773 () Bool)

(assert (=> b!3751773 (= e!2320716 (list!14740 (xs!15435 (left!30971 (right!31301 (right!31301 t!3709))))))))

(declare-fun b!3751774 () Bool)

(assert (=> b!3751774 (= e!2320716 (++!9901 (list!14738 (left!30971 (left!30971 (right!31301 (right!31301 t!3709))))) (list!14738 (right!31301 (left!30971 (right!31301 (right!31301 t!3709)))))))))

(assert (= (and d!1094365 c!649347) b!3751771))

(assert (= (and d!1094365 (not c!649347)) b!3751772))

(assert (= (and b!3751772 c!649348) b!3751773))

(assert (= (and b!3751772 (not c!649348)) b!3751774))

(declare-fun m!4242699 () Bool)

(assert (=> b!3751773 m!4242699))

(declare-fun m!4242701 () Bool)

(assert (=> b!3751774 m!4242701))

(declare-fun m!4242703 () Bool)

(assert (=> b!3751774 m!4242703))

(assert (=> b!3751774 m!4242701))

(assert (=> b!3751774 m!4242703))

(declare-fun m!4242705 () Bool)

(assert (=> b!3751774 m!4242705))

(assert (=> b!3751599 d!1094365))

(declare-fun b!3751775 () Bool)

(declare-fun e!2320717 () List!40131)

(assert (=> b!3751775 (= e!2320717 Nil!40007)))

(declare-fun d!1094367 () Bool)

(declare-fun c!649349 () Bool)

(assert (=> d!1094367 (= c!649349 ((_ is Empty!12233) (right!31301 (right!31301 (right!31301 t!3709)))))))

(assert (=> d!1094367 (= (list!14738 (right!31301 (right!31301 (right!31301 t!3709)))) e!2320717)))

(declare-fun b!3751776 () Bool)

(declare-fun e!2320718 () List!40131)

(assert (=> b!3751776 (= e!2320717 e!2320718)))

(declare-fun c!649350 () Bool)

(assert (=> b!3751776 (= c!649350 ((_ is Leaf!18980) (right!31301 (right!31301 (right!31301 t!3709)))))))

(declare-fun b!3751777 () Bool)

(assert (=> b!3751777 (= e!2320718 (list!14740 (xs!15435 (right!31301 (right!31301 (right!31301 t!3709))))))))

(declare-fun b!3751778 () Bool)

(assert (=> b!3751778 (= e!2320718 (++!9901 (list!14738 (left!30971 (right!31301 (right!31301 (right!31301 t!3709))))) (list!14738 (right!31301 (right!31301 (right!31301 (right!31301 t!3709)))))))))

(assert (= (and d!1094367 c!649349) b!3751775))

(assert (= (and d!1094367 (not c!649349)) b!3751776))

(assert (= (and b!3751776 c!649350) b!3751777))

(assert (= (and b!3751776 (not c!649350)) b!3751778))

(declare-fun m!4242707 () Bool)

(assert (=> b!3751777 m!4242707))

(declare-fun m!4242709 () Bool)

(assert (=> b!3751778 m!4242709))

(declare-fun m!4242711 () Bool)

(assert (=> b!3751778 m!4242711))

(assert (=> b!3751778 m!4242709))

(assert (=> b!3751778 m!4242711))

(declare-fun m!4242713 () Bool)

(assert (=> b!3751778 m!4242713))

(assert (=> b!3751599 d!1094367))

(declare-fun d!1094369 () Bool)

(declare-fun c!649351 () Bool)

(assert (=> d!1094369 (= c!649351 ((_ is Node!12233) (left!30971 (right!31301 (left!30971 t!3709)))))))

(declare-fun e!2320719 () Bool)

(assert (=> d!1094369 (= (inv!53554 (left!30971 (right!31301 (left!30971 t!3709)))) e!2320719)))

(declare-fun b!3751779 () Bool)

(assert (=> b!3751779 (= e!2320719 (inv!53556 (left!30971 (right!31301 (left!30971 t!3709)))))))

(declare-fun b!3751780 () Bool)

(declare-fun e!2320720 () Bool)

(assert (=> b!3751780 (= e!2320719 e!2320720)))

(declare-fun res!1520476 () Bool)

(assert (=> b!3751780 (= res!1520476 (not ((_ is Leaf!18980) (left!30971 (right!31301 (left!30971 t!3709))))))))

(assert (=> b!3751780 (=> res!1520476 e!2320720)))

(declare-fun b!3751781 () Bool)

(assert (=> b!3751781 (= e!2320720 (inv!53558 (left!30971 (right!31301 (left!30971 t!3709)))))))

(assert (= (and d!1094369 c!649351) b!3751779))

(assert (= (and d!1094369 (not c!649351)) b!3751780))

(assert (= (and b!3751780 (not res!1520476)) b!3751781))

(declare-fun m!4242715 () Bool)

(assert (=> b!3751779 m!4242715))

(declare-fun m!4242717 () Bool)

(assert (=> b!3751781 m!4242717))

(assert (=> b!3751706 d!1094369))

(declare-fun d!1094371 () Bool)

(declare-fun c!649352 () Bool)

(assert (=> d!1094371 (= c!649352 ((_ is Node!12233) (right!31301 (right!31301 (left!30971 t!3709)))))))

(declare-fun e!2320721 () Bool)

(assert (=> d!1094371 (= (inv!53554 (right!31301 (right!31301 (left!30971 t!3709)))) e!2320721)))

(declare-fun b!3751782 () Bool)

(assert (=> b!3751782 (= e!2320721 (inv!53556 (right!31301 (right!31301 (left!30971 t!3709)))))))

(declare-fun b!3751783 () Bool)

(declare-fun e!2320722 () Bool)

(assert (=> b!3751783 (= e!2320721 e!2320722)))

(declare-fun res!1520477 () Bool)

(assert (=> b!3751783 (= res!1520477 (not ((_ is Leaf!18980) (right!31301 (right!31301 (left!30971 t!3709))))))))

(assert (=> b!3751783 (=> res!1520477 e!2320722)))

(declare-fun b!3751784 () Bool)

(assert (=> b!3751784 (= e!2320722 (inv!53558 (right!31301 (right!31301 (left!30971 t!3709)))))))

(assert (= (and d!1094371 c!649352) b!3751782))

(assert (= (and d!1094371 (not c!649352)) b!3751783))

(assert (= (and b!3751783 (not res!1520477)) b!3751784))

(declare-fun m!4242719 () Bool)

(assert (=> b!3751782 m!4242719))

(declare-fun m!4242721 () Bool)

(assert (=> b!3751784 m!4242721))

(assert (=> b!3751706 d!1094371))

(declare-fun d!1094373 () Bool)

(declare-fun res!1520478 () Bool)

(declare-fun e!2320723 () Bool)

(assert (=> d!1094373 (=> (not res!1520478) (not e!2320723))))

(assert (=> d!1094373 (= res!1520478 (<= (size!30099 (list!14740 (xs!15435 (left!30971 (right!31301 t!3709))))) 512))))

(assert (=> d!1094373 (= (inv!53558 (left!30971 (right!31301 t!3709))) e!2320723)))

(declare-fun b!3751785 () Bool)

(declare-fun res!1520479 () Bool)

(assert (=> b!3751785 (=> (not res!1520479) (not e!2320723))))

(assert (=> b!3751785 (= res!1520479 (= (csize!24697 (left!30971 (right!31301 t!3709))) (size!30099 (list!14740 (xs!15435 (left!30971 (right!31301 t!3709)))))))))

(declare-fun b!3751786 () Bool)

(assert (=> b!3751786 (= e!2320723 (and (> (csize!24697 (left!30971 (right!31301 t!3709))) 0) (<= (csize!24697 (left!30971 (right!31301 t!3709))) 512)))))

(assert (= (and d!1094373 res!1520478) b!3751785))

(assert (= (and b!3751785 res!1520479) b!3751786))

(assert (=> d!1094373 m!4242393))

(assert (=> d!1094373 m!4242393))

(declare-fun m!4242723 () Bool)

(assert (=> d!1094373 m!4242723))

(assert (=> b!3751785 m!4242393))

(assert (=> b!3751785 m!4242393))

(assert (=> b!3751785 m!4242723))

(assert (=> b!3751555 d!1094373))

(declare-fun d!1094375 () Bool)

(declare-fun e!2320724 () Bool)

(assert (=> d!1094375 e!2320724))

(declare-fun res!1520480 () Bool)

(assert (=> d!1094375 (=> (not res!1520480) (not e!2320724))))

(declare-fun lt!1299901 () List!40131)

(assert (=> d!1094375 (= res!1520480 (= (content!5865 lt!1299901) ((_ map or) (content!5865 (t!303124 (list!14738 (left!30971 (right!31301 t!3709))))) (content!5865 (list!14738 (right!31301 (right!31301 t!3709)))))))))

(declare-fun e!2320725 () List!40131)

(assert (=> d!1094375 (= lt!1299901 e!2320725)))

(declare-fun c!649353 () Bool)

(assert (=> d!1094375 (= c!649353 ((_ is Nil!40007) (t!303124 (list!14738 (left!30971 (right!31301 t!3709))))))))

(assert (=> d!1094375 (= (++!9901 (t!303124 (list!14738 (left!30971 (right!31301 t!3709)))) (list!14738 (right!31301 (right!31301 t!3709)))) lt!1299901)))

(declare-fun b!3751787 () Bool)

(assert (=> b!3751787 (= e!2320725 (list!14738 (right!31301 (right!31301 t!3709))))))

(declare-fun b!3751789 () Bool)

(declare-fun res!1520481 () Bool)

(assert (=> b!3751789 (=> (not res!1520481) (not e!2320724))))

(assert (=> b!3751789 (= res!1520481 (= (size!30099 lt!1299901) (+ (size!30099 (t!303124 (list!14738 (left!30971 (right!31301 t!3709))))) (size!30099 (list!14738 (right!31301 (right!31301 t!3709)))))))))

(declare-fun b!3751788 () Bool)

(assert (=> b!3751788 (= e!2320725 (Cons!40007 (h!45427 (t!303124 (list!14738 (left!30971 (right!31301 t!3709))))) (++!9901 (t!303124 (t!303124 (list!14738 (left!30971 (right!31301 t!3709))))) (list!14738 (right!31301 (right!31301 t!3709))))))))

(declare-fun b!3751790 () Bool)

(assert (=> b!3751790 (= e!2320724 (or (not (= (list!14738 (right!31301 (right!31301 t!3709))) Nil!40007)) (= lt!1299901 (t!303124 (list!14738 (left!30971 (right!31301 t!3709)))))))))

(assert (= (and d!1094375 c!649353) b!3751787))

(assert (= (and d!1094375 (not c!649353)) b!3751788))

(assert (= (and d!1094375 res!1520480) b!3751789))

(assert (= (and b!3751789 res!1520481) b!3751790))

(declare-fun m!4242725 () Bool)

(assert (=> d!1094375 m!4242725))

(declare-fun m!4242727 () Bool)

(assert (=> d!1094375 m!4242727))

(assert (=> d!1094375 m!4242293))

(assert (=> d!1094375 m!4242383))

(declare-fun m!4242729 () Bool)

(assert (=> b!3751789 m!4242729))

(declare-fun m!4242731 () Bool)

(assert (=> b!3751789 m!4242731))

(assert (=> b!3751789 m!4242293))

(assert (=> b!3751789 m!4242389))

(assert (=> b!3751788 m!4242293))

(declare-fun m!4242733 () Bool)

(assert (=> b!3751788 m!4242733))

(assert (=> b!3751589 d!1094375))

(declare-fun d!1094377 () Bool)

(declare-fun lt!1299902 () Int)

(assert (=> d!1094377 (>= lt!1299902 0)))

(declare-fun e!2320726 () Int)

(assert (=> d!1094377 (= lt!1299902 e!2320726)))

(declare-fun c!649354 () Bool)

(assert (=> d!1094377 (= c!649354 ((_ is Nil!40007) lt!1299891))))

(assert (=> d!1094377 (= (size!30099 lt!1299891) lt!1299902)))

(declare-fun b!3751791 () Bool)

(assert (=> b!3751791 (= e!2320726 0)))

(declare-fun b!3751792 () Bool)

(assert (=> b!3751792 (= e!2320726 (+ 1 (size!30099 (t!303124 lt!1299891))))))

(assert (= (and d!1094377 c!649354) b!3751791))

(assert (= (and d!1094377 (not c!649354)) b!3751792))

(declare-fun m!4242735 () Bool)

(assert (=> b!3751792 m!4242735))

(assert (=> b!3751663 d!1094377))

(declare-fun d!1094379 () Bool)

(declare-fun lt!1299903 () Int)

(assert (=> d!1094379 (>= lt!1299903 0)))

(declare-fun e!2320727 () Int)

(assert (=> d!1094379 (= lt!1299903 e!2320727)))

(declare-fun c!649355 () Bool)

(assert (=> d!1094379 (= c!649355 ((_ is Nil!40007) (list!14738 (left!30971 (left!30971 t!3709)))))))

(assert (=> d!1094379 (= (size!30099 (list!14738 (left!30971 (left!30971 t!3709)))) lt!1299903)))

(declare-fun b!3751793 () Bool)

(assert (=> b!3751793 (= e!2320727 0)))

(declare-fun b!3751794 () Bool)

(assert (=> b!3751794 (= e!2320727 (+ 1 (size!30099 (t!303124 (list!14738 (left!30971 (left!30971 t!3709)))))))))

(assert (= (and d!1094379 c!649355) b!3751793))

(assert (= (and d!1094379 (not c!649355)) b!3751794))

(declare-fun m!4242737 () Bool)

(assert (=> b!3751794 m!4242737))

(assert (=> b!3751663 d!1094379))

(declare-fun d!1094381 () Bool)

(declare-fun lt!1299904 () Int)

(assert (=> d!1094381 (>= lt!1299904 0)))

(declare-fun e!2320728 () Int)

(assert (=> d!1094381 (= lt!1299904 e!2320728)))

(declare-fun c!649356 () Bool)

(assert (=> d!1094381 (= c!649356 ((_ is Nil!40007) (list!14738 (right!31301 (left!30971 t!3709)))))))

(assert (=> d!1094381 (= (size!30099 (list!14738 (right!31301 (left!30971 t!3709)))) lt!1299904)))

(declare-fun b!3751795 () Bool)

(assert (=> b!3751795 (= e!2320728 0)))

(declare-fun b!3751796 () Bool)

(assert (=> b!3751796 (= e!2320728 (+ 1 (size!30099 (t!303124 (list!14738 (right!31301 (left!30971 t!3709)))))))))

(assert (= (and d!1094381 c!649356) b!3751795))

(assert (= (and d!1094381 (not c!649356)) b!3751796))

(declare-fun m!4242739 () Bool)

(assert (=> b!3751796 m!4242739))

(assert (=> b!3751663 d!1094381))

(declare-fun d!1094383 () Bool)

(declare-fun lt!1299905 () Int)

(assert (=> d!1094383 (>= lt!1299905 0)))

(declare-fun e!2320729 () Int)

(assert (=> d!1094383 (= lt!1299905 e!2320729)))

(declare-fun c!649357 () Bool)

(assert (=> d!1094383 (= c!649357 ((_ is Nil!40007) (innerList!12293 (xs!15435 (right!31301 t!3709)))))))

(assert (=> d!1094383 (= (size!30099 (innerList!12293 (xs!15435 (right!31301 t!3709)))) lt!1299905)))

(declare-fun b!3751797 () Bool)

(assert (=> b!3751797 (= e!2320729 0)))

(declare-fun b!3751798 () Bool)

(assert (=> b!3751798 (= e!2320729 (+ 1 (size!30099 (t!303124 (innerList!12293 (xs!15435 (right!31301 t!3709)))))))))

(assert (= (and d!1094383 c!649357) b!3751797))

(assert (= (and d!1094383 (not c!649357)) b!3751798))

(declare-fun m!4242741 () Bool)

(assert (=> b!3751798 m!4242741))

(assert (=> d!1094261 d!1094383))

(declare-fun d!1094385 () Bool)

(declare-fun res!1520482 () Bool)

(declare-fun e!2320730 () Bool)

(assert (=> d!1094385 (=> res!1520482 e!2320730)))

(assert (=> d!1094385 (= res!1520482 ((_ is Nil!40007) (t!303124 (list!14738 (left!30971 t!3709)))))))

(assert (=> d!1094385 (= (forall!8227 (t!303124 (list!14738 (left!30971 t!3709))) p!1451) e!2320730)))

(declare-fun b!3751799 () Bool)

(declare-fun e!2320731 () Bool)

(assert (=> b!3751799 (= e!2320730 e!2320731)))

(declare-fun res!1520483 () Bool)

(assert (=> b!3751799 (=> (not res!1520483) (not e!2320731))))

(assert (=> b!3751799 (= res!1520483 (dynLambda!17300 p!1451 (h!45427 (t!303124 (list!14738 (left!30971 t!3709))))))))

(declare-fun b!3751800 () Bool)

(assert (=> b!3751800 (= e!2320731 (forall!8227 (t!303124 (t!303124 (list!14738 (left!30971 t!3709)))) p!1451))))

(assert (= (and d!1094385 (not res!1520482)) b!3751799))

(assert (= (and b!3751799 res!1520483) b!3751800))

(declare-fun b_lambda!110015 () Bool)

(assert (=> (not b_lambda!110015) (not b!3751799)))

(declare-fun t!303142 () Bool)

(declare-fun tb!214661 () Bool)

(assert (=> (and start!352280 (= p!1451 p!1451) t!303142) tb!214661))

(declare-fun result!262142 () Bool)

(assert (=> tb!214661 (= result!262142 true)))

(assert (=> b!3751799 t!303142))

(declare-fun b_and!278819 () Bool)

(assert (= b_and!278811 (and (=> t!303142 result!262142) b_and!278819)))

(declare-fun m!4242743 () Bool)

(assert (=> b!3751799 m!4242743))

(declare-fun m!4242745 () Bool)

(assert (=> b!3751800 m!4242745))

(assert (=> b!3751641 d!1094385))

(declare-fun d!1094387 () Bool)

(declare-fun res!1520484 () Bool)

(declare-fun e!2320732 () Bool)

(assert (=> d!1094387 (=> (not res!1520484) (not e!2320732))))

(assert (=> d!1094387 (= res!1520484 (= (csize!24696 (left!30971 (right!31301 t!3709))) (+ (size!30101 (left!30971 (left!30971 (right!31301 t!3709)))) (size!30101 (right!31301 (left!30971 (right!31301 t!3709)))))))))

(assert (=> d!1094387 (= (inv!53556 (left!30971 (right!31301 t!3709))) e!2320732)))

(declare-fun b!3751801 () Bool)

(declare-fun res!1520485 () Bool)

(assert (=> b!3751801 (=> (not res!1520485) (not e!2320732))))

(assert (=> b!3751801 (= res!1520485 (and (not (= (left!30971 (left!30971 (right!31301 t!3709))) Empty!12233)) (not (= (right!31301 (left!30971 (right!31301 t!3709))) Empty!12233))))))

(declare-fun b!3751802 () Bool)

(declare-fun res!1520486 () Bool)

(assert (=> b!3751802 (=> (not res!1520486) (not e!2320732))))

(assert (=> b!3751802 (= res!1520486 (= (cheight!12444 (left!30971 (right!31301 t!3709))) (+ (max!0 (height!1742 (left!30971 (left!30971 (right!31301 t!3709)))) (height!1742 (right!31301 (left!30971 (right!31301 t!3709))))) 1)))))

(declare-fun b!3751803 () Bool)

(assert (=> b!3751803 (= e!2320732 (<= 0 (cheight!12444 (left!30971 (right!31301 t!3709)))))))

(assert (= (and d!1094387 res!1520484) b!3751801))

(assert (= (and b!3751801 res!1520485) b!3751802))

(assert (= (and b!3751802 res!1520486) b!3751803))

(declare-fun m!4242747 () Bool)

(assert (=> d!1094387 m!4242747))

(declare-fun m!4242749 () Bool)

(assert (=> d!1094387 m!4242749))

(declare-fun m!4242751 () Bool)

(assert (=> b!3751802 m!4242751))

(declare-fun m!4242753 () Bool)

(assert (=> b!3751802 m!4242753))

(assert (=> b!3751802 m!4242751))

(assert (=> b!3751802 m!4242753))

(declare-fun m!4242755 () Bool)

(assert (=> b!3751802 m!4242755))

(assert (=> b!3751553 d!1094387))

(declare-fun d!1094389 () Bool)

(declare-fun e!2320733 () Bool)

(assert (=> d!1094389 e!2320733))

(declare-fun res!1520487 () Bool)

(assert (=> d!1094389 (=> (not res!1520487) (not e!2320733))))

(declare-fun lt!1299906 () List!40131)

(assert (=> d!1094389 (= res!1520487 (= (content!5865 lt!1299906) ((_ map or) (content!5865 (list!14738 (left!30971 (left!30971 (left!30971 t!3709))))) (content!5865 (list!14738 (right!31301 (left!30971 (left!30971 t!3709))))))))))

(declare-fun e!2320734 () List!40131)

(assert (=> d!1094389 (= lt!1299906 e!2320734)))

(declare-fun c!649358 () Bool)

(assert (=> d!1094389 (= c!649358 ((_ is Nil!40007) (list!14738 (left!30971 (left!30971 (left!30971 t!3709))))))))

(assert (=> d!1094389 (= (++!9901 (list!14738 (left!30971 (left!30971 (left!30971 t!3709)))) (list!14738 (right!31301 (left!30971 (left!30971 t!3709))))) lt!1299906)))

(declare-fun b!3751804 () Bool)

(assert (=> b!3751804 (= e!2320734 (list!14738 (right!31301 (left!30971 (left!30971 t!3709)))))))

(declare-fun b!3751806 () Bool)

(declare-fun res!1520488 () Bool)

(assert (=> b!3751806 (=> (not res!1520488) (not e!2320733))))

(assert (=> b!3751806 (= res!1520488 (= (size!30099 lt!1299906) (+ (size!30099 (list!14738 (left!30971 (left!30971 (left!30971 t!3709))))) (size!30099 (list!14738 (right!31301 (left!30971 (left!30971 t!3709))))))))))

(declare-fun b!3751805 () Bool)

(assert (=> b!3751805 (= e!2320734 (Cons!40007 (h!45427 (list!14738 (left!30971 (left!30971 (left!30971 t!3709))))) (++!9901 (t!303124 (list!14738 (left!30971 (left!30971 (left!30971 t!3709))))) (list!14738 (right!31301 (left!30971 (left!30971 t!3709)))))))))

(declare-fun b!3751807 () Bool)

(assert (=> b!3751807 (= e!2320733 (or (not (= (list!14738 (right!31301 (left!30971 (left!30971 t!3709)))) Nil!40007)) (= lt!1299906 (list!14738 (left!30971 (left!30971 (left!30971 t!3709)))))))))

(assert (= (and d!1094389 c!649358) b!3751804))

(assert (= (and d!1094389 (not c!649358)) b!3751805))

(assert (= (and d!1094389 res!1520487) b!3751806))

(assert (= (and b!3751806 res!1520488) b!3751807))

(declare-fun m!4242757 () Bool)

(assert (=> d!1094389 m!4242757))

(assert (=> d!1094389 m!4242517))

(declare-fun m!4242759 () Bool)

(assert (=> d!1094389 m!4242759))

(assert (=> d!1094389 m!4242519))

(declare-fun m!4242761 () Bool)

(assert (=> d!1094389 m!4242761))

(declare-fun m!4242763 () Bool)

(assert (=> b!3751806 m!4242763))

(assert (=> b!3751806 m!4242517))

(declare-fun m!4242765 () Bool)

(assert (=> b!3751806 m!4242765))

(assert (=> b!3751806 m!4242519))

(declare-fun m!4242767 () Bool)

(assert (=> b!3751806 m!4242767))

(assert (=> b!3751805 m!4242519))

(declare-fun m!4242769 () Bool)

(assert (=> b!3751805 m!4242769))

(assert (=> b!3751668 d!1094389))

(declare-fun b!3751808 () Bool)

(declare-fun e!2320735 () List!40131)

(assert (=> b!3751808 (= e!2320735 Nil!40007)))

(declare-fun d!1094391 () Bool)

(declare-fun c!649359 () Bool)

(assert (=> d!1094391 (= c!649359 ((_ is Empty!12233) (left!30971 (left!30971 (left!30971 t!3709)))))))

(assert (=> d!1094391 (= (list!14738 (left!30971 (left!30971 (left!30971 t!3709)))) e!2320735)))

(declare-fun b!3751809 () Bool)

(declare-fun e!2320736 () List!40131)

(assert (=> b!3751809 (= e!2320735 e!2320736)))

(declare-fun c!649360 () Bool)

(assert (=> b!3751809 (= c!649360 ((_ is Leaf!18980) (left!30971 (left!30971 (left!30971 t!3709)))))))

(declare-fun b!3751810 () Bool)

(assert (=> b!3751810 (= e!2320736 (list!14740 (xs!15435 (left!30971 (left!30971 (left!30971 t!3709))))))))

(declare-fun b!3751811 () Bool)

(assert (=> b!3751811 (= e!2320736 (++!9901 (list!14738 (left!30971 (left!30971 (left!30971 (left!30971 t!3709))))) (list!14738 (right!31301 (left!30971 (left!30971 (left!30971 t!3709)))))))))

(assert (= (and d!1094391 c!649359) b!3751808))

(assert (= (and d!1094391 (not c!649359)) b!3751809))

(assert (= (and b!3751809 c!649360) b!3751810))

(assert (= (and b!3751809 (not c!649360)) b!3751811))

(declare-fun m!4242771 () Bool)

(assert (=> b!3751810 m!4242771))

(declare-fun m!4242773 () Bool)

(assert (=> b!3751811 m!4242773))

(declare-fun m!4242775 () Bool)

(assert (=> b!3751811 m!4242775))

(assert (=> b!3751811 m!4242773))

(assert (=> b!3751811 m!4242775))

(declare-fun m!4242777 () Bool)

(assert (=> b!3751811 m!4242777))

(assert (=> b!3751668 d!1094391))

(declare-fun b!3751812 () Bool)

(declare-fun e!2320737 () List!40131)

(assert (=> b!3751812 (= e!2320737 Nil!40007)))

(declare-fun d!1094393 () Bool)

(declare-fun c!649361 () Bool)

(assert (=> d!1094393 (= c!649361 ((_ is Empty!12233) (right!31301 (left!30971 (left!30971 t!3709)))))))

(assert (=> d!1094393 (= (list!14738 (right!31301 (left!30971 (left!30971 t!3709)))) e!2320737)))

(declare-fun b!3751813 () Bool)

(declare-fun e!2320738 () List!40131)

(assert (=> b!3751813 (= e!2320737 e!2320738)))

(declare-fun c!649362 () Bool)

(assert (=> b!3751813 (= c!649362 ((_ is Leaf!18980) (right!31301 (left!30971 (left!30971 t!3709)))))))

(declare-fun b!3751814 () Bool)

(assert (=> b!3751814 (= e!2320738 (list!14740 (xs!15435 (right!31301 (left!30971 (left!30971 t!3709))))))))

(declare-fun b!3751815 () Bool)

(assert (=> b!3751815 (= e!2320738 (++!9901 (list!14738 (left!30971 (right!31301 (left!30971 (left!30971 t!3709))))) (list!14738 (right!31301 (right!31301 (left!30971 (left!30971 t!3709)))))))))

(assert (= (and d!1094393 c!649361) b!3751812))

(assert (= (and d!1094393 (not c!649361)) b!3751813))

(assert (= (and b!3751813 c!649362) b!3751814))

(assert (= (and b!3751813 (not c!649362)) b!3751815))

(declare-fun m!4242779 () Bool)

(assert (=> b!3751814 m!4242779))

(declare-fun m!4242781 () Bool)

(assert (=> b!3751815 m!4242781))

(declare-fun m!4242783 () Bool)

(assert (=> b!3751815 m!4242783))

(assert (=> b!3751815 m!4242781))

(assert (=> b!3751815 m!4242783))

(declare-fun m!4242785 () Bool)

(assert (=> b!3751815 m!4242785))

(assert (=> b!3751668 d!1094393))

(declare-fun d!1094395 () Bool)

(declare-fun lt!1299907 () Int)

(assert (=> d!1094395 (>= lt!1299907 0)))

(declare-fun e!2320739 () Int)

(assert (=> d!1094395 (= lt!1299907 e!2320739)))

(declare-fun c!649363 () Bool)

(assert (=> d!1094395 (= c!649363 ((_ is Nil!40007) lt!1299889))))

(assert (=> d!1094395 (= (size!30099 lt!1299889) lt!1299907)))

(declare-fun b!3751816 () Bool)

(assert (=> b!3751816 (= e!2320739 0)))

(declare-fun b!3751817 () Bool)

(assert (=> b!3751817 (= e!2320739 (+ 1 (size!30099 (t!303124 lt!1299889))))))

(assert (= (and d!1094395 c!649363) b!3751816))

(assert (= (and d!1094395 (not c!649363)) b!3751817))

(declare-fun m!4242787 () Bool)

(assert (=> b!3751817 m!4242787))

(assert (=> b!3751638 d!1094395))

(declare-fun d!1094397 () Bool)

(declare-fun lt!1299908 () Int)

(assert (=> d!1094397 (>= lt!1299908 0)))

(declare-fun e!2320740 () Int)

(assert (=> d!1094397 (= lt!1299908 e!2320740)))

(declare-fun c!649364 () Bool)

(assert (=> d!1094397 (= c!649364 ((_ is Nil!40007) (list!14738 (left!30971 t!3709))))))

(assert (=> d!1094397 (= (size!30099 (list!14738 (left!30971 t!3709))) lt!1299908)))

(declare-fun b!3751818 () Bool)

(assert (=> b!3751818 (= e!2320740 0)))

(declare-fun b!3751819 () Bool)

(assert (=> b!3751819 (= e!2320740 (+ 1 (size!30099 (t!303124 (list!14738 (left!30971 t!3709))))))))

(assert (= (and d!1094397 c!649364) b!3751818))

(assert (= (and d!1094397 (not c!649364)) b!3751819))

(declare-fun m!4242789 () Bool)

(assert (=> b!3751819 m!4242789))

(assert (=> b!3751638 d!1094397))

(declare-fun d!1094399 () Bool)

(declare-fun lt!1299909 () Int)

(assert (=> d!1094399 (>= lt!1299909 0)))

(declare-fun e!2320741 () Int)

(assert (=> d!1094399 (= lt!1299909 e!2320741)))

(declare-fun c!649365 () Bool)

(assert (=> d!1094399 (= c!649365 ((_ is Nil!40007) (list!14738 (right!31301 t!3709))))))

(assert (=> d!1094399 (= (size!30099 (list!14738 (right!31301 t!3709))) lt!1299909)))

(declare-fun b!3751820 () Bool)

(assert (=> b!3751820 (= e!2320741 0)))

(declare-fun b!3751821 () Bool)

(assert (=> b!3751821 (= e!2320741 (+ 1 (size!30099 (t!303124 (list!14738 (right!31301 t!3709))))))))

(assert (= (and d!1094399 c!649365) b!3751820))

(assert (= (and d!1094399 (not c!649365)) b!3751821))

(declare-fun m!4242791 () Bool)

(assert (=> b!3751821 m!4242791))

(assert (=> b!3751638 d!1094399))

(declare-fun d!1094401 () Bool)

(assert (=> d!1094401 (= (inv!53555 (xs!15435 (right!31301 (right!31301 t!3709)))) (<= (size!30099 (innerList!12293 (xs!15435 (right!31301 (right!31301 t!3709))))) 2147483647))))

(declare-fun bs!575405 () Bool)

(assert (= bs!575405 d!1094401))

(declare-fun m!4242793 () Bool)

(assert (=> bs!575405 m!4242793))

(assert (=> b!3751701 d!1094401))

(declare-fun d!1094403 () Bool)

(declare-fun e!2320742 () Bool)

(assert (=> d!1094403 e!2320742))

(declare-fun res!1520489 () Bool)

(assert (=> d!1094403 (=> (not res!1520489) (not e!2320742))))

(declare-fun lt!1299910 () List!40131)

(assert (=> d!1094403 (= res!1520489 (= (content!5865 lt!1299910) ((_ map or) (content!5865 (list!14738 (left!30971 (right!31301 (left!30971 t!3709))))) (content!5865 (list!14738 (right!31301 (right!31301 (left!30971 t!3709))))))))))

(declare-fun e!2320743 () List!40131)

(assert (=> d!1094403 (= lt!1299910 e!2320743)))

(declare-fun c!649366 () Bool)

(assert (=> d!1094403 (= c!649366 ((_ is Nil!40007) (list!14738 (left!30971 (right!31301 (left!30971 t!3709))))))))

(assert (=> d!1094403 (= (++!9901 (list!14738 (left!30971 (right!31301 (left!30971 t!3709)))) (list!14738 (right!31301 (right!31301 (left!30971 t!3709))))) lt!1299910)))

(declare-fun b!3751822 () Bool)

(assert (=> b!3751822 (= e!2320743 (list!14738 (right!31301 (right!31301 (left!30971 t!3709)))))))

(declare-fun b!3751824 () Bool)

(declare-fun res!1520490 () Bool)

(assert (=> b!3751824 (=> (not res!1520490) (not e!2320742))))

(assert (=> b!3751824 (= res!1520490 (= (size!30099 lt!1299910) (+ (size!30099 (list!14738 (left!30971 (right!31301 (left!30971 t!3709))))) (size!30099 (list!14738 (right!31301 (right!31301 (left!30971 t!3709))))))))))

(declare-fun b!3751823 () Bool)

(assert (=> b!3751823 (= e!2320743 (Cons!40007 (h!45427 (list!14738 (left!30971 (right!31301 (left!30971 t!3709))))) (++!9901 (t!303124 (list!14738 (left!30971 (right!31301 (left!30971 t!3709))))) (list!14738 (right!31301 (right!31301 (left!30971 t!3709)))))))))

(declare-fun b!3751825 () Bool)

(assert (=> b!3751825 (= e!2320742 (or (not (= (list!14738 (right!31301 (right!31301 (left!30971 t!3709)))) Nil!40007)) (= lt!1299910 (list!14738 (left!30971 (right!31301 (left!30971 t!3709)))))))))

(assert (= (and d!1094403 c!649366) b!3751822))

(assert (= (and d!1094403 (not c!649366)) b!3751823))

(assert (= (and d!1094403 res!1520489) b!3751824))

(assert (= (and b!3751824 res!1520490) b!3751825))

(declare-fun m!4242795 () Bool)

(assert (=> d!1094403 m!4242795))

(assert (=> d!1094403 m!4242529))

(declare-fun m!4242797 () Bool)

(assert (=> d!1094403 m!4242797))

(assert (=> d!1094403 m!4242531))

(declare-fun m!4242799 () Bool)

(assert (=> d!1094403 m!4242799))

(declare-fun m!4242801 () Bool)

(assert (=> b!3751824 m!4242801))

(assert (=> b!3751824 m!4242529))

(declare-fun m!4242803 () Bool)

(assert (=> b!3751824 m!4242803))

(assert (=> b!3751824 m!4242531))

(declare-fun m!4242805 () Bool)

(assert (=> b!3751824 m!4242805))

(assert (=> b!3751823 m!4242531))

(declare-fun m!4242807 () Bool)

(assert (=> b!3751823 m!4242807))

(assert (=> b!3751674 d!1094403))

(declare-fun b!3751826 () Bool)

(declare-fun e!2320744 () List!40131)

(assert (=> b!3751826 (= e!2320744 Nil!40007)))

(declare-fun d!1094405 () Bool)

(declare-fun c!649367 () Bool)

(assert (=> d!1094405 (= c!649367 ((_ is Empty!12233) (left!30971 (right!31301 (left!30971 t!3709)))))))

(assert (=> d!1094405 (= (list!14738 (left!30971 (right!31301 (left!30971 t!3709)))) e!2320744)))

(declare-fun b!3751827 () Bool)

(declare-fun e!2320745 () List!40131)

(assert (=> b!3751827 (= e!2320744 e!2320745)))

(declare-fun c!649368 () Bool)

(assert (=> b!3751827 (= c!649368 ((_ is Leaf!18980) (left!30971 (right!31301 (left!30971 t!3709)))))))

(declare-fun b!3751828 () Bool)

(assert (=> b!3751828 (= e!2320745 (list!14740 (xs!15435 (left!30971 (right!31301 (left!30971 t!3709))))))))

(declare-fun b!3751829 () Bool)

(assert (=> b!3751829 (= e!2320745 (++!9901 (list!14738 (left!30971 (left!30971 (right!31301 (left!30971 t!3709))))) (list!14738 (right!31301 (left!30971 (right!31301 (left!30971 t!3709)))))))))

(assert (= (and d!1094405 c!649367) b!3751826))

(assert (= (and d!1094405 (not c!649367)) b!3751827))

(assert (= (and b!3751827 c!649368) b!3751828))

(assert (= (and b!3751827 (not c!649368)) b!3751829))

(declare-fun m!4242809 () Bool)

(assert (=> b!3751828 m!4242809))

(declare-fun m!4242811 () Bool)

(assert (=> b!3751829 m!4242811))

(declare-fun m!4242813 () Bool)

(assert (=> b!3751829 m!4242813))

(assert (=> b!3751829 m!4242811))

(assert (=> b!3751829 m!4242813))

(declare-fun m!4242815 () Bool)

(assert (=> b!3751829 m!4242815))

(assert (=> b!3751674 d!1094405))

(declare-fun b!3751830 () Bool)

(declare-fun e!2320746 () List!40131)

(assert (=> b!3751830 (= e!2320746 Nil!40007)))

(declare-fun d!1094407 () Bool)

(declare-fun c!649369 () Bool)

(assert (=> d!1094407 (= c!649369 ((_ is Empty!12233) (right!31301 (right!31301 (left!30971 t!3709)))))))

(assert (=> d!1094407 (= (list!14738 (right!31301 (right!31301 (left!30971 t!3709)))) e!2320746)))

(declare-fun b!3751831 () Bool)

(declare-fun e!2320747 () List!40131)

(assert (=> b!3751831 (= e!2320746 e!2320747)))

(declare-fun c!649370 () Bool)

(assert (=> b!3751831 (= c!649370 ((_ is Leaf!18980) (right!31301 (right!31301 (left!30971 t!3709)))))))

(declare-fun b!3751832 () Bool)

(assert (=> b!3751832 (= e!2320747 (list!14740 (xs!15435 (right!31301 (right!31301 (left!30971 t!3709))))))))

(declare-fun b!3751833 () Bool)

(assert (=> b!3751833 (= e!2320747 (++!9901 (list!14738 (left!30971 (right!31301 (right!31301 (left!30971 t!3709))))) (list!14738 (right!31301 (right!31301 (right!31301 (left!30971 t!3709)))))))))

(assert (= (and d!1094407 c!649369) b!3751830))

(assert (= (and d!1094407 (not c!649369)) b!3751831))

(assert (= (and b!3751831 c!649370) b!3751832))

(assert (= (and b!3751831 (not c!649370)) b!3751833))

(declare-fun m!4242817 () Bool)

(assert (=> b!3751832 m!4242817))

(declare-fun m!4242819 () Bool)

(assert (=> b!3751833 m!4242819))

(declare-fun m!4242821 () Bool)

(assert (=> b!3751833 m!4242821))

(assert (=> b!3751833 m!4242819))

(assert (=> b!3751833 m!4242821))

(declare-fun m!4242823 () Bool)

(assert (=> b!3751833 m!4242823))

(assert (=> b!3751674 d!1094407))

(declare-fun d!1094409 () Bool)

(declare-fun res!1520491 () Bool)

(declare-fun e!2320748 () Bool)

(assert (=> d!1094409 (=> (not res!1520491) (not e!2320748))))

(assert (=> d!1094409 (= res!1520491 (= (csize!24696 (left!30971 (left!30971 t!3709))) (+ (size!30101 (left!30971 (left!30971 (left!30971 t!3709)))) (size!30101 (right!31301 (left!30971 (left!30971 t!3709)))))))))

(assert (=> d!1094409 (= (inv!53556 (left!30971 (left!30971 t!3709))) e!2320748)))

(declare-fun b!3751834 () Bool)

(declare-fun res!1520492 () Bool)

(assert (=> b!3751834 (=> (not res!1520492) (not e!2320748))))

(assert (=> b!3751834 (= res!1520492 (and (not (= (left!30971 (left!30971 (left!30971 t!3709))) Empty!12233)) (not (= (right!31301 (left!30971 (left!30971 t!3709))) Empty!12233))))))

(declare-fun b!3751835 () Bool)

(declare-fun res!1520493 () Bool)

(assert (=> b!3751835 (=> (not res!1520493) (not e!2320748))))

(assert (=> b!3751835 (= res!1520493 (= (cheight!12444 (left!30971 (left!30971 t!3709))) (+ (max!0 (height!1742 (left!30971 (left!30971 (left!30971 t!3709)))) (height!1742 (right!31301 (left!30971 (left!30971 t!3709))))) 1)))))

(declare-fun b!3751836 () Bool)

(assert (=> b!3751836 (= e!2320748 (<= 0 (cheight!12444 (left!30971 (left!30971 t!3709)))))))

(assert (= (and d!1094409 res!1520491) b!3751834))

(assert (= (and b!3751834 res!1520492) b!3751835))

(assert (= (and b!3751835 res!1520493) b!3751836))

(declare-fun m!4242825 () Bool)

(assert (=> d!1094409 m!4242825))

(declare-fun m!4242827 () Bool)

(assert (=> d!1094409 m!4242827))

(declare-fun m!4242829 () Bool)

(assert (=> b!3751835 m!4242829))

(declare-fun m!4242831 () Bool)

(assert (=> b!3751835 m!4242831))

(assert (=> b!3751835 m!4242829))

(assert (=> b!3751835 m!4242831))

(declare-fun m!4242833 () Bool)

(assert (=> b!3751835 m!4242833))

(assert (=> b!3751606 d!1094409))

(declare-fun d!1094411 () Bool)

(declare-fun c!649371 () Bool)

(assert (=> d!1094411 (= c!649371 ((_ is Node!12233) (left!30971 (left!30971 (right!31301 t!3709)))))))

(declare-fun e!2320749 () Bool)

(assert (=> d!1094411 (= (inv!53554 (left!30971 (left!30971 (right!31301 t!3709)))) e!2320749)))

(declare-fun b!3751837 () Bool)

(assert (=> b!3751837 (= e!2320749 (inv!53556 (left!30971 (left!30971 (right!31301 t!3709)))))))

(declare-fun b!3751838 () Bool)

(declare-fun e!2320750 () Bool)

(assert (=> b!3751838 (= e!2320749 e!2320750)))

(declare-fun res!1520494 () Bool)

(assert (=> b!3751838 (= res!1520494 (not ((_ is Leaf!18980) (left!30971 (left!30971 (right!31301 t!3709))))))))

(assert (=> b!3751838 (=> res!1520494 e!2320750)))

(declare-fun b!3751839 () Bool)

(assert (=> b!3751839 (= e!2320750 (inv!53558 (left!30971 (left!30971 (right!31301 t!3709)))))))

(assert (= (and d!1094411 c!649371) b!3751837))

(assert (= (and d!1094411 (not c!649371)) b!3751838))

(assert (= (and b!3751838 (not res!1520494)) b!3751839))

(declare-fun m!4242835 () Bool)

(assert (=> b!3751837 m!4242835))

(declare-fun m!4242837 () Bool)

(assert (=> b!3751839 m!4242837))

(assert (=> b!3751697 d!1094411))

(declare-fun d!1094413 () Bool)

(declare-fun c!649372 () Bool)

(assert (=> d!1094413 (= c!649372 ((_ is Node!12233) (right!31301 (left!30971 (right!31301 t!3709)))))))

(declare-fun e!2320751 () Bool)

(assert (=> d!1094413 (= (inv!53554 (right!31301 (left!30971 (right!31301 t!3709)))) e!2320751)))

(declare-fun b!3751840 () Bool)

(assert (=> b!3751840 (= e!2320751 (inv!53556 (right!31301 (left!30971 (right!31301 t!3709)))))))

(declare-fun b!3751841 () Bool)

(declare-fun e!2320752 () Bool)

(assert (=> b!3751841 (= e!2320751 e!2320752)))

(declare-fun res!1520495 () Bool)

(assert (=> b!3751841 (= res!1520495 (not ((_ is Leaf!18980) (right!31301 (left!30971 (right!31301 t!3709))))))))

(assert (=> b!3751841 (=> res!1520495 e!2320752)))

(declare-fun b!3751842 () Bool)

(assert (=> b!3751842 (= e!2320752 (inv!53558 (right!31301 (left!30971 (right!31301 t!3709)))))))

(assert (= (and d!1094413 c!649372) b!3751840))

(assert (= (and d!1094413 (not c!649372)) b!3751841))

(assert (= (and b!3751841 (not res!1520495)) b!3751842))

(declare-fun m!4242839 () Bool)

(assert (=> b!3751840 m!4242839))

(declare-fun m!4242841 () Bool)

(assert (=> b!3751842 m!4242841))

(assert (=> b!3751697 d!1094413))

(declare-fun d!1094415 () Bool)

(declare-fun lt!1299911 () Int)

(assert (=> d!1094415 (>= lt!1299911 0)))

(declare-fun e!2320753 () Int)

(assert (=> d!1094415 (= lt!1299911 e!2320753)))

(declare-fun c!649373 () Bool)

(assert (=> d!1094415 (= c!649373 ((_ is Nil!40007) (list!14740 (xs!15435 t!3709))))))

(assert (=> d!1094415 (= (size!30099 (list!14740 (xs!15435 t!3709))) lt!1299911)))

(declare-fun b!3751843 () Bool)

(assert (=> b!3751843 (= e!2320753 0)))

(declare-fun b!3751844 () Bool)

(assert (=> b!3751844 (= e!2320753 (+ 1 (size!30099 (t!303124 (list!14740 (xs!15435 t!3709))))))))

(assert (= (and d!1094415 c!649373) b!3751843))

(assert (= (and d!1094415 (not c!649373)) b!3751844))

(declare-fun m!4242843 () Bool)

(assert (=> b!3751844 m!4242843))

(assert (=> d!1094285 d!1094415))

(declare-fun d!1094417 () Bool)

(assert (=> d!1094417 (= (list!14740 (xs!15435 t!3709)) (innerList!12293 (xs!15435 t!3709)))))

(assert (=> d!1094285 d!1094417))

(declare-fun d!1094419 () Bool)

(declare-fun c!649376 () Bool)

(assert (=> d!1094419 (= c!649376 ((_ is Nil!40007) lt!1299886))))

(declare-fun e!2320756 () (InoxSet T!69098))

(assert (=> d!1094419 (= (content!5865 lt!1299886) e!2320756)))

(declare-fun b!3751849 () Bool)

(assert (=> b!3751849 (= e!2320756 ((as const (Array T!69098 Bool)) false))))

(declare-fun b!3751850 () Bool)

(assert (=> b!3751850 (= e!2320756 ((_ map or) (store ((as const (Array T!69098 Bool)) false) (h!45427 lt!1299886) true) (content!5865 (t!303124 lt!1299886))))))

(assert (= (and d!1094419 c!649376) b!3751849))

(assert (= (and d!1094419 (not c!649376)) b!3751850))

(declare-fun m!4242845 () Bool)

(assert (=> b!3751850 m!4242845))

(declare-fun m!4242847 () Bool)

(assert (=> b!3751850 m!4242847))

(assert (=> d!1094267 d!1094419))

(declare-fun d!1094421 () Bool)

(declare-fun c!649377 () Bool)

(assert (=> d!1094421 (= c!649377 ((_ is Nil!40007) (list!14738 (left!30971 (right!31301 t!3709)))))))

(declare-fun e!2320757 () (InoxSet T!69098))

(assert (=> d!1094421 (= (content!5865 (list!14738 (left!30971 (right!31301 t!3709)))) e!2320757)))

(declare-fun b!3751851 () Bool)

(assert (=> b!3751851 (= e!2320757 ((as const (Array T!69098 Bool)) false))))

(declare-fun b!3751852 () Bool)

(assert (=> b!3751852 (= e!2320757 ((_ map or) (store ((as const (Array T!69098 Bool)) false) (h!45427 (list!14738 (left!30971 (right!31301 t!3709)))) true) (content!5865 (t!303124 (list!14738 (left!30971 (right!31301 t!3709)))))))))

(assert (= (and d!1094421 c!649377) b!3751851))

(assert (= (and d!1094421 (not c!649377)) b!3751852))

(declare-fun m!4242849 () Bool)

(assert (=> b!3751852 m!4242849))

(assert (=> b!3751852 m!4242727))

(assert (=> d!1094267 d!1094421))

(declare-fun d!1094423 () Bool)

(declare-fun c!649378 () Bool)

(assert (=> d!1094423 (= c!649378 ((_ is Nil!40007) (list!14738 (right!31301 (right!31301 t!3709)))))))

(declare-fun e!2320758 () (InoxSet T!69098))

(assert (=> d!1094423 (= (content!5865 (list!14738 (right!31301 (right!31301 t!3709)))) e!2320758)))

(declare-fun b!3751853 () Bool)

(assert (=> b!3751853 (= e!2320758 ((as const (Array T!69098 Bool)) false))))

(declare-fun b!3751854 () Bool)

(assert (=> b!3751854 (= e!2320758 ((_ map or) (store ((as const (Array T!69098 Bool)) false) (h!45427 (list!14738 (right!31301 (right!31301 t!3709)))) true) (content!5865 (t!303124 (list!14738 (right!31301 (right!31301 t!3709)))))))))

(assert (= (and d!1094423 c!649378) b!3751853))

(assert (= (and d!1094423 (not c!649378)) b!3751854))

(declare-fun m!4242851 () Bool)

(assert (=> b!3751854 m!4242851))

(declare-fun m!4242853 () Bool)

(assert (=> b!3751854 m!4242853))

(assert (=> d!1094267 d!1094423))

(declare-fun d!1094425 () Bool)

(declare-fun res!1520496 () Bool)

(declare-fun e!2320759 () Bool)

(assert (=> d!1094425 (=> (not res!1520496) (not e!2320759))))

(assert (=> d!1094425 (= res!1520496 (<= (size!30099 (list!14740 (xs!15435 (right!31301 (right!31301 t!3709))))) 512))))

(assert (=> d!1094425 (= (inv!53558 (right!31301 (right!31301 t!3709))) e!2320759)))

(declare-fun b!3751855 () Bool)

(declare-fun res!1520497 () Bool)

(assert (=> b!3751855 (=> (not res!1520497) (not e!2320759))))

(assert (=> b!3751855 (= res!1520497 (= (csize!24697 (right!31301 (right!31301 t!3709))) (size!30099 (list!14740 (xs!15435 (right!31301 (right!31301 t!3709)))))))))

(declare-fun b!3751856 () Bool)

(assert (=> b!3751856 (= e!2320759 (and (> (csize!24697 (right!31301 (right!31301 t!3709))) 0) (<= (csize!24697 (right!31301 (right!31301 t!3709))) 512)))))

(assert (= (and d!1094425 res!1520496) b!3751855))

(assert (= (and b!3751855 res!1520497) b!3751856))

(assert (=> d!1094425 m!4242401))

(assert (=> d!1094425 m!4242401))

(declare-fun m!4242855 () Bool)

(assert (=> d!1094425 m!4242855))

(assert (=> b!3751855 m!4242401))

(assert (=> b!3751855 m!4242401))

(assert (=> b!3751855 m!4242855))

(assert (=> b!3751558 d!1094425))

(assert (=> b!3751612 d!1094415))

(assert (=> b!3751612 d!1094417))

(declare-fun d!1094429 () Bool)

(declare-fun res!1520501 () Bool)

(declare-fun e!2320761 () Bool)

(assert (=> d!1094429 (=> (not res!1520501) (not e!2320761))))

(assert (=> d!1094429 (= res!1520501 (<= (size!30099 (list!14740 (xs!15435 (left!30971 (left!30971 t!3709))))) 512))))

(assert (=> d!1094429 (= (inv!53558 (left!30971 (left!30971 t!3709))) e!2320761)))

(declare-fun b!3751860 () Bool)

(declare-fun res!1520502 () Bool)

(assert (=> b!3751860 (=> (not res!1520502) (not e!2320761))))

(assert (=> b!3751860 (= res!1520502 (= (csize!24697 (left!30971 (left!30971 t!3709))) (size!30099 (list!14740 (xs!15435 (left!30971 (left!30971 t!3709)))))))))

(declare-fun b!3751861 () Bool)

(assert (=> b!3751861 (= e!2320761 (and (> (csize!24697 (left!30971 (left!30971 t!3709))) 0) (<= (csize!24697 (left!30971 (left!30971 t!3709))) 512)))))

(assert (= (and d!1094429 res!1520501) b!3751860))

(assert (= (and b!3751860 res!1520502) b!3751861))

(assert (=> d!1094429 m!4242515))

(assert (=> d!1094429 m!4242515))

(declare-fun m!4242859 () Bool)

(assert (=> d!1094429 m!4242859))

(assert (=> b!3751860 m!4242515))

(assert (=> b!3751860 m!4242515))

(assert (=> b!3751860 m!4242859))

(assert (=> b!3751608 d!1094429))

(declare-fun d!1094431 () Bool)

(declare-fun res!1520503 () Bool)

(declare-fun e!2320762 () Bool)

(assert (=> d!1094431 (=> (not res!1520503) (not e!2320762))))

(assert (=> d!1094431 (= res!1520503 (= (csize!24696 (right!31301 (right!31301 t!3709))) (+ (size!30101 (left!30971 (right!31301 (right!31301 t!3709)))) (size!30101 (right!31301 (right!31301 (right!31301 t!3709)))))))))

(assert (=> d!1094431 (= (inv!53556 (right!31301 (right!31301 t!3709))) e!2320762)))

(declare-fun b!3751862 () Bool)

(declare-fun res!1520504 () Bool)

(assert (=> b!3751862 (=> (not res!1520504) (not e!2320762))))

(assert (=> b!3751862 (= res!1520504 (and (not (= (left!30971 (right!31301 (right!31301 t!3709))) Empty!12233)) (not (= (right!31301 (right!31301 (right!31301 t!3709))) Empty!12233))))))

(declare-fun b!3751863 () Bool)

(declare-fun res!1520505 () Bool)

(assert (=> b!3751863 (=> (not res!1520505) (not e!2320762))))

(assert (=> b!3751863 (= res!1520505 (= (cheight!12444 (right!31301 (right!31301 t!3709))) (+ (max!0 (height!1742 (left!30971 (right!31301 (right!31301 t!3709)))) (height!1742 (right!31301 (right!31301 (right!31301 t!3709))))) 1)))))

(declare-fun b!3751864 () Bool)

(assert (=> b!3751864 (= e!2320762 (<= 0 (cheight!12444 (right!31301 (right!31301 t!3709)))))))

(assert (= (and d!1094431 res!1520503) b!3751862))

(assert (= (and b!3751862 res!1520504) b!3751863))

(assert (= (and b!3751863 res!1520505) b!3751864))

(declare-fun m!4242871 () Bool)

(assert (=> d!1094431 m!4242871))

(declare-fun m!4242875 () Bool)

(assert (=> d!1094431 m!4242875))

(declare-fun m!4242877 () Bool)

(assert (=> b!3751863 m!4242877))

(declare-fun m!4242879 () Bool)

(assert (=> b!3751863 m!4242879))

(assert (=> b!3751863 m!4242877))

(assert (=> b!3751863 m!4242879))

(declare-fun m!4242881 () Bool)

(assert (=> b!3751863 m!4242881))

(assert (=> b!3751556 d!1094431))

(declare-fun d!1094437 () Bool)

(assert (=> d!1094437 (= (max!0 (height!1742 (left!30971 (right!31301 t!3709))) (height!1742 (right!31301 (right!31301 t!3709)))) (ite (< (height!1742 (left!30971 (right!31301 t!3709))) (height!1742 (right!31301 (right!31301 t!3709)))) (height!1742 (right!31301 (right!31301 t!3709))) (height!1742 (left!30971 (right!31301 t!3709)))))))

(assert (=> b!3751624 d!1094437))

(declare-fun d!1094447 () Bool)

(assert (=> d!1094447 (= (height!1742 (left!30971 (right!31301 t!3709))) (ite ((_ is Empty!12233) (left!30971 (right!31301 t!3709))) 0 (ite ((_ is Leaf!18980) (left!30971 (right!31301 t!3709))) 1 (cheight!12444 (left!30971 (right!31301 t!3709))))))))

(assert (=> b!3751624 d!1094447))

(declare-fun d!1094449 () Bool)

(assert (=> d!1094449 (= (height!1742 (right!31301 (right!31301 t!3709))) (ite ((_ is Empty!12233) (right!31301 (right!31301 t!3709))) 0 (ite ((_ is Leaf!18980) (right!31301 (right!31301 t!3709))) 1 (cheight!12444 (right!31301 (right!31301 t!3709))))))))

(assert (=> b!3751624 d!1094449))

(assert (=> b!3751656 d!1094289))

(assert (=> b!3751550 d!1094257))

(assert (=> b!3751550 d!1094259))

(declare-fun d!1094451 () Bool)

(assert (=> d!1094451 (= (max!0 (height!1742 (left!30971 t!3709)) (height!1742 (right!31301 t!3709))) (ite (< (height!1742 (left!30971 t!3709)) (height!1742 (right!31301 t!3709))) (height!1742 (right!31301 t!3709)) (height!1742 (left!30971 t!3709))))))

(assert (=> b!3751693 d!1094451))

(assert (=> b!3751693 d!1094227))

(declare-fun d!1094453 () Bool)

(assert (=> d!1094453 (= (height!1742 (right!31301 t!3709)) (ite ((_ is Empty!12233) (right!31301 t!3709)) 0 (ite ((_ is Leaf!18980) (right!31301 t!3709)) 1 (cheight!12444 (right!31301 t!3709)))))))

(assert (=> b!3751693 d!1094453))

(declare-fun d!1094455 () Bool)

(declare-fun e!2320771 () Bool)

(assert (=> d!1094455 e!2320771))

(declare-fun res!1520512 () Bool)

(assert (=> d!1094455 (=> (not res!1520512) (not e!2320771))))

(declare-fun lt!1299913 () List!40131)

(assert (=> d!1094455 (= res!1520512 (= (content!5865 lt!1299913) ((_ map or) (content!5865 (list!14738 (left!30971 (left!30971 (right!31301 t!3709))))) (content!5865 (list!14738 (right!31301 (left!30971 (right!31301 t!3709))))))))))

(declare-fun e!2320772 () List!40131)

(assert (=> d!1094455 (= lt!1299913 e!2320772)))

(declare-fun c!649382 () Bool)

(assert (=> d!1094455 (= c!649382 ((_ is Nil!40007) (list!14738 (left!30971 (left!30971 (right!31301 t!3709))))))))

(assert (=> d!1094455 (= (++!9901 (list!14738 (left!30971 (left!30971 (right!31301 t!3709)))) (list!14738 (right!31301 (left!30971 (right!31301 t!3709))))) lt!1299913)))

(declare-fun b!3751877 () Bool)

(assert (=> b!3751877 (= e!2320772 (list!14738 (right!31301 (left!30971 (right!31301 t!3709)))))))

(declare-fun b!3751879 () Bool)

(declare-fun res!1520513 () Bool)

(assert (=> b!3751879 (=> (not res!1520513) (not e!2320771))))

(assert (=> b!3751879 (= res!1520513 (= (size!30099 lt!1299913) (+ (size!30099 (list!14738 (left!30971 (left!30971 (right!31301 t!3709))))) (size!30099 (list!14738 (right!31301 (left!30971 (right!31301 t!3709))))))))))

(declare-fun b!3751878 () Bool)

(assert (=> b!3751878 (= e!2320772 (Cons!40007 (h!45427 (list!14738 (left!30971 (left!30971 (right!31301 t!3709))))) (++!9901 (t!303124 (list!14738 (left!30971 (left!30971 (right!31301 t!3709))))) (list!14738 (right!31301 (left!30971 (right!31301 t!3709)))))))))

(declare-fun b!3751880 () Bool)

(assert (=> b!3751880 (= e!2320771 (or (not (= (list!14738 (right!31301 (left!30971 (right!31301 t!3709)))) Nil!40007)) (= lt!1299913 (list!14738 (left!30971 (left!30971 (right!31301 t!3709)))))))))

(assert (= (and d!1094455 c!649382) b!3751877))

(assert (= (and d!1094455 (not c!649382)) b!3751878))

(assert (= (and d!1094455 res!1520512) b!3751879))

(assert (= (and b!3751879 res!1520513) b!3751880))

(declare-fun m!4242895 () Bool)

(assert (=> d!1094455 m!4242895))

(assert (=> d!1094455 m!4242395))

(declare-fun m!4242897 () Bool)

(assert (=> d!1094455 m!4242897))

(assert (=> d!1094455 m!4242397))

(declare-fun m!4242901 () Bool)

(assert (=> d!1094455 m!4242901))

(declare-fun m!4242905 () Bool)

(assert (=> b!3751879 m!4242905))

(assert (=> b!3751879 m!4242395))

(declare-fun m!4242907 () Bool)

(assert (=> b!3751879 m!4242907))

(assert (=> b!3751879 m!4242397))

(declare-fun m!4242911 () Bool)

(assert (=> b!3751879 m!4242911))

(assert (=> b!3751878 m!4242397))

(declare-fun m!4242915 () Bool)

(assert (=> b!3751878 m!4242915))

(assert (=> b!3751595 d!1094455))

(declare-fun b!3751885 () Bool)

(declare-fun e!2320775 () List!40131)

(assert (=> b!3751885 (= e!2320775 Nil!40007)))

(declare-fun d!1094459 () Bool)

(declare-fun c!649384 () Bool)

(assert (=> d!1094459 (= c!649384 ((_ is Empty!12233) (left!30971 (left!30971 (right!31301 t!3709)))))))

(assert (=> d!1094459 (= (list!14738 (left!30971 (left!30971 (right!31301 t!3709)))) e!2320775)))

(declare-fun b!3751886 () Bool)

(declare-fun e!2320776 () List!40131)

(assert (=> b!3751886 (= e!2320775 e!2320776)))

(declare-fun c!649385 () Bool)

(assert (=> b!3751886 (= c!649385 ((_ is Leaf!18980) (left!30971 (left!30971 (right!31301 t!3709)))))))

(declare-fun b!3751887 () Bool)

(assert (=> b!3751887 (= e!2320776 (list!14740 (xs!15435 (left!30971 (left!30971 (right!31301 t!3709))))))))

(declare-fun b!3751888 () Bool)

(assert (=> b!3751888 (= e!2320776 (++!9901 (list!14738 (left!30971 (left!30971 (left!30971 (right!31301 t!3709))))) (list!14738 (right!31301 (left!30971 (left!30971 (right!31301 t!3709)))))))))

(assert (= (and d!1094459 c!649384) b!3751885))

(assert (= (and d!1094459 (not c!649384)) b!3751886))

(assert (= (and b!3751886 c!649385) b!3751887))

(assert (= (and b!3751886 (not c!649385)) b!3751888))

(declare-fun m!4242919 () Bool)

(assert (=> b!3751887 m!4242919))

(declare-fun m!4242923 () Bool)

(assert (=> b!3751888 m!4242923))

(declare-fun m!4242925 () Bool)

(assert (=> b!3751888 m!4242925))

(assert (=> b!3751888 m!4242923))

(assert (=> b!3751888 m!4242925))

(declare-fun m!4242927 () Bool)

(assert (=> b!3751888 m!4242927))

(assert (=> b!3751595 d!1094459))

(declare-fun b!3751891 () Bool)

(declare-fun e!2320778 () List!40131)

(assert (=> b!3751891 (= e!2320778 Nil!40007)))

(declare-fun d!1094465 () Bool)

(declare-fun c!649386 () Bool)

(assert (=> d!1094465 (= c!649386 ((_ is Empty!12233) (right!31301 (left!30971 (right!31301 t!3709)))))))

(assert (=> d!1094465 (= (list!14738 (right!31301 (left!30971 (right!31301 t!3709)))) e!2320778)))

(declare-fun b!3751892 () Bool)

(declare-fun e!2320779 () List!40131)

(assert (=> b!3751892 (= e!2320778 e!2320779)))

(declare-fun c!649387 () Bool)

(assert (=> b!3751892 (= c!649387 ((_ is Leaf!18980) (right!31301 (left!30971 (right!31301 t!3709)))))))

(declare-fun b!3751893 () Bool)

(assert (=> b!3751893 (= e!2320779 (list!14740 (xs!15435 (right!31301 (left!30971 (right!31301 t!3709))))))))

(declare-fun b!3751894 () Bool)

(assert (=> b!3751894 (= e!2320779 (++!9901 (list!14738 (left!30971 (right!31301 (left!30971 (right!31301 t!3709))))) (list!14738 (right!31301 (right!31301 (left!30971 (right!31301 t!3709)))))))))

(assert (= (and d!1094465 c!649386) b!3751891))

(assert (= (and d!1094465 (not c!649386)) b!3751892))

(assert (= (and b!3751892 c!649387) b!3751893))

(assert (= (and b!3751892 (not c!649387)) b!3751894))

(declare-fun m!4242929 () Bool)

(assert (=> b!3751893 m!4242929))

(declare-fun m!4242931 () Bool)

(assert (=> b!3751894 m!4242931))

(declare-fun m!4242933 () Bool)

(assert (=> b!3751894 m!4242933))

(assert (=> b!3751894 m!4242931))

(assert (=> b!3751894 m!4242933))

(declare-fun m!4242935 () Bool)

(assert (=> b!3751894 m!4242935))

(assert (=> b!3751595 d!1094465))

(declare-fun d!1094467 () Bool)

(declare-fun lt!1299915 () Int)

(assert (=> d!1094467 (>= lt!1299915 0)))

(declare-fun e!2320780 () Int)

(assert (=> d!1094467 (= lt!1299915 e!2320780)))

(declare-fun c!649388 () Bool)

(assert (=> d!1094467 (= c!649388 ((_ is Nil!40007) (innerList!12293 (xs!15435 (left!30971 t!3709)))))))

(assert (=> d!1094467 (= (size!30099 (innerList!12293 (xs!15435 (left!30971 t!3709)))) lt!1299915)))

(declare-fun b!3751895 () Bool)

(assert (=> b!3751895 (= e!2320780 0)))

(declare-fun b!3751896 () Bool)

(assert (=> b!3751896 (= e!2320780 (+ 1 (size!30099 (t!303124 (innerList!12293 (xs!15435 (left!30971 t!3709)))))))))

(assert (= (and d!1094467 c!649388) b!3751895))

(assert (= (and d!1094467 (not c!649388)) b!3751896))

(declare-fun m!4242937 () Bool)

(assert (=> b!3751896 m!4242937))

(assert (=> d!1094287 d!1094467))

(declare-fun d!1094469 () Bool)

(declare-fun res!1520518 () Bool)

(declare-fun e!2320781 () Bool)

(assert (=> d!1094469 (=> (not res!1520518) (not e!2320781))))

(assert (=> d!1094469 (= res!1520518 (<= (size!30099 (list!14740 (xs!15435 (right!31301 (left!30971 t!3709))))) 512))))

(assert (=> d!1094469 (= (inv!53558 (right!31301 (left!30971 t!3709))) e!2320781)))

(declare-fun b!3751897 () Bool)

(declare-fun res!1520519 () Bool)

(assert (=> b!3751897 (=> (not res!1520519) (not e!2320781))))

(assert (=> b!3751897 (= res!1520519 (= (csize!24697 (right!31301 (left!30971 t!3709))) (size!30099 (list!14740 (xs!15435 (right!31301 (left!30971 t!3709)))))))))

(declare-fun b!3751898 () Bool)

(assert (=> b!3751898 (= e!2320781 (and (> (csize!24697 (right!31301 (left!30971 t!3709))) 0) (<= (csize!24697 (right!31301 (left!30971 t!3709))) 512)))))

(assert (= (and d!1094469 res!1520518) b!3751897))

(assert (= (and b!3751897 res!1520519) b!3751898))

(assert (=> d!1094469 m!4242527))

(assert (=> d!1094469 m!4242527))

(declare-fun m!4242939 () Bool)

(assert (=> d!1094469 m!4242939))

(assert (=> b!3751897 m!4242527))

(assert (=> b!3751897 m!4242527))

(assert (=> b!3751897 m!4242939))

(assert (=> b!3751611 d!1094469))

(declare-fun d!1094471 () Bool)

(declare-fun res!1520520 () Bool)

(declare-fun e!2320782 () Bool)

(assert (=> d!1094471 (=> res!1520520 e!2320782)))

(assert (=> d!1094471 (= res!1520520 ((_ is Nil!40007) (t!303124 (++!9901 (list!14738 (left!30971 t!3709)) (list!14738 (right!31301 t!3709))))))))

(assert (=> d!1094471 (= (forall!8227 (t!303124 (++!9901 (list!14738 (left!30971 t!3709)) (list!14738 (right!31301 t!3709)))) p!1451) e!2320782)))

(declare-fun b!3751899 () Bool)

(declare-fun e!2320783 () Bool)

(assert (=> b!3751899 (= e!2320782 e!2320783)))

(declare-fun res!1520521 () Bool)

(assert (=> b!3751899 (=> (not res!1520521) (not e!2320783))))

(assert (=> b!3751899 (= res!1520521 (dynLambda!17300 p!1451 (h!45427 (t!303124 (++!9901 (list!14738 (left!30971 t!3709)) (list!14738 (right!31301 t!3709)))))))))

(declare-fun b!3751900 () Bool)

(assert (=> b!3751900 (= e!2320783 (forall!8227 (t!303124 (t!303124 (++!9901 (list!14738 (left!30971 t!3709)) (list!14738 (right!31301 t!3709))))) p!1451))))

(assert (= (and d!1094471 (not res!1520520)) b!3751899))

(assert (= (and b!3751899 res!1520521) b!3751900))

(declare-fun b_lambda!110019 () Bool)

(assert (=> (not b_lambda!110019) (not b!3751899)))

(declare-fun t!303146 () Bool)

(declare-fun tb!214665 () Bool)

(assert (=> (and start!352280 (= p!1451 p!1451) t!303146) tb!214665))

(declare-fun result!262146 () Bool)

(assert (=> tb!214665 (= result!262146 true)))

(assert (=> b!3751899 t!303146))

(declare-fun b_and!278823 () Bool)

(assert (= b_and!278819 (and (=> t!303146 result!262146) b_and!278823)))

(declare-fun m!4242941 () Bool)

(assert (=> b!3751899 m!4242941))

(declare-fun m!4242943 () Bool)

(assert (=> b!3751900 m!4242943))

(assert (=> b!3751631 d!1094471))

(declare-fun d!1094473 () Bool)

(declare-fun lt!1299919 () Int)

(assert (=> d!1094473 (= lt!1299919 (size!30099 (list!14738 (left!30971 (left!30971 t!3709)))))))

(assert (=> d!1094473 (= lt!1299919 (ite ((_ is Empty!12233) (left!30971 (left!30971 t!3709))) 0 (ite ((_ is Leaf!18980) (left!30971 (left!30971 t!3709))) (csize!24697 (left!30971 (left!30971 t!3709))) (csize!24696 (left!30971 (left!30971 t!3709))))))))

(assert (=> d!1094473 (= (size!30101 (left!30971 (left!30971 t!3709))) lt!1299919)))

(declare-fun bs!575406 () Bool)

(assert (= bs!575406 d!1094473))

(assert (=> bs!575406 m!4242283))

(assert (=> bs!575406 m!4242283))

(assert (=> bs!575406 m!4242509))

(assert (=> d!1094263 d!1094473))

(declare-fun d!1094483 () Bool)

(declare-fun lt!1299921 () Int)

(assert (=> d!1094483 (= lt!1299921 (size!30099 (list!14738 (right!31301 (left!30971 t!3709)))))))

(assert (=> d!1094483 (= lt!1299921 (ite ((_ is Empty!12233) (right!31301 (left!30971 t!3709))) 0 (ite ((_ is Leaf!18980) (right!31301 (left!30971 t!3709))) (csize!24697 (right!31301 (left!30971 t!3709))) (csize!24696 (right!31301 (left!30971 t!3709))))))))

(assert (=> d!1094483 (= (size!30101 (right!31301 (left!30971 t!3709))) lt!1299921)))

(declare-fun bs!575407 () Bool)

(assert (= bs!575407 d!1094483))

(assert (=> bs!575407 m!4242285))

(assert (=> bs!575407 m!4242285))

(assert (=> bs!575407 m!4242511))

(assert (=> d!1094263 d!1094483))

(declare-fun d!1094487 () Bool)

(declare-fun lt!1299923 () Int)

(assert (=> d!1094487 (>= lt!1299923 0)))

(declare-fun e!2320792 () Int)

(assert (=> d!1094487 (= lt!1299923 e!2320792)))

(declare-fun c!649397 () Bool)

(assert (=> d!1094487 (= c!649397 ((_ is Nil!40007) lt!1299886))))

(assert (=> d!1094487 (= (size!30099 lt!1299886) lt!1299923)))

(declare-fun b!3751917 () Bool)

(assert (=> b!3751917 (= e!2320792 0)))

(declare-fun b!3751918 () Bool)

(assert (=> b!3751918 (= e!2320792 (+ 1 (size!30099 (t!303124 lt!1299886))))))

(assert (= (and d!1094487 c!649397) b!3751917))

(assert (= (and d!1094487 (not c!649397)) b!3751918))

(declare-fun m!4242961 () Bool)

(assert (=> b!3751918 m!4242961))

(assert (=> b!3751590 d!1094487))

(declare-fun d!1094489 () Bool)

(declare-fun lt!1299924 () Int)

(assert (=> d!1094489 (>= lt!1299924 0)))

(declare-fun e!2320794 () Int)

(assert (=> d!1094489 (= lt!1299924 e!2320794)))

(declare-fun c!649398 () Bool)

(assert (=> d!1094489 (= c!649398 ((_ is Nil!40007) (list!14738 (left!30971 (right!31301 t!3709)))))))

(assert (=> d!1094489 (= (size!30099 (list!14738 (left!30971 (right!31301 t!3709)))) lt!1299924)))

(declare-fun b!3751919 () Bool)

(assert (=> b!3751919 (= e!2320794 0)))

(declare-fun b!3751920 () Bool)

(assert (=> b!3751920 (= e!2320794 (+ 1 (size!30099 (t!303124 (list!14738 (left!30971 (right!31301 t!3709)))))))))

(assert (= (and d!1094489 c!649398) b!3751919))

(assert (= (and d!1094489 (not c!649398)) b!3751920))

(assert (=> b!3751920 m!4242731))

(assert (=> b!3751590 d!1094489))

(declare-fun d!1094493 () Bool)

(declare-fun lt!1299925 () Int)

(assert (=> d!1094493 (>= lt!1299925 0)))

(declare-fun e!2320795 () Int)

(assert (=> d!1094493 (= lt!1299925 e!2320795)))

(declare-fun c!649399 () Bool)

(assert (=> d!1094493 (= c!649399 ((_ is Nil!40007) (list!14738 (right!31301 (right!31301 t!3709)))))))

(assert (=> d!1094493 (= (size!30099 (list!14738 (right!31301 (right!31301 t!3709)))) lt!1299925)))

(declare-fun b!3751924 () Bool)

(assert (=> b!3751924 (= e!2320795 0)))

(declare-fun b!3751925 () Bool)

(assert (=> b!3751925 (= e!2320795 (+ 1 (size!30099 (t!303124 (list!14738 (right!31301 (right!31301 t!3709)))))))))

(assert (= (and d!1094493 c!649399) b!3751924))

(assert (= (and d!1094493 (not c!649399)) b!3751925))

(declare-fun m!4242965 () Bool)

(assert (=> b!3751925 m!4242965))

(assert (=> b!3751590 d!1094493))

(declare-fun d!1094495 () Bool)

(declare-fun c!649400 () Bool)

(assert (=> d!1094495 (= c!649400 ((_ is Node!12233) (left!30971 (left!30971 (left!30971 t!3709)))))))

(declare-fun e!2320796 () Bool)

(assert (=> d!1094495 (= (inv!53554 (left!30971 (left!30971 (left!30971 t!3709)))) e!2320796)))

(declare-fun b!3751926 () Bool)

(assert (=> b!3751926 (= e!2320796 (inv!53556 (left!30971 (left!30971 (left!30971 t!3709)))))))

(declare-fun b!3751927 () Bool)

(declare-fun e!2320797 () Bool)

(assert (=> b!3751927 (= e!2320796 e!2320797)))

(declare-fun res!1520525 () Bool)

(assert (=> b!3751927 (= res!1520525 (not ((_ is Leaf!18980) (left!30971 (left!30971 (left!30971 t!3709))))))))

(assert (=> b!3751927 (=> res!1520525 e!2320797)))

(declare-fun b!3751928 () Bool)

(assert (=> b!3751928 (= e!2320797 (inv!53558 (left!30971 (left!30971 (left!30971 t!3709)))))))

(assert (= (and d!1094495 c!649400) b!3751926))

(assert (= (and d!1094495 (not c!649400)) b!3751927))

(assert (= (and b!3751927 (not res!1520525)) b!3751928))

(declare-fun m!4242977 () Bool)

(assert (=> b!3751926 m!4242977))

(declare-fun m!4242979 () Bool)

(assert (=> b!3751928 m!4242979))

(assert (=> b!3751703 d!1094495))

(declare-fun d!1094499 () Bool)

(declare-fun c!649401 () Bool)

(assert (=> d!1094499 (= c!649401 ((_ is Node!12233) (right!31301 (left!30971 (left!30971 t!3709)))))))

(declare-fun e!2320799 () Bool)

(assert (=> d!1094499 (= (inv!53554 (right!31301 (left!30971 (left!30971 t!3709)))) e!2320799)))

(declare-fun b!3751932 () Bool)

(assert (=> b!3751932 (= e!2320799 (inv!53556 (right!31301 (left!30971 (left!30971 t!3709)))))))

(declare-fun b!3751933 () Bool)

(declare-fun e!2320800 () Bool)

(assert (=> b!3751933 (= e!2320799 e!2320800)))

(declare-fun res!1520529 () Bool)

(assert (=> b!3751933 (= res!1520529 (not ((_ is Leaf!18980) (right!31301 (left!30971 (left!30971 t!3709))))))))

(assert (=> b!3751933 (=> res!1520529 e!2320800)))

(declare-fun b!3751934 () Bool)

(assert (=> b!3751934 (= e!2320800 (inv!53558 (right!31301 (left!30971 (left!30971 t!3709)))))))

(assert (= (and d!1094499 c!649401) b!3751932))

(assert (= (and d!1094499 (not c!649401)) b!3751933))

(assert (= (and b!3751933 (not res!1520529)) b!3751934))

(declare-fun m!4242981 () Bool)

(assert (=> b!3751932 m!4242981))

(declare-fun m!4242983 () Bool)

(assert (=> b!3751934 m!4242983))

(assert (=> b!3751703 d!1094499))

(declare-fun d!1094501 () Bool)

(declare-fun lt!1299926 () Int)

(assert (=> d!1094501 (= lt!1299926 (size!30099 (list!14738 (left!30971 (right!31301 t!3709)))))))

(assert (=> d!1094501 (= lt!1299926 (ite ((_ is Empty!12233) (left!30971 (right!31301 t!3709))) 0 (ite ((_ is Leaf!18980) (left!30971 (right!31301 t!3709))) (csize!24697 (left!30971 (right!31301 t!3709))) (csize!24696 (left!30971 (right!31301 t!3709))))))))

(assert (=> d!1094501 (= (size!30101 (left!30971 (right!31301 t!3709))) lt!1299926)))

(declare-fun bs!575408 () Bool)

(assert (= bs!575408 d!1094501))

(assert (=> bs!575408 m!4242291))

(assert (=> bs!575408 m!4242291))

(assert (=> bs!575408 m!4242387))

(assert (=> d!1094295 d!1094501))

(declare-fun d!1094503 () Bool)

(declare-fun lt!1299927 () Int)

(assert (=> d!1094503 (= lt!1299927 (size!30099 (list!14738 (right!31301 (right!31301 t!3709)))))))

(assert (=> d!1094503 (= lt!1299927 (ite ((_ is Empty!12233) (right!31301 (right!31301 t!3709))) 0 (ite ((_ is Leaf!18980) (right!31301 (right!31301 t!3709))) (csize!24697 (right!31301 (right!31301 t!3709))) (csize!24696 (right!31301 (right!31301 t!3709))))))))

(assert (=> d!1094503 (= (size!30101 (right!31301 (right!31301 t!3709))) lt!1299927)))

(declare-fun bs!575409 () Bool)

(assert (= bs!575409 d!1094503))

(assert (=> bs!575409 m!4242293))

(assert (=> bs!575409 m!4242293))

(assert (=> bs!575409 m!4242389))

(assert (=> d!1094295 d!1094503))

(declare-fun d!1094507 () Bool)

(assert (=> d!1094507 (= (max!0 (height!1742 (left!30971 (left!30971 t!3709))) (height!1742 (right!31301 (left!30971 t!3709)))) (ite (< (height!1742 (left!30971 (left!30971 t!3709))) (height!1742 (right!31301 (left!30971 t!3709)))) (height!1742 (right!31301 (left!30971 t!3709))) (height!1742 (left!30971 (left!30971 t!3709)))))))

(assert (=> b!3751566 d!1094507))

(declare-fun d!1094509 () Bool)

(assert (=> d!1094509 (= (height!1742 (left!30971 (left!30971 t!3709))) (ite ((_ is Empty!12233) (left!30971 (left!30971 t!3709))) 0 (ite ((_ is Leaf!18980) (left!30971 (left!30971 t!3709))) 1 (cheight!12444 (left!30971 (left!30971 t!3709))))))))

(assert (=> b!3751566 d!1094509))

(declare-fun d!1094511 () Bool)

(assert (=> d!1094511 (= (height!1742 (right!31301 (left!30971 t!3709))) (ite ((_ is Empty!12233) (right!31301 (left!30971 t!3709))) 0 (ite ((_ is Leaf!18980) (right!31301 (left!30971 t!3709))) 1 (cheight!12444 (right!31301 (left!30971 t!3709))))))))

(assert (=> b!3751566 d!1094511))

(declare-fun d!1094513 () Bool)

(declare-fun res!1520530 () Bool)

(declare-fun e!2320802 () Bool)

(assert (=> d!1094513 (=> (not res!1520530) (not e!2320802))))

(assert (=> d!1094513 (= res!1520530 (= (csize!24696 (right!31301 (left!30971 t!3709))) (+ (size!30101 (left!30971 (right!31301 (left!30971 t!3709)))) (size!30101 (right!31301 (right!31301 (left!30971 t!3709)))))))))

(assert (=> d!1094513 (= (inv!53556 (right!31301 (left!30971 t!3709))) e!2320802)))

(declare-fun b!3751937 () Bool)

(declare-fun res!1520531 () Bool)

(assert (=> b!3751937 (=> (not res!1520531) (not e!2320802))))

(assert (=> b!3751937 (= res!1520531 (and (not (= (left!30971 (right!31301 (left!30971 t!3709))) Empty!12233)) (not (= (right!31301 (right!31301 (left!30971 t!3709))) Empty!12233))))))

(declare-fun b!3751938 () Bool)

(declare-fun res!1520532 () Bool)

(assert (=> b!3751938 (=> (not res!1520532) (not e!2320802))))

(assert (=> b!3751938 (= res!1520532 (= (cheight!12444 (right!31301 (left!30971 t!3709))) (+ (max!0 (height!1742 (left!30971 (right!31301 (left!30971 t!3709)))) (height!1742 (right!31301 (right!31301 (left!30971 t!3709))))) 1)))))

(declare-fun b!3751939 () Bool)

(assert (=> b!3751939 (= e!2320802 (<= 0 (cheight!12444 (right!31301 (left!30971 t!3709)))))))

(assert (= (and d!1094513 res!1520530) b!3751937))

(assert (= (and b!3751937 res!1520531) b!3751938))

(assert (= (and b!3751938 res!1520532) b!3751939))

(declare-fun m!4243001 () Bool)

(assert (=> d!1094513 m!4243001))

(declare-fun m!4243003 () Bool)

(assert (=> d!1094513 m!4243003))

(declare-fun m!4243005 () Bool)

(assert (=> b!3751938 m!4243005))

(declare-fun m!4243007 () Bool)

(assert (=> b!3751938 m!4243007))

(assert (=> b!3751938 m!4243005))

(assert (=> b!3751938 m!4243007))

(declare-fun m!4243009 () Bool)

(assert (=> b!3751938 m!4243009))

(assert (=> b!3751609 d!1094513))

(declare-fun d!1094519 () Bool)

(declare-fun e!2320805 () Bool)

(assert (=> d!1094519 e!2320805))

(declare-fun res!1520533 () Bool)

(assert (=> d!1094519 (=> (not res!1520533) (not e!2320805))))

(declare-fun lt!1299928 () List!40131)

(assert (=> d!1094519 (= res!1520533 (= (content!5865 lt!1299928) ((_ map or) (content!5865 (t!303124 (list!14738 (left!30971 t!3709)))) (content!5865 (list!14738 (right!31301 t!3709))))))))

(declare-fun e!2320806 () List!40131)

(assert (=> d!1094519 (= lt!1299928 e!2320806)))

(declare-fun c!649405 () Bool)

(assert (=> d!1094519 (= c!649405 ((_ is Nil!40007) (t!303124 (list!14738 (left!30971 t!3709)))))))

(assert (=> d!1094519 (= (++!9901 (t!303124 (list!14738 (left!30971 t!3709))) (list!14738 (right!31301 t!3709))) lt!1299928)))

(declare-fun b!3751944 () Bool)

(assert (=> b!3751944 (= e!2320806 (list!14738 (right!31301 t!3709)))))

(declare-fun b!3751946 () Bool)

(declare-fun res!1520534 () Bool)

(assert (=> b!3751946 (=> (not res!1520534) (not e!2320805))))

(assert (=> b!3751946 (= res!1520534 (= (size!30099 lt!1299928) (+ (size!30099 (t!303124 (list!14738 (left!30971 t!3709)))) (size!30099 (list!14738 (right!31301 t!3709))))))))

(declare-fun b!3751945 () Bool)

(assert (=> b!3751945 (= e!2320806 (Cons!40007 (h!45427 (t!303124 (list!14738 (left!30971 t!3709)))) (++!9901 (t!303124 (t!303124 (list!14738 (left!30971 t!3709)))) (list!14738 (right!31301 t!3709)))))))

(declare-fun b!3751947 () Bool)

(assert (=> b!3751947 (= e!2320805 (or (not (= (list!14738 (right!31301 t!3709)) Nil!40007)) (= lt!1299928 (t!303124 (list!14738 (left!30971 t!3709))))))))

(assert (= (and d!1094519 c!649405) b!3751944))

(assert (= (and d!1094519 (not c!649405)) b!3751945))

(assert (= (and d!1094519 res!1520533) b!3751946))

(assert (= (and b!3751946 res!1520534) b!3751947))

(declare-fun m!4243017 () Bool)

(assert (=> d!1094519 m!4243017))

(declare-fun m!4243019 () Bool)

(assert (=> d!1094519 m!4243019))

(assert (=> d!1094519 m!4242241))

(assert (=> d!1094519 m!4242457))

(declare-fun m!4243021 () Bool)

(assert (=> b!3751946 m!4243021))

(assert (=> b!3751946 m!4242789))

(assert (=> b!3751946 m!4242241))

(assert (=> b!3751946 m!4242463))

(assert (=> b!3751945 m!4242241))

(declare-fun m!4243023 () Bool)

(assert (=> b!3751945 m!4243023))

(assert (=> b!3751637 d!1094519))

(declare-fun d!1094525 () Bool)

(declare-fun lt!1299930 () Int)

(assert (=> d!1094525 (= lt!1299930 (size!30099 (list!14738 (left!30971 t!3709))))))

(assert (=> d!1094525 (= lt!1299930 (ite ((_ is Empty!12233) (left!30971 t!3709)) 0 (ite ((_ is Leaf!18980) (left!30971 t!3709)) (csize!24697 (left!30971 t!3709)) (csize!24696 (left!30971 t!3709)))))))

(assert (=> d!1094525 (= (size!30101 (left!30971 t!3709)) lt!1299930)))

(declare-fun bs!575410 () Bool)

(assert (= bs!575410 d!1094525))

(assert (=> bs!575410 m!4242239))

(assert (=> bs!575410 m!4242239))

(assert (=> bs!575410 m!4242461))

(assert (=> d!1094331 d!1094525))

(declare-fun d!1094529 () Bool)

(declare-fun lt!1299931 () Int)

(assert (=> d!1094529 (= lt!1299931 (size!30099 (list!14738 (right!31301 t!3709))))))

(assert (=> d!1094529 (= lt!1299931 (ite ((_ is Empty!12233) (right!31301 t!3709)) 0 (ite ((_ is Leaf!18980) (right!31301 t!3709)) (csize!24697 (right!31301 t!3709)) (csize!24696 (right!31301 t!3709)))))))

(assert (=> d!1094529 (= (size!30101 (right!31301 t!3709)) lt!1299931)))

(declare-fun bs!575411 () Bool)

(assert (= bs!575411 d!1094529))

(assert (=> bs!575411 m!4242241))

(assert (=> bs!575411 m!4242241))

(assert (=> bs!575411 m!4242463))

(assert (=> d!1094331 d!1094529))

(declare-fun d!1094531 () Bool)

(assert (=> d!1094531 (= (list!14740 (xs!15435 (right!31301 (right!31301 t!3709)))) (innerList!12293 (xs!15435 (right!31301 (right!31301 t!3709)))))))

(assert (=> b!3751598 d!1094531))

(declare-fun d!1094535 () Bool)

(declare-fun lt!1299933 () Int)

(assert (=> d!1094535 (>= lt!1299933 0)))

(declare-fun e!2320810 () Int)

(assert (=> d!1094535 (= lt!1299933 e!2320810)))

(declare-fun c!649408 () Bool)

(assert (=> d!1094535 (= c!649408 ((_ is Nil!40007) (list!14740 (xs!15435 (right!31301 t!3709)))))))

(assert (=> d!1094535 (= (size!30099 (list!14740 (xs!15435 (right!31301 t!3709)))) lt!1299933)))

(declare-fun b!3751954 () Bool)

(assert (=> b!3751954 (= e!2320810 0)))

(declare-fun b!3751955 () Bool)

(assert (=> b!3751955 (= e!2320810 (+ 1 (size!30099 (t!303124 (list!14740 (xs!15435 (right!31301 t!3709)))))))))

(assert (= (and d!1094535 c!649408) b!3751954))

(assert (= (and d!1094535 (not c!649408)) b!3751955))

(declare-fun m!4243031 () Bool)

(assert (=> b!3751955 m!4243031))

(assert (=> d!1094323 d!1094535))

(assert (=> d!1094323 d!1094313))

(assert (=> b!3751679 d!1094535))

(assert (=> b!3751679 d!1094313))

(declare-fun d!1094539 () Bool)

(assert (=> d!1094539 (= (inv!53555 (xs!15435 (right!31301 (left!30971 t!3709)))) (<= (size!30099 (innerList!12293 (xs!15435 (right!31301 (left!30971 t!3709))))) 2147483647))))

(declare-fun bs!575414 () Bool)

(assert (= bs!575414 d!1094539))

(declare-fun m!4243035 () Bool)

(assert (=> bs!575414 m!4243035))

(assert (=> b!3751707 d!1094539))

(declare-fun d!1094541 () Bool)

(assert (=> d!1094541 (= (list!14740 (xs!15435 (left!30971 (left!30971 t!3709)))) (innerList!12293 (xs!15435 (left!30971 (left!30971 t!3709)))))))

(assert (=> b!3751667 d!1094541))

(declare-fun d!1094545 () Bool)

(assert (=> d!1094545 (= (inv!53555 (xs!15435 (left!30971 (right!31301 t!3709)))) (<= (size!30099 (innerList!12293 (xs!15435 (left!30971 (right!31301 t!3709))))) 2147483647))))

(declare-fun bs!575415 () Bool)

(assert (= bs!575415 d!1094545))

(declare-fun m!4243037 () Bool)

(assert (=> bs!575415 m!4243037))

(assert (=> b!3751698 d!1094545))

(declare-fun d!1094547 () Bool)

(declare-fun c!649409 () Bool)

(assert (=> d!1094547 (= c!649409 ((_ is Node!12233) (left!30971 (right!31301 (right!31301 t!3709)))))))

(declare-fun e!2320811 () Bool)

(assert (=> d!1094547 (= (inv!53554 (left!30971 (right!31301 (right!31301 t!3709)))) e!2320811)))

(declare-fun b!3751956 () Bool)

(assert (=> b!3751956 (= e!2320811 (inv!53556 (left!30971 (right!31301 (right!31301 t!3709)))))))

(declare-fun b!3751957 () Bool)

(declare-fun e!2320812 () Bool)

(assert (=> b!3751957 (= e!2320811 e!2320812)))

(declare-fun res!1520537 () Bool)

(assert (=> b!3751957 (= res!1520537 (not ((_ is Leaf!18980) (left!30971 (right!31301 (right!31301 t!3709))))))))

(assert (=> b!3751957 (=> res!1520537 e!2320812)))

(declare-fun b!3751958 () Bool)

(assert (=> b!3751958 (= e!2320812 (inv!53558 (left!30971 (right!31301 (right!31301 t!3709)))))))

(assert (= (and d!1094547 c!649409) b!3751956))

(assert (= (and d!1094547 (not c!649409)) b!3751957))

(assert (= (and b!3751957 (not res!1520537)) b!3751958))

(declare-fun m!4243039 () Bool)

(assert (=> b!3751956 m!4243039))

(declare-fun m!4243041 () Bool)

(assert (=> b!3751958 m!4243041))

(assert (=> b!3751700 d!1094547))

(declare-fun d!1094549 () Bool)

(declare-fun c!649410 () Bool)

(assert (=> d!1094549 (= c!649410 ((_ is Node!12233) (right!31301 (right!31301 (right!31301 t!3709)))))))

(declare-fun e!2320813 () Bool)

(assert (=> d!1094549 (= (inv!53554 (right!31301 (right!31301 (right!31301 t!3709)))) e!2320813)))

(declare-fun b!3751959 () Bool)

(assert (=> b!3751959 (= e!2320813 (inv!53556 (right!31301 (right!31301 (right!31301 t!3709)))))))

(declare-fun b!3751960 () Bool)

(declare-fun e!2320814 () Bool)

(assert (=> b!3751960 (= e!2320813 e!2320814)))

(declare-fun res!1520538 () Bool)

(assert (=> b!3751960 (= res!1520538 (not ((_ is Leaf!18980) (right!31301 (right!31301 (right!31301 t!3709))))))))

(assert (=> b!3751960 (=> res!1520538 e!2320814)))

(declare-fun b!3751961 () Bool)

(assert (=> b!3751961 (= e!2320814 (inv!53558 (right!31301 (right!31301 (right!31301 t!3709)))))))

(assert (= (and d!1094549 c!649410) b!3751959))

(assert (= (and d!1094549 (not c!649410)) b!3751960))

(assert (= (and b!3751960 (not res!1520538)) b!3751961))

(declare-fun m!4243043 () Bool)

(assert (=> b!3751959 m!4243043))

(declare-fun m!4243045 () Bool)

(assert (=> b!3751961 m!4243045))

(assert (=> b!3751700 d!1094549))

(declare-fun d!1094551 () Bool)

(declare-fun lt!1299934 () Int)

(assert (=> d!1094551 (>= lt!1299934 0)))

(declare-fun e!2320815 () Int)

(assert (=> d!1094551 (= lt!1299934 e!2320815)))

(declare-fun c!649411 () Bool)

(assert (=> d!1094551 (= c!649411 ((_ is Nil!40007) (list!14740 (xs!15435 (left!30971 t!3709)))))))

(assert (=> d!1094551 (= (size!30099 (list!14740 (xs!15435 (left!30971 t!3709)))) lt!1299934)))

(declare-fun b!3751962 () Bool)

(assert (=> b!3751962 (= e!2320815 0)))

(declare-fun b!3751963 () Bool)

(assert (=> b!3751963 (= e!2320815 (+ 1 (size!30099 (t!303124 (list!14740 (xs!15435 (left!30971 t!3709)))))))))

(assert (= (and d!1094551 c!649411) b!3751962))

(assert (= (and d!1094551 (not c!649411)) b!3751963))

(declare-fun m!4243047 () Bool)

(assert (=> b!3751963 m!4243047))

(assert (=> d!1094265 d!1094551))

(assert (=> d!1094265 d!1094297))

(assert (=> b!3751572 d!1094551))

(assert (=> b!3751572 d!1094297))

(declare-fun d!1094553 () Bool)

(declare-fun e!2320816 () Bool)

(assert (=> d!1094553 e!2320816))

(declare-fun res!1520539 () Bool)

(assert (=> d!1094553 (=> (not res!1520539) (not e!2320816))))

(declare-fun lt!1299935 () List!40131)

(assert (=> d!1094553 (= res!1520539 (= (content!5865 lt!1299935) ((_ map or) (content!5865 (t!303124 (list!14738 (left!30971 (left!30971 t!3709))))) (content!5865 (list!14738 (right!31301 (left!30971 t!3709)))))))))

(declare-fun e!2320817 () List!40131)

(assert (=> d!1094553 (= lt!1299935 e!2320817)))

(declare-fun c!649412 () Bool)

(assert (=> d!1094553 (= c!649412 ((_ is Nil!40007) (t!303124 (list!14738 (left!30971 (left!30971 t!3709))))))))

(assert (=> d!1094553 (= (++!9901 (t!303124 (list!14738 (left!30971 (left!30971 t!3709)))) (list!14738 (right!31301 (left!30971 t!3709)))) lt!1299935)))

(declare-fun b!3751964 () Bool)

(assert (=> b!3751964 (= e!2320817 (list!14738 (right!31301 (left!30971 t!3709))))))

(declare-fun b!3751966 () Bool)

(declare-fun res!1520540 () Bool)

(assert (=> b!3751966 (=> (not res!1520540) (not e!2320816))))

(assert (=> b!3751966 (= res!1520540 (= (size!30099 lt!1299935) (+ (size!30099 (t!303124 (list!14738 (left!30971 (left!30971 t!3709))))) (size!30099 (list!14738 (right!31301 (left!30971 t!3709)))))))))

(declare-fun b!3751965 () Bool)

(assert (=> b!3751965 (= e!2320817 (Cons!40007 (h!45427 (t!303124 (list!14738 (left!30971 (left!30971 t!3709))))) (++!9901 (t!303124 (t!303124 (list!14738 (left!30971 (left!30971 t!3709))))) (list!14738 (right!31301 (left!30971 t!3709))))))))

(declare-fun b!3751967 () Bool)

(assert (=> b!3751967 (= e!2320816 (or (not (= (list!14738 (right!31301 (left!30971 t!3709))) Nil!40007)) (= lt!1299935 (t!303124 (list!14738 (left!30971 (left!30971 t!3709)))))))))

(assert (= (and d!1094553 c!649412) b!3751964))

(assert (= (and d!1094553 (not c!649412)) b!3751965))

(assert (= (and d!1094553 res!1520539) b!3751966))

(assert (= (and b!3751966 res!1520540) b!3751967))

(declare-fun m!4243049 () Bool)

(assert (=> d!1094553 m!4243049))

(declare-fun m!4243051 () Bool)

(assert (=> d!1094553 m!4243051))

(assert (=> d!1094553 m!4242285))

(assert (=> d!1094553 m!4242505))

(declare-fun m!4243053 () Bool)

(assert (=> b!3751966 m!4243053))

(assert (=> b!3751966 m!4242737))

(assert (=> b!3751966 m!4242285))

(assert (=> b!3751966 m!4242511))

(assert (=> b!3751965 m!4242285))

(declare-fun m!4243055 () Bool)

(assert (=> b!3751965 m!4243055))

(assert (=> b!3751662 d!1094553))

(assert (=> d!1094305 d!1094299))

(assert (=> d!1094305 d!1094301))

(assert (=> d!1094305 d!1094303))

(declare-fun d!1094555 () Bool)

(declare-fun c!649413 () Bool)

(assert (=> d!1094555 (= c!649413 ((_ is Nil!40007) lt!1299891))))

(declare-fun e!2320818 () (InoxSet T!69098))

(assert (=> d!1094555 (= (content!5865 lt!1299891) e!2320818)))

(declare-fun b!3751968 () Bool)

(assert (=> b!3751968 (= e!2320818 ((as const (Array T!69098 Bool)) false))))

(declare-fun b!3751969 () Bool)

(assert (=> b!3751969 (= e!2320818 ((_ map or) (store ((as const (Array T!69098 Bool)) false) (h!45427 lt!1299891) true) (content!5865 (t!303124 lt!1299891))))))

(assert (= (and d!1094555 c!649413) b!3751968))

(assert (= (and d!1094555 (not c!649413)) b!3751969))

(declare-fun m!4243057 () Bool)

(assert (=> b!3751969 m!4243057))

(declare-fun m!4243059 () Bool)

(assert (=> b!3751969 m!4243059))

(assert (=> d!1094315 d!1094555))

(declare-fun d!1094557 () Bool)

(declare-fun c!649414 () Bool)

(assert (=> d!1094557 (= c!649414 ((_ is Nil!40007) (list!14738 (left!30971 (left!30971 t!3709)))))))

(declare-fun e!2320819 () (InoxSet T!69098))

(assert (=> d!1094557 (= (content!5865 (list!14738 (left!30971 (left!30971 t!3709)))) e!2320819)))

(declare-fun b!3751970 () Bool)

(assert (=> b!3751970 (= e!2320819 ((as const (Array T!69098 Bool)) false))))

(declare-fun b!3751971 () Bool)

(assert (=> b!3751971 (= e!2320819 ((_ map or) (store ((as const (Array T!69098 Bool)) false) (h!45427 (list!14738 (left!30971 (left!30971 t!3709)))) true) (content!5865 (t!303124 (list!14738 (left!30971 (left!30971 t!3709)))))))))

(assert (= (and d!1094557 c!649414) b!3751970))

(assert (= (and d!1094557 (not c!649414)) b!3751971))

(declare-fun m!4243061 () Bool)

(assert (=> b!3751971 m!4243061))

(assert (=> b!3751971 m!4243051))

(assert (=> d!1094315 d!1094557))

(declare-fun d!1094559 () Bool)

(declare-fun c!649415 () Bool)

(assert (=> d!1094559 (= c!649415 ((_ is Nil!40007) (list!14738 (right!31301 (left!30971 t!3709)))))))

(declare-fun e!2320820 () (InoxSet T!69098))

(assert (=> d!1094559 (= (content!5865 (list!14738 (right!31301 (left!30971 t!3709)))) e!2320820)))

(declare-fun b!3751972 () Bool)

(assert (=> b!3751972 (= e!2320820 ((as const (Array T!69098 Bool)) false))))

(declare-fun b!3751973 () Bool)

(assert (=> b!3751973 (= e!2320820 ((_ map or) (store ((as const (Array T!69098 Bool)) false) (h!45427 (list!14738 (right!31301 (left!30971 t!3709)))) true) (content!5865 (t!303124 (list!14738 (right!31301 (left!30971 t!3709)))))))))

(assert (= (and d!1094559 c!649415) b!3751972))

(assert (= (and d!1094559 (not c!649415)) b!3751973))

(declare-fun m!4243063 () Bool)

(assert (=> b!3751973 m!4243063))

(declare-fun m!4243065 () Bool)

(assert (=> b!3751973 m!4243065))

(assert (=> d!1094315 d!1094559))

(assert (=> b!3751547 d!1094281))

(assert (=> b!3751547 d!1094283))

(declare-fun d!1094561 () Bool)

(assert (=> d!1094561 (= (inv!53555 (xs!15435 (left!30971 (left!30971 t!3709)))) (<= (size!30099 (innerList!12293 (xs!15435 (left!30971 (left!30971 t!3709))))) 2147483647))))

(declare-fun bs!575416 () Bool)

(assert (= bs!575416 d!1094561))

(declare-fun m!4243067 () Bool)

(assert (=> bs!575416 m!4243067))

(assert (=> b!3751704 d!1094561))

(declare-fun d!1094563 () Bool)

(assert (=> d!1094563 (= (list!14740 (xs!15435 (right!31301 (left!30971 t!3709)))) (innerList!12293 (xs!15435 (right!31301 (left!30971 t!3709)))))))

(assert (=> b!3751673 d!1094563))

(declare-fun d!1094565 () Bool)

(declare-fun c!649416 () Bool)

(assert (=> d!1094565 (= c!649416 ((_ is Nil!40007) lt!1299889))))

(declare-fun e!2320821 () (InoxSet T!69098))

(assert (=> d!1094565 (= (content!5865 lt!1299889) e!2320821)))

(declare-fun b!3751974 () Bool)

(assert (=> b!3751974 (= e!2320821 ((as const (Array T!69098 Bool)) false))))

(declare-fun b!3751975 () Bool)

(assert (=> b!3751975 (= e!2320821 ((_ map or) (store ((as const (Array T!69098 Bool)) false) (h!45427 lt!1299889) true) (content!5865 (t!303124 lt!1299889))))))

(assert (= (and d!1094565 c!649416) b!3751974))

(assert (= (and d!1094565 (not c!649416)) b!3751975))

(declare-fun m!4243069 () Bool)

(assert (=> b!3751975 m!4243069))

(declare-fun m!4243071 () Bool)

(assert (=> b!3751975 m!4243071))

(assert (=> d!1094301 d!1094565))

(declare-fun d!1094567 () Bool)

(declare-fun c!649417 () Bool)

(assert (=> d!1094567 (= c!649417 ((_ is Nil!40007) (list!14738 (left!30971 t!3709))))))

(declare-fun e!2320822 () (InoxSet T!69098))

(assert (=> d!1094567 (= (content!5865 (list!14738 (left!30971 t!3709))) e!2320822)))

(declare-fun b!3751976 () Bool)

(assert (=> b!3751976 (= e!2320822 ((as const (Array T!69098 Bool)) false))))

(declare-fun b!3751977 () Bool)

(assert (=> b!3751977 (= e!2320822 ((_ map or) (store ((as const (Array T!69098 Bool)) false) (h!45427 (list!14738 (left!30971 t!3709))) true) (content!5865 (t!303124 (list!14738 (left!30971 t!3709))))))))

(assert (= (and d!1094567 c!649417) b!3751976))

(assert (= (and d!1094567 (not c!649417)) b!3751977))

(declare-fun m!4243073 () Bool)

(assert (=> b!3751977 m!4243073))

(assert (=> b!3751977 m!4243019))

(assert (=> d!1094301 d!1094567))

(declare-fun d!1094571 () Bool)

(declare-fun c!649418 () Bool)

(assert (=> d!1094571 (= c!649418 ((_ is Nil!40007) (list!14738 (right!31301 t!3709))))))

(declare-fun e!2320823 () (InoxSet T!69098))

(assert (=> d!1094571 (= (content!5865 (list!14738 (right!31301 t!3709))) e!2320823)))

(declare-fun b!3751978 () Bool)

(assert (=> b!3751978 (= e!2320823 ((as const (Array T!69098 Bool)) false))))

(declare-fun b!3751979 () Bool)

(assert (=> b!3751979 (= e!2320823 ((_ map or) (store ((as const (Array T!69098 Bool)) false) (h!45427 (list!14738 (right!31301 t!3709))) true) (content!5865 (t!303124 (list!14738 (right!31301 t!3709))))))))

(assert (= (and d!1094571 c!649418) b!3751978))

(assert (= (and d!1094571 (not c!649418)) b!3751979))

(declare-fun m!4243075 () Bool)

(assert (=> b!3751979 m!4243075))

(declare-fun m!4243077 () Bool)

(assert (=> b!3751979 m!4243077))

(assert (=> d!1094301 d!1094571))

(declare-fun d!1094573 () Bool)

(declare-fun res!1520541 () Bool)

(declare-fun e!2320825 () Bool)

(assert (=> d!1094573 (=> res!1520541 e!2320825)))

(assert (=> d!1094573 (= res!1520541 ((_ is Nil!40007) (t!303124 (list!14738 (right!31301 t!3709)))))))

(assert (=> d!1094573 (= (forall!8227 (t!303124 (list!14738 (right!31301 t!3709))) p!1451) e!2320825)))

(declare-fun b!3751982 () Bool)

(declare-fun e!2320826 () Bool)

(assert (=> b!3751982 (= e!2320825 e!2320826)))

(declare-fun res!1520542 () Bool)

(assert (=> b!3751982 (=> (not res!1520542) (not e!2320826))))

(assert (=> b!3751982 (= res!1520542 (dynLambda!17300 p!1451 (h!45427 (t!303124 (list!14738 (right!31301 t!3709))))))))

(declare-fun b!3751983 () Bool)

(assert (=> b!3751983 (= e!2320826 (forall!8227 (t!303124 (t!303124 (list!14738 (right!31301 t!3709)))) p!1451))))

(assert (= (and d!1094573 (not res!1520541)) b!3751982))

(assert (= (and b!3751982 res!1520542) b!3751983))

(declare-fun b_lambda!110021 () Bool)

(assert (=> (not b_lambda!110021) (not b!3751982)))

(declare-fun t!303150 () Bool)

(declare-fun tb!214667 () Bool)

(assert (=> (and start!352280 (= p!1451 p!1451) t!303150) tb!214667))

(declare-fun result!262148 () Bool)

(assert (=> tb!214667 (= result!262148 true)))

(assert (=> b!3751982 t!303150))

(declare-fun b_and!278825 () Bool)

(assert (= b_and!278823 (and (=> t!303150 result!262148) b_and!278825)))

(declare-fun m!4243083 () Bool)

(assert (=> b!3751982 m!4243083))

(declare-fun m!4243085 () Bool)

(assert (=> b!3751983 m!4243085))

(assert (=> b!3751622 d!1094573))

(declare-fun d!1094579 () Bool)

(declare-fun lt!1299940 () Int)

(assert (=> d!1094579 (>= lt!1299940 0)))

(declare-fun e!2320828 () Int)

(assert (=> d!1094579 (= lt!1299940 e!2320828)))

(declare-fun c!649421 () Bool)

(assert (=> d!1094579 (= c!649421 ((_ is Nil!40007) (t!303124 (innerList!12293 (xs!15435 t!3709)))))))

(assert (=> d!1094579 (= (size!30099 (t!303124 (innerList!12293 (xs!15435 t!3709)))) lt!1299940)))

(declare-fun b!3751986 () Bool)

(assert (=> b!3751986 (= e!2320828 0)))

(declare-fun b!3751987 () Bool)

(assert (=> b!3751987 (= e!2320828 (+ 1 (size!30099 (t!303124 (t!303124 (innerList!12293 (xs!15435 t!3709)))))))))

(assert (= (and d!1094579 c!649421) b!3751986))

(assert (= (and d!1094579 (not c!649421)) b!3751987))

(declare-fun m!4243091 () Bool)

(assert (=> b!3751987 m!4243091))

(assert (=> b!3751690 d!1094579))

(declare-fun b!3751990 () Bool)

(declare-fun e!2320830 () Bool)

(declare-fun tp!1145675 () Bool)

(assert (=> b!3751990 (= e!2320830 (and tp_is_empty!19047 tp!1145675))))

(assert (=> b!3751699 (= tp!1145646 e!2320830)))

(assert (= (and b!3751699 ((_ is Cons!40007) (innerList!12293 (xs!15435 (left!30971 (right!31301 t!3709)))))) b!3751990))

(declare-fun e!2320832 () Bool)

(declare-fun tp!1145676 () Bool)

(declare-fun b!3751991 () Bool)

(declare-fun tp!1145678 () Bool)

(assert (=> b!3751991 (= e!2320832 (and (inv!53554 (left!30971 (left!30971 (right!31301 (left!30971 t!3709))))) tp!1145678 (inv!53554 (right!31301 (left!30971 (right!31301 (left!30971 t!3709))))) tp!1145676))))

(declare-fun b!3751993 () Bool)

(declare-fun e!2320831 () Bool)

(declare-fun tp!1145677 () Bool)

(assert (=> b!3751993 (= e!2320831 tp!1145677)))

(declare-fun b!3751992 () Bool)

(assert (=> b!3751992 (= e!2320832 (and (inv!53555 (xs!15435 (left!30971 (right!31301 (left!30971 t!3709))))) e!2320831))))

(assert (=> b!3751706 (= tp!1145656 (and (inv!53554 (left!30971 (right!31301 (left!30971 t!3709)))) e!2320832))))

(assert (= (and b!3751706 ((_ is Node!12233) (left!30971 (right!31301 (left!30971 t!3709))))) b!3751991))

(assert (= b!3751992 b!3751993))

(assert (= (and b!3751706 ((_ is Leaf!18980) (left!30971 (right!31301 (left!30971 t!3709))))) b!3751992))

(declare-fun m!4243097 () Bool)

(assert (=> b!3751991 m!4243097))

(declare-fun m!4243099 () Bool)

(assert (=> b!3751991 m!4243099))

(declare-fun m!4243101 () Bool)

(assert (=> b!3751992 m!4243101))

(assert (=> b!3751706 m!4242587))

(declare-fun tp!1145681 () Bool)

(declare-fun tp!1145679 () Bool)

(declare-fun e!2320836 () Bool)

(declare-fun b!3751998 () Bool)

(assert (=> b!3751998 (= e!2320836 (and (inv!53554 (left!30971 (right!31301 (right!31301 (left!30971 t!3709))))) tp!1145681 (inv!53554 (right!31301 (right!31301 (right!31301 (left!30971 t!3709))))) tp!1145679))))

(declare-fun b!3752000 () Bool)

(declare-fun e!2320835 () Bool)

(declare-fun tp!1145680 () Bool)

(assert (=> b!3752000 (= e!2320835 tp!1145680)))

(declare-fun b!3751999 () Bool)

(assert (=> b!3751999 (= e!2320836 (and (inv!53555 (xs!15435 (right!31301 (right!31301 (left!30971 t!3709))))) e!2320835))))

(assert (=> b!3751706 (= tp!1145654 (and (inv!53554 (right!31301 (right!31301 (left!30971 t!3709)))) e!2320836))))

(assert (= (and b!3751706 ((_ is Node!12233) (right!31301 (right!31301 (left!30971 t!3709))))) b!3751998))

(assert (= b!3751999 b!3752000))

(assert (= (and b!3751706 ((_ is Leaf!18980) (right!31301 (right!31301 (left!30971 t!3709))))) b!3751999))

(declare-fun m!4243111 () Bool)

(assert (=> b!3751998 m!4243111))

(declare-fun m!4243113 () Bool)

(assert (=> b!3751998 m!4243113))

(declare-fun m!4243117 () Bool)

(assert (=> b!3751999 m!4243117))

(assert (=> b!3751706 m!4242589))

(declare-fun tp!1145684 () Bool)

(declare-fun b!3752001 () Bool)

(declare-fun e!2320838 () Bool)

(declare-fun tp!1145682 () Bool)

(assert (=> b!3752001 (= e!2320838 (and (inv!53554 (left!30971 (left!30971 (right!31301 (right!31301 t!3709))))) tp!1145684 (inv!53554 (right!31301 (left!30971 (right!31301 (right!31301 t!3709))))) tp!1145682))))

(declare-fun b!3752003 () Bool)

(declare-fun e!2320837 () Bool)

(declare-fun tp!1145683 () Bool)

(assert (=> b!3752003 (= e!2320837 tp!1145683)))

(declare-fun b!3752002 () Bool)

(assert (=> b!3752002 (= e!2320838 (and (inv!53555 (xs!15435 (left!30971 (right!31301 (right!31301 t!3709))))) e!2320837))))

(assert (=> b!3751700 (= tp!1145650 (and (inv!53554 (left!30971 (right!31301 (right!31301 t!3709)))) e!2320838))))

(assert (= (and b!3751700 ((_ is Node!12233) (left!30971 (right!31301 (right!31301 t!3709))))) b!3752001))

(assert (= b!3752002 b!3752003))

(assert (= (and b!3751700 ((_ is Leaf!18980) (left!30971 (right!31301 (right!31301 t!3709))))) b!3752002))

(declare-fun m!4243123 () Bool)

(assert (=> b!3752001 m!4243123))

(declare-fun m!4243125 () Bool)

(assert (=> b!3752001 m!4243125))

(declare-fun m!4243127 () Bool)

(assert (=> b!3752002 m!4243127))

(assert (=> b!3751700 m!4242575))

(declare-fun tp!1145687 () Bool)

(declare-fun tp!1145685 () Bool)

(declare-fun e!2320842 () Bool)

(declare-fun b!3752008 () Bool)

(assert (=> b!3752008 (= e!2320842 (and (inv!53554 (left!30971 (right!31301 (right!31301 (right!31301 t!3709))))) tp!1145687 (inv!53554 (right!31301 (right!31301 (right!31301 (right!31301 t!3709))))) tp!1145685))))

(declare-fun b!3752010 () Bool)

(declare-fun e!2320841 () Bool)

(declare-fun tp!1145686 () Bool)

(assert (=> b!3752010 (= e!2320841 tp!1145686)))

(declare-fun b!3752009 () Bool)

(assert (=> b!3752009 (= e!2320842 (and (inv!53555 (xs!15435 (right!31301 (right!31301 (right!31301 t!3709))))) e!2320841))))

(assert (=> b!3751700 (= tp!1145648 (and (inv!53554 (right!31301 (right!31301 (right!31301 t!3709)))) e!2320842))))

(assert (= (and b!3751700 ((_ is Node!12233) (right!31301 (right!31301 (right!31301 t!3709))))) b!3752008))

(assert (= b!3752009 b!3752010))

(assert (= (and b!3751700 ((_ is Leaf!18980) (right!31301 (right!31301 (right!31301 t!3709))))) b!3752009))

(declare-fun m!4243133 () Bool)

(assert (=> b!3752008 m!4243133))

(declare-fun m!4243136 () Bool)

(assert (=> b!3752008 m!4243136))

(declare-fun m!4243139 () Bool)

(assert (=> b!3752009 m!4243139))

(assert (=> b!3751700 m!4242577))

(declare-fun b!3752011 () Bool)

(declare-fun e!2320843 () Bool)

(declare-fun tp!1145688 () Bool)

(assert (=> b!3752011 (= e!2320843 (and tp_is_empty!19047 tp!1145688))))

(assert (=> b!3751705 (= tp!1145652 e!2320843)))

(assert (= (and b!3751705 ((_ is Cons!40007) (innerList!12293 (xs!15435 (left!30971 (left!30971 t!3709)))))) b!3752011))

(declare-fun e!2320845 () Bool)

(declare-fun b!3752012 () Bool)

(declare-fun tp!1145689 () Bool)

(declare-fun tp!1145691 () Bool)

(assert (=> b!3752012 (= e!2320845 (and (inv!53554 (left!30971 (left!30971 (left!30971 (right!31301 t!3709))))) tp!1145691 (inv!53554 (right!31301 (left!30971 (left!30971 (right!31301 t!3709))))) tp!1145689))))

(declare-fun b!3752014 () Bool)

(declare-fun e!2320844 () Bool)

(declare-fun tp!1145690 () Bool)

(assert (=> b!3752014 (= e!2320844 tp!1145690)))

(declare-fun b!3752013 () Bool)

(assert (=> b!3752013 (= e!2320845 (and (inv!53555 (xs!15435 (left!30971 (left!30971 (right!31301 t!3709))))) e!2320844))))

(assert (=> b!3751697 (= tp!1145647 (and (inv!53554 (left!30971 (left!30971 (right!31301 t!3709)))) e!2320845))))

(assert (= (and b!3751697 ((_ is Node!12233) (left!30971 (left!30971 (right!31301 t!3709))))) b!3752012))

(assert (= b!3752013 b!3752014))

(assert (= (and b!3751697 ((_ is Leaf!18980) (left!30971 (left!30971 (right!31301 t!3709))))) b!3752013))

(declare-fun m!4243143 () Bool)

(assert (=> b!3752012 m!4243143))

(declare-fun m!4243145 () Bool)

(assert (=> b!3752012 m!4243145))

(declare-fun m!4243147 () Bool)

(assert (=> b!3752013 m!4243147))

(assert (=> b!3751697 m!4242569))

(declare-fun e!2320849 () Bool)

(declare-fun tp!1145694 () Bool)

(declare-fun tp!1145692 () Bool)

(declare-fun b!3752019 () Bool)

(assert (=> b!3752019 (= e!2320849 (and (inv!53554 (left!30971 (right!31301 (left!30971 (right!31301 t!3709))))) tp!1145694 (inv!53554 (right!31301 (right!31301 (left!30971 (right!31301 t!3709))))) tp!1145692))))

(declare-fun b!3752021 () Bool)

(declare-fun e!2320848 () Bool)

(declare-fun tp!1145693 () Bool)

(assert (=> b!3752021 (= e!2320848 tp!1145693)))

(declare-fun b!3752020 () Bool)

(assert (=> b!3752020 (= e!2320849 (and (inv!53555 (xs!15435 (right!31301 (left!30971 (right!31301 t!3709))))) e!2320848))))

(assert (=> b!3751697 (= tp!1145645 (and (inv!53554 (right!31301 (left!30971 (right!31301 t!3709)))) e!2320849))))

(assert (= (and b!3751697 ((_ is Node!12233) (right!31301 (left!30971 (right!31301 t!3709))))) b!3752019))

(assert (= b!3752020 b!3752021))

(assert (= (and b!3751697 ((_ is Leaf!18980) (right!31301 (left!30971 (right!31301 t!3709))))) b!3752020))

(declare-fun m!4243157 () Bool)

(assert (=> b!3752019 m!4243157))

(declare-fun m!4243159 () Bool)

(assert (=> b!3752019 m!4243159))

(declare-fun m!4243161 () Bool)

(assert (=> b!3752020 m!4243161))

(assert (=> b!3751697 m!4242571))

(declare-fun b!3752024 () Bool)

(declare-fun e!2320851 () Bool)

(declare-fun tp!1145695 () Bool)

(assert (=> b!3752024 (= e!2320851 (and tp_is_empty!19047 tp!1145695))))

(assert (=> b!3751715 (= tp!1145659 e!2320851)))

(assert (= (and b!3751715 ((_ is Cons!40007) (t!303124 (t!303124 (innerList!12293 (xs!15435 t!3709)))))) b!3752024))

(declare-fun b!3752025 () Bool)

(declare-fun e!2320852 () Bool)

(declare-fun tp!1145696 () Bool)

(assert (=> b!3752025 (= e!2320852 (and tp_is_empty!19047 tp!1145696))))

(assert (=> b!3751708 (= tp!1145655 e!2320852)))

(assert (= (and b!3751708 ((_ is Cons!40007) (innerList!12293 (xs!15435 (right!31301 (left!30971 t!3709)))))) b!3752025))

(declare-fun b!3752026 () Bool)

(declare-fun e!2320853 () Bool)

(declare-fun tp!1145697 () Bool)

(assert (=> b!3752026 (= e!2320853 (and tp_is_empty!19047 tp!1145697))))

(assert (=> b!3751713 (= tp!1145657 e!2320853)))

(assert (= (and b!3751713 ((_ is Cons!40007) (t!303124 (innerList!12293 (xs!15435 (right!31301 t!3709)))))) b!3752026))

(declare-fun tp!1145698 () Bool)

(declare-fun e!2320855 () Bool)

(declare-fun tp!1145700 () Bool)

(declare-fun b!3752027 () Bool)

(assert (=> b!3752027 (= e!2320855 (and (inv!53554 (left!30971 (left!30971 (left!30971 (left!30971 t!3709))))) tp!1145700 (inv!53554 (right!31301 (left!30971 (left!30971 (left!30971 t!3709))))) tp!1145698))))

(declare-fun b!3752029 () Bool)

(declare-fun e!2320854 () Bool)

(declare-fun tp!1145699 () Bool)

(assert (=> b!3752029 (= e!2320854 tp!1145699)))

(declare-fun b!3752028 () Bool)

(assert (=> b!3752028 (= e!2320855 (and (inv!53555 (xs!15435 (left!30971 (left!30971 (left!30971 t!3709))))) e!2320854))))

(assert (=> b!3751703 (= tp!1145653 (and (inv!53554 (left!30971 (left!30971 (left!30971 t!3709)))) e!2320855))))

(assert (= (and b!3751703 ((_ is Node!12233) (left!30971 (left!30971 (left!30971 t!3709))))) b!3752027))

(assert (= b!3752028 b!3752029))

(assert (= (and b!3751703 ((_ is Leaf!18980) (left!30971 (left!30971 (left!30971 t!3709))))) b!3752028))

(declare-fun m!4243165 () Bool)

(assert (=> b!3752027 m!4243165))

(declare-fun m!4243167 () Bool)

(assert (=> b!3752027 m!4243167))

(declare-fun m!4243169 () Bool)

(assert (=> b!3752028 m!4243169))

(assert (=> b!3751703 m!4242581))

(declare-fun tp!1145703 () Bool)

(declare-fun tp!1145701 () Bool)

(declare-fun b!3752033 () Bool)

(declare-fun e!2320858 () Bool)

(assert (=> b!3752033 (= e!2320858 (and (inv!53554 (left!30971 (right!31301 (left!30971 (left!30971 t!3709))))) tp!1145703 (inv!53554 (right!31301 (right!31301 (left!30971 (left!30971 t!3709))))) tp!1145701))))

(declare-fun b!3752035 () Bool)

(declare-fun e!2320857 () Bool)

(declare-fun tp!1145702 () Bool)

(assert (=> b!3752035 (= e!2320857 tp!1145702)))

(declare-fun b!3752034 () Bool)

(assert (=> b!3752034 (= e!2320858 (and (inv!53555 (xs!15435 (right!31301 (left!30971 (left!30971 t!3709))))) e!2320857))))

(assert (=> b!3751703 (= tp!1145651 (and (inv!53554 (right!31301 (left!30971 (left!30971 t!3709)))) e!2320858))))

(assert (= (and b!3751703 ((_ is Node!12233) (right!31301 (left!30971 (left!30971 t!3709))))) b!3752033))

(assert (= b!3752034 b!3752035))

(assert (= (and b!3751703 ((_ is Leaf!18980) (right!31301 (left!30971 (left!30971 t!3709))))) b!3752034))

(declare-fun m!4243173 () Bool)

(assert (=> b!3752033 m!4243173))

(declare-fun m!4243177 () Bool)

(assert (=> b!3752033 m!4243177))

(declare-fun m!4243179 () Bool)

(assert (=> b!3752034 m!4243179))

(assert (=> b!3751703 m!4242583))

(declare-fun b!3752036 () Bool)

(declare-fun e!2320859 () Bool)

(declare-fun tp!1145704 () Bool)

(assert (=> b!3752036 (= e!2320859 (and tp_is_empty!19047 tp!1145704))))

(assert (=> b!3751702 (= tp!1145649 e!2320859)))

(assert (= (and b!3751702 ((_ is Cons!40007) (innerList!12293 (xs!15435 (right!31301 (right!31301 t!3709)))))) b!3752036))

(declare-fun b!3752037 () Bool)

(declare-fun e!2320860 () Bool)

(declare-fun tp!1145705 () Bool)

(assert (=> b!3752037 (= e!2320860 (and tp_is_empty!19047 tp!1145705))))

(assert (=> b!3751714 (= tp!1145658 e!2320860)))

(assert (= (and b!3751714 ((_ is Cons!40007) (t!303124 (innerList!12293 (xs!15435 (left!30971 t!3709)))))) b!3752037))

(declare-fun b_lambda!110023 () Bool)

(assert (= b_lambda!110019 (or (and start!352280 b_free!100415) b_lambda!110023)))

(declare-fun b_lambda!110025 () Bool)

(assert (= b_lambda!110021 (or (and start!352280 b_free!100415) b_lambda!110025)))

(declare-fun b_lambda!110027 () Bool)

(assert (= b_lambda!110015 (or (and start!352280 b_free!100415) b_lambda!110027)))

(check-sat (not b!3751955) (not b!3752028) (not b!3751777) (not b!3752003) (not d!1094375) (not b!3751706) (not b!3752010) (not b!3751879) (not b!3751926) (not b!3751977) b_and!278825 (not b!3751835) (not b_lambda!110023) (not b!3751958) (not b!3751973) (not b!3751774) (not b!3751697) (not b!3751999) (not b!3751854) (not b!3751961) (not b!3751928) (not b!3751773) (not b!3752026) (not b!3752029) (not b!3751971) (not b!3751785) (not b!3752009) (not b!3751703) (not d!1094503) (not b!3751887) (not b!3751779) (not b!3751815) (not b!3751840) (not b!3751860) (not b!3751817) (not b!3751959) (not b_lambda!110003) (not b!3751819) (not d!1094469) (not b!3752035) (not b!3751768) (not b!3751990) (not b!3751805) (not b!3751998) (not d!1094373) (not d!1094389) (not b!3752034) (not b!3751945) (not d!1094429) (not b!3751769) (not b!3751932) (not b!3751850) (not b!3751814) (not b!3751824) (not b!3751833) (not b!3752025) (not b!3751896) (not b!3751956) (not b!3752027) (not b!3751991) tp_is_empty!19047 (not b!3751796) (not b!3751983) (not b!3752024) (not b_lambda!110027) (not b!3752001) (not b!3752020) (not b_next!101119) (not b!3751934) (not d!1094501) (not b!3751938) (not b!3752019) (not b!3751798) (not b!3751946) (not b!3751966) (not b!3752011) (not d!1094473) (not b!3751832) (not b!3751794) (not b!3751893) (not b!3751863) (not b!3751894) (not d!1094483) (not b!3751852) (not d!1094409) (not b!3752013) (not d!1094363) (not b_lambda!110005) (not b!3751963) (not b!3751829) (not b!3752014) (not b!3751993) (not b!3751778) (not b!3751837) (not b!3751900) (not b!3752037) (not b!3751792) (not b!3751811) (not b!3751925) (not b!3751888) (not b!3752002) (not d!1094401) (not d!1094425) (not b!3751897) (not b!3752021) (not b_lambda!110007) (not b!3752008) (not d!1094553) (not b!3752033) (not b!3751992) (not d!1094403) (not d!1094545) (not b!3751789) (not b_lambda!110025) (not d!1094539) (not b!3752036) (not b!3751965) (not d!1094529) (not b!3751969) (not b!3752012) (not b!3751920) (not b!3751802) (not b!3751810) (not b!3751987) (not d!1094431) (not d!1094387) (not b!3751800) (not d!1094513) (not b!3751975) (not b!3751855) (not b!3751823) (not b!3751781) (not b!3751782) (not b!3752000) (not b!3751979) (not d!1094455) (not b!3751842) (not b!3751806) (not b!3751844) (not d!1094561) (not b!3751878) (not b!3751828) (not b!3751784) (not b!3751918) (not b!3751821) (not b!3751788) (not b!3751700) (not d!1094519) (not d!1094525) (not b!3751839))
(check-sat b_and!278825 (not b_next!101119))
