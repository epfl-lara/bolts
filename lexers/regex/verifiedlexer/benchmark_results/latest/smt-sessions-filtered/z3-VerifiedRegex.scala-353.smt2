; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11266 () Bool)

(assert start!11266)

(declare-fun b_free!3417 () Bool)

(declare-fun b_next!3417 () Bool)

(assert (=> start!11266 (= b_free!3417 (not b_next!3417))))

(declare-fun tp!59687 () Bool)

(declare-fun b_and!5515 () Bool)

(assert (=> start!11266 (= tp!59687 b_and!5515)))

(declare-fun b_free!3419 () Bool)

(declare-fun b_next!3419 () Bool)

(assert (=> start!11266 (= b_free!3419 (not b_next!3419))))

(declare-fun tp!59685 () Bool)

(declare-fun b_and!5517 () Bool)

(assert (=> start!11266 (= tp!59685 b_and!5517)))

(assert (=> start!11266 true))

(declare-fun order!1081 () Int)

(declare-fun order!1083 () Int)

(declare-fun lambda!2686 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!713 (Int Int) Int)

(declare-fun dynLambda!714 (Int Int) Int)

(assert (=> start!11266 (< (dynLambda!713 order!1081 f!927) (dynLambda!714 order!1083 lambda!2686))))

(assert (=> start!11266 true))

(declare-fun g!9 () Int)

(assert (=> start!11266 (< (dynLambda!713 order!1081 g!9) (dynLambda!714 order!1083 lambda!2686))))

(declare-fun setNonEmpty!1638 () Bool)

(declare-fun setRes!1638 () Bool)

(declare-fun tp!59686 () Bool)

(declare-fun tp_is_empty!917 () Bool)

(assert (=> setNonEmpty!1638 (= setRes!1638 (and tp!59686 tp_is_empty!917))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!311 0))(
  ( (A!312 (val!612 Int)) )
))
(declare-fun s!1451 () (InoxSet A!311))

(declare-fun setElem!1638 () A!311)

(declare-fun setRest!1638 () (InoxSet A!311))

(assert (=> setNonEmpty!1638 (= s!1451 ((_ map or) (store ((as const (Array A!311 Bool)) false) setElem!1638 true) setRest!1638))))

(declare-fun b!110202 () Bool)

(declare-fun e!61503 () Bool)

(declare-fun e!61499 () Bool)

(assert (=> b!110202 (= e!61503 e!61499)))

(declare-fun res!53224 () Bool)

(assert (=> b!110202 (=> (not res!53224) (not e!61499))))

(declare-datatypes ((List!1779 0))(
  ( (Nil!1773) (Cons!1773 (h!7170 A!311) (t!22142 List!1779)) )
))
(declare-fun lt!32223 () List!1779)

(get-info :version)

(assert (=> b!110202 (= res!53224 ((_ is Cons!1773) lt!32223))))

(declare-fun toList!258 ((InoxSet A!311)) List!1779)

(assert (=> b!110202 (= lt!32223 (toList!258 s!1451))))

(declare-fun b!110203 () Bool)

(declare-fun e!61502 () Bool)

(assert (=> b!110203 (= e!61499 e!61502)))

(declare-fun res!53228 () Bool)

(assert (=> b!110203 (=> (not res!53228) (not e!61502))))

(declare-fun lt!32222 () (InoxSet A!311))

(assert (=> b!110203 (= res!53228 (= s!1451 lt!32222))))

(declare-fun lt!32216 () (InoxSet A!311))

(declare-fun lt!32218 () (InoxSet A!311))

(assert (=> b!110203 (= lt!32222 ((_ map or) lt!32216 lt!32218))))

(declare-fun content!197 (List!1779) (InoxSet A!311))

(assert (=> b!110203 (= lt!32218 (content!197 (t!22142 lt!32223)))))

(assert (=> b!110203 (= lt!32216 (store ((as const (Array A!311 Bool)) false) (h!7170 lt!32223) true))))

(declare-fun b!110204 () Bool)

(declare-fun e!61498 () Bool)

(declare-fun e!61500 () Bool)

(assert (=> b!110204 (= e!61498 e!61500)))

(declare-fun res!53230 () Bool)

(assert (=> b!110204 (=> res!53230 e!61500)))

(declare-fun lt!32221 () Int)

(declare-fun lt!32217 () Int)

(assert (=> b!110204 (= res!53230 (not (= lt!32221 lt!32217)))))

(declare-fun size!1551 (List!1779) Int)

(assert (=> b!110204 (= lt!32217 (size!1551 (t!22142 lt!32223)))))

(declare-fun lt!32210 () Int)

(assert (=> b!110204 (> lt!32210 lt!32221)))

(declare-fun tail!202 (List!1779) List!1779)

(assert (=> b!110204 (= lt!32221 (size!1551 (tail!202 lt!32223)))))

(assert (=> b!110204 (= lt!32210 (size!1551 lt!32223))))

(declare-datatypes ((Unit!1248 0))(
  ( (Unit!1249) )
))
(declare-fun lt!32219 () Unit!1248)

(declare-fun lemmaToListSizeBiggerThanTailContentSize!26 ((InoxSet A!311)) Unit!1248)

(assert (=> b!110204 (= lt!32219 (lemmaToListSizeBiggerThanTailContentSize!26 s!1451))))

(declare-fun lt!32213 () Unit!1248)

(declare-fun forallContained!32 (List!1779 Int A!311) Unit!1248)

(assert (=> b!110204 (= lt!32213 (forallContained!32 lt!32223 lambda!2686 (h!7170 lt!32223)))))

(declare-fun b!110205 () Bool)

(declare-fun e!61501 () Bool)

(assert (=> b!110205 (= e!61502 (not e!61501))))

(declare-fun res!53226 () Bool)

(assert (=> b!110205 (=> res!53226 e!61501)))

(declare-fun forall!325 (List!1779 Int) Bool)

(assert (=> b!110205 (= res!53226 (not (forall!325 (t!22142 lt!32223) lambda!2686)))))

(declare-datatypes ((B!599 0))(
  ( (B!600 (val!613 Int)) )
))
(declare-fun flatMap!59 ((InoxSet A!311) Int) (InoxSet B!599))

(assert (=> b!110205 (= ((_ map or) (flatMap!59 lt!32216 g!9) (flatMap!59 lt!32218 g!9)) (flatMap!59 lt!32222 g!9))))

(declare-fun lt!32220 () Unit!1248)

(declare-fun lemmaFlatMapAssociative!42 ((InoxSet A!311) (InoxSet A!311) Int) Unit!1248)

(assert (=> b!110205 (= lt!32220 (lemmaFlatMapAssociative!42 lt!32216 lt!32218 g!9))))

(assert (=> b!110205 (= ((_ map or) (flatMap!59 lt!32216 f!927) (flatMap!59 lt!32218 f!927)) (flatMap!59 lt!32222 f!927))))

(declare-fun lt!32215 () Unit!1248)

(assert (=> b!110205 (= lt!32215 (lemmaFlatMapAssociative!42 lt!32216 lt!32218 f!927))))

(declare-fun b!110206 () Bool)

(declare-fun e!61497 () Bool)

(assert (=> b!110206 (= e!61497 true)))

(declare-fun lt!32211 () Bool)

(declare-fun forall!326 ((InoxSet A!311) Int) Bool)

(assert (=> b!110206 (= lt!32211 (forall!326 lt!32218 lambda!2686))))

(declare-fun setIsEmpty!1638 () Bool)

(assert (=> setIsEmpty!1638 setRes!1638))

(declare-fun b!110208 () Bool)

(declare-fun res!53225 () Bool)

(assert (=> b!110208 (=> res!53225 e!61498)))

(assert (=> b!110208 (= res!53225 (not (forall!326 lt!32218 lambda!2686)))))

(declare-fun b!110209 () Bool)

(assert (=> b!110209 (= e!61501 e!61498)))

(declare-fun res!53227 () Bool)

(assert (=> b!110209 (=> res!53227 e!61498)))

(declare-fun dynLambda!715 (Int A!311) (InoxSet B!599))

(assert (=> b!110209 (= res!53227 (not (= (dynLambda!715 f!927 (h!7170 lt!32223)) (dynLambda!715 g!9 (h!7170 lt!32223)))))))

(assert (=> b!110209 (forall!326 lt!32218 lambda!2686)))

(declare-fun lt!32224 () Unit!1248)

(declare-fun lemmaForallThenOnContent!36 (List!1779 Int) Unit!1248)

(assert (=> b!110209 (= lt!32224 (lemmaForallThenOnContent!36 (t!22142 lt!32223) lambda!2686))))

(declare-fun b!110207 () Bool)

(assert (=> b!110207 (= e!61500 e!61497)))

(declare-fun res!53223 () Bool)

(assert (=> b!110207 (=> res!53223 e!61497)))

(declare-fun lt!32214 () Int)

(assert (=> b!110207 (= res!53223 (or (not (= lt!32217 lt!32214)) (>= lt!32214 lt!32210)))))

(assert (=> b!110207 (= lt!32214 lt!32217)))

(assert (=> b!110207 (= lt!32214 (size!1551 (toList!258 lt!32218)))))

(declare-fun lt!32212 () Unit!1248)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!16 (List!1779) Unit!1248)

(assert (=> b!110207 (= lt!32212 (lemmaNoDuplicateThenContentToListSameSize!16 (t!22142 lt!32223)))))

(declare-fun res!53229 () Bool)

(assert (=> start!11266 (=> (not res!53229) (not e!61503))))

(assert (=> start!11266 (= res!53229 (forall!326 s!1451 lambda!2686))))

(assert (=> start!11266 e!61503))

(declare-fun condSetEmpty!1638 () Bool)

(assert (=> start!11266 (= condSetEmpty!1638 (= s!1451 ((as const (Array A!311 Bool)) false)))))

(assert (=> start!11266 setRes!1638))

(assert (=> start!11266 tp!59687))

(assert (=> start!11266 tp!59685))

(assert (= (and start!11266 res!53229) b!110202))

(assert (= (and b!110202 res!53224) b!110203))

(assert (= (and b!110203 res!53228) b!110205))

(assert (= (and b!110205 (not res!53226)) b!110209))

(assert (= (and b!110209 (not res!53227)) b!110208))

(assert (= (and b!110208 (not res!53225)) b!110204))

(assert (= (and b!110204 (not res!53230)) b!110207))

(assert (= (and b!110207 (not res!53223)) b!110206))

(assert (= (and start!11266 condSetEmpty!1638) setIsEmpty!1638))

(assert (= (and start!11266 (not condSetEmpty!1638)) setNonEmpty!1638))

(declare-fun b_lambda!1665 () Bool)

(assert (=> (not b_lambda!1665) (not b!110209)))

(declare-fun t!22135 () Bool)

(declare-fun tb!3623 () Bool)

(assert (=> (and start!11266 (= f!927 f!927) t!22135) tb!3623))

(assert (=> b!110209 t!22135))

(declare-fun result!5180 () Bool)

(declare-fun b_and!5519 () Bool)

(assert (= b_and!5515 (and (=> t!22135 result!5180) b_and!5519)))

(declare-fun tb!3625 () Bool)

(declare-fun t!22137 () Bool)

(assert (=> (and start!11266 (= g!9 f!927) t!22137) tb!3625))

(assert (=> b!110209 t!22137))

(declare-fun result!5182 () Bool)

(declare-fun b_and!5521 () Bool)

(assert (= b_and!5517 (and (=> t!22137 result!5182) b_and!5521)))

(declare-fun b_lambda!1667 () Bool)

(assert (=> (not b_lambda!1667) (not b!110209)))

(declare-fun t!22139 () Bool)

(declare-fun tb!3627 () Bool)

(assert (=> (and start!11266 (= f!927 g!9) t!22139) tb!3627))

(assert (=> b!110209 t!22139))

(declare-fun result!5184 () Bool)

(declare-fun b_and!5523 () Bool)

(assert (= b_and!5519 (and (=> t!22139 result!5184) b_and!5523)))

(declare-fun t!22141 () Bool)

(declare-fun tb!3629 () Bool)

(assert (=> (and start!11266 (= g!9 g!9) t!22141) tb!3629))

(assert (=> b!110209 t!22141))

(declare-fun result!5186 () Bool)

(declare-fun b_and!5525 () Bool)

(assert (= b_and!5521 (and (=> t!22141 result!5186) b_and!5525)))

(declare-fun m!100342 () Bool)

(assert (=> b!110202 m!100342))

(declare-fun m!100344 () Bool)

(assert (=> b!110208 m!100344))

(declare-fun m!100346 () Bool)

(assert (=> b!110204 m!100346))

(declare-fun m!100348 () Bool)

(assert (=> b!110204 m!100348))

(declare-fun m!100350 () Bool)

(assert (=> b!110204 m!100350))

(declare-fun m!100352 () Bool)

(assert (=> b!110204 m!100352))

(declare-fun m!100354 () Bool)

(assert (=> b!110204 m!100354))

(assert (=> b!110204 m!100346))

(declare-fun m!100356 () Bool)

(assert (=> b!110204 m!100356))

(declare-fun m!100358 () Bool)

(assert (=> b!110205 m!100358))

(declare-fun m!100360 () Bool)

(assert (=> b!110205 m!100360))

(declare-fun m!100362 () Bool)

(assert (=> b!110205 m!100362))

(declare-fun m!100364 () Bool)

(assert (=> b!110205 m!100364))

(declare-fun m!100366 () Bool)

(assert (=> b!110205 m!100366))

(declare-fun m!100368 () Bool)

(assert (=> b!110205 m!100368))

(declare-fun m!100370 () Bool)

(assert (=> b!110205 m!100370))

(declare-fun m!100372 () Bool)

(assert (=> b!110205 m!100372))

(declare-fun m!100374 () Bool)

(assert (=> b!110205 m!100374))

(declare-fun m!100376 () Bool)

(assert (=> b!110209 m!100376))

(declare-fun m!100378 () Bool)

(assert (=> b!110209 m!100378))

(assert (=> b!110209 m!100344))

(declare-fun m!100380 () Bool)

(assert (=> b!110209 m!100380))

(assert (=> b!110206 m!100344))

(declare-fun m!100382 () Bool)

(assert (=> b!110203 m!100382))

(declare-fun m!100384 () Bool)

(assert (=> b!110203 m!100384))

(declare-fun m!100386 () Bool)

(assert (=> b!110207 m!100386))

(assert (=> b!110207 m!100386))

(declare-fun m!100388 () Bool)

(assert (=> b!110207 m!100388))

(declare-fun m!100390 () Bool)

(assert (=> b!110207 m!100390))

(declare-fun m!100392 () Bool)

(assert (=> start!11266 m!100392))

(check-sat (not tb!3627) (not tb!3625) (not b_next!3417) (not tb!3629) tp_is_empty!917 b_and!5523 (not start!11266) (not b_lambda!1667) (not b!110202) (not b!110208) (not b!110206) (not b!110204) (not b!110207) (not b!110203) (not b!110205) (not tb!3623) (not b_lambda!1665) (not b_next!3419) b_and!5525 (not b!110209) (not setNonEmpty!1638))
(check-sat b_and!5523 b_and!5525 (not b_next!3419) (not b_next!3417))
