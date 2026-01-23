; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105748 () Bool)

(assert start!105748)

(declare-fun res!537685 () Bool)

(declare-fun e!765200 () Bool)

(assert (=> start!105748 (=> (not res!537685) (not e!765200))))

(declare-datatypes ((B!1289 0))(
  ( (B!1290 (val!3830 Int)) )
))
(declare-datatypes ((List!12014 0))(
  ( (Nil!11990) (Cons!11990 (h!17391 B!1289) (t!112220 List!12014)) )
))
(declare-fun l!2965 () List!12014)

(declare-fun i!770 () Int)

(get-info :version)

(assert (=> start!105748 (= res!537685 (and (not ((_ is Nil!11990) l!2965)) (> i!770 0)))))

(assert (=> start!105748 e!765200))

(declare-fun e!765201 () Bool)

(assert (=> start!105748 e!765201))

(assert (=> start!105748 true))

(declare-fun b!1190222 () Bool)

(declare-fun subseq!347 (List!12014 List!12014) Bool)

(declare-fun drop!571 (List!12014 Int) List!12014)

(assert (=> b!1190222 (= e!765200 (not (subseq!347 (drop!571 l!2965 i!770) l!2965)))))

(assert (=> b!1190222 (subseq!347 (drop!571 (t!112220 l!2965) (- i!770 1)) (t!112220 l!2965))))

(declare-datatypes ((Unit!18408 0))(
  ( (Unit!18409) )
))
(declare-fun lt!409158 () Unit!18408)

(declare-fun lemmaDropSubseq!106 (List!12014 Int) Unit!18408)

(assert (=> b!1190222 (= lt!409158 (lemmaDropSubseq!106 (t!112220 l!2965) (- i!770 1)))))

(declare-fun b!1190223 () Bool)

(declare-fun tp_is_empty!5879 () Bool)

(declare-fun tp!339688 () Bool)

(assert (=> b!1190223 (= e!765201 (and tp_is_empty!5879 tp!339688))))

(assert (= (and start!105748 res!537685) b!1190222))

(assert (= (and start!105748 ((_ is Cons!11990) l!2965)) b!1190223))

(declare-fun m!1365339 () Bool)

(assert (=> b!1190222 m!1365339))

(assert (=> b!1190222 m!1365339))

(declare-fun m!1365341 () Bool)

(assert (=> b!1190222 m!1365341))

(declare-fun m!1365343 () Bool)

(assert (=> b!1190222 m!1365343))

(assert (=> b!1190222 m!1365343))

(declare-fun m!1365345 () Bool)

(assert (=> b!1190222 m!1365345))

(declare-fun m!1365347 () Bool)

(assert (=> b!1190222 m!1365347))

(check-sat (not b!1190222) (not b!1190223) tp_is_empty!5879)
(check-sat)
(get-model)

(declare-fun d!340164 () Bool)

(assert (=> d!340164 (subseq!347 (drop!571 (t!112220 l!2965) (- i!770 1)) (t!112220 l!2965))))

(declare-fun lt!409164 () Unit!18408)

(declare-fun choose!7696 (List!12014 Int) Unit!18408)

(assert (=> d!340164 (= lt!409164 (choose!7696 (t!112220 l!2965) (- i!770 1)))))

(assert (=> d!340164 (= (lemmaDropSubseq!106 (t!112220 l!2965) (- i!770 1)) lt!409164)))

(declare-fun bs!287851 () Bool)

(assert (= bs!287851 d!340164))

(assert (=> bs!287851 m!1365343))

(assert (=> bs!287851 m!1365343))

(assert (=> bs!287851 m!1365345))

(declare-fun m!1365351 () Bool)

(assert (=> bs!287851 m!1365351))

(assert (=> b!1190222 d!340164))

(declare-fun b!1190269 () Bool)

(declare-fun e!765230 () Bool)

(declare-fun lt!409170 () List!12014)

(declare-fun e!765229 () Int)

(declare-fun size!9451 (List!12014) Int)

(assert (=> b!1190269 (= e!765230 (= (size!9451 lt!409170) e!765229))))

(declare-fun c!197573 () Bool)

(assert (=> b!1190269 (= c!197573 (<= (- i!770 1) 0))))

(declare-fun b!1190270 () Bool)

(declare-fun e!765228 () List!12014)

(declare-fun e!765231 () List!12014)

(assert (=> b!1190270 (= e!765228 e!765231)))

(declare-fun c!197575 () Bool)

(assert (=> b!1190270 (= c!197575 (<= (- i!770 1) 0))))

(declare-fun b!1190271 () Bool)

(assert (=> b!1190271 (= e!765231 (t!112220 l!2965))))

(declare-fun b!1190272 () Bool)

(assert (=> b!1190272 (= e!765231 (drop!571 (t!112220 (t!112220 l!2965)) (- (- i!770 1) 1)))))

(declare-fun b!1190273 () Bool)

(declare-fun call!82680 () Int)

(assert (=> b!1190273 (= e!765229 call!82680)))

(declare-fun b!1190274 () Bool)

(assert (=> b!1190274 (= e!765228 Nil!11990)))

(declare-fun d!340168 () Bool)

(assert (=> d!340168 e!765230))

(declare-fun res!537691 () Bool)

(assert (=> d!340168 (=> (not res!537691) (not e!765230))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1658 (List!12014) (InoxSet B!1289))

(assert (=> d!340168 (= res!537691 (= ((_ map implies) (content!1658 lt!409170) (content!1658 (t!112220 l!2965))) ((as const (InoxSet B!1289)) true)))))

(assert (=> d!340168 (= lt!409170 e!765228)))

(declare-fun c!197576 () Bool)

(assert (=> d!340168 (= c!197576 ((_ is Nil!11990) (t!112220 l!2965)))))

(assert (=> d!340168 (= (drop!571 (t!112220 l!2965) (- i!770 1)) lt!409170)))

(declare-fun b!1190275 () Bool)

(declare-fun e!765227 () Int)

(assert (=> b!1190275 (= e!765229 e!765227)))

(declare-fun c!197574 () Bool)

(assert (=> b!1190275 (= c!197574 (>= (- i!770 1) call!82680))))

(declare-fun b!1190276 () Bool)

(assert (=> b!1190276 (= e!765227 0)))

(declare-fun bm!82675 () Bool)

(assert (=> bm!82675 (= call!82680 (size!9451 (t!112220 l!2965)))))

(declare-fun b!1190277 () Bool)

(assert (=> b!1190277 (= e!765227 (- call!82680 (- i!770 1)))))

(assert (= (and d!340168 c!197576) b!1190274))

(assert (= (and d!340168 (not c!197576)) b!1190270))

(assert (= (and b!1190270 c!197575) b!1190271))

(assert (= (and b!1190270 (not c!197575)) b!1190272))

(assert (= (and d!340168 res!537691) b!1190269))

(assert (= (and b!1190269 c!197573) b!1190273))

(assert (= (and b!1190269 (not c!197573)) b!1190275))

(assert (= (and b!1190275 c!197574) b!1190276))

(assert (= (and b!1190275 (not c!197574)) b!1190277))

(assert (= (or b!1190273 b!1190275 b!1190277) bm!82675))

(declare-fun m!1365363 () Bool)

(assert (=> b!1190269 m!1365363))

(declare-fun m!1365365 () Bool)

(assert (=> b!1190272 m!1365365))

(declare-fun m!1365367 () Bool)

(assert (=> d!340168 m!1365367))

(declare-fun m!1365369 () Bool)

(assert (=> d!340168 m!1365369))

(declare-fun m!1365371 () Bool)

(assert (=> bm!82675 m!1365371))

(assert (=> b!1190222 d!340168))

(declare-fun b!1190316 () Bool)

(declare-fun e!765264 () Bool)

(assert (=> b!1190316 (= e!765264 (subseq!347 (drop!571 (t!112220 l!2965) (- i!770 1)) (t!112220 (t!112220 l!2965))))))

(declare-fun b!1190314 () Bool)

(declare-fun e!765261 () Bool)

(assert (=> b!1190314 (= e!765261 e!765264)))

(declare-fun res!537717 () Bool)

(assert (=> b!1190314 (=> res!537717 e!765264)))

(declare-fun e!765262 () Bool)

(assert (=> b!1190314 (= res!537717 e!765262)))

(declare-fun res!537718 () Bool)

(assert (=> b!1190314 (=> (not res!537718) (not e!765262))))

(assert (=> b!1190314 (= res!537718 (= (h!17391 (drop!571 (t!112220 l!2965) (- i!770 1))) (h!17391 (t!112220 l!2965))))))

(declare-fun b!1190313 () Bool)

(declare-fun e!765263 () Bool)

(assert (=> b!1190313 (= e!765263 e!765261)))

(declare-fun res!537720 () Bool)

(assert (=> b!1190313 (=> (not res!537720) (not e!765261))))

(assert (=> b!1190313 (= res!537720 ((_ is Cons!11990) (t!112220 l!2965)))))

(declare-fun d!340172 () Bool)

(declare-fun res!537719 () Bool)

(assert (=> d!340172 (=> res!537719 e!765263)))

(assert (=> d!340172 (= res!537719 ((_ is Nil!11990) (drop!571 (t!112220 l!2965) (- i!770 1))))))

(assert (=> d!340172 (= (subseq!347 (drop!571 (t!112220 l!2965) (- i!770 1)) (t!112220 l!2965)) e!765263)))

(declare-fun b!1190315 () Bool)

(assert (=> b!1190315 (= e!765262 (subseq!347 (t!112220 (drop!571 (t!112220 l!2965) (- i!770 1))) (t!112220 (t!112220 l!2965))))))

(assert (= (and d!340172 (not res!537719)) b!1190313))

(assert (= (and b!1190313 res!537720) b!1190314))

(assert (= (and b!1190314 res!537718) b!1190315))

(assert (= (and b!1190314 (not res!537717)) b!1190316))

(assert (=> b!1190316 m!1365343))

(declare-fun m!1365389 () Bool)

(assert (=> b!1190316 m!1365389))

(declare-fun m!1365391 () Bool)

(assert (=> b!1190315 m!1365391))

(assert (=> b!1190222 d!340172))

(declare-fun b!1190320 () Bool)

(declare-fun e!765271 () Bool)

(declare-fun lt!409172 () List!12014)

(declare-fun e!765270 () Int)

(assert (=> b!1190320 (= e!765271 (= (size!9451 lt!409172) e!765270))))

(declare-fun c!197581 () Bool)

(assert (=> b!1190320 (= c!197581 (<= i!770 0))))

(declare-fun b!1190321 () Bool)

(declare-fun e!765269 () List!12014)

(declare-fun e!765272 () List!12014)

(assert (=> b!1190321 (= e!765269 e!765272)))

(declare-fun c!197583 () Bool)

(assert (=> b!1190321 (= c!197583 (<= i!770 0))))

(declare-fun b!1190322 () Bool)

(assert (=> b!1190322 (= e!765272 l!2965)))

(declare-fun b!1190323 () Bool)

(assert (=> b!1190323 (= e!765272 (drop!571 (t!112220 l!2965) (- i!770 1)))))

(declare-fun b!1190324 () Bool)

(declare-fun call!82682 () Int)

(assert (=> b!1190324 (= e!765270 call!82682)))

(declare-fun b!1190325 () Bool)

(assert (=> b!1190325 (= e!765269 Nil!11990)))

(declare-fun d!340178 () Bool)

(assert (=> d!340178 e!765271))

(declare-fun res!537721 () Bool)

(assert (=> d!340178 (=> (not res!537721) (not e!765271))))

(assert (=> d!340178 (= res!537721 (= ((_ map implies) (content!1658 lt!409172) (content!1658 l!2965)) ((as const (InoxSet B!1289)) true)))))

(assert (=> d!340178 (= lt!409172 e!765269)))

(declare-fun c!197584 () Bool)

(assert (=> d!340178 (= c!197584 ((_ is Nil!11990) l!2965))))

(assert (=> d!340178 (= (drop!571 l!2965 i!770) lt!409172)))

(declare-fun b!1190326 () Bool)

(declare-fun e!765268 () Int)

(assert (=> b!1190326 (= e!765270 e!765268)))

(declare-fun c!197582 () Bool)

(assert (=> b!1190326 (= c!197582 (>= i!770 call!82682))))

(declare-fun b!1190327 () Bool)

(assert (=> b!1190327 (= e!765268 0)))

(declare-fun bm!82677 () Bool)

(assert (=> bm!82677 (= call!82682 (size!9451 l!2965))))

(declare-fun b!1190328 () Bool)

(assert (=> b!1190328 (= e!765268 (- call!82682 i!770))))

(assert (= (and d!340178 c!197584) b!1190325))

(assert (= (and d!340178 (not c!197584)) b!1190321))

(assert (= (and b!1190321 c!197583) b!1190322))

(assert (= (and b!1190321 (not c!197583)) b!1190323))

(assert (= (and d!340178 res!537721) b!1190320))

(assert (= (and b!1190320 c!197581) b!1190324))

(assert (= (and b!1190320 (not c!197581)) b!1190326))

(assert (= (and b!1190326 c!197582) b!1190327))

(assert (= (and b!1190326 (not c!197582)) b!1190328))

(assert (= (or b!1190324 b!1190326 b!1190328) bm!82677))

(declare-fun m!1365393 () Bool)

(assert (=> b!1190320 m!1365393))

(assert (=> b!1190323 m!1365343))

(declare-fun m!1365395 () Bool)

(assert (=> d!340178 m!1365395))

(declare-fun m!1365397 () Bool)

(assert (=> d!340178 m!1365397))

(declare-fun m!1365399 () Bool)

(assert (=> bm!82677 m!1365399))

(assert (=> b!1190222 d!340178))

(declare-fun b!1190332 () Bool)

(declare-fun e!765276 () Bool)

(assert (=> b!1190332 (= e!765276 (subseq!347 (drop!571 l!2965 i!770) (t!112220 l!2965)))))

(declare-fun b!1190330 () Bool)

(declare-fun e!765273 () Bool)

(assert (=> b!1190330 (= e!765273 e!765276)))

(declare-fun res!537722 () Bool)

(assert (=> b!1190330 (=> res!537722 e!765276)))

(declare-fun e!765274 () Bool)

(assert (=> b!1190330 (= res!537722 e!765274)))

(declare-fun res!537723 () Bool)

(assert (=> b!1190330 (=> (not res!537723) (not e!765274))))

(assert (=> b!1190330 (= res!537723 (= (h!17391 (drop!571 l!2965 i!770)) (h!17391 l!2965)))))

(declare-fun b!1190329 () Bool)

(declare-fun e!765275 () Bool)

(assert (=> b!1190329 (= e!765275 e!765273)))

(declare-fun res!537725 () Bool)

(assert (=> b!1190329 (=> (not res!537725) (not e!765273))))

(assert (=> b!1190329 (= res!537725 ((_ is Cons!11990) l!2965))))

(declare-fun d!340180 () Bool)

(declare-fun res!537724 () Bool)

(assert (=> d!340180 (=> res!537724 e!765275)))

(assert (=> d!340180 (= res!537724 ((_ is Nil!11990) (drop!571 l!2965 i!770)))))

(assert (=> d!340180 (= (subseq!347 (drop!571 l!2965 i!770) l!2965) e!765275)))

(declare-fun b!1190331 () Bool)

(assert (=> b!1190331 (= e!765274 (subseq!347 (t!112220 (drop!571 l!2965 i!770)) (t!112220 l!2965)))))

(assert (= (and d!340180 (not res!537724)) b!1190329))

(assert (= (and b!1190329 res!537725) b!1190330))

(assert (= (and b!1190330 res!537723) b!1190331))

(assert (= (and b!1190330 (not res!537722)) b!1190332))

(assert (=> b!1190332 m!1365339))

(declare-fun m!1365401 () Bool)

(assert (=> b!1190332 m!1365401))

(declare-fun m!1365403 () Bool)

(assert (=> b!1190331 m!1365403))

(assert (=> b!1190222 d!340180))

(declare-fun b!1190337 () Bool)

(declare-fun e!765279 () Bool)

(declare-fun tp!339694 () Bool)

(assert (=> b!1190337 (= e!765279 (and tp_is_empty!5879 tp!339694))))

(assert (=> b!1190223 (= tp!339688 e!765279)))

(assert (= (and b!1190223 ((_ is Cons!11990) (t!112220 l!2965))) b!1190337))

(check-sat (not b!1190332) (not b!1190315) (not d!340168) (not d!340178) (not b!1190331) (not b!1190337) (not b!1190316) (not d!340164) (not b!1190269) (not b!1190320) (not bm!82675) (not b!1190323) (not bm!82677) (not b!1190272) tp_is_empty!5879)
(check-sat)
