; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132130 () Bool)

(assert start!132130)

(declare-fun b_free!31811 () Bool)

(declare-fun b_next!31811 () Bool)

(assert (=> start!132130 (= b_free!31811 (not b_next!31811))))

(declare-fun tp!111685 () Bool)

(declare-fun b_and!51231 () Bool)

(assert (=> start!132130 (= tp!111685 b_and!51231)))

(declare-fun mapIsEmpty!58834 () Bool)

(declare-fun mapRes!58834 () Bool)

(assert (=> mapIsEmpty!58834 mapRes!58834))

(declare-fun mapNonEmpty!58834 () Bool)

(declare-fun tp!111686 () Bool)

(declare-fun e!862129 () Bool)

(assert (=> mapNonEmpty!58834 (= mapRes!58834 (and tp!111686 e!862129))))

(declare-fun mapKey!58834 () (_ BitVec 32))

(declare-datatypes ((V!59225 0))(
  ( (V!59226 (val!19121 Int)) )
))
(declare-datatypes ((ValueCell!18133 0))(
  ( (ValueCellFull!18133 (v!21919 V!59225)) (EmptyCell!18133) )
))
(declare-datatypes ((array!103337 0))(
  ( (array!103338 (arr!49866 (Array (_ BitVec 32) ValueCell!18133)) (size!50417 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103337)

(declare-fun mapRest!58834 () (Array (_ BitVec 32) ValueCell!18133))

(declare-fun mapValue!58834 () ValueCell!18133)

(assert (=> mapNonEmpty!58834 (= (arr!49866 _values!470) (store mapRest!58834 mapKey!58834 mapValue!58834))))

(declare-fun b!1548778 () Bool)

(declare-fun e!862128 () Bool)

(assert (=> b!1548778 (= e!862128 (not true))))

(declare-datatypes ((array!103339 0))(
  ( (array!103340 (arr!49867 (Array (_ BitVec 32) (_ BitVec 64))) (size!50418 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103339)

(declare-fun lt!667483 () V!59225)

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((tuple2!24764 0))(
  ( (tuple2!24765 (_1!12392 (_ BitVec 64)) (_2!12392 V!59225)) )
))
(declare-datatypes ((List!36265 0))(
  ( (Nil!36262) (Cons!36261 (h!37707 tuple2!24764) (t!50966 List!36265)) )
))
(declare-datatypes ((ListLongMap!22385 0))(
  ( (ListLongMap!22386 (toList!11208 List!36265)) )
))
(declare-fun lt!667477 () ListLongMap!22385)

(declare-fun apply!1109 (ListLongMap!22385 (_ BitVec 64)) V!59225)

(assert (=> b!1548778 (= (apply!1109 lt!667477 (select (arr!49867 _keys!618) from!762)) lt!667483)))

(declare-fun zeroValue!436 () V!59225)

(declare-datatypes ((Unit!51548 0))(
  ( (Unit!51549) )
))
(declare-fun lt!667480 () Unit!51548)

(declare-fun lt!667476 () ListLongMap!22385)

(declare-fun addApplyDifferent!612 (ListLongMap!22385 (_ BitVec 64) V!59225 (_ BitVec 64)) Unit!51548)

(assert (=> b!1548778 (= lt!667480 (addApplyDifferent!612 lt!667476 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49867 _keys!618) from!762)))))

(declare-fun lt!667484 () V!59225)

(assert (=> b!1548778 (= lt!667484 lt!667483)))

(assert (=> b!1548778 (= lt!667483 (apply!1109 lt!667476 (select (arr!49867 _keys!618) from!762)))))

(declare-fun minValue!436 () V!59225)

(declare-fun +!4927 (ListLongMap!22385 tuple2!24764) ListLongMap!22385)

(assert (=> b!1548778 (= lt!667484 (apply!1109 (+!4927 lt!667476 (tuple2!24765 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49867 _keys!618) from!762)))))

(declare-fun lt!667482 () Unit!51548)

(assert (=> b!1548778 (= lt!667482 (addApplyDifferent!612 lt!667476 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49867 _keys!618) from!762)))))

(declare-fun contains!10093 (ListLongMap!22385 (_ BitVec 64)) Bool)

(assert (=> b!1548778 (contains!10093 lt!667477 (select (arr!49867 _keys!618) from!762))))

(assert (=> b!1548778 (= lt!667477 (+!4927 lt!667476 (tuple2!24765 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667481 () Unit!51548)

(declare-fun addStillContains!1275 (ListLongMap!22385 (_ BitVec 64) V!59225 (_ BitVec 64)) Unit!51548)

(assert (=> b!1548778 (= lt!667481 (addStillContains!1275 lt!667476 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49867 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6647 (array!103339 array!103337 (_ BitVec 32) (_ BitVec 32) V!59225 V!59225 (_ BitVec 32) Int) ListLongMap!22385)

(assert (=> b!1548778 (= lt!667476 (getCurrentListMapNoExtraKeys!6647 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!70305 () Bool)

(declare-fun call!70308 () ListLongMap!22385)

(declare-fun call!70309 () ListLongMap!22385)

(assert (=> bm!70305 (= call!70308 call!70309)))

(declare-fun b!1548779 () Bool)

(declare-fun res!1061337 () Bool)

(declare-fun e!862132 () Bool)

(assert (=> b!1548779 (=> (not res!1061337) (not e!862132))))

(declare-datatypes ((List!36266 0))(
  ( (Nil!36263) (Cons!36262 (h!37708 (_ BitVec 64)) (t!50967 List!36266)) )
))
(declare-fun arrayNoDuplicates!0 (array!103339 (_ BitVec 32) List!36266) Bool)

(assert (=> b!1548779 (= res!1061337 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36263))))

(declare-fun b!1548780 () Bool)

(declare-fun e!862126 () ListLongMap!22385)

(assert (=> b!1548780 (= e!862126 call!70308)))

(declare-fun b!1548781 () Bool)

(declare-fun e!862131 () Bool)

(declare-fun tp_is_empty!38087 () Bool)

(assert (=> b!1548781 (= e!862131 tp_is_empty!38087)))

(declare-fun call!70307 () ListLongMap!22385)

(declare-fun bm!70306 () Bool)

(assert (=> bm!70306 (= call!70307 (getCurrentListMapNoExtraKeys!6647 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1548782 () Bool)

(declare-fun res!1061334 () Bool)

(assert (=> b!1548782 (=> (not res!1061334) (not e!862132))))

(assert (=> b!1548782 (= res!1061334 (and (= (size!50417 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50418 _keys!618) (size!50417 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1548783 () Bool)

(assert (=> b!1548783 (= e!862132 e!862128)))

(declare-fun res!1061333 () Bool)

(assert (=> b!1548783 (=> (not res!1061333) (not e!862128))))

(assert (=> b!1548783 (= res!1061333 (bvslt from!762 (size!50418 _keys!618)))))

(declare-fun lt!667479 () ListLongMap!22385)

(declare-fun e!862130 () ListLongMap!22385)

(assert (=> b!1548783 (= lt!667479 e!862130)))

(declare-fun c!142213 () Bool)

(declare-fun lt!667478 () Bool)

(assert (=> b!1548783 (= c!142213 (and (not lt!667478) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1548783 (= lt!667478 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1548784 () Bool)

(declare-fun call!70310 () ListLongMap!22385)

(assert (=> b!1548784 (= e!862126 call!70310)))

(declare-fun b!1548785 () Bool)

(declare-fun e!862127 () ListLongMap!22385)

(assert (=> b!1548785 (= e!862130 e!862127)))

(declare-fun c!142212 () Bool)

(assert (=> b!1548785 (= c!142212 (and (not lt!667478) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1548786 () Bool)

(declare-fun call!70311 () ListLongMap!22385)

(assert (=> b!1548786 (= e!862130 (+!4927 call!70311 (tuple2!24765 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!70307 () Bool)

(assert (=> bm!70307 (= call!70311 (+!4927 (ite c!142213 call!70307 (ite c!142212 call!70309 call!70308)) (ite (or c!142213 c!142212) (tuple2!24765 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24765 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!70304 () Bool)

(assert (=> bm!70304 (= call!70309 call!70307)))

(declare-fun res!1061339 () Bool)

(assert (=> start!132130 (=> (not res!1061339) (not e!862132))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132130 (= res!1061339 (validMask!0 mask!926))))

(assert (=> start!132130 e!862132))

(declare-fun array_inv!38703 (array!103339) Bool)

(assert (=> start!132130 (array_inv!38703 _keys!618)))

(assert (=> start!132130 tp_is_empty!38087))

(assert (=> start!132130 true))

(assert (=> start!132130 tp!111685))

(declare-fun e!862125 () Bool)

(declare-fun array_inv!38704 (array!103337) Bool)

(assert (=> start!132130 (and (array_inv!38704 _values!470) e!862125)))

(declare-fun b!1548787 () Bool)

(declare-fun res!1061338 () Bool)

(assert (=> b!1548787 (=> (not res!1061338) (not e!862132))))

(assert (=> b!1548787 (= res!1061338 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50418 _keys!618))))))

(declare-fun bm!70308 () Bool)

(assert (=> bm!70308 (= call!70310 call!70311)))

(declare-fun b!1548788 () Bool)

(assert (=> b!1548788 (= e!862127 call!70310)))

(declare-fun b!1548789 () Bool)

(declare-fun res!1061336 () Bool)

(assert (=> b!1548789 (=> (not res!1061336) (not e!862132))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103339 (_ BitVec 32)) Bool)

(assert (=> b!1548789 (= res!1061336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1548790 () Bool)

(assert (=> b!1548790 (= e!862125 (and e!862131 mapRes!58834))))

(declare-fun condMapEmpty!58834 () Bool)

(declare-fun mapDefault!58834 () ValueCell!18133)

