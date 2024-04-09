; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132078 () Bool)

(assert start!132078)

(declare-fun b_free!31759 () Bool)

(declare-fun b_next!31759 () Bool)

(assert (=> start!132078 (= b_free!31759 (not b_next!31759))))

(declare-fun tp!111530 () Bool)

(declare-fun b_and!51179 () Bool)

(assert (=> start!132078 (= tp!111530 b_and!51179)))

(declare-fun b!1547530 () Bool)

(declare-datatypes ((V!59157 0))(
  ( (V!59158 (val!19095 Int)) )
))
(declare-datatypes ((tuple2!24714 0))(
  ( (tuple2!24715 (_1!12367 (_ BitVec 64)) (_2!12367 V!59157)) )
))
(declare-datatypes ((List!36222 0))(
  ( (Nil!36219) (Cons!36218 (h!37664 tuple2!24714) (t!50923 List!36222)) )
))
(declare-datatypes ((ListLongMap!22335 0))(
  ( (ListLongMap!22336 (toList!11183 List!36222)) )
))
(declare-fun e!861424 () ListLongMap!22335)

(declare-fun call!69920 () ListLongMap!22335)

(assert (=> b!1547530 (= e!861424 call!69920)))

(declare-fun bm!69914 () Bool)

(declare-fun call!69921 () ListLongMap!22335)

(assert (=> bm!69914 (= call!69920 call!69921)))

(declare-fun b!1547531 () Bool)

(declare-fun res!1060792 () Bool)

(declare-fun e!861425 () Bool)

(assert (=> b!1547531 (=> (not res!1060792) (not e!861425))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103235 0))(
  ( (array!103236 (arr!49815 (Array (_ BitVec 32) (_ BitVec 64))) (size!50366 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103235)

(assert (=> b!1547531 (= res!1060792 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50366 _keys!618))))))

(declare-fun b!1547532 () Bool)

(declare-fun res!1060790 () Bool)

(assert (=> b!1547532 (=> (not res!1060790) (not e!861425))))

(declare-datatypes ((List!36223 0))(
  ( (Nil!36220) (Cons!36219 (h!37665 (_ BitVec 64)) (t!50924 List!36223)) )
))
(declare-fun arrayNoDuplicates!0 (array!103235 (_ BitVec 32) List!36223) Bool)

(assert (=> b!1547532 (= res!1060790 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36220))))

(declare-fun b!1547533 () Bool)

(declare-fun e!861426 () ListLongMap!22335)

(declare-fun call!69917 () ListLongMap!22335)

(declare-fun minValue!436 () V!59157)

(declare-fun +!4907 (ListLongMap!22335 tuple2!24714) ListLongMap!22335)

(assert (=> b!1547533 (= e!861426 (+!4907 call!69917 (tuple2!24715 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1547534 () Bool)

(declare-fun e!861423 () Bool)

(declare-fun tp_is_empty!38035 () Bool)

(assert (=> b!1547534 (= e!861423 tp_is_empty!38035)))

(declare-fun zeroValue!436 () V!59157)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!69915 () Bool)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18107 0))(
  ( (ValueCellFull!18107 (v!21893 V!59157)) (EmptyCell!18107) )
))
(declare-datatypes ((array!103237 0))(
  ( (array!103238 (arr!49816 (Array (_ BitVec 32) ValueCell!18107)) (size!50367 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103237)

(declare-fun call!69918 () ListLongMap!22335)

(declare-fun getCurrentListMapNoExtraKeys!6626 (array!103235 array!103237 (_ BitVec 32) (_ BitVec 32) V!59157 V!59157 (_ BitVec 32) Int) ListLongMap!22335)

(assert (=> bm!69915 (= call!69918 (getCurrentListMapNoExtraKeys!6626 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun res!1060787 () Bool)

(assert (=> start!132078 (=> (not res!1060787) (not e!861425))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132078 (= res!1060787 (validMask!0 mask!926))))

(assert (=> start!132078 e!861425))

(declare-fun array_inv!38665 (array!103235) Bool)

(assert (=> start!132078 (array_inv!38665 _keys!618)))

(assert (=> start!132078 tp_is_empty!38035))

(assert (=> start!132078 true))

(assert (=> start!132078 tp!111530))

(declare-fun e!861430 () Bool)

(declare-fun array_inv!38666 (array!103237) Bool)

(assert (=> start!132078 (and (array_inv!38666 _values!470) e!861430)))

(declare-fun b!1547535 () Bool)

(declare-fun res!1060791 () Bool)

(declare-fun e!861422 () Bool)

(assert (=> b!1547535 (=> (not res!1060791) (not e!861422))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1547535 (= res!1060791 (validKeyInArray!0 (select (arr!49815 _keys!618) from!762)))))

(declare-fun bm!69916 () Bool)

(declare-fun call!69919 () ListLongMap!22335)

(assert (=> bm!69916 (= call!69919 call!69917)))

(declare-fun b!1547536 () Bool)

(assert (=> b!1547536 (= e!861422 (not true))))

(declare-fun lt!666868 () ListLongMap!22335)

(declare-fun apply!1091 (ListLongMap!22335 (_ BitVec 64)) V!59157)

(assert (=> b!1547536 (= (apply!1091 (+!4907 lt!666868 (tuple2!24715 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49815 _keys!618) from!762)) (apply!1091 lt!666868 (select (arr!49815 _keys!618) from!762)))))

(declare-datatypes ((Unit!51512 0))(
  ( (Unit!51513) )
))
(declare-fun lt!666867 () Unit!51512)

(declare-fun addApplyDifferent!594 (ListLongMap!22335 (_ BitVec 64) V!59157 (_ BitVec 64)) Unit!51512)

(assert (=> b!1547536 (= lt!666867 (addApplyDifferent!594 lt!666868 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49815 _keys!618) from!762)))))

(declare-fun contains!10075 (ListLongMap!22335 (_ BitVec 64)) Bool)

(assert (=> b!1547536 (contains!10075 (+!4907 lt!666868 (tuple2!24715 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49815 _keys!618) from!762))))

(declare-fun lt!666866 () Unit!51512)

(declare-fun addStillContains!1257 (ListLongMap!22335 (_ BitVec 64) V!59157 (_ BitVec 64)) Unit!51512)

(assert (=> b!1547536 (= lt!666866 (addStillContains!1257 lt!666868 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49815 _keys!618) from!762)))))

(assert (=> b!1547536 (= lt!666868 (getCurrentListMapNoExtraKeys!6626 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547537 () Bool)

(declare-fun mapRes!58756 () Bool)

(assert (=> b!1547537 (= e!861430 (and e!861423 mapRes!58756))))

(declare-fun condMapEmpty!58756 () Bool)

(declare-fun mapDefault!58756 () ValueCell!18107)

