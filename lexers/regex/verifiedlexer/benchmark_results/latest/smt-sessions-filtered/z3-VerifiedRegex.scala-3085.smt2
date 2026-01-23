; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!183354 () Bool)

(assert start!183354)

(declare-fun b_free!51493 () Bool)

(declare-fun b_next!52197 () Bool)

(assert (=> start!183354 (= b_free!51493 (not b_next!52197))))

(declare-fun tp!520542 () Bool)

(declare-fun b_and!143615 () Bool)

(assert (=> start!183354 (= tp!520542 b_and!143615)))

(declare-datatypes ((T!31808 0))(
  ( (T!31809 (val!5744 Int)) )
))
(declare-datatypes ((List!20344 0))(
  ( (Nil!20274) (Cons!20274 (h!25675 T!31808) (t!171785 List!20344)) )
))
(declare-datatypes ((IArray!13403 0))(
  ( (IArray!13404 (innerList!6759 List!20344)) )
))
(declare-datatypes ((Conc!6699 0))(
  ( (Node!6699 (left!16190 Conc!6699) (right!16520 Conc!6699) (csize!13628 Int) (cheight!6910 Int)) (Leaf!9785 (xs!9575 IArray!13403) (csize!13629 Int)) (Empty!6699) )
))
(declare-datatypes ((BalanceConc!13342 0))(
  ( (BalanceConc!13343 (c!300481 Conc!6699)) )
))
(declare-fun thiss!5807 () BalanceConc!13342)

(declare-fun p!1441 () Int)

(declare-fun exists!648 (Conc!6699 Int) Bool)

(declare-fun exists!649 (List!20344 Int) Bool)

(declare-fun list!8234 (BalanceConc!13342) List!20344)

(assert (=> start!183354 (not (= (exists!648 (c!300481 thiss!5807) p!1441) (exists!649 (list!8234 thiss!5807) p!1441)))))

(declare-fun e!1176548 () Bool)

(declare-fun inv!26457 (BalanceConc!13342) Bool)

(assert (=> start!183354 (and (inv!26457 thiss!5807) e!1176548)))

(assert (=> start!183354 tp!520542))

(declare-fun b!1841060 () Bool)

(declare-fun tp!520541 () Bool)

(declare-fun inv!26458 (Conc!6699) Bool)

(assert (=> b!1841060 (= e!1176548 (and (inv!26458 (c!300481 thiss!5807)) tp!520541))))

(assert (= start!183354 b!1841060))

(declare-fun m!2268527 () Bool)

(assert (=> start!183354 m!2268527))

(declare-fun m!2268529 () Bool)

(assert (=> start!183354 m!2268529))

(assert (=> start!183354 m!2268529))

(declare-fun m!2268531 () Bool)

(assert (=> start!183354 m!2268531))

(declare-fun m!2268533 () Bool)

(assert (=> start!183354 m!2268533))

(declare-fun m!2268535 () Bool)

(assert (=> b!1841060 m!2268535))

(check-sat (not b!1841060) (not start!183354) b_and!143615 (not b_next!52197))
(check-sat b_and!143615 (not b_next!52197))
(get-model)

(declare-fun d!562982 () Bool)

(declare-fun c!300487 () Bool)

(get-info :version)

(assert (=> d!562982 (= c!300487 ((_ is Node!6699) (c!300481 thiss!5807)))))

(declare-fun e!1176559 () Bool)

(assert (=> d!562982 (= (inv!26458 (c!300481 thiss!5807)) e!1176559)))

(declare-fun b!1841076 () Bool)

(declare-fun inv!26461 (Conc!6699) Bool)

(assert (=> b!1841076 (= e!1176559 (inv!26461 (c!300481 thiss!5807)))))

(declare-fun b!1841077 () Bool)

(declare-fun e!1176560 () Bool)

(assert (=> b!1841077 (= e!1176559 e!1176560)))

(declare-fun res!827392 () Bool)

(assert (=> b!1841077 (= res!827392 (not ((_ is Leaf!9785) (c!300481 thiss!5807))))))

(assert (=> b!1841077 (=> res!827392 e!1176560)))

(declare-fun b!1841078 () Bool)

(declare-fun inv!26462 (Conc!6699) Bool)

(assert (=> b!1841078 (= e!1176560 (inv!26462 (c!300481 thiss!5807)))))

(assert (= (and d!562982 c!300487) b!1841076))

(assert (= (and d!562982 (not c!300487)) b!1841077))

(assert (= (and b!1841077 (not res!827392)) b!1841078))

(declare-fun m!2268541 () Bool)

(assert (=> b!1841076 m!2268541))

(declare-fun m!2268543 () Bool)

(assert (=> b!1841078 m!2268543))

(assert (=> b!1841060 d!562982))

(declare-fun b!1841104 () Bool)

(declare-fun e!1176577 () Bool)

(assert (=> b!1841104 (= e!1176577 (exists!648 (right!16520 (c!300481 thiss!5807)) p!1441))))

(declare-fun b!1841102 () Bool)

(declare-fun e!1176578 () Bool)

(declare-fun exists!651 (IArray!13403 Int) Bool)

(assert (=> b!1841102 (= e!1176578 (exists!651 (xs!9575 (c!300481 thiss!5807)) p!1441))))

(declare-fun b!1841101 () Bool)

(declare-fun e!1176576 () Bool)

(assert (=> b!1841101 (= e!1176576 e!1176578)))

(declare-fun c!300493 () Bool)

(assert (=> b!1841101 (= c!300493 ((_ is Leaf!9785) (c!300481 thiss!5807)))))

(declare-fun d!562986 () Bool)

(declare-fun lt!714300 () Bool)

(declare-fun list!8236 (Conc!6699) List!20344)

(assert (=> d!562986 (= lt!714300 (exists!649 (list!8236 (c!300481 thiss!5807)) p!1441))))

(assert (=> d!562986 (= lt!714300 e!1176576)))

(declare-fun res!827404 () Bool)

(assert (=> d!562986 (=> (not res!827404) (not e!1176576))))

(assert (=> d!562986 (= res!827404 (not ((_ is Empty!6699) (c!300481 thiss!5807))))))

(assert (=> d!562986 (= (exists!648 (c!300481 thiss!5807) p!1441) lt!714300)))

(declare-fun b!1841103 () Bool)

(assert (=> b!1841103 (= e!1176578 e!1176577)))

(declare-datatypes ((Unit!34987 0))(
  ( (Unit!34988) )
))
(declare-fun lt!714299 () Unit!34987)

(declare-fun lemmaExistsConcat!2 (List!20344 List!20344 Int) Unit!34987)

(assert (=> b!1841103 (= lt!714299 (lemmaExistsConcat!2 (list!8236 (left!16190 (c!300481 thiss!5807))) (list!8236 (right!16520 (c!300481 thiss!5807))) p!1441))))

(declare-fun res!827403 () Bool)

(assert (=> b!1841103 (= res!827403 (exists!648 (left!16190 (c!300481 thiss!5807)) p!1441))))

(assert (=> b!1841103 (=> res!827403 e!1176577)))

(assert (= (and d!562986 res!827404) b!1841101))

(assert (= (and b!1841101 c!300493) b!1841102))

(assert (= (and b!1841101 (not c!300493)) b!1841103))

(assert (= (and b!1841103 (not res!827403)) b!1841104))

(declare-fun m!2268563 () Bool)

(assert (=> b!1841104 m!2268563))

(declare-fun m!2268565 () Bool)

(assert (=> b!1841102 m!2268565))

(declare-fun m!2268567 () Bool)

(assert (=> d!562986 m!2268567))

(assert (=> d!562986 m!2268567))

(declare-fun m!2268569 () Bool)

(assert (=> d!562986 m!2268569))

(declare-fun m!2268571 () Bool)

(assert (=> b!1841103 m!2268571))

(declare-fun m!2268573 () Bool)

(assert (=> b!1841103 m!2268573))

(assert (=> b!1841103 m!2268571))

(assert (=> b!1841103 m!2268573))

(declare-fun m!2268575 () Bool)

(assert (=> b!1841103 m!2268575))

(declare-fun m!2268577 () Bool)

(assert (=> b!1841103 m!2268577))

(assert (=> start!183354 d!562986))

(declare-fun d!562992 () Bool)

(assert (=> d!562992 true))

(declare-fun order!13071 () Int)

(declare-fun lambda!72304 () Int)

(declare-fun dynLambda!10075 (Int Int) Int)

(assert (=> d!562992 (< (dynLambda!10075 order!13071 p!1441) (dynLambda!10075 order!13071 lambda!72304))))

(declare-fun forall!4355 (List!20344 Int) Bool)

(assert (=> d!562992 (= (exists!649 (list!8234 thiss!5807) p!1441) (not (forall!4355 (list!8234 thiss!5807) lambda!72304)))))

(declare-fun bs!408603 () Bool)

(assert (= bs!408603 d!562992))

(assert (=> bs!408603 m!2268529))

(declare-fun m!2268581 () Bool)

(assert (=> bs!408603 m!2268581))

(assert (=> start!183354 d!562992))

(declare-fun d!562996 () Bool)

(assert (=> d!562996 (= (list!8234 thiss!5807) (list!8236 (c!300481 thiss!5807)))))

(declare-fun bs!408604 () Bool)

(assert (= bs!408604 d!562996))

(assert (=> bs!408604 m!2268567))

(assert (=> start!183354 d!562996))

(declare-fun d!562998 () Bool)

(declare-fun isBalanced!2089 (Conc!6699) Bool)

(assert (=> d!562998 (= (inv!26457 thiss!5807) (isBalanced!2089 (c!300481 thiss!5807)))))

(declare-fun bs!408605 () Bool)

(assert (= bs!408605 d!562998))

(declare-fun m!2268589 () Bool)

(assert (=> bs!408605 m!2268589))

(assert (=> start!183354 d!562998))

(declare-fun tp!520560 () Bool)

(declare-fun tp!520559 () Bool)

(declare-fun e!1176590 () Bool)

(declare-fun b!1841126 () Bool)

(assert (=> b!1841126 (= e!1176590 (and (inv!26458 (left!16190 (c!300481 thiss!5807))) tp!520560 (inv!26458 (right!16520 (c!300481 thiss!5807))) tp!520559))))

(declare-fun b!1841128 () Bool)

(declare-fun e!1176589 () Bool)

(declare-fun tp!520558 () Bool)

(assert (=> b!1841128 (= e!1176589 tp!520558)))

(declare-fun b!1841127 () Bool)

(declare-fun inv!26464 (IArray!13403) Bool)

(assert (=> b!1841127 (= e!1176590 (and (inv!26464 (xs!9575 (c!300481 thiss!5807))) e!1176589))))

(assert (=> b!1841060 (= tp!520541 (and (inv!26458 (c!300481 thiss!5807)) e!1176590))))

(assert (= (and b!1841060 ((_ is Node!6699) (c!300481 thiss!5807))) b!1841126))

(assert (= b!1841127 b!1841128))

(assert (= (and b!1841060 ((_ is Leaf!9785) (c!300481 thiss!5807))) b!1841127))

(declare-fun m!2268591 () Bool)

(assert (=> b!1841126 m!2268591))

(declare-fun m!2268593 () Bool)

(assert (=> b!1841126 m!2268593))

(declare-fun m!2268595 () Bool)

(assert (=> b!1841127 m!2268595))

(assert (=> b!1841060 m!2268535))

(check-sat (not d!562992) (not b!1841128) (not b!1841127) (not b!1841103) (not b!1841076) (not b!1841126) (not b_next!52197) (not b!1841102) (not b!1841060) b_and!143615 (not d!562998) (not d!562986) (not b!1841104) (not d!562996) (not b!1841078))
(check-sat b_and!143615 (not b_next!52197))
