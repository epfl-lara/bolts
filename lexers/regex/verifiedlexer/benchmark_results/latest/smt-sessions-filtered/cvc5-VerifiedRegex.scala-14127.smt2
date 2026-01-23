; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742808 () Bool)

(assert start!742808)

(declare-fun res!3119540 () Bool)

(declare-fun e!4637141 () Bool)

(assert (=> start!742808 (=> (not res!3119540) (not e!4637141))))

(declare-datatypes ((B!4019 0))(
  ( (B!4020 (val!31651 Int)) )
))
(declare-datatypes ((List!73885 0))(
  ( (Nil!73761) (Cons!73761 (h!80209 B!4019) (t!388620 List!73885)) )
))
(declare-fun s1!502 () List!73885)

(declare-fun l!3495 () List!73885)

(declare-fun isPrefix!6362 (List!73885 List!73885) Bool)

(assert (=> start!742808 (= res!3119540 (isPrefix!6362 s1!502 l!3495))))

(assert (=> start!742808 e!4637141))

(declare-fun e!4637143 () Bool)

(assert (=> start!742808 e!4637143))

(declare-fun e!4637142 () Bool)

(assert (=> start!742808 e!4637142))

(declare-fun e!4637140 () Bool)

(assert (=> start!742808 e!4637140))

(declare-fun b!7842921 () Bool)

(declare-fun tp_is_empty!52451 () Bool)

(declare-fun tp!2321235 () Bool)

(assert (=> b!7842921 (= e!4637143 (and tp_is_empty!52451 tp!2321235))))

(declare-fun b!7842922 () Bool)

(declare-fun tp!2321237 () Bool)

(assert (=> b!7842922 (= e!4637142 (and tp_is_empty!52451 tp!2321237))))

(declare-fun b!7842923 () Bool)

(declare-fun res!3119539 () Bool)

(assert (=> b!7842923 (=> (not res!3119539) (not e!4637141))))

(declare-fun s2!461 () List!73885)

(assert (=> b!7842923 (= res!3119539 (isPrefix!6362 s2!461 l!3495))))

(declare-fun b!7842924 () Bool)

(declare-fun tp!2321236 () Bool)

(assert (=> b!7842924 (= e!4637140 (and tp_is_empty!52451 tp!2321236))))

(declare-fun b!7842925 () Bool)

(assert (=> b!7842925 (= e!4637141 false)))

(declare-fun lt!2678861 () Int)

(declare-fun size!42810 (List!73885) Int)

(assert (=> b!7842925 (= lt!2678861 (size!42810 s1!502))))

(declare-fun lt!2678860 () Int)

(assert (=> b!7842925 (= lt!2678860 (size!42810 s2!461))))

(assert (= (and start!742808 res!3119540) b!7842923))

(assert (= (and b!7842923 res!3119539) b!7842925))

(assert (= (and start!742808 (is-Cons!73761 s1!502)) b!7842921))

(assert (= (and start!742808 (is-Cons!73761 l!3495)) b!7842922))

(assert (= (and start!742808 (is-Cons!73761 s2!461)) b!7842924))

(declare-fun m!8255024 () Bool)

(assert (=> start!742808 m!8255024))

(declare-fun m!8255026 () Bool)

(assert (=> b!7842923 m!8255026))

(declare-fun m!8255028 () Bool)

(assert (=> b!7842925 m!8255028))

(declare-fun m!8255030 () Bool)

(assert (=> b!7842925 m!8255030))

(push 1)

(assert tp_is_empty!52451)

(assert (not b!7842921))

(assert (not b!7842923))

(assert (not b!7842922))

(assert (not start!742808))

(assert (not b!7842924))

(assert (not b!7842925))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

