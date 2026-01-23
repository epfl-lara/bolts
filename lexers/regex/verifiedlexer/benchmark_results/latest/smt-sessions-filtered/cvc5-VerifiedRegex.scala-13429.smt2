; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!726408 () Bool)

(assert start!726408)

(declare-fun b!7504980 () Bool)

(declare-fun e!4474789 () Bool)

(declare-fun tp_is_empty!49729 () Bool)

(declare-fun tp!2178526 () Bool)

(assert (=> b!7504980 (= e!4474789 (and tp_is_empty!49729 tp!2178526))))

(declare-fun b!7504981 () Bool)

(declare-fun e!4474791 () Bool)

(declare-datatypes ((C!39714 0))(
  ( (C!39715 (val!30255 Int)) )
))
(declare-datatypes ((List!72481 0))(
  ( (Nil!72357) (Cons!72357 (h!78805 C!39714) (t!387050 List!72481)) )
))
(declare-fun lt!2634273 () List!72481)

(declare-fun testedSuffix!164 () List!72481)

(assert (=> b!7504981 (= e!4474791 (= lt!2634273 testedSuffix!164))))

(assert (=> b!7504981 (= testedSuffix!164 lt!2634273)))

(declare-fun totalInput!779 () List!72481)

(declare-fun testedP!204 () List!72481)

(declare-datatypes ((Unit!166338 0))(
  ( (Unit!166339) )
))
(declare-fun lt!2634276 () Unit!166338)

(declare-fun lemmaSamePrefixThenSameSuffix!2787 (List!72481 List!72481 List!72481 List!72481 List!72481) Unit!166338)

(assert (=> b!7504981 (= lt!2634276 (lemmaSamePrefixThenSameSuffix!2787 testedP!204 testedSuffix!164 testedP!204 lt!2634273 totalInput!779))))

(declare-fun getSuffix!3488 (List!72481 List!72481) List!72481)

(assert (=> b!7504981 (= lt!2634273 (getSuffix!3488 totalInput!779 testedP!204))))

(declare-fun b!7504982 () Bool)

(declare-fun e!4474787 () Bool)

(assert (=> b!7504982 (= e!4474787 (not e!4474791))))

(declare-fun res!3010871 () Bool)

(assert (=> b!7504982 (=> res!3010871 e!4474791)))

(declare-fun isPrefix!5988 (List!72481 List!72481) Bool)

(assert (=> b!7504982 (= res!3010871 (not (isPrefix!5988 testedP!204 totalInput!779)))))

(declare-fun lt!2634275 () List!72481)

(assert (=> b!7504982 (isPrefix!5988 testedP!204 lt!2634275)))

(declare-fun lt!2634274 () Unit!166338)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3701 (List!72481 List!72481) Unit!166338)

(assert (=> b!7504982 (= lt!2634274 (lemmaConcatTwoListThenFirstIsPrefix!3701 testedP!204 testedSuffix!164))))

(declare-fun b!7504983 () Bool)

(declare-fun e!4474790 () Bool)

(declare-fun tp!2178525 () Bool)

(assert (=> b!7504983 (= e!4474790 (and tp_is_empty!49729 tp!2178525))))

(declare-fun b!7504984 () Bool)

(declare-fun res!3010870 () Bool)

(assert (=> b!7504984 (=> (not res!3010870) (not e!4474787))))

(declare-fun totalInputSize!226 () Int)

(declare-fun size!42265 (List!72481) Int)

(assert (=> b!7504984 (= res!3010870 (= totalInputSize!226 (size!42265 totalInput!779)))))

(declare-fun b!7504985 () Bool)

(declare-fun e!4474788 () Bool)

(declare-fun tp!2178524 () Bool)

(assert (=> b!7504985 (= e!4474788 (and tp_is_empty!49729 tp!2178524))))

(declare-fun res!3010872 () Bool)

(assert (=> start!726408 (=> (not res!3010872) (not e!4474787))))

(assert (=> start!726408 (= res!3010872 (= lt!2634275 totalInput!779))))

(declare-fun ++!17323 (List!72481 List!72481) List!72481)

(assert (=> start!726408 (= lt!2634275 (++!17323 testedP!204 testedSuffix!164))))

(assert (=> start!726408 e!4474787))

(assert (=> start!726408 e!4474789))

(assert (=> start!726408 true))

(assert (=> start!726408 e!4474790))

(assert (=> start!726408 e!4474788))

(declare-fun b!7504986 () Bool)

(declare-fun res!3010869 () Bool)

(assert (=> b!7504986 (=> (not res!3010869) (not e!4474787))))

(declare-fun testedPSize!164 () Int)

(assert (=> b!7504986 (= res!3010869 (= testedPSize!164 (size!42265 testedP!204)))))

(assert (= (and start!726408 res!3010872) b!7504986))

(assert (= (and b!7504986 res!3010869) b!7504984))

(assert (= (and b!7504984 res!3010870) b!7504982))

(assert (= (and b!7504982 (not res!3010871)) b!7504981))

(assert (= (and start!726408 (is-Cons!72357 testedSuffix!164)) b!7504980))

(assert (= (and start!726408 (is-Cons!72357 totalInput!779)) b!7504983))

(assert (= (and start!726408 (is-Cons!72357 testedP!204)) b!7504985))

(declare-fun m!8087250 () Bool)

(assert (=> start!726408 m!8087250))

(declare-fun m!8087252 () Bool)

(assert (=> b!7504986 m!8087252))

(declare-fun m!8087254 () Bool)

(assert (=> b!7504981 m!8087254))

(declare-fun m!8087256 () Bool)

(assert (=> b!7504981 m!8087256))

(declare-fun m!8087258 () Bool)

(assert (=> b!7504984 m!8087258))

(declare-fun m!8087260 () Bool)

(assert (=> b!7504982 m!8087260))

(declare-fun m!8087262 () Bool)

(assert (=> b!7504982 m!8087262))

(declare-fun m!8087264 () Bool)

(assert (=> b!7504982 m!8087264))

(push 1)

(assert (not b!7504980))

(assert (not b!7504985))

(assert (not b!7504982))

(assert tp_is_empty!49729)

(assert (not b!7504983))

(assert (not b!7504981))

(assert (not start!726408))

(assert (not b!7504984))

(assert (not b!7504986))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

