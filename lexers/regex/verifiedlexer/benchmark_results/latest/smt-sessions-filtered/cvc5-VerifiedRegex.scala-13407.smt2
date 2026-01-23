; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!725800 () Bool)

(assert start!725800)

(declare-fun b!7501756 () Bool)

(declare-fun res!3009399 () Bool)

(declare-fun e!4472490 () Bool)

(assert (=> b!7501756 (=> (not res!3009399) (not e!4472490))))

(declare-fun totalInputSize!226 () Int)

(declare-datatypes ((C!39626 0))(
  ( (C!39627 (val!30211 Int)) )
))
(declare-datatypes ((List!72392 0))(
  ( (Nil!72268) (Cons!72268 (h!78716 C!39626) (t!386961 List!72392)) )
))
(declare-fun totalInput!779 () List!72392)

(declare-fun size!42221 (List!72392) Int)

(assert (=> b!7501756 (= res!3009399 (= totalInputSize!226 (size!42221 totalInput!779)))))

(declare-fun b!7501758 () Bool)

(declare-fun e!4472491 () Bool)

(declare-fun tp_is_empty!49641 () Bool)

(declare-fun tp!2177599 () Bool)

(assert (=> b!7501758 (= e!4472491 (and tp_is_empty!49641 tp!2177599))))

(declare-fun b!7501759 () Bool)

(declare-fun e!4472492 () Bool)

(assert (=> b!7501759 (= e!4472492 true)))

(declare-fun testedSuffix!164 () List!72392)

(declare-fun lt!2632031 () List!72392)

(assert (=> b!7501759 (= testedSuffix!164 lt!2632031)))

(declare-datatypes ((Unit!166186 0))(
  ( (Unit!166187) )
))
(declare-fun lt!2632033 () Unit!166186)

(declare-fun testedP!204 () List!72392)

(declare-fun lemmaSamePrefixThenSameSuffix!2751 (List!72392 List!72392 List!72392 List!72392 List!72392) Unit!166186)

(assert (=> b!7501759 (= lt!2632033 (lemmaSamePrefixThenSameSuffix!2751 testedP!204 testedSuffix!164 testedP!204 lt!2632031 totalInput!779))))

(declare-fun getSuffix!3448 (List!72392 List!72392) List!72392)

(assert (=> b!7501759 (= lt!2632031 (getSuffix!3448 totalInput!779 testedP!204))))

(declare-fun b!7501760 () Bool)

(assert (=> b!7501760 (= e!4472490 (not e!4472492))))

(declare-fun res!3009400 () Bool)

(assert (=> b!7501760 (=> res!3009400 e!4472492)))

(declare-fun isPrefix!5946 (List!72392 List!72392) Bool)

(assert (=> b!7501760 (= res!3009400 (not (isPrefix!5946 testedP!204 totalInput!779)))))

(declare-fun lt!2632034 () List!72392)

(assert (=> b!7501760 (isPrefix!5946 testedP!204 lt!2632034)))

(declare-fun lt!2632032 () Unit!166186)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3659 (List!72392 List!72392) Unit!166186)

(assert (=> b!7501760 (= lt!2632032 (lemmaConcatTwoListThenFirstIsPrefix!3659 testedP!204 testedSuffix!164))))

(declare-fun res!3009397 () Bool)

(assert (=> start!725800 (=> (not res!3009397) (not e!4472490))))

(assert (=> start!725800 (= res!3009397 (= lt!2632034 totalInput!779))))

(declare-fun ++!17279 (List!72392 List!72392) List!72392)

(assert (=> start!725800 (= lt!2632034 (++!17279 testedP!204 testedSuffix!164))))

(assert (=> start!725800 e!4472490))

(declare-fun e!4472493 () Bool)

(assert (=> start!725800 e!4472493))

(assert (=> start!725800 true))

(declare-fun e!4472489 () Bool)

(assert (=> start!725800 e!4472489))

(assert (=> start!725800 e!4472491))

(declare-fun b!7501757 () Bool)

(declare-fun tp!2177600 () Bool)

(assert (=> b!7501757 (= e!4472493 (and tp_is_empty!49641 tp!2177600))))

(declare-fun b!7501761 () Bool)

(declare-fun res!3009398 () Bool)

(assert (=> b!7501761 (=> (not res!3009398) (not e!4472490))))

(declare-fun testedPSize!164 () Int)

(assert (=> b!7501761 (= res!3009398 (= testedPSize!164 (size!42221 testedP!204)))))

(declare-fun b!7501762 () Bool)

(declare-fun tp!2177598 () Bool)

(assert (=> b!7501762 (= e!4472489 (and tp_is_empty!49641 tp!2177598))))

(assert (= (and start!725800 res!3009397) b!7501761))

(assert (= (and b!7501761 res!3009398) b!7501756))

(assert (= (and b!7501756 res!3009399) b!7501760))

(assert (= (and b!7501760 (not res!3009400)) b!7501759))

(assert (= (and start!725800 (is-Cons!72268 testedSuffix!164)) b!7501757))

(assert (= (and start!725800 (is-Cons!72268 totalInput!779)) b!7501762))

(assert (= (and start!725800 (is-Cons!72268 testedP!204)) b!7501758))

(declare-fun m!8083378 () Bool)

(assert (=> start!725800 m!8083378))

(declare-fun m!8083380 () Bool)

(assert (=> b!7501761 m!8083380))

(declare-fun m!8083382 () Bool)

(assert (=> b!7501756 m!8083382))

(declare-fun m!8083384 () Bool)

(assert (=> b!7501759 m!8083384))

(declare-fun m!8083386 () Bool)

(assert (=> b!7501759 m!8083386))

(declare-fun m!8083388 () Bool)

(assert (=> b!7501760 m!8083388))

(declare-fun m!8083390 () Bool)

(assert (=> b!7501760 m!8083390))

(declare-fun m!8083392 () Bool)

(assert (=> b!7501760 m!8083392))

(push 1)

(assert (not b!7501762))

(assert (not b!7501759))

(assert (not start!725800))

(assert (not b!7501761))

(assert tp_is_empty!49641)

(assert (not b!7501760))

(assert (not b!7501757))

(assert (not b!7501756))

(assert (not b!7501758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

