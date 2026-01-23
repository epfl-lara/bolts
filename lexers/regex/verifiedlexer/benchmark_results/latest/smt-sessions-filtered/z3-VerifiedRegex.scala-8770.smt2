; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!468676 () Bool)

(assert start!468676)

(declare-fun b!4656607 () Bool)

(declare-fun e!2905431 () Bool)

(declare-datatypes ((K!13255 0))(
  ( (K!13256 (val!18875 Int)) )
))
(declare-datatypes ((V!13501 0))(
  ( (V!13502 (val!18876 Int)) )
))
(declare-datatypes ((tuple2!53014 0))(
  ( (tuple2!53015 (_1!29801 K!13255) (_2!29801 V!13501)) )
))
(declare-datatypes ((List!52026 0))(
  ( (Nil!51902) (Cons!51902 (h!58048 tuple2!53014) (t!359142 List!52026)) )
))
(declare-datatypes ((ListMap!4553 0))(
  ( (ListMap!4554 (toList!5213 List!52026)) )
))
(declare-fun lt!1819201 () ListMap!4553)

(assert (=> b!4656607 (= e!2905431 (= lt!1819201 (ListMap!4554 Nil!51902)))))

(declare-fun res!1958097 () Bool)

(declare-fun e!2905430 () Bool)

(assert (=> start!468676 (=> (not res!1958097) (not e!2905430))))

(declare-fun oldBucket!40 () List!52026)

(declare-fun noDuplicateKeys!1642 (List!52026) Bool)

(assert (=> start!468676 (= res!1958097 (noDuplicateKeys!1642 oldBucket!40))))

(assert (=> start!468676 e!2905430))

(assert (=> start!468676 true))

(declare-fun e!2905432 () Bool)

(assert (=> start!468676 e!2905432))

(declare-fun tp_is_empty!29861 () Bool)

(assert (=> start!468676 tp_is_empty!29861))

(declare-fun e!2905429 () Bool)

(assert (=> start!468676 e!2905429))

(declare-fun b!4656608 () Bool)

(declare-fun e!2905427 () Bool)

(assert (=> b!4656608 (= e!2905430 e!2905427)))

(declare-fun res!1958096 () Bool)

(assert (=> b!4656608 (=> (not res!1958096) (not e!2905427))))

(declare-fun lt!1819200 () ListMap!4553)

(declare-fun key!4968 () K!13255)

(declare-fun contains!15043 (ListMap!4553 K!13255) Bool)

(assert (=> b!4656608 (= res!1958096 (contains!15043 lt!1819200 key!4968))))

(declare-datatypes ((tuple2!53016 0))(
  ( (tuple2!53017 (_1!29802 (_ BitVec 64)) (_2!29802 List!52026)) )
))
(declare-datatypes ((List!52027 0))(
  ( (Nil!51903) (Cons!51903 (h!58049 tuple2!53016) (t!359143 List!52027)) )
))
(declare-fun lt!1819198 () List!52027)

(declare-fun extractMap!1698 (List!52027) ListMap!4553)

(assert (=> b!4656608 (= lt!1819200 (extractMap!1698 lt!1819198))))

(declare-fun hash!414 () (_ BitVec 64))

(assert (=> b!4656608 (= lt!1819198 (Cons!51903 (tuple2!53017 hash!414 oldBucket!40) Nil!51903))))

(declare-fun b!4656609 () Bool)

(declare-fun res!1958093 () Bool)

(declare-fun e!2905428 () Bool)

(assert (=> b!4656609 (=> res!1958093 e!2905428)))

(declare-fun lambda!199474 () Int)

(declare-fun forall!11030 (List!52027 Int) Bool)

(assert (=> b!4656609 (= res!1958093 (not (forall!11030 lt!1819198 lambda!199474)))))

(declare-fun b!4656610 () Bool)

(assert (=> b!4656610 (= e!2905427 (not e!2905428))))

(declare-fun res!1958094 () Bool)

(assert (=> b!4656610 (=> res!1958094 e!2905428)))

(get-info :version)

(assert (=> b!4656610 (= res!1958094 (or (and ((_ is Cons!51902) oldBucket!40) (= (_1!29801 (h!58048 oldBucket!40)) key!4968)) (not ((_ is Cons!51902) oldBucket!40)) (= (_1!29801 (h!58048 oldBucket!40)) key!4968)))))

(assert (=> b!4656610 e!2905431))

(declare-fun res!1958100 () Bool)

(assert (=> b!4656610 (=> (not res!1958100) (not e!2905431))))

(declare-fun addToMapMapFromBucket!1099 (List!52026 ListMap!4553) ListMap!4553)

(assert (=> b!4656610 (= res!1958100 (= lt!1819200 (addToMapMapFromBucket!1099 oldBucket!40 lt!1819201)))))

(assert (=> b!4656610 (= lt!1819201 (extractMap!1698 Nil!51903))))

(assert (=> b!4656610 true))

(declare-fun b!4656611 () Bool)

(declare-fun res!1958091 () Bool)

(assert (=> b!4656611 (=> (not res!1958091) (not e!2905430))))

(declare-datatypes ((Hashable!6039 0))(
  ( (HashableExt!6038 (__x!31742 Int)) )
))
(declare-fun hashF!1389 () Hashable!6039)

(declare-fun allKeysSameHash!1496 (List!52026 (_ BitVec 64) Hashable!6039) Bool)

(assert (=> b!4656611 (= res!1958091 (allKeysSameHash!1496 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4656612 () Bool)

(declare-fun res!1958092 () Bool)

(assert (=> b!4656612 (=> (not res!1958092) (not e!2905430))))

(declare-fun newBucket!224 () List!52026)

(declare-fun removePairForKey!1265 (List!52026 K!13255) List!52026)

(assert (=> b!4656612 (= res!1958092 (= (removePairForKey!1265 oldBucket!40 key!4968) newBucket!224))))

(declare-fun tp!1343338 () Bool)

(declare-fun tp_is_empty!29863 () Bool)

(declare-fun b!4656613 () Bool)

(assert (=> b!4656613 (= e!2905432 (and tp_is_empty!29861 tp_is_empty!29863 tp!1343338))))

(declare-fun b!4656614 () Bool)

(assert (=> b!4656614 (= e!2905428 true)))

(declare-fun lt!1819199 () Bool)

(declare-datatypes ((ListLongMap!3767 0))(
  ( (ListLongMap!3768 (toList!5214 List!52027)) )
))
(declare-fun allKeysSameHashInMap!1600 (ListLongMap!3767 Hashable!6039) Bool)

(assert (=> b!4656614 (= lt!1819199 (allKeysSameHashInMap!1600 (ListLongMap!3768 lt!1819198) hashF!1389))))

(declare-fun b!4656615 () Bool)

(declare-fun res!1958099 () Bool)

(assert (=> b!4656615 (=> (not res!1958099) (not e!2905427))))

(declare-fun hash!3781 (Hashable!6039 K!13255) (_ BitVec 64))

(assert (=> b!4656615 (= res!1958099 (= (hash!3781 hashF!1389 key!4968) hash!414))))

(declare-fun b!4656616 () Bool)

(declare-fun res!1958098 () Bool)

(assert (=> b!4656616 (=> (not res!1958098) (not e!2905430))))

(assert (=> b!4656616 (= res!1958098 (noDuplicateKeys!1642 newBucket!224))))

(declare-fun b!4656617 () Bool)

(declare-fun tp!1343339 () Bool)

(assert (=> b!4656617 (= e!2905429 (and tp_is_empty!29861 tp_is_empty!29863 tp!1343339))))

(declare-fun b!4656618 () Bool)

(declare-fun res!1958095 () Bool)

(assert (=> b!4656618 (=> (not res!1958095) (not e!2905427))))

(assert (=> b!4656618 (= res!1958095 (allKeysSameHash!1496 newBucket!224 hash!414 hashF!1389))))

(assert (= (and start!468676 res!1958097) b!4656616))

(assert (= (and b!4656616 res!1958098) b!4656612))

(assert (= (and b!4656612 res!1958092) b!4656611))

(assert (= (and b!4656611 res!1958091) b!4656608))

(assert (= (and b!4656608 res!1958096) b!4656615))

(assert (= (and b!4656615 res!1958099) b!4656618))

(assert (= (and b!4656618 res!1958095) b!4656610))

(assert (= (and b!4656610 res!1958100) b!4656607))

(assert (= (and b!4656610 (not res!1958094)) b!4656609))

(assert (= (and b!4656609 (not res!1958093)) b!4656614))

(assert (= (and start!468676 ((_ is Cons!51902) oldBucket!40)) b!4656613))

(assert (= (and start!468676 ((_ is Cons!51902) newBucket!224)) b!4656617))

(declare-fun m!5537053 () Bool)

(assert (=> b!4656611 m!5537053))

(declare-fun m!5537055 () Bool)

(assert (=> b!4656614 m!5537055))

(declare-fun m!5537057 () Bool)

(assert (=> b!4656610 m!5537057))

(declare-fun m!5537059 () Bool)

(assert (=> b!4656610 m!5537059))

(declare-fun m!5537061 () Bool)

(assert (=> b!4656609 m!5537061))

(declare-fun m!5537063 () Bool)

(assert (=> b!4656612 m!5537063))

(declare-fun m!5537065 () Bool)

(assert (=> start!468676 m!5537065))

(declare-fun m!5537067 () Bool)

(assert (=> b!4656608 m!5537067))

(declare-fun m!5537069 () Bool)

(assert (=> b!4656608 m!5537069))

(declare-fun m!5537071 () Bool)

(assert (=> b!4656616 m!5537071))

(declare-fun m!5537073 () Bool)

(assert (=> b!4656618 m!5537073))

(declare-fun m!5537075 () Bool)

(assert (=> b!4656615 m!5537075))

(check-sat (not b!4656616) (not b!4656613) (not b!4656608) (not b!4656610) (not b!4656609) (not b!4656611) (not b!4656618) (not b!4656614) (not start!468676) (not b!4656617) tp_is_empty!29863 (not b!4656612) tp_is_empty!29861 (not b!4656615))
(check-sat)
