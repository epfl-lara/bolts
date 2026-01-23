; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13266 () Bool)

(assert start!13266)

(declare-fun b!128650 () Bool)

(declare-fun b_free!3975 () Bool)

(declare-fun b_next!3975 () Bool)

(assert (=> b!128650 (= b_free!3975 (not b_next!3975))))

(declare-fun tp!70010 () Bool)

(declare-fun b_and!6105 () Bool)

(assert (=> b!128650 (= tp!70010 b_and!6105)))

(declare-fun b!128645 () Bool)

(declare-fun e!74027 () Bool)

(declare-fun e!74026 () Bool)

(assert (=> b!128645 (= e!74027 e!74026)))

(declare-fun b!128647 () Bool)

(declare-fun e!74028 () Bool)

(assert (=> b!128647 (= e!74026 e!74028)))

(declare-fun b!128648 () Bool)

(declare-fun e!74025 () Bool)

(assert (=> b!128648 (= e!74025 false)))

(declare-fun lt!38469 () Bool)

(declare-datatypes ((V!936 0))(
  ( (V!937 (val!808 Int)) )
))
(declare-datatypes ((array!1651 0))(
  ( (array!1652 (arr!766 (Array (_ BitVec 32) V!936)) (size!1960 (_ BitVec 32))) )
))
(declare-datatypes ((array!1653 0))(
  ( (array!1654 (arr!767 (Array (_ BitVec 32) (_ BitVec 64))) (size!1961 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!882 0))(
  ( (LongMapFixedSize!883 (defaultEntry!780 Int) (mask!1423 (_ BitVec 32)) (extraKeys!687 (_ BitVec 32)) (zeroValue!697 V!936) (minValue!697 V!936) (_size!1006 (_ BitVec 32)) (_keys!732 array!1653) (_values!719 array!1651) (_vacant!502 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1735 0))(
  ( (Cell!1736 (v!13466 LongMapFixedSize!882)) )
))
(declare-datatypes ((MutLongMap!441 0))(
  ( (LongMap!441 (underlying!1072 Cell!1735)) (MutLongMapExt!440 (__x!2240 Int)) )
))
(declare-fun thiss!47465 () MutLongMap!441)

(declare-fun key!7065 () (_ BitVec 64))

(declare-fun contains!300 (MutLongMap!441 (_ BitVec 64)) Bool)

(assert (=> b!128648 (= lt!38469 (contains!300 thiss!47465 key!7065))))

(declare-fun lt!38468 () V!936)

(declare-fun apply!285 (MutLongMap!441 (_ BitVec 64)) V!936)

(assert (=> b!128648 (= lt!38468 (apply!285 thiss!47465 key!7065))))

(declare-fun b!128649 () Bool)

(declare-fun e!74029 () Bool)

(declare-fun tp_is_empty!1289 () Bool)

(declare-fun mapRes!1699 () Bool)

(assert (=> b!128649 (= e!74029 (and tp_is_empty!1289 mapRes!1699))))

(declare-fun condMapEmpty!1699 () Bool)

(declare-fun mapDefault!1699 () V!936)

(assert (=> b!128649 (= condMapEmpty!1699 (= (arr!766 (_values!719 (v!13466 (underlying!1072 thiss!47465)))) ((as const (Array (_ BitVec 32) V!936)) mapDefault!1699)))))

(declare-fun mapNonEmpty!1699 () Bool)

(declare-fun tp!70011 () Bool)

(assert (=> mapNonEmpty!1699 (= mapRes!1699 (and tp!70011 tp_is_empty!1289))))

(declare-fun mapRest!1699 () (Array (_ BitVec 32) V!936))

(declare-fun mapValue!1699 () V!936)

(declare-fun mapKey!1699 () (_ BitVec 32))

(assert (=> mapNonEmpty!1699 (= (arr!766 (_values!719 (v!13466 (underlying!1072 thiss!47465)))) (store mapRest!1699 mapKey!1699 mapValue!1699))))

(declare-fun b!128646 () Bool)

(declare-fun res!59283 () Bool)

(assert (=> b!128646 (=> (not res!59283) (not e!74025))))

(get-info :version)

(assert (=> b!128646 (= res!59283 (not ((_ is LongMap!441) thiss!47465)))))

(declare-fun res!59284 () Bool)

(assert (=> start!13266 (=> (not res!59284) (not e!74025))))

(declare-fun valid!395 (MutLongMap!441) Bool)

(assert (=> start!13266 (= res!59284 (valid!395 thiss!47465))))

(assert (=> start!13266 e!74025))

(assert (=> start!13266 e!74027))

(assert (=> start!13266 true))

(declare-fun mapIsEmpty!1699 () Bool)

(assert (=> mapIsEmpty!1699 mapRes!1699))

(declare-fun array_inv!555 (array!1653) Bool)

(declare-fun array_inv!556 (array!1651) Bool)

(assert (=> b!128650 (= e!74028 (and tp!70010 tp_is_empty!1289 (array_inv!555 (_keys!732 (v!13466 (underlying!1072 thiss!47465)))) (array_inv!556 (_values!719 (v!13466 (underlying!1072 thiss!47465)))) e!74029))))

(assert (= (and start!13266 res!59284) b!128646))

(assert (= (and b!128646 res!59283) b!128648))

(assert (= (and b!128649 condMapEmpty!1699) mapIsEmpty!1699))

(assert (= (and b!128649 (not condMapEmpty!1699)) mapNonEmpty!1699))

(assert (= b!128650 b!128649))

(assert (= b!128647 b!128650))

(assert (= b!128645 b!128647))

(assert (= (and start!13266 ((_ is LongMap!441) thiss!47465)) b!128645))

(declare-fun m!113257 () Bool)

(assert (=> b!128648 m!113257))

(declare-fun m!113259 () Bool)

(assert (=> b!128648 m!113259))

(declare-fun m!113261 () Bool)

(assert (=> mapNonEmpty!1699 m!113261))

(declare-fun m!113263 () Bool)

(assert (=> start!13266 m!113263))

(declare-fun m!113265 () Bool)

(assert (=> b!128650 m!113265))

(declare-fun m!113267 () Bool)

(assert (=> b!128650 m!113267))

(check-sat tp_is_empty!1289 b_and!6105 (not start!13266) (not b!128648) (not b_next!3975) (not mapNonEmpty!1699) (not b!128650))
(check-sat b_and!6105 (not b_next!3975))
