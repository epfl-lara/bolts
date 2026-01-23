; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!243206 () Bool)

(assert start!243206)

(declare-fun b!2488529 () Bool)

(declare-fun e!1580072 () Bool)

(declare-fun tp_is_empty!12471 () Bool)

(declare-fun tp!796613 () Bool)

(assert (=> b!2488529 (= e!1580072 (and tp_is_empty!12471 tp!796613))))

(declare-fun b!2488530 () Bool)

(declare-fun e!1580071 () Bool)

(declare-fun tp!796616 () Bool)

(declare-fun tp!796615 () Bool)

(assert (=> b!2488530 (= e!1580071 (and tp!796616 tp!796615))))

(declare-fun b!2488531 () Bool)

(declare-fun res!1053407 () Bool)

(declare-fun e!1580073 () Bool)

(assert (=> b!2488531 (=> (not res!1053407) (not e!1580073))))

(declare-datatypes ((C!14774 0))(
  ( (C!14775 (val!9039 Int)) )
))
(declare-datatypes ((List!29375 0))(
  ( (Nil!29275) (Cons!29275 (h!34695 C!14774) (t!211074 List!29375)) )
))
(declare-fun s!14955 () List!29375)

(declare-fun c!13476 () C!14774)

(declare-fun contains!5284 (List!29375 C!14774) Bool)

(assert (=> b!2488531 (= res!1053407 (contains!5284 s!14955 c!13476))))

(declare-fun b!2488532 () Bool)

(declare-fun res!1053409 () Bool)

(assert (=> b!2488532 (=> (not res!1053409) (not e!1580073))))

(declare-fun head!5664 (List!29375) C!14774)

(assert (=> b!2488532 (= res!1053409 (= (head!5664 s!14955) c!13476))))

(declare-fun b!2488533 () Bool)

(declare-fun res!1053405 () Bool)

(assert (=> b!2488533 (=> (not res!1053405) (not e!1580073))))

(declare-datatypes ((Regex!7308 0))(
  ( (ElementMatch!7308 (c!395474 C!14774)) (Concat!12004 (regOne!15128 Regex!7308) (regTwo!15128 Regex!7308)) (EmptyExpr!7308) (Star!7308 (reg!7637 Regex!7308)) (EmptyLang!7308) (Union!7308 (regOne!15129 Regex!7308) (regTwo!15129 Regex!7308)) )
))
(declare-fun r!26136 () Regex!7308)

(declare-fun firstChars!75 (Regex!7308) List!29375)

(assert (=> b!2488533 (= res!1053405 (not (contains!5284 (firstChars!75 r!26136) c!13476)))))

(declare-fun b!2488534 () Bool)

(declare-fun res!1053408 () Bool)

(assert (=> b!2488534 (=> (not res!1053408) (not e!1580073))))

(declare-fun matchR!3359 (Regex!7308 List!29375) Bool)

(assert (=> b!2488534 (= res!1053408 (matchR!3359 r!26136 s!14955))))

(declare-fun b!2488535 () Bool)

(assert (=> b!2488535 (= e!1580071 tp_is_empty!12471)))

(declare-fun b!2488536 () Bool)

(declare-fun tp!796611 () Bool)

(declare-fun tp!796612 () Bool)

(assert (=> b!2488536 (= e!1580071 (and tp!796611 tp!796612))))

(declare-fun b!2488537 () Bool)

(declare-fun tp!796614 () Bool)

(assert (=> b!2488537 (= e!1580071 tp!796614)))

(declare-fun res!1053406 () Bool)

(assert (=> start!243206 (=> (not res!1053406) (not e!1580073))))

(declare-fun validRegex!2934 (Regex!7308) Bool)

(assert (=> start!243206 (= res!1053406 (validRegex!2934 r!26136))))

(assert (=> start!243206 e!1580073))

(assert (=> start!243206 e!1580071))

(assert (=> start!243206 e!1580072))

(assert (=> start!243206 tp_is_empty!12471))

(declare-fun b!2488538 () Bool)

(assert (=> b!2488538 (= e!1580073 (not true))))

(assert (=> b!2488538 false))

(declare-datatypes ((Unit!42969 0))(
  ( (Unit!42970) )
))
(declare-fun lt!893751 () Unit!42969)

(declare-fun lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!1 (Regex!7308 C!14774 List!29375) Unit!42969)

(declare-fun tail!3947 (List!29375) List!29375)

(assert (=> b!2488538 (= lt!893751 (lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!1 r!26136 c!13476 (tail!3947 s!14955)))))

(declare-fun derivative!5 (Regex!7308 List!29375) Regex!7308)

(assert (=> b!2488538 (matchR!3359 (derivative!5 r!26136 s!14955) Nil!29275)))

(declare-fun lt!893752 () Unit!42969)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!5 (Regex!7308 List!29375) Unit!42969)

(assert (=> b!2488538 (= lt!893752 (lemmaMatchRIsSameAsWholeDerivativeAndNil!5 r!26136 s!14955))))

(assert (= (and start!243206 res!1053406) b!2488531))

(assert (= (and b!2488531 res!1053407) b!2488532))

(assert (= (and b!2488532 res!1053409) b!2488533))

(assert (= (and b!2488533 res!1053405) b!2488534))

(assert (= (and b!2488534 res!1053408) b!2488538))

(assert (= (and start!243206 (is-ElementMatch!7308 r!26136)) b!2488535))

(assert (= (and start!243206 (is-Concat!12004 r!26136)) b!2488530))

(assert (= (and start!243206 (is-Star!7308 r!26136)) b!2488537))

(assert (= (and start!243206 (is-Union!7308 r!26136)) b!2488536))

(assert (= (and start!243206 (is-Cons!29275 s!14955)) b!2488529))

(declare-fun m!2856937 () Bool)

(assert (=> b!2488534 m!2856937))

(declare-fun m!2856939 () Bool)

(assert (=> b!2488532 m!2856939))

(declare-fun m!2856941 () Bool)

(assert (=> b!2488538 m!2856941))

(assert (=> b!2488538 m!2856941))

(declare-fun m!2856943 () Bool)

(assert (=> b!2488538 m!2856943))

(declare-fun m!2856945 () Bool)

(assert (=> b!2488538 m!2856945))

(declare-fun m!2856947 () Bool)

(assert (=> b!2488538 m!2856947))

(assert (=> b!2488538 m!2856945))

(declare-fun m!2856949 () Bool)

(assert (=> b!2488538 m!2856949))

(declare-fun m!2856951 () Bool)

(assert (=> b!2488533 m!2856951))

(assert (=> b!2488533 m!2856951))

(declare-fun m!2856953 () Bool)

(assert (=> b!2488533 m!2856953))

(declare-fun m!2856955 () Bool)

(assert (=> b!2488531 m!2856955))

(declare-fun m!2856957 () Bool)

(assert (=> start!243206 m!2856957))

(push 1)

(assert (not b!2488530))

(assert (not b!2488532))

(assert (not b!2488536))

(assert (not b!2488533))

(assert (not b!2488529))

(assert (not start!243206))

(assert (not b!2488537))

(assert (not b!2488538))

(assert (not b!2488531))

(assert (not b!2488534))

(assert tp_is_empty!12471)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

