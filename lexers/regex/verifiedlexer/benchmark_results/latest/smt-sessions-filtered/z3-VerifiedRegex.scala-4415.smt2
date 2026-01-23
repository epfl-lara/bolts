; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!235152 () Bool)

(assert start!235152)

(declare-fun b!2396579 () Bool)

(assert (=> b!2396579 true))

(assert (=> b!2396579 true))

(declare-fun lambda!89969 () Int)

(declare-fun lambda!89968 () Int)

(assert (=> b!2396579 (not (= lambda!89969 lambda!89968))))

(assert (=> b!2396579 true))

(assert (=> b!2396579 true))

(declare-fun b!2396560 () Bool)

(declare-fun e!1527208 () Bool)

(declare-fun lt!871880 () Bool)

(declare-datatypes ((C!14204 0))(
  ( (C!14205 (val!8344 Int)) )
))
(declare-datatypes ((List!28284 0))(
  ( (Nil!28186) (Cons!28186 (h!33587 C!14204) (t!208261 List!28284)) )
))
(declare-fun s!9460 () List!28284)

(declare-fun isEmpty!16177 (List!28284) Bool)

(assert (=> b!2396560 (= e!1527208 (not (= lt!871880 (isEmpty!16177 s!9460))))))

(declare-fun b!2396561 () Bool)

(declare-fun e!1527207 () Bool)

(declare-fun call!146255 () Bool)

(assert (=> b!2396561 (= e!1527207 (not call!146255))))

(declare-fun b!2396562 () Bool)

(declare-datatypes ((Unit!41282 0))(
  ( (Unit!41283) )
))
(declare-fun e!1527220 () Unit!41282)

(declare-fun e!1527221 () Unit!41282)

(assert (=> b!2396562 (= e!1527220 e!1527221)))

(declare-datatypes ((Regex!7023 0))(
  ( (ElementMatch!7023 (c!381427 C!14204)) (Concat!11659 (regOne!14558 Regex!7023) (regTwo!14558 Regex!7023)) (EmptyExpr!7023) (Star!7023 (reg!7352 Regex!7023)) (EmptyLang!7023) (Union!7023 (regOne!14559 Regex!7023) (regTwo!14559 Regex!7023)) )
))
(declare-datatypes ((List!28285 0))(
  ( (Nil!28187) (Cons!28187 (h!33588 Regex!7023) (t!208262 List!28285)) )
))
(declare-fun lt!871872 () List!28285)

(declare-fun l!9164 () List!28285)

(declare-fun tail!3547 (List!28285) List!28285)

(assert (=> b!2396562 (= lt!871872 (tail!3547 l!9164))))

(declare-fun c!381424 () Bool)

(declare-fun isEmpty!16178 (List!28285) Bool)

(assert (=> b!2396562 (= c!381424 (isEmpty!16178 lt!871872))))

(declare-fun b!2396563 () Bool)

(declare-fun e!1527217 () Bool)

(declare-fun tp_is_empty!11459 () Bool)

(assert (=> b!2396563 (= e!1527217 tp_is_empty!11459)))

(declare-fun b!2396564 () Bool)

(declare-fun e!1527215 () Bool)

(declare-fun lt!871885 () Regex!7023)

(declare-fun validRegex!2748 (Regex!7023) Bool)

(assert (=> b!2396564 (= e!1527215 (validRegex!2748 lt!871885))))

(declare-fun b!2396565 () Bool)

(declare-fun e!1527218 () Bool)

(assert (=> b!2396565 (= e!1527218 call!146255)))

(declare-fun b!2396566 () Bool)

(declare-fun tp!763111 () Bool)

(declare-fun tp!763113 () Bool)

(assert (=> b!2396566 (= e!1527217 (and tp!763111 tp!763113))))

(declare-fun b!2396567 () Bool)

(declare-fun res!1018266 () Bool)

(declare-fun e!1527214 () Bool)

(assert (=> b!2396567 (=> (not res!1018266) (not e!1527214))))

(declare-fun r!13927 () Regex!7023)

(declare-fun generalisedConcat!124 (List!28285) Regex!7023)

(assert (=> b!2396567 (= res!1018266 (= r!13927 (generalisedConcat!124 l!9164)))))

(declare-fun bm!146250 () Bool)

(declare-datatypes ((tuple2!27910 0))(
  ( (tuple2!27911 (_1!16496 List!28284) (_2!16496 List!28284)) )
))
(declare-datatypes ((Option!5566 0))(
  ( (None!5565) (Some!5565 (v!30973 tuple2!27910)) )
))
(declare-fun call!146259 () Option!5566)

(declare-fun call!146263 () Option!5566)

(assert (=> bm!146250 (= call!146259 call!146263)))

(declare-fun call!146254 () Regex!7023)

(declare-fun bm!146251 () Bool)

(declare-fun lt!871876 () Regex!7023)

(declare-fun call!146262 () Regex!7023)

(declare-fun findConcatSeparation!674 (Regex!7023 Regex!7023 List!28284 List!28284 List!28284) Option!5566)

(assert (=> bm!146251 (= call!146263 (findConcatSeparation!674 (ite c!381424 lt!871876 call!146254) (ite c!381424 EmptyExpr!7023 call!146262) Nil!28186 s!9460 s!9460))))

(declare-fun b!2396568 () Bool)

(declare-fun e!1527206 () Unit!41282)

(declare-fun Unit!41284 () Unit!41282)

(assert (=> b!2396568 (= e!1527206 Unit!41284)))

(declare-fun b!2396569 () Bool)

(declare-fun e!1527213 () Bool)

(assert (=> b!2396569 (= e!1527213 false)))

(declare-fun b!2396570 () Bool)

(declare-fun e!1527209 () Unit!41282)

(declare-fun Unit!41285 () Unit!41282)

(assert (=> b!2396570 (= e!1527209 Unit!41285)))

(declare-fun lt!871870 () Option!5566)

(assert (=> b!2396570 (= lt!871870 call!146259)))

(declare-fun lt!871877 () Bool)

(declare-fun call!146260 () Bool)

(assert (=> b!2396570 (= lt!871877 call!146260)))

(declare-fun c!381423 () Bool)

(assert (=> b!2396570 (= c!381423 lt!871877)))

(declare-fun lt!871868 () Unit!41282)

(assert (=> b!2396570 (= lt!871868 e!1527206)))

(declare-fun res!1018262 () Bool)

(assert (=> b!2396570 (= res!1018262 (not lt!871877))))

(assert (=> b!2396570 (=> (not res!1018262) (not e!1527207))))

(assert (=> b!2396570 e!1527207))

(declare-fun b!2396571 () Bool)

(declare-fun e!1527210 () Bool)

(declare-fun call!146257 () Bool)

(assert (=> b!2396571 (= e!1527210 call!146257)))

(declare-fun c!381425 () Bool)

(declare-fun call!146261 () List!28284)

(declare-fun lt!871882 () Regex!7023)

(declare-fun bm!146252 () Bool)

(declare-fun matchR!3140 (Regex!7023 List!28284) Bool)

(assert (=> bm!146252 (= call!146257 (matchR!3140 (ite c!381425 lt!871882 (Concat!11659 lt!871876 EmptyExpr!7023)) (ite c!381425 s!9460 call!146261)))))

(declare-fun bm!146249 () Bool)

(declare-fun call!146264 () Bool)

(declare-fun isDefined!4394 (Option!5566) Bool)

(assert (=> bm!146249 (= call!146264 (isDefined!4394 (ite c!381424 (ite c!381425 call!146259 lt!871870) call!146263)))))

(declare-fun res!1018272 () Bool)

(assert (=> start!235152 (=> (not res!1018272) (not e!1527214))))

(declare-fun lambda!89967 () Int)

(declare-fun forall!5657 (List!28285 Int) Bool)

(assert (=> start!235152 (= res!1018272 (forall!5657 l!9164 lambda!89967))))

(assert (=> start!235152 e!1527214))

(declare-fun e!1527212 () Bool)

(assert (=> start!235152 e!1527212))

(assert (=> start!235152 e!1527217))

(declare-fun e!1527222 () Bool)

(assert (=> start!235152 e!1527222))

(declare-fun b!2396572 () Bool)

(declare-fun tp!763117 () Bool)

(declare-fun tp!763110 () Bool)

(assert (=> b!2396572 (= e!1527217 (and tp!763117 tp!763110))))

(declare-fun b!2396573 () Bool)

(declare-fun res!1018268 () Bool)

(declare-fun e!1527216 () Bool)

(assert (=> b!2396573 (=> res!1018268 e!1527216)))

(get-info :version)

(assert (=> b!2396573 (= res!1018268 (not ((_ is Cons!28187) l!9164)))))

(declare-fun b!2396574 () Bool)

(declare-fun tp!763114 () Bool)

(assert (=> b!2396574 (= e!1527217 tp!763114)))

(declare-fun b!2396575 () Bool)

(assert (=> b!2396575 (= e!1527216 e!1527215)))

(declare-fun res!1018267 () Bool)

(assert (=> b!2396575 (=> res!1018267 e!1527215)))

(assert (=> b!2396575 (= res!1018267 (not (validRegex!2748 (h!33588 l!9164))))))

(assert (=> b!2396575 (= lt!871885 (generalisedConcat!124 (t!208262 l!9164)))))

(declare-fun b!2396576 () Bool)

(assert (=> b!2396576 e!1527213))

(declare-fun res!1018270 () Bool)

(assert (=> b!2396576 (=> (not res!1018270) (not e!1527213))))

(assert (=> b!2396576 (= res!1018270 call!146257)))

(declare-fun lt!871869 () Unit!41282)

(declare-fun lt!871879 () tuple2!27910)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!42 (Regex!7023 Regex!7023 List!28284 List!28284 List!28284) Unit!41282)

(assert (=> b!2396576 (= lt!871869 (lemmaFindSeparationIsDefinedThenConcatMatches!42 lt!871876 EmptyExpr!7023 (_1!16496 lt!871879) (_2!16496 lt!871879) s!9460))))

(declare-fun get!8632 (Option!5566) tuple2!27910)

(assert (=> b!2396576 (= lt!871879 (get!8632 lt!871870))))

(declare-fun Unit!41286 () Unit!41282)

(assert (=> b!2396576 (= e!1527206 Unit!41286)))

(declare-fun b!2396577 () Bool)

(assert (=> b!2396577 (= lt!871880 call!146264)))

(declare-fun Unit!41287 () Unit!41282)

(assert (=> b!2396577 (= e!1527221 Unit!41287)))

(declare-fun b!2396578 () Bool)

(declare-fun e!1527219 () Bool)

(assert (=> b!2396578 (= e!1527219 e!1527216)))

(declare-fun res!1018271 () Bool)

(assert (=> b!2396578 (=> res!1018271 e!1527216)))

(assert (=> b!2396578 (= res!1018271 e!1527208)))

(declare-fun c!381426 () Bool)

(assert (=> b!2396578 (= c!381426 ((_ is Cons!28187) l!9164))))

(declare-fun lt!871873 () Unit!41282)

(assert (=> b!2396578 (= lt!871873 e!1527220)))

(declare-fun c!381422 () Bool)

(assert (=> b!2396578 (= c!381422 (isEmpty!16178 l!9164))))

(declare-fun e!1527211 () Bool)

(assert (=> b!2396579 (= e!1527211 e!1527219)))

(declare-fun res!1018263 () Bool)

(assert (=> b!2396579 (=> res!1018263 e!1527219)))

(declare-fun lt!871871 () Bool)

(declare-fun lt!871875 () Bool)

(assert (=> b!2396579 (= res!1018263 (not (= lt!871871 lt!871875)))))

(declare-fun Exists!1085 (Int) Bool)

(assert (=> b!2396579 (= (Exists!1085 lambda!89968) (Exists!1085 lambda!89969))))

(declare-fun lt!871878 () Unit!41282)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!424 (Regex!7023 Regex!7023 List!28284) Unit!41282)

(assert (=> b!2396579 (= lt!871878 (lemmaExistCutMatchRandMatchRSpecEquivalent!424 (regOne!14558 r!13927) (regTwo!14558 r!13927) s!9460))))

(assert (=> b!2396579 (= lt!871875 (Exists!1085 lambda!89968))))

(assert (=> b!2396579 (= lt!871875 (isDefined!4394 (findConcatSeparation!674 (regOne!14558 r!13927) (regTwo!14558 r!13927) Nil!28186 s!9460 s!9460)))))

(declare-fun lt!871881 () Unit!41282)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!674 (Regex!7023 Regex!7023 List!28284) Unit!41282)

(assert (=> b!2396579 (= lt!871881 (lemmaFindConcatSeparationEquivalentToExists!674 (regOne!14558 r!13927) (regTwo!14558 r!13927) s!9460))))

(declare-fun b!2396580 () Bool)

(assert (=> b!2396580 (= e!1527208 (not (= lt!871880 (isDefined!4394 (findConcatSeparation!674 (h!33588 l!9164) (generalisedConcat!124 (t!208262 l!9164)) Nil!28186 s!9460 s!9460)))))))

(declare-fun b!2396581 () Bool)

(declare-fun tp!763116 () Bool)

(assert (=> b!2396581 (= e!1527222 (and tp_is_empty!11459 tp!763116))))

(declare-fun bm!146253 () Bool)

(declare-fun head!5277 (List!28285) Regex!7023)

(assert (=> bm!146253 (= call!146254 (head!5277 l!9164))))

(declare-fun b!2396582 () Bool)

(assert (=> b!2396582 (= e!1527214 (not e!1527211))))

(declare-fun res!1018265 () Bool)

(assert (=> b!2396582 (=> res!1018265 e!1527211)))

(assert (=> b!2396582 (= res!1018265 (not ((_ is Concat!11659) r!13927)))))

(assert (=> b!2396582 (= lt!871880 lt!871871)))

(declare-fun matchRSpec!872 (Regex!7023 List!28284) Bool)

(assert (=> b!2396582 (= lt!871871 (matchRSpec!872 r!13927 s!9460))))

(assert (=> b!2396582 (= lt!871880 (matchR!3140 r!13927 s!9460))))

(declare-fun lt!871874 () Unit!41282)

(declare-fun mainMatchTheorem!872 (Regex!7023 List!28284) Unit!41282)

(assert (=> b!2396582 (= lt!871874 (mainMatchTheorem!872 r!13927 s!9460))))

(declare-fun bm!146254 () Bool)

(declare-fun ++!6977 (List!28284 List!28284) List!28284)

(assert (=> bm!146254 (= call!146261 (++!6977 (ite c!381425 s!9460 (_1!16496 lt!871879)) (ite c!381425 Nil!28186 (_2!16496 lt!871879))))))

(declare-fun bm!146255 () Bool)

(declare-fun call!146258 () Regex!7023)

(declare-fun call!146256 () Option!5566)

(assert (=> bm!146255 (= call!146256 (findConcatSeparation!674 lt!871876 call!146258 Nil!28186 s!9460 s!9460))))

(declare-fun bm!146256 () Bool)

(assert (=> bm!146256 (= call!146258 call!146262)))

(declare-fun bm!146257 () Bool)

(assert (=> bm!146257 (= call!146255 (isDefined!4394 call!146256))))

(declare-fun b!2396583 () Bool)

(declare-fun Unit!41288 () Unit!41282)

(assert (=> b!2396583 (= e!1527220 Unit!41288)))

(assert (=> b!2396583 false))

(declare-fun b!2396584 () Bool)

(declare-fun tp!763115 () Bool)

(declare-fun tp!763112 () Bool)

(assert (=> b!2396584 (= e!1527212 (and tp!763115 tp!763112))))

(declare-fun b!2396585 () Bool)

(assert (=> b!2396585 (= lt!871880 (isDefined!4394 (findConcatSeparation!674 lt!871876 call!146262 Nil!28186 s!9460 s!9460)))))

(declare-fun lt!871883 () Unit!41282)

(assert (=> b!2396585 (= lt!871883 e!1527209)))

(assert (=> b!2396585 (= c!381425 (matchR!3140 lt!871876 s!9460))))

(assert (=> b!2396585 (= lt!871876 call!146254)))

(declare-fun Unit!41289 () Unit!41282)

(assert (=> b!2396585 (= e!1527221 Unit!41289)))

(declare-fun b!2396586 () Bool)

(declare-fun Unit!41290 () Unit!41282)

(assert (=> b!2396586 (= e!1527209 Unit!41290)))

(declare-fun lt!871884 () Unit!41282)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!60 (Regex!7023 Regex!7023 List!28284 List!28284) Unit!41282)

(assert (=> b!2396586 (= lt!871884 (lemmaTwoRegexMatchThenConcatMatchesConcatString!60 lt!871876 EmptyExpr!7023 s!9460 Nil!28186))))

(assert (=> b!2396586 (= lt!871882 (Concat!11659 lt!871876 EmptyExpr!7023))))

(declare-fun res!1018264 () Bool)

(assert (=> b!2396586 (= res!1018264 (matchR!3140 lt!871882 call!146261))))

(assert (=> b!2396586 (=> (not res!1018264) (not e!1527210))))

(assert (=> b!2396586 e!1527210))

(declare-fun lt!871886 () Unit!41282)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!42 (Regex!7023 Regex!7023 List!28284) Unit!41282)

(assert (=> b!2396586 (= lt!871886 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!42 lt!871876 EmptyExpr!7023 s!9460))))

(declare-fun res!1018269 () Bool)

(assert (=> b!2396586 (= res!1018269 call!146260)))

(assert (=> b!2396586 (=> (not res!1018269) (not e!1527218))))

(assert (=> b!2396586 e!1527218))

(declare-fun bm!146258 () Bool)

(assert (=> bm!146258 (= call!146262 (generalisedConcat!124 lt!871872))))

(declare-fun bm!146259 () Bool)

(assert (=> bm!146259 (= call!146260 call!146264)))

(assert (= (and start!235152 res!1018272) b!2396567))

(assert (= (and b!2396567 res!1018266) b!2396582))

(assert (= (and b!2396582 (not res!1018265)) b!2396579))

(assert (= (and b!2396579 (not res!1018263)) b!2396578))

(assert (= (and b!2396578 c!381422) b!2396583))

(assert (= (and b!2396578 (not c!381422)) b!2396562))

(assert (= (and b!2396562 c!381424) b!2396585))

(assert (= (and b!2396562 (not c!381424)) b!2396577))

(assert (= (and b!2396585 c!381425) b!2396586))

(assert (= (and b!2396585 (not c!381425)) b!2396570))

(assert (= (and b!2396586 res!1018264) b!2396571))

(assert (= (and b!2396586 res!1018269) b!2396565))

(assert (= (and b!2396570 c!381423) b!2396576))

(assert (= (and b!2396570 (not c!381423)) b!2396568))

(assert (= (and b!2396576 res!1018270) b!2396569))

(assert (= (and b!2396570 res!1018262) b!2396561))

(assert (= (or b!2396565 b!2396561) bm!146256))

(assert (= (or b!2396586 b!2396570) bm!146250))

(assert (= (or b!2396586 b!2396576) bm!146254))

(assert (= (or b!2396586 b!2396570) bm!146259))

(assert (= (or b!2396571 b!2396576) bm!146252))

(assert (= (or b!2396565 b!2396561) bm!146255))

(assert (= (or b!2396565 b!2396561) bm!146257))

(assert (= (or b!2396585 b!2396577) bm!146253))

(assert (= (or b!2396585 bm!146256 b!2396577) bm!146258))

(assert (= (or bm!146250 b!2396577) bm!146251))

(assert (= (or bm!146259 b!2396577) bm!146249))

(assert (= (and b!2396578 c!381426) b!2396580))

(assert (= (and b!2396578 (not c!381426)) b!2396560))

(assert (= (and b!2396578 (not res!1018271)) b!2396573))

(assert (= (and b!2396573 (not res!1018268)) b!2396575))

(assert (= (and b!2396575 (not res!1018267)) b!2396564))

(assert (= (and start!235152 ((_ is Cons!28187) l!9164)) b!2396584))

(assert (= (and start!235152 ((_ is ElementMatch!7023) r!13927)) b!2396563))

(assert (= (and start!235152 ((_ is Concat!11659) r!13927)) b!2396566))

(assert (= (and start!235152 ((_ is Star!7023) r!13927)) b!2396574))

(assert (= (and start!235152 ((_ is Union!7023) r!13927)) b!2396572))

(assert (= (and start!235152 ((_ is Cons!28186) s!9460)) b!2396581))

(declare-fun m!2795271 () Bool)

(assert (=> bm!146257 m!2795271))

(declare-fun m!2795273 () Bool)

(assert (=> bm!146258 m!2795273))

(declare-fun m!2795275 () Bool)

(assert (=> b!2396585 m!2795275))

(assert (=> b!2396585 m!2795275))

(declare-fun m!2795277 () Bool)

(assert (=> b!2396585 m!2795277))

(declare-fun m!2795279 () Bool)

(assert (=> b!2396585 m!2795279))

(declare-fun m!2795281 () Bool)

(assert (=> b!2396586 m!2795281))

(declare-fun m!2795283 () Bool)

(assert (=> b!2396586 m!2795283))

(declare-fun m!2795285 () Bool)

(assert (=> b!2396586 m!2795285))

(declare-fun m!2795287 () Bool)

(assert (=> b!2396579 m!2795287))

(declare-fun m!2795289 () Bool)

(assert (=> b!2396579 m!2795289))

(declare-fun m!2795291 () Bool)

(assert (=> b!2396579 m!2795291))

(declare-fun m!2795293 () Bool)

(assert (=> b!2396579 m!2795293))

(assert (=> b!2396579 m!2795287))

(declare-fun m!2795295 () Bool)

(assert (=> b!2396579 m!2795295))

(declare-fun m!2795297 () Bool)

(assert (=> b!2396579 m!2795297))

(assert (=> b!2396579 m!2795295))

(declare-fun m!2795299 () Bool)

(assert (=> b!2396578 m!2795299))

(declare-fun m!2795301 () Bool)

(assert (=> b!2396580 m!2795301))

(assert (=> b!2396580 m!2795301))

(declare-fun m!2795303 () Bool)

(assert (=> b!2396580 m!2795303))

(assert (=> b!2396580 m!2795303))

(declare-fun m!2795305 () Bool)

(assert (=> b!2396580 m!2795305))

(declare-fun m!2795307 () Bool)

(assert (=> bm!146252 m!2795307))

(declare-fun m!2795309 () Bool)

(assert (=> b!2396562 m!2795309))

(declare-fun m!2795311 () Bool)

(assert (=> b!2396562 m!2795311))

(declare-fun m!2795313 () Bool)

(assert (=> b!2396567 m!2795313))

(declare-fun m!2795315 () Bool)

(assert (=> bm!146253 m!2795315))

(declare-fun m!2795317 () Bool)

(assert (=> bm!146249 m!2795317))

(declare-fun m!2795319 () Bool)

(assert (=> b!2396582 m!2795319))

(declare-fun m!2795321 () Bool)

(assert (=> b!2396582 m!2795321))

(declare-fun m!2795323 () Bool)

(assert (=> b!2396582 m!2795323))

(declare-fun m!2795325 () Bool)

(assert (=> bm!146254 m!2795325))

(declare-fun m!2795327 () Bool)

(assert (=> b!2396576 m!2795327))

(declare-fun m!2795329 () Bool)

(assert (=> b!2396576 m!2795329))

(declare-fun m!2795331 () Bool)

(assert (=> bm!146255 m!2795331))

(declare-fun m!2795333 () Bool)

(assert (=> bm!146251 m!2795333))

(declare-fun m!2795335 () Bool)

(assert (=> start!235152 m!2795335))

(declare-fun m!2795337 () Bool)

(assert (=> b!2396564 m!2795337))

(declare-fun m!2795339 () Bool)

(assert (=> b!2396560 m!2795339))

(declare-fun m!2795341 () Bool)

(assert (=> b!2396575 m!2795341))

(assert (=> b!2396575 m!2795301))

(check-sat (not b!2396574) (not bm!146258) (not bm!146251) (not b!2396582) (not b!2396560) (not bm!146249) (not b!2396584) (not b!2396575) (not bm!146257) (not b!2396572) (not bm!146255) (not b!2396567) tp_is_empty!11459 (not bm!146253) (not bm!146254) (not bm!146252) (not b!2396580) (not b!2396562) (not b!2396581) (not start!235152) (not b!2396579) (not b!2396578) (not b!2396566) (not b!2396564) (not b!2396585) (not b!2396586) (not b!2396576))
(check-sat)
(get-model)

(declare-fun d!699078 () Bool)

(assert (=> d!699078 (= (isEmpty!16177 s!9460) ((_ is Nil!28186) s!9460))))

(assert (=> b!2396560 d!699078))

(declare-fun d!699080 () Bool)

(declare-fun isEmpty!16180 (Option!5566) Bool)

(assert (=> d!699080 (= (isDefined!4394 (findConcatSeparation!674 lt!871876 call!146262 Nil!28186 s!9460 s!9460)) (not (isEmpty!16180 (findConcatSeparation!674 lt!871876 call!146262 Nil!28186 s!9460 s!9460))))))

(declare-fun bs!462921 () Bool)

(assert (= bs!462921 d!699080))

(assert (=> bs!462921 m!2795275))

(declare-fun m!2795343 () Bool)

(assert (=> bs!462921 m!2795343))

(assert (=> b!2396585 d!699080))

(declare-fun b!2396753 () Bool)

(declare-fun res!1018354 () Bool)

(declare-fun e!1527318 () Bool)

(assert (=> b!2396753 (=> (not res!1018354) (not e!1527318))))

(declare-fun lt!871916 () Option!5566)

(assert (=> b!2396753 (= res!1018354 (matchR!3140 call!146262 (_2!16496 (get!8632 lt!871916))))))

(declare-fun b!2396754 () Bool)

(declare-fun e!1527322 () Option!5566)

(assert (=> b!2396754 (= e!1527322 None!5565)))

(declare-fun b!2396755 () Bool)

(declare-fun e!1527321 () Bool)

(assert (=> b!2396755 (= e!1527321 (matchR!3140 call!146262 s!9460))))

(declare-fun b!2396756 () Bool)

(assert (=> b!2396756 (= e!1527318 (= (++!6977 (_1!16496 (get!8632 lt!871916)) (_2!16496 (get!8632 lt!871916))) s!9460))))

(declare-fun b!2396757 () Bool)

(declare-fun e!1527319 () Option!5566)

(assert (=> b!2396757 (= e!1527319 (Some!5565 (tuple2!27911 Nil!28186 s!9460)))))

(declare-fun b!2396759 () Bool)

(declare-fun e!1527320 () Bool)

(assert (=> b!2396759 (= e!1527320 (not (isDefined!4394 lt!871916)))))

(declare-fun d!699082 () Bool)

(assert (=> d!699082 e!1527320))

(declare-fun res!1018356 () Bool)

(assert (=> d!699082 (=> res!1018356 e!1527320)))

(assert (=> d!699082 (= res!1018356 e!1527318)))

(declare-fun res!1018353 () Bool)

(assert (=> d!699082 (=> (not res!1018353) (not e!1527318))))

(assert (=> d!699082 (= res!1018353 (isDefined!4394 lt!871916))))

(assert (=> d!699082 (= lt!871916 e!1527319)))

(declare-fun c!381470 () Bool)

(assert (=> d!699082 (= c!381470 e!1527321)))

(declare-fun res!1018355 () Bool)

(assert (=> d!699082 (=> (not res!1018355) (not e!1527321))))

(assert (=> d!699082 (= res!1018355 (matchR!3140 lt!871876 Nil!28186))))

(assert (=> d!699082 (validRegex!2748 lt!871876)))

(assert (=> d!699082 (= (findConcatSeparation!674 lt!871876 call!146262 Nil!28186 s!9460 s!9460) lt!871916)))

(declare-fun b!2396758 () Bool)

(assert (=> b!2396758 (= e!1527319 e!1527322)))

(declare-fun c!381469 () Bool)

(assert (=> b!2396758 (= c!381469 ((_ is Nil!28186) s!9460))))

(declare-fun b!2396760 () Bool)

(declare-fun res!1018357 () Bool)

(assert (=> b!2396760 (=> (not res!1018357) (not e!1527318))))

(assert (=> b!2396760 (= res!1018357 (matchR!3140 lt!871876 (_1!16496 (get!8632 lt!871916))))))

(declare-fun b!2396761 () Bool)

(declare-fun lt!871915 () Unit!41282)

(declare-fun lt!871914 () Unit!41282)

(assert (=> b!2396761 (= lt!871915 lt!871914)))

(assert (=> b!2396761 (= (++!6977 (++!6977 Nil!28186 (Cons!28186 (h!33587 s!9460) Nil!28186)) (t!208261 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!619 (List!28284 C!14204 List!28284 List!28284) Unit!41282)

(assert (=> b!2396761 (= lt!871914 (lemmaMoveElementToOtherListKeepsConcatEq!619 Nil!28186 (h!33587 s!9460) (t!208261 s!9460) s!9460))))

(assert (=> b!2396761 (= e!1527322 (findConcatSeparation!674 lt!871876 call!146262 (++!6977 Nil!28186 (Cons!28186 (h!33587 s!9460) Nil!28186)) (t!208261 s!9460) s!9460))))

(assert (= (and d!699082 res!1018355) b!2396755))

(assert (= (and d!699082 c!381470) b!2396757))

(assert (= (and d!699082 (not c!381470)) b!2396758))

(assert (= (and b!2396758 c!381469) b!2396754))

(assert (= (and b!2396758 (not c!381469)) b!2396761))

(assert (= (and d!699082 res!1018353) b!2396760))

(assert (= (and b!2396760 res!1018357) b!2396753))

(assert (= (and b!2396753 res!1018354) b!2396756))

(assert (= (and d!699082 (not res!1018356)) b!2396759))

(declare-fun m!2795439 () Bool)

(assert (=> b!2396760 m!2795439))

(declare-fun m!2795441 () Bool)

(assert (=> b!2396760 m!2795441))

(assert (=> b!2396756 m!2795439))

(declare-fun m!2795445 () Bool)

(assert (=> b!2396756 m!2795445))

(declare-fun m!2795451 () Bool)

(assert (=> b!2396755 m!2795451))

(declare-fun m!2795455 () Bool)

(assert (=> d!699082 m!2795455))

(declare-fun m!2795461 () Bool)

(assert (=> d!699082 m!2795461))

(declare-fun m!2795467 () Bool)

(assert (=> d!699082 m!2795467))

(assert (=> b!2396759 m!2795455))

(assert (=> b!2396753 m!2795439))

(declare-fun m!2795473 () Bool)

(assert (=> b!2396753 m!2795473))

(declare-fun m!2795475 () Bool)

(assert (=> b!2396761 m!2795475))

(assert (=> b!2396761 m!2795475))

(declare-fun m!2795477 () Bool)

(assert (=> b!2396761 m!2795477))

(declare-fun m!2795479 () Bool)

(assert (=> b!2396761 m!2795479))

(assert (=> b!2396761 m!2795475))

(declare-fun m!2795481 () Bool)

(assert (=> b!2396761 m!2795481))

(assert (=> b!2396585 d!699082))

(declare-fun b!2396882 () Bool)

(declare-fun e!1527398 () Bool)

(declare-fun lt!871925 () Bool)

(assert (=> b!2396882 (= e!1527398 (not lt!871925))))

(declare-fun b!2396883 () Bool)

(declare-fun e!1527394 () Bool)

(declare-fun head!5279 (List!28284) C!14204)

(assert (=> b!2396883 (= e!1527394 (not (= (head!5279 s!9460) (c!381427 lt!871876))))))

(declare-fun b!2396884 () Bool)

(declare-fun e!1527397 () Bool)

(declare-fun derivativeStep!1730 (Regex!7023 C!14204) Regex!7023)

(declare-fun tail!3549 (List!28284) List!28284)

(assert (=> b!2396884 (= e!1527397 (matchR!3140 (derivativeStep!1730 lt!871876 (head!5279 s!9460)) (tail!3549 s!9460)))))

(declare-fun b!2396885 () Bool)

(declare-fun e!1527400 () Bool)

(assert (=> b!2396885 (= e!1527400 e!1527394)))

(declare-fun res!1018419 () Bool)

(assert (=> b!2396885 (=> res!1018419 e!1527394)))

(declare-fun call!146289 () Bool)

(assert (=> b!2396885 (= res!1018419 call!146289)))

(declare-fun b!2396886 () Bool)

(declare-fun e!1527395 () Bool)

(assert (=> b!2396886 (= e!1527395 (= lt!871925 call!146289))))

(declare-fun b!2396887 () Bool)

(assert (=> b!2396887 (= e!1527395 e!1527398)))

(declare-fun c!381502 () Bool)

(assert (=> b!2396887 (= c!381502 ((_ is EmptyLang!7023) lt!871876))))

(declare-fun b!2396888 () Bool)

(declare-fun res!1018420 () Bool)

(assert (=> b!2396888 (=> res!1018420 e!1527394)))

(assert (=> b!2396888 (= res!1018420 (not (isEmpty!16177 (tail!3549 s!9460))))))

(declare-fun b!2396889 () Bool)

(declare-fun res!1018423 () Bool)

(declare-fun e!1527396 () Bool)

(assert (=> b!2396889 (=> res!1018423 e!1527396)))

(assert (=> b!2396889 (= res!1018423 (not ((_ is ElementMatch!7023) lt!871876)))))

(assert (=> b!2396889 (= e!1527398 e!1527396)))

(declare-fun b!2396890 () Bool)

(declare-fun nullable!2072 (Regex!7023) Bool)

(assert (=> b!2396890 (= e!1527397 (nullable!2072 lt!871876))))

(declare-fun bm!146284 () Bool)

(assert (=> bm!146284 (= call!146289 (isEmpty!16177 s!9460))))

(declare-fun b!2396892 () Bool)

(declare-fun e!1527399 () Bool)

(assert (=> b!2396892 (= e!1527399 (= (head!5279 s!9460) (c!381427 lt!871876)))))

(declare-fun b!2396893 () Bool)

(declare-fun res!1018417 () Bool)

(assert (=> b!2396893 (=> (not res!1018417) (not e!1527399))))

(assert (=> b!2396893 (= res!1018417 (isEmpty!16177 (tail!3549 s!9460)))))

(declare-fun b!2396891 () Bool)

(assert (=> b!2396891 (= e!1527396 e!1527400)))

(declare-fun res!1018416 () Bool)

(assert (=> b!2396891 (=> (not res!1018416) (not e!1527400))))

(assert (=> b!2396891 (= res!1018416 (not lt!871925))))

(declare-fun d!699106 () Bool)

(assert (=> d!699106 e!1527395))

(declare-fun c!381503 () Bool)

(assert (=> d!699106 (= c!381503 ((_ is EmptyExpr!7023) lt!871876))))

(assert (=> d!699106 (= lt!871925 e!1527397)))

(declare-fun c!381504 () Bool)

(assert (=> d!699106 (= c!381504 (isEmpty!16177 s!9460))))

(assert (=> d!699106 (validRegex!2748 lt!871876)))

(assert (=> d!699106 (= (matchR!3140 lt!871876 s!9460) lt!871925)))

(declare-fun b!2396894 () Bool)

(declare-fun res!1018421 () Bool)

(assert (=> b!2396894 (=> (not res!1018421) (not e!1527399))))

(assert (=> b!2396894 (= res!1018421 (not call!146289))))

(declare-fun b!2396895 () Bool)

(declare-fun res!1018422 () Bool)

(assert (=> b!2396895 (=> res!1018422 e!1527396)))

(assert (=> b!2396895 (= res!1018422 e!1527399)))

(declare-fun res!1018418 () Bool)

(assert (=> b!2396895 (=> (not res!1018418) (not e!1527399))))

(assert (=> b!2396895 (= res!1018418 lt!871925)))

(assert (= (and d!699106 c!381504) b!2396890))

(assert (= (and d!699106 (not c!381504)) b!2396884))

(assert (= (and d!699106 c!381503) b!2396886))

(assert (= (and d!699106 (not c!381503)) b!2396887))

(assert (= (and b!2396887 c!381502) b!2396882))

(assert (= (and b!2396887 (not c!381502)) b!2396889))

(assert (= (and b!2396889 (not res!1018423)) b!2396895))

(assert (= (and b!2396895 res!1018418) b!2396894))

(assert (= (and b!2396894 res!1018421) b!2396893))

(assert (= (and b!2396893 res!1018417) b!2396892))

(assert (= (and b!2396895 (not res!1018422)) b!2396891))

(assert (= (and b!2396891 res!1018416) b!2396885))

(assert (= (and b!2396885 (not res!1018419)) b!2396888))

(assert (= (and b!2396888 (not res!1018420)) b!2396883))

(assert (= (or b!2396886 b!2396885 b!2396894) bm!146284))

(assert (=> bm!146284 m!2795339))

(declare-fun m!2795541 () Bool)

(assert (=> b!2396883 m!2795541))

(declare-fun m!2795543 () Bool)

(assert (=> b!2396893 m!2795543))

(assert (=> b!2396893 m!2795543))

(declare-fun m!2795545 () Bool)

(assert (=> b!2396893 m!2795545))

(declare-fun m!2795547 () Bool)

(assert (=> b!2396890 m!2795547))

(assert (=> b!2396884 m!2795541))

(assert (=> b!2396884 m!2795541))

(declare-fun m!2795549 () Bool)

(assert (=> b!2396884 m!2795549))

(assert (=> b!2396884 m!2795543))

(assert (=> b!2396884 m!2795549))

(assert (=> b!2396884 m!2795543))

(declare-fun m!2795551 () Bool)

(assert (=> b!2396884 m!2795551))

(assert (=> b!2396892 m!2795541))

(assert (=> d!699106 m!2795339))

(assert (=> d!699106 m!2795467))

(assert (=> b!2396888 m!2795543))

(assert (=> b!2396888 m!2795543))

(assert (=> b!2396888 m!2795545))

(assert (=> b!2396585 d!699106))

(declare-fun d!699122 () Bool)

(assert (=> d!699122 (= (isDefined!4394 (findConcatSeparation!674 (regOne!14558 r!13927) (regTwo!14558 r!13927) Nil!28186 s!9460 s!9460)) (not (isEmpty!16180 (findConcatSeparation!674 (regOne!14558 r!13927) (regTwo!14558 r!13927) Nil!28186 s!9460 s!9460))))))

(declare-fun bs!462934 () Bool)

(assert (= bs!462934 d!699122))

(assert (=> bs!462934 m!2795287))

(declare-fun m!2795553 () Bool)

(assert (=> bs!462934 m!2795553))

(assert (=> b!2396579 d!699122))

(declare-fun d!699124 () Bool)

(declare-fun choose!14168 (Int) Bool)

(assert (=> d!699124 (= (Exists!1085 lambda!89969) (choose!14168 lambda!89969))))

(declare-fun bs!462935 () Bool)

(assert (= bs!462935 d!699124))

(declare-fun m!2795555 () Bool)

(assert (=> bs!462935 m!2795555))

(assert (=> b!2396579 d!699124))

(declare-fun bs!462939 () Bool)

(declare-fun d!699126 () Bool)

(assert (= bs!462939 (and d!699126 b!2396579)))

(declare-fun lambda!89983 () Int)

(assert (=> bs!462939 (= lambda!89983 lambda!89968)))

(assert (=> bs!462939 (not (= lambda!89983 lambda!89969))))

(assert (=> d!699126 true))

(assert (=> d!699126 true))

(assert (=> d!699126 true))

(assert (=> d!699126 (= (isDefined!4394 (findConcatSeparation!674 (regOne!14558 r!13927) (regTwo!14558 r!13927) Nil!28186 s!9460 s!9460)) (Exists!1085 lambda!89983))))

(declare-fun lt!871941 () Unit!41282)

(declare-fun choose!14169 (Regex!7023 Regex!7023 List!28284) Unit!41282)

(assert (=> d!699126 (= lt!871941 (choose!14169 (regOne!14558 r!13927) (regTwo!14558 r!13927) s!9460))))

(assert (=> d!699126 (validRegex!2748 (regOne!14558 r!13927))))

(assert (=> d!699126 (= (lemmaFindConcatSeparationEquivalentToExists!674 (regOne!14558 r!13927) (regTwo!14558 r!13927) s!9460) lt!871941)))

(declare-fun bs!462941 () Bool)

(assert (= bs!462941 d!699126))

(declare-fun m!2795605 () Bool)

(assert (=> bs!462941 m!2795605))

(assert (=> bs!462941 m!2795287))

(declare-fun m!2795607 () Bool)

(assert (=> bs!462941 m!2795607))

(declare-fun m!2795609 () Bool)

(assert (=> bs!462941 m!2795609))

(assert (=> bs!462941 m!2795287))

(assert (=> bs!462941 m!2795289))

(assert (=> b!2396579 d!699126))

(declare-fun bs!462949 () Bool)

(declare-fun d!699146 () Bool)

(assert (= bs!462949 (and d!699146 b!2396579)))

(declare-fun lambda!89995 () Int)

(assert (=> bs!462949 (= lambda!89995 lambda!89968)))

(assert (=> bs!462949 (not (= lambda!89995 lambda!89969))))

(declare-fun bs!462953 () Bool)

(assert (= bs!462953 (and d!699146 d!699126)))

(assert (=> bs!462953 (= lambda!89995 lambda!89983)))

(assert (=> d!699146 true))

(assert (=> d!699146 true))

(assert (=> d!699146 true))

(declare-fun lambda!89998 () Int)

(assert (=> bs!462949 (not (= lambda!89998 lambda!89968))))

(assert (=> bs!462949 (= lambda!89998 lambda!89969)))

(assert (=> bs!462953 (not (= lambda!89998 lambda!89983))))

(declare-fun bs!462956 () Bool)

(assert (= bs!462956 d!699146))

(assert (=> bs!462956 (not (= lambda!89998 lambda!89995))))

(assert (=> d!699146 true))

(assert (=> d!699146 true))

(assert (=> d!699146 true))

(assert (=> d!699146 (= (Exists!1085 lambda!89995) (Exists!1085 lambda!89998))))

(declare-fun lt!871953 () Unit!41282)

(declare-fun choose!14170 (Regex!7023 Regex!7023 List!28284) Unit!41282)

(assert (=> d!699146 (= lt!871953 (choose!14170 (regOne!14558 r!13927) (regTwo!14558 r!13927) s!9460))))

(assert (=> d!699146 (validRegex!2748 (regOne!14558 r!13927))))

(assert (=> d!699146 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!424 (regOne!14558 r!13927) (regTwo!14558 r!13927) s!9460) lt!871953)))

(declare-fun m!2795645 () Bool)

(assert (=> bs!462956 m!2795645))

(declare-fun m!2795647 () Bool)

(assert (=> bs!462956 m!2795647))

(declare-fun m!2795649 () Bool)

(assert (=> bs!462956 m!2795649))

(assert (=> bs!462956 m!2795609))

(assert (=> b!2396579 d!699146))

(declare-fun d!699160 () Bool)

(assert (=> d!699160 (= (Exists!1085 lambda!89968) (choose!14168 lambda!89968))))

(declare-fun bs!462957 () Bool)

(assert (= bs!462957 d!699160))

(declare-fun m!2795655 () Bool)

(assert (=> bs!462957 m!2795655))

(assert (=> b!2396579 d!699160))

(declare-fun b!2396981 () Bool)

(declare-fun res!1018484 () Bool)

(declare-fun e!1527446 () Bool)

(assert (=> b!2396981 (=> (not res!1018484) (not e!1527446))))

(declare-fun lt!871960 () Option!5566)

(assert (=> b!2396981 (= res!1018484 (matchR!3140 (regTwo!14558 r!13927) (_2!16496 (get!8632 lt!871960))))))

(declare-fun b!2396982 () Bool)

(declare-fun e!1527450 () Option!5566)

(assert (=> b!2396982 (= e!1527450 None!5565)))

(declare-fun b!2396983 () Bool)

(declare-fun e!1527449 () Bool)

(assert (=> b!2396983 (= e!1527449 (matchR!3140 (regTwo!14558 r!13927) s!9460))))

(declare-fun b!2396984 () Bool)

(assert (=> b!2396984 (= e!1527446 (= (++!6977 (_1!16496 (get!8632 lt!871960)) (_2!16496 (get!8632 lt!871960))) s!9460))))

(declare-fun b!2396985 () Bool)

(declare-fun e!1527447 () Option!5566)

(assert (=> b!2396985 (= e!1527447 (Some!5565 (tuple2!27911 Nil!28186 s!9460)))))

(declare-fun b!2396987 () Bool)

(declare-fun e!1527448 () Bool)

(assert (=> b!2396987 (= e!1527448 (not (isDefined!4394 lt!871960)))))

(declare-fun d!699162 () Bool)

(assert (=> d!699162 e!1527448))

(declare-fun res!1018486 () Bool)

(assert (=> d!699162 (=> res!1018486 e!1527448)))

(assert (=> d!699162 (= res!1018486 e!1527446)))

(declare-fun res!1018483 () Bool)

(assert (=> d!699162 (=> (not res!1018483) (not e!1527446))))

(assert (=> d!699162 (= res!1018483 (isDefined!4394 lt!871960))))

(assert (=> d!699162 (= lt!871960 e!1527447)))

(declare-fun c!381519 () Bool)

(assert (=> d!699162 (= c!381519 e!1527449)))

(declare-fun res!1018485 () Bool)

(assert (=> d!699162 (=> (not res!1018485) (not e!1527449))))

(assert (=> d!699162 (= res!1018485 (matchR!3140 (regOne!14558 r!13927) Nil!28186))))

(assert (=> d!699162 (validRegex!2748 (regOne!14558 r!13927))))

(assert (=> d!699162 (= (findConcatSeparation!674 (regOne!14558 r!13927) (regTwo!14558 r!13927) Nil!28186 s!9460 s!9460) lt!871960)))

(declare-fun b!2396986 () Bool)

(assert (=> b!2396986 (= e!1527447 e!1527450)))

(declare-fun c!381518 () Bool)

(assert (=> b!2396986 (= c!381518 ((_ is Nil!28186) s!9460))))

(declare-fun b!2396988 () Bool)

(declare-fun res!1018487 () Bool)

(assert (=> b!2396988 (=> (not res!1018487) (not e!1527446))))

(assert (=> b!2396988 (= res!1018487 (matchR!3140 (regOne!14558 r!13927) (_1!16496 (get!8632 lt!871960))))))

(declare-fun b!2396989 () Bool)

(declare-fun lt!871959 () Unit!41282)

(declare-fun lt!871958 () Unit!41282)

(assert (=> b!2396989 (= lt!871959 lt!871958)))

(assert (=> b!2396989 (= (++!6977 (++!6977 Nil!28186 (Cons!28186 (h!33587 s!9460) Nil!28186)) (t!208261 s!9460)) s!9460)))

(assert (=> b!2396989 (= lt!871958 (lemmaMoveElementToOtherListKeepsConcatEq!619 Nil!28186 (h!33587 s!9460) (t!208261 s!9460) s!9460))))

(assert (=> b!2396989 (= e!1527450 (findConcatSeparation!674 (regOne!14558 r!13927) (regTwo!14558 r!13927) (++!6977 Nil!28186 (Cons!28186 (h!33587 s!9460) Nil!28186)) (t!208261 s!9460) s!9460))))

(assert (= (and d!699162 res!1018485) b!2396983))

(assert (= (and d!699162 c!381519) b!2396985))

(assert (= (and d!699162 (not c!381519)) b!2396986))

(assert (= (and b!2396986 c!381518) b!2396982))

(assert (= (and b!2396986 (not c!381518)) b!2396989))

(assert (= (and d!699162 res!1018483) b!2396988))

(assert (= (and b!2396988 res!1018487) b!2396981))

(assert (= (and b!2396981 res!1018484) b!2396984))

(assert (= (and d!699162 (not res!1018486)) b!2396987))

(declare-fun m!2795669 () Bool)

(assert (=> b!2396988 m!2795669))

(declare-fun m!2795671 () Bool)

(assert (=> b!2396988 m!2795671))

(assert (=> b!2396984 m!2795669))

(declare-fun m!2795673 () Bool)

(assert (=> b!2396984 m!2795673))

(declare-fun m!2795675 () Bool)

(assert (=> b!2396983 m!2795675))

(declare-fun m!2795677 () Bool)

(assert (=> d!699162 m!2795677))

(declare-fun m!2795679 () Bool)

(assert (=> d!699162 m!2795679))

(assert (=> d!699162 m!2795609))

(assert (=> b!2396987 m!2795677))

(assert (=> b!2396981 m!2795669))

(declare-fun m!2795681 () Bool)

(assert (=> b!2396981 m!2795681))

(assert (=> b!2396989 m!2795475))

(assert (=> b!2396989 m!2795475))

(assert (=> b!2396989 m!2795477))

(assert (=> b!2396989 m!2795479))

(assert (=> b!2396989 m!2795475))

(declare-fun m!2795683 () Bool)

(assert (=> b!2396989 m!2795683))

(assert (=> b!2396579 d!699162))

(declare-fun d!699168 () Bool)

(assert (=> d!699168 (= (isDefined!4394 (findConcatSeparation!674 (h!33588 l!9164) (generalisedConcat!124 (t!208262 l!9164)) Nil!28186 s!9460 s!9460)) (not (isEmpty!16180 (findConcatSeparation!674 (h!33588 l!9164) (generalisedConcat!124 (t!208262 l!9164)) Nil!28186 s!9460 s!9460))))))

(declare-fun bs!462958 () Bool)

(assert (= bs!462958 d!699168))

(assert (=> bs!462958 m!2795303))

(declare-fun m!2795685 () Bool)

(assert (=> bs!462958 m!2795685))

(assert (=> b!2396580 d!699168))

(declare-fun b!2397024 () Bool)

(declare-fun res!1018489 () Bool)

(declare-fun e!1527458 () Bool)

(assert (=> b!2397024 (=> (not res!1018489) (not e!1527458))))

(declare-fun lt!871963 () Option!5566)

(assert (=> b!2397024 (= res!1018489 (matchR!3140 (generalisedConcat!124 (t!208262 l!9164)) (_2!16496 (get!8632 lt!871963))))))

(declare-fun b!2397025 () Bool)

(declare-fun e!1527463 () Option!5566)

(assert (=> b!2397025 (= e!1527463 None!5565)))

(declare-fun b!2397026 () Bool)

(declare-fun e!1527462 () Bool)

(assert (=> b!2397026 (= e!1527462 (matchR!3140 (generalisedConcat!124 (t!208262 l!9164)) s!9460))))

(declare-fun b!2397027 () Bool)

(assert (=> b!2397027 (= e!1527458 (= (++!6977 (_1!16496 (get!8632 lt!871963)) (_2!16496 (get!8632 lt!871963))) s!9460))))

(declare-fun b!2397028 () Bool)

(declare-fun e!1527460 () Option!5566)

(assert (=> b!2397028 (= e!1527460 (Some!5565 (tuple2!27911 Nil!28186 s!9460)))))

(declare-fun b!2397030 () Bool)

(declare-fun e!1527461 () Bool)

(assert (=> b!2397030 (= e!1527461 (not (isDefined!4394 lt!871963)))))

(declare-fun d!699170 () Bool)

(assert (=> d!699170 e!1527461))

(declare-fun res!1018491 () Bool)

(assert (=> d!699170 (=> res!1018491 e!1527461)))

(assert (=> d!699170 (= res!1018491 e!1527458)))

(declare-fun res!1018488 () Bool)

(assert (=> d!699170 (=> (not res!1018488) (not e!1527458))))

(assert (=> d!699170 (= res!1018488 (isDefined!4394 lt!871963))))

(assert (=> d!699170 (= lt!871963 e!1527460)))

(declare-fun c!381521 () Bool)

(assert (=> d!699170 (= c!381521 e!1527462)))

(declare-fun res!1018490 () Bool)

(assert (=> d!699170 (=> (not res!1018490) (not e!1527462))))

(assert (=> d!699170 (= res!1018490 (matchR!3140 (h!33588 l!9164) Nil!28186))))

(assert (=> d!699170 (validRegex!2748 (h!33588 l!9164))))

(assert (=> d!699170 (= (findConcatSeparation!674 (h!33588 l!9164) (generalisedConcat!124 (t!208262 l!9164)) Nil!28186 s!9460 s!9460) lt!871963)))

(declare-fun b!2397029 () Bool)

(assert (=> b!2397029 (= e!1527460 e!1527463)))

(declare-fun c!381520 () Bool)

(assert (=> b!2397029 (= c!381520 ((_ is Nil!28186) s!9460))))

(declare-fun b!2397031 () Bool)

(declare-fun res!1018492 () Bool)

(assert (=> b!2397031 (=> (not res!1018492) (not e!1527458))))

(assert (=> b!2397031 (= res!1018492 (matchR!3140 (h!33588 l!9164) (_1!16496 (get!8632 lt!871963))))))

(declare-fun b!2397032 () Bool)

(declare-fun lt!871962 () Unit!41282)

(declare-fun lt!871961 () Unit!41282)

(assert (=> b!2397032 (= lt!871962 lt!871961)))

(assert (=> b!2397032 (= (++!6977 (++!6977 Nil!28186 (Cons!28186 (h!33587 s!9460) Nil!28186)) (t!208261 s!9460)) s!9460)))

(assert (=> b!2397032 (= lt!871961 (lemmaMoveElementToOtherListKeepsConcatEq!619 Nil!28186 (h!33587 s!9460) (t!208261 s!9460) s!9460))))

(assert (=> b!2397032 (= e!1527463 (findConcatSeparation!674 (h!33588 l!9164) (generalisedConcat!124 (t!208262 l!9164)) (++!6977 Nil!28186 (Cons!28186 (h!33587 s!9460) Nil!28186)) (t!208261 s!9460) s!9460))))

(assert (= (and d!699170 res!1018490) b!2397026))

(assert (= (and d!699170 c!381521) b!2397028))

(assert (= (and d!699170 (not c!381521)) b!2397029))

(assert (= (and b!2397029 c!381520) b!2397025))

(assert (= (and b!2397029 (not c!381520)) b!2397032))

(assert (= (and d!699170 res!1018488) b!2397031))

(assert (= (and b!2397031 res!1018492) b!2397024))

(assert (= (and b!2397024 res!1018489) b!2397027))

(assert (= (and d!699170 (not res!1018491)) b!2397030))

(declare-fun m!2795687 () Bool)

(assert (=> b!2397031 m!2795687))

(declare-fun m!2795689 () Bool)

(assert (=> b!2397031 m!2795689))

(assert (=> b!2397027 m!2795687))

(declare-fun m!2795691 () Bool)

(assert (=> b!2397027 m!2795691))

(assert (=> b!2397026 m!2795301))

(declare-fun m!2795693 () Bool)

(assert (=> b!2397026 m!2795693))

(declare-fun m!2795695 () Bool)

(assert (=> d!699170 m!2795695))

(declare-fun m!2795697 () Bool)

(assert (=> d!699170 m!2795697))

(assert (=> d!699170 m!2795341))

(assert (=> b!2397030 m!2795695))

(assert (=> b!2397024 m!2795687))

(assert (=> b!2397024 m!2795301))

(declare-fun m!2795699 () Bool)

(assert (=> b!2397024 m!2795699))

(assert (=> b!2397032 m!2795475))

(assert (=> b!2397032 m!2795475))

(assert (=> b!2397032 m!2795477))

(assert (=> b!2397032 m!2795479))

(assert (=> b!2397032 m!2795301))

(assert (=> b!2397032 m!2795475))

(declare-fun m!2795701 () Bool)

(assert (=> b!2397032 m!2795701))

(assert (=> b!2396580 d!699170))

(declare-fun bs!462960 () Bool)

(declare-fun d!699174 () Bool)

(assert (= bs!462960 (and d!699174 start!235152)))

(declare-fun lambda!90001 () Int)

(assert (=> bs!462960 (= lambda!90001 lambda!89967)))

(declare-fun e!1527483 () Bool)

(assert (=> d!699174 e!1527483))

(declare-fun res!1018497 () Bool)

(assert (=> d!699174 (=> (not res!1018497) (not e!1527483))))

(declare-fun lt!871966 () Regex!7023)

(assert (=> d!699174 (= res!1018497 (validRegex!2748 lt!871966))))

(declare-fun e!1527486 () Regex!7023)

(assert (=> d!699174 (= lt!871966 e!1527486)))

(declare-fun c!381533 () Bool)

(declare-fun e!1527487 () Bool)

(assert (=> d!699174 (= c!381533 e!1527487)))

(declare-fun res!1018498 () Bool)

(assert (=> d!699174 (=> (not res!1018498) (not e!1527487))))

(assert (=> d!699174 (= res!1018498 ((_ is Cons!28187) (t!208262 l!9164)))))

(assert (=> d!699174 (forall!5657 (t!208262 l!9164) lambda!90001)))

(assert (=> d!699174 (= (generalisedConcat!124 (t!208262 l!9164)) lt!871966)))

(declare-fun b!2397063 () Bool)

(declare-fun e!1527482 () Bool)

(assert (=> b!2397063 (= e!1527483 e!1527482)))

(declare-fun c!381531 () Bool)

(assert (=> b!2397063 (= c!381531 (isEmpty!16178 (t!208262 l!9164)))))

(declare-fun b!2397064 () Bool)

(declare-fun e!1527484 () Regex!7023)

(assert (=> b!2397064 (= e!1527486 e!1527484)))

(declare-fun c!381530 () Bool)

(assert (=> b!2397064 (= c!381530 ((_ is Cons!28187) (t!208262 l!9164)))))

(declare-fun b!2397065 () Bool)

(assert (=> b!2397065 (= e!1527484 EmptyExpr!7023)))

(declare-fun b!2397066 () Bool)

(assert (=> b!2397066 (= e!1527487 (isEmpty!16178 (t!208262 (t!208262 l!9164))))))

(declare-fun b!2397067 () Bool)

(declare-fun e!1527485 () Bool)

(assert (=> b!2397067 (= e!1527485 (= lt!871966 (head!5277 (t!208262 l!9164))))))

(declare-fun b!2397068 () Bool)

(declare-fun isConcat!93 (Regex!7023) Bool)

(assert (=> b!2397068 (= e!1527485 (isConcat!93 lt!871966))))

(declare-fun b!2397069 () Bool)

(assert (=> b!2397069 (= e!1527482 e!1527485)))

(declare-fun c!381532 () Bool)

(assert (=> b!2397069 (= c!381532 (isEmpty!16178 (tail!3547 (t!208262 l!9164))))))

(declare-fun b!2397070 () Bool)

(assert (=> b!2397070 (= e!1527486 (h!33588 (t!208262 l!9164)))))

(declare-fun b!2397071 () Bool)

(assert (=> b!2397071 (= e!1527484 (Concat!11659 (h!33588 (t!208262 l!9164)) (generalisedConcat!124 (t!208262 (t!208262 l!9164)))))))

(declare-fun b!2397072 () Bool)

(declare-fun isEmptyExpr!93 (Regex!7023) Bool)

(assert (=> b!2397072 (= e!1527482 (isEmptyExpr!93 lt!871966))))

(assert (= (and d!699174 res!1018498) b!2397066))

(assert (= (and d!699174 c!381533) b!2397070))

(assert (= (and d!699174 (not c!381533)) b!2397064))

(assert (= (and b!2397064 c!381530) b!2397071))

(assert (= (and b!2397064 (not c!381530)) b!2397065))

(assert (= (and d!699174 res!1018497) b!2397063))

(assert (= (and b!2397063 c!381531) b!2397072))

(assert (= (and b!2397063 (not c!381531)) b!2397069))

(assert (= (and b!2397069 c!381532) b!2397067))

(assert (= (and b!2397069 (not c!381532)) b!2397068))

(declare-fun m!2795703 () Bool)

(assert (=> b!2397063 m!2795703))

(declare-fun m!2795705 () Bool)

(assert (=> b!2397069 m!2795705))

(assert (=> b!2397069 m!2795705))

(declare-fun m!2795707 () Bool)

(assert (=> b!2397069 m!2795707))

(declare-fun m!2795709 () Bool)

(assert (=> b!2397066 m!2795709))

(declare-fun m!2795711 () Bool)

(assert (=> b!2397071 m!2795711))

(declare-fun m!2795713 () Bool)

(assert (=> b!2397068 m!2795713))

(declare-fun m!2795715 () Bool)

(assert (=> b!2397067 m!2795715))

(declare-fun m!2795717 () Bool)

(assert (=> d!699174 m!2795717))

(declare-fun m!2795719 () Bool)

(assert (=> d!699174 m!2795719))

(declare-fun m!2795721 () Bool)

(assert (=> b!2397072 m!2795721))

(assert (=> b!2396580 d!699174))

(declare-fun d!699176 () Bool)

(assert (=> d!699176 (= (tail!3547 l!9164) (t!208262 l!9164))))

(assert (=> b!2396562 d!699176))

(declare-fun d!699178 () Bool)

(assert (=> d!699178 (= (isEmpty!16178 lt!871872) ((_ is Nil!28187) lt!871872))))

(assert (=> b!2396562 d!699178))

(declare-fun d!699180 () Bool)

(assert (=> d!699180 (matchR!3140 (Concat!11659 lt!871876 EmptyExpr!7023) (++!6977 s!9460 Nil!28186))))

(declare-fun lt!871969 () Unit!41282)

(declare-fun choose!14174 (Regex!7023 Regex!7023 List!28284 List!28284) Unit!41282)

(assert (=> d!699180 (= lt!871969 (choose!14174 lt!871876 EmptyExpr!7023 s!9460 Nil!28186))))

(declare-fun e!1527490 () Bool)

(assert (=> d!699180 e!1527490))

(declare-fun res!1018501 () Bool)

(assert (=> d!699180 (=> (not res!1018501) (not e!1527490))))

(assert (=> d!699180 (= res!1018501 (validRegex!2748 lt!871876))))

(assert (=> d!699180 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!60 lt!871876 EmptyExpr!7023 s!9460 Nil!28186) lt!871969)))

(declare-fun b!2397075 () Bool)

(assert (=> b!2397075 (= e!1527490 (validRegex!2748 EmptyExpr!7023))))

(assert (= (and d!699180 res!1018501) b!2397075))

(declare-fun m!2795723 () Bool)

(assert (=> d!699180 m!2795723))

(assert (=> d!699180 m!2795723))

(declare-fun m!2795725 () Bool)

(assert (=> d!699180 m!2795725))

(declare-fun m!2795727 () Bool)

(assert (=> d!699180 m!2795727))

(assert (=> d!699180 m!2795467))

(declare-fun m!2795729 () Bool)

(assert (=> b!2397075 m!2795729))

(assert (=> b!2396586 d!699180))

(declare-fun b!2397076 () Bool)

(declare-fun e!1527495 () Bool)

(declare-fun lt!871970 () Bool)

(assert (=> b!2397076 (= e!1527495 (not lt!871970))))

(declare-fun b!2397077 () Bool)

(declare-fun e!1527491 () Bool)

(assert (=> b!2397077 (= e!1527491 (not (= (head!5279 call!146261) (c!381427 lt!871882))))))

(declare-fun b!2397078 () Bool)

(declare-fun e!1527494 () Bool)

(assert (=> b!2397078 (= e!1527494 (matchR!3140 (derivativeStep!1730 lt!871882 (head!5279 call!146261)) (tail!3549 call!146261)))))

(declare-fun b!2397079 () Bool)

(declare-fun e!1527497 () Bool)

(assert (=> b!2397079 (= e!1527497 e!1527491)))

(declare-fun res!1018505 () Bool)

(assert (=> b!2397079 (=> res!1018505 e!1527491)))

(declare-fun call!146292 () Bool)

(assert (=> b!2397079 (= res!1018505 call!146292)))

(declare-fun b!2397080 () Bool)

(declare-fun e!1527492 () Bool)

(assert (=> b!2397080 (= e!1527492 (= lt!871970 call!146292))))

(declare-fun b!2397081 () Bool)

(assert (=> b!2397081 (= e!1527492 e!1527495)))

(declare-fun c!381534 () Bool)

(assert (=> b!2397081 (= c!381534 ((_ is EmptyLang!7023) lt!871882))))

(declare-fun b!2397082 () Bool)

(declare-fun res!1018506 () Bool)

(assert (=> b!2397082 (=> res!1018506 e!1527491)))

(assert (=> b!2397082 (= res!1018506 (not (isEmpty!16177 (tail!3549 call!146261))))))

(declare-fun b!2397083 () Bool)

(declare-fun res!1018509 () Bool)

(declare-fun e!1527493 () Bool)

(assert (=> b!2397083 (=> res!1018509 e!1527493)))

(assert (=> b!2397083 (= res!1018509 (not ((_ is ElementMatch!7023) lt!871882)))))

(assert (=> b!2397083 (= e!1527495 e!1527493)))

(declare-fun b!2397084 () Bool)

(assert (=> b!2397084 (= e!1527494 (nullable!2072 lt!871882))))

(declare-fun bm!146287 () Bool)

(assert (=> bm!146287 (= call!146292 (isEmpty!16177 call!146261))))

(declare-fun b!2397086 () Bool)

(declare-fun e!1527496 () Bool)

(assert (=> b!2397086 (= e!1527496 (= (head!5279 call!146261) (c!381427 lt!871882)))))

(declare-fun b!2397087 () Bool)

(declare-fun res!1018503 () Bool)

(assert (=> b!2397087 (=> (not res!1018503) (not e!1527496))))

(assert (=> b!2397087 (= res!1018503 (isEmpty!16177 (tail!3549 call!146261)))))

(declare-fun b!2397085 () Bool)

(assert (=> b!2397085 (= e!1527493 e!1527497)))

(declare-fun res!1018502 () Bool)

(assert (=> b!2397085 (=> (not res!1018502) (not e!1527497))))

(assert (=> b!2397085 (= res!1018502 (not lt!871970))))

(declare-fun d!699182 () Bool)

(assert (=> d!699182 e!1527492))

(declare-fun c!381535 () Bool)

(assert (=> d!699182 (= c!381535 ((_ is EmptyExpr!7023) lt!871882))))

(assert (=> d!699182 (= lt!871970 e!1527494)))

(declare-fun c!381536 () Bool)

(assert (=> d!699182 (= c!381536 (isEmpty!16177 call!146261))))

(assert (=> d!699182 (validRegex!2748 lt!871882)))

(assert (=> d!699182 (= (matchR!3140 lt!871882 call!146261) lt!871970)))

(declare-fun b!2397088 () Bool)

(declare-fun res!1018507 () Bool)

(assert (=> b!2397088 (=> (not res!1018507) (not e!1527496))))

(assert (=> b!2397088 (= res!1018507 (not call!146292))))

(declare-fun b!2397089 () Bool)

(declare-fun res!1018508 () Bool)

(assert (=> b!2397089 (=> res!1018508 e!1527493)))

(assert (=> b!2397089 (= res!1018508 e!1527496)))

(declare-fun res!1018504 () Bool)

(assert (=> b!2397089 (=> (not res!1018504) (not e!1527496))))

(assert (=> b!2397089 (= res!1018504 lt!871970)))

(assert (= (and d!699182 c!381536) b!2397084))

(assert (= (and d!699182 (not c!381536)) b!2397078))

(assert (= (and d!699182 c!381535) b!2397080))

(assert (= (and d!699182 (not c!381535)) b!2397081))

(assert (= (and b!2397081 c!381534) b!2397076))

(assert (= (and b!2397081 (not c!381534)) b!2397083))

(assert (= (and b!2397083 (not res!1018509)) b!2397089))

(assert (= (and b!2397089 res!1018504) b!2397088))

(assert (= (and b!2397088 res!1018507) b!2397087))

(assert (= (and b!2397087 res!1018503) b!2397086))

(assert (= (and b!2397089 (not res!1018508)) b!2397085))

(assert (= (and b!2397085 res!1018502) b!2397079))

(assert (= (and b!2397079 (not res!1018505)) b!2397082))

(assert (= (and b!2397082 (not res!1018506)) b!2397077))

(assert (= (or b!2397080 b!2397079 b!2397088) bm!146287))

(declare-fun m!2795731 () Bool)

(assert (=> bm!146287 m!2795731))

(declare-fun m!2795733 () Bool)

(assert (=> b!2397077 m!2795733))

(declare-fun m!2795735 () Bool)

(assert (=> b!2397087 m!2795735))

(assert (=> b!2397087 m!2795735))

(declare-fun m!2795737 () Bool)

(assert (=> b!2397087 m!2795737))

(declare-fun m!2795739 () Bool)

(assert (=> b!2397084 m!2795739))

(assert (=> b!2397078 m!2795733))

(assert (=> b!2397078 m!2795733))

(declare-fun m!2795741 () Bool)

(assert (=> b!2397078 m!2795741))

(assert (=> b!2397078 m!2795735))

(assert (=> b!2397078 m!2795741))

(assert (=> b!2397078 m!2795735))

(declare-fun m!2795743 () Bool)

(assert (=> b!2397078 m!2795743))

(assert (=> b!2397086 m!2795733))

(assert (=> d!699182 m!2795731))

(declare-fun m!2795745 () Bool)

(assert (=> d!699182 m!2795745))

(assert (=> b!2397082 m!2795735))

(assert (=> b!2397082 m!2795735))

(assert (=> b!2397082 m!2795737))

(assert (=> b!2396586 d!699182))

(declare-fun d!699184 () Bool)

(assert (=> d!699184 (isDefined!4394 (findConcatSeparation!674 lt!871876 EmptyExpr!7023 Nil!28186 s!9460 s!9460))))

(declare-fun lt!871973 () Unit!41282)

(declare-fun choose!14176 (Regex!7023 Regex!7023 List!28284) Unit!41282)

(assert (=> d!699184 (= lt!871973 (choose!14176 lt!871876 EmptyExpr!7023 s!9460))))

(assert (=> d!699184 (validRegex!2748 lt!871876)))

(assert (=> d!699184 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!42 lt!871876 EmptyExpr!7023 s!9460) lt!871973)))

(declare-fun bs!462961 () Bool)

(assert (= bs!462961 d!699184))

(declare-fun m!2795747 () Bool)

(assert (=> bs!462961 m!2795747))

(assert (=> bs!462961 m!2795747))

(declare-fun m!2795749 () Bool)

(assert (=> bs!462961 m!2795749))

(declare-fun m!2795751 () Bool)

(assert (=> bs!462961 m!2795751))

(assert (=> bs!462961 m!2795467))

(assert (=> b!2396586 d!699184))

(declare-fun bs!462962 () Bool)

(declare-fun d!699186 () Bool)

(assert (= bs!462962 (and d!699186 start!235152)))

(declare-fun lambda!90002 () Int)

(assert (=> bs!462962 (= lambda!90002 lambda!89967)))

(declare-fun bs!462963 () Bool)

(assert (= bs!462963 (and d!699186 d!699174)))

(assert (=> bs!462963 (= lambda!90002 lambda!90001)))

(declare-fun e!1527499 () Bool)

(assert (=> d!699186 e!1527499))

(declare-fun res!1018510 () Bool)

(assert (=> d!699186 (=> (not res!1018510) (not e!1527499))))

(declare-fun lt!871974 () Regex!7023)

(assert (=> d!699186 (= res!1018510 (validRegex!2748 lt!871974))))

(declare-fun e!1527502 () Regex!7023)

(assert (=> d!699186 (= lt!871974 e!1527502)))

(declare-fun c!381540 () Bool)

(declare-fun e!1527503 () Bool)

(assert (=> d!699186 (= c!381540 e!1527503)))

(declare-fun res!1018511 () Bool)

(assert (=> d!699186 (=> (not res!1018511) (not e!1527503))))

(assert (=> d!699186 (= res!1018511 ((_ is Cons!28187) lt!871872))))

(assert (=> d!699186 (forall!5657 lt!871872 lambda!90002)))

(assert (=> d!699186 (= (generalisedConcat!124 lt!871872) lt!871974)))

(declare-fun b!2397090 () Bool)

(declare-fun e!1527498 () Bool)

(assert (=> b!2397090 (= e!1527499 e!1527498)))

(declare-fun c!381538 () Bool)

(assert (=> b!2397090 (= c!381538 (isEmpty!16178 lt!871872))))

(declare-fun b!2397091 () Bool)

(declare-fun e!1527500 () Regex!7023)

(assert (=> b!2397091 (= e!1527502 e!1527500)))

(declare-fun c!381537 () Bool)

(assert (=> b!2397091 (= c!381537 ((_ is Cons!28187) lt!871872))))

(declare-fun b!2397092 () Bool)

(assert (=> b!2397092 (= e!1527500 EmptyExpr!7023)))

(declare-fun b!2397093 () Bool)

(assert (=> b!2397093 (= e!1527503 (isEmpty!16178 (t!208262 lt!871872)))))

(declare-fun b!2397094 () Bool)

(declare-fun e!1527501 () Bool)

(assert (=> b!2397094 (= e!1527501 (= lt!871974 (head!5277 lt!871872)))))

(declare-fun b!2397095 () Bool)

(assert (=> b!2397095 (= e!1527501 (isConcat!93 lt!871974))))

(declare-fun b!2397096 () Bool)

(assert (=> b!2397096 (= e!1527498 e!1527501)))

(declare-fun c!381539 () Bool)

(assert (=> b!2397096 (= c!381539 (isEmpty!16178 (tail!3547 lt!871872)))))

(declare-fun b!2397097 () Bool)

(assert (=> b!2397097 (= e!1527502 (h!33588 lt!871872))))

(declare-fun b!2397098 () Bool)

(assert (=> b!2397098 (= e!1527500 (Concat!11659 (h!33588 lt!871872) (generalisedConcat!124 (t!208262 lt!871872))))))

(declare-fun b!2397099 () Bool)

(assert (=> b!2397099 (= e!1527498 (isEmptyExpr!93 lt!871974))))

(assert (= (and d!699186 res!1018511) b!2397093))

(assert (= (and d!699186 c!381540) b!2397097))

(assert (= (and d!699186 (not c!381540)) b!2397091))

(assert (= (and b!2397091 c!381537) b!2397098))

(assert (= (and b!2397091 (not c!381537)) b!2397092))

(assert (= (and d!699186 res!1018510) b!2397090))

(assert (= (and b!2397090 c!381538) b!2397099))

(assert (= (and b!2397090 (not c!381538)) b!2397096))

(assert (= (and b!2397096 c!381539) b!2397094))

(assert (= (and b!2397096 (not c!381539)) b!2397095))

(assert (=> b!2397090 m!2795311))

(declare-fun m!2795753 () Bool)

(assert (=> b!2397096 m!2795753))

(assert (=> b!2397096 m!2795753))

(declare-fun m!2795755 () Bool)

(assert (=> b!2397096 m!2795755))

(declare-fun m!2795757 () Bool)

(assert (=> b!2397093 m!2795757))

(declare-fun m!2795759 () Bool)

(assert (=> b!2397098 m!2795759))

(declare-fun m!2795761 () Bool)

(assert (=> b!2397095 m!2795761))

(declare-fun m!2795763 () Bool)

(assert (=> b!2397094 m!2795763))

(declare-fun m!2795765 () Bool)

(assert (=> d!699186 m!2795765))

(declare-fun m!2795767 () Bool)

(assert (=> d!699186 m!2795767))

(declare-fun m!2795769 () Bool)

(assert (=> b!2397099 m!2795769))

(assert (=> bm!146258 d!699186))

(declare-fun d!699188 () Bool)

(assert (=> d!699188 (= (head!5277 l!9164) (h!33588 l!9164))))

(assert (=> bm!146253 d!699188))

(declare-fun b!2397100 () Bool)

(declare-fun e!1527508 () Bool)

(declare-fun lt!871975 () Bool)

(assert (=> b!2397100 (= e!1527508 (not lt!871975))))

(declare-fun b!2397101 () Bool)

(declare-fun e!1527504 () Bool)

(assert (=> b!2397101 (= e!1527504 (not (= (head!5279 (ite c!381425 s!9460 call!146261)) (c!381427 (ite c!381425 lt!871882 (Concat!11659 lt!871876 EmptyExpr!7023))))))))

(declare-fun b!2397102 () Bool)

(declare-fun e!1527507 () Bool)

(assert (=> b!2397102 (= e!1527507 (matchR!3140 (derivativeStep!1730 (ite c!381425 lt!871882 (Concat!11659 lt!871876 EmptyExpr!7023)) (head!5279 (ite c!381425 s!9460 call!146261))) (tail!3549 (ite c!381425 s!9460 call!146261))))))

(declare-fun b!2397103 () Bool)

(declare-fun e!1527510 () Bool)

(assert (=> b!2397103 (= e!1527510 e!1527504)))

(declare-fun res!1018515 () Bool)

(assert (=> b!2397103 (=> res!1018515 e!1527504)))

(declare-fun call!146293 () Bool)

(assert (=> b!2397103 (= res!1018515 call!146293)))

(declare-fun b!2397104 () Bool)

(declare-fun e!1527505 () Bool)

(assert (=> b!2397104 (= e!1527505 (= lt!871975 call!146293))))

(declare-fun b!2397105 () Bool)

(assert (=> b!2397105 (= e!1527505 e!1527508)))

(declare-fun c!381541 () Bool)

(assert (=> b!2397105 (= c!381541 ((_ is EmptyLang!7023) (ite c!381425 lt!871882 (Concat!11659 lt!871876 EmptyExpr!7023))))))

(declare-fun b!2397106 () Bool)

(declare-fun res!1018516 () Bool)

(assert (=> b!2397106 (=> res!1018516 e!1527504)))

(assert (=> b!2397106 (= res!1018516 (not (isEmpty!16177 (tail!3549 (ite c!381425 s!9460 call!146261)))))))

(declare-fun b!2397107 () Bool)

(declare-fun res!1018519 () Bool)

(declare-fun e!1527506 () Bool)

(assert (=> b!2397107 (=> res!1018519 e!1527506)))

(assert (=> b!2397107 (= res!1018519 (not ((_ is ElementMatch!7023) (ite c!381425 lt!871882 (Concat!11659 lt!871876 EmptyExpr!7023)))))))

(assert (=> b!2397107 (= e!1527508 e!1527506)))

(declare-fun b!2397108 () Bool)

(assert (=> b!2397108 (= e!1527507 (nullable!2072 (ite c!381425 lt!871882 (Concat!11659 lt!871876 EmptyExpr!7023))))))

(declare-fun bm!146288 () Bool)

(assert (=> bm!146288 (= call!146293 (isEmpty!16177 (ite c!381425 s!9460 call!146261)))))

(declare-fun b!2397110 () Bool)

(declare-fun e!1527509 () Bool)

(assert (=> b!2397110 (= e!1527509 (= (head!5279 (ite c!381425 s!9460 call!146261)) (c!381427 (ite c!381425 lt!871882 (Concat!11659 lt!871876 EmptyExpr!7023)))))))

(declare-fun b!2397111 () Bool)

(declare-fun res!1018513 () Bool)

(assert (=> b!2397111 (=> (not res!1018513) (not e!1527509))))

(assert (=> b!2397111 (= res!1018513 (isEmpty!16177 (tail!3549 (ite c!381425 s!9460 call!146261))))))

(declare-fun b!2397109 () Bool)

(assert (=> b!2397109 (= e!1527506 e!1527510)))

(declare-fun res!1018512 () Bool)

(assert (=> b!2397109 (=> (not res!1018512) (not e!1527510))))

(assert (=> b!2397109 (= res!1018512 (not lt!871975))))

(declare-fun d!699190 () Bool)

(assert (=> d!699190 e!1527505))

(declare-fun c!381542 () Bool)

(assert (=> d!699190 (= c!381542 ((_ is EmptyExpr!7023) (ite c!381425 lt!871882 (Concat!11659 lt!871876 EmptyExpr!7023))))))

(assert (=> d!699190 (= lt!871975 e!1527507)))

(declare-fun c!381543 () Bool)

(assert (=> d!699190 (= c!381543 (isEmpty!16177 (ite c!381425 s!9460 call!146261)))))

(assert (=> d!699190 (validRegex!2748 (ite c!381425 lt!871882 (Concat!11659 lt!871876 EmptyExpr!7023)))))

(assert (=> d!699190 (= (matchR!3140 (ite c!381425 lt!871882 (Concat!11659 lt!871876 EmptyExpr!7023)) (ite c!381425 s!9460 call!146261)) lt!871975)))

(declare-fun b!2397112 () Bool)

(declare-fun res!1018517 () Bool)

(assert (=> b!2397112 (=> (not res!1018517) (not e!1527509))))

(assert (=> b!2397112 (= res!1018517 (not call!146293))))

(declare-fun b!2397113 () Bool)

(declare-fun res!1018518 () Bool)

(assert (=> b!2397113 (=> res!1018518 e!1527506)))

(assert (=> b!2397113 (= res!1018518 e!1527509)))

(declare-fun res!1018514 () Bool)

(assert (=> b!2397113 (=> (not res!1018514) (not e!1527509))))

(assert (=> b!2397113 (= res!1018514 lt!871975)))

(assert (= (and d!699190 c!381543) b!2397108))

(assert (= (and d!699190 (not c!381543)) b!2397102))

(assert (= (and d!699190 c!381542) b!2397104))

(assert (= (and d!699190 (not c!381542)) b!2397105))

(assert (= (and b!2397105 c!381541) b!2397100))

(assert (= (and b!2397105 (not c!381541)) b!2397107))

(assert (= (and b!2397107 (not res!1018519)) b!2397113))

(assert (= (and b!2397113 res!1018514) b!2397112))

(assert (= (and b!2397112 res!1018517) b!2397111))

(assert (= (and b!2397111 res!1018513) b!2397110))

(assert (= (and b!2397113 (not res!1018518)) b!2397109))

(assert (= (and b!2397109 res!1018512) b!2397103))

(assert (= (and b!2397103 (not res!1018515)) b!2397106))

(assert (= (and b!2397106 (not res!1018516)) b!2397101))

(assert (= (or b!2397104 b!2397103 b!2397112) bm!146288))

(declare-fun m!2795771 () Bool)

(assert (=> bm!146288 m!2795771))

(declare-fun m!2795773 () Bool)

(assert (=> b!2397101 m!2795773))

(declare-fun m!2795775 () Bool)

(assert (=> b!2397111 m!2795775))

(assert (=> b!2397111 m!2795775))

(declare-fun m!2795777 () Bool)

(assert (=> b!2397111 m!2795777))

(declare-fun m!2795779 () Bool)

(assert (=> b!2397108 m!2795779))

(assert (=> b!2397102 m!2795773))

(assert (=> b!2397102 m!2795773))

(declare-fun m!2795781 () Bool)

(assert (=> b!2397102 m!2795781))

(assert (=> b!2397102 m!2795775))

(assert (=> b!2397102 m!2795781))

(assert (=> b!2397102 m!2795775))

(declare-fun m!2795783 () Bool)

(assert (=> b!2397102 m!2795783))

(assert (=> b!2397110 m!2795773))

(assert (=> d!699190 m!2795771))

(declare-fun m!2795785 () Bool)

(assert (=> d!699190 m!2795785))

(assert (=> b!2397106 m!2795775))

(assert (=> b!2397106 m!2795775))

(assert (=> b!2397106 m!2795777))

(assert (=> bm!146252 d!699190))

(declare-fun b!2397133 () Bool)

(declare-fun e!1527530 () Bool)

(declare-fun e!1527527 () Bool)

(assert (=> b!2397133 (= e!1527530 e!1527527)))

(declare-fun c!381548 () Bool)

(assert (=> b!2397133 (= c!381548 ((_ is Star!7023) lt!871885))))

(declare-fun b!2397134 () Bool)

(declare-fun e!1527529 () Bool)

(declare-fun e!1527528 () Bool)

(assert (=> b!2397134 (= e!1527529 e!1527528)))

(declare-fun res!1018533 () Bool)

(assert (=> b!2397134 (=> (not res!1018533) (not e!1527528))))

(declare-fun call!146301 () Bool)

(assert (=> b!2397134 (= res!1018533 call!146301)))

(declare-fun b!2397135 () Bool)

(declare-fun res!1018534 () Bool)

(assert (=> b!2397135 (=> res!1018534 e!1527529)))

(assert (=> b!2397135 (= res!1018534 (not ((_ is Concat!11659) lt!871885)))))

(declare-fun e!1527531 () Bool)

(assert (=> b!2397135 (= e!1527531 e!1527529)))

(declare-fun b!2397136 () Bool)

(declare-fun call!146300 () Bool)

(assert (=> b!2397136 (= e!1527528 call!146300)))

(declare-fun bm!146295 () Bool)

(declare-fun call!146302 () Bool)

(declare-fun c!381549 () Bool)

(assert (=> bm!146295 (= call!146302 (validRegex!2748 (ite c!381548 (reg!7352 lt!871885) (ite c!381549 (regOne!14559 lt!871885) (regTwo!14558 lt!871885)))))))

(declare-fun b!2397137 () Bool)

(declare-fun res!1018531 () Bool)

(declare-fun e!1527526 () Bool)

(assert (=> b!2397137 (=> (not res!1018531) (not e!1527526))))

(assert (=> b!2397137 (= res!1018531 call!146300)))

(assert (=> b!2397137 (= e!1527531 e!1527526)))

(declare-fun bm!146296 () Bool)

(assert (=> bm!146296 (= call!146300 call!146302)))

(declare-fun b!2397132 () Bool)

(assert (=> b!2397132 (= e!1527527 e!1527531)))

(assert (=> b!2397132 (= c!381549 ((_ is Union!7023) lt!871885))))

(declare-fun d!699192 () Bool)

(declare-fun res!1018530 () Bool)

(assert (=> d!699192 (=> res!1018530 e!1527530)))

(assert (=> d!699192 (= res!1018530 ((_ is ElementMatch!7023) lt!871885))))

(assert (=> d!699192 (= (validRegex!2748 lt!871885) e!1527530)))

(declare-fun b!2397138 () Bool)

(declare-fun e!1527525 () Bool)

(assert (=> b!2397138 (= e!1527527 e!1527525)))

(declare-fun res!1018532 () Bool)

(assert (=> b!2397138 (= res!1018532 (not (nullable!2072 (reg!7352 lt!871885))))))

(assert (=> b!2397138 (=> (not res!1018532) (not e!1527525))))

(declare-fun b!2397139 () Bool)

(assert (=> b!2397139 (= e!1527526 call!146301)))

(declare-fun bm!146297 () Bool)

(assert (=> bm!146297 (= call!146301 (validRegex!2748 (ite c!381549 (regTwo!14559 lt!871885) (regOne!14558 lt!871885))))))

(declare-fun b!2397140 () Bool)

(assert (=> b!2397140 (= e!1527525 call!146302)))

(assert (= (and d!699192 (not res!1018530)) b!2397133))

(assert (= (and b!2397133 c!381548) b!2397138))

(assert (= (and b!2397133 (not c!381548)) b!2397132))

(assert (= (and b!2397138 res!1018532) b!2397140))

(assert (= (and b!2397132 c!381549) b!2397137))

(assert (= (and b!2397132 (not c!381549)) b!2397135))

(assert (= (and b!2397137 res!1018531) b!2397139))

(assert (= (and b!2397135 (not res!1018534)) b!2397134))

(assert (= (and b!2397134 res!1018533) b!2397136))

(assert (= (or b!2397137 b!2397136) bm!146296))

(assert (= (or b!2397139 b!2397134) bm!146297))

(assert (= (or b!2397140 bm!146296) bm!146295))

(declare-fun m!2795787 () Bool)

(assert (=> bm!146295 m!2795787))

(declare-fun m!2795789 () Bool)

(assert (=> b!2397138 m!2795789))

(declare-fun m!2795791 () Bool)

(assert (=> bm!146297 m!2795791))

(assert (=> b!2396564 d!699192))

(declare-fun bs!462964 () Bool)

(declare-fun b!2397177 () Bool)

(assert (= bs!462964 (and b!2397177 d!699146)))

(declare-fun lambda!90007 () Int)

(assert (=> bs!462964 (not (= lambda!90007 lambda!89995))))

(assert (=> bs!462964 (not (= lambda!90007 lambda!89998))))

(declare-fun bs!462965 () Bool)

(assert (= bs!462965 (and b!2397177 d!699126)))

(assert (=> bs!462965 (not (= lambda!90007 lambda!89983))))

(declare-fun bs!462966 () Bool)

(assert (= bs!462966 (and b!2397177 b!2396579)))

(assert (=> bs!462966 (not (= lambda!90007 lambda!89968))))

(assert (=> bs!462966 (not (= lambda!90007 lambda!89969))))

(assert (=> b!2397177 true))

(assert (=> b!2397177 true))

(declare-fun bs!462967 () Bool)

(declare-fun b!2397183 () Bool)

(assert (= bs!462967 (and b!2397183 d!699146)))

(declare-fun lambda!90008 () Int)

(assert (=> bs!462967 (not (= lambda!90008 lambda!89995))))

(assert (=> bs!462967 (= lambda!90008 lambda!89998)))

(declare-fun bs!462968 () Bool)

(assert (= bs!462968 (and b!2397183 b!2397177)))

(assert (=> bs!462968 (not (= lambda!90008 lambda!90007))))

(declare-fun bs!462969 () Bool)

(assert (= bs!462969 (and b!2397183 d!699126)))

(assert (=> bs!462969 (not (= lambda!90008 lambda!89983))))

(declare-fun bs!462970 () Bool)

(assert (= bs!462970 (and b!2397183 b!2396579)))

(assert (=> bs!462970 (not (= lambda!90008 lambda!89968))))

(assert (=> bs!462970 (= lambda!90008 lambda!89969)))

(assert (=> b!2397183 true))

(assert (=> b!2397183 true))

(declare-fun b!2397173 () Bool)

(declare-fun e!1527555 () Bool)

(declare-fun e!1527553 () Bool)

(assert (=> b!2397173 (= e!1527555 e!1527553)))

(declare-fun res!1018551 () Bool)

(assert (=> b!2397173 (= res!1018551 (not ((_ is EmptyLang!7023) r!13927)))))

(assert (=> b!2397173 (=> (not res!1018551) (not e!1527553))))

(declare-fun b!2397174 () Bool)

(declare-fun c!381558 () Bool)

(assert (=> b!2397174 (= c!381558 ((_ is Union!7023) r!13927))))

(declare-fun e!1527552 () Bool)

(declare-fun e!1527556 () Bool)

(assert (=> b!2397174 (= e!1527552 e!1527556)))

(declare-fun b!2397175 () Bool)

(declare-fun c!381560 () Bool)

(assert (=> b!2397175 (= c!381560 ((_ is ElementMatch!7023) r!13927))))

(assert (=> b!2397175 (= e!1527553 e!1527552)))

(declare-fun bm!146302 () Bool)

(declare-fun call!146308 () Bool)

(assert (=> bm!146302 (= call!146308 (isEmpty!16177 s!9460))))

(declare-fun e!1527550 () Bool)

(declare-fun call!146307 () Bool)

(assert (=> b!2397177 (= e!1527550 call!146307)))

(declare-fun b!2397178 () Bool)

(declare-fun e!1527554 () Bool)

(assert (=> b!2397178 (= e!1527554 (matchRSpec!872 (regTwo!14559 r!13927) s!9460))))

(declare-fun bm!146303 () Bool)

(declare-fun c!381559 () Bool)

(assert (=> bm!146303 (= call!146307 (Exists!1085 (ite c!381559 lambda!90007 lambda!90008)))))

(declare-fun b!2397176 () Bool)

(declare-fun e!1527551 () Bool)

(assert (=> b!2397176 (= e!1527556 e!1527551)))

(assert (=> b!2397176 (= c!381559 ((_ is Star!7023) r!13927))))

(declare-fun d!699194 () Bool)

(declare-fun c!381561 () Bool)

(assert (=> d!699194 (= c!381561 ((_ is EmptyExpr!7023) r!13927))))

(assert (=> d!699194 (= (matchRSpec!872 r!13927 s!9460) e!1527555)))

(declare-fun b!2397179 () Bool)

(assert (=> b!2397179 (= e!1527555 call!146308)))

(declare-fun b!2397180 () Bool)

(assert (=> b!2397180 (= e!1527552 (= s!9460 (Cons!28186 (c!381427 r!13927) Nil!28186)))))

(declare-fun b!2397181 () Bool)

(assert (=> b!2397181 (= e!1527556 e!1527554)))

(declare-fun res!1018552 () Bool)

(assert (=> b!2397181 (= res!1018552 (matchRSpec!872 (regOne!14559 r!13927) s!9460))))

(assert (=> b!2397181 (=> res!1018552 e!1527554)))

(declare-fun b!2397182 () Bool)

(declare-fun res!1018553 () Bool)

(assert (=> b!2397182 (=> res!1018553 e!1527550)))

(assert (=> b!2397182 (= res!1018553 call!146308)))

(assert (=> b!2397182 (= e!1527551 e!1527550)))

(assert (=> b!2397183 (= e!1527551 call!146307)))

(assert (= (and d!699194 c!381561) b!2397179))

(assert (= (and d!699194 (not c!381561)) b!2397173))

(assert (= (and b!2397173 res!1018551) b!2397175))

(assert (= (and b!2397175 c!381560) b!2397180))

(assert (= (and b!2397175 (not c!381560)) b!2397174))

(assert (= (and b!2397174 c!381558) b!2397181))

(assert (= (and b!2397174 (not c!381558)) b!2397176))

(assert (= (and b!2397181 (not res!1018552)) b!2397178))

(assert (= (and b!2397176 c!381559) b!2397182))

(assert (= (and b!2397176 (not c!381559)) b!2397183))

(assert (= (and b!2397182 (not res!1018553)) b!2397177))

(assert (= (or b!2397177 b!2397183) bm!146303))

(assert (= (or b!2397179 b!2397182) bm!146302))

(assert (=> bm!146302 m!2795339))

(declare-fun m!2795793 () Bool)

(assert (=> b!2397178 m!2795793))

(declare-fun m!2795795 () Bool)

(assert (=> bm!146303 m!2795795))

(declare-fun m!2795797 () Bool)

(assert (=> b!2397181 m!2795797))

(assert (=> b!2396582 d!699194))

(declare-fun b!2397184 () Bool)

(declare-fun e!1527561 () Bool)

(declare-fun lt!871976 () Bool)

(assert (=> b!2397184 (= e!1527561 (not lt!871976))))

(declare-fun b!2397185 () Bool)

(declare-fun e!1527557 () Bool)

(assert (=> b!2397185 (= e!1527557 (not (= (head!5279 s!9460) (c!381427 r!13927))))))

(declare-fun b!2397186 () Bool)

(declare-fun e!1527560 () Bool)

(assert (=> b!2397186 (= e!1527560 (matchR!3140 (derivativeStep!1730 r!13927 (head!5279 s!9460)) (tail!3549 s!9460)))))

(declare-fun b!2397187 () Bool)

(declare-fun e!1527563 () Bool)

(assert (=> b!2397187 (= e!1527563 e!1527557)))

(declare-fun res!1018557 () Bool)

(assert (=> b!2397187 (=> res!1018557 e!1527557)))

(declare-fun call!146309 () Bool)

(assert (=> b!2397187 (= res!1018557 call!146309)))

(declare-fun b!2397188 () Bool)

(declare-fun e!1527558 () Bool)

(assert (=> b!2397188 (= e!1527558 (= lt!871976 call!146309))))

(declare-fun b!2397189 () Bool)

(assert (=> b!2397189 (= e!1527558 e!1527561)))

(declare-fun c!381562 () Bool)

(assert (=> b!2397189 (= c!381562 ((_ is EmptyLang!7023) r!13927))))

(declare-fun b!2397190 () Bool)

(declare-fun res!1018558 () Bool)

(assert (=> b!2397190 (=> res!1018558 e!1527557)))

(assert (=> b!2397190 (= res!1018558 (not (isEmpty!16177 (tail!3549 s!9460))))))

(declare-fun b!2397191 () Bool)

(declare-fun res!1018561 () Bool)

(declare-fun e!1527559 () Bool)

(assert (=> b!2397191 (=> res!1018561 e!1527559)))

(assert (=> b!2397191 (= res!1018561 (not ((_ is ElementMatch!7023) r!13927)))))

(assert (=> b!2397191 (= e!1527561 e!1527559)))

(declare-fun b!2397192 () Bool)

(assert (=> b!2397192 (= e!1527560 (nullable!2072 r!13927))))

(declare-fun bm!146304 () Bool)

(assert (=> bm!146304 (= call!146309 (isEmpty!16177 s!9460))))

(declare-fun b!2397194 () Bool)

(declare-fun e!1527562 () Bool)

(assert (=> b!2397194 (= e!1527562 (= (head!5279 s!9460) (c!381427 r!13927)))))

(declare-fun b!2397195 () Bool)

(declare-fun res!1018555 () Bool)

(assert (=> b!2397195 (=> (not res!1018555) (not e!1527562))))

(assert (=> b!2397195 (= res!1018555 (isEmpty!16177 (tail!3549 s!9460)))))

(declare-fun b!2397193 () Bool)

(assert (=> b!2397193 (= e!1527559 e!1527563)))

(declare-fun res!1018554 () Bool)

(assert (=> b!2397193 (=> (not res!1018554) (not e!1527563))))

(assert (=> b!2397193 (= res!1018554 (not lt!871976))))

(declare-fun d!699196 () Bool)

(assert (=> d!699196 e!1527558))

(declare-fun c!381563 () Bool)

(assert (=> d!699196 (= c!381563 ((_ is EmptyExpr!7023) r!13927))))

(assert (=> d!699196 (= lt!871976 e!1527560)))

(declare-fun c!381564 () Bool)

(assert (=> d!699196 (= c!381564 (isEmpty!16177 s!9460))))

(assert (=> d!699196 (validRegex!2748 r!13927)))

(assert (=> d!699196 (= (matchR!3140 r!13927 s!9460) lt!871976)))

(declare-fun b!2397196 () Bool)

(declare-fun res!1018559 () Bool)

(assert (=> b!2397196 (=> (not res!1018559) (not e!1527562))))

(assert (=> b!2397196 (= res!1018559 (not call!146309))))

(declare-fun b!2397197 () Bool)

(declare-fun res!1018560 () Bool)

(assert (=> b!2397197 (=> res!1018560 e!1527559)))

(assert (=> b!2397197 (= res!1018560 e!1527562)))

(declare-fun res!1018556 () Bool)

(assert (=> b!2397197 (=> (not res!1018556) (not e!1527562))))

(assert (=> b!2397197 (= res!1018556 lt!871976)))

(assert (= (and d!699196 c!381564) b!2397192))

(assert (= (and d!699196 (not c!381564)) b!2397186))

(assert (= (and d!699196 c!381563) b!2397188))

(assert (= (and d!699196 (not c!381563)) b!2397189))

(assert (= (and b!2397189 c!381562) b!2397184))

(assert (= (and b!2397189 (not c!381562)) b!2397191))

(assert (= (and b!2397191 (not res!1018561)) b!2397197))

(assert (= (and b!2397197 res!1018556) b!2397196))

(assert (= (and b!2397196 res!1018559) b!2397195))

(assert (= (and b!2397195 res!1018555) b!2397194))

(assert (= (and b!2397197 (not res!1018560)) b!2397193))

(assert (= (and b!2397193 res!1018554) b!2397187))

(assert (= (and b!2397187 (not res!1018557)) b!2397190))

(assert (= (and b!2397190 (not res!1018558)) b!2397185))

(assert (= (or b!2397188 b!2397187 b!2397196) bm!146304))

(assert (=> bm!146304 m!2795339))

(assert (=> b!2397185 m!2795541))

(assert (=> b!2397195 m!2795543))

(assert (=> b!2397195 m!2795543))

(assert (=> b!2397195 m!2795545))

(declare-fun m!2795799 () Bool)

(assert (=> b!2397192 m!2795799))

(assert (=> b!2397186 m!2795541))

(assert (=> b!2397186 m!2795541))

(declare-fun m!2795801 () Bool)

(assert (=> b!2397186 m!2795801))

(assert (=> b!2397186 m!2795543))

(assert (=> b!2397186 m!2795801))

(assert (=> b!2397186 m!2795543))

(declare-fun m!2795803 () Bool)

(assert (=> b!2397186 m!2795803))

(assert (=> b!2397194 m!2795541))

(assert (=> d!699196 m!2795339))

(declare-fun m!2795805 () Bool)

(assert (=> d!699196 m!2795805))

(assert (=> b!2397190 m!2795543))

(assert (=> b!2397190 m!2795543))

(assert (=> b!2397190 m!2795545))

(assert (=> b!2396582 d!699196))

(declare-fun d!699198 () Bool)

(assert (=> d!699198 (= (matchR!3140 r!13927 s!9460) (matchRSpec!872 r!13927 s!9460))))

(declare-fun lt!871979 () Unit!41282)

(declare-fun choose!14179 (Regex!7023 List!28284) Unit!41282)

(assert (=> d!699198 (= lt!871979 (choose!14179 r!13927 s!9460))))

(assert (=> d!699198 (validRegex!2748 r!13927)))

(assert (=> d!699198 (= (mainMatchTheorem!872 r!13927 s!9460) lt!871979)))

(declare-fun bs!462971 () Bool)

(assert (= bs!462971 d!699198))

(assert (=> bs!462971 m!2795321))

(assert (=> bs!462971 m!2795319))

(declare-fun m!2795807 () Bool)

(assert (=> bs!462971 m!2795807))

(assert (=> bs!462971 m!2795805))

(assert (=> b!2396582 d!699198))

(declare-fun e!1527569 () List!28284)

(declare-fun b!2397207 () Bool)

(assert (=> b!2397207 (= e!1527569 (Cons!28186 (h!33587 (ite c!381425 s!9460 (_1!16496 lt!871879))) (++!6977 (t!208261 (ite c!381425 s!9460 (_1!16496 lt!871879))) (ite c!381425 Nil!28186 (_2!16496 lt!871879)))))))

(declare-fun b!2397206 () Bool)

(assert (=> b!2397206 (= e!1527569 (ite c!381425 Nil!28186 (_2!16496 lt!871879)))))

(declare-fun b!2397208 () Bool)

(declare-fun res!1018566 () Bool)

(declare-fun e!1527568 () Bool)

(assert (=> b!2397208 (=> (not res!1018566) (not e!1527568))))

(declare-fun lt!871982 () List!28284)

(declare-fun size!22198 (List!28284) Int)

(assert (=> b!2397208 (= res!1018566 (= (size!22198 lt!871982) (+ (size!22198 (ite c!381425 s!9460 (_1!16496 lt!871879))) (size!22198 (ite c!381425 Nil!28186 (_2!16496 lt!871879))))))))

(declare-fun d!699200 () Bool)

(assert (=> d!699200 e!1527568))

(declare-fun res!1018567 () Bool)

(assert (=> d!699200 (=> (not res!1018567) (not e!1527568))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3860 (List!28284) (InoxSet C!14204))

(assert (=> d!699200 (= res!1018567 (= (content!3860 lt!871982) ((_ map or) (content!3860 (ite c!381425 s!9460 (_1!16496 lt!871879))) (content!3860 (ite c!381425 Nil!28186 (_2!16496 lt!871879))))))))

(assert (=> d!699200 (= lt!871982 e!1527569)))

(declare-fun c!381567 () Bool)

(assert (=> d!699200 (= c!381567 ((_ is Nil!28186) (ite c!381425 s!9460 (_1!16496 lt!871879))))))

(assert (=> d!699200 (= (++!6977 (ite c!381425 s!9460 (_1!16496 lt!871879)) (ite c!381425 Nil!28186 (_2!16496 lt!871879))) lt!871982)))

(declare-fun b!2397209 () Bool)

(assert (=> b!2397209 (= e!1527568 (or (not (= (ite c!381425 Nil!28186 (_2!16496 lt!871879)) Nil!28186)) (= lt!871982 (ite c!381425 s!9460 (_1!16496 lt!871879)))))))

(assert (= (and d!699200 c!381567) b!2397206))

(assert (= (and d!699200 (not c!381567)) b!2397207))

(assert (= (and d!699200 res!1018567) b!2397208))

(assert (= (and b!2397208 res!1018566) b!2397209))

(declare-fun m!2795809 () Bool)

(assert (=> b!2397207 m!2795809))

(declare-fun m!2795811 () Bool)

(assert (=> b!2397208 m!2795811))

(declare-fun m!2795813 () Bool)

(assert (=> b!2397208 m!2795813))

(declare-fun m!2795815 () Bool)

(assert (=> b!2397208 m!2795815))

(declare-fun m!2795817 () Bool)

(assert (=> d!699200 m!2795817))

(declare-fun m!2795819 () Bool)

(assert (=> d!699200 m!2795819))

(declare-fun m!2795821 () Bool)

(assert (=> d!699200 m!2795821))

(assert (=> bm!146254 d!699200))

(declare-fun bs!462972 () Bool)

(declare-fun d!699202 () Bool)

(assert (= bs!462972 (and d!699202 start!235152)))

(declare-fun lambda!90009 () Int)

(assert (=> bs!462972 (= lambda!90009 lambda!89967)))

(declare-fun bs!462973 () Bool)

(assert (= bs!462973 (and d!699202 d!699174)))

(assert (=> bs!462973 (= lambda!90009 lambda!90001)))

(declare-fun bs!462974 () Bool)

(assert (= bs!462974 (and d!699202 d!699186)))

(assert (=> bs!462974 (= lambda!90009 lambda!90002)))

(declare-fun e!1527571 () Bool)

(assert (=> d!699202 e!1527571))

(declare-fun res!1018568 () Bool)

(assert (=> d!699202 (=> (not res!1018568) (not e!1527571))))

(declare-fun lt!871983 () Regex!7023)

(assert (=> d!699202 (= res!1018568 (validRegex!2748 lt!871983))))

(declare-fun e!1527574 () Regex!7023)

(assert (=> d!699202 (= lt!871983 e!1527574)))

(declare-fun c!381571 () Bool)

(declare-fun e!1527575 () Bool)

(assert (=> d!699202 (= c!381571 e!1527575)))

(declare-fun res!1018569 () Bool)

(assert (=> d!699202 (=> (not res!1018569) (not e!1527575))))

(assert (=> d!699202 (= res!1018569 ((_ is Cons!28187) l!9164))))

(assert (=> d!699202 (forall!5657 l!9164 lambda!90009)))

(assert (=> d!699202 (= (generalisedConcat!124 l!9164) lt!871983)))

(declare-fun b!2397210 () Bool)

(declare-fun e!1527570 () Bool)

(assert (=> b!2397210 (= e!1527571 e!1527570)))

(declare-fun c!381569 () Bool)

(assert (=> b!2397210 (= c!381569 (isEmpty!16178 l!9164))))

(declare-fun b!2397211 () Bool)

(declare-fun e!1527572 () Regex!7023)

(assert (=> b!2397211 (= e!1527574 e!1527572)))

(declare-fun c!381568 () Bool)

(assert (=> b!2397211 (= c!381568 ((_ is Cons!28187) l!9164))))

(declare-fun b!2397212 () Bool)

(assert (=> b!2397212 (= e!1527572 EmptyExpr!7023)))

(declare-fun b!2397213 () Bool)

(assert (=> b!2397213 (= e!1527575 (isEmpty!16178 (t!208262 l!9164)))))

(declare-fun b!2397214 () Bool)

(declare-fun e!1527573 () Bool)

(assert (=> b!2397214 (= e!1527573 (= lt!871983 (head!5277 l!9164)))))

(declare-fun b!2397215 () Bool)

(assert (=> b!2397215 (= e!1527573 (isConcat!93 lt!871983))))

(declare-fun b!2397216 () Bool)

(assert (=> b!2397216 (= e!1527570 e!1527573)))

(declare-fun c!381570 () Bool)

(assert (=> b!2397216 (= c!381570 (isEmpty!16178 (tail!3547 l!9164)))))

(declare-fun b!2397217 () Bool)

(assert (=> b!2397217 (= e!1527574 (h!33588 l!9164))))

(declare-fun b!2397218 () Bool)

(assert (=> b!2397218 (= e!1527572 (Concat!11659 (h!33588 l!9164) (generalisedConcat!124 (t!208262 l!9164))))))

(declare-fun b!2397219 () Bool)

(assert (=> b!2397219 (= e!1527570 (isEmptyExpr!93 lt!871983))))

(assert (= (and d!699202 res!1018569) b!2397213))

(assert (= (and d!699202 c!381571) b!2397217))

(assert (= (and d!699202 (not c!381571)) b!2397211))

(assert (= (and b!2397211 c!381568) b!2397218))

(assert (= (and b!2397211 (not c!381568)) b!2397212))

(assert (= (and d!699202 res!1018568) b!2397210))

(assert (= (and b!2397210 c!381569) b!2397219))

(assert (= (and b!2397210 (not c!381569)) b!2397216))

(assert (= (and b!2397216 c!381570) b!2397214))

(assert (= (and b!2397216 (not c!381570)) b!2397215))

(assert (=> b!2397210 m!2795299))

(assert (=> b!2397216 m!2795309))

(assert (=> b!2397216 m!2795309))

(declare-fun m!2795823 () Bool)

(assert (=> b!2397216 m!2795823))

(assert (=> b!2397213 m!2795703))

(assert (=> b!2397218 m!2795301))

(declare-fun m!2795825 () Bool)

(assert (=> b!2397215 m!2795825))

(assert (=> b!2397214 m!2795315))

(declare-fun m!2795827 () Bool)

(assert (=> d!699202 m!2795827))

(declare-fun m!2795829 () Bool)

(assert (=> d!699202 m!2795829))

(declare-fun m!2795831 () Bool)

(assert (=> b!2397219 m!2795831))

(assert (=> b!2396567 d!699202))

(declare-fun b!2397220 () Bool)

(declare-fun res!1018571 () Bool)

(declare-fun e!1527576 () Bool)

(assert (=> b!2397220 (=> (not res!1018571) (not e!1527576))))

(declare-fun lt!871986 () Option!5566)

(assert (=> b!2397220 (= res!1018571 (matchR!3140 call!146258 (_2!16496 (get!8632 lt!871986))))))

(declare-fun b!2397221 () Bool)

(declare-fun e!1527580 () Option!5566)

(assert (=> b!2397221 (= e!1527580 None!5565)))

(declare-fun b!2397222 () Bool)

(declare-fun e!1527579 () Bool)

(assert (=> b!2397222 (= e!1527579 (matchR!3140 call!146258 s!9460))))

(declare-fun b!2397223 () Bool)

(assert (=> b!2397223 (= e!1527576 (= (++!6977 (_1!16496 (get!8632 lt!871986)) (_2!16496 (get!8632 lt!871986))) s!9460))))

(declare-fun b!2397224 () Bool)

(declare-fun e!1527577 () Option!5566)

(assert (=> b!2397224 (= e!1527577 (Some!5565 (tuple2!27911 Nil!28186 s!9460)))))

(declare-fun b!2397226 () Bool)

(declare-fun e!1527578 () Bool)

(assert (=> b!2397226 (= e!1527578 (not (isDefined!4394 lt!871986)))))

(declare-fun d!699204 () Bool)

(assert (=> d!699204 e!1527578))

(declare-fun res!1018573 () Bool)

(assert (=> d!699204 (=> res!1018573 e!1527578)))

(assert (=> d!699204 (= res!1018573 e!1527576)))

(declare-fun res!1018570 () Bool)

(assert (=> d!699204 (=> (not res!1018570) (not e!1527576))))

(assert (=> d!699204 (= res!1018570 (isDefined!4394 lt!871986))))

(assert (=> d!699204 (= lt!871986 e!1527577)))

(declare-fun c!381573 () Bool)

(assert (=> d!699204 (= c!381573 e!1527579)))

(declare-fun res!1018572 () Bool)

(assert (=> d!699204 (=> (not res!1018572) (not e!1527579))))

(assert (=> d!699204 (= res!1018572 (matchR!3140 lt!871876 Nil!28186))))

(assert (=> d!699204 (validRegex!2748 lt!871876)))

(assert (=> d!699204 (= (findConcatSeparation!674 lt!871876 call!146258 Nil!28186 s!9460 s!9460) lt!871986)))

(declare-fun b!2397225 () Bool)

(assert (=> b!2397225 (= e!1527577 e!1527580)))

(declare-fun c!381572 () Bool)

(assert (=> b!2397225 (= c!381572 ((_ is Nil!28186) s!9460))))

(declare-fun b!2397227 () Bool)

(declare-fun res!1018574 () Bool)

(assert (=> b!2397227 (=> (not res!1018574) (not e!1527576))))

(assert (=> b!2397227 (= res!1018574 (matchR!3140 lt!871876 (_1!16496 (get!8632 lt!871986))))))

(declare-fun b!2397228 () Bool)

(declare-fun lt!871985 () Unit!41282)

(declare-fun lt!871984 () Unit!41282)

(assert (=> b!2397228 (= lt!871985 lt!871984)))

(assert (=> b!2397228 (= (++!6977 (++!6977 Nil!28186 (Cons!28186 (h!33587 s!9460) Nil!28186)) (t!208261 s!9460)) s!9460)))

(assert (=> b!2397228 (= lt!871984 (lemmaMoveElementToOtherListKeepsConcatEq!619 Nil!28186 (h!33587 s!9460) (t!208261 s!9460) s!9460))))

(assert (=> b!2397228 (= e!1527580 (findConcatSeparation!674 lt!871876 call!146258 (++!6977 Nil!28186 (Cons!28186 (h!33587 s!9460) Nil!28186)) (t!208261 s!9460) s!9460))))

(assert (= (and d!699204 res!1018572) b!2397222))

(assert (= (and d!699204 c!381573) b!2397224))

(assert (= (and d!699204 (not c!381573)) b!2397225))

(assert (= (and b!2397225 c!381572) b!2397221))

(assert (= (and b!2397225 (not c!381572)) b!2397228))

(assert (= (and d!699204 res!1018570) b!2397227))

(assert (= (and b!2397227 res!1018574) b!2397220))

(assert (= (and b!2397220 res!1018571) b!2397223))

(assert (= (and d!699204 (not res!1018573)) b!2397226))

(declare-fun m!2795833 () Bool)

(assert (=> b!2397227 m!2795833))

(declare-fun m!2795835 () Bool)

(assert (=> b!2397227 m!2795835))

(assert (=> b!2397223 m!2795833))

(declare-fun m!2795837 () Bool)

(assert (=> b!2397223 m!2795837))

(declare-fun m!2795839 () Bool)

(assert (=> b!2397222 m!2795839))

(declare-fun m!2795841 () Bool)

(assert (=> d!699204 m!2795841))

(assert (=> d!699204 m!2795461))

(assert (=> d!699204 m!2795467))

(assert (=> b!2397226 m!2795841))

(assert (=> b!2397220 m!2795833))

(declare-fun m!2795843 () Bool)

(assert (=> b!2397220 m!2795843))

(assert (=> b!2397228 m!2795475))

(assert (=> b!2397228 m!2795475))

(assert (=> b!2397228 m!2795477))

(assert (=> b!2397228 m!2795479))

(assert (=> b!2397228 m!2795475))

(declare-fun m!2795845 () Bool)

(assert (=> b!2397228 m!2795845))

(assert (=> bm!146255 d!699204))

(declare-fun d!699206 () Bool)

(declare-fun res!1018579 () Bool)

(declare-fun e!1527585 () Bool)

(assert (=> d!699206 (=> res!1018579 e!1527585)))

(assert (=> d!699206 (= res!1018579 ((_ is Nil!28187) l!9164))))

(assert (=> d!699206 (= (forall!5657 l!9164 lambda!89967) e!1527585)))

(declare-fun b!2397233 () Bool)

(declare-fun e!1527586 () Bool)

(assert (=> b!2397233 (= e!1527585 e!1527586)))

(declare-fun res!1018580 () Bool)

(assert (=> b!2397233 (=> (not res!1018580) (not e!1527586))))

(declare-fun dynLambda!12138 (Int Regex!7023) Bool)

(assert (=> b!2397233 (= res!1018580 (dynLambda!12138 lambda!89967 (h!33588 l!9164)))))

(declare-fun b!2397234 () Bool)

(assert (=> b!2397234 (= e!1527586 (forall!5657 (t!208262 l!9164) lambda!89967))))

(assert (= (and d!699206 (not res!1018579)) b!2397233))

(assert (= (and b!2397233 res!1018580) b!2397234))

(declare-fun b_lambda!74263 () Bool)

(assert (=> (not b_lambda!74263) (not b!2397233)))

(declare-fun m!2795847 () Bool)

(assert (=> b!2397233 m!2795847))

(declare-fun m!2795849 () Bool)

(assert (=> b!2397234 m!2795849))

(assert (=> start!235152 d!699206))

(declare-fun b!2397236 () Bool)

(declare-fun e!1527592 () Bool)

(declare-fun e!1527589 () Bool)

(assert (=> b!2397236 (= e!1527592 e!1527589)))

(declare-fun c!381574 () Bool)

(assert (=> b!2397236 (= c!381574 ((_ is Star!7023) (h!33588 l!9164)))))

(declare-fun b!2397237 () Bool)

(declare-fun e!1527591 () Bool)

(declare-fun e!1527590 () Bool)

(assert (=> b!2397237 (= e!1527591 e!1527590)))

(declare-fun res!1018584 () Bool)

(assert (=> b!2397237 (=> (not res!1018584) (not e!1527590))))

(declare-fun call!146311 () Bool)

(assert (=> b!2397237 (= res!1018584 call!146311)))

(declare-fun b!2397238 () Bool)

(declare-fun res!1018585 () Bool)

(assert (=> b!2397238 (=> res!1018585 e!1527591)))

(assert (=> b!2397238 (= res!1018585 (not ((_ is Concat!11659) (h!33588 l!9164))))))

(declare-fun e!1527593 () Bool)

(assert (=> b!2397238 (= e!1527593 e!1527591)))

(declare-fun b!2397239 () Bool)

(declare-fun call!146310 () Bool)

(assert (=> b!2397239 (= e!1527590 call!146310)))

(declare-fun c!381575 () Bool)

(declare-fun call!146312 () Bool)

(declare-fun bm!146305 () Bool)

(assert (=> bm!146305 (= call!146312 (validRegex!2748 (ite c!381574 (reg!7352 (h!33588 l!9164)) (ite c!381575 (regOne!14559 (h!33588 l!9164)) (regTwo!14558 (h!33588 l!9164))))))))

(declare-fun b!2397240 () Bool)

(declare-fun res!1018582 () Bool)

(declare-fun e!1527588 () Bool)

(assert (=> b!2397240 (=> (not res!1018582) (not e!1527588))))

(assert (=> b!2397240 (= res!1018582 call!146310)))

(assert (=> b!2397240 (= e!1527593 e!1527588)))

(declare-fun bm!146306 () Bool)

(assert (=> bm!146306 (= call!146310 call!146312)))

(declare-fun b!2397235 () Bool)

(assert (=> b!2397235 (= e!1527589 e!1527593)))

(assert (=> b!2397235 (= c!381575 ((_ is Union!7023) (h!33588 l!9164)))))

(declare-fun d!699208 () Bool)

(declare-fun res!1018581 () Bool)

(assert (=> d!699208 (=> res!1018581 e!1527592)))

(assert (=> d!699208 (= res!1018581 ((_ is ElementMatch!7023) (h!33588 l!9164)))))

(assert (=> d!699208 (= (validRegex!2748 (h!33588 l!9164)) e!1527592)))

(declare-fun b!2397241 () Bool)

(declare-fun e!1527587 () Bool)

(assert (=> b!2397241 (= e!1527589 e!1527587)))

(declare-fun res!1018583 () Bool)

(assert (=> b!2397241 (= res!1018583 (not (nullable!2072 (reg!7352 (h!33588 l!9164)))))))

(assert (=> b!2397241 (=> (not res!1018583) (not e!1527587))))

(declare-fun b!2397242 () Bool)

(assert (=> b!2397242 (= e!1527588 call!146311)))

(declare-fun bm!146307 () Bool)

(assert (=> bm!146307 (= call!146311 (validRegex!2748 (ite c!381575 (regTwo!14559 (h!33588 l!9164)) (regOne!14558 (h!33588 l!9164)))))))

(declare-fun b!2397243 () Bool)

(assert (=> b!2397243 (= e!1527587 call!146312)))

(assert (= (and d!699208 (not res!1018581)) b!2397236))

(assert (= (and b!2397236 c!381574) b!2397241))

(assert (= (and b!2397236 (not c!381574)) b!2397235))

(assert (= (and b!2397241 res!1018583) b!2397243))

(assert (= (and b!2397235 c!381575) b!2397240))

(assert (= (and b!2397235 (not c!381575)) b!2397238))

(assert (= (and b!2397240 res!1018582) b!2397242))

(assert (= (and b!2397238 (not res!1018585)) b!2397237))

(assert (= (and b!2397237 res!1018584) b!2397239))

(assert (= (or b!2397240 b!2397239) bm!146306))

(assert (= (or b!2397242 b!2397237) bm!146307))

(assert (= (or b!2397243 bm!146306) bm!146305))

(declare-fun m!2795851 () Bool)

(assert (=> bm!146305 m!2795851))

(declare-fun m!2795853 () Bool)

(assert (=> b!2397241 m!2795853))

(declare-fun m!2795855 () Bool)

(assert (=> bm!146307 m!2795855))

(assert (=> b!2396575 d!699208))

(assert (=> b!2396575 d!699174))

(declare-fun d!699210 () Bool)

(assert (=> d!699210 (matchR!3140 (Concat!11659 lt!871876 EmptyExpr!7023) (++!6977 (_1!16496 lt!871879) (_2!16496 lt!871879)))))

(declare-fun lt!871989 () Unit!41282)

(declare-fun choose!14180 (Regex!7023 Regex!7023 List!28284 List!28284 List!28284) Unit!41282)

(assert (=> d!699210 (= lt!871989 (choose!14180 lt!871876 EmptyExpr!7023 (_1!16496 lt!871879) (_2!16496 lt!871879) s!9460))))

(assert (=> d!699210 (validRegex!2748 lt!871876)))

(assert (=> d!699210 (= (lemmaFindSeparationIsDefinedThenConcatMatches!42 lt!871876 EmptyExpr!7023 (_1!16496 lt!871879) (_2!16496 lt!871879) s!9460) lt!871989)))

(declare-fun bs!462975 () Bool)

(assert (= bs!462975 d!699210))

(declare-fun m!2795857 () Bool)

(assert (=> bs!462975 m!2795857))

(assert (=> bs!462975 m!2795857))

(declare-fun m!2795859 () Bool)

(assert (=> bs!462975 m!2795859))

(declare-fun m!2795861 () Bool)

(assert (=> bs!462975 m!2795861))

(assert (=> bs!462975 m!2795467))

(assert (=> b!2396576 d!699210))

(declare-fun d!699212 () Bool)

(assert (=> d!699212 (= (get!8632 lt!871870) (v!30973 lt!871870))))

(assert (=> b!2396576 d!699212))

(declare-fun b!2397244 () Bool)

(declare-fun res!1018587 () Bool)

(declare-fun e!1527594 () Bool)

(assert (=> b!2397244 (=> (not res!1018587) (not e!1527594))))

(declare-fun lt!871992 () Option!5566)

(assert (=> b!2397244 (= res!1018587 (matchR!3140 (ite c!381424 EmptyExpr!7023 call!146262) (_2!16496 (get!8632 lt!871992))))))

(declare-fun b!2397245 () Bool)

(declare-fun e!1527598 () Option!5566)

(assert (=> b!2397245 (= e!1527598 None!5565)))

(declare-fun e!1527597 () Bool)

(declare-fun b!2397246 () Bool)

(assert (=> b!2397246 (= e!1527597 (matchR!3140 (ite c!381424 EmptyExpr!7023 call!146262) s!9460))))

(declare-fun b!2397247 () Bool)

(assert (=> b!2397247 (= e!1527594 (= (++!6977 (_1!16496 (get!8632 lt!871992)) (_2!16496 (get!8632 lt!871992))) s!9460))))

(declare-fun b!2397248 () Bool)

(declare-fun e!1527595 () Option!5566)

(assert (=> b!2397248 (= e!1527595 (Some!5565 (tuple2!27911 Nil!28186 s!9460)))))

(declare-fun b!2397250 () Bool)

(declare-fun e!1527596 () Bool)

(assert (=> b!2397250 (= e!1527596 (not (isDefined!4394 lt!871992)))))

(declare-fun d!699214 () Bool)

(assert (=> d!699214 e!1527596))

(declare-fun res!1018589 () Bool)

(assert (=> d!699214 (=> res!1018589 e!1527596)))

(assert (=> d!699214 (= res!1018589 e!1527594)))

(declare-fun res!1018586 () Bool)

(assert (=> d!699214 (=> (not res!1018586) (not e!1527594))))

(assert (=> d!699214 (= res!1018586 (isDefined!4394 lt!871992))))

(assert (=> d!699214 (= lt!871992 e!1527595)))

(declare-fun c!381577 () Bool)

(assert (=> d!699214 (= c!381577 e!1527597)))

(declare-fun res!1018588 () Bool)

(assert (=> d!699214 (=> (not res!1018588) (not e!1527597))))

(assert (=> d!699214 (= res!1018588 (matchR!3140 (ite c!381424 lt!871876 call!146254) Nil!28186))))

(assert (=> d!699214 (validRegex!2748 (ite c!381424 lt!871876 call!146254))))

(assert (=> d!699214 (= (findConcatSeparation!674 (ite c!381424 lt!871876 call!146254) (ite c!381424 EmptyExpr!7023 call!146262) Nil!28186 s!9460 s!9460) lt!871992)))

(declare-fun b!2397249 () Bool)

(assert (=> b!2397249 (= e!1527595 e!1527598)))

(declare-fun c!381576 () Bool)

(assert (=> b!2397249 (= c!381576 ((_ is Nil!28186) s!9460))))

(declare-fun b!2397251 () Bool)

(declare-fun res!1018590 () Bool)

(assert (=> b!2397251 (=> (not res!1018590) (not e!1527594))))

(assert (=> b!2397251 (= res!1018590 (matchR!3140 (ite c!381424 lt!871876 call!146254) (_1!16496 (get!8632 lt!871992))))))

(declare-fun b!2397252 () Bool)

(declare-fun lt!871991 () Unit!41282)

(declare-fun lt!871990 () Unit!41282)

(assert (=> b!2397252 (= lt!871991 lt!871990)))

(assert (=> b!2397252 (= (++!6977 (++!6977 Nil!28186 (Cons!28186 (h!33587 s!9460) Nil!28186)) (t!208261 s!9460)) s!9460)))

(assert (=> b!2397252 (= lt!871990 (lemmaMoveElementToOtherListKeepsConcatEq!619 Nil!28186 (h!33587 s!9460) (t!208261 s!9460) s!9460))))

(assert (=> b!2397252 (= e!1527598 (findConcatSeparation!674 (ite c!381424 lt!871876 call!146254) (ite c!381424 EmptyExpr!7023 call!146262) (++!6977 Nil!28186 (Cons!28186 (h!33587 s!9460) Nil!28186)) (t!208261 s!9460) s!9460))))

(assert (= (and d!699214 res!1018588) b!2397246))

(assert (= (and d!699214 c!381577) b!2397248))

(assert (= (and d!699214 (not c!381577)) b!2397249))

(assert (= (and b!2397249 c!381576) b!2397245))

(assert (= (and b!2397249 (not c!381576)) b!2397252))

(assert (= (and d!699214 res!1018586) b!2397251))

(assert (= (and b!2397251 res!1018590) b!2397244))

(assert (= (and b!2397244 res!1018587) b!2397247))

(assert (= (and d!699214 (not res!1018589)) b!2397250))

(declare-fun m!2795863 () Bool)

(assert (=> b!2397251 m!2795863))

(declare-fun m!2795865 () Bool)

(assert (=> b!2397251 m!2795865))

(assert (=> b!2397247 m!2795863))

(declare-fun m!2795867 () Bool)

(assert (=> b!2397247 m!2795867))

(declare-fun m!2795869 () Bool)

(assert (=> b!2397246 m!2795869))

(declare-fun m!2795871 () Bool)

(assert (=> d!699214 m!2795871))

(declare-fun m!2795873 () Bool)

(assert (=> d!699214 m!2795873))

(declare-fun m!2795875 () Bool)

(assert (=> d!699214 m!2795875))

(assert (=> b!2397250 m!2795871))

(assert (=> b!2397244 m!2795863))

(declare-fun m!2795877 () Bool)

(assert (=> b!2397244 m!2795877))

(assert (=> b!2397252 m!2795475))

(assert (=> b!2397252 m!2795475))

(assert (=> b!2397252 m!2795477))

(assert (=> b!2397252 m!2795479))

(assert (=> b!2397252 m!2795475))

(declare-fun m!2795879 () Bool)

(assert (=> b!2397252 m!2795879))

(assert (=> bm!146251 d!699214))

(declare-fun d!699216 () Bool)

(assert (=> d!699216 (= (isDefined!4394 call!146256) (not (isEmpty!16180 call!146256)))))

(declare-fun bs!462976 () Bool)

(assert (= bs!462976 d!699216))

(declare-fun m!2795881 () Bool)

(assert (=> bs!462976 m!2795881))

(assert (=> bm!146257 d!699216))

(declare-fun d!699218 () Bool)

(assert (=> d!699218 (= (isDefined!4394 (ite c!381424 (ite c!381425 call!146259 lt!871870) call!146263)) (not (isEmpty!16180 (ite c!381424 (ite c!381425 call!146259 lt!871870) call!146263))))))

(declare-fun bs!462977 () Bool)

(assert (= bs!462977 d!699218))

(declare-fun m!2795883 () Bool)

(assert (=> bs!462977 m!2795883))

(assert (=> bm!146249 d!699218))

(declare-fun d!699220 () Bool)

(assert (=> d!699220 (= (isEmpty!16178 l!9164) ((_ is Nil!28187) l!9164))))

(assert (=> b!2396578 d!699220))

(declare-fun e!1527601 () Bool)

(assert (=> b!2396584 (= tp!763115 e!1527601)))

(declare-fun b!2397264 () Bool)

(declare-fun tp!763180 () Bool)

(declare-fun tp!763177 () Bool)

(assert (=> b!2397264 (= e!1527601 (and tp!763180 tp!763177))))

(declare-fun b!2397266 () Bool)

(declare-fun tp!763181 () Bool)

(declare-fun tp!763179 () Bool)

(assert (=> b!2397266 (= e!1527601 (and tp!763181 tp!763179))))

(declare-fun b!2397263 () Bool)

(assert (=> b!2397263 (= e!1527601 tp_is_empty!11459)))

(declare-fun b!2397265 () Bool)

(declare-fun tp!763178 () Bool)

(assert (=> b!2397265 (= e!1527601 tp!763178)))

(assert (= (and b!2396584 ((_ is ElementMatch!7023) (h!33588 l!9164))) b!2397263))

(assert (= (and b!2396584 ((_ is Concat!11659) (h!33588 l!9164))) b!2397264))

(assert (= (and b!2396584 ((_ is Star!7023) (h!33588 l!9164))) b!2397265))

(assert (= (and b!2396584 ((_ is Union!7023) (h!33588 l!9164))) b!2397266))

(declare-fun b!2397271 () Bool)

(declare-fun e!1527604 () Bool)

(declare-fun tp!763186 () Bool)

(declare-fun tp!763187 () Bool)

(assert (=> b!2397271 (= e!1527604 (and tp!763186 tp!763187))))

(assert (=> b!2396584 (= tp!763112 e!1527604)))

(assert (= (and b!2396584 ((_ is Cons!28187) (t!208262 l!9164))) b!2397271))

(declare-fun e!1527605 () Bool)

(assert (=> b!2396574 (= tp!763114 e!1527605)))

(declare-fun b!2397273 () Bool)

(declare-fun tp!763191 () Bool)

(declare-fun tp!763188 () Bool)

(assert (=> b!2397273 (= e!1527605 (and tp!763191 tp!763188))))

(declare-fun b!2397275 () Bool)

(declare-fun tp!763192 () Bool)

(declare-fun tp!763190 () Bool)

(assert (=> b!2397275 (= e!1527605 (and tp!763192 tp!763190))))

(declare-fun b!2397272 () Bool)

(assert (=> b!2397272 (= e!1527605 tp_is_empty!11459)))

(declare-fun b!2397274 () Bool)

(declare-fun tp!763189 () Bool)

(assert (=> b!2397274 (= e!1527605 tp!763189)))

(assert (= (and b!2396574 ((_ is ElementMatch!7023) (reg!7352 r!13927))) b!2397272))

(assert (= (and b!2396574 ((_ is Concat!11659) (reg!7352 r!13927))) b!2397273))

(assert (= (and b!2396574 ((_ is Star!7023) (reg!7352 r!13927))) b!2397274))

(assert (= (and b!2396574 ((_ is Union!7023) (reg!7352 r!13927))) b!2397275))

(declare-fun e!1527606 () Bool)

(assert (=> b!2396566 (= tp!763111 e!1527606)))

(declare-fun b!2397277 () Bool)

(declare-fun tp!763196 () Bool)

(declare-fun tp!763193 () Bool)

(assert (=> b!2397277 (= e!1527606 (and tp!763196 tp!763193))))

(declare-fun b!2397279 () Bool)

(declare-fun tp!763197 () Bool)

(declare-fun tp!763195 () Bool)

(assert (=> b!2397279 (= e!1527606 (and tp!763197 tp!763195))))

(declare-fun b!2397276 () Bool)

(assert (=> b!2397276 (= e!1527606 tp_is_empty!11459)))

(declare-fun b!2397278 () Bool)

(declare-fun tp!763194 () Bool)

(assert (=> b!2397278 (= e!1527606 tp!763194)))

(assert (= (and b!2396566 ((_ is ElementMatch!7023) (regOne!14558 r!13927))) b!2397276))

(assert (= (and b!2396566 ((_ is Concat!11659) (regOne!14558 r!13927))) b!2397277))

(assert (= (and b!2396566 ((_ is Star!7023) (regOne!14558 r!13927))) b!2397278))

(assert (= (and b!2396566 ((_ is Union!7023) (regOne!14558 r!13927))) b!2397279))

(declare-fun e!1527607 () Bool)

(assert (=> b!2396566 (= tp!763113 e!1527607)))

(declare-fun b!2397281 () Bool)

(declare-fun tp!763201 () Bool)

(declare-fun tp!763198 () Bool)

(assert (=> b!2397281 (= e!1527607 (and tp!763201 tp!763198))))

(declare-fun b!2397283 () Bool)

(declare-fun tp!763202 () Bool)

(declare-fun tp!763200 () Bool)

(assert (=> b!2397283 (= e!1527607 (and tp!763202 tp!763200))))

(declare-fun b!2397280 () Bool)

(assert (=> b!2397280 (= e!1527607 tp_is_empty!11459)))

(declare-fun b!2397282 () Bool)

(declare-fun tp!763199 () Bool)

(assert (=> b!2397282 (= e!1527607 tp!763199)))

(assert (= (and b!2396566 ((_ is ElementMatch!7023) (regTwo!14558 r!13927))) b!2397280))

(assert (= (and b!2396566 ((_ is Concat!11659) (regTwo!14558 r!13927))) b!2397281))

(assert (= (and b!2396566 ((_ is Star!7023) (regTwo!14558 r!13927))) b!2397282))

(assert (= (and b!2396566 ((_ is Union!7023) (regTwo!14558 r!13927))) b!2397283))

(declare-fun b!2397288 () Bool)

(declare-fun e!1527610 () Bool)

(declare-fun tp!763205 () Bool)

(assert (=> b!2397288 (= e!1527610 (and tp_is_empty!11459 tp!763205))))

(assert (=> b!2396581 (= tp!763116 e!1527610)))

(assert (= (and b!2396581 ((_ is Cons!28186) (t!208261 s!9460))) b!2397288))

(declare-fun e!1527611 () Bool)

(assert (=> b!2396572 (= tp!763117 e!1527611)))

(declare-fun b!2397290 () Bool)

(declare-fun tp!763209 () Bool)

(declare-fun tp!763206 () Bool)

(assert (=> b!2397290 (= e!1527611 (and tp!763209 tp!763206))))

(declare-fun b!2397292 () Bool)

(declare-fun tp!763210 () Bool)

(declare-fun tp!763208 () Bool)

(assert (=> b!2397292 (= e!1527611 (and tp!763210 tp!763208))))

(declare-fun b!2397289 () Bool)

(assert (=> b!2397289 (= e!1527611 tp_is_empty!11459)))

(declare-fun b!2397291 () Bool)

(declare-fun tp!763207 () Bool)

(assert (=> b!2397291 (= e!1527611 tp!763207)))

(assert (= (and b!2396572 ((_ is ElementMatch!7023) (regOne!14559 r!13927))) b!2397289))

(assert (= (and b!2396572 ((_ is Concat!11659) (regOne!14559 r!13927))) b!2397290))

(assert (= (and b!2396572 ((_ is Star!7023) (regOne!14559 r!13927))) b!2397291))

(assert (= (and b!2396572 ((_ is Union!7023) (regOne!14559 r!13927))) b!2397292))

(declare-fun e!1527612 () Bool)

(assert (=> b!2396572 (= tp!763110 e!1527612)))

(declare-fun b!2397294 () Bool)

(declare-fun tp!763214 () Bool)

(declare-fun tp!763211 () Bool)

(assert (=> b!2397294 (= e!1527612 (and tp!763214 tp!763211))))

(declare-fun b!2397296 () Bool)

(declare-fun tp!763215 () Bool)

(declare-fun tp!763213 () Bool)

(assert (=> b!2397296 (= e!1527612 (and tp!763215 tp!763213))))

(declare-fun b!2397293 () Bool)

(assert (=> b!2397293 (= e!1527612 tp_is_empty!11459)))

(declare-fun b!2397295 () Bool)

(declare-fun tp!763212 () Bool)

(assert (=> b!2397295 (= e!1527612 tp!763212)))

(assert (= (and b!2396572 ((_ is ElementMatch!7023) (regTwo!14559 r!13927))) b!2397293))

(assert (= (and b!2396572 ((_ is Concat!11659) (regTwo!14559 r!13927))) b!2397294))

(assert (= (and b!2396572 ((_ is Star!7023) (regTwo!14559 r!13927))) b!2397295))

(assert (= (and b!2396572 ((_ is Union!7023) (regTwo!14559 r!13927))) b!2397296))

(declare-fun b_lambda!74265 () Bool)

(assert (= b_lambda!74263 (or start!235152 b_lambda!74265)))

(declare-fun bs!462978 () Bool)

(declare-fun d!699222 () Bool)

(assert (= bs!462978 (and d!699222 start!235152)))

(assert (=> bs!462978 (= (dynLambda!12138 lambda!89967 (h!33588 l!9164)) (validRegex!2748 (h!33588 l!9164)))))

(assert (=> bs!462978 m!2795341))

(assert (=> b!2397233 d!699222))

(check-sat (not b!2397294) (not b!2397110) (not b!2397291) (not b!2397292) (not b!2397208) (not b!2397024) (not b!2397190) (not bm!146304) (not d!699210) (not b!2396756) (not b!2396988) (not d!699204) (not b!2396760) (not b!2397223) (not d!699080) (not b!2397032) (not b!2397216) (not b!2397279) (not b!2397138) (not b!2397108) (not b!2397295) (not b!2397281) (not bm!146288) (not d!699124) (not b!2397218) (not b!2397068) (not b!2397275) (not d!699126) (not d!699106) (not b!2397094) (not b!2397264) (not b!2397214) (not d!699162) (not b!2397071) (not b!2397195) (not bm!146287) (not b!2397194) (not b!2396890) (not b!2397222) (not b!2397067) (not b!2397227) (not b!2397251) (not b!2397234) (not d!699182) (not bm!146302) (not b!2397250) (not b!2396755) (not b!2396884) tp_is_empty!11459 (not d!699168) (not d!699218) (not b!2397252) (not bm!146307) (not b!2397077) (not b!2397185) (not b!2397102) (not b!2397273) (not b!2397069) (not d!699196) (not b_lambda!74265) (not d!699202) (not b!2397086) (not b!2397278) (not b!2397228) (not b!2397207) (not bm!146284) (not b!2397186) (not b!2397220) (not b!2397098) (not bm!146303) (not b!2397106) (not b!2397101) (not bm!146297) (not b!2397082) (not d!699082) (not b!2396984) (not b!2397192) (not b!2396893) (not b!2397111) (not b!2396753) (not bm!146305) (not b!2397288) (not b!2396987) (not b!2397063) (not b!2396989) (not b!2397282) (not b!2397099) (not b!2397277) (not d!699146) (not b!2397096) (not d!699216) (not b!2397210) (not b!2397266) (not b!2396981) (not b!2397296) (not b!2397084) (not b!2397027) (not b!2396888) (not b!2397066) (not b!2396759) (not b!2397246) (not bs!462978) (not b!2397219) (not b!2397265) (not b!2397181) (not b!2397274) (not d!699184) (not b!2397290) (not b!2397247) (not bm!146295) (not b!2396761) (not b!2396883) (not b!2397026) (not b!2397072) (not b!2397244) (not b!2397030) (not b!2397178) (not b!2397075) (not d!699198) (not d!699200) (not d!699190) (not b!2396892) (not b!2397087) (not d!699160) (not b!2397213) (not d!699214) (not d!699174) (not b!2397226) (not b!2397095) (not d!699186) (not b!2397241) (not b!2397090) (not d!699122) (not d!699170) (not b!2397283) (not b!2397271) (not d!699180) (not b!2397078) (not b!2397093) (not b!2397215) (not b!2397031) (not b!2396983))
(check-sat)
