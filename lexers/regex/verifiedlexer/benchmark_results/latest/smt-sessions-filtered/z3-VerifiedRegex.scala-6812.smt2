; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!358488 () Bool)

(assert start!358488)

(declare-fun res!1550991 () Bool)

(declare-fun e!2365929 () Bool)

(assert (=> start!358488 (=> (not res!1550991) (not e!2365929))))

(declare-datatypes ((T!69778 0))(
  ( (T!69779 (val!13304 Int)) )
))
(declare-datatypes ((List!40557 0))(
  ( (Nil!40433) (Cons!40433 (h!45853 T!69778) (t!309132 List!40557)) )
))
(declare-datatypes ((IArray!24863 0))(
  ( (IArray!24864 (innerList!12489 List!40557)) )
))
(declare-datatypes ((Conc!12429 0))(
  ( (Node!12429 (left!31289 Conc!12429) (right!31619 Conc!12429) (csize!25088 Int) (cheight!12640 Int)) (Leaf!19242 (xs!15729 IArray!24863) (csize!25089 Int)) (Empty!12429) )
))
(declare-datatypes ((BalanceConc!24452 0))(
  ( (BalanceConc!24453 (c!668047 Conc!12429)) )
))
(declare-fun thiss!5815 () BalanceConc!24452)

(declare-fun isBalanced!3608 (Conc!12429) Bool)

(assert (=> start!358488 (= res!1550991 (isBalanced!3608 (c!668047 thiss!5815)))))

(assert (=> start!358488 e!2365929))

(declare-fun e!2365930 () Bool)

(declare-fun inv!54528 (BalanceConc!24452) Bool)

(assert (=> start!358488 (and (inv!54528 thiss!5815) e!2365930)))

(declare-fun ys!29 () BalanceConc!24452)

(declare-fun e!2365928 () Bool)

(assert (=> start!358488 (and (inv!54528 ys!29) e!2365928)))

(declare-fun b!3831188 () Bool)

(declare-fun tp!1159262 () Bool)

(declare-fun inv!54529 (Conc!12429) Bool)

(assert (=> b!3831188 (= e!2365928 (and (inv!54529 (c!668047 ys!29)) tp!1159262))))

(declare-fun b!3831185 () Bool)

(declare-fun res!1550992 () Bool)

(assert (=> b!3831185 (=> (not res!1550992) (not e!2365929))))

(assert (=> b!3831185 (= res!1550992 (isBalanced!3608 (c!668047 ys!29)))))

(declare-fun b!3831187 () Bool)

(declare-fun tp!1159261 () Bool)

(assert (=> b!3831187 (= e!2365930 (and (inv!54529 (c!668047 thiss!5815)) tp!1159261))))

(declare-fun b!3831186 () Bool)

(declare-fun ++!10194 (Conc!12429 Conc!12429) Conc!12429)

(assert (=> b!3831186 (= e!2365929 (not (inv!54528 (BalanceConc!24453 (++!10194 (c!668047 thiss!5815) (c!668047 ys!29))))))))

(assert (= (and start!358488 res!1550991) b!3831185))

(assert (= (and b!3831185 res!1550992) b!3831186))

(assert (= start!358488 b!3831187))

(assert (= start!358488 b!3831188))

(declare-fun m!4385909 () Bool)

(assert (=> b!3831187 m!4385909))

(declare-fun m!4385911 () Bool)

(assert (=> start!358488 m!4385911))

(declare-fun m!4385913 () Bool)

(assert (=> start!358488 m!4385913))

(declare-fun m!4385915 () Bool)

(assert (=> start!358488 m!4385915))

(declare-fun m!4385917 () Bool)

(assert (=> b!3831185 m!4385917))

(declare-fun m!4385919 () Bool)

(assert (=> b!3831186 m!4385919))

(declare-fun m!4385921 () Bool)

(assert (=> b!3831186 m!4385921))

(declare-fun m!4385923 () Bool)

(assert (=> b!3831188 m!4385923))

(check-sat (not b!3831185) (not b!3831187) (not b!3831188) (not start!358488) (not b!3831186))
(check-sat)
(get-model)

(declare-fun b!3831213 () Bool)

(declare-fun e!2365940 () Bool)

(declare-fun e!2365939 () Bool)

(assert (=> b!3831213 (= e!2365940 e!2365939)))

(declare-fun res!1551020 () Bool)

(assert (=> b!3831213 (=> (not res!1551020) (not e!2365939))))

(declare-fun height!1821 (Conc!12429) Int)

(assert (=> b!3831213 (= res!1551020 (<= (- 1) (- (height!1821 (left!31289 (c!668047 ys!29))) (height!1821 (right!31619 (c!668047 ys!29))))))))

(declare-fun b!3831214 () Bool)

(declare-fun isEmpty!23867 (Conc!12429) Bool)

(assert (=> b!3831214 (= e!2365939 (not (isEmpty!23867 (right!31619 (c!668047 ys!29)))))))

(declare-fun b!3831215 () Bool)

(declare-fun res!1551019 () Bool)

(assert (=> b!3831215 (=> (not res!1551019) (not e!2365939))))

(assert (=> b!3831215 (= res!1551019 (isBalanced!3608 (left!31289 (c!668047 ys!29))))))

(declare-fun b!3831216 () Bool)

(declare-fun res!1551022 () Bool)

(assert (=> b!3831216 (=> (not res!1551022) (not e!2365939))))

(assert (=> b!3831216 (= res!1551022 (not (isEmpty!23867 (left!31289 (c!668047 ys!29)))))))

(declare-fun d!1137427 () Bool)

(declare-fun res!1551021 () Bool)

(assert (=> d!1137427 (=> res!1551021 e!2365940)))

(get-info :version)

(assert (=> d!1137427 (= res!1551021 (not ((_ is Node!12429) (c!668047 ys!29))))))

(assert (=> d!1137427 (= (isBalanced!3608 (c!668047 ys!29)) e!2365940)))

(declare-fun b!3831217 () Bool)

(declare-fun res!1551018 () Bool)

(assert (=> b!3831217 (=> (not res!1551018) (not e!2365939))))

(assert (=> b!3831217 (= res!1551018 (isBalanced!3608 (right!31619 (c!668047 ys!29))))))

(declare-fun b!3831218 () Bool)

(declare-fun res!1551017 () Bool)

(assert (=> b!3831218 (=> (not res!1551017) (not e!2365939))))

(assert (=> b!3831218 (= res!1551017 (<= (- (height!1821 (left!31289 (c!668047 ys!29))) (height!1821 (right!31619 (c!668047 ys!29)))) 1))))

(assert (= (and d!1137427 (not res!1551021)) b!3831213))

(assert (= (and b!3831213 res!1551020) b!3831218))

(assert (= (and b!3831218 res!1551017) b!3831215))

(assert (= (and b!3831215 res!1551019) b!3831217))

(assert (= (and b!3831217 res!1551018) b!3831216))

(assert (= (and b!3831216 res!1551022) b!3831214))

(declare-fun m!4385925 () Bool)

(assert (=> b!3831216 m!4385925))

(declare-fun m!4385927 () Bool)

(assert (=> b!3831218 m!4385927))

(declare-fun m!4385929 () Bool)

(assert (=> b!3831218 m!4385929))

(declare-fun m!4385931 () Bool)

(assert (=> b!3831217 m!4385931))

(declare-fun m!4385933 () Bool)

(assert (=> b!3831214 m!4385933))

(declare-fun m!4385935 () Bool)

(assert (=> b!3831215 m!4385935))

(assert (=> b!3831213 m!4385927))

(assert (=> b!3831213 m!4385929))

(assert (=> b!3831185 d!1137427))

(declare-fun d!1137429 () Bool)

(assert (=> d!1137429 (= (inv!54528 (BalanceConc!24453 (++!10194 (c!668047 thiss!5815) (c!668047 ys!29)))) (isBalanced!3608 (c!668047 (BalanceConc!24453 (++!10194 (c!668047 thiss!5815) (c!668047 ys!29))))))))

(declare-fun bs!582275 () Bool)

(assert (= bs!582275 d!1137429))

(declare-fun m!4385961 () Bool)

(assert (=> bs!582275 m!4385961))

(assert (=> b!3831186 d!1137429))

(declare-fun bm!281542 () Bool)

(declare-fun call!281556 () Int)

(declare-fun lt!1330286 () Conc!12429)

(declare-fun c!668088 () Bool)

(declare-fun lt!1330285 () Conc!12429)

(assert (=> bm!281542 (= call!281556 (height!1821 (ite c!668088 lt!1330286 lt!1330285)))))

(declare-fun b!3831316 () Bool)

(declare-fun e!2365998 () Conc!12429)

(declare-fun e!2365996 () Conc!12429)

(assert (=> b!3831316 (= e!2365998 e!2365996)))

(declare-fun call!281560 () Conc!12429)

(assert (=> b!3831316 (= lt!1330285 call!281560)))

(declare-fun c!668090 () Bool)

(declare-fun call!281555 () Int)

(assert (=> b!3831316 (= c!668090 (= call!281556 (- call!281555 3)))))

(declare-fun b!3831317 () Bool)

(declare-fun call!281550 () Conc!12429)

(assert (=> b!3831317 (= e!2365996 call!281550)))

(declare-fun d!1137435 () Bool)

(declare-fun e!2365994 () Bool)

(assert (=> d!1137435 e!2365994))

(declare-fun res!1551053 () Bool)

(assert (=> d!1137435 (=> (not res!1551053) (not e!2365994))))

(declare-fun appendAssocInst!876 (Conc!12429 Conc!12429) Bool)

(assert (=> d!1137435 (= res!1551053 (appendAssocInst!876 (c!668047 thiss!5815) (c!668047 ys!29)))))

(declare-fun lt!1330284 () Conc!12429)

(declare-fun e!2365993 () Conc!12429)

(assert (=> d!1137435 (= lt!1330284 e!2365993)))

(declare-fun c!668083 () Bool)

(assert (=> d!1137435 (= c!668083 (= (c!668047 thiss!5815) Empty!12429))))

(declare-fun e!2365989 () Bool)

(assert (=> d!1137435 e!2365989))

(declare-fun res!1551052 () Bool)

(assert (=> d!1137435 (=> (not res!1551052) (not e!2365989))))

(assert (=> d!1137435 (= res!1551052 (isBalanced!3608 (c!668047 thiss!5815)))))

(assert (=> d!1137435 (= (++!10194 (c!668047 thiss!5815) (c!668047 ys!29)) lt!1330284)))

(declare-fun b!3831318 () Bool)

(assert (=> b!3831318 (= e!2365996 call!281550)))

(declare-fun b!3831319 () Bool)

(declare-fun call!281548 () Conc!12429)

(assert (=> b!3831319 (= e!2365998 call!281548)))

(declare-fun b!3831320 () Bool)

(declare-fun e!2365990 () Conc!12429)

(declare-fun call!281547 () Conc!12429)

(assert (=> b!3831320 (= e!2365990 call!281547)))

(declare-fun c!668087 () Bool)

(declare-fun c!668084 () Bool)

(declare-fun call!281558 () Conc!12429)

(declare-fun bm!281543 () Bool)

(assert (=> bm!281543 (= call!281558 (++!10194 (ite c!668088 (ite c!668084 (right!31619 (c!668047 thiss!5815)) (right!31619 (right!31619 (c!668047 thiss!5815)))) (c!668047 thiss!5815)) (ite c!668088 (c!668047 ys!29) (ite c!668087 (left!31289 (c!668047 ys!29)) (left!31289 (left!31289 (c!668047 ys!29)))))))))

(declare-fun bm!281544 () Bool)

(declare-fun call!281549 () Conc!12429)

(assert (=> bm!281544 (= call!281549 call!281548)))

(declare-fun b!3831321 () Bool)

(declare-fun res!1551050 () Bool)

(assert (=> b!3831321 (=> (not res!1551050) (not e!2365994))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3831321 (= res!1551050 (<= (height!1821 lt!1330284) (+ (max!0 (height!1821 (c!668047 thiss!5815)) (height!1821 (c!668047 ys!29))) 1)))))

(declare-fun bm!281545 () Bool)

(assert (=> bm!281545 (= call!281555 (height!1821 (ite c!668088 (right!31619 (c!668047 thiss!5815)) (c!668047 ys!29))))))

(declare-fun b!3831322 () Bool)

(declare-fun res!1551051 () Bool)

(assert (=> b!3831322 (=> (not res!1551051) (not e!2365994))))

(assert (=> b!3831322 (= res!1551051 (>= (height!1821 lt!1330284) (max!0 (height!1821 (c!668047 thiss!5815)) (height!1821 (c!668047 ys!29)))))))

(declare-fun bm!281546 () Bool)

(declare-fun call!281562 () Int)

(assert (=> bm!281546 (= call!281562 (height!1821 (ite c!668088 (c!668047 thiss!5815) (right!31619 (c!668047 ys!29)))))))

(declare-fun b!3831323 () Bool)

(declare-fun e!2365992 () Conc!12429)

(assert (=> b!3831323 (= e!2365992 (c!668047 thiss!5815))))

(declare-fun b!3831324 () Bool)

(declare-fun e!2365997 () Conc!12429)

(assert (=> b!3831324 (= e!2365997 e!2365990)))

(declare-fun call!281554 () Conc!12429)

(assert (=> b!3831324 (= lt!1330286 call!281554)))

(declare-fun c!668089 () Bool)

(assert (=> b!3831324 (= c!668089 (= call!281556 (- call!281562 3)))))

(declare-fun b!3831325 () Bool)

(declare-fun res!1551054 () Bool)

(assert (=> b!3831325 (=> (not res!1551054) (not e!2365994))))

(assert (=> b!3831325 (= res!1551054 (isBalanced!3608 lt!1330284))))

(declare-fun b!3831326 () Bool)

(assert (=> b!3831326 (= e!2365990 call!281547)))

(declare-fun bm!281547 () Bool)

(assert (=> bm!281547 (= call!281560 call!281558)))

(declare-fun b!3831327 () Bool)

(declare-fun e!2365995 () Conc!12429)

(declare-fun call!281552 () Conc!12429)

(assert (=> b!3831327 (= e!2365995 call!281552)))

(declare-fun bm!281548 () Bool)

(declare-fun call!281557 () Conc!12429)

(assert (=> bm!281548 (= call!281557 call!281552)))

(declare-fun bm!281549 () Bool)

(declare-fun call!281561 () Conc!12429)

(declare-fun call!281553 () Conc!12429)

(declare-fun <>!362 (Conc!12429 Conc!12429) Conc!12429)

(assert (=> bm!281549 (= call!281553 (<>!362 (ite c!668088 (ite (or c!668084 c!668089) (left!31289 (c!668047 thiss!5815)) call!281561) (ite c!668090 call!281549 lt!1330285)) (ite c!668088 (ite c!668084 call!281554 (ite c!668089 call!281561 lt!1330286)) (ite c!668090 (right!31619 (c!668047 ys!29)) call!281549))))))

(declare-fun b!3831328 () Bool)

(declare-fun e!2365991 () Conc!12429)

(assert (=> b!3831328 (= e!2365995 e!2365991)))

(declare-fun lt!1330287 () Int)

(assert (=> b!3831328 (= c!668088 (< lt!1330287 (- 1)))))

(declare-fun b!3831329 () Bool)

(declare-fun list!15065 (Conc!12429) List!40557)

(declare-fun ++!10195 (List!40557 List!40557) List!40557)

(assert (=> b!3831329 (= e!2365994 (= (list!15065 lt!1330284) (++!10195 (list!15065 (c!668047 thiss!5815)) (list!15065 (c!668047 ys!29)))))))

(declare-fun c!668086 () Bool)

(declare-fun bm!281550 () Bool)

(assert (=> bm!281550 (= call!281552 (<>!362 (ite c!668086 (c!668047 thiss!5815) (ite c!668088 (ite c!668089 (left!31289 (right!31619 (c!668047 thiss!5815))) (left!31289 (c!668047 thiss!5815))) (ite c!668087 call!281560 (ite c!668090 lt!1330285 (right!31619 (left!31289 (c!668047 ys!29))))))) (ite c!668086 (c!668047 ys!29) (ite c!668088 (ite c!668089 lt!1330286 (left!31289 (right!31619 (c!668047 thiss!5815)))) (ite c!668087 (right!31619 (c!668047 ys!29)) (ite c!668090 (right!31619 (left!31289 (c!668047 ys!29))) (right!31619 (c!668047 ys!29))))))))))

(declare-fun b!3831330 () Bool)

(assert (=> b!3831330 (= e!2365989 (isBalanced!3608 (c!668047 ys!29)))))

(declare-fun call!281559 () Int)

(declare-fun bm!281551 () Bool)

(assert (=> bm!281551 (= call!281559 (height!1821 (ite c!668088 (left!31289 (c!668047 thiss!5815)) (left!31289 (c!668047 ys!29)))))))

(declare-fun b!3831331 () Bool)

(assert (=> b!3831331 (= c!668087 (>= call!281562 call!281559))))

(assert (=> b!3831331 (= e!2365991 e!2365998)))

(declare-fun bm!281552 () Bool)

(assert (=> bm!281552 (= call!281550 call!281553)))

(declare-fun b!3831332 () Bool)

(assert (=> b!3831332 (= e!2365993 (c!668047 ys!29))))

(declare-fun bm!281553 () Bool)

(assert (=> bm!281553 (= call!281548 call!281557)))

(declare-fun bm!281554 () Bool)

(declare-fun call!281551 () Conc!12429)

(assert (=> bm!281554 (= call!281547 call!281551)))

(declare-fun bm!281555 () Bool)

(assert (=> bm!281555 (= call!281561 call!281557)))

(declare-fun b!3831333 () Bool)

(assert (=> b!3831333 (= c!668084 (>= call!281559 call!281555))))

(assert (=> b!3831333 (= e!2365991 e!2365997)))

(declare-fun bm!281556 () Bool)

(assert (=> bm!281556 (= call!281554 call!281558)))

(declare-fun b!3831334 () Bool)

(assert (=> b!3831334 (= c!668086 (and (<= (- 1) lt!1330287) (<= lt!1330287 1)))))

(assert (=> b!3831334 (= lt!1330287 (- (height!1821 (c!668047 ys!29)) (height!1821 (c!668047 thiss!5815))))))

(assert (=> b!3831334 (= e!2365992 e!2365995)))

(declare-fun b!3831335 () Bool)

(assert (=> b!3831335 (= e!2365993 e!2365992)))

(declare-fun c!668085 () Bool)

(assert (=> b!3831335 (= c!668085 (= (c!668047 ys!29) Empty!12429))))

(declare-fun b!3831336 () Bool)

(assert (=> b!3831336 (= e!2365997 call!281551)))

(declare-fun bm!281557 () Bool)

(assert (=> bm!281557 (= call!281551 call!281553)))

(assert (= (and d!1137435 res!1551052) b!3831330))

(assert (= (and d!1137435 c!668083) b!3831332))

(assert (= (and d!1137435 (not c!668083)) b!3831335))

(assert (= (and b!3831335 c!668085) b!3831323))

(assert (= (and b!3831335 (not c!668085)) b!3831334))

(assert (= (and b!3831334 c!668086) b!3831327))

(assert (= (and b!3831334 (not c!668086)) b!3831328))

(assert (= (and b!3831328 c!668088) b!3831333))

(assert (= (and b!3831328 (not c!668088)) b!3831331))

(assert (= (and b!3831333 c!668084) b!3831336))

(assert (= (and b!3831333 (not c!668084)) b!3831324))

(assert (= (and b!3831324 c!668089) b!3831326))

(assert (= (and b!3831324 (not c!668089)) b!3831320))

(assert (= (or b!3831326 b!3831320) bm!281555))

(assert (= (or b!3831326 b!3831320) bm!281554))

(assert (= (or b!3831336 b!3831324) bm!281556))

(assert (= (or b!3831336 bm!281554) bm!281557))

(assert (= (and b!3831331 c!668087) b!3831319))

(assert (= (and b!3831331 (not c!668087)) b!3831316))

(assert (= (and b!3831316 c!668090) b!3831317))

(assert (= (and b!3831316 (not c!668090)) b!3831318))

(assert (= (or b!3831317 b!3831318) bm!281544))

(assert (= (or b!3831317 b!3831318) bm!281552))

(assert (= (or b!3831319 b!3831316) bm!281547))

(assert (= (or b!3831319 bm!281544) bm!281553))

(assert (= (or bm!281557 bm!281552) bm!281549))

(assert (= (or b!3831333 b!3831316) bm!281545))

(assert (= (or bm!281555 bm!281553) bm!281548))

(assert (= (or b!3831324 b!3831316) bm!281542))

(assert (= (or b!3831324 b!3831331) bm!281546))

(assert (= (or b!3831333 b!3831331) bm!281551))

(assert (= (or bm!281556 bm!281547) bm!281543))

(assert (= (or b!3831327 bm!281548) bm!281550))

(assert (= (and d!1137435 res!1551053) b!3831325))

(assert (= (and b!3831325 res!1551054) b!3831321))

(assert (= (and b!3831321 res!1551050) b!3831322))

(assert (= (and b!3831322 res!1551051) b!3831329))

(declare-fun m!4385969 () Bool)

(assert (=> d!1137435 m!4385969))

(assert (=> d!1137435 m!4385911))

(assert (=> b!3831330 m!4385917))

(declare-fun m!4385971 () Bool)

(assert (=> b!3831334 m!4385971))

(declare-fun m!4385973 () Bool)

(assert (=> b!3831334 m!4385973))

(declare-fun m!4385975 () Bool)

(assert (=> bm!281546 m!4385975))

(declare-fun m!4385977 () Bool)

(assert (=> bm!281551 m!4385977))

(declare-fun m!4385979 () Bool)

(assert (=> bm!281545 m!4385979))

(declare-fun m!4385981 () Bool)

(assert (=> bm!281543 m!4385981))

(declare-fun m!4385983 () Bool)

(assert (=> bm!281549 m!4385983))

(declare-fun m!4385985 () Bool)

(assert (=> b!3831321 m!4385985))

(assert (=> b!3831321 m!4385973))

(assert (=> b!3831321 m!4385971))

(assert (=> b!3831321 m!4385973))

(assert (=> b!3831321 m!4385971))

(declare-fun m!4385987 () Bool)

(assert (=> b!3831321 m!4385987))

(declare-fun m!4385989 () Bool)

(assert (=> b!3831329 m!4385989))

(declare-fun m!4385991 () Bool)

(assert (=> b!3831329 m!4385991))

(declare-fun m!4385993 () Bool)

(assert (=> b!3831329 m!4385993))

(assert (=> b!3831329 m!4385991))

(assert (=> b!3831329 m!4385993))

(declare-fun m!4385995 () Bool)

(assert (=> b!3831329 m!4385995))

(declare-fun m!4385997 () Bool)

(assert (=> bm!281550 m!4385997))

(assert (=> b!3831322 m!4385985))

(assert (=> b!3831322 m!4385973))

(assert (=> b!3831322 m!4385971))

(assert (=> b!3831322 m!4385973))

(assert (=> b!3831322 m!4385971))

(assert (=> b!3831322 m!4385987))

(declare-fun m!4385999 () Bool)

(assert (=> bm!281542 m!4385999))

(declare-fun m!4386001 () Bool)

(assert (=> b!3831325 m!4386001))

(assert (=> b!3831186 d!1137435))

(declare-fun d!1137445 () Bool)

(declare-fun c!668093 () Bool)

(assert (=> d!1137445 (= c!668093 ((_ is Node!12429) (c!668047 ys!29)))))

(declare-fun e!2366005 () Bool)

(assert (=> d!1137445 (= (inv!54529 (c!668047 ys!29)) e!2366005)))

(declare-fun b!3831351 () Bool)

(declare-fun inv!54532 (Conc!12429) Bool)

(assert (=> b!3831351 (= e!2366005 (inv!54532 (c!668047 ys!29)))))

(declare-fun b!3831352 () Bool)

(declare-fun e!2366006 () Bool)

(assert (=> b!3831352 (= e!2366005 e!2366006)))

(declare-fun res!1551065 () Bool)

(assert (=> b!3831352 (= res!1551065 (not ((_ is Leaf!19242) (c!668047 ys!29))))))

(assert (=> b!3831352 (=> res!1551065 e!2366006)))

(declare-fun b!3831353 () Bool)

(declare-fun inv!54533 (Conc!12429) Bool)

(assert (=> b!3831353 (= e!2366006 (inv!54533 (c!668047 ys!29)))))

(assert (= (and d!1137445 c!668093) b!3831351))

(assert (= (and d!1137445 (not c!668093)) b!3831352))

(assert (= (and b!3831352 (not res!1551065)) b!3831353))

(declare-fun m!4386003 () Bool)

(assert (=> b!3831351 m!4386003))

(declare-fun m!4386005 () Bool)

(assert (=> b!3831353 m!4386005))

(assert (=> b!3831188 d!1137445))

(declare-fun d!1137447 () Bool)

(declare-fun c!668094 () Bool)

(assert (=> d!1137447 (= c!668094 ((_ is Node!12429) (c!668047 thiss!5815)))))

(declare-fun e!2366007 () Bool)

(assert (=> d!1137447 (= (inv!54529 (c!668047 thiss!5815)) e!2366007)))

(declare-fun b!3831354 () Bool)

(assert (=> b!3831354 (= e!2366007 (inv!54532 (c!668047 thiss!5815)))))

(declare-fun b!3831355 () Bool)

(declare-fun e!2366008 () Bool)

(assert (=> b!3831355 (= e!2366007 e!2366008)))

(declare-fun res!1551066 () Bool)

(assert (=> b!3831355 (= res!1551066 (not ((_ is Leaf!19242) (c!668047 thiss!5815))))))

(assert (=> b!3831355 (=> res!1551066 e!2366008)))

(declare-fun b!3831356 () Bool)

(assert (=> b!3831356 (= e!2366008 (inv!54533 (c!668047 thiss!5815)))))

(assert (= (and d!1137447 c!668094) b!3831354))

(assert (= (and d!1137447 (not c!668094)) b!3831355))

(assert (= (and b!3831355 (not res!1551066)) b!3831356))

(declare-fun m!4386007 () Bool)

(assert (=> b!3831354 m!4386007))

(declare-fun m!4386009 () Bool)

(assert (=> b!3831356 m!4386009))

(assert (=> b!3831187 d!1137447))

(declare-fun b!3831357 () Bool)

(declare-fun e!2366010 () Bool)

(declare-fun e!2366009 () Bool)

(assert (=> b!3831357 (= e!2366010 e!2366009)))

(declare-fun res!1551070 () Bool)

(assert (=> b!3831357 (=> (not res!1551070) (not e!2366009))))

(assert (=> b!3831357 (= res!1551070 (<= (- 1) (- (height!1821 (left!31289 (c!668047 thiss!5815))) (height!1821 (right!31619 (c!668047 thiss!5815))))))))

(declare-fun b!3831358 () Bool)

(assert (=> b!3831358 (= e!2366009 (not (isEmpty!23867 (right!31619 (c!668047 thiss!5815)))))))

(declare-fun b!3831359 () Bool)

(declare-fun res!1551069 () Bool)

(assert (=> b!3831359 (=> (not res!1551069) (not e!2366009))))

(assert (=> b!3831359 (= res!1551069 (isBalanced!3608 (left!31289 (c!668047 thiss!5815))))))

(declare-fun b!3831360 () Bool)

(declare-fun res!1551072 () Bool)

(assert (=> b!3831360 (=> (not res!1551072) (not e!2366009))))

(assert (=> b!3831360 (= res!1551072 (not (isEmpty!23867 (left!31289 (c!668047 thiss!5815)))))))

(declare-fun d!1137449 () Bool)

(declare-fun res!1551071 () Bool)

(assert (=> d!1137449 (=> res!1551071 e!2366010)))

(assert (=> d!1137449 (= res!1551071 (not ((_ is Node!12429) (c!668047 thiss!5815))))))

(assert (=> d!1137449 (= (isBalanced!3608 (c!668047 thiss!5815)) e!2366010)))

(declare-fun b!3831361 () Bool)

(declare-fun res!1551068 () Bool)

(assert (=> b!3831361 (=> (not res!1551068) (not e!2366009))))

(assert (=> b!3831361 (= res!1551068 (isBalanced!3608 (right!31619 (c!668047 thiss!5815))))))

(declare-fun b!3831362 () Bool)

(declare-fun res!1551067 () Bool)

(assert (=> b!3831362 (=> (not res!1551067) (not e!2366009))))

(assert (=> b!3831362 (= res!1551067 (<= (- (height!1821 (left!31289 (c!668047 thiss!5815))) (height!1821 (right!31619 (c!668047 thiss!5815)))) 1))))

(assert (= (and d!1137449 (not res!1551071)) b!3831357))

(assert (= (and b!3831357 res!1551070) b!3831362))

(assert (= (and b!3831362 res!1551067) b!3831359))

(assert (= (and b!3831359 res!1551069) b!3831361))

(assert (= (and b!3831361 res!1551068) b!3831360))

(assert (= (and b!3831360 res!1551072) b!3831358))

(declare-fun m!4386011 () Bool)

(assert (=> b!3831360 m!4386011))

(declare-fun m!4386013 () Bool)

(assert (=> b!3831362 m!4386013))

(declare-fun m!4386015 () Bool)

(assert (=> b!3831362 m!4386015))

(declare-fun m!4386017 () Bool)

(assert (=> b!3831361 m!4386017))

(declare-fun m!4386019 () Bool)

(assert (=> b!3831358 m!4386019))

(declare-fun m!4386021 () Bool)

(assert (=> b!3831359 m!4386021))

(assert (=> b!3831357 m!4386013))

(assert (=> b!3831357 m!4386015))

(assert (=> start!358488 d!1137449))

(declare-fun d!1137451 () Bool)

(assert (=> d!1137451 (= (inv!54528 thiss!5815) (isBalanced!3608 (c!668047 thiss!5815)))))

(declare-fun bs!582279 () Bool)

(assert (= bs!582279 d!1137451))

(assert (=> bs!582279 m!4385911))

(assert (=> start!358488 d!1137451))

(declare-fun d!1137453 () Bool)

(assert (=> d!1137453 (= (inv!54528 ys!29) (isBalanced!3608 (c!668047 ys!29)))))

(declare-fun bs!582280 () Bool)

(assert (= bs!582280 d!1137453))

(assert (=> bs!582280 m!4385917))

(assert (=> start!358488 d!1137453))

(declare-fun tp!1159270 () Bool)

(declare-fun b!3831371 () Bool)

(declare-fun e!2366015 () Bool)

(declare-fun tp!1159269 () Bool)

(assert (=> b!3831371 (= e!2366015 (and (inv!54529 (left!31289 (c!668047 ys!29))) tp!1159270 (inv!54529 (right!31619 (c!668047 ys!29))) tp!1159269))))

(declare-fun b!3831373 () Bool)

(declare-fun e!2366016 () Bool)

(declare-fun tp!1159271 () Bool)

(assert (=> b!3831373 (= e!2366016 tp!1159271)))

(declare-fun b!3831372 () Bool)

(declare-fun inv!54534 (IArray!24863) Bool)

(assert (=> b!3831372 (= e!2366015 (and (inv!54534 (xs!15729 (c!668047 ys!29))) e!2366016))))

(assert (=> b!3831188 (= tp!1159262 (and (inv!54529 (c!668047 ys!29)) e!2366015))))

(assert (= (and b!3831188 ((_ is Node!12429) (c!668047 ys!29))) b!3831371))

(assert (= b!3831372 b!3831373))

(assert (= (and b!3831188 ((_ is Leaf!19242) (c!668047 ys!29))) b!3831372))

(declare-fun m!4386023 () Bool)

(assert (=> b!3831371 m!4386023))

(declare-fun m!4386025 () Bool)

(assert (=> b!3831371 m!4386025))

(declare-fun m!4386027 () Bool)

(assert (=> b!3831372 m!4386027))

(assert (=> b!3831188 m!4385923))

(declare-fun b!3831374 () Bool)

(declare-fun tp!1159272 () Bool)

(declare-fun tp!1159273 () Bool)

(declare-fun e!2366017 () Bool)

(assert (=> b!3831374 (= e!2366017 (and (inv!54529 (left!31289 (c!668047 thiss!5815))) tp!1159273 (inv!54529 (right!31619 (c!668047 thiss!5815))) tp!1159272))))

(declare-fun b!3831376 () Bool)

(declare-fun e!2366018 () Bool)

(declare-fun tp!1159274 () Bool)

(assert (=> b!3831376 (= e!2366018 tp!1159274)))

(declare-fun b!3831375 () Bool)

(assert (=> b!3831375 (= e!2366017 (and (inv!54534 (xs!15729 (c!668047 thiss!5815))) e!2366018))))

(assert (=> b!3831187 (= tp!1159261 (and (inv!54529 (c!668047 thiss!5815)) e!2366017))))

(assert (= (and b!3831187 ((_ is Node!12429) (c!668047 thiss!5815))) b!3831374))

(assert (= b!3831375 b!3831376))

(assert (= (and b!3831187 ((_ is Leaf!19242) (c!668047 thiss!5815))) b!3831375))

(declare-fun m!4386029 () Bool)

(assert (=> b!3831374 m!4386029))

(declare-fun m!4386031 () Bool)

(assert (=> b!3831374 m!4386031))

(declare-fun m!4386033 () Bool)

(assert (=> b!3831375 m!4386033))

(assert (=> b!3831187 m!4385909))

(check-sat (not bm!281550) (not bm!281545) (not b!3831358) (not b!3831374) (not d!1137429) (not d!1137451) (not bm!281549) (not b!3831334) (not d!1137453) (not b!3831373) (not b!3831356) (not b!3831325) (not b!3831351) (not b!3831330) (not b!3831376) (not b!3831329) (not b!3831187) (not b!3831372) (not b!3831371) (not b!3831353) (not b!3831359) (not b!3831214) (not bm!281543) (not b!3831217) (not b!3831375) (not b!3831215) (not b!3831361) (not b!3831188) (not bm!281546) (not b!3831321) (not b!3831360) (not bm!281542) (not b!3831322) (not b!3831354) (not bm!281551) (not d!1137435) (not b!3831218) (not b!3831357) (not b!3831362) (not b!3831216) (not b!3831213))
(check-sat)
