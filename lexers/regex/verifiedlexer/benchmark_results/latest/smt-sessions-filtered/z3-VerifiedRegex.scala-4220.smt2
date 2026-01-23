; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228402 () Bool)

(assert start!228402)

(declare-fun res!989154 () Bool)

(declare-fun e!1484233 () Bool)

(assert (=> start!228402 (=> res!989154 e!1484233)))

(declare-datatypes ((T!43558 0))(
  ( (T!43559 (val!7930 Int)) )
))
(declare-datatypes ((List!27716 0))(
  ( (Nil!27618) (Cons!27618 (h!33019 T!43558) (t!207318 List!27716)) )
))
(declare-datatypes ((IArray!18051 0))(
  ( (IArray!18052 (innerList!9083 List!27716)) )
))
(declare-datatypes ((Conc!9023 0))(
  ( (Node!9023 (left!20931 Conc!9023) (right!21261 Conc!9023) (csize!18276 Int) (cheight!9234 Int)) (Leaf!13244 (xs!11965 IArray!18051) (csize!18277 Int)) (Empty!9023) )
))
(declare-fun lt!858251 () Conc!9023)

(declare-fun arr!15 () IArray!18051)

(declare-datatypes ((BalanceConc!17770 0))(
  ( (BalanceConc!17771 (c!366913 Conc!9023)) )
))
(declare-fun list!10928 (BalanceConc!17770) List!27716)

(declare-fun list!10929 (IArray!18051) List!27716)

(assert (=> start!228402 (= res!989154 (not (= (list!10928 (BalanceConc!17771 lt!858251)) (list!10929 arr!15))))))

(declare-fun fromArray!5 (IArray!18051 Conc!9023) Conc!9023)

(assert (=> start!228402 (= lt!858251 (fromArray!5 arr!15 Empty!9023))))

(assert (=> start!228402 e!1484233))

(declare-fun e!1484232 () Bool)

(declare-fun inv!37413 (IArray!18051) Bool)

(assert (=> start!228402 (and (inv!37413 arr!15) e!1484232)))

(declare-fun b!2315018 () Bool)

(declare-fun isBalanced!2717 (Conc!9023) Bool)

(assert (=> b!2315018 (= e!1484233 (not (isBalanced!2717 lt!858251)))))

(declare-fun b!2315019 () Bool)

(declare-fun tp!735411 () Bool)

(assert (=> b!2315019 (= e!1484232 tp!735411)))

(assert (= (and start!228402 (not res!989154)) b!2315018))

(assert (= start!228402 b!2315019))

(declare-fun m!2741857 () Bool)

(assert (=> start!228402 m!2741857))

(declare-fun m!2741859 () Bool)

(assert (=> start!228402 m!2741859))

(declare-fun m!2741861 () Bool)

(assert (=> start!228402 m!2741861))

(declare-fun m!2741863 () Bool)

(assert (=> start!228402 m!2741863))

(declare-fun m!2741865 () Bool)

(assert (=> b!2315018 m!2741865))

(check-sat (not start!228402) (not b!2315018) (not b!2315019))
(check-sat)
(get-model)

(declare-fun d!684545 () Bool)

(declare-fun list!10931 (Conc!9023) List!27716)

(assert (=> d!684545 (= (list!10928 (BalanceConc!17771 lt!858251)) (list!10931 (c!366913 (BalanceConc!17771 lt!858251))))))

(declare-fun bs!458790 () Bool)

(assert (= bs!458790 d!684545))

(declare-fun m!2741867 () Bool)

(assert (=> bs!458790 m!2741867))

(assert (=> start!228402 d!684545))

(declare-fun d!684549 () Bool)

(assert (=> d!684549 (= (list!10929 arr!15) (innerList!9083 arr!15))))

(assert (=> start!228402 d!684549))

(declare-fun bm!137454 () Bool)

(declare-fun call!137459 () Int)

(declare-fun size!21831 (IArray!18051) Int)

(assert (=> bm!137454 (= call!137459 (size!21831 arr!15))))

(declare-fun b!2315045 () Bool)

(declare-fun e!1484249 () Conc!9023)

(declare-fun call!137460 () Conc!9023)

(declare-fun slice!636 (IArray!18051 Int Int) IArray!18051)

(assert (=> b!2315045 (= e!1484249 (fromArray!5 (slice!636 arr!15 512 call!137459) call!137460))))

(declare-fun lt!858312 () Conc!9023)

(assert (=> b!2315045 (= lt!858312 (Leaf!13244 (slice!636 arr!15 0 512) 512))))

(declare-fun lt!858318 () Conc!9023)

(assert (=> b!2315045 (= lt!858318 (fromArray!5 (slice!636 arr!15 512 call!137459) call!137460))))

(declare-fun lt!858321 () List!27716)

(assert (=> b!2315045 (= lt!858321 (list!10931 Empty!9023))))

(declare-fun lt!858316 () List!27716)

(assert (=> b!2315045 (= lt!858316 (list!10931 lt!858312))))

(declare-fun lt!858322 () List!27716)

(assert (=> b!2315045 (= lt!858322 (list!10929 (slice!636 arr!15 512 call!137459)))))

(declare-datatypes ((Unit!40468 0))(
  ( (Unit!40469) )
))
(declare-fun lt!858323 () Unit!40468)

(declare-fun lemmaConcatAssociativity!1432 (List!27716 List!27716 List!27716) Unit!40468)

(assert (=> b!2315045 (= lt!858323 (lemmaConcatAssociativity!1432 lt!858321 lt!858316 lt!858322))))

(declare-fun ++!6754 (List!27716 List!27716) List!27716)

(assert (=> b!2315045 (= (++!6754 (++!6754 lt!858321 lt!858316) lt!858322) (++!6754 lt!858321 (++!6754 lt!858316 lt!858322)))))

(declare-fun lt!858314 () Unit!40468)

(assert (=> b!2315045 (= lt!858314 lt!858323)))

(declare-fun lt!858315 () List!27716)

(assert (=> b!2315045 (= lt!858315 (list!10929 arr!15))))

(declare-fun lt!858317 () Int)

(assert (=> b!2315045 (= lt!858317 512)))

(declare-fun lt!858313 () Unit!40468)

(declare-fun sliceSplit!3 (List!27716 Int) Unit!40468)

(assert (=> b!2315045 (= lt!858313 (sliceSplit!3 lt!858315 lt!858317))))

(declare-fun slice!638 (List!27716 Int Int) List!27716)

(declare-fun size!21833 (List!27716) Int)

(assert (=> b!2315045 (= (++!6754 (slice!638 lt!858315 0 lt!858317) (slice!638 lt!858315 lt!858317 (size!21833 lt!858315))) lt!858315)))

(declare-fun lt!858319 () Unit!40468)

(assert (=> b!2315045 (= lt!858319 lt!858313)))

(declare-fun b!2315046 () Bool)

(declare-fun e!1484250 () Bool)

(declare-fun lt!858320 () Conc!9023)

(assert (=> b!2315046 (= e!1484250 (= (list!10931 lt!858320) (++!6754 (list!10931 Empty!9023) (list!10929 arr!15))))))

(declare-fun b!2315047 () Bool)

(declare-fun e!1484251 () Conc!9023)

(assert (=> b!2315047 (= e!1484251 call!137460)))

(declare-fun b!2315048 () Bool)

(assert (=> b!2315048 (= e!1484251 Empty!9023)))

(declare-fun d!684553 () Bool)

(assert (=> d!684553 e!1484250))

(declare-fun res!989160 () Bool)

(assert (=> d!684553 (=> (not res!989160) (not e!1484250))))

(assert (=> d!684553 (= res!989160 (isBalanced!2717 lt!858320))))

(assert (=> d!684553 (= lt!858320 e!1484249)))

(declare-fun c!366925 () Bool)

(assert (=> d!684553 (= c!366925 (<= (size!21831 arr!15) 512))))

(assert (=> d!684553 (isBalanced!2717 Empty!9023)))

(assert (=> d!684553 (= (fromArray!5 arr!15 Empty!9023) lt!858320)))

(declare-fun b!2315049 () Bool)

(assert (=> b!2315049 (= e!1484249 e!1484251)))

(declare-fun c!366924 () Bool)

(assert (=> b!2315049 (= c!366924 (= call!137459 0))))

(declare-fun bm!137455 () Bool)

(declare-fun ++!6755 (Conc!9023 Conc!9023) Conc!9023)

(assert (=> bm!137455 (= call!137460 (++!6755 Empty!9023 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312)))))

(assert (= (and d!684553 c!366925) b!2315049))

(assert (= (and d!684553 (not c!366925)) b!2315045))

(assert (= (and b!2315049 c!366924) b!2315048))

(assert (= (and b!2315049 (not c!366924)) b!2315047))

(assert (= (or b!2315049 b!2315047 b!2315045) bm!137454))

(assert (= (or b!2315047 b!2315045) bm!137455))

(assert (= (and d!684553 res!989160) b!2315046))

(declare-fun m!2741873 () Bool)

(assert (=> d!684553 m!2741873))

(declare-fun m!2741877 () Bool)

(assert (=> d!684553 m!2741877))

(declare-fun m!2741881 () Bool)

(assert (=> d!684553 m!2741881))

(assert (=> bm!137454 m!2741877))

(declare-fun m!2741885 () Bool)

(assert (=> b!2315046 m!2741885))

(declare-fun m!2741889 () Bool)

(assert (=> b!2315046 m!2741889))

(assert (=> b!2315046 m!2741859))

(assert (=> b!2315046 m!2741889))

(assert (=> b!2315046 m!2741859))

(declare-fun m!2741893 () Bool)

(assert (=> b!2315046 m!2741893))

(declare-fun m!2741897 () Bool)

(assert (=> bm!137455 m!2741897))

(declare-fun m!2741901 () Bool)

(assert (=> b!2315045 m!2741901))

(assert (=> b!2315045 m!2741889))

(declare-fun m!2741907 () Bool)

(assert (=> b!2315045 m!2741907))

(declare-fun m!2741911 () Bool)

(assert (=> b!2315045 m!2741911))

(declare-fun m!2741915 () Bool)

(assert (=> b!2315045 m!2741915))

(declare-fun m!2741917 () Bool)

(assert (=> b!2315045 m!2741917))

(assert (=> b!2315045 m!2741917))

(declare-fun m!2741923 () Bool)

(assert (=> b!2315045 m!2741923))

(declare-fun m!2741927 () Bool)

(assert (=> b!2315045 m!2741927))

(declare-fun m!2741929 () Bool)

(assert (=> b!2315045 m!2741929))

(assert (=> b!2315045 m!2741859))

(declare-fun m!2741933 () Bool)

(assert (=> b!2315045 m!2741933))

(assert (=> b!2315045 m!2741907))

(declare-fun m!2741939 () Bool)

(assert (=> b!2315045 m!2741939))

(declare-fun m!2741943 () Bool)

(assert (=> b!2315045 m!2741943))

(declare-fun m!2741947 () Bool)

(assert (=> b!2315045 m!2741947))

(assert (=> b!2315045 m!2741939))

(assert (=> b!2315045 m!2741947))

(assert (=> b!2315045 m!2741911))

(declare-fun m!2741953 () Bool)

(assert (=> b!2315045 m!2741953))

(assert (=> b!2315045 m!2741917))

(declare-fun m!2741955 () Bool)

(assert (=> b!2315045 m!2741955))

(assert (=> b!2315045 m!2741927))

(declare-fun m!2741957 () Bool)

(assert (=> b!2315045 m!2741957))

(assert (=> start!228402 d!684553))

(declare-fun d!684559 () Bool)

(assert (=> d!684559 (= (inv!37413 arr!15) (<= (size!21833 (innerList!9083 arr!15)) 2147483647))))

(declare-fun bs!458793 () Bool)

(assert (= bs!458793 d!684559))

(declare-fun m!2741961 () Bool)

(assert (=> bs!458793 m!2741961))

(assert (=> start!228402 d!684559))

(declare-fun b!2315080 () Bool)

(declare-fun res!989195 () Bool)

(declare-fun e!1484263 () Bool)

(assert (=> b!2315080 (=> (not res!989195) (not e!1484263))))

(declare-fun height!1303 (Conc!9023) Int)

(assert (=> b!2315080 (= res!989195 (<= (- (height!1303 (left!20931 lt!858251)) (height!1303 (right!21261 lt!858251))) 1))))

(declare-fun b!2315081 () Bool)

(declare-fun isEmpty!15755 (Conc!9023) Bool)

(assert (=> b!2315081 (= e!1484263 (not (isEmpty!15755 (right!21261 lt!858251))))))

(declare-fun b!2315082 () Bool)

(declare-fun e!1484262 () Bool)

(assert (=> b!2315082 (= e!1484262 e!1484263)))

(declare-fun res!989192 () Bool)

(assert (=> b!2315082 (=> (not res!989192) (not e!1484263))))

(assert (=> b!2315082 (= res!989192 (<= (- 1) (- (height!1303 (left!20931 lt!858251)) (height!1303 (right!21261 lt!858251)))))))

(declare-fun b!2315083 () Bool)

(declare-fun res!989191 () Bool)

(assert (=> b!2315083 (=> (not res!989191) (not e!1484263))))

(assert (=> b!2315083 (= res!989191 (isBalanced!2717 (right!21261 lt!858251)))))

(declare-fun b!2315084 () Bool)

(declare-fun res!989193 () Bool)

(assert (=> b!2315084 (=> (not res!989193) (not e!1484263))))

(assert (=> b!2315084 (= res!989193 (isBalanced!2717 (left!20931 lt!858251)))))

(declare-fun b!2315085 () Bool)

(declare-fun res!989196 () Bool)

(assert (=> b!2315085 (=> (not res!989196) (not e!1484263))))

(assert (=> b!2315085 (= res!989196 (not (isEmpty!15755 (left!20931 lt!858251))))))

(declare-fun d!684563 () Bool)

(declare-fun res!989194 () Bool)

(assert (=> d!684563 (=> res!989194 e!1484262)))

(get-info :version)

(assert (=> d!684563 (= res!989194 (not ((_ is Node!9023) lt!858251)))))

(assert (=> d!684563 (= (isBalanced!2717 lt!858251) e!1484262)))

(assert (= (and d!684563 (not res!989194)) b!2315082))

(assert (= (and b!2315082 res!989192) b!2315080))

(assert (= (and b!2315080 res!989195) b!2315084))

(assert (= (and b!2315084 res!989193) b!2315083))

(assert (= (and b!2315083 res!989191) b!2315085))

(assert (= (and b!2315085 res!989196) b!2315081))

(declare-fun m!2741971 () Bool)

(assert (=> b!2315085 m!2741971))

(declare-fun m!2741973 () Bool)

(assert (=> b!2315083 m!2741973))

(declare-fun m!2741977 () Bool)

(assert (=> b!2315084 m!2741977))

(declare-fun m!2741981 () Bool)

(assert (=> b!2315082 m!2741981))

(declare-fun m!2741983 () Bool)

(assert (=> b!2315082 m!2741983))

(assert (=> b!2315080 m!2741981))

(assert (=> b!2315080 m!2741983))

(declare-fun m!2741985 () Bool)

(assert (=> b!2315081 m!2741985))

(assert (=> b!2315018 d!684563))

(declare-fun b!2315095 () Bool)

(declare-fun e!1484269 () Bool)

(declare-fun tp_is_empty!10773 () Bool)

(declare-fun tp!735417 () Bool)

(assert (=> b!2315095 (= e!1484269 (and tp_is_empty!10773 tp!735417))))

(assert (=> b!2315019 (= tp!735411 e!1484269)))

(assert (= (and b!2315019 ((_ is Cons!27618) (innerList!9083 arr!15))) b!2315095))

(check-sat (not b!2315045) (not bm!137454) (not b!2315080) (not b!2315095) (not b!2315046) (not bm!137455) (not d!684559) (not b!2315084) (not b!2315085) (not b!2315082) tp_is_empty!10773 (not b!2315083) (not b!2315081) (not d!684553) (not d!684545))
(check-sat)
(get-model)

(declare-fun d!684565 () Bool)

(assert (=> d!684565 (= (height!1303 (left!20931 lt!858251)) (ite ((_ is Empty!9023) (left!20931 lt!858251)) 0 (ite ((_ is Leaf!13244) (left!20931 lt!858251)) 1 (cheight!9234 (left!20931 lt!858251)))))))

(assert (=> b!2315080 d!684565))

(declare-fun d!684567 () Bool)

(assert (=> d!684567 (= (height!1303 (right!21261 lt!858251)) (ite ((_ is Empty!9023) (right!21261 lt!858251)) 0 (ite ((_ is Leaf!13244) (right!21261 lt!858251)) 1 (cheight!9234 (right!21261 lt!858251)))))))

(assert (=> b!2315080 d!684567))

(declare-fun b!2315188 () Bool)

(declare-fun e!1484321 () Conc!9023)

(declare-fun e!1484319 () Conc!9023)

(assert (=> b!2315188 (= e!1484321 e!1484319)))

(declare-fun lt!858343 () Conc!9023)

(declare-fun call!137495 () Conc!9023)

(assert (=> b!2315188 (= lt!858343 call!137495)))

(declare-fun c!366960 () Bool)

(declare-fun call!137505 () Int)

(declare-fun call!137498 () Int)

(assert (=> b!2315188 (= c!366960 (= call!137505 (- call!137498 3)))))

(declare-fun b!2315189 () Bool)

(declare-fun e!1484312 () Conc!9023)

(declare-fun call!137506 () Conc!9023)

(assert (=> b!2315189 (= e!1484312 call!137506)))

(declare-fun bm!137488 () Bool)

(declare-fun call!137500 () Conc!9023)

(declare-fun call!137504 () Conc!9023)

(assert (=> bm!137488 (= call!137500 call!137504)))

(declare-fun bm!137489 () Bool)

(assert (=> bm!137489 (= call!137495 call!137504)))

(declare-fun d!684569 () Bool)

(declare-fun e!1484315 () Bool)

(assert (=> d!684569 e!1484315))

(declare-fun res!989233 () Bool)

(assert (=> d!684569 (=> (not res!989233) (not e!1484315))))

(declare-fun appendAssocInst!591 (Conc!9023 Conc!9023) Bool)

(assert (=> d!684569 (= res!989233 (appendAssocInst!591 Empty!9023 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312)))))

(declare-fun lt!858345 () Conc!9023)

(declare-fun e!1484320 () Conc!9023)

(assert (=> d!684569 (= lt!858345 e!1484320)))

(declare-fun c!366961 () Bool)

(assert (=> d!684569 (= c!366961 (= Empty!9023 Empty!9023))))

(declare-fun e!1484318 () Bool)

(assert (=> d!684569 e!1484318))

(declare-fun res!989235 () Bool)

(assert (=> d!684569 (=> (not res!989235) (not e!1484318))))

(assert (=> d!684569 (= res!989235 (isBalanced!2717 Empty!9023))))

(assert (=> d!684569 (= (++!6755 Empty!9023 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312)) lt!858345)))

(declare-fun c!366958 () Bool)

(declare-fun c!366962 () Bool)

(declare-fun bm!137490 () Bool)

(declare-fun c!366957 () Bool)

(assert (=> bm!137490 (= call!137504 (++!6755 (ite c!366957 (ite c!366962 (right!21261 Empty!9023) (right!21261 (right!21261 Empty!9023))) Empty!9023) (ite c!366957 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312) (ite c!366958 (left!20931 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312)) (left!20931 (left!20931 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312)))))))))

(declare-fun bm!137491 () Bool)

(assert (=> bm!137491 (= call!137505 (height!1303 (ite c!366957 (right!21261 Empty!9023) lt!858343)))))

(declare-fun b!2315190 () Bool)

(declare-fun e!1484316 () Conc!9023)

(assert (=> b!2315190 (= e!1484320 e!1484316)))

(declare-fun c!366956 () Bool)

(assert (=> b!2315190 (= c!366956 (= (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312) Empty!9023))))

(declare-fun b!2315191 () Bool)

(declare-fun res!989231 () Bool)

(assert (=> b!2315191 (=> (not res!989231) (not e!1484315))))

(assert (=> b!2315191 (= res!989231 (isBalanced!2717 lt!858345))))

(declare-fun bm!137492 () Bool)

(declare-fun call!137502 () Conc!9023)

(assert (=> bm!137492 (= call!137506 call!137502)))

(declare-fun b!2315192 () Bool)

(declare-fun res!989232 () Bool)

(assert (=> b!2315192 (=> (not res!989232) (not e!1484315))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2315192 (= res!989232 (<= (height!1303 lt!858345) (+ (max!0 (height!1303 Empty!9023) (height!1303 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312))) 1)))))

(declare-fun bm!137493 () Bool)

(declare-fun call!137503 () Conc!9023)

(assert (=> bm!137493 (= call!137502 call!137503)))

(declare-fun bm!137494 () Bool)

(declare-fun call!137493 () Int)

(assert (=> bm!137494 (= call!137493 (height!1303 (ite c!366957 Empty!9023 (left!20931 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312)))))))

(declare-fun bm!137495 () Bool)

(declare-fun call!137501 () Conc!9023)

(declare-fun call!137507 () Conc!9023)

(assert (=> bm!137495 (= call!137501 call!137507)))

(declare-fun bm!137496 () Bool)

(declare-fun call!137494 () Conc!9023)

(declare-fun call!137497 () Conc!9023)

(assert (=> bm!137496 (= call!137494 call!137497)))

(declare-fun bm!137497 () Bool)

(assert (=> bm!137497 (= call!137507 call!137503)))

(declare-fun b!2315193 () Bool)

(assert (=> b!2315193 (= e!1484321 call!137507)))

(declare-fun bm!137498 () Bool)

(declare-fun call!137496 () Int)

(assert (=> bm!137498 (= call!137496 (height!1303 (ite c!366957 (left!20931 Empty!9023) (right!21261 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312)))))))

(declare-fun b!2315194 () Bool)

(declare-fun res!989234 () Bool)

(assert (=> b!2315194 (=> (not res!989234) (not e!1484315))))

(assert (=> b!2315194 (= res!989234 (>= (height!1303 lt!858345) (max!0 (height!1303 Empty!9023) (height!1303 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312)))))))

(declare-fun b!2315195 () Bool)

(assert (=> b!2315195 (= c!366958 (>= call!137496 call!137493))))

(declare-fun e!1484313 () Conc!9023)

(assert (=> b!2315195 (= e!1484313 e!1484321)))

(declare-fun b!2315196 () Bool)

(assert (=> b!2315196 (= e!1484319 call!137501)))

(declare-fun b!2315197 () Bool)

(assert (=> b!2315197 (= e!1484319 call!137501)))

(declare-fun b!2315198 () Bool)

(assert (=> b!2315198 (= e!1484316 Empty!9023)))

(declare-fun b!2315199 () Bool)

(assert (=> b!2315199 (= e!1484315 (= (list!10931 lt!858345) (++!6754 (list!10931 Empty!9023) (list!10931 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312)))))))

(declare-fun b!2315200 () Bool)

(declare-fun e!1484317 () Conc!9023)

(assert (=> b!2315200 (= e!1484317 e!1484313)))

(declare-fun lt!858344 () Int)

(assert (=> b!2315200 (= c!366957 (< lt!858344 (- 1)))))

(declare-fun b!2315201 () Bool)

(declare-fun c!366959 () Bool)

(assert (=> b!2315201 (= c!366959 (and (<= (- 1) lt!858344) (<= lt!858344 1)))))

(assert (=> b!2315201 (= lt!858344 (- (height!1303 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312)) (height!1303 Empty!9023)))))

(assert (=> b!2315201 (= e!1484316 e!1484317)))

(declare-fun b!2315202 () Bool)

(declare-fun e!1484314 () Conc!9023)

(assert (=> b!2315202 (= e!1484314 call!137502)))

(declare-fun b!2315203 () Bool)

(assert (=> b!2315203 (= e!1484318 (isBalanced!2717 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312)))))

(declare-fun bm!137499 () Bool)

(declare-fun call!137508 () Conc!9023)

(assert (=> bm!137499 (= call!137497 call!137508)))

(declare-fun b!2315204 () Bool)

(assert (=> b!2315204 (= e!1484317 call!137508)))

(declare-fun b!2315205 () Bool)

(assert (=> b!2315205 (= c!366962 (>= call!137496 call!137505))))

(assert (=> b!2315205 (= e!1484313 e!1484314)))

(declare-fun b!2315206 () Bool)

(assert (=> b!2315206 (= e!1484320 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312))))

(declare-fun bm!137500 () Bool)

(declare-fun call!137499 () Conc!9023)

(declare-fun c!366955 () Bool)

(declare-fun lt!858342 () Conc!9023)

(declare-fun <>!197 (Conc!9023 Conc!9023) Conc!9023)

(assert (=> bm!137500 (= call!137503 (<>!197 (ite c!366957 (ite (or c!366962 c!366955) (left!20931 Empty!9023) call!137499) (ite c!366958 call!137495 (ite c!366960 call!137494 lt!858343))) (ite c!366957 (ite c!366962 call!137500 (ite c!366955 call!137499 lt!858342)) (ite (or c!366958 c!366960) (right!21261 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312)) call!137494))))))

(declare-fun bm!137501 () Bool)

(assert (=> bm!137501 (= call!137508 (<>!197 (ite c!366959 Empty!9023 (ite c!366957 (ite c!366955 (left!20931 (right!21261 Empty!9023)) (left!20931 Empty!9023)) (ite c!366960 lt!858343 (right!21261 (left!20931 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312)))))) (ite c!366959 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312) (ite c!366957 (ite c!366955 lt!858342 (left!20931 (right!21261 Empty!9023))) (ite c!366960 (right!21261 (left!20931 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312))) (right!21261 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312)))))))))

(declare-fun bm!137502 () Bool)

(assert (=> bm!137502 (= call!137498 (height!1303 (ite c!366957 lt!858342 (ite c!366925 (Leaf!13244 arr!15 call!137459) lt!858312))))))

(declare-fun b!2315207 () Bool)

(assert (=> b!2315207 (= e!1484312 call!137506)))

(declare-fun b!2315208 () Bool)

(assert (=> b!2315208 (= e!1484314 e!1484312)))

(assert (=> b!2315208 (= lt!858342 call!137500)))

(assert (=> b!2315208 (= c!366955 (= call!137498 (- call!137493 3)))))

(declare-fun bm!137503 () Bool)

(assert (=> bm!137503 (= call!137499 call!137497)))

(assert (= (and d!684569 res!989235) b!2315203))

(assert (= (and d!684569 c!366961) b!2315206))

(assert (= (and d!684569 (not c!366961)) b!2315190))

(assert (= (and b!2315190 c!366956) b!2315198))

(assert (= (and b!2315190 (not c!366956)) b!2315201))

(assert (= (and b!2315201 c!366959) b!2315204))

(assert (= (and b!2315201 (not c!366959)) b!2315200))

(assert (= (and b!2315200 c!366957) b!2315205))

(assert (= (and b!2315200 (not c!366957)) b!2315195))

(assert (= (and b!2315205 c!366962) b!2315202))

(assert (= (and b!2315205 (not c!366962)) b!2315208))

(assert (= (and b!2315208 c!366955) b!2315207))

(assert (= (and b!2315208 (not c!366955)) b!2315189))

(assert (= (or b!2315207 b!2315189) bm!137503))

(assert (= (or b!2315207 b!2315189) bm!137492))

(assert (= (or b!2315202 b!2315208) bm!137488))

(assert (= (or b!2315202 bm!137492) bm!137493))

(assert (= (and b!2315195 c!366958) b!2315193))

(assert (= (and b!2315195 (not c!366958)) b!2315188))

(assert (= (and b!2315188 c!366960) b!2315197))

(assert (= (and b!2315188 (not c!366960)) b!2315196))

(assert (= (or b!2315197 b!2315196) bm!137496))

(assert (= (or b!2315197 b!2315196) bm!137495))

(assert (= (or b!2315193 b!2315188) bm!137489))

(assert (= (or b!2315193 bm!137495) bm!137497))

(assert (= (or bm!137488 bm!137489) bm!137490))

(assert (= (or b!2315208 b!2315195) bm!137494))

(assert (= (or b!2315205 b!2315195) bm!137498))

(assert (= (or bm!137503 bm!137496) bm!137499))

(assert (= (or b!2315208 b!2315188) bm!137502))

(assert (= (or bm!137493 bm!137497) bm!137500))

(assert (= (or b!2315205 b!2315188) bm!137491))

(assert (= (or b!2315204 bm!137499) bm!137501))

(assert (= (and d!684569 res!989233) b!2315191))

(assert (= (and b!2315191 res!989231) b!2315192))

(assert (= (and b!2315192 res!989232) b!2315194))

(assert (= (and b!2315194 res!989234) b!2315199))

(declare-fun m!2742077 () Bool)

(assert (=> bm!137490 m!2742077))

(declare-fun m!2742079 () Bool)

(assert (=> b!2315199 m!2742079))

(assert (=> b!2315199 m!2741889))

(declare-fun m!2742081 () Bool)

(assert (=> b!2315199 m!2742081))

(assert (=> b!2315199 m!2741889))

(assert (=> b!2315199 m!2742081))

(declare-fun m!2742083 () Bool)

(assert (=> b!2315199 m!2742083))

(declare-fun m!2742085 () Bool)

(assert (=> bm!137502 m!2742085))

(declare-fun m!2742087 () Bool)

(assert (=> b!2315194 m!2742087))

(declare-fun m!2742089 () Bool)

(assert (=> b!2315194 m!2742089))

(declare-fun m!2742091 () Bool)

(assert (=> b!2315194 m!2742091))

(assert (=> b!2315194 m!2742089))

(assert (=> b!2315194 m!2742091))

(declare-fun m!2742093 () Bool)

(assert (=> b!2315194 m!2742093))

(declare-fun m!2742095 () Bool)

(assert (=> b!2315191 m!2742095))

(declare-fun m!2742097 () Bool)

(assert (=> bm!137501 m!2742097))

(declare-fun m!2742099 () Bool)

(assert (=> bm!137498 m!2742099))

(assert (=> b!2315201 m!2742091))

(assert (=> b!2315201 m!2742089))

(assert (=> b!2315192 m!2742087))

(assert (=> b!2315192 m!2742089))

(assert (=> b!2315192 m!2742091))

(assert (=> b!2315192 m!2742089))

(assert (=> b!2315192 m!2742091))

(assert (=> b!2315192 m!2742093))

(declare-fun m!2742101 () Bool)

(assert (=> bm!137494 m!2742101))

(declare-fun m!2742103 () Bool)

(assert (=> bm!137491 m!2742103))

(declare-fun m!2742105 () Bool)

(assert (=> b!2315203 m!2742105))

(declare-fun m!2742107 () Bool)

(assert (=> d!684569 m!2742107))

(assert (=> d!684569 m!2741881))

(declare-fun m!2742109 () Bool)

(assert (=> bm!137500 m!2742109))

(assert (=> bm!137455 d!684569))

(declare-fun b!2315215 () Bool)

(declare-fun res!989240 () Bool)

(declare-fun e!1484326 () Bool)

(assert (=> b!2315215 (=> (not res!989240) (not e!1484326))))

(assert (=> b!2315215 (= res!989240 (<= (- (height!1303 (left!20931 lt!858320)) (height!1303 (right!21261 lt!858320))) 1))))

(declare-fun b!2315216 () Bool)

(assert (=> b!2315216 (= e!1484326 (not (isEmpty!15755 (right!21261 lt!858320))))))

(declare-fun b!2315217 () Bool)

(declare-fun e!1484325 () Bool)

(assert (=> b!2315217 (= e!1484325 e!1484326)))

(declare-fun res!989237 () Bool)

(assert (=> b!2315217 (=> (not res!989237) (not e!1484326))))

(assert (=> b!2315217 (= res!989237 (<= (- 1) (- (height!1303 (left!20931 lt!858320)) (height!1303 (right!21261 lt!858320)))))))

(declare-fun b!2315218 () Bool)

(declare-fun res!989236 () Bool)

(assert (=> b!2315218 (=> (not res!989236) (not e!1484326))))

(assert (=> b!2315218 (= res!989236 (isBalanced!2717 (right!21261 lt!858320)))))

(declare-fun b!2315219 () Bool)

(declare-fun res!989238 () Bool)

(assert (=> b!2315219 (=> (not res!989238) (not e!1484326))))

(assert (=> b!2315219 (= res!989238 (isBalanced!2717 (left!20931 lt!858320)))))

(declare-fun b!2315220 () Bool)

(declare-fun res!989241 () Bool)

(assert (=> b!2315220 (=> (not res!989241) (not e!1484326))))

(assert (=> b!2315220 (= res!989241 (not (isEmpty!15755 (left!20931 lt!858320))))))

(declare-fun d!684599 () Bool)

(declare-fun res!989239 () Bool)

(assert (=> d!684599 (=> res!989239 e!1484325)))

(assert (=> d!684599 (= res!989239 (not ((_ is Node!9023) lt!858320)))))

(assert (=> d!684599 (= (isBalanced!2717 lt!858320) e!1484325)))

(assert (= (and d!684599 (not res!989239)) b!2315217))

(assert (= (and b!2315217 res!989237) b!2315215))

(assert (= (and b!2315215 res!989240) b!2315219))

(assert (= (and b!2315219 res!989238) b!2315218))

(assert (= (and b!2315218 res!989236) b!2315220))

(assert (= (and b!2315220 res!989241) b!2315216))

(declare-fun m!2742111 () Bool)

(assert (=> b!2315220 m!2742111))

(declare-fun m!2742113 () Bool)

(assert (=> b!2315218 m!2742113))

(declare-fun m!2742115 () Bool)

(assert (=> b!2315219 m!2742115))

(declare-fun m!2742117 () Bool)

(assert (=> b!2315217 m!2742117))

(declare-fun m!2742119 () Bool)

(assert (=> b!2315217 m!2742119))

(assert (=> b!2315215 m!2742117))

(assert (=> b!2315215 m!2742119))

(declare-fun m!2742121 () Bool)

(assert (=> b!2315216 m!2742121))

(assert (=> d!684553 d!684599))

(declare-fun d!684601 () Bool)

(declare-fun lt!858351 () Int)

(assert (=> d!684601 (= lt!858351 (size!21833 (list!10929 arr!15)))))

(declare-fun choose!13535 (IArray!18051) Int)

(assert (=> d!684601 (= lt!858351 (choose!13535 arr!15))))

(assert (=> d!684601 (= (size!21831 arr!15) lt!858351)))

(declare-fun bs!458797 () Bool)

(assert (= bs!458797 d!684601))

(assert (=> bs!458797 m!2741859))

(assert (=> bs!458797 m!2741859))

(declare-fun m!2742123 () Bool)

(assert (=> bs!458797 m!2742123))

(declare-fun m!2742125 () Bool)

(assert (=> bs!458797 m!2742125))

(assert (=> d!684553 d!684601))

(declare-fun b!2315221 () Bool)

(declare-fun res!989246 () Bool)

(declare-fun e!1484328 () Bool)

(assert (=> b!2315221 (=> (not res!989246) (not e!1484328))))

(assert (=> b!2315221 (= res!989246 (<= (- (height!1303 (left!20931 Empty!9023)) (height!1303 (right!21261 Empty!9023))) 1))))

(declare-fun b!2315222 () Bool)

(assert (=> b!2315222 (= e!1484328 (not (isEmpty!15755 (right!21261 Empty!9023))))))

(declare-fun b!2315223 () Bool)

(declare-fun e!1484327 () Bool)

(assert (=> b!2315223 (= e!1484327 e!1484328)))

(declare-fun res!989243 () Bool)

(assert (=> b!2315223 (=> (not res!989243) (not e!1484328))))

(assert (=> b!2315223 (= res!989243 (<= (- 1) (- (height!1303 (left!20931 Empty!9023)) (height!1303 (right!21261 Empty!9023)))))))

(declare-fun b!2315224 () Bool)

(declare-fun res!989242 () Bool)

(assert (=> b!2315224 (=> (not res!989242) (not e!1484328))))

(assert (=> b!2315224 (= res!989242 (isBalanced!2717 (right!21261 Empty!9023)))))

(declare-fun b!2315225 () Bool)

(declare-fun res!989244 () Bool)

(assert (=> b!2315225 (=> (not res!989244) (not e!1484328))))

(assert (=> b!2315225 (= res!989244 (isBalanced!2717 (left!20931 Empty!9023)))))

(declare-fun b!2315226 () Bool)

(declare-fun res!989247 () Bool)

(assert (=> b!2315226 (=> (not res!989247) (not e!1484328))))

(assert (=> b!2315226 (= res!989247 (not (isEmpty!15755 (left!20931 Empty!9023))))))

(declare-fun d!684603 () Bool)

(declare-fun res!989245 () Bool)

(assert (=> d!684603 (=> res!989245 e!1484327)))

(assert (=> d!684603 (= res!989245 (not ((_ is Node!9023) Empty!9023)))))

(assert (=> d!684603 (= (isBalanced!2717 Empty!9023) e!1484327)))

(assert (= (and d!684603 (not res!989245)) b!2315223))

(assert (= (and b!2315223 res!989243) b!2315221))

(assert (= (and b!2315221 res!989246) b!2315225))

(assert (= (and b!2315225 res!989244) b!2315224))

(assert (= (and b!2315224 res!989242) b!2315226))

(assert (= (and b!2315226 res!989247) b!2315222))

(declare-fun m!2742127 () Bool)

(assert (=> b!2315226 m!2742127))

(declare-fun m!2742129 () Bool)

(assert (=> b!2315224 m!2742129))

(declare-fun m!2742131 () Bool)

(assert (=> b!2315225 m!2742131))

(declare-fun m!2742133 () Bool)

(assert (=> b!2315223 m!2742133))

(declare-fun m!2742135 () Bool)

(assert (=> b!2315223 m!2742135))

(assert (=> b!2315221 m!2742133))

(assert (=> b!2315221 m!2742135))

(declare-fun m!2742137 () Bool)

(assert (=> b!2315222 m!2742137))

(assert (=> d!684553 d!684603))

(declare-fun d!684605 () Bool)

(declare-fun lt!858354 () Bool)

(declare-fun isEmpty!15758 (List!27716) Bool)

(assert (=> d!684605 (= lt!858354 (isEmpty!15758 (list!10931 (left!20931 lt!858251))))))

(declare-fun size!21836 (Conc!9023) Int)

(assert (=> d!684605 (= lt!858354 (= (size!21836 (left!20931 lt!858251)) 0))))

(assert (=> d!684605 (= (isEmpty!15755 (left!20931 lt!858251)) lt!858354)))

(declare-fun bs!458798 () Bool)

(assert (= bs!458798 d!684605))

(declare-fun m!2742139 () Bool)

(assert (=> bs!458798 m!2742139))

(assert (=> bs!458798 m!2742139))

(declare-fun m!2742141 () Bool)

(assert (=> bs!458798 m!2742141))

(declare-fun m!2742143 () Bool)

(assert (=> bs!458798 m!2742143))

(assert (=> b!2315085 d!684605))

(declare-fun b!2315235 () Bool)

(declare-fun e!1484333 () List!27716)

(assert (=> b!2315235 (= e!1484333 Nil!27618)))

(declare-fun b!2315238 () Bool)

(declare-fun e!1484334 () List!27716)

(assert (=> b!2315238 (= e!1484334 (++!6754 (list!10931 (left!20931 lt!858320)) (list!10931 (right!21261 lt!858320))))))

(declare-fun b!2315237 () Bool)

(assert (=> b!2315237 (= e!1484334 (list!10929 (xs!11965 lt!858320)))))

(declare-fun b!2315236 () Bool)

(assert (=> b!2315236 (= e!1484333 e!1484334)))

(declare-fun c!366971 () Bool)

(assert (=> b!2315236 (= c!366971 ((_ is Leaf!13244) lt!858320))))

(declare-fun d!684607 () Bool)

(declare-fun c!366970 () Bool)

(assert (=> d!684607 (= c!366970 ((_ is Empty!9023) lt!858320))))

(assert (=> d!684607 (= (list!10931 lt!858320) e!1484333)))

(assert (= (and d!684607 c!366970) b!2315235))

(assert (= (and d!684607 (not c!366970)) b!2315236))

(assert (= (and b!2315236 c!366971) b!2315237))

(assert (= (and b!2315236 (not c!366971)) b!2315238))

(declare-fun m!2742145 () Bool)

(assert (=> b!2315238 m!2742145))

(declare-fun m!2742147 () Bool)

(assert (=> b!2315238 m!2742147))

(assert (=> b!2315238 m!2742145))

(assert (=> b!2315238 m!2742147))

(declare-fun m!2742149 () Bool)

(assert (=> b!2315238 m!2742149))

(declare-fun m!2742151 () Bool)

(assert (=> b!2315237 m!2742151))

(assert (=> b!2315046 d!684607))

(declare-fun b!2315247 () Bool)

(declare-fun e!1484339 () List!27716)

(assert (=> b!2315247 (= e!1484339 (list!10929 arr!15))))

(declare-fun b!2315249 () Bool)

(declare-fun res!989253 () Bool)

(declare-fun e!1484340 () Bool)

(assert (=> b!2315249 (=> (not res!989253) (not e!1484340))))

(declare-fun lt!858357 () List!27716)

(assert (=> b!2315249 (= res!989253 (= (size!21833 lt!858357) (+ (size!21833 (list!10931 Empty!9023)) (size!21833 (list!10929 arr!15)))))))

(declare-fun b!2315250 () Bool)

(assert (=> b!2315250 (= e!1484340 (or (not (= (list!10929 arr!15) Nil!27618)) (= lt!858357 (list!10931 Empty!9023))))))

(declare-fun b!2315248 () Bool)

(assert (=> b!2315248 (= e!1484339 (Cons!27618 (h!33019 (list!10931 Empty!9023)) (++!6754 (t!207318 (list!10931 Empty!9023)) (list!10929 arr!15))))))

(declare-fun d!684609 () Bool)

(assert (=> d!684609 e!1484340))

(declare-fun res!989252 () Bool)

(assert (=> d!684609 (=> (not res!989252) (not e!1484340))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3725 (List!27716) (InoxSet T!43558))

(assert (=> d!684609 (= res!989252 (= (content!3725 lt!858357) ((_ map or) (content!3725 (list!10931 Empty!9023)) (content!3725 (list!10929 arr!15)))))))

(assert (=> d!684609 (= lt!858357 e!1484339)))

(declare-fun c!366974 () Bool)

(assert (=> d!684609 (= c!366974 ((_ is Nil!27618) (list!10931 Empty!9023)))))

(assert (=> d!684609 (= (++!6754 (list!10931 Empty!9023) (list!10929 arr!15)) lt!858357)))

(assert (= (and d!684609 c!366974) b!2315247))

(assert (= (and d!684609 (not c!366974)) b!2315248))

(assert (= (and d!684609 res!989252) b!2315249))

(assert (= (and b!2315249 res!989253) b!2315250))

(declare-fun m!2742153 () Bool)

(assert (=> b!2315249 m!2742153))

(assert (=> b!2315249 m!2741889))

(declare-fun m!2742155 () Bool)

(assert (=> b!2315249 m!2742155))

(assert (=> b!2315249 m!2741859))

(assert (=> b!2315249 m!2742123))

(assert (=> b!2315248 m!2741859))

(declare-fun m!2742157 () Bool)

(assert (=> b!2315248 m!2742157))

(declare-fun m!2742159 () Bool)

(assert (=> d!684609 m!2742159))

(assert (=> d!684609 m!2741889))

(declare-fun m!2742161 () Bool)

(assert (=> d!684609 m!2742161))

(assert (=> d!684609 m!2741859))

(declare-fun m!2742163 () Bool)

(assert (=> d!684609 m!2742163))

(assert (=> b!2315046 d!684609))

(declare-fun b!2315255 () Bool)

(declare-fun e!1484343 () List!27716)

(assert (=> b!2315255 (= e!1484343 Nil!27618)))

(declare-fun b!2315258 () Bool)

(declare-fun e!1484344 () List!27716)

(assert (=> b!2315258 (= e!1484344 (++!6754 (list!10931 (left!20931 Empty!9023)) (list!10931 (right!21261 Empty!9023))))))

(declare-fun b!2315257 () Bool)

(assert (=> b!2315257 (= e!1484344 (list!10929 (xs!11965 Empty!9023)))))

(declare-fun b!2315256 () Bool)

(assert (=> b!2315256 (= e!1484343 e!1484344)))

(declare-fun c!366976 () Bool)

(assert (=> b!2315256 (= c!366976 ((_ is Leaf!13244) Empty!9023))))

(declare-fun d!684611 () Bool)

(declare-fun c!366975 () Bool)

(assert (=> d!684611 (= c!366975 ((_ is Empty!9023) Empty!9023))))

(assert (=> d!684611 (= (list!10931 Empty!9023) e!1484343)))

(assert (= (and d!684611 c!366975) b!2315255))

(assert (= (and d!684611 (not c!366975)) b!2315256))

(assert (= (and b!2315256 c!366976) b!2315257))

(assert (= (and b!2315256 (not c!366976)) b!2315258))

(declare-fun m!2742165 () Bool)

(assert (=> b!2315258 m!2742165))

(declare-fun m!2742167 () Bool)

(assert (=> b!2315258 m!2742167))

(assert (=> b!2315258 m!2742165))

(assert (=> b!2315258 m!2742167))

(declare-fun m!2742169 () Bool)

(assert (=> b!2315258 m!2742169))

(declare-fun m!2742171 () Bool)

(assert (=> b!2315257 m!2742171))

(assert (=> b!2315046 d!684611))

(assert (=> b!2315046 d!684549))

(declare-fun d!684613 () Bool)

(declare-fun lt!858366 () Int)

(assert (=> d!684613 (>= lt!858366 0)))

(declare-fun e!1484360 () Int)

(assert (=> d!684613 (= lt!858366 e!1484360)))

(declare-fun c!366992 () Bool)

(assert (=> d!684613 (= c!366992 ((_ is Nil!27618) (innerList!9083 arr!15)))))

(assert (=> d!684613 (= (size!21833 (innerList!9083 arr!15)) lt!858366)))

(declare-fun b!2315289 () Bool)

(assert (=> b!2315289 (= e!1484360 0)))

(declare-fun b!2315290 () Bool)

(assert (=> b!2315290 (= e!1484360 (+ 1 (size!21833 (t!207318 (innerList!9083 arr!15)))))))

(assert (= (and d!684613 c!366992) b!2315289))

(assert (= (and d!684613 (not c!366992)) b!2315290))

(declare-fun m!2742173 () Bool)

(assert (=> b!2315290 m!2742173))

(assert (=> d!684559 d!684613))

(assert (=> bm!137454 d!684601))

(declare-fun b!2315295 () Bool)

(declare-fun res!989260 () Bool)

(declare-fun e!1484365 () Bool)

(assert (=> b!2315295 (=> (not res!989260) (not e!1484365))))

(assert (=> b!2315295 (= res!989260 (<= (- (height!1303 (left!20931 (left!20931 lt!858251))) (height!1303 (right!21261 (left!20931 lt!858251)))) 1))))

(declare-fun b!2315296 () Bool)

(assert (=> b!2315296 (= e!1484365 (not (isEmpty!15755 (right!21261 (left!20931 lt!858251)))))))

(declare-fun b!2315297 () Bool)

(declare-fun e!1484364 () Bool)

(assert (=> b!2315297 (= e!1484364 e!1484365)))

(declare-fun res!989257 () Bool)

(assert (=> b!2315297 (=> (not res!989257) (not e!1484365))))

(assert (=> b!2315297 (= res!989257 (<= (- 1) (- (height!1303 (left!20931 (left!20931 lt!858251))) (height!1303 (right!21261 (left!20931 lt!858251))))))))

(declare-fun b!2315298 () Bool)

(declare-fun res!989256 () Bool)

(assert (=> b!2315298 (=> (not res!989256) (not e!1484365))))

(assert (=> b!2315298 (= res!989256 (isBalanced!2717 (right!21261 (left!20931 lt!858251))))))

(declare-fun b!2315299 () Bool)

(declare-fun res!989258 () Bool)

(assert (=> b!2315299 (=> (not res!989258) (not e!1484365))))

(assert (=> b!2315299 (= res!989258 (isBalanced!2717 (left!20931 (left!20931 lt!858251))))))

(declare-fun b!2315300 () Bool)

(declare-fun res!989261 () Bool)

(assert (=> b!2315300 (=> (not res!989261) (not e!1484365))))

(assert (=> b!2315300 (= res!989261 (not (isEmpty!15755 (left!20931 (left!20931 lt!858251)))))))

(declare-fun d!684615 () Bool)

(declare-fun res!989259 () Bool)

(assert (=> d!684615 (=> res!989259 e!1484364)))

(assert (=> d!684615 (= res!989259 (not ((_ is Node!9023) (left!20931 lt!858251))))))

(assert (=> d!684615 (= (isBalanced!2717 (left!20931 lt!858251)) e!1484364)))

(assert (= (and d!684615 (not res!989259)) b!2315297))

(assert (= (and b!2315297 res!989257) b!2315295))

(assert (= (and b!2315295 res!989260) b!2315299))

(assert (= (and b!2315299 res!989258) b!2315298))

(assert (= (and b!2315298 res!989256) b!2315300))

(assert (= (and b!2315300 res!989261) b!2315296))

(declare-fun m!2742175 () Bool)

(assert (=> b!2315300 m!2742175))

(declare-fun m!2742177 () Bool)

(assert (=> b!2315298 m!2742177))

(declare-fun m!2742179 () Bool)

(assert (=> b!2315299 m!2742179))

(declare-fun m!2742181 () Bool)

(assert (=> b!2315297 m!2742181))

(declare-fun m!2742183 () Bool)

(assert (=> b!2315297 m!2742183))

(assert (=> b!2315295 m!2742181))

(assert (=> b!2315295 m!2742183))

(declare-fun m!2742185 () Bool)

(assert (=> b!2315296 m!2742185))

(assert (=> b!2315084 d!684615))

(declare-fun d!684617 () Bool)

(assert (=> d!684617 (= (++!6754 (++!6754 lt!858321 lt!858316) lt!858322) (++!6754 lt!858321 (++!6754 lt!858316 lt!858322)))))

(declare-fun lt!858371 () Unit!40468)

(declare-fun choose!13537 (List!27716 List!27716 List!27716) Unit!40468)

(assert (=> d!684617 (= lt!858371 (choose!13537 lt!858321 lt!858316 lt!858322))))

(assert (=> d!684617 (= (lemmaConcatAssociativity!1432 lt!858321 lt!858316 lt!858322) lt!858371)))

(declare-fun bs!458799 () Bool)

(assert (= bs!458799 d!684617))

(assert (=> bs!458799 m!2741927))

(declare-fun m!2742187 () Bool)

(assert (=> bs!458799 m!2742187))

(assert (=> bs!458799 m!2741939))

(assert (=> bs!458799 m!2741927))

(assert (=> bs!458799 m!2741929))

(assert (=> bs!458799 m!2741939))

(assert (=> bs!458799 m!2741943))

(assert (=> b!2315045 d!684617))

(declare-fun d!684619 () Bool)

(declare-fun take!474 (List!27716 Int) List!27716)

(declare-fun drop!1497 (List!27716 Int) List!27716)

(assert (=> d!684619 (= (slice!638 lt!858315 lt!858317 (size!21833 lt!858315)) (take!474 (drop!1497 lt!858315 lt!858317) (- (size!21833 lt!858315) lt!858317)))))

(declare-fun bs!458800 () Bool)

(assert (= bs!458800 d!684619))

(declare-fun m!2742189 () Bool)

(assert (=> bs!458800 m!2742189))

(assert (=> bs!458800 m!2742189))

(declare-fun m!2742191 () Bool)

(assert (=> bs!458800 m!2742191))

(assert (=> b!2315045 d!684619))

(declare-fun d!684621 () Bool)

(assert (=> d!684621 (= (++!6754 (slice!638 lt!858315 0 lt!858317) (slice!638 lt!858315 lt!858317 (size!21833 lt!858315))) lt!858315)))

(declare-fun lt!858374 () Unit!40468)

(declare-fun choose!13538 (List!27716 Int) Unit!40468)

(assert (=> d!684621 (= lt!858374 (choose!13538 lt!858315 lt!858317))))

(assert (=> d!684621 (= (sliceSplit!3 lt!858315 lt!858317) lt!858374)))

(declare-fun bs!458801 () Bool)

(assert (= bs!458801 d!684621))

(assert (=> bs!458801 m!2741907))

(assert (=> bs!458801 m!2741947))

(assert (=> bs!458801 m!2741947))

(assert (=> bs!458801 m!2741911))

(declare-fun m!2742193 () Bool)

(assert (=> bs!458801 m!2742193))

(assert (=> bs!458801 m!2741907))

(assert (=> bs!458801 m!2741911))

(assert (=> bs!458801 m!2741915))

(assert (=> b!2315045 d!684621))

(declare-fun b!2315301 () Bool)

(declare-fun e!1484366 () List!27716)

(assert (=> b!2315301 (= e!1484366 lt!858322)))

(declare-fun b!2315303 () Bool)

(declare-fun res!989263 () Bool)

(declare-fun e!1484367 () Bool)

(assert (=> b!2315303 (=> (not res!989263) (not e!1484367))))

(declare-fun lt!858375 () List!27716)

(assert (=> b!2315303 (= res!989263 (= (size!21833 lt!858375) (+ (size!21833 lt!858316) (size!21833 lt!858322))))))

(declare-fun b!2315304 () Bool)

(assert (=> b!2315304 (= e!1484367 (or (not (= lt!858322 Nil!27618)) (= lt!858375 lt!858316)))))

(declare-fun b!2315302 () Bool)

(assert (=> b!2315302 (= e!1484366 (Cons!27618 (h!33019 lt!858316) (++!6754 (t!207318 lt!858316) lt!858322)))))

(declare-fun d!684623 () Bool)

(assert (=> d!684623 e!1484367))

(declare-fun res!989262 () Bool)

(assert (=> d!684623 (=> (not res!989262) (not e!1484367))))

(assert (=> d!684623 (= res!989262 (= (content!3725 lt!858375) ((_ map or) (content!3725 lt!858316) (content!3725 lt!858322))))))

(assert (=> d!684623 (= lt!858375 e!1484366)))

(declare-fun c!366996 () Bool)

(assert (=> d!684623 (= c!366996 ((_ is Nil!27618) lt!858316))))

(assert (=> d!684623 (= (++!6754 lt!858316 lt!858322) lt!858375)))

(assert (= (and d!684623 c!366996) b!2315301))

(assert (= (and d!684623 (not c!366996)) b!2315302))

(assert (= (and d!684623 res!989262) b!2315303))

(assert (= (and b!2315303 res!989263) b!2315304))

(declare-fun m!2742195 () Bool)

(assert (=> b!2315303 m!2742195))

(declare-fun m!2742197 () Bool)

(assert (=> b!2315303 m!2742197))

(declare-fun m!2742199 () Bool)

(assert (=> b!2315303 m!2742199))

(declare-fun m!2742201 () Bool)

(assert (=> b!2315302 m!2742201))

(declare-fun m!2742203 () Bool)

(assert (=> d!684623 m!2742203))

(declare-fun m!2742205 () Bool)

(assert (=> d!684623 m!2742205))

(declare-fun m!2742207 () Bool)

(assert (=> d!684623 m!2742207))

(assert (=> b!2315045 d!684623))

(declare-fun d!684625 () Bool)

(declare-fun lt!858376 () Int)

(assert (=> d!684625 (>= lt!858376 0)))

(declare-fun e!1484368 () Int)

(assert (=> d!684625 (= lt!858376 e!1484368)))

(declare-fun c!366997 () Bool)

(assert (=> d!684625 (= c!366997 ((_ is Nil!27618) lt!858315))))

(assert (=> d!684625 (= (size!21833 lt!858315) lt!858376)))

(declare-fun b!2315305 () Bool)

(assert (=> b!2315305 (= e!1484368 0)))

(declare-fun b!2315306 () Bool)

(assert (=> b!2315306 (= e!1484368 (+ 1 (size!21833 (t!207318 lt!858315))))))

(assert (= (and d!684625 c!366997) b!2315305))

(assert (= (and d!684625 (not c!366997)) b!2315306))

(declare-fun m!2742209 () Bool)

(assert (=> b!2315306 m!2742209))

(assert (=> b!2315045 d!684625))

(declare-fun bm!137536 () Bool)

(declare-fun call!137541 () Int)

(assert (=> bm!137536 (= call!137541 (size!21831 (slice!636 arr!15 512 call!137459)))))

(declare-fun call!137542 () Conc!9023)

(declare-fun b!2315307 () Bool)

(declare-fun e!1484369 () Conc!9023)

(assert (=> b!2315307 (= e!1484369 (fromArray!5 (slice!636 (slice!636 arr!15 512 call!137459) 512 call!137541) call!137542))))

(declare-fun lt!858377 () Conc!9023)

(assert (=> b!2315307 (= lt!858377 (Leaf!13244 (slice!636 (slice!636 arr!15 512 call!137459) 0 512) 512))))

(declare-fun lt!858383 () Conc!9023)

(assert (=> b!2315307 (= lt!858383 (fromArray!5 (slice!636 (slice!636 arr!15 512 call!137459) 512 call!137541) call!137542))))

(declare-fun lt!858386 () List!27716)

(assert (=> b!2315307 (= lt!858386 (list!10931 call!137460))))

(declare-fun lt!858381 () List!27716)

(assert (=> b!2315307 (= lt!858381 (list!10931 lt!858377))))

(declare-fun lt!858387 () List!27716)

(assert (=> b!2315307 (= lt!858387 (list!10929 (slice!636 (slice!636 arr!15 512 call!137459) 512 call!137541)))))

(declare-fun lt!858388 () Unit!40468)

(assert (=> b!2315307 (= lt!858388 (lemmaConcatAssociativity!1432 lt!858386 lt!858381 lt!858387))))

(assert (=> b!2315307 (= (++!6754 (++!6754 lt!858386 lt!858381) lt!858387) (++!6754 lt!858386 (++!6754 lt!858381 lt!858387)))))

(declare-fun lt!858379 () Unit!40468)

(assert (=> b!2315307 (= lt!858379 lt!858388)))

(declare-fun lt!858380 () List!27716)

(assert (=> b!2315307 (= lt!858380 (list!10929 (slice!636 arr!15 512 call!137459)))))

(declare-fun lt!858382 () Int)

(assert (=> b!2315307 (= lt!858382 512)))

(declare-fun lt!858378 () Unit!40468)

(assert (=> b!2315307 (= lt!858378 (sliceSplit!3 lt!858380 lt!858382))))

(assert (=> b!2315307 (= (++!6754 (slice!638 lt!858380 0 lt!858382) (slice!638 lt!858380 lt!858382 (size!21833 lt!858380))) lt!858380)))

(declare-fun lt!858384 () Unit!40468)

(assert (=> b!2315307 (= lt!858384 lt!858378)))

(declare-fun b!2315308 () Bool)

(declare-fun lt!858385 () Conc!9023)

(declare-fun e!1484370 () Bool)

(assert (=> b!2315308 (= e!1484370 (= (list!10931 lt!858385) (++!6754 (list!10931 call!137460) (list!10929 (slice!636 arr!15 512 call!137459)))))))

(declare-fun b!2315309 () Bool)

(declare-fun e!1484371 () Conc!9023)

(assert (=> b!2315309 (= e!1484371 call!137542)))

(declare-fun b!2315310 () Bool)

(assert (=> b!2315310 (= e!1484371 call!137460)))

(declare-fun d!684627 () Bool)

(assert (=> d!684627 e!1484370))

(declare-fun res!989264 () Bool)

(assert (=> d!684627 (=> (not res!989264) (not e!1484370))))

(assert (=> d!684627 (= res!989264 (isBalanced!2717 lt!858385))))

(assert (=> d!684627 (= lt!858385 e!1484369)))

(declare-fun c!366999 () Bool)

(assert (=> d!684627 (= c!366999 (<= (size!21831 (slice!636 arr!15 512 call!137459)) 512))))

(assert (=> d!684627 (isBalanced!2717 call!137460)))

(assert (=> d!684627 (= (fromArray!5 (slice!636 arr!15 512 call!137459) call!137460) lt!858385)))

(declare-fun b!2315311 () Bool)

(assert (=> b!2315311 (= e!1484369 e!1484371)))

(declare-fun c!366998 () Bool)

(assert (=> b!2315311 (= c!366998 (= call!137541 0))))

(declare-fun bm!137537 () Bool)

(assert (=> bm!137537 (= call!137542 (++!6755 call!137460 (ite c!366999 (Leaf!13244 (slice!636 arr!15 512 call!137459) call!137541) lt!858377)))))

(assert (= (and d!684627 c!366999) b!2315311))

(assert (= (and d!684627 (not c!366999)) b!2315307))

(assert (= (and b!2315311 c!366998) b!2315310))

(assert (= (and b!2315311 (not c!366998)) b!2315309))

(assert (= (or b!2315311 b!2315309 b!2315307) bm!137536))

(assert (= (or b!2315309 b!2315307) bm!137537))

(assert (= (and d!684627 res!989264) b!2315308))

(declare-fun m!2742211 () Bool)

(assert (=> d!684627 m!2742211))

(assert (=> d!684627 m!2741917))

(declare-fun m!2742213 () Bool)

(assert (=> d!684627 m!2742213))

(declare-fun m!2742215 () Bool)

(assert (=> d!684627 m!2742215))

(assert (=> bm!137536 m!2741917))

(assert (=> bm!137536 m!2742213))

(declare-fun m!2742217 () Bool)

(assert (=> b!2315308 m!2742217))

(declare-fun m!2742219 () Bool)

(assert (=> b!2315308 m!2742219))

(assert (=> b!2315308 m!2741917))

(assert (=> b!2315308 m!2741955))

(assert (=> b!2315308 m!2742219))

(assert (=> b!2315308 m!2741955))

(declare-fun m!2742221 () Bool)

(assert (=> b!2315308 m!2742221))

(declare-fun m!2742223 () Bool)

(assert (=> bm!137537 m!2742223))

(declare-fun m!2742225 () Bool)

(assert (=> b!2315307 m!2742225))

(assert (=> b!2315307 m!2742219))

(declare-fun m!2742227 () Bool)

(assert (=> b!2315307 m!2742227))

(declare-fun m!2742229 () Bool)

(assert (=> b!2315307 m!2742229))

(declare-fun m!2742231 () Bool)

(assert (=> b!2315307 m!2742231))

(assert (=> b!2315307 m!2741917))

(declare-fun m!2742233 () Bool)

(assert (=> b!2315307 m!2742233))

(assert (=> b!2315307 m!2742233))

(declare-fun m!2742235 () Bool)

(assert (=> b!2315307 m!2742235))

(declare-fun m!2742237 () Bool)

(assert (=> b!2315307 m!2742237))

(declare-fun m!2742239 () Bool)

(assert (=> b!2315307 m!2742239))

(assert (=> b!2315307 m!2741917))

(assert (=> b!2315307 m!2741955))

(declare-fun m!2742241 () Bool)

(assert (=> b!2315307 m!2742241))

(assert (=> b!2315307 m!2742227))

(declare-fun m!2742243 () Bool)

(assert (=> b!2315307 m!2742243))

(declare-fun m!2742245 () Bool)

(assert (=> b!2315307 m!2742245))

(declare-fun m!2742247 () Bool)

(assert (=> b!2315307 m!2742247))

(assert (=> b!2315307 m!2742243))

(assert (=> b!2315307 m!2742247))

(assert (=> b!2315307 m!2742229))

(assert (=> b!2315307 m!2741917))

(declare-fun m!2742249 () Bool)

(assert (=> b!2315307 m!2742249))

(assert (=> b!2315307 m!2742233))

(declare-fun m!2742251 () Bool)

(assert (=> b!2315307 m!2742251))

(assert (=> b!2315307 m!2742237))

(declare-fun m!2742253 () Bool)

(assert (=> b!2315307 m!2742253))

(assert (=> b!2315045 d!684627))

(declare-fun d!684629 () Bool)

(declare-fun lt!858391 () IArray!18051)

(assert (=> d!684629 (= lt!858391 (IArray!18052 (slice!638 (list!10929 arr!15) 0 512)))))

(declare-fun choose!13539 (IArray!18051 Int Int) IArray!18051)

(assert (=> d!684629 (= lt!858391 (choose!13539 arr!15 0 512))))

(declare-fun e!1484376 () Bool)

(assert (=> d!684629 e!1484376))

(declare-fun res!989275 () Bool)

(assert (=> d!684629 (=> (not res!989275) (not e!1484376))))

(assert (=> d!684629 (= res!989275 (and (<= 0 0) (<= 0 512)))))

(assert (=> d!684629 (= (slice!636 arr!15 0 512) lt!858391)))

(declare-fun b!2315322 () Bool)

(assert (=> b!2315322 (= e!1484376 (<= 512 (size!21831 arr!15)))))

(assert (= (and d!684629 res!989275) b!2315322))

(assert (=> d!684629 m!2741859))

(assert (=> d!684629 m!2741859))

(declare-fun m!2742255 () Bool)

(assert (=> d!684629 m!2742255))

(declare-fun m!2742257 () Bool)

(assert (=> d!684629 m!2742257))

(assert (=> b!2315322 m!2741877))

(assert (=> b!2315045 d!684629))

(declare-fun d!684631 () Bool)

(assert (=> d!684631 (= (list!10929 (slice!636 arr!15 512 call!137459)) (innerList!9083 (slice!636 arr!15 512 call!137459)))))

(assert (=> b!2315045 d!684631))

(declare-fun b!2315323 () Bool)

(declare-fun e!1484377 () List!27716)

(assert (=> b!2315323 (= e!1484377 (++!6754 lt!858316 lt!858322))))

(declare-fun b!2315325 () Bool)

(declare-fun res!989277 () Bool)

(declare-fun e!1484378 () Bool)

(assert (=> b!2315325 (=> (not res!989277) (not e!1484378))))

(declare-fun lt!858392 () List!27716)

(assert (=> b!2315325 (= res!989277 (= (size!21833 lt!858392) (+ (size!21833 lt!858321) (size!21833 (++!6754 lt!858316 lt!858322)))))))

(declare-fun b!2315326 () Bool)

(assert (=> b!2315326 (= e!1484378 (or (not (= (++!6754 lt!858316 lt!858322) Nil!27618)) (= lt!858392 lt!858321)))))

(declare-fun b!2315324 () Bool)

(assert (=> b!2315324 (= e!1484377 (Cons!27618 (h!33019 lt!858321) (++!6754 (t!207318 lt!858321) (++!6754 lt!858316 lt!858322))))))

(declare-fun d!684633 () Bool)

(assert (=> d!684633 e!1484378))

(declare-fun res!989276 () Bool)

(assert (=> d!684633 (=> (not res!989276) (not e!1484378))))

(assert (=> d!684633 (= res!989276 (= (content!3725 lt!858392) ((_ map or) (content!3725 lt!858321) (content!3725 (++!6754 lt!858316 lt!858322)))))))

(assert (=> d!684633 (= lt!858392 e!1484377)))

(declare-fun c!367000 () Bool)

(assert (=> d!684633 (= c!367000 ((_ is Nil!27618) lt!858321))))

(assert (=> d!684633 (= (++!6754 lt!858321 (++!6754 lt!858316 lt!858322)) lt!858392)))

(assert (= (and d!684633 c!367000) b!2315323))

(assert (= (and d!684633 (not c!367000)) b!2315324))

(assert (= (and d!684633 res!989276) b!2315325))

(assert (= (and b!2315325 res!989277) b!2315326))

(declare-fun m!2742259 () Bool)

(assert (=> b!2315325 m!2742259))

(declare-fun m!2742261 () Bool)

(assert (=> b!2315325 m!2742261))

(assert (=> b!2315325 m!2741927))

(declare-fun m!2742263 () Bool)

(assert (=> b!2315325 m!2742263))

(assert (=> b!2315324 m!2741927))

(declare-fun m!2742265 () Bool)

(assert (=> b!2315324 m!2742265))

(declare-fun m!2742267 () Bool)

(assert (=> d!684633 m!2742267))

(declare-fun m!2742269 () Bool)

(assert (=> d!684633 m!2742269))

(assert (=> d!684633 m!2741927))

(declare-fun m!2742271 () Bool)

(assert (=> d!684633 m!2742271))

(assert (=> b!2315045 d!684633))

(declare-fun d!684635 () Bool)

(declare-fun lt!858393 () IArray!18051)

(assert (=> d!684635 (= lt!858393 (IArray!18052 (slice!638 (list!10929 arr!15) 512 call!137459)))))

(assert (=> d!684635 (= lt!858393 (choose!13539 arr!15 512 call!137459))))

(declare-fun e!1484379 () Bool)

(assert (=> d!684635 e!1484379))

(declare-fun res!989278 () Bool)

(assert (=> d!684635 (=> (not res!989278) (not e!1484379))))

(assert (=> d!684635 (= res!989278 (and (<= 0 512) (<= 512 call!137459)))))

(assert (=> d!684635 (= (slice!636 arr!15 512 call!137459) lt!858393)))

(declare-fun b!2315327 () Bool)

(assert (=> b!2315327 (= e!1484379 (<= call!137459 (size!21831 arr!15)))))

(assert (= (and d!684635 res!989278) b!2315327))

(assert (=> d!684635 m!2741859))

(assert (=> d!684635 m!2741859))

(declare-fun m!2742273 () Bool)

(assert (=> d!684635 m!2742273))

(declare-fun m!2742275 () Bool)

(assert (=> d!684635 m!2742275))

(assert (=> b!2315327 m!2741877))

(assert (=> b!2315045 d!684635))

(declare-fun b!2315328 () Bool)

(declare-fun e!1484380 () List!27716)

(assert (=> b!2315328 (= e!1484380 Nil!27618)))

(declare-fun b!2315331 () Bool)

(declare-fun e!1484381 () List!27716)

(assert (=> b!2315331 (= e!1484381 (++!6754 (list!10931 (left!20931 lt!858312)) (list!10931 (right!21261 lt!858312))))))

(declare-fun b!2315330 () Bool)

(assert (=> b!2315330 (= e!1484381 (list!10929 (xs!11965 lt!858312)))))

(declare-fun b!2315329 () Bool)

(assert (=> b!2315329 (= e!1484380 e!1484381)))

(declare-fun c!367002 () Bool)

(assert (=> b!2315329 (= c!367002 ((_ is Leaf!13244) lt!858312))))

(declare-fun d!684637 () Bool)

(declare-fun c!367001 () Bool)

(assert (=> d!684637 (= c!367001 ((_ is Empty!9023) lt!858312))))

(assert (=> d!684637 (= (list!10931 lt!858312) e!1484380)))

(assert (= (and d!684637 c!367001) b!2315328))

(assert (= (and d!684637 (not c!367001)) b!2315329))

(assert (= (and b!2315329 c!367002) b!2315330))

(assert (= (and b!2315329 (not c!367002)) b!2315331))

(declare-fun m!2742277 () Bool)

(assert (=> b!2315331 m!2742277))

(declare-fun m!2742279 () Bool)

(assert (=> b!2315331 m!2742279))

(assert (=> b!2315331 m!2742277))

(assert (=> b!2315331 m!2742279))

(declare-fun m!2742281 () Bool)

(assert (=> b!2315331 m!2742281))

(declare-fun m!2742283 () Bool)

(assert (=> b!2315330 m!2742283))

(assert (=> b!2315045 d!684637))

(declare-fun d!684639 () Bool)

(assert (=> d!684639 (= (slice!638 lt!858315 0 lt!858317) (take!474 (drop!1497 lt!858315 0) (- lt!858317 0)))))

(declare-fun bs!458802 () Bool)

(assert (= bs!458802 d!684639))

(declare-fun m!2742285 () Bool)

(assert (=> bs!458802 m!2742285))

(assert (=> bs!458802 m!2742285))

(declare-fun m!2742287 () Bool)

(assert (=> bs!458802 m!2742287))

(assert (=> b!2315045 d!684639))

(declare-fun b!2315332 () Bool)

(declare-fun e!1484382 () List!27716)

(assert (=> b!2315332 (= e!1484382 lt!858322)))

(declare-fun b!2315334 () Bool)

(declare-fun res!989280 () Bool)

(declare-fun e!1484383 () Bool)

(assert (=> b!2315334 (=> (not res!989280) (not e!1484383))))

(declare-fun lt!858394 () List!27716)

(assert (=> b!2315334 (= res!989280 (= (size!21833 lt!858394) (+ (size!21833 (++!6754 lt!858321 lt!858316)) (size!21833 lt!858322))))))

(declare-fun b!2315335 () Bool)

(assert (=> b!2315335 (= e!1484383 (or (not (= lt!858322 Nil!27618)) (= lt!858394 (++!6754 lt!858321 lt!858316))))))

(declare-fun b!2315333 () Bool)

(assert (=> b!2315333 (= e!1484382 (Cons!27618 (h!33019 (++!6754 lt!858321 lt!858316)) (++!6754 (t!207318 (++!6754 lt!858321 lt!858316)) lt!858322)))))

(declare-fun d!684641 () Bool)

(assert (=> d!684641 e!1484383))

(declare-fun res!989279 () Bool)

(assert (=> d!684641 (=> (not res!989279) (not e!1484383))))

(assert (=> d!684641 (= res!989279 (= (content!3725 lt!858394) ((_ map or) (content!3725 (++!6754 lt!858321 lt!858316)) (content!3725 lt!858322))))))

(assert (=> d!684641 (= lt!858394 e!1484382)))

(declare-fun c!367003 () Bool)

(assert (=> d!684641 (= c!367003 ((_ is Nil!27618) (++!6754 lt!858321 lt!858316)))))

(assert (=> d!684641 (= (++!6754 (++!6754 lt!858321 lt!858316) lt!858322) lt!858394)))

(assert (= (and d!684641 c!367003) b!2315332))

(assert (= (and d!684641 (not c!367003)) b!2315333))

(assert (= (and d!684641 res!989279) b!2315334))

(assert (= (and b!2315334 res!989280) b!2315335))

(declare-fun m!2742289 () Bool)

(assert (=> b!2315334 m!2742289))

(assert (=> b!2315334 m!2741939))

(declare-fun m!2742291 () Bool)

(assert (=> b!2315334 m!2742291))

(assert (=> b!2315334 m!2742199))

(declare-fun m!2742293 () Bool)

(assert (=> b!2315333 m!2742293))

(declare-fun m!2742295 () Bool)

(assert (=> d!684641 m!2742295))

(assert (=> d!684641 m!2741939))

(declare-fun m!2742297 () Bool)

(assert (=> d!684641 m!2742297))

(assert (=> d!684641 m!2742207))

(assert (=> b!2315045 d!684641))

(assert (=> b!2315045 d!684611))

(declare-fun b!2315336 () Bool)

(declare-fun e!1484384 () List!27716)

(assert (=> b!2315336 (= e!1484384 (slice!638 lt!858315 lt!858317 (size!21833 lt!858315)))))

(declare-fun b!2315338 () Bool)

(declare-fun res!989282 () Bool)

(declare-fun e!1484385 () Bool)

(assert (=> b!2315338 (=> (not res!989282) (not e!1484385))))

(declare-fun lt!858395 () List!27716)

(assert (=> b!2315338 (= res!989282 (= (size!21833 lt!858395) (+ (size!21833 (slice!638 lt!858315 0 lt!858317)) (size!21833 (slice!638 lt!858315 lt!858317 (size!21833 lt!858315))))))))

(declare-fun b!2315339 () Bool)

(assert (=> b!2315339 (= e!1484385 (or (not (= (slice!638 lt!858315 lt!858317 (size!21833 lt!858315)) Nil!27618)) (= lt!858395 (slice!638 lt!858315 0 lt!858317))))))

(declare-fun b!2315337 () Bool)

(assert (=> b!2315337 (= e!1484384 (Cons!27618 (h!33019 (slice!638 lt!858315 0 lt!858317)) (++!6754 (t!207318 (slice!638 lt!858315 0 lt!858317)) (slice!638 lt!858315 lt!858317 (size!21833 lt!858315)))))))

(declare-fun d!684643 () Bool)

(assert (=> d!684643 e!1484385))

(declare-fun res!989281 () Bool)

(assert (=> d!684643 (=> (not res!989281) (not e!1484385))))

(assert (=> d!684643 (= res!989281 (= (content!3725 lt!858395) ((_ map or) (content!3725 (slice!638 lt!858315 0 lt!858317)) (content!3725 (slice!638 lt!858315 lt!858317 (size!21833 lt!858315))))))))

(assert (=> d!684643 (= lt!858395 e!1484384)))

(declare-fun c!367004 () Bool)

(assert (=> d!684643 (= c!367004 ((_ is Nil!27618) (slice!638 lt!858315 0 lt!858317)))))

(assert (=> d!684643 (= (++!6754 (slice!638 lt!858315 0 lt!858317) (slice!638 lt!858315 lt!858317 (size!21833 lt!858315))) lt!858395)))

(assert (= (and d!684643 c!367004) b!2315336))

(assert (= (and d!684643 (not c!367004)) b!2315337))

(assert (= (and d!684643 res!989281) b!2315338))

(assert (= (and b!2315338 res!989282) b!2315339))

(declare-fun m!2742299 () Bool)

(assert (=> b!2315338 m!2742299))

(assert (=> b!2315338 m!2741907))

(declare-fun m!2742301 () Bool)

(assert (=> b!2315338 m!2742301))

(assert (=> b!2315338 m!2741911))

(declare-fun m!2742303 () Bool)

(assert (=> b!2315338 m!2742303))

(assert (=> b!2315337 m!2741911))

(declare-fun m!2742305 () Bool)

(assert (=> b!2315337 m!2742305))

(declare-fun m!2742307 () Bool)

(assert (=> d!684643 m!2742307))

(assert (=> d!684643 m!2741907))

(declare-fun m!2742309 () Bool)

(assert (=> d!684643 m!2742309))

(assert (=> d!684643 m!2741911))

(declare-fun m!2742311 () Bool)

(assert (=> d!684643 m!2742311))

(assert (=> b!2315045 d!684643))

(declare-fun b!2315340 () Bool)

(declare-fun e!1484386 () List!27716)

(assert (=> b!2315340 (= e!1484386 lt!858316)))

(declare-fun b!2315342 () Bool)

(declare-fun res!989284 () Bool)

(declare-fun e!1484387 () Bool)

(assert (=> b!2315342 (=> (not res!989284) (not e!1484387))))

(declare-fun lt!858396 () List!27716)

(assert (=> b!2315342 (= res!989284 (= (size!21833 lt!858396) (+ (size!21833 lt!858321) (size!21833 lt!858316))))))

(declare-fun b!2315343 () Bool)

(assert (=> b!2315343 (= e!1484387 (or (not (= lt!858316 Nil!27618)) (= lt!858396 lt!858321)))))

(declare-fun b!2315341 () Bool)

(assert (=> b!2315341 (= e!1484386 (Cons!27618 (h!33019 lt!858321) (++!6754 (t!207318 lt!858321) lt!858316)))))

(declare-fun d!684645 () Bool)

(assert (=> d!684645 e!1484387))

(declare-fun res!989283 () Bool)

(assert (=> d!684645 (=> (not res!989283) (not e!1484387))))

(assert (=> d!684645 (= res!989283 (= (content!3725 lt!858396) ((_ map or) (content!3725 lt!858321) (content!3725 lt!858316))))))

(assert (=> d!684645 (= lt!858396 e!1484386)))

(declare-fun c!367005 () Bool)

(assert (=> d!684645 (= c!367005 ((_ is Nil!27618) lt!858321))))

(assert (=> d!684645 (= (++!6754 lt!858321 lt!858316) lt!858396)))

(assert (= (and d!684645 c!367005) b!2315340))

(assert (= (and d!684645 (not c!367005)) b!2315341))

(assert (= (and d!684645 res!989283) b!2315342))

(assert (= (and b!2315342 res!989284) b!2315343))

(declare-fun m!2742313 () Bool)

(assert (=> b!2315342 m!2742313))

(assert (=> b!2315342 m!2742261))

(assert (=> b!2315342 m!2742197))

(declare-fun m!2742315 () Bool)

(assert (=> b!2315341 m!2742315))

(declare-fun m!2742317 () Bool)

(assert (=> d!684645 m!2742317))

(assert (=> d!684645 m!2742269))

(assert (=> d!684645 m!2742205))

(assert (=> b!2315045 d!684645))

(assert (=> b!2315045 d!684549))

(declare-fun b!2315344 () Bool)

(declare-fun res!989289 () Bool)

(declare-fun e!1484389 () Bool)

(assert (=> b!2315344 (=> (not res!989289) (not e!1484389))))

(assert (=> b!2315344 (= res!989289 (<= (- (height!1303 (left!20931 (right!21261 lt!858251))) (height!1303 (right!21261 (right!21261 lt!858251)))) 1))))

(declare-fun b!2315345 () Bool)

(assert (=> b!2315345 (= e!1484389 (not (isEmpty!15755 (right!21261 (right!21261 lt!858251)))))))

(declare-fun b!2315346 () Bool)

(declare-fun e!1484388 () Bool)

(assert (=> b!2315346 (= e!1484388 e!1484389)))

(declare-fun res!989286 () Bool)

(assert (=> b!2315346 (=> (not res!989286) (not e!1484389))))

(assert (=> b!2315346 (= res!989286 (<= (- 1) (- (height!1303 (left!20931 (right!21261 lt!858251))) (height!1303 (right!21261 (right!21261 lt!858251))))))))

(declare-fun b!2315347 () Bool)

(declare-fun res!989285 () Bool)

(assert (=> b!2315347 (=> (not res!989285) (not e!1484389))))

(assert (=> b!2315347 (= res!989285 (isBalanced!2717 (right!21261 (right!21261 lt!858251))))))

(declare-fun b!2315348 () Bool)

(declare-fun res!989287 () Bool)

(assert (=> b!2315348 (=> (not res!989287) (not e!1484389))))

(assert (=> b!2315348 (= res!989287 (isBalanced!2717 (left!20931 (right!21261 lt!858251))))))

(declare-fun b!2315349 () Bool)

(declare-fun res!989290 () Bool)

(assert (=> b!2315349 (=> (not res!989290) (not e!1484389))))

(assert (=> b!2315349 (= res!989290 (not (isEmpty!15755 (left!20931 (right!21261 lt!858251)))))))

(declare-fun d!684647 () Bool)

(declare-fun res!989288 () Bool)

(assert (=> d!684647 (=> res!989288 e!1484388)))

(assert (=> d!684647 (= res!989288 (not ((_ is Node!9023) (right!21261 lt!858251))))))

(assert (=> d!684647 (= (isBalanced!2717 (right!21261 lt!858251)) e!1484388)))

(assert (= (and d!684647 (not res!989288)) b!2315346))

(assert (= (and b!2315346 res!989286) b!2315344))

(assert (= (and b!2315344 res!989289) b!2315348))

(assert (= (and b!2315348 res!989287) b!2315347))

(assert (= (and b!2315347 res!989285) b!2315349))

(assert (= (and b!2315349 res!989290) b!2315345))

(declare-fun m!2742319 () Bool)

(assert (=> b!2315349 m!2742319))

(declare-fun m!2742321 () Bool)

(assert (=> b!2315347 m!2742321))

(declare-fun m!2742323 () Bool)

(assert (=> b!2315348 m!2742323))

(declare-fun m!2742325 () Bool)

(assert (=> b!2315346 m!2742325))

(declare-fun m!2742327 () Bool)

(assert (=> b!2315346 m!2742327))

(assert (=> b!2315344 m!2742325))

(assert (=> b!2315344 m!2742327))

(declare-fun m!2742329 () Bool)

(assert (=> b!2315345 m!2742329))

(assert (=> b!2315083 d!684647))

(declare-fun d!684649 () Bool)

(declare-fun lt!858397 () Bool)

(assert (=> d!684649 (= lt!858397 (isEmpty!15758 (list!10931 (right!21261 lt!858251))))))

(assert (=> d!684649 (= lt!858397 (= (size!21836 (right!21261 lt!858251)) 0))))

(assert (=> d!684649 (= (isEmpty!15755 (right!21261 lt!858251)) lt!858397)))

(declare-fun bs!458803 () Bool)

(assert (= bs!458803 d!684649))

(declare-fun m!2742331 () Bool)

(assert (=> bs!458803 m!2742331))

(assert (=> bs!458803 m!2742331))

(declare-fun m!2742333 () Bool)

(assert (=> bs!458803 m!2742333))

(declare-fun m!2742335 () Bool)

(assert (=> bs!458803 m!2742335))

(assert (=> b!2315081 d!684649))

(declare-fun b!2315350 () Bool)

(declare-fun e!1484390 () List!27716)

(assert (=> b!2315350 (= e!1484390 Nil!27618)))

(declare-fun b!2315353 () Bool)

(declare-fun e!1484391 () List!27716)

(assert (=> b!2315353 (= e!1484391 (++!6754 (list!10931 (left!20931 (c!366913 (BalanceConc!17771 lt!858251)))) (list!10931 (right!21261 (c!366913 (BalanceConc!17771 lt!858251))))))))

(declare-fun b!2315352 () Bool)

(assert (=> b!2315352 (= e!1484391 (list!10929 (xs!11965 (c!366913 (BalanceConc!17771 lt!858251)))))))

(declare-fun b!2315351 () Bool)

(assert (=> b!2315351 (= e!1484390 e!1484391)))

(declare-fun c!367007 () Bool)

(assert (=> b!2315351 (= c!367007 ((_ is Leaf!13244) (c!366913 (BalanceConc!17771 lt!858251))))))

(declare-fun d!684651 () Bool)

(declare-fun c!367006 () Bool)

(assert (=> d!684651 (= c!367006 ((_ is Empty!9023) (c!366913 (BalanceConc!17771 lt!858251))))))

(assert (=> d!684651 (= (list!10931 (c!366913 (BalanceConc!17771 lt!858251))) e!1484390)))

(assert (= (and d!684651 c!367006) b!2315350))

(assert (= (and d!684651 (not c!367006)) b!2315351))

(assert (= (and b!2315351 c!367007) b!2315352))

(assert (= (and b!2315351 (not c!367007)) b!2315353))

(declare-fun m!2742337 () Bool)

(assert (=> b!2315353 m!2742337))

(declare-fun m!2742339 () Bool)

(assert (=> b!2315353 m!2742339))

(assert (=> b!2315353 m!2742337))

(assert (=> b!2315353 m!2742339))

(declare-fun m!2742341 () Bool)

(assert (=> b!2315353 m!2742341))

(declare-fun m!2742343 () Bool)

(assert (=> b!2315352 m!2742343))

(assert (=> d!684545 d!684651))

(assert (=> b!2315082 d!684565))

(assert (=> b!2315082 d!684567))

(declare-fun b!2315354 () Bool)

(declare-fun e!1484392 () Bool)

(declare-fun tp!735418 () Bool)

(assert (=> b!2315354 (= e!1484392 (and tp_is_empty!10773 tp!735418))))

(assert (=> b!2315095 (= tp!735417 e!1484392)))

(assert (= (and b!2315095 ((_ is Cons!27618) (t!207318 (innerList!9083 arr!15)))) b!2315354))

(check-sat (not b!2315248) (not bm!137536) (not b!2315307) (not d!684649) (not b!2315194) (not b!2315299) (not bm!137491) (not b!2315337) (not d!684627) (not b!2315302) (not b!2315249) (not d!684641) (not b!2315219) (not d!684645) (not b!2315327) (not b!2315344) (not b!2315203) (not b!2315308) (not b!2315296) (not d!684609) (not b!2315352) (not bm!137502) (not b!2315341) (not d!684617) (not b!2315192) (not d!684639) (not b!2315298) (not b!2315306) tp_is_empty!10773 (not b!2315300) (not b!2315199) (not b!2315216) (not b!2315290) (not b!2315215) (not b!2315224) (not b!2315297) (not b!2315237) (not b!2315217) (not d!684629) (not b!2315220) (not b!2315354) (not b!2315225) (not b!2315324) (not b!2315201) (not b!2315349) (not d!684569) (not b!2315191) (not d!684601) (not b!2315218) (not b!2315221) (not bm!137494) (not b!2315330) (not bm!137501) (not d!684633) (not b!2315322) (not b!2315342) (not b!2315325) (not b!2315347) (not bm!137490) (not b!2315331) (not b!2315345) (not d!684621) (not d!684623) (not d!684619) (not b!2315238) (not b!2315348) (not bm!137498) (not b!2315334) (not b!2315333) (not d!684643) (not b!2315338) (not bm!137537) (not b!2315257) (not b!2315226) (not b!2315258) (not bm!137500) (not b!2315303) (not b!2315223) (not d!684635) (not b!2315353) (not b!2315346) (not d!684605) (not b!2315295) (not b!2315222))
(check-sat)
