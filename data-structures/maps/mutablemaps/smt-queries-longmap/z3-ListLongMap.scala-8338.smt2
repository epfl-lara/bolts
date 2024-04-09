; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101520 () Bool)

(assert start!101520)

(declare-fun b_free!26301 () Bool)

(declare-fun b_next!26301 () Bool)

(assert (=> start!101520 (= b_free!26301 (not b_next!26301))))

(declare-fun tp!91937 () Bool)

(declare-fun b_and!43801 () Bool)

(assert (=> start!101520 (= tp!91937 b_and!43801)))

(declare-fun b!1220001 () Bool)

(declare-fun res!810482 () Bool)

(declare-fun e!692778 () Bool)

(assert (=> b!1220001 (=> (not res!810482) (not e!692778))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1220001 (= res!810482 (validKeyInArray!0 k0!934))))

(declare-fun b!1220002 () Bool)

(declare-fun res!810484 () Bool)

(assert (=> b!1220002 (=> (not res!810484) (not e!692778))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1220002 (= res!810484 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!48394 () Bool)

(declare-fun mapRes!48394 () Bool)

(assert (=> mapIsEmpty!48394 mapRes!48394))

(declare-datatypes ((array!78762 0))(
  ( (array!78763 (arr!38008 (Array (_ BitVec 32) (_ BitVec 64))) (size!38545 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78762)

(declare-fun b!1220003 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun e!692775 () Bool)

(declare-fun arrayContainsKey!0 (array!78762 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1220003 (= e!692775 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1220004 () Bool)

(declare-fun e!692777 () Bool)

(declare-fun e!692779 () Bool)

(assert (=> b!1220004 (= e!692777 e!692779)))

(declare-fun res!810496 () Bool)

(assert (=> b!1220004 (=> res!810496 e!692779)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1220004 (= res!810496 (not (validKeyInArray!0 (select (arr!38008 _keys!1208) from!1455))))))

(declare-datatypes ((V!46467 0))(
  ( (V!46468 (val!15559 Int)) )
))
(declare-datatypes ((tuple2!20162 0))(
  ( (tuple2!20163 (_1!10091 (_ BitVec 64)) (_2!10091 V!46467)) )
))
(declare-datatypes ((List!26981 0))(
  ( (Nil!26978) (Cons!26977 (h!28186 tuple2!20162) (t!40269 List!26981)) )
))
(declare-datatypes ((ListLongMap!18143 0))(
  ( (ListLongMap!18144 (toList!9087 List!26981)) )
))
(declare-fun lt!554741 () ListLongMap!18143)

(declare-fun lt!554736 () ListLongMap!18143)

(assert (=> b!1220004 (= lt!554741 lt!554736)))

(declare-fun lt!554734 () ListLongMap!18143)

(declare-fun -!1937 (ListLongMap!18143 (_ BitVec 64)) ListLongMap!18143)

(assert (=> b!1220004 (= lt!554736 (-!1937 lt!554734 k0!934))))

(declare-fun zeroValue!944 () V!46467)

(declare-datatypes ((ValueCell!14793 0))(
  ( (ValueCellFull!14793 (v!18217 V!46467)) (EmptyCell!14793) )
))
(declare-datatypes ((array!78764 0))(
  ( (array!78765 (arr!38009 (Array (_ BitVec 32) ValueCell!14793)) (size!38546 (_ BitVec 32))) )
))
(declare-fun lt!554730 () array!78764)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!554738 () array!78762)

(declare-fun minValue!944 () V!46467)

(declare-fun getCurrentListMapNoExtraKeys!5486 (array!78762 array!78764 (_ BitVec 32) (_ BitVec 32) V!46467 V!46467 (_ BitVec 32) Int) ListLongMap!18143)

(assert (=> b!1220004 (= lt!554741 (getCurrentListMapNoExtraKeys!5486 lt!554738 lt!554730 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!78764)

(assert (=> b!1220004 (= lt!554734 (getCurrentListMapNoExtraKeys!5486 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40348 0))(
  ( (Unit!40349) )
))
(declare-fun lt!554737 () Unit!40348)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1139 (array!78762 array!78764 (_ BitVec 32) (_ BitVec 32) V!46467 V!46467 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40348)

(assert (=> b!1220004 (= lt!554737 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1139 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1220006 () Bool)

(declare-fun res!810497 () Bool)

(assert (=> b!1220006 (=> (not res!810497) (not e!692778))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78762 (_ BitVec 32)) Bool)

(assert (=> b!1220006 (= res!810497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1220007 () Bool)

(declare-fun e!692776 () Bool)

(declare-fun e!692781 () Bool)

(assert (=> b!1220007 (= e!692776 (not e!692781))))

(declare-fun res!810490 () Bool)

(assert (=> b!1220007 (=> res!810490 e!692781)))

(assert (=> b!1220007 (= res!810490 (bvsgt from!1455 i!673))))

(assert (=> b!1220007 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!554732 () Unit!40348)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78762 (_ BitVec 64) (_ BitVec 32)) Unit!40348)

(assert (=> b!1220007 (= lt!554732 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1220008 () Bool)

(declare-fun e!692773 () Bool)

(assert (=> b!1220008 (= e!692773 e!692775)))

(declare-fun res!810495 () Bool)

(assert (=> b!1220008 (=> res!810495 e!692775)))

(assert (=> b!1220008 (= res!810495 (not (= (select (arr!38008 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1220009 () Bool)

(declare-fun res!810485 () Bool)

(assert (=> b!1220009 (=> (not res!810485) (not e!692778))))

(assert (=> b!1220009 (= res!810485 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38545 _keys!1208))))))

(declare-fun b!1220010 () Bool)

(declare-fun e!692780 () Bool)

(declare-fun e!692784 () Bool)

(assert (=> b!1220010 (= e!692780 (and e!692784 mapRes!48394))))

(declare-fun condMapEmpty!48394 () Bool)

(declare-fun mapDefault!48394 () ValueCell!14793)

(assert (=> b!1220010 (= condMapEmpty!48394 (= (arr!38009 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14793)) mapDefault!48394)))))

(declare-fun b!1220011 () Bool)

(declare-fun res!810486 () Bool)

(assert (=> b!1220011 (=> (not res!810486) (not e!692776))))

(declare-datatypes ((List!26982 0))(
  ( (Nil!26979) (Cons!26978 (h!28187 (_ BitVec 64)) (t!40270 List!26982)) )
))
(declare-fun arrayNoDuplicates!0 (array!78762 (_ BitVec 32) List!26982) Bool)

(assert (=> b!1220011 (= res!810486 (arrayNoDuplicates!0 lt!554738 #b00000000000000000000000000000000 Nil!26979))))

(declare-fun b!1220012 () Bool)

(declare-fun e!692774 () Bool)

(assert (=> b!1220012 (= e!692779 e!692774)))

(declare-fun res!810489 () Bool)

(assert (=> b!1220012 (=> res!810489 e!692774)))

(assert (=> b!1220012 (= res!810489 (not (= (select (arr!38008 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1220012 e!692773))

(declare-fun res!810493 () Bool)

(assert (=> b!1220012 (=> (not res!810493) (not e!692773))))

(declare-fun lt!554740 () ListLongMap!18143)

(declare-fun lt!554731 () V!46467)

(declare-fun +!4062 (ListLongMap!18143 tuple2!20162) ListLongMap!18143)

(declare-fun get!19428 (ValueCell!14793 V!46467) V!46467)

(assert (=> b!1220012 (= res!810493 (= lt!554740 (+!4062 lt!554736 (tuple2!20163 (select (arr!38008 _keys!1208) from!1455) (get!19428 (select (arr!38009 _values!996) from!1455) lt!554731)))))))

(declare-fun b!1220013 () Bool)

(declare-fun res!810494 () Bool)

(assert (=> b!1220013 (=> (not res!810494) (not e!692778))))

(assert (=> b!1220013 (= res!810494 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26979))))

(declare-fun b!1220014 () Bool)

(assert (=> b!1220014 (= e!692781 e!692777)))

(declare-fun res!810491 () Bool)

(assert (=> b!1220014 (=> res!810491 e!692777)))

(assert (=> b!1220014 (= res!810491 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1220014 (= lt!554740 (getCurrentListMapNoExtraKeys!5486 lt!554738 lt!554730 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1220014 (= lt!554730 (array!78765 (store (arr!38009 _values!996) i!673 (ValueCellFull!14793 lt!554731)) (size!38546 _values!996)))))

(declare-fun dynLambda!3388 (Int (_ BitVec 64)) V!46467)

(assert (=> b!1220014 (= lt!554731 (dynLambda!3388 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!554735 () ListLongMap!18143)

(assert (=> b!1220014 (= lt!554735 (getCurrentListMapNoExtraKeys!5486 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1220015 () Bool)

(declare-fun res!810488 () Bool)

(assert (=> b!1220015 (=> (not res!810488) (not e!692778))))

(assert (=> b!1220015 (= res!810488 (and (= (size!38546 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38545 _keys!1208) (size!38546 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!48394 () Bool)

(declare-fun tp!91938 () Bool)

(declare-fun e!692782 () Bool)

(assert (=> mapNonEmpty!48394 (= mapRes!48394 (and tp!91938 e!692782))))

(declare-fun mapRest!48394 () (Array (_ BitVec 32) ValueCell!14793))

(declare-fun mapValue!48394 () ValueCell!14793)

(declare-fun mapKey!48394 () (_ BitVec 32))

(assert (=> mapNonEmpty!48394 (= (arr!38009 _values!996) (store mapRest!48394 mapKey!48394 mapValue!48394))))

(declare-fun b!1220016 () Bool)

(declare-fun res!810487 () Bool)

(assert (=> b!1220016 (=> (not res!810487) (not e!692778))))

(assert (=> b!1220016 (= res!810487 (= (select (arr!38008 _keys!1208) i!673) k0!934))))

(declare-fun b!1220017 () Bool)

(assert (=> b!1220017 (= e!692774 (bvslt (size!38545 _keys!1208) #b01111111111111111111111111111111))))

(assert (=> b!1220017 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26979)))

(declare-fun lt!554733 () Unit!40348)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78762 (_ BitVec 32) (_ BitVec 32)) Unit!40348)

(assert (=> b!1220017 (= lt!554733 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1220017 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!554739 () Unit!40348)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78762 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40348)

(assert (=> b!1220017 (= lt!554739 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1220018 () Bool)

(declare-fun tp_is_empty!31005 () Bool)

(assert (=> b!1220018 (= e!692784 tp_is_empty!31005)))

(declare-fun b!1220019 () Bool)

(assert (=> b!1220019 (= e!692778 e!692776)))

(declare-fun res!810492 () Bool)

(assert (=> b!1220019 (=> (not res!810492) (not e!692776))))

(assert (=> b!1220019 (= res!810492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554738 mask!1564))))

(assert (=> b!1220019 (= lt!554738 (array!78763 (store (arr!38008 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38545 _keys!1208)))))

(declare-fun b!1220005 () Bool)

(assert (=> b!1220005 (= e!692782 tp_is_empty!31005)))

(declare-fun res!810483 () Bool)

(assert (=> start!101520 (=> (not res!810483) (not e!692778))))

(assert (=> start!101520 (= res!810483 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38545 _keys!1208))))))

(assert (=> start!101520 e!692778))

(assert (=> start!101520 tp_is_empty!31005))

(declare-fun array_inv!28840 (array!78762) Bool)

(assert (=> start!101520 (array_inv!28840 _keys!1208)))

(assert (=> start!101520 true))

(assert (=> start!101520 tp!91937))

(declare-fun array_inv!28841 (array!78764) Bool)

(assert (=> start!101520 (and (array_inv!28841 _values!996) e!692780)))

(assert (= (and start!101520 res!810483) b!1220002))

(assert (= (and b!1220002 res!810484) b!1220015))

(assert (= (and b!1220015 res!810488) b!1220006))

(assert (= (and b!1220006 res!810497) b!1220013))

(assert (= (and b!1220013 res!810494) b!1220009))

(assert (= (and b!1220009 res!810485) b!1220001))

(assert (= (and b!1220001 res!810482) b!1220016))

(assert (= (and b!1220016 res!810487) b!1220019))

(assert (= (and b!1220019 res!810492) b!1220011))

(assert (= (and b!1220011 res!810486) b!1220007))

(assert (= (and b!1220007 (not res!810490)) b!1220014))

(assert (= (and b!1220014 (not res!810491)) b!1220004))

(assert (= (and b!1220004 (not res!810496)) b!1220012))

(assert (= (and b!1220012 res!810493) b!1220008))

(assert (= (and b!1220008 (not res!810495)) b!1220003))

(assert (= (and b!1220012 (not res!810489)) b!1220017))

(assert (= (and b!1220010 condMapEmpty!48394) mapIsEmpty!48394))

(assert (= (and b!1220010 (not condMapEmpty!48394)) mapNonEmpty!48394))

(get-info :version)

(assert (= (and mapNonEmpty!48394 ((_ is ValueCellFull!14793) mapValue!48394)) b!1220005))

(assert (= (and b!1220010 ((_ is ValueCellFull!14793) mapDefault!48394)) b!1220018))

(assert (= start!101520 b!1220010))

(declare-fun b_lambda!22139 () Bool)

(assert (=> (not b_lambda!22139) (not b!1220014)))

(declare-fun t!40268 () Bool)

(declare-fun tb!11109 () Bool)

(assert (=> (and start!101520 (= defaultEntry!1004 defaultEntry!1004) t!40268) tb!11109))

(declare-fun result!22815 () Bool)

(assert (=> tb!11109 (= result!22815 tp_is_empty!31005)))

(assert (=> b!1220014 t!40268))

(declare-fun b_and!43803 () Bool)

(assert (= b_and!43801 (and (=> t!40268 result!22815) b_and!43803)))

(declare-fun m!1124817 () Bool)

(assert (=> b!1220012 m!1124817))

(declare-fun m!1124819 () Bool)

(assert (=> b!1220012 m!1124819))

(assert (=> b!1220012 m!1124819))

(declare-fun m!1124821 () Bool)

(assert (=> b!1220012 m!1124821))

(declare-fun m!1124823 () Bool)

(assert (=> b!1220012 m!1124823))

(declare-fun m!1124825 () Bool)

(assert (=> b!1220013 m!1124825))

(declare-fun m!1124827 () Bool)

(assert (=> mapNonEmpty!48394 m!1124827))

(declare-fun m!1124829 () Bool)

(assert (=> b!1220019 m!1124829))

(declare-fun m!1124831 () Bool)

(assert (=> b!1220019 m!1124831))

(declare-fun m!1124833 () Bool)

(assert (=> b!1220017 m!1124833))

(declare-fun m!1124835 () Bool)

(assert (=> b!1220017 m!1124835))

(declare-fun m!1124837 () Bool)

(assert (=> b!1220017 m!1124837))

(declare-fun m!1124839 () Bool)

(assert (=> b!1220017 m!1124839))

(declare-fun m!1124841 () Bool)

(assert (=> b!1220014 m!1124841))

(declare-fun m!1124843 () Bool)

(assert (=> b!1220014 m!1124843))

(declare-fun m!1124845 () Bool)

(assert (=> b!1220014 m!1124845))

(declare-fun m!1124847 () Bool)

(assert (=> b!1220014 m!1124847))

(declare-fun m!1124849 () Bool)

(assert (=> b!1220001 m!1124849))

(declare-fun m!1124851 () Bool)

(assert (=> b!1220006 m!1124851))

(declare-fun m!1124853 () Bool)

(assert (=> b!1220007 m!1124853))

(declare-fun m!1124855 () Bool)

(assert (=> b!1220007 m!1124855))

(declare-fun m!1124857 () Bool)

(assert (=> b!1220004 m!1124857))

(assert (=> b!1220004 m!1124817))

(declare-fun m!1124859 () Bool)

(assert (=> b!1220004 m!1124859))

(declare-fun m!1124861 () Bool)

(assert (=> b!1220004 m!1124861))

(assert (=> b!1220004 m!1124817))

(declare-fun m!1124863 () Bool)

(assert (=> b!1220004 m!1124863))

(declare-fun m!1124865 () Bool)

(assert (=> b!1220004 m!1124865))

(declare-fun m!1124867 () Bool)

(assert (=> b!1220003 m!1124867))

(declare-fun m!1124869 () Bool)

(assert (=> b!1220002 m!1124869))

(assert (=> b!1220008 m!1124817))

(declare-fun m!1124871 () Bool)

(assert (=> b!1220011 m!1124871))

(declare-fun m!1124873 () Bool)

(assert (=> b!1220016 m!1124873))

(declare-fun m!1124875 () Bool)

(assert (=> start!101520 m!1124875))

(declare-fun m!1124877 () Bool)

(assert (=> start!101520 m!1124877))

(check-sat (not b!1220007) (not b!1220013) (not b!1220011) tp_is_empty!31005 (not b!1220014) (not b!1220003) (not b!1220001) (not start!101520) (not b!1220004) (not b!1220019) b_and!43803 (not b_next!26301) (not b_lambda!22139) (not b!1220002) (not b!1220006) (not mapNonEmpty!48394) (not b!1220012) (not b!1220017))
(check-sat b_and!43803 (not b_next!26301))
(get-model)

(declare-fun b_lambda!22143 () Bool)

(assert (= b_lambda!22139 (or (and start!101520 b_free!26301) b_lambda!22143)))

(check-sat (not b!1220007) (not b!1220013) (not b!1220011) tp_is_empty!31005 (not b!1220014) (not b!1220003) (not b!1220002) (not b!1220001) (not start!101520) (not b!1220004) (not b_lambda!22143) (not b!1220019) b_and!43803 (not b_next!26301) (not b!1220006) (not mapNonEmpty!48394) (not b!1220012) (not b!1220017))
(check-sat b_and!43803 (not b_next!26301))
(get-model)

(declare-fun d!133667 () Bool)

(declare-fun res!810550 () Bool)

(declare-fun e!692825 () Bool)

(assert (=> d!133667 (=> res!810550 e!692825)))

(assert (=> d!133667 (= res!810550 (= (select (arr!38008 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!133667 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!692825)))

(declare-fun b!1220085 () Bool)

(declare-fun e!692826 () Bool)

(assert (=> b!1220085 (= e!692825 e!692826)))

(declare-fun res!810551 () Bool)

(assert (=> b!1220085 (=> (not res!810551) (not e!692826))))

(assert (=> b!1220085 (= res!810551 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38545 _keys!1208)))))

(declare-fun b!1220086 () Bool)

(assert (=> b!1220086 (= e!692826 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!133667 (not res!810550)) b!1220085))

(assert (= (and b!1220085 res!810551) b!1220086))

(declare-fun m!1124941 () Bool)

(assert (=> d!133667 m!1124941))

(declare-fun m!1124943 () Bool)

(assert (=> b!1220086 m!1124943))

(assert (=> b!1220007 d!133667))

(declare-fun d!133669 () Bool)

(assert (=> d!133669 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!554780 () Unit!40348)

(declare-fun choose!13 (array!78762 (_ BitVec 64) (_ BitVec 32)) Unit!40348)

(assert (=> d!133669 (= lt!554780 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!133669 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!133669 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!554780)))

(declare-fun bs!34351 () Bool)

(assert (= bs!34351 d!133669))

(assert (=> bs!34351 m!1124853))

(declare-fun m!1124945 () Bool)

(assert (=> bs!34351 m!1124945))

(assert (=> b!1220007 d!133669))

(declare-fun b!1220097 () Bool)

(declare-fun e!692835 () Bool)

(declare-fun e!692837 () Bool)

(assert (=> b!1220097 (= e!692835 e!692837)))

(declare-fun res!810559 () Bool)

(assert (=> b!1220097 (=> (not res!810559) (not e!692837))))

(declare-fun e!692838 () Bool)

(assert (=> b!1220097 (= res!810559 (not e!692838))))

(declare-fun res!810558 () Bool)

(assert (=> b!1220097 (=> (not res!810558) (not e!692838))))

(assert (=> b!1220097 (= res!810558 (validKeyInArray!0 (select (arr!38008 _keys!1208) from!1455)))))

(declare-fun b!1220098 () Bool)

(declare-fun contains!7035 (List!26982 (_ BitVec 64)) Bool)

(assert (=> b!1220098 (= e!692838 (contains!7035 Nil!26979 (select (arr!38008 _keys!1208) from!1455)))))

(declare-fun d!133671 () Bool)

(declare-fun res!810560 () Bool)

(assert (=> d!133671 (=> res!810560 e!692835)))

(assert (=> d!133671 (= res!810560 (bvsge from!1455 (size!38545 _keys!1208)))))

(assert (=> d!133671 (= (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26979) e!692835)))

(declare-fun c!120147 () Bool)

(declare-fun bm!60684 () Bool)

(declare-fun call!60687 () Bool)

(assert (=> bm!60684 (= call!60687 (arrayNoDuplicates!0 _keys!1208 (bvadd from!1455 #b00000000000000000000000000000001) (ite c!120147 (Cons!26978 (select (arr!38008 _keys!1208) from!1455) Nil!26979) Nil!26979)))))

(declare-fun b!1220099 () Bool)

(declare-fun e!692836 () Bool)

(assert (=> b!1220099 (= e!692837 e!692836)))

(assert (=> b!1220099 (= c!120147 (validKeyInArray!0 (select (arr!38008 _keys!1208) from!1455)))))

(declare-fun b!1220100 () Bool)

(assert (=> b!1220100 (= e!692836 call!60687)))

(declare-fun b!1220101 () Bool)

(assert (=> b!1220101 (= e!692836 call!60687)))

(assert (= (and d!133671 (not res!810560)) b!1220097))

(assert (= (and b!1220097 res!810558) b!1220098))

(assert (= (and b!1220097 res!810559) b!1220099))

(assert (= (and b!1220099 c!120147) b!1220101))

(assert (= (and b!1220099 (not c!120147)) b!1220100))

(assert (= (or b!1220101 b!1220100) bm!60684))

(assert (=> b!1220097 m!1124817))

(assert (=> b!1220097 m!1124817))

(assert (=> b!1220097 m!1124859))

(assert (=> b!1220098 m!1124817))

(assert (=> b!1220098 m!1124817))

(declare-fun m!1124947 () Bool)

(assert (=> b!1220098 m!1124947))

(assert (=> bm!60684 m!1124817))

(declare-fun m!1124949 () Bool)

(assert (=> bm!60684 m!1124949))

(assert (=> b!1220099 m!1124817))

(assert (=> b!1220099 m!1124817))

(assert (=> b!1220099 m!1124859))

(assert (=> b!1220017 d!133671))

(declare-fun d!133673 () Bool)

(assert (=> d!133673 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26979)))

(declare-fun lt!554783 () Unit!40348)

(declare-fun choose!39 (array!78762 (_ BitVec 32) (_ BitVec 32)) Unit!40348)

(assert (=> d!133673 (= lt!554783 (choose!39 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> d!133673 (bvslt (size!38545 _keys!1208) #b01111111111111111111111111111111)))

(assert (=> d!133673 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455) lt!554783)))

(declare-fun bs!34352 () Bool)

(assert (= bs!34352 d!133673))

(assert (=> bs!34352 m!1124833))

(declare-fun m!1124951 () Bool)

(assert (=> bs!34352 m!1124951))

(assert (=> b!1220017 d!133673))

(declare-fun d!133675 () Bool)

(declare-fun res!810561 () Bool)

(declare-fun e!692839 () Bool)

(assert (=> d!133675 (=> res!810561 e!692839)))

(assert (=> d!133675 (= res!810561 (= (select (arr!38008 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) k0!934))))

(assert (=> d!133675 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)) e!692839)))

(declare-fun b!1220102 () Bool)

(declare-fun e!692840 () Bool)

(assert (=> b!1220102 (= e!692839 e!692840)))

(declare-fun res!810562 () Bool)

(assert (=> b!1220102 (=> (not res!810562) (not e!692840))))

(assert (=> b!1220102 (= res!810562 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38545 _keys!1208)))))

(declare-fun b!1220103 () Bool)

(assert (=> b!1220103 (= e!692840 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(assert (= (and d!133675 (not res!810561)) b!1220102))

(assert (= (and b!1220102 res!810562) b!1220103))

(declare-fun m!1124953 () Bool)

(assert (=> d!133675 m!1124953))

(declare-fun m!1124955 () Bool)

(assert (=> b!1220103 m!1124955))

(assert (=> b!1220017 d!133675))

(declare-fun d!133677 () Bool)

(assert (=> d!133677 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!554786 () Unit!40348)

(declare-fun choose!114 (array!78762 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40348)

(assert (=> d!133677 (= lt!554786 (choose!114 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> d!133677 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!133677 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)) lt!554786)))

(declare-fun bs!34353 () Bool)

(assert (= bs!34353 d!133677))

(assert (=> bs!34353 m!1124837))

(declare-fun m!1124957 () Bool)

(assert (=> bs!34353 m!1124957))

(assert (=> b!1220017 d!133677))

(declare-fun b!1220112 () Bool)

(declare-fun e!692848 () Bool)

(declare-fun call!60690 () Bool)

(assert (=> b!1220112 (= e!692848 call!60690)))

(declare-fun b!1220113 () Bool)

(declare-fun e!692847 () Bool)

(assert (=> b!1220113 (= e!692847 call!60690)))

(declare-fun bm!60687 () Bool)

(assert (=> bm!60687 (= call!60690 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1220114 () Bool)

(assert (=> b!1220114 (= e!692847 e!692848)))

(declare-fun lt!554793 () (_ BitVec 64))

(assert (=> b!1220114 (= lt!554793 (select (arr!38008 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!554795 () Unit!40348)

(assert (=> b!1220114 (= lt!554795 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!554793 #b00000000000000000000000000000000))))

(assert (=> b!1220114 (arrayContainsKey!0 _keys!1208 lt!554793 #b00000000000000000000000000000000)))

(declare-fun lt!554794 () Unit!40348)

(assert (=> b!1220114 (= lt!554794 lt!554795)))

(declare-fun res!810567 () Bool)

(declare-datatypes ((SeekEntryResult!9944 0))(
  ( (MissingZero!9944 (index!42146 (_ BitVec 32))) (Found!9944 (index!42147 (_ BitVec 32))) (Intermediate!9944 (undefined!10756 Bool) (index!42148 (_ BitVec 32)) (x!107468 (_ BitVec 32))) (Undefined!9944) (MissingVacant!9944 (index!42149 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!78762 (_ BitVec 32)) SeekEntryResult!9944)

(assert (=> b!1220114 (= res!810567 (= (seekEntryOrOpen!0 (select (arr!38008 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9944 #b00000000000000000000000000000000)))))

(assert (=> b!1220114 (=> (not res!810567) (not e!692848))))

(declare-fun b!1220115 () Bool)

(declare-fun e!692849 () Bool)

(assert (=> b!1220115 (= e!692849 e!692847)))

(declare-fun c!120150 () Bool)

(assert (=> b!1220115 (= c!120150 (validKeyInArray!0 (select (arr!38008 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!133679 () Bool)

(declare-fun res!810568 () Bool)

(assert (=> d!133679 (=> res!810568 e!692849)))

(assert (=> d!133679 (= res!810568 (bvsge #b00000000000000000000000000000000 (size!38545 _keys!1208)))))

(assert (=> d!133679 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!692849)))

(assert (= (and d!133679 (not res!810568)) b!1220115))

(assert (= (and b!1220115 c!120150) b!1220114))

(assert (= (and b!1220115 (not c!120150)) b!1220113))

(assert (= (and b!1220114 res!810567) b!1220112))

(assert (= (or b!1220112 b!1220113) bm!60687))

(declare-fun m!1124959 () Bool)

(assert (=> bm!60687 m!1124959))

(assert (=> b!1220114 m!1124941))

(declare-fun m!1124961 () Bool)

(assert (=> b!1220114 m!1124961))

(declare-fun m!1124963 () Bool)

(assert (=> b!1220114 m!1124963))

(assert (=> b!1220114 m!1124941))

(declare-fun m!1124965 () Bool)

(assert (=> b!1220114 m!1124965))

(assert (=> b!1220115 m!1124941))

(assert (=> b!1220115 m!1124941))

(declare-fun m!1124967 () Bool)

(assert (=> b!1220115 m!1124967))

(assert (=> b!1220006 d!133679))

(declare-fun d!133681 () Bool)

(assert (=> d!133681 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1220001 d!133681))

(declare-fun b!1220116 () Bool)

(declare-fun e!692851 () Bool)

(declare-fun call!60691 () Bool)

(assert (=> b!1220116 (= e!692851 call!60691)))

(declare-fun b!1220117 () Bool)

(declare-fun e!692850 () Bool)

(assert (=> b!1220117 (= e!692850 call!60691)))

(declare-fun bm!60688 () Bool)

(assert (=> bm!60688 (= call!60691 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!554738 mask!1564))))

(declare-fun b!1220118 () Bool)

(assert (=> b!1220118 (= e!692850 e!692851)))

(declare-fun lt!554796 () (_ BitVec 64))

(assert (=> b!1220118 (= lt!554796 (select (arr!38008 lt!554738) #b00000000000000000000000000000000))))

(declare-fun lt!554798 () Unit!40348)

(assert (=> b!1220118 (= lt!554798 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!554738 lt!554796 #b00000000000000000000000000000000))))

(assert (=> b!1220118 (arrayContainsKey!0 lt!554738 lt!554796 #b00000000000000000000000000000000)))

(declare-fun lt!554797 () Unit!40348)

(assert (=> b!1220118 (= lt!554797 lt!554798)))

(declare-fun res!810569 () Bool)

(assert (=> b!1220118 (= res!810569 (= (seekEntryOrOpen!0 (select (arr!38008 lt!554738) #b00000000000000000000000000000000) lt!554738 mask!1564) (Found!9944 #b00000000000000000000000000000000)))))

(assert (=> b!1220118 (=> (not res!810569) (not e!692851))))

(declare-fun b!1220119 () Bool)

(declare-fun e!692852 () Bool)

(assert (=> b!1220119 (= e!692852 e!692850)))

(declare-fun c!120151 () Bool)

(assert (=> b!1220119 (= c!120151 (validKeyInArray!0 (select (arr!38008 lt!554738) #b00000000000000000000000000000000)))))

(declare-fun d!133683 () Bool)

(declare-fun res!810570 () Bool)

(assert (=> d!133683 (=> res!810570 e!692852)))

(assert (=> d!133683 (= res!810570 (bvsge #b00000000000000000000000000000000 (size!38545 lt!554738)))))

(assert (=> d!133683 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554738 mask!1564) e!692852)))

(assert (= (and d!133683 (not res!810570)) b!1220119))

(assert (= (and b!1220119 c!120151) b!1220118))

(assert (= (and b!1220119 (not c!120151)) b!1220117))

(assert (= (and b!1220118 res!810569) b!1220116))

(assert (= (or b!1220116 b!1220117) bm!60688))

(declare-fun m!1124969 () Bool)

(assert (=> bm!60688 m!1124969))

(declare-fun m!1124971 () Bool)

(assert (=> b!1220118 m!1124971))

(declare-fun m!1124973 () Bool)

(assert (=> b!1220118 m!1124973))

(declare-fun m!1124975 () Bool)

(assert (=> b!1220118 m!1124975))

(assert (=> b!1220118 m!1124971))

(declare-fun m!1124977 () Bool)

(assert (=> b!1220118 m!1124977))

(assert (=> b!1220119 m!1124971))

(assert (=> b!1220119 m!1124971))

(declare-fun m!1124979 () Bool)

(assert (=> b!1220119 m!1124979))

(assert (=> b!1220019 d!133683))

(declare-fun b!1220120 () Bool)

(declare-fun e!692853 () Bool)

(declare-fun e!692855 () Bool)

(assert (=> b!1220120 (= e!692853 e!692855)))

(declare-fun res!810572 () Bool)

(assert (=> b!1220120 (=> (not res!810572) (not e!692855))))

(declare-fun e!692856 () Bool)

(assert (=> b!1220120 (= res!810572 (not e!692856))))

(declare-fun res!810571 () Bool)

(assert (=> b!1220120 (=> (not res!810571) (not e!692856))))

(assert (=> b!1220120 (= res!810571 (validKeyInArray!0 (select (arr!38008 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1220121 () Bool)

(assert (=> b!1220121 (= e!692856 (contains!7035 Nil!26979 (select (arr!38008 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!133685 () Bool)

(declare-fun res!810573 () Bool)

(assert (=> d!133685 (=> res!810573 e!692853)))

(assert (=> d!133685 (= res!810573 (bvsge #b00000000000000000000000000000000 (size!38545 _keys!1208)))))

(assert (=> d!133685 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26979) e!692853)))

(declare-fun bm!60689 () Bool)

(declare-fun call!60692 () Bool)

(declare-fun c!120152 () Bool)

(assert (=> bm!60689 (= call!60692 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!120152 (Cons!26978 (select (arr!38008 _keys!1208) #b00000000000000000000000000000000) Nil!26979) Nil!26979)))))

(declare-fun b!1220122 () Bool)

(declare-fun e!692854 () Bool)

(assert (=> b!1220122 (= e!692855 e!692854)))

(assert (=> b!1220122 (= c!120152 (validKeyInArray!0 (select (arr!38008 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1220123 () Bool)

(assert (=> b!1220123 (= e!692854 call!60692)))

(declare-fun b!1220124 () Bool)

(assert (=> b!1220124 (= e!692854 call!60692)))

(assert (= (and d!133685 (not res!810573)) b!1220120))

(assert (= (and b!1220120 res!810571) b!1220121))

(assert (= (and b!1220120 res!810572) b!1220122))

(assert (= (and b!1220122 c!120152) b!1220124))

(assert (= (and b!1220122 (not c!120152)) b!1220123))

(assert (= (or b!1220124 b!1220123) bm!60689))

(assert (=> b!1220120 m!1124941))

(assert (=> b!1220120 m!1124941))

(assert (=> b!1220120 m!1124967))

(assert (=> b!1220121 m!1124941))

(assert (=> b!1220121 m!1124941))

(declare-fun m!1124981 () Bool)

(assert (=> b!1220121 m!1124981))

(assert (=> bm!60689 m!1124941))

(declare-fun m!1124983 () Bool)

(assert (=> bm!60689 m!1124983))

(assert (=> b!1220122 m!1124941))

(assert (=> b!1220122 m!1124941))

(assert (=> b!1220122 m!1124967))

(assert (=> b!1220013 d!133685))

(declare-fun d!133687 () Bool)

(assert (=> d!133687 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1220002 d!133687))

(declare-fun d!133689 () Bool)

(declare-fun e!692859 () Bool)

(assert (=> d!133689 e!692859))

(declare-fun res!810579 () Bool)

(assert (=> d!133689 (=> (not res!810579) (not e!692859))))

(declare-fun lt!554810 () ListLongMap!18143)

(declare-fun contains!7036 (ListLongMap!18143 (_ BitVec 64)) Bool)

(assert (=> d!133689 (= res!810579 (contains!7036 lt!554810 (_1!10091 (tuple2!20163 (select (arr!38008 _keys!1208) from!1455) (get!19428 (select (arr!38009 _values!996) from!1455) lt!554731)))))))

(declare-fun lt!554807 () List!26981)

(assert (=> d!133689 (= lt!554810 (ListLongMap!18144 lt!554807))))

(declare-fun lt!554808 () Unit!40348)

(declare-fun lt!554809 () Unit!40348)

(assert (=> d!133689 (= lt!554808 lt!554809)))

(declare-datatypes ((Option!699 0))(
  ( (Some!698 (v!18219 V!46467)) (None!697) )
))
(declare-fun getValueByKey!648 (List!26981 (_ BitVec 64)) Option!699)

(assert (=> d!133689 (= (getValueByKey!648 lt!554807 (_1!10091 (tuple2!20163 (select (arr!38008 _keys!1208) from!1455) (get!19428 (select (arr!38009 _values!996) from!1455) lt!554731)))) (Some!698 (_2!10091 (tuple2!20163 (select (arr!38008 _keys!1208) from!1455) (get!19428 (select (arr!38009 _values!996) from!1455) lt!554731)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!323 (List!26981 (_ BitVec 64) V!46467) Unit!40348)

(assert (=> d!133689 (= lt!554809 (lemmaContainsTupThenGetReturnValue!323 lt!554807 (_1!10091 (tuple2!20163 (select (arr!38008 _keys!1208) from!1455) (get!19428 (select (arr!38009 _values!996) from!1455) lt!554731))) (_2!10091 (tuple2!20163 (select (arr!38008 _keys!1208) from!1455) (get!19428 (select (arr!38009 _values!996) from!1455) lt!554731)))))))

(declare-fun insertStrictlySorted!415 (List!26981 (_ BitVec 64) V!46467) List!26981)

(assert (=> d!133689 (= lt!554807 (insertStrictlySorted!415 (toList!9087 lt!554736) (_1!10091 (tuple2!20163 (select (arr!38008 _keys!1208) from!1455) (get!19428 (select (arr!38009 _values!996) from!1455) lt!554731))) (_2!10091 (tuple2!20163 (select (arr!38008 _keys!1208) from!1455) (get!19428 (select (arr!38009 _values!996) from!1455) lt!554731)))))))

(assert (=> d!133689 (= (+!4062 lt!554736 (tuple2!20163 (select (arr!38008 _keys!1208) from!1455) (get!19428 (select (arr!38009 _values!996) from!1455) lt!554731))) lt!554810)))

(declare-fun b!1220129 () Bool)

(declare-fun res!810578 () Bool)

(assert (=> b!1220129 (=> (not res!810578) (not e!692859))))

(assert (=> b!1220129 (= res!810578 (= (getValueByKey!648 (toList!9087 lt!554810) (_1!10091 (tuple2!20163 (select (arr!38008 _keys!1208) from!1455) (get!19428 (select (arr!38009 _values!996) from!1455) lt!554731)))) (Some!698 (_2!10091 (tuple2!20163 (select (arr!38008 _keys!1208) from!1455) (get!19428 (select (arr!38009 _values!996) from!1455) lt!554731))))))))

(declare-fun b!1220130 () Bool)

(declare-fun contains!7037 (List!26981 tuple2!20162) Bool)

(assert (=> b!1220130 (= e!692859 (contains!7037 (toList!9087 lt!554810) (tuple2!20163 (select (arr!38008 _keys!1208) from!1455) (get!19428 (select (arr!38009 _values!996) from!1455) lt!554731))))))

(assert (= (and d!133689 res!810579) b!1220129))

(assert (= (and b!1220129 res!810578) b!1220130))

(declare-fun m!1124985 () Bool)

(assert (=> d!133689 m!1124985))

(declare-fun m!1124987 () Bool)

(assert (=> d!133689 m!1124987))

(declare-fun m!1124989 () Bool)

(assert (=> d!133689 m!1124989))

(declare-fun m!1124991 () Bool)

(assert (=> d!133689 m!1124991))

(declare-fun m!1124993 () Bool)

(assert (=> b!1220129 m!1124993))

(declare-fun m!1124995 () Bool)

(assert (=> b!1220130 m!1124995))

(assert (=> b!1220012 d!133689))

(declare-fun d!133691 () Bool)

(declare-fun c!120155 () Bool)

(assert (=> d!133691 (= c!120155 ((_ is ValueCellFull!14793) (select (arr!38009 _values!996) from!1455)))))

(declare-fun e!692862 () V!46467)

(assert (=> d!133691 (= (get!19428 (select (arr!38009 _values!996) from!1455) lt!554731) e!692862)))

(declare-fun b!1220135 () Bool)

(declare-fun get!19430 (ValueCell!14793 V!46467) V!46467)

(assert (=> b!1220135 (= e!692862 (get!19430 (select (arr!38009 _values!996) from!1455) lt!554731))))

(declare-fun b!1220136 () Bool)

(declare-fun get!19431 (ValueCell!14793 V!46467) V!46467)

(assert (=> b!1220136 (= e!692862 (get!19431 (select (arr!38009 _values!996) from!1455) lt!554731))))

(assert (= (and d!133691 c!120155) b!1220135))

(assert (= (and d!133691 (not c!120155)) b!1220136))

(assert (=> b!1220135 m!1124819))

(declare-fun m!1124997 () Bool)

(assert (=> b!1220135 m!1124997))

(assert (=> b!1220136 m!1124819))

(declare-fun m!1124999 () Bool)

(assert (=> b!1220136 m!1124999))

(assert (=> b!1220012 d!133691))

(declare-fun b!1220137 () Bool)

(declare-fun e!692863 () Bool)

(declare-fun e!692865 () Bool)

(assert (=> b!1220137 (= e!692863 e!692865)))

(declare-fun res!810581 () Bool)

(assert (=> b!1220137 (=> (not res!810581) (not e!692865))))

(declare-fun e!692866 () Bool)

(assert (=> b!1220137 (= res!810581 (not e!692866))))

(declare-fun res!810580 () Bool)

(assert (=> b!1220137 (=> (not res!810580) (not e!692866))))

(assert (=> b!1220137 (= res!810580 (validKeyInArray!0 (select (arr!38008 lt!554738) #b00000000000000000000000000000000)))))

(declare-fun b!1220138 () Bool)

(assert (=> b!1220138 (= e!692866 (contains!7035 Nil!26979 (select (arr!38008 lt!554738) #b00000000000000000000000000000000)))))

(declare-fun d!133693 () Bool)

(declare-fun res!810582 () Bool)

(assert (=> d!133693 (=> res!810582 e!692863)))

(assert (=> d!133693 (= res!810582 (bvsge #b00000000000000000000000000000000 (size!38545 lt!554738)))))

(assert (=> d!133693 (= (arrayNoDuplicates!0 lt!554738 #b00000000000000000000000000000000 Nil!26979) e!692863)))

(declare-fun bm!60690 () Bool)

(declare-fun call!60693 () Bool)

(declare-fun c!120156 () Bool)

(assert (=> bm!60690 (= call!60693 (arrayNoDuplicates!0 lt!554738 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!120156 (Cons!26978 (select (arr!38008 lt!554738) #b00000000000000000000000000000000) Nil!26979) Nil!26979)))))

(declare-fun b!1220139 () Bool)

(declare-fun e!692864 () Bool)

(assert (=> b!1220139 (= e!692865 e!692864)))

(assert (=> b!1220139 (= c!120156 (validKeyInArray!0 (select (arr!38008 lt!554738) #b00000000000000000000000000000000)))))

(declare-fun b!1220140 () Bool)

(assert (=> b!1220140 (= e!692864 call!60693)))

(declare-fun b!1220141 () Bool)

(assert (=> b!1220141 (= e!692864 call!60693)))

(assert (= (and d!133693 (not res!810582)) b!1220137))

(assert (= (and b!1220137 res!810580) b!1220138))

(assert (= (and b!1220137 res!810581) b!1220139))

(assert (= (and b!1220139 c!120156) b!1220141))

(assert (= (and b!1220139 (not c!120156)) b!1220140))

(assert (= (or b!1220141 b!1220140) bm!60690))

(assert (=> b!1220137 m!1124971))

(assert (=> b!1220137 m!1124971))

(assert (=> b!1220137 m!1124979))

(assert (=> b!1220138 m!1124971))

(assert (=> b!1220138 m!1124971))

(declare-fun m!1125001 () Bool)

(assert (=> b!1220138 m!1125001))

(assert (=> bm!60690 m!1124971))

(declare-fun m!1125003 () Bool)

(assert (=> bm!60690 m!1125003))

(assert (=> b!1220139 m!1124971))

(assert (=> b!1220139 m!1124971))

(assert (=> b!1220139 m!1124979))

(assert (=> b!1220011 d!133693))

(declare-fun d!133695 () Bool)

(assert (=> d!133695 (= (validKeyInArray!0 (select (arr!38008 _keys!1208) from!1455)) (and (not (= (select (arr!38008 _keys!1208) from!1455) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38008 _keys!1208) from!1455) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1220004 d!133695))

(declare-fun b!1220148 () Bool)

(declare-fun e!692872 () Bool)

(declare-fun e!692871 () Bool)

(assert (=> b!1220148 (= e!692872 e!692871)))

(declare-fun c!120159 () Bool)

(assert (=> b!1220148 (= c!120159 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun b!1220149 () Bool)

(declare-fun call!60699 () ListLongMap!18143)

(declare-fun call!60698 () ListLongMap!18143)

(assert (=> b!1220149 (= e!692871 (= call!60699 call!60698))))

(assert (=> b!1220149 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38546 _values!996)))))

(declare-fun bm!60695 () Bool)

(assert (=> bm!60695 (= call!60698 (getCurrentListMapNoExtraKeys!5486 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1220150 () Bool)

(assert (=> b!1220150 (= e!692871 (= call!60699 (-!1937 call!60698 k0!934)))))

(assert (=> b!1220150 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38546 _values!996)))))

(declare-fun d!133697 () Bool)

(assert (=> d!133697 e!692872))

(declare-fun res!810585 () Bool)

(assert (=> d!133697 (=> (not res!810585) (not e!692872))))

(assert (=> d!133697 (= res!810585 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38545 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38545 _keys!1208))))))))

(declare-fun lt!554813 () Unit!40348)

(declare-fun choose!1832 (array!78762 array!78764 (_ BitVec 32) (_ BitVec 32) V!46467 V!46467 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40348)

(assert (=> d!133697 (= lt!554813 (choose!1832 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!133697 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38545 _keys!1208)))))

(assert (=> d!133697 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1139 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!554813)))

(declare-fun bm!60696 () Bool)

(assert (=> bm!60696 (= call!60699 (getCurrentListMapNoExtraKeys!5486 (array!78763 (store (arr!38008 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38545 _keys!1208)) (array!78765 (store (arr!38009 _values!996) i!673 (ValueCellFull!14793 (dynLambda!3388 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38546 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and d!133697 res!810585) b!1220148))

(assert (= (and b!1220148 c!120159) b!1220150))

(assert (= (and b!1220148 (not c!120159)) b!1220149))

(assert (= (or b!1220150 b!1220149) bm!60695))

(assert (= (or b!1220150 b!1220149) bm!60696))

(declare-fun b_lambda!22145 () Bool)

(assert (=> (not b_lambda!22145) (not bm!60696)))

(assert (=> bm!60696 t!40268))

(declare-fun b_and!43809 () Bool)

(assert (= b_and!43803 (and (=> t!40268 result!22815) b_and!43809)))

(assert (=> bm!60695 m!1124857))

(declare-fun m!1125005 () Bool)

(assert (=> b!1220150 m!1125005))

(declare-fun m!1125007 () Bool)

(assert (=> d!133697 m!1125007))

(assert (=> bm!60696 m!1124831))

(assert (=> bm!60696 m!1124845))

(declare-fun m!1125009 () Bool)

(assert (=> bm!60696 m!1125009))

(declare-fun m!1125011 () Bool)

(assert (=> bm!60696 m!1125011))

(assert (=> b!1220004 d!133697))

(declare-fun e!692890 () Bool)

(declare-fun b!1220175 () Bool)

(declare-fun lt!554829 () ListLongMap!18143)

(assert (=> b!1220175 (= e!692890 (= lt!554829 (getCurrentListMapNoExtraKeys!5486 lt!554738 lt!554730 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1220176 () Bool)

(declare-fun e!692887 () ListLongMap!18143)

(declare-fun call!60702 () ListLongMap!18143)

(assert (=> b!1220176 (= e!692887 call!60702)))

(declare-fun b!1220177 () Bool)

(declare-fun res!810597 () Bool)

(declare-fun e!692893 () Bool)

(assert (=> b!1220177 (=> (not res!810597) (not e!692893))))

(assert (=> b!1220177 (= res!810597 (not (contains!7036 lt!554829 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1220178 () Bool)

(declare-fun e!692892 () ListLongMap!18143)

(assert (=> b!1220178 (= e!692892 e!692887)))

(declare-fun c!120170 () Bool)

(assert (=> b!1220178 (= c!120170 (validKeyInArray!0 (select (arr!38008 lt!554738) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1220179 () Bool)

(declare-fun isEmpty!1001 (ListLongMap!18143) Bool)

(assert (=> b!1220179 (= e!692890 (isEmpty!1001 lt!554829))))

(declare-fun b!1220180 () Bool)

(assert (=> b!1220180 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38545 lt!554738)))))

(assert (=> b!1220180 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38546 lt!554730)))))

(declare-fun e!692891 () Bool)

(declare-fun apply!1009 (ListLongMap!18143 (_ BitVec 64)) V!46467)

(assert (=> b!1220180 (= e!692891 (= (apply!1009 lt!554829 (select (arr!38008 lt!554738) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19428 (select (arr!38009 lt!554730) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3388 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!133699 () Bool)

(assert (=> d!133699 e!692893))

(declare-fun res!810594 () Bool)

(assert (=> d!133699 (=> (not res!810594) (not e!692893))))

(assert (=> d!133699 (= res!810594 (not (contains!7036 lt!554829 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133699 (= lt!554829 e!692892)))

(declare-fun c!120169 () Bool)

(assert (=> d!133699 (= c!120169 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38545 lt!554738)))))

(assert (=> d!133699 (validMask!0 mask!1564)))

(assert (=> d!133699 (= (getCurrentListMapNoExtraKeys!5486 lt!554738 lt!554730 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!554829)))

(declare-fun b!1220181 () Bool)

(declare-fun e!692889 () Bool)

(assert (=> b!1220181 (= e!692889 e!692890)))

(declare-fun c!120171 () Bool)

(assert (=> b!1220181 (= c!120171 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38545 lt!554738)))))

(declare-fun bm!60699 () Bool)

(assert (=> bm!60699 (= call!60702 (getCurrentListMapNoExtraKeys!5486 lt!554738 lt!554730 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1220182 () Bool)

(assert (=> b!1220182 (= e!692893 e!692889)))

(declare-fun c!120168 () Bool)

(declare-fun e!692888 () Bool)

(assert (=> b!1220182 (= c!120168 e!692888)))

(declare-fun res!810596 () Bool)

(assert (=> b!1220182 (=> (not res!810596) (not e!692888))))

(assert (=> b!1220182 (= res!810596 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38545 lt!554738)))))

(declare-fun b!1220183 () Bool)

(declare-fun lt!554833 () Unit!40348)

(declare-fun lt!554831 () Unit!40348)

(assert (=> b!1220183 (= lt!554833 lt!554831)))

(declare-fun lt!554828 () (_ BitVec 64))

(declare-fun lt!554830 () (_ BitVec 64))

(declare-fun lt!554832 () V!46467)

(declare-fun lt!554834 () ListLongMap!18143)

(assert (=> b!1220183 (not (contains!7036 (+!4062 lt!554834 (tuple2!20163 lt!554828 lt!554832)) lt!554830))))

(declare-fun addStillNotContains!304 (ListLongMap!18143 (_ BitVec 64) V!46467 (_ BitVec 64)) Unit!40348)

(assert (=> b!1220183 (= lt!554831 (addStillNotContains!304 lt!554834 lt!554828 lt!554832 lt!554830))))

(assert (=> b!1220183 (= lt!554830 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1220183 (= lt!554832 (get!19428 (select (arr!38009 lt!554730) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3388 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1220183 (= lt!554828 (select (arr!38008 lt!554738) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1220183 (= lt!554834 call!60702)))

(assert (=> b!1220183 (= e!692887 (+!4062 call!60702 (tuple2!20163 (select (arr!38008 lt!554738) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19428 (select (arr!38009 lt!554730) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3388 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1220184 () Bool)

(assert (=> b!1220184 (= e!692889 e!692891)))

(assert (=> b!1220184 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38545 lt!554738)))))

(declare-fun res!810595 () Bool)

(assert (=> b!1220184 (= res!810595 (contains!7036 lt!554829 (select (arr!38008 lt!554738) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1220184 (=> (not res!810595) (not e!692891))))

(declare-fun b!1220185 () Bool)

(assert (=> b!1220185 (= e!692888 (validKeyInArray!0 (select (arr!38008 lt!554738) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1220185 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1220186 () Bool)

(assert (=> b!1220186 (= e!692892 (ListLongMap!18144 Nil!26978))))

(assert (= (and d!133699 c!120169) b!1220186))

(assert (= (and d!133699 (not c!120169)) b!1220178))

(assert (= (and b!1220178 c!120170) b!1220183))

(assert (= (and b!1220178 (not c!120170)) b!1220176))

(assert (= (or b!1220183 b!1220176) bm!60699))

(assert (= (and d!133699 res!810594) b!1220177))

(assert (= (and b!1220177 res!810597) b!1220182))

(assert (= (and b!1220182 res!810596) b!1220185))

(assert (= (and b!1220182 c!120168) b!1220184))

(assert (= (and b!1220182 (not c!120168)) b!1220181))

(assert (= (and b!1220184 res!810595) b!1220180))

(assert (= (and b!1220181 c!120171) b!1220175))

(assert (= (and b!1220181 (not c!120171)) b!1220179))

(declare-fun b_lambda!22147 () Bool)

(assert (=> (not b_lambda!22147) (not b!1220180)))

(assert (=> b!1220180 t!40268))

(declare-fun b_and!43811 () Bool)

(assert (= b_and!43809 (and (=> t!40268 result!22815) b_and!43811)))

(declare-fun b_lambda!22149 () Bool)

(assert (=> (not b_lambda!22149) (not b!1220183)))

(assert (=> b!1220183 t!40268))

(declare-fun b_and!43813 () Bool)

(assert (= b_and!43811 (and (=> t!40268 result!22815) b_and!43813)))

(assert (=> b!1220180 m!1124845))

(declare-fun m!1125013 () Bool)

(assert (=> b!1220180 m!1125013))

(declare-fun m!1125015 () Bool)

(assert (=> b!1220180 m!1125015))

(assert (=> b!1220180 m!1125013))

(declare-fun m!1125017 () Bool)

(assert (=> b!1220180 m!1125017))

(assert (=> b!1220180 m!1125015))

(assert (=> b!1220180 m!1124845))

(declare-fun m!1125019 () Bool)

(assert (=> b!1220180 m!1125019))

(declare-fun m!1125021 () Bool)

(assert (=> b!1220179 m!1125021))

(declare-fun m!1125023 () Bool)

(assert (=> d!133699 m!1125023))

(assert (=> d!133699 m!1124869))

(declare-fun m!1125025 () Bool)

(assert (=> bm!60699 m!1125025))

(assert (=> b!1220175 m!1125025))

(assert (=> b!1220184 m!1125013))

(assert (=> b!1220184 m!1125013))

(declare-fun m!1125027 () Bool)

(assert (=> b!1220184 m!1125027))

(assert (=> b!1220185 m!1125013))

(assert (=> b!1220185 m!1125013))

(declare-fun m!1125029 () Bool)

(assert (=> b!1220185 m!1125029))

(declare-fun m!1125031 () Bool)

(assert (=> b!1220183 m!1125031))

(declare-fun m!1125033 () Bool)

(assert (=> b!1220183 m!1125033))

(assert (=> b!1220183 m!1125015))

(assert (=> b!1220183 m!1124845))

(assert (=> b!1220183 m!1125019))

(assert (=> b!1220183 m!1125013))

(assert (=> b!1220183 m!1125015))

(declare-fun m!1125035 () Bool)

(assert (=> b!1220183 m!1125035))

(assert (=> b!1220183 m!1124845))

(assert (=> b!1220183 m!1125031))

(declare-fun m!1125037 () Bool)

(assert (=> b!1220183 m!1125037))

(assert (=> b!1220178 m!1125013))

(assert (=> b!1220178 m!1125013))

(assert (=> b!1220178 m!1125029))

(declare-fun m!1125039 () Bool)

(assert (=> b!1220177 m!1125039))

(assert (=> b!1220004 d!133699))

(declare-fun lt!554836 () ListLongMap!18143)

(declare-fun e!692897 () Bool)

(declare-fun b!1220187 () Bool)

(assert (=> b!1220187 (= e!692897 (= lt!554836 (getCurrentListMapNoExtraKeys!5486 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1220188 () Bool)

(declare-fun e!692894 () ListLongMap!18143)

(declare-fun call!60703 () ListLongMap!18143)

(assert (=> b!1220188 (= e!692894 call!60703)))

(declare-fun b!1220189 () Bool)

(declare-fun res!810601 () Bool)

(declare-fun e!692900 () Bool)

(assert (=> b!1220189 (=> (not res!810601) (not e!692900))))

(assert (=> b!1220189 (= res!810601 (not (contains!7036 lt!554836 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1220190 () Bool)

(declare-fun e!692899 () ListLongMap!18143)

(assert (=> b!1220190 (= e!692899 e!692894)))

(declare-fun c!120174 () Bool)

(assert (=> b!1220190 (= c!120174 (validKeyInArray!0 (select (arr!38008 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1220191 () Bool)

(assert (=> b!1220191 (= e!692897 (isEmpty!1001 lt!554836))))

(declare-fun b!1220192 () Bool)

(assert (=> b!1220192 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38545 _keys!1208)))))

(assert (=> b!1220192 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38546 _values!996)))))

(declare-fun e!692898 () Bool)

(assert (=> b!1220192 (= e!692898 (= (apply!1009 lt!554836 (select (arr!38008 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19428 (select (arr!38009 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3388 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!133701 () Bool)

(assert (=> d!133701 e!692900))

(declare-fun res!810598 () Bool)

(assert (=> d!133701 (=> (not res!810598) (not e!692900))))

(assert (=> d!133701 (= res!810598 (not (contains!7036 lt!554836 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133701 (= lt!554836 e!692899)))

(declare-fun c!120173 () Bool)

(assert (=> d!133701 (= c!120173 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38545 _keys!1208)))))

(assert (=> d!133701 (validMask!0 mask!1564)))

(assert (=> d!133701 (= (getCurrentListMapNoExtraKeys!5486 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!554836)))

(declare-fun b!1220193 () Bool)

(declare-fun e!692896 () Bool)

(assert (=> b!1220193 (= e!692896 e!692897)))

(declare-fun c!120175 () Bool)

(assert (=> b!1220193 (= c!120175 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38545 _keys!1208)))))

(declare-fun bm!60700 () Bool)

(assert (=> bm!60700 (= call!60703 (getCurrentListMapNoExtraKeys!5486 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1220194 () Bool)

(assert (=> b!1220194 (= e!692900 e!692896)))

(declare-fun c!120172 () Bool)

(declare-fun e!692895 () Bool)

(assert (=> b!1220194 (= c!120172 e!692895)))

(declare-fun res!810600 () Bool)

(assert (=> b!1220194 (=> (not res!810600) (not e!692895))))

(assert (=> b!1220194 (= res!810600 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38545 _keys!1208)))))

(declare-fun b!1220195 () Bool)

(declare-fun lt!554840 () Unit!40348)

(declare-fun lt!554838 () Unit!40348)

(assert (=> b!1220195 (= lt!554840 lt!554838)))

(declare-fun lt!554835 () (_ BitVec 64))

(declare-fun lt!554841 () ListLongMap!18143)

(declare-fun lt!554837 () (_ BitVec 64))

(declare-fun lt!554839 () V!46467)

(assert (=> b!1220195 (not (contains!7036 (+!4062 lt!554841 (tuple2!20163 lt!554835 lt!554839)) lt!554837))))

(assert (=> b!1220195 (= lt!554838 (addStillNotContains!304 lt!554841 lt!554835 lt!554839 lt!554837))))

(assert (=> b!1220195 (= lt!554837 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1220195 (= lt!554839 (get!19428 (select (arr!38009 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3388 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1220195 (= lt!554835 (select (arr!38008 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1220195 (= lt!554841 call!60703)))

(assert (=> b!1220195 (= e!692894 (+!4062 call!60703 (tuple2!20163 (select (arr!38008 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19428 (select (arr!38009 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3388 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1220196 () Bool)

(assert (=> b!1220196 (= e!692896 e!692898)))

(assert (=> b!1220196 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38545 _keys!1208)))))

(declare-fun res!810599 () Bool)

(assert (=> b!1220196 (= res!810599 (contains!7036 lt!554836 (select (arr!38008 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1220196 (=> (not res!810599) (not e!692898))))

(declare-fun b!1220197 () Bool)

(assert (=> b!1220197 (= e!692895 (validKeyInArray!0 (select (arr!38008 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1220197 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1220198 () Bool)

(assert (=> b!1220198 (= e!692899 (ListLongMap!18144 Nil!26978))))

(assert (= (and d!133701 c!120173) b!1220198))

(assert (= (and d!133701 (not c!120173)) b!1220190))

(assert (= (and b!1220190 c!120174) b!1220195))

(assert (= (and b!1220190 (not c!120174)) b!1220188))

(assert (= (or b!1220195 b!1220188) bm!60700))

(assert (= (and d!133701 res!810598) b!1220189))

(assert (= (and b!1220189 res!810601) b!1220194))

(assert (= (and b!1220194 res!810600) b!1220197))

(assert (= (and b!1220194 c!120172) b!1220196))

(assert (= (and b!1220194 (not c!120172)) b!1220193))

(assert (= (and b!1220196 res!810599) b!1220192))

(assert (= (and b!1220193 c!120175) b!1220187))

(assert (= (and b!1220193 (not c!120175)) b!1220191))

(declare-fun b_lambda!22151 () Bool)

(assert (=> (not b_lambda!22151) (not b!1220192)))

(assert (=> b!1220192 t!40268))

(declare-fun b_and!43815 () Bool)

(assert (= b_and!43813 (and (=> t!40268 result!22815) b_and!43815)))

(declare-fun b_lambda!22153 () Bool)

(assert (=> (not b_lambda!22153) (not b!1220195)))

(assert (=> b!1220195 t!40268))

(declare-fun b_and!43817 () Bool)

(assert (= b_and!43815 (and (=> t!40268 result!22815) b_and!43817)))

(assert (=> b!1220192 m!1124845))

(assert (=> b!1220192 m!1124953))

(declare-fun m!1125041 () Bool)

(assert (=> b!1220192 m!1125041))

(assert (=> b!1220192 m!1124953))

(declare-fun m!1125043 () Bool)

(assert (=> b!1220192 m!1125043))

(assert (=> b!1220192 m!1125041))

(assert (=> b!1220192 m!1124845))

(declare-fun m!1125045 () Bool)

(assert (=> b!1220192 m!1125045))

(declare-fun m!1125047 () Bool)

(assert (=> b!1220191 m!1125047))

(declare-fun m!1125049 () Bool)

(assert (=> d!133701 m!1125049))

(assert (=> d!133701 m!1124869))

(declare-fun m!1125051 () Bool)

(assert (=> bm!60700 m!1125051))

(assert (=> b!1220187 m!1125051))

(assert (=> b!1220196 m!1124953))

(assert (=> b!1220196 m!1124953))

(declare-fun m!1125053 () Bool)

(assert (=> b!1220196 m!1125053))

(assert (=> b!1220197 m!1124953))

(assert (=> b!1220197 m!1124953))

(declare-fun m!1125055 () Bool)

(assert (=> b!1220197 m!1125055))

(declare-fun m!1125057 () Bool)

(assert (=> b!1220195 m!1125057))

(declare-fun m!1125059 () Bool)

(assert (=> b!1220195 m!1125059))

(assert (=> b!1220195 m!1125041))

(assert (=> b!1220195 m!1124845))

(assert (=> b!1220195 m!1125045))

(assert (=> b!1220195 m!1124953))

(assert (=> b!1220195 m!1125041))

(declare-fun m!1125061 () Bool)

(assert (=> b!1220195 m!1125061))

(assert (=> b!1220195 m!1124845))

(assert (=> b!1220195 m!1125057))

(declare-fun m!1125063 () Bool)

(assert (=> b!1220195 m!1125063))

(assert (=> b!1220190 m!1124953))

(assert (=> b!1220190 m!1124953))

(assert (=> b!1220190 m!1125055))

(declare-fun m!1125065 () Bool)

(assert (=> b!1220189 m!1125065))

(assert (=> b!1220004 d!133701))

(declare-fun d!133703 () Bool)

(declare-fun lt!554844 () ListLongMap!18143)

(assert (=> d!133703 (not (contains!7036 lt!554844 k0!934))))

(declare-fun removeStrictlySorted!108 (List!26981 (_ BitVec 64)) List!26981)

(assert (=> d!133703 (= lt!554844 (ListLongMap!18144 (removeStrictlySorted!108 (toList!9087 lt!554734) k0!934)))))

(assert (=> d!133703 (= (-!1937 lt!554734 k0!934) lt!554844)))

(declare-fun bs!34354 () Bool)

(assert (= bs!34354 d!133703))

(declare-fun m!1125067 () Bool)

(assert (=> bs!34354 m!1125067))

(declare-fun m!1125069 () Bool)

(assert (=> bs!34354 m!1125069))

(assert (=> b!1220004 d!133703))

(declare-fun d!133705 () Bool)

(assert (=> d!133705 (= (array_inv!28840 _keys!1208) (bvsge (size!38545 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!101520 d!133705))

(declare-fun d!133707 () Bool)

(assert (=> d!133707 (= (array_inv!28841 _values!996) (bvsge (size!38546 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!101520 d!133707))

(declare-fun d!133709 () Bool)

(declare-fun res!810602 () Bool)

(declare-fun e!692901 () Bool)

(assert (=> d!133709 (=> res!810602 e!692901)))

(assert (=> d!133709 (= res!810602 (= (select (arr!38008 _keys!1208) i!673) k0!934))))

(assert (=> d!133709 (= (arrayContainsKey!0 _keys!1208 k0!934 i!673) e!692901)))

(declare-fun b!1220199 () Bool)

(declare-fun e!692902 () Bool)

(assert (=> b!1220199 (= e!692901 e!692902)))

(declare-fun res!810603 () Bool)

(assert (=> b!1220199 (=> (not res!810603) (not e!692902))))

(assert (=> b!1220199 (= res!810603 (bvslt (bvadd i!673 #b00000000000000000000000000000001) (size!38545 _keys!1208)))))

(declare-fun b!1220200 () Bool)

(assert (=> b!1220200 (= e!692902 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd i!673 #b00000000000000000000000000000001)))))

(assert (= (and d!133709 (not res!810602)) b!1220199))

(assert (= (and b!1220199 res!810603) b!1220200))

(assert (=> d!133709 m!1124873))

(declare-fun m!1125071 () Bool)

(assert (=> b!1220200 m!1125071))

(assert (=> b!1220003 d!133709))

(declare-fun e!692906 () Bool)

(declare-fun b!1220201 () Bool)

(declare-fun lt!554846 () ListLongMap!18143)

(assert (=> b!1220201 (= e!692906 (= lt!554846 (getCurrentListMapNoExtraKeys!5486 lt!554738 lt!554730 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1220202 () Bool)

(declare-fun e!692903 () ListLongMap!18143)

(declare-fun call!60704 () ListLongMap!18143)

(assert (=> b!1220202 (= e!692903 call!60704)))

(declare-fun b!1220203 () Bool)

(declare-fun res!810607 () Bool)

(declare-fun e!692909 () Bool)

(assert (=> b!1220203 (=> (not res!810607) (not e!692909))))

(assert (=> b!1220203 (= res!810607 (not (contains!7036 lt!554846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1220204 () Bool)

(declare-fun e!692908 () ListLongMap!18143)

(assert (=> b!1220204 (= e!692908 e!692903)))

(declare-fun c!120178 () Bool)

(assert (=> b!1220204 (= c!120178 (validKeyInArray!0 (select (arr!38008 lt!554738) from!1455)))))

(declare-fun b!1220205 () Bool)

(assert (=> b!1220205 (= e!692906 (isEmpty!1001 lt!554846))))

(declare-fun b!1220206 () Bool)

(assert (=> b!1220206 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38545 lt!554738)))))

(assert (=> b!1220206 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38546 lt!554730)))))

(declare-fun e!692907 () Bool)

(assert (=> b!1220206 (= e!692907 (= (apply!1009 lt!554846 (select (arr!38008 lt!554738) from!1455)) (get!19428 (select (arr!38009 lt!554730) from!1455) (dynLambda!3388 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!133711 () Bool)

(assert (=> d!133711 e!692909))

(declare-fun res!810604 () Bool)

(assert (=> d!133711 (=> (not res!810604) (not e!692909))))

(assert (=> d!133711 (= res!810604 (not (contains!7036 lt!554846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133711 (= lt!554846 e!692908)))

(declare-fun c!120177 () Bool)

(assert (=> d!133711 (= c!120177 (bvsge from!1455 (size!38545 lt!554738)))))

(assert (=> d!133711 (validMask!0 mask!1564)))

(assert (=> d!133711 (= (getCurrentListMapNoExtraKeys!5486 lt!554738 lt!554730 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!554846)))

(declare-fun b!1220207 () Bool)

(declare-fun e!692905 () Bool)

(assert (=> b!1220207 (= e!692905 e!692906)))

(declare-fun c!120179 () Bool)

(assert (=> b!1220207 (= c!120179 (bvslt from!1455 (size!38545 lt!554738)))))

(declare-fun bm!60701 () Bool)

(assert (=> bm!60701 (= call!60704 (getCurrentListMapNoExtraKeys!5486 lt!554738 lt!554730 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1220208 () Bool)

(assert (=> b!1220208 (= e!692909 e!692905)))

(declare-fun c!120176 () Bool)

(declare-fun e!692904 () Bool)

(assert (=> b!1220208 (= c!120176 e!692904)))

(declare-fun res!810606 () Bool)

(assert (=> b!1220208 (=> (not res!810606) (not e!692904))))

(assert (=> b!1220208 (= res!810606 (bvslt from!1455 (size!38545 lt!554738)))))

(declare-fun b!1220209 () Bool)

(declare-fun lt!554850 () Unit!40348)

(declare-fun lt!554848 () Unit!40348)

(assert (=> b!1220209 (= lt!554850 lt!554848)))

(declare-fun lt!554845 () (_ BitVec 64))

(declare-fun lt!554847 () (_ BitVec 64))

(declare-fun lt!554849 () V!46467)

(declare-fun lt!554851 () ListLongMap!18143)

(assert (=> b!1220209 (not (contains!7036 (+!4062 lt!554851 (tuple2!20163 lt!554845 lt!554849)) lt!554847))))

(assert (=> b!1220209 (= lt!554848 (addStillNotContains!304 lt!554851 lt!554845 lt!554849 lt!554847))))

(assert (=> b!1220209 (= lt!554847 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1220209 (= lt!554849 (get!19428 (select (arr!38009 lt!554730) from!1455) (dynLambda!3388 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1220209 (= lt!554845 (select (arr!38008 lt!554738) from!1455))))

(assert (=> b!1220209 (= lt!554851 call!60704)))

(assert (=> b!1220209 (= e!692903 (+!4062 call!60704 (tuple2!20163 (select (arr!38008 lt!554738) from!1455) (get!19428 (select (arr!38009 lt!554730) from!1455) (dynLambda!3388 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1220210 () Bool)

(assert (=> b!1220210 (= e!692905 e!692907)))

(assert (=> b!1220210 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38545 lt!554738)))))

(declare-fun res!810605 () Bool)

(assert (=> b!1220210 (= res!810605 (contains!7036 lt!554846 (select (arr!38008 lt!554738) from!1455)))))

(assert (=> b!1220210 (=> (not res!810605) (not e!692907))))

(declare-fun b!1220211 () Bool)

(assert (=> b!1220211 (= e!692904 (validKeyInArray!0 (select (arr!38008 lt!554738) from!1455)))))

(assert (=> b!1220211 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1220212 () Bool)

(assert (=> b!1220212 (= e!692908 (ListLongMap!18144 Nil!26978))))

(assert (= (and d!133711 c!120177) b!1220212))

(assert (= (and d!133711 (not c!120177)) b!1220204))

(assert (= (and b!1220204 c!120178) b!1220209))

(assert (= (and b!1220204 (not c!120178)) b!1220202))

(assert (= (or b!1220209 b!1220202) bm!60701))

(assert (= (and d!133711 res!810604) b!1220203))

(assert (= (and b!1220203 res!810607) b!1220208))

(assert (= (and b!1220208 res!810606) b!1220211))

(assert (= (and b!1220208 c!120176) b!1220210))

(assert (= (and b!1220208 (not c!120176)) b!1220207))

(assert (= (and b!1220210 res!810605) b!1220206))

(assert (= (and b!1220207 c!120179) b!1220201))

(assert (= (and b!1220207 (not c!120179)) b!1220205))

(declare-fun b_lambda!22155 () Bool)

(assert (=> (not b_lambda!22155) (not b!1220206)))

(assert (=> b!1220206 t!40268))

(declare-fun b_and!43819 () Bool)

(assert (= b_and!43817 (and (=> t!40268 result!22815) b_and!43819)))

(declare-fun b_lambda!22157 () Bool)

(assert (=> (not b_lambda!22157) (not b!1220209)))

(assert (=> b!1220209 t!40268))

(declare-fun b_and!43821 () Bool)

(assert (= b_and!43819 (and (=> t!40268 result!22815) b_and!43821)))

(assert (=> b!1220206 m!1124845))

(declare-fun m!1125073 () Bool)

(assert (=> b!1220206 m!1125073))

(declare-fun m!1125075 () Bool)

(assert (=> b!1220206 m!1125075))

(assert (=> b!1220206 m!1125073))

(declare-fun m!1125077 () Bool)

(assert (=> b!1220206 m!1125077))

(assert (=> b!1220206 m!1125075))

(assert (=> b!1220206 m!1124845))

(declare-fun m!1125079 () Bool)

(assert (=> b!1220206 m!1125079))

(declare-fun m!1125081 () Bool)

(assert (=> b!1220205 m!1125081))

(declare-fun m!1125083 () Bool)

(assert (=> d!133711 m!1125083))

(assert (=> d!133711 m!1124869))

(declare-fun m!1125085 () Bool)

(assert (=> bm!60701 m!1125085))

(assert (=> b!1220201 m!1125085))

(assert (=> b!1220210 m!1125073))

(assert (=> b!1220210 m!1125073))

(declare-fun m!1125087 () Bool)

(assert (=> b!1220210 m!1125087))

(assert (=> b!1220211 m!1125073))

(assert (=> b!1220211 m!1125073))

(declare-fun m!1125089 () Bool)

(assert (=> b!1220211 m!1125089))

(declare-fun m!1125091 () Bool)

(assert (=> b!1220209 m!1125091))

(declare-fun m!1125093 () Bool)

(assert (=> b!1220209 m!1125093))

(assert (=> b!1220209 m!1125075))

(assert (=> b!1220209 m!1124845))

(assert (=> b!1220209 m!1125079))

(assert (=> b!1220209 m!1125073))

(assert (=> b!1220209 m!1125075))

(declare-fun m!1125095 () Bool)

(assert (=> b!1220209 m!1125095))

(assert (=> b!1220209 m!1124845))

(assert (=> b!1220209 m!1125091))

(declare-fun m!1125097 () Bool)

(assert (=> b!1220209 m!1125097))

(assert (=> b!1220204 m!1125073))

(assert (=> b!1220204 m!1125073))

(assert (=> b!1220204 m!1125089))

(declare-fun m!1125099 () Bool)

(assert (=> b!1220203 m!1125099))

(assert (=> b!1220014 d!133711))

(declare-fun lt!554853 () ListLongMap!18143)

(declare-fun e!692913 () Bool)

(declare-fun b!1220213 () Bool)

(assert (=> b!1220213 (= e!692913 (= lt!554853 (getCurrentListMapNoExtraKeys!5486 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1220214 () Bool)

(declare-fun e!692910 () ListLongMap!18143)

(declare-fun call!60705 () ListLongMap!18143)

(assert (=> b!1220214 (= e!692910 call!60705)))

(declare-fun b!1220215 () Bool)

(declare-fun res!810611 () Bool)

(declare-fun e!692916 () Bool)

(assert (=> b!1220215 (=> (not res!810611) (not e!692916))))

(assert (=> b!1220215 (= res!810611 (not (contains!7036 lt!554853 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1220216 () Bool)

(declare-fun e!692915 () ListLongMap!18143)

(assert (=> b!1220216 (= e!692915 e!692910)))

(declare-fun c!120182 () Bool)

(assert (=> b!1220216 (= c!120182 (validKeyInArray!0 (select (arr!38008 _keys!1208) from!1455)))))

(declare-fun b!1220217 () Bool)

(assert (=> b!1220217 (= e!692913 (isEmpty!1001 lt!554853))))

(declare-fun b!1220218 () Bool)

(assert (=> b!1220218 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38545 _keys!1208)))))

(assert (=> b!1220218 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38546 _values!996)))))

(declare-fun e!692914 () Bool)

(assert (=> b!1220218 (= e!692914 (= (apply!1009 lt!554853 (select (arr!38008 _keys!1208) from!1455)) (get!19428 (select (arr!38009 _values!996) from!1455) (dynLambda!3388 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!133713 () Bool)

(assert (=> d!133713 e!692916))

(declare-fun res!810608 () Bool)

(assert (=> d!133713 (=> (not res!810608) (not e!692916))))

(assert (=> d!133713 (= res!810608 (not (contains!7036 lt!554853 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133713 (= lt!554853 e!692915)))

(declare-fun c!120181 () Bool)

(assert (=> d!133713 (= c!120181 (bvsge from!1455 (size!38545 _keys!1208)))))

(assert (=> d!133713 (validMask!0 mask!1564)))

(assert (=> d!133713 (= (getCurrentListMapNoExtraKeys!5486 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!554853)))

(declare-fun b!1220219 () Bool)

(declare-fun e!692912 () Bool)

(assert (=> b!1220219 (= e!692912 e!692913)))

(declare-fun c!120183 () Bool)

(assert (=> b!1220219 (= c!120183 (bvslt from!1455 (size!38545 _keys!1208)))))

(declare-fun bm!60702 () Bool)

(assert (=> bm!60702 (= call!60705 (getCurrentListMapNoExtraKeys!5486 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1220220 () Bool)

(assert (=> b!1220220 (= e!692916 e!692912)))

(declare-fun c!120180 () Bool)

(declare-fun e!692911 () Bool)

(assert (=> b!1220220 (= c!120180 e!692911)))

(declare-fun res!810610 () Bool)

(assert (=> b!1220220 (=> (not res!810610) (not e!692911))))

(assert (=> b!1220220 (= res!810610 (bvslt from!1455 (size!38545 _keys!1208)))))

(declare-fun b!1220221 () Bool)

(declare-fun lt!554857 () Unit!40348)

(declare-fun lt!554855 () Unit!40348)

(assert (=> b!1220221 (= lt!554857 lt!554855)))

(declare-fun lt!554852 () (_ BitVec 64))

(declare-fun lt!554854 () (_ BitVec 64))

(declare-fun lt!554858 () ListLongMap!18143)

(declare-fun lt!554856 () V!46467)

(assert (=> b!1220221 (not (contains!7036 (+!4062 lt!554858 (tuple2!20163 lt!554852 lt!554856)) lt!554854))))

(assert (=> b!1220221 (= lt!554855 (addStillNotContains!304 lt!554858 lt!554852 lt!554856 lt!554854))))

(assert (=> b!1220221 (= lt!554854 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1220221 (= lt!554856 (get!19428 (select (arr!38009 _values!996) from!1455) (dynLambda!3388 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1220221 (= lt!554852 (select (arr!38008 _keys!1208) from!1455))))

(assert (=> b!1220221 (= lt!554858 call!60705)))

(assert (=> b!1220221 (= e!692910 (+!4062 call!60705 (tuple2!20163 (select (arr!38008 _keys!1208) from!1455) (get!19428 (select (arr!38009 _values!996) from!1455) (dynLambda!3388 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1220222 () Bool)

(assert (=> b!1220222 (= e!692912 e!692914)))

(assert (=> b!1220222 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38545 _keys!1208)))))

(declare-fun res!810609 () Bool)

(assert (=> b!1220222 (= res!810609 (contains!7036 lt!554853 (select (arr!38008 _keys!1208) from!1455)))))

(assert (=> b!1220222 (=> (not res!810609) (not e!692914))))

(declare-fun b!1220223 () Bool)

(assert (=> b!1220223 (= e!692911 (validKeyInArray!0 (select (arr!38008 _keys!1208) from!1455)))))

(assert (=> b!1220223 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1220224 () Bool)

(assert (=> b!1220224 (= e!692915 (ListLongMap!18144 Nil!26978))))

(assert (= (and d!133713 c!120181) b!1220224))

(assert (= (and d!133713 (not c!120181)) b!1220216))

(assert (= (and b!1220216 c!120182) b!1220221))

(assert (= (and b!1220216 (not c!120182)) b!1220214))

(assert (= (or b!1220221 b!1220214) bm!60702))

(assert (= (and d!133713 res!810608) b!1220215))

(assert (= (and b!1220215 res!810611) b!1220220))

(assert (= (and b!1220220 res!810610) b!1220223))

(assert (= (and b!1220220 c!120180) b!1220222))

(assert (= (and b!1220220 (not c!120180)) b!1220219))

(assert (= (and b!1220222 res!810609) b!1220218))

(assert (= (and b!1220219 c!120183) b!1220213))

(assert (= (and b!1220219 (not c!120183)) b!1220217))

(declare-fun b_lambda!22159 () Bool)

(assert (=> (not b_lambda!22159) (not b!1220218)))

(assert (=> b!1220218 t!40268))

(declare-fun b_and!43823 () Bool)

(assert (= b_and!43821 (and (=> t!40268 result!22815) b_and!43823)))

(declare-fun b_lambda!22161 () Bool)

(assert (=> (not b_lambda!22161) (not b!1220221)))

(assert (=> b!1220221 t!40268))

(declare-fun b_and!43825 () Bool)

(assert (= b_and!43823 (and (=> t!40268 result!22815) b_and!43825)))

(assert (=> b!1220218 m!1124845))

(assert (=> b!1220218 m!1124817))

(assert (=> b!1220218 m!1124819))

(assert (=> b!1220218 m!1124817))

(declare-fun m!1125101 () Bool)

(assert (=> b!1220218 m!1125101))

(assert (=> b!1220218 m!1124819))

(assert (=> b!1220218 m!1124845))

(declare-fun m!1125103 () Bool)

(assert (=> b!1220218 m!1125103))

(declare-fun m!1125105 () Bool)

(assert (=> b!1220217 m!1125105))

(declare-fun m!1125107 () Bool)

(assert (=> d!133713 m!1125107))

(assert (=> d!133713 m!1124869))

(declare-fun m!1125109 () Bool)

(assert (=> bm!60702 m!1125109))

(assert (=> b!1220213 m!1125109))

(assert (=> b!1220222 m!1124817))

(assert (=> b!1220222 m!1124817))

(declare-fun m!1125111 () Bool)

(assert (=> b!1220222 m!1125111))

(assert (=> b!1220223 m!1124817))

(assert (=> b!1220223 m!1124817))

(assert (=> b!1220223 m!1124859))

(declare-fun m!1125113 () Bool)

(assert (=> b!1220221 m!1125113))

(declare-fun m!1125115 () Bool)

(assert (=> b!1220221 m!1125115))

(assert (=> b!1220221 m!1124819))

(assert (=> b!1220221 m!1124845))

(assert (=> b!1220221 m!1125103))

(assert (=> b!1220221 m!1124817))

(assert (=> b!1220221 m!1124819))

(declare-fun m!1125117 () Bool)

(assert (=> b!1220221 m!1125117))

(assert (=> b!1220221 m!1124845))

(assert (=> b!1220221 m!1125113))

(declare-fun m!1125119 () Bool)

(assert (=> b!1220221 m!1125119))

(assert (=> b!1220216 m!1124817))

(assert (=> b!1220216 m!1124817))

(assert (=> b!1220216 m!1124859))

(declare-fun m!1125121 () Bool)

(assert (=> b!1220215 m!1125121))

(assert (=> b!1220014 d!133713))

(declare-fun mapNonEmpty!48400 () Bool)

(declare-fun mapRes!48400 () Bool)

(declare-fun tp!91947 () Bool)

(declare-fun e!692922 () Bool)

(assert (=> mapNonEmpty!48400 (= mapRes!48400 (and tp!91947 e!692922))))

(declare-fun mapKey!48400 () (_ BitVec 32))

(declare-fun mapRest!48400 () (Array (_ BitVec 32) ValueCell!14793))

(declare-fun mapValue!48400 () ValueCell!14793)

(assert (=> mapNonEmpty!48400 (= mapRest!48394 (store mapRest!48400 mapKey!48400 mapValue!48400))))

(declare-fun mapIsEmpty!48400 () Bool)

(assert (=> mapIsEmpty!48400 mapRes!48400))

(declare-fun b!1220232 () Bool)

(declare-fun e!692921 () Bool)

(assert (=> b!1220232 (= e!692921 tp_is_empty!31005)))

(declare-fun condMapEmpty!48400 () Bool)

(declare-fun mapDefault!48400 () ValueCell!14793)

(assert (=> mapNonEmpty!48394 (= condMapEmpty!48400 (= mapRest!48394 ((as const (Array (_ BitVec 32) ValueCell!14793)) mapDefault!48400)))))

(assert (=> mapNonEmpty!48394 (= tp!91938 (and e!692921 mapRes!48400))))

(declare-fun b!1220231 () Bool)

(assert (=> b!1220231 (= e!692922 tp_is_empty!31005)))

(assert (= (and mapNonEmpty!48394 condMapEmpty!48400) mapIsEmpty!48400))

(assert (= (and mapNonEmpty!48394 (not condMapEmpty!48400)) mapNonEmpty!48400))

(assert (= (and mapNonEmpty!48400 ((_ is ValueCellFull!14793) mapValue!48400)) b!1220231))

(assert (= (and mapNonEmpty!48394 ((_ is ValueCellFull!14793) mapDefault!48400)) b!1220232))

(declare-fun m!1125123 () Bool)

(assert (=> mapNonEmpty!48400 m!1125123))

(declare-fun b_lambda!22163 () Bool)

(assert (= b_lambda!22145 (or (and start!101520 b_free!26301) b_lambda!22163)))

(declare-fun b_lambda!22165 () Bool)

(assert (= b_lambda!22153 (or (and start!101520 b_free!26301) b_lambda!22165)))

(declare-fun b_lambda!22167 () Bool)

(assert (= b_lambda!22149 (or (and start!101520 b_free!26301) b_lambda!22167)))

(declare-fun b_lambda!22169 () Bool)

(assert (= b_lambda!22159 (or (and start!101520 b_free!26301) b_lambda!22169)))

(declare-fun b_lambda!22171 () Bool)

(assert (= b_lambda!22155 (or (and start!101520 b_free!26301) b_lambda!22171)))

(declare-fun b_lambda!22173 () Bool)

(assert (= b_lambda!22147 (or (and start!101520 b_free!26301) b_lambda!22173)))

(declare-fun b_lambda!22175 () Bool)

(assert (= b_lambda!22151 (or (and start!101520 b_free!26301) b_lambda!22175)))

(declare-fun b_lambda!22177 () Bool)

(assert (= b_lambda!22157 (or (and start!101520 b_free!26301) b_lambda!22177)))

(declare-fun b_lambda!22179 () Bool)

(assert (= b_lambda!22161 (or (and start!101520 b_free!26301) b_lambda!22179)))

(check-sat (not bm!60690) (not b_lambda!22173) (not b!1220118) (not d!133697) (not b!1220206) (not b!1220114) (not d!133677) (not b!1220213) (not b!1220196) (not b!1220103) (not bm!60700) (not b!1220215) (not b!1220190) (not b!1220099) (not b!1220150) (not b!1220201) (not b!1220119) (not b!1220179) (not b!1220130) (not bm!60701) (not b!1220136) (not b!1220098) (not b!1220191) (not b!1220183) (not b!1220121) (not b!1220189) (not b!1220210) (not b!1220115) (not b_lambda!22165) (not b!1220178) tp_is_empty!31005 (not b!1220185) (not d!133699) (not b!1220216) (not b_lambda!22163) (not bm!60684) (not d!133711) (not b!1220138) (not b!1220180) (not b_lambda!22175) b_and!43825 (not b!1220086) (not b_lambda!22179) (not b!1220217) (not b!1220205) (not b!1220197) (not b!1220184) (not bm!60688) (not b!1220139) (not b!1220097) (not bm!60696) (not b!1220195) (not b!1220221) (not d!133713) (not b_lambda!22171) (not bm!60687) (not b!1220135) (not d!133703) (not d!133669) (not bm!60689) (not bm!60695) (not b!1220218) (not b_lambda!22167) (not b!1220209) (not mapNonEmpty!48400) (not b_lambda!22169) (not b!1220200) (not b!1220129) (not b!1220175) (not b!1220137) (not b!1220192) (not b_lambda!22177) (not b_lambda!22143) (not b!1220222) (not b!1220120) (not d!133689) (not d!133701) (not b!1220203) (not b!1220211) (not b!1220187) (not b!1220204) (not b!1220122) (not bm!60702) (not b!1220223) (not b_next!26301) (not d!133673) (not bm!60699) (not b!1220177))
(check-sat b_and!43825 (not b_next!26301))
