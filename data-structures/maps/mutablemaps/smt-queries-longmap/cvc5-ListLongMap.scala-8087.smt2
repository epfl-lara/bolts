; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99424 () Bool)

(assert start!99424)

(declare-fun b_free!24967 () Bool)

(declare-fun b_next!24967 () Bool)

(assert (=> start!99424 (= b_free!24967 (not b_next!24967))))

(declare-fun tp!87616 () Bool)

(declare-fun b_and!40815 () Bool)

(assert (=> start!99424 (= tp!87616 b_and!40815)))

(declare-fun mapNonEmpty!46073 () Bool)

(declare-fun mapRes!46073 () Bool)

(declare-fun tp!87615 () Bool)

(declare-fun e!666692 () Bool)

(assert (=> mapNonEmpty!46073 (= mapRes!46073 (and tp!87615 e!666692))))

(declare-fun mapKey!46073 () (_ BitVec 32))

(declare-datatypes ((V!44457 0))(
  ( (V!44458 (val!14805 Int)) )
))
(declare-datatypes ((ValueCell!14039 0))(
  ( (ValueCellFull!14039 (v!17444 V!44457)) (EmptyCell!14039) )
))
(declare-fun mapRest!46073 () (Array (_ BitVec 32) ValueCell!14039))

(declare-fun mapValue!46073 () ValueCell!14039)

(declare-datatypes ((array!75770 0))(
  ( (array!75771 (arr!36531 (Array (_ BitVec 32) ValueCell!14039)) (size!37068 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75770)

(assert (=> mapNonEmpty!46073 (= (arr!36531 _values!996) (store mapRest!46073 mapKey!46073 mapValue!46073))))

(declare-fun b!1172857 () Bool)

(declare-fun res!778864 () Bool)

(declare-fun e!666686 () Bool)

(assert (=> b!1172857 (=> (not res!778864) (not e!666686))))

(declare-datatypes ((array!75772 0))(
  ( (array!75773 (arr!36532 (Array (_ BitVec 32) (_ BitVec 64))) (size!37069 (_ BitVec 32))) )
))
(declare-fun lt!528526 () array!75772)

(declare-datatypes ((List!25789 0))(
  ( (Nil!25786) (Cons!25785 (h!26994 (_ BitVec 64)) (t!37755 List!25789)) )
))
(declare-fun arrayNoDuplicates!0 (array!75772 (_ BitVec 32) List!25789) Bool)

(assert (=> b!1172857 (= res!778864 (arrayNoDuplicates!0 lt!528526 #b00000000000000000000000000000000 Nil!25786))))

(declare-fun b!1172858 () Bool)

(declare-fun e!666690 () Bool)

(assert (=> b!1172858 (= e!666690 e!666686)))

(declare-fun res!778871 () Bool)

(assert (=> b!1172858 (=> (not res!778871) (not e!666686))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75772 (_ BitVec 32)) Bool)

(assert (=> b!1172858 (= res!778871 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!528526 mask!1564))))

(declare-fun _keys!1208 () array!75772)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1172858 (= lt!528526 (array!75773 (store (arr!36532 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37069 _keys!1208)))))

(declare-fun b!1172859 () Bool)

(declare-fun e!666694 () Bool)

(declare-fun tp_is_empty!29497 () Bool)

(assert (=> b!1172859 (= e!666694 tp_is_empty!29497)))

(declare-fun b!1172860 () Bool)

(declare-fun e!666689 () Bool)

(assert (=> b!1172860 (= e!666689 true)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1172860 (not (= (select (arr!36532 _keys!1208) from!1455) k!934))))

(declare-datatypes ((Unit!38578 0))(
  ( (Unit!38579) )
))
(declare-fun lt!528533 () Unit!38578)

(declare-fun e!666688 () Unit!38578)

(assert (=> b!1172860 (= lt!528533 e!666688)))

(declare-fun c!116522 () Bool)

(assert (=> b!1172860 (= c!116522 (= (select (arr!36532 _keys!1208) from!1455) k!934))))

(declare-fun e!666697 () Bool)

(assert (=> b!1172860 e!666697))

(declare-fun res!778875 () Bool)

(assert (=> b!1172860 (=> (not res!778875) (not e!666697))))

(declare-datatypes ((tuple2!19016 0))(
  ( (tuple2!19017 (_1!9518 (_ BitVec 64)) (_2!9518 V!44457)) )
))
(declare-datatypes ((List!25790 0))(
  ( (Nil!25787) (Cons!25786 (h!26995 tuple2!19016) (t!37756 List!25790)) )
))
(declare-datatypes ((ListLongMap!16997 0))(
  ( (ListLongMap!16998 (toList!8514 List!25790)) )
))
(declare-fun lt!528527 () ListLongMap!16997)

(declare-fun lt!528521 () ListLongMap!16997)

(declare-fun lt!528525 () V!44457)

(declare-fun +!3749 (ListLongMap!16997 tuple2!19016) ListLongMap!16997)

(declare-fun get!18672 (ValueCell!14039 V!44457) V!44457)

(assert (=> b!1172860 (= res!778875 (= lt!528527 (+!3749 lt!528521 (tuple2!19017 (select (arr!36532 _keys!1208) from!1455) (get!18672 (select (arr!36531 _values!996) from!1455) lt!528525)))))))

(declare-fun b!1172861 () Bool)

(declare-fun e!666695 () Bool)

(declare-fun e!666691 () Bool)

(assert (=> b!1172861 (= e!666695 e!666691)))

(declare-fun res!778867 () Bool)

(assert (=> b!1172861 (=> res!778867 e!666691)))

(assert (=> b!1172861 (= res!778867 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44457)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun minValue!944 () V!44457)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!528524 () array!75770)

(declare-fun getCurrentListMapNoExtraKeys!4946 (array!75772 array!75770 (_ BitVec 32) (_ BitVec 32) V!44457 V!44457 (_ BitVec 32) Int) ListLongMap!16997)

(assert (=> b!1172861 (= lt!528527 (getCurrentListMapNoExtraKeys!4946 lt!528526 lt!528524 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1172861 (= lt!528524 (array!75771 (store (arr!36531 _values!996) i!673 (ValueCellFull!14039 lt!528525)) (size!37068 _values!996)))))

(declare-fun dynLambda!2933 (Int (_ BitVec 64)) V!44457)

(assert (=> b!1172861 (= lt!528525 (dynLambda!2933 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!528528 () ListLongMap!16997)

(assert (=> b!1172861 (= lt!528528 (getCurrentListMapNoExtraKeys!4946 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1172862 () Bool)

(declare-fun res!778865 () Bool)

(assert (=> b!1172862 (=> (not res!778865) (not e!666690))))

(assert (=> b!1172862 (= res!778865 (and (= (size!37068 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37069 _keys!1208) (size!37068 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1172863 () Bool)

(declare-fun Unit!38580 () Unit!38578)

(assert (=> b!1172863 (= e!666688 Unit!38580)))

(declare-fun lt!528523 () Unit!38578)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75772 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38578)

(assert (=> b!1172863 (= lt!528523 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!75772 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1172863 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!528522 () Unit!38578)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75772 (_ BitVec 32) (_ BitVec 32)) Unit!38578)

(assert (=> b!1172863 (= lt!528522 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1172863 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25786)))

(declare-fun lt!528531 () Unit!38578)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75772 (_ BitVec 64) (_ BitVec 32) List!25789) Unit!38578)

(assert (=> b!1172863 (= lt!528531 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25786))))

(assert (=> b!1172863 false))

(declare-fun b!1172864 () Bool)

(declare-fun res!778872 () Bool)

(assert (=> b!1172864 (=> (not res!778872) (not e!666690))))

(assert (=> b!1172864 (= res!778872 (= (select (arr!36532 _keys!1208) i!673) k!934))))

(declare-fun b!1172865 () Bool)

(declare-fun res!778873 () Bool)

(assert (=> b!1172865 (=> (not res!778873) (not e!666690))))

(assert (=> b!1172865 (= res!778873 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37069 _keys!1208))))))

(declare-fun b!1172866 () Bool)

(declare-fun res!778876 () Bool)

(assert (=> b!1172866 (=> (not res!778876) (not e!666690))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1172866 (= res!778876 (validMask!0 mask!1564))))

(declare-fun b!1172867 () Bool)

(declare-fun e!666696 () Bool)

(assert (=> b!1172867 (= e!666696 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1172868 () Bool)

(declare-fun res!778868 () Bool)

(assert (=> b!1172868 (=> (not res!778868) (not e!666690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1172868 (= res!778868 (validKeyInArray!0 k!934))))

(declare-fun b!1172869 () Bool)

(assert (=> b!1172869 (= e!666692 tp_is_empty!29497)))

(declare-fun b!1172870 () Bool)

(declare-fun e!666687 () Bool)

(assert (=> b!1172870 (= e!666687 (and e!666694 mapRes!46073))))

(declare-fun condMapEmpty!46073 () Bool)

(declare-fun mapDefault!46073 () ValueCell!14039)

