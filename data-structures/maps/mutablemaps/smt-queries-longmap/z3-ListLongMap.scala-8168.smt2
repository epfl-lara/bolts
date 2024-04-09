; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99912 () Bool)

(assert start!99912)

(declare-fun b_free!25455 () Bool)

(declare-fun b_next!25455 () Bool)

(assert (=> start!99912 (= b_free!25455 (not b_next!25455))))

(declare-fun tp!89080 () Bool)

(declare-fun b_and!41791 () Bool)

(assert (=> start!99912 (= tp!89080 b_and!41791)))

(declare-fun b!1188302 () Bool)

(declare-fun res!790170 () Bool)

(declare-fun e!675708 () Bool)

(assert (=> b!1188302 (=> (not res!790170) (not e!675708))))

(declare-datatypes ((array!76738 0))(
  ( (array!76739 (arr!37015 (Array (_ BitVec 32) (_ BitVec 64))) (size!37552 (_ BitVec 32))) )
))
(declare-fun lt!540603 () array!76738)

(declare-datatypes ((List!26213 0))(
  ( (Nil!26210) (Cons!26209 (h!27418 (_ BitVec 64)) (t!38667 List!26213)) )
))
(declare-fun arrayNoDuplicates!0 (array!76738 (_ BitVec 32) List!26213) Bool)

(assert (=> b!1188302 (= res!790170 (arrayNoDuplicates!0 lt!540603 #b00000000000000000000000000000000 Nil!26210))))

(declare-fun b!1188303 () Bool)

(declare-fun e!675702 () Bool)

(assert (=> b!1188303 (= e!675702 e!675708)))

(declare-fun res!790176 () Bool)

(assert (=> b!1188303 (=> (not res!790176) (not e!675708))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76738 (_ BitVec 32)) Bool)

(assert (=> b!1188303 (= res!790176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540603 mask!1564))))

(declare-fun _keys!1208 () array!76738)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1188303 (= lt!540603 (array!76739 (store (arr!37015 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37552 _keys!1208)))))

(declare-fun mapNonEmpty!46805 () Bool)

(declare-fun mapRes!46805 () Bool)

(declare-fun tp!89079 () Bool)

(declare-fun e!675704 () Bool)

(assert (=> mapNonEmpty!46805 (= mapRes!46805 (and tp!89079 e!675704))))

(declare-datatypes ((V!45107 0))(
  ( (V!45108 (val!15049 Int)) )
))
(declare-datatypes ((ValueCell!14283 0))(
  ( (ValueCellFull!14283 (v!17688 V!45107)) (EmptyCell!14283) )
))
(declare-fun mapRest!46805 () (Array (_ BitVec 32) ValueCell!14283))

(declare-fun mapValue!46805 () ValueCell!14283)

(declare-datatypes ((array!76740 0))(
  ( (array!76741 (arr!37016 (Array (_ BitVec 32) ValueCell!14283)) (size!37553 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76740)

(declare-fun mapKey!46805 () (_ BitVec 32))

(assert (=> mapNonEmpty!46805 (= (arr!37016 _values!996) (store mapRest!46805 mapKey!46805 mapValue!46805))))

(declare-fun b!1188304 () Bool)

(declare-fun res!790171 () Bool)

(assert (=> b!1188304 (=> (not res!790171) (not e!675702))))

(assert (=> b!1188304 (= res!790171 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26210))))

(declare-fun b!1188305 () Bool)

(declare-fun res!790177 () Bool)

(assert (=> b!1188305 (=> (not res!790177) (not e!675702))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1188305 (= res!790177 (validKeyInArray!0 k0!934))))

(declare-fun b!1188306 () Bool)

(declare-fun e!675705 () Bool)

(assert (=> b!1188306 (= e!675708 (not e!675705))))

(declare-fun res!790169 () Bool)

(assert (=> b!1188306 (=> res!790169 e!675705)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1188306 (= res!790169 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76738 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1188306 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39354 0))(
  ( (Unit!39355) )
))
(declare-fun lt!540605 () Unit!39354)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76738 (_ BitVec 64) (_ BitVec 32)) Unit!39354)

(assert (=> b!1188306 (= lt!540605 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1188307 () Bool)

(declare-fun res!790180 () Bool)

(assert (=> b!1188307 (=> (not res!790180) (not e!675702))))

(assert (=> b!1188307 (= res!790180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!790178 () Bool)

(assert (=> start!99912 (=> (not res!790178) (not e!675702))))

(assert (=> start!99912 (= res!790178 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37552 _keys!1208))))))

(assert (=> start!99912 e!675702))

(declare-fun tp_is_empty!29985 () Bool)

(assert (=> start!99912 tp_is_empty!29985))

(declare-fun array_inv!28128 (array!76738) Bool)

(assert (=> start!99912 (array_inv!28128 _keys!1208)))

(assert (=> start!99912 true))

(assert (=> start!99912 tp!89080))

(declare-fun e!675707 () Bool)

(declare-fun array_inv!28129 (array!76740) Bool)

(assert (=> start!99912 (and (array_inv!28129 _values!996) e!675707)))

(declare-fun b!1188308 () Bool)

(declare-fun res!790179 () Bool)

(assert (=> b!1188308 (=> (not res!790179) (not e!675702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1188308 (= res!790179 (validMask!0 mask!1564))))

(declare-fun b!1188309 () Bool)

(declare-fun e!675703 () Bool)

(assert (=> b!1188309 (= e!675703 true)))

(declare-fun zeroValue!944 () V!45107)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45107)

(declare-fun lt!540602 () array!76740)

(declare-datatypes ((tuple2!19452 0))(
  ( (tuple2!19453 (_1!9736 (_ BitVec 64)) (_2!9736 V!45107)) )
))
(declare-datatypes ((List!26214 0))(
  ( (Nil!26211) (Cons!26210 (h!27419 tuple2!19452) (t!38668 List!26214)) )
))
(declare-datatypes ((ListLongMap!17433 0))(
  ( (ListLongMap!17434 (toList!8732 List!26214)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5146 (array!76738 array!76740 (_ BitVec 32) (_ BitVec 32) V!45107 V!45107 (_ BitVec 32) Int) ListLongMap!17433)

(declare-fun -!1717 (ListLongMap!17433 (_ BitVec 64)) ListLongMap!17433)

(assert (=> b!1188309 (= (getCurrentListMapNoExtraKeys!5146 lt!540603 lt!540602 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1717 (getCurrentListMapNoExtraKeys!5146 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!540601 () Unit!39354)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!923 (array!76738 array!76740 (_ BitVec 32) (_ BitVec 32) V!45107 V!45107 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39354)

(assert (=> b!1188309 (= lt!540601 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!923 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1188310 () Bool)

(assert (=> b!1188310 (= e!675705 e!675703)))

(declare-fun res!790173 () Bool)

(assert (=> b!1188310 (=> res!790173 e!675703)))

(assert (=> b!1188310 (= res!790173 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!540604 () ListLongMap!17433)

(assert (=> b!1188310 (= lt!540604 (getCurrentListMapNoExtraKeys!5146 lt!540603 lt!540602 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3103 (Int (_ BitVec 64)) V!45107)

(assert (=> b!1188310 (= lt!540602 (array!76741 (store (arr!37016 _values!996) i!673 (ValueCellFull!14283 (dynLambda!3103 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37553 _values!996)))))

(declare-fun lt!540606 () ListLongMap!17433)

(assert (=> b!1188310 (= lt!540606 (getCurrentListMapNoExtraKeys!5146 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1188311 () Bool)

(declare-fun e!675709 () Bool)

(assert (=> b!1188311 (= e!675707 (and e!675709 mapRes!46805))))

(declare-fun condMapEmpty!46805 () Bool)

(declare-fun mapDefault!46805 () ValueCell!14283)

(assert (=> b!1188311 (= condMapEmpty!46805 (= (arr!37016 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14283)) mapDefault!46805)))))

(declare-fun b!1188312 () Bool)

(assert (=> b!1188312 (= e!675704 tp_is_empty!29985)))

(declare-fun b!1188313 () Bool)

(declare-fun res!790174 () Bool)

(assert (=> b!1188313 (=> (not res!790174) (not e!675702))))

(assert (=> b!1188313 (= res!790174 (= (select (arr!37015 _keys!1208) i!673) k0!934))))

(declare-fun b!1188314 () Bool)

(declare-fun res!790175 () Bool)

(assert (=> b!1188314 (=> (not res!790175) (not e!675702))))

(assert (=> b!1188314 (= res!790175 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37552 _keys!1208))))))

(declare-fun mapIsEmpty!46805 () Bool)

(assert (=> mapIsEmpty!46805 mapRes!46805))

(declare-fun b!1188315 () Bool)

(assert (=> b!1188315 (= e!675709 tp_is_empty!29985)))

(declare-fun b!1188316 () Bool)

(declare-fun res!790172 () Bool)

(assert (=> b!1188316 (=> (not res!790172) (not e!675702))))

(assert (=> b!1188316 (= res!790172 (and (= (size!37553 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37552 _keys!1208) (size!37553 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!99912 res!790178) b!1188308))

(assert (= (and b!1188308 res!790179) b!1188316))

(assert (= (and b!1188316 res!790172) b!1188307))

(assert (= (and b!1188307 res!790180) b!1188304))

(assert (= (and b!1188304 res!790171) b!1188314))

(assert (= (and b!1188314 res!790175) b!1188305))

(assert (= (and b!1188305 res!790177) b!1188313))

(assert (= (and b!1188313 res!790174) b!1188303))

(assert (= (and b!1188303 res!790176) b!1188302))

(assert (= (and b!1188302 res!790170) b!1188306))

(assert (= (and b!1188306 (not res!790169)) b!1188310))

(assert (= (and b!1188310 (not res!790173)) b!1188309))

(assert (= (and b!1188311 condMapEmpty!46805) mapIsEmpty!46805))

(assert (= (and b!1188311 (not condMapEmpty!46805)) mapNonEmpty!46805))

(get-info :version)

(assert (= (and mapNonEmpty!46805 ((_ is ValueCellFull!14283) mapValue!46805)) b!1188312))

(assert (= (and b!1188311 ((_ is ValueCellFull!14283) mapDefault!46805)) b!1188315))

(assert (= start!99912 b!1188311))

(declare-fun b_lambda!20617 () Bool)

(assert (=> (not b_lambda!20617) (not b!1188310)))

(declare-fun t!38666 () Bool)

(declare-fun tb!10275 () Bool)

(assert (=> (and start!99912 (= defaultEntry!1004 defaultEntry!1004) t!38666) tb!10275))

(declare-fun result!21109 () Bool)

(assert (=> tb!10275 (= result!21109 tp_is_empty!29985)))

(assert (=> b!1188310 t!38666))

(declare-fun b_and!41793 () Bool)

(assert (= b_and!41791 (and (=> t!38666 result!21109) b_and!41793)))

(declare-fun m!1097147 () Bool)

(assert (=> b!1188308 m!1097147))

(declare-fun m!1097149 () Bool)

(assert (=> b!1188303 m!1097149))

(declare-fun m!1097151 () Bool)

(assert (=> b!1188303 m!1097151))

(declare-fun m!1097153 () Bool)

(assert (=> b!1188306 m!1097153))

(declare-fun m!1097155 () Bool)

(assert (=> b!1188306 m!1097155))

(declare-fun m!1097157 () Bool)

(assert (=> mapNonEmpty!46805 m!1097157))

(declare-fun m!1097159 () Bool)

(assert (=> b!1188310 m!1097159))

(declare-fun m!1097161 () Bool)

(assert (=> b!1188310 m!1097161))

(declare-fun m!1097163 () Bool)

(assert (=> b!1188310 m!1097163))

(declare-fun m!1097165 () Bool)

(assert (=> b!1188310 m!1097165))

(declare-fun m!1097167 () Bool)

(assert (=> b!1188309 m!1097167))

(declare-fun m!1097169 () Bool)

(assert (=> b!1188309 m!1097169))

(assert (=> b!1188309 m!1097169))

(declare-fun m!1097171 () Bool)

(assert (=> b!1188309 m!1097171))

(declare-fun m!1097173 () Bool)

(assert (=> b!1188309 m!1097173))

(declare-fun m!1097175 () Bool)

(assert (=> b!1188313 m!1097175))

(declare-fun m!1097177 () Bool)

(assert (=> b!1188307 m!1097177))

(declare-fun m!1097179 () Bool)

(assert (=> b!1188302 m!1097179))

(declare-fun m!1097181 () Bool)

(assert (=> b!1188305 m!1097181))

(declare-fun m!1097183 () Bool)

(assert (=> b!1188304 m!1097183))

(declare-fun m!1097185 () Bool)

(assert (=> start!99912 m!1097185))

(declare-fun m!1097187 () Bool)

(assert (=> start!99912 m!1097187))

(check-sat tp_is_empty!29985 (not b!1188305) (not b!1188306) (not b_next!25455) (not start!99912) (not b_lambda!20617) (not b!1188304) (not b!1188307) (not b!1188310) (not b!1188309) (not b!1188302) b_and!41793 (not mapNonEmpty!46805) (not b!1188303) (not b!1188308))
(check-sat b_and!41793 (not b_next!25455))
