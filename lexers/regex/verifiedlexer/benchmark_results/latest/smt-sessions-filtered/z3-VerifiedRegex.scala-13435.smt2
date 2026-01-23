; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!726554 () Bool)

(assert start!726554)

(declare-fun b!7505849 () Bool)

(declare-fun e!4475437 () Bool)

(declare-fun tp_is_empty!49755 () Bool)

(declare-fun tp!2178813 () Bool)

(assert (=> b!7505849 (= e!4475437 (and tp_is_empty!49755 tp!2178813))))

(declare-fun b!7505850 () Bool)

(declare-fun e!4475440 () Bool)

(declare-fun e!4475432 () Bool)

(assert (=> b!7505850 (= e!4475440 e!4475432)))

(declare-fun res!3011311 () Bool)

(assert (=> b!7505850 (=> res!3011311 e!4475432)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!39740 0))(
  ( (C!39741 (val!30268 Int)) )
))
(declare-datatypes ((Regex!19707 0))(
  ( (ElementMatch!19707 (c!1385682 C!39740)) (Concat!28552 (regOne!39926 Regex!19707) (regTwo!39926 Regex!19707)) (EmptyExpr!19707) (Star!19707 (reg!20036 Regex!19707)) (EmptyLang!19707) (Union!19707 (regOne!39927 Regex!19707) (regTwo!39927 Regex!19707)) )
))
(declare-datatypes ((List!72511 0))(
  ( (Nil!72387) (Cons!72387 (h!78835 Regex!19707) (t!387080 List!72511)) )
))
(declare-datatypes ((Context!16918 0))(
  ( (Context!16919 (exprs!8959 List!72511)) )
))
(declare-fun z!3716 () (InoxSet Context!16918))

(declare-fun lostCauseZipper!1395 ((InoxSet Context!16918)) Bool)

(assert (=> b!7505850 (= res!3011311 (lostCauseZipper!1395 z!3716))))

(declare-datatypes ((List!72512 0))(
  ( (Nil!72388) (Cons!72388 (h!78836 C!39740) (t!387081 List!72512)) )
))
(declare-fun testedSuffix!164 () List!72512)

(declare-fun lt!2634836 () List!72512)

(assert (=> b!7505850 (and (= testedSuffix!164 lt!2634836) (= lt!2634836 testedSuffix!164))))

(declare-fun totalInput!779 () List!72512)

(declare-fun testedP!204 () List!72512)

(declare-datatypes ((Unit!166376 0))(
  ( (Unit!166377) )
))
(declare-fun lt!2634835 () Unit!166376)

(declare-fun lemmaSamePrefixThenSameSuffix!2800 (List!72512 List!72512 List!72512 List!72512 List!72512) Unit!166376)

(assert (=> b!7505850 (= lt!2634835 (lemmaSamePrefixThenSameSuffix!2800 testedP!204 testedSuffix!164 testedP!204 lt!2634836 totalInput!779))))

(declare-fun getSuffix!3501 (List!72512 List!72512) List!72512)

(assert (=> b!7505850 (= lt!2634836 (getSuffix!3501 totalInput!779 testedP!204))))

(declare-fun b!7505851 () Bool)

(declare-fun e!4475439 () Bool)

(declare-fun tp!2178816 () Bool)

(assert (=> b!7505851 (= e!4475439 (and tp_is_empty!49755 tp!2178816))))

(declare-fun setIsEmpty!57006 () Bool)

(declare-fun setRes!57006 () Bool)

(assert (=> setIsEmpty!57006 setRes!57006))

(declare-fun b!7505852 () Bool)

(declare-fun e!4475434 () Bool)

(assert (=> b!7505852 (= e!4475432 e!4475434)))

(declare-fun res!3011314 () Bool)

(assert (=> b!7505852 (=> res!3011314 e!4475434)))

(declare-fun lt!2634839 () Int)

(declare-fun lt!2634842 () Int)

(assert (=> b!7505852 (= res!3011314 (not (= lt!2634839 lt!2634842)))))

(assert (=> b!7505852 (<= lt!2634839 lt!2634842)))

(declare-fun lt!2634841 () Unit!166376)

(declare-fun lemmaIsPrefixThenSmallerEqSize!988 (List!72512 List!72512) Unit!166376)

(assert (=> b!7505852 (= lt!2634841 (lemmaIsPrefixThenSmallerEqSize!988 testedP!204 totalInput!779))))

(declare-fun b!7505853 () Bool)

(declare-fun e!4475433 () Bool)

(declare-fun tp!2178814 () Bool)

(assert (=> b!7505853 (= e!4475433 (and tp_is_empty!49755 tp!2178814))))

(declare-fun b!7505854 () Bool)

(declare-fun res!3011313 () Bool)

(assert (=> b!7505854 (=> res!3011313 e!4475432)))

(declare-fun testedPSize!164 () Int)

(declare-fun totalInputSize!226 () Int)

(assert (=> b!7505854 (= res!3011313 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7505855 () Bool)

(assert (=> b!7505855 (= e!4475434 false)))

(assert (=> b!7505855 (= totalInput!779 testedP!204)))

(declare-fun lt!2634834 () Unit!166376)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1490 (List!72512 List!72512 List!72512) Unit!166376)

(assert (=> b!7505855 (= lt!2634834 (lemmaIsPrefixSameLengthThenSameList!1490 totalInput!779 testedP!204 totalInput!779))))

(declare-fun isPrefix!6001 (List!72512 List!72512) Bool)

(assert (=> b!7505855 (isPrefix!6001 totalInput!779 totalInput!779)))

(declare-fun lt!2634837 () Unit!166376)

(declare-fun lemmaIsPrefixRefl!3840 (List!72512 List!72512) Unit!166376)

(assert (=> b!7505855 (= lt!2634837 (lemmaIsPrefixRefl!3840 totalInput!779 totalInput!779))))

(declare-fun b!7505856 () Bool)

(declare-fun e!4475436 () Bool)

(declare-fun e!4475431 () Bool)

(assert (=> b!7505856 (= e!4475436 e!4475431)))

(declare-fun res!3011310 () Bool)

(assert (=> b!7505856 (=> (not res!3011310) (not e!4475431))))

(assert (=> b!7505856 (= res!3011310 (= testedPSize!164 lt!2634839))))

(declare-fun size!42278 (List!72512) Int)

(assert (=> b!7505856 (= lt!2634839 (size!42278 testedP!204))))

(declare-fun b!7505858 () Bool)

(declare-fun e!4475435 () Bool)

(declare-fun tp!2178817 () Bool)

(assert (=> b!7505858 (= e!4475435 tp!2178817)))

(declare-fun setElem!57006 () Context!16918)

(declare-fun tp!2178815 () Bool)

(declare-fun setNonEmpty!57006 () Bool)

(declare-fun inv!92497 (Context!16918) Bool)

(assert (=> setNonEmpty!57006 (= setRes!57006 (and tp!2178815 (inv!92497 setElem!57006) e!4475435))))

(declare-fun setRest!57006 () (InoxSet Context!16918))

(assert (=> setNonEmpty!57006 (= z!3716 ((_ map or) (store ((as const (Array Context!16918 Bool)) false) setElem!57006 true) setRest!57006))))

(declare-fun b!7505859 () Bool)

(declare-fun e!4475438 () Bool)

(assert (=> b!7505859 (= e!4475438 (not e!4475440))))

(declare-fun res!3011312 () Bool)

(assert (=> b!7505859 (=> res!3011312 e!4475440)))

(assert (=> b!7505859 (= res!3011312 (not (isPrefix!6001 testedP!204 totalInput!779)))))

(declare-fun lt!2634840 () List!72512)

(assert (=> b!7505859 (isPrefix!6001 testedP!204 lt!2634840)))

(declare-fun lt!2634838 () Unit!166376)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3714 (List!72512 List!72512) Unit!166376)

(assert (=> b!7505859 (= lt!2634838 (lemmaConcatTwoListThenFirstIsPrefix!3714 testedP!204 testedSuffix!164))))

(declare-fun b!7505857 () Bool)

(assert (=> b!7505857 (= e!4475431 e!4475438)))

(declare-fun res!3011308 () Bool)

(assert (=> b!7505857 (=> (not res!3011308) (not e!4475438))))

(assert (=> b!7505857 (= res!3011308 (= totalInputSize!226 lt!2634842))))

(assert (=> b!7505857 (= lt!2634842 (size!42278 totalInput!779))))

(declare-fun res!3011309 () Bool)

(assert (=> start!726554 (=> (not res!3011309) (not e!4475436))))

(assert (=> start!726554 (= res!3011309 (= lt!2634840 totalInput!779))))

(declare-fun ++!17336 (List!72512 List!72512) List!72512)

(assert (=> start!726554 (= lt!2634840 (++!17336 testedP!204 testedSuffix!164))))

(assert (=> start!726554 e!4475436))

(assert (=> start!726554 e!4475437))

(assert (=> start!726554 true))

(assert (=> start!726554 e!4475439))

(assert (=> start!726554 e!4475433))

(declare-fun condSetEmpty!57006 () Bool)

(assert (=> start!726554 (= condSetEmpty!57006 (= z!3716 ((as const (Array Context!16918 Bool)) false)))))

(assert (=> start!726554 setRes!57006))

(assert (= (and start!726554 res!3011309) b!7505856))

(assert (= (and b!7505856 res!3011310) b!7505857))

(assert (= (and b!7505857 res!3011308) b!7505859))

(assert (= (and b!7505859 (not res!3011312)) b!7505850))

(assert (= (and b!7505850 (not res!3011311)) b!7505854))

(assert (= (and b!7505854 (not res!3011313)) b!7505852))

(assert (= (and b!7505852 (not res!3011314)) b!7505855))

(get-info :version)

(assert (= (and start!726554 ((_ is Cons!72388) testedSuffix!164)) b!7505849))

(assert (= (and start!726554 ((_ is Cons!72388) totalInput!779)) b!7505851))

(assert (= (and start!726554 ((_ is Cons!72388) testedP!204)) b!7505853))

(assert (= (and start!726554 condSetEmpty!57006) setIsEmpty!57006))

(assert (= (and start!726554 (not condSetEmpty!57006)) setNonEmpty!57006))

(assert (= setNonEmpty!57006 b!7505858))

(declare-fun m!8088054 () Bool)

(assert (=> b!7505859 m!8088054))

(declare-fun m!8088056 () Bool)

(assert (=> b!7505859 m!8088056))

(declare-fun m!8088058 () Bool)

(assert (=> b!7505859 m!8088058))

(declare-fun m!8088060 () Bool)

(assert (=> b!7505857 m!8088060))

(declare-fun m!8088062 () Bool)

(assert (=> b!7505852 m!8088062))

(declare-fun m!8088064 () Bool)

(assert (=> b!7505856 m!8088064))

(declare-fun m!8088066 () Bool)

(assert (=> b!7505850 m!8088066))

(declare-fun m!8088068 () Bool)

(assert (=> b!7505850 m!8088068))

(declare-fun m!8088070 () Bool)

(assert (=> b!7505850 m!8088070))

(declare-fun m!8088072 () Bool)

(assert (=> b!7505855 m!8088072))

(declare-fun m!8088074 () Bool)

(assert (=> b!7505855 m!8088074))

(declare-fun m!8088076 () Bool)

(assert (=> b!7505855 m!8088076))

(declare-fun m!8088078 () Bool)

(assert (=> start!726554 m!8088078))

(declare-fun m!8088080 () Bool)

(assert (=> setNonEmpty!57006 m!8088080))

(check-sat (not setNonEmpty!57006) (not start!726554) (not b!7505858) (not b!7505859) (not b!7505850) (not b!7505849) (not b!7505852) (not b!7505851) (not b!7505857) (not b!7505853) (not b!7505856) tp_is_empty!49755 (not b!7505855))
(check-sat)
