; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132120 () Bool)

(assert start!132120)

(declare-fun b_free!31801 () Bool)

(declare-fun b_next!31801 () Bool)

(assert (=> start!132120 (= b_free!31801 (not b_next!31801))))

(declare-fun tp!111656 () Bool)

(declare-fun b_and!51221 () Bool)

(assert (=> start!132120 (= tp!111656 b_and!51221)))

(declare-fun b!1548538 () Bool)

(declare-fun e!861990 () Bool)

(assert (=> b!1548538 (= e!861990 (not true))))

(declare-datatypes ((array!103317 0))(
  ( (array!103318 (arr!49856 (Array (_ BitVec 32) (_ BitVec 64))) (size!50407 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103317)

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((V!59213 0))(
  ( (V!59214 (val!19116 Int)) )
))
(declare-fun lt!667346 () V!59213)

(declare-datatypes ((tuple2!24754 0))(
  ( (tuple2!24755 (_1!12387 (_ BitVec 64)) (_2!12387 V!59213)) )
))
(declare-datatypes ((List!36255 0))(
  ( (Nil!36252) (Cons!36251 (h!37697 tuple2!24754) (t!50956 List!36255)) )
))
(declare-datatypes ((ListLongMap!22375 0))(
  ( (ListLongMap!22376 (toList!11203 List!36255)) )
))
(declare-fun lt!667345 () ListLongMap!22375)

(declare-fun apply!1105 (ListLongMap!22375 (_ BitVec 64)) V!59213)

(assert (=> b!1548538 (= (apply!1105 lt!667345 (select (arr!49856 _keys!618) from!762)) lt!667346)))

(declare-fun lt!667342 () ListLongMap!22375)

(declare-fun zeroValue!436 () V!59213)

(declare-datatypes ((Unit!51540 0))(
  ( (Unit!51541) )
))
(declare-fun lt!667343 () Unit!51540)

(declare-fun addApplyDifferent!608 (ListLongMap!22375 (_ BitVec 64) V!59213 (_ BitVec 64)) Unit!51540)

(assert (=> b!1548538 (= lt!667343 (addApplyDifferent!608 lt!667342 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49856 _keys!618) from!762)))))

(declare-fun lt!667341 () V!59213)

(assert (=> b!1548538 (= lt!667341 lt!667346)))

(assert (=> b!1548538 (= lt!667346 (apply!1105 lt!667342 (select (arr!49856 _keys!618) from!762)))))

(declare-fun minValue!436 () V!59213)

(declare-fun +!4922 (ListLongMap!22375 tuple2!24754) ListLongMap!22375)

(assert (=> b!1548538 (= lt!667341 (apply!1105 (+!4922 lt!667342 (tuple2!24755 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49856 _keys!618) from!762)))))

(declare-fun lt!667344 () Unit!51540)

(assert (=> b!1548538 (= lt!667344 (addApplyDifferent!608 lt!667342 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49856 _keys!618) from!762)))))

(declare-fun contains!10089 (ListLongMap!22375 (_ BitVec 64)) Bool)

(assert (=> b!1548538 (contains!10089 lt!667345 (select (arr!49856 _keys!618) from!762))))

(assert (=> b!1548538 (= lt!667345 (+!4922 lt!667342 (tuple2!24755 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667349 () Unit!51540)

(declare-fun addStillContains!1271 (ListLongMap!22375 (_ BitVec 64) V!59213 (_ BitVec 64)) Unit!51540)

(assert (=> b!1548538 (= lt!667349 (addStillContains!1271 lt!667342 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49856 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18128 0))(
  ( (ValueCellFull!18128 (v!21914 V!59213)) (EmptyCell!18128) )
))
(declare-datatypes ((array!103319 0))(
  ( (array!103320 (arr!49857 (Array (_ BitVec 32) ValueCell!18128)) (size!50408 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103319)

(declare-fun getCurrentListMapNoExtraKeys!6643 (array!103317 array!103319 (_ BitVec 32) (_ BitVec 32) V!59213 V!59213 (_ BitVec 32) Int) ListLongMap!22375)

(assert (=> b!1548538 (= lt!667342 (getCurrentListMapNoExtraKeys!6643 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1548539 () Bool)

(declare-fun e!861989 () ListLongMap!22375)

(declare-fun e!861997 () ListLongMap!22375)

(assert (=> b!1548539 (= e!861989 e!861997)))

(declare-fun c!142169 () Bool)

(declare-fun lt!667348 () Bool)

(assert (=> b!1548539 (= c!142169 (and (not lt!667348) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1548540 () Bool)

(declare-fun res!1061234 () Bool)

(declare-fun e!861992 () Bool)

(assert (=> b!1548540 (=> (not res!1061234) (not e!861992))))

(declare-datatypes ((List!36256 0))(
  ( (Nil!36253) (Cons!36252 (h!37698 (_ BitVec 64)) (t!50957 List!36256)) )
))
(declare-fun arrayNoDuplicates!0 (array!103317 (_ BitVec 32) List!36256) Bool)

(assert (=> b!1548540 (= res!1061234 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36253))))

(declare-fun b!1548541 () Bool)

(declare-fun e!861994 () Bool)

(declare-fun e!861995 () Bool)

(declare-fun mapRes!58819 () Bool)

(assert (=> b!1548541 (= e!861994 (and e!861995 mapRes!58819))))

(declare-fun condMapEmpty!58819 () Bool)

(declare-fun mapDefault!58819 () ValueCell!18128)

