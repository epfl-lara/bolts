; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668020 () Bool)

(assert start!668020)

(declare-fun b!6962688 () Bool)

(declare-fun e!4186157 () Bool)

(declare-fun tp!1919905 () Bool)

(declare-fun tp!1919901 () Bool)

(assert (=> b!6962688 (= e!4186157 (and tp!1919905 tp!1919901))))

(declare-fun b!6962689 () Bool)

(declare-fun e!4186160 () Bool)

(assert (=> b!6962689 (= e!4186160 (not true))))

(declare-datatypes ((C!34450 0))(
  ( (C!34451 (val!26927 Int)) )
))
(declare-datatypes ((Regex!17090 0))(
  ( (ElementMatch!17090 (c!1291022 C!34450)) (Concat!25935 (regOne!34692 Regex!17090) (regTwo!34692 Regex!17090)) (EmptyExpr!17090) (Star!17090 (reg!17419 Regex!17090)) (EmptyLang!17090) (Union!17090 (regOne!34693 Regex!17090) (regTwo!34693 Regex!17090)) )
))
(declare-fun r!13765 () Regex!17090)

(declare-datatypes ((List!66865 0))(
  ( (Nil!66741) (Cons!66741 (h!73189 C!34450) (t!380608 List!66865)) )
))
(declare-fun s!9351 () List!66865)

(declare-fun matchR!9196 (Regex!17090 List!66865) Bool)

(declare-fun matchRSpec!4111 (Regex!17090 List!66865) Bool)

(assert (=> b!6962689 (= (matchR!9196 r!13765 s!9351) (matchRSpec!4111 r!13765 s!9351))))

(declare-datatypes ((Unit!160840 0))(
  ( (Unit!160841) )
))
(declare-fun lt!2478986 () Unit!160840)

(declare-fun mainMatchTheorem!4105 (Regex!17090 List!66865) Unit!160840)

(assert (=> b!6962689 (= lt!2478986 (mainMatchTheorem!4105 r!13765 s!9351))))

(declare-fun b!6962691 () Bool)

(declare-fun e!4186158 () Bool)

(declare-fun tp!1919906 () Bool)

(declare-fun tp!1919904 () Bool)

(assert (=> b!6962691 (= e!4186158 (and tp!1919906 tp!1919904))))

(declare-fun b!6962692 () Bool)

(declare-fun tp!1919907 () Bool)

(assert (=> b!6962692 (= e!4186157 tp!1919907)))

(declare-fun b!6962693 () Bool)

(declare-fun tp_is_empty!43405 () Bool)

(assert (=> b!6962693 (= e!4186157 tp_is_empty!43405)))

(declare-fun res!2840846 () Bool)

(assert (=> start!668020 (=> (not res!2840846) (not e!4186160))))

(declare-datatypes ((List!66866 0))(
  ( (Nil!66742) (Cons!66742 (h!73190 Regex!17090) (t!380609 List!66866)) )
))
(declare-fun l!9142 () List!66866)

(declare-fun lambda!397239 () Int)

(declare-fun forall!15961 (List!66866 Int) Bool)

(assert (=> start!668020 (= res!2840846 (forall!15961 l!9142 lambda!397239))))

(assert (=> start!668020 e!4186160))

(assert (=> start!668020 e!4186158))

(assert (=> start!668020 e!4186157))

(declare-fun e!4186159 () Bool)

(assert (=> start!668020 e!4186159))

(declare-fun b!6962690 () Bool)

(declare-fun res!2840845 () Bool)

(assert (=> b!6962690 (=> (not res!2840845) (not e!4186160))))

(declare-fun generalisedUnion!2565 (List!66866) Regex!17090)

(assert (=> b!6962690 (= res!2840845 (= r!13765 (generalisedUnion!2565 l!9142)))))

(declare-fun b!6962694 () Bool)

(declare-fun tp!1919903 () Bool)

(assert (=> b!6962694 (= e!4186159 (and tp_is_empty!43405 tp!1919903))))

(declare-fun b!6962695 () Bool)

(declare-fun tp!1919900 () Bool)

(declare-fun tp!1919902 () Bool)

(assert (=> b!6962695 (= e!4186157 (and tp!1919900 tp!1919902))))

(assert (= (and start!668020 res!2840846) b!6962690))

(assert (= (and b!6962690 res!2840845) b!6962689))

(assert (= (and start!668020 (is-Cons!66742 l!9142)) b!6962691))

(assert (= (and start!668020 (is-ElementMatch!17090 r!13765)) b!6962693))

(assert (= (and start!668020 (is-Concat!25935 r!13765)) b!6962695))

(assert (= (and start!668020 (is-Star!17090 r!13765)) b!6962692))

(assert (= (and start!668020 (is-Union!17090 r!13765)) b!6962688))

(assert (= (and start!668020 (is-Cons!66741 s!9351)) b!6962694))

(declare-fun m!7656680 () Bool)

(assert (=> b!6962689 m!7656680))

(declare-fun m!7656682 () Bool)

(assert (=> b!6962689 m!7656682))

(declare-fun m!7656684 () Bool)

(assert (=> b!6962689 m!7656684))

(declare-fun m!7656686 () Bool)

(assert (=> start!668020 m!7656686))

(declare-fun m!7656688 () Bool)

(assert (=> b!6962690 m!7656688))

(push 1)

(assert (not b!6962690))

(assert (not b!6962695))

(assert tp_is_empty!43405)

(assert (not b!6962688))

(assert (not b!6962691))

(assert (not start!668020))

(assert (not b!6962692))

(assert (not b!6962694))

(assert (not b!6962689))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

