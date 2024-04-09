; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100038 () Bool)

(assert start!100038)

(declare-fun b_free!25581 () Bool)

(declare-fun b_next!25581 () Bool)

(assert (=> start!100038 (= b_free!25581 (not b_next!25581))))

(declare-fun tp!89457 () Bool)

(declare-fun b_and!42043 () Bool)

(assert (=> start!100038 (= tp!89457 b_and!42043)))

(declare-fun mapNonEmpty!46994 () Bool)

(declare-fun mapRes!46994 () Bool)

(declare-fun tp!89458 () Bool)

(declare-fun e!677221 () Bool)

(assert (=> mapNonEmpty!46994 (= mapRes!46994 (and tp!89458 e!677221))))

(declare-fun mapKey!46994 () (_ BitVec 32))

(declare-datatypes ((V!45275 0))(
  ( (V!45276 (val!15112 Int)) )
))
(declare-datatypes ((ValueCell!14346 0))(
  ( (ValueCellFull!14346 (v!17751 V!45275)) (EmptyCell!14346) )
))
(declare-fun mapRest!46994 () (Array (_ BitVec 32) ValueCell!14346))

(declare-fun mapValue!46994 () ValueCell!14346)

(declare-datatypes ((array!76988 0))(
  ( (array!76989 (arr!37140 (Array (_ BitVec 32) ValueCell!14346)) (size!37677 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76988)

(assert (=> mapNonEmpty!46994 (= (arr!37140 _values!996) (store mapRest!46994 mapKey!46994 mapValue!46994))))

(declare-fun b!1191263 () Bool)

(declare-fun res!792446 () Bool)

(declare-fun e!677217 () Bool)

(assert (=> b!1191263 (=> (not res!792446) (not e!677217))))

(declare-datatypes ((array!76990 0))(
  ( (array!76991 (arr!37141 (Array (_ BitVec 32) (_ BitVec 64))) (size!37678 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76990)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76990 (_ BitVec 32)) Bool)

(assert (=> b!1191263 (= res!792446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1191264 () Bool)

(declare-fun res!792445 () Bool)

(assert (=> b!1191264 (=> (not res!792445) (not e!677217))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1191264 (= res!792445 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37678 _keys!1208))))))

(declare-fun b!1191265 () Bool)

(declare-fun res!792438 () Bool)

(assert (=> b!1191265 (=> (not res!792438) (not e!677217))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1191265 (= res!792438 (and (= (size!37677 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37678 _keys!1208) (size!37677 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1191266 () Bool)

(declare-fun e!677216 () Bool)

(declare-fun e!677218 () Bool)

(assert (=> b!1191266 (= e!677216 (not e!677218))))

(declare-fun res!792444 () Bool)

(assert (=> b!1191266 (=> res!792444 e!677218)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1191266 (= res!792444 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76990 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1191266 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39464 0))(
  ( (Unit!39465) )
))
(declare-fun lt!541738 () Unit!39464)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76990 (_ BitVec 64) (_ BitVec 32)) Unit!39464)

(assert (=> b!1191266 (= lt!541738 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1191267 () Bool)

(declare-fun res!792443 () Bool)

(assert (=> b!1191267 (=> (not res!792443) (not e!677216))))

(declare-fun lt!541737 () array!76990)

(declare-datatypes ((List!26320 0))(
  ( (Nil!26317) (Cons!26316 (h!27525 (_ BitVec 64)) (t!38900 List!26320)) )
))
(declare-fun arrayNoDuplicates!0 (array!76990 (_ BitVec 32) List!26320) Bool)

(assert (=> b!1191267 (= res!792443 (arrayNoDuplicates!0 lt!541737 #b00000000000000000000000000000000 Nil!26317))))

(declare-fun b!1191268 () Bool)

(assert (=> b!1191268 (= e!677217 e!677216)))

(declare-fun res!792439 () Bool)

(assert (=> b!1191268 (=> (not res!792439) (not e!677216))))

(assert (=> b!1191268 (= res!792439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541737 mask!1564))))

(assert (=> b!1191268 (= lt!541737 (array!76991 (store (arr!37141 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37678 _keys!1208)))))

(declare-fun b!1191269 () Bool)

(declare-fun e!677215 () Bool)

(declare-fun tp_is_empty!30111 () Bool)

(assert (=> b!1191269 (= e!677215 tp_is_empty!30111)))

(declare-fun b!1191270 () Bool)

(declare-fun res!792440 () Bool)

(assert (=> b!1191270 (=> (not res!792440) (not e!677217))))

(assert (=> b!1191270 (= res!792440 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26317))))

(declare-fun b!1191271 () Bool)

(declare-fun e!677220 () Bool)

(assert (=> b!1191271 (= e!677218 e!677220)))

(declare-fun res!792441 () Bool)

(assert (=> b!1191271 (=> res!792441 e!677220)))

(assert (=> b!1191271 (= res!792441 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45275)

(declare-datatypes ((tuple2!19558 0))(
  ( (tuple2!19559 (_1!9789 (_ BitVec 64)) (_2!9789 V!45275)) )
))
(declare-datatypes ((List!26321 0))(
  ( (Nil!26318) (Cons!26317 (h!27526 tuple2!19558) (t!38901 List!26321)) )
))
(declare-datatypes ((ListLongMap!17539 0))(
  ( (ListLongMap!17540 (toList!8785 List!26321)) )
))
(declare-fun lt!541740 () ListLongMap!17539)

(declare-fun lt!541735 () array!76988)

(declare-fun minValue!944 () V!45275)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5199 (array!76990 array!76988 (_ BitVec 32) (_ BitVec 32) V!45275 V!45275 (_ BitVec 32) Int) ListLongMap!17539)

(assert (=> b!1191271 (= lt!541740 (getCurrentListMapNoExtraKeys!5199 lt!541737 lt!541735 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3144 (Int (_ BitVec 64)) V!45275)

(assert (=> b!1191271 (= lt!541735 (array!76989 (store (arr!37140 _values!996) i!673 (ValueCellFull!14346 (dynLambda!3144 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37677 _values!996)))))

(declare-fun lt!541736 () ListLongMap!17539)

(assert (=> b!1191271 (= lt!541736 (getCurrentListMapNoExtraKeys!5199 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!792437 () Bool)

(assert (=> start!100038 (=> (not res!792437) (not e!677217))))

(assert (=> start!100038 (= res!792437 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37678 _keys!1208))))))

(assert (=> start!100038 e!677217))

(assert (=> start!100038 tp_is_empty!30111))

(declare-fun array_inv!28222 (array!76990) Bool)

(assert (=> start!100038 (array_inv!28222 _keys!1208)))

(assert (=> start!100038 true))

(assert (=> start!100038 tp!89457))

(declare-fun e!677219 () Bool)

(declare-fun array_inv!28223 (array!76988) Bool)

(assert (=> start!100038 (and (array_inv!28223 _values!996) e!677219)))

(declare-fun b!1191272 () Bool)

(assert (=> b!1191272 (= e!677221 tp_is_empty!30111)))

(declare-fun b!1191273 () Bool)

(declare-fun res!792442 () Bool)

(assert (=> b!1191273 (=> (not res!792442) (not e!677217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1191273 (= res!792442 (validMask!0 mask!1564))))

(declare-fun b!1191274 () Bool)

(declare-fun res!792448 () Bool)

(assert (=> b!1191274 (=> (not res!792448) (not e!677217))))

(assert (=> b!1191274 (= res!792448 (= (select (arr!37141 _keys!1208) i!673) k0!934))))

(declare-fun b!1191275 () Bool)

(assert (=> b!1191275 (= e!677220 true)))

(declare-fun -!1766 (ListLongMap!17539 (_ BitVec 64)) ListLongMap!17539)

(assert (=> b!1191275 (= (getCurrentListMapNoExtraKeys!5199 lt!541737 lt!541735 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1766 (getCurrentListMapNoExtraKeys!5199 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!541739 () Unit!39464)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!972 (array!76990 array!76988 (_ BitVec 32) (_ BitVec 32) V!45275 V!45275 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39464)

(assert (=> b!1191275 (= lt!541739 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!972 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1191276 () Bool)

(declare-fun res!792447 () Bool)

(assert (=> b!1191276 (=> (not res!792447) (not e!677217))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1191276 (= res!792447 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!46994 () Bool)

(assert (=> mapIsEmpty!46994 mapRes!46994))

(declare-fun b!1191277 () Bool)

(assert (=> b!1191277 (= e!677219 (and e!677215 mapRes!46994))))

(declare-fun condMapEmpty!46994 () Bool)

(declare-fun mapDefault!46994 () ValueCell!14346)

(assert (=> b!1191277 (= condMapEmpty!46994 (= (arr!37140 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14346)) mapDefault!46994)))))

(assert (= (and start!100038 res!792437) b!1191273))

(assert (= (and b!1191273 res!792442) b!1191265))

(assert (= (and b!1191265 res!792438) b!1191263))

(assert (= (and b!1191263 res!792446) b!1191270))

(assert (= (and b!1191270 res!792440) b!1191264))

(assert (= (and b!1191264 res!792445) b!1191276))

(assert (= (and b!1191276 res!792447) b!1191274))

(assert (= (and b!1191274 res!792448) b!1191268))

(assert (= (and b!1191268 res!792439) b!1191267))

(assert (= (and b!1191267 res!792443) b!1191266))

(assert (= (and b!1191266 (not res!792444)) b!1191271))

(assert (= (and b!1191271 (not res!792441)) b!1191275))

(assert (= (and b!1191277 condMapEmpty!46994) mapIsEmpty!46994))

(assert (= (and b!1191277 (not condMapEmpty!46994)) mapNonEmpty!46994))

(get-info :version)

(assert (= (and mapNonEmpty!46994 ((_ is ValueCellFull!14346) mapValue!46994)) b!1191272))

(assert (= (and b!1191277 ((_ is ValueCellFull!14346) mapDefault!46994)) b!1191269))

(assert (= start!100038 b!1191277))

(declare-fun b_lambda!20743 () Bool)

(assert (=> (not b_lambda!20743) (not b!1191271)))

(declare-fun t!38899 () Bool)

(declare-fun tb!10401 () Bool)

(assert (=> (and start!100038 (= defaultEntry!1004 defaultEntry!1004) t!38899) tb!10401))

(declare-fun result!21361 () Bool)

(assert (=> tb!10401 (= result!21361 tp_is_empty!30111)))

(assert (=> b!1191271 t!38899))

(declare-fun b_and!42045 () Bool)

(assert (= b_and!42043 (and (=> t!38899 result!21361) b_and!42045)))

(declare-fun m!1099793 () Bool)

(assert (=> b!1191263 m!1099793))

(declare-fun m!1099795 () Bool)

(assert (=> mapNonEmpty!46994 m!1099795))

(declare-fun m!1099797 () Bool)

(assert (=> start!100038 m!1099797))

(declare-fun m!1099799 () Bool)

(assert (=> start!100038 m!1099799))

(declare-fun m!1099801 () Bool)

(assert (=> b!1191268 m!1099801))

(declare-fun m!1099803 () Bool)

(assert (=> b!1191268 m!1099803))

(declare-fun m!1099805 () Bool)

(assert (=> b!1191274 m!1099805))

(declare-fun m!1099807 () Bool)

(assert (=> b!1191266 m!1099807))

(declare-fun m!1099809 () Bool)

(assert (=> b!1191266 m!1099809))

(declare-fun m!1099811 () Bool)

(assert (=> b!1191267 m!1099811))

(declare-fun m!1099813 () Bool)

(assert (=> b!1191271 m!1099813))

(declare-fun m!1099815 () Bool)

(assert (=> b!1191271 m!1099815))

(declare-fun m!1099817 () Bool)

(assert (=> b!1191271 m!1099817))

(declare-fun m!1099819 () Bool)

(assert (=> b!1191271 m!1099819))

(declare-fun m!1099821 () Bool)

(assert (=> b!1191275 m!1099821))

(declare-fun m!1099823 () Bool)

(assert (=> b!1191275 m!1099823))

(assert (=> b!1191275 m!1099823))

(declare-fun m!1099825 () Bool)

(assert (=> b!1191275 m!1099825))

(declare-fun m!1099827 () Bool)

(assert (=> b!1191275 m!1099827))

(declare-fun m!1099829 () Bool)

(assert (=> b!1191273 m!1099829))

(declare-fun m!1099831 () Bool)

(assert (=> b!1191276 m!1099831))

(declare-fun m!1099833 () Bool)

(assert (=> b!1191270 m!1099833))

(check-sat (not b!1191275) (not b!1191267) (not b!1191270) (not b!1191273) tp_is_empty!30111 b_and!42045 (not b!1191271) (not start!100038) (not b_lambda!20743) (not b!1191276) (not b_next!25581) (not b!1191263) (not mapNonEmpty!46994) (not b!1191268) (not b!1191266))
(check-sat b_and!42045 (not b_next!25581))
