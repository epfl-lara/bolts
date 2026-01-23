; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749266 () Bool)

(assert start!749266)

(declare-fun b!7938735 () Bool)

(declare-fun e!4684323 () Bool)

(declare-fun e!4684325 () Bool)

(assert (=> b!7938735 (= e!4684323 e!4684325)))

(declare-fun res!3149487 () Bool)

(assert (=> b!7938735 (=> (not res!3149487) (not e!4684325))))

(declare-fun lt!2695674 () Int)

(assert (=> b!7938735 (= res!3149487 (and (<= (- 1) lt!2695674) (<= lt!2695674 1)))))

(declare-datatypes ((T!146024 0))(
  ( (T!146025 (val!32092 Int)) )
))
(declare-datatypes ((List!74604 0))(
  ( (Nil!74480) (Cons!74480 (h!80928 T!146024) (t!390335 List!74604)) )
))
(declare-datatypes ((IArray!31925 0))(
  ( (IArray!31926 (innerList!16020 List!74604)) )
))
(declare-datatypes ((Conc!15932 0))(
  ( (Node!15932 (left!56919 Conc!15932) (right!57249 Conc!15932) (csize!32094 Int) (cheight!16143 Int)) (Leaf!30280 (xs!19330 IArray!31925) (csize!32095 Int)) (Empty!15932) )
))
(declare-fun t!3690 () Conc!15932)

(declare-fun height!2239 (Conc!15932) Int)

(assert (=> b!7938735 (= lt!2695674 (- (height!2239 (left!56919 t!3690)) (height!2239 (right!57249 t!3690))))))

(declare-fun b!7938737 () Bool)

(declare-fun ConcPrimitiveSize!50 (Conc!15932) Int)

(assert (=> b!7938737 (= e!4684325 (>= (ConcPrimitiveSize!50 (right!57249 t!3690)) (ConcPrimitiveSize!50 t!3690)))))

(declare-fun b!7938738 () Bool)

(declare-fun res!3149486 () Bool)

(assert (=> b!7938738 (=> (not res!3149486) (not e!4684325))))

(declare-fun isBalanced!4546 (Conc!15932) Bool)

(assert (=> b!7938738 (= res!3149486 (isBalanced!4546 (left!56919 t!3690)))))

(declare-fun b!7938739 () Bool)

(declare-fun tp!2360300 () Bool)

(declare-fun e!4684324 () Bool)

(declare-fun tp!2360301 () Bool)

(declare-fun inv!95883 (Conc!15932) Bool)

(assert (=> b!7938739 (= e!4684324 (and (inv!95883 (left!56919 t!3690)) tp!2360300 (inv!95883 (right!57249 t!3690)) tp!2360301))))

(declare-fun b!7938740 () Bool)

(declare-fun e!4684326 () Bool)

(declare-fun inv!95884 (IArray!31925) Bool)

(assert (=> b!7938740 (= e!4684324 (and (inv!95884 (xs!19330 t!3690)) e!4684326))))

(declare-fun b!7938736 () Bool)

(declare-fun tp!2360302 () Bool)

(assert (=> b!7938736 (= e!4684326 tp!2360302)))

(declare-fun res!3149488 () Bool)

(assert (=> start!749266 (=> (not res!3149488) (not e!4684323))))

(get-info :version)

(assert (=> start!749266 (= res!3149488 ((_ is Node!15932) t!3690))))

(assert (=> start!749266 e!4684323))

(assert (=> start!749266 (and (inv!95883 t!3690) e!4684324)))

(assert (= (and start!749266 res!3149488) b!7938735))

(assert (= (and b!7938735 res!3149487) b!7938738))

(assert (= (and b!7938738 res!3149486) b!7938737))

(assert (= (and start!749266 ((_ is Node!15932) t!3690)) b!7938739))

(assert (= b!7938740 b!7938736))

(assert (= (and start!749266 ((_ is Leaf!30280) t!3690)) b!7938740))

(declare-fun m!8327934 () Bool)

(assert (=> start!749266 m!8327934))

(declare-fun m!8327936 () Bool)

(assert (=> b!7938739 m!8327936))

(declare-fun m!8327938 () Bool)

(assert (=> b!7938739 m!8327938))

(declare-fun m!8327940 () Bool)

(assert (=> b!7938740 m!8327940))

(declare-fun m!8327942 () Bool)

(assert (=> b!7938735 m!8327942))

(declare-fun m!8327944 () Bool)

(assert (=> b!7938735 m!8327944))

(declare-fun m!8327946 () Bool)

(assert (=> b!7938738 m!8327946))

(declare-fun m!8327948 () Bool)

(assert (=> b!7938737 m!8327948))

(declare-fun m!8327950 () Bool)

(assert (=> b!7938737 m!8327950))

(check-sat (not b!7938738) (not start!749266) (not b!7938737) (not b!7938736) (not b!7938740) (not b!7938735) (not b!7938739))
(check-sat)
(get-model)

(declare-fun d!2374434 () Bool)

(declare-fun size!43309 (List!74604) Int)

(assert (=> d!2374434 (= (inv!95884 (xs!19330 t!3690)) (<= (size!43309 (innerList!16020 (xs!19330 t!3690))) 2147483647))))

(declare-fun bs!1969323 () Bool)

(assert (= bs!1969323 d!2374434))

(declare-fun m!8327952 () Bool)

(assert (=> bs!1969323 m!8327952))

(assert (=> b!7938740 d!2374434))

(declare-fun d!2374438 () Bool)

(assert (=> d!2374438 (= (height!2239 (left!56919 t!3690)) (ite ((_ is Empty!15932) (left!56919 t!3690)) 0 (ite ((_ is Leaf!30280) (left!56919 t!3690)) 1 (cheight!16143 (left!56919 t!3690)))))))

(assert (=> b!7938735 d!2374438))

(declare-fun d!2374440 () Bool)

(assert (=> d!2374440 (= (height!2239 (right!57249 t!3690)) (ite ((_ is Empty!15932) (right!57249 t!3690)) 0 (ite ((_ is Leaf!30280) (right!57249 t!3690)) 1 (cheight!16143 (right!57249 t!3690)))))))

(assert (=> b!7938735 d!2374440))

(declare-fun d!2374442 () Bool)

(declare-fun c!1458523 () Bool)

(assert (=> d!2374442 (= c!1458523 ((_ is Node!15932) (left!56919 t!3690)))))

(declare-fun e!4684335 () Bool)

(assert (=> d!2374442 (= (inv!95883 (left!56919 t!3690)) e!4684335)))

(declare-fun b!7938755 () Bool)

(declare-fun inv!95885 (Conc!15932) Bool)

(assert (=> b!7938755 (= e!4684335 (inv!95885 (left!56919 t!3690)))))

(declare-fun b!7938756 () Bool)

(declare-fun e!4684336 () Bool)

(assert (=> b!7938756 (= e!4684335 e!4684336)))

(declare-fun res!3149491 () Bool)

(assert (=> b!7938756 (= res!3149491 (not ((_ is Leaf!30280) (left!56919 t!3690))))))

(assert (=> b!7938756 (=> res!3149491 e!4684336)))

(declare-fun b!7938757 () Bool)

(declare-fun inv!95886 (Conc!15932) Bool)

(assert (=> b!7938757 (= e!4684336 (inv!95886 (left!56919 t!3690)))))

(assert (= (and d!2374442 c!1458523) b!7938755))

(assert (= (and d!2374442 (not c!1458523)) b!7938756))

(assert (= (and b!7938756 (not res!3149491)) b!7938757))

(declare-fun m!8327954 () Bool)

(assert (=> b!7938755 m!8327954))

(declare-fun m!8327956 () Bool)

(assert (=> b!7938757 m!8327956))

(assert (=> b!7938739 d!2374442))

(declare-fun d!2374448 () Bool)

(declare-fun c!1458524 () Bool)

(assert (=> d!2374448 (= c!1458524 ((_ is Node!15932) (right!57249 t!3690)))))

(declare-fun e!4684337 () Bool)

(assert (=> d!2374448 (= (inv!95883 (right!57249 t!3690)) e!4684337)))

(declare-fun b!7938758 () Bool)

(assert (=> b!7938758 (= e!4684337 (inv!95885 (right!57249 t!3690)))))

(declare-fun b!7938759 () Bool)

(declare-fun e!4684338 () Bool)

(assert (=> b!7938759 (= e!4684337 e!4684338)))

(declare-fun res!3149492 () Bool)

(assert (=> b!7938759 (= res!3149492 (not ((_ is Leaf!30280) (right!57249 t!3690))))))

(assert (=> b!7938759 (=> res!3149492 e!4684338)))

(declare-fun b!7938760 () Bool)

(assert (=> b!7938760 (= e!4684338 (inv!95886 (right!57249 t!3690)))))

(assert (= (and d!2374448 c!1458524) b!7938758))

(assert (= (and d!2374448 (not c!1458524)) b!7938759))

(assert (= (and b!7938759 (not res!3149492)) b!7938760))

(declare-fun m!8327958 () Bool)

(assert (=> b!7938758 m!8327958))

(declare-fun m!8327960 () Bool)

(assert (=> b!7938760 m!8327960))

(assert (=> b!7938739 d!2374448))

(declare-fun d!2374450 () Bool)

(declare-fun lt!2695681 () Int)

(assert (=> d!2374450 (>= lt!2695681 0)))

(declare-fun e!4684348 () Int)

(assert (=> d!2374450 (= lt!2695681 e!4684348)))

(declare-fun c!1458533 () Bool)

(assert (=> d!2374450 (= c!1458533 ((_ is Node!15932) (right!57249 t!3690)))))

(assert (=> d!2374450 (= (ConcPrimitiveSize!50 (right!57249 t!3690)) lt!2695681)))

(declare-fun b!7938777 () Bool)

(declare-fun call!735699 () Int)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> b!7938777 (= e!4684348 (+ 1 (ConcPrimitiveSize!50 (left!56919 (right!57249 t!3690))) (ConcPrimitiveSize!50 (right!57249 (right!57249 t!3690))) call!735699 (BigIntAbs!0 (cheight!16143 (right!57249 t!3690)))))))

(declare-fun b!7938778 () Bool)

(declare-fun e!4684347 () Int)

(assert (=> b!7938778 (= e!4684348 e!4684347)))

(declare-fun c!1458534 () Bool)

(assert (=> b!7938778 (= c!1458534 ((_ is Leaf!30280) (right!57249 t!3690)))))

(declare-fun b!7938779 () Bool)

(assert (=> b!7938779 (= e!4684347 0)))

(declare-fun bm!735694 () Bool)

(assert (=> bm!735694 (= call!735699 (BigIntAbs!0 (ite c!1458533 (csize!32094 (right!57249 t!3690)) (csize!32095 (right!57249 t!3690)))))))

(declare-fun b!7938780 () Bool)

(declare-fun IArrayPrimitiveSize!49 (IArray!31925) Int)

(assert (=> b!7938780 (= e!4684347 (+ 1 (IArrayPrimitiveSize!49 (xs!19330 (right!57249 t!3690))) call!735699))))

(assert (= (and d!2374450 c!1458533) b!7938777))

(assert (= (and d!2374450 (not c!1458533)) b!7938778))

(assert (= (and b!7938778 c!1458534) b!7938780))

(assert (= (and b!7938778 (not c!1458534)) b!7938779))

(assert (= (or b!7938777 b!7938780) bm!735694))

(declare-fun m!8327982 () Bool)

(assert (=> b!7938777 m!8327982))

(declare-fun m!8327984 () Bool)

(assert (=> b!7938777 m!8327984))

(declare-fun m!8327986 () Bool)

(assert (=> b!7938777 m!8327986))

(declare-fun m!8327988 () Bool)

(assert (=> bm!735694 m!8327988))

(declare-fun m!8327990 () Bool)

(assert (=> b!7938780 m!8327990))

(assert (=> b!7938737 d!2374450))

(declare-fun d!2374458 () Bool)

(declare-fun lt!2695682 () Int)

(assert (=> d!2374458 (>= lt!2695682 0)))

(declare-fun e!4684350 () Int)

(assert (=> d!2374458 (= lt!2695682 e!4684350)))

(declare-fun c!1458535 () Bool)

(assert (=> d!2374458 (= c!1458535 ((_ is Node!15932) t!3690))))

(assert (=> d!2374458 (= (ConcPrimitiveSize!50 t!3690) lt!2695682)))

(declare-fun b!7938781 () Bool)

(declare-fun call!735700 () Int)

(assert (=> b!7938781 (= e!4684350 (+ 1 (ConcPrimitiveSize!50 (left!56919 t!3690)) (ConcPrimitiveSize!50 (right!57249 t!3690)) call!735700 (BigIntAbs!0 (cheight!16143 t!3690))))))

(declare-fun b!7938782 () Bool)

(declare-fun e!4684349 () Int)

(assert (=> b!7938782 (= e!4684350 e!4684349)))

(declare-fun c!1458536 () Bool)

(assert (=> b!7938782 (= c!1458536 ((_ is Leaf!30280) t!3690))))

(declare-fun b!7938783 () Bool)

(assert (=> b!7938783 (= e!4684349 0)))

(declare-fun bm!735695 () Bool)

(assert (=> bm!735695 (= call!735700 (BigIntAbs!0 (ite c!1458535 (csize!32094 t!3690) (csize!32095 t!3690))))))

(declare-fun b!7938784 () Bool)

(assert (=> b!7938784 (= e!4684349 (+ 1 (IArrayPrimitiveSize!49 (xs!19330 t!3690)) call!735700))))

(assert (= (and d!2374458 c!1458535) b!7938781))

(assert (= (and d!2374458 (not c!1458535)) b!7938782))

(assert (= (and b!7938782 c!1458536) b!7938784))

(assert (= (and b!7938782 (not c!1458536)) b!7938783))

(assert (= (or b!7938781 b!7938784) bm!735695))

(declare-fun m!8327992 () Bool)

(assert (=> b!7938781 m!8327992))

(assert (=> b!7938781 m!8327948))

(declare-fun m!8327994 () Bool)

(assert (=> b!7938781 m!8327994))

(declare-fun m!8327996 () Bool)

(assert (=> bm!735695 m!8327996))

(declare-fun m!8327998 () Bool)

(assert (=> b!7938784 m!8327998))

(assert (=> b!7938737 d!2374458))

(declare-fun d!2374460 () Bool)

(declare-fun c!1458537 () Bool)

(assert (=> d!2374460 (= c!1458537 ((_ is Node!15932) t!3690))))

(declare-fun e!4684351 () Bool)

(assert (=> d!2374460 (= (inv!95883 t!3690) e!4684351)))

(declare-fun b!7938785 () Bool)

(assert (=> b!7938785 (= e!4684351 (inv!95885 t!3690))))

(declare-fun b!7938786 () Bool)

(declare-fun e!4684352 () Bool)

(assert (=> b!7938786 (= e!4684351 e!4684352)))

(declare-fun res!3149493 () Bool)

(assert (=> b!7938786 (= res!3149493 (not ((_ is Leaf!30280) t!3690)))))

(assert (=> b!7938786 (=> res!3149493 e!4684352)))

(declare-fun b!7938787 () Bool)

(assert (=> b!7938787 (= e!4684352 (inv!95886 t!3690))))

(assert (= (and d!2374460 c!1458537) b!7938785))

(assert (= (and d!2374460 (not c!1458537)) b!7938786))

(assert (= (and b!7938786 (not res!3149493)) b!7938787))

(declare-fun m!8328000 () Bool)

(assert (=> b!7938785 m!8328000))

(declare-fun m!8328002 () Bool)

(assert (=> b!7938787 m!8328002))

(assert (=> start!749266 d!2374460))

(declare-fun b!7938818 () Bool)

(declare-fun res!3149526 () Bool)

(declare-fun e!4684364 () Bool)

(assert (=> b!7938818 (=> (not res!3149526) (not e!4684364))))

(declare-fun isEmpty!42807 (Conc!15932) Bool)

(assert (=> b!7938818 (= res!3149526 (not (isEmpty!42807 (left!56919 (left!56919 t!3690)))))))

(declare-fun b!7938819 () Bool)

(declare-fun res!3149528 () Bool)

(assert (=> b!7938819 (=> (not res!3149528) (not e!4684364))))

(assert (=> b!7938819 (= res!3149528 (<= (- (height!2239 (left!56919 (left!56919 t!3690))) (height!2239 (right!57249 (left!56919 t!3690)))) 1))))

(declare-fun d!2374462 () Bool)

(declare-fun res!3149529 () Bool)

(declare-fun e!4684363 () Bool)

(assert (=> d!2374462 (=> res!3149529 e!4684363)))

(assert (=> d!2374462 (= res!3149529 (not ((_ is Node!15932) (left!56919 t!3690))))))

(assert (=> d!2374462 (= (isBalanced!4546 (left!56919 t!3690)) e!4684363)))

(declare-fun b!7938820 () Bool)

(assert (=> b!7938820 (= e!4684363 e!4684364)))

(declare-fun res!3149527 () Bool)

(assert (=> b!7938820 (=> (not res!3149527) (not e!4684364))))

(assert (=> b!7938820 (= res!3149527 (<= (- 1) (- (height!2239 (left!56919 (left!56919 t!3690))) (height!2239 (right!57249 (left!56919 t!3690))))))))

(declare-fun b!7938821 () Bool)

(assert (=> b!7938821 (= e!4684364 (not (isEmpty!42807 (right!57249 (left!56919 t!3690)))))))

(declare-fun b!7938822 () Bool)

(declare-fun res!3149525 () Bool)

(assert (=> b!7938822 (=> (not res!3149525) (not e!4684364))))

(assert (=> b!7938822 (= res!3149525 (isBalanced!4546 (right!57249 (left!56919 t!3690))))))

(declare-fun b!7938823 () Bool)

(declare-fun res!3149524 () Bool)

(assert (=> b!7938823 (=> (not res!3149524) (not e!4684364))))

(assert (=> b!7938823 (= res!3149524 (isBalanced!4546 (left!56919 (left!56919 t!3690))))))

(assert (= (and d!2374462 (not res!3149529)) b!7938820))

(assert (= (and b!7938820 res!3149527) b!7938819))

(assert (= (and b!7938819 res!3149528) b!7938823))

(assert (= (and b!7938823 res!3149524) b!7938822))

(assert (= (and b!7938822 res!3149525) b!7938818))

(assert (= (and b!7938818 res!3149526) b!7938821))

(declare-fun m!8328016 () Bool)

(assert (=> b!7938821 m!8328016))

(declare-fun m!8328018 () Bool)

(assert (=> b!7938819 m!8328018))

(declare-fun m!8328020 () Bool)

(assert (=> b!7938819 m!8328020))

(assert (=> b!7938820 m!8328018))

(assert (=> b!7938820 m!8328020))

(declare-fun m!8328022 () Bool)

(assert (=> b!7938822 m!8328022))

(declare-fun m!8328024 () Bool)

(assert (=> b!7938818 m!8328024))

(declare-fun m!8328026 () Bool)

(assert (=> b!7938823 m!8328026))

(assert (=> b!7938738 d!2374462))

(declare-fun tp!2360311 () Bool)

(declare-fun e!4684379 () Bool)

(declare-fun tp!2360309 () Bool)

(declare-fun b!7938849 () Bool)

(assert (=> b!7938849 (= e!4684379 (and (inv!95883 (left!56919 (left!56919 t!3690))) tp!2360311 (inv!95883 (right!57249 (left!56919 t!3690))) tp!2360309))))

(declare-fun b!7938851 () Bool)

(declare-fun e!4684380 () Bool)

(declare-fun tp!2360310 () Bool)

(assert (=> b!7938851 (= e!4684380 tp!2360310)))

(declare-fun b!7938850 () Bool)

(assert (=> b!7938850 (= e!4684379 (and (inv!95884 (xs!19330 (left!56919 t!3690))) e!4684380))))

(assert (=> b!7938739 (= tp!2360300 (and (inv!95883 (left!56919 t!3690)) e!4684379))))

(assert (= (and b!7938739 ((_ is Node!15932) (left!56919 t!3690))) b!7938849))

(assert (= b!7938850 b!7938851))

(assert (= (and b!7938739 ((_ is Leaf!30280) (left!56919 t!3690))) b!7938850))

(declare-fun m!8328040 () Bool)

(assert (=> b!7938849 m!8328040))

(declare-fun m!8328042 () Bool)

(assert (=> b!7938849 m!8328042))

(declare-fun m!8328044 () Bool)

(assert (=> b!7938850 m!8328044))

(assert (=> b!7938739 m!8327936))

(declare-fun b!7938854 () Bool)

(declare-fun tp!2360316 () Bool)

(declare-fun tp!2360314 () Bool)

(declare-fun e!4684383 () Bool)

(assert (=> b!7938854 (= e!4684383 (and (inv!95883 (left!56919 (right!57249 t!3690))) tp!2360316 (inv!95883 (right!57249 (right!57249 t!3690))) tp!2360314))))

(declare-fun b!7938856 () Bool)

(declare-fun e!4684384 () Bool)

(declare-fun tp!2360315 () Bool)

(assert (=> b!7938856 (= e!4684384 tp!2360315)))

(declare-fun b!7938855 () Bool)

(assert (=> b!7938855 (= e!4684383 (and (inv!95884 (xs!19330 (right!57249 t!3690))) e!4684384))))

(assert (=> b!7938739 (= tp!2360301 (and (inv!95883 (right!57249 t!3690)) e!4684383))))

(assert (= (and b!7938739 ((_ is Node!15932) (right!57249 t!3690))) b!7938854))

(assert (= b!7938855 b!7938856))

(assert (= (and b!7938739 ((_ is Leaf!30280) (right!57249 t!3690))) b!7938855))

(declare-fun m!8328046 () Bool)

(assert (=> b!7938854 m!8328046))

(declare-fun m!8328048 () Bool)

(assert (=> b!7938854 m!8328048))

(declare-fun m!8328050 () Bool)

(assert (=> b!7938855 m!8328050))

(assert (=> b!7938739 m!8327938))

(declare-fun b!7938870 () Bool)

(declare-fun e!4684392 () Bool)

(declare-fun tp_is_empty!53293 () Bool)

(declare-fun tp!2360326 () Bool)

(assert (=> b!7938870 (= e!4684392 (and tp_is_empty!53293 tp!2360326))))

(assert (=> b!7938736 (= tp!2360302 e!4684392)))

(assert (= (and b!7938736 ((_ is Cons!74480) (innerList!16020 (xs!19330 t!3690)))) b!7938870))

(check-sat (not b!7938787) (not b!7938760) (not b!7938777) (not b!7938820) (not b!7938755) (not b!7938850) (not b!7938781) (not b!7938856) (not bm!735695) (not b!7938780) (not b!7938849) (not b!7938758) (not b!7938819) (not b!7938821) (not b!7938854) (not b!7938785) (not bm!735694) (not b!7938855) (not b!7938851) (not b!7938757) tp_is_empty!53293 (not b!7938870) (not b!7938818) (not b!7938823) (not b!7938739) (not b!7938784) (not b!7938822) (not d!2374434))
(check-sat)
(get-model)

(declare-fun d!2374470 () Bool)

(declare-fun res!3149539 () Bool)

(declare-fun e!4684399 () Bool)

(assert (=> d!2374470 (=> (not res!3149539) (not e!4684399))))

(declare-fun list!19462 (IArray!31925) List!74604)

(assert (=> d!2374470 (= res!3149539 (<= (size!43309 (list!19462 (xs!19330 (right!57249 t!3690)))) 512))))

(assert (=> d!2374470 (= (inv!95886 (right!57249 t!3690)) e!4684399)))

(declare-fun b!7938881 () Bool)

(declare-fun res!3149540 () Bool)

(assert (=> b!7938881 (=> (not res!3149540) (not e!4684399))))

(assert (=> b!7938881 (= res!3149540 (= (csize!32095 (right!57249 t!3690)) (size!43309 (list!19462 (xs!19330 (right!57249 t!3690))))))))

(declare-fun b!7938882 () Bool)

(assert (=> b!7938882 (= e!4684399 (and (> (csize!32095 (right!57249 t!3690)) 0) (<= (csize!32095 (right!57249 t!3690)) 512)))))

(assert (= (and d!2374470 res!3149539) b!7938881))

(assert (= (and b!7938881 res!3149540) b!7938882))

(declare-fun m!8328064 () Bool)

(assert (=> d!2374470 m!8328064))

(assert (=> d!2374470 m!8328064))

(declare-fun m!8328066 () Bool)

(assert (=> d!2374470 m!8328066))

(assert (=> b!7938881 m!8328064))

(assert (=> b!7938881 m!8328064))

(assert (=> b!7938881 m!8328066))

(assert (=> b!7938760 d!2374470))

(declare-fun d!2374472 () Bool)

(declare-fun res!3149547 () Bool)

(declare-fun e!4684402 () Bool)

(assert (=> d!2374472 (=> (not res!3149547) (not e!4684402))))

(declare-fun size!43311 (Conc!15932) Int)

(assert (=> d!2374472 (= res!3149547 (= (csize!32094 t!3690) (+ (size!43311 (left!56919 t!3690)) (size!43311 (right!57249 t!3690)))))))

(assert (=> d!2374472 (= (inv!95885 t!3690) e!4684402)))

(declare-fun b!7938889 () Bool)

(declare-fun res!3149548 () Bool)

(assert (=> b!7938889 (=> (not res!3149548) (not e!4684402))))

(assert (=> b!7938889 (= res!3149548 (and (not (= (left!56919 t!3690) Empty!15932)) (not (= (right!57249 t!3690) Empty!15932))))))

(declare-fun b!7938890 () Bool)

(declare-fun res!3149549 () Bool)

(assert (=> b!7938890 (=> (not res!3149549) (not e!4684402))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!7938890 (= res!3149549 (= (cheight!16143 t!3690) (+ (max!0 (height!2239 (left!56919 t!3690)) (height!2239 (right!57249 t!3690))) 1)))))

(declare-fun b!7938891 () Bool)

(assert (=> b!7938891 (= e!4684402 (<= 0 (cheight!16143 t!3690)))))

(assert (= (and d!2374472 res!3149547) b!7938889))

(assert (= (and b!7938889 res!3149548) b!7938890))

(assert (= (and b!7938890 res!3149549) b!7938891))

(declare-fun m!8328068 () Bool)

(assert (=> d!2374472 m!8328068))

(declare-fun m!8328070 () Bool)

(assert (=> d!2374472 m!8328070))

(assert (=> b!7938890 m!8327942))

(assert (=> b!7938890 m!8327944))

(assert (=> b!7938890 m!8327942))

(assert (=> b!7938890 m!8327944))

(declare-fun m!8328072 () Bool)

(assert (=> b!7938890 m!8328072))

(assert (=> b!7938785 d!2374472))

(declare-fun d!2374474 () Bool)

(assert (=> d!2374474 (= (inv!95884 (xs!19330 (left!56919 t!3690))) (<= (size!43309 (innerList!16020 (xs!19330 (left!56919 t!3690)))) 2147483647))))

(declare-fun bs!1969325 () Bool)

(assert (= bs!1969325 d!2374474))

(declare-fun m!8328074 () Bool)

(assert (=> bs!1969325 m!8328074))

(assert (=> b!7938850 d!2374474))

(declare-fun d!2374476 () Bool)

(declare-fun lt!2695683 () Int)

(assert (=> d!2374476 (>= lt!2695683 0)))

(declare-fun e!4684404 () Int)

(assert (=> d!2374476 (= lt!2695683 e!4684404)))

(declare-fun c!1458543 () Bool)

(assert (=> d!2374476 (= c!1458543 ((_ is Node!15932) (left!56919 (right!57249 t!3690))))))

(assert (=> d!2374476 (= (ConcPrimitiveSize!50 (left!56919 (right!57249 t!3690))) lt!2695683)))

(declare-fun b!7938892 () Bool)

(declare-fun call!735701 () Int)

(assert (=> b!7938892 (= e!4684404 (+ 1 (ConcPrimitiveSize!50 (left!56919 (left!56919 (right!57249 t!3690)))) (ConcPrimitiveSize!50 (right!57249 (left!56919 (right!57249 t!3690)))) call!735701 (BigIntAbs!0 (cheight!16143 (left!56919 (right!57249 t!3690))))))))

(declare-fun b!7938893 () Bool)

(declare-fun e!4684403 () Int)

(assert (=> b!7938893 (= e!4684404 e!4684403)))

(declare-fun c!1458544 () Bool)

(assert (=> b!7938893 (= c!1458544 ((_ is Leaf!30280) (left!56919 (right!57249 t!3690))))))

(declare-fun b!7938894 () Bool)

(assert (=> b!7938894 (= e!4684403 0)))

(declare-fun bm!735696 () Bool)

(assert (=> bm!735696 (= call!735701 (BigIntAbs!0 (ite c!1458543 (csize!32094 (left!56919 (right!57249 t!3690))) (csize!32095 (left!56919 (right!57249 t!3690))))))))

(declare-fun b!7938895 () Bool)

(assert (=> b!7938895 (= e!4684403 (+ 1 (IArrayPrimitiveSize!49 (xs!19330 (left!56919 (right!57249 t!3690)))) call!735701))))

(assert (= (and d!2374476 c!1458543) b!7938892))

(assert (= (and d!2374476 (not c!1458543)) b!7938893))

(assert (= (and b!7938893 c!1458544) b!7938895))

(assert (= (and b!7938893 (not c!1458544)) b!7938894))

(assert (= (or b!7938892 b!7938895) bm!735696))

(declare-fun m!8328076 () Bool)

(assert (=> b!7938892 m!8328076))

(declare-fun m!8328078 () Bool)

(assert (=> b!7938892 m!8328078))

(declare-fun m!8328080 () Bool)

(assert (=> b!7938892 m!8328080))

(declare-fun m!8328082 () Bool)

(assert (=> bm!735696 m!8328082))

(declare-fun m!8328084 () Bool)

(assert (=> b!7938895 m!8328084))

(assert (=> b!7938777 d!2374476))

(declare-fun d!2374478 () Bool)

(declare-fun lt!2695684 () Int)

(assert (=> d!2374478 (>= lt!2695684 0)))

(declare-fun e!4684406 () Int)

(assert (=> d!2374478 (= lt!2695684 e!4684406)))

(declare-fun c!1458545 () Bool)

(assert (=> d!2374478 (= c!1458545 ((_ is Node!15932) (right!57249 (right!57249 t!3690))))))

(assert (=> d!2374478 (= (ConcPrimitiveSize!50 (right!57249 (right!57249 t!3690))) lt!2695684)))

(declare-fun b!7938896 () Bool)

(declare-fun call!735702 () Int)

(assert (=> b!7938896 (= e!4684406 (+ 1 (ConcPrimitiveSize!50 (left!56919 (right!57249 (right!57249 t!3690)))) (ConcPrimitiveSize!50 (right!57249 (right!57249 (right!57249 t!3690)))) call!735702 (BigIntAbs!0 (cheight!16143 (right!57249 (right!57249 t!3690))))))))

(declare-fun b!7938897 () Bool)

(declare-fun e!4684405 () Int)

(assert (=> b!7938897 (= e!4684406 e!4684405)))

(declare-fun c!1458546 () Bool)

(assert (=> b!7938897 (= c!1458546 ((_ is Leaf!30280) (right!57249 (right!57249 t!3690))))))

(declare-fun b!7938898 () Bool)

(assert (=> b!7938898 (= e!4684405 0)))

(declare-fun bm!735697 () Bool)

(assert (=> bm!735697 (= call!735702 (BigIntAbs!0 (ite c!1458545 (csize!32094 (right!57249 (right!57249 t!3690))) (csize!32095 (right!57249 (right!57249 t!3690))))))))

(declare-fun b!7938899 () Bool)

(assert (=> b!7938899 (= e!4684405 (+ 1 (IArrayPrimitiveSize!49 (xs!19330 (right!57249 (right!57249 t!3690)))) call!735702))))

(assert (= (and d!2374478 c!1458545) b!7938896))

(assert (= (and d!2374478 (not c!1458545)) b!7938897))

(assert (= (and b!7938897 c!1458546) b!7938899))

(assert (= (and b!7938897 (not c!1458546)) b!7938898))

(assert (= (or b!7938896 b!7938899) bm!735697))

(declare-fun m!8328086 () Bool)

(assert (=> b!7938896 m!8328086))

(declare-fun m!8328088 () Bool)

(assert (=> b!7938896 m!8328088))

(declare-fun m!8328090 () Bool)

(assert (=> b!7938896 m!8328090))

(declare-fun m!8328092 () Bool)

(assert (=> bm!735697 m!8328092))

(declare-fun m!8328094 () Bool)

(assert (=> b!7938899 m!8328094))

(assert (=> b!7938777 d!2374478))

(declare-fun d!2374480 () Bool)

(assert (=> d!2374480 (= (BigIntAbs!0 (cheight!16143 (right!57249 t!3690))) (ite (>= (cheight!16143 (right!57249 t!3690)) 0) (cheight!16143 (right!57249 t!3690)) (- (cheight!16143 (right!57249 t!3690)))))))

(assert (=> b!7938777 d!2374480))

(declare-fun d!2374482 () Bool)

(declare-fun lt!2695687 () Bool)

(declare-fun isEmpty!42809 (List!74604) Bool)

(declare-fun list!19463 (Conc!15932) List!74604)

(assert (=> d!2374482 (= lt!2695687 (isEmpty!42809 (list!19463 (left!56919 (left!56919 t!3690)))))))

(assert (=> d!2374482 (= lt!2695687 (= (size!43311 (left!56919 (left!56919 t!3690))) 0))))

(assert (=> d!2374482 (= (isEmpty!42807 (left!56919 (left!56919 t!3690))) lt!2695687)))

(declare-fun bs!1969326 () Bool)

(assert (= bs!1969326 d!2374482))

(declare-fun m!8328096 () Bool)

(assert (=> bs!1969326 m!8328096))

(assert (=> bs!1969326 m!8328096))

(declare-fun m!8328098 () Bool)

(assert (=> bs!1969326 m!8328098))

(declare-fun m!8328100 () Bool)

(assert (=> bs!1969326 m!8328100))

(assert (=> b!7938818 d!2374482))

(declare-fun d!2374484 () Bool)

(assert (=> d!2374484 (= (inv!95884 (xs!19330 (right!57249 t!3690))) (<= (size!43309 (innerList!16020 (xs!19330 (right!57249 t!3690)))) 2147483647))))

(declare-fun bs!1969327 () Bool)

(assert (= bs!1969327 d!2374484))

(declare-fun m!8328102 () Bool)

(assert (=> bs!1969327 m!8328102))

(assert (=> b!7938855 d!2374484))

(declare-fun d!2374486 () Bool)

(declare-fun c!1458547 () Bool)

(assert (=> d!2374486 (= c!1458547 ((_ is Node!15932) (left!56919 (left!56919 t!3690))))))

(declare-fun e!4684407 () Bool)

(assert (=> d!2374486 (= (inv!95883 (left!56919 (left!56919 t!3690))) e!4684407)))

(declare-fun b!7938900 () Bool)

(assert (=> b!7938900 (= e!4684407 (inv!95885 (left!56919 (left!56919 t!3690))))))

(declare-fun b!7938901 () Bool)

(declare-fun e!4684408 () Bool)

(assert (=> b!7938901 (= e!4684407 e!4684408)))

(declare-fun res!3149550 () Bool)

(assert (=> b!7938901 (= res!3149550 (not ((_ is Leaf!30280) (left!56919 (left!56919 t!3690)))))))

(assert (=> b!7938901 (=> res!3149550 e!4684408)))

(declare-fun b!7938902 () Bool)

(assert (=> b!7938902 (= e!4684408 (inv!95886 (left!56919 (left!56919 t!3690))))))

(assert (= (and d!2374486 c!1458547) b!7938900))

(assert (= (and d!2374486 (not c!1458547)) b!7938901))

(assert (= (and b!7938901 (not res!3149550)) b!7938902))

(declare-fun m!8328104 () Bool)

(assert (=> b!7938900 m!8328104))

(declare-fun m!8328106 () Bool)

(assert (=> b!7938902 m!8328106))

(assert (=> b!7938849 d!2374486))

(declare-fun d!2374488 () Bool)

(declare-fun c!1458548 () Bool)

(assert (=> d!2374488 (= c!1458548 ((_ is Node!15932) (right!57249 (left!56919 t!3690))))))

(declare-fun e!4684409 () Bool)

(assert (=> d!2374488 (= (inv!95883 (right!57249 (left!56919 t!3690))) e!4684409)))

(declare-fun b!7938903 () Bool)

(assert (=> b!7938903 (= e!4684409 (inv!95885 (right!57249 (left!56919 t!3690))))))

(declare-fun b!7938904 () Bool)

(declare-fun e!4684410 () Bool)

(assert (=> b!7938904 (= e!4684409 e!4684410)))

(declare-fun res!3149551 () Bool)

(assert (=> b!7938904 (= res!3149551 (not ((_ is Leaf!30280) (right!57249 (left!56919 t!3690)))))))

(assert (=> b!7938904 (=> res!3149551 e!4684410)))

(declare-fun b!7938905 () Bool)

(assert (=> b!7938905 (= e!4684410 (inv!95886 (right!57249 (left!56919 t!3690))))))

(assert (= (and d!2374488 c!1458548) b!7938903))

(assert (= (and d!2374488 (not c!1458548)) b!7938904))

(assert (= (and b!7938904 (not res!3149551)) b!7938905))

(declare-fun m!8328108 () Bool)

(assert (=> b!7938903 m!8328108))

(declare-fun m!8328110 () Bool)

(assert (=> b!7938905 m!8328110))

(assert (=> b!7938849 d!2374488))

(declare-fun d!2374490 () Bool)

(declare-fun c!1458549 () Bool)

(assert (=> d!2374490 (= c!1458549 ((_ is Node!15932) (left!56919 (right!57249 t!3690))))))

(declare-fun e!4684411 () Bool)

(assert (=> d!2374490 (= (inv!95883 (left!56919 (right!57249 t!3690))) e!4684411)))

(declare-fun b!7938906 () Bool)

(assert (=> b!7938906 (= e!4684411 (inv!95885 (left!56919 (right!57249 t!3690))))))

(declare-fun b!7938907 () Bool)

(declare-fun e!4684412 () Bool)

(assert (=> b!7938907 (= e!4684411 e!4684412)))

(declare-fun res!3149552 () Bool)

(assert (=> b!7938907 (= res!3149552 (not ((_ is Leaf!30280) (left!56919 (right!57249 t!3690)))))))

(assert (=> b!7938907 (=> res!3149552 e!4684412)))

(declare-fun b!7938908 () Bool)

(assert (=> b!7938908 (= e!4684412 (inv!95886 (left!56919 (right!57249 t!3690))))))

(assert (= (and d!2374490 c!1458549) b!7938906))

(assert (= (and d!2374490 (not c!1458549)) b!7938907))

(assert (= (and b!7938907 (not res!3149552)) b!7938908))

(declare-fun m!8328112 () Bool)

(assert (=> b!7938906 m!8328112))

(declare-fun m!8328114 () Bool)

(assert (=> b!7938908 m!8328114))

(assert (=> b!7938854 d!2374490))

(declare-fun d!2374492 () Bool)

(declare-fun c!1458550 () Bool)

(assert (=> d!2374492 (= c!1458550 ((_ is Node!15932) (right!57249 (right!57249 t!3690))))))

(declare-fun e!4684413 () Bool)

(assert (=> d!2374492 (= (inv!95883 (right!57249 (right!57249 t!3690))) e!4684413)))

(declare-fun b!7938909 () Bool)

(assert (=> b!7938909 (= e!4684413 (inv!95885 (right!57249 (right!57249 t!3690))))))

(declare-fun b!7938910 () Bool)

(declare-fun e!4684414 () Bool)

(assert (=> b!7938910 (= e!4684413 e!4684414)))

(declare-fun res!3149553 () Bool)

(assert (=> b!7938910 (= res!3149553 (not ((_ is Leaf!30280) (right!57249 (right!57249 t!3690)))))))

(assert (=> b!7938910 (=> res!3149553 e!4684414)))

(declare-fun b!7938911 () Bool)

(assert (=> b!7938911 (= e!4684414 (inv!95886 (right!57249 (right!57249 t!3690))))))

(assert (= (and d!2374492 c!1458550) b!7938909))

(assert (= (and d!2374492 (not c!1458550)) b!7938910))

(assert (= (and b!7938910 (not res!3149553)) b!7938911))

(declare-fun m!8328116 () Bool)

(assert (=> b!7938909 m!8328116))

(declare-fun m!8328118 () Bool)

(assert (=> b!7938911 m!8328118))

(assert (=> b!7938854 d!2374492))

(declare-fun d!2374494 () Bool)

(assert (=> d!2374494 (= (height!2239 (left!56919 (left!56919 t!3690))) (ite ((_ is Empty!15932) (left!56919 (left!56919 t!3690))) 0 (ite ((_ is Leaf!30280) (left!56919 (left!56919 t!3690))) 1 (cheight!16143 (left!56919 (left!56919 t!3690))))))))

(assert (=> b!7938820 d!2374494))

(declare-fun d!2374496 () Bool)

(assert (=> d!2374496 (= (height!2239 (right!57249 (left!56919 t!3690))) (ite ((_ is Empty!15932) (right!57249 (left!56919 t!3690))) 0 (ite ((_ is Leaf!30280) (right!57249 (left!56919 t!3690))) 1 (cheight!16143 (right!57249 (left!56919 t!3690))))))))

(assert (=> b!7938820 d!2374496))

(declare-fun d!2374498 () Bool)

(declare-fun res!3149554 () Bool)

(declare-fun e!4684415 () Bool)

(assert (=> d!2374498 (=> (not res!3149554) (not e!4684415))))

(assert (=> d!2374498 (= res!3149554 (= (csize!32094 (left!56919 t!3690)) (+ (size!43311 (left!56919 (left!56919 t!3690))) (size!43311 (right!57249 (left!56919 t!3690))))))))

(assert (=> d!2374498 (= (inv!95885 (left!56919 t!3690)) e!4684415)))

(declare-fun b!7938912 () Bool)

(declare-fun res!3149555 () Bool)

(assert (=> b!7938912 (=> (not res!3149555) (not e!4684415))))

(assert (=> b!7938912 (= res!3149555 (and (not (= (left!56919 (left!56919 t!3690)) Empty!15932)) (not (= (right!57249 (left!56919 t!3690)) Empty!15932))))))

(declare-fun b!7938913 () Bool)

(declare-fun res!3149556 () Bool)

(assert (=> b!7938913 (=> (not res!3149556) (not e!4684415))))

(assert (=> b!7938913 (= res!3149556 (= (cheight!16143 (left!56919 t!3690)) (+ (max!0 (height!2239 (left!56919 (left!56919 t!3690))) (height!2239 (right!57249 (left!56919 t!3690)))) 1)))))

(declare-fun b!7938914 () Bool)

(assert (=> b!7938914 (= e!4684415 (<= 0 (cheight!16143 (left!56919 t!3690))))))

(assert (= (and d!2374498 res!3149554) b!7938912))

(assert (= (and b!7938912 res!3149555) b!7938913))

(assert (= (and b!7938913 res!3149556) b!7938914))

(assert (=> d!2374498 m!8328100))

(declare-fun m!8328120 () Bool)

(assert (=> d!2374498 m!8328120))

(assert (=> b!7938913 m!8328018))

(assert (=> b!7938913 m!8328020))

(assert (=> b!7938913 m!8328018))

(assert (=> b!7938913 m!8328020))

(declare-fun m!8328122 () Bool)

(assert (=> b!7938913 m!8328122))

(assert (=> b!7938755 d!2374498))

(declare-fun d!2374500 () Bool)

(declare-fun lt!2695688 () Int)

(assert (=> d!2374500 (>= lt!2695688 0)))

(declare-fun e!4684417 () Int)

(assert (=> d!2374500 (= lt!2695688 e!4684417)))

(declare-fun c!1458551 () Bool)

(assert (=> d!2374500 (= c!1458551 ((_ is Node!15932) (left!56919 t!3690)))))

(assert (=> d!2374500 (= (ConcPrimitiveSize!50 (left!56919 t!3690)) lt!2695688)))

(declare-fun b!7938915 () Bool)

(declare-fun call!735703 () Int)

(assert (=> b!7938915 (= e!4684417 (+ 1 (ConcPrimitiveSize!50 (left!56919 (left!56919 t!3690))) (ConcPrimitiveSize!50 (right!57249 (left!56919 t!3690))) call!735703 (BigIntAbs!0 (cheight!16143 (left!56919 t!3690)))))))

(declare-fun b!7938916 () Bool)

(declare-fun e!4684416 () Int)

(assert (=> b!7938916 (= e!4684417 e!4684416)))

(declare-fun c!1458552 () Bool)

(assert (=> b!7938916 (= c!1458552 ((_ is Leaf!30280) (left!56919 t!3690)))))

(declare-fun b!7938917 () Bool)

(assert (=> b!7938917 (= e!4684416 0)))

(declare-fun bm!735698 () Bool)

(assert (=> bm!735698 (= call!735703 (BigIntAbs!0 (ite c!1458551 (csize!32094 (left!56919 t!3690)) (csize!32095 (left!56919 t!3690)))))))

(declare-fun b!7938918 () Bool)

(assert (=> b!7938918 (= e!4684416 (+ 1 (IArrayPrimitiveSize!49 (xs!19330 (left!56919 t!3690))) call!735703))))

(assert (= (and d!2374500 c!1458551) b!7938915))

(assert (= (and d!2374500 (not c!1458551)) b!7938916))

(assert (= (and b!7938916 c!1458552) b!7938918))

(assert (= (and b!7938916 (not c!1458552)) b!7938917))

(assert (= (or b!7938915 b!7938918) bm!735698))

(declare-fun m!8328124 () Bool)

(assert (=> b!7938915 m!8328124))

(declare-fun m!8328126 () Bool)

(assert (=> b!7938915 m!8328126))

(declare-fun m!8328128 () Bool)

(assert (=> b!7938915 m!8328128))

(declare-fun m!8328130 () Bool)

(assert (=> bm!735698 m!8328130))

(declare-fun m!8328132 () Bool)

(assert (=> b!7938918 m!8328132))

(assert (=> b!7938781 d!2374500))

(assert (=> b!7938781 d!2374450))

(declare-fun d!2374502 () Bool)

(assert (=> d!2374502 (= (BigIntAbs!0 (cheight!16143 t!3690)) (ite (>= (cheight!16143 t!3690) 0) (cheight!16143 t!3690) (- (cheight!16143 t!3690))))))

(assert (=> b!7938781 d!2374502))

(declare-fun d!2374504 () Bool)

(declare-fun lt!2695689 () Bool)

(assert (=> d!2374504 (= lt!2695689 (isEmpty!42809 (list!19463 (right!57249 (left!56919 t!3690)))))))

(assert (=> d!2374504 (= lt!2695689 (= (size!43311 (right!57249 (left!56919 t!3690))) 0))))

(assert (=> d!2374504 (= (isEmpty!42807 (right!57249 (left!56919 t!3690))) lt!2695689)))

(declare-fun bs!1969328 () Bool)

(assert (= bs!1969328 d!2374504))

(declare-fun m!8328134 () Bool)

(assert (=> bs!1969328 m!8328134))

(assert (=> bs!1969328 m!8328134))

(declare-fun m!8328136 () Bool)

(assert (=> bs!1969328 m!8328136))

(assert (=> bs!1969328 m!8328120))

(assert (=> b!7938821 d!2374504))

(assert (=> b!7938819 d!2374494))

(assert (=> b!7938819 d!2374496))

(declare-fun d!2374506 () Bool)

(declare-fun res!3149557 () Bool)

(declare-fun e!4684418 () Bool)

(assert (=> d!2374506 (=> (not res!3149557) (not e!4684418))))

(assert (=> d!2374506 (= res!3149557 (<= (size!43309 (list!19462 (xs!19330 t!3690))) 512))))

(assert (=> d!2374506 (= (inv!95886 t!3690) e!4684418)))

(declare-fun b!7938919 () Bool)

(declare-fun res!3149558 () Bool)

(assert (=> b!7938919 (=> (not res!3149558) (not e!4684418))))

(assert (=> b!7938919 (= res!3149558 (= (csize!32095 t!3690) (size!43309 (list!19462 (xs!19330 t!3690)))))))

(declare-fun b!7938920 () Bool)

(assert (=> b!7938920 (= e!4684418 (and (> (csize!32095 t!3690) 0) (<= (csize!32095 t!3690) 512)))))

(assert (= (and d!2374506 res!3149557) b!7938919))

(assert (= (and b!7938919 res!3149558) b!7938920))

(declare-fun m!8328138 () Bool)

(assert (=> d!2374506 m!8328138))

(assert (=> d!2374506 m!8328138))

(declare-fun m!8328140 () Bool)

(assert (=> d!2374506 m!8328140))

(assert (=> b!7938919 m!8328138))

(assert (=> b!7938919 m!8328138))

(assert (=> b!7938919 m!8328140))

(assert (=> b!7938787 d!2374506))

(declare-fun b!7938921 () Bool)

(declare-fun res!3149561 () Bool)

(declare-fun e!4684420 () Bool)

(assert (=> b!7938921 (=> (not res!3149561) (not e!4684420))))

(assert (=> b!7938921 (= res!3149561 (not (isEmpty!42807 (left!56919 (left!56919 (left!56919 t!3690))))))))

(declare-fun b!7938922 () Bool)

(declare-fun res!3149563 () Bool)

(assert (=> b!7938922 (=> (not res!3149563) (not e!4684420))))

(assert (=> b!7938922 (= res!3149563 (<= (- (height!2239 (left!56919 (left!56919 (left!56919 t!3690)))) (height!2239 (right!57249 (left!56919 (left!56919 t!3690))))) 1))))

(declare-fun d!2374508 () Bool)

(declare-fun res!3149564 () Bool)

(declare-fun e!4684419 () Bool)

(assert (=> d!2374508 (=> res!3149564 e!4684419)))

(assert (=> d!2374508 (= res!3149564 (not ((_ is Node!15932) (left!56919 (left!56919 t!3690)))))))

(assert (=> d!2374508 (= (isBalanced!4546 (left!56919 (left!56919 t!3690))) e!4684419)))

(declare-fun b!7938923 () Bool)

(assert (=> b!7938923 (= e!4684419 e!4684420)))

(declare-fun res!3149562 () Bool)

(assert (=> b!7938923 (=> (not res!3149562) (not e!4684420))))

(assert (=> b!7938923 (= res!3149562 (<= (- 1) (- (height!2239 (left!56919 (left!56919 (left!56919 t!3690)))) (height!2239 (right!57249 (left!56919 (left!56919 t!3690)))))))))

(declare-fun b!7938924 () Bool)

(assert (=> b!7938924 (= e!4684420 (not (isEmpty!42807 (right!57249 (left!56919 (left!56919 t!3690))))))))

(declare-fun b!7938925 () Bool)

(declare-fun res!3149560 () Bool)

(assert (=> b!7938925 (=> (not res!3149560) (not e!4684420))))

(assert (=> b!7938925 (= res!3149560 (isBalanced!4546 (right!57249 (left!56919 (left!56919 t!3690)))))))

(declare-fun b!7938926 () Bool)

(declare-fun res!3149559 () Bool)

(assert (=> b!7938926 (=> (not res!3149559) (not e!4684420))))

(assert (=> b!7938926 (= res!3149559 (isBalanced!4546 (left!56919 (left!56919 (left!56919 t!3690)))))))

(assert (= (and d!2374508 (not res!3149564)) b!7938923))

(assert (= (and b!7938923 res!3149562) b!7938922))

(assert (= (and b!7938922 res!3149563) b!7938926))

(assert (= (and b!7938926 res!3149559) b!7938925))

(assert (= (and b!7938925 res!3149560) b!7938921))

(assert (= (and b!7938921 res!3149561) b!7938924))

(declare-fun m!8328142 () Bool)

(assert (=> b!7938924 m!8328142))

(declare-fun m!8328144 () Bool)

(assert (=> b!7938922 m!8328144))

(declare-fun m!8328146 () Bool)

(assert (=> b!7938922 m!8328146))

(assert (=> b!7938923 m!8328144))

(assert (=> b!7938923 m!8328146))

(declare-fun m!8328148 () Bool)

(assert (=> b!7938925 m!8328148))

(declare-fun m!8328150 () Bool)

(assert (=> b!7938921 m!8328150))

(declare-fun m!8328152 () Bool)

(assert (=> b!7938926 m!8328152))

(assert (=> b!7938823 d!2374508))

(declare-fun d!2374510 () Bool)

(assert (=> d!2374510 (= (BigIntAbs!0 (ite c!1458535 (csize!32094 t!3690) (csize!32095 t!3690))) (ite (>= (ite c!1458535 (csize!32094 t!3690) (csize!32095 t!3690)) 0) (ite c!1458535 (csize!32094 t!3690) (csize!32095 t!3690)) (- (ite c!1458535 (csize!32094 t!3690) (csize!32095 t!3690)))))))

(assert (=> bm!735695 d!2374510))

(declare-fun d!2374512 () Bool)

(assert (=> d!2374512 (= (BigIntAbs!0 (ite c!1458533 (csize!32094 (right!57249 t!3690)) (csize!32095 (right!57249 t!3690)))) (ite (>= (ite c!1458533 (csize!32094 (right!57249 t!3690)) (csize!32095 (right!57249 t!3690))) 0) (ite c!1458533 (csize!32094 (right!57249 t!3690)) (csize!32095 (right!57249 t!3690))) (- (ite c!1458533 (csize!32094 (right!57249 t!3690)) (csize!32095 (right!57249 t!3690))))))))

(assert (=> bm!735694 d!2374512))

(declare-fun d!2374514 () Bool)

(declare-fun lt!2695692 () Int)

(assert (=> d!2374514 (>= lt!2695692 0)))

(declare-fun ListPrimitiveSize!481 (List!74604) Int)

(assert (=> d!2374514 (= lt!2695692 (+ 1 (ListPrimitiveSize!481 (innerList!16020 (xs!19330 (right!57249 t!3690))))))))

(assert (=> d!2374514 (= (IArrayPrimitiveSize!49 (xs!19330 (right!57249 t!3690))) lt!2695692)))

(declare-fun bs!1969329 () Bool)

(assert (= bs!1969329 d!2374514))

(declare-fun m!8328154 () Bool)

(assert (=> bs!1969329 m!8328154))

(assert (=> b!7938780 d!2374514))

(declare-fun b!7938927 () Bool)

(declare-fun res!3149567 () Bool)

(declare-fun e!4684422 () Bool)

(assert (=> b!7938927 (=> (not res!3149567) (not e!4684422))))

(assert (=> b!7938927 (= res!3149567 (not (isEmpty!42807 (left!56919 (right!57249 (left!56919 t!3690))))))))

(declare-fun b!7938928 () Bool)

(declare-fun res!3149569 () Bool)

(assert (=> b!7938928 (=> (not res!3149569) (not e!4684422))))

(assert (=> b!7938928 (= res!3149569 (<= (- (height!2239 (left!56919 (right!57249 (left!56919 t!3690)))) (height!2239 (right!57249 (right!57249 (left!56919 t!3690))))) 1))))

(declare-fun d!2374516 () Bool)

(declare-fun res!3149570 () Bool)

(declare-fun e!4684421 () Bool)

(assert (=> d!2374516 (=> res!3149570 e!4684421)))

(assert (=> d!2374516 (= res!3149570 (not ((_ is Node!15932) (right!57249 (left!56919 t!3690)))))))

(assert (=> d!2374516 (= (isBalanced!4546 (right!57249 (left!56919 t!3690))) e!4684421)))

(declare-fun b!7938929 () Bool)

(assert (=> b!7938929 (= e!4684421 e!4684422)))

(declare-fun res!3149568 () Bool)

(assert (=> b!7938929 (=> (not res!3149568) (not e!4684422))))

(assert (=> b!7938929 (= res!3149568 (<= (- 1) (- (height!2239 (left!56919 (right!57249 (left!56919 t!3690)))) (height!2239 (right!57249 (right!57249 (left!56919 t!3690)))))))))

(declare-fun b!7938930 () Bool)

(assert (=> b!7938930 (= e!4684422 (not (isEmpty!42807 (right!57249 (right!57249 (left!56919 t!3690))))))))

(declare-fun b!7938931 () Bool)

(declare-fun res!3149566 () Bool)

(assert (=> b!7938931 (=> (not res!3149566) (not e!4684422))))

(assert (=> b!7938931 (= res!3149566 (isBalanced!4546 (right!57249 (right!57249 (left!56919 t!3690)))))))

(declare-fun b!7938932 () Bool)

(declare-fun res!3149565 () Bool)

(assert (=> b!7938932 (=> (not res!3149565) (not e!4684422))))

(assert (=> b!7938932 (= res!3149565 (isBalanced!4546 (left!56919 (right!57249 (left!56919 t!3690)))))))

(assert (= (and d!2374516 (not res!3149570)) b!7938929))

(assert (= (and b!7938929 res!3149568) b!7938928))

(assert (= (and b!7938928 res!3149569) b!7938932))

(assert (= (and b!7938932 res!3149565) b!7938931))

(assert (= (and b!7938931 res!3149566) b!7938927))

(assert (= (and b!7938927 res!3149567) b!7938930))

(declare-fun m!8328156 () Bool)

(assert (=> b!7938930 m!8328156))

(declare-fun m!8328158 () Bool)

(assert (=> b!7938928 m!8328158))

(declare-fun m!8328160 () Bool)

(assert (=> b!7938928 m!8328160))

(assert (=> b!7938929 m!8328158))

(assert (=> b!7938929 m!8328160))

(declare-fun m!8328162 () Bool)

(assert (=> b!7938931 m!8328162))

(declare-fun m!8328164 () Bool)

(assert (=> b!7938927 m!8328164))

(declare-fun m!8328166 () Bool)

(assert (=> b!7938932 m!8328166))

(assert (=> b!7938822 d!2374516))

(declare-fun d!2374518 () Bool)

(declare-fun res!3149571 () Bool)

(declare-fun e!4684423 () Bool)

(assert (=> d!2374518 (=> (not res!3149571) (not e!4684423))))

(assert (=> d!2374518 (= res!3149571 (<= (size!43309 (list!19462 (xs!19330 (left!56919 t!3690)))) 512))))

(assert (=> d!2374518 (= (inv!95886 (left!56919 t!3690)) e!4684423)))

(declare-fun b!7938933 () Bool)

(declare-fun res!3149572 () Bool)

(assert (=> b!7938933 (=> (not res!3149572) (not e!4684423))))

(assert (=> b!7938933 (= res!3149572 (= (csize!32095 (left!56919 t!3690)) (size!43309 (list!19462 (xs!19330 (left!56919 t!3690))))))))

(declare-fun b!7938934 () Bool)

(assert (=> b!7938934 (= e!4684423 (and (> (csize!32095 (left!56919 t!3690)) 0) (<= (csize!32095 (left!56919 t!3690)) 512)))))

(assert (= (and d!2374518 res!3149571) b!7938933))

(assert (= (and b!7938933 res!3149572) b!7938934))

(declare-fun m!8328168 () Bool)

(assert (=> d!2374518 m!8328168))

(assert (=> d!2374518 m!8328168))

(declare-fun m!8328170 () Bool)

(assert (=> d!2374518 m!8328170))

(assert (=> b!7938933 m!8328168))

(assert (=> b!7938933 m!8328168))

(assert (=> b!7938933 m!8328170))

(assert (=> b!7938757 d!2374518))

(declare-fun d!2374520 () Bool)

(declare-fun lt!2695693 () Int)

(assert (=> d!2374520 (>= lt!2695693 0)))

(assert (=> d!2374520 (= lt!2695693 (+ 1 (ListPrimitiveSize!481 (innerList!16020 (xs!19330 t!3690)))))))

(assert (=> d!2374520 (= (IArrayPrimitiveSize!49 (xs!19330 t!3690)) lt!2695693)))

(declare-fun bs!1969330 () Bool)

(assert (= bs!1969330 d!2374520))

(declare-fun m!8328172 () Bool)

(assert (=> bs!1969330 m!8328172))

(assert (=> b!7938784 d!2374520))

(assert (=> b!7938739 d!2374442))

(assert (=> b!7938739 d!2374448))

(declare-fun d!2374522 () Bool)

(declare-fun lt!2695696 () Int)

(assert (=> d!2374522 (>= lt!2695696 0)))

(declare-fun e!4684426 () Int)

(assert (=> d!2374522 (= lt!2695696 e!4684426)))

(declare-fun c!1458555 () Bool)

(assert (=> d!2374522 (= c!1458555 ((_ is Nil!74480) (innerList!16020 (xs!19330 t!3690))))))

(assert (=> d!2374522 (= (size!43309 (innerList!16020 (xs!19330 t!3690))) lt!2695696)))

(declare-fun b!7938939 () Bool)

(assert (=> b!7938939 (= e!4684426 0)))

(declare-fun b!7938940 () Bool)

(assert (=> b!7938940 (= e!4684426 (+ 1 (size!43309 (t!390335 (innerList!16020 (xs!19330 t!3690))))))))

(assert (= (and d!2374522 c!1458555) b!7938939))

(assert (= (and d!2374522 (not c!1458555)) b!7938940))

(declare-fun m!8328174 () Bool)

(assert (=> b!7938940 m!8328174))

(assert (=> d!2374434 d!2374522))

(declare-fun d!2374524 () Bool)

(declare-fun res!3149573 () Bool)

(declare-fun e!4684427 () Bool)

(assert (=> d!2374524 (=> (not res!3149573) (not e!4684427))))

(assert (=> d!2374524 (= res!3149573 (= (csize!32094 (right!57249 t!3690)) (+ (size!43311 (left!56919 (right!57249 t!3690))) (size!43311 (right!57249 (right!57249 t!3690))))))))

(assert (=> d!2374524 (= (inv!95885 (right!57249 t!3690)) e!4684427)))

(declare-fun b!7938941 () Bool)

(declare-fun res!3149574 () Bool)

(assert (=> b!7938941 (=> (not res!3149574) (not e!4684427))))

(assert (=> b!7938941 (= res!3149574 (and (not (= (left!56919 (right!57249 t!3690)) Empty!15932)) (not (= (right!57249 (right!57249 t!3690)) Empty!15932))))))

(declare-fun b!7938942 () Bool)

(declare-fun res!3149575 () Bool)

(assert (=> b!7938942 (=> (not res!3149575) (not e!4684427))))

(assert (=> b!7938942 (= res!3149575 (= (cheight!16143 (right!57249 t!3690)) (+ (max!0 (height!2239 (left!56919 (right!57249 t!3690))) (height!2239 (right!57249 (right!57249 t!3690)))) 1)))))

(declare-fun b!7938943 () Bool)

(assert (=> b!7938943 (= e!4684427 (<= 0 (cheight!16143 (right!57249 t!3690))))))

(assert (= (and d!2374524 res!3149573) b!7938941))

(assert (= (and b!7938941 res!3149574) b!7938942))

(assert (= (and b!7938942 res!3149575) b!7938943))

(declare-fun m!8328176 () Bool)

(assert (=> d!2374524 m!8328176))

(declare-fun m!8328178 () Bool)

(assert (=> d!2374524 m!8328178))

(declare-fun m!8328180 () Bool)

(assert (=> b!7938942 m!8328180))

(declare-fun m!8328182 () Bool)

(assert (=> b!7938942 m!8328182))

(assert (=> b!7938942 m!8328180))

(assert (=> b!7938942 m!8328182))

(declare-fun m!8328184 () Bool)

(assert (=> b!7938942 m!8328184))

(assert (=> b!7938758 d!2374524))

(declare-fun b!7938944 () Bool)

(declare-fun e!4684428 () Bool)

(declare-fun tp!2360333 () Bool)

(assert (=> b!7938944 (= e!4684428 (and tp_is_empty!53293 tp!2360333))))

(assert (=> b!7938870 (= tp!2360326 e!4684428)))

(assert (= (and b!7938870 ((_ is Cons!74480) (t!390335 (innerList!16020 (xs!19330 t!3690))))) b!7938944))

(declare-fun b!7938945 () Bool)

(declare-fun e!4684429 () Bool)

(declare-fun tp!2360334 () Bool)

(assert (=> b!7938945 (= e!4684429 (and tp_is_empty!53293 tp!2360334))))

(assert (=> b!7938856 (= tp!2360315 e!4684429)))

(assert (= (and b!7938856 ((_ is Cons!74480) (innerList!16020 (xs!19330 (right!57249 t!3690))))) b!7938945))

(declare-fun b!7938946 () Bool)

(declare-fun e!4684430 () Bool)

(declare-fun tp!2360335 () Bool)

(assert (=> b!7938946 (= e!4684430 (and tp_is_empty!53293 tp!2360335))))

(assert (=> b!7938851 (= tp!2360310 e!4684430)))

(assert (= (and b!7938851 ((_ is Cons!74480) (innerList!16020 (xs!19330 (left!56919 t!3690))))) b!7938946))

(declare-fun tp!2360338 () Bool)

(declare-fun tp!2360336 () Bool)

(declare-fun e!4684431 () Bool)

(declare-fun b!7938947 () Bool)

(assert (=> b!7938947 (= e!4684431 (and (inv!95883 (left!56919 (left!56919 (left!56919 t!3690)))) tp!2360338 (inv!95883 (right!57249 (left!56919 (left!56919 t!3690)))) tp!2360336))))

(declare-fun b!7938949 () Bool)

(declare-fun e!4684432 () Bool)

(declare-fun tp!2360337 () Bool)

(assert (=> b!7938949 (= e!4684432 tp!2360337)))

(declare-fun b!7938948 () Bool)

(assert (=> b!7938948 (= e!4684431 (and (inv!95884 (xs!19330 (left!56919 (left!56919 t!3690)))) e!4684432))))

(assert (=> b!7938849 (= tp!2360311 (and (inv!95883 (left!56919 (left!56919 t!3690))) e!4684431))))

(assert (= (and b!7938849 ((_ is Node!15932) (left!56919 (left!56919 t!3690)))) b!7938947))

(assert (= b!7938948 b!7938949))

(assert (= (and b!7938849 ((_ is Leaf!30280) (left!56919 (left!56919 t!3690)))) b!7938948))

(declare-fun m!8328186 () Bool)

(assert (=> b!7938947 m!8328186))

(declare-fun m!8328188 () Bool)

(assert (=> b!7938947 m!8328188))

(declare-fun m!8328190 () Bool)

(assert (=> b!7938948 m!8328190))

(assert (=> b!7938849 m!8328040))

(declare-fun e!4684433 () Bool)

(declare-fun b!7938950 () Bool)

(declare-fun tp!2360341 () Bool)

(declare-fun tp!2360339 () Bool)

(assert (=> b!7938950 (= e!4684433 (and (inv!95883 (left!56919 (right!57249 (left!56919 t!3690)))) tp!2360341 (inv!95883 (right!57249 (right!57249 (left!56919 t!3690)))) tp!2360339))))

(declare-fun b!7938952 () Bool)

(declare-fun e!4684434 () Bool)

(declare-fun tp!2360340 () Bool)

(assert (=> b!7938952 (= e!4684434 tp!2360340)))

(declare-fun b!7938951 () Bool)

(assert (=> b!7938951 (= e!4684433 (and (inv!95884 (xs!19330 (right!57249 (left!56919 t!3690)))) e!4684434))))

(assert (=> b!7938849 (= tp!2360309 (and (inv!95883 (right!57249 (left!56919 t!3690))) e!4684433))))

(assert (= (and b!7938849 ((_ is Node!15932) (right!57249 (left!56919 t!3690)))) b!7938950))

(assert (= b!7938951 b!7938952))

(assert (= (and b!7938849 ((_ is Leaf!30280) (right!57249 (left!56919 t!3690)))) b!7938951))

(declare-fun m!8328192 () Bool)

(assert (=> b!7938950 m!8328192))

(declare-fun m!8328194 () Bool)

(assert (=> b!7938950 m!8328194))

(declare-fun m!8328196 () Bool)

(assert (=> b!7938951 m!8328196))

(assert (=> b!7938849 m!8328042))

(declare-fun b!7938953 () Bool)

(declare-fun tp!2360342 () Bool)

(declare-fun e!4684435 () Bool)

(declare-fun tp!2360344 () Bool)

(assert (=> b!7938953 (= e!4684435 (and (inv!95883 (left!56919 (left!56919 (right!57249 t!3690)))) tp!2360344 (inv!95883 (right!57249 (left!56919 (right!57249 t!3690)))) tp!2360342))))

(declare-fun b!7938955 () Bool)

(declare-fun e!4684436 () Bool)

(declare-fun tp!2360343 () Bool)

(assert (=> b!7938955 (= e!4684436 tp!2360343)))

(declare-fun b!7938954 () Bool)

(assert (=> b!7938954 (= e!4684435 (and (inv!95884 (xs!19330 (left!56919 (right!57249 t!3690)))) e!4684436))))

(assert (=> b!7938854 (= tp!2360316 (and (inv!95883 (left!56919 (right!57249 t!3690))) e!4684435))))

(assert (= (and b!7938854 ((_ is Node!15932) (left!56919 (right!57249 t!3690)))) b!7938953))

(assert (= b!7938954 b!7938955))

(assert (= (and b!7938854 ((_ is Leaf!30280) (left!56919 (right!57249 t!3690)))) b!7938954))

(declare-fun m!8328198 () Bool)

(assert (=> b!7938953 m!8328198))

(declare-fun m!8328200 () Bool)

(assert (=> b!7938953 m!8328200))

(declare-fun m!8328202 () Bool)

(assert (=> b!7938954 m!8328202))

(assert (=> b!7938854 m!8328046))

(declare-fun b!7938956 () Bool)

(declare-fun e!4684437 () Bool)

(declare-fun tp!2360347 () Bool)

(declare-fun tp!2360345 () Bool)

(assert (=> b!7938956 (= e!4684437 (and (inv!95883 (left!56919 (right!57249 (right!57249 t!3690)))) tp!2360347 (inv!95883 (right!57249 (right!57249 (right!57249 t!3690)))) tp!2360345))))

(declare-fun b!7938958 () Bool)

(declare-fun e!4684438 () Bool)

(declare-fun tp!2360346 () Bool)

(assert (=> b!7938958 (= e!4684438 tp!2360346)))

(declare-fun b!7938957 () Bool)

(assert (=> b!7938957 (= e!4684437 (and (inv!95884 (xs!19330 (right!57249 (right!57249 t!3690)))) e!4684438))))

(assert (=> b!7938854 (= tp!2360314 (and (inv!95883 (right!57249 (right!57249 t!3690))) e!4684437))))

(assert (= (and b!7938854 ((_ is Node!15932) (right!57249 (right!57249 t!3690)))) b!7938956))

(assert (= b!7938957 b!7938958))

(assert (= (and b!7938854 ((_ is Leaf!30280) (right!57249 (right!57249 t!3690)))) b!7938957))

(declare-fun m!8328204 () Bool)

(assert (=> b!7938956 m!8328204))

(declare-fun m!8328206 () Bool)

(assert (=> b!7938956 m!8328206))

(declare-fun m!8328208 () Bool)

(assert (=> b!7938957 m!8328208))

(assert (=> b!7938854 m!8328048))

(check-sat (not b!7938905) (not b!7938950) (not bm!735698) (not b!7938921) (not b!7938849) (not d!2374484) (not b!7938952) (not b!7938903) (not b!7938955) (not bm!735697) (not b!7938933) (not b!7938892) (not b!7938911) (not b!7938890) (not b!7938944) (not b!7938895) (not b!7938949) (not b!7938930) (not b!7938926) (not d!2374470) (not b!7938924) (not d!2374506) tp_is_empty!53293 (not b!7938881) (not b!7938922) (not b!7938919) (not b!7938908) (not b!7938909) (not d!2374520) (not d!2374514) (not d!2374524) (not b!7938899) (not b!7938942) (not b!7938913) (not b!7938958) (not b!7938945) (not d!2374482) (not d!2374474) (not b!7938954) (not b!7938915) (not b!7938953) (not b!7938957) (not b!7938928) (not d!2374498) (not b!7938951) (not b!7938923) (not b!7938946) (not b!7938932) (not b!7938948) (not b!7938918) (not bm!735696) (not b!7938925) (not d!2374518) (not b!7938947) (not b!7938854) (not b!7938902) (not b!7938956) (not b!7938900) (not d!2374472) (not b!7938927) (not b!7938906) (not b!7938896) (not b!7938931) (not b!7938929) (not b!7938940) (not d!2374504))
(check-sat)
