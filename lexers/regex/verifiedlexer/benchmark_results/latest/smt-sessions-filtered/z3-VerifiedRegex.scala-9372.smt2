; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497298 () Bool)

(assert start!497298)

(declare-fun b!4810638 () Bool)

(declare-fun b_free!130155 () Bool)

(declare-fun b_next!130945 () Bool)

(assert (=> b!4810638 (= b_free!130155 (not b_next!130945))))

(declare-fun tp!1360616 () Bool)

(declare-fun b_and!341939 () Bool)

(assert (=> b!4810638 (= tp!1360616 b_and!341939)))

(declare-fun b!4810637 () Bool)

(declare-fun b_free!130157 () Bool)

(declare-fun b_next!130947 () Bool)

(assert (=> b!4810637 (= b_free!130157 (not b_next!130947))))

(declare-fun tp!1360617 () Bool)

(declare-fun b_and!341941 () Bool)

(assert (=> b!4810637 (= tp!1360617 b_and!341941)))

(declare-fun mapIsEmpty!22328 () Bool)

(declare-fun mapRes!22328 () Bool)

(assert (=> mapIsEmpty!22328 mapRes!22328))

(declare-fun res!2046294 () Bool)

(declare-fun e!3005159 () Bool)

(assert (=> start!497298 (=> (not res!2046294) (not e!3005159))))

(declare-datatypes ((K!16149 0))(
  ( (K!16150 (val!21225 Int)) )
))
(declare-datatypes ((array!18586 0))(
  ( (array!18587 (arr!8291 (Array (_ BitVec 32) (_ BitVec 64))) (size!36537 (_ BitVec 32))) )
))
(declare-datatypes ((V!16395 0))(
  ( (V!16396 (val!21226 Int)) )
))
(declare-datatypes ((tuple2!57396 0))(
  ( (tuple2!57397 (_1!31992 K!16149) (_2!31992 V!16395)) )
))
(declare-datatypes ((List!54659 0))(
  ( (Nil!54535) (Cons!54535 (h!60967 tuple2!57396) (t!362139 List!54659)) )
))
(declare-datatypes ((array!18588 0))(
  ( (array!18589 (arr!8292 (Array (_ BitVec 32) List!54659)) (size!36538 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10106 0))(
  ( (LongMapFixedSize!10107 (defaultEntry!5471 Int) (mask!15050 (_ BitVec 32)) (extraKeys!5328 (_ BitVec 32)) (zeroValue!5341 List!54659) (minValue!5341 List!54659) (_size!10131 (_ BitVec 32)) (_keys!5395 array!18586) (_values!5366 array!18588) (_vacant!5118 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19977 0))(
  ( (Cell!19978 (v!48847 LongMapFixedSize!10106)) )
))
(declare-datatypes ((MutLongMap!5053 0))(
  ( (LongMap!5053 (underlying!10313 Cell!19977)) (MutLongMapExt!5052 (__x!33257 Int)) )
))
(declare-datatypes ((Hashable!7064 0))(
  ( (HashableExt!7063 (__x!33258 Int)) )
))
(declare-datatypes ((Cell!19979 0))(
  ( (Cell!19980 (v!48848 MutLongMap!5053)) )
))
(declare-datatypes ((MutableMap!4937 0))(
  ( (MutableMapExt!4936 (__x!33259 Int)) (HashMap!4937 (underlying!10314 Cell!19979) (hashF!13338 Hashable!7064) (_size!10132 (_ BitVec 32)) (defaultValue!5108 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4937)

(get-info :version)

(assert (=> start!497298 (= res!2046294 ((_ is HashMap!4937) thiss!41921))))

(assert (=> start!497298 e!3005159))

(declare-fun e!3005162 () Bool)

(assert (=> start!497298 e!3005162))

(declare-fun tp_is_empty!33981 () Bool)

(assert (=> start!497298 tp_is_empty!33981))

(declare-fun b!4810636 () Bool)

(declare-fun e!3005161 () Bool)

(assert (=> b!4810636 (= e!3005161 false)))

(declare-fun lt!1962647 () Bool)

(declare-fun lt!1962649 () (_ BitVec 64))

(declare-datatypes ((tuple2!57398 0))(
  ( (tuple2!57399 (_1!31993 (_ BitVec 64)) (_2!31993 List!54659)) )
))
(declare-datatypes ((List!54660 0))(
  ( (Nil!54536) (Cons!54536 (h!60968 tuple2!57398) (t!362140 List!54660)) )
))
(declare-fun contains!18259 (List!54660 tuple2!57398) Bool)

(declare-datatypes ((ListLongMap!5601 0))(
  ( (ListLongMap!5602 (toList!7142 List!54660)) )
))
(declare-fun map!12416 (MutLongMap!5053) ListLongMap!5601)

(declare-fun apply!13153 (MutLongMap!5053 (_ BitVec 64)) List!54659)

(assert (=> b!4810636 (= lt!1962647 (contains!18259 (toList!7142 (map!12416 (v!48848 (underlying!10314 thiss!41921)))) (tuple2!57399 lt!1962649 (apply!13153 (v!48848 (underlying!10314 thiss!41921)) lt!1962649))))))

(declare-fun e!3005166 () Bool)

(assert (=> b!4810637 (= e!3005162 (and e!3005166 tp!1360617))))

(declare-fun tp!1360614 () Bool)

(declare-fun tp!1360615 () Bool)

(declare-fun e!3005160 () Bool)

(declare-fun e!3005164 () Bool)

(declare-fun array_inv!5985 (array!18586) Bool)

(declare-fun array_inv!5986 (array!18588) Bool)

(assert (=> b!4810638 (= e!3005160 (and tp!1360616 tp!1360615 tp!1360614 (array_inv!5985 (_keys!5395 (v!48847 (underlying!10313 (v!48848 (underlying!10314 thiss!41921)))))) (array_inv!5986 (_values!5366 (v!48847 (underlying!10313 (v!48848 (underlying!10314 thiss!41921)))))) e!3005164))))

(declare-fun b!4810639 () Bool)

(assert (=> b!4810639 (= e!3005159 e!3005161)))

(declare-fun res!2046295 () Bool)

(assert (=> b!4810639 (=> (not res!2046295) (not e!3005161))))

(declare-fun contains!18260 (MutLongMap!5053 (_ BitVec 64)) Bool)

(assert (=> b!4810639 (= res!2046295 (contains!18260 (v!48848 (underlying!10314 thiss!41921)) lt!1962649))))

(declare-fun key!1652 () K!16149)

(declare-fun hash!5132 (Hashable!7064 K!16149) (_ BitVec 64))

(assert (=> b!4810639 (= lt!1962649 (hash!5132 (hashF!13338 thiss!41921) key!1652))))

(declare-fun b!4810640 () Bool)

(declare-fun e!3005165 () Bool)

(declare-fun e!3005163 () Bool)

(assert (=> b!4810640 (= e!3005165 e!3005163)))

(declare-fun b!4810641 () Bool)

(declare-fun res!2046296 () Bool)

(assert (=> b!4810641 (=> (not res!2046296) (not e!3005159))))

(declare-fun valid!4079 (MutableMap!4937) Bool)

(assert (=> b!4810641 (= res!2046296 (valid!4079 thiss!41921))))

(declare-fun b!4810642 () Bool)

(assert (=> b!4810642 (= e!3005163 e!3005160)))

(declare-fun mapNonEmpty!22328 () Bool)

(declare-fun tp!1360618 () Bool)

(declare-fun tp!1360619 () Bool)

(assert (=> mapNonEmpty!22328 (= mapRes!22328 (and tp!1360618 tp!1360619))))

(declare-fun mapKey!22328 () (_ BitVec 32))

(declare-fun mapRest!22328 () (Array (_ BitVec 32) List!54659))

(declare-fun mapValue!22328 () List!54659)

(assert (=> mapNonEmpty!22328 (= (arr!8292 (_values!5366 (v!48847 (underlying!10313 (v!48848 (underlying!10314 thiss!41921)))))) (store mapRest!22328 mapKey!22328 mapValue!22328))))

(declare-fun b!4810643 () Bool)

(declare-fun lt!1962648 () MutLongMap!5053)

(assert (=> b!4810643 (= e!3005166 (and e!3005165 ((_ is LongMap!5053) lt!1962648)))))

(assert (=> b!4810643 (= lt!1962648 (v!48848 (underlying!10314 thiss!41921)))))

(declare-fun b!4810644 () Bool)

(declare-fun tp!1360613 () Bool)

(assert (=> b!4810644 (= e!3005164 (and tp!1360613 mapRes!22328))))

(declare-fun condMapEmpty!22328 () Bool)

(declare-fun mapDefault!22328 () List!54659)

(assert (=> b!4810644 (= condMapEmpty!22328 (= (arr!8292 (_values!5366 (v!48847 (underlying!10313 (v!48848 (underlying!10314 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54659)) mapDefault!22328)))))

(assert (= (and start!497298 res!2046294) b!4810641))

(assert (= (and b!4810641 res!2046296) b!4810639))

(assert (= (and b!4810639 res!2046295) b!4810636))

(assert (= (and b!4810644 condMapEmpty!22328) mapIsEmpty!22328))

(assert (= (and b!4810644 (not condMapEmpty!22328)) mapNonEmpty!22328))

(assert (= b!4810638 b!4810644))

(assert (= b!4810642 b!4810638))

(assert (= b!4810640 b!4810642))

(assert (= (and b!4810643 ((_ is LongMap!5053) (v!48848 (underlying!10314 thiss!41921)))) b!4810640))

(assert (= b!4810637 b!4810643))

(assert (= (and start!497298 ((_ is HashMap!4937) thiss!41921)) b!4810637))

(declare-fun m!5796520 () Bool)

(assert (=> b!4810641 m!5796520))

(declare-fun m!5796522 () Bool)

(assert (=> mapNonEmpty!22328 m!5796522))

(declare-fun m!5796524 () Bool)

(assert (=> b!4810638 m!5796524))

(declare-fun m!5796526 () Bool)

(assert (=> b!4810638 m!5796526))

(declare-fun m!5796528 () Bool)

(assert (=> b!4810639 m!5796528))

(declare-fun m!5796530 () Bool)

(assert (=> b!4810639 m!5796530))

(declare-fun m!5796532 () Bool)

(assert (=> b!4810636 m!5796532))

(declare-fun m!5796534 () Bool)

(assert (=> b!4810636 m!5796534))

(declare-fun m!5796536 () Bool)

(assert (=> b!4810636 m!5796536))

(check-sat tp_is_empty!33981 (not b!4810644) b_and!341939 (not b!4810639) (not b!4810636) (not b_next!130945) (not b!4810638) (not b_next!130947) (not mapNonEmpty!22328) b_and!341941 (not b!4810641))
(check-sat b_and!341939 b_and!341941 (not b_next!130945) (not b_next!130947))
