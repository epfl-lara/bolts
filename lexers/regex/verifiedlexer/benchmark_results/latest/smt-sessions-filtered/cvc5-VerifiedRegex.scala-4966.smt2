; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252334 () Bool)

(assert start!252334)

(declare-fun b!2598688 () Bool)

(declare-fun res!1094234 () Bool)

(declare-fun e!1640268 () Bool)

(assert (=> b!2598688 (=> (not res!1094234) (not e!1640268))))

(declare-datatypes ((B!2283 0))(
  ( (B!2284 (val!9609 Int)) )
))
(declare-datatypes ((List!30042 0))(
  ( (Nil!29942) (Cons!29942 (h!35362 B!2283) (t!213055 List!30042)) )
))
(declare-fun l!3796 () List!30042)

(declare-fun e!9468 () B!2283)

(declare-fun contains!5490 (List!30042 B!2283) Bool)

(assert (=> b!2598688 (= res!1094234 (contains!5490 l!3796 e!9468))))

(declare-fun res!1094232 () Bool)

(assert (=> start!252334 (=> (not res!1094232) (not e!1640268))))

(declare-fun noDuplicate!490 (List!30042) Bool)

(assert (=> start!252334 (= res!1094232 (noDuplicate!490 l!3796))))

(assert (=> start!252334 e!1640268))

(declare-fun e!1640269 () Bool)

(assert (=> start!252334 e!1640269))

(declare-fun tp_is_empty!13563 () Bool)

(assert (=> start!252334 tp_is_empty!13563))

(declare-fun b!2598691 () Bool)

(declare-fun tp!823531 () Bool)

(assert (=> b!2598691 (= e!1640269 (and tp_is_empty!13563 tp!823531))))

(declare-fun b!2598690 () Bool)

(declare-fun head!5895 (List!30042) B!2283)

(assert (=> b!2598690 (= e!1640268 (not (= (head!5895 l!3796) e!9468)))))

(declare-fun b!2598689 () Bool)

(declare-fun res!1094233 () Bool)

(assert (=> b!2598689 (=> (not res!1094233) (not e!1640268))))

(assert (=> b!2598689 (= res!1094233 (and (or (not (is-Cons!29942 l!3796)) (= (h!35362 l!3796) e!9468)) (is-Cons!29942 l!3796) (= (h!35362 l!3796) e!9468)))))

(assert (= (and start!252334 res!1094232) b!2598688))

(assert (= (and b!2598688 res!1094234) b!2598689))

(assert (= (and b!2598689 res!1094233) b!2598690))

(assert (= (and start!252334 (is-Cons!29942 l!3796)) b!2598691))

(declare-fun m!2934693 () Bool)

(assert (=> b!2598688 m!2934693))

(declare-fun m!2934695 () Bool)

(assert (=> start!252334 m!2934695))

(declare-fun m!2934697 () Bool)

(assert (=> b!2598690 m!2934697))

(push 1)

(assert (not b!2598688))

(assert (not start!252334))

(assert (not b!2598690))

(assert tp_is_empty!13563)

(assert (not b!2598691))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736355 () Bool)

(assert (=> d!736355 (= (head!5895 l!3796) (h!35362 l!3796))))

(assert (=> b!2598690 d!736355))

(declare-fun d!736357 () Bool)

(declare-fun lt!915002 () Bool)

(declare-fun content!4226 (List!30042) (Set B!2283))

(assert (=> d!736357 (= lt!915002 (set.member e!9468 (content!4226 l!3796)))))

(declare-fun e!1640284 () Bool)

(assert (=> d!736357 (= lt!915002 e!1640284)))

(declare-fun res!1094253 () Bool)

(assert (=> d!736357 (=> (not res!1094253) (not e!1640284))))

(assert (=> d!736357 (= res!1094253 (is-Cons!29942 l!3796))))

(assert (=> d!736357 (= (contains!5490 l!3796 e!9468) lt!915002)))

(declare-fun b!2598712 () Bool)

(declare-fun e!1640285 () Bool)

(assert (=> b!2598712 (= e!1640284 e!1640285)))

(declare-fun res!1094252 () Bool)

(assert (=> b!2598712 (=> res!1094252 e!1640285)))

(assert (=> b!2598712 (= res!1094252 (= (h!35362 l!3796) e!9468))))

(declare-fun b!2598713 () Bool)

(assert (=> b!2598713 (= e!1640285 (contains!5490 (t!213055 l!3796) e!9468))))

(assert (= (and d!736357 res!1094253) b!2598712))

(assert (= (and b!2598712 (not res!1094252)) b!2598713))

(declare-fun m!2934705 () Bool)

(assert (=> d!736357 m!2934705))

(declare-fun m!2934707 () Bool)

(assert (=> d!736357 m!2934707))

(declare-fun m!2934709 () Bool)

(assert (=> b!2598713 m!2934709))

(assert (=> b!2598688 d!736357))

(declare-fun d!736361 () Bool)

(declare-fun res!1094260 () Bool)

(declare-fun e!1640292 () Bool)

(assert (=> d!736361 (=> res!1094260 e!1640292)))

(assert (=> d!736361 (= res!1094260 (is-Nil!29942 l!3796))))

(assert (=> d!736361 (= (noDuplicate!490 l!3796) e!1640292)))

(declare-fun b!2598720 () Bool)

(declare-fun e!1640293 () Bool)

(assert (=> b!2598720 (= e!1640292 e!1640293)))

(declare-fun res!1094261 () Bool)

(assert (=> b!2598720 (=> (not res!1094261) (not e!1640293))))

(assert (=> b!2598720 (= res!1094261 (not (contains!5490 (t!213055 l!3796) (h!35362 l!3796))))))

(declare-fun b!2598721 () Bool)

(assert (=> b!2598721 (= e!1640293 (noDuplicate!490 (t!213055 l!3796)))))

(assert (= (and d!736361 (not res!1094260)) b!2598720))

(assert (= (and b!2598720 res!1094261) b!2598721))

(declare-fun m!2934715 () Bool)

(assert (=> b!2598720 m!2934715))

(declare-fun m!2934717 () Bool)

(assert (=> b!2598721 m!2934717))

(assert (=> start!252334 d!736361))

(declare-fun b!2598730 () Bool)

(declare-fun e!1640300 () Bool)

(declare-fun tp!823537 () Bool)

(assert (=> b!2598730 (= e!1640300 (and tp_is_empty!13563 tp!823537))))

(assert (=> b!2598691 (= tp!823531 e!1640300)))

(assert (= (and b!2598691 (is-Cons!29942 (t!213055 l!3796))) b!2598730))

(push 1)

(assert (not b!2598713))

(assert (not b!2598721))

(assert (not b!2598730))

(assert (not b!2598720))

(assert tp_is_empty!13563)

(assert (not d!736357))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

