; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132102 () Bool)

(assert start!132102)

(declare-fun b_free!31783 () Bool)

(declare-fun b_next!31783 () Bool)

(assert (=> start!132102 (= b_free!31783 (not b_next!31783))))

(declare-fun tp!111601 () Bool)

(declare-fun b_and!51203 () Bool)

(assert (=> start!132102 (= tp!111601 b_and!51203)))

(declare-fun b!1548106 () Bool)

(declare-fun e!861754 () Bool)

(assert (=> b!1548106 (= e!861754 (not true))))

(declare-datatypes ((V!59189 0))(
  ( (V!59190 (val!19107 Int)) )
))
(declare-fun lt!667099 () V!59189)

(declare-datatypes ((array!103283 0))(
  ( (array!103284 (arr!49839 (Array (_ BitVec 32) (_ BitVec 64))) (size!50390 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103283)

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((tuple2!24738 0))(
  ( (tuple2!24739 (_1!12379 (_ BitVec 64)) (_2!12379 V!59189)) )
))
(declare-datatypes ((List!36242 0))(
  ( (Nil!36239) (Cons!36238 (h!37684 tuple2!24738) (t!50943 List!36242)) )
))
(declare-datatypes ((ListLongMap!22359 0))(
  ( (ListLongMap!22360 (toList!11195 List!36242)) )
))
(declare-fun lt!667100 () ListLongMap!22359)

(declare-fun apply!1099 (ListLongMap!22359 (_ BitVec 64)) V!59189)

(assert (=> b!1548106 (= (apply!1099 lt!667100 (select (arr!49839 _keys!618) from!762)) lt!667099)))

(declare-fun zeroValue!436 () V!59189)

(declare-datatypes ((Unit!51528 0))(
  ( (Unit!51529) )
))
(declare-fun lt!667103 () Unit!51528)

(declare-fun lt!667105 () ListLongMap!22359)

(declare-fun addApplyDifferent!602 (ListLongMap!22359 (_ BitVec 64) V!59189 (_ BitVec 64)) Unit!51528)

(assert (=> b!1548106 (= lt!667103 (addApplyDifferent!602 lt!667105 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49839 _keys!618) from!762)))))

(declare-fun lt!667104 () V!59189)

(assert (=> b!1548106 (= lt!667104 lt!667099)))

(assert (=> b!1548106 (= lt!667099 (apply!1099 lt!667105 (select (arr!49839 _keys!618) from!762)))))

(declare-fun minValue!436 () V!59189)

(declare-fun +!4916 (ListLongMap!22359 tuple2!24738) ListLongMap!22359)

(assert (=> b!1548106 (= lt!667104 (apply!1099 (+!4916 lt!667105 (tuple2!24739 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49839 _keys!618) from!762)))))

(declare-fun lt!667101 () Unit!51528)

(assert (=> b!1548106 (= lt!667101 (addApplyDifferent!602 lt!667105 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49839 _keys!618) from!762)))))

(declare-fun contains!10083 (ListLongMap!22359 (_ BitVec 64)) Bool)

(assert (=> b!1548106 (contains!10083 lt!667100 (select (arr!49839 _keys!618) from!762))))

(assert (=> b!1548106 (= lt!667100 (+!4916 lt!667105 (tuple2!24739 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667098 () Unit!51528)

(declare-fun addStillContains!1265 (ListLongMap!22359 (_ BitVec 64) V!59189 (_ BitVec 64)) Unit!51528)

(assert (=> b!1548106 (= lt!667098 (addStillContains!1265 lt!667105 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49839 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18119 0))(
  ( (ValueCellFull!18119 (v!21905 V!59189)) (EmptyCell!18119) )
))
(declare-datatypes ((array!103285 0))(
  ( (array!103286 (arr!49840 (Array (_ BitVec 32) ValueCell!18119)) (size!50391 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103285)

(declare-fun getCurrentListMapNoExtraKeys!6636 (array!103283 array!103285 (_ BitVec 32) (_ BitVec 32) V!59189 V!59189 (_ BitVec 32) Int) ListLongMap!22359)

(assert (=> b!1548106 (= lt!667105 (getCurrentListMapNoExtraKeys!6636 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1548107 () Bool)

(declare-fun res!1061042 () Bool)

(declare-fun e!861748 () Bool)

(assert (=> b!1548107 (=> (not res!1061042) (not e!861748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103283 (_ BitVec 32)) Bool)

(assert (=> b!1548107 (= res!1061042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1548108 () Bool)

(declare-fun res!1061041 () Bool)

(assert (=> b!1548108 (=> (not res!1061041) (not e!861748))))

(assert (=> b!1548108 (= res!1061041 (and (= (size!50391 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50390 _keys!618) (size!50391 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1548109 () Bool)

(declare-fun res!1061045 () Bool)

(assert (=> b!1548109 (=> (not res!1061045) (not e!861748))))

(assert (=> b!1548109 (= res!1061045 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50390 _keys!618))))))

(declare-fun b!1548110 () Bool)

(declare-fun res!1061043 () Bool)

(assert (=> b!1548110 (=> (not res!1061043) (not e!861748))))

(declare-datatypes ((List!36243 0))(
  ( (Nil!36240) (Cons!36239 (h!37685 (_ BitVec 64)) (t!50944 List!36243)) )
))
(declare-fun arrayNoDuplicates!0 (array!103283 (_ BitVec 32) List!36243) Bool)

(assert (=> b!1548110 (= res!1061043 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36240))))

(declare-fun mapNonEmpty!58792 () Bool)

(declare-fun mapRes!58792 () Bool)

(declare-fun tp!111602 () Bool)

(declare-fun e!861751 () Bool)

(assert (=> mapNonEmpty!58792 (= mapRes!58792 (and tp!111602 e!861751))))

(declare-fun mapValue!58792 () ValueCell!18119)

(declare-fun mapRest!58792 () (Array (_ BitVec 32) ValueCell!18119))

(declare-fun mapKey!58792 () (_ BitVec 32))

(assert (=> mapNonEmpty!58792 (= (arr!49840 _values!470) (store mapRest!58792 mapKey!58792 mapValue!58792))))

(declare-fun bm!70094 () Bool)

(declare-fun call!70099 () ListLongMap!22359)

(declare-fun call!70101 () ListLongMap!22359)

(assert (=> bm!70094 (= call!70099 call!70101)))

(declare-fun bm!70095 () Bool)

(declare-fun call!70098 () ListLongMap!22359)

(assert (=> bm!70095 (= call!70101 call!70098)))

(declare-fun bm!70096 () Bool)

(declare-fun call!70097 () ListLongMap!22359)

(declare-fun call!70100 () ListLongMap!22359)

(assert (=> bm!70096 (= call!70097 call!70100)))

(declare-fun bm!70097 () Bool)

(declare-fun c!142086 () Bool)

(declare-fun c!142087 () Bool)

(assert (=> bm!70097 (= call!70100 (+!4916 (ite c!142086 call!70098 (ite c!142087 call!70101 call!70099)) (ite (or c!142086 c!142087) (tuple2!24739 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24739 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1548111 () Bool)

(declare-fun tp_is_empty!38059 () Bool)

(assert (=> b!1548111 (= e!861751 tp_is_empty!38059)))

(declare-fun b!1548112 () Bool)

(declare-fun c!142088 () Bool)

(declare-fun lt!667102 () Bool)

(assert (=> b!1548112 (= c!142088 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!667102))))

(declare-fun e!861752 () ListLongMap!22359)

(declare-fun e!861750 () ListLongMap!22359)

(assert (=> b!1548112 (= e!861752 e!861750)))

(declare-fun b!1548113 () Bool)

(declare-fun e!861753 () Bool)

(declare-fun e!861746 () Bool)

(assert (=> b!1548113 (= e!861753 (and e!861746 mapRes!58792))))

(declare-fun condMapEmpty!58792 () Bool)

(declare-fun mapDefault!58792 () ValueCell!18119)

