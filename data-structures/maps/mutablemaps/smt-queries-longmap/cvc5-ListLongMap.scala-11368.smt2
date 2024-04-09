; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132144 () Bool)

(assert start!132144)

(declare-fun b_free!31825 () Bool)

(declare-fun b_next!31825 () Bool)

(assert (=> start!132144 (= b_free!31825 (not b_next!31825))))

(declare-fun tp!111728 () Bool)

(declare-fun b_and!51245 () Bool)

(assert (=> start!132144 (= tp!111728 b_and!51245)))

(declare-fun b!1549114 () Bool)

(declare-datatypes ((V!59245 0))(
  ( (V!59246 (val!19128 Int)) )
))
(declare-datatypes ((tuple2!24778 0))(
  ( (tuple2!24779 (_1!12399 (_ BitVec 64)) (_2!12399 V!59245)) )
))
(declare-datatypes ((List!36277 0))(
  ( (Nil!36274) (Cons!36273 (h!37719 tuple2!24778) (t!50978 List!36277)) )
))
(declare-datatypes ((ListLongMap!22399 0))(
  ( (ListLongMap!22400 (toList!11215 List!36277)) )
))
(declare-fun e!862320 () ListLongMap!22399)

(declare-fun call!70415 () ListLongMap!22399)

(assert (=> b!1549114 (= e!862320 call!70415)))

(declare-fun b!1549115 () Bool)

(declare-fun e!862314 () Bool)

(assert (=> b!1549115 (= e!862314 (not true))))

(declare-datatypes ((array!103363 0))(
  ( (array!103364 (arr!49879 (Array (_ BitVec 32) (_ BitVec 64))) (size!50430 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103363)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun lt!667667 () V!59245)

(declare-fun lt!667668 () ListLongMap!22399)

(declare-fun apply!1112 (ListLongMap!22399 (_ BitVec 64)) V!59245)

(assert (=> b!1549115 (= (apply!1112 lt!667668 (select (arr!49879 _keys!618) from!762)) lt!667667)))

(declare-fun zeroValue!436 () V!59245)

(declare-fun lt!667665 () ListLongMap!22399)

(declare-datatypes ((Unit!51554 0))(
  ( (Unit!51555) )
))
(declare-fun lt!667672 () Unit!51554)

(declare-fun addApplyDifferent!615 (ListLongMap!22399 (_ BitVec 64) V!59245 (_ BitVec 64)) Unit!51554)

(assert (=> b!1549115 (= lt!667672 (addApplyDifferent!615 lt!667665 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49879 _keys!618) from!762)))))

(declare-fun lt!667670 () V!59245)

(assert (=> b!1549115 (= lt!667670 lt!667667)))

(assert (=> b!1549115 (= lt!667667 (apply!1112 lt!667665 (select (arr!49879 _keys!618) from!762)))))

(declare-fun minValue!436 () V!59245)

(declare-fun +!4932 (ListLongMap!22399 tuple2!24778) ListLongMap!22399)

(assert (=> b!1549115 (= lt!667670 (apply!1112 (+!4932 lt!667665 (tuple2!24779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49879 _keys!618) from!762)))))

(declare-fun lt!667671 () Unit!51554)

(assert (=> b!1549115 (= lt!667671 (addApplyDifferent!615 lt!667665 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49879 _keys!618) from!762)))))

(declare-fun contains!10096 (ListLongMap!22399 (_ BitVec 64)) Bool)

(assert (=> b!1549115 (contains!10096 lt!667668 (select (arr!49879 _keys!618) from!762))))

(assert (=> b!1549115 (= lt!667668 (+!4932 lt!667665 (tuple2!24779 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667673 () Unit!51554)

(declare-fun addStillContains!1278 (ListLongMap!22399 (_ BitVec 64) V!59245 (_ BitVec 64)) Unit!51554)

(assert (=> b!1549115 (= lt!667673 (addStillContains!1278 lt!667665 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49879 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18140 0))(
  ( (ValueCellFull!18140 (v!21926 V!59245)) (EmptyCell!18140) )
))
(declare-datatypes ((array!103365 0))(
  ( (array!103366 (arr!49880 (Array (_ BitVec 32) ValueCell!18140)) (size!50431 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103365)

(declare-fun getCurrentListMapNoExtraKeys!6652 (array!103363 array!103365 (_ BitVec 32) (_ BitVec 32) V!59245 V!59245 (_ BitVec 32) Int) ListLongMap!22399)

(assert (=> b!1549115 (= lt!667665 (getCurrentListMapNoExtraKeys!6652 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1549116 () Bool)

(declare-fun res!1061486 () Bool)

(declare-fun e!862319 () Bool)

(assert (=> b!1549116 (=> (not res!1061486) (not e!862319))))

(declare-datatypes ((List!36278 0))(
  ( (Nil!36275) (Cons!36274 (h!37720 (_ BitVec 64)) (t!50979 List!36278)) )
))
(declare-fun arrayNoDuplicates!0 (array!103363 (_ BitVec 32) List!36278) Bool)

(assert (=> b!1549116 (= res!1061486 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36275))))

(declare-fun b!1549117 () Bool)

(declare-fun e!862315 () ListLongMap!22399)

(assert (=> b!1549117 (= e!862315 e!862320)))

(declare-fun c!142276 () Bool)

(declare-fun lt!667669 () Bool)

(assert (=> b!1549117 (= c!142276 (and (not lt!667669) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1549118 () Bool)

(declare-fun res!1061481 () Bool)

(assert (=> b!1549118 (=> (not res!1061481) (not e!862319))))

(assert (=> b!1549118 (= res!1061481 (and (= (size!50431 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50430 _keys!618) (size!50431 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1549120 () Bool)

(declare-fun res!1061483 () Bool)

(assert (=> b!1549120 (=> (not res!1061483) (not e!862319))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103363 (_ BitVec 32)) Bool)

(assert (=> b!1549120 (= res!1061483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1549121 () Bool)

(declare-fun e!862316 () Bool)

(declare-fun tp_is_empty!38101 () Bool)

(assert (=> b!1549121 (= e!862316 tp_is_empty!38101)))

(declare-fun b!1549122 () Bool)

(declare-fun res!1061485 () Bool)

(assert (=> b!1549122 (=> (not res!1061485) (not e!862319))))

(assert (=> b!1549122 (= res!1061485 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50430 _keys!618))))))

(declare-fun bm!70409 () Bool)

(declare-fun call!70412 () ListLongMap!22399)

(declare-fun call!70413 () ListLongMap!22399)

(assert (=> bm!70409 (= call!70412 call!70413)))

(declare-fun b!1549123 () Bool)

(assert (=> b!1549123 (= e!862319 e!862314)))

(declare-fun res!1061484 () Bool)

(assert (=> b!1549123 (=> (not res!1061484) (not e!862314))))

(assert (=> b!1549123 (= res!1061484 (bvslt from!762 (size!50430 _keys!618)))))

(declare-fun lt!667666 () ListLongMap!22399)

(assert (=> b!1549123 (= lt!667666 e!862315)))

(declare-fun c!142275 () Bool)

(assert (=> b!1549123 (= c!142275 (and (not lt!667669) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1549123 (= lt!667669 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1549124 () Bool)

(declare-fun e!862321 () ListLongMap!22399)

(assert (=> b!1549124 (= e!862321 call!70412)))

(declare-fun b!1549125 () Bool)

(assert (=> b!1549125 (= e!862321 call!70415)))

(declare-fun b!1549119 () Bool)

(declare-fun res!1061482 () Bool)

(assert (=> b!1549119 (=> (not res!1061482) (not e!862314))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1549119 (= res!1061482 (validKeyInArray!0 (select (arr!49879 _keys!618) from!762)))))

(declare-fun res!1061480 () Bool)

(assert (=> start!132144 (=> (not res!1061480) (not e!862319))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132144 (= res!1061480 (validMask!0 mask!926))))

(assert (=> start!132144 e!862319))

(declare-fun array_inv!38711 (array!103363) Bool)

(assert (=> start!132144 (array_inv!38711 _keys!618)))

(assert (=> start!132144 tp_is_empty!38101))

(assert (=> start!132144 true))

(assert (=> start!132144 tp!111728))

(declare-fun e!862318 () Bool)

(declare-fun array_inv!38712 (array!103365) Bool)

(assert (=> start!132144 (and (array_inv!38712 _values!470) e!862318)))

(declare-fun mapIsEmpty!58855 () Bool)

(declare-fun mapRes!58855 () Bool)

(assert (=> mapIsEmpty!58855 mapRes!58855))

(declare-fun mapNonEmpty!58855 () Bool)

(declare-fun tp!111727 () Bool)

(declare-fun e!862313 () Bool)

(assert (=> mapNonEmpty!58855 (= mapRes!58855 (and tp!111727 e!862313))))

(declare-fun mapRest!58855 () (Array (_ BitVec 32) ValueCell!18140))

(declare-fun mapValue!58855 () ValueCell!18140)

(declare-fun mapKey!58855 () (_ BitVec 32))

(assert (=> mapNonEmpty!58855 (= (arr!49880 _values!470) (store mapRest!58855 mapKey!58855 mapValue!58855))))

(declare-fun bm!70410 () Bool)

(declare-fun call!70414 () ListLongMap!22399)

(assert (=> bm!70410 (= call!70415 call!70414)))

(declare-fun b!1549126 () Bool)

(declare-fun c!142277 () Bool)

(assert (=> b!1549126 (= c!142277 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!667669))))

(assert (=> b!1549126 (= e!862320 e!862321)))

(declare-fun bm!70411 () Bool)

(declare-fun call!70416 () ListLongMap!22399)

(assert (=> bm!70411 (= call!70414 (+!4932 (ite c!142275 call!70416 (ite c!142276 call!70413 call!70412)) (ite (or c!142275 c!142276) (tuple2!24779 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24779 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!70412 () Bool)

(assert (=> bm!70412 (= call!70413 call!70416)))

(declare-fun b!1549127 () Bool)

(assert (=> b!1549127 (= e!862313 tp_is_empty!38101)))

(declare-fun bm!70413 () Bool)

(assert (=> bm!70413 (= call!70416 (getCurrentListMapNoExtraKeys!6652 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1549128 () Bool)

(assert (=> b!1549128 (= e!862318 (and e!862316 mapRes!58855))))

(declare-fun condMapEmpty!58855 () Bool)

(declare-fun mapDefault!58855 () ValueCell!18140)

