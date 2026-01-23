; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466060 () Bool)

(assert start!466060)

(declare-fun b!4636969 () Bool)

(declare-fun e!2892665 () Bool)

(declare-fun e!2892666 () Bool)

(assert (=> b!4636969 (= e!2892665 e!2892666)))

(declare-fun res!1946603 () Bool)

(assert (=> b!4636969 (=> (not res!1946603) (not e!2892666))))

(declare-datatypes ((K!13030 0))(
  ( (K!13031 (val!18695 Int)) )
))
(declare-datatypes ((V!13276 0))(
  ( (V!13277 (val!18696 Int)) )
))
(declare-datatypes ((tuple2!52654 0))(
  ( (tuple2!52655 (_1!29621 K!13030) (_2!29621 V!13276)) )
))
(declare-datatypes ((List!51792 0))(
  ( (Nil!51668) (Cons!51668 (h!57760 tuple2!52654) (t!358866 List!51792)) )
))
(declare-datatypes ((ListMap!4373 0))(
  ( (ListMap!4374 (toList!5068 List!51792)) )
))
(declare-fun lt!1799793 () ListMap!4373)

(declare-fun key!4968 () K!13030)

(declare-fun contains!14797 (ListMap!4373 K!13030) Bool)

(assert (=> b!4636969 (= res!1946603 (contains!14797 lt!1799793 key!4968))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!51792)

(declare-datatypes ((tuple2!52656 0))(
  ( (tuple2!52657 (_1!29622 (_ BitVec 64)) (_2!29622 List!51792)) )
))
(declare-datatypes ((List!51793 0))(
  ( (Nil!51669) (Cons!51669 (h!57761 tuple2!52656) (t!358867 List!51793)) )
))
(declare-fun extractMap!1608 (List!51793) ListMap!4373)

(assert (=> b!4636969 (= lt!1799793 (extractMap!1608 (Cons!51669 (tuple2!52657 hash!414 oldBucket!40) Nil!51669)))))

(declare-fun b!4636970 () Bool)

(declare-fun tp_is_empty!29501 () Bool)

(declare-fun tp!1342551 () Bool)

(declare-fun tp_is_empty!29503 () Bool)

(declare-fun e!2892667 () Bool)

(assert (=> b!4636970 (= e!2892667 (and tp_is_empty!29501 tp_is_empty!29503 tp!1342551))))

(declare-fun res!1946602 () Bool)

(assert (=> start!466060 (=> (not res!1946602) (not e!2892665))))

(declare-fun noDuplicateKeys!1552 (List!51792) Bool)

(assert (=> start!466060 (= res!1946602 (noDuplicateKeys!1552 oldBucket!40))))

(assert (=> start!466060 e!2892665))

(assert (=> start!466060 true))

(declare-fun e!2892668 () Bool)

(assert (=> start!466060 e!2892668))

(assert (=> start!466060 tp_is_empty!29501))

(assert (=> start!466060 e!2892667))

(declare-fun b!4636971 () Bool)

(declare-fun res!1946601 () Bool)

(assert (=> b!4636971 (=> (not res!1946601) (not e!2892665))))

(declare-fun newBucket!224 () List!51792)

(declare-fun removePairForKey!1175 (List!51792 K!13030) List!51792)

(assert (=> b!4636971 (= res!1946601 (= (removePairForKey!1175 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4636972 () Bool)

(declare-fun res!1946604 () Bool)

(assert (=> b!4636972 (=> (not res!1946604) (not e!2892666))))

(declare-datatypes ((Hashable!5949 0))(
  ( (HashableExt!5948 (__x!31652 Int)) )
))
(declare-fun hashF!1389 () Hashable!5949)

(declare-fun allKeysSameHash!1406 (List!51792 (_ BitVec 64) Hashable!5949) Bool)

(assert (=> b!4636972 (= res!1946604 (allKeysSameHash!1406 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4636973 () Bool)

(declare-fun res!1946605 () Bool)

(assert (=> b!4636973 (=> (not res!1946605) (not e!2892665))))

(assert (=> b!4636973 (= res!1946605 (noDuplicateKeys!1552 newBucket!224))))

(declare-fun b!4636974 () Bool)

(assert (=> b!4636974 (= e!2892666 (not true))))

(declare-fun e!2892664 () Bool)

(assert (=> b!4636974 e!2892664))

(declare-fun res!1946607 () Bool)

(assert (=> b!4636974 (=> (not res!1946607) (not e!2892664))))

(declare-fun lt!1799792 () ListMap!4373)

(declare-fun addToMapMapFromBucket!1013 (List!51792 ListMap!4373) ListMap!4373)

(assert (=> b!4636974 (= res!1946607 (= lt!1799793 (addToMapMapFromBucket!1013 oldBucket!40 lt!1799792)))))

(assert (=> b!4636974 (= lt!1799792 (extractMap!1608 Nil!51669))))

(assert (=> b!4636974 true))

(declare-fun tp!1342550 () Bool)

(declare-fun b!4636975 () Bool)

(assert (=> b!4636975 (= e!2892668 (and tp_is_empty!29501 tp_is_empty!29503 tp!1342550))))

(declare-fun b!4636976 () Bool)

(declare-fun res!1946606 () Bool)

(assert (=> b!4636976 (=> (not res!1946606) (not e!2892666))))

(declare-fun hash!3628 (Hashable!5949 K!13030) (_ BitVec 64))

(assert (=> b!4636976 (= res!1946606 (= (hash!3628 hashF!1389 key!4968) hash!414))))

(declare-fun b!4636977 () Bool)

(declare-fun res!1946608 () Bool)

(assert (=> b!4636977 (=> (not res!1946608) (not e!2892665))))

(assert (=> b!4636977 (= res!1946608 (allKeysSameHash!1406 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4636978 () Bool)

(assert (=> b!4636978 (= e!2892664 (= lt!1799792 (ListMap!4374 Nil!51668)))))

(assert (= (and start!466060 res!1946602) b!4636973))

(assert (= (and b!4636973 res!1946605) b!4636971))

(assert (= (and b!4636971 res!1946601) b!4636977))

(assert (= (and b!4636977 res!1946608) b!4636969))

(assert (= (and b!4636969 res!1946603) b!4636976))

(assert (= (and b!4636976 res!1946606) b!4636972))

(assert (= (and b!4636972 res!1946604) b!4636974))

(assert (= (and b!4636974 res!1946607) b!4636978))

(get-info :version)

(assert (= (and start!466060 ((_ is Cons!51668) oldBucket!40)) b!4636975))

(assert (= (and start!466060 ((_ is Cons!51668) newBucket!224)) b!4636970))

(declare-fun m!5495003 () Bool)

(assert (=> b!4636972 m!5495003))

(declare-fun m!5495005 () Bool)

(assert (=> start!466060 m!5495005))

(declare-fun m!5495007 () Bool)

(assert (=> b!4636973 m!5495007))

(declare-fun m!5495009 () Bool)

(assert (=> b!4636971 m!5495009))

(declare-fun m!5495011 () Bool)

(assert (=> b!4636969 m!5495011))

(declare-fun m!5495013 () Bool)

(assert (=> b!4636969 m!5495013))

(declare-fun m!5495015 () Bool)

(assert (=> b!4636976 m!5495015))

(declare-fun m!5495017 () Bool)

(assert (=> b!4636974 m!5495017))

(declare-fun m!5495019 () Bool)

(assert (=> b!4636974 m!5495019))

(declare-fun m!5495021 () Bool)

(assert (=> b!4636977 m!5495021))

(check-sat (not b!4636976) (not b!4636972) (not b!4636977) (not b!4636975) tp_is_empty!29501 (not b!4636971) (not b!4636974) (not b!4636969) (not b!4636973) tp_is_empty!29503 (not b!4636970) (not start!466060))
(check-sat)
