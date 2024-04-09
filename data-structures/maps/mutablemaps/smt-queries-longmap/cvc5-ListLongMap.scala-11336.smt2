; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131952 () Bool)

(assert start!131952)

(declare-fun b_free!31633 () Bool)

(declare-fun b_next!31633 () Bool)

(assert (=> start!131952 (= b_free!31633 (not b_next!31633))))

(declare-fun tp!111152 () Bool)

(declare-fun b_and!51053 () Bool)

(assert (=> start!131952 (= tp!111152 b_and!51053)))

(declare-datatypes ((array!102991 0))(
  ( (array!102992 (arr!49693 (Array (_ BitVec 32) (_ BitVec 64))) (size!50244 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102991)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58989 0))(
  ( (V!58990 (val!19032 Int)) )
))
(declare-datatypes ((ValueCell!18044 0))(
  ( (ValueCellFull!18044 (v!21830 V!58989)) (EmptyCell!18044) )
))
(declare-datatypes ((array!102993 0))(
  ( (array!102994 (arr!49694 (Array (_ BitVec 32) ValueCell!18044)) (size!50245 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102993)

(declare-fun bm!68969 () Bool)

(declare-fun minValue!436 () V!58989)

(declare-fun zeroValue!436 () V!58989)

(declare-datatypes ((tuple2!24592 0))(
  ( (tuple2!24593 (_1!12306 (_ BitVec 64)) (_2!12306 V!58989)) )
))
(declare-datatypes ((List!36111 0))(
  ( (Nil!36108) (Cons!36107 (h!37553 tuple2!24592) (t!50812 List!36111)) )
))
(declare-datatypes ((ListLongMap!22213 0))(
  ( (ListLongMap!22214 (toList!11122 List!36111)) )
))
(declare-fun call!68973 () ListLongMap!22213)

(declare-fun getCurrentListMapNoExtraKeys!6572 (array!102991 array!102993 (_ BitVec 32) (_ BitVec 32) V!58989 V!58989 (_ BitVec 32) Int) ListLongMap!22213)

(assert (=> bm!68969 (= call!68973 (getCurrentListMapNoExtraKeys!6572 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1544556 () Bool)

(declare-fun res!1059516 () Bool)

(declare-fun e!859746 () Bool)

(assert (=> b!1544556 (=> (not res!1059516) (not e!859746))))

(assert (=> b!1544556 (= res!1059516 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50244 _keys!618))))))

(declare-fun b!1544557 () Bool)

(declare-fun res!1059517 () Bool)

(assert (=> b!1544557 (=> (not res!1059517) (not e!859746))))

(assert (=> b!1544557 (= res!1059517 (and (= (size!50245 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50244 _keys!618) (size!50245 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!58567 () Bool)

(declare-fun mapRes!58567 () Bool)

(declare-fun tp!111151 () Bool)

(declare-fun e!859749 () Bool)

(assert (=> mapNonEmpty!58567 (= mapRes!58567 (and tp!111151 e!859749))))

(declare-fun mapValue!58567 () ValueCell!18044)

(declare-fun mapRest!58567 () (Array (_ BitVec 32) ValueCell!18044))

(declare-fun mapKey!58567 () (_ BitVec 32))

(assert (=> mapNonEmpty!58567 (= (arr!49694 _values!470) (store mapRest!58567 mapKey!58567 mapValue!58567))))

(declare-fun b!1544558 () Bool)

(declare-fun res!1059518 () Bool)

(assert (=> b!1544558 (=> (not res!1059518) (not e!859746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102991 (_ BitVec 32)) Bool)

(assert (=> b!1544558 (= res!1059518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1544559 () Bool)

(declare-fun e!859748 () Bool)

(declare-fun tp_is_empty!37909 () Bool)

(assert (=> b!1544559 (= e!859748 tp_is_empty!37909)))

(declare-fun bm!68970 () Bool)

(declare-fun call!68972 () ListLongMap!22213)

(declare-fun call!68974 () ListLongMap!22213)

(assert (=> bm!68970 (= call!68972 call!68974)))

(declare-fun b!1544560 () Bool)

(assert (=> b!1544560 (= e!859749 tp_is_empty!37909)))

(declare-fun b!1544561 () Bool)

(assert (=> b!1544561 (= e!859746 false)))

(declare-fun lt!666095 () ListLongMap!22213)

(declare-fun e!859747 () ListLongMap!22213)

(assert (=> b!1544561 (= lt!666095 e!859747)))

(declare-fun c!141411 () Bool)

(declare-fun lt!666094 () Bool)

(assert (=> b!1544561 (= c!141411 (and (not lt!666094) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1544561 (= lt!666094 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1544563 () Bool)

(declare-fun res!1059515 () Bool)

(assert (=> b!1544563 (=> (not res!1059515) (not e!859746))))

(declare-datatypes ((List!36112 0))(
  ( (Nil!36109) (Cons!36108 (h!37554 (_ BitVec 64)) (t!50813 List!36112)) )
))
(declare-fun arrayNoDuplicates!0 (array!102991 (_ BitVec 32) List!36112) Bool)

(assert (=> b!1544563 (= res!1059515 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36109))))

(declare-fun b!1544564 () Bool)

(declare-fun c!141413 () Bool)

(assert (=> b!1544564 (= c!141413 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666094))))

(declare-fun e!859753 () ListLongMap!22213)

(declare-fun e!859750 () ListLongMap!22213)

(assert (=> b!1544564 (= e!859753 e!859750)))

(declare-fun b!1544565 () Bool)

(declare-fun e!859752 () Bool)

(assert (=> b!1544565 (= e!859752 (and e!859748 mapRes!58567))))

(declare-fun condMapEmpty!58567 () Bool)

(declare-fun mapDefault!58567 () ValueCell!18044)

