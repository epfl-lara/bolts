; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733206 () Bool)

(assert start!733206)

(declare-fun res!3045947 () Bool)

(declare-fun e!4524753 () Bool)

(assert (=> start!733206 (=> (not res!3045947) (not e!4524753))))

(declare-datatypes ((C!40722 0))(
  ( (C!40723 (val!30801 Int)) )
))
(declare-datatypes ((Regex!20198 0))(
  ( (ElementMatch!20198 (c!1402855 C!40722)) (Concat!29043 (regOne!40908 Regex!20198) (regTwo!40908 Regex!20198)) (EmptyExpr!20198) (Star!20198 (reg!20527 Regex!20198)) (EmptyLang!20198) (Union!20198 (regOne!40909 Regex!20198) (regTwo!40909 Regex!20198)) )
))
(declare-fun r!19218 () Regex!20198)

(declare-fun validRegex!10620 (Regex!20198) Bool)

(assert (=> start!733206 (= res!3045947 (validRegex!10620 r!19218))))

(assert (=> start!733206 e!4524753))

(declare-fun e!4524752 () Bool)

(assert (=> start!733206 e!4524752))

(declare-fun b!7607014 () Bool)

(declare-fun res!3045945 () Bool)

(assert (=> b!7607014 (=> (not res!3045945) (not e!4524753))))

(assert (=> b!7607014 (= res!3045945 (and (not (is-ElementMatch!20198 r!19218)) (not (is-Star!20198 r!19218)) (not (is-Union!20198 r!19218)) (is-Concat!29043 r!19218)))))

(declare-fun b!7607015 () Bool)

(assert (=> b!7607015 (= e!4524753 (not true))))

(declare-fun lostCause!1888 (Regex!20198) Bool)

(assert (=> b!7607015 (not (lostCause!1888 (regOne!40908 r!19218)))))

(declare-datatypes ((Unit!167260 0))(
  ( (Unit!167261) )
))
(declare-fun lt!2654925 () Unit!167260)

(declare-fun lemmaNullableThenNotLostCause!103 (Regex!20198) Unit!167260)

(assert (=> b!7607015 (= lt!2654925 (lemmaNullableThenNotLostCause!103 (regOne!40908 r!19218)))))

(declare-fun b!7607016 () Bool)

(declare-fun tp!2218721 () Bool)

(assert (=> b!7607016 (= e!4524752 tp!2218721)))

(declare-fun b!7607017 () Bool)

(declare-fun res!3045946 () Bool)

(assert (=> b!7607017 (=> (not res!3045946) (not e!4524753))))

(declare-fun nullable!8819 (Regex!20198) Bool)

(assert (=> b!7607017 (= res!3045946 (nullable!8819 r!19218))))

(declare-fun b!7607018 () Bool)

(declare-fun tp!2218724 () Bool)

(declare-fun tp!2218720 () Bool)

(assert (=> b!7607018 (= e!4524752 (and tp!2218724 tp!2218720))))

(declare-fun b!7607019 () Bool)

(declare-fun tp!2218722 () Bool)

(declare-fun tp!2218723 () Bool)

(assert (=> b!7607019 (= e!4524752 (and tp!2218722 tp!2218723))))

(declare-fun b!7607020 () Bool)

(declare-fun tp_is_empty!50751 () Bool)

(assert (=> b!7607020 (= e!4524752 tp_is_empty!50751)))

(assert (= (and start!733206 res!3045947) b!7607017))

(assert (= (and b!7607017 res!3045946) b!7607014))

(assert (= (and b!7607014 res!3045945) b!7607015))

(assert (= (and start!733206 (is-ElementMatch!20198 r!19218)) b!7607020))

(assert (= (and start!733206 (is-Concat!29043 r!19218)) b!7607019))

(assert (= (and start!733206 (is-Star!20198 r!19218)) b!7607016))

(assert (= (and start!733206 (is-Union!20198 r!19218)) b!7607018))

(declare-fun m!8147110 () Bool)

(assert (=> start!733206 m!8147110))

(declare-fun m!8147112 () Bool)

(assert (=> b!7607015 m!8147112))

(declare-fun m!8147114 () Bool)

(assert (=> b!7607015 m!8147114))

(declare-fun m!8147116 () Bool)

(assert (=> b!7607017 m!8147116))

(push 1)

(assert tp_is_empty!50751)

(assert (not b!7607019))

(assert (not b!7607015))

(assert (not b!7607017))

(assert (not b!7607018))

(assert (not b!7607016))

(assert (not start!733206))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

