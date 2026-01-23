; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!686178 () Bool)

(assert start!686178)

(declare-fun b!7067193 () Bool)

(assert (=> b!7067193 true))

(declare-fun b!7067184 () Bool)

(assert (=> b!7067184 true))

(declare-fun b!7067177 () Bool)

(assert (=> b!7067177 true))

(declare-fun e!4248700 () Bool)

(declare-fun e!4248695 () Bool)

(assert (=> b!7067177 (= e!4248700 e!4248695)))

(declare-fun res!2885918 () Bool)

(assert (=> b!7067177 (=> res!2885918 e!4248695)))

(declare-datatypes ((C!35512 0))(
  ( (C!35513 (val!27458 Int)) )
))
(declare-datatypes ((List!68389 0))(
  ( (Nil!68265) (Cons!68265 (h!74713 C!35512) (t!382170 List!68389)) )
))
(declare-fun s!7408 () List!68389)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17621 0))(
  ( (ElementMatch!17621 (c!1317950 C!35512)) (Concat!26466 (regOne!35754 Regex!17621) (regTwo!35754 Regex!17621)) (EmptyExpr!17621) (Star!17621 (reg!17950 Regex!17621)) (EmptyLang!17621) (Union!17621 (regOne!35755 Regex!17621) (regTwo!35755 Regex!17621)) )
))
(declare-datatypes ((List!68390 0))(
  ( (Nil!68266) (Cons!68266 (h!74714 Regex!17621) (t!382171 List!68390)) )
))
(declare-datatypes ((Context!13234 0))(
  ( (Context!13235 (exprs!7117 List!68390)) )
))
(declare-fun lt!2542285 () (InoxSet Context!13234))

(declare-fun lt!2542293 () (InoxSet Context!13234))

(declare-fun derivationStepZipper!3071 ((InoxSet Context!13234) C!35512) (InoxSet Context!13234))

(assert (=> b!7067177 (= res!2885918 (not (= (derivationStepZipper!3071 lt!2542285 (h!74713 s!7408)) lt!2542293)))))

(declare-fun lambda!424211 () Int)

(declare-fun lt!2542282 () Context!13234)

(declare-fun flatMap!2547 ((InoxSet Context!13234) Int) (InoxSet Context!13234))

(declare-fun derivationStepZipperUp!2205 (Context!13234 C!35512) (InoxSet Context!13234))

(assert (=> b!7067177 (= (flatMap!2547 lt!2542285 lambda!424211) (derivationStepZipperUp!2205 lt!2542282 (h!74713 s!7408)))))

(declare-datatypes ((Unit!161950 0))(
  ( (Unit!161951) )
))
(declare-fun lt!2542299 () Unit!161950)

(declare-fun lemmaFlatMapOnSingletonSet!2056 ((InoxSet Context!13234) Context!13234 Int) Unit!161950)

(assert (=> b!7067177 (= lt!2542299 (lemmaFlatMapOnSingletonSet!2056 lt!2542285 lt!2542282 lambda!424211))))

(assert (=> b!7067177 (= lt!2542293 (derivationStepZipperUp!2205 lt!2542282 (h!74713 s!7408)))))

(declare-fun lt!2542305 () Context!13234)

(declare-fun lt!2542309 () Unit!161950)

(declare-fun ct2!306 () Context!13234)

(declare-fun lambda!424210 () Int)

(declare-fun lemmaConcatPreservesForall!932 (List!68390 List!68390 Int) Unit!161950)

(assert (=> b!7067177 (= lt!2542309 (lemmaConcatPreservesForall!932 (exprs!7117 lt!2542305) (exprs!7117 ct2!306) lambda!424210))))

(declare-fun b!7067178 () Bool)

(declare-fun res!2885919 () Bool)

(declare-fun e!4248698 () Bool)

(assert (=> b!7067178 (=> res!2885919 e!4248698)))

(declare-fun lt!2542297 () Bool)

(assert (=> b!7067178 (= res!2885919 (not lt!2542297))))

(declare-fun b!7067180 () Bool)

(declare-fun res!2885922 () Bool)

(declare-fun e!4248696 () Bool)

(assert (=> b!7067180 (=> res!2885922 e!4248696)))

(declare-fun lt!2542306 () Context!13234)

(declare-fun lt!2542300 () (InoxSet Context!13234))

(assert (=> b!7067180 (= res!2885922 (not (select lt!2542300 lt!2542306)))))

(declare-fun b!7067181 () Bool)

(declare-fun e!4248697 () Bool)

(declare-fun e!4248705 () Bool)

(assert (=> b!7067181 (= e!4248697 e!4248705)))

(declare-fun res!2885921 () Bool)

(assert (=> b!7067181 (=> res!2885921 e!4248705)))

(declare-fun lt!2542291 () (InoxSet Context!13234))

(assert (=> b!7067181 (= res!2885921 (not (= lt!2542293 lt!2542291)))))

(declare-fun lt!2542289 () (InoxSet Context!13234))

(declare-fun lt!2542281 () (InoxSet Context!13234))

(assert (=> b!7067181 (= lt!2542291 ((_ map or) lt!2542289 lt!2542281))))

(declare-fun lt!2542292 () Context!13234)

(assert (=> b!7067181 (= lt!2542281 (derivationStepZipperUp!2205 lt!2542292 (h!74713 s!7408)))))

(declare-fun derivationStepZipperDown!2255 (Regex!17621 Context!13234 C!35512) (InoxSet Context!13234))

(assert (=> b!7067181 (= lt!2542289 (derivationStepZipperDown!2255 (h!74714 (exprs!7117 lt!2542305)) lt!2542292 (h!74713 s!7408)))))

(declare-fun lt!2542284 () List!68390)

(declare-fun ++!15738 (List!68390 List!68390) List!68390)

(assert (=> b!7067181 (= lt!2542292 (Context!13235 (++!15738 lt!2542284 (exprs!7117 ct2!306))))))

(declare-fun lt!2542302 () Unit!161950)

(assert (=> b!7067181 (= lt!2542302 (lemmaConcatPreservesForall!932 lt!2542284 (exprs!7117 ct2!306) lambda!424210))))

(declare-fun lt!2542283 () Unit!161950)

(assert (=> b!7067181 (= lt!2542283 (lemmaConcatPreservesForall!932 lt!2542284 (exprs!7117 ct2!306) lambda!424210))))

(declare-fun b!7067182 () Bool)

(declare-fun e!4248692 () Bool)

(declare-fun inv!86911 (Context!13234) Bool)

(assert (=> b!7067182 (= e!4248692 (inv!86911 lt!2542292))))

(declare-fun lt!2542294 () Unit!161950)

(assert (=> b!7067182 (= lt!2542294 (lemmaConcatPreservesForall!932 lt!2542284 (exprs!7117 ct2!306) lambda!424210))))

(declare-fun b!7067183 () Bool)

(declare-fun res!2885911 () Bool)

(declare-fun e!4248703 () Bool)

(assert (=> b!7067183 (=> (not res!2885911) (not e!4248703))))

(get-info :version)

(assert (=> b!7067183 (= res!2885911 ((_ is Cons!68265) s!7408))))

(declare-fun e!4248694 () Bool)

(assert (=> b!7067184 (= e!4248696 e!4248694)))

(declare-fun res!2885915 () Bool)

(assert (=> b!7067184 (=> res!2885915 e!4248694)))

(declare-fun z1!570 () (InoxSet Context!13234))

(assert (=> b!7067184 (= res!2885915 (or (not (= lt!2542282 lt!2542306)) (not (select z1!570 lt!2542305))))))

(assert (=> b!7067184 (= lt!2542282 (Context!13235 (++!15738 (exprs!7117 lt!2542305) (exprs!7117 ct2!306))))))

(declare-fun lt!2542290 () Unit!161950)

(assert (=> b!7067184 (= lt!2542290 (lemmaConcatPreservesForall!932 (exprs!7117 lt!2542305) (exprs!7117 ct2!306) lambda!424210))))

(declare-fun lambda!424209 () Int)

(declare-fun mapPost2!450 ((InoxSet Context!13234) Int Context!13234) Context!13234)

(assert (=> b!7067184 (= lt!2542305 (mapPost2!450 z1!570 lambda!424209 lt!2542306))))

(declare-fun b!7067185 () Bool)

(assert (=> b!7067185 (= e!4248695 e!4248697)))

(declare-fun res!2885907 () Bool)

(assert (=> b!7067185 (=> res!2885907 e!4248697)))

(declare-fun nullable!7304 (Regex!17621) Bool)

(assert (=> b!7067185 (= res!2885907 (not (nullable!7304 (h!74714 (exprs!7117 lt!2542305)))))))

(declare-fun tail!13789 (List!68390) List!68390)

(assert (=> b!7067185 (= lt!2542284 (tail!13789 (exprs!7117 lt!2542305)))))

(declare-fun b!7067186 () Bool)

(declare-fun e!4248701 () Bool)

(declare-fun tp_is_empty!44467 () Bool)

(declare-fun tp!1941680 () Bool)

(assert (=> b!7067186 (= e!4248701 (and tp_is_empty!44467 tp!1941680))))

(declare-fun b!7067187 () Bool)

(declare-fun e!4248702 () Bool)

(declare-fun matchZipper!3161 ((InoxSet Context!13234) List!68389) Bool)

(assert (=> b!7067187 (= e!4248702 (not (matchZipper!3161 lt!2542281 (t!382170 s!7408))))))

(declare-fun lt!2542296 () Unit!161950)

(assert (=> b!7067187 (= lt!2542296 (lemmaConcatPreservesForall!932 lt!2542284 (exprs!7117 ct2!306) lambda!424210))))

(declare-fun b!7067188 () Bool)

(declare-fun res!2885916 () Bool)

(assert (=> b!7067188 (=> res!2885916 e!4248695)))

(declare-fun isEmpty!39839 (List!68390) Bool)

(assert (=> b!7067188 (= res!2885916 (isEmpty!39839 (exprs!7117 lt!2542305)))))

(declare-fun b!7067189 () Bool)

(declare-fun e!4248704 () Bool)

(declare-fun tp!1941679 () Bool)

(assert (=> b!7067189 (= e!4248704 tp!1941679)))

(declare-fun tp!1941677 () Bool)

(declare-fun setNonEmpty!50133 () Bool)

(declare-fun setElem!50133 () Context!13234)

(declare-fun setRes!50133 () Bool)

(assert (=> setNonEmpty!50133 (= setRes!50133 (and tp!1941677 (inv!86911 setElem!50133) e!4248704))))

(declare-fun setRest!50133 () (InoxSet Context!13234))

(assert (=> setNonEmpty!50133 (= z1!570 ((_ map or) (store ((as const (Array Context!13234 Bool)) false) setElem!50133 true) setRest!50133))))

(declare-fun res!2885913 () Bool)

(assert (=> start!686178 (=> (not res!2885913) (not e!4248703))))

(assert (=> start!686178 (= res!2885913 (matchZipper!3161 lt!2542300 s!7408))))

(declare-fun appendTo!742 ((InoxSet Context!13234) Context!13234) (InoxSet Context!13234))

(assert (=> start!686178 (= lt!2542300 (appendTo!742 z1!570 ct2!306))))

(assert (=> start!686178 e!4248703))

(declare-fun condSetEmpty!50133 () Bool)

(assert (=> start!686178 (= condSetEmpty!50133 (= z1!570 ((as const (Array Context!13234 Bool)) false)))))

(assert (=> start!686178 setRes!50133))

(declare-fun e!4248699 () Bool)

(assert (=> start!686178 (and (inv!86911 ct2!306) e!4248699)))

(assert (=> start!686178 e!4248701))

(declare-fun b!7067179 () Bool)

(assert (=> b!7067179 (= e!4248694 e!4248700)))

(declare-fun res!2885908 () Bool)

(assert (=> b!7067179 (=> res!2885908 e!4248700)))

(declare-fun lt!2542308 () (InoxSet Context!13234))

(assert (=> b!7067179 (= res!2885908 (not (= lt!2542285 lt!2542308)))))

(assert (=> b!7067179 (= lt!2542285 (store ((as const (Array Context!13234 Bool)) false) lt!2542282 true))))

(declare-fun lt!2542295 () Unit!161950)

(assert (=> b!7067179 (= lt!2542295 (lemmaConcatPreservesForall!932 (exprs!7117 lt!2542305) (exprs!7117 ct2!306) lambda!424210))))

(declare-fun b!7067190 () Bool)

(declare-fun res!2885910 () Bool)

(assert (=> b!7067190 (=> res!2885910 e!4248695)))

(assert (=> b!7067190 (= res!2885910 (not ((_ is Cons!68266) (exprs!7117 lt!2542305))))))

(declare-fun b!7067191 () Bool)

(assert (=> b!7067191 (= e!4248705 e!4248698)))

(declare-fun res!2885917 () Bool)

(assert (=> b!7067191 (=> res!2885917 e!4248698)))

(assert (=> b!7067191 (= res!2885917 e!4248702)))

(declare-fun res!2885912 () Bool)

(assert (=> b!7067191 (=> (not res!2885912) (not e!4248702))))

(declare-fun lt!2542286 () Bool)

(assert (=> b!7067191 (= res!2885912 (not (= lt!2542297 lt!2542286)))))

(assert (=> b!7067191 (= lt!2542297 (matchZipper!3161 lt!2542293 (t!382170 s!7408)))))

(declare-fun lt!2542298 () Unit!161950)

(assert (=> b!7067191 (= lt!2542298 (lemmaConcatPreservesForall!932 lt!2542284 (exprs!7117 ct2!306) lambda!424210))))

(declare-fun e!4248693 () Bool)

(assert (=> b!7067191 (= (matchZipper!3161 lt!2542291 (t!382170 s!7408)) e!4248693)))

(declare-fun res!2885909 () Bool)

(assert (=> b!7067191 (=> res!2885909 e!4248693)))

(assert (=> b!7067191 (= res!2885909 lt!2542286)))

(assert (=> b!7067191 (= lt!2542286 (matchZipper!3161 lt!2542289 (t!382170 s!7408)))))

(declare-fun lt!2542304 () Unit!161950)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1634 ((InoxSet Context!13234) (InoxSet Context!13234) List!68389) Unit!161950)

(assert (=> b!7067191 (= lt!2542304 (lemmaZipperConcatMatchesSameAsBothZippers!1634 lt!2542289 lt!2542281 (t!382170 s!7408)))))

(declare-fun lt!2542301 () Unit!161950)

(assert (=> b!7067191 (= lt!2542301 (lemmaConcatPreservesForall!932 lt!2542284 (exprs!7117 ct2!306) lambda!424210))))

(declare-fun lt!2542307 () Unit!161950)

(assert (=> b!7067191 (= lt!2542307 (lemmaConcatPreservesForall!932 lt!2542284 (exprs!7117 ct2!306) lambda!424210))))

(declare-fun setIsEmpty!50133 () Bool)

(assert (=> setIsEmpty!50133 setRes!50133))

(declare-fun b!7067192 () Bool)

(assert (=> b!7067192 (= e!4248698 e!4248692)))

(declare-fun res!2885920 () Bool)

(assert (=> b!7067192 (=> res!2885920 e!4248692)))

(assert (=> b!7067192 (= res!2885920 (matchZipper!3161 lt!2542281 (t!382170 s!7408)))))

(declare-fun lt!2542288 () Unit!161950)

(assert (=> b!7067192 (= lt!2542288 (lemmaConcatPreservesForall!932 lt!2542284 (exprs!7117 ct2!306) lambda!424210))))

(assert (=> b!7067193 (= e!4248703 (not e!4248696))))

(declare-fun res!2885914 () Bool)

(assert (=> b!7067193 (=> res!2885914 e!4248696)))

(assert (=> b!7067193 (= res!2885914 (not (matchZipper!3161 lt!2542308 s!7408)))))

(assert (=> b!7067193 (= lt!2542308 (store ((as const (Array Context!13234 Bool)) false) lt!2542306 true))))

(declare-fun lambda!424208 () Int)

(declare-fun getWitness!1708 ((InoxSet Context!13234) Int) Context!13234)

(assert (=> b!7067193 (= lt!2542306 (getWitness!1708 lt!2542300 lambda!424208))))

(declare-datatypes ((List!68391 0))(
  ( (Nil!68267) (Cons!68267 (h!74715 Context!13234) (t!382172 List!68391)) )
))
(declare-fun lt!2542287 () List!68391)

(declare-fun exists!3651 (List!68391 Int) Bool)

(assert (=> b!7067193 (exists!3651 lt!2542287 lambda!424208)))

(declare-fun lt!2542303 () Unit!161950)

(declare-fun lemmaZipperMatchesExistsMatchingContext!542 (List!68391 List!68389) Unit!161950)

(assert (=> b!7067193 (= lt!2542303 (lemmaZipperMatchesExistsMatchingContext!542 lt!2542287 s!7408))))

(declare-fun toList!10962 ((InoxSet Context!13234)) List!68391)

(assert (=> b!7067193 (= lt!2542287 (toList!10962 lt!2542300))))

(declare-fun b!7067194 () Bool)

(assert (=> b!7067194 (= e!4248693 (matchZipper!3161 lt!2542281 (t!382170 s!7408)))))

(declare-fun b!7067195 () Bool)

(declare-fun tp!1941678 () Bool)

(assert (=> b!7067195 (= e!4248699 tp!1941678)))

(assert (= (and start!686178 res!2885913) b!7067183))

(assert (= (and b!7067183 res!2885911) b!7067193))

(assert (= (and b!7067193 (not res!2885914)) b!7067180))

(assert (= (and b!7067180 (not res!2885922)) b!7067184))

(assert (= (and b!7067184 (not res!2885915)) b!7067179))

(assert (= (and b!7067179 (not res!2885908)) b!7067177))

(assert (= (and b!7067177 (not res!2885918)) b!7067190))

(assert (= (and b!7067190 (not res!2885910)) b!7067188))

(assert (= (and b!7067188 (not res!2885916)) b!7067185))

(assert (= (and b!7067185 (not res!2885907)) b!7067181))

(assert (= (and b!7067181 (not res!2885921)) b!7067191))

(assert (= (and b!7067191 (not res!2885909)) b!7067194))

(assert (= (and b!7067191 res!2885912) b!7067187))

(assert (= (and b!7067191 (not res!2885917)) b!7067178))

(assert (= (and b!7067178 (not res!2885919)) b!7067192))

(assert (= (and b!7067192 (not res!2885920)) b!7067182))

(assert (= (and start!686178 condSetEmpty!50133) setIsEmpty!50133))

(assert (= (and start!686178 (not condSetEmpty!50133)) setNonEmpty!50133))

(assert (= setNonEmpty!50133 b!7067189))

(assert (= start!686178 b!7067195))

(assert (= (and start!686178 ((_ is Cons!68265) s!7408)) b!7067186))

(declare-fun m!7791336 () Bool)

(assert (=> b!7067191 m!7791336))

(declare-fun m!7791338 () Bool)

(assert (=> b!7067191 m!7791338))

(declare-fun m!7791340 () Bool)

(assert (=> b!7067191 m!7791340))

(declare-fun m!7791342 () Bool)

(assert (=> b!7067191 m!7791342))

(assert (=> b!7067191 m!7791336))

(assert (=> b!7067191 m!7791336))

(declare-fun m!7791344 () Bool)

(assert (=> b!7067191 m!7791344))

(declare-fun m!7791346 () Bool)

(assert (=> b!7067184 m!7791346))

(declare-fun m!7791348 () Bool)

(assert (=> b!7067184 m!7791348))

(declare-fun m!7791350 () Bool)

(assert (=> b!7067184 m!7791350))

(declare-fun m!7791352 () Bool)

(assert (=> b!7067184 m!7791352))

(declare-fun m!7791354 () Bool)

(assert (=> b!7067179 m!7791354))

(assert (=> b!7067179 m!7791350))

(declare-fun m!7791356 () Bool)

(assert (=> b!7067180 m!7791356))

(declare-fun m!7791358 () Bool)

(assert (=> start!686178 m!7791358))

(declare-fun m!7791360 () Bool)

(assert (=> start!686178 m!7791360))

(declare-fun m!7791362 () Bool)

(assert (=> start!686178 m!7791362))

(declare-fun m!7791364 () Bool)

(assert (=> b!7067192 m!7791364))

(assert (=> b!7067192 m!7791336))

(declare-fun m!7791366 () Bool)

(assert (=> b!7067188 m!7791366))

(declare-fun m!7791368 () Bool)

(assert (=> b!7067177 m!7791368))

(declare-fun m!7791370 () Bool)

(assert (=> b!7067177 m!7791370))

(assert (=> b!7067177 m!7791350))

(declare-fun m!7791372 () Bool)

(assert (=> b!7067177 m!7791372))

(declare-fun m!7791374 () Bool)

(assert (=> b!7067177 m!7791374))

(assert (=> b!7067187 m!7791364))

(assert (=> b!7067187 m!7791336))

(assert (=> b!7067181 m!7791336))

(declare-fun m!7791376 () Bool)

(assert (=> b!7067181 m!7791376))

(declare-fun m!7791378 () Bool)

(assert (=> b!7067181 m!7791378))

(assert (=> b!7067181 m!7791336))

(declare-fun m!7791380 () Bool)

(assert (=> b!7067181 m!7791380))

(assert (=> b!7067194 m!7791364))

(declare-fun m!7791382 () Bool)

(assert (=> b!7067182 m!7791382))

(assert (=> b!7067182 m!7791336))

(declare-fun m!7791384 () Bool)

(assert (=> b!7067193 m!7791384))

(declare-fun m!7791386 () Bool)

(assert (=> b!7067193 m!7791386))

(declare-fun m!7791388 () Bool)

(assert (=> b!7067193 m!7791388))

(declare-fun m!7791390 () Bool)

(assert (=> b!7067193 m!7791390))

(declare-fun m!7791392 () Bool)

(assert (=> b!7067193 m!7791392))

(declare-fun m!7791394 () Bool)

(assert (=> b!7067193 m!7791394))

(declare-fun m!7791396 () Bool)

(assert (=> b!7067185 m!7791396))

(declare-fun m!7791398 () Bool)

(assert (=> b!7067185 m!7791398))

(declare-fun m!7791400 () Bool)

(assert (=> setNonEmpty!50133 m!7791400))

(check-sat (not b!7067194) tp_is_empty!44467 (not b!7067184) (not b!7067193) (not b!7067181) (not start!686178) (not b!7067191) (not b!7067186) (not b!7067179) (not b!7067192) (not b!7067182) (not b!7067188) (not b!7067195) (not b!7067189) (not b!7067177) (not setNonEmpty!50133) (not b!7067187) (not b!7067185))
(check-sat)
(get-model)

(declare-fun d!2209902 () Bool)

(declare-fun forall!16569 (List!68390 Int) Bool)

(assert (=> d!2209902 (forall!16569 (++!15738 (exprs!7117 lt!2542305) (exprs!7117 ct2!306)) lambda!424210)))

(declare-fun lt!2542324 () Unit!161950)

(declare-fun choose!54090 (List!68390 List!68390 Int) Unit!161950)

(assert (=> d!2209902 (= lt!2542324 (choose!54090 (exprs!7117 lt!2542305) (exprs!7117 ct2!306) lambda!424210))))

(assert (=> d!2209902 (forall!16569 (exprs!7117 lt!2542305) lambda!424210)))

(assert (=> d!2209902 (= (lemmaConcatPreservesForall!932 (exprs!7117 lt!2542305) (exprs!7117 ct2!306) lambda!424210) lt!2542324)))

(declare-fun bs!1879935 () Bool)

(assert (= bs!1879935 d!2209902))

(assert (=> bs!1879935 m!7791348))

(assert (=> bs!1879935 m!7791348))

(declare-fun m!7791462 () Bool)

(assert (=> bs!1879935 m!7791462))

(declare-fun m!7791464 () Bool)

(assert (=> bs!1879935 m!7791464))

(declare-fun m!7791466 () Bool)

(assert (=> bs!1879935 m!7791466))

(assert (=> b!7067179 d!2209902))

(declare-fun bs!1879936 () Bool)

(declare-fun d!2209904 () Bool)

(assert (= bs!1879936 (and d!2209904 b!7067184)))

(declare-fun lambda!424220 () Int)

(assert (=> bs!1879936 (= lambda!424220 lambda!424210)))

(assert (=> d!2209904 (= (inv!86911 setElem!50133) (forall!16569 (exprs!7117 setElem!50133) lambda!424220))))

(declare-fun bs!1879937 () Bool)

(assert (= bs!1879937 d!2209904))

(declare-fun m!7791468 () Bool)

(assert (=> bs!1879937 m!7791468))

(assert (=> setNonEmpty!50133 d!2209904))

(declare-fun d!2209906 () Bool)

(declare-fun c!1317982 () Bool)

(declare-fun isEmpty!39841 (List!68389) Bool)

(assert (=> d!2209906 (= c!1317982 (isEmpty!39841 s!7408))))

(declare-fun e!4248749 () Bool)

(assert (=> d!2209906 (= (matchZipper!3161 lt!2542300 s!7408) e!4248749)))

(declare-fun b!7067278 () Bool)

(declare-fun nullableZipper!2685 ((InoxSet Context!13234)) Bool)

(assert (=> b!7067278 (= e!4248749 (nullableZipper!2685 lt!2542300))))

(declare-fun b!7067279 () Bool)

(declare-fun head!14391 (List!68389) C!35512)

(declare-fun tail!13791 (List!68389) List!68389)

(assert (=> b!7067279 (= e!4248749 (matchZipper!3161 (derivationStepZipper!3071 lt!2542300 (head!14391 s!7408)) (tail!13791 s!7408)))))

(assert (= (and d!2209906 c!1317982) b!7067278))

(assert (= (and d!2209906 (not c!1317982)) b!7067279))

(declare-fun m!7791480 () Bool)

(assert (=> d!2209906 m!7791480))

(declare-fun m!7791482 () Bool)

(assert (=> b!7067278 m!7791482))

(declare-fun m!7791484 () Bool)

(assert (=> b!7067279 m!7791484))

(assert (=> b!7067279 m!7791484))

(declare-fun m!7791486 () Bool)

(assert (=> b!7067279 m!7791486))

(declare-fun m!7791488 () Bool)

(assert (=> b!7067279 m!7791488))

(assert (=> b!7067279 m!7791486))

(assert (=> b!7067279 m!7791488))

(declare-fun m!7791490 () Bool)

(assert (=> b!7067279 m!7791490))

(assert (=> start!686178 d!2209906))

(declare-fun bs!1879939 () Bool)

(declare-fun d!2209910 () Bool)

(assert (= bs!1879939 (and d!2209910 b!7067184)))

(declare-fun lambda!424225 () Int)

(assert (=> bs!1879939 (= lambda!424225 lambda!424209)))

(assert (=> d!2209910 true))

(declare-fun map!15963 ((InoxSet Context!13234) Int) (InoxSet Context!13234))

(assert (=> d!2209910 (= (appendTo!742 z1!570 ct2!306) (map!15963 z1!570 lambda!424225))))

(declare-fun bs!1879940 () Bool)

(assert (= bs!1879940 d!2209910))

(declare-fun m!7791522 () Bool)

(assert (=> bs!1879940 m!7791522))

(assert (=> start!686178 d!2209910))

(declare-fun bs!1879941 () Bool)

(declare-fun d!2209918 () Bool)

(assert (= bs!1879941 (and d!2209918 b!7067184)))

(declare-fun lambda!424226 () Int)

(assert (=> bs!1879941 (= lambda!424226 lambda!424210)))

(declare-fun bs!1879942 () Bool)

(assert (= bs!1879942 (and d!2209918 d!2209904)))

(assert (=> bs!1879942 (= lambda!424226 lambda!424220)))

(assert (=> d!2209918 (= (inv!86911 ct2!306) (forall!16569 (exprs!7117 ct2!306) lambda!424226))))

(declare-fun bs!1879943 () Bool)

(assert (= bs!1879943 d!2209918))

(declare-fun m!7791530 () Bool)

(assert (=> bs!1879943 m!7791530))

(assert (=> start!686178 d!2209918))

(declare-fun b!7067309 () Bool)

(declare-fun e!4248766 () (InoxSet Context!13234))

(declare-fun e!4248768 () (InoxSet Context!13234))

(assert (=> b!7067309 (= e!4248766 e!4248768)))

(declare-fun c!1317994 () Bool)

(assert (=> b!7067309 (= c!1317994 ((_ is Cons!68266) (exprs!7117 lt!2542292)))))

(declare-fun call!642261 () (InoxSet Context!13234))

(declare-fun b!7067310 () Bool)

(assert (=> b!7067310 (= e!4248766 ((_ map or) call!642261 (derivationStepZipperUp!2205 (Context!13235 (t!382171 (exprs!7117 lt!2542292))) (h!74713 s!7408))))))

(declare-fun b!7067311 () Bool)

(declare-fun e!4248767 () Bool)

(assert (=> b!7067311 (= e!4248767 (nullable!7304 (h!74714 (exprs!7117 lt!2542292))))))

(declare-fun b!7067312 () Bool)

(assert (=> b!7067312 (= e!4248768 ((as const (Array Context!13234 Bool)) false))))

(declare-fun d!2209920 () Bool)

(declare-fun c!1317995 () Bool)

(assert (=> d!2209920 (= c!1317995 e!4248767)))

(declare-fun res!2885951 () Bool)

(assert (=> d!2209920 (=> (not res!2885951) (not e!4248767))))

(assert (=> d!2209920 (= res!2885951 ((_ is Cons!68266) (exprs!7117 lt!2542292)))))

(assert (=> d!2209920 (= (derivationStepZipperUp!2205 lt!2542292 (h!74713 s!7408)) e!4248766)))

(declare-fun bm!642256 () Bool)

(assert (=> bm!642256 (= call!642261 (derivationStepZipperDown!2255 (h!74714 (exprs!7117 lt!2542292)) (Context!13235 (t!382171 (exprs!7117 lt!2542292))) (h!74713 s!7408)))))

(declare-fun b!7067313 () Bool)

(assert (=> b!7067313 (= e!4248768 call!642261)))

(assert (= (and d!2209920 res!2885951) b!7067311))

(assert (= (and d!2209920 c!1317995) b!7067310))

(assert (= (and d!2209920 (not c!1317995)) b!7067309))

(assert (= (and b!7067309 c!1317994) b!7067313))

(assert (= (and b!7067309 (not c!1317994)) b!7067312))

(assert (= (or b!7067310 b!7067313) bm!642256))

(declare-fun m!7791546 () Bool)

(assert (=> b!7067310 m!7791546))

(declare-fun m!7791548 () Bool)

(assert (=> b!7067311 m!7791548))

(declare-fun m!7791550 () Bool)

(assert (=> bm!642256 m!7791550))

(assert (=> b!7067181 d!2209920))

(declare-fun bm!642269 () Bool)

(declare-fun call!642275 () List!68390)

(declare-fun call!642278 () List!68390)

(assert (=> bm!642269 (= call!642275 call!642278)))

(declare-fun c!1318011 () Bool)

(declare-fun call!642279 () (InoxSet Context!13234))

(declare-fun bm!642270 () Bool)

(assert (=> bm!642270 (= call!642279 (derivationStepZipperDown!2255 (ite c!1318011 (regTwo!35755 (h!74714 (exprs!7117 lt!2542305))) (regOne!35754 (h!74714 (exprs!7117 lt!2542305)))) (ite c!1318011 lt!2542292 (Context!13235 call!642278)) (h!74713 s!7408)))))

(declare-fun bm!642271 () Bool)

(declare-fun call!642274 () (InoxSet Context!13234))

(declare-fun call!642277 () (InoxSet Context!13234))

(assert (=> bm!642271 (= call!642274 call!642277)))

(declare-fun c!1318014 () Bool)

(declare-fun bm!642272 () Bool)

(declare-fun c!1318012 () Bool)

(declare-fun $colon$colon!2646 (List!68390 Regex!17621) List!68390)

(assert (=> bm!642272 (= call!642278 ($colon$colon!2646 (exprs!7117 lt!2542292) (ite (or c!1318014 c!1318012) (regTwo!35754 (h!74714 (exprs!7117 lt!2542305))) (h!74714 (exprs!7117 lt!2542305)))))))

(declare-fun b!7067347 () Bool)

(declare-fun e!4248790 () (InoxSet Context!13234))

(assert (=> b!7067347 (= e!4248790 (store ((as const (Array Context!13234 Bool)) false) lt!2542292 true))))

(declare-fun b!7067348 () Bool)

(declare-fun e!4248792 () (InoxSet Context!13234))

(assert (=> b!7067348 (= e!4248792 ((_ map or) call!642277 call!642279))))

(declare-fun b!7067349 () Bool)

(declare-fun e!4248788 () (InoxSet Context!13234))

(declare-fun e!4248793 () (InoxSet Context!13234))

(assert (=> b!7067349 (= e!4248788 e!4248793)))

(assert (=> b!7067349 (= c!1318012 ((_ is Concat!26466) (h!74714 (exprs!7117 lt!2542305))))))

(declare-fun b!7067350 () Bool)

(declare-fun e!4248789 () (InoxSet Context!13234))

(assert (=> b!7067350 (= e!4248789 ((as const (Array Context!13234 Bool)) false))))

(declare-fun b!7067351 () Bool)

(declare-fun call!642276 () (InoxSet Context!13234))

(assert (=> b!7067351 (= e!4248789 call!642276)))

(declare-fun d!2209930 () Bool)

(declare-fun c!1318015 () Bool)

(assert (=> d!2209930 (= c!1318015 (and ((_ is ElementMatch!17621) (h!74714 (exprs!7117 lt!2542305))) (= (c!1317950 (h!74714 (exprs!7117 lt!2542305))) (h!74713 s!7408))))))

(assert (=> d!2209930 (= (derivationStepZipperDown!2255 (h!74714 (exprs!7117 lt!2542305)) lt!2542292 (h!74713 s!7408)) e!4248790)))

(declare-fun b!7067352 () Bool)

(declare-fun e!4248791 () Bool)

(assert (=> b!7067352 (= c!1318014 e!4248791)))

(declare-fun res!2885957 () Bool)

(assert (=> b!7067352 (=> (not res!2885957) (not e!4248791))))

(assert (=> b!7067352 (= res!2885957 ((_ is Concat!26466) (h!74714 (exprs!7117 lt!2542305))))))

(assert (=> b!7067352 (= e!4248792 e!4248788)))

(declare-fun bm!642273 () Bool)

(assert (=> bm!642273 (= call!642277 (derivationStepZipperDown!2255 (ite c!1318011 (regOne!35755 (h!74714 (exprs!7117 lt!2542305))) (ite c!1318014 (regTwo!35754 (h!74714 (exprs!7117 lt!2542305))) (ite c!1318012 (regOne!35754 (h!74714 (exprs!7117 lt!2542305))) (reg!17950 (h!74714 (exprs!7117 lt!2542305)))))) (ite (or c!1318011 c!1318014) lt!2542292 (Context!13235 call!642275)) (h!74713 s!7408)))))

(declare-fun bm!642274 () Bool)

(assert (=> bm!642274 (= call!642276 call!642274)))

(declare-fun b!7067353 () Bool)

(declare-fun c!1318013 () Bool)

(assert (=> b!7067353 (= c!1318013 ((_ is Star!17621) (h!74714 (exprs!7117 lt!2542305))))))

(assert (=> b!7067353 (= e!4248793 e!4248789)))

(declare-fun b!7067354 () Bool)

(assert (=> b!7067354 (= e!4248788 ((_ map or) call!642279 call!642274))))

(declare-fun b!7067355 () Bool)

(assert (=> b!7067355 (= e!4248793 call!642276)))

(declare-fun b!7067356 () Bool)

(assert (=> b!7067356 (= e!4248791 (nullable!7304 (regOne!35754 (h!74714 (exprs!7117 lt!2542305)))))))

(declare-fun b!7067357 () Bool)

(assert (=> b!7067357 (= e!4248790 e!4248792)))

(assert (=> b!7067357 (= c!1318011 ((_ is Union!17621) (h!74714 (exprs!7117 lt!2542305))))))

(assert (= (and d!2209930 c!1318015) b!7067347))

(assert (= (and d!2209930 (not c!1318015)) b!7067357))

(assert (= (and b!7067357 c!1318011) b!7067348))

(assert (= (and b!7067357 (not c!1318011)) b!7067352))

(assert (= (and b!7067352 res!2885957) b!7067356))

(assert (= (and b!7067352 c!1318014) b!7067354))

(assert (= (and b!7067352 (not c!1318014)) b!7067349))

(assert (= (and b!7067349 c!1318012) b!7067355))

(assert (= (and b!7067349 (not c!1318012)) b!7067353))

(assert (= (and b!7067353 c!1318013) b!7067351))

(assert (= (and b!7067353 (not c!1318013)) b!7067350))

(assert (= (or b!7067355 b!7067351) bm!642269))

(assert (= (or b!7067355 b!7067351) bm!642274))

(assert (= (or b!7067354 bm!642274) bm!642271))

(assert (= (or b!7067354 bm!642269) bm!642272))

(assert (= (or b!7067348 bm!642271) bm!642273))

(assert (= (or b!7067348 b!7067354) bm!642270))

(declare-fun m!7791588 () Bool)

(assert (=> bm!642272 m!7791588))

(declare-fun m!7791590 () Bool)

(assert (=> bm!642270 m!7791590))

(declare-fun m!7791592 () Bool)

(assert (=> b!7067356 m!7791592))

(declare-fun m!7791594 () Bool)

(assert (=> bm!642273 m!7791594))

(declare-fun m!7791596 () Bool)

(assert (=> b!7067347 m!7791596))

(assert (=> b!7067181 d!2209930))

(declare-fun d!2209952 () Bool)

(assert (=> d!2209952 (forall!16569 (++!15738 lt!2542284 (exprs!7117 ct2!306)) lambda!424210)))

(declare-fun lt!2542343 () Unit!161950)

(assert (=> d!2209952 (= lt!2542343 (choose!54090 lt!2542284 (exprs!7117 ct2!306) lambda!424210))))

(assert (=> d!2209952 (forall!16569 lt!2542284 lambda!424210)))

(assert (=> d!2209952 (= (lemmaConcatPreservesForall!932 lt!2542284 (exprs!7117 ct2!306) lambda!424210) lt!2542343)))

(declare-fun bs!1879951 () Bool)

(assert (= bs!1879951 d!2209952))

(assert (=> bs!1879951 m!7791376))

(assert (=> bs!1879951 m!7791376))

(declare-fun m!7791598 () Bool)

(assert (=> bs!1879951 m!7791598))

(declare-fun m!7791600 () Bool)

(assert (=> bs!1879951 m!7791600))

(declare-fun m!7791602 () Bool)

(assert (=> bs!1879951 m!7791602))

(assert (=> b!7067181 d!2209952))

(declare-fun b!7067384 () Bool)

(declare-fun res!2885962 () Bool)

(declare-fun e!4248809 () Bool)

(assert (=> b!7067384 (=> (not res!2885962) (not e!4248809))))

(declare-fun lt!2542347 () List!68390)

(declare-fun size!41194 (List!68390) Int)

(assert (=> b!7067384 (= res!2885962 (= (size!41194 lt!2542347) (+ (size!41194 lt!2542284) (size!41194 (exprs!7117 ct2!306)))))))

(declare-fun b!7067385 () Bool)

(assert (=> b!7067385 (= e!4248809 (or (not (= (exprs!7117 ct2!306) Nil!68266)) (= lt!2542347 lt!2542284)))))

(declare-fun d!2209954 () Bool)

(assert (=> d!2209954 e!4248809))

(declare-fun res!2885963 () Bool)

(assert (=> d!2209954 (=> (not res!2885963) (not e!4248809))))

(declare-fun content!13757 (List!68390) (InoxSet Regex!17621))

(assert (=> d!2209954 (= res!2885963 (= (content!13757 lt!2542347) ((_ map or) (content!13757 lt!2542284) (content!13757 (exprs!7117 ct2!306)))))))

(declare-fun e!4248808 () List!68390)

(assert (=> d!2209954 (= lt!2542347 e!4248808)))

(declare-fun c!1318018 () Bool)

(assert (=> d!2209954 (= c!1318018 ((_ is Nil!68266) lt!2542284))))

(assert (=> d!2209954 (= (++!15738 lt!2542284 (exprs!7117 ct2!306)) lt!2542347)))

(declare-fun b!7067382 () Bool)

(assert (=> b!7067382 (= e!4248808 (exprs!7117 ct2!306))))

(declare-fun b!7067383 () Bool)

(assert (=> b!7067383 (= e!4248808 (Cons!68266 (h!74714 lt!2542284) (++!15738 (t!382171 lt!2542284) (exprs!7117 ct2!306))))))

(assert (= (and d!2209954 c!1318018) b!7067382))

(assert (= (and d!2209954 (not c!1318018)) b!7067383))

(assert (= (and d!2209954 res!2885963) b!7067384))

(assert (= (and b!7067384 res!2885962) b!7067385))

(declare-fun m!7791620 () Bool)

(assert (=> b!7067384 m!7791620))

(declare-fun m!7791622 () Bool)

(assert (=> b!7067384 m!7791622))

(declare-fun m!7791624 () Bool)

(assert (=> b!7067384 m!7791624))

(declare-fun m!7791626 () Bool)

(assert (=> d!2209954 m!7791626))

(declare-fun m!7791628 () Bool)

(assert (=> d!2209954 m!7791628))

(declare-fun m!7791630 () Bool)

(assert (=> d!2209954 m!7791630))

(declare-fun m!7791632 () Bool)

(assert (=> b!7067383 m!7791632))

(assert (=> b!7067181 d!2209954))

(declare-fun d!2209966 () Bool)

(declare-fun c!1318019 () Bool)

(assert (=> d!2209966 (= c!1318019 (isEmpty!39841 (t!382170 s!7408)))))

(declare-fun e!4248810 () Bool)

(assert (=> d!2209966 (= (matchZipper!3161 lt!2542289 (t!382170 s!7408)) e!4248810)))

(declare-fun b!7067386 () Bool)

(assert (=> b!7067386 (= e!4248810 (nullableZipper!2685 lt!2542289))))

(declare-fun b!7067387 () Bool)

(assert (=> b!7067387 (= e!4248810 (matchZipper!3161 (derivationStepZipper!3071 lt!2542289 (head!14391 (t!382170 s!7408))) (tail!13791 (t!382170 s!7408))))))

(assert (= (and d!2209966 c!1318019) b!7067386))

(assert (= (and d!2209966 (not c!1318019)) b!7067387))

(declare-fun m!7791634 () Bool)

(assert (=> d!2209966 m!7791634))

(declare-fun m!7791636 () Bool)

(assert (=> b!7067386 m!7791636))

(declare-fun m!7791638 () Bool)

(assert (=> b!7067387 m!7791638))

(assert (=> b!7067387 m!7791638))

(declare-fun m!7791640 () Bool)

(assert (=> b!7067387 m!7791640))

(declare-fun m!7791642 () Bool)

(assert (=> b!7067387 m!7791642))

(assert (=> b!7067387 m!7791640))

(assert (=> b!7067387 m!7791642))

(declare-fun m!7791644 () Bool)

(assert (=> b!7067387 m!7791644))

(assert (=> b!7067191 d!2209966))

(declare-fun d!2209968 () Bool)

(declare-fun e!4248813 () Bool)

(assert (=> d!2209968 (= (matchZipper!3161 ((_ map or) lt!2542289 lt!2542281) (t!382170 s!7408)) e!4248813)))

(declare-fun res!2885966 () Bool)

(assert (=> d!2209968 (=> res!2885966 e!4248813)))

(assert (=> d!2209968 (= res!2885966 (matchZipper!3161 lt!2542289 (t!382170 s!7408)))))

(declare-fun lt!2542350 () Unit!161950)

(declare-fun choose!54095 ((InoxSet Context!13234) (InoxSet Context!13234) List!68389) Unit!161950)

(assert (=> d!2209968 (= lt!2542350 (choose!54095 lt!2542289 lt!2542281 (t!382170 s!7408)))))

(assert (=> d!2209968 (= (lemmaZipperConcatMatchesSameAsBothZippers!1634 lt!2542289 lt!2542281 (t!382170 s!7408)) lt!2542350)))

(declare-fun b!7067390 () Bool)

(assert (=> b!7067390 (= e!4248813 (matchZipper!3161 lt!2542281 (t!382170 s!7408)))))

(assert (= (and d!2209968 (not res!2885966)) b!7067390))

(declare-fun m!7791646 () Bool)

(assert (=> d!2209968 m!7791646))

(assert (=> d!2209968 m!7791342))

(declare-fun m!7791648 () Bool)

(assert (=> d!2209968 m!7791648))

(assert (=> b!7067390 m!7791364))

(assert (=> b!7067191 d!2209968))

(declare-fun d!2209970 () Bool)

(declare-fun c!1318020 () Bool)

(assert (=> d!2209970 (= c!1318020 (isEmpty!39841 (t!382170 s!7408)))))

(declare-fun e!4248814 () Bool)

(assert (=> d!2209970 (= (matchZipper!3161 lt!2542293 (t!382170 s!7408)) e!4248814)))

(declare-fun b!7067391 () Bool)

(assert (=> b!7067391 (= e!4248814 (nullableZipper!2685 lt!2542293))))

(declare-fun b!7067392 () Bool)

(assert (=> b!7067392 (= e!4248814 (matchZipper!3161 (derivationStepZipper!3071 lt!2542293 (head!14391 (t!382170 s!7408))) (tail!13791 (t!382170 s!7408))))))

(assert (= (and d!2209970 c!1318020) b!7067391))

(assert (= (and d!2209970 (not c!1318020)) b!7067392))

(assert (=> d!2209970 m!7791634))

(declare-fun m!7791650 () Bool)

(assert (=> b!7067391 m!7791650))

(assert (=> b!7067392 m!7791638))

(assert (=> b!7067392 m!7791638))

(declare-fun m!7791652 () Bool)

(assert (=> b!7067392 m!7791652))

(assert (=> b!7067392 m!7791642))

(assert (=> b!7067392 m!7791652))

(assert (=> b!7067392 m!7791642))

(declare-fun m!7791654 () Bool)

(assert (=> b!7067392 m!7791654))

(assert (=> b!7067191 d!2209970))

(assert (=> b!7067191 d!2209952))

(declare-fun d!2209972 () Bool)

(declare-fun c!1318021 () Bool)

(assert (=> d!2209972 (= c!1318021 (isEmpty!39841 (t!382170 s!7408)))))

(declare-fun e!4248815 () Bool)

(assert (=> d!2209972 (= (matchZipper!3161 lt!2542291 (t!382170 s!7408)) e!4248815)))

(declare-fun b!7067393 () Bool)

(assert (=> b!7067393 (= e!4248815 (nullableZipper!2685 lt!2542291))))

(declare-fun b!7067394 () Bool)

(assert (=> b!7067394 (= e!4248815 (matchZipper!3161 (derivationStepZipper!3071 lt!2542291 (head!14391 (t!382170 s!7408))) (tail!13791 (t!382170 s!7408))))))

(assert (= (and d!2209972 c!1318021) b!7067393))

(assert (= (and d!2209972 (not c!1318021)) b!7067394))

(assert (=> d!2209972 m!7791634))

(declare-fun m!7791656 () Bool)

(assert (=> b!7067393 m!7791656))

(assert (=> b!7067394 m!7791638))

(assert (=> b!7067394 m!7791638))

(declare-fun m!7791658 () Bool)

(assert (=> b!7067394 m!7791658))

(assert (=> b!7067394 m!7791642))

(assert (=> b!7067394 m!7791658))

(assert (=> b!7067394 m!7791642))

(declare-fun m!7791660 () Bool)

(assert (=> b!7067394 m!7791660))

(assert (=> b!7067191 d!2209972))

(declare-fun bs!1879964 () Bool)

(declare-fun d!2209974 () Bool)

(assert (= bs!1879964 (and d!2209974 b!7067184)))

(declare-fun lambda!424240 () Int)

(assert (=> bs!1879964 (= lambda!424240 lambda!424210)))

(declare-fun bs!1879965 () Bool)

(assert (= bs!1879965 (and d!2209974 d!2209904)))

(assert (=> bs!1879965 (= lambda!424240 lambda!424220)))

(declare-fun bs!1879966 () Bool)

(assert (= bs!1879966 (and d!2209974 d!2209918)))

(assert (=> bs!1879966 (= lambda!424240 lambda!424226)))

(assert (=> d!2209974 (= (inv!86911 lt!2542292) (forall!16569 (exprs!7117 lt!2542292) lambda!424240))))

(declare-fun bs!1879967 () Bool)

(assert (= bs!1879967 d!2209974))

(declare-fun m!7791662 () Bool)

(assert (=> bs!1879967 m!7791662))

(assert (=> b!7067182 d!2209974))

(assert (=> b!7067182 d!2209952))

(declare-fun d!2209976 () Bool)

(declare-fun c!1318022 () Bool)

(assert (=> d!2209976 (= c!1318022 (isEmpty!39841 (t!382170 s!7408)))))

(declare-fun e!4248816 () Bool)

(assert (=> d!2209976 (= (matchZipper!3161 lt!2542281 (t!382170 s!7408)) e!4248816)))

(declare-fun b!7067395 () Bool)

(assert (=> b!7067395 (= e!4248816 (nullableZipper!2685 lt!2542281))))

(declare-fun b!7067396 () Bool)

(assert (=> b!7067396 (= e!4248816 (matchZipper!3161 (derivationStepZipper!3071 lt!2542281 (head!14391 (t!382170 s!7408))) (tail!13791 (t!382170 s!7408))))))

(assert (= (and d!2209976 c!1318022) b!7067395))

(assert (= (and d!2209976 (not c!1318022)) b!7067396))

(assert (=> d!2209976 m!7791634))

(declare-fun m!7791664 () Bool)

(assert (=> b!7067395 m!7791664))

(assert (=> b!7067396 m!7791638))

(assert (=> b!7067396 m!7791638))

(declare-fun m!7791666 () Bool)

(assert (=> b!7067396 m!7791666))

(assert (=> b!7067396 m!7791642))

(assert (=> b!7067396 m!7791666))

(assert (=> b!7067396 m!7791642))

(declare-fun m!7791668 () Bool)

(assert (=> b!7067396 m!7791668))

(assert (=> b!7067192 d!2209976))

(assert (=> b!7067192 d!2209952))

(declare-fun b!7067399 () Bool)

(declare-fun res!2885967 () Bool)

(declare-fun e!4248818 () Bool)

(assert (=> b!7067399 (=> (not res!2885967) (not e!4248818))))

(declare-fun lt!2542351 () List!68390)

(assert (=> b!7067399 (= res!2885967 (= (size!41194 lt!2542351) (+ (size!41194 (exprs!7117 lt!2542305)) (size!41194 (exprs!7117 ct2!306)))))))

(declare-fun b!7067400 () Bool)

(assert (=> b!7067400 (= e!4248818 (or (not (= (exprs!7117 ct2!306) Nil!68266)) (= lt!2542351 (exprs!7117 lt!2542305))))))

(declare-fun d!2209978 () Bool)

(assert (=> d!2209978 e!4248818))

(declare-fun res!2885968 () Bool)

(assert (=> d!2209978 (=> (not res!2885968) (not e!4248818))))

(assert (=> d!2209978 (= res!2885968 (= (content!13757 lt!2542351) ((_ map or) (content!13757 (exprs!7117 lt!2542305)) (content!13757 (exprs!7117 ct2!306)))))))

(declare-fun e!4248817 () List!68390)

(assert (=> d!2209978 (= lt!2542351 e!4248817)))

(declare-fun c!1318023 () Bool)

(assert (=> d!2209978 (= c!1318023 ((_ is Nil!68266) (exprs!7117 lt!2542305)))))

(assert (=> d!2209978 (= (++!15738 (exprs!7117 lt!2542305) (exprs!7117 ct2!306)) lt!2542351)))

(declare-fun b!7067397 () Bool)

(assert (=> b!7067397 (= e!4248817 (exprs!7117 ct2!306))))

(declare-fun b!7067398 () Bool)

(assert (=> b!7067398 (= e!4248817 (Cons!68266 (h!74714 (exprs!7117 lt!2542305)) (++!15738 (t!382171 (exprs!7117 lt!2542305)) (exprs!7117 ct2!306))))))

(assert (= (and d!2209978 c!1318023) b!7067397))

(assert (= (and d!2209978 (not c!1318023)) b!7067398))

(assert (= (and d!2209978 res!2885968) b!7067399))

(assert (= (and b!7067399 res!2885967) b!7067400))

(declare-fun m!7791670 () Bool)

(assert (=> b!7067399 m!7791670))

(declare-fun m!7791672 () Bool)

(assert (=> b!7067399 m!7791672))

(assert (=> b!7067399 m!7791624))

(declare-fun m!7791674 () Bool)

(assert (=> d!2209978 m!7791674))

(declare-fun m!7791676 () Bool)

(assert (=> d!2209978 m!7791676))

(assert (=> d!2209978 m!7791630))

(declare-fun m!7791678 () Bool)

(assert (=> b!7067398 m!7791678))

(assert (=> b!7067184 d!2209978))

(assert (=> b!7067184 d!2209902))

(declare-fun d!2209980 () Bool)

(declare-fun e!4248821 () Bool)

(assert (=> d!2209980 e!4248821))

(declare-fun res!2885971 () Bool)

(assert (=> d!2209980 (=> (not res!2885971) (not e!4248821))))

(declare-fun lt!2542354 () Context!13234)

(declare-fun dynLambda!27741 (Int Context!13234) Context!13234)

(assert (=> d!2209980 (= res!2885971 (= lt!2542306 (dynLambda!27741 lambda!424209 lt!2542354)))))

(declare-fun choose!54096 ((InoxSet Context!13234) Int Context!13234) Context!13234)

(assert (=> d!2209980 (= lt!2542354 (choose!54096 z1!570 lambda!424209 lt!2542306))))

(assert (=> d!2209980 (select (map!15963 z1!570 lambda!424209) lt!2542306)))

(assert (=> d!2209980 (= (mapPost2!450 z1!570 lambda!424209 lt!2542306) lt!2542354)))

(declare-fun b!7067404 () Bool)

(assert (=> b!7067404 (= e!4248821 (select z1!570 lt!2542354))))

(assert (= (and d!2209980 res!2885971) b!7067404))

(declare-fun b_lambda!269707 () Bool)

(assert (=> (not b_lambda!269707) (not d!2209980)))

(declare-fun m!7791680 () Bool)

(assert (=> d!2209980 m!7791680))

(declare-fun m!7791682 () Bool)

(assert (=> d!2209980 m!7791682))

(declare-fun m!7791684 () Bool)

(assert (=> d!2209980 m!7791684))

(declare-fun m!7791686 () Bool)

(assert (=> d!2209980 m!7791686))

(declare-fun m!7791688 () Bool)

(assert (=> b!7067404 m!7791688))

(assert (=> b!7067184 d!2209980))

(declare-fun bs!1879968 () Bool)

(declare-fun d!2209982 () Bool)

(assert (= bs!1879968 (and d!2209982 b!7067193)))

(declare-fun lambda!424243 () Int)

(assert (=> bs!1879968 (not (= lambda!424243 lambda!424208))))

(assert (=> d!2209982 true))

(declare-fun order!28379 () Int)

(declare-fun dynLambda!27742 (Int Int) Int)

(assert (=> d!2209982 (< (dynLambda!27742 order!28379 lambda!424208) (dynLambda!27742 order!28379 lambda!424243))))

(declare-fun forall!16570 (List!68391 Int) Bool)

(assert (=> d!2209982 (= (exists!3651 lt!2542287 lambda!424208) (not (forall!16570 lt!2542287 lambda!424243)))))

(declare-fun bs!1879969 () Bool)

(assert (= bs!1879969 d!2209982))

(declare-fun m!7791690 () Bool)

(assert (=> bs!1879969 m!7791690))

(assert (=> b!7067193 d!2209982))

(declare-fun bs!1879970 () Bool)

(declare-fun d!2209984 () Bool)

(assert (= bs!1879970 (and d!2209984 b!7067193)))

(declare-fun lambda!424246 () Int)

(assert (=> bs!1879970 (= lambda!424246 lambda!424208)))

(declare-fun bs!1879971 () Bool)

(assert (= bs!1879971 (and d!2209984 d!2209982)))

(assert (=> bs!1879971 (not (= lambda!424246 lambda!424243))))

(assert (=> d!2209984 true))

(assert (=> d!2209984 (exists!3651 lt!2542287 lambda!424246)))

(declare-fun lt!2542357 () Unit!161950)

(declare-fun choose!54097 (List!68391 List!68389) Unit!161950)

(assert (=> d!2209984 (= lt!2542357 (choose!54097 lt!2542287 s!7408))))

(declare-fun content!13758 (List!68391) (InoxSet Context!13234))

(assert (=> d!2209984 (matchZipper!3161 (content!13758 lt!2542287) s!7408)))

(assert (=> d!2209984 (= (lemmaZipperMatchesExistsMatchingContext!542 lt!2542287 s!7408) lt!2542357)))

(declare-fun bs!1879972 () Bool)

(assert (= bs!1879972 d!2209984))

(declare-fun m!7791692 () Bool)

(assert (=> bs!1879972 m!7791692))

(declare-fun m!7791694 () Bool)

(assert (=> bs!1879972 m!7791694))

(declare-fun m!7791696 () Bool)

(assert (=> bs!1879972 m!7791696))

(assert (=> bs!1879972 m!7791696))

(declare-fun m!7791698 () Bool)

(assert (=> bs!1879972 m!7791698))

(assert (=> b!7067193 d!2209984))

(declare-fun d!2209986 () Bool)

(declare-fun e!4248824 () Bool)

(assert (=> d!2209986 e!4248824))

(declare-fun res!2885974 () Bool)

(assert (=> d!2209986 (=> (not res!2885974) (not e!4248824))))

(declare-fun lt!2542360 () Context!13234)

(declare-fun dynLambda!27743 (Int Context!13234) Bool)

(assert (=> d!2209986 (= res!2885974 (dynLambda!27743 lambda!424208 lt!2542360))))

(declare-fun getWitness!1710 (List!68391 Int) Context!13234)

(assert (=> d!2209986 (= lt!2542360 (getWitness!1710 (toList!10962 lt!2542300) lambda!424208))))

(declare-fun exists!3653 ((InoxSet Context!13234) Int) Bool)

(assert (=> d!2209986 (exists!3653 lt!2542300 lambda!424208)))

(assert (=> d!2209986 (= (getWitness!1708 lt!2542300 lambda!424208) lt!2542360)))

(declare-fun b!7067409 () Bool)

(assert (=> b!7067409 (= e!4248824 (select lt!2542300 lt!2542360))))

(assert (= (and d!2209986 res!2885974) b!7067409))

(declare-fun b_lambda!269709 () Bool)

(assert (=> (not b_lambda!269709) (not d!2209986)))

(declare-fun m!7791700 () Bool)

(assert (=> d!2209986 m!7791700))

(assert (=> d!2209986 m!7791388))

(assert (=> d!2209986 m!7791388))

(declare-fun m!7791702 () Bool)

(assert (=> d!2209986 m!7791702))

(declare-fun m!7791704 () Bool)

(assert (=> d!2209986 m!7791704))

(declare-fun m!7791706 () Bool)

(assert (=> b!7067409 m!7791706))

(assert (=> b!7067193 d!2209986))

(declare-fun d!2209988 () Bool)

(declare-fun c!1318026 () Bool)

(assert (=> d!2209988 (= c!1318026 (isEmpty!39841 s!7408))))

(declare-fun e!4248825 () Bool)

(assert (=> d!2209988 (= (matchZipper!3161 lt!2542308 s!7408) e!4248825)))

(declare-fun b!7067410 () Bool)

(assert (=> b!7067410 (= e!4248825 (nullableZipper!2685 lt!2542308))))

(declare-fun b!7067411 () Bool)

(assert (=> b!7067411 (= e!4248825 (matchZipper!3161 (derivationStepZipper!3071 lt!2542308 (head!14391 s!7408)) (tail!13791 s!7408)))))

(assert (= (and d!2209988 c!1318026) b!7067410))

(assert (= (and d!2209988 (not c!1318026)) b!7067411))

(assert (=> d!2209988 m!7791480))

(declare-fun m!7791708 () Bool)

(assert (=> b!7067410 m!7791708))

(assert (=> b!7067411 m!7791484))

(assert (=> b!7067411 m!7791484))

(declare-fun m!7791710 () Bool)

(assert (=> b!7067411 m!7791710))

(assert (=> b!7067411 m!7791488))

(assert (=> b!7067411 m!7791710))

(assert (=> b!7067411 m!7791488))

(declare-fun m!7791712 () Bool)

(assert (=> b!7067411 m!7791712))

(assert (=> b!7067193 d!2209988))

(declare-fun d!2209990 () Bool)

(declare-fun e!4248828 () Bool)

(assert (=> d!2209990 e!4248828))

(declare-fun res!2885977 () Bool)

(assert (=> d!2209990 (=> (not res!2885977) (not e!4248828))))

(declare-fun lt!2542363 () List!68391)

(declare-fun noDuplicate!2714 (List!68391) Bool)

(assert (=> d!2209990 (= res!2885977 (noDuplicate!2714 lt!2542363))))

(declare-fun choose!54098 ((InoxSet Context!13234)) List!68391)

(assert (=> d!2209990 (= lt!2542363 (choose!54098 lt!2542300))))

(assert (=> d!2209990 (= (toList!10962 lt!2542300) lt!2542363)))

(declare-fun b!7067414 () Bool)

(assert (=> b!7067414 (= e!4248828 (= (content!13758 lt!2542363) lt!2542300))))

(assert (= (and d!2209990 res!2885977) b!7067414))

(declare-fun m!7791714 () Bool)

(assert (=> d!2209990 m!7791714))

(declare-fun m!7791716 () Bool)

(assert (=> d!2209990 m!7791716))

(declare-fun m!7791718 () Bool)

(assert (=> b!7067414 m!7791718))

(assert (=> b!7067193 d!2209990))

(declare-fun d!2209992 () Bool)

(declare-fun nullableFct!2800 (Regex!17621) Bool)

(assert (=> d!2209992 (= (nullable!7304 (h!74714 (exprs!7117 lt!2542305))) (nullableFct!2800 (h!74714 (exprs!7117 lt!2542305))))))

(declare-fun bs!1879973 () Bool)

(assert (= bs!1879973 d!2209992))

(declare-fun m!7791720 () Bool)

(assert (=> bs!1879973 m!7791720))

(assert (=> b!7067185 d!2209992))

(declare-fun d!2209994 () Bool)

(assert (=> d!2209994 (= (tail!13789 (exprs!7117 lt!2542305)) (t!382171 (exprs!7117 lt!2542305)))))

(assert (=> b!7067185 d!2209994))

(assert (=> b!7067194 d!2209976))

(assert (=> b!7067187 d!2209976))

(assert (=> b!7067187 d!2209952))

(declare-fun b!7067415 () Bool)

(declare-fun e!4248829 () (InoxSet Context!13234))

(declare-fun e!4248831 () (InoxSet Context!13234))

(assert (=> b!7067415 (= e!4248829 e!4248831)))

(declare-fun c!1318027 () Bool)

(assert (=> b!7067415 (= c!1318027 ((_ is Cons!68266) (exprs!7117 lt!2542282)))))

(declare-fun call!642280 () (InoxSet Context!13234))

(declare-fun b!7067416 () Bool)

(assert (=> b!7067416 (= e!4248829 ((_ map or) call!642280 (derivationStepZipperUp!2205 (Context!13235 (t!382171 (exprs!7117 lt!2542282))) (h!74713 s!7408))))))

(declare-fun b!7067417 () Bool)

(declare-fun e!4248830 () Bool)

(assert (=> b!7067417 (= e!4248830 (nullable!7304 (h!74714 (exprs!7117 lt!2542282))))))

(declare-fun b!7067418 () Bool)

(assert (=> b!7067418 (= e!4248831 ((as const (Array Context!13234 Bool)) false))))

(declare-fun d!2209996 () Bool)

(declare-fun c!1318028 () Bool)

(assert (=> d!2209996 (= c!1318028 e!4248830)))

(declare-fun res!2885978 () Bool)

(assert (=> d!2209996 (=> (not res!2885978) (not e!4248830))))

(assert (=> d!2209996 (= res!2885978 ((_ is Cons!68266) (exprs!7117 lt!2542282)))))

(assert (=> d!2209996 (= (derivationStepZipperUp!2205 lt!2542282 (h!74713 s!7408)) e!4248829)))

(declare-fun bm!642275 () Bool)

(assert (=> bm!642275 (= call!642280 (derivationStepZipperDown!2255 (h!74714 (exprs!7117 lt!2542282)) (Context!13235 (t!382171 (exprs!7117 lt!2542282))) (h!74713 s!7408)))))

(declare-fun b!7067419 () Bool)

(assert (=> b!7067419 (= e!4248831 call!642280)))

(assert (= (and d!2209996 res!2885978) b!7067417))

(assert (= (and d!2209996 c!1318028) b!7067416))

(assert (= (and d!2209996 (not c!1318028)) b!7067415))

(assert (= (and b!7067415 c!1318027) b!7067419))

(assert (= (and b!7067415 (not c!1318027)) b!7067418))

(assert (= (or b!7067416 b!7067419) bm!642275))

(declare-fun m!7791722 () Bool)

(assert (=> b!7067416 m!7791722))

(declare-fun m!7791724 () Bool)

(assert (=> b!7067417 m!7791724))

(declare-fun m!7791726 () Bool)

(assert (=> bm!642275 m!7791726))

(assert (=> b!7067177 d!2209996))

(declare-fun bs!1879974 () Bool)

(declare-fun d!2209998 () Bool)

(assert (= bs!1879974 (and d!2209998 b!7067177)))

(declare-fun lambda!424249 () Int)

(assert (=> bs!1879974 (= lambda!424249 lambda!424211)))

(assert (=> d!2209998 true))

(assert (=> d!2209998 (= (derivationStepZipper!3071 lt!2542285 (h!74713 s!7408)) (flatMap!2547 lt!2542285 lambda!424249))))

(declare-fun bs!1879975 () Bool)

(assert (= bs!1879975 d!2209998))

(declare-fun m!7791728 () Bool)

(assert (=> bs!1879975 m!7791728))

(assert (=> b!7067177 d!2209998))

(declare-fun d!2210000 () Bool)

(declare-fun dynLambda!27744 (Int Context!13234) (InoxSet Context!13234))

(assert (=> d!2210000 (= (flatMap!2547 lt!2542285 lambda!424211) (dynLambda!27744 lambda!424211 lt!2542282))))

(declare-fun lt!2542366 () Unit!161950)

(declare-fun choose!54099 ((InoxSet Context!13234) Context!13234 Int) Unit!161950)

(assert (=> d!2210000 (= lt!2542366 (choose!54099 lt!2542285 lt!2542282 lambda!424211))))

(assert (=> d!2210000 (= lt!2542285 (store ((as const (Array Context!13234 Bool)) false) lt!2542282 true))))

(assert (=> d!2210000 (= (lemmaFlatMapOnSingletonSet!2056 lt!2542285 lt!2542282 lambda!424211) lt!2542366)))

(declare-fun b_lambda!269711 () Bool)

(assert (=> (not b_lambda!269711) (not d!2210000)))

(declare-fun bs!1879976 () Bool)

(assert (= bs!1879976 d!2210000))

(assert (=> bs!1879976 m!7791374))

(declare-fun m!7791730 () Bool)

(assert (=> bs!1879976 m!7791730))

(declare-fun m!7791732 () Bool)

(assert (=> bs!1879976 m!7791732))

(assert (=> bs!1879976 m!7791354))

(assert (=> b!7067177 d!2210000))

(declare-fun d!2210002 () Bool)

(declare-fun choose!54100 ((InoxSet Context!13234) Int) (InoxSet Context!13234))

(assert (=> d!2210002 (= (flatMap!2547 lt!2542285 lambda!424211) (choose!54100 lt!2542285 lambda!424211))))

(declare-fun bs!1879977 () Bool)

(assert (= bs!1879977 d!2210002))

(declare-fun m!7791734 () Bool)

(assert (=> bs!1879977 m!7791734))

(assert (=> b!7067177 d!2210002))

(assert (=> b!7067177 d!2209902))

(declare-fun d!2210004 () Bool)

(assert (=> d!2210004 (= (isEmpty!39839 (exprs!7117 lt!2542305)) ((_ is Nil!68266) (exprs!7117 lt!2542305)))))

(assert (=> b!7067188 d!2210004))

(declare-fun b!7067426 () Bool)

(declare-fun e!4248834 () Bool)

(declare-fun tp!1941702 () Bool)

(declare-fun tp!1941703 () Bool)

(assert (=> b!7067426 (= e!4248834 (and tp!1941702 tp!1941703))))

(assert (=> b!7067189 (= tp!1941679 e!4248834)))

(assert (= (and b!7067189 ((_ is Cons!68266) (exprs!7117 setElem!50133))) b!7067426))

(declare-fun condSetEmpty!50139 () Bool)

(assert (=> setNonEmpty!50133 (= condSetEmpty!50139 (= setRest!50133 ((as const (Array Context!13234 Bool)) false)))))

(declare-fun setRes!50139 () Bool)

(assert (=> setNonEmpty!50133 (= tp!1941677 setRes!50139)))

(declare-fun setIsEmpty!50139 () Bool)

(assert (=> setIsEmpty!50139 setRes!50139))

(declare-fun tp!1941708 () Bool)

(declare-fun e!4248837 () Bool)

(declare-fun setNonEmpty!50139 () Bool)

(declare-fun setElem!50139 () Context!13234)

(assert (=> setNonEmpty!50139 (= setRes!50139 (and tp!1941708 (inv!86911 setElem!50139) e!4248837))))

(declare-fun setRest!50139 () (InoxSet Context!13234))

(assert (=> setNonEmpty!50139 (= setRest!50133 ((_ map or) (store ((as const (Array Context!13234 Bool)) false) setElem!50139 true) setRest!50139))))

(declare-fun b!7067431 () Bool)

(declare-fun tp!1941709 () Bool)

(assert (=> b!7067431 (= e!4248837 tp!1941709)))

(assert (= (and setNonEmpty!50133 condSetEmpty!50139) setIsEmpty!50139))

(assert (= (and setNonEmpty!50133 (not condSetEmpty!50139)) setNonEmpty!50139))

(assert (= setNonEmpty!50139 b!7067431))

(declare-fun m!7791736 () Bool)

(assert (=> setNonEmpty!50139 m!7791736))

(declare-fun b!7067436 () Bool)

(declare-fun e!4248840 () Bool)

(declare-fun tp!1941712 () Bool)

(assert (=> b!7067436 (= e!4248840 (and tp_is_empty!44467 tp!1941712))))

(assert (=> b!7067186 (= tp!1941680 e!4248840)))

(assert (= (and b!7067186 ((_ is Cons!68265) (t!382170 s!7408))) b!7067436))

(declare-fun b!7067437 () Bool)

(declare-fun e!4248841 () Bool)

(declare-fun tp!1941713 () Bool)

(declare-fun tp!1941714 () Bool)

(assert (=> b!7067437 (= e!4248841 (and tp!1941713 tp!1941714))))

(assert (=> b!7067195 (= tp!1941678 e!4248841)))

(assert (= (and b!7067195 ((_ is Cons!68266) (exprs!7117 ct2!306))) b!7067437))

(declare-fun b_lambda!269713 () Bool)

(assert (= b_lambda!269711 (or b!7067177 b_lambda!269713)))

(declare-fun bs!1879978 () Bool)

(declare-fun d!2210006 () Bool)

(assert (= bs!1879978 (and d!2210006 b!7067177)))

(assert (=> bs!1879978 (= (dynLambda!27744 lambda!424211 lt!2542282) (derivationStepZipperUp!2205 lt!2542282 (h!74713 s!7408)))))

(assert (=> bs!1879978 m!7791372))

(assert (=> d!2210000 d!2210006))

(declare-fun b_lambda!269715 () Bool)

(assert (= b_lambda!269709 (or b!7067193 b_lambda!269715)))

(declare-fun bs!1879979 () Bool)

(declare-fun d!2210008 () Bool)

(assert (= bs!1879979 (and d!2210008 b!7067193)))

(assert (=> bs!1879979 (= (dynLambda!27743 lambda!424208 lt!2542360) (matchZipper!3161 (store ((as const (Array Context!13234 Bool)) false) lt!2542360 true) s!7408))))

(declare-fun m!7791738 () Bool)

(assert (=> bs!1879979 m!7791738))

(assert (=> bs!1879979 m!7791738))

(declare-fun m!7791740 () Bool)

(assert (=> bs!1879979 m!7791740))

(assert (=> d!2209986 d!2210008))

(declare-fun b_lambda!269717 () Bool)

(assert (= b_lambda!269707 (or b!7067184 b_lambda!269717)))

(declare-fun bs!1879980 () Bool)

(declare-fun d!2210010 () Bool)

(assert (= bs!1879980 (and d!2210010 b!7067184)))

(declare-fun lt!2542367 () Unit!161950)

(assert (=> bs!1879980 (= lt!2542367 (lemmaConcatPreservesForall!932 (exprs!7117 lt!2542354) (exprs!7117 ct2!306) lambda!424210))))

(assert (=> bs!1879980 (= (dynLambda!27741 lambda!424209 lt!2542354) (Context!13235 (++!15738 (exprs!7117 lt!2542354) (exprs!7117 ct2!306))))))

(declare-fun m!7791742 () Bool)

(assert (=> bs!1879980 m!7791742))

(declare-fun m!7791744 () Bool)

(assert (=> bs!1879980 m!7791744))

(assert (=> d!2209980 d!2210010))

(check-sat (not b!7067437) (not b!7067278) (not d!2209906) (not d!2209992) (not bm!642270) (not b_lambda!269715) (not bm!642256) (not d!2209974) (not b!7067414) (not b!7067417) (not b!7067383) (not b!7067398) tp_is_empty!44467 (not d!2209968) (not b!7067310) (not d!2209982) (not d!2209952) (not b!7067416) (not d!2209918) (not d!2209954) (not b!7067384) (not bs!1879978) (not d!2209990) (not d!2209998) (not b!7067391) (not b!7067390) (not b!7067396) (not d!2209966) (not d!2210002) (not d!2210000) (not b!7067393) (not b_lambda!269717) (not bm!642273) (not b!7067395) (not d!2209902) (not setNonEmpty!50139) (not d!2209984) (not b!7067436) (not b!7067356) (not b!7067311) (not b!7067387) (not d!2209970) (not b!7067410) (not b!7067399) (not d!2209976) (not d!2209988) (not bm!642275) (not b!7067411) (not b!7067386) (not d!2209972) (not d!2209904) (not d!2209986) (not b!7067279) (not b_lambda!269713) (not b!7067394) (not bs!1879979) (not d!2209978) (not b!7067392) (not bs!1879980) (not d!2209980) (not b!7067431) (not d!2209910) (not b!7067426) (not bm!642272))
(check-sat)
