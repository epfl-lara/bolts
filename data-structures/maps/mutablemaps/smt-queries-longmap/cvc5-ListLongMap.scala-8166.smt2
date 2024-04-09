; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99898 () Bool)

(assert start!99898)

(declare-fun b_free!25441 () Bool)

(declare-fun b_next!25441 () Bool)

(assert (=> start!99898 (= b_free!25441 (not b_next!25441))))

(declare-fun tp!89037 () Bool)

(declare-fun b_and!41763 () Bool)

(assert (=> start!99898 (= tp!89037 b_and!41763)))

(declare-fun mapNonEmpty!46784 () Bool)

(declare-fun mapRes!46784 () Bool)

(declare-fun tp!89038 () Bool)

(declare-fun e!675474 () Bool)

(assert (=> mapNonEmpty!46784 (= mapRes!46784 (and tp!89038 e!675474))))

(declare-datatypes ((V!45089 0))(
  ( (V!45090 (val!15042 Int)) )
))
(declare-datatypes ((ValueCell!14276 0))(
  ( (ValueCellFull!14276 (v!17681 V!45089)) (EmptyCell!14276) )
))
(declare-fun mapRest!46784 () (Array (_ BitVec 32) ValueCell!14276))

(declare-fun mapValue!46784 () ValueCell!14276)

(declare-datatypes ((array!76710 0))(
  ( (array!76711 (arr!37001 (Array (_ BitVec 32) ValueCell!14276)) (size!37538 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76710)

(declare-fun mapKey!46784 () (_ BitVec 32))

(assert (=> mapNonEmpty!46784 (= (arr!37001 _values!996) (store mapRest!46784 mapKey!46784 mapValue!46784))))

(declare-fun mapIsEmpty!46784 () Bool)

(assert (=> mapIsEmpty!46784 mapRes!46784))

(declare-fun b!1187893 () Bool)

(declare-fun res!789873 () Bool)

(declare-fun e!675480 () Bool)

(assert (=> b!1187893 (=> (not res!789873) (not e!675480))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!76712 0))(
  ( (array!76713 (arr!37002 (Array (_ BitVec 32) (_ BitVec 64))) (size!37539 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76712)

(assert (=> b!1187893 (= res!789873 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37539 _keys!1208))))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!675476 () Bool)

(declare-fun b!1187894 () Bool)

(declare-fun arrayContainsKey!0 (array!76712 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1187894 (= e!675476 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1187895 () Bool)

(declare-fun res!789872 () Bool)

(declare-fun e!675475 () Bool)

(assert (=> b!1187895 (=> (not res!789872) (not e!675475))))

(declare-fun lt!540267 () array!76712)

(declare-datatypes ((List!26200 0))(
  ( (Nil!26197) (Cons!26196 (h!27405 (_ BitVec 64)) (t!38640 List!26200)) )
))
(declare-fun arrayNoDuplicates!0 (array!76712 (_ BitVec 32) List!26200) Bool)

(assert (=> b!1187895 (= res!789872 (arrayNoDuplicates!0 lt!540267 #b00000000000000000000000000000000 Nil!26197))))

(declare-fun b!1187896 () Bool)

(assert (=> b!1187896 (= e!675480 e!675475)))

(declare-fun res!789870 () Bool)

(assert (=> b!1187896 (=> (not res!789870) (not e!675475))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76712 (_ BitVec 32)) Bool)

(assert (=> b!1187896 (= res!789870 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540267 mask!1564))))

(assert (=> b!1187896 (= lt!540267 (array!76713 (store (arr!37002 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37539 _keys!1208)))))

(declare-fun b!1187898 () Bool)

(declare-fun e!675472 () Bool)

(declare-fun tp_is_empty!29971 () Bool)

(assert (=> b!1187898 (= e!675472 tp_is_empty!29971)))

(declare-fun b!1187899 () Bool)

(declare-fun res!789877 () Bool)

(assert (=> b!1187899 (=> (not res!789877) (not e!675480))))

(assert (=> b!1187899 (= res!789877 (= (select (arr!37002 _keys!1208) i!673) k!934))))

(declare-fun b!1187900 () Bool)

(declare-fun res!789880 () Bool)

(assert (=> b!1187900 (=> (not res!789880) (not e!675480))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1187900 (= res!789880 (and (= (size!37538 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37539 _keys!1208) (size!37538 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1187901 () Bool)

(declare-fun e!675481 () Bool)

(assert (=> b!1187901 (= e!675475 (not e!675481))))

(declare-fun res!789869 () Bool)

(assert (=> b!1187901 (=> res!789869 e!675481)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1187901 (= res!789869 (bvsgt from!1455 i!673))))

(assert (=> b!1187901 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39332 0))(
  ( (Unit!39333) )
))
(declare-fun lt!540272 () Unit!39332)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76712 (_ BitVec 64) (_ BitVec 32)) Unit!39332)

(assert (=> b!1187901 (= lt!540272 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1187902 () Bool)

(declare-fun e!675470 () Bool)

(declare-fun e!675473 () Bool)

(assert (=> b!1187902 (= e!675470 e!675473)))

(declare-fun res!789883 () Bool)

(assert (=> b!1187902 (=> res!789883 e!675473)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1187902 (= res!789883 (not (validKeyInArray!0 (select (arr!37002 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19440 0))(
  ( (tuple2!19441 (_1!9730 (_ BitVec 64)) (_2!9730 V!45089)) )
))
(declare-datatypes ((List!26201 0))(
  ( (Nil!26198) (Cons!26197 (h!27406 tuple2!19440) (t!38641 List!26201)) )
))
(declare-datatypes ((ListLongMap!17421 0))(
  ( (ListLongMap!17422 (toList!8726 List!26201)) )
))
(declare-fun lt!540284 () ListLongMap!17421)

(declare-fun lt!540274 () ListLongMap!17421)

(assert (=> b!1187902 (= lt!540284 lt!540274)))

(declare-fun lt!540275 () ListLongMap!17421)

(declare-fun -!1711 (ListLongMap!17421 (_ BitVec 64)) ListLongMap!17421)

(assert (=> b!1187902 (= lt!540274 (-!1711 lt!540275 k!934))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!540276 () array!76710)

(declare-fun minValue!944 () V!45089)

(declare-fun zeroValue!944 () V!45089)

(declare-fun getCurrentListMapNoExtraKeys!5141 (array!76712 array!76710 (_ BitVec 32) (_ BitVec 32) V!45089 V!45089 (_ BitVec 32) Int) ListLongMap!17421)

(assert (=> b!1187902 (= lt!540284 (getCurrentListMapNoExtraKeys!5141 lt!540267 lt!540276 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1187902 (= lt!540275 (getCurrentListMapNoExtraKeys!5141 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!540277 () Unit!39332)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!918 (array!76712 array!76710 (_ BitVec 32) (_ BitVec 32) V!45089 V!45089 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39332)

(assert (=> b!1187902 (= lt!540277 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!918 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1187903 () Bool)

(assert (=> b!1187903 (= e!675481 e!675470)))

(declare-fun res!789879 () Bool)

(assert (=> b!1187903 (=> res!789879 e!675470)))

(assert (=> b!1187903 (= res!789879 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!540280 () ListLongMap!17421)

(assert (=> b!1187903 (= lt!540280 (getCurrentListMapNoExtraKeys!5141 lt!540267 lt!540276 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!540282 () V!45089)

(assert (=> b!1187903 (= lt!540276 (array!76711 (store (arr!37001 _values!996) i!673 (ValueCellFull!14276 lt!540282)) (size!37538 _values!996)))))

(declare-fun dynLambda!3098 (Int (_ BitVec 64)) V!45089)

(assert (=> b!1187903 (= lt!540282 (dynLambda!3098 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!540285 () ListLongMap!17421)

(assert (=> b!1187903 (= lt!540285 (getCurrentListMapNoExtraKeys!5141 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1187904 () Bool)

(assert (=> b!1187904 (= e!675473 true)))

(declare-fun lt!540281 () ListLongMap!17421)

(declare-fun lt!540270 () ListLongMap!17421)

(assert (=> b!1187904 (= (-!1711 lt!540281 k!934) lt!540270)))

(declare-fun lt!540283 () V!45089)

(declare-fun lt!540269 () Unit!39332)

(declare-fun addRemoveCommutativeForDiffKeys!218 (ListLongMap!17421 (_ BitVec 64) V!45089 (_ BitVec 64)) Unit!39332)

(assert (=> b!1187904 (= lt!540269 (addRemoveCommutativeForDiffKeys!218 lt!540275 (select (arr!37002 _keys!1208) from!1455) lt!540283 k!934))))

(assert (=> b!1187904 (and (= lt!540285 lt!540281) (= lt!540274 lt!540284))))

(declare-fun lt!540279 () tuple2!19440)

(declare-fun +!3928 (ListLongMap!17421 tuple2!19440) ListLongMap!17421)

(assert (=> b!1187904 (= lt!540281 (+!3928 lt!540275 lt!540279))))

(assert (=> b!1187904 (not (= (select (arr!37002 _keys!1208) from!1455) k!934))))

(declare-fun lt!540273 () Unit!39332)

(declare-fun e!675477 () Unit!39332)

(assert (=> b!1187904 (= lt!540273 e!675477)))

(declare-fun c!117233 () Bool)

(assert (=> b!1187904 (= c!117233 (= (select (arr!37002 _keys!1208) from!1455) k!934))))

(declare-fun e!675479 () Bool)

(assert (=> b!1187904 e!675479))

(declare-fun res!789878 () Bool)

(assert (=> b!1187904 (=> (not res!789878) (not e!675479))))

(assert (=> b!1187904 (= res!789878 (= lt!540280 lt!540270))))

(assert (=> b!1187904 (= lt!540270 (+!3928 lt!540274 lt!540279))))

(assert (=> b!1187904 (= lt!540279 (tuple2!19441 (select (arr!37002 _keys!1208) from!1455) lt!540283))))

(declare-fun get!18998 (ValueCell!14276 V!45089) V!45089)

(assert (=> b!1187904 (= lt!540283 (get!18998 (select (arr!37001 _values!996) from!1455) lt!540282))))

(declare-fun b!1187905 () Bool)

(declare-fun res!789875 () Bool)

(assert (=> b!1187905 (=> (not res!789875) (not e!675480))))

(assert (=> b!1187905 (= res!789875 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26197))))

(declare-fun b!1187906 () Bool)

(declare-fun res!789874 () Bool)

(assert (=> b!1187906 (=> (not res!789874) (not e!675480))))

(assert (=> b!1187906 (= res!789874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1187907 () Bool)

(assert (=> b!1187907 (= e!675474 tp_is_empty!29971)))

(declare-fun res!789871 () Bool)

(assert (=> start!99898 (=> (not res!789871) (not e!675480))))

(assert (=> start!99898 (= res!789871 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37539 _keys!1208))))))

(assert (=> start!99898 e!675480))

(assert (=> start!99898 tp_is_empty!29971))

(declare-fun array_inv!28116 (array!76712) Bool)

(assert (=> start!99898 (array_inv!28116 _keys!1208)))

(assert (=> start!99898 true))

(assert (=> start!99898 tp!89037))

(declare-fun e!675478 () Bool)

(declare-fun array_inv!28117 (array!76710) Bool)

(assert (=> start!99898 (and (array_inv!28117 _values!996) e!675478)))

(declare-fun b!1187897 () Bool)

(declare-fun res!789881 () Bool)

(assert (=> b!1187897 (=> (not res!789881) (not e!675480))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1187897 (= res!789881 (validMask!0 mask!1564))))

(declare-fun b!1187908 () Bool)

(assert (=> b!1187908 (= e!675478 (and e!675472 mapRes!46784))))

(declare-fun condMapEmpty!46784 () Bool)

(declare-fun mapDefault!46784 () ValueCell!14276)

