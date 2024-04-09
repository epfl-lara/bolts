; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101574 () Bool)

(assert start!101574)

(declare-fun b_free!26325 () Bool)

(declare-fun b_next!26325 () Bool)

(assert (=> start!101574 (= b_free!26325 (not b_next!26325))))

(declare-fun tp!92012 () Bool)

(declare-fun b_and!43867 () Bool)

(assert (=> start!101574 (= tp!92012 b_and!43867)))

(declare-datatypes ((array!78812 0))(
  ( (array!78813 (arr!38032 (Array (_ BitVec 32) (_ BitVec 64))) (size!38569 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78812)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun e!693308 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1220861 () Bool)

(declare-fun arrayContainsKey!0 (array!78812 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1220861 (= e!693308 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1220862 () Bool)

(declare-fun e!693307 () Bool)

(declare-fun tp_is_empty!31029 () Bool)

(assert (=> b!1220862 (= e!693307 tp_is_empty!31029)))

(declare-fun b!1220863 () Bool)

(declare-fun e!693312 () Bool)

(declare-fun e!693310 () Bool)

(assert (=> b!1220863 (= e!693312 e!693310)))

(declare-fun res!811129 () Bool)

(assert (=> b!1220863 (=> res!811129 e!693310)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1220863 (= res!811129 (not (validKeyInArray!0 (select (arr!38032 _keys!1208) from!1455))))))

(declare-datatypes ((V!46499 0))(
  ( (V!46500 (val!15571 Int)) )
))
(declare-datatypes ((tuple2!20186 0))(
  ( (tuple2!20187 (_1!10103 (_ BitVec 64)) (_2!10103 V!46499)) )
))
(declare-datatypes ((List!27001 0))(
  ( (Nil!26998) (Cons!26997 (h!28206 tuple2!20186) (t!40313 List!27001)) )
))
(declare-datatypes ((ListLongMap!18167 0))(
  ( (ListLongMap!18168 (toList!9099 List!27001)) )
))
(declare-fun lt!555249 () ListLongMap!18167)

(declare-fun lt!555250 () ListLongMap!18167)

(assert (=> b!1220863 (= lt!555249 lt!555250)))

(declare-fun lt!555246 () ListLongMap!18167)

(declare-fun -!1944 (ListLongMap!18167 (_ BitVec 64)) ListLongMap!18167)

(assert (=> b!1220863 (= lt!555250 (-!1944 lt!555246 k0!934))))

(declare-fun zeroValue!944 () V!46499)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!555245 () array!78812)

(declare-datatypes ((ValueCell!14805 0))(
  ( (ValueCellFull!14805 (v!18230 V!46499)) (EmptyCell!14805) )
))
(declare-datatypes ((array!78814 0))(
  ( (array!78815 (arr!38033 (Array (_ BitVec 32) ValueCell!14805)) (size!38570 (_ BitVec 32))) )
))
(declare-fun lt!555252 () array!78814)

(declare-fun minValue!944 () V!46499)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5497 (array!78812 array!78814 (_ BitVec 32) (_ BitVec 32) V!46499 V!46499 (_ BitVec 32) Int) ListLongMap!18167)

(assert (=> b!1220863 (= lt!555249 (getCurrentListMapNoExtraKeys!5497 lt!555245 lt!555252 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!78814)

(assert (=> b!1220863 (= lt!555246 (getCurrentListMapNoExtraKeys!5497 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40366 0))(
  ( (Unit!40367) )
))
(declare-fun lt!555251 () Unit!40366)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1146 (array!78812 array!78814 (_ BitVec 32) (_ BitVec 32) V!46499 V!46499 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40366)

(assert (=> b!1220863 (= lt!555251 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1146 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1220864 () Bool)

(declare-fun res!811130 () Bool)

(declare-fun e!693314 () Bool)

(assert (=> b!1220864 (=> (not res!811130) (not e!693314))))

(assert (=> b!1220864 (= res!811130 (validKeyInArray!0 k0!934))))

(declare-fun b!1220865 () Bool)

(declare-fun res!811127 () Bool)

(assert (=> b!1220865 (=> (not res!811127) (not e!693314))))

(assert (=> b!1220865 (= res!811127 (= (select (arr!38032 _keys!1208) i!673) k0!934))))

(declare-fun b!1220866 () Bool)

(declare-fun e!693316 () Bool)

(assert (=> b!1220866 (= e!693316 e!693312)))

(declare-fun res!811131 () Bool)

(assert (=> b!1220866 (=> res!811131 e!693312)))

(assert (=> b!1220866 (= res!811131 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!555247 () ListLongMap!18167)

(assert (=> b!1220866 (= lt!555247 (getCurrentListMapNoExtraKeys!5497 lt!555245 lt!555252 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!555244 () V!46499)

(assert (=> b!1220866 (= lt!555252 (array!78815 (store (arr!38033 _values!996) i!673 (ValueCellFull!14805 lt!555244)) (size!38570 _values!996)))))

(declare-fun dynLambda!3398 (Int (_ BitVec 64)) V!46499)

(assert (=> b!1220866 (= lt!555244 (dynLambda!3398 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!555248 () ListLongMap!18167)

(assert (=> b!1220866 (= lt!555248 (getCurrentListMapNoExtraKeys!5497 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1220867 () Bool)

(declare-fun e!693317 () Bool)

(assert (=> b!1220867 (= e!693314 e!693317)))

(declare-fun res!811139 () Bool)

(assert (=> b!1220867 (=> (not res!811139) (not e!693317))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78812 (_ BitVec 32)) Bool)

(assert (=> b!1220867 (= res!811139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!555245 mask!1564))))

(assert (=> b!1220867 (= lt!555245 (array!78813 (store (arr!38032 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38569 _keys!1208)))))

(declare-fun b!1220868 () Bool)

(declare-fun res!811137 () Bool)

(assert (=> b!1220868 (=> (not res!811137) (not e!693314))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1220868 (= res!811137 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!48433 () Bool)

(declare-fun mapRes!48433 () Bool)

(declare-fun tp!92013 () Bool)

(declare-fun e!693311 () Bool)

(assert (=> mapNonEmpty!48433 (= mapRes!48433 (and tp!92013 e!693311))))

(declare-fun mapValue!48433 () ValueCell!14805)

(declare-fun mapKey!48433 () (_ BitVec 32))

(declare-fun mapRest!48433 () (Array (_ BitVec 32) ValueCell!14805))

(assert (=> mapNonEmpty!48433 (= (arr!38033 _values!996) (store mapRest!48433 mapKey!48433 mapValue!48433))))

(declare-fun res!811138 () Bool)

(assert (=> start!101574 (=> (not res!811138) (not e!693314))))

(assert (=> start!101574 (= res!811138 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38569 _keys!1208))))))

(assert (=> start!101574 e!693314))

(assert (=> start!101574 tp_is_empty!31029))

(declare-fun array_inv!28854 (array!78812) Bool)

(assert (=> start!101574 (array_inv!28854 _keys!1208)))

(assert (=> start!101574 true))

(assert (=> start!101574 tp!92012))

(declare-fun e!693318 () Bool)

(declare-fun array_inv!28855 (array!78814) Bool)

(assert (=> start!101574 (and (array_inv!28855 _values!996) e!693318)))

(declare-fun b!1220869 () Bool)

(declare-fun e!693315 () Bool)

(assert (=> b!1220869 (= e!693310 e!693315)))

(declare-fun res!811125 () Bool)

(assert (=> b!1220869 (=> res!811125 e!693315)))

(assert (=> b!1220869 (= res!811125 (not (= (select (arr!38032 _keys!1208) from!1455) k0!934)))))

(declare-fun e!693313 () Bool)

(assert (=> b!1220869 e!693313))

(declare-fun res!811136 () Bool)

(assert (=> b!1220869 (=> (not res!811136) (not e!693313))))

(declare-fun +!4072 (ListLongMap!18167 tuple2!20186) ListLongMap!18167)

(declare-fun get!19448 (ValueCell!14805 V!46499) V!46499)

(assert (=> b!1220869 (= res!811136 (= lt!555247 (+!4072 lt!555250 (tuple2!20187 (select (arr!38032 _keys!1208) from!1455) (get!19448 (select (arr!38033 _values!996) from!1455) lt!555244)))))))

(declare-fun b!1220870 () Bool)

(declare-fun res!811135 () Bool)

(assert (=> b!1220870 (=> (not res!811135) (not e!693314))))

(assert (=> b!1220870 (= res!811135 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38569 _keys!1208))))))

(declare-fun b!1220871 () Bool)

(assert (=> b!1220871 (= e!693317 (not e!693316))))

(declare-fun res!811132 () Bool)

(assert (=> b!1220871 (=> res!811132 e!693316)))

(assert (=> b!1220871 (= res!811132 (bvsgt from!1455 i!673))))

(assert (=> b!1220871 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!555243 () Unit!40366)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78812 (_ BitVec 64) (_ BitVec 32)) Unit!40366)

(assert (=> b!1220871 (= lt!555243 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1220872 () Bool)

(declare-fun res!811124 () Bool)

(assert (=> b!1220872 (=> (not res!811124) (not e!693314))))

(declare-datatypes ((List!27002 0))(
  ( (Nil!26999) (Cons!26998 (h!28207 (_ BitVec 64)) (t!40314 List!27002)) )
))
(declare-fun arrayNoDuplicates!0 (array!78812 (_ BitVec 32) List!27002) Bool)

(assert (=> b!1220872 (= res!811124 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26999))))

(declare-fun b!1220873 () Bool)

(assert (=> b!1220873 (= e!693313 e!693308)))

(declare-fun res!811134 () Bool)

(assert (=> b!1220873 (=> res!811134 e!693308)))

(assert (=> b!1220873 (= res!811134 (not (= (select (arr!38032 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1220874 () Bool)

(declare-fun res!811133 () Bool)

(assert (=> b!1220874 (=> (not res!811133) (not e!693314))))

(assert (=> b!1220874 (= res!811133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1220875 () Bool)

(assert (=> b!1220875 (= e!693318 (and e!693307 mapRes!48433))))

(declare-fun condMapEmpty!48433 () Bool)

(declare-fun mapDefault!48433 () ValueCell!14805)

(assert (=> b!1220875 (= condMapEmpty!48433 (= (arr!38033 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14805)) mapDefault!48433)))))

(declare-fun b!1220876 () Bool)

(assert (=> b!1220876 (= e!693315 (or (bvsge (size!38569 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38569 _keys!1208)) (bvslt from!1455 (size!38569 _keys!1208))))))

(assert (=> b!1220876 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26999)))

(declare-fun lt!555253 () Unit!40366)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78812 (_ BitVec 32) (_ BitVec 32)) Unit!40366)

(assert (=> b!1220876 (= lt!555253 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1220876 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!555254 () Unit!40366)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78812 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40366)

(assert (=> b!1220876 (= lt!555254 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1220877 () Bool)

(declare-fun res!811126 () Bool)

(assert (=> b!1220877 (=> (not res!811126) (not e!693314))))

(assert (=> b!1220877 (= res!811126 (and (= (size!38570 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38569 _keys!1208) (size!38570 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1220878 () Bool)

(declare-fun res!811128 () Bool)

(assert (=> b!1220878 (=> (not res!811128) (not e!693317))))

(assert (=> b!1220878 (= res!811128 (arrayNoDuplicates!0 lt!555245 #b00000000000000000000000000000000 Nil!26999))))

(declare-fun mapIsEmpty!48433 () Bool)

(assert (=> mapIsEmpty!48433 mapRes!48433))

(declare-fun b!1220879 () Bool)

(assert (=> b!1220879 (= e!693311 tp_is_empty!31029)))

(assert (= (and start!101574 res!811138) b!1220868))

(assert (= (and b!1220868 res!811137) b!1220877))

(assert (= (and b!1220877 res!811126) b!1220874))

(assert (= (and b!1220874 res!811133) b!1220872))

(assert (= (and b!1220872 res!811124) b!1220870))

(assert (= (and b!1220870 res!811135) b!1220864))

(assert (= (and b!1220864 res!811130) b!1220865))

(assert (= (and b!1220865 res!811127) b!1220867))

(assert (= (and b!1220867 res!811139) b!1220878))

(assert (= (and b!1220878 res!811128) b!1220871))

(assert (= (and b!1220871 (not res!811132)) b!1220866))

(assert (= (and b!1220866 (not res!811131)) b!1220863))

(assert (= (and b!1220863 (not res!811129)) b!1220869))

(assert (= (and b!1220869 res!811136) b!1220873))

(assert (= (and b!1220873 (not res!811134)) b!1220861))

(assert (= (and b!1220869 (not res!811125)) b!1220876))

(assert (= (and b!1220875 condMapEmpty!48433) mapIsEmpty!48433))

(assert (= (and b!1220875 (not condMapEmpty!48433)) mapNonEmpty!48433))

(get-info :version)

(assert (= (and mapNonEmpty!48433 ((_ is ValueCellFull!14805) mapValue!48433)) b!1220879))

(assert (= (and b!1220875 ((_ is ValueCellFull!14805) mapDefault!48433)) b!1220862))

(assert (= start!101574 b!1220875))

(declare-fun b_lambda!22201 () Bool)

(assert (=> (not b_lambda!22201) (not b!1220866)))

(declare-fun t!40312 () Bool)

(declare-fun tb!11133 () Bool)

(assert (=> (and start!101574 (= defaultEntry!1004 defaultEntry!1004) t!40312) tb!11133))

(declare-fun result!22865 () Bool)

(assert (=> tb!11133 (= result!22865 tp_is_empty!31029)))

(assert (=> b!1220866 t!40312))

(declare-fun b_and!43869 () Bool)

(assert (= b_and!43867 (and (=> t!40312 result!22865) b_and!43869)))

(declare-fun m!1125745 () Bool)

(assert (=> b!1220868 m!1125745))

(declare-fun m!1125747 () Bool)

(assert (=> start!101574 m!1125747))

(declare-fun m!1125749 () Bool)

(assert (=> start!101574 m!1125749))

(declare-fun m!1125751 () Bool)

(assert (=> b!1220871 m!1125751))

(declare-fun m!1125753 () Bool)

(assert (=> b!1220871 m!1125753))

(declare-fun m!1125755 () Bool)

(assert (=> b!1220864 m!1125755))

(declare-fun m!1125757 () Bool)

(assert (=> b!1220872 m!1125757))

(declare-fun m!1125759 () Bool)

(assert (=> b!1220861 m!1125759))

(declare-fun m!1125761 () Bool)

(assert (=> b!1220867 m!1125761))

(declare-fun m!1125763 () Bool)

(assert (=> b!1220867 m!1125763))

(declare-fun m!1125765 () Bool)

(assert (=> b!1220874 m!1125765))

(declare-fun m!1125767 () Bool)

(assert (=> b!1220876 m!1125767))

(declare-fun m!1125769 () Bool)

(assert (=> b!1220876 m!1125769))

(declare-fun m!1125771 () Bool)

(assert (=> b!1220876 m!1125771))

(declare-fun m!1125773 () Bool)

(assert (=> b!1220876 m!1125773))

(declare-fun m!1125775 () Bool)

(assert (=> b!1220873 m!1125775))

(declare-fun m!1125777 () Bool)

(assert (=> b!1220878 m!1125777))

(declare-fun m!1125779 () Bool)

(assert (=> b!1220865 m!1125779))

(declare-fun m!1125781 () Bool)

(assert (=> b!1220863 m!1125781))

(declare-fun m!1125783 () Bool)

(assert (=> b!1220863 m!1125783))

(declare-fun m!1125785 () Bool)

(assert (=> b!1220863 m!1125785))

(declare-fun m!1125787 () Bool)

(assert (=> b!1220863 m!1125787))

(assert (=> b!1220863 m!1125775))

(declare-fun m!1125789 () Bool)

(assert (=> b!1220863 m!1125789))

(assert (=> b!1220863 m!1125775))

(declare-fun m!1125791 () Bool)

(assert (=> b!1220866 m!1125791))

(declare-fun m!1125793 () Bool)

(assert (=> b!1220866 m!1125793))

(declare-fun m!1125795 () Bool)

(assert (=> b!1220866 m!1125795))

(declare-fun m!1125797 () Bool)

(assert (=> b!1220866 m!1125797))

(assert (=> b!1220869 m!1125775))

(declare-fun m!1125799 () Bool)

(assert (=> b!1220869 m!1125799))

(assert (=> b!1220869 m!1125799))

(declare-fun m!1125801 () Bool)

(assert (=> b!1220869 m!1125801))

(declare-fun m!1125803 () Bool)

(assert (=> b!1220869 m!1125803))

(declare-fun m!1125805 () Bool)

(assert (=> mapNonEmpty!48433 m!1125805))

(check-sat (not b!1220876) (not mapNonEmpty!48433) (not b!1220864) (not b!1220861) (not b_next!26325) (not b!1220863) (not b!1220874) (not b!1220871) (not start!101574) (not b!1220872) (not b!1220866) (not b!1220869) tp_is_empty!31029 (not b!1220878) (not b!1220868) (not b_lambda!22201) (not b!1220867) b_and!43869)
(check-sat b_and!43869 (not b_next!26325))
