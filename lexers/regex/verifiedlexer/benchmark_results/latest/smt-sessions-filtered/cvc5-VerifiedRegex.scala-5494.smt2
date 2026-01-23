; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277684 () Bool)

(assert start!277684)

(declare-fun b!2851242 () Bool)

(assert (=> b!2851242 true))

(declare-fun condSetEmpty!25132 () Bool)

(declare-datatypes ((C!17266 0))(
  ( (C!17267 (val!10667 Int)) )
))
(declare-datatypes ((Regex!8542 0))(
  ( (ElementMatch!8542 (c!459733 C!17266)) (Concat!13863 (regOne!17596 Regex!8542) (regTwo!17596 Regex!8542)) (EmptyExpr!8542) (Star!8542 (reg!8871 Regex!8542)) (EmptyLang!8542) (Union!8542 (regOne!17597 Regex!8542) (regTwo!17597 Regex!8542)) )
))
(declare-datatypes ((List!34091 0))(
  ( (Nil!33967) (Cons!33967 (h!39387 Regex!8542) (t!233122 List!34091)) )
))
(declare-datatypes ((Context!5104 0))(
  ( (Context!5105 (exprs!3052 List!34091)) )
))
(declare-fun z!809 () (Set Context!5104))

(assert (=> b!2851242 (= condSetEmpty!25132 (= z!809 (as set.empty (Set Context!5104))))))

(declare-fun setRes!25132 () Bool)

(assert (=> b!2851242 setRes!25132))

(declare-fun setIsEmpty!25132 () Bool)

(assert (=> setIsEmpty!25132 setRes!25132))

(declare-fun setNonEmpty!25132 () Bool)

(assert (=> setNonEmpty!25132 (= setRes!25132 true)))

(declare-fun setElem!25132 () Context!5104)

(declare-fun setRest!25132 () (Set Context!5104))

(assert (=> setNonEmpty!25132 (= z!809 (set.union (set.insert setElem!25132 (as set.empty (Set Context!5104))) setRest!25132))))

(assert (= (and b!2851242 condSetEmpty!25132) setIsEmpty!25132))

(assert (= (and b!2851242 (not condSetEmpty!25132)) setNonEmpty!25132))

(declare-fun b!2851237 () Bool)

(declare-fun e!1806593 () Bool)

(declare-fun tp!916106 () Bool)

(assert (=> b!2851237 (= e!1806593 tp!916106)))

(declare-fun b!2851238 () Bool)

(declare-fun e!1806591 () Bool)

(declare-fun tp_is_empty!14821 () Bool)

(declare-fun tp!916114 () Bool)

(assert (=> b!2851238 (= e!1806591 (and tp_is_empty!14821 tp!916114))))

(declare-fun b!2851239 () Bool)

(declare-fun res!1185237 () Bool)

(declare-fun e!1806594 () Bool)

(assert (=> b!2851239 (=> (not res!1185237) (not e!1806594))))

(declare-datatypes ((List!34092 0))(
  ( (Nil!33968) (Cons!33968 (h!39388 C!17266) (t!233123 List!34092)) )
))
(declare-fun prefix!862 () List!34092)

(declare-fun prefixMatchZipper!274 ((Set Context!5104) List!34092) Bool)

(assert (=> b!2851239 (= res!1185237 (prefixMatchZipper!274 z!809 prefix!862))))

(declare-fun b!2851240 () Bool)

(declare-fun e!1806592 () Bool)

(declare-fun tp!916112 () Bool)

(assert (=> b!2851240 (= e!1806592 tp!916112)))

(declare-fun setIsEmpty!25129 () Bool)

(declare-fun setRes!25129 () Bool)

(assert (=> setIsEmpty!25129 setRes!25129))

(declare-fun lambda!104846 () Int)

(declare-fun Exists!1268 (Int) Bool)

(assert (=> b!2851242 (= e!1806594 (not (Exists!1268 lambda!104846)))))

(assert (=> b!2851242 (Exists!1268 lambda!104846)))

(declare-datatypes ((Unit!47655 0))(
  ( (Unit!47656) )
))
(declare-fun lt!1013494 () Unit!47655)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!316 ((Set Context!5104) List!34092) Unit!47655)

(assert (=> b!2851242 (= lt!1013494 (lemmaPrefixMatchThenExistsStringThatMatches!316 z!809 prefix!862))))

(declare-fun b!2851243 () Bool)

(declare-fun res!1185235 () Bool)

(assert (=> b!2851243 (=> (not res!1185235) (not e!1806594))))

(declare-fun r!5723 () Regex!8542)

(declare-fun prefixMatch!850 (Regex!8542 List!34092) Bool)

(assert (=> b!2851243 (= res!1185235 (not (prefixMatch!850 r!5723 prefix!862)))))

(declare-fun b!2851244 () Bool)

(declare-fun res!1185234 () Bool)

(assert (=> b!2851244 (=> (not res!1185234) (not e!1806594))))

(declare-datatypes ((List!34093 0))(
  ( (Nil!33969) (Cons!33969 (h!39389 Context!5104) (t!233124 List!34093)) )
))
(declare-fun zl!222 () List!34093)

(declare-fun toList!1955 ((Set Context!5104)) List!34093)

(assert (=> b!2851244 (= res!1185234 (= (toList!1955 z!809) zl!222))))

(declare-fun b!2851245 () Bool)

(declare-fun res!1185233 () Bool)

(assert (=> b!2851245 (=> (not res!1185233) (not e!1806594))))

(declare-fun unfocusZipper!214 (List!34093) Regex!8542)

(assert (=> b!2851245 (= res!1185233 (= r!5723 (unfocusZipper!214 zl!222)))))

(declare-fun b!2851246 () Bool)

(declare-fun tp!916113 () Bool)

(declare-fun tp!916111 () Bool)

(assert (=> b!2851246 (= e!1806593 (and tp!916113 tp!916111))))

(declare-fun b!2851247 () Bool)

(assert (=> b!2851247 (= e!1806593 tp_is_empty!14821)))

(declare-fun setElem!25129 () Context!5104)

(declare-fun tp!916105 () Bool)

(declare-fun e!1806596 () Bool)

(declare-fun setNonEmpty!25129 () Bool)

(declare-fun inv!45993 (Context!5104) Bool)

(assert (=> setNonEmpty!25129 (= setRes!25129 (and tp!916105 (inv!45993 setElem!25129) e!1806596))))

(declare-fun setRest!25129 () (Set Context!5104))

(assert (=> setNonEmpty!25129 (= z!809 (set.union (set.insert setElem!25129 (as set.empty (Set Context!5104))) setRest!25129))))

(declare-fun b!2851248 () Bool)

(declare-fun tp!916108 () Bool)

(declare-fun tp!916107 () Bool)

(assert (=> b!2851248 (= e!1806593 (and tp!916108 tp!916107))))

(declare-fun b!2851249 () Bool)

(declare-fun tp!916110 () Bool)

(declare-fun e!1806595 () Bool)

(assert (=> b!2851249 (= e!1806595 (and (inv!45993 (h!39389 zl!222)) e!1806592 tp!916110))))

(declare-fun b!2851241 () Bool)

(declare-fun tp!916109 () Bool)

(assert (=> b!2851241 (= e!1806596 tp!916109)))

(declare-fun res!1185236 () Bool)

(assert (=> start!277684 (=> (not res!1185236) (not e!1806594))))

(declare-fun validRegex!3412 (Regex!8542) Bool)

(assert (=> start!277684 (= res!1185236 (validRegex!3412 r!5723))))

(assert (=> start!277684 e!1806594))

(assert (=> start!277684 e!1806593))

(declare-fun condSetEmpty!25129 () Bool)

(assert (=> start!277684 (= condSetEmpty!25129 (= z!809 (as set.empty (Set Context!5104))))))

(assert (=> start!277684 setRes!25129))

(assert (=> start!277684 e!1806595))

(assert (=> start!277684 e!1806591))

(assert (= (and start!277684 res!1185236) b!2851244))

(assert (= (and b!2851244 res!1185234) b!2851245))

(assert (= (and b!2851245 res!1185233) b!2851243))

(assert (= (and b!2851243 res!1185235) b!2851239))

(assert (= (and b!2851239 res!1185237) b!2851242))

(assert (= (and start!277684 (is-ElementMatch!8542 r!5723)) b!2851247))

(assert (= (and start!277684 (is-Concat!13863 r!5723)) b!2851248))

(assert (= (and start!277684 (is-Star!8542 r!5723)) b!2851237))

(assert (= (and start!277684 (is-Union!8542 r!5723)) b!2851246))

(assert (= (and start!277684 condSetEmpty!25129) setIsEmpty!25129))

(assert (= (and start!277684 (not condSetEmpty!25129)) setNonEmpty!25129))

(assert (= setNonEmpty!25129 b!2851241))

(assert (= b!2851249 b!2851240))

(assert (= (and start!277684 (is-Cons!33969 zl!222)) b!2851249))

(assert (= (and start!277684 (is-Cons!33968 prefix!862)) b!2851238))

(declare-fun m!3276961 () Bool)

(assert (=> b!2851245 m!3276961))

(declare-fun m!3276963 () Bool)

(assert (=> b!2851242 m!3276963))

(assert (=> b!2851242 m!3276963))

(declare-fun m!3276965 () Bool)

(assert (=> b!2851242 m!3276965))

(declare-fun m!3276967 () Bool)

(assert (=> start!277684 m!3276967))

(declare-fun m!3276969 () Bool)

(assert (=> b!2851249 m!3276969))

(declare-fun m!3276971 () Bool)

(assert (=> setNonEmpty!25129 m!3276971))

(declare-fun m!3276973 () Bool)

(assert (=> b!2851243 m!3276973))

(declare-fun m!3276975 () Bool)

(assert (=> b!2851239 m!3276975))

(declare-fun m!3276977 () Bool)

(assert (=> b!2851244 m!3276977))

(push 1)

(assert (not b!2851245))

(assert (not setNonEmpty!25132))

(assert (not b!2851242))

(assert (not b!2851240))

(assert tp_is_empty!14821)

(assert (not b!2851238))

(assert (not b!2851243))

(assert (not b!2851239))

(assert (not b!2851246))

(assert (not b!2851249))

(assert (not b!2851244))

(assert (not start!277684))

(assert (not b!2851241))

(assert (not b!2851248))

(assert (not setNonEmpty!25129))

(assert (not b!2851237))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

