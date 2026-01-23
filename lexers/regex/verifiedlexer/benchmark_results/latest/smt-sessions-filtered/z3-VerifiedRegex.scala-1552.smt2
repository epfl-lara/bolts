; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81038 () Bool)

(assert start!81038)

(declare-fun b!900348 () Bool)

(assert (=> b!900348 true))

(assert (=> b!900348 true))

(assert (=> b!900348 true))

(declare-fun lambda!28124 () Int)

(declare-fun lambda!28123 () Int)

(assert (=> b!900348 (not (= lambda!28124 lambda!28123))))

(assert (=> b!900348 true))

(assert (=> b!900348 true))

(assert (=> b!900348 true))

(declare-fun b!900343 () Bool)

(declare-fun res!409391 () Bool)

(declare-fun e!588737 () Bool)

(assert (=> b!900343 (=> res!409391 e!588737)))

(declare-fun lt!334395 () Bool)

(assert (=> b!900343 (= res!409391 (not lt!334395))))

(declare-fun b!900344 () Bool)

(declare-fun e!588732 () Bool)

(assert (=> b!900344 (= e!588737 e!588732)))

(declare-fun res!409394 () Bool)

(assert (=> b!900344 (=> res!409394 e!588732)))

(declare-datatypes ((C!5296 0))(
  ( (C!5297 (val!2896 Int)) )
))
(declare-datatypes ((Regex!2363 0))(
  ( (ElementMatch!2363 (c!145794 C!5296)) (Concat!4196 (regOne!5238 Regex!2363) (regTwo!5238 Regex!2363)) (EmptyExpr!2363) (Star!2363 (reg!2692 Regex!2363)) (EmptyLang!2363) (Union!2363 (regOne!5239 Regex!2363) (regTwo!5239 Regex!2363)) )
))
(declare-fun r!15766 () Regex!2363)

(declare-datatypes ((List!9593 0))(
  ( (Nil!9577) (Cons!9577 (h!14978 C!5296) (t!100639 List!9593)) )
))
(declare-datatypes ((tuple2!10728 0))(
  ( (tuple2!10729 (_1!6190 List!9593) (_2!6190 List!9593)) )
))
(declare-fun lt!334393 () tuple2!10728)

(declare-fun matchR!901 (Regex!2363 List!9593) Bool)

(assert (=> b!900344 (= res!409394 (not (matchR!901 (reg!2692 r!15766) (_1!6190 lt!334393))))))

(declare-datatypes ((Option!2006 0))(
  ( (None!2005) (Some!2005 (v!19422 tuple2!10728)) )
))
(declare-fun lt!334391 () Option!2006)

(declare-fun get!3043 (Option!2006) tuple2!10728)

(assert (=> b!900344 (= lt!334393 (get!3043 lt!334391))))

(declare-fun b!900345 () Bool)

(declare-fun e!588733 () Bool)

(declare-fun e!588736 () Bool)

(assert (=> b!900345 (= e!588733 (not e!588736))))

(declare-fun res!409393 () Bool)

(assert (=> b!900345 (=> res!409393 e!588736)))

(declare-fun lt!334392 () Bool)

(get-info :version)

(assert (=> b!900345 (= res!409393 (or (not lt!334392) (and ((_ is Concat!4196) r!15766) ((_ is EmptyExpr!2363) (regOne!5238 r!15766))) (and ((_ is Concat!4196) r!15766) ((_ is EmptyExpr!2363) (regTwo!5238 r!15766))) ((_ is Concat!4196) r!15766) ((_ is Union!2363) r!15766) (not ((_ is Star!2363) r!15766))))))

(declare-fun s!10566 () List!9593)

(declare-fun matchRSpec!164 (Regex!2363 List!9593) Bool)

(assert (=> b!900345 (= lt!334392 (matchRSpec!164 r!15766 s!10566))))

(assert (=> b!900345 (= lt!334392 (matchR!901 r!15766 s!10566))))

(declare-datatypes ((Unit!14319 0))(
  ( (Unit!14320) )
))
(declare-fun lt!334396 () Unit!14319)

(declare-fun mainMatchTheorem!164 (Regex!2363 List!9593) Unit!14319)

(assert (=> b!900345 (= lt!334396 (mainMatchTheorem!164 r!15766 s!10566))))

(declare-fun b!900346 () Bool)

(declare-fun lt!334398 () Regex!2363)

(declare-fun validRegex!832 (Regex!2363) Bool)

(assert (=> b!900346 (= e!588732 (validRegex!832 lt!334398))))

(declare-fun removeUselessConcat!76 (Regex!2363) Regex!2363)

(assert (=> b!900346 (matchR!901 (removeUselessConcat!76 lt!334398) (_2!6190 lt!334393))))

(declare-fun lt!334400 () Unit!14319)

(declare-fun lemmaRemoveUselessConcatSound!68 (Regex!2363 List!9593) Unit!14319)

(assert (=> b!900346 (= lt!334400 (lemmaRemoveUselessConcatSound!68 lt!334398 (_2!6190 lt!334393)))))

(declare-fun lt!334401 () Unit!14319)

(declare-fun e!588734 () Unit!14319)

(assert (=> b!900346 (= lt!334401 e!588734)))

(declare-fun c!145793 () Bool)

(declare-fun size!7868 (List!9593) Int)

(assert (=> b!900346 (= c!145793 (= (size!7868 (_2!6190 lt!334393)) (size!7868 s!10566)))))

(assert (=> b!900346 (matchR!901 (removeUselessConcat!76 (reg!2692 r!15766)) (_1!6190 lt!334393))))

(declare-fun lt!334394 () Unit!14319)

(assert (=> b!900346 (= lt!334394 (lemmaRemoveUselessConcatSound!68 (reg!2692 r!15766) (_1!6190 lt!334393)))))

(declare-fun b!900347 () Bool)

(declare-fun e!588735 () Bool)

(declare-fun tp_is_empty!4369 () Bool)

(assert (=> b!900347 (= e!588735 tp_is_empty!4369)))

(assert (=> b!900348 (= e!588736 e!588737)))

(declare-fun res!409395 () Bool)

(assert (=> b!900348 (=> res!409395 e!588737)))

(declare-fun isEmpty!5778 (List!9593) Bool)

(assert (=> b!900348 (= res!409395 (isEmpty!5778 s!10566))))

(declare-fun Exists!140 (Int) Bool)

(assert (=> b!900348 (= (Exists!140 lambda!28123) (Exists!140 lambda!28124))))

(declare-fun lt!334397 () Unit!14319)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!32 (Regex!2363 List!9593) Unit!14319)

(assert (=> b!900348 (= lt!334397 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!32 (reg!2692 r!15766) s!10566))))

(assert (=> b!900348 (= lt!334395 (Exists!140 lambda!28123))))

(declare-fun isDefined!1648 (Option!2006) Bool)

(assert (=> b!900348 (= lt!334395 (isDefined!1648 lt!334391))))

(declare-fun findConcatSeparation!112 (Regex!2363 Regex!2363 List!9593 List!9593 List!9593) Option!2006)

(assert (=> b!900348 (= lt!334391 (findConcatSeparation!112 (reg!2692 r!15766) lt!334398 Nil!9577 s!10566 s!10566))))

(declare-fun lt!334390 () Unit!14319)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!112 (Regex!2363 Regex!2363 List!9593) Unit!14319)

(assert (=> b!900348 (= lt!334390 (lemmaFindConcatSeparationEquivalentToExists!112 (reg!2692 r!15766) lt!334398 s!10566))))

(assert (=> b!900348 (= lt!334398 (Star!2363 (reg!2692 r!15766)))))

(declare-fun b!900349 () Bool)

(declare-fun res!409396 () Bool)

(assert (=> b!900349 (=> res!409396 e!588732)))

(assert (=> b!900349 (= res!409396 (not (matchR!901 lt!334398 (_2!6190 lt!334393))))))

(declare-fun b!900350 () Bool)

(declare-fun Unit!14321 () Unit!14319)

(assert (=> b!900350 (= e!588734 Unit!14321)))

(declare-fun b!900351 () Bool)

(declare-fun tp!282487 () Bool)

(declare-fun tp!282492 () Bool)

(assert (=> b!900351 (= e!588735 (and tp!282487 tp!282492))))

(declare-fun b!900352 () Bool)

(declare-fun tp!282491 () Bool)

(assert (=> b!900352 (= e!588735 tp!282491)))

(declare-fun b!900353 () Bool)

(declare-fun e!588731 () Bool)

(declare-fun tp!282490 () Bool)

(assert (=> b!900353 (= e!588731 (and tp_is_empty!4369 tp!282490))))

(declare-fun b!900355 () Bool)

(declare-fun tp!282488 () Bool)

(declare-fun tp!282489 () Bool)

(assert (=> b!900355 (= e!588735 (and tp!282488 tp!282489))))

(declare-fun b!900354 () Bool)

(declare-fun Unit!14322 () Unit!14319)

(assert (=> b!900354 (= e!588734 Unit!14322)))

(declare-fun lt!334399 () Unit!14319)

(assert (=> b!900354 (= lt!334399 (mainMatchTheorem!164 (reg!2692 r!15766) (_1!6190 lt!334393)))))

(assert (=> b!900354 false))

(declare-fun res!409392 () Bool)

(assert (=> start!81038 (=> (not res!409392) (not e!588733))))

(assert (=> start!81038 (= res!409392 (validRegex!832 r!15766))))

(assert (=> start!81038 e!588733))

(assert (=> start!81038 e!588735))

(assert (=> start!81038 e!588731))

(assert (= (and start!81038 res!409392) b!900345))

(assert (= (and b!900345 (not res!409393)) b!900348))

(assert (= (and b!900348 (not res!409395)) b!900343))

(assert (= (and b!900343 (not res!409391)) b!900344))

(assert (= (and b!900344 (not res!409394)) b!900349))

(assert (= (and b!900349 (not res!409396)) b!900346))

(assert (= (and b!900346 c!145793) b!900354))

(assert (= (and b!900346 (not c!145793)) b!900350))

(assert (= (and start!81038 ((_ is ElementMatch!2363) r!15766)) b!900347))

(assert (= (and start!81038 ((_ is Concat!4196) r!15766)) b!900355))

(assert (= (and start!81038 ((_ is Star!2363) r!15766)) b!900352))

(assert (= (and start!81038 ((_ is Union!2363) r!15766)) b!900351))

(assert (= (and start!81038 ((_ is Cons!9577) s!10566)) b!900353))

(declare-fun m!1138193 () Bool)

(assert (=> b!900346 m!1138193))

(declare-fun m!1138195 () Bool)

(assert (=> b!900346 m!1138195))

(assert (=> b!900346 m!1138193))

(declare-fun m!1138197 () Bool)

(assert (=> b!900346 m!1138197))

(declare-fun m!1138199 () Bool)

(assert (=> b!900346 m!1138199))

(declare-fun m!1138201 () Bool)

(assert (=> b!900346 m!1138201))

(declare-fun m!1138203 () Bool)

(assert (=> b!900346 m!1138203))

(declare-fun m!1138205 () Bool)

(assert (=> b!900346 m!1138205))

(declare-fun m!1138207 () Bool)

(assert (=> b!900346 m!1138207))

(declare-fun m!1138209 () Bool)

(assert (=> b!900346 m!1138209))

(assert (=> b!900346 m!1138197))

(declare-fun m!1138211 () Bool)

(assert (=> start!81038 m!1138211))

(declare-fun m!1138213 () Bool)

(assert (=> b!900345 m!1138213))

(declare-fun m!1138215 () Bool)

(assert (=> b!900345 m!1138215))

(declare-fun m!1138217 () Bool)

(assert (=> b!900345 m!1138217))

(declare-fun m!1138219 () Bool)

(assert (=> b!900354 m!1138219))

(declare-fun m!1138221 () Bool)

(assert (=> b!900349 m!1138221))

(declare-fun m!1138223 () Bool)

(assert (=> b!900344 m!1138223))

(declare-fun m!1138225 () Bool)

(assert (=> b!900344 m!1138225))

(declare-fun m!1138227 () Bool)

(assert (=> b!900348 m!1138227))

(declare-fun m!1138229 () Bool)

(assert (=> b!900348 m!1138229))

(declare-fun m!1138231 () Bool)

(assert (=> b!900348 m!1138231))

(declare-fun m!1138233 () Bool)

(assert (=> b!900348 m!1138233))

(declare-fun m!1138235 () Bool)

(assert (=> b!900348 m!1138235))

(declare-fun m!1138237 () Bool)

(assert (=> b!900348 m!1138237))

(assert (=> b!900348 m!1138233))

(declare-fun m!1138239 () Bool)

(assert (=> b!900348 m!1138239))

(check-sat (not b!900352) (not b!900346) (not b!900354) (not b!900348) (not start!81038) (not b!900353) (not b!900345) (not b!900355) (not b!900351) (not b!900349) tp_is_empty!4369 (not b!900344))
(check-sat)
