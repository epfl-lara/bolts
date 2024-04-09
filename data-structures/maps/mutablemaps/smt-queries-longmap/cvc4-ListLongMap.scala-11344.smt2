; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132004 () Bool)

(assert start!132004)

(declare-fun b_free!31685 () Bool)

(declare-fun b_next!31685 () Bool)

(assert (=> start!132004 (= b_free!31685 (not b_next!31685))))

(declare-fun tp!111307 () Bool)

(declare-fun b_and!51105 () Bool)

(assert (=> start!132004 (= tp!111307 b_and!51105)))

(declare-fun b!1545754 () Bool)

(declare-fun e!860430 () Bool)

(declare-fun tp_is_empty!37961 () Bool)

(assert (=> b!1545754 (= e!860430 tp_is_empty!37961)))

(declare-fun b!1545755 () Bool)

(declare-datatypes ((V!59057 0))(
  ( (V!59058 (val!19058 Int)) )
))
(declare-datatypes ((tuple2!24644 0))(
  ( (tuple2!24645 (_1!12332 (_ BitVec 64)) (_2!12332 V!59057)) )
))
(declare-datatypes ((List!36157 0))(
  ( (Nil!36154) (Cons!36153 (h!37599 tuple2!24644) (t!50858 List!36157)) )
))
(declare-datatypes ((ListLongMap!22265 0))(
  ( (ListLongMap!22266 (toList!11148 List!36157)) )
))
(declare-fun e!860431 () ListLongMap!22265)

(declare-fun call!69363 () ListLongMap!22265)

(assert (=> b!1545755 (= e!860431 call!69363)))

(declare-fun mapIsEmpty!58645 () Bool)

(declare-fun mapRes!58645 () Bool)

(assert (=> mapIsEmpty!58645 mapRes!58645))

(declare-fun bm!69359 () Bool)

(declare-fun call!69362 () ListLongMap!22265)

(assert (=> bm!69359 (= call!69363 call!69362)))

(declare-fun b!1545756 () Bool)

(declare-fun e!860429 () Bool)

(assert (=> b!1545756 (= e!860429 (not true))))

(declare-datatypes ((array!103095 0))(
  ( (array!103096 (arr!49745 (Array (_ BitVec 32) (_ BitVec 64))) (size!50296 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103095)

(declare-fun zeroValue!436 () V!59057)

(declare-fun lt!666349 () ListLongMap!22265)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun contains!10050 (ListLongMap!22265 (_ BitVec 64)) Bool)

(declare-fun +!4878 (ListLongMap!22265 tuple2!24644) ListLongMap!22265)

(assert (=> b!1545756 (contains!10050 (+!4878 lt!666349 (tuple2!24645 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49745 _keys!618) from!762))))

(declare-datatypes ((Unit!51462 0))(
  ( (Unit!51463) )
))
(declare-fun lt!666348 () Unit!51462)

(declare-fun addStillContains!1232 (ListLongMap!22265 (_ BitVec 64) V!59057 (_ BitVec 64)) Unit!51462)

(assert (=> b!1545756 (= lt!666348 (addStillContains!1232 lt!666349 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49745 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18070 0))(
  ( (ValueCellFull!18070 (v!21856 V!59057)) (EmptyCell!18070) )
))
(declare-datatypes ((array!103097 0))(
  ( (array!103098 (arr!49746 (Array (_ BitVec 32) ValueCell!18070)) (size!50297 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103097)

(declare-fun minValue!436 () V!59057)

(declare-fun getCurrentListMapNoExtraKeys!6597 (array!103095 array!103097 (_ BitVec 32) (_ BitVec 32) V!59057 V!59057 (_ BitVec 32) Int) ListLongMap!22265)

(assert (=> b!1545756 (= lt!666349 (getCurrentListMapNoExtraKeys!6597 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun c!141645 () Bool)

(declare-fun call!69364 () ListLongMap!22265)

(declare-fun c!141647 () Bool)

(declare-fun bm!69360 () Bool)

(declare-fun call!69366 () ListLongMap!22265)

(assert (=> bm!69360 (= call!69364 (+!4878 (ite c!141645 call!69366 (ite c!141647 call!69362 call!69363)) (ite (or c!141645 c!141647) (tuple2!24645 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24645 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1545757 () Bool)

(declare-fun e!860425 () ListLongMap!22265)

(assert (=> b!1545757 (= e!860425 (+!4878 call!69364 (tuple2!24645 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1545758 () Bool)

(declare-fun e!860428 () Bool)

(assert (=> b!1545758 (= e!860428 tp_is_empty!37961)))

(declare-fun b!1545759 () Bool)

(declare-fun res!1060012 () Bool)

(declare-fun e!860424 () Bool)

(assert (=> b!1545759 (=> (not res!1060012) (not e!860424))))

(declare-datatypes ((List!36158 0))(
  ( (Nil!36155) (Cons!36154 (h!37600 (_ BitVec 64)) (t!50859 List!36158)) )
))
(declare-fun arrayNoDuplicates!0 (array!103095 (_ BitVec 32) List!36158) Bool)

(assert (=> b!1545759 (= res!1060012 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36155))))

(declare-fun res!1060011 () Bool)

(assert (=> start!132004 (=> (not res!1060011) (not e!860424))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132004 (= res!1060011 (validMask!0 mask!926))))

(assert (=> start!132004 e!860424))

(declare-fun array_inv!38613 (array!103095) Bool)

(assert (=> start!132004 (array_inv!38613 _keys!618)))

(assert (=> start!132004 tp_is_empty!37961))

(assert (=> start!132004 true))

(assert (=> start!132004 tp!111307))

(declare-fun e!860423 () Bool)

(declare-fun array_inv!38614 (array!103097) Bool)

(assert (=> start!132004 (and (array_inv!38614 _values!470) e!860423)))

(declare-fun bm!69361 () Bool)

(declare-fun call!69365 () ListLongMap!22265)

(assert (=> bm!69361 (= call!69365 call!69364)))

(declare-fun b!1545760 () Bool)

(assert (=> b!1545760 (= e!860423 (and e!860430 mapRes!58645))))

(declare-fun condMapEmpty!58645 () Bool)

(declare-fun mapDefault!58645 () ValueCell!18070)

