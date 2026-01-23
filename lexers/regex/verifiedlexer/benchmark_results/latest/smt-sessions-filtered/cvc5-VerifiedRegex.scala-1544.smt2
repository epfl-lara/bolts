; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!80788 () Bool)

(assert start!80788)

(declare-fun b!897161 () Bool)

(assert (=> b!897161 true))

(assert (=> b!897161 true))

(assert (=> b!897161 true))

(declare-fun lambda!27868 () Int)

(declare-fun lambda!27867 () Int)

(assert (=> b!897161 (not (= lambda!27868 lambda!27867))))

(assert (=> b!897161 true))

(assert (=> b!897161 true))

(assert (=> b!897161 true))

(declare-fun b!897156 () Bool)

(declare-fun e!587103 () Bool)

(declare-fun tp!281880 () Bool)

(declare-fun tp!281877 () Bool)

(assert (=> b!897156 (= e!587103 (and tp!281880 tp!281877))))

(declare-fun b!897158 () Bool)

(declare-fun e!587104 () Bool)

(declare-fun tp_is_empty!4335 () Bool)

(declare-fun tp!281879 () Bool)

(assert (=> b!897158 (= e!587104 (and tp_is_empty!4335 tp!281879))))

(declare-fun b!897159 () Bool)

(assert (=> b!897159 (= e!587103 tp_is_empty!4335)))

(declare-fun b!897160 () Bool)

(declare-fun res!407852 () Bool)

(declare-fun e!587102 () Bool)

(assert (=> b!897160 (=> res!407852 e!587102)))

(declare-datatypes ((C!5262 0))(
  ( (C!5263 (val!2879 Int)) )
))
(declare-datatypes ((Regex!2346 0))(
  ( (ElementMatch!2346 (c!145255 C!5262)) (Concat!4179 (regOne!5204 Regex!2346) (regTwo!5204 Regex!2346)) (EmptyExpr!2346) (Star!2346 (reg!2675 Regex!2346)) (EmptyLang!2346) (Union!2346 (regOne!5205 Regex!2346) (regTwo!5205 Regex!2346)) )
))
(declare-fun r!15766 () Regex!2346)

(declare-fun validRegex!815 (Regex!2346) Bool)

(assert (=> b!897160 (= res!407852 (not (validRegex!815 (reg!2675 r!15766))))))

(declare-fun e!587105 () Bool)

(assert (=> b!897161 (= e!587105 e!587102)))

(declare-fun res!407854 () Bool)

(assert (=> b!897161 (=> res!407854 e!587102)))

(declare-datatypes ((List!9576 0))(
  ( (Nil!9560) (Cons!9560 (h!14961 C!5262) (t!100622 List!9576)) )
))
(declare-fun s!10566 () List!9576)

(declare-fun isEmpty!5753 (List!9576) Bool)

(assert (=> b!897161 (= res!407854 (isEmpty!5753 s!10566))))

(declare-fun Exists!123 (Int) Bool)

(assert (=> b!897161 (= (Exists!123 lambda!27867) (Exists!123 lambda!27868))))

(declare-datatypes ((Unit!14271 0))(
  ( (Unit!14272) )
))
(declare-fun lt!333596 () Unit!14271)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!15 (Regex!2346 List!9576) Unit!14271)

(assert (=> b!897161 (= lt!333596 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!15 (reg!2675 r!15766) s!10566))))

(declare-fun lt!333595 () Bool)

(assert (=> b!897161 (= lt!333595 (Exists!123 lambda!27867))))

(declare-fun lt!333592 () Regex!2346)

(declare-datatypes ((tuple2!10694 0))(
  ( (tuple2!10695 (_1!6173 List!9576) (_2!6173 List!9576)) )
))
(declare-datatypes ((Option!1989 0))(
  ( (None!1988) (Some!1988 (v!19405 tuple2!10694)) )
))
(declare-fun isDefined!1631 (Option!1989) Bool)

(declare-fun findConcatSeparation!95 (Regex!2346 Regex!2346 List!9576 List!9576 List!9576) Option!1989)

(assert (=> b!897161 (= lt!333595 (isDefined!1631 (findConcatSeparation!95 (reg!2675 r!15766) lt!333592 Nil!9560 s!10566 s!10566)))))

(declare-fun lt!333594 () Unit!14271)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!95 (Regex!2346 Regex!2346 List!9576) Unit!14271)

(assert (=> b!897161 (= lt!333594 (lemmaFindConcatSeparationEquivalentToExists!95 (reg!2675 r!15766) lt!333592 s!10566))))

(assert (=> b!897161 (= lt!333592 (Star!2346 (reg!2675 r!15766)))))

(declare-fun b!897162 () Bool)

(declare-fun tp!281878 () Bool)

(declare-fun tp!281881 () Bool)

(assert (=> b!897162 (= e!587103 (and tp!281878 tp!281881))))

(declare-fun res!407853 () Bool)

(declare-fun e!587106 () Bool)

(assert (=> start!80788 (=> (not res!407853) (not e!587106))))

(assert (=> start!80788 (= res!407853 (validRegex!815 r!15766))))

(assert (=> start!80788 e!587106))

(assert (=> start!80788 e!587103))

(assert (=> start!80788 e!587104))

(declare-fun b!897157 () Bool)

(declare-fun ++!2494 (List!9576 List!9576) List!9576)

(assert (=> b!897157 (= e!587102 (= (++!2494 Nil!9560 s!10566) s!10566))))

(declare-fun b!897163 () Bool)

(declare-fun res!407851 () Bool)

(assert (=> b!897163 (=> res!407851 e!587102)))

(assert (=> b!897163 (= res!407851 (not lt!333595))))

(declare-fun b!897164 () Bool)

(declare-fun tp!281882 () Bool)

(assert (=> b!897164 (= e!587103 tp!281882)))

(declare-fun b!897165 () Bool)

(assert (=> b!897165 (= e!587106 (not e!587105))))

(declare-fun res!407850 () Bool)

(assert (=> b!897165 (=> res!407850 e!587105)))

(declare-fun lt!333593 () Bool)

(assert (=> b!897165 (= res!407850 (or (not lt!333593) (and (is-Concat!4179 r!15766) (is-EmptyExpr!2346 (regOne!5204 r!15766))) (and (is-Concat!4179 r!15766) (is-EmptyExpr!2346 (regTwo!5204 r!15766))) (is-Concat!4179 r!15766) (is-Union!2346 r!15766) (not (is-Star!2346 r!15766))))))

(declare-fun matchRSpec!147 (Regex!2346 List!9576) Bool)

(assert (=> b!897165 (= lt!333593 (matchRSpec!147 r!15766 s!10566))))

(declare-fun matchR!884 (Regex!2346 List!9576) Bool)

(assert (=> b!897165 (= lt!333593 (matchR!884 r!15766 s!10566))))

(declare-fun lt!333597 () Unit!14271)

(declare-fun mainMatchTheorem!147 (Regex!2346 List!9576) Unit!14271)

(assert (=> b!897165 (= lt!333597 (mainMatchTheorem!147 r!15766 s!10566))))

(declare-fun b!897166 () Bool)

(declare-fun res!407849 () Bool)

(assert (=> b!897166 (=> res!407849 e!587102)))

(assert (=> b!897166 (= res!407849 (not (validRegex!815 lt!333592)))))

(assert (= (and start!80788 res!407853) b!897165))

(assert (= (and b!897165 (not res!407850)) b!897161))

(assert (= (and b!897161 (not res!407854)) b!897163))

(assert (= (and b!897163 (not res!407851)) b!897160))

(assert (= (and b!897160 (not res!407852)) b!897166))

(assert (= (and b!897166 (not res!407849)) b!897157))

(assert (= (and start!80788 (is-ElementMatch!2346 r!15766)) b!897159))

(assert (= (and start!80788 (is-Concat!4179 r!15766)) b!897162))

(assert (= (and start!80788 (is-Star!2346 r!15766)) b!897164))

(assert (= (and start!80788 (is-Union!2346 r!15766)) b!897156))

(assert (= (and start!80788 (is-Cons!9560 s!10566)) b!897158))

(declare-fun m!1136505 () Bool)

(assert (=> b!897160 m!1136505))

(declare-fun m!1136507 () Bool)

(assert (=> b!897165 m!1136507))

(declare-fun m!1136509 () Bool)

(assert (=> b!897165 m!1136509))

(declare-fun m!1136511 () Bool)

(assert (=> b!897165 m!1136511))

(declare-fun m!1136513 () Bool)

(assert (=> b!897157 m!1136513))

(declare-fun m!1136515 () Bool)

(assert (=> b!897161 m!1136515))

(declare-fun m!1136517 () Bool)

(assert (=> b!897161 m!1136517))

(declare-fun m!1136519 () Bool)

(assert (=> b!897161 m!1136519))

(assert (=> b!897161 m!1136515))

(declare-fun m!1136521 () Bool)

(assert (=> b!897161 m!1136521))

(declare-fun m!1136523 () Bool)

(assert (=> b!897161 m!1136523))

(assert (=> b!897161 m!1136519))

(declare-fun m!1136525 () Bool)

(assert (=> b!897161 m!1136525))

(declare-fun m!1136527 () Bool)

(assert (=> b!897161 m!1136527))

(declare-fun m!1136529 () Bool)

(assert (=> b!897166 m!1136529))

(declare-fun m!1136531 () Bool)

(assert (=> start!80788 m!1136531))

(push 1)

(assert (not b!897161))

(assert (not b!897157))

(assert (not b!897166))

(assert (not b!897158))

(assert tp_is_empty!4335)

(assert (not start!80788))

(assert (not b!897156))

(assert (not b!897160))

(assert (not b!897164))

(assert (not b!897162))

(assert (not b!897165))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!277905 () Bool)

(declare-fun choose!5391 (Int) Bool)

(assert (=> d!277905 (= (Exists!123 lambda!27867) (choose!5391 lambda!27867))))

(declare-fun bs!235034 () Bool)

(assert (= bs!235034 d!277905))

(declare-fun m!1136561 () Bool)

(assert (=> bs!235034 m!1136561))

(assert (=> b!897161 d!277905))

(declare-fun d!277907 () Bool)

(assert (=> d!277907 (= (isEmpty!5753 s!10566) (is-Nil!9560 s!10566))))

(assert (=> b!897161 d!277907))

(declare-fun bs!235035 () Bool)

(declare-fun d!277909 () Bool)

(assert (= bs!235035 (and d!277909 b!897161)))

(declare-fun lambda!27881 () Int)

(assert (=> bs!235035 (= (= (Star!2346 (reg!2675 r!15766)) lt!333592) (= lambda!27881 lambda!27867))))

(assert (=> bs!235035 (not (= lambda!27881 lambda!27868))))

(assert (=> d!277909 true))

(assert (=> d!277909 true))

(declare-fun lambda!27882 () Int)

(assert (=> bs!235035 (not (= lambda!27882 lambda!27867))))

(assert (=> bs!235035 (= (= (Star!2346 (reg!2675 r!15766)) lt!333592) (= lambda!27882 lambda!27868))))

(declare-fun bs!235036 () Bool)

(assert (= bs!235036 d!277909))

(assert (=> bs!235036 (not (= lambda!27882 lambda!27881))))

(assert (=> d!277909 true))

(assert (=> d!277909 true))

(assert (=> d!277909 (= (Exists!123 lambda!27881) (Exists!123 lambda!27882))))

(declare-fun lt!333618 () Unit!14271)

(declare-fun choose!5392 (Regex!2346 List!9576) Unit!14271)

(assert (=> d!277909 (= lt!333618 (choose!5392 (reg!2675 r!15766) s!10566))))

(assert (=> d!277909 (validRegex!815 (reg!2675 r!15766))))

(assert (=> d!277909 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!15 (reg!2675 r!15766) s!10566) lt!333618)))

(declare-fun m!1136563 () Bool)

(assert (=> bs!235036 m!1136563))

(declare-fun m!1136565 () Bool)

(assert (=> bs!235036 m!1136565))

(declare-fun m!1136567 () Bool)

(assert (=> bs!235036 m!1136567))

(assert (=> bs!235036 m!1136505))

(assert (=> b!897161 d!277909))

(declare-fun d!277913 () Bool)

(assert (=> d!277913 (= (Exists!123 lambda!27868) (choose!5391 lambda!27868))))

(declare-fun bs!235037 () Bool)

(assert (= bs!235037 d!277913))

(declare-fun m!1136569 () Bool)

(assert (=> bs!235037 m!1136569))

(assert (=> b!897161 d!277913))

(declare-fun d!277915 () Bool)

(declare-fun isEmpty!5755 (Option!1989) Bool)

(assert (=> d!277915 (= (isDefined!1631 (findConcatSeparation!95 (reg!2675 r!15766) lt!333592 Nil!9560 s!10566 s!10566)) (not (isEmpty!5755 (findConcatSeparation!95 (reg!2675 r!15766) lt!333592 Nil!9560 s!10566 s!10566))))))

(declare-fun bs!235038 () Bool)

(assert (= bs!235038 d!277915))

(assert (=> bs!235038 m!1136515))

(declare-fun m!1136571 () Bool)

(assert (=> bs!235038 m!1136571))

(assert (=> b!897161 d!277915))

(declare-fun b!897278 () Bool)

(declare-fun e!587161 () Option!1989)

(assert (=> b!897278 (= e!587161 (Some!1988 (tuple2!10695 Nil!9560 s!10566)))))

(declare-fun b!897280 () Bool)

(declare-fun e!587159 () Option!1989)

(assert (=> b!897280 (= e!587159 None!1988)))

(declare-fun b!897281 () Bool)

(declare-fun e!587158 () Bool)

(assert (=> b!897281 (= e!587158 (matchR!884 lt!333592 s!10566))))

(declare-fun d!277917 () Bool)

(declare-fun e!587160 () Bool)

(assert (=> d!277917 e!587160))

(declare-fun res!407919 () Bool)

(assert (=> d!277917 (=> res!407919 e!587160)))

(declare-fun e!587162 () Bool)

(assert (=> d!277917 (= res!407919 e!587162)))

(declare-fun res!407920 () Bool)

(assert (=> d!277917 (=> (not res!407920) (not e!587162))))

(declare-fun lt!333627 () Option!1989)

(assert (=> d!277917 (= res!407920 (isDefined!1631 lt!333627))))

(assert (=> d!277917 (= lt!333627 e!587161)))

(declare-fun c!145270 () Bool)

(assert (=> d!277917 (= c!145270 e!587158)))

(declare-fun res!407923 () Bool)

(assert (=> d!277917 (=> (not res!407923) (not e!587158))))

(assert (=> d!277917 (= res!407923 (matchR!884 (reg!2675 r!15766) Nil!9560))))

(assert (=> d!277917 (validRegex!815 (reg!2675 r!15766))))

(assert (=> d!277917 (= (findConcatSeparation!95 (reg!2675 r!15766) lt!333592 Nil!9560 s!10566 s!10566) lt!333627)))

(declare-fun b!897279 () Bool)

(declare-fun lt!333626 () Unit!14271)

(declare-fun lt!333625 () Unit!14271)

(assert (=> b!897279 (= lt!333626 lt!333625)))

(assert (=> b!897279 (= (++!2494 (++!2494 Nil!9560 (Cons!9560 (h!14961 s!10566) Nil!9560)) (t!100622 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!120 (List!9576 C!5262 List!9576 List!9576) Unit!14271)

(assert (=> b!897279 (= lt!333625 (lemmaMoveElementToOtherListKeepsConcatEq!120 Nil!9560 (h!14961 s!10566) (t!100622 s!10566) s!10566))))

(assert (=> b!897279 (= e!587159 (findConcatSeparation!95 (reg!2675 r!15766) lt!333592 (++!2494 Nil!9560 (Cons!9560 (h!14961 s!10566) Nil!9560)) (t!100622 s!10566) s!10566))))

(declare-fun b!897282 () Bool)

(assert (=> b!897282 (= e!587160 (not (isDefined!1631 lt!333627)))))

(declare-fun b!897283 () Bool)

(declare-fun res!407922 () Bool)

(assert (=> b!897283 (=> (not res!407922) (not e!587162))))

(declare-fun get!3018 (Option!1989) tuple2!10694)

(assert (=> b!897283 (= res!407922 (matchR!884 lt!333592 (_2!6173 (get!3018 lt!333627))))))

(declare-fun b!897284 () Bool)

(declare-fun res!407921 () Bool)

(assert (=> b!897284 (=> (not res!407921) (not e!587162))))

(assert (=> b!897284 (= res!407921 (matchR!884 (reg!2675 r!15766) (_1!6173 (get!3018 lt!333627))))))

(declare-fun b!897285 () Bool)

(assert (=> b!897285 (= e!587162 (= (++!2494 (_1!6173 (get!3018 lt!333627)) (_2!6173 (get!3018 lt!333627))) s!10566))))

(declare-fun b!897286 () Bool)

(assert (=> b!897286 (= e!587161 e!587159)))

(declare-fun c!145269 () Bool)

(assert (=> b!897286 (= c!145269 (is-Nil!9560 s!10566))))

(assert (= (and d!277917 res!407923) b!897281))

(assert (= (and d!277917 c!145270) b!897278))

(assert (= (and d!277917 (not c!145270)) b!897286))

(assert (= (and b!897286 c!145269) b!897280))

(assert (= (and b!897286 (not c!145269)) b!897279))

(assert (= (and d!277917 res!407920) b!897284))

(assert (= (and b!897284 res!407921) b!897283))

(assert (= (and b!897283 res!407922) b!897285))

(assert (= (and d!277917 (not res!407919)) b!897282))

(declare-fun m!1136573 () Bool)

(assert (=> b!897284 m!1136573))

(declare-fun m!1136575 () Bool)

(assert (=> b!897284 m!1136575))

(assert (=> b!897285 m!1136573))

(declare-fun m!1136577 () Bool)

(assert (=> b!897285 m!1136577))

(declare-fun m!1136579 () Bool)

(assert (=> b!897281 m!1136579))

(declare-fun m!1136581 () Bool)

(assert (=> b!897279 m!1136581))

(assert (=> b!897279 m!1136581))

(declare-fun m!1136583 () Bool)

(assert (=> b!897279 m!1136583))

(declare-fun m!1136585 () Bool)

(assert (=> b!897279 m!1136585))

(assert (=> b!897279 m!1136581))

(declare-fun m!1136587 () Bool)

(assert (=> b!897279 m!1136587))

(declare-fun m!1136589 () Bool)

(assert (=> b!897282 m!1136589))

(assert (=> d!277917 m!1136589))

(declare-fun m!1136591 () Bool)

(assert (=> d!277917 m!1136591))

(assert (=> d!277917 m!1136505))

(assert (=> b!897283 m!1136573))

(declare-fun m!1136593 () Bool)

(assert (=> b!897283 m!1136593))

(assert (=> b!897161 d!277917))

(declare-fun bs!235039 () Bool)

(declare-fun d!277919 () Bool)

(assert (= bs!235039 (and d!277919 b!897161)))

(declare-fun lambda!27889 () Int)

(assert (=> bs!235039 (= lambda!27889 lambda!27867)))

(assert (=> bs!235039 (not (= lambda!27889 lambda!27868))))

(declare-fun bs!235040 () Bool)

(assert (= bs!235040 (and d!277919 d!277909)))

(assert (=> bs!235040 (= (= lt!333592 (Star!2346 (reg!2675 r!15766))) (= lambda!27889 lambda!27881))))

(assert (=> bs!235040 (not (= lambda!27889 lambda!27882))))

(assert (=> d!277919 true))

(assert (=> d!277919 true))

(assert (=> d!277919 true))

(assert (=> d!277919 (= (isDefined!1631 (findConcatSeparation!95 (reg!2675 r!15766) lt!333592 Nil!9560 s!10566 s!10566)) (Exists!123 lambda!27889))))

(declare-fun lt!333630 () Unit!14271)

(declare-fun choose!5393 (Regex!2346 Regex!2346 List!9576) Unit!14271)

(assert (=> d!277919 (= lt!333630 (choose!5393 (reg!2675 r!15766) lt!333592 s!10566))))

(assert (=> d!277919 (validRegex!815 (reg!2675 r!15766))))

(assert (=> d!277919 (= (lemmaFindConcatSeparationEquivalentToExists!95 (reg!2675 r!15766) lt!333592 s!10566) lt!333630)))

(declare-fun bs!235041 () Bool)

(assert (= bs!235041 d!277919))

(assert (=> bs!235041 m!1136515))

(assert (=> bs!235041 m!1136505))

(assert (=> bs!235041 m!1136515))

(assert (=> bs!235041 m!1136517))

(declare-fun m!1136595 () Bool)

(assert (=> bs!235041 m!1136595))

(declare-fun m!1136597 () Bool)

(assert (=> bs!235041 m!1136597))

(assert (=> b!897161 d!277919))

(declare-fun b!897324 () Bool)

(declare-fun res!407948 () Bool)

(declare-fun e!587191 () Bool)

(assert (=> b!897324 (=> res!407948 e!587191)))

(assert (=> b!897324 (= res!407948 (not (is-Concat!4179 r!15766)))))

(declare-fun e!587188 () Bool)

(assert (=> b!897324 (= e!587188 e!587191)))

(declare-fun bm!53343 () Bool)

(declare-fun call!53350 () Bool)

(declare-fun call!53348 () Bool)

(assert (=> bm!53343 (= call!53350 call!53348)))

(declare-fun b!897325 () Bool)

(declare-fun e!587190 () Bool)

(assert (=> b!897325 (= e!587190 call!53350)))

(declare-fun b!897326 () Bool)

(declare-fun e!587194 () Bool)

(assert (=> b!897326 (= e!587194 call!53350)))

(declare-fun bm!53344 () Bool)

(declare-fun call!53349 () Bool)

(declare-fun c!145279 () Bool)

(assert (=> bm!53344 (= call!53349 (validRegex!815 (ite c!145279 (regOne!5205 r!15766) (regOne!5204 r!15766))))))

(declare-fun b!897327 () Bool)

(declare-fun e!587189 () Bool)

(assert (=> b!897327 (= e!587189 e!587188)))

(assert (=> b!897327 (= c!145279 (is-Union!2346 r!15766))))

(declare-fun b!897328 () Bool)

(assert (=> b!897328 (= e!587191 e!587190)))

(declare-fun res!407946 () Bool)

(assert (=> b!897328 (=> (not res!407946) (not e!587190))))

(assert (=> b!897328 (= res!407946 call!53349)))

(declare-fun d!277921 () Bool)

(declare-fun res!407947 () Bool)

(declare-fun e!587192 () Bool)

(assert (=> d!277921 (=> res!407947 e!587192)))

(assert (=> d!277921 (= res!407947 (is-ElementMatch!2346 r!15766))))

(assert (=> d!277921 (= (validRegex!815 r!15766) e!587192)))

(declare-fun b!897329 () Bool)

(declare-fun e!587193 () Bool)

(assert (=> b!897329 (= e!587189 e!587193)))

(declare-fun res!407949 () Bool)

(declare-fun nullable!621 (Regex!2346) Bool)

(assert (=> b!897329 (= res!407949 (not (nullable!621 (reg!2675 r!15766))))))

(assert (=> b!897329 (=> (not res!407949) (not e!587193))))

(declare-fun b!897330 () Bool)

(declare-fun res!407945 () Bool)

(assert (=> b!897330 (=> (not res!407945) (not e!587194))))

(assert (=> b!897330 (= res!407945 call!53349)))

(assert (=> b!897330 (= e!587188 e!587194)))

(declare-fun c!145280 () Bool)

(declare-fun bm!53345 () Bool)

(assert (=> bm!53345 (= call!53348 (validRegex!815 (ite c!145280 (reg!2675 r!15766) (ite c!145279 (regTwo!5205 r!15766) (regTwo!5204 r!15766)))))))

(declare-fun b!897331 () Bool)

(assert (=> b!897331 (= e!587193 call!53348)))

(declare-fun b!897332 () Bool)

(assert (=> b!897332 (= e!587192 e!587189)))

(assert (=> b!897332 (= c!145280 (is-Star!2346 r!15766))))

(assert (= (and d!277921 (not res!407947)) b!897332))

(assert (= (and b!897332 c!145280) b!897329))

(assert (= (and b!897332 (not c!145280)) b!897327))

(assert (= (and b!897329 res!407949) b!897331))

(assert (= (and b!897327 c!145279) b!897330))

(assert (= (and b!897327 (not c!145279)) b!897324))

(assert (= (and b!897330 res!407945) b!897326))

(assert (= (and b!897324 (not res!407948)) b!897328))

(assert (= (and b!897328 res!407946) b!897325))

(assert (= (or b!897326 b!897325) bm!53343))

(assert (= (or b!897330 b!897328) bm!53344))

(assert (= (or b!897331 bm!53343) bm!53345))

(declare-fun m!1136599 () Bool)

(assert (=> bm!53344 m!1136599))

(declare-fun m!1136601 () Bool)

(assert (=> b!897329 m!1136601))

(declare-fun m!1136603 () Bool)

(assert (=> bm!53345 m!1136603))

(assert (=> start!80788 d!277921))

(declare-fun b!897344 () Bool)

(declare-fun e!587199 () Bool)

(declare-fun lt!333633 () List!9576)

(assert (=> b!897344 (= e!587199 (or (not (= s!10566 Nil!9560)) (= lt!333633 Nil!9560)))))

(declare-fun b!897342 () Bool)

(declare-fun e!587200 () List!9576)

(assert (=> b!897342 (= e!587200 (Cons!9560 (h!14961 Nil!9560) (++!2494 (t!100622 Nil!9560) s!10566)))))

(declare-fun b!897343 () Bool)

(declare-fun res!407955 () Bool)

(assert (=> b!897343 (=> (not res!407955) (not e!587199))))

(declare-fun size!7855 (List!9576) Int)

(assert (=> b!897343 (= res!407955 (= (size!7855 lt!333633) (+ (size!7855 Nil!9560) (size!7855 s!10566))))))

(declare-fun d!277923 () Bool)

(assert (=> d!277923 e!587199))

(declare-fun res!407954 () Bool)

(assert (=> d!277923 (=> (not res!407954) (not e!587199))))

(declare-fun content!1376 (List!9576) (Set C!5262))

(assert (=> d!277923 (= res!407954 (= (content!1376 lt!333633) (set.union (content!1376 Nil!9560) (content!1376 s!10566))))))

(assert (=> d!277923 (= lt!333633 e!587200)))

(declare-fun c!145283 () Bool)

(assert (=> d!277923 (= c!145283 (is-Nil!9560 Nil!9560))))

(assert (=> d!277923 (= (++!2494 Nil!9560 s!10566) lt!333633)))

(declare-fun b!897341 () Bool)

(assert (=> b!897341 (= e!587200 s!10566)))

(assert (= (and d!277923 c!145283) b!897341))

(assert (= (and d!277923 (not c!145283)) b!897342))

(assert (= (and d!277923 res!407954) b!897343))

(assert (= (and b!897343 res!407955) b!897344))

(declare-fun m!1136611 () Bool)

(assert (=> b!897342 m!1136611))

(declare-fun m!1136613 () Bool)

(assert (=> b!897343 m!1136613))

(declare-fun m!1136615 () Bool)

(assert (=> b!897343 m!1136615))

(declare-fun m!1136617 () Bool)

(assert (=> b!897343 m!1136617))

(declare-fun m!1136619 () Bool)

(assert (=> d!277923 m!1136619))

(declare-fun m!1136621 () Bool)

(assert (=> d!277923 m!1136621))

(declare-fun m!1136623 () Bool)

(assert (=> d!277923 m!1136623))

(assert (=> b!897157 d!277923))

(declare-fun b!897345 () Bool)

(declare-fun res!407959 () Bool)

(declare-fun e!587204 () Bool)

(assert (=> b!897345 (=> res!407959 e!587204)))

(assert (=> b!897345 (= res!407959 (not (is-Concat!4179 lt!333592)))))

(declare-fun e!587201 () Bool)

(assert (=> b!897345 (= e!587201 e!587204)))

(declare-fun bm!53346 () Bool)

(declare-fun call!53353 () Bool)

(declare-fun call!53351 () Bool)

(assert (=> bm!53346 (= call!53353 call!53351)))

(declare-fun b!897346 () Bool)

(declare-fun e!587203 () Bool)

(assert (=> b!897346 (= e!587203 call!53353)))

(declare-fun b!897347 () Bool)

(declare-fun e!587207 () Bool)

(assert (=> b!897347 (= e!587207 call!53353)))

(declare-fun bm!53347 () Bool)

(declare-fun call!53352 () Bool)

(declare-fun c!145284 () Bool)

(assert (=> bm!53347 (= call!53352 (validRegex!815 (ite c!145284 (regOne!5205 lt!333592) (regOne!5204 lt!333592))))))

(declare-fun b!897348 () Bool)

(declare-fun e!587202 () Bool)

(assert (=> b!897348 (= e!587202 e!587201)))

(assert (=> b!897348 (= c!145284 (is-Union!2346 lt!333592))))

(declare-fun b!897349 () Bool)

(assert (=> b!897349 (= e!587204 e!587203)))

(declare-fun res!407957 () Bool)

(assert (=> b!897349 (=> (not res!407957) (not e!587203))))

(assert (=> b!897349 (= res!407957 call!53352)))

(declare-fun d!277927 () Bool)

(declare-fun res!407958 () Bool)

(declare-fun e!587205 () Bool)

(assert (=> d!277927 (=> res!407958 e!587205)))

(assert (=> d!277927 (= res!407958 (is-ElementMatch!2346 lt!333592))))

(assert (=> d!277927 (= (validRegex!815 lt!333592) e!587205)))

(declare-fun b!897350 () Bool)

(declare-fun e!587206 () Bool)

(assert (=> b!897350 (= e!587202 e!587206)))

(declare-fun res!407960 () Bool)

(assert (=> b!897350 (= res!407960 (not (nullable!621 (reg!2675 lt!333592))))))

(assert (=> b!897350 (=> (not res!407960) (not e!587206))))

(declare-fun b!897351 () Bool)

(declare-fun res!407956 () Bool)

(assert (=> b!897351 (=> (not res!407956) (not e!587207))))

(assert (=> b!897351 (= res!407956 call!53352)))

(assert (=> b!897351 (= e!587201 e!587207)))

(declare-fun c!145285 () Bool)

(declare-fun bm!53348 () Bool)

(assert (=> bm!53348 (= call!53351 (validRegex!815 (ite c!145285 (reg!2675 lt!333592) (ite c!145284 (regTwo!5205 lt!333592) (regTwo!5204 lt!333592)))))))

(declare-fun b!897352 () Bool)

(assert (=> b!897352 (= e!587206 call!53351)))

(declare-fun b!897353 () Bool)

(assert (=> b!897353 (= e!587205 e!587202)))

(assert (=> b!897353 (= c!145285 (is-Star!2346 lt!333592))))

(assert (= (and d!277927 (not res!407958)) b!897353))

(assert (= (and b!897353 c!145285) b!897350))

(assert (= (and b!897353 (not c!145285)) b!897348))

(assert (= (and b!897350 res!407960) b!897352))

(assert (= (and b!897348 c!145284) b!897351))

(assert (= (and b!897348 (not c!145284)) b!897345))

(assert (= (and b!897351 res!407956) b!897347))

(assert (= (and b!897345 (not res!407959)) b!897349))

(assert (= (and b!897349 res!407957) b!897346))

(assert (= (or b!897347 b!897346) bm!53346))

(assert (= (or b!897351 b!897349) bm!53347))

(assert (= (or b!897352 bm!53346) bm!53348))

(declare-fun m!1136625 () Bool)

(assert (=> bm!53347 m!1136625))

(declare-fun m!1136627 () Bool)

(assert (=> b!897350 m!1136627))

(declare-fun m!1136629 () Bool)

(assert (=> bm!53348 m!1136629))

(assert (=> b!897166 d!277927))

(declare-fun b!897354 () Bool)

(declare-fun res!407964 () Bool)

(declare-fun e!587211 () Bool)

(assert (=> b!897354 (=> res!407964 e!587211)))

(assert (=> b!897354 (= res!407964 (not (is-Concat!4179 (reg!2675 r!15766))))))

(declare-fun e!587208 () Bool)

(assert (=> b!897354 (= e!587208 e!587211)))

(declare-fun bm!53349 () Bool)

(declare-fun call!53356 () Bool)

(declare-fun call!53354 () Bool)

(assert (=> bm!53349 (= call!53356 call!53354)))

(declare-fun b!897355 () Bool)

(declare-fun e!587210 () Bool)

(assert (=> b!897355 (= e!587210 call!53356)))

(declare-fun b!897356 () Bool)

(declare-fun e!587214 () Bool)

(assert (=> b!897356 (= e!587214 call!53356)))

(declare-fun bm!53350 () Bool)

(declare-fun call!53355 () Bool)

(declare-fun c!145286 () Bool)

(assert (=> bm!53350 (= call!53355 (validRegex!815 (ite c!145286 (regOne!5205 (reg!2675 r!15766)) (regOne!5204 (reg!2675 r!15766)))))))

(declare-fun b!897357 () Bool)

(declare-fun e!587209 () Bool)

(assert (=> b!897357 (= e!587209 e!587208)))

(assert (=> b!897357 (= c!145286 (is-Union!2346 (reg!2675 r!15766)))))

(declare-fun b!897358 () Bool)

(assert (=> b!897358 (= e!587211 e!587210)))

(declare-fun res!407962 () Bool)

(assert (=> b!897358 (=> (not res!407962) (not e!587210))))

(assert (=> b!897358 (= res!407962 call!53355)))

(declare-fun d!277929 () Bool)

(declare-fun res!407963 () Bool)

(declare-fun e!587212 () Bool)

(assert (=> d!277929 (=> res!407963 e!587212)))

(assert (=> d!277929 (= res!407963 (is-ElementMatch!2346 (reg!2675 r!15766)))))

(assert (=> d!277929 (= (validRegex!815 (reg!2675 r!15766)) e!587212)))

(declare-fun b!897359 () Bool)

(declare-fun e!587213 () Bool)

(assert (=> b!897359 (= e!587209 e!587213)))

(declare-fun res!407965 () Bool)

(assert (=> b!897359 (= res!407965 (not (nullable!621 (reg!2675 (reg!2675 r!15766)))))))

(assert (=> b!897359 (=> (not res!407965) (not e!587213))))

(declare-fun b!897360 () Bool)

(declare-fun res!407961 () Bool)

(assert (=> b!897360 (=> (not res!407961) (not e!587214))))

(assert (=> b!897360 (= res!407961 call!53355)))

(assert (=> b!897360 (= e!587208 e!587214)))

(declare-fun c!145287 () Bool)

(declare-fun bm!53351 () Bool)

(assert (=> bm!53351 (= call!53354 (validRegex!815 (ite c!145287 (reg!2675 (reg!2675 r!15766)) (ite c!145286 (regTwo!5205 (reg!2675 r!15766)) (regTwo!5204 (reg!2675 r!15766))))))))

(declare-fun b!897361 () Bool)

(assert (=> b!897361 (= e!587213 call!53354)))

(declare-fun b!897362 () Bool)

(assert (=> b!897362 (= e!587212 e!587209)))

(assert (=> b!897362 (= c!145287 (is-Star!2346 (reg!2675 r!15766)))))

(assert (= (and d!277929 (not res!407963)) b!897362))

(assert (= (and b!897362 c!145287) b!897359))

(assert (= (and b!897362 (not c!145287)) b!897357))

(assert (= (and b!897359 res!407965) b!897361))

(assert (= (and b!897357 c!145286) b!897360))

(assert (= (and b!897357 (not c!145286)) b!897354))

(assert (= (and b!897360 res!407961) b!897356))

(assert (= (and b!897354 (not res!407964)) b!897358))

(assert (= (and b!897358 res!407962) b!897355))

(assert (= (or b!897356 b!897355) bm!53349))

(assert (= (or b!897360 b!897358) bm!53350))

(assert (= (or b!897361 bm!53349) bm!53351))

(declare-fun m!1136631 () Bool)

(assert (=> bm!53350 m!1136631))

(declare-fun m!1136633 () Bool)

(assert (=> b!897359 m!1136633))

(declare-fun m!1136635 () Bool)

(assert (=> bm!53351 m!1136635))

(assert (=> b!897160 d!277929))

(declare-fun bs!235045 () Bool)

(declare-fun b!897431 () Bool)

(assert (= bs!235045 (and b!897431 b!897161)))

(declare-fun lambda!27896 () Int)

(assert (=> bs!235045 (= (= r!15766 lt!333592) (= lambda!27896 lambda!27868))))

(declare-fun bs!235046 () Bool)

(assert (= bs!235046 (and b!897431 d!277909)))

(assert (=> bs!235046 (not (= lambda!27896 lambda!27881))))

(assert (=> bs!235045 (not (= lambda!27896 lambda!27867))))

(assert (=> bs!235046 (= (= r!15766 (Star!2346 (reg!2675 r!15766))) (= lambda!27896 lambda!27882))))

(declare-fun bs!235047 () Bool)

(assert (= bs!235047 (and b!897431 d!277919)))

(assert (=> bs!235047 (not (= lambda!27896 lambda!27889))))

(assert (=> b!897431 true))

(assert (=> b!897431 true))

(declare-fun bs!235048 () Bool)

(declare-fun b!897433 () Bool)

(assert (= bs!235048 (and b!897433 b!897161)))

(declare-fun lambda!27897 () Int)

(assert (=> bs!235048 (not (= lambda!27897 lambda!27868))))

(declare-fun bs!235049 () Bool)

(assert (= bs!235049 (and b!897433 d!277909)))

(assert (=> bs!235049 (not (= lambda!27897 lambda!27881))))

(declare-fun bs!235050 () Bool)

(assert (= bs!235050 (and b!897433 b!897431)))

(assert (=> bs!235050 (not (= lambda!27897 lambda!27896))))

(assert (=> bs!235048 (not (= lambda!27897 lambda!27867))))

(assert (=> bs!235049 (not (= lambda!27897 lambda!27882))))

(declare-fun bs!235051 () Bool)

(assert (= bs!235051 (and b!897433 d!277919)))

(assert (=> bs!235051 (not (= lambda!27897 lambda!27889))))

(assert (=> b!897433 true))

(assert (=> b!897433 true))

(declare-fun b!897423 () Bool)

(declare-fun e!587253 () Bool)

(assert (=> b!897423 (= e!587253 (= s!10566 (Cons!9560 (c!145255 r!15766) Nil!9560)))))

(declare-fun b!897424 () Bool)

(declare-fun e!587249 () Bool)

(declare-fun e!587250 () Bool)

(assert (=> b!897424 (= e!587249 e!587250)))

(declare-fun res!408000 () Bool)

(assert (=> b!897424 (= res!408000 (matchRSpec!147 (regOne!5205 r!15766) s!10566))))

(assert (=> b!897424 (=> res!408000 e!587250)))

(declare-fun b!897425 () Bool)

(declare-fun c!145303 () Bool)

(assert (=> b!897425 (= c!145303 (is-Union!2346 r!15766))))

(assert (=> b!897425 (= e!587253 e!587249)))

(declare-fun b!897426 () Bool)

(assert (=> b!897426 (= e!587250 (matchRSpec!147 (regTwo!5205 r!15766) s!10566))))

(declare-fun bm!53358 () Bool)

(declare-fun call!53364 () Bool)

(assert (=> bm!53358 (= call!53364 (isEmpty!5753 s!10566))))

(declare-fun b!897427 () Bool)

(declare-fun e!587251 () Bool)

(declare-fun e!587248 () Bool)

(assert (=> b!897427 (= e!587251 e!587248)))

(declare-fun res!407998 () Bool)

(assert (=> b!897427 (= res!407998 (not (is-EmptyLang!2346 r!15766)))))

(assert (=> b!897427 (=> (not res!407998) (not e!587248))))

(declare-fun b!897429 () Bool)

(declare-fun res!407999 () Bool)

(declare-fun e!587252 () Bool)

(assert (=> b!897429 (=> res!407999 e!587252)))

(assert (=> b!897429 (= res!407999 call!53364)))

(declare-fun e!587247 () Bool)

(assert (=> b!897429 (= e!587247 e!587252)))

(declare-fun b!897430 () Bool)

(assert (=> b!897430 (= e!587251 call!53364)))

(declare-fun call!53363 () Bool)

(assert (=> b!897431 (= e!587252 call!53363)))

(declare-fun b!897432 () Bool)

(assert (=> b!897432 (= e!587249 e!587247)))

(declare-fun c!145304 () Bool)

(assert (=> b!897432 (= c!145304 (is-Star!2346 r!15766))))

(declare-fun bm!53359 () Bool)

(assert (=> bm!53359 (= call!53363 (Exists!123 (ite c!145304 lambda!27896 lambda!27897)))))

(assert (=> b!897433 (= e!587247 call!53363)))

(declare-fun d!277931 () Bool)

(declare-fun c!145305 () Bool)

(assert (=> d!277931 (= c!145305 (is-EmptyExpr!2346 r!15766))))

(assert (=> d!277931 (= (matchRSpec!147 r!15766 s!10566) e!587251)))

(declare-fun b!897428 () Bool)

(declare-fun c!145302 () Bool)

(assert (=> b!897428 (= c!145302 (is-ElementMatch!2346 r!15766))))

(assert (=> b!897428 (= e!587248 e!587253)))

(assert (= (and d!277931 c!145305) b!897430))

(assert (= (and d!277931 (not c!145305)) b!897427))

(assert (= (and b!897427 res!407998) b!897428))

(assert (= (and b!897428 c!145302) b!897423))

(assert (= (and b!897428 (not c!145302)) b!897425))

(assert (= (and b!897425 c!145303) b!897424))

(assert (= (and b!897425 (not c!145303)) b!897432))

(assert (= (and b!897424 (not res!408000)) b!897426))

(assert (= (and b!897432 c!145304) b!897429))

(assert (= (and b!897432 (not c!145304)) b!897433))

(assert (= (and b!897429 (not res!407999)) b!897431))

(assert (= (or b!897431 b!897433) bm!53359))

(assert (= (or b!897430 b!897429) bm!53358))

(declare-fun m!1136637 () Bool)

(assert (=> b!897424 m!1136637))

(declare-fun m!1136639 () Bool)

(assert (=> b!897426 m!1136639))

(assert (=> bm!53358 m!1136525))

(declare-fun m!1136641 () Bool)

(assert (=> bm!53359 m!1136641))

(assert (=> b!897165 d!277931))

(declare-fun b!897476 () Bool)

(declare-fun e!587277 () Bool)

(declare-fun e!587281 () Bool)

(assert (=> b!897476 (= e!587277 e!587281)))

(declare-fun res!408031 () Bool)

(assert (=> b!897476 (=> (not res!408031) (not e!587281))))

(declare-fun lt!333639 () Bool)

(assert (=> b!897476 (= res!408031 (not lt!333639))))

(declare-fun b!897477 () Bool)

(declare-fun e!587275 () Bool)

(declare-fun derivativeStep!433 (Regex!2346 C!5262) Regex!2346)

(declare-fun head!1586 (List!9576) C!5262)

(declare-fun tail!1148 (List!9576) List!9576)

(assert (=> b!897477 (= e!587275 (matchR!884 (derivativeStep!433 r!15766 (head!1586 s!10566)) (tail!1148 s!10566)))))

(declare-fun b!897478 () Bool)

(declare-fun e!587278 () Bool)

(declare-fun e!587279 () Bool)

(assert (=> b!897478 (= e!587278 e!587279)))

(declare-fun c!145317 () Bool)

(assert (=> b!897478 (= c!145317 (is-EmptyLang!2346 r!15766))))

(declare-fun b!897479 () Bool)

(assert (=> b!897479 (= e!587275 (nullable!621 r!15766))))

(declare-fun b!897480 () Bool)

(declare-fun call!53368 () Bool)

(assert (=> b!897480 (= e!587278 (= lt!333639 call!53368))))

(declare-fun b!897481 () Bool)

(declare-fun e!587276 () Bool)

(assert (=> b!897481 (= e!587276 (not (= (head!1586 s!10566) (c!145255 r!15766))))))

(declare-fun bm!53363 () Bool)

(assert (=> bm!53363 (= call!53368 (isEmpty!5753 s!10566))))

(declare-fun b!897482 () Bool)

(declare-fun res!408029 () Bool)

(assert (=> b!897482 (=> res!408029 e!587277)))

(declare-fun e!587280 () Bool)

(assert (=> b!897482 (= res!408029 e!587280)))

(declare-fun res!408025 () Bool)

(assert (=> b!897482 (=> (not res!408025) (not e!587280))))

(assert (=> b!897482 (= res!408025 lt!333639)))

(declare-fun d!277933 () Bool)

(assert (=> d!277933 e!587278))

(declare-fun c!145315 () Bool)

(assert (=> d!277933 (= c!145315 (is-EmptyExpr!2346 r!15766))))

(assert (=> d!277933 (= lt!333639 e!587275)))

(declare-fun c!145316 () Bool)

(assert (=> d!277933 (= c!145316 (isEmpty!5753 s!10566))))

(assert (=> d!277933 (validRegex!815 r!15766)))

(assert (=> d!277933 (= (matchR!884 r!15766 s!10566) lt!333639)))

(declare-fun b!897483 () Bool)

(declare-fun res!408030 () Bool)

(assert (=> b!897483 (=> res!408030 e!587276)))

(assert (=> b!897483 (= res!408030 (not (isEmpty!5753 (tail!1148 s!10566))))))

(declare-fun b!897484 () Bool)

(assert (=> b!897484 (= e!587279 (not lt!333639))))

(declare-fun b!897485 () Bool)

(assert (=> b!897485 (= e!587281 e!587276)))

(declare-fun res!408032 () Bool)

(assert (=> b!897485 (=> res!408032 e!587276)))

(assert (=> b!897485 (= res!408032 call!53368)))

(declare-fun b!897486 () Bool)

(declare-fun res!408027 () Bool)

(assert (=> b!897486 (=> res!408027 e!587277)))

(assert (=> b!897486 (= res!408027 (not (is-ElementMatch!2346 r!15766)))))

(assert (=> b!897486 (= e!587279 e!587277)))

(declare-fun b!897487 () Bool)

(declare-fun res!408026 () Bool)

(assert (=> b!897487 (=> (not res!408026) (not e!587280))))

(assert (=> b!897487 (= res!408026 (isEmpty!5753 (tail!1148 s!10566)))))

(declare-fun b!897488 () Bool)

(declare-fun res!408028 () Bool)

(assert (=> b!897488 (=> (not res!408028) (not e!587280))))

(assert (=> b!897488 (= res!408028 (not call!53368))))

(declare-fun b!897489 () Bool)

(assert (=> b!897489 (= e!587280 (= (head!1586 s!10566) (c!145255 r!15766)))))

(assert (= (and d!277933 c!145316) b!897479))

(assert (= (and d!277933 (not c!145316)) b!897477))

(assert (= (and d!277933 c!145315) b!897480))

(assert (= (and d!277933 (not c!145315)) b!897478))

(assert (= (and b!897478 c!145317) b!897484))

(assert (= (and b!897478 (not c!145317)) b!897486))

(assert (= (and b!897486 (not res!408027)) b!897482))

(assert (= (and b!897482 res!408025) b!897488))

(assert (= (and b!897488 res!408028) b!897487))

(assert (= (and b!897487 res!408026) b!897489))

(assert (= (and b!897482 (not res!408029)) b!897476))

(assert (= (and b!897476 res!408031) b!897485))

(assert (= (and b!897485 (not res!408032)) b!897483))

(assert (= (and b!897483 (not res!408030)) b!897481))

(assert (= (or b!897480 b!897485 b!897488) bm!53363))

(declare-fun m!1136655 () Bool)

(assert (=> b!897489 m!1136655))

(assert (=> b!897481 m!1136655))

(assert (=> d!277933 m!1136525))

(assert (=> d!277933 m!1136531))

(assert (=> b!897477 m!1136655))

(assert (=> b!897477 m!1136655))

(declare-fun m!1136657 () Bool)

(assert (=> b!897477 m!1136657))

(declare-fun m!1136659 () Bool)

(assert (=> b!897477 m!1136659))

(assert (=> b!897477 m!1136657))

(assert (=> b!897477 m!1136659))

(declare-fun m!1136661 () Bool)

(assert (=> b!897477 m!1136661))

(assert (=> bm!53363 m!1136525))

(assert (=> b!897483 m!1136659))

(assert (=> b!897483 m!1136659))

(declare-fun m!1136663 () Bool)

(assert (=> b!897483 m!1136663))

(declare-fun m!1136665 () Bool)

(assert (=> b!897479 m!1136665))

(assert (=> b!897487 m!1136659))

(assert (=> b!897487 m!1136659))

(assert (=> b!897487 m!1136663))

(assert (=> b!897165 d!277933))

(declare-fun d!277937 () Bool)

(assert (=> d!277937 (= (matchR!884 r!15766 s!10566) (matchRSpec!147 r!15766 s!10566))))

(declare-fun lt!333644 () Unit!14271)

(declare-fun choose!5394 (Regex!2346 List!9576) Unit!14271)

(assert (=> d!277937 (= lt!333644 (choose!5394 r!15766 s!10566))))

(assert (=> d!277937 (validRegex!815 r!15766)))

(assert (=> d!277937 (= (mainMatchTheorem!147 r!15766 s!10566) lt!333644)))

(declare-fun bs!235052 () Bool)

(assert (= bs!235052 d!277937))

(assert (=> bs!235052 m!1136509))

(assert (=> bs!235052 m!1136507))

(declare-fun m!1136667 () Bool)

(assert (=> bs!235052 m!1136667))

(assert (=> bs!235052 m!1136531))

(assert (=> b!897165 d!277937))

(declare-fun b!897501 () Bool)

(declare-fun e!587284 () Bool)

(declare-fun tp!281911 () Bool)

(declare-fun tp!281912 () Bool)

(assert (=> b!897501 (= e!587284 (and tp!281911 tp!281912))))

(assert (=> b!897162 (= tp!281878 e!587284)))

(declare-fun b!897503 () Bool)

(declare-fun tp!281914 () Bool)

(declare-fun tp!281913 () Bool)

(assert (=> b!897503 (= e!587284 (and tp!281914 tp!281913))))

(declare-fun b!897502 () Bool)

(declare-fun tp!281915 () Bool)

(assert (=> b!897502 (= e!587284 tp!281915)))

(declare-fun b!897500 () Bool)

(assert (=> b!897500 (= e!587284 tp_is_empty!4335)))

(assert (= (and b!897162 (is-ElementMatch!2346 (regOne!5204 r!15766))) b!897500))

(assert (= (and b!897162 (is-Concat!4179 (regOne!5204 r!15766))) b!897501))

(assert (= (and b!897162 (is-Star!2346 (regOne!5204 r!15766))) b!897502))

(assert (= (and b!897162 (is-Union!2346 (regOne!5204 r!15766))) b!897503))

(declare-fun b!897505 () Bool)

(declare-fun e!587285 () Bool)

(declare-fun tp!281916 () Bool)

(declare-fun tp!281917 () Bool)

(assert (=> b!897505 (= e!587285 (and tp!281916 tp!281917))))

(assert (=> b!897162 (= tp!281881 e!587285)))

(declare-fun b!897507 () Bool)

(declare-fun tp!281919 () Bool)

(declare-fun tp!281918 () Bool)

(assert (=> b!897507 (= e!587285 (and tp!281919 tp!281918))))

(declare-fun b!897506 () Bool)

(declare-fun tp!281920 () Bool)

(assert (=> b!897506 (= e!587285 tp!281920)))

(declare-fun b!897504 () Bool)

(assert (=> b!897504 (= e!587285 tp_is_empty!4335)))

(assert (= (and b!897162 (is-ElementMatch!2346 (regTwo!5204 r!15766))) b!897504))

(assert (= (and b!897162 (is-Concat!4179 (regTwo!5204 r!15766))) b!897505))

(assert (= (and b!897162 (is-Star!2346 (regTwo!5204 r!15766))) b!897506))

(assert (= (and b!897162 (is-Union!2346 (regTwo!5204 r!15766))) b!897507))

(declare-fun b!897509 () Bool)

(declare-fun e!587286 () Bool)

(declare-fun tp!281921 () Bool)

(declare-fun tp!281922 () Bool)

(assert (=> b!897509 (= e!587286 (and tp!281921 tp!281922))))

(assert (=> b!897156 (= tp!281880 e!587286)))

(declare-fun b!897511 () Bool)

(declare-fun tp!281924 () Bool)

(declare-fun tp!281923 () Bool)

(assert (=> b!897511 (= e!587286 (and tp!281924 tp!281923))))

(declare-fun b!897510 () Bool)

(declare-fun tp!281925 () Bool)

(assert (=> b!897510 (= e!587286 tp!281925)))

(declare-fun b!897508 () Bool)

(assert (=> b!897508 (= e!587286 tp_is_empty!4335)))

(assert (= (and b!897156 (is-ElementMatch!2346 (regOne!5205 r!15766))) b!897508))

(assert (= (and b!897156 (is-Concat!4179 (regOne!5205 r!15766))) b!897509))

(assert (= (and b!897156 (is-Star!2346 (regOne!5205 r!15766))) b!897510))

(assert (= (and b!897156 (is-Union!2346 (regOne!5205 r!15766))) b!897511))

(declare-fun b!897513 () Bool)

(declare-fun e!587287 () Bool)

(declare-fun tp!281926 () Bool)

(declare-fun tp!281927 () Bool)

(assert (=> b!897513 (= e!587287 (and tp!281926 tp!281927))))

(assert (=> b!897156 (= tp!281877 e!587287)))

(declare-fun b!897515 () Bool)

(declare-fun tp!281929 () Bool)

(declare-fun tp!281928 () Bool)

(assert (=> b!897515 (= e!587287 (and tp!281929 tp!281928))))

(declare-fun b!897514 () Bool)

(declare-fun tp!281930 () Bool)

(assert (=> b!897514 (= e!587287 tp!281930)))

(declare-fun b!897512 () Bool)

(assert (=> b!897512 (= e!587287 tp_is_empty!4335)))

(assert (= (and b!897156 (is-ElementMatch!2346 (regTwo!5205 r!15766))) b!897512))

(assert (= (and b!897156 (is-Concat!4179 (regTwo!5205 r!15766))) b!897513))

(assert (= (and b!897156 (is-Star!2346 (regTwo!5205 r!15766))) b!897514))

(assert (= (and b!897156 (is-Union!2346 (regTwo!5205 r!15766))) b!897515))

(declare-fun b!897520 () Bool)

(declare-fun e!587290 () Bool)

(declare-fun tp!281933 () Bool)

(assert (=> b!897520 (= e!587290 (and tp_is_empty!4335 tp!281933))))

(assert (=> b!897158 (= tp!281879 e!587290)))

(assert (= (and b!897158 (is-Cons!9560 (t!100622 s!10566))) b!897520))

(declare-fun b!897522 () Bool)

(declare-fun e!587291 () Bool)

(declare-fun tp!281934 () Bool)

(declare-fun tp!281935 () Bool)

(assert (=> b!897522 (= e!587291 (and tp!281934 tp!281935))))

(assert (=> b!897164 (= tp!281882 e!587291)))

(declare-fun b!897524 () Bool)

(declare-fun tp!281937 () Bool)

(declare-fun tp!281936 () Bool)

(assert (=> b!897524 (= e!587291 (and tp!281937 tp!281936))))

(declare-fun b!897523 () Bool)

(declare-fun tp!281938 () Bool)

(assert (=> b!897523 (= e!587291 tp!281938)))

(declare-fun b!897521 () Bool)

(assert (=> b!897521 (= e!587291 tp_is_empty!4335)))

(assert (= (and b!897164 (is-ElementMatch!2346 (reg!2675 r!15766))) b!897521))

(assert (= (and b!897164 (is-Concat!4179 (reg!2675 r!15766))) b!897522))

(assert (= (and b!897164 (is-Star!2346 (reg!2675 r!15766))) b!897523))

(assert (= (and b!897164 (is-Union!2346 (reg!2675 r!15766))) b!897524))

(push 1)

(assert (not bm!53363))

(assert (not bm!53358))

(assert (not b!897505))

(assert (not b!897281))

(assert (not bm!53351))

(assert (not b!897514))

(assert (not b!897501))

(assert (not bm!53350))

(assert (not b!897424))

(assert (not b!897506))

(assert (not d!277923))

(assert (not b!897283))

(assert (not b!897284))

(assert (not b!897477))

(assert (not bm!53345))

(assert (not b!897479))

(assert (not b!897481))

(assert (not b!897342))

(assert (not b!897426))

(assert (not b!897523))

(assert (not b!897282))

(assert (not b!897513))

(assert (not d!277913))

(assert (not d!277915))

(assert (not d!277905))

(assert (not b!897285))

(assert (not b!897359))

(assert (not b!897509))

(assert (not b!897350))

(assert (not b!897487))

(assert (not bm!53348))

(assert (not d!277937))

(assert (not bm!53347))

(assert (not d!277917))

(assert (not b!897489))

(assert (not b!897522))

(assert (not bm!53359))

(assert (not b!897511))

(assert (not b!897510))

(assert (not b!897483))

(assert (not d!277919))

(assert (not b!897515))

(assert (not b!897503))

(assert tp_is_empty!4335)

(assert (not b!897343))

(assert (not b!897524))

(assert (not b!897507))

(assert (not d!277909))

(assert (not b!897502))

(assert (not b!897520))

(assert (not b!897279))

(assert (not b!897329))

(assert (not d!277933))

(assert (not bm!53344))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

