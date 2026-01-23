; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13262 () Bool)

(assert start!13262)

(declare-fun b!128614 () Bool)

(declare-fun b_free!3971 () Bool)

(declare-fun b_next!3971 () Bool)

(assert (=> b!128614 (= b_free!3971 (not b_next!3971))))

(declare-fun tp!69998 () Bool)

(declare-fun b_and!6101 () Bool)

(assert (=> b!128614 (= tp!69998 b_and!6101)))

(declare-fun res!59271 () Bool)

(declare-fun e!73993 () Bool)

(assert (=> start!13262 (=> (not res!59271) (not e!73993))))

(declare-datatypes ((V!931 0))(
  ( (V!932 (val!806 Int)) )
))
(declare-datatypes ((array!1643 0))(
  ( (array!1644 (arr!762 (Array (_ BitVec 32) V!931)) (size!1956 (_ BitVec 32))) )
))
(declare-datatypes ((array!1645 0))(
  ( (array!1646 (arr!763 (Array (_ BitVec 32) (_ BitVec 64))) (size!1957 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!878 0))(
  ( (LongMapFixedSize!879 (defaultEntry!778 Int) (mask!1420 (_ BitVec 32)) (extraKeys!685 (_ BitVec 32)) (zeroValue!695 V!931) (minValue!695 V!931) (_size!1004 (_ BitVec 32)) (_keys!730 array!1645) (_values!717 array!1643) (_vacant!500 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1731 0))(
  ( (Cell!1732 (v!13464 LongMapFixedSize!878)) )
))
(declare-datatypes ((MutLongMap!439 0))(
  ( (LongMap!439 (underlying!1070 Cell!1731)) (MutLongMapExt!438 (__x!2238 Int)) )
))
(declare-fun thiss!47465 () MutLongMap!439)

(declare-fun valid!394 (MutLongMap!439) Bool)

(assert (=> start!13262 (= res!59271 (valid!394 thiss!47465))))

(assert (=> start!13262 e!73993))

(declare-fun e!73992 () Bool)

(assert (=> start!13262 e!73992))

(assert (=> start!13262 true))

(declare-fun mapNonEmpty!1693 () Bool)

(declare-fun mapRes!1693 () Bool)

(declare-fun tp!69999 () Bool)

(declare-fun tp_is_empty!1285 () Bool)

(assert (=> mapNonEmpty!1693 (= mapRes!1693 (and tp!69999 tp_is_empty!1285))))

(declare-fun mapValue!1693 () V!931)

(declare-fun mapKey!1693 () (_ BitVec 32))

(declare-fun mapRest!1693 () (Array (_ BitVec 32) V!931))

(assert (=> mapNonEmpty!1693 (= (arr!762 (_values!717 (v!13464 (underlying!1070 thiss!47465)))) (store mapRest!1693 mapKey!1693 mapValue!1693))))

(declare-fun b!128609 () Bool)

(declare-fun e!73989 () Bool)

(declare-fun e!73988 () Bool)

(assert (=> b!128609 (= e!73989 e!73988)))

(declare-fun b!128610 () Bool)

(declare-fun res!59272 () Bool)

(assert (=> b!128610 (=> (not res!59272) (not e!73993))))

(get-info :version)

(assert (=> b!128610 (= res!59272 (not ((_ is LongMap!439) thiss!47465)))))

(declare-fun b!128611 () Bool)

(declare-fun e!73991 () Bool)

(assert (=> b!128611 (= e!73991 (and tp_is_empty!1285 mapRes!1693))))

(declare-fun condMapEmpty!1693 () Bool)

(declare-fun mapDefault!1693 () V!931)

(assert (=> b!128611 (= condMapEmpty!1693 (= (arr!762 (_values!717 (v!13464 (underlying!1070 thiss!47465)))) ((as const (Array (_ BitVec 32) V!931)) mapDefault!1693)))))

(declare-fun mapIsEmpty!1693 () Bool)

(assert (=> mapIsEmpty!1693 mapRes!1693))

(declare-fun b!128612 () Bool)

(assert (=> b!128612 (= e!73992 e!73989)))

(declare-fun b!128613 () Bool)

(assert (=> b!128613 (= e!73993 false)))

(declare-fun lt!38457 () V!931)

(declare-fun key!7065 () (_ BitVec 64))

(declare-fun apply!284 (MutLongMap!439 (_ BitVec 64)) V!931)

(assert (=> b!128613 (= lt!38457 (apply!284 thiss!47465 key!7065))))

(declare-fun array_inv!551 (array!1645) Bool)

(declare-fun array_inv!552 (array!1643) Bool)

(assert (=> b!128614 (= e!73988 (and tp!69998 tp_is_empty!1285 (array_inv!551 (_keys!730 (v!13464 (underlying!1070 thiss!47465)))) (array_inv!552 (_values!717 (v!13464 (underlying!1070 thiss!47465)))) e!73991))))

(assert (= (and start!13262 res!59271) b!128610))

(assert (= (and b!128610 res!59272) b!128613))

(assert (= (and b!128611 condMapEmpty!1693) mapIsEmpty!1693))

(assert (= (and b!128611 (not condMapEmpty!1693)) mapNonEmpty!1693))

(assert (= b!128614 b!128611))

(assert (= b!128609 b!128614))

(assert (= b!128612 b!128609))

(assert (= (and start!13262 ((_ is LongMap!439) thiss!47465)) b!128612))

(declare-fun m!113235 () Bool)

(assert (=> start!13262 m!113235))

(declare-fun m!113237 () Bool)

(assert (=> mapNonEmpty!1693 m!113237))

(declare-fun m!113239 () Bool)

(assert (=> b!128613 m!113239))

(declare-fun m!113241 () Bool)

(assert (=> b!128614 m!113241))

(declare-fun m!113243 () Bool)

(assert (=> b!128614 m!113243))

(check-sat (not start!13262) (not b_next!3971) (not mapNonEmpty!1693) tp_is_empty!1285 (not b!128613) b_and!6101 (not b!128614))
(check-sat b_and!6101 (not b_next!3971))
