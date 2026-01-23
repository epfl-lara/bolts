; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!749368 () Bool)

(assert start!749368)

(declare-fun b!7939589 () Bool)

(declare-fun e!4684793 () Bool)

(declare-fun tp!2360520 () Bool)

(declare-fun tp!2360516 () Bool)

(assert (=> b!7939589 (= e!4684793 (and tp!2360520 tp!2360516))))

(declare-fun b!7939590 () Bool)

(declare-fun e!4684792 () Bool)

(assert (=> b!7939590 (= e!4684792 (not true))))

(declare-datatypes ((C!43102 0))(
  ( (C!43103 (val!32095 Int)) )
))
(declare-datatypes ((List!74607 0))(
  ( (Nil!74483) (Cons!74483 (h!80931 C!43102) (t!390350 List!74607)) )
))
(declare-fun size!43317 (List!74607) Int)

(assert (=> b!7939590 (= 0 (size!43317 Nil!74483))))

(declare-datatypes ((Unit!169583 0))(
  ( (Unit!169584) )
))
(declare-fun lt!2695774 () Unit!169583)

(declare-fun lemmaSizeTrEqualsSize!473 (List!74607 Int) Unit!169583)

(assert (=> b!7939590 (= lt!2695774 (lemmaSizeTrEqualsSize!473 Nil!74483 0))))

(declare-fun input!6707 () List!74607)

(declare-fun sizeTr!474 (List!74607 Int) Int)

(assert (=> b!7939590 (= (sizeTr!474 input!6707 0) (size!43317 input!6707))))

(declare-fun lt!2695773 () Unit!169583)

(assert (=> b!7939590 (= lt!2695773 (lemmaSizeTrEqualsSize!473 input!6707 0))))

(declare-fun res!3149767 () Bool)

(assert (=> start!749368 (=> (not res!3149767) (not e!4684792))))

(declare-datatypes ((Regex!21382 0))(
  ( (ElementMatch!21382 (c!1458689 C!43102)) (Concat!30381 (regOne!43276 Regex!21382) (regTwo!43276 Regex!21382)) (EmptyExpr!21382) (Star!21382 (reg!21711 Regex!21382)) (EmptyLang!21382) (Union!21382 (regOne!43277 Regex!21382) (regTwo!43277 Regex!21382)) )
))
(declare-fun r!15416 () Regex!21382)

(declare-fun validRegex!11686 (Regex!21382) Bool)

(assert (=> start!749368 (= res!3149767 (validRegex!11686 r!15416))))

(assert (=> start!749368 e!4684792))

(assert (=> start!749368 e!4684793))

(declare-fun e!4684791 () Bool)

(assert (=> start!749368 e!4684791))

(declare-fun b!7939591 () Bool)

(declare-fun tp!2360518 () Bool)

(assert (=> b!7939591 (= e!4684793 tp!2360518)))

(declare-fun b!7939592 () Bool)

(declare-fun tp_is_empty!53299 () Bool)

(declare-fun tp!2360517 () Bool)

(assert (=> b!7939592 (= e!4684791 (and tp_is_empty!53299 tp!2360517))))

(declare-fun b!7939593 () Bool)

(assert (=> b!7939593 (= e!4684793 tp_is_empty!53299)))

(declare-fun b!7939594 () Bool)

(declare-fun tp!2360515 () Bool)

(declare-fun tp!2360519 () Bool)

(assert (=> b!7939594 (= e!4684793 (and tp!2360515 tp!2360519))))

(assert (= (and start!749368 res!3149767) b!7939590))

(assert (= (and start!749368 (is-ElementMatch!21382 r!15416)) b!7939593))

(assert (= (and start!749368 (is-Concat!30381 r!15416)) b!7939589))

(assert (= (and start!749368 (is-Star!21382 r!15416)) b!7939591))

(assert (= (and start!749368 (is-Union!21382 r!15416)) b!7939594))

(assert (= (and start!749368 (is-Cons!74483 input!6707)) b!7939592))

(declare-fun m!8329152 () Bool)

(assert (=> b!7939590 m!8329152))

(declare-fun m!8329154 () Bool)

(assert (=> b!7939590 m!8329154))

(declare-fun m!8329156 () Bool)

(assert (=> b!7939590 m!8329156))

(declare-fun m!8329158 () Bool)

(assert (=> b!7939590 m!8329158))

(declare-fun m!8329160 () Bool)

(assert (=> b!7939590 m!8329160))

(declare-fun m!8329162 () Bool)

(assert (=> start!749368 m!8329162))

(push 1)

(assert (not b!7939592))

(assert tp_is_empty!53299)

(assert (not b!7939590))

(assert (not start!749368))

(assert (not b!7939591))

(assert (not b!7939589))

(assert (not b!7939594))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

