; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132178 () Bool)

(assert start!132178)

(declare-fun b_free!31859 () Bool)

(declare-fun b_next!31859 () Bool)

(assert (=> start!132178 (= b_free!31859 (not b_next!31859))))

(declare-fun tp!111830 () Bool)

(declare-fun b_and!51291 () Bool)

(assert (=> start!132178 (= tp!111830 b_and!51291)))

(declare-datatypes ((V!59289 0))(
  ( (V!59290 (val!19145 Int)) )
))
(declare-datatypes ((tuple2!24810 0))(
  ( (tuple2!24811 (_1!12415 (_ BitVec 64)) (_2!12415 V!59289)) )
))
(declare-datatypes ((List!36304 0))(
  ( (Nil!36301) (Cons!36300 (h!37746 tuple2!24810) (t!51017 List!36304)) )
))
(declare-datatypes ((ListLongMap!22431 0))(
  ( (ListLongMap!22432 (toList!11231 List!36304)) )
))
(declare-fun call!70678 () ListLongMap!22431)

(declare-fun zeroValue!436 () V!59289)

(declare-fun c!142465 () Bool)

(declare-fun bm!70673 () Bool)

(declare-fun minValue!436 () V!59289)

(declare-fun call!70679 () ListLongMap!22431)

(declare-fun call!70677 () ListLongMap!22431)

(declare-fun call!70676 () ListLongMap!22431)

(declare-fun c!142466 () Bool)

(declare-fun +!4942 (ListLongMap!22431 tuple2!24810) ListLongMap!22431)

(assert (=> bm!70673 (= call!70676 (+!4942 (ite c!142466 call!70677 (ite c!142465 call!70679 call!70678)) (ite (or c!142466 c!142465) (tuple2!24811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!70674 () Bool)

(assert (=> bm!70674 (= call!70678 call!70679)))

(declare-datatypes ((array!103429 0))(
  ( (array!103430 (arr!49912 (Array (_ BitVec 32) (_ BitVec 64))) (size!50463 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103429)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun bm!70675 () Bool)

(declare-datatypes ((ValueCell!18157 0))(
  ( (ValueCellFull!18157 (v!21943 V!59289)) (EmptyCell!18157) )
))
(declare-datatypes ((array!103431 0))(
  ( (array!103432 (arr!49913 (Array (_ BitVec 32) ValueCell!18157)) (size!50464 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103431)

(declare-fun getCurrentListMapNoExtraKeys!6663 (array!103429 array!103431 (_ BitVec 32) (_ BitVec 32) V!59289 V!59289 (_ BitVec 32) Int) ListLongMap!22431)

(assert (=> bm!70675 (= call!70677 (getCurrentListMapNoExtraKeys!6663 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapIsEmpty!58906 () Bool)

(declare-fun mapRes!58906 () Bool)

(assert (=> mapIsEmpty!58906 mapRes!58906))

(declare-fun bm!70676 () Bool)

(assert (=> bm!70676 (= call!70679 call!70677)))

(declare-fun mapNonEmpty!58906 () Bool)

(declare-fun tp!111829 () Bool)

(declare-fun e!862879 () Bool)

(assert (=> mapNonEmpty!58906 (= mapRes!58906 (and tp!111829 e!862879))))

(declare-fun mapRest!58906 () (Array (_ BitVec 32) ValueCell!18157))

(declare-fun mapKey!58906 () (_ BitVec 32))

(declare-fun mapValue!58906 () ValueCell!18157)

(assert (=> mapNonEmpty!58906 (= (arr!49913 _values!470) (store mapRest!58906 mapKey!58906 mapValue!58906))))

(declare-fun bm!70677 () Bool)

(declare-fun call!70680 () ListLongMap!22431)

(assert (=> bm!70677 (= call!70680 call!70676)))

(declare-fun b!1550070 () Bool)

(declare-fun e!862873 () ListLongMap!22431)

(assert (=> b!1550070 (= e!862873 (+!4942 call!70676 (tuple2!24811 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1550071 () Bool)

(declare-fun tp_is_empty!38135 () Bool)

(assert (=> b!1550071 (= e!862879 tp_is_empty!38135)))

(declare-fun b!1550072 () Bool)

(declare-fun e!862878 () ListLongMap!22431)

(assert (=> b!1550072 (= e!862878 call!70678)))

(declare-fun res!1061893 () Bool)

(declare-fun e!862876 () Bool)

(assert (=> start!132178 (=> (not res!1061893) (not e!862876))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132178 (= res!1061893 (validMask!0 mask!926))))

(assert (=> start!132178 e!862876))

(declare-fun array_inv!38733 (array!103429) Bool)

(assert (=> start!132178 (array_inv!38733 _keys!618)))

(assert (=> start!132178 tp_is_empty!38135))

(assert (=> start!132178 true))

(assert (=> start!132178 tp!111830))

(declare-fun e!862872 () Bool)

(declare-fun array_inv!38734 (array!103431) Bool)

(assert (=> start!132178 (and (array_inv!38734 _values!470) e!862872)))

(declare-fun b!1550073 () Bool)

(declare-fun res!1061896 () Bool)

(assert (=> b!1550073 (=> (not res!1061896) (not e!862876))))

(assert (=> b!1550073 (= res!1061896 (and (= (size!50464 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50463 _keys!618) (size!50464 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1550074 () Bool)

(declare-fun c!142464 () Bool)

(declare-fun lt!668158 () Bool)

(assert (=> b!1550074 (= c!142464 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!668158))))

(declare-fun e!862874 () ListLongMap!22431)

(assert (=> b!1550074 (= e!862874 e!862878)))

(declare-fun b!1550075 () Bool)

(declare-fun res!1061897 () Bool)

(assert (=> b!1550075 (=> (not res!1061897) (not e!862876))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103429 (_ BitVec 32)) Bool)

(assert (=> b!1550075 (= res!1061897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1550076 () Bool)

(assert (=> b!1550076 (= e!862876 false)))

(declare-fun lt!668159 () ListLongMap!22431)

(assert (=> b!1550076 (= lt!668159 e!862873)))

(assert (=> b!1550076 (= c!142466 (and (not lt!668158) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1550076 (= lt!668158 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1550077 () Bool)

(declare-fun res!1061895 () Bool)

(assert (=> b!1550077 (=> (not res!1061895) (not e!862876))))

(assert (=> b!1550077 (= res!1061895 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50463 _keys!618))))))

(declare-fun b!1550078 () Bool)

(assert (=> b!1550078 (= e!862874 call!70680)))

(declare-fun b!1550079 () Bool)

(declare-fun e!862875 () Bool)

(assert (=> b!1550079 (= e!862875 tp_is_empty!38135)))

(declare-fun b!1550080 () Bool)

(assert (=> b!1550080 (= e!862878 call!70680)))

(declare-fun b!1550081 () Bool)

(assert (=> b!1550081 (= e!862872 (and e!862875 mapRes!58906))))

(declare-fun condMapEmpty!58906 () Bool)

(declare-fun mapDefault!58906 () ValueCell!18157)

