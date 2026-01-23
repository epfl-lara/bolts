; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466112 () Bool)

(assert start!466112)

(declare-fun b!4637449 () Bool)

(declare-fun res!1946917 () Bool)

(declare-fun e!2892933 () Bool)

(assert (=> b!4637449 (=> (not res!1946917) (not e!2892933))))

(declare-datatypes ((Hashable!5959 0))(
  ( (HashableExt!5958 (__x!31662 Int)) )
))
(declare-fun hashF!1389 () Hashable!5959)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!13055 0))(
  ( (K!13056 (val!18715 Int)) )
))
(declare-fun key!4968 () K!13055)

(declare-fun hash!3640 (Hashable!5959 K!13055) (_ BitVec 64))

(assert (=> b!4637449 (= res!1946917 (= (hash!3640 hashF!1389 key!4968) hash!414))))

(declare-fun b!4637450 () Bool)

(declare-fun res!1946918 () Bool)

(assert (=> b!4637450 (=> (not res!1946918) (not e!2892933))))

(declare-datatypes ((V!13301 0))(
  ( (V!13302 (val!18716 Int)) )
))
(declare-datatypes ((tuple2!52694 0))(
  ( (tuple2!52695 (_1!29641 K!13055) (_2!29641 V!13301)) )
))
(declare-datatypes ((List!51814 0))(
  ( (Nil!51690) (Cons!51690 (h!57784 tuple2!52694) (t!358888 List!51814)) )
))
(declare-fun newBucket!224 () List!51814)

(declare-fun allKeysSameHash!1416 (List!51814 (_ BitVec 64) Hashable!5959) Bool)

(assert (=> b!4637450 (= res!1946918 (allKeysSameHash!1416 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4637451 () Bool)

(declare-fun e!2892932 () Bool)

(assert (=> b!4637451 (= e!2892933 (not e!2892932))))

(declare-fun res!1946915 () Bool)

(assert (=> b!4637451 (=> res!1946915 e!2892932)))

(declare-fun oldBucket!40 () List!51814)

(get-info :version)

(assert (=> b!4637451 (= res!1946915 (or (not ((_ is Cons!51690) oldBucket!40)) (not (= (_1!29641 (h!57784 oldBucket!40)) key!4968))))))

(declare-fun e!2892929 () Bool)

(assert (=> b!4637451 e!2892929))

(declare-fun res!1946909 () Bool)

(assert (=> b!4637451 (=> (not res!1946909) (not e!2892929))))

(declare-datatypes ((ListMap!4393 0))(
  ( (ListMap!4394 (toList!5078 List!51814)) )
))
(declare-fun lt!1800046 () ListMap!4393)

(declare-fun lt!1800045 () ListMap!4393)

(declare-fun addToMapMapFromBucket!1021 (List!51814 ListMap!4393) ListMap!4393)

(assert (=> b!4637451 (= res!1946909 (= lt!1800045 (addToMapMapFromBucket!1021 oldBucket!40 lt!1800046)))))

(declare-datatypes ((tuple2!52696 0))(
  ( (tuple2!52697 (_1!29642 (_ BitVec 64)) (_2!29642 List!51814)) )
))
(declare-datatypes ((List!51815 0))(
  ( (Nil!51691) (Cons!51691 (h!57785 tuple2!52696) (t!358889 List!51815)) )
))
(declare-fun extractMap!1618 (List!51815) ListMap!4393)

(assert (=> b!4637451 (= lt!1800046 (extractMap!1618 Nil!51691))))

(assert (=> b!4637451 true))

(declare-fun b!4637453 () Bool)

(declare-fun e!2892931 () Bool)

(assert (=> b!4637453 (= e!2892931 e!2892933)))

(declare-fun res!1946911 () Bool)

(assert (=> b!4637453 (=> (not res!1946911) (not e!2892933))))

(declare-fun contains!14809 (ListMap!4393 K!13055) Bool)

(assert (=> b!4637453 (= res!1946911 (contains!14809 lt!1800045 key!4968))))

(assert (=> b!4637453 (= lt!1800045 (extractMap!1618 (Cons!51691 (tuple2!52697 hash!414 oldBucket!40) Nil!51691)))))

(declare-fun b!4637454 () Bool)

(declare-fun e!2892930 () Bool)

(assert (=> b!4637454 (= e!2892932 e!2892930)))

(declare-fun res!1946912 () Bool)

(assert (=> b!4637454 (=> res!1946912 e!2892930)))

(declare-fun lt!1800047 () List!51814)

(assert (=> b!4637454 (= res!1946912 (not (= lt!1800047 newBucket!224)))))

(declare-fun tail!8189 (List!51814) List!51814)

(assert (=> b!4637454 (= lt!1800047 (tail!8189 oldBucket!40))))

(declare-fun tp_is_empty!29541 () Bool)

(declare-fun tp_is_empty!29543 () Bool)

(declare-fun tp!1342619 () Bool)

(declare-fun b!4637455 () Bool)

(declare-fun e!2892928 () Bool)

(assert (=> b!4637455 (= e!2892928 (and tp_is_empty!29541 tp_is_empty!29543 tp!1342619))))

(declare-fun tp!1342618 () Bool)

(declare-fun e!2892934 () Bool)

(declare-fun b!4637456 () Bool)

(assert (=> b!4637456 (= e!2892934 (and tp_is_empty!29541 tp_is_empty!29543 tp!1342618))))

(declare-fun b!4637452 () Bool)

(assert (=> b!4637452 (= e!2892930 (= (extractMap!1618 (Cons!51691 (tuple2!52697 hash!414 lt!1800047) Nil!51691)) (extractMap!1618 (Cons!51691 (tuple2!52697 hash!414 newBucket!224) Nil!51691))))))

(declare-fun res!1946916 () Bool)

(assert (=> start!466112 (=> (not res!1946916) (not e!2892931))))

(declare-fun noDuplicateKeys!1562 (List!51814) Bool)

(assert (=> start!466112 (= res!1946916 (noDuplicateKeys!1562 oldBucket!40))))

(assert (=> start!466112 e!2892931))

(assert (=> start!466112 true))

(assert (=> start!466112 e!2892928))

(assert (=> start!466112 tp_is_empty!29541))

(assert (=> start!466112 e!2892934))

(declare-fun b!4637457 () Bool)

(declare-fun res!1946914 () Bool)

(assert (=> b!4637457 (=> (not res!1946914) (not e!2892931))))

(assert (=> b!4637457 (= res!1946914 (noDuplicateKeys!1562 newBucket!224))))

(declare-fun b!4637458 () Bool)

(assert (=> b!4637458 (= e!2892929 (= lt!1800046 (ListMap!4394 Nil!51690)))))

(declare-fun b!4637459 () Bool)

(declare-fun res!1946913 () Bool)

(assert (=> b!4637459 (=> (not res!1946913) (not e!2892931))))

(assert (=> b!4637459 (= res!1946913 (allKeysSameHash!1416 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4637460 () Bool)

(declare-fun res!1946910 () Bool)

(assert (=> b!4637460 (=> (not res!1946910) (not e!2892931))))

(declare-fun removePairForKey!1185 (List!51814 K!13055) List!51814)

(assert (=> b!4637460 (= res!1946910 (= (removePairForKey!1185 oldBucket!40 key!4968) newBucket!224))))

(assert (= (and start!466112 res!1946916) b!4637457))

(assert (= (and b!4637457 res!1946914) b!4637460))

(assert (= (and b!4637460 res!1946910) b!4637459))

(assert (= (and b!4637459 res!1946913) b!4637453))

(assert (= (and b!4637453 res!1946911) b!4637449))

(assert (= (and b!4637449 res!1946917) b!4637450))

(assert (= (and b!4637450 res!1946918) b!4637451))

(assert (= (and b!4637451 res!1946909) b!4637458))

(assert (= (and b!4637451 (not res!1946915)) b!4637454))

(assert (= (and b!4637454 (not res!1946912)) b!4637452))

(assert (= (and start!466112 ((_ is Cons!51690) oldBucket!40)) b!4637455))

(assert (= (and start!466112 ((_ is Cons!51690) newBucket!224)) b!4637456))

(declare-fun m!5495383 () Bool)

(assert (=> start!466112 m!5495383))

(declare-fun m!5495385 () Bool)

(assert (=> b!4637459 m!5495385))

(declare-fun m!5495387 () Bool)

(assert (=> b!4637460 m!5495387))

(declare-fun m!5495389 () Bool)

(assert (=> b!4637449 m!5495389))

(declare-fun m!5495391 () Bool)

(assert (=> b!4637453 m!5495391))

(declare-fun m!5495393 () Bool)

(assert (=> b!4637453 m!5495393))

(declare-fun m!5495395 () Bool)

(assert (=> b!4637454 m!5495395))

(declare-fun m!5495397 () Bool)

(assert (=> b!4637451 m!5495397))

(declare-fun m!5495399 () Bool)

(assert (=> b!4637451 m!5495399))

(declare-fun m!5495401 () Bool)

(assert (=> b!4637452 m!5495401))

(declare-fun m!5495403 () Bool)

(assert (=> b!4637452 m!5495403))

(declare-fun m!5495405 () Bool)

(assert (=> b!4637457 m!5495405))

(declare-fun m!5495407 () Bool)

(assert (=> b!4637450 m!5495407))

(check-sat (not b!4637452) (not b!4637449) (not start!466112) (not b!4637453) tp_is_empty!29543 (not b!4637451) (not b!4637456) (not b!4637457) (not b!4637459) tp_is_empty!29541 (not b!4637454) (not b!4637450) (not b!4637455) (not b!4637460))
(check-sat)
