; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88346 () Bool)

(assert start!88346)

(declare-fun b!1010273 () Bool)

(assert (=> b!1010273 true))

(assert (=> b!1010273 true))

(assert (=> b!1010273 true))

(declare-fun lambda!35856 () Int)

(declare-fun lambda!35855 () Int)

(assert (=> b!1010273 (not (= lambda!35856 lambda!35855))))

(assert (=> b!1010273 true))

(assert (=> b!1010273 true))

(assert (=> b!1010273 true))

(declare-fun e!646444 () Bool)

(declare-fun e!646449 () Bool)

(assert (=> b!1010273 (= e!646444 e!646449)))

(declare-fun res!455106 () Bool)

(assert (=> b!1010273 (=> res!455106 e!646449)))

(declare-datatypes ((C!6160 0))(
  ( (C!6161 (val!3328 Int)) )
))
(declare-datatypes ((List!10025 0))(
  ( (Nil!10009) (Cons!10009 (h!15410 C!6160) (t!101071 List!10025)) )
))
(declare-fun s!10566 () List!10025)

(declare-fun isEmpty!6354 (List!10025) Bool)

(assert (=> b!1010273 (= res!455106 (isEmpty!6354 s!10566))))

(declare-fun Exists!528 (Int) Bool)

(assert (=> b!1010273 (= (Exists!528 lambda!35855) (Exists!528 lambda!35856))))

(declare-datatypes ((Unit!15251 0))(
  ( (Unit!15252) )
))
(declare-fun lt!353055 () Unit!15251)

(declare-datatypes ((Regex!2795 0))(
  ( (ElementMatch!2795 (c!166822 C!6160)) (Concat!4628 (regOne!6102 Regex!2795) (regTwo!6102 Regex!2795)) (EmptyExpr!2795) (Star!2795 (reg!3124 Regex!2795)) (EmptyLang!2795) (Union!2795 (regOne!6103 Regex!2795) (regTwo!6103 Regex!2795)) )
))
(declare-fun r!15766 () Regex!2795)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!166 (Regex!2795 List!10025) Unit!15251)

(assert (=> b!1010273 (= lt!353055 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!166 (reg!3124 r!15766) s!10566))))

(declare-fun lt!353053 () Bool)

(assert (=> b!1010273 (= lt!353053 (Exists!528 lambda!35855))))

(declare-datatypes ((tuple2!11384 0))(
  ( (tuple2!11385 (_1!6518 List!10025) (_2!6518 List!10025)) )
))
(declare-datatypes ((Option!2334 0))(
  ( (None!2333) (Some!2333 (v!19750 tuple2!11384)) )
))
(declare-fun lt!353047 () Option!2334)

(declare-fun isDefined!1976 (Option!2334) Bool)

(assert (=> b!1010273 (= lt!353053 (isDefined!1976 lt!353047))))

(declare-fun lt!353050 () Regex!2795)

(declare-fun findConcatSeparation!440 (Regex!2795 Regex!2795 List!10025 List!10025 List!10025) Option!2334)

(assert (=> b!1010273 (= lt!353047 (findConcatSeparation!440 (reg!3124 r!15766) lt!353050 Nil!10009 s!10566 s!10566))))

(declare-fun lt!353051 () Unit!15251)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!440 (Regex!2795 Regex!2795 List!10025) Unit!15251)

(assert (=> b!1010273 (= lt!353051 (lemmaFindConcatSeparationEquivalentToExists!440 (reg!3124 r!15766) lt!353050 s!10566))))

(assert (=> b!1010273 (= lt!353050 (Star!2795 (reg!3124 r!15766)))))

(declare-fun b!1010274 () Bool)

(declare-fun e!646445 () Unit!15251)

(declare-fun Unit!15253 () Unit!15251)

(assert (=> b!1010274 (= e!646445 Unit!15253)))

(declare-fun b!1010275 () Bool)

(declare-fun Unit!15254 () Unit!15251)

(assert (=> b!1010275 (= e!646445 Unit!15254)))

(declare-fun lt!353045 () Unit!15251)

(declare-fun lt!353054 () tuple2!11384)

(declare-fun mainMatchTheorem!594 (Regex!2795 List!10025) Unit!15251)

(assert (=> b!1010275 (= lt!353045 (mainMatchTheorem!594 (reg!3124 r!15766) (_1!6518 lt!353054)))))

(assert (=> b!1010275 false))

(declare-fun b!1010276 () Bool)

(declare-fun e!646446 () Bool)

(assert (=> b!1010276 (= e!646446 (not e!646444))))

(declare-fun res!455110 () Bool)

(assert (=> b!1010276 (=> res!455110 e!646444)))

(declare-fun lt!353049 () Bool)

(get-info :version)

(assert (=> b!1010276 (= res!455110 (or (not lt!353049) (and ((_ is Concat!4628) r!15766) ((_ is EmptyExpr!2795) (regOne!6102 r!15766))) (and ((_ is Concat!4628) r!15766) ((_ is EmptyExpr!2795) (regTwo!6102 r!15766))) ((_ is Concat!4628) r!15766) ((_ is Union!2795) r!15766) (not ((_ is Star!2795) r!15766))))))

(declare-fun matchRSpec!594 (Regex!2795 List!10025) Bool)

(assert (=> b!1010276 (= lt!353049 (matchRSpec!594 r!15766 s!10566))))

(declare-fun matchR!1331 (Regex!2795 List!10025) Bool)

(assert (=> b!1010276 (= lt!353049 (matchR!1331 r!15766 s!10566))))

(declare-fun lt!353046 () Unit!15251)

(assert (=> b!1010276 (= lt!353046 (mainMatchTheorem!594 r!15766 s!10566))))

(declare-fun b!1010278 () Bool)

(declare-fun e!646447 () Bool)

(declare-fun tp!307511 () Bool)

(declare-fun tp!307508 () Bool)

(assert (=> b!1010278 (= e!646447 (and tp!307511 tp!307508))))

(declare-fun b!1010279 () Bool)

(declare-fun e!646448 () Bool)

(declare-fun validRegex!1264 (Regex!2795) Bool)

(assert (=> b!1010279 (= e!646448 (validRegex!1264 lt!353050))))

(declare-fun lt!353048 () Unit!15251)

(assert (=> b!1010279 (= lt!353048 e!646445)))

(declare-fun c!166821 () Bool)

(declare-fun size!7971 (List!10025) Int)

(assert (=> b!1010279 (= c!166821 (= (size!7971 (_2!6518 lt!353054)) (size!7971 s!10566)))))

(declare-fun removeUselessConcat!376 (Regex!2795) Regex!2795)

(assert (=> b!1010279 (matchR!1331 (removeUselessConcat!376 (reg!3124 r!15766)) (_1!6518 lt!353054))))

(declare-fun lt!353052 () Unit!15251)

(declare-fun lemmaRemoveUselessConcatSound!220 (Regex!2795 List!10025) Unit!15251)

(assert (=> b!1010279 (= lt!353052 (lemmaRemoveUselessConcatSound!220 (reg!3124 r!15766) (_1!6518 lt!353054)))))

(declare-fun b!1010280 () Bool)

(declare-fun tp!307507 () Bool)

(declare-fun tp!307512 () Bool)

(assert (=> b!1010280 (= e!646447 (and tp!307507 tp!307512))))

(declare-fun b!1010281 () Bool)

(declare-fun e!646443 () Bool)

(declare-fun tp_is_empty!5233 () Bool)

(declare-fun tp!307509 () Bool)

(assert (=> b!1010281 (= e!646443 (and tp_is_empty!5233 tp!307509))))

(declare-fun b!1010282 () Bool)

(declare-fun tp!307510 () Bool)

(assert (=> b!1010282 (= e!646447 tp!307510)))

(declare-fun b!1010283 () Bool)

(declare-fun res!455109 () Bool)

(assert (=> b!1010283 (=> res!455109 e!646448)))

(assert (=> b!1010283 (= res!455109 (not (matchR!1331 lt!353050 (_2!6518 lt!353054))))))

(declare-fun res!455108 () Bool)

(assert (=> start!88346 (=> (not res!455108) (not e!646446))))

(assert (=> start!88346 (= res!455108 (validRegex!1264 r!15766))))

(assert (=> start!88346 e!646446))

(assert (=> start!88346 e!646447))

(assert (=> start!88346 e!646443))

(declare-fun b!1010277 () Bool)

(declare-fun res!455105 () Bool)

(assert (=> b!1010277 (=> res!455105 e!646449)))

(assert (=> b!1010277 (= res!455105 (not lt!353053))))

(declare-fun b!1010284 () Bool)

(assert (=> b!1010284 (= e!646449 e!646448)))

(declare-fun res!455107 () Bool)

(assert (=> b!1010284 (=> res!455107 e!646448)))

(assert (=> b!1010284 (= res!455107 (not (matchR!1331 (reg!3124 r!15766) (_1!6518 lt!353054))))))

(declare-fun get!3507 (Option!2334) tuple2!11384)

(assert (=> b!1010284 (= lt!353054 (get!3507 lt!353047))))

(declare-fun b!1010285 () Bool)

(assert (=> b!1010285 (= e!646447 tp_is_empty!5233)))

(assert (= (and start!88346 res!455108) b!1010276))

(assert (= (and b!1010276 (not res!455110)) b!1010273))

(assert (= (and b!1010273 (not res!455106)) b!1010277))

(assert (= (and b!1010277 (not res!455105)) b!1010284))

(assert (= (and b!1010284 (not res!455107)) b!1010283))

(assert (= (and b!1010283 (not res!455109)) b!1010279))

(assert (= (and b!1010279 c!166821) b!1010275))

(assert (= (and b!1010279 (not c!166821)) b!1010274))

(assert (= (and start!88346 ((_ is ElementMatch!2795) r!15766)) b!1010285))

(assert (= (and start!88346 ((_ is Concat!4628) r!15766)) b!1010278))

(assert (= (and start!88346 ((_ is Star!2795) r!15766)) b!1010282))

(assert (= (and start!88346 ((_ is Union!2795) r!15766)) b!1010280))

(assert (= (and start!88346 ((_ is Cons!10009) s!10566)) b!1010281))

(declare-fun m!1194491 () Bool)

(assert (=> start!88346 m!1194491))

(declare-fun m!1194493 () Bool)

(assert (=> b!1010279 m!1194493))

(declare-fun m!1194495 () Bool)

(assert (=> b!1010279 m!1194495))

(declare-fun m!1194497 () Bool)

(assert (=> b!1010279 m!1194497))

(declare-fun m!1194499 () Bool)

(assert (=> b!1010279 m!1194499))

(assert (=> b!1010279 m!1194493))

(declare-fun m!1194501 () Bool)

(assert (=> b!1010279 m!1194501))

(declare-fun m!1194503 () Bool)

(assert (=> b!1010279 m!1194503))

(declare-fun m!1194505 () Bool)

(assert (=> b!1010273 m!1194505))

(declare-fun m!1194507 () Bool)

(assert (=> b!1010273 m!1194507))

(declare-fun m!1194509 () Bool)

(assert (=> b!1010273 m!1194509))

(declare-fun m!1194511 () Bool)

(assert (=> b!1010273 m!1194511))

(assert (=> b!1010273 m!1194509))

(declare-fun m!1194513 () Bool)

(assert (=> b!1010273 m!1194513))

(declare-fun m!1194515 () Bool)

(assert (=> b!1010273 m!1194515))

(declare-fun m!1194517 () Bool)

(assert (=> b!1010273 m!1194517))

(declare-fun m!1194519 () Bool)

(assert (=> b!1010275 m!1194519))

(declare-fun m!1194521 () Bool)

(assert (=> b!1010276 m!1194521))

(declare-fun m!1194523 () Bool)

(assert (=> b!1010276 m!1194523))

(declare-fun m!1194525 () Bool)

(assert (=> b!1010276 m!1194525))

(declare-fun m!1194527 () Bool)

(assert (=> b!1010284 m!1194527))

(declare-fun m!1194529 () Bool)

(assert (=> b!1010284 m!1194529))

(declare-fun m!1194531 () Bool)

(assert (=> b!1010283 m!1194531))

(check-sat (not b!1010282) (not b!1010283) (not b!1010280) (not b!1010275) (not b!1010284) (not b!1010276) (not b!1010281) (not start!88346) (not b!1010278) (not b!1010273) (not b!1010279) tp_is_empty!5233)
(check-sat)
