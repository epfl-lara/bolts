; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668144 () Bool)

(assert start!668144)

(declare-fun b!6964708 () Bool)

(declare-fun res!2841673 () Bool)

(declare-fun e!4187250 () Bool)

(assert (=> b!6964708 (=> (not res!2841673) (not e!4187250))))

(declare-datatypes ((C!34482 0))(
  ( (C!34483 (val!26943 Int)) )
))
(declare-datatypes ((Regex!17106 0))(
  ( (ElementMatch!17106 (c!1291324 C!34482)) (Concat!25951 (regOne!34724 Regex!17106) (regTwo!34724 Regex!17106)) (EmptyExpr!17106) (Star!17106 (reg!17435 Regex!17106)) (EmptyLang!17106) (Union!17106 (regOne!34725 Regex!17106) (regTwo!34725 Regex!17106)) )
))
(declare-fun r!13765 () Regex!17106)

(declare-datatypes ((List!66897 0))(
  ( (Nil!66773) (Cons!66773 (h!73221 Regex!17106) (t!380640 List!66897)) )
))
(declare-fun l!9142 () List!66897)

(declare-fun generalisedUnion!2581 (List!66897) Regex!17106)

(assert (=> b!6964708 (= res!2841673 (= r!13765 (generalisedUnion!2581 l!9142)))))

(declare-fun b!6964709 () Bool)

(declare-fun e!4187248 () Bool)

(declare-fun tp_is_empty!43437 () Bool)

(declare-fun tp!1920625 () Bool)

(assert (=> b!6964709 (= e!4187248 (and tp_is_empty!43437 tp!1920625))))

(declare-fun b!6964710 () Bool)

(declare-fun e!4187251 () Bool)

(declare-fun tp!1920620 () Bool)

(declare-fun tp!1920619 () Bool)

(assert (=> b!6964710 (= e!4187251 (and tp!1920620 tp!1920619))))

(declare-fun b!6964711 () Bool)

(declare-fun e!4187249 () Bool)

(declare-fun tp!1920624 () Bool)

(assert (=> b!6964711 (= e!4187249 tp!1920624)))

(declare-fun b!6964712 () Bool)

(declare-fun tp!1920623 () Bool)

(declare-fun tp!1920626 () Bool)

(assert (=> b!6964712 (= e!4187249 (and tp!1920623 tp!1920626))))

(declare-fun res!2841674 () Bool)

(assert (=> start!668144 (=> (not res!2841674) (not e!4187250))))

(declare-fun lambda!397409 () Int)

(declare-fun forall!15977 (List!66897 Int) Bool)

(assert (=> start!668144 (= res!2841674 (forall!15977 l!9142 lambda!397409))))

(assert (=> start!668144 e!4187250))

(assert (=> start!668144 e!4187251))

(declare-fun e!4187247 () Bool)

(assert (=> start!668144 e!4187247))

(assert (=> start!668144 e!4187248))

(assert (=> start!668144 e!4187249))

(declare-fun b!6964713 () Bool)

(declare-fun tp!1920622 () Bool)

(declare-fun tp!1920618 () Bool)

(assert (=> b!6964713 (= e!4187247 (and tp!1920622 tp!1920618))))

(declare-fun b!6964714 () Bool)

(declare-fun tp!1920621 () Bool)

(assert (=> b!6964714 (= e!4187247 tp!1920621)))

(declare-fun b!6964715 () Bool)

(assert (=> b!6964715 (= e!4187249 tp_is_empty!43437)))

(declare-fun b!6964716 () Bool)

(declare-fun tp!1920629 () Bool)

(declare-fun tp!1920630 () Bool)

(assert (=> b!6964716 (= e!4187249 (and tp!1920629 tp!1920630))))

(declare-fun b!6964717 () Bool)

(assert (=> b!6964717 (= e!4187250 (not true))))

(declare-datatypes ((List!66898 0))(
  ( (Nil!66774) (Cons!66774 (h!73222 C!34482) (t!380641 List!66898)) )
))
(declare-fun s!9351 () List!66898)

(declare-fun matchR!9212 (Regex!17106 List!66898) Bool)

(declare-fun matchRSpec!4127 (Regex!17106 List!66898) Bool)

(assert (=> b!6964717 (= (matchR!9212 r!13765 s!9351) (matchRSpec!4127 r!13765 s!9351))))

(declare-datatypes ((Unit!160872 0))(
  ( (Unit!160873) )
))
(declare-fun lt!2479298 () Unit!160872)

(declare-fun mainMatchTheorem!4121 (Regex!17106 List!66898) Unit!160872)

(assert (=> b!6964717 (= lt!2479298 (mainMatchTheorem!4121 r!13765 s!9351))))

(declare-fun b!6964718 () Bool)

(declare-fun tp!1920627 () Bool)

(declare-fun tp!1920628 () Bool)

(assert (=> b!6964718 (= e!4187247 (and tp!1920627 tp!1920628))))

(declare-fun b!6964719 () Bool)

(assert (=> b!6964719 (= e!4187247 tp_is_empty!43437)))

(assert (= (and start!668144 res!2841674) b!6964708))

(assert (= (and b!6964708 res!2841673) b!6964717))

(assert (= (and start!668144 (is-Cons!66773 l!9142)) b!6964710))

(assert (= (and start!668144 (is-ElementMatch!17106 r!13765)) b!6964719))

(assert (= (and start!668144 (is-Concat!25951 r!13765)) b!6964718))

(assert (= (and start!668144 (is-Star!17106 r!13765)) b!6964714))

(assert (= (and start!668144 (is-Union!17106 r!13765)) b!6964713))

(assert (= (and start!668144 (is-Cons!66774 s!9351)) b!6964709))

(declare-fun rr!16 () Regex!17106)

(assert (= (and start!668144 (is-ElementMatch!17106 rr!16)) b!6964715))

(assert (= (and start!668144 (is-Concat!25951 rr!16)) b!6964712))

(assert (= (and start!668144 (is-Star!17106 rr!16)) b!6964711))

(assert (= (and start!668144 (is-Union!17106 rr!16)) b!6964716))

(declare-fun m!7657576 () Bool)

(assert (=> b!6964708 m!7657576))

(declare-fun m!7657578 () Bool)

(assert (=> start!668144 m!7657578))

(declare-fun m!7657580 () Bool)

(assert (=> b!6964717 m!7657580))

(declare-fun m!7657582 () Bool)

(assert (=> b!6964717 m!7657582))

(declare-fun m!7657584 () Bool)

(assert (=> b!6964717 m!7657584))

(push 1)

(assert tp_is_empty!43437)

(assert (not b!6964716))

(assert (not b!6964712))

(assert (not start!668144))

(assert (not b!6964713))

(assert (not b!6964714))

(assert (not b!6964709))

(assert (not b!6964708))

(assert (not b!6964718))

(assert (not b!6964711))

(assert (not b!6964710))

(assert (not b!6964717))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

