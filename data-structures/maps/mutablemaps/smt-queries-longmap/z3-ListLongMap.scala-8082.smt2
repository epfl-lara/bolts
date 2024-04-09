; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99396 () Bool)

(assert start!99396)

(declare-fun b_free!24939 () Bool)

(declare-fun b_next!24939 () Bool)

(assert (=> start!99396 (= b_free!24939 (not b_next!24939))))

(declare-fun tp!87531 () Bool)

(declare-fun b_and!40759 () Bool)

(assert (=> start!99396 (= tp!87531 b_and!40759)))

(declare-fun b!1171927 () Bool)

(declare-fun e!666155 () Bool)

(declare-fun e!666151 () Bool)

(assert (=> b!1171927 (= e!666155 e!666151)))

(declare-fun res!778108 () Bool)

(assert (=> b!1171927 (=> res!778108 e!666151)))

(declare-datatypes ((array!75714 0))(
  ( (array!75715 (arr!36503 (Array (_ BitVec 32) (_ BitVec 64))) (size!37040 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75714)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1171927 (= res!778108 (not (validKeyInArray!0 (select (arr!36503 _keys!1208) from!1455))))))

(declare-datatypes ((V!44419 0))(
  ( (V!44420 (val!14791 Int)) )
))
(declare-datatypes ((tuple2!18992 0))(
  ( (tuple2!18993 (_1!9506 (_ BitVec 64)) (_2!9506 V!44419)) )
))
(declare-datatypes ((List!25764 0))(
  ( (Nil!25761) (Cons!25760 (h!26969 tuple2!18992) (t!37702 List!25764)) )
))
(declare-datatypes ((ListLongMap!16973 0))(
  ( (ListLongMap!16974 (toList!8502 List!25764)) )
))
(declare-fun lt!527964 () ListLongMap!16973)

(declare-fun lt!527967 () ListLongMap!16973)

(assert (=> b!1171927 (= lt!527964 lt!527967)))

(declare-fun lt!527974 () ListLongMap!16973)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1518 (ListLongMap!16973 (_ BitVec 64)) ListLongMap!16973)

(assert (=> b!1171927 (= lt!527967 (-!1518 lt!527974 k0!934))))

(declare-fun zeroValue!944 () V!44419)

(declare-fun lt!527976 () array!75714)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14025 0))(
  ( (ValueCellFull!14025 (v!17430 V!44419)) (EmptyCell!14025) )
))
(declare-datatypes ((array!75716 0))(
  ( (array!75717 (arr!36504 (Array (_ BitVec 32) ValueCell!14025)) (size!37041 (_ BitVec 32))) )
))
(declare-fun lt!527969 () array!75716)

(declare-fun minValue!944 () V!44419)

(declare-fun getCurrentListMapNoExtraKeys!4934 (array!75714 array!75716 (_ BitVec 32) (_ BitVec 32) V!44419 V!44419 (_ BitVec 32) Int) ListLongMap!16973)

(assert (=> b!1171927 (= lt!527964 (getCurrentListMapNoExtraKeys!4934 lt!527976 lt!527969 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75716)

(assert (=> b!1171927 (= lt!527974 (getCurrentListMapNoExtraKeys!4934 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38550 0))(
  ( (Unit!38551) )
))
(declare-fun lt!527970 () Unit!38550)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!742 (array!75714 array!75716 (_ BitVec 32) (_ BitVec 32) V!44419 V!44419 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38550)

(assert (=> b!1171927 (= lt!527970 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!742 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1171928 () Bool)

(declare-fun e!666159 () Bool)

(declare-fun e!666160 () Bool)

(declare-fun mapRes!46031 () Bool)

(assert (=> b!1171928 (= e!666159 (and e!666160 mapRes!46031))))

(declare-fun condMapEmpty!46031 () Bool)

(declare-fun mapDefault!46031 () ValueCell!14025)

(assert (=> b!1171928 (= condMapEmpty!46031 (= (arr!36504 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14025)) mapDefault!46031)))))

(declare-fun b!1171929 () Bool)

(declare-fun res!778115 () Bool)

(declare-fun e!666156 () Bool)

(assert (=> b!1171929 (=> (not res!778115) (not e!666156))))

(declare-datatypes ((List!25765 0))(
  ( (Nil!25762) (Cons!25761 (h!26970 (_ BitVec 64)) (t!37703 List!25765)) )
))
(declare-fun arrayNoDuplicates!0 (array!75714 (_ BitVec 32) List!25765) Bool)

(assert (=> b!1171929 (= res!778115 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25762))))

(declare-fun b!1171930 () Bool)

(declare-fun e!666163 () Bool)

(declare-fun tp_is_empty!29469 () Bool)

(assert (=> b!1171930 (= e!666163 tp_is_empty!29469)))

(declare-fun b!1171931 () Bool)

(declare-fun e!666161 () Bool)

(declare-fun arrayContainsKey!0 (array!75714 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1171931 (= e!666161 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1171932 () Bool)

(declare-fun res!778126 () Bool)

(assert (=> b!1171932 (=> (not res!778126) (not e!666156))))

(assert (=> b!1171932 (= res!778126 (and (= (size!37041 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37040 _keys!1208) (size!37041 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1171933 () Bool)

(declare-fun e!666153 () Bool)

(assert (=> b!1171933 (= e!666153 e!666155)))

(declare-fun res!778117 () Bool)

(assert (=> b!1171933 (=> res!778117 e!666155)))

(assert (=> b!1171933 (= res!778117 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!527975 () ListLongMap!16973)

(assert (=> b!1171933 (= lt!527975 (getCurrentListMapNoExtraKeys!4934 lt!527976 lt!527969 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!527965 () V!44419)

(assert (=> b!1171933 (= lt!527969 (array!75717 (store (arr!36504 _values!996) i!673 (ValueCellFull!14025 lt!527965)) (size!37041 _values!996)))))

(declare-fun dynLambda!2922 (Int (_ BitVec 64)) V!44419)

(assert (=> b!1171933 (= lt!527965 (dynLambda!2922 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!527968 () ListLongMap!16973)

(assert (=> b!1171933 (= lt!527968 (getCurrentListMapNoExtraKeys!4934 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1171934 () Bool)

(declare-fun res!778110 () Bool)

(assert (=> b!1171934 (=> (not res!778110) (not e!666156))))

(assert (=> b!1171934 (= res!778110 (validKeyInArray!0 k0!934))))

(declare-fun b!1171935 () Bool)

(assert (=> b!1171935 (= e!666160 tp_is_empty!29469)))

(declare-fun b!1171936 () Bool)

(declare-fun e!666152 () Bool)

(assert (=> b!1171936 (= e!666152 true)))

(declare-fun lt!527971 () Bool)

(declare-fun contains!6871 (List!25765 (_ BitVec 64)) Bool)

(assert (=> b!1171936 (= lt!527971 (contains!6871 Nil!25762 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!46031 () Bool)

(assert (=> mapIsEmpty!46031 mapRes!46031))

(declare-fun b!1171937 () Bool)

(declare-fun e!666158 () Bool)

(assert (=> b!1171937 (= e!666156 e!666158)))

(declare-fun res!778113 () Bool)

(assert (=> b!1171937 (=> (not res!778113) (not e!666158))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75714 (_ BitVec 32)) Bool)

(assert (=> b!1171937 (= res!778113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!527976 mask!1564))))

(assert (=> b!1171937 (= lt!527976 (array!75715 (store (arr!36503 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37040 _keys!1208)))))

(declare-fun b!1171938 () Bool)

(declare-fun res!778121 () Bool)

(assert (=> b!1171938 (=> (not res!778121) (not e!666156))))

(assert (=> b!1171938 (= res!778121 (= (select (arr!36503 _keys!1208) i!673) k0!934))))

(declare-fun b!1171939 () Bool)

(assert (=> b!1171939 (= e!666158 (not e!666153))))

(declare-fun res!778122 () Bool)

(assert (=> b!1171939 (=> res!778122 e!666153)))

(assert (=> b!1171939 (= res!778122 (bvsgt from!1455 i!673))))

(assert (=> b!1171939 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!527966 () Unit!38550)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75714 (_ BitVec 64) (_ BitVec 32)) Unit!38550)

(assert (=> b!1171939 (= lt!527966 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1171940 () Bool)

(declare-fun res!778120 () Bool)

(assert (=> b!1171940 (=> (not res!778120) (not e!666156))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1171940 (= res!778120 (validMask!0 mask!1564))))

(declare-fun b!1171941 () Bool)

(declare-fun res!778123 () Bool)

(assert (=> b!1171941 (=> res!778123 e!666152)))

(declare-fun noDuplicate!1636 (List!25765) Bool)

(assert (=> b!1171941 (= res!778123 (not (noDuplicate!1636 Nil!25762)))))

(declare-fun b!1171942 () Bool)

(declare-fun res!778118 () Bool)

(assert (=> b!1171942 (=> (not res!778118) (not e!666156))))

(assert (=> b!1171942 (= res!778118 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37040 _keys!1208))))))

(declare-fun res!778111 () Bool)

(assert (=> start!99396 (=> (not res!778111) (not e!666156))))

(assert (=> start!99396 (= res!778111 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37040 _keys!1208))))))

(assert (=> start!99396 e!666156))

(assert (=> start!99396 tp_is_empty!29469))

(declare-fun array_inv!27778 (array!75714) Bool)

(assert (=> start!99396 (array_inv!27778 _keys!1208)))

(assert (=> start!99396 true))

(assert (=> start!99396 tp!87531))

(declare-fun array_inv!27779 (array!75716) Bool)

(assert (=> start!99396 (and (array_inv!27779 _values!996) e!666159)))

(declare-fun b!1171943 () Bool)

(declare-fun e!666154 () Bool)

(assert (=> b!1171943 (= e!666151 e!666154)))

(declare-fun res!778112 () Bool)

(assert (=> b!1171943 (=> res!778112 e!666154)))

(assert (=> b!1171943 (= res!778112 (not (= (select (arr!36503 _keys!1208) from!1455) k0!934)))))

(declare-fun e!666162 () Bool)

(assert (=> b!1171943 e!666162))

(declare-fun res!778116 () Bool)

(assert (=> b!1171943 (=> (not res!778116) (not e!666162))))

(declare-fun +!3740 (ListLongMap!16973 tuple2!18992) ListLongMap!16973)

(declare-fun get!18653 (ValueCell!14025 V!44419) V!44419)

(assert (=> b!1171943 (= res!778116 (= lt!527975 (+!3740 lt!527967 (tuple2!18993 (select (arr!36503 _keys!1208) from!1455) (get!18653 (select (arr!36504 _values!996) from!1455) lt!527965)))))))

(declare-fun b!1171944 () Bool)

(declare-fun res!778119 () Bool)

(assert (=> b!1171944 (=> res!778119 e!666152)))

(assert (=> b!1171944 (= res!778119 (contains!6871 Nil!25762 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1171945 () Bool)

(assert (=> b!1171945 (= e!666162 e!666161)))

(declare-fun res!778109 () Bool)

(assert (=> b!1171945 (=> res!778109 e!666161)))

(assert (=> b!1171945 (= res!778109 (not (= (select (arr!36503 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1171946 () Bool)

(declare-fun res!778114 () Bool)

(assert (=> b!1171946 (=> (not res!778114) (not e!666156))))

(assert (=> b!1171946 (= res!778114 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1171947 () Bool)

(declare-fun res!778125 () Bool)

(assert (=> b!1171947 (=> (not res!778125) (not e!666158))))

(assert (=> b!1171947 (= res!778125 (arrayNoDuplicates!0 lt!527976 #b00000000000000000000000000000000 Nil!25762))))

(declare-fun b!1171948 () Bool)

(assert (=> b!1171948 (= e!666154 e!666152)))

(declare-fun res!778124 () Bool)

(assert (=> b!1171948 (=> res!778124 e!666152)))

(assert (=> b!1171948 (= res!778124 (or (bvsge (size!37040 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37040 _keys!1208)) (bvsge from!1455 (size!37040 _keys!1208))))))

(assert (=> b!1171948 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25762)))

(declare-fun lt!527972 () Unit!38550)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75714 (_ BitVec 32) (_ BitVec 32)) Unit!38550)

(assert (=> b!1171948 (= lt!527972 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1171948 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!527973 () Unit!38550)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75714 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38550)

(assert (=> b!1171948 (= lt!527973 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapNonEmpty!46031 () Bool)

(declare-fun tp!87532 () Bool)

(assert (=> mapNonEmpty!46031 (= mapRes!46031 (and tp!87532 e!666163))))

(declare-fun mapKey!46031 () (_ BitVec 32))

(declare-fun mapValue!46031 () ValueCell!14025)

(declare-fun mapRest!46031 () (Array (_ BitVec 32) ValueCell!14025))

(assert (=> mapNonEmpty!46031 (= (arr!36504 _values!996) (store mapRest!46031 mapKey!46031 mapValue!46031))))

(assert (= (and start!99396 res!778111) b!1171940))

(assert (= (and b!1171940 res!778120) b!1171932))

(assert (= (and b!1171932 res!778126) b!1171946))

(assert (= (and b!1171946 res!778114) b!1171929))

(assert (= (and b!1171929 res!778115) b!1171942))

(assert (= (and b!1171942 res!778118) b!1171934))

(assert (= (and b!1171934 res!778110) b!1171938))

(assert (= (and b!1171938 res!778121) b!1171937))

(assert (= (and b!1171937 res!778113) b!1171947))

(assert (= (and b!1171947 res!778125) b!1171939))

(assert (= (and b!1171939 (not res!778122)) b!1171933))

(assert (= (and b!1171933 (not res!778117)) b!1171927))

(assert (= (and b!1171927 (not res!778108)) b!1171943))

(assert (= (and b!1171943 res!778116) b!1171945))

(assert (= (and b!1171945 (not res!778109)) b!1171931))

(assert (= (and b!1171943 (not res!778112)) b!1171948))

(assert (= (and b!1171948 (not res!778124)) b!1171941))

(assert (= (and b!1171941 (not res!778123)) b!1171944))

(assert (= (and b!1171944 (not res!778119)) b!1171936))

(assert (= (and b!1171928 condMapEmpty!46031) mapIsEmpty!46031))

(assert (= (and b!1171928 (not condMapEmpty!46031)) mapNonEmpty!46031))

(get-info :version)

(assert (= (and mapNonEmpty!46031 ((_ is ValueCellFull!14025) mapValue!46031)) b!1171930))

(assert (= (and b!1171928 ((_ is ValueCellFull!14025) mapDefault!46031)) b!1171935))

(assert (= start!99396 b!1171928))

(declare-fun b_lambda!20101 () Bool)

(assert (=> (not b_lambda!20101) (not b!1171933)))

(declare-fun t!37701 () Bool)

(declare-fun tb!9759 () Bool)

(assert (=> (and start!99396 (= defaultEntry!1004 defaultEntry!1004) t!37701) tb!9759))

(declare-fun result!20077 () Bool)

(assert (=> tb!9759 (= result!20077 tp_is_empty!29469)))

(assert (=> b!1171933 t!37701))

(declare-fun b_and!40761 () Bool)

(assert (= b_and!40759 (and (=> t!37701 result!20077) b_and!40761)))

(declare-fun m!1079797 () Bool)

(assert (=> b!1171934 m!1079797))

(declare-fun m!1079799 () Bool)

(assert (=> b!1171940 m!1079799))

(declare-fun m!1079801 () Bool)

(assert (=> b!1171944 m!1079801))

(declare-fun m!1079803 () Bool)

(assert (=> b!1171937 m!1079803))

(declare-fun m!1079805 () Bool)

(assert (=> b!1171937 m!1079805))

(declare-fun m!1079807 () Bool)

(assert (=> b!1171929 m!1079807))

(declare-fun m!1079809 () Bool)

(assert (=> b!1171936 m!1079809))

(declare-fun m!1079811 () Bool)

(assert (=> b!1171948 m!1079811))

(declare-fun m!1079813 () Bool)

(assert (=> b!1171948 m!1079813))

(declare-fun m!1079815 () Bool)

(assert (=> b!1171948 m!1079815))

(declare-fun m!1079817 () Bool)

(assert (=> b!1171948 m!1079817))

(declare-fun m!1079819 () Bool)

(assert (=> start!99396 m!1079819))

(declare-fun m!1079821 () Bool)

(assert (=> start!99396 m!1079821))

(declare-fun m!1079823 () Bool)

(assert (=> b!1171931 m!1079823))

(declare-fun m!1079825 () Bool)

(assert (=> b!1171946 m!1079825))

(declare-fun m!1079827 () Bool)

(assert (=> b!1171947 m!1079827))

(declare-fun m!1079829 () Bool)

(assert (=> b!1171927 m!1079829))

(declare-fun m!1079831 () Bool)

(assert (=> b!1171927 m!1079831))

(declare-fun m!1079833 () Bool)

(assert (=> b!1171927 m!1079833))

(declare-fun m!1079835 () Bool)

(assert (=> b!1171927 m!1079835))

(declare-fun m!1079837 () Bool)

(assert (=> b!1171927 m!1079837))

(declare-fun m!1079839 () Bool)

(assert (=> b!1171927 m!1079839))

(assert (=> b!1171927 m!1079837))

(declare-fun m!1079841 () Bool)

(assert (=> mapNonEmpty!46031 m!1079841))

(declare-fun m!1079843 () Bool)

(assert (=> b!1171939 m!1079843))

(declare-fun m!1079845 () Bool)

(assert (=> b!1171939 m!1079845))

(assert (=> b!1171945 m!1079837))

(declare-fun m!1079847 () Bool)

(assert (=> b!1171941 m!1079847))

(assert (=> b!1171943 m!1079837))

(declare-fun m!1079849 () Bool)

(assert (=> b!1171943 m!1079849))

(assert (=> b!1171943 m!1079849))

(declare-fun m!1079851 () Bool)

(assert (=> b!1171943 m!1079851))

(declare-fun m!1079853 () Bool)

(assert (=> b!1171943 m!1079853))

(declare-fun m!1079855 () Bool)

(assert (=> b!1171933 m!1079855))

(declare-fun m!1079857 () Bool)

(assert (=> b!1171933 m!1079857))

(declare-fun m!1079859 () Bool)

(assert (=> b!1171933 m!1079859))

(declare-fun m!1079861 () Bool)

(assert (=> b!1171933 m!1079861))

(declare-fun m!1079863 () Bool)

(assert (=> b!1171938 m!1079863))

(check-sat (not b!1171929) (not mapNonEmpty!46031) (not b_next!24939) (not b!1171940) (not b!1171936) (not b_lambda!20101) (not b!1171933) (not b!1171944) (not start!99396) (not b!1171937) (not b!1171927) (not b!1171947) (not b!1171948) (not b!1171943) (not b!1171941) (not b!1171939) (not b!1171934) b_and!40761 (not b!1171931) tp_is_empty!29469 (not b!1171946))
(check-sat b_and!40761 (not b_next!24939))
