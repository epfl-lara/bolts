; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749134 () Bool)

(assert start!749134)

(declare-fun b!7937664 () Bool)

(declare-fun e!4683686 () Bool)

(declare-fun tp!2359937 () Bool)

(assert (=> b!7937664 (= e!4683686 tp!2359937)))

(declare-fun b!7937665 () Bool)

(declare-fun e!4683685 () Bool)

(declare-datatypes ((T!145968 0))(
  ( (T!145969 (val!32084 Int)) )
))
(declare-datatypes ((List!74596 0))(
  ( (Nil!74472) (Cons!74472 (h!80920 T!145968) (t!390311 List!74596)) )
))
(declare-datatypes ((IArray!31909 0))(
  ( (IArray!31910 (innerList!16012 List!74596)) )
))
(declare-datatypes ((Conc!15924 0))(
  ( (Node!15924 (left!56907 Conc!15924) (right!57237 Conc!15924) (csize!32078 Int) (cheight!16135 Int)) (Leaf!30268 (xs!19322 IArray!31909) (csize!32079 Int)) (Empty!15924) )
))
(declare-fun ys!40 () Conc!15924)

(declare-fun inv!95839 (IArray!31909) Bool)

(assert (=> b!7937665 (= e!4683685 (and (inv!95839 (xs!19322 ys!40)) e!4683686))))

(declare-fun res!3149198 () Bool)

(declare-fun e!4683688 () Bool)

(assert (=> start!749134 (=> (not res!3149198) (not e!4683688))))

(declare-fun xs!273 () Conc!15924)

(assert (=> start!749134 (= res!3149198 (and (not (= xs!273 Empty!15924)) (= ys!40 Empty!15924)))))

(assert (=> start!749134 e!4683688))

(declare-fun e!4683684 () Bool)

(declare-fun inv!95840 (Conc!15924) Bool)

(assert (=> start!749134 (and (inv!95840 xs!273) e!4683684)))

(assert (=> start!749134 (and (inv!95840 ys!40) e!4683685)))

(declare-fun tp!2359938 () Bool)

(declare-fun b!7937666 () Bool)

(declare-fun tp!2359942 () Bool)

(assert (=> b!7937666 (= e!4683685 (and (inv!95840 (left!56907 ys!40)) tp!2359942 (inv!95840 (right!57237 ys!40)) tp!2359938))))

(declare-fun b!7937667 () Bool)

(declare-fun tp!2359941 () Bool)

(declare-fun tp!2359939 () Bool)

(assert (=> b!7937667 (= e!4683684 (and (inv!95840 (left!56907 xs!273)) tp!2359939 (inv!95840 (right!57237 xs!273)) tp!2359941))))

(declare-fun b!7937668 () Bool)

(declare-fun e!4683687 () Bool)

(assert (=> b!7937668 (= e!4683684 (and (inv!95839 (xs!19322 xs!273)) e!4683687))))

(declare-fun b!7937669 () Bool)

(declare-fun tp!2359940 () Bool)

(assert (=> b!7937669 (= e!4683687 tp!2359940)))

(declare-fun b!7937670 () Bool)

(declare-fun lt!2695594 () List!74596)

(declare-fun lt!2695593 () List!74596)

(declare-fun ++!18279 (List!74596 List!74596) List!74596)

(assert (=> b!7937670 (= e!4683688 (not (= lt!2695594 (++!18279 lt!2695594 lt!2695593))))))

(declare-fun list!19449 (Conc!15924) List!74596)

(assert (=> b!7937670 (= lt!2695594 (list!19449 xs!273))))

(assert (=> b!7937670 (= lt!2695593 (list!19449 ys!40))))

(assert (= (and start!749134 res!3149198) b!7937670))

(get-info :version)

(assert (= (and start!749134 ((_ is Node!15924) xs!273)) b!7937667))

(assert (= b!7937668 b!7937669))

(assert (= (and start!749134 ((_ is Leaf!30268) xs!273)) b!7937668))

(assert (= (and start!749134 ((_ is Node!15924) ys!40)) b!7937666))

(assert (= b!7937665 b!7937664))

(assert (= (and start!749134 ((_ is Leaf!30268) ys!40)) b!7937665))

(declare-fun m!8326530 () Bool)

(assert (=> b!7937666 m!8326530))

(declare-fun m!8326532 () Bool)

(assert (=> b!7937666 m!8326532))

(declare-fun m!8326534 () Bool)

(assert (=> b!7937668 m!8326534))

(declare-fun m!8326536 () Bool)

(assert (=> start!749134 m!8326536))

(declare-fun m!8326538 () Bool)

(assert (=> start!749134 m!8326538))

(declare-fun m!8326540 () Bool)

(assert (=> b!7937667 m!8326540))

(declare-fun m!8326542 () Bool)

(assert (=> b!7937667 m!8326542))

(declare-fun m!8326544 () Bool)

(assert (=> b!7937665 m!8326544))

(declare-fun m!8326546 () Bool)

(assert (=> b!7937670 m!8326546))

(declare-fun m!8326548 () Bool)

(assert (=> b!7937670 m!8326548))

(declare-fun m!8326550 () Bool)

(assert (=> b!7937670 m!8326550))

(check-sat (not b!7937664) (not b!7937668) (not b!7937670) (not b!7937669) (not b!7937665) (not start!749134) (not b!7937666) (not b!7937667))
(check-sat)
(get-model)

(declare-fun b!7937692 () Bool)

(declare-fun e!4683702 () List!74596)

(assert (=> b!7937692 (= e!4683702 (Cons!74472 (h!80920 lt!2695594) (++!18279 (t!390311 lt!2695594) lt!2695593)))))

(declare-fun b!7937693 () Bool)

(declare-fun res!3149207 () Bool)

(declare-fun e!4683701 () Bool)

(assert (=> b!7937693 (=> (not res!3149207) (not e!4683701))))

(declare-fun lt!2695597 () List!74596)

(declare-fun size!43295 (List!74596) Int)

(assert (=> b!7937693 (= res!3149207 (= (size!43295 lt!2695597) (+ (size!43295 lt!2695594) (size!43295 lt!2695593))))))

(declare-fun b!7937694 () Bool)

(assert (=> b!7937694 (= e!4683701 (or (not (= lt!2695593 Nil!74472)) (= lt!2695597 lt!2695594)))))

(declare-fun d!2374014 () Bool)

(assert (=> d!2374014 e!4683701))

(declare-fun res!3149208 () Bool)

(assert (=> d!2374014 (=> (not res!3149208) (not e!4683701))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15802 (List!74596) (InoxSet T!145968))

(assert (=> d!2374014 (= res!3149208 (= (content!15802 lt!2695597) ((_ map or) (content!15802 lt!2695594) (content!15802 lt!2695593))))))

(assert (=> d!2374014 (= lt!2695597 e!4683702)))

(declare-fun c!1458329 () Bool)

(assert (=> d!2374014 (= c!1458329 ((_ is Nil!74472) lt!2695594))))

(assert (=> d!2374014 (= (++!18279 lt!2695594 lt!2695593) lt!2695597)))

(declare-fun b!7937691 () Bool)

(assert (=> b!7937691 (= e!4683702 lt!2695593)))

(assert (= (and d!2374014 c!1458329) b!7937691))

(assert (= (and d!2374014 (not c!1458329)) b!7937692))

(assert (= (and d!2374014 res!3149208) b!7937693))

(assert (= (and b!7937693 res!3149207) b!7937694))

(declare-fun m!8326560 () Bool)

(assert (=> b!7937692 m!8326560))

(declare-fun m!8326562 () Bool)

(assert (=> b!7937693 m!8326562))

(declare-fun m!8326564 () Bool)

(assert (=> b!7937693 m!8326564))

(declare-fun m!8326566 () Bool)

(assert (=> b!7937693 m!8326566))

(declare-fun m!8326568 () Bool)

(assert (=> d!2374014 m!8326568))

(declare-fun m!8326570 () Bool)

(assert (=> d!2374014 m!8326570))

(declare-fun m!8326572 () Bool)

(assert (=> d!2374014 m!8326572))

(assert (=> b!7937670 d!2374014))

(declare-fun b!7937713 () Bool)

(declare-fun e!4683712 () List!74596)

(declare-fun list!19450 (IArray!31909) List!74596)

(assert (=> b!7937713 (= e!4683712 (list!19450 (xs!19322 xs!273)))))

(declare-fun b!7937711 () Bool)

(declare-fun e!4683711 () List!74596)

(assert (=> b!7937711 (= e!4683711 Nil!74472)))

(declare-fun d!2374022 () Bool)

(declare-fun c!1458336 () Bool)

(assert (=> d!2374022 (= c!1458336 ((_ is Empty!15924) xs!273))))

(assert (=> d!2374022 (= (list!19449 xs!273) e!4683711)))

(declare-fun b!7937712 () Bool)

(assert (=> b!7937712 (= e!4683711 e!4683712)))

(declare-fun c!1458337 () Bool)

(assert (=> b!7937712 (= c!1458337 ((_ is Leaf!30268) xs!273))))

(declare-fun b!7937714 () Bool)

(assert (=> b!7937714 (= e!4683712 (++!18279 (list!19449 (left!56907 xs!273)) (list!19449 (right!57237 xs!273))))))

(assert (= (and d!2374022 c!1458336) b!7937711))

(assert (= (and d!2374022 (not c!1458336)) b!7937712))

(assert (= (and b!7937712 c!1458337) b!7937713))

(assert (= (and b!7937712 (not c!1458337)) b!7937714))

(declare-fun m!8326574 () Bool)

(assert (=> b!7937713 m!8326574))

(declare-fun m!8326576 () Bool)

(assert (=> b!7937714 m!8326576))

(declare-fun m!8326578 () Bool)

(assert (=> b!7937714 m!8326578))

(assert (=> b!7937714 m!8326576))

(assert (=> b!7937714 m!8326578))

(declare-fun m!8326580 () Bool)

(assert (=> b!7937714 m!8326580))

(assert (=> b!7937670 d!2374022))

(declare-fun b!7937717 () Bool)

(declare-fun e!4683714 () List!74596)

(assert (=> b!7937717 (= e!4683714 (list!19450 (xs!19322 ys!40)))))

(declare-fun b!7937715 () Bool)

(declare-fun e!4683713 () List!74596)

(assert (=> b!7937715 (= e!4683713 Nil!74472)))

(declare-fun d!2374024 () Bool)

(declare-fun c!1458338 () Bool)

(assert (=> d!2374024 (= c!1458338 ((_ is Empty!15924) ys!40))))

(assert (=> d!2374024 (= (list!19449 ys!40) e!4683713)))

(declare-fun b!7937716 () Bool)

(assert (=> b!7937716 (= e!4683713 e!4683714)))

(declare-fun c!1458339 () Bool)

(assert (=> b!7937716 (= c!1458339 ((_ is Leaf!30268) ys!40))))

(declare-fun b!7937718 () Bool)

(assert (=> b!7937718 (= e!4683714 (++!18279 (list!19449 (left!56907 ys!40)) (list!19449 (right!57237 ys!40))))))

(assert (= (and d!2374024 c!1458338) b!7937715))

(assert (= (and d!2374024 (not c!1458338)) b!7937716))

(assert (= (and b!7937716 c!1458339) b!7937717))

(assert (= (and b!7937716 (not c!1458339)) b!7937718))

(declare-fun m!8326582 () Bool)

(assert (=> b!7937717 m!8326582))

(declare-fun m!8326584 () Bool)

(assert (=> b!7937718 m!8326584))

(declare-fun m!8326586 () Bool)

(assert (=> b!7937718 m!8326586))

(assert (=> b!7937718 m!8326584))

(assert (=> b!7937718 m!8326586))

(declare-fun m!8326588 () Bool)

(assert (=> b!7937718 m!8326588))

(assert (=> b!7937670 d!2374024))

(declare-fun d!2374026 () Bool)

(assert (=> d!2374026 (= (inv!95839 (xs!19322 ys!40)) (<= (size!43295 (innerList!16012 (xs!19322 ys!40))) 2147483647))))

(declare-fun bs!1969277 () Bool)

(assert (= bs!1969277 d!2374026))

(declare-fun m!8326604 () Bool)

(assert (=> bs!1969277 m!8326604))

(assert (=> b!7937665 d!2374026))

(declare-fun d!2374030 () Bool)

(declare-fun c!1458351 () Bool)

(assert (=> d!2374030 (= c!1458351 ((_ is Node!15924) (left!56907 ys!40)))))

(declare-fun e!4683729 () Bool)

(assert (=> d!2374030 (= (inv!95840 (left!56907 ys!40)) e!4683729)))

(declare-fun b!7937745 () Bool)

(declare-fun inv!95843 (Conc!15924) Bool)

(assert (=> b!7937745 (= e!4683729 (inv!95843 (left!56907 ys!40)))))

(declare-fun b!7937746 () Bool)

(declare-fun e!4683730 () Bool)

(assert (=> b!7937746 (= e!4683729 e!4683730)))

(declare-fun res!3149217 () Bool)

(assert (=> b!7937746 (= res!3149217 (not ((_ is Leaf!30268) (left!56907 ys!40))))))

(assert (=> b!7937746 (=> res!3149217 e!4683730)))

(declare-fun b!7937747 () Bool)

(declare-fun inv!95844 (Conc!15924) Bool)

(assert (=> b!7937747 (= e!4683730 (inv!95844 (left!56907 ys!40)))))

(assert (= (and d!2374030 c!1458351) b!7937745))

(assert (= (and d!2374030 (not c!1458351)) b!7937746))

(assert (= (and b!7937746 (not res!3149217)) b!7937747))

(declare-fun m!8326622 () Bool)

(assert (=> b!7937745 m!8326622))

(declare-fun m!8326624 () Bool)

(assert (=> b!7937747 m!8326624))

(assert (=> b!7937666 d!2374030))

(declare-fun d!2374036 () Bool)

(declare-fun c!1458353 () Bool)

(assert (=> d!2374036 (= c!1458353 ((_ is Node!15924) (right!57237 ys!40)))))

(declare-fun e!4683733 () Bool)

(assert (=> d!2374036 (= (inv!95840 (right!57237 ys!40)) e!4683733)))

(declare-fun b!7937751 () Bool)

(assert (=> b!7937751 (= e!4683733 (inv!95843 (right!57237 ys!40)))))

(declare-fun b!7937752 () Bool)

(declare-fun e!4683734 () Bool)

(assert (=> b!7937752 (= e!4683733 e!4683734)))

(declare-fun res!3149219 () Bool)

(assert (=> b!7937752 (= res!3149219 (not ((_ is Leaf!30268) (right!57237 ys!40))))))

(assert (=> b!7937752 (=> res!3149219 e!4683734)))

(declare-fun b!7937753 () Bool)

(assert (=> b!7937753 (= e!4683734 (inv!95844 (right!57237 ys!40)))))

(assert (= (and d!2374036 c!1458353) b!7937751))

(assert (= (and d!2374036 (not c!1458353)) b!7937752))

(assert (= (and b!7937752 (not res!3149219)) b!7937753))

(declare-fun m!8326630 () Bool)

(assert (=> b!7937751 m!8326630))

(declare-fun m!8326632 () Bool)

(assert (=> b!7937753 m!8326632))

(assert (=> b!7937666 d!2374036))

(declare-fun d!2374040 () Bool)

(declare-fun c!1458355 () Bool)

(assert (=> d!2374040 (= c!1458355 ((_ is Node!15924) xs!273))))

(declare-fun e!4683737 () Bool)

(assert (=> d!2374040 (= (inv!95840 xs!273) e!4683737)))

(declare-fun b!7937757 () Bool)

(assert (=> b!7937757 (= e!4683737 (inv!95843 xs!273))))

(declare-fun b!7937758 () Bool)

(declare-fun e!4683738 () Bool)

(assert (=> b!7937758 (= e!4683737 e!4683738)))

(declare-fun res!3149221 () Bool)

(assert (=> b!7937758 (= res!3149221 (not ((_ is Leaf!30268) xs!273)))))

(assert (=> b!7937758 (=> res!3149221 e!4683738)))

(declare-fun b!7937759 () Bool)

(assert (=> b!7937759 (= e!4683738 (inv!95844 xs!273))))

(assert (= (and d!2374040 c!1458355) b!7937757))

(assert (= (and d!2374040 (not c!1458355)) b!7937758))

(assert (= (and b!7937758 (not res!3149221)) b!7937759))

(declare-fun m!8326638 () Bool)

(assert (=> b!7937757 m!8326638))

(declare-fun m!8326640 () Bool)

(assert (=> b!7937759 m!8326640))

(assert (=> start!749134 d!2374040))

(declare-fun d!2374044 () Bool)

(declare-fun c!1458357 () Bool)

(assert (=> d!2374044 (= c!1458357 ((_ is Node!15924) ys!40))))

(declare-fun e!4683741 () Bool)

(assert (=> d!2374044 (= (inv!95840 ys!40) e!4683741)))

(declare-fun b!7937763 () Bool)

(assert (=> b!7937763 (= e!4683741 (inv!95843 ys!40))))

(declare-fun b!7937764 () Bool)

(declare-fun e!4683742 () Bool)

(assert (=> b!7937764 (= e!4683741 e!4683742)))

(declare-fun res!3149223 () Bool)

(assert (=> b!7937764 (= res!3149223 (not ((_ is Leaf!30268) ys!40)))))

(assert (=> b!7937764 (=> res!3149223 e!4683742)))

(declare-fun b!7937765 () Bool)

(assert (=> b!7937765 (= e!4683742 (inv!95844 ys!40))))

(assert (= (and d!2374044 c!1458357) b!7937763))

(assert (= (and d!2374044 (not c!1458357)) b!7937764))

(assert (= (and b!7937764 (not res!3149223)) b!7937765))

(declare-fun m!8326646 () Bool)

(assert (=> b!7937763 m!8326646))

(declare-fun m!8326648 () Bool)

(assert (=> b!7937765 m!8326648))

(assert (=> start!749134 d!2374044))

(declare-fun d!2374048 () Bool)

(declare-fun c!1458359 () Bool)

(assert (=> d!2374048 (= c!1458359 ((_ is Node!15924) (left!56907 xs!273)))))

(declare-fun e!4683745 () Bool)

(assert (=> d!2374048 (= (inv!95840 (left!56907 xs!273)) e!4683745)))

(declare-fun b!7937769 () Bool)

(assert (=> b!7937769 (= e!4683745 (inv!95843 (left!56907 xs!273)))))

(declare-fun b!7937770 () Bool)

(declare-fun e!4683746 () Bool)

(assert (=> b!7937770 (= e!4683745 e!4683746)))

(declare-fun res!3149225 () Bool)

(assert (=> b!7937770 (= res!3149225 (not ((_ is Leaf!30268) (left!56907 xs!273))))))

(assert (=> b!7937770 (=> res!3149225 e!4683746)))

(declare-fun b!7937771 () Bool)

(assert (=> b!7937771 (= e!4683746 (inv!95844 (left!56907 xs!273)))))

(assert (= (and d!2374048 c!1458359) b!7937769))

(assert (= (and d!2374048 (not c!1458359)) b!7937770))

(assert (= (and b!7937770 (not res!3149225)) b!7937771))

(declare-fun m!8326654 () Bool)

(assert (=> b!7937769 m!8326654))

(declare-fun m!8326656 () Bool)

(assert (=> b!7937771 m!8326656))

(assert (=> b!7937667 d!2374048))

(declare-fun d!2374052 () Bool)

(declare-fun c!1458360 () Bool)

(assert (=> d!2374052 (= c!1458360 ((_ is Node!15924) (right!57237 xs!273)))))

(declare-fun e!4683747 () Bool)

(assert (=> d!2374052 (= (inv!95840 (right!57237 xs!273)) e!4683747)))

(declare-fun b!7937772 () Bool)

(assert (=> b!7937772 (= e!4683747 (inv!95843 (right!57237 xs!273)))))

(declare-fun b!7937773 () Bool)

(declare-fun e!4683748 () Bool)

(assert (=> b!7937773 (= e!4683747 e!4683748)))

(declare-fun res!3149226 () Bool)

(assert (=> b!7937773 (= res!3149226 (not ((_ is Leaf!30268) (right!57237 xs!273))))))

(assert (=> b!7937773 (=> res!3149226 e!4683748)))

(declare-fun b!7937774 () Bool)

(assert (=> b!7937774 (= e!4683748 (inv!95844 (right!57237 xs!273)))))

(assert (= (and d!2374052 c!1458360) b!7937772))

(assert (= (and d!2374052 (not c!1458360)) b!7937773))

(assert (= (and b!7937773 (not res!3149226)) b!7937774))

(declare-fun m!8326658 () Bool)

(assert (=> b!7937772 m!8326658))

(declare-fun m!8326660 () Bool)

(assert (=> b!7937774 m!8326660))

(assert (=> b!7937667 d!2374052))

(declare-fun d!2374054 () Bool)

(assert (=> d!2374054 (= (inv!95839 (xs!19322 xs!273)) (<= (size!43295 (innerList!16012 (xs!19322 xs!273))) 2147483647))))

(declare-fun bs!1969278 () Bool)

(assert (= bs!1969278 d!2374054))

(declare-fun m!8326662 () Bool)

(assert (=> bs!1969278 m!8326662))

(assert (=> b!7937668 d!2374054))

(declare-fun b!7937779 () Bool)

(declare-fun e!4683751 () Bool)

(declare-fun tp_is_empty!53275 () Bool)

(declare-fun tp!2359945 () Bool)

(assert (=> b!7937779 (= e!4683751 (and tp_is_empty!53275 tp!2359945))))

(assert (=> b!7937664 (= tp!2359937 e!4683751)))

(assert (= (and b!7937664 ((_ is Cons!74472) (innerList!16012 (xs!19322 ys!40)))) b!7937779))

(declare-fun e!4683761 () Bool)

(declare-fun tp!2359958 () Bool)

(declare-fun b!7937796 () Bool)

(declare-fun tp!2359959 () Bool)

(assert (=> b!7937796 (= e!4683761 (and (inv!95840 (left!56907 (left!56907 ys!40))) tp!2359959 (inv!95840 (right!57237 (left!56907 ys!40))) tp!2359958))))

(declare-fun b!7937798 () Bool)

(declare-fun e!4683760 () Bool)

(declare-fun tp!2359960 () Bool)

(assert (=> b!7937798 (= e!4683760 tp!2359960)))

(declare-fun b!7937797 () Bool)

(assert (=> b!7937797 (= e!4683761 (and (inv!95839 (xs!19322 (left!56907 ys!40))) e!4683760))))

(assert (=> b!7937666 (= tp!2359942 (and (inv!95840 (left!56907 ys!40)) e!4683761))))

(assert (= (and b!7937666 ((_ is Node!15924) (left!56907 ys!40))) b!7937796))

(assert (= b!7937797 b!7937798))

(assert (= (and b!7937666 ((_ is Leaf!30268) (left!56907 ys!40))) b!7937797))

(declare-fun m!8326668 () Bool)

(assert (=> b!7937796 m!8326668))

(declare-fun m!8326670 () Bool)

(assert (=> b!7937796 m!8326670))

(declare-fun m!8326674 () Bool)

(assert (=> b!7937797 m!8326674))

(assert (=> b!7937666 m!8326530))

(declare-fun tp!2359965 () Bool)

(declare-fun e!4683765 () Bool)

(declare-fun b!7937802 () Bool)

(declare-fun tp!2359964 () Bool)

(assert (=> b!7937802 (= e!4683765 (and (inv!95840 (left!56907 (right!57237 ys!40))) tp!2359965 (inv!95840 (right!57237 (right!57237 ys!40))) tp!2359964))))

(declare-fun b!7937804 () Bool)

(declare-fun e!4683764 () Bool)

(declare-fun tp!2359966 () Bool)

(assert (=> b!7937804 (= e!4683764 tp!2359966)))

(declare-fun b!7937803 () Bool)

(assert (=> b!7937803 (= e!4683765 (and (inv!95839 (xs!19322 (right!57237 ys!40))) e!4683764))))

(assert (=> b!7937666 (= tp!2359938 (and (inv!95840 (right!57237 ys!40)) e!4683765))))

(assert (= (and b!7937666 ((_ is Node!15924) (right!57237 ys!40))) b!7937802))

(assert (= b!7937803 b!7937804))

(assert (= (and b!7937666 ((_ is Leaf!30268) (right!57237 ys!40))) b!7937803))

(declare-fun m!8326680 () Bool)

(assert (=> b!7937802 m!8326680))

(declare-fun m!8326682 () Bool)

(assert (=> b!7937802 m!8326682))

(declare-fun m!8326686 () Bool)

(assert (=> b!7937803 m!8326686))

(assert (=> b!7937666 m!8326532))

(declare-fun tp!2359970 () Bool)

(declare-fun b!7937808 () Bool)

(declare-fun tp!2359971 () Bool)

(declare-fun e!4683769 () Bool)

(assert (=> b!7937808 (= e!4683769 (and (inv!95840 (left!56907 (left!56907 xs!273))) tp!2359971 (inv!95840 (right!57237 (left!56907 xs!273))) tp!2359970))))

(declare-fun b!7937810 () Bool)

(declare-fun e!4683768 () Bool)

(declare-fun tp!2359972 () Bool)

(assert (=> b!7937810 (= e!4683768 tp!2359972)))

(declare-fun b!7937809 () Bool)

(assert (=> b!7937809 (= e!4683769 (and (inv!95839 (xs!19322 (left!56907 xs!273))) e!4683768))))

(assert (=> b!7937667 (= tp!2359939 (and (inv!95840 (left!56907 xs!273)) e!4683769))))

(assert (= (and b!7937667 ((_ is Node!15924) (left!56907 xs!273))) b!7937808))

(assert (= b!7937809 b!7937810))

(assert (= (and b!7937667 ((_ is Leaf!30268) (left!56907 xs!273))) b!7937809))

(declare-fun m!8326692 () Bool)

(assert (=> b!7937808 m!8326692))

(declare-fun m!8326694 () Bool)

(assert (=> b!7937808 m!8326694))

(declare-fun m!8326696 () Bool)

(assert (=> b!7937809 m!8326696))

(assert (=> b!7937667 m!8326540))

(declare-fun tp!2359976 () Bool)

(declare-fun tp!2359975 () Bool)

(declare-fun b!7937815 () Bool)

(declare-fun e!4683773 () Bool)

(assert (=> b!7937815 (= e!4683773 (and (inv!95840 (left!56907 (right!57237 xs!273))) tp!2359976 (inv!95840 (right!57237 (right!57237 xs!273))) tp!2359975))))

(declare-fun b!7937817 () Bool)

(declare-fun e!4683772 () Bool)

(declare-fun tp!2359977 () Bool)

(assert (=> b!7937817 (= e!4683772 tp!2359977)))

(declare-fun b!7937816 () Bool)

(assert (=> b!7937816 (= e!4683773 (and (inv!95839 (xs!19322 (right!57237 xs!273))) e!4683772))))

(assert (=> b!7937667 (= tp!2359941 (and (inv!95840 (right!57237 xs!273)) e!4683773))))

(assert (= (and b!7937667 ((_ is Node!15924) (right!57237 xs!273))) b!7937815))

(assert (= b!7937816 b!7937817))

(assert (= (and b!7937667 ((_ is Leaf!30268) (right!57237 xs!273))) b!7937816))

(declare-fun m!8326698 () Bool)

(assert (=> b!7937815 m!8326698))

(declare-fun m!8326700 () Bool)

(assert (=> b!7937815 m!8326700))

(declare-fun m!8326702 () Bool)

(assert (=> b!7937816 m!8326702))

(assert (=> b!7937667 m!8326542))

(declare-fun b!7937822 () Bool)

(declare-fun e!4683777 () Bool)

(declare-fun tp!2359982 () Bool)

(assert (=> b!7937822 (= e!4683777 (and tp_is_empty!53275 tp!2359982))))

(assert (=> b!7937669 (= tp!2359940 e!4683777)))

(assert (= (and b!7937669 ((_ is Cons!74472) (innerList!16012 (xs!19322 xs!273)))) b!7937822))

(check-sat (not b!7937718) (not b!7937810) (not b!7937771) (not b!7937747) (not d!2374026) (not b!7937817) (not b!7937816) (not b!7937751) (not b!7937717) (not b!7937797) (not b!7937763) (not b!7937693) (not b!7937779) (not d!2374054) (not b!7937692) (not b!7937802) (not b!7937759) (not b!7937753) (not b!7937666) (not b!7937667) (not b!7937796) (not b!7937803) (not b!7937714) (not b!7937745) (not b!7937765) (not b!7937822) (not b!7937809) (not b!7937757) (not b!7937772) tp_is_empty!53275 (not b!7937774) (not b!7937815) (not b!7937713) (not b!7937798) (not b!7937769) (not b!7937804) (not d!2374014) (not b!7937808))
(check-sat)
