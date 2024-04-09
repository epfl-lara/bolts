; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131976 () Bool)

(assert start!131976)

(declare-fun b_free!31657 () Bool)

(declare-fun b_next!31657 () Bool)

(assert (=> start!131976 (= b_free!31657 (not b_next!31657))))

(declare-fun tp!111224 () Bool)

(declare-fun b_and!51077 () Bool)

(assert (=> start!131976 (= tp!111224 b_and!51077)))

(declare-fun b!1545082 () Bool)

(declare-fun e!860047 () Bool)

(declare-fun e!860045 () Bool)

(assert (=> b!1545082 (= e!860047 e!860045)))

(declare-fun res!1059718 () Bool)

(assert (=> b!1545082 (=> (not res!1059718) (not e!860045))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103039 0))(
  ( (array!103040 (arr!49717 (Array (_ BitVec 32) (_ BitVec 64))) (size!50268 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103039)

(assert (=> b!1545082 (= res!1059718 (bvslt from!762 (size!50268 _keys!618)))))

(declare-datatypes ((V!59021 0))(
  ( (V!59022 (val!19044 Int)) )
))
(declare-datatypes ((tuple2!24616 0))(
  ( (tuple2!24617 (_1!12318 (_ BitVec 64)) (_2!12318 V!59021)) )
))
(declare-datatypes ((List!36134 0))(
  ( (Nil!36131) (Cons!36130 (h!37576 tuple2!24616) (t!50835 List!36134)) )
))
(declare-datatypes ((ListLongMap!22237 0))(
  ( (ListLongMap!22238 (toList!11134 List!36134)) )
))
(declare-fun lt!666182 () ListLongMap!22237)

(declare-fun e!860052 () ListLongMap!22237)

(assert (=> b!1545082 (= lt!666182 e!860052)))

(declare-fun c!141519 () Bool)

(declare-fun lt!666181 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1545082 (= c!141519 (and (not lt!666181) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1545082 (= lt!666181 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!69149 () Bool)

(declare-fun call!69156 () ListLongMap!22237)

(declare-fun call!69154 () ListLongMap!22237)

(assert (=> bm!69149 (= call!69156 call!69154)))

(declare-fun b!1545083 () Bool)

(declare-fun e!860049 () ListLongMap!22237)

(declare-fun call!69155 () ListLongMap!22237)

(assert (=> b!1545083 (= e!860049 call!69155)))

(declare-fun bm!69150 () Bool)

(declare-fun call!69152 () ListLongMap!22237)

(assert (=> bm!69150 (= call!69155 call!69152)))

(declare-fun b!1545084 () Bool)

(declare-fun res!1059720 () Bool)

(assert (=> b!1545084 (=> (not res!1059720) (not e!860047))))

(declare-datatypes ((List!36135 0))(
  ( (Nil!36132) (Cons!36131 (h!37577 (_ BitVec 64)) (t!50836 List!36135)) )
))
(declare-fun arrayNoDuplicates!0 (array!103039 (_ BitVec 32) List!36135) Bool)

(assert (=> b!1545084 (= res!1059720 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36132))))

(declare-fun b!1545085 () Bool)

(assert (=> b!1545085 (= e!860052 e!860049)))

(declare-fun c!141521 () Bool)

(assert (=> b!1545085 (= c!141521 (and (not lt!666181) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!436 () V!59021)

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18056 0))(
  ( (ValueCellFull!18056 (v!21842 V!59021)) (EmptyCell!18056) )
))
(declare-datatypes ((array!103041 0))(
  ( (array!103042 (arr!49718 (Array (_ BitVec 32) ValueCell!18056)) (size!50269 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103041)

(declare-fun minValue!436 () V!59021)

(declare-fun bm!69151 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6583 (array!103039 array!103041 (_ BitVec 32) (_ BitVec 32) V!59021 V!59021 (_ BitVec 32) Int) ListLongMap!22237)

(assert (=> bm!69151 (= call!69154 (getCurrentListMapNoExtraKeys!6583 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapIsEmpty!58603 () Bool)

(declare-fun mapRes!58603 () Bool)

(assert (=> mapIsEmpty!58603 mapRes!58603))

(declare-fun b!1545086 () Bool)

(assert (=> b!1545086 (= e!860045 (not true))))

(declare-fun lt!666179 () ListLongMap!22237)

(declare-fun contains!10040 (ListLongMap!22237 (_ BitVec 64)) Bool)

(declare-fun +!4866 (ListLongMap!22237 tuple2!24616) ListLongMap!22237)

(assert (=> b!1545086 (contains!10040 (+!4866 lt!666179 (tuple2!24617 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49717 _keys!618) from!762))))

(declare-datatypes ((Unit!51442 0))(
  ( (Unit!51443) )
))
(declare-fun lt!666180 () Unit!51442)

(declare-fun addStillContains!1222 (ListLongMap!22237 (_ BitVec 64) V!59021 (_ BitVec 64)) Unit!51442)

(assert (=> b!1545086 (= lt!666180 (addStillContains!1222 lt!666179 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49717 _keys!618) from!762)))))

(assert (=> b!1545086 (= lt!666179 (getCurrentListMapNoExtraKeys!6583 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1545087 () Bool)

(declare-fun res!1059722 () Bool)

(assert (=> b!1545087 (=> (not res!1059722) (not e!860047))))

(assert (=> b!1545087 (= res!1059722 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50268 _keys!618))))))

(declare-fun b!1545088 () Bool)

(declare-fun e!860046 () Bool)

(declare-fun tp_is_empty!37933 () Bool)

(assert (=> b!1545088 (= e!860046 tp_is_empty!37933)))

(declare-fun mapNonEmpty!58603 () Bool)

(declare-fun tp!111223 () Bool)

(assert (=> mapNonEmpty!58603 (= mapRes!58603 (and tp!111223 e!860046))))

(declare-fun mapRest!58603 () (Array (_ BitVec 32) ValueCell!18056))

(declare-fun mapValue!58603 () ValueCell!18056)

(declare-fun mapKey!58603 () (_ BitVec 32))

(assert (=> mapNonEmpty!58603 (= (arr!49718 _values!470) (store mapRest!58603 mapKey!58603 mapValue!58603))))

(declare-fun b!1545089 () Bool)

(declare-fun e!860053 () ListLongMap!22237)

(assert (=> b!1545089 (= e!860053 call!69155)))

(declare-fun b!1545090 () Bool)

(declare-fun res!1059716 () Bool)

(assert (=> b!1545090 (=> (not res!1059716) (not e!860047))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103039 (_ BitVec 32)) Bool)

(assert (=> b!1545090 (= res!1059716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1545091 () Bool)

(assert (=> b!1545091 (= e!860052 (+!4866 call!69152 (tuple2!24617 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1545092 () Bool)

(declare-fun call!69153 () ListLongMap!22237)

(assert (=> b!1545092 (= e!860053 call!69153)))

(declare-fun b!1545093 () Bool)

(declare-fun e!860051 () Bool)

(assert (=> b!1545093 (= e!860051 tp_is_empty!37933)))

(declare-fun bm!69152 () Bool)

(assert (=> bm!69152 (= call!69153 call!69156)))

(declare-fun b!1545094 () Bool)

(declare-fun res!1059721 () Bool)

(assert (=> b!1545094 (=> (not res!1059721) (not e!860047))))

(assert (=> b!1545094 (= res!1059721 (and (= (size!50269 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50268 _keys!618) (size!50269 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun bm!69153 () Bool)

(assert (=> bm!69153 (= call!69152 (+!4866 (ite c!141519 call!69154 (ite c!141521 call!69156 call!69153)) (ite (or c!141519 c!141521) (tuple2!24617 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24617 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1545095 () Bool)

(declare-fun res!1059717 () Bool)

(assert (=> b!1545095 (=> (not res!1059717) (not e!860045))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1545095 (= res!1059717 (validKeyInArray!0 (select (arr!49717 _keys!618) from!762)))))

(declare-fun b!1545096 () Bool)

(declare-fun e!860048 () Bool)

(assert (=> b!1545096 (= e!860048 (and e!860051 mapRes!58603))))

(declare-fun condMapEmpty!58603 () Bool)

(declare-fun mapDefault!58603 () ValueCell!18056)

