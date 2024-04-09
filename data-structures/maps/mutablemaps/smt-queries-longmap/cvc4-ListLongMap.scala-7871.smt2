; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98010 () Bool)

(assert start!98010)

(declare-fun b_free!23675 () Bool)

(declare-fun b_next!23675 () Bool)

(assert (=> start!98010 (= b_free!23675 (not b_next!23675))))

(declare-fun tp!83729 () Bool)

(declare-fun b_and!38155 () Bool)

(assert (=> start!98010 (= tp!83729 b_and!38155)))

(declare-fun b!1123275 () Bool)

(declare-fun res!750534 () Bool)

(declare-fun e!639528 () Bool)

(assert (=> b!1123275 (=> (not res!750534) (not e!639528))))

(declare-datatypes ((array!73236 0))(
  ( (array!73237 (arr!35267 (Array (_ BitVec 32) (_ BitVec 64))) (size!35804 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73236)

(declare-datatypes ((List!24689 0))(
  ( (Nil!24686) (Cons!24685 (h!25894 (_ BitVec 64)) (t!35363 List!24689)) )
))
(declare-fun arrayNoDuplicates!0 (array!73236 (_ BitVec 32) List!24689) Bool)

(assert (=> b!1123275 (= res!750534 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24686))))

(declare-fun b!1123276 () Bool)

(declare-fun res!750540 () Bool)

(assert (=> b!1123276 (=> (not res!750540) (not e!639528))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1123276 (= res!750540 (= (select (arr!35267 _keys!1208) i!673) k!934))))

(declare-fun b!1123277 () Bool)

(declare-fun e!639532 () Bool)

(declare-fun tp_is_empty!28205 () Bool)

(assert (=> b!1123277 (= e!639532 tp_is_empty!28205)))

(declare-fun b!1123278 () Bool)

(declare-fun res!750542 () Bool)

(assert (=> b!1123278 (=> (not res!750542) (not e!639528))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42733 0))(
  ( (V!42734 (val!14159 Int)) )
))
(declare-datatypes ((ValueCell!13393 0))(
  ( (ValueCellFull!13393 (v!16793 V!42733)) (EmptyCell!13393) )
))
(declare-datatypes ((array!73238 0))(
  ( (array!73239 (arr!35268 (Array (_ BitVec 32) ValueCell!13393)) (size!35805 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73238)

(assert (=> b!1123278 (= res!750542 (and (= (size!35805 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35804 _keys!1208) (size!35805 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1123279 () Bool)

(declare-fun res!750541 () Bool)

(declare-fun e!639533 () Bool)

(assert (=> b!1123279 (=> (not res!750541) (not e!639533))))

(declare-fun lt!499016 () array!73236)

(assert (=> b!1123279 (= res!750541 (arrayNoDuplicates!0 lt!499016 #b00000000000000000000000000000000 Nil!24686))))

(declare-fun zeroValue!944 () V!42733)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!17856 0))(
  ( (tuple2!17857 (_1!8938 (_ BitVec 64)) (_2!8938 V!42733)) )
))
(declare-datatypes ((List!24690 0))(
  ( (Nil!24687) (Cons!24686 (h!25895 tuple2!17856) (t!35364 List!24690)) )
))
(declare-datatypes ((ListLongMap!15837 0))(
  ( (ListLongMap!15838 (toList!7934 List!24690)) )
))
(declare-fun call!47309 () ListLongMap!15837)

(declare-fun minValue!944 () V!42733)

(declare-fun lt!499019 () array!73238)

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!47305 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4394 (array!73236 array!73238 (_ BitVec 32) (_ BitVec 32) V!42733 V!42733 (_ BitVec 32) Int) ListLongMap!15837)

(assert (=> bm!47305 (= call!47309 (getCurrentListMapNoExtraKeys!4394 lt!499016 lt!499019 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123280 () Bool)

(declare-fun res!750537 () Bool)

(assert (=> b!1123280 (=> (not res!750537) (not e!639528))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73236 (_ BitVec 32)) Bool)

(assert (=> b!1123280 (= res!750537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1123281 () Bool)

(declare-fun e!639529 () Bool)

(assert (=> b!1123281 (= e!639533 (not e!639529))))

(declare-fun res!750544 () Bool)

(assert (=> b!1123281 (=> res!750544 e!639529)))

(assert (=> b!1123281 (= res!750544 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73236 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1123281 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36773 0))(
  ( (Unit!36774) )
))
(declare-fun lt!499017 () Unit!36773)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73236 (_ BitVec 64) (_ BitVec 32)) Unit!36773)

(assert (=> b!1123281 (= lt!499017 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1123282 () Bool)

(declare-fun res!750538 () Bool)

(assert (=> b!1123282 (=> (not res!750538) (not e!639528))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1123282 (= res!750538 (validMask!0 mask!1564))))

(declare-fun b!1123283 () Bool)

(declare-fun e!639530 () Bool)

(assert (=> b!1123283 (= e!639529 e!639530)))

(declare-fun res!750535 () Bool)

(assert (=> b!1123283 (=> res!750535 e!639530)))

(assert (=> b!1123283 (= res!750535 (not (= from!1455 i!673)))))

(declare-fun lt!499020 () ListLongMap!15837)

(assert (=> b!1123283 (= lt!499020 (getCurrentListMapNoExtraKeys!4394 lt!499016 lt!499019 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2486 (Int (_ BitVec 64)) V!42733)

(assert (=> b!1123283 (= lt!499019 (array!73239 (store (arr!35268 _values!996) i!673 (ValueCellFull!13393 (dynLambda!2486 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35805 _values!996)))))

(declare-fun lt!499014 () ListLongMap!15837)

(assert (=> b!1123283 (= lt!499014 (getCurrentListMapNoExtraKeys!4394 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1123284 () Bool)

(declare-fun res!750539 () Bool)

(assert (=> b!1123284 (=> (not res!750539) (not e!639528))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1123284 (= res!750539 (validKeyInArray!0 k!934))))

(declare-fun call!47308 () ListLongMap!15837)

(declare-fun bm!47306 () Bool)

(assert (=> bm!47306 (= call!47308 (getCurrentListMapNoExtraKeys!4394 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123285 () Bool)

(declare-fun e!639527 () Bool)

(assert (=> b!1123285 (= e!639527 true)))

(declare-fun lt!499015 () Bool)

(declare-fun contains!6451 (ListLongMap!15837 (_ BitVec 64)) Bool)

(assert (=> b!1123285 (= lt!499015 (contains!6451 (getCurrentListMapNoExtraKeys!4394 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1123286 () Bool)

(assert (=> b!1123286 (= e!639528 e!639533)))

(declare-fun res!750546 () Bool)

(assert (=> b!1123286 (=> (not res!750546) (not e!639533))))

(assert (=> b!1123286 (= res!750546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499016 mask!1564))))

(assert (=> b!1123286 (= lt!499016 (array!73237 (store (arr!35267 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35804 _keys!1208)))))

(declare-fun b!1123287 () Bool)

(declare-fun e!639531 () Bool)

(declare-fun e!639524 () Bool)

(declare-fun mapRes!44125 () Bool)

(assert (=> b!1123287 (= e!639531 (and e!639524 mapRes!44125))))

(declare-fun condMapEmpty!44125 () Bool)

(declare-fun mapDefault!44125 () ValueCell!13393)

