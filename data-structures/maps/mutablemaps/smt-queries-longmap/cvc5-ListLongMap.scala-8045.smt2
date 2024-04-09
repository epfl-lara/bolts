; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99146 () Bool)

(assert start!99146)

(declare-fun b_free!24715 () Bool)

(declare-fun b_next!24715 () Bool)

(assert (=> start!99146 (= b_free!24715 (not b_next!24715))))

(declare-fun tp!86856 () Bool)

(declare-fun b_and!40293 () Bool)

(assert (=> start!99146 (= tp!86856 b_and!40293)))

(declare-fun b!1165792 () Bool)

(declare-fun e!662748 () Bool)

(declare-fun tp_is_empty!29245 () Bool)

(assert (=> b!1165792 (= e!662748 tp_is_empty!29245)))

(declare-fun mapNonEmpty!45692 () Bool)

(declare-fun mapRes!45692 () Bool)

(declare-fun tp!86857 () Bool)

(declare-fun e!662744 () Bool)

(assert (=> mapNonEmpty!45692 (= mapRes!45692 (and tp!86857 e!662744))))

(declare-fun mapKey!45692 () (_ BitVec 32))

(declare-datatypes ((V!44121 0))(
  ( (V!44122 (val!14679 Int)) )
))
(declare-datatypes ((ValueCell!13913 0))(
  ( (ValueCellFull!13913 (v!17317 V!44121)) (EmptyCell!13913) )
))
(declare-fun mapValue!45692 () ValueCell!13913)

(declare-fun mapRest!45692 () (Array (_ BitVec 32) ValueCell!13913))

(declare-datatypes ((array!75272 0))(
  ( (array!75273 (arr!36283 (Array (_ BitVec 32) ValueCell!13913)) (size!36820 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75272)

(assert (=> mapNonEmpty!45692 (= (arr!36283 _values!996) (store mapRest!45692 mapKey!45692 mapValue!45692))))

(declare-fun b!1165793 () Bool)

(declare-fun res!773290 () Bool)

(declare-fun e!662746 () Bool)

(assert (=> b!1165793 (=> (not res!773290) (not e!662746))))

(declare-datatypes ((array!75274 0))(
  ( (array!75275 (arr!36284 (Array (_ BitVec 32) (_ BitVec 64))) (size!36821 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75274)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1165793 (= res!773290 (and (= (size!36820 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36821 _keys!1208) (size!36820 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1165794 () Bool)

(declare-fun e!662745 () Bool)

(assert (=> b!1165794 (= e!662745 true)))

(declare-fun zeroValue!944 () V!44121)

(declare-fun lt!524975 () array!75274)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!524978 () array!75272)

(declare-fun minValue!944 () V!44121)

(declare-datatypes ((tuple2!18798 0))(
  ( (tuple2!18799 (_1!9409 (_ BitVec 64)) (_2!9409 V!44121)) )
))
(declare-datatypes ((List!25575 0))(
  ( (Nil!25572) (Cons!25571 (h!26780 tuple2!18798) (t!37289 List!25575)) )
))
(declare-datatypes ((ListLongMap!16779 0))(
  ( (ListLongMap!16780 (toList!8405 List!25575)) )
))
(declare-fun getCurrentListMapNoExtraKeys!4838 (array!75274 array!75272 (_ BitVec 32) (_ BitVec 32) V!44121 V!44121 (_ BitVec 32) Int) ListLongMap!16779)

(declare-fun -!1442 (ListLongMap!16779 (_ BitVec 64)) ListLongMap!16779)

(assert (=> b!1165794 (= (getCurrentListMapNoExtraKeys!4838 lt!524975 lt!524978 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1442 (getCurrentListMapNoExtraKeys!4838 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38362 0))(
  ( (Unit!38363) )
))
(declare-fun lt!524977 () Unit!38362)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!666 (array!75274 array!75272 (_ BitVec 32) (_ BitVec 32) V!44121 V!44121 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38362)

(assert (=> b!1165794 (= lt!524977 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!666 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1165795 () Bool)

(declare-fun e!662743 () Bool)

(assert (=> b!1165795 (= e!662743 e!662745)))

(declare-fun res!773292 () Bool)

(assert (=> b!1165795 (=> res!773292 e!662745)))

(assert (=> b!1165795 (= res!773292 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!524976 () ListLongMap!16779)

(assert (=> b!1165795 (= lt!524976 (getCurrentListMapNoExtraKeys!4838 lt!524975 lt!524978 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2835 (Int (_ BitVec 64)) V!44121)

(assert (=> b!1165795 (= lt!524978 (array!75273 (store (arr!36283 _values!996) i!673 (ValueCellFull!13913 (dynLambda!2835 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36820 _values!996)))))

(declare-fun lt!524979 () ListLongMap!16779)

(assert (=> b!1165795 (= lt!524979 (getCurrentListMapNoExtraKeys!4838 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1165796 () Bool)

(declare-fun e!662741 () Bool)

(assert (=> b!1165796 (= e!662741 (and e!662748 mapRes!45692))))

(declare-fun condMapEmpty!45692 () Bool)

(declare-fun mapDefault!45692 () ValueCell!13913)

