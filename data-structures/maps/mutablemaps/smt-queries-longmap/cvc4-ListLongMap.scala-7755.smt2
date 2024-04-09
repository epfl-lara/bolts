; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97314 () Bool)

(assert start!97314)

(declare-fun b_free!23249 () Bool)

(declare-fun b_next!23249 () Bool)

(assert (=> start!97314 (= b_free!23249 (not b_next!23249))))

(declare-fun tp!82046 () Bool)

(declare-fun b_and!37347 () Bool)

(assert (=> start!97314 (= tp!82046 b_and!37347)))

(declare-datatypes ((V!41805 0))(
  ( (V!41806 (val!13811 Int)) )
))
(declare-fun zeroValue!944 () V!41805)

(declare-datatypes ((array!71888 0))(
  ( (array!71889 (arr!34593 (Array (_ BitVec 32) (_ BitVec 64))) (size!35130 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71888)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!46441 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13045 0))(
  ( (ValueCellFull!13045 (v!16445 V!41805)) (EmptyCell!13045) )
))
(declare-datatypes ((array!71890 0))(
  ( (array!71891 (arr!34594 (Array (_ BitVec 32) ValueCell!13045)) (size!35131 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71890)

(declare-fun minValue!944 () V!41805)

(declare-datatypes ((tuple2!17514 0))(
  ( (tuple2!17515 (_1!8767 (_ BitVec 64)) (_2!8767 V!41805)) )
))
(declare-datatypes ((List!24251 0))(
  ( (Nil!24248) (Cons!24247 (h!25456 tuple2!17514) (t!34553 List!24251)) )
))
(declare-datatypes ((ListLongMap!15495 0))(
  ( (ListLongMap!15496 (toList!7763 List!24251)) )
))
(declare-fun call!46444 () ListLongMap!15495)

(declare-fun getCurrentListMapNoExtraKeys!4231 (array!71888 array!71890 (_ BitVec 32) (_ BitVec 32) V!41805 V!41805 (_ BitVec 32) Int) ListLongMap!15495)

(assert (=> bm!46441 (= call!46444 (getCurrentListMapNoExtraKeys!4231 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107545 () Bool)

(declare-fun res!739233 () Bool)

(declare-fun e!631941 () Bool)

(assert (=> b!1107545 (=> (not res!739233) (not e!631941))))

(assert (=> b!1107545 (= res!739233 (and (= (size!35131 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35130 _keys!1208) (size!35131 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1107546 () Bool)

(declare-fun e!631936 () Bool)

(assert (=> b!1107546 (= e!631936 true)))

(declare-fun e!631942 () Bool)

(assert (=> b!1107546 e!631942))

(declare-fun c!109001 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1107546 (= c!109001 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((Unit!36285 0))(
  ( (Unit!36286) )
))
(declare-fun lt!495635 () Unit!36285)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!253 (array!71888 array!71890 (_ BitVec 32) (_ BitVec 32) V!41805 V!41805 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36285)

(assert (=> b!1107546 (= lt!495635 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!253 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107547 () Bool)

(declare-fun res!739239 () Bool)

(assert (=> b!1107547 (=> (not res!739239) (not e!631941))))

(assert (=> b!1107547 (= res!739239 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35130 _keys!1208))))))

(declare-fun b!1107548 () Bool)

(declare-fun res!739241 () Bool)

(assert (=> b!1107548 (=> (not res!739241) (not e!631941))))

(declare-datatypes ((List!24252 0))(
  ( (Nil!24249) (Cons!24248 (h!25457 (_ BitVec 64)) (t!34554 List!24252)) )
))
(declare-fun arrayNoDuplicates!0 (array!71888 (_ BitVec 32) List!24252) Bool)

(assert (=> b!1107548 (= res!739241 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24249))))

(declare-fun b!1107549 () Bool)

(declare-fun e!631940 () Bool)

(declare-fun e!631938 () Bool)

(declare-fun mapRes!43081 () Bool)

(assert (=> b!1107549 (= e!631940 (and e!631938 mapRes!43081))))

(declare-fun condMapEmpty!43081 () Bool)

(declare-fun mapDefault!43081 () ValueCell!13045)

