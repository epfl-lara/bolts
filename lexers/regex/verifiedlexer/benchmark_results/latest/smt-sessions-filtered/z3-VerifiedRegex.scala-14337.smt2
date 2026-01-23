; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!748926 () Bool)

(assert start!748926)

(declare-fun b!7935426 () Bool)

(declare-fun e!4682472 () Bool)

(declare-fun tp!2359452 () Bool)

(assert (=> b!7935426 (= e!4682472 tp!2359452)))

(declare-fun b!7935427 () Bool)

(declare-fun res!3148381 () Bool)

(declare-fun e!4682471 () Bool)

(assert (=> b!7935427 (=> (not res!3148381) (not e!4682471))))

(declare-datatypes ((T!145888 0))(
  ( (T!145889 (val!32072 Int)) )
))
(declare-datatypes ((List!74584 0))(
  ( (Nil!74460) (Cons!74460 (h!80908 T!145888) (t!390275 List!74584)) )
))
(declare-datatypes ((IArray!31889 0))(
  ( (IArray!31890 (innerList!16002 List!74584)) )
))
(declare-datatypes ((Conc!15914 0))(
  ( (Node!15914 (left!56891 Conc!15914) (right!57221 Conc!15914) (csize!32058 Int) (cheight!16125 Int)) (Leaf!30252 (xs!19310 IArray!31889) (csize!32059 Int)) (Empty!15914) )
))
(declare-fun t!4440 () Conc!15914)

(get-info :version)

(assert (=> b!7935427 (= res!3148381 (and (not ((_ is Empty!15914) t!4440)) (not ((_ is Node!15914) t!4440)) (>= (csize!32059 t!4440) 512)))))

(declare-fun b!7935428 () Bool)

(declare-fun v!5484 () T!145888)

(declare-fun inv!95785 (Conc!15914) Bool)

(declare-fun fill!295 (Int T!145888) IArray!31889)

(assert (=> b!7935428 (= e!4682471 (not (inv!95785 (Leaf!30252 (fill!295 1 v!5484) 1))))))

(declare-fun b!7935429 () Bool)

(declare-fun e!4682470 () Bool)

(declare-fun inv!95786 (IArray!31889) Bool)

(assert (=> b!7935429 (= e!4682470 (and (inv!95786 (xs!19310 t!4440)) e!4682472))))

(declare-fun tp!2359453 () Bool)

(declare-fun b!7935430 () Bool)

(declare-fun tp!2359454 () Bool)

(assert (=> b!7935430 (= e!4682470 (and (inv!95785 (left!56891 t!4440)) tp!2359453 (inv!95785 (right!57221 t!4440)) tp!2359454))))

(declare-fun res!3148382 () Bool)

(assert (=> start!748926 (=> (not res!3148382) (not e!4682471))))

(declare-fun isBalanced!4540 (Conc!15914) Bool)

(assert (=> start!748926 (= res!3148382 (isBalanced!4540 t!4440))))

(assert (=> start!748926 e!4682471))

(assert (=> start!748926 (and (inv!95785 t!4440) e!4682470)))

(declare-fun tp_is_empty!53253 () Bool)

(assert (=> start!748926 tp_is_empty!53253))

(assert (= (and start!748926 res!3148382) b!7935427))

(assert (= (and b!7935427 res!3148381) b!7935428))

(assert (= (and start!748926 ((_ is Node!15914) t!4440)) b!7935430))

(assert (= b!7935429 b!7935426))

(assert (= (and start!748926 ((_ is Leaf!30252) t!4440)) b!7935429))

(declare-fun m!8323266 () Bool)

(assert (=> b!7935428 m!8323266))

(declare-fun m!8323268 () Bool)

(assert (=> b!7935428 m!8323268))

(declare-fun m!8323270 () Bool)

(assert (=> b!7935429 m!8323270))

(declare-fun m!8323272 () Bool)

(assert (=> b!7935430 m!8323272))

(declare-fun m!8323274 () Bool)

(assert (=> b!7935430 m!8323274))

(declare-fun m!8323276 () Bool)

(assert (=> start!748926 m!8323276))

(declare-fun m!8323278 () Bool)

(assert (=> start!748926 m!8323278))

(check-sat tp_is_empty!53253 (not b!7935429) (not b!7935430) (not b!7935428) (not b!7935426) (not start!748926))
(check-sat)
(get-model)

(declare-fun d!2372774 () Bool)

(declare-fun size!43281 (List!74584) Int)

(assert (=> d!2372774 (= (inv!95786 (xs!19310 t!4440)) (<= (size!43281 (innerList!16002 (xs!19310 t!4440))) 2147483647))))

(declare-fun bs!1969149 () Bool)

(assert (= bs!1969149 d!2372774))

(declare-fun m!8323280 () Bool)

(assert (=> bs!1969149 m!8323280))

(assert (=> b!7935429 d!2372774))

(declare-fun d!2372776 () Bool)

(declare-fun c!1457879 () Bool)

(assert (=> d!2372776 (= c!1457879 ((_ is Node!15914) (left!56891 t!4440)))))

(declare-fun e!4682485 () Bool)

(assert (=> d!2372776 (= (inv!95785 (left!56891 t!4440)) e!4682485)))

(declare-fun b!7935449 () Bool)

(declare-fun inv!95789 (Conc!15914) Bool)

(assert (=> b!7935449 (= e!4682485 (inv!95789 (left!56891 t!4440)))))

(declare-fun b!7935450 () Bool)

(declare-fun e!4682486 () Bool)

(assert (=> b!7935450 (= e!4682485 e!4682486)))

(declare-fun res!3148389 () Bool)

(assert (=> b!7935450 (= res!3148389 (not ((_ is Leaf!30252) (left!56891 t!4440))))))

(assert (=> b!7935450 (=> res!3148389 e!4682486)))

(declare-fun b!7935451 () Bool)

(declare-fun inv!95790 (Conc!15914) Bool)

(assert (=> b!7935451 (= e!4682486 (inv!95790 (left!56891 t!4440)))))

(assert (= (and d!2372776 c!1457879) b!7935449))

(assert (= (and d!2372776 (not c!1457879)) b!7935450))

(assert (= (and b!7935450 (not res!3148389)) b!7935451))

(declare-fun m!8323290 () Bool)

(assert (=> b!7935449 m!8323290))

(declare-fun m!8323292 () Bool)

(assert (=> b!7935451 m!8323292))

(assert (=> b!7935430 d!2372776))

(declare-fun d!2372782 () Bool)

(declare-fun c!1457880 () Bool)

(assert (=> d!2372782 (= c!1457880 ((_ is Node!15914) (right!57221 t!4440)))))

(declare-fun e!4682487 () Bool)

(assert (=> d!2372782 (= (inv!95785 (right!57221 t!4440)) e!4682487)))

(declare-fun b!7935452 () Bool)

(assert (=> b!7935452 (= e!4682487 (inv!95789 (right!57221 t!4440)))))

(declare-fun b!7935453 () Bool)

(declare-fun e!4682488 () Bool)

(assert (=> b!7935453 (= e!4682487 e!4682488)))

(declare-fun res!3148390 () Bool)

(assert (=> b!7935453 (= res!3148390 (not ((_ is Leaf!30252) (right!57221 t!4440))))))

(assert (=> b!7935453 (=> res!3148390 e!4682488)))

(declare-fun b!7935454 () Bool)

(assert (=> b!7935454 (= e!4682488 (inv!95790 (right!57221 t!4440)))))

(assert (= (and d!2372782 c!1457880) b!7935452))

(assert (= (and d!2372782 (not c!1457880)) b!7935453))

(assert (= (and b!7935453 (not res!3148390)) b!7935454))

(declare-fun m!8323294 () Bool)

(assert (=> b!7935452 m!8323294))

(declare-fun m!8323296 () Bool)

(assert (=> b!7935454 m!8323296))

(assert (=> b!7935430 d!2372782))

(declare-fun d!2372784 () Bool)

(declare-fun c!1457881 () Bool)

(assert (=> d!2372784 (= c!1457881 ((_ is Node!15914) (Leaf!30252 (fill!295 1 v!5484) 1)))))

(declare-fun e!4682489 () Bool)

(assert (=> d!2372784 (= (inv!95785 (Leaf!30252 (fill!295 1 v!5484) 1)) e!4682489)))

(declare-fun b!7935455 () Bool)

(assert (=> b!7935455 (= e!4682489 (inv!95789 (Leaf!30252 (fill!295 1 v!5484) 1)))))

(declare-fun b!7935456 () Bool)

(declare-fun e!4682490 () Bool)

(assert (=> b!7935456 (= e!4682489 e!4682490)))

(declare-fun res!3148391 () Bool)

(assert (=> b!7935456 (= res!3148391 (not ((_ is Leaf!30252) (Leaf!30252 (fill!295 1 v!5484) 1))))))

(assert (=> b!7935456 (=> res!3148391 e!4682490)))

(declare-fun b!7935457 () Bool)

(assert (=> b!7935457 (= e!4682490 (inv!95790 (Leaf!30252 (fill!295 1 v!5484) 1)))))

(assert (= (and d!2372784 c!1457881) b!7935455))

(assert (= (and d!2372784 (not c!1457881)) b!7935456))

(assert (= (and b!7935456 (not res!3148391)) b!7935457))

(declare-fun m!8323298 () Bool)

(assert (=> b!7935455 m!8323298))

(declare-fun m!8323300 () Bool)

(assert (=> b!7935457 m!8323300))

(assert (=> b!7935428 d!2372784))

(declare-fun d!2372786 () Bool)

(declare-fun lt!2695237 () IArray!31889)

(declare-fun fill!296 (Int T!145888) List!74584)

(assert (=> d!2372786 (= lt!2695237 (IArray!31890 (fill!296 1 v!5484)))))

(declare-fun choose!59860 (Int T!145888) IArray!31889)

(assert (=> d!2372786 (= lt!2695237 (choose!59860 1 v!5484))))

(assert (=> d!2372786 (and (<= 0 1) (<= 1 2147483647))))

(assert (=> d!2372786 (= (fill!295 1 v!5484) lt!2695237)))

(declare-fun bs!1969150 () Bool)

(assert (= bs!1969150 d!2372786))

(declare-fun m!8323302 () Bool)

(assert (=> bs!1969150 m!8323302))

(declare-fun m!8323304 () Bool)

(assert (=> bs!1969150 m!8323304))

(assert (=> b!7935428 d!2372786))

(declare-fun b!7935496 () Bool)

(declare-fun res!3148425 () Bool)

(declare-fun e!4682506 () Bool)

(assert (=> b!7935496 (=> (not res!3148425) (not e!4682506))))

(assert (=> b!7935496 (= res!3148425 (isBalanced!4540 (left!56891 t!4440)))))

(declare-fun b!7935497 () Bool)

(declare-fun res!3148429 () Bool)

(assert (=> b!7935497 (=> (not res!3148429) (not e!4682506))))

(assert (=> b!7935497 (= res!3148429 (isBalanced!4540 (right!57221 t!4440)))))

(declare-fun b!7935498 () Bool)

(declare-fun isEmpty!42800 (Conc!15914) Bool)

(assert (=> b!7935498 (= e!4682506 (not (isEmpty!42800 (right!57221 t!4440))))))

(declare-fun b!7935499 () Bool)

(declare-fun res!3148426 () Bool)

(assert (=> b!7935499 (=> (not res!3148426) (not e!4682506))))

(assert (=> b!7935499 (= res!3148426 (not (isEmpty!42800 (left!56891 t!4440))))))

(declare-fun d!2372788 () Bool)

(declare-fun res!3148428 () Bool)

(declare-fun e!4682505 () Bool)

(assert (=> d!2372788 (=> res!3148428 e!4682505)))

(assert (=> d!2372788 (= res!3148428 (not ((_ is Node!15914) t!4440)))))

(assert (=> d!2372788 (= (isBalanced!4540 t!4440) e!4682505)))

(declare-fun b!7935500 () Bool)

(declare-fun res!3148424 () Bool)

(assert (=> b!7935500 (=> (not res!3148424) (not e!4682506))))

(declare-fun height!2229 (Conc!15914) Int)

(assert (=> b!7935500 (= res!3148424 (<= (- (height!2229 (left!56891 t!4440)) (height!2229 (right!57221 t!4440))) 1))))

(declare-fun b!7935501 () Bool)

(assert (=> b!7935501 (= e!4682505 e!4682506)))

(declare-fun res!3148427 () Bool)

(assert (=> b!7935501 (=> (not res!3148427) (not e!4682506))))

(assert (=> b!7935501 (= res!3148427 (<= (- 1) (- (height!2229 (left!56891 t!4440)) (height!2229 (right!57221 t!4440)))))))

(assert (= (and d!2372788 (not res!3148428)) b!7935501))

(assert (= (and b!7935501 res!3148427) b!7935500))

(assert (= (and b!7935500 res!3148424) b!7935496))

(assert (= (and b!7935496 res!3148425) b!7935497))

(assert (= (and b!7935497 res!3148429) b!7935499))

(assert (= (and b!7935499 res!3148426) b!7935498))

(declare-fun m!8323332 () Bool)

(assert (=> b!7935498 m!8323332))

(declare-fun m!8323334 () Bool)

(assert (=> b!7935500 m!8323334))

(declare-fun m!8323336 () Bool)

(assert (=> b!7935500 m!8323336))

(assert (=> b!7935501 m!8323334))

(assert (=> b!7935501 m!8323336))

(declare-fun m!8323338 () Bool)

(assert (=> b!7935496 m!8323338))

(declare-fun m!8323340 () Bool)

(assert (=> b!7935497 m!8323340))

(declare-fun m!8323342 () Bool)

(assert (=> b!7935499 m!8323342))

(assert (=> start!748926 d!2372788))

(declare-fun d!2372798 () Bool)

(declare-fun c!1457884 () Bool)

(assert (=> d!2372798 (= c!1457884 ((_ is Node!15914) t!4440))))

(declare-fun e!4682511 () Bool)

(assert (=> d!2372798 (= (inv!95785 t!4440) e!4682511)))

(declare-fun b!7935508 () Bool)

(assert (=> b!7935508 (= e!4682511 (inv!95789 t!4440))))

(declare-fun b!7935509 () Bool)

(declare-fun e!4682512 () Bool)

(assert (=> b!7935509 (= e!4682511 e!4682512)))

(declare-fun res!3148430 () Bool)

(assert (=> b!7935509 (= res!3148430 (not ((_ is Leaf!30252) t!4440)))))

(assert (=> b!7935509 (=> res!3148430 e!4682512)))

(declare-fun b!7935510 () Bool)

(assert (=> b!7935510 (= e!4682512 (inv!95790 t!4440))))

(assert (= (and d!2372798 c!1457884) b!7935508))

(assert (= (and d!2372798 (not c!1457884)) b!7935509))

(assert (= (and b!7935509 (not res!3148430)) b!7935510))

(declare-fun m!8323344 () Bool)

(assert (=> b!7935508 m!8323344))

(declare-fun m!8323346 () Bool)

(assert (=> b!7935510 m!8323346))

(assert (=> start!748926 d!2372798))

(declare-fun e!4682524 () Bool)

(declare-fun b!7935530 () Bool)

(declare-fun tp!2359476 () Bool)

(declare-fun tp!2359478 () Bool)

(assert (=> b!7935530 (= e!4682524 (and (inv!95785 (left!56891 (left!56891 t!4440))) tp!2359476 (inv!95785 (right!57221 (left!56891 t!4440))) tp!2359478))))

(declare-fun b!7935532 () Bool)

(declare-fun e!4682525 () Bool)

(declare-fun tp!2359477 () Bool)

(assert (=> b!7935532 (= e!4682525 tp!2359477)))

(declare-fun b!7935531 () Bool)

(assert (=> b!7935531 (= e!4682524 (and (inv!95786 (xs!19310 (left!56891 t!4440))) e!4682525))))

(assert (=> b!7935430 (= tp!2359453 (and (inv!95785 (left!56891 t!4440)) e!4682524))))

(assert (= (and b!7935430 ((_ is Node!15914) (left!56891 t!4440))) b!7935530))

(assert (= b!7935531 b!7935532))

(assert (= (and b!7935430 ((_ is Leaf!30252) (left!56891 t!4440))) b!7935531))

(declare-fun m!8323360 () Bool)

(assert (=> b!7935530 m!8323360))

(declare-fun m!8323362 () Bool)

(assert (=> b!7935530 m!8323362))

(declare-fun m!8323364 () Bool)

(assert (=> b!7935531 m!8323364))

(assert (=> b!7935430 m!8323272))

(declare-fun e!4682526 () Bool)

(declare-fun tp!2359481 () Bool)

(declare-fun b!7935533 () Bool)

(declare-fun tp!2359479 () Bool)

(assert (=> b!7935533 (= e!4682526 (and (inv!95785 (left!56891 (right!57221 t!4440))) tp!2359479 (inv!95785 (right!57221 (right!57221 t!4440))) tp!2359481))))

(declare-fun b!7935535 () Bool)

(declare-fun e!4682527 () Bool)

(declare-fun tp!2359480 () Bool)

(assert (=> b!7935535 (= e!4682527 tp!2359480)))

(declare-fun b!7935534 () Bool)

(assert (=> b!7935534 (= e!4682526 (and (inv!95786 (xs!19310 (right!57221 t!4440))) e!4682527))))

(assert (=> b!7935430 (= tp!2359454 (and (inv!95785 (right!57221 t!4440)) e!4682526))))

(assert (= (and b!7935430 ((_ is Node!15914) (right!57221 t!4440))) b!7935533))

(assert (= b!7935534 b!7935535))

(assert (= (and b!7935430 ((_ is Leaf!30252) (right!57221 t!4440))) b!7935534))

(declare-fun m!8323366 () Bool)

(assert (=> b!7935533 m!8323366))

(declare-fun m!8323368 () Bool)

(assert (=> b!7935533 m!8323368))

(declare-fun m!8323370 () Bool)

(assert (=> b!7935534 m!8323370))

(assert (=> b!7935430 m!8323274))

(declare-fun b!7935540 () Bool)

(declare-fun e!4682530 () Bool)

(declare-fun tp!2359484 () Bool)

(assert (=> b!7935540 (= e!4682530 (and tp_is_empty!53253 tp!2359484))))

(assert (=> b!7935426 (= tp!2359452 e!4682530)))

(assert (= (and b!7935426 ((_ is Cons!74460) (innerList!16002 (xs!19310 t!4440)))) b!7935540))

(check-sat (not b!7935451) (not b!7935430) (not d!2372774) (not b!7935531) (not b!7935530) (not b!7935496) (not b!7935532) (not b!7935508) (not b!7935449) (not b!7935457) (not b!7935533) tp_is_empty!53253 (not b!7935454) (not b!7935497) (not b!7935455) (not b!7935540) (not d!2372786) (not b!7935535) (not b!7935498) (not b!7935500) (not b!7935501) (not b!7935534) (not b!7935510) (not b!7935499) (not b!7935452))
(check-sat)
(get-model)

(declare-fun d!2372800 () Bool)

(declare-fun res!3148435 () Bool)

(declare-fun e!4682533 () Bool)

(assert (=> d!2372800 (=> (not res!3148435) (not e!4682533))))

(declare-fun list!19436 (IArray!31889) List!74584)

(assert (=> d!2372800 (= res!3148435 (<= (size!43281 (list!19436 (xs!19310 (Leaf!30252 (fill!295 1 v!5484) 1)))) 512))))

(assert (=> d!2372800 (= (inv!95790 (Leaf!30252 (fill!295 1 v!5484) 1)) e!4682533)))

(declare-fun b!7935545 () Bool)

(declare-fun res!3148436 () Bool)

(assert (=> b!7935545 (=> (not res!3148436) (not e!4682533))))

(assert (=> b!7935545 (= res!3148436 (= (csize!32059 (Leaf!30252 (fill!295 1 v!5484) 1)) (size!43281 (list!19436 (xs!19310 (Leaf!30252 (fill!295 1 v!5484) 1))))))))

(declare-fun b!7935546 () Bool)

(assert (=> b!7935546 (= e!4682533 (and (> (csize!32059 (Leaf!30252 (fill!295 1 v!5484) 1)) 0) (<= (csize!32059 (Leaf!30252 (fill!295 1 v!5484) 1)) 512)))))

(assert (= (and d!2372800 res!3148435) b!7935545))

(assert (= (and b!7935545 res!3148436) b!7935546))

(declare-fun m!8323372 () Bool)

(assert (=> d!2372800 m!8323372))

(assert (=> d!2372800 m!8323372))

(declare-fun m!8323374 () Bool)

(assert (=> d!2372800 m!8323374))

(assert (=> b!7935545 m!8323372))

(assert (=> b!7935545 m!8323372))

(assert (=> b!7935545 m!8323374))

(assert (=> b!7935457 d!2372800))

(declare-fun d!2372802 () Bool)

(declare-fun c!1457885 () Bool)

(assert (=> d!2372802 (= c!1457885 ((_ is Node!15914) (left!56891 (left!56891 t!4440))))))

(declare-fun e!4682534 () Bool)

(assert (=> d!2372802 (= (inv!95785 (left!56891 (left!56891 t!4440))) e!4682534)))

(declare-fun b!7935547 () Bool)

(assert (=> b!7935547 (= e!4682534 (inv!95789 (left!56891 (left!56891 t!4440))))))

(declare-fun b!7935548 () Bool)

(declare-fun e!4682535 () Bool)

(assert (=> b!7935548 (= e!4682534 e!4682535)))

(declare-fun res!3148437 () Bool)

(assert (=> b!7935548 (= res!3148437 (not ((_ is Leaf!30252) (left!56891 (left!56891 t!4440)))))))

(assert (=> b!7935548 (=> res!3148437 e!4682535)))

(declare-fun b!7935549 () Bool)

(assert (=> b!7935549 (= e!4682535 (inv!95790 (left!56891 (left!56891 t!4440))))))

(assert (= (and d!2372802 c!1457885) b!7935547))

(assert (= (and d!2372802 (not c!1457885)) b!7935548))

(assert (= (and b!7935548 (not res!3148437)) b!7935549))

(declare-fun m!8323376 () Bool)

(assert (=> b!7935547 m!8323376))

(declare-fun m!8323378 () Bool)

(assert (=> b!7935549 m!8323378))

(assert (=> b!7935530 d!2372802))

(declare-fun d!2372806 () Bool)

(declare-fun c!1457886 () Bool)

(assert (=> d!2372806 (= c!1457886 ((_ is Node!15914) (right!57221 (left!56891 t!4440))))))

(declare-fun e!4682536 () Bool)

(assert (=> d!2372806 (= (inv!95785 (right!57221 (left!56891 t!4440))) e!4682536)))

(declare-fun b!7935550 () Bool)

(assert (=> b!7935550 (= e!4682536 (inv!95789 (right!57221 (left!56891 t!4440))))))

(declare-fun b!7935551 () Bool)

(declare-fun e!4682537 () Bool)

(assert (=> b!7935551 (= e!4682536 e!4682537)))

(declare-fun res!3148438 () Bool)

(assert (=> b!7935551 (= res!3148438 (not ((_ is Leaf!30252) (right!57221 (left!56891 t!4440)))))))

(assert (=> b!7935551 (=> res!3148438 e!4682537)))

(declare-fun b!7935552 () Bool)

(assert (=> b!7935552 (= e!4682537 (inv!95790 (right!57221 (left!56891 t!4440))))))

(assert (= (and d!2372806 c!1457886) b!7935550))

(assert (= (and d!2372806 (not c!1457886)) b!7935551))

(assert (= (and b!7935551 (not res!3148438)) b!7935552))

(declare-fun m!8323380 () Bool)

(assert (=> b!7935550 m!8323380))

(declare-fun m!8323382 () Bool)

(assert (=> b!7935552 m!8323382))

(assert (=> b!7935530 d!2372806))

(declare-fun d!2372808 () Bool)

(declare-fun res!3148439 () Bool)

(declare-fun e!4682538 () Bool)

(assert (=> d!2372808 (=> (not res!3148439) (not e!4682538))))

(assert (=> d!2372808 (= res!3148439 (<= (size!43281 (list!19436 (xs!19310 t!4440))) 512))))

(assert (=> d!2372808 (= (inv!95790 t!4440) e!4682538)))

(declare-fun b!7935553 () Bool)

(declare-fun res!3148440 () Bool)

(assert (=> b!7935553 (=> (not res!3148440) (not e!4682538))))

(assert (=> b!7935553 (= res!3148440 (= (csize!32059 t!4440) (size!43281 (list!19436 (xs!19310 t!4440)))))))

(declare-fun b!7935554 () Bool)

(assert (=> b!7935554 (= e!4682538 (and (> (csize!32059 t!4440) 0) (<= (csize!32059 t!4440) 512)))))

(assert (= (and d!2372808 res!3148439) b!7935553))

(assert (= (and b!7935553 res!3148440) b!7935554))

(declare-fun m!8323384 () Bool)

(assert (=> d!2372808 m!8323384))

(assert (=> d!2372808 m!8323384))

(declare-fun m!8323386 () Bool)

(assert (=> d!2372808 m!8323386))

(assert (=> b!7935553 m!8323384))

(assert (=> b!7935553 m!8323384))

(assert (=> b!7935553 m!8323386))

(assert (=> b!7935510 d!2372808))

(declare-fun d!2372810 () Bool)

(declare-fun res!3148459 () Bool)

(declare-fun e!4682545 () Bool)

(assert (=> d!2372810 (=> (not res!3148459) (not e!4682545))))

(declare-fun size!43284 (Conc!15914) Int)

(assert (=> d!2372810 (= res!3148459 (= (csize!32058 (Leaf!30252 (fill!295 1 v!5484) 1)) (+ (size!43284 (left!56891 (Leaf!30252 (fill!295 1 v!5484) 1))) (size!43284 (right!57221 (Leaf!30252 (fill!295 1 v!5484) 1))))))))

(assert (=> d!2372810 (= (inv!95789 (Leaf!30252 (fill!295 1 v!5484) 1)) e!4682545)))

(declare-fun b!7935573 () Bool)

(declare-fun res!3148460 () Bool)

(assert (=> b!7935573 (=> (not res!3148460) (not e!4682545))))

(assert (=> b!7935573 (= res!3148460 (and (not (= (left!56891 (Leaf!30252 (fill!295 1 v!5484) 1)) Empty!15914)) (not (= (right!57221 (Leaf!30252 (fill!295 1 v!5484) 1)) Empty!15914))))))

(declare-fun b!7935574 () Bool)

(declare-fun res!3148461 () Bool)

(assert (=> b!7935574 (=> (not res!3148461) (not e!4682545))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!7935574 (= res!3148461 (= (cheight!16125 (Leaf!30252 (fill!295 1 v!5484) 1)) (+ (max!0 (height!2229 (left!56891 (Leaf!30252 (fill!295 1 v!5484) 1))) (height!2229 (right!57221 (Leaf!30252 (fill!295 1 v!5484) 1)))) 1)))))

(declare-fun b!7935575 () Bool)

(assert (=> b!7935575 (= e!4682545 (<= 0 (cheight!16125 (Leaf!30252 (fill!295 1 v!5484) 1))))))

(assert (= (and d!2372810 res!3148459) b!7935573))

(assert (= (and b!7935573 res!3148460) b!7935574))

(assert (= (and b!7935574 res!3148461) b!7935575))

(declare-fun m!8323418 () Bool)

(assert (=> d!2372810 m!8323418))

(declare-fun m!8323420 () Bool)

(assert (=> d!2372810 m!8323420))

(declare-fun m!8323422 () Bool)

(assert (=> b!7935574 m!8323422))

(declare-fun m!8323424 () Bool)

(assert (=> b!7935574 m!8323424))

(assert (=> b!7935574 m!8323422))

(assert (=> b!7935574 m!8323424))

(declare-fun m!8323426 () Bool)

(assert (=> b!7935574 m!8323426))

(assert (=> b!7935455 d!2372810))

(declare-fun d!2372818 () Bool)

(declare-fun res!3148462 () Bool)

(declare-fun e!4682546 () Bool)

(assert (=> d!2372818 (=> (not res!3148462) (not e!4682546))))

(assert (=> d!2372818 (= res!3148462 (<= (size!43281 (list!19436 (xs!19310 (right!57221 t!4440)))) 512))))

(assert (=> d!2372818 (= (inv!95790 (right!57221 t!4440)) e!4682546)))

(declare-fun b!7935576 () Bool)

(declare-fun res!3148463 () Bool)

(assert (=> b!7935576 (=> (not res!3148463) (not e!4682546))))

(assert (=> b!7935576 (= res!3148463 (= (csize!32059 (right!57221 t!4440)) (size!43281 (list!19436 (xs!19310 (right!57221 t!4440))))))))

(declare-fun b!7935577 () Bool)

(assert (=> b!7935577 (= e!4682546 (and (> (csize!32059 (right!57221 t!4440)) 0) (<= (csize!32059 (right!57221 t!4440)) 512)))))

(assert (= (and d!2372818 res!3148462) b!7935576))

(assert (= (and b!7935576 res!3148463) b!7935577))

(declare-fun m!8323428 () Bool)

(assert (=> d!2372818 m!8323428))

(assert (=> d!2372818 m!8323428))

(declare-fun m!8323430 () Bool)

(assert (=> d!2372818 m!8323430))

(assert (=> b!7935576 m!8323428))

(assert (=> b!7935576 m!8323428))

(assert (=> b!7935576 m!8323430))

(assert (=> b!7935454 d!2372818))

(declare-fun d!2372820 () Bool)

(declare-fun res!3148464 () Bool)

(declare-fun e!4682547 () Bool)

(assert (=> d!2372820 (=> (not res!3148464) (not e!4682547))))

(assert (=> d!2372820 (= res!3148464 (= (csize!32058 t!4440) (+ (size!43284 (left!56891 t!4440)) (size!43284 (right!57221 t!4440)))))))

(assert (=> d!2372820 (= (inv!95789 t!4440) e!4682547)))

(declare-fun b!7935578 () Bool)

(declare-fun res!3148465 () Bool)

(assert (=> b!7935578 (=> (not res!3148465) (not e!4682547))))

(assert (=> b!7935578 (= res!3148465 (and (not (= (left!56891 t!4440) Empty!15914)) (not (= (right!57221 t!4440) Empty!15914))))))

(declare-fun b!7935579 () Bool)

(declare-fun res!3148466 () Bool)

(assert (=> b!7935579 (=> (not res!3148466) (not e!4682547))))

(assert (=> b!7935579 (= res!3148466 (= (cheight!16125 t!4440) (+ (max!0 (height!2229 (left!56891 t!4440)) (height!2229 (right!57221 t!4440))) 1)))))

(declare-fun b!7935580 () Bool)

(assert (=> b!7935580 (= e!4682547 (<= 0 (cheight!16125 t!4440)))))

(assert (= (and d!2372820 res!3148464) b!7935578))

(assert (= (and b!7935578 res!3148465) b!7935579))

(assert (= (and b!7935579 res!3148466) b!7935580))

(declare-fun m!8323432 () Bool)

(assert (=> d!2372820 m!8323432))

(declare-fun m!8323434 () Bool)

(assert (=> d!2372820 m!8323434))

(assert (=> b!7935579 m!8323334))

(assert (=> b!7935579 m!8323336))

(assert (=> b!7935579 m!8323334))

(assert (=> b!7935579 m!8323336))

(declare-fun m!8323436 () Bool)

(assert (=> b!7935579 m!8323436))

(assert (=> b!7935508 d!2372820))

(declare-fun d!2372822 () Bool)

(declare-fun lt!2695246 () Bool)

(declare-fun isEmpty!42802 (List!74584) Bool)

(declare-fun list!19438 (Conc!15914) List!74584)

(assert (=> d!2372822 (= lt!2695246 (isEmpty!42802 (list!19438 (right!57221 t!4440))))))

(assert (=> d!2372822 (= lt!2695246 (= (size!43284 (right!57221 t!4440)) 0))))

(assert (=> d!2372822 (= (isEmpty!42800 (right!57221 t!4440)) lt!2695246)))

(declare-fun bs!1969154 () Bool)

(assert (= bs!1969154 d!2372822))

(declare-fun m!8323440 () Bool)

(assert (=> bs!1969154 m!8323440))

(assert (=> bs!1969154 m!8323440))

(declare-fun m!8323442 () Bool)

(assert (=> bs!1969154 m!8323442))

(assert (=> bs!1969154 m!8323434))

(assert (=> b!7935498 d!2372822))

(declare-fun b!7935590 () Bool)

(declare-fun res!3148477 () Bool)

(declare-fun e!4682552 () Bool)

(assert (=> b!7935590 (=> (not res!3148477) (not e!4682552))))

(assert (=> b!7935590 (= res!3148477 (isBalanced!4540 (left!56891 (left!56891 t!4440))))))

(declare-fun b!7935591 () Bool)

(declare-fun res!3148481 () Bool)

(assert (=> b!7935591 (=> (not res!3148481) (not e!4682552))))

(assert (=> b!7935591 (= res!3148481 (isBalanced!4540 (right!57221 (left!56891 t!4440))))))

(declare-fun b!7935592 () Bool)

(assert (=> b!7935592 (= e!4682552 (not (isEmpty!42800 (right!57221 (left!56891 t!4440)))))))

(declare-fun b!7935593 () Bool)

(declare-fun res!3148478 () Bool)

(assert (=> b!7935593 (=> (not res!3148478) (not e!4682552))))

(assert (=> b!7935593 (= res!3148478 (not (isEmpty!42800 (left!56891 (left!56891 t!4440)))))))

(declare-fun d!2372824 () Bool)

(declare-fun res!3148480 () Bool)

(declare-fun e!4682551 () Bool)

(assert (=> d!2372824 (=> res!3148480 e!4682551)))

(assert (=> d!2372824 (= res!3148480 (not ((_ is Node!15914) (left!56891 t!4440))))))

(assert (=> d!2372824 (= (isBalanced!4540 (left!56891 t!4440)) e!4682551)))

(declare-fun b!7935594 () Bool)

(declare-fun res!3148476 () Bool)

(assert (=> b!7935594 (=> (not res!3148476) (not e!4682552))))

(assert (=> b!7935594 (= res!3148476 (<= (- (height!2229 (left!56891 (left!56891 t!4440))) (height!2229 (right!57221 (left!56891 t!4440)))) 1))))

(declare-fun b!7935595 () Bool)

(assert (=> b!7935595 (= e!4682551 e!4682552)))

(declare-fun res!3148479 () Bool)

(assert (=> b!7935595 (=> (not res!3148479) (not e!4682552))))

(assert (=> b!7935595 (= res!3148479 (<= (- 1) (- (height!2229 (left!56891 (left!56891 t!4440))) (height!2229 (right!57221 (left!56891 t!4440))))))))

(assert (= (and d!2372824 (not res!3148480)) b!7935595))

(assert (= (and b!7935595 res!3148479) b!7935594))

(assert (= (and b!7935594 res!3148476) b!7935590))

(assert (= (and b!7935590 res!3148477) b!7935591))

(assert (= (and b!7935591 res!3148481) b!7935593))

(assert (= (and b!7935593 res!3148478) b!7935592))

(declare-fun m!8323446 () Bool)

(assert (=> b!7935592 m!8323446))

(declare-fun m!8323448 () Bool)

(assert (=> b!7935594 m!8323448))

(declare-fun m!8323450 () Bool)

(assert (=> b!7935594 m!8323450))

(assert (=> b!7935595 m!8323448))

(assert (=> b!7935595 m!8323450))

(declare-fun m!8323452 () Bool)

(assert (=> b!7935590 m!8323452))

(declare-fun m!8323454 () Bool)

(assert (=> b!7935591 m!8323454))

(declare-fun m!8323456 () Bool)

(assert (=> b!7935593 m!8323456))

(assert (=> b!7935496 d!2372824))

(declare-fun b!7935596 () Bool)

(declare-fun res!3148483 () Bool)

(declare-fun e!4682554 () Bool)

(assert (=> b!7935596 (=> (not res!3148483) (not e!4682554))))

(assert (=> b!7935596 (= res!3148483 (isBalanced!4540 (left!56891 (right!57221 t!4440))))))

(declare-fun b!7935597 () Bool)

(declare-fun res!3148487 () Bool)

(assert (=> b!7935597 (=> (not res!3148487) (not e!4682554))))

(assert (=> b!7935597 (= res!3148487 (isBalanced!4540 (right!57221 (right!57221 t!4440))))))

(declare-fun b!7935598 () Bool)

(assert (=> b!7935598 (= e!4682554 (not (isEmpty!42800 (right!57221 (right!57221 t!4440)))))))

(declare-fun b!7935599 () Bool)

(declare-fun res!3148484 () Bool)

(assert (=> b!7935599 (=> (not res!3148484) (not e!4682554))))

(assert (=> b!7935599 (= res!3148484 (not (isEmpty!42800 (left!56891 (right!57221 t!4440)))))))

(declare-fun d!2372828 () Bool)

(declare-fun res!3148486 () Bool)

(declare-fun e!4682553 () Bool)

(assert (=> d!2372828 (=> res!3148486 e!4682553)))

(assert (=> d!2372828 (= res!3148486 (not ((_ is Node!15914) (right!57221 t!4440))))))

(assert (=> d!2372828 (= (isBalanced!4540 (right!57221 t!4440)) e!4682553)))

(declare-fun b!7935600 () Bool)

(declare-fun res!3148482 () Bool)

(assert (=> b!7935600 (=> (not res!3148482) (not e!4682554))))

(assert (=> b!7935600 (= res!3148482 (<= (- (height!2229 (left!56891 (right!57221 t!4440))) (height!2229 (right!57221 (right!57221 t!4440)))) 1))))

(declare-fun b!7935601 () Bool)

(assert (=> b!7935601 (= e!4682553 e!4682554)))

(declare-fun res!3148485 () Bool)

(assert (=> b!7935601 (=> (not res!3148485) (not e!4682554))))

(assert (=> b!7935601 (= res!3148485 (<= (- 1) (- (height!2229 (left!56891 (right!57221 t!4440))) (height!2229 (right!57221 (right!57221 t!4440))))))))

(assert (= (and d!2372828 (not res!3148486)) b!7935601))

(assert (= (and b!7935601 res!3148485) b!7935600))

(assert (= (and b!7935600 res!3148482) b!7935596))

(assert (= (and b!7935596 res!3148483) b!7935597))

(assert (= (and b!7935597 res!3148487) b!7935599))

(assert (= (and b!7935599 res!3148484) b!7935598))

(declare-fun m!8323458 () Bool)

(assert (=> b!7935598 m!8323458))

(declare-fun m!8323460 () Bool)

(assert (=> b!7935600 m!8323460))

(declare-fun m!8323462 () Bool)

(assert (=> b!7935600 m!8323462))

(assert (=> b!7935601 m!8323460))

(assert (=> b!7935601 m!8323462))

(declare-fun m!8323464 () Bool)

(assert (=> b!7935596 m!8323464))

(declare-fun m!8323466 () Bool)

(assert (=> b!7935597 m!8323466))

(declare-fun m!8323468 () Bool)

(assert (=> b!7935599 m!8323468))

(assert (=> b!7935497 d!2372828))

(declare-fun d!2372830 () Bool)

(assert (=> d!2372830 (= (inv!95786 (xs!19310 (left!56891 t!4440))) (<= (size!43281 (innerList!16002 (xs!19310 (left!56891 t!4440)))) 2147483647))))

(declare-fun bs!1969155 () Bool)

(assert (= bs!1969155 d!2372830))

(declare-fun m!8323470 () Bool)

(assert (=> bs!1969155 m!8323470))

(assert (=> b!7935531 d!2372830))

(declare-fun d!2372832 () Bool)

(assert (=> d!2372832 (= (height!2229 (left!56891 t!4440)) (ite ((_ is Empty!15914) (left!56891 t!4440)) 0 (ite ((_ is Leaf!30252) (left!56891 t!4440)) 1 (cheight!16125 (left!56891 t!4440)))))))

(assert (=> b!7935500 d!2372832))

(declare-fun d!2372834 () Bool)

(assert (=> d!2372834 (= (height!2229 (right!57221 t!4440)) (ite ((_ is Empty!15914) (right!57221 t!4440)) 0 (ite ((_ is Leaf!30252) (right!57221 t!4440)) 1 (cheight!16125 (right!57221 t!4440)))))))

(assert (=> b!7935500 d!2372834))

(declare-fun d!2372836 () Bool)

(assert (=> d!2372836 (= (inv!95786 (xs!19310 (right!57221 t!4440))) (<= (size!43281 (innerList!16002 (xs!19310 (right!57221 t!4440)))) 2147483647))))

(declare-fun bs!1969156 () Bool)

(assert (= bs!1969156 d!2372836))

(declare-fun m!8323472 () Bool)

(assert (=> bs!1969156 m!8323472))

(assert (=> b!7935534 d!2372836))

(assert (=> b!7935430 d!2372776))

(assert (=> b!7935430 d!2372782))

(assert (=> b!7935501 d!2372832))

(assert (=> b!7935501 d!2372834))

(declare-fun d!2372838 () Bool)

(declare-fun lt!2695247 () Bool)

(assert (=> d!2372838 (= lt!2695247 (isEmpty!42802 (list!19438 (left!56891 t!4440))))))

(assert (=> d!2372838 (= lt!2695247 (= (size!43284 (left!56891 t!4440)) 0))))

(assert (=> d!2372838 (= (isEmpty!42800 (left!56891 t!4440)) lt!2695247)))

(declare-fun bs!1969157 () Bool)

(assert (= bs!1969157 d!2372838))

(declare-fun m!8323474 () Bool)

(assert (=> bs!1969157 m!8323474))

(assert (=> bs!1969157 m!8323474))

(declare-fun m!8323476 () Bool)

(assert (=> bs!1969157 m!8323476))

(assert (=> bs!1969157 m!8323432))

(assert (=> b!7935499 d!2372838))

(declare-fun d!2372840 () Bool)

(declare-fun c!1457887 () Bool)

(assert (=> d!2372840 (= c!1457887 ((_ is Node!15914) (left!56891 (right!57221 t!4440))))))

(declare-fun e!4682555 () Bool)

(assert (=> d!2372840 (= (inv!95785 (left!56891 (right!57221 t!4440))) e!4682555)))

(declare-fun b!7935602 () Bool)

(assert (=> b!7935602 (= e!4682555 (inv!95789 (left!56891 (right!57221 t!4440))))))

(declare-fun b!7935603 () Bool)

(declare-fun e!4682556 () Bool)

(assert (=> b!7935603 (= e!4682555 e!4682556)))

(declare-fun res!3148488 () Bool)

(assert (=> b!7935603 (= res!3148488 (not ((_ is Leaf!30252) (left!56891 (right!57221 t!4440)))))))

(assert (=> b!7935603 (=> res!3148488 e!4682556)))

(declare-fun b!7935604 () Bool)

(assert (=> b!7935604 (= e!4682556 (inv!95790 (left!56891 (right!57221 t!4440))))))

(assert (= (and d!2372840 c!1457887) b!7935602))

(assert (= (and d!2372840 (not c!1457887)) b!7935603))

(assert (= (and b!7935603 (not res!3148488)) b!7935604))

(declare-fun m!8323478 () Bool)

(assert (=> b!7935602 m!8323478))

(declare-fun m!8323480 () Bool)

(assert (=> b!7935604 m!8323480))

(assert (=> b!7935533 d!2372840))

(declare-fun d!2372842 () Bool)

(declare-fun c!1457888 () Bool)

(assert (=> d!2372842 (= c!1457888 ((_ is Node!15914) (right!57221 (right!57221 t!4440))))))

(declare-fun e!4682557 () Bool)

(assert (=> d!2372842 (= (inv!95785 (right!57221 (right!57221 t!4440))) e!4682557)))

(declare-fun b!7935607 () Bool)

(assert (=> b!7935607 (= e!4682557 (inv!95789 (right!57221 (right!57221 t!4440))))))

(declare-fun b!7935608 () Bool)

(declare-fun e!4682558 () Bool)

(assert (=> b!7935608 (= e!4682557 e!4682558)))

(declare-fun res!3148489 () Bool)

(assert (=> b!7935608 (= res!3148489 (not ((_ is Leaf!30252) (right!57221 (right!57221 t!4440)))))))

(assert (=> b!7935608 (=> res!3148489 e!4682558)))

(declare-fun b!7935609 () Bool)

(assert (=> b!7935609 (= e!4682558 (inv!95790 (right!57221 (right!57221 t!4440))))))

(assert (= (and d!2372842 c!1457888) b!7935607))

(assert (= (and d!2372842 (not c!1457888)) b!7935608))

(assert (= (and b!7935608 (not res!3148489)) b!7935609))

(declare-fun m!8323482 () Bool)

(assert (=> b!7935607 m!8323482))

(declare-fun m!8323484 () Bool)

(assert (=> b!7935609 m!8323484))

(assert (=> b!7935533 d!2372842))

(declare-fun d!2372844 () Bool)

(declare-fun res!3148490 () Bool)

(declare-fun e!4682561 () Bool)

(assert (=> d!2372844 (=> (not res!3148490) (not e!4682561))))

(assert (=> d!2372844 (= res!3148490 (= (csize!32058 (left!56891 t!4440)) (+ (size!43284 (left!56891 (left!56891 t!4440))) (size!43284 (right!57221 (left!56891 t!4440))))))))

(assert (=> d!2372844 (= (inv!95789 (left!56891 t!4440)) e!4682561)))

(declare-fun b!7935612 () Bool)

(declare-fun res!3148491 () Bool)

(assert (=> b!7935612 (=> (not res!3148491) (not e!4682561))))

(assert (=> b!7935612 (= res!3148491 (and (not (= (left!56891 (left!56891 t!4440)) Empty!15914)) (not (= (right!57221 (left!56891 t!4440)) Empty!15914))))))

(declare-fun b!7935613 () Bool)

(declare-fun res!3148492 () Bool)

(assert (=> b!7935613 (=> (not res!3148492) (not e!4682561))))

(assert (=> b!7935613 (= res!3148492 (= (cheight!16125 (left!56891 t!4440)) (+ (max!0 (height!2229 (left!56891 (left!56891 t!4440))) (height!2229 (right!57221 (left!56891 t!4440)))) 1)))))

(declare-fun b!7935614 () Bool)

(assert (=> b!7935614 (= e!4682561 (<= 0 (cheight!16125 (left!56891 t!4440))))))

(assert (= (and d!2372844 res!3148490) b!7935612))

(assert (= (and b!7935612 res!3148491) b!7935613))

(assert (= (and b!7935613 res!3148492) b!7935614))

(declare-fun m!8323486 () Bool)

(assert (=> d!2372844 m!8323486))

(declare-fun m!8323488 () Bool)

(assert (=> d!2372844 m!8323488))

(assert (=> b!7935613 m!8323448))

(assert (=> b!7935613 m!8323450))

(assert (=> b!7935613 m!8323448))

(assert (=> b!7935613 m!8323450))

(declare-fun m!8323490 () Bool)

(assert (=> b!7935613 m!8323490))

(assert (=> b!7935449 d!2372844))

(declare-fun d!2372846 () Bool)

(declare-fun e!4682580 () Bool)

(assert (=> d!2372846 e!4682580))

(declare-fun res!3148500 () Bool)

(assert (=> d!2372846 (=> (not res!3148500) (not e!4682580))))

(declare-fun lt!2695255 () List!74584)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15795 (List!74584) (InoxSet T!145888))

(assert (=> d!2372846 (= res!3148500 (= (content!15795 lt!2695255) (ite (<= 1 0) ((as const (Array T!145888 Bool)) false) (store ((as const (Array T!145888 Bool)) false) v!5484 true))))))

(declare-fun e!4682579 () List!74584)

(assert (=> d!2372846 (= lt!2695255 e!4682579)))

(declare-fun c!1457898 () Bool)

(assert (=> d!2372846 (= c!1457898 (<= 1 0))))

(assert (=> d!2372846 (= (fill!296 1 v!5484) lt!2695255)))

(declare-fun b!7935639 () Bool)

(assert (=> b!7935639 (= e!4682579 Nil!74460)))

(declare-fun b!7935640 () Bool)

(assert (=> b!7935640 (= e!4682579 (Cons!74460 v!5484 (fill!296 (- 1 1) v!5484)))))

(declare-fun b!7935641 () Bool)

(assert (=> b!7935641 (= e!4682580 (= (size!43281 lt!2695255) (ite (<= 1 0) 0 1)))))

(assert (= (and d!2372846 c!1457898) b!7935639))

(assert (= (and d!2372846 (not c!1457898)) b!7935640))

(assert (= (and d!2372846 res!3148500) b!7935641))

(declare-fun m!8323510 () Bool)

(assert (=> d!2372846 m!8323510))

(declare-fun m!8323512 () Bool)

(assert (=> d!2372846 m!8323512))

(declare-fun m!8323514 () Bool)

(assert (=> b!7935640 m!8323514))

(declare-fun m!8323516 () Bool)

(assert (=> b!7935641 m!8323516))

(assert (=> d!2372786 d!2372846))

(declare-fun d!2372856 () Bool)

(declare-fun _$14!1642 () IArray!31889)

(assert (=> d!2372856 (= _$14!1642 (IArray!31890 (fill!296 1 v!5484)))))

(declare-fun e!4682584 () Bool)

(assert (=> d!2372856 (and (inv!95786 _$14!1642) e!4682584)))

(assert (=> d!2372856 (= (choose!59860 1 v!5484) _$14!1642)))

(declare-fun b!7935646 () Bool)

(declare-fun tp!2359490 () Bool)

(assert (=> b!7935646 (= e!4682584 tp!2359490)))

(assert (= d!2372856 b!7935646))

(assert (=> d!2372856 m!8323302))

(declare-fun m!8323520 () Bool)

(assert (=> d!2372856 m!8323520))

(assert (=> d!2372786 d!2372856))

(declare-fun d!2372860 () Bool)

(declare-fun res!3148501 () Bool)

(declare-fun e!4682585 () Bool)

(assert (=> d!2372860 (=> (not res!3148501) (not e!4682585))))

(assert (=> d!2372860 (= res!3148501 (<= (size!43281 (list!19436 (xs!19310 (left!56891 t!4440)))) 512))))

(assert (=> d!2372860 (= (inv!95790 (left!56891 t!4440)) e!4682585)))

(declare-fun b!7935647 () Bool)

(declare-fun res!3148502 () Bool)

(assert (=> b!7935647 (=> (not res!3148502) (not e!4682585))))

(assert (=> b!7935647 (= res!3148502 (= (csize!32059 (left!56891 t!4440)) (size!43281 (list!19436 (xs!19310 (left!56891 t!4440))))))))

(declare-fun b!7935648 () Bool)

(assert (=> b!7935648 (= e!4682585 (and (> (csize!32059 (left!56891 t!4440)) 0) (<= (csize!32059 (left!56891 t!4440)) 512)))))

(assert (= (and d!2372860 res!3148501) b!7935647))

(assert (= (and b!7935647 res!3148502) b!7935648))

(declare-fun m!8323522 () Bool)

(assert (=> d!2372860 m!8323522))

(assert (=> d!2372860 m!8323522))

(declare-fun m!8323524 () Bool)

(assert (=> d!2372860 m!8323524))

(assert (=> b!7935647 m!8323522))

(assert (=> b!7935647 m!8323522))

(assert (=> b!7935647 m!8323524))

(assert (=> b!7935451 d!2372860))

(declare-fun d!2372862 () Bool)

(declare-fun lt!2695259 () Int)

(assert (=> d!2372862 (>= lt!2695259 0)))

(declare-fun e!4682591 () Int)

(assert (=> d!2372862 (= lt!2695259 e!4682591)))

(declare-fun c!1457902 () Bool)

(assert (=> d!2372862 (= c!1457902 ((_ is Nil!74460) (innerList!16002 (xs!19310 t!4440))))))

(assert (=> d!2372862 (= (size!43281 (innerList!16002 (xs!19310 t!4440))) lt!2695259)))

(declare-fun b!7935659 () Bool)

(assert (=> b!7935659 (= e!4682591 0)))

(declare-fun b!7935660 () Bool)

(assert (=> b!7935660 (= e!4682591 (+ 1 (size!43281 (t!390275 (innerList!16002 (xs!19310 t!4440))))))))

(assert (= (and d!2372862 c!1457902) b!7935659))

(assert (= (and d!2372862 (not c!1457902)) b!7935660))

(declare-fun m!8323530 () Bool)

(assert (=> b!7935660 m!8323530))

(assert (=> d!2372774 d!2372862))

(declare-fun d!2372868 () Bool)

(declare-fun res!3148509 () Bool)

(declare-fun e!4682592 () Bool)

(assert (=> d!2372868 (=> (not res!3148509) (not e!4682592))))

(assert (=> d!2372868 (= res!3148509 (= (csize!32058 (right!57221 t!4440)) (+ (size!43284 (left!56891 (right!57221 t!4440))) (size!43284 (right!57221 (right!57221 t!4440))))))))

(assert (=> d!2372868 (= (inv!95789 (right!57221 t!4440)) e!4682592)))

(declare-fun b!7935661 () Bool)

(declare-fun res!3148510 () Bool)

(assert (=> b!7935661 (=> (not res!3148510) (not e!4682592))))

(assert (=> b!7935661 (= res!3148510 (and (not (= (left!56891 (right!57221 t!4440)) Empty!15914)) (not (= (right!57221 (right!57221 t!4440)) Empty!15914))))))

(declare-fun b!7935662 () Bool)

(declare-fun res!3148511 () Bool)

(assert (=> b!7935662 (=> (not res!3148511) (not e!4682592))))

(assert (=> b!7935662 (= res!3148511 (= (cheight!16125 (right!57221 t!4440)) (+ (max!0 (height!2229 (left!56891 (right!57221 t!4440))) (height!2229 (right!57221 (right!57221 t!4440)))) 1)))))

(declare-fun b!7935663 () Bool)

(assert (=> b!7935663 (= e!4682592 (<= 0 (cheight!16125 (right!57221 t!4440))))))

(assert (= (and d!2372868 res!3148509) b!7935661))

(assert (= (and b!7935661 res!3148510) b!7935662))

(assert (= (and b!7935662 res!3148511) b!7935663))

(declare-fun m!8323532 () Bool)

(assert (=> d!2372868 m!8323532))

(declare-fun m!8323534 () Bool)

(assert (=> d!2372868 m!8323534))

(assert (=> b!7935662 m!8323460))

(assert (=> b!7935662 m!8323462))

(assert (=> b!7935662 m!8323460))

(assert (=> b!7935662 m!8323462))

(declare-fun m!8323540 () Bool)

(assert (=> b!7935662 m!8323540))

(assert (=> b!7935452 d!2372868))

(declare-fun tp!2359491 () Bool)

(declare-fun e!4682594 () Bool)

(declare-fun tp!2359493 () Bool)

(declare-fun b!7935667 () Bool)

(assert (=> b!7935667 (= e!4682594 (and (inv!95785 (left!56891 (left!56891 (left!56891 t!4440)))) tp!2359491 (inv!95785 (right!57221 (left!56891 (left!56891 t!4440)))) tp!2359493))))

(declare-fun b!7935669 () Bool)

(declare-fun e!4682595 () Bool)

(declare-fun tp!2359492 () Bool)

(assert (=> b!7935669 (= e!4682595 tp!2359492)))

(declare-fun b!7935668 () Bool)

(assert (=> b!7935668 (= e!4682594 (and (inv!95786 (xs!19310 (left!56891 (left!56891 t!4440)))) e!4682595))))

(assert (=> b!7935530 (= tp!2359476 (and (inv!95785 (left!56891 (left!56891 t!4440))) e!4682594))))

(assert (= (and b!7935530 ((_ is Node!15914) (left!56891 (left!56891 t!4440)))) b!7935667))

(assert (= b!7935668 b!7935669))

(assert (= (and b!7935530 ((_ is Leaf!30252) (left!56891 (left!56891 t!4440)))) b!7935668))

(declare-fun m!8323550 () Bool)

(assert (=> b!7935667 m!8323550))

(declare-fun m!8323552 () Bool)

(assert (=> b!7935667 m!8323552))

(declare-fun m!8323554 () Bool)

(assert (=> b!7935668 m!8323554))

(assert (=> b!7935530 m!8323360))

(declare-fun tp!2359496 () Bool)

(declare-fun e!4682597 () Bool)

(declare-fun tp!2359494 () Bool)

(declare-fun b!7935672 () Bool)

(assert (=> b!7935672 (= e!4682597 (and (inv!95785 (left!56891 (right!57221 (left!56891 t!4440)))) tp!2359494 (inv!95785 (right!57221 (right!57221 (left!56891 t!4440)))) tp!2359496))))

(declare-fun b!7935674 () Bool)

(declare-fun e!4682598 () Bool)

(declare-fun tp!2359495 () Bool)

(assert (=> b!7935674 (= e!4682598 tp!2359495)))

(declare-fun b!7935673 () Bool)

(assert (=> b!7935673 (= e!4682597 (and (inv!95786 (xs!19310 (right!57221 (left!56891 t!4440)))) e!4682598))))

(assert (=> b!7935530 (= tp!2359478 (and (inv!95785 (right!57221 (left!56891 t!4440))) e!4682597))))

(assert (= (and b!7935530 ((_ is Node!15914) (right!57221 (left!56891 t!4440)))) b!7935672))

(assert (= b!7935673 b!7935674))

(assert (= (and b!7935530 ((_ is Leaf!30252) (right!57221 (left!56891 t!4440)))) b!7935673))

(declare-fun m!8323560 () Bool)

(assert (=> b!7935672 m!8323560))

(declare-fun m!8323562 () Bool)

(assert (=> b!7935672 m!8323562))

(declare-fun m!8323564 () Bool)

(assert (=> b!7935673 m!8323564))

(assert (=> b!7935530 m!8323362))

(declare-fun b!7935678 () Bool)

(declare-fun e!4682601 () Bool)

(declare-fun tp!2359497 () Bool)

(assert (=> b!7935678 (= e!4682601 (and tp_is_empty!53253 tp!2359497))))

(assert (=> b!7935535 (= tp!2359480 e!4682601)))

(assert (= (and b!7935535 ((_ is Cons!74460) (innerList!16002 (xs!19310 (right!57221 t!4440))))) b!7935678))

(declare-fun b!7935682 () Bool)

(declare-fun tp!2359500 () Bool)

(declare-fun e!4682604 () Bool)

(declare-fun tp!2359498 () Bool)

(assert (=> b!7935682 (= e!4682604 (and (inv!95785 (left!56891 (left!56891 (right!57221 t!4440)))) tp!2359498 (inv!95785 (right!57221 (left!56891 (right!57221 t!4440)))) tp!2359500))))

(declare-fun b!7935684 () Bool)

(declare-fun e!4682605 () Bool)

(declare-fun tp!2359499 () Bool)

(assert (=> b!7935684 (= e!4682605 tp!2359499)))

(declare-fun b!7935683 () Bool)

(assert (=> b!7935683 (= e!4682604 (and (inv!95786 (xs!19310 (left!56891 (right!57221 t!4440)))) e!4682605))))

(assert (=> b!7935533 (= tp!2359479 (and (inv!95785 (left!56891 (right!57221 t!4440))) e!4682604))))

(assert (= (and b!7935533 ((_ is Node!15914) (left!56891 (right!57221 t!4440)))) b!7935682))

(assert (= b!7935683 b!7935684))

(assert (= (and b!7935533 ((_ is Leaf!30252) (left!56891 (right!57221 t!4440)))) b!7935683))

(declare-fun m!8323574 () Bool)

(assert (=> b!7935682 m!8323574))

(declare-fun m!8323578 () Bool)

(assert (=> b!7935682 m!8323578))

(declare-fun m!8323580 () Bool)

(assert (=> b!7935683 m!8323580))

(assert (=> b!7935533 m!8323366))

(declare-fun e!4682607 () Bool)

(declare-fun tp!2359503 () Bool)

(declare-fun tp!2359501 () Bool)

(declare-fun b!7935688 () Bool)

(assert (=> b!7935688 (= e!4682607 (and (inv!95785 (left!56891 (right!57221 (right!57221 t!4440)))) tp!2359501 (inv!95785 (right!57221 (right!57221 (right!57221 t!4440)))) tp!2359503))))

(declare-fun b!7935690 () Bool)

(declare-fun e!4682608 () Bool)

(declare-fun tp!2359502 () Bool)

(assert (=> b!7935690 (= e!4682608 tp!2359502)))

(declare-fun b!7935689 () Bool)

(assert (=> b!7935689 (= e!4682607 (and (inv!95786 (xs!19310 (right!57221 (right!57221 t!4440)))) e!4682608))))

(assert (=> b!7935533 (= tp!2359481 (and (inv!95785 (right!57221 (right!57221 t!4440))) e!4682607))))

(assert (= (and b!7935533 ((_ is Node!15914) (right!57221 (right!57221 t!4440)))) b!7935688))

(assert (= b!7935689 b!7935690))

(assert (= (and b!7935533 ((_ is Leaf!30252) (right!57221 (right!57221 t!4440)))) b!7935689))

(declare-fun m!8323582 () Bool)

(assert (=> b!7935688 m!8323582))

(declare-fun m!8323584 () Bool)

(assert (=> b!7935688 m!8323584))

(declare-fun m!8323588 () Bool)

(assert (=> b!7935689 m!8323588))

(assert (=> b!7935533 m!8323368))

(declare-fun b!7935691 () Bool)

(declare-fun e!4682609 () Bool)

(declare-fun tp!2359504 () Bool)

(assert (=> b!7935691 (= e!4682609 (and tp_is_empty!53253 tp!2359504))))

(assert (=> b!7935532 (= tp!2359477 e!4682609)))

(assert (= (and b!7935532 ((_ is Cons!74460) (innerList!16002 (xs!19310 (left!56891 t!4440))))) b!7935691))

(declare-fun b!7935692 () Bool)

(declare-fun e!4682611 () Bool)

(declare-fun tp!2359505 () Bool)

(assert (=> b!7935692 (= e!4682611 (and tp_is_empty!53253 tp!2359505))))

(assert (=> b!7935540 (= tp!2359484 e!4682611)))

(assert (= (and b!7935540 ((_ is Cons!74460) (t!390275 (innerList!16002 (xs!19310 t!4440))))) b!7935692))

(check-sat (not b!7935688) (not b!7935682) (not b!7935613) (not b!7935592) (not b!7935576) (not b!7935640) (not b!7935596) (not b!7935547) (not b!7935689) (not b!7935684) (not d!2372822) (not d!2372810) (not b!7935574) (not d!2372830) (not b!7935673) (not b!7935598) (not b!7935691) (not b!7935678) (not b!7935669) (not b!7935533) tp_is_empty!53253 (not b!7935599) (not b!7935591) (not b!7935552) (not b!7935672) (not b!7935692) (not d!2372818) (not b!7935674) (not b!7935641) (not b!7935607) (not b!7935668) (not b!7935550) (not b!7935590) (not b!7935690) (not d!2372846) (not d!2372856) (not d!2372800) (not b!7935595) (not b!7935549) (not b!7935600) (not d!2372868) (not d!2372808) (not b!7935545) (not b!7935662) (not b!7935646) (not b!7935647) (not b!7935660) (not b!7935601) (not b!7935609) (not b!7935530) (not b!7935597) (not d!2372844) (not d!2372860) (not d!2372838) (not b!7935593) (not d!2372820) (not b!7935594) (not b!7935604) (not d!2372836) (not b!7935683) (not b!7935667) (not b!7935602) (not b!7935579) (not b!7935553))
(check-sat)
(get-model)

(declare-fun b!7935715 () Bool)

(declare-fun res!3148530 () Bool)

(declare-fun e!4682626 () Bool)

(assert (=> b!7935715 (=> (not res!3148530) (not e!4682626))))

(assert (=> b!7935715 (= res!3148530 (isBalanced!4540 (left!56891 (left!56891 (right!57221 t!4440)))))))

(declare-fun b!7935716 () Bool)

(declare-fun res!3148534 () Bool)

(assert (=> b!7935716 (=> (not res!3148534) (not e!4682626))))

(assert (=> b!7935716 (= res!3148534 (isBalanced!4540 (right!57221 (left!56891 (right!57221 t!4440)))))))

(declare-fun b!7935717 () Bool)

(assert (=> b!7935717 (= e!4682626 (not (isEmpty!42800 (right!57221 (left!56891 (right!57221 t!4440))))))))

(declare-fun b!7935718 () Bool)

(declare-fun res!3148531 () Bool)

(assert (=> b!7935718 (=> (not res!3148531) (not e!4682626))))

(assert (=> b!7935718 (= res!3148531 (not (isEmpty!42800 (left!56891 (left!56891 (right!57221 t!4440))))))))

(declare-fun d!2372892 () Bool)

(declare-fun res!3148533 () Bool)

(declare-fun e!4682625 () Bool)

(assert (=> d!2372892 (=> res!3148533 e!4682625)))

(assert (=> d!2372892 (= res!3148533 (not ((_ is Node!15914) (left!56891 (right!57221 t!4440)))))))

(assert (=> d!2372892 (= (isBalanced!4540 (left!56891 (right!57221 t!4440))) e!4682625)))

(declare-fun b!7935719 () Bool)

(declare-fun res!3148529 () Bool)

(assert (=> b!7935719 (=> (not res!3148529) (not e!4682626))))

(assert (=> b!7935719 (= res!3148529 (<= (- (height!2229 (left!56891 (left!56891 (right!57221 t!4440)))) (height!2229 (right!57221 (left!56891 (right!57221 t!4440))))) 1))))

(declare-fun b!7935720 () Bool)

(assert (=> b!7935720 (= e!4682625 e!4682626)))

(declare-fun res!3148532 () Bool)

(assert (=> b!7935720 (=> (not res!3148532) (not e!4682626))))

(assert (=> b!7935720 (= res!3148532 (<= (- 1) (- (height!2229 (left!56891 (left!56891 (right!57221 t!4440)))) (height!2229 (right!57221 (left!56891 (right!57221 t!4440)))))))))

(assert (= (and d!2372892 (not res!3148533)) b!7935720))

(assert (= (and b!7935720 res!3148532) b!7935719))

(assert (= (and b!7935719 res!3148529) b!7935715))

(assert (= (and b!7935715 res!3148530) b!7935716))

(assert (= (and b!7935716 res!3148534) b!7935718))

(assert (= (and b!7935718 res!3148531) b!7935717))

(declare-fun m!8323636 () Bool)

(assert (=> b!7935717 m!8323636))

(declare-fun m!8323638 () Bool)

(assert (=> b!7935719 m!8323638))

(declare-fun m!8323640 () Bool)

(assert (=> b!7935719 m!8323640))

(assert (=> b!7935720 m!8323638))

(assert (=> b!7935720 m!8323640))

(declare-fun m!8323642 () Bool)

(assert (=> b!7935715 m!8323642))

(declare-fun m!8323644 () Bool)

(assert (=> b!7935716 m!8323644))

(declare-fun m!8323646 () Bool)

(assert (=> b!7935718 m!8323646))

(assert (=> b!7935596 d!2372892))

(declare-fun d!2372894 () Bool)

(assert (=> d!2372894 (= (height!2229 (left!56891 (right!57221 t!4440))) (ite ((_ is Empty!15914) (left!56891 (right!57221 t!4440))) 0 (ite ((_ is Leaf!30252) (left!56891 (right!57221 t!4440))) 1 (cheight!16125 (left!56891 (right!57221 t!4440))))))))

(assert (=> b!7935600 d!2372894))

(declare-fun d!2372896 () Bool)

(assert (=> d!2372896 (= (height!2229 (right!57221 (right!57221 t!4440))) (ite ((_ is Empty!15914) (right!57221 (right!57221 t!4440))) 0 (ite ((_ is Leaf!30252) (right!57221 (right!57221 t!4440))) 1 (cheight!16125 (right!57221 (right!57221 t!4440))))))))

(assert (=> b!7935600 d!2372896))

(declare-fun d!2372898 () Bool)

(declare-fun lt!2695261 () Bool)

(assert (=> d!2372898 (= lt!2695261 (isEmpty!42802 (list!19438 (right!57221 (right!57221 t!4440)))))))

(assert (=> d!2372898 (= lt!2695261 (= (size!43284 (right!57221 (right!57221 t!4440))) 0))))

(assert (=> d!2372898 (= (isEmpty!42800 (right!57221 (right!57221 t!4440))) lt!2695261)))

(declare-fun bs!1969161 () Bool)

(assert (= bs!1969161 d!2372898))

(declare-fun m!8323648 () Bool)

(assert (=> bs!1969161 m!8323648))

(assert (=> bs!1969161 m!8323648))

(declare-fun m!8323650 () Bool)

(assert (=> bs!1969161 m!8323650))

(assert (=> bs!1969161 m!8323534))

(assert (=> b!7935598 d!2372898))

(declare-fun d!2372900 () Bool)

(assert (=> d!2372900 (= (inv!95786 (xs!19310 (right!57221 (right!57221 t!4440)))) (<= (size!43281 (innerList!16002 (xs!19310 (right!57221 (right!57221 t!4440))))) 2147483647))))

(declare-fun bs!1969162 () Bool)

(assert (= bs!1969162 d!2372900))

(declare-fun m!8323652 () Bool)

(assert (=> bs!1969162 m!8323652))

(assert (=> b!7935689 d!2372900))

(declare-fun d!2372902 () Bool)

(declare-fun lt!2695262 () Bool)

(assert (=> d!2372902 (= lt!2695262 (isEmpty!42802 (list!19438 (left!56891 (left!56891 t!4440)))))))

(assert (=> d!2372902 (= lt!2695262 (= (size!43284 (left!56891 (left!56891 t!4440))) 0))))

(assert (=> d!2372902 (= (isEmpty!42800 (left!56891 (left!56891 t!4440))) lt!2695262)))

(declare-fun bs!1969163 () Bool)

(assert (= bs!1969163 d!2372902))

(declare-fun m!8323654 () Bool)

(assert (=> bs!1969163 m!8323654))

(assert (=> bs!1969163 m!8323654))

(declare-fun m!8323656 () Bool)

(assert (=> bs!1969163 m!8323656))

(assert (=> bs!1969163 m!8323486))

(assert (=> b!7935593 d!2372902))

(declare-fun b!7935721 () Bool)

(declare-fun res!3148536 () Bool)

(declare-fun e!4682628 () Bool)

(assert (=> b!7935721 (=> (not res!3148536) (not e!4682628))))

(assert (=> b!7935721 (= res!3148536 (isBalanced!4540 (left!56891 (right!57221 (left!56891 t!4440)))))))

(declare-fun b!7935722 () Bool)

(declare-fun res!3148540 () Bool)

(assert (=> b!7935722 (=> (not res!3148540) (not e!4682628))))

(assert (=> b!7935722 (= res!3148540 (isBalanced!4540 (right!57221 (right!57221 (left!56891 t!4440)))))))

(declare-fun b!7935723 () Bool)

(assert (=> b!7935723 (= e!4682628 (not (isEmpty!42800 (right!57221 (right!57221 (left!56891 t!4440))))))))

(declare-fun b!7935724 () Bool)

(declare-fun res!3148537 () Bool)

(assert (=> b!7935724 (=> (not res!3148537) (not e!4682628))))

(assert (=> b!7935724 (= res!3148537 (not (isEmpty!42800 (left!56891 (right!57221 (left!56891 t!4440))))))))

(declare-fun d!2372904 () Bool)

(declare-fun res!3148539 () Bool)

(declare-fun e!4682627 () Bool)

(assert (=> d!2372904 (=> res!3148539 e!4682627)))

(assert (=> d!2372904 (= res!3148539 (not ((_ is Node!15914) (right!57221 (left!56891 t!4440)))))))

(assert (=> d!2372904 (= (isBalanced!4540 (right!57221 (left!56891 t!4440))) e!4682627)))

(declare-fun b!7935725 () Bool)

(declare-fun res!3148535 () Bool)

(assert (=> b!7935725 (=> (not res!3148535) (not e!4682628))))

(assert (=> b!7935725 (= res!3148535 (<= (- (height!2229 (left!56891 (right!57221 (left!56891 t!4440)))) (height!2229 (right!57221 (right!57221 (left!56891 t!4440))))) 1))))

(declare-fun b!7935726 () Bool)

(assert (=> b!7935726 (= e!4682627 e!4682628)))

(declare-fun res!3148538 () Bool)

(assert (=> b!7935726 (=> (not res!3148538) (not e!4682628))))

(assert (=> b!7935726 (= res!3148538 (<= (- 1) (- (height!2229 (left!56891 (right!57221 (left!56891 t!4440)))) (height!2229 (right!57221 (right!57221 (left!56891 t!4440)))))))))

(assert (= (and d!2372904 (not res!3148539)) b!7935726))

(assert (= (and b!7935726 res!3148538) b!7935725))

(assert (= (and b!7935725 res!3148535) b!7935721))

(assert (= (and b!7935721 res!3148536) b!7935722))

(assert (= (and b!7935722 res!3148540) b!7935724))

(assert (= (and b!7935724 res!3148537) b!7935723))

(declare-fun m!8323658 () Bool)

(assert (=> b!7935723 m!8323658))

(declare-fun m!8323660 () Bool)

(assert (=> b!7935725 m!8323660))

(declare-fun m!8323662 () Bool)

(assert (=> b!7935725 m!8323662))

(assert (=> b!7935726 m!8323660))

(assert (=> b!7935726 m!8323662))

(declare-fun m!8323664 () Bool)

(assert (=> b!7935721 m!8323664))

(declare-fun m!8323666 () Bool)

(assert (=> b!7935722 m!8323666))

(declare-fun m!8323668 () Bool)

(assert (=> b!7935724 m!8323668))

(assert (=> b!7935591 d!2372904))

(declare-fun d!2372906 () Bool)

(assert (=> d!2372906 (= (height!2229 (left!56891 (left!56891 t!4440))) (ite ((_ is Empty!15914) (left!56891 (left!56891 t!4440))) 0 (ite ((_ is Leaf!30252) (left!56891 (left!56891 t!4440))) 1 (cheight!16125 (left!56891 (left!56891 t!4440))))))))

(assert (=> b!7935595 d!2372906))

(declare-fun d!2372908 () Bool)

(assert (=> d!2372908 (= (height!2229 (right!57221 (left!56891 t!4440))) (ite ((_ is Empty!15914) (right!57221 (left!56891 t!4440))) 0 (ite ((_ is Leaf!30252) (right!57221 (left!56891 t!4440))) 1 (cheight!16125 (right!57221 (left!56891 t!4440))))))))

(assert (=> b!7935595 d!2372908))

(declare-fun d!2372910 () Bool)

(declare-fun c!1457907 () Bool)

(assert (=> d!2372910 (= c!1457907 ((_ is Nil!74460) lt!2695255))))

(declare-fun e!4682631 () (InoxSet T!145888))

(assert (=> d!2372910 (= (content!15795 lt!2695255) e!4682631)))

(declare-fun b!7935731 () Bool)

(assert (=> b!7935731 (= e!4682631 ((as const (Array T!145888 Bool)) false))))

(declare-fun b!7935732 () Bool)

(assert (=> b!7935732 (= e!4682631 ((_ map or) (store ((as const (Array T!145888 Bool)) false) (h!80908 lt!2695255) true) (content!15795 (t!390275 lt!2695255))))))

(assert (= (and d!2372910 c!1457907) b!7935731))

(assert (= (and d!2372910 (not c!1457907)) b!7935732))

(declare-fun m!8323670 () Bool)

(assert (=> b!7935732 m!8323670))

(declare-fun m!8323672 () Bool)

(assert (=> b!7935732 m!8323672))

(assert (=> d!2372846 d!2372910))

(declare-fun d!2372912 () Bool)

(declare-fun lt!2695265 () Int)

(assert (=> d!2372912 (= lt!2695265 (size!43281 (list!19438 (left!56891 (left!56891 t!4440)))))))

(assert (=> d!2372912 (= lt!2695265 (ite ((_ is Empty!15914) (left!56891 (left!56891 t!4440))) 0 (ite ((_ is Leaf!30252) (left!56891 (left!56891 t!4440))) (csize!32059 (left!56891 (left!56891 t!4440))) (csize!32058 (left!56891 (left!56891 t!4440))))))))

(assert (=> d!2372912 (= (size!43284 (left!56891 (left!56891 t!4440))) lt!2695265)))

(declare-fun bs!1969164 () Bool)

(assert (= bs!1969164 d!2372912))

(assert (=> bs!1969164 m!8323654))

(assert (=> bs!1969164 m!8323654))

(declare-fun m!8323674 () Bool)

(assert (=> bs!1969164 m!8323674))

(assert (=> d!2372844 d!2372912))

(declare-fun d!2372914 () Bool)

(declare-fun lt!2695266 () Int)

(assert (=> d!2372914 (= lt!2695266 (size!43281 (list!19438 (right!57221 (left!56891 t!4440)))))))

(assert (=> d!2372914 (= lt!2695266 (ite ((_ is Empty!15914) (right!57221 (left!56891 t!4440))) 0 (ite ((_ is Leaf!30252) (right!57221 (left!56891 t!4440))) (csize!32059 (right!57221 (left!56891 t!4440))) (csize!32058 (right!57221 (left!56891 t!4440))))))))

(assert (=> d!2372914 (= (size!43284 (right!57221 (left!56891 t!4440))) lt!2695266)))

(declare-fun bs!1969165 () Bool)

(assert (= bs!1969165 d!2372914))

(declare-fun m!8323676 () Bool)

(assert (=> bs!1969165 m!8323676))

(assert (=> bs!1969165 m!8323676))

(declare-fun m!8323678 () Bool)

(assert (=> bs!1969165 m!8323678))

(assert (=> d!2372844 d!2372914))

(declare-fun d!2372916 () Bool)

(declare-fun lt!2695267 () Int)

(assert (=> d!2372916 (>= lt!2695267 0)))

(declare-fun e!4682632 () Int)

(assert (=> d!2372916 (= lt!2695267 e!4682632)))

(declare-fun c!1457908 () Bool)

(assert (=> d!2372916 (= c!1457908 ((_ is Nil!74460) lt!2695255))))

(assert (=> d!2372916 (= (size!43281 lt!2695255) lt!2695267)))

(declare-fun b!7935733 () Bool)

(assert (=> b!7935733 (= e!4682632 0)))

(declare-fun b!7935734 () Bool)

(assert (=> b!7935734 (= e!4682632 (+ 1 (size!43281 (t!390275 lt!2695255))))))

(assert (= (and d!2372916 c!1457908) b!7935733))

(assert (= (and d!2372916 (not c!1457908)) b!7935734))

(declare-fun m!8323680 () Bool)

(assert (=> b!7935734 m!8323680))

(assert (=> b!7935641 d!2372916))

(declare-fun d!2372918 () Bool)

(assert (=> d!2372918 (= (max!0 (height!2229 (left!56891 (right!57221 t!4440))) (height!2229 (right!57221 (right!57221 t!4440)))) (ite (< (height!2229 (left!56891 (right!57221 t!4440))) (height!2229 (right!57221 (right!57221 t!4440)))) (height!2229 (right!57221 (right!57221 t!4440))) (height!2229 (left!56891 (right!57221 t!4440)))))))

(assert (=> b!7935662 d!2372918))

(assert (=> b!7935662 d!2372894))

(assert (=> b!7935662 d!2372896))

(declare-fun d!2372920 () Bool)

(declare-fun lt!2695268 () Int)

(assert (=> d!2372920 (>= lt!2695268 0)))

(declare-fun e!4682633 () Int)

(assert (=> d!2372920 (= lt!2695268 e!4682633)))

(declare-fun c!1457909 () Bool)

(assert (=> d!2372920 (= c!1457909 ((_ is Nil!74460) (innerList!16002 (xs!19310 (left!56891 t!4440)))))))

(assert (=> d!2372920 (= (size!43281 (innerList!16002 (xs!19310 (left!56891 t!4440)))) lt!2695268)))

(declare-fun b!7935735 () Bool)

(assert (=> b!7935735 (= e!4682633 0)))

(declare-fun b!7935736 () Bool)

(assert (=> b!7935736 (= e!4682633 (+ 1 (size!43281 (t!390275 (innerList!16002 (xs!19310 (left!56891 t!4440)))))))))

(assert (= (and d!2372920 c!1457909) b!7935735))

(assert (= (and d!2372920 (not c!1457909)) b!7935736))

(declare-fun m!8323682 () Bool)

(assert (=> b!7935736 m!8323682))

(assert (=> d!2372830 d!2372920))

(assert (=> b!7935530 d!2372802))

(assert (=> b!7935530 d!2372806))

(declare-fun d!2372922 () Bool)

(declare-fun lt!2695269 () Int)

(assert (=> d!2372922 (= lt!2695269 (size!43281 (list!19438 (left!56891 (right!57221 t!4440)))))))

(assert (=> d!2372922 (= lt!2695269 (ite ((_ is Empty!15914) (left!56891 (right!57221 t!4440))) 0 (ite ((_ is Leaf!30252) (left!56891 (right!57221 t!4440))) (csize!32059 (left!56891 (right!57221 t!4440))) (csize!32058 (left!56891 (right!57221 t!4440))))))))

(assert (=> d!2372922 (= (size!43284 (left!56891 (right!57221 t!4440))) lt!2695269)))

(declare-fun bs!1969166 () Bool)

(assert (= bs!1969166 d!2372922))

(declare-fun m!8323684 () Bool)

(assert (=> bs!1969166 m!8323684))

(assert (=> bs!1969166 m!8323684))

(declare-fun m!8323686 () Bool)

(assert (=> bs!1969166 m!8323686))

(assert (=> d!2372868 d!2372922))

(declare-fun d!2372924 () Bool)

(declare-fun lt!2695270 () Int)

(assert (=> d!2372924 (= lt!2695270 (size!43281 (list!19438 (right!57221 (right!57221 t!4440)))))))

(assert (=> d!2372924 (= lt!2695270 (ite ((_ is Empty!15914) (right!57221 (right!57221 t!4440))) 0 (ite ((_ is Leaf!30252) (right!57221 (right!57221 t!4440))) (csize!32059 (right!57221 (right!57221 t!4440))) (csize!32058 (right!57221 (right!57221 t!4440))))))))

(assert (=> d!2372924 (= (size!43284 (right!57221 (right!57221 t!4440))) lt!2695270)))

(declare-fun bs!1969167 () Bool)

(assert (= bs!1969167 d!2372924))

(assert (=> bs!1969167 m!8323648))

(assert (=> bs!1969167 m!8323648))

(declare-fun m!8323688 () Bool)

(assert (=> bs!1969167 m!8323688))

(assert (=> d!2372868 d!2372924))

(declare-fun d!2372926 () Bool)

(assert (=> d!2372926 (= (isEmpty!42802 (list!19438 (right!57221 t!4440))) ((_ is Nil!74460) (list!19438 (right!57221 t!4440))))))

(assert (=> d!2372822 d!2372926))

(declare-fun b!7935747 () Bool)

(declare-fun e!4682639 () List!74584)

(assert (=> b!7935747 (= e!4682639 (list!19436 (xs!19310 (right!57221 t!4440))))))

(declare-fun b!7935748 () Bool)

(declare-fun ++!18270 (List!74584 List!74584) List!74584)

(assert (=> b!7935748 (= e!4682639 (++!18270 (list!19438 (left!56891 (right!57221 t!4440))) (list!19438 (right!57221 (right!57221 t!4440)))))))

(declare-fun d!2372928 () Bool)

(declare-fun c!1457914 () Bool)

(assert (=> d!2372928 (= c!1457914 ((_ is Empty!15914) (right!57221 t!4440)))))

(declare-fun e!4682638 () List!74584)

(assert (=> d!2372928 (= (list!19438 (right!57221 t!4440)) e!4682638)))

(declare-fun b!7935745 () Bool)

(assert (=> b!7935745 (= e!4682638 Nil!74460)))

(declare-fun b!7935746 () Bool)

(assert (=> b!7935746 (= e!4682638 e!4682639)))

(declare-fun c!1457915 () Bool)

(assert (=> b!7935746 (= c!1457915 ((_ is Leaf!30252) (right!57221 t!4440)))))

(assert (= (and d!2372928 c!1457914) b!7935745))

(assert (= (and d!2372928 (not c!1457914)) b!7935746))

(assert (= (and b!7935746 c!1457915) b!7935747))

(assert (= (and b!7935746 (not c!1457915)) b!7935748))

(assert (=> b!7935747 m!8323428))

(assert (=> b!7935748 m!8323684))

(assert (=> b!7935748 m!8323648))

(assert (=> b!7935748 m!8323684))

(assert (=> b!7935748 m!8323648))

(declare-fun m!8323690 () Bool)

(assert (=> b!7935748 m!8323690))

(assert (=> d!2372822 d!2372928))

(declare-fun d!2372930 () Bool)

(declare-fun lt!2695271 () Int)

(assert (=> d!2372930 (= lt!2695271 (size!43281 (list!19438 (right!57221 t!4440))))))

(assert (=> d!2372930 (= lt!2695271 (ite ((_ is Empty!15914) (right!57221 t!4440)) 0 (ite ((_ is Leaf!30252) (right!57221 t!4440)) (csize!32059 (right!57221 t!4440)) (csize!32058 (right!57221 t!4440)))))))

(assert (=> d!2372930 (= (size!43284 (right!57221 t!4440)) lt!2695271)))

(declare-fun bs!1969168 () Bool)

(assert (= bs!1969168 d!2372930))

(assert (=> bs!1969168 m!8323440))

(assert (=> bs!1969168 m!8323440))

(declare-fun m!8323692 () Bool)

(assert (=> bs!1969168 m!8323692))

(assert (=> d!2372822 d!2372930))

(declare-fun d!2372932 () Bool)

(declare-fun lt!2695272 () Int)

(assert (=> d!2372932 (>= lt!2695272 0)))

(declare-fun e!4682640 () Int)

(assert (=> d!2372932 (= lt!2695272 e!4682640)))

(declare-fun c!1457916 () Bool)

(assert (=> d!2372932 (= c!1457916 ((_ is Nil!74460) (list!19436 (xs!19310 t!4440))))))

(assert (=> d!2372932 (= (size!43281 (list!19436 (xs!19310 t!4440))) lt!2695272)))

(declare-fun b!7935749 () Bool)

(assert (=> b!7935749 (= e!4682640 0)))

(declare-fun b!7935750 () Bool)

(assert (=> b!7935750 (= e!4682640 (+ 1 (size!43281 (t!390275 (list!19436 (xs!19310 t!4440))))))))

(assert (= (and d!2372932 c!1457916) b!7935749))

(assert (= (and d!2372932 (not c!1457916)) b!7935750))

(declare-fun m!8323694 () Bool)

(assert (=> b!7935750 m!8323694))

(assert (=> d!2372808 d!2372932))

(declare-fun d!2372934 () Bool)

(assert (=> d!2372934 (= (list!19436 (xs!19310 t!4440)) (innerList!16002 (xs!19310 t!4440)))))

(assert (=> d!2372808 d!2372934))

(declare-fun d!2372936 () Bool)

(declare-fun res!3148541 () Bool)

(declare-fun e!4682641 () Bool)

(assert (=> d!2372936 (=> (not res!3148541) (not e!4682641))))

(assert (=> d!2372936 (= res!3148541 (<= (size!43281 (list!19436 (xs!19310 (left!56891 (left!56891 t!4440))))) 512))))

(assert (=> d!2372936 (= (inv!95790 (left!56891 (left!56891 t!4440))) e!4682641)))

(declare-fun b!7935751 () Bool)

(declare-fun res!3148542 () Bool)

(assert (=> b!7935751 (=> (not res!3148542) (not e!4682641))))

(assert (=> b!7935751 (= res!3148542 (= (csize!32059 (left!56891 (left!56891 t!4440))) (size!43281 (list!19436 (xs!19310 (left!56891 (left!56891 t!4440)))))))))

(declare-fun b!7935752 () Bool)

(assert (=> b!7935752 (= e!4682641 (and (> (csize!32059 (left!56891 (left!56891 t!4440))) 0) (<= (csize!32059 (left!56891 (left!56891 t!4440))) 512)))))

(assert (= (and d!2372936 res!3148541) b!7935751))

(assert (= (and b!7935751 res!3148542) b!7935752))

(declare-fun m!8323696 () Bool)

(assert (=> d!2372936 m!8323696))

(assert (=> d!2372936 m!8323696))

(declare-fun m!8323698 () Bool)

(assert (=> d!2372936 m!8323698))

(assert (=> b!7935751 m!8323696))

(assert (=> b!7935751 m!8323696))

(assert (=> b!7935751 m!8323698))

(assert (=> b!7935549 d!2372936))

(assert (=> b!7935553 d!2372932))

(assert (=> b!7935553 d!2372934))

(declare-fun d!2372938 () Bool)

(assert (=> d!2372938 (= (isEmpty!42802 (list!19438 (left!56891 t!4440))) ((_ is Nil!74460) (list!19438 (left!56891 t!4440))))))

(assert (=> d!2372838 d!2372938))

(declare-fun b!7935755 () Bool)

(declare-fun e!4682643 () List!74584)

(assert (=> b!7935755 (= e!4682643 (list!19436 (xs!19310 (left!56891 t!4440))))))

(declare-fun b!7935756 () Bool)

(assert (=> b!7935756 (= e!4682643 (++!18270 (list!19438 (left!56891 (left!56891 t!4440))) (list!19438 (right!57221 (left!56891 t!4440)))))))

(declare-fun d!2372940 () Bool)

(declare-fun c!1457917 () Bool)

(assert (=> d!2372940 (= c!1457917 ((_ is Empty!15914) (left!56891 t!4440)))))

(declare-fun e!4682642 () List!74584)

(assert (=> d!2372940 (= (list!19438 (left!56891 t!4440)) e!4682642)))

(declare-fun b!7935753 () Bool)

(assert (=> b!7935753 (= e!4682642 Nil!74460)))

(declare-fun b!7935754 () Bool)

(assert (=> b!7935754 (= e!4682642 e!4682643)))

(declare-fun c!1457918 () Bool)

(assert (=> b!7935754 (= c!1457918 ((_ is Leaf!30252) (left!56891 t!4440)))))

(assert (= (and d!2372940 c!1457917) b!7935753))

(assert (= (and d!2372940 (not c!1457917)) b!7935754))

(assert (= (and b!7935754 c!1457918) b!7935755))

(assert (= (and b!7935754 (not c!1457918)) b!7935756))

(assert (=> b!7935755 m!8323522))

(assert (=> b!7935756 m!8323654))

(assert (=> b!7935756 m!8323676))

(assert (=> b!7935756 m!8323654))

(assert (=> b!7935756 m!8323676))

(declare-fun m!8323700 () Bool)

(assert (=> b!7935756 m!8323700))

(assert (=> d!2372838 d!2372940))

(declare-fun d!2372942 () Bool)

(declare-fun lt!2695273 () Int)

(assert (=> d!2372942 (= lt!2695273 (size!43281 (list!19438 (left!56891 t!4440))))))

(assert (=> d!2372942 (= lt!2695273 (ite ((_ is Empty!15914) (left!56891 t!4440)) 0 (ite ((_ is Leaf!30252) (left!56891 t!4440)) (csize!32059 (left!56891 t!4440)) (csize!32058 (left!56891 t!4440)))))))

(assert (=> d!2372942 (= (size!43284 (left!56891 t!4440)) lt!2695273)))

(declare-fun bs!1969169 () Bool)

(assert (= bs!1969169 d!2372942))

(assert (=> bs!1969169 m!8323474))

(assert (=> bs!1969169 m!8323474))

(declare-fun m!8323702 () Bool)

(assert (=> bs!1969169 m!8323702))

(assert (=> d!2372838 d!2372942))

(declare-fun d!2372944 () Bool)

(declare-fun c!1457919 () Bool)

(assert (=> d!2372944 (= c!1457919 ((_ is Node!15914) (left!56891 (left!56891 (right!57221 t!4440)))))))

(declare-fun e!4682644 () Bool)

(assert (=> d!2372944 (= (inv!95785 (left!56891 (left!56891 (right!57221 t!4440)))) e!4682644)))

(declare-fun b!7935757 () Bool)

(assert (=> b!7935757 (= e!4682644 (inv!95789 (left!56891 (left!56891 (right!57221 t!4440)))))))

(declare-fun b!7935758 () Bool)

(declare-fun e!4682645 () Bool)

(assert (=> b!7935758 (= e!4682644 e!4682645)))

(declare-fun res!3148543 () Bool)

(assert (=> b!7935758 (= res!3148543 (not ((_ is Leaf!30252) (left!56891 (left!56891 (right!57221 t!4440))))))))

(assert (=> b!7935758 (=> res!3148543 e!4682645)))

(declare-fun b!7935759 () Bool)

(assert (=> b!7935759 (= e!4682645 (inv!95790 (left!56891 (left!56891 (right!57221 t!4440)))))))

(assert (= (and d!2372944 c!1457919) b!7935757))

(assert (= (and d!2372944 (not c!1457919)) b!7935758))

(assert (= (and b!7935758 (not res!3148543)) b!7935759))

(declare-fun m!8323704 () Bool)

(assert (=> b!7935757 m!8323704))

(declare-fun m!8323706 () Bool)

(assert (=> b!7935759 m!8323706))

(assert (=> b!7935682 d!2372944))

(declare-fun d!2372946 () Bool)

(declare-fun c!1457920 () Bool)

(assert (=> d!2372946 (= c!1457920 ((_ is Node!15914) (right!57221 (left!56891 (right!57221 t!4440)))))))

(declare-fun e!4682646 () Bool)

(assert (=> d!2372946 (= (inv!95785 (right!57221 (left!56891 (right!57221 t!4440)))) e!4682646)))

(declare-fun b!7935760 () Bool)

(assert (=> b!7935760 (= e!4682646 (inv!95789 (right!57221 (left!56891 (right!57221 t!4440)))))))

(declare-fun b!7935761 () Bool)

(declare-fun e!4682647 () Bool)

(assert (=> b!7935761 (= e!4682646 e!4682647)))

(declare-fun res!3148544 () Bool)

(assert (=> b!7935761 (= res!3148544 (not ((_ is Leaf!30252) (right!57221 (left!56891 (right!57221 t!4440))))))))

(assert (=> b!7935761 (=> res!3148544 e!4682647)))

(declare-fun b!7935762 () Bool)

(assert (=> b!7935762 (= e!4682647 (inv!95790 (right!57221 (left!56891 (right!57221 t!4440)))))))

(assert (= (and d!2372946 c!1457920) b!7935760))

(assert (= (and d!2372946 (not c!1457920)) b!7935761))

(assert (= (and b!7935761 (not res!3148544)) b!7935762))

(declare-fun m!8323708 () Bool)

(assert (=> b!7935760 m!8323708))

(declare-fun m!8323710 () Bool)

(assert (=> b!7935762 m!8323710))

(assert (=> b!7935682 d!2372946))

(declare-fun d!2372948 () Bool)

(assert (=> d!2372948 (= (inv!95786 (xs!19310 (right!57221 (left!56891 t!4440)))) (<= (size!43281 (innerList!16002 (xs!19310 (right!57221 (left!56891 t!4440))))) 2147483647))))

(declare-fun bs!1969170 () Bool)

(assert (= bs!1969170 d!2372948))

(declare-fun m!8323712 () Bool)

(assert (=> bs!1969170 m!8323712))

(assert (=> b!7935673 d!2372948))

(declare-fun d!2372950 () Bool)

(declare-fun res!3148545 () Bool)

(declare-fun e!4682648 () Bool)

(assert (=> d!2372950 (=> (not res!3148545) (not e!4682648))))

(assert (=> d!2372950 (= res!3148545 (= (csize!32058 (right!57221 (right!57221 t!4440))) (+ (size!43284 (left!56891 (right!57221 (right!57221 t!4440)))) (size!43284 (right!57221 (right!57221 (right!57221 t!4440)))))))))

(assert (=> d!2372950 (= (inv!95789 (right!57221 (right!57221 t!4440))) e!4682648)))

(declare-fun b!7935763 () Bool)

(declare-fun res!3148546 () Bool)

(assert (=> b!7935763 (=> (not res!3148546) (not e!4682648))))

(assert (=> b!7935763 (= res!3148546 (and (not (= (left!56891 (right!57221 (right!57221 t!4440))) Empty!15914)) (not (= (right!57221 (right!57221 (right!57221 t!4440))) Empty!15914))))))

(declare-fun b!7935764 () Bool)

(declare-fun res!3148547 () Bool)

(assert (=> b!7935764 (=> (not res!3148547) (not e!4682648))))

(assert (=> b!7935764 (= res!3148547 (= (cheight!16125 (right!57221 (right!57221 t!4440))) (+ (max!0 (height!2229 (left!56891 (right!57221 (right!57221 t!4440)))) (height!2229 (right!57221 (right!57221 (right!57221 t!4440))))) 1)))))

(declare-fun b!7935765 () Bool)

(assert (=> b!7935765 (= e!4682648 (<= 0 (cheight!16125 (right!57221 (right!57221 t!4440)))))))

(assert (= (and d!2372950 res!3148545) b!7935763))

(assert (= (and b!7935763 res!3148546) b!7935764))

(assert (= (and b!7935764 res!3148547) b!7935765))

(declare-fun m!8323714 () Bool)

(assert (=> d!2372950 m!8323714))

(declare-fun m!8323716 () Bool)

(assert (=> d!2372950 m!8323716))

(declare-fun m!8323718 () Bool)

(assert (=> b!7935764 m!8323718))

(declare-fun m!8323720 () Bool)

(assert (=> b!7935764 m!8323720))

(assert (=> b!7935764 m!8323718))

(assert (=> b!7935764 m!8323720))

(declare-fun m!8323722 () Bool)

(assert (=> b!7935764 m!8323722))

(assert (=> b!7935607 d!2372950))

(declare-fun d!2372954 () Bool)

(declare-fun lt!2695275 () Int)

(assert (=> d!2372954 (>= lt!2695275 0)))

(declare-fun e!4682650 () Int)

(assert (=> d!2372954 (= lt!2695275 e!4682650)))

(declare-fun c!1457922 () Bool)

(assert (=> d!2372954 (= c!1457922 ((_ is Nil!74460) (t!390275 (innerList!16002 (xs!19310 t!4440)))))))

(assert (=> d!2372954 (= (size!43281 (t!390275 (innerList!16002 (xs!19310 t!4440)))) lt!2695275)))

(declare-fun b!7935768 () Bool)

(assert (=> b!7935768 (= e!4682650 0)))

(declare-fun b!7935769 () Bool)

(assert (=> b!7935769 (= e!4682650 (+ 1 (size!43281 (t!390275 (t!390275 (innerList!16002 (xs!19310 t!4440)))))))))

(assert (= (and d!2372954 c!1457922) b!7935768))

(assert (= (and d!2372954 (not c!1457922)) b!7935769))

(declare-fun m!8323726 () Bool)

(assert (=> b!7935769 m!8323726))

(assert (=> b!7935660 d!2372954))

(declare-fun d!2372958 () Bool)

(declare-fun res!3148548 () Bool)

(declare-fun e!4682651 () Bool)

(assert (=> d!2372958 (=> (not res!3148548) (not e!4682651))))

(assert (=> d!2372958 (= res!3148548 (= (csize!32058 (left!56891 (right!57221 t!4440))) (+ (size!43284 (left!56891 (left!56891 (right!57221 t!4440)))) (size!43284 (right!57221 (left!56891 (right!57221 t!4440)))))))))

(assert (=> d!2372958 (= (inv!95789 (left!56891 (right!57221 t!4440))) e!4682651)))

(declare-fun b!7935770 () Bool)

(declare-fun res!3148549 () Bool)

(assert (=> b!7935770 (=> (not res!3148549) (not e!4682651))))

(assert (=> b!7935770 (= res!3148549 (and (not (= (left!56891 (left!56891 (right!57221 t!4440))) Empty!15914)) (not (= (right!57221 (left!56891 (right!57221 t!4440))) Empty!15914))))))

(declare-fun b!7935771 () Bool)

(declare-fun res!3148550 () Bool)

(assert (=> b!7935771 (=> (not res!3148550) (not e!4682651))))

(assert (=> b!7935771 (= res!3148550 (= (cheight!16125 (left!56891 (right!57221 t!4440))) (+ (max!0 (height!2229 (left!56891 (left!56891 (right!57221 t!4440)))) (height!2229 (right!57221 (left!56891 (right!57221 t!4440))))) 1)))))

(declare-fun b!7935772 () Bool)

(assert (=> b!7935772 (= e!4682651 (<= 0 (cheight!16125 (left!56891 (right!57221 t!4440)))))))

(assert (= (and d!2372958 res!3148548) b!7935770))

(assert (= (and b!7935770 res!3148549) b!7935771))

(assert (= (and b!7935771 res!3148550) b!7935772))

(declare-fun m!8323728 () Bool)

(assert (=> d!2372958 m!8323728))

(declare-fun m!8323730 () Bool)

(assert (=> d!2372958 m!8323730))

(assert (=> b!7935771 m!8323638))

(assert (=> b!7935771 m!8323640))

(assert (=> b!7935771 m!8323638))

(assert (=> b!7935771 m!8323640))

(declare-fun m!8323732 () Bool)

(assert (=> b!7935771 m!8323732))

(assert (=> b!7935602 d!2372958))

(declare-fun d!2372962 () Bool)

(declare-fun res!3148551 () Bool)

(declare-fun e!4682652 () Bool)

(assert (=> d!2372962 (=> (not res!3148551) (not e!4682652))))

(assert (=> d!2372962 (= res!3148551 (<= (size!43281 (list!19436 (xs!19310 (right!57221 (left!56891 t!4440))))) 512))))

(assert (=> d!2372962 (= (inv!95790 (right!57221 (left!56891 t!4440))) e!4682652)))

(declare-fun b!7935773 () Bool)

(declare-fun res!3148552 () Bool)

(assert (=> b!7935773 (=> (not res!3148552) (not e!4682652))))

(assert (=> b!7935773 (= res!3148552 (= (csize!32059 (right!57221 (left!56891 t!4440))) (size!43281 (list!19436 (xs!19310 (right!57221 (left!56891 t!4440)))))))))

(declare-fun b!7935774 () Bool)

(assert (=> b!7935774 (= e!4682652 (and (> (csize!32059 (right!57221 (left!56891 t!4440))) 0) (<= (csize!32059 (right!57221 (left!56891 t!4440))) 512)))))

(assert (= (and d!2372962 res!3148551) b!7935773))

(assert (= (and b!7935773 res!3148552) b!7935774))

(declare-fun m!8323734 () Bool)

(assert (=> d!2372962 m!8323734))

(assert (=> d!2372962 m!8323734))

(declare-fun m!8323738 () Bool)

(assert (=> d!2372962 m!8323738))

(assert (=> b!7935773 m!8323734))

(assert (=> b!7935773 m!8323734))

(assert (=> b!7935773 m!8323738))

(assert (=> b!7935552 d!2372962))

(declare-fun d!2372966 () Bool)

(declare-fun lt!2695277 () Int)

(assert (=> d!2372966 (>= lt!2695277 0)))

(declare-fun e!4682654 () Int)

(assert (=> d!2372966 (= lt!2695277 e!4682654)))

(declare-fun c!1457924 () Bool)

(assert (=> d!2372966 (= c!1457924 ((_ is Nil!74460) (list!19436 (xs!19310 (right!57221 t!4440)))))))

(assert (=> d!2372966 (= (size!43281 (list!19436 (xs!19310 (right!57221 t!4440)))) lt!2695277)))

(declare-fun b!7935777 () Bool)

(assert (=> b!7935777 (= e!4682654 0)))

(declare-fun b!7935778 () Bool)

(assert (=> b!7935778 (= e!4682654 (+ 1 (size!43281 (t!390275 (list!19436 (xs!19310 (right!57221 t!4440)))))))))

(assert (= (and d!2372966 c!1457924) b!7935777))

(assert (= (and d!2372966 (not c!1457924)) b!7935778))

(declare-fun m!8323740 () Bool)

(assert (=> b!7935778 m!8323740))

(assert (=> b!7935576 d!2372966))

(declare-fun d!2372968 () Bool)

(assert (=> d!2372968 (= (list!19436 (xs!19310 (right!57221 t!4440))) (innerList!16002 (xs!19310 (right!57221 t!4440))))))

(assert (=> b!7935576 d!2372968))

(assert (=> b!7935601 d!2372894))

(assert (=> b!7935601 d!2372896))

(declare-fun d!2372970 () Bool)

(declare-fun res!3148553 () Bool)

(declare-fun e!4682655 () Bool)

(assert (=> d!2372970 (=> (not res!3148553) (not e!4682655))))

(assert (=> d!2372970 (= res!3148553 (= (csize!32058 (left!56891 (left!56891 t!4440))) (+ (size!43284 (left!56891 (left!56891 (left!56891 t!4440)))) (size!43284 (right!57221 (left!56891 (left!56891 t!4440)))))))))

(assert (=> d!2372970 (= (inv!95789 (left!56891 (left!56891 t!4440))) e!4682655)))

(declare-fun b!7935779 () Bool)

(declare-fun res!3148554 () Bool)

(assert (=> b!7935779 (=> (not res!3148554) (not e!4682655))))

(assert (=> b!7935779 (= res!3148554 (and (not (= (left!56891 (left!56891 (left!56891 t!4440))) Empty!15914)) (not (= (right!57221 (left!56891 (left!56891 t!4440))) Empty!15914))))))

(declare-fun b!7935780 () Bool)

(declare-fun res!3148555 () Bool)

(assert (=> b!7935780 (=> (not res!3148555) (not e!4682655))))

(assert (=> b!7935780 (= res!3148555 (= (cheight!16125 (left!56891 (left!56891 t!4440))) (+ (max!0 (height!2229 (left!56891 (left!56891 (left!56891 t!4440)))) (height!2229 (right!57221 (left!56891 (left!56891 t!4440))))) 1)))))

(declare-fun b!7935781 () Bool)

(assert (=> b!7935781 (= e!4682655 (<= 0 (cheight!16125 (left!56891 (left!56891 t!4440)))))))

(assert (= (and d!2372970 res!3148553) b!7935779))

(assert (= (and b!7935779 res!3148554) b!7935780))

(assert (= (and b!7935780 res!3148555) b!7935781))

(declare-fun m!8323742 () Bool)

(assert (=> d!2372970 m!8323742))

(declare-fun m!8323744 () Bool)

(assert (=> d!2372970 m!8323744))

(declare-fun m!8323746 () Bool)

(assert (=> b!7935780 m!8323746))

(declare-fun m!8323748 () Bool)

(assert (=> b!7935780 m!8323748))

(assert (=> b!7935780 m!8323746))

(assert (=> b!7935780 m!8323748))

(declare-fun m!8323750 () Bool)

(assert (=> b!7935780 m!8323750))

(assert (=> b!7935547 d!2372970))

(declare-fun d!2372972 () Bool)

(assert (=> d!2372972 (= (max!0 (height!2229 (left!56891 (Leaf!30252 (fill!295 1 v!5484) 1))) (height!2229 (right!57221 (Leaf!30252 (fill!295 1 v!5484) 1)))) (ite (< (height!2229 (left!56891 (Leaf!30252 (fill!295 1 v!5484) 1))) (height!2229 (right!57221 (Leaf!30252 (fill!295 1 v!5484) 1)))) (height!2229 (right!57221 (Leaf!30252 (fill!295 1 v!5484) 1))) (height!2229 (left!56891 (Leaf!30252 (fill!295 1 v!5484) 1)))))))

(assert (=> b!7935574 d!2372972))

(declare-fun d!2372974 () Bool)

(assert (=> d!2372974 (= (height!2229 (left!56891 (Leaf!30252 (fill!295 1 v!5484) 1))) (ite ((_ is Empty!15914) (left!56891 (Leaf!30252 (fill!295 1 v!5484) 1))) 0 (ite ((_ is Leaf!30252) (left!56891 (Leaf!30252 (fill!295 1 v!5484) 1))) 1 (cheight!16125 (left!56891 (Leaf!30252 (fill!295 1 v!5484) 1))))))))

(assert (=> b!7935574 d!2372974))

(declare-fun d!2372976 () Bool)

(assert (=> d!2372976 (= (height!2229 (right!57221 (Leaf!30252 (fill!295 1 v!5484) 1))) (ite ((_ is Empty!15914) (right!57221 (Leaf!30252 (fill!295 1 v!5484) 1))) 0 (ite ((_ is Leaf!30252) (right!57221 (Leaf!30252 (fill!295 1 v!5484) 1))) 1 (cheight!16125 (right!57221 (Leaf!30252 (fill!295 1 v!5484) 1))))))))

(assert (=> b!7935574 d!2372976))

(declare-fun d!2372978 () Bool)

(declare-fun c!1457925 () Bool)

(assert (=> d!2372978 (= c!1457925 ((_ is Node!15914) (left!56891 (left!56891 (left!56891 t!4440)))))))

(declare-fun e!4682656 () Bool)

(assert (=> d!2372978 (= (inv!95785 (left!56891 (left!56891 (left!56891 t!4440)))) e!4682656)))

(declare-fun b!7935782 () Bool)

(assert (=> b!7935782 (= e!4682656 (inv!95789 (left!56891 (left!56891 (left!56891 t!4440)))))))

(declare-fun b!7935783 () Bool)

(declare-fun e!4682657 () Bool)

(assert (=> b!7935783 (= e!4682656 e!4682657)))

(declare-fun res!3148556 () Bool)

(assert (=> b!7935783 (= res!3148556 (not ((_ is Leaf!30252) (left!56891 (left!56891 (left!56891 t!4440))))))))

(assert (=> b!7935783 (=> res!3148556 e!4682657)))

(declare-fun b!7935784 () Bool)

(assert (=> b!7935784 (= e!4682657 (inv!95790 (left!56891 (left!56891 (left!56891 t!4440)))))))

(assert (= (and d!2372978 c!1457925) b!7935782))

(assert (= (and d!2372978 (not c!1457925)) b!7935783))

(assert (= (and b!7935783 (not res!3148556)) b!7935784))

(declare-fun m!8323752 () Bool)

(assert (=> b!7935782 m!8323752))

(declare-fun m!8323754 () Bool)

(assert (=> b!7935784 m!8323754))

(assert (=> b!7935667 d!2372978))

(declare-fun d!2372980 () Bool)

(declare-fun c!1457926 () Bool)

(assert (=> d!2372980 (= c!1457926 ((_ is Node!15914) (right!57221 (left!56891 (left!56891 t!4440)))))))

(declare-fun e!4682658 () Bool)

(assert (=> d!2372980 (= (inv!95785 (right!57221 (left!56891 (left!56891 t!4440)))) e!4682658)))

(declare-fun b!7935785 () Bool)

(assert (=> b!7935785 (= e!4682658 (inv!95789 (right!57221 (left!56891 (left!56891 t!4440)))))))

(declare-fun b!7935786 () Bool)

(declare-fun e!4682659 () Bool)

(assert (=> b!7935786 (= e!4682658 e!4682659)))

(declare-fun res!3148557 () Bool)

(assert (=> b!7935786 (= res!3148557 (not ((_ is Leaf!30252) (right!57221 (left!56891 (left!56891 t!4440))))))))

(assert (=> b!7935786 (=> res!3148557 e!4682659)))

(declare-fun b!7935787 () Bool)

(assert (=> b!7935787 (= e!4682659 (inv!95790 (right!57221 (left!56891 (left!56891 t!4440)))))))

(assert (= (and d!2372980 c!1457926) b!7935785))

(assert (= (and d!2372980 (not c!1457926)) b!7935786))

(assert (= (and b!7935786 (not res!3148557)) b!7935787))

(declare-fun m!8323756 () Bool)

(assert (=> b!7935785 m!8323756))

(declare-fun m!8323758 () Bool)

(assert (=> b!7935787 m!8323758))

(assert (=> b!7935667 d!2372980))

(declare-fun d!2372982 () Bool)

(declare-fun res!3148558 () Bool)

(declare-fun e!4682660 () Bool)

(assert (=> d!2372982 (=> (not res!3148558) (not e!4682660))))

(assert (=> d!2372982 (= res!3148558 (<= (size!43281 (list!19436 (xs!19310 (right!57221 (right!57221 t!4440))))) 512))))

(assert (=> d!2372982 (= (inv!95790 (right!57221 (right!57221 t!4440))) e!4682660)))

(declare-fun b!7935788 () Bool)

(declare-fun res!3148559 () Bool)

(assert (=> b!7935788 (=> (not res!3148559) (not e!4682660))))

(assert (=> b!7935788 (= res!3148559 (= (csize!32059 (right!57221 (right!57221 t!4440))) (size!43281 (list!19436 (xs!19310 (right!57221 (right!57221 t!4440)))))))))

(declare-fun b!7935789 () Bool)

(assert (=> b!7935789 (= e!4682660 (and (> (csize!32059 (right!57221 (right!57221 t!4440))) 0) (<= (csize!32059 (right!57221 (right!57221 t!4440))) 512)))))

(assert (= (and d!2372982 res!3148558) b!7935788))

(assert (= (and b!7935788 res!3148559) b!7935789))

(declare-fun m!8323760 () Bool)

(assert (=> d!2372982 m!8323760))

(assert (=> d!2372982 m!8323760))

(declare-fun m!8323762 () Bool)

(assert (=> d!2372982 m!8323762))

(assert (=> b!7935788 m!8323760))

(assert (=> b!7935788 m!8323760))

(assert (=> b!7935788 m!8323762))

(assert (=> b!7935609 d!2372982))

(declare-fun d!2372984 () Bool)

(declare-fun res!3148560 () Bool)

(declare-fun e!4682661 () Bool)

(assert (=> d!2372984 (=> (not res!3148560) (not e!4682661))))

(assert (=> d!2372984 (= res!3148560 (<= (size!43281 (list!19436 (xs!19310 (left!56891 (right!57221 t!4440))))) 512))))

(assert (=> d!2372984 (= (inv!95790 (left!56891 (right!57221 t!4440))) e!4682661)))

(declare-fun b!7935790 () Bool)

(declare-fun res!3148561 () Bool)

(assert (=> b!7935790 (=> (not res!3148561) (not e!4682661))))

(assert (=> b!7935790 (= res!3148561 (= (csize!32059 (left!56891 (right!57221 t!4440))) (size!43281 (list!19436 (xs!19310 (left!56891 (right!57221 t!4440)))))))))

(declare-fun b!7935791 () Bool)

(assert (=> b!7935791 (= e!4682661 (and (> (csize!32059 (left!56891 (right!57221 t!4440))) 0) (<= (csize!32059 (left!56891 (right!57221 t!4440))) 512)))))

(assert (= (and d!2372984 res!3148560) b!7935790))

(assert (= (and b!7935790 res!3148561) b!7935791))

(declare-fun m!8323764 () Bool)

(assert (=> d!2372984 m!8323764))

(assert (=> d!2372984 m!8323764))

(declare-fun m!8323766 () Bool)

(assert (=> d!2372984 m!8323766))

(assert (=> b!7935790 m!8323764))

(assert (=> b!7935790 m!8323764))

(assert (=> b!7935790 m!8323766))

(assert (=> b!7935604 d!2372984))

(assert (=> d!2372818 d!2372966))

(assert (=> d!2372818 d!2372968))

(declare-fun b!7935792 () Bool)

(declare-fun res!3148563 () Bool)

(declare-fun e!4682663 () Bool)

(assert (=> b!7935792 (=> (not res!3148563) (not e!4682663))))

(assert (=> b!7935792 (= res!3148563 (isBalanced!4540 (left!56891 (right!57221 (right!57221 t!4440)))))))

(declare-fun b!7935793 () Bool)

(declare-fun res!3148567 () Bool)

(assert (=> b!7935793 (=> (not res!3148567) (not e!4682663))))

(assert (=> b!7935793 (= res!3148567 (isBalanced!4540 (right!57221 (right!57221 (right!57221 t!4440)))))))

(declare-fun b!7935794 () Bool)

(assert (=> b!7935794 (= e!4682663 (not (isEmpty!42800 (right!57221 (right!57221 (right!57221 t!4440))))))))

(declare-fun b!7935795 () Bool)

(declare-fun res!3148564 () Bool)

(assert (=> b!7935795 (=> (not res!3148564) (not e!4682663))))

(assert (=> b!7935795 (= res!3148564 (not (isEmpty!42800 (left!56891 (right!57221 (right!57221 t!4440))))))))

(declare-fun d!2372986 () Bool)

(declare-fun res!3148566 () Bool)

(declare-fun e!4682662 () Bool)

(assert (=> d!2372986 (=> res!3148566 e!4682662)))

(assert (=> d!2372986 (= res!3148566 (not ((_ is Node!15914) (right!57221 (right!57221 t!4440)))))))

(assert (=> d!2372986 (= (isBalanced!4540 (right!57221 (right!57221 t!4440))) e!4682662)))

(declare-fun b!7935796 () Bool)

(declare-fun res!3148562 () Bool)

(assert (=> b!7935796 (=> (not res!3148562) (not e!4682663))))

(assert (=> b!7935796 (= res!3148562 (<= (- (height!2229 (left!56891 (right!57221 (right!57221 t!4440)))) (height!2229 (right!57221 (right!57221 (right!57221 t!4440))))) 1))))

(declare-fun b!7935797 () Bool)

(assert (=> b!7935797 (= e!4682662 e!4682663)))

(declare-fun res!3148565 () Bool)

(assert (=> b!7935797 (=> (not res!3148565) (not e!4682663))))

(assert (=> b!7935797 (= res!3148565 (<= (- 1) (- (height!2229 (left!56891 (right!57221 (right!57221 t!4440)))) (height!2229 (right!57221 (right!57221 (right!57221 t!4440)))))))))

(assert (= (and d!2372986 (not res!3148566)) b!7935797))

(assert (= (and b!7935797 res!3148565) b!7935796))

(assert (= (and b!7935796 res!3148562) b!7935792))

(assert (= (and b!7935792 res!3148563) b!7935793))

(assert (= (and b!7935793 res!3148567) b!7935795))

(assert (= (and b!7935795 res!3148564) b!7935794))

(declare-fun m!8323774 () Bool)

(assert (=> b!7935794 m!8323774))

(assert (=> b!7935796 m!8323718))

(assert (=> b!7935796 m!8323720))

(assert (=> b!7935797 m!8323718))

(assert (=> b!7935797 m!8323720))

(declare-fun m!8323778 () Bool)

(assert (=> b!7935792 m!8323778))

(declare-fun m!8323780 () Bool)

(assert (=> b!7935793 m!8323780))

(declare-fun m!8323782 () Bool)

(assert (=> b!7935795 m!8323782))

(assert (=> b!7935597 d!2372986))

(declare-fun d!2372994 () Bool)

(declare-fun lt!2695282 () Int)

(assert (=> d!2372994 (>= lt!2695282 0)))

(declare-fun e!4682664 () Int)

(assert (=> d!2372994 (= lt!2695282 e!4682664)))

(declare-fun c!1457927 () Bool)

(assert (=> d!2372994 (= c!1457927 ((_ is Nil!74460) (list!19436 (xs!19310 (Leaf!30252 (fill!295 1 v!5484) 1)))))))

(assert (=> d!2372994 (= (size!43281 (list!19436 (xs!19310 (Leaf!30252 (fill!295 1 v!5484) 1)))) lt!2695282)))

(declare-fun b!7935798 () Bool)

(assert (=> b!7935798 (= e!4682664 0)))

(declare-fun b!7935799 () Bool)

(assert (=> b!7935799 (= e!4682664 (+ 1 (size!43281 (t!390275 (list!19436 (xs!19310 (Leaf!30252 (fill!295 1 v!5484) 1)))))))))

(assert (= (and d!2372994 c!1457927) b!7935798))

(assert (= (and d!2372994 (not c!1457927)) b!7935799))

(declare-fun m!8323784 () Bool)

(assert (=> b!7935799 m!8323784))

(assert (=> d!2372800 d!2372994))

(declare-fun d!2372998 () Bool)

(assert (=> d!2372998 (= (list!19436 (xs!19310 (Leaf!30252 (fill!295 1 v!5484) 1))) (innerList!16002 (xs!19310 (Leaf!30252 (fill!295 1 v!5484) 1))))))

(assert (=> d!2372800 d!2372998))

(declare-fun d!2373000 () Bool)

(declare-fun lt!2695283 () Int)

(assert (=> d!2373000 (= lt!2695283 (size!43281 (list!19438 (left!56891 (Leaf!30252 (fill!295 1 v!5484) 1)))))))

(assert (=> d!2373000 (= lt!2695283 (ite ((_ is Empty!15914) (left!56891 (Leaf!30252 (fill!295 1 v!5484) 1))) 0 (ite ((_ is Leaf!30252) (left!56891 (Leaf!30252 (fill!295 1 v!5484) 1))) (csize!32059 (left!56891 (Leaf!30252 (fill!295 1 v!5484) 1))) (csize!32058 (left!56891 (Leaf!30252 (fill!295 1 v!5484) 1))))))))

(assert (=> d!2373000 (= (size!43284 (left!56891 (Leaf!30252 (fill!295 1 v!5484) 1))) lt!2695283)))

(declare-fun bs!1969173 () Bool)

(assert (= bs!1969173 d!2373000))

(declare-fun m!8323786 () Bool)

(assert (=> bs!1969173 m!8323786))

(assert (=> bs!1969173 m!8323786))

(declare-fun m!8323788 () Bool)

(assert (=> bs!1969173 m!8323788))

(assert (=> d!2372810 d!2373000))

(declare-fun d!2373002 () Bool)

(declare-fun lt!2695284 () Int)

(assert (=> d!2373002 (= lt!2695284 (size!43281 (list!19438 (right!57221 (Leaf!30252 (fill!295 1 v!5484) 1)))))))

(assert (=> d!2373002 (= lt!2695284 (ite ((_ is Empty!15914) (right!57221 (Leaf!30252 (fill!295 1 v!5484) 1))) 0 (ite ((_ is Leaf!30252) (right!57221 (Leaf!30252 (fill!295 1 v!5484) 1))) (csize!32059 (right!57221 (Leaf!30252 (fill!295 1 v!5484) 1))) (csize!32058 (right!57221 (Leaf!30252 (fill!295 1 v!5484) 1))))))))

(assert (=> d!2373002 (= (size!43284 (right!57221 (Leaf!30252 (fill!295 1 v!5484) 1))) lt!2695284)))

(declare-fun bs!1969174 () Bool)

(assert (= bs!1969174 d!2373002))

(declare-fun m!8323794 () Bool)

(assert (=> bs!1969174 m!8323794))

(assert (=> bs!1969174 m!8323794))

(declare-fun m!8323800 () Bool)

(assert (=> bs!1969174 m!8323800))

(assert (=> d!2372810 d!2373002))

(declare-fun d!2373004 () Bool)

(declare-fun c!1457928 () Bool)

(assert (=> d!2373004 (= c!1457928 ((_ is Node!15914) (left!56891 (right!57221 (right!57221 t!4440)))))))

(declare-fun e!4682666 () Bool)

(assert (=> d!2373004 (= (inv!95785 (left!56891 (right!57221 (right!57221 t!4440)))) e!4682666)))

(declare-fun b!7935803 () Bool)

(assert (=> b!7935803 (= e!4682666 (inv!95789 (left!56891 (right!57221 (right!57221 t!4440)))))))

(declare-fun b!7935804 () Bool)

(declare-fun e!4682667 () Bool)

(assert (=> b!7935804 (= e!4682666 e!4682667)))

(declare-fun res!3148571 () Bool)

(assert (=> b!7935804 (= res!3148571 (not ((_ is Leaf!30252) (left!56891 (right!57221 (right!57221 t!4440))))))))

(assert (=> b!7935804 (=> res!3148571 e!4682667)))

(declare-fun b!7935805 () Bool)

(assert (=> b!7935805 (= e!4682667 (inv!95790 (left!56891 (right!57221 (right!57221 t!4440)))))))

(assert (= (and d!2373004 c!1457928) b!7935803))

(assert (= (and d!2373004 (not c!1457928)) b!7935804))

(assert (= (and b!7935804 (not res!3148571)) b!7935805))

(declare-fun m!8323804 () Bool)

(assert (=> b!7935803 m!8323804))

(declare-fun m!8323806 () Bool)

(assert (=> b!7935805 m!8323806))

(assert (=> b!7935688 d!2373004))

(declare-fun d!2373012 () Bool)

(declare-fun c!1457929 () Bool)

(assert (=> d!2373012 (= c!1457929 ((_ is Node!15914) (right!57221 (right!57221 (right!57221 t!4440)))))))

(declare-fun e!4682668 () Bool)

(assert (=> d!2373012 (= (inv!95785 (right!57221 (right!57221 (right!57221 t!4440)))) e!4682668)))

(declare-fun b!7935806 () Bool)

(assert (=> b!7935806 (= e!4682668 (inv!95789 (right!57221 (right!57221 (right!57221 t!4440)))))))

(declare-fun b!7935807 () Bool)

(declare-fun e!4682669 () Bool)

(assert (=> b!7935807 (= e!4682668 e!4682669)))

(declare-fun res!3148572 () Bool)

(assert (=> b!7935807 (= res!3148572 (not ((_ is Leaf!30252) (right!57221 (right!57221 (right!57221 t!4440))))))))

(assert (=> b!7935807 (=> res!3148572 e!4682669)))

(declare-fun b!7935808 () Bool)

(assert (=> b!7935808 (= e!4682669 (inv!95790 (right!57221 (right!57221 (right!57221 t!4440)))))))

(assert (= (and d!2373012 c!1457929) b!7935806))

(assert (= (and d!2373012 (not c!1457929)) b!7935807))

(assert (= (and b!7935807 (not res!3148572)) b!7935808))

(declare-fun m!8323812 () Bool)

(assert (=> b!7935806 m!8323812))

(declare-fun m!8323814 () Bool)

(assert (=> b!7935808 m!8323814))

(assert (=> b!7935688 d!2373012))

(declare-fun d!2373016 () Bool)

(declare-fun res!3148573 () Bool)

(declare-fun e!4682670 () Bool)

(assert (=> d!2373016 (=> (not res!3148573) (not e!4682670))))

(assert (=> d!2373016 (= res!3148573 (= (csize!32058 (right!57221 (left!56891 t!4440))) (+ (size!43284 (left!56891 (right!57221 (left!56891 t!4440)))) (size!43284 (right!57221 (right!57221 (left!56891 t!4440)))))))))

(assert (=> d!2373016 (= (inv!95789 (right!57221 (left!56891 t!4440))) e!4682670)))

(declare-fun b!7935809 () Bool)

(declare-fun res!3148574 () Bool)

(assert (=> b!7935809 (=> (not res!3148574) (not e!4682670))))

(assert (=> b!7935809 (= res!3148574 (and (not (= (left!56891 (right!57221 (left!56891 t!4440))) Empty!15914)) (not (= (right!57221 (right!57221 (left!56891 t!4440))) Empty!15914))))))

(declare-fun b!7935810 () Bool)

(declare-fun res!3148575 () Bool)

(assert (=> b!7935810 (=> (not res!3148575) (not e!4682670))))

(assert (=> b!7935810 (= res!3148575 (= (cheight!16125 (right!57221 (left!56891 t!4440))) (+ (max!0 (height!2229 (left!56891 (right!57221 (left!56891 t!4440)))) (height!2229 (right!57221 (right!57221 (left!56891 t!4440))))) 1)))))

(declare-fun b!7935811 () Bool)

(assert (=> b!7935811 (= e!4682670 (<= 0 (cheight!16125 (right!57221 (left!56891 t!4440)))))))

(assert (= (and d!2373016 res!3148573) b!7935809))

(assert (= (and b!7935809 res!3148574) b!7935810))

(assert (= (and b!7935810 res!3148575) b!7935811))

(declare-fun m!8323816 () Bool)

(assert (=> d!2373016 m!8323816))

(declare-fun m!8323818 () Bool)

(assert (=> d!2373016 m!8323818))

(assert (=> b!7935810 m!8323660))

(assert (=> b!7935810 m!8323662))

(assert (=> b!7935810 m!8323660))

(assert (=> b!7935810 m!8323662))

(declare-fun m!8323820 () Bool)

(assert (=> b!7935810 m!8323820))

(assert (=> b!7935550 d!2373016))

(declare-fun d!2373018 () Bool)

(declare-fun lt!2695286 () Bool)

(assert (=> d!2373018 (= lt!2695286 (isEmpty!42802 (list!19438 (left!56891 (right!57221 t!4440)))))))

(assert (=> d!2373018 (= lt!2695286 (= (size!43284 (left!56891 (right!57221 t!4440))) 0))))

(assert (=> d!2373018 (= (isEmpty!42800 (left!56891 (right!57221 t!4440))) lt!2695286)))

(declare-fun bs!1969176 () Bool)

(assert (= bs!1969176 d!2373018))

(assert (=> bs!1969176 m!8323684))

(assert (=> bs!1969176 m!8323684))

(declare-fun m!8323822 () Bool)

(assert (=> bs!1969176 m!8323822))

(assert (=> bs!1969176 m!8323532))

(assert (=> b!7935599 d!2373018))

(declare-fun d!2373020 () Bool)

(declare-fun lt!2695287 () Bool)

(assert (=> d!2373020 (= lt!2695287 (isEmpty!42802 (list!19438 (right!57221 (left!56891 t!4440)))))))

(assert (=> d!2373020 (= lt!2695287 (= (size!43284 (right!57221 (left!56891 t!4440))) 0))))

(assert (=> d!2373020 (= (isEmpty!42800 (right!57221 (left!56891 t!4440))) lt!2695287)))

(declare-fun bs!1969177 () Bool)

(assert (= bs!1969177 d!2373020))

(assert (=> bs!1969177 m!8323676))

(assert (=> bs!1969177 m!8323676))

(declare-fun m!8323824 () Bool)

(assert (=> bs!1969177 m!8323824))

(assert (=> bs!1969177 m!8323488))

(assert (=> b!7935592 d!2373020))

(declare-fun d!2373024 () Bool)

(declare-fun e!4682672 () Bool)

(assert (=> d!2373024 e!4682672))

(declare-fun res!3148576 () Bool)

(assert (=> d!2373024 (=> (not res!3148576) (not e!4682672))))

(declare-fun lt!2695289 () List!74584)

(assert (=> d!2373024 (= res!3148576 (= (content!15795 lt!2695289) (ite (<= (- 1 1) 0) ((as const (Array T!145888 Bool)) false) (store ((as const (Array T!145888 Bool)) false) v!5484 true))))))

(declare-fun e!4682671 () List!74584)

(assert (=> d!2373024 (= lt!2695289 e!4682671)))

(declare-fun c!1457930 () Bool)

(assert (=> d!2373024 (= c!1457930 (<= (- 1 1) 0))))

(assert (=> d!2373024 (= (fill!296 (- 1 1) v!5484) lt!2695289)))

(declare-fun b!7935812 () Bool)

(assert (=> b!7935812 (= e!4682671 Nil!74460)))

(declare-fun b!7935813 () Bool)

(assert (=> b!7935813 (= e!4682671 (Cons!74460 v!5484 (fill!296 (- (- 1 1) 1) v!5484)))))

(declare-fun b!7935814 () Bool)

(assert (=> b!7935814 (= e!4682672 (= (size!43281 lt!2695289) (ite (<= (- 1 1) 0) 0 (- 1 1))))))

(assert (= (and d!2373024 c!1457930) b!7935812))

(assert (= (and d!2373024 (not c!1457930)) b!7935813))

(assert (= (and d!2373024 res!3148576) b!7935814))

(declare-fun m!8323830 () Bool)

(assert (=> d!2373024 m!8323830))

(assert (=> d!2373024 m!8323512))

(declare-fun m!8323832 () Bool)

(assert (=> b!7935813 m!8323832))

(declare-fun m!8323834 () Bool)

(assert (=> b!7935814 m!8323834))

(assert (=> b!7935640 d!2373024))

(declare-fun d!2373028 () Bool)

(assert (=> d!2373028 (= (max!0 (height!2229 (left!56891 t!4440)) (height!2229 (right!57221 t!4440))) (ite (< (height!2229 (left!56891 t!4440)) (height!2229 (right!57221 t!4440))) (height!2229 (right!57221 t!4440)) (height!2229 (left!56891 t!4440))))))

(assert (=> b!7935579 d!2373028))

(assert (=> b!7935579 d!2372832))

(assert (=> b!7935579 d!2372834))

(assert (=> b!7935545 d!2372994))

(assert (=> b!7935545 d!2372998))

(declare-fun d!2373032 () Bool)

(declare-fun lt!2695290 () Int)

(assert (=> d!2373032 (>= lt!2695290 0)))

(declare-fun e!4682677 () Int)

(assert (=> d!2373032 (= lt!2695290 e!4682677)))

(declare-fun c!1457933 () Bool)

(assert (=> d!2373032 (= c!1457933 ((_ is Nil!74460) (list!19436 (xs!19310 (left!56891 t!4440)))))))

(assert (=> d!2373032 (= (size!43281 (list!19436 (xs!19310 (left!56891 t!4440)))) lt!2695290)))

(declare-fun b!7935821 () Bool)

(assert (=> b!7935821 (= e!4682677 0)))

(declare-fun b!7935822 () Bool)

(assert (=> b!7935822 (= e!4682677 (+ 1 (size!43281 (t!390275 (list!19436 (xs!19310 (left!56891 t!4440)))))))))

(assert (= (and d!2373032 c!1457933) b!7935821))

(assert (= (and d!2373032 (not c!1457933)) b!7935822))

(declare-fun m!8323840 () Bool)

(assert (=> b!7935822 m!8323840))

(assert (=> b!7935647 d!2373032))

(declare-fun d!2373034 () Bool)

(assert (=> d!2373034 (= (list!19436 (xs!19310 (left!56891 t!4440))) (innerList!16002 (xs!19310 (left!56891 t!4440))))))

(assert (=> b!7935647 d!2373034))

(assert (=> b!7935594 d!2372906))

(assert (=> b!7935594 d!2372908))

(assert (=> d!2372820 d!2372942))

(assert (=> d!2372820 d!2372930))

(declare-fun d!2373038 () Bool)

(declare-fun c!1457935 () Bool)

(assert (=> d!2373038 (= c!1457935 ((_ is Node!15914) (left!56891 (right!57221 (left!56891 t!4440)))))))

(declare-fun e!4682680 () Bool)

(assert (=> d!2373038 (= (inv!95785 (left!56891 (right!57221 (left!56891 t!4440)))) e!4682680)))

(declare-fun b!7935826 () Bool)

(assert (=> b!7935826 (= e!4682680 (inv!95789 (left!56891 (right!57221 (left!56891 t!4440)))))))

(declare-fun b!7935827 () Bool)

(declare-fun e!4682681 () Bool)

(assert (=> b!7935827 (= e!4682680 e!4682681)))

(declare-fun res!3148580 () Bool)

(assert (=> b!7935827 (= res!3148580 (not ((_ is Leaf!30252) (left!56891 (right!57221 (left!56891 t!4440))))))))

(assert (=> b!7935827 (=> res!3148580 e!4682681)))

(declare-fun b!7935828 () Bool)

(assert (=> b!7935828 (= e!4682681 (inv!95790 (left!56891 (right!57221 (left!56891 t!4440)))))))

(assert (= (and d!2373038 c!1457935) b!7935826))

(assert (= (and d!2373038 (not c!1457935)) b!7935827))

(assert (= (and b!7935827 (not res!3148580)) b!7935828))

(declare-fun m!8323848 () Bool)

(assert (=> b!7935826 m!8323848))

(declare-fun m!8323850 () Bool)

(assert (=> b!7935828 m!8323850))

(assert (=> b!7935672 d!2373038))

(declare-fun d!2373040 () Bool)

(declare-fun c!1457936 () Bool)

(assert (=> d!2373040 (= c!1457936 ((_ is Node!15914) (right!57221 (right!57221 (left!56891 t!4440)))))))

(declare-fun e!4682682 () Bool)

(assert (=> d!2373040 (= (inv!95785 (right!57221 (right!57221 (left!56891 t!4440)))) e!4682682)))

(declare-fun b!7935829 () Bool)

(assert (=> b!7935829 (= e!4682682 (inv!95789 (right!57221 (right!57221 (left!56891 t!4440)))))))

(declare-fun b!7935830 () Bool)

(declare-fun e!4682683 () Bool)

(assert (=> b!7935830 (= e!4682682 e!4682683)))

(declare-fun res!3148581 () Bool)

(assert (=> b!7935830 (= res!3148581 (not ((_ is Leaf!30252) (right!57221 (right!57221 (left!56891 t!4440))))))))

(assert (=> b!7935830 (=> res!3148581 e!4682683)))

(declare-fun b!7935831 () Bool)

(assert (=> b!7935831 (= e!4682683 (inv!95790 (right!57221 (right!57221 (left!56891 t!4440)))))))

(assert (= (and d!2373040 c!1457936) b!7935829))

(assert (= (and d!2373040 (not c!1457936)) b!7935830))

(assert (= (and b!7935830 (not res!3148581)) b!7935831))

(declare-fun m!8323854 () Bool)

(assert (=> b!7935829 m!8323854))

(declare-fun m!8323856 () Bool)

(assert (=> b!7935831 m!8323856))

(assert (=> b!7935672 d!2373040))

(assert (=> d!2372860 d!2373032))

(assert (=> d!2372860 d!2373034))

(declare-fun b!7935835 () Bool)

(declare-fun res!3148584 () Bool)

(declare-fun e!4682687 () Bool)

(assert (=> b!7935835 (=> (not res!3148584) (not e!4682687))))

(assert (=> b!7935835 (= res!3148584 (isBalanced!4540 (left!56891 (left!56891 (left!56891 t!4440)))))))

(declare-fun b!7935836 () Bool)

(declare-fun res!3148588 () Bool)

(assert (=> b!7935836 (=> (not res!3148588) (not e!4682687))))

(assert (=> b!7935836 (= res!3148588 (isBalanced!4540 (right!57221 (left!56891 (left!56891 t!4440)))))))

(declare-fun b!7935837 () Bool)

(assert (=> b!7935837 (= e!4682687 (not (isEmpty!42800 (right!57221 (left!56891 (left!56891 t!4440))))))))

(declare-fun b!7935838 () Bool)

(declare-fun res!3148585 () Bool)

(assert (=> b!7935838 (=> (not res!3148585) (not e!4682687))))

(assert (=> b!7935838 (= res!3148585 (not (isEmpty!42800 (left!56891 (left!56891 (left!56891 t!4440))))))))

(declare-fun d!2373044 () Bool)

(declare-fun res!3148587 () Bool)

(declare-fun e!4682686 () Bool)

(assert (=> d!2373044 (=> res!3148587 e!4682686)))

(assert (=> d!2373044 (= res!3148587 (not ((_ is Node!15914) (left!56891 (left!56891 t!4440)))))))

(assert (=> d!2373044 (= (isBalanced!4540 (left!56891 (left!56891 t!4440))) e!4682686)))

(declare-fun b!7935839 () Bool)

(declare-fun res!3148583 () Bool)

(assert (=> b!7935839 (=> (not res!3148583) (not e!4682687))))

(assert (=> b!7935839 (= res!3148583 (<= (- (height!2229 (left!56891 (left!56891 (left!56891 t!4440)))) (height!2229 (right!57221 (left!56891 (left!56891 t!4440))))) 1))))

(declare-fun b!7935840 () Bool)

(assert (=> b!7935840 (= e!4682686 e!4682687)))

(declare-fun res!3148586 () Bool)

(assert (=> b!7935840 (=> (not res!3148586) (not e!4682687))))

(assert (=> b!7935840 (= res!3148586 (<= (- 1) (- (height!2229 (left!56891 (left!56891 (left!56891 t!4440)))) (height!2229 (right!57221 (left!56891 (left!56891 t!4440)))))))))

(assert (= (and d!2373044 (not res!3148587)) b!7935840))

(assert (= (and b!7935840 res!3148586) b!7935839))

(assert (= (and b!7935839 res!3148583) b!7935835))

(assert (= (and b!7935835 res!3148584) b!7935836))

(assert (= (and b!7935836 res!3148588) b!7935838))

(assert (= (and b!7935838 res!3148585) b!7935837))

(declare-fun m!8323864 () Bool)

(assert (=> b!7935837 m!8323864))

(assert (=> b!7935839 m!8323746))

(assert (=> b!7935839 m!8323748))

(assert (=> b!7935840 m!8323746))

(assert (=> b!7935840 m!8323748))

(declare-fun m!8323868 () Bool)

(assert (=> b!7935835 m!8323868))

(declare-fun m!8323870 () Bool)

(assert (=> b!7935836 m!8323870))

(declare-fun m!8323872 () Bool)

(assert (=> b!7935838 m!8323872))

(assert (=> b!7935590 d!2373044))

(declare-fun d!2373052 () Bool)

(assert (=> d!2373052 (= (inv!95786 (xs!19310 (left!56891 (right!57221 t!4440)))) (<= (size!43281 (innerList!16002 (xs!19310 (left!56891 (right!57221 t!4440))))) 2147483647))))

(declare-fun bs!1969179 () Bool)

(assert (= bs!1969179 d!2373052))

(declare-fun m!8323874 () Bool)

(assert (=> bs!1969179 m!8323874))

(assert (=> b!7935683 d!2373052))

(assert (=> d!2372856 d!2372846))

(declare-fun d!2373056 () Bool)

(assert (=> d!2373056 (= (inv!95786 _$14!1642) (<= (size!43281 (innerList!16002 _$14!1642)) 2147483647))))

(declare-fun bs!1969180 () Bool)

(assert (= bs!1969180 d!2373056))

(declare-fun m!8323876 () Bool)

(assert (=> bs!1969180 m!8323876))

(assert (=> d!2372856 d!2373056))

(assert (=> b!7935533 d!2372840))

(assert (=> b!7935533 d!2372842))

(declare-fun d!2373058 () Bool)

(assert (=> d!2373058 (= (max!0 (height!2229 (left!56891 (left!56891 t!4440))) (height!2229 (right!57221 (left!56891 t!4440)))) (ite (< (height!2229 (left!56891 (left!56891 t!4440))) (height!2229 (right!57221 (left!56891 t!4440)))) (height!2229 (right!57221 (left!56891 t!4440))) (height!2229 (left!56891 (left!56891 t!4440)))))))

(assert (=> b!7935613 d!2373058))

(assert (=> b!7935613 d!2372906))

(assert (=> b!7935613 d!2372908))

(declare-fun d!2373060 () Bool)

(assert (=> d!2373060 (= (inv!95786 (xs!19310 (left!56891 (left!56891 t!4440)))) (<= (size!43281 (innerList!16002 (xs!19310 (left!56891 (left!56891 t!4440))))) 2147483647))))

(declare-fun bs!1969181 () Bool)

(assert (= bs!1969181 d!2373060))

(declare-fun m!8323881 () Bool)

(assert (=> bs!1969181 m!8323881))

(assert (=> b!7935668 d!2373060))

(declare-fun d!2373062 () Bool)

(declare-fun lt!2695293 () Int)

(assert (=> d!2373062 (>= lt!2695293 0)))

(declare-fun e!4682691 () Int)

(assert (=> d!2373062 (= lt!2695293 e!4682691)))

(declare-fun c!1457940 () Bool)

(assert (=> d!2373062 (= c!1457940 ((_ is Nil!74460) (innerList!16002 (xs!19310 (right!57221 t!4440)))))))

(assert (=> d!2373062 (= (size!43281 (innerList!16002 (xs!19310 (right!57221 t!4440)))) lt!2695293)))

(declare-fun b!7935847 () Bool)

(assert (=> b!7935847 (= e!4682691 0)))

(declare-fun b!7935848 () Bool)

(assert (=> b!7935848 (= e!4682691 (+ 1 (size!43281 (t!390275 (innerList!16002 (xs!19310 (right!57221 t!4440)))))))))

(assert (= (and d!2373062 c!1457940) b!7935847))

(assert (= (and d!2373062 (not c!1457940)) b!7935848))

(declare-fun m!8323884 () Bool)

(assert (=> b!7935848 m!8323884))

(assert (=> d!2372836 d!2373062))

(declare-fun b!7935852 () Bool)

(declare-fun tp!2359523 () Bool)

(declare-fun e!4682693 () Bool)

(declare-fun tp!2359521 () Bool)

(assert (=> b!7935852 (= e!4682693 (and (inv!95785 (left!56891 (left!56891 (right!57221 (left!56891 t!4440))))) tp!2359521 (inv!95785 (right!57221 (left!56891 (right!57221 (left!56891 t!4440))))) tp!2359523))))

(declare-fun b!7935854 () Bool)

(declare-fun e!4682694 () Bool)

(declare-fun tp!2359522 () Bool)

(assert (=> b!7935854 (= e!4682694 tp!2359522)))

(declare-fun b!7935853 () Bool)

(assert (=> b!7935853 (= e!4682693 (and (inv!95786 (xs!19310 (left!56891 (right!57221 (left!56891 t!4440))))) e!4682694))))

(assert (=> b!7935672 (= tp!2359494 (and (inv!95785 (left!56891 (right!57221 (left!56891 t!4440)))) e!4682693))))

(assert (= (and b!7935672 ((_ is Node!15914) (left!56891 (right!57221 (left!56891 t!4440))))) b!7935852))

(assert (= b!7935853 b!7935854))

(assert (= (and b!7935672 ((_ is Leaf!30252) (left!56891 (right!57221 (left!56891 t!4440))))) b!7935853))

(declare-fun m!8323894 () Bool)

(assert (=> b!7935852 m!8323894))

(declare-fun m!8323898 () Bool)

(assert (=> b!7935852 m!8323898))

(declare-fun m!8323900 () Bool)

(assert (=> b!7935853 m!8323900))

(assert (=> b!7935672 m!8323560))

(declare-fun tp!2359526 () Bool)

(declare-fun b!7935857 () Bool)

(declare-fun tp!2359524 () Bool)

(declare-fun e!4682696 () Bool)

(assert (=> b!7935857 (= e!4682696 (and (inv!95785 (left!56891 (right!57221 (right!57221 (left!56891 t!4440))))) tp!2359524 (inv!95785 (right!57221 (right!57221 (right!57221 (left!56891 t!4440))))) tp!2359526))))

(declare-fun b!7935859 () Bool)

(declare-fun e!4682697 () Bool)

(declare-fun tp!2359525 () Bool)

(assert (=> b!7935859 (= e!4682697 tp!2359525)))

(declare-fun b!7935858 () Bool)

(assert (=> b!7935858 (= e!4682696 (and (inv!95786 (xs!19310 (right!57221 (right!57221 (left!56891 t!4440))))) e!4682697))))

(assert (=> b!7935672 (= tp!2359496 (and (inv!95785 (right!57221 (right!57221 (left!56891 t!4440)))) e!4682696))))

(assert (= (and b!7935672 ((_ is Node!15914) (right!57221 (right!57221 (left!56891 t!4440))))) b!7935857))

(assert (= b!7935858 b!7935859))

(assert (= (and b!7935672 ((_ is Leaf!30252) (right!57221 (right!57221 (left!56891 t!4440))))) b!7935858))

(declare-fun m!8323902 () Bool)

(assert (=> b!7935857 m!8323902))

(declare-fun m!8323904 () Bool)

(assert (=> b!7935857 m!8323904))

(declare-fun m!8323908 () Bool)

(assert (=> b!7935858 m!8323908))

(assert (=> b!7935672 m!8323562))

(declare-fun b!7935860 () Bool)

(declare-fun e!4682698 () Bool)

(declare-fun tp!2359527 () Bool)

(assert (=> b!7935860 (= e!4682698 (and tp_is_empty!53253 tp!2359527))))

(assert (=> b!7935646 (= tp!2359490 e!4682698)))

(assert (= (and b!7935646 ((_ is Cons!74460) (innerList!16002 _$14!1642))) b!7935860))

(declare-fun b!7935861 () Bool)

(declare-fun e!4682699 () Bool)

(declare-fun tp!2359528 () Bool)

(assert (=> b!7935861 (= e!4682699 (and tp_is_empty!53253 tp!2359528))))

(assert (=> b!7935674 (= tp!2359495 e!4682699)))

(assert (= (and b!7935674 ((_ is Cons!74460) (innerList!16002 (xs!19310 (right!57221 (left!56891 t!4440)))))) b!7935861))

(declare-fun b!7935862 () Bool)

(declare-fun e!4682700 () Bool)

(declare-fun tp!2359529 () Bool)

(assert (=> b!7935862 (= e!4682700 (and tp_is_empty!53253 tp!2359529))))

(assert (=> b!7935690 (= tp!2359502 e!4682700)))

(assert (= (and b!7935690 ((_ is Cons!74460) (innerList!16002 (xs!19310 (right!57221 (right!57221 t!4440)))))) b!7935862))

(declare-fun b!7935863 () Bool)

(declare-fun e!4682701 () Bool)

(declare-fun tp!2359530 () Bool)

(assert (=> b!7935863 (= e!4682701 (and tp_is_empty!53253 tp!2359530))))

(assert (=> b!7935684 (= tp!2359499 e!4682701)))

(assert (= (and b!7935684 ((_ is Cons!74460) (innerList!16002 (xs!19310 (left!56891 (right!57221 t!4440)))))) b!7935863))

(declare-fun b!7935867 () Bool)

(declare-fun e!4682703 () Bool)

(declare-fun tp!2359531 () Bool)

(assert (=> b!7935867 (= e!4682703 (and tp_is_empty!53253 tp!2359531))))

(assert (=> b!7935678 (= tp!2359497 e!4682703)))

(assert (= (and b!7935678 ((_ is Cons!74460) (t!390275 (innerList!16002 (xs!19310 (right!57221 t!4440)))))) b!7935867))

(declare-fun b!7935868 () Bool)

(declare-fun tp!2359534 () Bool)

(declare-fun tp!2359532 () Bool)

(declare-fun e!4682704 () Bool)

(assert (=> b!7935868 (= e!4682704 (and (inv!95785 (left!56891 (left!56891 (right!57221 (right!57221 t!4440))))) tp!2359532 (inv!95785 (right!57221 (left!56891 (right!57221 (right!57221 t!4440))))) tp!2359534))))

(declare-fun b!7935870 () Bool)

(declare-fun e!4682705 () Bool)

(declare-fun tp!2359533 () Bool)

(assert (=> b!7935870 (= e!4682705 tp!2359533)))

(declare-fun b!7935869 () Bool)

(assert (=> b!7935869 (= e!4682704 (and (inv!95786 (xs!19310 (left!56891 (right!57221 (right!57221 t!4440))))) e!4682705))))

(assert (=> b!7935688 (= tp!2359501 (and (inv!95785 (left!56891 (right!57221 (right!57221 t!4440)))) e!4682704))))

(assert (= (and b!7935688 ((_ is Node!15914) (left!56891 (right!57221 (right!57221 t!4440))))) b!7935868))

(assert (= b!7935869 b!7935870))

(assert (= (and b!7935688 ((_ is Leaf!30252) (left!56891 (right!57221 (right!57221 t!4440))))) b!7935869))

(declare-fun m!8323914 () Bool)

(assert (=> b!7935868 m!8323914))

(declare-fun m!8323918 () Bool)

(assert (=> b!7935868 m!8323918))

(declare-fun m!8323922 () Bool)

(assert (=> b!7935869 m!8323922))

(assert (=> b!7935688 m!8323582))

(declare-fun tp!2359535 () Bool)

(declare-fun b!7935871 () Bool)

(declare-fun e!4682706 () Bool)

(declare-fun tp!2359537 () Bool)

(assert (=> b!7935871 (= e!4682706 (and (inv!95785 (left!56891 (right!57221 (right!57221 (right!57221 t!4440))))) tp!2359535 (inv!95785 (right!57221 (right!57221 (right!57221 (right!57221 t!4440))))) tp!2359537))))

(declare-fun b!7935873 () Bool)

(declare-fun e!4682707 () Bool)

(declare-fun tp!2359536 () Bool)

(assert (=> b!7935873 (= e!4682707 tp!2359536)))

(declare-fun b!7935872 () Bool)

(assert (=> b!7935872 (= e!4682706 (and (inv!95786 (xs!19310 (right!57221 (right!57221 (right!57221 t!4440))))) e!4682707))))

(assert (=> b!7935688 (= tp!2359503 (and (inv!95785 (right!57221 (right!57221 (right!57221 t!4440)))) e!4682706))))

(assert (= (and b!7935688 ((_ is Node!15914) (right!57221 (right!57221 (right!57221 t!4440))))) b!7935871))

(assert (= b!7935872 b!7935873))

(assert (= (and b!7935688 ((_ is Leaf!30252) (right!57221 (right!57221 (right!57221 t!4440))))) b!7935872))

(declare-fun m!8323930 () Bool)

(assert (=> b!7935871 m!8323930))

(declare-fun m!8323932 () Bool)

(assert (=> b!7935871 m!8323932))

(declare-fun m!8323934 () Bool)

(assert (=> b!7935872 m!8323934))

(assert (=> b!7935688 m!8323584))

(declare-fun tp!2359538 () Bool)

(declare-fun b!7935874 () Bool)

(declare-fun e!4682708 () Bool)

(declare-fun tp!2359540 () Bool)

(assert (=> b!7935874 (= e!4682708 (and (inv!95785 (left!56891 (left!56891 (left!56891 (right!57221 t!4440))))) tp!2359538 (inv!95785 (right!57221 (left!56891 (left!56891 (right!57221 t!4440))))) tp!2359540))))

(declare-fun b!7935876 () Bool)

(declare-fun e!4682709 () Bool)

(declare-fun tp!2359539 () Bool)

(assert (=> b!7935876 (= e!4682709 tp!2359539)))

(declare-fun b!7935875 () Bool)

(assert (=> b!7935875 (= e!4682708 (and (inv!95786 (xs!19310 (left!56891 (left!56891 (right!57221 t!4440))))) e!4682709))))

(assert (=> b!7935682 (= tp!2359498 (and (inv!95785 (left!56891 (left!56891 (right!57221 t!4440)))) e!4682708))))

(assert (= (and b!7935682 ((_ is Node!15914) (left!56891 (left!56891 (right!57221 t!4440))))) b!7935874))

(assert (= b!7935875 b!7935876))

(assert (= (and b!7935682 ((_ is Leaf!30252) (left!56891 (left!56891 (right!57221 t!4440))))) b!7935875))

(declare-fun m!8323936 () Bool)

(assert (=> b!7935874 m!8323936))

(declare-fun m!8323938 () Bool)

(assert (=> b!7935874 m!8323938))

(declare-fun m!8323940 () Bool)

(assert (=> b!7935875 m!8323940))

(assert (=> b!7935682 m!8323574))

(declare-fun tp!2359541 () Bool)

(declare-fun b!7935877 () Bool)

(declare-fun e!4682710 () Bool)

(declare-fun tp!2359543 () Bool)

(assert (=> b!7935877 (= e!4682710 (and (inv!95785 (left!56891 (right!57221 (left!56891 (right!57221 t!4440))))) tp!2359541 (inv!95785 (right!57221 (right!57221 (left!56891 (right!57221 t!4440))))) tp!2359543))))

(declare-fun b!7935879 () Bool)

(declare-fun e!4682711 () Bool)

(declare-fun tp!2359542 () Bool)

(assert (=> b!7935879 (= e!4682711 tp!2359542)))

(declare-fun b!7935878 () Bool)

(assert (=> b!7935878 (= e!4682710 (and (inv!95786 (xs!19310 (right!57221 (left!56891 (right!57221 t!4440))))) e!4682711))))

(assert (=> b!7935682 (= tp!2359500 (and (inv!95785 (right!57221 (left!56891 (right!57221 t!4440)))) e!4682710))))

(assert (= (and b!7935682 ((_ is Node!15914) (right!57221 (left!56891 (right!57221 t!4440))))) b!7935877))

(assert (= b!7935878 b!7935879))

(assert (= (and b!7935682 ((_ is Leaf!30252) (right!57221 (left!56891 (right!57221 t!4440))))) b!7935878))

(declare-fun m!8323942 () Bool)

(assert (=> b!7935877 m!8323942))

(declare-fun m!8323944 () Bool)

(assert (=> b!7935877 m!8323944))

(declare-fun m!8323946 () Bool)

(assert (=> b!7935878 m!8323946))

(assert (=> b!7935682 m!8323578))

(declare-fun b!7935880 () Bool)

(declare-fun e!4682712 () Bool)

(declare-fun tp!2359544 () Bool)

(assert (=> b!7935880 (= e!4682712 (and tp_is_empty!53253 tp!2359544))))

(assert (=> b!7935691 (= tp!2359504 e!4682712)))

(assert (= (and b!7935691 ((_ is Cons!74460) (t!390275 (innerList!16002 (xs!19310 (left!56891 t!4440)))))) b!7935880))

(declare-fun b!7935881 () Bool)

(declare-fun e!4682713 () Bool)

(declare-fun tp!2359545 () Bool)

(assert (=> b!7935881 (= e!4682713 (and tp_is_empty!53253 tp!2359545))))

(assert (=> b!7935692 (= tp!2359505 e!4682713)))

(assert (= (and b!7935692 ((_ is Cons!74460) (t!390275 (t!390275 (innerList!16002 (xs!19310 t!4440)))))) b!7935881))

(declare-fun b!7935882 () Bool)

(declare-fun e!4682714 () Bool)

(declare-fun tp!2359546 () Bool)

(assert (=> b!7935882 (= e!4682714 (and tp_is_empty!53253 tp!2359546))))

(assert (=> b!7935669 (= tp!2359492 e!4682714)))

(assert (= (and b!7935669 ((_ is Cons!74460) (innerList!16002 (xs!19310 (left!56891 (left!56891 t!4440)))))) b!7935882))

(declare-fun tp!2359549 () Bool)

(declare-fun b!7935883 () Bool)

(declare-fun tp!2359547 () Bool)

(declare-fun e!4682715 () Bool)

(assert (=> b!7935883 (= e!4682715 (and (inv!95785 (left!56891 (left!56891 (left!56891 (left!56891 t!4440))))) tp!2359547 (inv!95785 (right!57221 (left!56891 (left!56891 (left!56891 t!4440))))) tp!2359549))))

(declare-fun b!7935885 () Bool)

(declare-fun e!4682716 () Bool)

(declare-fun tp!2359548 () Bool)

(assert (=> b!7935885 (= e!4682716 tp!2359548)))

(declare-fun b!7935884 () Bool)

(assert (=> b!7935884 (= e!4682715 (and (inv!95786 (xs!19310 (left!56891 (left!56891 (left!56891 t!4440))))) e!4682716))))

(assert (=> b!7935667 (= tp!2359491 (and (inv!95785 (left!56891 (left!56891 (left!56891 t!4440)))) e!4682715))))

(assert (= (and b!7935667 ((_ is Node!15914) (left!56891 (left!56891 (left!56891 t!4440))))) b!7935883))

(assert (= b!7935884 b!7935885))

(assert (= (and b!7935667 ((_ is Leaf!30252) (left!56891 (left!56891 (left!56891 t!4440))))) b!7935884))

(declare-fun m!8323948 () Bool)

(assert (=> b!7935883 m!8323948))

(declare-fun m!8323950 () Bool)

(assert (=> b!7935883 m!8323950))

(declare-fun m!8323952 () Bool)

(assert (=> b!7935884 m!8323952))

(assert (=> b!7935667 m!8323550))

(declare-fun tp!2359552 () Bool)

(declare-fun e!4682717 () Bool)

(declare-fun b!7935886 () Bool)

(declare-fun tp!2359550 () Bool)

(assert (=> b!7935886 (= e!4682717 (and (inv!95785 (left!56891 (right!57221 (left!56891 (left!56891 t!4440))))) tp!2359550 (inv!95785 (right!57221 (right!57221 (left!56891 (left!56891 t!4440))))) tp!2359552))))

(declare-fun b!7935888 () Bool)

(declare-fun e!4682718 () Bool)

(declare-fun tp!2359551 () Bool)

(assert (=> b!7935888 (= e!4682718 tp!2359551)))

(declare-fun b!7935887 () Bool)

(assert (=> b!7935887 (= e!4682717 (and (inv!95786 (xs!19310 (right!57221 (left!56891 (left!56891 t!4440))))) e!4682718))))

(assert (=> b!7935667 (= tp!2359493 (and (inv!95785 (right!57221 (left!56891 (left!56891 t!4440)))) e!4682717))))

(assert (= (and b!7935667 ((_ is Node!15914) (right!57221 (left!56891 (left!56891 t!4440))))) b!7935886))

(assert (= b!7935887 b!7935888))

(assert (= (and b!7935667 ((_ is Leaf!30252) (right!57221 (left!56891 (left!56891 t!4440))))) b!7935887))

(declare-fun m!8323954 () Bool)

(assert (=> b!7935886 m!8323954))

(declare-fun m!8323956 () Bool)

(assert (=> b!7935886 m!8323956))

(declare-fun m!8323958 () Bool)

(assert (=> b!7935887 m!8323958))

(assert (=> b!7935667 m!8323552))

(check-sat (not d!2372924) (not b!7935885) (not b!7935782) (not d!2372914) (not b!7935720) (not d!2373060) (not b!7935862) (not b!7935838) (not b!7935859) (not b!7935796) (not d!2372902) (not b!7935732) (not b!7935886) (not b!7935688) (not b!7935871) (not b!7935881) (not b!7935748) (not b!7935771) (not b!7935717) (not d!2373016) (not b!7935726) (not b!7935839) (not d!2372942) (not b!7935769) (not d!2372950) (not d!2373052) (not b!7935787) tp_is_empty!53253 (not d!2372962) (not b!7935682) (not b!7935858) (not b!7935853) (not d!2372930) (not b!7935760) (not b!7935672) (not b!7935725) (not b!7935805) (not b!7935785) (not d!2373020) (not b!7935878) (not b!7935756) (not b!7935857) (not b!7935718) (not d!2373018) (not b!7935793) (not b!7935724) (not b!7935723) (not b!7935861) (not b!7935788) (not b!7935799) (not d!2372898) (not b!7935840) (not b!7935868) (not b!7935784) (not b!7935792) (not b!7935813) (not b!7935826) (not d!2372900) (not b!7935795) (not b!7935860) (not b!7935873) (not b!7935831) (not b!7935750) (not b!7935790) (not d!2372936) (not b!7935780) (not b!7935863) (not b!7935837) (not b!7935757) (not b!7935828) (not b!7935822) (not b!7935794) (not d!2372984) (not b!7935867) (not b!7935872) (not d!2373024) (not d!2372970) (not d!2372912) (not b!7935810) (not d!2372958) (not b!7935734) (not b!7935751) (not b!7935721) (not d!2372948) (not b!7935764) (not b!7935882) (not b!7935806) (not b!7935880) (not b!7935773) (not b!7935778) (not b!7935755) (not b!7935876) (not d!2373000) (not b!7935848) (not b!7935747) (not b!7935869) (not b!7935835) (not b!7935829) (not b!7935762) (not b!7935854) (not b!7935877) (not b!7935883) (not b!7935716) (not b!7935852) (not d!2373002) (not b!7935814) (not b!7935874) (not d!2373056) (not b!7935715) (not b!7935884) (not b!7935803) (not b!7935887) (not b!7935888) (not b!7935808) (not b!7935797) (not b!7935870) (not d!2372982) (not b!7935879) (not b!7935667) (not b!7935875) (not b!7935836) (not b!7935736) (not b!7935719) (not b!7935722) (not b!7935759) (not d!2372922))
(check-sat)
