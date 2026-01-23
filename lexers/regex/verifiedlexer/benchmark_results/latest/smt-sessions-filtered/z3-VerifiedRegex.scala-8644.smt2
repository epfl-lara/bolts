; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461228 () Bool)

(assert start!461228)

(declare-fun b!4611257 () Bool)

(declare-fun e!2876434 () Bool)

(declare-fun e!2876433 () Bool)

(assert (=> b!4611257 (= e!2876434 e!2876433)))

(declare-fun res!1930753 () Bool)

(assert (=> b!4611257 (=> (not res!1930753) (not e!2876433))))

(declare-datatypes ((K!12625 0))(
  ( (K!12626 (val!18371 Int)) )
))
(declare-datatypes ((V!12871 0))(
  ( (V!12872 (val!18372 Int)) )
))
(declare-datatypes ((tuple2!52006 0))(
  ( (tuple2!52007 (_1!29297 K!12625) (_2!29297 V!12871)) )
))
(declare-datatypes ((List!51375 0))(
  ( (Nil!51251) (Cons!51251 (h!57249 tuple2!52006) (t!358369 List!51375)) )
))
(declare-datatypes ((ListMap!4049 0))(
  ( (ListMap!4050 (toList!4778 List!51375)) )
))
(declare-fun lt!1767204 () ListMap!4049)

(declare-fun key!4968 () K!12625)

(declare-fun contains!14252 (ListMap!4049 K!12625) Bool)

(assert (=> b!4611257 (= res!1930753 (contains!14252 lt!1767204 key!4968))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!51375)

(declare-datatypes ((tuple2!52008 0))(
  ( (tuple2!52009 (_1!29298 (_ BitVec 64)) (_2!29298 List!51375)) )
))
(declare-datatypes ((List!51376 0))(
  ( (Nil!51252) (Cons!51252 (h!57250 tuple2!52008) (t!358370 List!51376)) )
))
(declare-fun extractMap!1446 (List!51376) ListMap!4049)

(assert (=> b!4611257 (= lt!1767204 (extractMap!1446 (Cons!51252 (tuple2!52009 hash!414 oldBucket!40) Nil!51252)))))

(declare-fun b!4611258 () Bool)

(declare-fun res!1930754 () Bool)

(assert (=> b!4611258 (=> (not res!1930754) (not e!2876434))))

(declare-fun newBucket!224 () List!51375)

(declare-fun noDuplicateKeys!1390 (List!51375) Bool)

(assert (=> b!4611258 (= res!1930754 (noDuplicateKeys!1390 newBucket!224))))

(declare-fun b!4611259 () Bool)

(declare-fun res!1930750 () Bool)

(assert (=> b!4611259 (=> (not res!1930750) (not e!2876433))))

(declare-datatypes ((Hashable!5787 0))(
  ( (HashableExt!5786 (__x!31490 Int)) )
))
(declare-fun hashF!1389 () Hashable!5787)

(declare-fun allKeysSameHash!1244 (List!51375 (_ BitVec 64) Hashable!5787) Bool)

(assert (=> b!4611259 (= res!1930750 (allKeysSameHash!1244 newBucket!224 hash!414 hashF!1389))))

(declare-fun res!1930755 () Bool)

(assert (=> start!461228 (=> (not res!1930755) (not e!2876434))))

(assert (=> start!461228 (= res!1930755 (noDuplicateKeys!1390 oldBucket!40))))

(assert (=> start!461228 e!2876434))

(assert (=> start!461228 true))

(declare-fun e!2876432 () Bool)

(assert (=> start!461228 e!2876432))

(declare-fun tp_is_empty!28853 () Bool)

(assert (=> start!461228 tp_is_empty!28853))

(declare-fun e!2876430 () Bool)

(assert (=> start!461228 e!2876430))

(declare-fun tp_is_empty!28855 () Bool)

(declare-fun tp!1341202 () Bool)

(declare-fun b!4611260 () Bool)

(assert (=> b!4611260 (= e!2876432 (and tp_is_empty!28853 tp_is_empty!28855 tp!1341202))))

(declare-fun b!4611261 () Bool)

(get-info :version)

(assert (=> b!4611261 (= e!2876433 (not (or (not ((_ is Cons!51251) oldBucket!40)) (not (= (_1!29297 (h!57249 oldBucket!40)) key!4968)) (not (= oldBucket!40 Nil!51251)))))))

(declare-fun e!2876431 () Bool)

(assert (=> b!4611261 e!2876431))

(declare-fun res!1930756 () Bool)

(assert (=> b!4611261 (=> (not res!1930756) (not e!2876431))))

(declare-fun lt!1767205 () ListMap!4049)

(declare-fun addToMapMapFromBucket!851 (List!51375 ListMap!4049) ListMap!4049)

(assert (=> b!4611261 (= res!1930756 (= lt!1767204 (addToMapMapFromBucket!851 oldBucket!40 lt!1767205)))))

(assert (=> b!4611261 (= lt!1767205 (extractMap!1446 Nil!51252))))

(assert (=> b!4611261 true))

(declare-fun b!4611262 () Bool)

(declare-fun res!1930751 () Bool)

(assert (=> b!4611262 (=> (not res!1930751) (not e!2876433))))

(declare-fun hash!3331 (Hashable!5787 K!12625) (_ BitVec 64))

(assert (=> b!4611262 (= res!1930751 (= (hash!3331 hashF!1389 key!4968) hash!414))))

(declare-fun b!4611263 () Bool)

(declare-fun res!1930749 () Bool)

(assert (=> b!4611263 (=> (not res!1930749) (not e!2876434))))

(declare-fun removePairForKey!1013 (List!51375 K!12625) List!51375)

(assert (=> b!4611263 (= res!1930749 (= (removePairForKey!1013 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4611264 () Bool)

(assert (=> b!4611264 (= e!2876431 (= lt!1767205 (ListMap!4050 Nil!51251)))))

(declare-fun b!4611265 () Bool)

(declare-fun tp!1341203 () Bool)

(assert (=> b!4611265 (= e!2876430 (and tp_is_empty!28853 tp_is_empty!28855 tp!1341203))))

(declare-fun b!4611266 () Bool)

(declare-fun res!1930752 () Bool)

(assert (=> b!4611266 (=> (not res!1930752) (not e!2876434))))

(assert (=> b!4611266 (= res!1930752 (allKeysSameHash!1244 oldBucket!40 hash!414 hashF!1389))))

(assert (= (and start!461228 res!1930755) b!4611258))

(assert (= (and b!4611258 res!1930754) b!4611263))

(assert (= (and b!4611263 res!1930749) b!4611266))

(assert (= (and b!4611266 res!1930752) b!4611257))

(assert (= (and b!4611257 res!1930753) b!4611262))

(assert (= (and b!4611262 res!1930751) b!4611259))

(assert (= (and b!4611259 res!1930750) b!4611261))

(assert (= (and b!4611261 res!1930756) b!4611264))

(assert (= (and start!461228 ((_ is Cons!51251) oldBucket!40)) b!4611260))

(assert (= (and start!461228 ((_ is Cons!51251) newBucket!224)) b!4611265))

(declare-fun m!5442731 () Bool)

(assert (=> b!4611261 m!5442731))

(declare-fun m!5442733 () Bool)

(assert (=> b!4611261 m!5442733))

(declare-fun m!5442735 () Bool)

(assert (=> b!4611259 m!5442735))

(declare-fun m!5442737 () Bool)

(assert (=> b!4611266 m!5442737))

(declare-fun m!5442739 () Bool)

(assert (=> start!461228 m!5442739))

(declare-fun m!5442741 () Bool)

(assert (=> b!4611258 m!5442741))

(declare-fun m!5442743 () Bool)

(assert (=> b!4611262 m!5442743))

(declare-fun m!5442745 () Bool)

(assert (=> b!4611263 m!5442745))

(declare-fun m!5442747 () Bool)

(assert (=> b!4611257 m!5442747))

(declare-fun m!5442749 () Bool)

(assert (=> b!4611257 m!5442749))

(check-sat tp_is_empty!28855 (not b!4611257) (not b!4611261) (not b!4611263) (not b!4611265) (not b!4611259) (not b!4611262) (not b!4611260) tp_is_empty!28853 (not b!4611258) (not start!461228) (not b!4611266))
(check-sat)
