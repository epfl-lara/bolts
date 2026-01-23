; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105908 () Bool)

(assert start!105908)

(declare-fun b!1191335 () Bool)

(declare-fun e!765817 () Bool)

(declare-datatypes ((T!21502 0))(
  ( (T!21503 (val!3848 Int)) )
))
(declare-datatypes ((List!12027 0))(
  ( (Nil!12003) (Cons!12003 (h!17404 T!21502) (t!112255 List!12027)) )
))
(declare-datatypes ((IArray!7877 0))(
  ( (IArray!7878 (innerList!3996 List!12027)) )
))
(declare-datatypes ((Conc!3936 0))(
  ( (Node!3936 (left!10452 Conc!3936) (right!10782 Conc!3936) (csize!8102 Int) (cheight!4147 Int)) (Leaf!6029 (xs!6641 IArray!7877) (csize!8103 Int)) (Empty!3936) )
))
(declare-fun t!4115 () Conc!3936)

(declare-fun isBalanced!1121 (Conc!3936) Bool)

(assert (=> b!1191335 (= e!765817 (isBalanced!1121 (right!10782 t!4115)))))

(declare-fun e!765820 () Bool)

(declare-fun tp!339960 () Bool)

(declare-fun b!1191336 () Bool)

(declare-fun tp!339959 () Bool)

(declare-fun inv!15903 (Conc!3936) Bool)

(assert (=> b!1191336 (= e!765820 (and (inv!15903 (left!10452 t!4115)) tp!339959 (inv!15903 (right!10782 t!4115)) tp!339960))))

(declare-fun from!553 () Int)

(declare-fun lt!409311 () Int)

(declare-fun e!765822 () List!12027)

(declare-fun lt!409314 () List!12027)

(declare-fun b!1191337 () Bool)

(declare-fun call!82693 () List!12027)

(declare-fun ++!3036 (List!12027 List!12027) List!12027)

(declare-fun slice!413 (List!12027 Int Int) List!12027)

(assert (=> b!1191337 (= e!765822 (++!3036 (slice!413 lt!409314 from!553 lt!409311) call!82693))))

(declare-fun b!1191338 () Bool)

(declare-fun e!765816 () Bool)

(assert (=> b!1191338 (= e!765816 e!765817)))

(declare-fun res!538191 () Bool)

(assert (=> b!1191338 (=> (not res!538191) (not e!765817))))

(declare-fun lt!409313 () Int)

(declare-fun lt!409316 () Int)

(assert (=> b!1191338 (= res!538191 (and (<= 0 lt!409313) (<= lt!409313 lt!409316)))))

(declare-fun until!31 () Int)

(declare-fun lt!409312 () Int)

(assert (=> b!1191338 (= lt!409316 (- until!31 lt!409312))))

(assert (=> b!1191338 (= lt!409313 (- from!553 lt!409312))))

(declare-fun call!82694 () List!12027)

(declare-fun c!197691 () Bool)

(declare-fun c!197692 () Bool)

(declare-fun lt!409310 () List!12027)

(declare-fun bm!82688 () Bool)

(assert (=> bm!82688 (= call!82694 (slice!413 (ite c!197692 lt!409310 (ite c!197691 lt!409314 lt!409310)) (ite c!197692 (- from!553 lt!409311) (ite c!197691 from!553 0)) (ite c!197692 (- until!31 lt!409311) (ite c!197691 until!31 (- until!31 lt!409311)))))))

(declare-fun bm!82689 () Bool)

(assert (=> bm!82689 (= call!82693 call!82694)))

(declare-fun b!1191340 () Bool)

(declare-fun res!538194 () Bool)

(declare-fun e!765818 () Bool)

(assert (=> b!1191340 (=> (not res!538194) (not e!765818))))

(declare-fun size!9490 (Conc!3936) Int)

(assert (=> b!1191340 (= res!538194 (<= until!31 (size!9490 t!4115)))))

(declare-fun b!1191341 () Bool)

(assert (=> b!1191341 (= e!765822 call!82693)))

(declare-fun b!1191342 () Bool)

(declare-fun res!538192 () Bool)

(assert (=> b!1191342 (=> (not res!538192) (not e!765818))))

(get-info :version)

(assert (=> b!1191342 (= res!538192 (and (not (= from!553 until!31)) (not ((_ is Leaf!6029) t!4115)) ((_ is Node!3936) t!4115)))))

(declare-fun b!1191343 () Bool)

(declare-fun e!765821 () Bool)

(declare-fun tp!339961 () Bool)

(assert (=> b!1191343 (= e!765821 tp!339961)))

(declare-fun b!1191344 () Bool)

(declare-fun e!765819 () Bool)

(declare-fun lt!409309 () List!12027)

(assert (=> b!1191344 (= e!765819 (= lt!409309 e!765822))))

(assert (=> b!1191344 (= c!197691 (<= until!31 lt!409311))))

(declare-fun b!1191345 () Bool)

(declare-fun res!538190 () Bool)

(assert (=> b!1191345 (=> (not res!538190) (not e!765817))))

(assert (=> b!1191345 (= res!538190 (<= lt!409316 (size!9490 (right!10782 t!4115))))))

(declare-fun b!1191346 () Bool)

(assert (=> b!1191346 (= e!765819 (= lt!409309 call!82694))))

(declare-fun b!1191339 () Bool)

(declare-fun inv!15904 (IArray!7877) Bool)

(assert (=> b!1191339 (= e!765820 (and (inv!15904 (xs!6641 t!4115)) e!765821))))

(declare-fun res!538193 () Bool)

(assert (=> start!105908 (=> (not res!538193) (not e!765818))))

(assert (=> start!105908 (= res!538193 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!105908 e!765818))

(assert (=> start!105908 true))

(assert (=> start!105908 (and (inv!15903 t!4115) e!765820)))

(declare-fun b!1191347 () Bool)

(declare-fun res!538189 () Bool)

(assert (=> b!1191347 (=> (not res!538189) (not e!765818))))

(assert (=> b!1191347 (= res!538189 (isBalanced!1121 t!4115))))

(declare-fun b!1191348 () Bool)

(assert (=> b!1191348 (= e!765818 (not e!765816))))

(declare-fun res!538188 () Bool)

(assert (=> b!1191348 (=> res!538188 e!765816)))

(assert (=> b!1191348 (= res!538188 (> lt!409312 from!553))))

(assert (=> b!1191348 (= lt!409312 (size!9490 (left!10452 t!4115)))))

(assert (=> b!1191348 e!765819))

(assert (=> b!1191348 (= c!197692 (<= lt!409311 from!553))))

(assert (=> b!1191348 (= lt!409309 (slice!413 (++!3036 lt!409314 lt!409310) from!553 until!31))))

(declare-fun size!9491 (List!12027) Int)

(assert (=> b!1191348 (= lt!409311 (size!9491 lt!409314))))

(declare-datatypes ((Unit!18412 0))(
  ( (Unit!18413) )
))
(declare-fun lt!409315 () Unit!18412)

(declare-fun sliceLemma!17 (List!12027 List!12027 Int Int) Unit!18412)

(assert (=> b!1191348 (= lt!409315 (sliceLemma!17 lt!409314 lt!409310 from!553 until!31))))

(declare-fun list!4415 (Conc!3936) List!12027)

(assert (=> b!1191348 (= lt!409310 (list!4415 (right!10782 t!4115)))))

(assert (=> b!1191348 (= lt!409314 (list!4415 (left!10452 t!4115)))))

(assert (= (and start!105908 res!538193) b!1191340))

(assert (= (and b!1191340 res!538194) b!1191347))

(assert (= (and b!1191347 res!538189) b!1191342))

(assert (= (and b!1191342 res!538192) b!1191348))

(assert (= (and b!1191348 c!197692) b!1191346))

(assert (= (and b!1191348 (not c!197692)) b!1191344))

(assert (= (and b!1191344 c!197691) b!1191341))

(assert (= (and b!1191344 (not c!197691)) b!1191337))

(assert (= (or b!1191341 b!1191337) bm!82689))

(assert (= (or b!1191346 bm!82689) bm!82688))

(assert (= (and b!1191348 (not res!538188)) b!1191338))

(assert (= (and b!1191338 res!538191) b!1191345))

(assert (= (and b!1191345 res!538190) b!1191335))

(assert (= (and start!105908 ((_ is Node!3936) t!4115)) b!1191336))

(assert (= b!1191339 b!1191343))

(assert (= (and start!105908 ((_ is Leaf!6029) t!4115)) b!1191339))

(declare-fun m!1366255 () Bool)

(assert (=> bm!82688 m!1366255))

(declare-fun m!1366257 () Bool)

(assert (=> b!1191337 m!1366257))

(assert (=> b!1191337 m!1366257))

(declare-fun m!1366259 () Bool)

(assert (=> b!1191337 m!1366259))

(declare-fun m!1366261 () Bool)

(assert (=> b!1191348 m!1366261))

(declare-fun m!1366263 () Bool)

(assert (=> b!1191348 m!1366263))

(declare-fun m!1366265 () Bool)

(assert (=> b!1191348 m!1366265))

(declare-fun m!1366267 () Bool)

(assert (=> b!1191348 m!1366267))

(declare-fun m!1366269 () Bool)

(assert (=> b!1191348 m!1366269))

(declare-fun m!1366271 () Bool)

(assert (=> b!1191348 m!1366271))

(assert (=> b!1191348 m!1366263))

(declare-fun m!1366273 () Bool)

(assert (=> b!1191348 m!1366273))

(declare-fun m!1366275 () Bool)

(assert (=> b!1191336 m!1366275))

(declare-fun m!1366277 () Bool)

(assert (=> b!1191336 m!1366277))

(declare-fun m!1366279 () Bool)

(assert (=> b!1191335 m!1366279))

(declare-fun m!1366281 () Bool)

(assert (=> b!1191340 m!1366281))

(declare-fun m!1366283 () Bool)

(assert (=> b!1191339 m!1366283))

(declare-fun m!1366285 () Bool)

(assert (=> b!1191347 m!1366285))

(declare-fun m!1366287 () Bool)

(assert (=> start!105908 m!1366287))

(declare-fun m!1366289 () Bool)

(assert (=> b!1191345 m!1366289))

(check-sat (not start!105908) (not b!1191336) (not b!1191345) (not bm!82688) (not b!1191348) (not b!1191340) (not b!1191337) (not b!1191343) (not b!1191347) (not b!1191335) (not b!1191339))
(check-sat)
(get-model)

(declare-fun d!340399 () Bool)

(declare-fun lt!409319 () Int)

(assert (=> d!340399 (= lt!409319 (size!9491 (list!4415 t!4115)))))

(assert (=> d!340399 (= lt!409319 (ite ((_ is Empty!3936) t!4115) 0 (ite ((_ is Leaf!6029) t!4115) (csize!8103 t!4115) (csize!8102 t!4115))))))

(assert (=> d!340399 (= (size!9490 t!4115) lt!409319)))

(declare-fun bs!287895 () Bool)

(assert (= bs!287895 d!340399))

(declare-fun m!1366291 () Bool)

(assert (=> bs!287895 m!1366291))

(assert (=> bs!287895 m!1366291))

(declare-fun m!1366293 () Bool)

(assert (=> bs!287895 m!1366293))

(assert (=> b!1191340 d!340399))

(declare-fun d!340401 () Bool)

(declare-fun lt!409320 () Int)

(assert (=> d!340401 (= lt!409320 (size!9491 (list!4415 (right!10782 t!4115))))))

(assert (=> d!340401 (= lt!409320 (ite ((_ is Empty!3936) (right!10782 t!4115)) 0 (ite ((_ is Leaf!6029) (right!10782 t!4115)) (csize!8103 (right!10782 t!4115)) (csize!8102 (right!10782 t!4115)))))))

(assert (=> d!340401 (= (size!9490 (right!10782 t!4115)) lt!409320)))

(declare-fun bs!287896 () Bool)

(assert (= bs!287896 d!340401))

(assert (=> bs!287896 m!1366267))

(assert (=> bs!287896 m!1366267))

(declare-fun m!1366295 () Bool)

(assert (=> bs!287896 m!1366295))

(assert (=> b!1191345 d!340401))

(declare-fun d!340403 () Bool)

(declare-fun e!765827 () Bool)

(assert (=> d!340403 e!765827))

(declare-fun res!538200 () Bool)

(assert (=> d!340403 (=> (not res!538200) (not e!765827))))

(declare-fun lt!409323 () List!12027)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1659 (List!12027) (InoxSet T!21502))

(assert (=> d!340403 (= res!538200 (= (content!1659 lt!409323) ((_ map or) (content!1659 (slice!413 lt!409314 from!553 lt!409311)) (content!1659 call!82693))))))

(declare-fun e!765828 () List!12027)

(assert (=> d!340403 (= lt!409323 e!765828)))

(declare-fun c!197695 () Bool)

(assert (=> d!340403 (= c!197695 ((_ is Nil!12003) (slice!413 lt!409314 from!553 lt!409311)))))

(assert (=> d!340403 (= (++!3036 (slice!413 lt!409314 from!553 lt!409311) call!82693) lt!409323)))

(declare-fun b!1191360 () Bool)

(assert (=> b!1191360 (= e!765827 (or (not (= call!82693 Nil!12003)) (= lt!409323 (slice!413 lt!409314 from!553 lt!409311))))))

(declare-fun b!1191357 () Bool)

(assert (=> b!1191357 (= e!765828 call!82693)))

(declare-fun b!1191359 () Bool)

(declare-fun res!538199 () Bool)

(assert (=> b!1191359 (=> (not res!538199) (not e!765827))))

(assert (=> b!1191359 (= res!538199 (= (size!9491 lt!409323) (+ (size!9491 (slice!413 lt!409314 from!553 lt!409311)) (size!9491 call!82693))))))

(declare-fun b!1191358 () Bool)

(assert (=> b!1191358 (= e!765828 (Cons!12003 (h!17404 (slice!413 lt!409314 from!553 lt!409311)) (++!3036 (t!112255 (slice!413 lt!409314 from!553 lt!409311)) call!82693)))))

(assert (= (and d!340403 c!197695) b!1191357))

(assert (= (and d!340403 (not c!197695)) b!1191358))

(assert (= (and d!340403 res!538200) b!1191359))

(assert (= (and b!1191359 res!538199) b!1191360))

(declare-fun m!1366297 () Bool)

(assert (=> d!340403 m!1366297))

(assert (=> d!340403 m!1366257))

(declare-fun m!1366299 () Bool)

(assert (=> d!340403 m!1366299))

(declare-fun m!1366301 () Bool)

(assert (=> d!340403 m!1366301))

(declare-fun m!1366303 () Bool)

(assert (=> b!1191359 m!1366303))

(assert (=> b!1191359 m!1366257))

(declare-fun m!1366305 () Bool)

(assert (=> b!1191359 m!1366305))

(declare-fun m!1366307 () Bool)

(assert (=> b!1191359 m!1366307))

(declare-fun m!1366309 () Bool)

(assert (=> b!1191358 m!1366309))

(assert (=> b!1191337 d!340403))

(declare-fun d!340407 () Bool)

(declare-fun take!101 (List!12027 Int) List!12027)

(declare-fun drop!573 (List!12027 Int) List!12027)

(assert (=> d!340407 (= (slice!413 lt!409314 from!553 lt!409311) (take!101 (drop!573 lt!409314 from!553) (- lt!409311 from!553)))))

(declare-fun bs!287897 () Bool)

(assert (= bs!287897 d!340407))

(declare-fun m!1366311 () Bool)

(assert (=> bs!287897 m!1366311))

(assert (=> bs!287897 m!1366311))

(declare-fun m!1366313 () Bool)

(assert (=> bs!287897 m!1366313))

(assert (=> b!1191337 d!340407))

(declare-fun d!340409 () Bool)

(declare-fun c!197698 () Bool)

(assert (=> d!340409 (= c!197698 ((_ is Node!3936) t!4115))))

(declare-fun e!765839 () Bool)

(assert (=> d!340409 (= (inv!15903 t!4115) e!765839)))

(declare-fun b!1191385 () Bool)

(declare-fun inv!15905 (Conc!3936) Bool)

(assert (=> b!1191385 (= e!765839 (inv!15905 t!4115))))

(declare-fun b!1191386 () Bool)

(declare-fun e!765840 () Bool)

(assert (=> b!1191386 (= e!765839 e!765840)))

(declare-fun res!538221 () Bool)

(assert (=> b!1191386 (= res!538221 (not ((_ is Leaf!6029) t!4115)))))

(assert (=> b!1191386 (=> res!538221 e!765840)))

(declare-fun b!1191387 () Bool)

(declare-fun inv!15906 (Conc!3936) Bool)

(assert (=> b!1191387 (= e!765840 (inv!15906 t!4115))))

(assert (= (and d!340409 c!197698) b!1191385))

(assert (= (and d!340409 (not c!197698)) b!1191386))

(assert (= (and b!1191386 (not res!538221)) b!1191387))

(declare-fun m!1366325 () Bool)

(assert (=> b!1191385 m!1366325))

(declare-fun m!1366327 () Bool)

(assert (=> b!1191387 m!1366327))

(assert (=> start!105908 d!340409))

(declare-fun b!1191408 () Bool)

(declare-fun e!765849 () Bool)

(declare-fun e!765850 () Bool)

(assert (=> b!1191408 (= e!765849 e!765850)))

(declare-fun res!538238 () Bool)

(assert (=> b!1191408 (=> (not res!538238) (not e!765850))))

(declare-fun height!534 (Conc!3936) Int)

(assert (=> b!1191408 (= res!538238 (<= (- 1) (- (height!534 (left!10452 t!4115)) (height!534 (right!10782 t!4115)))))))

(declare-fun b!1191409 () Bool)

(declare-fun res!538239 () Bool)

(assert (=> b!1191409 (=> (not res!538239) (not e!765850))))

(assert (=> b!1191409 (= res!538239 (<= (- (height!534 (left!10452 t!4115)) (height!534 (right!10782 t!4115))) 1))))

(declare-fun b!1191410 () Bool)

(declare-fun res!538240 () Bool)

(assert (=> b!1191410 (=> (not res!538240) (not e!765850))))

(declare-fun isEmpty!7215 (Conc!3936) Bool)

(assert (=> b!1191410 (= res!538240 (not (isEmpty!7215 (left!10452 t!4115))))))

(declare-fun b!1191411 () Bool)

(declare-fun res!538241 () Bool)

(assert (=> b!1191411 (=> (not res!538241) (not e!765850))))

(assert (=> b!1191411 (= res!538241 (isBalanced!1121 (right!10782 t!4115)))))

(declare-fun b!1191412 () Bool)

(assert (=> b!1191412 (= e!765850 (not (isEmpty!7215 (right!10782 t!4115))))))

(declare-fun b!1191413 () Bool)

(declare-fun res!538242 () Bool)

(assert (=> b!1191413 (=> (not res!538242) (not e!765850))))

(assert (=> b!1191413 (= res!538242 (isBalanced!1121 (left!10452 t!4115)))))

(declare-fun d!340413 () Bool)

(declare-fun res!538243 () Bool)

(assert (=> d!340413 (=> res!538243 e!765849)))

(assert (=> d!340413 (= res!538243 (not ((_ is Node!3936) t!4115)))))

(assert (=> d!340413 (= (isBalanced!1121 t!4115) e!765849)))

(assert (= (and d!340413 (not res!538243)) b!1191408))

(assert (= (and b!1191408 res!538238) b!1191409))

(assert (= (and b!1191409 res!538239) b!1191413))

(assert (= (and b!1191413 res!538242) b!1191411))

(assert (= (and b!1191411 res!538241) b!1191410))

(assert (= (and b!1191410 res!538240) b!1191412))

(declare-fun m!1366333 () Bool)

(assert (=> b!1191410 m!1366333))

(assert (=> b!1191411 m!1366279))

(declare-fun m!1366335 () Bool)

(assert (=> b!1191413 m!1366335))

(declare-fun m!1366337 () Bool)

(assert (=> b!1191409 m!1366337))

(declare-fun m!1366339 () Bool)

(assert (=> b!1191409 m!1366339))

(declare-fun m!1366341 () Bool)

(assert (=> b!1191412 m!1366341))

(assert (=> b!1191408 m!1366337))

(assert (=> b!1191408 m!1366339))

(assert (=> b!1191347 d!340413))

(declare-fun d!340417 () Bool)

(declare-fun e!765853 () Bool)

(assert (=> d!340417 e!765853))

(declare-fun res!538247 () Bool)

(assert (=> d!340417 (=> (not res!538247) (not e!765853))))

(declare-fun lt!409327 () List!12027)

(assert (=> d!340417 (= res!538247 (= (content!1659 lt!409327) ((_ map or) (content!1659 lt!409314) (content!1659 lt!409310))))))

(declare-fun e!765854 () List!12027)

(assert (=> d!340417 (= lt!409327 e!765854)))

(declare-fun c!197702 () Bool)

(assert (=> d!340417 (= c!197702 ((_ is Nil!12003) lt!409314))))

(assert (=> d!340417 (= (++!3036 lt!409314 lt!409310) lt!409327)))

(declare-fun b!1191421 () Bool)

(assert (=> b!1191421 (= e!765853 (or (not (= lt!409310 Nil!12003)) (= lt!409327 lt!409314)))))

(declare-fun b!1191418 () Bool)

(assert (=> b!1191418 (= e!765854 lt!409310)))

(declare-fun b!1191420 () Bool)

(declare-fun res!538246 () Bool)

(assert (=> b!1191420 (=> (not res!538246) (not e!765853))))

(assert (=> b!1191420 (= res!538246 (= (size!9491 lt!409327) (+ (size!9491 lt!409314) (size!9491 lt!409310))))))

(declare-fun b!1191419 () Bool)

(assert (=> b!1191419 (= e!765854 (Cons!12003 (h!17404 lt!409314) (++!3036 (t!112255 lt!409314) lt!409310)))))

(assert (= (and d!340417 c!197702) b!1191418))

(assert (= (and d!340417 (not c!197702)) b!1191419))

(assert (= (and d!340417 res!538247) b!1191420))

(assert (= (and b!1191420 res!538246) b!1191421))

(declare-fun m!1366343 () Bool)

(assert (=> d!340417 m!1366343))

(declare-fun m!1366347 () Bool)

(assert (=> d!340417 m!1366347))

(declare-fun m!1366351 () Bool)

(assert (=> d!340417 m!1366351))

(declare-fun m!1366355 () Bool)

(assert (=> b!1191420 m!1366355))

(assert (=> b!1191420 m!1366265))

(declare-fun m!1366361 () Bool)

(assert (=> b!1191420 m!1366361))

(declare-fun m!1366365 () Bool)

(assert (=> b!1191419 m!1366365))

(assert (=> b!1191348 d!340417))

(declare-fun d!340419 () Bool)

(declare-fun lt!409328 () Int)

(assert (=> d!340419 (= lt!409328 (size!9491 (list!4415 (left!10452 t!4115))))))

(assert (=> d!340419 (= lt!409328 (ite ((_ is Empty!3936) (left!10452 t!4115)) 0 (ite ((_ is Leaf!6029) (left!10452 t!4115)) (csize!8103 (left!10452 t!4115)) (csize!8102 (left!10452 t!4115)))))))

(assert (=> d!340419 (= (size!9490 (left!10452 t!4115)) lt!409328)))

(declare-fun bs!287899 () Bool)

(assert (= bs!287899 d!340419))

(assert (=> bs!287899 m!1366261))

(assert (=> bs!287899 m!1366261))

(declare-fun m!1366369 () Bool)

(assert (=> bs!287899 m!1366369))

(assert (=> b!1191348 d!340419))

(declare-fun d!340423 () Bool)

(declare-fun lt!409334 () Int)

(assert (=> d!340423 (>= lt!409334 0)))

(declare-fun e!765857 () Int)

(assert (=> d!340423 (= lt!409334 e!765857)))

(declare-fun c!197705 () Bool)

(assert (=> d!340423 (= c!197705 ((_ is Nil!12003) lt!409314))))

(assert (=> d!340423 (= (size!9491 lt!409314) lt!409334)))

(declare-fun b!1191426 () Bool)

(assert (=> b!1191426 (= e!765857 0)))

(declare-fun b!1191427 () Bool)

(assert (=> b!1191427 (= e!765857 (+ 1 (size!9491 (t!112255 lt!409314))))))

(assert (= (and d!340423 c!197705) b!1191426))

(assert (= (and d!340423 (not c!197705)) b!1191427))

(declare-fun m!1366375 () Bool)

(assert (=> b!1191427 m!1366375))

(assert (=> b!1191348 d!340423))

(declare-fun call!82703 () Int)

(declare-fun call!82701 () List!12027)

(declare-fun b!1191468 () Bool)

(declare-fun e!765881 () List!12027)

(assert (=> b!1191468 (= e!765881 (++!3036 call!82701 (slice!413 lt!409310 0 (- until!31 call!82703))))))

(declare-fun b!1191469 () Bool)

(declare-fun e!765879 () List!12027)

(declare-fun call!82702 () List!12027)

(assert (=> b!1191469 (= e!765879 call!82702)))

(declare-fun b!1191470 () Bool)

(declare-fun e!765880 () Int)

(assert (=> b!1191470 (= e!765880 until!31)))

(declare-fun bm!82697 () Bool)

(assert (=> bm!82697 (= call!82703 (size!9491 lt!409314))))

(declare-fun b!1191471 () Bool)

(assert (=> b!1191471 (= e!765881 call!82701)))

(declare-fun e!765882 () Bool)

(declare-fun b!1191472 () Bool)

(assert (=> b!1191472 (= e!765882 (<= until!31 (+ (size!9491 lt!409314) (size!9491 lt!409310))))))

(declare-fun bm!82698 () Bool)

(declare-fun c!197726 () Bool)

(assert (=> bm!82698 (= call!82702 (slice!413 (ite c!197726 lt!409310 lt!409314) (ite c!197726 (- from!553 call!82703) from!553) (ite c!197726 (- until!31 call!82703) e!765880)))))

(declare-fun b!1191473 () Bool)

(assert (=> b!1191473 (= e!765879 e!765881)))

(declare-fun c!197724 () Bool)

(assert (=> b!1191473 (= c!197724 (<= until!31 call!82703))))

(declare-fun b!1191474 () Bool)

(assert (=> b!1191474 (= e!765880 call!82703)))

(declare-fun d!340427 () Bool)

(assert (=> d!340427 (= (slice!413 (++!3036 lt!409314 lt!409310) from!553 until!31) e!765879)))

(assert (=> d!340427 (= c!197726 (<= (size!9491 lt!409314) from!553))))

(declare-fun lt!409341 () Unit!18412)

(declare-fun choose!7701 (List!12027 List!12027 Int Int) Unit!18412)

(assert (=> d!340427 (= lt!409341 (choose!7701 lt!409314 lt!409310 from!553 until!31))))

(assert (=> d!340427 e!765882))

(declare-fun res!538252 () Bool)

(assert (=> d!340427 (=> (not res!538252) (not e!765882))))

(assert (=> d!340427 (= res!538252 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!340427 (= (sliceLemma!17 lt!409314 lt!409310 from!553 until!31) lt!409341)))

(declare-fun bm!82696 () Bool)

(declare-fun c!197725 () Bool)

(assert (=> bm!82696 (= c!197725 c!197724)))

(assert (=> bm!82696 (= call!82701 call!82702)))

(assert (= (and d!340427 res!538252) b!1191472))

(assert (= (and d!340427 c!197726) b!1191469))

(assert (= (and d!340427 (not c!197726)) b!1191473))

(assert (= (and b!1191473 c!197724) b!1191471))

(assert (= (and b!1191473 (not c!197724)) b!1191468))

(assert (= (or b!1191471 b!1191468) bm!82696))

(assert (= (and bm!82696 c!197725) b!1191470))

(assert (= (and bm!82696 (not c!197725)) b!1191474))

(assert (= (or b!1191469 b!1191468 b!1191473 b!1191474) bm!82697))

(assert (= (or b!1191469 bm!82696) bm!82698))

(declare-fun m!1366409 () Bool)

(assert (=> bm!82698 m!1366409))

(declare-fun m!1366411 () Bool)

(assert (=> b!1191468 m!1366411))

(assert (=> b!1191468 m!1366411))

(declare-fun m!1366413 () Bool)

(assert (=> b!1191468 m!1366413))

(assert (=> bm!82697 m!1366265))

(assert (=> b!1191472 m!1366265))

(assert (=> b!1191472 m!1366361))

(assert (=> d!340427 m!1366263))

(assert (=> d!340427 m!1366263))

(assert (=> d!340427 m!1366273))

(assert (=> d!340427 m!1366265))

(declare-fun m!1366415 () Bool)

(assert (=> d!340427 m!1366415))

(assert (=> b!1191348 d!340427))

(declare-fun d!340439 () Bool)

(declare-fun c!197737 () Bool)

(assert (=> d!340439 (= c!197737 ((_ is Empty!3936) (left!10452 t!4115)))))

(declare-fun e!765895 () List!12027)

(assert (=> d!340439 (= (list!4415 (left!10452 t!4115)) e!765895)))

(declare-fun b!1191500 () Bool)

(declare-fun e!765896 () List!12027)

(assert (=> b!1191500 (= e!765896 (++!3036 (list!4415 (left!10452 (left!10452 t!4115))) (list!4415 (right!10782 (left!10452 t!4115)))))))

(declare-fun b!1191497 () Bool)

(assert (=> b!1191497 (= e!765895 Nil!12003)))

(declare-fun b!1191498 () Bool)

(assert (=> b!1191498 (= e!765895 e!765896)))

(declare-fun c!197738 () Bool)

(assert (=> b!1191498 (= c!197738 ((_ is Leaf!6029) (left!10452 t!4115)))))

(declare-fun b!1191499 () Bool)

(declare-fun list!4417 (IArray!7877) List!12027)

(assert (=> b!1191499 (= e!765896 (list!4417 (xs!6641 (left!10452 t!4115))))))

(assert (= (and d!340439 c!197737) b!1191497))

(assert (= (and d!340439 (not c!197737)) b!1191498))

(assert (= (and b!1191498 c!197738) b!1191499))

(assert (= (and b!1191498 (not c!197738)) b!1191500))

(declare-fun m!1366417 () Bool)

(assert (=> b!1191500 m!1366417))

(declare-fun m!1366419 () Bool)

(assert (=> b!1191500 m!1366419))

(assert (=> b!1191500 m!1366417))

(assert (=> b!1191500 m!1366419))

(declare-fun m!1366421 () Bool)

(assert (=> b!1191500 m!1366421))

(declare-fun m!1366423 () Bool)

(assert (=> b!1191499 m!1366423))

(assert (=> b!1191348 d!340439))

(declare-fun d!340441 () Bool)

(declare-fun c!197739 () Bool)

(assert (=> d!340441 (= c!197739 ((_ is Empty!3936) (right!10782 t!4115)))))

(declare-fun e!765897 () List!12027)

(assert (=> d!340441 (= (list!4415 (right!10782 t!4115)) e!765897)))

(declare-fun b!1191504 () Bool)

(declare-fun e!765898 () List!12027)

(assert (=> b!1191504 (= e!765898 (++!3036 (list!4415 (left!10452 (right!10782 t!4115))) (list!4415 (right!10782 (right!10782 t!4115)))))))

(declare-fun b!1191501 () Bool)

(assert (=> b!1191501 (= e!765897 Nil!12003)))

(declare-fun b!1191502 () Bool)

(assert (=> b!1191502 (= e!765897 e!765898)))

(declare-fun c!197740 () Bool)

(assert (=> b!1191502 (= c!197740 ((_ is Leaf!6029) (right!10782 t!4115)))))

(declare-fun b!1191503 () Bool)

(assert (=> b!1191503 (= e!765898 (list!4417 (xs!6641 (right!10782 t!4115))))))

(assert (= (and d!340441 c!197739) b!1191501))

(assert (= (and d!340441 (not c!197739)) b!1191502))

(assert (= (and b!1191502 c!197740) b!1191503))

(assert (= (and b!1191502 (not c!197740)) b!1191504))

(declare-fun m!1366425 () Bool)

(assert (=> b!1191504 m!1366425))

(declare-fun m!1366427 () Bool)

(assert (=> b!1191504 m!1366427))

(assert (=> b!1191504 m!1366425))

(assert (=> b!1191504 m!1366427))

(declare-fun m!1366429 () Bool)

(assert (=> b!1191504 m!1366429))

(declare-fun m!1366431 () Bool)

(assert (=> b!1191503 m!1366431))

(assert (=> b!1191348 d!340441))

(declare-fun d!340443 () Bool)

(assert (=> d!340443 (= (slice!413 (++!3036 lt!409314 lt!409310) from!553 until!31) (take!101 (drop!573 (++!3036 lt!409314 lt!409310) from!553) (- until!31 from!553)))))

(declare-fun bs!287902 () Bool)

(assert (= bs!287902 d!340443))

(assert (=> bs!287902 m!1366263))

(declare-fun m!1366433 () Bool)

(assert (=> bs!287902 m!1366433))

(assert (=> bs!287902 m!1366433))

(declare-fun m!1366435 () Bool)

(assert (=> bs!287902 m!1366435))

(assert (=> b!1191348 d!340443))

(declare-fun d!340445 () Bool)

(assert (=> d!340445 (= (slice!413 (ite c!197692 lt!409310 (ite c!197691 lt!409314 lt!409310)) (ite c!197692 (- from!553 lt!409311) (ite c!197691 from!553 0)) (ite c!197692 (- until!31 lt!409311) (ite c!197691 until!31 (- until!31 lt!409311)))) (take!101 (drop!573 (ite c!197692 lt!409310 (ite c!197691 lt!409314 lt!409310)) (ite c!197692 (- from!553 lt!409311) (ite c!197691 from!553 0))) (- (ite c!197692 (- until!31 lt!409311) (ite c!197691 until!31 (- until!31 lt!409311))) (ite c!197692 (- from!553 lt!409311) (ite c!197691 from!553 0)))))))

(declare-fun bs!287903 () Bool)

(assert (= bs!287903 d!340445))

(declare-fun m!1366437 () Bool)

(assert (=> bs!287903 m!1366437))

(assert (=> bs!287903 m!1366437))

(declare-fun m!1366439 () Bool)

(assert (=> bs!287903 m!1366439))

(assert (=> bm!82688 d!340445))

(declare-fun b!1191512 () Bool)

(declare-fun e!765903 () Bool)

(declare-fun e!765904 () Bool)

(assert (=> b!1191512 (= e!765903 e!765904)))

(declare-fun res!538256 () Bool)

(assert (=> b!1191512 (=> (not res!538256) (not e!765904))))

(assert (=> b!1191512 (= res!538256 (<= (- 1) (- (height!534 (left!10452 (right!10782 t!4115))) (height!534 (right!10782 (right!10782 t!4115))))))))

(declare-fun b!1191513 () Bool)

(declare-fun res!538257 () Bool)

(assert (=> b!1191513 (=> (not res!538257) (not e!765904))))

(assert (=> b!1191513 (= res!538257 (<= (- (height!534 (left!10452 (right!10782 t!4115))) (height!534 (right!10782 (right!10782 t!4115)))) 1))))

(declare-fun b!1191514 () Bool)

(declare-fun res!538258 () Bool)

(assert (=> b!1191514 (=> (not res!538258) (not e!765904))))

(assert (=> b!1191514 (= res!538258 (not (isEmpty!7215 (left!10452 (right!10782 t!4115)))))))

(declare-fun b!1191515 () Bool)

(declare-fun res!538259 () Bool)

(assert (=> b!1191515 (=> (not res!538259) (not e!765904))))

(assert (=> b!1191515 (= res!538259 (isBalanced!1121 (right!10782 (right!10782 t!4115))))))

(declare-fun b!1191516 () Bool)

(assert (=> b!1191516 (= e!765904 (not (isEmpty!7215 (right!10782 (right!10782 t!4115)))))))

(declare-fun b!1191517 () Bool)

(declare-fun res!538260 () Bool)

(assert (=> b!1191517 (=> (not res!538260) (not e!765904))))

(assert (=> b!1191517 (= res!538260 (isBalanced!1121 (left!10452 (right!10782 t!4115))))))

(declare-fun d!340447 () Bool)

(declare-fun res!538261 () Bool)

(assert (=> d!340447 (=> res!538261 e!765903)))

(assert (=> d!340447 (= res!538261 (not ((_ is Node!3936) (right!10782 t!4115))))))

(assert (=> d!340447 (= (isBalanced!1121 (right!10782 t!4115)) e!765903)))

(assert (= (and d!340447 (not res!538261)) b!1191512))

(assert (= (and b!1191512 res!538256) b!1191513))

(assert (= (and b!1191513 res!538257) b!1191517))

(assert (= (and b!1191517 res!538260) b!1191515))

(assert (= (and b!1191515 res!538259) b!1191514))

(assert (= (and b!1191514 res!538258) b!1191516))

(declare-fun m!1366451 () Bool)

(assert (=> b!1191514 m!1366451))

(declare-fun m!1366453 () Bool)

(assert (=> b!1191515 m!1366453))

(declare-fun m!1366457 () Bool)

(assert (=> b!1191517 m!1366457))

(declare-fun m!1366459 () Bool)

(assert (=> b!1191513 m!1366459))

(declare-fun m!1366461 () Bool)

(assert (=> b!1191513 m!1366461))

(declare-fun m!1366463 () Bool)

(assert (=> b!1191516 m!1366463))

(assert (=> b!1191512 m!1366459))

(assert (=> b!1191512 m!1366461))

(assert (=> b!1191335 d!340447))

(declare-fun d!340453 () Bool)

(declare-fun c!197744 () Bool)

(assert (=> d!340453 (= c!197744 ((_ is Node!3936) (left!10452 t!4115)))))

(declare-fun e!765905 () Bool)

(assert (=> d!340453 (= (inv!15903 (left!10452 t!4115)) e!765905)))

(declare-fun b!1191518 () Bool)

(assert (=> b!1191518 (= e!765905 (inv!15905 (left!10452 t!4115)))))

(declare-fun b!1191519 () Bool)

(declare-fun e!765906 () Bool)

(assert (=> b!1191519 (= e!765905 e!765906)))

(declare-fun res!538262 () Bool)

(assert (=> b!1191519 (= res!538262 (not ((_ is Leaf!6029) (left!10452 t!4115))))))

(assert (=> b!1191519 (=> res!538262 e!765906)))

(declare-fun b!1191520 () Bool)

(assert (=> b!1191520 (= e!765906 (inv!15906 (left!10452 t!4115)))))

(assert (= (and d!340453 c!197744) b!1191518))

(assert (= (and d!340453 (not c!197744)) b!1191519))

(assert (= (and b!1191519 (not res!538262)) b!1191520))

(declare-fun m!1366465 () Bool)

(assert (=> b!1191518 m!1366465))

(declare-fun m!1366467 () Bool)

(assert (=> b!1191520 m!1366467))

(assert (=> b!1191336 d!340453))

(declare-fun d!340455 () Bool)

(declare-fun c!197745 () Bool)

(assert (=> d!340455 (= c!197745 ((_ is Node!3936) (right!10782 t!4115)))))

(declare-fun e!765907 () Bool)

(assert (=> d!340455 (= (inv!15903 (right!10782 t!4115)) e!765907)))

(declare-fun b!1191521 () Bool)

(assert (=> b!1191521 (= e!765907 (inv!15905 (right!10782 t!4115)))))

(declare-fun b!1191522 () Bool)

(declare-fun e!765908 () Bool)

(assert (=> b!1191522 (= e!765907 e!765908)))

(declare-fun res!538263 () Bool)

(assert (=> b!1191522 (= res!538263 (not ((_ is Leaf!6029) (right!10782 t!4115))))))

(assert (=> b!1191522 (=> res!538263 e!765908)))

(declare-fun b!1191523 () Bool)

(assert (=> b!1191523 (= e!765908 (inv!15906 (right!10782 t!4115)))))

(assert (= (and d!340455 c!197745) b!1191521))

(assert (= (and d!340455 (not c!197745)) b!1191522))

(assert (= (and b!1191522 (not res!538263)) b!1191523))

(declare-fun m!1366469 () Bool)

(assert (=> b!1191521 m!1366469))

(declare-fun m!1366471 () Bool)

(assert (=> b!1191523 m!1366471))

(assert (=> b!1191336 d!340455))

(declare-fun d!340457 () Bool)

(assert (=> d!340457 (= (inv!15904 (xs!6641 t!4115)) (<= (size!9491 (innerList!3996 (xs!6641 t!4115))) 2147483647))))

(declare-fun bs!287905 () Bool)

(assert (= bs!287905 d!340457))

(declare-fun m!1366473 () Bool)

(assert (=> bs!287905 m!1366473))

(assert (=> b!1191339 d!340457))

(declare-fun b!1191534 () Bool)

(declare-fun e!765915 () Bool)

(declare-fun tp_is_empty!5905 () Bool)

(declare-fun tp!339964 () Bool)

(assert (=> b!1191534 (= e!765915 (and tp_is_empty!5905 tp!339964))))

(assert (=> b!1191343 (= tp!339961 e!765915)))

(assert (= (and b!1191343 ((_ is Cons!12003) (innerList!3996 (xs!6641 t!4115)))) b!1191534))

(declare-fun tp!339971 () Bool)

(declare-fun tp!339972 () Bool)

(declare-fun e!765926 () Bool)

(declare-fun b!1191555 () Bool)

(assert (=> b!1191555 (= e!765926 (and (inv!15903 (left!10452 (left!10452 t!4115))) tp!339972 (inv!15903 (right!10782 (left!10452 t!4115))) tp!339971))))

(declare-fun b!1191557 () Bool)

(declare-fun e!765927 () Bool)

(declare-fun tp!339973 () Bool)

(assert (=> b!1191557 (= e!765927 tp!339973)))

(declare-fun b!1191556 () Bool)

(assert (=> b!1191556 (= e!765926 (and (inv!15904 (xs!6641 (left!10452 t!4115))) e!765927))))

(assert (=> b!1191336 (= tp!339959 (and (inv!15903 (left!10452 t!4115)) e!765926))))

(assert (= (and b!1191336 ((_ is Node!3936) (left!10452 t!4115))) b!1191555))

(assert (= b!1191556 b!1191557))

(assert (= (and b!1191336 ((_ is Leaf!6029) (left!10452 t!4115))) b!1191556))

(declare-fun m!1366495 () Bool)

(assert (=> b!1191555 m!1366495))

(declare-fun m!1366499 () Bool)

(assert (=> b!1191555 m!1366499))

(declare-fun m!1366503 () Bool)

(assert (=> b!1191556 m!1366503))

(assert (=> b!1191336 m!1366275))

(declare-fun tp!339975 () Bool)

(declare-fun e!765928 () Bool)

(declare-fun b!1191558 () Bool)

(declare-fun tp!339974 () Bool)

(assert (=> b!1191558 (= e!765928 (and (inv!15903 (left!10452 (right!10782 t!4115))) tp!339975 (inv!15903 (right!10782 (right!10782 t!4115))) tp!339974))))

(declare-fun b!1191560 () Bool)

(declare-fun e!765929 () Bool)

(declare-fun tp!339976 () Bool)

(assert (=> b!1191560 (= e!765929 tp!339976)))

(declare-fun b!1191559 () Bool)

(assert (=> b!1191559 (= e!765928 (and (inv!15904 (xs!6641 (right!10782 t!4115))) e!765929))))

(assert (=> b!1191336 (= tp!339960 (and (inv!15903 (right!10782 t!4115)) e!765928))))

(assert (= (and b!1191336 ((_ is Node!3936) (right!10782 t!4115))) b!1191558))

(assert (= b!1191559 b!1191560))

(assert (= (and b!1191336 ((_ is Leaf!6029) (right!10782 t!4115))) b!1191559))

(declare-fun m!1366507 () Bool)

(assert (=> b!1191558 m!1366507))

(declare-fun m!1366509 () Bool)

(assert (=> b!1191558 m!1366509))

(declare-fun m!1366511 () Bool)

(assert (=> b!1191559 m!1366511))

(assert (=> b!1191336 m!1366277))

(check-sat (not b!1191516) tp_is_empty!5905 (not b!1191336) (not b!1191555) (not b!1191556) (not b!1191500) (not d!340443) (not bm!82698) (not b!1191534) (not b!1191504) (not b!1191514) (not b!1191468) (not b!1191515) (not b!1191427) (not b!1191409) (not b!1191385) (not d!340457) (not b!1191520) (not d!340401) (not d!340403) (not bm!82697) (not d!340417) (not b!1191387) (not d!340427) (not b!1191358) (not b!1191420) (not b!1191513) (not b!1191413) (not d!340407) (not b!1191412) (not b!1191359) (not b!1191499) (not d!340445) (not b!1191557) (not b!1191503) (not b!1191517) (not b!1191559) (not b!1191523) (not b!1191560) (not b!1191419) (not d!340419) (not d!340399) (not b!1191512) (not b!1191521) (not b!1191558) (not b!1191410) (not b!1191518) (not b!1191472) (not b!1191408) (not b!1191411))
(check-sat)
