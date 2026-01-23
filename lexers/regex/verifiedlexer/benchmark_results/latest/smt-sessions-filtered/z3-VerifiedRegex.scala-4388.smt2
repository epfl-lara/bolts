; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!233256 () Bool)

(assert start!233256)

(declare-fun b!2377161 () Bool)

(assert (=> b!2377161 true))

(assert (=> b!2377161 true))

(declare-fun lambda!88361 () Int)

(declare-fun lambda!88360 () Int)

(assert (=> b!2377161 (not (= lambda!88361 lambda!88360))))

(assert (=> b!2377161 true))

(assert (=> b!2377161 true))

(declare-fun b!2377150 () Bool)

(declare-fun e!1516566 () Bool)

(declare-fun tp!759269 () Bool)

(declare-fun tp!759273 () Bool)

(assert (=> b!2377150 (= e!1516566 (and tp!759269 tp!759273))))

(declare-fun b!2377151 () Bool)

(declare-fun e!1516570 () Bool)

(declare-fun e!1516568 () Bool)

(assert (=> b!2377151 (= e!1516570 e!1516568)))

(declare-fun res!1009375 () Bool)

(assert (=> b!2377151 (=> res!1009375 e!1516568)))

(declare-datatypes ((C!14096 0))(
  ( (C!14097 (val!8290 Int)) )
))
(declare-datatypes ((Regex!6969 0))(
  ( (ElementMatch!6969 (c!377849 C!14096)) (Concat!11605 (regOne!14450 Regex!6969) (regTwo!14450 Regex!6969)) (EmptyExpr!6969) (Star!6969 (reg!7298 Regex!6969)) (EmptyLang!6969) (Union!6969 (regOne!14451 Regex!6969) (regTwo!14451 Regex!6969)) )
))
(declare-fun lt!867337 () Regex!6969)

(declare-fun validRegex!2694 (Regex!6969) Bool)

(assert (=> b!2377151 (= res!1009375 (not (validRegex!2694 lt!867337)))))

(declare-datatypes ((List!28176 0))(
  ( (Nil!28078) (Cons!28078 (h!33479 C!14096) (t!208153 List!28176)) )
))
(declare-datatypes ((tuple2!27802 0))(
  ( (tuple2!27803 (_1!16442 List!28176) (_2!16442 List!28176)) )
))
(declare-fun lt!867335 () tuple2!27802)

(declare-datatypes ((Option!5512 0))(
  ( (None!5511) (Some!5511 (v!30919 tuple2!27802)) )
))
(declare-fun lt!867336 () Option!5512)

(declare-fun get!8552 (Option!5512) tuple2!27802)

(assert (=> b!2377151 (= lt!867335 (get!8552 lt!867336))))

(declare-fun b!2377152 () Bool)

(declare-fun e!1516573 () Bool)

(declare-fun e!1516574 () Bool)

(assert (=> b!2377152 (= e!1516573 (not e!1516574))))

(declare-fun res!1009366 () Bool)

(assert (=> b!2377152 (=> res!1009366 e!1516574)))

(declare-fun r!13927 () Regex!6969)

(get-info :version)

(assert (=> b!2377152 (= res!1009366 (not ((_ is Concat!11605) r!13927)))))

(declare-fun lt!867329 () Bool)

(declare-fun lt!867333 () Bool)

(assert (=> b!2377152 (= lt!867329 lt!867333)))

(declare-fun s!9460 () List!28176)

(declare-fun matchRSpec!818 (Regex!6969 List!28176) Bool)

(assert (=> b!2377152 (= lt!867333 (matchRSpec!818 r!13927 s!9460))))

(declare-fun matchR!3086 (Regex!6969 List!28176) Bool)

(assert (=> b!2377152 (= lt!867329 (matchR!3086 r!13927 s!9460))))

(declare-datatypes ((Unit!40973 0))(
  ( (Unit!40974) )
))
(declare-fun lt!867328 () Unit!40973)

(declare-fun mainMatchTheorem!818 (Regex!6969 List!28176) Unit!40973)

(assert (=> b!2377152 (= lt!867328 (mainMatchTheorem!818 r!13927 s!9460))))

(declare-fun b!2377153 () Bool)

(declare-fun res!1009373 () Bool)

(assert (=> b!2377153 (=> (not res!1009373) (not e!1516573))))

(declare-datatypes ((List!28177 0))(
  ( (Nil!28079) (Cons!28079 (h!33480 Regex!6969) (t!208154 List!28177)) )
))
(declare-fun l!9164 () List!28177)

(declare-fun generalisedConcat!70 (List!28177) Regex!6969)

(assert (=> b!2377153 (= res!1009373 (= r!13927 (generalisedConcat!70 l!9164)))))

(declare-fun b!2377154 () Bool)

(assert (=> b!2377154 (= e!1516568 true)))

(declare-fun lt!867338 () List!28176)

(declare-fun ++!6924 (List!28176 List!28176) List!28176)

(assert (=> b!2377154 (= lt!867338 (++!6924 (_1!16442 lt!867335) (_2!16442 lt!867335)))))

(declare-fun b!2377155 () Bool)

(declare-fun e!1516565 () Bool)

(assert (=> b!2377155 (= e!1516565 e!1516570)))

(declare-fun res!1009376 () Bool)

(assert (=> b!2377155 (=> res!1009376 e!1516570)))

(declare-fun isDefined!4340 (Option!5512) Bool)

(assert (=> b!2377155 (= res!1009376 (not (isDefined!4340 lt!867336)))))

(declare-fun findConcatSeparation!620 (Regex!6969 Regex!6969 List!28176 List!28176 List!28176) Option!5512)

(assert (=> b!2377155 (= lt!867336 (findConcatSeparation!620 lt!867337 EmptyExpr!6969 Nil!28078 s!9460 s!9460))))

(declare-fun b!2377156 () Bool)

(declare-fun e!1516569 () Bool)

(declare-fun tp_is_empty!11351 () Bool)

(assert (=> b!2377156 (= e!1516569 tp_is_empty!11351)))

(declare-fun b!2377157 () Bool)

(declare-fun tp!759272 () Bool)

(declare-fun tp!759266 () Bool)

(assert (=> b!2377157 (= e!1516569 (and tp!759272 tp!759266))))

(declare-fun b!2377158 () Bool)

(declare-fun e!1516571 () Bool)

(assert (=> b!2377158 (= e!1516571 e!1516565)))

(declare-fun res!1009369 () Bool)

(assert (=> b!2377158 (=> res!1009369 e!1516565)))

(assert (=> b!2377158 (= res!1009369 (matchR!3086 lt!867337 s!9460))))

(declare-fun head!5172 (List!28177) Regex!6969)

(assert (=> b!2377158 (= lt!867337 (head!5172 l!9164))))

(declare-fun b!2377159 () Bool)

(declare-fun res!1009370 () Bool)

(assert (=> b!2377159 (=> res!1009370 e!1516571)))

(declare-fun lt!867334 () List!28177)

(assert (=> b!2377159 (= res!1009370 (not (= (generalisedConcat!70 lt!867334) EmptyExpr!6969)))))

(declare-fun b!2377160 () Bool)

(declare-fun tp!759270 () Bool)

(declare-fun tp!759268 () Bool)

(assert (=> b!2377160 (= e!1516569 (and tp!759270 tp!759268))))

(declare-fun e!1516572 () Bool)

(assert (=> b!2377161 (= e!1516574 e!1516572)))

(declare-fun res!1009368 () Bool)

(assert (=> b!2377161 (=> res!1009368 e!1516572)))

(declare-fun lt!867330 () Bool)

(assert (=> b!2377161 (= res!1009368 (not (= lt!867333 lt!867330)))))

(declare-fun Exists!1031 (Int) Bool)

(assert (=> b!2377161 (= (Exists!1031 lambda!88360) (Exists!1031 lambda!88361))))

(declare-fun lt!867331 () Unit!40973)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!370 (Regex!6969 Regex!6969 List!28176) Unit!40973)

(assert (=> b!2377161 (= lt!867331 (lemmaExistCutMatchRandMatchRSpecEquivalent!370 (regOne!14450 r!13927) (regTwo!14450 r!13927) s!9460))))

(assert (=> b!2377161 (= lt!867330 (Exists!1031 lambda!88360))))

(assert (=> b!2377161 (= lt!867330 (isDefined!4340 (findConcatSeparation!620 (regOne!14450 r!13927) (regTwo!14450 r!13927) Nil!28078 s!9460 s!9460)))))

(declare-fun lt!867332 () Unit!40973)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!620 (Regex!6969 Regex!6969 List!28176) Unit!40973)

(assert (=> b!2377161 (= lt!867332 (lemmaFindConcatSeparationEquivalentToExists!620 (regOne!14450 r!13927) (regTwo!14450 r!13927) s!9460))))

(declare-fun b!2377162 () Bool)

(declare-fun e!1516567 () Bool)

(declare-fun tp!759267 () Bool)

(assert (=> b!2377162 (= e!1516567 (and tp_is_empty!11351 tp!759267))))

(declare-fun b!2377163 () Bool)

(declare-fun res!1009372 () Bool)

(assert (=> b!2377163 (=> res!1009372 e!1516568)))

(assert (=> b!2377163 (= res!1009372 false)))

(declare-fun res!1009374 () Bool)

(assert (=> start!233256 (=> (not res!1009374) (not e!1516573))))

(declare-fun lambda!88359 () Int)

(declare-fun forall!5603 (List!28177 Int) Bool)

(assert (=> start!233256 (= res!1009374 (forall!5603 l!9164 lambda!88359))))

(assert (=> start!233256 e!1516573))

(assert (=> start!233256 e!1516566))

(assert (=> start!233256 e!1516569))

(assert (=> start!233256 e!1516567))

(declare-fun b!2377164 () Bool)

(declare-fun res!1009371 () Bool)

(assert (=> b!2377164 (=> res!1009371 e!1516572)))

(declare-fun isEmpty!16019 (List!28177) Bool)

(assert (=> b!2377164 (= res!1009371 (isEmpty!16019 l!9164))))

(declare-fun b!2377165 () Bool)

(declare-fun tp!759271 () Bool)

(assert (=> b!2377165 (= e!1516569 tp!759271)))

(declare-fun b!2377166 () Bool)

(assert (=> b!2377166 (= e!1516572 e!1516571)))

(declare-fun res!1009367 () Bool)

(assert (=> b!2377166 (=> res!1009367 e!1516571)))

(assert (=> b!2377166 (= res!1009367 (not (isEmpty!16019 lt!867334)))))

(declare-fun tail!3442 (List!28177) List!28177)

(assert (=> b!2377166 (= lt!867334 (tail!3442 l!9164))))

(assert (= (and start!233256 res!1009374) b!2377153))

(assert (= (and b!2377153 res!1009373) b!2377152))

(assert (= (and b!2377152 (not res!1009366)) b!2377161))

(assert (= (and b!2377161 (not res!1009368)) b!2377164))

(assert (= (and b!2377164 (not res!1009371)) b!2377166))

(assert (= (and b!2377166 (not res!1009367)) b!2377159))

(assert (= (and b!2377159 (not res!1009370)) b!2377158))

(assert (= (and b!2377158 (not res!1009369)) b!2377155))

(assert (= (and b!2377155 (not res!1009376)) b!2377151))

(assert (= (and b!2377151 (not res!1009375)) b!2377163))

(assert (= (and b!2377163 (not res!1009372)) b!2377154))

(assert (= (and start!233256 ((_ is Cons!28079) l!9164)) b!2377150))

(assert (= (and start!233256 ((_ is ElementMatch!6969) r!13927)) b!2377156))

(assert (= (and start!233256 ((_ is Concat!11605) r!13927)) b!2377157))

(assert (= (and start!233256 ((_ is Star!6969) r!13927)) b!2377165))

(assert (= (and start!233256 ((_ is Union!6969) r!13927)) b!2377160))

(assert (= (and start!233256 ((_ is Cons!28078) s!9460)) b!2377162))

(declare-fun m!2782331 () Bool)

(assert (=> b!2377154 m!2782331))

(declare-fun m!2782333 () Bool)

(assert (=> b!2377155 m!2782333))

(declare-fun m!2782335 () Bool)

(assert (=> b!2377155 m!2782335))

(declare-fun m!2782337 () Bool)

(assert (=> b!2377159 m!2782337))

(declare-fun m!2782339 () Bool)

(assert (=> b!2377166 m!2782339))

(declare-fun m!2782341 () Bool)

(assert (=> b!2377166 m!2782341))

(declare-fun m!2782343 () Bool)

(assert (=> b!2377151 m!2782343))

(declare-fun m!2782345 () Bool)

(assert (=> b!2377151 m!2782345))

(declare-fun m!2782347 () Bool)

(assert (=> b!2377158 m!2782347))

(declare-fun m!2782349 () Bool)

(assert (=> b!2377158 m!2782349))

(declare-fun m!2782351 () Bool)

(assert (=> b!2377164 m!2782351))

(declare-fun m!2782353 () Bool)

(assert (=> b!2377161 m!2782353))

(declare-fun m!2782355 () Bool)

(assert (=> b!2377161 m!2782355))

(declare-fun m!2782357 () Bool)

(assert (=> b!2377161 m!2782357))

(declare-fun m!2782359 () Bool)

(assert (=> b!2377161 m!2782359))

(assert (=> b!2377161 m!2782353))

(declare-fun m!2782361 () Bool)

(assert (=> b!2377161 m!2782361))

(declare-fun m!2782363 () Bool)

(assert (=> b!2377161 m!2782363))

(assert (=> b!2377161 m!2782355))

(declare-fun m!2782365 () Bool)

(assert (=> b!2377152 m!2782365))

(declare-fun m!2782367 () Bool)

(assert (=> b!2377152 m!2782367))

(declare-fun m!2782369 () Bool)

(assert (=> b!2377152 m!2782369))

(declare-fun m!2782371 () Bool)

(assert (=> start!233256 m!2782371))

(declare-fun m!2782373 () Bool)

(assert (=> b!2377153 m!2782373))

(check-sat (not b!2377165) (not start!233256) tp_is_empty!11351 (not b!2377154) (not b!2377164) (not b!2377166) (not b!2377161) (not b!2377153) (not b!2377159) (not b!2377150) (not b!2377162) (not b!2377151) (not b!2377155) (not b!2377158) (not b!2377152) (not b!2377157) (not b!2377160))
(check-sat)
