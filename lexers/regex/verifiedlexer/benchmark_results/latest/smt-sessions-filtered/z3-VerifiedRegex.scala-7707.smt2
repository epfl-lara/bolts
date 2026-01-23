; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405222 () Bool)

(assert start!405222)

(declare-fun res!1741794 () Bool)

(declare-fun e!2629456 () Bool)

(assert (=> start!405222 (=> (not res!1741794) (not e!2629456))))

(declare-datatypes ((B!2781 0))(
  ( (B!2782 (val!15092 Int)) )
))
(declare-datatypes ((List!46889 0))(
  ( (Nil!46765) (Cons!46765 (h!52185 B!2781) (t!349592 List!46889)) )
))
(declare-fun l!3106 () List!46889)

(declare-fun e1!42 () B!2781)

(declare-fun contains!9709 (List!46889 B!2781) Bool)

(assert (=> start!405222 (= res!1741794 (contains!9709 l!3106 e1!42))))

(assert (=> start!405222 e!2629456))

(declare-fun e!2629458 () Bool)

(assert (=> start!405222 e!2629458))

(declare-fun tp_is_empty!22597 () Bool)

(assert (=> start!405222 tp_is_empty!22597))

(declare-fun b!4234823 () Bool)

(declare-fun e!2629455 () Bool)

(assert (=> b!4234823 (= e!2629455 (not true))))

(declare-fun e2!42 () B!2781)

(assert (=> b!4234823 (= e1!42 e2!42)))

(declare-datatypes ((Unit!65909 0))(
  ( (Unit!65910) )
))
(declare-fun lt!1505673 () Unit!65909)

(declare-fun lt!1505672 () List!46889)

(declare-fun lemmaSameIndexThenSameElement!266 (List!46889 B!2781 B!2781) Unit!65909)

(assert (=> b!4234823 (= lt!1505673 (lemmaSameIndexThenSameElement!266 lt!1505672 e1!42 e2!42))))

(declare-fun b!4234824 () Bool)

(declare-fun res!1741792 () Bool)

(assert (=> b!4234824 (=> (not res!1741792) (not e!2629455))))

(assert (=> b!4234824 (= res!1741792 (contains!9709 lt!1505672 e2!42))))

(declare-fun b!4234825 () Bool)

(declare-fun e!2629457 () Bool)

(assert (=> b!4234825 (= e!2629456 e!2629457)))

(declare-fun res!1741796 () Bool)

(assert (=> b!4234825 (=> (not res!1741796) (not e!2629457))))

(declare-fun lt!1505674 () Int)

(declare-fun getIndex!908 (List!46889 B!2781) Int)

(assert (=> b!4234825 (= res!1741796 (= lt!1505674 (getIndex!908 l!3106 e2!42)))))

(assert (=> b!4234825 (= lt!1505674 (getIndex!908 l!3106 e1!42))))

(declare-fun b!4234826 () Bool)

(declare-fun tp!1296652 () Bool)

(assert (=> b!4234826 (= e!2629458 (and tp_is_empty!22597 tp!1296652))))

(declare-fun b!4234827 () Bool)

(assert (=> b!4234827 (= e!2629457 e!2629455)))

(declare-fun res!1741795 () Bool)

(assert (=> b!4234827 (=> (not res!1741795) (not e!2629455))))

(assert (=> b!4234827 (= res!1741795 (contains!9709 lt!1505672 e1!42))))

(declare-fun tail!6834 (List!46889) List!46889)

(assert (=> b!4234827 (= lt!1505672 (tail!6834 l!3106))))

(declare-fun b!4234828 () Bool)

(declare-fun res!1741790 () Bool)

(assert (=> b!4234828 (=> (not res!1741790) (not e!2629456))))

(assert (=> b!4234828 (= res!1741790 (contains!9709 l!3106 e2!42))))

(declare-fun b!4234829 () Bool)

(declare-fun res!1741793 () Bool)

(assert (=> b!4234829 (=> (not res!1741793) (not e!2629455))))

(assert (=> b!4234829 (= res!1741793 (= (getIndex!908 lt!1505672 e1!42) (getIndex!908 lt!1505672 e2!42)))))

(declare-fun b!4234830 () Bool)

(declare-fun res!1741791 () Bool)

(assert (=> b!4234830 (=> (not res!1741791) (not e!2629457))))

(assert (=> b!4234830 (= res!1741791 (not (= lt!1505674 0)))))

(assert (= (and start!405222 res!1741794) b!4234828))

(assert (= (and b!4234828 res!1741790) b!4234825))

(assert (= (and b!4234825 res!1741796) b!4234830))

(assert (= (and b!4234830 res!1741791) b!4234827))

(assert (= (and b!4234827 res!1741795) b!4234824))

(assert (= (and b!4234824 res!1741792) b!4234829))

(assert (= (and b!4234829 res!1741793) b!4234823))

(get-info :version)

(assert (= (and start!405222 ((_ is Cons!46765) l!3106)) b!4234826))

(declare-fun m!4820823 () Bool)

(assert (=> b!4234824 m!4820823))

(declare-fun m!4820825 () Bool)

(assert (=> b!4234829 m!4820825))

(declare-fun m!4820827 () Bool)

(assert (=> b!4234829 m!4820827))

(declare-fun m!4820829 () Bool)

(assert (=> b!4234825 m!4820829))

(declare-fun m!4820831 () Bool)

(assert (=> b!4234825 m!4820831))

(declare-fun m!4820833 () Bool)

(assert (=> b!4234823 m!4820833))

(declare-fun m!4820835 () Bool)

(assert (=> b!4234827 m!4820835))

(declare-fun m!4820837 () Bool)

(assert (=> b!4234827 m!4820837))

(declare-fun m!4820839 () Bool)

(assert (=> b!4234828 m!4820839))

(declare-fun m!4820841 () Bool)

(assert (=> start!405222 m!4820841))

(check-sat (not b!4234828) (not b!4234823) (not b!4234824) (not b!4234825) (not start!405222) tp_is_empty!22597 (not b!4234829) (not b!4234826) (not b!4234827))
(check-sat)
