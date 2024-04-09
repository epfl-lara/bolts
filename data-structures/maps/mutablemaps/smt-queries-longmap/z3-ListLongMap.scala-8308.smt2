; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101234 () Bool)

(assert start!101234)

(declare-fun b_free!26121 () Bool)

(declare-fun b_next!26121 () Bool)

(assert (=> start!101234 (= b_free!26121 (not b_next!26121))))

(declare-fun tp!91386 () Bool)

(declare-fun b_and!43369 () Bool)

(assert (=> start!101234 (= tp!91386 b_and!43369)))

(declare-fun res!806673 () Bool)

(declare-fun e!689903 () Bool)

(assert (=> start!101234 (=> (not res!806673) (not e!689903))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78404 0))(
  ( (array!78405 (arr!37833 (Array (_ BitVec 32) (_ BitVec 64))) (size!38370 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78404)

(assert (=> start!101234 (= res!806673 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38370 _keys!1208))))))

(assert (=> start!101234 e!689903))

(declare-fun tp_is_empty!30825 () Bool)

(assert (=> start!101234 tp_is_empty!30825))

(declare-fun array_inv!28712 (array!78404) Bool)

(assert (=> start!101234 (array_inv!28712 _keys!1208)))

(assert (=> start!101234 true))

(assert (=> start!101234 tp!91386))

(declare-datatypes ((V!46227 0))(
  ( (V!46228 (val!15469 Int)) )
))
(declare-datatypes ((ValueCell!14703 0))(
  ( (ValueCellFull!14703 (v!18123 V!46227)) (EmptyCell!14703) )
))
(declare-datatypes ((array!78406 0))(
  ( (array!78407 (arr!37834 (Array (_ BitVec 32) ValueCell!14703)) (size!38371 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78406)

(declare-fun e!689900 () Bool)

(declare-fun array_inv!28713 (array!78406) Bool)

(assert (=> start!101234 (and (array_inv!28713 _values!996) e!689900)))

(declare-fun b!1214860 () Bool)

(declare-fun e!689898 () Bool)

(assert (=> b!1214860 (= e!689898 true)))

(declare-fun zeroValue!944 () V!46227)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46227)

(declare-datatypes ((tuple2!20022 0))(
  ( (tuple2!20023 (_1!10021 (_ BitVec 64)) (_2!10021 V!46227)) )
))
(declare-datatypes ((List!26841 0))(
  ( (Nil!26838) (Cons!26837 (h!28046 tuple2!20022) (t!39949 List!26841)) )
))
(declare-datatypes ((ListLongMap!18003 0))(
  ( (ListLongMap!18004 (toList!9017 List!26841)) )
))
(declare-fun lt!552418 () ListLongMap!18003)

(declare-fun lt!552416 () array!78404)

(declare-fun getCurrentListMapNoExtraKeys!5422 (array!78404 array!78406 (_ BitVec 32) (_ BitVec 32) V!46227 V!46227 (_ BitVec 32) Int) ListLongMap!18003)

(declare-fun dynLambda!3331 (Int (_ BitVec 64)) V!46227)

(assert (=> b!1214860 (= lt!552418 (getCurrentListMapNoExtraKeys!5422 lt!552416 (array!78407 (store (arr!37834 _values!996) i!673 (ValueCellFull!14703 (dynLambda!3331 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38371 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552417 () ListLongMap!18003)

(assert (=> b!1214860 (= lt!552417 (getCurrentListMapNoExtraKeys!5422 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1214861 () Bool)

(declare-fun e!689902 () Bool)

(assert (=> b!1214861 (= e!689902 tp_is_empty!30825)))

(declare-fun b!1214862 () Bool)

(declare-fun res!806668 () Bool)

(assert (=> b!1214862 (=> (not res!806668) (not e!689903))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78404 (_ BitVec 32)) Bool)

(assert (=> b!1214862 (= res!806668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1214863 () Bool)

(declare-fun res!806676 () Bool)

(assert (=> b!1214863 (=> (not res!806676) (not e!689903))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1214863 (= res!806676 (validKeyInArray!0 k0!934))))

(declare-fun b!1214864 () Bool)

(declare-fun e!689901 () Bool)

(declare-fun mapRes!48112 () Bool)

(assert (=> b!1214864 (= e!689900 (and e!689901 mapRes!48112))))

(declare-fun condMapEmpty!48112 () Bool)

(declare-fun mapDefault!48112 () ValueCell!14703)

(assert (=> b!1214864 (= condMapEmpty!48112 (= (arr!37834 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14703)) mapDefault!48112)))))

(declare-fun b!1214865 () Bool)

(declare-fun res!806672 () Bool)

(assert (=> b!1214865 (=> (not res!806672) (not e!689903))))

(assert (=> b!1214865 (= res!806672 (and (= (size!38371 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38370 _keys!1208) (size!38371 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1214866 () Bool)

(declare-fun res!806670 () Bool)

(assert (=> b!1214866 (=> (not res!806670) (not e!689903))))

(assert (=> b!1214866 (= res!806670 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38370 _keys!1208))))))

(declare-fun mapNonEmpty!48112 () Bool)

(declare-fun tp!91385 () Bool)

(assert (=> mapNonEmpty!48112 (= mapRes!48112 (and tp!91385 e!689902))))

(declare-fun mapValue!48112 () ValueCell!14703)

(declare-fun mapKey!48112 () (_ BitVec 32))

(declare-fun mapRest!48112 () (Array (_ BitVec 32) ValueCell!14703))

(assert (=> mapNonEmpty!48112 (= (arr!37834 _values!996) (store mapRest!48112 mapKey!48112 mapValue!48112))))

(declare-fun b!1214867 () Bool)

(declare-fun res!806667 () Bool)

(assert (=> b!1214867 (=> (not res!806667) (not e!689903))))

(declare-datatypes ((List!26842 0))(
  ( (Nil!26839) (Cons!26838 (h!28047 (_ BitVec 64)) (t!39950 List!26842)) )
))
(declare-fun arrayNoDuplicates!0 (array!78404 (_ BitVec 32) List!26842) Bool)

(assert (=> b!1214867 (= res!806667 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26839))))

(declare-fun b!1214868 () Bool)

(assert (=> b!1214868 (= e!689901 tp_is_empty!30825)))

(declare-fun b!1214869 () Bool)

(declare-fun res!806677 () Bool)

(assert (=> b!1214869 (=> (not res!806677) (not e!689903))))

(assert (=> b!1214869 (= res!806677 (= (select (arr!37833 _keys!1208) i!673) k0!934))))

(declare-fun b!1214870 () Bool)

(declare-fun e!689899 () Bool)

(assert (=> b!1214870 (= e!689903 e!689899)))

(declare-fun res!806675 () Bool)

(assert (=> b!1214870 (=> (not res!806675) (not e!689899))))

(assert (=> b!1214870 (= res!806675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552416 mask!1564))))

(assert (=> b!1214870 (= lt!552416 (array!78405 (store (arr!37833 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38370 _keys!1208)))))

(declare-fun mapIsEmpty!48112 () Bool)

(assert (=> mapIsEmpty!48112 mapRes!48112))

(declare-fun b!1214871 () Bool)

(declare-fun res!806674 () Bool)

(assert (=> b!1214871 (=> (not res!806674) (not e!689899))))

(assert (=> b!1214871 (= res!806674 (arrayNoDuplicates!0 lt!552416 #b00000000000000000000000000000000 Nil!26839))))

(declare-fun b!1214872 () Bool)

(assert (=> b!1214872 (= e!689899 (not e!689898))))

(declare-fun res!806669 () Bool)

(assert (=> b!1214872 (=> res!806669 e!689898)))

(assert (=> b!1214872 (= res!806669 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78404 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1214872 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40216 0))(
  ( (Unit!40217) )
))
(declare-fun lt!552419 () Unit!40216)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78404 (_ BitVec 64) (_ BitVec 32)) Unit!40216)

(assert (=> b!1214872 (= lt!552419 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1214873 () Bool)

(declare-fun res!806671 () Bool)

(assert (=> b!1214873 (=> (not res!806671) (not e!689903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1214873 (= res!806671 (validMask!0 mask!1564))))

(assert (= (and start!101234 res!806673) b!1214873))

(assert (= (and b!1214873 res!806671) b!1214865))

(assert (= (and b!1214865 res!806672) b!1214862))

(assert (= (and b!1214862 res!806668) b!1214867))

(assert (= (and b!1214867 res!806667) b!1214866))

(assert (= (and b!1214866 res!806670) b!1214863))

(assert (= (and b!1214863 res!806676) b!1214869))

(assert (= (and b!1214869 res!806677) b!1214870))

(assert (= (and b!1214870 res!806675) b!1214871))

(assert (= (and b!1214871 res!806674) b!1214872))

(assert (= (and b!1214872 (not res!806669)) b!1214860))

(assert (= (and b!1214864 condMapEmpty!48112) mapIsEmpty!48112))

(assert (= (and b!1214864 (not condMapEmpty!48112)) mapNonEmpty!48112))

(get-info :version)

(assert (= (and mapNonEmpty!48112 ((_ is ValueCellFull!14703) mapValue!48112)) b!1214861))

(assert (= (and b!1214864 ((_ is ValueCellFull!14703) mapDefault!48112)) b!1214868))

(assert (= start!101234 b!1214864))

(declare-fun b_lambda!21807 () Bool)

(assert (=> (not b_lambda!21807) (not b!1214860)))

(declare-fun t!39948 () Bool)

(declare-fun tb!10929 () Bool)

(assert (=> (and start!101234 (= defaultEntry!1004 defaultEntry!1004) t!39948) tb!10929))

(declare-fun result!22447 () Bool)

(assert (=> tb!10929 (= result!22447 tp_is_empty!30825)))

(assert (=> b!1214860 t!39948))

(declare-fun b_and!43371 () Bool)

(assert (= b_and!43369 (and (=> t!39948 result!22447) b_and!43371)))

(declare-fun m!1119987 () Bool)

(assert (=> b!1214867 m!1119987))

(declare-fun m!1119989 () Bool)

(assert (=> b!1214870 m!1119989))

(declare-fun m!1119991 () Bool)

(assert (=> b!1214870 m!1119991))

(declare-fun m!1119993 () Bool)

(assert (=> mapNonEmpty!48112 m!1119993))

(declare-fun m!1119995 () Bool)

(assert (=> b!1214871 m!1119995))

(declare-fun m!1119997 () Bool)

(assert (=> b!1214873 m!1119997))

(declare-fun m!1119999 () Bool)

(assert (=> b!1214863 m!1119999))

(declare-fun m!1120001 () Bool)

(assert (=> b!1214860 m!1120001))

(declare-fun m!1120003 () Bool)

(assert (=> b!1214860 m!1120003))

(declare-fun m!1120005 () Bool)

(assert (=> b!1214860 m!1120005))

(declare-fun m!1120007 () Bool)

(assert (=> b!1214860 m!1120007))

(declare-fun m!1120009 () Bool)

(assert (=> b!1214872 m!1120009))

(declare-fun m!1120011 () Bool)

(assert (=> b!1214872 m!1120011))

(declare-fun m!1120013 () Bool)

(assert (=> start!101234 m!1120013))

(declare-fun m!1120015 () Bool)

(assert (=> start!101234 m!1120015))

(declare-fun m!1120017 () Bool)

(assert (=> b!1214862 m!1120017))

(declare-fun m!1120019 () Bool)

(assert (=> b!1214869 m!1120019))

(check-sat b_and!43371 (not b!1214860) (not b!1214872) (not b!1214870) (not b!1214863) (not start!101234) (not b_next!26121) (not b!1214871) tp_is_empty!30825 (not b!1214867) (not mapNonEmpty!48112) (not b!1214862) (not b_lambda!21807) (not b!1214873))
(check-sat b_and!43371 (not b_next!26121))
