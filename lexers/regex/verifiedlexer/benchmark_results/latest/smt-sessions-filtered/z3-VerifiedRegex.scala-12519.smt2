; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!695748 () Bool)

(assert start!695748)

(declare-fun b!7138842 () Bool)

(declare-fun e!4290302 () Bool)

(assert (=> b!7138842 (= e!4290302 true)))

(declare-datatypes ((C!36568 0))(
  ( (C!36569 (val!28232 Int)) )
))
(declare-datatypes ((Regex!18147 0))(
  ( (ElementMatch!18147 (c!1331294 C!36568)) (Concat!26992 (regOne!36806 Regex!18147) (regTwo!36806 Regex!18147)) (EmptyExpr!18147) (Star!18147 (reg!18476 Regex!18147)) (EmptyLang!18147) (Union!18147 (regOne!36807 Regex!18147) (regTwo!36807 Regex!18147)) )
))
(declare-fun lt!2566698 () Regex!18147)

(declare-datatypes ((List!69372 0))(
  ( (Nil!69248) (Cons!69248 (h!75696 Regex!18147) (t!383389 List!69372)) )
))
(declare-datatypes ((Context!14282 0))(
  ( (Context!14283 (exprs!7641 List!69372)) )
))
(declare-fun lt!2566700 () Context!14282)

(declare-fun lambda!434253 () Int)

(declare-fun nullable!7667 (Regex!18147) Bool)

(declare-fun forall!16985 (List!69372 Int) Bool)

(assert (=> b!7138842 (= (nullable!7667 lt!2566698) (forall!16985 (exprs!7641 lt!2566700) lambda!434253))))

(declare-datatypes ((Unit!163153 0))(
  ( (Unit!163154) )
))
(declare-fun lt!2566694 () Unit!163153)

(declare-fun nullableGenConcatSpec!8 (Regex!18147 List!69372) Unit!163153)

(assert (=> b!7138842 (= lt!2566694 (nullableGenConcatSpec!8 lt!2566698 (exprs!7641 lt!2566700)))))

(declare-fun lt!2566699 () List!69372)

(declare-fun contains!20593 (List!69372 Regex!18147) Bool)

(assert (=> b!7138842 (contains!20593 lt!2566699 lt!2566698)))

(declare-fun generalisedConcat!2338 (List!69372) Regex!18147)

(assert (=> b!7138842 (= lt!2566698 (generalisedConcat!2338 (exprs!7641 lt!2566700)))))

(declare-fun lt!2566693 () Unit!163153)

(declare-datatypes ((List!69373 0))(
  ( (Nil!69249) (Cons!69249 (h!75697 Context!14282) (t!383390 List!69373)) )
))
(declare-fun lt!2566692 () List!69373)

(declare-fun lemmaZipperContainsContextThenUnfocusZipperListContains!12 (List!69373 Context!14282) Unit!163153)

(assert (=> b!7138842 (= lt!2566693 (lemmaZipperContainsContextThenUnfocusZipperListContains!12 lt!2566692 lt!2566700))))

(declare-fun res!2912911 () Bool)

(declare-fun e!4290300 () Bool)

(assert (=> start!695748 (=> (not res!2912911) (not e!4290300))))

(declare-fun r!11483 () Regex!18147)

(declare-fun validRegex!9314 (Regex!18147) Bool)

(assert (=> start!695748 (= res!2912911 (validRegex!9314 r!11483))))

(assert (=> start!695748 e!4290300))

(declare-fun e!4290306 () Bool)

(assert (=> start!695748 e!4290306))

(declare-fun condSetEmpty!52459 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3189 () (InoxSet Context!14282))

(assert (=> start!695748 (= condSetEmpty!52459 (= z!3189 ((as const (Array Context!14282 Bool)) false)))))

(declare-fun setRes!52459 () Bool)

(assert (=> start!695748 setRes!52459))

(declare-fun b!7138843 () Bool)

(declare-fun res!2912917 () Bool)

(declare-fun e!4290305 () Bool)

(assert (=> b!7138843 (=> res!2912917 e!4290305)))

(declare-fun lt!2566696 () Bool)

(assert (=> b!7138843 (= res!2912917 lt!2566696)))

(declare-fun b!7138844 () Bool)

(declare-fun tp!1968520 () Bool)

(assert (=> b!7138844 (= e!4290306 tp!1968520)))

(declare-fun b!7138845 () Bool)

(assert (=> b!7138845 (= e!4290305 e!4290302)))

(declare-fun res!2912918 () Bool)

(assert (=> b!7138845 (=> res!2912918 e!4290302)))

(assert (=> b!7138845 (= res!2912918 (not (select z!3189 lt!2566700)))))

(declare-fun lambda!434254 () Int)

(declare-fun getWitness!1913 ((InoxSet Context!14282) Int) Context!14282)

(assert (=> b!7138845 (= lt!2566700 (getWitness!1913 z!3189 lambda!434254))))

(declare-fun b!7138846 () Bool)

(declare-fun tp_is_empty!45931 () Bool)

(assert (=> b!7138846 (= e!4290306 tp_is_empty!45931)))

(declare-fun b!7138847 () Bool)

(declare-fun tp!1968519 () Bool)

(declare-fun tp!1968515 () Bool)

(assert (=> b!7138847 (= e!4290306 (and tp!1968519 tp!1968515))))

(declare-fun b!7138848 () Bool)

(declare-fun e!4290304 () Bool)

(assert (=> b!7138848 (= e!4290300 e!4290304)))

(declare-fun res!2912914 () Bool)

(assert (=> b!7138848 (=> (not res!2912914) (not e!4290304))))

(declare-fun unfocusZipper!2495 (List!69373) Regex!18147)

(assert (=> b!7138848 (= res!2912914 (= r!11483 (unfocusZipper!2495 lt!2566692)))))

(declare-fun toList!11178 ((InoxSet Context!14282)) List!69373)

(assert (=> b!7138848 (= lt!2566692 (toList!11178 z!3189))))

(declare-fun b!7138849 () Bool)

(declare-fun e!4290301 () Bool)

(assert (=> b!7138849 (= e!4290304 e!4290301)))

(declare-fun res!2912912 () Bool)

(assert (=> b!7138849 (=> (not res!2912912) (not e!4290301))))

(declare-fun lt!2566695 () Regex!18147)

(assert (=> b!7138849 (= res!2912912 (= r!11483 lt!2566695))))

(declare-fun generalisedUnion!2652 (List!69372) Regex!18147)

(assert (=> b!7138849 (= lt!2566695 (generalisedUnion!2652 lt!2566699))))

(declare-fun unfocusZipperList!2188 (List!69373) List!69372)

(assert (=> b!7138849 (= lt!2566699 (unfocusZipperList!2188 lt!2566692))))

(declare-fun b!7138850 () Bool)

(declare-fun res!2912916 () Bool)

(assert (=> b!7138850 (=> res!2912916 e!4290305)))

(declare-fun exists!3920 ((InoxSet Context!14282) Int) Bool)

(assert (=> b!7138850 (= res!2912916 (not (exists!3920 z!3189 lambda!434254)))))

(declare-fun b!7138851 () Bool)

(declare-fun e!4290303 () Bool)

(declare-fun tp!1968517 () Bool)

(assert (=> b!7138851 (= e!4290303 tp!1968517)))

(declare-fun setIsEmpty!52459 () Bool)

(assert (=> setIsEmpty!52459 setRes!52459))

(declare-fun b!7138852 () Bool)

(declare-fun res!2912919 () Bool)

(assert (=> b!7138852 (=> res!2912919 e!4290305)))

(declare-fun exists!3921 (List!69372 Int) Bool)

(assert (=> b!7138852 (= res!2912919 (exists!3921 lt!2566699 lambda!434253))))

(declare-fun b!7138853 () Bool)

(declare-fun res!2912913 () Bool)

(assert (=> b!7138853 (=> res!2912913 e!4290302)))

(declare-fun nullableContext!146 (Context!14282) Bool)

(assert (=> b!7138853 (= res!2912913 (not (nullableContext!146 lt!2566700)))))

(declare-fun b!7138854 () Bool)

(assert (=> b!7138854 (= e!4290301 (not e!4290305))))

(declare-fun res!2912915 () Bool)

(assert (=> b!7138854 (=> res!2912915 e!4290305)))

(assert (=> b!7138854 (= res!2912915 (not (= lt!2566696 (exists!3921 lt!2566699 lambda!434253))))))

(assert (=> b!7138854 (= lt!2566696 (exists!3921 lt!2566699 lambda!434253))))

(assert (=> b!7138854 (= lt!2566696 (nullable!7667 lt!2566695))))

(declare-fun lt!2566697 () Unit!163153)

(declare-fun nullableGenUnionSpec!36 (Regex!18147 List!69372) Unit!163153)

(assert (=> b!7138854 (= lt!2566697 (nullableGenUnionSpec!36 lt!2566695 lt!2566699))))

(declare-fun tp!1968521 () Bool)

(declare-fun setNonEmpty!52459 () Bool)

(declare-fun setElem!52459 () Context!14282)

(declare-fun inv!88431 (Context!14282) Bool)

(assert (=> setNonEmpty!52459 (= setRes!52459 (and tp!1968521 (inv!88431 setElem!52459) e!4290303))))

(declare-fun setRest!52459 () (InoxSet Context!14282))

(assert (=> setNonEmpty!52459 (= z!3189 ((_ map or) (store ((as const (Array Context!14282 Bool)) false) setElem!52459 true) setRest!52459))))

(declare-fun b!7138855 () Bool)

(declare-fun tp!1968518 () Bool)

(declare-fun tp!1968516 () Bool)

(assert (=> b!7138855 (= e!4290306 (and tp!1968518 tp!1968516))))

(assert (= (and start!695748 res!2912911) b!7138848))

(assert (= (and b!7138848 res!2912914) b!7138849))

(assert (= (and b!7138849 res!2912912) b!7138854))

(assert (= (and b!7138854 (not res!2912915)) b!7138843))

(assert (= (and b!7138843 (not res!2912917)) b!7138852))

(assert (= (and b!7138852 (not res!2912919)) b!7138850))

(assert (= (and b!7138850 (not res!2912916)) b!7138845))

(assert (= (and b!7138845 (not res!2912918)) b!7138853))

(assert (= (and b!7138853 (not res!2912913)) b!7138842))

(get-info :version)

(assert (= (and start!695748 ((_ is ElementMatch!18147) r!11483)) b!7138846))

(assert (= (and start!695748 ((_ is Concat!26992) r!11483)) b!7138855))

(assert (= (and start!695748 ((_ is Star!18147) r!11483)) b!7138844))

(assert (= (and start!695748 ((_ is Union!18147) r!11483)) b!7138847))

(assert (= (and start!695748 condSetEmpty!52459) setIsEmpty!52459))

(assert (= (and start!695748 (not condSetEmpty!52459)) setNonEmpty!52459))

(assert (= setNonEmpty!52459 b!7138851))

(declare-fun m!7854324 () Bool)

(assert (=> setNonEmpty!52459 m!7854324))

(declare-fun m!7854326 () Bool)

(assert (=> b!7138850 m!7854326))

(declare-fun m!7854328 () Bool)

(assert (=> b!7138852 m!7854328))

(declare-fun m!7854330 () Bool)

(assert (=> b!7138853 m!7854330))

(declare-fun m!7854332 () Bool)

(assert (=> b!7138845 m!7854332))

(declare-fun m!7854334 () Bool)

(assert (=> b!7138845 m!7854334))

(declare-fun m!7854336 () Bool)

(assert (=> start!695748 m!7854336))

(declare-fun m!7854338 () Bool)

(assert (=> b!7138842 m!7854338))

(declare-fun m!7854340 () Bool)

(assert (=> b!7138842 m!7854340))

(declare-fun m!7854342 () Bool)

(assert (=> b!7138842 m!7854342))

(declare-fun m!7854344 () Bool)

(assert (=> b!7138842 m!7854344))

(declare-fun m!7854346 () Bool)

(assert (=> b!7138842 m!7854346))

(declare-fun m!7854348 () Bool)

(assert (=> b!7138842 m!7854348))

(assert (=> b!7138854 m!7854328))

(assert (=> b!7138854 m!7854328))

(declare-fun m!7854350 () Bool)

(assert (=> b!7138854 m!7854350))

(declare-fun m!7854352 () Bool)

(assert (=> b!7138854 m!7854352))

(declare-fun m!7854354 () Bool)

(assert (=> b!7138849 m!7854354))

(declare-fun m!7854356 () Bool)

(assert (=> b!7138849 m!7854356))

(declare-fun m!7854358 () Bool)

(assert (=> b!7138848 m!7854358))

(declare-fun m!7854360 () Bool)

(assert (=> b!7138848 m!7854360))

(check-sat (not b!7138849) (not setNonEmpty!52459) (not b!7138842) (not b!7138855) (not b!7138851) (not b!7138852) tp_is_empty!45931 (not b!7138853) (not start!695748) (not b!7138854) (not b!7138844) (not b!7138850) (not b!7138848) (not b!7138845) (not b!7138847))
(check-sat)
