; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759566 () Bool)

(assert start!759566)

(declare-fun b!8059809 () Bool)

(declare-fun res!3188597 () Bool)

(declare-fun e!4749812 () Bool)

(assert (=> b!8059809 (=> (not res!3188597) (not e!4749812))))

(declare-datatypes ((B!4523 0))(
  ( (B!4524 (val!33117 Int)) )
))
(declare-datatypes ((K!23056 0))(
  ( (K!23057 (val!33118 Int)) )
))
(declare-datatypes ((tuple2!71082 0))(
  ( (tuple2!71083 (_1!38844 K!23056) (_2!38844 B!4523)) )
))
(declare-datatypes ((List!75804 0))(
  ( (Nil!75678) (Cons!75678 (h!82126 tuple2!71082) (t!391576 List!75804)) )
))
(declare-datatypes ((ListMap!7445 0))(
  ( (ListMap!7446 (toList!11997 List!75804)) )
))
(declare-fun thiss!41813 () ListMap!7445)

(declare-fun invariantList!1985 (List!75804) Bool)

(assert (=> b!8059809 (= res!3188597 (invariantList!1985 (toList!11997 thiss!41813)))))

(declare-fun b!8059810 () Bool)

(assert (=> b!8059810 (= e!4749812 false)))

(declare-fun lt!2732949 () Bool)

(declare-fun key!1573 () K!23056)

(declare-datatypes ((List!75805 0))(
  ( (Nil!75679) (Cons!75679 (h!82127 K!23056) (t!391577 List!75805)) )
))
(declare-fun contains!21343 (List!75805 K!23056) Bool)

(declare-fun getKeysList!1277 (List!75804) List!75805)

(assert (=> b!8059810 (= lt!2732949 (contains!21343 (getKeysList!1277 (toList!11997 thiss!41813)) key!1573))))

(declare-fun res!3188599 () Bool)

(assert (=> start!759566 (=> (not res!3188599) (not e!4749812))))

(declare-fun containsKey!4950 (List!75804 K!23056) Bool)

(assert (=> start!759566 (= res!3188599 (not (containsKey!4950 (toList!11997 thiss!41813) key!1573)))))

(assert (=> start!759566 e!4749812))

(declare-fun e!4749811 () Bool)

(declare-fun inv!97526 (ListMap!7445) Bool)

(assert (=> start!759566 (and (inv!97526 thiss!41813) e!4749811)))

(declare-fun tp_is_empty!55271 () Bool)

(assert (=> start!759566 tp_is_empty!55271))

(declare-fun b!8059811 () Bool)

(declare-fun tp!2414445 () Bool)

(assert (=> b!8059811 (= e!4749811 tp!2414445)))

(declare-fun b!8059808 () Bool)

(declare-fun res!3188598 () Bool)

(assert (=> b!8059808 (=> (not res!3188598) (not e!4749812))))

(declare-fun keys!30966 (ListMap!7445) List!75805)

(assert (=> b!8059808 (= res!3188598 (contains!21343 (keys!30966 thiss!41813) key!1573))))

(assert (= (and start!759566 res!3188599) b!8059808))

(assert (= (and b!8059808 res!3188598) b!8059809))

(assert (= (and b!8059809 res!3188597) b!8059810))

(assert (= start!759566 b!8059811))

(declare-fun m!8412956 () Bool)

(assert (=> b!8059809 m!8412956))

(declare-fun m!8412958 () Bool)

(assert (=> b!8059810 m!8412958))

(assert (=> b!8059810 m!8412958))

(declare-fun m!8412960 () Bool)

(assert (=> b!8059810 m!8412960))

(declare-fun m!8412962 () Bool)

(assert (=> start!759566 m!8412962))

(declare-fun m!8412964 () Bool)

(assert (=> start!759566 m!8412964))

(declare-fun m!8412966 () Bool)

(assert (=> b!8059808 m!8412966))

(assert (=> b!8059808 m!8412966))

(declare-fun m!8412968 () Bool)

(assert (=> b!8059808 m!8412968))

(push 1)

(assert (not b!8059810))

(assert (not b!8059811))

(assert (not b!8059808))

(assert (not b!8059809))

(assert (not start!759566))

(assert tp_is_empty!55271)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

