; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667868 () Bool)

(assert start!667868)

(declare-fun b!6960682 () Bool)

(declare-fun e!4185148 () Bool)

(assert (=> b!6960682 (= e!4185148 true)))

(declare-fun b!6960683 () Bool)

(declare-fun e!4185146 () Bool)

(declare-fun tp_is_empty!43389 () Bool)

(assert (=> b!6960683 (= e!4185146 tp_is_empty!43389)))

(declare-fun b!6960684 () Bool)

(declare-fun res!2840199 () Bool)

(declare-fun e!4185145 () Bool)

(assert (=> b!6960684 (=> (not res!2840199) (not e!4185145))))

(declare-datatypes ((C!34434 0))(
  ( (C!34435 (val!26919 Int)) )
))
(declare-datatypes ((Regex!17082 0))(
  ( (ElementMatch!17082 (c!1290684 C!34434)) (Concat!25927 (regOne!34676 Regex!17082) (regTwo!34676 Regex!17082)) (EmptyExpr!17082) (Star!17082 (reg!17411 Regex!17082)) (EmptyLang!17082) (Union!17082 (regOne!34677 Regex!17082) (regTwo!34677 Regex!17082)) )
))
(declare-fun r!13765 () Regex!17082)

(declare-datatypes ((List!66849 0))(
  ( (Nil!66725) (Cons!66725 (h!73173 Regex!17082) (t!380592 List!66849)) )
))
(declare-fun l!9142 () List!66849)

(declare-fun generalisedUnion!2557 (List!66849) Regex!17082)

(assert (=> b!6960684 (= res!2840199 (= r!13765 (generalisedUnion!2557 l!9142)))))

(declare-fun b!6960685 () Bool)

(declare-fun e!4185151 () Bool)

(assert (=> b!6960685 (= e!4185151 tp_is_empty!43389)))

(declare-fun b!6960686 () Bool)

(declare-fun e!4185149 () Bool)

(assert (=> b!6960686 (= e!4185145 (not e!4185149))))

(declare-fun res!2840201 () Bool)

(assert (=> b!6960686 (=> res!2840201 e!4185149)))

(assert (=> b!6960686 (= res!2840201 (not (is-Union!17082 r!13765)))))

(declare-datatypes ((List!66850 0))(
  ( (Nil!66726) (Cons!66726 (h!73174 C!34434) (t!380593 List!66850)) )
))
(declare-fun s!9351 () List!66850)

(declare-fun matchR!9188 (Regex!17082 List!66850) Bool)

(declare-fun matchRSpec!4103 (Regex!17082 List!66850) Bool)

(assert (=> b!6960686 (= (matchR!9188 r!13765 s!9351) (matchRSpec!4103 r!13765 s!9351))))

(declare-datatypes ((Unit!160824 0))(
  ( (Unit!160825) )
))
(declare-fun lt!2478894 () Unit!160824)

(declare-fun mainMatchTheorem!4097 (Regex!17082 List!66850) Unit!160824)

(assert (=> b!6960686 (= lt!2478894 (mainMatchTheorem!4097 r!13765 s!9351))))

(declare-fun b!6960687 () Bool)

(declare-fun e!4185147 () Bool)

(declare-fun tp!1919087 () Bool)

(assert (=> b!6960687 (= e!4185147 (and tp_is_empty!43389 tp!1919087))))

(declare-fun b!6960688 () Bool)

(assert (=> b!6960688 (= e!4185149 e!4185148)))

(declare-fun res!2840200 () Bool)

(assert (=> b!6960688 (=> res!2840200 e!4185148)))

(declare-fun lt!2478895 () List!66849)

(declare-fun isEmpty!38949 (List!66849) Bool)

(assert (=> b!6960688 (= res!2840200 (not (isEmpty!38949 lt!2478895)))))

(declare-fun tail!13030 (List!66849) List!66849)

(assert (=> b!6960688 (= lt!2478895 (tail!13030 l!9142))))

(declare-fun b!6960689 () Bool)

(declare-fun tp!1919078 () Bool)

(declare-fun tp!1919080 () Bool)

(assert (=> b!6960689 (= e!4185151 (and tp!1919078 tp!1919080))))

(declare-fun res!2840204 () Bool)

(assert (=> start!667868 (=> (not res!2840204) (not e!4185145))))

(declare-fun lambda!397143 () Int)

(declare-fun forall!15953 (List!66849 Int) Bool)

(assert (=> start!667868 (= res!2840204 (forall!15953 l!9142 lambda!397143))))

(assert (=> start!667868 e!4185145))

(declare-fun e!4185150 () Bool)

(assert (=> start!667868 e!4185150))

(assert (=> start!667868 e!4185151))

(assert (=> start!667868 e!4185147))

(assert (=> start!667868 e!4185146))

(declare-fun b!6960690 () Bool)

(declare-fun tp!1919086 () Bool)

(declare-fun tp!1919085 () Bool)

(assert (=> b!6960690 (= e!4185146 (and tp!1919086 tp!1919085))))

(declare-fun b!6960691 () Bool)

(declare-fun tp!1919089 () Bool)

(assert (=> b!6960691 (= e!4185146 tp!1919089)))

(declare-fun b!6960692 () Bool)

(declare-fun res!2840202 () Bool)

(assert (=> b!6960692 (=> res!2840202 e!4185148)))

(assert (=> b!6960692 (= res!2840202 (not (= (generalisedUnion!2557 lt!2478895) EmptyLang!17082)))))

(declare-fun b!6960693 () Bool)

(declare-fun tp!1919090 () Bool)

(assert (=> b!6960693 (= e!4185151 tp!1919090)))

(declare-fun b!6960694 () Bool)

(declare-fun tp!1919079 () Bool)

(declare-fun tp!1919081 () Bool)

(assert (=> b!6960694 (= e!4185151 (and tp!1919079 tp!1919081))))

(declare-fun b!6960695 () Bool)

(declare-fun res!2840203 () Bool)

(assert (=> b!6960695 (=> res!2840203 e!4185149)))

(assert (=> b!6960695 (= res!2840203 (isEmpty!38949 l!9142))))

(declare-fun b!6960696 () Bool)

(declare-fun tp!1919083 () Bool)

(declare-fun tp!1919084 () Bool)

(assert (=> b!6960696 (= e!4185150 (and tp!1919083 tp!1919084))))

(declare-fun b!6960697 () Bool)

(declare-fun tp!1919088 () Bool)

(declare-fun tp!1919082 () Bool)

(assert (=> b!6960697 (= e!4185146 (and tp!1919088 tp!1919082))))

(assert (= (and start!667868 res!2840204) b!6960684))

(assert (= (and b!6960684 res!2840199) b!6960686))

(assert (= (and b!6960686 (not res!2840201)) b!6960695))

(assert (= (and b!6960695 (not res!2840203)) b!6960688))

(assert (= (and b!6960688 (not res!2840200)) b!6960692))

(assert (= (and b!6960692 (not res!2840202)) b!6960682))

(assert (= (and start!667868 (is-Cons!66725 l!9142)) b!6960696))

(assert (= (and start!667868 (is-ElementMatch!17082 r!13765)) b!6960685))

(assert (= (and start!667868 (is-Concat!25927 r!13765)) b!6960694))

(assert (= (and start!667868 (is-Star!17082 r!13765)) b!6960693))

(assert (= (and start!667868 (is-Union!17082 r!13765)) b!6960689))

(assert (= (and start!667868 (is-Cons!66726 s!9351)) b!6960687))

(declare-fun rr!16 () Regex!17082)

(assert (= (and start!667868 (is-ElementMatch!17082 rr!16)) b!6960683))

(assert (= (and start!667868 (is-Concat!25927 rr!16)) b!6960690))

(assert (= (and start!667868 (is-Star!17082 rr!16)) b!6960691))

(assert (= (and start!667868 (is-Union!17082 rr!16)) b!6960697))

(declare-fun m!7656016 () Bool)

(assert (=> b!6960692 m!7656016))

(declare-fun m!7656018 () Bool)

(assert (=> b!6960695 m!7656018))

(declare-fun m!7656020 () Bool)

(assert (=> b!6960684 m!7656020))

(declare-fun m!7656022 () Bool)

(assert (=> start!667868 m!7656022))

(declare-fun m!7656024 () Bool)

(assert (=> b!6960688 m!7656024))

(declare-fun m!7656026 () Bool)

(assert (=> b!6960688 m!7656026))

(declare-fun m!7656028 () Bool)

(assert (=> b!6960686 m!7656028))

(declare-fun m!7656030 () Bool)

(assert (=> b!6960686 m!7656030))

(declare-fun m!7656032 () Bool)

(assert (=> b!6960686 m!7656032))

(push 1)

(assert (not b!6960694))

(assert (not b!6960688))

(assert (not b!6960689))

(assert (not b!6960684))

(assert (not b!6960695))

(assert (not b!6960687))

(assert (not b!6960691))

(assert (not b!6960696))

(assert tp_is_empty!43389)

(assert (not b!6960692))

(assert (not b!6960686))

(assert (not b!6960690))

(assert (not b!6960697))

(assert (not start!667868))

(assert (not b!6960693))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

