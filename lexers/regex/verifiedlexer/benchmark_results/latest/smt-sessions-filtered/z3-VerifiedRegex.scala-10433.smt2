; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539160 () Bool)

(assert start!539160)

(declare-fun b!5111984 () Bool)

(declare-fun res!2176010 () Bool)

(declare-fun e!3188296 () Bool)

(assert (=> b!5111984 (=> res!2176010 e!3188296)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28580 0))(
  ( (C!28581 (val!23942 Int)) )
))
(declare-datatypes ((Regex!14157 0))(
  ( (ElementMatch!14157 (c!878215 C!28580)) (Concat!23002 (regOne!28826 Regex!14157) (regTwo!28826 Regex!14157)) (EmptyExpr!14157) (Star!14157 (reg!14486 Regex!14157)) (EmptyLang!14157) (Union!14157 (regOne!28827 Regex!14157) (regTwo!28827 Regex!14157)) )
))
(declare-datatypes ((List!59199 0))(
  ( (Nil!59075) (Cons!59075 (h!65523 Regex!14157) (t!372200 List!59199)) )
))
(declare-datatypes ((Context!7082 0))(
  ( (Context!7083 (exprs!4041 List!59199)) )
))
(declare-fun z!4463 () (InoxSet Context!7082))

(declare-fun baseZ!46 () (InoxSet Context!7082))

(declare-datatypes ((List!59200 0))(
  ( (Nil!59076) (Cons!59076 (h!65524 C!28580) (t!372201 List!59200)) )
))
(declare-fun testedP!265 () List!59200)

(declare-fun derivationZipper!56 ((InoxSet Context!7082) List!59200) (InoxSet Context!7082))

(assert (=> b!5111984 (= res!2176010 (not (= (derivationZipper!56 baseZ!46 testedP!265) z!4463)))))

(declare-fun tp!1426385 () Bool)

(declare-fun e!3188304 () Bool)

(declare-fun setNonEmpty!29841 () Bool)

(declare-fun setElem!29841 () Context!7082)

(declare-fun setRes!29842 () Bool)

(declare-fun inv!78573 (Context!7082) Bool)

(assert (=> setNonEmpty!29841 (= setRes!29842 (and tp!1426385 (inv!78573 setElem!29841) e!3188304))))

(declare-fun setRest!29841 () (InoxSet Context!7082))

(assert (=> setNonEmpty!29841 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7082 Bool)) false) setElem!29841 true) setRest!29841))))

(declare-fun b!5111985 () Bool)

(declare-fun res!2176001 () Bool)

(assert (=> b!5111985 (=> res!2176001 e!3188296)))

(declare-fun lostCauseZipper!1043 ((InoxSet Context!7082)) Bool)

(assert (=> b!5111985 (= res!2176001 (lostCauseZipper!1043 z!4463))))

(declare-fun b!5111986 () Bool)

(declare-fun e!3188295 () Bool)

(declare-fun tp_is_empty!37587 () Bool)

(declare-fun tp!1426384 () Bool)

(assert (=> b!5111986 (= e!3188295 (and tp_is_empty!37587 tp!1426384))))

(declare-fun b!5111987 () Bool)

(declare-fun res!2176009 () Bool)

(assert (=> b!5111987 (=> res!2176009 e!3188296)))

(declare-fun lt!2105445 () Int)

(declare-fun input!5745 () List!59200)

(declare-fun size!39463 (List!59200) Int)

(assert (=> b!5111987 (= res!2176009 (>= lt!2105445 (size!39463 input!5745)))))

(declare-fun b!5111988 () Bool)

(declare-fun e!3188299 () Bool)

(declare-fun e!3188303 () Bool)

(assert (=> b!5111988 (= e!3188299 e!3188303)))

(declare-fun res!2176008 () Bool)

(assert (=> b!5111988 (=> (not res!2176008) (not e!3188303))))

(declare-fun lt!2105434 () Int)

(assert (=> b!5111988 (= res!2176008 (>= lt!2105434 lt!2105445))))

(assert (=> b!5111988 (= lt!2105445 (size!39463 testedP!265))))

(declare-fun knownP!20 () List!59200)

(assert (=> b!5111988 (= lt!2105434 (size!39463 knownP!20))))

(declare-fun b!5111989 () Bool)

(declare-fun e!3188301 () Bool)

(assert (=> b!5111989 (= e!3188296 e!3188301)))

(declare-fun res!2176003 () Bool)

(assert (=> b!5111989 (=> res!2176003 e!3188301)))

(declare-fun lt!2105433 () List!59200)

(declare-fun ++!12982 (List!59200 List!59200) List!59200)

(assert (=> b!5111989 (= res!2176003 (not (= (++!12982 knownP!20 lt!2105433) input!5745)))))

(declare-fun getSuffix!3236 (List!59200 List!59200) List!59200)

(assert (=> b!5111989 (= lt!2105433 (getSuffix!3236 input!5745 knownP!20))))

(declare-fun lt!2105441 () List!59200)

(declare-fun lt!2105436 () List!59200)

(assert (=> b!5111989 (= lt!2105441 (getSuffix!3236 knownP!20 lt!2105436))))

(declare-fun isPrefix!5562 (List!59200 List!59200) Bool)

(assert (=> b!5111989 (isPrefix!5562 lt!2105436 knownP!20)))

(declare-datatypes ((Unit!150181 0))(
  ( (Unit!150182) )
))
(declare-fun lt!2105439 () Unit!150181)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!699 (List!59200 List!59200 List!59200) Unit!150181)

(assert (=> b!5111989 (= lt!2105439 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!699 knownP!20 lt!2105436 input!5745))))

(declare-fun lt!2105444 () C!28580)

(declare-fun derivationStepZipper!792 ((InoxSet Context!7082) C!28580) (InoxSet Context!7082))

(assert (=> b!5111989 (= (derivationZipper!56 baseZ!46 lt!2105436) (derivationStepZipper!792 z!4463 lt!2105444))))

(declare-fun lt!2105430 () Unit!150181)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!17 ((InoxSet Context!7082) (InoxSet Context!7082) List!59200 C!28580) Unit!150181)

(assert (=> b!5111989 (= lt!2105430 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!17 baseZ!46 z!4463 testedP!265 lt!2105444))))

(assert (=> b!5111989 (isPrefix!5562 lt!2105436 input!5745)))

(declare-fun lt!2105437 () Unit!150181)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!952 (List!59200 List!59200) Unit!150181)

(assert (=> b!5111989 (= lt!2105437 (lemmaAddHeadSuffixToPrefixStillPrefix!952 testedP!265 input!5745))))

(assert (=> b!5111989 (= lt!2105436 (++!12982 testedP!265 (Cons!59076 lt!2105444 Nil!59076)))))

(declare-fun lt!2105443 () List!59200)

(declare-fun head!10885 (List!59200) C!28580)

(assert (=> b!5111989 (= lt!2105444 (head!10885 lt!2105443))))

(assert (=> b!5111989 (= lt!2105443 (getSuffix!3236 input!5745 testedP!265))))

(declare-fun res!2176005 () Bool)

(assert (=> start!539160 (=> (not res!2176005) (not e!3188299))))

(assert (=> start!539160 (= res!2176005 (isPrefix!5562 testedP!265 input!5745))))

(assert (=> start!539160 e!3188299))

(assert (=> start!539160 e!3188295))

(declare-fun condSetEmpty!29842 () Bool)

(assert (=> start!539160 (= condSetEmpty!29842 (= z!4463 ((as const (Array Context!7082 Bool)) false)))))

(declare-fun setRes!29841 () Bool)

(assert (=> start!539160 setRes!29841))

(declare-fun e!3188300 () Bool)

(assert (=> start!539160 e!3188300))

(declare-fun condSetEmpty!29841 () Bool)

(assert (=> start!539160 (= condSetEmpty!29841 (= baseZ!46 ((as const (Array Context!7082 Bool)) false)))))

(assert (=> start!539160 setRes!29842))

(declare-fun e!3188297 () Bool)

(assert (=> start!539160 e!3188297))

(declare-fun setIsEmpty!29841 () Bool)

(assert (=> setIsEmpty!29841 setRes!29841))

(declare-fun b!5111990 () Bool)

(declare-fun e!3188305 () Bool)

(assert (=> b!5111990 (= e!3188301 e!3188305)))

(declare-fun res!2176000 () Bool)

(assert (=> b!5111990 (=> res!2176000 e!3188305)))

(declare-fun lt!2105431 () List!59200)

(assert (=> b!5111990 (= res!2176000 (not (= lt!2105431 input!5745)))))

(declare-fun lt!2105435 () List!59200)

(assert (=> b!5111990 (= lt!2105431 (++!12982 (++!12982 testedP!265 lt!2105435) lt!2105433))))

(declare-fun b!5111991 () Bool)

(declare-fun res!2176011 () Bool)

(assert (=> b!5111991 (=> res!2176011 e!3188296)))

(assert (=> b!5111991 (= res!2176011 (= lt!2105445 lt!2105434))))

(declare-fun e!3188298 () Bool)

(declare-fun setElem!29842 () Context!7082)

(declare-fun tp!1426388 () Bool)

(declare-fun setNonEmpty!29842 () Bool)

(assert (=> setNonEmpty!29842 (= setRes!29841 (and tp!1426388 (inv!78573 setElem!29842) e!3188298))))

(declare-fun setRest!29842 () (InoxSet Context!7082))

(assert (=> setNonEmpty!29842 (= z!4463 ((_ map or) (store ((as const (Array Context!7082 Bool)) false) setElem!29842 true) setRest!29842))))

(declare-fun setIsEmpty!29842 () Bool)

(assert (=> setIsEmpty!29842 setRes!29842))

(declare-fun b!5111992 () Bool)

(declare-fun e!3188302 () Bool)

(assert (=> b!5111992 (= e!3188302 (not (= lt!2105435 Nil!59076)))))

(declare-fun lt!2105440 () List!59200)

(assert (=> b!5111992 (= lt!2105440 lt!2105443)))

(declare-fun lt!2105442 () Unit!150181)

(declare-fun lemmaSamePrefixThenSameSuffix!2608 (List!59200 List!59200 List!59200 List!59200 List!59200) Unit!150181)

(assert (=> b!5111992 (= lt!2105442 (lemmaSamePrefixThenSameSuffix!2608 testedP!265 lt!2105440 testedP!265 lt!2105443 input!5745))))

(declare-fun b!5111993 () Bool)

(declare-fun res!2176007 () Bool)

(assert (=> b!5111993 (=> (not res!2176007) (not e!3188303))))

(declare-fun matchZipper!825 ((InoxSet Context!7082) List!59200) Bool)

(assert (=> b!5111993 (= res!2176007 (matchZipper!825 baseZ!46 knownP!20))))

(declare-fun b!5111994 () Bool)

(declare-fun res!2176012 () Bool)

(assert (=> b!5111994 (=> res!2176012 e!3188305)))

(assert (=> b!5111994 (= res!2176012 (not (= (++!12982 testedP!265 lt!2105443) input!5745)))))

(declare-fun b!5111995 () Bool)

(assert (=> b!5111995 (= e!3188305 e!3188302)))

(declare-fun res!2176002 () Bool)

(assert (=> b!5111995 (=> res!2176002 e!3188302)))

(declare-fun lt!2105432 () List!59200)

(assert (=> b!5111995 (= res!2176002 (not (= lt!2105432 input!5745)))))

(assert (=> b!5111995 (= lt!2105431 lt!2105432)))

(assert (=> b!5111995 (= lt!2105432 (++!12982 testedP!265 lt!2105440))))

(assert (=> b!5111995 (= lt!2105440 (++!12982 lt!2105435 lt!2105433))))

(declare-fun lt!2105446 () Unit!150181)

(declare-fun lemmaConcatAssociativity!2740 (List!59200 List!59200 List!59200) Unit!150181)

(assert (=> b!5111995 (= lt!2105446 (lemmaConcatAssociativity!2740 testedP!265 lt!2105435 lt!2105433))))

(declare-fun b!5111996 () Bool)

(declare-fun res!2176004 () Bool)

(assert (=> b!5111996 (=> (not res!2176004) (not e!3188299))))

(assert (=> b!5111996 (= res!2176004 (isPrefix!5562 knownP!20 input!5745))))

(declare-fun b!5111997 () Bool)

(assert (=> b!5111997 (= e!3188303 (not e!3188296))))

(declare-fun res!2176006 () Bool)

(assert (=> b!5111997 (=> res!2176006 e!3188296)))

(assert (=> b!5111997 (= res!2176006 (not (matchZipper!825 z!4463 lt!2105435)))))

(assert (=> b!5111997 (= lt!2105435 (getSuffix!3236 knownP!20 testedP!265))))

(assert (=> b!5111997 (isPrefix!5562 testedP!265 knownP!20)))

(declare-fun lt!2105438 () Unit!150181)

(assert (=> b!5111997 (= lt!2105438 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!699 knownP!20 testedP!265 input!5745))))

(declare-fun b!5111998 () Bool)

(declare-fun tp!1426389 () Bool)

(assert (=> b!5111998 (= e!3188300 (and tp_is_empty!37587 tp!1426389))))

(declare-fun b!5111999 () Bool)

(declare-fun tp!1426386 () Bool)

(assert (=> b!5111999 (= e!3188304 tp!1426386)))

(declare-fun b!5112000 () Bool)

(declare-fun tp!1426387 () Bool)

(assert (=> b!5112000 (= e!3188297 (and tp_is_empty!37587 tp!1426387))))

(declare-fun b!5112001 () Bool)

(declare-fun tp!1426383 () Bool)

(assert (=> b!5112001 (= e!3188298 tp!1426383)))

(assert (= (and start!539160 res!2176005) b!5111996))

(assert (= (and b!5111996 res!2176004) b!5111988))

(assert (= (and b!5111988 res!2176008) b!5111993))

(assert (= (and b!5111993 res!2176007) b!5111997))

(assert (= (and b!5111997 (not res!2176006)) b!5111984))

(assert (= (and b!5111984 (not res!2176010)) b!5111985))

(assert (= (and b!5111985 (not res!2176001)) b!5111991))

(assert (= (and b!5111991 (not res!2176011)) b!5111987))

(assert (= (and b!5111987 (not res!2176009)) b!5111989))

(assert (= (and b!5111989 (not res!2176003)) b!5111990))

(assert (= (and b!5111990 (not res!2176000)) b!5111994))

(assert (= (and b!5111994 (not res!2176012)) b!5111995))

(assert (= (and b!5111995 (not res!2176002)) b!5111992))

(get-info :version)

(assert (= (and start!539160 ((_ is Cons!59076) input!5745)) b!5111986))

(assert (= (and start!539160 condSetEmpty!29842) setIsEmpty!29841))

(assert (= (and start!539160 (not condSetEmpty!29842)) setNonEmpty!29842))

(assert (= setNonEmpty!29842 b!5112001))

(assert (= (and start!539160 ((_ is Cons!59076) testedP!265)) b!5111998))

(assert (= (and start!539160 condSetEmpty!29841) setIsEmpty!29842))

(assert (= (and start!539160 (not condSetEmpty!29841)) setNonEmpty!29841))

(assert (= setNonEmpty!29841 b!5111999))

(assert (= (and start!539160 ((_ is Cons!59076) knownP!20)) b!5112000))

(declare-fun m!6169582 () Bool)

(assert (=> b!5111989 m!6169582))

(declare-fun m!6169584 () Bool)

(assert (=> b!5111989 m!6169584))

(declare-fun m!6169586 () Bool)

(assert (=> b!5111989 m!6169586))

(declare-fun m!6169588 () Bool)

(assert (=> b!5111989 m!6169588))

(declare-fun m!6169590 () Bool)

(assert (=> b!5111989 m!6169590))

(declare-fun m!6169592 () Bool)

(assert (=> b!5111989 m!6169592))

(declare-fun m!6169594 () Bool)

(assert (=> b!5111989 m!6169594))

(declare-fun m!6169596 () Bool)

(assert (=> b!5111989 m!6169596))

(declare-fun m!6169598 () Bool)

(assert (=> b!5111989 m!6169598))

(declare-fun m!6169600 () Bool)

(assert (=> b!5111989 m!6169600))

(declare-fun m!6169602 () Bool)

(assert (=> b!5111989 m!6169602))

(declare-fun m!6169604 () Bool)

(assert (=> b!5111989 m!6169604))

(declare-fun m!6169606 () Bool)

(assert (=> b!5111989 m!6169606))

(declare-fun m!6169608 () Bool)

(assert (=> setNonEmpty!29841 m!6169608))

(declare-fun m!6169610 () Bool)

(assert (=> b!5111994 m!6169610))

(declare-fun m!6169612 () Bool)

(assert (=> b!5111988 m!6169612))

(declare-fun m!6169614 () Bool)

(assert (=> b!5111988 m!6169614))

(declare-fun m!6169616 () Bool)

(assert (=> b!5111996 m!6169616))

(declare-fun m!6169618 () Bool)

(assert (=> b!5111987 m!6169618))

(declare-fun m!6169620 () Bool)

(assert (=> b!5111995 m!6169620))

(declare-fun m!6169622 () Bool)

(assert (=> b!5111995 m!6169622))

(declare-fun m!6169624 () Bool)

(assert (=> b!5111995 m!6169624))

(declare-fun m!6169626 () Bool)

(assert (=> b!5111997 m!6169626))

(declare-fun m!6169628 () Bool)

(assert (=> b!5111997 m!6169628))

(declare-fun m!6169630 () Bool)

(assert (=> b!5111997 m!6169630))

(declare-fun m!6169632 () Bool)

(assert (=> b!5111997 m!6169632))

(declare-fun m!6169634 () Bool)

(assert (=> setNonEmpty!29842 m!6169634))

(declare-fun m!6169636 () Bool)

(assert (=> b!5111993 m!6169636))

(declare-fun m!6169638 () Bool)

(assert (=> b!5111985 m!6169638))

(declare-fun m!6169640 () Bool)

(assert (=> start!539160 m!6169640))

(declare-fun m!6169642 () Bool)

(assert (=> b!5111992 m!6169642))

(declare-fun m!6169644 () Bool)

(assert (=> b!5111990 m!6169644))

(assert (=> b!5111990 m!6169644))

(declare-fun m!6169646 () Bool)

(assert (=> b!5111990 m!6169646))

(declare-fun m!6169648 () Bool)

(assert (=> b!5111984 m!6169648))

(check-sat (not b!5111988) (not b!5111996) (not b!5112000) (not b!5111984) (not setNonEmpty!29842) (not setNonEmpty!29841) (not b!5111993) (not b!5111992) (not b!5111998) (not b!5111999) (not start!539160) tp_is_empty!37587 (not b!5111987) (not b!5111994) (not b!5111990) (not b!5111985) (not b!5111986) (not b!5111995) (not b!5111997) (not b!5112001) (not b!5111989))
(check-sat)
(get-model)

(declare-fun b!5112028 () Bool)

(declare-fun res!2176026 () Bool)

(declare-fun e!3188319 () Bool)

(assert (=> b!5112028 (=> (not res!2176026) (not e!3188319))))

(declare-fun lt!2105453 () List!59200)

(assert (=> b!5112028 (= res!2176026 (= (size!39463 lt!2105453) (+ (size!39463 testedP!265) (size!39463 lt!2105440))))))

(declare-fun b!5112029 () Bool)

(assert (=> b!5112029 (= e!3188319 (or (not (= lt!2105440 Nil!59076)) (= lt!2105453 testedP!265)))))

(declare-fun b!5112026 () Bool)

(declare-fun e!3188318 () List!59200)

(assert (=> b!5112026 (= e!3188318 lt!2105440)))

(declare-fun b!5112027 () Bool)

(assert (=> b!5112027 (= e!3188318 (Cons!59076 (h!65524 testedP!265) (++!12982 (t!372201 testedP!265) lt!2105440)))))

(declare-fun d!1652012 () Bool)

(assert (=> d!1652012 e!3188319))

(declare-fun res!2176025 () Bool)

(assert (=> d!1652012 (=> (not res!2176025) (not e!3188319))))

(declare-fun content!10496 (List!59200) (InoxSet C!28580))

(assert (=> d!1652012 (= res!2176025 (= (content!10496 lt!2105453) ((_ map or) (content!10496 testedP!265) (content!10496 lt!2105440))))))

(assert (=> d!1652012 (= lt!2105453 e!3188318)))

(declare-fun c!878222 () Bool)

(assert (=> d!1652012 (= c!878222 ((_ is Nil!59076) testedP!265))))

(assert (=> d!1652012 (= (++!12982 testedP!265 lt!2105440) lt!2105453)))

(assert (= (and d!1652012 c!878222) b!5112026))

(assert (= (and d!1652012 (not c!878222)) b!5112027))

(assert (= (and d!1652012 res!2176025) b!5112028))

(assert (= (and b!5112028 res!2176026) b!5112029))

(declare-fun m!6169668 () Bool)

(assert (=> b!5112028 m!6169668))

(assert (=> b!5112028 m!6169612))

(declare-fun m!6169674 () Bool)

(assert (=> b!5112028 m!6169674))

(declare-fun m!6169678 () Bool)

(assert (=> b!5112027 m!6169678))

(declare-fun m!6169682 () Bool)

(assert (=> d!1652012 m!6169682))

(declare-fun m!6169684 () Bool)

(assert (=> d!1652012 m!6169684))

(declare-fun m!6169686 () Bool)

(assert (=> d!1652012 m!6169686))

(assert (=> b!5111995 d!1652012))

(declare-fun b!5112032 () Bool)

(declare-fun res!2176028 () Bool)

(declare-fun e!3188321 () Bool)

(assert (=> b!5112032 (=> (not res!2176028) (not e!3188321))))

(declare-fun lt!2105454 () List!59200)

(assert (=> b!5112032 (= res!2176028 (= (size!39463 lt!2105454) (+ (size!39463 lt!2105435) (size!39463 lt!2105433))))))

(declare-fun b!5112033 () Bool)

(assert (=> b!5112033 (= e!3188321 (or (not (= lt!2105433 Nil!59076)) (= lt!2105454 lt!2105435)))))

(declare-fun b!5112030 () Bool)

(declare-fun e!3188320 () List!59200)

(assert (=> b!5112030 (= e!3188320 lt!2105433)))

(declare-fun b!5112031 () Bool)

(assert (=> b!5112031 (= e!3188320 (Cons!59076 (h!65524 lt!2105435) (++!12982 (t!372201 lt!2105435) lt!2105433)))))

(declare-fun d!1652018 () Bool)

(assert (=> d!1652018 e!3188321))

(declare-fun res!2176027 () Bool)

(assert (=> d!1652018 (=> (not res!2176027) (not e!3188321))))

(assert (=> d!1652018 (= res!2176027 (= (content!10496 lt!2105454) ((_ map or) (content!10496 lt!2105435) (content!10496 lt!2105433))))))

(assert (=> d!1652018 (= lt!2105454 e!3188320)))

(declare-fun c!878223 () Bool)

(assert (=> d!1652018 (= c!878223 ((_ is Nil!59076) lt!2105435))))

(assert (=> d!1652018 (= (++!12982 lt!2105435 lt!2105433) lt!2105454)))

(assert (= (and d!1652018 c!878223) b!5112030))

(assert (= (and d!1652018 (not c!878223)) b!5112031))

(assert (= (and d!1652018 res!2176027) b!5112032))

(assert (= (and b!5112032 res!2176028) b!5112033))

(declare-fun m!6169688 () Bool)

(assert (=> b!5112032 m!6169688))

(declare-fun m!6169690 () Bool)

(assert (=> b!5112032 m!6169690))

(declare-fun m!6169692 () Bool)

(assert (=> b!5112032 m!6169692))

(declare-fun m!6169694 () Bool)

(assert (=> b!5112031 m!6169694))

(declare-fun m!6169696 () Bool)

(assert (=> d!1652018 m!6169696))

(declare-fun m!6169698 () Bool)

(assert (=> d!1652018 m!6169698))

(declare-fun m!6169700 () Bool)

(assert (=> d!1652018 m!6169700))

(assert (=> b!5111995 d!1652018))

(declare-fun d!1652020 () Bool)

(assert (=> d!1652020 (= (++!12982 (++!12982 testedP!265 lt!2105435) lt!2105433) (++!12982 testedP!265 (++!12982 lt!2105435 lt!2105433)))))

(declare-fun lt!2105459 () Unit!150181)

(declare-fun choose!37477 (List!59200 List!59200 List!59200) Unit!150181)

(assert (=> d!1652020 (= lt!2105459 (choose!37477 testedP!265 lt!2105435 lt!2105433))))

(assert (=> d!1652020 (= (lemmaConcatAssociativity!2740 testedP!265 lt!2105435 lt!2105433) lt!2105459)))

(declare-fun bs!1192098 () Bool)

(assert (= bs!1192098 d!1652020))

(assert (=> bs!1192098 m!6169644))

(assert (=> bs!1192098 m!6169646))

(assert (=> bs!1192098 m!6169644))

(declare-fun m!6169702 () Bool)

(assert (=> bs!1192098 m!6169702))

(assert (=> bs!1192098 m!6169622))

(declare-fun m!6169704 () Bool)

(assert (=> bs!1192098 m!6169704))

(assert (=> bs!1192098 m!6169622))

(assert (=> b!5111995 d!1652020))

(declare-fun d!1652022 () Bool)

(declare-fun lt!2105463 () Int)

(assert (=> d!1652022 (>= lt!2105463 0)))

(declare-fun e!3188324 () Int)

(assert (=> d!1652022 (= lt!2105463 e!3188324)))

(declare-fun c!878226 () Bool)

(assert (=> d!1652022 (= c!878226 ((_ is Nil!59076) input!5745))))

(assert (=> d!1652022 (= (size!39463 input!5745) lt!2105463)))

(declare-fun b!5112038 () Bool)

(assert (=> b!5112038 (= e!3188324 0)))

(declare-fun b!5112039 () Bool)

(assert (=> b!5112039 (= e!3188324 (+ 1 (size!39463 (t!372201 input!5745))))))

(assert (= (and d!1652022 c!878226) b!5112038))

(assert (= (and d!1652022 (not c!878226)) b!5112039))

(declare-fun m!6169710 () Bool)

(assert (=> b!5112039 m!6169710))

(assert (=> b!5111987 d!1652022))

(declare-fun bs!1192101 () Bool)

(declare-fun b!5112084 () Bool)

(declare-fun d!1652026 () Bool)

(assert (= bs!1192101 (and b!5112084 d!1652026)))

(declare-fun lambda!250452 () Int)

(declare-fun lambda!250451 () Int)

(assert (=> bs!1192101 (not (= lambda!250452 lambda!250451))))

(declare-fun bs!1192102 () Bool)

(declare-fun b!5112085 () Bool)

(assert (= bs!1192102 (and b!5112085 d!1652026)))

(declare-fun lambda!250453 () Int)

(assert (=> bs!1192102 (not (= lambda!250453 lambda!250451))))

(declare-fun bs!1192103 () Bool)

(assert (= bs!1192103 (and b!5112085 b!5112084)))

(assert (=> bs!1192103 (= lambda!250453 lambda!250452)))

(declare-fun e!3188355 () Unit!150181)

(declare-fun Unit!150183 () Unit!150181)

(assert (=> b!5112085 (= e!3188355 Unit!150183)))

(declare-datatypes ((List!59201 0))(
  ( (Nil!59077) (Cons!59077 (h!65525 Context!7082) (t!372202 List!59201)) )
))
(declare-fun lt!2105492 () List!59201)

(declare-fun call!356407 () List!59201)

(assert (=> b!5112085 (= lt!2105492 call!356407)))

(declare-fun lt!2105496 () Unit!150181)

(declare-fun lemmaForallThenNotExists!286 (List!59201 Int) Unit!150181)

(assert (=> b!5112085 (= lt!2105496 (lemmaForallThenNotExists!286 lt!2105492 lambda!250451))))

(declare-fun call!356406 () Bool)

(assert (=> b!5112085 (not call!356406)))

(declare-fun lt!2105493 () Unit!150181)

(assert (=> b!5112085 (= lt!2105493 lt!2105496)))

(declare-fun Unit!150184 () Unit!150181)

(assert (=> b!5112084 (= e!3188355 Unit!150184)))

(declare-fun lt!2105499 () List!59201)

(assert (=> b!5112084 (= lt!2105499 call!356407)))

(declare-fun lt!2105498 () Unit!150181)

(declare-fun lemmaNotForallThenExists!303 (List!59201 Int) Unit!150181)

(assert (=> b!5112084 (= lt!2105498 (lemmaNotForallThenExists!303 lt!2105499 lambda!250451))))

(assert (=> b!5112084 call!356406))

(declare-fun lt!2105494 () Unit!150181)

(assert (=> b!5112084 (= lt!2105494 lt!2105498)))

(declare-fun bm!356401 () Bool)

(declare-fun toList!8229 ((InoxSet Context!7082)) List!59201)

(assert (=> bm!356401 (= call!356407 (toList!8229 z!4463))))

(declare-fun c!878250 () Bool)

(declare-fun bm!356402 () Bool)

(declare-fun exists!1440 (List!59201 Int) Bool)

(assert (=> bm!356402 (= call!356406 (exists!1440 (ite c!878250 lt!2105499 lt!2105492) (ite c!878250 lambda!250452 lambda!250453)))))

(declare-fun lt!2105497 () Bool)

(declare-datatypes ((Option!14663 0))(
  ( (None!14662) (Some!14662 (v!50675 List!59200)) )
))
(declare-fun isEmpty!31866 (Option!14663) Bool)

(declare-fun getLanguageWitness!780 ((InoxSet Context!7082)) Option!14663)

(assert (=> d!1652026 (= lt!2105497 (isEmpty!31866 (getLanguageWitness!780 z!4463)))))

(declare-fun forall!13541 ((InoxSet Context!7082) Int) Bool)

(assert (=> d!1652026 (= lt!2105497 (forall!13541 z!4463 lambda!250451))))

(declare-fun lt!2105495 () Unit!150181)

(assert (=> d!1652026 (= lt!2105495 e!3188355)))

(assert (=> d!1652026 (= c!878250 (not (forall!13541 z!4463 lambda!250451)))))

(assert (=> d!1652026 (= (lostCauseZipper!1043 z!4463) lt!2105497)))

(assert (= (and d!1652026 c!878250) b!5112084))

(assert (= (and d!1652026 (not c!878250)) b!5112085))

(assert (= (or b!5112084 b!5112085) bm!356401))

(assert (= (or b!5112084 b!5112085) bm!356402))

(declare-fun m!6169764 () Bool)

(assert (=> bm!356401 m!6169764))

(declare-fun m!6169766 () Bool)

(assert (=> d!1652026 m!6169766))

(assert (=> d!1652026 m!6169766))

(declare-fun m!6169768 () Bool)

(assert (=> d!1652026 m!6169768))

(declare-fun m!6169770 () Bool)

(assert (=> d!1652026 m!6169770))

(assert (=> d!1652026 m!6169770))

(declare-fun m!6169772 () Bool)

(assert (=> b!5112085 m!6169772))

(declare-fun m!6169774 () Bool)

(assert (=> bm!356402 m!6169774))

(declare-fun m!6169776 () Bool)

(assert (=> b!5112084 m!6169776))

(assert (=> b!5111985 d!1652026))

(declare-fun b!5112088 () Bool)

(declare-fun res!2176048 () Bool)

(declare-fun e!3188357 () Bool)

(assert (=> b!5112088 (=> (not res!2176048) (not e!3188357))))

(declare-fun lt!2105500 () List!59200)

(assert (=> b!5112088 (= res!2176048 (= (size!39463 lt!2105500) (+ (size!39463 testedP!265) (size!39463 lt!2105443))))))

(declare-fun b!5112089 () Bool)

(assert (=> b!5112089 (= e!3188357 (or (not (= lt!2105443 Nil!59076)) (= lt!2105500 testedP!265)))))

(declare-fun b!5112086 () Bool)

(declare-fun e!3188356 () List!59200)

(assert (=> b!5112086 (= e!3188356 lt!2105443)))

(declare-fun b!5112087 () Bool)

(assert (=> b!5112087 (= e!3188356 (Cons!59076 (h!65524 testedP!265) (++!12982 (t!372201 testedP!265) lt!2105443)))))

(declare-fun d!1652046 () Bool)

(assert (=> d!1652046 e!3188357))

(declare-fun res!2176047 () Bool)

(assert (=> d!1652046 (=> (not res!2176047) (not e!3188357))))

(assert (=> d!1652046 (= res!2176047 (= (content!10496 lt!2105500) ((_ map or) (content!10496 testedP!265) (content!10496 lt!2105443))))))

(assert (=> d!1652046 (= lt!2105500 e!3188356)))

(declare-fun c!878251 () Bool)

(assert (=> d!1652046 (= c!878251 ((_ is Nil!59076) testedP!265))))

(assert (=> d!1652046 (= (++!12982 testedP!265 lt!2105443) lt!2105500)))

(assert (= (and d!1652046 c!878251) b!5112086))

(assert (= (and d!1652046 (not c!878251)) b!5112087))

(assert (= (and d!1652046 res!2176047) b!5112088))

(assert (= (and b!5112088 res!2176048) b!5112089))

(declare-fun m!6169778 () Bool)

(assert (=> b!5112088 m!6169778))

(assert (=> b!5112088 m!6169612))

(declare-fun m!6169780 () Bool)

(assert (=> b!5112088 m!6169780))

(declare-fun m!6169782 () Bool)

(assert (=> b!5112087 m!6169782))

(declare-fun m!6169784 () Bool)

(assert (=> d!1652046 m!6169784))

(assert (=> d!1652046 m!6169684))

(declare-fun m!6169786 () Bool)

(assert (=> d!1652046 m!6169786))

(assert (=> b!5111994 d!1652046))

(declare-fun d!1652048 () Bool)

(declare-fun e!3188365 () Bool)

(assert (=> d!1652048 e!3188365))

(declare-fun res!2176060 () Bool)

(assert (=> d!1652048 (=> res!2176060 e!3188365)))

(declare-fun lt!2105503 () Bool)

(assert (=> d!1652048 (= res!2176060 (not lt!2105503))))

(declare-fun e!3188366 () Bool)

(assert (=> d!1652048 (= lt!2105503 e!3188366)))

(declare-fun res!2176057 () Bool)

(assert (=> d!1652048 (=> res!2176057 e!3188366)))

(assert (=> d!1652048 (= res!2176057 ((_ is Nil!59076) lt!2105436))))

(assert (=> d!1652048 (= (isPrefix!5562 lt!2105436 input!5745) lt!2105503)))

(declare-fun b!5112098 () Bool)

(declare-fun e!3188364 () Bool)

(assert (=> b!5112098 (= e!3188366 e!3188364)))

(declare-fun res!2176059 () Bool)

(assert (=> b!5112098 (=> (not res!2176059) (not e!3188364))))

(assert (=> b!5112098 (= res!2176059 (not ((_ is Nil!59076) input!5745)))))

(declare-fun b!5112100 () Bool)

(declare-fun tail!10025 (List!59200) List!59200)

(assert (=> b!5112100 (= e!3188364 (isPrefix!5562 (tail!10025 lt!2105436) (tail!10025 input!5745)))))

(declare-fun b!5112099 () Bool)

(declare-fun res!2176058 () Bool)

(assert (=> b!5112099 (=> (not res!2176058) (not e!3188364))))

(assert (=> b!5112099 (= res!2176058 (= (head!10885 lt!2105436) (head!10885 input!5745)))))

(declare-fun b!5112101 () Bool)

(assert (=> b!5112101 (= e!3188365 (>= (size!39463 input!5745) (size!39463 lt!2105436)))))

(assert (= (and d!1652048 (not res!2176057)) b!5112098))

(assert (= (and b!5112098 res!2176059) b!5112099))

(assert (= (and b!5112099 res!2176058) b!5112100))

(assert (= (and d!1652048 (not res!2176060)) b!5112101))

(declare-fun m!6169788 () Bool)

(assert (=> b!5112100 m!6169788))

(declare-fun m!6169790 () Bool)

(assert (=> b!5112100 m!6169790))

(assert (=> b!5112100 m!6169788))

(assert (=> b!5112100 m!6169790))

(declare-fun m!6169792 () Bool)

(assert (=> b!5112100 m!6169792))

(declare-fun m!6169794 () Bool)

(assert (=> b!5112099 m!6169794))

(declare-fun m!6169796 () Bool)

(assert (=> b!5112099 m!6169796))

(assert (=> b!5112101 m!6169618))

(declare-fun m!6169798 () Bool)

(assert (=> b!5112101 m!6169798))

(assert (=> b!5111989 d!1652048))

(declare-fun b!5112104 () Bool)

(declare-fun res!2176062 () Bool)

(declare-fun e!3188368 () Bool)

(assert (=> b!5112104 (=> (not res!2176062) (not e!3188368))))

(declare-fun lt!2105504 () List!59200)

(assert (=> b!5112104 (= res!2176062 (= (size!39463 lt!2105504) (+ (size!39463 testedP!265) (size!39463 (Cons!59076 lt!2105444 Nil!59076)))))))

(declare-fun b!5112105 () Bool)

(assert (=> b!5112105 (= e!3188368 (or (not (= (Cons!59076 lt!2105444 Nil!59076) Nil!59076)) (= lt!2105504 testedP!265)))))

(declare-fun b!5112102 () Bool)

(declare-fun e!3188367 () List!59200)

(assert (=> b!5112102 (= e!3188367 (Cons!59076 lt!2105444 Nil!59076))))

(declare-fun b!5112103 () Bool)

(assert (=> b!5112103 (= e!3188367 (Cons!59076 (h!65524 testedP!265) (++!12982 (t!372201 testedP!265) (Cons!59076 lt!2105444 Nil!59076))))))

(declare-fun d!1652050 () Bool)

(assert (=> d!1652050 e!3188368))

(declare-fun res!2176061 () Bool)

(assert (=> d!1652050 (=> (not res!2176061) (not e!3188368))))

(assert (=> d!1652050 (= res!2176061 (= (content!10496 lt!2105504) ((_ map or) (content!10496 testedP!265) (content!10496 (Cons!59076 lt!2105444 Nil!59076)))))))

(assert (=> d!1652050 (= lt!2105504 e!3188367)))

(declare-fun c!878252 () Bool)

(assert (=> d!1652050 (= c!878252 ((_ is Nil!59076) testedP!265))))

(assert (=> d!1652050 (= (++!12982 testedP!265 (Cons!59076 lt!2105444 Nil!59076)) lt!2105504)))

(assert (= (and d!1652050 c!878252) b!5112102))

(assert (= (and d!1652050 (not c!878252)) b!5112103))

(assert (= (and d!1652050 res!2176061) b!5112104))

(assert (= (and b!5112104 res!2176062) b!5112105))

(declare-fun m!6169800 () Bool)

(assert (=> b!5112104 m!6169800))

(assert (=> b!5112104 m!6169612))

(declare-fun m!6169802 () Bool)

(assert (=> b!5112104 m!6169802))

(declare-fun m!6169804 () Bool)

(assert (=> b!5112103 m!6169804))

(declare-fun m!6169806 () Bool)

(assert (=> d!1652050 m!6169806))

(assert (=> d!1652050 m!6169684))

(declare-fun m!6169808 () Bool)

(assert (=> d!1652050 m!6169808))

(assert (=> b!5111989 d!1652050))

(declare-fun d!1652052 () Bool)

(assert (=> d!1652052 true))

(declare-fun lambda!250456 () Int)

(declare-fun flatMap!327 ((InoxSet Context!7082) Int) (InoxSet Context!7082))

(assert (=> d!1652052 (= (derivationStepZipper!792 z!4463 lt!2105444) (flatMap!327 z!4463 lambda!250456))))

(declare-fun bs!1192104 () Bool)

(assert (= bs!1192104 d!1652052))

(declare-fun m!6169810 () Bool)

(assert (=> bs!1192104 m!6169810))

(assert (=> b!5111989 d!1652052))

(declare-fun d!1652054 () Bool)

(assert (=> d!1652054 (isPrefix!5562 lt!2105436 knownP!20)))

(declare-fun lt!2105507 () Unit!150181)

(declare-fun choose!37479 (List!59200 List!59200 List!59200) Unit!150181)

(assert (=> d!1652054 (= lt!2105507 (choose!37479 knownP!20 lt!2105436 input!5745))))

(assert (=> d!1652054 (isPrefix!5562 knownP!20 input!5745)))

(assert (=> d!1652054 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!699 knownP!20 lt!2105436 input!5745) lt!2105507)))

(declare-fun bs!1192105 () Bool)

(assert (= bs!1192105 d!1652054))

(assert (=> bs!1192105 m!6169586))

(declare-fun m!6169812 () Bool)

(assert (=> bs!1192105 m!6169812))

(assert (=> bs!1192105 m!6169616))

(assert (=> b!5111989 d!1652054))

(declare-fun d!1652056 () Bool)

(assert (=> d!1652056 (= (head!10885 lt!2105443) (h!65524 lt!2105443))))

(assert (=> b!5111989 d!1652056))

(declare-fun d!1652058 () Bool)

(assert (=> d!1652058 (= (derivationZipper!56 baseZ!46 (++!12982 testedP!265 (Cons!59076 lt!2105444 Nil!59076))) (derivationStepZipper!792 z!4463 lt!2105444))))

(declare-fun lt!2105510 () Unit!150181)

(declare-fun choose!37480 ((InoxSet Context!7082) (InoxSet Context!7082) List!59200 C!28580) Unit!150181)

(assert (=> d!1652058 (= lt!2105510 (choose!37480 baseZ!46 z!4463 testedP!265 lt!2105444))))

(assert (=> d!1652058 (= (derivationZipper!56 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1652058 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!17 baseZ!46 z!4463 testedP!265 lt!2105444) lt!2105510)))

(declare-fun bs!1192106 () Bool)

(assert (= bs!1192106 d!1652058))

(assert (=> bs!1192106 m!6169648))

(assert (=> bs!1192106 m!6169606))

(declare-fun m!6169814 () Bool)

(assert (=> bs!1192106 m!6169814))

(assert (=> bs!1192106 m!6169590))

(declare-fun m!6169816 () Bool)

(assert (=> bs!1192106 m!6169816))

(assert (=> bs!1192106 m!6169590))

(assert (=> b!5111989 d!1652058))

(declare-fun d!1652060 () Bool)

(declare-fun c!878258 () Bool)

(assert (=> d!1652060 (= c!878258 ((_ is Cons!59076) lt!2105436))))

(declare-fun e!3188371 () (InoxSet Context!7082))

(assert (=> d!1652060 (= (derivationZipper!56 baseZ!46 lt!2105436) e!3188371)))

(declare-fun b!5112112 () Bool)

(assert (=> b!5112112 (= e!3188371 (derivationZipper!56 (derivationStepZipper!792 baseZ!46 (h!65524 lt!2105436)) (t!372201 lt!2105436)))))

(declare-fun b!5112113 () Bool)

(assert (=> b!5112113 (= e!3188371 baseZ!46)))

(assert (= (and d!1652060 c!878258) b!5112112))

(assert (= (and d!1652060 (not c!878258)) b!5112113))

(declare-fun m!6169818 () Bool)

(assert (=> b!5112112 m!6169818))

(assert (=> b!5112112 m!6169818))

(declare-fun m!6169820 () Bool)

(assert (=> b!5112112 m!6169820))

(assert (=> b!5111989 d!1652060))

(declare-fun d!1652062 () Bool)

(declare-fun lt!2105513 () List!59200)

(assert (=> d!1652062 (= (++!12982 knownP!20 lt!2105513) input!5745)))

(declare-fun e!3188374 () List!59200)

(assert (=> d!1652062 (= lt!2105513 e!3188374)))

(declare-fun c!878261 () Bool)

(assert (=> d!1652062 (= c!878261 ((_ is Cons!59076) knownP!20))))

(assert (=> d!1652062 (>= (size!39463 input!5745) (size!39463 knownP!20))))

(assert (=> d!1652062 (= (getSuffix!3236 input!5745 knownP!20) lt!2105513)))

(declare-fun b!5112118 () Bool)

(assert (=> b!5112118 (= e!3188374 (getSuffix!3236 (tail!10025 input!5745) (t!372201 knownP!20)))))

(declare-fun b!5112119 () Bool)

(assert (=> b!5112119 (= e!3188374 input!5745)))

(assert (= (and d!1652062 c!878261) b!5112118))

(assert (= (and d!1652062 (not c!878261)) b!5112119))

(declare-fun m!6169822 () Bool)

(assert (=> d!1652062 m!6169822))

(assert (=> d!1652062 m!6169618))

(assert (=> d!1652062 m!6169614))

(assert (=> b!5112118 m!6169790))

(assert (=> b!5112118 m!6169790))

(declare-fun m!6169824 () Bool)

(assert (=> b!5112118 m!6169824))

(assert (=> b!5111989 d!1652062))

(declare-fun b!5112122 () Bool)

(declare-fun res!2176064 () Bool)

(declare-fun e!3188376 () Bool)

(assert (=> b!5112122 (=> (not res!2176064) (not e!3188376))))

(declare-fun lt!2105514 () List!59200)

(assert (=> b!5112122 (= res!2176064 (= (size!39463 lt!2105514) (+ (size!39463 knownP!20) (size!39463 lt!2105433))))))

(declare-fun b!5112123 () Bool)

(assert (=> b!5112123 (= e!3188376 (or (not (= lt!2105433 Nil!59076)) (= lt!2105514 knownP!20)))))

(declare-fun b!5112120 () Bool)

(declare-fun e!3188375 () List!59200)

(assert (=> b!5112120 (= e!3188375 lt!2105433)))

(declare-fun b!5112121 () Bool)

(assert (=> b!5112121 (= e!3188375 (Cons!59076 (h!65524 knownP!20) (++!12982 (t!372201 knownP!20) lt!2105433)))))

(declare-fun d!1652064 () Bool)

(assert (=> d!1652064 e!3188376))

(declare-fun res!2176063 () Bool)

(assert (=> d!1652064 (=> (not res!2176063) (not e!3188376))))

(assert (=> d!1652064 (= res!2176063 (= (content!10496 lt!2105514) ((_ map or) (content!10496 knownP!20) (content!10496 lt!2105433))))))

(assert (=> d!1652064 (= lt!2105514 e!3188375)))

(declare-fun c!878262 () Bool)

(assert (=> d!1652064 (= c!878262 ((_ is Nil!59076) knownP!20))))

(assert (=> d!1652064 (= (++!12982 knownP!20 lt!2105433) lt!2105514)))

(assert (= (and d!1652064 c!878262) b!5112120))

(assert (= (and d!1652064 (not c!878262)) b!5112121))

(assert (= (and d!1652064 res!2176063) b!5112122))

(assert (= (and b!5112122 res!2176064) b!5112123))

(declare-fun m!6169826 () Bool)

(assert (=> b!5112122 m!6169826))

(assert (=> b!5112122 m!6169614))

(assert (=> b!5112122 m!6169692))

(declare-fun m!6169828 () Bool)

(assert (=> b!5112121 m!6169828))

(declare-fun m!6169830 () Bool)

(assert (=> d!1652064 m!6169830))

(declare-fun m!6169832 () Bool)

(assert (=> d!1652064 m!6169832))

(assert (=> d!1652064 m!6169700))

(assert (=> b!5111989 d!1652064))

(declare-fun d!1652066 () Bool)

(declare-fun e!3188378 () Bool)

(assert (=> d!1652066 e!3188378))

(declare-fun res!2176068 () Bool)

(assert (=> d!1652066 (=> res!2176068 e!3188378)))

(declare-fun lt!2105515 () Bool)

(assert (=> d!1652066 (= res!2176068 (not lt!2105515))))

(declare-fun e!3188379 () Bool)

(assert (=> d!1652066 (= lt!2105515 e!3188379)))

(declare-fun res!2176065 () Bool)

(assert (=> d!1652066 (=> res!2176065 e!3188379)))

(assert (=> d!1652066 (= res!2176065 ((_ is Nil!59076) lt!2105436))))

(assert (=> d!1652066 (= (isPrefix!5562 lt!2105436 knownP!20) lt!2105515)))

(declare-fun b!5112124 () Bool)

(declare-fun e!3188377 () Bool)

(assert (=> b!5112124 (= e!3188379 e!3188377)))

(declare-fun res!2176067 () Bool)

(assert (=> b!5112124 (=> (not res!2176067) (not e!3188377))))

(assert (=> b!5112124 (= res!2176067 (not ((_ is Nil!59076) knownP!20)))))

(declare-fun b!5112126 () Bool)

(assert (=> b!5112126 (= e!3188377 (isPrefix!5562 (tail!10025 lt!2105436) (tail!10025 knownP!20)))))

(declare-fun b!5112125 () Bool)

(declare-fun res!2176066 () Bool)

(assert (=> b!5112125 (=> (not res!2176066) (not e!3188377))))

(assert (=> b!5112125 (= res!2176066 (= (head!10885 lt!2105436) (head!10885 knownP!20)))))

(declare-fun b!5112127 () Bool)

(assert (=> b!5112127 (= e!3188378 (>= (size!39463 knownP!20) (size!39463 lt!2105436)))))

(assert (= (and d!1652066 (not res!2176065)) b!5112124))

(assert (= (and b!5112124 res!2176067) b!5112125))

(assert (= (and b!5112125 res!2176066) b!5112126))

(assert (= (and d!1652066 (not res!2176068)) b!5112127))

(assert (=> b!5112126 m!6169788))

(declare-fun m!6169836 () Bool)

(assert (=> b!5112126 m!6169836))

(assert (=> b!5112126 m!6169788))

(assert (=> b!5112126 m!6169836))

(declare-fun m!6169838 () Bool)

(assert (=> b!5112126 m!6169838))

(assert (=> b!5112125 m!6169794))

(declare-fun m!6169840 () Bool)

(assert (=> b!5112125 m!6169840))

(assert (=> b!5112127 m!6169614))

(assert (=> b!5112127 m!6169798))

(assert (=> b!5111989 d!1652066))

(declare-fun d!1652070 () Bool)

(declare-fun lt!2105516 () List!59200)

(assert (=> d!1652070 (= (++!12982 testedP!265 lt!2105516) input!5745)))

(declare-fun e!3188380 () List!59200)

(assert (=> d!1652070 (= lt!2105516 e!3188380)))

(declare-fun c!878263 () Bool)

(assert (=> d!1652070 (= c!878263 ((_ is Cons!59076) testedP!265))))

(assert (=> d!1652070 (>= (size!39463 input!5745) (size!39463 testedP!265))))

(assert (=> d!1652070 (= (getSuffix!3236 input!5745 testedP!265) lt!2105516)))

(declare-fun b!5112130 () Bool)

(assert (=> b!5112130 (= e!3188380 (getSuffix!3236 (tail!10025 input!5745) (t!372201 testedP!265)))))

(declare-fun b!5112131 () Bool)

(assert (=> b!5112131 (= e!3188380 input!5745)))

(assert (= (and d!1652070 c!878263) b!5112130))

(assert (= (and d!1652070 (not c!878263)) b!5112131))

(declare-fun m!6169842 () Bool)

(assert (=> d!1652070 m!6169842))

(assert (=> d!1652070 m!6169618))

(assert (=> d!1652070 m!6169612))

(assert (=> b!5112130 m!6169790))

(assert (=> b!5112130 m!6169790))

(declare-fun m!6169844 () Bool)

(assert (=> b!5112130 m!6169844))

(assert (=> b!5111989 d!1652070))

(declare-fun d!1652072 () Bool)

(assert (=> d!1652072 (isPrefix!5562 (++!12982 testedP!265 (Cons!59076 (head!10885 (getSuffix!3236 input!5745 testedP!265)) Nil!59076)) input!5745)))

(declare-fun lt!2105521 () Unit!150181)

(declare-fun choose!37482 (List!59200 List!59200) Unit!150181)

(assert (=> d!1652072 (= lt!2105521 (choose!37482 testedP!265 input!5745))))

(assert (=> d!1652072 (isPrefix!5562 testedP!265 input!5745)))

(assert (=> d!1652072 (= (lemmaAddHeadSuffixToPrefixStillPrefix!952 testedP!265 input!5745) lt!2105521)))

(declare-fun bs!1192108 () Bool)

(assert (= bs!1192108 d!1652072))

(assert (=> bs!1192108 m!6169640))

(declare-fun m!6169846 () Bool)

(assert (=> bs!1192108 m!6169846))

(assert (=> bs!1192108 m!6169598))

(declare-fun m!6169848 () Bool)

(assert (=> bs!1192108 m!6169848))

(declare-fun m!6169850 () Bool)

(assert (=> bs!1192108 m!6169850))

(assert (=> bs!1192108 m!6169850))

(declare-fun m!6169852 () Bool)

(assert (=> bs!1192108 m!6169852))

(assert (=> bs!1192108 m!6169598))

(assert (=> b!5111989 d!1652072))

(declare-fun d!1652074 () Bool)

(declare-fun lt!2105522 () List!59200)

(assert (=> d!1652074 (= (++!12982 lt!2105436 lt!2105522) knownP!20)))

(declare-fun e!3188381 () List!59200)

(assert (=> d!1652074 (= lt!2105522 e!3188381)))

(declare-fun c!878265 () Bool)

(assert (=> d!1652074 (= c!878265 ((_ is Cons!59076) lt!2105436))))

(assert (=> d!1652074 (>= (size!39463 knownP!20) (size!39463 lt!2105436))))

(assert (=> d!1652074 (= (getSuffix!3236 knownP!20 lt!2105436) lt!2105522)))

(declare-fun b!5112132 () Bool)

(assert (=> b!5112132 (= e!3188381 (getSuffix!3236 (tail!10025 knownP!20) (t!372201 lt!2105436)))))

(declare-fun b!5112133 () Bool)

(assert (=> b!5112133 (= e!3188381 knownP!20)))

(assert (= (and d!1652074 c!878265) b!5112132))

(assert (= (and d!1652074 (not c!878265)) b!5112133))

(declare-fun m!6169854 () Bool)

(assert (=> d!1652074 m!6169854))

(assert (=> d!1652074 m!6169614))

(assert (=> d!1652074 m!6169798))

(assert (=> b!5112132 m!6169836))

(assert (=> b!5112132 m!6169836))

(declare-fun m!6169856 () Bool)

(assert (=> b!5112132 m!6169856))

(assert (=> b!5111989 d!1652074))

(declare-fun d!1652076 () Bool)

(declare-fun e!3188383 () Bool)

(assert (=> d!1652076 e!3188383))

(declare-fun res!2176072 () Bool)

(assert (=> d!1652076 (=> res!2176072 e!3188383)))

(declare-fun lt!2105524 () Bool)

(assert (=> d!1652076 (= res!2176072 (not lt!2105524))))

(declare-fun e!3188384 () Bool)

(assert (=> d!1652076 (= lt!2105524 e!3188384)))

(declare-fun res!2176069 () Bool)

(assert (=> d!1652076 (=> res!2176069 e!3188384)))

(assert (=> d!1652076 (= res!2176069 ((_ is Nil!59076) knownP!20))))

(assert (=> d!1652076 (= (isPrefix!5562 knownP!20 input!5745) lt!2105524)))

(declare-fun b!5112134 () Bool)

(declare-fun e!3188382 () Bool)

(assert (=> b!5112134 (= e!3188384 e!3188382)))

(declare-fun res!2176071 () Bool)

(assert (=> b!5112134 (=> (not res!2176071) (not e!3188382))))

(assert (=> b!5112134 (= res!2176071 (not ((_ is Nil!59076) input!5745)))))

(declare-fun b!5112136 () Bool)

(assert (=> b!5112136 (= e!3188382 (isPrefix!5562 (tail!10025 knownP!20) (tail!10025 input!5745)))))

(declare-fun b!5112135 () Bool)

(declare-fun res!2176070 () Bool)

(assert (=> b!5112135 (=> (not res!2176070) (not e!3188382))))

(assert (=> b!5112135 (= res!2176070 (= (head!10885 knownP!20) (head!10885 input!5745)))))

(declare-fun b!5112137 () Bool)

(assert (=> b!5112137 (= e!3188383 (>= (size!39463 input!5745) (size!39463 knownP!20)))))

(assert (= (and d!1652076 (not res!2176069)) b!5112134))

(assert (= (and b!5112134 res!2176071) b!5112135))

(assert (= (and b!5112135 res!2176070) b!5112136))

(assert (= (and d!1652076 (not res!2176072)) b!5112137))

(assert (=> b!5112136 m!6169836))

(assert (=> b!5112136 m!6169790))

(assert (=> b!5112136 m!6169836))

(assert (=> b!5112136 m!6169790))

(declare-fun m!6169862 () Bool)

(assert (=> b!5112136 m!6169862))

(assert (=> b!5112135 m!6169840))

(assert (=> b!5112135 m!6169796))

(assert (=> b!5112137 m!6169618))

(assert (=> b!5112137 m!6169614))

(assert (=> b!5111996 d!1652076))

(declare-fun d!1652080 () Bool)

(declare-fun c!878270 () Bool)

(declare-fun isEmpty!31868 (List!59200) Bool)

(assert (=> d!1652080 (= c!878270 (isEmpty!31868 lt!2105435))))

(declare-fun e!3188390 () Bool)

(assert (=> d!1652080 (= (matchZipper!825 z!4463 lt!2105435) e!3188390)))

(declare-fun b!5112148 () Bool)

(declare-fun nullableZipper!994 ((InoxSet Context!7082)) Bool)

(assert (=> b!5112148 (= e!3188390 (nullableZipper!994 z!4463))))

(declare-fun b!5112149 () Bool)

(assert (=> b!5112149 (= e!3188390 (matchZipper!825 (derivationStepZipper!792 z!4463 (head!10885 lt!2105435)) (tail!10025 lt!2105435)))))

(assert (= (and d!1652080 c!878270) b!5112148))

(assert (= (and d!1652080 (not c!878270)) b!5112149))

(declare-fun m!6169878 () Bool)

(assert (=> d!1652080 m!6169878))

(declare-fun m!6169880 () Bool)

(assert (=> b!5112148 m!6169880))

(declare-fun m!6169882 () Bool)

(assert (=> b!5112149 m!6169882))

(assert (=> b!5112149 m!6169882))

(declare-fun m!6169884 () Bool)

(assert (=> b!5112149 m!6169884))

(declare-fun m!6169886 () Bool)

(assert (=> b!5112149 m!6169886))

(assert (=> b!5112149 m!6169884))

(assert (=> b!5112149 m!6169886))

(declare-fun m!6169890 () Bool)

(assert (=> b!5112149 m!6169890))

(assert (=> b!5111997 d!1652080))

(declare-fun d!1652086 () Bool)

(declare-fun lt!2105530 () List!59200)

(assert (=> d!1652086 (= (++!12982 testedP!265 lt!2105530) knownP!20)))

(declare-fun e!3188391 () List!59200)

(assert (=> d!1652086 (= lt!2105530 e!3188391)))

(declare-fun c!878271 () Bool)

(assert (=> d!1652086 (= c!878271 ((_ is Cons!59076) testedP!265))))

(assert (=> d!1652086 (>= (size!39463 knownP!20) (size!39463 testedP!265))))

(assert (=> d!1652086 (= (getSuffix!3236 knownP!20 testedP!265) lt!2105530)))

(declare-fun b!5112150 () Bool)

(assert (=> b!5112150 (= e!3188391 (getSuffix!3236 (tail!10025 knownP!20) (t!372201 testedP!265)))))

(declare-fun b!5112151 () Bool)

(assert (=> b!5112151 (= e!3188391 knownP!20)))

(assert (= (and d!1652086 c!878271) b!5112150))

(assert (= (and d!1652086 (not c!878271)) b!5112151))

(declare-fun m!6169898 () Bool)

(assert (=> d!1652086 m!6169898))

(assert (=> d!1652086 m!6169614))

(assert (=> d!1652086 m!6169612))

(assert (=> b!5112150 m!6169836))

(assert (=> b!5112150 m!6169836))

(declare-fun m!6169900 () Bool)

(assert (=> b!5112150 m!6169900))

(assert (=> b!5111997 d!1652086))

(declare-fun d!1652090 () Bool)

(declare-fun e!3188393 () Bool)

(assert (=> d!1652090 e!3188393))

(declare-fun res!2176078 () Bool)

(assert (=> d!1652090 (=> res!2176078 e!3188393)))

(declare-fun lt!2105532 () Bool)

(assert (=> d!1652090 (= res!2176078 (not lt!2105532))))

(declare-fun e!3188394 () Bool)

(assert (=> d!1652090 (= lt!2105532 e!3188394)))

(declare-fun res!2176075 () Bool)

(assert (=> d!1652090 (=> res!2176075 e!3188394)))

(assert (=> d!1652090 (= res!2176075 ((_ is Nil!59076) testedP!265))))

(assert (=> d!1652090 (= (isPrefix!5562 testedP!265 knownP!20) lt!2105532)))

(declare-fun b!5112152 () Bool)

(declare-fun e!3188392 () Bool)

(assert (=> b!5112152 (= e!3188394 e!3188392)))

(declare-fun res!2176077 () Bool)

(assert (=> b!5112152 (=> (not res!2176077) (not e!3188392))))

(assert (=> b!5112152 (= res!2176077 (not ((_ is Nil!59076) knownP!20)))))

(declare-fun b!5112154 () Bool)

(assert (=> b!5112154 (= e!3188392 (isPrefix!5562 (tail!10025 testedP!265) (tail!10025 knownP!20)))))

(declare-fun b!5112153 () Bool)

(declare-fun res!2176076 () Bool)

(assert (=> b!5112153 (=> (not res!2176076) (not e!3188392))))

(assert (=> b!5112153 (= res!2176076 (= (head!10885 testedP!265) (head!10885 knownP!20)))))

(declare-fun b!5112155 () Bool)

(assert (=> b!5112155 (= e!3188393 (>= (size!39463 knownP!20) (size!39463 testedP!265)))))

(assert (= (and d!1652090 (not res!2176075)) b!5112152))

(assert (= (and b!5112152 res!2176077) b!5112153))

(assert (= (and b!5112153 res!2176076) b!5112154))

(assert (= (and d!1652090 (not res!2176078)) b!5112155))

(declare-fun m!6169906 () Bool)

(assert (=> b!5112154 m!6169906))

(assert (=> b!5112154 m!6169836))

(assert (=> b!5112154 m!6169906))

(assert (=> b!5112154 m!6169836))

(declare-fun m!6169910 () Bool)

(assert (=> b!5112154 m!6169910))

(declare-fun m!6169912 () Bool)

(assert (=> b!5112153 m!6169912))

(assert (=> b!5112153 m!6169840))

(assert (=> b!5112155 m!6169614))

(assert (=> b!5112155 m!6169612))

(assert (=> b!5111997 d!1652090))

(declare-fun d!1652096 () Bool)

(assert (=> d!1652096 (isPrefix!5562 testedP!265 knownP!20)))

(declare-fun lt!2105535 () Unit!150181)

(assert (=> d!1652096 (= lt!2105535 (choose!37479 knownP!20 testedP!265 input!5745))))

(assert (=> d!1652096 (isPrefix!5562 knownP!20 input!5745)))

(assert (=> d!1652096 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!699 knownP!20 testedP!265 input!5745) lt!2105535)))

(declare-fun bs!1192112 () Bool)

(assert (= bs!1192112 d!1652096))

(assert (=> bs!1192112 m!6169630))

(declare-fun m!6169914 () Bool)

(assert (=> bs!1192112 m!6169914))

(assert (=> bs!1192112 m!6169616))

(assert (=> b!5111997 d!1652096))

(declare-fun d!1652098 () Bool)

(declare-fun lt!2105536 () Int)

(assert (=> d!1652098 (>= lt!2105536 0)))

(declare-fun e!3188399 () Int)

(assert (=> d!1652098 (= lt!2105536 e!3188399)))

(declare-fun c!878273 () Bool)

(assert (=> d!1652098 (= c!878273 ((_ is Nil!59076) testedP!265))))

(assert (=> d!1652098 (= (size!39463 testedP!265) lt!2105536)))

(declare-fun b!5112162 () Bool)

(assert (=> b!5112162 (= e!3188399 0)))

(declare-fun b!5112163 () Bool)

(assert (=> b!5112163 (= e!3188399 (+ 1 (size!39463 (t!372201 testedP!265))))))

(assert (= (and d!1652098 c!878273) b!5112162))

(assert (= (and d!1652098 (not c!878273)) b!5112163))

(declare-fun m!6169922 () Bool)

(assert (=> b!5112163 m!6169922))

(assert (=> b!5111988 d!1652098))

(declare-fun d!1652102 () Bool)

(declare-fun lt!2105537 () Int)

(assert (=> d!1652102 (>= lt!2105537 0)))

(declare-fun e!3188401 () Int)

(assert (=> d!1652102 (= lt!2105537 e!3188401)))

(declare-fun c!878274 () Bool)

(assert (=> d!1652102 (= c!878274 ((_ is Nil!59076) knownP!20))))

(assert (=> d!1652102 (= (size!39463 knownP!20) lt!2105537)))

(declare-fun b!5112164 () Bool)

(assert (=> b!5112164 (= e!3188401 0)))

(declare-fun b!5112165 () Bool)

(assert (=> b!5112165 (= e!3188401 (+ 1 (size!39463 (t!372201 knownP!20))))))

(assert (= (and d!1652102 c!878274) b!5112164))

(assert (= (and d!1652102 (not c!878274)) b!5112165))

(declare-fun m!6169924 () Bool)

(assert (=> b!5112165 m!6169924))

(assert (=> b!5111988 d!1652102))

(declare-fun d!1652104 () Bool)

(declare-fun lambda!250462 () Int)

(declare-fun forall!13542 (List!59199 Int) Bool)

(assert (=> d!1652104 (= (inv!78573 setElem!29842) (forall!13542 (exprs!4041 setElem!29842) lambda!250462))))

(declare-fun bs!1192113 () Bool)

(assert (= bs!1192113 d!1652104))

(declare-fun m!6169944 () Bool)

(assert (=> bs!1192113 m!6169944))

(assert (=> setNonEmpty!29842 d!1652104))

(declare-fun b!5112184 () Bool)

(declare-fun res!2176090 () Bool)

(declare-fun e!3188411 () Bool)

(assert (=> b!5112184 (=> (not res!2176090) (not e!3188411))))

(declare-fun lt!2105543 () List!59200)

(assert (=> b!5112184 (= res!2176090 (= (size!39463 lt!2105543) (+ (size!39463 (++!12982 testedP!265 lt!2105435)) (size!39463 lt!2105433))))))

(declare-fun b!5112185 () Bool)

(assert (=> b!5112185 (= e!3188411 (or (not (= lt!2105433 Nil!59076)) (= lt!2105543 (++!12982 testedP!265 lt!2105435))))))

(declare-fun b!5112182 () Bool)

(declare-fun e!3188410 () List!59200)

(assert (=> b!5112182 (= e!3188410 lt!2105433)))

(declare-fun b!5112183 () Bool)

(assert (=> b!5112183 (= e!3188410 (Cons!59076 (h!65524 (++!12982 testedP!265 lt!2105435)) (++!12982 (t!372201 (++!12982 testedP!265 lt!2105435)) lt!2105433)))))

(declare-fun d!1652114 () Bool)

(assert (=> d!1652114 e!3188411))

(declare-fun res!2176089 () Bool)

(assert (=> d!1652114 (=> (not res!2176089) (not e!3188411))))

(assert (=> d!1652114 (= res!2176089 (= (content!10496 lt!2105543) ((_ map or) (content!10496 (++!12982 testedP!265 lt!2105435)) (content!10496 lt!2105433))))))

(assert (=> d!1652114 (= lt!2105543 e!3188410)))

(declare-fun c!878280 () Bool)

(assert (=> d!1652114 (= c!878280 ((_ is Nil!59076) (++!12982 testedP!265 lt!2105435)))))

(assert (=> d!1652114 (= (++!12982 (++!12982 testedP!265 lt!2105435) lt!2105433) lt!2105543)))

(assert (= (and d!1652114 c!878280) b!5112182))

(assert (= (and d!1652114 (not c!878280)) b!5112183))

(assert (= (and d!1652114 res!2176089) b!5112184))

(assert (= (and b!5112184 res!2176090) b!5112185))

(declare-fun m!6169946 () Bool)

(assert (=> b!5112184 m!6169946))

(assert (=> b!5112184 m!6169644))

(declare-fun m!6169948 () Bool)

(assert (=> b!5112184 m!6169948))

(assert (=> b!5112184 m!6169692))

(declare-fun m!6169950 () Bool)

(assert (=> b!5112183 m!6169950))

(declare-fun m!6169952 () Bool)

(assert (=> d!1652114 m!6169952))

(assert (=> d!1652114 m!6169644))

(declare-fun m!6169954 () Bool)

(assert (=> d!1652114 m!6169954))

(assert (=> d!1652114 m!6169700))

(assert (=> b!5111990 d!1652114))

(declare-fun b!5112188 () Bool)

(declare-fun res!2176092 () Bool)

(declare-fun e!3188413 () Bool)

(assert (=> b!5112188 (=> (not res!2176092) (not e!3188413))))

(declare-fun lt!2105544 () List!59200)

(assert (=> b!5112188 (= res!2176092 (= (size!39463 lt!2105544) (+ (size!39463 testedP!265) (size!39463 lt!2105435))))))

(declare-fun b!5112189 () Bool)

(assert (=> b!5112189 (= e!3188413 (or (not (= lt!2105435 Nil!59076)) (= lt!2105544 testedP!265)))))

(declare-fun b!5112186 () Bool)

(declare-fun e!3188412 () List!59200)

(assert (=> b!5112186 (= e!3188412 lt!2105435)))

(declare-fun b!5112187 () Bool)

(assert (=> b!5112187 (= e!3188412 (Cons!59076 (h!65524 testedP!265) (++!12982 (t!372201 testedP!265) lt!2105435)))))

(declare-fun d!1652116 () Bool)

(assert (=> d!1652116 e!3188413))

(declare-fun res!2176091 () Bool)

(assert (=> d!1652116 (=> (not res!2176091) (not e!3188413))))

(assert (=> d!1652116 (= res!2176091 (= (content!10496 lt!2105544) ((_ map or) (content!10496 testedP!265) (content!10496 lt!2105435))))))

(assert (=> d!1652116 (= lt!2105544 e!3188412)))

(declare-fun c!878281 () Bool)

(assert (=> d!1652116 (= c!878281 ((_ is Nil!59076) testedP!265))))

(assert (=> d!1652116 (= (++!12982 testedP!265 lt!2105435) lt!2105544)))

(assert (= (and d!1652116 c!878281) b!5112186))

(assert (= (and d!1652116 (not c!878281)) b!5112187))

(assert (= (and d!1652116 res!2176091) b!5112188))

(assert (= (and b!5112188 res!2176092) b!5112189))

(declare-fun m!6169956 () Bool)

(assert (=> b!5112188 m!6169956))

(assert (=> b!5112188 m!6169612))

(assert (=> b!5112188 m!6169690))

(declare-fun m!6169958 () Bool)

(assert (=> b!5112187 m!6169958))

(declare-fun m!6169960 () Bool)

(assert (=> d!1652116 m!6169960))

(assert (=> d!1652116 m!6169684))

(assert (=> d!1652116 m!6169698))

(assert (=> b!5111990 d!1652116))

(declare-fun d!1652118 () Bool)

(declare-fun e!3188415 () Bool)

(assert (=> d!1652118 e!3188415))

(declare-fun res!2176096 () Bool)

(assert (=> d!1652118 (=> res!2176096 e!3188415)))

(declare-fun lt!2105547 () Bool)

(assert (=> d!1652118 (= res!2176096 (not lt!2105547))))

(declare-fun e!3188416 () Bool)

(assert (=> d!1652118 (= lt!2105547 e!3188416)))

(declare-fun res!2176093 () Bool)

(assert (=> d!1652118 (=> res!2176093 e!3188416)))

(assert (=> d!1652118 (= res!2176093 ((_ is Nil!59076) testedP!265))))

(assert (=> d!1652118 (= (isPrefix!5562 testedP!265 input!5745) lt!2105547)))

(declare-fun b!5112190 () Bool)

(declare-fun e!3188414 () Bool)

(assert (=> b!5112190 (= e!3188416 e!3188414)))

(declare-fun res!2176095 () Bool)

(assert (=> b!5112190 (=> (not res!2176095) (not e!3188414))))

(assert (=> b!5112190 (= res!2176095 (not ((_ is Nil!59076) input!5745)))))

(declare-fun b!5112192 () Bool)

(assert (=> b!5112192 (= e!3188414 (isPrefix!5562 (tail!10025 testedP!265) (tail!10025 input!5745)))))

(declare-fun b!5112191 () Bool)

(declare-fun res!2176094 () Bool)

(assert (=> b!5112191 (=> (not res!2176094) (not e!3188414))))

(assert (=> b!5112191 (= res!2176094 (= (head!10885 testedP!265) (head!10885 input!5745)))))

(declare-fun b!5112193 () Bool)

(assert (=> b!5112193 (= e!3188415 (>= (size!39463 input!5745) (size!39463 testedP!265)))))

(assert (= (and d!1652118 (not res!2176093)) b!5112190))

(assert (= (and b!5112190 res!2176095) b!5112191))

(assert (= (and b!5112191 res!2176094) b!5112192))

(assert (= (and d!1652118 (not res!2176096)) b!5112193))

(assert (=> b!5112192 m!6169906))

(assert (=> b!5112192 m!6169790))

(assert (=> b!5112192 m!6169906))

(assert (=> b!5112192 m!6169790))

(declare-fun m!6169962 () Bool)

(assert (=> b!5112192 m!6169962))

(assert (=> b!5112191 m!6169912))

(assert (=> b!5112191 m!6169796))

(assert (=> b!5112193 m!6169618))

(assert (=> b!5112193 m!6169612))

(assert (=> start!539160 d!1652118))

(declare-fun d!1652120 () Bool)

(assert (=> d!1652120 (= lt!2105440 lt!2105443)))

(declare-fun lt!2105554 () Unit!150181)

(declare-fun choose!37486 (List!59200 List!59200 List!59200 List!59200 List!59200) Unit!150181)

(assert (=> d!1652120 (= lt!2105554 (choose!37486 testedP!265 lt!2105440 testedP!265 lt!2105443 input!5745))))

(assert (=> d!1652120 (isPrefix!5562 testedP!265 input!5745)))

(assert (=> d!1652120 (= (lemmaSamePrefixThenSameSuffix!2608 testedP!265 lt!2105440 testedP!265 lt!2105443 input!5745) lt!2105554)))

(declare-fun bs!1192115 () Bool)

(assert (= bs!1192115 d!1652120))

(declare-fun m!6169972 () Bool)

(assert (=> bs!1192115 m!6169972))

(assert (=> bs!1192115 m!6169640))

(assert (=> b!5111992 d!1652120))

(declare-fun d!1652130 () Bool)

(declare-fun c!878284 () Bool)

(assert (=> d!1652130 (= c!878284 (isEmpty!31868 knownP!20))))

(declare-fun e!3188422 () Bool)

(assert (=> d!1652130 (= (matchZipper!825 baseZ!46 knownP!20) e!3188422)))

(declare-fun b!5112202 () Bool)

(assert (=> b!5112202 (= e!3188422 (nullableZipper!994 baseZ!46))))

(declare-fun b!5112203 () Bool)

(assert (=> b!5112203 (= e!3188422 (matchZipper!825 (derivationStepZipper!792 baseZ!46 (head!10885 knownP!20)) (tail!10025 knownP!20)))))

(assert (= (and d!1652130 c!878284) b!5112202))

(assert (= (and d!1652130 (not c!878284)) b!5112203))

(declare-fun m!6169974 () Bool)

(assert (=> d!1652130 m!6169974))

(declare-fun m!6169976 () Bool)

(assert (=> b!5112202 m!6169976))

(assert (=> b!5112203 m!6169840))

(assert (=> b!5112203 m!6169840))

(declare-fun m!6169978 () Bool)

(assert (=> b!5112203 m!6169978))

(assert (=> b!5112203 m!6169836))

(assert (=> b!5112203 m!6169978))

(assert (=> b!5112203 m!6169836))

(declare-fun m!6169980 () Bool)

(assert (=> b!5112203 m!6169980))

(assert (=> b!5111993 d!1652130))

(declare-fun bs!1192116 () Bool)

(declare-fun d!1652132 () Bool)

(assert (= bs!1192116 (and d!1652132 d!1652104)))

(declare-fun lambda!250463 () Int)

(assert (=> bs!1192116 (= lambda!250463 lambda!250462)))

(assert (=> d!1652132 (= (inv!78573 setElem!29841) (forall!13542 (exprs!4041 setElem!29841) lambda!250463))))

(declare-fun bs!1192117 () Bool)

(assert (= bs!1192117 d!1652132))

(declare-fun m!6169982 () Bool)

(assert (=> bs!1192117 m!6169982))

(assert (=> setNonEmpty!29841 d!1652132))

(declare-fun d!1652134 () Bool)

(declare-fun c!878285 () Bool)

(assert (=> d!1652134 (= c!878285 ((_ is Cons!59076) testedP!265))))

(declare-fun e!3188423 () (InoxSet Context!7082))

(assert (=> d!1652134 (= (derivationZipper!56 baseZ!46 testedP!265) e!3188423)))

(declare-fun b!5112204 () Bool)

(assert (=> b!5112204 (= e!3188423 (derivationZipper!56 (derivationStepZipper!792 baseZ!46 (h!65524 testedP!265)) (t!372201 testedP!265)))))

(declare-fun b!5112205 () Bool)

(assert (=> b!5112205 (= e!3188423 baseZ!46)))

(assert (= (and d!1652134 c!878285) b!5112204))

(assert (= (and d!1652134 (not c!878285)) b!5112205))

(declare-fun m!6169984 () Bool)

(assert (=> b!5112204 m!6169984))

(assert (=> b!5112204 m!6169984))

(declare-fun m!6169986 () Bool)

(assert (=> b!5112204 m!6169986))

(assert (=> b!5111984 d!1652134))

(declare-fun b!5112210 () Bool)

(declare-fun e!3188426 () Bool)

(declare-fun tp!1426392 () Bool)

(assert (=> b!5112210 (= e!3188426 (and tp_is_empty!37587 tp!1426392))))

(assert (=> b!5112000 (= tp!1426387 e!3188426)))

(assert (= (and b!5112000 ((_ is Cons!59076) (t!372201 knownP!20))) b!5112210))

(declare-fun b!5112211 () Bool)

(declare-fun e!3188427 () Bool)

(declare-fun tp!1426393 () Bool)

(assert (=> b!5112211 (= e!3188427 (and tp_is_empty!37587 tp!1426393))))

(assert (=> b!5111986 (= tp!1426384 e!3188427)))

(assert (= (and b!5111986 ((_ is Cons!59076) (t!372201 input!5745))) b!5112211))

(declare-fun b!5112216 () Bool)

(declare-fun e!3188430 () Bool)

(declare-fun tp!1426398 () Bool)

(declare-fun tp!1426399 () Bool)

(assert (=> b!5112216 (= e!3188430 (and tp!1426398 tp!1426399))))

(assert (=> b!5112001 (= tp!1426383 e!3188430)))

(assert (= (and b!5112001 ((_ is Cons!59075) (exprs!4041 setElem!29842))) b!5112216))

(declare-fun condSetEmpty!29845 () Bool)

(assert (=> setNonEmpty!29842 (= condSetEmpty!29845 (= setRest!29842 ((as const (Array Context!7082 Bool)) false)))))

(declare-fun setRes!29845 () Bool)

(assert (=> setNonEmpty!29842 (= tp!1426388 setRes!29845)))

(declare-fun setIsEmpty!29845 () Bool)

(assert (=> setIsEmpty!29845 setRes!29845))

(declare-fun setNonEmpty!29845 () Bool)

(declare-fun setElem!29845 () Context!7082)

(declare-fun tp!1426404 () Bool)

(declare-fun e!3188433 () Bool)

(assert (=> setNonEmpty!29845 (= setRes!29845 (and tp!1426404 (inv!78573 setElem!29845) e!3188433))))

(declare-fun setRest!29845 () (InoxSet Context!7082))

(assert (=> setNonEmpty!29845 (= setRest!29842 ((_ map or) (store ((as const (Array Context!7082 Bool)) false) setElem!29845 true) setRest!29845))))

(declare-fun b!5112221 () Bool)

(declare-fun tp!1426405 () Bool)

(assert (=> b!5112221 (= e!3188433 tp!1426405)))

(assert (= (and setNonEmpty!29842 condSetEmpty!29845) setIsEmpty!29845))

(assert (= (and setNonEmpty!29842 (not condSetEmpty!29845)) setNonEmpty!29845))

(assert (= setNonEmpty!29845 b!5112221))

(declare-fun m!6169990 () Bool)

(assert (=> setNonEmpty!29845 m!6169990))

(declare-fun b!5112222 () Bool)

(declare-fun e!3188434 () Bool)

(declare-fun tp!1426406 () Bool)

(declare-fun tp!1426407 () Bool)

(assert (=> b!5112222 (= e!3188434 (and tp!1426406 tp!1426407))))

(assert (=> b!5111999 (= tp!1426386 e!3188434)))

(assert (= (and b!5111999 ((_ is Cons!59075) (exprs!4041 setElem!29841))) b!5112222))

(declare-fun condSetEmpty!29846 () Bool)

(assert (=> setNonEmpty!29841 (= condSetEmpty!29846 (= setRest!29841 ((as const (Array Context!7082 Bool)) false)))))

(declare-fun setRes!29846 () Bool)

(assert (=> setNonEmpty!29841 (= tp!1426385 setRes!29846)))

(declare-fun setIsEmpty!29846 () Bool)

(assert (=> setIsEmpty!29846 setRes!29846))

(declare-fun setElem!29846 () Context!7082)

(declare-fun setNonEmpty!29846 () Bool)

(declare-fun tp!1426408 () Bool)

(declare-fun e!3188435 () Bool)

(assert (=> setNonEmpty!29846 (= setRes!29846 (and tp!1426408 (inv!78573 setElem!29846) e!3188435))))

(declare-fun setRest!29846 () (InoxSet Context!7082))

(assert (=> setNonEmpty!29846 (= setRest!29841 ((_ map or) (store ((as const (Array Context!7082 Bool)) false) setElem!29846 true) setRest!29846))))

(declare-fun b!5112223 () Bool)

(declare-fun tp!1426409 () Bool)

(assert (=> b!5112223 (= e!3188435 tp!1426409)))

(assert (= (and setNonEmpty!29841 condSetEmpty!29846) setIsEmpty!29846))

(assert (= (and setNonEmpty!29841 (not condSetEmpty!29846)) setNonEmpty!29846))

(assert (= setNonEmpty!29846 b!5112223))

(declare-fun m!6169992 () Bool)

(assert (=> setNonEmpty!29846 m!6169992))

(declare-fun b!5112224 () Bool)

(declare-fun e!3188436 () Bool)

(declare-fun tp!1426410 () Bool)

(assert (=> b!5112224 (= e!3188436 (and tp_is_empty!37587 tp!1426410))))

(assert (=> b!5111998 (= tp!1426389 e!3188436)))

(assert (= (and b!5111998 ((_ is Cons!59076) (t!372201 testedP!265))) b!5112224))

(check-sat (not d!1652096) (not d!1652114) (not b!5112122) (not b!5112150) (not b!5112183) (not b!5112216) (not d!1652130) (not d!1652020) (not d!1652120) (not d!1652012) (not b!5112126) (not bm!356402) (not b!5112085) (not b!5112084) (not b!5112165) (not b!5112135) (not d!1652072) (not b!5112153) (not b!5112100) (not b!5112210) (not b!5112031) (not b!5112187) (not b!5112101) (not b!5112155) (not b!5112088) (not b!5112039) (not d!1652058) (not b!5112127) (not b!5112136) (not b!5112103) (not b!5112191) (not d!1652132) (not b!5112125) (not d!1652086) (not b!5112149) (not d!1652064) (not b!5112192) (not d!1652054) (not b!5112137) (not d!1652050) (not b!5112118) (not d!1652070) (not d!1652018) (not setNonEmpty!29846) (not b!5112163) (not b!5112130) (not b!5112223) (not b!5112104) (not d!1652052) (not b!5112188) (not b!5112204) (not d!1652080) (not b!5112099) (not b!5112202) (not bm!356401) (not b!5112027) (not d!1652116) (not b!5112203) (not b!5112132) (not b!5112224) (not b!5112028) (not b!5112222) (not b!5112221) (not b!5112112) (not b!5112184) (not setNonEmpty!29845) (not b!5112148) (not d!1652026) (not b!5112154) (not b!5112211) (not d!1652062) (not d!1652074) (not b!5112193) (not d!1652104) (not b!5112121) (not b!5112032) (not b!5112087) (not d!1652046) tp_is_empty!37587)
(check-sat)
