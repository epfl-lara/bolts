; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79528 () Bool)

(assert start!79528)

(declare-fun b_free!17655 () Bool)

(declare-fun b_next!17655 () Bool)

(assert (=> start!79528 (= b_free!17655 (not b_next!17655))))

(declare-fun tp!61413 () Bool)

(declare-fun b_and!28895 () Bool)

(assert (=> start!79528 (= tp!61413 b_and!28895)))

(declare-fun b!934555 () Bool)

(declare-fun e!524769 () Bool)

(declare-fun tp_is_empty!20163 () Bool)

(assert (=> b!934555 (= e!524769 tp_is_empty!20163)))

(declare-fun b!934556 () Bool)

(declare-fun res!629530 () Bool)

(declare-fun e!524772 () Bool)

(assert (=> b!934556 (=> (not res!629530) (not e!524772))))

(declare-datatypes ((V!31849 0))(
  ( (V!31850 (val!10132 Int)) )
))
(declare-datatypes ((tuple2!13398 0))(
  ( (tuple2!13399 (_1!6709 (_ BitVec 64)) (_2!6709 V!31849)) )
))
(declare-datatypes ((List!19205 0))(
  ( (Nil!19202) (Cons!19201 (h!20347 tuple2!13398) (t!27412 List!19205)) )
))
(declare-datatypes ((ListLongMap!12109 0))(
  ( (ListLongMap!12110 (toList!6070 List!19205)) )
))
(declare-fun lt!421064 () ListLongMap!12109)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun v!791 () V!31849)

(declare-fun apply!850 (ListLongMap!12109 (_ BitVec 64)) V!31849)

(assert (=> b!934556 (= res!629530 (= (apply!850 lt!421064 k0!1099) v!791))))

(declare-fun b!934557 () Bool)

(declare-fun e!524771 () Bool)

(declare-fun e!524766 () Bool)

(assert (=> b!934557 (= e!524771 (not e!524766))))

(declare-fun res!629531 () Bool)

(assert (=> b!934557 (=> res!629531 e!524766)))

(declare-datatypes ((array!56284 0))(
  ( (array!56285 (arr!27081 (Array (_ BitVec 32) (_ BitVec 64))) (size!27541 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56284)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!934557 (= res!629531 (or (bvsge (size!27541 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27541 _keys!1487))))))

(declare-fun e!524773 () Bool)

(assert (=> b!934557 e!524773))

(declare-fun c!97091 () Bool)

(assert (=> b!934557 (= c!97091 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((Unit!31531 0))(
  ( (Unit!31532) )
))
(declare-fun lt!421062 () Unit!31531)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9600 0))(
  ( (ValueCellFull!9600 (v!12652 V!31849)) (EmptyCell!9600) )
))
(declare-datatypes ((array!56286 0))(
  ( (array!56287 (arr!27082 (Array (_ BitVec 32) ValueCell!9600)) (size!27542 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56286)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31849)

(declare-fun minValue!1173 () V!31849)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!282 (array!56284 array!56286 (_ BitVec 32) (_ BitVec 32) V!31849 V!31849 (_ BitVec 64) (_ BitVec 32) Int) Unit!31531)

(assert (=> b!934557 (= lt!421062 (lemmaListMapContainsThenArrayContainsFrom!282 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-datatypes ((List!19206 0))(
  ( (Nil!19203) (Cons!19202 (h!20348 (_ BitVec 64)) (t!27413 List!19206)) )
))
(declare-fun arrayNoDuplicates!0 (array!56284 (_ BitVec 32) List!19206) Bool)

(assert (=> b!934557 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19203)))

(declare-fun lt!421060 () Unit!31531)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56284 (_ BitVec 32) (_ BitVec 32)) Unit!31531)

(assert (=> b!934557 (= lt!421060 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421061 () tuple2!13398)

(declare-fun contains!5071 (ListLongMap!12109 (_ BitVec 64)) Bool)

(declare-fun +!2769 (ListLongMap!12109 tuple2!13398) ListLongMap!12109)

(assert (=> b!934557 (contains!5071 (+!2769 lt!421064 lt!421061) k0!1099)))

(declare-fun lt!421058 () (_ BitVec 64))

(declare-fun lt!421063 () Unit!31531)

(declare-fun lt!421059 () V!31849)

(declare-fun addStillContains!525 (ListLongMap!12109 (_ BitVec 64) V!31849 (_ BitVec 64)) Unit!31531)

(assert (=> b!934557 (= lt!421063 (addStillContains!525 lt!421064 lt!421058 lt!421059 k0!1099))))

(declare-fun getCurrentListMap!3262 (array!56284 array!56286 (_ BitVec 32) (_ BitVec 32) V!31849 V!31849 (_ BitVec 32) Int) ListLongMap!12109)

(assert (=> b!934557 (= (getCurrentListMap!3262 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2769 (getCurrentListMap!3262 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!421061))))

(assert (=> b!934557 (= lt!421061 (tuple2!13399 lt!421058 lt!421059))))

(declare-fun get!14272 (ValueCell!9600 V!31849) V!31849)

(declare-fun dynLambda!1608 (Int (_ BitVec 64)) V!31849)

(assert (=> b!934557 (= lt!421059 (get!14272 (select (arr!27082 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1608 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!421057 () Unit!31531)

(declare-fun lemmaListMapRecursiveValidKeyArray!204 (array!56284 array!56286 (_ BitVec 32) (_ BitVec 32) V!31849 V!31849 (_ BitVec 32) Int) Unit!31531)

(assert (=> b!934557 (= lt!421057 (lemmaListMapRecursiveValidKeyArray!204 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!934558 () Bool)

(declare-fun e!524774 () Bool)

(declare-fun mapRes!32007 () Bool)

(assert (=> b!934558 (= e!524774 (and e!524769 mapRes!32007))))

(declare-fun condMapEmpty!32007 () Bool)

(declare-fun mapDefault!32007 () ValueCell!9600)

(assert (=> b!934558 (= condMapEmpty!32007 (= (arr!27082 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9600)) mapDefault!32007)))))

(declare-fun b!934559 () Bool)

(assert (=> b!934559 (= e!524773 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!934560 () Bool)

(assert (=> b!934560 (= e!524772 e!524771)))

(declare-fun res!629536 () Bool)

(assert (=> b!934560 (=> (not res!629536) (not e!524771))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!934560 (= res!629536 (validKeyInArray!0 lt!421058))))

(assert (=> b!934560 (= lt!421058 (select (arr!27081 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun res!629527 () Bool)

(declare-fun e!524767 () Bool)

(assert (=> start!79528 (=> (not res!629527) (not e!524767))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79528 (= res!629527 (validMask!0 mask!1881))))

(assert (=> start!79528 e!524767))

(assert (=> start!79528 true))

(assert (=> start!79528 tp_is_empty!20163))

(declare-fun array_inv!21030 (array!56286) Bool)

(assert (=> start!79528 (and (array_inv!21030 _values!1231) e!524774)))

(assert (=> start!79528 tp!61413))

(declare-fun array_inv!21031 (array!56284) Bool)

(assert (=> start!79528 (array_inv!21031 _keys!1487)))

(declare-fun b!934561 () Bool)

(declare-fun res!629532 () Bool)

(assert (=> b!934561 (=> (not res!629532) (not e!524772))))

(assert (=> b!934561 (= res!629532 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!934562 () Bool)

(assert (=> b!934562 (= e!524767 e!524772)))

(declare-fun res!629528 () Bool)

(assert (=> b!934562 (=> (not res!629528) (not e!524772))))

(assert (=> b!934562 (= res!629528 (contains!5071 lt!421064 k0!1099))))

(assert (=> b!934562 (= lt!421064 (getCurrentListMap!3262 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapNonEmpty!32007 () Bool)

(declare-fun tp!61412 () Bool)

(declare-fun e!524768 () Bool)

(assert (=> mapNonEmpty!32007 (= mapRes!32007 (and tp!61412 e!524768))))

(declare-fun mapValue!32007 () ValueCell!9600)

(declare-fun mapRest!32007 () (Array (_ BitVec 32) ValueCell!9600))

(declare-fun mapKey!32007 () (_ BitVec 32))

(assert (=> mapNonEmpty!32007 (= (arr!27082 _values!1231) (store mapRest!32007 mapKey!32007 mapValue!32007))))

(declare-fun b!934563 () Bool)

(declare-fun res!629529 () Bool)

(assert (=> b!934563 (=> (not res!629529) (not e!524767))))

(assert (=> b!934563 (= res!629529 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19203))))

(declare-fun b!934564 () Bool)

(declare-fun res!629537 () Bool)

(assert (=> b!934564 (=> (not res!629537) (not e!524767))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56284 (_ BitVec 32)) Bool)

(assert (=> b!934564 (= res!629537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!934565 () Bool)

(declare-fun res!629535 () Bool)

(assert (=> b!934565 (=> (not res!629535) (not e!524767))))

(assert (=> b!934565 (= res!629535 (and (= (size!27542 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27541 _keys!1487) (size!27542 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!934566 () Bool)

(declare-fun noDuplicate!1352 (List!19206) Bool)

(assert (=> b!934566 (= e!524766 (noDuplicate!1352 Nil!19203))))

(declare-fun b!934567 () Bool)

(declare-fun res!629533 () Bool)

(assert (=> b!934567 (=> (not res!629533) (not e!524772))))

(assert (=> b!934567 (= res!629533 (validKeyInArray!0 k0!1099))))

(declare-fun b!934568 () Bool)

(declare-fun res!629534 () Bool)

(assert (=> b!934568 (=> (not res!629534) (not e!524767))))

(assert (=> b!934568 (= res!629534 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27541 _keys!1487))))))

(declare-fun b!934569 () Bool)

(assert (=> b!934569 (= e!524768 tp_is_empty!20163)))

(declare-fun b!934570 () Bool)

(declare-fun arrayContainsKey!0 (array!56284 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!934570 (= e!524773 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun mapIsEmpty!32007 () Bool)

(assert (=> mapIsEmpty!32007 mapRes!32007))

(assert (= (and start!79528 res!629527) b!934565))

(assert (= (and b!934565 res!629535) b!934564))

(assert (= (and b!934564 res!629537) b!934563))

(assert (= (and b!934563 res!629529) b!934568))

(assert (= (and b!934568 res!629534) b!934562))

(assert (= (and b!934562 res!629528) b!934556))

(assert (= (and b!934556 res!629530) b!934561))

(assert (= (and b!934561 res!629532) b!934567))

(assert (= (and b!934567 res!629533) b!934560))

(assert (= (and b!934560 res!629536) b!934557))

(assert (= (and b!934557 c!97091) b!934570))

(assert (= (and b!934557 (not c!97091)) b!934559))

(assert (= (and b!934557 (not res!629531)) b!934566))

(assert (= (and b!934558 condMapEmpty!32007) mapIsEmpty!32007))

(assert (= (and b!934558 (not condMapEmpty!32007)) mapNonEmpty!32007))

(get-info :version)

(assert (= (and mapNonEmpty!32007 ((_ is ValueCellFull!9600) mapValue!32007)) b!934569))

(assert (= (and b!934558 ((_ is ValueCellFull!9600) mapDefault!32007)) b!934555))

(assert (= start!79528 b!934558))

(declare-fun b_lambda!14037 () Bool)

(assert (=> (not b_lambda!14037) (not b!934557)))

(declare-fun t!27411 () Bool)

(declare-fun tb!6057 () Bool)

(assert (=> (and start!79528 (= defaultEntry!1235 defaultEntry!1235) t!27411) tb!6057))

(declare-fun result!11933 () Bool)

(assert (=> tb!6057 (= result!11933 tp_is_empty!20163)))

(assert (=> b!934557 t!27411))

(declare-fun b_and!28897 () Bool)

(assert (= b_and!28895 (and (=> t!27411 result!11933) b_and!28897)))

(declare-fun m!868981 () Bool)

(assert (=> b!934557 m!868981))

(declare-fun m!868983 () Bool)

(assert (=> b!934557 m!868983))

(declare-fun m!868985 () Bool)

(assert (=> b!934557 m!868985))

(declare-fun m!868987 () Bool)

(assert (=> b!934557 m!868987))

(assert (=> b!934557 m!868985))

(declare-fun m!868989 () Bool)

(assert (=> b!934557 m!868989))

(declare-fun m!868991 () Bool)

(assert (=> b!934557 m!868991))

(declare-fun m!868993 () Bool)

(assert (=> b!934557 m!868993))

(assert (=> b!934557 m!868987))

(declare-fun m!868995 () Bool)

(assert (=> b!934557 m!868995))

(declare-fun m!868997 () Bool)

(assert (=> b!934557 m!868997))

(declare-fun m!868999 () Bool)

(assert (=> b!934557 m!868999))

(assert (=> b!934557 m!868995))

(declare-fun m!869001 () Bool)

(assert (=> b!934557 m!869001))

(declare-fun m!869003 () Bool)

(assert (=> b!934557 m!869003))

(assert (=> b!934557 m!868981))

(declare-fun m!869005 () Bool)

(assert (=> b!934557 m!869005))

(declare-fun m!869007 () Bool)

(assert (=> b!934563 m!869007))

(declare-fun m!869009 () Bool)

(assert (=> b!934564 m!869009))

(declare-fun m!869011 () Bool)

(assert (=> b!934566 m!869011))

(declare-fun m!869013 () Bool)

(assert (=> b!934556 m!869013))

(declare-fun m!869015 () Bool)

(assert (=> b!934567 m!869015))

(declare-fun m!869017 () Bool)

(assert (=> start!79528 m!869017))

(declare-fun m!869019 () Bool)

(assert (=> start!79528 m!869019))

(declare-fun m!869021 () Bool)

(assert (=> start!79528 m!869021))

(declare-fun m!869023 () Bool)

(assert (=> b!934562 m!869023))

(declare-fun m!869025 () Bool)

(assert (=> b!934562 m!869025))

(declare-fun m!869027 () Bool)

(assert (=> b!934560 m!869027))

(declare-fun m!869029 () Bool)

(assert (=> b!934560 m!869029))

(declare-fun m!869031 () Bool)

(assert (=> b!934570 m!869031))

(declare-fun m!869033 () Bool)

(assert (=> mapNonEmpty!32007 m!869033))

(check-sat (not b!934570) (not start!79528) (not mapNonEmpty!32007) b_and!28897 (not b!934564) (not b!934563) (not b_lambda!14037) (not b!934560) (not b!934557) tp_is_empty!20163 (not b!934567) (not b!934556) (not b!934566) (not b_next!17655) (not b!934562))
(check-sat b_and!28897 (not b_next!17655))
(get-model)

(declare-fun b_lambda!14041 () Bool)

(assert (= b_lambda!14037 (or (and start!79528 b_free!17655) b_lambda!14041)))

(check-sat (not b!934570) (not start!79528) (not mapNonEmpty!32007) b_and!28897 (not b_lambda!14041) (not b!934564) (not b!934563) (not b!934560) (not b!934557) tp_is_empty!20163 (not b!934567) (not b!934556) (not b!934566) (not b_next!17655) (not b!934562))
(check-sat b_and!28897 (not b_next!17655))
(get-model)

(declare-fun b!934633 () Bool)

(declare-fun e!524811 () Bool)

(declare-fun call!40635 () Bool)

(assert (=> b!934633 (= e!524811 call!40635)))

(declare-fun b!934634 () Bool)

(declare-fun e!524813 () Bool)

(assert (=> b!934634 (= e!524813 e!524811)))

(declare-fun c!97097 () Bool)

(assert (=> b!934634 (= c!97097 (validKeyInArray!0 (select (arr!27081 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!934635 () Bool)

(declare-fun e!524810 () Bool)

(declare-fun contains!5073 (List!19206 (_ BitVec 64)) Bool)

(assert (=> b!934635 (= e!524810 (contains!5073 Nil!19203 (select (arr!27081 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!934636 () Bool)

(assert (=> b!934636 (= e!524811 call!40635)))

(declare-fun b!934637 () Bool)

(declare-fun e!524812 () Bool)

(assert (=> b!934637 (= e!524812 e!524813)))

(declare-fun res!629577 () Bool)

(assert (=> b!934637 (=> (not res!629577) (not e!524813))))

(assert (=> b!934637 (= res!629577 (not e!524810))))

(declare-fun res!629578 () Bool)

(assert (=> b!934637 (=> (not res!629578) (not e!524810))))

(assert (=> b!934637 (= res!629578 (validKeyInArray!0 (select (arr!27081 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun d!113069 () Bool)

(declare-fun res!629579 () Bool)

(assert (=> d!113069 (=> res!629579 e!524812)))

(assert (=> d!113069 (= res!629579 (bvsge #b00000000000000000000000000000000 (size!27541 _keys!1487)))))

(assert (=> d!113069 (= (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19203) e!524812)))

(declare-fun bm!40632 () Bool)

(assert (=> bm!40632 (= call!40635 (arrayNoDuplicates!0 _keys!1487 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!97097 (Cons!19202 (select (arr!27081 _keys!1487) #b00000000000000000000000000000000) Nil!19203) Nil!19203)))))

(assert (= (and d!113069 (not res!629579)) b!934637))

(assert (= (and b!934637 res!629578) b!934635))

(assert (= (and b!934637 res!629577) b!934634))

(assert (= (and b!934634 c!97097) b!934636))

(assert (= (and b!934634 (not c!97097)) b!934633))

(assert (= (or b!934636 b!934633) bm!40632))

(declare-fun m!869089 () Bool)

(assert (=> b!934634 m!869089))

(assert (=> b!934634 m!869089))

(declare-fun m!869091 () Bool)

(assert (=> b!934634 m!869091))

(assert (=> b!934635 m!869089))

(assert (=> b!934635 m!869089))

(declare-fun m!869093 () Bool)

(assert (=> b!934635 m!869093))

(assert (=> b!934637 m!869089))

(assert (=> b!934637 m!869089))

(assert (=> b!934637 m!869091))

(assert (=> bm!40632 m!869089))

(declare-fun m!869095 () Bool)

(assert (=> bm!40632 m!869095))

(assert (=> b!934563 d!113069))

(declare-fun bm!40647 () Bool)

(declare-fun call!40654 () ListLongMap!12109)

(declare-fun call!40650 () ListLongMap!12109)

(assert (=> bm!40647 (= call!40654 call!40650)))

(declare-fun bm!40648 () Bool)

(declare-fun call!40656 () ListLongMap!12109)

(declare-fun call!40651 () ListLongMap!12109)

(assert (=> bm!40648 (= call!40656 call!40651)))

(declare-fun b!934681 () Bool)

(declare-fun e!524845 () ListLongMap!12109)

(declare-fun e!524841 () ListLongMap!12109)

(assert (=> b!934681 (= e!524845 e!524841)))

(declare-fun c!97113 () Bool)

(assert (=> b!934681 (= c!97113 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!40649 () Bool)

(declare-fun call!40655 () ListLongMap!12109)

(assert (=> bm!40649 (= call!40650 call!40655)))

(declare-fun b!934682 () Bool)

(assert (=> b!934682 (= e!524845 (+!2769 call!40651 (tuple2!13399 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun c!97114 () Bool)

(declare-fun bm!40650 () Bool)

(assert (=> bm!40650 (= call!40651 (+!2769 (ite c!97114 call!40655 (ite c!97113 call!40650 call!40654)) (ite (or c!97114 c!97113) (tuple2!13399 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13399 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun b!934683 () Bool)

(declare-fun e!524843 () ListLongMap!12109)

(assert (=> b!934683 (= e!524843 call!40654)))

(declare-fun b!934684 () Bool)

(declare-fun e!524842 () Bool)

(declare-fun lt!421139 () ListLongMap!12109)

(assert (=> b!934684 (= e!524842 (= (apply!850 lt!421139 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!934685 () Bool)

(declare-fun e!524849 () Unit!31531)

(declare-fun lt!421151 () Unit!31531)

(assert (=> b!934685 (= e!524849 lt!421151)))

(declare-fun lt!421144 () ListLongMap!12109)

(declare-fun getCurrentListMapNoExtraKeys!3316 (array!56284 array!56286 (_ BitVec 32) (_ BitVec 32) V!31849 V!31849 (_ BitVec 32) Int) ListLongMap!12109)

(assert (=> b!934685 (= lt!421144 (getCurrentListMapNoExtraKeys!3316 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!421141 () (_ BitVec 64))

(assert (=> b!934685 (= lt!421141 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421152 () (_ BitVec 64))

(assert (=> b!934685 (= lt!421152 (select (arr!27081 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421133 () Unit!31531)

(assert (=> b!934685 (= lt!421133 (addStillContains!525 lt!421144 lt!421141 zeroValue!1173 lt!421152))))

(assert (=> b!934685 (contains!5071 (+!2769 lt!421144 (tuple2!13399 lt!421141 zeroValue!1173)) lt!421152)))

(declare-fun lt!421134 () Unit!31531)

(assert (=> b!934685 (= lt!421134 lt!421133)))

(declare-fun lt!421145 () ListLongMap!12109)

(assert (=> b!934685 (= lt!421145 (getCurrentListMapNoExtraKeys!3316 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!421147 () (_ BitVec 64))

(assert (=> b!934685 (= lt!421147 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421146 () (_ BitVec 64))

(assert (=> b!934685 (= lt!421146 (select (arr!27081 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421153 () Unit!31531)

(declare-fun addApplyDifferent!411 (ListLongMap!12109 (_ BitVec 64) V!31849 (_ BitVec 64)) Unit!31531)

(assert (=> b!934685 (= lt!421153 (addApplyDifferent!411 lt!421145 lt!421147 minValue!1173 lt!421146))))

(assert (=> b!934685 (= (apply!850 (+!2769 lt!421145 (tuple2!13399 lt!421147 minValue!1173)) lt!421146) (apply!850 lt!421145 lt!421146))))

(declare-fun lt!421150 () Unit!31531)

(assert (=> b!934685 (= lt!421150 lt!421153)))

(declare-fun lt!421142 () ListLongMap!12109)

(assert (=> b!934685 (= lt!421142 (getCurrentListMapNoExtraKeys!3316 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!421154 () (_ BitVec 64))

(assert (=> b!934685 (= lt!421154 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421136 () (_ BitVec 64))

(assert (=> b!934685 (= lt!421136 (select (arr!27081 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421143 () Unit!31531)

(assert (=> b!934685 (= lt!421143 (addApplyDifferent!411 lt!421142 lt!421154 zeroValue!1173 lt!421136))))

(assert (=> b!934685 (= (apply!850 (+!2769 lt!421142 (tuple2!13399 lt!421154 zeroValue!1173)) lt!421136) (apply!850 lt!421142 lt!421136))))

(declare-fun lt!421140 () Unit!31531)

(assert (=> b!934685 (= lt!421140 lt!421143)))

(declare-fun lt!421149 () ListLongMap!12109)

(assert (=> b!934685 (= lt!421149 (getCurrentListMapNoExtraKeys!3316 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!421135 () (_ BitVec 64))

(assert (=> b!934685 (= lt!421135 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421148 () (_ BitVec 64))

(assert (=> b!934685 (= lt!421148 (select (arr!27081 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!934685 (= lt!421151 (addApplyDifferent!411 lt!421149 lt!421135 minValue!1173 lt!421148))))

(assert (=> b!934685 (= (apply!850 (+!2769 lt!421149 (tuple2!13399 lt!421135 minValue!1173)) lt!421148) (apply!850 lt!421149 lt!421148))))

(declare-fun b!934686 () Bool)

(assert (=> b!934686 (= e!524843 call!40656)))

(declare-fun b!934687 () Bool)

(declare-fun res!629599 () Bool)

(declare-fun e!524848 () Bool)

(assert (=> b!934687 (=> (not res!629599) (not e!524848))))

(declare-fun e!524844 () Bool)

(assert (=> b!934687 (= res!629599 e!524844)))

(declare-fun res!629603 () Bool)

(assert (=> b!934687 (=> res!629603 e!524844)))

(declare-fun e!524840 () Bool)

(assert (=> b!934687 (= res!629603 (not e!524840))))

(declare-fun res!629601 () Bool)

(assert (=> b!934687 (=> (not res!629601) (not e!524840))))

(assert (=> b!934687 (= res!629601 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27541 _keys!1487)))))

(declare-fun b!934688 () Bool)

(declare-fun c!97110 () Bool)

(assert (=> b!934688 (= c!97110 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!934688 (= e!524841 e!524843)))

(declare-fun b!934689 () Bool)

(declare-fun res!629598 () Bool)

(assert (=> b!934689 (=> (not res!629598) (not e!524848))))

(declare-fun e!524847 () Bool)

(assert (=> b!934689 (= res!629598 e!524847)))

(declare-fun c!97115 () Bool)

(assert (=> b!934689 (= c!97115 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!934690 () Bool)

(assert (=> b!934690 (= e!524840 (validKeyInArray!0 (select (arr!27081 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!934691 () Bool)

(declare-fun e!524852 () Bool)

(assert (=> b!934691 (= e!524848 e!524852)))

(declare-fun c!97111 () Bool)

(assert (=> b!934691 (= c!97111 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!934680 () Bool)

(declare-fun call!40653 () Bool)

(assert (=> b!934680 (= e!524852 (not call!40653))))

(declare-fun d!113071 () Bool)

(assert (=> d!113071 e!524848))

(declare-fun res!629602 () Bool)

(assert (=> d!113071 (=> (not res!629602) (not e!524848))))

(assert (=> d!113071 (= res!629602 (or (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27541 _keys!1487)) (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27541 _keys!1487)))))))

(declare-fun lt!421138 () ListLongMap!12109)

(assert (=> d!113071 (= lt!421139 lt!421138)))

(declare-fun lt!421137 () Unit!31531)

(assert (=> d!113071 (= lt!421137 e!524849)))

(declare-fun c!97112 () Bool)

(declare-fun e!524846 () Bool)

(assert (=> d!113071 (= c!97112 e!524846)))

(declare-fun res!629606 () Bool)

(assert (=> d!113071 (=> (not res!629606) (not e!524846))))

(assert (=> d!113071 (= res!629606 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27541 _keys!1487)))))

(assert (=> d!113071 (= lt!421138 e!524845)))

(assert (=> d!113071 (= c!97114 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113071 (validMask!0 mask!1881)))

(assert (=> d!113071 (= (getCurrentListMap!3262 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) lt!421139)))

(declare-fun b!934692 () Bool)

(assert (=> b!934692 (= e!524847 e!524842)))

(declare-fun res!629604 () Bool)

(declare-fun call!40652 () Bool)

(assert (=> b!934692 (= res!629604 call!40652)))

(assert (=> b!934692 (=> (not res!629604) (not e!524842))))

(declare-fun b!934693 () Bool)

(declare-fun e!524851 () Bool)

(assert (=> b!934693 (= e!524851 (= (apply!850 lt!421139 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun b!934694 () Bool)

(assert (=> b!934694 (= e!524847 (not call!40652))))

(declare-fun b!934695 () Bool)

(declare-fun Unit!31535 () Unit!31531)

(assert (=> b!934695 (= e!524849 Unit!31535)))

(declare-fun b!934696 () Bool)

(assert (=> b!934696 (= e!524852 e!524851)))

(declare-fun res!629600 () Bool)

(assert (=> b!934696 (= res!629600 call!40653)))

(assert (=> b!934696 (=> (not res!629600) (not e!524851))))

(declare-fun bm!40651 () Bool)

(assert (=> bm!40651 (= call!40652 (contains!5071 lt!421139 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!934697 () Bool)

(declare-fun e!524850 () Bool)

(assert (=> b!934697 (= e!524844 e!524850)))

(declare-fun res!629605 () Bool)

(assert (=> b!934697 (=> (not res!629605) (not e!524850))))

(assert (=> b!934697 (= res!629605 (contains!5071 lt!421139 (select (arr!27081 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!934697 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27541 _keys!1487)))))

(declare-fun bm!40652 () Bool)

(assert (=> bm!40652 (= call!40655 (getCurrentListMapNoExtraKeys!3316 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!934698 () Bool)

(assert (=> b!934698 (= e!524841 call!40656)))

(declare-fun b!934699 () Bool)

(assert (=> b!934699 (= e!524850 (= (apply!850 lt!421139 (select (arr!27081 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))) (get!14272 (select (arr!27082 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1608 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!934699 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27542 _values!1231)))))

(assert (=> b!934699 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27541 _keys!1487)))))

(declare-fun bm!40653 () Bool)

(assert (=> bm!40653 (= call!40653 (contains!5071 lt!421139 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!934700 () Bool)

(assert (=> b!934700 (= e!524846 (validKeyInArray!0 (select (arr!27081 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (= (and d!113071 c!97114) b!934682))

(assert (= (and d!113071 (not c!97114)) b!934681))

(assert (= (and b!934681 c!97113) b!934698))

(assert (= (and b!934681 (not c!97113)) b!934688))

(assert (= (and b!934688 c!97110) b!934686))

(assert (= (and b!934688 (not c!97110)) b!934683))

(assert (= (or b!934686 b!934683) bm!40647))

(assert (= (or b!934698 bm!40647) bm!40649))

(assert (= (or b!934698 b!934686) bm!40648))

(assert (= (or b!934682 bm!40649) bm!40652))

(assert (= (or b!934682 bm!40648) bm!40650))

(assert (= (and d!113071 res!629606) b!934700))

(assert (= (and d!113071 c!97112) b!934685))

(assert (= (and d!113071 (not c!97112)) b!934695))

(assert (= (and d!113071 res!629602) b!934687))

(assert (= (and b!934687 res!629601) b!934690))

(assert (= (and b!934687 (not res!629603)) b!934697))

(assert (= (and b!934697 res!629605) b!934699))

(assert (= (and b!934687 res!629599) b!934689))

(assert (= (and b!934689 c!97115) b!934692))

(assert (= (and b!934689 (not c!97115)) b!934694))

(assert (= (and b!934692 res!629604) b!934684))

(assert (= (or b!934692 b!934694) bm!40651))

(assert (= (and b!934689 res!629598) b!934691))

(assert (= (and b!934691 c!97111) b!934696))

(assert (= (and b!934691 (not c!97111)) b!934680))

(assert (= (and b!934696 res!629600) b!934693))

(assert (= (or b!934696 b!934680) bm!40653))

(declare-fun b_lambda!14043 () Bool)

(assert (=> (not b_lambda!14043) (not b!934699)))

(assert (=> b!934699 t!27411))

(declare-fun b_and!28903 () Bool)

(assert (= b_and!28897 (and (=> t!27411 result!11933) b_and!28903)))

(declare-fun m!869097 () Bool)

(assert (=> bm!40652 m!869097))

(declare-fun m!869099 () Bool)

(assert (=> bm!40651 m!869099))

(assert (=> b!934690 m!869029))

(assert (=> b!934690 m!869029))

(declare-fun m!869101 () Bool)

(assert (=> b!934690 m!869101))

(declare-fun m!869103 () Bool)

(assert (=> b!934685 m!869103))

(declare-fun m!869105 () Bool)

(assert (=> b!934685 m!869105))

(declare-fun m!869107 () Bool)

(assert (=> b!934685 m!869107))

(declare-fun m!869109 () Bool)

(assert (=> b!934685 m!869109))

(declare-fun m!869111 () Bool)

(assert (=> b!934685 m!869111))

(declare-fun m!869113 () Bool)

(assert (=> b!934685 m!869113))

(declare-fun m!869115 () Bool)

(assert (=> b!934685 m!869115))

(assert (=> b!934685 m!869097))

(declare-fun m!869117 () Bool)

(assert (=> b!934685 m!869117))

(declare-fun m!869119 () Bool)

(assert (=> b!934685 m!869119))

(assert (=> b!934685 m!869115))

(declare-fun m!869121 () Bool)

(assert (=> b!934685 m!869121))

(assert (=> b!934685 m!869029))

(assert (=> b!934685 m!869109))

(declare-fun m!869123 () Bool)

(assert (=> b!934685 m!869123))

(declare-fun m!869125 () Bool)

(assert (=> b!934685 m!869125))

(assert (=> b!934685 m!869119))

(declare-fun m!869127 () Bool)

(assert (=> b!934685 m!869127))

(assert (=> b!934685 m!869103))

(declare-fun m!869129 () Bool)

(assert (=> b!934685 m!869129))

(declare-fun m!869131 () Bool)

(assert (=> b!934685 m!869131))

(assert (=> b!934700 m!869029))

(assert (=> b!934700 m!869029))

(assert (=> b!934700 m!869101))

(assert (=> d!113071 m!869017))

(declare-fun m!869133 () Bool)

(assert (=> b!934693 m!869133))

(assert (=> b!934699 m!869029))

(assert (=> b!934699 m!869029))

(declare-fun m!869135 () Bool)

(assert (=> b!934699 m!869135))

(assert (=> b!934699 m!868987))

(assert (=> b!934699 m!868985))

(assert (=> b!934699 m!868989))

(assert (=> b!934699 m!868985))

(assert (=> b!934699 m!868987))

(declare-fun m!869137 () Bool)

(assert (=> b!934684 m!869137))

(declare-fun m!869139 () Bool)

(assert (=> b!934682 m!869139))

(declare-fun m!869141 () Bool)

(assert (=> bm!40653 m!869141))

(declare-fun m!869143 () Bool)

(assert (=> bm!40650 m!869143))

(assert (=> b!934697 m!869029))

(assert (=> b!934697 m!869029))

(declare-fun m!869145 () Bool)

(assert (=> b!934697 m!869145))

(assert (=> b!934557 d!113071))

(declare-fun bm!40654 () Bool)

(declare-fun call!40661 () ListLongMap!12109)

(declare-fun call!40657 () ListLongMap!12109)

(assert (=> bm!40654 (= call!40661 call!40657)))

(declare-fun bm!40655 () Bool)

(declare-fun call!40663 () ListLongMap!12109)

(declare-fun call!40658 () ListLongMap!12109)

(assert (=> bm!40655 (= call!40663 call!40658)))

(declare-fun b!934702 () Bool)

(declare-fun e!524858 () ListLongMap!12109)

(declare-fun e!524854 () ListLongMap!12109)

(assert (=> b!934702 (= e!524858 e!524854)))

(declare-fun c!97119 () Bool)

(assert (=> b!934702 (= c!97119 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!40656 () Bool)

(declare-fun call!40662 () ListLongMap!12109)

(assert (=> bm!40656 (= call!40657 call!40662)))

(declare-fun b!934703 () Bool)

(assert (=> b!934703 (= e!524858 (+!2769 call!40658 (tuple2!13399 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun c!97120 () Bool)

(declare-fun bm!40657 () Bool)

(assert (=> bm!40657 (= call!40658 (+!2769 (ite c!97120 call!40662 (ite c!97119 call!40657 call!40661)) (ite (or c!97120 c!97119) (tuple2!13399 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13399 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun b!934704 () Bool)

(declare-fun e!524856 () ListLongMap!12109)

(assert (=> b!934704 (= e!524856 call!40661)))

(declare-fun b!934705 () Bool)

(declare-fun e!524855 () Bool)

(declare-fun lt!421161 () ListLongMap!12109)

(assert (=> b!934705 (= e!524855 (= (apply!850 lt!421161 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!934706 () Bool)

(declare-fun e!524862 () Unit!31531)

(declare-fun lt!421173 () Unit!31531)

(assert (=> b!934706 (= e!524862 lt!421173)))

(declare-fun lt!421166 () ListLongMap!12109)

(assert (=> b!934706 (= lt!421166 (getCurrentListMapNoExtraKeys!3316 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!421163 () (_ BitVec 64))

(assert (=> b!934706 (= lt!421163 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421174 () (_ BitVec 64))

(assert (=> b!934706 (= lt!421174 (select (arr!27081 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun lt!421155 () Unit!31531)

(assert (=> b!934706 (= lt!421155 (addStillContains!525 lt!421166 lt!421163 zeroValue!1173 lt!421174))))

(assert (=> b!934706 (contains!5071 (+!2769 lt!421166 (tuple2!13399 lt!421163 zeroValue!1173)) lt!421174)))

(declare-fun lt!421156 () Unit!31531)

(assert (=> b!934706 (= lt!421156 lt!421155)))

(declare-fun lt!421167 () ListLongMap!12109)

(assert (=> b!934706 (= lt!421167 (getCurrentListMapNoExtraKeys!3316 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!421169 () (_ BitVec 64))

(assert (=> b!934706 (= lt!421169 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421168 () (_ BitVec 64))

(assert (=> b!934706 (= lt!421168 (select (arr!27081 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun lt!421175 () Unit!31531)

(assert (=> b!934706 (= lt!421175 (addApplyDifferent!411 lt!421167 lt!421169 minValue!1173 lt!421168))))

(assert (=> b!934706 (= (apply!850 (+!2769 lt!421167 (tuple2!13399 lt!421169 minValue!1173)) lt!421168) (apply!850 lt!421167 lt!421168))))

(declare-fun lt!421172 () Unit!31531)

(assert (=> b!934706 (= lt!421172 lt!421175)))

(declare-fun lt!421164 () ListLongMap!12109)

(assert (=> b!934706 (= lt!421164 (getCurrentListMapNoExtraKeys!3316 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!421176 () (_ BitVec 64))

(assert (=> b!934706 (= lt!421176 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421158 () (_ BitVec 64))

(assert (=> b!934706 (= lt!421158 (select (arr!27081 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun lt!421165 () Unit!31531)

(assert (=> b!934706 (= lt!421165 (addApplyDifferent!411 lt!421164 lt!421176 zeroValue!1173 lt!421158))))

(assert (=> b!934706 (= (apply!850 (+!2769 lt!421164 (tuple2!13399 lt!421176 zeroValue!1173)) lt!421158) (apply!850 lt!421164 lt!421158))))

(declare-fun lt!421162 () Unit!31531)

(assert (=> b!934706 (= lt!421162 lt!421165)))

(declare-fun lt!421171 () ListLongMap!12109)

(assert (=> b!934706 (= lt!421171 (getCurrentListMapNoExtraKeys!3316 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!421157 () (_ BitVec 64))

(assert (=> b!934706 (= lt!421157 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421170 () (_ BitVec 64))

(assert (=> b!934706 (= lt!421170 (select (arr!27081 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!934706 (= lt!421173 (addApplyDifferent!411 lt!421171 lt!421157 minValue!1173 lt!421170))))

(assert (=> b!934706 (= (apply!850 (+!2769 lt!421171 (tuple2!13399 lt!421157 minValue!1173)) lt!421170) (apply!850 lt!421171 lt!421170))))

(declare-fun b!934707 () Bool)

(assert (=> b!934707 (= e!524856 call!40663)))

(declare-fun b!934708 () Bool)

(declare-fun res!629608 () Bool)

(declare-fun e!524861 () Bool)

(assert (=> b!934708 (=> (not res!629608) (not e!524861))))

(declare-fun e!524857 () Bool)

(assert (=> b!934708 (= res!629608 e!524857)))

(declare-fun res!629612 () Bool)

(assert (=> b!934708 (=> res!629612 e!524857)))

(declare-fun e!524853 () Bool)

(assert (=> b!934708 (= res!629612 (not e!524853))))

(declare-fun res!629610 () Bool)

(assert (=> b!934708 (=> (not res!629610) (not e!524853))))

(assert (=> b!934708 (= res!629610 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27541 _keys!1487)))))

(declare-fun b!934709 () Bool)

(declare-fun c!97116 () Bool)

(assert (=> b!934709 (= c!97116 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!934709 (= e!524854 e!524856)))

(declare-fun b!934710 () Bool)

(declare-fun res!629607 () Bool)

(assert (=> b!934710 (=> (not res!629607) (not e!524861))))

(declare-fun e!524860 () Bool)

(assert (=> b!934710 (= res!629607 e!524860)))

(declare-fun c!97121 () Bool)

(assert (=> b!934710 (= c!97121 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!934711 () Bool)

(assert (=> b!934711 (= e!524853 (validKeyInArray!0 (select (arr!27081 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(declare-fun b!934712 () Bool)

(declare-fun e!524865 () Bool)

(assert (=> b!934712 (= e!524861 e!524865)))

(declare-fun c!97117 () Bool)

(assert (=> b!934712 (= c!97117 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!934701 () Bool)

(declare-fun call!40660 () Bool)

(assert (=> b!934701 (= e!524865 (not call!40660))))

(declare-fun d!113073 () Bool)

(assert (=> d!113073 e!524861))

(declare-fun res!629611 () Bool)

(assert (=> d!113073 (=> (not res!629611) (not e!524861))))

(assert (=> d!113073 (= res!629611 (or (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27541 _keys!1487)) (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27541 _keys!1487)))))))

(declare-fun lt!421160 () ListLongMap!12109)

(assert (=> d!113073 (= lt!421161 lt!421160)))

(declare-fun lt!421159 () Unit!31531)

(assert (=> d!113073 (= lt!421159 e!524862)))

(declare-fun c!97118 () Bool)

(declare-fun e!524859 () Bool)

(assert (=> d!113073 (= c!97118 e!524859)))

(declare-fun res!629615 () Bool)

(assert (=> d!113073 (=> (not res!629615) (not e!524859))))

(assert (=> d!113073 (= res!629615 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27541 _keys!1487)))))

(assert (=> d!113073 (= lt!421160 e!524858)))

(assert (=> d!113073 (= c!97120 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113073 (validMask!0 mask!1881)))

(assert (=> d!113073 (= (getCurrentListMap!3262 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!421161)))

(declare-fun b!934713 () Bool)

(assert (=> b!934713 (= e!524860 e!524855)))

(declare-fun res!629613 () Bool)

(declare-fun call!40659 () Bool)

(assert (=> b!934713 (= res!629613 call!40659)))

(assert (=> b!934713 (=> (not res!629613) (not e!524855))))

(declare-fun b!934714 () Bool)

(declare-fun e!524864 () Bool)

(assert (=> b!934714 (= e!524864 (= (apply!850 lt!421161 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun b!934715 () Bool)

(assert (=> b!934715 (= e!524860 (not call!40659))))

(declare-fun b!934716 () Bool)

(declare-fun Unit!31536 () Unit!31531)

(assert (=> b!934716 (= e!524862 Unit!31536)))

(declare-fun b!934717 () Bool)

(assert (=> b!934717 (= e!524865 e!524864)))

(declare-fun res!629609 () Bool)

(assert (=> b!934717 (= res!629609 call!40660)))

(assert (=> b!934717 (=> (not res!629609) (not e!524864))))

(declare-fun bm!40658 () Bool)

(assert (=> bm!40658 (= call!40659 (contains!5071 lt!421161 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!934718 () Bool)

(declare-fun e!524863 () Bool)

(assert (=> b!934718 (= e!524857 e!524863)))

(declare-fun res!629614 () Bool)

(assert (=> b!934718 (=> (not res!629614) (not e!524863))))

(assert (=> b!934718 (= res!629614 (contains!5071 lt!421161 (select (arr!27081 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(assert (=> b!934718 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27541 _keys!1487)))))

(declare-fun bm!40659 () Bool)

(assert (=> bm!40659 (= call!40662 (getCurrentListMapNoExtraKeys!3316 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun b!934719 () Bool)

(assert (=> b!934719 (= e!524854 call!40663)))

(declare-fun b!934720 () Bool)

(assert (=> b!934720 (= e!524863 (= (apply!850 lt!421161 (select (arr!27081 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))) (get!14272 (select (arr!27082 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (dynLambda!1608 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!934720 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27542 _values!1231)))))

(assert (=> b!934720 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27541 _keys!1487)))))

(declare-fun bm!40660 () Bool)

(assert (=> bm!40660 (= call!40660 (contains!5071 lt!421161 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!934721 () Bool)

(assert (=> b!934721 (= e!524859 (validKeyInArray!0 (select (arr!27081 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(assert (= (and d!113073 c!97120) b!934703))

(assert (= (and d!113073 (not c!97120)) b!934702))

(assert (= (and b!934702 c!97119) b!934719))

(assert (= (and b!934702 (not c!97119)) b!934709))

(assert (= (and b!934709 c!97116) b!934707))

(assert (= (and b!934709 (not c!97116)) b!934704))

(assert (= (or b!934707 b!934704) bm!40654))

(assert (= (or b!934719 bm!40654) bm!40656))

(assert (= (or b!934719 b!934707) bm!40655))

(assert (= (or b!934703 bm!40656) bm!40659))

(assert (= (or b!934703 bm!40655) bm!40657))

(assert (= (and d!113073 res!629615) b!934721))

(assert (= (and d!113073 c!97118) b!934706))

(assert (= (and d!113073 (not c!97118)) b!934716))

(assert (= (and d!113073 res!629611) b!934708))

(assert (= (and b!934708 res!629610) b!934711))

(assert (= (and b!934708 (not res!629612)) b!934718))

(assert (= (and b!934718 res!629614) b!934720))

(assert (= (and b!934708 res!629608) b!934710))

(assert (= (and b!934710 c!97121) b!934713))

(assert (= (and b!934710 (not c!97121)) b!934715))

(assert (= (and b!934713 res!629613) b!934705))

(assert (= (or b!934713 b!934715) bm!40658))

(assert (= (and b!934710 res!629607) b!934712))

(assert (= (and b!934712 c!97117) b!934717))

(assert (= (and b!934712 (not c!97117)) b!934701))

(assert (= (and b!934717 res!629609) b!934714))

(assert (= (or b!934717 b!934701) bm!40660))

(declare-fun b_lambda!14045 () Bool)

(assert (=> (not b_lambda!14045) (not b!934720)))

(assert (=> b!934720 t!27411))

(declare-fun b_and!28905 () Bool)

(assert (= b_and!28903 (and (=> t!27411 result!11933) b_and!28905)))

(declare-fun m!869147 () Bool)

(assert (=> bm!40659 m!869147))

(declare-fun m!869149 () Bool)

(assert (=> bm!40658 m!869149))

(declare-fun m!869151 () Bool)

(assert (=> b!934711 m!869151))

(assert (=> b!934711 m!869151))

(declare-fun m!869153 () Bool)

(assert (=> b!934711 m!869153))

(declare-fun m!869155 () Bool)

(assert (=> b!934706 m!869155))

(declare-fun m!869157 () Bool)

(assert (=> b!934706 m!869157))

(declare-fun m!869159 () Bool)

(assert (=> b!934706 m!869159))

(declare-fun m!869161 () Bool)

(assert (=> b!934706 m!869161))

(declare-fun m!869163 () Bool)

(assert (=> b!934706 m!869163))

(declare-fun m!869165 () Bool)

(assert (=> b!934706 m!869165))

(declare-fun m!869167 () Bool)

(assert (=> b!934706 m!869167))

(assert (=> b!934706 m!869147))

(declare-fun m!869169 () Bool)

(assert (=> b!934706 m!869169))

(declare-fun m!869171 () Bool)

(assert (=> b!934706 m!869171))

(assert (=> b!934706 m!869167))

(declare-fun m!869173 () Bool)

(assert (=> b!934706 m!869173))

(assert (=> b!934706 m!869151))

(assert (=> b!934706 m!869161))

(declare-fun m!869175 () Bool)

(assert (=> b!934706 m!869175))

(declare-fun m!869177 () Bool)

(assert (=> b!934706 m!869177))

(assert (=> b!934706 m!869171))

(declare-fun m!869179 () Bool)

(assert (=> b!934706 m!869179))

(assert (=> b!934706 m!869155))

(declare-fun m!869181 () Bool)

(assert (=> b!934706 m!869181))

(declare-fun m!869183 () Bool)

(assert (=> b!934706 m!869183))

(assert (=> b!934721 m!869151))

(assert (=> b!934721 m!869151))

(assert (=> b!934721 m!869153))

(assert (=> d!113073 m!869017))

(declare-fun m!869185 () Bool)

(assert (=> b!934714 m!869185))

(assert (=> b!934720 m!869151))

(assert (=> b!934720 m!869151))

(declare-fun m!869187 () Bool)

(assert (=> b!934720 m!869187))

(declare-fun m!869189 () Bool)

(assert (=> b!934720 m!869189))

(assert (=> b!934720 m!868985))

(declare-fun m!869191 () Bool)

(assert (=> b!934720 m!869191))

(assert (=> b!934720 m!868985))

(assert (=> b!934720 m!869189))

(declare-fun m!869193 () Bool)

(assert (=> b!934705 m!869193))

(declare-fun m!869195 () Bool)

(assert (=> b!934703 m!869195))

(declare-fun m!869197 () Bool)

(assert (=> bm!40660 m!869197))

(declare-fun m!869199 () Bool)

(assert (=> bm!40657 m!869199))

(assert (=> b!934718 m!869151))

(assert (=> b!934718 m!869151))

(declare-fun m!869201 () Bool)

(assert (=> b!934718 m!869201))

(assert (=> b!934557 d!113073))

(declare-fun d!113075 () Bool)

(declare-fun e!524870 () Bool)

(assert (=> d!113075 e!524870))

(declare-fun res!629618 () Bool)

(assert (=> d!113075 (=> res!629618 e!524870)))

(declare-fun lt!421187 () Bool)

(assert (=> d!113075 (= res!629618 (not lt!421187))))

(declare-fun lt!421186 () Bool)

(assert (=> d!113075 (= lt!421187 lt!421186)))

(declare-fun lt!421185 () Unit!31531)

(declare-fun e!524871 () Unit!31531)

(assert (=> d!113075 (= lt!421185 e!524871)))

(declare-fun c!97124 () Bool)

(assert (=> d!113075 (= c!97124 lt!421186)))

(declare-fun containsKey!448 (List!19205 (_ BitVec 64)) Bool)

(assert (=> d!113075 (= lt!421186 (containsKey!448 (toList!6070 (+!2769 lt!421064 lt!421061)) k0!1099))))

(assert (=> d!113075 (= (contains!5071 (+!2769 lt!421064 lt!421061) k0!1099) lt!421187)))

(declare-fun b!934728 () Bool)

(declare-fun lt!421188 () Unit!31531)

(assert (=> b!934728 (= e!524871 lt!421188)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!343 (List!19205 (_ BitVec 64)) Unit!31531)

(assert (=> b!934728 (= lt!421188 (lemmaContainsKeyImpliesGetValueByKeyDefined!343 (toList!6070 (+!2769 lt!421064 lt!421061)) k0!1099))))

(declare-datatypes ((Option!489 0))(
  ( (Some!488 (v!12654 V!31849)) (None!487) )
))
(declare-fun isDefined!353 (Option!489) Bool)

(declare-fun getValueByKey!483 (List!19205 (_ BitVec 64)) Option!489)

(assert (=> b!934728 (isDefined!353 (getValueByKey!483 (toList!6070 (+!2769 lt!421064 lt!421061)) k0!1099))))

(declare-fun b!934729 () Bool)

(declare-fun Unit!31537 () Unit!31531)

(assert (=> b!934729 (= e!524871 Unit!31537)))

(declare-fun b!934730 () Bool)

(assert (=> b!934730 (= e!524870 (isDefined!353 (getValueByKey!483 (toList!6070 (+!2769 lt!421064 lt!421061)) k0!1099)))))

(assert (= (and d!113075 c!97124) b!934728))

(assert (= (and d!113075 (not c!97124)) b!934729))

(assert (= (and d!113075 (not res!629618)) b!934730))

(declare-fun m!869203 () Bool)

(assert (=> d!113075 m!869203))

(declare-fun m!869205 () Bool)

(assert (=> b!934728 m!869205))

(declare-fun m!869207 () Bool)

(assert (=> b!934728 m!869207))

(assert (=> b!934728 m!869207))

(declare-fun m!869209 () Bool)

(assert (=> b!934728 m!869209))

(assert (=> b!934730 m!869207))

(assert (=> b!934730 m!869207))

(assert (=> b!934730 m!869209))

(assert (=> b!934557 d!113075))

(declare-fun d!113077 () Bool)

(declare-fun e!524874 () Bool)

(assert (=> d!113077 e!524874))

(declare-fun res!629621 () Bool)

(assert (=> d!113077 (=> (not res!629621) (not e!524874))))

(assert (=> d!113077 (= res!629621 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27541 _keys!1487)) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27542 _values!1231))))))

(declare-fun lt!421191 () Unit!31531)

(declare-fun choose!1552 (array!56284 array!56286 (_ BitVec 32) (_ BitVec 32) V!31849 V!31849 (_ BitVec 32) Int) Unit!31531)

(assert (=> d!113077 (= lt!421191 (choose!1552 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> d!113077 (validMask!0 mask!1881)))

(assert (=> d!113077 (= (lemmaListMapRecursiveValidKeyArray!204 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) lt!421191)))

(declare-fun b!934733 () Bool)

(assert (=> b!934733 (= e!524874 (= (getCurrentListMap!3262 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2769 (getCurrentListMap!3262 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235) (tuple2!13399 (select (arr!27081 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14272 (select (arr!27082 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1608 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!113077 res!629621) b!934733))

(declare-fun b_lambda!14047 () Bool)

(assert (=> (not b_lambda!14047) (not b!934733)))

(assert (=> b!934733 t!27411))

(declare-fun b_and!28907 () Bool)

(assert (= b_and!28905 (and (=> t!27411 result!11933) b_and!28907)))

(declare-fun m!869211 () Bool)

(assert (=> d!113077 m!869211))

(assert (=> d!113077 m!869017))

(declare-fun m!869213 () Bool)

(assert (=> b!934733 m!869213))

(assert (=> b!934733 m!869029))

(assert (=> b!934733 m!868987))

(assert (=> b!934733 m!868985))

(assert (=> b!934733 m!868989))

(assert (=> b!934733 m!869213))

(declare-fun m!869215 () Bool)

(assert (=> b!934733 m!869215))

(assert (=> b!934733 m!868999))

(assert (=> b!934733 m!868987))

(assert (=> b!934733 m!868985))

(assert (=> b!934557 d!113077))

(declare-fun b!934734 () Bool)

(declare-fun e!524876 () Bool)

(declare-fun call!40664 () Bool)

(assert (=> b!934734 (= e!524876 call!40664)))

(declare-fun b!934735 () Bool)

(declare-fun e!524878 () Bool)

(assert (=> b!934735 (= e!524878 e!524876)))

(declare-fun c!97125 () Bool)

(assert (=> b!934735 (= c!97125 (validKeyInArray!0 (select (arr!27081 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!934736 () Bool)

(declare-fun e!524875 () Bool)

(assert (=> b!934736 (= e!524875 (contains!5073 Nil!19203 (select (arr!27081 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!934737 () Bool)

(assert (=> b!934737 (= e!524876 call!40664)))

(declare-fun b!934738 () Bool)

(declare-fun e!524877 () Bool)

(assert (=> b!934738 (= e!524877 e!524878)))

(declare-fun res!629622 () Bool)

(assert (=> b!934738 (=> (not res!629622) (not e!524878))))

(assert (=> b!934738 (= res!629622 (not e!524875))))

(declare-fun res!629623 () Bool)

(assert (=> b!934738 (=> (not res!629623) (not e!524875))))

(assert (=> b!934738 (= res!629623 (validKeyInArray!0 (select (arr!27081 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun d!113079 () Bool)

(declare-fun res!629624 () Bool)

(assert (=> d!113079 (=> res!629624 e!524877)))

(assert (=> d!113079 (= res!629624 (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27541 _keys!1487)))))

(assert (=> d!113079 (= (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19203) e!524877)))

(declare-fun bm!40661 () Bool)

(assert (=> bm!40661 (= call!40664 (arrayNoDuplicates!0 _keys!1487 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (ite c!97125 (Cons!19202 (select (arr!27081 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) Nil!19203) Nil!19203)))))

(assert (= (and d!113079 (not res!629624)) b!934738))

(assert (= (and b!934738 res!629623) b!934736))

(assert (= (and b!934738 res!629622) b!934735))

(assert (= (and b!934735 c!97125) b!934737))

(assert (= (and b!934735 (not c!97125)) b!934734))

(assert (= (or b!934737 b!934734) bm!40661))

(assert (=> b!934735 m!869029))

(assert (=> b!934735 m!869029))

(assert (=> b!934735 m!869101))

(assert (=> b!934736 m!869029))

(assert (=> b!934736 m!869029))

(declare-fun m!869217 () Bool)

(assert (=> b!934736 m!869217))

(assert (=> b!934738 m!869029))

(assert (=> b!934738 m!869029))

(assert (=> b!934738 m!869101))

(assert (=> bm!40661 m!869029))

(declare-fun m!869219 () Bool)

(assert (=> bm!40661 m!869219))

(assert (=> b!934557 d!113079))

(declare-fun d!113081 () Bool)

(declare-fun e!524881 () Bool)

(assert (=> d!113081 e!524881))

(declare-fun res!629630 () Bool)

(assert (=> d!113081 (=> (not res!629630) (not e!524881))))

(declare-fun lt!421203 () ListLongMap!12109)

(assert (=> d!113081 (= res!629630 (contains!5071 lt!421203 (_1!6709 lt!421061)))))

(declare-fun lt!421202 () List!19205)

(assert (=> d!113081 (= lt!421203 (ListLongMap!12110 lt!421202))))

(declare-fun lt!421200 () Unit!31531)

(declare-fun lt!421201 () Unit!31531)

(assert (=> d!113081 (= lt!421200 lt!421201)))

(assert (=> d!113081 (= (getValueByKey!483 lt!421202 (_1!6709 lt!421061)) (Some!488 (_2!6709 lt!421061)))))

(declare-fun lemmaContainsTupThenGetReturnValue!257 (List!19205 (_ BitVec 64) V!31849) Unit!31531)

(assert (=> d!113081 (= lt!421201 (lemmaContainsTupThenGetReturnValue!257 lt!421202 (_1!6709 lt!421061) (_2!6709 lt!421061)))))

(declare-fun insertStrictlySorted!313 (List!19205 (_ BitVec 64) V!31849) List!19205)

(assert (=> d!113081 (= lt!421202 (insertStrictlySorted!313 (toList!6070 (getCurrentListMap!3262 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235)) (_1!6709 lt!421061) (_2!6709 lt!421061)))))

(assert (=> d!113081 (= (+!2769 (getCurrentListMap!3262 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!421061) lt!421203)))

(declare-fun b!934743 () Bool)

(declare-fun res!629629 () Bool)

(assert (=> b!934743 (=> (not res!629629) (not e!524881))))

(assert (=> b!934743 (= res!629629 (= (getValueByKey!483 (toList!6070 lt!421203) (_1!6709 lt!421061)) (Some!488 (_2!6709 lt!421061))))))

(declare-fun b!934744 () Bool)

(declare-fun contains!5074 (List!19205 tuple2!13398) Bool)

(assert (=> b!934744 (= e!524881 (contains!5074 (toList!6070 lt!421203) lt!421061))))

(assert (= (and d!113081 res!629630) b!934743))

(assert (= (and b!934743 res!629629) b!934744))

(declare-fun m!869221 () Bool)

(assert (=> d!113081 m!869221))

(declare-fun m!869223 () Bool)

(assert (=> d!113081 m!869223))

(declare-fun m!869225 () Bool)

(assert (=> d!113081 m!869225))

(declare-fun m!869227 () Bool)

(assert (=> d!113081 m!869227))

(declare-fun m!869229 () Bool)

(assert (=> b!934743 m!869229))

(declare-fun m!869231 () Bool)

(assert (=> b!934744 m!869231))

(assert (=> b!934557 d!113081))

(declare-fun d!113083 () Bool)

(declare-fun e!524884 () Bool)

(assert (=> d!113083 e!524884))

(declare-fun c!97128 () Bool)

(assert (=> d!113083 (= c!97128 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!421206 () Unit!31531)

(declare-fun choose!1553 (array!56284 array!56286 (_ BitVec 32) (_ BitVec 32) V!31849 V!31849 (_ BitVec 64) (_ BitVec 32) Int) Unit!31531)

(assert (=> d!113083 (= lt!421206 (choose!1553 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> d!113083 (validMask!0 mask!1881)))

(assert (=> d!113083 (= (lemmaListMapContainsThenArrayContainsFrom!282 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235) lt!421206)))

(declare-fun b!934749 () Bool)

(assert (=> b!934749 (= e!524884 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!934750 () Bool)

(assert (=> b!934750 (= e!524884 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!113083 c!97128) b!934749))

(assert (= (and d!113083 (not c!97128)) b!934750))

(declare-fun m!869233 () Bool)

(assert (=> d!113083 m!869233))

(assert (=> d!113083 m!869017))

(assert (=> b!934749 m!869031))

(assert (=> b!934557 d!113083))

(declare-fun d!113085 () Bool)

(assert (=> d!113085 (contains!5071 (+!2769 lt!421064 (tuple2!13399 lt!421058 lt!421059)) k0!1099)))

(declare-fun lt!421209 () Unit!31531)

(declare-fun choose!1554 (ListLongMap!12109 (_ BitVec 64) V!31849 (_ BitVec 64)) Unit!31531)

(assert (=> d!113085 (= lt!421209 (choose!1554 lt!421064 lt!421058 lt!421059 k0!1099))))

(assert (=> d!113085 (contains!5071 lt!421064 k0!1099)))

(assert (=> d!113085 (= (addStillContains!525 lt!421064 lt!421058 lt!421059 k0!1099) lt!421209)))

(declare-fun bs!26237 () Bool)

(assert (= bs!26237 d!113085))

(declare-fun m!869235 () Bool)

(assert (=> bs!26237 m!869235))

(assert (=> bs!26237 m!869235))

(declare-fun m!869237 () Bool)

(assert (=> bs!26237 m!869237))

(declare-fun m!869239 () Bool)

(assert (=> bs!26237 m!869239))

(assert (=> bs!26237 m!869023))

(assert (=> b!934557 d!113085))

(declare-fun d!113087 () Bool)

(declare-fun e!524885 () Bool)

(assert (=> d!113087 e!524885))

(declare-fun res!629632 () Bool)

(assert (=> d!113087 (=> (not res!629632) (not e!524885))))

(declare-fun lt!421213 () ListLongMap!12109)

(assert (=> d!113087 (= res!629632 (contains!5071 lt!421213 (_1!6709 lt!421061)))))

(declare-fun lt!421212 () List!19205)

(assert (=> d!113087 (= lt!421213 (ListLongMap!12110 lt!421212))))

(declare-fun lt!421210 () Unit!31531)

(declare-fun lt!421211 () Unit!31531)

(assert (=> d!113087 (= lt!421210 lt!421211)))

(assert (=> d!113087 (= (getValueByKey!483 lt!421212 (_1!6709 lt!421061)) (Some!488 (_2!6709 lt!421061)))))

(assert (=> d!113087 (= lt!421211 (lemmaContainsTupThenGetReturnValue!257 lt!421212 (_1!6709 lt!421061) (_2!6709 lt!421061)))))

(assert (=> d!113087 (= lt!421212 (insertStrictlySorted!313 (toList!6070 lt!421064) (_1!6709 lt!421061) (_2!6709 lt!421061)))))

(assert (=> d!113087 (= (+!2769 lt!421064 lt!421061) lt!421213)))

(declare-fun b!934752 () Bool)

(declare-fun res!629631 () Bool)

(assert (=> b!934752 (=> (not res!629631) (not e!524885))))

(assert (=> b!934752 (= res!629631 (= (getValueByKey!483 (toList!6070 lt!421213) (_1!6709 lt!421061)) (Some!488 (_2!6709 lt!421061))))))

(declare-fun b!934753 () Bool)

(assert (=> b!934753 (= e!524885 (contains!5074 (toList!6070 lt!421213) lt!421061))))

(assert (= (and d!113087 res!629632) b!934752))

(assert (= (and b!934752 res!629631) b!934753))

(declare-fun m!869241 () Bool)

(assert (=> d!113087 m!869241))

(declare-fun m!869243 () Bool)

(assert (=> d!113087 m!869243))

(declare-fun m!869245 () Bool)

(assert (=> d!113087 m!869245))

(declare-fun m!869247 () Bool)

(assert (=> d!113087 m!869247))

(declare-fun m!869249 () Bool)

(assert (=> b!934752 m!869249))

(declare-fun m!869251 () Bool)

(assert (=> b!934753 m!869251))

(assert (=> b!934557 d!113087))

(declare-fun d!113089 () Bool)

(declare-fun c!97131 () Bool)

(assert (=> d!113089 (= c!97131 ((_ is ValueCellFull!9600) (select (arr!27082 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun e!524888 () V!31849)

(assert (=> d!113089 (= (get!14272 (select (arr!27082 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1608 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)) e!524888)))

(declare-fun b!934758 () Bool)

(declare-fun get!14274 (ValueCell!9600 V!31849) V!31849)

(assert (=> b!934758 (= e!524888 (get!14274 (select (arr!27082 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1608 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!934759 () Bool)

(declare-fun get!14275 (ValueCell!9600 V!31849) V!31849)

(assert (=> b!934759 (= e!524888 (get!14275 (select (arr!27082 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1608 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113089 c!97131) b!934758))

(assert (= (and d!113089 (not c!97131)) b!934759))

(assert (=> b!934758 m!868987))

(assert (=> b!934758 m!868985))

(declare-fun m!869253 () Bool)

(assert (=> b!934758 m!869253))

(assert (=> b!934759 m!868987))

(assert (=> b!934759 m!868985))

(declare-fun m!869255 () Bool)

(assert (=> b!934759 m!869255))

(assert (=> b!934557 d!113089))

(declare-fun d!113091 () Bool)

(assert (=> d!113091 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19203)))

(declare-fun lt!421216 () Unit!31531)

(declare-fun choose!39 (array!56284 (_ BitVec 32) (_ BitVec 32)) Unit!31531)

(assert (=> d!113091 (= lt!421216 (choose!39 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> d!113091 (bvslt (size!27541 _keys!1487) #b01111111111111111111111111111111)))

(assert (=> d!113091 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)) lt!421216)))

(declare-fun bs!26238 () Bool)

(assert (= bs!26238 d!113091))

(assert (=> bs!26238 m!868991))

(declare-fun m!869257 () Bool)

(assert (=> bs!26238 m!869257))

(assert (=> b!934557 d!113091))

(declare-fun d!113093 () Bool)

(assert (=> d!113093 (= (validKeyInArray!0 k0!1099) (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!934567 d!113093))

(declare-fun d!113095 () Bool)

(declare-fun get!14276 (Option!489) V!31849)

(assert (=> d!113095 (= (apply!850 lt!421064 k0!1099) (get!14276 (getValueByKey!483 (toList!6070 lt!421064) k0!1099)))))

(declare-fun bs!26239 () Bool)

(assert (= bs!26239 d!113095))

(declare-fun m!869259 () Bool)

(assert (=> bs!26239 m!869259))

(assert (=> bs!26239 m!869259))

(declare-fun m!869261 () Bool)

(assert (=> bs!26239 m!869261))

(assert (=> b!934556 d!113095))

(declare-fun d!113097 () Bool)

(declare-fun res!629637 () Bool)

(declare-fun e!524893 () Bool)

(assert (=> d!113097 (=> res!629637 e!524893)))

(assert (=> d!113097 (= res!629637 ((_ is Nil!19203) Nil!19203))))

(assert (=> d!113097 (= (noDuplicate!1352 Nil!19203) e!524893)))

(declare-fun b!934764 () Bool)

(declare-fun e!524894 () Bool)

(assert (=> b!934764 (= e!524893 e!524894)))

(declare-fun res!629638 () Bool)

(assert (=> b!934764 (=> (not res!629638) (not e!524894))))

(assert (=> b!934764 (= res!629638 (not (contains!5073 (t!27413 Nil!19203) (h!20348 Nil!19203))))))

(declare-fun b!934765 () Bool)

(assert (=> b!934765 (= e!524894 (noDuplicate!1352 (t!27413 Nil!19203)))))

(assert (= (and d!113097 (not res!629637)) b!934764))

(assert (= (and b!934764 res!629638) b!934765))

(declare-fun m!869263 () Bool)

(assert (=> b!934764 m!869263))

(declare-fun m!869265 () Bool)

(assert (=> b!934765 m!869265))

(assert (=> b!934566 d!113097))

(declare-fun d!113099 () Bool)

(declare-fun e!524895 () Bool)

(assert (=> d!113099 e!524895))

(declare-fun res!629639 () Bool)

(assert (=> d!113099 (=> res!629639 e!524895)))

(declare-fun lt!421219 () Bool)

(assert (=> d!113099 (= res!629639 (not lt!421219))))

(declare-fun lt!421218 () Bool)

(assert (=> d!113099 (= lt!421219 lt!421218)))

(declare-fun lt!421217 () Unit!31531)

(declare-fun e!524896 () Unit!31531)

(assert (=> d!113099 (= lt!421217 e!524896)))

(declare-fun c!97132 () Bool)

(assert (=> d!113099 (= c!97132 lt!421218)))

(assert (=> d!113099 (= lt!421218 (containsKey!448 (toList!6070 lt!421064) k0!1099))))

(assert (=> d!113099 (= (contains!5071 lt!421064 k0!1099) lt!421219)))

(declare-fun b!934766 () Bool)

(declare-fun lt!421220 () Unit!31531)

(assert (=> b!934766 (= e!524896 lt!421220)))

(assert (=> b!934766 (= lt!421220 (lemmaContainsKeyImpliesGetValueByKeyDefined!343 (toList!6070 lt!421064) k0!1099))))

(assert (=> b!934766 (isDefined!353 (getValueByKey!483 (toList!6070 lt!421064) k0!1099))))

(declare-fun b!934767 () Bool)

(declare-fun Unit!31538 () Unit!31531)

(assert (=> b!934767 (= e!524896 Unit!31538)))

(declare-fun b!934768 () Bool)

(assert (=> b!934768 (= e!524895 (isDefined!353 (getValueByKey!483 (toList!6070 lt!421064) k0!1099)))))

(assert (= (and d!113099 c!97132) b!934766))

(assert (= (and d!113099 (not c!97132)) b!934767))

(assert (= (and d!113099 (not res!629639)) b!934768))

(declare-fun m!869267 () Bool)

(assert (=> d!113099 m!869267))

(declare-fun m!869269 () Bool)

(assert (=> b!934766 m!869269))

(assert (=> b!934766 m!869259))

(assert (=> b!934766 m!869259))

(declare-fun m!869271 () Bool)

(assert (=> b!934766 m!869271))

(assert (=> b!934768 m!869259))

(assert (=> b!934768 m!869259))

(assert (=> b!934768 m!869271))

(assert (=> b!934562 d!113099))

(declare-fun bm!40662 () Bool)

(declare-fun call!40669 () ListLongMap!12109)

(declare-fun call!40665 () ListLongMap!12109)

(assert (=> bm!40662 (= call!40669 call!40665)))

(declare-fun bm!40663 () Bool)

(declare-fun call!40671 () ListLongMap!12109)

(declare-fun call!40666 () ListLongMap!12109)

(assert (=> bm!40663 (= call!40671 call!40666)))

(declare-fun b!934770 () Bool)

(declare-fun e!524902 () ListLongMap!12109)

(declare-fun e!524898 () ListLongMap!12109)

(assert (=> b!934770 (= e!524902 e!524898)))

(declare-fun c!97136 () Bool)

(assert (=> b!934770 (= c!97136 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!40664 () Bool)

(declare-fun call!40670 () ListLongMap!12109)

(assert (=> bm!40664 (= call!40665 call!40670)))

(declare-fun b!934771 () Bool)

(assert (=> b!934771 (= e!524902 (+!2769 call!40666 (tuple2!13399 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun c!97137 () Bool)

(declare-fun bm!40665 () Bool)

(assert (=> bm!40665 (= call!40666 (+!2769 (ite c!97137 call!40670 (ite c!97136 call!40665 call!40669)) (ite (or c!97137 c!97136) (tuple2!13399 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13399 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun b!934772 () Bool)

(declare-fun e!524900 () ListLongMap!12109)

(assert (=> b!934772 (= e!524900 call!40669)))

(declare-fun b!934773 () Bool)

(declare-fun e!524899 () Bool)

(declare-fun lt!421227 () ListLongMap!12109)

(assert (=> b!934773 (= e!524899 (= (apply!850 lt!421227 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!934774 () Bool)

(declare-fun e!524906 () Unit!31531)

(declare-fun lt!421239 () Unit!31531)

(assert (=> b!934774 (= e!524906 lt!421239)))

(declare-fun lt!421232 () ListLongMap!12109)

(assert (=> b!934774 (= lt!421232 (getCurrentListMapNoExtraKeys!3316 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!421229 () (_ BitVec 64))

(assert (=> b!934774 (= lt!421229 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421240 () (_ BitVec 64))

(assert (=> b!934774 (= lt!421240 (select (arr!27081 _keys!1487) from!1844))))

(declare-fun lt!421221 () Unit!31531)

(assert (=> b!934774 (= lt!421221 (addStillContains!525 lt!421232 lt!421229 zeroValue!1173 lt!421240))))

(assert (=> b!934774 (contains!5071 (+!2769 lt!421232 (tuple2!13399 lt!421229 zeroValue!1173)) lt!421240)))

(declare-fun lt!421222 () Unit!31531)

(assert (=> b!934774 (= lt!421222 lt!421221)))

(declare-fun lt!421233 () ListLongMap!12109)

(assert (=> b!934774 (= lt!421233 (getCurrentListMapNoExtraKeys!3316 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!421235 () (_ BitVec 64))

(assert (=> b!934774 (= lt!421235 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421234 () (_ BitVec 64))

(assert (=> b!934774 (= lt!421234 (select (arr!27081 _keys!1487) from!1844))))

(declare-fun lt!421241 () Unit!31531)

(assert (=> b!934774 (= lt!421241 (addApplyDifferent!411 lt!421233 lt!421235 minValue!1173 lt!421234))))

(assert (=> b!934774 (= (apply!850 (+!2769 lt!421233 (tuple2!13399 lt!421235 minValue!1173)) lt!421234) (apply!850 lt!421233 lt!421234))))

(declare-fun lt!421238 () Unit!31531)

(assert (=> b!934774 (= lt!421238 lt!421241)))

(declare-fun lt!421230 () ListLongMap!12109)

(assert (=> b!934774 (= lt!421230 (getCurrentListMapNoExtraKeys!3316 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!421242 () (_ BitVec 64))

(assert (=> b!934774 (= lt!421242 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421224 () (_ BitVec 64))

(assert (=> b!934774 (= lt!421224 (select (arr!27081 _keys!1487) from!1844))))

(declare-fun lt!421231 () Unit!31531)

(assert (=> b!934774 (= lt!421231 (addApplyDifferent!411 lt!421230 lt!421242 zeroValue!1173 lt!421224))))

(assert (=> b!934774 (= (apply!850 (+!2769 lt!421230 (tuple2!13399 lt!421242 zeroValue!1173)) lt!421224) (apply!850 lt!421230 lt!421224))))

(declare-fun lt!421228 () Unit!31531)

(assert (=> b!934774 (= lt!421228 lt!421231)))

(declare-fun lt!421237 () ListLongMap!12109)

(assert (=> b!934774 (= lt!421237 (getCurrentListMapNoExtraKeys!3316 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!421223 () (_ BitVec 64))

(assert (=> b!934774 (= lt!421223 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421236 () (_ BitVec 64))

(assert (=> b!934774 (= lt!421236 (select (arr!27081 _keys!1487) from!1844))))

(assert (=> b!934774 (= lt!421239 (addApplyDifferent!411 lt!421237 lt!421223 minValue!1173 lt!421236))))

(assert (=> b!934774 (= (apply!850 (+!2769 lt!421237 (tuple2!13399 lt!421223 minValue!1173)) lt!421236) (apply!850 lt!421237 lt!421236))))

(declare-fun b!934775 () Bool)

(assert (=> b!934775 (= e!524900 call!40671)))

(declare-fun b!934776 () Bool)

(declare-fun res!629641 () Bool)

(declare-fun e!524905 () Bool)

(assert (=> b!934776 (=> (not res!629641) (not e!524905))))

(declare-fun e!524901 () Bool)

(assert (=> b!934776 (= res!629641 e!524901)))

(declare-fun res!629645 () Bool)

(assert (=> b!934776 (=> res!629645 e!524901)))

(declare-fun e!524897 () Bool)

(assert (=> b!934776 (= res!629645 (not e!524897))))

(declare-fun res!629643 () Bool)

(assert (=> b!934776 (=> (not res!629643) (not e!524897))))

(assert (=> b!934776 (= res!629643 (bvslt from!1844 (size!27541 _keys!1487)))))

(declare-fun b!934777 () Bool)

(declare-fun c!97133 () Bool)

(assert (=> b!934777 (= c!97133 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!934777 (= e!524898 e!524900)))

(declare-fun b!934778 () Bool)

(declare-fun res!629640 () Bool)

(assert (=> b!934778 (=> (not res!629640) (not e!524905))))

(declare-fun e!524904 () Bool)

(assert (=> b!934778 (= res!629640 e!524904)))

(declare-fun c!97138 () Bool)

(assert (=> b!934778 (= c!97138 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!934779 () Bool)

(assert (=> b!934779 (= e!524897 (validKeyInArray!0 (select (arr!27081 _keys!1487) from!1844)))))

(declare-fun b!934780 () Bool)

(declare-fun e!524909 () Bool)

(assert (=> b!934780 (= e!524905 e!524909)))

(declare-fun c!97134 () Bool)

(assert (=> b!934780 (= c!97134 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!934769 () Bool)

(declare-fun call!40668 () Bool)

(assert (=> b!934769 (= e!524909 (not call!40668))))

(declare-fun d!113101 () Bool)

(assert (=> d!113101 e!524905))

(declare-fun res!629644 () Bool)

(assert (=> d!113101 (=> (not res!629644) (not e!524905))))

(assert (=> d!113101 (= res!629644 (or (bvsge from!1844 (size!27541 _keys!1487)) (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27541 _keys!1487)))))))

(declare-fun lt!421226 () ListLongMap!12109)

(assert (=> d!113101 (= lt!421227 lt!421226)))

(declare-fun lt!421225 () Unit!31531)

(assert (=> d!113101 (= lt!421225 e!524906)))

(declare-fun c!97135 () Bool)

(declare-fun e!524903 () Bool)

(assert (=> d!113101 (= c!97135 e!524903)))

(declare-fun res!629648 () Bool)

(assert (=> d!113101 (=> (not res!629648) (not e!524903))))

(assert (=> d!113101 (= res!629648 (bvslt from!1844 (size!27541 _keys!1487)))))

(assert (=> d!113101 (= lt!421226 e!524902)))

(assert (=> d!113101 (= c!97137 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113101 (validMask!0 mask!1881)))

(assert (=> d!113101 (= (getCurrentListMap!3262 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) lt!421227)))

(declare-fun b!934781 () Bool)

(assert (=> b!934781 (= e!524904 e!524899)))

(declare-fun res!629646 () Bool)

(declare-fun call!40667 () Bool)

(assert (=> b!934781 (= res!629646 call!40667)))

(assert (=> b!934781 (=> (not res!629646) (not e!524899))))

(declare-fun b!934782 () Bool)

(declare-fun e!524908 () Bool)

(assert (=> b!934782 (= e!524908 (= (apply!850 lt!421227 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun b!934783 () Bool)

(assert (=> b!934783 (= e!524904 (not call!40667))))

(declare-fun b!934784 () Bool)

(declare-fun Unit!31539 () Unit!31531)

(assert (=> b!934784 (= e!524906 Unit!31539)))

(declare-fun b!934785 () Bool)

(assert (=> b!934785 (= e!524909 e!524908)))

(declare-fun res!629642 () Bool)

(assert (=> b!934785 (= res!629642 call!40668)))

(assert (=> b!934785 (=> (not res!629642) (not e!524908))))

(declare-fun bm!40666 () Bool)

(assert (=> bm!40666 (= call!40667 (contains!5071 lt!421227 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!934786 () Bool)

(declare-fun e!524907 () Bool)

(assert (=> b!934786 (= e!524901 e!524907)))

(declare-fun res!629647 () Bool)

(assert (=> b!934786 (=> (not res!629647) (not e!524907))))

(assert (=> b!934786 (= res!629647 (contains!5071 lt!421227 (select (arr!27081 _keys!1487) from!1844)))))

(assert (=> b!934786 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27541 _keys!1487)))))

(declare-fun bm!40667 () Bool)

(assert (=> bm!40667 (= call!40670 (getCurrentListMapNoExtraKeys!3316 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!934787 () Bool)

(assert (=> b!934787 (= e!524898 call!40671)))

(declare-fun b!934788 () Bool)

(assert (=> b!934788 (= e!524907 (= (apply!850 lt!421227 (select (arr!27081 _keys!1487) from!1844)) (get!14272 (select (arr!27082 _values!1231) from!1844) (dynLambda!1608 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!934788 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27542 _values!1231)))))

(assert (=> b!934788 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27541 _keys!1487)))))

(declare-fun bm!40668 () Bool)

(assert (=> bm!40668 (= call!40668 (contains!5071 lt!421227 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!934789 () Bool)

(assert (=> b!934789 (= e!524903 (validKeyInArray!0 (select (arr!27081 _keys!1487) from!1844)))))

(assert (= (and d!113101 c!97137) b!934771))

(assert (= (and d!113101 (not c!97137)) b!934770))

(assert (= (and b!934770 c!97136) b!934787))

(assert (= (and b!934770 (not c!97136)) b!934777))

(assert (= (and b!934777 c!97133) b!934775))

(assert (= (and b!934777 (not c!97133)) b!934772))

(assert (= (or b!934775 b!934772) bm!40662))

(assert (= (or b!934787 bm!40662) bm!40664))

(assert (= (or b!934787 b!934775) bm!40663))

(assert (= (or b!934771 bm!40664) bm!40667))

(assert (= (or b!934771 bm!40663) bm!40665))

(assert (= (and d!113101 res!629648) b!934789))

(assert (= (and d!113101 c!97135) b!934774))

(assert (= (and d!113101 (not c!97135)) b!934784))

(assert (= (and d!113101 res!629644) b!934776))

(assert (= (and b!934776 res!629643) b!934779))

(assert (= (and b!934776 (not res!629645)) b!934786))

(assert (= (and b!934786 res!629647) b!934788))

(assert (= (and b!934776 res!629641) b!934778))

(assert (= (and b!934778 c!97138) b!934781))

(assert (= (and b!934778 (not c!97138)) b!934783))

(assert (= (and b!934781 res!629646) b!934773))

(assert (= (or b!934781 b!934783) bm!40666))

(assert (= (and b!934778 res!629640) b!934780))

(assert (= (and b!934780 c!97134) b!934785))

(assert (= (and b!934780 (not c!97134)) b!934769))

(assert (= (and b!934785 res!629642) b!934782))

(assert (= (or b!934785 b!934769) bm!40668))

(declare-fun b_lambda!14049 () Bool)

(assert (=> (not b_lambda!14049) (not b!934788)))

(assert (=> b!934788 t!27411))

(declare-fun b_and!28909 () Bool)

(assert (= b_and!28907 (and (=> t!27411 result!11933) b_and!28909)))

(declare-fun m!869273 () Bool)

(assert (=> bm!40667 m!869273))

(declare-fun m!869275 () Bool)

(assert (=> bm!40666 m!869275))

(declare-fun m!869277 () Bool)

(assert (=> b!934779 m!869277))

(assert (=> b!934779 m!869277))

(declare-fun m!869279 () Bool)

(assert (=> b!934779 m!869279))

(declare-fun m!869281 () Bool)

(assert (=> b!934774 m!869281))

(declare-fun m!869283 () Bool)

(assert (=> b!934774 m!869283))

(declare-fun m!869285 () Bool)

(assert (=> b!934774 m!869285))

(declare-fun m!869287 () Bool)

(assert (=> b!934774 m!869287))

(declare-fun m!869289 () Bool)

(assert (=> b!934774 m!869289))

(declare-fun m!869291 () Bool)

(assert (=> b!934774 m!869291))

(declare-fun m!869293 () Bool)

(assert (=> b!934774 m!869293))

(assert (=> b!934774 m!869273))

(declare-fun m!869295 () Bool)

(assert (=> b!934774 m!869295))

(declare-fun m!869297 () Bool)

(assert (=> b!934774 m!869297))

(assert (=> b!934774 m!869293))

(declare-fun m!869299 () Bool)

(assert (=> b!934774 m!869299))

(assert (=> b!934774 m!869277))

(assert (=> b!934774 m!869287))

(declare-fun m!869301 () Bool)

(assert (=> b!934774 m!869301))

(declare-fun m!869303 () Bool)

(assert (=> b!934774 m!869303))

(assert (=> b!934774 m!869297))

(declare-fun m!869305 () Bool)

(assert (=> b!934774 m!869305))

(assert (=> b!934774 m!869281))

(declare-fun m!869307 () Bool)

(assert (=> b!934774 m!869307))

(declare-fun m!869309 () Bool)

(assert (=> b!934774 m!869309))

(assert (=> b!934789 m!869277))

(assert (=> b!934789 m!869277))

(assert (=> b!934789 m!869279))

(assert (=> d!113101 m!869017))

(declare-fun m!869311 () Bool)

(assert (=> b!934782 m!869311))

(assert (=> b!934788 m!869277))

(assert (=> b!934788 m!869277))

(declare-fun m!869313 () Bool)

(assert (=> b!934788 m!869313))

(declare-fun m!869315 () Bool)

(assert (=> b!934788 m!869315))

(assert (=> b!934788 m!868985))

(declare-fun m!869317 () Bool)

(assert (=> b!934788 m!869317))

(assert (=> b!934788 m!868985))

(assert (=> b!934788 m!869315))

(declare-fun m!869319 () Bool)

(assert (=> b!934773 m!869319))

(declare-fun m!869321 () Bool)

(assert (=> b!934771 m!869321))

(declare-fun m!869323 () Bool)

(assert (=> bm!40668 m!869323))

(declare-fun m!869325 () Bool)

(assert (=> bm!40665 m!869325))

(assert (=> b!934786 m!869277))

(assert (=> b!934786 m!869277))

(declare-fun m!869327 () Bool)

(assert (=> b!934786 m!869327))

(assert (=> b!934562 d!113101))

(declare-fun bm!40671 () Bool)

(declare-fun call!40674 () Bool)

(assert (=> bm!40671 (= call!40674 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1487 mask!1881))))

(declare-fun b!934798 () Bool)

(declare-fun e!524917 () Bool)

(assert (=> b!934798 (= e!524917 call!40674)))

(declare-fun b!934799 () Bool)

(declare-fun e!524918 () Bool)

(assert (=> b!934799 (= e!524918 e!524917)))

(declare-fun c!97141 () Bool)

(assert (=> b!934799 (= c!97141 (validKeyInArray!0 (select (arr!27081 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!934800 () Bool)

(declare-fun e!524916 () Bool)

(assert (=> b!934800 (= e!524917 e!524916)))

(declare-fun lt!421249 () (_ BitVec 64))

(assert (=> b!934800 (= lt!421249 (select (arr!27081 _keys!1487) #b00000000000000000000000000000000))))

(declare-fun lt!421251 () Unit!31531)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56284 (_ BitVec 64) (_ BitVec 32)) Unit!31531)

(assert (=> b!934800 (= lt!421251 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1487 lt!421249 #b00000000000000000000000000000000))))

(assert (=> b!934800 (arrayContainsKey!0 _keys!1487 lt!421249 #b00000000000000000000000000000000)))

(declare-fun lt!421250 () Unit!31531)

(assert (=> b!934800 (= lt!421250 lt!421251)))

(declare-fun res!629653 () Bool)

(declare-datatypes ((SeekEntryResult!8965 0))(
  ( (MissingZero!8965 (index!38230 (_ BitVec 32))) (Found!8965 (index!38231 (_ BitVec 32))) (Intermediate!8965 (undefined!9777 Bool) (index!38232 (_ BitVec 32)) (x!80155 (_ BitVec 32))) (Undefined!8965) (MissingVacant!8965 (index!38233 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!56284 (_ BitVec 32)) SeekEntryResult!8965)

(assert (=> b!934800 (= res!629653 (= (seekEntryOrOpen!0 (select (arr!27081 _keys!1487) #b00000000000000000000000000000000) _keys!1487 mask!1881) (Found!8965 #b00000000000000000000000000000000)))))

(assert (=> b!934800 (=> (not res!629653) (not e!524916))))

(declare-fun b!934801 () Bool)

(assert (=> b!934801 (= e!524916 call!40674)))

(declare-fun d!113103 () Bool)

(declare-fun res!629654 () Bool)

(assert (=> d!113103 (=> res!629654 e!524918)))

(assert (=> d!113103 (= res!629654 (bvsge #b00000000000000000000000000000000 (size!27541 _keys!1487)))))

(assert (=> d!113103 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881) e!524918)))

(assert (= (and d!113103 (not res!629654)) b!934799))

(assert (= (and b!934799 c!97141) b!934800))

(assert (= (and b!934799 (not c!97141)) b!934798))

(assert (= (and b!934800 res!629653) b!934801))

(assert (= (or b!934801 b!934798) bm!40671))

(declare-fun m!869329 () Bool)

(assert (=> bm!40671 m!869329))

(assert (=> b!934799 m!869089))

(assert (=> b!934799 m!869089))

(assert (=> b!934799 m!869091))

(assert (=> b!934800 m!869089))

(declare-fun m!869331 () Bool)

(assert (=> b!934800 m!869331))

(declare-fun m!869333 () Bool)

(assert (=> b!934800 m!869333))

(assert (=> b!934800 m!869089))

(declare-fun m!869335 () Bool)

(assert (=> b!934800 m!869335))

(assert (=> b!934564 d!113103))

(declare-fun d!113105 () Bool)

(assert (=> d!113105 (= (validMask!0 mask!1881) (and (or (= mask!1881 #b00000000000000000000000000000111) (= mask!1881 #b00000000000000000000000000001111) (= mask!1881 #b00000000000000000000000000011111) (= mask!1881 #b00000000000000000000000000111111) (= mask!1881 #b00000000000000000000000001111111) (= mask!1881 #b00000000000000000000000011111111) (= mask!1881 #b00000000000000000000000111111111) (= mask!1881 #b00000000000000000000001111111111) (= mask!1881 #b00000000000000000000011111111111) (= mask!1881 #b00000000000000000000111111111111) (= mask!1881 #b00000000000000000001111111111111) (= mask!1881 #b00000000000000000011111111111111) (= mask!1881 #b00000000000000000111111111111111) (= mask!1881 #b00000000000000001111111111111111) (= mask!1881 #b00000000000000011111111111111111) (= mask!1881 #b00000000000000111111111111111111) (= mask!1881 #b00000000000001111111111111111111) (= mask!1881 #b00000000000011111111111111111111) (= mask!1881 #b00000000000111111111111111111111) (= mask!1881 #b00000000001111111111111111111111) (= mask!1881 #b00000000011111111111111111111111) (= mask!1881 #b00000000111111111111111111111111) (= mask!1881 #b00000001111111111111111111111111) (= mask!1881 #b00000011111111111111111111111111) (= mask!1881 #b00000111111111111111111111111111) (= mask!1881 #b00001111111111111111111111111111) (= mask!1881 #b00011111111111111111111111111111) (= mask!1881 #b00111111111111111111111111111111)) (bvsle mask!1881 #b00111111111111111111111111111111)))))

(assert (=> start!79528 d!113105))

(declare-fun d!113107 () Bool)

(assert (=> d!113107 (= (array_inv!21030 _values!1231) (bvsge (size!27542 _values!1231) #b00000000000000000000000000000000))))

(assert (=> start!79528 d!113107))

(declare-fun d!113109 () Bool)

(assert (=> d!113109 (= (array_inv!21031 _keys!1487) (bvsge (size!27541 _keys!1487) #b00000000000000000000000000000000))))

(assert (=> start!79528 d!113109))

(declare-fun d!113111 () Bool)

(assert (=> d!113111 (= (validKeyInArray!0 lt!421058) (and (not (= lt!421058 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!421058 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!934560 d!113111))

(declare-fun d!113113 () Bool)

(declare-fun res!629659 () Bool)

(declare-fun e!524923 () Bool)

(assert (=> d!113113 (=> res!629659 e!524923)))

(assert (=> d!113113 (= res!629659 (= (select (arr!27081 _keys!1487) from!1844) k0!1099))))

(assert (=> d!113113 (= (arrayContainsKey!0 _keys!1487 k0!1099 from!1844) e!524923)))

(declare-fun b!934806 () Bool)

(declare-fun e!524924 () Bool)

(assert (=> b!934806 (= e!524923 e!524924)))

(declare-fun res!629660 () Bool)

(assert (=> b!934806 (=> (not res!629660) (not e!524924))))

(assert (=> b!934806 (= res!629660 (bvslt (bvadd from!1844 #b00000000000000000000000000000001) (size!27541 _keys!1487)))))

(declare-fun b!934807 () Bool)

(assert (=> b!934807 (= e!524924 (arrayContainsKey!0 _keys!1487 k0!1099 (bvadd from!1844 #b00000000000000000000000000000001)))))

(assert (= (and d!113113 (not res!629659)) b!934806))

(assert (= (and b!934806 res!629660) b!934807))

(assert (=> d!113113 m!869277))

(declare-fun m!869337 () Bool)

(assert (=> b!934807 m!869337))

(assert (=> b!934570 d!113113))

(declare-fun mapNonEmpty!32013 () Bool)

(declare-fun mapRes!32013 () Bool)

(declare-fun tp!61422 () Bool)

(declare-fun e!524929 () Bool)

(assert (=> mapNonEmpty!32013 (= mapRes!32013 (and tp!61422 e!524929))))

(declare-fun mapValue!32013 () ValueCell!9600)

(declare-fun mapKey!32013 () (_ BitVec 32))

(declare-fun mapRest!32013 () (Array (_ BitVec 32) ValueCell!9600))

(assert (=> mapNonEmpty!32013 (= mapRest!32007 (store mapRest!32013 mapKey!32013 mapValue!32013))))

(declare-fun mapIsEmpty!32013 () Bool)

(assert (=> mapIsEmpty!32013 mapRes!32013))

(declare-fun b!934814 () Bool)

(assert (=> b!934814 (= e!524929 tp_is_empty!20163)))

(declare-fun b!934815 () Bool)

(declare-fun e!524930 () Bool)

(assert (=> b!934815 (= e!524930 tp_is_empty!20163)))

(declare-fun condMapEmpty!32013 () Bool)

(declare-fun mapDefault!32013 () ValueCell!9600)

(assert (=> mapNonEmpty!32007 (= condMapEmpty!32013 (= mapRest!32007 ((as const (Array (_ BitVec 32) ValueCell!9600)) mapDefault!32013)))))

(assert (=> mapNonEmpty!32007 (= tp!61412 (and e!524930 mapRes!32013))))

(assert (= (and mapNonEmpty!32007 condMapEmpty!32013) mapIsEmpty!32013))

(assert (= (and mapNonEmpty!32007 (not condMapEmpty!32013)) mapNonEmpty!32013))

(assert (= (and mapNonEmpty!32013 ((_ is ValueCellFull!9600) mapValue!32013)) b!934814))

(assert (= (and mapNonEmpty!32007 ((_ is ValueCellFull!9600) mapDefault!32013)) b!934815))

(declare-fun m!869339 () Bool)

(assert (=> mapNonEmpty!32013 m!869339))

(declare-fun b_lambda!14051 () Bool)

(assert (= b_lambda!14047 (or (and start!79528 b_free!17655) b_lambda!14051)))

(declare-fun b_lambda!14053 () Bool)

(assert (= b_lambda!14043 (or (and start!79528 b_free!17655) b_lambda!14053)))

(declare-fun b_lambda!14055 () Bool)

(assert (= b_lambda!14045 (or (and start!79528 b_free!17655) b_lambda!14055)))

(declare-fun b_lambda!14057 () Bool)

(assert (= b_lambda!14049 (or (and start!79528 b_free!17655) b_lambda!14057)))

(check-sat (not bm!40659) (not b!934735) (not d!113095) (not d!113075) (not b!934682) (not d!113073) (not b!934720) (not bm!40653) (not b!934697) (not b!934764) (not b!934752) (not b_lambda!14057) (not b_lambda!14053) (not bm!40657) (not d!113101) (not b!934743) (not b_lambda!14051) (not bm!40651) (not b!934700) (not b_lambda!14055) (not bm!40658) (not b!934706) (not bm!40650) (not d!113077) (not d!113071) (not b!934782) (not b!934634) (not b!934758) (not b!934703) (not b!934705) (not d!113083) (not b!934730) (not b!934744) (not d!113081) (not b!934711) (not b!934693) (not b!934749) (not b_lambda!14041) (not bm!40667) (not b!934768) (not d!113099) (not b!934766) (not b!934637) (not bm!40665) (not b!934690) (not b!934721) (not bm!40660) (not bm!40652) tp_is_empty!20163 (not b!934736) (not bm!40666) (not b!934718) b_and!28909 (not b!934774) (not b!934733) (not d!113085) (not b!934684) (not b!934635) (not b!934807) (not b!934728) (not d!113091) (not b_next!17655) (not b!934699) (not b!934759) (not b!934765) (not bm!40671) (not b!934786) (not d!113087) (not bm!40668) (not bm!40632) (not b!934779) (not b!934738) (not b!934799) (not b!934789) (not b!934800) (not b!934714) (not b!934685) (not b!934753) (not b!934788) (not bm!40661) (not b!934771) (not b!934773) (not mapNonEmpty!32013))
(check-sat b_and!28909 (not b_next!17655))
