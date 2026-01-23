; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466068 () Bool)

(assert start!466068)

(declare-fun b!4637100 () Bool)

(declare-fun res!1946708 () Bool)

(declare-fun e!2892737 () Bool)

(assert (=> b!4637100 (=> (not res!1946708) (not e!2892737))))

(declare-datatypes ((Hashable!5953 0))(
  ( (HashableExt!5952 (__x!31656 Int)) )
))
(declare-fun hashF!1389 () Hashable!5953)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!13040 0))(
  ( (K!13041 (val!18703 Int)) )
))
(declare-fun key!4968 () K!13040)

(declare-fun hash!3632 (Hashable!5953 K!13040) (_ BitVec 64))

(assert (=> b!4637100 (= res!1946708 (= (hash!3632 hashF!1389 key!4968) hash!414))))

(declare-fun res!1946712 () Bool)

(declare-fun e!2892736 () Bool)

(assert (=> start!466068 (=> (not res!1946712) (not e!2892736))))

(declare-datatypes ((V!13286 0))(
  ( (V!13287 (val!18704 Int)) )
))
(declare-datatypes ((tuple2!52670 0))(
  ( (tuple2!52671 (_1!29629 K!13040) (_2!29629 V!13286)) )
))
(declare-datatypes ((List!51800 0))(
  ( (Nil!51676) (Cons!51676 (h!57768 tuple2!52670) (t!358874 List!51800)) )
))
(declare-fun oldBucket!40 () List!51800)

(declare-fun noDuplicateKeys!1556 (List!51800) Bool)

(assert (=> start!466068 (= res!1946712 (noDuplicateKeys!1556 oldBucket!40))))

(assert (=> start!466068 e!2892736))

(assert (=> start!466068 true))

(declare-fun e!2892735 () Bool)

(assert (=> start!466068 e!2892735))

(declare-fun tp_is_empty!29517 () Bool)

(assert (=> start!466068 tp_is_empty!29517))

(declare-fun e!2892740 () Bool)

(assert (=> start!466068 e!2892740))

(declare-fun b!4637101 () Bool)

(declare-fun e!2892738 () Bool)

(declare-datatypes ((ListMap!4381 0))(
  ( (ListMap!4382 (toList!5072 List!51800)) )
))
(declare-fun lt!1799828 () ListMap!4381)

(assert (=> b!4637101 (= e!2892738 (= lt!1799828 (ListMap!4382 Nil!51676)))))

(declare-fun b!4637102 () Bool)

(declare-fun res!1946716 () Bool)

(assert (=> b!4637102 (=> (not res!1946716) (not e!2892737))))

(declare-fun newBucket!224 () List!51800)

(declare-fun allKeysSameHash!1410 (List!51800 (_ BitVec 64) Hashable!5953) Bool)

(assert (=> b!4637102 (= res!1946716 (allKeysSameHash!1410 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4637103 () Bool)

(assert (=> b!4637103 (= e!2892736 e!2892737)))

(declare-fun res!1946711 () Bool)

(assert (=> b!4637103 (=> (not res!1946711) (not e!2892737))))

(declare-fun lt!1799826 () ListMap!4381)

(declare-fun contains!14801 (ListMap!4381 K!13040) Bool)

(assert (=> b!4637103 (= res!1946711 (contains!14801 lt!1799826 key!4968))))

(declare-datatypes ((tuple2!52672 0))(
  ( (tuple2!52673 (_1!29630 (_ BitVec 64)) (_2!29630 List!51800)) )
))
(declare-datatypes ((List!51801 0))(
  ( (Nil!51677) (Cons!51677 (h!57769 tuple2!52672) (t!358875 List!51801)) )
))
(declare-fun lt!1799829 () List!51801)

(declare-fun extractMap!1612 (List!51801) ListMap!4381)

(assert (=> b!4637103 (= lt!1799826 (extractMap!1612 lt!1799829))))

(assert (=> b!4637103 (= lt!1799829 (Cons!51677 (tuple2!52673 hash!414 oldBucket!40) Nil!51677))))

(declare-fun b!4637104 () Bool)

(declare-fun res!1946710 () Bool)

(assert (=> b!4637104 (=> (not res!1946710) (not e!2892736))))

(declare-fun removePairForKey!1179 (List!51800 K!13040) List!51800)

(assert (=> b!4637104 (= res!1946710 (= (removePairForKey!1179 oldBucket!40 key!4968) newBucket!224))))

(declare-fun tp_is_empty!29519 () Bool)

(declare-fun tp!1342575 () Bool)

(declare-fun b!4637105 () Bool)

(assert (=> b!4637105 (= e!2892740 (and tp_is_empty!29517 tp_is_empty!29519 tp!1342575))))

(declare-fun tp!1342574 () Bool)

(declare-fun b!4637106 () Bool)

(assert (=> b!4637106 (= e!2892735 (and tp_is_empty!29517 tp_is_empty!29519 tp!1342574))))

(declare-fun b!4637107 () Bool)

(declare-fun res!1946713 () Bool)

(assert (=> b!4637107 (=> (not res!1946713) (not e!2892736))))

(assert (=> b!4637107 (= res!1946713 (noDuplicateKeys!1556 newBucket!224))))

(declare-fun b!4637108 () Bool)

(declare-fun res!1946709 () Bool)

(assert (=> b!4637108 (=> (not res!1946709) (not e!2892736))))

(assert (=> b!4637108 (= res!1946709 (allKeysSameHash!1410 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4637109 () Bool)

(declare-fun e!2892739 () Bool)

(assert (=> b!4637109 (= e!2892737 (not e!2892739))))

(declare-fun res!1946714 () Bool)

(assert (=> b!4637109 (=> res!1946714 e!2892739)))

(get-info :version)

(assert (=> b!4637109 (= res!1946714 (or (and ((_ is Cons!51676) oldBucket!40) (= (_1!29629 (h!57768 oldBucket!40)) key!4968)) (and ((_ is Cons!51676) oldBucket!40) (not (= (_1!29629 (h!57768 oldBucket!40)) key!4968))) ((_ is Nil!51676) oldBucket!40)))))

(assert (=> b!4637109 e!2892738))

(declare-fun res!1946715 () Bool)

(assert (=> b!4637109 (=> (not res!1946715) (not e!2892738))))

(declare-fun addToMapMapFromBucket!1017 (List!51800 ListMap!4381) ListMap!4381)

(assert (=> b!4637109 (= res!1946715 (= lt!1799826 (addToMapMapFromBucket!1017 oldBucket!40 lt!1799828)))))

(assert (=> b!4637109 (= lt!1799828 (extractMap!1612 Nil!51677))))

(assert (=> b!4637109 true))

(declare-fun b!4637110 () Bool)

(declare-fun lambda!195260 () Int)

(declare-fun forall!10908 (List!51801 Int) Bool)

(assert (=> b!4637110 (= e!2892739 (forall!10908 lt!1799829 lambda!195260))))

(declare-fun lt!1799827 () ListMap!4381)

(assert (=> b!4637110 (= lt!1799827 (extractMap!1612 (Cons!51677 (tuple2!52673 hash!414 newBucket!224) Nil!51677)))))

(assert (= (and start!466068 res!1946712) b!4637107))

(assert (= (and b!4637107 res!1946713) b!4637104))

(assert (= (and b!4637104 res!1946710) b!4637108))

(assert (= (and b!4637108 res!1946709) b!4637103))

(assert (= (and b!4637103 res!1946711) b!4637100))

(assert (= (and b!4637100 res!1946708) b!4637102))

(assert (= (and b!4637102 res!1946716) b!4637109))

(assert (= (and b!4637109 res!1946715) b!4637101))

(assert (= (and b!4637109 (not res!1946714)) b!4637110))

(assert (= (and start!466068 ((_ is Cons!51676) oldBucket!40)) b!4637106))

(assert (= (and start!466068 ((_ is Cons!51676) newBucket!224)) b!4637105))

(declare-fun m!5495091 () Bool)

(assert (=> b!4637103 m!5495091))

(declare-fun m!5495093 () Bool)

(assert (=> b!4637103 m!5495093))

(declare-fun m!5495095 () Bool)

(assert (=> b!4637102 m!5495095))

(declare-fun m!5495097 () Bool)

(assert (=> b!4637100 m!5495097))

(declare-fun m!5495099 () Bool)

(assert (=> b!4637109 m!5495099))

(declare-fun m!5495101 () Bool)

(assert (=> b!4637109 m!5495101))

(declare-fun m!5495103 () Bool)

(assert (=> b!4637104 m!5495103))

(declare-fun m!5495105 () Bool)

(assert (=> b!4637108 m!5495105))

(declare-fun m!5495107 () Bool)

(assert (=> b!4637107 m!5495107))

(declare-fun m!5495109 () Bool)

(assert (=> start!466068 m!5495109))

(declare-fun m!5495111 () Bool)

(assert (=> b!4637110 m!5495111))

(declare-fun m!5495113 () Bool)

(assert (=> b!4637110 m!5495113))

(check-sat (not b!4637102) tp_is_empty!29519 tp_is_empty!29517 (not b!4637107) (not b!4637105) (not b!4637108) (not b!4637110) (not b!4637100) (not b!4637104) (not b!4637106) (not b!4637109) (not b!4637103) (not start!466068))
(check-sat)
