; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99708 () Bool)

(assert start!99708)

(declare-fun b_free!25251 () Bool)

(declare-fun b_next!25251 () Bool)

(assert (=> start!99708 (= b_free!25251 (not b_next!25251))))

(declare-fun tp!88467 () Bool)

(declare-fun b_and!41383 () Bool)

(assert (=> start!99708 (= tp!88467 b_and!41383)))

(declare-fun res!785596 () Bool)

(declare-fun e!672052 () Bool)

(assert (=> start!99708 (=> (not res!785596) (not e!672052))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76330 0))(
  ( (array!76331 (arr!36811 (Array (_ BitVec 32) (_ BitVec 64))) (size!37348 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76330)

(assert (=> start!99708 (= res!785596 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37348 _keys!1208))))))

(assert (=> start!99708 e!672052))

(declare-fun tp_is_empty!29781 () Bool)

(assert (=> start!99708 tp_is_empty!29781))

(declare-fun array_inv!27984 (array!76330) Bool)

(assert (=> start!99708 (array_inv!27984 _keys!1208)))

(assert (=> start!99708 true))

(assert (=> start!99708 tp!88467))

(declare-datatypes ((V!44835 0))(
  ( (V!44836 (val!14947 Int)) )
))
(declare-datatypes ((ValueCell!14181 0))(
  ( (ValueCellFull!14181 (v!17586 V!44835)) (EmptyCell!14181) )
))
(declare-datatypes ((array!76332 0))(
  ( (array!76333 (arr!36812 (Array (_ BitVec 32) ValueCell!14181)) (size!37349 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76332)

(declare-fun e!672060 () Bool)

(declare-fun array_inv!27985 (array!76332) Bool)

(assert (=> start!99708 (and (array_inv!27985 _values!996) e!672060)))

(declare-fun b!1182003 () Bool)

(declare-fun res!785598 () Bool)

(declare-fun e!672055 () Bool)

(assert (=> b!1182003 (=> (not res!785598) (not e!672055))))

(declare-fun lt!534860 () array!76330)

(declare-datatypes ((List!26034 0))(
  ( (Nil!26031) (Cons!26030 (h!27239 (_ BitVec 64)) (t!38284 List!26034)) )
))
(declare-fun arrayNoDuplicates!0 (array!76330 (_ BitVec 32) List!26034) Bool)

(assert (=> b!1182003 (= res!785598 (arrayNoDuplicates!0 lt!534860 #b00000000000000000000000000000000 Nil!26031))))

(declare-fun b!1182004 () Bool)

(declare-fun e!672051 () Bool)

(declare-fun e!672054 () Bool)

(assert (=> b!1182004 (= e!672051 e!672054)))

(declare-fun res!785599 () Bool)

(assert (=> b!1182004 (=> res!785599 e!672054)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1182004 (= res!785599 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44835)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!534859 () array!76332)

(declare-datatypes ((tuple2!19272 0))(
  ( (tuple2!19273 (_1!9646 (_ BitVec 64)) (_2!9646 V!44835)) )
))
(declare-datatypes ((List!26035 0))(
  ( (Nil!26032) (Cons!26031 (h!27240 tuple2!19272) (t!38285 List!26035)) )
))
(declare-datatypes ((ListLongMap!17253 0))(
  ( (ListLongMap!17254 (toList!8642 List!26035)) )
))
(declare-fun lt!534866 () ListLongMap!17253)

(declare-fun minValue!944 () V!44835)

(declare-fun getCurrentListMapNoExtraKeys!5065 (array!76330 array!76332 (_ BitVec 32) (_ BitVec 32) V!44835 V!44835 (_ BitVec 32) Int) ListLongMap!17253)

(assert (=> b!1182004 (= lt!534866 (getCurrentListMapNoExtraKeys!5065 lt!534860 lt!534859 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!534856 () V!44835)

(assert (=> b!1182004 (= lt!534859 (array!76333 (store (arr!36812 _values!996) i!673 (ValueCellFull!14181 lt!534856)) (size!37349 _values!996)))))

(declare-fun dynLambda!3033 (Int (_ BitVec 64)) V!44835)

(assert (=> b!1182004 (= lt!534856 (dynLambda!3033 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!534852 () ListLongMap!17253)

(assert (=> b!1182004 (= lt!534852 (getCurrentListMapNoExtraKeys!5065 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1182005 () Bool)

(declare-fun e!672053 () Bool)

(declare-fun e!672058 () Bool)

(assert (=> b!1182005 (= e!672053 e!672058)))

(declare-fun res!785600 () Bool)

(assert (=> b!1182005 (=> res!785600 e!672058)))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1182005 (= res!785600 (not (= (select (arr!36811 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1182006 () Bool)

(assert (=> b!1182006 (= e!672055 (not e!672051))))

(declare-fun res!785604 () Bool)

(assert (=> b!1182006 (=> res!785604 e!672051)))

(assert (=> b!1182006 (= res!785604 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76330 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1182006 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39024 0))(
  ( (Unit!39025) )
))
(declare-fun lt!534855 () Unit!39024)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76330 (_ BitVec 64) (_ BitVec 32)) Unit!39024)

(assert (=> b!1182006 (= lt!534855 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1182007 () Bool)

(declare-fun res!785607 () Bool)

(assert (=> b!1182007 (=> (not res!785607) (not e!672052))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76330 (_ BitVec 32)) Bool)

(assert (=> b!1182007 (= res!785607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!46499 () Bool)

(declare-fun mapRes!46499 () Bool)

(assert (=> mapIsEmpty!46499 mapRes!46499))

(declare-fun b!1182008 () Bool)

(declare-fun res!785601 () Bool)

(assert (=> b!1182008 (=> (not res!785601) (not e!672052))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1182008 (= res!785601 (validMask!0 mask!1564))))

(declare-fun b!1182009 () Bool)

(declare-fun res!785595 () Bool)

(assert (=> b!1182009 (=> (not res!785595) (not e!672052))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1182009 (= res!785595 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!46499 () Bool)

(declare-fun tp!88468 () Bool)

(declare-fun e!672056 () Bool)

(assert (=> mapNonEmpty!46499 (= mapRes!46499 (and tp!88468 e!672056))))

(declare-fun mapValue!46499 () ValueCell!14181)

(declare-fun mapRest!46499 () (Array (_ BitVec 32) ValueCell!14181))

(declare-fun mapKey!46499 () (_ BitVec 32))

(assert (=> mapNonEmpty!46499 (= (arr!36812 _values!996) (store mapRest!46499 mapKey!46499 mapValue!46499))))

(declare-fun b!1182010 () Bool)

(declare-fun res!785602 () Bool)

(assert (=> b!1182010 (=> (not res!785602) (not e!672052))))

(assert (=> b!1182010 (= res!785602 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26031))))

(declare-fun b!1182011 () Bool)

(declare-fun res!785608 () Bool)

(assert (=> b!1182011 (=> (not res!785608) (not e!672052))))

(assert (=> b!1182011 (= res!785608 (and (= (size!37349 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37348 _keys!1208) (size!37349 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1182012 () Bool)

(declare-fun res!785605 () Bool)

(assert (=> b!1182012 (=> (not res!785605) (not e!672052))))

(assert (=> b!1182012 (= res!785605 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37348 _keys!1208))))))

(declare-fun b!1182013 () Bool)

(declare-fun e!672057 () Bool)

(assert (=> b!1182013 (= e!672057 tp_is_empty!29781)))

(declare-fun b!1182014 () Bool)

(assert (=> b!1182014 (= e!672058 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1182015 () Bool)

(assert (=> b!1182015 (= e!672056 tp_is_empty!29781)))

(declare-fun b!1182016 () Bool)

(declare-fun e!672050 () Bool)

(assert (=> b!1182016 (= e!672050 true)))

(declare-fun lt!534864 () ListLongMap!17253)

(declare-fun lt!534857 () ListLongMap!17253)

(declare-fun -!1631 (ListLongMap!17253 (_ BitVec 64)) ListLongMap!17253)

(assert (=> b!1182016 (= (-!1631 lt!534864 k0!934) lt!534857)))

(declare-fun lt!534868 () V!44835)

(declare-fun lt!534854 () ListLongMap!17253)

(declare-fun lt!534870 () Unit!39024)

(declare-fun addRemoveCommutativeForDiffKeys!150 (ListLongMap!17253 (_ BitVec 64) V!44835 (_ BitVec 64)) Unit!39024)

(assert (=> b!1182016 (= lt!534870 (addRemoveCommutativeForDiffKeys!150 lt!534854 (select (arr!36811 _keys!1208) from!1455) lt!534868 k0!934))))

(declare-fun lt!534867 () ListLongMap!17253)

(declare-fun lt!534858 () ListLongMap!17253)

(assert (=> b!1182016 (and (= lt!534852 lt!534864) (= lt!534858 lt!534867))))

(declare-fun lt!534869 () tuple2!19272)

(declare-fun +!3860 (ListLongMap!17253 tuple2!19272) ListLongMap!17253)

(assert (=> b!1182016 (= lt!534864 (+!3860 lt!534854 lt!534869))))

(assert (=> b!1182016 (not (= (select (arr!36811 _keys!1208) from!1455) k0!934))))

(declare-fun lt!534862 () Unit!39024)

(declare-fun e!672061 () Unit!39024)

(assert (=> b!1182016 (= lt!534862 e!672061)))

(declare-fun c!116948 () Bool)

(assert (=> b!1182016 (= c!116948 (= (select (arr!36811 _keys!1208) from!1455) k0!934))))

(assert (=> b!1182016 e!672053))

(declare-fun res!785606 () Bool)

(assert (=> b!1182016 (=> (not res!785606) (not e!672053))))

(assert (=> b!1182016 (= res!785606 (= lt!534866 lt!534857))))

(assert (=> b!1182016 (= lt!534857 (+!3860 lt!534858 lt!534869))))

(assert (=> b!1182016 (= lt!534869 (tuple2!19273 (select (arr!36811 _keys!1208) from!1455) lt!534868))))

(declare-fun get!18866 (ValueCell!14181 V!44835) V!44835)

(assert (=> b!1182016 (= lt!534868 (get!18866 (select (arr!36812 _values!996) from!1455) lt!534856))))

(declare-fun b!1182017 () Bool)

(assert (=> b!1182017 (= e!672052 e!672055)))

(declare-fun res!785597 () Bool)

(assert (=> b!1182017 (=> (not res!785597) (not e!672055))))

(assert (=> b!1182017 (= res!785597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!534860 mask!1564))))

(assert (=> b!1182017 (= lt!534860 (array!76331 (store (arr!36811 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37348 _keys!1208)))))

(declare-fun b!1182018 () Bool)

(declare-fun Unit!39026 () Unit!39024)

(assert (=> b!1182018 (= e!672061 Unit!39026)))

(declare-fun b!1182019 () Bool)

(declare-fun res!785603 () Bool)

(assert (=> b!1182019 (=> (not res!785603) (not e!672052))))

(assert (=> b!1182019 (= res!785603 (= (select (arr!36811 _keys!1208) i!673) k0!934))))

(declare-fun b!1182020 () Bool)

(assert (=> b!1182020 (= e!672054 e!672050)))

(declare-fun res!785594 () Bool)

(assert (=> b!1182020 (=> res!785594 e!672050)))

(assert (=> b!1182020 (= res!785594 (not (validKeyInArray!0 (select (arr!36811 _keys!1208) from!1455))))))

(assert (=> b!1182020 (= lt!534867 lt!534858)))

(assert (=> b!1182020 (= lt!534858 (-!1631 lt!534854 k0!934))))

(assert (=> b!1182020 (= lt!534867 (getCurrentListMapNoExtraKeys!5065 lt!534860 lt!534859 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1182020 (= lt!534854 (getCurrentListMapNoExtraKeys!5065 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!534853 () Unit!39024)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!853 (array!76330 array!76332 (_ BitVec 32) (_ BitVec 32) V!44835 V!44835 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39024)

(assert (=> b!1182020 (= lt!534853 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!853 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1182021 () Bool)

(declare-fun Unit!39027 () Unit!39024)

(assert (=> b!1182021 (= e!672061 Unit!39027)))

(declare-fun lt!534865 () Unit!39024)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76330 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39024)

(assert (=> b!1182021 (= lt!534865 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1182021 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!534863 () Unit!39024)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76330 (_ BitVec 32) (_ BitVec 32)) Unit!39024)

(assert (=> b!1182021 (= lt!534863 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1182021 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26031)))

(declare-fun lt!534861 () Unit!39024)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76330 (_ BitVec 64) (_ BitVec 32) List!26034) Unit!39024)

(assert (=> b!1182021 (= lt!534861 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26031))))

(assert (=> b!1182021 false))

(declare-fun b!1182022 () Bool)

(assert (=> b!1182022 (= e!672060 (and e!672057 mapRes!46499))))

(declare-fun condMapEmpty!46499 () Bool)

(declare-fun mapDefault!46499 () ValueCell!14181)

(assert (=> b!1182022 (= condMapEmpty!46499 (= (arr!36812 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14181)) mapDefault!46499)))))

(assert (= (and start!99708 res!785596) b!1182008))

(assert (= (and b!1182008 res!785601) b!1182011))

(assert (= (and b!1182011 res!785608) b!1182007))

(assert (= (and b!1182007 res!785607) b!1182010))

(assert (= (and b!1182010 res!785602) b!1182012))

(assert (= (and b!1182012 res!785605) b!1182009))

(assert (= (and b!1182009 res!785595) b!1182019))

(assert (= (and b!1182019 res!785603) b!1182017))

(assert (= (and b!1182017 res!785597) b!1182003))

(assert (= (and b!1182003 res!785598) b!1182006))

(assert (= (and b!1182006 (not res!785604)) b!1182004))

(assert (= (and b!1182004 (not res!785599)) b!1182020))

(assert (= (and b!1182020 (not res!785594)) b!1182016))

(assert (= (and b!1182016 res!785606) b!1182005))

(assert (= (and b!1182005 (not res!785600)) b!1182014))

(assert (= (and b!1182016 c!116948) b!1182021))

(assert (= (and b!1182016 (not c!116948)) b!1182018))

(assert (= (and b!1182022 condMapEmpty!46499) mapIsEmpty!46499))

(assert (= (and b!1182022 (not condMapEmpty!46499)) mapNonEmpty!46499))

(get-info :version)

(assert (= (and mapNonEmpty!46499 ((_ is ValueCellFull!14181) mapValue!46499)) b!1182015))

(assert (= (and b!1182022 ((_ is ValueCellFull!14181) mapDefault!46499)) b!1182013))

(assert (= start!99708 b!1182022))

(declare-fun b_lambda!20413 () Bool)

(assert (=> (not b_lambda!20413) (not b!1182004)))

(declare-fun t!38283 () Bool)

(declare-fun tb!10071 () Bool)

(assert (=> (and start!99708 (= defaultEntry!1004 defaultEntry!1004) t!38283) tb!10071))

(declare-fun result!20701 () Bool)

(assert (=> tb!10071 (= result!20701 tp_is_empty!29781)))

(assert (=> b!1182004 t!38283))

(declare-fun b_and!41385 () Bool)

(assert (= b_and!41383 (and (=> t!38283 result!20701) b_and!41385)))

(declare-fun m!1090035 () Bool)

(assert (=> b!1182014 m!1090035))

(declare-fun m!1090037 () Bool)

(assert (=> b!1182006 m!1090037))

(declare-fun m!1090039 () Bool)

(assert (=> b!1182006 m!1090039))

(declare-fun m!1090041 () Bool)

(assert (=> b!1182005 m!1090041))

(declare-fun m!1090043 () Bool)

(assert (=> start!99708 m!1090043))

(declare-fun m!1090045 () Bool)

(assert (=> start!99708 m!1090045))

(declare-fun m!1090047 () Bool)

(assert (=> b!1182010 m!1090047))

(declare-fun m!1090049 () Bool)

(assert (=> b!1182017 m!1090049))

(declare-fun m!1090051 () Bool)

(assert (=> b!1182017 m!1090051))

(declare-fun m!1090053 () Bool)

(assert (=> b!1182016 m!1090053))

(declare-fun m!1090055 () Bool)

(assert (=> b!1182016 m!1090055))

(declare-fun m!1090057 () Bool)

(assert (=> b!1182016 m!1090057))

(assert (=> b!1182016 m!1090053))

(declare-fun m!1090059 () Bool)

(assert (=> b!1182016 m!1090059))

(assert (=> b!1182016 m!1090041))

(declare-fun m!1090061 () Bool)

(assert (=> b!1182016 m!1090061))

(assert (=> b!1182016 m!1090041))

(declare-fun m!1090063 () Bool)

(assert (=> b!1182016 m!1090063))

(declare-fun m!1090065 () Bool)

(assert (=> b!1182019 m!1090065))

(declare-fun m!1090067 () Bool)

(assert (=> b!1182021 m!1090067))

(declare-fun m!1090069 () Bool)

(assert (=> b!1182021 m!1090069))

(declare-fun m!1090071 () Bool)

(assert (=> b!1182021 m!1090071))

(declare-fun m!1090073 () Bool)

(assert (=> b!1182021 m!1090073))

(declare-fun m!1090075 () Bool)

(assert (=> b!1182021 m!1090075))

(declare-fun m!1090077 () Bool)

(assert (=> mapNonEmpty!46499 m!1090077))

(declare-fun m!1090079 () Bool)

(assert (=> b!1182003 m!1090079))

(declare-fun m!1090081 () Bool)

(assert (=> b!1182004 m!1090081))

(declare-fun m!1090083 () Bool)

(assert (=> b!1182004 m!1090083))

(declare-fun m!1090085 () Bool)

(assert (=> b!1182004 m!1090085))

(declare-fun m!1090087 () Bool)

(assert (=> b!1182004 m!1090087))

(declare-fun m!1090089 () Bool)

(assert (=> b!1182020 m!1090089))

(declare-fun m!1090091 () Bool)

(assert (=> b!1182020 m!1090091))

(declare-fun m!1090093 () Bool)

(assert (=> b!1182020 m!1090093))

(declare-fun m!1090095 () Bool)

(assert (=> b!1182020 m!1090095))

(assert (=> b!1182020 m!1090041))

(declare-fun m!1090097 () Bool)

(assert (=> b!1182020 m!1090097))

(assert (=> b!1182020 m!1090041))

(declare-fun m!1090099 () Bool)

(assert (=> b!1182008 m!1090099))

(declare-fun m!1090101 () Bool)

(assert (=> b!1182007 m!1090101))

(declare-fun m!1090103 () Bool)

(assert (=> b!1182009 m!1090103))

(check-sat (not b_next!25251) (not b!1182010) (not b!1182016) (not mapNonEmpty!46499) (not b!1182006) (not b!1182017) (not b!1182020) b_and!41385 (not start!99708) (not b!1182004) (not b!1182003) (not b!1182014) (not b!1182021) (not b!1182009) tp_is_empty!29781 (not b!1182007) (not b_lambda!20413) (not b!1182008))
(check-sat b_and!41385 (not b_next!25251))
