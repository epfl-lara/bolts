; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!229078 () Bool)

(assert start!229078)

(declare-fun b!2320907 () Bool)

(declare-fun e!1487560 () Bool)

(declare-fun e!1487564 () Bool)

(assert (=> b!2320907 (= e!1487560 e!1487564)))

(declare-fun res!991496 () Bool)

(assert (=> b!2320907 (=> res!991496 e!1487564)))

(declare-datatypes ((T!43866 0))(
  ( (T!43867 (val!7974 Int)) )
))
(declare-datatypes ((List!27760 0))(
  ( (Nil!27662) (Cons!27662 (h!33063 T!43866) (t!207422 List!27760)) )
))
(declare-datatypes ((IArray!18139 0))(
  ( (IArray!18140 (innerList!9127 List!27760)) )
))
(declare-datatypes ((Conc!9067 0))(
  ( (Node!9067 (left!20997 Conc!9067) (right!21327 Conc!9067) (csize!18364 Int) (cheight!9278 Int)) (Leaf!13310 (xs!12027 IArray!18139) (csize!18365 Int)) (Empty!9067) )
))
(declare-fun lt!860373 () Conc!9067)

(declare-fun isBalanced!2761 (Conc!9067) Bool)

(assert (=> b!2320907 (= res!991496 (not (isBalanced!2761 lt!860373)))))

(declare-fun lt!860372 () Int)

(declare-fun acc!252 () Conc!9067)

(declare-fun arr!18 () IArray!18139)

(declare-fun ++!6817 (Conc!9067 Conc!9067) Conc!9067)

(assert (=> b!2320907 (= lt!860373 (++!6817 acc!252 (Leaf!13310 arr!18 lt!860372)))))

(declare-fun b!2320908 () Bool)

(declare-fun e!1487565 () Bool)

(assert (=> b!2320908 (= e!1487565 e!1487560)))

(declare-fun res!991494 () Bool)

(assert (=> b!2320908 (=> (not res!991494) (not e!1487560))))

(assert (=> b!2320908 (= res!991494 (and (<= lt!860372 512) (not (= lt!860372 0))))))

(declare-fun size!21918 (IArray!18139) Int)

(assert (=> b!2320908 (= lt!860372 (size!21918 arr!18))))

(declare-fun b!2320909 () Bool)

(declare-fun list!11004 (Conc!9067) List!27760)

(declare-fun ++!6818 (List!27760 List!27760) List!27760)

(declare-fun list!11005 (IArray!18139) List!27760)

(assert (=> b!2320909 (= e!1487564 (not (= (list!11004 lt!860373) (++!6818 (list!11004 acc!252) (list!11005 arr!18)))))))

(declare-fun b!2320910 () Bool)

(declare-fun e!1487561 () Bool)

(declare-fun e!1487563 () Bool)

(declare-fun inv!37610 (IArray!18139) Bool)

(assert (=> b!2320910 (= e!1487561 (and (inv!37610 (xs!12027 acc!252)) e!1487563))))

(declare-fun res!991495 () Bool)

(assert (=> start!229078 (=> (not res!991495) (not e!1487565))))

(assert (=> start!229078 (= res!991495 (isBalanced!2761 acc!252))))

(assert (=> start!229078 e!1487565))

(declare-fun inv!37611 (Conc!9067) Bool)

(assert (=> start!229078 (and (inv!37611 acc!252) e!1487561)))

(declare-fun e!1487562 () Bool)

(assert (=> start!229078 (and (inv!37610 arr!18) e!1487562)))

(declare-fun b!2320911 () Bool)

(declare-fun tp!736497 () Bool)

(assert (=> b!2320911 (= e!1487562 tp!736497)))

(declare-fun b!2320912 () Bool)

(declare-fun tp!736498 () Bool)

(assert (=> b!2320912 (= e!1487563 tp!736498)))

(declare-fun tp!736496 () Bool)

(declare-fun b!2320913 () Bool)

(declare-fun tp!736499 () Bool)

(assert (=> b!2320913 (= e!1487561 (and (inv!37611 (left!20997 acc!252)) tp!736499 (inv!37611 (right!21327 acc!252)) tp!736496))))

(assert (= (and start!229078 res!991495) b!2320908))

(assert (= (and b!2320908 res!991494) b!2320907))

(assert (= (and b!2320907 (not res!991496)) b!2320909))

(get-info :version)

(assert (= (and start!229078 ((_ is Node!9067) acc!252)) b!2320913))

(assert (= b!2320910 b!2320912))

(assert (= (and start!229078 ((_ is Leaf!13310) acc!252)) b!2320910))

(assert (= start!229078 b!2320911))

(declare-fun m!2749957 () Bool)

(assert (=> b!2320907 m!2749957))

(declare-fun m!2749959 () Bool)

(assert (=> b!2320907 m!2749959))

(declare-fun m!2749961 () Bool)

(assert (=> b!2320913 m!2749961))

(declare-fun m!2749963 () Bool)

(assert (=> b!2320913 m!2749963))

(declare-fun m!2749965 () Bool)

(assert (=> start!229078 m!2749965))

(declare-fun m!2749967 () Bool)

(assert (=> start!229078 m!2749967))

(declare-fun m!2749969 () Bool)

(assert (=> start!229078 m!2749969))

(declare-fun m!2749971 () Bool)

(assert (=> b!2320909 m!2749971))

(declare-fun m!2749973 () Bool)

(assert (=> b!2320909 m!2749973))

(declare-fun m!2749975 () Bool)

(assert (=> b!2320909 m!2749975))

(assert (=> b!2320909 m!2749973))

(assert (=> b!2320909 m!2749975))

(declare-fun m!2749977 () Bool)

(assert (=> b!2320909 m!2749977))

(declare-fun m!2749979 () Bool)

(assert (=> b!2320908 m!2749979))

(declare-fun m!2749981 () Bool)

(assert (=> b!2320910 m!2749981))

(check-sat (not b!2320912) (not b!2320910) (not b!2320911) (not b!2320908) (not b!2320907) (not start!229078) (not b!2320909) (not b!2320913))
(check-sat)
(get-model)

(declare-fun d!686507 () Bool)

(declare-fun lt!860376 () Int)

(declare-fun size!21920 (List!27760) Int)

(assert (=> d!686507 (= lt!860376 (size!21920 (list!11005 arr!18)))))

(declare-fun choose!13592 (IArray!18139) Int)

(assert (=> d!686507 (= lt!860376 (choose!13592 arr!18))))

(assert (=> d!686507 (= (size!21918 arr!18) lt!860376)))

(declare-fun bs!459034 () Bool)

(assert (= bs!459034 d!686507))

(assert (=> bs!459034 m!2749975))

(assert (=> bs!459034 m!2749975))

(declare-fun m!2749983 () Bool)

(assert (=> bs!459034 m!2749983))

(declare-fun m!2749985 () Bool)

(assert (=> bs!459034 m!2749985))

(assert (=> b!2320908 d!686507))

(declare-fun d!686511 () Bool)

(declare-fun c!368104 () Bool)

(assert (=> d!686511 (= c!368104 ((_ is Node!9067) (left!20997 acc!252)))))

(declare-fun e!1487574 () Bool)

(assert (=> d!686511 (= (inv!37611 (left!20997 acc!252)) e!1487574)))

(declare-fun b!2320925 () Bool)

(declare-fun inv!37614 (Conc!9067) Bool)

(assert (=> b!2320925 (= e!1487574 (inv!37614 (left!20997 acc!252)))))

(declare-fun b!2320926 () Bool)

(declare-fun e!1487575 () Bool)

(assert (=> b!2320926 (= e!1487574 e!1487575)))

(declare-fun res!991501 () Bool)

(assert (=> b!2320926 (= res!991501 (not ((_ is Leaf!13310) (left!20997 acc!252))))))

(assert (=> b!2320926 (=> res!991501 e!1487575)))

(declare-fun b!2320928 () Bool)

(declare-fun inv!37615 (Conc!9067) Bool)

(assert (=> b!2320928 (= e!1487575 (inv!37615 (left!20997 acc!252)))))

(assert (= (and d!686511 c!368104) b!2320925))

(assert (= (and d!686511 (not c!368104)) b!2320926))

(assert (= (and b!2320926 (not res!991501)) b!2320928))

(declare-fun m!2749991 () Bool)

(assert (=> b!2320925 m!2749991))

(declare-fun m!2749993 () Bool)

(assert (=> b!2320928 m!2749993))

(assert (=> b!2320913 d!686511))

(declare-fun d!686515 () Bool)

(declare-fun c!368105 () Bool)

(assert (=> d!686515 (= c!368105 ((_ is Node!9067) (right!21327 acc!252)))))

(declare-fun e!1487576 () Bool)

(assert (=> d!686515 (= (inv!37611 (right!21327 acc!252)) e!1487576)))

(declare-fun b!2320929 () Bool)

(assert (=> b!2320929 (= e!1487576 (inv!37614 (right!21327 acc!252)))))

(declare-fun b!2320930 () Bool)

(declare-fun e!1487577 () Bool)

(assert (=> b!2320930 (= e!1487576 e!1487577)))

(declare-fun res!991502 () Bool)

(assert (=> b!2320930 (= res!991502 (not ((_ is Leaf!13310) (right!21327 acc!252))))))

(assert (=> b!2320930 (=> res!991502 e!1487577)))

(declare-fun b!2320931 () Bool)

(assert (=> b!2320931 (= e!1487577 (inv!37615 (right!21327 acc!252)))))

(assert (= (and d!686515 c!368105) b!2320929))

(assert (= (and d!686515 (not c!368105)) b!2320930))

(assert (= (and b!2320930 (not res!991502)) b!2320931))

(declare-fun m!2749995 () Bool)

(assert (=> b!2320929 m!2749995))

(declare-fun m!2749997 () Bool)

(assert (=> b!2320931 m!2749997))

(assert (=> b!2320913 d!686515))

(declare-fun b!2320962 () Bool)

(declare-fun e!1487591 () Bool)

(declare-fun e!1487590 () Bool)

(assert (=> b!2320962 (= e!1487591 e!1487590)))

(declare-fun res!991530 () Bool)

(assert (=> b!2320962 (=> (not res!991530) (not e!1487590))))

(declare-fun height!1328 (Conc!9067) Int)

(assert (=> b!2320962 (= res!991530 (<= (- 1) (- (height!1328 (left!20997 lt!860373)) (height!1328 (right!21327 lt!860373)))))))

(declare-fun b!2320963 () Bool)

(declare-fun res!991531 () Bool)

(assert (=> b!2320963 (=> (not res!991531) (not e!1487590))))

(declare-fun isEmpty!15790 (Conc!9067) Bool)

(assert (=> b!2320963 (= res!991531 (not (isEmpty!15790 (left!20997 lt!860373))))))

(declare-fun d!686517 () Bool)

(declare-fun res!991534 () Bool)

(assert (=> d!686517 (=> res!991534 e!1487591)))

(assert (=> d!686517 (= res!991534 (not ((_ is Node!9067) lt!860373)))))

(assert (=> d!686517 (= (isBalanced!2761 lt!860373) e!1487591)))

(declare-fun b!2320964 () Bool)

(declare-fun res!991533 () Bool)

(assert (=> b!2320964 (=> (not res!991533) (not e!1487590))))

(assert (=> b!2320964 (= res!991533 (isBalanced!2761 (left!20997 lt!860373)))))

(declare-fun b!2320965 () Bool)

(declare-fun res!991532 () Bool)

(assert (=> b!2320965 (=> (not res!991532) (not e!1487590))))

(assert (=> b!2320965 (= res!991532 (<= (- (height!1328 (left!20997 lt!860373)) (height!1328 (right!21327 lt!860373))) 1))))

(declare-fun b!2320966 () Bool)

(assert (=> b!2320966 (= e!1487590 (not (isEmpty!15790 (right!21327 lt!860373))))))

(declare-fun b!2320967 () Bool)

(declare-fun res!991529 () Bool)

(assert (=> b!2320967 (=> (not res!991529) (not e!1487590))))

(assert (=> b!2320967 (= res!991529 (isBalanced!2761 (right!21327 lt!860373)))))

(assert (= (and d!686517 (not res!991534)) b!2320962))

(assert (= (and b!2320962 res!991530) b!2320965))

(assert (= (and b!2320965 res!991532) b!2320964))

(assert (= (and b!2320964 res!991533) b!2320967))

(assert (= (and b!2320967 res!991529) b!2320963))

(assert (= (and b!2320963 res!991531) b!2320966))

(declare-fun m!2750009 () Bool)

(assert (=> b!2320962 m!2750009))

(declare-fun m!2750011 () Bool)

(assert (=> b!2320962 m!2750011))

(declare-fun m!2750013 () Bool)

(assert (=> b!2320964 m!2750013))

(declare-fun m!2750015 () Bool)

(assert (=> b!2320967 m!2750015))

(declare-fun m!2750017 () Bool)

(assert (=> b!2320966 m!2750017))

(assert (=> b!2320965 m!2750009))

(assert (=> b!2320965 m!2750011))

(declare-fun m!2750019 () Bool)

(assert (=> b!2320963 m!2750019))

(assert (=> b!2320907 d!686517))

(declare-fun b!2321078 () Bool)

(declare-fun e!1487650 () Conc!9067)

(declare-fun e!1487653 () Conc!9067)

(assert (=> b!2321078 (= e!1487650 e!1487653)))

(declare-fun lt!860402 () Conc!9067)

(declare-fun call!138368 () Conc!9067)

(assert (=> b!2321078 (= lt!860402 call!138368)))

(declare-fun c!368153 () Bool)

(declare-fun call!138362 () Int)

(declare-fun call!138358 () Int)

(assert (=> b!2321078 (= c!368153 (= call!138362 (- call!138358 3)))))

(declare-fun b!2321080 () Bool)

(declare-fun e!1487654 () Conc!9067)

(declare-fun call!138363 () Conc!9067)

(assert (=> b!2321080 (= e!1487654 call!138363)))

(declare-fun lt!860398 () Conc!9067)

(declare-fun e!1487642 () Bool)

(declare-fun b!2321081 () Bool)

(assert (=> b!2321081 (= e!1487642 (= (list!11004 lt!860398) (++!6818 (list!11004 acc!252) (list!11004 (Leaf!13310 arr!18 lt!860372)))))))

(declare-fun bm!138343 () Bool)

(declare-fun call!138352 () Conc!9067)

(assert (=> bm!138343 (= call!138363 call!138352)))

(declare-fun b!2321082 () Bool)

(declare-fun res!991576 () Bool)

(assert (=> b!2321082 (=> (not res!991576) (not e!1487642))))

(assert (=> b!2321082 (= res!991576 (isBalanced!2761 lt!860398))))

(declare-fun b!2321084 () Bool)

(declare-fun c!368154 () Bool)

(declare-fun lt!860403 () Int)

(assert (=> b!2321084 (= c!368154 (and (<= (- 1) lt!860403) (<= lt!860403 1)))))

(assert (=> b!2321084 (= lt!860403 (- (height!1328 (Leaf!13310 arr!18 lt!860372)) (height!1328 acc!252)))))

(declare-fun e!1487656 () Conc!9067)

(declare-fun e!1487645 () Conc!9067)

(assert (=> b!2321084 (= e!1487656 e!1487645)))

(declare-fun b!2321085 () Bool)

(declare-fun c!368156 () Bool)

(declare-fun call!138356 () Int)

(declare-fun call!138357 () Int)

(assert (=> b!2321085 (= c!368156 (>= call!138356 call!138357))))

(declare-fun e!1487657 () Conc!9067)

(assert (=> b!2321085 (= e!1487657 e!1487650)))

(declare-fun b!2321087 () Bool)

(declare-fun res!991574 () Bool)

(assert (=> b!2321087 (=> (not res!991574) (not e!1487642))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2321087 (= res!991574 (<= (height!1328 lt!860398) (+ (max!0 (height!1328 acc!252) (height!1328 (Leaf!13310 arr!18 lt!860372))) 1)))))

(declare-fun bm!138346 () Bool)

(declare-fun call!138349 () Conc!9067)

(declare-fun call!138355 () Conc!9067)

(assert (=> bm!138346 (= call!138349 call!138355)))

(declare-fun bm!138348 () Bool)

(declare-fun call!138361 () Conc!9067)

(assert (=> bm!138348 (= call!138361 call!138355)))

(declare-fun b!2321089 () Bool)

(declare-fun e!1487643 () Conc!9067)

(assert (=> b!2321089 (= e!1487643 call!138352)))

(declare-fun b!2321091 () Bool)

(assert (=> b!2321091 (= e!1487656 acc!252)))

(declare-fun c!368149 () Bool)

(declare-fun lt!860400 () Conc!9067)

(declare-fun call!138366 () Conc!9067)

(declare-fun call!138367 () Conc!9067)

(declare-fun c!368148 () Bool)

(declare-fun bm!138350 () Bool)

(declare-fun c!368146 () Bool)

(declare-fun <>!211 (Conc!9067 Conc!9067) Conc!9067)

(assert (=> bm!138350 (= call!138367 (<>!211 (ite c!368154 acc!252 (ite c!368149 (ite c!368156 (left!20997 acc!252) (ite c!368153 (left!20997 (right!21327 acc!252)) (left!20997 acc!252))) (ite c!368148 call!138366 (ite c!368146 call!138349 lt!860400)))) (ite c!368154 (Leaf!13310 arr!18 lt!860372) (ite c!368149 (ite c!368156 call!138368 (ite c!368153 lt!860402 (left!20997 (right!21327 acc!252)))) (ite (or c!368148 c!368146) (right!21327 (Leaf!13310 arr!18 lt!860372)) call!138349)))))))

(declare-fun b!2321094 () Bool)

(assert (=> b!2321094 (= e!1487654 call!138363)))

(declare-fun bm!138351 () Bool)

(declare-fun call!138354 () Conc!9067)

(declare-fun call!138346 () Conc!9067)

(assert (=> bm!138351 (= call!138354 call!138346)))

(declare-fun bm!138353 () Bool)

(assert (=> bm!138353 (= call!138356 (height!1328 (ite c!368149 (left!20997 acc!252) (Leaf!13310 arr!18 lt!860372))))))

(declare-fun bm!138354 () Bool)

(declare-fun call!138365 () Conc!9067)

(assert (=> bm!138354 (= call!138346 call!138365)))

(declare-fun b!2321098 () Bool)

(assert (=> b!2321098 (= c!368148 (>= call!138358 call!138357))))

(assert (=> b!2321098 (= e!1487657 e!1487643)))

(declare-fun bm!138355 () Bool)

(assert (=> bm!138355 (= call!138352 call!138365)))

(declare-fun bm!138356 () Bool)

(assert (=> bm!138356 (= call!138358 (height!1328 (ite c!368149 acc!252 (right!21327 (Leaf!13310 arr!18 lt!860372)))))))

(declare-fun bm!138357 () Bool)

(assert (=> bm!138357 (= call!138365 call!138367)))

(declare-fun b!2321099 () Bool)

(declare-fun res!991577 () Bool)

(assert (=> b!2321099 (=> (not res!991577) (not e!1487642))))

(assert (=> b!2321099 (= res!991577 (>= (height!1328 lt!860398) (max!0 (height!1328 acc!252) (height!1328 (Leaf!13310 arr!18 lt!860372)))))))

(declare-fun bm!138358 () Bool)

(assert (=> bm!138358 (= call!138362 (height!1328 (ite c!368149 lt!860402 lt!860400)))))

(declare-fun b!2321100 () Bool)

(assert (=> b!2321100 (= e!1487645 call!138367)))

(declare-fun b!2321101 () Bool)

(assert (=> b!2321101 (= e!1487653 call!138361)))

(declare-fun b!2321102 () Bool)

(declare-fun e!1487646 () Conc!9067)

(assert (=> b!2321102 (= e!1487646 e!1487656)))

(declare-fun c!368155 () Bool)

(assert (=> b!2321102 (= c!368155 (= (Leaf!13310 arr!18 lt!860372) Empty!9067))))

(declare-fun call!138364 () Conc!9067)

(declare-fun bm!138359 () Bool)

(assert (=> bm!138359 (= call!138364 (++!6817 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252) (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372)))))))))

(declare-fun bm!138360 () Bool)

(assert (=> bm!138360 (= call!138366 call!138364)))

(declare-fun b!2321103 () Bool)

(assert (=> b!2321103 (= e!1487643 e!1487654)))

(assert (=> b!2321103 (= lt!860400 call!138366)))

(assert (=> b!2321103 (= c!368146 (= call!138362 (- call!138356 3)))))

(declare-fun b!2321104 () Bool)

(declare-fun e!1487655 () Bool)

(assert (=> b!2321104 (= e!1487655 (isBalanced!2761 (Leaf!13310 arr!18 lt!860372)))))

(declare-fun bm!138361 () Bool)

(assert (=> bm!138361 (= call!138355 (<>!211 (ite c!368149 (ite c!368153 (left!20997 acc!252) call!138354) (ite c!368146 lt!860400 (right!21327 (left!20997 (Leaf!13310 arr!18 lt!860372))))) (ite c!368149 (ite c!368153 call!138354 lt!860402) (ite c!368146 (right!21327 (left!20997 (Leaf!13310 arr!18 lt!860372))) (right!21327 (Leaf!13310 arr!18 lt!860372))))))))

(declare-fun d!686525 () Bool)

(assert (=> d!686525 e!1487642))

(declare-fun res!991571 () Bool)

(assert (=> d!686525 (=> (not res!991571) (not e!1487642))))

(declare-fun appendAssocInst!605 (Conc!9067 Conc!9067) Bool)

(assert (=> d!686525 (= res!991571 (appendAssocInst!605 acc!252 (Leaf!13310 arr!18 lt!860372)))))

(assert (=> d!686525 (= lt!860398 e!1487646)))

(declare-fun c!368150 () Bool)

(assert (=> d!686525 (= c!368150 (= acc!252 Empty!9067))))

(assert (=> d!686525 e!1487655))

(declare-fun res!991573 () Bool)

(assert (=> d!686525 (=> (not res!991573) (not e!1487655))))

(assert (=> d!686525 (= res!991573 (isBalanced!2761 acc!252))))

(assert (=> d!686525 (= (++!6817 acc!252 (Leaf!13310 arr!18 lt!860372)) lt!860398)))

(declare-fun b!2321105 () Bool)

(assert (=> b!2321105 (= e!1487650 call!138346)))

(declare-fun bm!138362 () Bool)

(assert (=> bm!138362 (= call!138368 call!138364)))

(declare-fun b!2321106 () Bool)

(assert (=> b!2321106 (= e!1487653 call!138361)))

(declare-fun b!2321107 () Bool)

(assert (=> b!2321107 (= e!1487646 (Leaf!13310 arr!18 lt!860372))))

(declare-fun b!2321108 () Bool)

(assert (=> b!2321108 (= e!1487645 e!1487657)))

(assert (=> b!2321108 (= c!368149 (< lt!860403 (- 1)))))

(declare-fun bm!138363 () Bool)

(assert (=> bm!138363 (= call!138357 (height!1328 (ite c!368149 (right!21327 acc!252) (left!20997 (Leaf!13310 arr!18 lt!860372)))))))

(assert (= (and d!686525 res!991573) b!2321104))

(assert (= (and d!686525 c!368150) b!2321107))

(assert (= (and d!686525 (not c!368150)) b!2321102))

(assert (= (and b!2321102 c!368155) b!2321091))

(assert (= (and b!2321102 (not c!368155)) b!2321084))

(assert (= (and b!2321084 c!368154) b!2321100))

(assert (= (and b!2321084 (not c!368154)) b!2321108))

(assert (= (and b!2321108 c!368149) b!2321085))

(assert (= (and b!2321108 (not c!368149)) b!2321098))

(assert (= (and b!2321085 c!368156) b!2321105))

(assert (= (and b!2321085 (not c!368156)) b!2321078))

(assert (= (and b!2321078 c!368153) b!2321106))

(assert (= (and b!2321078 (not c!368153)) b!2321101))

(assert (= (or b!2321106 b!2321101) bm!138351))

(assert (= (or b!2321106 b!2321101) bm!138348))

(assert (= (or b!2321105 b!2321078) bm!138362))

(assert (= (or b!2321105 bm!138351) bm!138354))

(assert (= (and b!2321098 c!368148) b!2321089))

(assert (= (and b!2321098 (not c!368148)) b!2321103))

(assert (= (and b!2321103 c!368146) b!2321094))

(assert (= (and b!2321103 (not c!368146)) b!2321080))

(assert (= (or b!2321094 b!2321080) bm!138346))

(assert (= (or b!2321094 b!2321080) bm!138343))

(assert (= (or b!2321089 b!2321103) bm!138360))

(assert (= (or b!2321089 bm!138343) bm!138355))

(assert (= (or b!2321085 b!2321098) bm!138363))

(assert (= (or b!2321078 b!2321098) bm!138356))

(assert (= (or b!2321078 b!2321103) bm!138358))

(assert (= (or b!2321085 b!2321103) bm!138353))

(assert (= (or bm!138362 bm!138360) bm!138359))

(assert (= (or bm!138354 bm!138355) bm!138357))

(assert (= (or bm!138348 bm!138346) bm!138361))

(assert (= (or b!2321100 bm!138357) bm!138350))

(assert (= (and d!686525 res!991571) b!2321082))

(assert (= (and b!2321082 res!991576) b!2321087))

(assert (= (and b!2321087 res!991574) b!2321099))

(assert (= (and b!2321099 res!991577) b!2321081))

(declare-fun m!2750067 () Bool)

(assert (=> bm!138363 m!2750067))

(declare-fun m!2750073 () Bool)

(assert (=> d!686525 m!2750073))

(assert (=> d!686525 m!2749965))

(declare-fun m!2750079 () Bool)

(assert (=> bm!138356 m!2750079))

(declare-fun m!2750083 () Bool)

(assert (=> bm!138358 m!2750083))

(declare-fun m!2750085 () Bool)

(assert (=> bm!138353 m!2750085))

(declare-fun m!2750087 () Bool)

(assert (=> b!2321081 m!2750087))

(assert (=> b!2321081 m!2749973))

(declare-fun m!2750089 () Bool)

(assert (=> b!2321081 m!2750089))

(assert (=> b!2321081 m!2749973))

(assert (=> b!2321081 m!2750089))

(declare-fun m!2750095 () Bool)

(assert (=> b!2321081 m!2750095))

(declare-fun m!2750101 () Bool)

(assert (=> bm!138350 m!2750101))

(declare-fun m!2750103 () Bool)

(assert (=> bm!138361 m!2750103))

(declare-fun m!2750105 () Bool)

(assert (=> b!2321099 m!2750105))

(declare-fun m!2750107 () Bool)

(assert (=> b!2321099 m!2750107))

(declare-fun m!2750109 () Bool)

(assert (=> b!2321099 m!2750109))

(assert (=> b!2321099 m!2750107))

(assert (=> b!2321099 m!2750109))

(declare-fun m!2750111 () Bool)

(assert (=> b!2321099 m!2750111))

(assert (=> b!2321084 m!2750109))

(assert (=> b!2321084 m!2750107))

(declare-fun m!2750113 () Bool)

(assert (=> bm!138359 m!2750113))

(declare-fun m!2750115 () Bool)

(assert (=> b!2321082 m!2750115))

(assert (=> b!2321087 m!2750105))

(assert (=> b!2321087 m!2750107))

(assert (=> b!2321087 m!2750109))

(assert (=> b!2321087 m!2750107))

(assert (=> b!2321087 m!2750109))

(assert (=> b!2321087 m!2750111))

(declare-fun m!2750117 () Bool)

(assert (=> b!2321104 m!2750117))

(assert (=> b!2320907 d!686525))

(declare-fun b!2321109 () Bool)

(declare-fun e!1487659 () Bool)

(declare-fun e!1487658 () Bool)

(assert (=> b!2321109 (= e!1487659 e!1487658)))

(declare-fun res!991579 () Bool)

(assert (=> b!2321109 (=> (not res!991579) (not e!1487658))))

(assert (=> b!2321109 (= res!991579 (<= (- 1) (- (height!1328 (left!20997 acc!252)) (height!1328 (right!21327 acc!252)))))))

(declare-fun b!2321110 () Bool)

(declare-fun res!991580 () Bool)

(assert (=> b!2321110 (=> (not res!991580) (not e!1487658))))

(assert (=> b!2321110 (= res!991580 (not (isEmpty!15790 (left!20997 acc!252))))))

(declare-fun d!686537 () Bool)

(declare-fun res!991583 () Bool)

(assert (=> d!686537 (=> res!991583 e!1487659)))

(assert (=> d!686537 (= res!991583 (not ((_ is Node!9067) acc!252)))))

(assert (=> d!686537 (= (isBalanced!2761 acc!252) e!1487659)))

(declare-fun b!2321111 () Bool)

(declare-fun res!991582 () Bool)

(assert (=> b!2321111 (=> (not res!991582) (not e!1487658))))

(assert (=> b!2321111 (= res!991582 (isBalanced!2761 (left!20997 acc!252)))))

(declare-fun b!2321112 () Bool)

(declare-fun res!991581 () Bool)

(assert (=> b!2321112 (=> (not res!991581) (not e!1487658))))

(assert (=> b!2321112 (= res!991581 (<= (- (height!1328 (left!20997 acc!252)) (height!1328 (right!21327 acc!252))) 1))))

(declare-fun b!2321113 () Bool)

(assert (=> b!2321113 (= e!1487658 (not (isEmpty!15790 (right!21327 acc!252))))))

(declare-fun b!2321114 () Bool)

(declare-fun res!991578 () Bool)

(assert (=> b!2321114 (=> (not res!991578) (not e!1487658))))

(assert (=> b!2321114 (= res!991578 (isBalanced!2761 (right!21327 acc!252)))))

(assert (= (and d!686537 (not res!991583)) b!2321109))

(assert (= (and b!2321109 res!991579) b!2321112))

(assert (= (and b!2321112 res!991581) b!2321111))

(assert (= (and b!2321111 res!991582) b!2321114))

(assert (= (and b!2321114 res!991578) b!2321110))

(assert (= (and b!2321110 res!991580) b!2321113))

(declare-fun m!2750119 () Bool)

(assert (=> b!2321109 m!2750119))

(declare-fun m!2750121 () Bool)

(assert (=> b!2321109 m!2750121))

(declare-fun m!2750123 () Bool)

(assert (=> b!2321111 m!2750123))

(declare-fun m!2750125 () Bool)

(assert (=> b!2321114 m!2750125))

(declare-fun m!2750127 () Bool)

(assert (=> b!2321113 m!2750127))

(assert (=> b!2321112 m!2750119))

(assert (=> b!2321112 m!2750121))

(declare-fun m!2750129 () Bool)

(assert (=> b!2321110 m!2750129))

(assert (=> start!229078 d!686537))

(declare-fun d!686539 () Bool)

(declare-fun c!368161 () Bool)

(assert (=> d!686539 (= c!368161 ((_ is Node!9067) acc!252))))

(declare-fun e!1487664 () Bool)

(assert (=> d!686539 (= (inv!37611 acc!252) e!1487664)))

(declare-fun b!2321123 () Bool)

(assert (=> b!2321123 (= e!1487664 (inv!37614 acc!252))))

(declare-fun b!2321124 () Bool)

(declare-fun e!1487665 () Bool)

(assert (=> b!2321124 (= e!1487664 e!1487665)))

(declare-fun res!991584 () Bool)

(assert (=> b!2321124 (= res!991584 (not ((_ is Leaf!13310) acc!252)))))

(assert (=> b!2321124 (=> res!991584 e!1487665)))

(declare-fun b!2321125 () Bool)

(assert (=> b!2321125 (= e!1487665 (inv!37615 acc!252))))

(assert (= (and d!686539 c!368161) b!2321123))

(assert (= (and d!686539 (not c!368161)) b!2321124))

(assert (= (and b!2321124 (not res!991584)) b!2321125))

(declare-fun m!2750131 () Bool)

(assert (=> b!2321123 m!2750131))

(declare-fun m!2750133 () Bool)

(assert (=> b!2321125 m!2750133))

(assert (=> start!229078 d!686539))

(declare-fun d!686541 () Bool)

(assert (=> d!686541 (= (inv!37610 arr!18) (<= (size!21920 (innerList!9127 arr!18)) 2147483647))))

(declare-fun bs!459038 () Bool)

(assert (= bs!459038 d!686541))

(declare-fun m!2750135 () Bool)

(assert (=> bs!459038 m!2750135))

(assert (=> start!229078 d!686541))

(declare-fun d!686543 () Bool)

(assert (=> d!686543 (= (inv!37610 (xs!12027 acc!252)) (<= (size!21920 (innerList!9127 (xs!12027 acc!252))) 2147483647))))

(declare-fun bs!459039 () Bool)

(assert (= bs!459039 d!686543))

(declare-fun m!2750137 () Bool)

(assert (=> bs!459039 m!2750137))

(assert (=> b!2320910 d!686543))

(declare-fun b!2321149 () Bool)

(declare-fun e!1487677 () List!27760)

(assert (=> b!2321149 (= e!1487677 (++!6818 (list!11004 (left!20997 lt!860373)) (list!11004 (right!21327 lt!860373))))))

(declare-fun b!2321147 () Bool)

(declare-fun e!1487676 () List!27760)

(assert (=> b!2321147 (= e!1487676 e!1487677)))

(declare-fun c!368171 () Bool)

(assert (=> b!2321147 (= c!368171 ((_ is Leaf!13310) lt!860373))))

(declare-fun d!686545 () Bool)

(declare-fun c!368170 () Bool)

(assert (=> d!686545 (= c!368170 ((_ is Empty!9067) lt!860373))))

(assert (=> d!686545 (= (list!11004 lt!860373) e!1487676)))

(declare-fun b!2321146 () Bool)

(assert (=> b!2321146 (= e!1487676 Nil!27662)))

(declare-fun b!2321148 () Bool)

(assert (=> b!2321148 (= e!1487677 (list!11005 (xs!12027 lt!860373)))))

(assert (= (and d!686545 c!368170) b!2321146))

(assert (= (and d!686545 (not c!368170)) b!2321147))

(assert (= (and b!2321147 c!368171) b!2321148))

(assert (= (and b!2321147 (not c!368171)) b!2321149))

(declare-fun m!2750147 () Bool)

(assert (=> b!2321149 m!2750147))

(declare-fun m!2750149 () Bool)

(assert (=> b!2321149 m!2750149))

(assert (=> b!2321149 m!2750147))

(assert (=> b!2321149 m!2750149))

(declare-fun m!2750151 () Bool)

(assert (=> b!2321149 m!2750151))

(declare-fun m!2750153 () Bool)

(assert (=> b!2321148 m!2750153))

(assert (=> b!2320909 d!686545))

(declare-fun b!2321186 () Bool)

(declare-fun e!1487699 () List!27760)

(assert (=> b!2321186 (= e!1487699 (list!11005 arr!18))))

(declare-fun d!686549 () Bool)

(declare-fun e!1487698 () Bool)

(assert (=> d!686549 e!1487698))

(declare-fun res!991596 () Bool)

(assert (=> d!686549 (=> (not res!991596) (not e!1487698))))

(declare-fun lt!860409 () List!27760)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3739 (List!27760) (InoxSet T!43866))

(assert (=> d!686549 (= res!991596 (= (content!3739 lt!860409) ((_ map or) (content!3739 (list!11004 acc!252)) (content!3739 (list!11005 arr!18)))))))

(assert (=> d!686549 (= lt!860409 e!1487699)))

(declare-fun c!368177 () Bool)

(assert (=> d!686549 (= c!368177 ((_ is Nil!27662) (list!11004 acc!252)))))

(assert (=> d!686549 (= (++!6818 (list!11004 acc!252) (list!11005 arr!18)) lt!860409)))

(declare-fun b!2321187 () Bool)

(assert (=> b!2321187 (= e!1487699 (Cons!27662 (h!33063 (list!11004 acc!252)) (++!6818 (t!207422 (list!11004 acc!252)) (list!11005 arr!18))))))

(declare-fun b!2321188 () Bool)

(declare-fun res!991595 () Bool)

(assert (=> b!2321188 (=> (not res!991595) (not e!1487698))))

(assert (=> b!2321188 (= res!991595 (= (size!21920 lt!860409) (+ (size!21920 (list!11004 acc!252)) (size!21920 (list!11005 arr!18)))))))

(declare-fun b!2321189 () Bool)

(assert (=> b!2321189 (= e!1487698 (or (not (= (list!11005 arr!18) Nil!27662)) (= lt!860409 (list!11004 acc!252))))))

(assert (= (and d!686549 c!368177) b!2321186))

(assert (= (and d!686549 (not c!368177)) b!2321187))

(assert (= (and d!686549 res!991596) b!2321188))

(assert (= (and b!2321188 res!991595) b!2321189))

(declare-fun m!2750187 () Bool)

(assert (=> d!686549 m!2750187))

(assert (=> d!686549 m!2749973))

(declare-fun m!2750189 () Bool)

(assert (=> d!686549 m!2750189))

(assert (=> d!686549 m!2749975))

(declare-fun m!2750191 () Bool)

(assert (=> d!686549 m!2750191))

(assert (=> b!2321187 m!2749975))

(declare-fun m!2750193 () Bool)

(assert (=> b!2321187 m!2750193))

(declare-fun m!2750195 () Bool)

(assert (=> b!2321188 m!2750195))

(assert (=> b!2321188 m!2749973))

(declare-fun m!2750197 () Bool)

(assert (=> b!2321188 m!2750197))

(assert (=> b!2321188 m!2749975))

(assert (=> b!2321188 m!2749983))

(assert (=> b!2320909 d!686549))

(declare-fun b!2321193 () Bool)

(declare-fun e!1487701 () List!27760)

(assert (=> b!2321193 (= e!1487701 (++!6818 (list!11004 (left!20997 acc!252)) (list!11004 (right!21327 acc!252))))))

(declare-fun b!2321191 () Bool)

(declare-fun e!1487700 () List!27760)

(assert (=> b!2321191 (= e!1487700 e!1487701)))

(declare-fun c!368179 () Bool)

(assert (=> b!2321191 (= c!368179 ((_ is Leaf!13310) acc!252))))

(declare-fun d!686555 () Bool)

(declare-fun c!368178 () Bool)

(assert (=> d!686555 (= c!368178 ((_ is Empty!9067) acc!252))))

(assert (=> d!686555 (= (list!11004 acc!252) e!1487700)))

(declare-fun b!2321190 () Bool)

(assert (=> b!2321190 (= e!1487700 Nil!27662)))

(declare-fun b!2321192 () Bool)

(assert (=> b!2321192 (= e!1487701 (list!11005 (xs!12027 acc!252)))))

(assert (= (and d!686555 c!368178) b!2321190))

(assert (= (and d!686555 (not c!368178)) b!2321191))

(assert (= (and b!2321191 c!368179) b!2321192))

(assert (= (and b!2321191 (not c!368179)) b!2321193))

(declare-fun m!2750199 () Bool)

(assert (=> b!2321193 m!2750199))

(declare-fun m!2750201 () Bool)

(assert (=> b!2321193 m!2750201))

(assert (=> b!2321193 m!2750199))

(assert (=> b!2321193 m!2750201))

(declare-fun m!2750203 () Bool)

(assert (=> b!2321193 m!2750203))

(declare-fun m!2750205 () Bool)

(assert (=> b!2321192 m!2750205))

(assert (=> b!2320909 d!686555))

(declare-fun d!686557 () Bool)

(assert (=> d!686557 (= (list!11005 arr!18) (innerList!9127 arr!18))))

(assert (=> b!2320909 d!686557))

(declare-fun tp!736523 () Bool)

(declare-fun tp!736524 () Bool)

(declare-fun b!2321202 () Bool)

(declare-fun e!1487706 () Bool)

(assert (=> b!2321202 (= e!1487706 (and (inv!37611 (left!20997 (left!20997 acc!252))) tp!736524 (inv!37611 (right!21327 (left!20997 acc!252))) tp!736523))))

(declare-fun b!2321204 () Bool)

(declare-fun e!1487707 () Bool)

(declare-fun tp!736522 () Bool)

(assert (=> b!2321204 (= e!1487707 tp!736522)))

(declare-fun b!2321203 () Bool)

(assert (=> b!2321203 (= e!1487706 (and (inv!37610 (xs!12027 (left!20997 acc!252))) e!1487707))))

(assert (=> b!2320913 (= tp!736499 (and (inv!37611 (left!20997 acc!252)) e!1487706))))

(assert (= (and b!2320913 ((_ is Node!9067) (left!20997 acc!252))) b!2321202))

(assert (= b!2321203 b!2321204))

(assert (= (and b!2320913 ((_ is Leaf!13310) (left!20997 acc!252))) b!2321203))

(declare-fun m!2750207 () Bool)

(assert (=> b!2321202 m!2750207))

(declare-fun m!2750209 () Bool)

(assert (=> b!2321202 m!2750209))

(declare-fun m!2750211 () Bool)

(assert (=> b!2321203 m!2750211))

(assert (=> b!2320913 m!2749961))

(declare-fun b!2321205 () Bool)

(declare-fun e!1487708 () Bool)

(declare-fun tp!736526 () Bool)

(declare-fun tp!736527 () Bool)

(assert (=> b!2321205 (= e!1487708 (and (inv!37611 (left!20997 (right!21327 acc!252))) tp!736527 (inv!37611 (right!21327 (right!21327 acc!252))) tp!736526))))

(declare-fun b!2321207 () Bool)

(declare-fun e!1487709 () Bool)

(declare-fun tp!736525 () Bool)

(assert (=> b!2321207 (= e!1487709 tp!736525)))

(declare-fun b!2321206 () Bool)

(assert (=> b!2321206 (= e!1487708 (and (inv!37610 (xs!12027 (right!21327 acc!252))) e!1487709))))

(assert (=> b!2320913 (= tp!736496 (and (inv!37611 (right!21327 acc!252)) e!1487708))))

(assert (= (and b!2320913 ((_ is Node!9067) (right!21327 acc!252))) b!2321205))

(assert (= b!2321206 b!2321207))

(assert (= (and b!2320913 ((_ is Leaf!13310) (right!21327 acc!252))) b!2321206))

(declare-fun m!2750213 () Bool)

(assert (=> b!2321205 m!2750213))

(declare-fun m!2750215 () Bool)

(assert (=> b!2321205 m!2750215))

(declare-fun m!2750217 () Bool)

(assert (=> b!2321206 m!2750217))

(assert (=> b!2320913 m!2749963))

(declare-fun b!2321212 () Bool)

(declare-fun e!1487712 () Bool)

(declare-fun tp_is_empty!10821 () Bool)

(declare-fun tp!736530 () Bool)

(assert (=> b!2321212 (= e!1487712 (and tp_is_empty!10821 tp!736530))))

(assert (=> b!2320912 (= tp!736498 e!1487712)))

(assert (= (and b!2320912 ((_ is Cons!27662) (innerList!9127 (xs!12027 acc!252)))) b!2321212))

(declare-fun b!2321213 () Bool)

(declare-fun e!1487713 () Bool)

(declare-fun tp!736531 () Bool)

(assert (=> b!2321213 (= e!1487713 (and tp_is_empty!10821 tp!736531))))

(assert (=> b!2320911 (= tp!736497 e!1487713)))

(assert (= (and b!2320911 ((_ is Cons!27662) (innerList!9127 arr!18))) b!2321213))

(check-sat (not b!2321087) (not bm!138356) (not d!686507) (not b!2320962) (not b!2321082) (not bm!138350) (not bm!138359) (not b!2321212) tp_is_empty!10821 (not bm!138361) (not b!2320967) (not b!2320925) (not b!2321114) (not b!2321125) (not b!2320966) (not b!2321187) (not b!2320963) (not b!2321123) (not b!2321213) (not b!2321112) (not d!686525) (not b!2320964) (not b!2321188) (not b!2321149) (not b!2321193) (not b!2321099) (not d!686543) (not b!2321081) (not b!2320913) (not b!2321113) (not d!686541) (not b!2320928) (not bm!138358) (not b!2321148) (not b!2321109) (not b!2321204) (not b!2321104) (not bm!138353) (not b!2321203) (not b!2320931) (not b!2321207) (not d!686549) (not b!2321206) (not b!2321205) (not b!2321084) (not b!2321192) (not b!2321110) (not b!2320929) (not bm!138363) (not b!2321111) (not b!2321202) (not b!2320965))
(check-sat)
(get-model)

(declare-fun d!686559 () Bool)

(declare-fun res!991601 () Bool)

(declare-fun e!1487716 () Bool)

(assert (=> d!686559 (=> (not res!991601) (not e!1487716))))

(assert (=> d!686559 (= res!991601 (<= (size!21920 (list!11005 (xs!12027 (right!21327 acc!252)))) 512))))

(assert (=> d!686559 (= (inv!37615 (right!21327 acc!252)) e!1487716)))

(declare-fun b!2321218 () Bool)

(declare-fun res!991602 () Bool)

(assert (=> b!2321218 (=> (not res!991602) (not e!1487716))))

(assert (=> b!2321218 (= res!991602 (= (csize!18365 (right!21327 acc!252)) (size!21920 (list!11005 (xs!12027 (right!21327 acc!252))))))))

(declare-fun b!2321219 () Bool)

(assert (=> b!2321219 (= e!1487716 (and (> (csize!18365 (right!21327 acc!252)) 0) (<= (csize!18365 (right!21327 acc!252)) 512)))))

(assert (= (and d!686559 res!991601) b!2321218))

(assert (= (and b!2321218 res!991602) b!2321219))

(declare-fun m!2750219 () Bool)

(assert (=> d!686559 m!2750219))

(assert (=> d!686559 m!2750219))

(declare-fun m!2750221 () Bool)

(assert (=> d!686559 m!2750221))

(assert (=> b!2321218 m!2750219))

(assert (=> b!2321218 m!2750219))

(assert (=> b!2321218 m!2750221))

(assert (=> b!2320931 d!686559))

(declare-fun b!2321220 () Bool)

(declare-fun e!1487721 () Conc!9067)

(declare-fun e!1487722 () Conc!9067)

(assert (=> b!2321220 (= e!1487721 e!1487722)))

(declare-fun lt!860412 () Conc!9067)

(declare-fun call!138384 () Conc!9067)

(assert (=> b!2321220 (= lt!860412 call!138384)))

(declare-fun c!368184 () Bool)

(declare-fun call!138378 () Int)

(declare-fun call!138376 () Int)

(assert (=> b!2321220 (= c!368184 (= call!138378 (- call!138376 3)))))

(declare-fun b!2321221 () Bool)

(declare-fun e!1487723 () Conc!9067)

(declare-fun call!138379 () Conc!9067)

(assert (=> b!2321221 (= e!1487723 call!138379)))

(declare-fun b!2321222 () Bool)

(declare-fun lt!860410 () Conc!9067)

(declare-fun e!1487717 () Bool)

(assert (=> b!2321222 (= e!1487717 (= (list!11004 lt!860410) (++!6818 (list!11004 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252)) (list!11004 (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372)))))))))))

(declare-fun bm!138364 () Bool)

(declare-fun call!138371 () Conc!9067)

(assert (=> bm!138364 (= call!138379 call!138371)))

(declare-fun b!2321223 () Bool)

(declare-fun res!991606 () Bool)

(assert (=> b!2321223 (=> (not res!991606) (not e!1487717))))

(assert (=> b!2321223 (= res!991606 (isBalanced!2761 lt!860410))))

(declare-fun b!2321224 () Bool)

(declare-fun c!368185 () Bool)

(declare-fun lt!860413 () Int)

(assert (=> b!2321224 (= c!368185 (and (<= (- 1) lt!860413) (<= lt!860413 1)))))

(assert (=> b!2321224 (= lt!860413 (- (height!1328 (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372)))))) (height!1328 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252))))))

(declare-fun e!1487725 () Conc!9067)

(declare-fun e!1487719 () Conc!9067)

(assert (=> b!2321224 (= e!1487725 e!1487719)))

(declare-fun b!2321225 () Bool)

(declare-fun c!368187 () Bool)

(declare-fun call!138374 () Int)

(declare-fun call!138375 () Int)

(assert (=> b!2321225 (= c!368187 (>= call!138374 call!138375))))

(declare-fun e!1487726 () Conc!9067)

(assert (=> b!2321225 (= e!1487726 e!1487721)))

(declare-fun b!2321226 () Bool)

(declare-fun res!991605 () Bool)

(assert (=> b!2321226 (=> (not res!991605) (not e!1487717))))

(assert (=> b!2321226 (= res!991605 (<= (height!1328 lt!860410) (+ (max!0 (height!1328 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252)) (height!1328 (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372))))))) 1)))))

(declare-fun bm!138365 () Bool)

(declare-fun call!138370 () Conc!9067)

(declare-fun call!138373 () Conc!9067)

(assert (=> bm!138365 (= call!138370 call!138373)))

(declare-fun bm!138366 () Bool)

(declare-fun call!138377 () Conc!9067)

(assert (=> bm!138366 (= call!138377 call!138373)))

(declare-fun b!2321227 () Bool)

(declare-fun e!1487718 () Conc!9067)

(assert (=> b!2321227 (= e!1487718 call!138371)))

(declare-fun b!2321228 () Bool)

(assert (=> b!2321228 (= e!1487725 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252))))

(declare-fun lt!860411 () Conc!9067)

(declare-fun c!368181 () Bool)

(declare-fun bm!138367 () Bool)

(declare-fun c!368182 () Bool)

(declare-fun c!368180 () Bool)

(declare-fun call!138383 () Conc!9067)

(declare-fun call!138382 () Conc!9067)

(assert (=> bm!138367 (= call!138383 (<>!211 (ite c!368185 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252) (ite c!368182 (ite c!368187 (left!20997 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252)) (ite c!368184 (left!20997 (right!21327 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252))) (left!20997 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252)))) (ite c!368181 call!138382 (ite c!368180 call!138370 lt!860411)))) (ite c!368185 (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372))))) (ite c!368182 (ite c!368187 call!138384 (ite c!368184 lt!860412 (left!20997 (right!21327 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252))))) (ite (or c!368181 c!368180) (right!21327 (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372)))))) call!138370)))))))

(declare-fun b!2321229 () Bool)

(assert (=> b!2321229 (= e!1487723 call!138379)))

(declare-fun bm!138368 () Bool)

(declare-fun call!138372 () Conc!9067)

(declare-fun call!138369 () Conc!9067)

(assert (=> bm!138368 (= call!138372 call!138369)))

(declare-fun bm!138369 () Bool)

(assert (=> bm!138369 (= call!138374 (height!1328 (ite c!368182 (left!20997 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252)) (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372))))))))))

(declare-fun bm!138370 () Bool)

(declare-fun call!138381 () Conc!9067)

(assert (=> bm!138370 (= call!138369 call!138381)))

(declare-fun b!2321230 () Bool)

(assert (=> b!2321230 (= c!368181 (>= call!138376 call!138375))))

(assert (=> b!2321230 (= e!1487726 e!1487718)))

(declare-fun bm!138371 () Bool)

(assert (=> bm!138371 (= call!138371 call!138381)))

(declare-fun bm!138372 () Bool)

(assert (=> bm!138372 (= call!138376 (height!1328 (ite c!368182 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252) (right!21327 (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372)))))))))))

(declare-fun bm!138373 () Bool)

(assert (=> bm!138373 (= call!138381 call!138383)))

(declare-fun b!2321231 () Bool)

(declare-fun res!991607 () Bool)

(assert (=> b!2321231 (=> (not res!991607) (not e!1487717))))

(assert (=> b!2321231 (= res!991607 (>= (height!1328 lt!860410) (max!0 (height!1328 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252)) (height!1328 (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372)))))))))))

(declare-fun bm!138374 () Bool)

(assert (=> bm!138374 (= call!138378 (height!1328 (ite c!368182 lt!860412 lt!860411)))))

(declare-fun b!2321232 () Bool)

(assert (=> b!2321232 (= e!1487719 call!138383)))

(declare-fun b!2321233 () Bool)

(assert (=> b!2321233 (= e!1487722 call!138377)))

(declare-fun b!2321234 () Bool)

(declare-fun e!1487720 () Conc!9067)

(assert (=> b!2321234 (= e!1487720 e!1487725)))

(declare-fun c!368186 () Bool)

(assert (=> b!2321234 (= c!368186 (= (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372))))) Empty!9067))))

(declare-fun bm!138375 () Bool)

(declare-fun call!138380 () Conc!9067)

(assert (=> bm!138375 (= call!138380 (++!6817 (ite c!368182 (ite c!368187 (right!21327 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252)) (right!21327 (right!21327 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252)))) (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252)) (ite c!368182 (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372))))) (ite c!368181 (left!20997 (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372)))))) (left!20997 (left!20997 (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372)))))))))))))

(declare-fun bm!138376 () Bool)

(assert (=> bm!138376 (= call!138382 call!138380)))

(declare-fun b!2321235 () Bool)

(assert (=> b!2321235 (= e!1487718 e!1487723)))

(assert (=> b!2321235 (= lt!860411 call!138382)))

(assert (=> b!2321235 (= c!368180 (= call!138378 (- call!138374 3)))))

(declare-fun e!1487724 () Bool)

(declare-fun b!2321236 () Bool)

(assert (=> b!2321236 (= e!1487724 (isBalanced!2761 (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372)))))))))

(declare-fun bm!138377 () Bool)

(assert (=> bm!138377 (= call!138373 (<>!211 (ite c!368182 (ite c!368184 (left!20997 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252)) call!138372) (ite c!368180 lt!860411 (right!21327 (left!20997 (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372))))))))) (ite c!368182 (ite c!368184 call!138372 lt!860412) (ite c!368180 (right!21327 (left!20997 (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372))))))) (right!21327 (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372))))))))))))

(declare-fun d!686561 () Bool)

(assert (=> d!686561 e!1487717))

(declare-fun res!991603 () Bool)

(assert (=> d!686561 (=> (not res!991603) (not e!1487717))))

(assert (=> d!686561 (= res!991603 (appendAssocInst!605 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252) (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372)))))))))

(assert (=> d!686561 (= lt!860410 e!1487720)))

(declare-fun c!368183 () Bool)

(assert (=> d!686561 (= c!368183 (= (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252) Empty!9067))))

(assert (=> d!686561 e!1487724))

(declare-fun res!991604 () Bool)

(assert (=> d!686561 (=> (not res!991604) (not e!1487724))))

(assert (=> d!686561 (= res!991604 (isBalanced!2761 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252)))))

(assert (=> d!686561 (= (++!6817 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252) (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372)))))) lt!860410)))

(declare-fun b!2321237 () Bool)

(assert (=> b!2321237 (= e!1487721 call!138369)))

(declare-fun bm!138378 () Bool)

(assert (=> bm!138378 (= call!138384 call!138380)))

(declare-fun b!2321238 () Bool)

(assert (=> b!2321238 (= e!1487722 call!138377)))

(declare-fun b!2321239 () Bool)

(assert (=> b!2321239 (= e!1487720 (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372))))))))

(declare-fun b!2321240 () Bool)

(assert (=> b!2321240 (= e!1487719 e!1487726)))

(assert (=> b!2321240 (= c!368182 (< lt!860413 (- 1)))))

(declare-fun bm!138379 () Bool)

(assert (=> bm!138379 (= call!138375 (height!1328 (ite c!368182 (right!21327 (ite c!368149 (ite c!368156 (right!21327 acc!252) (right!21327 (right!21327 acc!252))) acc!252)) (left!20997 (ite c!368149 (Leaf!13310 arr!18 lt!860372) (ite c!368148 (left!20997 (Leaf!13310 arr!18 lt!860372)) (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372)))))))))))

(assert (= (and d!686561 res!991604) b!2321236))

(assert (= (and d!686561 c!368183) b!2321239))

(assert (= (and d!686561 (not c!368183)) b!2321234))

(assert (= (and b!2321234 c!368186) b!2321228))

(assert (= (and b!2321234 (not c!368186)) b!2321224))

(assert (= (and b!2321224 c!368185) b!2321232))

(assert (= (and b!2321224 (not c!368185)) b!2321240))

(assert (= (and b!2321240 c!368182) b!2321225))

(assert (= (and b!2321240 (not c!368182)) b!2321230))

(assert (= (and b!2321225 c!368187) b!2321237))

(assert (= (and b!2321225 (not c!368187)) b!2321220))

(assert (= (and b!2321220 c!368184) b!2321238))

(assert (= (and b!2321220 (not c!368184)) b!2321233))

(assert (= (or b!2321238 b!2321233) bm!138368))

(assert (= (or b!2321238 b!2321233) bm!138366))

(assert (= (or b!2321237 b!2321220) bm!138378))

(assert (= (or b!2321237 bm!138368) bm!138370))

(assert (= (and b!2321230 c!368181) b!2321227))

(assert (= (and b!2321230 (not c!368181)) b!2321235))

(assert (= (and b!2321235 c!368180) b!2321229))

(assert (= (and b!2321235 (not c!368180)) b!2321221))

(assert (= (or b!2321229 b!2321221) bm!138365))

(assert (= (or b!2321229 b!2321221) bm!138364))

(assert (= (or b!2321227 b!2321235) bm!138376))

(assert (= (or b!2321227 bm!138364) bm!138371))

(assert (= (or b!2321225 b!2321230) bm!138379))

(assert (= (or b!2321220 b!2321230) bm!138372))

(assert (= (or b!2321220 b!2321235) bm!138374))

(assert (= (or b!2321225 b!2321235) bm!138369))

(assert (= (or bm!138378 bm!138376) bm!138375))

(assert (= (or bm!138370 bm!138371) bm!138373))

(assert (= (or bm!138366 bm!138365) bm!138377))

(assert (= (or b!2321232 bm!138373) bm!138367))

(assert (= (and d!686561 res!991603) b!2321223))

(assert (= (and b!2321223 res!991606) b!2321226))

(assert (= (and b!2321226 res!991605) b!2321231))

(assert (= (and b!2321231 res!991607) b!2321222))

(declare-fun m!2750223 () Bool)

(assert (=> bm!138379 m!2750223))

(declare-fun m!2750225 () Bool)

(assert (=> d!686561 m!2750225))

(declare-fun m!2750227 () Bool)

(assert (=> d!686561 m!2750227))

(declare-fun m!2750229 () Bool)

(assert (=> bm!138372 m!2750229))

(declare-fun m!2750231 () Bool)

(assert (=> bm!138374 m!2750231))

(declare-fun m!2750233 () Bool)

(assert (=> bm!138369 m!2750233))

(declare-fun m!2750235 () Bool)

(assert (=> b!2321222 m!2750235))

(declare-fun m!2750237 () Bool)

(assert (=> b!2321222 m!2750237))

(declare-fun m!2750239 () Bool)

(assert (=> b!2321222 m!2750239))

(assert (=> b!2321222 m!2750237))

(assert (=> b!2321222 m!2750239))

(declare-fun m!2750241 () Bool)

(assert (=> b!2321222 m!2750241))

(declare-fun m!2750243 () Bool)

(assert (=> bm!138367 m!2750243))

(declare-fun m!2750245 () Bool)

(assert (=> bm!138377 m!2750245))

(declare-fun m!2750247 () Bool)

(assert (=> b!2321231 m!2750247))

(declare-fun m!2750249 () Bool)

(assert (=> b!2321231 m!2750249))

(declare-fun m!2750251 () Bool)

(assert (=> b!2321231 m!2750251))

(assert (=> b!2321231 m!2750249))

(assert (=> b!2321231 m!2750251))

(declare-fun m!2750253 () Bool)

(assert (=> b!2321231 m!2750253))

(assert (=> b!2321224 m!2750251))

(assert (=> b!2321224 m!2750249))

(declare-fun m!2750255 () Bool)

(assert (=> bm!138375 m!2750255))

(declare-fun m!2750257 () Bool)

(assert (=> b!2321223 m!2750257))

(assert (=> b!2321226 m!2750247))

(assert (=> b!2321226 m!2750249))

(assert (=> b!2321226 m!2750251))

(assert (=> b!2321226 m!2750249))

(assert (=> b!2321226 m!2750251))

(assert (=> b!2321226 m!2750253))

(declare-fun m!2750259 () Bool)

(assert (=> b!2321236 m!2750259))

(assert (=> bm!138359 d!686561))

(declare-fun d!686563 () Bool)

(assert (=> d!686563 (= (inv!37610 (xs!12027 (left!20997 acc!252))) (<= (size!21920 (innerList!9127 (xs!12027 (left!20997 acc!252)))) 2147483647))))

(declare-fun bs!459040 () Bool)

(assert (= bs!459040 d!686563))

(declare-fun m!2750261 () Bool)

(assert (=> bs!459040 m!2750261))

(assert (=> b!2321203 d!686563))

(declare-fun d!686565 () Bool)

(declare-fun res!991614 () Bool)

(declare-fun e!1487729 () Bool)

(assert (=> d!686565 (=> (not res!991614) (not e!1487729))))

(declare-fun size!21921 (Conc!9067) Int)

(assert (=> d!686565 (= res!991614 (= (csize!18364 (right!21327 acc!252)) (+ (size!21921 (left!20997 (right!21327 acc!252))) (size!21921 (right!21327 (right!21327 acc!252))))))))

(assert (=> d!686565 (= (inv!37614 (right!21327 acc!252)) e!1487729)))

(declare-fun b!2321247 () Bool)

(declare-fun res!991615 () Bool)

(assert (=> b!2321247 (=> (not res!991615) (not e!1487729))))

(assert (=> b!2321247 (= res!991615 (and (not (= (left!20997 (right!21327 acc!252)) Empty!9067)) (not (= (right!21327 (right!21327 acc!252)) Empty!9067))))))

(declare-fun b!2321248 () Bool)

(declare-fun res!991616 () Bool)

(assert (=> b!2321248 (=> (not res!991616) (not e!1487729))))

(assert (=> b!2321248 (= res!991616 (= (cheight!9278 (right!21327 acc!252)) (+ (max!0 (height!1328 (left!20997 (right!21327 acc!252))) (height!1328 (right!21327 (right!21327 acc!252)))) 1)))))

(declare-fun b!2321249 () Bool)

(assert (=> b!2321249 (= e!1487729 (<= 0 (cheight!9278 (right!21327 acc!252))))))

(assert (= (and d!686565 res!991614) b!2321247))

(assert (= (and b!2321247 res!991615) b!2321248))

(assert (= (and b!2321248 res!991616) b!2321249))

(declare-fun m!2750263 () Bool)

(assert (=> d!686565 m!2750263))

(declare-fun m!2750265 () Bool)

(assert (=> d!686565 m!2750265))

(declare-fun m!2750267 () Bool)

(assert (=> b!2321248 m!2750267))

(declare-fun m!2750269 () Bool)

(assert (=> b!2321248 m!2750269))

(assert (=> b!2321248 m!2750267))

(assert (=> b!2321248 m!2750269))

(declare-fun m!2750271 () Bool)

(assert (=> b!2321248 m!2750271))

(assert (=> b!2320929 d!686565))

(declare-fun d!686567 () Bool)

(assert (=> d!686567 (= (list!11005 (xs!12027 acc!252)) (innerList!9127 (xs!12027 acc!252)))))

(assert (=> b!2321192 d!686567))

(declare-fun d!686569 () Bool)

(declare-fun lt!860416 () Int)

(assert (=> d!686569 (>= lt!860416 0)))

(declare-fun e!1487732 () Int)

(assert (=> d!686569 (= lt!860416 e!1487732)))

(declare-fun c!368190 () Bool)

(assert (=> d!686569 (= c!368190 ((_ is Nil!27662) lt!860409))))

(assert (=> d!686569 (= (size!21920 lt!860409) lt!860416)))

(declare-fun b!2321254 () Bool)

(assert (=> b!2321254 (= e!1487732 0)))

(declare-fun b!2321255 () Bool)

(assert (=> b!2321255 (= e!1487732 (+ 1 (size!21920 (t!207422 lt!860409))))))

(assert (= (and d!686569 c!368190) b!2321254))

(assert (= (and d!686569 (not c!368190)) b!2321255))

(declare-fun m!2750273 () Bool)

(assert (=> b!2321255 m!2750273))

(assert (=> b!2321188 d!686569))

(declare-fun d!686571 () Bool)

(declare-fun lt!860417 () Int)

(assert (=> d!686571 (>= lt!860417 0)))

(declare-fun e!1487733 () Int)

(assert (=> d!686571 (= lt!860417 e!1487733)))

(declare-fun c!368191 () Bool)

(assert (=> d!686571 (= c!368191 ((_ is Nil!27662) (list!11004 acc!252)))))

(assert (=> d!686571 (= (size!21920 (list!11004 acc!252)) lt!860417)))

(declare-fun b!2321256 () Bool)

(assert (=> b!2321256 (= e!1487733 0)))

(declare-fun b!2321257 () Bool)

(assert (=> b!2321257 (= e!1487733 (+ 1 (size!21920 (t!207422 (list!11004 acc!252)))))))

(assert (= (and d!686571 c!368191) b!2321256))

(assert (= (and d!686571 (not c!368191)) b!2321257))

(declare-fun m!2750275 () Bool)

(assert (=> b!2321257 m!2750275))

(assert (=> b!2321188 d!686571))

(declare-fun d!686573 () Bool)

(declare-fun lt!860418 () Int)

(assert (=> d!686573 (>= lt!860418 0)))

(declare-fun e!1487734 () Int)

(assert (=> d!686573 (= lt!860418 e!1487734)))

(declare-fun c!368192 () Bool)

(assert (=> d!686573 (= c!368192 ((_ is Nil!27662) (list!11005 arr!18)))))

(assert (=> d!686573 (= (size!21920 (list!11005 arr!18)) lt!860418)))

(declare-fun b!2321258 () Bool)

(assert (=> b!2321258 (= e!1487734 0)))

(declare-fun b!2321259 () Bool)

(assert (=> b!2321259 (= e!1487734 (+ 1 (size!21920 (t!207422 (list!11005 arr!18)))))))

(assert (= (and d!686573 c!368192) b!2321258))

(assert (= (and d!686573 (not c!368192)) b!2321259))

(declare-fun m!2750277 () Bool)

(assert (=> b!2321259 m!2750277))

(assert (=> b!2321188 d!686573))

(declare-fun d!686575 () Bool)

(assert (=> d!686575 (= (height!1328 (ite c!368149 lt!860402 lt!860400)) (ite ((_ is Empty!9067) (ite c!368149 lt!860402 lt!860400)) 0 (ite ((_ is Leaf!13310) (ite c!368149 lt!860402 lt!860400)) 1 (cheight!9278 (ite c!368149 lt!860402 lt!860400)))))))

(assert (=> bm!138358 d!686575))

(declare-fun d!686577 () Bool)

(declare-fun res!991617 () Bool)

(declare-fun e!1487735 () Bool)

(assert (=> d!686577 (=> (not res!991617) (not e!1487735))))

(assert (=> d!686577 (= res!991617 (= (csize!18364 acc!252) (+ (size!21921 (left!20997 acc!252)) (size!21921 (right!21327 acc!252)))))))

(assert (=> d!686577 (= (inv!37614 acc!252) e!1487735)))

(declare-fun b!2321260 () Bool)

(declare-fun res!991618 () Bool)

(assert (=> b!2321260 (=> (not res!991618) (not e!1487735))))

(assert (=> b!2321260 (= res!991618 (and (not (= (left!20997 acc!252) Empty!9067)) (not (= (right!21327 acc!252) Empty!9067))))))

(declare-fun b!2321261 () Bool)

(declare-fun res!991619 () Bool)

(assert (=> b!2321261 (=> (not res!991619) (not e!1487735))))

(assert (=> b!2321261 (= res!991619 (= (cheight!9278 acc!252) (+ (max!0 (height!1328 (left!20997 acc!252)) (height!1328 (right!21327 acc!252))) 1)))))

(declare-fun b!2321262 () Bool)

(assert (=> b!2321262 (= e!1487735 (<= 0 (cheight!9278 acc!252)))))

(assert (= (and d!686577 res!991617) b!2321260))

(assert (= (and b!2321260 res!991618) b!2321261))

(assert (= (and b!2321261 res!991619) b!2321262))

(declare-fun m!2750279 () Bool)

(assert (=> d!686577 m!2750279))

(declare-fun m!2750281 () Bool)

(assert (=> d!686577 m!2750281))

(assert (=> b!2321261 m!2750119))

(assert (=> b!2321261 m!2750121))

(assert (=> b!2321261 m!2750119))

(assert (=> b!2321261 m!2750121))

(declare-fun m!2750283 () Bool)

(assert (=> b!2321261 m!2750283))

(assert (=> b!2321123 d!686577))

(declare-fun d!686579 () Bool)

(assert (=> d!686579 (= (height!1328 (left!20997 lt!860373)) (ite ((_ is Empty!9067) (left!20997 lt!860373)) 0 (ite ((_ is Leaf!13310) (left!20997 lt!860373)) 1 (cheight!9278 (left!20997 lt!860373)))))))

(assert (=> b!2320962 d!686579))

(declare-fun d!686581 () Bool)

(assert (=> d!686581 (= (height!1328 (right!21327 lt!860373)) (ite ((_ is Empty!9067) (right!21327 lt!860373)) 0 (ite ((_ is Leaf!13310) (right!21327 lt!860373)) 1 (cheight!9278 (right!21327 lt!860373)))))))

(assert (=> b!2320962 d!686581))

(declare-fun b!2321263 () Bool)

(declare-fun e!1487737 () Bool)

(declare-fun e!1487736 () Bool)

(assert (=> b!2321263 (= e!1487737 e!1487736)))

(declare-fun res!991621 () Bool)

(assert (=> b!2321263 (=> (not res!991621) (not e!1487736))))

(assert (=> b!2321263 (= res!991621 (<= (- 1) (- (height!1328 (left!20997 (Leaf!13310 arr!18 lt!860372))) (height!1328 (right!21327 (Leaf!13310 arr!18 lt!860372))))))))

(declare-fun b!2321264 () Bool)

(declare-fun res!991622 () Bool)

(assert (=> b!2321264 (=> (not res!991622) (not e!1487736))))

(assert (=> b!2321264 (= res!991622 (not (isEmpty!15790 (left!20997 (Leaf!13310 arr!18 lt!860372)))))))

(declare-fun d!686583 () Bool)

(declare-fun res!991625 () Bool)

(assert (=> d!686583 (=> res!991625 e!1487737)))

(assert (=> d!686583 (= res!991625 (not ((_ is Node!9067) (Leaf!13310 arr!18 lt!860372))))))

(assert (=> d!686583 (= (isBalanced!2761 (Leaf!13310 arr!18 lt!860372)) e!1487737)))

(declare-fun b!2321265 () Bool)

(declare-fun res!991624 () Bool)

(assert (=> b!2321265 (=> (not res!991624) (not e!1487736))))

(assert (=> b!2321265 (= res!991624 (isBalanced!2761 (left!20997 (Leaf!13310 arr!18 lt!860372))))))

(declare-fun b!2321266 () Bool)

(declare-fun res!991623 () Bool)

(assert (=> b!2321266 (=> (not res!991623) (not e!1487736))))

(assert (=> b!2321266 (= res!991623 (<= (- (height!1328 (left!20997 (Leaf!13310 arr!18 lt!860372))) (height!1328 (right!21327 (Leaf!13310 arr!18 lt!860372)))) 1))))

(declare-fun b!2321267 () Bool)

(assert (=> b!2321267 (= e!1487736 (not (isEmpty!15790 (right!21327 (Leaf!13310 arr!18 lt!860372)))))))

(declare-fun b!2321268 () Bool)

(declare-fun res!991620 () Bool)

(assert (=> b!2321268 (=> (not res!991620) (not e!1487736))))

(assert (=> b!2321268 (= res!991620 (isBalanced!2761 (right!21327 (Leaf!13310 arr!18 lt!860372))))))

(assert (= (and d!686583 (not res!991625)) b!2321263))

(assert (= (and b!2321263 res!991621) b!2321266))

(assert (= (and b!2321266 res!991623) b!2321265))

(assert (= (and b!2321265 res!991624) b!2321268))

(assert (= (and b!2321268 res!991620) b!2321264))

(assert (= (and b!2321264 res!991622) b!2321267))

(declare-fun m!2750285 () Bool)

(assert (=> b!2321263 m!2750285))

(declare-fun m!2750287 () Bool)

(assert (=> b!2321263 m!2750287))

(declare-fun m!2750289 () Bool)

(assert (=> b!2321265 m!2750289))

(declare-fun m!2750291 () Bool)

(assert (=> b!2321268 m!2750291))

(declare-fun m!2750293 () Bool)

(assert (=> b!2321267 m!2750293))

(assert (=> b!2321266 m!2750285))

(assert (=> b!2321266 m!2750287))

(declare-fun m!2750295 () Bool)

(assert (=> b!2321264 m!2750295))

(assert (=> b!2321104 d!686583))

(assert (=> d!686507 d!686573))

(assert (=> d!686507 d!686557))

(declare-fun d!686585 () Bool)

(declare-fun _$1!10207 () Int)

(assert (=> d!686585 (= _$1!10207 (size!21920 (list!11005 arr!18)))))

(assert (=> d!686585 true))

(assert (=> d!686585 (= (choose!13592 arr!18) _$1!10207)))

(declare-fun bs!459041 () Bool)

(assert (= bs!459041 d!686585))

(assert (=> bs!459041 m!2749975))

(assert (=> bs!459041 m!2749975))

(assert (=> bs!459041 m!2749983))

(assert (=> d!686507 d!686585))

(declare-fun b!2321287 () Bool)

(declare-fun e!1487761 () Bool)

(declare-fun e!1487760 () Bool)

(assert (=> b!2321287 (= e!1487761 e!1487760)))

(declare-fun res!991652 () Bool)

(assert (=> b!2321287 (=> res!991652 e!1487760)))

(assert (=> b!2321287 (= res!991652 (not ((_ is Node!9067) (left!20997 (Leaf!13310 arr!18 lt!860372)))))))

(declare-fun b!2321288 () Bool)

(declare-fun e!1487758 () Bool)

(assert (=> b!2321288 (= e!1487760 e!1487758)))

(declare-fun res!991644 () Bool)

(assert (=> b!2321288 (=> (not res!991644) (not e!1487758))))

(declare-fun appendAssoc!155 (List!27760 List!27760 List!27760) Bool)

(assert (=> b!2321288 (= res!991644 (appendAssoc!155 (list!11004 acc!252) (list!11004 (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372)))) (list!11004 (right!21327 (left!20997 (Leaf!13310 arr!18 lt!860372))))))))

(declare-fun b!2321289 () Bool)

(declare-fun e!1487764 () Bool)

(declare-fun e!1487763 () Bool)

(assert (=> b!2321289 (= e!1487764 e!1487763)))

(declare-fun res!991646 () Bool)

(assert (=> b!2321289 (=> res!991646 e!1487763)))

(assert (=> b!2321289 (= res!991646 (not ((_ is Node!9067) (right!21327 acc!252))))))

(declare-fun b!2321290 () Bool)

(declare-fun e!1487759 () Bool)

(assert (=> b!2321290 (= e!1487763 e!1487759)))

(declare-fun res!991649 () Bool)

(assert (=> b!2321290 (=> (not res!991649) (not e!1487759))))

(assert (=> b!2321290 (= res!991649 (appendAssoc!155 (list!11004 (left!20997 (right!21327 acc!252))) (list!11004 (right!21327 (right!21327 acc!252))) (list!11004 (Leaf!13310 arr!18 lt!860372))))))

(declare-fun b!2321291 () Bool)

(declare-fun e!1487757 () Bool)

(assert (=> b!2321291 (= e!1487757 e!1487761)))

(declare-fun res!991650 () Bool)

(assert (=> b!2321291 (=> (not res!991650) (not e!1487761))))

(assert (=> b!2321291 (= res!991650 (appendAssoc!155 (list!11004 acc!252) (list!11004 (left!20997 (Leaf!13310 arr!18 lt!860372))) (list!11004 (right!21327 (Leaf!13310 arr!18 lt!860372)))))))

(declare-fun d!686587 () Bool)

(declare-fun e!1487762 () Bool)

(assert (=> d!686587 e!1487762))

(declare-fun res!991651 () Bool)

(assert (=> d!686587 (=> (not res!991651) (not e!1487762))))

(declare-fun e!1487756 () Bool)

(assert (=> d!686587 (= res!991651 e!1487756)))

(declare-fun res!991647 () Bool)

(assert (=> d!686587 (=> res!991647 e!1487756)))

(assert (=> d!686587 (= res!991647 (not ((_ is Node!9067) acc!252)))))

(assert (=> d!686587 (= (appendAssocInst!605 acc!252 (Leaf!13310 arr!18 lt!860372)) true)))

(declare-fun b!2321292 () Bool)

(assert (=> b!2321292 (= e!1487762 e!1487757)))

(declare-fun res!991645 () Bool)

(assert (=> b!2321292 (=> res!991645 e!1487757)))

(assert (=> b!2321292 (= res!991645 (not ((_ is Node!9067) (Leaf!13310 arr!18 lt!860372))))))

(declare-fun b!2321293 () Bool)

(assert (=> b!2321293 (= e!1487759 (appendAssoc!155 (list!11004 (left!20997 acc!252)) (list!11004 (left!20997 (right!21327 acc!252))) (++!6818 (list!11004 (right!21327 (right!21327 acc!252))) (list!11004 (Leaf!13310 arr!18 lt!860372)))))))

(declare-fun b!2321294 () Bool)

(assert (=> b!2321294 (= e!1487758 (appendAssoc!155 (++!6818 (list!11004 acc!252) (list!11004 (left!20997 (left!20997 (Leaf!13310 arr!18 lt!860372))))) (list!11004 (right!21327 (left!20997 (Leaf!13310 arr!18 lt!860372)))) (list!11004 (right!21327 (Leaf!13310 arr!18 lt!860372)))))))

(declare-fun b!2321295 () Bool)

(assert (=> b!2321295 (= e!1487756 e!1487764)))

(declare-fun res!991648 () Bool)

(assert (=> b!2321295 (=> (not res!991648) (not e!1487764))))

(assert (=> b!2321295 (= res!991648 (appendAssoc!155 (list!11004 (left!20997 acc!252)) (list!11004 (right!21327 acc!252)) (list!11004 (Leaf!13310 arr!18 lt!860372))))))

(assert (= (and d!686587 (not res!991647)) b!2321295))

(assert (= (and b!2321295 res!991648) b!2321289))

(assert (= (and b!2321289 (not res!991646)) b!2321290))

(assert (= (and b!2321290 res!991649) b!2321293))

(assert (= (and d!686587 res!991651) b!2321292))

(assert (= (and b!2321292 (not res!991645)) b!2321291))

(assert (= (and b!2321291 res!991650) b!2321287))

(assert (= (and b!2321287 (not res!991652)) b!2321288))

(assert (= (and b!2321288 res!991644) b!2321294))

(declare-fun m!2750297 () Bool)

(assert (=> b!2321294 m!2750297))

(declare-fun m!2750299 () Bool)

(assert (=> b!2321294 m!2750299))

(assert (=> b!2321294 m!2749973))

(assert (=> b!2321294 m!2749973))

(declare-fun m!2750301 () Bool)

(assert (=> b!2321294 m!2750301))

(declare-fun m!2750303 () Bool)

(assert (=> b!2321294 m!2750303))

(assert (=> b!2321294 m!2750303))

(assert (=> b!2321294 m!2750299))

(assert (=> b!2321294 m!2750297))

(declare-fun m!2750305 () Bool)

(assert (=> b!2321294 m!2750305))

(assert (=> b!2321294 m!2750301))

(assert (=> b!2321293 m!2750089))

(assert (=> b!2321293 m!2750199))

(declare-fun m!2750307 () Bool)

(assert (=> b!2321293 m!2750307))

(declare-fun m!2750309 () Bool)

(assert (=> b!2321293 m!2750309))

(declare-fun m!2750311 () Bool)

(assert (=> b!2321293 m!2750311))

(declare-fun m!2750313 () Bool)

(assert (=> b!2321293 m!2750313))

(assert (=> b!2321293 m!2750089))

(assert (=> b!2321293 m!2750309))

(assert (=> b!2321293 m!2750199))

(assert (=> b!2321293 m!2750307))

(assert (=> b!2321293 m!2750313))

(assert (=> b!2321290 m!2750307))

(assert (=> b!2321290 m!2750313))

(assert (=> b!2321290 m!2750089))

(assert (=> b!2321290 m!2750307))

(assert (=> b!2321290 m!2750313))

(assert (=> b!2321290 m!2750089))

(declare-fun m!2750315 () Bool)

(assert (=> b!2321290 m!2750315))

(assert (=> b!2321295 m!2750199))

(assert (=> b!2321295 m!2750201))

(assert (=> b!2321295 m!2750089))

(assert (=> b!2321295 m!2750199))

(assert (=> b!2321295 m!2750201))

(assert (=> b!2321295 m!2750089))

(declare-fun m!2750317 () Bool)

(assert (=> b!2321295 m!2750317))

(assert (=> b!2321288 m!2749973))

(assert (=> b!2321288 m!2750301))

(assert (=> b!2321288 m!2750299))

(assert (=> b!2321288 m!2749973))

(assert (=> b!2321288 m!2750301))

(assert (=> b!2321288 m!2750299))

(declare-fun m!2750319 () Bool)

(assert (=> b!2321288 m!2750319))

(assert (=> b!2321291 m!2749973))

(declare-fun m!2750321 () Bool)

(assert (=> b!2321291 m!2750321))

(assert (=> b!2321291 m!2750297))

(assert (=> b!2321291 m!2749973))

(assert (=> b!2321291 m!2750321))

(assert (=> b!2321291 m!2750297))

(declare-fun m!2750323 () Bool)

(assert (=> b!2321291 m!2750323))

(assert (=> d!686525 d!686587))

(assert (=> d!686525 d!686537))

(declare-fun lt!860421 () Conc!9067)

(declare-fun d!686589 () Bool)

(assert (=> d!686589 (= (list!11004 lt!860421) (++!6818 (list!11004 (ite c!368154 acc!252 (ite c!368149 (ite c!368156 (left!20997 acc!252) (ite c!368153 (left!20997 (right!21327 acc!252)) (left!20997 acc!252))) (ite c!368148 call!138366 (ite c!368146 call!138349 lt!860400))))) (list!11004 (ite c!368154 (Leaf!13310 arr!18 lt!860372) (ite c!368149 (ite c!368156 call!138368 (ite c!368153 lt!860402 (left!20997 (right!21327 acc!252)))) (ite (or c!368148 c!368146) (right!21327 (Leaf!13310 arr!18 lt!860372)) call!138349))))))))

(declare-fun e!1487770 () Conc!9067)

(assert (=> d!686589 (= lt!860421 e!1487770)))

(declare-fun c!368198 () Bool)

(assert (=> d!686589 (= c!368198 (= (ite c!368154 acc!252 (ite c!368149 (ite c!368156 (left!20997 acc!252) (ite c!368153 (left!20997 (right!21327 acc!252)) (left!20997 acc!252))) (ite c!368148 call!138366 (ite c!368146 call!138349 lt!860400)))) Empty!9067))))

(assert (=> d!686589 (= (<>!211 (ite c!368154 acc!252 (ite c!368149 (ite c!368156 (left!20997 acc!252) (ite c!368153 (left!20997 (right!21327 acc!252)) (left!20997 acc!252))) (ite c!368148 call!138366 (ite c!368146 call!138349 lt!860400)))) (ite c!368154 (Leaf!13310 arr!18 lt!860372) (ite c!368149 (ite c!368156 call!138368 (ite c!368153 lt!860402 (left!20997 (right!21327 acc!252)))) (ite (or c!368148 c!368146) (right!21327 (Leaf!13310 arr!18 lt!860372)) call!138349)))) lt!860421)))

(declare-fun e!1487769 () Conc!9067)

(declare-fun b!2321306 () Bool)

(assert (=> b!2321306 (= e!1487769 (ite c!368154 acc!252 (ite c!368149 (ite c!368156 (left!20997 acc!252) (ite c!368153 (left!20997 (right!21327 acc!252)) (left!20997 acc!252))) (ite c!368148 call!138366 (ite c!368146 call!138349 lt!860400)))))))

(declare-fun b!2321307 () Bool)

(assert (=> b!2321307 (= e!1487769 (Node!9067 (ite c!368154 acc!252 (ite c!368149 (ite c!368156 (left!20997 acc!252) (ite c!368153 (left!20997 (right!21327 acc!252)) (left!20997 acc!252))) (ite c!368148 call!138366 (ite c!368146 call!138349 lt!860400)))) (ite c!368154 (Leaf!13310 arr!18 lt!860372) (ite c!368149 (ite c!368156 call!138368 (ite c!368153 lt!860402 (left!20997 (right!21327 acc!252)))) (ite (or c!368148 c!368146) (right!21327 (Leaf!13310 arr!18 lt!860372)) call!138349))) (+ (size!21921 (ite c!368154 acc!252 (ite c!368149 (ite c!368156 (left!20997 acc!252) (ite c!368153 (left!20997 (right!21327 acc!252)) (left!20997 acc!252))) (ite c!368148 call!138366 (ite c!368146 call!138349 lt!860400))))) (size!21921 (ite c!368154 (Leaf!13310 arr!18 lt!860372) (ite c!368149 (ite c!368156 call!138368 (ite c!368153 lt!860402 (left!20997 (right!21327 acc!252)))) (ite (or c!368148 c!368146) (right!21327 (Leaf!13310 arr!18 lt!860372)) call!138349))))) (+ (max!0 (height!1328 (ite c!368154 acc!252 (ite c!368149 (ite c!368156 (left!20997 acc!252) (ite c!368153 (left!20997 (right!21327 acc!252)) (left!20997 acc!252))) (ite c!368148 call!138366 (ite c!368146 call!138349 lt!860400))))) (height!1328 (ite c!368154 (Leaf!13310 arr!18 lt!860372) (ite c!368149 (ite c!368156 call!138368 (ite c!368153 lt!860402 (left!20997 (right!21327 acc!252)))) (ite (or c!368148 c!368146) (right!21327 (Leaf!13310 arr!18 lt!860372)) call!138349))))) 1)))))

(declare-fun b!2321304 () Bool)

(assert (=> b!2321304 (= e!1487770 (ite c!368154 (Leaf!13310 arr!18 lt!860372) (ite c!368149 (ite c!368156 call!138368 (ite c!368153 lt!860402 (left!20997 (right!21327 acc!252)))) (ite (or c!368148 c!368146) (right!21327 (Leaf!13310 arr!18 lt!860372)) call!138349))))))

(declare-fun b!2321305 () Bool)

(assert (=> b!2321305 (= e!1487770 e!1487769)))

(declare-fun c!368197 () Bool)

(assert (=> b!2321305 (= c!368197 (= (ite c!368154 (Leaf!13310 arr!18 lt!860372) (ite c!368149 (ite c!368156 call!138368 (ite c!368153 lt!860402 (left!20997 (right!21327 acc!252)))) (ite (or c!368148 c!368146) (right!21327 (Leaf!13310 arr!18 lt!860372)) call!138349))) Empty!9067))))

(assert (= (and d!686589 c!368198) b!2321304))

(assert (= (and d!686589 (not c!368198)) b!2321305))

(assert (= (and b!2321305 c!368197) b!2321306))

(assert (= (and b!2321305 (not c!368197)) b!2321307))

(declare-fun m!2750325 () Bool)

(assert (=> d!686589 m!2750325))

(declare-fun m!2750327 () Bool)

(assert (=> d!686589 m!2750327))

(declare-fun m!2750329 () Bool)

(assert (=> d!686589 m!2750329))

(assert (=> d!686589 m!2750327))

(assert (=> d!686589 m!2750329))

(declare-fun m!2750331 () Bool)

(assert (=> d!686589 m!2750331))

(declare-fun m!2750333 () Bool)

(assert (=> b!2321307 m!2750333))

(declare-fun m!2750335 () Bool)

(assert (=> b!2321307 m!2750335))

(declare-fun m!2750337 () Bool)

(assert (=> b!2321307 m!2750337))

(declare-fun m!2750339 () Bool)

(assert (=> b!2321307 m!2750339))

(assert (=> b!2321307 m!2750337))

(assert (=> b!2321307 m!2750335))

(declare-fun m!2750341 () Bool)

(assert (=> b!2321307 m!2750341))

(assert (=> bm!138350 d!686589))

(declare-fun b!2321308 () Bool)

(declare-fun e!1487772 () Bool)

(declare-fun e!1487771 () Bool)

(assert (=> b!2321308 (= e!1487772 e!1487771)))

(declare-fun res!991654 () Bool)

(assert (=> b!2321308 (=> (not res!991654) (not e!1487771))))

(assert (=> b!2321308 (= res!991654 (<= (- 1) (- (height!1328 (left!20997 (right!21327 lt!860373))) (height!1328 (right!21327 (right!21327 lt!860373))))))))

(declare-fun b!2321309 () Bool)

(declare-fun res!991655 () Bool)

(assert (=> b!2321309 (=> (not res!991655) (not e!1487771))))

(assert (=> b!2321309 (= res!991655 (not (isEmpty!15790 (left!20997 (right!21327 lt!860373)))))))

(declare-fun d!686591 () Bool)

(declare-fun res!991658 () Bool)

(assert (=> d!686591 (=> res!991658 e!1487772)))

(assert (=> d!686591 (= res!991658 (not ((_ is Node!9067) (right!21327 lt!860373))))))

(assert (=> d!686591 (= (isBalanced!2761 (right!21327 lt!860373)) e!1487772)))

(declare-fun b!2321310 () Bool)

(declare-fun res!991657 () Bool)

(assert (=> b!2321310 (=> (not res!991657) (not e!1487771))))

(assert (=> b!2321310 (= res!991657 (isBalanced!2761 (left!20997 (right!21327 lt!860373))))))

(declare-fun b!2321311 () Bool)

(declare-fun res!991656 () Bool)

(assert (=> b!2321311 (=> (not res!991656) (not e!1487771))))

(assert (=> b!2321311 (= res!991656 (<= (- (height!1328 (left!20997 (right!21327 lt!860373))) (height!1328 (right!21327 (right!21327 lt!860373)))) 1))))

(declare-fun b!2321312 () Bool)

(assert (=> b!2321312 (= e!1487771 (not (isEmpty!15790 (right!21327 (right!21327 lt!860373)))))))

(declare-fun b!2321313 () Bool)

(declare-fun res!991653 () Bool)

(assert (=> b!2321313 (=> (not res!991653) (not e!1487771))))

(assert (=> b!2321313 (= res!991653 (isBalanced!2761 (right!21327 (right!21327 lt!860373))))))

(assert (= (and d!686591 (not res!991658)) b!2321308))

(assert (= (and b!2321308 res!991654) b!2321311))

(assert (= (and b!2321311 res!991656) b!2321310))

(assert (= (and b!2321310 res!991657) b!2321313))

(assert (= (and b!2321313 res!991653) b!2321309))

(assert (= (and b!2321309 res!991655) b!2321312))

(declare-fun m!2750343 () Bool)

(assert (=> b!2321308 m!2750343))

(declare-fun m!2750345 () Bool)

(assert (=> b!2321308 m!2750345))

(declare-fun m!2750347 () Bool)

(assert (=> b!2321310 m!2750347))

(declare-fun m!2750349 () Bool)

(assert (=> b!2321313 m!2750349))

(declare-fun m!2750351 () Bool)

(assert (=> b!2321312 m!2750351))

(assert (=> b!2321311 m!2750343))

(assert (=> b!2321311 m!2750345))

(declare-fun m!2750353 () Bool)

(assert (=> b!2321309 m!2750353))

(assert (=> b!2320967 d!686591))

(declare-fun d!686593 () Bool)

(declare-fun lt!860424 () Bool)

(declare-fun isEmpty!15791 (List!27760) Bool)

(assert (=> d!686593 (= lt!860424 (isEmpty!15791 (list!11004 (right!21327 acc!252))))))

(assert (=> d!686593 (= lt!860424 (= (size!21921 (right!21327 acc!252)) 0))))

(assert (=> d!686593 (= (isEmpty!15790 (right!21327 acc!252)) lt!860424)))

(declare-fun bs!459042 () Bool)

(assert (= bs!459042 d!686593))

(assert (=> bs!459042 m!2750201))

(assert (=> bs!459042 m!2750201))

(declare-fun m!2750355 () Bool)

(assert (=> bs!459042 m!2750355))

(assert (=> bs!459042 m!2750281))

(assert (=> b!2321113 d!686593))

(declare-fun d!686595 () Bool)

(assert (=> d!686595 (= (height!1328 (Leaf!13310 arr!18 lt!860372)) (ite ((_ is Empty!9067) (Leaf!13310 arr!18 lt!860372)) 0 (ite ((_ is Leaf!13310) (Leaf!13310 arr!18 lt!860372)) 1 (cheight!9278 (Leaf!13310 arr!18 lt!860372)))))))

(assert (=> b!2321084 d!686595))

(declare-fun d!686597 () Bool)

(assert (=> d!686597 (= (height!1328 acc!252) (ite ((_ is Empty!9067) acc!252) 0 (ite ((_ is Leaf!13310) acc!252) 1 (cheight!9278 acc!252))))))

(assert (=> b!2321084 d!686597))

(declare-fun d!686599 () Bool)

(assert (=> d!686599 (= (list!11005 (xs!12027 lt!860373)) (innerList!9127 (xs!12027 lt!860373)))))

(assert (=> b!2321148 d!686599))

(assert (=> b!2320965 d!686579))

(assert (=> b!2320965 d!686581))

(declare-fun d!686601 () Bool)

(declare-fun lt!860425 () Int)

(assert (=> d!686601 (>= lt!860425 0)))

(declare-fun e!1487773 () Int)

(assert (=> d!686601 (= lt!860425 e!1487773)))

(declare-fun c!368199 () Bool)

(assert (=> d!686601 (= c!368199 ((_ is Nil!27662) (innerList!9127 (xs!12027 acc!252))))))

(assert (=> d!686601 (= (size!21920 (innerList!9127 (xs!12027 acc!252))) lt!860425)))

(declare-fun b!2321314 () Bool)

(assert (=> b!2321314 (= e!1487773 0)))

(declare-fun b!2321315 () Bool)

(assert (=> b!2321315 (= e!1487773 (+ 1 (size!21920 (t!207422 (innerList!9127 (xs!12027 acc!252))))))))

(assert (= (and d!686601 c!368199) b!2321314))

(assert (= (and d!686601 (not c!368199)) b!2321315))

(declare-fun m!2750357 () Bool)

(assert (=> b!2321315 m!2750357))

(assert (=> d!686543 d!686601))

(declare-fun b!2321316 () Bool)

(declare-fun e!1487775 () Bool)

(declare-fun e!1487774 () Bool)

(assert (=> b!2321316 (= e!1487775 e!1487774)))

(declare-fun res!991660 () Bool)

(assert (=> b!2321316 (=> (not res!991660) (not e!1487774))))

(assert (=> b!2321316 (= res!991660 (<= (- 1) (- (height!1328 (left!20997 (left!20997 acc!252))) (height!1328 (right!21327 (left!20997 acc!252))))))))

(declare-fun b!2321317 () Bool)

(declare-fun res!991661 () Bool)

(assert (=> b!2321317 (=> (not res!991661) (not e!1487774))))

(assert (=> b!2321317 (= res!991661 (not (isEmpty!15790 (left!20997 (left!20997 acc!252)))))))

(declare-fun d!686603 () Bool)

(declare-fun res!991664 () Bool)

(assert (=> d!686603 (=> res!991664 e!1487775)))

(assert (=> d!686603 (= res!991664 (not ((_ is Node!9067) (left!20997 acc!252))))))

(assert (=> d!686603 (= (isBalanced!2761 (left!20997 acc!252)) e!1487775)))

(declare-fun b!2321318 () Bool)

(declare-fun res!991663 () Bool)

(assert (=> b!2321318 (=> (not res!991663) (not e!1487774))))

(assert (=> b!2321318 (= res!991663 (isBalanced!2761 (left!20997 (left!20997 acc!252))))))

(declare-fun b!2321319 () Bool)

(declare-fun res!991662 () Bool)

(assert (=> b!2321319 (=> (not res!991662) (not e!1487774))))

(assert (=> b!2321319 (= res!991662 (<= (- (height!1328 (left!20997 (left!20997 acc!252))) (height!1328 (right!21327 (left!20997 acc!252)))) 1))))

(declare-fun b!2321320 () Bool)

(assert (=> b!2321320 (= e!1487774 (not (isEmpty!15790 (right!21327 (left!20997 acc!252)))))))

(declare-fun b!2321321 () Bool)

(declare-fun res!991659 () Bool)

(assert (=> b!2321321 (=> (not res!991659) (not e!1487774))))

(assert (=> b!2321321 (= res!991659 (isBalanced!2761 (right!21327 (left!20997 acc!252))))))

(assert (= (and d!686603 (not res!991664)) b!2321316))

(assert (= (and b!2321316 res!991660) b!2321319))

(assert (= (and b!2321319 res!991662) b!2321318))

(assert (= (and b!2321318 res!991663) b!2321321))

(assert (= (and b!2321321 res!991659) b!2321317))

(assert (= (and b!2321317 res!991661) b!2321320))

(declare-fun m!2750359 () Bool)

(assert (=> b!2321316 m!2750359))

(declare-fun m!2750361 () Bool)

(assert (=> b!2321316 m!2750361))

(declare-fun m!2750363 () Bool)

(assert (=> b!2321318 m!2750363))

(declare-fun m!2750365 () Bool)

(assert (=> b!2321321 m!2750365))

(declare-fun m!2750367 () Bool)

(assert (=> b!2321320 m!2750367))

(assert (=> b!2321319 m!2750359))

(assert (=> b!2321319 m!2750361))

(declare-fun m!2750369 () Bool)

(assert (=> b!2321317 m!2750369))

(assert (=> b!2321111 d!686603))

(declare-fun b!2321322 () Bool)

(declare-fun e!1487777 () Bool)

(declare-fun e!1487776 () Bool)

(assert (=> b!2321322 (= e!1487777 e!1487776)))

(declare-fun res!991666 () Bool)

(assert (=> b!2321322 (=> (not res!991666) (not e!1487776))))

(assert (=> b!2321322 (= res!991666 (<= (- 1) (- (height!1328 (left!20997 lt!860398)) (height!1328 (right!21327 lt!860398)))))))

(declare-fun b!2321323 () Bool)

(declare-fun res!991667 () Bool)

(assert (=> b!2321323 (=> (not res!991667) (not e!1487776))))

(assert (=> b!2321323 (= res!991667 (not (isEmpty!15790 (left!20997 lt!860398))))))

(declare-fun d!686605 () Bool)

(declare-fun res!991670 () Bool)

(assert (=> d!686605 (=> res!991670 e!1487777)))

(assert (=> d!686605 (= res!991670 (not ((_ is Node!9067) lt!860398)))))

(assert (=> d!686605 (= (isBalanced!2761 lt!860398) e!1487777)))

(declare-fun b!2321324 () Bool)

(declare-fun res!991669 () Bool)

(assert (=> b!2321324 (=> (not res!991669) (not e!1487776))))

(assert (=> b!2321324 (= res!991669 (isBalanced!2761 (left!20997 lt!860398)))))

(declare-fun b!2321325 () Bool)

(declare-fun res!991668 () Bool)

(assert (=> b!2321325 (=> (not res!991668) (not e!1487776))))

(assert (=> b!2321325 (= res!991668 (<= (- (height!1328 (left!20997 lt!860398)) (height!1328 (right!21327 lt!860398))) 1))))

(declare-fun b!2321326 () Bool)

(assert (=> b!2321326 (= e!1487776 (not (isEmpty!15790 (right!21327 lt!860398))))))

(declare-fun b!2321327 () Bool)

(declare-fun res!991665 () Bool)

(assert (=> b!2321327 (=> (not res!991665) (not e!1487776))))

(assert (=> b!2321327 (= res!991665 (isBalanced!2761 (right!21327 lt!860398)))))

(assert (= (and d!686605 (not res!991670)) b!2321322))

(assert (= (and b!2321322 res!991666) b!2321325))

(assert (= (and b!2321325 res!991668) b!2321324))

(assert (= (and b!2321324 res!991669) b!2321327))

(assert (= (and b!2321327 res!991665) b!2321323))

(assert (= (and b!2321323 res!991667) b!2321326))

(declare-fun m!2750371 () Bool)

(assert (=> b!2321322 m!2750371))

(declare-fun m!2750373 () Bool)

(assert (=> b!2321322 m!2750373))

(declare-fun m!2750375 () Bool)

(assert (=> b!2321324 m!2750375))

(declare-fun m!2750377 () Bool)

(assert (=> b!2321327 m!2750377))

(declare-fun m!2750379 () Bool)

(assert (=> b!2321326 m!2750379))

(assert (=> b!2321325 m!2750371))

(assert (=> b!2321325 m!2750373))

(declare-fun m!2750381 () Bool)

(assert (=> b!2321323 m!2750381))

(assert (=> b!2321082 d!686605))

(declare-fun d!686607 () Bool)

(assert (=> d!686607 (= (inv!37610 (xs!12027 (right!21327 acc!252))) (<= (size!21920 (innerList!9127 (xs!12027 (right!21327 acc!252)))) 2147483647))))

(declare-fun bs!459043 () Bool)

(assert (= bs!459043 d!686607))

(declare-fun m!2750383 () Bool)

(assert (=> bs!459043 m!2750383))

(assert (=> b!2321206 d!686607))

(declare-fun d!686609 () Bool)

(assert (=> d!686609 (= (height!1328 lt!860398) (ite ((_ is Empty!9067) lt!860398) 0 (ite ((_ is Leaf!13310) lt!860398) 1 (cheight!9278 lt!860398))))))

(assert (=> b!2321087 d!686609))

(declare-fun d!686611 () Bool)

(assert (=> d!686611 (= (max!0 (height!1328 acc!252) (height!1328 (Leaf!13310 arr!18 lt!860372))) (ite (< (height!1328 acc!252) (height!1328 (Leaf!13310 arr!18 lt!860372))) (height!1328 (Leaf!13310 arr!18 lt!860372)) (height!1328 acc!252)))))

(assert (=> b!2321087 d!686611))

(assert (=> b!2321087 d!686597))

(assert (=> b!2321087 d!686595))

(declare-fun d!686613 () Bool)

(declare-fun c!368200 () Bool)

(assert (=> d!686613 (= c!368200 ((_ is Node!9067) (left!20997 (left!20997 acc!252))))))

(declare-fun e!1487778 () Bool)

(assert (=> d!686613 (= (inv!37611 (left!20997 (left!20997 acc!252))) e!1487778)))

(declare-fun b!2321328 () Bool)

(assert (=> b!2321328 (= e!1487778 (inv!37614 (left!20997 (left!20997 acc!252))))))

(declare-fun b!2321329 () Bool)

(declare-fun e!1487779 () Bool)

(assert (=> b!2321329 (= e!1487778 e!1487779)))

(declare-fun res!991671 () Bool)

(assert (=> b!2321329 (= res!991671 (not ((_ is Leaf!13310) (left!20997 (left!20997 acc!252)))))))

(assert (=> b!2321329 (=> res!991671 e!1487779)))

(declare-fun b!2321330 () Bool)

(assert (=> b!2321330 (= e!1487779 (inv!37615 (left!20997 (left!20997 acc!252))))))

(assert (= (and d!686613 c!368200) b!2321328))

(assert (= (and d!686613 (not c!368200)) b!2321329))

(assert (= (and b!2321329 (not res!991671)) b!2321330))

(declare-fun m!2750385 () Bool)

(assert (=> b!2321328 m!2750385))

(declare-fun m!2750387 () Bool)

(assert (=> b!2321330 m!2750387))

(assert (=> b!2321202 d!686613))

(declare-fun d!686615 () Bool)

(declare-fun c!368201 () Bool)

(assert (=> d!686615 (= c!368201 ((_ is Node!9067) (right!21327 (left!20997 acc!252))))))

(declare-fun e!1487780 () Bool)

(assert (=> d!686615 (= (inv!37611 (right!21327 (left!20997 acc!252))) e!1487780)))

(declare-fun b!2321331 () Bool)

(assert (=> b!2321331 (= e!1487780 (inv!37614 (right!21327 (left!20997 acc!252))))))

(declare-fun b!2321332 () Bool)

(declare-fun e!1487781 () Bool)

(assert (=> b!2321332 (= e!1487780 e!1487781)))

(declare-fun res!991672 () Bool)

(assert (=> b!2321332 (= res!991672 (not ((_ is Leaf!13310) (right!21327 (left!20997 acc!252)))))))

(assert (=> b!2321332 (=> res!991672 e!1487781)))

(declare-fun b!2321333 () Bool)

(assert (=> b!2321333 (= e!1487781 (inv!37615 (right!21327 (left!20997 acc!252))))))

(assert (= (and d!686615 c!368201) b!2321331))

(assert (= (and d!686615 (not c!368201)) b!2321332))

(assert (= (and b!2321332 (not res!991672)) b!2321333))

(declare-fun m!2750389 () Bool)

(assert (=> b!2321331 m!2750389))

(declare-fun m!2750391 () Bool)

(assert (=> b!2321333 m!2750391))

(assert (=> b!2321202 d!686615))

(declare-fun b!2321334 () Bool)

(declare-fun e!1487783 () List!27760)

(assert (=> b!2321334 (= e!1487783 (list!11004 (right!21327 acc!252)))))

(declare-fun d!686617 () Bool)

(declare-fun e!1487782 () Bool)

(assert (=> d!686617 e!1487782))

(declare-fun res!991674 () Bool)

(assert (=> d!686617 (=> (not res!991674) (not e!1487782))))

(declare-fun lt!860426 () List!27760)

(assert (=> d!686617 (= res!991674 (= (content!3739 lt!860426) ((_ map or) (content!3739 (list!11004 (left!20997 acc!252))) (content!3739 (list!11004 (right!21327 acc!252))))))))

(assert (=> d!686617 (= lt!860426 e!1487783)))

(declare-fun c!368202 () Bool)

(assert (=> d!686617 (= c!368202 ((_ is Nil!27662) (list!11004 (left!20997 acc!252))))))

(assert (=> d!686617 (= (++!6818 (list!11004 (left!20997 acc!252)) (list!11004 (right!21327 acc!252))) lt!860426)))

(declare-fun b!2321335 () Bool)

(assert (=> b!2321335 (= e!1487783 (Cons!27662 (h!33063 (list!11004 (left!20997 acc!252))) (++!6818 (t!207422 (list!11004 (left!20997 acc!252))) (list!11004 (right!21327 acc!252)))))))

(declare-fun b!2321336 () Bool)

(declare-fun res!991673 () Bool)

(assert (=> b!2321336 (=> (not res!991673) (not e!1487782))))

(assert (=> b!2321336 (= res!991673 (= (size!21920 lt!860426) (+ (size!21920 (list!11004 (left!20997 acc!252))) (size!21920 (list!11004 (right!21327 acc!252))))))))

(declare-fun b!2321337 () Bool)

(assert (=> b!2321337 (= e!1487782 (or (not (= (list!11004 (right!21327 acc!252)) Nil!27662)) (= lt!860426 (list!11004 (left!20997 acc!252)))))))

(assert (= (and d!686617 c!368202) b!2321334))

(assert (= (and d!686617 (not c!368202)) b!2321335))

(assert (= (and d!686617 res!991674) b!2321336))

(assert (= (and b!2321336 res!991673) b!2321337))

(declare-fun m!2750393 () Bool)

(assert (=> d!686617 m!2750393))

(assert (=> d!686617 m!2750199))

(declare-fun m!2750395 () Bool)

(assert (=> d!686617 m!2750395))

(assert (=> d!686617 m!2750201))

(declare-fun m!2750397 () Bool)

(assert (=> d!686617 m!2750397))

(assert (=> b!2321335 m!2750201))

(declare-fun m!2750399 () Bool)

(assert (=> b!2321335 m!2750399))

(declare-fun m!2750401 () Bool)

(assert (=> b!2321336 m!2750401))

(assert (=> b!2321336 m!2750199))

(declare-fun m!2750403 () Bool)

(assert (=> b!2321336 m!2750403))

(assert (=> b!2321336 m!2750201))

(declare-fun m!2750405 () Bool)

(assert (=> b!2321336 m!2750405))

(assert (=> b!2321193 d!686617))

(declare-fun b!2321341 () Bool)

(declare-fun e!1487785 () List!27760)

(assert (=> b!2321341 (= e!1487785 (++!6818 (list!11004 (left!20997 (left!20997 acc!252))) (list!11004 (right!21327 (left!20997 acc!252)))))))

(declare-fun b!2321339 () Bool)

(declare-fun e!1487784 () List!27760)

(assert (=> b!2321339 (= e!1487784 e!1487785)))

(declare-fun c!368204 () Bool)

(assert (=> b!2321339 (= c!368204 ((_ is Leaf!13310) (left!20997 acc!252)))))

(declare-fun d!686619 () Bool)

(declare-fun c!368203 () Bool)

(assert (=> d!686619 (= c!368203 ((_ is Empty!9067) (left!20997 acc!252)))))

(assert (=> d!686619 (= (list!11004 (left!20997 acc!252)) e!1487784)))

(declare-fun b!2321338 () Bool)

(assert (=> b!2321338 (= e!1487784 Nil!27662)))

(declare-fun b!2321340 () Bool)

(assert (=> b!2321340 (= e!1487785 (list!11005 (xs!12027 (left!20997 acc!252))))))

(assert (= (and d!686619 c!368203) b!2321338))

(assert (= (and d!686619 (not c!368203)) b!2321339))

(assert (= (and b!2321339 c!368204) b!2321340))

(assert (= (and b!2321339 (not c!368204)) b!2321341))

(declare-fun m!2750407 () Bool)

(assert (=> b!2321341 m!2750407))

(declare-fun m!2750409 () Bool)

(assert (=> b!2321341 m!2750409))

(assert (=> b!2321341 m!2750407))

(assert (=> b!2321341 m!2750409))

(declare-fun m!2750411 () Bool)

(assert (=> b!2321341 m!2750411))

(declare-fun m!2750413 () Bool)

(assert (=> b!2321340 m!2750413))

(assert (=> b!2321193 d!686619))

(declare-fun b!2321345 () Bool)

(declare-fun e!1487787 () List!27760)

(assert (=> b!2321345 (= e!1487787 (++!6818 (list!11004 (left!20997 (right!21327 acc!252))) (list!11004 (right!21327 (right!21327 acc!252)))))))

(declare-fun b!2321343 () Bool)

(declare-fun e!1487786 () List!27760)

(assert (=> b!2321343 (= e!1487786 e!1487787)))

(declare-fun c!368206 () Bool)

(assert (=> b!2321343 (= c!368206 ((_ is Leaf!13310) (right!21327 acc!252)))))

(declare-fun d!686621 () Bool)

(declare-fun c!368205 () Bool)

(assert (=> d!686621 (= c!368205 ((_ is Empty!9067) (right!21327 acc!252)))))

(assert (=> d!686621 (= (list!11004 (right!21327 acc!252)) e!1487786)))

(declare-fun b!2321342 () Bool)

(assert (=> b!2321342 (= e!1487786 Nil!27662)))

(declare-fun b!2321344 () Bool)

(assert (=> b!2321344 (= e!1487787 (list!11005 (xs!12027 (right!21327 acc!252))))))

(assert (= (and d!686621 c!368205) b!2321342))

(assert (= (and d!686621 (not c!368205)) b!2321343))

(assert (= (and b!2321343 c!368206) b!2321344))

(assert (= (and b!2321343 (not c!368206)) b!2321345))

(assert (=> b!2321345 m!2750307))

(assert (=> b!2321345 m!2750313))

(assert (=> b!2321345 m!2750307))

(assert (=> b!2321345 m!2750313))

(declare-fun m!2750415 () Bool)

(assert (=> b!2321345 m!2750415))

(assert (=> b!2321344 m!2750219))

(assert (=> b!2321193 d!686621))

(declare-fun d!686623 () Bool)

(declare-fun c!368209 () Bool)

(assert (=> d!686623 (= c!368209 ((_ is Nil!27662) lt!860409))))

(declare-fun e!1487790 () (InoxSet T!43866))

(assert (=> d!686623 (= (content!3739 lt!860409) e!1487790)))

(declare-fun b!2321350 () Bool)

(assert (=> b!2321350 (= e!1487790 ((as const (Array T!43866 Bool)) false))))

(declare-fun b!2321351 () Bool)

(assert (=> b!2321351 (= e!1487790 ((_ map or) (store ((as const (Array T!43866 Bool)) false) (h!33063 lt!860409) true) (content!3739 (t!207422 lt!860409))))))

(assert (= (and d!686623 c!368209) b!2321350))

(assert (= (and d!686623 (not c!368209)) b!2321351))

(declare-fun m!2750417 () Bool)

(assert (=> b!2321351 m!2750417))

(declare-fun m!2750419 () Bool)

(assert (=> b!2321351 m!2750419))

(assert (=> d!686549 d!686623))

(declare-fun d!686625 () Bool)

(declare-fun c!368210 () Bool)

(assert (=> d!686625 (= c!368210 ((_ is Nil!27662) (list!11004 acc!252)))))

(declare-fun e!1487791 () (InoxSet T!43866))

(assert (=> d!686625 (= (content!3739 (list!11004 acc!252)) e!1487791)))

(declare-fun b!2321352 () Bool)

(assert (=> b!2321352 (= e!1487791 ((as const (Array T!43866 Bool)) false))))

(declare-fun b!2321353 () Bool)

(assert (=> b!2321353 (= e!1487791 ((_ map or) (store ((as const (Array T!43866 Bool)) false) (h!33063 (list!11004 acc!252)) true) (content!3739 (t!207422 (list!11004 acc!252)))))))

(assert (= (and d!686625 c!368210) b!2321352))

(assert (= (and d!686625 (not c!368210)) b!2321353))

(declare-fun m!2750421 () Bool)

(assert (=> b!2321353 m!2750421))

(declare-fun m!2750423 () Bool)

(assert (=> b!2321353 m!2750423))

(assert (=> d!686549 d!686625))

(declare-fun d!686627 () Bool)

(declare-fun c!368211 () Bool)

(assert (=> d!686627 (= c!368211 ((_ is Nil!27662) (list!11005 arr!18)))))

(declare-fun e!1487792 () (InoxSet T!43866))

(assert (=> d!686627 (= (content!3739 (list!11005 arr!18)) e!1487792)))

(declare-fun b!2321354 () Bool)

(assert (=> b!2321354 (= e!1487792 ((as const (Array T!43866 Bool)) false))))

(declare-fun b!2321355 () Bool)

(assert (=> b!2321355 (= e!1487792 ((_ map or) (store ((as const (Array T!43866 Bool)) false) (h!33063 (list!11005 arr!18)) true) (content!3739 (t!207422 (list!11005 arr!18)))))))

(assert (= (and d!686627 c!368211) b!2321354))

(assert (= (and d!686627 (not c!368211)) b!2321355))

(declare-fun m!2750425 () Bool)

(assert (=> b!2321355 m!2750425))

(declare-fun m!2750427 () Bool)

(assert (=> b!2321355 m!2750427))

(assert (=> d!686549 d!686627))

(declare-fun b!2321356 () Bool)

(declare-fun e!1487794 () List!27760)

(assert (=> b!2321356 (= e!1487794 (list!11005 arr!18))))

(declare-fun d!686629 () Bool)

(declare-fun e!1487793 () Bool)

(assert (=> d!686629 e!1487793))

(declare-fun res!991676 () Bool)

(assert (=> d!686629 (=> (not res!991676) (not e!1487793))))

(declare-fun lt!860427 () List!27760)

(assert (=> d!686629 (= res!991676 (= (content!3739 lt!860427) ((_ map or) (content!3739 (t!207422 (list!11004 acc!252))) (content!3739 (list!11005 arr!18)))))))

(assert (=> d!686629 (= lt!860427 e!1487794)))

(declare-fun c!368212 () Bool)

(assert (=> d!686629 (= c!368212 ((_ is Nil!27662) (t!207422 (list!11004 acc!252))))))

(assert (=> d!686629 (= (++!6818 (t!207422 (list!11004 acc!252)) (list!11005 arr!18)) lt!860427)))

(declare-fun b!2321357 () Bool)

(assert (=> b!2321357 (= e!1487794 (Cons!27662 (h!33063 (t!207422 (list!11004 acc!252))) (++!6818 (t!207422 (t!207422 (list!11004 acc!252))) (list!11005 arr!18))))))

(declare-fun b!2321358 () Bool)

(declare-fun res!991675 () Bool)

(assert (=> b!2321358 (=> (not res!991675) (not e!1487793))))

(assert (=> b!2321358 (= res!991675 (= (size!21920 lt!860427) (+ (size!21920 (t!207422 (list!11004 acc!252))) (size!21920 (list!11005 arr!18)))))))

(declare-fun b!2321359 () Bool)

(assert (=> b!2321359 (= e!1487793 (or (not (= (list!11005 arr!18) Nil!27662)) (= lt!860427 (t!207422 (list!11004 acc!252)))))))

(assert (= (and d!686629 c!368212) b!2321356))

(assert (= (and d!686629 (not c!368212)) b!2321357))

(assert (= (and d!686629 res!991676) b!2321358))

(assert (= (and b!2321358 res!991675) b!2321359))

(declare-fun m!2750429 () Bool)

(assert (=> d!686629 m!2750429))

(assert (=> d!686629 m!2750423))

(assert (=> d!686629 m!2749975))

(assert (=> d!686629 m!2750191))

(assert (=> b!2321357 m!2749975))

(declare-fun m!2750431 () Bool)

(assert (=> b!2321357 m!2750431))

(declare-fun m!2750433 () Bool)

(assert (=> b!2321358 m!2750433))

(assert (=> b!2321358 m!2750275))

(assert (=> b!2321358 m!2749975))

(assert (=> b!2321358 m!2749983))

(assert (=> b!2321187 d!686629))

(declare-fun d!686631 () Bool)

(declare-fun res!991677 () Bool)

(declare-fun e!1487795 () Bool)

(assert (=> d!686631 (=> (not res!991677) (not e!1487795))))

(assert (=> d!686631 (= res!991677 (= (csize!18364 (left!20997 acc!252)) (+ (size!21921 (left!20997 (left!20997 acc!252))) (size!21921 (right!21327 (left!20997 acc!252))))))))

(assert (=> d!686631 (= (inv!37614 (left!20997 acc!252)) e!1487795)))

(declare-fun b!2321360 () Bool)

(declare-fun res!991678 () Bool)

(assert (=> b!2321360 (=> (not res!991678) (not e!1487795))))

(assert (=> b!2321360 (= res!991678 (and (not (= (left!20997 (left!20997 acc!252)) Empty!9067)) (not (= (right!21327 (left!20997 acc!252)) Empty!9067))))))

(declare-fun b!2321361 () Bool)

(declare-fun res!991679 () Bool)

(assert (=> b!2321361 (=> (not res!991679) (not e!1487795))))

(assert (=> b!2321361 (= res!991679 (= (cheight!9278 (left!20997 acc!252)) (+ (max!0 (height!1328 (left!20997 (left!20997 acc!252))) (height!1328 (right!21327 (left!20997 acc!252)))) 1)))))

(declare-fun b!2321362 () Bool)

(assert (=> b!2321362 (= e!1487795 (<= 0 (cheight!9278 (left!20997 acc!252))))))

(assert (= (and d!686631 res!991677) b!2321360))

(assert (= (and b!2321360 res!991678) b!2321361))

(assert (= (and b!2321361 res!991679) b!2321362))

(declare-fun m!2750435 () Bool)

(assert (=> d!686631 m!2750435))

(declare-fun m!2750437 () Bool)

(assert (=> d!686631 m!2750437))

(assert (=> b!2321361 m!2750359))

(assert (=> b!2321361 m!2750361))

(assert (=> b!2321361 m!2750359))

(assert (=> b!2321361 m!2750361))

(declare-fun m!2750439 () Bool)

(assert (=> b!2321361 m!2750439))

(assert (=> b!2320925 d!686631))

(declare-fun d!686633 () Bool)

(declare-fun lt!860428 () Bool)

(assert (=> d!686633 (= lt!860428 (isEmpty!15791 (list!11004 (left!20997 lt!860373))))))

(assert (=> d!686633 (= lt!860428 (= (size!21921 (left!20997 lt!860373)) 0))))

(assert (=> d!686633 (= (isEmpty!15790 (left!20997 lt!860373)) lt!860428)))

(declare-fun bs!459044 () Bool)

(assert (= bs!459044 d!686633))

(assert (=> bs!459044 m!2750147))

(assert (=> bs!459044 m!2750147))

(declare-fun m!2750441 () Bool)

(assert (=> bs!459044 m!2750441))

(declare-fun m!2750443 () Bool)

(assert (=> bs!459044 m!2750443))

(assert (=> b!2320963 d!686633))

(declare-fun d!686635 () Bool)

(assert (=> d!686635 (= (height!1328 (left!20997 acc!252)) (ite ((_ is Empty!9067) (left!20997 acc!252)) 0 (ite ((_ is Leaf!13310) (left!20997 acc!252)) 1 (cheight!9278 (left!20997 acc!252)))))))

(assert (=> b!2321109 d!686635))

(declare-fun d!686637 () Bool)

(assert (=> d!686637 (= (height!1328 (right!21327 acc!252)) (ite ((_ is Empty!9067) (right!21327 acc!252)) 0 (ite ((_ is Leaf!13310) (right!21327 acc!252)) 1 (cheight!9278 (right!21327 acc!252)))))))

(assert (=> b!2321109 d!686637))

(declare-fun d!686639 () Bool)

(declare-fun lt!860429 () Conc!9067)

(assert (=> d!686639 (= (list!11004 lt!860429) (++!6818 (list!11004 (ite c!368149 (ite c!368153 (left!20997 acc!252) call!138354) (ite c!368146 lt!860400 (right!21327 (left!20997 (Leaf!13310 arr!18 lt!860372)))))) (list!11004 (ite c!368149 (ite c!368153 call!138354 lt!860402) (ite c!368146 (right!21327 (left!20997 (Leaf!13310 arr!18 lt!860372))) (right!21327 (Leaf!13310 arr!18 lt!860372)))))))))

(declare-fun e!1487797 () Conc!9067)

(assert (=> d!686639 (= lt!860429 e!1487797)))

(declare-fun c!368214 () Bool)

(assert (=> d!686639 (= c!368214 (= (ite c!368149 (ite c!368153 (left!20997 acc!252) call!138354) (ite c!368146 lt!860400 (right!21327 (left!20997 (Leaf!13310 arr!18 lt!860372))))) Empty!9067))))

(assert (=> d!686639 (= (<>!211 (ite c!368149 (ite c!368153 (left!20997 acc!252) call!138354) (ite c!368146 lt!860400 (right!21327 (left!20997 (Leaf!13310 arr!18 lt!860372))))) (ite c!368149 (ite c!368153 call!138354 lt!860402) (ite c!368146 (right!21327 (left!20997 (Leaf!13310 arr!18 lt!860372))) (right!21327 (Leaf!13310 arr!18 lt!860372))))) lt!860429)))

(declare-fun b!2321365 () Bool)

(declare-fun e!1487796 () Conc!9067)

(assert (=> b!2321365 (= e!1487796 (ite c!368149 (ite c!368153 (left!20997 acc!252) call!138354) (ite c!368146 lt!860400 (right!21327 (left!20997 (Leaf!13310 arr!18 lt!860372))))))))

(declare-fun b!2321366 () Bool)

(assert (=> b!2321366 (= e!1487796 (Node!9067 (ite c!368149 (ite c!368153 (left!20997 acc!252) call!138354) (ite c!368146 lt!860400 (right!21327 (left!20997 (Leaf!13310 arr!18 lt!860372))))) (ite c!368149 (ite c!368153 call!138354 lt!860402) (ite c!368146 (right!21327 (left!20997 (Leaf!13310 arr!18 lt!860372))) (right!21327 (Leaf!13310 arr!18 lt!860372)))) (+ (size!21921 (ite c!368149 (ite c!368153 (left!20997 acc!252) call!138354) (ite c!368146 lt!860400 (right!21327 (left!20997 (Leaf!13310 arr!18 lt!860372)))))) (size!21921 (ite c!368149 (ite c!368153 call!138354 lt!860402) (ite c!368146 (right!21327 (left!20997 (Leaf!13310 arr!18 lt!860372))) (right!21327 (Leaf!13310 arr!18 lt!860372)))))) (+ (max!0 (height!1328 (ite c!368149 (ite c!368153 (left!20997 acc!252) call!138354) (ite c!368146 lt!860400 (right!21327 (left!20997 (Leaf!13310 arr!18 lt!860372)))))) (height!1328 (ite c!368149 (ite c!368153 call!138354 lt!860402) (ite c!368146 (right!21327 (left!20997 (Leaf!13310 arr!18 lt!860372))) (right!21327 (Leaf!13310 arr!18 lt!860372)))))) 1)))))

(declare-fun b!2321363 () Bool)

(assert (=> b!2321363 (= e!1487797 (ite c!368149 (ite c!368153 call!138354 lt!860402) (ite c!368146 (right!21327 (left!20997 (Leaf!13310 arr!18 lt!860372))) (right!21327 (Leaf!13310 arr!18 lt!860372)))))))

(declare-fun b!2321364 () Bool)

(assert (=> b!2321364 (= e!1487797 e!1487796)))

(declare-fun c!368213 () Bool)

(assert (=> b!2321364 (= c!368213 (= (ite c!368149 (ite c!368153 call!138354 lt!860402) (ite c!368146 (right!21327 (left!20997 (Leaf!13310 arr!18 lt!860372))) (right!21327 (Leaf!13310 arr!18 lt!860372)))) Empty!9067))))

(assert (= (and d!686639 c!368214) b!2321363))

(assert (= (and d!686639 (not c!368214)) b!2321364))

(assert (= (and b!2321364 c!368213) b!2321365))

(assert (= (and b!2321364 (not c!368213)) b!2321366))

(declare-fun m!2750445 () Bool)

(assert (=> d!686639 m!2750445))

(declare-fun m!2750447 () Bool)

(assert (=> d!686639 m!2750447))

(declare-fun m!2750449 () Bool)

(assert (=> d!686639 m!2750449))

(assert (=> d!686639 m!2750447))

(assert (=> d!686639 m!2750449))

(declare-fun m!2750451 () Bool)

(assert (=> d!686639 m!2750451))

(declare-fun m!2750453 () Bool)

(assert (=> b!2321366 m!2750453))

(declare-fun m!2750455 () Bool)

(assert (=> b!2321366 m!2750455))

(declare-fun m!2750457 () Bool)

(assert (=> b!2321366 m!2750457))

(declare-fun m!2750459 () Bool)

(assert (=> b!2321366 m!2750459))

(assert (=> b!2321366 m!2750457))

(assert (=> b!2321366 m!2750455))

(declare-fun m!2750461 () Bool)

(assert (=> b!2321366 m!2750461))

(assert (=> bm!138361 d!686639))

(declare-fun b!2321370 () Bool)

(declare-fun e!1487799 () List!27760)

(assert (=> b!2321370 (= e!1487799 (++!6818 (list!11004 (left!20997 lt!860398)) (list!11004 (right!21327 lt!860398))))))

(declare-fun b!2321368 () Bool)

(declare-fun e!1487798 () List!27760)

(assert (=> b!2321368 (= e!1487798 e!1487799)))

(declare-fun c!368216 () Bool)

(assert (=> b!2321368 (= c!368216 ((_ is Leaf!13310) lt!860398))))

(declare-fun d!686641 () Bool)

(declare-fun c!368215 () Bool)

(assert (=> d!686641 (= c!368215 ((_ is Empty!9067) lt!860398))))

(assert (=> d!686641 (= (list!11004 lt!860398) e!1487798)))

(declare-fun b!2321367 () Bool)

(assert (=> b!2321367 (= e!1487798 Nil!27662)))

(declare-fun b!2321369 () Bool)

(assert (=> b!2321369 (= e!1487799 (list!11005 (xs!12027 lt!860398)))))

(assert (= (and d!686641 c!368215) b!2321367))

(assert (= (and d!686641 (not c!368215)) b!2321368))

(assert (= (and b!2321368 c!368216) b!2321369))

(assert (= (and b!2321368 (not c!368216)) b!2321370))

(declare-fun m!2750463 () Bool)

(assert (=> b!2321370 m!2750463))

(declare-fun m!2750465 () Bool)

(assert (=> b!2321370 m!2750465))

(assert (=> b!2321370 m!2750463))

(assert (=> b!2321370 m!2750465))

(declare-fun m!2750467 () Bool)

(assert (=> b!2321370 m!2750467))

(declare-fun m!2750469 () Bool)

(assert (=> b!2321369 m!2750469))

(assert (=> b!2321081 d!686641))

(declare-fun b!2321371 () Bool)

(declare-fun e!1487801 () List!27760)

(assert (=> b!2321371 (= e!1487801 (list!11004 (Leaf!13310 arr!18 lt!860372)))))

(declare-fun d!686643 () Bool)

(declare-fun e!1487800 () Bool)

(assert (=> d!686643 e!1487800))

(declare-fun res!991681 () Bool)

(assert (=> d!686643 (=> (not res!991681) (not e!1487800))))

(declare-fun lt!860430 () List!27760)

(assert (=> d!686643 (= res!991681 (= (content!3739 lt!860430) ((_ map or) (content!3739 (list!11004 acc!252)) (content!3739 (list!11004 (Leaf!13310 arr!18 lt!860372))))))))

(assert (=> d!686643 (= lt!860430 e!1487801)))

(declare-fun c!368217 () Bool)

(assert (=> d!686643 (= c!368217 ((_ is Nil!27662) (list!11004 acc!252)))))

(assert (=> d!686643 (= (++!6818 (list!11004 acc!252) (list!11004 (Leaf!13310 arr!18 lt!860372))) lt!860430)))

(declare-fun b!2321372 () Bool)

(assert (=> b!2321372 (= e!1487801 (Cons!27662 (h!33063 (list!11004 acc!252)) (++!6818 (t!207422 (list!11004 acc!252)) (list!11004 (Leaf!13310 arr!18 lt!860372)))))))

(declare-fun b!2321373 () Bool)

(declare-fun res!991680 () Bool)

(assert (=> b!2321373 (=> (not res!991680) (not e!1487800))))

(assert (=> b!2321373 (= res!991680 (= (size!21920 lt!860430) (+ (size!21920 (list!11004 acc!252)) (size!21920 (list!11004 (Leaf!13310 arr!18 lt!860372))))))))

(declare-fun b!2321374 () Bool)

(assert (=> b!2321374 (= e!1487800 (or (not (= (list!11004 (Leaf!13310 arr!18 lt!860372)) Nil!27662)) (= lt!860430 (list!11004 acc!252))))))

(assert (= (and d!686643 c!368217) b!2321371))

(assert (= (and d!686643 (not c!368217)) b!2321372))

(assert (= (and d!686643 res!991681) b!2321373))

(assert (= (and b!2321373 res!991680) b!2321374))

(declare-fun m!2750471 () Bool)

(assert (=> d!686643 m!2750471))

(assert (=> d!686643 m!2749973))

(assert (=> d!686643 m!2750189))

(assert (=> d!686643 m!2750089))

(declare-fun m!2750473 () Bool)

(assert (=> d!686643 m!2750473))

(assert (=> b!2321372 m!2750089))

(declare-fun m!2750475 () Bool)

(assert (=> b!2321372 m!2750475))

(declare-fun m!2750477 () Bool)

(assert (=> b!2321373 m!2750477))

(assert (=> b!2321373 m!2749973))

(assert (=> b!2321373 m!2750197))

(assert (=> b!2321373 m!2750089))

(declare-fun m!2750479 () Bool)

(assert (=> b!2321373 m!2750479))

(assert (=> b!2321081 d!686643))

(assert (=> b!2321081 d!686555))

(declare-fun b!2321378 () Bool)

(declare-fun e!1487803 () List!27760)

(assert (=> b!2321378 (= e!1487803 (++!6818 (list!11004 (left!20997 (Leaf!13310 arr!18 lt!860372))) (list!11004 (right!21327 (Leaf!13310 arr!18 lt!860372)))))))

(declare-fun b!2321376 () Bool)

(declare-fun e!1487802 () List!27760)

(assert (=> b!2321376 (= e!1487802 e!1487803)))

(declare-fun c!368219 () Bool)

(assert (=> b!2321376 (= c!368219 ((_ is Leaf!13310) (Leaf!13310 arr!18 lt!860372)))))

(declare-fun d!686645 () Bool)

(declare-fun c!368218 () Bool)

(assert (=> d!686645 (= c!368218 ((_ is Empty!9067) (Leaf!13310 arr!18 lt!860372)))))

(assert (=> d!686645 (= (list!11004 (Leaf!13310 arr!18 lt!860372)) e!1487802)))

(declare-fun b!2321375 () Bool)

(assert (=> b!2321375 (= e!1487802 Nil!27662)))

(declare-fun b!2321377 () Bool)

(assert (=> b!2321377 (= e!1487803 (list!11005 (xs!12027 (Leaf!13310 arr!18 lt!860372))))))

(assert (= (and d!686645 c!368218) b!2321375))

(assert (= (and d!686645 (not c!368218)) b!2321376))

(assert (= (and b!2321376 c!368219) b!2321377))

(assert (= (and b!2321376 (not c!368219)) b!2321378))

(assert (=> b!2321378 m!2750321))

(assert (=> b!2321378 m!2750297))

(assert (=> b!2321378 m!2750321))

(assert (=> b!2321378 m!2750297))

(declare-fun m!2750481 () Bool)

(assert (=> b!2321378 m!2750481))

(declare-fun m!2750483 () Bool)

(assert (=> b!2321377 m!2750483))

(assert (=> b!2321081 d!686645))

(declare-fun b!2321379 () Bool)

(declare-fun e!1487805 () Bool)

(declare-fun e!1487804 () Bool)

(assert (=> b!2321379 (= e!1487805 e!1487804)))

(declare-fun res!991683 () Bool)

(assert (=> b!2321379 (=> (not res!991683) (not e!1487804))))

(assert (=> b!2321379 (= res!991683 (<= (- 1) (- (height!1328 (left!20997 (right!21327 acc!252))) (height!1328 (right!21327 (right!21327 acc!252))))))))

(declare-fun b!2321380 () Bool)

(declare-fun res!991684 () Bool)

(assert (=> b!2321380 (=> (not res!991684) (not e!1487804))))

(assert (=> b!2321380 (= res!991684 (not (isEmpty!15790 (left!20997 (right!21327 acc!252)))))))

(declare-fun d!686647 () Bool)

(declare-fun res!991687 () Bool)

(assert (=> d!686647 (=> res!991687 e!1487805)))

(assert (=> d!686647 (= res!991687 (not ((_ is Node!9067) (right!21327 acc!252))))))

(assert (=> d!686647 (= (isBalanced!2761 (right!21327 acc!252)) e!1487805)))

(declare-fun b!2321381 () Bool)

(declare-fun res!991686 () Bool)

(assert (=> b!2321381 (=> (not res!991686) (not e!1487804))))

(assert (=> b!2321381 (= res!991686 (isBalanced!2761 (left!20997 (right!21327 acc!252))))))

(declare-fun b!2321382 () Bool)

(declare-fun res!991685 () Bool)

(assert (=> b!2321382 (=> (not res!991685) (not e!1487804))))

(assert (=> b!2321382 (= res!991685 (<= (- (height!1328 (left!20997 (right!21327 acc!252))) (height!1328 (right!21327 (right!21327 acc!252)))) 1))))

(declare-fun b!2321383 () Bool)

(assert (=> b!2321383 (= e!1487804 (not (isEmpty!15790 (right!21327 (right!21327 acc!252)))))))

(declare-fun b!2321384 () Bool)

(declare-fun res!991682 () Bool)

(assert (=> b!2321384 (=> (not res!991682) (not e!1487804))))

(assert (=> b!2321384 (= res!991682 (isBalanced!2761 (right!21327 (right!21327 acc!252))))))

(assert (= (and d!686647 (not res!991687)) b!2321379))

(assert (= (and b!2321379 res!991683) b!2321382))

(assert (= (and b!2321382 res!991685) b!2321381))

(assert (= (and b!2321381 res!991686) b!2321384))

(assert (= (and b!2321384 res!991682) b!2321380))

(assert (= (and b!2321380 res!991684) b!2321383))

(assert (=> b!2321379 m!2750267))

(assert (=> b!2321379 m!2750269))

(declare-fun m!2750485 () Bool)

(assert (=> b!2321381 m!2750485))

(declare-fun m!2750487 () Bool)

(assert (=> b!2321384 m!2750487))

(declare-fun m!2750489 () Bool)

(assert (=> b!2321383 m!2750489))

(assert (=> b!2321382 m!2750267))

(assert (=> b!2321382 m!2750269))

(declare-fun m!2750491 () Bool)

(assert (=> b!2321380 m!2750491))

(assert (=> b!2321114 d!686647))

(declare-fun b!2321385 () Bool)

(declare-fun e!1487807 () List!27760)

(assert (=> b!2321385 (= e!1487807 (list!11004 (right!21327 lt!860373)))))

(declare-fun d!686649 () Bool)

(declare-fun e!1487806 () Bool)

(assert (=> d!686649 e!1487806))

(declare-fun res!991689 () Bool)

(assert (=> d!686649 (=> (not res!991689) (not e!1487806))))

(declare-fun lt!860431 () List!27760)

(assert (=> d!686649 (= res!991689 (= (content!3739 lt!860431) ((_ map or) (content!3739 (list!11004 (left!20997 lt!860373))) (content!3739 (list!11004 (right!21327 lt!860373))))))))

(assert (=> d!686649 (= lt!860431 e!1487807)))

(declare-fun c!368220 () Bool)

(assert (=> d!686649 (= c!368220 ((_ is Nil!27662) (list!11004 (left!20997 lt!860373))))))

(assert (=> d!686649 (= (++!6818 (list!11004 (left!20997 lt!860373)) (list!11004 (right!21327 lt!860373))) lt!860431)))

(declare-fun b!2321386 () Bool)

(assert (=> b!2321386 (= e!1487807 (Cons!27662 (h!33063 (list!11004 (left!20997 lt!860373))) (++!6818 (t!207422 (list!11004 (left!20997 lt!860373))) (list!11004 (right!21327 lt!860373)))))))

(declare-fun b!2321387 () Bool)

(declare-fun res!991688 () Bool)

(assert (=> b!2321387 (=> (not res!991688) (not e!1487806))))

(assert (=> b!2321387 (= res!991688 (= (size!21920 lt!860431) (+ (size!21920 (list!11004 (left!20997 lt!860373))) (size!21920 (list!11004 (right!21327 lt!860373))))))))

(declare-fun b!2321388 () Bool)

(assert (=> b!2321388 (= e!1487806 (or (not (= (list!11004 (right!21327 lt!860373)) Nil!27662)) (= lt!860431 (list!11004 (left!20997 lt!860373)))))))

(assert (= (and d!686649 c!368220) b!2321385))

(assert (= (and d!686649 (not c!368220)) b!2321386))

(assert (= (and d!686649 res!991689) b!2321387))

(assert (= (and b!2321387 res!991688) b!2321388))

(declare-fun m!2750493 () Bool)

(assert (=> d!686649 m!2750493))

(assert (=> d!686649 m!2750147))

(declare-fun m!2750495 () Bool)

(assert (=> d!686649 m!2750495))

(assert (=> d!686649 m!2750149))

(declare-fun m!2750497 () Bool)

(assert (=> d!686649 m!2750497))

(assert (=> b!2321386 m!2750149))

(declare-fun m!2750499 () Bool)

(assert (=> b!2321386 m!2750499))

(declare-fun m!2750501 () Bool)

(assert (=> b!2321387 m!2750501))

(assert (=> b!2321387 m!2750147))

(declare-fun m!2750503 () Bool)

(assert (=> b!2321387 m!2750503))

(assert (=> b!2321387 m!2750149))

(declare-fun m!2750505 () Bool)

(assert (=> b!2321387 m!2750505))

(assert (=> b!2321149 d!686649))

(declare-fun b!2321392 () Bool)

(declare-fun e!1487809 () List!27760)

(assert (=> b!2321392 (= e!1487809 (++!6818 (list!11004 (left!20997 (left!20997 lt!860373))) (list!11004 (right!21327 (left!20997 lt!860373)))))))

(declare-fun b!2321390 () Bool)

(declare-fun e!1487808 () List!27760)

(assert (=> b!2321390 (= e!1487808 e!1487809)))

(declare-fun c!368222 () Bool)

(assert (=> b!2321390 (= c!368222 ((_ is Leaf!13310) (left!20997 lt!860373)))))

(declare-fun d!686651 () Bool)

(declare-fun c!368221 () Bool)

(assert (=> d!686651 (= c!368221 ((_ is Empty!9067) (left!20997 lt!860373)))))

(assert (=> d!686651 (= (list!11004 (left!20997 lt!860373)) e!1487808)))

(declare-fun b!2321389 () Bool)

(assert (=> b!2321389 (= e!1487808 Nil!27662)))

(declare-fun b!2321391 () Bool)

(assert (=> b!2321391 (= e!1487809 (list!11005 (xs!12027 (left!20997 lt!860373))))))

(assert (= (and d!686651 c!368221) b!2321389))

(assert (= (and d!686651 (not c!368221)) b!2321390))

(assert (= (and b!2321390 c!368222) b!2321391))

(assert (= (and b!2321390 (not c!368222)) b!2321392))

(declare-fun m!2750507 () Bool)

(assert (=> b!2321392 m!2750507))

(declare-fun m!2750509 () Bool)

(assert (=> b!2321392 m!2750509))

(assert (=> b!2321392 m!2750507))

(assert (=> b!2321392 m!2750509))

(declare-fun m!2750511 () Bool)

(assert (=> b!2321392 m!2750511))

(declare-fun m!2750513 () Bool)

(assert (=> b!2321391 m!2750513))

(assert (=> b!2321149 d!686651))

(declare-fun b!2321396 () Bool)

(declare-fun e!1487811 () List!27760)

(assert (=> b!2321396 (= e!1487811 (++!6818 (list!11004 (left!20997 (right!21327 lt!860373))) (list!11004 (right!21327 (right!21327 lt!860373)))))))

(declare-fun b!2321394 () Bool)

(declare-fun e!1487810 () List!27760)

(assert (=> b!2321394 (= e!1487810 e!1487811)))

(declare-fun c!368224 () Bool)

(assert (=> b!2321394 (= c!368224 ((_ is Leaf!13310) (right!21327 lt!860373)))))

(declare-fun d!686653 () Bool)

(declare-fun c!368223 () Bool)

(assert (=> d!686653 (= c!368223 ((_ is Empty!9067) (right!21327 lt!860373)))))

(assert (=> d!686653 (= (list!11004 (right!21327 lt!860373)) e!1487810)))

(declare-fun b!2321393 () Bool)

(assert (=> b!2321393 (= e!1487810 Nil!27662)))

(declare-fun b!2321395 () Bool)

(assert (=> b!2321395 (= e!1487811 (list!11005 (xs!12027 (right!21327 lt!860373))))))

(assert (= (and d!686653 c!368223) b!2321393))

(assert (= (and d!686653 (not c!368223)) b!2321394))

(assert (= (and b!2321394 c!368224) b!2321395))

(assert (= (and b!2321394 (not c!368224)) b!2321396))

(declare-fun m!2750515 () Bool)

(assert (=> b!2321396 m!2750515))

(declare-fun m!2750517 () Bool)

(assert (=> b!2321396 m!2750517))

(assert (=> b!2321396 m!2750515))

(assert (=> b!2321396 m!2750517))

(declare-fun m!2750519 () Bool)

(assert (=> b!2321396 m!2750519))

(declare-fun m!2750521 () Bool)

(assert (=> b!2321395 m!2750521))

(assert (=> b!2321149 d!686653))

(assert (=> b!2320913 d!686511))

(assert (=> b!2320913 d!686515))

(declare-fun d!686655 () Bool)

(assert (=> d!686655 (= (height!1328 (ite c!368149 (right!21327 acc!252) (left!20997 (Leaf!13310 arr!18 lt!860372)))) (ite ((_ is Empty!9067) (ite c!368149 (right!21327 acc!252) (left!20997 (Leaf!13310 arr!18 lt!860372)))) 0 (ite ((_ is Leaf!13310) (ite c!368149 (right!21327 acc!252) (left!20997 (Leaf!13310 arr!18 lt!860372)))) 1 (cheight!9278 (ite c!368149 (right!21327 acc!252) (left!20997 (Leaf!13310 arr!18 lt!860372)))))))))

(assert (=> bm!138363 d!686655))

(declare-fun d!686657 () Bool)

(assert (=> d!686657 (= (height!1328 (ite c!368149 (left!20997 acc!252) (Leaf!13310 arr!18 lt!860372))) (ite ((_ is Empty!9067) (ite c!368149 (left!20997 acc!252) (Leaf!13310 arr!18 lt!860372))) 0 (ite ((_ is Leaf!13310) (ite c!368149 (left!20997 acc!252) (Leaf!13310 arr!18 lt!860372))) 1 (cheight!9278 (ite c!368149 (left!20997 acc!252) (Leaf!13310 arr!18 lt!860372))))))))

(assert (=> bm!138353 d!686657))

(declare-fun d!686659 () Bool)

(declare-fun res!991690 () Bool)

(declare-fun e!1487812 () Bool)

(assert (=> d!686659 (=> (not res!991690) (not e!1487812))))

(assert (=> d!686659 (= res!991690 (<= (size!21920 (list!11005 (xs!12027 (left!20997 acc!252)))) 512))))

(assert (=> d!686659 (= (inv!37615 (left!20997 acc!252)) e!1487812)))

(declare-fun b!2321397 () Bool)

(declare-fun res!991691 () Bool)

(assert (=> b!2321397 (=> (not res!991691) (not e!1487812))))

(assert (=> b!2321397 (= res!991691 (= (csize!18365 (left!20997 acc!252)) (size!21920 (list!11005 (xs!12027 (left!20997 acc!252))))))))

(declare-fun b!2321398 () Bool)

(assert (=> b!2321398 (= e!1487812 (and (> (csize!18365 (left!20997 acc!252)) 0) (<= (csize!18365 (left!20997 acc!252)) 512)))))

(assert (= (and d!686659 res!991690) b!2321397))

(assert (= (and b!2321397 res!991691) b!2321398))

(assert (=> d!686659 m!2750413))

(assert (=> d!686659 m!2750413))

(declare-fun m!2750523 () Bool)

(assert (=> d!686659 m!2750523))

(assert (=> b!2321397 m!2750413))

(assert (=> b!2321397 m!2750413))

(assert (=> b!2321397 m!2750523))

(assert (=> b!2320928 d!686659))

(declare-fun d!686661 () Bool)

(declare-fun lt!860432 () Bool)

(assert (=> d!686661 (= lt!860432 (isEmpty!15791 (list!11004 (right!21327 lt!860373))))))

(assert (=> d!686661 (= lt!860432 (= (size!21921 (right!21327 lt!860373)) 0))))

(assert (=> d!686661 (= (isEmpty!15790 (right!21327 lt!860373)) lt!860432)))

(declare-fun bs!459045 () Bool)

(assert (= bs!459045 d!686661))

(assert (=> bs!459045 m!2750149))

(assert (=> bs!459045 m!2750149))

(declare-fun m!2750525 () Bool)

(assert (=> bs!459045 m!2750525))

(declare-fun m!2750527 () Bool)

(assert (=> bs!459045 m!2750527))

(assert (=> b!2320966 d!686661))

(declare-fun d!686663 () Bool)

(declare-fun res!991692 () Bool)

(declare-fun e!1487813 () Bool)

(assert (=> d!686663 (=> (not res!991692) (not e!1487813))))

(assert (=> d!686663 (= res!991692 (<= (size!21920 (list!11005 (xs!12027 acc!252))) 512))))

(assert (=> d!686663 (= (inv!37615 acc!252) e!1487813)))

(declare-fun b!2321399 () Bool)

(declare-fun res!991693 () Bool)

(assert (=> b!2321399 (=> (not res!991693) (not e!1487813))))

(assert (=> b!2321399 (= res!991693 (= (csize!18365 acc!252) (size!21920 (list!11005 (xs!12027 acc!252)))))))

(declare-fun b!2321400 () Bool)

(assert (=> b!2321400 (= e!1487813 (and (> (csize!18365 acc!252) 0) (<= (csize!18365 acc!252) 512)))))

(assert (= (and d!686663 res!991692) b!2321399))

(assert (= (and b!2321399 res!991693) b!2321400))

(assert (=> d!686663 m!2750205))

(assert (=> d!686663 m!2750205))

(declare-fun m!2750529 () Bool)

(assert (=> d!686663 m!2750529))

(assert (=> b!2321399 m!2750205))

(assert (=> b!2321399 m!2750205))

(assert (=> b!2321399 m!2750529))

(assert (=> b!2321125 d!686663))

(assert (=> b!2321112 d!686635))

(assert (=> b!2321112 d!686637))

(declare-fun d!686665 () Bool)

(declare-fun lt!860433 () Bool)

(assert (=> d!686665 (= lt!860433 (isEmpty!15791 (list!11004 (left!20997 acc!252))))))

(assert (=> d!686665 (= lt!860433 (= (size!21921 (left!20997 acc!252)) 0))))

(assert (=> d!686665 (= (isEmpty!15790 (left!20997 acc!252)) lt!860433)))

(declare-fun bs!459046 () Bool)

(assert (= bs!459046 d!686665))

(assert (=> bs!459046 m!2750199))

(assert (=> bs!459046 m!2750199))

(declare-fun m!2750531 () Bool)

(assert (=> bs!459046 m!2750531))

(assert (=> bs!459046 m!2750279))

(assert (=> b!2321110 d!686665))

(declare-fun b!2321401 () Bool)

(declare-fun e!1487815 () Bool)

(declare-fun e!1487814 () Bool)

(assert (=> b!2321401 (= e!1487815 e!1487814)))

(declare-fun res!991695 () Bool)

(assert (=> b!2321401 (=> (not res!991695) (not e!1487814))))

(assert (=> b!2321401 (= res!991695 (<= (- 1) (- (height!1328 (left!20997 (left!20997 lt!860373))) (height!1328 (right!21327 (left!20997 lt!860373))))))))

(declare-fun b!2321402 () Bool)

(declare-fun res!991696 () Bool)

(assert (=> b!2321402 (=> (not res!991696) (not e!1487814))))

(assert (=> b!2321402 (= res!991696 (not (isEmpty!15790 (left!20997 (left!20997 lt!860373)))))))

(declare-fun d!686667 () Bool)

(declare-fun res!991699 () Bool)

(assert (=> d!686667 (=> res!991699 e!1487815)))

(assert (=> d!686667 (= res!991699 (not ((_ is Node!9067) (left!20997 lt!860373))))))

(assert (=> d!686667 (= (isBalanced!2761 (left!20997 lt!860373)) e!1487815)))

(declare-fun b!2321403 () Bool)

(declare-fun res!991698 () Bool)

(assert (=> b!2321403 (=> (not res!991698) (not e!1487814))))

(assert (=> b!2321403 (= res!991698 (isBalanced!2761 (left!20997 (left!20997 lt!860373))))))

(declare-fun b!2321404 () Bool)

(declare-fun res!991697 () Bool)

(assert (=> b!2321404 (=> (not res!991697) (not e!1487814))))

(assert (=> b!2321404 (= res!991697 (<= (- (height!1328 (left!20997 (left!20997 lt!860373))) (height!1328 (right!21327 (left!20997 lt!860373)))) 1))))

(declare-fun b!2321405 () Bool)

(assert (=> b!2321405 (= e!1487814 (not (isEmpty!15790 (right!21327 (left!20997 lt!860373)))))))

(declare-fun b!2321406 () Bool)

(declare-fun res!991694 () Bool)

(assert (=> b!2321406 (=> (not res!991694) (not e!1487814))))

(assert (=> b!2321406 (= res!991694 (isBalanced!2761 (right!21327 (left!20997 lt!860373))))))

(assert (= (and d!686667 (not res!991699)) b!2321401))

(assert (= (and b!2321401 res!991695) b!2321404))

(assert (= (and b!2321404 res!991697) b!2321403))

(assert (= (and b!2321403 res!991698) b!2321406))

(assert (= (and b!2321406 res!991694) b!2321402))

(assert (= (and b!2321402 res!991696) b!2321405))

(declare-fun m!2750533 () Bool)

(assert (=> b!2321401 m!2750533))

(declare-fun m!2750535 () Bool)

(assert (=> b!2321401 m!2750535))

(declare-fun m!2750537 () Bool)

(assert (=> b!2321403 m!2750537))

(declare-fun m!2750539 () Bool)

(assert (=> b!2321406 m!2750539))

(declare-fun m!2750541 () Bool)

(assert (=> b!2321405 m!2750541))

(assert (=> b!2321404 m!2750533))

(assert (=> b!2321404 m!2750535))

(declare-fun m!2750543 () Bool)

(assert (=> b!2321402 m!2750543))

(assert (=> b!2320964 d!686667))

(assert (=> b!2321099 d!686609))

(assert (=> b!2321099 d!686611))

(assert (=> b!2321099 d!686597))

(assert (=> b!2321099 d!686595))

(declare-fun d!686669 () Bool)

(declare-fun c!368225 () Bool)

(assert (=> d!686669 (= c!368225 ((_ is Node!9067) (left!20997 (right!21327 acc!252))))))

(declare-fun e!1487816 () Bool)

(assert (=> d!686669 (= (inv!37611 (left!20997 (right!21327 acc!252))) e!1487816)))

(declare-fun b!2321407 () Bool)

(assert (=> b!2321407 (= e!1487816 (inv!37614 (left!20997 (right!21327 acc!252))))))

(declare-fun b!2321408 () Bool)

(declare-fun e!1487817 () Bool)

(assert (=> b!2321408 (= e!1487816 e!1487817)))

(declare-fun res!991700 () Bool)

(assert (=> b!2321408 (= res!991700 (not ((_ is Leaf!13310) (left!20997 (right!21327 acc!252)))))))

(assert (=> b!2321408 (=> res!991700 e!1487817)))

(declare-fun b!2321409 () Bool)

(assert (=> b!2321409 (= e!1487817 (inv!37615 (left!20997 (right!21327 acc!252))))))

(assert (= (and d!686669 c!368225) b!2321407))

(assert (= (and d!686669 (not c!368225)) b!2321408))

(assert (= (and b!2321408 (not res!991700)) b!2321409))

(declare-fun m!2750545 () Bool)

(assert (=> b!2321407 m!2750545))

(declare-fun m!2750547 () Bool)

(assert (=> b!2321409 m!2750547))

(assert (=> b!2321205 d!686669))

(declare-fun d!686671 () Bool)

(declare-fun c!368226 () Bool)

(assert (=> d!686671 (= c!368226 ((_ is Node!9067) (right!21327 (right!21327 acc!252))))))

(declare-fun e!1487818 () Bool)

(assert (=> d!686671 (= (inv!37611 (right!21327 (right!21327 acc!252))) e!1487818)))

(declare-fun b!2321410 () Bool)

(assert (=> b!2321410 (= e!1487818 (inv!37614 (right!21327 (right!21327 acc!252))))))

(declare-fun b!2321411 () Bool)

(declare-fun e!1487819 () Bool)

(assert (=> b!2321411 (= e!1487818 e!1487819)))

(declare-fun res!991701 () Bool)

(assert (=> b!2321411 (= res!991701 (not ((_ is Leaf!13310) (right!21327 (right!21327 acc!252)))))))

(assert (=> b!2321411 (=> res!991701 e!1487819)))

(declare-fun b!2321412 () Bool)

(assert (=> b!2321412 (= e!1487819 (inv!37615 (right!21327 (right!21327 acc!252))))))

(assert (= (and d!686671 c!368226) b!2321410))

(assert (= (and d!686671 (not c!368226)) b!2321411))

(assert (= (and b!2321411 (not res!991701)) b!2321412))

(declare-fun m!2750549 () Bool)

(assert (=> b!2321410 m!2750549))

(declare-fun m!2750551 () Bool)

(assert (=> b!2321412 m!2750551))

(assert (=> b!2321205 d!686671))

(declare-fun d!686673 () Bool)

(assert (=> d!686673 (= (height!1328 (ite c!368149 acc!252 (right!21327 (Leaf!13310 arr!18 lt!860372)))) (ite ((_ is Empty!9067) (ite c!368149 acc!252 (right!21327 (Leaf!13310 arr!18 lt!860372)))) 0 (ite ((_ is Leaf!13310) (ite c!368149 acc!252 (right!21327 (Leaf!13310 arr!18 lt!860372)))) 1 (cheight!9278 (ite c!368149 acc!252 (right!21327 (Leaf!13310 arr!18 lt!860372)))))))))

(assert (=> bm!138356 d!686673))

(declare-fun d!686675 () Bool)

(declare-fun lt!860434 () Int)

(assert (=> d!686675 (>= lt!860434 0)))

(declare-fun e!1487820 () Int)

(assert (=> d!686675 (= lt!860434 e!1487820)))

(declare-fun c!368227 () Bool)

(assert (=> d!686675 (= c!368227 ((_ is Nil!27662) (innerList!9127 arr!18)))))

(assert (=> d!686675 (= (size!21920 (innerList!9127 arr!18)) lt!860434)))

(declare-fun b!2321413 () Bool)

(assert (=> b!2321413 (= e!1487820 0)))

(declare-fun b!2321414 () Bool)

(assert (=> b!2321414 (= e!1487820 (+ 1 (size!21920 (t!207422 (innerList!9127 arr!18)))))))

(assert (= (and d!686675 c!368227) b!2321413))

(assert (= (and d!686675 (not c!368227)) b!2321414))

(declare-fun m!2750553 () Bool)

(assert (=> b!2321414 m!2750553))

(assert (=> d!686541 d!686675))

(declare-fun b!2321415 () Bool)

(declare-fun e!1487821 () Bool)

(declare-fun tp!736532 () Bool)

(assert (=> b!2321415 (= e!1487821 (and tp_is_empty!10821 tp!736532))))

(assert (=> b!2321213 (= tp!736531 e!1487821)))

(assert (= (and b!2321213 ((_ is Cons!27662) (t!207422 (innerList!9127 arr!18)))) b!2321415))

(declare-fun tp!736535 () Bool)

(declare-fun b!2321416 () Bool)

(declare-fun e!1487822 () Bool)

(declare-fun tp!736534 () Bool)

(assert (=> b!2321416 (= e!1487822 (and (inv!37611 (left!20997 (left!20997 (left!20997 acc!252)))) tp!736535 (inv!37611 (right!21327 (left!20997 (left!20997 acc!252)))) tp!736534))))

(declare-fun b!2321418 () Bool)

(declare-fun e!1487823 () Bool)

(declare-fun tp!736533 () Bool)

(assert (=> b!2321418 (= e!1487823 tp!736533)))

(declare-fun b!2321417 () Bool)

(assert (=> b!2321417 (= e!1487822 (and (inv!37610 (xs!12027 (left!20997 (left!20997 acc!252)))) e!1487823))))

(assert (=> b!2321202 (= tp!736524 (and (inv!37611 (left!20997 (left!20997 acc!252))) e!1487822))))

(assert (= (and b!2321202 ((_ is Node!9067) (left!20997 (left!20997 acc!252)))) b!2321416))

(assert (= b!2321417 b!2321418))

(assert (= (and b!2321202 ((_ is Leaf!13310) (left!20997 (left!20997 acc!252)))) b!2321417))

(declare-fun m!2750555 () Bool)

(assert (=> b!2321416 m!2750555))

(declare-fun m!2750557 () Bool)

(assert (=> b!2321416 m!2750557))

(declare-fun m!2750559 () Bool)

(assert (=> b!2321417 m!2750559))

(assert (=> b!2321202 m!2750207))

(declare-fun e!1487824 () Bool)

(declare-fun tp!736537 () Bool)

(declare-fun b!2321419 () Bool)

(declare-fun tp!736538 () Bool)

(assert (=> b!2321419 (= e!1487824 (and (inv!37611 (left!20997 (right!21327 (left!20997 acc!252)))) tp!736538 (inv!37611 (right!21327 (right!21327 (left!20997 acc!252)))) tp!736537))))

(declare-fun b!2321421 () Bool)

(declare-fun e!1487825 () Bool)

(declare-fun tp!736536 () Bool)

(assert (=> b!2321421 (= e!1487825 tp!736536)))

(declare-fun b!2321420 () Bool)

(assert (=> b!2321420 (= e!1487824 (and (inv!37610 (xs!12027 (right!21327 (left!20997 acc!252)))) e!1487825))))

(assert (=> b!2321202 (= tp!736523 (and (inv!37611 (right!21327 (left!20997 acc!252))) e!1487824))))

(assert (= (and b!2321202 ((_ is Node!9067) (right!21327 (left!20997 acc!252)))) b!2321419))

(assert (= b!2321420 b!2321421))

(assert (= (and b!2321202 ((_ is Leaf!13310) (right!21327 (left!20997 acc!252)))) b!2321420))

(declare-fun m!2750561 () Bool)

(assert (=> b!2321419 m!2750561))

(declare-fun m!2750563 () Bool)

(assert (=> b!2321419 m!2750563))

(declare-fun m!2750565 () Bool)

(assert (=> b!2321420 m!2750565))

(assert (=> b!2321202 m!2750209))

(declare-fun b!2321422 () Bool)

(declare-fun e!1487826 () Bool)

(declare-fun tp!736539 () Bool)

(assert (=> b!2321422 (= e!1487826 (and tp_is_empty!10821 tp!736539))))

(assert (=> b!2321207 (= tp!736525 e!1487826)))

(assert (= (and b!2321207 ((_ is Cons!27662) (innerList!9127 (xs!12027 (right!21327 acc!252))))) b!2321422))

(declare-fun e!1487827 () Bool)

(declare-fun tp!736542 () Bool)

(declare-fun tp!736541 () Bool)

(declare-fun b!2321423 () Bool)

(assert (=> b!2321423 (= e!1487827 (and (inv!37611 (left!20997 (left!20997 (right!21327 acc!252)))) tp!736542 (inv!37611 (right!21327 (left!20997 (right!21327 acc!252)))) tp!736541))))

(declare-fun b!2321425 () Bool)

(declare-fun e!1487828 () Bool)

(declare-fun tp!736540 () Bool)

(assert (=> b!2321425 (= e!1487828 tp!736540)))

(declare-fun b!2321424 () Bool)

(assert (=> b!2321424 (= e!1487827 (and (inv!37610 (xs!12027 (left!20997 (right!21327 acc!252)))) e!1487828))))

(assert (=> b!2321205 (= tp!736527 (and (inv!37611 (left!20997 (right!21327 acc!252))) e!1487827))))

(assert (= (and b!2321205 ((_ is Node!9067) (left!20997 (right!21327 acc!252)))) b!2321423))

(assert (= b!2321424 b!2321425))

(assert (= (and b!2321205 ((_ is Leaf!13310) (left!20997 (right!21327 acc!252)))) b!2321424))

(declare-fun m!2750567 () Bool)

(assert (=> b!2321423 m!2750567))

(declare-fun m!2750569 () Bool)

(assert (=> b!2321423 m!2750569))

(declare-fun m!2750571 () Bool)

(assert (=> b!2321424 m!2750571))

(assert (=> b!2321205 m!2750213))

(declare-fun tp!736544 () Bool)

(declare-fun b!2321426 () Bool)

(declare-fun e!1487829 () Bool)

(declare-fun tp!736545 () Bool)

(assert (=> b!2321426 (= e!1487829 (and (inv!37611 (left!20997 (right!21327 (right!21327 acc!252)))) tp!736545 (inv!37611 (right!21327 (right!21327 (right!21327 acc!252)))) tp!736544))))

(declare-fun b!2321428 () Bool)

(declare-fun e!1487830 () Bool)

(declare-fun tp!736543 () Bool)

(assert (=> b!2321428 (= e!1487830 tp!736543)))

(declare-fun b!2321427 () Bool)

(assert (=> b!2321427 (= e!1487829 (and (inv!37610 (xs!12027 (right!21327 (right!21327 acc!252)))) e!1487830))))

(assert (=> b!2321205 (= tp!736526 (and (inv!37611 (right!21327 (right!21327 acc!252))) e!1487829))))

(assert (= (and b!2321205 ((_ is Node!9067) (right!21327 (right!21327 acc!252)))) b!2321426))

(assert (= b!2321427 b!2321428))

(assert (= (and b!2321205 ((_ is Leaf!13310) (right!21327 (right!21327 acc!252)))) b!2321427))

(declare-fun m!2750573 () Bool)

(assert (=> b!2321426 m!2750573))

(declare-fun m!2750575 () Bool)

(assert (=> b!2321426 m!2750575))

(declare-fun m!2750577 () Bool)

(assert (=> b!2321427 m!2750577))

(assert (=> b!2321205 m!2750215))

(declare-fun b!2321429 () Bool)

(declare-fun e!1487831 () Bool)

(declare-fun tp!736546 () Bool)

(assert (=> b!2321429 (= e!1487831 (and tp_is_empty!10821 tp!736546))))

(assert (=> b!2321212 (= tp!736530 e!1487831)))

(assert (= (and b!2321212 ((_ is Cons!27662) (t!207422 (innerList!9127 (xs!12027 acc!252))))) b!2321429))

(declare-fun b!2321430 () Bool)

(declare-fun e!1487832 () Bool)

(declare-fun tp!736547 () Bool)

(assert (=> b!2321430 (= e!1487832 (and tp_is_empty!10821 tp!736547))))

(assert (=> b!2321204 (= tp!736522 e!1487832)))

(assert (= (and b!2321204 ((_ is Cons!27662) (innerList!9127 (xs!12027 (left!20997 acc!252))))) b!2321430))

(check-sat (not d!686593) (not b!2321333) tp_is_empty!10821 (not b!2321313) (not d!686563) (not b!2321401) (not b!2321387) (not b!2321386) (not b!2321224) (not b!2321319) (not b!2321255) (not b!2321370) (not b!2321261) (not b!2321414) (not b!2321361) (not b!2321310) (not b!2321429) (not b!2321372) (not b!2321373) (not d!686589) (not b!2321378) (not b!2321425) (not b!2321323) (not d!686659) (not b!2321403) (not b!2321397) (not b!2321268) (not d!686663) (not b!2321326) (not b!2321409) (not b!2321384) (not d!686607) (not b!2321226) (not b!2321231) (not bm!138379) (not b!2321316) (not b!2321355) (not b!2321418) (not b!2321399) (not b!2321320) (not b!2321327) (not bm!138374) (not b!2321257) (not b!2321412) (not b!2321321) (not d!686559) (not d!686661) (not b!2321295) (not b!2321288) (not b!2321290) (not d!686633) (not b!2321377) (not b!2321312) (not b!2321324) (not b!2321395) (not b!2321353) (not b!2321259) (not b!2321410) (not b!2321222) (not b!2321317) (not b!2321328) (not b!2321383) (not bm!138367) (not b!2321223) (not b!2321417) (not b!2321406) (not b!2321380) (not b!2321322) (not bm!138369) (not b!2321266) (not d!686639) (not d!686649) (not b!2321357) (not b!2321335) (not b!2321428) (not d!686665) (not b!2321407) (not d!686561) (not b!2321236) (not b!2321263) (not b!2321416) (not b!2321330) (not b!2321340) (not b!2321293) (not d!686617) (not bm!138372) (not b!2321294) (not b!2321265) (not b!2321379) (not b!2321358) (not b!2321267) (not b!2321291) (not b!2321391) (not b!2321311) (not b!2321318) (not b!2321402) (not b!2321430) (not b!2321336) (not b!2321331) (not b!2321423) (not b!2321351) (not bm!138377) (not b!2321341) (not b!2321325) (not b!2321392) (not b!2321308) (not bm!138375) (not b!2321315) (not b!2321307) (not b!2321345) (not b!2321218) (not b!2321344) (not b!2321381) (not b!2321426) (not b!2321424) (not d!686585) (not b!2321396) (not b!2321420) (not d!686631) (not b!2321248) (not b!2321205) (not b!2321264) (not d!686643) (not b!2321404) (not b!2321309) (not b!2321422) (not b!2321421) (not b!2321382) (not d!686629) (not b!2321366) (not d!686565) (not b!2321202) (not b!2321369) (not d!686577) (not b!2321419) (not b!2321427) (not b!2321405) (not b!2321415))
(check-sat)
