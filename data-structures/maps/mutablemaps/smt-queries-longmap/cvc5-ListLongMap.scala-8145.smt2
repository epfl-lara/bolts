; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99772 () Bool)

(assert start!99772)

(declare-fun b_free!25315 () Bool)

(declare-fun b_next!25315 () Bool)

(assert (=> start!99772 (= b_free!25315 (not b_next!25315))))

(declare-fun tp!88659 () Bool)

(declare-fun b_and!41511 () Bool)

(assert (=> start!99772 (= tp!88659 b_and!41511)))

(declare-fun b!1183987 () Bool)

(declare-fun e!673204 () Bool)

(declare-fun e!673203 () Bool)

(assert (=> b!1183987 (= e!673204 e!673203)))

(declare-fun res!787042 () Bool)

(assert (=> b!1183987 (=> res!787042 e!673203)))

(declare-datatypes ((array!76458 0))(
  ( (array!76459 (arr!36875 (Array (_ BitVec 32) (_ BitVec 64))) (size!37412 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76458)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1183987 (= res!787042 (not (validKeyInArray!0 (select (arr!36875 _keys!1208) from!1455))))))

(declare-datatypes ((V!44921 0))(
  ( (V!44922 (val!14979 Int)) )
))
(declare-datatypes ((tuple2!19326 0))(
  ( (tuple2!19327 (_1!9673 (_ BitVec 64)) (_2!9673 V!44921)) )
))
(declare-datatypes ((List!26089 0))(
  ( (Nil!26086) (Cons!26085 (h!27294 tuple2!19326) (t!38403 List!26089)) )
))
(declare-datatypes ((ListLongMap!17307 0))(
  ( (ListLongMap!17308 (toList!8669 List!26089)) )
))
(declare-fun lt!536688 () ListLongMap!17307)

(declare-fun lt!536678 () ListLongMap!17307)

(assert (=> b!1183987 (= lt!536688 lt!536678)))

(declare-fun lt!536692 () ListLongMap!17307)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1657 (ListLongMap!17307 (_ BitVec 64)) ListLongMap!17307)

(assert (=> b!1183987 (= lt!536678 (-!1657 lt!536692 k!934))))

(declare-fun zeroValue!944 () V!44921)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!536694 () array!76458)

(declare-datatypes ((ValueCell!14213 0))(
  ( (ValueCellFull!14213 (v!17618 V!44921)) (EmptyCell!14213) )
))
(declare-datatypes ((array!76460 0))(
  ( (array!76461 (arr!36876 (Array (_ BitVec 32) ValueCell!14213)) (size!37413 (_ BitVec 32))) )
))
(declare-fun lt!536677 () array!76460)

(declare-fun minValue!944 () V!44921)

(declare-fun getCurrentListMapNoExtraKeys!5089 (array!76458 array!76460 (_ BitVec 32) (_ BitVec 32) V!44921 V!44921 (_ BitVec 32) Int) ListLongMap!17307)

(assert (=> b!1183987 (= lt!536688 (getCurrentListMapNoExtraKeys!5089 lt!536694 lt!536677 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76460)

(assert (=> b!1183987 (= lt!536692 (getCurrentListMapNoExtraKeys!5089 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39124 0))(
  ( (Unit!39125) )
))
(declare-fun lt!536689 () Unit!39124)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!873 (array!76458 array!76460 (_ BitVec 32) (_ BitVec 32) V!44921 V!44921 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39124)

(assert (=> b!1183987 (= lt!536689 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!873 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1183988 () Bool)

(declare-fun res!787045 () Bool)

(declare-fun e!673212 () Bool)

(assert (=> b!1183988 (=> (not res!787045) (not e!673212))))

(assert (=> b!1183988 (= res!787045 (= (select (arr!36875 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!46595 () Bool)

(declare-fun mapRes!46595 () Bool)

(declare-fun tp!88660 () Bool)

(declare-fun e!673206 () Bool)

(assert (=> mapNonEmpty!46595 (= mapRes!46595 (and tp!88660 e!673206))))

(declare-fun mapKey!46595 () (_ BitVec 32))

(declare-fun mapValue!46595 () ValueCell!14213)

(declare-fun mapRest!46595 () (Array (_ BitVec 32) ValueCell!14213))

(assert (=> mapNonEmpty!46595 (= (arr!36876 _values!996) (store mapRest!46595 mapKey!46595 mapValue!46595))))

(declare-fun b!1183989 () Bool)

(declare-fun e!673202 () Unit!39124)

(declare-fun Unit!39126 () Unit!39124)

(assert (=> b!1183989 (= e!673202 Unit!39126)))

(declare-fun b!1183990 () Bool)

(declare-fun res!787047 () Bool)

(assert (=> b!1183990 (=> (not res!787047) (not e!673212))))

(assert (=> b!1183990 (= res!787047 (and (= (size!37413 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37412 _keys!1208) (size!37413 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1183991 () Bool)

(declare-fun e!673210 () Bool)

(assert (=> b!1183991 (= e!673212 e!673210)))

(declare-fun res!787046 () Bool)

(assert (=> b!1183991 (=> (not res!787046) (not e!673210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76458 (_ BitVec 32)) Bool)

(assert (=> b!1183991 (= res!787046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!536694 mask!1564))))

(assert (=> b!1183991 (= lt!536694 (array!76459 (store (arr!36875 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37412 _keys!1208)))))

(declare-fun b!1183992 () Bool)

(declare-fun e!673207 () Bool)

(declare-fun arrayContainsKey!0 (array!76458 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1183992 (= e!673207 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1183993 () Bool)

(declare-fun res!787044 () Bool)

(assert (=> b!1183993 (=> (not res!787044) (not e!673212))))

(declare-datatypes ((List!26090 0))(
  ( (Nil!26087) (Cons!26086 (h!27295 (_ BitVec 64)) (t!38404 List!26090)) )
))
(declare-fun arrayNoDuplicates!0 (array!76458 (_ BitVec 32) List!26090) Bool)

(assert (=> b!1183993 (= res!787044 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26087))))

(declare-fun b!1183994 () Bool)

(declare-fun res!787041 () Bool)

(assert (=> b!1183994 (=> (not res!787041) (not e!673212))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1183994 (= res!787041 (validMask!0 mask!1564))))

(declare-fun b!1183995 () Bool)

(declare-fun res!787034 () Bool)

(assert (=> b!1183995 (=> (not res!787034) (not e!673212))))

(assert (=> b!1183995 (= res!787034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1183996 () Bool)

(declare-fun e!673205 () Bool)

(assert (=> b!1183996 (= e!673205 e!673204)))

(declare-fun res!787037 () Bool)

(assert (=> b!1183996 (=> res!787037 e!673204)))

(assert (=> b!1183996 (= res!787037 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!536681 () ListLongMap!17307)

(assert (=> b!1183996 (= lt!536681 (getCurrentListMapNoExtraKeys!5089 lt!536694 lt!536677 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!536687 () V!44921)

(assert (=> b!1183996 (= lt!536677 (array!76461 (store (arr!36876 _values!996) i!673 (ValueCellFull!14213 lt!536687)) (size!37413 _values!996)))))

(declare-fun dynLambda!3054 (Int (_ BitVec 64)) V!44921)

(assert (=> b!1183996 (= lt!536687 (dynLambda!3054 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!536684 () ListLongMap!17307)

(assert (=> b!1183996 (= lt!536684 (getCurrentListMapNoExtraKeys!5089 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1183998 () Bool)

(declare-fun tp_is_empty!29845 () Bool)

(assert (=> b!1183998 (= e!673206 tp_is_empty!29845)))

(declare-fun b!1183999 () Bool)

(declare-fun Unit!39127 () Unit!39124)

(assert (=> b!1183999 (= e!673202 Unit!39127)))

(declare-fun lt!536685 () Unit!39124)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76458 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39124)

(assert (=> b!1183999 (= lt!536685 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1183999 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!536679 () Unit!39124)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76458 (_ BitVec 32) (_ BitVec 32)) Unit!39124)

(assert (=> b!1183999 (= lt!536679 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1183999 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26087)))

(declare-fun lt!536686 () Unit!39124)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76458 (_ BitVec 64) (_ BitVec 32) List!26090) Unit!39124)

(assert (=> b!1183999 (= lt!536686 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26087))))

(assert (=> b!1183999 false))

(declare-fun b!1184000 () Bool)

(declare-fun e!673213 () Bool)

(declare-fun e!673208 () Bool)

(assert (=> b!1184000 (= e!673213 (and e!673208 mapRes!46595))))

(declare-fun condMapEmpty!46595 () Bool)

(declare-fun mapDefault!46595 () ValueCell!14213)

