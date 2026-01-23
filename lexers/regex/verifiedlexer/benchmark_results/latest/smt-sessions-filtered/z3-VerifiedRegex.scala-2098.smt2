; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106160 () Bool)

(assert start!106160)

(declare-fun b!1193610 () Bool)

(declare-fun e!766986 () Bool)

(declare-datatypes ((T!21586 0))(
  ( (T!21587 (val!3860 Int)) )
))
(declare-datatypes ((List!12039 0))(
  ( (Nil!12015) (Cons!12015 (h!17416 T!21586) (t!112309 List!12039)) )
))
(declare-datatypes ((IArray!7901 0))(
  ( (IArray!7902 (innerList!4008 List!12039)) )
))
(declare-datatypes ((Conc!3948 0))(
  ( (Node!3948 (left!10470 Conc!3948) (right!10800 Conc!3948) (csize!8126 Int) (cheight!4159 Int)) (Leaf!6047 (xs!6653 IArray!7901) (csize!8127 Int)) (Empty!3948) )
))
(declare-fun lt!409820 () Conc!3948)

(declare-fun isBalanced!1133 (Conc!3948) Bool)

(assert (=> b!1193610 (= e!766986 (isBalanced!1133 lt!409820))))

(declare-fun b!1193611 () Bool)

(declare-fun e!766985 () Bool)

(declare-fun t!4115 () Conc!3948)

(declare-fun e!766982 () Bool)

(declare-fun inv!15969 (IArray!7901) Bool)

(assert (=> b!1193611 (= e!766985 (and (inv!15969 (xs!6653 t!4115)) e!766982))))

(declare-fun b!1193612 () Bool)

(declare-fun res!538939 () Bool)

(declare-fun e!766981 () Bool)

(assert (=> b!1193612 (=> (not res!538939) (not e!766981))))

(assert (=> b!1193612 (= res!538939 (isBalanced!1133 t!4115))))

(declare-fun b!1193613 () Bool)

(declare-fun tp!340249 () Bool)

(assert (=> b!1193613 (= e!766982 tp!340249)))

(declare-fun call!82981 () List!12039)

(declare-fun lt!409822 () List!12039)

(declare-fun lt!409817 () Int)

(declare-fun b!1193614 () Bool)

(declare-fun e!766984 () List!12039)

(declare-fun until!31 () Int)

(declare-fun ++!3054 (List!12039 List!12039) List!12039)

(declare-fun slice!438 (List!12039 Int Int) List!12039)

(assert (=> b!1193614 (= e!766984 (++!3054 call!82981 (slice!438 lt!409822 0 (- until!31 lt!409817))))))

(declare-fun from!553 () Int)

(declare-fun call!82982 () List!12039)

(declare-fun c!198286 () Bool)

(declare-fun bm!82976 () Bool)

(declare-fun c!198285 () Bool)

(declare-fun lt!409818 () List!12039)

(assert (=> bm!82976 (= call!82982 (slice!438 (ite c!198285 lt!409822 lt!409818) (ite c!198285 (- from!553 lt!409817) from!553) (ite c!198285 (- until!31 lt!409817) (ite c!198286 until!31 lt!409817))))))

(declare-fun res!538941 () Bool)

(assert (=> start!106160 (=> (not res!538941) (not e!766981))))

(assert (=> start!106160 (= res!538941 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106160 e!766981))

(assert (=> start!106160 true))

(declare-fun inv!15970 (Conc!3948) Bool)

(assert (=> start!106160 (and (inv!15970 t!4115) e!766985)))

(declare-fun b!1193615 () Bool)

(declare-fun res!538943 () Bool)

(assert (=> b!1193615 (=> (not res!538943) (not e!766981))))

(get-info :version)

(assert (=> b!1193615 (= res!538943 (and (not (= from!553 until!31)) (not ((_ is Leaf!6047) t!4115)) ((_ is Node!3948) t!4115)))))

(declare-fun b!1193616 () Bool)

(declare-fun e!766980 () Bool)

(assert (=> b!1193616 (= e!766981 (not e!766980))))

(declare-fun res!538942 () Bool)

(assert (=> b!1193616 (=> res!538942 e!766980)))

(declare-fun lt!409816 () Int)

(assert (=> b!1193616 (= res!538942 (or (<= lt!409816 from!553) (<= until!31 lt!409816)))))

(declare-fun size!9514 (Conc!3948) Int)

(assert (=> b!1193616 (= lt!409816 (size!9514 (left!10470 t!4115)))))

(declare-fun e!766983 () Bool)

(assert (=> b!1193616 e!766983))

(assert (=> b!1193616 (= c!198285 (<= lt!409817 from!553))))

(declare-fun lt!409821 () List!12039)

(assert (=> b!1193616 (= lt!409821 (slice!438 (++!3054 lt!409818 lt!409822) from!553 until!31))))

(declare-fun size!9515 (List!12039) Int)

(assert (=> b!1193616 (= lt!409817 (size!9515 lt!409818))))

(declare-datatypes ((Unit!18436 0))(
  ( (Unit!18437) )
))
(declare-fun lt!409815 () Unit!18436)

(declare-fun sliceLemma!29 (List!12039 List!12039 Int Int) Unit!18436)

(assert (=> b!1193616 (= lt!409815 (sliceLemma!29 lt!409818 lt!409822 from!553 until!31))))

(declare-fun list!4439 (Conc!3948) List!12039)

(assert (=> b!1193616 (= lt!409822 (list!4439 (right!10800 t!4115)))))

(assert (=> b!1193616 (= lt!409818 (list!4439 (left!10470 t!4115)))))

(declare-fun b!1193617 () Bool)

(assert (=> b!1193617 (= e!766983 (= lt!409821 e!766984))))

(assert (=> b!1193617 (= c!198286 (<= until!31 lt!409817))))

(declare-fun b!1193618 () Bool)

(assert (=> b!1193618 (= e!766980 e!766986)))

(declare-fun res!538944 () Bool)

(assert (=> b!1193618 (=> (not res!538944) (not e!766986))))

(declare-fun lt!409819 () Conc!3948)

(assert (=> b!1193618 (= res!538944 (isBalanced!1133 lt!409819))))

(declare-fun slice!439 (Conc!3948 Int Int) Conc!3948)

(assert (=> b!1193618 (= lt!409820 (slice!439 (right!10800 t!4115) 0 (- until!31 lt!409816)))))

(assert (=> b!1193618 (= lt!409819 (slice!439 (left!10470 t!4115) from!553 lt!409816))))

(declare-fun b!1193619 () Bool)

(assert (=> b!1193619 (= e!766983 (= lt!409821 call!82982))))

(declare-fun b!1193620 () Bool)

(declare-fun tp!340247 () Bool)

(declare-fun tp!340248 () Bool)

(assert (=> b!1193620 (= e!766985 (and (inv!15970 (left!10470 t!4115)) tp!340247 (inv!15970 (right!10800 t!4115)) tp!340248))))

(declare-fun bm!82977 () Bool)

(assert (=> bm!82977 (= call!82981 call!82982)))

(declare-fun b!1193621 () Bool)

(declare-fun res!538940 () Bool)

(assert (=> b!1193621 (=> (not res!538940) (not e!766981))))

(assert (=> b!1193621 (= res!538940 (<= until!31 (size!9514 t!4115)))))

(declare-fun b!1193622 () Bool)

(assert (=> b!1193622 (= e!766984 call!82981)))

(assert (= (and start!106160 res!538941) b!1193621))

(assert (= (and b!1193621 res!538940) b!1193612))

(assert (= (and b!1193612 res!538939) b!1193615))

(assert (= (and b!1193615 res!538943) b!1193616))

(assert (= (and b!1193616 c!198285) b!1193619))

(assert (= (and b!1193616 (not c!198285)) b!1193617))

(assert (= (and b!1193617 c!198286) b!1193622))

(assert (= (and b!1193617 (not c!198286)) b!1193614))

(assert (= (or b!1193622 b!1193614) bm!82977))

(assert (= (or b!1193619 bm!82977) bm!82976))

(assert (= (and b!1193616 (not res!538942)) b!1193618))

(assert (= (and b!1193618 res!538944) b!1193610))

(assert (= (and start!106160 ((_ is Node!3948) t!4115)) b!1193620))

(assert (= b!1193611 b!1193613))

(assert (= (and start!106160 ((_ is Leaf!6047) t!4115)) b!1193611))

(declare-fun m!1368327 () Bool)

(assert (=> b!1193612 m!1368327))

(declare-fun m!1368329 () Bool)

(assert (=> start!106160 m!1368329))

(declare-fun m!1368331 () Bool)

(assert (=> b!1193611 m!1368331))

(declare-fun m!1368333 () Bool)

(assert (=> bm!82976 m!1368333))

(declare-fun m!1368335 () Bool)

(assert (=> b!1193616 m!1368335))

(declare-fun m!1368337 () Bool)

(assert (=> b!1193616 m!1368337))

(declare-fun m!1368339 () Bool)

(assert (=> b!1193616 m!1368339))

(declare-fun m!1368341 () Bool)

(assert (=> b!1193616 m!1368341))

(declare-fun m!1368343 () Bool)

(assert (=> b!1193616 m!1368343))

(declare-fun m!1368345 () Bool)

(assert (=> b!1193616 m!1368345))

(declare-fun m!1368347 () Bool)

(assert (=> b!1193616 m!1368347))

(assert (=> b!1193616 m!1368337))

(declare-fun m!1368349 () Bool)

(assert (=> b!1193610 m!1368349))

(declare-fun m!1368351 () Bool)

(assert (=> b!1193621 m!1368351))

(declare-fun m!1368353 () Bool)

(assert (=> b!1193614 m!1368353))

(assert (=> b!1193614 m!1368353))

(declare-fun m!1368355 () Bool)

(assert (=> b!1193614 m!1368355))

(declare-fun m!1368357 () Bool)

(assert (=> b!1193618 m!1368357))

(declare-fun m!1368359 () Bool)

(assert (=> b!1193618 m!1368359))

(declare-fun m!1368361 () Bool)

(assert (=> b!1193618 m!1368361))

(declare-fun m!1368363 () Bool)

(assert (=> b!1193620 m!1368363))

(declare-fun m!1368365 () Bool)

(assert (=> b!1193620 m!1368365))

(check-sat (not b!1193614) (not b!1193616) (not b!1193613) (not b!1193611) (not b!1193618) (not start!106160) (not b!1193610) (not b!1193621) (not b!1193612) (not b!1193620) (not bm!82976))
(check-sat)
(get-model)

(declare-fun d!340849 () Bool)

(declare-fun take!113 (List!12039 Int) List!12039)

(declare-fun drop!585 (List!12039 Int) List!12039)

(assert (=> d!340849 (= (slice!438 (ite c!198285 lt!409822 lt!409818) (ite c!198285 (- from!553 lt!409817) from!553) (ite c!198285 (- until!31 lt!409817) (ite c!198286 until!31 lt!409817))) (take!113 (drop!585 (ite c!198285 lt!409822 lt!409818) (ite c!198285 (- from!553 lt!409817) from!553)) (- (ite c!198285 (- until!31 lt!409817) (ite c!198286 until!31 lt!409817)) (ite c!198285 (- from!553 lt!409817) from!553))))))

(declare-fun bs!287983 () Bool)

(assert (= bs!287983 d!340849))

(declare-fun m!1368367 () Bool)

(assert (=> bs!287983 m!1368367))

(assert (=> bs!287983 m!1368367))

(declare-fun m!1368369 () Bool)

(assert (=> bs!287983 m!1368369))

(assert (=> bm!82976 d!340849))

(declare-fun b!1193635 () Bool)

(declare-fun e!766991 () Bool)

(declare-fun isEmpty!7227 (Conc!3948) Bool)

(assert (=> b!1193635 (= e!766991 (not (isEmpty!7227 (right!10800 lt!409820))))))

(declare-fun d!340851 () Bool)

(declare-fun res!538960 () Bool)

(declare-fun e!766992 () Bool)

(assert (=> d!340851 (=> res!538960 e!766992)))

(assert (=> d!340851 (= res!538960 (not ((_ is Node!3948) lt!409820)))))

(assert (=> d!340851 (= (isBalanced!1133 lt!409820) e!766992)))

(declare-fun b!1193636 () Bool)

(declare-fun res!538959 () Bool)

(assert (=> b!1193636 (=> (not res!538959) (not e!766991))))

(declare-fun height!546 (Conc!3948) Int)

(assert (=> b!1193636 (= res!538959 (<= (- (height!546 (left!10470 lt!409820)) (height!546 (right!10800 lt!409820))) 1))))

(declare-fun b!1193637 () Bool)

(declare-fun res!538962 () Bool)

(assert (=> b!1193637 (=> (not res!538962) (not e!766991))))

(assert (=> b!1193637 (= res!538962 (isBalanced!1133 (right!10800 lt!409820)))))

(declare-fun b!1193638 () Bool)

(assert (=> b!1193638 (= e!766992 e!766991)))

(declare-fun res!538957 () Bool)

(assert (=> b!1193638 (=> (not res!538957) (not e!766991))))

(assert (=> b!1193638 (= res!538957 (<= (- 1) (- (height!546 (left!10470 lt!409820)) (height!546 (right!10800 lt!409820)))))))

(declare-fun b!1193639 () Bool)

(declare-fun res!538961 () Bool)

(assert (=> b!1193639 (=> (not res!538961) (not e!766991))))

(assert (=> b!1193639 (= res!538961 (not (isEmpty!7227 (left!10470 lt!409820))))))

(declare-fun b!1193640 () Bool)

(declare-fun res!538958 () Bool)

(assert (=> b!1193640 (=> (not res!538958) (not e!766991))))

(assert (=> b!1193640 (= res!538958 (isBalanced!1133 (left!10470 lt!409820)))))

(assert (= (and d!340851 (not res!538960)) b!1193638))

(assert (= (and b!1193638 res!538957) b!1193636))

(assert (= (and b!1193636 res!538959) b!1193640))

(assert (= (and b!1193640 res!538958) b!1193637))

(assert (= (and b!1193637 res!538962) b!1193639))

(assert (= (and b!1193639 res!538961) b!1193635))

(declare-fun m!1368375 () Bool)

(assert (=> b!1193639 m!1368375))

(declare-fun m!1368377 () Bool)

(assert (=> b!1193636 m!1368377))

(declare-fun m!1368379 () Bool)

(assert (=> b!1193636 m!1368379))

(assert (=> b!1193638 m!1368377))

(assert (=> b!1193638 m!1368379))

(declare-fun m!1368381 () Bool)

(assert (=> b!1193640 m!1368381))

(declare-fun m!1368383 () Bool)

(assert (=> b!1193635 m!1368383))

(declare-fun m!1368385 () Bool)

(assert (=> b!1193637 m!1368385))

(assert (=> b!1193610 d!340851))

(declare-fun d!340857 () Bool)

(declare-fun c!198289 () Bool)

(assert (=> d!340857 (= c!198289 ((_ is Node!3948) (left!10470 t!4115)))))

(declare-fun e!767001 () Bool)

(assert (=> d!340857 (= (inv!15970 (left!10470 t!4115)) e!767001)))

(declare-fun b!1193659 () Bool)

(declare-fun inv!15971 (Conc!3948) Bool)

(assert (=> b!1193659 (= e!767001 (inv!15971 (left!10470 t!4115)))))

(declare-fun b!1193660 () Bool)

(declare-fun e!767002 () Bool)

(assert (=> b!1193660 (= e!767001 e!767002)))

(declare-fun res!538977 () Bool)

(assert (=> b!1193660 (= res!538977 (not ((_ is Leaf!6047) (left!10470 t!4115))))))

(assert (=> b!1193660 (=> res!538977 e!767002)))

(declare-fun b!1193661 () Bool)

(declare-fun inv!15972 (Conc!3948) Bool)

(assert (=> b!1193661 (= e!767002 (inv!15972 (left!10470 t!4115)))))

(assert (= (and d!340857 c!198289) b!1193659))

(assert (= (and d!340857 (not c!198289)) b!1193660))

(assert (= (and b!1193660 (not res!538977)) b!1193661))

(declare-fun m!1368387 () Bool)

(assert (=> b!1193659 m!1368387))

(declare-fun m!1368389 () Bool)

(assert (=> b!1193661 m!1368389))

(assert (=> b!1193620 d!340857))

(declare-fun d!340859 () Bool)

(declare-fun c!198290 () Bool)

(assert (=> d!340859 (= c!198290 ((_ is Node!3948) (right!10800 t!4115)))))

(declare-fun e!767003 () Bool)

(assert (=> d!340859 (= (inv!15970 (right!10800 t!4115)) e!767003)))

(declare-fun b!1193662 () Bool)

(assert (=> b!1193662 (= e!767003 (inv!15971 (right!10800 t!4115)))))

(declare-fun b!1193663 () Bool)

(declare-fun e!767004 () Bool)

(assert (=> b!1193663 (= e!767003 e!767004)))

(declare-fun res!538978 () Bool)

(assert (=> b!1193663 (= res!538978 (not ((_ is Leaf!6047) (right!10800 t!4115))))))

(assert (=> b!1193663 (=> res!538978 e!767004)))

(declare-fun b!1193664 () Bool)

(assert (=> b!1193664 (= e!767004 (inv!15972 (right!10800 t!4115)))))

(assert (= (and d!340859 c!198290) b!1193662))

(assert (= (and d!340859 (not c!198290)) b!1193663))

(assert (= (and b!1193663 (not res!538978)) b!1193664))

(declare-fun m!1368391 () Bool)

(assert (=> b!1193662 m!1368391))

(declare-fun m!1368393 () Bool)

(assert (=> b!1193664 m!1368393))

(assert (=> b!1193620 d!340859))

(declare-fun d!340861 () Bool)

(assert (=> d!340861 (= (inv!15969 (xs!6653 t!4115)) (<= (size!9515 (innerList!4008 (xs!6653 t!4115))) 2147483647))))

(declare-fun bs!287985 () Bool)

(assert (= bs!287985 d!340861))

(declare-fun m!1368395 () Bool)

(assert (=> bs!287985 m!1368395))

(assert (=> b!1193611 d!340861))

(declare-fun d!340863 () Bool)

(declare-fun lt!409825 () Int)

(assert (=> d!340863 (= lt!409825 (size!9515 (list!4439 (left!10470 t!4115))))))

(assert (=> d!340863 (= lt!409825 (ite ((_ is Empty!3948) (left!10470 t!4115)) 0 (ite ((_ is Leaf!6047) (left!10470 t!4115)) (csize!8127 (left!10470 t!4115)) (csize!8126 (left!10470 t!4115)))))))

(assert (=> d!340863 (= (size!9514 (left!10470 t!4115)) lt!409825)))

(declare-fun bs!287986 () Bool)

(assert (= bs!287986 d!340863))

(assert (=> bs!287986 m!1368335))

(assert (=> bs!287986 m!1368335))

(declare-fun m!1368421 () Bool)

(assert (=> bs!287986 m!1368421))

(assert (=> b!1193616 d!340863))

(declare-fun d!340869 () Bool)

(assert (=> d!340869 (= (slice!438 (++!3054 lt!409818 lt!409822) from!553 until!31) (take!113 (drop!585 (++!3054 lt!409818 lt!409822) from!553) (- until!31 from!553)))))

(declare-fun bs!287987 () Bool)

(assert (= bs!287987 d!340869))

(assert (=> bs!287987 m!1368337))

(declare-fun m!1368435 () Bool)

(assert (=> bs!287987 m!1368435))

(assert (=> bs!287987 m!1368435))

(declare-fun m!1368437 () Bool)

(assert (=> bs!287987 m!1368437))

(assert (=> b!1193616 d!340869))

(declare-fun b!1193691 () Bool)

(declare-fun e!767015 () List!12039)

(assert (=> b!1193691 (= e!767015 Nil!12015)))

(declare-fun b!1193694 () Bool)

(declare-fun e!767016 () List!12039)

(assert (=> b!1193694 (= e!767016 (++!3054 (list!4439 (left!10470 (left!10470 t!4115))) (list!4439 (right!10800 (left!10470 t!4115)))))))

(declare-fun b!1193693 () Bool)

(declare-fun list!4440 (IArray!7901) List!12039)

(assert (=> b!1193693 (= e!767016 (list!4440 (xs!6653 (left!10470 t!4115))))))

(declare-fun b!1193692 () Bool)

(assert (=> b!1193692 (= e!767015 e!767016)))

(declare-fun c!198296 () Bool)

(assert (=> b!1193692 (= c!198296 ((_ is Leaf!6047) (left!10470 t!4115)))))

(declare-fun d!340873 () Bool)

(declare-fun c!198295 () Bool)

(assert (=> d!340873 (= c!198295 ((_ is Empty!3948) (left!10470 t!4115)))))

(assert (=> d!340873 (= (list!4439 (left!10470 t!4115)) e!767015)))

(assert (= (and d!340873 c!198295) b!1193691))

(assert (= (and d!340873 (not c!198295)) b!1193692))

(assert (= (and b!1193692 c!198296) b!1193693))

(assert (= (and b!1193692 (not c!198296)) b!1193694))

(declare-fun m!1368439 () Bool)

(assert (=> b!1193694 m!1368439))

(declare-fun m!1368441 () Bool)

(assert (=> b!1193694 m!1368441))

(assert (=> b!1193694 m!1368439))

(assert (=> b!1193694 m!1368441))

(declare-fun m!1368443 () Bool)

(assert (=> b!1193694 m!1368443))

(declare-fun m!1368445 () Bool)

(assert (=> b!1193693 m!1368445))

(assert (=> b!1193616 d!340873))

(declare-fun b!1193695 () Bool)

(declare-fun e!767017 () List!12039)

(assert (=> b!1193695 (= e!767017 Nil!12015)))

(declare-fun b!1193698 () Bool)

(declare-fun e!767018 () List!12039)

(assert (=> b!1193698 (= e!767018 (++!3054 (list!4439 (left!10470 (right!10800 t!4115))) (list!4439 (right!10800 (right!10800 t!4115)))))))

(declare-fun b!1193697 () Bool)

(assert (=> b!1193697 (= e!767018 (list!4440 (xs!6653 (right!10800 t!4115))))))

(declare-fun b!1193696 () Bool)

(assert (=> b!1193696 (= e!767017 e!767018)))

(declare-fun c!198298 () Bool)

(assert (=> b!1193696 (= c!198298 ((_ is Leaf!6047) (right!10800 t!4115)))))

(declare-fun d!340875 () Bool)

(declare-fun c!198297 () Bool)

(assert (=> d!340875 (= c!198297 ((_ is Empty!3948) (right!10800 t!4115)))))

(assert (=> d!340875 (= (list!4439 (right!10800 t!4115)) e!767017)))

(assert (= (and d!340875 c!198297) b!1193695))

(assert (= (and d!340875 (not c!198297)) b!1193696))

(assert (= (and b!1193696 c!198298) b!1193697))

(assert (= (and b!1193696 (not c!198298)) b!1193698))

(declare-fun m!1368447 () Bool)

(assert (=> b!1193698 m!1368447))

(declare-fun m!1368449 () Bool)

(assert (=> b!1193698 m!1368449))

(assert (=> b!1193698 m!1368447))

(assert (=> b!1193698 m!1368449))

(declare-fun m!1368451 () Bool)

(assert (=> b!1193698 m!1368451))

(declare-fun m!1368453 () Bool)

(assert (=> b!1193697 m!1368453))

(assert (=> b!1193616 d!340875))

(declare-fun d!340877 () Bool)

(declare-fun lt!409828 () Int)

(assert (=> d!340877 (>= lt!409828 0)))

(declare-fun e!767021 () Int)

(assert (=> d!340877 (= lt!409828 e!767021)))

(declare-fun c!198301 () Bool)

(assert (=> d!340877 (= c!198301 ((_ is Nil!12015) lt!409818))))

(assert (=> d!340877 (= (size!9515 lt!409818) lt!409828)))

(declare-fun b!1193703 () Bool)

(assert (=> b!1193703 (= e!767021 0)))

(declare-fun b!1193704 () Bool)

(assert (=> b!1193704 (= e!767021 (+ 1 (size!9515 (t!112309 lt!409818))))))

(assert (= (and d!340877 c!198301) b!1193703))

(assert (= (and d!340877 (not c!198301)) b!1193704))

(declare-fun m!1368455 () Bool)

(assert (=> b!1193704 m!1368455))

(assert (=> b!1193616 d!340877))

(declare-fun b!1193719 () Bool)

(declare-fun e!767031 () Bool)

(assert (=> b!1193719 (= e!767031 (<= until!31 (+ (size!9515 lt!409818) (size!9515 lt!409822))))))

(declare-fun b!1193720 () Bool)

(declare-fun e!767030 () List!12039)

(declare-fun call!82989 () List!12039)

(assert (=> b!1193720 (= e!767030 call!82989)))

(declare-fun b!1193721 () Bool)

(declare-fun e!767033 () Int)

(assert (=> b!1193721 (= e!767033 until!31)))

(declare-fun b!1193722 () Bool)

(declare-fun e!767032 () List!12039)

(assert (=> b!1193722 (= e!767032 e!767030)))

(declare-fun c!198308 () Bool)

(declare-fun call!82991 () Int)

(assert (=> b!1193722 (= c!198308 (<= until!31 call!82991))))

(declare-fun bm!82984 () Bool)

(assert (=> bm!82984 (= call!82991 (size!9515 lt!409818))))

(declare-fun bm!82985 () Bool)

(declare-fun c!198309 () Bool)

(assert (=> bm!82985 (= c!198309 c!198308)))

(declare-fun call!82990 () List!12039)

(assert (=> bm!82985 (= call!82989 call!82990)))

(declare-fun d!340879 () Bool)

(assert (=> d!340879 (= (slice!438 (++!3054 lt!409818 lt!409822) from!553 until!31) e!767032)))

(declare-fun c!198310 () Bool)

(assert (=> d!340879 (= c!198310 (<= (size!9515 lt!409818) from!553))))

(declare-fun lt!409831 () Unit!18436)

(declare-fun choose!7713 (List!12039 List!12039 Int Int) Unit!18436)

(assert (=> d!340879 (= lt!409831 (choose!7713 lt!409818 lt!409822 from!553 until!31))))

(assert (=> d!340879 e!767031))

(declare-fun res!538999 () Bool)

(assert (=> d!340879 (=> (not res!538999) (not e!767031))))

(assert (=> d!340879 (= res!538999 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!340879 (= (sliceLemma!29 lt!409818 lt!409822 from!553 until!31) lt!409831)))

(declare-fun b!1193723 () Bool)

(assert (=> b!1193723 (= e!767033 call!82991)))

(declare-fun b!1193724 () Bool)

(assert (=> b!1193724 (= e!767030 (++!3054 call!82989 (slice!438 lt!409822 0 (- until!31 call!82991))))))

(declare-fun bm!82986 () Bool)

(assert (=> bm!82986 (= call!82990 (slice!438 (ite c!198310 lt!409822 lt!409818) (ite c!198310 (- from!553 call!82991) from!553) (ite c!198310 (- until!31 call!82991) e!767033)))))

(declare-fun b!1193725 () Bool)

(assert (=> b!1193725 (= e!767032 call!82990)))

(assert (= (and d!340879 res!538999) b!1193719))

(assert (= (and d!340879 c!198310) b!1193725))

(assert (= (and d!340879 (not c!198310)) b!1193722))

(assert (= (and b!1193722 c!198308) b!1193720))

(assert (= (and b!1193722 (not c!198308)) b!1193724))

(assert (= (or b!1193720 b!1193724) bm!82985))

(assert (= (and bm!82985 c!198309) b!1193721))

(assert (= (and bm!82985 (not c!198309)) b!1193723))

(assert (= (or b!1193725 b!1193722 b!1193723 b!1193724) bm!82984))

(assert (= (or b!1193725 bm!82985) bm!82986))

(assert (=> b!1193719 m!1368343))

(declare-fun m!1368457 () Bool)

(assert (=> b!1193719 m!1368457))

(assert (=> bm!82984 m!1368343))

(assert (=> d!340879 m!1368337))

(assert (=> d!340879 m!1368337))

(assert (=> d!340879 m!1368339))

(assert (=> d!340879 m!1368343))

(declare-fun m!1368459 () Bool)

(assert (=> d!340879 m!1368459))

(declare-fun m!1368461 () Bool)

(assert (=> bm!82986 m!1368461))

(declare-fun m!1368463 () Bool)

(assert (=> b!1193724 m!1368463))

(assert (=> b!1193724 m!1368463))

(declare-fun m!1368465 () Bool)

(assert (=> b!1193724 m!1368465))

(assert (=> b!1193616 d!340879))

(declare-fun e!767059 () Bool)

(declare-fun b!1193777 () Bool)

(declare-fun lt!409844 () List!12039)

(assert (=> b!1193777 (= e!767059 (or (not (= lt!409822 Nil!12015)) (= lt!409844 lt!409818)))))

(declare-fun b!1193774 () Bool)

(declare-fun e!767058 () List!12039)

(assert (=> b!1193774 (= e!767058 lt!409822)))

(declare-fun b!1193775 () Bool)

(assert (=> b!1193775 (= e!767058 (Cons!12015 (h!17416 lt!409818) (++!3054 (t!112309 lt!409818) lt!409822)))))

(declare-fun d!340881 () Bool)

(assert (=> d!340881 e!767059))

(declare-fun res!539008 () Bool)

(assert (=> d!340881 (=> (not res!539008) (not e!767059))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1671 (List!12039) (InoxSet T!21586))

(assert (=> d!340881 (= res!539008 (= (content!1671 lt!409844) ((_ map or) (content!1671 lt!409818) (content!1671 lt!409822))))))

(assert (=> d!340881 (= lt!409844 e!767058)))

(declare-fun c!198331 () Bool)

(assert (=> d!340881 (= c!198331 ((_ is Nil!12015) lt!409818))))

(assert (=> d!340881 (= (++!3054 lt!409818 lt!409822) lt!409844)))

(declare-fun b!1193776 () Bool)

(declare-fun res!539009 () Bool)

(assert (=> b!1193776 (=> (not res!539009) (not e!767059))))

(assert (=> b!1193776 (= res!539009 (= (size!9515 lt!409844) (+ (size!9515 lt!409818) (size!9515 lt!409822))))))

(assert (= (and d!340881 c!198331) b!1193774))

(assert (= (and d!340881 (not c!198331)) b!1193775))

(assert (= (and d!340881 res!539008) b!1193776))

(assert (= (and b!1193776 res!539009) b!1193777))

(declare-fun m!1368467 () Bool)

(assert (=> b!1193775 m!1368467))

(declare-fun m!1368469 () Bool)

(assert (=> d!340881 m!1368469))

(declare-fun m!1368471 () Bool)

(assert (=> d!340881 m!1368471))

(declare-fun m!1368473 () Bool)

(assert (=> d!340881 m!1368473))

(declare-fun m!1368475 () Bool)

(assert (=> b!1193776 m!1368475))

(assert (=> b!1193776 m!1368343))

(assert (=> b!1193776 m!1368457))

(assert (=> b!1193616 d!340881))

(declare-fun b!1193778 () Bool)

(declare-fun e!767060 () Bool)

(assert (=> b!1193778 (= e!767060 (not (isEmpty!7227 (right!10800 t!4115))))))

(declare-fun d!340883 () Bool)

(declare-fun res!539013 () Bool)

(declare-fun e!767061 () Bool)

(assert (=> d!340883 (=> res!539013 e!767061)))

(assert (=> d!340883 (= res!539013 (not ((_ is Node!3948) t!4115)))))

(assert (=> d!340883 (= (isBalanced!1133 t!4115) e!767061)))

(declare-fun b!1193779 () Bool)

(declare-fun res!539012 () Bool)

(assert (=> b!1193779 (=> (not res!539012) (not e!767060))))

(assert (=> b!1193779 (= res!539012 (<= (- (height!546 (left!10470 t!4115)) (height!546 (right!10800 t!4115))) 1))))

(declare-fun b!1193780 () Bool)

(declare-fun res!539015 () Bool)

(assert (=> b!1193780 (=> (not res!539015) (not e!767060))))

(assert (=> b!1193780 (= res!539015 (isBalanced!1133 (right!10800 t!4115)))))

(declare-fun b!1193781 () Bool)

(assert (=> b!1193781 (= e!767061 e!767060)))

(declare-fun res!539010 () Bool)

(assert (=> b!1193781 (=> (not res!539010) (not e!767060))))

(assert (=> b!1193781 (= res!539010 (<= (- 1) (- (height!546 (left!10470 t!4115)) (height!546 (right!10800 t!4115)))))))

(declare-fun b!1193782 () Bool)

(declare-fun res!539014 () Bool)

(assert (=> b!1193782 (=> (not res!539014) (not e!767060))))

(assert (=> b!1193782 (= res!539014 (not (isEmpty!7227 (left!10470 t!4115))))))

(declare-fun b!1193783 () Bool)

(declare-fun res!539011 () Bool)

(assert (=> b!1193783 (=> (not res!539011) (not e!767060))))

(assert (=> b!1193783 (= res!539011 (isBalanced!1133 (left!10470 t!4115)))))

(assert (= (and d!340883 (not res!539013)) b!1193781))

(assert (= (and b!1193781 res!539010) b!1193779))

(assert (= (and b!1193779 res!539012) b!1193783))

(assert (= (and b!1193783 res!539011) b!1193780))

(assert (= (and b!1193780 res!539015) b!1193782))

(assert (= (and b!1193782 res!539014) b!1193778))

(declare-fun m!1368477 () Bool)

(assert (=> b!1193782 m!1368477))

(declare-fun m!1368479 () Bool)

(assert (=> b!1193779 m!1368479))

(declare-fun m!1368481 () Bool)

(assert (=> b!1193779 m!1368481))

(assert (=> b!1193781 m!1368479))

(assert (=> b!1193781 m!1368481))

(declare-fun m!1368483 () Bool)

(assert (=> b!1193783 m!1368483))

(declare-fun m!1368485 () Bool)

(assert (=> b!1193778 m!1368485))

(declare-fun m!1368487 () Bool)

(assert (=> b!1193780 m!1368487))

(assert (=> b!1193612 d!340883))

(declare-fun d!340885 () Bool)

(declare-fun c!198332 () Bool)

(assert (=> d!340885 (= c!198332 ((_ is Node!3948) t!4115))))

(declare-fun e!767062 () Bool)

(assert (=> d!340885 (= (inv!15970 t!4115) e!767062)))

(declare-fun b!1193784 () Bool)

(assert (=> b!1193784 (= e!767062 (inv!15971 t!4115))))

(declare-fun b!1193785 () Bool)

(declare-fun e!767063 () Bool)

(assert (=> b!1193785 (= e!767062 e!767063)))

(declare-fun res!539016 () Bool)

(assert (=> b!1193785 (= res!539016 (not ((_ is Leaf!6047) t!4115)))))

(assert (=> b!1193785 (=> res!539016 e!767063)))

(declare-fun b!1193786 () Bool)

(assert (=> b!1193786 (= e!767063 (inv!15972 t!4115))))

(assert (= (and d!340885 c!198332) b!1193784))

(assert (= (and d!340885 (not c!198332)) b!1193785))

(assert (= (and b!1193785 (not res!539016)) b!1193786))

(declare-fun m!1368489 () Bool)

(assert (=> b!1193784 m!1368489))

(declare-fun m!1368491 () Bool)

(assert (=> b!1193786 m!1368491))

(assert (=> start!106160 d!340885))

(declare-fun d!340887 () Bool)

(declare-fun lt!409845 () Int)

(assert (=> d!340887 (= lt!409845 (size!9515 (list!4439 t!4115)))))

(assert (=> d!340887 (= lt!409845 (ite ((_ is Empty!3948) t!4115) 0 (ite ((_ is Leaf!6047) t!4115) (csize!8127 t!4115) (csize!8126 t!4115))))))

(assert (=> d!340887 (= (size!9514 t!4115) lt!409845)))

(declare-fun bs!287988 () Bool)

(assert (= bs!287988 d!340887))

(declare-fun m!1368493 () Bool)

(assert (=> bs!287988 m!1368493))

(assert (=> bs!287988 m!1368493))

(declare-fun m!1368495 () Bool)

(assert (=> bs!287988 m!1368495))

(assert (=> b!1193621 d!340887))

(declare-fun b!1193789 () Bool)

(declare-fun e!767066 () Bool)

(assert (=> b!1193789 (= e!767066 (not (isEmpty!7227 (right!10800 lt!409819))))))

(declare-fun d!340889 () Bool)

(declare-fun res!539022 () Bool)

(declare-fun e!767067 () Bool)

(assert (=> d!340889 (=> res!539022 e!767067)))

(assert (=> d!340889 (= res!539022 (not ((_ is Node!3948) lt!409819)))))

(assert (=> d!340889 (= (isBalanced!1133 lt!409819) e!767067)))

(declare-fun b!1193790 () Bool)

(declare-fun res!539021 () Bool)

(assert (=> b!1193790 (=> (not res!539021) (not e!767066))))

(assert (=> b!1193790 (= res!539021 (<= (- (height!546 (left!10470 lt!409819)) (height!546 (right!10800 lt!409819))) 1))))

(declare-fun b!1193791 () Bool)

(declare-fun res!539024 () Bool)

(assert (=> b!1193791 (=> (not res!539024) (not e!767066))))

(assert (=> b!1193791 (= res!539024 (isBalanced!1133 (right!10800 lt!409819)))))

(declare-fun b!1193792 () Bool)

(assert (=> b!1193792 (= e!767067 e!767066)))

(declare-fun res!539019 () Bool)

(assert (=> b!1193792 (=> (not res!539019) (not e!767066))))

(assert (=> b!1193792 (= res!539019 (<= (- 1) (- (height!546 (left!10470 lt!409819)) (height!546 (right!10800 lt!409819)))))))

(declare-fun b!1193793 () Bool)

(declare-fun res!539023 () Bool)

(assert (=> b!1193793 (=> (not res!539023) (not e!767066))))

(assert (=> b!1193793 (= res!539023 (not (isEmpty!7227 (left!10470 lt!409819))))))

(declare-fun b!1193794 () Bool)

(declare-fun res!539020 () Bool)

(assert (=> b!1193794 (=> (not res!539020) (not e!767066))))

(assert (=> b!1193794 (= res!539020 (isBalanced!1133 (left!10470 lt!409819)))))

(assert (= (and d!340889 (not res!539022)) b!1193792))

(assert (= (and b!1193792 res!539019) b!1193790))

(assert (= (and b!1193790 res!539021) b!1193794))

(assert (= (and b!1193794 res!539020) b!1193791))

(assert (= (and b!1193791 res!539024) b!1193793))

(assert (= (and b!1193793 res!539023) b!1193789))

(declare-fun m!1368497 () Bool)

(assert (=> b!1193793 m!1368497))

(declare-fun m!1368499 () Bool)

(assert (=> b!1193790 m!1368499))

(declare-fun m!1368501 () Bool)

(assert (=> b!1193790 m!1368501))

(assert (=> b!1193792 m!1368499))

(assert (=> b!1193792 m!1368501))

(declare-fun m!1368503 () Bool)

(assert (=> b!1193794 m!1368503))

(declare-fun m!1368505 () Bool)

(assert (=> b!1193789 m!1368505))

(declare-fun m!1368507 () Bool)

(assert (=> b!1193791 m!1368507))

(assert (=> b!1193618 d!340889))

(declare-fun b!1193972 () Bool)

(declare-fun res!539055 () Bool)

(declare-fun e!767168 () Bool)

(assert (=> b!1193972 (=> (not res!539055) (not e!767168))))

(assert (=> b!1193972 (= res!539055 (<= (- until!31 lt!409816) (size!9514 (right!10800 t!4115))))))

(declare-fun d!340891 () Bool)

(declare-fun e!767172 () Bool)

(assert (=> d!340891 e!767172))

(declare-fun res!539054 () Bool)

(assert (=> d!340891 (=> (not res!539054) (not e!767172))))

(declare-fun lt!409880 () Conc!3948)

(assert (=> d!340891 (= res!539054 (isBalanced!1133 lt!409880))))

(declare-fun e!767165 () Conc!3948)

(assert (=> d!340891 (= lt!409880 e!767165)))

(declare-fun c!198403 () Bool)

(assert (=> d!340891 (= c!198403 (= 0 (- until!31 lt!409816)))))

(assert (=> d!340891 e!767168))

(declare-fun res!539053 () Bool)

(assert (=> d!340891 (=> (not res!539053) (not e!767168))))

(assert (=> d!340891 (= res!539053 (and (<= 0 0) (<= 0 (- until!31 lt!409816))))))

(assert (=> d!340891 (= (slice!439 (right!10800 t!4115) 0 (- until!31 lt!409816)) lt!409880)))

(declare-fun b!1193973 () Bool)

(declare-fun c!198401 () Bool)

(assert (=> b!1193973 (= c!198401 (= (- (- until!31 lt!409816) 0) 0))))

(declare-fun e!767174 () Conc!3948)

(declare-fun e!767171 () Conc!3948)

(assert (=> b!1193973 (= e!767174 e!767171)))

(declare-fun b!1193974 () Bool)

(declare-fun e!767164 () List!12039)

(declare-fun call!83040 () List!12039)

(assert (=> b!1193974 (= e!767164 call!83040)))

(declare-fun b!1193975 () Bool)

(declare-fun e!767167 () Conc!3948)

(declare-fun call!83041 () Conc!3948)

(assert (=> b!1193975 (= e!767167 call!83041)))

(declare-fun b!1193976 () Bool)

(declare-fun e!767169 () Int)

(assert (=> b!1193976 (= e!767169 (- until!31 lt!409816))))

(declare-fun b!1193977 () Bool)

(declare-fun c!198406 () Bool)

(assert (=> b!1193977 (= c!198406 (<= (size!9514 (left!10470 (right!10800 t!4115))) 0))))

(declare-fun lt!409883 () Unit!18436)

(declare-fun lt!409881 () Unit!18436)

(assert (=> b!1193977 (= lt!409883 lt!409881)))

(declare-fun lt!409882 () List!12039)

(declare-fun lt!409884 () List!12039)

(assert (=> b!1193977 (= (slice!438 (++!3054 lt!409882 lt!409884) 0 (- until!31 lt!409816)) e!767164)))

(declare-fun c!198402 () Bool)

(assert (=> b!1193977 (= c!198402 (<= (size!9515 lt!409882) 0))))

(assert (=> b!1193977 (= lt!409881 (sliceLemma!29 lt!409882 lt!409884 0 (- until!31 lt!409816)))))

(assert (=> b!1193977 (= lt!409884 (list!4439 (right!10800 (right!10800 t!4115))))))

(assert (=> b!1193977 (= lt!409882 (list!4439 (left!10470 (right!10800 t!4115))))))

(assert (=> b!1193977 (= e!767174 e!767167)))

(declare-fun b!1193978 () Bool)

(assert (=> b!1193978 (= e!767171 Empty!3948)))

(declare-fun b!1193979 () Bool)

(assert (=> b!1193979 (= e!767165 e!767174)))

(declare-fun c!198400 () Bool)

(assert (=> b!1193979 (= c!198400 ((_ is Leaf!6047) (right!10800 t!4115)))))

(declare-fun b!1193980 () Bool)

(declare-fun e!767170 () Int)

(assert (=> b!1193980 (= e!767170 (- until!31 lt!409816))))

(declare-fun b!1193981 () Bool)

(declare-fun e!767173 () List!12039)

(declare-fun call!83037 () List!12039)

(assert (=> b!1193981 (= e!767173 call!83037)))

(declare-fun b!1193982 () Bool)

(assert (=> b!1193982 (= e!767172 (= (list!4439 lt!409880) (slice!438 (list!4439 (right!10800 t!4115)) 0 (- until!31 lt!409816))))))

(declare-fun b!1193983 () Bool)

(declare-fun slice!441 (IArray!7901 Int Int) IArray!7901)

(assert (=> b!1193983 (= e!767171 (Leaf!6047 (slice!441 (xs!6653 (right!10800 t!4115)) 0 (- until!31 lt!409816)) (- (- until!31 lt!409816) 0)))))

(declare-fun b!1193984 () Bool)

(assert (=> b!1193984 (= e!767164 e!767173)))

(declare-fun c!198399 () Bool)

(declare-fun call!83038 () Int)

(assert (=> b!1193984 (= c!198399 (<= (- until!31 lt!409816) call!83038))))

(declare-fun c!198398 () Bool)

(declare-fun call!83042 () Int)

(declare-fun bm!83032 () Bool)

(assert (=> bm!83032 (= call!83041 (slice!439 (ite c!198406 (right!10800 (right!10800 t!4115)) (ite c!198398 (left!10470 (right!10800 t!4115)) (right!10800 (right!10800 t!4115)))) (ite c!198406 (- 0 call!83042) (ite c!198398 0 0)) (ite c!198406 (- (- until!31 lt!409816) call!83042) e!767169)))))

(declare-fun b!1193985 () Bool)

(declare-fun e!767166 () Conc!3948)

(declare-fun call!83039 () Conc!3948)

(assert (=> b!1193985 (= e!767166 call!83039)))

(declare-fun b!1193986 () Bool)

(assert (=> b!1193986 (= e!767169 (- (- until!31 lt!409816) call!83042))))

(declare-fun b!1193987 () Bool)

(declare-fun ++!3056 (Conc!3948 Conc!3948) Conc!3948)

(assert (=> b!1193987 (= e!767166 (++!3056 (slice!439 (left!10470 (right!10800 t!4115)) 0 call!83042) call!83039))))

(declare-fun b!1193988 () Bool)

(assert (=> b!1193988 (= e!767167 e!767166)))

(assert (=> b!1193988 (= c!198398 (<= (- until!31 lt!409816) call!83042))))

(declare-fun b!1193989 () Bool)

(assert (=> b!1193989 (= e!767173 (++!3054 (slice!438 lt!409882 0 call!83038) call!83037))))

(declare-fun b!1193990 () Bool)

(assert (=> b!1193990 (= e!767168 (isBalanced!1133 (right!10800 t!4115)))))

(declare-fun bm!83033 () Bool)

(assert (=> bm!83033 (= call!83040 (slice!438 (ite c!198402 lt!409884 (ite c!198399 lt!409882 lt!409884)) (ite c!198402 (- 0 call!83038) (ite c!198399 0 0)) (ite c!198402 (- (- until!31 lt!409816) call!83038) e!767170)))))

(declare-fun bm!83034 () Bool)

(declare-fun c!198404 () Bool)

(assert (=> bm!83034 (= c!198404 c!198398)))

(assert (=> bm!83034 (= call!83039 call!83041)))

(declare-fun bm!83035 () Bool)

(declare-fun c!198405 () Bool)

(assert (=> bm!83035 (= c!198405 c!198399)))

(assert (=> bm!83035 (= call!83037 call!83040)))

(declare-fun bm!83036 () Bool)

(assert (=> bm!83036 (= call!83042 (size!9514 (left!10470 (right!10800 t!4115))))))

(declare-fun b!1193991 () Bool)

(assert (=> b!1193991 (= e!767170 (- (- until!31 lt!409816) call!83038))))

(declare-fun bm!83037 () Bool)

(assert (=> bm!83037 (= call!83038 (size!9515 lt!409882))))

(declare-fun b!1193992 () Bool)

(assert (=> b!1193992 (= e!767165 Empty!3948)))

(assert (= (and d!340891 res!539053) b!1193972))

(assert (= (and b!1193972 res!539055) b!1193990))

(assert (= (and d!340891 c!198403) b!1193992))

(assert (= (and d!340891 (not c!198403)) b!1193979))

(assert (= (and b!1193979 c!198400) b!1193973))

(assert (= (and b!1193979 (not c!198400)) b!1193977))

(assert (= (and b!1193973 c!198401) b!1193978))

(assert (= (and b!1193973 (not c!198401)) b!1193983))

(assert (= (and b!1193977 c!198402) b!1193974))

(assert (= (and b!1193977 (not c!198402)) b!1193984))

(assert (= (and b!1193984 c!198399) b!1193981))

(assert (= (and b!1193984 (not c!198399)) b!1193989))

(assert (= (or b!1193981 b!1193989) bm!83035))

(assert (= (and bm!83035 c!198405) b!1193980))

(assert (= (and bm!83035 (not c!198405)) b!1193991))

(assert (= (or b!1193974 b!1193984 b!1193989 b!1193991) bm!83037))

(assert (= (or b!1193974 bm!83035) bm!83033))

(assert (= (and b!1193977 c!198406) b!1193975))

(assert (= (and b!1193977 (not c!198406)) b!1193988))

(assert (= (and b!1193988 c!198398) b!1193985))

(assert (= (and b!1193988 (not c!198398)) b!1193987))

(assert (= (or b!1193985 b!1193987) bm!83034))

(assert (= (and bm!83034 c!198404) b!1193976))

(assert (= (and bm!83034 (not c!198404)) b!1193986))

(assert (= (or b!1193975 b!1193988 b!1193986 b!1193987) bm!83036))

(assert (= (or b!1193975 bm!83034) bm!83032))

(assert (= (and d!340891 res!539054) b!1193982))

(declare-fun m!1368663 () Bool)

(assert (=> b!1193972 m!1368663))

(declare-fun m!1368665 () Bool)

(assert (=> bm!83033 m!1368665))

(declare-fun m!1368667 () Bool)

(assert (=> b!1193983 m!1368667))

(declare-fun m!1368669 () Bool)

(assert (=> b!1193982 m!1368669))

(assert (=> b!1193982 m!1368345))

(assert (=> b!1193982 m!1368345))

(declare-fun m!1368671 () Bool)

(assert (=> b!1193982 m!1368671))

(declare-fun m!1368673 () Bool)

(assert (=> b!1193977 m!1368673))

(assert (=> b!1193977 m!1368447))

(declare-fun m!1368675 () Bool)

(assert (=> b!1193977 m!1368675))

(declare-fun m!1368677 () Bool)

(assert (=> b!1193977 m!1368677))

(assert (=> b!1193977 m!1368449))

(assert (=> b!1193977 m!1368677))

(declare-fun m!1368679 () Bool)

(assert (=> b!1193977 m!1368679))

(declare-fun m!1368681 () Bool)

(assert (=> b!1193977 m!1368681))

(declare-fun m!1368683 () Bool)

(assert (=> d!340891 m!1368683))

(assert (=> b!1193990 m!1368487))

(declare-fun m!1368685 () Bool)

(assert (=> b!1193989 m!1368685))

(assert (=> b!1193989 m!1368685))

(declare-fun m!1368687 () Bool)

(assert (=> b!1193989 m!1368687))

(declare-fun m!1368689 () Bool)

(assert (=> bm!83032 m!1368689))

(declare-fun m!1368691 () Bool)

(assert (=> b!1193987 m!1368691))

(assert (=> b!1193987 m!1368691))

(declare-fun m!1368693 () Bool)

(assert (=> b!1193987 m!1368693))

(assert (=> bm!83036 m!1368681))

(assert (=> bm!83037 m!1368675))

(assert (=> b!1193618 d!340891))

(declare-fun b!1193993 () Bool)

(declare-fun res!539058 () Bool)

(declare-fun e!767179 () Bool)

(assert (=> b!1193993 (=> (not res!539058) (not e!767179))))

(assert (=> b!1193993 (= res!539058 (<= lt!409816 (size!9514 (left!10470 t!4115))))))

(declare-fun d!340923 () Bool)

(declare-fun e!767183 () Bool)

(assert (=> d!340923 e!767183))

(declare-fun res!539057 () Bool)

(assert (=> d!340923 (=> (not res!539057) (not e!767183))))

(declare-fun lt!409885 () Conc!3948)

(assert (=> d!340923 (= res!539057 (isBalanced!1133 lt!409885))))

(declare-fun e!767176 () Conc!3948)

(assert (=> d!340923 (= lt!409885 e!767176)))

(declare-fun c!198412 () Bool)

(assert (=> d!340923 (= c!198412 (= from!553 lt!409816))))

(assert (=> d!340923 e!767179))

(declare-fun res!539056 () Bool)

(assert (=> d!340923 (=> (not res!539056) (not e!767179))))

(assert (=> d!340923 (= res!539056 (and (<= 0 from!553) (<= from!553 lt!409816)))))

(assert (=> d!340923 (= (slice!439 (left!10470 t!4115) from!553 lt!409816) lt!409885)))

(declare-fun b!1193994 () Bool)

(declare-fun c!198410 () Bool)

(assert (=> b!1193994 (= c!198410 (= (- lt!409816 from!553) 0))))

(declare-fun e!767185 () Conc!3948)

(declare-fun e!767182 () Conc!3948)

(assert (=> b!1193994 (= e!767185 e!767182)))

(declare-fun b!1193995 () Bool)

(declare-fun e!767175 () List!12039)

(declare-fun call!83046 () List!12039)

(assert (=> b!1193995 (= e!767175 call!83046)))

(declare-fun b!1193996 () Bool)

(declare-fun e!767178 () Conc!3948)

(declare-fun call!83047 () Conc!3948)

(assert (=> b!1193996 (= e!767178 call!83047)))

(declare-fun b!1193997 () Bool)

(declare-fun e!767180 () Int)

(assert (=> b!1193997 (= e!767180 lt!409816)))

(declare-fun b!1193998 () Bool)

(declare-fun c!198415 () Bool)

(assert (=> b!1193998 (= c!198415 (<= (size!9514 (left!10470 (left!10470 t!4115))) from!553))))

(declare-fun lt!409888 () Unit!18436)

(declare-fun lt!409886 () Unit!18436)

(assert (=> b!1193998 (= lt!409888 lt!409886)))

(declare-fun lt!409887 () List!12039)

(declare-fun lt!409889 () List!12039)

(assert (=> b!1193998 (= (slice!438 (++!3054 lt!409887 lt!409889) from!553 lt!409816) e!767175)))

(declare-fun c!198411 () Bool)

(assert (=> b!1193998 (= c!198411 (<= (size!9515 lt!409887) from!553))))

(assert (=> b!1193998 (= lt!409886 (sliceLemma!29 lt!409887 lt!409889 from!553 lt!409816))))

(assert (=> b!1193998 (= lt!409889 (list!4439 (right!10800 (left!10470 t!4115))))))

(assert (=> b!1193998 (= lt!409887 (list!4439 (left!10470 (left!10470 t!4115))))))

(assert (=> b!1193998 (= e!767185 e!767178)))

(declare-fun b!1193999 () Bool)

(assert (=> b!1193999 (= e!767182 Empty!3948)))

(declare-fun b!1194000 () Bool)

(assert (=> b!1194000 (= e!767176 e!767185)))

(declare-fun c!198409 () Bool)

(assert (=> b!1194000 (= c!198409 ((_ is Leaf!6047) (left!10470 t!4115)))))

(declare-fun b!1194001 () Bool)

(declare-fun e!767181 () Int)

(assert (=> b!1194001 (= e!767181 lt!409816)))

(declare-fun b!1194002 () Bool)

(declare-fun e!767184 () List!12039)

(declare-fun call!83043 () List!12039)

(assert (=> b!1194002 (= e!767184 call!83043)))

(declare-fun b!1194003 () Bool)

(assert (=> b!1194003 (= e!767183 (= (list!4439 lt!409885) (slice!438 (list!4439 (left!10470 t!4115)) from!553 lt!409816)))))

(declare-fun b!1194004 () Bool)

(assert (=> b!1194004 (= e!767182 (Leaf!6047 (slice!441 (xs!6653 (left!10470 t!4115)) from!553 lt!409816) (- lt!409816 from!553)))))

(declare-fun b!1194005 () Bool)

(assert (=> b!1194005 (= e!767175 e!767184)))

(declare-fun c!198408 () Bool)

(declare-fun call!83044 () Int)

(assert (=> b!1194005 (= c!198408 (<= lt!409816 call!83044))))

(declare-fun call!83048 () Int)

(declare-fun c!198407 () Bool)

(declare-fun bm!83038 () Bool)

(assert (=> bm!83038 (= call!83047 (slice!439 (ite c!198415 (right!10800 (left!10470 t!4115)) (ite c!198407 (left!10470 (left!10470 t!4115)) (right!10800 (left!10470 t!4115)))) (ite c!198415 (- from!553 call!83048) (ite c!198407 from!553 0)) (ite c!198415 (- lt!409816 call!83048) e!767180)))))

(declare-fun b!1194006 () Bool)

(declare-fun e!767177 () Conc!3948)

(declare-fun call!83045 () Conc!3948)

(assert (=> b!1194006 (= e!767177 call!83045)))

(declare-fun b!1194007 () Bool)

(assert (=> b!1194007 (= e!767180 (- lt!409816 call!83048))))

(declare-fun b!1194008 () Bool)

(assert (=> b!1194008 (= e!767177 (++!3056 (slice!439 (left!10470 (left!10470 t!4115)) from!553 call!83048) call!83045))))

(declare-fun b!1194009 () Bool)

(assert (=> b!1194009 (= e!767178 e!767177)))

(assert (=> b!1194009 (= c!198407 (<= lt!409816 call!83048))))

(declare-fun b!1194010 () Bool)

(assert (=> b!1194010 (= e!767184 (++!3054 (slice!438 lt!409887 from!553 call!83044) call!83043))))

(declare-fun b!1194011 () Bool)

(assert (=> b!1194011 (= e!767179 (isBalanced!1133 (left!10470 t!4115)))))

(declare-fun bm!83039 () Bool)

(assert (=> bm!83039 (= call!83046 (slice!438 (ite c!198411 lt!409889 (ite c!198408 lt!409887 lt!409889)) (ite c!198411 (- from!553 call!83044) (ite c!198408 from!553 0)) (ite c!198411 (- lt!409816 call!83044) e!767181)))))

(declare-fun bm!83040 () Bool)

(declare-fun c!198413 () Bool)

(assert (=> bm!83040 (= c!198413 c!198407)))

(assert (=> bm!83040 (= call!83045 call!83047)))

(declare-fun bm!83041 () Bool)

(declare-fun c!198414 () Bool)

(assert (=> bm!83041 (= c!198414 c!198408)))

(assert (=> bm!83041 (= call!83043 call!83046)))

(declare-fun bm!83042 () Bool)

(assert (=> bm!83042 (= call!83048 (size!9514 (left!10470 (left!10470 t!4115))))))

(declare-fun b!1194012 () Bool)

(assert (=> b!1194012 (= e!767181 (- lt!409816 call!83044))))

(declare-fun bm!83043 () Bool)

(assert (=> bm!83043 (= call!83044 (size!9515 lt!409887))))

(declare-fun b!1194013 () Bool)

(assert (=> b!1194013 (= e!767176 Empty!3948)))

(assert (= (and d!340923 res!539056) b!1193993))

(assert (= (and b!1193993 res!539058) b!1194011))

(assert (= (and d!340923 c!198412) b!1194013))

(assert (= (and d!340923 (not c!198412)) b!1194000))

(assert (= (and b!1194000 c!198409) b!1193994))

(assert (= (and b!1194000 (not c!198409)) b!1193998))

(assert (= (and b!1193994 c!198410) b!1193999))

(assert (= (and b!1193994 (not c!198410)) b!1194004))

(assert (= (and b!1193998 c!198411) b!1193995))

(assert (= (and b!1193998 (not c!198411)) b!1194005))

(assert (= (and b!1194005 c!198408) b!1194002))

(assert (= (and b!1194005 (not c!198408)) b!1194010))

(assert (= (or b!1194002 b!1194010) bm!83041))

(assert (= (and bm!83041 c!198414) b!1194001))

(assert (= (and bm!83041 (not c!198414)) b!1194012))

(assert (= (or b!1193995 b!1194005 b!1194010 b!1194012) bm!83043))

(assert (= (or b!1193995 bm!83041) bm!83039))

(assert (= (and b!1193998 c!198415) b!1193996))

(assert (= (and b!1193998 (not c!198415)) b!1194009))

(assert (= (and b!1194009 c!198407) b!1194006))

(assert (= (and b!1194009 (not c!198407)) b!1194008))

(assert (= (or b!1194006 b!1194008) bm!83040))

(assert (= (and bm!83040 c!198413) b!1193997))

(assert (= (and bm!83040 (not c!198413)) b!1194007))

(assert (= (or b!1193996 b!1194009 b!1194007 b!1194008) bm!83042))

(assert (= (or b!1193996 bm!83040) bm!83038))

(assert (= (and d!340923 res!539057) b!1194003))

(assert (=> b!1193993 m!1368347))

(declare-fun m!1368695 () Bool)

(assert (=> bm!83039 m!1368695))

(declare-fun m!1368697 () Bool)

(assert (=> b!1194004 m!1368697))

(declare-fun m!1368699 () Bool)

(assert (=> b!1194003 m!1368699))

(assert (=> b!1194003 m!1368335))

(assert (=> b!1194003 m!1368335))

(declare-fun m!1368701 () Bool)

(assert (=> b!1194003 m!1368701))

(declare-fun m!1368703 () Bool)

(assert (=> b!1193998 m!1368703))

(assert (=> b!1193998 m!1368439))

(declare-fun m!1368705 () Bool)

(assert (=> b!1193998 m!1368705))

(declare-fun m!1368707 () Bool)

(assert (=> b!1193998 m!1368707))

(assert (=> b!1193998 m!1368441))

(assert (=> b!1193998 m!1368707))

(declare-fun m!1368709 () Bool)

(assert (=> b!1193998 m!1368709))

(declare-fun m!1368711 () Bool)

(assert (=> b!1193998 m!1368711))

(declare-fun m!1368713 () Bool)

(assert (=> d!340923 m!1368713))

(assert (=> b!1194011 m!1368483))

(declare-fun m!1368715 () Bool)

(assert (=> b!1194010 m!1368715))

(assert (=> b!1194010 m!1368715))

(declare-fun m!1368717 () Bool)

(assert (=> b!1194010 m!1368717))

(declare-fun m!1368719 () Bool)

(assert (=> bm!83038 m!1368719))

(declare-fun m!1368721 () Bool)

(assert (=> b!1194008 m!1368721))

(assert (=> b!1194008 m!1368721))

(declare-fun m!1368723 () Bool)

(assert (=> b!1194008 m!1368723))

(assert (=> bm!83042 m!1368711))

(assert (=> bm!83043 m!1368705))

(assert (=> b!1193618 d!340923))

(declare-fun e!767187 () Bool)

(declare-fun lt!409890 () List!12039)

(declare-fun b!1194017 () Bool)

(assert (=> b!1194017 (= e!767187 (or (not (= (slice!438 lt!409822 0 (- until!31 lt!409817)) Nil!12015)) (= lt!409890 call!82981)))))

(declare-fun e!767186 () List!12039)

(declare-fun b!1194014 () Bool)

(assert (=> b!1194014 (= e!767186 (slice!438 lt!409822 0 (- until!31 lt!409817)))))

(declare-fun b!1194015 () Bool)

(assert (=> b!1194015 (= e!767186 (Cons!12015 (h!17416 call!82981) (++!3054 (t!112309 call!82981) (slice!438 lt!409822 0 (- until!31 lt!409817)))))))

(declare-fun d!340925 () Bool)

(assert (=> d!340925 e!767187))

(declare-fun res!539059 () Bool)

(assert (=> d!340925 (=> (not res!539059) (not e!767187))))

(assert (=> d!340925 (= res!539059 (= (content!1671 lt!409890) ((_ map or) (content!1671 call!82981) (content!1671 (slice!438 lt!409822 0 (- until!31 lt!409817))))))))

(assert (=> d!340925 (= lt!409890 e!767186)))

(declare-fun c!198416 () Bool)

(assert (=> d!340925 (= c!198416 ((_ is Nil!12015) call!82981))))

(assert (=> d!340925 (= (++!3054 call!82981 (slice!438 lt!409822 0 (- until!31 lt!409817))) lt!409890)))

(declare-fun b!1194016 () Bool)

(declare-fun res!539060 () Bool)

(assert (=> b!1194016 (=> (not res!539060) (not e!767187))))

(assert (=> b!1194016 (= res!539060 (= (size!9515 lt!409890) (+ (size!9515 call!82981) (size!9515 (slice!438 lt!409822 0 (- until!31 lt!409817))))))))

(assert (= (and d!340925 c!198416) b!1194014))

(assert (= (and d!340925 (not c!198416)) b!1194015))

(assert (= (and d!340925 res!539059) b!1194016))

(assert (= (and b!1194016 res!539060) b!1194017))

(assert (=> b!1194015 m!1368353))

(declare-fun m!1368725 () Bool)

(assert (=> b!1194015 m!1368725))

(declare-fun m!1368727 () Bool)

(assert (=> d!340925 m!1368727))

(declare-fun m!1368729 () Bool)

(assert (=> d!340925 m!1368729))

(assert (=> d!340925 m!1368353))

(declare-fun m!1368731 () Bool)

(assert (=> d!340925 m!1368731))

(declare-fun m!1368733 () Bool)

(assert (=> b!1194016 m!1368733))

(declare-fun m!1368735 () Bool)

(assert (=> b!1194016 m!1368735))

(assert (=> b!1194016 m!1368353))

(declare-fun m!1368737 () Bool)

(assert (=> b!1194016 m!1368737))

(assert (=> b!1193614 d!340925))

(declare-fun d!340927 () Bool)

(assert (=> d!340927 (= (slice!438 lt!409822 0 (- until!31 lt!409817)) (take!113 (drop!585 lt!409822 0) (- (- until!31 lt!409817) 0)))))

(declare-fun bs!287994 () Bool)

(assert (= bs!287994 d!340927))

(declare-fun m!1368739 () Bool)

(assert (=> bs!287994 m!1368739))

(assert (=> bs!287994 m!1368739))

(declare-fun m!1368741 () Bool)

(assert (=> bs!287994 m!1368741))

(assert (=> b!1193614 d!340927))

(declare-fun tp!340273 () Bool)

(declare-fun tp!340271 () Bool)

(declare-fun b!1194026 () Bool)

(declare-fun e!767192 () Bool)

(assert (=> b!1194026 (= e!767192 (and (inv!15970 (left!10470 (left!10470 t!4115))) tp!340273 (inv!15970 (right!10800 (left!10470 t!4115))) tp!340271))))

(declare-fun b!1194028 () Bool)

(declare-fun e!767193 () Bool)

(declare-fun tp!340272 () Bool)

(assert (=> b!1194028 (= e!767193 tp!340272)))

(declare-fun b!1194027 () Bool)

(assert (=> b!1194027 (= e!767192 (and (inv!15969 (xs!6653 (left!10470 t!4115))) e!767193))))

(assert (=> b!1193620 (= tp!340247 (and (inv!15970 (left!10470 t!4115)) e!767192))))

(assert (= (and b!1193620 ((_ is Node!3948) (left!10470 t!4115))) b!1194026))

(assert (= b!1194027 b!1194028))

(assert (= (and b!1193620 ((_ is Leaf!6047) (left!10470 t!4115))) b!1194027))

(declare-fun m!1368743 () Bool)

(assert (=> b!1194026 m!1368743))

(declare-fun m!1368745 () Bool)

(assert (=> b!1194026 m!1368745))

(declare-fun m!1368747 () Bool)

(assert (=> b!1194027 m!1368747))

(assert (=> b!1193620 m!1368363))

(declare-fun e!767194 () Bool)

(declare-fun tp!340276 () Bool)

(declare-fun b!1194029 () Bool)

(declare-fun tp!340274 () Bool)

(assert (=> b!1194029 (= e!767194 (and (inv!15970 (left!10470 (right!10800 t!4115))) tp!340276 (inv!15970 (right!10800 (right!10800 t!4115))) tp!340274))))

(declare-fun b!1194031 () Bool)

(declare-fun e!767195 () Bool)

(declare-fun tp!340275 () Bool)

(assert (=> b!1194031 (= e!767195 tp!340275)))

(declare-fun b!1194030 () Bool)

(assert (=> b!1194030 (= e!767194 (and (inv!15969 (xs!6653 (right!10800 t!4115))) e!767195))))

(assert (=> b!1193620 (= tp!340248 (and (inv!15970 (right!10800 t!4115)) e!767194))))

(assert (= (and b!1193620 ((_ is Node!3948) (right!10800 t!4115))) b!1194029))

(assert (= b!1194030 b!1194031))

(assert (= (and b!1193620 ((_ is Leaf!6047) (right!10800 t!4115))) b!1194030))

(declare-fun m!1368749 () Bool)

(assert (=> b!1194029 m!1368749))

(declare-fun m!1368751 () Bool)

(assert (=> b!1194029 m!1368751))

(declare-fun m!1368753 () Bool)

(assert (=> b!1194030 m!1368753))

(assert (=> b!1193620 m!1368365))

(declare-fun b!1194036 () Bool)

(declare-fun e!767198 () Bool)

(declare-fun tp_is_empty!5931 () Bool)

(declare-fun tp!340279 () Bool)

(assert (=> b!1194036 (= e!767198 (and tp_is_empty!5931 tp!340279))))

(assert (=> b!1193613 (= tp!340249 e!767198)))

(assert (= (and b!1193613 ((_ is Cons!12015) (innerList!4008 (xs!6653 t!4115)))) b!1194036))

(check-sat (not b!1193664) (not bm!83032) (not b!1193993) (not b!1193780) (not bm!83039) (not b!1194031) (not bm!83037) (not b!1193637) (not d!340869) (not b!1193775) (not b!1194011) (not bm!83036) (not b!1193779) (not b!1194008) (not d!340923) (not bm!82986) (not d!340927) (not b!1194003) (not b!1193791) (not b!1193990) (not d!340925) (not b!1193724) (not b!1193793) (not b!1193620) (not b!1193784) (not d!340861) (not b!1193693) (not b!1193977) (not b!1193987) (not b!1193982) (not d!340879) (not b!1193694) (not b!1193778) (not b!1193786) (not d!340849) (not b!1194015) (not b!1193697) (not b!1193638) (not d!340887) (not b!1193776) (not b!1193989) (not d!340863) (not b!1194030) (not bm!83043) (not b!1194027) (not b!1194004) (not b!1193789) (not b!1193794) (not bm!83038) (not bm!83042) (not b!1193659) (not b!1193998) (not b!1193719) (not b!1193790) (not b!1193635) tp_is_empty!5931 (not b!1193640) (not b!1193661) (not b!1193783) (not bm!83033) (not d!340891) (not b!1193782) (not d!340881) (not b!1193639) (not b!1194016) (not b!1194010) (not bm!82984) (not b!1194026) (not b!1193704) (not b!1193662) (not b!1193983) (not b!1194029) (not b!1194028) (not b!1193698) (not b!1193972) (not b!1193781) (not b!1193792) (not b!1193636) (not b!1194036))
(check-sat)
