; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!200878 () Bool)

(assert start!200878)

(declare-fun b_free!56825 () Bool)

(declare-fun b_next!57529 () Bool)

(assert (=> start!200878 (= b_free!56825 (not b_next!57529))))

(declare-fun tp!605145 () Bool)

(declare-fun b_and!162673 () Bool)

(assert (=> start!200878 (= tp!605145 b_and!162673)))

(declare-fun b!2038309 () Bool)

(declare-fun e!1287039 () Bool)

(declare-datatypes ((T!36002 0))(
  ( (T!36003 (val!6475 Int)) )
))
(declare-datatypes ((List!22358 0))(
  ( (Nil!22276) (Cons!22276 (h!27677 T!36002) (t!191349 List!22358)) )
))
(declare-datatypes ((IArray!14941 0))(
  ( (IArray!14942 (innerList!7528 List!22358)) )
))
(declare-datatypes ((Conc!7468 0))(
  ( (Node!7468 (left!17739 Conc!7468) (right!18069 Conc!7468) (csize!15166 Int) (cheight!7679 Int)) (Leaf!10944 (xs!10370 IArray!14941) (csize!15167 Int)) (Empty!7468) )
))
(declare-fun t!4319 () Conc!7468)

(declare-fun ConcPrimitiveSize!19 (Conc!7468) Int)

(assert (=> b!2038309 (= e!1287039 (>= (ConcPrimitiveSize!19 (left!17739 t!4319)) (ConcPrimitiveSize!19 t!4319)))))

(declare-fun e!1287041 () Bool)

(declare-fun b!2038310 () Bool)

(declare-fun tp!605144 () Bool)

(declare-fun tp!605143 () Bool)

(declare-fun inv!29580 (Conc!7468) Bool)

(assert (=> b!2038310 (= e!1287041 (and (inv!29580 (left!17739 t!4319)) tp!605144 (inv!29580 (right!18069 t!4319)) tp!605143))))

(declare-fun b!2038311 () Bool)

(declare-fun e!1287040 () Bool)

(declare-fun tp!605146 () Bool)

(assert (=> b!2038311 (= e!1287040 tp!605146)))

(declare-fun b!2038312 () Bool)

(declare-fun e!1287038 () Bool)

(assert (=> b!2038312 (= e!1287038 e!1287039)))

(declare-fun res!893708 () Bool)

(assert (=> b!2038312 (=> (not res!893708) (not e!1287039))))

(declare-fun lt!765047 () List!22358)

(declare-fun lt!765049 () List!22358)

(declare-fun p!1489 () Int)

(declare-fun filter!473 (List!22358 Int) List!22358)

(declare-fun ++!6048 (List!22358 List!22358) List!22358)

(assert (=> b!2038312 (= res!893708 (= (filter!473 (++!6048 lt!765049 lt!765047) p!1489) (++!6048 (filter!473 lt!765049 p!1489) (filter!473 lt!765047 p!1489))))))

(declare-datatypes ((Unit!36970 0))(
  ( (Unit!36971) )
))
(declare-fun lt!765048 () Unit!36970)

(declare-fun lemmaFilterConcat!27 (List!22358 List!22358 Int) Unit!36970)

(assert (=> b!2038312 (= lt!765048 (lemmaFilterConcat!27 lt!765049 lt!765047 p!1489))))

(declare-fun list!9134 (Conc!7468) List!22358)

(assert (=> b!2038312 (= lt!765047 (list!9134 (right!18069 t!4319)))))

(assert (=> b!2038312 (= lt!765049 (list!9134 (left!17739 t!4319)))))

(declare-fun res!893709 () Bool)

(assert (=> start!200878 (=> (not res!893709) (not e!1287038))))

(declare-fun isBalanced!2346 (Conc!7468) Bool)

(assert (=> start!200878 (= res!893709 (isBalanced!2346 t!4319))))

(assert (=> start!200878 e!1287038))

(assert (=> start!200878 (and (inv!29580 t!4319) e!1287041)))

(assert (=> start!200878 tp!605145))

(declare-fun b!2038313 () Bool)

(declare-fun inv!29581 (IArray!14941) Bool)

(assert (=> b!2038313 (= e!1287041 (and (inv!29581 (xs!10370 t!4319)) e!1287040))))

(declare-fun b!2038314 () Bool)

(declare-fun res!893710 () Bool)

(assert (=> b!2038314 (=> (not res!893710) (not e!1287038))))

(assert (=> b!2038314 (= res!893710 (and (not (is-Empty!7468 t!4319)) (not (is-Leaf!10944 t!4319))))))

(assert (= (and start!200878 res!893709) b!2038314))

(assert (= (and b!2038314 res!893710) b!2038312))

(assert (= (and b!2038312 res!893708) b!2038309))

(assert (= (and start!200878 (is-Node!7468 t!4319)) b!2038310))

(assert (= b!2038313 b!2038311))

(assert (= (and start!200878 (is-Leaf!10944 t!4319)) b!2038313))

(declare-fun m!2481613 () Bool)

(assert (=> b!2038310 m!2481613))

(declare-fun m!2481615 () Bool)

(assert (=> b!2038310 m!2481615))

(declare-fun m!2481617 () Bool)

(assert (=> b!2038313 m!2481617))

(declare-fun m!2481619 () Bool)

(assert (=> b!2038309 m!2481619))

(declare-fun m!2481621 () Bool)

(assert (=> b!2038309 m!2481621))

(declare-fun m!2481623 () Bool)

(assert (=> b!2038312 m!2481623))

(declare-fun m!2481625 () Bool)

(assert (=> b!2038312 m!2481625))

(declare-fun m!2481627 () Bool)

(assert (=> b!2038312 m!2481627))

(declare-fun m!2481629 () Bool)

(assert (=> b!2038312 m!2481629))

(declare-fun m!2481631 () Bool)

(assert (=> b!2038312 m!2481631))

(assert (=> b!2038312 m!2481625))

(declare-fun m!2481633 () Bool)

(assert (=> b!2038312 m!2481633))

(declare-fun m!2481635 () Bool)

(assert (=> b!2038312 m!2481635))

(assert (=> b!2038312 m!2481633))

(declare-fun m!2481637 () Bool)

(assert (=> b!2038312 m!2481637))

(assert (=> b!2038312 m!2481627))

(declare-fun m!2481639 () Bool)

(assert (=> start!200878 m!2481639))

(declare-fun m!2481641 () Bool)

(assert (=> start!200878 m!2481641))

(push 1)

(assert (not b!2038312))

(assert (not b!2038310))

(assert (not b_next!57529))

(assert (not start!200878))

(assert b_and!162673)

(assert (not b!2038311))

(assert (not b!2038309))

(assert (not b!2038313))

(check-sat)

(pop 1)

(push 1)

(assert b_and!162673)

(assert (not b_next!57529))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!624180 () Bool)

(declare-fun c!330132 () Bool)

(assert (=> d!624180 (= c!330132 (is-Node!7468 (left!17739 t!4319)))))

(declare-fun e!1287062 () Bool)

(assert (=> d!624180 (= (inv!29580 (left!17739 t!4319)) e!1287062)))

(declare-fun b!2038347 () Bool)

(declare-fun inv!29584 (Conc!7468) Bool)

(assert (=> b!2038347 (= e!1287062 (inv!29584 (left!17739 t!4319)))))

(declare-fun b!2038348 () Bool)

(declare-fun e!1287063 () Bool)

(assert (=> b!2038348 (= e!1287062 e!1287063)))

(declare-fun res!893722 () Bool)

(assert (=> b!2038348 (= res!893722 (not (is-Leaf!10944 (left!17739 t!4319))))))

(assert (=> b!2038348 (=> res!893722 e!1287063)))

(declare-fun b!2038349 () Bool)

(declare-fun inv!29585 (Conc!7468) Bool)

(assert (=> b!2038349 (= e!1287063 (inv!29585 (left!17739 t!4319)))))

(assert (= (and d!624180 c!330132) b!2038347))

(assert (= (and d!624180 (not c!330132)) b!2038348))

(assert (= (and b!2038348 (not res!893722)) b!2038349))

(declare-fun m!2481673 () Bool)

(assert (=> b!2038347 m!2481673))

(declare-fun m!2481675 () Bool)

(assert (=> b!2038349 m!2481675))

(assert (=> b!2038310 d!624180))

(declare-fun d!624184 () Bool)

(declare-fun c!330133 () Bool)

(assert (=> d!624184 (= c!330133 (is-Node!7468 (right!18069 t!4319)))))

(declare-fun e!1287064 () Bool)

(assert (=> d!624184 (= (inv!29580 (right!18069 t!4319)) e!1287064)))

(declare-fun b!2038350 () Bool)

(assert (=> b!2038350 (= e!1287064 (inv!29584 (right!18069 t!4319)))))

(declare-fun b!2038351 () Bool)

(declare-fun e!1287065 () Bool)

(assert (=> b!2038351 (= e!1287064 e!1287065)))

(declare-fun res!893723 () Bool)

(assert (=> b!2038351 (= res!893723 (not (is-Leaf!10944 (right!18069 t!4319))))))

(assert (=> b!2038351 (=> res!893723 e!1287065)))

(declare-fun b!2038352 () Bool)

(assert (=> b!2038352 (= e!1287065 (inv!29585 (right!18069 t!4319)))))

(assert (= (and d!624184 c!330133) b!2038350))

(assert (= (and d!624184 (not c!330133)) b!2038351))

(assert (= (and b!2038351 (not res!893723)) b!2038352))

(declare-fun m!2481677 () Bool)

(assert (=> b!2038350 m!2481677))

(declare-fun m!2481679 () Bool)

(assert (=> b!2038352 m!2481679))

(assert (=> b!2038310 d!624184))

(declare-fun bm!124964 () Bool)

(declare-fun call!124969 () Int)

(declare-fun c!330145 () Bool)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> bm!124964 (= call!124969 (BigIntAbs!0 (ite c!330145 (csize!15166 (left!17739 t!4319)) (csize!15167 (left!17739 t!4319)))))))

(declare-fun b!2038375 () Bool)

(declare-fun e!1287079 () Int)

(assert (=> b!2038375 (= e!1287079 0)))

(declare-fun b!2038376 () Bool)

(declare-fun e!1287078 () Int)

(assert (=> b!2038376 (= e!1287078 e!1287079)))

(declare-fun c!330144 () Bool)

(assert (=> b!2038376 (= c!330144 (is-Leaf!10944 (left!17739 t!4319)))))

(declare-fun d!624186 () Bool)

(declare-fun lt!765065 () Int)

(assert (=> d!624186 (>= lt!765065 0)))

(assert (=> d!624186 (= lt!765065 e!1287078)))

(assert (=> d!624186 (= c!330145 (is-Node!7468 (left!17739 t!4319)))))

(assert (=> d!624186 (= (ConcPrimitiveSize!19 (left!17739 t!4319)) lt!765065)))

(declare-fun b!2038377 () Bool)

(declare-fun IArrayPrimitiveSize!19 (IArray!14941) Int)

(assert (=> b!2038377 (= e!1287079 (+ 1 (IArrayPrimitiveSize!19 (xs!10370 (left!17739 t!4319))) call!124969))))

(declare-fun b!2038378 () Bool)

(assert (=> b!2038378 (= e!1287078 (+ 1 (ConcPrimitiveSize!19 (left!17739 (left!17739 t!4319))) (ConcPrimitiveSize!19 (right!18069 (left!17739 t!4319))) call!124969 (BigIntAbs!0 (cheight!7679 (left!17739 t!4319)))))))

(assert (= (and d!624186 c!330145) b!2038378))

(assert (= (and d!624186 (not c!330145)) b!2038376))

(assert (= (and b!2038376 c!330144) b!2038377))

(assert (= (and b!2038376 (not c!330144)) b!2038375))

(assert (= (or b!2038378 b!2038377) bm!124964))

(declare-fun m!2481699 () Bool)

(assert (=> bm!124964 m!2481699))

(declare-fun m!2481701 () Bool)

(assert (=> b!2038377 m!2481701))

(declare-fun m!2481703 () Bool)

(assert (=> b!2038378 m!2481703))

(declare-fun m!2481705 () Bool)

(assert (=> b!2038378 m!2481705))

(declare-fun m!2481707 () Bool)

(assert (=> b!2038378 m!2481707))

(assert (=> b!2038309 d!624186))

(declare-fun bm!124965 () Bool)

(declare-fun call!124970 () Int)

(declare-fun c!330147 () Bool)

(assert (=> bm!124965 (= call!124970 (BigIntAbs!0 (ite c!330147 (csize!15166 t!4319) (csize!15167 t!4319))))))

(declare-fun b!2038379 () Bool)

(declare-fun e!1287081 () Int)

(assert (=> b!2038379 (= e!1287081 0)))

(declare-fun b!2038380 () Bool)

(declare-fun e!1287080 () Int)

(assert (=> b!2038380 (= e!1287080 e!1287081)))

(declare-fun c!330146 () Bool)

(assert (=> b!2038380 (= c!330146 (is-Leaf!10944 t!4319))))

(declare-fun d!624192 () Bool)

(declare-fun lt!765066 () Int)

(assert (=> d!624192 (>= lt!765066 0)))

(assert (=> d!624192 (= lt!765066 e!1287080)))

(assert (=> d!624192 (= c!330147 (is-Node!7468 t!4319))))

(assert (=> d!624192 (= (ConcPrimitiveSize!19 t!4319) lt!765066)))

(declare-fun b!2038381 () Bool)

(assert (=> b!2038381 (= e!1287081 (+ 1 (IArrayPrimitiveSize!19 (xs!10370 t!4319)) call!124970))))

(declare-fun b!2038382 () Bool)

(assert (=> b!2038382 (= e!1287080 (+ 1 (ConcPrimitiveSize!19 (left!17739 t!4319)) (ConcPrimitiveSize!19 (right!18069 t!4319)) call!124970 (BigIntAbs!0 (cheight!7679 t!4319))))))

(assert (= (and d!624192 c!330147) b!2038382))

(assert (= (and d!624192 (not c!330147)) b!2038380))

(assert (= (and b!2038380 c!330146) b!2038381))

(assert (= (and b!2038380 (not c!330146)) b!2038379))

(assert (= (or b!2038382 b!2038381) bm!124965))

(declare-fun m!2481709 () Bool)

(assert (=> bm!124965 m!2481709))

(declare-fun m!2481711 () Bool)

(assert (=> b!2038381 m!2481711))

(assert (=> b!2038382 m!2481619))

(declare-fun m!2481713 () Bool)

(assert (=> b!2038382 m!2481713))

(declare-fun m!2481715 () Bool)

(assert (=> b!2038382 m!2481715))

(assert (=> b!2038309 d!624192))

(declare-fun b!2038407 () Bool)

(declare-fun res!893736 () Bool)

(declare-fun e!1287094 () Bool)

(assert (=> b!2038407 (=> (not res!893736) (not e!1287094))))

(declare-fun lt!765071 () List!22358)

(declare-fun size!17428 (List!22358) Int)

(assert (=> b!2038407 (= res!893736 (= (size!17428 lt!765071) (+ (size!17428 (filter!473 lt!765049 p!1489)) (size!17428 (filter!473 lt!765047 p!1489)))))))

(declare-fun d!624194 () Bool)

(assert (=> d!624194 e!1287094))

(declare-fun res!893737 () Bool)

(assert (=> d!624194 (=> (not res!893737) (not e!1287094))))

(declare-fun content!3308 (List!22358) (Set T!36002))

(assert (=> d!624194 (= res!893737 (= (content!3308 lt!765071) (set.union (content!3308 (filter!473 lt!765049 p!1489)) (content!3308 (filter!473 lt!765047 p!1489)))))))

(declare-fun e!1287095 () List!22358)

(assert (=> d!624194 (= lt!765071 e!1287095)))

(declare-fun c!330154 () Bool)

(assert (=> d!624194 (= c!330154 (is-Nil!22276 (filter!473 lt!765049 p!1489)))))

(assert (=> d!624194 (= (++!6048 (filter!473 lt!765049 p!1489) (filter!473 lt!765047 p!1489)) lt!765071)))

(declare-fun b!2038406 () Bool)

(assert (=> b!2038406 (= e!1287095 (Cons!22276 (h!27677 (filter!473 lt!765049 p!1489)) (++!6048 (t!191349 (filter!473 lt!765049 p!1489)) (filter!473 lt!765047 p!1489))))))

(declare-fun b!2038405 () Bool)

(assert (=> b!2038405 (= e!1287095 (filter!473 lt!765047 p!1489))))

(declare-fun b!2038408 () Bool)

(assert (=> b!2038408 (= e!1287094 (or (not (= (filter!473 lt!765047 p!1489) Nil!22276)) (= lt!765071 (filter!473 lt!765049 p!1489))))))

(assert (= (and d!624194 c!330154) b!2038405))

(assert (= (and d!624194 (not c!330154)) b!2038406))

(assert (= (and d!624194 res!893737) b!2038407))

(assert (= (and b!2038407 res!893736) b!2038408))

(declare-fun m!2481725 () Bool)

(assert (=> b!2038407 m!2481725))

(assert (=> b!2038407 m!2481625))

(declare-fun m!2481727 () Bool)

(assert (=> b!2038407 m!2481727))

(assert (=> b!2038407 m!2481627))

(declare-fun m!2481729 () Bool)

(assert (=> b!2038407 m!2481729))

(declare-fun m!2481731 () Bool)

(assert (=> d!624194 m!2481731))

(assert (=> d!624194 m!2481625))

(declare-fun m!2481733 () Bool)

(assert (=> d!624194 m!2481733))

(assert (=> d!624194 m!2481627))

(declare-fun m!2481735 () Bool)

(assert (=> d!624194 m!2481735))

(assert (=> b!2038406 m!2481627))

(declare-fun m!2481737 () Bool)

(assert (=> b!2038406 m!2481737))

(assert (=> b!2038312 d!624194))

(declare-fun d!624200 () Bool)

(declare-fun c!330164 () Bool)

(assert (=> d!624200 (= c!330164 (is-Empty!7468 (right!18069 t!4319)))))

(declare-fun e!1287106 () List!22358)

(assert (=> d!624200 (= (list!9134 (right!18069 t!4319)) e!1287106)))

(declare-fun b!2038432 () Bool)

(declare-fun e!1287107 () List!22358)

(assert (=> b!2038432 (= e!1287107 (++!6048 (list!9134 (left!17739 (right!18069 t!4319))) (list!9134 (right!18069 (right!18069 t!4319)))))))

(declare-fun b!2038431 () Bool)

(declare-fun list!9136 (IArray!14941) List!22358)

(assert (=> b!2038431 (= e!1287107 (list!9136 (xs!10370 (right!18069 t!4319))))))

(declare-fun b!2038429 () Bool)

(assert (=> b!2038429 (= e!1287106 Nil!22276)))

(declare-fun b!2038430 () Bool)

(assert (=> b!2038430 (= e!1287106 e!1287107)))

(declare-fun c!330165 () Bool)

(assert (=> b!2038430 (= c!330165 (is-Leaf!10944 (right!18069 t!4319)))))

(assert (= (and d!624200 c!330164) b!2038429))

(assert (= (and d!624200 (not c!330164)) b!2038430))

(assert (= (and b!2038430 c!330165) b!2038431))

(assert (= (and b!2038430 (not c!330165)) b!2038432))

(declare-fun m!2481753 () Bool)

(assert (=> b!2038432 m!2481753))

(declare-fun m!2481755 () Bool)

(assert (=> b!2038432 m!2481755))

(assert (=> b!2038432 m!2481753))

(assert (=> b!2038432 m!2481755))

(declare-fun m!2481757 () Bool)

(assert (=> b!2038432 m!2481757))

(declare-fun m!2481759 () Bool)

(assert (=> b!2038431 m!2481759))

(assert (=> b!2038312 d!624200))

(declare-fun b!2038463 () Bool)

(declare-fun e!1287124 () Bool)

(declare-fun lt!765079 () List!22358)

(declare-fun forall!4755 (List!22358 Int) Bool)

(assert (=> b!2038463 (= e!1287124 (forall!4755 lt!765079 p!1489))))

(declare-fun bm!124971 () Bool)

(declare-fun call!124976 () List!22358)

(assert (=> bm!124971 (= call!124976 (filter!473 (t!191349 lt!765049) p!1489))))

(declare-fun b!2038464 () Bool)

(declare-fun e!1287125 () List!22358)

(assert (=> b!2038464 (= e!1287125 Nil!22276)))

(declare-fun b!2038465 () Bool)

(declare-fun e!1287123 () List!22358)

(assert (=> b!2038465 (= e!1287125 e!1287123)))

(declare-fun c!330175 () Bool)

(declare-fun dynLambda!11105 (Int T!36002) Bool)

(assert (=> b!2038465 (= c!330175 (dynLambda!11105 p!1489 (h!27677 lt!765049)))))

(declare-fun b!2038468 () Bool)

(declare-fun res!893753 () Bool)

(assert (=> b!2038468 (=> (not res!893753) (not e!1287124))))

(assert (=> b!2038468 (= res!893753 (set.subset (content!3308 lt!765079) (content!3308 lt!765049)))))

(declare-fun d!624204 () Bool)

(assert (=> d!624204 e!1287124))

(declare-fun res!893752 () Bool)

(assert (=> d!624204 (=> (not res!893752) (not e!1287124))))

(assert (=> d!624204 (= res!893752 (<= (size!17428 lt!765079) (size!17428 lt!765049)))))

(assert (=> d!624204 (= lt!765079 e!1287125)))

(declare-fun c!330176 () Bool)

(assert (=> d!624204 (= c!330176 (is-Nil!22276 lt!765049))))

(assert (=> d!624204 (= (filter!473 lt!765049 p!1489) lt!765079)))

(declare-fun b!2038470 () Bool)

(assert (=> b!2038470 (= e!1287123 call!124976)))

(declare-fun b!2038472 () Bool)

(assert (=> b!2038472 (= e!1287123 (Cons!22276 (h!27677 lt!765049) call!124976))))

(assert (= (and d!624204 c!330176) b!2038464))

(assert (= (and d!624204 (not c!330176)) b!2038465))

(assert (= (and b!2038465 c!330175) b!2038472))

(assert (= (and b!2038465 (not c!330175)) b!2038470))

(assert (= (or b!2038472 b!2038470) bm!124971))

(assert (= (and d!624204 res!893752) b!2038468))

(assert (= (and b!2038468 res!893753) b!2038463))

(declare-fun b_lambda!68871 () Bool)

(assert (=> (not b_lambda!68871) (not b!2038465)))

(declare-fun t!191356 () Bool)

(declare-fun tb!128891 () Bool)

(assert (=> (and start!200878 (= p!1489 p!1489) t!191356) tb!128891))

(declare-fun result!154194 () Bool)

(assert (=> tb!128891 (= result!154194 true)))

(assert (=> b!2038465 t!191356))

(declare-fun b_and!162679 () Bool)

(assert (= b_and!162673 (and (=> t!191356 result!154194) b_and!162679)))

(declare-fun m!2481789 () Bool)

(assert (=> b!2038463 m!2481789))

(declare-fun m!2481791 () Bool)

(assert (=> b!2038465 m!2481791))

(declare-fun m!2481793 () Bool)

(assert (=> d!624204 m!2481793))

(declare-fun m!2481795 () Bool)

(assert (=> d!624204 m!2481795))

(declare-fun m!2481797 () Bool)

(assert (=> bm!124971 m!2481797))

(declare-fun m!2481799 () Bool)

(assert (=> b!2038468 m!2481799))

(declare-fun m!2481801 () Bool)

(assert (=> b!2038468 m!2481801))

(assert (=> b!2038312 d!624204))

(declare-fun b!2038473 () Bool)

(declare-fun e!1287129 () Bool)

(declare-fun lt!765080 () List!22358)

(assert (=> b!2038473 (= e!1287129 (forall!4755 lt!765080 p!1489))))

(declare-fun bm!124972 () Bool)

(declare-fun call!124977 () List!22358)

(assert (=> bm!124972 (= call!124977 (filter!473 (t!191349 (++!6048 lt!765049 lt!765047)) p!1489))))

(declare-fun b!2038474 () Bool)

(declare-fun e!1287130 () List!22358)

(assert (=> b!2038474 (= e!1287130 Nil!22276)))

(declare-fun b!2038475 () Bool)

(declare-fun e!1287128 () List!22358)

(assert (=> b!2038475 (= e!1287130 e!1287128)))

(declare-fun c!330179 () Bool)

(assert (=> b!2038475 (= c!330179 (dynLambda!11105 p!1489 (h!27677 (++!6048 lt!765049 lt!765047))))))

(declare-fun b!2038476 () Bool)

(declare-fun res!893755 () Bool)

(assert (=> b!2038476 (=> (not res!893755) (not e!1287129))))

(assert (=> b!2038476 (= res!893755 (set.subset (content!3308 lt!765080) (content!3308 (++!6048 lt!765049 lt!765047))))))

(declare-fun d!624210 () Bool)

(assert (=> d!624210 e!1287129))

(declare-fun res!893754 () Bool)

(assert (=> d!624210 (=> (not res!893754) (not e!1287129))))

(assert (=> d!624210 (= res!893754 (<= (size!17428 lt!765080) (size!17428 (++!6048 lt!765049 lt!765047))))))

(assert (=> d!624210 (= lt!765080 e!1287130)))

(declare-fun c!330180 () Bool)

(assert (=> d!624210 (= c!330180 (is-Nil!22276 (++!6048 lt!765049 lt!765047)))))

(assert (=> d!624210 (= (filter!473 (++!6048 lt!765049 lt!765047) p!1489) lt!765080)))

(declare-fun b!2038477 () Bool)

(assert (=> b!2038477 (= e!1287128 call!124977)))

(declare-fun b!2038478 () Bool)

(assert (=> b!2038478 (= e!1287128 (Cons!22276 (h!27677 (++!6048 lt!765049 lt!765047)) call!124977))))

(assert (= (and d!624210 c!330180) b!2038474))

(assert (= (and d!624210 (not c!330180)) b!2038475))

(assert (= (and b!2038475 c!330179) b!2038478))

(assert (= (and b!2038475 (not c!330179)) b!2038477))

(assert (= (or b!2038478 b!2038477) bm!124972))

(assert (= (and d!624210 res!893754) b!2038476))

(assert (= (and b!2038476 res!893755) b!2038473))

(declare-fun b_lambda!68873 () Bool)

(assert (=> (not b_lambda!68873) (not b!2038475)))

(declare-fun t!191358 () Bool)

(declare-fun tb!128893 () Bool)

(assert (=> (and start!200878 (= p!1489 p!1489) t!191358) tb!128893))

(declare-fun result!154196 () Bool)

(assert (=> tb!128893 (= result!154196 true)))

(assert (=> b!2038475 t!191358))

(declare-fun b_and!162681 () Bool)

(assert (= b_and!162679 (and (=> t!191358 result!154196) b_and!162681)))

(declare-fun m!2481803 () Bool)

(assert (=> b!2038473 m!2481803))

(declare-fun m!2481805 () Bool)

(assert (=> b!2038475 m!2481805))

(declare-fun m!2481807 () Bool)

(assert (=> d!624210 m!2481807))

(assert (=> d!624210 m!2481633))

(declare-fun m!2481809 () Bool)

(assert (=> d!624210 m!2481809))

(declare-fun m!2481811 () Bool)

(assert (=> bm!124972 m!2481811))

(declare-fun m!2481813 () Bool)

(assert (=> b!2038476 m!2481813))

(assert (=> b!2038476 m!2481633))

(declare-fun m!2481815 () Bool)

(assert (=> b!2038476 m!2481815))

(assert (=> b!2038312 d!624210))

(declare-fun d!624212 () Bool)

(declare-fun c!330183 () Bool)

(assert (=> d!624212 (= c!330183 (is-Empty!7468 (left!17739 t!4319)))))

(declare-fun e!1287133 () List!22358)

(assert (=> d!624212 (= (list!9134 (left!17739 t!4319)) e!1287133)))

(declare-fun b!2038486 () Bool)

(declare-fun e!1287134 () List!22358)

(assert (=> b!2038486 (= e!1287134 (++!6048 (list!9134 (left!17739 (left!17739 t!4319))) (list!9134 (right!18069 (left!17739 t!4319)))))))

(declare-fun b!2038485 () Bool)

(assert (=> b!2038485 (= e!1287134 (list!9136 (xs!10370 (left!17739 t!4319))))))

(declare-fun b!2038483 () Bool)

(assert (=> b!2038483 (= e!1287133 Nil!22276)))

(declare-fun b!2038484 () Bool)

(assert (=> b!2038484 (= e!1287133 e!1287134)))

(declare-fun c!330184 () Bool)

(assert (=> b!2038484 (= c!330184 (is-Leaf!10944 (left!17739 t!4319)))))

(assert (= (and d!624212 c!330183) b!2038483))

(assert (= (and d!624212 (not c!330183)) b!2038484))

(assert (= (and b!2038484 c!330184) b!2038485))

(assert (= (and b!2038484 (not c!330184)) b!2038486))

(declare-fun m!2481821 () Bool)

(assert (=> b!2038486 m!2481821))

(declare-fun m!2481823 () Bool)

(assert (=> b!2038486 m!2481823))

(assert (=> b!2038486 m!2481821))

(assert (=> b!2038486 m!2481823))

(declare-fun m!2481829 () Bool)

(assert (=> b!2038486 m!2481829))

(declare-fun m!2481831 () Bool)

(assert (=> b!2038485 m!2481831))

(assert (=> b!2038312 d!624212))

(declare-fun b!2038491 () Bool)

(declare-fun e!1287138 () Bool)

(declare-fun lt!765081 () List!22358)

(assert (=> b!2038491 (= e!1287138 (forall!4755 lt!765081 p!1489))))

(declare-fun bm!124973 () Bool)

(declare-fun call!124978 () List!22358)

(assert (=> bm!124973 (= call!124978 (filter!473 (t!191349 lt!765047) p!1489))))

(declare-fun b!2038492 () Bool)

(declare-fun e!1287139 () List!22358)

(assert (=> b!2038492 (= e!1287139 Nil!22276)))

(declare-fun b!2038493 () Bool)

(declare-fun e!1287137 () List!22358)

(assert (=> b!2038493 (= e!1287139 e!1287137)))

(declare-fun c!330187 () Bool)

(assert (=> b!2038493 (= c!330187 (dynLambda!11105 p!1489 (h!27677 lt!765047)))))

(declare-fun b!2038494 () Bool)

(declare-fun res!893757 () Bool)

(assert (=> b!2038494 (=> (not res!893757) (not e!1287138))))

(assert (=> b!2038494 (= res!893757 (set.subset (content!3308 lt!765081) (content!3308 lt!765047)))))

(declare-fun d!624216 () Bool)

(assert (=> d!624216 e!1287138))

(declare-fun res!893756 () Bool)

(assert (=> d!624216 (=> (not res!893756) (not e!1287138))))

(assert (=> d!624216 (= res!893756 (<= (size!17428 lt!765081) (size!17428 lt!765047)))))

(assert (=> d!624216 (= lt!765081 e!1287139)))

(declare-fun c!330188 () Bool)

(assert (=> d!624216 (= c!330188 (is-Nil!22276 lt!765047))))

(assert (=> d!624216 (= (filter!473 lt!765047 p!1489) lt!765081)))

(declare-fun b!2038495 () Bool)

(assert (=> b!2038495 (= e!1287137 call!124978)))

(declare-fun b!2038496 () Bool)

(assert (=> b!2038496 (= e!1287137 (Cons!22276 (h!27677 lt!765047) call!124978))))

(assert (= (and d!624216 c!330188) b!2038492))

(assert (= (and d!624216 (not c!330188)) b!2038493))

(assert (= (and b!2038493 c!330187) b!2038496))

(assert (= (and b!2038493 (not c!330187)) b!2038495))

(assert (= (or b!2038496 b!2038495) bm!124973))

(assert (= (and d!624216 res!893756) b!2038494))

(assert (= (and b!2038494 res!893757) b!2038491))

(declare-fun b_lambda!68875 () Bool)

(assert (=> (not b_lambda!68875) (not b!2038493)))

(declare-fun t!191360 () Bool)

(declare-fun tb!128895 () Bool)

(assert (=> (and start!200878 (= p!1489 p!1489) t!191360) tb!128895))

(declare-fun result!154198 () Bool)

(assert (=> tb!128895 (= result!154198 true)))

(assert (=> b!2038493 t!191360))

(declare-fun b_and!162683 () Bool)

(assert (= b_and!162681 (and (=> t!191360 result!154198) b_and!162683)))

(declare-fun m!2481841 () Bool)

(assert (=> b!2038491 m!2481841))

(declare-fun m!2481843 () Bool)

(assert (=> b!2038493 m!2481843))

(declare-fun m!2481845 () Bool)

(assert (=> d!624216 m!2481845))

(declare-fun m!2481847 () Bool)

(assert (=> d!624216 m!2481847))

(declare-fun m!2481849 () Bool)

(assert (=> bm!124973 m!2481849))

(declare-fun m!2481851 () Bool)

(assert (=> b!2038494 m!2481851))

(declare-fun m!2481853 () Bool)

(assert (=> b!2038494 m!2481853))

(assert (=> b!2038312 d!624216))

(declare-fun b!2038505 () Bool)

(declare-fun res!893760 () Bool)

(declare-fun e!1287143 () Bool)

(assert (=> b!2038505 (=> (not res!893760) (not e!1287143))))

(declare-fun lt!765083 () List!22358)

(assert (=> b!2038505 (= res!893760 (= (size!17428 lt!765083) (+ (size!17428 lt!765049) (size!17428 lt!765047))))))

(declare-fun d!624220 () Bool)

(assert (=> d!624220 e!1287143))

(declare-fun res!893761 () Bool)

(assert (=> d!624220 (=> (not res!893761) (not e!1287143))))

(assert (=> d!624220 (= res!893761 (= (content!3308 lt!765083) (set.union (content!3308 lt!765049) (content!3308 lt!765047))))))

(declare-fun e!1287144 () List!22358)

(assert (=> d!624220 (= lt!765083 e!1287144)))

(declare-fun c!330191 () Bool)

(assert (=> d!624220 (= c!330191 (is-Nil!22276 lt!765049))))

(assert (=> d!624220 (= (++!6048 lt!765049 lt!765047) lt!765083)))

(declare-fun b!2038504 () Bool)

(assert (=> b!2038504 (= e!1287144 (Cons!22276 (h!27677 lt!765049) (++!6048 (t!191349 lt!765049) lt!765047)))))

(declare-fun b!2038503 () Bool)

(assert (=> b!2038503 (= e!1287144 lt!765047)))

(declare-fun b!2038506 () Bool)

(assert (=> b!2038506 (= e!1287143 (or (not (= lt!765047 Nil!22276)) (= lt!765083 lt!765049)))))

(assert (= (and d!624220 c!330191) b!2038503))

(assert (= (and d!624220 (not c!330191)) b!2038504))

(assert (= (and d!624220 res!893761) b!2038505))

(assert (= (and b!2038505 res!893760) b!2038506))

(declare-fun m!2481861 () Bool)

(assert (=> b!2038505 m!2481861))

(assert (=> b!2038505 m!2481795))

(assert (=> b!2038505 m!2481847))

(declare-fun m!2481865 () Bool)

(assert (=> d!624220 m!2481865))

(assert (=> d!624220 m!2481801))

(assert (=> d!624220 m!2481853))

(declare-fun m!2481869 () Bool)

(assert (=> b!2038504 m!2481869))

(assert (=> b!2038312 d!624220))

(declare-fun d!624224 () Bool)

(assert (=> d!624224 (= (filter!473 (++!6048 lt!765049 lt!765047) p!1489) (++!6048 (filter!473 lt!765049 p!1489) (filter!473 lt!765047 p!1489)))))

(declare-fun lt!765089 () Unit!36970)

(declare-fun choose!12441 (List!22358 List!22358 Int) Unit!36970)

(assert (=> d!624224 (= lt!765089 (choose!12441 lt!765049 lt!765047 p!1489))))

(assert (=> d!624224 (= (lemmaFilterConcat!27 lt!765049 lt!765047 p!1489) lt!765089)))

(declare-fun bs!421442 () Bool)

(assert (= bs!421442 d!624224))

(assert (=> bs!421442 m!2481625))

(assert (=> bs!421442 m!2481627))

(assert (=> bs!421442 m!2481629))

(assert (=> bs!421442 m!2481633))

(declare-fun m!2481873 () Bool)

(assert (=> bs!421442 m!2481873))

(assert (=> bs!421442 m!2481625))

(assert (=> bs!421442 m!2481633))

(assert (=> bs!421442 m!2481635))

(assert (=> bs!421442 m!2481627))

(assert (=> b!2038312 d!624224))

(declare-fun b!2038537 () Bool)

(declare-fun res!893790 () Bool)

(declare-fun e!1287156 () Bool)

(assert (=> b!2038537 (=> (not res!893790) (not e!1287156))))

(declare-fun isEmpty!13932 (Conc!7468) Bool)

(assert (=> b!2038537 (= res!893790 (not (isEmpty!13932 (left!17739 t!4319))))))

(declare-fun b!2038538 () Bool)

(declare-fun res!893793 () Bool)

(assert (=> b!2038538 (=> (not res!893793) (not e!1287156))))

(assert (=> b!2038538 (= res!893793 (isBalanced!2346 (left!17739 t!4319)))))

(declare-fun b!2038539 () Bool)

(declare-fun e!1287157 () Bool)

(assert (=> b!2038539 (= e!1287157 e!1287156)))

(declare-fun res!893792 () Bool)

(assert (=> b!2038539 (=> (not res!893792) (not e!1287156))))

(declare-fun height!1168 (Conc!7468) Int)

(assert (=> b!2038539 (= res!893792 (<= (- 1) (- (height!1168 (left!17739 t!4319)) (height!1168 (right!18069 t!4319)))))))

(declare-fun b!2038541 () Bool)

(declare-fun res!893791 () Bool)

(assert (=> b!2038541 (=> (not res!893791) (not e!1287156))))

(assert (=> b!2038541 (= res!893791 (isBalanced!2346 (right!18069 t!4319)))))

(declare-fun b!2038542 () Bool)

(assert (=> b!2038542 (= e!1287156 (not (isEmpty!13932 (right!18069 t!4319))))))

(declare-fun d!624228 () Bool)

(declare-fun res!893789 () Bool)

(assert (=> d!624228 (=> res!893789 e!1287157)))

(assert (=> d!624228 (= res!893789 (not (is-Node!7468 t!4319)))))

(assert (=> d!624228 (= (isBalanced!2346 t!4319) e!1287157)))

(declare-fun b!2038540 () Bool)

(declare-fun res!893788 () Bool)

(assert (=> b!2038540 (=> (not res!893788) (not e!1287156))))

(assert (=> b!2038540 (= res!893788 (<= (- (height!1168 (left!17739 t!4319)) (height!1168 (right!18069 t!4319))) 1))))

(assert (= (and d!624228 (not res!893789)) b!2038539))

(assert (= (and b!2038539 res!893792) b!2038540))

(assert (= (and b!2038540 res!893788) b!2038538))

(assert (= (and b!2038538 res!893793) b!2038541))

(assert (= (and b!2038541 res!893791) b!2038537))

(assert (= (and b!2038537 res!893790) b!2038542))

(declare-fun m!2481885 () Bool)

(assert (=> b!2038539 m!2481885))

(declare-fun m!2481887 () Bool)

(assert (=> b!2038539 m!2481887))

(declare-fun m!2481889 () Bool)

(assert (=> b!2038542 m!2481889))

(declare-fun m!2481891 () Bool)

(assert (=> b!2038537 m!2481891))

(declare-fun m!2481893 () Bool)

(assert (=> b!2038538 m!2481893))

(declare-fun m!2481895 () Bool)

(assert (=> b!2038541 m!2481895))

(assert (=> b!2038540 m!2481885))

(assert (=> b!2038540 m!2481887))

(assert (=> start!200878 d!624228))

(declare-fun d!624232 () Bool)

(declare-fun c!330194 () Bool)

(assert (=> d!624232 (= c!330194 (is-Node!7468 t!4319))))

(declare-fun e!1287158 () Bool)

(assert (=> d!624232 (= (inv!29580 t!4319) e!1287158)))

(declare-fun b!2038543 () Bool)

(assert (=> b!2038543 (= e!1287158 (inv!29584 t!4319))))

(declare-fun b!2038544 () Bool)

(declare-fun e!1287159 () Bool)

(assert (=> b!2038544 (= e!1287158 e!1287159)))

(declare-fun res!893794 () Bool)

(assert (=> b!2038544 (= res!893794 (not (is-Leaf!10944 t!4319)))))

(assert (=> b!2038544 (=> res!893794 e!1287159)))

(declare-fun b!2038545 () Bool)

(assert (=> b!2038545 (= e!1287159 (inv!29585 t!4319))))

(assert (= (and d!624232 c!330194) b!2038543))

(assert (= (and d!624232 (not c!330194)) b!2038544))

(assert (= (and b!2038544 (not res!893794)) b!2038545))

(declare-fun m!2481897 () Bool)

(assert (=> b!2038543 m!2481897))

(declare-fun m!2481899 () Bool)

(assert (=> b!2038545 m!2481899))

(assert (=> start!200878 d!624232))

(declare-fun d!624234 () Bool)

(assert (=> d!624234 (= (inv!29581 (xs!10370 t!4319)) (<= (size!17428 (innerList!7528 (xs!10370 t!4319))) 2147483647))))

(declare-fun bs!421443 () Bool)

(assert (= bs!421443 d!624234))

(declare-fun m!2481913 () Bool)

(assert (=> bs!421443 m!2481913))

(assert (=> b!2038313 d!624234))

(declare-fun tp!605170 () Bool)

(declare-fun tp!605168 () Bool)

(declare-fun b!2038568 () Bool)

(declare-fun e!1287171 () Bool)

(assert (=> b!2038568 (= e!1287171 (and (inv!29580 (left!17739 (left!17739 t!4319))) tp!605168 (inv!29580 (right!18069 (left!17739 t!4319))) tp!605170))))

(declare-fun b!2038570 () Bool)

(declare-fun e!1287172 () Bool)

(declare-fun tp!605169 () Bool)

(assert (=> b!2038570 (= e!1287172 tp!605169)))

(declare-fun b!2038569 () Bool)

(assert (=> b!2038569 (= e!1287171 (and (inv!29581 (xs!10370 (left!17739 t!4319))) e!1287172))))

(assert (=> b!2038310 (= tp!605144 (and (inv!29580 (left!17739 t!4319)) e!1287171))))

(assert (= (and b!2038310 (is-Node!7468 (left!17739 t!4319))) b!2038568))

(assert (= b!2038569 b!2038570))

(assert (= (and b!2038310 (is-Leaf!10944 (left!17739 t!4319))) b!2038569))

(declare-fun m!2481921 () Bool)

(assert (=> b!2038568 m!2481921))

(declare-fun m!2481923 () Bool)

(assert (=> b!2038568 m!2481923))

(declare-fun m!2481925 () Bool)

(assert (=> b!2038569 m!2481925))

(assert (=> b!2038310 m!2481613))

(declare-fun tp!605177 () Bool)

(declare-fun e!1287177 () Bool)

(declare-fun tp!605179 () Bool)

(declare-fun b!2038579 () Bool)

(assert (=> b!2038579 (= e!1287177 (and (inv!29580 (left!17739 (right!18069 t!4319))) tp!605177 (inv!29580 (right!18069 (right!18069 t!4319))) tp!605179))))

(declare-fun b!2038581 () Bool)

(declare-fun e!1287178 () Bool)

(declare-fun tp!605178 () Bool)

(assert (=> b!2038581 (= e!1287178 tp!605178)))

(declare-fun b!2038580 () Bool)

(assert (=> b!2038580 (= e!1287177 (and (inv!29581 (xs!10370 (right!18069 t!4319))) e!1287178))))

(assert (=> b!2038310 (= tp!605143 (and (inv!29580 (right!18069 t!4319)) e!1287177))))

(assert (= (and b!2038310 (is-Node!7468 (right!18069 t!4319))) b!2038579))

(assert (= b!2038580 b!2038581))

(assert (= (and b!2038310 (is-Leaf!10944 (right!18069 t!4319))) b!2038580))

(declare-fun m!2481927 () Bool)

(assert (=> b!2038579 m!2481927))

(declare-fun m!2481929 () Bool)

(assert (=> b!2038579 m!2481929))

(declare-fun m!2481931 () Bool)

(assert (=> b!2038580 m!2481931))

(assert (=> b!2038310 m!2481615))

(declare-fun b!2038586 () Bool)

(declare-fun e!1287181 () Bool)

(declare-fun tp_is_empty!9277 () Bool)

(declare-fun tp!605182 () Bool)

(assert (=> b!2038586 (= e!1287181 (and tp_is_empty!9277 tp!605182))))

(assert (=> b!2038311 (= tp!605146 e!1287181)))

(assert (= (and b!2038311 (is-Cons!22276 (innerList!7528 (xs!10370 t!4319)))) b!2038586))

(declare-fun b_lambda!68881 () Bool)

(assert (= b_lambda!68871 (or (and start!200878 b_free!56825) b_lambda!68881)))

(declare-fun b_lambda!68883 () Bool)

(assert (= b_lambda!68873 (or (and start!200878 b_free!56825) b_lambda!68883)))

(declare-fun b_lambda!68885 () Bool)

(assert (= b_lambda!68875 (or (and start!200878 b_free!56825) b_lambda!68885)))

(push 1)

(assert (not b!2038468))

(assert (not b!2038580))

(assert (not b!2038568))

(assert (not b!2038569))

(assert (not b!2038579))

(assert (not b!2038352))

(assert (not bm!124964))

(assert (not b_lambda!68885))

(assert tp_is_empty!9277)

(assert (not b!2038350))

(assert (not b!2038545))

(assert b_and!162683)

(assert (not d!624210))

(assert (not b_lambda!68883))

(assert (not b_lambda!68881))

(assert (not bm!124971))

(assert (not b!2038581))

(assert (not bm!124965))

(assert (not b!2038543))

(assert (not b!2038505))

(assert (not d!624194))

(assert (not b!2038407))

(assert (not b!2038347))

(assert (not b!2038349))

(assert (not b!2038463))

(assert (not b!2038541))

(assert (not b!2038494))

(assert (not b!2038310))

(assert (not b!2038485))

(assert (not b!2038539))

(assert (not b!2038504))

(assert (not b!2038538))

(assert (not d!624204))

(assert (not b_next!57529))

(assert (not bm!124972))

(assert (not d!624220))

(assert (not b!2038378))

(assert (not b!2038570))

(assert (not b!2038381))

(assert (not b!2038540))

(assert (not b!2038491))

(assert (not b!2038432))

(assert (not d!624234))

(assert (not b!2038377))

(assert (not b!2038406))

(assert (not b!2038586))

(assert (not b!2038382))

(assert (not b!2038486))

(assert (not b!2038476))

(assert (not b!2038473))

(assert (not bm!124973))

(assert (not d!624216))

(assert (not b!2038542))

(assert (not d!624224))

(assert (not b!2038431))

(assert (not b!2038537))

(check-sat)

(pop 1)

(push 1)

(assert b_and!162683)

(assert (not b_next!57529))

(check-sat)

(get-model)

(pop 1)

(assert (=> b!2038310 d!624180))

(assert (=> b!2038310 d!624184))

(declare-fun b!2038593 () Bool)

(declare-fun e!1287187 () Bool)

(declare-fun lt!765091 () List!22358)

(assert (=> b!2038593 (= e!1287187 (forall!4755 lt!765091 p!1489))))

(declare-fun bm!124976 () Bool)

(declare-fun call!124981 () List!22358)

(assert (=> bm!124976 (= call!124981 (filter!473 (t!191349 (t!191349 (++!6048 lt!765049 lt!765047))) p!1489))))

(declare-fun b!2038594 () Bool)

(declare-fun e!1287188 () List!22358)

(assert (=> b!2038594 (= e!1287188 Nil!22276)))

(declare-fun b!2038595 () Bool)

(declare-fun e!1287186 () List!22358)

(assert (=> b!2038595 (= e!1287188 e!1287186)))

(declare-fun c!330196 () Bool)

(assert (=> b!2038595 (= c!330196 (dynLambda!11105 p!1489 (h!27677 (t!191349 (++!6048 lt!765049 lt!765047)))))))

(declare-fun b!2038596 () Bool)

(declare-fun res!893803 () Bool)

(assert (=> b!2038596 (=> (not res!893803) (not e!1287187))))

(assert (=> b!2038596 (= res!893803 (set.subset (content!3308 lt!765091) (content!3308 (t!191349 (++!6048 lt!765049 lt!765047)))))))

(declare-fun d!624240 () Bool)

(assert (=> d!624240 e!1287187))

(declare-fun res!893802 () Bool)

(assert (=> d!624240 (=> (not res!893802) (not e!1287187))))

(assert (=> d!624240 (= res!893802 (<= (size!17428 lt!765091) (size!17428 (t!191349 (++!6048 lt!765049 lt!765047)))))))

(assert (=> d!624240 (= lt!765091 e!1287188)))

(declare-fun c!330197 () Bool)

(assert (=> d!624240 (= c!330197 (is-Nil!22276 (t!191349 (++!6048 lt!765049 lt!765047))))))

(assert (=> d!624240 (= (filter!473 (t!191349 (++!6048 lt!765049 lt!765047)) p!1489) lt!765091)))

(declare-fun b!2038597 () Bool)

(assert (=> b!2038597 (= e!1287186 call!124981)))

(declare-fun b!2038598 () Bool)

(assert (=> b!2038598 (= e!1287186 (Cons!22276 (h!27677 (t!191349 (++!6048 lt!765049 lt!765047))) call!124981))))

(assert (= (and d!624240 c!330197) b!2038594))

(assert (= (and d!624240 (not c!330197)) b!2038595))

(assert (= (and b!2038595 c!330196) b!2038598))

(assert (= (and b!2038595 (not c!330196)) b!2038597))

(assert (= (or b!2038598 b!2038597) bm!124976))

(assert (= (and d!624240 res!893802) b!2038596))

(assert (= (and b!2038596 res!893803) b!2038593))

(declare-fun b_lambda!68893 () Bool)

(assert (=> (not b_lambda!68893) (not b!2038595)))

(declare-fun t!191368 () Bool)

(declare-fun tb!128901 () Bool)

(assert (=> (and start!200878 (= p!1489 p!1489) t!191368) tb!128901))

(declare-fun result!154212 () Bool)

(assert (=> tb!128901 (= result!154212 true)))

(assert (=> b!2038595 t!191368))

(declare-fun b_and!162689 () Bool)

(assert (= b_and!162683 (and (=> t!191368 result!154212) b_and!162689)))

(declare-fun m!2481945 () Bool)

(assert (=> b!2038593 m!2481945))

(declare-fun m!2481947 () Bool)

(assert (=> b!2038595 m!2481947))

(declare-fun m!2481949 () Bool)

(assert (=> d!624240 m!2481949))

(declare-fun m!2481951 () Bool)

(assert (=> d!624240 m!2481951))

(declare-fun m!2481953 () Bool)

(assert (=> bm!124976 m!2481953))

(declare-fun m!2481955 () Bool)

(assert (=> b!2038596 m!2481955))

(declare-fun m!2481957 () Bool)

(assert (=> b!2038596 m!2481957))

(assert (=> bm!124972 d!624240))

(declare-fun b!2038601 () Bool)

(declare-fun res!893804 () Bool)

(declare-fun e!1287189 () Bool)

(assert (=> b!2038601 (=> (not res!893804) (not e!1287189))))

(declare-fun lt!765092 () List!22358)

(assert (=> b!2038601 (= res!893804 (= (size!17428 lt!765092) (+ (size!17428 (t!191349 lt!765049)) (size!17428 lt!765047))))))

(declare-fun d!624242 () Bool)

(assert (=> d!624242 e!1287189))

(declare-fun res!893805 () Bool)

(assert (=> d!624242 (=> (not res!893805) (not e!1287189))))

(assert (=> d!624242 (= res!893805 (= (content!3308 lt!765092) (set.union (content!3308 (t!191349 lt!765049)) (content!3308 lt!765047))))))

(declare-fun e!1287190 () List!22358)

(assert (=> d!624242 (= lt!765092 e!1287190)))

(declare-fun c!330198 () Bool)

(assert (=> d!624242 (= c!330198 (is-Nil!22276 (t!191349 lt!765049)))))

(assert (=> d!624242 (= (++!6048 (t!191349 lt!765049) lt!765047) lt!765092)))

(declare-fun b!2038600 () Bool)

(assert (=> b!2038600 (= e!1287190 (Cons!22276 (h!27677 (t!191349 lt!765049)) (++!6048 (t!191349 (t!191349 lt!765049)) lt!765047)))))

(declare-fun b!2038599 () Bool)

(assert (=> b!2038599 (= e!1287190 lt!765047)))

(declare-fun b!2038602 () Bool)

(assert (=> b!2038602 (= e!1287189 (or (not (= lt!765047 Nil!22276)) (= lt!765092 (t!191349 lt!765049))))))

(assert (= (and d!624242 c!330198) b!2038599))

(assert (= (and d!624242 (not c!330198)) b!2038600))

(assert (= (and d!624242 res!893805) b!2038601))

(assert (= (and b!2038601 res!893804) b!2038602))

(declare-fun m!2481959 () Bool)

(assert (=> b!2038601 m!2481959))

(declare-fun m!2481961 () Bool)

(assert (=> b!2038601 m!2481961))

(assert (=> b!2038601 m!2481847))

(declare-fun m!2481963 () Bool)

(assert (=> d!624242 m!2481963))

(declare-fun m!2481965 () Bool)

(assert (=> d!624242 m!2481965))

(assert (=> d!624242 m!2481853))

(declare-fun m!2481967 () Bool)

(assert (=> b!2038600 m!2481967))

(assert (=> b!2038504 d!624242))

(declare-fun d!624244 () Bool)

(declare-fun res!893812 () Bool)

(declare-fun e!1287193 () Bool)

(assert (=> d!624244 (=> (not res!893812) (not e!1287193))))

(declare-fun size!17430 (Conc!7468) Int)

(assert (=> d!624244 (= res!893812 (= (csize!15166 t!4319) (+ (size!17430 (left!17739 t!4319)) (size!17430 (right!18069 t!4319)))))))

(assert (=> d!624244 (= (inv!29584 t!4319) e!1287193)))

(declare-fun b!2038609 () Bool)

(declare-fun res!893813 () Bool)

(assert (=> b!2038609 (=> (not res!893813) (not e!1287193))))

(assert (=> b!2038609 (= res!893813 (and (not (= (left!17739 t!4319) Empty!7468)) (not (= (right!18069 t!4319) Empty!7468))))))

(declare-fun b!2038610 () Bool)

(declare-fun res!893814 () Bool)

(assert (=> b!2038610 (=> (not res!893814) (not e!1287193))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2038610 (= res!893814 (= (cheight!7679 t!4319) (+ (max!0 (height!1168 (left!17739 t!4319)) (height!1168 (right!18069 t!4319))) 1)))))

(declare-fun b!2038611 () Bool)

(assert (=> b!2038611 (= e!1287193 (<= 0 (cheight!7679 t!4319)))))

(assert (= (and d!624244 res!893812) b!2038609))

(assert (= (and b!2038609 res!893813) b!2038610))

(assert (= (and b!2038610 res!893814) b!2038611))

(declare-fun m!2481969 () Bool)

(assert (=> d!624244 m!2481969))

(declare-fun m!2481971 () Bool)

(assert (=> d!624244 m!2481971))

(assert (=> b!2038610 m!2481885))

(assert (=> b!2038610 m!2481887))

(assert (=> b!2038610 m!2481885))

(assert (=> b!2038610 m!2481887))

(declare-fun m!2481973 () Bool)

(assert (=> b!2038610 m!2481973))

(assert (=> b!2038543 d!624244))

(declare-fun b!2038612 () Bool)

(declare-fun e!1287195 () Bool)

(declare-fun lt!765093 () List!22358)

(assert (=> b!2038612 (= e!1287195 (forall!4755 lt!765093 p!1489))))

(declare-fun bm!124977 () Bool)

(declare-fun call!124982 () List!22358)

(assert (=> bm!124977 (= call!124982 (filter!473 (t!191349 (t!191349 lt!765047)) p!1489))))

(declare-fun b!2038613 () Bool)

(declare-fun e!1287196 () List!22358)

(assert (=> b!2038613 (= e!1287196 Nil!22276)))

(declare-fun b!2038614 () Bool)

(declare-fun e!1287194 () List!22358)

(assert (=> b!2038614 (= e!1287196 e!1287194)))

(declare-fun c!330199 () Bool)

(assert (=> b!2038614 (= c!330199 (dynLambda!11105 p!1489 (h!27677 (t!191349 lt!765047))))))

(declare-fun b!2038615 () Bool)

(declare-fun res!893816 () Bool)

(assert (=> b!2038615 (=> (not res!893816) (not e!1287195))))

(assert (=> b!2038615 (= res!893816 (set.subset (content!3308 lt!765093) (content!3308 (t!191349 lt!765047))))))

(declare-fun d!624246 () Bool)

(assert (=> d!624246 e!1287195))

(declare-fun res!893815 () Bool)

(assert (=> d!624246 (=> (not res!893815) (not e!1287195))))

(assert (=> d!624246 (= res!893815 (<= (size!17428 lt!765093) (size!17428 (t!191349 lt!765047))))))

(assert (=> d!624246 (= lt!765093 e!1287196)))

(declare-fun c!330200 () Bool)

(assert (=> d!624246 (= c!330200 (is-Nil!22276 (t!191349 lt!765047)))))

(assert (=> d!624246 (= (filter!473 (t!191349 lt!765047) p!1489) lt!765093)))

(declare-fun b!2038616 () Bool)

(assert (=> b!2038616 (= e!1287194 call!124982)))

(declare-fun b!2038617 () Bool)

(assert (=> b!2038617 (= e!1287194 (Cons!22276 (h!27677 (t!191349 lt!765047)) call!124982))))

(assert (= (and d!624246 c!330200) b!2038613))

(assert (= (and d!624246 (not c!330200)) b!2038614))

(assert (= (and b!2038614 c!330199) b!2038617))

(assert (= (and b!2038614 (not c!330199)) b!2038616))

(assert (= (or b!2038617 b!2038616) bm!124977))

(assert (= (and d!624246 res!893815) b!2038615))

(assert (= (and b!2038615 res!893816) b!2038612))

(declare-fun b_lambda!68895 () Bool)

(assert (=> (not b_lambda!68895) (not b!2038614)))

(declare-fun t!191370 () Bool)

(declare-fun tb!128903 () Bool)

(assert (=> (and start!200878 (= p!1489 p!1489) t!191370) tb!128903))

(declare-fun result!154214 () Bool)

(assert (=> tb!128903 (= result!154214 true)))

(assert (=> b!2038614 t!191370))

(declare-fun b_and!162691 () Bool)

(assert (= b_and!162689 (and (=> t!191370 result!154214) b_and!162691)))

(declare-fun m!2481975 () Bool)

(assert (=> b!2038612 m!2481975))

(declare-fun m!2481977 () Bool)

(assert (=> b!2038614 m!2481977))

(declare-fun m!2481979 () Bool)

(assert (=> d!624246 m!2481979))

(declare-fun m!2481981 () Bool)

(assert (=> d!624246 m!2481981))

(declare-fun m!2481983 () Bool)

(assert (=> bm!124977 m!2481983))

(declare-fun m!2481985 () Bool)

(assert (=> b!2038615 m!2481985))

(declare-fun m!2481987 () Bool)

(assert (=> b!2038615 m!2481987))

(assert (=> bm!124973 d!624246))

(declare-fun d!624248 () Bool)

(assert (=> d!624248 (= (height!1168 (left!17739 t!4319)) (ite (is-Empty!7468 (left!17739 t!4319)) 0 (ite (is-Leaf!10944 (left!17739 t!4319)) 1 (cheight!7679 (left!17739 t!4319)))))))

(assert (=> b!2038540 d!624248))

(declare-fun d!624250 () Bool)

(assert (=> d!624250 (= (height!1168 (right!18069 t!4319)) (ite (is-Empty!7468 (right!18069 t!4319)) 0 (ite (is-Leaf!10944 (right!18069 t!4319)) 1 (cheight!7679 (right!18069 t!4319)))))))

(assert (=> b!2038540 d!624250))

(declare-fun d!624252 () Bool)

(assert (=> d!624252 (= (inv!29581 (xs!10370 (left!17739 t!4319))) (<= (size!17428 (innerList!7528 (xs!10370 (left!17739 t!4319)))) 2147483647))))

(declare-fun bs!421445 () Bool)

(assert (= bs!421445 d!624252))

(declare-fun m!2481989 () Bool)

(assert (=> bs!421445 m!2481989))

(assert (=> b!2038569 d!624252))

(declare-fun b!2038618 () Bool)

(declare-fun res!893819 () Bool)

(declare-fun e!1287197 () Bool)

(assert (=> b!2038618 (=> (not res!893819) (not e!1287197))))

(assert (=> b!2038618 (= res!893819 (not (isEmpty!13932 (left!17739 (left!17739 t!4319)))))))

(declare-fun b!2038619 () Bool)

(declare-fun res!893822 () Bool)

(assert (=> b!2038619 (=> (not res!893822) (not e!1287197))))

(assert (=> b!2038619 (= res!893822 (isBalanced!2346 (left!17739 (left!17739 t!4319))))))

(declare-fun b!2038620 () Bool)

(declare-fun e!1287198 () Bool)

(assert (=> b!2038620 (= e!1287198 e!1287197)))

(declare-fun res!893821 () Bool)

(assert (=> b!2038620 (=> (not res!893821) (not e!1287197))))

(assert (=> b!2038620 (= res!893821 (<= (- 1) (- (height!1168 (left!17739 (left!17739 t!4319))) (height!1168 (right!18069 (left!17739 t!4319))))))))

(declare-fun b!2038622 () Bool)

(declare-fun res!893820 () Bool)

(assert (=> b!2038622 (=> (not res!893820) (not e!1287197))))

(assert (=> b!2038622 (= res!893820 (isBalanced!2346 (right!18069 (left!17739 t!4319))))))

(declare-fun b!2038623 () Bool)

(assert (=> b!2038623 (= e!1287197 (not (isEmpty!13932 (right!18069 (left!17739 t!4319)))))))

(declare-fun d!624254 () Bool)

(declare-fun res!893818 () Bool)

(assert (=> d!624254 (=> res!893818 e!1287198)))

(assert (=> d!624254 (= res!893818 (not (is-Node!7468 (left!17739 t!4319))))))

(assert (=> d!624254 (= (isBalanced!2346 (left!17739 t!4319)) e!1287198)))

(declare-fun b!2038621 () Bool)

(declare-fun res!893817 () Bool)

(assert (=> b!2038621 (=> (not res!893817) (not e!1287197))))

(assert (=> b!2038621 (= res!893817 (<= (- (height!1168 (left!17739 (left!17739 t!4319))) (height!1168 (right!18069 (left!17739 t!4319)))) 1))))

(assert (= (and d!624254 (not res!893818)) b!2038620))

(assert (= (and b!2038620 res!893821) b!2038621))

(assert (= (and b!2038621 res!893817) b!2038619))

(assert (= (and b!2038619 res!893822) b!2038622))

(assert (= (and b!2038622 res!893820) b!2038618))

(assert (= (and b!2038618 res!893819) b!2038623))

(declare-fun m!2481991 () Bool)

(assert (=> b!2038620 m!2481991))

(declare-fun m!2481993 () Bool)

(assert (=> b!2038620 m!2481993))

(declare-fun m!2481995 () Bool)

(assert (=> b!2038623 m!2481995))

(declare-fun m!2481997 () Bool)

(assert (=> b!2038618 m!2481997))

(declare-fun m!2481999 () Bool)

(assert (=> b!2038619 m!2481999))

(declare-fun m!2482001 () Bool)

(assert (=> b!2038622 m!2482001))

(assert (=> b!2038621 m!2481991))

(assert (=> b!2038621 m!2481993))

(assert (=> b!2038538 d!624254))

(declare-fun d!624256 () Bool)

(declare-fun lt!765096 () Int)

(assert (=> d!624256 (>= lt!765096 0)))

(declare-fun ListPrimitiveSize!144 (List!22358) Int)

(assert (=> d!624256 (= lt!765096 (+ 1 (ListPrimitiveSize!144 (innerList!7528 (xs!10370 t!4319)))))))

(assert (=> d!624256 (= (IArrayPrimitiveSize!19 (xs!10370 t!4319)) lt!765096)))

(declare-fun bs!421446 () Bool)

(assert (= bs!421446 d!624256))

(declare-fun m!2482003 () Bool)

(assert (=> bs!421446 m!2482003))

(assert (=> b!2038381 d!624256))

(declare-fun d!624258 () Bool)

(assert (=> d!624258 (= (inv!29581 (xs!10370 (right!18069 t!4319))) (<= (size!17428 (innerList!7528 (xs!10370 (right!18069 t!4319)))) 2147483647))))

(declare-fun bs!421447 () Bool)

(assert (= bs!421447 d!624258))

(declare-fun m!2482005 () Bool)

(assert (=> bs!421447 m!2482005))

(assert (=> b!2038580 d!624258))

(declare-fun d!624260 () Bool)

(declare-fun lt!765097 () Int)

(assert (=> d!624260 (>= lt!765097 0)))

(assert (=> d!624260 (= lt!765097 (+ 1 (ListPrimitiveSize!144 (innerList!7528 (xs!10370 (left!17739 t!4319))))))))

(assert (=> d!624260 (= (IArrayPrimitiveSize!19 (xs!10370 (left!17739 t!4319))) lt!765097)))

(declare-fun bs!421448 () Bool)

(assert (= bs!421448 d!624260))

(declare-fun m!2482007 () Bool)

(assert (=> bs!421448 m!2482007))

(assert (=> b!2038377 d!624260))

(declare-fun d!624262 () Bool)

(declare-fun c!330203 () Bool)

(assert (=> d!624262 (= c!330203 (is-Nil!22276 lt!765083))))

(declare-fun e!1287201 () (Set T!36002))

(assert (=> d!624262 (= (content!3308 lt!765083) e!1287201)))

(declare-fun b!2038628 () Bool)

(assert (=> b!2038628 (= e!1287201 (as set.empty (Set T!36002)))))

(declare-fun b!2038629 () Bool)

(assert (=> b!2038629 (= e!1287201 (set.union (set.insert (h!27677 lt!765083) (as set.empty (Set T!36002))) (content!3308 (t!191349 lt!765083))))))

(assert (= (and d!624262 c!330203) b!2038628))

(assert (= (and d!624262 (not c!330203)) b!2038629))

(declare-fun m!2482009 () Bool)

(assert (=> b!2038629 m!2482009))

(declare-fun m!2482011 () Bool)

(assert (=> b!2038629 m!2482011))

(assert (=> d!624220 d!624262))

(declare-fun d!624264 () Bool)

(declare-fun c!330204 () Bool)

(assert (=> d!624264 (= c!330204 (is-Nil!22276 lt!765049))))

(declare-fun e!1287202 () (Set T!36002))

(assert (=> d!624264 (= (content!3308 lt!765049) e!1287202)))

(declare-fun b!2038630 () Bool)

(assert (=> b!2038630 (= e!1287202 (as set.empty (Set T!36002)))))

(declare-fun b!2038631 () Bool)

(assert (=> b!2038631 (= e!1287202 (set.union (set.insert (h!27677 lt!765049) (as set.empty (Set T!36002))) (content!3308 (t!191349 lt!765049))))))

(assert (= (and d!624264 c!330204) b!2038630))

(assert (= (and d!624264 (not c!330204)) b!2038631))

(declare-fun m!2482013 () Bool)

(assert (=> b!2038631 m!2482013))

(assert (=> b!2038631 m!2481965))

(assert (=> d!624220 d!624264))

(declare-fun d!624266 () Bool)

(declare-fun c!330205 () Bool)

(assert (=> d!624266 (= c!330205 (is-Nil!22276 lt!765047))))

(declare-fun e!1287203 () (Set T!36002))

(assert (=> d!624266 (= (content!3308 lt!765047) e!1287203)))

(declare-fun b!2038632 () Bool)

(assert (=> b!2038632 (= e!1287203 (as set.empty (Set T!36002)))))

(declare-fun b!2038633 () Bool)

(assert (=> b!2038633 (= e!1287203 (set.union (set.insert (h!27677 lt!765047) (as set.empty (Set T!36002))) (content!3308 (t!191349 lt!765047))))))

(assert (= (and d!624266 c!330205) b!2038632))

(assert (= (and d!624266 (not c!330205)) b!2038633))

(declare-fun m!2482015 () Bool)

(assert (=> b!2038633 m!2482015))

(assert (=> b!2038633 m!2481987))

(assert (=> d!624220 d!624266))

(declare-fun b!2038634 () Bool)

(declare-fun e!1287205 () Bool)

(declare-fun lt!765098 () List!22358)

(assert (=> b!2038634 (= e!1287205 (forall!4755 lt!765098 p!1489))))

(declare-fun bm!124978 () Bool)

(declare-fun call!124983 () List!22358)

(assert (=> bm!124978 (= call!124983 (filter!473 (t!191349 (t!191349 lt!765049)) p!1489))))

(declare-fun b!2038635 () Bool)

(declare-fun e!1287206 () List!22358)

(assert (=> b!2038635 (= e!1287206 Nil!22276)))

(declare-fun b!2038636 () Bool)

(declare-fun e!1287204 () List!22358)

(assert (=> b!2038636 (= e!1287206 e!1287204)))

(declare-fun c!330206 () Bool)

(assert (=> b!2038636 (= c!330206 (dynLambda!11105 p!1489 (h!27677 (t!191349 lt!765049))))))

(declare-fun b!2038637 () Bool)

(declare-fun res!893824 () Bool)

(assert (=> b!2038637 (=> (not res!893824) (not e!1287205))))

(assert (=> b!2038637 (= res!893824 (set.subset (content!3308 lt!765098) (content!3308 (t!191349 lt!765049))))))

(declare-fun d!624268 () Bool)

(assert (=> d!624268 e!1287205))

(declare-fun res!893823 () Bool)

(assert (=> d!624268 (=> (not res!893823) (not e!1287205))))

(assert (=> d!624268 (= res!893823 (<= (size!17428 lt!765098) (size!17428 (t!191349 lt!765049))))))

(assert (=> d!624268 (= lt!765098 e!1287206)))

(declare-fun c!330207 () Bool)

(assert (=> d!624268 (= c!330207 (is-Nil!22276 (t!191349 lt!765049)))))

(assert (=> d!624268 (= (filter!473 (t!191349 lt!765049) p!1489) lt!765098)))

(declare-fun b!2038638 () Bool)

(assert (=> b!2038638 (= e!1287204 call!124983)))

(declare-fun b!2038639 () Bool)

(assert (=> b!2038639 (= e!1287204 (Cons!22276 (h!27677 (t!191349 lt!765049)) call!124983))))

(assert (= (and d!624268 c!330207) b!2038635))

(assert (= (and d!624268 (not c!330207)) b!2038636))

(assert (= (and b!2038636 c!330206) b!2038639))

(assert (= (and b!2038636 (not c!330206)) b!2038638))

(assert (= (or b!2038639 b!2038638) bm!124978))

(assert (= (and d!624268 res!893823) b!2038637))

(assert (= (and b!2038637 res!893824) b!2038634))

(declare-fun b_lambda!68897 () Bool)

(assert (=> (not b_lambda!68897) (not b!2038636)))

(declare-fun t!191373 () Bool)

(declare-fun tb!128905 () Bool)

(assert (=> (and start!200878 (= p!1489 p!1489) t!191373) tb!128905))

(declare-fun result!154216 () Bool)

(assert (=> tb!128905 (= result!154216 true)))

(assert (=> b!2038636 t!191373))

(declare-fun b_and!162693 () Bool)

(assert (= b_and!162691 (and (=> t!191373 result!154216) b_and!162693)))

(declare-fun m!2482017 () Bool)

(assert (=> b!2038634 m!2482017))

(declare-fun m!2482019 () Bool)

(assert (=> b!2038636 m!2482019))

(declare-fun m!2482021 () Bool)

(assert (=> d!624268 m!2482021))

(assert (=> d!624268 m!2481961))

(declare-fun m!2482023 () Bool)

(assert (=> bm!124978 m!2482023))

(declare-fun m!2482025 () Bool)

(assert (=> b!2038637 m!2482025))

(assert (=> b!2038637 m!2481965))

(assert (=> bm!124971 d!624268))

(declare-fun d!624272 () Bool)

(assert (=> d!624272 (= (list!9136 (xs!10370 (right!18069 t!4319))) (innerList!7528 (xs!10370 (right!18069 t!4319))))))

(assert (=> b!2038431 d!624272))

(assert (=> d!624224 d!624216))

(assert (=> d!624224 d!624220))

(assert (=> d!624224 d!624194))

(assert (=> d!624224 d!624204))

(assert (=> d!624224 d!624210))

(declare-fun d!624276 () Bool)

(assert (=> d!624276 (= (filter!473 (++!6048 lt!765049 lt!765047) p!1489) (++!6048 (filter!473 lt!765049 p!1489) (filter!473 lt!765047 p!1489)))))

(assert (=> d!624276 true))

(declare-fun _$81!78 () Unit!36970)

(assert (=> d!624276 (= (choose!12441 lt!765049 lt!765047 p!1489) _$81!78)))

(declare-fun bs!421449 () Bool)

(assert (= bs!421449 d!624276))

(assert (=> bs!421449 m!2481633))

(assert (=> bs!421449 m!2481633))

(assert (=> bs!421449 m!2481635))

(assert (=> bs!421449 m!2481627))

(assert (=> bs!421449 m!2481625))

(assert (=> bs!421449 m!2481625))

(assert (=> bs!421449 m!2481627))

(assert (=> bs!421449 m!2481629))

(assert (=> d!624224 d!624276))

(declare-fun d!624282 () Bool)

(declare-fun res!893827 () Bool)

(declare-fun e!1287213 () Bool)

(assert (=> d!624282 (=> (not res!893827) (not e!1287213))))

(assert (=> d!624282 (= res!893827 (= (csize!15166 (left!17739 t!4319)) (+ (size!17430 (left!17739 (left!17739 t!4319))) (size!17430 (right!18069 (left!17739 t!4319))))))))

(assert (=> d!624282 (= (inv!29584 (left!17739 t!4319)) e!1287213)))

(declare-fun b!2038650 () Bool)

(declare-fun res!893828 () Bool)

(assert (=> b!2038650 (=> (not res!893828) (not e!1287213))))

(assert (=> b!2038650 (= res!893828 (and (not (= (left!17739 (left!17739 t!4319)) Empty!7468)) (not (= (right!18069 (left!17739 t!4319)) Empty!7468))))))

(declare-fun b!2038651 () Bool)

(declare-fun res!893829 () Bool)

(assert (=> b!2038651 (=> (not res!893829) (not e!1287213))))

(assert (=> b!2038651 (= res!893829 (= (cheight!7679 (left!17739 t!4319)) (+ (max!0 (height!1168 (left!17739 (left!17739 t!4319))) (height!1168 (right!18069 (left!17739 t!4319)))) 1)))))

(declare-fun b!2038652 () Bool)

(assert (=> b!2038652 (= e!1287213 (<= 0 (cheight!7679 (left!17739 t!4319))))))

(assert (= (and d!624282 res!893827) b!2038650))

(assert (= (and b!2038650 res!893828) b!2038651))

(assert (= (and b!2038651 res!893829) b!2038652))

(declare-fun m!2482035 () Bool)

(assert (=> d!624282 m!2482035))

(declare-fun m!2482037 () Bool)

(assert (=> d!624282 m!2482037))

(assert (=> b!2038651 m!2481991))

(assert (=> b!2038651 m!2481993))

(assert (=> b!2038651 m!2481991))

(assert (=> b!2038651 m!2481993))

(declare-fun m!2482039 () Bool)

(assert (=> b!2038651 m!2482039))

(assert (=> b!2038347 d!624282))

(declare-fun d!624284 () Bool)

(declare-fun res!893842 () Bool)

(declare-fun e!1287222 () Bool)

(assert (=> d!624284 (=> (not res!893842) (not e!1287222))))

(assert (=> d!624284 (= res!893842 (<= (size!17428 (list!9136 (xs!10370 (left!17739 t!4319)))) 512))))

(assert (=> d!624284 (= (inv!29585 (left!17739 t!4319)) e!1287222)))

(declare-fun b!2038671 () Bool)

(declare-fun res!893843 () Bool)

(assert (=> b!2038671 (=> (not res!893843) (not e!1287222))))

(assert (=> b!2038671 (= res!893843 (= (csize!15167 (left!17739 t!4319)) (size!17428 (list!9136 (xs!10370 (left!17739 t!4319))))))))

(declare-fun b!2038672 () Bool)

(assert (=> b!2038672 (= e!1287222 (and (> (csize!15167 (left!17739 t!4319)) 0) (<= (csize!15167 (left!17739 t!4319)) 512)))))

(assert (= (and d!624284 res!893842) b!2038671))

(assert (= (and b!2038671 res!893843) b!2038672))

(assert (=> d!624284 m!2481831))

(assert (=> d!624284 m!2481831))

(declare-fun m!2482059 () Bool)

(assert (=> d!624284 m!2482059))

(assert (=> b!2038671 m!2481831))

(assert (=> b!2038671 m!2481831))

(assert (=> b!2038671 m!2482059))

(assert (=> b!2038349 d!624284))

(declare-fun b!2038675 () Bool)

(declare-fun res!893844 () Bool)

(declare-fun e!1287223 () Bool)

(assert (=> b!2038675 (=> (not res!893844) (not e!1287223))))

(declare-fun lt!765104 () List!22358)

(assert (=> b!2038675 (= res!893844 (= (size!17428 lt!765104) (+ (size!17428 (t!191349 (filter!473 lt!765049 p!1489))) (size!17428 (filter!473 lt!765047 p!1489)))))))

(declare-fun d!624292 () Bool)

(assert (=> d!624292 e!1287223))

(declare-fun res!893845 () Bool)

(assert (=> d!624292 (=> (not res!893845) (not e!1287223))))

(assert (=> d!624292 (= res!893845 (= (content!3308 lt!765104) (set.union (content!3308 (t!191349 (filter!473 lt!765049 p!1489))) (content!3308 (filter!473 lt!765047 p!1489)))))))

(declare-fun e!1287224 () List!22358)

(assert (=> d!624292 (= lt!765104 e!1287224)))

(declare-fun c!330215 () Bool)

(assert (=> d!624292 (= c!330215 (is-Nil!22276 (t!191349 (filter!473 lt!765049 p!1489))))))

(assert (=> d!624292 (= (++!6048 (t!191349 (filter!473 lt!765049 p!1489)) (filter!473 lt!765047 p!1489)) lt!765104)))

(declare-fun b!2038674 () Bool)

(assert (=> b!2038674 (= e!1287224 (Cons!22276 (h!27677 (t!191349 (filter!473 lt!765049 p!1489))) (++!6048 (t!191349 (t!191349 (filter!473 lt!765049 p!1489))) (filter!473 lt!765047 p!1489))))))

(declare-fun b!2038673 () Bool)

(assert (=> b!2038673 (= e!1287224 (filter!473 lt!765047 p!1489))))

(declare-fun b!2038676 () Bool)

(assert (=> b!2038676 (= e!1287223 (or (not (= (filter!473 lt!765047 p!1489) Nil!22276)) (= lt!765104 (t!191349 (filter!473 lt!765049 p!1489)))))))

(assert (= (and d!624292 c!330215) b!2038673))

(assert (= (and d!624292 (not c!330215)) b!2038674))

(assert (= (and d!624292 res!893845) b!2038675))

(assert (= (and b!2038675 res!893844) b!2038676))

(declare-fun m!2482067 () Bool)

(assert (=> b!2038675 m!2482067))

(declare-fun m!2482069 () Bool)

(assert (=> b!2038675 m!2482069))

(assert (=> b!2038675 m!2481627))

(assert (=> b!2038675 m!2481729))

(declare-fun m!2482071 () Bool)

(assert (=> d!624292 m!2482071))

(declare-fun m!2482073 () Bool)

(assert (=> d!624292 m!2482073))

(assert (=> d!624292 m!2481627))

(assert (=> d!624292 m!2481735))

(assert (=> b!2038674 m!2481627))

(declare-fun m!2482075 () Bool)

(assert (=> b!2038674 m!2482075))

(assert (=> b!2038406 d!624292))

(declare-fun d!624296 () Bool)

(declare-fun lt!765107 () Int)

(assert (=> d!624296 (>= lt!765107 0)))

(declare-fun e!1287233 () Int)

(assert (=> d!624296 (= lt!765107 e!1287233)))

(declare-fun c!330218 () Bool)

(assert (=> d!624296 (= c!330218 (is-Nil!22276 lt!765079))))

(assert (=> d!624296 (= (size!17428 lt!765079) lt!765107)))

(declare-fun b!2038687 () Bool)

(assert (=> b!2038687 (= e!1287233 0)))

(declare-fun b!2038688 () Bool)

(assert (=> b!2038688 (= e!1287233 (+ 1 (size!17428 (t!191349 lt!765079))))))

(assert (= (and d!624296 c!330218) b!2038687))

(assert (= (and d!624296 (not c!330218)) b!2038688))

(declare-fun m!2482077 () Bool)

(assert (=> b!2038688 m!2482077))

(assert (=> d!624204 d!624296))

(declare-fun d!624298 () Bool)

(declare-fun lt!765108 () Int)

(assert (=> d!624298 (>= lt!765108 0)))

(declare-fun e!1287234 () Int)

(assert (=> d!624298 (= lt!765108 e!1287234)))

(declare-fun c!330219 () Bool)

(assert (=> d!624298 (= c!330219 (is-Nil!22276 lt!765049))))

(assert (=> d!624298 (= (size!17428 lt!765049) lt!765108)))

(declare-fun b!2038689 () Bool)

(assert (=> b!2038689 (= e!1287234 0)))

(declare-fun b!2038690 () Bool)

(assert (=> b!2038690 (= e!1287234 (+ 1 (size!17428 (t!191349 lt!765049))))))

(assert (= (and d!624298 c!330219) b!2038689))

(assert (= (and d!624298 (not c!330219)) b!2038690))

(assert (=> b!2038690 m!2481961))

(assert (=> d!624204 d!624298))

(declare-fun d!624300 () Bool)

(declare-fun c!330220 () Bool)

(assert (=> d!624300 (= c!330220 (is-Nil!22276 lt!765080))))

(declare-fun e!1287235 () (Set T!36002))

(assert (=> d!624300 (= (content!3308 lt!765080) e!1287235)))

(declare-fun b!2038691 () Bool)

(assert (=> b!2038691 (= e!1287235 (as set.empty (Set T!36002)))))

(declare-fun b!2038692 () Bool)

(assert (=> b!2038692 (= e!1287235 (set.union (set.insert (h!27677 lt!765080) (as set.empty (Set T!36002))) (content!3308 (t!191349 lt!765080))))))

(assert (= (and d!624300 c!330220) b!2038691))

(assert (= (and d!624300 (not c!330220)) b!2038692))

(declare-fun m!2482083 () Bool)

(assert (=> b!2038692 m!2482083))

(declare-fun m!2482085 () Bool)

(assert (=> b!2038692 m!2482085))

(assert (=> b!2038476 d!624300))

(declare-fun d!624304 () Bool)

(declare-fun c!330221 () Bool)

(assert (=> d!624304 (= c!330221 (is-Nil!22276 (++!6048 lt!765049 lt!765047)))))

(declare-fun e!1287236 () (Set T!36002))

(assert (=> d!624304 (= (content!3308 (++!6048 lt!765049 lt!765047)) e!1287236)))

(declare-fun b!2038693 () Bool)

(assert (=> b!2038693 (= e!1287236 (as set.empty (Set T!36002)))))

(declare-fun b!2038694 () Bool)

(assert (=> b!2038694 (= e!1287236 (set.union (set.insert (h!27677 (++!6048 lt!765049 lt!765047)) (as set.empty (Set T!36002))) (content!3308 (t!191349 (++!6048 lt!765049 lt!765047)))))))

(assert (= (and d!624304 c!330221) b!2038693))

(assert (= (and d!624304 (not c!330221)) b!2038694))

(declare-fun m!2482087 () Bool)

(assert (=> b!2038694 m!2482087))

(assert (=> b!2038694 m!2481957))

(assert (=> b!2038476 d!624304))

(declare-fun d!624308 () Bool)

(declare-fun lt!765110 () Int)

(assert (=> d!624308 (>= lt!765110 0)))

(declare-fun e!1287239 () Int)

(assert (=> d!624308 (= lt!765110 e!1287239)))

(declare-fun c!330223 () Bool)

(assert (=> d!624308 (= c!330223 (is-Nil!22276 lt!765083))))

(assert (=> d!624308 (= (size!17428 lt!765083) lt!765110)))

(declare-fun b!2038699 () Bool)

(assert (=> b!2038699 (= e!1287239 0)))

(declare-fun b!2038700 () Bool)

(assert (=> b!2038700 (= e!1287239 (+ 1 (size!17428 (t!191349 lt!765083))))))

(assert (= (and d!624308 c!330223) b!2038699))

(assert (= (and d!624308 (not c!330223)) b!2038700))

(declare-fun m!2482089 () Bool)

(assert (=> b!2038700 m!2482089))

(assert (=> b!2038505 d!624308))

(assert (=> b!2038505 d!624298))

(declare-fun d!624310 () Bool)

(declare-fun lt!765111 () Int)

(assert (=> d!624310 (>= lt!765111 0)))

(declare-fun e!1287240 () Int)

(assert (=> d!624310 (= lt!765111 e!1287240)))

(declare-fun c!330224 () Bool)

(assert (=> d!624310 (= c!330224 (is-Nil!22276 lt!765047))))

(assert (=> d!624310 (= (size!17428 lt!765047) lt!765111)))

(declare-fun b!2038701 () Bool)

(assert (=> b!2038701 (= e!1287240 0)))

(declare-fun b!2038702 () Bool)

(assert (=> b!2038702 (= e!1287240 (+ 1 (size!17428 (t!191349 lt!765047))))))

(assert (= (and d!624310 c!330224) b!2038701))

(assert (= (and d!624310 (not c!330224)) b!2038702))

(assert (=> b!2038702 m!2481981))

(assert (=> b!2038505 d!624310))

(declare-fun b!2038703 () Bool)

(declare-fun res!893856 () Bool)

(declare-fun e!1287241 () Bool)

(assert (=> b!2038703 (=> (not res!893856) (not e!1287241))))

(assert (=> b!2038703 (= res!893856 (not (isEmpty!13932 (left!17739 (right!18069 t!4319)))))))

(declare-fun b!2038704 () Bool)

(declare-fun res!893859 () Bool)

(assert (=> b!2038704 (=> (not res!893859) (not e!1287241))))

(assert (=> b!2038704 (= res!893859 (isBalanced!2346 (left!17739 (right!18069 t!4319))))))

(declare-fun b!2038705 () Bool)

(declare-fun e!1287242 () Bool)

(assert (=> b!2038705 (= e!1287242 e!1287241)))

(declare-fun res!893858 () Bool)

(assert (=> b!2038705 (=> (not res!893858) (not e!1287241))))

(assert (=> b!2038705 (= res!893858 (<= (- 1) (- (height!1168 (left!17739 (right!18069 t!4319))) (height!1168 (right!18069 (right!18069 t!4319))))))))

(declare-fun b!2038707 () Bool)

(declare-fun res!893857 () Bool)

(assert (=> b!2038707 (=> (not res!893857) (not e!1287241))))

(assert (=> b!2038707 (= res!893857 (isBalanced!2346 (right!18069 (right!18069 t!4319))))))

(declare-fun b!2038708 () Bool)

(assert (=> b!2038708 (= e!1287241 (not (isEmpty!13932 (right!18069 (right!18069 t!4319)))))))

(declare-fun d!624312 () Bool)

(declare-fun res!893855 () Bool)

(assert (=> d!624312 (=> res!893855 e!1287242)))

(assert (=> d!624312 (= res!893855 (not (is-Node!7468 (right!18069 t!4319))))))

(assert (=> d!624312 (= (isBalanced!2346 (right!18069 t!4319)) e!1287242)))

(declare-fun b!2038706 () Bool)

(declare-fun res!893854 () Bool)

(assert (=> b!2038706 (=> (not res!893854) (not e!1287241))))

(assert (=> b!2038706 (= res!893854 (<= (- (height!1168 (left!17739 (right!18069 t!4319))) (height!1168 (right!18069 (right!18069 t!4319)))) 1))))

(assert (= (and d!624312 (not res!893855)) b!2038705))

(assert (= (and b!2038705 res!893858) b!2038706))

(assert (= (and b!2038706 res!893854) b!2038704))

(assert (= (and b!2038704 res!893859) b!2038707))

(assert (= (and b!2038707 res!893857) b!2038703))

(assert (= (and b!2038703 res!893856) b!2038708))

(declare-fun m!2482101 () Bool)

(assert (=> b!2038705 m!2482101))

(declare-fun m!2482103 () Bool)

(assert (=> b!2038705 m!2482103))

(declare-fun m!2482105 () Bool)

(assert (=> b!2038708 m!2482105))

(declare-fun m!2482107 () Bool)

(assert (=> b!2038703 m!2482107))

(declare-fun m!2482109 () Bool)

(assert (=> b!2038704 m!2482109))

(declare-fun m!2482111 () Bool)

(assert (=> b!2038707 m!2482111))

(assert (=> b!2038706 m!2482101))

(assert (=> b!2038706 m!2482103))

(assert (=> b!2038541 d!624312))

(declare-fun b!2038711 () Bool)

(declare-fun res!893860 () Bool)

(declare-fun e!1287243 () Bool)

(assert (=> b!2038711 (=> (not res!893860) (not e!1287243))))

(declare-fun lt!765112 () List!22358)

(assert (=> b!2038711 (= res!893860 (= (size!17428 lt!765112) (+ (size!17428 (list!9134 (left!17739 (left!17739 t!4319)))) (size!17428 (list!9134 (right!18069 (left!17739 t!4319)))))))))

(declare-fun d!624316 () Bool)

(assert (=> d!624316 e!1287243))

(declare-fun res!893861 () Bool)

(assert (=> d!624316 (=> (not res!893861) (not e!1287243))))

(assert (=> d!624316 (= res!893861 (= (content!3308 lt!765112) (set.union (content!3308 (list!9134 (left!17739 (left!17739 t!4319)))) (content!3308 (list!9134 (right!18069 (left!17739 t!4319)))))))))

(declare-fun e!1287244 () List!22358)

(assert (=> d!624316 (= lt!765112 e!1287244)))

(declare-fun c!330225 () Bool)

(assert (=> d!624316 (= c!330225 (is-Nil!22276 (list!9134 (left!17739 (left!17739 t!4319)))))))

(assert (=> d!624316 (= (++!6048 (list!9134 (left!17739 (left!17739 t!4319))) (list!9134 (right!18069 (left!17739 t!4319)))) lt!765112)))

(declare-fun b!2038710 () Bool)

(assert (=> b!2038710 (= e!1287244 (Cons!22276 (h!27677 (list!9134 (left!17739 (left!17739 t!4319)))) (++!6048 (t!191349 (list!9134 (left!17739 (left!17739 t!4319)))) (list!9134 (right!18069 (left!17739 t!4319))))))))

(declare-fun b!2038709 () Bool)

(assert (=> b!2038709 (= e!1287244 (list!9134 (right!18069 (left!17739 t!4319))))))

(declare-fun b!2038712 () Bool)

(assert (=> b!2038712 (= e!1287243 (or (not (= (list!9134 (right!18069 (left!17739 t!4319))) Nil!22276)) (= lt!765112 (list!9134 (left!17739 (left!17739 t!4319))))))))

(assert (= (and d!624316 c!330225) b!2038709))

(assert (= (and d!624316 (not c!330225)) b!2038710))

(assert (= (and d!624316 res!893861) b!2038711))

(assert (= (and b!2038711 res!893860) b!2038712))

(declare-fun m!2482113 () Bool)

(assert (=> b!2038711 m!2482113))

(assert (=> b!2038711 m!2481821))

(declare-fun m!2482115 () Bool)

(assert (=> b!2038711 m!2482115))

(assert (=> b!2038711 m!2481823))

(declare-fun m!2482117 () Bool)

(assert (=> b!2038711 m!2482117))

(declare-fun m!2482119 () Bool)

(assert (=> d!624316 m!2482119))

(assert (=> d!624316 m!2481821))

(declare-fun m!2482121 () Bool)

(assert (=> d!624316 m!2482121))

(assert (=> d!624316 m!2481823))

(declare-fun m!2482123 () Bool)

(assert (=> d!624316 m!2482123))

(assert (=> b!2038710 m!2481823))

(declare-fun m!2482125 () Bool)

(assert (=> b!2038710 m!2482125))

(assert (=> b!2038486 d!624316))

(declare-fun d!624318 () Bool)

(declare-fun c!330228 () Bool)

(assert (=> d!624318 (= c!330228 (is-Empty!7468 (left!17739 (left!17739 t!4319))))))

(declare-fun e!1287247 () List!22358)

(assert (=> d!624318 (= (list!9134 (left!17739 (left!17739 t!4319))) e!1287247)))

(declare-fun b!2038720 () Bool)

(declare-fun e!1287248 () List!22358)

(assert (=> b!2038720 (= e!1287248 (++!6048 (list!9134 (left!17739 (left!17739 (left!17739 t!4319)))) (list!9134 (right!18069 (left!17739 (left!17739 t!4319))))))))

(declare-fun b!2038719 () Bool)

(assert (=> b!2038719 (= e!1287248 (list!9136 (xs!10370 (left!17739 (left!17739 t!4319)))))))

(declare-fun b!2038717 () Bool)

(assert (=> b!2038717 (= e!1287247 Nil!22276)))

(declare-fun b!2038718 () Bool)

(assert (=> b!2038718 (= e!1287247 e!1287248)))

(declare-fun c!330229 () Bool)

(assert (=> b!2038718 (= c!330229 (is-Leaf!10944 (left!17739 (left!17739 t!4319))))))

(assert (= (and d!624318 c!330228) b!2038717))

(assert (= (and d!624318 (not c!330228)) b!2038718))

(assert (= (and b!2038718 c!330229) b!2038719))

(assert (= (and b!2038718 (not c!330229)) b!2038720))

(declare-fun m!2482127 () Bool)

(assert (=> b!2038720 m!2482127))

(declare-fun m!2482129 () Bool)

(assert (=> b!2038720 m!2482129))

(assert (=> b!2038720 m!2482127))

(assert (=> b!2038720 m!2482129))

(declare-fun m!2482131 () Bool)

(assert (=> b!2038720 m!2482131))

(declare-fun m!2482133 () Bool)

(assert (=> b!2038719 m!2482133))

(assert (=> b!2038486 d!624318))

(declare-fun d!624320 () Bool)

(declare-fun c!330230 () Bool)

(assert (=> d!624320 (= c!330230 (is-Empty!7468 (right!18069 (left!17739 t!4319))))))

(declare-fun e!1287249 () List!22358)

(assert (=> d!624320 (= (list!9134 (right!18069 (left!17739 t!4319))) e!1287249)))

(declare-fun b!2038724 () Bool)

(declare-fun e!1287250 () List!22358)

(assert (=> b!2038724 (= e!1287250 (++!6048 (list!9134 (left!17739 (right!18069 (left!17739 t!4319)))) (list!9134 (right!18069 (right!18069 (left!17739 t!4319))))))))

(declare-fun b!2038723 () Bool)

(assert (=> b!2038723 (= e!1287250 (list!9136 (xs!10370 (right!18069 (left!17739 t!4319)))))))

(declare-fun b!2038721 () Bool)

(assert (=> b!2038721 (= e!1287249 Nil!22276)))

(declare-fun b!2038722 () Bool)

(assert (=> b!2038722 (= e!1287249 e!1287250)))

(declare-fun c!330231 () Bool)

(assert (=> b!2038722 (= c!330231 (is-Leaf!10944 (right!18069 (left!17739 t!4319))))))

(assert (= (and d!624320 c!330230) b!2038721))

(assert (= (and d!624320 (not c!330230)) b!2038722))

(assert (= (and b!2038722 c!330231) b!2038723))

(assert (= (and b!2038722 (not c!330231)) b!2038724))

(declare-fun m!2482135 () Bool)

(assert (=> b!2038724 m!2482135))

(declare-fun m!2482137 () Bool)

(assert (=> b!2038724 m!2482137))

(assert (=> b!2038724 m!2482135))

(assert (=> b!2038724 m!2482137))

(declare-fun m!2482139 () Bool)

(assert (=> b!2038724 m!2482139))

(declare-fun m!2482141 () Bool)

(assert (=> b!2038723 m!2482141))

(assert (=> b!2038486 d!624320))

(declare-fun d!624322 () Bool)

(declare-fun c!330232 () Bool)

(assert (=> d!624322 (= c!330232 (is-Nil!22276 lt!765081))))

(declare-fun e!1287251 () (Set T!36002))

(assert (=> d!624322 (= (content!3308 lt!765081) e!1287251)))

(declare-fun b!2038725 () Bool)

(assert (=> b!2038725 (= e!1287251 (as set.empty (Set T!36002)))))

(declare-fun b!2038726 () Bool)

(assert (=> b!2038726 (= e!1287251 (set.union (set.insert (h!27677 lt!765081) (as set.empty (Set T!36002))) (content!3308 (t!191349 lt!765081))))))

(assert (= (and d!624322 c!330232) b!2038725))

(assert (= (and d!624322 (not c!330232)) b!2038726))

(declare-fun m!2482143 () Bool)

(assert (=> b!2038726 m!2482143))

(declare-fun m!2482145 () Bool)

(assert (=> b!2038726 m!2482145))

(assert (=> b!2038494 d!624322))

(assert (=> b!2038494 d!624266))

(assert (=> b!2038539 d!624248))

(assert (=> b!2038539 d!624250))

(declare-fun d!624324 () Bool)

(declare-fun c!330234 () Bool)

(assert (=> d!624324 (= c!330234 (is-Node!7468 (left!17739 (left!17739 t!4319))))))

(declare-fun e!1287253 () Bool)

(assert (=> d!624324 (= (inv!29580 (left!17739 (left!17739 t!4319))) e!1287253)))

(declare-fun b!2038729 () Bool)

(assert (=> b!2038729 (= e!1287253 (inv!29584 (left!17739 (left!17739 t!4319))))))

(declare-fun b!2038730 () Bool)

(declare-fun e!1287254 () Bool)

(assert (=> b!2038730 (= e!1287253 e!1287254)))

(declare-fun res!893862 () Bool)

(assert (=> b!2038730 (= res!893862 (not (is-Leaf!10944 (left!17739 (left!17739 t!4319)))))))

(assert (=> b!2038730 (=> res!893862 e!1287254)))

(declare-fun b!2038731 () Bool)

(assert (=> b!2038731 (= e!1287254 (inv!29585 (left!17739 (left!17739 t!4319))))))

(assert (= (and d!624324 c!330234) b!2038729))

(assert (= (and d!624324 (not c!330234)) b!2038730))

(assert (= (and b!2038730 (not res!893862)) b!2038731))

(declare-fun m!2482151 () Bool)

(assert (=> b!2038729 m!2482151))

(declare-fun m!2482153 () Bool)

(assert (=> b!2038731 m!2482153))

(assert (=> b!2038568 d!624324))

(declare-fun d!624328 () Bool)

(declare-fun c!330236 () Bool)

(assert (=> d!624328 (= c!330236 (is-Node!7468 (right!18069 (left!17739 t!4319))))))

(declare-fun e!1287256 () Bool)

(assert (=> d!624328 (= (inv!29580 (right!18069 (left!17739 t!4319))) e!1287256)))

(declare-fun b!2038734 () Bool)

(assert (=> b!2038734 (= e!1287256 (inv!29584 (right!18069 (left!17739 t!4319))))))

(declare-fun b!2038735 () Bool)

(declare-fun e!1287257 () Bool)

(assert (=> b!2038735 (= e!1287256 e!1287257)))

(declare-fun res!893863 () Bool)

(assert (=> b!2038735 (= res!893863 (not (is-Leaf!10944 (right!18069 (left!17739 t!4319)))))))

(assert (=> b!2038735 (=> res!893863 e!1287257)))

(declare-fun b!2038736 () Bool)

(assert (=> b!2038736 (= e!1287257 (inv!29585 (right!18069 (left!17739 t!4319))))))

(assert (= (and d!624328 c!330236) b!2038734))

(assert (= (and d!624328 (not c!330236)) b!2038735))

(assert (= (and b!2038735 (not res!893863)) b!2038736))

(declare-fun m!2482155 () Bool)

(assert (=> b!2038734 m!2482155))

(declare-fun m!2482157 () Bool)

(assert (=> b!2038736 m!2482157))

(assert (=> b!2038568 d!624328))

(declare-fun d!624330 () Bool)

(declare-fun res!893876 () Bool)

(declare-fun e!1287267 () Bool)

(assert (=> d!624330 (=> res!893876 e!1287267)))

(assert (=> d!624330 (= res!893876 (is-Nil!22276 lt!765081))))

(assert (=> d!624330 (= (forall!4755 lt!765081 p!1489) e!1287267)))

(declare-fun b!2038753 () Bool)

(declare-fun e!1287268 () Bool)

(assert (=> b!2038753 (= e!1287267 e!1287268)))

(declare-fun res!893877 () Bool)

(assert (=> b!2038753 (=> (not res!893877) (not e!1287268))))

(assert (=> b!2038753 (= res!893877 (dynLambda!11105 p!1489 (h!27677 lt!765081)))))

(declare-fun b!2038754 () Bool)

(assert (=> b!2038754 (= e!1287268 (forall!4755 (t!191349 lt!765081) p!1489))))

(assert (= (and d!624330 (not res!893876)) b!2038753))

(assert (= (and b!2038753 res!893877) b!2038754))

(declare-fun b_lambda!68901 () Bool)

(assert (=> (not b_lambda!68901) (not b!2038753)))

(declare-fun t!191377 () Bool)

(declare-fun tb!128909 () Bool)

(assert (=> (and start!200878 (= p!1489 p!1489) t!191377) tb!128909))

(declare-fun result!154220 () Bool)

(assert (=> tb!128909 (= result!154220 true)))

(assert (=> b!2038753 t!191377))

(declare-fun b_and!162697 () Bool)

(assert (= b_and!162693 (and (=> t!191377 result!154220) b_and!162697)))

(declare-fun m!2482183 () Bool)

(assert (=> b!2038753 m!2482183))

(declare-fun m!2482187 () Bool)

(assert (=> b!2038754 m!2482187))

(assert (=> b!2038491 d!624330))

(declare-fun d!624340 () Bool)

(declare-fun lt!765115 () Int)

(assert (=> d!624340 (>= lt!765115 0)))

(declare-fun e!1287269 () Int)

(assert (=> d!624340 (= lt!765115 e!1287269)))

(declare-fun c!330239 () Bool)

(assert (=> d!624340 (= c!330239 (is-Nil!22276 (innerList!7528 (xs!10370 t!4319))))))

(assert (=> d!624340 (= (size!17428 (innerList!7528 (xs!10370 t!4319))) lt!765115)))

(declare-fun b!2038755 () Bool)

(assert (=> b!2038755 (= e!1287269 0)))

(declare-fun b!2038756 () Bool)

(assert (=> b!2038756 (= e!1287269 (+ 1 (size!17428 (t!191349 (innerList!7528 (xs!10370 t!4319))))))))

(assert (= (and d!624340 c!330239) b!2038755))

(assert (= (and d!624340 (not c!330239)) b!2038756))

(declare-fun m!2482195 () Bool)

(assert (=> b!2038756 m!2482195))

(assert (=> d!624234 d!624340))

(declare-fun d!624344 () Bool)

(declare-fun res!893878 () Bool)

(declare-fun e!1287272 () Bool)

(assert (=> d!624344 (=> (not res!893878) (not e!1287272))))

(assert (=> d!624344 (= res!893878 (<= (size!17428 (list!9136 (xs!10370 (right!18069 t!4319)))) 512))))

(assert (=> d!624344 (= (inv!29585 (right!18069 t!4319)) e!1287272)))

(declare-fun b!2038761 () Bool)

(declare-fun res!893879 () Bool)

(assert (=> b!2038761 (=> (not res!893879) (not e!1287272))))

(assert (=> b!2038761 (= res!893879 (= (csize!15167 (right!18069 t!4319)) (size!17428 (list!9136 (xs!10370 (right!18069 t!4319))))))))

(declare-fun b!2038762 () Bool)

(assert (=> b!2038762 (= e!1287272 (and (> (csize!15167 (right!18069 t!4319)) 0) (<= (csize!15167 (right!18069 t!4319)) 512)))))

(assert (= (and d!624344 res!893878) b!2038761))

(assert (= (and b!2038761 res!893879) b!2038762))

(assert (=> d!624344 m!2481759))

(assert (=> d!624344 m!2481759))

(declare-fun m!2482203 () Bool)

(assert (=> d!624344 m!2482203))

(assert (=> b!2038761 m!2481759))

(assert (=> b!2038761 m!2481759))

(assert (=> b!2038761 m!2482203))

(assert (=> b!2038352 d!624344))

(declare-fun d!624348 () Bool)

(declare-fun c!330243 () Bool)

(assert (=> d!624348 (= c!330243 (is-Nil!22276 lt!765079))))

(declare-fun e!1287274 () (Set T!36002))

(assert (=> d!624348 (= (content!3308 lt!765079) e!1287274)))

(declare-fun b!2038763 () Bool)

(assert (=> b!2038763 (= e!1287274 (as set.empty (Set T!36002)))))

(declare-fun b!2038764 () Bool)

(assert (=> b!2038764 (= e!1287274 (set.union (set.insert (h!27677 lt!765079) (as set.empty (Set T!36002))) (content!3308 (t!191349 lt!765079))))))

(assert (= (and d!624348 c!330243) b!2038763))

(assert (= (and d!624348 (not c!330243)) b!2038764))

(declare-fun m!2482207 () Bool)

(assert (=> b!2038764 m!2482207))

(declare-fun m!2482209 () Bool)

(assert (=> b!2038764 m!2482209))

(assert (=> b!2038468 d!624348))

(assert (=> b!2038468 d!624264))

(declare-fun bm!124979 () Bool)

(declare-fun call!124984 () Int)

(declare-fun c!330246 () Bool)

(assert (=> bm!124979 (= call!124984 (BigIntAbs!0 (ite c!330246 (csize!15166 (left!17739 (left!17739 t!4319))) (csize!15167 (left!17739 (left!17739 t!4319))))))))

(declare-fun b!2038769 () Bool)

(declare-fun e!1287277 () Int)

(assert (=> b!2038769 (= e!1287277 0)))

(declare-fun b!2038770 () Bool)

(declare-fun e!1287276 () Int)

(assert (=> b!2038770 (= e!1287276 e!1287277)))

(declare-fun c!330245 () Bool)

(assert (=> b!2038770 (= c!330245 (is-Leaf!10944 (left!17739 (left!17739 t!4319))))))

(declare-fun d!624350 () Bool)

(declare-fun lt!765116 () Int)

(assert (=> d!624350 (>= lt!765116 0)))

(assert (=> d!624350 (= lt!765116 e!1287276)))

(assert (=> d!624350 (= c!330246 (is-Node!7468 (left!17739 (left!17739 t!4319))))))

(assert (=> d!624350 (= (ConcPrimitiveSize!19 (left!17739 (left!17739 t!4319))) lt!765116)))

(declare-fun b!2038771 () Bool)

(assert (=> b!2038771 (= e!1287277 (+ 1 (IArrayPrimitiveSize!19 (xs!10370 (left!17739 (left!17739 t!4319)))) call!124984))))

(declare-fun b!2038772 () Bool)

(assert (=> b!2038772 (= e!1287276 (+ 1 (ConcPrimitiveSize!19 (left!17739 (left!17739 (left!17739 t!4319)))) (ConcPrimitiveSize!19 (right!18069 (left!17739 (left!17739 t!4319)))) call!124984 (BigIntAbs!0 (cheight!7679 (left!17739 (left!17739 t!4319))))))))

(assert (= (and d!624350 c!330246) b!2038772))

(assert (= (and d!624350 (not c!330246)) b!2038770))

(assert (= (and b!2038770 c!330245) b!2038771))

(assert (= (and b!2038770 (not c!330245)) b!2038769))

(assert (= (or b!2038772 b!2038771) bm!124979))

(declare-fun m!2482219 () Bool)

(assert (=> bm!124979 m!2482219))

(declare-fun m!2482221 () Bool)

(assert (=> b!2038771 m!2482221))

(declare-fun m!2482223 () Bool)

(assert (=> b!2038772 m!2482223))

(declare-fun m!2482225 () Bool)

(assert (=> b!2038772 m!2482225))

(declare-fun m!2482227 () Bool)

(assert (=> b!2038772 m!2482227))

(assert (=> b!2038378 d!624350))

(declare-fun bm!124980 () Bool)

(declare-fun call!124985 () Int)

(declare-fun c!330248 () Bool)

(assert (=> bm!124980 (= call!124985 (BigIntAbs!0 (ite c!330248 (csize!15166 (right!18069 (left!17739 t!4319))) (csize!15167 (right!18069 (left!17739 t!4319))))))))

(declare-fun b!2038775 () Bool)

(declare-fun e!1287281 () Int)

(assert (=> b!2038775 (= e!1287281 0)))

(declare-fun b!2038776 () Bool)

(declare-fun e!1287280 () Int)

(assert (=> b!2038776 (= e!1287280 e!1287281)))

(declare-fun c!330247 () Bool)

(assert (=> b!2038776 (= c!330247 (is-Leaf!10944 (right!18069 (left!17739 t!4319))))))

(declare-fun d!624356 () Bool)

(declare-fun lt!765117 () Int)

(assert (=> d!624356 (>= lt!765117 0)))

(assert (=> d!624356 (= lt!765117 e!1287280)))

(assert (=> d!624356 (= c!330248 (is-Node!7468 (right!18069 (left!17739 t!4319))))))

(assert (=> d!624356 (= (ConcPrimitiveSize!19 (right!18069 (left!17739 t!4319))) lt!765117)))

(declare-fun b!2038777 () Bool)

(assert (=> b!2038777 (= e!1287281 (+ 1 (IArrayPrimitiveSize!19 (xs!10370 (right!18069 (left!17739 t!4319)))) call!124985))))

(declare-fun b!2038778 () Bool)

(assert (=> b!2038778 (= e!1287280 (+ 1 (ConcPrimitiveSize!19 (left!17739 (right!18069 (left!17739 t!4319)))) (ConcPrimitiveSize!19 (right!18069 (right!18069 (left!17739 t!4319)))) call!124985 (BigIntAbs!0 (cheight!7679 (right!18069 (left!17739 t!4319))))))))

(assert (= (and d!624356 c!330248) b!2038778))

(assert (= (and d!624356 (not c!330248)) b!2038776))

(assert (= (and b!2038776 c!330247) b!2038777))

(assert (= (and b!2038776 (not c!330247)) b!2038775))

(assert (= (or b!2038778 b!2038777) bm!124980))

(declare-fun m!2482231 () Bool)

(assert (=> bm!124980 m!2482231))

(declare-fun m!2482235 () Bool)

(assert (=> b!2038777 m!2482235))

(declare-fun m!2482237 () Bool)

(assert (=> b!2038778 m!2482237))

(declare-fun m!2482239 () Bool)

(assert (=> b!2038778 m!2482239))

(declare-fun m!2482241 () Bool)

(assert (=> b!2038778 m!2482241))

(assert (=> b!2038378 d!624356))

(declare-fun d!624360 () Bool)

(assert (=> d!624360 (= (BigIntAbs!0 (cheight!7679 (left!17739 t!4319))) (ite (>= (cheight!7679 (left!17739 t!4319)) 0) (cheight!7679 (left!17739 t!4319)) (- (cheight!7679 (left!17739 t!4319)))))))

(assert (=> b!2038378 d!624360))

(declare-fun d!624362 () Bool)

(declare-fun res!893882 () Bool)

(declare-fun e!1287282 () Bool)

(assert (=> d!624362 (=> (not res!893882) (not e!1287282))))

(assert (=> d!624362 (= res!893882 (= (csize!15166 (right!18069 t!4319)) (+ (size!17430 (left!17739 (right!18069 t!4319))) (size!17430 (right!18069 (right!18069 t!4319))))))))

(assert (=> d!624362 (= (inv!29584 (right!18069 t!4319)) e!1287282)))

(declare-fun b!2038779 () Bool)

(declare-fun res!893883 () Bool)

(assert (=> b!2038779 (=> (not res!893883) (not e!1287282))))

(assert (=> b!2038779 (= res!893883 (and (not (= (left!17739 (right!18069 t!4319)) Empty!7468)) (not (= (right!18069 (right!18069 t!4319)) Empty!7468))))))

(declare-fun b!2038780 () Bool)

(declare-fun res!893884 () Bool)

(assert (=> b!2038780 (=> (not res!893884) (not e!1287282))))

(assert (=> b!2038780 (= res!893884 (= (cheight!7679 (right!18069 t!4319)) (+ (max!0 (height!1168 (left!17739 (right!18069 t!4319))) (height!1168 (right!18069 (right!18069 t!4319)))) 1)))))

(declare-fun b!2038781 () Bool)

(assert (=> b!2038781 (= e!1287282 (<= 0 (cheight!7679 (right!18069 t!4319))))))

(assert (= (and d!624362 res!893882) b!2038779))

(assert (= (and b!2038779 res!893883) b!2038780))

(assert (= (and b!2038780 res!893884) b!2038781))

(declare-fun m!2482243 () Bool)

(assert (=> d!624362 m!2482243))

(declare-fun m!2482245 () Bool)

(assert (=> d!624362 m!2482245))

(assert (=> b!2038780 m!2482101))

(assert (=> b!2038780 m!2482103))

(assert (=> b!2038780 m!2482101))

(assert (=> b!2038780 m!2482103))

(declare-fun m!2482247 () Bool)

(assert (=> b!2038780 m!2482247))

(assert (=> b!2038350 d!624362))

(assert (=> b!2038382 d!624186))

(declare-fun bm!124981 () Bool)

(declare-fun call!124986 () Int)

(declare-fun c!330250 () Bool)

(assert (=> bm!124981 (= call!124986 (BigIntAbs!0 (ite c!330250 (csize!15166 (right!18069 t!4319)) (csize!15167 (right!18069 t!4319)))))))

(declare-fun b!2038782 () Bool)

(declare-fun e!1287284 () Int)

(assert (=> b!2038782 (= e!1287284 0)))

(declare-fun b!2038783 () Bool)

(declare-fun e!1287283 () Int)

(assert (=> b!2038783 (= e!1287283 e!1287284)))

(declare-fun c!330249 () Bool)

(assert (=> b!2038783 (= c!330249 (is-Leaf!10944 (right!18069 t!4319)))))

(declare-fun d!624364 () Bool)

(declare-fun lt!765118 () Int)

(assert (=> d!624364 (>= lt!765118 0)))

(assert (=> d!624364 (= lt!765118 e!1287283)))

(assert (=> d!624364 (= c!330250 (is-Node!7468 (right!18069 t!4319)))))

(assert (=> d!624364 (= (ConcPrimitiveSize!19 (right!18069 t!4319)) lt!765118)))

(declare-fun b!2038784 () Bool)

(assert (=> b!2038784 (= e!1287284 (+ 1 (IArrayPrimitiveSize!19 (xs!10370 (right!18069 t!4319))) call!124986))))

(declare-fun b!2038785 () Bool)

(assert (=> b!2038785 (= e!1287283 (+ 1 (ConcPrimitiveSize!19 (left!17739 (right!18069 t!4319))) (ConcPrimitiveSize!19 (right!18069 (right!18069 t!4319))) call!124986 (BigIntAbs!0 (cheight!7679 (right!18069 t!4319)))))))

(assert (= (and d!624364 c!330250) b!2038785))

(assert (= (and d!624364 (not c!330250)) b!2038783))

(assert (= (and b!2038783 c!330249) b!2038784))

(assert (= (and b!2038783 (not c!330249)) b!2038782))

(assert (= (or b!2038785 b!2038784) bm!124981))

(declare-fun m!2482249 () Bool)

(assert (=> bm!124981 m!2482249))

(declare-fun m!2482251 () Bool)

(assert (=> b!2038784 m!2482251))

(declare-fun m!2482253 () Bool)

(assert (=> b!2038785 m!2482253))

(declare-fun m!2482255 () Bool)

(assert (=> b!2038785 m!2482255))

(declare-fun m!2482257 () Bool)

(assert (=> b!2038785 m!2482257))

(assert (=> b!2038382 d!624364))

(declare-fun d!624366 () Bool)

(assert (=> d!624366 (= (BigIntAbs!0 (cheight!7679 t!4319)) (ite (>= (cheight!7679 t!4319) 0) (cheight!7679 t!4319) (- (cheight!7679 t!4319))))))

(assert (=> b!2038382 d!624366))

(declare-fun d!624368 () Bool)

(declare-fun res!893885 () Bool)

(declare-fun e!1287285 () Bool)

(assert (=> d!624368 (=> res!893885 e!1287285)))

(assert (=> d!624368 (= res!893885 (is-Nil!22276 lt!765080))))

(assert (=> d!624368 (= (forall!4755 lt!765080 p!1489) e!1287285)))

(declare-fun b!2038786 () Bool)

(declare-fun e!1287286 () Bool)

(assert (=> b!2038786 (= e!1287285 e!1287286)))

(declare-fun res!893886 () Bool)

(assert (=> b!2038786 (=> (not res!893886) (not e!1287286))))

(assert (=> b!2038786 (= res!893886 (dynLambda!11105 p!1489 (h!27677 lt!765080)))))

(declare-fun b!2038787 () Bool)

(assert (=> b!2038787 (= e!1287286 (forall!4755 (t!191349 lt!765080) p!1489))))

(assert (= (and d!624368 (not res!893885)) b!2038786))

(assert (= (and b!2038786 res!893886) b!2038787))

(declare-fun b_lambda!68905 () Bool)

(assert (=> (not b_lambda!68905) (not b!2038786)))

(declare-fun t!191382 () Bool)

(declare-fun tb!128913 () Bool)

(assert (=> (and start!200878 (= p!1489 p!1489) t!191382) tb!128913))

(declare-fun result!154224 () Bool)

(assert (=> tb!128913 (= result!154224 true)))

(assert (=> b!2038786 t!191382))

(declare-fun b_and!162701 () Bool)

(assert (= b_and!162697 (and (=> t!191382 result!154224) b_and!162701)))

(declare-fun m!2482259 () Bool)

(assert (=> b!2038786 m!2482259))

(declare-fun m!2482261 () Bool)

(assert (=> b!2038787 m!2482261))

(assert (=> b!2038473 d!624368))

(declare-fun d!624370 () Bool)

(declare-fun lt!765124 () Bool)

(declare-fun isEmpty!13935 (List!22358) Bool)

(assert (=> d!624370 (= lt!765124 (isEmpty!13935 (list!9134 (left!17739 t!4319))))))

(assert (=> d!624370 (= lt!765124 (= (size!17430 (left!17739 t!4319)) 0))))

(assert (=> d!624370 (= (isEmpty!13932 (left!17739 t!4319)) lt!765124)))

(declare-fun bs!421451 () Bool)

(assert (= bs!421451 d!624370))

(assert (=> bs!421451 m!2481631))

(assert (=> bs!421451 m!2481631))

(declare-fun m!2482267 () Bool)

(assert (=> bs!421451 m!2482267))

(assert (=> bs!421451 m!2481969))

(assert (=> b!2038537 d!624370))

(declare-fun d!624374 () Bool)

(assert (=> d!624374 (= (BigIntAbs!0 (ite c!330147 (csize!15166 t!4319) (csize!15167 t!4319))) (ite (>= (ite c!330147 (csize!15166 t!4319) (csize!15167 t!4319)) 0) (ite c!330147 (csize!15166 t!4319) (csize!15167 t!4319)) (- (ite c!330147 (csize!15166 t!4319) (csize!15167 t!4319)))))))

(assert (=> bm!124965 d!624374))

(declare-fun d!624376 () Bool)

(declare-fun c!330251 () Bool)

(assert (=> d!624376 (= c!330251 (is-Nil!22276 lt!765071))))

(declare-fun e!1287287 () (Set T!36002))

(assert (=> d!624376 (= (content!3308 lt!765071) e!1287287)))

(declare-fun b!2038788 () Bool)

(assert (=> b!2038788 (= e!1287287 (as set.empty (Set T!36002)))))

(declare-fun b!2038789 () Bool)

(assert (=> b!2038789 (= e!1287287 (set.union (set.insert (h!27677 lt!765071) (as set.empty (Set T!36002))) (content!3308 (t!191349 lt!765071))))))

(assert (= (and d!624376 c!330251) b!2038788))

(assert (= (and d!624376 (not c!330251)) b!2038789))

(declare-fun m!2482269 () Bool)

(assert (=> b!2038789 m!2482269))

(declare-fun m!2482271 () Bool)

(assert (=> b!2038789 m!2482271))

(assert (=> d!624194 d!624376))

(declare-fun d!624378 () Bool)

(declare-fun c!330252 () Bool)

(assert (=> d!624378 (= c!330252 (is-Nil!22276 (filter!473 lt!765049 p!1489)))))

(declare-fun e!1287288 () (Set T!36002))

(assert (=> d!624378 (= (content!3308 (filter!473 lt!765049 p!1489)) e!1287288)))

(declare-fun b!2038790 () Bool)

(assert (=> b!2038790 (= e!1287288 (as set.empty (Set T!36002)))))

(declare-fun b!2038791 () Bool)

(assert (=> b!2038791 (= e!1287288 (set.union (set.insert (h!27677 (filter!473 lt!765049 p!1489)) (as set.empty (Set T!36002))) (content!3308 (t!191349 (filter!473 lt!765049 p!1489)))))))

(assert (= (and d!624378 c!330252) b!2038790))

(assert (= (and d!624378 (not c!330252)) b!2038791))

(declare-fun m!2482273 () Bool)

(assert (=> b!2038791 m!2482273))

(assert (=> b!2038791 m!2482073))

(assert (=> d!624194 d!624378))

(declare-fun d!624382 () Bool)

(declare-fun c!330254 () Bool)

(assert (=> d!624382 (= c!330254 (is-Nil!22276 (filter!473 lt!765047 p!1489)))))

(declare-fun e!1287290 () (Set T!36002))

(assert (=> d!624382 (= (content!3308 (filter!473 lt!765047 p!1489)) e!1287290)))

(declare-fun b!2038792 () Bool)

(assert (=> b!2038792 (= e!1287290 (as set.empty (Set T!36002)))))

(declare-fun b!2038793 () Bool)

(assert (=> b!2038793 (= e!1287290 (set.union (set.insert (h!27677 (filter!473 lt!765047 p!1489)) (as set.empty (Set T!36002))) (content!3308 (t!191349 (filter!473 lt!765047 p!1489)))))))

(assert (= (and d!624382 c!330254) b!2038792))

(assert (= (and d!624382 (not c!330254)) b!2038793))

(declare-fun m!2482275 () Bool)

(assert (=> b!2038793 m!2482275))

(declare-fun m!2482277 () Bool)

(assert (=> b!2038793 m!2482277))

(assert (=> d!624194 d!624382))

(declare-fun b!2038802 () Bool)

(declare-fun res!893889 () Bool)

(declare-fun e!1287293 () Bool)

(assert (=> b!2038802 (=> (not res!893889) (not e!1287293))))

(declare-fun lt!765126 () List!22358)

(assert (=> b!2038802 (= res!893889 (= (size!17428 lt!765126) (+ (size!17428 (list!9134 (left!17739 (right!18069 t!4319)))) (size!17428 (list!9134 (right!18069 (right!18069 t!4319)))))))))

(declare-fun d!624384 () Bool)

(assert (=> d!624384 e!1287293))

(declare-fun res!893890 () Bool)

(assert (=> d!624384 (=> (not res!893890) (not e!1287293))))

(assert (=> d!624384 (= res!893890 (= (content!3308 lt!765126) (set.union (content!3308 (list!9134 (left!17739 (right!18069 t!4319)))) (content!3308 (list!9134 (right!18069 (right!18069 t!4319)))))))))

(declare-fun e!1287294 () List!22358)

(assert (=> d!624384 (= lt!765126 e!1287294)))

(declare-fun c!330256 () Bool)

(assert (=> d!624384 (= c!330256 (is-Nil!22276 (list!9134 (left!17739 (right!18069 t!4319)))))))

(assert (=> d!624384 (= (++!6048 (list!9134 (left!17739 (right!18069 t!4319))) (list!9134 (right!18069 (right!18069 t!4319)))) lt!765126)))

(declare-fun b!2038801 () Bool)

(assert (=> b!2038801 (= e!1287294 (Cons!22276 (h!27677 (list!9134 (left!17739 (right!18069 t!4319)))) (++!6048 (t!191349 (list!9134 (left!17739 (right!18069 t!4319)))) (list!9134 (right!18069 (right!18069 t!4319))))))))

(declare-fun b!2038800 () Bool)

(assert (=> b!2038800 (= e!1287294 (list!9134 (right!18069 (right!18069 t!4319))))))

(declare-fun b!2038803 () Bool)

(assert (=> b!2038803 (= e!1287293 (or (not (= (list!9134 (right!18069 (right!18069 t!4319))) Nil!22276)) (= lt!765126 (list!9134 (left!17739 (right!18069 t!4319))))))))

(assert (= (and d!624384 c!330256) b!2038800))

(assert (= (and d!624384 (not c!330256)) b!2038801))

(assert (= (and d!624384 res!893890) b!2038802))

(assert (= (and b!2038802 res!893889) b!2038803))

(declare-fun m!2482279 () Bool)

(assert (=> b!2038802 m!2482279))

(assert (=> b!2038802 m!2481753))

(declare-fun m!2482285 () Bool)

(assert (=> b!2038802 m!2482285))

(assert (=> b!2038802 m!2481755))

(declare-fun m!2482289 () Bool)

(assert (=> b!2038802 m!2482289))

(declare-fun m!2482293 () Bool)

(assert (=> d!624384 m!2482293))

(assert (=> d!624384 m!2481753))

(declare-fun m!2482297 () Bool)

(assert (=> d!624384 m!2482297))

(assert (=> d!624384 m!2481755))

(declare-fun m!2482301 () Bool)

(assert (=> d!624384 m!2482301))

(assert (=> b!2038801 m!2481755))

(declare-fun m!2482305 () Bool)

(assert (=> b!2038801 m!2482305))

(assert (=> b!2038432 d!624384))

(declare-fun d!624388 () Bool)

(declare-fun c!330258 () Bool)

(assert (=> d!624388 (= c!330258 (is-Empty!7468 (left!17739 (right!18069 t!4319))))))

(declare-fun e!1287296 () List!22358)

(assert (=> d!624388 (= (list!9134 (left!17739 (right!18069 t!4319))) e!1287296)))

(declare-fun b!2038809 () Bool)

(declare-fun e!1287297 () List!22358)

(assert (=> b!2038809 (= e!1287297 (++!6048 (list!9134 (left!17739 (left!17739 (right!18069 t!4319)))) (list!9134 (right!18069 (left!17739 (right!18069 t!4319))))))))

(declare-fun b!2038808 () Bool)

(assert (=> b!2038808 (= e!1287297 (list!9136 (xs!10370 (left!17739 (right!18069 t!4319)))))))

(declare-fun b!2038806 () Bool)

(assert (=> b!2038806 (= e!1287296 Nil!22276)))

(declare-fun b!2038807 () Bool)

(assert (=> b!2038807 (= e!1287296 e!1287297)))

(declare-fun c!330259 () Bool)

(assert (=> b!2038807 (= c!330259 (is-Leaf!10944 (left!17739 (right!18069 t!4319))))))

(assert (= (and d!624388 c!330258) b!2038806))

(assert (= (and d!624388 (not c!330258)) b!2038807))

(assert (= (and b!2038807 c!330259) b!2038808))

(assert (= (and b!2038807 (not c!330259)) b!2038809))

(declare-fun m!2482311 () Bool)

(assert (=> b!2038809 m!2482311))

(declare-fun m!2482313 () Bool)

(assert (=> b!2038809 m!2482313))

(assert (=> b!2038809 m!2482311))

(assert (=> b!2038809 m!2482313))

(declare-fun m!2482315 () Bool)

(assert (=> b!2038809 m!2482315))

(declare-fun m!2482317 () Bool)

(assert (=> b!2038808 m!2482317))

(assert (=> b!2038432 d!624388))

(declare-fun d!624392 () Bool)

(declare-fun c!330261 () Bool)

(assert (=> d!624392 (= c!330261 (is-Empty!7468 (right!18069 (right!18069 t!4319))))))

(declare-fun e!1287299 () List!22358)

(assert (=> d!624392 (= (list!9134 (right!18069 (right!18069 t!4319))) e!1287299)))

(declare-fun b!2038816 () Bool)

(declare-fun e!1287300 () List!22358)

(assert (=> b!2038816 (= e!1287300 (++!6048 (list!9134 (left!17739 (right!18069 (right!18069 t!4319)))) (list!9134 (right!18069 (right!18069 (right!18069 t!4319))))))))

(declare-fun b!2038814 () Bool)

(assert (=> b!2038814 (= e!1287300 (list!9136 (xs!10370 (right!18069 (right!18069 t!4319)))))))

(declare-fun b!2038812 () Bool)

(assert (=> b!2038812 (= e!1287299 Nil!22276)))

(declare-fun b!2038813 () Bool)

(assert (=> b!2038813 (= e!1287299 e!1287300)))

(declare-fun c!330262 () Bool)

(assert (=> b!2038813 (= c!330262 (is-Leaf!10944 (right!18069 (right!18069 t!4319))))))

(assert (= (and d!624392 c!330261) b!2038812))

(assert (= (and d!624392 (not c!330261)) b!2038813))

(assert (= (and b!2038813 c!330262) b!2038814))

(assert (= (and b!2038813 (not c!330262)) b!2038816))

(declare-fun m!2482325 () Bool)

(assert (=> b!2038816 m!2482325))

(declare-fun m!2482327 () Bool)

(assert (=> b!2038816 m!2482327))

(assert (=> b!2038816 m!2482325))

(assert (=> b!2038816 m!2482327))

(declare-fun m!2482329 () Bool)

(assert (=> b!2038816 m!2482329))

(declare-fun m!2482331 () Bool)

(assert (=> b!2038814 m!2482331))

(assert (=> b!2038432 d!624392))

(declare-fun d!624398 () Bool)

(declare-fun res!893891 () Bool)

(declare-fun e!1287303 () Bool)

(assert (=> d!624398 (=> res!893891 e!1287303)))

(assert (=> d!624398 (= res!893891 (is-Nil!22276 lt!765079))))

(assert (=> d!624398 (= (forall!4755 lt!765079 p!1489) e!1287303)))

(declare-fun b!2038820 () Bool)

(declare-fun e!1287304 () Bool)

(assert (=> b!2038820 (= e!1287303 e!1287304)))

(declare-fun res!893892 () Bool)

(assert (=> b!2038820 (=> (not res!893892) (not e!1287304))))

(assert (=> b!2038820 (= res!893892 (dynLambda!11105 p!1489 (h!27677 lt!765079)))))

(declare-fun b!2038821 () Bool)

(assert (=> b!2038821 (= e!1287304 (forall!4755 (t!191349 lt!765079) p!1489))))

(assert (= (and d!624398 (not res!893891)) b!2038820))

(assert (= (and b!2038820 res!893892) b!2038821))

(declare-fun b_lambda!68909 () Bool)

(assert (=> (not b_lambda!68909) (not b!2038820)))

(declare-fun t!191387 () Bool)

(declare-fun tb!128917 () Bool)

(assert (=> (and start!200878 (= p!1489 p!1489) t!191387) tb!128917))

(declare-fun result!154228 () Bool)

(assert (=> tb!128917 (= result!154228 true)))

(assert (=> b!2038820 t!191387))

(declare-fun b_and!162705 () Bool)

(assert (= b_and!162701 (and (=> t!191387 result!154228) b_and!162705)))

(declare-fun m!2482339 () Bool)

(assert (=> b!2038820 m!2482339))

(declare-fun m!2482341 () Bool)

(assert (=> b!2038821 m!2482341))

(assert (=> b!2038463 d!624398))

(declare-fun d!624404 () Bool)

(declare-fun c!330267 () Bool)

(assert (=> d!624404 (= c!330267 (is-Node!7468 (left!17739 (right!18069 t!4319))))))

(declare-fun e!1287307 () Bool)

(assert (=> d!624404 (= (inv!29580 (left!17739 (right!18069 t!4319))) e!1287307)))

(declare-fun b!2038826 () Bool)

(assert (=> b!2038826 (= e!1287307 (inv!29584 (left!17739 (right!18069 t!4319))))))

(declare-fun b!2038827 () Bool)

(declare-fun e!1287308 () Bool)

(assert (=> b!2038827 (= e!1287307 e!1287308)))

(declare-fun res!893893 () Bool)

(assert (=> b!2038827 (= res!893893 (not (is-Leaf!10944 (left!17739 (right!18069 t!4319)))))))

(assert (=> b!2038827 (=> res!893893 e!1287308)))

(declare-fun b!2038828 () Bool)

(assert (=> b!2038828 (= e!1287308 (inv!29585 (left!17739 (right!18069 t!4319))))))

(assert (= (and d!624404 c!330267) b!2038826))

(assert (= (and d!624404 (not c!330267)) b!2038827))

(assert (= (and b!2038827 (not res!893893)) b!2038828))

(declare-fun m!2482347 () Bool)

(assert (=> b!2038826 m!2482347))

(declare-fun m!2482349 () Bool)

(assert (=> b!2038828 m!2482349))

(assert (=> b!2038579 d!624404))

(declare-fun d!624410 () Bool)

(declare-fun c!330269 () Bool)

(assert (=> d!624410 (= c!330269 (is-Node!7468 (right!18069 (right!18069 t!4319))))))

(declare-fun e!1287310 () Bool)

(assert (=> d!624410 (= (inv!29580 (right!18069 (right!18069 t!4319))) e!1287310)))

(declare-fun b!2038831 () Bool)

(assert (=> b!2038831 (= e!1287310 (inv!29584 (right!18069 (right!18069 t!4319))))))

(declare-fun b!2038832 () Bool)

(declare-fun e!1287311 () Bool)

(assert (=> b!2038832 (= e!1287310 e!1287311)))

(declare-fun res!893894 () Bool)

(assert (=> b!2038832 (= res!893894 (not (is-Leaf!10944 (right!18069 (right!18069 t!4319)))))))

(assert (=> b!2038832 (=> res!893894 e!1287311)))

(declare-fun b!2038833 () Bool)

(assert (=> b!2038833 (= e!1287311 (inv!29585 (right!18069 (right!18069 t!4319))))))

(assert (= (and d!624410 c!330269) b!2038831))

(assert (= (and d!624410 (not c!330269)) b!2038832))

(assert (= (and b!2038832 (not res!893894)) b!2038833))

(declare-fun m!2482353 () Bool)

(assert (=> b!2038831 m!2482353))

(declare-fun m!2482355 () Bool)

(assert (=> b!2038833 m!2482355))

(assert (=> b!2038579 d!624410))

(declare-fun d!624414 () Bool)

(assert (=> d!624414 (= (BigIntAbs!0 (ite c!330145 (csize!15166 (left!17739 t!4319)) (csize!15167 (left!17739 t!4319)))) (ite (>= (ite c!330145 (csize!15166 (left!17739 t!4319)) (csize!15167 (left!17739 t!4319))) 0) (ite c!330145 (csize!15166 (left!17739 t!4319)) (csize!15167 (left!17739 t!4319))) (- (ite c!330145 (csize!15166 (left!17739 t!4319)) (csize!15167 (left!17739 t!4319))))))))

(assert (=> bm!124964 d!624414))

(declare-fun d!624418 () Bool)

(declare-fun lt!765131 () Int)

(assert (=> d!624418 (>= lt!765131 0)))

(declare-fun e!1287314 () Int)

(assert (=> d!624418 (= lt!765131 e!1287314)))

(declare-fun c!330272 () Bool)

(assert (=> d!624418 (= c!330272 (is-Nil!22276 lt!765080))))

(assert (=> d!624418 (= (size!17428 lt!765080) lt!765131)))

(declare-fun b!2038838 () Bool)

(assert (=> b!2038838 (= e!1287314 0)))

(declare-fun b!2038839 () Bool)

(assert (=> b!2038839 (= e!1287314 (+ 1 (size!17428 (t!191349 lt!765080))))))

(assert (= (and d!624418 c!330272) b!2038838))

(assert (= (and d!624418 (not c!330272)) b!2038839))

(declare-fun m!2482359 () Bool)

(assert (=> b!2038839 m!2482359))

(assert (=> d!624210 d!624418))

(declare-fun d!624422 () Bool)

(declare-fun lt!765132 () Int)

(assert (=> d!624422 (>= lt!765132 0)))

(declare-fun e!1287315 () Int)

(assert (=> d!624422 (= lt!765132 e!1287315)))

(declare-fun c!330273 () Bool)

(assert (=> d!624422 (= c!330273 (is-Nil!22276 (++!6048 lt!765049 lt!765047)))))

(assert (=> d!624422 (= (size!17428 (++!6048 lt!765049 lt!765047)) lt!765132)))

(declare-fun b!2038840 () Bool)

(assert (=> b!2038840 (= e!1287315 0)))

(declare-fun b!2038841 () Bool)

(assert (=> b!2038841 (= e!1287315 (+ 1 (size!17428 (t!191349 (++!6048 lt!765049 lt!765047)))))))

(assert (= (and d!624422 c!330273) b!2038840))

(assert (= (and d!624422 (not c!330273)) b!2038841))

(assert (=> b!2038841 m!2481951))

(assert (=> d!624210 d!624422))

(declare-fun d!624424 () Bool)

(declare-fun lt!765133 () Int)

(assert (=> d!624424 (>= lt!765133 0)))

(declare-fun e!1287316 () Int)

(assert (=> d!624424 (= lt!765133 e!1287316)))

(declare-fun c!330274 () Bool)

(assert (=> d!624424 (= c!330274 (is-Nil!22276 lt!765071))))

(assert (=> d!624424 (= (size!17428 lt!765071) lt!765133)))

(declare-fun b!2038842 () Bool)

(assert (=> b!2038842 (= e!1287316 0)))

(declare-fun b!2038843 () Bool)

(assert (=> b!2038843 (= e!1287316 (+ 1 (size!17428 (t!191349 lt!765071))))))

(assert (= (and d!624424 c!330274) b!2038842))

(assert (= (and d!624424 (not c!330274)) b!2038843))

(declare-fun m!2482361 () Bool)

(assert (=> b!2038843 m!2482361))

(assert (=> b!2038407 d!624424))

(declare-fun d!624426 () Bool)

(declare-fun lt!765134 () Int)

(assert (=> d!624426 (>= lt!765134 0)))

(declare-fun e!1287317 () Int)

(assert (=> d!624426 (= lt!765134 e!1287317)))

(declare-fun c!330275 () Bool)

(assert (=> d!624426 (= c!330275 (is-Nil!22276 (filter!473 lt!765049 p!1489)))))

(assert (=> d!624426 (= (size!17428 (filter!473 lt!765049 p!1489)) lt!765134)))

(declare-fun b!2038844 () Bool)

(assert (=> b!2038844 (= e!1287317 0)))

(declare-fun b!2038845 () Bool)

(assert (=> b!2038845 (= e!1287317 (+ 1 (size!17428 (t!191349 (filter!473 lt!765049 p!1489)))))))

(assert (= (and d!624426 c!330275) b!2038844))

(assert (= (and d!624426 (not c!330275)) b!2038845))

(assert (=> b!2038845 m!2482069))

(assert (=> b!2038407 d!624426))

(declare-fun d!624428 () Bool)

(declare-fun lt!765135 () Int)

(assert (=> d!624428 (>= lt!765135 0)))

(declare-fun e!1287318 () Int)

(assert (=> d!624428 (= lt!765135 e!1287318)))

(declare-fun c!330276 () Bool)

(assert (=> d!624428 (= c!330276 (is-Nil!22276 (filter!473 lt!765047 p!1489)))))

(assert (=> d!624428 (= (size!17428 (filter!473 lt!765047 p!1489)) lt!765135)))

(declare-fun b!2038846 () Bool)

(assert (=> b!2038846 (= e!1287318 0)))

(declare-fun b!2038847 () Bool)

(assert (=> b!2038847 (= e!1287318 (+ 1 (size!17428 (t!191349 (filter!473 lt!765047 p!1489)))))))

(assert (= (and d!624428 c!330276) b!2038846))

(assert (= (and d!624428 (not c!330276)) b!2038847))

(declare-fun m!2482363 () Bool)

(assert (=> b!2038847 m!2482363))

(assert (=> b!2038407 d!624428))

(declare-fun d!624430 () Bool)

(declare-fun lt!765136 () Int)

(assert (=> d!624430 (>= lt!765136 0)))

(declare-fun e!1287319 () Int)

(assert (=> d!624430 (= lt!765136 e!1287319)))

(declare-fun c!330277 () Bool)

(assert (=> d!624430 (= c!330277 (is-Nil!22276 lt!765081))))

(assert (=> d!624430 (= (size!17428 lt!765081) lt!765136)))

(declare-fun b!2038848 () Bool)

(assert (=> b!2038848 (= e!1287319 0)))

(declare-fun b!2038849 () Bool)

(assert (=> b!2038849 (= e!1287319 (+ 1 (size!17428 (t!191349 lt!765081))))))

(assert (= (and d!624430 c!330277) b!2038848))

(assert (= (and d!624430 (not c!330277)) b!2038849))

(declare-fun m!2482365 () Bool)

(assert (=> b!2038849 m!2482365))

(assert (=> d!624216 d!624430))

(assert (=> d!624216 d!624310))

(declare-fun d!624432 () Bool)

(declare-fun res!893895 () Bool)

(declare-fun e!1287320 () Bool)

(assert (=> d!624432 (=> (not res!893895) (not e!1287320))))

(assert (=> d!624432 (= res!893895 (<= (size!17428 (list!9136 (xs!10370 t!4319))) 512))))

(assert (=> d!624432 (= (inv!29585 t!4319) e!1287320)))

(declare-fun b!2038850 () Bool)

(declare-fun res!893896 () Bool)

(assert (=> b!2038850 (=> (not res!893896) (not e!1287320))))

(assert (=> b!2038850 (= res!893896 (= (csize!15167 t!4319) (size!17428 (list!9136 (xs!10370 t!4319)))))))

(declare-fun b!2038851 () Bool)

(assert (=> b!2038851 (= e!1287320 (and (> (csize!15167 t!4319) 0) (<= (csize!15167 t!4319) 512)))))

(assert (= (and d!624432 res!893895) b!2038850))

(assert (= (and b!2038850 res!893896) b!2038851))

(declare-fun m!2482367 () Bool)

(assert (=> d!624432 m!2482367))

(assert (=> d!624432 m!2482367))

(declare-fun m!2482369 () Bool)

(assert (=> d!624432 m!2482369))

(assert (=> b!2038850 m!2482367))

(assert (=> b!2038850 m!2482367))

(assert (=> b!2038850 m!2482369))

(assert (=> b!2038545 d!624432))

(declare-fun d!624434 () Bool)

(declare-fun lt!765139 () Bool)

(assert (=> d!624434 (= lt!765139 (isEmpty!13935 (list!9134 (right!18069 t!4319))))))

(assert (=> d!624434 (= lt!765139 (= (size!17430 (right!18069 t!4319)) 0))))

(assert (=> d!624434 (= (isEmpty!13932 (right!18069 t!4319)) lt!765139)))

(declare-fun bs!421454 () Bool)

(assert (= bs!421454 d!624434))

(assert (=> bs!421454 m!2481637))

(assert (=> bs!421454 m!2481637))

(declare-fun m!2482371 () Bool)

(assert (=> bs!421454 m!2482371))

(assert (=> bs!421454 m!2481971))

(assert (=> b!2038542 d!624434))

(declare-fun d!624436 () Bool)

(assert (=> d!624436 (= (list!9136 (xs!10370 (left!17739 t!4319))) (innerList!7528 (xs!10370 (left!17739 t!4319))))))

(assert (=> b!2038485 d!624436))

(declare-fun b!2038852 () Bool)

(declare-fun tp!605191 () Bool)

(declare-fun tp!605189 () Bool)

(declare-fun e!1287321 () Bool)

(assert (=> b!2038852 (= e!1287321 (and (inv!29580 (left!17739 (left!17739 (left!17739 t!4319)))) tp!605189 (inv!29580 (right!18069 (left!17739 (left!17739 t!4319)))) tp!605191))))

(declare-fun b!2038854 () Bool)

(declare-fun e!1287322 () Bool)

(declare-fun tp!605190 () Bool)

(assert (=> b!2038854 (= e!1287322 tp!605190)))

(declare-fun b!2038853 () Bool)

(assert (=> b!2038853 (= e!1287321 (and (inv!29581 (xs!10370 (left!17739 (left!17739 t!4319)))) e!1287322))))

(assert (=> b!2038568 (= tp!605168 (and (inv!29580 (left!17739 (left!17739 t!4319))) e!1287321))))

(assert (= (and b!2038568 (is-Node!7468 (left!17739 (left!17739 t!4319)))) b!2038852))

(assert (= b!2038853 b!2038854))

(assert (= (and b!2038568 (is-Leaf!10944 (left!17739 (left!17739 t!4319)))) b!2038853))

(declare-fun m!2482377 () Bool)

(assert (=> b!2038852 m!2482377))

(declare-fun m!2482379 () Bool)

(assert (=> b!2038852 m!2482379))

(declare-fun m!2482381 () Bool)

(assert (=> b!2038853 m!2482381))

(assert (=> b!2038568 m!2481921))

(declare-fun b!2038859 () Bool)

(declare-fun tp!605192 () Bool)

(declare-fun tp!605194 () Bool)

(declare-fun e!1287325 () Bool)

(assert (=> b!2038859 (= e!1287325 (and (inv!29580 (left!17739 (right!18069 (left!17739 t!4319)))) tp!605192 (inv!29580 (right!18069 (right!18069 (left!17739 t!4319)))) tp!605194))))

(declare-fun b!2038861 () Bool)

(declare-fun e!1287326 () Bool)

(declare-fun tp!605193 () Bool)

(assert (=> b!2038861 (= e!1287326 tp!605193)))

(declare-fun b!2038860 () Bool)

(assert (=> b!2038860 (= e!1287325 (and (inv!29581 (xs!10370 (right!18069 (left!17739 t!4319)))) e!1287326))))

(assert (=> b!2038568 (= tp!605170 (and (inv!29580 (right!18069 (left!17739 t!4319))) e!1287325))))

(assert (= (and b!2038568 (is-Node!7468 (right!18069 (left!17739 t!4319)))) b!2038859))

(assert (= b!2038860 b!2038861))

(assert (= (and b!2038568 (is-Leaf!10944 (right!18069 (left!17739 t!4319)))) b!2038860))

(declare-fun m!2482383 () Bool)

(assert (=> b!2038859 m!2482383))

(declare-fun m!2482385 () Bool)

(assert (=> b!2038859 m!2482385))

(declare-fun m!2482387 () Bool)

(assert (=> b!2038860 m!2482387))

(assert (=> b!2038568 m!2481923))

(declare-fun b!2038862 () Bool)

(declare-fun e!1287327 () Bool)

(declare-fun tp!605195 () Bool)

(assert (=> b!2038862 (= e!1287327 (and tp_is_empty!9277 tp!605195))))

(assert (=> b!2038581 (= tp!605178 e!1287327)))

(assert (= (and b!2038581 (is-Cons!22276 (innerList!7528 (xs!10370 (right!18069 t!4319))))) b!2038862))

(declare-fun b!2038863 () Bool)

(declare-fun e!1287328 () Bool)

(declare-fun tp!605196 () Bool)

(assert (=> b!2038863 (= e!1287328 (and tp_is_empty!9277 tp!605196))))

(assert (=> b!2038570 (= tp!605169 e!1287328)))

(assert (= (and b!2038570 (is-Cons!22276 (innerList!7528 (xs!10370 (left!17739 t!4319))))) b!2038863))

(declare-fun b!2038864 () Bool)

(declare-fun e!1287329 () Bool)

(declare-fun tp!605197 () Bool)

(assert (=> b!2038864 (= e!1287329 (and tp_is_empty!9277 tp!605197))))

(assert (=> b!2038586 (= tp!605182 e!1287329)))

(assert (= (and b!2038586 (is-Cons!22276 (t!191349 (innerList!7528 (xs!10370 t!4319))))) b!2038864))

(declare-fun b!2038867 () Bool)

(declare-fun tp!605200 () Bool)

(declare-fun tp!605198 () Bool)

(declare-fun e!1287331 () Bool)

(assert (=> b!2038867 (= e!1287331 (and (inv!29580 (left!17739 (left!17739 (right!18069 t!4319)))) tp!605198 (inv!29580 (right!18069 (left!17739 (right!18069 t!4319)))) tp!605200))))

(declare-fun b!2038871 () Bool)

(declare-fun e!1287333 () Bool)

(declare-fun tp!605199 () Bool)

(assert (=> b!2038871 (= e!1287333 tp!605199)))

(declare-fun b!2038869 () Bool)

(assert (=> b!2038869 (= e!1287331 (and (inv!29581 (xs!10370 (left!17739 (right!18069 t!4319)))) e!1287333))))

(assert (=> b!2038579 (= tp!605177 (and (inv!29580 (left!17739 (right!18069 t!4319))) e!1287331))))

(assert (= (and b!2038579 (is-Node!7468 (left!17739 (right!18069 t!4319)))) b!2038867))

(assert (= b!2038869 b!2038871))

(assert (= (and b!2038579 (is-Leaf!10944 (left!17739 (right!18069 t!4319)))) b!2038869))

(declare-fun m!2482399 () Bool)

(assert (=> b!2038867 m!2482399))

(declare-fun m!2482401 () Bool)

(assert (=> b!2038867 m!2482401))

(declare-fun m!2482403 () Bool)

(assert (=> b!2038869 m!2482403))

(assert (=> b!2038579 m!2481927))

(declare-fun e!1287334 () Bool)

(declare-fun tp!605203 () Bool)

(declare-fun b!2038872 () Bool)

(declare-fun tp!605201 () Bool)

(assert (=> b!2038872 (= e!1287334 (and (inv!29580 (left!17739 (right!18069 (right!18069 t!4319)))) tp!605201 (inv!29580 (right!18069 (right!18069 (right!18069 t!4319)))) tp!605203))))

(declare-fun b!2038874 () Bool)

(declare-fun e!1287335 () Bool)

(declare-fun tp!605202 () Bool)

(assert (=> b!2038874 (= e!1287335 tp!605202)))

(declare-fun b!2038873 () Bool)

(assert (=> b!2038873 (= e!1287334 (and (inv!29581 (xs!10370 (right!18069 (right!18069 t!4319)))) e!1287335))))

(assert (=> b!2038579 (= tp!605179 (and (inv!29580 (right!18069 (right!18069 t!4319))) e!1287334))))

(assert (= (and b!2038579 (is-Node!7468 (right!18069 (right!18069 t!4319)))) b!2038872))

(assert (= b!2038873 b!2038874))

(assert (= (and b!2038579 (is-Leaf!10944 (right!18069 (right!18069 t!4319)))) b!2038873))

(declare-fun m!2482417 () Bool)

(assert (=> b!2038872 m!2482417))

(declare-fun m!2482419 () Bool)

(assert (=> b!2038872 m!2482419))

(declare-fun m!2482423 () Bool)

(assert (=> b!2038873 m!2482423))

(assert (=> b!2038579 m!2481929))

(declare-fun b_lambda!68911 () Bool)

(assert (= b_lambda!68895 (or (and start!200878 b_free!56825) b_lambda!68911)))

(declare-fun b_lambda!68913 () Bool)

(assert (= b_lambda!68909 (or (and start!200878 b_free!56825) b_lambda!68913)))

(declare-fun b_lambda!68915 () Bool)

(assert (= b_lambda!68893 (or (and start!200878 b_free!56825) b_lambda!68915)))

(declare-fun b_lambda!68917 () Bool)

(assert (= b_lambda!68905 (or (and start!200878 b_free!56825) b_lambda!68917)))

(declare-fun b_lambda!68919 () Bool)

(assert (= b_lambda!68897 (or (and start!200878 b_free!56825) b_lambda!68919)))

(declare-fun b_lambda!68921 () Bool)

(assert (= b_lambda!68901 (or (and start!200878 b_free!56825) b_lambda!68921)))

(push 1)

(assert (not b!2038596))

(assert (not b!2038623))

(assert (not b!2038777))

(assert (not b!2038860))

(assert (not b!2038637))

(assert (not b!2038784))

(assert (not d!624362))

(assert (not bm!124978))

(assert (not b!2038850))

(assert (not b!2038843))

(assert (not b!2038612))

(assert (not b!2038828))

(assert (not b_lambda!68883))

(assert (not b!2038802))

(assert (not b!2038852))

(assert (not b!2038688))

(assert (not b!2038841))

(assert (not b!2038729))

(assert (not b!2038711))

(assert (not b_lambda!68881))

(assert (not b!2038869))

(assert (not b!2038724))

(assert (not d!624244))

(assert (not b_lambda!68921))

(assert (not b!2038694))

(assert (not b!2038833))

(assert (not d!624258))

(assert (not b!2038873))

(assert (not b!2038789))

(assert (not b!2038707))

(assert (not b!2038726))

(assert (not b_lambda!68913))

(assert (not b!2038771))

(assert (not b!2038568))

(assert (not b!2038601))

(assert (not d!624242))

(assert (not b!2038629))

(assert (not b!2038621))

(assert (not b!2038862))

(assert (not b_lambda!68917))

(assert (not b!2038706))

(assert (not b!2038785))

(assert (not b!2038700))

(assert (not b!2038633))

(assert (not b!2038692))

(assert (not b!2038859))

(assert (not bm!124977))

(assert (not d!624282))

(assert (not d!624434))

(assert (not b!2038872))

(assert (not b!2038874))

(assert (not bm!124979))

(assert (not b!2038671))

(assert (not b!2038579))

(assert (not d!624284))

(assert (not b!2038826))

(assert (not b!2038723))

(assert (not b_lambda!68915))

(assert (not b!2038814))

(assert (not b!2038791))

(assert (not d!624370))

(assert (not d!624292))

(assert (not b!2038863))

(assert (not b!2038705))

(assert (not b_next!57529))

(assert (not d!624268))

(assert (not b!2038708))

(assert (not b!2038703))

(assert b_and!162705)

(assert (not b!2038615))

(assert (not b!2038867))

(assert (not b!2038778))

(assert (not bm!124981))

(assert (not b!2038849))

(assert (not b!2038761))

(assert (not b!2038839))

(assert (not b!2038610))

(assert (not b!2038854))

(assert (not b!2038764))

(assert (not d!624240))

(assert (not d!624260))

(assert (not b_lambda!68919))

(assert (not b!2038631))

(assert (not b!2038772))

(assert (not b!2038618))

(assert (not b!2038831))

(assert (not b!2038690))

(assert (not b!2038619))

(assert (not d!624432))

(assert (not b_lambda!68885))

(assert (not b!2038622))

(assert (not bm!124976))

(assert (not b!2038801))

(assert (not b!2038756))

(assert (not d!624252))

(assert (not b!2038702))

(assert (not b!2038674))

(assert (not b!2038809))

(assert (not b!2038593))

(assert (not bm!124980))

(assert (not b!2038719))

(assert (not b!2038847))

(assert (not b!2038704))

(assert (not b!2038620))

(assert (not b!2038864))

(assert (not b!2038675))

(assert (not b!2038787))

(assert (not b!2038651))

(assert (not b!2038600))

(assert (not b!2038710))

(assert (not b!2038634))

(assert tp_is_empty!9277)

(assert (not b!2038845))

(assert (not b!2038731))

(assert (not b!2038793))

(assert (not b!2038754))

(assert (not d!624246))

(assert (not d!624276))

(assert (not d!624384))

(assert (not b!2038853))

(assert (not b!2038816))

(assert (not d!624316))

(assert (not b!2038871))

(assert (not b!2038736))

(assert (not b!2038780))

(assert (not b!2038821))

(assert (not b!2038808))

(assert (not b!2038861))

(assert (not b_lambda!68911))

(assert (not d!624344))

(assert (not b!2038734))

(assert (not d!624256))

(assert (not b!2038720))

(check-sat)

(pop 1)

(push 1)

(assert b_and!162705)

(assert (not b_next!57529))

(check-sat)

(pop 1)

