; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104174 () Bool)

(assert start!104174)

(declare-fun b!1178167 () Bool)

(declare-fun e!756019 () Bool)

(declare-datatypes ((T!20970 0))(
  ( (T!20971 (val!3750 Int)) )
))
(declare-datatypes ((List!11697 0))(
  ( (Nil!11673) (Cons!11673 (h!17074 T!20970) (t!111193 List!11697)) )
))
(declare-datatypes ((IArray!7655 0))(
  ( (IArray!7656 (innerList!3885 List!11697)) )
))
(declare-datatypes ((Conc!3825 0))(
  ( (Node!3825 (left!10195 Conc!3825) (right!10525 Conc!3825) (csize!7880 Int) (cheight!4036 Int)) (Leaf!5868 (xs!6530 IArray!7655) (csize!7881 Int)) (Empty!3825) )
))
(declare-datatypes ((BalanceConc!7672 0))(
  ( (BalanceConc!7673 (c!196407 Conc!3825)) )
))
(declare-fun thiss!5831 () BalanceConc!7672)

(declare-fun tp!335272 () Bool)

(declare-fun inv!15459 (Conc!3825) Bool)

(assert (=> b!1178167 (= e!756019 (and (inv!15459 (c!196407 thiss!5831)) tp!335272))))

(declare-fun b!1178168 () Bool)

(declare-fun res!532712 () Bool)

(declare-fun e!756018 () Bool)

(assert (=> b!1178168 (=> (not res!532712) (not e!756018))))

(declare-fun isBalanced!1087 (Conc!3825) Bool)

(assert (=> b!1178168 (= res!532712 (isBalanced!1087 (c!196407 thiss!5831)))))

(declare-fun res!532713 () Bool)

(assert (=> start!104174 (=> (not res!532713) (not e!756018))))

(declare-fun from!529 () Int)

(declare-fun until!13 () Int)

(assert (=> start!104174 (= res!532713 (and (<= 0 from!529) (<= from!529 until!13)))))

(assert (=> start!104174 e!756018))

(assert (=> start!104174 true))

(declare-fun inv!15460 (BalanceConc!7672) Bool)

(assert (=> start!104174 (and (inv!15460 thiss!5831) e!756019)))

(declare-fun b!1178169 () Bool)

(declare-fun size!9242 (List!11697) Int)

(declare-fun list!4312 (BalanceConc!7672) List!11697)

(assert (=> b!1178169 (= e!756018 (> until!13 (size!9242 (list!4312 thiss!5831))))))

(declare-fun b!1178170 () Bool)

(declare-fun res!532715 () Bool)

(assert (=> b!1178170 (=> (not res!532715) (not e!756018))))

(declare-fun size!9243 (BalanceConc!7672) Int)

(assert (=> b!1178170 (= res!532715 (<= until!13 (size!9243 thiss!5831)))))

(declare-fun b!1178171 () Bool)

(declare-fun res!532714 () Bool)

(assert (=> b!1178171 (=> (not res!532714) (not e!756018))))

(declare-fun slice!391 (Conc!3825 Int Int) Conc!3825)

(assert (=> b!1178171 (= res!532714 (isBalanced!1087 (slice!391 (c!196407 thiss!5831) from!529 until!13)))))

(assert (= (and start!104174 res!532713) b!1178170))

(assert (= (and b!1178170 res!532715) b!1178168))

(assert (= (and b!1178168 res!532712) b!1178171))

(assert (= (and b!1178171 res!532714) b!1178169))

(assert (= start!104174 b!1178167))

(declare-fun m!1354961 () Bool)

(assert (=> b!1178168 m!1354961))

(declare-fun m!1354963 () Bool)

(assert (=> b!1178170 m!1354963))

(declare-fun m!1354965 () Bool)

(assert (=> start!104174 m!1354965))

(declare-fun m!1354967 () Bool)

(assert (=> b!1178167 m!1354967))

(declare-fun m!1354969 () Bool)

(assert (=> b!1178169 m!1354969))

(assert (=> b!1178169 m!1354969))

(declare-fun m!1354971 () Bool)

(assert (=> b!1178169 m!1354971))

(declare-fun m!1354973 () Bool)

(assert (=> b!1178171 m!1354973))

(assert (=> b!1178171 m!1354973))

(declare-fun m!1354975 () Bool)

(assert (=> b!1178171 m!1354975))

(check-sat (not b!1178170) (not start!104174) (not b!1178168) (not b!1178171) (not b!1178169) (not b!1178167))
(check-sat)
(get-model)

(declare-fun b!1178202 () Bool)

(declare-fun res!532747 () Bool)

(declare-fun e!756030 () Bool)

(assert (=> b!1178202 (=> (not res!532747) (not e!756030))))

(declare-fun isEmpty!7062 (Conc!3825) Bool)

(assert (=> b!1178202 (= res!532747 (not (isEmpty!7062 (left!10195 (slice!391 (c!196407 thiss!5831) from!529 until!13)))))))

(declare-fun b!1178203 () Bool)

(declare-fun e!756031 () Bool)

(assert (=> b!1178203 (= e!756031 e!756030)))

(declare-fun res!532749 () Bool)

(assert (=> b!1178203 (=> (not res!532749) (not e!756030))))

(declare-fun height!522 (Conc!3825) Int)

(assert (=> b!1178203 (= res!532749 (<= (- 1) (- (height!522 (left!10195 (slice!391 (c!196407 thiss!5831) from!529 until!13))) (height!522 (right!10525 (slice!391 (c!196407 thiss!5831) from!529 until!13))))))))

(declare-fun d!337467 () Bool)

(declare-fun res!532748 () Bool)

(assert (=> d!337467 (=> res!532748 e!756031)))

(get-info :version)

(assert (=> d!337467 (= res!532748 (not ((_ is Node!3825) (slice!391 (c!196407 thiss!5831) from!529 until!13))))))

(assert (=> d!337467 (= (isBalanced!1087 (slice!391 (c!196407 thiss!5831) from!529 until!13)) e!756031)))

(declare-fun b!1178204 () Bool)

(declare-fun res!532750 () Bool)

(assert (=> b!1178204 (=> (not res!532750) (not e!756030))))

(assert (=> b!1178204 (= res!532750 (isBalanced!1087 (left!10195 (slice!391 (c!196407 thiss!5831) from!529 until!13))))))

(declare-fun b!1178205 () Bool)

(assert (=> b!1178205 (= e!756030 (not (isEmpty!7062 (right!10525 (slice!391 (c!196407 thiss!5831) from!529 until!13)))))))

(declare-fun b!1178206 () Bool)

(declare-fun res!532746 () Bool)

(assert (=> b!1178206 (=> (not res!532746) (not e!756030))))

(assert (=> b!1178206 (= res!532746 (isBalanced!1087 (right!10525 (slice!391 (c!196407 thiss!5831) from!529 until!13))))))

(declare-fun b!1178207 () Bool)

(declare-fun res!532751 () Bool)

(assert (=> b!1178207 (=> (not res!532751) (not e!756030))))

(assert (=> b!1178207 (= res!532751 (<= (- (height!522 (left!10195 (slice!391 (c!196407 thiss!5831) from!529 until!13))) (height!522 (right!10525 (slice!391 (c!196407 thiss!5831) from!529 until!13)))) 1))))

(assert (= (and d!337467 (not res!532748)) b!1178203))

(assert (= (and b!1178203 res!532749) b!1178207))

(assert (= (and b!1178207 res!532751) b!1178204))

(assert (= (and b!1178204 res!532750) b!1178206))

(assert (= (and b!1178206 res!532746) b!1178202))

(assert (= (and b!1178202 res!532747) b!1178205))

(declare-fun m!1354987 () Bool)

(assert (=> b!1178205 m!1354987))

(declare-fun m!1354991 () Bool)

(assert (=> b!1178206 m!1354991))

(declare-fun m!1354993 () Bool)

(assert (=> b!1178204 m!1354993))

(declare-fun m!1354995 () Bool)

(assert (=> b!1178207 m!1354995))

(declare-fun m!1354997 () Bool)

(assert (=> b!1178207 m!1354997))

(assert (=> b!1178203 m!1354995))

(assert (=> b!1178203 m!1354997))

(declare-fun m!1354999 () Bool)

(assert (=> b!1178202 m!1354999))

(assert (=> b!1178171 d!337467))

(declare-fun b!1178313 () Bool)

(declare-fun e!756093 () Conc!3825)

(declare-fun e!756096 () Conc!3825)

(assert (=> b!1178313 (= e!756093 e!756096)))

(declare-fun c!196457 () Bool)

(declare-fun call!82499 () Int)

(assert (=> b!1178313 (= c!196457 (<= until!13 call!82499))))

(declare-fun b!1178314 () Bool)

(declare-fun e!756088 () Bool)

(assert (=> b!1178314 (= e!756088 (isBalanced!1087 (c!196407 thiss!5831)))))

(declare-fun b!1178315 () Bool)

(declare-fun call!82500 () Conc!3825)

(declare-fun ++!3012 (Conc!3825 Conc!3825) Conc!3825)

(assert (=> b!1178315 (= e!756096 (++!3012 (slice!391 (left!10195 (c!196407 thiss!5831)) from!529 call!82499) call!82500))))

(declare-fun bm!82495 () Bool)

(declare-fun c!196453 () Bool)

(declare-fun call!82501 () Conc!3825)

(declare-fun e!756091 () Int)

(assert (=> bm!82495 (= call!82501 (slice!391 (ite c!196453 (right!10525 (c!196407 thiss!5831)) (ite c!196457 (left!10195 (c!196407 thiss!5831)) (right!10525 (c!196407 thiss!5831)))) (ite c!196453 (- from!529 call!82499) (ite c!196457 from!529 0)) (ite c!196453 (- until!13 call!82499) e!756091)))))

(declare-fun b!1178316 () Bool)

(declare-fun e!756089 () Int)

(assert (=> b!1178316 (= e!756089 until!13)))

(declare-fun e!756097 () Conc!3825)

(declare-fun b!1178317 () Bool)

(declare-fun slice!393 (IArray!7655 Int Int) IArray!7655)

(assert (=> b!1178317 (= e!756097 (Leaf!5868 (slice!393 (xs!6530 (c!196407 thiss!5831)) from!529 until!13) (- until!13 from!529)))))

(declare-fun b!1178318 () Bool)

(declare-fun size!9245 (Conc!3825) Int)

(assert (=> b!1178318 (= c!196453 (<= (size!9245 (left!10195 (c!196407 thiss!5831))) from!529))))

(declare-datatypes ((Unit!18008 0))(
  ( (Unit!18009) )
))
(declare-fun lt!406198 () Unit!18008)

(declare-fun lt!406197 () Unit!18008)

(assert (=> b!1178318 (= lt!406198 lt!406197)))

(declare-fun lt!406194 () List!11697)

(declare-fun lt!406196 () List!11697)

(declare-fun e!756095 () List!11697)

(declare-fun slice!394 (List!11697 Int Int) List!11697)

(declare-fun ++!3013 (List!11697 List!11697) List!11697)

(assert (=> b!1178318 (= (slice!394 (++!3013 lt!406196 lt!406194) from!529 until!13) e!756095)))

(declare-fun c!196456 () Bool)

(assert (=> b!1178318 (= c!196456 (<= (size!9242 lt!406196) from!529))))

(declare-fun sliceLemma!10 (List!11697 List!11697 Int Int) Unit!18008)

(assert (=> b!1178318 (= lt!406197 (sliceLemma!10 lt!406196 lt!406194 from!529 until!13))))

(declare-fun list!4314 (Conc!3825) List!11697)

(assert (=> b!1178318 (= lt!406194 (list!4314 (right!10525 (c!196407 thiss!5831))))))

(assert (=> b!1178318 (= lt!406196 (list!4314 (left!10195 (c!196407 thiss!5831))))))

(declare-fun e!756094 () Conc!3825)

(assert (=> b!1178318 (= e!756094 e!756093)))

(declare-fun b!1178319 () Bool)

(assert (=> b!1178319 (= e!756091 (- until!13 call!82499))))

(declare-fun b!1178320 () Bool)

(declare-fun e!756092 () Conc!3825)

(assert (=> b!1178320 (= e!756092 Empty!3825)))

(declare-fun call!82504 () List!11697)

(declare-fun bm!82496 () Bool)

(declare-fun call!82503 () Int)

(assert (=> bm!82496 (= call!82504 (slice!394 (ite c!196456 lt!406194 lt!406196) (ite c!196456 (- from!529 call!82503) from!529) (ite c!196456 (- until!13 call!82503) e!756089)))))

(declare-fun b!1178321 () Bool)

(assert (=> b!1178321 (= e!756089 call!82503)))

(declare-fun bm!82497 () Bool)

(declare-fun c!196460 () Bool)

(declare-fun c!196454 () Bool)

(assert (=> bm!82497 (= c!196460 c!196454)))

(declare-fun call!82502 () List!11697)

(assert (=> bm!82497 (= call!82502 call!82504)))

(declare-fun bm!82498 () Bool)

(declare-fun c!196458 () Bool)

(assert (=> bm!82498 (= c!196458 c!196457)))

(assert (=> bm!82498 (= call!82500 call!82501)))

(declare-fun d!337471 () Bool)

(declare-fun e!756087 () Bool)

(assert (=> d!337471 e!756087))

(declare-fun res!532769 () Bool)

(assert (=> d!337471 (=> (not res!532769) (not e!756087))))

(declare-fun lt!406195 () Conc!3825)

(assert (=> d!337471 (= res!532769 (isBalanced!1087 lt!406195))))

(assert (=> d!337471 (= lt!406195 e!756092)))

(declare-fun c!196461 () Bool)

(assert (=> d!337471 (= c!196461 (= from!529 until!13))))

(assert (=> d!337471 e!756088))

(declare-fun res!532768 () Bool)

(assert (=> d!337471 (=> (not res!532768) (not e!756088))))

(assert (=> d!337471 (= res!532768 (and (<= 0 from!529) (<= from!529 until!13)))))

(assert (=> d!337471 (= (slice!391 (c!196407 thiss!5831) from!529 until!13) lt!406195)))

(declare-fun bm!82494 () Bool)

(assert (=> bm!82494 (= call!82503 (size!9242 lt!406196))))

(declare-fun e!756090 () List!11697)

(declare-fun b!1178322 () Bool)

(assert (=> b!1178322 (= e!756090 (++!3013 call!82502 (slice!394 lt!406194 0 (- until!13 call!82503))))))

(declare-fun b!1178323 () Bool)

(assert (=> b!1178323 (= e!756091 until!13)))

(declare-fun b!1178324 () Bool)

(declare-fun res!532767 () Bool)

(assert (=> b!1178324 (=> (not res!532767) (not e!756088))))

(assert (=> b!1178324 (= res!532767 (<= until!13 (size!9245 (c!196407 thiss!5831))))))

(declare-fun b!1178325 () Bool)

(assert (=> b!1178325 (= e!756097 Empty!3825)))

(declare-fun b!1178326 () Bool)

(assert (=> b!1178326 (= e!756090 call!82502)))

(declare-fun b!1178327 () Bool)

(assert (=> b!1178327 (= e!756092 e!756094)))

(declare-fun c!196459 () Bool)

(assert (=> b!1178327 (= c!196459 ((_ is Leaf!5868) (c!196407 thiss!5831)))))

(declare-fun b!1178328 () Bool)

(declare-fun c!196455 () Bool)

(assert (=> b!1178328 (= c!196455 (= (- until!13 from!529) 0))))

(assert (=> b!1178328 (= e!756094 e!756097)))

(declare-fun b!1178329 () Bool)

(assert (=> b!1178329 (= e!756095 call!82504)))

(declare-fun bm!82499 () Bool)

(assert (=> bm!82499 (= call!82499 (size!9245 (left!10195 (c!196407 thiss!5831))))))

(declare-fun b!1178330 () Bool)

(assert (=> b!1178330 (= e!756095 e!756090)))

(assert (=> b!1178330 (= c!196454 (<= until!13 call!82503))))

(declare-fun b!1178331 () Bool)

(assert (=> b!1178331 (= e!756093 call!82501)))

(declare-fun b!1178332 () Bool)

(assert (=> b!1178332 (= e!756096 call!82500)))

(declare-fun b!1178333 () Bool)

(assert (=> b!1178333 (= e!756087 (= (list!4314 lt!406195) (slice!394 (list!4314 (c!196407 thiss!5831)) from!529 until!13)))))

(assert (= (and d!337471 res!532768) b!1178324))

(assert (= (and b!1178324 res!532767) b!1178314))

(assert (= (and d!337471 c!196461) b!1178320))

(assert (= (and d!337471 (not c!196461)) b!1178327))

(assert (= (and b!1178327 c!196459) b!1178328))

(assert (= (and b!1178327 (not c!196459)) b!1178318))

(assert (= (and b!1178328 c!196455) b!1178325))

(assert (= (and b!1178328 (not c!196455)) b!1178317))

(assert (= (and b!1178318 c!196456) b!1178329))

(assert (= (and b!1178318 (not c!196456)) b!1178330))

(assert (= (and b!1178330 c!196454) b!1178326))

(assert (= (and b!1178330 (not c!196454)) b!1178322))

(assert (= (or b!1178326 b!1178322) bm!82497))

(assert (= (and bm!82497 c!196460) b!1178316))

(assert (= (and bm!82497 (not c!196460)) b!1178321))

(assert (= (or b!1178329 b!1178322 b!1178330 b!1178321) bm!82494))

(assert (= (or b!1178329 bm!82497) bm!82496))

(assert (= (and b!1178318 c!196453) b!1178331))

(assert (= (and b!1178318 (not c!196453)) b!1178313))

(assert (= (and b!1178313 c!196457) b!1178332))

(assert (= (and b!1178313 (not c!196457)) b!1178315))

(assert (= (or b!1178332 b!1178315) bm!82498))

(assert (= (and bm!82498 c!196458) b!1178323))

(assert (= (and bm!82498 (not c!196458)) b!1178319))

(assert (= (or b!1178331 b!1178313 b!1178315 b!1178319) bm!82499))

(assert (= (or b!1178331 bm!82498) bm!82495))

(assert (= (and d!337471 res!532769) b!1178333))

(declare-fun m!1355039 () Bool)

(assert (=> b!1178324 m!1355039))

(declare-fun m!1355041 () Bool)

(assert (=> b!1178318 m!1355041))

(declare-fun m!1355043 () Bool)

(assert (=> b!1178318 m!1355043))

(declare-fun m!1355045 () Bool)

(assert (=> b!1178318 m!1355045))

(declare-fun m!1355047 () Bool)

(assert (=> b!1178318 m!1355047))

(declare-fun m!1355049 () Bool)

(assert (=> b!1178318 m!1355049))

(declare-fun m!1355051 () Bool)

(assert (=> b!1178318 m!1355051))

(assert (=> b!1178318 m!1355045))

(declare-fun m!1355053 () Bool)

(assert (=> b!1178318 m!1355053))

(declare-fun m!1355055 () Bool)

(assert (=> d!337471 m!1355055))

(assert (=> bm!82499 m!1355049))

(declare-fun m!1355057 () Bool)

(assert (=> b!1178315 m!1355057))

(assert (=> b!1178315 m!1355057))

(declare-fun m!1355059 () Bool)

(assert (=> b!1178315 m!1355059))

(declare-fun m!1355061 () Bool)

(assert (=> b!1178322 m!1355061))

(assert (=> b!1178322 m!1355061))

(declare-fun m!1355063 () Bool)

(assert (=> b!1178322 m!1355063))

(declare-fun m!1355065 () Bool)

(assert (=> bm!82495 m!1355065))

(declare-fun m!1355067 () Bool)

(assert (=> b!1178333 m!1355067))

(declare-fun m!1355069 () Bool)

(assert (=> b!1178333 m!1355069))

(assert (=> b!1178333 m!1355069))

(declare-fun m!1355071 () Bool)

(assert (=> b!1178333 m!1355071))

(assert (=> b!1178314 m!1354961))

(declare-fun m!1355073 () Bool)

(assert (=> bm!82496 m!1355073))

(assert (=> bm!82494 m!1355047))

(declare-fun m!1355075 () Bool)

(assert (=> b!1178317 m!1355075))

(assert (=> b!1178171 d!337471))

(declare-fun d!337475 () Bool)

(declare-fun lt!406204 () Int)

(assert (=> d!337475 (= lt!406204 (size!9242 (list!4312 thiss!5831)))))

(assert (=> d!337475 (= lt!406204 (size!9245 (c!196407 thiss!5831)))))

(assert (=> d!337475 (= (size!9243 thiss!5831) lt!406204)))

(declare-fun bs!286763 () Bool)

(assert (= bs!286763 d!337475))

(assert (=> bs!286763 m!1354969))

(assert (=> bs!286763 m!1354969))

(assert (=> bs!286763 m!1354971))

(assert (=> bs!286763 m!1355039))

(assert (=> b!1178170 d!337475))

(declare-fun d!337481 () Bool)

(assert (=> d!337481 (= (inv!15460 thiss!5831) (isBalanced!1087 (c!196407 thiss!5831)))))

(declare-fun bs!286764 () Bool)

(assert (= bs!286764 d!337481))

(assert (=> bs!286764 m!1354961))

(assert (=> start!104174 d!337481))

(declare-fun d!337483 () Bool)

(declare-fun c!196470 () Bool)

(assert (=> d!337483 (= c!196470 ((_ is Node!3825) (c!196407 thiss!5831)))))

(declare-fun e!756113 () Bool)

(assert (=> d!337483 (= (inv!15459 (c!196407 thiss!5831)) e!756113)))

(declare-fun b!1178361 () Bool)

(declare-fun inv!15463 (Conc!3825) Bool)

(assert (=> b!1178361 (= e!756113 (inv!15463 (c!196407 thiss!5831)))))

(declare-fun b!1178362 () Bool)

(declare-fun e!756114 () Bool)

(assert (=> b!1178362 (= e!756113 e!756114)))

(declare-fun res!532781 () Bool)

(assert (=> b!1178362 (= res!532781 (not ((_ is Leaf!5868) (c!196407 thiss!5831))))))

(assert (=> b!1178362 (=> res!532781 e!756114)))

(declare-fun b!1178363 () Bool)

(declare-fun inv!15464 (Conc!3825) Bool)

(assert (=> b!1178363 (= e!756114 (inv!15464 (c!196407 thiss!5831)))))

(assert (= (and d!337483 c!196470) b!1178361))

(assert (= (and d!337483 (not c!196470)) b!1178362))

(assert (= (and b!1178362 (not res!532781)) b!1178363))

(declare-fun m!1355095 () Bool)

(assert (=> b!1178361 m!1355095))

(declare-fun m!1355097 () Bool)

(assert (=> b!1178363 m!1355097))

(assert (=> b!1178167 d!337483))

(declare-fun b!1178364 () Bool)

(declare-fun res!532783 () Bool)

(declare-fun e!756115 () Bool)

(assert (=> b!1178364 (=> (not res!532783) (not e!756115))))

(assert (=> b!1178364 (= res!532783 (not (isEmpty!7062 (left!10195 (c!196407 thiss!5831)))))))

(declare-fun b!1178365 () Bool)

(declare-fun e!756116 () Bool)

(assert (=> b!1178365 (= e!756116 e!756115)))

(declare-fun res!532785 () Bool)

(assert (=> b!1178365 (=> (not res!532785) (not e!756115))))

(assert (=> b!1178365 (= res!532785 (<= (- 1) (- (height!522 (left!10195 (c!196407 thiss!5831))) (height!522 (right!10525 (c!196407 thiss!5831))))))))

(declare-fun d!337491 () Bool)

(declare-fun res!532784 () Bool)

(assert (=> d!337491 (=> res!532784 e!756116)))

(assert (=> d!337491 (= res!532784 (not ((_ is Node!3825) (c!196407 thiss!5831))))))

(assert (=> d!337491 (= (isBalanced!1087 (c!196407 thiss!5831)) e!756116)))

(declare-fun b!1178366 () Bool)

(declare-fun res!532786 () Bool)

(assert (=> b!1178366 (=> (not res!532786) (not e!756115))))

(assert (=> b!1178366 (= res!532786 (isBalanced!1087 (left!10195 (c!196407 thiss!5831))))))

(declare-fun b!1178367 () Bool)

(assert (=> b!1178367 (= e!756115 (not (isEmpty!7062 (right!10525 (c!196407 thiss!5831)))))))

(declare-fun b!1178368 () Bool)

(declare-fun res!532782 () Bool)

(assert (=> b!1178368 (=> (not res!532782) (not e!756115))))

(assert (=> b!1178368 (= res!532782 (isBalanced!1087 (right!10525 (c!196407 thiss!5831))))))

(declare-fun b!1178369 () Bool)

(declare-fun res!532787 () Bool)

(assert (=> b!1178369 (=> (not res!532787) (not e!756115))))

(assert (=> b!1178369 (= res!532787 (<= (- (height!522 (left!10195 (c!196407 thiss!5831))) (height!522 (right!10525 (c!196407 thiss!5831)))) 1))))

(assert (= (and d!337491 (not res!532784)) b!1178365))

(assert (= (and b!1178365 res!532785) b!1178369))

(assert (= (and b!1178369 res!532787) b!1178366))

(assert (= (and b!1178366 res!532786) b!1178368))

(assert (= (and b!1178368 res!532782) b!1178364))

(assert (= (and b!1178364 res!532783) b!1178367))

(declare-fun m!1355099 () Bool)

(assert (=> b!1178367 m!1355099))

(declare-fun m!1355101 () Bool)

(assert (=> b!1178368 m!1355101))

(declare-fun m!1355103 () Bool)

(assert (=> b!1178366 m!1355103))

(declare-fun m!1355105 () Bool)

(assert (=> b!1178369 m!1355105))

(declare-fun m!1355107 () Bool)

(assert (=> b!1178369 m!1355107))

(assert (=> b!1178365 m!1355105))

(assert (=> b!1178365 m!1355107))

(declare-fun m!1355109 () Bool)

(assert (=> b!1178364 m!1355109))

(assert (=> b!1178168 d!337491))

(declare-fun d!337493 () Bool)

(declare-fun lt!406210 () Int)

(assert (=> d!337493 (>= lt!406210 0)))

(declare-fun e!756125 () Int)

(assert (=> d!337493 (= lt!406210 e!756125)))

(declare-fun c!196473 () Bool)

(assert (=> d!337493 (= c!196473 ((_ is Nil!11673) (list!4312 thiss!5831)))))

(assert (=> d!337493 (= (size!9242 (list!4312 thiss!5831)) lt!406210)))

(declare-fun b!1178385 () Bool)

(assert (=> b!1178385 (= e!756125 0)))

(declare-fun b!1178386 () Bool)

(assert (=> b!1178386 (= e!756125 (+ 1 (size!9242 (t!111193 (list!4312 thiss!5831)))))))

(assert (= (and d!337493 c!196473) b!1178385))

(assert (= (and d!337493 (not c!196473)) b!1178386))

(declare-fun m!1355117 () Bool)

(assert (=> b!1178386 m!1355117))

(assert (=> b!1178169 d!337493))

(declare-fun d!337495 () Bool)

(assert (=> d!337495 (= (list!4312 thiss!5831) (list!4314 (c!196407 thiss!5831)))))

(declare-fun bs!286767 () Bool)

(assert (= bs!286767 d!337495))

(assert (=> bs!286767 m!1355069))

(assert (=> b!1178169 d!337495))

(declare-fun tp!335290 () Bool)

(declare-fun b!1178395 () Bool)

(declare-fun e!756130 () Bool)

(declare-fun tp!335288 () Bool)

(assert (=> b!1178395 (= e!756130 (and (inv!15459 (left!10195 (c!196407 thiss!5831))) tp!335290 (inv!15459 (right!10525 (c!196407 thiss!5831))) tp!335288))))

(declare-fun b!1178397 () Bool)

(declare-fun e!756131 () Bool)

(declare-fun tp!335289 () Bool)

(assert (=> b!1178397 (= e!756131 tp!335289)))

(declare-fun b!1178396 () Bool)

(declare-fun inv!15466 (IArray!7655) Bool)

(assert (=> b!1178396 (= e!756130 (and (inv!15466 (xs!6530 (c!196407 thiss!5831))) e!756131))))

(assert (=> b!1178167 (= tp!335272 (and (inv!15459 (c!196407 thiss!5831)) e!756130))))

(assert (= (and b!1178167 ((_ is Node!3825) (c!196407 thiss!5831))) b!1178395))

(assert (= b!1178396 b!1178397))

(assert (= (and b!1178167 ((_ is Leaf!5868) (c!196407 thiss!5831))) b!1178396))

(declare-fun m!1355119 () Bool)

(assert (=> b!1178395 m!1355119))

(declare-fun m!1355121 () Bool)

(assert (=> b!1178395 m!1355121))

(declare-fun m!1355123 () Bool)

(assert (=> b!1178396 m!1355123))

(assert (=> b!1178167 m!1354967))

(check-sat (not d!337495) (not b!1178314) (not b!1178204) (not b!1178167) (not b!1178333) (not b!1178386) (not b!1178207) (not bm!82499) (not b!1178318) (not b!1178369) (not b!1178205) (not b!1178363) (not b!1178396) (not b!1178395) (not b!1178317) (not bm!82495) (not d!337481) (not b!1178365) (not bm!82494) (not b!1178324) (not b!1178366) (not d!337475) (not b!1178203) (not b!1178364) (not d!337471) (not b!1178368) (not b!1178322) (not b!1178206) (not b!1178361) (not b!1178315) (not bm!82496) (not b!1178397) (not b!1178367) (not b!1178202))
(check-sat)
