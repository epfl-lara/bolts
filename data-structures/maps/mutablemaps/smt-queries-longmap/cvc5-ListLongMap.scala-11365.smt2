; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132126 () Bool)

(assert start!132126)

(declare-fun b_free!31807 () Bool)

(declare-fun b_next!31807 () Bool)

(assert (=> start!132126 (= b_free!31807 (not b_next!31807))))

(declare-fun tp!111674 () Bool)

(declare-fun b_and!51227 () Bool)

(assert (=> start!132126 (= tp!111674 b_and!51227)))

(declare-datatypes ((array!103329 0))(
  ( (array!103330 (arr!49862 (Array (_ BitVec 32) (_ BitVec 64))) (size!50413 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103329)

(declare-datatypes ((V!59221 0))(
  ( (V!59222 (val!19119 Int)) )
))
(declare-fun zeroValue!436 () V!59221)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!70274 () Bool)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18131 0))(
  ( (ValueCellFull!18131 (v!21917 V!59221)) (EmptyCell!18131) )
))
(declare-datatypes ((array!103331 0))(
  ( (array!103332 (arr!49863 (Array (_ BitVec 32) ValueCell!18131)) (size!50414 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103331)

(declare-fun minValue!436 () V!59221)

(declare-datatypes ((tuple2!24760 0))(
  ( (tuple2!24761 (_1!12390 (_ BitVec 64)) (_2!12390 V!59221)) )
))
(declare-datatypes ((List!36261 0))(
  ( (Nil!36258) (Cons!36257 (h!37703 tuple2!24760) (t!50962 List!36261)) )
))
(declare-datatypes ((ListLongMap!22381 0))(
  ( (ListLongMap!22382 (toList!11206 List!36261)) )
))
(declare-fun call!70280 () ListLongMap!22381)

(declare-fun getCurrentListMapNoExtraKeys!6645 (array!103329 array!103331 (_ BitVec 32) (_ BitVec 32) V!59221 V!59221 (_ BitVec 32) Int) ListLongMap!22381)

(assert (=> bm!70274 (= call!70280 (getCurrentListMapNoExtraKeys!6645 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1548682 () Bool)

(declare-fun e!862077 () ListLongMap!22381)

(declare-fun call!70281 () ListLongMap!22381)

(declare-fun +!4925 (ListLongMap!22381 tuple2!24760) ListLongMap!22381)

(assert (=> b!1548682 (= e!862077 (+!4925 call!70281 (tuple2!24761 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun res!1061295 () Bool)

(declare-fun e!862076 () Bool)

(assert (=> start!132126 (=> (not res!1061295) (not e!862076))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132126 (= res!1061295 (validMask!0 mask!926))))

(assert (=> start!132126 e!862076))

(declare-fun array_inv!38699 (array!103329) Bool)

(assert (=> start!132126 (array_inv!38699 _keys!618)))

(declare-fun tp_is_empty!38083 () Bool)

(assert (=> start!132126 tp_is_empty!38083))

(assert (=> start!132126 true))

(assert (=> start!132126 tp!111674))

(declare-fun e!862074 () Bool)

(declare-fun array_inv!38700 (array!103331) Bool)

(assert (=> start!132126 (and (array_inv!38700 _values!470) e!862074)))

(declare-fun b!1548683 () Bool)

(declare-fun e!862070 () Bool)

(assert (=> b!1548683 (= e!862070 tp_is_empty!38083)))

(declare-fun mapIsEmpty!58828 () Bool)

(declare-fun mapRes!58828 () Bool)

(assert (=> mapIsEmpty!58828 mapRes!58828))

(declare-fun b!1548684 () Bool)

(declare-fun c!142196 () Bool)

(declare-fun lt!667430 () Bool)

(assert (=> b!1548684 (= c!142196 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!667430))))

(declare-fun e!862078 () ListLongMap!22381)

(declare-fun e!862072 () ListLongMap!22381)

(assert (=> b!1548684 (= e!862078 e!862072)))

(declare-fun b!1548685 () Bool)

(declare-fun call!70278 () ListLongMap!22381)

(assert (=> b!1548685 (= e!862072 call!70278)))

(declare-fun call!70279 () ListLongMap!22381)

(declare-fun bm!70275 () Bool)

(declare-fun c!142195 () Bool)

(declare-fun c!142194 () Bool)

(assert (=> bm!70275 (= call!70281 (+!4925 (ite c!142194 call!70280 (ite c!142195 call!70279 call!70278)) (ite (or c!142194 c!142195) (tuple2!24761 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24761 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1548686 () Bool)

(declare-fun res!1061291 () Bool)

(assert (=> b!1548686 (=> (not res!1061291) (not e!862076))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103329 (_ BitVec 32)) Bool)

(assert (=> b!1548686 (= res!1061291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun bm!70276 () Bool)

(declare-fun call!70277 () ListLongMap!22381)

(assert (=> bm!70276 (= call!70277 call!70281)))

(declare-fun b!1548687 () Bool)

(assert (=> b!1548687 (= e!862077 e!862078)))

(assert (=> b!1548687 (= c!142195 (and (not lt!667430) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1548688 () Bool)

(declare-fun res!1061293 () Bool)

(assert (=> b!1548688 (=> (not res!1061293) (not e!862076))))

(assert (=> b!1548688 (= res!1061293 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50413 _keys!618))))))

(declare-fun bm!70277 () Bool)

(assert (=> bm!70277 (= call!70279 call!70280)))

(declare-fun b!1548689 () Bool)

(declare-fun res!1061297 () Bool)

(declare-fun e!862075 () Bool)

(assert (=> b!1548689 (=> (not res!1061297) (not e!862075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1548689 (= res!1061297 (validKeyInArray!0 (select (arr!49862 _keys!618) from!762)))))

(declare-fun b!1548690 () Bool)

(assert (=> b!1548690 (= e!862072 call!70277)))

(declare-fun b!1548691 () Bool)

(assert (=> b!1548691 (= e!862075 (not true))))

(declare-fun lt!667424 () ListLongMap!22381)

(declare-fun lt!667428 () V!59221)

(declare-fun apply!1107 (ListLongMap!22381 (_ BitVec 64)) V!59221)

(assert (=> b!1548691 (= (apply!1107 lt!667424 (select (arr!49862 _keys!618) from!762)) lt!667428)))

(declare-datatypes ((Unit!51544 0))(
  ( (Unit!51545) )
))
(declare-fun lt!667423 () Unit!51544)

(declare-fun lt!667422 () ListLongMap!22381)

(declare-fun addApplyDifferent!610 (ListLongMap!22381 (_ BitVec 64) V!59221 (_ BitVec 64)) Unit!51544)

(assert (=> b!1548691 (= lt!667423 (addApplyDifferent!610 lt!667422 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49862 _keys!618) from!762)))))

(declare-fun lt!667426 () V!59221)

(assert (=> b!1548691 (= lt!667426 lt!667428)))

(assert (=> b!1548691 (= lt!667428 (apply!1107 lt!667422 (select (arr!49862 _keys!618) from!762)))))

(assert (=> b!1548691 (= lt!667426 (apply!1107 (+!4925 lt!667422 (tuple2!24761 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49862 _keys!618) from!762)))))

(declare-fun lt!667427 () Unit!51544)

(assert (=> b!1548691 (= lt!667427 (addApplyDifferent!610 lt!667422 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49862 _keys!618) from!762)))))

(declare-fun contains!10091 (ListLongMap!22381 (_ BitVec 64)) Bool)

(assert (=> b!1548691 (contains!10091 lt!667424 (select (arr!49862 _keys!618) from!762))))

(assert (=> b!1548691 (= lt!667424 (+!4925 lt!667422 (tuple2!24761 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667425 () Unit!51544)

(declare-fun addStillContains!1273 (ListLongMap!22381 (_ BitVec 64) V!59221 (_ BitVec 64)) Unit!51544)

(assert (=> b!1548691 (= lt!667425 (addStillContains!1273 lt!667422 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49862 _keys!618) from!762)))))

(assert (=> b!1548691 (= lt!667422 (getCurrentListMapNoExtraKeys!6645 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1548692 () Bool)

(declare-fun e!862073 () Bool)

(assert (=> b!1548692 (= e!862073 tp_is_empty!38083)))

(declare-fun b!1548693 () Bool)

(declare-fun res!1061296 () Bool)

(assert (=> b!1548693 (=> (not res!1061296) (not e!862076))))

(assert (=> b!1548693 (= res!1061296 (and (= (size!50414 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50413 _keys!618) (size!50414 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!58828 () Bool)

(declare-fun tp!111673 () Bool)

(assert (=> mapNonEmpty!58828 (= mapRes!58828 (and tp!111673 e!862070))))

(declare-fun mapValue!58828 () ValueCell!18131)

(declare-fun mapRest!58828 () (Array (_ BitVec 32) ValueCell!18131))

(declare-fun mapKey!58828 () (_ BitVec 32))

(assert (=> mapNonEmpty!58828 (= (arr!49863 _values!470) (store mapRest!58828 mapKey!58828 mapValue!58828))))

(declare-fun bm!70278 () Bool)

(assert (=> bm!70278 (= call!70278 call!70279)))

(declare-fun b!1548694 () Bool)

(assert (=> b!1548694 (= e!862078 call!70277)))

(declare-fun b!1548695 () Bool)

(declare-fun res!1061292 () Bool)

(assert (=> b!1548695 (=> (not res!1061292) (not e!862076))))

(declare-datatypes ((List!36262 0))(
  ( (Nil!36259) (Cons!36258 (h!37704 (_ BitVec 64)) (t!50963 List!36262)) )
))
(declare-fun arrayNoDuplicates!0 (array!103329 (_ BitVec 32) List!36262) Bool)

(assert (=> b!1548695 (= res!1061292 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36259))))

(declare-fun b!1548696 () Bool)

(assert (=> b!1548696 (= e!862076 e!862075)))

(declare-fun res!1061294 () Bool)

(assert (=> b!1548696 (=> (not res!1061294) (not e!862075))))

(assert (=> b!1548696 (= res!1061294 (bvslt from!762 (size!50413 _keys!618)))))

(declare-fun lt!667429 () ListLongMap!22381)

(assert (=> b!1548696 (= lt!667429 e!862077)))

(assert (=> b!1548696 (= c!142194 (and (not lt!667430) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1548696 (= lt!667430 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1548697 () Bool)

(assert (=> b!1548697 (= e!862074 (and e!862073 mapRes!58828))))

(declare-fun condMapEmpty!58828 () Bool)

(declare-fun mapDefault!58828 () ValueCell!18131)

