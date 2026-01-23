; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!725768 () Bool)

(assert start!725768)

(declare-fun b!7501574 () Bool)

(declare-fun res!3009307 () Bool)

(declare-fun e!4472361 () Bool)

(assert (=> b!7501574 (=> (not res!3009307) (not e!4472361))))

(declare-fun totalInputSize!226 () Int)

(declare-datatypes ((C!39618 0))(
  ( (C!39619 (val!30207 Int)) )
))
(declare-datatypes ((List!72388 0))(
  ( (Nil!72264) (Cons!72264 (h!78712 C!39618) (t!386957 List!72388)) )
))
(declare-fun totalInput!779 () List!72388)

(declare-fun size!42217 (List!72388) Int)

(assert (=> b!7501574 (= res!3009307 (= totalInputSize!226 (size!42217 totalInput!779)))))

(declare-fun b!7501575 () Bool)

(declare-fun e!4472358 () Bool)

(declare-fun tp_is_empty!49633 () Bool)

(declare-fun tp!2177553 () Bool)

(assert (=> b!7501575 (= e!4472358 (and tp_is_empty!49633 tp!2177553))))

(declare-fun res!3009306 () Bool)

(assert (=> start!725768 (=> (not res!3009306) (not e!4472361))))

(declare-fun lt!2631936 () List!72388)

(assert (=> start!725768 (= res!3009306 (= lt!2631936 totalInput!779))))

(declare-fun testedP!204 () List!72388)

(declare-fun testedSuffix!164 () List!72388)

(declare-fun ++!17275 (List!72388 List!72388) List!72388)

(assert (=> start!725768 (= lt!2631936 (++!17275 testedP!204 testedSuffix!164))))

(assert (=> start!725768 e!4472361))

(assert (=> start!725768 e!4472358))

(assert (=> start!725768 true))

(declare-fun e!4472360 () Bool)

(assert (=> start!725768 e!4472360))

(declare-fun e!4472359 () Bool)

(assert (=> start!725768 e!4472359))

(declare-fun b!7501576 () Bool)

(declare-fun tp!2177552 () Bool)

(assert (=> b!7501576 (= e!4472360 (and tp_is_empty!49633 tp!2177552))))

(declare-fun b!7501577 () Bool)

(declare-fun e!4472357 () Bool)

(assert (=> b!7501577 (= e!4472361 (not e!4472357))))

(declare-fun res!3009305 () Bool)

(assert (=> b!7501577 (=> res!3009305 e!4472357)))

(declare-fun isPrefix!5942 (List!72388 List!72388) Bool)

(assert (=> b!7501577 (= res!3009305 (not (isPrefix!5942 testedP!204 totalInput!779)))))

(assert (=> b!7501577 (isPrefix!5942 testedP!204 lt!2631936)))

(declare-datatypes ((Unit!166178 0))(
  ( (Unit!166179) )
))
(declare-fun lt!2631937 () Unit!166178)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3655 (List!72388 List!72388) Unit!166178)

(assert (=> b!7501577 (= lt!2631937 (lemmaConcatTwoListThenFirstIsPrefix!3655 testedP!204 testedSuffix!164))))

(declare-fun b!7501578 () Bool)

(assert (=> b!7501578 (= e!4472357 true)))

(declare-fun lt!2631935 () List!72388)

(declare-fun getSuffix!3444 (List!72388 List!72388) List!72388)

(assert (=> b!7501578 (= lt!2631935 (++!17275 testedP!204 (getSuffix!3444 totalInput!779 testedP!204)))))

(declare-fun b!7501579 () Bool)

(declare-fun res!3009308 () Bool)

(assert (=> b!7501579 (=> (not res!3009308) (not e!4472361))))

(declare-fun testedPSize!164 () Int)

(assert (=> b!7501579 (= res!3009308 (= testedPSize!164 (size!42217 testedP!204)))))

(declare-fun b!7501580 () Bool)

(declare-fun tp!2177554 () Bool)

(assert (=> b!7501580 (= e!4472359 (and tp_is_empty!49633 tp!2177554))))

(assert (= (and start!725768 res!3009306) b!7501579))

(assert (= (and b!7501579 res!3009308) b!7501574))

(assert (= (and b!7501574 res!3009307) b!7501577))

(assert (= (and b!7501577 (not res!3009305)) b!7501578))

(assert (= (and start!725768 (is-Cons!72264 testedSuffix!164)) b!7501575))

(assert (= (and start!725768 (is-Cons!72264 totalInput!779)) b!7501576))

(assert (= (and start!725768 (is-Cons!72264 testedP!204)) b!7501580))

(declare-fun m!8083226 () Bool)

(assert (=> b!7501578 m!8083226))

(assert (=> b!7501578 m!8083226))

(declare-fun m!8083228 () Bool)

(assert (=> b!7501578 m!8083228))

(declare-fun m!8083230 () Bool)

(assert (=> start!725768 m!8083230))

(declare-fun m!8083232 () Bool)

(assert (=> b!7501579 m!8083232))

(declare-fun m!8083234 () Bool)

(assert (=> b!7501577 m!8083234))

(declare-fun m!8083236 () Bool)

(assert (=> b!7501577 m!8083236))

(declare-fun m!8083238 () Bool)

(assert (=> b!7501577 m!8083238))

(declare-fun m!8083240 () Bool)

(assert (=> b!7501574 m!8083240))

(push 1)

(assert (not b!7501578))

(assert (not b!7501579))

(assert (not b!7501577))

(assert (not b!7501574))

(assert (not b!7501580))

(assert (not start!725768))

(assert (not b!7501576))

(assert tp_is_empty!49633)

(assert (not b!7501575))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

