; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!200960 () Bool)

(assert start!200960)

(declare-fun b_free!56831 () Bool)

(declare-fun b_next!57535 () Bool)

(assert (=> start!200960 (= b_free!56831 (not b_next!57535))))

(declare-fun tp!605242 () Bool)

(declare-fun b_and!162715 () Bool)

(assert (=> start!200960 (= tp!605242 b_and!162715)))

(declare-fun b!2038995 () Bool)

(declare-fun e!1287405 () Bool)

(declare-fun tp!605239 () Bool)

(assert (=> b!2038995 (= e!1287405 tp!605239)))

(declare-fun b!2038996 () Bool)

(declare-fun res!893949 () Bool)

(declare-fun e!1287406 () Bool)

(assert (=> b!2038996 (=> (not res!893949) (not e!1287406))))

(declare-datatypes ((T!36018 0))(
  ( (T!36019 (val!6478 Int)) )
))
(declare-datatypes ((List!22361 0))(
  ( (Nil!22279) (Cons!22279 (h!27680 T!36018) (t!191396 List!22361)) )
))
(declare-datatypes ((IArray!14947 0))(
  ( (IArray!14948 (innerList!7531 List!22361)) )
))
(declare-datatypes ((Conc!7471 0))(
  ( (Node!7471 (left!17743 Conc!7471) (right!18073 Conc!7471) (csize!15172 Int) (cheight!7682 Int)) (Leaf!10948 (xs!10373 IArray!14947) (csize!15173 Int)) (Empty!7471) )
))
(declare-fun t!4319 () Conc!7471)

(get-info :version)

(assert (=> b!2038996 (= res!893949 (and (not ((_ is Empty!7471) t!4319)) (not ((_ is Leaf!10948) t!4319))))))

(declare-fun tp!605240 () Bool)

(declare-fun b!2038997 () Bool)

(declare-fun tp!605241 () Bool)

(declare-fun e!1287407 () Bool)

(declare-fun inv!29593 (Conc!7471) Bool)

(assert (=> b!2038997 (= e!1287407 (and (inv!29593 (left!17743 t!4319)) tp!605240 (inv!29593 (right!18073 t!4319)) tp!605241))))

(declare-fun res!893948 () Bool)

(assert (=> start!200960 (=> (not res!893948) (not e!1287406))))

(declare-fun isBalanced!2349 (Conc!7471) Bool)

(assert (=> start!200960 (= res!893948 (isBalanced!2349 t!4319))))

(assert (=> start!200960 e!1287406))

(assert (=> start!200960 (and (inv!29593 t!4319) e!1287407)))

(assert (=> start!200960 tp!605242))

(declare-fun b!2038998 () Bool)

(declare-fun inv!29594 (IArray!14947) Bool)

(assert (=> b!2038998 (= e!1287407 (and (inv!29594 (xs!10373 t!4319)) e!1287405))))

(declare-fun b!2038999 () Bool)

(declare-fun e!1287404 () Bool)

(declare-fun ConcPrimitiveSize!22 (Conc!7471) Int)

(assert (=> b!2038999 (= e!1287404 (>= (ConcPrimitiveSize!22 (right!18073 t!4319)) (ConcPrimitiveSize!22 t!4319)))))

(declare-fun lt!765174 () Conc!7471)

(declare-fun p!1489 () Int)

(declare-fun filter!477 (Conc!7471 Int) Conc!7471)

(assert (=> b!2038999 (= lt!765174 (filter!477 (left!17743 t!4319) p!1489))))

(declare-fun b!2039000 () Bool)

(assert (=> b!2039000 (= e!1287406 e!1287404)))

(declare-fun res!893947 () Bool)

(assert (=> b!2039000 (=> (not res!893947) (not e!1287404))))

(declare-fun lt!765176 () List!22361)

(declare-fun lt!765175 () List!22361)

(declare-fun filter!478 (List!22361 Int) List!22361)

(declare-fun ++!6051 (List!22361 List!22361) List!22361)

(assert (=> b!2039000 (= res!893947 (= (filter!478 (++!6051 lt!765175 lt!765176) p!1489) (++!6051 (filter!478 lt!765175 p!1489) (filter!478 lt!765176 p!1489))))))

(declare-datatypes ((Unit!36976 0))(
  ( (Unit!36977) )
))
(declare-fun lt!765173 () Unit!36976)

(declare-fun lemmaFilterConcat!30 (List!22361 List!22361 Int) Unit!36976)

(assert (=> b!2039000 (= lt!765173 (lemmaFilterConcat!30 lt!765175 lt!765176 p!1489))))

(declare-fun list!9139 (Conc!7471) List!22361)

(assert (=> b!2039000 (= lt!765176 (list!9139 (right!18073 t!4319)))))

(assert (=> b!2039000 (= lt!765175 (list!9139 (left!17743 t!4319)))))

(assert (= (and start!200960 res!893948) b!2038996))

(assert (= (and b!2038996 res!893949) b!2039000))

(assert (= (and b!2039000 res!893947) b!2038999))

(assert (= (and start!200960 ((_ is Node!7471) t!4319)) b!2038997))

(assert (= b!2038998 b!2038995))

(assert (= (and start!200960 ((_ is Leaf!10948) t!4319)) b!2038998))

(declare-fun m!2482593 () Bool)

(assert (=> start!200960 m!2482593))

(declare-fun m!2482595 () Bool)

(assert (=> start!200960 m!2482595))

(declare-fun m!2482597 () Bool)

(assert (=> b!2039000 m!2482597))

(declare-fun m!2482599 () Bool)

(assert (=> b!2039000 m!2482599))

(declare-fun m!2482601 () Bool)

(assert (=> b!2039000 m!2482601))

(declare-fun m!2482603 () Bool)

(assert (=> b!2039000 m!2482603))

(declare-fun m!2482605 () Bool)

(assert (=> b!2039000 m!2482605))

(assert (=> b!2039000 m!2482601))

(declare-fun m!2482607 () Bool)

(assert (=> b!2039000 m!2482607))

(declare-fun m!2482609 () Bool)

(assert (=> b!2039000 m!2482609))

(assert (=> b!2039000 m!2482597))

(assert (=> b!2039000 m!2482605))

(declare-fun m!2482611 () Bool)

(assert (=> b!2039000 m!2482611))

(declare-fun m!2482613 () Bool)

(assert (=> b!2038997 m!2482613))

(declare-fun m!2482615 () Bool)

(assert (=> b!2038997 m!2482615))

(declare-fun m!2482617 () Bool)

(assert (=> b!2038999 m!2482617))

(declare-fun m!2482619 () Bool)

(assert (=> b!2038999 m!2482619))

(declare-fun m!2482621 () Bool)

(assert (=> b!2038999 m!2482621))

(declare-fun m!2482623 () Bool)

(assert (=> b!2038998 m!2482623))

(check-sat b_and!162715 (not b!2038997) (not b!2039000) (not b!2038999) (not start!200960) (not b_next!57535) (not b!2038998) (not b!2038995))
(check-sat b_and!162715 (not b_next!57535))
(get-model)

(declare-fun e!1287419 () List!22361)

(declare-fun call!124997 () List!22361)

(declare-fun b!2039021 () Bool)

(assert (=> b!2039021 (= e!1287419 (Cons!22279 (h!27680 (++!6051 lt!765175 lt!765176)) call!124997))))

(declare-fun bm!124992 () Bool)

(assert (=> bm!124992 (= call!124997 (filter!478 (t!191396 (++!6051 lt!765175 lt!765176)) p!1489))))

(declare-fun b!2039022 () Bool)

(declare-fun res!893954 () Bool)

(declare-fun e!1287420 () Bool)

(assert (=> b!2039022 (=> (not res!893954) (not e!1287420))))

(declare-fun lt!765181 () List!22361)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3310 (List!22361) (InoxSet T!36018))

(assert (=> b!2039022 (= res!893954 (= ((_ map implies) (content!3310 lt!765181) (content!3310 (++!6051 lt!765175 lt!765176))) ((as const (InoxSet T!36018)) true)))))

(declare-fun b!2039023 () Bool)

(declare-fun e!1287418 () List!22361)

(assert (=> b!2039023 (= e!1287418 e!1287419)))

(declare-fun c!330311 () Bool)

(declare-fun dynLambda!11107 (Int T!36018) Bool)

(assert (=> b!2039023 (= c!330311 (dynLambda!11107 p!1489 (h!27680 (++!6051 lt!765175 lt!765176))))))

(declare-fun d!624501 () Bool)

(assert (=> d!624501 e!1287420))

(declare-fun res!893955 () Bool)

(assert (=> d!624501 (=> (not res!893955) (not e!1287420))))

(declare-fun size!17433 (List!22361) Int)

(assert (=> d!624501 (= res!893955 (<= (size!17433 lt!765181) (size!17433 (++!6051 lt!765175 lt!765176))))))

(assert (=> d!624501 (= lt!765181 e!1287418)))

(declare-fun c!330310 () Bool)

(assert (=> d!624501 (= c!330310 ((_ is Nil!22279) (++!6051 lt!765175 lt!765176)))))

(assert (=> d!624501 (= (filter!478 (++!6051 lt!765175 lt!765176) p!1489) lt!765181)))

(declare-fun b!2039024 () Bool)

(assert (=> b!2039024 (= e!1287419 call!124997)))

(declare-fun b!2039025 () Bool)

(assert (=> b!2039025 (= e!1287418 Nil!22279)))

(declare-fun b!2039026 () Bool)

(declare-fun forall!4757 (List!22361 Int) Bool)

(assert (=> b!2039026 (= e!1287420 (forall!4757 lt!765181 p!1489))))

(assert (= (and d!624501 c!330310) b!2039025))

(assert (= (and d!624501 (not c!330310)) b!2039023))

(assert (= (and b!2039023 c!330311) b!2039021))

(assert (= (and b!2039023 (not c!330311)) b!2039024))

(assert (= (or b!2039021 b!2039024) bm!124992))

(assert (= (and d!624501 res!893955) b!2039022))

(assert (= (and b!2039022 res!893954) b!2039026))

(declare-fun b_lambda!68941 () Bool)

(assert (=> (not b_lambda!68941) (not b!2039023)))

(declare-fun t!191398 () Bool)

(declare-fun tb!128925 () Bool)

(assert (=> (and start!200960 (= p!1489 p!1489) t!191398) tb!128925))

(declare-fun result!154236 () Bool)

(assert (=> tb!128925 (= result!154236 true)))

(assert (=> b!2039023 t!191398))

(declare-fun b_and!162717 () Bool)

(assert (= b_and!162715 (and (=> t!191398 result!154236) b_and!162717)))

(declare-fun m!2482627 () Bool)

(assert (=> b!2039022 m!2482627))

(assert (=> b!2039022 m!2482601))

(declare-fun m!2482629 () Bool)

(assert (=> b!2039022 m!2482629))

(declare-fun m!2482631 () Bool)

(assert (=> b!2039023 m!2482631))

(declare-fun m!2482633 () Bool)

(assert (=> d!624501 m!2482633))

(assert (=> d!624501 m!2482601))

(declare-fun m!2482635 () Bool)

(assert (=> d!624501 m!2482635))

(declare-fun m!2482637 () Bool)

(assert (=> bm!124992 m!2482637))

(declare-fun m!2482639 () Bool)

(assert (=> b!2039026 m!2482639))

(assert (=> b!2039000 d!624501))

(declare-fun b!2039027 () Bool)

(declare-fun e!1287422 () List!22361)

(declare-fun call!124998 () List!22361)

(assert (=> b!2039027 (= e!1287422 (Cons!22279 (h!27680 lt!765175) call!124998))))

(declare-fun bm!124993 () Bool)

(assert (=> bm!124993 (= call!124998 (filter!478 (t!191396 lt!765175) p!1489))))

(declare-fun b!2039028 () Bool)

(declare-fun res!893956 () Bool)

(declare-fun e!1287423 () Bool)

(assert (=> b!2039028 (=> (not res!893956) (not e!1287423))))

(declare-fun lt!765182 () List!22361)

(assert (=> b!2039028 (= res!893956 (= ((_ map implies) (content!3310 lt!765182) (content!3310 lt!765175)) ((as const (InoxSet T!36018)) true)))))

(declare-fun b!2039029 () Bool)

(declare-fun e!1287421 () List!22361)

(assert (=> b!2039029 (= e!1287421 e!1287422)))

(declare-fun c!330313 () Bool)

(assert (=> b!2039029 (= c!330313 (dynLambda!11107 p!1489 (h!27680 lt!765175)))))

(declare-fun d!624507 () Bool)

(assert (=> d!624507 e!1287423))

(declare-fun res!893957 () Bool)

(assert (=> d!624507 (=> (not res!893957) (not e!1287423))))

(assert (=> d!624507 (= res!893957 (<= (size!17433 lt!765182) (size!17433 lt!765175)))))

(assert (=> d!624507 (= lt!765182 e!1287421)))

(declare-fun c!330312 () Bool)

(assert (=> d!624507 (= c!330312 ((_ is Nil!22279) lt!765175))))

(assert (=> d!624507 (= (filter!478 lt!765175 p!1489) lt!765182)))

(declare-fun b!2039030 () Bool)

(assert (=> b!2039030 (= e!1287422 call!124998)))

(declare-fun b!2039031 () Bool)

(assert (=> b!2039031 (= e!1287421 Nil!22279)))

(declare-fun b!2039032 () Bool)

(assert (=> b!2039032 (= e!1287423 (forall!4757 lt!765182 p!1489))))

(assert (= (and d!624507 c!330312) b!2039031))

(assert (= (and d!624507 (not c!330312)) b!2039029))

(assert (= (and b!2039029 c!330313) b!2039027))

(assert (= (and b!2039029 (not c!330313)) b!2039030))

(assert (= (or b!2039027 b!2039030) bm!124993))

(assert (= (and d!624507 res!893957) b!2039028))

(assert (= (and b!2039028 res!893956) b!2039032))

(declare-fun b_lambda!68943 () Bool)

(assert (=> (not b_lambda!68943) (not b!2039029)))

(declare-fun t!191400 () Bool)

(declare-fun tb!128927 () Bool)

(assert (=> (and start!200960 (= p!1489 p!1489) t!191400) tb!128927))

(declare-fun result!154238 () Bool)

(assert (=> tb!128927 (= result!154238 true)))

(assert (=> b!2039029 t!191400))

(declare-fun b_and!162719 () Bool)

(assert (= b_and!162717 (and (=> t!191400 result!154238) b_and!162719)))

(declare-fun m!2482647 () Bool)

(assert (=> b!2039028 m!2482647))

(declare-fun m!2482651 () Bool)

(assert (=> b!2039028 m!2482651))

(declare-fun m!2482655 () Bool)

(assert (=> b!2039029 m!2482655))

(declare-fun m!2482657 () Bool)

(assert (=> d!624507 m!2482657))

(declare-fun m!2482659 () Bool)

(assert (=> d!624507 m!2482659))

(declare-fun m!2482661 () Bool)

(assert (=> bm!124993 m!2482661))

(declare-fun m!2482663 () Bool)

(assert (=> b!2039032 m!2482663))

(assert (=> b!2039000 d!624507))

(declare-fun d!624511 () Bool)

(assert (=> d!624511 (= (filter!478 (++!6051 lt!765175 lt!765176) p!1489) (++!6051 (filter!478 lt!765175 p!1489) (filter!478 lt!765176 p!1489)))))

(declare-fun lt!765187 () Unit!36976)

(declare-fun choose!12443 (List!22361 List!22361 Int) Unit!36976)

(assert (=> d!624511 (= lt!765187 (choose!12443 lt!765175 lt!765176 p!1489))))

(assert (=> d!624511 (= (lemmaFilterConcat!30 lt!765175 lt!765176 p!1489) lt!765187)))

(declare-fun bs!421462 () Bool)

(assert (= bs!421462 d!624511))

(assert (=> bs!421462 m!2482601))

(assert (=> bs!421462 m!2482605))

(assert (=> bs!421462 m!2482601))

(assert (=> bs!421462 m!2482607))

(declare-fun m!2482673 () Bool)

(assert (=> bs!421462 m!2482673))

(assert (=> bs!421462 m!2482597))

(assert (=> bs!421462 m!2482605))

(assert (=> bs!421462 m!2482611))

(assert (=> bs!421462 m!2482597))

(assert (=> b!2039000 d!624511))

(declare-fun b!2039052 () Bool)

(declare-fun e!1287433 () List!22361)

(assert (=> b!2039052 (= e!1287433 (++!6051 (list!9139 (left!17743 (left!17743 t!4319))) (list!9139 (right!18073 (left!17743 t!4319)))))))

(declare-fun b!2039049 () Bool)

(declare-fun e!1287432 () List!22361)

(assert (=> b!2039049 (= e!1287432 Nil!22279)))

(declare-fun b!2039051 () Bool)

(declare-fun list!9140 (IArray!14947) List!22361)

(assert (=> b!2039051 (= e!1287433 (list!9140 (xs!10373 (left!17743 t!4319))))))

(declare-fun b!2039050 () Bool)

(assert (=> b!2039050 (= e!1287432 e!1287433)))

(declare-fun c!330323 () Bool)

(assert (=> b!2039050 (= c!330323 ((_ is Leaf!10948) (left!17743 t!4319)))))

(declare-fun d!624515 () Bool)

(declare-fun c!330322 () Bool)

(assert (=> d!624515 (= c!330322 ((_ is Empty!7471) (left!17743 t!4319)))))

(assert (=> d!624515 (= (list!9139 (left!17743 t!4319)) e!1287432)))

(assert (= (and d!624515 c!330322) b!2039049))

(assert (= (and d!624515 (not c!330322)) b!2039050))

(assert (= (and b!2039050 c!330323) b!2039051))

(assert (= (and b!2039050 (not c!330323)) b!2039052))

(declare-fun m!2482675 () Bool)

(assert (=> b!2039052 m!2482675))

(declare-fun m!2482677 () Bool)

(assert (=> b!2039052 m!2482677))

(assert (=> b!2039052 m!2482675))

(assert (=> b!2039052 m!2482677))

(declare-fun m!2482679 () Bool)

(assert (=> b!2039052 m!2482679))

(declare-fun m!2482681 () Bool)

(assert (=> b!2039051 m!2482681))

(assert (=> b!2039000 d!624515))

(declare-fun b!2039053 () Bool)

(declare-fun e!1287435 () List!22361)

(declare-fun call!125001 () List!22361)

(assert (=> b!2039053 (= e!1287435 (Cons!22279 (h!27680 lt!765176) call!125001))))

(declare-fun bm!124996 () Bool)

(assert (=> bm!124996 (= call!125001 (filter!478 (t!191396 lt!765176) p!1489))))

(declare-fun b!2039054 () Bool)

(declare-fun res!893958 () Bool)

(declare-fun e!1287436 () Bool)

(assert (=> b!2039054 (=> (not res!893958) (not e!1287436))))

(declare-fun lt!765188 () List!22361)

(assert (=> b!2039054 (= res!893958 (= ((_ map implies) (content!3310 lt!765188) (content!3310 lt!765176)) ((as const (InoxSet T!36018)) true)))))

(declare-fun b!2039055 () Bool)

(declare-fun e!1287434 () List!22361)

(assert (=> b!2039055 (= e!1287434 e!1287435)))

(declare-fun c!330325 () Bool)

(assert (=> b!2039055 (= c!330325 (dynLambda!11107 p!1489 (h!27680 lt!765176)))))

(declare-fun d!624517 () Bool)

(assert (=> d!624517 e!1287436))

(declare-fun res!893959 () Bool)

(assert (=> d!624517 (=> (not res!893959) (not e!1287436))))

(assert (=> d!624517 (= res!893959 (<= (size!17433 lt!765188) (size!17433 lt!765176)))))

(assert (=> d!624517 (= lt!765188 e!1287434)))

(declare-fun c!330324 () Bool)

(assert (=> d!624517 (= c!330324 ((_ is Nil!22279) lt!765176))))

(assert (=> d!624517 (= (filter!478 lt!765176 p!1489) lt!765188)))

(declare-fun b!2039056 () Bool)

(assert (=> b!2039056 (= e!1287435 call!125001)))

(declare-fun b!2039057 () Bool)

(assert (=> b!2039057 (= e!1287434 Nil!22279)))

(declare-fun b!2039058 () Bool)

(assert (=> b!2039058 (= e!1287436 (forall!4757 lt!765188 p!1489))))

(assert (= (and d!624517 c!330324) b!2039057))

(assert (= (and d!624517 (not c!330324)) b!2039055))

(assert (= (and b!2039055 c!330325) b!2039053))

(assert (= (and b!2039055 (not c!330325)) b!2039056))

(assert (= (or b!2039053 b!2039056) bm!124996))

(assert (= (and d!624517 res!893959) b!2039054))

(assert (= (and b!2039054 res!893958) b!2039058))

(declare-fun b_lambda!68945 () Bool)

(assert (=> (not b_lambda!68945) (not b!2039055)))

(declare-fun t!191403 () Bool)

(declare-fun tb!128929 () Bool)

(assert (=> (and start!200960 (= p!1489 p!1489) t!191403) tb!128929))

(declare-fun result!154240 () Bool)

(assert (=> tb!128929 (= result!154240 true)))

(assert (=> b!2039055 t!191403))

(declare-fun b_and!162721 () Bool)

(assert (= b_and!162719 (and (=> t!191403 result!154240) b_and!162721)))

(declare-fun m!2482683 () Bool)

(assert (=> b!2039054 m!2482683))

(declare-fun m!2482685 () Bool)

(assert (=> b!2039054 m!2482685))

(declare-fun m!2482687 () Bool)

(assert (=> b!2039055 m!2482687))

(declare-fun m!2482689 () Bool)

(assert (=> d!624517 m!2482689))

(declare-fun m!2482691 () Bool)

(assert (=> d!624517 m!2482691))

(declare-fun m!2482693 () Bool)

(assert (=> bm!124996 m!2482693))

(declare-fun m!2482695 () Bool)

(assert (=> b!2039058 m!2482695))

(assert (=> b!2039000 d!624517))

(declare-fun b!2039062 () Bool)

(declare-fun e!1287438 () List!22361)

(assert (=> b!2039062 (= e!1287438 (++!6051 (list!9139 (left!17743 (right!18073 t!4319))) (list!9139 (right!18073 (right!18073 t!4319)))))))

(declare-fun b!2039059 () Bool)

(declare-fun e!1287437 () List!22361)

(assert (=> b!2039059 (= e!1287437 Nil!22279)))

(declare-fun b!2039061 () Bool)

(assert (=> b!2039061 (= e!1287438 (list!9140 (xs!10373 (right!18073 t!4319))))))

(declare-fun b!2039060 () Bool)

(assert (=> b!2039060 (= e!1287437 e!1287438)))

(declare-fun c!330327 () Bool)

(assert (=> b!2039060 (= c!330327 ((_ is Leaf!10948) (right!18073 t!4319)))))

(declare-fun d!624519 () Bool)

(declare-fun c!330326 () Bool)

(assert (=> d!624519 (= c!330326 ((_ is Empty!7471) (right!18073 t!4319)))))

(assert (=> d!624519 (= (list!9139 (right!18073 t!4319)) e!1287437)))

(assert (= (and d!624519 c!330326) b!2039059))

(assert (= (and d!624519 (not c!330326)) b!2039060))

(assert (= (and b!2039060 c!330327) b!2039061))

(assert (= (and b!2039060 (not c!330327)) b!2039062))

(declare-fun m!2482697 () Bool)

(assert (=> b!2039062 m!2482697))

(declare-fun m!2482699 () Bool)

(assert (=> b!2039062 m!2482699))

(assert (=> b!2039062 m!2482697))

(assert (=> b!2039062 m!2482699))

(declare-fun m!2482701 () Bool)

(assert (=> b!2039062 m!2482701))

(declare-fun m!2482703 () Bool)

(assert (=> b!2039061 m!2482703))

(assert (=> b!2039000 d!624519))

(declare-fun b!2039094 () Bool)

(declare-fun res!893968 () Bool)

(declare-fun e!1287455 () Bool)

(assert (=> b!2039094 (=> (not res!893968) (not e!1287455))))

(declare-fun lt!765200 () List!22361)

(assert (=> b!2039094 (= res!893968 (= (size!17433 lt!765200) (+ (size!17433 lt!765175) (size!17433 lt!765176))))))

(declare-fun b!2039092 () Bool)

(declare-fun e!1287456 () List!22361)

(assert (=> b!2039092 (= e!1287456 lt!765176)))

(declare-fun b!2039095 () Bool)

(assert (=> b!2039095 (= e!1287455 (or (not (= lt!765176 Nil!22279)) (= lt!765200 lt!765175)))))

(declare-fun b!2039093 () Bool)

(assert (=> b!2039093 (= e!1287456 (Cons!22279 (h!27680 lt!765175) (++!6051 (t!191396 lt!765175) lt!765176)))))

(declare-fun d!624521 () Bool)

(assert (=> d!624521 e!1287455))

(declare-fun res!893967 () Bool)

(assert (=> d!624521 (=> (not res!893967) (not e!1287455))))

(assert (=> d!624521 (= res!893967 (= (content!3310 lt!765200) ((_ map or) (content!3310 lt!765175) (content!3310 lt!765176))))))

(assert (=> d!624521 (= lt!765200 e!1287456)))

(declare-fun c!330339 () Bool)

(assert (=> d!624521 (= c!330339 ((_ is Nil!22279) lt!765175))))

(assert (=> d!624521 (= (++!6051 lt!765175 lt!765176) lt!765200)))

(assert (= (and d!624521 c!330339) b!2039092))

(assert (= (and d!624521 (not c!330339)) b!2039093))

(assert (= (and d!624521 res!893967) b!2039094))

(assert (= (and b!2039094 res!893968) b!2039095))

(declare-fun m!2482705 () Bool)

(assert (=> b!2039094 m!2482705))

(assert (=> b!2039094 m!2482659))

(assert (=> b!2039094 m!2482691))

(declare-fun m!2482709 () Bool)

(assert (=> b!2039093 m!2482709))

(declare-fun m!2482711 () Bool)

(assert (=> d!624521 m!2482711))

(assert (=> d!624521 m!2482651))

(assert (=> d!624521 m!2482685))

(assert (=> b!2039000 d!624521))

(declare-fun b!2039098 () Bool)

(declare-fun res!893970 () Bool)

(declare-fun e!1287457 () Bool)

(assert (=> b!2039098 (=> (not res!893970) (not e!1287457))))

(declare-fun lt!765201 () List!22361)

(assert (=> b!2039098 (= res!893970 (= (size!17433 lt!765201) (+ (size!17433 (filter!478 lt!765175 p!1489)) (size!17433 (filter!478 lt!765176 p!1489)))))))

(declare-fun b!2039096 () Bool)

(declare-fun e!1287458 () List!22361)

(assert (=> b!2039096 (= e!1287458 (filter!478 lt!765176 p!1489))))

(declare-fun b!2039099 () Bool)

(assert (=> b!2039099 (= e!1287457 (or (not (= (filter!478 lt!765176 p!1489) Nil!22279)) (= lt!765201 (filter!478 lt!765175 p!1489))))))

(declare-fun b!2039097 () Bool)

(assert (=> b!2039097 (= e!1287458 (Cons!22279 (h!27680 (filter!478 lt!765175 p!1489)) (++!6051 (t!191396 (filter!478 lt!765175 p!1489)) (filter!478 lt!765176 p!1489))))))

(declare-fun d!624523 () Bool)

(assert (=> d!624523 e!1287457))

(declare-fun res!893969 () Bool)

(assert (=> d!624523 (=> (not res!893969) (not e!1287457))))

(assert (=> d!624523 (= res!893969 (= (content!3310 lt!765201) ((_ map or) (content!3310 (filter!478 lt!765175 p!1489)) (content!3310 (filter!478 lt!765176 p!1489)))))))

(assert (=> d!624523 (= lt!765201 e!1287458)))

(declare-fun c!330340 () Bool)

(assert (=> d!624523 (= c!330340 ((_ is Nil!22279) (filter!478 lt!765175 p!1489)))))

(assert (=> d!624523 (= (++!6051 (filter!478 lt!765175 p!1489) (filter!478 lt!765176 p!1489)) lt!765201)))

(assert (= (and d!624523 c!330340) b!2039096))

(assert (= (and d!624523 (not c!330340)) b!2039097))

(assert (= (and d!624523 res!893969) b!2039098))

(assert (= (and b!2039098 res!893970) b!2039099))

(declare-fun m!2482735 () Bool)

(assert (=> b!2039098 m!2482735))

(assert (=> b!2039098 m!2482597))

(declare-fun m!2482737 () Bool)

(assert (=> b!2039098 m!2482737))

(assert (=> b!2039098 m!2482605))

(declare-fun m!2482739 () Bool)

(assert (=> b!2039098 m!2482739))

(assert (=> b!2039097 m!2482605))

(declare-fun m!2482741 () Bool)

(assert (=> b!2039097 m!2482741))

(declare-fun m!2482743 () Bool)

(assert (=> d!624523 m!2482743))

(assert (=> d!624523 m!2482597))

(declare-fun m!2482745 () Bool)

(assert (=> d!624523 m!2482745))

(assert (=> d!624523 m!2482605))

(declare-fun m!2482747 () Bool)

(assert (=> d!624523 m!2482747))

(assert (=> b!2039000 d!624523))

(declare-fun b!2039124 () Bool)

(declare-fun res!893988 () Bool)

(declare-fun e!1287471 () Bool)

(assert (=> b!2039124 (=> (not res!893988) (not e!1287471))))

(declare-fun height!1170 (Conc!7471) Int)

(assert (=> b!2039124 (= res!893988 (<= (- (height!1170 (left!17743 t!4319)) (height!1170 (right!18073 t!4319))) 1))))

(declare-fun d!624527 () Bool)

(declare-fun res!893990 () Bool)

(declare-fun e!1287472 () Bool)

(assert (=> d!624527 (=> res!893990 e!1287472)))

(assert (=> d!624527 (= res!893990 (not ((_ is Node!7471) t!4319)))))

(assert (=> d!624527 (= (isBalanced!2349 t!4319) e!1287472)))

(declare-fun b!2039125 () Bool)

(declare-fun res!893989 () Bool)

(assert (=> b!2039125 (=> (not res!893989) (not e!1287471))))

(declare-fun isEmpty!13936 (Conc!7471) Bool)

(assert (=> b!2039125 (= res!893989 (not (isEmpty!13936 (left!17743 t!4319))))))

(declare-fun b!2039126 () Bool)

(declare-fun res!893992 () Bool)

(assert (=> b!2039126 (=> (not res!893992) (not e!1287471))))

(assert (=> b!2039126 (= res!893992 (isBalanced!2349 (left!17743 t!4319)))))

(declare-fun b!2039127 () Bool)

(declare-fun res!893987 () Bool)

(assert (=> b!2039127 (=> (not res!893987) (not e!1287471))))

(assert (=> b!2039127 (= res!893987 (isBalanced!2349 (right!18073 t!4319)))))

(declare-fun b!2039128 () Bool)

(assert (=> b!2039128 (= e!1287472 e!1287471)))

(declare-fun res!893991 () Bool)

(assert (=> b!2039128 (=> (not res!893991) (not e!1287471))))

(assert (=> b!2039128 (= res!893991 (<= (- 1) (- (height!1170 (left!17743 t!4319)) (height!1170 (right!18073 t!4319)))))))

(declare-fun b!2039129 () Bool)

(assert (=> b!2039129 (= e!1287471 (not (isEmpty!13936 (right!18073 t!4319))))))

(assert (= (and d!624527 (not res!893990)) b!2039128))

(assert (= (and b!2039128 res!893991) b!2039124))

(assert (= (and b!2039124 res!893988) b!2039126))

(assert (= (and b!2039126 res!893992) b!2039127))

(assert (= (and b!2039127 res!893987) b!2039125))

(assert (= (and b!2039125 res!893989) b!2039129))

(declare-fun m!2482757 () Bool)

(assert (=> b!2039127 m!2482757))

(declare-fun m!2482759 () Bool)

(assert (=> b!2039129 m!2482759))

(declare-fun m!2482761 () Bool)

(assert (=> b!2039125 m!2482761))

(declare-fun m!2482763 () Bool)

(assert (=> b!2039128 m!2482763))

(declare-fun m!2482765 () Bool)

(assert (=> b!2039128 m!2482765))

(declare-fun m!2482767 () Bool)

(assert (=> b!2039126 m!2482767))

(assert (=> b!2039124 m!2482763))

(assert (=> b!2039124 m!2482765))

(assert (=> start!200960 d!624527))

(declare-fun d!624533 () Bool)

(declare-fun c!330353 () Bool)

(assert (=> d!624533 (= c!330353 ((_ is Node!7471) t!4319))))

(declare-fun e!1287486 () Bool)

(assert (=> d!624533 (= (inv!29593 t!4319) e!1287486)))

(declare-fun b!2039154 () Bool)

(declare-fun inv!29597 (Conc!7471) Bool)

(assert (=> b!2039154 (= e!1287486 (inv!29597 t!4319))))

(declare-fun b!2039155 () Bool)

(declare-fun e!1287487 () Bool)

(assert (=> b!2039155 (= e!1287486 e!1287487)))

(declare-fun res!894001 () Bool)

(assert (=> b!2039155 (= res!894001 (not ((_ is Leaf!10948) t!4319)))))

(assert (=> b!2039155 (=> res!894001 e!1287487)))

(declare-fun b!2039156 () Bool)

(declare-fun inv!29598 (Conc!7471) Bool)

(assert (=> b!2039156 (= e!1287487 (inv!29598 t!4319))))

(assert (= (and d!624533 c!330353) b!2039154))

(assert (= (and d!624533 (not c!330353)) b!2039155))

(assert (= (and b!2039155 (not res!894001)) b!2039156))

(declare-fun m!2482769 () Bool)

(assert (=> b!2039154 m!2482769))

(declare-fun m!2482771 () Bool)

(assert (=> b!2039156 m!2482771))

(assert (=> start!200960 d!624533))

(declare-fun d!624535 () Bool)

(declare-fun c!330354 () Bool)

(assert (=> d!624535 (= c!330354 ((_ is Node!7471) (left!17743 t!4319)))))

(declare-fun e!1287488 () Bool)

(assert (=> d!624535 (= (inv!29593 (left!17743 t!4319)) e!1287488)))

(declare-fun b!2039157 () Bool)

(assert (=> b!2039157 (= e!1287488 (inv!29597 (left!17743 t!4319)))))

(declare-fun b!2039158 () Bool)

(declare-fun e!1287489 () Bool)

(assert (=> b!2039158 (= e!1287488 e!1287489)))

(declare-fun res!894002 () Bool)

(assert (=> b!2039158 (= res!894002 (not ((_ is Leaf!10948) (left!17743 t!4319))))))

(assert (=> b!2039158 (=> res!894002 e!1287489)))

(declare-fun b!2039159 () Bool)

(assert (=> b!2039159 (= e!1287489 (inv!29598 (left!17743 t!4319)))))

(assert (= (and d!624535 c!330354) b!2039157))

(assert (= (and d!624535 (not c!330354)) b!2039158))

(assert (= (and b!2039158 (not res!894002)) b!2039159))

(declare-fun m!2482785 () Bool)

(assert (=> b!2039157 m!2482785))

(declare-fun m!2482789 () Bool)

(assert (=> b!2039159 m!2482789))

(assert (=> b!2038997 d!624535))

(declare-fun d!624537 () Bool)

(declare-fun c!330355 () Bool)

(assert (=> d!624537 (= c!330355 ((_ is Node!7471) (right!18073 t!4319)))))

(declare-fun e!1287490 () Bool)

(assert (=> d!624537 (= (inv!29593 (right!18073 t!4319)) e!1287490)))

(declare-fun b!2039160 () Bool)

(assert (=> b!2039160 (= e!1287490 (inv!29597 (right!18073 t!4319)))))

(declare-fun b!2039161 () Bool)

(declare-fun e!1287491 () Bool)

(assert (=> b!2039161 (= e!1287490 e!1287491)))

(declare-fun res!894003 () Bool)

(assert (=> b!2039161 (= res!894003 (not ((_ is Leaf!10948) (right!18073 t!4319))))))

(assert (=> b!2039161 (=> res!894003 e!1287491)))

(declare-fun b!2039162 () Bool)

(assert (=> b!2039162 (= e!1287491 (inv!29598 (right!18073 t!4319)))))

(assert (= (and d!624537 c!330355) b!2039160))

(assert (= (and d!624537 (not c!330355)) b!2039161))

(assert (= (and b!2039161 (not res!894003)) b!2039162))

(declare-fun m!2482791 () Bool)

(assert (=> b!2039160 m!2482791))

(declare-fun m!2482793 () Bool)

(assert (=> b!2039162 m!2482793))

(assert (=> b!2038997 d!624537))

(declare-fun d!624541 () Bool)

(assert (=> d!624541 (= (inv!29594 (xs!10373 t!4319)) (<= (size!17433 (innerList!7531 (xs!10373 t!4319))) 2147483647))))

(declare-fun bs!421463 () Bool)

(assert (= bs!421463 d!624541))

(declare-fun m!2482795 () Bool)

(assert (=> bs!421463 m!2482795))

(assert (=> b!2038998 d!624541))

(declare-fun d!624543 () Bool)

(declare-fun lt!765211 () Int)

(assert (=> d!624543 (>= lt!765211 0)))

(declare-fun e!1287505 () Int)

(assert (=> d!624543 (= lt!765211 e!1287505)))

(declare-fun c!330366 () Bool)

(assert (=> d!624543 (= c!330366 ((_ is Node!7471) (right!18073 t!4319)))))

(assert (=> d!624543 (= (ConcPrimitiveSize!22 (right!18073 t!4319)) lt!765211)))

(declare-fun b!2039189 () Bool)

(declare-fun e!1287506 () Int)

(assert (=> b!2039189 (= e!1287505 e!1287506)))

(declare-fun c!330365 () Bool)

(assert (=> b!2039189 (= c!330365 ((_ is Leaf!10948) (right!18073 t!4319)))))

(declare-fun b!2039190 () Bool)

(declare-fun call!125008 () Int)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> b!2039190 (= e!1287505 (+ 1 (ConcPrimitiveSize!22 (left!17743 (right!18073 t!4319))) (ConcPrimitiveSize!22 (right!18073 (right!18073 t!4319))) call!125008 (BigIntAbs!0 (cheight!7682 (right!18073 t!4319)))))))

(declare-fun b!2039191 () Bool)

(assert (=> b!2039191 (= e!1287506 0)))

(declare-fun bm!125003 () Bool)

(assert (=> bm!125003 (= call!125008 (BigIntAbs!0 (ite c!330366 (csize!15172 (right!18073 t!4319)) (csize!15173 (right!18073 t!4319)))))))

(declare-fun b!2039192 () Bool)

(declare-fun IArrayPrimitiveSize!21 (IArray!14947) Int)

(assert (=> b!2039192 (= e!1287506 (+ 1 (IArrayPrimitiveSize!21 (xs!10373 (right!18073 t!4319))) call!125008))))

(assert (= (and d!624543 c!330366) b!2039190))

(assert (= (and d!624543 (not c!330366)) b!2039189))

(assert (= (and b!2039189 c!330365) b!2039192))

(assert (= (and b!2039189 (not c!330365)) b!2039191))

(assert (= (or b!2039190 b!2039192) bm!125003))

(declare-fun m!2482821 () Bool)

(assert (=> b!2039190 m!2482821))

(declare-fun m!2482823 () Bool)

(assert (=> b!2039190 m!2482823))

(declare-fun m!2482825 () Bool)

(assert (=> b!2039190 m!2482825))

(declare-fun m!2482827 () Bool)

(assert (=> bm!125003 m!2482827))

(declare-fun m!2482829 () Bool)

(assert (=> b!2039192 m!2482829))

(assert (=> b!2038999 d!624543))

(declare-fun d!624549 () Bool)

(declare-fun lt!765212 () Int)

(assert (=> d!624549 (>= lt!765212 0)))

(declare-fun e!1287507 () Int)

(assert (=> d!624549 (= lt!765212 e!1287507)))

(declare-fun c!330368 () Bool)

(assert (=> d!624549 (= c!330368 ((_ is Node!7471) t!4319))))

(assert (=> d!624549 (= (ConcPrimitiveSize!22 t!4319) lt!765212)))

(declare-fun b!2039193 () Bool)

(declare-fun e!1287508 () Int)

(assert (=> b!2039193 (= e!1287507 e!1287508)))

(declare-fun c!330367 () Bool)

(assert (=> b!2039193 (= c!330367 ((_ is Leaf!10948) t!4319))))

(declare-fun b!2039194 () Bool)

(declare-fun call!125009 () Int)

(assert (=> b!2039194 (= e!1287507 (+ 1 (ConcPrimitiveSize!22 (left!17743 t!4319)) (ConcPrimitiveSize!22 (right!18073 t!4319)) call!125009 (BigIntAbs!0 (cheight!7682 t!4319))))))

(declare-fun b!2039195 () Bool)

(assert (=> b!2039195 (= e!1287508 0)))

(declare-fun bm!125004 () Bool)

(assert (=> bm!125004 (= call!125009 (BigIntAbs!0 (ite c!330368 (csize!15172 t!4319) (csize!15173 t!4319))))))

(declare-fun b!2039196 () Bool)

(assert (=> b!2039196 (= e!1287508 (+ 1 (IArrayPrimitiveSize!21 (xs!10373 t!4319)) call!125009))))

(assert (= (and d!624549 c!330368) b!2039194))

(assert (= (and d!624549 (not c!330368)) b!2039193))

(assert (= (and b!2039193 c!330367) b!2039196))

(assert (= (and b!2039193 (not c!330367)) b!2039195))

(assert (= (or b!2039194 b!2039196) bm!125004))

(declare-fun m!2482831 () Bool)

(assert (=> b!2039194 m!2482831))

(assert (=> b!2039194 m!2482617))

(declare-fun m!2482833 () Bool)

(assert (=> b!2039194 m!2482833))

(declare-fun m!2482835 () Bool)

(assert (=> bm!125004 m!2482835))

(declare-fun m!2482837 () Bool)

(assert (=> b!2039196 m!2482837))

(assert (=> b!2038999 d!624549))

(declare-fun e!1287541 () Bool)

(declare-fun lt!765224 () Conc!7471)

(declare-fun b!2039260 () Bool)

(assert (=> b!2039260 (= e!1287541 (= (list!9139 lt!765224) (filter!478 (list!9139 (left!17743 t!4319)) p!1489)))))

(declare-fun b!2039261 () Bool)

(declare-fun e!1287539 () Conc!7471)

(assert (=> b!2039261 (= e!1287539 (left!17743 t!4319))))

(declare-fun b!2039262 () Bool)

(declare-fun e!1287538 () Conc!7471)

(assert (=> b!2039262 (= e!1287538 Empty!7471)))

(declare-fun b!2039263 () Bool)

(declare-fun lt!765226 () IArray!14947)

(declare-fun size!17435 (IArray!14947) Int)

(assert (=> b!2039263 (= e!1287538 (Leaf!10948 lt!765226 (size!17435 lt!765226)))))

(declare-fun b!2039264 () Bool)

(declare-fun lt!765225 () Unit!36976)

(assert (=> b!2039264 (= lt!765225 (lemmaFilterConcat!30 (list!9139 (left!17743 (left!17743 t!4319))) (list!9139 (right!18073 (left!17743 t!4319))) p!1489))))

(declare-fun e!1287540 () Conc!7471)

(declare-fun ++!6053 (Conc!7471 Conc!7471) Conc!7471)

(assert (=> b!2039264 (= e!1287540 (++!6053 (filter!477 (left!17743 (left!17743 t!4319)) p!1489) (filter!477 (right!18073 (left!17743 t!4319)) p!1489)))))

(declare-fun d!624551 () Bool)

(assert (=> d!624551 e!1287541))

(declare-fun res!894037 () Bool)

(assert (=> d!624551 (=> (not res!894037) (not e!1287541))))

(assert (=> d!624551 (= res!894037 (isBalanced!2349 lt!765224))))

(assert (=> d!624551 (= lt!765224 e!1287539)))

(declare-fun c!330388 () Bool)

(assert (=> d!624551 (= c!330388 ((_ is Empty!7471) (left!17743 t!4319)))))

(assert (=> d!624551 (isBalanced!2349 (left!17743 t!4319))))

(assert (=> d!624551 (= (filter!477 (left!17743 t!4319) p!1489) lt!765224)))

(declare-fun b!2039265 () Bool)

(assert (=> b!2039265 (= e!1287539 e!1287540)))

(declare-fun c!330389 () Bool)

(assert (=> b!2039265 (= c!330389 ((_ is Leaf!10948) (left!17743 t!4319)))))

(declare-fun b!2039266 () Bool)

(declare-fun c!330387 () Bool)

(assert (=> b!2039266 (= c!330387 (= (size!17435 lt!765226) 0))))

(declare-fun filter!480 (IArray!14947 Int) IArray!14947)

(assert (=> b!2039266 (= lt!765226 (filter!480 (xs!10373 (left!17743 t!4319)) p!1489))))

(assert (=> b!2039266 (= e!1287540 e!1287538)))

(assert (= (and d!624551 c!330388) b!2039261))

(assert (= (and d!624551 (not c!330388)) b!2039265))

(assert (= (and b!2039265 c!330389) b!2039266))

(assert (= (and b!2039265 (not c!330389)) b!2039264))

(assert (= (and b!2039266 c!330387) b!2039262))

(assert (= (and b!2039266 (not c!330387)) b!2039263))

(assert (= (and d!624551 res!894037) b!2039260))

(declare-fun m!2482891 () Bool)

(assert (=> b!2039266 m!2482891))

(declare-fun m!2482893 () Bool)

(assert (=> b!2039266 m!2482893))

(declare-fun m!2482895 () Bool)

(assert (=> b!2039260 m!2482895))

(assert (=> b!2039260 m!2482599))

(assert (=> b!2039260 m!2482599))

(declare-fun m!2482897 () Bool)

(assert (=> b!2039260 m!2482897))

(declare-fun m!2482899 () Bool)

(assert (=> b!2039264 m!2482899))

(assert (=> b!2039264 m!2482675))

(assert (=> b!2039264 m!2482675))

(assert (=> b!2039264 m!2482677))

(declare-fun m!2482901 () Bool)

(assert (=> b!2039264 m!2482901))

(declare-fun m!2482903 () Bool)

(assert (=> b!2039264 m!2482903))

(assert (=> b!2039264 m!2482677))

(assert (=> b!2039264 m!2482899))

(assert (=> b!2039264 m!2482903))

(declare-fun m!2482905 () Bool)

(assert (=> b!2039264 m!2482905))

(declare-fun m!2482907 () Bool)

(assert (=> d!624551 m!2482907))

(assert (=> d!624551 m!2482767))

(assert (=> b!2039263 m!2482891))

(assert (=> b!2038999 d!624551))

(declare-fun b!2039285 () Bool)

(declare-fun e!1287552 () Bool)

(declare-fun tp_is_empty!9279 () Bool)

(declare-fun tp!605257 () Bool)

(assert (=> b!2039285 (= e!1287552 (and tp_is_empty!9279 tp!605257))))

(assert (=> b!2038995 (= tp!605239 e!1287552)))

(assert (= (and b!2038995 ((_ is Cons!22279) (innerList!7531 (xs!10373 t!4319)))) b!2039285))

(declare-fun tp!605268 () Bool)

(declare-fun tp!605267 () Bool)

(declare-fun e!1287560 () Bool)

(declare-fun b!2039297 () Bool)

(assert (=> b!2039297 (= e!1287560 (and (inv!29593 (left!17743 (left!17743 t!4319))) tp!605267 (inv!29593 (right!18073 (left!17743 t!4319))) tp!605268))))

(declare-fun b!2039299 () Bool)

(declare-fun e!1287561 () Bool)

(declare-fun tp!605269 () Bool)

(assert (=> b!2039299 (= e!1287561 tp!605269)))

(declare-fun b!2039298 () Bool)

(assert (=> b!2039298 (= e!1287560 (and (inv!29594 (xs!10373 (left!17743 t!4319))) e!1287561))))

(assert (=> b!2038997 (= tp!605240 (and (inv!29593 (left!17743 t!4319)) e!1287560))))

(assert (= (and b!2038997 ((_ is Node!7471) (left!17743 t!4319))) b!2039297))

(assert (= b!2039298 b!2039299))

(assert (= (and b!2038997 ((_ is Leaf!10948) (left!17743 t!4319))) b!2039298))

(declare-fun m!2482921 () Bool)

(assert (=> b!2039297 m!2482921))

(declare-fun m!2482923 () Bool)

(assert (=> b!2039297 m!2482923))

(declare-fun m!2482925 () Bool)

(assert (=> b!2039298 m!2482925))

(assert (=> b!2038997 m!2482613))

(declare-fun b!2039300 () Bool)

(declare-fun tp!605271 () Bool)

(declare-fun e!1287562 () Bool)

(declare-fun tp!605270 () Bool)

(assert (=> b!2039300 (= e!1287562 (and (inv!29593 (left!17743 (right!18073 t!4319))) tp!605270 (inv!29593 (right!18073 (right!18073 t!4319))) tp!605271))))

(declare-fun b!2039302 () Bool)

(declare-fun e!1287563 () Bool)

(declare-fun tp!605272 () Bool)

(assert (=> b!2039302 (= e!1287563 tp!605272)))

(declare-fun b!2039301 () Bool)

(assert (=> b!2039301 (= e!1287562 (and (inv!29594 (xs!10373 (right!18073 t!4319))) e!1287563))))

(assert (=> b!2038997 (= tp!605241 (and (inv!29593 (right!18073 t!4319)) e!1287562))))

(assert (= (and b!2038997 ((_ is Node!7471) (right!18073 t!4319))) b!2039300))

(assert (= b!2039301 b!2039302))

(assert (= (and b!2038997 ((_ is Leaf!10948) (right!18073 t!4319))) b!2039301))

(declare-fun m!2482927 () Bool)

(assert (=> b!2039300 m!2482927))

(declare-fun m!2482929 () Bool)

(assert (=> b!2039300 m!2482929))

(declare-fun m!2482931 () Bool)

(assert (=> b!2039301 m!2482931))

(assert (=> b!2038997 m!2482615))

(declare-fun b_lambda!68959 () Bool)

(assert (= b_lambda!68943 (or (and start!200960 b_free!56831) b_lambda!68959)))

(declare-fun b_lambda!68961 () Bool)

(assert (= b_lambda!68945 (or (and start!200960 b_free!56831) b_lambda!68961)))

(declare-fun b_lambda!68963 () Bool)

(assert (= b_lambda!68941 (or (and start!200960 b_free!56831) b_lambda!68963)))

(check-sat (not b!2039260) (not b!2039263) (not b!2039032) (not b!2039196) (not b!2039301) (not d!624541) (not b!2039061) (not d!624551) (not b!2039022) (not b!2039156) (not bm!125003) (not d!624501) (not b!2039190) (not b!2039302) (not b!2039098) (not b!2039054) (not b!2038997) (not b!2039300) (not b!2039127) (not bm!125004) (not b!2039126) (not bm!124992) (not b!2039094) (not b!2039264) tp_is_empty!9279 (not b_lambda!68961) (not b!2039298) (not bm!124996) (not b!2039299) (not b!2039128) (not b!2039062) (not b!2039160) (not b!2039194) (not b!2039266) (not b_lambda!68959) (not b_next!57535) (not b!2039026) (not bm!124993) (not d!624521) (not b!2039157) (not b!2039159) (not b!2039129) (not d!624523) (not d!624511) (not d!624507) (not b!2039124) (not b!2039097) (not b!2039162) b_and!162721 (not b!2039052) (not b!2039058) (not b!2039125) (not b!2039297) (not b!2039192) (not b!2039028) (not b_lambda!68963) (not d!624517) (not b!2039093) (not b!2039285) (not b!2039051) (not b!2039154))
(check-sat b_and!162721 (not b_next!57535))
(get-model)

(declare-fun d!624565 () Bool)

(declare-fun res!894042 () Bool)

(declare-fun e!1287568 () Bool)

(assert (=> d!624565 (=> res!894042 e!1287568)))

(assert (=> d!624565 (= res!894042 ((_ is Nil!22279) lt!765182))))

(assert (=> d!624565 (= (forall!4757 lt!765182 p!1489) e!1287568)))

(declare-fun b!2039307 () Bool)

(declare-fun e!1287569 () Bool)

(assert (=> b!2039307 (= e!1287568 e!1287569)))

(declare-fun res!894043 () Bool)

(assert (=> b!2039307 (=> (not res!894043) (not e!1287569))))

(assert (=> b!2039307 (= res!894043 (dynLambda!11107 p!1489 (h!27680 lt!765182)))))

(declare-fun b!2039308 () Bool)

(assert (=> b!2039308 (= e!1287569 (forall!4757 (t!191396 lt!765182) p!1489))))

(assert (= (and d!624565 (not res!894042)) b!2039307))

(assert (= (and b!2039307 res!894043) b!2039308))

(declare-fun b_lambda!68965 () Bool)

(assert (=> (not b_lambda!68965) (not b!2039307)))

(declare-fun t!191416 () Bool)

(declare-fun tb!128937 () Bool)

(assert (=> (and start!200960 (= p!1489 p!1489) t!191416) tb!128937))

(declare-fun result!154256 () Bool)

(assert (=> tb!128937 (= result!154256 true)))

(assert (=> b!2039307 t!191416))

(declare-fun b_and!162729 () Bool)

(assert (= b_and!162721 (and (=> t!191416 result!154256) b_and!162729)))

(declare-fun m!2482933 () Bool)

(assert (=> b!2039307 m!2482933))

(declare-fun m!2482935 () Bool)

(assert (=> b!2039308 m!2482935))

(assert (=> b!2039032 d!624565))

(declare-fun d!624567 () Bool)

(declare-fun res!894048 () Bool)

(declare-fun e!1287572 () Bool)

(assert (=> d!624567 (=> (not res!894048) (not e!1287572))))

(assert (=> d!624567 (= res!894048 (<= (size!17433 (list!9140 (xs!10373 (left!17743 t!4319)))) 512))))

(assert (=> d!624567 (= (inv!29598 (left!17743 t!4319)) e!1287572)))

(declare-fun b!2039313 () Bool)

(declare-fun res!894049 () Bool)

(assert (=> b!2039313 (=> (not res!894049) (not e!1287572))))

(assert (=> b!2039313 (= res!894049 (= (csize!15173 (left!17743 t!4319)) (size!17433 (list!9140 (xs!10373 (left!17743 t!4319))))))))

(declare-fun b!2039314 () Bool)

(assert (=> b!2039314 (= e!1287572 (and (> (csize!15173 (left!17743 t!4319)) 0) (<= (csize!15173 (left!17743 t!4319)) 512)))))

(assert (= (and d!624567 res!894048) b!2039313))

(assert (= (and b!2039313 res!894049) b!2039314))

(assert (=> d!624567 m!2482681))

(assert (=> d!624567 m!2482681))

(declare-fun m!2482937 () Bool)

(assert (=> d!624567 m!2482937))

(assert (=> b!2039313 m!2482681))

(assert (=> b!2039313 m!2482681))

(assert (=> b!2039313 m!2482937))

(assert (=> b!2039159 d!624567))

(declare-fun d!624569 () Bool)

(declare-fun res!894050 () Bool)

(declare-fun e!1287573 () Bool)

(assert (=> d!624569 (=> res!894050 e!1287573)))

(assert (=> d!624569 (= res!894050 ((_ is Nil!22279) lt!765181))))

(assert (=> d!624569 (= (forall!4757 lt!765181 p!1489) e!1287573)))

(declare-fun b!2039315 () Bool)

(declare-fun e!1287574 () Bool)

(assert (=> b!2039315 (= e!1287573 e!1287574)))

(declare-fun res!894051 () Bool)

(assert (=> b!2039315 (=> (not res!894051) (not e!1287574))))

(assert (=> b!2039315 (= res!894051 (dynLambda!11107 p!1489 (h!27680 lt!765181)))))

(declare-fun b!2039316 () Bool)

(assert (=> b!2039316 (= e!1287574 (forall!4757 (t!191396 lt!765181) p!1489))))

(assert (= (and d!624569 (not res!894050)) b!2039315))

(assert (= (and b!2039315 res!894051) b!2039316))

(declare-fun b_lambda!68967 () Bool)

(assert (=> (not b_lambda!68967) (not b!2039315)))

(declare-fun t!191418 () Bool)

(declare-fun tb!128939 () Bool)

(assert (=> (and start!200960 (= p!1489 p!1489) t!191418) tb!128939))

(declare-fun result!154258 () Bool)

(assert (=> tb!128939 (= result!154258 true)))

(assert (=> b!2039315 t!191418))

(declare-fun b_and!162731 () Bool)

(assert (= b_and!162729 (and (=> t!191418 result!154258) b_and!162731)))

(declare-fun m!2482939 () Bool)

(assert (=> b!2039315 m!2482939))

(declare-fun m!2482941 () Bool)

(assert (=> b!2039316 m!2482941))

(assert (=> b!2039026 d!624569))

(declare-fun d!624571 () Bool)

(declare-fun res!894052 () Bool)

(declare-fun e!1287575 () Bool)

(assert (=> d!624571 (=> (not res!894052) (not e!1287575))))

(assert (=> d!624571 (= res!894052 (<= (size!17433 (list!9140 (xs!10373 t!4319))) 512))))

(assert (=> d!624571 (= (inv!29598 t!4319) e!1287575)))

(declare-fun b!2039317 () Bool)

(declare-fun res!894053 () Bool)

(assert (=> b!2039317 (=> (not res!894053) (not e!1287575))))

(assert (=> b!2039317 (= res!894053 (= (csize!15173 t!4319) (size!17433 (list!9140 (xs!10373 t!4319)))))))

(declare-fun b!2039318 () Bool)

(assert (=> b!2039318 (= e!1287575 (and (> (csize!15173 t!4319) 0) (<= (csize!15173 t!4319) 512)))))

(assert (= (and d!624571 res!894052) b!2039317))

(assert (= (and b!2039317 res!894053) b!2039318))

(declare-fun m!2482943 () Bool)

(assert (=> d!624571 m!2482943))

(assert (=> d!624571 m!2482943))

(declare-fun m!2482945 () Bool)

(assert (=> d!624571 m!2482945))

(assert (=> b!2039317 m!2482943))

(assert (=> b!2039317 m!2482943))

(assert (=> b!2039317 m!2482945))

(assert (=> b!2039156 d!624571))

(declare-fun d!624573 () Bool)

(declare-fun res!894060 () Bool)

(declare-fun e!1287578 () Bool)

(assert (=> d!624573 (=> (not res!894060) (not e!1287578))))

(declare-fun size!17436 (Conc!7471) Int)

(assert (=> d!624573 (= res!894060 (= (csize!15172 (left!17743 t!4319)) (+ (size!17436 (left!17743 (left!17743 t!4319))) (size!17436 (right!18073 (left!17743 t!4319))))))))

(assert (=> d!624573 (= (inv!29597 (left!17743 t!4319)) e!1287578)))

(declare-fun b!2039325 () Bool)

(declare-fun res!894061 () Bool)

(assert (=> b!2039325 (=> (not res!894061) (not e!1287578))))

(assert (=> b!2039325 (= res!894061 (and (not (= (left!17743 (left!17743 t!4319)) Empty!7471)) (not (= (right!18073 (left!17743 t!4319)) Empty!7471))))))

(declare-fun b!2039326 () Bool)

(declare-fun res!894062 () Bool)

(assert (=> b!2039326 (=> (not res!894062) (not e!1287578))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2039326 (= res!894062 (= (cheight!7682 (left!17743 t!4319)) (+ (max!0 (height!1170 (left!17743 (left!17743 t!4319))) (height!1170 (right!18073 (left!17743 t!4319)))) 1)))))

(declare-fun b!2039327 () Bool)

(assert (=> b!2039327 (= e!1287578 (<= 0 (cheight!7682 (left!17743 t!4319))))))

(assert (= (and d!624573 res!894060) b!2039325))

(assert (= (and b!2039325 res!894061) b!2039326))

(assert (= (and b!2039326 res!894062) b!2039327))

(declare-fun m!2482947 () Bool)

(assert (=> d!624573 m!2482947))

(declare-fun m!2482949 () Bool)

(assert (=> d!624573 m!2482949))

(declare-fun m!2482951 () Bool)

(assert (=> b!2039326 m!2482951))

(declare-fun m!2482953 () Bool)

(assert (=> b!2039326 m!2482953))

(assert (=> b!2039326 m!2482951))

(assert (=> b!2039326 m!2482953))

(declare-fun m!2482955 () Bool)

(assert (=> b!2039326 m!2482955))

(assert (=> b!2039157 d!624573))

(declare-fun d!624575 () Bool)

(assert (=> d!624575 (= (list!9140 (xs!10373 (left!17743 t!4319))) (innerList!7531 (xs!10373 (left!17743 t!4319))))))

(assert (=> b!2039051 d!624575))

(assert (=> b!2038997 d!624535))

(assert (=> b!2038997 d!624537))

(declare-fun b!2039330 () Bool)

(declare-fun res!894064 () Bool)

(declare-fun e!1287579 () Bool)

(assert (=> b!2039330 (=> (not res!894064) (not e!1287579))))

(declare-fun lt!765227 () List!22361)

(assert (=> b!2039330 (= res!894064 (= (size!17433 lt!765227) (+ (size!17433 (list!9139 (left!17743 (right!18073 t!4319)))) (size!17433 (list!9139 (right!18073 (right!18073 t!4319)))))))))

(declare-fun b!2039328 () Bool)

(declare-fun e!1287580 () List!22361)

(assert (=> b!2039328 (= e!1287580 (list!9139 (right!18073 (right!18073 t!4319))))))

(declare-fun b!2039331 () Bool)

(assert (=> b!2039331 (= e!1287579 (or (not (= (list!9139 (right!18073 (right!18073 t!4319))) Nil!22279)) (= lt!765227 (list!9139 (left!17743 (right!18073 t!4319))))))))

(declare-fun b!2039329 () Bool)

(assert (=> b!2039329 (= e!1287580 (Cons!22279 (h!27680 (list!9139 (left!17743 (right!18073 t!4319)))) (++!6051 (t!191396 (list!9139 (left!17743 (right!18073 t!4319)))) (list!9139 (right!18073 (right!18073 t!4319))))))))

(declare-fun d!624577 () Bool)

(assert (=> d!624577 e!1287579))

(declare-fun res!894063 () Bool)

(assert (=> d!624577 (=> (not res!894063) (not e!1287579))))

(assert (=> d!624577 (= res!894063 (= (content!3310 lt!765227) ((_ map or) (content!3310 (list!9139 (left!17743 (right!18073 t!4319)))) (content!3310 (list!9139 (right!18073 (right!18073 t!4319)))))))))

(assert (=> d!624577 (= lt!765227 e!1287580)))

(declare-fun c!330390 () Bool)

(assert (=> d!624577 (= c!330390 ((_ is Nil!22279) (list!9139 (left!17743 (right!18073 t!4319)))))))

(assert (=> d!624577 (= (++!6051 (list!9139 (left!17743 (right!18073 t!4319))) (list!9139 (right!18073 (right!18073 t!4319)))) lt!765227)))

(assert (= (and d!624577 c!330390) b!2039328))

(assert (= (and d!624577 (not c!330390)) b!2039329))

(assert (= (and d!624577 res!894063) b!2039330))

(assert (= (and b!2039330 res!894064) b!2039331))

(declare-fun m!2482957 () Bool)

(assert (=> b!2039330 m!2482957))

(assert (=> b!2039330 m!2482697))

(declare-fun m!2482959 () Bool)

(assert (=> b!2039330 m!2482959))

(assert (=> b!2039330 m!2482699))

(declare-fun m!2482961 () Bool)

(assert (=> b!2039330 m!2482961))

(assert (=> b!2039329 m!2482699))

(declare-fun m!2482963 () Bool)

(assert (=> b!2039329 m!2482963))

(declare-fun m!2482965 () Bool)

(assert (=> d!624577 m!2482965))

(assert (=> d!624577 m!2482697))

(declare-fun m!2482967 () Bool)

(assert (=> d!624577 m!2482967))

(assert (=> d!624577 m!2482699))

(declare-fun m!2482969 () Bool)

(assert (=> d!624577 m!2482969))

(assert (=> b!2039062 d!624577))

(declare-fun b!2039335 () Bool)

(declare-fun e!1287582 () List!22361)

(assert (=> b!2039335 (= e!1287582 (++!6051 (list!9139 (left!17743 (left!17743 (right!18073 t!4319)))) (list!9139 (right!18073 (left!17743 (right!18073 t!4319))))))))

(declare-fun b!2039332 () Bool)

(declare-fun e!1287581 () List!22361)

(assert (=> b!2039332 (= e!1287581 Nil!22279)))

(declare-fun b!2039334 () Bool)

(assert (=> b!2039334 (= e!1287582 (list!9140 (xs!10373 (left!17743 (right!18073 t!4319)))))))

(declare-fun b!2039333 () Bool)

(assert (=> b!2039333 (= e!1287581 e!1287582)))

(declare-fun c!330392 () Bool)

(assert (=> b!2039333 (= c!330392 ((_ is Leaf!10948) (left!17743 (right!18073 t!4319))))))

(declare-fun d!624579 () Bool)

(declare-fun c!330391 () Bool)

(assert (=> d!624579 (= c!330391 ((_ is Empty!7471) (left!17743 (right!18073 t!4319))))))

(assert (=> d!624579 (= (list!9139 (left!17743 (right!18073 t!4319))) e!1287581)))

(assert (= (and d!624579 c!330391) b!2039332))

(assert (= (and d!624579 (not c!330391)) b!2039333))

(assert (= (and b!2039333 c!330392) b!2039334))

(assert (= (and b!2039333 (not c!330392)) b!2039335))

(declare-fun m!2482971 () Bool)

(assert (=> b!2039335 m!2482971))

(declare-fun m!2482973 () Bool)

(assert (=> b!2039335 m!2482973))

(assert (=> b!2039335 m!2482971))

(assert (=> b!2039335 m!2482973))

(declare-fun m!2482975 () Bool)

(assert (=> b!2039335 m!2482975))

(declare-fun m!2482977 () Bool)

(assert (=> b!2039334 m!2482977))

(assert (=> b!2039062 d!624579))

(declare-fun b!2039339 () Bool)

(declare-fun e!1287584 () List!22361)

(assert (=> b!2039339 (= e!1287584 (++!6051 (list!9139 (left!17743 (right!18073 (right!18073 t!4319)))) (list!9139 (right!18073 (right!18073 (right!18073 t!4319))))))))

(declare-fun b!2039336 () Bool)

(declare-fun e!1287583 () List!22361)

(assert (=> b!2039336 (= e!1287583 Nil!22279)))

(declare-fun b!2039338 () Bool)

(assert (=> b!2039338 (= e!1287584 (list!9140 (xs!10373 (right!18073 (right!18073 t!4319)))))))

(declare-fun b!2039337 () Bool)

(assert (=> b!2039337 (= e!1287583 e!1287584)))

(declare-fun c!330394 () Bool)

(assert (=> b!2039337 (= c!330394 ((_ is Leaf!10948) (right!18073 (right!18073 t!4319))))))

(declare-fun d!624581 () Bool)

(declare-fun c!330393 () Bool)

(assert (=> d!624581 (= c!330393 ((_ is Empty!7471) (right!18073 (right!18073 t!4319))))))

(assert (=> d!624581 (= (list!9139 (right!18073 (right!18073 t!4319))) e!1287583)))

(assert (= (and d!624581 c!330393) b!2039336))

(assert (= (and d!624581 (not c!330393)) b!2039337))

(assert (= (and b!2039337 c!330394) b!2039338))

(assert (= (and b!2039337 (not c!330394)) b!2039339))

(declare-fun m!2482979 () Bool)

(assert (=> b!2039339 m!2482979))

(declare-fun m!2482981 () Bool)

(assert (=> b!2039339 m!2482981))

(assert (=> b!2039339 m!2482979))

(assert (=> b!2039339 m!2482981))

(declare-fun m!2482983 () Bool)

(assert (=> b!2039339 m!2482983))

(declare-fun m!2482985 () Bool)

(assert (=> b!2039338 m!2482985))

(assert (=> b!2039062 d!624581))

(declare-fun b!2039342 () Bool)

(declare-fun res!894066 () Bool)

(declare-fun e!1287585 () Bool)

(assert (=> b!2039342 (=> (not res!894066) (not e!1287585))))

(declare-fun lt!765228 () List!22361)

(assert (=> b!2039342 (= res!894066 (= (size!17433 lt!765228) (+ (size!17433 (t!191396 (filter!478 lt!765175 p!1489))) (size!17433 (filter!478 lt!765176 p!1489)))))))

(declare-fun b!2039340 () Bool)

(declare-fun e!1287586 () List!22361)

(assert (=> b!2039340 (= e!1287586 (filter!478 lt!765176 p!1489))))

(declare-fun b!2039343 () Bool)

(assert (=> b!2039343 (= e!1287585 (or (not (= (filter!478 lt!765176 p!1489) Nil!22279)) (= lt!765228 (t!191396 (filter!478 lt!765175 p!1489)))))))

(declare-fun b!2039341 () Bool)

(assert (=> b!2039341 (= e!1287586 (Cons!22279 (h!27680 (t!191396 (filter!478 lt!765175 p!1489))) (++!6051 (t!191396 (t!191396 (filter!478 lt!765175 p!1489))) (filter!478 lt!765176 p!1489))))))

(declare-fun d!624583 () Bool)

(assert (=> d!624583 e!1287585))

(declare-fun res!894065 () Bool)

(assert (=> d!624583 (=> (not res!894065) (not e!1287585))))

(assert (=> d!624583 (= res!894065 (= (content!3310 lt!765228) ((_ map or) (content!3310 (t!191396 (filter!478 lt!765175 p!1489))) (content!3310 (filter!478 lt!765176 p!1489)))))))

(assert (=> d!624583 (= lt!765228 e!1287586)))

(declare-fun c!330395 () Bool)

(assert (=> d!624583 (= c!330395 ((_ is Nil!22279) (t!191396 (filter!478 lt!765175 p!1489))))))

(assert (=> d!624583 (= (++!6051 (t!191396 (filter!478 lt!765175 p!1489)) (filter!478 lt!765176 p!1489)) lt!765228)))

(assert (= (and d!624583 c!330395) b!2039340))

(assert (= (and d!624583 (not c!330395)) b!2039341))

(assert (= (and d!624583 res!894065) b!2039342))

(assert (= (and b!2039342 res!894066) b!2039343))

(declare-fun m!2482987 () Bool)

(assert (=> b!2039342 m!2482987))

(declare-fun m!2482989 () Bool)

(assert (=> b!2039342 m!2482989))

(assert (=> b!2039342 m!2482605))

(assert (=> b!2039342 m!2482739))

(assert (=> b!2039341 m!2482605))

(declare-fun m!2482991 () Bool)

(assert (=> b!2039341 m!2482991))

(declare-fun m!2482993 () Bool)

(assert (=> d!624583 m!2482993))

(declare-fun m!2482995 () Bool)

(assert (=> d!624583 m!2482995))

(assert (=> d!624583 m!2482605))

(assert (=> d!624583 m!2482747))

(assert (=> b!2039097 d!624583))

(declare-fun d!624585 () Bool)

(assert (=> d!624585 (= (inv!29594 (xs!10373 (left!17743 t!4319))) (<= (size!17433 (innerList!7531 (xs!10373 (left!17743 t!4319)))) 2147483647))))

(declare-fun bs!421465 () Bool)

(assert (= bs!421465 d!624585))

(declare-fun m!2482997 () Bool)

(assert (=> bs!421465 m!2482997))

(assert (=> b!2039298 d!624585))

(declare-fun d!624587 () Bool)

(declare-fun lt!765231 () Bool)

(declare-fun isEmpty!13938 (List!22361) Bool)

(assert (=> d!624587 (= lt!765231 (isEmpty!13938 (list!9139 (right!18073 t!4319))))))

(assert (=> d!624587 (= lt!765231 (= (size!17436 (right!18073 t!4319)) 0))))

(assert (=> d!624587 (= (isEmpty!13936 (right!18073 t!4319)) lt!765231)))

(declare-fun bs!421466 () Bool)

(assert (= bs!421466 d!624587))

(assert (=> bs!421466 m!2482609))

(assert (=> bs!421466 m!2482609))

(declare-fun m!2482999 () Bool)

(assert (=> bs!421466 m!2482999))

(declare-fun m!2483001 () Bool)

(assert (=> bs!421466 m!2483001))

(assert (=> b!2039129 d!624587))

(declare-fun d!624589 () Bool)

(declare-fun c!330398 () Bool)

(assert (=> d!624589 (= c!330398 ((_ is Nil!22279) lt!765182))))

(declare-fun e!1287589 () (InoxSet T!36018))

(assert (=> d!624589 (= (content!3310 lt!765182) e!1287589)))

(declare-fun b!2039348 () Bool)

(assert (=> b!2039348 (= e!1287589 ((as const (Array T!36018 Bool)) false))))

(declare-fun b!2039349 () Bool)

(assert (=> b!2039349 (= e!1287589 ((_ map or) (store ((as const (Array T!36018 Bool)) false) (h!27680 lt!765182) true) (content!3310 (t!191396 lt!765182))))))

(assert (= (and d!624589 c!330398) b!2039348))

(assert (= (and d!624589 (not c!330398)) b!2039349))

(declare-fun m!2483003 () Bool)

(assert (=> b!2039349 m!2483003))

(declare-fun m!2483005 () Bool)

(assert (=> b!2039349 m!2483005))

(assert (=> b!2039028 d!624589))

(declare-fun d!624591 () Bool)

(declare-fun c!330399 () Bool)

(assert (=> d!624591 (= c!330399 ((_ is Nil!22279) lt!765175))))

(declare-fun e!1287590 () (InoxSet T!36018))

(assert (=> d!624591 (= (content!3310 lt!765175) e!1287590)))

(declare-fun b!2039350 () Bool)

(assert (=> b!2039350 (= e!1287590 ((as const (Array T!36018 Bool)) false))))

(declare-fun b!2039351 () Bool)

(assert (=> b!2039351 (= e!1287590 ((_ map or) (store ((as const (Array T!36018 Bool)) false) (h!27680 lt!765175) true) (content!3310 (t!191396 lt!765175))))))

(assert (= (and d!624591 c!330399) b!2039350))

(assert (= (and d!624591 (not c!330399)) b!2039351))

(declare-fun m!2483007 () Bool)

(assert (=> b!2039351 m!2483007))

(declare-fun m!2483009 () Bool)

(assert (=> b!2039351 m!2483009))

(assert (=> b!2039028 d!624591))

(declare-fun d!624593 () Bool)

(declare-fun c!330400 () Bool)

(assert (=> d!624593 (= c!330400 ((_ is Nil!22279) lt!765181))))

(declare-fun e!1287591 () (InoxSet T!36018))

(assert (=> d!624593 (= (content!3310 lt!765181) e!1287591)))

(declare-fun b!2039352 () Bool)

(assert (=> b!2039352 (= e!1287591 ((as const (Array T!36018 Bool)) false))))

(declare-fun b!2039353 () Bool)

(assert (=> b!2039353 (= e!1287591 ((_ map or) (store ((as const (Array T!36018 Bool)) false) (h!27680 lt!765181) true) (content!3310 (t!191396 lt!765181))))))

(assert (= (and d!624593 c!330400) b!2039352))

(assert (= (and d!624593 (not c!330400)) b!2039353))

(declare-fun m!2483011 () Bool)

(assert (=> b!2039353 m!2483011))

(declare-fun m!2483013 () Bool)

(assert (=> b!2039353 m!2483013))

(assert (=> b!2039022 d!624593))

(declare-fun d!624595 () Bool)

(declare-fun c!330401 () Bool)

(assert (=> d!624595 (= c!330401 ((_ is Nil!22279) (++!6051 lt!765175 lt!765176)))))

(declare-fun e!1287592 () (InoxSet T!36018))

(assert (=> d!624595 (= (content!3310 (++!6051 lt!765175 lt!765176)) e!1287592)))

(declare-fun b!2039354 () Bool)

(assert (=> b!2039354 (= e!1287592 ((as const (Array T!36018 Bool)) false))))

(declare-fun b!2039355 () Bool)

(assert (=> b!2039355 (= e!1287592 ((_ map or) (store ((as const (Array T!36018 Bool)) false) (h!27680 (++!6051 lt!765175 lt!765176)) true) (content!3310 (t!191396 (++!6051 lt!765175 lt!765176)))))))

(assert (= (and d!624595 c!330401) b!2039354))

(assert (= (and d!624595 (not c!330401)) b!2039355))

(declare-fun m!2483015 () Bool)

(assert (=> b!2039355 m!2483015))

(declare-fun m!2483017 () Bool)

(assert (=> b!2039355 m!2483017))

(assert (=> b!2039022 d!624595))

(declare-fun d!624597 () Bool)

(declare-fun lt!765234 () Int)

(assert (=> d!624597 (>= lt!765234 0)))

(declare-fun e!1287595 () Int)

(assert (=> d!624597 (= lt!765234 e!1287595)))

(declare-fun c!330404 () Bool)

(assert (=> d!624597 (= c!330404 ((_ is Nil!22279) lt!765188))))

(assert (=> d!624597 (= (size!17433 lt!765188) lt!765234)))

(declare-fun b!2039360 () Bool)

(assert (=> b!2039360 (= e!1287595 0)))

(declare-fun b!2039361 () Bool)

(assert (=> b!2039361 (= e!1287595 (+ 1 (size!17433 (t!191396 lt!765188))))))

(assert (= (and d!624597 c!330404) b!2039360))

(assert (= (and d!624597 (not c!330404)) b!2039361))

(declare-fun m!2483019 () Bool)

(assert (=> b!2039361 m!2483019))

(assert (=> d!624517 d!624597))

(declare-fun d!624599 () Bool)

(declare-fun lt!765235 () Int)

(assert (=> d!624599 (>= lt!765235 0)))

(declare-fun e!1287596 () Int)

(assert (=> d!624599 (= lt!765235 e!1287596)))

(declare-fun c!330405 () Bool)

(assert (=> d!624599 (= c!330405 ((_ is Nil!22279) lt!765176))))

(assert (=> d!624599 (= (size!17433 lt!765176) lt!765235)))

(declare-fun b!2039362 () Bool)

(assert (=> b!2039362 (= e!1287596 0)))

(declare-fun b!2039363 () Bool)

(assert (=> b!2039363 (= e!1287596 (+ 1 (size!17433 (t!191396 lt!765176))))))

(assert (= (and d!624599 c!330405) b!2039362))

(assert (= (and d!624599 (not c!330405)) b!2039363))

(declare-fun m!2483021 () Bool)

(assert (=> b!2039363 m!2483021))

(assert (=> d!624517 d!624599))

(declare-fun d!624601 () Bool)

(assert (=> d!624601 (= (BigIntAbs!0 (ite c!330368 (csize!15172 t!4319) (csize!15173 t!4319))) (ite (>= (ite c!330368 (csize!15172 t!4319) (csize!15173 t!4319)) 0) (ite c!330368 (csize!15172 t!4319) (csize!15173 t!4319)) (- (ite c!330368 (csize!15172 t!4319) (csize!15173 t!4319)))))))

(assert (=> bm!125004 d!624601))

(declare-fun d!624603 () Bool)

(declare-fun res!894067 () Bool)

(declare-fun e!1287597 () Bool)

(assert (=> d!624603 (=> (not res!894067) (not e!1287597))))

(assert (=> d!624603 (= res!894067 (= (csize!15172 t!4319) (+ (size!17436 (left!17743 t!4319)) (size!17436 (right!18073 t!4319)))))))

(assert (=> d!624603 (= (inv!29597 t!4319) e!1287597)))

(declare-fun b!2039364 () Bool)

(declare-fun res!894068 () Bool)

(assert (=> b!2039364 (=> (not res!894068) (not e!1287597))))

(assert (=> b!2039364 (= res!894068 (and (not (= (left!17743 t!4319) Empty!7471)) (not (= (right!18073 t!4319) Empty!7471))))))

(declare-fun b!2039365 () Bool)

(declare-fun res!894069 () Bool)

(assert (=> b!2039365 (=> (not res!894069) (not e!1287597))))

(assert (=> b!2039365 (= res!894069 (= (cheight!7682 t!4319) (+ (max!0 (height!1170 (left!17743 t!4319)) (height!1170 (right!18073 t!4319))) 1)))))

(declare-fun b!2039366 () Bool)

(assert (=> b!2039366 (= e!1287597 (<= 0 (cheight!7682 t!4319)))))

(assert (= (and d!624603 res!894067) b!2039364))

(assert (= (and b!2039364 res!894068) b!2039365))

(assert (= (and b!2039365 res!894069) b!2039366))

(declare-fun m!2483023 () Bool)

(assert (=> d!624603 m!2483023))

(assert (=> d!624603 m!2483001))

(assert (=> b!2039365 m!2482763))

(assert (=> b!2039365 m!2482765))

(assert (=> b!2039365 m!2482763))

(assert (=> b!2039365 m!2482765))

(declare-fun m!2483025 () Bool)

(assert (=> b!2039365 m!2483025))

(assert (=> b!2039154 d!624603))

(declare-fun d!624605 () Bool)

(declare-fun lt!765236 () Int)

(assert (=> d!624605 (>= lt!765236 0)))

(declare-fun e!1287598 () Int)

(assert (=> d!624605 (= lt!765236 e!1287598)))

(declare-fun c!330406 () Bool)

(assert (=> d!624605 (= c!330406 ((_ is Nil!22279) lt!765200))))

(assert (=> d!624605 (= (size!17433 lt!765200) lt!765236)))

(declare-fun b!2039367 () Bool)

(assert (=> b!2039367 (= e!1287598 0)))

(declare-fun b!2039368 () Bool)

(assert (=> b!2039368 (= e!1287598 (+ 1 (size!17433 (t!191396 lt!765200))))))

(assert (= (and d!624605 c!330406) b!2039367))

(assert (= (and d!624605 (not c!330406)) b!2039368))

(declare-fun m!2483027 () Bool)

(assert (=> b!2039368 m!2483027))

(assert (=> b!2039094 d!624605))

(declare-fun d!624607 () Bool)

(declare-fun lt!765237 () Int)

(assert (=> d!624607 (>= lt!765237 0)))

(declare-fun e!1287599 () Int)

(assert (=> d!624607 (= lt!765237 e!1287599)))

(declare-fun c!330407 () Bool)

(assert (=> d!624607 (= c!330407 ((_ is Nil!22279) lt!765175))))

(assert (=> d!624607 (= (size!17433 lt!765175) lt!765237)))

(declare-fun b!2039369 () Bool)

(assert (=> b!2039369 (= e!1287599 0)))

(declare-fun b!2039370 () Bool)

(assert (=> b!2039370 (= e!1287599 (+ 1 (size!17433 (t!191396 lt!765175))))))

(assert (= (and d!624607 c!330407) b!2039369))

(assert (= (and d!624607 (not c!330407)) b!2039370))

(declare-fun m!2483029 () Bool)

(assert (=> b!2039370 m!2483029))

(assert (=> b!2039094 d!624607))

(assert (=> b!2039094 d!624599))

(declare-fun d!624609 () Bool)

(declare-fun lt!765238 () Int)

(assert (=> d!624609 (>= lt!765238 0)))

(declare-fun e!1287600 () Int)

(assert (=> d!624609 (= lt!765238 e!1287600)))

(declare-fun c!330409 () Bool)

(assert (=> d!624609 (= c!330409 ((_ is Node!7471) (left!17743 t!4319)))))

(assert (=> d!624609 (= (ConcPrimitiveSize!22 (left!17743 t!4319)) lt!765238)))

(declare-fun b!2039371 () Bool)

(declare-fun e!1287601 () Int)

(assert (=> b!2039371 (= e!1287600 e!1287601)))

(declare-fun c!330408 () Bool)

(assert (=> b!2039371 (= c!330408 ((_ is Leaf!10948) (left!17743 t!4319)))))

(declare-fun b!2039372 () Bool)

(declare-fun call!125011 () Int)

(assert (=> b!2039372 (= e!1287600 (+ 1 (ConcPrimitiveSize!22 (left!17743 (left!17743 t!4319))) (ConcPrimitiveSize!22 (right!18073 (left!17743 t!4319))) call!125011 (BigIntAbs!0 (cheight!7682 (left!17743 t!4319)))))))

(declare-fun b!2039373 () Bool)

(assert (=> b!2039373 (= e!1287601 0)))

(declare-fun bm!125006 () Bool)

(assert (=> bm!125006 (= call!125011 (BigIntAbs!0 (ite c!330409 (csize!15172 (left!17743 t!4319)) (csize!15173 (left!17743 t!4319)))))))

(declare-fun b!2039374 () Bool)

(assert (=> b!2039374 (= e!1287601 (+ 1 (IArrayPrimitiveSize!21 (xs!10373 (left!17743 t!4319))) call!125011))))

(assert (= (and d!624609 c!330409) b!2039372))

(assert (= (and d!624609 (not c!330409)) b!2039371))

(assert (= (and b!2039371 c!330408) b!2039374))

(assert (= (and b!2039371 (not c!330408)) b!2039373))

(assert (= (or b!2039372 b!2039374) bm!125006))

(declare-fun m!2483031 () Bool)

(assert (=> b!2039372 m!2483031))

(declare-fun m!2483033 () Bool)

(assert (=> b!2039372 m!2483033))

(declare-fun m!2483035 () Bool)

(assert (=> b!2039372 m!2483035))

(declare-fun m!2483037 () Bool)

(assert (=> bm!125006 m!2483037))

(declare-fun m!2483039 () Bool)

(assert (=> b!2039374 m!2483039))

(assert (=> b!2039194 d!624609))

(assert (=> b!2039194 d!624543))

(declare-fun d!624611 () Bool)

(assert (=> d!624611 (= (BigIntAbs!0 (cheight!7682 t!4319)) (ite (>= (cheight!7682 t!4319) 0) (cheight!7682 t!4319) (- (cheight!7682 t!4319))))))

(assert (=> b!2039194 d!624611))

(declare-fun b!2039375 () Bool)

(declare-fun lt!765239 () Conc!7471)

(declare-fun e!1287605 () Bool)

(assert (=> b!2039375 (= e!1287605 (= (list!9139 lt!765239) (filter!478 (list!9139 (right!18073 (left!17743 t!4319))) p!1489)))))

(declare-fun b!2039376 () Bool)

(declare-fun e!1287603 () Conc!7471)

(assert (=> b!2039376 (= e!1287603 (right!18073 (left!17743 t!4319)))))

(declare-fun b!2039377 () Bool)

(declare-fun e!1287602 () Conc!7471)

(assert (=> b!2039377 (= e!1287602 Empty!7471)))

(declare-fun b!2039378 () Bool)

(declare-fun lt!765241 () IArray!14947)

(assert (=> b!2039378 (= e!1287602 (Leaf!10948 lt!765241 (size!17435 lt!765241)))))

(declare-fun b!2039379 () Bool)

(declare-fun lt!765240 () Unit!36976)

(assert (=> b!2039379 (= lt!765240 (lemmaFilterConcat!30 (list!9139 (left!17743 (right!18073 (left!17743 t!4319)))) (list!9139 (right!18073 (right!18073 (left!17743 t!4319)))) p!1489))))

(declare-fun e!1287604 () Conc!7471)

(assert (=> b!2039379 (= e!1287604 (++!6053 (filter!477 (left!17743 (right!18073 (left!17743 t!4319))) p!1489) (filter!477 (right!18073 (right!18073 (left!17743 t!4319))) p!1489)))))

(declare-fun d!624613 () Bool)

(assert (=> d!624613 e!1287605))

(declare-fun res!894070 () Bool)

(assert (=> d!624613 (=> (not res!894070) (not e!1287605))))

(assert (=> d!624613 (= res!894070 (isBalanced!2349 lt!765239))))

(assert (=> d!624613 (= lt!765239 e!1287603)))

(declare-fun c!330411 () Bool)

(assert (=> d!624613 (= c!330411 ((_ is Empty!7471) (right!18073 (left!17743 t!4319))))))

(assert (=> d!624613 (isBalanced!2349 (right!18073 (left!17743 t!4319)))))

(assert (=> d!624613 (= (filter!477 (right!18073 (left!17743 t!4319)) p!1489) lt!765239)))

(declare-fun b!2039380 () Bool)

(assert (=> b!2039380 (= e!1287603 e!1287604)))

(declare-fun c!330412 () Bool)

(assert (=> b!2039380 (= c!330412 ((_ is Leaf!10948) (right!18073 (left!17743 t!4319))))))

(declare-fun b!2039381 () Bool)

(declare-fun c!330410 () Bool)

(assert (=> b!2039381 (= c!330410 (= (size!17435 lt!765241) 0))))

(assert (=> b!2039381 (= lt!765241 (filter!480 (xs!10373 (right!18073 (left!17743 t!4319))) p!1489))))

(assert (=> b!2039381 (= e!1287604 e!1287602)))

(assert (= (and d!624613 c!330411) b!2039376))

(assert (= (and d!624613 (not c!330411)) b!2039380))

(assert (= (and b!2039380 c!330412) b!2039381))

(assert (= (and b!2039380 (not c!330412)) b!2039379))

(assert (= (and b!2039381 c!330410) b!2039377))

(assert (= (and b!2039381 (not c!330410)) b!2039378))

(assert (= (and d!624613 res!894070) b!2039375))

(declare-fun m!2483041 () Bool)

(assert (=> b!2039381 m!2483041))

(declare-fun m!2483043 () Bool)

(assert (=> b!2039381 m!2483043))

(declare-fun m!2483045 () Bool)

(assert (=> b!2039375 m!2483045))

(assert (=> b!2039375 m!2482677))

(assert (=> b!2039375 m!2482677))

(declare-fun m!2483047 () Bool)

(assert (=> b!2039375 m!2483047))

(declare-fun m!2483049 () Bool)

(assert (=> b!2039379 m!2483049))

(declare-fun m!2483051 () Bool)

(assert (=> b!2039379 m!2483051))

(assert (=> b!2039379 m!2483051))

(declare-fun m!2483053 () Bool)

(assert (=> b!2039379 m!2483053))

(declare-fun m!2483055 () Bool)

(assert (=> b!2039379 m!2483055))

(declare-fun m!2483057 () Bool)

(assert (=> b!2039379 m!2483057))

(assert (=> b!2039379 m!2483053))

(assert (=> b!2039379 m!2483049))

(assert (=> b!2039379 m!2483057))

(declare-fun m!2483059 () Bool)

(assert (=> b!2039379 m!2483059))

(declare-fun m!2483061 () Bool)

(assert (=> d!624613 m!2483061))

(declare-fun m!2483063 () Bool)

(assert (=> d!624613 m!2483063))

(assert (=> b!2039378 m!2483041))

(assert (=> b!2039264 d!624613))

(declare-fun b!2039446 () Bool)

(declare-fun c!330439 () Bool)

(declare-fun call!125048 () Int)

(declare-fun call!125045 () Int)

(assert (=> b!2039446 (= c!330439 (>= call!125048 call!125045))))

(declare-fun e!1287637 () Conc!7471)

(declare-fun e!1287646 () Conc!7471)

(assert (=> b!2039446 (= e!1287637 e!1287646)))

(declare-fun b!2039447 () Bool)

(declare-fun res!894085 () Bool)

(declare-fun e!1287640 () Bool)

(assert (=> b!2039447 (=> (not res!894085) (not e!1287640))))

(declare-fun lt!765262 () Conc!7471)

(assert (=> b!2039447 (= res!894085 (isBalanced!2349 lt!765262))))

(declare-fun b!2039448 () Bool)

(declare-fun e!1287645 () Conc!7471)

(declare-fun call!125055 () Conc!7471)

(assert (=> b!2039448 (= e!1287645 call!125055)))

(declare-fun c!330441 () Bool)

(declare-fun bm!125039 () Bool)

(declare-fun c!330445 () Bool)

(declare-fun call!125049 () Conc!7471)

(assert (=> bm!125039 (= call!125049 (++!6053 (ite c!330445 (ite c!330439 (right!18073 (filter!477 (left!17743 (left!17743 t!4319)) p!1489)) (right!18073 (right!18073 (filter!477 (left!17743 (left!17743 t!4319)) p!1489)))) (filter!477 (left!17743 (left!17743 t!4319)) p!1489)) (ite c!330445 (filter!477 (right!18073 (left!17743 t!4319)) p!1489) (ite c!330441 (left!17743 (filter!477 (right!18073 (left!17743 t!4319)) p!1489)) (left!17743 (left!17743 (filter!477 (right!18073 (left!17743 t!4319)) p!1489)))))))))

(declare-fun b!2039449 () Bool)

(declare-fun call!125057 () Conc!7471)

(assert (=> b!2039449 (= e!1287646 call!125057)))

(declare-fun bm!125040 () Bool)

(declare-fun call!125054 () Conc!7471)

(assert (=> bm!125040 (= call!125054 call!125057)))

(declare-fun b!2039450 () Bool)

(declare-fun e!1287639 () Conc!7471)

(declare-fun call!125052 () Conc!7471)

(assert (=> b!2039450 (= e!1287639 call!125052)))

(declare-fun bm!125041 () Bool)

(declare-fun call!125046 () Conc!7471)

(declare-fun call!125051 () Conc!7471)

(assert (=> bm!125041 (= call!125046 call!125051)))

(declare-fun lt!765263 () Conc!7471)

(declare-fun bm!125042 () Bool)

(declare-fun c!330440 () Bool)

(declare-fun lt!765264 () Conc!7471)

(declare-fun c!330446 () Bool)

(declare-fun c!330444 () Bool)

(declare-fun <>!175 (Conc!7471 Conc!7471) Conc!7471)

(assert (=> bm!125042 (= call!125055 (<>!175 (ite c!330444 (filter!477 (left!17743 (left!17743 t!4319)) p!1489) (ite c!330445 (ite c!330440 (left!17743 (right!18073 (filter!477 (left!17743 (left!17743 t!4319)) p!1489))) (left!17743 (filter!477 (left!17743 (left!17743 t!4319)) p!1489))) (ite c!330446 lt!765264 (right!18073 (left!17743 (filter!477 (right!18073 (left!17743 t!4319)) p!1489)))))) (ite c!330444 (filter!477 (right!18073 (left!17743 t!4319)) p!1489) (ite c!330445 (ite c!330440 lt!765263 (left!17743 (right!18073 (filter!477 (left!17743 (left!17743 t!4319)) p!1489)))) (ite c!330446 (right!18073 (left!17743 (filter!477 (right!18073 (left!17743 t!4319)) p!1489))) (right!18073 (filter!477 (right!18073 (left!17743 t!4319)) p!1489)))))))))

(declare-fun bm!125043 () Bool)

(declare-fun call!125044 () Conc!7471)

(assert (=> bm!125043 (= call!125052 call!125044)))

(declare-fun bm!125044 () Bool)

(declare-fun call!125047 () Int)

(assert (=> bm!125044 (= call!125047 (height!1170 (ite c!330445 (filter!477 (left!17743 (left!17743 t!4319)) p!1489) (right!18073 (filter!477 (right!18073 (left!17743 t!4319)) p!1489)))))))

(declare-fun bm!125045 () Bool)

(assert (=> bm!125045 (= call!125051 call!125055)))

(declare-fun bm!125046 () Bool)

(assert (=> bm!125046 (= call!125045 (height!1170 (ite c!330445 (right!18073 (filter!477 (left!17743 (left!17743 t!4319)) p!1489)) (filter!477 (right!18073 (left!17743 t!4319)) p!1489))))))

(declare-fun b!2039451 () Bool)

(assert (=> b!2039451 (= e!1287645 e!1287637)))

(declare-fun lt!765265 () Int)

(assert (=> b!2039451 (= c!330445 (< lt!765265 (- 1)))))

(declare-fun call!125058 () Conc!7471)

(declare-fun bm!125047 () Bool)

(declare-fun call!125056 () Conc!7471)

(declare-fun call!125053 () Conc!7471)

(declare-fun call!125050 () Conc!7471)

(assert (=> bm!125047 (= call!125053 (<>!175 (ite c!330445 (ite (or c!330439 c!330440) (left!17743 (filter!477 (left!17743 (left!17743 t!4319)) p!1489)) call!125046) (ite c!330441 call!125058 (ite c!330446 call!125056 lt!765264))) (ite c!330445 (ite c!330439 call!125050 (ite c!330440 call!125046 lt!765263)) (ite (or c!330441 c!330446) (right!18073 (filter!477 (right!18073 (left!17743 t!4319)) p!1489)) call!125056))))))

(declare-fun b!2039452 () Bool)

(declare-fun res!894084 () Bool)

(assert (=> b!2039452 (=> (not res!894084) (not e!1287640))))

(assert (=> b!2039452 (= res!894084 (<= (height!1170 lt!765262) (+ (max!0 (height!1170 (filter!477 (left!17743 (left!17743 t!4319)) p!1489)) (height!1170 (filter!477 (right!18073 (left!17743 t!4319)) p!1489))) 1)))))

(declare-fun b!2039453 () Bool)

(declare-fun e!1287642 () Conc!7471)

(assert (=> b!2039453 (= e!1287642 (filter!477 (right!18073 (left!17743 t!4319)) p!1489))))

(declare-fun b!2039454 () Bool)

(declare-fun e!1287638 () Conc!7471)

(assert (=> b!2039454 (= e!1287646 e!1287638)))

(assert (=> b!2039454 (= lt!765263 call!125050)))

(declare-fun call!125059 () Int)

(assert (=> b!2039454 (= c!330440 (= call!125059 (- call!125047 3)))))

(declare-fun b!2039455 () Bool)

(declare-fun e!1287643 () Conc!7471)

(assert (=> b!2039455 (= e!1287642 e!1287643)))

(declare-fun c!330443 () Bool)

(assert (=> b!2039455 (= c!330443 (= (filter!477 (right!18073 (left!17743 t!4319)) p!1489) Empty!7471))))

(declare-fun bm!125048 () Bool)

(assert (=> bm!125048 (= call!125057 call!125053)))

(declare-fun b!2039456 () Bool)

(assert (=> b!2039456 (= e!1287643 (filter!477 (left!17743 (left!17743 t!4319)) p!1489))))

(declare-fun b!2039457 () Bool)

(assert (=> b!2039457 (= e!1287638 call!125054)))

(declare-fun b!2039458 () Bool)

(declare-fun res!894086 () Bool)

(assert (=> b!2039458 (=> (not res!894086) (not e!1287640))))

(assert (=> b!2039458 (= res!894086 (>= (height!1170 lt!765262) (max!0 (height!1170 (filter!477 (left!17743 (left!17743 t!4319)) p!1489)) (height!1170 (filter!477 (right!18073 (left!17743 t!4319)) p!1489)))))))

(declare-fun b!2039459 () Bool)

(assert (=> b!2039459 (= e!1287640 (= (list!9139 lt!765262) (++!6051 (list!9139 (filter!477 (left!17743 (left!17743 t!4319)) p!1489)) (list!9139 (filter!477 (right!18073 (left!17743 t!4319)) p!1489)))))))

(declare-fun b!2039460 () Bool)

(assert (=> b!2039460 (= e!1287639 call!125052)))

(declare-fun b!2039461 () Bool)

(declare-fun e!1287641 () Conc!7471)

(assert (=> b!2039461 (= e!1287641 call!125044)))

(declare-fun b!2039462 () Bool)

(declare-fun e!1287644 () Bool)

(assert (=> b!2039462 (= e!1287644 (isBalanced!2349 (filter!477 (right!18073 (left!17743 t!4319)) p!1489)))))

(declare-fun bm!125049 () Bool)

(assert (=> bm!125049 (= call!125059 (height!1170 (ite c!330445 lt!765263 (left!17743 (filter!477 (right!18073 (left!17743 t!4319)) p!1489)))))))

(declare-fun bm!125050 () Bool)

(assert (=> bm!125050 (= call!125056 call!125051)))

(declare-fun b!2039463 () Bool)

(assert (=> b!2039463 (= c!330441 (>= call!125047 call!125059))))

(assert (=> b!2039463 (= e!1287637 e!1287641)))

(declare-fun bm!125051 () Bool)

(assert (=> bm!125051 (= call!125044 call!125053)))

(declare-fun bm!125052 () Bool)

(assert (=> bm!125052 (= call!125058 call!125049)))

(declare-fun b!2039464 () Bool)

(assert (=> b!2039464 (= e!1287641 e!1287639)))

(assert (=> b!2039464 (= lt!765264 call!125058)))

(assert (=> b!2039464 (= c!330446 (= call!125048 (- call!125045 3)))))

(declare-fun bm!125053 () Bool)

(assert (=> bm!125053 (= call!125050 call!125049)))

(declare-fun bm!125054 () Bool)

(assert (=> bm!125054 (= call!125048 (height!1170 (ite c!330445 (left!17743 (filter!477 (left!17743 (left!17743 t!4319)) p!1489)) lt!765264)))))

(declare-fun d!624615 () Bool)

(assert (=> d!624615 e!1287640))

(declare-fun res!894087 () Bool)

(assert (=> d!624615 (=> (not res!894087) (not e!1287640))))

(declare-fun appendAssocInst!543 (Conc!7471 Conc!7471) Bool)

(assert (=> d!624615 (= res!894087 (appendAssocInst!543 (filter!477 (left!17743 (left!17743 t!4319)) p!1489) (filter!477 (right!18073 (left!17743 t!4319)) p!1489)))))

(assert (=> d!624615 (= lt!765262 e!1287642)))

(declare-fun c!330442 () Bool)

(assert (=> d!624615 (= c!330442 (= (filter!477 (left!17743 (left!17743 t!4319)) p!1489) Empty!7471))))

(assert (=> d!624615 e!1287644))

(declare-fun res!894083 () Bool)

(assert (=> d!624615 (=> (not res!894083) (not e!1287644))))

(assert (=> d!624615 (= res!894083 (isBalanced!2349 (filter!477 (left!17743 (left!17743 t!4319)) p!1489)))))

(assert (=> d!624615 (= (++!6053 (filter!477 (left!17743 (left!17743 t!4319)) p!1489) (filter!477 (right!18073 (left!17743 t!4319)) p!1489)) lt!765262)))

(declare-fun b!2039465 () Bool)

(assert (=> b!2039465 (= c!330444 (and (<= (- 1) lt!765265) (<= lt!765265 1)))))

(assert (=> b!2039465 (= lt!765265 (- (height!1170 (filter!477 (right!18073 (left!17743 t!4319)) p!1489)) (height!1170 (filter!477 (left!17743 (left!17743 t!4319)) p!1489))))))

(assert (=> b!2039465 (= e!1287643 e!1287645)))

(declare-fun b!2039466 () Bool)

(assert (=> b!2039466 (= e!1287638 call!125054)))

(assert (= (and d!624615 res!894083) b!2039462))

(assert (= (and d!624615 c!330442) b!2039453))

(assert (= (and d!624615 (not c!330442)) b!2039455))

(assert (= (and b!2039455 c!330443) b!2039456))

(assert (= (and b!2039455 (not c!330443)) b!2039465))

(assert (= (and b!2039465 c!330444) b!2039448))

(assert (= (and b!2039465 (not c!330444)) b!2039451))

(assert (= (and b!2039451 c!330445) b!2039446))

(assert (= (and b!2039451 (not c!330445)) b!2039463))

(assert (= (and b!2039446 c!330439) b!2039449))

(assert (= (and b!2039446 (not c!330439)) b!2039454))

(assert (= (and b!2039454 c!330440) b!2039457))

(assert (= (and b!2039454 (not c!330440)) b!2039466))

(assert (= (or b!2039457 b!2039466) bm!125041))

(assert (= (or b!2039457 b!2039466) bm!125040))

(assert (= (or b!2039449 b!2039454) bm!125053))

(assert (= (or b!2039449 bm!125040) bm!125048))

(assert (= (and b!2039463 c!330441) b!2039461))

(assert (= (and b!2039463 (not c!330441)) b!2039464))

(assert (= (and b!2039464 c!330446) b!2039460))

(assert (= (and b!2039464 (not c!330446)) b!2039450))

(assert (= (or b!2039460 b!2039450) bm!125050))

(assert (= (or b!2039460 b!2039450) bm!125043))

(assert (= (or b!2039461 b!2039464) bm!125052))

(assert (= (or b!2039461 bm!125043) bm!125051))

(assert (= (or bm!125048 bm!125051) bm!125047))

(assert (= (or b!2039454 b!2039463) bm!125044))

(assert (= (or bm!125053 bm!125052) bm!125039))

(assert (= (or b!2039446 b!2039464) bm!125046))

(assert (= (or bm!125041 bm!125050) bm!125045))

(assert (= (or b!2039454 b!2039463) bm!125049))

(assert (= (or b!2039446 b!2039464) bm!125054))

(assert (= (or b!2039448 bm!125045) bm!125042))

(assert (= (and d!624615 res!894087) b!2039447))

(assert (= (and b!2039447 res!894085) b!2039452))

(assert (= (and b!2039452 res!894084) b!2039458))

(assert (= (and b!2039458 res!894086) b!2039459))

(declare-fun m!2483119 () Bool)

(assert (=> bm!125044 m!2483119))

(declare-fun m!2483125 () Bool)

(assert (=> bm!125042 m!2483125))

(declare-fun m!2483129 () Bool)

(assert (=> bm!125049 m!2483129))

(declare-fun m!2483133 () Bool)

(assert (=> bm!125054 m!2483133))

(declare-fun m!2483137 () Bool)

(assert (=> b!2039458 m!2483137))

(assert (=> b!2039458 m!2482899))

(declare-fun m!2483139 () Bool)

(assert (=> b!2039458 m!2483139))

(assert (=> b!2039458 m!2482903))

(declare-fun m!2483141 () Bool)

(assert (=> b!2039458 m!2483141))

(assert (=> b!2039458 m!2483139))

(assert (=> b!2039458 m!2483141))

(declare-fun m!2483143 () Bool)

(assert (=> b!2039458 m!2483143))

(assert (=> b!2039452 m!2483137))

(assert (=> b!2039452 m!2482899))

(assert (=> b!2039452 m!2483139))

(assert (=> b!2039452 m!2482903))

(assert (=> b!2039452 m!2483141))

(assert (=> b!2039452 m!2483139))

(assert (=> b!2039452 m!2483141))

(assert (=> b!2039452 m!2483143))

(declare-fun m!2483145 () Bool)

(assert (=> bm!125047 m!2483145))

(declare-fun m!2483147 () Bool)

(assert (=> b!2039447 m!2483147))

(declare-fun m!2483149 () Bool)

(assert (=> bm!125039 m!2483149))

(assert (=> b!2039462 m!2482903))

(declare-fun m!2483151 () Bool)

(assert (=> b!2039462 m!2483151))

(declare-fun m!2483153 () Bool)

(assert (=> b!2039459 m!2483153))

(assert (=> b!2039459 m!2482899))

(declare-fun m!2483155 () Bool)

(assert (=> b!2039459 m!2483155))

(assert (=> b!2039459 m!2482903))

(declare-fun m!2483157 () Bool)

(assert (=> b!2039459 m!2483157))

(assert (=> b!2039459 m!2483155))

(assert (=> b!2039459 m!2483157))

(declare-fun m!2483159 () Bool)

(assert (=> b!2039459 m!2483159))

(assert (=> b!2039465 m!2482903))

(assert (=> b!2039465 m!2483141))

(assert (=> b!2039465 m!2482899))

(assert (=> b!2039465 m!2483139))

(assert (=> d!624615 m!2482899))

(assert (=> d!624615 m!2482903))

(declare-fun m!2483163 () Bool)

(assert (=> d!624615 m!2483163))

(assert (=> d!624615 m!2482899))

(declare-fun m!2483165 () Bool)

(assert (=> d!624615 m!2483165))

(declare-fun m!2483167 () Bool)

(assert (=> bm!125046 m!2483167))

(assert (=> b!2039264 d!624615))

(declare-fun b!2039484 () Bool)

(declare-fun e!1287655 () List!22361)

(assert (=> b!2039484 (= e!1287655 (++!6051 (list!9139 (left!17743 (right!18073 (left!17743 t!4319)))) (list!9139 (right!18073 (right!18073 (left!17743 t!4319))))))))

(declare-fun b!2039481 () Bool)

(declare-fun e!1287654 () List!22361)

(assert (=> b!2039481 (= e!1287654 Nil!22279)))

(declare-fun b!2039483 () Bool)

(assert (=> b!2039483 (= e!1287655 (list!9140 (xs!10373 (right!18073 (left!17743 t!4319)))))))

(declare-fun b!2039482 () Bool)

(assert (=> b!2039482 (= e!1287654 e!1287655)))

(declare-fun c!330455 () Bool)

(assert (=> b!2039482 (= c!330455 ((_ is Leaf!10948) (right!18073 (left!17743 t!4319))))))

(declare-fun d!624645 () Bool)

(declare-fun c!330454 () Bool)

(assert (=> d!624645 (= c!330454 ((_ is Empty!7471) (right!18073 (left!17743 t!4319))))))

(assert (=> d!624645 (= (list!9139 (right!18073 (left!17743 t!4319))) e!1287654)))

(assert (= (and d!624645 c!330454) b!2039481))

(assert (= (and d!624645 (not c!330454)) b!2039482))

(assert (= (and b!2039482 c!330455) b!2039483))

(assert (= (and b!2039482 (not c!330455)) b!2039484))

(assert (=> b!2039484 m!2483051))

(assert (=> b!2039484 m!2483053))

(assert (=> b!2039484 m!2483051))

(assert (=> b!2039484 m!2483053))

(declare-fun m!2483177 () Bool)

(assert (=> b!2039484 m!2483177))

(declare-fun m!2483179 () Bool)

(assert (=> b!2039483 m!2483179))

(assert (=> b!2039264 d!624645))

(declare-fun d!624649 () Bool)

(assert (=> d!624649 (= (filter!478 (++!6051 (list!9139 (left!17743 (left!17743 t!4319))) (list!9139 (right!18073 (left!17743 t!4319)))) p!1489) (++!6051 (filter!478 (list!9139 (left!17743 (left!17743 t!4319))) p!1489) (filter!478 (list!9139 (right!18073 (left!17743 t!4319))) p!1489)))))

(declare-fun lt!765271 () Unit!36976)

(assert (=> d!624649 (= lt!765271 (choose!12443 (list!9139 (left!17743 (left!17743 t!4319))) (list!9139 (right!18073 (left!17743 t!4319))) p!1489))))

(assert (=> d!624649 (= (lemmaFilterConcat!30 (list!9139 (left!17743 (left!17743 t!4319))) (list!9139 (right!18073 (left!17743 t!4319))) p!1489) lt!765271)))

(declare-fun bs!421470 () Bool)

(assert (= bs!421470 d!624649))

(assert (=> bs!421470 m!2482675))

(assert (=> bs!421470 m!2482677))

(assert (=> bs!421470 m!2482679))

(assert (=> bs!421470 m!2482677))

(assert (=> bs!421470 m!2483047))

(assert (=> bs!421470 m!2482679))

(declare-fun m!2483181 () Bool)

(assert (=> bs!421470 m!2483181))

(assert (=> bs!421470 m!2482675))

(assert (=> bs!421470 m!2482677))

(declare-fun m!2483183 () Bool)

(assert (=> bs!421470 m!2483183))

(declare-fun m!2483185 () Bool)

(assert (=> bs!421470 m!2483185))

(assert (=> bs!421470 m!2483047))

(declare-fun m!2483187 () Bool)

(assert (=> bs!421470 m!2483187))

(assert (=> bs!421470 m!2482675))

(assert (=> bs!421470 m!2483185))

(assert (=> b!2039264 d!624649))

(declare-fun lt!765272 () Conc!7471)

(declare-fun e!1287659 () Bool)

(declare-fun b!2039485 () Bool)

(assert (=> b!2039485 (= e!1287659 (= (list!9139 lt!765272) (filter!478 (list!9139 (left!17743 (left!17743 t!4319))) p!1489)))))

(declare-fun b!2039486 () Bool)

(declare-fun e!1287657 () Conc!7471)

(assert (=> b!2039486 (= e!1287657 (left!17743 (left!17743 t!4319)))))

(declare-fun b!2039487 () Bool)

(declare-fun e!1287656 () Conc!7471)

(assert (=> b!2039487 (= e!1287656 Empty!7471)))

(declare-fun b!2039488 () Bool)

(declare-fun lt!765274 () IArray!14947)

(assert (=> b!2039488 (= e!1287656 (Leaf!10948 lt!765274 (size!17435 lt!765274)))))

(declare-fun b!2039489 () Bool)

(declare-fun lt!765273 () Unit!36976)

(assert (=> b!2039489 (= lt!765273 (lemmaFilterConcat!30 (list!9139 (left!17743 (left!17743 (left!17743 t!4319)))) (list!9139 (right!18073 (left!17743 (left!17743 t!4319)))) p!1489))))

(declare-fun e!1287658 () Conc!7471)

(assert (=> b!2039489 (= e!1287658 (++!6053 (filter!477 (left!17743 (left!17743 (left!17743 t!4319))) p!1489) (filter!477 (right!18073 (left!17743 (left!17743 t!4319))) p!1489)))))

(declare-fun d!624651 () Bool)

(assert (=> d!624651 e!1287659))

(declare-fun res!894088 () Bool)

(assert (=> d!624651 (=> (not res!894088) (not e!1287659))))

(assert (=> d!624651 (= res!894088 (isBalanced!2349 lt!765272))))

(assert (=> d!624651 (= lt!765272 e!1287657)))

(declare-fun c!330457 () Bool)

(assert (=> d!624651 (= c!330457 ((_ is Empty!7471) (left!17743 (left!17743 t!4319))))))

(assert (=> d!624651 (isBalanced!2349 (left!17743 (left!17743 t!4319)))))

(assert (=> d!624651 (= (filter!477 (left!17743 (left!17743 t!4319)) p!1489) lt!765272)))

(declare-fun b!2039490 () Bool)

(assert (=> b!2039490 (= e!1287657 e!1287658)))

(declare-fun c!330458 () Bool)

(assert (=> b!2039490 (= c!330458 ((_ is Leaf!10948) (left!17743 (left!17743 t!4319))))))

(declare-fun b!2039491 () Bool)

(declare-fun c!330456 () Bool)

(assert (=> b!2039491 (= c!330456 (= (size!17435 lt!765274) 0))))

(assert (=> b!2039491 (= lt!765274 (filter!480 (xs!10373 (left!17743 (left!17743 t!4319))) p!1489))))

(assert (=> b!2039491 (= e!1287658 e!1287656)))

(assert (= (and d!624651 c!330457) b!2039486))

(assert (= (and d!624651 (not c!330457)) b!2039490))

(assert (= (and b!2039490 c!330458) b!2039491))

(assert (= (and b!2039490 (not c!330458)) b!2039489))

(assert (= (and b!2039491 c!330456) b!2039487))

(assert (= (and b!2039491 (not c!330456)) b!2039488))

(assert (= (and d!624651 res!894088) b!2039485))

(declare-fun m!2483189 () Bool)

(assert (=> b!2039491 m!2483189))

(declare-fun m!2483191 () Bool)

(assert (=> b!2039491 m!2483191))

(declare-fun m!2483193 () Bool)

(assert (=> b!2039485 m!2483193))

(assert (=> b!2039485 m!2482675))

(assert (=> b!2039485 m!2482675))

(assert (=> b!2039485 m!2483185))

(declare-fun m!2483195 () Bool)

(assert (=> b!2039489 m!2483195))

(declare-fun m!2483197 () Bool)

(assert (=> b!2039489 m!2483197))

(assert (=> b!2039489 m!2483197))

(declare-fun m!2483199 () Bool)

(assert (=> b!2039489 m!2483199))

(declare-fun m!2483201 () Bool)

(assert (=> b!2039489 m!2483201))

(declare-fun m!2483203 () Bool)

(assert (=> b!2039489 m!2483203))

(assert (=> b!2039489 m!2483199))

(assert (=> b!2039489 m!2483195))

(assert (=> b!2039489 m!2483203))

(declare-fun m!2483205 () Bool)

(assert (=> b!2039489 m!2483205))

(declare-fun m!2483207 () Bool)

(assert (=> d!624651 m!2483207))

(declare-fun m!2483209 () Bool)

(assert (=> d!624651 m!2483209))

(assert (=> b!2039488 m!2483189))

(assert (=> b!2039264 d!624651))

(declare-fun b!2039501 () Bool)

(declare-fun e!1287664 () List!22361)

(assert (=> b!2039501 (= e!1287664 (++!6051 (list!9139 (left!17743 (left!17743 (left!17743 t!4319)))) (list!9139 (right!18073 (left!17743 (left!17743 t!4319))))))))

(declare-fun b!2039498 () Bool)

(declare-fun e!1287663 () List!22361)

(assert (=> b!2039498 (= e!1287663 Nil!22279)))

(declare-fun b!2039500 () Bool)

(assert (=> b!2039500 (= e!1287664 (list!9140 (xs!10373 (left!17743 (left!17743 t!4319)))))))

(declare-fun b!2039499 () Bool)

(assert (=> b!2039499 (= e!1287663 e!1287664)))

(declare-fun c!330462 () Bool)

(assert (=> b!2039499 (= c!330462 ((_ is Leaf!10948) (left!17743 (left!17743 t!4319))))))

(declare-fun d!624655 () Bool)

(declare-fun c!330461 () Bool)

(assert (=> d!624655 (= c!330461 ((_ is Empty!7471) (left!17743 (left!17743 t!4319))))))

(assert (=> d!624655 (= (list!9139 (left!17743 (left!17743 t!4319))) e!1287663)))

(assert (= (and d!624655 c!330461) b!2039498))

(assert (= (and d!624655 (not c!330461)) b!2039499))

(assert (= (and b!2039499 c!330462) b!2039500))

(assert (= (and b!2039499 (not c!330462)) b!2039501))

(assert (=> b!2039501 m!2483197))

(assert (=> b!2039501 m!2483199))

(assert (=> b!2039501 m!2483197))

(assert (=> b!2039501 m!2483199))

(declare-fun m!2483211 () Bool)

(assert (=> b!2039501 m!2483211))

(declare-fun m!2483213 () Bool)

(assert (=> b!2039500 m!2483213))

(assert (=> b!2039264 d!624655))

(declare-fun b!2039502 () Bool)

(declare-fun res!894092 () Bool)

(declare-fun e!1287665 () Bool)

(assert (=> b!2039502 (=> (not res!894092) (not e!1287665))))

(assert (=> b!2039502 (= res!894092 (<= (- (height!1170 (left!17743 (right!18073 t!4319))) (height!1170 (right!18073 (right!18073 t!4319)))) 1))))

(declare-fun d!624657 () Bool)

(declare-fun res!894094 () Bool)

(declare-fun e!1287666 () Bool)

(assert (=> d!624657 (=> res!894094 e!1287666)))

(assert (=> d!624657 (= res!894094 (not ((_ is Node!7471) (right!18073 t!4319))))))

(assert (=> d!624657 (= (isBalanced!2349 (right!18073 t!4319)) e!1287666)))

(declare-fun b!2039503 () Bool)

(declare-fun res!894093 () Bool)

(assert (=> b!2039503 (=> (not res!894093) (not e!1287665))))

(assert (=> b!2039503 (= res!894093 (not (isEmpty!13936 (left!17743 (right!18073 t!4319)))))))

(declare-fun b!2039504 () Bool)

(declare-fun res!894096 () Bool)

(assert (=> b!2039504 (=> (not res!894096) (not e!1287665))))

(assert (=> b!2039504 (= res!894096 (isBalanced!2349 (left!17743 (right!18073 t!4319))))))

(declare-fun b!2039505 () Bool)

(declare-fun res!894091 () Bool)

(assert (=> b!2039505 (=> (not res!894091) (not e!1287665))))

(assert (=> b!2039505 (= res!894091 (isBalanced!2349 (right!18073 (right!18073 t!4319))))))

(declare-fun b!2039506 () Bool)

(assert (=> b!2039506 (= e!1287666 e!1287665)))

(declare-fun res!894095 () Bool)

(assert (=> b!2039506 (=> (not res!894095) (not e!1287665))))

(assert (=> b!2039506 (= res!894095 (<= (- 1) (- (height!1170 (left!17743 (right!18073 t!4319))) (height!1170 (right!18073 (right!18073 t!4319))))))))

(declare-fun b!2039507 () Bool)

(assert (=> b!2039507 (= e!1287665 (not (isEmpty!13936 (right!18073 (right!18073 t!4319)))))))

(assert (= (and d!624657 (not res!894094)) b!2039506))

(assert (= (and b!2039506 res!894095) b!2039502))

(assert (= (and b!2039502 res!894092) b!2039504))

(assert (= (and b!2039504 res!894096) b!2039505))

(assert (= (and b!2039505 res!894091) b!2039503))

(assert (= (and b!2039503 res!894093) b!2039507))

(declare-fun m!2483215 () Bool)

(assert (=> b!2039505 m!2483215))

(declare-fun m!2483217 () Bool)

(assert (=> b!2039507 m!2483217))

(declare-fun m!2483219 () Bool)

(assert (=> b!2039503 m!2483219))

(declare-fun m!2483221 () Bool)

(assert (=> b!2039506 m!2483221))

(declare-fun m!2483223 () Bool)

(assert (=> b!2039506 m!2483223))

(declare-fun m!2483225 () Bool)

(assert (=> b!2039504 m!2483225))

(assert (=> b!2039502 m!2483221))

(assert (=> b!2039502 m!2483223))

(assert (=> b!2039127 d!624657))

(declare-fun d!624659 () Bool)

(declare-fun c!330463 () Bool)

(assert (=> d!624659 (= c!330463 ((_ is Nil!22279) lt!765201))))

(declare-fun e!1287667 () (InoxSet T!36018))

(assert (=> d!624659 (= (content!3310 lt!765201) e!1287667)))

(declare-fun b!2039508 () Bool)

(assert (=> b!2039508 (= e!1287667 ((as const (Array T!36018 Bool)) false))))

(declare-fun b!2039509 () Bool)

(assert (=> b!2039509 (= e!1287667 ((_ map or) (store ((as const (Array T!36018 Bool)) false) (h!27680 lt!765201) true) (content!3310 (t!191396 lt!765201))))))

(assert (= (and d!624659 c!330463) b!2039508))

(assert (= (and d!624659 (not c!330463)) b!2039509))

(declare-fun m!2483237 () Bool)

(assert (=> b!2039509 m!2483237))

(declare-fun m!2483241 () Bool)

(assert (=> b!2039509 m!2483241))

(assert (=> d!624523 d!624659))

(declare-fun d!624661 () Bool)

(declare-fun c!330464 () Bool)

(assert (=> d!624661 (= c!330464 ((_ is Nil!22279) (filter!478 lt!765175 p!1489)))))

(declare-fun e!1287668 () (InoxSet T!36018))

(assert (=> d!624661 (= (content!3310 (filter!478 lt!765175 p!1489)) e!1287668)))

(declare-fun b!2039510 () Bool)

(assert (=> b!2039510 (= e!1287668 ((as const (Array T!36018 Bool)) false))))

(declare-fun b!2039511 () Bool)

(assert (=> b!2039511 (= e!1287668 ((_ map or) (store ((as const (Array T!36018 Bool)) false) (h!27680 (filter!478 lt!765175 p!1489)) true) (content!3310 (t!191396 (filter!478 lt!765175 p!1489)))))))

(assert (= (and d!624661 c!330464) b!2039510))

(assert (= (and d!624661 (not c!330464)) b!2039511))

(declare-fun m!2483245 () Bool)

(assert (=> b!2039511 m!2483245))

(assert (=> b!2039511 m!2482995))

(assert (=> d!624523 d!624661))

(declare-fun d!624665 () Bool)

(declare-fun c!330466 () Bool)

(assert (=> d!624665 (= c!330466 ((_ is Nil!22279) (filter!478 lt!765176 p!1489)))))

(declare-fun e!1287670 () (InoxSet T!36018))

(assert (=> d!624665 (= (content!3310 (filter!478 lt!765176 p!1489)) e!1287670)))

(declare-fun b!2039514 () Bool)

(assert (=> b!2039514 (= e!1287670 ((as const (Array T!36018 Bool)) false))))

(declare-fun b!2039515 () Bool)

(assert (=> b!2039515 (= e!1287670 ((_ map or) (store ((as const (Array T!36018 Bool)) false) (h!27680 (filter!478 lt!765176 p!1489)) true) (content!3310 (t!191396 (filter!478 lt!765176 p!1489)))))))

(assert (= (and d!624665 c!330466) b!2039514))

(assert (= (and d!624665 (not c!330466)) b!2039515))

(declare-fun m!2483247 () Bool)

(assert (=> b!2039515 m!2483247))

(declare-fun m!2483249 () Bool)

(assert (=> b!2039515 m!2483249))

(assert (=> d!624523 d!624665))

(declare-fun d!624667 () Bool)

(declare-fun lt!765279 () Int)

(assert (=> d!624667 (= lt!765279 (size!17433 (list!9140 lt!765226)))))

(declare-fun choose!12447 (IArray!14947) Int)

(assert (=> d!624667 (= lt!765279 (choose!12447 lt!765226))))

(assert (=> d!624667 (= (size!17435 lt!765226) lt!765279)))

(declare-fun bs!421471 () Bool)

(assert (= bs!421471 d!624667))

(declare-fun m!2483253 () Bool)

(assert (=> bs!421471 m!2483253))

(assert (=> bs!421471 m!2483253))

(declare-fun m!2483255 () Bool)

(assert (=> bs!421471 m!2483255))

(declare-fun m!2483257 () Bool)

(assert (=> bs!421471 m!2483257))

(assert (=> b!2039266 d!624667))

(declare-fun d!624671 () Bool)

(declare-fun lt!765284 () IArray!14947)

(assert (=> d!624671 (= lt!765284 (IArray!14948 (filter!478 (list!9140 (xs!10373 (left!17743 t!4319))) p!1489)))))

(declare-fun choose!12448 (IArray!14947 Int) IArray!14947)

(assert (=> d!624671 (= lt!765284 (choose!12448 (xs!10373 (left!17743 t!4319)) p!1489))))

(assert (=> d!624671 (= (filter!480 (xs!10373 (left!17743 t!4319)) p!1489) lt!765284)))

(declare-fun bs!421472 () Bool)

(assert (= bs!421472 d!624671))

(assert (=> bs!421472 m!2482681))

(assert (=> bs!421472 m!2482681))

(declare-fun m!2483259 () Bool)

(assert (=> bs!421472 m!2483259))

(declare-fun m!2483261 () Bool)

(assert (=> bs!421472 m!2483261))

(assert (=> b!2039266 d!624671))

(declare-fun d!624673 () Bool)

(declare-fun lt!765285 () Bool)

(assert (=> d!624673 (= lt!765285 (isEmpty!13938 (list!9139 (left!17743 t!4319))))))

(assert (=> d!624673 (= lt!765285 (= (size!17436 (left!17743 t!4319)) 0))))

(assert (=> d!624673 (= (isEmpty!13936 (left!17743 t!4319)) lt!765285)))

(declare-fun bs!421473 () Bool)

(assert (= bs!421473 d!624673))

(assert (=> bs!421473 m!2482599))

(assert (=> bs!421473 m!2482599))

(declare-fun m!2483263 () Bool)

(assert (=> bs!421473 m!2483263))

(assert (=> bs!421473 m!2483023))

(assert (=> b!2039125 d!624673))

(declare-fun d!624675 () Bool)

(declare-fun lt!765286 () Int)

(assert (=> d!624675 (>= lt!765286 0)))

(declare-fun e!1287671 () Int)

(assert (=> d!624675 (= lt!765286 e!1287671)))

(declare-fun c!330467 () Bool)

(assert (=> d!624675 (= c!330467 ((_ is Nil!22279) lt!765182))))

(assert (=> d!624675 (= (size!17433 lt!765182) lt!765286)))

(declare-fun b!2039516 () Bool)

(assert (=> b!2039516 (= e!1287671 0)))

(declare-fun b!2039517 () Bool)

(assert (=> b!2039517 (= e!1287671 (+ 1 (size!17433 (t!191396 lt!765182))))))

(assert (= (and d!624675 c!330467) b!2039516))

(assert (= (and d!624675 (not c!330467)) b!2039517))

(declare-fun m!2483265 () Bool)

(assert (=> b!2039517 m!2483265))

(assert (=> d!624507 d!624675))

(assert (=> d!624507 d!624607))

(declare-fun d!624677 () Bool)

(assert (=> d!624677 (= (BigIntAbs!0 (ite c!330366 (csize!15172 (right!18073 t!4319)) (csize!15173 (right!18073 t!4319)))) (ite (>= (ite c!330366 (csize!15172 (right!18073 t!4319)) (csize!15173 (right!18073 t!4319))) 0) (ite c!330366 (csize!15172 (right!18073 t!4319)) (csize!15173 (right!18073 t!4319))) (- (ite c!330366 (csize!15172 (right!18073 t!4319)) (csize!15173 (right!18073 t!4319))))))))

(assert (=> bm!125003 d!624677))

(declare-fun b!2039518 () Bool)

(declare-fun res!894098 () Bool)

(declare-fun e!1287672 () Bool)

(assert (=> b!2039518 (=> (not res!894098) (not e!1287672))))

(assert (=> b!2039518 (= res!894098 (<= (- (height!1170 (left!17743 lt!765224)) (height!1170 (right!18073 lt!765224))) 1))))

(declare-fun d!624679 () Bool)

(declare-fun res!894100 () Bool)

(declare-fun e!1287673 () Bool)

(assert (=> d!624679 (=> res!894100 e!1287673)))

(assert (=> d!624679 (= res!894100 (not ((_ is Node!7471) lt!765224)))))

(assert (=> d!624679 (= (isBalanced!2349 lt!765224) e!1287673)))

(declare-fun b!2039519 () Bool)

(declare-fun res!894099 () Bool)

(assert (=> b!2039519 (=> (not res!894099) (not e!1287672))))

(assert (=> b!2039519 (= res!894099 (not (isEmpty!13936 (left!17743 lt!765224))))))

(declare-fun b!2039520 () Bool)

(declare-fun res!894102 () Bool)

(assert (=> b!2039520 (=> (not res!894102) (not e!1287672))))

(assert (=> b!2039520 (= res!894102 (isBalanced!2349 (left!17743 lt!765224)))))

(declare-fun b!2039521 () Bool)

(declare-fun res!894097 () Bool)

(assert (=> b!2039521 (=> (not res!894097) (not e!1287672))))

(assert (=> b!2039521 (= res!894097 (isBalanced!2349 (right!18073 lt!765224)))))

(declare-fun b!2039522 () Bool)

(assert (=> b!2039522 (= e!1287673 e!1287672)))

(declare-fun res!894101 () Bool)

(assert (=> b!2039522 (=> (not res!894101) (not e!1287672))))

(assert (=> b!2039522 (= res!894101 (<= (- 1) (- (height!1170 (left!17743 lt!765224)) (height!1170 (right!18073 lt!765224)))))))

(declare-fun b!2039523 () Bool)

(assert (=> b!2039523 (= e!1287672 (not (isEmpty!13936 (right!18073 lt!765224))))))

(assert (= (and d!624679 (not res!894100)) b!2039522))

(assert (= (and b!2039522 res!894101) b!2039518))

(assert (= (and b!2039518 res!894098) b!2039520))

(assert (= (and b!2039520 res!894102) b!2039521))

(assert (= (and b!2039521 res!894097) b!2039519))

(assert (= (and b!2039519 res!894099) b!2039523))

(declare-fun m!2483269 () Bool)

(assert (=> b!2039521 m!2483269))

(declare-fun m!2483271 () Bool)

(assert (=> b!2039523 m!2483271))

(declare-fun m!2483273 () Bool)

(assert (=> b!2039519 m!2483273))

(declare-fun m!2483275 () Bool)

(assert (=> b!2039522 m!2483275))

(declare-fun m!2483277 () Bool)

(assert (=> b!2039522 m!2483277))

(declare-fun m!2483279 () Bool)

(assert (=> b!2039520 m!2483279))

(assert (=> b!2039518 m!2483275))

(assert (=> b!2039518 m!2483277))

(assert (=> d!624551 d!624679))

(declare-fun b!2039526 () Bool)

(declare-fun res!894104 () Bool)

(declare-fun e!1287675 () Bool)

(assert (=> b!2039526 (=> (not res!894104) (not e!1287675))))

(assert (=> b!2039526 (= res!894104 (<= (- (height!1170 (left!17743 (left!17743 t!4319))) (height!1170 (right!18073 (left!17743 t!4319)))) 1))))

(declare-fun d!624683 () Bool)

(declare-fun res!894106 () Bool)

(declare-fun e!1287676 () Bool)

(assert (=> d!624683 (=> res!894106 e!1287676)))

(assert (=> d!624683 (= res!894106 (not ((_ is Node!7471) (left!17743 t!4319))))))

(assert (=> d!624683 (= (isBalanced!2349 (left!17743 t!4319)) e!1287676)))

(declare-fun b!2039527 () Bool)

(declare-fun res!894105 () Bool)

(assert (=> b!2039527 (=> (not res!894105) (not e!1287675))))

(assert (=> b!2039527 (= res!894105 (not (isEmpty!13936 (left!17743 (left!17743 t!4319)))))))

(declare-fun b!2039528 () Bool)

(declare-fun res!894108 () Bool)

(assert (=> b!2039528 (=> (not res!894108) (not e!1287675))))

(assert (=> b!2039528 (= res!894108 (isBalanced!2349 (left!17743 (left!17743 t!4319))))))

(declare-fun b!2039529 () Bool)

(declare-fun res!894103 () Bool)

(assert (=> b!2039529 (=> (not res!894103) (not e!1287675))))

(assert (=> b!2039529 (= res!894103 (isBalanced!2349 (right!18073 (left!17743 t!4319))))))

(declare-fun b!2039530 () Bool)

(assert (=> b!2039530 (= e!1287676 e!1287675)))

(declare-fun res!894107 () Bool)

(assert (=> b!2039530 (=> (not res!894107) (not e!1287675))))

(assert (=> b!2039530 (= res!894107 (<= (- 1) (- (height!1170 (left!17743 (left!17743 t!4319))) (height!1170 (right!18073 (left!17743 t!4319))))))))

(declare-fun b!2039531 () Bool)

(assert (=> b!2039531 (= e!1287675 (not (isEmpty!13936 (right!18073 (left!17743 t!4319)))))))

(assert (= (and d!624683 (not res!894106)) b!2039530))

(assert (= (and b!2039530 res!894107) b!2039526))

(assert (= (and b!2039526 res!894104) b!2039528))

(assert (= (and b!2039528 res!894108) b!2039529))

(assert (= (and b!2039529 res!894103) b!2039527))

(assert (= (and b!2039527 res!894105) b!2039531))

(assert (=> b!2039529 m!2483063))

(declare-fun m!2483283 () Bool)

(assert (=> b!2039531 m!2483283))

(declare-fun m!2483285 () Bool)

(assert (=> b!2039527 m!2483285))

(assert (=> b!2039530 m!2482951))

(assert (=> b!2039530 m!2482953))

(assert (=> b!2039528 m!2483209))

(assert (=> b!2039526 m!2482951))

(assert (=> b!2039526 m!2482953))

(assert (=> d!624551 d!624683))

(declare-fun b!2039532 () Bool)

(declare-fun e!1287678 () List!22361)

(declare-fun call!125063 () List!22361)

(assert (=> b!2039532 (= e!1287678 (Cons!22279 (h!27680 (t!191396 lt!765176)) call!125063))))

(declare-fun bm!125058 () Bool)

(assert (=> bm!125058 (= call!125063 (filter!478 (t!191396 (t!191396 lt!765176)) p!1489))))

(declare-fun b!2039533 () Bool)

(declare-fun res!894109 () Bool)

(declare-fun e!1287679 () Bool)

(assert (=> b!2039533 (=> (not res!894109) (not e!1287679))))

(declare-fun lt!765289 () List!22361)

(assert (=> b!2039533 (= res!894109 (= ((_ map implies) (content!3310 lt!765289) (content!3310 (t!191396 lt!765176))) ((as const (InoxSet T!36018)) true)))))

(declare-fun b!2039534 () Bool)

(declare-fun e!1287677 () List!22361)

(assert (=> b!2039534 (= e!1287677 e!1287678)))

(declare-fun c!330470 () Bool)

(assert (=> b!2039534 (= c!330470 (dynLambda!11107 p!1489 (h!27680 (t!191396 lt!765176))))))

(declare-fun d!624689 () Bool)

(assert (=> d!624689 e!1287679))

(declare-fun res!894110 () Bool)

(assert (=> d!624689 (=> (not res!894110) (not e!1287679))))

(assert (=> d!624689 (= res!894110 (<= (size!17433 lt!765289) (size!17433 (t!191396 lt!765176))))))

(assert (=> d!624689 (= lt!765289 e!1287677)))

(declare-fun c!330469 () Bool)

(assert (=> d!624689 (= c!330469 ((_ is Nil!22279) (t!191396 lt!765176)))))

(assert (=> d!624689 (= (filter!478 (t!191396 lt!765176) p!1489) lt!765289)))

(declare-fun b!2039535 () Bool)

(assert (=> b!2039535 (= e!1287678 call!125063)))

(declare-fun b!2039536 () Bool)

(assert (=> b!2039536 (= e!1287677 Nil!22279)))

(declare-fun b!2039537 () Bool)

(assert (=> b!2039537 (= e!1287679 (forall!4757 lt!765289 p!1489))))

(assert (= (and d!624689 c!330469) b!2039536))

(assert (= (and d!624689 (not c!330469)) b!2039534))

(assert (= (and b!2039534 c!330470) b!2039532))

(assert (= (and b!2039534 (not c!330470)) b!2039535))

(assert (= (or b!2039532 b!2039535) bm!125058))

(assert (= (and d!624689 res!894110) b!2039533))

(assert (= (and b!2039533 res!894109) b!2039537))

(declare-fun b_lambda!68971 () Bool)

(assert (=> (not b_lambda!68971) (not b!2039534)))

(declare-fun t!191423 () Bool)

(declare-fun tb!128943 () Bool)

(assert (=> (and start!200960 (= p!1489 p!1489) t!191423) tb!128943))

(declare-fun result!154262 () Bool)

(assert (=> tb!128943 (= result!154262 true)))

(assert (=> b!2039534 t!191423))

(declare-fun b_and!162735 () Bool)

(assert (= b_and!162731 (and (=> t!191423 result!154262) b_and!162735)))

(declare-fun m!2483287 () Bool)

(assert (=> b!2039533 m!2483287))

(declare-fun m!2483289 () Bool)

(assert (=> b!2039533 m!2483289))

(declare-fun m!2483291 () Bool)

(assert (=> b!2039534 m!2483291))

(declare-fun m!2483293 () Bool)

(assert (=> d!624689 m!2483293))

(assert (=> d!624689 m!2483021))

(declare-fun m!2483295 () Bool)

(assert (=> bm!125058 m!2483295))

(declare-fun m!2483297 () Bool)

(assert (=> b!2039537 m!2483297))

(assert (=> bm!124996 d!624689))

(declare-fun d!624693 () Bool)

(declare-fun c!330471 () Bool)

(assert (=> d!624693 (= c!330471 ((_ is Node!7471) (left!17743 (right!18073 t!4319))))))

(declare-fun e!1287682 () Bool)

(assert (=> d!624693 (= (inv!29593 (left!17743 (right!18073 t!4319))) e!1287682)))

(declare-fun b!2039544 () Bool)

(assert (=> b!2039544 (= e!1287682 (inv!29597 (left!17743 (right!18073 t!4319))))))

(declare-fun b!2039545 () Bool)

(declare-fun e!1287683 () Bool)

(assert (=> b!2039545 (= e!1287682 e!1287683)))

(declare-fun res!894117 () Bool)

(assert (=> b!2039545 (= res!894117 (not ((_ is Leaf!10948) (left!17743 (right!18073 t!4319)))))))

(assert (=> b!2039545 (=> res!894117 e!1287683)))

(declare-fun b!2039546 () Bool)

(assert (=> b!2039546 (= e!1287683 (inv!29598 (left!17743 (right!18073 t!4319))))))

(assert (= (and d!624693 c!330471) b!2039544))

(assert (= (and d!624693 (not c!330471)) b!2039545))

(assert (= (and b!2039545 (not res!894117)) b!2039546))

(declare-fun m!2483299 () Bool)

(assert (=> b!2039544 m!2483299))

(declare-fun m!2483301 () Bool)

(assert (=> b!2039546 m!2483301))

(assert (=> b!2039300 d!624693))

(declare-fun d!624695 () Bool)

(declare-fun c!330472 () Bool)

(assert (=> d!624695 (= c!330472 ((_ is Node!7471) (right!18073 (right!18073 t!4319))))))

(declare-fun e!1287684 () Bool)

(assert (=> d!624695 (= (inv!29593 (right!18073 (right!18073 t!4319))) e!1287684)))

(declare-fun b!2039547 () Bool)

(assert (=> b!2039547 (= e!1287684 (inv!29597 (right!18073 (right!18073 t!4319))))))

(declare-fun b!2039548 () Bool)

(declare-fun e!1287685 () Bool)

(assert (=> b!2039548 (= e!1287684 e!1287685)))

(declare-fun res!894118 () Bool)

(assert (=> b!2039548 (= res!894118 (not ((_ is Leaf!10948) (right!18073 (right!18073 t!4319)))))))

(assert (=> b!2039548 (=> res!894118 e!1287685)))

(declare-fun b!2039549 () Bool)

(assert (=> b!2039549 (= e!1287685 (inv!29598 (right!18073 (right!18073 t!4319))))))

(assert (= (and d!624695 c!330472) b!2039547))

(assert (= (and d!624695 (not c!330472)) b!2039548))

(assert (= (and b!2039548 (not res!894118)) b!2039549))

(declare-fun m!2483303 () Bool)

(assert (=> b!2039547 m!2483303))

(declare-fun m!2483305 () Bool)

(assert (=> b!2039549 m!2483305))

(assert (=> b!2039300 d!624695))

(declare-fun b!2039552 () Bool)

(declare-fun res!894120 () Bool)

(declare-fun e!1287686 () Bool)

(assert (=> b!2039552 (=> (not res!894120) (not e!1287686))))

(declare-fun lt!765290 () List!22361)

(assert (=> b!2039552 (= res!894120 (= (size!17433 lt!765290) (+ (size!17433 (list!9139 (left!17743 (left!17743 t!4319)))) (size!17433 (list!9139 (right!18073 (left!17743 t!4319)))))))))

(declare-fun b!2039550 () Bool)

(declare-fun e!1287687 () List!22361)

(assert (=> b!2039550 (= e!1287687 (list!9139 (right!18073 (left!17743 t!4319))))))

(declare-fun b!2039553 () Bool)

(assert (=> b!2039553 (= e!1287686 (or (not (= (list!9139 (right!18073 (left!17743 t!4319))) Nil!22279)) (= lt!765290 (list!9139 (left!17743 (left!17743 t!4319))))))))

(declare-fun b!2039551 () Bool)

(assert (=> b!2039551 (= e!1287687 (Cons!22279 (h!27680 (list!9139 (left!17743 (left!17743 t!4319)))) (++!6051 (t!191396 (list!9139 (left!17743 (left!17743 t!4319)))) (list!9139 (right!18073 (left!17743 t!4319))))))))

(declare-fun d!624697 () Bool)

(assert (=> d!624697 e!1287686))

(declare-fun res!894119 () Bool)

(assert (=> d!624697 (=> (not res!894119) (not e!1287686))))

(assert (=> d!624697 (= res!894119 (= (content!3310 lt!765290) ((_ map or) (content!3310 (list!9139 (left!17743 (left!17743 t!4319)))) (content!3310 (list!9139 (right!18073 (left!17743 t!4319)))))))))

(assert (=> d!624697 (= lt!765290 e!1287687)))

(declare-fun c!330473 () Bool)

(assert (=> d!624697 (= c!330473 ((_ is Nil!22279) (list!9139 (left!17743 (left!17743 t!4319)))))))

(assert (=> d!624697 (= (++!6051 (list!9139 (left!17743 (left!17743 t!4319))) (list!9139 (right!18073 (left!17743 t!4319)))) lt!765290)))

(assert (= (and d!624697 c!330473) b!2039550))

(assert (= (and d!624697 (not c!330473)) b!2039551))

(assert (= (and d!624697 res!894119) b!2039552))

(assert (= (and b!2039552 res!894120) b!2039553))

(declare-fun m!2483313 () Bool)

(assert (=> b!2039552 m!2483313))

(assert (=> b!2039552 m!2482675))

(declare-fun m!2483315 () Bool)

(assert (=> b!2039552 m!2483315))

(assert (=> b!2039552 m!2482677))

(declare-fun m!2483317 () Bool)

(assert (=> b!2039552 m!2483317))

(assert (=> b!2039551 m!2482677))

(declare-fun m!2483319 () Bool)

(assert (=> b!2039551 m!2483319))

(declare-fun m!2483321 () Bool)

(assert (=> d!624697 m!2483321))

(assert (=> d!624697 m!2482675))

(declare-fun m!2483325 () Bool)

(assert (=> d!624697 m!2483325))

(assert (=> d!624697 m!2482677))

(declare-fun m!2483327 () Bool)

(assert (=> d!624697 m!2483327))

(assert (=> b!2039052 d!624697))

(assert (=> b!2039052 d!624655))

(assert (=> b!2039052 d!624645))

(declare-fun b!2039557 () Bool)

(declare-fun e!1287689 () List!22361)

(assert (=> b!2039557 (= e!1287689 (++!6051 (list!9139 (left!17743 lt!765224)) (list!9139 (right!18073 lt!765224))))))

(declare-fun b!2039554 () Bool)

(declare-fun e!1287688 () List!22361)

(assert (=> b!2039554 (= e!1287688 Nil!22279)))

(declare-fun b!2039556 () Bool)

(assert (=> b!2039556 (= e!1287689 (list!9140 (xs!10373 lt!765224)))))

(declare-fun b!2039555 () Bool)

(assert (=> b!2039555 (= e!1287688 e!1287689)))

(declare-fun c!330475 () Bool)

(assert (=> b!2039555 (= c!330475 ((_ is Leaf!10948) lt!765224))))

(declare-fun d!624699 () Bool)

(declare-fun c!330474 () Bool)

(assert (=> d!624699 (= c!330474 ((_ is Empty!7471) lt!765224))))

(assert (=> d!624699 (= (list!9139 lt!765224) e!1287688)))

(assert (= (and d!624699 c!330474) b!2039554))

(assert (= (and d!624699 (not c!330474)) b!2039555))

(assert (= (and b!2039555 c!330475) b!2039556))

(assert (= (and b!2039555 (not c!330475)) b!2039557))

(declare-fun m!2483333 () Bool)

(assert (=> b!2039557 m!2483333))

(declare-fun m!2483335 () Bool)

(assert (=> b!2039557 m!2483335))

(assert (=> b!2039557 m!2483333))

(assert (=> b!2039557 m!2483335))

(declare-fun m!2483337 () Bool)

(assert (=> b!2039557 m!2483337))

(declare-fun m!2483339 () Bool)

(assert (=> b!2039556 m!2483339))

(assert (=> b!2039260 d!624699))

(declare-fun b!2039564 () Bool)

(declare-fun e!1287693 () List!22361)

(declare-fun call!125064 () List!22361)

(assert (=> b!2039564 (= e!1287693 (Cons!22279 (h!27680 (list!9139 (left!17743 t!4319))) call!125064))))

(declare-fun bm!125059 () Bool)

(assert (=> bm!125059 (= call!125064 (filter!478 (t!191396 (list!9139 (left!17743 t!4319))) p!1489))))

(declare-fun b!2039565 () Bool)

(declare-fun res!894127 () Bool)

(declare-fun e!1287694 () Bool)

(assert (=> b!2039565 (=> (not res!894127) (not e!1287694))))

(declare-fun lt!765291 () List!22361)

(assert (=> b!2039565 (= res!894127 (= ((_ map implies) (content!3310 lt!765291) (content!3310 (list!9139 (left!17743 t!4319)))) ((as const (InoxSet T!36018)) true)))))

(declare-fun b!2039566 () Bool)

(declare-fun e!1287692 () List!22361)

(assert (=> b!2039566 (= e!1287692 e!1287693)))

(declare-fun c!330477 () Bool)

(assert (=> b!2039566 (= c!330477 (dynLambda!11107 p!1489 (h!27680 (list!9139 (left!17743 t!4319)))))))

(declare-fun d!624703 () Bool)

(assert (=> d!624703 e!1287694))

(declare-fun res!894128 () Bool)

(assert (=> d!624703 (=> (not res!894128) (not e!1287694))))

(assert (=> d!624703 (= res!894128 (<= (size!17433 lt!765291) (size!17433 (list!9139 (left!17743 t!4319)))))))

(assert (=> d!624703 (= lt!765291 e!1287692)))

(declare-fun c!330476 () Bool)

(assert (=> d!624703 (= c!330476 ((_ is Nil!22279) (list!9139 (left!17743 t!4319))))))

(assert (=> d!624703 (= (filter!478 (list!9139 (left!17743 t!4319)) p!1489) lt!765291)))

(declare-fun b!2039567 () Bool)

(assert (=> b!2039567 (= e!1287693 call!125064)))

(declare-fun b!2039568 () Bool)

(assert (=> b!2039568 (= e!1287692 Nil!22279)))

(declare-fun b!2039569 () Bool)

(assert (=> b!2039569 (= e!1287694 (forall!4757 lt!765291 p!1489))))

(assert (= (and d!624703 c!330476) b!2039568))

(assert (= (and d!624703 (not c!330476)) b!2039566))

(assert (= (and b!2039566 c!330477) b!2039564))

(assert (= (and b!2039566 (not c!330477)) b!2039567))

(assert (= (or b!2039564 b!2039567) bm!125059))

(assert (= (and d!624703 res!894128) b!2039565))

(assert (= (and b!2039565 res!894127) b!2039569))

(declare-fun b_lambda!68973 () Bool)

(assert (=> (not b_lambda!68973) (not b!2039566)))

(declare-fun t!191425 () Bool)

(declare-fun tb!128945 () Bool)

(assert (=> (and start!200960 (= p!1489 p!1489) t!191425) tb!128945))

(declare-fun result!154264 () Bool)

(assert (=> tb!128945 (= result!154264 true)))

(assert (=> b!2039566 t!191425))

(declare-fun b_and!162737 () Bool)

(assert (= b_and!162735 (and (=> t!191425 result!154264) b_and!162737)))

(declare-fun m!2483341 () Bool)

(assert (=> b!2039565 m!2483341))

(assert (=> b!2039565 m!2482599))

(declare-fun m!2483343 () Bool)

(assert (=> b!2039565 m!2483343))

(declare-fun m!2483345 () Bool)

(assert (=> b!2039566 m!2483345))

(declare-fun m!2483347 () Bool)

(assert (=> d!624703 m!2483347))

(assert (=> d!624703 m!2482599))

(declare-fun m!2483349 () Bool)

(assert (=> d!624703 m!2483349))

(declare-fun m!2483351 () Bool)

(assert (=> bm!125059 m!2483351))

(declare-fun m!2483353 () Bool)

(assert (=> b!2039569 m!2483353))

(assert (=> b!2039260 d!624703))

(assert (=> b!2039260 d!624515))

(declare-fun d!624705 () Bool)

(declare-fun lt!765292 () Int)

(assert (=> d!624705 (>= lt!765292 0)))

(declare-fun e!1287695 () Int)

(assert (=> d!624705 (= lt!765292 e!1287695)))

(declare-fun c!330478 () Bool)

(assert (=> d!624705 (= c!330478 ((_ is Nil!22279) lt!765201))))

(assert (=> d!624705 (= (size!17433 lt!765201) lt!765292)))

(declare-fun b!2039570 () Bool)

(assert (=> b!2039570 (= e!1287695 0)))

(declare-fun b!2039571 () Bool)

(assert (=> b!2039571 (= e!1287695 (+ 1 (size!17433 (t!191396 lt!765201))))))

(assert (= (and d!624705 c!330478) b!2039570))

(assert (= (and d!624705 (not c!330478)) b!2039571))

(declare-fun m!2483361 () Bool)

(assert (=> b!2039571 m!2483361))

(assert (=> b!2039098 d!624705))

(declare-fun d!624707 () Bool)

(declare-fun lt!765293 () Int)

(assert (=> d!624707 (>= lt!765293 0)))

(declare-fun e!1287696 () Int)

(assert (=> d!624707 (= lt!765293 e!1287696)))

(declare-fun c!330479 () Bool)

(assert (=> d!624707 (= c!330479 ((_ is Nil!22279) (filter!478 lt!765175 p!1489)))))

(assert (=> d!624707 (= (size!17433 (filter!478 lt!765175 p!1489)) lt!765293)))

(declare-fun b!2039572 () Bool)

(assert (=> b!2039572 (= e!1287696 0)))

(declare-fun b!2039573 () Bool)

(assert (=> b!2039573 (= e!1287696 (+ 1 (size!17433 (t!191396 (filter!478 lt!765175 p!1489)))))))

(assert (= (and d!624707 c!330479) b!2039572))

(assert (= (and d!624707 (not c!330479)) b!2039573))

(assert (=> b!2039573 m!2482989))

(assert (=> b!2039098 d!624707))

(declare-fun d!624709 () Bool)

(declare-fun lt!765294 () Int)

(assert (=> d!624709 (>= lt!765294 0)))

(declare-fun e!1287697 () Int)

(assert (=> d!624709 (= lt!765294 e!1287697)))

(declare-fun c!330480 () Bool)

(assert (=> d!624709 (= c!330480 ((_ is Nil!22279) (filter!478 lt!765176 p!1489)))))

(assert (=> d!624709 (= (size!17433 (filter!478 lt!765176 p!1489)) lt!765294)))

(declare-fun b!2039574 () Bool)

(assert (=> b!2039574 (= e!1287697 0)))

(declare-fun b!2039575 () Bool)

(assert (=> b!2039575 (= e!1287697 (+ 1 (size!17433 (t!191396 (filter!478 lt!765176 p!1489)))))))

(assert (= (and d!624709 c!330480) b!2039574))

(assert (= (and d!624709 (not c!330480)) b!2039575))

(declare-fun m!2483369 () Bool)

(assert (=> b!2039575 m!2483369))

(assert (=> b!2039098 d!624709))

(declare-fun d!624713 () Bool)

(declare-fun lt!765297 () Int)

(assert (=> d!624713 (>= lt!765297 0)))

(declare-fun ListPrimitiveSize!147 (List!22361) Int)

(assert (=> d!624713 (= lt!765297 (+ 1 (ListPrimitiveSize!147 (innerList!7531 (xs!10373 t!4319)))))))

(assert (=> d!624713 (= (IArrayPrimitiveSize!21 (xs!10373 t!4319)) lt!765297)))

(declare-fun bs!421475 () Bool)

(assert (= bs!421475 d!624713))

(declare-fun m!2483371 () Bool)

(assert (=> bs!421475 m!2483371))

(assert (=> b!2039196 d!624713))

(declare-fun d!624719 () Bool)

(declare-fun lt!765299 () Int)

(assert (=> d!624719 (>= lt!765299 0)))

(declare-fun e!1287701 () Int)

(assert (=> d!624719 (= lt!765299 e!1287701)))

(declare-fun c!330484 () Bool)

(assert (=> d!624719 (= c!330484 ((_ is Node!7471) (left!17743 (right!18073 t!4319))))))

(assert (=> d!624719 (= (ConcPrimitiveSize!22 (left!17743 (right!18073 t!4319))) lt!765299)))

(declare-fun b!2039582 () Bool)

(declare-fun e!1287702 () Int)

(assert (=> b!2039582 (= e!1287701 e!1287702)))

(declare-fun c!330483 () Bool)

(assert (=> b!2039582 (= c!330483 ((_ is Leaf!10948) (left!17743 (right!18073 t!4319))))))

(declare-fun b!2039583 () Bool)

(declare-fun call!125066 () Int)

(assert (=> b!2039583 (= e!1287701 (+ 1 (ConcPrimitiveSize!22 (left!17743 (left!17743 (right!18073 t!4319)))) (ConcPrimitiveSize!22 (right!18073 (left!17743 (right!18073 t!4319)))) call!125066 (BigIntAbs!0 (cheight!7682 (left!17743 (right!18073 t!4319))))))))

(declare-fun b!2039584 () Bool)

(assert (=> b!2039584 (= e!1287702 0)))

(declare-fun bm!125061 () Bool)

(assert (=> bm!125061 (= call!125066 (BigIntAbs!0 (ite c!330484 (csize!15172 (left!17743 (right!18073 t!4319))) (csize!15173 (left!17743 (right!18073 t!4319))))))))

(declare-fun b!2039585 () Bool)

(assert (=> b!2039585 (= e!1287702 (+ 1 (IArrayPrimitiveSize!21 (xs!10373 (left!17743 (right!18073 t!4319)))) call!125066))))

(assert (= (and d!624719 c!330484) b!2039583))

(assert (= (and d!624719 (not c!330484)) b!2039582))

(assert (= (and b!2039582 c!330483) b!2039585))

(assert (= (and b!2039582 (not c!330483)) b!2039584))

(assert (= (or b!2039583 b!2039585) bm!125061))

(declare-fun m!2483373 () Bool)

(assert (=> b!2039583 m!2483373))

(declare-fun m!2483375 () Bool)

(assert (=> b!2039583 m!2483375))

(declare-fun m!2483377 () Bool)

(assert (=> b!2039583 m!2483377))

(declare-fun m!2483379 () Bool)

(assert (=> bm!125061 m!2483379))

(declare-fun m!2483381 () Bool)

(assert (=> b!2039585 m!2483381))

(assert (=> b!2039190 d!624719))

(declare-fun d!624721 () Bool)

(declare-fun lt!765300 () Int)

(assert (=> d!624721 (>= lt!765300 0)))

(declare-fun e!1287703 () Int)

(assert (=> d!624721 (= lt!765300 e!1287703)))

(declare-fun c!330486 () Bool)

(assert (=> d!624721 (= c!330486 ((_ is Node!7471) (right!18073 (right!18073 t!4319))))))

(assert (=> d!624721 (= (ConcPrimitiveSize!22 (right!18073 (right!18073 t!4319))) lt!765300)))

(declare-fun b!2039586 () Bool)

(declare-fun e!1287704 () Int)

(assert (=> b!2039586 (= e!1287703 e!1287704)))

(declare-fun c!330485 () Bool)

(assert (=> b!2039586 (= c!330485 ((_ is Leaf!10948) (right!18073 (right!18073 t!4319))))))

(declare-fun b!2039587 () Bool)

(declare-fun call!125067 () Int)

(assert (=> b!2039587 (= e!1287703 (+ 1 (ConcPrimitiveSize!22 (left!17743 (right!18073 (right!18073 t!4319)))) (ConcPrimitiveSize!22 (right!18073 (right!18073 (right!18073 t!4319)))) call!125067 (BigIntAbs!0 (cheight!7682 (right!18073 (right!18073 t!4319))))))))

(declare-fun b!2039588 () Bool)

(assert (=> b!2039588 (= e!1287704 0)))

(declare-fun bm!125062 () Bool)

(assert (=> bm!125062 (= call!125067 (BigIntAbs!0 (ite c!330486 (csize!15172 (right!18073 (right!18073 t!4319))) (csize!15173 (right!18073 (right!18073 t!4319))))))))

(declare-fun b!2039589 () Bool)

(assert (=> b!2039589 (= e!1287704 (+ 1 (IArrayPrimitiveSize!21 (xs!10373 (right!18073 (right!18073 t!4319)))) call!125067))))

(assert (= (and d!624721 c!330486) b!2039587))

(assert (= (and d!624721 (not c!330486)) b!2039586))

(assert (= (and b!2039586 c!330485) b!2039589))

(assert (= (and b!2039586 (not c!330485)) b!2039588))

(assert (= (or b!2039587 b!2039589) bm!125062))

(declare-fun m!2483383 () Bool)

(assert (=> b!2039587 m!2483383))

(declare-fun m!2483385 () Bool)

(assert (=> b!2039587 m!2483385))

(declare-fun m!2483387 () Bool)

(assert (=> b!2039587 m!2483387))

(declare-fun m!2483389 () Bool)

(assert (=> bm!125062 m!2483389))

(declare-fun m!2483391 () Bool)

(assert (=> b!2039589 m!2483391))

(assert (=> b!2039190 d!624721))

(declare-fun d!624723 () Bool)

(assert (=> d!624723 (= (BigIntAbs!0 (cheight!7682 (right!18073 t!4319))) (ite (>= (cheight!7682 (right!18073 t!4319)) 0) (cheight!7682 (right!18073 t!4319)) (- (cheight!7682 (right!18073 t!4319)))))))

(assert (=> b!2039190 d!624723))

(declare-fun d!624725 () Bool)

(assert (=> d!624725 (= (list!9140 (xs!10373 (right!18073 t!4319))) (innerList!7531 (xs!10373 (right!18073 t!4319))))))

(assert (=> b!2039061 d!624725))

(declare-fun d!624727 () Bool)

(declare-fun lt!765301 () Int)

(assert (=> d!624727 (>= lt!765301 0)))

(declare-fun e!1287705 () Int)

(assert (=> d!624727 (= lt!765301 e!1287705)))

(declare-fun c!330487 () Bool)

(assert (=> d!624727 (= c!330487 ((_ is Nil!22279) lt!765181))))

(assert (=> d!624727 (= (size!17433 lt!765181) lt!765301)))

(declare-fun b!2039590 () Bool)

(assert (=> b!2039590 (= e!1287705 0)))

(declare-fun b!2039591 () Bool)

(assert (=> b!2039591 (= e!1287705 (+ 1 (size!17433 (t!191396 lt!765181))))))

(assert (= (and d!624727 c!330487) b!2039590))

(assert (= (and d!624727 (not c!330487)) b!2039591))

(declare-fun m!2483393 () Bool)

(assert (=> b!2039591 m!2483393))

(assert (=> d!624501 d!624727))

(declare-fun d!624729 () Bool)

(declare-fun lt!765302 () Int)

(assert (=> d!624729 (>= lt!765302 0)))

(declare-fun e!1287706 () Int)

(assert (=> d!624729 (= lt!765302 e!1287706)))

(declare-fun c!330488 () Bool)

(assert (=> d!624729 (= c!330488 ((_ is Nil!22279) (++!6051 lt!765175 lt!765176)))))

(assert (=> d!624729 (= (size!17433 (++!6051 lt!765175 lt!765176)) lt!765302)))

(declare-fun b!2039592 () Bool)

(assert (=> b!2039592 (= e!1287706 0)))

(declare-fun b!2039593 () Bool)

(assert (=> b!2039593 (= e!1287706 (+ 1 (size!17433 (t!191396 (++!6051 lt!765175 lt!765176)))))))

(assert (= (and d!624729 c!330488) b!2039592))

(assert (= (and d!624729 (not c!330488)) b!2039593))

(declare-fun m!2483397 () Bool)

(assert (=> b!2039593 m!2483397))

(assert (=> d!624501 d!624729))

(declare-fun b!2039594 () Bool)

(declare-fun e!1287708 () List!22361)

(declare-fun call!125068 () List!22361)

(assert (=> b!2039594 (= e!1287708 (Cons!22279 (h!27680 (t!191396 lt!765175)) call!125068))))

(declare-fun bm!125063 () Bool)

(assert (=> bm!125063 (= call!125068 (filter!478 (t!191396 (t!191396 lt!765175)) p!1489))))

(declare-fun b!2039595 () Bool)

(declare-fun res!894131 () Bool)

(declare-fun e!1287709 () Bool)

(assert (=> b!2039595 (=> (not res!894131) (not e!1287709))))

(declare-fun lt!765303 () List!22361)

(assert (=> b!2039595 (= res!894131 (= ((_ map implies) (content!3310 lt!765303) (content!3310 (t!191396 lt!765175))) ((as const (InoxSet T!36018)) true)))))

(declare-fun b!2039596 () Bool)

(declare-fun e!1287707 () List!22361)

(assert (=> b!2039596 (= e!1287707 e!1287708)))

(declare-fun c!330490 () Bool)

(assert (=> b!2039596 (= c!330490 (dynLambda!11107 p!1489 (h!27680 (t!191396 lt!765175))))))

(declare-fun d!624731 () Bool)

(assert (=> d!624731 e!1287709))

(declare-fun res!894132 () Bool)

(assert (=> d!624731 (=> (not res!894132) (not e!1287709))))

(assert (=> d!624731 (= res!894132 (<= (size!17433 lt!765303) (size!17433 (t!191396 lt!765175))))))

(assert (=> d!624731 (= lt!765303 e!1287707)))

(declare-fun c!330489 () Bool)

(assert (=> d!624731 (= c!330489 ((_ is Nil!22279) (t!191396 lt!765175)))))

(assert (=> d!624731 (= (filter!478 (t!191396 lt!765175) p!1489) lt!765303)))

(declare-fun b!2039597 () Bool)

(assert (=> b!2039597 (= e!1287708 call!125068)))

(declare-fun b!2039598 () Bool)

(assert (=> b!2039598 (= e!1287707 Nil!22279)))

(declare-fun b!2039599 () Bool)

(assert (=> b!2039599 (= e!1287709 (forall!4757 lt!765303 p!1489))))

(assert (= (and d!624731 c!330489) b!2039598))

(assert (= (and d!624731 (not c!330489)) b!2039596))

(assert (= (and b!2039596 c!330490) b!2039594))

(assert (= (and b!2039596 (not c!330490)) b!2039597))

(assert (= (or b!2039594 b!2039597) bm!125063))

(assert (= (and d!624731 res!894132) b!2039595))

(assert (= (and b!2039595 res!894131) b!2039599))

(declare-fun b_lambda!68977 () Bool)

(assert (=> (not b_lambda!68977) (not b!2039596)))

(declare-fun t!191430 () Bool)

(declare-fun tb!128949 () Bool)

(assert (=> (and start!200960 (= p!1489 p!1489) t!191430) tb!128949))

(declare-fun result!154268 () Bool)

(assert (=> tb!128949 (= result!154268 true)))

(assert (=> b!2039596 t!191430))

(declare-fun b_and!162741 () Bool)

(assert (= b_and!162737 (and (=> t!191430 result!154268) b_and!162741)))

(declare-fun m!2483409 () Bool)

(assert (=> b!2039595 m!2483409))

(assert (=> b!2039595 m!2483009))

(declare-fun m!2483411 () Bool)

(assert (=> b!2039596 m!2483411))

(declare-fun m!2483413 () Bool)

(assert (=> d!624731 m!2483413))

(assert (=> d!624731 m!2483029))

(declare-fun m!2483415 () Bool)

(assert (=> bm!125063 m!2483415))

(declare-fun m!2483417 () Bool)

(assert (=> b!2039599 m!2483417))

(assert (=> bm!124993 d!624731))

(declare-fun b!2039606 () Bool)

(declare-fun e!1287714 () List!22361)

(declare-fun call!125070 () List!22361)

(assert (=> b!2039606 (= e!1287714 (Cons!22279 (h!27680 (t!191396 (++!6051 lt!765175 lt!765176))) call!125070))))

(declare-fun bm!125065 () Bool)

(assert (=> bm!125065 (= call!125070 (filter!478 (t!191396 (t!191396 (++!6051 lt!765175 lt!765176))) p!1489))))

(declare-fun b!2039607 () Bool)

(declare-fun res!894135 () Bool)

(declare-fun e!1287715 () Bool)

(assert (=> b!2039607 (=> (not res!894135) (not e!1287715))))

(declare-fun lt!765305 () List!22361)

(assert (=> b!2039607 (= res!894135 (= ((_ map implies) (content!3310 lt!765305) (content!3310 (t!191396 (++!6051 lt!765175 lt!765176)))) ((as const (InoxSet T!36018)) true)))))

(declare-fun b!2039608 () Bool)

(declare-fun e!1287713 () List!22361)

(assert (=> b!2039608 (= e!1287713 e!1287714)))

(declare-fun c!330494 () Bool)

(assert (=> b!2039608 (= c!330494 (dynLambda!11107 p!1489 (h!27680 (t!191396 (++!6051 lt!765175 lt!765176)))))))

(declare-fun d!624735 () Bool)

(assert (=> d!624735 e!1287715))

(declare-fun res!894136 () Bool)

(assert (=> d!624735 (=> (not res!894136) (not e!1287715))))

(assert (=> d!624735 (= res!894136 (<= (size!17433 lt!765305) (size!17433 (t!191396 (++!6051 lt!765175 lt!765176)))))))

(assert (=> d!624735 (= lt!765305 e!1287713)))

(declare-fun c!330493 () Bool)

(assert (=> d!624735 (= c!330493 ((_ is Nil!22279) (t!191396 (++!6051 lt!765175 lt!765176))))))

(assert (=> d!624735 (= (filter!478 (t!191396 (++!6051 lt!765175 lt!765176)) p!1489) lt!765305)))

(declare-fun b!2039609 () Bool)

(assert (=> b!2039609 (= e!1287714 call!125070)))

(declare-fun b!2039610 () Bool)

(assert (=> b!2039610 (= e!1287713 Nil!22279)))

(declare-fun b!2039611 () Bool)

(assert (=> b!2039611 (= e!1287715 (forall!4757 lt!765305 p!1489))))

(assert (= (and d!624735 c!330493) b!2039610))

(assert (= (and d!624735 (not c!330493)) b!2039608))

(assert (= (and b!2039608 c!330494) b!2039606))

(assert (= (and b!2039608 (not c!330494)) b!2039609))

(assert (= (or b!2039606 b!2039609) bm!125065))

(assert (= (and d!624735 res!894136) b!2039607))

(assert (= (and b!2039607 res!894135) b!2039611))

(declare-fun b_lambda!68979 () Bool)

(assert (=> (not b_lambda!68979) (not b!2039608)))

(declare-fun t!191432 () Bool)

(declare-fun tb!128951 () Bool)

(assert (=> (and start!200960 (= p!1489 p!1489) t!191432) tb!128951))

(declare-fun result!154270 () Bool)

(assert (=> tb!128951 (= result!154270 true)))

(assert (=> b!2039608 t!191432))

(declare-fun b_and!162743 () Bool)

(assert (= b_and!162741 (and (=> t!191432 result!154270) b_and!162743)))

(declare-fun m!2483419 () Bool)

(assert (=> b!2039607 m!2483419))

(assert (=> b!2039607 m!2483017))

(declare-fun m!2483421 () Bool)

(assert (=> b!2039608 m!2483421))

(declare-fun m!2483423 () Bool)

(assert (=> d!624735 m!2483423))

(assert (=> d!624735 m!2483397))

(declare-fun m!2483425 () Bool)

(assert (=> bm!125065 m!2483425))

(declare-fun m!2483427 () Bool)

(assert (=> b!2039611 m!2483427))

(assert (=> bm!124992 d!624735))

(declare-fun d!624737 () Bool)

(declare-fun c!330495 () Bool)

(assert (=> d!624737 (= c!330495 ((_ is Node!7471) (left!17743 (left!17743 t!4319))))))

(declare-fun e!1287716 () Bool)

(assert (=> d!624737 (= (inv!29593 (left!17743 (left!17743 t!4319))) e!1287716)))

(declare-fun b!2039612 () Bool)

(assert (=> b!2039612 (= e!1287716 (inv!29597 (left!17743 (left!17743 t!4319))))))

(declare-fun b!2039613 () Bool)

(declare-fun e!1287717 () Bool)

(assert (=> b!2039613 (= e!1287716 e!1287717)))

(declare-fun res!894137 () Bool)

(assert (=> b!2039613 (= res!894137 (not ((_ is Leaf!10948) (left!17743 (left!17743 t!4319)))))))

(assert (=> b!2039613 (=> res!894137 e!1287717)))

(declare-fun b!2039614 () Bool)

(assert (=> b!2039614 (= e!1287717 (inv!29598 (left!17743 (left!17743 t!4319))))))

(assert (= (and d!624737 c!330495) b!2039612))

(assert (= (and d!624737 (not c!330495)) b!2039613))

(assert (= (and b!2039613 (not res!894137)) b!2039614))

(declare-fun m!2483433 () Bool)

(assert (=> b!2039612 m!2483433))

(declare-fun m!2483435 () Bool)

(assert (=> b!2039614 m!2483435))

(assert (=> b!2039297 d!624737))

(declare-fun d!624739 () Bool)

(declare-fun c!330496 () Bool)

(assert (=> d!624739 (= c!330496 ((_ is Node!7471) (right!18073 (left!17743 t!4319))))))

(declare-fun e!1287718 () Bool)

(assert (=> d!624739 (= (inv!29593 (right!18073 (left!17743 t!4319))) e!1287718)))

(declare-fun b!2039615 () Bool)

(assert (=> b!2039615 (= e!1287718 (inv!29597 (right!18073 (left!17743 t!4319))))))

(declare-fun b!2039616 () Bool)

(declare-fun e!1287719 () Bool)

(assert (=> b!2039616 (= e!1287718 e!1287719)))

(declare-fun res!894138 () Bool)

(assert (=> b!2039616 (= res!894138 (not ((_ is Leaf!10948) (right!18073 (left!17743 t!4319)))))))

(assert (=> b!2039616 (=> res!894138 e!1287719)))

(declare-fun b!2039617 () Bool)

(assert (=> b!2039617 (= e!1287719 (inv!29598 (right!18073 (left!17743 t!4319))))))

(assert (= (and d!624739 c!330496) b!2039615))

(assert (= (and d!624739 (not c!330496)) b!2039616))

(assert (= (and b!2039616 (not res!894138)) b!2039617))

(declare-fun m!2483445 () Bool)

(assert (=> b!2039615 m!2483445))

(declare-fun m!2483447 () Bool)

(assert (=> b!2039617 m!2483447))

(assert (=> b!2039297 d!624739))

(assert (=> d!624511 d!624501))

(assert (=> d!624511 d!624507))

(declare-fun d!624743 () Bool)

(assert (=> d!624743 (= (filter!478 (++!6051 lt!765175 lt!765176) p!1489) (++!6051 (filter!478 lt!765175 p!1489) (filter!478 lt!765176 p!1489)))))

(assert (=> d!624743 true))

(declare-fun _$81!84 () Unit!36976)

(assert (=> d!624743 (= (choose!12443 lt!765175 lt!765176 p!1489) _$81!84)))

(declare-fun bs!421476 () Bool)

(assert (= bs!421476 d!624743))

(assert (=> bs!421476 m!2482601))

(assert (=> bs!421476 m!2482607))

(assert (=> bs!421476 m!2482597))

(assert (=> bs!421476 m!2482597))

(assert (=> bs!421476 m!2482605))

(assert (=> bs!421476 m!2482611))

(assert (=> bs!421476 m!2482605))

(assert (=> bs!421476 m!2482601))

(assert (=> d!624511 d!624743))

(assert (=> d!624511 d!624517))

(assert (=> d!624511 d!624521))

(assert (=> d!624511 d!624523))

(declare-fun d!624745 () Bool)

(assert (=> d!624745 (= (height!1170 (left!17743 t!4319)) (ite ((_ is Empty!7471) (left!17743 t!4319)) 0 (ite ((_ is Leaf!10948) (left!17743 t!4319)) 1 (cheight!7682 (left!17743 t!4319)))))))

(assert (=> b!2039128 d!624745))

(declare-fun d!624747 () Bool)

(assert (=> d!624747 (= (height!1170 (right!18073 t!4319)) (ite ((_ is Empty!7471) (right!18073 t!4319)) 0 (ite ((_ is Leaf!10948) (right!18073 t!4319)) 1 (cheight!7682 (right!18073 t!4319)))))))

(assert (=> b!2039128 d!624747))

(declare-fun d!624749 () Bool)

(declare-fun lt!765306 () Int)

(assert (=> d!624749 (>= lt!765306 0)))

(declare-fun e!1287722 () Int)

(assert (=> d!624749 (= lt!765306 e!1287722)))

(declare-fun c!330499 () Bool)

(assert (=> d!624749 (= c!330499 ((_ is Nil!22279) (innerList!7531 (xs!10373 t!4319))))))

(assert (=> d!624749 (= (size!17433 (innerList!7531 (xs!10373 t!4319))) lt!765306)))

(declare-fun b!2039622 () Bool)

(assert (=> b!2039622 (= e!1287722 0)))

(declare-fun b!2039623 () Bool)

(assert (=> b!2039623 (= e!1287722 (+ 1 (size!17433 (t!191396 (innerList!7531 (xs!10373 t!4319))))))))

(assert (= (and d!624749 c!330499) b!2039622))

(assert (= (and d!624749 (not c!330499)) b!2039623))

(declare-fun m!2483449 () Bool)

(assert (=> b!2039623 m!2483449))

(assert (=> d!624541 d!624749))

(declare-fun b!2039626 () Bool)

(declare-fun res!894140 () Bool)

(declare-fun e!1287723 () Bool)

(assert (=> b!2039626 (=> (not res!894140) (not e!1287723))))

(declare-fun lt!765307 () List!22361)

(assert (=> b!2039626 (= res!894140 (= (size!17433 lt!765307) (+ (size!17433 (t!191396 lt!765175)) (size!17433 lt!765176))))))

(declare-fun b!2039624 () Bool)

(declare-fun e!1287724 () List!22361)

(assert (=> b!2039624 (= e!1287724 lt!765176)))

(declare-fun b!2039627 () Bool)

(assert (=> b!2039627 (= e!1287723 (or (not (= lt!765176 Nil!22279)) (= lt!765307 (t!191396 lt!765175))))))

(declare-fun b!2039625 () Bool)

(assert (=> b!2039625 (= e!1287724 (Cons!22279 (h!27680 (t!191396 lt!765175)) (++!6051 (t!191396 (t!191396 lt!765175)) lt!765176)))))

(declare-fun d!624751 () Bool)

(assert (=> d!624751 e!1287723))

(declare-fun res!894139 () Bool)

(assert (=> d!624751 (=> (not res!894139) (not e!1287723))))

(assert (=> d!624751 (= res!894139 (= (content!3310 lt!765307) ((_ map or) (content!3310 (t!191396 lt!765175)) (content!3310 lt!765176))))))

(assert (=> d!624751 (= lt!765307 e!1287724)))

(declare-fun c!330500 () Bool)

(assert (=> d!624751 (= c!330500 ((_ is Nil!22279) (t!191396 lt!765175)))))

(assert (=> d!624751 (= (++!6051 (t!191396 lt!765175) lt!765176) lt!765307)))

(assert (= (and d!624751 c!330500) b!2039624))

(assert (= (and d!624751 (not c!330500)) b!2039625))

(assert (= (and d!624751 res!894139) b!2039626))

(assert (= (and b!2039626 res!894140) b!2039627))

(declare-fun m!2483451 () Bool)

(assert (=> b!2039626 m!2483451))

(assert (=> b!2039626 m!2483029))

(assert (=> b!2039626 m!2482691))

(declare-fun m!2483453 () Bool)

(assert (=> b!2039625 m!2483453))

(declare-fun m!2483455 () Bool)

(assert (=> d!624751 m!2483455))

(assert (=> d!624751 m!2483009))

(assert (=> d!624751 m!2482685))

(assert (=> b!2039093 d!624751))

(assert (=> b!2039124 d!624745))

(assert (=> b!2039124 d!624747))

(assert (=> b!2039263 d!624667))

(declare-fun d!624753 () Bool)

(assert (=> d!624753 (= (inv!29594 (xs!10373 (right!18073 t!4319))) (<= (size!17433 (innerList!7531 (xs!10373 (right!18073 t!4319)))) 2147483647))))

(declare-fun bs!421477 () Bool)

(assert (= bs!421477 d!624753))

(declare-fun m!2483457 () Bool)

(assert (=> bs!421477 m!2483457))

(assert (=> b!2039301 d!624753))

(declare-fun d!624755 () Bool)

(declare-fun res!894141 () Bool)

(declare-fun e!1287726 () Bool)

(assert (=> d!624755 (=> res!894141 e!1287726)))

(assert (=> d!624755 (= res!894141 ((_ is Nil!22279) lt!765188))))

(assert (=> d!624755 (= (forall!4757 lt!765188 p!1489) e!1287726)))

(declare-fun b!2039630 () Bool)

(declare-fun e!1287727 () Bool)

(assert (=> b!2039630 (= e!1287726 e!1287727)))

(declare-fun res!894142 () Bool)

(assert (=> b!2039630 (=> (not res!894142) (not e!1287727))))

(assert (=> b!2039630 (= res!894142 (dynLambda!11107 p!1489 (h!27680 lt!765188)))))

(declare-fun b!2039631 () Bool)

(assert (=> b!2039631 (= e!1287727 (forall!4757 (t!191396 lt!765188) p!1489))))

(assert (= (and d!624755 (not res!894141)) b!2039630))

(assert (= (and b!2039630 res!894142) b!2039631))

(declare-fun b_lambda!68983 () Bool)

(assert (=> (not b_lambda!68983) (not b!2039630)))

(declare-fun t!191437 () Bool)

(declare-fun tb!128955 () Bool)

(assert (=> (and start!200960 (= p!1489 p!1489) t!191437) tb!128955))

(declare-fun result!154274 () Bool)

(assert (=> tb!128955 (= result!154274 true)))

(assert (=> b!2039630 t!191437))

(declare-fun b_and!162747 () Bool)

(assert (= b_and!162743 (and (=> t!191437 result!154274) b_and!162747)))

(declare-fun m!2483463 () Bool)

(assert (=> b!2039630 m!2483463))

(declare-fun m!2483465 () Bool)

(assert (=> b!2039631 m!2483465))

(assert (=> b!2039058 d!624755))

(declare-fun d!624759 () Bool)

(declare-fun c!330503 () Bool)

(assert (=> d!624759 (= c!330503 ((_ is Nil!22279) lt!765200))))

(declare-fun e!1287729 () (InoxSet T!36018))

(assert (=> d!624759 (= (content!3310 lt!765200) e!1287729)))

(declare-fun b!2039634 () Bool)

(assert (=> b!2039634 (= e!1287729 ((as const (Array T!36018 Bool)) false))))

(declare-fun b!2039635 () Bool)

(assert (=> b!2039635 (= e!1287729 ((_ map or) (store ((as const (Array T!36018 Bool)) false) (h!27680 lt!765200) true) (content!3310 (t!191396 lt!765200))))))

(assert (= (and d!624759 c!330503) b!2039634))

(assert (= (and d!624759 (not c!330503)) b!2039635))

(declare-fun m!2483469 () Bool)

(assert (=> b!2039635 m!2483469))

(declare-fun m!2483471 () Bool)

(assert (=> b!2039635 m!2483471))

(assert (=> d!624521 d!624759))

(assert (=> d!624521 d!624591))

(declare-fun d!624761 () Bool)

(declare-fun c!330504 () Bool)

(assert (=> d!624761 (= c!330504 ((_ is Nil!22279) lt!765176))))

(declare-fun e!1287730 () (InoxSet T!36018))

(assert (=> d!624761 (= (content!3310 lt!765176) e!1287730)))

(declare-fun b!2039636 () Bool)

(assert (=> b!2039636 (= e!1287730 ((as const (Array T!36018 Bool)) false))))

(declare-fun b!2039637 () Bool)

(assert (=> b!2039637 (= e!1287730 ((_ map or) (store ((as const (Array T!36018 Bool)) false) (h!27680 lt!765176) true) (content!3310 (t!191396 lt!765176))))))

(assert (= (and d!624761 c!330504) b!2039636))

(assert (= (and d!624761 (not c!330504)) b!2039637))

(declare-fun m!2483473 () Bool)

(assert (=> b!2039637 m!2483473))

(assert (=> b!2039637 m!2483289))

(assert (=> d!624521 d!624761))

(assert (=> b!2039126 d!624683))

(declare-fun d!624765 () Bool)

(declare-fun res!894144 () Bool)

(declare-fun e!1287733 () Bool)

(assert (=> d!624765 (=> (not res!894144) (not e!1287733))))

(assert (=> d!624765 (= res!894144 (<= (size!17433 (list!9140 (xs!10373 (right!18073 t!4319)))) 512))))

(assert (=> d!624765 (= (inv!29598 (right!18073 t!4319)) e!1287733)))

(declare-fun b!2039641 () Bool)

(declare-fun res!894145 () Bool)

(assert (=> b!2039641 (=> (not res!894145) (not e!1287733))))

(assert (=> b!2039641 (= res!894145 (= (csize!15173 (right!18073 t!4319)) (size!17433 (list!9140 (xs!10373 (right!18073 t!4319))))))))

(declare-fun b!2039642 () Bool)

(assert (=> b!2039642 (= e!1287733 (and (> (csize!15173 (right!18073 t!4319)) 0) (<= (csize!15173 (right!18073 t!4319)) 512)))))

(assert (= (and d!624765 res!894144) b!2039641))

(assert (= (and b!2039641 res!894145) b!2039642))

(assert (=> d!624765 m!2482703))

(assert (=> d!624765 m!2482703))

(declare-fun m!2483475 () Bool)

(assert (=> d!624765 m!2483475))

(assert (=> b!2039641 m!2482703))

(assert (=> b!2039641 m!2482703))

(assert (=> b!2039641 m!2483475))

(assert (=> b!2039162 d!624765))

(declare-fun d!624767 () Bool)

(declare-fun c!330506 () Bool)

(assert (=> d!624767 (= c!330506 ((_ is Nil!22279) lt!765188))))

(declare-fun e!1287734 () (InoxSet T!36018))

(assert (=> d!624767 (= (content!3310 lt!765188) e!1287734)))

(declare-fun b!2039643 () Bool)

(assert (=> b!2039643 (= e!1287734 ((as const (Array T!36018 Bool)) false))))

(declare-fun b!2039644 () Bool)

(assert (=> b!2039644 (= e!1287734 ((_ map or) (store ((as const (Array T!36018 Bool)) false) (h!27680 lt!765188) true) (content!3310 (t!191396 lt!765188))))))

(assert (= (and d!624767 c!330506) b!2039643))

(assert (= (and d!624767 (not c!330506)) b!2039644))

(declare-fun m!2483481 () Bool)

(assert (=> b!2039644 m!2483481))

(declare-fun m!2483483 () Bool)

(assert (=> b!2039644 m!2483483))

(assert (=> b!2039054 d!624767))

(assert (=> b!2039054 d!624761))

(declare-fun d!624771 () Bool)

(declare-fun res!894147 () Bool)

(declare-fun e!1287737 () Bool)

(assert (=> d!624771 (=> (not res!894147) (not e!1287737))))

(assert (=> d!624771 (= res!894147 (= (csize!15172 (right!18073 t!4319)) (+ (size!17436 (left!17743 (right!18073 t!4319))) (size!17436 (right!18073 (right!18073 t!4319))))))))

(assert (=> d!624771 (= (inv!29597 (right!18073 t!4319)) e!1287737)))

(declare-fun b!2039648 () Bool)

(declare-fun res!894148 () Bool)

(assert (=> b!2039648 (=> (not res!894148) (not e!1287737))))

(assert (=> b!2039648 (= res!894148 (and (not (= (left!17743 (right!18073 t!4319)) Empty!7471)) (not (= (right!18073 (right!18073 t!4319)) Empty!7471))))))

(declare-fun b!2039649 () Bool)

(declare-fun res!894149 () Bool)

(assert (=> b!2039649 (=> (not res!894149) (not e!1287737))))

(assert (=> b!2039649 (= res!894149 (= (cheight!7682 (right!18073 t!4319)) (+ (max!0 (height!1170 (left!17743 (right!18073 t!4319))) (height!1170 (right!18073 (right!18073 t!4319)))) 1)))))

(declare-fun b!2039650 () Bool)

(assert (=> b!2039650 (= e!1287737 (<= 0 (cheight!7682 (right!18073 t!4319))))))

(assert (= (and d!624771 res!894147) b!2039648))

(assert (= (and b!2039648 res!894148) b!2039649))

(assert (= (and b!2039649 res!894149) b!2039650))

(declare-fun m!2483485 () Bool)

(assert (=> d!624771 m!2483485))

(declare-fun m!2483487 () Bool)

(assert (=> d!624771 m!2483487))

(assert (=> b!2039649 m!2483221))

(assert (=> b!2039649 m!2483223))

(assert (=> b!2039649 m!2483221))

(assert (=> b!2039649 m!2483223))

(declare-fun m!2483493 () Bool)

(assert (=> b!2039649 m!2483493))

(assert (=> b!2039160 d!624771))

(declare-fun d!624775 () Bool)

(declare-fun lt!765308 () Int)

(assert (=> d!624775 (>= lt!765308 0)))

(assert (=> d!624775 (= lt!765308 (+ 1 (ListPrimitiveSize!147 (innerList!7531 (xs!10373 (right!18073 t!4319))))))))

(assert (=> d!624775 (= (IArrayPrimitiveSize!21 (xs!10373 (right!18073 t!4319))) lt!765308)))

(declare-fun bs!421478 () Bool)

(assert (= bs!421478 d!624775))

(declare-fun m!2483495 () Bool)

(assert (=> bs!421478 m!2483495))

(assert (=> b!2039192 d!624775))

(declare-fun b!2039651 () Bool)

(declare-fun e!1287738 () Bool)

(declare-fun tp!605273 () Bool)

(assert (=> b!2039651 (= e!1287738 (and tp_is_empty!9279 tp!605273))))

(assert (=> b!2039302 (= tp!605272 e!1287738)))

(assert (= (and b!2039302 ((_ is Cons!22279) (innerList!7531 (xs!10373 (right!18073 t!4319))))) b!2039651))

(declare-fun tp!605275 () Bool)

(declare-fun b!2039652 () Bool)

(declare-fun tp!605274 () Bool)

(declare-fun e!1287739 () Bool)

(assert (=> b!2039652 (= e!1287739 (and (inv!29593 (left!17743 (left!17743 (left!17743 t!4319)))) tp!605274 (inv!29593 (right!18073 (left!17743 (left!17743 t!4319)))) tp!605275))))

(declare-fun b!2039654 () Bool)

(declare-fun e!1287740 () Bool)

(declare-fun tp!605276 () Bool)

(assert (=> b!2039654 (= e!1287740 tp!605276)))

(declare-fun b!2039653 () Bool)

(assert (=> b!2039653 (= e!1287739 (and (inv!29594 (xs!10373 (left!17743 (left!17743 t!4319)))) e!1287740))))

(assert (=> b!2039297 (= tp!605267 (and (inv!29593 (left!17743 (left!17743 t!4319))) e!1287739))))

(assert (= (and b!2039297 ((_ is Node!7471) (left!17743 (left!17743 t!4319)))) b!2039652))

(assert (= b!2039653 b!2039654))

(assert (= (and b!2039297 ((_ is Leaf!10948) (left!17743 (left!17743 t!4319)))) b!2039653))

(declare-fun m!2483497 () Bool)

(assert (=> b!2039652 m!2483497))

(declare-fun m!2483499 () Bool)

(assert (=> b!2039652 m!2483499))

(declare-fun m!2483501 () Bool)

(assert (=> b!2039653 m!2483501))

(assert (=> b!2039297 m!2482921))

(declare-fun tp!605277 () Bool)

(declare-fun tp!605278 () Bool)

(declare-fun b!2039655 () Bool)

(declare-fun e!1287741 () Bool)

(assert (=> b!2039655 (= e!1287741 (and (inv!29593 (left!17743 (right!18073 (left!17743 t!4319)))) tp!605277 (inv!29593 (right!18073 (right!18073 (left!17743 t!4319)))) tp!605278))))

(declare-fun b!2039657 () Bool)

(declare-fun e!1287742 () Bool)

(declare-fun tp!605279 () Bool)

(assert (=> b!2039657 (= e!1287742 tp!605279)))

(declare-fun b!2039656 () Bool)

(assert (=> b!2039656 (= e!1287741 (and (inv!29594 (xs!10373 (right!18073 (left!17743 t!4319)))) e!1287742))))

(assert (=> b!2039297 (= tp!605268 (and (inv!29593 (right!18073 (left!17743 t!4319))) e!1287741))))

(assert (= (and b!2039297 ((_ is Node!7471) (right!18073 (left!17743 t!4319)))) b!2039655))

(assert (= b!2039656 b!2039657))

(assert (= (and b!2039297 ((_ is Leaf!10948) (right!18073 (left!17743 t!4319)))) b!2039656))

(declare-fun m!2483503 () Bool)

(assert (=> b!2039655 m!2483503))

(declare-fun m!2483505 () Bool)

(assert (=> b!2039655 m!2483505))

(declare-fun m!2483507 () Bool)

(assert (=> b!2039656 m!2483507))

(assert (=> b!2039297 m!2482923))

(declare-fun tp!605281 () Bool)

(declare-fun b!2039658 () Bool)

(declare-fun e!1287743 () Bool)

(declare-fun tp!605280 () Bool)

(assert (=> b!2039658 (= e!1287743 (and (inv!29593 (left!17743 (left!17743 (right!18073 t!4319)))) tp!605280 (inv!29593 (right!18073 (left!17743 (right!18073 t!4319)))) tp!605281))))

(declare-fun b!2039660 () Bool)

(declare-fun e!1287744 () Bool)

(declare-fun tp!605282 () Bool)

(assert (=> b!2039660 (= e!1287744 tp!605282)))

(declare-fun b!2039659 () Bool)

(assert (=> b!2039659 (= e!1287743 (and (inv!29594 (xs!10373 (left!17743 (right!18073 t!4319)))) e!1287744))))

(assert (=> b!2039300 (= tp!605270 (and (inv!29593 (left!17743 (right!18073 t!4319))) e!1287743))))

(assert (= (and b!2039300 ((_ is Node!7471) (left!17743 (right!18073 t!4319)))) b!2039658))

(assert (= b!2039659 b!2039660))

(assert (= (and b!2039300 ((_ is Leaf!10948) (left!17743 (right!18073 t!4319)))) b!2039659))

(declare-fun m!2483509 () Bool)

(assert (=> b!2039658 m!2483509))

(declare-fun m!2483511 () Bool)

(assert (=> b!2039658 m!2483511))

(declare-fun m!2483513 () Bool)

(assert (=> b!2039659 m!2483513))

(assert (=> b!2039300 m!2482927))

(declare-fun tp!605284 () Bool)

(declare-fun b!2039661 () Bool)

(declare-fun e!1287745 () Bool)

(declare-fun tp!605283 () Bool)

(assert (=> b!2039661 (= e!1287745 (and (inv!29593 (left!17743 (right!18073 (right!18073 t!4319)))) tp!605283 (inv!29593 (right!18073 (right!18073 (right!18073 t!4319)))) tp!605284))))

(declare-fun b!2039663 () Bool)

(declare-fun e!1287746 () Bool)

(declare-fun tp!605285 () Bool)

(assert (=> b!2039663 (= e!1287746 tp!605285)))

(declare-fun b!2039662 () Bool)

(assert (=> b!2039662 (= e!1287745 (and (inv!29594 (xs!10373 (right!18073 (right!18073 t!4319)))) e!1287746))))

(assert (=> b!2039300 (= tp!605271 (and (inv!29593 (right!18073 (right!18073 t!4319))) e!1287745))))

(assert (= (and b!2039300 ((_ is Node!7471) (right!18073 (right!18073 t!4319)))) b!2039661))

(assert (= b!2039662 b!2039663))

(assert (= (and b!2039300 ((_ is Leaf!10948) (right!18073 (right!18073 t!4319)))) b!2039662))

(declare-fun m!2483515 () Bool)

(assert (=> b!2039661 m!2483515))

(declare-fun m!2483517 () Bool)

(assert (=> b!2039661 m!2483517))

(declare-fun m!2483519 () Bool)

(assert (=> b!2039662 m!2483519))

(assert (=> b!2039300 m!2482929))

(declare-fun b!2039664 () Bool)

(declare-fun e!1287747 () Bool)

(declare-fun tp!605286 () Bool)

(assert (=> b!2039664 (= e!1287747 (and tp_is_empty!9279 tp!605286))))

(assert (=> b!2039299 (= tp!605269 e!1287747)))

(assert (= (and b!2039299 ((_ is Cons!22279) (innerList!7531 (xs!10373 (left!17743 t!4319))))) b!2039664))

(declare-fun b!2039665 () Bool)

(declare-fun e!1287748 () Bool)

(declare-fun tp!605287 () Bool)

(assert (=> b!2039665 (= e!1287748 (and tp_is_empty!9279 tp!605287))))

(assert (=> b!2039285 (= tp!605257 e!1287748)))

(assert (= (and b!2039285 ((_ is Cons!22279) (t!191396 (innerList!7531 (xs!10373 t!4319))))) b!2039665))

(declare-fun b_lambda!68985 () Bool)

(assert (= b_lambda!68979 (or (and start!200960 b_free!56831) b_lambda!68985)))

(declare-fun b_lambda!68987 () Bool)

(assert (= b_lambda!68971 (or (and start!200960 b_free!56831) b_lambda!68987)))

(declare-fun b_lambda!68989 () Bool)

(assert (= b_lambda!68967 (or (and start!200960 b_free!56831) b_lambda!68989)))

(declare-fun b_lambda!68991 () Bool)

(assert (= b_lambda!68977 (or (and start!200960 b_free!56831) b_lambda!68991)))

(declare-fun b_lambda!68993 () Bool)

(assert (= b_lambda!68973 (or (and start!200960 b_free!56831) b_lambda!68993)))

(declare-fun b_lambda!68995 () Bool)

(assert (= b_lambda!68965 (or (and start!200960 b_free!56831) b_lambda!68995)))

(declare-fun b_lambda!68997 () Bool)

(assert (= b_lambda!68983 (or (and start!200960 b_free!56831) b_lambda!68997)))

(check-sat (not b!2039547) (not b!2039353) (not b!2039653) (not d!624765) (not b!2039339) (not b!2039452) (not b!2039635) (not b!2039649) (not bm!125049) (not bm!125046) (not b!2039528) (not bm!125061) (not b!2039491) (not d!624771) (not b!2039575) (not b!2039625) (not bm!125059) (not b!2039483) (not d!624743) (not b!2039599) (not d!624697) (not b!2039300) (not b!2039488) (not d!624577) (not d!624587) (not b!2039375) (not b!2039522) (not b_lambda!68995) (not b!2039523) (not b!2039458) (not b!2039355) (not b!2039637) (not b!2039507) (not b!2039583) (not b!2039546) (not b!2039615) (not b_lambda!68991) (not b!2039313) (not d!624573) (not b_lambda!68989) (not b!2039569) (not b!2039374) (not bm!125044) (not b!2039611) (not b!2039537) tp_is_empty!9279 (not b_lambda!68961) (not b!2039664) (not b!2039531) (not b!2039657) (not b!2039317) (not b!2039662) (not d!624731) (not b!2039521) (not b!2039557) (not d!624615) (not b!2039530) (not b!2039500) (not b!2039447) (not b!2039363) (not b!2039595) (not d!624751) (not b!2039326) (not bm!125039) (not b!2039341) (not d!624703) (not b!2039585) (not b!2039462) (not b!2039552) (not b!2039659) (not b!2039665) (not d!624585) (not b!2039502) (not b_lambda!68959) (not b!2039652) (not b!2039551) (not b!2039644) (not b!2039607) (not b!2039517) (not b!2039465) (not b!2039614) (not b!2039505) (not b!2039520) (not b_lambda!68993) (not b!2039593) (not bm!125006) (not b!2039484) (not b!2039591) (not b!2039459) (not b!2039509) (not d!624689) (not b!2039506) (not b!2039368) (not d!624603) (not d!624713) (not b_next!57535) (not b!2039511) (not b!2039549) (not bm!125054) (not b!2039527) (not b!2039378) (not b!2039342) (not b!2039556) (not b!2039623) (not b!2039617) (not b!2039663) (not d!624571) (not d!624667) (not b!2039361) (not b!2039660) (not b!2039485) (not b!2039370) (not b!2039349) (not b!2039330) (not b!2039631) (not b!2039573) (not b!2039533) (not d!624651) (not b_lambda!68985) (not b!2039661) (not b!2039526) (not b!2039334) (not b!2039612) (not b!2039489) (not d!624671) (not b!2039654) (not b!2039335) (not b!2039544) (not d!624649) (not b!2039651) (not b!2039656) (not d!624567) (not b!2039365) (not b!2039338) (not bm!125063) (not d!624735) (not b_lambda!68987) (not d!624583) (not b!2039655) (not b_lambda!68997) (not b!2039503) (not b!2039504) (not bm!125042) (not d!624775) (not bm!125047) (not b!2039519) (not b!2039641) (not b!2039515) (not d!624613) (not bm!125065) (not b!2039308) (not d!624753) (not bm!125058) (not b!2039316) b_and!162747 (not b!2039329) (not b!2039379) (not b!2039571) (not b!2039626) (not b!2039589) (not b!2039372) (not b!2039529) (not b!2039501) (not b!2039297) (not d!624673) (not b!2039518) (not b!2039658) (not b!2039381) (not bm!125062) (not b!2039587) (not b_lambda!68963) (not b!2039351) (not b!2039565))
(check-sat b_and!162747 (not b_next!57535))
