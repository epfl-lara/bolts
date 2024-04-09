; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98176 () Bool)

(assert start!98176)

(declare-fun b_free!23841 () Bool)

(declare-fun b_next!23841 () Bool)

(assert (=> start!98176 (= b_free!23841 (not b_next!23841))))

(declare-fun tp!84227 () Bool)

(declare-fun b_and!38487 () Bool)

(assert (=> start!98176 (= tp!84227 b_and!38487)))

(declare-datatypes ((V!42955 0))(
  ( (V!42956 (val!14242 Int)) )
))
(declare-fun zeroValue!944 () V!42955)

(declare-datatypes ((array!73562 0))(
  ( (array!73563 (arr!35430 (Array (_ BitVec 32) (_ BitVec 64))) (size!35967 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73562)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!47803 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13476 0))(
  ( (ValueCellFull!13476 (v!16876 V!42955)) (EmptyCell!13476) )
))
(declare-datatypes ((array!73564 0))(
  ( (array!73565 (arr!35431 (Array (_ BitVec 32) ValueCell!13476)) (size!35968 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73564)

(declare-datatypes ((tuple2!18010 0))(
  ( (tuple2!18011 (_1!9015 (_ BitVec 64)) (_2!9015 V!42955)) )
))
(declare-datatypes ((List!24833 0))(
  ( (Nil!24830) (Cons!24829 (h!26038 tuple2!18010) (t!35673 List!24833)) )
))
(declare-datatypes ((ListLongMap!15991 0))(
  ( (ListLongMap!15992 (toList!8011 List!24833)) )
))
(declare-fun call!47806 () ListLongMap!15991)

(declare-fun minValue!944 () V!42955)

(declare-fun getCurrentListMapNoExtraKeys!4467 (array!73562 array!73564 (_ BitVec 32) (_ BitVec 32) V!42955 V!42955 (_ BitVec 32) Int) ListLongMap!15991)

(assert (=> bm!47803 (= call!47806 (getCurrentListMapNoExtraKeys!4467 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128121 () Bool)

(declare-fun res!753973 () Bool)

(declare-fun e!642105 () Bool)

(assert (=> b!1128121 (=> (not res!753973) (not e!642105))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1128121 (= res!753973 (= (select (arr!35430 _keys!1208) i!673) k0!934))))

(declare-fun b!1128122 () Bool)

(declare-fun res!753972 () Bool)

(assert (=> b!1128122 (=> (not res!753972) (not e!642105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1128122 (= res!753972 (validMask!0 mask!1564))))

(declare-fun b!1128123 () Bool)

(declare-fun e!642112 () Bool)

(declare-fun tp_is_empty!28371 () Bool)

(assert (=> b!1128123 (= e!642112 tp_is_empty!28371)))

(declare-fun call!47807 () ListLongMap!15991)

(declare-fun lt!500835 () array!73562)

(declare-fun bm!47804 () Bool)

(declare-fun lt!500830 () array!73564)

(assert (=> bm!47804 (= call!47807 (getCurrentListMapNoExtraKeys!4467 lt!500835 lt!500830 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44374 () Bool)

(declare-fun mapRes!44374 () Bool)

(assert (=> mapIsEmpty!44374 mapRes!44374))

(declare-fun b!1128124 () Bool)

(declare-fun e!642110 () Bool)

(assert (=> b!1128124 (= e!642110 (= call!47807 call!47806))))

(declare-fun res!753969 () Bool)

(assert (=> start!98176 (=> (not res!753969) (not e!642105))))

(assert (=> start!98176 (= res!753969 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35967 _keys!1208))))))

(assert (=> start!98176 e!642105))

(assert (=> start!98176 tp_is_empty!28371))

(declare-fun array_inv!27050 (array!73562) Bool)

(assert (=> start!98176 (array_inv!27050 _keys!1208)))

(assert (=> start!98176 true))

(assert (=> start!98176 tp!84227))

(declare-fun e!642107 () Bool)

(declare-fun array_inv!27051 (array!73564) Bool)

(assert (=> start!98176 (and (array_inv!27051 _values!996) e!642107)))

(declare-fun b!1128125 () Bool)

(declare-fun e!642108 () Bool)

(assert (=> b!1128125 (= e!642108 tp_is_empty!28371)))

(declare-fun b!1128126 () Bool)

(assert (=> b!1128126 (= e!642107 (and e!642112 mapRes!44374))))

(declare-fun condMapEmpty!44374 () Bool)

(declare-fun mapDefault!44374 () ValueCell!13476)

(assert (=> b!1128126 (= condMapEmpty!44374 (= (arr!35431 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13476)) mapDefault!44374)))))

(declare-fun b!1128127 () Bool)

(declare-fun e!642106 () Bool)

(declare-fun e!642113 () Bool)

(assert (=> b!1128127 (= e!642106 e!642113)))

(declare-fun res!753970 () Bool)

(assert (=> b!1128127 (=> res!753970 e!642113)))

(assert (=> b!1128127 (= res!753970 (not (= (select (arr!35430 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1128127 e!642110))

(declare-fun c!109712 () Bool)

(assert (=> b!1128127 (= c!109712 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36909 0))(
  ( (Unit!36910) )
))
(declare-fun lt!500829 () Unit!36909)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!401 (array!73562 array!73564 (_ BitVec 32) (_ BitVec 32) V!42955 V!42955 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36909)

(assert (=> b!1128127 (= lt!500829 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!401 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128128 () Bool)

(declare-fun e!642111 () Bool)

(assert (=> b!1128128 (= e!642111 e!642106)))

(declare-fun res!753971 () Bool)

(assert (=> b!1128128 (=> res!753971 e!642106)))

(assert (=> b!1128128 (= res!753971 (not (= from!1455 i!673)))))

(declare-fun lt!500831 () ListLongMap!15991)

(assert (=> b!1128128 (= lt!500831 (getCurrentListMapNoExtraKeys!4467 lt!500835 lt!500830 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2545 (Int (_ BitVec 64)) V!42955)

(assert (=> b!1128128 (= lt!500830 (array!73565 (store (arr!35431 _values!996) i!673 (ValueCellFull!13476 (dynLambda!2545 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35968 _values!996)))))

(declare-fun lt!500832 () ListLongMap!15991)

(assert (=> b!1128128 (= lt!500832 (getCurrentListMapNoExtraKeys!4467 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!44374 () Bool)

(declare-fun tp!84228 () Bool)

(assert (=> mapNonEmpty!44374 (= mapRes!44374 (and tp!84228 e!642108))))

(declare-fun mapKey!44374 () (_ BitVec 32))

(declare-fun mapValue!44374 () ValueCell!13476)

(declare-fun mapRest!44374 () (Array (_ BitVec 32) ValueCell!13476))

(assert (=> mapNonEmpty!44374 (= (arr!35431 _values!996) (store mapRest!44374 mapKey!44374 mapValue!44374))))

(declare-fun b!1128129 () Bool)

(declare-fun res!753978 () Bool)

(assert (=> b!1128129 (=> (not res!753978) (not e!642105))))

(assert (=> b!1128129 (= res!753978 (and (= (size!35968 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35967 _keys!1208) (size!35968 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1128130 () Bool)

(declare-fun res!753975 () Bool)

(assert (=> b!1128130 (=> (not res!753975) (not e!642105))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1128130 (= res!753975 (validKeyInArray!0 k0!934))))

(declare-fun b!1128131 () Bool)

(assert (=> b!1128131 (= e!642113 true)))

(declare-fun lt!500834 () Bool)

(declare-fun contains!6510 (ListLongMap!15991 (_ BitVec 64)) Bool)

(assert (=> b!1128131 (= lt!500834 (contains!6510 (getCurrentListMapNoExtraKeys!4467 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1128132 () Bool)

(declare-fun e!642109 () Bool)

(assert (=> b!1128132 (= e!642105 e!642109)))

(declare-fun res!753976 () Bool)

(assert (=> b!1128132 (=> (not res!753976) (not e!642109))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73562 (_ BitVec 32)) Bool)

(assert (=> b!1128132 (= res!753976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500835 mask!1564))))

(assert (=> b!1128132 (= lt!500835 (array!73563 (store (arr!35430 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35967 _keys!1208)))))

(declare-fun b!1128133 () Bool)

(declare-fun res!753977 () Bool)

(assert (=> b!1128133 (=> (not res!753977) (not e!642105))))

(assert (=> b!1128133 (= res!753977 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35967 _keys!1208))))))

(declare-fun b!1128134 () Bool)

(declare-fun -!1146 (ListLongMap!15991 (_ BitVec 64)) ListLongMap!15991)

(assert (=> b!1128134 (= e!642110 (= call!47807 (-!1146 call!47806 k0!934)))))

(declare-fun b!1128135 () Bool)

(declare-fun res!753979 () Bool)

(assert (=> b!1128135 (=> (not res!753979) (not e!642105))))

(assert (=> b!1128135 (= res!753979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1128136 () Bool)

(declare-fun res!753981 () Bool)

(assert (=> b!1128136 (=> (not res!753981) (not e!642105))))

(declare-datatypes ((List!24834 0))(
  ( (Nil!24831) (Cons!24830 (h!26039 (_ BitVec 64)) (t!35674 List!24834)) )
))
(declare-fun arrayNoDuplicates!0 (array!73562 (_ BitVec 32) List!24834) Bool)

(assert (=> b!1128136 (= res!753981 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24831))))

(declare-fun b!1128137 () Bool)

(declare-fun res!753974 () Bool)

(assert (=> b!1128137 (=> (not res!753974) (not e!642109))))

(assert (=> b!1128137 (= res!753974 (arrayNoDuplicates!0 lt!500835 #b00000000000000000000000000000000 Nil!24831))))

(declare-fun b!1128138 () Bool)

(assert (=> b!1128138 (= e!642109 (not e!642111))))

(declare-fun res!753980 () Bool)

(assert (=> b!1128138 (=> res!753980 e!642111)))

(assert (=> b!1128138 (= res!753980 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73562 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1128138 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!500833 () Unit!36909)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73562 (_ BitVec 64) (_ BitVec 32)) Unit!36909)

(assert (=> b!1128138 (= lt!500833 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!98176 res!753969) b!1128122))

(assert (= (and b!1128122 res!753972) b!1128129))

(assert (= (and b!1128129 res!753978) b!1128135))

(assert (= (and b!1128135 res!753979) b!1128136))

(assert (= (and b!1128136 res!753981) b!1128133))

(assert (= (and b!1128133 res!753977) b!1128130))

(assert (= (and b!1128130 res!753975) b!1128121))

(assert (= (and b!1128121 res!753973) b!1128132))

(assert (= (and b!1128132 res!753976) b!1128137))

(assert (= (and b!1128137 res!753974) b!1128138))

(assert (= (and b!1128138 (not res!753980)) b!1128128))

(assert (= (and b!1128128 (not res!753971)) b!1128127))

(assert (= (and b!1128127 c!109712) b!1128134))

(assert (= (and b!1128127 (not c!109712)) b!1128124))

(assert (= (or b!1128134 b!1128124) bm!47804))

(assert (= (or b!1128134 b!1128124) bm!47803))

(assert (= (and b!1128127 (not res!753970)) b!1128131))

(assert (= (and b!1128126 condMapEmpty!44374) mapIsEmpty!44374))

(assert (= (and b!1128126 (not condMapEmpty!44374)) mapNonEmpty!44374))

(get-info :version)

(assert (= (and mapNonEmpty!44374 ((_ is ValueCellFull!13476) mapValue!44374)) b!1128125))

(assert (= (and b!1128126 ((_ is ValueCellFull!13476) mapDefault!44374)) b!1128123))

(assert (= start!98176 b!1128126))

(declare-fun b_lambda!18845 () Bool)

(assert (=> (not b_lambda!18845) (not b!1128128)))

(declare-fun t!35672 () Bool)

(declare-fun tb!8661 () Bool)

(assert (=> (and start!98176 (= defaultEntry!1004 defaultEntry!1004) t!35672) tb!8661))

(declare-fun result!17875 () Bool)

(assert (=> tb!8661 (= result!17875 tp_is_empty!28371)))

(assert (=> b!1128128 t!35672))

(declare-fun b_and!38489 () Bool)

(assert (= b_and!38487 (and (=> t!35672 result!17875) b_and!38489)))

(declare-fun m!1041893 () Bool)

(assert (=> b!1128131 m!1041893))

(assert (=> b!1128131 m!1041893))

(declare-fun m!1041895 () Bool)

(assert (=> b!1128131 m!1041895))

(declare-fun m!1041897 () Bool)

(assert (=> b!1128130 m!1041897))

(declare-fun m!1041899 () Bool)

(assert (=> b!1128134 m!1041899))

(declare-fun m!1041901 () Bool)

(assert (=> b!1128138 m!1041901))

(declare-fun m!1041903 () Bool)

(assert (=> b!1128138 m!1041903))

(declare-fun m!1041905 () Bool)

(assert (=> bm!47804 m!1041905))

(declare-fun m!1041907 () Bool)

(assert (=> start!98176 m!1041907))

(declare-fun m!1041909 () Bool)

(assert (=> start!98176 m!1041909))

(declare-fun m!1041911 () Bool)

(assert (=> mapNonEmpty!44374 m!1041911))

(declare-fun m!1041913 () Bool)

(assert (=> b!1128132 m!1041913))

(declare-fun m!1041915 () Bool)

(assert (=> b!1128132 m!1041915))

(declare-fun m!1041917 () Bool)

(assert (=> b!1128121 m!1041917))

(assert (=> bm!47803 m!1041893))

(declare-fun m!1041919 () Bool)

(assert (=> b!1128122 m!1041919))

(declare-fun m!1041921 () Bool)

(assert (=> b!1128137 m!1041921))

(declare-fun m!1041923 () Bool)

(assert (=> b!1128135 m!1041923))

(declare-fun m!1041925 () Bool)

(assert (=> b!1128128 m!1041925))

(declare-fun m!1041927 () Bool)

(assert (=> b!1128128 m!1041927))

(declare-fun m!1041929 () Bool)

(assert (=> b!1128128 m!1041929))

(declare-fun m!1041931 () Bool)

(assert (=> b!1128128 m!1041931))

(declare-fun m!1041933 () Bool)

(assert (=> b!1128136 m!1041933))

(declare-fun m!1041935 () Bool)

(assert (=> b!1128127 m!1041935))

(declare-fun m!1041937 () Bool)

(assert (=> b!1128127 m!1041937))

(check-sat (not b!1128136) b_and!38489 (not bm!47804) (not b_next!23841) (not bm!47803) (not b_lambda!18845) (not b!1128127) (not b!1128137) (not b!1128135) tp_is_empty!28371 (not b!1128134) (not b!1128131) (not b!1128132) (not b!1128130) (not b!1128138) (not b!1128128) (not mapNonEmpty!44374) (not start!98176) (not b!1128122))
(check-sat b_and!38489 (not b_next!23841))
