; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540760 () Bool)

(assert start!540760)

(declare-fun b!5122827 () Bool)

(declare-fun e!3194925 () Bool)

(declare-fun tp_is_empty!37743 () Bool)

(declare-fun tp!1429238 () Bool)

(assert (=> b!5122827 (= e!3194925 (and tp_is_empty!37743 tp!1429238))))

(declare-fun b!5122828 () Bool)

(declare-fun res!2181390 () Bool)

(declare-fun e!3194935 () Bool)

(assert (=> b!5122828 (=> res!2181390 e!3194935)))

(declare-datatypes ((C!28736 0))(
  ( (C!28737 (val!24020 Int)) )
))
(declare-datatypes ((List!59395 0))(
  ( (Nil!59271) (Cons!59271 (h!65719 C!28736) (t!372416 List!59395)) )
))
(declare-fun lt!2112170 () List!59395)

(declare-fun knownP!20 () List!59395)

(assert (=> b!5122828 (= res!2181390 (not (= lt!2112170 knownP!20)))))

(declare-fun b!5122829 () Bool)

(declare-fun res!2181383 () Bool)

(declare-fun e!3194937 () Bool)

(assert (=> b!5122829 (=> res!2181383 e!3194937)))

(declare-fun input!5745 () List!59395)

(declare-fun lt!2112169 () List!59395)

(declare-fun testedP!265 () List!59395)

(declare-fun ++!13048 (List!59395 List!59395) List!59395)

(assert (=> b!5122829 (= res!2181383 (not (= (++!13048 testedP!265 lt!2112169) input!5745)))))

(declare-fun b!5122830 () Bool)

(declare-fun res!2181387 () Bool)

(declare-fun e!3194930 () Bool)

(assert (=> b!5122830 (=> (not res!2181387) (not e!3194930))))

(declare-fun isPrefix!5640 (List!59395 List!59395) Bool)

(assert (=> b!5122830 (= res!2181387 (isPrefix!5640 knownP!20 input!5745))))

(declare-fun b!5122831 () Bool)

(declare-fun e!3194928 () Bool)

(assert (=> b!5122831 (= e!3194928 e!3194935)))

(declare-fun res!2181392 () Bool)

(assert (=> b!5122831 (=> res!2181392 e!3194935)))

(declare-fun lt!2112181 () List!59395)

(declare-fun lt!2112183 () List!59395)

(declare-fun lt!2112172 () C!28736)

(declare-fun $colon$colon!1149 (List!59395 C!28736) List!59395)

(assert (=> b!5122831 (= res!2181392 (not (= lt!2112183 ($colon$colon!1149 lt!2112181 lt!2112172))))))

(declare-fun tail!10086 (List!59395) List!59395)

(assert (=> b!5122831 (= lt!2112181 (tail!10086 lt!2112183))))

(declare-fun b!5122833 () Bool)

(declare-fun res!2181399 () Bool)

(declare-fun e!3194924 () Bool)

(assert (=> b!5122833 (=> res!2181399 e!3194924)))

(declare-fun lt!2112171 () Int)

(declare-fun lt!2112178 () Int)

(assert (=> b!5122833 (= res!2181399 (= lt!2112171 lt!2112178))))

(declare-fun b!5122834 () Bool)

(declare-fun e!3194936 () Bool)

(declare-fun tp!1429234 () Bool)

(assert (=> b!5122834 (= e!3194936 tp!1429234)))

(declare-fun b!5122835 () Bool)

(declare-fun e!3194929 () Bool)

(declare-fun tp!1429236 () Bool)

(assert (=> b!5122835 (= e!3194929 (and tp_is_empty!37743 tp!1429236))))

(declare-fun b!5122836 () Bool)

(declare-fun e!3194927 () Bool)

(assert (=> b!5122836 (= e!3194927 e!3194937)))

(declare-fun res!2181393 () Bool)

(assert (=> b!5122836 (=> res!2181393 e!3194937)))

(declare-fun lt!2112174 () List!59395)

(assert (=> b!5122836 (= res!2181393 (not (= lt!2112174 input!5745)))))

(declare-fun lt!2112185 () List!59395)

(assert (=> b!5122836 (= lt!2112174 (++!13048 lt!2112170 lt!2112185))))

(assert (=> b!5122836 (= lt!2112170 (++!13048 testedP!265 lt!2112183))))

(declare-fun b!5122837 () Bool)

(declare-fun res!2181394 () Bool)

(declare-fun e!3194932 () Bool)

(assert (=> b!5122837 (=> (not res!2181394) (not e!3194932))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14235 0))(
  ( (ElementMatch!14235 (c!880367 C!28736)) (Concat!23080 (regOne!28982 Regex!14235) (regTwo!28982 Regex!14235)) (EmptyExpr!14235) (Star!14235 (reg!14564 Regex!14235)) (EmptyLang!14235) (Union!14235 (regOne!28983 Regex!14235) (regTwo!28983 Regex!14235)) )
))
(declare-datatypes ((List!59396 0))(
  ( (Nil!59272) (Cons!59272 (h!65720 Regex!14235) (t!372417 List!59396)) )
))
(declare-datatypes ((Context!7238 0))(
  ( (Context!7239 (exprs!4119 List!59396)) )
))
(declare-fun baseZ!46 () (InoxSet Context!7238))

(declare-fun matchZipper!903 ((InoxSet Context!7238) List!59395) Bool)

(assert (=> b!5122837 (= res!2181394 (matchZipper!903 baseZ!46 knownP!20))))

(declare-fun b!5122838 () Bool)

(assert (=> b!5122838 (= e!3194924 e!3194927)))

(declare-fun res!2181388 () Bool)

(assert (=> b!5122838 (=> res!2181388 e!3194927)))

(assert (=> b!5122838 (= res!2181388 (not (= (++!13048 knownP!20 lt!2112185) input!5745)))))

(declare-fun getSuffix!3312 (List!59395 List!59395) List!59395)

(assert (=> b!5122838 (= lt!2112185 (getSuffix!3312 input!5745 knownP!20))))

(declare-fun lt!2112184 () List!59395)

(declare-fun lt!2112167 () List!59395)

(assert (=> b!5122838 (= lt!2112184 (getSuffix!3312 knownP!20 lt!2112167))))

(assert (=> b!5122838 (isPrefix!5640 lt!2112167 knownP!20)))

(declare-datatypes ((Unit!150413 0))(
  ( (Unit!150414) )
))
(declare-fun lt!2112182 () Unit!150413)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!775 (List!59395 List!59395 List!59395) Unit!150413)

(assert (=> b!5122838 (= lt!2112182 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!775 knownP!20 lt!2112167 input!5745))))

(declare-fun z!4463 () (InoxSet Context!7238))

(declare-fun derivationZipper!132 ((InoxSet Context!7238) List!59395) (InoxSet Context!7238))

(declare-fun derivationStepZipper!858 ((InoxSet Context!7238) C!28736) (InoxSet Context!7238))

(assert (=> b!5122838 (= (derivationZipper!132 baseZ!46 lt!2112167) (derivationStepZipper!858 z!4463 lt!2112172))))

(declare-fun lt!2112177 () Unit!150413)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!79 ((InoxSet Context!7238) (InoxSet Context!7238) List!59395 C!28736) Unit!150413)

(assert (=> b!5122838 (= lt!2112177 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!79 baseZ!46 z!4463 testedP!265 lt!2112172))))

(assert (=> b!5122838 (isPrefix!5640 lt!2112167 input!5745)))

(declare-fun lt!2112179 () Unit!150413)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1014 (List!59395 List!59395) Unit!150413)

(assert (=> b!5122838 (= lt!2112179 (lemmaAddHeadSuffixToPrefixStillPrefix!1014 testedP!265 input!5745))))

(declare-fun lt!2112168 () List!59395)

(assert (=> b!5122838 (= lt!2112167 (++!13048 testedP!265 lt!2112168))))

(assert (=> b!5122838 (= lt!2112168 (Cons!59271 lt!2112172 Nil!59271))))

(declare-fun head!10951 (List!59395) C!28736)

(assert (=> b!5122838 (= lt!2112172 (head!10951 lt!2112169))))

(assert (=> b!5122838 (= lt!2112169 (getSuffix!3312 input!5745 testedP!265))))

(declare-fun b!5122839 () Bool)

(declare-fun e!3194933 () Bool)

(declare-fun tp!1429235 () Bool)

(assert (=> b!5122839 (= e!3194933 tp!1429235)))

(declare-fun b!5122840 () Bool)

(assert (=> b!5122840 (= e!3194930 e!3194932)))

(declare-fun res!2181391 () Bool)

(assert (=> b!5122840 (=> (not res!2181391) (not e!3194932))))

(assert (=> b!5122840 (= res!2181391 (>= lt!2112178 lt!2112171))))

(declare-fun size!39541 (List!59395) Int)

(assert (=> b!5122840 (= lt!2112171 (size!39541 testedP!265))))

(assert (=> b!5122840 (= lt!2112178 (size!39541 knownP!20))))

(declare-fun setIsEmpty!30489 () Bool)

(declare-fun setRes!30489 () Bool)

(assert (=> setIsEmpty!30489 setRes!30489))

(declare-fun b!5122841 () Bool)

(declare-fun e!3194934 () Bool)

(declare-fun tp!1429239 () Bool)

(assert (=> b!5122841 (= e!3194934 (and tp_is_empty!37743 tp!1429239))))

(declare-fun b!5122842 () Bool)

(assert (=> b!5122842 (= e!3194932 (not e!3194924))))

(declare-fun res!2181395 () Bool)

(assert (=> b!5122842 (=> res!2181395 e!3194924)))

(assert (=> b!5122842 (= res!2181395 (not (matchZipper!903 z!4463 lt!2112183)))))

(assert (=> b!5122842 (= lt!2112183 (getSuffix!3312 knownP!20 testedP!265))))

(assert (=> b!5122842 (isPrefix!5640 testedP!265 knownP!20)))

(declare-fun lt!2112173 () Unit!150413)

(assert (=> b!5122842 (= lt!2112173 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!775 knownP!20 testedP!265 input!5745))))

(declare-fun b!5122843 () Bool)

(declare-fun e!3194923 () Bool)

(assert (=> b!5122843 (= e!3194923 true)))

(declare-fun lt!2112186 () Int)

(assert (=> b!5122843 (= lt!2112186 (size!39541 lt!2112167))))

(declare-fun res!2181386 () Bool)

(assert (=> start!540760 (=> (not res!2181386) (not e!3194930))))

(assert (=> start!540760 (= res!2181386 (isPrefix!5640 testedP!265 input!5745))))

(assert (=> start!540760 e!3194930))

(assert (=> start!540760 e!3194934))

(declare-fun condSetEmpty!30490 () Bool)

(assert (=> start!540760 (= condSetEmpty!30490 (= z!4463 ((as const (Array Context!7238 Bool)) false)))))

(declare-fun setRes!30490 () Bool)

(assert (=> start!540760 setRes!30490))

(assert (=> start!540760 e!3194925))

(declare-fun condSetEmpty!30489 () Bool)

(assert (=> start!540760 (= condSetEmpty!30489 (= baseZ!46 ((as const (Array Context!7238 Bool)) false)))))

(assert (=> start!540760 setRes!30489))

(assert (=> start!540760 e!3194929))

(declare-fun b!5122832 () Bool)

(declare-fun e!3194931 () Bool)

(assert (=> b!5122832 (= e!3194935 e!3194931)))

(declare-fun res!2181396 () Bool)

(assert (=> b!5122832 (=> res!2181396 e!3194931)))

(declare-fun lt!2112175 () List!59395)

(assert (=> b!5122832 (= res!2181396 (not (= lt!2112175 knownP!20)))))

(assert (=> b!5122832 (= lt!2112175 (++!13048 lt!2112167 lt!2112184))))

(declare-fun b!5122844 () Bool)

(declare-fun e!3194926 () Bool)

(assert (=> b!5122844 (= e!3194926 e!3194928)))

(declare-fun res!2181385 () Bool)

(assert (=> b!5122844 (=> res!2181385 e!3194928)))

(assert (=> b!5122844 (= res!2181385 (not (= (head!10951 lt!2112183) lt!2112172)))))

(declare-fun lt!2112166 () List!59395)

(assert (=> b!5122844 (= lt!2112166 lt!2112169)))

(declare-fun lt!2112162 () Unit!150413)

(declare-fun lemmaSamePrefixThenSameSuffix!2658 (List!59395 List!59395 List!59395 List!59395 List!59395) Unit!150413)

(assert (=> b!5122844 (= lt!2112162 (lemmaSamePrefixThenSameSuffix!2658 testedP!265 lt!2112166 testedP!265 lt!2112169 input!5745))))

(declare-fun b!5122845 () Bool)

(assert (=> b!5122845 (= e!3194937 e!3194926)))

(declare-fun res!2181400 () Bool)

(assert (=> b!5122845 (=> res!2181400 e!3194926)))

(declare-fun lt!2112163 () List!59395)

(assert (=> b!5122845 (= res!2181400 (not (= lt!2112163 input!5745)))))

(assert (=> b!5122845 (= lt!2112174 lt!2112163)))

(assert (=> b!5122845 (= lt!2112163 (++!13048 testedP!265 lt!2112166))))

(assert (=> b!5122845 (= lt!2112166 (++!13048 lt!2112183 lt!2112185))))

(declare-fun lt!2112176 () Unit!150413)

(declare-fun lemmaConcatAssociativity!2792 (List!59395 List!59395 List!59395) Unit!150413)

(assert (=> b!5122845 (= lt!2112176 (lemmaConcatAssociativity!2792 testedP!265 lt!2112183 lt!2112185))))

(declare-fun b!5122846 () Bool)

(declare-fun res!2181384 () Bool)

(assert (=> b!5122846 (=> res!2181384 e!3194924)))

(assert (=> b!5122846 (= res!2181384 (>= lt!2112171 (size!39541 input!5745)))))

(declare-fun setIsEmpty!30490 () Bool)

(assert (=> setIsEmpty!30490 setRes!30490))

(declare-fun b!5122847 () Bool)

(assert (=> b!5122847 (= e!3194931 e!3194923)))

(declare-fun res!2181398 () Bool)

(assert (=> b!5122847 (=> res!2181398 e!3194923)))

(assert (=> b!5122847 (= res!2181398 (not (= lt!2112181 lt!2112184)))))

(declare-fun lt!2112180 () List!59395)

(assert (=> b!5122847 (= lt!2112180 lt!2112183)))

(declare-fun lt!2112164 () Unit!150413)

(assert (=> b!5122847 (= lt!2112164 (lemmaSamePrefixThenSameSuffix!2658 testedP!265 lt!2112180 testedP!265 lt!2112183 knownP!20))))

(assert (=> b!5122847 (= lt!2112175 (++!13048 testedP!265 lt!2112180))))

(assert (=> b!5122847 (= lt!2112180 (++!13048 lt!2112168 lt!2112184))))

(declare-fun lt!2112165 () Unit!150413)

(assert (=> b!5122847 (= lt!2112165 (lemmaConcatAssociativity!2792 testedP!265 lt!2112168 lt!2112184))))

(declare-fun b!5122848 () Bool)

(declare-fun res!2181389 () Bool)

(assert (=> b!5122848 (=> res!2181389 e!3194924)))

(declare-fun lostCauseZipper!1117 ((InoxSet Context!7238)) Bool)

(assert (=> b!5122848 (= res!2181389 (lostCauseZipper!1117 z!4463))))

(declare-fun setNonEmpty!30489 () Bool)

(declare-fun tp!1429233 () Bool)

(declare-fun setElem!30490 () Context!7238)

(declare-fun inv!78768 (Context!7238) Bool)

(assert (=> setNonEmpty!30489 (= setRes!30490 (and tp!1429233 (inv!78768 setElem!30490) e!3194933))))

(declare-fun setRest!30490 () (InoxSet Context!7238))

(assert (=> setNonEmpty!30489 (= z!4463 ((_ map or) (store ((as const (Array Context!7238 Bool)) false) setElem!30490 true) setRest!30490))))

(declare-fun b!5122849 () Bool)

(declare-fun res!2181397 () Bool)

(assert (=> b!5122849 (=> res!2181397 e!3194924)))

(assert (=> b!5122849 (= res!2181397 (not (= (derivationZipper!132 baseZ!46 testedP!265) z!4463)))))

(declare-fun setElem!30489 () Context!7238)

(declare-fun tp!1429237 () Bool)

(declare-fun setNonEmpty!30490 () Bool)

(assert (=> setNonEmpty!30490 (= setRes!30489 (and tp!1429237 (inv!78768 setElem!30489) e!3194936))))

(declare-fun setRest!30489 () (InoxSet Context!7238))

(assert (=> setNonEmpty!30490 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7238 Bool)) false) setElem!30489 true) setRest!30489))))

(assert (= (and start!540760 res!2181386) b!5122830))

(assert (= (and b!5122830 res!2181387) b!5122840))

(assert (= (and b!5122840 res!2181391) b!5122837))

(assert (= (and b!5122837 res!2181394) b!5122842))

(assert (= (and b!5122842 (not res!2181395)) b!5122849))

(assert (= (and b!5122849 (not res!2181397)) b!5122848))

(assert (= (and b!5122848 (not res!2181389)) b!5122833))

(assert (= (and b!5122833 (not res!2181399)) b!5122846))

(assert (= (and b!5122846 (not res!2181384)) b!5122838))

(assert (= (and b!5122838 (not res!2181388)) b!5122836))

(assert (= (and b!5122836 (not res!2181393)) b!5122829))

(assert (= (and b!5122829 (not res!2181383)) b!5122845))

(assert (= (and b!5122845 (not res!2181400)) b!5122844))

(assert (= (and b!5122844 (not res!2181385)) b!5122831))

(assert (= (and b!5122831 (not res!2181392)) b!5122828))

(assert (= (and b!5122828 (not res!2181390)) b!5122832))

(assert (= (and b!5122832 (not res!2181396)) b!5122847))

(assert (= (and b!5122847 (not res!2181398)) b!5122843))

(get-info :version)

(assert (= (and start!540760 ((_ is Cons!59271) input!5745)) b!5122841))

(assert (= (and start!540760 condSetEmpty!30490) setIsEmpty!30490))

(assert (= (and start!540760 (not condSetEmpty!30490)) setNonEmpty!30489))

(assert (= setNonEmpty!30489 b!5122839))

(assert (= (and start!540760 ((_ is Cons!59271) testedP!265)) b!5122827))

(assert (= (and start!540760 condSetEmpty!30489) setIsEmpty!30489))

(assert (= (and start!540760 (not condSetEmpty!30489)) setNonEmpty!30490))

(assert (= setNonEmpty!30490 b!5122834))

(assert (= (and start!540760 ((_ is Cons!59271) knownP!20)) b!5122835))

(declare-fun m!6184444 () Bool)

(assert (=> b!5122842 m!6184444))

(declare-fun m!6184446 () Bool)

(assert (=> b!5122842 m!6184446))

(declare-fun m!6184448 () Bool)

(assert (=> b!5122842 m!6184448))

(declare-fun m!6184450 () Bool)

(assert (=> b!5122842 m!6184450))

(declare-fun m!6184452 () Bool)

(assert (=> b!5122830 m!6184452))

(declare-fun m!6184454 () Bool)

(assert (=> b!5122847 m!6184454))

(declare-fun m!6184456 () Bool)

(assert (=> b!5122847 m!6184456))

(declare-fun m!6184458 () Bool)

(assert (=> b!5122847 m!6184458))

(declare-fun m!6184460 () Bool)

(assert (=> b!5122847 m!6184460))

(declare-fun m!6184462 () Bool)

(assert (=> b!5122844 m!6184462))

(declare-fun m!6184464 () Bool)

(assert (=> b!5122844 m!6184464))

(declare-fun m!6184466 () Bool)

(assert (=> b!5122829 m!6184466))

(declare-fun m!6184468 () Bool)

(assert (=> b!5122843 m!6184468))

(declare-fun m!6184470 () Bool)

(assert (=> b!5122840 m!6184470))

(declare-fun m!6184472 () Bool)

(assert (=> b!5122840 m!6184472))

(declare-fun m!6184474 () Bool)

(assert (=> start!540760 m!6184474))

(declare-fun m!6184476 () Bool)

(assert (=> b!5122832 m!6184476))

(declare-fun m!6184478 () Bool)

(assert (=> b!5122836 m!6184478))

(declare-fun m!6184480 () Bool)

(assert (=> b!5122836 m!6184480))

(declare-fun m!6184482 () Bool)

(assert (=> b!5122831 m!6184482))

(declare-fun m!6184484 () Bool)

(assert (=> b!5122831 m!6184484))

(declare-fun m!6184486 () Bool)

(assert (=> b!5122849 m!6184486))

(declare-fun m!6184488 () Bool)

(assert (=> b!5122838 m!6184488))

(declare-fun m!6184490 () Bool)

(assert (=> b!5122838 m!6184490))

(declare-fun m!6184492 () Bool)

(assert (=> b!5122838 m!6184492))

(declare-fun m!6184494 () Bool)

(assert (=> b!5122838 m!6184494))

(declare-fun m!6184496 () Bool)

(assert (=> b!5122838 m!6184496))

(declare-fun m!6184498 () Bool)

(assert (=> b!5122838 m!6184498))

(declare-fun m!6184500 () Bool)

(assert (=> b!5122838 m!6184500))

(declare-fun m!6184502 () Bool)

(assert (=> b!5122838 m!6184502))

(declare-fun m!6184504 () Bool)

(assert (=> b!5122838 m!6184504))

(declare-fun m!6184506 () Bool)

(assert (=> b!5122838 m!6184506))

(declare-fun m!6184508 () Bool)

(assert (=> b!5122838 m!6184508))

(declare-fun m!6184510 () Bool)

(assert (=> b!5122838 m!6184510))

(declare-fun m!6184512 () Bool)

(assert (=> b!5122838 m!6184512))

(declare-fun m!6184514 () Bool)

(assert (=> b!5122846 m!6184514))

(declare-fun m!6184516 () Bool)

(assert (=> b!5122837 m!6184516))

(declare-fun m!6184518 () Bool)

(assert (=> b!5122848 m!6184518))

(declare-fun m!6184520 () Bool)

(assert (=> setNonEmpty!30489 m!6184520))

(declare-fun m!6184522 () Bool)

(assert (=> b!5122845 m!6184522))

(declare-fun m!6184524 () Bool)

(assert (=> b!5122845 m!6184524))

(declare-fun m!6184526 () Bool)

(assert (=> b!5122845 m!6184526))

(declare-fun m!6184528 () Bool)

(assert (=> setNonEmpty!30490 m!6184528))

(check-sat (not b!5122827) (not b!5122844) (not b!5122847) (not b!5122831) (not start!540760) (not b!5122839) (not b!5122848) (not setNonEmpty!30490) (not b!5122829) (not b!5122849) (not b!5122845) (not b!5122838) (not b!5122830) (not b!5122835) (not b!5122837) (not b!5122842) (not b!5122841) (not b!5122832) (not b!5122846) (not b!5122836) (not b!5122834) (not b!5122840) tp_is_empty!37743 (not setNonEmpty!30489) (not b!5122843))
(check-sat)
