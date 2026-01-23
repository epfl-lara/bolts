; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252180 () Bool)

(assert start!252180)

(declare-fun b!2597818 () Bool)

(assert (=> b!2597818 true))

(declare-fun b!2597814 () Bool)

(declare-fun e!1639684 () Bool)

(declare-fun tp_is_empty!13517 () Bool)

(declare-fun tp!823399 () Bool)

(assert (=> b!2597814 (= e!1639684 (and tp_is_empty!13517 tp!823399))))

(declare-fun b!2597815 () Bool)

(declare-fun res!1093726 () Bool)

(declare-fun e!1639685 () Bool)

(assert (=> b!2597815 (=> (not res!1093726) (not e!1639685))))

(declare-fun e!1639681 () Bool)

(assert (=> b!2597815 (= res!1093726 e!1639681)))

(declare-fun res!1093724 () Bool)

(assert (=> b!2597815 (=> res!1093724 e!1639681)))

(declare-datatypes ((B!2237 0))(
  ( (B!2238 (val!9586 Int)) )
))
(declare-datatypes ((List!30019 0))(
  ( (Nil!29919) (Cons!29919 (h!35339 B!2237) (t!213032 List!30019)) )
))
(declare-fun l1!1546 () List!30019)

(get-info :version)

(assert (=> b!2597815 (= res!1093724 (not ((_ is Cons!29919) l1!1546)))))

(declare-fun b!2597816 () Bool)

(declare-fun res!1093725 () Bool)

(assert (=> b!2597816 (=> (not res!1093725) (not e!1639685))))

(declare-fun e!1639683 () Bool)

(assert (=> b!2597816 (= res!1093725 e!1639683)))

(declare-fun res!1093723 () Bool)

(assert (=> b!2597816 (=> res!1093723 e!1639683)))

(assert (=> b!2597816 (= res!1093723 (not ((_ is Cons!29919) l1!1546)))))

(declare-fun b!2597817 () Bool)

(declare-fun res!1093722 () Bool)

(assert (=> b!2597817 (=> (not res!1093722) (not e!1639685))))

(declare-fun l2!1515 () List!30019)

(declare-fun size!23224 (List!30019) Int)

(assert (=> b!2597817 (= res!1093722 (> (size!23224 l1!1546) (size!23224 l2!1515)))))

(declare-fun res!1093720 () Bool)

(assert (=> b!2597818 (=> (not res!1093720) (not e!1639685))))

(declare-fun lambda!97226 () Int)

(declare-fun forall!6156 (List!30019 Int) Bool)

(assert (=> b!2597818 (= res!1093720 (forall!6156 l2!1515 lambda!97226))))

(declare-fun b!2597819 () Bool)

(declare-fun e!1639682 () Bool)

(declare-fun tp!823400 () Bool)

(assert (=> b!2597819 (= e!1639682 (and tp_is_empty!13517 tp!823400))))

(declare-fun b!2597820 () Bool)

(assert (=> b!2597820 (= e!1639685 (not ((_ is Nil!29919) l1!1546)))))

(declare-fun res!1093721 () Bool)

(assert (=> start!252180 (=> (not res!1093721) (not e!1639685))))

(declare-fun noDuplicate!467 (List!30019) Bool)

(assert (=> start!252180 (= res!1093721 (noDuplicate!467 l1!1546))))

(assert (=> start!252180 e!1639685))

(assert (=> start!252180 e!1639682))

(assert (=> start!252180 e!1639684))

(declare-fun b!2597821 () Bool)

(declare-fun res!1093727 () Bool)

(assert (=> b!2597821 (=> (not res!1093727) (not e!1639685))))

(assert (=> b!2597821 (= res!1093727 (noDuplicate!467 l2!1515))))

(declare-fun b!2597822 () Bool)

(declare-fun contains!5467 (List!30019 B!2237) Bool)

(assert (=> b!2597822 (= e!1639681 (contains!5467 l2!1515 (h!35339 l1!1546)))))

(declare-fun b!2597823 () Bool)

(assert (=> b!2597823 (= e!1639683 (not (contains!5467 l2!1515 (h!35339 l1!1546))))))

(assert (= (and start!252180 res!1093721) b!2597821))

(assert (= (and b!2597821 res!1093727) b!2597817))

(assert (= (and b!2597817 res!1093722) b!2597818))

(assert (= (and b!2597818 res!1093720) b!2597816))

(assert (= (and b!2597816 (not res!1093723)) b!2597823))

(assert (= (and b!2597816 res!1093725) b!2597815))

(assert (= (and b!2597815 (not res!1093724)) b!2597822))

(assert (= (and b!2597815 res!1093726) b!2597820))

(assert (= (and start!252180 ((_ is Cons!29919) l1!1546)) b!2597819))

(assert (= (and start!252180 ((_ is Cons!29919) l2!1515)) b!2597814))

(declare-fun m!2934101 () Bool)

(assert (=> b!2597821 m!2934101))

(declare-fun m!2934103 () Bool)

(assert (=> b!2597823 m!2934103))

(assert (=> b!2597822 m!2934103))

(declare-fun m!2934105 () Bool)

(assert (=> b!2597818 m!2934105))

(declare-fun m!2934107 () Bool)

(assert (=> start!252180 m!2934107))

(declare-fun m!2934109 () Bool)

(assert (=> b!2597817 m!2934109))

(declare-fun m!2934111 () Bool)

(assert (=> b!2597817 m!2934111))

(check-sat (not b!2597818) (not b!2597814) (not b!2597823) (not b!2597819) (not b!2597821) (not b!2597817) (not start!252180) (not b!2597822) tp_is_empty!13517)
(check-sat)
