; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!752754 () Bool)

(assert start!752754)

(declare-fun b!7999863 () Bool)

(declare-fun e!4712764 () Bool)

(declare-fun tp_is_empty!53699 () Bool)

(declare-fun tp!2392803 () Bool)

(assert (=> b!7999863 (= e!4712764 (and tp_is_empty!53699 tp!2392803))))

(declare-fun b!7999864 () Bool)

(declare-fun e!4712765 () Bool)

(assert (=> b!7999864 (= e!4712765 tp_is_empty!53699)))

(declare-fun b!7999865 () Bool)

(declare-fun tp!2392804 () Bool)

(declare-fun tp!2392806 () Bool)

(assert (=> b!7999865 (= e!4712765 (and tp!2392804 tp!2392806))))

(declare-fun b!7999866 () Bool)

(declare-fun tp!2392808 () Bool)

(declare-fun tp!2392807 () Bool)

(assert (=> b!7999866 (= e!4712765 (and tp!2392808 tp!2392807))))

(declare-fun b!7999867 () Bool)

(declare-fun res!3163764 () Bool)

(declare-fun e!4712766 () Bool)

(assert (=> b!7999867 (=> (not res!3163764) (not e!4712766))))

(declare-datatypes ((C!43494 0))(
  ( (C!43495 (val!32295 Int)) )
))
(declare-datatypes ((List!74807 0))(
  ( (Nil!74683) (Cons!74683 (h!81131 C!43494) (t!390550 List!74807)) )
))
(declare-fun input!8006 () List!74807)

(assert (=> b!7999867 (= res!3163764 (is-Cons!74683 input!8006))))

(declare-fun res!3163763 () Bool)

(assert (=> start!752754 (=> (not res!3163763) (not e!4712766))))

(declare-datatypes ((Regex!21578 0))(
  ( (ElementMatch!21578 (c!1468787 C!43494)) (Concat!30577 (regOne!43668 Regex!21578) (regTwo!43668 Regex!21578)) (EmptyExpr!21578) (Star!21578 (reg!21907 Regex!21578)) (EmptyLang!21578) (Union!21578 (regOne!43669 Regex!21578) (regTwo!43669 Regex!21578)) )
))
(declare-fun r!24748 () Regex!21578)

(declare-fun validRegex!11882 (Regex!21578) Bool)

(assert (=> start!752754 (= res!3163763 (validRegex!11882 r!24748))))

(assert (=> start!752754 e!4712766))

(assert (=> start!752754 e!4712765))

(assert (=> start!752754 e!4712764))

(declare-fun b!7999868 () Bool)

(declare-fun tp!2392805 () Bool)

(assert (=> b!7999868 (= e!4712765 tp!2392805)))

(declare-fun b!7999869 () Bool)

(assert (=> b!7999869 (= e!4712766 false)))

(declare-fun lt!2713632 () Bool)

(declare-fun derivativeStep!6593 (Regex!21578 C!43494) Regex!21578)

(assert (=> b!7999869 (= lt!2713632 (validRegex!11882 (derivativeStep!6593 r!24748 (h!81131 input!8006))))))

(assert (= (and start!752754 res!3163763) b!7999867))

(assert (= (and b!7999867 res!3163764) b!7999869))

(assert (= (and start!752754 (is-ElementMatch!21578 r!24748)) b!7999864))

(assert (= (and start!752754 (is-Concat!30577 r!24748)) b!7999865))

(assert (= (and start!752754 (is-Star!21578 r!24748)) b!7999868))

(assert (= (and start!752754 (is-Union!21578 r!24748)) b!7999866))

(assert (= (and start!752754 (is-Cons!74683 input!8006)) b!7999863))

(declare-fun m!8368134 () Bool)

(assert (=> start!752754 m!8368134))

(declare-fun m!8368136 () Bool)

(assert (=> b!7999869 m!8368136))

(assert (=> b!7999869 m!8368136))

(declare-fun m!8368138 () Bool)

(assert (=> b!7999869 m!8368138))

(push 1)

(assert tp_is_empty!53699)

(assert (not b!7999866))

(assert (not b!7999869))

(assert (not b!7999863))

(assert (not b!7999868))

(assert (not b!7999865))

(assert (not start!752754))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

