; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132220 () Bool)

(assert start!132220)

(declare-fun b_free!31883 () Bool)

(declare-fun b_next!31883 () Bool)

(assert (=> start!132220 (= b_free!31883 (not b_next!31883))))

(declare-fun tp!111905 () Bool)

(declare-fun b_and!51319 () Bool)

(assert (=> start!132220 (= tp!111905 b_and!51319)))

(declare-fun b!1550742 () Bool)

(declare-fun e!863268 () Bool)

(declare-fun tp_is_empty!38159 () Bool)

(assert (=> b!1550742 (= e!863268 tp_is_empty!38159)))

(declare-fun b!1550743 () Bool)

(declare-fun e!863264 () Bool)

(declare-fun e!863267 () Bool)

(assert (=> b!1550743 (= e!863264 (not e!863267))))

(declare-fun res!1062190 () Bool)

(assert (=> b!1550743 (=> (not res!1062190) (not e!863267))))

(declare-datatypes ((V!59321 0))(
  ( (V!59322 (val!19157 Int)) )
))
(declare-datatypes ((tuple2!24832 0))(
  ( (tuple2!24833 (_1!12426 (_ BitVec 64)) (_2!12426 V!59321)) )
))
(declare-datatypes ((List!36320 0))(
  ( (Nil!36317) (Cons!36316 (h!37762 tuple2!24832) (t!51035 List!36320)) )
))
(declare-datatypes ((ListLongMap!22453 0))(
  ( (ListLongMap!22454 (toList!11242 List!36320)) )
))
(declare-fun lt!668331 () ListLongMap!22453)

(declare-datatypes ((array!103475 0))(
  ( (array!103476 (arr!49934 (Array (_ BitVec 32) (_ BitVec 64))) (size!50485 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103475)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun contains!10111 (ListLongMap!22453 (_ BitVec 64)) Bool)

(assert (=> b!1550743 (= res!1062190 (contains!10111 lt!668331 (select (arr!49934 _keys!618) from!762)))))

(declare-fun zeroValue!436 () V!59321)

(declare-fun +!4951 (ListLongMap!22453 tuple2!24832) ListLongMap!22453)

(assert (=> b!1550743 (contains!10111 (+!4951 lt!668331 (tuple2!24833 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49934 _keys!618) from!762))))

(declare-datatypes ((Unit!51587 0))(
  ( (Unit!51588) )
))
(declare-fun lt!668332 () Unit!51587)

(declare-fun addStillContains!1288 (ListLongMap!22453 (_ BitVec 64) V!59321 (_ BitVec 64)) Unit!51587)

(assert (=> b!1550743 (= lt!668332 (addStillContains!1288 lt!668331 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49934 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18169 0))(
  ( (ValueCellFull!18169 (v!21956 V!59321)) (EmptyCell!18169) )
))
(declare-datatypes ((array!103477 0))(
  ( (array!103478 (arr!49935 (Array (_ BitVec 32) ValueCell!18169)) (size!50486 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103477)

(declare-fun minValue!436 () V!59321)

(declare-fun getCurrentListMapNoExtraKeys!6669 (array!103475 array!103477 (_ BitVec 32) (_ BitVec 32) V!59321 V!59321 (_ BitVec 32) Int) ListLongMap!22453)

(assert (=> b!1550743 (= lt!668331 (getCurrentListMapNoExtraKeys!6669 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1550744 () Bool)

(declare-fun e!863261 () Bool)

(assert (=> b!1550744 (= e!863261 e!863264)))

(declare-fun res!1062194 () Bool)

(assert (=> b!1550744 (=> (not res!1062194) (not e!863264))))

(assert (=> b!1550744 (= res!1062194 (bvslt from!762 (size!50485 _keys!618)))))

(declare-fun lt!668334 () ListLongMap!22453)

(declare-fun e!863263 () ListLongMap!22453)

(assert (=> b!1550744 (= lt!668334 e!863263)))

(declare-fun c!142594 () Bool)

(declare-fun lt!668333 () Bool)

(assert (=> b!1550744 (= c!142594 (and (not lt!668333) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1550744 (= lt!668333 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!70862 () Bool)

(declare-fun call!70866 () ListLongMap!22453)

(declare-fun call!70867 () ListLongMap!22453)

(assert (=> bm!70862 (= call!70866 call!70867)))

(declare-fun bm!70863 () Bool)

(declare-fun call!70868 () ListLongMap!22453)

(assert (=> bm!70863 (= call!70868 call!70866)))

(declare-fun res!1062193 () Bool)

(assert (=> start!132220 (=> (not res!1062193) (not e!863261))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132220 (= res!1062193 (validMask!0 mask!926))))

(assert (=> start!132220 e!863261))

(declare-fun array_inv!38747 (array!103475) Bool)

(assert (=> start!132220 (array_inv!38747 _keys!618)))

(assert (=> start!132220 tp_is_empty!38159))

(assert (=> start!132220 true))

(assert (=> start!132220 tp!111905))

(declare-fun e!863269 () Bool)

(declare-fun array_inv!38748 (array!103477) Bool)

(assert (=> start!132220 (and (array_inv!38748 _values!470) e!863269)))

(declare-fun b!1550745 () Bool)

(declare-fun e!863270 () Bool)

(assert (=> b!1550745 (= e!863270 tp_is_empty!38159)))

(declare-fun b!1550746 () Bool)

(declare-fun res!1062191 () Bool)

(assert (=> b!1550746 (=> (not res!1062191) (not e!863261))))

(declare-datatypes ((List!36321 0))(
  ( (Nil!36318) (Cons!36317 (h!37763 (_ BitVec 64)) (t!51036 List!36321)) )
))
(declare-fun arrayNoDuplicates!0 (array!103475 (_ BitVec 32) List!36321) Bool)

(assert (=> b!1550746 (= res!1062191 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36318))))

(declare-fun c!142595 () Bool)

(declare-fun bm!70864 () Bool)

(declare-fun call!70865 () ListLongMap!22453)

(assert (=> bm!70864 (= call!70865 (+!4951 (ite c!142594 call!70867 (ite c!142595 call!70866 call!70868)) (ite (or c!142594 c!142595) (tuple2!24833 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24833 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun mapIsEmpty!58945 () Bool)

(declare-fun mapRes!58945 () Bool)

(assert (=> mapIsEmpty!58945 mapRes!58945))

(declare-fun bm!70865 () Bool)

(declare-fun call!70869 () ListLongMap!22453)

(assert (=> bm!70865 (= call!70869 call!70865)))

(declare-fun b!1550747 () Bool)

(declare-fun res!1062192 () Bool)

(assert (=> b!1550747 (=> (not res!1062192) (not e!863264))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1550747 (= res!1062192 (validKeyInArray!0 (select (arr!49934 _keys!618) from!762)))))

(declare-fun b!1550748 () Bool)

(declare-fun e!863265 () ListLongMap!22453)

(assert (=> b!1550748 (= e!863265 call!70869)))

(declare-fun b!1550749 () Bool)

(declare-fun c!142593 () Bool)

(assert (=> b!1550749 (= c!142593 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!668333))))

(declare-fun e!863266 () ListLongMap!22453)

(assert (=> b!1550749 (= e!863266 e!863265)))

(declare-fun b!1550750 () Bool)

(declare-fun res!1062196 () Bool)

(assert (=> b!1550750 (=> (not res!1062196) (not e!863261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103475 (_ BitVec 32)) Bool)

(assert (=> b!1550750 (= res!1062196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1550751 () Bool)

(assert (=> b!1550751 (= e!863266 call!70869)))

(declare-fun b!1550752 () Bool)

(assert (=> b!1550752 (= e!863263 e!863266)))

(assert (=> b!1550752 (= c!142595 (and (not lt!668333) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1550753 () Bool)

(assert (=> b!1550753 (= e!863265 call!70868)))

(declare-fun b!1550754 () Bool)

(assert (=> b!1550754 (= e!863267 (not (= (select (arr!49934 _keys!618) from!762) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1550755 () Bool)

(declare-fun res!1062189 () Bool)

(assert (=> b!1550755 (=> (not res!1062189) (not e!863261))))

(assert (=> b!1550755 (= res!1062189 (and (= (size!50486 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50485 _keys!618) (size!50486 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!58945 () Bool)

(declare-fun tp!111904 () Bool)

(assert (=> mapNonEmpty!58945 (= mapRes!58945 (and tp!111904 e!863270))))

(declare-fun mapValue!58945 () ValueCell!18169)

(declare-fun mapKey!58945 () (_ BitVec 32))

(declare-fun mapRest!58945 () (Array (_ BitVec 32) ValueCell!18169))

(assert (=> mapNonEmpty!58945 (= (arr!49935 _values!470) (store mapRest!58945 mapKey!58945 mapValue!58945))))

(declare-fun b!1550756 () Bool)

(assert (=> b!1550756 (= e!863269 (and e!863268 mapRes!58945))))

(declare-fun condMapEmpty!58945 () Bool)

(declare-fun mapDefault!58945 () ValueCell!18169)

