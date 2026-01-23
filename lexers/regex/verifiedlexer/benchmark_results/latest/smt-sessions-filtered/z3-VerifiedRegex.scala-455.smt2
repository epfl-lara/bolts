; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13258 () Bool)

(assert start!13258)

(declare-fun b!128572 () Bool)

(declare-fun b_free!3967 () Bool)

(declare-fun b_next!3967 () Bool)

(assert (=> b!128572 (= b_free!3967 (not b_next!3967))))

(declare-fun tp!69987 () Bool)

(declare-fun b_and!6097 () Bool)

(assert (=> b!128572 (= tp!69987 b_and!6097)))

(declare-datatypes ((V!926 0))(
  ( (V!927 (val!804 Int)) )
))
(declare-datatypes ((array!1635 0))(
  ( (array!1636 (arr!758 (Array (_ BitVec 32) V!926)) (size!1952 (_ BitVec 32))) )
))
(declare-datatypes ((array!1637 0))(
  ( (array!1638 (arr!759 (Array (_ BitVec 32) (_ BitVec 64))) (size!1953 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!874 0))(
  ( (LongMapFixedSize!875 (defaultEntry!776 Int) (mask!1417 (_ BitVec 32)) (extraKeys!683 (_ BitVec 32)) (zeroValue!693 V!926) (minValue!693 V!926) (_size!1002 (_ BitVec 32)) (_keys!728 array!1637) (_values!715 array!1635) (_vacant!498 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1727 0))(
  ( (Cell!1728 (v!13461 LongMapFixedSize!874)) )
))
(declare-datatypes ((MutLongMap!437 0))(
  ( (LongMap!437 (underlying!1068 Cell!1727)) (MutLongMapExt!436 (__x!2236 Int)) )
))
(declare-fun thiss!47465 () MutLongMap!437)

(declare-fun e!73953 () Bool)

(declare-fun tp_is_empty!1281 () Bool)

(declare-fun e!73951 () Bool)

(declare-fun array_inv!549 (array!1637) Bool)

(declare-fun array_inv!550 (array!1635) Bool)

(assert (=> b!128572 (= e!73951 (and tp!69987 tp_is_empty!1281 (array_inv!549 (_keys!728 (v!13461 (underlying!1068 thiss!47465)))) (array_inv!550 (_values!715 (v!13461 (underlying!1068 thiss!47465)))) e!73953))))

(declare-fun b!128573 () Bool)

(declare-fun mapRes!1687 () Bool)

(assert (=> b!128573 (= e!73953 (and tp_is_empty!1281 mapRes!1687))))

(declare-fun condMapEmpty!1687 () Bool)

(declare-fun mapDefault!1687 () V!926)

(assert (=> b!128573 (= condMapEmpty!1687 (= (arr!758 (_values!715 (v!13461 (underlying!1068 thiss!47465)))) ((as const (Array (_ BitVec 32) V!926)) mapDefault!1687)))))

(declare-fun b!128574 () Bool)

(declare-fun e!73954 () Bool)

(assert (=> b!128574 (= e!73954 e!73951)))

(declare-fun b!128575 () Bool)

(declare-fun e!73955 () Bool)

(declare-fun e!73956 () Bool)

(assert (=> b!128575 (= e!73955 e!73956)))

(declare-fun res!59259 () Bool)

(assert (=> b!128575 (=> (not res!59259) (not e!73956))))

(declare-fun key!7065 () (_ BitVec 64))

(declare-fun contains!299 (MutLongMap!437 (_ BitVec 64)) Bool)

(assert (=> b!128575 (= res!59259 (contains!299 thiss!47465 key!7065))))

(declare-fun lt!38451 () V!926)

(declare-fun apply!283 (MutLongMap!437 (_ BitVec 64)) V!926)

(assert (=> b!128575 (= lt!38451 (apply!283 thiss!47465 key!7065))))

(declare-fun b!128576 () Bool)

(assert (=> b!128576 (= e!73956 false)))

(declare-datatypes ((Option!202 0))(
  ( (None!201) (Some!201 (v!13462 V!926)) )
))
(declare-fun lt!38450 () Option!202)

(declare-datatypes ((tuple2!2408 0))(
  ( (tuple2!2409 (_1!1414 (_ BitVec 64)) (_2!1414 V!926)) )
))
(declare-datatypes ((List!2129 0))(
  ( (Nil!2123) (Cons!2123 (h!7520 tuple2!2408) (t!22705 List!2129)) )
))
(declare-fun getValueByKey!6 (List!2129 (_ BitVec 64)) Option!202)

(declare-datatypes ((ListLongMap!31 0))(
  ( (ListLongMap!32 (toList!287 List!2129)) )
))
(declare-fun abstractMap!21 (MutLongMap!437) ListLongMap!31)

(assert (=> b!128576 (= lt!38450 (getValueByKey!6 (toList!287 (abstractMap!21 thiss!47465)) key!7065))))

(declare-fun mapNonEmpty!1687 () Bool)

(declare-fun tp!69986 () Bool)

(assert (=> mapNonEmpty!1687 (= mapRes!1687 (and tp!69986 tp_is_empty!1281))))

(declare-fun mapKey!1687 () (_ BitVec 32))

(declare-fun mapValue!1687 () V!926)

(declare-fun mapRest!1687 () (Array (_ BitVec 32) V!926))

(assert (=> mapNonEmpty!1687 (= (arr!758 (_values!715 (v!13461 (underlying!1068 thiss!47465)))) (store mapRest!1687 mapKey!1687 mapValue!1687))))

(declare-fun res!59258 () Bool)

(assert (=> start!13258 (=> (not res!59258) (not e!73955))))

(declare-fun valid!393 (MutLongMap!437) Bool)

(assert (=> start!13258 (= res!59258 (valid!393 thiss!47465))))

(assert (=> start!13258 e!73955))

(declare-fun e!73957 () Bool)

(assert (=> start!13258 e!73957))

(assert (=> start!13258 true))

(declare-fun b!128577 () Bool)

(assert (=> b!128577 (= e!73957 e!73954)))

(declare-fun mapIsEmpty!1687 () Bool)

(assert (=> mapIsEmpty!1687 mapRes!1687))

(declare-fun b!128578 () Bool)

(declare-fun res!59260 () Bool)

(assert (=> b!128578 (=> (not res!59260) (not e!73955))))

(get-info :version)

(assert (=> b!128578 (= res!59260 ((_ is LongMap!437) thiss!47465))))

(assert (= (and start!13258 res!59258) b!128578))

(assert (= (and b!128578 res!59260) b!128575))

(assert (= (and b!128575 res!59259) b!128576))

(assert (= (and b!128573 condMapEmpty!1687) mapIsEmpty!1687))

(assert (= (and b!128573 (not condMapEmpty!1687)) mapNonEmpty!1687))

(assert (= b!128572 b!128573))

(assert (= b!128574 b!128572))

(assert (= b!128577 b!128574))

(assert (= (and start!13258 ((_ is LongMap!437) thiss!47465)) b!128577))

(declare-fun m!113209 () Bool)

(assert (=> b!128572 m!113209))

(declare-fun m!113211 () Bool)

(assert (=> b!128572 m!113211))

(declare-fun m!113213 () Bool)

(assert (=> b!128576 m!113213))

(declare-fun m!113215 () Bool)

(assert (=> b!128576 m!113215))

(declare-fun m!113217 () Bool)

(assert (=> b!128575 m!113217))

(declare-fun m!113219 () Bool)

(assert (=> b!128575 m!113219))

(declare-fun m!113221 () Bool)

(assert (=> start!13258 m!113221))

(declare-fun m!113223 () Bool)

(assert (=> mapNonEmpty!1687 m!113223))

(check-sat (not start!13258) (not mapNonEmpty!1687) (not b!128575) b_and!6097 (not b!128572) (not b_next!3967) tp_is_empty!1281 (not b!128576))
(check-sat b_and!6097 (not b_next!3967))
