; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132156 () Bool)

(assert start!132156)

(declare-fun b_free!31837 () Bool)

(declare-fun b_next!31837 () Bool)

(assert (=> start!132156 (= b_free!31837 (not b_next!31837))))

(declare-fun tp!111764 () Bool)

(declare-fun b_and!51257 () Bool)

(assert (=> start!132156 (= tp!111764 b_and!51257)))

(declare-fun b!1549406 () Bool)

(declare-fun e!862482 () Bool)

(declare-fun e!862486 () Bool)

(assert (=> b!1549406 (= e!862482 e!862486)))

(declare-fun res!1061607 () Bool)

(assert (=> b!1549406 (=> (not res!1061607) (not e!862486))))

(declare-fun lt!667847 () Bool)

(assert (=> b!1549406 (= res!1061607 (not lt!667847))))

(declare-datatypes ((Unit!51562 0))(
  ( (Unit!51563) )
))
(declare-fun lt!667842 () Unit!51562)

(declare-fun e!862483 () Unit!51562)

(assert (=> b!1549406 (= lt!667842 e!862483)))

(declare-fun c!142334 () Bool)

(assert (=> b!1549406 (= c!142334 (not lt!667847))))

(declare-fun e!862487 () Bool)

(assert (=> b!1549406 (= lt!667847 e!862487)))

(declare-fun res!1061612 () Bool)

(assert (=> b!1549406 (=> res!1061612 e!862487)))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103387 0))(
  ( (array!103388 (arr!49891 (Array (_ BitVec 32) (_ BitVec 64))) (size!50442 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103387)

(assert (=> b!1549406 (= res!1061612 (bvsge from!762 (size!50442 _keys!618)))))

(declare-datatypes ((V!59261 0))(
  ( (V!59262 (val!19134 Int)) )
))
(declare-datatypes ((tuple2!24790 0))(
  ( (tuple2!24791 (_1!12405 (_ BitVec 64)) (_2!12405 V!59261)) )
))
(declare-datatypes ((List!36287 0))(
  ( (Nil!36284) (Cons!36283 (h!37729 tuple2!24790) (t!50988 List!36287)) )
))
(declare-datatypes ((ListLongMap!22411 0))(
  ( (ListLongMap!22412 (toList!11221 List!36287)) )
))
(declare-fun lt!667849 () ListLongMap!22411)

(declare-fun e!862489 () ListLongMap!22411)

(assert (=> b!1549406 (= lt!667849 e!862489)))

(declare-fun c!142332 () Bool)

(declare-fun lt!667851 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1549406 (= c!142332 (and (not lt!667851) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1549406 (= lt!667851 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1549407 () Bool)

(assert (=> b!1549407 (= e!862486 false)))

(declare-fun lt!667845 () Bool)

(declare-fun contains!10100 (ListLongMap!22411 (_ BitVec 64)) Bool)

(assert (=> b!1549407 (= lt!667845 (contains!10100 lt!667849 (select (arr!49891 _keys!618) from!762)))))

(declare-fun b!1549408 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1549408 (= e!862487 (not (validKeyInArray!0 (select (arr!49891 _keys!618) from!762))))))

(declare-fun bm!70499 () Bool)

(declare-fun call!70502 () ListLongMap!22411)

(declare-fun call!70506 () ListLongMap!22411)

(assert (=> bm!70499 (= call!70502 call!70506)))

(declare-fun b!1549409 () Bool)

(declare-fun e!862479 () Bool)

(declare-fun tp_is_empty!38113 () Bool)

(assert (=> b!1549409 (= e!862479 tp_is_empty!38113)))

(declare-fun bm!70500 () Bool)

(declare-fun call!70504 () ListLongMap!22411)

(assert (=> bm!70500 (= call!70506 call!70504)))

(declare-fun mapIsEmpty!58873 () Bool)

(declare-fun mapRes!58873 () Bool)

(assert (=> mapIsEmpty!58873 mapRes!58873))

(declare-fun b!1549410 () Bool)

(declare-fun e!862488 () ListLongMap!22411)

(assert (=> b!1549410 (= e!862488 call!70502)))

(declare-fun b!1549411 () Bool)

(declare-fun e!862481 () Bool)

(assert (=> b!1549411 (= e!862481 tp_is_empty!38113)))

(declare-fun b!1549412 () Bool)

(declare-fun e!862485 () ListLongMap!22411)

(assert (=> b!1549412 (= e!862489 e!862485)))

(declare-fun c!142331 () Bool)

(assert (=> b!1549412 (= c!142331 (and (not lt!667851) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1549413 () Bool)

(declare-fun res!1061608 () Bool)

(assert (=> b!1549413 (=> (not res!1061608) (not e!862482))))

(declare-datatypes ((List!36288 0))(
  ( (Nil!36285) (Cons!36284 (h!37730 (_ BitVec 64)) (t!50989 List!36288)) )
))
(declare-fun arrayNoDuplicates!0 (array!103387 (_ BitVec 32) List!36288) Bool)

(assert (=> b!1549413 (= res!1061608 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36285))))

(declare-fun zeroValue!436 () V!59261)

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun bm!70501 () Bool)

(declare-datatypes ((ValueCell!18146 0))(
  ( (ValueCellFull!18146 (v!21932 V!59261)) (EmptyCell!18146) )
))
(declare-datatypes ((array!103389 0))(
  ( (array!103390 (arr!49892 (Array (_ BitVec 32) ValueCell!18146)) (size!50443 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103389)

(declare-fun minValue!436 () V!59261)

(declare-fun getCurrentListMapNoExtraKeys!6656 (array!103387 array!103389 (_ BitVec 32) (_ BitVec 32) V!59261 V!59261 (_ BitVec 32) Int) ListLongMap!22411)

(assert (=> bm!70501 (= call!70504 (getCurrentListMapNoExtraKeys!6656 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun res!1061611 () Bool)

(assert (=> start!132156 (=> (not res!1061611) (not e!862482))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132156 (= res!1061611 (validMask!0 mask!926))))

(assert (=> start!132156 e!862482))

(declare-fun array_inv!38719 (array!103387) Bool)

(assert (=> start!132156 (array_inv!38719 _keys!618)))

(assert (=> start!132156 tp_is_empty!38113))

(assert (=> start!132156 true))

(assert (=> start!132156 tp!111764))

(declare-fun e!862484 () Bool)

(declare-fun array_inv!38720 (array!103389) Bool)

(assert (=> start!132156 (and (array_inv!38720 _values!470) e!862484)))

(declare-fun b!1549414 () Bool)

(declare-fun call!70505 () ListLongMap!22411)

(assert (=> b!1549414 (= e!862488 call!70505)))

(declare-fun bm!70502 () Bool)

(declare-fun call!70503 () ListLongMap!22411)

(assert (=> bm!70502 (= call!70505 call!70503)))

(declare-fun b!1549415 () Bool)

(declare-fun c!142333 () Bool)

(assert (=> b!1549415 (= c!142333 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!667851))))

(assert (=> b!1549415 (= e!862485 e!862488)))

(declare-fun b!1549416 () Bool)

(declare-fun res!1061610 () Bool)

(assert (=> b!1549416 (=> (not res!1061610) (not e!862482))))

(assert (=> b!1549416 (= res!1061610 (and (= (size!50443 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50442 _keys!618) (size!50443 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1549417 () Bool)

(assert (=> b!1549417 (= e!862484 (and e!862481 mapRes!58873))))

(declare-fun condMapEmpty!58873 () Bool)

(declare-fun mapDefault!58873 () ValueCell!18146)

