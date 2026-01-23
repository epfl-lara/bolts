; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!726380 () Bool)

(assert start!726380)

(declare-fun b!7504790 () Bool)

(declare-fun res!3010773 () Bool)

(declare-fun e!4474664 () Bool)

(assert (=> b!7504790 (=> (not res!3010773) (not e!4474664))))

(declare-fun totalInputSize!226 () Int)

(declare-datatypes ((C!39706 0))(
  ( (C!39707 (val!30251 Int)) )
))
(declare-datatypes ((List!72477 0))(
  ( (Nil!72353) (Cons!72353 (h!78801 C!39706) (t!387046 List!72477)) )
))
(declare-fun totalInput!779 () List!72477)

(declare-fun size!42261 (List!72477) Int)

(assert (=> b!7504790 (= res!3010773 (= totalInputSize!226 (size!42261 totalInput!779)))))

(declare-fun b!7504791 () Bool)

(declare-fun e!4474667 () Bool)

(assert (=> b!7504791 (= e!4474664 (not e!4474667))))

(declare-fun res!3010776 () Bool)

(assert (=> b!7504791 (=> res!3010776 e!4474667)))

(declare-fun testedP!204 () List!72477)

(declare-fun isPrefix!5984 (List!72477 List!72477) Bool)

(assert (=> b!7504791 (= res!3010776 (not (isPrefix!5984 testedP!204 totalInput!779)))))

(declare-fun lt!2634205 () List!72477)

(assert (=> b!7504791 (isPrefix!5984 testedP!204 lt!2634205)))

(declare-datatypes ((Unit!166330 0))(
  ( (Unit!166331) )
))
(declare-fun lt!2634207 () Unit!166330)

(declare-fun testedSuffix!164 () List!72477)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3697 (List!72477 List!72477) Unit!166330)

(assert (=> b!7504791 (= lt!2634207 (lemmaConcatTwoListThenFirstIsPrefix!3697 testedP!204 testedSuffix!164))))

(declare-fun b!7504792 () Bool)

(declare-fun e!4474665 () Bool)

(declare-fun tp_is_empty!49721 () Bool)

(declare-fun tp!2178478 () Bool)

(assert (=> b!7504792 (= e!4474665 (and tp_is_empty!49721 tp!2178478))))

(declare-fun b!7504793 () Bool)

(declare-fun res!3010774 () Bool)

(assert (=> b!7504793 (=> (not res!3010774) (not e!4474664))))

(declare-fun testedPSize!164 () Int)

(assert (=> b!7504793 (= res!3010774 (= testedPSize!164 (size!42261 testedP!204)))))

(declare-fun b!7504794 () Bool)

(declare-fun e!4474663 () Bool)

(declare-fun tp!2178480 () Bool)

(assert (=> b!7504794 (= e!4474663 (and tp_is_empty!49721 tp!2178480))))

(declare-fun b!7504796 () Bool)

(declare-fun e!4474666 () Bool)

(declare-fun tp!2178479 () Bool)

(assert (=> b!7504796 (= e!4474666 (and tp_is_empty!49721 tp!2178479))))

(declare-fun b!7504795 () Bool)

(assert (=> b!7504795 (= e!4474667 true)))

(declare-fun lt!2634206 () List!72477)

(declare-fun getSuffix!3484 (List!72477 List!72477) List!72477)

(assert (=> b!7504795 (= lt!2634206 (getSuffix!3484 totalInput!779 testedP!204))))

(declare-fun res!3010775 () Bool)

(assert (=> start!726380 (=> (not res!3010775) (not e!4474664))))

(assert (=> start!726380 (= res!3010775 (= lt!2634205 totalInput!779))))

(declare-fun ++!17319 (List!72477 List!72477) List!72477)

(assert (=> start!726380 (= lt!2634205 (++!17319 testedP!204 testedSuffix!164))))

(assert (=> start!726380 e!4474664))

(assert (=> start!726380 e!4474666))

(assert (=> start!726380 true))

(assert (=> start!726380 e!4474663))

(assert (=> start!726380 e!4474665))

(assert (= (and start!726380 res!3010775) b!7504793))

(assert (= (and b!7504793 res!3010774) b!7504790))

(assert (= (and b!7504790 res!3010773) b!7504791))

(assert (= (and b!7504791 (not res!3010776)) b!7504795))

(assert (= (and start!726380 (is-Cons!72353 testedSuffix!164)) b!7504796))

(assert (= (and start!726380 (is-Cons!72353 totalInput!779)) b!7504794))

(assert (= (and start!726380 (is-Cons!72353 testedP!204)) b!7504792))

(declare-fun m!8087086 () Bool)

(assert (=> b!7504790 m!8087086))

(declare-fun m!8087088 () Bool)

(assert (=> b!7504795 m!8087088))

(declare-fun m!8087090 () Bool)

(assert (=> start!726380 m!8087090))

(declare-fun m!8087092 () Bool)

(assert (=> b!7504791 m!8087092))

(declare-fun m!8087094 () Bool)

(assert (=> b!7504791 m!8087094))

(declare-fun m!8087096 () Bool)

(assert (=> b!7504791 m!8087096))

(declare-fun m!8087098 () Bool)

(assert (=> b!7504793 m!8087098))

(push 1)

(assert (not b!7504794))

(assert (not b!7504796))

(assert (not b!7504790))

(assert tp_is_empty!49721)

(assert (not b!7504795))

(assert (not b!7504792))

(assert (not start!726380))

(assert (not b!7504793))

(assert (not b!7504791))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

