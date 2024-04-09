; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132216 () Bool)

(assert start!132216)

(declare-fun b_free!31879 () Bool)

(declare-fun b_next!31879 () Bool)

(assert (=> start!132216 (= b_free!31879 (not b_next!31879))))

(declare-fun tp!111892 () Bool)

(declare-fun b_and!51315 () Bool)

(assert (=> start!132216 (= tp!111892 b_and!51315)))

(declare-fun mapNonEmpty!58939 () Bool)

(declare-fun mapRes!58939 () Bool)

(declare-fun tp!111893 () Bool)

(declare-fun e!863209 () Bool)

(assert (=> mapNonEmpty!58939 (= mapRes!58939 (and tp!111893 e!863209))))

(declare-datatypes ((V!59317 0))(
  ( (V!59318 (val!19155 Int)) )
))
(declare-datatypes ((ValueCell!18167 0))(
  ( (ValueCellFull!18167 (v!21954 V!59317)) (EmptyCell!18167) )
))
(declare-fun mapValue!58939 () ValueCell!18167)

(declare-datatypes ((array!103467 0))(
  ( (array!103468 (arr!49930 (Array (_ BitVec 32) ValueCell!18167)) (size!50481 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103467)

(declare-fun mapRest!58939 () (Array (_ BitVec 32) ValueCell!18167))

(declare-fun mapKey!58939 () (_ BitVec 32))

(assert (=> mapNonEmpty!58939 (= (arr!49930 _values!470) (store mapRest!58939 mapKey!58939 mapValue!58939))))

(declare-datatypes ((array!103469 0))(
  ( (array!103470 (arr!49931 (Array (_ BitVec 32) (_ BitVec 64))) (size!50482 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103469)

(declare-fun zeroValue!436 () V!59317)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun minValue!436 () V!59317)

(declare-datatypes ((tuple2!24828 0))(
  ( (tuple2!24829 (_1!12424 (_ BitVec 64)) (_2!12424 V!59317)) )
))
(declare-datatypes ((List!36316 0))(
  ( (Nil!36313) (Cons!36312 (h!37758 tuple2!24828) (t!51031 List!36316)) )
))
(declare-datatypes ((ListLongMap!22449 0))(
  ( (ListLongMap!22450 (toList!11240 List!36316)) )
))
(declare-fun call!70837 () ListLongMap!22449)

(declare-fun bm!70832 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6667 (array!103469 array!103467 (_ BitVec 32) (_ BitVec 32) V!59317 V!59317 (_ BitVec 32) Int) ListLongMap!22449)

(assert (=> bm!70832 (= call!70837 (getCurrentListMapNoExtraKeys!6667 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1550640 () Bool)

(declare-fun res!1062145 () Bool)

(declare-fun e!863205 () Bool)

(assert (=> b!1550640 (=> (not res!1062145) (not e!863205))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1550640 (= res!1062145 (validKeyInArray!0 (select (arr!49931 _keys!618) from!762)))))

(declare-fun b!1550641 () Bool)

(declare-fun res!1062141 () Bool)

(declare-fun e!863206 () Bool)

(assert (=> b!1550641 (=> (not res!1062141) (not e!863206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103469 (_ BitVec 32)) Bool)

(assert (=> b!1550641 (= res!1062141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1550642 () Bool)

(assert (=> b!1550642 (= e!863206 e!863205)))

(declare-fun res!1062142 () Bool)

(assert (=> b!1550642 (=> (not res!1062142) (not e!863205))))

(assert (=> b!1550642 (= res!1062142 (bvslt from!762 (size!50482 _keys!618)))))

(declare-fun lt!668309 () ListLongMap!22449)

(declare-fun e!863208 () ListLongMap!22449)

(assert (=> b!1550642 (= lt!668309 e!863208)))

(declare-fun c!142577 () Bool)

(declare-fun lt!668310 () Bool)

(assert (=> b!1550642 (= c!142577 (and (not lt!668310) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1550642 (= lt!668310 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!70833 () Bool)

(declare-fun call!70839 () ListLongMap!22449)

(assert (=> bm!70833 (= call!70839 call!70837)))

(declare-fun b!1550643 () Bool)

(declare-fun c!142576 () Bool)

(assert (=> b!1550643 (= c!142576 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!668310))))

(declare-fun e!863201 () ListLongMap!22449)

(declare-fun e!863202 () ListLongMap!22449)

(assert (=> b!1550643 (= e!863201 e!863202)))

(declare-fun b!1550645 () Bool)

(declare-fun call!70836 () ListLongMap!22449)

(declare-fun +!4949 (ListLongMap!22449 tuple2!24828) ListLongMap!22449)

(assert (=> b!1550645 (= e!863208 (+!4949 call!70836 (tuple2!24829 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1550646 () Bool)

(declare-fun res!1062147 () Bool)

(assert (=> b!1550646 (=> (not res!1062147) (not e!863206))))

(assert (=> b!1550646 (= res!1062147 (and (= (size!50481 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50482 _keys!618) (size!50481 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1550647 () Bool)

(declare-fun res!1062148 () Bool)

(assert (=> b!1550647 (=> (not res!1062148) (not e!863206))))

(declare-datatypes ((List!36317 0))(
  ( (Nil!36314) (Cons!36313 (h!37759 (_ BitVec 64)) (t!51032 List!36317)) )
))
(declare-fun arrayNoDuplicates!0 (array!103469 (_ BitVec 32) List!36317) Bool)

(assert (=> b!1550647 (= res!1062148 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36314))))

(declare-fun bm!70834 () Bool)

(declare-fun call!70835 () ListLongMap!22449)

(assert (=> bm!70834 (= call!70835 call!70836)))

(declare-fun b!1550648 () Bool)

(declare-fun e!863207 () Bool)

(assert (=> b!1550648 (= e!863205 (not e!863207))))

(declare-fun res!1062143 () Bool)

(assert (=> b!1550648 (=> (not res!1062143) (not e!863207))))

(declare-fun lt!668308 () ListLongMap!22449)

(declare-fun contains!10109 (ListLongMap!22449 (_ BitVec 64)) Bool)

(assert (=> b!1550648 (= res!1062143 (contains!10109 lt!668308 (select (arr!49931 _keys!618) from!762)))))

(assert (=> b!1550648 (contains!10109 (+!4949 lt!668308 (tuple2!24829 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49931 _keys!618) from!762))))

(declare-datatypes ((Unit!51583 0))(
  ( (Unit!51584) )
))
(declare-fun lt!668307 () Unit!51583)

(declare-fun addStillContains!1286 (ListLongMap!22449 (_ BitVec 64) V!59317 (_ BitVec 64)) Unit!51583)

(assert (=> b!1550648 (= lt!668307 (addStillContains!1286 lt!668308 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49931 _keys!618) from!762)))))

(assert (=> b!1550648 (= lt!668308 (getCurrentListMapNoExtraKeys!6667 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1550649 () Bool)

(declare-fun call!70838 () ListLongMap!22449)

(assert (=> b!1550649 (= e!863202 call!70838)))

(declare-fun b!1550650 () Bool)

(declare-fun res!1062146 () Bool)

(assert (=> b!1550650 (=> (not res!1062146) (not e!863206))))

(assert (=> b!1550650 (= res!1062146 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50482 _keys!618))))))

(declare-fun b!1550651 () Bool)

(assert (=> b!1550651 (= e!863202 call!70835)))

(declare-fun bm!70835 () Bool)

(assert (=> bm!70835 (= call!70838 call!70839)))

(declare-fun b!1550652 () Bool)

(declare-fun tp_is_empty!38155 () Bool)

(assert (=> b!1550652 (= e!863209 tp_is_empty!38155)))

(declare-fun res!1062144 () Bool)

(assert (=> start!132216 (=> (not res!1062144) (not e!863206))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132216 (= res!1062144 (validMask!0 mask!926))))

(assert (=> start!132216 e!863206))

(declare-fun array_inv!38743 (array!103469) Bool)

(assert (=> start!132216 (array_inv!38743 _keys!618)))

(assert (=> start!132216 tp_is_empty!38155))

(assert (=> start!132216 true))

(assert (=> start!132216 tp!111892))

(declare-fun e!863203 () Bool)

(declare-fun array_inv!38744 (array!103467) Bool)

(assert (=> start!132216 (and (array_inv!38744 _values!470) e!863203)))

(declare-fun b!1550644 () Bool)

(declare-fun e!863204 () Bool)

(assert (=> b!1550644 (= e!863204 tp_is_empty!38155)))

(declare-fun mapIsEmpty!58939 () Bool)

(assert (=> mapIsEmpty!58939 mapRes!58939))

(declare-fun c!142575 () Bool)

(declare-fun bm!70836 () Bool)

(assert (=> bm!70836 (= call!70836 (+!4949 (ite c!142577 call!70837 (ite c!142575 call!70839 call!70838)) (ite (or c!142577 c!142575) (tuple2!24829 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24829 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1550653 () Bool)

(assert (=> b!1550653 (= e!863203 (and e!863204 mapRes!58939))))

(declare-fun condMapEmpty!58939 () Bool)

(declare-fun mapDefault!58939 () ValueCell!18167)

