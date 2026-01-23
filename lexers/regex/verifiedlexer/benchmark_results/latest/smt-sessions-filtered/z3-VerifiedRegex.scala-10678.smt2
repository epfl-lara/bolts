; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547004 () Bool)

(assert start!547004)

(declare-fun b!5168893 () Bool)

(declare-fun res!2197072 () Bool)

(declare-fun e!3220689 () Bool)

(assert (=> b!5168893 (=> res!2197072 e!3220689)))

(declare-datatypes ((C!29476 0))(
  ( (C!29477 (val!24440 Int)) )
))
(declare-datatypes ((List!60167 0))(
  ( (Nil!60043) (Cons!60043 (h!66491 C!29476) (t!373320 List!60167)) )
))
(declare-fun input!5817 () List!60167)

(declare-fun lt!2126729 () C!29476)

(declare-fun lt!2126727 () List!60167)

(declare-fun lt!2126726 () Int)

(declare-fun lt!2126725 () Int)

(declare-fun lt!2126733 () List!60167)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14603 0))(
  ( (ElementMatch!14603 (c!889562 C!29476)) (Concat!23448 (regOne!29718 Regex!14603) (regTwo!29718 Regex!14603)) (EmptyExpr!14603) (Star!14603 (reg!14932 Regex!14603)) (EmptyLang!14603) (Union!14603 (regOne!29719 Regex!14603) (regTwo!29719 Regex!14603)) )
))
(declare-datatypes ((List!60168 0))(
  ( (Nil!60044) (Cons!60044 (h!66492 Regex!14603) (t!373321 List!60168)) )
))
(declare-datatypes ((Context!7974 0))(
  ( (Context!7975 (exprs!4487 List!60168)) )
))
(declare-fun z!4581 () (InoxSet Context!7974))

(declare-fun isEmpty!32147 (List!60167) Bool)

(declare-datatypes ((tuple2!63760 0))(
  ( (tuple2!63761 (_1!35183 List!60167) (_2!35183 List!60167)) )
))
(declare-fun findLongestMatchInnerZipper!261 ((InoxSet Context!7974) List!60167 Int List!60167 List!60167 Int) tuple2!63760)

(declare-fun derivationStepZipper!957 ((InoxSet Context!7974) C!29476) (InoxSet Context!7974))

(declare-fun tail!10136 (List!60167) List!60167)

(assert (=> b!5168893 (= res!2197072 (not (isEmpty!32147 (_1!35183 (findLongestMatchInnerZipper!261 (derivationStepZipper!957 z!4581 lt!2126729) lt!2126727 (+ 1 lt!2126726) (tail!10136 lt!2126733) input!5817 lt!2126725)))))))

(declare-fun res!2197069 () Bool)

(declare-fun e!3220685 () Bool)

(assert (=> start!547004 (=> (not res!2197069) (not e!3220685))))

(declare-fun testedP!294 () List!60167)

(declare-fun isPrefix!5736 (List!60167 List!60167) Bool)

(assert (=> start!547004 (= res!2197069 (isPrefix!5736 testedP!294 input!5817))))

(assert (=> start!547004 e!3220685))

(declare-fun e!3220690 () Bool)

(assert (=> start!547004 e!3220690))

(declare-fun e!3220684 () Bool)

(assert (=> start!547004 e!3220684))

(declare-fun condSetEmpty!31880 () Bool)

(assert (=> start!547004 (= condSetEmpty!31880 (= z!4581 ((as const (Array Context!7974 Bool)) false)))))

(declare-fun setRes!31880 () Bool)

(assert (=> start!547004 setRes!31880))

(declare-fun condSetEmpty!31879 () Bool)

(declare-fun baseZ!62 () (InoxSet Context!7974))

(assert (=> start!547004 (= condSetEmpty!31879 (= baseZ!62 ((as const (Array Context!7974 Bool)) false)))))

(declare-fun setRes!31879 () Bool)

(assert (=> start!547004 setRes!31879))

(declare-fun b!5168894 () Bool)

(declare-fun e!3220683 () Bool)

(declare-fun tp!1450151 () Bool)

(assert (=> b!5168894 (= e!3220683 tp!1450151)))

(declare-fun b!5168895 () Bool)

(declare-fun e!3220682 () Bool)

(assert (=> b!5168895 (= e!3220682 e!3220689)))

(declare-fun res!2197073 () Bool)

(assert (=> b!5168895 (=> res!2197073 e!3220689)))

(declare-fun nullableZipper!1149 ((InoxSet Context!7974)) Bool)

(assert (=> b!5168895 (= res!2197073 (not (nullableZipper!1149 z!4581)))))

(assert (=> b!5168895 (isPrefix!5736 lt!2126727 input!5817)))

(declare-datatypes ((Unit!151582 0))(
  ( (Unit!151583) )
))
(declare-fun lt!2126731 () Unit!151582)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1049 (List!60167 List!60167) Unit!151582)

(assert (=> b!5168895 (= lt!2126731 (lemmaAddHeadSuffixToPrefixStillPrefix!1049 testedP!294 input!5817))))

(declare-fun ++!13127 (List!60167 List!60167) List!60167)

(assert (=> b!5168895 (= lt!2126727 (++!13127 testedP!294 (Cons!60043 lt!2126729 Nil!60043)))))

(declare-fun head!11027 (List!60167) C!29476)

(assert (=> b!5168895 (= lt!2126729 (head!11027 lt!2126733))))

(declare-fun b!5168896 () Bool)

(declare-fun tp_is_empty!38459 () Bool)

(declare-fun tp!1450150 () Bool)

(assert (=> b!5168896 (= e!3220684 (and tp_is_empty!38459 tp!1450150))))

(declare-fun b!5168897 () Bool)

(declare-fun res!2197074 () Bool)

(declare-fun e!3220687 () Bool)

(assert (=> b!5168897 (=> (not res!2197074) (not e!3220687))))

(assert (=> b!5168897 (= res!2197074 (not (= testedP!294 input!5817)))))

(declare-fun tp!1450149 () Bool)

(declare-fun setElem!31880 () Context!7974)

(declare-fun setNonEmpty!31879 () Bool)

(declare-fun e!3220688 () Bool)

(declare-fun inv!79754 (Context!7974) Bool)

(assert (=> setNonEmpty!31879 (= setRes!31880 (and tp!1450149 (inv!79754 setElem!31880) e!3220688))))

(declare-fun setRest!31879 () (InoxSet Context!7974))

(assert (=> setNonEmpty!31879 (= z!4581 ((_ map or) (store ((as const (Array Context!7974 Bool)) false) setElem!31880 true) setRest!31879))))

(declare-fun b!5168898 () Bool)

(declare-fun tp!1450148 () Bool)

(assert (=> b!5168898 (= e!3220690 (and tp_is_empty!38459 tp!1450148))))

(declare-fun setIsEmpty!31879 () Bool)

(assert (=> setIsEmpty!31879 setRes!31879))

(declare-fun b!5168899 () Bool)

(declare-fun e!3220686 () Bool)

(assert (=> b!5168899 (= e!3220685 e!3220686)))

(declare-fun res!2197071 () Bool)

(assert (=> b!5168899 (=> (not res!2197071) (not e!3220686))))

(declare-fun lt!2126730 () (InoxSet Context!7974))

(assert (=> b!5168899 (= res!2197071 (= lt!2126730 z!4581))))

(declare-fun derivationZipper!226 ((InoxSet Context!7974) List!60167) (InoxSet Context!7974))

(assert (=> b!5168899 (= lt!2126730 (derivationZipper!226 baseZ!62 testedP!294))))

(declare-fun b!5168900 () Bool)

(assert (=> b!5168900 (= e!3220687 (not e!3220682))))

(declare-fun res!2197068 () Bool)

(assert (=> b!5168900 (=> res!2197068 e!3220682)))

(assert (=> b!5168900 (= res!2197068 (>= lt!2126726 lt!2126725))))

(declare-fun lt!2126734 () Unit!151582)

(declare-fun e!3220681 () Unit!151582)

(assert (=> b!5168900 (= lt!2126734 e!3220681)))

(declare-fun c!889561 () Bool)

(assert (=> b!5168900 (= c!889561 (= lt!2126726 lt!2126725))))

(assert (=> b!5168900 (<= lt!2126726 lt!2126725)))

(declare-fun lt!2126735 () Unit!151582)

(declare-fun lemmaIsPrefixThenSmallerEqSize!899 (List!60167 List!60167) Unit!151582)

(assert (=> b!5168900 (= lt!2126735 (lemmaIsPrefixThenSmallerEqSize!899 testedP!294 input!5817))))

(declare-fun setElem!31879 () Context!7974)

(declare-fun setNonEmpty!31880 () Bool)

(declare-fun tp!1450147 () Bool)

(assert (=> setNonEmpty!31880 (= setRes!31879 (and tp!1450147 (inv!79754 setElem!31879) e!3220683))))

(declare-fun setRest!31880 () (InoxSet Context!7974))

(assert (=> setNonEmpty!31880 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7974 Bool)) false) setElem!31879 true) setRest!31880))))

(declare-fun b!5168901 () Bool)

(assert (=> b!5168901 (= e!3220689 true)))

(declare-fun matchZipper!959 ((InoxSet Context!7974) List!60167) Bool)

(assert (=> b!5168901 (= (matchZipper!959 baseZ!62 testedP!294) (matchZipper!959 lt!2126730 Nil!60043))))

(declare-fun lt!2126736 () Unit!151582)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!40 ((InoxSet Context!7974) List!60167) Unit!151582)

(assert (=> b!5168901 (= lt!2126736 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!40 baseZ!62 testedP!294))))

(declare-fun b!5168902 () Bool)

(assert (=> b!5168902 (= e!3220686 e!3220687)))

(declare-fun res!2197070 () Bool)

(assert (=> b!5168902 (=> (not res!2197070) (not e!3220687))))

(assert (=> b!5168902 (= res!2197070 (not (isEmpty!32147 (_1!35183 (findLongestMatchInnerZipper!261 z!4581 testedP!294 lt!2126726 lt!2126733 input!5817 lt!2126725)))))))

(declare-fun size!39639 (List!60167) Int)

(assert (=> b!5168902 (= lt!2126725 (size!39639 input!5817))))

(declare-fun getSuffix!3386 (List!60167 List!60167) List!60167)

(assert (=> b!5168902 (= lt!2126733 (getSuffix!3386 input!5817 testedP!294))))

(assert (=> b!5168902 (= lt!2126726 (size!39639 testedP!294))))

(declare-fun b!5168903 () Bool)

(declare-fun Unit!151584 () Unit!151582)

(assert (=> b!5168903 (= e!3220681 Unit!151584)))

(declare-fun lt!2126728 () Unit!151582)

(declare-fun lemmaIsPrefixRefl!3743 (List!60167 List!60167) Unit!151582)

(assert (=> b!5168903 (= lt!2126728 (lemmaIsPrefixRefl!3743 input!5817 input!5817))))

(assert (=> b!5168903 (isPrefix!5736 input!5817 input!5817)))

(declare-fun lt!2126732 () Unit!151582)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1385 (List!60167 List!60167 List!60167) Unit!151582)

(assert (=> b!5168903 (= lt!2126732 (lemmaIsPrefixSameLengthThenSameList!1385 input!5817 testedP!294 input!5817))))

(assert (=> b!5168903 false))

(declare-fun b!5168904 () Bool)

(declare-fun tp!1450146 () Bool)

(assert (=> b!5168904 (= e!3220688 tp!1450146)))

(declare-fun setIsEmpty!31880 () Bool)

(assert (=> setIsEmpty!31880 setRes!31880))

(declare-fun b!5168905 () Bool)

(declare-fun Unit!151585 () Unit!151582)

(assert (=> b!5168905 (= e!3220681 Unit!151585)))

(assert (= (and start!547004 res!2197069) b!5168899))

(assert (= (and b!5168899 res!2197071) b!5168902))

(assert (= (and b!5168902 res!2197070) b!5168897))

(assert (= (and b!5168897 res!2197074) b!5168900))

(assert (= (and b!5168900 c!889561) b!5168903))

(assert (= (and b!5168900 (not c!889561)) b!5168905))

(assert (= (and b!5168900 (not res!2197068)) b!5168895))

(assert (= (and b!5168895 (not res!2197073)) b!5168893))

(assert (= (and b!5168893 (not res!2197072)) b!5168901))

(get-info :version)

(assert (= (and start!547004 ((_ is Cons!60043) testedP!294)) b!5168898))

(assert (= (and start!547004 ((_ is Cons!60043) input!5817)) b!5168896))

(assert (= (and start!547004 condSetEmpty!31880) setIsEmpty!31880))

(assert (= (and start!547004 (not condSetEmpty!31880)) setNonEmpty!31879))

(assert (= setNonEmpty!31879 b!5168904))

(assert (= (and start!547004 condSetEmpty!31879) setIsEmpty!31879))

(assert (= (and start!547004 (not condSetEmpty!31879)) setNonEmpty!31880))

(assert (= setNonEmpty!31880 b!5168894))

(declare-fun m!6220314 () Bool)

(assert (=> b!5168902 m!6220314))

(declare-fun m!6220316 () Bool)

(assert (=> b!5168902 m!6220316))

(declare-fun m!6220318 () Bool)

(assert (=> b!5168902 m!6220318))

(declare-fun m!6220320 () Bool)

(assert (=> b!5168902 m!6220320))

(declare-fun m!6220322 () Bool)

(assert (=> b!5168902 m!6220322))

(declare-fun m!6220324 () Bool)

(assert (=> start!547004 m!6220324))

(declare-fun m!6220326 () Bool)

(assert (=> b!5168901 m!6220326))

(declare-fun m!6220328 () Bool)

(assert (=> b!5168901 m!6220328))

(declare-fun m!6220330 () Bool)

(assert (=> b!5168901 m!6220330))

(declare-fun m!6220332 () Bool)

(assert (=> b!5168893 m!6220332))

(declare-fun m!6220334 () Bool)

(assert (=> b!5168893 m!6220334))

(assert (=> b!5168893 m!6220332))

(assert (=> b!5168893 m!6220334))

(declare-fun m!6220336 () Bool)

(assert (=> b!5168893 m!6220336))

(declare-fun m!6220338 () Bool)

(assert (=> b!5168893 m!6220338))

(declare-fun m!6220340 () Bool)

(assert (=> setNonEmpty!31879 m!6220340))

(declare-fun m!6220342 () Bool)

(assert (=> b!5168899 m!6220342))

(declare-fun m!6220344 () Bool)

(assert (=> b!5168903 m!6220344))

(declare-fun m!6220346 () Bool)

(assert (=> b!5168903 m!6220346))

(declare-fun m!6220348 () Bool)

(assert (=> b!5168903 m!6220348))

(declare-fun m!6220350 () Bool)

(assert (=> setNonEmpty!31880 m!6220350))

(declare-fun m!6220352 () Bool)

(assert (=> b!5168900 m!6220352))

(declare-fun m!6220354 () Bool)

(assert (=> b!5168895 m!6220354))

(declare-fun m!6220356 () Bool)

(assert (=> b!5168895 m!6220356))

(declare-fun m!6220358 () Bool)

(assert (=> b!5168895 m!6220358))

(declare-fun m!6220360 () Bool)

(assert (=> b!5168895 m!6220360))

(declare-fun m!6220362 () Bool)

(assert (=> b!5168895 m!6220362))

(check-sat (not b!5168898) (not b!5168893) (not b!5168896) (not b!5168895) (not b!5168899) (not b!5168901) (not setNonEmpty!31880) (not setNonEmpty!31879) (not b!5168900) (not b!5168894) (not b!5168902) (not b!5168904) (not start!547004) tp_is_empty!38459 (not b!5168903))
(check-sat)
