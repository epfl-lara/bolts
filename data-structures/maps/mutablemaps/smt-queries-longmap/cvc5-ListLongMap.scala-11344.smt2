; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132000 () Bool)

(assert start!132000)

(declare-fun b_free!31681 () Bool)

(declare-fun b_next!31681 () Bool)

(assert (=> start!132000 (= b_free!31681 (not b_next!31681))))

(declare-fun tp!111296 () Bool)

(declare-fun b_and!51101 () Bool)

(assert (=> start!132000 (= tp!111296 b_and!51101)))

(declare-fun b!1545658 () Bool)

(declare-datatypes ((V!59053 0))(
  ( (V!59054 (val!19056 Int)) )
))
(declare-datatypes ((tuple2!24640 0))(
  ( (tuple2!24641 (_1!12330 (_ BitVec 64)) (_2!12330 V!59053)) )
))
(declare-datatypes ((List!36154 0))(
  ( (Nil!36151) (Cons!36150 (h!37596 tuple2!24640) (t!50855 List!36154)) )
))
(declare-datatypes ((ListLongMap!22261 0))(
  ( (ListLongMap!22262 (toList!11146 List!36154)) )
))
(declare-fun e!860377 () ListLongMap!22261)

(declare-fun call!69333 () ListLongMap!22261)

(assert (=> b!1545658 (= e!860377 call!69333)))

(declare-fun b!1545659 () Bool)

(declare-fun e!860372 () ListLongMap!22261)

(assert (=> b!1545659 (= e!860372 e!860377)))

(declare-fun c!141627 () Bool)

(declare-fun lt!666323 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1545659 (= c!141627 (and (not lt!666323) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!58639 () Bool)

(declare-fun mapRes!58639 () Bool)

(assert (=> mapIsEmpty!58639 mapRes!58639))

(declare-fun b!1545660 () Bool)

(declare-fun c!141629 () Bool)

(assert (=> b!1545660 (= c!141629 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666323))))

(declare-fun e!860375 () ListLongMap!22261)

(assert (=> b!1545660 (= e!860377 e!860375)))

(declare-fun b!1545661 () Bool)

(declare-fun call!69332 () ListLongMap!22261)

(declare-fun minValue!436 () V!59053)

(declare-fun +!4876 (ListLongMap!22261 tuple2!24640) ListLongMap!22261)

(assert (=> b!1545661 (= e!860372 (+!4876 call!69332 (tuple2!24641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1545662 () Bool)

(declare-fun res!1059968 () Bool)

(declare-fun e!860376 () Bool)

(assert (=> b!1545662 (=> (not res!1059968) (not e!860376))))

(declare-datatypes ((array!103087 0))(
  ( (array!103088 (arr!49741 (Array (_ BitVec 32) (_ BitVec 64))) (size!50292 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103087)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18068 0))(
  ( (ValueCellFull!18068 (v!21854 V!59053)) (EmptyCell!18068) )
))
(declare-datatypes ((array!103089 0))(
  ( (array!103090 (arr!49742 (Array (_ BitVec 32) ValueCell!18068)) (size!50293 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103089)

(assert (=> b!1545662 (= res!1059968 (and (= (size!50293 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50292 _keys!618) (size!50293 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1545663 () Bool)

(declare-fun e!860371 () Bool)

(declare-fun tp_is_empty!37957 () Bool)

(assert (=> b!1545663 (= e!860371 tp_is_empty!37957)))

(declare-fun zeroValue!436 () V!59053)

(declare-fun call!69336 () ListLongMap!22261)

(declare-fun c!141628 () Bool)

(declare-fun call!69335 () ListLongMap!22261)

(declare-fun call!69334 () ListLongMap!22261)

(declare-fun bm!69329 () Bool)

(assert (=> bm!69329 (= call!69332 (+!4876 (ite c!141628 call!69336 (ite c!141627 call!69335 call!69334)) (ite (or c!141628 c!141627) (tuple2!24641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1545664 () Bool)

(assert (=> b!1545664 (= e!860375 call!69333)))

(declare-fun b!1545665 () Bool)

(declare-fun res!1059971 () Bool)

(assert (=> b!1545665 (=> (not res!1059971) (not e!860376))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1545665 (= res!1059971 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50292 _keys!618))))))

(declare-fun bm!69330 () Bool)

(assert (=> bm!69330 (= call!69334 call!69335)))

(declare-fun b!1545666 () Bool)

(declare-fun e!860369 () Bool)

(assert (=> b!1545666 (= e!860369 (not true))))

(declare-fun lt!666325 () ListLongMap!22261)

(declare-fun contains!10048 (ListLongMap!22261 (_ BitVec 64)) Bool)

(assert (=> b!1545666 (contains!10048 (+!4876 lt!666325 (tuple2!24641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49741 _keys!618) from!762))))

(declare-datatypes ((Unit!51458 0))(
  ( (Unit!51459) )
))
(declare-fun lt!666326 () Unit!51458)

(declare-fun addStillContains!1230 (ListLongMap!22261 (_ BitVec 64) V!59053 (_ BitVec 64)) Unit!51458)

(assert (=> b!1545666 (= lt!666326 (addStillContains!1230 lt!666325 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49741 _keys!618) from!762)))))

(declare-fun defaultEntry!478 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6595 (array!103087 array!103089 (_ BitVec 32) (_ BitVec 32) V!59053 V!59053 (_ BitVec 32) Int) ListLongMap!22261)

(assert (=> b!1545666 (= lt!666325 (getCurrentListMapNoExtraKeys!6595 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1545667 () Bool)

(declare-fun e!860370 () Bool)

(declare-fun e!860373 () Bool)

(assert (=> b!1545667 (= e!860370 (and e!860373 mapRes!58639))))

(declare-fun condMapEmpty!58639 () Bool)

(declare-fun mapDefault!58639 () ValueCell!18068)

