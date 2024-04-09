; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132150 () Bool)

(assert start!132150)

(declare-fun b_free!31831 () Bool)

(declare-fun b_next!31831 () Bool)

(assert (=> start!132150 (= b_free!31831 (not b_next!31831))))

(declare-fun tp!111745 () Bool)

(declare-fun b_and!51251 () Bool)

(assert (=> start!132150 (= tp!111745 b_and!51251)))

(declare-datatypes ((V!59253 0))(
  ( (V!59254 (val!19131 Int)) )
))
(declare-fun zeroValue!436 () V!59253)

(declare-datatypes ((tuple2!24784 0))(
  ( (tuple2!24785 (_1!12402 (_ BitVec 64)) (_2!12402 V!59253)) )
))
(declare-datatypes ((List!36282 0))(
  ( (Nil!36279) (Cons!36278 (h!37724 tuple2!24784) (t!50983 List!36282)) )
))
(declare-datatypes ((ListLongMap!22405 0))(
  ( (ListLongMap!22406 (toList!11218 List!36282)) )
))
(declare-fun call!70457 () ListLongMap!22405)

(declare-fun call!70460 () ListLongMap!22405)

(declare-fun c!142303 () Bool)

(declare-fun minValue!436 () V!59253)

(declare-fun c!142304 () Bool)

(declare-fun call!70461 () ListLongMap!22405)

(declare-fun call!70458 () ListLongMap!22405)

(declare-fun bm!70454 () Bool)

(declare-fun +!4934 (ListLongMap!22405 tuple2!24784) ListLongMap!22405)

(assert (=> bm!70454 (= call!70460 (+!4934 (ite c!142304 call!70457 (ite c!142303 call!70461 call!70458)) (ite (or c!142304 c!142303) (tuple2!24785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24785 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1549258 () Bool)

(declare-fun e!862398 () ListLongMap!22405)

(assert (=> b!1549258 (= e!862398 call!70458)))

(declare-fun mapNonEmpty!58864 () Bool)

(declare-fun mapRes!58864 () Bool)

(declare-fun tp!111746 () Bool)

(declare-fun e!862394 () Bool)

(assert (=> mapNonEmpty!58864 (= mapRes!58864 (and tp!111746 e!862394))))

(declare-fun mapKey!58864 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18143 0))(
  ( (ValueCellFull!18143 (v!21929 V!59253)) (EmptyCell!18143) )
))
(declare-datatypes ((array!103375 0))(
  ( (array!103376 (arr!49885 (Array (_ BitVec 32) ValueCell!18143)) (size!50436 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103375)

(declare-fun mapValue!58864 () ValueCell!18143)

(declare-fun mapRest!58864 () (Array (_ BitVec 32) ValueCell!18143))

(assert (=> mapNonEmpty!58864 (= (arr!49885 _values!470) (store mapRest!58864 mapKey!58864 mapValue!58864))))

(declare-fun b!1549259 () Bool)

(declare-fun res!1061547 () Bool)

(declare-fun e!862401 () Bool)

(assert (=> b!1549259 (=> (not res!1061547) (not e!862401))))

(declare-datatypes ((array!103377 0))(
  ( (array!103378 (arr!49886 (Array (_ BitVec 32) (_ BitVec 64))) (size!50437 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103377)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(assert (=> b!1549259 (= res!1061547 (and (= (size!50436 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50437 _keys!618) (size!50436 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1549260 () Bool)

(declare-fun e!862399 () Bool)

(assert (=> b!1549260 (= e!862401 e!862399)))

(declare-fun res!1061549 () Bool)

(assert (=> b!1549260 (=> (not res!1061549) (not e!862399))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1549260 (= res!1061549 (bvslt from!762 (size!50437 _keys!618)))))

(declare-fun lt!667751 () ListLongMap!22405)

(declare-fun e!862396 () ListLongMap!22405)

(assert (=> b!1549260 (= lt!667751 e!862396)))

(declare-fun lt!667756 () Bool)

(assert (=> b!1549260 (= c!142304 (and (not lt!667756) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1549260 (= lt!667756 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!58864 () Bool)

(assert (=> mapIsEmpty!58864 mapRes!58864))

(declare-fun bm!70455 () Bool)

(assert (=> bm!70455 (= call!70458 call!70461)))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!70456 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6654 (array!103377 array!103375 (_ BitVec 32) (_ BitVec 32) V!59253 V!59253 (_ BitVec 32) Int) ListLongMap!22405)

(assert (=> bm!70456 (= call!70457 (getCurrentListMapNoExtraKeys!6654 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1549261 () Bool)

(declare-fun res!1061544 () Bool)

(assert (=> b!1549261 (=> (not res!1061544) (not e!862399))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1549261 (= res!1061544 (validKeyInArray!0 (select (arr!49886 _keys!618) from!762)))))

(declare-fun res!1061546 () Bool)

(assert (=> start!132150 (=> (not res!1061546) (not e!862401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132150 (= res!1061546 (validMask!0 mask!926))))

(assert (=> start!132150 e!862401))

(declare-fun array_inv!38715 (array!103377) Bool)

(assert (=> start!132150 (array_inv!38715 _keys!618)))

(declare-fun tp_is_empty!38107 () Bool)

(assert (=> start!132150 tp_is_empty!38107))

(assert (=> start!132150 true))

(assert (=> start!132150 tp!111745))

(declare-fun e!862402 () Bool)

(declare-fun array_inv!38716 (array!103375) Bool)

(assert (=> start!132150 (and (array_inv!38716 _values!470) e!862402)))

(declare-fun bm!70457 () Bool)

(assert (=> bm!70457 (= call!70461 call!70457)))

(declare-fun b!1549262 () Bool)

(assert (=> b!1549262 (= e!862399 (not true))))

(declare-fun lt!667750 () Bool)

(declare-fun lt!667752 () ListLongMap!22405)

(declare-fun contains!10098 (ListLongMap!22405 (_ BitVec 64)) Bool)

(assert (=> b!1549262 (= lt!667750 (contains!10098 lt!667752 (select (arr!49886 _keys!618) from!762)))))

(declare-fun lt!667749 () V!59253)

(declare-fun lt!667755 () ListLongMap!22405)

(declare-fun apply!1114 (ListLongMap!22405 (_ BitVec 64)) V!59253)

(assert (=> b!1549262 (= (apply!1114 lt!667755 (select (arr!49886 _keys!618) from!762)) lt!667749)))

(declare-datatypes ((Unit!51558 0))(
  ( (Unit!51559) )
))
(declare-fun lt!667753 () Unit!51558)

(declare-fun addApplyDifferent!617 (ListLongMap!22405 (_ BitVec 64) V!59253 (_ BitVec 64)) Unit!51558)

(assert (=> b!1549262 (= lt!667753 (addApplyDifferent!617 lt!667752 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49886 _keys!618) from!762)))))

(declare-fun lt!667754 () V!59253)

(assert (=> b!1549262 (= lt!667754 lt!667749)))

(assert (=> b!1549262 (= lt!667749 (apply!1114 lt!667752 (select (arr!49886 _keys!618) from!762)))))

(assert (=> b!1549262 (= lt!667754 (apply!1114 (+!4934 lt!667752 (tuple2!24785 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49886 _keys!618) from!762)))))

(declare-fun lt!667748 () Unit!51558)

(assert (=> b!1549262 (= lt!667748 (addApplyDifferent!617 lt!667752 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49886 _keys!618) from!762)))))

(assert (=> b!1549262 (contains!10098 lt!667755 (select (arr!49886 _keys!618) from!762))))

(assert (=> b!1549262 (= lt!667755 (+!4934 lt!667752 (tuple2!24785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667757 () Unit!51558)

(declare-fun addStillContains!1280 (ListLongMap!22405 (_ BitVec 64) V!59253 (_ BitVec 64)) Unit!51558)

(assert (=> b!1549262 (= lt!667757 (addStillContains!1280 lt!667752 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49886 _keys!618) from!762)))))

(assert (=> b!1549262 (= lt!667752 (getCurrentListMapNoExtraKeys!6654 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!70458 () Bool)

(declare-fun call!70459 () ListLongMap!22405)

(assert (=> bm!70458 (= call!70459 call!70460)))

(declare-fun b!1549263 () Bool)

(assert (=> b!1549263 (= e!862398 call!70459)))

(declare-fun b!1549264 () Bool)

(declare-fun e!862397 () Bool)

(assert (=> b!1549264 (= e!862402 (and e!862397 mapRes!58864))))

(declare-fun condMapEmpty!58864 () Bool)

(declare-fun mapDefault!58864 () ValueCell!18143)

