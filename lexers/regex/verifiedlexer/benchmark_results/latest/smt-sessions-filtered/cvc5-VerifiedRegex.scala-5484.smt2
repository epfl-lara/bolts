; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277644 () Bool)

(assert start!277644)

(declare-fun b!2850209 () Bool)

(assert (=> b!2850209 true))

(declare-fun condSetEmpty!25066 () Bool)

(declare-datatypes ((C!17226 0))(
  ( (C!17227 (val!10647 Int)) )
))
(declare-datatypes ((Regex!8522 0))(
  ( (ElementMatch!8522 (c!459713 C!17226)) (Concat!13843 (regOne!17556 Regex!8522) (regTwo!17556 Regex!8522)) (EmptyExpr!8522) (Star!8522 (reg!8851 Regex!8522)) (EmptyLang!8522) (Union!8522 (regOne!17557 Regex!8522) (regTwo!17557 Regex!8522)) )
))
(declare-datatypes ((List!34031 0))(
  ( (Nil!33907) (Cons!33907 (h!39327 Regex!8522) (t!233062 List!34031)) )
))
(declare-datatypes ((Context!5064 0))(
  ( (Context!5065 (exprs!3032 List!34031)) )
))
(declare-fun z!809 () (Set Context!5064))

(assert (=> b!2850209 (= condSetEmpty!25066 (= z!809 (as set.empty (Set Context!5064))))))

(declare-fun setRes!25066 () Bool)

(assert (=> b!2850209 setRes!25066))

(declare-fun setIsEmpty!25066 () Bool)

(assert (=> setIsEmpty!25066 setRes!25066))

(declare-fun setNonEmpty!25066 () Bool)

(assert (=> setNonEmpty!25066 (= setRes!25066 true)))

(declare-fun setElem!25066 () Context!5064)

(declare-fun setRest!25066 () (Set Context!5064))

(assert (=> setNonEmpty!25066 (= z!809 (set.union (set.insert setElem!25066 (as set.empty (Set Context!5064))) setRest!25066))))

(assert (= (and b!2850209 condSetEmpty!25066) setIsEmpty!25066))

(assert (= (and b!2850209 (not condSetEmpty!25066)) setNonEmpty!25066))

(declare-fun b!2850199 () Bool)

(declare-fun res!1184733 () Bool)

(declare-fun e!1805999 () Bool)

(assert (=> b!2850199 (=> (not res!1184733) (not e!1805999))))

(declare-datatypes ((List!34032 0))(
  ( (Nil!33908) (Cons!33908 (h!39328 Context!5064) (t!233063 List!34032)) )
))
(declare-fun zl!222 () List!34032)

(declare-fun toList!1935 ((Set Context!5064)) List!34032)

(assert (=> b!2850199 (= res!1184733 (= (toList!1935 z!809) zl!222))))

(declare-fun setIsEmpty!25063 () Bool)

(declare-fun setRes!25063 () Bool)

(assert (=> setIsEmpty!25063 setRes!25063))

(declare-fun b!2850200 () Bool)

(declare-fun e!1806004 () Bool)

(declare-fun tp_is_empty!14781 () Bool)

(assert (=> b!2850200 (= e!1806004 tp_is_empty!14781)))

(declare-fun b!2850201 () Bool)

(declare-fun tp!915511 () Bool)

(declare-fun tp!915510 () Bool)

(assert (=> b!2850201 (= e!1806004 (and tp!915511 tp!915510))))

(declare-fun b!2850202 () Bool)

(declare-fun tp!915507 () Bool)

(declare-fun tp!915506 () Bool)

(assert (=> b!2850202 (= e!1806004 (and tp!915507 tp!915506))))

(declare-fun b!2850203 () Bool)

(declare-fun e!1806006 () Bool)

(assert (=> b!2850203 (= e!1806006 true)))

(assert (=> b!2850203 false))

(declare-datatypes ((List!34033 0))(
  ( (Nil!33909) (Cons!33909 (h!39329 C!17226) (t!233064 List!34033)) )
))
(declare-fun prefix!862 () List!34033)

(declare-fun lt!1013329 () List!34033)

(declare-fun r!5723 () Regex!8522)

(declare-datatypes ((Unit!47627 0))(
  ( (Unit!47628) )
))
(declare-fun lt!1013326 () Unit!47627)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!201 (Regex!8522 List!34033 List!34033) Unit!47627)

(assert (=> b!2850203 (= lt!1013326 (lemmaNotPrefixMatchThenCannotMatchLonger!201 r!5723 prefix!862 lt!1013329))))

(declare-fun matchR!3665 (Regex!8522 List!34033) Bool)

(assert (=> b!2850203 (matchR!3665 r!5723 lt!1013329)))

(declare-fun lt!1013327 () Unit!47627)

(declare-fun theoremZipperRegexEquiv!92 ((Set Context!5064) List!34032 Regex!8522 List!34033) Unit!47627)

(assert (=> b!2850203 (= lt!1013327 (theoremZipperRegexEquiv!92 z!809 zl!222 r!5723 lt!1013329))))

(declare-fun b!2850204 () Bool)

(declare-fun res!1184736 () Bool)

(assert (=> b!2850204 (=> (not res!1184736) (not e!1805999))))

(declare-fun prefixMatch!830 (Regex!8522 List!34033) Bool)

(assert (=> b!2850204 (= res!1184736 (not (prefixMatch!830 r!5723 prefix!862)))))

(declare-fun res!1184734 () Bool)

(assert (=> start!277644 (=> (not res!1184734) (not e!1805999))))

(declare-fun validRegex!3392 (Regex!8522) Bool)

(assert (=> start!277644 (= res!1184734 (validRegex!3392 r!5723))))

(assert (=> start!277644 e!1805999))

(assert (=> start!277644 e!1806004))

(declare-fun condSetEmpty!25063 () Bool)

(assert (=> start!277644 (= condSetEmpty!25063 (= z!809 (as set.empty (Set Context!5064))))))

(assert (=> start!277644 setRes!25063))

(declare-fun e!1806000 () Bool)

(assert (=> start!277644 e!1806000))

(declare-fun e!1806003 () Bool)

(assert (=> start!277644 e!1806003))

(declare-fun setElem!25063 () Context!5064)

(declare-fun e!1806005 () Bool)

(declare-fun tp!915505 () Bool)

(declare-fun setNonEmpty!25063 () Bool)

(declare-fun inv!45943 (Context!5064) Bool)

(assert (=> setNonEmpty!25063 (= setRes!25063 (and tp!915505 (inv!45943 setElem!25063) e!1806005))))

(declare-fun setRest!25063 () (Set Context!5064))

(assert (=> setNonEmpty!25063 (= z!809 (set.union (set.insert setElem!25063 (as set.empty (Set Context!5064))) setRest!25063))))

(declare-fun b!2850205 () Bool)

(declare-fun e!1806002 () Bool)

(assert (=> b!2850205 (= e!1806002 e!1806006)))

(declare-fun res!1184735 () Bool)

(assert (=> b!2850205 (=> res!1184735 e!1806006)))

(declare-fun matchZipper!404 ((Set Context!5064) List!34033) Bool)

(assert (=> b!2850205 (= res!1184735 (not (matchZipper!404 z!809 lt!1013329)))))

(declare-fun lambda!104758 () Int)

(declare-fun pickWitness!279 (Int) List!34033)

(assert (=> b!2850205 (= lt!1013329 (pickWitness!279 lambda!104758))))

(declare-fun b!2850206 () Bool)

(declare-fun tp!915509 () Bool)

(assert (=> b!2850206 (= e!1806003 (and tp_is_empty!14781 tp!915509))))

(declare-fun b!2850207 () Bool)

(declare-fun res!1184732 () Bool)

(assert (=> b!2850207 (=> (not res!1184732) (not e!1805999))))

(declare-fun unfocusZipper!194 (List!34032) Regex!8522)

(assert (=> b!2850207 (= res!1184732 (= r!5723 (unfocusZipper!194 zl!222)))))

(declare-fun e!1806001 () Bool)

(declare-fun b!2850208 () Bool)

(declare-fun tp!915514 () Bool)

(assert (=> b!2850208 (= e!1806000 (and (inv!45943 (h!39328 zl!222)) e!1806001 tp!915514))))

(assert (=> b!2850209 (= e!1805999 (not e!1806002))))

(declare-fun res!1184731 () Bool)

(assert (=> b!2850209 (=> res!1184731 e!1806002)))

(declare-fun Exists!1254 (Int) Bool)

(assert (=> b!2850209 (= res!1184731 (not (Exists!1254 lambda!104758)))))

(assert (=> b!2850209 (Exists!1254 lambda!104758)))

(declare-fun lt!1013328 () Unit!47627)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!302 ((Set Context!5064) List!34033) Unit!47627)

(assert (=> b!2850209 (= lt!1013328 (lemmaPrefixMatchThenExistsStringThatMatches!302 z!809 prefix!862))))

(declare-fun b!2850210 () Bool)

(declare-fun res!1184737 () Bool)

(assert (=> b!2850210 (=> (not res!1184737) (not e!1805999))))

(declare-fun prefixMatchZipper!254 ((Set Context!5064) List!34033) Bool)

(assert (=> b!2850210 (= res!1184737 (prefixMatchZipper!254 z!809 prefix!862))))

(declare-fun b!2850211 () Bool)

(declare-fun tp!915508 () Bool)

(assert (=> b!2850211 (= e!1806001 tp!915508)))

(declare-fun b!2850212 () Bool)

(declare-fun tp!915513 () Bool)

(assert (=> b!2850212 (= e!1806004 tp!915513)))

(declare-fun b!2850213 () Bool)

(declare-fun tp!915512 () Bool)

(assert (=> b!2850213 (= e!1806005 tp!915512)))

(assert (= (and start!277644 res!1184734) b!2850199))

(assert (= (and b!2850199 res!1184733) b!2850207))

(assert (= (and b!2850207 res!1184732) b!2850204))

(assert (= (and b!2850204 res!1184736) b!2850210))

(assert (= (and b!2850210 res!1184737) b!2850209))

(assert (= (and b!2850209 (not res!1184731)) b!2850205))

(assert (= (and b!2850205 (not res!1184735)) b!2850203))

(assert (= (and start!277644 (is-ElementMatch!8522 r!5723)) b!2850200))

(assert (= (and start!277644 (is-Concat!13843 r!5723)) b!2850201))

(assert (= (and start!277644 (is-Star!8522 r!5723)) b!2850212))

(assert (= (and start!277644 (is-Union!8522 r!5723)) b!2850202))

(assert (= (and start!277644 condSetEmpty!25063) setIsEmpty!25063))

(assert (= (and start!277644 (not condSetEmpty!25063)) setNonEmpty!25063))

(assert (= setNonEmpty!25063 b!2850213))

(assert (= b!2850208 b!2850211))

(assert (= (and start!277644 (is-Cons!33908 zl!222)) b!2850208))

(assert (= (and start!277644 (is-Cons!33909 prefix!862)) b!2850206))

(declare-fun m!3276553 () Bool)

(assert (=> b!2850209 m!3276553))

(assert (=> b!2850209 m!3276553))

(declare-fun m!3276555 () Bool)

(assert (=> b!2850209 m!3276555))

(declare-fun m!3276557 () Bool)

(assert (=> b!2850203 m!3276557))

(declare-fun m!3276559 () Bool)

(assert (=> b!2850203 m!3276559))

(declare-fun m!3276561 () Bool)

(assert (=> b!2850203 m!3276561))

(declare-fun m!3276563 () Bool)

(assert (=> start!277644 m!3276563))

(declare-fun m!3276565 () Bool)

(assert (=> b!2850204 m!3276565))

(declare-fun m!3276567 () Bool)

(assert (=> b!2850199 m!3276567))

(declare-fun m!3276569 () Bool)

(assert (=> b!2850205 m!3276569))

(declare-fun m!3276571 () Bool)

(assert (=> b!2850205 m!3276571))

(declare-fun m!3276573 () Bool)

(assert (=> setNonEmpty!25063 m!3276573))

(declare-fun m!3276575 () Bool)

(assert (=> b!2850210 m!3276575))

(declare-fun m!3276577 () Bool)

(assert (=> b!2850208 m!3276577))

(declare-fun m!3276579 () Bool)

(assert (=> b!2850207 m!3276579))

(push 1)

(assert (not b!2850212))

(assert (not setNonEmpty!25066))

(assert (not b!2850209))

(assert (not b!2850199))

(assert (not b!2850208))

(assert (not b!2850203))

(assert (not b!2850205))

(assert (not b!2850206))

(assert (not b!2850204))

(assert (not b!2850211))

(assert (not b!2850210))

(assert (not b!2850213))

(assert tp_is_empty!14781)

(assert (not b!2850201))

(assert (not b!2850207))

(assert (not setNonEmpty!25063))

(assert (not b!2850202))

(assert (not start!277644))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

