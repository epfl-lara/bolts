; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99394 () Bool)

(assert start!99394)

(declare-fun b_free!24937 () Bool)

(declare-fun b_next!24937 () Bool)

(assert (=> start!99394 (= b_free!24937 (not b_next!24937))))

(declare-fun tp!87525 () Bool)

(declare-fun b_and!40755 () Bool)

(assert (=> start!99394 (= tp!87525 b_and!40755)))

(declare-fun b!1171859 () Bool)

(declare-fun e!666119 () Bool)

(declare-fun tp_is_empty!29467 () Bool)

(assert (=> b!1171859 (= e!666119 tp_is_empty!29467)))

(declare-fun b!1171861 () Bool)

(declare-fun e!666115 () Bool)

(declare-fun e!666117 () Bool)

(assert (=> b!1171861 (= e!666115 e!666117)))

(declare-fun res!778067 () Bool)

(assert (=> b!1171861 (=> (not res!778067) (not e!666117))))

(declare-datatypes ((array!75710 0))(
  ( (array!75711 (arr!36501 (Array (_ BitVec 32) (_ BitVec 64))) (size!37038 (_ BitVec 32))) )
))
(declare-fun lt!527929 () array!75710)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75710 (_ BitVec 32)) Bool)

(assert (=> b!1171861 (= res!778067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!527929 mask!1564))))

(declare-fun _keys!1208 () array!75710)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1171861 (= lt!527929 (array!75711 (store (arr!36501 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37038 _keys!1208)))))

(declare-fun b!1171862 () Bool)

(declare-fun res!778055 () Bool)

(declare-fun e!666116 () Bool)

(assert (=> b!1171862 (=> res!778055 e!666116)))

(declare-datatypes ((List!25762 0))(
  ( (Nil!25759) (Cons!25758 (h!26967 (_ BitVec 64)) (t!37698 List!25762)) )
))
(declare-fun contains!6870 (List!25762 (_ BitVec 64)) Bool)

(assert (=> b!1171862 (= res!778055 (contains!6870 Nil!25759 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1171863 () Bool)

(declare-fun e!666123 () Bool)

(declare-fun e!666121 () Bool)

(assert (=> b!1171863 (= e!666123 e!666121)))

(declare-fun res!778054 () Bool)

(assert (=> b!1171863 (=> res!778054 e!666121)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1171863 (= res!778054 (not (= (select (arr!36501 _keys!1208) from!1455) k!934)))))

(declare-fun b!1171864 () Bool)

(declare-fun e!666124 () Bool)

(declare-fun e!666112 () Bool)

(assert (=> b!1171864 (= e!666124 e!666112)))

(declare-fun res!778062 () Bool)

(assert (=> b!1171864 (=> res!778062 e!666112)))

(assert (=> b!1171864 (= res!778062 (not (= (select (arr!36501 _keys!1208) from!1455) k!934)))))

(assert (=> b!1171864 e!666123))

(declare-fun res!778057 () Bool)

(assert (=> b!1171864 (=> (not res!778057) (not e!666123))))

(declare-datatypes ((V!44417 0))(
  ( (V!44418 (val!14790 Int)) )
))
(declare-datatypes ((tuple2!18990 0))(
  ( (tuple2!18991 (_1!9505 (_ BitVec 64)) (_2!9505 V!44417)) )
))
(declare-datatypes ((List!25763 0))(
  ( (Nil!25760) (Cons!25759 (h!26968 tuple2!18990) (t!37699 List!25763)) )
))
(declare-datatypes ((ListLongMap!16971 0))(
  ( (ListLongMap!16972 (toList!8501 List!25763)) )
))
(declare-fun lt!527932 () ListLongMap!16971)

(declare-datatypes ((ValueCell!14024 0))(
  ( (ValueCellFull!14024 (v!17429 V!44417)) (EmptyCell!14024) )
))
(declare-datatypes ((array!75712 0))(
  ( (array!75713 (arr!36502 (Array (_ BitVec 32) ValueCell!14024)) (size!37039 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75712)

(declare-fun lt!527926 () V!44417)

(declare-fun lt!527936 () ListLongMap!16971)

(declare-fun +!3739 (ListLongMap!16971 tuple2!18990) ListLongMap!16971)

(declare-fun get!18652 (ValueCell!14024 V!44417) V!44417)

(assert (=> b!1171864 (= res!778057 (= lt!527932 (+!3739 lt!527936 (tuple2!18991 (select (arr!36501 _keys!1208) from!1455) (get!18652 (select (arr!36502 _values!996) from!1455) lt!527926)))))))

(declare-fun mapNonEmpty!46028 () Bool)

(declare-fun mapRes!46028 () Bool)

(declare-fun tp!87526 () Bool)

(declare-fun e!666122 () Bool)

(assert (=> mapNonEmpty!46028 (= mapRes!46028 (and tp!87526 e!666122))))

(declare-fun mapKey!46028 () (_ BitVec 32))

(declare-fun mapRest!46028 () (Array (_ BitVec 32) ValueCell!14024))

(declare-fun mapValue!46028 () ValueCell!14024)

(assert (=> mapNonEmpty!46028 (= (arr!36502 _values!996) (store mapRest!46028 mapKey!46028 mapValue!46028))))

(declare-fun b!1171865 () Bool)

(declare-fun res!778061 () Bool)

(assert (=> b!1171865 (=> (not res!778061) (not e!666115))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1171865 (= res!778061 (and (= (size!37039 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37038 _keys!1208) (size!37039 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1171866 () Bool)

(assert (=> b!1171866 (= e!666112 e!666116)))

(declare-fun res!778069 () Bool)

(assert (=> b!1171866 (=> res!778069 e!666116)))

(assert (=> b!1171866 (= res!778069 (or (bvsge (size!37038 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37038 _keys!1208)) (bvsge from!1455 (size!37038 _keys!1208))))))

(declare-fun arrayNoDuplicates!0 (array!75710 (_ BitVec 32) List!25762) Bool)

(assert (=> b!1171866 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25759)))

(declare-datatypes ((Unit!38548 0))(
  ( (Unit!38549) )
))
(declare-fun lt!527934 () Unit!38548)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75710 (_ BitVec 32) (_ BitVec 32)) Unit!38548)

(assert (=> b!1171866 (= lt!527934 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun arrayContainsKey!0 (array!75710 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1171866 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!527928 () Unit!38548)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75710 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38548)

(assert (=> b!1171866 (= lt!527928 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1171867 () Bool)

(declare-fun e!666114 () Bool)

(assert (=> b!1171867 (= e!666114 e!666124)))

(declare-fun res!778063 () Bool)

(assert (=> b!1171867 (=> res!778063 e!666124)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1171867 (= res!778063 (not (validKeyInArray!0 (select (arr!36501 _keys!1208) from!1455))))))

(declare-fun lt!527927 () ListLongMap!16971)

(assert (=> b!1171867 (= lt!527927 lt!527936)))

(declare-fun lt!527931 () ListLongMap!16971)

(declare-fun -!1517 (ListLongMap!16971 (_ BitVec 64)) ListLongMap!16971)

(assert (=> b!1171867 (= lt!527936 (-!1517 lt!527931 k!934))))

(declare-fun zeroValue!944 () V!44417)

(declare-fun lt!527930 () array!75712)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44417)

(declare-fun getCurrentListMapNoExtraKeys!4933 (array!75710 array!75712 (_ BitVec 32) (_ BitVec 32) V!44417 V!44417 (_ BitVec 32) Int) ListLongMap!16971)

(assert (=> b!1171867 (= lt!527927 (getCurrentListMapNoExtraKeys!4933 lt!527929 lt!527930 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1171867 (= lt!527931 (getCurrentListMapNoExtraKeys!4933 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!527925 () Unit!38548)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!741 (array!75710 array!75712 (_ BitVec 32) (_ BitVec 32) V!44417 V!44417 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38548)

(assert (=> b!1171867 (= lt!527925 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!741 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1171868 () Bool)

(assert (=> b!1171868 (= e!666121 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1171869 () Bool)

(declare-fun res!778068 () Bool)

(assert (=> b!1171869 (=> (not res!778068) (not e!666117))))

(assert (=> b!1171869 (= res!778068 (arrayNoDuplicates!0 lt!527929 #b00000000000000000000000000000000 Nil!25759))))

(declare-fun b!1171870 () Bool)

(assert (=> b!1171870 (= e!666116 true)))

(declare-fun lt!527933 () Bool)

(assert (=> b!1171870 (= lt!527933 (contains!6870 Nil!25759 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1171871 () Bool)

(declare-fun res!778065 () Bool)

(assert (=> b!1171871 (=> (not res!778065) (not e!666115))))

(assert (=> b!1171871 (= res!778065 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25759))))

(declare-fun b!1171872 () Bool)

(declare-fun res!778064 () Bool)

(assert (=> b!1171872 (=> (not res!778064) (not e!666115))))

(assert (=> b!1171872 (= res!778064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1171873 () Bool)

(declare-fun res!778053 () Bool)

(assert (=> b!1171873 (=> (not res!778053) (not e!666115))))

(assert (=> b!1171873 (= res!778053 (= (select (arr!36501 _keys!1208) i!673) k!934))))

(declare-fun b!1171860 () Bool)

(declare-fun e!666120 () Bool)

(assert (=> b!1171860 (= e!666120 e!666114)))

(declare-fun res!778059 () Bool)

(assert (=> b!1171860 (=> res!778059 e!666114)))

(assert (=> b!1171860 (= res!778059 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1171860 (= lt!527932 (getCurrentListMapNoExtraKeys!4933 lt!527929 lt!527930 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1171860 (= lt!527930 (array!75713 (store (arr!36502 _values!996) i!673 (ValueCellFull!14024 lt!527926)) (size!37039 _values!996)))))

(declare-fun dynLambda!2921 (Int (_ BitVec 64)) V!44417)

(assert (=> b!1171860 (= lt!527926 (dynLambda!2921 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!527935 () ListLongMap!16971)

(assert (=> b!1171860 (= lt!527935 (getCurrentListMapNoExtraKeys!4933 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!778056 () Bool)

(assert (=> start!99394 (=> (not res!778056) (not e!666115))))

(assert (=> start!99394 (= res!778056 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37038 _keys!1208))))))

(assert (=> start!99394 e!666115))

(assert (=> start!99394 tp_is_empty!29467))

(declare-fun array_inv!27776 (array!75710) Bool)

(assert (=> start!99394 (array_inv!27776 _keys!1208)))

(assert (=> start!99394 true))

(assert (=> start!99394 tp!87525))

(declare-fun e!666113 () Bool)

(declare-fun array_inv!27777 (array!75712) Bool)

(assert (=> start!99394 (and (array_inv!27777 _values!996) e!666113)))

(declare-fun b!1171874 () Bool)

(declare-fun res!778066 () Bool)

(assert (=> b!1171874 (=> (not res!778066) (not e!666115))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1171874 (= res!778066 (validMask!0 mask!1564))))

(declare-fun b!1171875 () Bool)

(assert (=> b!1171875 (= e!666113 (and e!666119 mapRes!46028))))

(declare-fun condMapEmpty!46028 () Bool)

(declare-fun mapDefault!46028 () ValueCell!14024)

