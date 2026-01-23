; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!695600 () Bool)

(assert start!695600)

(declare-fun b!7137964 () Bool)

(declare-fun e!4289797 () Bool)

(declare-fun e!4289801 () Bool)

(assert (=> b!7137964 (= e!4289797 (not e!4289801))))

(declare-fun res!2912555 () Bool)

(assert (=> b!7137964 (=> res!2912555 e!4289801)))

(declare-fun lt!2566394 () Bool)

(declare-datatypes ((C!36556 0))(
  ( (C!36557 (val!28226 Int)) )
))
(declare-datatypes ((Regex!18141 0))(
  ( (ElementMatch!18141 (c!1331124 C!36556)) (Concat!26986 (regOne!36794 Regex!18141) (regTwo!36794 Regex!18141)) (EmptyExpr!18141) (Star!18141 (reg!18470 Regex!18141)) (EmptyLang!18141) (Union!18141 (regOne!36795 Regex!18141) (regTwo!36795 Regex!18141)) )
))
(declare-datatypes ((List!69360 0))(
  ( (Nil!69236) (Cons!69236 (h!75684 Regex!18141) (t!383377 List!69360)) )
))
(declare-fun lt!2566396 () List!69360)

(declare-fun lambda!434037 () Int)

(declare-fun exists!3905 (List!69360 Int) Bool)

(assert (=> b!7137964 (= res!2912555 (not (= lt!2566394 (exists!3905 lt!2566396 lambda!434037))))))

(assert (=> b!7137964 (= lt!2566394 (exists!3905 lt!2566396 lambda!434037))))

(declare-fun lt!2566395 () Regex!18141)

(declare-fun nullable!7661 (Regex!18141) Bool)

(assert (=> b!7137964 (= lt!2566394 (nullable!7661 lt!2566395))))

(declare-datatypes ((Unit!163141 0))(
  ( (Unit!163142) )
))
(declare-fun lt!2566398 () Unit!163141)

(declare-fun nullableGenUnionSpec!30 (Regex!18141 List!69360) Unit!163141)

(assert (=> b!7137964 (= lt!2566398 (nullableGenUnionSpec!30 lt!2566395 lt!2566396))))

(declare-fun b!7137965 () Bool)

(declare-fun e!4289796 () Bool)

(declare-fun tp!1968207 () Bool)

(declare-fun tp!1968202 () Bool)

(assert (=> b!7137965 (= e!4289796 (and tp!1968207 tp!1968202))))

(declare-fun b!7137966 () Bool)

(declare-fun res!2912559 () Bool)

(assert (=> b!7137966 (=> res!2912559 e!4289801)))

(assert (=> b!7137966 (= res!2912559 lt!2566394)))

(declare-fun e!4289798 () Bool)

(declare-fun tp!1968204 () Bool)

(declare-fun setNonEmpty!52429 () Bool)

(declare-datatypes ((Context!14270 0))(
  ( (Context!14271 (exprs!7635 List!69360)) )
))
(declare-fun setElem!52429 () Context!14270)

(declare-fun setRes!52429 () Bool)

(declare-fun inv!88416 (Context!14270) Bool)

(assert (=> setNonEmpty!52429 (= setRes!52429 (and tp!1968204 (inv!88416 setElem!52429) e!4289798))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3189 () (InoxSet Context!14270))

(declare-fun setRest!52429 () (InoxSet Context!14270))

(assert (=> setNonEmpty!52429 (= z!3189 ((_ map or) (store ((as const (Array Context!14270 Bool)) false) setElem!52429 true) setRest!52429))))

(declare-fun b!7137967 () Bool)

(declare-fun e!4289799 () Bool)

(assert (=> b!7137967 (= e!4289799 true)))

(declare-fun lt!2566397 () Context!14270)

(declare-fun contains!20583 (List!69360 Regex!18141) Bool)

(declare-fun generalisedConcat!2332 (List!69360) Regex!18141)

(assert (=> b!7137967 (contains!20583 lt!2566396 (generalisedConcat!2332 (exprs!7635 lt!2566397)))))

(declare-fun lt!2566399 () Unit!163141)

(declare-datatypes ((List!69361 0))(
  ( (Nil!69237) (Cons!69237 (h!75685 Context!14270) (t!383378 List!69361)) )
))
(declare-fun lt!2566400 () List!69361)

(declare-fun lemmaZipperContainsContextThenUnfocusZipperListContains!6 (List!69361 Context!14270) Unit!163141)

(assert (=> b!7137967 (= lt!2566399 (lemmaZipperContainsContextThenUnfocusZipperListContains!6 lt!2566400 lt!2566397))))

(declare-fun b!7137968 () Bool)

(declare-fun tp!1968203 () Bool)

(declare-fun tp!1968201 () Bool)

(assert (=> b!7137968 (= e!4289796 (and tp!1968203 tp!1968201))))

(declare-fun b!7137969 () Bool)

(declare-fun res!2912562 () Bool)

(assert (=> b!7137969 (=> res!2912562 e!4289801)))

(assert (=> b!7137969 (= res!2912562 (exists!3905 lt!2566396 lambda!434037))))

(declare-fun b!7137970 () Bool)

(declare-fun tp_is_empty!45919 () Bool)

(assert (=> b!7137970 (= e!4289796 tp_is_empty!45919)))

(declare-fun setIsEmpty!52429 () Bool)

(assert (=> setIsEmpty!52429 setRes!52429))

(declare-fun b!7137971 () Bool)

(declare-fun res!2912558 () Bool)

(assert (=> b!7137971 (=> res!2912558 e!4289801)))

(declare-fun lambda!434038 () Int)

(declare-fun exists!3906 ((InoxSet Context!14270) Int) Bool)

(assert (=> b!7137971 (= res!2912558 (not (exists!3906 z!3189 lambda!434038)))))

(declare-fun res!2912563 () Bool)

(declare-fun e!4289800 () Bool)

(assert (=> start!695600 (=> (not res!2912563) (not e!4289800))))

(declare-fun r!11483 () Regex!18141)

(declare-fun validRegex!9308 (Regex!18141) Bool)

(assert (=> start!695600 (= res!2912563 (validRegex!9308 r!11483))))

(assert (=> start!695600 e!4289800))

(assert (=> start!695600 e!4289796))

(declare-fun condSetEmpty!52429 () Bool)

(assert (=> start!695600 (= condSetEmpty!52429 (= z!3189 ((as const (Array Context!14270 Bool)) false)))))

(assert (=> start!695600 setRes!52429))

(declare-fun b!7137972 () Bool)

(assert (=> b!7137972 (= e!4289801 e!4289799)))

(declare-fun res!2912557 () Bool)

(assert (=> b!7137972 (=> res!2912557 e!4289799)))

(assert (=> b!7137972 (= res!2912557 (not (select z!3189 lt!2566397)))))

(declare-fun getWitness!1904 ((InoxSet Context!14270) Int) Context!14270)

(assert (=> b!7137972 (= lt!2566397 (getWitness!1904 z!3189 lambda!434038))))

(declare-fun b!7137973 () Bool)

(declare-fun e!4289802 () Bool)

(assert (=> b!7137973 (= e!4289800 e!4289802)))

(declare-fun res!2912556 () Bool)

(assert (=> b!7137973 (=> (not res!2912556) (not e!4289802))))

(declare-fun unfocusZipper!2489 (List!69361) Regex!18141)

(assert (=> b!7137973 (= res!2912556 (= r!11483 (unfocusZipper!2489 lt!2566400)))))

(declare-fun toList!11172 ((InoxSet Context!14270)) List!69361)

(assert (=> b!7137973 (= lt!2566400 (toList!11172 z!3189))))

(declare-fun b!7137974 () Bool)

(declare-fun res!2912561 () Bool)

(assert (=> b!7137974 (=> res!2912561 e!4289799)))

(declare-fun nullableContext!140 (Context!14270) Bool)

(assert (=> b!7137974 (= res!2912561 (not (nullableContext!140 lt!2566397)))))

(declare-fun b!7137975 () Bool)

(assert (=> b!7137975 (= e!4289802 e!4289797)))

(declare-fun res!2912560 () Bool)

(assert (=> b!7137975 (=> (not res!2912560) (not e!4289797))))

(assert (=> b!7137975 (= res!2912560 (= r!11483 lt!2566395))))

(declare-fun generalisedUnion!2646 (List!69360) Regex!18141)

(assert (=> b!7137975 (= lt!2566395 (generalisedUnion!2646 lt!2566396))))

(declare-fun unfocusZipperList!2182 (List!69361) List!69360)

(assert (=> b!7137975 (= lt!2566396 (unfocusZipperList!2182 lt!2566400))))

(declare-fun b!7137976 () Bool)

(declare-fun tp!1968205 () Bool)

(assert (=> b!7137976 (= e!4289796 tp!1968205)))

(declare-fun b!7137977 () Bool)

(declare-fun tp!1968206 () Bool)

(assert (=> b!7137977 (= e!4289798 tp!1968206)))

(assert (= (and start!695600 res!2912563) b!7137973))

(assert (= (and b!7137973 res!2912556) b!7137975))

(assert (= (and b!7137975 res!2912560) b!7137964))

(assert (= (and b!7137964 (not res!2912555)) b!7137966))

(assert (= (and b!7137966 (not res!2912559)) b!7137969))

(assert (= (and b!7137969 (not res!2912562)) b!7137971))

(assert (= (and b!7137971 (not res!2912558)) b!7137972))

(assert (= (and b!7137972 (not res!2912557)) b!7137974))

(assert (= (and b!7137974 (not res!2912561)) b!7137967))

(get-info :version)

(assert (= (and start!695600 ((_ is ElementMatch!18141) r!11483)) b!7137970))

(assert (= (and start!695600 ((_ is Concat!26986) r!11483)) b!7137965))

(assert (= (and start!695600 ((_ is Star!18141) r!11483)) b!7137976))

(assert (= (and start!695600 ((_ is Union!18141) r!11483)) b!7137968))

(assert (= (and start!695600 condSetEmpty!52429) setIsEmpty!52429))

(assert (= (and start!695600 (not condSetEmpty!52429)) setNonEmpty!52429))

(assert (= setNonEmpty!52429 b!7137977))

(declare-fun m!7853606 () Bool)

(assert (=> b!7137973 m!7853606))

(declare-fun m!7853608 () Bool)

(assert (=> b!7137973 m!7853608))

(declare-fun m!7853610 () Bool)

(assert (=> b!7137967 m!7853610))

(assert (=> b!7137967 m!7853610))

(declare-fun m!7853612 () Bool)

(assert (=> b!7137967 m!7853612))

(declare-fun m!7853614 () Bool)

(assert (=> b!7137967 m!7853614))

(declare-fun m!7853616 () Bool)

(assert (=> setNonEmpty!52429 m!7853616))

(declare-fun m!7853618 () Bool)

(assert (=> b!7137974 m!7853618))

(declare-fun m!7853620 () Bool)

(assert (=> b!7137975 m!7853620))

(declare-fun m!7853622 () Bool)

(assert (=> b!7137975 m!7853622))

(declare-fun m!7853624 () Bool)

(assert (=> b!7137969 m!7853624))

(declare-fun m!7853626 () Bool)

(assert (=> b!7137972 m!7853626))

(declare-fun m!7853628 () Bool)

(assert (=> b!7137972 m!7853628))

(declare-fun m!7853630 () Bool)

(assert (=> start!695600 m!7853630))

(assert (=> b!7137964 m!7853624))

(assert (=> b!7137964 m!7853624))

(declare-fun m!7853632 () Bool)

(assert (=> b!7137964 m!7853632))

(declare-fun m!7853634 () Bool)

(assert (=> b!7137964 m!7853634))

(declare-fun m!7853636 () Bool)

(assert (=> b!7137971 m!7853636))

(check-sat (not b!7137972) tp_is_empty!45919 (not b!7137965) (not b!7137974) (not b!7137967) (not setNonEmpty!52429) (not b!7137973) (not b!7137968) (not b!7137969) (not b!7137971) (not b!7137964) (not b!7137977) (not b!7137976) (not b!7137975) (not start!695600))
(check-sat)
