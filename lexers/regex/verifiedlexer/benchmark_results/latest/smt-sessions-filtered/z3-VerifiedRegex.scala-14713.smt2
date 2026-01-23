; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757994 () Bool)

(assert start!757994)

(declare-fun b!8048770 () Bool)

(declare-fun e!4742428 () Bool)

(declare-fun e!4742426 () Bool)

(assert (=> b!8048770 (= e!4742428 e!4742426)))

(declare-fun res!3181675 () Bool)

(assert (=> b!8048770 (=> (not res!3181675) (not e!4742426))))

(declare-datatypes ((K!22698 0))(
  ( (K!22699 (val!32831 Int)) )
))
(declare-datatypes ((V!22952 0))(
  ( (V!22953 (val!32832 Int)) )
))
(declare-datatypes ((tuple2!70796 0))(
  ( (tuple2!70797 (_1!38701 K!22698) (_2!38701 V!22952)) )
))
(declare-datatypes ((List!75605 0))(
  ( (Nil!75479) (Cons!75479 (h!81927 tuple2!70796) (t!391377 List!75605)) )
))
(declare-fun l!14636 () List!75605)

(declare-fun key!6222 () K!22698)

(declare-fun containsKey!4786 (List!75605 K!22698) Bool)

(assert (=> b!8048770 (= res!3181675 (containsKey!4786 l!14636 key!6222))))

(declare-fun b!8048771 () Bool)

(declare-fun e!4742427 () Bool)

(declare-fun tp!2413376 () Bool)

(assert (=> b!8048771 (= e!4742427 tp!2413376)))

(declare-fun tp_is_empty!54715 () Bool)

(declare-fun tp!2413377 () Bool)

(declare-fun e!4742423 () Bool)

(declare-fun b!8048772 () Bool)

(declare-fun tp_is_empty!54717 () Bool)

(assert (=> b!8048772 (= e!4742423 (and tp_is_empty!54715 tp_is_empty!54717 tp!2413377))))

(declare-fun b!8048773 () Bool)

(declare-fun e!4742424 () Bool)

(assert (=> b!8048773 (= e!4742424 (not (containsKey!4786 l!14636 key!6222)))))

(declare-fun b!8048774 () Bool)

(declare-fun res!3181674 () Bool)

(declare-fun e!4742425 () Bool)

(assert (=> b!8048774 (=> (not res!3181674) (not e!4742425))))

(declare-datatypes ((ListMap!7199 0))(
  ( (ListMap!7200 (toList!11874 List!75605)) )
))
(declare-fun acc!1298 () ListMap!7199)

(declare-fun contains!21096 (ListMap!7199 K!22698) Bool)

(declare-fun addToMapMapFromBucket!1941 (List!75605 ListMap!7199) ListMap!7199)

(assert (=> b!8048774 (= res!3181674 (contains!21096 (addToMapMapFromBucket!1941 l!14636 acc!1298) key!6222))))

(declare-fun res!3181678 () Bool)

(assert (=> start!757994 (=> (not res!3181678) (not e!4742425))))

(declare-fun noDuplicateKeys!2660 (List!75605) Bool)

(assert (=> start!757994 (= res!3181678 (noDuplicateKeys!2660 l!14636))))

(assert (=> start!757994 e!4742425))

(assert (=> start!757994 e!4742423))

(declare-fun inv!97187 (ListMap!7199) Bool)

(assert (=> start!757994 (and (inv!97187 acc!1298) e!4742427)))

(assert (=> start!757994 tp_is_empty!54715))

(assert (=> start!757994 tp_is_empty!54717))

(declare-fun b!8048775 () Bool)

(declare-fun res!3181677 () Bool)

(assert (=> b!8048775 (=> (not res!3181677) (not e!4742426))))

(declare-fun value!3131 () V!22952)

(declare-fun contains!21097 (List!75605 tuple2!70796) Bool)

(assert (=> b!8048775 (= res!3181677 (contains!21097 l!14636 (tuple2!70797 key!6222 value!3131)))))

(declare-fun b!8048776 () Bool)

(declare-fun lt!2723251 () Bool)

(assert (=> b!8048776 (= e!4742426 (not lt!2723251))))

(declare-fun b!8048777 () Bool)

(declare-fun res!3181673 () Bool)

(assert (=> b!8048777 (=> (not res!3181673) (not e!4742424))))

(declare-fun apply!14387 (ListMap!7199 K!22698) V!22952)

(assert (=> b!8048777 (= res!3181673 (= (apply!14387 acc!1298 key!6222) value!3131))))

(declare-fun b!8048778 () Bool)

(assert (=> b!8048778 (= e!4742425 false)))

(declare-fun lt!2723252 () Bool)

(assert (=> b!8048778 (= lt!2723252 e!4742428)))

(declare-fun res!3181676 () Bool)

(assert (=> b!8048778 (=> res!3181676 e!4742428)))

(assert (=> b!8048778 (= res!3181676 e!4742424)))

(declare-fun res!3181672 () Bool)

(assert (=> b!8048778 (=> (not res!3181672) (not e!4742424))))

(assert (=> b!8048778 (= res!3181672 lt!2723251)))

(assert (=> b!8048778 (= lt!2723251 (contains!21096 acc!1298 key!6222))))

(assert (= (and start!757994 res!3181678) b!8048774))

(assert (= (and b!8048774 res!3181674) b!8048778))

(assert (= (and b!8048778 res!3181672) b!8048777))

(assert (= (and b!8048777 res!3181673) b!8048773))

(assert (= (and b!8048778 (not res!3181676)) b!8048770))

(assert (= (and b!8048770 res!3181675) b!8048775))

(assert (= (and b!8048775 res!3181677) b!8048776))

(get-info :version)

(assert (= (and start!757994 ((_ is Cons!75479) l!14636)) b!8048772))

(assert (= start!757994 b!8048771))

(declare-fun m!8399950 () Bool)

(assert (=> b!8048770 m!8399950))

(declare-fun m!8399952 () Bool)

(assert (=> b!8048778 m!8399952))

(assert (=> b!8048773 m!8399950))

(declare-fun m!8399954 () Bool)

(assert (=> b!8048777 m!8399954))

(declare-fun m!8399956 () Bool)

(assert (=> start!757994 m!8399956))

(declare-fun m!8399958 () Bool)

(assert (=> start!757994 m!8399958))

(declare-fun m!8399960 () Bool)

(assert (=> b!8048774 m!8399960))

(assert (=> b!8048774 m!8399960))

(declare-fun m!8399962 () Bool)

(assert (=> b!8048774 m!8399962))

(declare-fun m!8399964 () Bool)

(assert (=> b!8048775 m!8399964))

(check-sat (not b!8048771) (not b!8048770) tp_is_empty!54715 (not b!8048778) (not b!8048773) (not b!8048772) (not b!8048774) (not start!757994) (not b!8048777) (not b!8048775) tp_is_empty!54717)
(check-sat)
