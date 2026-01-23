; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252420 () Bool)

(assert start!252420)

(declare-fun b!2599060 () Bool)

(declare-fun res!1094481 () Bool)

(declare-fun e!1640509 () Bool)

(assert (=> b!2599060 (=> (not res!1094481) (not e!1640509))))

(declare-datatypes ((B!2313 0))(
  ( (B!2314 (val!9624 Int)) )
))
(declare-datatypes ((List!30057 0))(
  ( (Nil!29957) (Cons!29957 (h!35377 B!2313) (t!213070 List!30057)) )
))
(declare-fun l!3217 () List!30057)

(declare-fun e!9312 () B!2313)

(declare-fun head!5902 (List!30057) B!2313)

(assert (=> b!2599060 (= res!1094481 (= (head!5902 l!3217) e!9312))))

(declare-fun b!2599061 () Bool)

(declare-fun lt!915073 () List!30057)

(assert (=> b!2599061 (= e!1640509 (not (or (not (= lt!915073 (t!213070 l!3217))) (not (= l!3217 Nil!29957)))))))

(assert (=> b!2599061 (= (t!213070 l!3217) lt!915073)))

(declare-fun -!200 (List!30057 B!2313) List!30057)

(assert (=> b!2599061 (= lt!915073 (-!200 (t!213070 l!3217) e!9312))))

(declare-datatypes ((Unit!43999 0))(
  ( (Unit!44000) )
))
(declare-fun lt!915072 () Unit!43999)

(declare-fun lemmaNotContainedThenRemoveSameList!2 (List!30057 B!2313) Unit!43999)

(assert (=> b!2599061 (= lt!915072 (lemmaNotContainedThenRemoveSameList!2 (t!213070 l!3217) e!9312))))

(declare-fun res!1094479 () Bool)

(assert (=> start!252420 (=> (not res!1094479) (not e!1640509))))

(declare-fun noDuplicate!505 (List!30057) Bool)

(assert (=> start!252420 (= res!1094479 (noDuplicate!505 l!3217))))

(assert (=> start!252420 e!1640509))

(declare-fun e!1640508 () Bool)

(assert (=> start!252420 e!1640508))

(declare-fun tp_is_empty!13593 () Bool)

(assert (=> start!252420 tp_is_empty!13593))

(declare-fun b!2599062 () Bool)

(declare-fun res!1094483 () Bool)

(assert (=> b!2599062 (=> (not res!1094483) (not e!1640509))))

(get-info :version)

(assert (=> b!2599062 (= res!1094483 (and ((_ is Cons!29957) l!3217) (= (h!35377 l!3217) e!9312)))))

(declare-fun b!2599063 () Bool)

(declare-fun res!1094482 () Bool)

(assert (=> b!2599063 (=> (not res!1094482) (not e!1640509))))

(declare-fun contains!5505 (List!30057 B!2313) Bool)

(assert (=> b!2599063 (= res!1094482 (contains!5505 l!3217 e!9312))))

(declare-fun b!2599064 () Bool)

(declare-fun tp!823600 () Bool)

(assert (=> b!2599064 (= e!1640508 (and tp_is_empty!13593 tp!823600))))

(declare-fun b!2599065 () Bool)

(declare-fun res!1094480 () Bool)

(assert (=> b!2599065 (=> (not res!1094480) (not e!1640509))))

(assert (=> b!2599065 (= res!1094480 (not (contains!5505 (t!213070 l!3217) e!9312)))))

(assert (= (and start!252420 res!1094479) b!2599063))

(assert (= (and b!2599063 res!1094482) b!2599060))

(assert (= (and b!2599060 res!1094481) b!2599062))

(assert (= (and b!2599062 res!1094483) b!2599065))

(assert (= (and b!2599065 res!1094480) b!2599061))

(assert (= (and start!252420 ((_ is Cons!29957) l!3217)) b!2599064))

(declare-fun m!2934921 () Bool)

(assert (=> b!2599065 m!2934921))

(declare-fun m!2934923 () Bool)

(assert (=> b!2599060 m!2934923))

(declare-fun m!2934925 () Bool)

(assert (=> start!252420 m!2934925))

(declare-fun m!2934927 () Bool)

(assert (=> b!2599061 m!2934927))

(declare-fun m!2934929 () Bool)

(assert (=> b!2599061 m!2934929))

(declare-fun m!2934931 () Bool)

(assert (=> b!2599063 m!2934931))

(check-sat (not start!252420) (not b!2599061) (not b!2599060) tp_is_empty!13593 (not b!2599065) (not b!2599063) (not b!2599064))
(check-sat)
