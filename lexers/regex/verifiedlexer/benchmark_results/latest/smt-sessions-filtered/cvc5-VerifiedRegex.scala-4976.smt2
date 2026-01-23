; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252454 () Bool)

(assert start!252454)

(declare-fun b!2599204 () Bool)

(declare-fun res!1094588 () Bool)

(declare-fun e!1640602 () Bool)

(assert (=> b!2599204 (=> (not res!1094588) (not e!1640602))))

(declare-datatypes ((B!2323 0))(
  ( (B!2324 (val!9629 Int)) )
))
(declare-datatypes ((List!30062 0))(
  ( (Nil!29962) (Cons!29962 (h!35382 B!2323) (t!213075 List!30062)) )
))
(declare-fun l!3217 () List!30062)

(declare-fun e!9312 () B!2323)

(declare-fun contains!5510 (List!30062 B!2323) Bool)

(assert (=> b!2599204 (= res!1094588 (contains!5510 l!3217 e!9312))))

(declare-fun b!2599205 () Bool)

(declare-fun e!1640603 () Bool)

(declare-fun tp_is_empty!13603 () Bool)

(declare-fun tp!823627 () Bool)

(assert (=> b!2599205 (= e!1640603 (and tp_is_empty!13603 tp!823627))))

(declare-fun b!2599206 () Bool)

(declare-fun lt!915092 () List!30062)

(assert (=> b!2599206 (= e!1640602 (not (= lt!915092 (t!213075 l!3217))))))

(assert (=> b!2599206 (= (t!213075 l!3217) lt!915092)))

(declare-fun -!201 (List!30062 B!2323) List!30062)

(assert (=> b!2599206 (= lt!915092 (-!201 (t!213075 l!3217) e!9312))))

(declare-datatypes ((Unit!44001 0))(
  ( (Unit!44002) )
))
(declare-fun lt!915093 () Unit!44001)

(declare-fun lemmaNotContainedThenRemoveSameList!3 (List!30062 B!2323) Unit!44001)

(assert (=> b!2599206 (= lt!915093 (lemmaNotContainedThenRemoveSameList!3 (t!213075 l!3217) e!9312))))

(declare-fun b!2599207 () Bool)

(declare-fun res!1094592 () Bool)

(assert (=> b!2599207 (=> (not res!1094592) (not e!1640602))))

(assert (=> b!2599207 (= res!1094592 (not (contains!5510 (t!213075 l!3217) e!9312)))))

(declare-fun res!1094590 () Bool)

(assert (=> start!252454 (=> (not res!1094590) (not e!1640602))))

(declare-fun noDuplicate!510 (List!30062) Bool)

(assert (=> start!252454 (= res!1094590 (noDuplicate!510 l!3217))))

(assert (=> start!252454 e!1640602))

(assert (=> start!252454 e!1640603))

(assert (=> start!252454 tp_is_empty!13603))

(declare-fun b!2599208 () Bool)

(declare-fun res!1094591 () Bool)

(assert (=> b!2599208 (=> (not res!1094591) (not e!1640602))))

(declare-fun head!5907 (List!30062) B!2323)

(assert (=> b!2599208 (= res!1094591 (= (head!5907 l!3217) e!9312))))

(declare-fun b!2599209 () Bool)

(declare-fun res!1094589 () Bool)

(assert (=> b!2599209 (=> (not res!1094589) (not e!1640602))))

(assert (=> b!2599209 (= res!1094589 (and (is-Cons!29962 l!3217) (= (h!35382 l!3217) e!9312)))))

(assert (= (and start!252454 res!1094590) b!2599204))

(assert (= (and b!2599204 res!1094588) b!2599208))

(assert (= (and b!2599208 res!1094591) b!2599209))

(assert (= (and b!2599209 res!1094589) b!2599207))

(assert (= (and b!2599207 res!1094592) b!2599206))

(assert (= (and start!252454 (is-Cons!29962 l!3217)) b!2599205))

(declare-fun m!2935009 () Bool)

(assert (=> start!252454 m!2935009))

(declare-fun m!2935011 () Bool)

(assert (=> b!2599207 m!2935011))

(declare-fun m!2935013 () Bool)

(assert (=> b!2599206 m!2935013))

(declare-fun m!2935015 () Bool)

(assert (=> b!2599206 m!2935015))

(declare-fun m!2935017 () Bool)

(assert (=> b!2599208 m!2935017))

(declare-fun m!2935019 () Bool)

(assert (=> b!2599204 m!2935019))

(push 1)

(assert (not start!252454))

(assert (not b!2599204))

(assert tp_is_empty!13603)

(assert (not b!2599205))

(assert (not b!2599207))

(assert (not b!2599208))

(assert (not b!2599206))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

