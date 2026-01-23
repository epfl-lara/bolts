; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!462476 () Bool)

(assert start!462476)

(declare-fun b!4619834 () Bool)

(declare-fun res!1936375 () Bool)

(declare-fun e!2881712 () Bool)

(assert (=> b!4619834 (=> (not res!1936375) (not e!2881712))))

(declare-datatypes ((Hashable!5873 0))(
  ( (HashableExt!5872 (__x!31576 Int)) )
))
(declare-fun hashF!1389 () Hashable!5873)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!12840 0))(
  ( (K!12841 (val!18543 Int)) )
))
(declare-datatypes ((V!13086 0))(
  ( (V!13087 (val!18544 Int)) )
))
(declare-datatypes ((tuple2!52350 0))(
  ( (tuple2!52351 (_1!29469 K!12840) (_2!29469 V!13086)) )
))
(declare-datatypes ((List!51578 0))(
  ( (Nil!51454) (Cons!51454 (h!57484 tuple2!52350) (t!358590 List!51578)) )
))
(declare-fun newBucket!224 () List!51578)

(declare-fun allKeysSameHash!1330 (List!51578 (_ BitVec 64) Hashable!5873) Bool)

(assert (=> b!4619834 (= res!1936375 (allKeysSameHash!1330 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4619835 () Bool)

(declare-fun e!2881705 () Bool)

(declare-fun e!2881707 () Bool)

(assert (=> b!4619835 (= e!2881705 e!2881707)))

(declare-fun res!1936378 () Bool)

(assert (=> b!4619835 (=> res!1936378 e!2881707)))

(declare-fun lt!1775684 () List!51578)

(declare-fun noDuplicateKeys!1476 (List!51578) Bool)

(assert (=> b!4619835 (= res!1936378 (not (noDuplicateKeys!1476 lt!1775684)))))

(declare-datatypes ((tuple2!52352 0))(
  ( (tuple2!52353 (_1!29470 (_ BitVec 64)) (_2!29470 List!51578)) )
))
(declare-datatypes ((List!51579 0))(
  ( (Nil!51455) (Cons!51455 (h!57485 tuple2!52352) (t!358591 List!51579)) )
))
(declare-fun lt!1775686 () List!51579)

(declare-fun key!4968 () K!12840)

(declare-datatypes ((ListMap!4221 0))(
  ( (ListMap!4222 (toList!4917 List!51578)) )
))
(declare-fun contains!14447 (ListMap!4221 K!12840) Bool)

(declare-fun extractMap!1532 (List!51579) ListMap!4221)

(assert (=> b!4619835 (contains!14447 (extractMap!1532 lt!1775686) key!4968)))

(declare-datatypes ((Unit!110816 0))(
  ( (Unit!110817) )
))
(declare-fun lt!1775679 () Unit!110816)

(declare-datatypes ((ListLongMap!3507 0))(
  ( (ListLongMap!3508 (toList!4918 List!51579)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!294 (ListLongMap!3507 K!12840 Hashable!5873) Unit!110816)

(assert (=> b!4619835 (= lt!1775679 (lemmaListContainsThenExtractedMapContains!294 (ListLongMap!3508 lt!1775686) key!4968 hashF!1389))))

(declare-fun oldBucket!40 () List!51578)

(assert (=> b!4619835 (= lt!1775686 (Cons!51455 (tuple2!52353 hash!414 (t!358590 oldBucket!40)) Nil!51455))))

(declare-fun b!4619836 () Bool)

(declare-fun e!2881711 () Bool)

(declare-fun e!2881714 () Bool)

(assert (=> b!4619836 (= e!2881711 e!2881714)))

(declare-fun res!1936382 () Bool)

(assert (=> b!4619836 (=> (not res!1936382) (not e!2881714))))

(declare-fun lt!1775690 () ListMap!4221)

(assert (=> b!4619836 (= res!1936382 (contains!14447 lt!1775690 key!4968))))

(declare-fun lt!1775678 () List!51579)

(assert (=> b!4619836 (= lt!1775690 (extractMap!1532 lt!1775678))))

(assert (=> b!4619836 (= lt!1775678 (Cons!51455 (tuple2!52353 hash!414 oldBucket!40) Nil!51455))))

(declare-fun res!1936376 () Bool)

(assert (=> start!462476 (=> (not res!1936376) (not e!2881711))))

(assert (=> start!462476 (= res!1936376 (noDuplicateKeys!1476 oldBucket!40))))

(assert (=> start!462476 e!2881711))

(assert (=> start!462476 true))

(declare-fun e!2881709 () Bool)

(assert (=> start!462476 e!2881709))

(declare-fun tp_is_empty!29197 () Bool)

(assert (=> start!462476 tp_is_empty!29197))

(declare-fun e!2881706 () Bool)

(assert (=> start!462476 e!2881706))

(declare-fun b!4619837 () Bool)

(assert (=> b!4619837 (= e!2881714 e!2881712)))

(declare-fun res!1936377 () Bool)

(assert (=> b!4619837 (=> (not res!1936377) (not e!2881712))))

(declare-fun lt!1775685 () (_ BitVec 64))

(assert (=> b!4619837 (= res!1936377 (= lt!1775685 hash!414))))

(declare-fun hash!3446 (Hashable!5873 K!12840) (_ BitVec 64))

(assert (=> b!4619837 (= lt!1775685 (hash!3446 hashF!1389 key!4968))))

(declare-fun b!4619838 () Bool)

(declare-fun e!2881710 () Bool)

(declare-fun e!2881708 () Bool)

(assert (=> b!4619838 (= e!2881710 e!2881708)))

(declare-fun res!1936381 () Bool)

(assert (=> b!4619838 (=> res!1936381 e!2881708)))

(declare-fun containsKey!2376 (List!51578 K!12840) Bool)

(assert (=> b!4619838 (= res!1936381 (not (containsKey!2376 (t!358590 oldBucket!40) key!4968)))))

(assert (=> b!4619838 (containsKey!2376 oldBucket!40 key!4968)))

(declare-fun lt!1775680 () Unit!110816)

(declare-fun lemmaGetPairDefinedThenContainsKey!22 (List!51578 K!12840 Hashable!5873) Unit!110816)

(assert (=> b!4619838 (= lt!1775680 (lemmaGetPairDefinedThenContainsKey!22 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1775687 () List!51578)

(declare-datatypes ((Option!11518 0))(
  ( (None!11517) (Some!11517 (v!45603 tuple2!52350)) )
))
(declare-fun isDefined!8783 (Option!11518) Bool)

(declare-fun getPair!268 (List!51578 K!12840) Option!11518)

(assert (=> b!4619838 (isDefined!8783 (getPair!268 lt!1775687 key!4968))))

(declare-fun lt!1775682 () tuple2!52352)

(declare-fun lt!1775689 () Unit!110816)

(declare-fun lambda!190450 () Int)

(declare-fun forallContained!3000 (List!51579 Int tuple2!52352) Unit!110816)

(assert (=> b!4619838 (= lt!1775689 (forallContained!3000 lt!1775678 lambda!190450 lt!1775682))))

(declare-fun contains!14448 (List!51579 tuple2!52352) Bool)

(assert (=> b!4619838 (contains!14448 lt!1775678 lt!1775682)))

(assert (=> b!4619838 (= lt!1775682 (tuple2!52353 lt!1775685 lt!1775687))))

(declare-fun lt!1775681 () ListLongMap!3507)

(declare-fun lt!1775676 () Unit!110816)

(declare-fun lemmaGetValueImpliesTupleContained!73 (ListLongMap!3507 (_ BitVec 64) List!51578) Unit!110816)

(assert (=> b!4619838 (= lt!1775676 (lemmaGetValueImpliesTupleContained!73 lt!1775681 lt!1775685 lt!1775687))))

(declare-fun apply!12141 (ListLongMap!3507 (_ BitVec 64)) List!51578)

(assert (=> b!4619838 (= lt!1775687 (apply!12141 lt!1775681 lt!1775685))))

(declare-fun contains!14449 (ListLongMap!3507 (_ BitVec 64)) Bool)

(assert (=> b!4619838 (contains!14449 lt!1775681 lt!1775685)))

(declare-fun lt!1775683 () Unit!110816)

(declare-fun lemmaInGenMapThenLongMapContainsHash!474 (ListLongMap!3507 K!12840 Hashable!5873) Unit!110816)

(assert (=> b!4619838 (= lt!1775683 (lemmaInGenMapThenLongMapContainsHash!474 lt!1775681 key!4968 hashF!1389))))

(declare-fun lt!1775677 () Unit!110816)

(declare-fun lemmaInGenMapThenGetPairDefined!64 (ListLongMap!3507 K!12840 Hashable!5873) Unit!110816)

(assert (=> b!4619838 (= lt!1775677 (lemmaInGenMapThenGetPairDefined!64 lt!1775681 key!4968 hashF!1389))))

(assert (=> b!4619838 (= lt!1775681 (ListLongMap!3508 lt!1775678))))

(declare-fun b!4619839 () Bool)

(assert (=> b!4619839 (= e!2881707 true)))

(declare-fun lt!1775691 () Bool)

(declare-fun head!9610 (List!51578) tuple2!52350)

(assert (=> b!4619839 (= lt!1775691 (noDuplicateKeys!1476 (Cons!51454 (head!9610 oldBucket!40) lt!1775684)))))

(declare-fun b!4619840 () Bool)

(declare-fun res!1936379 () Bool)

(assert (=> b!4619840 (=> (not res!1936379) (not e!2881711))))

(assert (=> b!4619840 (= res!1936379 (noDuplicateKeys!1476 newBucket!224))))

(declare-fun b!4619841 () Bool)

(declare-fun res!1936383 () Bool)

(assert (=> b!4619841 (=> (not res!1936383) (not e!2881711))))

(assert (=> b!4619841 (= res!1936383 (allKeysSameHash!1330 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4619842 () Bool)

(assert (=> b!4619842 (= e!2881708 e!2881705)))

(declare-fun res!1936384 () Bool)

(assert (=> b!4619842 (=> res!1936384 e!2881705)))

(declare-fun lt!1775688 () List!51578)

(declare-fun removePairForKey!1099 (List!51578 K!12840) List!51578)

(assert (=> b!4619842 (= res!1936384 (not (= (removePairForKey!1099 lt!1775684 key!4968) lt!1775688)))))

(declare-fun tail!8111 (List!51578) List!51578)

(assert (=> b!4619842 (= lt!1775688 (tail!8111 newBucket!224))))

(assert (=> b!4619842 (= lt!1775684 (tail!8111 oldBucket!40))))

(declare-fun tp_is_empty!29199 () Bool)

(declare-fun b!4619843 () Bool)

(declare-fun tp!1341847 () Bool)

(assert (=> b!4619843 (= e!2881706 (and tp_is_empty!29197 tp_is_empty!29199 tp!1341847))))

(declare-fun b!4619844 () Bool)

(declare-fun res!1936374 () Bool)

(assert (=> b!4619844 (=> (not res!1936374) (not e!2881711))))

(assert (=> b!4619844 (= res!1936374 (= (removePairForKey!1099 oldBucket!40 key!4968) newBucket!224))))

(declare-fun tp!1341846 () Bool)

(declare-fun b!4619845 () Bool)

(assert (=> b!4619845 (= e!2881709 (and tp_is_empty!29197 tp_is_empty!29199 tp!1341846))))

(declare-fun b!4619846 () Bool)

(declare-fun res!1936373 () Bool)

(assert (=> b!4619846 (=> res!1936373 e!2881705)))

(assert (=> b!4619846 (= res!1936373 (not (= (removePairForKey!1099 (t!358590 oldBucket!40) key!4968) lt!1775688)))))

(declare-fun b!4619847 () Bool)

(declare-fun e!2881713 () Bool)

(declare-fun lt!1775675 () ListMap!4221)

(assert (=> b!4619847 (= e!2881713 (= lt!1775675 (ListMap!4222 Nil!51454)))))

(declare-fun b!4619848 () Bool)

(assert (=> b!4619848 (= e!2881712 (not e!2881710))))

(declare-fun res!1936372 () Bool)

(assert (=> b!4619848 (=> res!1936372 e!2881710)))

(get-info :version)

(assert (=> b!4619848 (= res!1936372 (or (and ((_ is Cons!51454) oldBucket!40) (= (_1!29469 (h!57484 oldBucket!40)) key!4968)) (not ((_ is Cons!51454) oldBucket!40)) (= (_1!29469 (h!57484 oldBucket!40)) key!4968)))))

(assert (=> b!4619848 e!2881713))

(declare-fun res!1936380 () Bool)

(assert (=> b!4619848 (=> (not res!1936380) (not e!2881713))))

(declare-fun addToMapMapFromBucket!937 (List!51578 ListMap!4221) ListMap!4221)

(assert (=> b!4619848 (= res!1936380 (= lt!1775690 (addToMapMapFromBucket!937 oldBucket!40 lt!1775675)))))

(assert (=> b!4619848 (= lt!1775675 (extractMap!1532 Nil!51455))))

(assert (=> b!4619848 true))

(assert (= (and start!462476 res!1936376) b!4619840))

(assert (= (and b!4619840 res!1936379) b!4619844))

(assert (= (and b!4619844 res!1936374) b!4619841))

(assert (= (and b!4619841 res!1936383) b!4619836))

(assert (= (and b!4619836 res!1936382) b!4619837))

(assert (= (and b!4619837 res!1936377) b!4619834))

(assert (= (and b!4619834 res!1936375) b!4619848))

(assert (= (and b!4619848 res!1936380) b!4619847))

(assert (= (and b!4619848 (not res!1936372)) b!4619838))

(assert (= (and b!4619838 (not res!1936381)) b!4619842))

(assert (= (and b!4619842 (not res!1936384)) b!4619846))

(assert (= (and b!4619846 (not res!1936373)) b!4619835))

(assert (= (and b!4619835 (not res!1936378)) b!4619839))

(assert (= (and start!462476 ((_ is Cons!51454) oldBucket!40)) b!4619845))

(assert (= (and start!462476 ((_ is Cons!51454) newBucket!224)) b!4619843))

(declare-fun m!5455657 () Bool)

(assert (=> b!4619838 m!5455657))

(declare-fun m!5455659 () Bool)

(assert (=> b!4619838 m!5455659))

(declare-fun m!5455661 () Bool)

(assert (=> b!4619838 m!5455661))

(declare-fun m!5455663 () Bool)

(assert (=> b!4619838 m!5455663))

(declare-fun m!5455665 () Bool)

(assert (=> b!4619838 m!5455665))

(declare-fun m!5455667 () Bool)

(assert (=> b!4619838 m!5455667))

(declare-fun m!5455669 () Bool)

(assert (=> b!4619838 m!5455669))

(declare-fun m!5455671 () Bool)

(assert (=> b!4619838 m!5455671))

(declare-fun m!5455673 () Bool)

(assert (=> b!4619838 m!5455673))

(declare-fun m!5455675 () Bool)

(assert (=> b!4619838 m!5455675))

(assert (=> b!4619838 m!5455667))

(declare-fun m!5455677 () Bool)

(assert (=> b!4619838 m!5455677))

(declare-fun m!5455679 () Bool)

(assert (=> b!4619838 m!5455679))

(declare-fun m!5455681 () Bool)

(assert (=> start!462476 m!5455681))

(declare-fun m!5455683 () Bool)

(assert (=> b!4619846 m!5455683))

(declare-fun m!5455685 () Bool)

(assert (=> b!4619837 m!5455685))

(declare-fun m!5455687 () Bool)

(assert (=> b!4619836 m!5455687))

(declare-fun m!5455689 () Bool)

(assert (=> b!4619836 m!5455689))

(declare-fun m!5455691 () Bool)

(assert (=> b!4619839 m!5455691))

(declare-fun m!5455693 () Bool)

(assert (=> b!4619839 m!5455693))

(declare-fun m!5455695 () Bool)

(assert (=> b!4619840 m!5455695))

(declare-fun m!5455697 () Bool)

(assert (=> b!4619841 m!5455697))

(declare-fun m!5455699 () Bool)

(assert (=> b!4619848 m!5455699))

(declare-fun m!5455701 () Bool)

(assert (=> b!4619848 m!5455701))

(declare-fun m!5455703 () Bool)

(assert (=> b!4619834 m!5455703))

(declare-fun m!5455705 () Bool)

(assert (=> b!4619844 m!5455705))

(declare-fun m!5455707 () Bool)

(assert (=> b!4619835 m!5455707))

(declare-fun m!5455709 () Bool)

(assert (=> b!4619835 m!5455709))

(assert (=> b!4619835 m!5455709))

(declare-fun m!5455711 () Bool)

(assert (=> b!4619835 m!5455711))

(declare-fun m!5455713 () Bool)

(assert (=> b!4619835 m!5455713))

(declare-fun m!5455715 () Bool)

(assert (=> b!4619842 m!5455715))

(declare-fun m!5455717 () Bool)

(assert (=> b!4619842 m!5455717))

(declare-fun m!5455719 () Bool)

(assert (=> b!4619842 m!5455719))

(check-sat (not b!4619836) tp_is_empty!29199 (not b!4619842) (not b!4619843) tp_is_empty!29197 (not b!4619834) (not b!4619845) (not start!462476) (not b!4619835) (not b!4619844) (not b!4619838) (not b!4619840) (not b!4619841) (not b!4619846) (not b!4619848) (not b!4619837) (not b!4619839))
(check-sat)
