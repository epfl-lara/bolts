; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131974 () Bool)

(assert start!131974)

(declare-fun b_free!31655 () Bool)

(declare-fun b_next!31655 () Bool)

(assert (=> start!131974 (= b_free!31655 (not b_next!31655))))

(declare-fun tp!111218 () Bool)

(declare-fun b_and!51075 () Bool)

(assert (=> start!131974 (= tp!111218 b_and!51075)))

(declare-fun res!1059697 () Bool)

(declare-fun e!860020 () Bool)

(assert (=> start!131974 (=> (not res!1059697) (not e!860020))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131974 (= res!1059697 (validMask!0 mask!926))))

(assert (=> start!131974 e!860020))

(declare-datatypes ((array!103035 0))(
  ( (array!103036 (arr!49715 (Array (_ BitVec 32) (_ BitVec 64))) (size!50266 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103035)

(declare-fun array_inv!38593 (array!103035) Bool)

(assert (=> start!131974 (array_inv!38593 _keys!618)))

(declare-fun tp_is_empty!37931 () Bool)

(assert (=> start!131974 tp_is_empty!37931))

(assert (=> start!131974 true))

(assert (=> start!131974 tp!111218))

(declare-datatypes ((V!59017 0))(
  ( (V!59018 (val!19043 Int)) )
))
(declare-datatypes ((ValueCell!18055 0))(
  ( (ValueCellFull!18055 (v!21841 V!59017)) (EmptyCell!18055) )
))
(declare-datatypes ((array!103037 0))(
  ( (array!103038 (arr!49716 (Array (_ BitVec 32) ValueCell!18055)) (size!50267 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103037)

(declare-fun e!860024 () Bool)

(declare-fun array_inv!38594 (array!103037) Bool)

(assert (=> start!131974 (and (array_inv!38594 _values!470) e!860024)))

(declare-fun b!1545034 () Bool)

(declare-fun res!1059699 () Bool)

(assert (=> b!1545034 (=> (not res!1059699) (not e!860020))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1545034 (= res!1059699 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50266 _keys!618))))))

(declare-fun b!1545035 () Bool)

(declare-fun e!860018 () Bool)

(assert (=> b!1545035 (= e!860018 tp_is_empty!37931)))

(declare-fun b!1545036 () Bool)

(declare-datatypes ((tuple2!24614 0))(
  ( (tuple2!24615 (_1!12317 (_ BitVec 64)) (_2!12317 V!59017)) )
))
(declare-datatypes ((List!36133 0))(
  ( (Nil!36130) (Cons!36129 (h!37575 tuple2!24614) (t!50834 List!36133)) )
))
(declare-datatypes ((ListLongMap!22235 0))(
  ( (ListLongMap!22236 (toList!11133 List!36133)) )
))
(declare-fun e!860021 () ListLongMap!22235)

(declare-fun call!69139 () ListLongMap!22235)

(declare-fun minValue!436 () V!59017)

(declare-fun +!4865 (ListLongMap!22235 tuple2!24614) ListLongMap!22235)

(assert (=> b!1545036 (= e!860021 (+!4865 call!69139 (tuple2!24615 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!69134 () Bool)

(declare-fun call!69141 () ListLongMap!22235)

(declare-fun call!69138 () ListLongMap!22235)

(assert (=> bm!69134 (= call!69141 call!69138)))

(declare-fun b!1545037 () Bool)

(declare-fun e!860026 () ListLongMap!22235)

(assert (=> b!1545037 (= e!860021 e!860026)))

(declare-fun c!141511 () Bool)

(declare-fun lt!666170 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1545037 (= c!141511 (and (not lt!666170) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1545038 () Bool)

(declare-fun c!141512 () Bool)

(assert (=> b!1545038 (= c!141512 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666170))))

(declare-fun e!860019 () ListLongMap!22235)

(assert (=> b!1545038 (= e!860026 e!860019)))

(declare-fun c!141510 () Bool)

(declare-fun bm!69135 () Bool)

(declare-fun call!69140 () ListLongMap!22235)

(declare-fun zeroValue!436 () V!59017)

(assert (=> bm!69135 (= call!69139 (+!4865 (ite c!141510 call!69138 (ite c!141511 call!69141 call!69140)) (ite (or c!141510 c!141511) (tuple2!24615 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24615 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1545039 () Bool)

(declare-fun res!1059700 () Bool)

(assert (=> b!1545039 (=> (not res!1059700) (not e!860020))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103035 (_ BitVec 32)) Bool)

(assert (=> b!1545039 (= res!1059700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun bm!69136 () Bool)

(declare-fun call!69137 () ListLongMap!22235)

(assert (=> bm!69136 (= call!69137 call!69139)))

(declare-fun mapIsEmpty!58600 () Bool)

(declare-fun mapRes!58600 () Bool)

(assert (=> mapIsEmpty!58600 mapRes!58600))

(declare-fun mapNonEmpty!58600 () Bool)

(declare-fun tp!111217 () Bool)

(assert (=> mapNonEmpty!58600 (= mapRes!58600 (and tp!111217 e!860018))))

(declare-fun mapRest!58600 () (Array (_ BitVec 32) ValueCell!18055))

(declare-fun mapKey!58600 () (_ BitVec 32))

(declare-fun mapValue!58600 () ValueCell!18055)

(assert (=> mapNonEmpty!58600 (= (arr!49716 _values!470) (store mapRest!58600 mapKey!58600 mapValue!58600))))

(declare-fun b!1545040 () Bool)

(assert (=> b!1545040 (= e!860019 call!69140)))

(declare-fun b!1545041 () Bool)

(declare-fun e!860025 () Bool)

(assert (=> b!1545041 (= e!860025 false)))

(declare-fun defaultEntry!478 () Int)

(declare-fun lt!666168 () Bool)

(declare-fun contains!10039 (ListLongMap!22235 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!6582 (array!103035 array!103037 (_ BitVec 32) (_ BitVec 32) V!59017 V!59017 (_ BitVec 32) Int) ListLongMap!22235)

(assert (=> b!1545041 (= lt!666168 (contains!10039 (getCurrentListMapNoExtraKeys!6582 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478) (select (arr!49715 _keys!618) from!762)))))

(declare-fun b!1545042 () Bool)

(declare-fun e!860023 () Bool)

(assert (=> b!1545042 (= e!860024 (and e!860023 mapRes!58600))))

(declare-fun condMapEmpty!58600 () Bool)

(declare-fun mapDefault!58600 () ValueCell!18055)

