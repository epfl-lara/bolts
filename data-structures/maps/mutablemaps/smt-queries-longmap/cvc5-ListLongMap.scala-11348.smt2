; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132024 () Bool)

(assert start!132024)

(declare-fun b_free!31705 () Bool)

(declare-fun b_next!31705 () Bool)

(assert (=> start!132024 (= b_free!31705 (not b_next!31705))))

(declare-fun tp!111368 () Bool)

(declare-fun b_and!51125 () Bool)

(assert (=> start!132024 (= tp!111368 b_and!51125)))

(declare-fun b!1546234 () Bool)

(declare-datatypes ((V!59085 0))(
  ( (V!59086 (val!19068 Int)) )
))
(declare-datatypes ((tuple2!24662 0))(
  ( (tuple2!24663 (_1!12341 (_ BitVec 64)) (_2!12341 V!59085)) )
))
(declare-datatypes ((List!36173 0))(
  ( (Nil!36170) (Cons!36169 (h!37615 tuple2!24662) (t!50874 List!36173)) )
))
(declare-datatypes ((ListLongMap!22283 0))(
  ( (ListLongMap!22284 (toList!11157 List!36173)) )
))
(declare-fun e!860700 () ListLongMap!22283)

(declare-fun call!69512 () ListLongMap!22283)

(assert (=> b!1546234 (= e!860700 call!69512)))

(declare-fun b!1546235 () Bool)

(declare-fun e!860693 () ListLongMap!22283)

(declare-fun call!69513 () ListLongMap!22283)

(declare-fun minValue!436 () V!59085)

(declare-fun +!4885 (ListLongMap!22283 tuple2!24662) ListLongMap!22283)

(assert (=> b!1546235 (= e!860693 (+!4885 call!69513 (tuple2!24663 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1546236 () Bool)

(declare-fun e!860695 () Bool)

(declare-fun e!860694 () Bool)

(assert (=> b!1546236 (= e!860695 e!860694)))

(declare-fun res!1060226 () Bool)

(assert (=> b!1546236 (=> (not res!1060226) (not e!860694))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103131 0))(
  ( (array!103132 (arr!49763 (Array (_ BitVec 32) (_ BitVec 64))) (size!50314 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103131)

(assert (=> b!1546236 (= res!1060226 (bvslt from!762 (size!50314 _keys!618)))))

(declare-fun lt!666469 () ListLongMap!22283)

(assert (=> b!1546236 (= lt!666469 e!860693)))

(declare-fun c!141735 () Bool)

(declare-fun lt!666467 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1546236 (= c!141735 (and (not lt!666467) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1546236 (= lt!666467 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1546237 () Bool)

(declare-fun res!1060224 () Bool)

(assert (=> b!1546237 (=> (not res!1060224) (not e!860695))))

(declare-datatypes ((List!36174 0))(
  ( (Nil!36171) (Cons!36170 (h!37616 (_ BitVec 64)) (t!50875 List!36174)) )
))
(declare-fun arrayNoDuplicates!0 (array!103131 (_ BitVec 32) List!36174) Bool)

(assert (=> b!1546237 (= res!1060224 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36171))))

(declare-fun b!1546238 () Bool)

(declare-fun c!141737 () Bool)

(assert (=> b!1546238 (= c!141737 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666467))))

(declare-fun e!860696 () ListLongMap!22283)

(assert (=> b!1546238 (= e!860700 e!860696)))

(declare-fun mapNonEmpty!58675 () Bool)

(declare-fun mapRes!58675 () Bool)

(declare-fun tp!111367 () Bool)

(declare-fun e!860697 () Bool)

(assert (=> mapNonEmpty!58675 (= mapRes!58675 (and tp!111367 e!860697))))

(declare-datatypes ((ValueCell!18080 0))(
  ( (ValueCellFull!18080 (v!21866 V!59085)) (EmptyCell!18080) )
))
(declare-fun mapRest!58675 () (Array (_ BitVec 32) ValueCell!18080))

(declare-fun mapValue!58675 () ValueCell!18080)

(declare-fun mapKey!58675 () (_ BitVec 32))

(declare-datatypes ((array!103133 0))(
  ( (array!103134 (arr!49764 (Array (_ BitVec 32) ValueCell!18080)) (size!50315 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103133)

(assert (=> mapNonEmpty!58675 (= (arr!49764 _values!470) (store mapRest!58675 mapKey!58675 mapValue!58675))))

(declare-fun b!1546239 () Bool)

(declare-fun res!1060221 () Bool)

(assert (=> b!1546239 (=> (not res!1060221) (not e!860695))))

(assert (=> b!1546239 (= res!1060221 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50314 _keys!618))))))

(declare-fun b!1546240 () Bool)

(assert (=> b!1546240 (= e!860694 (not true))))

(declare-fun zeroValue!436 () V!59085)

(declare-fun lt!666470 () ListLongMap!22283)

(declare-fun contains!10057 (ListLongMap!22283 (_ BitVec 64)) Bool)

(assert (=> b!1546240 (contains!10057 (+!4885 lt!666470 (tuple2!24663 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49763 _keys!618) from!762))))

(declare-datatypes ((Unit!51476 0))(
  ( (Unit!51477) )
))
(declare-fun lt!666468 () Unit!51476)

(declare-fun addStillContains!1239 (ListLongMap!22283 (_ BitVec 64) V!59085 (_ BitVec 64)) Unit!51476)

(assert (=> b!1546240 (= lt!666468 (addStillContains!1239 lt!666470 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49763 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6604 (array!103131 array!103133 (_ BitVec 32) (_ BitVec 32) V!59085 V!59085 (_ BitVec 32) Int) ListLongMap!22283)

(assert (=> b!1546240 (= lt!666470 (getCurrentListMapNoExtraKeys!6604 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1546241 () Bool)

(assert (=> b!1546241 (= e!860693 e!860700)))

(declare-fun c!141736 () Bool)

(assert (=> b!1546241 (= c!141736 (and (not lt!666467) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!69509 () Bool)

(assert (=> bm!69509 (= call!69512 call!69513)))

(declare-fun bm!69510 () Bool)

(declare-fun call!69514 () ListLongMap!22283)

(declare-fun call!69516 () ListLongMap!22283)

(assert (=> bm!69510 (= call!69514 call!69516)))

(declare-fun b!1546242 () Bool)

(declare-fun res!1060225 () Bool)

(assert (=> b!1546242 (=> (not res!1060225) (not e!860694))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1546242 (= res!1060225 (validKeyInArray!0 (select (arr!49763 _keys!618) from!762)))))

(declare-fun res!1060222 () Bool)

(assert (=> start!132024 (=> (not res!1060222) (not e!860695))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132024 (= res!1060222 (validMask!0 mask!926))))

(assert (=> start!132024 e!860695))

(declare-fun array_inv!38629 (array!103131) Bool)

(assert (=> start!132024 (array_inv!38629 _keys!618)))

(declare-fun tp_is_empty!37981 () Bool)

(assert (=> start!132024 tp_is_empty!37981))

(assert (=> start!132024 true))

(assert (=> start!132024 tp!111368))

(declare-fun e!860701 () Bool)

(declare-fun array_inv!38630 (array!103133) Bool)

(assert (=> start!132024 (and (array_inv!38630 _values!470) e!860701)))

(declare-fun b!1546243 () Bool)

(declare-fun res!1060220 () Bool)

(assert (=> b!1546243 (=> (not res!1060220) (not e!860695))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103131 (_ BitVec 32)) Bool)

(assert (=> b!1546243 (= res!1060220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun bm!69511 () Bool)

(declare-fun call!69515 () ListLongMap!22283)

(assert (=> bm!69511 (= call!69515 call!69514)))

(declare-fun b!1546244 () Bool)

(declare-fun e!860699 () Bool)

(assert (=> b!1546244 (= e!860699 tp_is_empty!37981)))

(declare-fun bm!69512 () Bool)

(assert (=> bm!69512 (= call!69516 (getCurrentListMapNoExtraKeys!6604 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1546245 () Bool)

(assert (=> b!1546245 (= e!860696 call!69515)))

(declare-fun b!1546246 () Bool)

(assert (=> b!1546246 (= e!860696 call!69512)))

(declare-fun b!1546247 () Bool)

(assert (=> b!1546247 (= e!860701 (and e!860699 mapRes!58675))))

(declare-fun condMapEmpty!58675 () Bool)

(declare-fun mapDefault!58675 () ValueCell!18080)

