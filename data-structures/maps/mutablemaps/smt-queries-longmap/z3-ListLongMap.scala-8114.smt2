; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99588 () Bool)

(assert start!99588)

(declare-fun b_free!25131 () Bool)

(declare-fun b_next!25131 () Bool)

(assert (=> start!99588 (= b_free!25131 (not b_next!25131))))

(declare-fun tp!88108 () Bool)

(declare-fun b_and!41143 () Bool)

(assert (=> start!99588 (= tp!88108 b_and!41143)))

(declare-fun b!1178036 () Bool)

(declare-datatypes ((Unit!38846 0))(
  ( (Unit!38847) )
))
(declare-fun e!669736 () Unit!38846)

(declare-fun Unit!38848 () Unit!38846)

(assert (=> b!1178036 (= e!669736 Unit!38848)))

(declare-fun b!1178037 () Bool)

(declare-fun res!782657 () Bool)

(declare-fun e!669734 () Bool)

(assert (=> b!1178037 (=> (not res!782657) (not e!669734))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!76094 0))(
  ( (array!76095 (arr!36693 (Array (_ BitVec 32) (_ BitVec 64))) (size!37230 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76094)

(assert (=> b!1178037 (= res!782657 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37230 _keys!1208))))))

(declare-fun b!1178038 () Bool)

(declare-fun res!782658 () Bool)

(assert (=> b!1178038 (=> (not res!782658) (not e!669734))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76094 (_ BitVec 32)) Bool)

(assert (=> b!1178038 (= res!782658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!782655 () Bool)

(assert (=> start!99588 (=> (not res!782655) (not e!669734))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99588 (= res!782655 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37230 _keys!1208))))))

(assert (=> start!99588 e!669734))

(declare-fun tp_is_empty!29661 () Bool)

(assert (=> start!99588 tp_is_empty!29661))

(declare-fun array_inv!27908 (array!76094) Bool)

(assert (=> start!99588 (array_inv!27908 _keys!1208)))

(assert (=> start!99588 true))

(assert (=> start!99588 tp!88108))

(declare-datatypes ((V!44675 0))(
  ( (V!44676 (val!14887 Int)) )
))
(declare-datatypes ((ValueCell!14121 0))(
  ( (ValueCellFull!14121 (v!17526 V!44675)) (EmptyCell!14121) )
))
(declare-datatypes ((array!76096 0))(
  ( (array!76097 (arr!36694 (Array (_ BitVec 32) ValueCell!14121)) (size!37231 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76096)

(declare-fun e!669740 () Bool)

(declare-fun array_inv!27909 (array!76096) Bool)

(assert (=> start!99588 (and (array_inv!27909 _values!996) e!669740)))

(declare-fun b!1178039 () Bool)

(declare-fun res!782654 () Bool)

(assert (=> b!1178039 (=> (not res!782654) (not e!669734))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1178039 (= res!782654 (= (select (arr!36693 _keys!1208) i!673) k0!934))))

(declare-fun b!1178040 () Bool)

(declare-fun e!669743 () Bool)

(assert (=> b!1178040 (= e!669734 e!669743)))

(declare-fun res!782649 () Bool)

(assert (=> b!1178040 (=> (not res!782649) (not e!669743))))

(declare-fun lt!532067 () array!76094)

(assert (=> b!1178040 (= res!782649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!532067 mask!1564))))

(assert (=> b!1178040 (= lt!532067 (array!76095 (store (arr!36693 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37230 _keys!1208)))))

(declare-fun b!1178041 () Bool)

(declare-fun e!669741 () Bool)

(declare-fun mapRes!46319 () Bool)

(assert (=> b!1178041 (= e!669740 (and e!669741 mapRes!46319))))

(declare-fun condMapEmpty!46319 () Bool)

(declare-fun mapDefault!46319 () ValueCell!14121)

(assert (=> b!1178041 (= condMapEmpty!46319 (= (arr!36694 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14121)) mapDefault!46319)))))

(declare-fun mapNonEmpty!46319 () Bool)

(declare-fun tp!88107 () Bool)

(declare-fun e!669745 () Bool)

(assert (=> mapNonEmpty!46319 (= mapRes!46319 (and tp!88107 e!669745))))

(declare-fun mapKey!46319 () (_ BitVec 32))

(declare-fun mapRest!46319 () (Array (_ BitVec 32) ValueCell!14121))

(declare-fun mapValue!46319 () ValueCell!14121)

(assert (=> mapNonEmpty!46319 (= (arr!36694 _values!996) (store mapRest!46319 mapKey!46319 mapValue!46319))))

(declare-fun mapIsEmpty!46319 () Bool)

(assert (=> mapIsEmpty!46319 mapRes!46319))

(declare-fun e!669735 () Bool)

(declare-fun b!1178042 () Bool)

(declare-fun arrayContainsKey!0 (array!76094 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1178042 (= e!669735 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1178043 () Bool)

(declare-datatypes ((tuple2!19170 0))(
  ( (tuple2!19171 (_1!9595 (_ BitVec 64)) (_2!9595 V!44675)) )
))
(declare-fun lt!532068 () tuple2!19170)

(declare-datatypes ((List!25934 0))(
  ( (Nil!25931) (Cons!25930 (h!27139 tuple2!19170) (t!38064 List!25934)) )
))
(declare-datatypes ((ListLongMap!17151 0))(
  ( (ListLongMap!17152 (toList!8591 List!25934)) )
))
(declare-fun lt!532072 () ListLongMap!17151)

(declare-fun lt!532074 () ListLongMap!17151)

(declare-fun e!669739 () Bool)

(declare-fun +!3812 (ListLongMap!17151 tuple2!19170) ListLongMap!17151)

(assert (=> b!1178043 (= e!669739 (= lt!532074 (+!3812 lt!532072 lt!532068)))))

(declare-fun b!1178044 () Bool)

(assert (=> b!1178044 (= e!669741 tp_is_empty!29661)))

(declare-fun b!1178045 () Bool)

(declare-fun res!782660 () Bool)

(assert (=> b!1178045 (=> (not res!782660) (not e!669734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1178045 (= res!782660 (validMask!0 mask!1564))))

(declare-fun b!1178046 () Bool)

(declare-fun res!782651 () Bool)

(assert (=> b!1178046 (=> (not res!782651) (not e!669743))))

(declare-datatypes ((List!25935 0))(
  ( (Nil!25932) (Cons!25931 (h!27140 (_ BitVec 64)) (t!38065 List!25935)) )
))
(declare-fun arrayNoDuplicates!0 (array!76094 (_ BitVec 32) List!25935) Bool)

(assert (=> b!1178046 (= res!782651 (arrayNoDuplicates!0 lt!532067 #b00000000000000000000000000000000 Nil!25932))))

(declare-fun b!1178047 () Bool)

(declare-fun res!782656 () Bool)

(assert (=> b!1178047 (=> (not res!782656) (not e!669734))))

(assert (=> b!1178047 (= res!782656 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25932))))

(declare-fun b!1178048 () Bool)

(declare-fun e!669742 () Bool)

(assert (=> b!1178048 (= e!669742 e!669735)))

(declare-fun res!782650 () Bool)

(assert (=> b!1178048 (=> res!782650 e!669735)))

(assert (=> b!1178048 (= res!782650 (not (= (select (arr!36693 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1178049 () Bool)

(assert (=> b!1178049 (= e!669745 tp_is_empty!29661)))

(declare-fun b!1178050 () Bool)

(declare-fun res!782652 () Bool)

(assert (=> b!1178050 (=> (not res!782652) (not e!669734))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1178050 (= res!782652 (validKeyInArray!0 k0!934))))

(declare-fun b!1178051 () Bool)

(declare-fun e!669737 () Bool)

(declare-fun e!669733 () Bool)

(assert (=> b!1178051 (= e!669737 e!669733)))

(declare-fun res!782653 () Bool)

(assert (=> b!1178051 (=> res!782653 e!669733)))

(assert (=> b!1178051 (= res!782653 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44675)

(declare-fun lt!532066 () array!76096)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!532063 () ListLongMap!17151)

(declare-fun minValue!944 () V!44675)

(declare-fun getCurrentListMapNoExtraKeys!5021 (array!76094 array!76096 (_ BitVec 32) (_ BitVec 32) V!44675 V!44675 (_ BitVec 32) Int) ListLongMap!17151)

(assert (=> b!1178051 (= lt!532063 (getCurrentListMapNoExtraKeys!5021 lt!532067 lt!532066 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!532061 () V!44675)

(assert (=> b!1178051 (= lt!532066 (array!76097 (store (arr!36694 _values!996) i!673 (ValueCellFull!14121 lt!532061)) (size!37231 _values!996)))))

(declare-fun dynLambda!2996 (Int (_ BitVec 64)) V!44675)

(assert (=> b!1178051 (= lt!532061 (dynLambda!2996 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1178051 (= lt!532074 (getCurrentListMapNoExtraKeys!5021 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1178052 () Bool)

(declare-fun res!782659 () Bool)

(assert (=> b!1178052 (=> (not res!782659) (not e!669734))))

(assert (=> b!1178052 (= res!782659 (and (= (size!37231 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37230 _keys!1208) (size!37231 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1178053 () Bool)

(declare-fun e!669744 () Bool)

(assert (=> b!1178053 (= e!669733 e!669744)))

(declare-fun res!782661 () Bool)

(assert (=> b!1178053 (=> res!782661 e!669744)))

(assert (=> b!1178053 (= res!782661 (not (validKeyInArray!0 (select (arr!36693 _keys!1208) from!1455))))))

(declare-fun lt!532071 () ListLongMap!17151)

(declare-fun lt!532062 () ListLongMap!17151)

(assert (=> b!1178053 (= lt!532071 lt!532062)))

(declare-fun -!1590 (ListLongMap!17151 (_ BitVec 64)) ListLongMap!17151)

(assert (=> b!1178053 (= lt!532062 (-!1590 lt!532072 k0!934))))

(assert (=> b!1178053 (= lt!532071 (getCurrentListMapNoExtraKeys!5021 lt!532067 lt!532066 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1178053 (= lt!532072 (getCurrentListMapNoExtraKeys!5021 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!532064 () Unit!38846)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!814 (array!76094 array!76096 (_ BitVec 32) (_ BitVec 32) V!44675 V!44675 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38846)

(assert (=> b!1178053 (= lt!532064 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!814 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1178054 () Bool)

(assert (=> b!1178054 (= e!669743 (not e!669737))))

(declare-fun res!782648 () Bool)

(assert (=> b!1178054 (=> res!782648 e!669737)))

(assert (=> b!1178054 (= res!782648 (bvsgt from!1455 i!673))))

(assert (=> b!1178054 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!532060 () Unit!38846)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76094 (_ BitVec 64) (_ BitVec 32)) Unit!38846)

(assert (=> b!1178054 (= lt!532060 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1178055 () Bool)

(declare-fun Unit!38849 () Unit!38846)

(assert (=> b!1178055 (= e!669736 Unit!38849)))

(declare-fun lt!532070 () Unit!38846)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76094 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38846)

(assert (=> b!1178055 (= lt!532070 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1178055 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!532069 () Unit!38846)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76094 (_ BitVec 32) (_ BitVec 32)) Unit!38846)

(assert (=> b!1178055 (= lt!532069 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1178055 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25932)))

(declare-fun lt!532065 () Unit!38846)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76094 (_ BitVec 64) (_ BitVec 32) List!25935) Unit!38846)

(assert (=> b!1178055 (= lt!532065 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25932))))

(assert (=> b!1178055 false))

(declare-fun b!1178056 () Bool)

(assert (=> b!1178056 (= e!669744 true)))

(assert (=> b!1178056 e!669739))

(declare-fun res!782647 () Bool)

(assert (=> b!1178056 (=> (not res!782647) (not e!669739))))

(assert (=> b!1178056 (= res!782647 (not (= (select (arr!36693 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!532073 () Unit!38846)

(assert (=> b!1178056 (= lt!532073 e!669736)))

(declare-fun c!116768 () Bool)

(assert (=> b!1178056 (= c!116768 (= (select (arr!36693 _keys!1208) from!1455) k0!934))))

(assert (=> b!1178056 e!669742))

(declare-fun res!782662 () Bool)

(assert (=> b!1178056 (=> (not res!782662) (not e!669742))))

(assert (=> b!1178056 (= res!782662 (= lt!532063 (+!3812 lt!532062 lt!532068)))))

(declare-fun get!18785 (ValueCell!14121 V!44675) V!44675)

(assert (=> b!1178056 (= lt!532068 (tuple2!19171 (select (arr!36693 _keys!1208) from!1455) (get!18785 (select (arr!36694 _values!996) from!1455) lt!532061)))))

(assert (= (and start!99588 res!782655) b!1178045))

(assert (= (and b!1178045 res!782660) b!1178052))

(assert (= (and b!1178052 res!782659) b!1178038))

(assert (= (and b!1178038 res!782658) b!1178047))

(assert (= (and b!1178047 res!782656) b!1178037))

(assert (= (and b!1178037 res!782657) b!1178050))

(assert (= (and b!1178050 res!782652) b!1178039))

(assert (= (and b!1178039 res!782654) b!1178040))

(assert (= (and b!1178040 res!782649) b!1178046))

(assert (= (and b!1178046 res!782651) b!1178054))

(assert (= (and b!1178054 (not res!782648)) b!1178051))

(assert (= (and b!1178051 (not res!782653)) b!1178053))

(assert (= (and b!1178053 (not res!782661)) b!1178056))

(assert (= (and b!1178056 res!782662) b!1178048))

(assert (= (and b!1178048 (not res!782650)) b!1178042))

(assert (= (and b!1178056 c!116768) b!1178055))

(assert (= (and b!1178056 (not c!116768)) b!1178036))

(assert (= (and b!1178056 res!782647) b!1178043))

(assert (= (and b!1178041 condMapEmpty!46319) mapIsEmpty!46319))

(assert (= (and b!1178041 (not condMapEmpty!46319)) mapNonEmpty!46319))

(get-info :version)

(assert (= (and mapNonEmpty!46319 ((_ is ValueCellFull!14121) mapValue!46319)) b!1178049))

(assert (= (and b!1178041 ((_ is ValueCellFull!14121) mapDefault!46319)) b!1178044))

(assert (= start!99588 b!1178041))

(declare-fun b_lambda!20293 () Bool)

(assert (=> (not b_lambda!20293) (not b!1178051)))

(declare-fun t!38063 () Bool)

(declare-fun tb!9951 () Bool)

(assert (=> (and start!99588 (= defaultEntry!1004 defaultEntry!1004) t!38063) tb!9951))

(declare-fun result!20461 () Bool)

(assert (=> tb!9951 (= result!20461 tp_is_empty!29661)))

(assert (=> b!1178051 t!38063))

(declare-fun b_and!41145 () Bool)

(assert (= b_and!41143 (and (=> t!38063 result!20461) b_and!41145)))

(declare-fun m!1086047 () Bool)

(assert (=> b!1178054 m!1086047))

(declare-fun m!1086049 () Bool)

(assert (=> b!1178054 m!1086049))

(declare-fun m!1086051 () Bool)

(assert (=> b!1178047 m!1086051))

(declare-fun m!1086053 () Bool)

(assert (=> b!1178055 m!1086053))

(declare-fun m!1086055 () Bool)

(assert (=> b!1178055 m!1086055))

(declare-fun m!1086057 () Bool)

(assert (=> b!1178055 m!1086057))

(declare-fun m!1086059 () Bool)

(assert (=> b!1178055 m!1086059))

(declare-fun m!1086061 () Bool)

(assert (=> b!1178055 m!1086061))

(declare-fun m!1086063 () Bool)

(assert (=> b!1178038 m!1086063))

(declare-fun m!1086065 () Bool)

(assert (=> b!1178042 m!1086065))

(declare-fun m!1086067 () Bool)

(assert (=> b!1178050 m!1086067))

(declare-fun m!1086069 () Bool)

(assert (=> b!1178039 m!1086069))

(declare-fun m!1086071 () Bool)

(assert (=> b!1178053 m!1086071))

(declare-fun m!1086073 () Bool)

(assert (=> b!1178053 m!1086073))

(declare-fun m!1086075 () Bool)

(assert (=> b!1178053 m!1086075))

(declare-fun m!1086077 () Bool)

(assert (=> b!1178053 m!1086077))

(declare-fun m!1086079 () Bool)

(assert (=> b!1178053 m!1086079))

(declare-fun m!1086081 () Bool)

(assert (=> b!1178053 m!1086081))

(assert (=> b!1178053 m!1086079))

(assert (=> b!1178048 m!1086079))

(declare-fun m!1086083 () Bool)

(assert (=> mapNonEmpty!46319 m!1086083))

(declare-fun m!1086085 () Bool)

(assert (=> b!1178043 m!1086085))

(declare-fun m!1086087 () Bool)

(assert (=> b!1178040 m!1086087))

(declare-fun m!1086089 () Bool)

(assert (=> b!1178040 m!1086089))

(declare-fun m!1086091 () Bool)

(assert (=> b!1178046 m!1086091))

(declare-fun m!1086093 () Bool)

(assert (=> b!1178045 m!1086093))

(declare-fun m!1086095 () Bool)

(assert (=> start!99588 m!1086095))

(declare-fun m!1086097 () Bool)

(assert (=> start!99588 m!1086097))

(declare-fun m!1086099 () Bool)

(assert (=> b!1178051 m!1086099))

(declare-fun m!1086101 () Bool)

(assert (=> b!1178051 m!1086101))

(declare-fun m!1086103 () Bool)

(assert (=> b!1178051 m!1086103))

(declare-fun m!1086105 () Bool)

(assert (=> b!1178051 m!1086105))

(assert (=> b!1178056 m!1086079))

(declare-fun m!1086107 () Bool)

(assert (=> b!1178056 m!1086107))

(declare-fun m!1086109 () Bool)

(assert (=> b!1178056 m!1086109))

(assert (=> b!1178056 m!1086109))

(declare-fun m!1086111 () Bool)

(assert (=> b!1178056 m!1086111))

(check-sat tp_is_empty!29661 (not mapNonEmpty!46319) (not b!1178054) (not b_lambda!20293) (not b!1178051) (not b!1178050) (not b!1178047) (not b!1178042) (not b!1178046) (not b!1178043) (not b!1178045) (not b!1178055) (not b!1178040) (not b!1178056) (not b!1178053) (not b_next!25131) (not b!1178038) (not start!99588) b_and!41145)
(check-sat b_and!41145 (not b_next!25131))
