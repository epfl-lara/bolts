; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!352212 () Bool)

(assert start!352212)

(declare-fun b_free!100403 () Bool)

(declare-fun b_next!101107 () Bool)

(assert (=> start!352212 (= b_free!100403 (not b_next!101107))))

(declare-fun tp!1145464 () Bool)

(declare-fun b_and!278781 () Bool)

(assert (=> start!352212 (= tp!1145464 b_and!278781)))

(declare-datatypes ((T!69056 0))(
  ( (T!69057 (val!13166 Int)) )
))
(declare-datatypes ((List!40125 0))(
  ( (Nil!40001) (Cons!40001 (h!45421 T!69056) (t!303100 List!40125)) )
))
(declare-datatypes ((IArray!24459 0))(
  ( (IArray!24460 (innerList!12287 List!40125)) )
))
(declare-datatypes ((Conc!12227 0))(
  ( (Node!12227 (left!30962 Conc!12227) (right!31292 Conc!12227) (csize!24684 Int) (cheight!12438 Int)) (Leaf!18971 (xs!15429 IArray!24459) (csize!24685 Int)) (Empty!12227) )
))
(declare-datatypes ((BalanceConc!24068 0))(
  ( (BalanceConc!24069 (c!649223 Conc!12227)) )
))
(declare-fun thiss!5802 () BalanceConc!24068)

(declare-fun p!1436 () Int)

(declare-fun forall!8216 (Conc!12227 Int) Bool)

(declare-fun forall!8217 (List!40125 Int) Bool)

(declare-fun list!14726 (BalanceConc!24068) List!40125)

(assert (=> start!352212 (not (= (forall!8216 (c!649223 thiss!5802) p!1436) (forall!8217 (list!14726 thiss!5802) p!1436)))))

(declare-fun e!2320282 () Bool)

(declare-fun inv!53519 (BalanceConc!24068) Bool)

(assert (=> start!352212 (and (inv!53519 thiss!5802) e!2320282)))

(assert (=> start!352212 tp!1145464))

(declare-fun b!3751090 () Bool)

(declare-fun tp!1145463 () Bool)

(declare-fun inv!53520 (Conc!12227) Bool)

(assert (=> b!3751090 (= e!2320282 (and (inv!53520 (c!649223 thiss!5802)) tp!1145463))))

(assert (= start!352212 b!3751090))

(declare-fun m!4241923 () Bool)

(assert (=> start!352212 m!4241923))

(declare-fun m!4241925 () Bool)

(assert (=> start!352212 m!4241925))

(assert (=> start!352212 m!4241925))

(declare-fun m!4241927 () Bool)

(assert (=> start!352212 m!4241927))

(declare-fun m!4241929 () Bool)

(assert (=> start!352212 m!4241929))

(declare-fun m!4241931 () Bool)

(assert (=> b!3751090 m!4241931))

(check-sat (not start!352212) (not b!3751090) b_and!278781 (not b_next!101107))
(check-sat b_and!278781 (not b_next!101107))
(get-model)

(declare-fun b!3751118 () Bool)

(declare-fun e!2320305 () Bool)

(declare-fun forall!8219 (IArray!24459 Int) Bool)

(assert (=> b!3751118 (= e!2320305 (forall!8219 (xs!15429 (c!649223 thiss!5802)) p!1436))))

(declare-fun b!3751119 () Bool)

(declare-fun e!2320304 () Bool)

(assert (=> b!3751119 (= e!2320305 e!2320304)))

(declare-datatypes ((Unit!57730 0))(
  ( (Unit!57731) )
))
(declare-fun lt!1299864 () Unit!57730)

(declare-fun lemmaForallConcat!207 (List!40125 List!40125 Int) Unit!57730)

(declare-fun list!14728 (Conc!12227) List!40125)

(assert (=> b!3751119 (= lt!1299864 (lemmaForallConcat!207 (list!14728 (left!30962 (c!649223 thiss!5802))) (list!14728 (right!31292 (c!649223 thiss!5802))) p!1436))))

(declare-fun res!1520278 () Bool)

(assert (=> b!3751119 (= res!1520278 (forall!8216 (left!30962 (c!649223 thiss!5802)) p!1436))))

(assert (=> b!3751119 (=> (not res!1520278) (not e!2320304))))

(declare-fun d!1094148 () Bool)

(declare-fun lt!1299865 () Bool)

(assert (=> d!1094148 (= lt!1299865 (forall!8217 (list!14728 (c!649223 thiss!5802)) p!1436))))

(declare-fun e!2320306 () Bool)

(assert (=> d!1094148 (= lt!1299865 e!2320306)))

(declare-fun res!1520279 () Bool)

(assert (=> d!1094148 (=> res!1520279 e!2320306)))

(get-info :version)

(assert (=> d!1094148 (= res!1520279 ((_ is Empty!12227) (c!649223 thiss!5802)))))

(assert (=> d!1094148 (= (forall!8216 (c!649223 thiss!5802) p!1436) lt!1299865)))

(declare-fun b!3751117 () Bool)

(assert (=> b!3751117 (= e!2320306 e!2320305)))

(declare-fun c!649229 () Bool)

(assert (=> b!3751117 (= c!649229 ((_ is Leaf!18971) (c!649223 thiss!5802)))))

(declare-fun b!3751120 () Bool)

(assert (=> b!3751120 (= e!2320304 (forall!8216 (right!31292 (c!649223 thiss!5802)) p!1436))))

(assert (= (and d!1094148 (not res!1520279)) b!3751117))

(assert (= (and b!3751117 c!649229) b!3751118))

(assert (= (and b!3751117 (not c!649229)) b!3751119))

(assert (= (and b!3751119 res!1520278) b!3751120))

(declare-fun m!4241953 () Bool)

(assert (=> b!3751118 m!4241953))

(declare-fun m!4241955 () Bool)

(assert (=> b!3751119 m!4241955))

(declare-fun m!4241957 () Bool)

(assert (=> b!3751119 m!4241957))

(assert (=> b!3751119 m!4241955))

(assert (=> b!3751119 m!4241957))

(declare-fun m!4241959 () Bool)

(assert (=> b!3751119 m!4241959))

(declare-fun m!4241961 () Bool)

(assert (=> b!3751119 m!4241961))

(declare-fun m!4241963 () Bool)

(assert (=> d!1094148 m!4241963))

(assert (=> d!1094148 m!4241963))

(declare-fun m!4241965 () Bool)

(assert (=> d!1094148 m!4241965))

(declare-fun m!4241967 () Bool)

(assert (=> b!3751120 m!4241967))

(assert (=> start!352212 d!1094148))

(declare-fun d!1094154 () Bool)

(declare-fun res!1520284 () Bool)

(declare-fun e!2320311 () Bool)

(assert (=> d!1094154 (=> res!1520284 e!2320311)))

(assert (=> d!1094154 (= res!1520284 ((_ is Nil!40001) (list!14726 thiss!5802)))))

(assert (=> d!1094154 (= (forall!8217 (list!14726 thiss!5802) p!1436) e!2320311)))

(declare-fun b!3751125 () Bool)

(declare-fun e!2320312 () Bool)

(assert (=> b!3751125 (= e!2320311 e!2320312)))

(declare-fun res!1520285 () Bool)

(assert (=> b!3751125 (=> (not res!1520285) (not e!2320312))))

(declare-fun dynLambda!17294 (Int T!69056) Bool)

(assert (=> b!3751125 (= res!1520285 (dynLambda!17294 p!1436 (h!45421 (list!14726 thiss!5802))))))

(declare-fun b!3751126 () Bool)

(assert (=> b!3751126 (= e!2320312 (forall!8217 (t!303100 (list!14726 thiss!5802)) p!1436))))

(assert (= (and d!1094154 (not res!1520284)) b!3751125))

(assert (= (and b!3751125 res!1520285) b!3751126))

(declare-fun b_lambda!109969 () Bool)

(assert (=> (not b_lambda!109969) (not b!3751125)))

(declare-fun t!303106 () Bool)

(declare-fun tb!214639 () Bool)

(assert (=> (and start!352212 (= p!1436 p!1436) t!303106) tb!214639))

(declare-fun result!262092 () Bool)

(assert (=> tb!214639 (= result!262092 true)))

(assert (=> b!3751125 t!303106))

(declare-fun b_and!278785 () Bool)

(assert (= b_and!278781 (and (=> t!303106 result!262092) b_and!278785)))

(declare-fun m!4241971 () Bool)

(assert (=> b!3751125 m!4241971))

(declare-fun m!4241973 () Bool)

(assert (=> b!3751126 m!4241973))

(assert (=> start!352212 d!1094154))

(declare-fun d!1094160 () Bool)

(assert (=> d!1094160 (= (list!14726 thiss!5802) (list!14728 (c!649223 thiss!5802)))))

(declare-fun bs!575385 () Bool)

(assert (= bs!575385 d!1094160))

(assert (=> bs!575385 m!4241963))

(assert (=> start!352212 d!1094160))

(declare-fun d!1094162 () Bool)

(declare-fun isBalanced!3526 (Conc!12227) Bool)

(assert (=> d!1094162 (= (inv!53519 thiss!5802) (isBalanced!3526 (c!649223 thiss!5802)))))

(declare-fun bs!575386 () Bool)

(assert (= bs!575386 d!1094162))

(declare-fun m!4241975 () Bool)

(assert (=> bs!575386 m!4241975))

(assert (=> start!352212 d!1094162))

(declare-fun d!1094164 () Bool)

(declare-fun c!649235 () Bool)

(assert (=> d!1094164 (= c!649235 ((_ is Node!12227) (c!649223 thiss!5802)))))

(declare-fun e!2320329 () Bool)

(assert (=> d!1094164 (= (inv!53520 (c!649223 thiss!5802)) e!2320329)))

(declare-fun b!3751153 () Bool)

(declare-fun inv!53522 (Conc!12227) Bool)

(assert (=> b!3751153 (= e!2320329 (inv!53522 (c!649223 thiss!5802)))))

(declare-fun b!3751154 () Bool)

(declare-fun e!2320330 () Bool)

(assert (=> b!3751154 (= e!2320329 e!2320330)))

(declare-fun res!1520291 () Bool)

(assert (=> b!3751154 (= res!1520291 (not ((_ is Leaf!18971) (c!649223 thiss!5802))))))

(assert (=> b!3751154 (=> res!1520291 e!2320330)))

(declare-fun b!3751155 () Bool)

(declare-fun inv!53524 (Conc!12227) Bool)

(assert (=> b!3751155 (= e!2320330 (inv!53524 (c!649223 thiss!5802)))))

(assert (= (and d!1094164 c!649235) b!3751153))

(assert (= (and d!1094164 (not c!649235)) b!3751154))

(assert (= (and b!3751154 (not res!1520291)) b!3751155))

(declare-fun m!4241987 () Bool)

(assert (=> b!3751153 m!4241987))

(declare-fun m!4241989 () Bool)

(assert (=> b!3751155 m!4241989))

(assert (=> b!3751090 d!1094164))

(declare-fun e!2320335 () Bool)

(declare-fun b!3751164 () Bool)

(declare-fun tp!1145482 () Bool)

(declare-fun tp!1145480 () Bool)

(assert (=> b!3751164 (= e!2320335 (and (inv!53520 (left!30962 (c!649223 thiss!5802))) tp!1145482 (inv!53520 (right!31292 (c!649223 thiss!5802))) tp!1145480))))

(declare-fun b!3751166 () Bool)

(declare-fun e!2320336 () Bool)

(declare-fun tp!1145481 () Bool)

(assert (=> b!3751166 (= e!2320336 tp!1145481)))

(declare-fun b!3751165 () Bool)

(declare-fun inv!53525 (IArray!24459) Bool)

(assert (=> b!3751165 (= e!2320335 (and (inv!53525 (xs!15429 (c!649223 thiss!5802))) e!2320336))))

(assert (=> b!3751090 (= tp!1145463 (and (inv!53520 (c!649223 thiss!5802)) e!2320335))))

(assert (= (and b!3751090 ((_ is Node!12227) (c!649223 thiss!5802))) b!3751164))

(assert (= b!3751165 b!3751166))

(assert (= (and b!3751090 ((_ is Leaf!18971) (c!649223 thiss!5802))) b!3751165))

(declare-fun m!4241991 () Bool)

(assert (=> b!3751164 m!4241991))

(declare-fun m!4241993 () Bool)

(assert (=> b!3751164 m!4241993))

(declare-fun m!4241995 () Bool)

(assert (=> b!3751165 m!4241995))

(assert (=> b!3751090 m!4241931))

(declare-fun b_lambda!109973 () Bool)

(assert (= b_lambda!109969 (or (and start!352212 b_free!100403) b_lambda!109973)))

(check-sat (not b!3751153) (not d!1094160) (not b!3751165) (not b!3751090) (not b!3751166) (not d!1094148) (not b!3751118) b_and!278785 (not b_next!101107) (not b!3751119) (not b_lambda!109973) (not b!3751120) (not b!3751126) (not b!3751164) (not b!3751155) (not d!1094162))
(check-sat b_and!278785 (not b_next!101107))
