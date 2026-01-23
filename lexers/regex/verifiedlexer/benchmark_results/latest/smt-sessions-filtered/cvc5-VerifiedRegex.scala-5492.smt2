; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277676 () Bool)

(assert start!277676)

(declare-fun b!2851055 () Bool)

(assert (=> b!2851055 true))

(assert (=> b!2851055 true))

(declare-fun b!2851041 () Bool)

(declare-fun e!1806477 () Bool)

(declare-fun tp!915988 () Bool)

(declare-fun tp!915989 () Bool)

(assert (=> b!2851041 (= e!1806477 (and tp!915988 tp!915989))))

(declare-fun e!1806484 () Bool)

(declare-fun b!2851042 () Bool)

(declare-fun tp!915991 () Bool)

(declare-datatypes ((C!17258 0))(
  ( (C!17259 (val!10663 Int)) )
))
(declare-datatypes ((Regex!8538 0))(
  ( (ElementMatch!8538 (c!459729 C!17258)) (Concat!13859 (regOne!17588 Regex!8538) (regTwo!17588 Regex!8538)) (EmptyExpr!8538) (Star!8538 (reg!8867 Regex!8538)) (EmptyLang!8538) (Union!8538 (regOne!17589 Regex!8538) (regTwo!17589 Regex!8538)) )
))
(declare-datatypes ((List!34079 0))(
  ( (Nil!33955) (Cons!33955 (h!39375 Regex!8538) (t!233110 List!34079)) )
))
(declare-datatypes ((Context!5096 0))(
  ( (Context!5097 (exprs!3048 List!34079)) )
))
(declare-datatypes ((List!34080 0))(
  ( (Nil!33956) (Cons!33956 (h!39376 Context!5096) (t!233111 List!34080)) )
))
(declare-fun zl!222 () List!34080)

(declare-fun e!1806481 () Bool)

(declare-fun inv!45983 (Context!5096) Bool)

(assert (=> b!2851042 (= e!1806484 (and (inv!45983 (h!39376 zl!222)) e!1806481 tp!915991))))

(declare-fun b!2851043 () Bool)

(declare-fun e!1806482 () Bool)

(declare-fun z!809 () (Set Context!5096))

(declare-datatypes ((List!34081 0))(
  ( (Nil!33957) (Cons!33957 (h!39377 C!17258) (t!233112 List!34081)) )
))
(declare-fun prefix!862 () List!34081)

(declare-fun prefixMatchZipper!270 ((Set Context!5096) List!34081) Bool)

(assert (=> b!2851043 (= e!1806482 (not (prefixMatchZipper!270 z!809 prefix!862)))))

(declare-fun b!2851044 () Bool)

(declare-fun res!1185149 () Bool)

(declare-fun e!1806479 () Bool)

(assert (=> b!2851044 (=> (not res!1185149) (not e!1806479))))

(declare-fun r!5723 () Regex!8538)

(declare-fun unfocusZipper!210 (List!34080) Regex!8538)

(assert (=> b!2851044 (= res!1185149 (= r!5723 (unfocusZipper!210 zl!222)))))

(declare-fun b!2851045 () Bool)

(declare-fun e!1806480 () Bool)

(assert (=> b!2851045 (= e!1806479 e!1806480)))

(declare-fun res!1185147 () Bool)

(assert (=> b!2851045 (=> (not res!1185147) (not e!1806480))))

(assert (=> b!2851045 (= res!1185147 e!1806482)))

(declare-fun res!1185143 () Bool)

(assert (=> b!2851045 (=> res!1185143 e!1806482)))

(declare-fun lt!1013462 () Bool)

(assert (=> b!2851045 (= res!1185143 lt!1013462)))

(declare-fun prefixMatch!846 (Regex!8538 List!34081) Bool)

(assert (=> b!2851045 (= lt!1013462 (prefixMatch!846 r!5723 prefix!862))))

(declare-fun b!2851046 () Bool)

(declare-fun e!1806476 () Bool)

(declare-fun tp_is_empty!14813 () Bool)

(declare-fun tp!915992 () Bool)

(assert (=> b!2851046 (= e!1806476 (and tp_is_empty!14813 tp!915992))))

(declare-fun setIsEmpty!25117 () Bool)

(declare-fun setRes!25117 () Bool)

(assert (=> setIsEmpty!25117 setRes!25117))

(declare-fun b!2851047 () Bool)

(declare-fun tp!915993 () Bool)

(declare-fun tp!915987 () Bool)

(assert (=> b!2851047 (= e!1806477 (and tp!915993 tp!915987))))

(declare-fun b!2851048 () Bool)

(declare-fun e!1806483 () Bool)

(assert (=> b!2851048 (= e!1806483 true)))

(assert (=> b!2851048 false))

(declare-fun lt!1013464 () List!34081)

(declare-datatypes ((Unit!47651 0))(
  ( (Unit!47652) )
))
(declare-fun lt!1013460 () Unit!47651)

(declare-fun lemmaMatchThenPrefixMatchZipper!1 ((Set Context!5096) List!34081 List!34081) Unit!47651)

(assert (=> b!2851048 (= lt!1013460 (lemmaMatchThenPrefixMatchZipper!1 z!809 prefix!862 lt!1013464))))

(declare-fun matchZipper!408 ((Set Context!5096) List!34081) Bool)

(assert (=> b!2851048 (matchZipper!408 z!809 lt!1013464)))

(declare-fun lt!1013461 () Unit!47651)

(declare-fun theoremZipperRegexEquiv!96 ((Set Context!5096) List!34080 Regex!8538 List!34081) Unit!47651)

(assert (=> b!2851048 (= lt!1013461 (theoremZipperRegexEquiv!96 z!809 zl!222 r!5723 lt!1013464))))

(declare-fun res!1185148 () Bool)

(assert (=> start!277676 (=> (not res!1185148) (not e!1806479))))

(declare-fun validRegex!3408 (Regex!8538) Bool)

(assert (=> start!277676 (= res!1185148 (validRegex!3408 r!5723))))

(assert (=> start!277676 e!1806479))

(assert (=> start!277676 e!1806477))

(declare-fun condSetEmpty!25117 () Bool)

(assert (=> start!277676 (= condSetEmpty!25117 (= z!809 (as set.empty (Set Context!5096))))))

(assert (=> start!277676 setRes!25117))

(assert (=> start!277676 e!1806484))

(assert (=> start!277676 e!1806476))

(declare-fun b!2851049 () Bool)

(declare-fun e!1806475 () Bool)

(assert (=> b!2851049 (= e!1806475 e!1806483)))

(declare-fun res!1185142 () Bool)

(assert (=> b!2851049 (=> res!1185142 e!1806483)))

(declare-fun matchR!3671 (Regex!8538 List!34081) Bool)

(assert (=> b!2851049 (= res!1185142 (not (matchR!3671 r!5723 lt!1013464)))))

(declare-fun lambda!104834 () Int)

(declare-fun pickWitness!287 (Int) List!34081)

(assert (=> b!2851049 (= lt!1013464 (pickWitness!287 lambda!104834))))

(declare-fun b!2851050 () Bool)

(declare-fun e!1806478 () Bool)

(declare-fun tp!915990 () Bool)

(assert (=> b!2851050 (= e!1806478 tp!915990)))

(declare-fun b!2851051 () Bool)

(declare-fun tp!915985 () Bool)

(assert (=> b!2851051 (= e!1806477 tp!915985)))

(declare-fun b!2851052 () Bool)

(declare-fun res!1185141 () Bool)

(assert (=> b!2851052 (=> (not res!1185141) (not e!1806480))))

(assert (=> b!2851052 (= res!1185141 (not (prefixMatchZipper!270 z!809 prefix!862)))))

(declare-fun tp!915994 () Bool)

(declare-fun setNonEmpty!25117 () Bool)

(declare-fun setElem!25117 () Context!5096)

(assert (=> setNonEmpty!25117 (= setRes!25117 (and tp!915994 (inv!45983 setElem!25117) e!1806478))))

(declare-fun setRest!25117 () (Set Context!5096))

(assert (=> setNonEmpty!25117 (= z!809 (set.union (set.insert setElem!25117 (as set.empty (Set Context!5096))) setRest!25117))))

(declare-fun b!2851053 () Bool)

(declare-fun res!1185146 () Bool)

(assert (=> b!2851053 (=> (not res!1185146) (not e!1806480))))

(assert (=> b!2851053 (= res!1185146 lt!1013462)))

(declare-fun b!2851054 () Bool)

(assert (=> b!2851054 (= e!1806477 tp_is_empty!14813)))

(assert (=> b!2851055 (= e!1806480 (not e!1806475))))

(declare-fun res!1185144 () Bool)

(assert (=> b!2851055 (=> res!1185144 e!1806475)))

(declare-fun Exists!1266 (Int) Bool)

(assert (=> b!2851055 (= res!1185144 (not (Exists!1266 lambda!104834)))))

(assert (=> b!2851055 (Exists!1266 lambda!104834)))

(declare-fun lt!1013463 () Unit!47651)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!314 (Regex!8538 List!34081) Unit!47651)

(assert (=> b!2851055 (= lt!1013463 (lemmaPrefixMatchThenExistsStringThatMatches!314 r!5723 prefix!862))))

(declare-fun b!2851056 () Bool)

(declare-fun tp!915986 () Bool)

(assert (=> b!2851056 (= e!1806481 tp!915986)))

(declare-fun b!2851057 () Bool)

(declare-fun res!1185145 () Bool)

(assert (=> b!2851057 (=> (not res!1185145) (not e!1806479))))

(declare-fun toList!1951 ((Set Context!5096)) List!34080)

(assert (=> b!2851057 (= res!1185145 (= (toList!1951 z!809) zl!222))))

(assert (= (and start!277676 res!1185148) b!2851057))

(assert (= (and b!2851057 res!1185145) b!2851044))

(assert (= (and b!2851044 res!1185149) b!2851045))

(assert (= (and b!2851045 (not res!1185143)) b!2851043))

(assert (= (and b!2851045 res!1185147) b!2851053))

(assert (= (and b!2851053 res!1185146) b!2851052))

(assert (= (and b!2851052 res!1185141) b!2851055))

(assert (= (and b!2851055 (not res!1185144)) b!2851049))

(assert (= (and b!2851049 (not res!1185142)) b!2851048))

(assert (= (and start!277676 (is-ElementMatch!8538 r!5723)) b!2851054))

(assert (= (and start!277676 (is-Concat!13859 r!5723)) b!2851041))

(assert (= (and start!277676 (is-Star!8538 r!5723)) b!2851051))

(assert (= (and start!277676 (is-Union!8538 r!5723)) b!2851047))

(assert (= (and start!277676 condSetEmpty!25117) setIsEmpty!25117))

(assert (= (and start!277676 (not condSetEmpty!25117)) setNonEmpty!25117))

(assert (= setNonEmpty!25117 b!2851050))

(assert (= b!2851042 b!2851056))

(assert (= (and start!277676 (is-Cons!33956 zl!222)) b!2851042))

(assert (= (and start!277676 (is-Cons!33957 prefix!862)) b!2851046))

(declare-fun m!3276877 () Bool)

(assert (=> b!2851052 m!3276877))

(assert (=> b!2851043 m!3276877))

(declare-fun m!3276879 () Bool)

(assert (=> b!2851045 m!3276879))

(declare-fun m!3276881 () Bool)

(assert (=> start!277676 m!3276881))

(declare-fun m!3276883 () Bool)

(assert (=> b!2851057 m!3276883))

(declare-fun m!3276885 () Bool)

(assert (=> b!2851049 m!3276885))

(declare-fun m!3276887 () Bool)

(assert (=> b!2851049 m!3276887))

(declare-fun m!3276889 () Bool)

(assert (=> setNonEmpty!25117 m!3276889))

(declare-fun m!3276891 () Bool)

(assert (=> b!2851042 m!3276891))

(declare-fun m!3276893 () Bool)

(assert (=> b!2851055 m!3276893))

(assert (=> b!2851055 m!3276893))

(declare-fun m!3276895 () Bool)

(assert (=> b!2851055 m!3276895))

(declare-fun m!3276897 () Bool)

(assert (=> b!2851044 m!3276897))

(declare-fun m!3276899 () Bool)

(assert (=> b!2851048 m!3276899))

(declare-fun m!3276901 () Bool)

(assert (=> b!2851048 m!3276901))

(declare-fun m!3276903 () Bool)

(assert (=> b!2851048 m!3276903))

(push 1)

(assert (not b!2851044))

(assert (not b!2851042))

(assert (not b!2851043))

(assert (not b!2851056))

(assert (not b!2851048))

(assert (not b!2851046))

(assert (not start!277676))

(assert (not setNonEmpty!25117))

(assert (not b!2851057))

(assert (not b!2851050))

(assert (not b!2851051))

(assert (not b!2851045))

(assert (not b!2851041))

(assert (not b!2851052))

(assert tp_is_empty!14813)

(assert (not b!2851055))

(assert (not b!2851047))

(assert (not b!2851049))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

