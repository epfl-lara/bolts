; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!200424 () Bool)

(assert start!200424)

(declare-fun b_free!56787 () Bool)

(declare-fun b_next!57491 () Bool)

(assert (=> start!200424 (= b_free!56787 (not b_next!57491))))

(declare-fun tp!604410 () Bool)

(declare-fun b_and!162523 () Bool)

(assert (=> start!200424 (= tp!604410 b_and!162523)))

(declare-fun res!892241 () Bool)

(declare-fun e!1285134 () Bool)

(assert (=> start!200424 (=> res!892241 e!1285134)))

(declare-datatypes ((T!35850 0))(
  ( (T!35851 (val!6454 Int)) )
))
(declare-datatypes ((List!22337 0))(
  ( (Nil!22255) (Cons!22255 (h!27656 T!35850) (t!191160 List!22337)) )
))
(declare-datatypes ((IArray!14899 0))(
  ( (IArray!14900 (innerList!7507 List!22337)) )
))
(declare-datatypes ((Conc!7447 0))(
  ( (Node!7447 (left!17707 Conc!7447) (right!18037 Conc!7447) (csize!15124 Int) (cheight!7658 Int)) (Leaf!10912 (xs!10349 IArray!14899) (csize!15125 Int)) (Empty!7447) )
))
(declare-fun lt!764530 () Conc!7447)

(declare-fun isBalanced!2325 (Conc!7447) Bool)

(assert (=> start!200424 (= res!892241 (not (isBalanced!2325 lt!764530)))))

(declare-datatypes ((BalanceConc!14710 0))(
  ( (BalanceConc!14711 (c!329447 Conc!7447)) )
))
(declare-fun thiss!5851 () BalanceConc!14710)

(declare-fun p!1446 () Int)

(declare-fun filter!435 (Conc!7447 Int) Conc!7447)

(assert (=> start!200424 (= lt!764530 (filter!435 (c!329447 thiss!5851) p!1446))))

(assert (=> start!200424 e!1285134))

(declare-fun e!1285135 () Bool)

(declare-fun inv!29461 (BalanceConc!14710) Bool)

(assert (=> start!200424 (and (inv!29461 thiss!5851) e!1285135)))

(assert (=> start!200424 tp!604410))

(declare-fun b!2034725 () Bool)

(declare-fun list!9097 (BalanceConc!14710) List!22337)

(declare-fun filter!436 (List!22337 Int) List!22337)

(assert (=> b!2034725 (= e!1285134 (not (= (list!9097 (BalanceConc!14711 lt!764530)) (filter!436 (list!9097 thiss!5851) p!1446))))))

(declare-fun b!2034726 () Bool)

(declare-fun tp!604409 () Bool)

(declare-fun inv!29462 (Conc!7447) Bool)

(assert (=> b!2034726 (= e!1285135 (and (inv!29462 (c!329447 thiss!5851)) tp!604409))))

(assert (= (and start!200424 (not res!892241)) b!2034725))

(assert (= start!200424 b!2034726))

(declare-fun m!2477351 () Bool)

(assert (=> start!200424 m!2477351))

(declare-fun m!2477353 () Bool)

(assert (=> start!200424 m!2477353))

(declare-fun m!2477355 () Bool)

(assert (=> start!200424 m!2477355))

(declare-fun m!2477357 () Bool)

(assert (=> b!2034725 m!2477357))

(declare-fun m!2477359 () Bool)

(assert (=> b!2034725 m!2477359))

(assert (=> b!2034725 m!2477359))

(declare-fun m!2477361 () Bool)

(assert (=> b!2034725 m!2477361))

(declare-fun m!2477363 () Bool)

(assert (=> b!2034726 m!2477363))

(check-sat (not b!2034726) (not start!200424) (not b_next!57491) (not b!2034725) b_and!162523)
(check-sat b_and!162523 (not b_next!57491))
(get-model)

(declare-fun d!622923 () Bool)

(declare-fun list!9098 (Conc!7447) List!22337)

(assert (=> d!622923 (= (list!9097 (BalanceConc!14711 lt!764530)) (list!9098 (c!329447 (BalanceConc!14711 lt!764530))))))

(declare-fun bs!421305 () Bool)

(assert (= bs!421305 d!622923))

(declare-fun m!2477365 () Bool)

(assert (=> bs!421305 m!2477365))

(assert (=> b!2034725 d!622923))

(declare-fun b!2034752 () Bool)

(declare-fun e!1285150 () List!22337)

(declare-fun e!1285151 () List!22337)

(assert (=> b!2034752 (= e!1285150 e!1285151)))

(declare-fun c!329458 () Bool)

(declare-fun dynLambda!11087 (Int T!35850) Bool)

(assert (=> b!2034752 (= c!329458 (dynLambda!11087 p!1446 (h!27656 (list!9097 thiss!5851))))))

(declare-fun b!2034753 () Bool)

(declare-fun e!1285152 () Bool)

(declare-fun lt!764535 () List!22337)

(declare-fun forall!4737 (List!22337 Int) Bool)

(assert (=> b!2034753 (= e!1285152 (forall!4737 lt!764535 p!1446))))

(declare-fun b!2034754 () Bool)

(declare-fun call!124877 () List!22337)

(assert (=> b!2034754 (= e!1285151 (Cons!22255 (h!27656 (list!9097 thiss!5851)) call!124877))))

(declare-fun b!2034755 () Bool)

(assert (=> b!2034755 (= e!1285150 Nil!22255)))

(declare-fun bm!124872 () Bool)

(assert (=> bm!124872 (= call!124877 (filter!436 (t!191160 (list!9097 thiss!5851)) p!1446))))

(declare-fun b!2034756 () Bool)

(declare-fun res!892250 () Bool)

(assert (=> b!2034756 (=> (not res!892250) (not e!1285152))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3290 (List!22337) (InoxSet T!35850))

(assert (=> b!2034756 (= res!892250 (= ((_ map implies) (content!3290 lt!764535) (content!3290 (list!9097 thiss!5851))) ((as const (InoxSet T!35850)) true)))))

(declare-fun d!622925 () Bool)

(assert (=> d!622925 e!1285152))

(declare-fun res!892249 () Bool)

(assert (=> d!622925 (=> (not res!892249) (not e!1285152))))

(declare-fun size!17387 (List!22337) Int)

(assert (=> d!622925 (= res!892249 (<= (size!17387 lt!764535) (size!17387 (list!9097 thiss!5851))))))

(assert (=> d!622925 (= lt!764535 e!1285150)))

(declare-fun c!329457 () Bool)

(get-info :version)

(assert (=> d!622925 (= c!329457 ((_ is Nil!22255) (list!9097 thiss!5851)))))

(assert (=> d!622925 (= (filter!436 (list!9097 thiss!5851) p!1446) lt!764535)))

(declare-fun b!2034757 () Bool)

(assert (=> b!2034757 (= e!1285151 call!124877)))

(assert (= (and d!622925 c!329457) b!2034755))

(assert (= (and d!622925 (not c!329457)) b!2034752))

(assert (= (and b!2034752 c!329458) b!2034754))

(assert (= (and b!2034752 (not c!329458)) b!2034757))

(assert (= (or b!2034754 b!2034757) bm!124872))

(assert (= (and d!622925 res!892249) b!2034756))

(assert (= (and b!2034756 res!892250) b!2034753))

(declare-fun b_lambda!68645 () Bool)

(assert (=> (not b_lambda!68645) (not b!2034752)))

(declare-fun t!191162 () Bool)

(declare-fun tb!128777 () Bool)

(assert (=> (and start!200424 (= p!1446 p!1446) t!191162) tb!128777))

(declare-fun result!153996 () Bool)

(assert (=> tb!128777 (= result!153996 true)))

(assert (=> b!2034752 t!191162))

(declare-fun b_and!162525 () Bool)

(assert (= b_and!162523 (and (=> t!191162 result!153996) b_and!162525)))

(declare-fun m!2477373 () Bool)

(assert (=> d!622925 m!2477373))

(assert (=> d!622925 m!2477359))

(declare-fun m!2477375 () Bool)

(assert (=> d!622925 m!2477375))

(declare-fun m!2477377 () Bool)

(assert (=> b!2034756 m!2477377))

(assert (=> b!2034756 m!2477359))

(declare-fun m!2477379 () Bool)

(assert (=> b!2034756 m!2477379))

(declare-fun m!2477381 () Bool)

(assert (=> b!2034753 m!2477381))

(declare-fun m!2477383 () Bool)

(assert (=> bm!124872 m!2477383))

(declare-fun m!2477385 () Bool)

(assert (=> b!2034752 m!2477385))

(assert (=> b!2034725 d!622925))

(declare-fun d!622931 () Bool)

(assert (=> d!622931 (= (list!9097 thiss!5851) (list!9098 (c!329447 thiss!5851)))))

(declare-fun bs!421307 () Bool)

(assert (= bs!421307 d!622931))

(declare-fun m!2477387 () Bool)

(assert (=> bs!421307 m!2477387))

(assert (=> b!2034725 d!622931))

(declare-fun b!2034784 () Bool)

(declare-fun res!892270 () Bool)

(declare-fun e!1285165 () Bool)

(assert (=> b!2034784 (=> (not res!892270) (not e!1285165))))

(assert (=> b!2034784 (= res!892270 (isBalanced!2325 (right!18037 lt!764530)))))

(declare-fun b!2034785 () Bool)

(declare-fun res!892274 () Bool)

(assert (=> b!2034785 (=> (not res!892274) (not e!1285165))))

(assert (=> b!2034785 (= res!892274 (isBalanced!2325 (left!17707 lt!764530)))))

(declare-fun b!2034786 () Bool)

(declare-fun res!892272 () Bool)

(assert (=> b!2034786 (=> (not res!892272) (not e!1285165))))

(declare-fun isEmpty!13905 (Conc!7447) Bool)

(assert (=> b!2034786 (= res!892272 (not (isEmpty!13905 (left!17707 lt!764530))))))

(declare-fun b!2034787 () Bool)

(assert (=> b!2034787 (= e!1285165 (not (isEmpty!13905 (right!18037 lt!764530))))))

(declare-fun d!622933 () Bool)

(declare-fun res!892269 () Bool)

(declare-fun e!1285164 () Bool)

(assert (=> d!622933 (=> res!892269 e!1285164)))

(assert (=> d!622933 (= res!892269 (not ((_ is Node!7447) lt!764530)))))

(assert (=> d!622933 (= (isBalanced!2325 lt!764530) e!1285164)))

(declare-fun b!2034788 () Bool)

(assert (=> b!2034788 (= e!1285164 e!1285165)))

(declare-fun res!892271 () Bool)

(assert (=> b!2034788 (=> (not res!892271) (not e!1285165))))

(declare-fun height!1147 (Conc!7447) Int)

(assert (=> b!2034788 (= res!892271 (<= (- 1) (- (height!1147 (left!17707 lt!764530)) (height!1147 (right!18037 lt!764530)))))))

(declare-fun b!2034789 () Bool)

(declare-fun res!892273 () Bool)

(assert (=> b!2034789 (=> (not res!892273) (not e!1285165))))

(assert (=> b!2034789 (= res!892273 (<= (- (height!1147 (left!17707 lt!764530)) (height!1147 (right!18037 lt!764530))) 1))))

(assert (= (and d!622933 (not res!892269)) b!2034788))

(assert (= (and b!2034788 res!892271) b!2034789))

(assert (= (and b!2034789 res!892273) b!2034785))

(assert (= (and b!2034785 res!892274) b!2034784))

(assert (= (and b!2034784 res!892270) b!2034786))

(assert (= (and b!2034786 res!892272) b!2034787))

(declare-fun m!2477405 () Bool)

(assert (=> b!2034788 m!2477405))

(declare-fun m!2477407 () Bool)

(assert (=> b!2034788 m!2477407))

(declare-fun m!2477409 () Bool)

(assert (=> b!2034787 m!2477409))

(declare-fun m!2477411 () Bool)

(assert (=> b!2034786 m!2477411))

(declare-fun m!2477413 () Bool)

(assert (=> b!2034785 m!2477413))

(declare-fun m!2477415 () Bool)

(assert (=> b!2034784 m!2477415))

(assert (=> b!2034789 m!2477405))

(assert (=> b!2034789 m!2477407))

(assert (=> start!200424 d!622933))

(declare-fun b!2034834 () Bool)

(declare-fun e!1285187 () Conc!7447)

(declare-fun lt!764551 () IArray!14899)

(declare-fun size!17389 (IArray!14899) Int)

(assert (=> b!2034834 (= e!1285187 (Leaf!10912 lt!764551 (size!17389 lt!764551)))))

(declare-fun d!622939 () Bool)

(declare-fun e!1285186 () Bool)

(assert (=> d!622939 e!1285186))

(declare-fun res!892295 () Bool)

(assert (=> d!622939 (=> (not res!892295) (not e!1285186))))

(declare-fun lt!764550 () Conc!7447)

(assert (=> d!622939 (= res!892295 (isBalanced!2325 lt!764550))))

(declare-fun e!1285189 () Conc!7447)

(assert (=> d!622939 (= lt!764550 e!1285189)))

(declare-fun c!329477 () Bool)

(assert (=> d!622939 (= c!329477 ((_ is Empty!7447) (c!329447 thiss!5851)))))

(assert (=> d!622939 (isBalanced!2325 (c!329447 thiss!5851))))

(assert (=> d!622939 (= (filter!435 (c!329447 thiss!5851) p!1446) lt!764550)))

(declare-fun b!2034835 () Bool)

(assert (=> b!2034835 (= e!1285187 Empty!7447)))

(declare-fun b!2034836 () Bool)

(declare-fun c!329475 () Bool)

(assert (=> b!2034836 (= c!329475 (= (size!17389 lt!764551) 0))))

(declare-fun filter!437 (IArray!14899 Int) IArray!14899)

(assert (=> b!2034836 (= lt!764551 (filter!437 (xs!10349 (c!329447 thiss!5851)) p!1446))))

(declare-fun e!1285188 () Conc!7447)

(assert (=> b!2034836 (= e!1285188 e!1285187)))

(declare-fun b!2034837 () Bool)

(assert (=> b!2034837 (= e!1285189 e!1285188)))

(declare-fun c!329476 () Bool)

(assert (=> b!2034837 (= c!329476 ((_ is Leaf!10912) (c!329447 thiss!5851)))))

(declare-fun b!2034838 () Bool)

(declare-datatypes ((Unit!36950 0))(
  ( (Unit!36951) )
))
(declare-fun lt!764549 () Unit!36950)

(declare-fun lemmaFilterConcat!17 (List!22337 List!22337 Int) Unit!36950)

(assert (=> b!2034838 (= lt!764549 (lemmaFilterConcat!17 (list!9098 (left!17707 (c!329447 thiss!5851))) (list!9098 (right!18037 (c!329447 thiss!5851))) p!1446))))

(declare-fun ++!6028 (Conc!7447 Conc!7447) Conc!7447)

(assert (=> b!2034838 (= e!1285188 (++!6028 (filter!435 (left!17707 (c!329447 thiss!5851)) p!1446) (filter!435 (right!18037 (c!329447 thiss!5851)) p!1446)))))

(declare-fun b!2034839 () Bool)

(assert (=> b!2034839 (= e!1285189 (c!329447 thiss!5851))))

(declare-fun b!2034840 () Bool)

(assert (=> b!2034840 (= e!1285186 (= (list!9098 lt!764550) (filter!436 (list!9098 (c!329447 thiss!5851)) p!1446)))))

(assert (= (and d!622939 c!329477) b!2034839))

(assert (= (and d!622939 (not c!329477)) b!2034837))

(assert (= (and b!2034837 c!329476) b!2034836))

(assert (= (and b!2034837 (not c!329476)) b!2034838))

(assert (= (and b!2034836 c!329475) b!2034835))

(assert (= (and b!2034836 (not c!329475)) b!2034834))

(assert (= (and d!622939 res!892295) b!2034840))

(declare-fun m!2477429 () Bool)

(assert (=> b!2034834 m!2477429))

(declare-fun m!2477431 () Bool)

(assert (=> d!622939 m!2477431))

(declare-fun m!2477433 () Bool)

(assert (=> d!622939 m!2477433))

(declare-fun m!2477435 () Bool)

(assert (=> b!2034840 m!2477435))

(assert (=> b!2034840 m!2477387))

(assert (=> b!2034840 m!2477387))

(declare-fun m!2477437 () Bool)

(assert (=> b!2034840 m!2477437))

(assert (=> b!2034836 m!2477429))

(declare-fun m!2477439 () Bool)

(assert (=> b!2034836 m!2477439))

(declare-fun m!2477441 () Bool)

(assert (=> b!2034838 m!2477441))

(declare-fun m!2477443 () Bool)

(assert (=> b!2034838 m!2477443))

(declare-fun m!2477445 () Bool)

(assert (=> b!2034838 m!2477445))

(declare-fun m!2477447 () Bool)

(assert (=> b!2034838 m!2477447))

(declare-fun m!2477449 () Bool)

(assert (=> b!2034838 m!2477449))

(declare-fun m!2477451 () Bool)

(assert (=> b!2034838 m!2477451))

(assert (=> b!2034838 m!2477441))

(assert (=> b!2034838 m!2477449))

(assert (=> b!2034838 m!2477447))

(assert (=> b!2034838 m!2477443))

(assert (=> start!200424 d!622939))

(declare-fun d!622943 () Bool)

(assert (=> d!622943 (= (inv!29461 thiss!5851) (isBalanced!2325 (c!329447 thiss!5851)))))

(declare-fun bs!421309 () Bool)

(assert (= bs!421309 d!622943))

(assert (=> bs!421309 m!2477433))

(assert (=> start!200424 d!622943))

(declare-fun d!622945 () Bool)

(declare-fun c!329483 () Bool)

(assert (=> d!622945 (= c!329483 ((_ is Node!7447) (c!329447 thiss!5851)))))

(declare-fun e!1285204 () Bool)

(assert (=> d!622945 (= (inv!29462 (c!329447 thiss!5851)) e!1285204)))

(declare-fun b!2034864 () Bool)

(declare-fun inv!29465 (Conc!7447) Bool)

(assert (=> b!2034864 (= e!1285204 (inv!29465 (c!329447 thiss!5851)))))

(declare-fun b!2034865 () Bool)

(declare-fun e!1285205 () Bool)

(assert (=> b!2034865 (= e!1285204 e!1285205)))

(declare-fun res!892301 () Bool)

(assert (=> b!2034865 (= res!892301 (not ((_ is Leaf!10912) (c!329447 thiss!5851))))))

(assert (=> b!2034865 (=> res!892301 e!1285205)))

(declare-fun b!2034866 () Bool)

(declare-fun inv!29466 (Conc!7447) Bool)

(assert (=> b!2034866 (= e!1285205 (inv!29466 (c!329447 thiss!5851)))))

(assert (= (and d!622945 c!329483) b!2034864))

(assert (= (and d!622945 (not c!329483)) b!2034865))

(assert (= (and b!2034865 (not res!892301)) b!2034866))

(declare-fun m!2477477 () Bool)

(assert (=> b!2034864 m!2477477))

(declare-fun m!2477479 () Bool)

(assert (=> b!2034866 m!2477479))

(assert (=> b!2034726 d!622945))

(declare-fun tp!604426 () Bool)

(declare-fun e!1285212 () Bool)

(declare-fun b!2034878 () Bool)

(declare-fun tp!604427 () Bool)

(assert (=> b!2034878 (= e!1285212 (and (inv!29462 (left!17707 (c!329447 thiss!5851))) tp!604427 (inv!29462 (right!18037 (c!329447 thiss!5851))) tp!604426))))

(declare-fun b!2034880 () Bool)

(declare-fun e!1285213 () Bool)

(declare-fun tp!604428 () Bool)

(assert (=> b!2034880 (= e!1285213 tp!604428)))

(declare-fun b!2034879 () Bool)

(declare-fun inv!29467 (IArray!14899) Bool)

(assert (=> b!2034879 (= e!1285212 (and (inv!29467 (xs!10349 (c!329447 thiss!5851))) e!1285213))))

(assert (=> b!2034726 (= tp!604409 (and (inv!29462 (c!329447 thiss!5851)) e!1285212))))

(assert (= (and b!2034726 ((_ is Node!7447) (c!329447 thiss!5851))) b!2034878))

(assert (= b!2034879 b!2034880))

(assert (= (and b!2034726 ((_ is Leaf!10912) (c!329447 thiss!5851))) b!2034879))

(declare-fun m!2477487 () Bool)

(assert (=> b!2034878 m!2477487))

(declare-fun m!2477489 () Bool)

(assert (=> b!2034878 m!2477489))

(declare-fun m!2477491 () Bool)

(assert (=> b!2034879 m!2477491))

(assert (=> b!2034726 m!2477363))

(declare-fun b_lambda!68651 () Bool)

(assert (= b_lambda!68645 (or (and start!200424 b_free!56787) b_lambda!68651)))

(check-sat (not b!2034864) (not b_lambda!68651) (not b!2034784) (not b!2034880) (not d!622943) (not b!2034879) (not d!622923) (not d!622939) (not b!2034866) b_and!162525 (not b!2034753) (not b!2034786) (not b!2034726) (not b!2034836) (not b!2034789) (not b!2034756) (not b!2034785) (not bm!124872) (not b!2034840) (not d!622925) (not b!2034878) (not b_next!57491) (not b!2034788) (not b!2034838) (not b!2034787) (not b!2034834) (not d!622931))
(check-sat b_and!162525 (not b_next!57491))
