; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132282 () Bool)

(assert start!132282)

(declare-fun b_free!31901 () Bool)

(declare-fun b_next!31901 () Bool)

(assert (=> start!132282 (= b_free!31901 (not b_next!31901))))

(declare-fun tp!111965 () Bool)

(declare-fun b_and!51345 () Bool)

(assert (=> start!132282 (= tp!111965 b_and!51345)))

(declare-fun bm!71015 () Bool)

(declare-datatypes ((array!103511 0))(
  ( (array!103512 (arr!49950 (Array (_ BitVec 32) (_ BitVec 64))) (size!50501 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103511)

(declare-datatypes ((V!59345 0))(
  ( (V!59346 (val!19166 Int)) )
))
(declare-fun zeroValue!436 () V!59345)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18178 0))(
  ( (ValueCellFull!18178 (v!21967 V!59345)) (EmptyCell!18178) )
))
(declare-datatypes ((array!103513 0))(
  ( (array!103514 (arr!49951 (Array (_ BitVec 32) ValueCell!18178)) (size!50502 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103513)

(declare-fun minValue!436 () V!59345)

(declare-datatypes ((tuple2!24848 0))(
  ( (tuple2!24849 (_1!12434 (_ BitVec 64)) (_2!12434 V!59345)) )
))
(declare-datatypes ((List!36333 0))(
  ( (Nil!36330) (Cons!36329 (h!37775 tuple2!24848) (t!51052 List!36333)) )
))
(declare-datatypes ((ListLongMap!22469 0))(
  ( (ListLongMap!22470 (toList!11250 List!36333)) )
))
(declare-fun call!71018 () ListLongMap!22469)

(declare-fun getCurrentListMapNoExtraKeys!6675 (array!103511 array!103513 (_ BitVec 32) (_ BitVec 32) V!59345 V!59345 (_ BitVec 32) Int) ListLongMap!22469)

(assert (=> bm!71015 (= call!71018 (getCurrentListMapNoExtraKeys!6675 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1551382 () Bool)

(declare-fun e!863648 () Bool)

(assert (=> b!1551382 (= e!863648 (not true))))

(declare-fun lt!668650 () ListLongMap!22469)

(declare-fun lt!668646 () V!59345)

(declare-fun apply!1125 (ListLongMap!22469 (_ BitVec 64)) V!59345)

(assert (=> b!1551382 (= (apply!1125 lt!668650 (select (arr!49950 _keys!618) from!762)) lt!668646)))

(declare-fun lt!668649 () ListLongMap!22469)

(declare-datatypes ((Unit!51601 0))(
  ( (Unit!51602) )
))
(declare-fun lt!668645 () Unit!51601)

(declare-fun addApplyDifferent!626 (ListLongMap!22469 (_ BitVec 64) V!59345 (_ BitVec 64)) Unit!51601)

(assert (=> b!1551382 (= lt!668645 (addApplyDifferent!626 lt!668649 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49950 _keys!618) from!762)))))

(declare-fun lt!668642 () V!59345)

(assert (=> b!1551382 (= lt!668642 lt!668646)))

(assert (=> b!1551382 (= lt!668646 (apply!1125 lt!668649 (select (arr!49950 _keys!618) from!762)))))

(declare-fun +!4957 (ListLongMap!22469 tuple2!24848) ListLongMap!22469)

(assert (=> b!1551382 (= lt!668642 (apply!1125 (+!4957 lt!668649 (tuple2!24849 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49950 _keys!618) from!762)))))

(declare-fun lt!668643 () Unit!51601)

(assert (=> b!1551382 (= lt!668643 (addApplyDifferent!626 lt!668649 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49950 _keys!618) from!762)))))

(declare-fun contains!10120 (ListLongMap!22469 (_ BitVec 64)) Bool)

(assert (=> b!1551382 (contains!10120 lt!668650 (select (arr!49950 _keys!618) from!762))))

(assert (=> b!1551382 (= lt!668650 (+!4957 lt!668649 (tuple2!24849 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!668644 () Unit!51601)

(declare-fun addStillContains!1293 (ListLongMap!22469 (_ BitVec 64) V!59345 (_ BitVec 64)) Unit!51601)

(assert (=> b!1551382 (= lt!668644 (addStillContains!1293 lt!668649 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49950 _keys!618) from!762)))))

(assert (=> b!1551382 (= lt!668649 (getCurrentListMapNoExtraKeys!6675 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun res!1062475 () Bool)

(declare-fun e!863642 () Bool)

(assert (=> start!132282 (=> (not res!1062475) (not e!863642))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132282 (= res!1062475 (validMask!0 mask!926))))

(assert (=> start!132282 e!863642))

(declare-fun array_inv!38757 (array!103511) Bool)

(assert (=> start!132282 (array_inv!38757 _keys!618)))

(declare-fun tp_is_empty!38177 () Bool)

(assert (=> start!132282 tp_is_empty!38177))

(assert (=> start!132282 true))

(assert (=> start!132282 tp!111965))

(declare-fun e!863645 () Bool)

(declare-fun array_inv!38758 (array!103513) Bool)

(assert (=> start!132282 (and (array_inv!38758 _values!470) e!863645)))

(declare-fun bm!71016 () Bool)

(declare-fun call!71021 () ListLongMap!22469)

(declare-fun call!71020 () ListLongMap!22469)

(assert (=> bm!71016 (= call!71021 call!71020)))

(declare-fun bm!71017 () Bool)

(declare-fun call!71019 () ListLongMap!22469)

(declare-fun call!71022 () ListLongMap!22469)

(assert (=> bm!71017 (= call!71019 call!71022)))

(declare-fun b!1551383 () Bool)

(declare-fun res!1062479 () Bool)

(assert (=> b!1551383 (=> (not res!1062479) (not e!863642))))

(assert (=> b!1551383 (= res!1062479 (and (= (size!50502 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50501 _keys!618) (size!50502 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1551384 () Bool)

(declare-fun e!863644 () Bool)

(assert (=> b!1551384 (= e!863644 tp_is_empty!38177)))

(declare-fun bm!71018 () Bool)

(assert (=> bm!71018 (= call!71020 call!71018)))

(declare-fun mapNonEmpty!58978 () Bool)

(declare-fun mapRes!58978 () Bool)

(declare-fun tp!111964 () Bool)

(assert (=> mapNonEmpty!58978 (= mapRes!58978 (and tp!111964 e!863644))))

(declare-fun mapValue!58978 () ValueCell!18178)

(declare-fun mapKey!58978 () (_ BitVec 32))

(declare-fun mapRest!58978 () (Array (_ BitVec 32) ValueCell!18178))

(assert (=> mapNonEmpty!58978 (= (arr!49951 _values!470) (store mapRest!58978 mapKey!58978 mapValue!58978))))

(declare-fun b!1551385 () Bool)

(declare-fun res!1062481 () Bool)

(assert (=> b!1551385 (=> (not res!1062481) (not e!863642))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103511 (_ BitVec 32)) Bool)

(assert (=> b!1551385 (= res!1062481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1551386 () Bool)

(declare-fun res!1062478 () Bool)

(assert (=> b!1551386 (=> (not res!1062478) (not e!863642))))

(assert (=> b!1551386 (= res!1062478 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50501 _keys!618))))))

(declare-fun b!1551387 () Bool)

(declare-fun e!863646 () Bool)

(assert (=> b!1551387 (= e!863645 (and e!863646 mapRes!58978))))

(declare-fun condMapEmpty!58978 () Bool)

(declare-fun mapDefault!58978 () ValueCell!18178)

