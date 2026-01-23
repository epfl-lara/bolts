; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724198 () Bool)

(assert start!724198)

(declare-fun b!7469082 () Bool)

(assert (=> b!7469082 true))

(assert (=> b!7469082 true))

(assert (=> b!7469082 true))

(declare-fun lambda!462485 () Int)

(declare-fun lambda!462484 () Int)

(assert (=> b!7469082 (not (= lambda!462485 lambda!462484))))

(assert (=> b!7469082 true))

(assert (=> b!7469082 true))

(assert (=> b!7469082 true))

(declare-fun bs!1930741 () Bool)

(declare-fun b!7469088 () Bool)

(assert (= bs!1930741 (and b!7469088 b!7469082)))

(declare-datatypes ((C!39420 0))(
  ( (C!39421 (val!30108 Int)) )
))
(declare-datatypes ((Regex!19573 0))(
  ( (ElementMatch!19573 (c!1380178 C!39420)) (Concat!28418 (regOne!39658 Regex!19573) (regTwo!39658 Regex!19573)) (EmptyExpr!19573) (Star!19573 (reg!19902 Regex!19573)) (EmptyLang!19573) (Union!19573 (regOne!39659 Regex!19573) (regTwo!39659 Regex!19573)) )
))
(declare-fun r2!5783 () Regex!19573)

(declare-fun lambda!462486 () Int)

(declare-fun lt!2625261 () Regex!19573)

(assert (=> bs!1930741 (= (= r2!5783 lt!2625261) (= lambda!462486 lambda!462484))))

(assert (=> bs!1930741 (not (= lambda!462486 lambda!462485))))

(assert (=> b!7469088 true))

(assert (=> b!7469088 true))

(assert (=> b!7469088 true))

(declare-fun lambda!462487 () Int)

(assert (=> bs!1930741 (not (= lambda!462487 lambda!462484))))

(assert (=> bs!1930741 (= (= r2!5783 lt!2625261) (= lambda!462487 lambda!462485))))

(assert (=> b!7469088 (not (= lambda!462487 lambda!462486))))

(assert (=> b!7469088 true))

(assert (=> b!7469088 true))

(assert (=> b!7469088 true))

(declare-fun b!7469079 () Bool)

(declare-fun e!4456463 () Bool)

(declare-fun e!4456457 () Bool)

(assert (=> b!7469079 (= e!4456463 (not e!4456457))))

(declare-fun res!2996301 () Bool)

(assert (=> b!7469079 (=> res!2996301 e!4456457)))

(declare-fun lt!2625251 () Bool)

(assert (=> b!7469079 (= res!2996301 lt!2625251)))

(declare-fun lt!2625247 () Bool)

(declare-fun lt!2625258 () Regex!19573)

(declare-datatypes ((List!72289 0))(
  ( (Nil!72165) (Cons!72165 (h!78613 C!39420) (t!386858 List!72289)) )
))
(declare-fun s!13591 () List!72289)

(declare-fun matchRSpec!4252 (Regex!19573 List!72289) Bool)

(assert (=> b!7469079 (= lt!2625247 (matchRSpec!4252 lt!2625258 s!13591))))

(declare-fun matchR!9337 (Regex!19573 List!72289) Bool)

(assert (=> b!7469079 (= lt!2625247 (matchR!9337 lt!2625258 s!13591))))

(declare-datatypes ((Unit!165981 0))(
  ( (Unit!165982) )
))
(declare-fun lt!2625256 () Unit!165981)

(declare-fun mainMatchTheorem!4246 (Regex!19573 List!72289) Unit!165981)

(assert (=> b!7469079 (= lt!2625256 (mainMatchTheorem!4246 lt!2625258 s!13591))))

(declare-fun lt!2625248 () Regex!19573)

(assert (=> b!7469079 (= lt!2625251 (matchRSpec!4252 lt!2625248 s!13591))))

(assert (=> b!7469079 (= lt!2625251 (matchR!9337 lt!2625248 s!13591))))

(declare-fun lt!2625253 () Unit!165981)

(assert (=> b!7469079 (= lt!2625253 (mainMatchTheorem!4246 lt!2625248 s!13591))))

(declare-fun lt!2625254 () Regex!19573)

(declare-fun lt!2625259 () Regex!19573)

(assert (=> b!7469079 (= lt!2625258 (Union!19573 lt!2625254 lt!2625259))))

(declare-fun rTail!78 () Regex!19573)

(assert (=> b!7469079 (= lt!2625259 (Concat!28418 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19573)

(assert (=> b!7469079 (= lt!2625254 (Concat!28418 r1!5845 rTail!78))))

(assert (=> b!7469079 (= lt!2625248 (Concat!28418 lt!2625261 rTail!78))))

(assert (=> b!7469079 (= lt!2625261 (Union!19573 r1!5845 r2!5783))))

(declare-fun b!7469080 () Bool)

(declare-fun e!4456464 () Bool)

(declare-fun tp_is_empty!49435 () Bool)

(assert (=> b!7469080 (= e!4456464 tp_is_empty!49435)))

(declare-fun b!7469081 () Bool)

(declare-fun e!4456459 () Bool)

(declare-fun tp!2165631 () Bool)

(declare-fun tp!2165639 () Bool)

(assert (=> b!7469081 (= e!4456459 (and tp!2165631 tp!2165639))))

(declare-fun e!4456458 () Bool)

(assert (=> b!7469082 (= e!4456457 e!4456458)))

(declare-fun res!2996305 () Bool)

(assert (=> b!7469082 (=> res!2996305 e!4456458)))

(declare-fun lt!2625263 () Bool)

(assert (=> b!7469082 (= res!2996305 (or lt!2625263 (not lt!2625247)))))

(declare-fun Exists!4192 (Int) Bool)

(assert (=> b!7469082 (= (Exists!4192 lambda!462484) (Exists!4192 lambda!462485))))

(declare-fun lt!2625250 () Unit!165981)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2526 (Regex!19573 Regex!19573 List!72289) Unit!165981)

(assert (=> b!7469082 (= lt!2625250 (lemmaExistCutMatchRandMatchRSpecEquivalent!2526 lt!2625261 rTail!78 s!13591))))

(assert (=> b!7469082 (= lt!2625263 (Exists!4192 lambda!462484))))

(declare-datatypes ((tuple2!68596 0))(
  ( (tuple2!68597 (_1!37601 List!72289) (_2!37601 List!72289)) )
))
(declare-datatypes ((Option!17130 0))(
  ( (None!17129) (Some!17129 (v!54258 tuple2!68596)) )
))
(declare-fun isDefined!13819 (Option!17130) Bool)

(declare-fun findConcatSeparation!3252 (Regex!19573 Regex!19573 List!72289 List!72289 List!72289) Option!17130)

(assert (=> b!7469082 (= lt!2625263 (isDefined!13819 (findConcatSeparation!3252 lt!2625261 rTail!78 Nil!72165 s!13591 s!13591)))))

(declare-fun lt!2625255 () Unit!165981)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3010 (Regex!19573 Regex!19573 List!72289) Unit!165981)

(assert (=> b!7469082 (= lt!2625255 (lemmaFindConcatSeparationEquivalentToExists!3010 lt!2625261 rTail!78 s!13591))))

(declare-fun b!7469083 () Bool)

(declare-fun tp!2165632 () Bool)

(declare-fun tp!2165630 () Bool)

(assert (=> b!7469083 (= e!4456459 (and tp!2165632 tp!2165630))))

(declare-fun b!7469084 () Bool)

(declare-fun res!2996303 () Bool)

(assert (=> b!7469084 (=> (not res!2996303) (not e!4456463))))

(declare-fun validRegex!10087 (Regex!19573) Bool)

(assert (=> b!7469084 (= res!2996303 (validRegex!10087 rTail!78))))

(declare-fun b!7469085 () Bool)

(declare-fun tp!2165633 () Bool)

(assert (=> b!7469085 (= e!4456459 tp!2165633)))

(declare-fun b!7469086 () Bool)

(declare-fun res!2996306 () Bool)

(assert (=> b!7469086 (=> (not res!2996306) (not e!4456463))))

(assert (=> b!7469086 (= res!2996306 (validRegex!10087 r2!5783))))

(declare-fun b!7469087 () Bool)

(declare-fun e!4456462 () Bool)

(assert (=> b!7469087 (= e!4456458 e!4456462)))

(declare-fun res!2996304 () Bool)

(assert (=> b!7469087 (=> res!2996304 e!4456462)))

(declare-fun lt!2625260 () Bool)

(declare-fun lt!2625246 () Bool)

(assert (=> b!7469087 (= res!2996304 (or (and (not lt!2625260) (not lt!2625246)) lt!2625260))))

(assert (=> b!7469087 (= lt!2625246 (matchRSpec!4252 lt!2625259 s!13591))))

(assert (=> b!7469087 (= lt!2625246 (matchR!9337 lt!2625259 s!13591))))

(declare-fun lt!2625257 () Unit!165981)

(assert (=> b!7469087 (= lt!2625257 (mainMatchTheorem!4246 lt!2625259 s!13591))))

(assert (=> b!7469087 (= lt!2625260 (matchRSpec!4252 lt!2625254 s!13591))))

(assert (=> b!7469087 (= lt!2625260 (matchR!9337 lt!2625254 s!13591))))

(declare-fun lt!2625252 () Unit!165981)

(assert (=> b!7469087 (= lt!2625252 (mainMatchTheorem!4246 lt!2625254 s!13591))))

(declare-fun ++!17199 (List!72289 List!72289) List!72289)

(assert (=> b!7469088 (= e!4456462 (= (++!17199 Nil!72165 s!13591) s!13591))))

(assert (=> b!7469088 (= (Exists!4192 lambda!462486) (Exists!4192 lambda!462487))))

(declare-fun lt!2625262 () Unit!165981)

(assert (=> b!7469088 (= lt!2625262 (lemmaExistCutMatchRandMatchRSpecEquivalent!2526 r2!5783 rTail!78 s!13591))))

(assert (=> b!7469088 (= (isDefined!13819 (findConcatSeparation!3252 r2!5783 rTail!78 Nil!72165 s!13591 s!13591)) (Exists!4192 lambda!462486))))

(declare-fun lt!2625249 () Unit!165981)

(assert (=> b!7469088 (= lt!2625249 (lemmaFindConcatSeparationEquivalentToExists!3010 r2!5783 rTail!78 s!13591))))

(declare-fun b!7469089 () Bool)

(declare-fun e!4456461 () Bool)

(declare-fun tp!2165643 () Bool)

(declare-fun tp!2165638 () Bool)

(assert (=> b!7469089 (= e!4456461 (and tp!2165643 tp!2165638))))

(declare-fun b!7469090 () Bool)

(declare-fun tp!2165641 () Bool)

(declare-fun tp!2165642 () Bool)

(assert (=> b!7469090 (= e!4456464 (and tp!2165641 tp!2165642))))

(declare-fun b!7469091 () Bool)

(declare-fun tp!2165635 () Bool)

(declare-fun tp!2165628 () Bool)

(assert (=> b!7469091 (= e!4456464 (and tp!2165635 tp!2165628))))

(declare-fun b!7469092 () Bool)

(declare-fun e!4456460 () Bool)

(declare-fun tp!2165634 () Bool)

(assert (=> b!7469092 (= e!4456460 (and tp_is_empty!49435 tp!2165634))))

(declare-fun b!7469093 () Bool)

(declare-fun tp!2165629 () Bool)

(assert (=> b!7469093 (= e!4456464 tp!2165629)))

(declare-fun b!7469094 () Bool)

(assert (=> b!7469094 (= e!4456459 tp_is_empty!49435)))

(declare-fun res!2996302 () Bool)

(assert (=> start!724198 (=> (not res!2996302) (not e!4456463))))

(assert (=> start!724198 (= res!2996302 (validRegex!10087 r1!5845))))

(assert (=> start!724198 e!4456463))

(assert (=> start!724198 e!4456461))

(assert (=> start!724198 e!4456464))

(assert (=> start!724198 e!4456459))

(assert (=> start!724198 e!4456460))

(declare-fun b!7469095 () Bool)

(declare-fun tp!2165636 () Bool)

(declare-fun tp!2165637 () Bool)

(assert (=> b!7469095 (= e!4456461 (and tp!2165636 tp!2165637))))

(declare-fun b!7469096 () Bool)

(assert (=> b!7469096 (= e!4456461 tp_is_empty!49435)))

(declare-fun b!7469097 () Bool)

(declare-fun tp!2165640 () Bool)

(assert (=> b!7469097 (= e!4456461 tp!2165640)))

(assert (= (and start!724198 res!2996302) b!7469086))

(assert (= (and b!7469086 res!2996306) b!7469084))

(assert (= (and b!7469084 res!2996303) b!7469079))

(assert (= (and b!7469079 (not res!2996301)) b!7469082))

(assert (= (and b!7469082 (not res!2996305)) b!7469087))

(assert (= (and b!7469087 (not res!2996304)) b!7469088))

(get-info :version)

(assert (= (and start!724198 ((_ is ElementMatch!19573) r1!5845)) b!7469096))

(assert (= (and start!724198 ((_ is Concat!28418) r1!5845)) b!7469089))

(assert (= (and start!724198 ((_ is Star!19573) r1!5845)) b!7469097))

(assert (= (and start!724198 ((_ is Union!19573) r1!5845)) b!7469095))

(assert (= (and start!724198 ((_ is ElementMatch!19573) r2!5783)) b!7469080))

(assert (= (and start!724198 ((_ is Concat!28418) r2!5783)) b!7469090))

(assert (= (and start!724198 ((_ is Star!19573) r2!5783)) b!7469093))

(assert (= (and start!724198 ((_ is Union!19573) r2!5783)) b!7469091))

(assert (= (and start!724198 ((_ is ElementMatch!19573) rTail!78)) b!7469094))

(assert (= (and start!724198 ((_ is Concat!28418) rTail!78)) b!7469083))

(assert (= (and start!724198 ((_ is Star!19573) rTail!78)) b!7469085))

(assert (= (and start!724198 ((_ is Union!19573) rTail!78)) b!7469081))

(assert (= (and start!724198 ((_ is Cons!72165) s!13591)) b!7469092))

(declare-fun m!8066848 () Bool)

(assert (=> b!7469087 m!8066848))

(declare-fun m!8066850 () Bool)

(assert (=> b!7469087 m!8066850))

(declare-fun m!8066852 () Bool)

(assert (=> b!7469087 m!8066852))

(declare-fun m!8066854 () Bool)

(assert (=> b!7469087 m!8066854))

(declare-fun m!8066856 () Bool)

(assert (=> b!7469087 m!8066856))

(declare-fun m!8066858 () Bool)

(assert (=> b!7469087 m!8066858))

(declare-fun m!8066860 () Bool)

(assert (=> b!7469079 m!8066860))

(declare-fun m!8066862 () Bool)

(assert (=> b!7469079 m!8066862))

(declare-fun m!8066864 () Bool)

(assert (=> b!7469079 m!8066864))

(declare-fun m!8066866 () Bool)

(assert (=> b!7469079 m!8066866))

(declare-fun m!8066868 () Bool)

(assert (=> b!7469079 m!8066868))

(declare-fun m!8066870 () Bool)

(assert (=> b!7469079 m!8066870))

(declare-fun m!8066872 () Bool)

(assert (=> start!724198 m!8066872))

(declare-fun m!8066874 () Bool)

(assert (=> b!7469086 m!8066874))

(declare-fun m!8066876 () Bool)

(assert (=> b!7469082 m!8066876))

(declare-fun m!8066878 () Bool)

(assert (=> b!7469082 m!8066878))

(declare-fun m!8066880 () Bool)

(assert (=> b!7469082 m!8066880))

(declare-fun m!8066882 () Bool)

(assert (=> b!7469082 m!8066882))

(assert (=> b!7469082 m!8066880))

(declare-fun m!8066884 () Bool)

(assert (=> b!7469082 m!8066884))

(declare-fun m!8066886 () Bool)

(assert (=> b!7469082 m!8066886))

(assert (=> b!7469082 m!8066876))

(declare-fun m!8066888 () Bool)

(assert (=> b!7469088 m!8066888))

(declare-fun m!8066890 () Bool)

(assert (=> b!7469088 m!8066890))

(assert (=> b!7469088 m!8066890))

(declare-fun m!8066892 () Bool)

(assert (=> b!7469088 m!8066892))

(declare-fun m!8066894 () Bool)

(assert (=> b!7469088 m!8066894))

(declare-fun m!8066896 () Bool)

(assert (=> b!7469088 m!8066896))

(declare-fun m!8066898 () Bool)

(assert (=> b!7469088 m!8066898))

(assert (=> b!7469088 m!8066898))

(declare-fun m!8066900 () Bool)

(assert (=> b!7469088 m!8066900))

(declare-fun m!8066902 () Bool)

(assert (=> b!7469084 m!8066902))

(check-sat (not b!7469081) (not b!7469091) (not b!7469093) (not b!7469079) tp_is_empty!49435 (not b!7469097) (not b!7469095) (not b!7469085) (not b!7469082) (not b!7469092) (not b!7469089) (not start!724198) (not b!7469086) (not b!7469084) (not b!7469088) (not b!7469090) (not b!7469083) (not b!7469087))
(check-sat)
(get-model)

(declare-fun d!2298816 () Bool)

(declare-fun isEmpty!41164 (Option!17130) Bool)

(assert (=> d!2298816 (= (isDefined!13819 (findConcatSeparation!3252 lt!2625261 rTail!78 Nil!72165 s!13591 s!13591)) (not (isEmpty!41164 (findConcatSeparation!3252 lt!2625261 rTail!78 Nil!72165 s!13591 s!13591))))))

(declare-fun bs!1930745 () Bool)

(assert (= bs!1930745 d!2298816))

(assert (=> bs!1930745 m!8066880))

(declare-fun m!8066910 () Bool)

(assert (=> bs!1930745 m!8066910))

(assert (=> b!7469082 d!2298816))

(declare-fun bs!1930749 () Bool)

(declare-fun d!2298818 () Bool)

(assert (= bs!1930749 (and d!2298818 b!7469082)))

(declare-fun lambda!462493 () Int)

(assert (=> bs!1930749 (= lambda!462493 lambda!462484)))

(assert (=> bs!1930749 (not (= lambda!462493 lambda!462485))))

(declare-fun bs!1930750 () Bool)

(assert (= bs!1930750 (and d!2298818 b!7469088)))

(assert (=> bs!1930750 (= (= lt!2625261 r2!5783) (= lambda!462493 lambda!462486))))

(assert (=> bs!1930750 (not (= lambda!462493 lambda!462487))))

(assert (=> d!2298818 true))

(assert (=> d!2298818 true))

(assert (=> d!2298818 true))

(assert (=> d!2298818 (= (isDefined!13819 (findConcatSeparation!3252 lt!2625261 rTail!78 Nil!72165 s!13591 s!13591)) (Exists!4192 lambda!462493))))

(declare-fun lt!2625278 () Unit!165981)

(declare-fun choose!57734 (Regex!19573 Regex!19573 List!72289) Unit!165981)

(assert (=> d!2298818 (= lt!2625278 (choose!57734 lt!2625261 rTail!78 s!13591))))

(assert (=> d!2298818 (validRegex!10087 lt!2625261)))

(assert (=> d!2298818 (= (lemmaFindConcatSeparationEquivalentToExists!3010 lt!2625261 rTail!78 s!13591) lt!2625278)))

(declare-fun bs!1930751 () Bool)

(assert (= bs!1930751 d!2298818))

(assert (=> bs!1930751 m!8066880))

(declare-fun m!8066940 () Bool)

(assert (=> bs!1930751 m!8066940))

(assert (=> bs!1930751 m!8066880))

(assert (=> bs!1930751 m!8066884))

(declare-fun m!8066942 () Bool)

(assert (=> bs!1930751 m!8066942))

(declare-fun m!8066944 () Bool)

(assert (=> bs!1930751 m!8066944))

(assert (=> b!7469082 d!2298818))

(declare-fun d!2298824 () Bool)

(declare-fun choose!57735 (Int) Bool)

(assert (=> d!2298824 (= (Exists!4192 lambda!462485) (choose!57735 lambda!462485))))

(declare-fun bs!1930752 () Bool)

(assert (= bs!1930752 d!2298824))

(declare-fun m!8066946 () Bool)

(assert (=> bs!1930752 m!8066946))

(assert (=> b!7469082 d!2298824))

(declare-fun b!7469220 () Bool)

(declare-fun e!4456539 () Bool)

(assert (=> b!7469220 (= e!4456539 (matchR!9337 rTail!78 s!13591))))

(declare-fun d!2298826 () Bool)

(declare-fun e!4456540 () Bool)

(assert (=> d!2298826 e!4456540))

(declare-fun res!2996379 () Bool)

(assert (=> d!2298826 (=> res!2996379 e!4456540)))

(declare-fun e!4456541 () Bool)

(assert (=> d!2298826 (= res!2996379 e!4456541)))

(declare-fun res!2996382 () Bool)

(assert (=> d!2298826 (=> (not res!2996382) (not e!4456541))))

(declare-fun lt!2625299 () Option!17130)

(assert (=> d!2298826 (= res!2996382 (isDefined!13819 lt!2625299))))

(declare-fun e!4456538 () Option!17130)

(assert (=> d!2298826 (= lt!2625299 e!4456538)))

(declare-fun c!1380202 () Bool)

(assert (=> d!2298826 (= c!1380202 e!4456539)))

(declare-fun res!2996380 () Bool)

(assert (=> d!2298826 (=> (not res!2996380) (not e!4456539))))

(assert (=> d!2298826 (= res!2996380 (matchR!9337 lt!2625261 Nil!72165))))

(assert (=> d!2298826 (validRegex!10087 lt!2625261)))

(assert (=> d!2298826 (= (findConcatSeparation!3252 lt!2625261 rTail!78 Nil!72165 s!13591 s!13591) lt!2625299)))

(declare-fun b!7469221 () Bool)

(declare-fun lt!2625298 () Unit!165981)

(declare-fun lt!2625300 () Unit!165981)

(assert (=> b!7469221 (= lt!2625298 lt!2625300)))

(assert (=> b!7469221 (= (++!17199 (++!17199 Nil!72165 (Cons!72165 (h!78613 s!13591) Nil!72165)) (t!386858 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3077 (List!72289 C!39420 List!72289 List!72289) Unit!165981)

(assert (=> b!7469221 (= lt!2625300 (lemmaMoveElementToOtherListKeepsConcatEq!3077 Nil!72165 (h!78613 s!13591) (t!386858 s!13591) s!13591))))

(declare-fun e!4456537 () Option!17130)

(assert (=> b!7469221 (= e!4456537 (findConcatSeparation!3252 lt!2625261 rTail!78 (++!17199 Nil!72165 (Cons!72165 (h!78613 s!13591) Nil!72165)) (t!386858 s!13591) s!13591))))

(declare-fun b!7469222 () Bool)

(assert (=> b!7469222 (= e!4456538 e!4456537)))

(declare-fun c!1380203 () Bool)

(assert (=> b!7469222 (= c!1380203 ((_ is Nil!72165) s!13591))))

(declare-fun b!7469223 () Bool)

(declare-fun res!2996383 () Bool)

(assert (=> b!7469223 (=> (not res!2996383) (not e!4456541))))

(declare-fun get!25223 (Option!17130) tuple2!68596)

(assert (=> b!7469223 (= res!2996383 (matchR!9337 rTail!78 (_2!37601 (get!25223 lt!2625299))))))

(declare-fun b!7469224 () Bool)

(assert (=> b!7469224 (= e!4456541 (= (++!17199 (_1!37601 (get!25223 lt!2625299)) (_2!37601 (get!25223 lt!2625299))) s!13591))))

(declare-fun b!7469225 () Bool)

(declare-fun res!2996381 () Bool)

(assert (=> b!7469225 (=> (not res!2996381) (not e!4456541))))

(assert (=> b!7469225 (= res!2996381 (matchR!9337 lt!2625261 (_1!37601 (get!25223 lt!2625299))))))

(declare-fun b!7469226 () Bool)

(assert (=> b!7469226 (= e!4456538 (Some!17129 (tuple2!68597 Nil!72165 s!13591)))))

(declare-fun b!7469227 () Bool)

(assert (=> b!7469227 (= e!4456537 None!17129)))

(declare-fun b!7469228 () Bool)

(assert (=> b!7469228 (= e!4456540 (not (isDefined!13819 lt!2625299)))))

(assert (= (and d!2298826 res!2996380) b!7469220))

(assert (= (and d!2298826 c!1380202) b!7469226))

(assert (= (and d!2298826 (not c!1380202)) b!7469222))

(assert (= (and b!7469222 c!1380203) b!7469227))

(assert (= (and b!7469222 (not c!1380203)) b!7469221))

(assert (= (and d!2298826 res!2996382) b!7469225))

(assert (= (and b!7469225 res!2996381) b!7469223))

(assert (= (and b!7469223 res!2996383) b!7469224))

(assert (= (and d!2298826 (not res!2996379)) b!7469228))

(declare-fun m!8067014 () Bool)

(assert (=> b!7469220 m!8067014))

(declare-fun m!8067016 () Bool)

(assert (=> b!7469221 m!8067016))

(assert (=> b!7469221 m!8067016))

(declare-fun m!8067018 () Bool)

(assert (=> b!7469221 m!8067018))

(declare-fun m!8067020 () Bool)

(assert (=> b!7469221 m!8067020))

(assert (=> b!7469221 m!8067016))

(declare-fun m!8067022 () Bool)

(assert (=> b!7469221 m!8067022))

(declare-fun m!8067024 () Bool)

(assert (=> b!7469228 m!8067024))

(assert (=> d!2298826 m!8067024))

(declare-fun m!8067026 () Bool)

(assert (=> d!2298826 m!8067026))

(assert (=> d!2298826 m!8066940))

(declare-fun m!8067028 () Bool)

(assert (=> b!7469223 m!8067028))

(declare-fun m!8067030 () Bool)

(assert (=> b!7469223 m!8067030))

(assert (=> b!7469225 m!8067028))

(declare-fun m!8067032 () Bool)

(assert (=> b!7469225 m!8067032))

(assert (=> b!7469224 m!8067028))

(declare-fun m!8067034 () Bool)

(assert (=> b!7469224 m!8067034))

(assert (=> b!7469082 d!2298826))

(declare-fun bs!1930785 () Bool)

(declare-fun d!2298850 () Bool)

(assert (= bs!1930785 (and d!2298850 b!7469082)))

(declare-fun lambda!462513 () Int)

(assert (=> bs!1930785 (= lambda!462513 lambda!462484)))

(declare-fun bs!1930786 () Bool)

(assert (= bs!1930786 (and d!2298850 b!7469088)))

(assert (=> bs!1930786 (not (= lambda!462513 lambda!462487))))

(assert (=> bs!1930786 (= (= lt!2625261 r2!5783) (= lambda!462513 lambda!462486))))

(declare-fun bs!1930787 () Bool)

(assert (= bs!1930787 (and d!2298850 d!2298818)))

(assert (=> bs!1930787 (= lambda!462513 lambda!462493)))

(assert (=> bs!1930785 (not (= lambda!462513 lambda!462485))))

(assert (=> d!2298850 true))

(assert (=> d!2298850 true))

(assert (=> d!2298850 true))

(declare-fun lambda!462514 () Int)

(assert (=> bs!1930785 (not (= lambda!462514 lambda!462484))))

(assert (=> bs!1930786 (= (= lt!2625261 r2!5783) (= lambda!462514 lambda!462487))))

(assert (=> bs!1930786 (not (= lambda!462514 lambda!462486))))

(assert (=> bs!1930787 (not (= lambda!462514 lambda!462493))))

(declare-fun bs!1930788 () Bool)

(assert (= bs!1930788 d!2298850))

(assert (=> bs!1930788 (not (= lambda!462514 lambda!462513))))

(assert (=> bs!1930785 (= lambda!462514 lambda!462485)))

(assert (=> d!2298850 true))

(assert (=> d!2298850 true))

(assert (=> d!2298850 true))

(assert (=> d!2298850 (= (Exists!4192 lambda!462513) (Exists!4192 lambda!462514))))

(declare-fun lt!2625304 () Unit!165981)

(declare-fun choose!57736 (Regex!19573 Regex!19573 List!72289) Unit!165981)

(assert (=> d!2298850 (= lt!2625304 (choose!57736 lt!2625261 rTail!78 s!13591))))

(assert (=> d!2298850 (validRegex!10087 lt!2625261)))

(assert (=> d!2298850 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2526 lt!2625261 rTail!78 s!13591) lt!2625304)))

(declare-fun m!8067044 () Bool)

(assert (=> bs!1930788 m!8067044))

(declare-fun m!8067046 () Bool)

(assert (=> bs!1930788 m!8067046))

(declare-fun m!8067048 () Bool)

(assert (=> bs!1930788 m!8067048))

(assert (=> bs!1930788 m!8066940))

(assert (=> b!7469082 d!2298850))

(declare-fun d!2298854 () Bool)

(assert (=> d!2298854 (= (Exists!4192 lambda!462484) (choose!57735 lambda!462484))))

(declare-fun bs!1930789 () Bool)

(assert (= bs!1930789 d!2298854))

(declare-fun m!8067050 () Bool)

(assert (=> bs!1930789 m!8067050))

(assert (=> b!7469082 d!2298854))

(declare-fun b!7469411 () Bool)

(declare-fun e!4456642 () Bool)

(declare-fun e!4456646 () Bool)

(assert (=> b!7469411 (= e!4456642 e!4456646)))

(declare-fun res!2996480 () Bool)

(assert (=> b!7469411 (=> (not res!2996480) (not e!4456646))))

(declare-fun lt!2625314 () Bool)

(assert (=> b!7469411 (= res!2996480 (not lt!2625314))))

(declare-fun b!7469412 () Bool)

(declare-fun e!4456647 () Bool)

(assert (=> b!7469412 (= e!4456647 (not lt!2625314))))

(declare-fun b!7469413 () Bool)

(declare-fun e!4456641 () Bool)

(assert (=> b!7469413 (= e!4456646 e!4456641)))

(declare-fun res!2996481 () Bool)

(assert (=> b!7469413 (=> res!2996481 e!4456641)))

(declare-fun call!685916 () Bool)

(assert (=> b!7469413 (= res!2996481 call!685916)))

(declare-fun b!7469414 () Bool)

(declare-fun res!2996477 () Bool)

(declare-fun e!4456645 () Bool)

(assert (=> b!7469414 (=> (not res!2996477) (not e!4456645))))

(assert (=> b!7469414 (= res!2996477 (not call!685916))))

(declare-fun d!2298856 () Bool)

(declare-fun e!4456643 () Bool)

(assert (=> d!2298856 e!4456643))

(declare-fun c!1380249 () Bool)

(assert (=> d!2298856 (= c!1380249 ((_ is EmptyExpr!19573) lt!2625254))))

(declare-fun e!4456644 () Bool)

(assert (=> d!2298856 (= lt!2625314 e!4456644)))

(declare-fun c!1380251 () Bool)

(declare-fun isEmpty!41166 (List!72289) Bool)

(assert (=> d!2298856 (= c!1380251 (isEmpty!41166 s!13591))))

(assert (=> d!2298856 (validRegex!10087 lt!2625254)))

(assert (=> d!2298856 (= (matchR!9337 lt!2625254 s!13591) lt!2625314)))

(declare-fun bm!685911 () Bool)

(assert (=> bm!685911 (= call!685916 (isEmpty!41166 s!13591))))

(declare-fun b!7469415 () Bool)

(declare-fun res!2996479 () Bool)

(assert (=> b!7469415 (=> res!2996479 e!4456641)))

(declare-fun tail!14893 (List!72289) List!72289)

(assert (=> b!7469415 (= res!2996479 (not (isEmpty!41166 (tail!14893 s!13591))))))

(declare-fun b!7469416 () Bool)

(declare-fun res!2996482 () Bool)

(assert (=> b!7469416 (=> res!2996482 e!4456642)))

(assert (=> b!7469416 (= res!2996482 (not ((_ is ElementMatch!19573) lt!2625254)))))

(assert (=> b!7469416 (= e!4456647 e!4456642)))

(declare-fun b!7469417 () Bool)

(declare-fun derivativeStep!5584 (Regex!19573 C!39420) Regex!19573)

(declare-fun head!15324 (List!72289) C!39420)

(assert (=> b!7469417 (= e!4456644 (matchR!9337 (derivativeStep!5584 lt!2625254 (head!15324 s!13591)) (tail!14893 s!13591)))))

(declare-fun b!7469418 () Bool)

(assert (=> b!7469418 (= e!4456643 (= lt!2625314 call!685916))))

(declare-fun b!7469419 () Bool)

(declare-fun res!2996476 () Bool)

(assert (=> b!7469419 (=> (not res!2996476) (not e!4456645))))

(assert (=> b!7469419 (= res!2996476 (isEmpty!41166 (tail!14893 s!13591)))))

(declare-fun b!7469420 () Bool)

(assert (=> b!7469420 (= e!4456641 (not (= (head!15324 s!13591) (c!1380178 lt!2625254))))))

(declare-fun b!7469421 () Bool)

(assert (=> b!7469421 (= e!4456645 (= (head!15324 s!13591) (c!1380178 lt!2625254)))))

(declare-fun b!7469422 () Bool)

(assert (=> b!7469422 (= e!4456643 e!4456647)))

(declare-fun c!1380250 () Bool)

(assert (=> b!7469422 (= c!1380250 ((_ is EmptyLang!19573) lt!2625254))))

(declare-fun b!7469423 () Bool)

(declare-fun nullable!8525 (Regex!19573) Bool)

(assert (=> b!7469423 (= e!4456644 (nullable!8525 lt!2625254))))

(declare-fun b!7469424 () Bool)

(declare-fun res!2996478 () Bool)

(assert (=> b!7469424 (=> res!2996478 e!4456642)))

(assert (=> b!7469424 (= res!2996478 e!4456645)))

(declare-fun res!2996483 () Bool)

(assert (=> b!7469424 (=> (not res!2996483) (not e!4456645))))

(assert (=> b!7469424 (= res!2996483 lt!2625314)))

(assert (= (and d!2298856 c!1380251) b!7469423))

(assert (= (and d!2298856 (not c!1380251)) b!7469417))

(assert (= (and d!2298856 c!1380249) b!7469418))

(assert (= (and d!2298856 (not c!1380249)) b!7469422))

(assert (= (and b!7469422 c!1380250) b!7469412))

(assert (= (and b!7469422 (not c!1380250)) b!7469416))

(assert (= (and b!7469416 (not res!2996482)) b!7469424))

(assert (= (and b!7469424 res!2996483) b!7469414))

(assert (= (and b!7469414 res!2996477) b!7469419))

(assert (= (and b!7469419 res!2996476) b!7469421))

(assert (= (and b!7469424 (not res!2996478)) b!7469411))

(assert (= (and b!7469411 res!2996480) b!7469413))

(assert (= (and b!7469413 (not res!2996481)) b!7469415))

(assert (= (and b!7469415 (not res!2996479)) b!7469420))

(assert (= (or b!7469418 b!7469413 b!7469414) bm!685911))

(declare-fun m!8067098 () Bool)

(assert (=> b!7469423 m!8067098))

(declare-fun m!8067100 () Bool)

(assert (=> b!7469420 m!8067100))

(assert (=> b!7469417 m!8067100))

(assert (=> b!7469417 m!8067100))

(declare-fun m!8067102 () Bool)

(assert (=> b!7469417 m!8067102))

(declare-fun m!8067104 () Bool)

(assert (=> b!7469417 m!8067104))

(assert (=> b!7469417 m!8067102))

(assert (=> b!7469417 m!8067104))

(declare-fun m!8067106 () Bool)

(assert (=> b!7469417 m!8067106))

(assert (=> b!7469421 m!8067100))

(assert (=> b!7469415 m!8067104))

(assert (=> b!7469415 m!8067104))

(declare-fun m!8067108 () Bool)

(assert (=> b!7469415 m!8067108))

(declare-fun m!8067110 () Bool)

(assert (=> d!2298856 m!8067110))

(declare-fun m!8067112 () Bool)

(assert (=> d!2298856 m!8067112))

(assert (=> bm!685911 m!8067110))

(assert (=> b!7469419 m!8067104))

(assert (=> b!7469419 m!8067104))

(assert (=> b!7469419 m!8067108))

(assert (=> b!7469087 d!2298856))

(declare-fun d!2298872 () Bool)

(assert (=> d!2298872 (= (matchR!9337 lt!2625254 s!13591) (matchRSpec!4252 lt!2625254 s!13591))))

(declare-fun lt!2625319 () Unit!165981)

(declare-fun choose!57737 (Regex!19573 List!72289) Unit!165981)

(assert (=> d!2298872 (= lt!2625319 (choose!57737 lt!2625254 s!13591))))

(assert (=> d!2298872 (validRegex!10087 lt!2625254)))

(assert (=> d!2298872 (= (mainMatchTheorem!4246 lt!2625254 s!13591) lt!2625319)))

(declare-fun bs!1930856 () Bool)

(assert (= bs!1930856 d!2298872))

(assert (=> bs!1930856 m!8066858))

(assert (=> bs!1930856 m!8066848))

(declare-fun m!8067134 () Bool)

(assert (=> bs!1930856 m!8067134))

(assert (=> bs!1930856 m!8067112))

(assert (=> b!7469087 d!2298872))

(declare-fun d!2298880 () Bool)

(assert (=> d!2298880 (= (matchR!9337 lt!2625259 s!13591) (matchRSpec!4252 lt!2625259 s!13591))))

(declare-fun lt!2625320 () Unit!165981)

(assert (=> d!2298880 (= lt!2625320 (choose!57737 lt!2625259 s!13591))))

(assert (=> d!2298880 (validRegex!10087 lt!2625259)))

(assert (=> d!2298880 (= (mainMatchTheorem!4246 lt!2625259 s!13591) lt!2625320)))

(declare-fun bs!1930857 () Bool)

(assert (= bs!1930857 d!2298880))

(assert (=> bs!1930857 m!8066850))

(assert (=> bs!1930857 m!8066854))

(declare-fun m!8067136 () Bool)

(assert (=> bs!1930857 m!8067136))

(declare-fun m!8067138 () Bool)

(assert (=> bs!1930857 m!8067138))

(assert (=> b!7469087 d!2298880))

(declare-fun b!7469507 () Bool)

(declare-fun e!4456679 () Bool)

(declare-fun e!4456683 () Bool)

(assert (=> b!7469507 (= e!4456679 e!4456683)))

(declare-fun res!2996501 () Bool)

(assert (=> b!7469507 (=> (not res!2996501) (not e!4456683))))

(declare-fun lt!2625321 () Bool)

(assert (=> b!7469507 (= res!2996501 (not lt!2625321))))

(declare-fun b!7469508 () Bool)

(declare-fun e!4456684 () Bool)

(assert (=> b!7469508 (= e!4456684 (not lt!2625321))))

(declare-fun b!7469509 () Bool)

(declare-fun e!4456678 () Bool)

(assert (=> b!7469509 (= e!4456683 e!4456678)))

(declare-fun res!2996502 () Bool)

(assert (=> b!7469509 (=> res!2996502 e!4456678)))

(declare-fun call!685921 () Bool)

(assert (=> b!7469509 (= res!2996502 call!685921)))

(declare-fun b!7469510 () Bool)

(declare-fun res!2996498 () Bool)

(declare-fun e!4456682 () Bool)

(assert (=> b!7469510 (=> (not res!2996498) (not e!4456682))))

(assert (=> b!7469510 (= res!2996498 (not call!685921))))

(declare-fun d!2298882 () Bool)

(declare-fun e!4456680 () Bool)

(assert (=> d!2298882 e!4456680))

(declare-fun c!1380257 () Bool)

(assert (=> d!2298882 (= c!1380257 ((_ is EmptyExpr!19573) lt!2625259))))

(declare-fun e!4456681 () Bool)

(assert (=> d!2298882 (= lt!2625321 e!4456681)))

(declare-fun c!1380259 () Bool)

(assert (=> d!2298882 (= c!1380259 (isEmpty!41166 s!13591))))

(assert (=> d!2298882 (validRegex!10087 lt!2625259)))

(assert (=> d!2298882 (= (matchR!9337 lt!2625259 s!13591) lt!2625321)))

(declare-fun bm!685916 () Bool)

(assert (=> bm!685916 (= call!685921 (isEmpty!41166 s!13591))))

(declare-fun b!7469511 () Bool)

(declare-fun res!2996500 () Bool)

(assert (=> b!7469511 (=> res!2996500 e!4456678)))

(assert (=> b!7469511 (= res!2996500 (not (isEmpty!41166 (tail!14893 s!13591))))))

(declare-fun b!7469512 () Bool)

(declare-fun res!2996503 () Bool)

(assert (=> b!7469512 (=> res!2996503 e!4456679)))

(assert (=> b!7469512 (= res!2996503 (not ((_ is ElementMatch!19573) lt!2625259)))))

(assert (=> b!7469512 (= e!4456684 e!4456679)))

(declare-fun b!7469513 () Bool)

(assert (=> b!7469513 (= e!4456681 (matchR!9337 (derivativeStep!5584 lt!2625259 (head!15324 s!13591)) (tail!14893 s!13591)))))

(declare-fun b!7469514 () Bool)

(assert (=> b!7469514 (= e!4456680 (= lt!2625321 call!685921))))

(declare-fun b!7469515 () Bool)

(declare-fun res!2996497 () Bool)

(assert (=> b!7469515 (=> (not res!2996497) (not e!4456682))))

(assert (=> b!7469515 (= res!2996497 (isEmpty!41166 (tail!14893 s!13591)))))

(declare-fun b!7469516 () Bool)

(assert (=> b!7469516 (= e!4456678 (not (= (head!15324 s!13591) (c!1380178 lt!2625259))))))

(declare-fun b!7469517 () Bool)

(assert (=> b!7469517 (= e!4456682 (= (head!15324 s!13591) (c!1380178 lt!2625259)))))

(declare-fun b!7469518 () Bool)

(assert (=> b!7469518 (= e!4456680 e!4456684)))

(declare-fun c!1380258 () Bool)

(assert (=> b!7469518 (= c!1380258 ((_ is EmptyLang!19573) lt!2625259))))

(declare-fun b!7469519 () Bool)

(assert (=> b!7469519 (= e!4456681 (nullable!8525 lt!2625259))))

(declare-fun b!7469520 () Bool)

(declare-fun res!2996499 () Bool)

(assert (=> b!7469520 (=> res!2996499 e!4456679)))

(assert (=> b!7469520 (= res!2996499 e!4456682)))

(declare-fun res!2996504 () Bool)

(assert (=> b!7469520 (=> (not res!2996504) (not e!4456682))))

(assert (=> b!7469520 (= res!2996504 lt!2625321)))

(assert (= (and d!2298882 c!1380259) b!7469519))

(assert (= (and d!2298882 (not c!1380259)) b!7469513))

(assert (= (and d!2298882 c!1380257) b!7469514))

(assert (= (and d!2298882 (not c!1380257)) b!7469518))

(assert (= (and b!7469518 c!1380258) b!7469508))

(assert (= (and b!7469518 (not c!1380258)) b!7469512))

(assert (= (and b!7469512 (not res!2996503)) b!7469520))

(assert (= (and b!7469520 res!2996504) b!7469510))

(assert (= (and b!7469510 res!2996498) b!7469515))

(assert (= (and b!7469515 res!2996497) b!7469517))

(assert (= (and b!7469520 (not res!2996499)) b!7469507))

(assert (= (and b!7469507 res!2996501) b!7469509))

(assert (= (and b!7469509 (not res!2996502)) b!7469511))

(assert (= (and b!7469511 (not res!2996500)) b!7469516))

(assert (= (or b!7469514 b!7469509 b!7469510) bm!685916))

(declare-fun m!8067140 () Bool)

(assert (=> b!7469519 m!8067140))

(assert (=> b!7469516 m!8067100))

(assert (=> b!7469513 m!8067100))

(assert (=> b!7469513 m!8067100))

(declare-fun m!8067142 () Bool)

(assert (=> b!7469513 m!8067142))

(assert (=> b!7469513 m!8067104))

(assert (=> b!7469513 m!8067142))

(assert (=> b!7469513 m!8067104))

(declare-fun m!8067144 () Bool)

(assert (=> b!7469513 m!8067144))

(assert (=> b!7469517 m!8067100))

(assert (=> b!7469511 m!8067104))

(assert (=> b!7469511 m!8067104))

(assert (=> b!7469511 m!8067108))

(assert (=> d!2298882 m!8067110))

(assert (=> d!2298882 m!8067138))

(assert (=> bm!685916 m!8067110))

(assert (=> b!7469515 m!8067104))

(assert (=> b!7469515 m!8067104))

(assert (=> b!7469515 m!8067108))

(assert (=> b!7469087 d!2298882))

(declare-fun bs!1930858 () Bool)

(declare-fun b!7469570 () Bool)

(assert (= bs!1930858 (and b!7469570 d!2298850)))

(declare-fun lambda!462525 () Int)

(assert (=> bs!1930858 (not (= lambda!462525 lambda!462514))))

(declare-fun bs!1930859 () Bool)

(assert (= bs!1930859 (and b!7469570 b!7469082)))

(assert (=> bs!1930859 (not (= lambda!462525 lambda!462484))))

(declare-fun bs!1930860 () Bool)

(assert (= bs!1930860 (and b!7469570 b!7469088)))

(assert (=> bs!1930860 (not (= lambda!462525 lambda!462487))))

(assert (=> bs!1930860 (not (= lambda!462525 lambda!462486))))

(declare-fun bs!1930861 () Bool)

(assert (= bs!1930861 (and b!7469570 d!2298818)))

(assert (=> bs!1930861 (not (= lambda!462525 lambda!462493))))

(assert (=> bs!1930858 (not (= lambda!462525 lambda!462513))))

(assert (=> bs!1930859 (not (= lambda!462525 lambda!462485))))

(assert (=> b!7469570 true))

(assert (=> b!7469570 true))

(declare-fun bs!1930862 () Bool)

(declare-fun b!7469579 () Bool)

(assert (= bs!1930862 (and b!7469579 b!7469570)))

(declare-fun lambda!462526 () Int)

(assert (=> bs!1930862 (not (= lambda!462526 lambda!462525))))

(declare-fun bs!1930863 () Bool)

(assert (= bs!1930863 (and b!7469579 d!2298850)))

(assert (=> bs!1930863 (= (and (= (regOne!39658 lt!2625254) lt!2625261) (= (regTwo!39658 lt!2625254) rTail!78)) (= lambda!462526 lambda!462514))))

(declare-fun bs!1930864 () Bool)

(assert (= bs!1930864 (and b!7469579 b!7469082)))

(assert (=> bs!1930864 (not (= lambda!462526 lambda!462484))))

(declare-fun bs!1930865 () Bool)

(assert (= bs!1930865 (and b!7469579 b!7469088)))

(assert (=> bs!1930865 (= (and (= (regOne!39658 lt!2625254) r2!5783) (= (regTwo!39658 lt!2625254) rTail!78)) (= lambda!462526 lambda!462487))))

(assert (=> bs!1930865 (not (= lambda!462526 lambda!462486))))

(declare-fun bs!1930866 () Bool)

(assert (= bs!1930866 (and b!7469579 d!2298818)))

(assert (=> bs!1930866 (not (= lambda!462526 lambda!462493))))

(assert (=> bs!1930863 (not (= lambda!462526 lambda!462513))))

(assert (=> bs!1930864 (= (and (= (regOne!39658 lt!2625254) lt!2625261) (= (regTwo!39658 lt!2625254) rTail!78)) (= lambda!462526 lambda!462485))))

(assert (=> b!7469579 true))

(assert (=> b!7469579 true))

(declare-fun b!7469569 () Bool)

(declare-fun e!4456708 () Bool)

(assert (=> b!7469569 (= e!4456708 (= s!13591 (Cons!72165 (c!1380178 lt!2625254) Nil!72165)))))

(declare-fun e!4456707 () Bool)

(declare-fun call!685927 () Bool)

(assert (=> b!7469570 (= e!4456707 call!685927)))

(declare-fun b!7469571 () Bool)

(declare-fun c!1380271 () Bool)

(assert (=> b!7469571 (= c!1380271 ((_ is ElementMatch!19573) lt!2625254))))

(declare-fun e!4456713 () Bool)

(assert (=> b!7469571 (= e!4456713 e!4456708)))

(declare-fun bm!685922 () Bool)

(declare-fun c!1380270 () Bool)

(assert (=> bm!685922 (= call!685927 (Exists!4192 (ite c!1380270 lambda!462525 lambda!462526)))))

(declare-fun b!7469572 () Bool)

(declare-fun e!4456711 () Bool)

(assert (=> b!7469572 (= e!4456711 e!4456713)))

(declare-fun res!2996522 () Bool)

(assert (=> b!7469572 (= res!2996522 (not ((_ is EmptyLang!19573) lt!2625254)))))

(assert (=> b!7469572 (=> (not res!2996522) (not e!4456713))))

(declare-fun b!7469573 () Bool)

(declare-fun res!2996523 () Bool)

(assert (=> b!7469573 (=> res!2996523 e!4456707)))

(declare-fun call!685926 () Bool)

(assert (=> b!7469573 (= res!2996523 call!685926)))

(declare-fun e!4456710 () Bool)

(assert (=> b!7469573 (= e!4456710 e!4456707)))

(declare-fun b!7469574 () Bool)

(declare-fun e!4456709 () Bool)

(assert (=> b!7469574 (= e!4456709 e!4456710)))

(assert (=> b!7469574 (= c!1380270 ((_ is Star!19573) lt!2625254))))

(declare-fun b!7469575 () Bool)

(declare-fun e!4456712 () Bool)

(assert (=> b!7469575 (= e!4456712 (matchRSpec!4252 (regTwo!39659 lt!2625254) s!13591))))

(declare-fun b!7469576 () Bool)

(declare-fun c!1380269 () Bool)

(assert (=> b!7469576 (= c!1380269 ((_ is Union!19573) lt!2625254))))

(assert (=> b!7469576 (= e!4456708 e!4456709)))

(declare-fun b!7469577 () Bool)

(assert (=> b!7469577 (= e!4456709 e!4456712)))

(declare-fun res!2996521 () Bool)

(assert (=> b!7469577 (= res!2996521 (matchRSpec!4252 (regOne!39659 lt!2625254) s!13591))))

(assert (=> b!7469577 (=> res!2996521 e!4456712)))

(declare-fun d!2298884 () Bool)

(declare-fun c!1380268 () Bool)

(assert (=> d!2298884 (= c!1380268 ((_ is EmptyExpr!19573) lt!2625254))))

(assert (=> d!2298884 (= (matchRSpec!4252 lt!2625254 s!13591) e!4456711)))

(declare-fun bm!685921 () Bool)

(assert (=> bm!685921 (= call!685926 (isEmpty!41166 s!13591))))

(declare-fun b!7469578 () Bool)

(assert (=> b!7469578 (= e!4456711 call!685926)))

(assert (=> b!7469579 (= e!4456710 call!685927)))

(assert (= (and d!2298884 c!1380268) b!7469578))

(assert (= (and d!2298884 (not c!1380268)) b!7469572))

(assert (= (and b!7469572 res!2996522) b!7469571))

(assert (= (and b!7469571 c!1380271) b!7469569))

(assert (= (and b!7469571 (not c!1380271)) b!7469576))

(assert (= (and b!7469576 c!1380269) b!7469577))

(assert (= (and b!7469576 (not c!1380269)) b!7469574))

(assert (= (and b!7469577 (not res!2996521)) b!7469575))

(assert (= (and b!7469574 c!1380270) b!7469573))

(assert (= (and b!7469574 (not c!1380270)) b!7469579))

(assert (= (and b!7469573 (not res!2996523)) b!7469570))

(assert (= (or b!7469570 b!7469579) bm!685922))

(assert (= (or b!7469578 b!7469573) bm!685921))

(declare-fun m!8067146 () Bool)

(assert (=> bm!685922 m!8067146))

(declare-fun m!8067148 () Bool)

(assert (=> b!7469575 m!8067148))

(declare-fun m!8067150 () Bool)

(assert (=> b!7469577 m!8067150))

(assert (=> bm!685921 m!8067110))

(assert (=> b!7469087 d!2298884))

(declare-fun bs!1930867 () Bool)

(declare-fun b!7469581 () Bool)

(assert (= bs!1930867 (and b!7469581 b!7469570)))

(declare-fun lambda!462527 () Int)

(assert (=> bs!1930867 (= (and (= (reg!19902 lt!2625259) (reg!19902 lt!2625254)) (= lt!2625259 lt!2625254)) (= lambda!462527 lambda!462525))))

(declare-fun bs!1930868 () Bool)

(assert (= bs!1930868 (and b!7469581 d!2298850)))

(assert (=> bs!1930868 (not (= lambda!462527 lambda!462514))))

(declare-fun bs!1930869 () Bool)

(assert (= bs!1930869 (and b!7469581 b!7469082)))

(assert (=> bs!1930869 (not (= lambda!462527 lambda!462484))))

(declare-fun bs!1930870 () Bool)

(assert (= bs!1930870 (and b!7469581 b!7469088)))

(assert (=> bs!1930870 (not (= lambda!462527 lambda!462487))))

(declare-fun bs!1930871 () Bool)

(assert (= bs!1930871 (and b!7469581 b!7469579)))

(assert (=> bs!1930871 (not (= lambda!462527 lambda!462526))))

(assert (=> bs!1930870 (not (= lambda!462527 lambda!462486))))

(declare-fun bs!1930872 () Bool)

(assert (= bs!1930872 (and b!7469581 d!2298818)))

(assert (=> bs!1930872 (not (= lambda!462527 lambda!462493))))

(assert (=> bs!1930868 (not (= lambda!462527 lambda!462513))))

(assert (=> bs!1930869 (not (= lambda!462527 lambda!462485))))

(assert (=> b!7469581 true))

(assert (=> b!7469581 true))

(declare-fun bs!1930873 () Bool)

(declare-fun b!7469590 () Bool)

(assert (= bs!1930873 (and b!7469590 b!7469570)))

(declare-fun lambda!462528 () Int)

(assert (=> bs!1930873 (not (= lambda!462528 lambda!462525))))

(declare-fun bs!1930874 () Bool)

(assert (= bs!1930874 (and b!7469590 d!2298850)))

(assert (=> bs!1930874 (= (and (= (regOne!39658 lt!2625259) lt!2625261) (= (regTwo!39658 lt!2625259) rTail!78)) (= lambda!462528 lambda!462514))))

(declare-fun bs!1930875 () Bool)

(assert (= bs!1930875 (and b!7469590 b!7469082)))

(assert (=> bs!1930875 (not (= lambda!462528 lambda!462484))))

(declare-fun bs!1930876 () Bool)

(assert (= bs!1930876 (and b!7469590 b!7469088)))

(assert (=> bs!1930876 (= (and (= (regOne!39658 lt!2625259) r2!5783) (= (regTwo!39658 lt!2625259) rTail!78)) (= lambda!462528 lambda!462487))))

(declare-fun bs!1930877 () Bool)

(assert (= bs!1930877 (and b!7469590 b!7469579)))

(assert (=> bs!1930877 (= (and (= (regOne!39658 lt!2625259) (regOne!39658 lt!2625254)) (= (regTwo!39658 lt!2625259) (regTwo!39658 lt!2625254))) (= lambda!462528 lambda!462526))))

(assert (=> bs!1930876 (not (= lambda!462528 lambda!462486))))

(declare-fun bs!1930878 () Bool)

(assert (= bs!1930878 (and b!7469590 d!2298818)))

(assert (=> bs!1930878 (not (= lambda!462528 lambda!462493))))

(declare-fun bs!1930879 () Bool)

(assert (= bs!1930879 (and b!7469590 b!7469581)))

(assert (=> bs!1930879 (not (= lambda!462528 lambda!462527))))

(assert (=> bs!1930874 (not (= lambda!462528 lambda!462513))))

(assert (=> bs!1930875 (= (and (= (regOne!39658 lt!2625259) lt!2625261) (= (regTwo!39658 lt!2625259) rTail!78)) (= lambda!462528 lambda!462485))))

(assert (=> b!7469590 true))

(assert (=> b!7469590 true))

(declare-fun b!7469580 () Bool)

(declare-fun e!4456715 () Bool)

(assert (=> b!7469580 (= e!4456715 (= s!13591 (Cons!72165 (c!1380178 lt!2625259) Nil!72165)))))

(declare-fun e!4456714 () Bool)

(declare-fun call!685929 () Bool)

(assert (=> b!7469581 (= e!4456714 call!685929)))

(declare-fun b!7469582 () Bool)

(declare-fun c!1380275 () Bool)

(assert (=> b!7469582 (= c!1380275 ((_ is ElementMatch!19573) lt!2625259))))

(declare-fun e!4456720 () Bool)

(assert (=> b!7469582 (= e!4456720 e!4456715)))

(declare-fun c!1380274 () Bool)

(declare-fun bm!685924 () Bool)

(assert (=> bm!685924 (= call!685929 (Exists!4192 (ite c!1380274 lambda!462527 lambda!462528)))))

(declare-fun b!7469583 () Bool)

(declare-fun e!4456718 () Bool)

(assert (=> b!7469583 (= e!4456718 e!4456720)))

(declare-fun res!2996525 () Bool)

(assert (=> b!7469583 (= res!2996525 (not ((_ is EmptyLang!19573) lt!2625259)))))

(assert (=> b!7469583 (=> (not res!2996525) (not e!4456720))))

(declare-fun b!7469584 () Bool)

(declare-fun res!2996526 () Bool)

(assert (=> b!7469584 (=> res!2996526 e!4456714)))

(declare-fun call!685928 () Bool)

(assert (=> b!7469584 (= res!2996526 call!685928)))

(declare-fun e!4456717 () Bool)

(assert (=> b!7469584 (= e!4456717 e!4456714)))

(declare-fun b!7469585 () Bool)

(declare-fun e!4456716 () Bool)

(assert (=> b!7469585 (= e!4456716 e!4456717)))

(assert (=> b!7469585 (= c!1380274 ((_ is Star!19573) lt!2625259))))

(declare-fun b!7469586 () Bool)

(declare-fun e!4456719 () Bool)

(assert (=> b!7469586 (= e!4456719 (matchRSpec!4252 (regTwo!39659 lt!2625259) s!13591))))

(declare-fun b!7469587 () Bool)

(declare-fun c!1380273 () Bool)

(assert (=> b!7469587 (= c!1380273 ((_ is Union!19573) lt!2625259))))

(assert (=> b!7469587 (= e!4456715 e!4456716)))

(declare-fun b!7469588 () Bool)

(assert (=> b!7469588 (= e!4456716 e!4456719)))

(declare-fun res!2996524 () Bool)

(assert (=> b!7469588 (= res!2996524 (matchRSpec!4252 (regOne!39659 lt!2625259) s!13591))))

(assert (=> b!7469588 (=> res!2996524 e!4456719)))

(declare-fun d!2298886 () Bool)

(declare-fun c!1380272 () Bool)

(assert (=> d!2298886 (= c!1380272 ((_ is EmptyExpr!19573) lt!2625259))))

(assert (=> d!2298886 (= (matchRSpec!4252 lt!2625259 s!13591) e!4456718)))

(declare-fun bm!685923 () Bool)

(assert (=> bm!685923 (= call!685928 (isEmpty!41166 s!13591))))

(declare-fun b!7469589 () Bool)

(assert (=> b!7469589 (= e!4456718 call!685928)))

(assert (=> b!7469590 (= e!4456717 call!685929)))

(assert (= (and d!2298886 c!1380272) b!7469589))

(assert (= (and d!2298886 (not c!1380272)) b!7469583))

(assert (= (and b!7469583 res!2996525) b!7469582))

(assert (= (and b!7469582 c!1380275) b!7469580))

(assert (= (and b!7469582 (not c!1380275)) b!7469587))

(assert (= (and b!7469587 c!1380273) b!7469588))

(assert (= (and b!7469587 (not c!1380273)) b!7469585))

(assert (= (and b!7469588 (not res!2996524)) b!7469586))

(assert (= (and b!7469585 c!1380274) b!7469584))

(assert (= (and b!7469585 (not c!1380274)) b!7469590))

(assert (= (and b!7469584 (not res!2996526)) b!7469581))

(assert (= (or b!7469581 b!7469590) bm!685924))

(assert (= (or b!7469589 b!7469584) bm!685923))

(declare-fun m!8067152 () Bool)

(assert (=> bm!685924 m!8067152))

(declare-fun m!8067154 () Bool)

(assert (=> b!7469586 m!8067154))

(declare-fun m!8067156 () Bool)

(assert (=> b!7469588 m!8067156))

(assert (=> bm!685923 m!8067110))

(assert (=> b!7469087 d!2298886))

(declare-fun b!7469609 () Bool)

(declare-fun res!2996541 () Bool)

(declare-fun e!4456736 () Bool)

(assert (=> b!7469609 (=> (not res!2996541) (not e!4456736))))

(declare-fun call!685936 () Bool)

(assert (=> b!7469609 (= res!2996541 call!685936)))

(declare-fun e!4456735 () Bool)

(assert (=> b!7469609 (= e!4456735 e!4456736)))

(declare-fun b!7469610 () Bool)

(declare-fun res!2996539 () Bool)

(declare-fun e!4456739 () Bool)

(assert (=> b!7469610 (=> res!2996539 e!4456739)))

(assert (=> b!7469610 (= res!2996539 (not ((_ is Concat!28418) r2!5783)))))

(assert (=> b!7469610 (= e!4456735 e!4456739)))

(declare-fun bm!685931 () Bool)

(declare-fun call!685937 () Bool)

(assert (=> bm!685931 (= call!685936 call!685937)))

(declare-fun bm!685932 () Bool)

(declare-fun c!1380281 () Bool)

(declare-fun c!1380280 () Bool)

(assert (=> bm!685932 (= call!685937 (validRegex!10087 (ite c!1380280 (reg!19902 r2!5783) (ite c!1380281 (regOne!39659 r2!5783) (regOne!39658 r2!5783)))))))

(declare-fun b!7469611 () Bool)

(declare-fun e!4456737 () Bool)

(assert (=> b!7469611 (= e!4456737 e!4456735)))

(assert (=> b!7469611 (= c!1380281 ((_ is Union!19573) r2!5783))))

(declare-fun b!7469612 () Bool)

(declare-fun e!4456738 () Bool)

(assert (=> b!7469612 (= e!4456738 call!685937)))

(declare-fun b!7469614 () Bool)

(declare-fun e!4456740 () Bool)

(assert (=> b!7469614 (= e!4456739 e!4456740)))

(declare-fun res!2996540 () Bool)

(assert (=> b!7469614 (=> (not res!2996540) (not e!4456740))))

(assert (=> b!7469614 (= res!2996540 call!685936)))

(declare-fun bm!685933 () Bool)

(declare-fun call!685938 () Bool)

(assert (=> bm!685933 (= call!685938 (validRegex!10087 (ite c!1380281 (regTwo!39659 r2!5783) (regTwo!39658 r2!5783))))))

(declare-fun b!7469615 () Bool)

(declare-fun e!4456741 () Bool)

(assert (=> b!7469615 (= e!4456741 e!4456737)))

(assert (=> b!7469615 (= c!1380280 ((_ is Star!19573) r2!5783))))

(declare-fun d!2298888 () Bool)

(declare-fun res!2996537 () Bool)

(assert (=> d!2298888 (=> res!2996537 e!4456741)))

(assert (=> d!2298888 (= res!2996537 ((_ is ElementMatch!19573) r2!5783))))

(assert (=> d!2298888 (= (validRegex!10087 r2!5783) e!4456741)))

(declare-fun b!7469613 () Bool)

(assert (=> b!7469613 (= e!4456737 e!4456738)))

(declare-fun res!2996538 () Bool)

(assert (=> b!7469613 (= res!2996538 (not (nullable!8525 (reg!19902 r2!5783))))))

(assert (=> b!7469613 (=> (not res!2996538) (not e!4456738))))

(declare-fun b!7469616 () Bool)

(assert (=> b!7469616 (= e!4456736 call!685938)))

(declare-fun b!7469617 () Bool)

(assert (=> b!7469617 (= e!4456740 call!685938)))

(assert (= (and d!2298888 (not res!2996537)) b!7469615))

(assert (= (and b!7469615 c!1380280) b!7469613))

(assert (= (and b!7469615 (not c!1380280)) b!7469611))

(assert (= (and b!7469613 res!2996538) b!7469612))

(assert (= (and b!7469611 c!1380281) b!7469609))

(assert (= (and b!7469611 (not c!1380281)) b!7469610))

(assert (= (and b!7469609 res!2996541) b!7469616))

(assert (= (and b!7469610 (not res!2996539)) b!7469614))

(assert (= (and b!7469614 res!2996540) b!7469617))

(assert (= (or b!7469616 b!7469617) bm!685933))

(assert (= (or b!7469609 b!7469614) bm!685931))

(assert (= (or b!7469612 bm!685931) bm!685932))

(declare-fun m!8067158 () Bool)

(assert (=> bm!685932 m!8067158))

(declare-fun m!8067160 () Bool)

(assert (=> bm!685933 m!8067160))

(declare-fun m!8067162 () Bool)

(assert (=> b!7469613 m!8067162))

(assert (=> b!7469086 d!2298888))

(declare-fun d!2298890 () Bool)

(assert (=> d!2298890 (= (matchR!9337 lt!2625248 s!13591) (matchRSpec!4252 lt!2625248 s!13591))))

(declare-fun lt!2625322 () Unit!165981)

(assert (=> d!2298890 (= lt!2625322 (choose!57737 lt!2625248 s!13591))))

(assert (=> d!2298890 (validRegex!10087 lt!2625248)))

(assert (=> d!2298890 (= (mainMatchTheorem!4246 lt!2625248 s!13591) lt!2625322)))

(declare-fun bs!1930880 () Bool)

(assert (= bs!1930880 d!2298890))

(assert (=> bs!1930880 m!8066862))

(assert (=> bs!1930880 m!8066864))

(declare-fun m!8067164 () Bool)

(assert (=> bs!1930880 m!8067164))

(declare-fun m!8067166 () Bool)

(assert (=> bs!1930880 m!8067166))

(assert (=> b!7469079 d!2298890))

(declare-fun bs!1930881 () Bool)

(declare-fun b!7469619 () Bool)

(assert (= bs!1930881 (and b!7469619 b!7469570)))

(declare-fun lambda!462529 () Int)

(assert (=> bs!1930881 (= (and (= (reg!19902 lt!2625258) (reg!19902 lt!2625254)) (= lt!2625258 lt!2625254)) (= lambda!462529 lambda!462525))))

(declare-fun bs!1930882 () Bool)

(assert (= bs!1930882 (and b!7469619 d!2298850)))

(assert (=> bs!1930882 (not (= lambda!462529 lambda!462514))))

(declare-fun bs!1930883 () Bool)

(assert (= bs!1930883 (and b!7469619 b!7469082)))

(assert (=> bs!1930883 (not (= lambda!462529 lambda!462484))))

(declare-fun bs!1930884 () Bool)

(assert (= bs!1930884 (and b!7469619 b!7469088)))

(assert (=> bs!1930884 (not (= lambda!462529 lambda!462487))))

(declare-fun bs!1930885 () Bool)

(assert (= bs!1930885 (and b!7469619 b!7469590)))

(assert (=> bs!1930885 (not (= lambda!462529 lambda!462528))))

(declare-fun bs!1930886 () Bool)

(assert (= bs!1930886 (and b!7469619 b!7469579)))

(assert (=> bs!1930886 (not (= lambda!462529 lambda!462526))))

(assert (=> bs!1930884 (not (= lambda!462529 lambda!462486))))

(declare-fun bs!1930887 () Bool)

(assert (= bs!1930887 (and b!7469619 d!2298818)))

(assert (=> bs!1930887 (not (= lambda!462529 lambda!462493))))

(declare-fun bs!1930888 () Bool)

(assert (= bs!1930888 (and b!7469619 b!7469581)))

(assert (=> bs!1930888 (= (and (= (reg!19902 lt!2625258) (reg!19902 lt!2625259)) (= lt!2625258 lt!2625259)) (= lambda!462529 lambda!462527))))

(assert (=> bs!1930882 (not (= lambda!462529 lambda!462513))))

(assert (=> bs!1930883 (not (= lambda!462529 lambda!462485))))

(assert (=> b!7469619 true))

(assert (=> b!7469619 true))

(declare-fun bs!1930889 () Bool)

(declare-fun b!7469628 () Bool)

(assert (= bs!1930889 (and b!7469628 b!7469570)))

(declare-fun lambda!462530 () Int)

(assert (=> bs!1930889 (not (= lambda!462530 lambda!462525))))

(declare-fun bs!1930890 () Bool)

(assert (= bs!1930890 (and b!7469628 b!7469619)))

(assert (=> bs!1930890 (not (= lambda!462530 lambda!462529))))

(declare-fun bs!1930891 () Bool)

(assert (= bs!1930891 (and b!7469628 d!2298850)))

(assert (=> bs!1930891 (= (and (= (regOne!39658 lt!2625258) lt!2625261) (= (regTwo!39658 lt!2625258) rTail!78)) (= lambda!462530 lambda!462514))))

(declare-fun bs!1930892 () Bool)

(assert (= bs!1930892 (and b!7469628 b!7469082)))

(assert (=> bs!1930892 (not (= lambda!462530 lambda!462484))))

(declare-fun bs!1930893 () Bool)

(assert (= bs!1930893 (and b!7469628 b!7469088)))

(assert (=> bs!1930893 (= (and (= (regOne!39658 lt!2625258) r2!5783) (= (regTwo!39658 lt!2625258) rTail!78)) (= lambda!462530 lambda!462487))))

(declare-fun bs!1930894 () Bool)

(assert (= bs!1930894 (and b!7469628 b!7469590)))

(assert (=> bs!1930894 (= (and (= (regOne!39658 lt!2625258) (regOne!39658 lt!2625259)) (= (regTwo!39658 lt!2625258) (regTwo!39658 lt!2625259))) (= lambda!462530 lambda!462528))))

(declare-fun bs!1930895 () Bool)

(assert (= bs!1930895 (and b!7469628 b!7469579)))

(assert (=> bs!1930895 (= (and (= (regOne!39658 lt!2625258) (regOne!39658 lt!2625254)) (= (regTwo!39658 lt!2625258) (regTwo!39658 lt!2625254))) (= lambda!462530 lambda!462526))))

(assert (=> bs!1930893 (not (= lambda!462530 lambda!462486))))

(declare-fun bs!1930896 () Bool)

(assert (= bs!1930896 (and b!7469628 d!2298818)))

(assert (=> bs!1930896 (not (= lambda!462530 lambda!462493))))

(declare-fun bs!1930897 () Bool)

(assert (= bs!1930897 (and b!7469628 b!7469581)))

(assert (=> bs!1930897 (not (= lambda!462530 lambda!462527))))

(assert (=> bs!1930891 (not (= lambda!462530 lambda!462513))))

(assert (=> bs!1930892 (= (and (= (regOne!39658 lt!2625258) lt!2625261) (= (regTwo!39658 lt!2625258) rTail!78)) (= lambda!462530 lambda!462485))))

(assert (=> b!7469628 true))

(assert (=> b!7469628 true))

(declare-fun b!7469618 () Bool)

(declare-fun e!4456743 () Bool)

(assert (=> b!7469618 (= e!4456743 (= s!13591 (Cons!72165 (c!1380178 lt!2625258) Nil!72165)))))

(declare-fun e!4456742 () Bool)

(declare-fun call!685940 () Bool)

(assert (=> b!7469619 (= e!4456742 call!685940)))

(declare-fun b!7469620 () Bool)

(declare-fun c!1380285 () Bool)

(assert (=> b!7469620 (= c!1380285 ((_ is ElementMatch!19573) lt!2625258))))

(declare-fun e!4456748 () Bool)

(assert (=> b!7469620 (= e!4456748 e!4456743)))

(declare-fun bm!685935 () Bool)

(declare-fun c!1380284 () Bool)

(assert (=> bm!685935 (= call!685940 (Exists!4192 (ite c!1380284 lambda!462529 lambda!462530)))))

(declare-fun b!7469621 () Bool)

(declare-fun e!4456746 () Bool)

(assert (=> b!7469621 (= e!4456746 e!4456748)))

(declare-fun res!2996543 () Bool)

(assert (=> b!7469621 (= res!2996543 (not ((_ is EmptyLang!19573) lt!2625258)))))

(assert (=> b!7469621 (=> (not res!2996543) (not e!4456748))))

(declare-fun b!7469622 () Bool)

(declare-fun res!2996544 () Bool)

(assert (=> b!7469622 (=> res!2996544 e!4456742)))

(declare-fun call!685939 () Bool)

(assert (=> b!7469622 (= res!2996544 call!685939)))

(declare-fun e!4456745 () Bool)

(assert (=> b!7469622 (= e!4456745 e!4456742)))

(declare-fun b!7469623 () Bool)

(declare-fun e!4456744 () Bool)

(assert (=> b!7469623 (= e!4456744 e!4456745)))

(assert (=> b!7469623 (= c!1380284 ((_ is Star!19573) lt!2625258))))

(declare-fun b!7469624 () Bool)

(declare-fun e!4456747 () Bool)

(assert (=> b!7469624 (= e!4456747 (matchRSpec!4252 (regTwo!39659 lt!2625258) s!13591))))

(declare-fun b!7469625 () Bool)

(declare-fun c!1380283 () Bool)

(assert (=> b!7469625 (= c!1380283 ((_ is Union!19573) lt!2625258))))

(assert (=> b!7469625 (= e!4456743 e!4456744)))

(declare-fun b!7469626 () Bool)

(assert (=> b!7469626 (= e!4456744 e!4456747)))

(declare-fun res!2996542 () Bool)

(assert (=> b!7469626 (= res!2996542 (matchRSpec!4252 (regOne!39659 lt!2625258) s!13591))))

(assert (=> b!7469626 (=> res!2996542 e!4456747)))

(declare-fun d!2298892 () Bool)

(declare-fun c!1380282 () Bool)

(assert (=> d!2298892 (= c!1380282 ((_ is EmptyExpr!19573) lt!2625258))))

(assert (=> d!2298892 (= (matchRSpec!4252 lt!2625258 s!13591) e!4456746)))

(declare-fun bm!685934 () Bool)

(assert (=> bm!685934 (= call!685939 (isEmpty!41166 s!13591))))

(declare-fun b!7469627 () Bool)

(assert (=> b!7469627 (= e!4456746 call!685939)))

(assert (=> b!7469628 (= e!4456745 call!685940)))

(assert (= (and d!2298892 c!1380282) b!7469627))

(assert (= (and d!2298892 (not c!1380282)) b!7469621))

(assert (= (and b!7469621 res!2996543) b!7469620))

(assert (= (and b!7469620 c!1380285) b!7469618))

(assert (= (and b!7469620 (not c!1380285)) b!7469625))

(assert (= (and b!7469625 c!1380283) b!7469626))

(assert (= (and b!7469625 (not c!1380283)) b!7469623))

(assert (= (and b!7469626 (not res!2996542)) b!7469624))

(assert (= (and b!7469623 c!1380284) b!7469622))

(assert (= (and b!7469623 (not c!1380284)) b!7469628))

(assert (= (and b!7469622 (not res!2996544)) b!7469619))

(assert (= (or b!7469619 b!7469628) bm!685935))

(assert (= (or b!7469627 b!7469622) bm!685934))

(declare-fun m!8067168 () Bool)

(assert (=> bm!685935 m!8067168))

(declare-fun m!8067170 () Bool)

(assert (=> b!7469624 m!8067170))

(declare-fun m!8067172 () Bool)

(assert (=> b!7469626 m!8067172))

(assert (=> bm!685934 m!8067110))

(assert (=> b!7469079 d!2298892))

(declare-fun b!7469629 () Bool)

(declare-fun e!4456750 () Bool)

(declare-fun e!4456754 () Bool)

(assert (=> b!7469629 (= e!4456750 e!4456754)))

(declare-fun res!2996549 () Bool)

(assert (=> b!7469629 (=> (not res!2996549) (not e!4456754))))

(declare-fun lt!2625323 () Bool)

(assert (=> b!7469629 (= res!2996549 (not lt!2625323))))

(declare-fun b!7469630 () Bool)

(declare-fun e!4456755 () Bool)

(assert (=> b!7469630 (= e!4456755 (not lt!2625323))))

(declare-fun b!7469631 () Bool)

(declare-fun e!4456749 () Bool)

(assert (=> b!7469631 (= e!4456754 e!4456749)))

(declare-fun res!2996550 () Bool)

(assert (=> b!7469631 (=> res!2996550 e!4456749)))

(declare-fun call!685941 () Bool)

(assert (=> b!7469631 (= res!2996550 call!685941)))

(declare-fun b!7469632 () Bool)

(declare-fun res!2996546 () Bool)

(declare-fun e!4456753 () Bool)

(assert (=> b!7469632 (=> (not res!2996546) (not e!4456753))))

(assert (=> b!7469632 (= res!2996546 (not call!685941))))

(declare-fun d!2298894 () Bool)

(declare-fun e!4456751 () Bool)

(assert (=> d!2298894 e!4456751))

(declare-fun c!1380286 () Bool)

(assert (=> d!2298894 (= c!1380286 ((_ is EmptyExpr!19573) lt!2625258))))

(declare-fun e!4456752 () Bool)

(assert (=> d!2298894 (= lt!2625323 e!4456752)))

(declare-fun c!1380288 () Bool)

(assert (=> d!2298894 (= c!1380288 (isEmpty!41166 s!13591))))

(assert (=> d!2298894 (validRegex!10087 lt!2625258)))

(assert (=> d!2298894 (= (matchR!9337 lt!2625258 s!13591) lt!2625323)))

(declare-fun bm!685936 () Bool)

(assert (=> bm!685936 (= call!685941 (isEmpty!41166 s!13591))))

(declare-fun b!7469633 () Bool)

(declare-fun res!2996548 () Bool)

(assert (=> b!7469633 (=> res!2996548 e!4456749)))

(assert (=> b!7469633 (= res!2996548 (not (isEmpty!41166 (tail!14893 s!13591))))))

(declare-fun b!7469634 () Bool)

(declare-fun res!2996551 () Bool)

(assert (=> b!7469634 (=> res!2996551 e!4456750)))

(assert (=> b!7469634 (= res!2996551 (not ((_ is ElementMatch!19573) lt!2625258)))))

(assert (=> b!7469634 (= e!4456755 e!4456750)))

(declare-fun b!7469635 () Bool)

(assert (=> b!7469635 (= e!4456752 (matchR!9337 (derivativeStep!5584 lt!2625258 (head!15324 s!13591)) (tail!14893 s!13591)))))

(declare-fun b!7469636 () Bool)

(assert (=> b!7469636 (= e!4456751 (= lt!2625323 call!685941))))

(declare-fun b!7469637 () Bool)

(declare-fun res!2996545 () Bool)

(assert (=> b!7469637 (=> (not res!2996545) (not e!4456753))))

(assert (=> b!7469637 (= res!2996545 (isEmpty!41166 (tail!14893 s!13591)))))

(declare-fun b!7469638 () Bool)

(assert (=> b!7469638 (= e!4456749 (not (= (head!15324 s!13591) (c!1380178 lt!2625258))))))

(declare-fun b!7469639 () Bool)

(assert (=> b!7469639 (= e!4456753 (= (head!15324 s!13591) (c!1380178 lt!2625258)))))

(declare-fun b!7469640 () Bool)

(assert (=> b!7469640 (= e!4456751 e!4456755)))

(declare-fun c!1380287 () Bool)

(assert (=> b!7469640 (= c!1380287 ((_ is EmptyLang!19573) lt!2625258))))

(declare-fun b!7469641 () Bool)

(assert (=> b!7469641 (= e!4456752 (nullable!8525 lt!2625258))))

(declare-fun b!7469642 () Bool)

(declare-fun res!2996547 () Bool)

(assert (=> b!7469642 (=> res!2996547 e!4456750)))

(assert (=> b!7469642 (= res!2996547 e!4456753)))

(declare-fun res!2996552 () Bool)

(assert (=> b!7469642 (=> (not res!2996552) (not e!4456753))))

(assert (=> b!7469642 (= res!2996552 lt!2625323)))

(assert (= (and d!2298894 c!1380288) b!7469641))

(assert (= (and d!2298894 (not c!1380288)) b!7469635))

(assert (= (and d!2298894 c!1380286) b!7469636))

(assert (= (and d!2298894 (not c!1380286)) b!7469640))

(assert (= (and b!7469640 c!1380287) b!7469630))

(assert (= (and b!7469640 (not c!1380287)) b!7469634))

(assert (= (and b!7469634 (not res!2996551)) b!7469642))

(assert (= (and b!7469642 res!2996552) b!7469632))

(assert (= (and b!7469632 res!2996546) b!7469637))

(assert (= (and b!7469637 res!2996545) b!7469639))

(assert (= (and b!7469642 (not res!2996547)) b!7469629))

(assert (= (and b!7469629 res!2996549) b!7469631))

(assert (= (and b!7469631 (not res!2996550)) b!7469633))

(assert (= (and b!7469633 (not res!2996548)) b!7469638))

(assert (= (or b!7469636 b!7469631 b!7469632) bm!685936))

(declare-fun m!8067174 () Bool)

(assert (=> b!7469641 m!8067174))

(assert (=> b!7469638 m!8067100))

(assert (=> b!7469635 m!8067100))

(assert (=> b!7469635 m!8067100))

(declare-fun m!8067176 () Bool)

(assert (=> b!7469635 m!8067176))

(assert (=> b!7469635 m!8067104))

(assert (=> b!7469635 m!8067176))

(assert (=> b!7469635 m!8067104))

(declare-fun m!8067178 () Bool)

(assert (=> b!7469635 m!8067178))

(assert (=> b!7469639 m!8067100))

(assert (=> b!7469633 m!8067104))

(assert (=> b!7469633 m!8067104))

(assert (=> b!7469633 m!8067108))

(assert (=> d!2298894 m!8067110))

(declare-fun m!8067180 () Bool)

(assert (=> d!2298894 m!8067180))

(assert (=> bm!685936 m!8067110))

(assert (=> b!7469637 m!8067104))

(assert (=> b!7469637 m!8067104))

(assert (=> b!7469637 m!8067108))

(assert (=> b!7469079 d!2298894))

(declare-fun b!7469643 () Bool)

(declare-fun e!4456757 () Bool)

(declare-fun e!4456761 () Bool)

(assert (=> b!7469643 (= e!4456757 e!4456761)))

(declare-fun res!2996557 () Bool)

(assert (=> b!7469643 (=> (not res!2996557) (not e!4456761))))

(declare-fun lt!2625324 () Bool)

(assert (=> b!7469643 (= res!2996557 (not lt!2625324))))

(declare-fun b!7469644 () Bool)

(declare-fun e!4456762 () Bool)

(assert (=> b!7469644 (= e!4456762 (not lt!2625324))))

(declare-fun b!7469645 () Bool)

(declare-fun e!4456756 () Bool)

(assert (=> b!7469645 (= e!4456761 e!4456756)))

(declare-fun res!2996558 () Bool)

(assert (=> b!7469645 (=> res!2996558 e!4456756)))

(declare-fun call!685942 () Bool)

(assert (=> b!7469645 (= res!2996558 call!685942)))

(declare-fun b!7469646 () Bool)

(declare-fun res!2996554 () Bool)

(declare-fun e!4456760 () Bool)

(assert (=> b!7469646 (=> (not res!2996554) (not e!4456760))))

(assert (=> b!7469646 (= res!2996554 (not call!685942))))

(declare-fun d!2298896 () Bool)

(declare-fun e!4456758 () Bool)

(assert (=> d!2298896 e!4456758))

(declare-fun c!1380289 () Bool)

(assert (=> d!2298896 (= c!1380289 ((_ is EmptyExpr!19573) lt!2625248))))

(declare-fun e!4456759 () Bool)

(assert (=> d!2298896 (= lt!2625324 e!4456759)))

(declare-fun c!1380291 () Bool)

(assert (=> d!2298896 (= c!1380291 (isEmpty!41166 s!13591))))

(assert (=> d!2298896 (validRegex!10087 lt!2625248)))

(assert (=> d!2298896 (= (matchR!9337 lt!2625248 s!13591) lt!2625324)))

(declare-fun bm!685937 () Bool)

(assert (=> bm!685937 (= call!685942 (isEmpty!41166 s!13591))))

(declare-fun b!7469647 () Bool)

(declare-fun res!2996556 () Bool)

(assert (=> b!7469647 (=> res!2996556 e!4456756)))

(assert (=> b!7469647 (= res!2996556 (not (isEmpty!41166 (tail!14893 s!13591))))))

(declare-fun b!7469648 () Bool)

(declare-fun res!2996559 () Bool)

(assert (=> b!7469648 (=> res!2996559 e!4456757)))

(assert (=> b!7469648 (= res!2996559 (not ((_ is ElementMatch!19573) lt!2625248)))))

(assert (=> b!7469648 (= e!4456762 e!4456757)))

(declare-fun b!7469649 () Bool)

(assert (=> b!7469649 (= e!4456759 (matchR!9337 (derivativeStep!5584 lt!2625248 (head!15324 s!13591)) (tail!14893 s!13591)))))

(declare-fun b!7469650 () Bool)

(assert (=> b!7469650 (= e!4456758 (= lt!2625324 call!685942))))

(declare-fun b!7469651 () Bool)

(declare-fun res!2996553 () Bool)

(assert (=> b!7469651 (=> (not res!2996553) (not e!4456760))))

(assert (=> b!7469651 (= res!2996553 (isEmpty!41166 (tail!14893 s!13591)))))

(declare-fun b!7469652 () Bool)

(assert (=> b!7469652 (= e!4456756 (not (= (head!15324 s!13591) (c!1380178 lt!2625248))))))

(declare-fun b!7469653 () Bool)

(assert (=> b!7469653 (= e!4456760 (= (head!15324 s!13591) (c!1380178 lt!2625248)))))

(declare-fun b!7469654 () Bool)

(assert (=> b!7469654 (= e!4456758 e!4456762)))

(declare-fun c!1380290 () Bool)

(assert (=> b!7469654 (= c!1380290 ((_ is EmptyLang!19573) lt!2625248))))

(declare-fun b!7469655 () Bool)

(assert (=> b!7469655 (= e!4456759 (nullable!8525 lt!2625248))))

(declare-fun b!7469656 () Bool)

(declare-fun res!2996555 () Bool)

(assert (=> b!7469656 (=> res!2996555 e!4456757)))

(assert (=> b!7469656 (= res!2996555 e!4456760)))

(declare-fun res!2996560 () Bool)

(assert (=> b!7469656 (=> (not res!2996560) (not e!4456760))))

(assert (=> b!7469656 (= res!2996560 lt!2625324)))

(assert (= (and d!2298896 c!1380291) b!7469655))

(assert (= (and d!2298896 (not c!1380291)) b!7469649))

(assert (= (and d!2298896 c!1380289) b!7469650))

(assert (= (and d!2298896 (not c!1380289)) b!7469654))

(assert (= (and b!7469654 c!1380290) b!7469644))

(assert (= (and b!7469654 (not c!1380290)) b!7469648))

(assert (= (and b!7469648 (not res!2996559)) b!7469656))

(assert (= (and b!7469656 res!2996560) b!7469646))

(assert (= (and b!7469646 res!2996554) b!7469651))

(assert (= (and b!7469651 res!2996553) b!7469653))

(assert (= (and b!7469656 (not res!2996555)) b!7469643))

(assert (= (and b!7469643 res!2996557) b!7469645))

(assert (= (and b!7469645 (not res!2996558)) b!7469647))

(assert (= (and b!7469647 (not res!2996556)) b!7469652))

(assert (= (or b!7469650 b!7469645 b!7469646) bm!685937))

(declare-fun m!8067182 () Bool)

(assert (=> b!7469655 m!8067182))

(assert (=> b!7469652 m!8067100))

(assert (=> b!7469649 m!8067100))

(assert (=> b!7469649 m!8067100))

(declare-fun m!8067184 () Bool)

(assert (=> b!7469649 m!8067184))

(assert (=> b!7469649 m!8067104))

(assert (=> b!7469649 m!8067184))

(assert (=> b!7469649 m!8067104))

(declare-fun m!8067186 () Bool)

(assert (=> b!7469649 m!8067186))

(assert (=> b!7469653 m!8067100))

(assert (=> b!7469647 m!8067104))

(assert (=> b!7469647 m!8067104))

(assert (=> b!7469647 m!8067108))

(assert (=> d!2298896 m!8067110))

(assert (=> d!2298896 m!8067166))

(assert (=> bm!685937 m!8067110))

(assert (=> b!7469651 m!8067104))

(assert (=> b!7469651 m!8067104))

(assert (=> b!7469651 m!8067108))

(assert (=> b!7469079 d!2298896))

(declare-fun d!2298898 () Bool)

(assert (=> d!2298898 (= (matchR!9337 lt!2625258 s!13591) (matchRSpec!4252 lt!2625258 s!13591))))

(declare-fun lt!2625325 () Unit!165981)

(assert (=> d!2298898 (= lt!2625325 (choose!57737 lt!2625258 s!13591))))

(assert (=> d!2298898 (validRegex!10087 lt!2625258)))

(assert (=> d!2298898 (= (mainMatchTheorem!4246 lt!2625258 s!13591) lt!2625325)))

(declare-fun bs!1930898 () Bool)

(assert (= bs!1930898 d!2298898))

(assert (=> bs!1930898 m!8066866))

(assert (=> bs!1930898 m!8066870))

(declare-fun m!8067188 () Bool)

(assert (=> bs!1930898 m!8067188))

(assert (=> bs!1930898 m!8067180))

(assert (=> b!7469079 d!2298898))

(declare-fun bs!1930899 () Bool)

(declare-fun b!7469658 () Bool)

(assert (= bs!1930899 (and b!7469658 b!7469570)))

(declare-fun lambda!462531 () Int)

(assert (=> bs!1930899 (= (and (= (reg!19902 lt!2625248) (reg!19902 lt!2625254)) (= lt!2625248 lt!2625254)) (= lambda!462531 lambda!462525))))

(declare-fun bs!1930900 () Bool)

(assert (= bs!1930900 (and b!7469658 b!7469619)))

(assert (=> bs!1930900 (= (and (= (reg!19902 lt!2625248) (reg!19902 lt!2625258)) (= lt!2625248 lt!2625258)) (= lambda!462531 lambda!462529))))

(declare-fun bs!1930901 () Bool)

(assert (= bs!1930901 (and b!7469658 d!2298850)))

(assert (=> bs!1930901 (not (= lambda!462531 lambda!462514))))

(declare-fun bs!1930902 () Bool)

(assert (= bs!1930902 (and b!7469658 b!7469082)))

(assert (=> bs!1930902 (not (= lambda!462531 lambda!462484))))

(declare-fun bs!1930903 () Bool)

(assert (= bs!1930903 (and b!7469658 b!7469088)))

(assert (=> bs!1930903 (not (= lambda!462531 lambda!462487))))

(declare-fun bs!1930904 () Bool)

(assert (= bs!1930904 (and b!7469658 b!7469590)))

(assert (=> bs!1930904 (not (= lambda!462531 lambda!462528))))

(declare-fun bs!1930905 () Bool)

(assert (= bs!1930905 (and b!7469658 b!7469579)))

(assert (=> bs!1930905 (not (= lambda!462531 lambda!462526))))

(assert (=> bs!1930903 (not (= lambda!462531 lambda!462486))))

(declare-fun bs!1930906 () Bool)

(assert (= bs!1930906 (and b!7469658 d!2298818)))

(assert (=> bs!1930906 (not (= lambda!462531 lambda!462493))))

(declare-fun bs!1930907 () Bool)

(assert (= bs!1930907 (and b!7469658 b!7469581)))

(assert (=> bs!1930907 (= (and (= (reg!19902 lt!2625248) (reg!19902 lt!2625259)) (= lt!2625248 lt!2625259)) (= lambda!462531 lambda!462527))))

(assert (=> bs!1930901 (not (= lambda!462531 lambda!462513))))

(declare-fun bs!1930908 () Bool)

(assert (= bs!1930908 (and b!7469658 b!7469628)))

(assert (=> bs!1930908 (not (= lambda!462531 lambda!462530))))

(assert (=> bs!1930902 (not (= lambda!462531 lambda!462485))))

(assert (=> b!7469658 true))

(assert (=> b!7469658 true))

(declare-fun bs!1930909 () Bool)

(declare-fun b!7469667 () Bool)

(assert (= bs!1930909 (and b!7469667 b!7469570)))

(declare-fun lambda!462532 () Int)

(assert (=> bs!1930909 (not (= lambda!462532 lambda!462525))))

(declare-fun bs!1930910 () Bool)

(assert (= bs!1930910 (and b!7469667 b!7469619)))

(assert (=> bs!1930910 (not (= lambda!462532 lambda!462529))))

(declare-fun bs!1930911 () Bool)

(assert (= bs!1930911 (and b!7469667 d!2298850)))

(assert (=> bs!1930911 (= (and (= (regOne!39658 lt!2625248) lt!2625261) (= (regTwo!39658 lt!2625248) rTail!78)) (= lambda!462532 lambda!462514))))

(declare-fun bs!1930912 () Bool)

(assert (= bs!1930912 (and b!7469667 b!7469082)))

(assert (=> bs!1930912 (not (= lambda!462532 lambda!462484))))

(declare-fun bs!1930913 () Bool)

(assert (= bs!1930913 (and b!7469667 b!7469088)))

(assert (=> bs!1930913 (= (and (= (regOne!39658 lt!2625248) r2!5783) (= (regTwo!39658 lt!2625248) rTail!78)) (= lambda!462532 lambda!462487))))

(declare-fun bs!1930914 () Bool)

(assert (= bs!1930914 (and b!7469667 b!7469590)))

(assert (=> bs!1930914 (= (and (= (regOne!39658 lt!2625248) (regOne!39658 lt!2625259)) (= (regTwo!39658 lt!2625248) (regTwo!39658 lt!2625259))) (= lambda!462532 lambda!462528))))

(declare-fun bs!1930915 () Bool)

(assert (= bs!1930915 (and b!7469667 b!7469579)))

(assert (=> bs!1930915 (= (and (= (regOne!39658 lt!2625248) (regOne!39658 lt!2625254)) (= (regTwo!39658 lt!2625248) (regTwo!39658 lt!2625254))) (= lambda!462532 lambda!462526))))

(assert (=> bs!1930913 (not (= lambda!462532 lambda!462486))))

(declare-fun bs!1930916 () Bool)

(assert (= bs!1930916 (and b!7469667 d!2298818)))

(assert (=> bs!1930916 (not (= lambda!462532 lambda!462493))))

(declare-fun bs!1930917 () Bool)

(assert (= bs!1930917 (and b!7469667 b!7469658)))

(assert (=> bs!1930917 (not (= lambda!462532 lambda!462531))))

(declare-fun bs!1930918 () Bool)

(assert (= bs!1930918 (and b!7469667 b!7469581)))

(assert (=> bs!1930918 (not (= lambda!462532 lambda!462527))))

(assert (=> bs!1930911 (not (= lambda!462532 lambda!462513))))

(declare-fun bs!1930919 () Bool)

(assert (= bs!1930919 (and b!7469667 b!7469628)))

(assert (=> bs!1930919 (= (and (= (regOne!39658 lt!2625248) (regOne!39658 lt!2625258)) (= (regTwo!39658 lt!2625248) (regTwo!39658 lt!2625258))) (= lambda!462532 lambda!462530))))

(assert (=> bs!1930912 (= (and (= (regOne!39658 lt!2625248) lt!2625261) (= (regTwo!39658 lt!2625248) rTail!78)) (= lambda!462532 lambda!462485))))

(assert (=> b!7469667 true))

(assert (=> b!7469667 true))

(declare-fun b!7469657 () Bool)

(declare-fun e!4456764 () Bool)

(assert (=> b!7469657 (= e!4456764 (= s!13591 (Cons!72165 (c!1380178 lt!2625248) Nil!72165)))))

(declare-fun e!4456763 () Bool)

(declare-fun call!685944 () Bool)

(assert (=> b!7469658 (= e!4456763 call!685944)))

(declare-fun b!7469659 () Bool)

(declare-fun c!1380295 () Bool)

(assert (=> b!7469659 (= c!1380295 ((_ is ElementMatch!19573) lt!2625248))))

(declare-fun e!4456769 () Bool)

(assert (=> b!7469659 (= e!4456769 e!4456764)))

(declare-fun c!1380294 () Bool)

(declare-fun bm!685939 () Bool)

(assert (=> bm!685939 (= call!685944 (Exists!4192 (ite c!1380294 lambda!462531 lambda!462532)))))

(declare-fun b!7469660 () Bool)

(declare-fun e!4456767 () Bool)

(assert (=> b!7469660 (= e!4456767 e!4456769)))

(declare-fun res!2996562 () Bool)

(assert (=> b!7469660 (= res!2996562 (not ((_ is EmptyLang!19573) lt!2625248)))))

(assert (=> b!7469660 (=> (not res!2996562) (not e!4456769))))

(declare-fun b!7469661 () Bool)

(declare-fun res!2996563 () Bool)

(assert (=> b!7469661 (=> res!2996563 e!4456763)))

(declare-fun call!685943 () Bool)

(assert (=> b!7469661 (= res!2996563 call!685943)))

(declare-fun e!4456766 () Bool)

(assert (=> b!7469661 (= e!4456766 e!4456763)))

(declare-fun b!7469662 () Bool)

(declare-fun e!4456765 () Bool)

(assert (=> b!7469662 (= e!4456765 e!4456766)))

(assert (=> b!7469662 (= c!1380294 ((_ is Star!19573) lt!2625248))))

(declare-fun b!7469663 () Bool)

(declare-fun e!4456768 () Bool)

(assert (=> b!7469663 (= e!4456768 (matchRSpec!4252 (regTwo!39659 lt!2625248) s!13591))))

(declare-fun b!7469664 () Bool)

(declare-fun c!1380293 () Bool)

(assert (=> b!7469664 (= c!1380293 ((_ is Union!19573) lt!2625248))))

(assert (=> b!7469664 (= e!4456764 e!4456765)))

(declare-fun b!7469665 () Bool)

(assert (=> b!7469665 (= e!4456765 e!4456768)))

(declare-fun res!2996561 () Bool)

(assert (=> b!7469665 (= res!2996561 (matchRSpec!4252 (regOne!39659 lt!2625248) s!13591))))

(assert (=> b!7469665 (=> res!2996561 e!4456768)))

(declare-fun d!2298900 () Bool)

(declare-fun c!1380292 () Bool)

(assert (=> d!2298900 (= c!1380292 ((_ is EmptyExpr!19573) lt!2625248))))

(assert (=> d!2298900 (= (matchRSpec!4252 lt!2625248 s!13591) e!4456767)))

(declare-fun bm!685938 () Bool)

(assert (=> bm!685938 (= call!685943 (isEmpty!41166 s!13591))))

(declare-fun b!7469666 () Bool)

(assert (=> b!7469666 (= e!4456767 call!685943)))

(assert (=> b!7469667 (= e!4456766 call!685944)))

(assert (= (and d!2298900 c!1380292) b!7469666))

(assert (= (and d!2298900 (not c!1380292)) b!7469660))

(assert (= (and b!7469660 res!2996562) b!7469659))

(assert (= (and b!7469659 c!1380295) b!7469657))

(assert (= (and b!7469659 (not c!1380295)) b!7469664))

(assert (= (and b!7469664 c!1380293) b!7469665))

(assert (= (and b!7469664 (not c!1380293)) b!7469662))

(assert (= (and b!7469665 (not res!2996561)) b!7469663))

(assert (= (and b!7469662 c!1380294) b!7469661))

(assert (= (and b!7469662 (not c!1380294)) b!7469667))

(assert (= (and b!7469661 (not res!2996563)) b!7469658))

(assert (= (or b!7469658 b!7469667) bm!685939))

(assert (= (or b!7469666 b!7469661) bm!685938))

(declare-fun m!8067190 () Bool)

(assert (=> bm!685939 m!8067190))

(declare-fun m!8067192 () Bool)

(assert (=> b!7469663 m!8067192))

(declare-fun m!8067194 () Bool)

(assert (=> b!7469665 m!8067194))

(assert (=> bm!685938 m!8067110))

(assert (=> b!7469079 d!2298900))

(declare-fun b!7469668 () Bool)

(declare-fun res!2996568 () Bool)

(declare-fun e!4456771 () Bool)

(assert (=> b!7469668 (=> (not res!2996568) (not e!4456771))))

(declare-fun call!685945 () Bool)

(assert (=> b!7469668 (= res!2996568 call!685945)))

(declare-fun e!4456770 () Bool)

(assert (=> b!7469668 (= e!4456770 e!4456771)))

(declare-fun b!7469669 () Bool)

(declare-fun res!2996566 () Bool)

(declare-fun e!4456774 () Bool)

(assert (=> b!7469669 (=> res!2996566 e!4456774)))

(assert (=> b!7469669 (= res!2996566 (not ((_ is Concat!28418) rTail!78)))))

(assert (=> b!7469669 (= e!4456770 e!4456774)))

(declare-fun bm!685940 () Bool)

(declare-fun call!685946 () Bool)

(assert (=> bm!685940 (= call!685945 call!685946)))

(declare-fun c!1380296 () Bool)

(declare-fun c!1380297 () Bool)

(declare-fun bm!685941 () Bool)

(assert (=> bm!685941 (= call!685946 (validRegex!10087 (ite c!1380296 (reg!19902 rTail!78) (ite c!1380297 (regOne!39659 rTail!78) (regOne!39658 rTail!78)))))))

(declare-fun b!7469670 () Bool)

(declare-fun e!4456772 () Bool)

(assert (=> b!7469670 (= e!4456772 e!4456770)))

(assert (=> b!7469670 (= c!1380297 ((_ is Union!19573) rTail!78))))

(declare-fun b!7469671 () Bool)

(declare-fun e!4456773 () Bool)

(assert (=> b!7469671 (= e!4456773 call!685946)))

(declare-fun b!7469673 () Bool)

(declare-fun e!4456775 () Bool)

(assert (=> b!7469673 (= e!4456774 e!4456775)))

(declare-fun res!2996567 () Bool)

(assert (=> b!7469673 (=> (not res!2996567) (not e!4456775))))

(assert (=> b!7469673 (= res!2996567 call!685945)))

(declare-fun bm!685942 () Bool)

(declare-fun call!685947 () Bool)

(assert (=> bm!685942 (= call!685947 (validRegex!10087 (ite c!1380297 (regTwo!39659 rTail!78) (regTwo!39658 rTail!78))))))

(declare-fun b!7469674 () Bool)

(declare-fun e!4456776 () Bool)

(assert (=> b!7469674 (= e!4456776 e!4456772)))

(assert (=> b!7469674 (= c!1380296 ((_ is Star!19573) rTail!78))))

(declare-fun d!2298902 () Bool)

(declare-fun res!2996564 () Bool)

(assert (=> d!2298902 (=> res!2996564 e!4456776)))

(assert (=> d!2298902 (= res!2996564 ((_ is ElementMatch!19573) rTail!78))))

(assert (=> d!2298902 (= (validRegex!10087 rTail!78) e!4456776)))

(declare-fun b!7469672 () Bool)

(assert (=> b!7469672 (= e!4456772 e!4456773)))

(declare-fun res!2996565 () Bool)

(assert (=> b!7469672 (= res!2996565 (not (nullable!8525 (reg!19902 rTail!78))))))

(assert (=> b!7469672 (=> (not res!2996565) (not e!4456773))))

(declare-fun b!7469675 () Bool)

(assert (=> b!7469675 (= e!4456771 call!685947)))

(declare-fun b!7469676 () Bool)

(assert (=> b!7469676 (= e!4456775 call!685947)))

(assert (= (and d!2298902 (not res!2996564)) b!7469674))

(assert (= (and b!7469674 c!1380296) b!7469672))

(assert (= (and b!7469674 (not c!1380296)) b!7469670))

(assert (= (and b!7469672 res!2996565) b!7469671))

(assert (= (and b!7469670 c!1380297) b!7469668))

(assert (= (and b!7469670 (not c!1380297)) b!7469669))

(assert (= (and b!7469668 res!2996568) b!7469675))

(assert (= (and b!7469669 (not res!2996566)) b!7469673))

(assert (= (and b!7469673 res!2996567) b!7469676))

(assert (= (or b!7469675 b!7469676) bm!685942))

(assert (= (or b!7469668 b!7469673) bm!685940))

(assert (= (or b!7469671 bm!685940) bm!685941))

(declare-fun m!8067196 () Bool)

(assert (=> bm!685941 m!8067196))

(declare-fun m!8067198 () Bool)

(assert (=> bm!685942 m!8067198))

(declare-fun m!8067200 () Bool)

(assert (=> b!7469672 m!8067200))

(assert (=> b!7469084 d!2298902))

(declare-fun b!7469677 () Bool)

(declare-fun res!2996573 () Bool)

(declare-fun e!4456778 () Bool)

(assert (=> b!7469677 (=> (not res!2996573) (not e!4456778))))

(declare-fun call!685948 () Bool)

(assert (=> b!7469677 (= res!2996573 call!685948)))

(declare-fun e!4456777 () Bool)

(assert (=> b!7469677 (= e!4456777 e!4456778)))

(declare-fun b!7469678 () Bool)

(declare-fun res!2996571 () Bool)

(declare-fun e!4456781 () Bool)

(assert (=> b!7469678 (=> res!2996571 e!4456781)))

(assert (=> b!7469678 (= res!2996571 (not ((_ is Concat!28418) r1!5845)))))

(assert (=> b!7469678 (= e!4456777 e!4456781)))

(declare-fun bm!685943 () Bool)

(declare-fun call!685949 () Bool)

(assert (=> bm!685943 (= call!685948 call!685949)))

(declare-fun c!1380299 () Bool)

(declare-fun c!1380298 () Bool)

(declare-fun bm!685944 () Bool)

(assert (=> bm!685944 (= call!685949 (validRegex!10087 (ite c!1380298 (reg!19902 r1!5845) (ite c!1380299 (regOne!39659 r1!5845) (regOne!39658 r1!5845)))))))

(declare-fun b!7469679 () Bool)

(declare-fun e!4456779 () Bool)

(assert (=> b!7469679 (= e!4456779 e!4456777)))

(assert (=> b!7469679 (= c!1380299 ((_ is Union!19573) r1!5845))))

(declare-fun b!7469680 () Bool)

(declare-fun e!4456780 () Bool)

(assert (=> b!7469680 (= e!4456780 call!685949)))

(declare-fun b!7469682 () Bool)

(declare-fun e!4456782 () Bool)

(assert (=> b!7469682 (= e!4456781 e!4456782)))

(declare-fun res!2996572 () Bool)

(assert (=> b!7469682 (=> (not res!2996572) (not e!4456782))))

(assert (=> b!7469682 (= res!2996572 call!685948)))

(declare-fun bm!685945 () Bool)

(declare-fun call!685950 () Bool)

(assert (=> bm!685945 (= call!685950 (validRegex!10087 (ite c!1380299 (regTwo!39659 r1!5845) (regTwo!39658 r1!5845))))))

(declare-fun b!7469683 () Bool)

(declare-fun e!4456783 () Bool)

(assert (=> b!7469683 (= e!4456783 e!4456779)))

(assert (=> b!7469683 (= c!1380298 ((_ is Star!19573) r1!5845))))

(declare-fun d!2298904 () Bool)

(declare-fun res!2996569 () Bool)

(assert (=> d!2298904 (=> res!2996569 e!4456783)))

(assert (=> d!2298904 (= res!2996569 ((_ is ElementMatch!19573) r1!5845))))

(assert (=> d!2298904 (= (validRegex!10087 r1!5845) e!4456783)))

(declare-fun b!7469681 () Bool)

(assert (=> b!7469681 (= e!4456779 e!4456780)))

(declare-fun res!2996570 () Bool)

(assert (=> b!7469681 (= res!2996570 (not (nullable!8525 (reg!19902 r1!5845))))))

(assert (=> b!7469681 (=> (not res!2996570) (not e!4456780))))

(declare-fun b!7469684 () Bool)

(assert (=> b!7469684 (= e!4456778 call!685950)))

(declare-fun b!7469685 () Bool)

(assert (=> b!7469685 (= e!4456782 call!685950)))

(assert (= (and d!2298904 (not res!2996569)) b!7469683))

(assert (= (and b!7469683 c!1380298) b!7469681))

(assert (= (and b!7469683 (not c!1380298)) b!7469679))

(assert (= (and b!7469681 res!2996570) b!7469680))

(assert (= (and b!7469679 c!1380299) b!7469677))

(assert (= (and b!7469679 (not c!1380299)) b!7469678))

(assert (= (and b!7469677 res!2996573) b!7469684))

(assert (= (and b!7469678 (not res!2996571)) b!7469682))

(assert (= (and b!7469682 res!2996572) b!7469685))

(assert (= (or b!7469684 b!7469685) bm!685945))

(assert (= (or b!7469677 b!7469682) bm!685943))

(assert (= (or b!7469680 bm!685943) bm!685944))

(declare-fun m!8067202 () Bool)

(assert (=> bm!685944 m!8067202))

(declare-fun m!8067204 () Bool)

(assert (=> bm!685945 m!8067204))

(declare-fun m!8067206 () Bool)

(assert (=> b!7469681 m!8067206))

(assert (=> start!724198 d!2298904))

(declare-fun bs!1930920 () Bool)

(declare-fun d!2298906 () Bool)

(assert (= bs!1930920 (and d!2298906 b!7469570)))

(declare-fun lambda!462533 () Int)

(assert (=> bs!1930920 (not (= lambda!462533 lambda!462525))))

(declare-fun bs!1930921 () Bool)

(assert (= bs!1930921 (and d!2298906 b!7469619)))

(assert (=> bs!1930921 (not (= lambda!462533 lambda!462529))))

(declare-fun bs!1930922 () Bool)

(assert (= bs!1930922 (and d!2298906 d!2298850)))

(assert (=> bs!1930922 (not (= lambda!462533 lambda!462514))))

(declare-fun bs!1930923 () Bool)

(assert (= bs!1930923 (and d!2298906 b!7469082)))

(assert (=> bs!1930923 (= (= r2!5783 lt!2625261) (= lambda!462533 lambda!462484))))

(declare-fun bs!1930924 () Bool)

(assert (= bs!1930924 (and d!2298906 b!7469088)))

(assert (=> bs!1930924 (not (= lambda!462533 lambda!462487))))

(declare-fun bs!1930925 () Bool)

(assert (= bs!1930925 (and d!2298906 b!7469667)))

(assert (=> bs!1930925 (not (= lambda!462533 lambda!462532))))

(declare-fun bs!1930926 () Bool)

(assert (= bs!1930926 (and d!2298906 b!7469590)))

(assert (=> bs!1930926 (not (= lambda!462533 lambda!462528))))

(declare-fun bs!1930927 () Bool)

(assert (= bs!1930927 (and d!2298906 b!7469579)))

(assert (=> bs!1930927 (not (= lambda!462533 lambda!462526))))

(assert (=> bs!1930924 (= lambda!462533 lambda!462486)))

(declare-fun bs!1930928 () Bool)

(assert (= bs!1930928 (and d!2298906 d!2298818)))

(assert (=> bs!1930928 (= (= r2!5783 lt!2625261) (= lambda!462533 lambda!462493))))

(declare-fun bs!1930929 () Bool)

(assert (= bs!1930929 (and d!2298906 b!7469658)))

(assert (=> bs!1930929 (not (= lambda!462533 lambda!462531))))

(declare-fun bs!1930930 () Bool)

(assert (= bs!1930930 (and d!2298906 b!7469581)))

(assert (=> bs!1930930 (not (= lambda!462533 lambda!462527))))

(assert (=> bs!1930922 (= (= r2!5783 lt!2625261) (= lambda!462533 lambda!462513))))

(declare-fun bs!1930931 () Bool)

(assert (= bs!1930931 (and d!2298906 b!7469628)))

(assert (=> bs!1930931 (not (= lambda!462533 lambda!462530))))

(assert (=> bs!1930923 (not (= lambda!462533 lambda!462485))))

(assert (=> d!2298906 true))

(assert (=> d!2298906 true))

(assert (=> d!2298906 true))

(declare-fun lambda!462534 () Int)

(assert (=> bs!1930920 (not (= lambda!462534 lambda!462525))))

(assert (=> bs!1930921 (not (= lambda!462534 lambda!462529))))

(assert (=> bs!1930922 (= (= r2!5783 lt!2625261) (= lambda!462534 lambda!462514))))

(assert (=> bs!1930923 (not (= lambda!462534 lambda!462484))))

(assert (=> bs!1930924 (= lambda!462534 lambda!462487)))

(assert (=> bs!1930925 (= (and (= r2!5783 (regOne!39658 lt!2625248)) (= rTail!78 (regTwo!39658 lt!2625248))) (= lambda!462534 lambda!462532))))

(assert (=> bs!1930926 (= (and (= r2!5783 (regOne!39658 lt!2625259)) (= rTail!78 (regTwo!39658 lt!2625259))) (= lambda!462534 lambda!462528))))

(assert (=> bs!1930927 (= (and (= r2!5783 (regOne!39658 lt!2625254)) (= rTail!78 (regTwo!39658 lt!2625254))) (= lambda!462534 lambda!462526))))

(assert (=> bs!1930924 (not (= lambda!462534 lambda!462486))))

(assert (=> bs!1930928 (not (= lambda!462534 lambda!462493))))

(assert (=> bs!1930929 (not (= lambda!462534 lambda!462531))))

(assert (=> bs!1930930 (not (= lambda!462534 lambda!462527))))

(assert (=> bs!1930922 (not (= lambda!462534 lambda!462513))))

(declare-fun bs!1930932 () Bool)

(assert (= bs!1930932 d!2298906))

(assert (=> bs!1930932 (not (= lambda!462534 lambda!462533))))

(assert (=> bs!1930931 (= (and (= r2!5783 (regOne!39658 lt!2625258)) (= rTail!78 (regTwo!39658 lt!2625258))) (= lambda!462534 lambda!462530))))

(assert (=> bs!1930923 (= (= r2!5783 lt!2625261) (= lambda!462534 lambda!462485))))

(assert (=> d!2298906 true))

(assert (=> d!2298906 true))

(assert (=> d!2298906 true))

(assert (=> d!2298906 (= (Exists!4192 lambda!462533) (Exists!4192 lambda!462534))))

(declare-fun lt!2625326 () Unit!165981)

(assert (=> d!2298906 (= lt!2625326 (choose!57736 r2!5783 rTail!78 s!13591))))

(assert (=> d!2298906 (validRegex!10087 r2!5783)))

(assert (=> d!2298906 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2526 r2!5783 rTail!78 s!13591) lt!2625326)))

(declare-fun m!8067208 () Bool)

(assert (=> bs!1930932 m!8067208))

(declare-fun m!8067210 () Bool)

(assert (=> bs!1930932 m!8067210))

(declare-fun m!8067212 () Bool)

(assert (=> bs!1930932 m!8067212))

(assert (=> bs!1930932 m!8066874))

(assert (=> b!7469088 d!2298906))

(declare-fun bs!1930933 () Bool)

(declare-fun d!2298908 () Bool)

(assert (= bs!1930933 (and d!2298908 b!7469570)))

(declare-fun lambda!462535 () Int)

(assert (=> bs!1930933 (not (= lambda!462535 lambda!462525))))

(declare-fun bs!1930934 () Bool)

(assert (= bs!1930934 (and d!2298908 b!7469619)))

(assert (=> bs!1930934 (not (= lambda!462535 lambda!462529))))

(declare-fun bs!1930935 () Bool)

(assert (= bs!1930935 (and d!2298908 d!2298850)))

(assert (=> bs!1930935 (not (= lambda!462535 lambda!462514))))

(declare-fun bs!1930936 () Bool)

(assert (= bs!1930936 (and d!2298908 b!7469082)))

(assert (=> bs!1930936 (= (= r2!5783 lt!2625261) (= lambda!462535 lambda!462484))))

(declare-fun bs!1930937 () Bool)

(assert (= bs!1930937 (and d!2298908 b!7469088)))

(assert (=> bs!1930937 (not (= lambda!462535 lambda!462487))))

(declare-fun bs!1930938 () Bool)

(assert (= bs!1930938 (and d!2298908 b!7469667)))

(assert (=> bs!1930938 (not (= lambda!462535 lambda!462532))))

(declare-fun bs!1930939 () Bool)

(assert (= bs!1930939 (and d!2298908 b!7469590)))

(assert (=> bs!1930939 (not (= lambda!462535 lambda!462528))))

(declare-fun bs!1930940 () Bool)

(assert (= bs!1930940 (and d!2298908 b!7469579)))

(assert (=> bs!1930940 (not (= lambda!462535 lambda!462526))))

(declare-fun bs!1930941 () Bool)

(assert (= bs!1930941 (and d!2298908 d!2298906)))

(assert (=> bs!1930941 (not (= lambda!462535 lambda!462534))))

(assert (=> bs!1930937 (= lambda!462535 lambda!462486)))

(declare-fun bs!1930942 () Bool)

(assert (= bs!1930942 (and d!2298908 d!2298818)))

(assert (=> bs!1930942 (= (= r2!5783 lt!2625261) (= lambda!462535 lambda!462493))))

(declare-fun bs!1930943 () Bool)

(assert (= bs!1930943 (and d!2298908 b!7469658)))

(assert (=> bs!1930943 (not (= lambda!462535 lambda!462531))))

(declare-fun bs!1930944 () Bool)

(assert (= bs!1930944 (and d!2298908 b!7469581)))

(assert (=> bs!1930944 (not (= lambda!462535 lambda!462527))))

(assert (=> bs!1930935 (= (= r2!5783 lt!2625261) (= lambda!462535 lambda!462513))))

(assert (=> bs!1930941 (= lambda!462535 lambda!462533)))

(declare-fun bs!1930945 () Bool)

(assert (= bs!1930945 (and d!2298908 b!7469628)))

(assert (=> bs!1930945 (not (= lambda!462535 lambda!462530))))

(assert (=> bs!1930936 (not (= lambda!462535 lambda!462485))))

(assert (=> d!2298908 true))

(assert (=> d!2298908 true))

(assert (=> d!2298908 true))

(assert (=> d!2298908 (= (isDefined!13819 (findConcatSeparation!3252 r2!5783 rTail!78 Nil!72165 s!13591 s!13591)) (Exists!4192 lambda!462535))))

(declare-fun lt!2625327 () Unit!165981)

(assert (=> d!2298908 (= lt!2625327 (choose!57734 r2!5783 rTail!78 s!13591))))

(assert (=> d!2298908 (validRegex!10087 r2!5783)))

(assert (=> d!2298908 (= (lemmaFindConcatSeparationEquivalentToExists!3010 r2!5783 rTail!78 s!13591) lt!2625327)))

(declare-fun bs!1930946 () Bool)

(assert (= bs!1930946 d!2298908))

(assert (=> bs!1930946 m!8066898))

(assert (=> bs!1930946 m!8066874))

(assert (=> bs!1930946 m!8066898))

(assert (=> bs!1930946 m!8066900))

(declare-fun m!8067214 () Bool)

(assert (=> bs!1930946 m!8067214))

(declare-fun m!8067216 () Bool)

(assert (=> bs!1930946 m!8067216))

(assert (=> b!7469088 d!2298908))

(declare-fun d!2298910 () Bool)

(assert (=> d!2298910 (= (Exists!4192 lambda!462486) (choose!57735 lambda!462486))))

(declare-fun bs!1930947 () Bool)

(assert (= bs!1930947 d!2298910))

(declare-fun m!8067218 () Bool)

(assert (=> bs!1930947 m!8067218))

(assert (=> b!7469088 d!2298910))

(declare-fun b!7469686 () Bool)

(declare-fun e!4456786 () Bool)

(assert (=> b!7469686 (= e!4456786 (matchR!9337 rTail!78 s!13591))))

(declare-fun d!2298912 () Bool)

(declare-fun e!4456787 () Bool)

(assert (=> d!2298912 e!4456787))

(declare-fun res!2996574 () Bool)

(assert (=> d!2298912 (=> res!2996574 e!4456787)))

(declare-fun e!4456788 () Bool)

(assert (=> d!2298912 (= res!2996574 e!4456788)))

(declare-fun res!2996577 () Bool)

(assert (=> d!2298912 (=> (not res!2996577) (not e!4456788))))

(declare-fun lt!2625329 () Option!17130)

(assert (=> d!2298912 (= res!2996577 (isDefined!13819 lt!2625329))))

(declare-fun e!4456785 () Option!17130)

(assert (=> d!2298912 (= lt!2625329 e!4456785)))

(declare-fun c!1380300 () Bool)

(assert (=> d!2298912 (= c!1380300 e!4456786)))

(declare-fun res!2996575 () Bool)

(assert (=> d!2298912 (=> (not res!2996575) (not e!4456786))))

(assert (=> d!2298912 (= res!2996575 (matchR!9337 r2!5783 Nil!72165))))

(assert (=> d!2298912 (validRegex!10087 r2!5783)))

(assert (=> d!2298912 (= (findConcatSeparation!3252 r2!5783 rTail!78 Nil!72165 s!13591 s!13591) lt!2625329)))

(declare-fun b!7469687 () Bool)

(declare-fun lt!2625328 () Unit!165981)

(declare-fun lt!2625330 () Unit!165981)

(assert (=> b!7469687 (= lt!2625328 lt!2625330)))

(assert (=> b!7469687 (= (++!17199 (++!17199 Nil!72165 (Cons!72165 (h!78613 s!13591) Nil!72165)) (t!386858 s!13591)) s!13591)))

(assert (=> b!7469687 (= lt!2625330 (lemmaMoveElementToOtherListKeepsConcatEq!3077 Nil!72165 (h!78613 s!13591) (t!386858 s!13591) s!13591))))

(declare-fun e!4456784 () Option!17130)

(assert (=> b!7469687 (= e!4456784 (findConcatSeparation!3252 r2!5783 rTail!78 (++!17199 Nil!72165 (Cons!72165 (h!78613 s!13591) Nil!72165)) (t!386858 s!13591) s!13591))))

(declare-fun b!7469688 () Bool)

(assert (=> b!7469688 (= e!4456785 e!4456784)))

(declare-fun c!1380301 () Bool)

(assert (=> b!7469688 (= c!1380301 ((_ is Nil!72165) s!13591))))

(declare-fun b!7469689 () Bool)

(declare-fun res!2996578 () Bool)

(assert (=> b!7469689 (=> (not res!2996578) (not e!4456788))))

(assert (=> b!7469689 (= res!2996578 (matchR!9337 rTail!78 (_2!37601 (get!25223 lt!2625329))))))

(declare-fun b!7469690 () Bool)

(assert (=> b!7469690 (= e!4456788 (= (++!17199 (_1!37601 (get!25223 lt!2625329)) (_2!37601 (get!25223 lt!2625329))) s!13591))))

(declare-fun b!7469691 () Bool)

(declare-fun res!2996576 () Bool)

(assert (=> b!7469691 (=> (not res!2996576) (not e!4456788))))

(assert (=> b!7469691 (= res!2996576 (matchR!9337 r2!5783 (_1!37601 (get!25223 lt!2625329))))))

(declare-fun b!7469692 () Bool)

(assert (=> b!7469692 (= e!4456785 (Some!17129 (tuple2!68597 Nil!72165 s!13591)))))

(declare-fun b!7469693 () Bool)

(assert (=> b!7469693 (= e!4456784 None!17129)))

(declare-fun b!7469694 () Bool)

(assert (=> b!7469694 (= e!4456787 (not (isDefined!13819 lt!2625329)))))

(assert (= (and d!2298912 res!2996575) b!7469686))

(assert (= (and d!2298912 c!1380300) b!7469692))

(assert (= (and d!2298912 (not c!1380300)) b!7469688))

(assert (= (and b!7469688 c!1380301) b!7469693))

(assert (= (and b!7469688 (not c!1380301)) b!7469687))

(assert (= (and d!2298912 res!2996577) b!7469691))

(assert (= (and b!7469691 res!2996576) b!7469689))

(assert (= (and b!7469689 res!2996578) b!7469690))

(assert (= (and d!2298912 (not res!2996574)) b!7469694))

(assert (=> b!7469686 m!8067014))

(assert (=> b!7469687 m!8067016))

(assert (=> b!7469687 m!8067016))

(assert (=> b!7469687 m!8067018))

(assert (=> b!7469687 m!8067020))

(assert (=> b!7469687 m!8067016))

(declare-fun m!8067220 () Bool)

(assert (=> b!7469687 m!8067220))

(declare-fun m!8067222 () Bool)

(assert (=> b!7469694 m!8067222))

(assert (=> d!2298912 m!8067222))

(declare-fun m!8067224 () Bool)

(assert (=> d!2298912 m!8067224))

(assert (=> d!2298912 m!8066874))

(declare-fun m!8067226 () Bool)

(assert (=> b!7469689 m!8067226))

(declare-fun m!8067228 () Bool)

(assert (=> b!7469689 m!8067228))

(assert (=> b!7469691 m!8067226))

(declare-fun m!8067230 () Bool)

(assert (=> b!7469691 m!8067230))

(assert (=> b!7469690 m!8067226))

(declare-fun m!8067232 () Bool)

(assert (=> b!7469690 m!8067232))

(assert (=> b!7469088 d!2298912))

(declare-fun b!7469704 () Bool)

(declare-fun e!4456794 () List!72289)

(assert (=> b!7469704 (= e!4456794 (Cons!72165 (h!78613 Nil!72165) (++!17199 (t!386858 Nil!72165) s!13591)))))

(declare-fun b!7469703 () Bool)

(assert (=> b!7469703 (= e!4456794 s!13591)))

(declare-fun d!2298914 () Bool)

(declare-fun e!4456793 () Bool)

(assert (=> d!2298914 e!4456793))

(declare-fun res!2996584 () Bool)

(assert (=> d!2298914 (=> (not res!2996584) (not e!4456793))))

(declare-fun lt!2625333 () List!72289)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15262 (List!72289) (InoxSet C!39420))

(assert (=> d!2298914 (= res!2996584 (= (content!15262 lt!2625333) ((_ map or) (content!15262 Nil!72165) (content!15262 s!13591))))))

(assert (=> d!2298914 (= lt!2625333 e!4456794)))

(declare-fun c!1380304 () Bool)

(assert (=> d!2298914 (= c!1380304 ((_ is Nil!72165) Nil!72165))))

(assert (=> d!2298914 (= (++!17199 Nil!72165 s!13591) lt!2625333)))

(declare-fun b!7469706 () Bool)

(assert (=> b!7469706 (= e!4456793 (or (not (= s!13591 Nil!72165)) (= lt!2625333 Nil!72165)))))

(declare-fun b!7469705 () Bool)

(declare-fun res!2996583 () Bool)

(assert (=> b!7469705 (=> (not res!2996583) (not e!4456793))))

(declare-fun size!42198 (List!72289) Int)

(assert (=> b!7469705 (= res!2996583 (= (size!42198 lt!2625333) (+ (size!42198 Nil!72165) (size!42198 s!13591))))))

(assert (= (and d!2298914 c!1380304) b!7469703))

(assert (= (and d!2298914 (not c!1380304)) b!7469704))

(assert (= (and d!2298914 res!2996584) b!7469705))

(assert (= (and b!7469705 res!2996583) b!7469706))

(declare-fun m!8067234 () Bool)

(assert (=> b!7469704 m!8067234))

(declare-fun m!8067236 () Bool)

(assert (=> d!2298914 m!8067236))

(declare-fun m!8067238 () Bool)

(assert (=> d!2298914 m!8067238))

(declare-fun m!8067240 () Bool)

(assert (=> d!2298914 m!8067240))

(declare-fun m!8067242 () Bool)

(assert (=> b!7469705 m!8067242))

(declare-fun m!8067244 () Bool)

(assert (=> b!7469705 m!8067244))

(declare-fun m!8067246 () Bool)

(assert (=> b!7469705 m!8067246))

(assert (=> b!7469088 d!2298914))

(declare-fun d!2298916 () Bool)

(assert (=> d!2298916 (= (Exists!4192 lambda!462487) (choose!57735 lambda!462487))))

(declare-fun bs!1930948 () Bool)

(assert (= bs!1930948 d!2298916))

(declare-fun m!8067248 () Bool)

(assert (=> bs!1930948 m!8067248))

(assert (=> b!7469088 d!2298916))

(declare-fun d!2298918 () Bool)

(assert (=> d!2298918 (= (isDefined!13819 (findConcatSeparation!3252 r2!5783 rTail!78 Nil!72165 s!13591 s!13591)) (not (isEmpty!41164 (findConcatSeparation!3252 r2!5783 rTail!78 Nil!72165 s!13591 s!13591))))))

(declare-fun bs!1930949 () Bool)

(assert (= bs!1930949 d!2298918))

(assert (=> bs!1930949 m!8066898))

(declare-fun m!8067250 () Bool)

(assert (=> bs!1930949 m!8067250))

(assert (=> b!7469088 d!2298918))

(declare-fun b!7469711 () Bool)

(declare-fun e!4456797 () Bool)

(declare-fun tp!2165734 () Bool)

(assert (=> b!7469711 (= e!4456797 (and tp_is_empty!49435 tp!2165734))))

(assert (=> b!7469092 (= tp!2165634 e!4456797)))

(assert (= (and b!7469092 ((_ is Cons!72165) (t!386858 s!13591))) b!7469711))

(declare-fun b!7469724 () Bool)

(declare-fun e!4456800 () Bool)

(declare-fun tp!2165747 () Bool)

(assert (=> b!7469724 (= e!4456800 tp!2165747)))

(declare-fun b!7469725 () Bool)

(declare-fun tp!2165746 () Bool)

(declare-fun tp!2165749 () Bool)

(assert (=> b!7469725 (= e!4456800 (and tp!2165746 tp!2165749))))

(declare-fun b!7469723 () Bool)

(declare-fun tp!2165748 () Bool)

(declare-fun tp!2165745 () Bool)

(assert (=> b!7469723 (= e!4456800 (and tp!2165748 tp!2165745))))

(declare-fun b!7469722 () Bool)

(assert (=> b!7469722 (= e!4456800 tp_is_empty!49435)))

(assert (=> b!7469081 (= tp!2165631 e!4456800)))

(assert (= (and b!7469081 ((_ is ElementMatch!19573) (regOne!39659 rTail!78))) b!7469722))

(assert (= (and b!7469081 ((_ is Concat!28418) (regOne!39659 rTail!78))) b!7469723))

(assert (= (and b!7469081 ((_ is Star!19573) (regOne!39659 rTail!78))) b!7469724))

(assert (= (and b!7469081 ((_ is Union!19573) (regOne!39659 rTail!78))) b!7469725))

(declare-fun b!7469728 () Bool)

(declare-fun e!4456801 () Bool)

(declare-fun tp!2165752 () Bool)

(assert (=> b!7469728 (= e!4456801 tp!2165752)))

(declare-fun b!7469729 () Bool)

(declare-fun tp!2165751 () Bool)

(declare-fun tp!2165754 () Bool)

(assert (=> b!7469729 (= e!4456801 (and tp!2165751 tp!2165754))))

(declare-fun b!7469727 () Bool)

(declare-fun tp!2165753 () Bool)

(declare-fun tp!2165750 () Bool)

(assert (=> b!7469727 (= e!4456801 (and tp!2165753 tp!2165750))))

(declare-fun b!7469726 () Bool)

(assert (=> b!7469726 (= e!4456801 tp_is_empty!49435)))

(assert (=> b!7469081 (= tp!2165639 e!4456801)))

(assert (= (and b!7469081 ((_ is ElementMatch!19573) (regTwo!39659 rTail!78))) b!7469726))

(assert (= (and b!7469081 ((_ is Concat!28418) (regTwo!39659 rTail!78))) b!7469727))

(assert (= (and b!7469081 ((_ is Star!19573) (regTwo!39659 rTail!78))) b!7469728))

(assert (= (and b!7469081 ((_ is Union!19573) (regTwo!39659 rTail!78))) b!7469729))

(declare-fun b!7469732 () Bool)

(declare-fun e!4456802 () Bool)

(declare-fun tp!2165757 () Bool)

(assert (=> b!7469732 (= e!4456802 tp!2165757)))

(declare-fun b!7469733 () Bool)

(declare-fun tp!2165756 () Bool)

(declare-fun tp!2165759 () Bool)

(assert (=> b!7469733 (= e!4456802 (and tp!2165756 tp!2165759))))

(declare-fun b!7469731 () Bool)

(declare-fun tp!2165758 () Bool)

(declare-fun tp!2165755 () Bool)

(assert (=> b!7469731 (= e!4456802 (and tp!2165758 tp!2165755))))

(declare-fun b!7469730 () Bool)

(assert (=> b!7469730 (= e!4456802 tp_is_empty!49435)))

(assert (=> b!7469097 (= tp!2165640 e!4456802)))

(assert (= (and b!7469097 ((_ is ElementMatch!19573) (reg!19902 r1!5845))) b!7469730))

(assert (= (and b!7469097 ((_ is Concat!28418) (reg!19902 r1!5845))) b!7469731))

(assert (= (and b!7469097 ((_ is Star!19573) (reg!19902 r1!5845))) b!7469732))

(assert (= (and b!7469097 ((_ is Union!19573) (reg!19902 r1!5845))) b!7469733))

(declare-fun b!7469736 () Bool)

(declare-fun e!4456803 () Bool)

(declare-fun tp!2165762 () Bool)

(assert (=> b!7469736 (= e!4456803 tp!2165762)))

(declare-fun b!7469737 () Bool)

(declare-fun tp!2165761 () Bool)

(declare-fun tp!2165764 () Bool)

(assert (=> b!7469737 (= e!4456803 (and tp!2165761 tp!2165764))))

(declare-fun b!7469735 () Bool)

(declare-fun tp!2165763 () Bool)

(declare-fun tp!2165760 () Bool)

(assert (=> b!7469735 (= e!4456803 (and tp!2165763 tp!2165760))))

(declare-fun b!7469734 () Bool)

(assert (=> b!7469734 (= e!4456803 tp_is_empty!49435)))

(assert (=> b!7469091 (= tp!2165635 e!4456803)))

(assert (= (and b!7469091 ((_ is ElementMatch!19573) (regOne!39659 r2!5783))) b!7469734))

(assert (= (and b!7469091 ((_ is Concat!28418) (regOne!39659 r2!5783))) b!7469735))

(assert (= (and b!7469091 ((_ is Star!19573) (regOne!39659 r2!5783))) b!7469736))

(assert (= (and b!7469091 ((_ is Union!19573) (regOne!39659 r2!5783))) b!7469737))

(declare-fun b!7469740 () Bool)

(declare-fun e!4456804 () Bool)

(declare-fun tp!2165767 () Bool)

(assert (=> b!7469740 (= e!4456804 tp!2165767)))

(declare-fun b!7469741 () Bool)

(declare-fun tp!2165766 () Bool)

(declare-fun tp!2165769 () Bool)

(assert (=> b!7469741 (= e!4456804 (and tp!2165766 tp!2165769))))

(declare-fun b!7469739 () Bool)

(declare-fun tp!2165768 () Bool)

(declare-fun tp!2165765 () Bool)

(assert (=> b!7469739 (= e!4456804 (and tp!2165768 tp!2165765))))

(declare-fun b!7469738 () Bool)

(assert (=> b!7469738 (= e!4456804 tp_is_empty!49435)))

(assert (=> b!7469091 (= tp!2165628 e!4456804)))

(assert (= (and b!7469091 ((_ is ElementMatch!19573) (regTwo!39659 r2!5783))) b!7469738))

(assert (= (and b!7469091 ((_ is Concat!28418) (regTwo!39659 r2!5783))) b!7469739))

(assert (= (and b!7469091 ((_ is Star!19573) (regTwo!39659 r2!5783))) b!7469740))

(assert (= (and b!7469091 ((_ is Union!19573) (regTwo!39659 r2!5783))) b!7469741))

(declare-fun b!7469744 () Bool)

(declare-fun e!4456805 () Bool)

(declare-fun tp!2165772 () Bool)

(assert (=> b!7469744 (= e!4456805 tp!2165772)))

(declare-fun b!7469745 () Bool)

(declare-fun tp!2165771 () Bool)

(declare-fun tp!2165774 () Bool)

(assert (=> b!7469745 (= e!4456805 (and tp!2165771 tp!2165774))))

(declare-fun b!7469743 () Bool)

(declare-fun tp!2165773 () Bool)

(declare-fun tp!2165770 () Bool)

(assert (=> b!7469743 (= e!4456805 (and tp!2165773 tp!2165770))))

(declare-fun b!7469742 () Bool)

(assert (=> b!7469742 (= e!4456805 tp_is_empty!49435)))

(assert (=> b!7469085 (= tp!2165633 e!4456805)))

(assert (= (and b!7469085 ((_ is ElementMatch!19573) (reg!19902 rTail!78))) b!7469742))

(assert (= (and b!7469085 ((_ is Concat!28418) (reg!19902 rTail!78))) b!7469743))

(assert (= (and b!7469085 ((_ is Star!19573) (reg!19902 rTail!78))) b!7469744))

(assert (= (and b!7469085 ((_ is Union!19573) (reg!19902 rTail!78))) b!7469745))

(declare-fun b!7469748 () Bool)

(declare-fun e!4456806 () Bool)

(declare-fun tp!2165777 () Bool)

(assert (=> b!7469748 (= e!4456806 tp!2165777)))

(declare-fun b!7469749 () Bool)

(declare-fun tp!2165776 () Bool)

(declare-fun tp!2165779 () Bool)

(assert (=> b!7469749 (= e!4456806 (and tp!2165776 tp!2165779))))

(declare-fun b!7469747 () Bool)

(declare-fun tp!2165778 () Bool)

(declare-fun tp!2165775 () Bool)

(assert (=> b!7469747 (= e!4456806 (and tp!2165778 tp!2165775))))

(declare-fun b!7469746 () Bool)

(assert (=> b!7469746 (= e!4456806 tp_is_empty!49435)))

(assert (=> b!7469090 (= tp!2165641 e!4456806)))

(assert (= (and b!7469090 ((_ is ElementMatch!19573) (regOne!39658 r2!5783))) b!7469746))

(assert (= (and b!7469090 ((_ is Concat!28418) (regOne!39658 r2!5783))) b!7469747))

(assert (= (and b!7469090 ((_ is Star!19573) (regOne!39658 r2!5783))) b!7469748))

(assert (= (and b!7469090 ((_ is Union!19573) (regOne!39658 r2!5783))) b!7469749))

(declare-fun b!7469752 () Bool)

(declare-fun e!4456807 () Bool)

(declare-fun tp!2165782 () Bool)

(assert (=> b!7469752 (= e!4456807 tp!2165782)))

(declare-fun b!7469753 () Bool)

(declare-fun tp!2165781 () Bool)

(declare-fun tp!2165784 () Bool)

(assert (=> b!7469753 (= e!4456807 (and tp!2165781 tp!2165784))))

(declare-fun b!7469751 () Bool)

(declare-fun tp!2165783 () Bool)

(declare-fun tp!2165780 () Bool)

(assert (=> b!7469751 (= e!4456807 (and tp!2165783 tp!2165780))))

(declare-fun b!7469750 () Bool)

(assert (=> b!7469750 (= e!4456807 tp_is_empty!49435)))

(assert (=> b!7469090 (= tp!2165642 e!4456807)))

(assert (= (and b!7469090 ((_ is ElementMatch!19573) (regTwo!39658 r2!5783))) b!7469750))

(assert (= (and b!7469090 ((_ is Concat!28418) (regTwo!39658 r2!5783))) b!7469751))

(assert (= (and b!7469090 ((_ is Star!19573) (regTwo!39658 r2!5783))) b!7469752))

(assert (= (and b!7469090 ((_ is Union!19573) (regTwo!39658 r2!5783))) b!7469753))

(declare-fun b!7469756 () Bool)

(declare-fun e!4456808 () Bool)

(declare-fun tp!2165787 () Bool)

(assert (=> b!7469756 (= e!4456808 tp!2165787)))

(declare-fun b!7469757 () Bool)

(declare-fun tp!2165786 () Bool)

(declare-fun tp!2165789 () Bool)

(assert (=> b!7469757 (= e!4456808 (and tp!2165786 tp!2165789))))

(declare-fun b!7469755 () Bool)

(declare-fun tp!2165788 () Bool)

(declare-fun tp!2165785 () Bool)

(assert (=> b!7469755 (= e!4456808 (and tp!2165788 tp!2165785))))

(declare-fun b!7469754 () Bool)

(assert (=> b!7469754 (= e!4456808 tp_is_empty!49435)))

(assert (=> b!7469095 (= tp!2165636 e!4456808)))

(assert (= (and b!7469095 ((_ is ElementMatch!19573) (regOne!39659 r1!5845))) b!7469754))

(assert (= (and b!7469095 ((_ is Concat!28418) (regOne!39659 r1!5845))) b!7469755))

(assert (= (and b!7469095 ((_ is Star!19573) (regOne!39659 r1!5845))) b!7469756))

(assert (= (and b!7469095 ((_ is Union!19573) (regOne!39659 r1!5845))) b!7469757))

(declare-fun b!7469760 () Bool)

(declare-fun e!4456809 () Bool)

(declare-fun tp!2165792 () Bool)

(assert (=> b!7469760 (= e!4456809 tp!2165792)))

(declare-fun b!7469761 () Bool)

(declare-fun tp!2165791 () Bool)

(declare-fun tp!2165794 () Bool)

(assert (=> b!7469761 (= e!4456809 (and tp!2165791 tp!2165794))))

(declare-fun b!7469759 () Bool)

(declare-fun tp!2165793 () Bool)

(declare-fun tp!2165790 () Bool)

(assert (=> b!7469759 (= e!4456809 (and tp!2165793 tp!2165790))))

(declare-fun b!7469758 () Bool)

(assert (=> b!7469758 (= e!4456809 tp_is_empty!49435)))

(assert (=> b!7469095 (= tp!2165637 e!4456809)))

(assert (= (and b!7469095 ((_ is ElementMatch!19573) (regTwo!39659 r1!5845))) b!7469758))

(assert (= (and b!7469095 ((_ is Concat!28418) (regTwo!39659 r1!5845))) b!7469759))

(assert (= (and b!7469095 ((_ is Star!19573) (regTwo!39659 r1!5845))) b!7469760))

(assert (= (and b!7469095 ((_ is Union!19573) (regTwo!39659 r1!5845))) b!7469761))

(declare-fun b!7469764 () Bool)

(declare-fun e!4456810 () Bool)

(declare-fun tp!2165797 () Bool)

(assert (=> b!7469764 (= e!4456810 tp!2165797)))

(declare-fun b!7469765 () Bool)

(declare-fun tp!2165796 () Bool)

(declare-fun tp!2165799 () Bool)

(assert (=> b!7469765 (= e!4456810 (and tp!2165796 tp!2165799))))

(declare-fun b!7469763 () Bool)

(declare-fun tp!2165798 () Bool)

(declare-fun tp!2165795 () Bool)

(assert (=> b!7469763 (= e!4456810 (and tp!2165798 tp!2165795))))

(declare-fun b!7469762 () Bool)

(assert (=> b!7469762 (= e!4456810 tp_is_empty!49435)))

(assert (=> b!7469089 (= tp!2165643 e!4456810)))

(assert (= (and b!7469089 ((_ is ElementMatch!19573) (regOne!39658 r1!5845))) b!7469762))

(assert (= (and b!7469089 ((_ is Concat!28418) (regOne!39658 r1!5845))) b!7469763))

(assert (= (and b!7469089 ((_ is Star!19573) (regOne!39658 r1!5845))) b!7469764))

(assert (= (and b!7469089 ((_ is Union!19573) (regOne!39658 r1!5845))) b!7469765))

(declare-fun b!7469768 () Bool)

(declare-fun e!4456811 () Bool)

(declare-fun tp!2165802 () Bool)

(assert (=> b!7469768 (= e!4456811 tp!2165802)))

(declare-fun b!7469769 () Bool)

(declare-fun tp!2165801 () Bool)

(declare-fun tp!2165804 () Bool)

(assert (=> b!7469769 (= e!4456811 (and tp!2165801 tp!2165804))))

(declare-fun b!7469767 () Bool)

(declare-fun tp!2165803 () Bool)

(declare-fun tp!2165800 () Bool)

(assert (=> b!7469767 (= e!4456811 (and tp!2165803 tp!2165800))))

(declare-fun b!7469766 () Bool)

(assert (=> b!7469766 (= e!4456811 tp_is_empty!49435)))

(assert (=> b!7469089 (= tp!2165638 e!4456811)))

(assert (= (and b!7469089 ((_ is ElementMatch!19573) (regTwo!39658 r1!5845))) b!7469766))

(assert (= (and b!7469089 ((_ is Concat!28418) (regTwo!39658 r1!5845))) b!7469767))

(assert (= (and b!7469089 ((_ is Star!19573) (regTwo!39658 r1!5845))) b!7469768))

(assert (= (and b!7469089 ((_ is Union!19573) (regTwo!39658 r1!5845))) b!7469769))

(declare-fun b!7469772 () Bool)

(declare-fun e!4456812 () Bool)

(declare-fun tp!2165807 () Bool)

(assert (=> b!7469772 (= e!4456812 tp!2165807)))

(declare-fun b!7469773 () Bool)

(declare-fun tp!2165806 () Bool)

(declare-fun tp!2165809 () Bool)

(assert (=> b!7469773 (= e!4456812 (and tp!2165806 tp!2165809))))

(declare-fun b!7469771 () Bool)

(declare-fun tp!2165808 () Bool)

(declare-fun tp!2165805 () Bool)

(assert (=> b!7469771 (= e!4456812 (and tp!2165808 tp!2165805))))

(declare-fun b!7469770 () Bool)

(assert (=> b!7469770 (= e!4456812 tp_is_empty!49435)))

(assert (=> b!7469083 (= tp!2165632 e!4456812)))

(assert (= (and b!7469083 ((_ is ElementMatch!19573) (regOne!39658 rTail!78))) b!7469770))

(assert (= (and b!7469083 ((_ is Concat!28418) (regOne!39658 rTail!78))) b!7469771))

(assert (= (and b!7469083 ((_ is Star!19573) (regOne!39658 rTail!78))) b!7469772))

(assert (= (and b!7469083 ((_ is Union!19573) (regOne!39658 rTail!78))) b!7469773))

(declare-fun b!7469776 () Bool)

(declare-fun e!4456813 () Bool)

(declare-fun tp!2165812 () Bool)

(assert (=> b!7469776 (= e!4456813 tp!2165812)))

(declare-fun b!7469777 () Bool)

(declare-fun tp!2165811 () Bool)

(declare-fun tp!2165814 () Bool)

(assert (=> b!7469777 (= e!4456813 (and tp!2165811 tp!2165814))))

(declare-fun b!7469775 () Bool)

(declare-fun tp!2165813 () Bool)

(declare-fun tp!2165810 () Bool)

(assert (=> b!7469775 (= e!4456813 (and tp!2165813 tp!2165810))))

(declare-fun b!7469774 () Bool)

(assert (=> b!7469774 (= e!4456813 tp_is_empty!49435)))

(assert (=> b!7469083 (= tp!2165630 e!4456813)))

(assert (= (and b!7469083 ((_ is ElementMatch!19573) (regTwo!39658 rTail!78))) b!7469774))

(assert (= (and b!7469083 ((_ is Concat!28418) (regTwo!39658 rTail!78))) b!7469775))

(assert (= (and b!7469083 ((_ is Star!19573) (regTwo!39658 rTail!78))) b!7469776))

(assert (= (and b!7469083 ((_ is Union!19573) (regTwo!39658 rTail!78))) b!7469777))

(declare-fun b!7469780 () Bool)

(declare-fun e!4456814 () Bool)

(declare-fun tp!2165817 () Bool)

(assert (=> b!7469780 (= e!4456814 tp!2165817)))

(declare-fun b!7469781 () Bool)

(declare-fun tp!2165816 () Bool)

(declare-fun tp!2165819 () Bool)

(assert (=> b!7469781 (= e!4456814 (and tp!2165816 tp!2165819))))

(declare-fun b!7469779 () Bool)

(declare-fun tp!2165818 () Bool)

(declare-fun tp!2165815 () Bool)

(assert (=> b!7469779 (= e!4456814 (and tp!2165818 tp!2165815))))

(declare-fun b!7469778 () Bool)

(assert (=> b!7469778 (= e!4456814 tp_is_empty!49435)))

(assert (=> b!7469093 (= tp!2165629 e!4456814)))

(assert (= (and b!7469093 ((_ is ElementMatch!19573) (reg!19902 r2!5783))) b!7469778))

(assert (= (and b!7469093 ((_ is Concat!28418) (reg!19902 r2!5783))) b!7469779))

(assert (= (and b!7469093 ((_ is Star!19573) (reg!19902 r2!5783))) b!7469780))

(assert (= (and b!7469093 ((_ is Union!19573) (reg!19902 r2!5783))) b!7469781))

(check-sat (not b!7469773) (not b!7469655) (not d!2298912) (not b!7469781) (not b!7469747) (not d!2298880) (not b!7469705) (not bm!685939) (not b!7469653) (not bm!685942) (not b!7469749) (not d!2298890) (not d!2298916) (not b!7469751) (not b!7469647) (not d!2298882) (not b!7469223) (not b!7469741) (not b!7469711) (not b!7469694) (not b!7469737) (not b!7469744) (not d!2298824) (not d!2298918) (not b!7469690) (not b!7469672) (not b!7469221) (not b!7469723) (not b!7469760) (not b!7469735) (not bm!685937) (not b!7469681) (not b!7469736) (not b!7469777) (not b!7469575) (not d!2298856) (not b!7469519) (not b!7469769) (not d!2298826) (not b!7469775) (not b!7469516) (not b!7469765) (not b!7469637) (not bm!685935) (not d!2298894) (not b!7469624) (not b!7469511) (not b!7469220) tp_is_empty!49435 (not bm!685934) (not b!7469652) (not b!7469686) (not b!7469588) (not b!7469515) (not bm!685924) (not b!7469635) (not b!7469764) (not b!7469633) (not b!7469419) (not b!7469691) (not b!7469665) (not b!7469577) (not b!7469753) (not bm!685921) (not b!7469739) (not b!7469779) (not d!2298816) (not b!7469725) (not b!7469224) (not b!7469748) (not b!7469423) (not d!2298906) (not b!7469732) (not b!7469731) (not b!7469225) (not b!7469759) (not b!7469768) (not b!7469745) (not b!7469752) (not b!7469767) (not bm!685933) (not b!7469626) (not b!7469687) (not b!7469729) (not bm!685911) (not b!7469513) (not b!7469755) (not b!7469733) (not b!7469613) (not b!7469415) (not b!7469689) (not bm!685944) (not bm!685938) (not b!7469586) (not b!7469228) (not d!2298910) (not b!7469638) (not b!7469772) (not b!7469740) (not bm!685923) (not b!7469727) (not d!2298872) (not b!7469417) (not d!2298898) (not b!7469776) (not b!7469641) (not b!7469724) (not bm!685941) (not b!7469663) (not d!2298850) (not b!7469761) (not b!7469420) (not b!7469756) (not bm!685922) (not b!7469651) (not d!2298908) (not b!7469763) (not b!7469639) (not bm!685936) (not b!7469517) (not bm!685932) (not bm!685945) (not b!7469743) (not d!2298818) (not d!2298854) (not b!7469649) (not b!7469757) (not d!2298914) (not d!2298896) (not b!7469728) (not b!7469771) (not b!7469421) (not bm!685916) (not b!7469704) (not b!7469780))
(check-sat)
