; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466064 () Bool)

(assert start!466064)

(declare-fun b!4637034 () Bool)

(declare-fun lambda!195254 () Int)

(declare-datatypes ((K!13035 0))(
  ( (K!13036 (val!18699 Int)) )
))
(declare-datatypes ((V!13281 0))(
  ( (V!13282 (val!18700 Int)) )
))
(declare-datatypes ((tuple2!52662 0))(
  ( (tuple2!52663 (_1!29625 K!13035) (_2!29625 V!13281)) )
))
(declare-datatypes ((List!51796 0))(
  ( (Nil!51672) (Cons!51672 (h!57764 tuple2!52662) (t!358870 List!51796)) )
))
(declare-fun newBucket!224 () List!51796)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun e!2892700 () Bool)

(declare-datatypes ((tuple2!52664 0))(
  ( (tuple2!52665 (_1!29626 (_ BitVec 64)) (_2!29626 List!51796)) )
))
(declare-datatypes ((List!51797 0))(
  ( (Nil!51673) (Cons!51673 (h!57765 tuple2!52664) (t!358871 List!51797)) )
))
(declare-fun forall!10906 (List!51797 Int) Bool)

(assert (=> b!4637034 (= e!2892700 (forall!10906 (Cons!51673 (tuple2!52665 hash!414 newBucket!224) Nil!51673) lambda!195254))))

(declare-fun res!1946654 () Bool)

(declare-fun e!2892703 () Bool)

(assert (=> start!466064 (=> (not res!1946654) (not e!2892703))))

(declare-fun oldBucket!40 () List!51796)

(declare-fun noDuplicateKeys!1554 (List!51796) Bool)

(assert (=> start!466064 (= res!1946654 (noDuplicateKeys!1554 oldBucket!40))))

(assert (=> start!466064 e!2892703))

(assert (=> start!466064 true))

(declare-fun e!2892702 () Bool)

(assert (=> start!466064 e!2892702))

(declare-fun tp_is_empty!29509 () Bool)

(assert (=> start!466064 tp_is_empty!29509))

(declare-fun e!2892699 () Bool)

(assert (=> start!466064 e!2892699))

(declare-fun b!4637035 () Bool)

(declare-fun res!1946662 () Bool)

(assert (=> b!4637035 (=> (not res!1946662) (not e!2892703))))

(assert (=> b!4637035 (= res!1946662 (noDuplicateKeys!1554 newBucket!224))))

(declare-fun b!4637036 () Bool)

(declare-fun tp_is_empty!29511 () Bool)

(declare-fun tp!1342563 () Bool)

(assert (=> b!4637036 (= e!2892702 (and tp_is_empty!29509 tp_is_empty!29511 tp!1342563))))

(declare-fun b!4637037 () Bool)

(declare-fun res!1946658 () Bool)

(declare-fun e!2892701 () Bool)

(assert (=> b!4637037 (=> (not res!1946658) (not e!2892701))))

(declare-datatypes ((Hashable!5951 0))(
  ( (HashableExt!5950 (__x!31654 Int)) )
))
(declare-fun hashF!1389 () Hashable!5951)

(declare-fun allKeysSameHash!1408 (List!51796 (_ BitVec 64) Hashable!5951) Bool)

(assert (=> b!4637037 (= res!1946658 (allKeysSameHash!1408 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4637038 () Bool)

(assert (=> b!4637038 (= e!2892703 e!2892701)))

(declare-fun res!1946656 () Bool)

(assert (=> b!4637038 (=> (not res!1946656) (not e!2892701))))

(declare-datatypes ((ListMap!4377 0))(
  ( (ListMap!4378 (toList!5070 List!51796)) )
))
(declare-fun lt!1799805 () ListMap!4377)

(declare-fun key!4968 () K!13035)

(declare-fun contains!14799 (ListMap!4377 K!13035) Bool)

(assert (=> b!4637038 (= res!1946656 (contains!14799 lt!1799805 key!4968))))

(declare-fun extractMap!1610 (List!51797) ListMap!4377)

(assert (=> b!4637038 (= lt!1799805 (extractMap!1610 (Cons!51673 (tuple2!52665 hash!414 oldBucket!40) Nil!51673)))))

(declare-fun tp!1342562 () Bool)

(declare-fun b!4637039 () Bool)

(assert (=> b!4637039 (= e!2892699 (and tp_is_empty!29509 tp_is_empty!29511 tp!1342562))))

(declare-fun b!4637040 () Bool)

(assert (=> b!4637040 (= e!2892701 (not e!2892700))))

(declare-fun res!1946661 () Bool)

(assert (=> b!4637040 (=> res!1946661 e!2892700)))

(get-info :version)

(assert (=> b!4637040 (= res!1946661 (or (and ((_ is Cons!51672) oldBucket!40) (= (_1!29625 (h!57764 oldBucket!40)) key!4968)) (and ((_ is Cons!51672) oldBucket!40) (not (= (_1!29625 (h!57764 oldBucket!40)) key!4968))) ((_ is Nil!51672) oldBucket!40)))))

(declare-fun e!2892704 () Bool)

(assert (=> b!4637040 e!2892704))

(declare-fun res!1946660 () Bool)

(assert (=> b!4637040 (=> (not res!1946660) (not e!2892704))))

(declare-fun lt!1799804 () ListMap!4377)

(declare-fun addToMapMapFromBucket!1015 (List!51796 ListMap!4377) ListMap!4377)

(assert (=> b!4637040 (= res!1946660 (= lt!1799805 (addToMapMapFromBucket!1015 oldBucket!40 lt!1799804)))))

(assert (=> b!4637040 (= lt!1799804 (extractMap!1610 Nil!51673))))

(assert (=> b!4637040 true))

(declare-fun b!4637041 () Bool)

(declare-fun res!1946655 () Bool)

(assert (=> b!4637041 (=> (not res!1946655) (not e!2892703))))

(declare-fun removePairForKey!1177 (List!51796 K!13035) List!51796)

(assert (=> b!4637041 (= res!1946655 (= (removePairForKey!1177 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4637042 () Bool)

(declare-fun res!1946657 () Bool)

(assert (=> b!4637042 (=> (not res!1946657) (not e!2892703))))

(assert (=> b!4637042 (= res!1946657 (allKeysSameHash!1408 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4637043 () Bool)

(declare-fun res!1946659 () Bool)

(assert (=> b!4637043 (=> (not res!1946659) (not e!2892701))))

(declare-fun hash!3630 (Hashable!5951 K!13035) (_ BitVec 64))

(assert (=> b!4637043 (= res!1946659 (= (hash!3630 hashF!1389 key!4968) hash!414))))

(declare-fun b!4637044 () Bool)

(assert (=> b!4637044 (= e!2892704 (= lt!1799804 (ListMap!4378 Nil!51672)))))

(assert (= (and start!466064 res!1946654) b!4637035))

(assert (= (and b!4637035 res!1946662) b!4637041))

(assert (= (and b!4637041 res!1946655) b!4637042))

(assert (= (and b!4637042 res!1946657) b!4637038))

(assert (= (and b!4637038 res!1946656) b!4637043))

(assert (= (and b!4637043 res!1946659) b!4637037))

(assert (= (and b!4637037 res!1946658) b!4637040))

(assert (= (and b!4637040 res!1946660) b!4637044))

(assert (= (and b!4637040 (not res!1946661)) b!4637034))

(assert (= (and start!466064 ((_ is Cons!51672) oldBucket!40)) b!4637036))

(assert (= (and start!466064 ((_ is Cons!51672) newBucket!224)) b!4637039))

(declare-fun m!5495045 () Bool)

(assert (=> b!4637041 m!5495045))

(declare-fun m!5495047 () Bool)

(assert (=> b!4637040 m!5495047))

(declare-fun m!5495049 () Bool)

(assert (=> b!4637040 m!5495049))

(declare-fun m!5495051 () Bool)

(assert (=> b!4637042 m!5495051))

(declare-fun m!5495053 () Bool)

(assert (=> b!4637043 m!5495053))

(declare-fun m!5495055 () Bool)

(assert (=> start!466064 m!5495055))

(declare-fun m!5495057 () Bool)

(assert (=> b!4637035 m!5495057))

(declare-fun m!5495059 () Bool)

(assert (=> b!4637034 m!5495059))

(declare-fun m!5495061 () Bool)

(assert (=> b!4637037 m!5495061))

(declare-fun m!5495063 () Bool)

(assert (=> b!4637038 m!5495063))

(declare-fun m!5495065 () Bool)

(assert (=> b!4637038 m!5495065))

(check-sat (not b!4637043) tp_is_empty!29509 (not b!4637039) (not b!4637035) (not b!4637041) tp_is_empty!29511 (not b!4637042) (not b!4637036) (not b!4637034) (not b!4637037) (not b!4637038) (not start!466064) (not b!4637040))
(check-sat)
