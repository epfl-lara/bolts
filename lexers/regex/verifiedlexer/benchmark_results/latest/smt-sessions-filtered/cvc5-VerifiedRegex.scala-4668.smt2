; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!243210 () Bool)

(assert start!243210)

(declare-fun b!2488589 () Bool)

(declare-fun e!1580089 () Bool)

(declare-fun tp_is_empty!12475 () Bool)

(assert (=> b!2488589 (= e!1580089 tp_is_empty!12475)))

(declare-fun b!2488590 () Bool)

(declare-fun e!1580091 () Bool)

(assert (=> b!2488590 (= e!1580091 (not true))))

(declare-datatypes ((C!14778 0))(
  ( (C!14779 (val!9041 Int)) )
))
(declare-datatypes ((Regex!7310 0))(
  ( (ElementMatch!7310 (c!395476 C!14778)) (Concat!12006 (regOne!15132 Regex!7310) (regTwo!15132 Regex!7310)) (EmptyExpr!7310) (Star!7310 (reg!7639 Regex!7310)) (EmptyLang!7310) (Union!7310 (regOne!15133 Regex!7310) (regTwo!15133 Regex!7310)) )
))
(declare-fun r!26136 () Regex!7310)

(declare-datatypes ((List!29377 0))(
  ( (Nil!29277) (Cons!29277 (h!34697 C!14778) (t!211076 List!29377)) )
))
(declare-fun s!14955 () List!29377)

(declare-fun matchR!3361 (Regex!7310 List!29377) Bool)

(declare-fun derivative!7 (Regex!7310 List!29377) Regex!7310)

(assert (=> b!2488590 (matchR!3361 (derivative!7 r!26136 s!14955) Nil!29277)))

(declare-datatypes ((Unit!42973 0))(
  ( (Unit!42974) )
))
(declare-fun lt!893761 () Unit!42973)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!7 (Regex!7310 List!29377) Unit!42973)

(assert (=> b!2488590 (= lt!893761 (lemmaMatchRIsSameAsWholeDerivativeAndNil!7 r!26136 s!14955))))

(declare-fun b!2488591 () Bool)

(declare-fun res!1053439 () Bool)

(assert (=> b!2488591 (=> (not res!1053439) (not e!1580091))))

(declare-fun c!13476 () C!14778)

(declare-fun contains!5286 (List!29377 C!14778) Bool)

(declare-fun firstChars!77 (Regex!7310) List!29377)

(assert (=> b!2488591 (= res!1053439 (not (contains!5286 (firstChars!77 r!26136) c!13476)))))

(declare-fun b!2488592 () Bool)

(declare-fun res!1053435 () Bool)

(assert (=> b!2488592 (=> (not res!1053435) (not e!1580091))))

(declare-fun head!5666 (List!29377) C!14778)

(assert (=> b!2488592 (= res!1053435 (= (head!5666 s!14955) c!13476))))

(declare-fun b!2488593 () Bool)

(declare-fun tp!796652 () Bool)

(declare-fun tp!796651 () Bool)

(assert (=> b!2488593 (= e!1580089 (and tp!796652 tp!796651))))

(declare-fun b!2488594 () Bool)

(declare-fun e!1580090 () Bool)

(declare-fun tp!796647 () Bool)

(assert (=> b!2488594 (= e!1580090 (and tp_is_empty!12475 tp!796647))))

(declare-fun res!1053438 () Bool)

(assert (=> start!243210 (=> (not res!1053438) (not e!1580091))))

(declare-fun validRegex!2936 (Regex!7310) Bool)

(assert (=> start!243210 (= res!1053438 (validRegex!2936 r!26136))))

(assert (=> start!243210 e!1580091))

(assert (=> start!243210 e!1580089))

(assert (=> start!243210 e!1580090))

(assert (=> start!243210 tp_is_empty!12475))

(declare-fun b!2488595 () Bool)

(declare-fun tp!796650 () Bool)

(declare-fun tp!796649 () Bool)

(assert (=> b!2488595 (= e!1580089 (and tp!796650 tp!796649))))

(declare-fun b!2488596 () Bool)

(declare-fun tp!796648 () Bool)

(assert (=> b!2488596 (= e!1580089 tp!796648)))

(declare-fun b!2488597 () Bool)

(declare-fun res!1053436 () Bool)

(assert (=> b!2488597 (=> (not res!1053436) (not e!1580091))))

(assert (=> b!2488597 (= res!1053436 (matchR!3361 r!26136 s!14955))))

(declare-fun b!2488598 () Bool)

(declare-fun res!1053437 () Bool)

(assert (=> b!2488598 (=> (not res!1053437) (not e!1580091))))

(assert (=> b!2488598 (= res!1053437 (contains!5286 s!14955 c!13476))))

(assert (= (and start!243210 res!1053438) b!2488598))

(assert (= (and b!2488598 res!1053437) b!2488592))

(assert (= (and b!2488592 res!1053435) b!2488591))

(assert (= (and b!2488591 res!1053439) b!2488597))

(assert (= (and b!2488597 res!1053436) b!2488590))

(assert (= (and start!243210 (is-ElementMatch!7310 r!26136)) b!2488589))

(assert (= (and start!243210 (is-Concat!12006 r!26136)) b!2488595))

(assert (= (and start!243210 (is-Star!7310 r!26136)) b!2488596))

(assert (= (and start!243210 (is-Union!7310 r!26136)) b!2488593))

(assert (= (and start!243210 (is-Cons!29277 s!14955)) b!2488594))

(declare-fun m!2856981 () Bool)

(assert (=> b!2488592 m!2856981))

(declare-fun m!2856983 () Bool)

(assert (=> b!2488598 m!2856983))

(declare-fun m!2856985 () Bool)

(assert (=> start!243210 m!2856985))

(declare-fun m!2856987 () Bool)

(assert (=> b!2488590 m!2856987))

(assert (=> b!2488590 m!2856987))

(declare-fun m!2856989 () Bool)

(assert (=> b!2488590 m!2856989))

(declare-fun m!2856991 () Bool)

(assert (=> b!2488590 m!2856991))

(declare-fun m!2856993 () Bool)

(assert (=> b!2488591 m!2856993))

(assert (=> b!2488591 m!2856993))

(declare-fun m!2856995 () Bool)

(assert (=> b!2488591 m!2856995))

(declare-fun m!2856997 () Bool)

(assert (=> b!2488597 m!2856997))

(push 1)

(assert (not b!2488596))

(assert (not b!2488594))

(assert (not b!2488597))

(assert (not b!2488593))

(assert (not b!2488598))

(assert (not b!2488595))

(assert tp_is_empty!12475)

(assert (not start!243210))

(assert (not b!2488591))

(assert (not b!2488592))

(assert (not b!2488590))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

