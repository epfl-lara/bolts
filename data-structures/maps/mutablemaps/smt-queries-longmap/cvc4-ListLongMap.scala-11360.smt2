; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132100 () Bool)

(assert start!132100)

(declare-fun b_free!31781 () Bool)

(declare-fun b_next!31781 () Bool)

(assert (=> start!132100 (= b_free!31781 (not b_next!31781))))

(declare-fun tp!111595 () Bool)

(declare-fun b_and!51201 () Bool)

(assert (=> start!132100 (= tp!111595 b_and!51201)))

(declare-fun b!1548058 () Bool)

(declare-fun e!861721 () Bool)

(declare-fun tp_is_empty!38057 () Bool)

(assert (=> b!1548058 (= e!861721 tp_is_empty!38057)))

(declare-fun bm!70079 () Bool)

(declare-datatypes ((V!59185 0))(
  ( (V!59186 (val!19106 Int)) )
))
(declare-datatypes ((tuple2!24736 0))(
  ( (tuple2!24737 (_1!12378 (_ BitVec 64)) (_2!12378 V!59185)) )
))
(declare-datatypes ((List!36240 0))(
  ( (Nil!36237) (Cons!36236 (h!37682 tuple2!24736) (t!50941 List!36240)) )
))
(declare-datatypes ((ListLongMap!22357 0))(
  ( (ListLongMap!22358 (toList!11194 List!36240)) )
))
(declare-fun call!70086 () ListLongMap!22357)

(declare-fun call!70083 () ListLongMap!22357)

(assert (=> bm!70079 (= call!70086 call!70083)))

(declare-fun bm!70080 () Bool)

(declare-fun call!70082 () ListLongMap!22357)

(declare-fun call!70084 () ListLongMap!22357)

(assert (=> bm!70080 (= call!70082 call!70084)))

(declare-fun b!1548059 () Bool)

(declare-fun res!1061024 () Bool)

(declare-fun e!861724 () Bool)

(assert (=> b!1548059 (=> (not res!1061024) (not e!861724))))

(declare-datatypes ((array!103279 0))(
  ( (array!103280 (arr!49837 (Array (_ BitVec 32) (_ BitVec 64))) (size!50388 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103279)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18118 0))(
  ( (ValueCellFull!18118 (v!21904 V!59185)) (EmptyCell!18118) )
))
(declare-datatypes ((array!103281 0))(
  ( (array!103282 (arr!49838 (Array (_ BitVec 32) ValueCell!18118)) (size!50389 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103281)

(assert (=> b!1548059 (= res!1061024 (and (= (size!50389 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50388 _keys!618) (size!50389 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1548060 () Bool)

(declare-fun e!861723 () Bool)

(assert (=> b!1548060 (= e!861723 (not true))))

(declare-fun from!762 () (_ BitVec 32))

(declare-fun lt!667077 () V!59185)

(declare-fun lt!667074 () ListLongMap!22357)

(declare-fun apply!1098 (ListLongMap!22357 (_ BitVec 64)) V!59185)

(assert (=> b!1548060 (= (apply!1098 lt!667074 (select (arr!49837 _keys!618) from!762)) lt!667077)))

(declare-fun lt!667079 () ListLongMap!22357)

(declare-fun zeroValue!436 () V!59185)

(declare-datatypes ((Unit!51526 0))(
  ( (Unit!51527) )
))
(declare-fun lt!667076 () Unit!51526)

(declare-fun addApplyDifferent!601 (ListLongMap!22357 (_ BitVec 64) V!59185 (_ BitVec 64)) Unit!51526)

(assert (=> b!1548060 (= lt!667076 (addApplyDifferent!601 lt!667079 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49837 _keys!618) from!762)))))

(declare-fun lt!667078 () V!59185)

(assert (=> b!1548060 (= lt!667078 lt!667077)))

(assert (=> b!1548060 (= lt!667077 (apply!1098 lt!667079 (select (arr!49837 _keys!618) from!762)))))

(declare-fun minValue!436 () V!59185)

(declare-fun +!4915 (ListLongMap!22357 tuple2!24736) ListLongMap!22357)

(assert (=> b!1548060 (= lt!667078 (apply!1098 (+!4915 lt!667079 (tuple2!24737 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49837 _keys!618) from!762)))))

(declare-fun lt!667073 () Unit!51526)

(assert (=> b!1548060 (= lt!667073 (addApplyDifferent!601 lt!667079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49837 _keys!618) from!762)))))

(declare-fun contains!10082 (ListLongMap!22357 (_ BitVec 64)) Bool)

(assert (=> b!1548060 (contains!10082 lt!667074 (select (arr!49837 _keys!618) from!762))))

(assert (=> b!1548060 (= lt!667074 (+!4915 lt!667079 (tuple2!24737 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667072 () Unit!51526)

(declare-fun addStillContains!1264 (ListLongMap!22357 (_ BitVec 64) V!59185 (_ BitVec 64)) Unit!51526)

(assert (=> b!1548060 (= lt!667072 (addStillContains!1264 lt!667079 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49837 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6635 (array!103279 array!103281 (_ BitVec 32) (_ BitVec 32) V!59185 V!59185 (_ BitVec 32) Int) ListLongMap!22357)

(assert (=> b!1548060 (= lt!667079 (getCurrentListMapNoExtraKeys!6635 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1548061 () Bool)

(assert (=> b!1548061 (= e!861724 e!861723)))

(declare-fun res!1061019 () Bool)

(assert (=> b!1548061 (=> (not res!1061019) (not e!861723))))

(assert (=> b!1548061 (= res!1061019 (bvslt from!762 (size!50388 _keys!618)))))

(declare-fun lt!667071 () ListLongMap!22357)

(declare-fun e!861722 () ListLongMap!22357)

(assert (=> b!1548061 (= lt!667071 e!861722)))

(declare-fun c!142077 () Bool)

(declare-fun lt!667075 () Bool)

(assert (=> b!1548061 (= c!142077 (and (not lt!667075) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1548061 (= lt!667075 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1548062 () Bool)

(declare-fun e!861725 () ListLongMap!22357)

(assert (=> b!1548062 (= e!861725 call!70082)))

(declare-fun b!1548063 () Bool)

(declare-fun e!861726 () Bool)

(assert (=> b!1548063 (= e!861726 tp_is_empty!38057)))

(declare-fun b!1548064 () Bool)

(declare-fun res!1061018 () Bool)

(assert (=> b!1548064 (=> (not res!1061018) (not e!861724))))

(assert (=> b!1548064 (= res!1061018 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50388 _keys!618))))))

(declare-fun b!1548065 () Bool)

(declare-fun e!861727 () ListLongMap!22357)

(assert (=> b!1548065 (= e!861722 e!861727)))

(declare-fun c!142079 () Bool)

(assert (=> b!1548065 (= c!142079 (and (not lt!667075) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1548066 () Bool)

(assert (=> b!1548066 (= e!861727 call!70082)))

(declare-fun b!1548067 () Bool)

(declare-fun res!1061022 () Bool)

(assert (=> b!1548067 (=> (not res!1061022) (not e!861723))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1548067 (= res!1061022 (validKeyInArray!0 (select (arr!49837 _keys!618) from!762)))))

(declare-fun res!1061021 () Bool)

(assert (=> start!132100 (=> (not res!1061021) (not e!861724))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132100 (= res!1061021 (validMask!0 mask!926))))

(assert (=> start!132100 e!861724))

(declare-fun array_inv!38681 (array!103279) Bool)

(assert (=> start!132100 (array_inv!38681 _keys!618)))

(assert (=> start!132100 tp_is_empty!38057))

(assert (=> start!132100 true))

(assert (=> start!132100 tp!111595))

(declare-fun e!861720 () Bool)

(declare-fun array_inv!38682 (array!103281) Bool)

(assert (=> start!132100 (and (array_inv!38682 _values!470) e!861720)))

(declare-fun bm!70081 () Bool)

(assert (=> bm!70081 (= call!70083 (getCurrentListMapNoExtraKeys!6635 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1548068 () Bool)

(declare-fun c!142078 () Bool)

(assert (=> b!1548068 (= c!142078 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!667075))))

(assert (=> b!1548068 (= e!861727 e!861725)))

(declare-fun b!1548069 () Bool)

(declare-fun call!70085 () ListLongMap!22357)

(assert (=> b!1548069 (= e!861725 call!70085)))

(declare-fun bm!70082 () Bool)

(assert (=> bm!70082 (= call!70085 call!70086)))

(declare-fun mapNonEmpty!58789 () Bool)

(declare-fun mapRes!58789 () Bool)

(declare-fun tp!111596 () Bool)

(assert (=> mapNonEmpty!58789 (= mapRes!58789 (and tp!111596 e!861726))))

(declare-fun mapRest!58789 () (Array (_ BitVec 32) ValueCell!18118))

(declare-fun mapValue!58789 () ValueCell!18118)

(declare-fun mapKey!58789 () (_ BitVec 32))

(assert (=> mapNonEmpty!58789 (= (arr!49838 _values!470) (store mapRest!58789 mapKey!58789 mapValue!58789))))

(declare-fun b!1548070 () Bool)

(declare-fun res!1061020 () Bool)

(assert (=> b!1548070 (=> (not res!1061020) (not e!861724))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103279 (_ BitVec 32)) Bool)

(assert (=> b!1548070 (= res!1061020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapIsEmpty!58789 () Bool)

(assert (=> mapIsEmpty!58789 mapRes!58789))

(declare-fun b!1548071 () Bool)

(declare-fun res!1061023 () Bool)

(assert (=> b!1548071 (=> (not res!1061023) (not e!861724))))

(declare-datatypes ((List!36241 0))(
  ( (Nil!36238) (Cons!36237 (h!37683 (_ BitVec 64)) (t!50942 List!36241)) )
))
(declare-fun arrayNoDuplicates!0 (array!103279 (_ BitVec 32) List!36241) Bool)

(assert (=> b!1548071 (= res!1061023 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36238))))

(declare-fun b!1548072 () Bool)

(assert (=> b!1548072 (= e!861720 (and e!861721 mapRes!58789))))

(declare-fun condMapEmpty!58789 () Bool)

(declare-fun mapDefault!58789 () ValueCell!18118)

