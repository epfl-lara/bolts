; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!726352 () Bool)

(assert start!726352)

(declare-fun b!7504486 () Bool)

(declare-fun e!4474448 () Bool)

(declare-fun tp_is_empty!49705 () Bool)

(declare-fun tp!2178368 () Bool)

(assert (=> b!7504486 (= e!4474448 (and tp_is_empty!49705 tp!2178368))))

(declare-fun b!7504487 () Bool)

(declare-fun res!3010654 () Bool)

(declare-fun e!4474449 () Bool)

(assert (=> b!7504487 (=> (not res!3010654) (not e!4474449))))

(declare-fun totalInputSize!226 () Int)

(declare-datatypes ((C!39690 0))(
  ( (C!39691 (val!30243 Int)) )
))
(declare-datatypes ((List!72465 0))(
  ( (Nil!72341) (Cons!72341 (h!78789 C!39690) (t!387034 List!72465)) )
))
(declare-fun totalInput!779 () List!72465)

(declare-fun size!42253 (List!72465) Int)

(assert (=> b!7504487 (= res!3010654 (= totalInputSize!226 (size!42253 totalInput!779)))))

(declare-fun b!7504488 () Bool)

(declare-fun testedP!204 () List!72465)

(declare-fun isPrefix!5978 (List!72465 List!72465) Bool)

(assert (=> b!7504488 (= e!4474449 (not (isPrefix!5978 testedP!204 totalInput!779)))))

(declare-fun lt!2634059 () List!72465)

(assert (=> b!7504488 (isPrefix!5978 testedP!204 lt!2634059)))

(declare-datatypes ((Unit!166314 0))(
  ( (Unit!166315) )
))
(declare-fun lt!2634060 () Unit!166314)

(declare-fun testedSuffix!164 () List!72465)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3691 (List!72465 List!72465) Unit!166314)

(assert (=> b!7504488 (= lt!2634060 (lemmaConcatTwoListThenFirstIsPrefix!3691 testedP!204 testedSuffix!164))))

(declare-fun b!7504489 () Bool)

(declare-fun e!4474447 () Bool)

(declare-fun tp!2178366 () Bool)

(assert (=> b!7504489 (= e!4474447 (and tp_is_empty!49705 tp!2178366))))

(declare-fun b!7504490 () Bool)

(declare-fun res!3010653 () Bool)

(assert (=> b!7504490 (=> (not res!3010653) (not e!4474449))))

(declare-fun testedPSize!164 () Int)

(assert (=> b!7504490 (= res!3010653 (= testedPSize!164 (size!42253 testedP!204)))))

(declare-fun res!3010655 () Bool)

(assert (=> start!726352 (=> (not res!3010655) (not e!4474449))))

(assert (=> start!726352 (= res!3010655 (= lt!2634059 totalInput!779))))

(declare-fun ++!17311 (List!72465 List!72465) List!72465)

(assert (=> start!726352 (= lt!2634059 (++!17311 testedP!204 testedSuffix!164))))

(assert (=> start!726352 e!4474449))

(declare-fun e!4474450 () Bool)

(assert (=> start!726352 e!4474450))

(assert (=> start!726352 true))

(assert (=> start!726352 e!4474448))

(assert (=> start!726352 e!4474447))

(declare-fun b!7504491 () Bool)

(declare-fun tp!2178367 () Bool)

(assert (=> b!7504491 (= e!4474450 (and tp_is_empty!49705 tp!2178367))))

(assert (= (and start!726352 res!3010655) b!7504490))

(assert (= (and b!7504490 res!3010653) b!7504487))

(assert (= (and b!7504487 res!3010654) b!7504488))

(assert (= (and start!726352 (is-Cons!72341 testedSuffix!164)) b!7504491))

(assert (= (and start!726352 (is-Cons!72341 totalInput!779)) b!7504486))

(assert (= (and start!726352 (is-Cons!72341 testedP!204)) b!7504489))

(declare-fun m!8086858 () Bool)

(assert (=> b!7504487 m!8086858))

(declare-fun m!8086860 () Bool)

(assert (=> b!7504488 m!8086860))

(declare-fun m!8086862 () Bool)

(assert (=> b!7504488 m!8086862))

(declare-fun m!8086864 () Bool)

(assert (=> b!7504488 m!8086864))

(declare-fun m!8086866 () Bool)

(assert (=> b!7504490 m!8086866))

(declare-fun m!8086868 () Bool)

(assert (=> start!726352 m!8086868))

(push 1)

(assert (not b!7504490))

(assert (not b!7504488))

(assert (not start!726352))

(assert (not b!7504486))

(assert (not b!7504487))

(assert tp_is_empty!49705)

(assert (not b!7504489))

(assert (not b!7504491))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

