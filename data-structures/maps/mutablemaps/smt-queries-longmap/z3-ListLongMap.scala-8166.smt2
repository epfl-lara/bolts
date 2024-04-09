; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99900 () Bool)

(assert start!99900)

(declare-fun b_free!25443 () Bool)

(declare-fun b_next!25443 () Bool)

(assert (=> start!99900 (= b_free!25443 (not b_next!25443))))

(declare-fun tp!89043 () Bool)

(declare-fun b_and!41767 () Bool)

(assert (=> start!99900 (= tp!89043 b_and!41767)))

(declare-fun b!1187955 () Bool)

(declare-fun e!675515 () Bool)

(declare-fun e!675509 () Bool)

(assert (=> b!1187955 (= e!675515 e!675509)))

(declare-fun res!789917 () Bool)

(assert (=> b!1187955 (=> res!789917 e!675509)))

(declare-datatypes ((array!76714 0))(
  ( (array!76715 (arr!37003 (Array (_ BitVec 32) (_ BitVec 64))) (size!37540 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76714)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1187955 (= res!789917 (not (validKeyInArray!0 (select (arr!37003 _keys!1208) from!1455))))))

(declare-datatypes ((V!45091 0))(
  ( (V!45092 (val!15043 Int)) )
))
(declare-datatypes ((tuple2!19442 0))(
  ( (tuple2!19443 (_1!9731 (_ BitVec 64)) (_2!9731 V!45091)) )
))
(declare-datatypes ((List!26202 0))(
  ( (Nil!26199) (Cons!26198 (h!27407 tuple2!19442) (t!38644 List!26202)) )
))
(declare-datatypes ((ListLongMap!17423 0))(
  ( (ListLongMap!17424 (toList!8727 List!26202)) )
))
(declare-fun lt!540324 () ListLongMap!17423)

(declare-fun lt!540333 () ListLongMap!17423)

(assert (=> b!1187955 (= lt!540324 lt!540333)))

(declare-fun lt!540342 () ListLongMap!17423)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1712 (ListLongMap!17423 (_ BitVec 64)) ListLongMap!17423)

(assert (=> b!1187955 (= lt!540333 (-!1712 lt!540342 k0!934))))

(declare-fun zeroValue!944 () V!45091)

(declare-datatypes ((ValueCell!14277 0))(
  ( (ValueCellFull!14277 (v!17682 V!45091)) (EmptyCell!14277) )
))
(declare-datatypes ((array!76716 0))(
  ( (array!76717 (arr!37004 (Array (_ BitVec 32) ValueCell!14277)) (size!37541 (_ BitVec 32))) )
))
(declare-fun lt!540339 () array!76716)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!540329 () array!76714)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45091)

(declare-fun getCurrentListMapNoExtraKeys!5142 (array!76714 array!76716 (_ BitVec 32) (_ BitVec 32) V!45091 V!45091 (_ BitVec 32) Int) ListLongMap!17423)

(assert (=> b!1187955 (= lt!540324 (getCurrentListMapNoExtraKeys!5142 lt!540329 lt!540339 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76716)

(assert (=> b!1187955 (= lt!540342 (getCurrentListMapNoExtraKeys!5142 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!39334 0))(
  ( (Unit!39335) )
))
(declare-fun lt!540327 () Unit!39334)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!919 (array!76714 array!76716 (_ BitVec 32) (_ BitVec 32) V!45091 V!45091 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39334)

(assert (=> b!1187955 (= lt!540327 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!919 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!789922 () Bool)

(declare-fun e!675514 () Bool)

(assert (=> start!99900 (=> (not res!789922) (not e!675514))))

(assert (=> start!99900 (= res!789922 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37540 _keys!1208))))))

(assert (=> start!99900 e!675514))

(declare-fun tp_is_empty!29973 () Bool)

(assert (=> start!99900 tp_is_empty!29973))

(declare-fun array_inv!28118 (array!76714) Bool)

(assert (=> start!99900 (array_inv!28118 _keys!1208)))

(assert (=> start!99900 true))

(assert (=> start!99900 tp!89043))

(declare-fun e!675508 () Bool)

(declare-fun array_inv!28119 (array!76716) Bool)

(assert (=> start!99900 (and (array_inv!28119 _values!996) e!675508)))

(declare-fun b!1187956 () Bool)

(declare-fun res!789927 () Bool)

(assert (=> b!1187956 (=> (not res!789927) (not e!675514))))

(assert (=> b!1187956 (= res!789927 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!46787 () Bool)

(declare-fun mapRes!46787 () Bool)

(declare-fun tp!89044 () Bool)

(declare-fun e!675516 () Bool)

(assert (=> mapNonEmpty!46787 (= mapRes!46787 (and tp!89044 e!675516))))

(declare-fun mapRest!46787 () (Array (_ BitVec 32) ValueCell!14277))

(declare-fun mapValue!46787 () ValueCell!14277)

(declare-fun mapKey!46787 () (_ BitVec 32))

(assert (=> mapNonEmpty!46787 (= (arr!37004 _values!996) (store mapRest!46787 mapKey!46787 mapValue!46787))))

(declare-fun b!1187957 () Bool)

(declare-fun res!789915 () Bool)

(assert (=> b!1187957 (=> (not res!789915) (not e!675514))))

(declare-datatypes ((List!26203 0))(
  ( (Nil!26200) (Cons!26199 (h!27408 (_ BitVec 64)) (t!38645 List!26203)) )
))
(declare-fun arrayNoDuplicates!0 (array!76714 (_ BitVec 32) List!26203) Bool)

(assert (=> b!1187957 (= res!789915 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26200))))

(declare-fun b!1187958 () Bool)

(declare-fun res!789919 () Bool)

(assert (=> b!1187958 (=> (not res!789919) (not e!675514))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1187958 (= res!789919 (validMask!0 mask!1564))))

(declare-fun b!1187959 () Bool)

(declare-fun e!675517 () Bool)

(assert (=> b!1187959 (= e!675514 e!675517)))

(declare-fun res!789916 () Bool)

(assert (=> b!1187959 (=> (not res!789916) (not e!675517))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76714 (_ BitVec 32)) Bool)

(assert (=> b!1187959 (= res!789916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540329 mask!1564))))

(assert (=> b!1187959 (= lt!540329 (array!76715 (store (arr!37003 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37540 _keys!1208)))))

(declare-fun b!1187960 () Bool)

(declare-fun e!675511 () Unit!39334)

(declare-fun Unit!39336 () Unit!39334)

(assert (=> b!1187960 (= e!675511 Unit!39336)))

(declare-fun b!1187961 () Bool)

(declare-fun e!675512 () Bool)

(declare-fun e!675507 () Bool)

(assert (=> b!1187961 (= e!675512 e!675507)))

(declare-fun res!789921 () Bool)

(assert (=> b!1187961 (=> res!789921 e!675507)))

(assert (=> b!1187961 (= res!789921 (not (= (select (arr!37003 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1187962 () Bool)

(declare-fun res!789918 () Bool)

(assert (=> b!1187962 (=> (not res!789918) (not e!675514))))

(assert (=> b!1187962 (= res!789918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1187963 () Bool)

(declare-fun res!789925 () Bool)

(assert (=> b!1187963 (=> (not res!789925) (not e!675514))))

(assert (=> b!1187963 (= res!789925 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37540 _keys!1208))))))

(declare-fun b!1187964 () Bool)

(declare-fun e!675510 () Bool)

(assert (=> b!1187964 (= e!675510 e!675515)))

(declare-fun res!789926 () Bool)

(assert (=> b!1187964 (=> res!789926 e!675515)))

(assert (=> b!1187964 (= res!789926 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!540341 () ListLongMap!17423)

(assert (=> b!1187964 (= lt!540341 (getCurrentListMapNoExtraKeys!5142 lt!540329 lt!540339 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!540325 () V!45091)

(assert (=> b!1187964 (= lt!540339 (array!76717 (store (arr!37004 _values!996) i!673 (ValueCellFull!14277 lt!540325)) (size!37541 _values!996)))))

(declare-fun dynLambda!3099 (Int (_ BitVec 64)) V!45091)

(assert (=> b!1187964 (= lt!540325 (dynLambda!3099 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!540328 () ListLongMap!17423)

(assert (=> b!1187964 (= lt!540328 (getCurrentListMapNoExtraKeys!5142 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1187965 () Bool)

(assert (=> b!1187965 (= e!675509 true)))

(declare-fun lt!540331 () ListLongMap!17423)

(declare-fun lt!540332 () ListLongMap!17423)

(assert (=> b!1187965 (= (-!1712 lt!540331 k0!934) lt!540332)))

(declare-fun lt!540340 () Unit!39334)

(declare-fun lt!540334 () V!45091)

(declare-fun addRemoveCommutativeForDiffKeys!219 (ListLongMap!17423 (_ BitVec 64) V!45091 (_ BitVec 64)) Unit!39334)

(assert (=> b!1187965 (= lt!540340 (addRemoveCommutativeForDiffKeys!219 lt!540342 (select (arr!37003 _keys!1208) from!1455) lt!540334 k0!934))))

(assert (=> b!1187965 (and (= lt!540328 lt!540331) (= lt!540333 lt!540324))))

(declare-fun lt!540330 () tuple2!19442)

(declare-fun +!3929 (ListLongMap!17423 tuple2!19442) ListLongMap!17423)

(assert (=> b!1187965 (= lt!540331 (+!3929 lt!540342 lt!540330))))

(assert (=> b!1187965 (not (= (select (arr!37003 _keys!1208) from!1455) k0!934))))

(declare-fun lt!540338 () Unit!39334)

(assert (=> b!1187965 (= lt!540338 e!675511)))

(declare-fun c!117236 () Bool)

(assert (=> b!1187965 (= c!117236 (= (select (arr!37003 _keys!1208) from!1455) k0!934))))

(assert (=> b!1187965 e!675512))

(declare-fun res!789928 () Bool)

(assert (=> b!1187965 (=> (not res!789928) (not e!675512))))

(assert (=> b!1187965 (= res!789928 (= lt!540341 lt!540332))))

(assert (=> b!1187965 (= lt!540332 (+!3929 lt!540333 lt!540330))))

(assert (=> b!1187965 (= lt!540330 (tuple2!19443 (select (arr!37003 _keys!1208) from!1455) lt!540334))))

(declare-fun get!18999 (ValueCell!14277 V!45091) V!45091)

(assert (=> b!1187965 (= lt!540334 (get!18999 (select (arr!37004 _values!996) from!1455) lt!540325))))

(declare-fun b!1187966 () Bool)

(assert (=> b!1187966 (= e!675516 tp_is_empty!29973)))

(declare-fun b!1187967 () Bool)

(declare-fun res!789923 () Bool)

(assert (=> b!1187967 (=> (not res!789923) (not e!675514))))

(assert (=> b!1187967 (= res!789923 (= (select (arr!37003 _keys!1208) i!673) k0!934))))

(declare-fun b!1187968 () Bool)

(assert (=> b!1187968 (= e!675517 (not e!675510))))

(declare-fun res!789924 () Bool)

(assert (=> b!1187968 (=> res!789924 e!675510)))

(assert (=> b!1187968 (= res!789924 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76714 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1187968 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!540337 () Unit!39334)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76714 (_ BitVec 64) (_ BitVec 32)) Unit!39334)

(assert (=> b!1187968 (= lt!540337 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1187969 () Bool)

(declare-fun Unit!39337 () Unit!39334)

(assert (=> b!1187969 (= e!675511 Unit!39337)))

(declare-fun lt!540336 () Unit!39334)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76714 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39334)

(assert (=> b!1187969 (= lt!540336 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1187969 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!540335 () Unit!39334)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76714 (_ BitVec 32) (_ BitVec 32)) Unit!39334)

(assert (=> b!1187969 (= lt!540335 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1187969 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26200)))

(declare-fun lt!540326 () Unit!39334)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76714 (_ BitVec 64) (_ BitVec 32) List!26203) Unit!39334)

(assert (=> b!1187969 (= lt!540326 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26200))))

(assert (=> b!1187969 false))

(declare-fun b!1187970 () Bool)

(declare-fun e!675513 () Bool)

(assert (=> b!1187970 (= e!675513 tp_is_empty!29973)))

(declare-fun b!1187971 () Bool)

(assert (=> b!1187971 (= e!675507 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1187972 () Bool)

(assert (=> b!1187972 (= e!675508 (and e!675513 mapRes!46787))))

(declare-fun condMapEmpty!46787 () Bool)

(declare-fun mapDefault!46787 () ValueCell!14277)

(assert (=> b!1187972 (= condMapEmpty!46787 (= (arr!37004 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14277)) mapDefault!46787)))))

(declare-fun mapIsEmpty!46787 () Bool)

(assert (=> mapIsEmpty!46787 mapRes!46787))

(declare-fun b!1187973 () Bool)

(declare-fun res!789914 () Bool)

(assert (=> b!1187973 (=> (not res!789914) (not e!675514))))

(assert (=> b!1187973 (= res!789914 (and (= (size!37541 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37540 _keys!1208) (size!37541 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1187974 () Bool)

(declare-fun res!789920 () Bool)

(assert (=> b!1187974 (=> (not res!789920) (not e!675517))))

(assert (=> b!1187974 (= res!789920 (arrayNoDuplicates!0 lt!540329 #b00000000000000000000000000000000 Nil!26200))))

(assert (= (and start!99900 res!789922) b!1187958))

(assert (= (and b!1187958 res!789919) b!1187973))

(assert (= (and b!1187973 res!789914) b!1187962))

(assert (= (and b!1187962 res!789918) b!1187957))

(assert (= (and b!1187957 res!789915) b!1187963))

(assert (= (and b!1187963 res!789925) b!1187956))

(assert (= (and b!1187956 res!789927) b!1187967))

(assert (= (and b!1187967 res!789923) b!1187959))

(assert (= (and b!1187959 res!789916) b!1187974))

(assert (= (and b!1187974 res!789920) b!1187968))

(assert (= (and b!1187968 (not res!789924)) b!1187964))

(assert (= (and b!1187964 (not res!789926)) b!1187955))

(assert (= (and b!1187955 (not res!789917)) b!1187965))

(assert (= (and b!1187965 res!789928) b!1187961))

(assert (= (and b!1187961 (not res!789921)) b!1187971))

(assert (= (and b!1187965 c!117236) b!1187969))

(assert (= (and b!1187965 (not c!117236)) b!1187960))

(assert (= (and b!1187972 condMapEmpty!46787) mapIsEmpty!46787))

(assert (= (and b!1187972 (not condMapEmpty!46787)) mapNonEmpty!46787))

(get-info :version)

(assert (= (and mapNonEmpty!46787 ((_ is ValueCellFull!14277) mapValue!46787)) b!1187966))

(assert (= (and b!1187972 ((_ is ValueCellFull!14277) mapDefault!46787)) b!1187970))

(assert (= start!99900 b!1187972))

(declare-fun b_lambda!20605 () Bool)

(assert (=> (not b_lambda!20605) (not b!1187964)))

(declare-fun t!38643 () Bool)

(declare-fun tb!10263 () Bool)

(assert (=> (and start!99900 (= defaultEntry!1004 defaultEntry!1004) t!38643) tb!10263))

(declare-fun result!21085 () Bool)

(assert (=> tb!10263 (= result!21085 tp_is_empty!29973)))

(assert (=> b!1187964 t!38643))

(declare-fun b_and!41769 () Bool)

(assert (= b_and!41767 (and (=> t!38643 result!21085) b_and!41769)))

(declare-fun m!1096755 () Bool)

(assert (=> b!1187964 m!1096755))

(declare-fun m!1096757 () Bool)

(assert (=> b!1187964 m!1096757))

(declare-fun m!1096759 () Bool)

(assert (=> b!1187964 m!1096759))

(declare-fun m!1096761 () Bool)

(assert (=> b!1187964 m!1096761))

(declare-fun m!1096763 () Bool)

(assert (=> start!99900 m!1096763))

(declare-fun m!1096765 () Bool)

(assert (=> start!99900 m!1096765))

(declare-fun m!1096767 () Bool)

(assert (=> b!1187956 m!1096767))

(declare-fun m!1096769 () Bool)

(assert (=> b!1187958 m!1096769))

(declare-fun m!1096771 () Bool)

(assert (=> b!1187974 m!1096771))

(declare-fun m!1096773 () Bool)

(assert (=> b!1187957 m!1096773))

(declare-fun m!1096775 () Bool)

(assert (=> b!1187969 m!1096775))

(declare-fun m!1096777 () Bool)

(assert (=> b!1187969 m!1096777))

(declare-fun m!1096779 () Bool)

(assert (=> b!1187969 m!1096779))

(declare-fun m!1096781 () Bool)

(assert (=> b!1187969 m!1096781))

(declare-fun m!1096783 () Bool)

(assert (=> b!1187969 m!1096783))

(declare-fun m!1096785 () Bool)

(assert (=> b!1187955 m!1096785))

(declare-fun m!1096787 () Bool)

(assert (=> b!1187955 m!1096787))

(declare-fun m!1096789 () Bool)

(assert (=> b!1187955 m!1096789))

(declare-fun m!1096791 () Bool)

(assert (=> b!1187955 m!1096791))

(declare-fun m!1096793 () Bool)

(assert (=> b!1187955 m!1096793))

(declare-fun m!1096795 () Bool)

(assert (=> b!1187955 m!1096795))

(assert (=> b!1187955 m!1096793))

(declare-fun m!1096797 () Bool)

(assert (=> b!1187968 m!1096797))

(declare-fun m!1096799 () Bool)

(assert (=> b!1187968 m!1096799))

(declare-fun m!1096801 () Bool)

(assert (=> b!1187962 m!1096801))

(declare-fun m!1096803 () Bool)

(assert (=> b!1187967 m!1096803))

(declare-fun m!1096805 () Bool)

(assert (=> b!1187971 m!1096805))

(assert (=> b!1187961 m!1096793))

(declare-fun m!1096807 () Bool)

(assert (=> b!1187959 m!1096807))

(declare-fun m!1096809 () Bool)

(assert (=> b!1187959 m!1096809))

(declare-fun m!1096811 () Bool)

(assert (=> mapNonEmpty!46787 m!1096811))

(declare-fun m!1096813 () Bool)

(assert (=> b!1187965 m!1096813))

(declare-fun m!1096815 () Bool)

(assert (=> b!1187965 m!1096815))

(assert (=> b!1187965 m!1096793))

(declare-fun m!1096817 () Bool)

(assert (=> b!1187965 m!1096817))

(declare-fun m!1096819 () Bool)

(assert (=> b!1187965 m!1096819))

(assert (=> b!1187965 m!1096819))

(declare-fun m!1096821 () Bool)

(assert (=> b!1187965 m!1096821))

(assert (=> b!1187965 m!1096793))

(declare-fun m!1096823 () Bool)

(assert (=> b!1187965 m!1096823))

(check-sat (not b!1187965) (not mapNonEmpty!46787) (not start!99900) (not b!1187958) b_and!41769 (not b!1187971) (not b!1187959) (not b!1187962) (not b!1187968) (not b!1187964) (not b!1187957) tp_is_empty!29973 (not b!1187956) (not b!1187955) (not b_next!25443) (not b_lambda!20605) (not b!1187969) (not b!1187974))
(check-sat b_and!41769 (not b_next!25443))
