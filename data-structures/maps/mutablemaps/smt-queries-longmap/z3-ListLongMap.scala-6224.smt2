; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79610 () Bool)

(assert start!79610)

(declare-fun b_free!17667 () Bool)

(declare-fun b_next!17667 () Bool)

(assert (=> start!79610 (= b_free!17667 (not b_next!17667))))

(declare-fun tp!61454 () Bool)

(declare-fun b_and!28935 () Bool)

(assert (=> start!79610 (= tp!61454 b_and!28935)))

(declare-fun b!935282 () Bool)

(declare-fun res!629954 () Bool)

(declare-fun e!525206 () Bool)

(assert (=> b!935282 (=> (not res!629954) (not e!525206))))

(declare-datatypes ((array!56312 0))(
  ( (array!56313 (arr!27093 (Array (_ BitVec 32) (_ BitVec 64))) (size!27553 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56312)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((V!31865 0))(
  ( (V!31866 (val!10138 Int)) )
))
(declare-datatypes ((ValueCell!9606 0))(
  ( (ValueCellFull!9606 (v!12661 V!31865)) (EmptyCell!9606) )
))
(declare-datatypes ((array!56314 0))(
  ( (array!56315 (arr!27094 (Array (_ BitVec 32) ValueCell!9606)) (size!27554 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56314)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!935282 (= res!629954 (and (= (size!27554 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27553 _keys!1487) (size!27554 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun e!525211 () Bool)

(declare-fun b!935283 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!56312 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!935283 (= e!525211 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!935284 () Bool)

(declare-fun res!629957 () Bool)

(declare-fun e!525204 () Bool)

(assert (=> b!935284 (=> (not res!629957) (not e!525204))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!935284 (= res!629957 (validKeyInArray!0 k0!1099))))

(declare-fun b!935285 () Bool)

(declare-fun res!629956 () Bool)

(assert (=> b!935285 (=> (not res!629956) (not e!525206))))

(assert (=> b!935285 (= res!629956 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27553 _keys!1487))))))

(declare-fun b!935286 () Bool)

(declare-fun res!629951 () Bool)

(assert (=> b!935286 (=> (not res!629951) (not e!525206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56312 (_ BitVec 32)) Bool)

(assert (=> b!935286 (= res!629951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!935287 () Bool)

(declare-fun e!525205 () Bool)

(declare-fun e!525210 () Bool)

(assert (=> b!935287 (= e!525205 (not e!525210))))

(declare-fun res!629955 () Bool)

(assert (=> b!935287 (=> res!629955 e!525210)))

(assert (=> b!935287 (= res!629955 (or (bvsge (size!27553 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27553 _keys!1487))))))

(assert (=> b!935287 e!525211))

(declare-fun c!97203 () Bool)

(assert (=> b!935287 (= c!97203 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31553 0))(
  ( (Unit!31554) )
))
(declare-fun lt!421537 () Unit!31553)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31865)

(declare-fun minValue!1173 () V!31865)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!288 (array!56312 array!56314 (_ BitVec 32) (_ BitVec 32) V!31865 V!31865 (_ BitVec 64) (_ BitVec 32) Int) Unit!31553)

(assert (=> b!935287 (= lt!421537 (lemmaListMapContainsThenArrayContainsFrom!288 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-datatypes ((List!19217 0))(
  ( (Nil!19214) (Cons!19213 (h!20359 (_ BitVec 64)) (t!27436 List!19217)) )
))
(declare-fun arrayNoDuplicates!0 (array!56312 (_ BitVec 32) List!19217) Bool)

(assert (=> b!935287 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19214)))

(declare-fun lt!421541 () Unit!31553)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56312 (_ BitVec 32) (_ BitVec 32)) Unit!31553)

(assert (=> b!935287 (= lt!421541 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!13410 0))(
  ( (tuple2!13411 (_1!6715 (_ BitVec 64)) (_2!6715 V!31865)) )
))
(declare-datatypes ((List!19218 0))(
  ( (Nil!19215) (Cons!19214 (h!20360 tuple2!13410) (t!27437 List!19218)) )
))
(declare-datatypes ((ListLongMap!12121 0))(
  ( (ListLongMap!12122 (toList!6076 List!19218)) )
))
(declare-fun lt!421538 () ListLongMap!12121)

(declare-fun lt!421542 () tuple2!13410)

(declare-fun contains!5084 (ListLongMap!12121 (_ BitVec 64)) Bool)

(declare-fun +!2775 (ListLongMap!12121 tuple2!13410) ListLongMap!12121)

(assert (=> b!935287 (contains!5084 (+!2775 lt!421538 lt!421542) k0!1099)))

(declare-fun lt!421539 () V!31865)

(declare-fun lt!421540 () Unit!31553)

(declare-fun lt!421536 () (_ BitVec 64))

(declare-fun addStillContains!531 (ListLongMap!12121 (_ BitVec 64) V!31865 (_ BitVec 64)) Unit!31553)

(assert (=> b!935287 (= lt!421540 (addStillContains!531 lt!421538 lt!421536 lt!421539 k0!1099))))

(declare-fun lt!421543 () (_ BitVec 32))

(declare-fun getCurrentListMap!3268 (array!56312 array!56314 (_ BitVec 32) (_ BitVec 32) V!31865 V!31865 (_ BitVec 32) Int) ListLongMap!12121)

(assert (=> b!935287 (= (getCurrentListMap!3268 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2775 (getCurrentListMap!3268 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 lt!421543 defaultEntry!1235) lt!421542))))

(assert (=> b!935287 (= lt!421542 (tuple2!13411 lt!421536 lt!421539))))

(declare-fun get!14288 (ValueCell!9606 V!31865) V!31865)

(declare-fun dynLambda!1614 (Int (_ BitVec 64)) V!31865)

(assert (=> b!935287 (= lt!421539 (get!14288 (select (arr!27094 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1614 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!935287 (= lt!421543 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421544 () Unit!31553)

(declare-fun lemmaListMapRecursiveValidKeyArray!210 (array!56312 array!56314 (_ BitVec 32) (_ BitVec 32) V!31865 V!31865 (_ BitVec 32) Int) Unit!31553)

(assert (=> b!935287 (= lt!421544 (lemmaListMapRecursiveValidKeyArray!210 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!935288 () Bool)

(declare-fun res!629952 () Bool)

(assert (=> b!935288 (=> (not res!629952) (not e!525204))))

(declare-fun v!791 () V!31865)

(declare-fun apply!855 (ListLongMap!12121 (_ BitVec 64)) V!31865)

(assert (=> b!935288 (= res!629952 (= (apply!855 lt!421538 k0!1099) v!791))))

(declare-fun b!935289 () Bool)

(declare-fun e!525203 () Bool)

(declare-fun e!525207 () Bool)

(declare-fun mapRes!32031 () Bool)

(assert (=> b!935289 (= e!525203 (and e!525207 mapRes!32031))))

(declare-fun condMapEmpty!32031 () Bool)

(declare-fun mapDefault!32031 () ValueCell!9606)

(assert (=> b!935289 (= condMapEmpty!32031 (= (arr!27094 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9606)) mapDefault!32031)))))

(declare-fun b!935290 () Bool)

(declare-fun res!629959 () Bool)

(assert (=> b!935290 (=> res!629959 e!525210)))

(declare-fun contains!5085 (List!19217 (_ BitVec 64)) Bool)

(assert (=> b!935290 (= res!629959 (contains!5085 Nil!19214 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935291 () Bool)

(assert (=> b!935291 (= e!525204 e!525205)))

(declare-fun res!629958 () Bool)

(assert (=> b!935291 (=> (not res!629958) (not e!525205))))

(assert (=> b!935291 (= res!629958 (validKeyInArray!0 lt!421536))))

(assert (=> b!935291 (= lt!421536 (select (arr!27093 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapIsEmpty!32031 () Bool)

(assert (=> mapIsEmpty!32031 mapRes!32031))

(declare-fun b!935292 () Bool)

(declare-fun res!629946 () Bool)

(assert (=> b!935292 (=> res!629946 e!525210)))

(declare-fun noDuplicate!1358 (List!19217) Bool)

(assert (=> b!935292 (= res!629946 (not (noDuplicate!1358 Nil!19214)))))

(declare-fun b!935293 () Bool)

(declare-fun res!629953 () Bool)

(assert (=> b!935293 (=> res!629953 e!525210)))

(assert (=> b!935293 (= res!629953 (contains!5085 Nil!19214 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935294 () Bool)

(assert (=> b!935294 (= e!525206 e!525204)))

(declare-fun res!629948 () Bool)

(assert (=> b!935294 (=> (not res!629948) (not e!525204))))

(assert (=> b!935294 (= res!629948 (contains!5084 lt!421538 k0!1099))))

(assert (=> b!935294 (= lt!421538 (getCurrentListMap!3268 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!935295 () Bool)

(declare-fun tp_is_empty!20175 () Bool)

(assert (=> b!935295 (= e!525207 tp_is_empty!20175)))

(declare-fun b!935296 () Bool)

(declare-fun e!525208 () Bool)

(assert (=> b!935296 (= e!525208 tp_is_empty!20175)))

(declare-fun res!629949 () Bool)

(assert (=> start!79610 (=> (not res!629949) (not e!525206))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79610 (= res!629949 (validMask!0 mask!1881))))

(assert (=> start!79610 e!525206))

(assert (=> start!79610 true))

(assert (=> start!79610 tp_is_empty!20175))

(declare-fun array_inv!21040 (array!56314) Bool)

(assert (=> start!79610 (and (array_inv!21040 _values!1231) e!525203)))

(assert (=> start!79610 tp!61454))

(declare-fun array_inv!21041 (array!56312) Bool)

(assert (=> start!79610 (array_inv!21041 _keys!1487)))

(declare-fun b!935297 () Bool)

(assert (=> b!935297 (= e!525211 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!935298 () Bool)

(assert (=> b!935298 (= e!525210 (arrayContainsKey!0 _keys!1487 k0!1099 lt!421543))))

(declare-fun b!935299 () Bool)

(declare-fun res!629950 () Bool)

(assert (=> b!935299 (=> (not res!629950) (not e!525206))))

(assert (=> b!935299 (= res!629950 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19214))))

(declare-fun b!935300 () Bool)

(declare-fun res!629947 () Bool)

(assert (=> b!935300 (=> (not res!629947) (not e!525204))))

(assert (=> b!935300 (= res!629947 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!32031 () Bool)

(declare-fun tp!61455 () Bool)

(assert (=> mapNonEmpty!32031 (= mapRes!32031 (and tp!61455 e!525208))))

(declare-fun mapKey!32031 () (_ BitVec 32))

(declare-fun mapRest!32031 () (Array (_ BitVec 32) ValueCell!9606))

(declare-fun mapValue!32031 () ValueCell!9606)

(assert (=> mapNonEmpty!32031 (= (arr!27094 _values!1231) (store mapRest!32031 mapKey!32031 mapValue!32031))))

(assert (= (and start!79610 res!629949) b!935282))

(assert (= (and b!935282 res!629954) b!935286))

(assert (= (and b!935286 res!629951) b!935299))

(assert (= (and b!935299 res!629950) b!935285))

(assert (= (and b!935285 res!629956) b!935294))

(assert (= (and b!935294 res!629948) b!935288))

(assert (= (and b!935288 res!629952) b!935300))

(assert (= (and b!935300 res!629947) b!935284))

(assert (= (and b!935284 res!629957) b!935291))

(assert (= (and b!935291 res!629958) b!935287))

(assert (= (and b!935287 c!97203) b!935283))

(assert (= (and b!935287 (not c!97203)) b!935297))

(assert (= (and b!935287 (not res!629955)) b!935292))

(assert (= (and b!935292 (not res!629946)) b!935290))

(assert (= (and b!935290 (not res!629959)) b!935293))

(assert (= (and b!935293 (not res!629953)) b!935298))

(assert (= (and b!935289 condMapEmpty!32031) mapIsEmpty!32031))

(assert (= (and b!935289 (not condMapEmpty!32031)) mapNonEmpty!32031))

(get-info :version)

(assert (= (and mapNonEmpty!32031 ((_ is ValueCellFull!9606) mapValue!32031)) b!935296))

(assert (= (and b!935289 ((_ is ValueCellFull!9606) mapDefault!32031)) b!935295))

(assert (= start!79610 b!935289))

(declare-fun b_lambda!14085 () Bool)

(assert (=> (not b_lambda!14085) (not b!935287)))

(declare-fun t!27435 () Bool)

(declare-fun tb!6069 () Bool)

(assert (=> (and start!79610 (= defaultEntry!1235 defaultEntry!1235) t!27435) tb!6069))

(declare-fun result!11961 () Bool)

(assert (=> tb!6069 (= result!11961 tp_is_empty!20175)))

(assert (=> b!935287 t!27435))

(declare-fun b_and!28937 () Bool)

(assert (= b_and!28935 (and (=> t!27435 result!11961) b_and!28937)))

(declare-fun m!869837 () Bool)

(assert (=> mapNonEmpty!32031 m!869837))

(declare-fun m!869839 () Bool)

(assert (=> b!935293 m!869839))

(declare-fun m!869841 () Bool)

(assert (=> b!935288 m!869841))

(declare-fun m!869843 () Bool)

(assert (=> b!935291 m!869843))

(declare-fun m!869845 () Bool)

(assert (=> b!935291 m!869845))

(declare-fun m!869847 () Bool)

(assert (=> b!935298 m!869847))

(declare-fun m!869849 () Bool)

(assert (=> b!935284 m!869849))

(declare-fun m!869851 () Bool)

(assert (=> b!935294 m!869851))

(declare-fun m!869853 () Bool)

(assert (=> b!935294 m!869853))

(declare-fun m!869855 () Bool)

(assert (=> b!935286 m!869855))

(declare-fun m!869857 () Bool)

(assert (=> b!935283 m!869857))

(declare-fun m!869859 () Bool)

(assert (=> b!935292 m!869859))

(declare-fun m!869861 () Bool)

(assert (=> b!935287 m!869861))

(declare-fun m!869863 () Bool)

(assert (=> b!935287 m!869863))

(declare-fun m!869865 () Bool)

(assert (=> b!935287 m!869865))

(declare-fun m!869867 () Bool)

(assert (=> b!935287 m!869867))

(assert (=> b!935287 m!869867))

(declare-fun m!869869 () Bool)

(assert (=> b!935287 m!869869))

(declare-fun m!869871 () Bool)

(assert (=> b!935287 m!869871))

(declare-fun m!869873 () Bool)

(assert (=> b!935287 m!869873))

(declare-fun m!869875 () Bool)

(assert (=> b!935287 m!869875))

(declare-fun m!869877 () Bool)

(assert (=> b!935287 m!869877))

(declare-fun m!869879 () Bool)

(assert (=> b!935287 m!869879))

(declare-fun m!869881 () Bool)

(assert (=> b!935287 m!869881))

(declare-fun m!869883 () Bool)

(assert (=> b!935287 m!869883))

(assert (=> b!935287 m!869869))

(assert (=> b!935287 m!869881))

(declare-fun m!869885 () Bool)

(assert (=> b!935287 m!869885))

(assert (=> b!935287 m!869861))

(declare-fun m!869887 () Bool)

(assert (=> start!79610 m!869887))

(declare-fun m!869889 () Bool)

(assert (=> start!79610 m!869889))

(declare-fun m!869891 () Bool)

(assert (=> start!79610 m!869891))

(declare-fun m!869893 () Bool)

(assert (=> b!935290 m!869893))

(declare-fun m!869895 () Bool)

(assert (=> b!935299 m!869895))

(check-sat b_and!28937 (not b!935292) (not mapNonEmpty!32031) tp_is_empty!20175 (not b!935293) (not b!935286) (not b!935298) (not b!935294) (not b!935291) (not start!79610) (not b!935290) (not b!935299) (not b!935287) (not b!935288) (not b_next!17667) (not b!935283) (not b_lambda!14085) (not b!935284))
(check-sat b_and!28937 (not b_next!17667))
(get-model)

(declare-fun b_lambda!14089 () Bool)

(assert (= b_lambda!14085 (or (and start!79610 b_free!17667) b_lambda!14089)))

(check-sat b_and!28937 (not b!935292) (not mapNonEmpty!32031) tp_is_empty!20175 (not b!935293) (not b!935286) (not b!935298) (not b!935284) (not b!935294) (not b_lambda!14089) (not b!935291) (not start!79610) (not b!935290) (not b!935299) (not b!935287) (not b!935288) (not b_next!17667) (not b!935283))
(check-sat b_and!28937 (not b_next!17667))
(get-model)

(declare-fun d!113169 () Bool)

(assert (=> d!113169 (= (validKeyInArray!0 lt!421536) (and (not (= lt!421536 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!421536 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!935291 d!113169))

(declare-fun d!113171 () Bool)

(declare-fun lt!421574 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!409 (List!19217) (InoxSet (_ BitVec 64)))

(assert (=> d!113171 (= lt!421574 (select (content!409 Nil!19214) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!525243 () Bool)

(assert (=> d!113171 (= lt!421574 e!525243)))

(declare-fun res!630007 () Bool)

(assert (=> d!113171 (=> (not res!630007) (not e!525243))))

(assert (=> d!113171 (= res!630007 ((_ is Cons!19213) Nil!19214))))

(assert (=> d!113171 (= (contains!5085 Nil!19214 #b0000000000000000000000000000000000000000000000000000000000000000) lt!421574)))

(declare-fun b!935366 () Bool)

(declare-fun e!525244 () Bool)

(assert (=> b!935366 (= e!525243 e!525244)))

(declare-fun res!630006 () Bool)

(assert (=> b!935366 (=> res!630006 e!525244)))

(assert (=> b!935366 (= res!630006 (= (h!20359 Nil!19214) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935367 () Bool)

(assert (=> b!935367 (= e!525244 (contains!5085 (t!27436 Nil!19214) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!113171 res!630007) b!935366))

(assert (= (and b!935366 (not res!630006)) b!935367))

(declare-fun m!869957 () Bool)

(assert (=> d!113171 m!869957))

(declare-fun m!869959 () Bool)

(assert (=> d!113171 m!869959))

(declare-fun m!869961 () Bool)

(assert (=> b!935367 m!869961))

(assert (=> b!935290 d!113171))

(declare-fun bm!40716 () Bool)

(declare-fun call!40719 () Bool)

(declare-fun c!97209 () Bool)

(assert (=> bm!40716 (= call!40719 (arrayNoDuplicates!0 _keys!1487 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!97209 (Cons!19213 (select (arr!27093 _keys!1487) #b00000000000000000000000000000000) Nil!19214) Nil!19214)))))

(declare-fun b!935378 () Bool)

(declare-fun e!525255 () Bool)

(assert (=> b!935378 (= e!525255 (contains!5085 Nil!19214 (select (arr!27093 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun d!113173 () Bool)

(declare-fun res!630014 () Bool)

(declare-fun e!525256 () Bool)

(assert (=> d!113173 (=> res!630014 e!525256)))

(assert (=> d!113173 (= res!630014 (bvsge #b00000000000000000000000000000000 (size!27553 _keys!1487)))))

(assert (=> d!113173 (= (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19214) e!525256)))

(declare-fun b!935379 () Bool)

(declare-fun e!525253 () Bool)

(assert (=> b!935379 (= e!525253 call!40719)))

(declare-fun b!935380 () Bool)

(assert (=> b!935380 (= e!525253 call!40719)))

(declare-fun b!935381 () Bool)

(declare-fun e!525254 () Bool)

(assert (=> b!935381 (= e!525254 e!525253)))

(assert (=> b!935381 (= c!97209 (validKeyInArray!0 (select (arr!27093 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!935382 () Bool)

(assert (=> b!935382 (= e!525256 e!525254)))

(declare-fun res!630015 () Bool)

(assert (=> b!935382 (=> (not res!630015) (not e!525254))))

(assert (=> b!935382 (= res!630015 (not e!525255))))

(declare-fun res!630016 () Bool)

(assert (=> b!935382 (=> (not res!630016) (not e!525255))))

(assert (=> b!935382 (= res!630016 (validKeyInArray!0 (select (arr!27093 _keys!1487) #b00000000000000000000000000000000)))))

(assert (= (and d!113173 (not res!630014)) b!935382))

(assert (= (and b!935382 res!630016) b!935378))

(assert (= (and b!935382 res!630015) b!935381))

(assert (= (and b!935381 c!97209) b!935380))

(assert (= (and b!935381 (not c!97209)) b!935379))

(assert (= (or b!935380 b!935379) bm!40716))

(declare-fun m!869963 () Bool)

(assert (=> bm!40716 m!869963))

(declare-fun m!869965 () Bool)

(assert (=> bm!40716 m!869965))

(assert (=> b!935378 m!869963))

(assert (=> b!935378 m!869963))

(declare-fun m!869967 () Bool)

(assert (=> b!935378 m!869967))

(assert (=> b!935381 m!869963))

(assert (=> b!935381 m!869963))

(declare-fun m!869969 () Bool)

(assert (=> b!935381 m!869969))

(assert (=> b!935382 m!869963))

(assert (=> b!935382 m!869963))

(assert (=> b!935382 m!869969))

(assert (=> b!935299 d!113173))

(declare-fun d!113175 () Bool)

(declare-fun res!630021 () Bool)

(declare-fun e!525261 () Bool)

(assert (=> d!113175 (=> res!630021 e!525261)))

(assert (=> d!113175 (= res!630021 (= (select (arr!27093 _keys!1487) lt!421543) k0!1099))))

(assert (=> d!113175 (= (arrayContainsKey!0 _keys!1487 k0!1099 lt!421543) e!525261)))

(declare-fun b!935387 () Bool)

(declare-fun e!525262 () Bool)

(assert (=> b!935387 (= e!525261 e!525262)))

(declare-fun res!630022 () Bool)

(assert (=> b!935387 (=> (not res!630022) (not e!525262))))

(assert (=> b!935387 (= res!630022 (bvslt (bvadd lt!421543 #b00000000000000000000000000000001) (size!27553 _keys!1487)))))

(declare-fun b!935388 () Bool)

(assert (=> b!935388 (= e!525262 (arrayContainsKey!0 _keys!1487 k0!1099 (bvadd lt!421543 #b00000000000000000000000000000001)))))

(assert (= (and d!113175 (not res!630021)) b!935387))

(assert (= (and b!935387 res!630022) b!935388))

(declare-fun m!869971 () Bool)

(assert (=> d!113175 m!869971))

(declare-fun m!869973 () Bool)

(assert (=> b!935388 m!869973))

(assert (=> b!935298 d!113175))

(declare-fun d!113177 () Bool)

(declare-datatypes ((Option!491 0))(
  ( (Some!490 (v!12664 V!31865)) (None!489) )
))
(declare-fun get!14289 (Option!491) V!31865)

(declare-fun getValueByKey!485 (List!19218 (_ BitVec 64)) Option!491)

(assert (=> d!113177 (= (apply!855 lt!421538 k0!1099) (get!14289 (getValueByKey!485 (toList!6076 lt!421538) k0!1099)))))

(declare-fun bs!26249 () Bool)

(assert (= bs!26249 d!113177))

(declare-fun m!869975 () Bool)

(assert (=> bs!26249 m!869975))

(assert (=> bs!26249 m!869975))

(declare-fun m!869977 () Bool)

(assert (=> bs!26249 m!869977))

(assert (=> b!935288 d!113177))

(declare-fun d!113179 () Bool)

(assert (=> d!113179 (contains!5084 (+!2775 lt!421538 (tuple2!13411 lt!421536 lt!421539)) k0!1099)))

(declare-fun lt!421577 () Unit!31553)

(declare-fun choose!1558 (ListLongMap!12121 (_ BitVec 64) V!31865 (_ BitVec 64)) Unit!31553)

(assert (=> d!113179 (= lt!421577 (choose!1558 lt!421538 lt!421536 lt!421539 k0!1099))))

(assert (=> d!113179 (contains!5084 lt!421538 k0!1099)))

(assert (=> d!113179 (= (addStillContains!531 lt!421538 lt!421536 lt!421539 k0!1099) lt!421577)))

(declare-fun bs!26250 () Bool)

(assert (= bs!26250 d!113179))

(declare-fun m!869979 () Bool)

(assert (=> bs!26250 m!869979))

(assert (=> bs!26250 m!869979))

(declare-fun m!869981 () Bool)

(assert (=> bs!26250 m!869981))

(declare-fun m!869983 () Bool)

(assert (=> bs!26250 m!869983))

(assert (=> bs!26250 m!869851))

(assert (=> b!935287 d!113179))

(declare-fun bm!40731 () Bool)

(declare-fun call!40737 () ListLongMap!12121)

(declare-fun call!40738 () ListLongMap!12121)

(assert (=> bm!40731 (= call!40737 call!40738)))

(declare-fun e!525298 () Bool)

(declare-fun lt!421630 () ListLongMap!12121)

(declare-fun b!935432 () Bool)

(assert (=> b!935432 (= e!525298 (= (apply!855 lt!421630 (select (arr!27093 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))) (get!14288 (select (arr!27094 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1614 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!935432 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27554 _values!1231)))))

(assert (=> b!935432 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27553 _keys!1487)))))

(declare-fun call!40739 () ListLongMap!12121)

(declare-fun c!97225 () Bool)

(declare-fun call!40735 () ListLongMap!12121)

(declare-fun bm!40732 () Bool)

(declare-fun call!40736 () ListLongMap!12121)

(declare-fun c!97224 () Bool)

(assert (=> bm!40732 (= call!40738 (+!2775 (ite c!97225 call!40736 (ite c!97224 call!40735 call!40739)) (ite (or c!97225 c!97224) (tuple2!13411 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13411 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun b!935433 () Bool)

(declare-fun e!525294 () Bool)

(assert (=> b!935433 (= e!525294 e!525298)))

(declare-fun res!630046 () Bool)

(assert (=> b!935433 (=> (not res!630046) (not e!525298))))

(assert (=> b!935433 (= res!630046 (contains!5084 lt!421630 (select (arr!27093 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!935433 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27553 _keys!1487)))))

(declare-fun b!935434 () Bool)

(declare-fun e!525296 () Unit!31553)

(declare-fun lt!421643 () Unit!31553)

(assert (=> b!935434 (= e!525296 lt!421643)))

(declare-fun lt!421622 () ListLongMap!12121)

(declare-fun getCurrentListMapNoExtraKeys!3318 (array!56312 array!56314 (_ BitVec 32) (_ BitVec 32) V!31865 V!31865 (_ BitVec 32) Int) ListLongMap!12121)

(assert (=> b!935434 (= lt!421622 (getCurrentListMapNoExtraKeys!3318 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!421635 () (_ BitVec 64))

(assert (=> b!935434 (= lt!421635 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421638 () (_ BitVec 64))

(assert (=> b!935434 (= lt!421638 (select (arr!27093 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421640 () Unit!31553)

(assert (=> b!935434 (= lt!421640 (addStillContains!531 lt!421622 lt!421635 zeroValue!1173 lt!421638))))

(assert (=> b!935434 (contains!5084 (+!2775 lt!421622 (tuple2!13411 lt!421635 zeroValue!1173)) lt!421638)))

(declare-fun lt!421636 () Unit!31553)

(assert (=> b!935434 (= lt!421636 lt!421640)))

(declare-fun lt!421634 () ListLongMap!12121)

(assert (=> b!935434 (= lt!421634 (getCurrentListMapNoExtraKeys!3318 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!421631 () (_ BitVec 64))

(assert (=> b!935434 (= lt!421631 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421626 () (_ BitVec 64))

(assert (=> b!935434 (= lt!421626 (select (arr!27093 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421628 () Unit!31553)

(declare-fun addApplyDifferent!413 (ListLongMap!12121 (_ BitVec 64) V!31865 (_ BitVec 64)) Unit!31553)

(assert (=> b!935434 (= lt!421628 (addApplyDifferent!413 lt!421634 lt!421631 minValue!1173 lt!421626))))

(assert (=> b!935434 (= (apply!855 (+!2775 lt!421634 (tuple2!13411 lt!421631 minValue!1173)) lt!421626) (apply!855 lt!421634 lt!421626))))

(declare-fun lt!421642 () Unit!31553)

(assert (=> b!935434 (= lt!421642 lt!421628)))

(declare-fun lt!421627 () ListLongMap!12121)

(assert (=> b!935434 (= lt!421627 (getCurrentListMapNoExtraKeys!3318 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!421637 () (_ BitVec 64))

(assert (=> b!935434 (= lt!421637 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421633 () (_ BitVec 64))

(assert (=> b!935434 (= lt!421633 (select (arr!27093 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!421623 () Unit!31553)

(assert (=> b!935434 (= lt!421623 (addApplyDifferent!413 lt!421627 lt!421637 zeroValue!1173 lt!421633))))

(assert (=> b!935434 (= (apply!855 (+!2775 lt!421627 (tuple2!13411 lt!421637 zeroValue!1173)) lt!421633) (apply!855 lt!421627 lt!421633))))

(declare-fun lt!421639 () Unit!31553)

(assert (=> b!935434 (= lt!421639 lt!421623)))

(declare-fun lt!421632 () ListLongMap!12121)

(assert (=> b!935434 (= lt!421632 (getCurrentListMapNoExtraKeys!3318 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!421624 () (_ BitVec 64))

(assert (=> b!935434 (= lt!421624 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421641 () (_ BitVec 64))

(assert (=> b!935434 (= lt!421641 (select (arr!27093 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!935434 (= lt!421643 (addApplyDifferent!413 lt!421632 lt!421624 minValue!1173 lt!421641))))

(assert (=> b!935434 (= (apply!855 (+!2775 lt!421632 (tuple2!13411 lt!421624 minValue!1173)) lt!421641) (apply!855 lt!421632 lt!421641))))

(declare-fun b!935435 () Bool)

(declare-fun res!630049 () Bool)

(declare-fun e!525297 () Bool)

(assert (=> b!935435 (=> (not res!630049) (not e!525297))))

(assert (=> b!935435 (= res!630049 e!525294)))

(declare-fun res!630041 () Bool)

(assert (=> b!935435 (=> res!630041 e!525294)))

(declare-fun e!525300 () Bool)

(assert (=> b!935435 (= res!630041 (not e!525300))))

(declare-fun res!630045 () Bool)

(assert (=> b!935435 (=> (not res!630045) (not e!525300))))

(assert (=> b!935435 (= res!630045 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27553 _keys!1487)))))

(declare-fun b!935437 () Bool)

(declare-fun e!525301 () Bool)

(declare-fun call!40734 () Bool)

(assert (=> b!935437 (= e!525301 (not call!40734))))

(declare-fun b!935438 () Bool)

(declare-fun res!630048 () Bool)

(assert (=> b!935438 (=> (not res!630048) (not e!525297))))

(assert (=> b!935438 (= res!630048 e!525301)))

(declare-fun c!97223 () Bool)

(assert (=> b!935438 (= c!97223 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!935439 () Bool)

(declare-fun e!525291 () ListLongMap!12121)

(assert (=> b!935439 (= e!525291 (+!2775 call!40738 (tuple2!13411 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun b!935440 () Bool)

(assert (=> b!935440 (= e!525300 (validKeyInArray!0 (select (arr!27093 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!935441 () Bool)

(declare-fun e!525299 () Bool)

(assert (=> b!935441 (= e!525297 e!525299)))

(declare-fun c!97222 () Bool)

(assert (=> b!935441 (= c!97222 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!935442 () Bool)

(declare-fun e!525289 () Bool)

(assert (=> b!935442 (= e!525289 (= (apply!855 lt!421630 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!935443 () Bool)

(declare-fun e!525290 () ListLongMap!12121)

(assert (=> b!935443 (= e!525290 call!40737)))

(declare-fun b!935444 () Bool)

(declare-fun c!97226 () Bool)

(assert (=> b!935444 (= c!97226 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!525292 () ListLongMap!12121)

(assert (=> b!935444 (= e!525292 e!525290)))

(declare-fun b!935445 () Bool)

(declare-fun call!40740 () Bool)

(assert (=> b!935445 (= e!525299 (not call!40740))))

(declare-fun bm!40733 () Bool)

(assert (=> bm!40733 (= call!40734 (contains!5084 lt!421630 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935446 () Bool)

(assert (=> b!935446 (= e!525291 e!525292)))

(assert (=> b!935446 (= c!97224 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!935447 () Bool)

(declare-fun e!525293 () Bool)

(assert (=> b!935447 (= e!525293 (validKeyInArray!0 (select (arr!27093 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun bm!40734 () Bool)

(assert (=> bm!40734 (= call!40736 (getCurrentListMapNoExtraKeys!3318 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!935448 () Bool)

(declare-fun e!525295 () Bool)

(assert (=> b!935448 (= e!525299 e!525295)))

(declare-fun res!630044 () Bool)

(assert (=> b!935448 (= res!630044 call!40740)))

(assert (=> b!935448 (=> (not res!630044) (not e!525295))))

(declare-fun b!935449 () Bool)

(declare-fun Unit!31555 () Unit!31553)

(assert (=> b!935449 (= e!525296 Unit!31555)))

(declare-fun b!935450 () Bool)

(assert (=> b!935450 (= e!525295 (= (apply!855 lt!421630 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun b!935451 () Bool)

(assert (=> b!935451 (= e!525301 e!525289)))

(declare-fun res!630042 () Bool)

(assert (=> b!935451 (= res!630042 call!40734)))

(assert (=> b!935451 (=> (not res!630042) (not e!525289))))

(declare-fun b!935452 () Bool)

(assert (=> b!935452 (= e!525290 call!40739)))

(declare-fun bm!40735 () Bool)

(assert (=> bm!40735 (= call!40739 call!40735)))

(declare-fun bm!40736 () Bool)

(assert (=> bm!40736 (= call!40740 (contains!5084 lt!421630 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!40737 () Bool)

(assert (=> bm!40737 (= call!40735 call!40736)))

(declare-fun d!113181 () Bool)

(assert (=> d!113181 e!525297))

(declare-fun res!630047 () Bool)

(assert (=> d!113181 (=> (not res!630047) (not e!525297))))

(assert (=> d!113181 (= res!630047 (or (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27553 _keys!1487)) (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27553 _keys!1487)))))))

(declare-fun lt!421629 () ListLongMap!12121)

(assert (=> d!113181 (= lt!421630 lt!421629)))

(declare-fun lt!421625 () Unit!31553)

(assert (=> d!113181 (= lt!421625 e!525296)))

(declare-fun c!97227 () Bool)

(assert (=> d!113181 (= c!97227 e!525293)))

(declare-fun res!630043 () Bool)

(assert (=> d!113181 (=> (not res!630043) (not e!525293))))

(assert (=> d!113181 (= res!630043 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27553 _keys!1487)))))

(assert (=> d!113181 (= lt!421629 e!525291)))

(assert (=> d!113181 (= c!97225 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113181 (validMask!0 mask!1881)))

(assert (=> d!113181 (= (getCurrentListMap!3268 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) lt!421630)))

(declare-fun b!935436 () Bool)

(assert (=> b!935436 (= e!525292 call!40737)))

(assert (= (and d!113181 c!97225) b!935439))

(assert (= (and d!113181 (not c!97225)) b!935446))

(assert (= (and b!935446 c!97224) b!935436))

(assert (= (and b!935446 (not c!97224)) b!935444))

(assert (= (and b!935444 c!97226) b!935443))

(assert (= (and b!935444 (not c!97226)) b!935452))

(assert (= (or b!935443 b!935452) bm!40735))

(assert (= (or b!935436 bm!40735) bm!40737))

(assert (= (or b!935436 b!935443) bm!40731))

(assert (= (or b!935439 bm!40737) bm!40734))

(assert (= (or b!935439 bm!40731) bm!40732))

(assert (= (and d!113181 res!630043) b!935447))

(assert (= (and d!113181 c!97227) b!935434))

(assert (= (and d!113181 (not c!97227)) b!935449))

(assert (= (and d!113181 res!630047) b!935435))

(assert (= (and b!935435 res!630045) b!935440))

(assert (= (and b!935435 (not res!630041)) b!935433))

(assert (= (and b!935433 res!630046) b!935432))

(assert (= (and b!935435 res!630049) b!935438))

(assert (= (and b!935438 c!97223) b!935451))

(assert (= (and b!935438 (not c!97223)) b!935437))

(assert (= (and b!935451 res!630042) b!935442))

(assert (= (or b!935451 b!935437) bm!40733))

(assert (= (and b!935438 res!630048) b!935441))

(assert (= (and b!935441 c!97222) b!935448))

(assert (= (and b!935441 (not c!97222)) b!935445))

(assert (= (and b!935448 res!630044) b!935450))

(assert (= (or b!935448 b!935445) bm!40736))

(declare-fun b_lambda!14091 () Bool)

(assert (=> (not b_lambda!14091) (not b!935432)))

(assert (=> b!935432 t!27435))

(declare-fun b_and!28943 () Bool)

(assert (= b_and!28937 (and (=> t!27435 result!11961) b_and!28943)))

(declare-fun m!869985 () Bool)

(assert (=> b!935439 m!869985))

(assert (=> d!113181 m!869887))

(declare-fun m!869987 () Bool)

(assert (=> b!935434 m!869987))

(declare-fun m!869989 () Bool)

(assert (=> b!935434 m!869989))

(declare-fun m!869991 () Bool)

(assert (=> b!935434 m!869991))

(declare-fun m!869993 () Bool)

(assert (=> b!935434 m!869993))

(declare-fun m!869995 () Bool)

(assert (=> b!935434 m!869995))

(declare-fun m!869997 () Bool)

(assert (=> b!935434 m!869997))

(declare-fun m!869999 () Bool)

(assert (=> b!935434 m!869999))

(declare-fun m!870001 () Bool)

(assert (=> b!935434 m!870001))

(assert (=> b!935434 m!869995))

(declare-fun m!870003 () Bool)

(assert (=> b!935434 m!870003))

(declare-fun m!870005 () Bool)

(assert (=> b!935434 m!870005))

(assert (=> b!935434 m!869997))

(declare-fun m!870007 () Bool)

(assert (=> b!935434 m!870007))

(declare-fun m!870009 () Bool)

(assert (=> b!935434 m!870009))

(assert (=> b!935434 m!869845))

(assert (=> b!935434 m!870009))

(declare-fun m!870011 () Bool)

(assert (=> b!935434 m!870011))

(declare-fun m!870013 () Bool)

(assert (=> b!935434 m!870013))

(declare-fun m!870015 () Bool)

(assert (=> b!935434 m!870015))

(declare-fun m!870017 () Bool)

(assert (=> b!935434 m!870017))

(assert (=> b!935434 m!870013))

(declare-fun m!870019 () Bool)

(assert (=> bm!40736 m!870019))

(assert (=> b!935432 m!869867))

(assert (=> b!935432 m!869869))

(assert (=> b!935432 m!869871))

(assert (=> b!935432 m!869869))

(assert (=> b!935432 m!869867))

(assert (=> b!935432 m!869845))

(assert (=> b!935432 m!869845))

(declare-fun m!870021 () Bool)

(assert (=> b!935432 m!870021))

(declare-fun m!870023 () Bool)

(assert (=> b!935442 m!870023))

(assert (=> b!935433 m!869845))

(assert (=> b!935433 m!869845))

(declare-fun m!870025 () Bool)

(assert (=> b!935433 m!870025))

(assert (=> bm!40734 m!869989))

(assert (=> b!935447 m!869845))

(assert (=> b!935447 m!869845))

(declare-fun m!870027 () Bool)

(assert (=> b!935447 m!870027))

(declare-fun m!870029 () Bool)

(assert (=> bm!40733 m!870029))

(declare-fun m!870031 () Bool)

(assert (=> b!935450 m!870031))

(assert (=> b!935440 m!869845))

(assert (=> b!935440 m!869845))

(assert (=> b!935440 m!870027))

(declare-fun m!870033 () Bool)

(assert (=> bm!40732 m!870033))

(assert (=> b!935287 d!113181))

(declare-fun d!113183 () Bool)

(declare-fun e!525304 () Bool)

(assert (=> d!113183 e!525304))

(declare-fun res!630052 () Bool)

(assert (=> d!113183 (=> (not res!630052) (not e!525304))))

(assert (=> d!113183 (= res!630052 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27553 _keys!1487)) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27554 _values!1231))))))

(declare-fun lt!421646 () Unit!31553)

(declare-fun choose!1559 (array!56312 array!56314 (_ BitVec 32) (_ BitVec 32) V!31865 V!31865 (_ BitVec 32) Int) Unit!31553)

(assert (=> d!113183 (= lt!421646 (choose!1559 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> d!113183 (validMask!0 mask!1881)))

(assert (=> d!113183 (= (lemmaListMapRecursiveValidKeyArray!210 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) lt!421646)))

(declare-fun b!935455 () Bool)

(assert (=> b!935455 (= e!525304 (= (getCurrentListMap!3268 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2775 (getCurrentListMap!3268 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235) (tuple2!13411 (select (arr!27093 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14288 (select (arr!27094 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1614 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!113183 res!630052) b!935455))

(declare-fun b_lambda!14093 () Bool)

(assert (=> (not b_lambda!14093) (not b!935455)))

(assert (=> b!935455 t!27435))

(declare-fun b_and!28945 () Bool)

(assert (= b_and!28943 (and (=> t!27435 result!11961) b_and!28945)))

(declare-fun m!870035 () Bool)

(assert (=> d!113183 m!870035))

(assert (=> d!113183 m!869887))

(assert (=> b!935455 m!869845))

(assert (=> b!935455 m!869867))

(assert (=> b!935455 m!869869))

(assert (=> b!935455 m!869871))

(declare-fun m!870037 () Bool)

(assert (=> b!935455 m!870037))

(declare-fun m!870039 () Bool)

(assert (=> b!935455 m!870039))

(assert (=> b!935455 m!869869))

(assert (=> b!935455 m!869873))

(assert (=> b!935455 m!869867))

(assert (=> b!935455 m!870037))

(assert (=> b!935287 d!113183))

(declare-fun c!97228 () Bool)

(declare-fun bm!40738 () Bool)

(declare-fun call!40741 () Bool)

(assert (=> bm!40738 (= call!40741 (arrayNoDuplicates!0 _keys!1487 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (ite c!97228 (Cons!19213 (select (arr!27093 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) Nil!19214) Nil!19214)))))

(declare-fun b!935456 () Bool)

(declare-fun e!525307 () Bool)

(assert (=> b!935456 (= e!525307 (contains!5085 Nil!19214 (select (arr!27093 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun d!113185 () Bool)

(declare-fun res!630053 () Bool)

(declare-fun e!525308 () Bool)

(assert (=> d!113185 (=> res!630053 e!525308)))

(assert (=> d!113185 (= res!630053 (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27553 _keys!1487)))))

(assert (=> d!113185 (= (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19214) e!525308)))

(declare-fun b!935457 () Bool)

(declare-fun e!525305 () Bool)

(assert (=> b!935457 (= e!525305 call!40741)))

(declare-fun b!935458 () Bool)

(assert (=> b!935458 (= e!525305 call!40741)))

(declare-fun b!935459 () Bool)

(declare-fun e!525306 () Bool)

(assert (=> b!935459 (= e!525306 e!525305)))

(assert (=> b!935459 (= c!97228 (validKeyInArray!0 (select (arr!27093 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!935460 () Bool)

(assert (=> b!935460 (= e!525308 e!525306)))

(declare-fun res!630054 () Bool)

(assert (=> b!935460 (=> (not res!630054) (not e!525306))))

(assert (=> b!935460 (= res!630054 (not e!525307))))

(declare-fun res!630055 () Bool)

(assert (=> b!935460 (=> (not res!630055) (not e!525307))))

(assert (=> b!935460 (= res!630055 (validKeyInArray!0 (select (arr!27093 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (= (and d!113185 (not res!630053)) b!935460))

(assert (= (and b!935460 res!630055) b!935456))

(assert (= (and b!935460 res!630054) b!935459))

(assert (= (and b!935459 c!97228) b!935458))

(assert (= (and b!935459 (not c!97228)) b!935457))

(assert (= (or b!935458 b!935457) bm!40738))

(assert (=> bm!40738 m!869845))

(declare-fun m!870041 () Bool)

(assert (=> bm!40738 m!870041))

(assert (=> b!935456 m!869845))

(assert (=> b!935456 m!869845))

(declare-fun m!870043 () Bool)

(assert (=> b!935456 m!870043))

(assert (=> b!935459 m!869845))

(assert (=> b!935459 m!869845))

(assert (=> b!935459 m!870027))

(assert (=> b!935460 m!869845))

(assert (=> b!935460 m!869845))

(assert (=> b!935460 m!870027))

(assert (=> b!935287 d!113185))

(declare-fun d!113187 () Bool)

(declare-fun e!525313 () Bool)

(assert (=> d!113187 e!525313))

(declare-fun res!630058 () Bool)

(assert (=> d!113187 (=> res!630058 e!525313)))

(declare-fun lt!421656 () Bool)

(assert (=> d!113187 (= res!630058 (not lt!421656))))

(declare-fun lt!421658 () Bool)

(assert (=> d!113187 (= lt!421656 lt!421658)))

(declare-fun lt!421655 () Unit!31553)

(declare-fun e!525314 () Unit!31553)

(assert (=> d!113187 (= lt!421655 e!525314)))

(declare-fun c!97231 () Bool)

(assert (=> d!113187 (= c!97231 lt!421658)))

(declare-fun containsKey!450 (List!19218 (_ BitVec 64)) Bool)

(assert (=> d!113187 (= lt!421658 (containsKey!450 (toList!6076 (+!2775 lt!421538 lt!421542)) k0!1099))))

(assert (=> d!113187 (= (contains!5084 (+!2775 lt!421538 lt!421542) k0!1099) lt!421656)))

(declare-fun b!935467 () Bool)

(declare-fun lt!421657 () Unit!31553)

(assert (=> b!935467 (= e!525314 lt!421657)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!345 (List!19218 (_ BitVec 64)) Unit!31553)

(assert (=> b!935467 (= lt!421657 (lemmaContainsKeyImpliesGetValueByKeyDefined!345 (toList!6076 (+!2775 lt!421538 lt!421542)) k0!1099))))

(declare-fun isDefined!355 (Option!491) Bool)

(assert (=> b!935467 (isDefined!355 (getValueByKey!485 (toList!6076 (+!2775 lt!421538 lt!421542)) k0!1099))))

(declare-fun b!935468 () Bool)

(declare-fun Unit!31556 () Unit!31553)

(assert (=> b!935468 (= e!525314 Unit!31556)))

(declare-fun b!935469 () Bool)

(assert (=> b!935469 (= e!525313 (isDefined!355 (getValueByKey!485 (toList!6076 (+!2775 lt!421538 lt!421542)) k0!1099)))))

(assert (= (and d!113187 c!97231) b!935467))

(assert (= (and d!113187 (not c!97231)) b!935468))

(assert (= (and d!113187 (not res!630058)) b!935469))

(declare-fun m!870045 () Bool)

(assert (=> d!113187 m!870045))

(declare-fun m!870047 () Bool)

(assert (=> b!935467 m!870047))

(declare-fun m!870049 () Bool)

(assert (=> b!935467 m!870049))

(assert (=> b!935467 m!870049))

(declare-fun m!870051 () Bool)

(assert (=> b!935467 m!870051))

(assert (=> b!935469 m!870049))

(assert (=> b!935469 m!870049))

(assert (=> b!935469 m!870051))

(assert (=> b!935287 d!113187))

(declare-fun d!113189 () Bool)

(declare-fun e!525317 () Bool)

(assert (=> d!113189 e!525317))

(declare-fun c!97234 () Bool)

(assert (=> d!113189 (= c!97234 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!421661 () Unit!31553)

(declare-fun choose!1560 (array!56312 array!56314 (_ BitVec 32) (_ BitVec 32) V!31865 V!31865 (_ BitVec 64) (_ BitVec 32) Int) Unit!31553)

(assert (=> d!113189 (= lt!421661 (choose!1560 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> d!113189 (validMask!0 mask!1881)))

(assert (=> d!113189 (= (lemmaListMapContainsThenArrayContainsFrom!288 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235) lt!421661)))

(declare-fun b!935474 () Bool)

(assert (=> b!935474 (= e!525317 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!935475 () Bool)

(assert (=> b!935475 (= e!525317 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!113189 c!97234) b!935474))

(assert (= (and d!113189 (not c!97234)) b!935475))

(declare-fun m!870053 () Bool)

(assert (=> d!113189 m!870053))

(assert (=> d!113189 m!869887))

(assert (=> b!935474 m!869857))

(assert (=> b!935287 d!113189))

(declare-fun bm!40739 () Bool)

(declare-fun call!40745 () ListLongMap!12121)

(declare-fun call!40746 () ListLongMap!12121)

(assert (=> bm!40739 (= call!40745 call!40746)))

(declare-fun lt!421670 () ListLongMap!12121)

(declare-fun e!525327 () Bool)

(declare-fun b!935476 () Bool)

(assert (=> b!935476 (= e!525327 (= (apply!855 lt!421670 (select (arr!27093 _keys!1487) lt!421543)) (get!14288 (select (arr!27094 _values!1231) lt!421543) (dynLambda!1614 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!935476 (and (bvsge lt!421543 #b00000000000000000000000000000000) (bvslt lt!421543 (size!27554 _values!1231)))))

(assert (=> b!935476 (and (bvsge lt!421543 #b00000000000000000000000000000000) (bvslt lt!421543 (size!27553 _keys!1487)))))

(declare-fun call!40743 () ListLongMap!12121)

(declare-fun bm!40740 () Bool)

(declare-fun c!97237 () Bool)

(declare-fun call!40744 () ListLongMap!12121)

(declare-fun c!97238 () Bool)

(declare-fun call!40747 () ListLongMap!12121)

(assert (=> bm!40740 (= call!40746 (+!2775 (ite c!97238 call!40744 (ite c!97237 call!40743 call!40747)) (ite (or c!97238 c!97237) (tuple2!13411 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13411 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun b!935477 () Bool)

(declare-fun e!525323 () Bool)

(assert (=> b!935477 (= e!525323 e!525327)))

(declare-fun res!630064 () Bool)

(assert (=> b!935477 (=> (not res!630064) (not e!525327))))

(assert (=> b!935477 (= res!630064 (contains!5084 lt!421670 (select (arr!27093 _keys!1487) lt!421543)))))

(assert (=> b!935477 (and (bvsge lt!421543 #b00000000000000000000000000000000) (bvslt lt!421543 (size!27553 _keys!1487)))))

(declare-fun b!935478 () Bool)

(declare-fun e!525325 () Unit!31553)

(declare-fun lt!421683 () Unit!31553)

(assert (=> b!935478 (= e!525325 lt!421683)))

(declare-fun lt!421662 () ListLongMap!12121)

(assert (=> b!935478 (= lt!421662 (getCurrentListMapNoExtraKeys!3318 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 lt!421543 defaultEntry!1235))))

(declare-fun lt!421675 () (_ BitVec 64))

(assert (=> b!935478 (= lt!421675 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421678 () (_ BitVec 64))

(assert (=> b!935478 (= lt!421678 (select (arr!27093 _keys!1487) lt!421543))))

(declare-fun lt!421680 () Unit!31553)

(assert (=> b!935478 (= lt!421680 (addStillContains!531 lt!421662 lt!421675 zeroValue!1173 lt!421678))))

(assert (=> b!935478 (contains!5084 (+!2775 lt!421662 (tuple2!13411 lt!421675 zeroValue!1173)) lt!421678)))

(declare-fun lt!421676 () Unit!31553)

(assert (=> b!935478 (= lt!421676 lt!421680)))

(declare-fun lt!421674 () ListLongMap!12121)

(assert (=> b!935478 (= lt!421674 (getCurrentListMapNoExtraKeys!3318 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 lt!421543 defaultEntry!1235))))

(declare-fun lt!421671 () (_ BitVec 64))

(assert (=> b!935478 (= lt!421671 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421666 () (_ BitVec 64))

(assert (=> b!935478 (= lt!421666 (select (arr!27093 _keys!1487) lt!421543))))

(declare-fun lt!421668 () Unit!31553)

(assert (=> b!935478 (= lt!421668 (addApplyDifferent!413 lt!421674 lt!421671 minValue!1173 lt!421666))))

(assert (=> b!935478 (= (apply!855 (+!2775 lt!421674 (tuple2!13411 lt!421671 minValue!1173)) lt!421666) (apply!855 lt!421674 lt!421666))))

(declare-fun lt!421682 () Unit!31553)

(assert (=> b!935478 (= lt!421682 lt!421668)))

(declare-fun lt!421667 () ListLongMap!12121)

(assert (=> b!935478 (= lt!421667 (getCurrentListMapNoExtraKeys!3318 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 lt!421543 defaultEntry!1235))))

(declare-fun lt!421677 () (_ BitVec 64))

(assert (=> b!935478 (= lt!421677 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421673 () (_ BitVec 64))

(assert (=> b!935478 (= lt!421673 (select (arr!27093 _keys!1487) lt!421543))))

(declare-fun lt!421663 () Unit!31553)

(assert (=> b!935478 (= lt!421663 (addApplyDifferent!413 lt!421667 lt!421677 zeroValue!1173 lt!421673))))

(assert (=> b!935478 (= (apply!855 (+!2775 lt!421667 (tuple2!13411 lt!421677 zeroValue!1173)) lt!421673) (apply!855 lt!421667 lt!421673))))

(declare-fun lt!421679 () Unit!31553)

(assert (=> b!935478 (= lt!421679 lt!421663)))

(declare-fun lt!421672 () ListLongMap!12121)

(assert (=> b!935478 (= lt!421672 (getCurrentListMapNoExtraKeys!3318 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 lt!421543 defaultEntry!1235))))

(declare-fun lt!421664 () (_ BitVec 64))

(assert (=> b!935478 (= lt!421664 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421681 () (_ BitVec 64))

(assert (=> b!935478 (= lt!421681 (select (arr!27093 _keys!1487) lt!421543))))

(assert (=> b!935478 (= lt!421683 (addApplyDifferent!413 lt!421672 lt!421664 minValue!1173 lt!421681))))

(assert (=> b!935478 (= (apply!855 (+!2775 lt!421672 (tuple2!13411 lt!421664 minValue!1173)) lt!421681) (apply!855 lt!421672 lt!421681))))

(declare-fun b!935479 () Bool)

(declare-fun res!630067 () Bool)

(declare-fun e!525326 () Bool)

(assert (=> b!935479 (=> (not res!630067) (not e!525326))))

(assert (=> b!935479 (= res!630067 e!525323)))

(declare-fun res!630059 () Bool)

(assert (=> b!935479 (=> res!630059 e!525323)))

(declare-fun e!525329 () Bool)

(assert (=> b!935479 (= res!630059 (not e!525329))))

(declare-fun res!630063 () Bool)

(assert (=> b!935479 (=> (not res!630063) (not e!525329))))

(assert (=> b!935479 (= res!630063 (bvslt lt!421543 (size!27553 _keys!1487)))))

(declare-fun b!935481 () Bool)

(declare-fun e!525330 () Bool)

(declare-fun call!40742 () Bool)

(assert (=> b!935481 (= e!525330 (not call!40742))))

(declare-fun b!935482 () Bool)

(declare-fun res!630066 () Bool)

(assert (=> b!935482 (=> (not res!630066) (not e!525326))))

(assert (=> b!935482 (= res!630066 e!525330)))

(declare-fun c!97236 () Bool)

(assert (=> b!935482 (= c!97236 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!935483 () Bool)

(declare-fun e!525320 () ListLongMap!12121)

(assert (=> b!935483 (= e!525320 (+!2775 call!40746 (tuple2!13411 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun b!935484 () Bool)

(assert (=> b!935484 (= e!525329 (validKeyInArray!0 (select (arr!27093 _keys!1487) lt!421543)))))

(declare-fun b!935485 () Bool)

(declare-fun e!525328 () Bool)

(assert (=> b!935485 (= e!525326 e!525328)))

(declare-fun c!97235 () Bool)

(assert (=> b!935485 (= c!97235 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!935486 () Bool)

(declare-fun e!525318 () Bool)

(assert (=> b!935486 (= e!525318 (= (apply!855 lt!421670 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!935487 () Bool)

(declare-fun e!525319 () ListLongMap!12121)

(assert (=> b!935487 (= e!525319 call!40745)))

(declare-fun b!935488 () Bool)

(declare-fun c!97239 () Bool)

(assert (=> b!935488 (= c!97239 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!525321 () ListLongMap!12121)

(assert (=> b!935488 (= e!525321 e!525319)))

(declare-fun b!935489 () Bool)

(declare-fun call!40748 () Bool)

(assert (=> b!935489 (= e!525328 (not call!40748))))

(declare-fun bm!40741 () Bool)

(assert (=> bm!40741 (= call!40742 (contains!5084 lt!421670 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935490 () Bool)

(assert (=> b!935490 (= e!525320 e!525321)))

(assert (=> b!935490 (= c!97237 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!935491 () Bool)

(declare-fun e!525322 () Bool)

(assert (=> b!935491 (= e!525322 (validKeyInArray!0 (select (arr!27093 _keys!1487) lt!421543)))))

(declare-fun bm!40742 () Bool)

(assert (=> bm!40742 (= call!40744 (getCurrentListMapNoExtraKeys!3318 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 lt!421543 defaultEntry!1235))))

(declare-fun b!935492 () Bool)

(declare-fun e!525324 () Bool)

(assert (=> b!935492 (= e!525328 e!525324)))

(declare-fun res!630062 () Bool)

(assert (=> b!935492 (= res!630062 call!40748)))

(assert (=> b!935492 (=> (not res!630062) (not e!525324))))

(declare-fun b!935493 () Bool)

(declare-fun Unit!31557 () Unit!31553)

(assert (=> b!935493 (= e!525325 Unit!31557)))

(declare-fun b!935494 () Bool)

(assert (=> b!935494 (= e!525324 (= (apply!855 lt!421670 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun b!935495 () Bool)

(assert (=> b!935495 (= e!525330 e!525318)))

(declare-fun res!630060 () Bool)

(assert (=> b!935495 (= res!630060 call!40742)))

(assert (=> b!935495 (=> (not res!630060) (not e!525318))))

(declare-fun b!935496 () Bool)

(assert (=> b!935496 (= e!525319 call!40747)))

(declare-fun bm!40743 () Bool)

(assert (=> bm!40743 (= call!40747 call!40743)))

(declare-fun bm!40744 () Bool)

(assert (=> bm!40744 (= call!40748 (contains!5084 lt!421670 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!40745 () Bool)

(assert (=> bm!40745 (= call!40743 call!40744)))

(declare-fun d!113191 () Bool)

(assert (=> d!113191 e!525326))

(declare-fun res!630065 () Bool)

(assert (=> d!113191 (=> (not res!630065) (not e!525326))))

(assert (=> d!113191 (= res!630065 (or (bvsge lt!421543 (size!27553 _keys!1487)) (and (bvsge lt!421543 #b00000000000000000000000000000000) (bvslt lt!421543 (size!27553 _keys!1487)))))))

(declare-fun lt!421669 () ListLongMap!12121)

(assert (=> d!113191 (= lt!421670 lt!421669)))

(declare-fun lt!421665 () Unit!31553)

(assert (=> d!113191 (= lt!421665 e!525325)))

(declare-fun c!97240 () Bool)

(assert (=> d!113191 (= c!97240 e!525322)))

(declare-fun res!630061 () Bool)

(assert (=> d!113191 (=> (not res!630061) (not e!525322))))

(assert (=> d!113191 (= res!630061 (bvslt lt!421543 (size!27553 _keys!1487)))))

(assert (=> d!113191 (= lt!421669 e!525320)))

(assert (=> d!113191 (= c!97238 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113191 (validMask!0 mask!1881)))

(assert (=> d!113191 (= (getCurrentListMap!3268 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 lt!421543 defaultEntry!1235) lt!421670)))

(declare-fun b!935480 () Bool)

(assert (=> b!935480 (= e!525321 call!40745)))

(assert (= (and d!113191 c!97238) b!935483))

(assert (= (and d!113191 (not c!97238)) b!935490))

(assert (= (and b!935490 c!97237) b!935480))

(assert (= (and b!935490 (not c!97237)) b!935488))

(assert (= (and b!935488 c!97239) b!935487))

(assert (= (and b!935488 (not c!97239)) b!935496))

(assert (= (or b!935487 b!935496) bm!40743))

(assert (= (or b!935480 bm!40743) bm!40745))

(assert (= (or b!935480 b!935487) bm!40739))

(assert (= (or b!935483 bm!40745) bm!40742))

(assert (= (or b!935483 bm!40739) bm!40740))

(assert (= (and d!113191 res!630061) b!935491))

(assert (= (and d!113191 c!97240) b!935478))

(assert (= (and d!113191 (not c!97240)) b!935493))

(assert (= (and d!113191 res!630065) b!935479))

(assert (= (and b!935479 res!630063) b!935484))

(assert (= (and b!935479 (not res!630059)) b!935477))

(assert (= (and b!935477 res!630064) b!935476))

(assert (= (and b!935479 res!630067) b!935482))

(assert (= (and b!935482 c!97236) b!935495))

(assert (= (and b!935482 (not c!97236)) b!935481))

(assert (= (and b!935495 res!630060) b!935486))

(assert (= (or b!935495 b!935481) bm!40741))

(assert (= (and b!935482 res!630066) b!935485))

(assert (= (and b!935485 c!97235) b!935492))

(assert (= (and b!935485 (not c!97235)) b!935489))

(assert (= (and b!935492 res!630062) b!935494))

(assert (= (or b!935492 b!935489) bm!40744))

(declare-fun b_lambda!14095 () Bool)

(assert (=> (not b_lambda!14095) (not b!935476)))

(assert (=> b!935476 t!27435))

(declare-fun b_and!28947 () Bool)

(assert (= b_and!28945 (and (=> t!27435 result!11961) b_and!28947)))

(declare-fun m!870055 () Bool)

(assert (=> b!935483 m!870055))

(assert (=> d!113191 m!869887))

(declare-fun m!870057 () Bool)

(assert (=> b!935478 m!870057))

(declare-fun m!870059 () Bool)

(assert (=> b!935478 m!870059))

(declare-fun m!870061 () Bool)

(assert (=> b!935478 m!870061))

(declare-fun m!870063 () Bool)

(assert (=> b!935478 m!870063))

(declare-fun m!870065 () Bool)

(assert (=> b!935478 m!870065))

(declare-fun m!870067 () Bool)

(assert (=> b!935478 m!870067))

(declare-fun m!870069 () Bool)

(assert (=> b!935478 m!870069))

(declare-fun m!870071 () Bool)

(assert (=> b!935478 m!870071))

(assert (=> b!935478 m!870065))

(declare-fun m!870073 () Bool)

(assert (=> b!935478 m!870073))

(declare-fun m!870075 () Bool)

(assert (=> b!935478 m!870075))

(assert (=> b!935478 m!870067))

(declare-fun m!870077 () Bool)

(assert (=> b!935478 m!870077))

(declare-fun m!870079 () Bool)

(assert (=> b!935478 m!870079))

(assert (=> b!935478 m!869971))

(assert (=> b!935478 m!870079))

(declare-fun m!870081 () Bool)

(assert (=> b!935478 m!870081))

(declare-fun m!870083 () Bool)

(assert (=> b!935478 m!870083))

(declare-fun m!870085 () Bool)

(assert (=> b!935478 m!870085))

(declare-fun m!870087 () Bool)

(assert (=> b!935478 m!870087))

(assert (=> b!935478 m!870083))

(declare-fun m!870089 () Bool)

(assert (=> bm!40744 m!870089))

(declare-fun m!870091 () Bool)

(assert (=> b!935476 m!870091))

(assert (=> b!935476 m!869869))

(declare-fun m!870093 () Bool)

(assert (=> b!935476 m!870093))

(assert (=> b!935476 m!869869))

(assert (=> b!935476 m!870091))

(assert (=> b!935476 m!869971))

(assert (=> b!935476 m!869971))

(declare-fun m!870095 () Bool)

(assert (=> b!935476 m!870095))

(declare-fun m!870097 () Bool)

(assert (=> b!935486 m!870097))

(assert (=> b!935477 m!869971))

(assert (=> b!935477 m!869971))

(declare-fun m!870099 () Bool)

(assert (=> b!935477 m!870099))

(assert (=> bm!40742 m!870059))

(assert (=> b!935491 m!869971))

(assert (=> b!935491 m!869971))

(declare-fun m!870101 () Bool)

(assert (=> b!935491 m!870101))

(declare-fun m!870103 () Bool)

(assert (=> bm!40741 m!870103))

(declare-fun m!870105 () Bool)

(assert (=> b!935494 m!870105))

(assert (=> b!935484 m!869971))

(assert (=> b!935484 m!869971))

(assert (=> b!935484 m!870101))

(declare-fun m!870107 () Bool)

(assert (=> bm!40740 m!870107))

(assert (=> b!935287 d!113191))

(declare-fun d!113193 () Bool)

(declare-fun e!525333 () Bool)

(assert (=> d!113193 e!525333))

(declare-fun res!630072 () Bool)

(assert (=> d!113193 (=> (not res!630072) (not e!525333))))

(declare-fun lt!421692 () ListLongMap!12121)

(assert (=> d!113193 (= res!630072 (contains!5084 lt!421692 (_1!6715 lt!421542)))))

(declare-fun lt!421693 () List!19218)

(assert (=> d!113193 (= lt!421692 (ListLongMap!12122 lt!421693))))

(declare-fun lt!421694 () Unit!31553)

(declare-fun lt!421695 () Unit!31553)

(assert (=> d!113193 (= lt!421694 lt!421695)))

(assert (=> d!113193 (= (getValueByKey!485 lt!421693 (_1!6715 lt!421542)) (Some!490 (_2!6715 lt!421542)))))

(declare-fun lemmaContainsTupThenGetReturnValue!259 (List!19218 (_ BitVec 64) V!31865) Unit!31553)

(assert (=> d!113193 (= lt!421695 (lemmaContainsTupThenGetReturnValue!259 lt!421693 (_1!6715 lt!421542) (_2!6715 lt!421542)))))

(declare-fun insertStrictlySorted!315 (List!19218 (_ BitVec 64) V!31865) List!19218)

(assert (=> d!113193 (= lt!421693 (insertStrictlySorted!315 (toList!6076 lt!421538) (_1!6715 lt!421542) (_2!6715 lt!421542)))))

(assert (=> d!113193 (= (+!2775 lt!421538 lt!421542) lt!421692)))

(declare-fun b!935501 () Bool)

(declare-fun res!630073 () Bool)

(assert (=> b!935501 (=> (not res!630073) (not e!525333))))

(assert (=> b!935501 (= res!630073 (= (getValueByKey!485 (toList!6076 lt!421692) (_1!6715 lt!421542)) (Some!490 (_2!6715 lt!421542))))))

(declare-fun b!935502 () Bool)

(declare-fun contains!5087 (List!19218 tuple2!13410) Bool)

(assert (=> b!935502 (= e!525333 (contains!5087 (toList!6076 lt!421692) lt!421542))))

(assert (= (and d!113193 res!630072) b!935501))

(assert (= (and b!935501 res!630073) b!935502))

(declare-fun m!870109 () Bool)

(assert (=> d!113193 m!870109))

(declare-fun m!870111 () Bool)

(assert (=> d!113193 m!870111))

(declare-fun m!870113 () Bool)

(assert (=> d!113193 m!870113))

(declare-fun m!870115 () Bool)

(assert (=> d!113193 m!870115))

(declare-fun m!870117 () Bool)

(assert (=> b!935501 m!870117))

(declare-fun m!870119 () Bool)

(assert (=> b!935502 m!870119))

(assert (=> b!935287 d!113193))

(declare-fun d!113195 () Bool)

(declare-fun e!525334 () Bool)

(assert (=> d!113195 e!525334))

(declare-fun res!630074 () Bool)

(assert (=> d!113195 (=> (not res!630074) (not e!525334))))

(declare-fun lt!421696 () ListLongMap!12121)

(assert (=> d!113195 (= res!630074 (contains!5084 lt!421696 (_1!6715 lt!421542)))))

(declare-fun lt!421697 () List!19218)

(assert (=> d!113195 (= lt!421696 (ListLongMap!12122 lt!421697))))

(declare-fun lt!421698 () Unit!31553)

(declare-fun lt!421699 () Unit!31553)

(assert (=> d!113195 (= lt!421698 lt!421699)))

(assert (=> d!113195 (= (getValueByKey!485 lt!421697 (_1!6715 lt!421542)) (Some!490 (_2!6715 lt!421542)))))

(assert (=> d!113195 (= lt!421699 (lemmaContainsTupThenGetReturnValue!259 lt!421697 (_1!6715 lt!421542) (_2!6715 lt!421542)))))

(assert (=> d!113195 (= lt!421697 (insertStrictlySorted!315 (toList!6076 (getCurrentListMap!3268 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 lt!421543 defaultEntry!1235)) (_1!6715 lt!421542) (_2!6715 lt!421542)))))

(assert (=> d!113195 (= (+!2775 (getCurrentListMap!3268 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 lt!421543 defaultEntry!1235) lt!421542) lt!421696)))

(declare-fun b!935503 () Bool)

(declare-fun res!630075 () Bool)

(assert (=> b!935503 (=> (not res!630075) (not e!525334))))

(assert (=> b!935503 (= res!630075 (= (getValueByKey!485 (toList!6076 lt!421696) (_1!6715 lt!421542)) (Some!490 (_2!6715 lt!421542))))))

(declare-fun b!935504 () Bool)

(assert (=> b!935504 (= e!525334 (contains!5087 (toList!6076 lt!421696) lt!421542))))

(assert (= (and d!113195 res!630074) b!935503))

(assert (= (and b!935503 res!630075) b!935504))

(declare-fun m!870121 () Bool)

(assert (=> d!113195 m!870121))

(declare-fun m!870123 () Bool)

(assert (=> d!113195 m!870123))

(declare-fun m!870125 () Bool)

(assert (=> d!113195 m!870125))

(declare-fun m!870127 () Bool)

(assert (=> d!113195 m!870127))

(declare-fun m!870129 () Bool)

(assert (=> b!935503 m!870129))

(declare-fun m!870131 () Bool)

(assert (=> b!935504 m!870131))

(assert (=> b!935287 d!113195))

(declare-fun d!113197 () Bool)

(declare-fun c!97243 () Bool)

(assert (=> d!113197 (= c!97243 ((_ is ValueCellFull!9606) (select (arr!27094 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun e!525337 () V!31865)

(assert (=> d!113197 (= (get!14288 (select (arr!27094 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1614 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)) e!525337)))

(declare-fun b!935509 () Bool)

(declare-fun get!14290 (ValueCell!9606 V!31865) V!31865)

(assert (=> b!935509 (= e!525337 (get!14290 (select (arr!27094 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1614 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!935510 () Bool)

(declare-fun get!14291 (ValueCell!9606 V!31865) V!31865)

(assert (=> b!935510 (= e!525337 (get!14291 (select (arr!27094 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1614 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113197 c!97243) b!935509))

(assert (= (and d!113197 (not c!97243)) b!935510))

(assert (=> b!935509 m!869867))

(assert (=> b!935509 m!869869))

(declare-fun m!870133 () Bool)

(assert (=> b!935509 m!870133))

(assert (=> b!935510 m!869867))

(assert (=> b!935510 m!869869))

(declare-fun m!870135 () Bool)

(assert (=> b!935510 m!870135))

(assert (=> b!935287 d!113197))

(declare-fun d!113199 () Bool)

(assert (=> d!113199 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19214)))

(declare-fun lt!421702 () Unit!31553)

(declare-fun choose!39 (array!56312 (_ BitVec 32) (_ BitVec 32)) Unit!31553)

(assert (=> d!113199 (= lt!421702 (choose!39 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> d!113199 (bvslt (size!27553 _keys!1487) #b01111111111111111111111111111111)))

(assert (=> d!113199 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)) lt!421702)))

(declare-fun bs!26251 () Bool)

(assert (= bs!26251 d!113199))

(assert (=> bs!26251 m!869877))

(declare-fun m!870137 () Bool)

(assert (=> bs!26251 m!870137))

(assert (=> b!935287 d!113199))

(declare-fun d!113201 () Bool)

(declare-fun res!630081 () Bool)

(declare-fun e!525345 () Bool)

(assert (=> d!113201 (=> res!630081 e!525345)))

(assert (=> d!113201 (= res!630081 (bvsge #b00000000000000000000000000000000 (size!27553 _keys!1487)))))

(assert (=> d!113201 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881) e!525345)))

(declare-fun b!935519 () Bool)

(declare-fun e!525346 () Bool)

(assert (=> b!935519 (= e!525345 e!525346)))

(declare-fun c!97246 () Bool)

(assert (=> b!935519 (= c!97246 (validKeyInArray!0 (select (arr!27093 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!935520 () Bool)

(declare-fun call!40751 () Bool)

(assert (=> b!935520 (= e!525346 call!40751)))

(declare-fun bm!40748 () Bool)

(assert (=> bm!40748 (= call!40751 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1487 mask!1881))))

(declare-fun b!935521 () Bool)

(declare-fun e!525344 () Bool)

(assert (=> b!935521 (= e!525344 call!40751)))

(declare-fun b!935522 () Bool)

(assert (=> b!935522 (= e!525346 e!525344)))

(declare-fun lt!421709 () (_ BitVec 64))

(assert (=> b!935522 (= lt!421709 (select (arr!27093 _keys!1487) #b00000000000000000000000000000000))))

(declare-fun lt!421710 () Unit!31553)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56312 (_ BitVec 64) (_ BitVec 32)) Unit!31553)

(assert (=> b!935522 (= lt!421710 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1487 lt!421709 #b00000000000000000000000000000000))))

(assert (=> b!935522 (arrayContainsKey!0 _keys!1487 lt!421709 #b00000000000000000000000000000000)))

(declare-fun lt!421711 () Unit!31553)

(assert (=> b!935522 (= lt!421711 lt!421710)))

(declare-fun res!630080 () Bool)

(declare-datatypes ((SeekEntryResult!8967 0))(
  ( (MissingZero!8967 (index!38238 (_ BitVec 32))) (Found!8967 (index!38239 (_ BitVec 32))) (Intermediate!8967 (undefined!9779 Bool) (index!38240 (_ BitVec 32)) (x!80205 (_ BitVec 32))) (Undefined!8967) (MissingVacant!8967 (index!38241 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!56312 (_ BitVec 32)) SeekEntryResult!8967)

(assert (=> b!935522 (= res!630080 (= (seekEntryOrOpen!0 (select (arr!27093 _keys!1487) #b00000000000000000000000000000000) _keys!1487 mask!1881) (Found!8967 #b00000000000000000000000000000000)))))

(assert (=> b!935522 (=> (not res!630080) (not e!525344))))

(assert (= (and d!113201 (not res!630081)) b!935519))

(assert (= (and b!935519 c!97246) b!935522))

(assert (= (and b!935519 (not c!97246)) b!935520))

(assert (= (and b!935522 res!630080) b!935521))

(assert (= (or b!935521 b!935520) bm!40748))

(assert (=> b!935519 m!869963))

(assert (=> b!935519 m!869963))

(assert (=> b!935519 m!869969))

(declare-fun m!870139 () Bool)

(assert (=> bm!40748 m!870139))

(assert (=> b!935522 m!869963))

(declare-fun m!870141 () Bool)

(assert (=> b!935522 m!870141))

(declare-fun m!870143 () Bool)

(assert (=> b!935522 m!870143))

(assert (=> b!935522 m!869963))

(declare-fun m!870145 () Bool)

(assert (=> b!935522 m!870145))

(assert (=> b!935286 d!113201))

(declare-fun d!113203 () Bool)

(assert (=> d!113203 (= (validMask!0 mask!1881) (and (or (= mask!1881 #b00000000000000000000000000000111) (= mask!1881 #b00000000000000000000000000001111) (= mask!1881 #b00000000000000000000000000011111) (= mask!1881 #b00000000000000000000000000111111) (= mask!1881 #b00000000000000000000000001111111) (= mask!1881 #b00000000000000000000000011111111) (= mask!1881 #b00000000000000000000000111111111) (= mask!1881 #b00000000000000000000001111111111) (= mask!1881 #b00000000000000000000011111111111) (= mask!1881 #b00000000000000000000111111111111) (= mask!1881 #b00000000000000000001111111111111) (= mask!1881 #b00000000000000000011111111111111) (= mask!1881 #b00000000000000000111111111111111) (= mask!1881 #b00000000000000001111111111111111) (= mask!1881 #b00000000000000011111111111111111) (= mask!1881 #b00000000000000111111111111111111) (= mask!1881 #b00000000000001111111111111111111) (= mask!1881 #b00000000000011111111111111111111) (= mask!1881 #b00000000000111111111111111111111) (= mask!1881 #b00000000001111111111111111111111) (= mask!1881 #b00000000011111111111111111111111) (= mask!1881 #b00000000111111111111111111111111) (= mask!1881 #b00000001111111111111111111111111) (= mask!1881 #b00000011111111111111111111111111) (= mask!1881 #b00000111111111111111111111111111) (= mask!1881 #b00001111111111111111111111111111) (= mask!1881 #b00011111111111111111111111111111) (= mask!1881 #b00111111111111111111111111111111)) (bvsle mask!1881 #b00111111111111111111111111111111)))))

(assert (=> start!79610 d!113203))

(declare-fun d!113205 () Bool)

(assert (=> d!113205 (= (array_inv!21040 _values!1231) (bvsge (size!27554 _values!1231) #b00000000000000000000000000000000))))

(assert (=> start!79610 d!113205))

(declare-fun d!113207 () Bool)

(assert (=> d!113207 (= (array_inv!21041 _keys!1487) (bvsge (size!27553 _keys!1487) #b00000000000000000000000000000000))))

(assert (=> start!79610 d!113207))

(declare-fun d!113209 () Bool)

(declare-fun e!525347 () Bool)

(assert (=> d!113209 e!525347))

(declare-fun res!630082 () Bool)

(assert (=> d!113209 (=> res!630082 e!525347)))

(declare-fun lt!421713 () Bool)

(assert (=> d!113209 (= res!630082 (not lt!421713))))

(declare-fun lt!421715 () Bool)

(assert (=> d!113209 (= lt!421713 lt!421715)))

(declare-fun lt!421712 () Unit!31553)

(declare-fun e!525348 () Unit!31553)

(assert (=> d!113209 (= lt!421712 e!525348)))

(declare-fun c!97247 () Bool)

(assert (=> d!113209 (= c!97247 lt!421715)))

(assert (=> d!113209 (= lt!421715 (containsKey!450 (toList!6076 lt!421538) k0!1099))))

(assert (=> d!113209 (= (contains!5084 lt!421538 k0!1099) lt!421713)))

(declare-fun b!935523 () Bool)

(declare-fun lt!421714 () Unit!31553)

(assert (=> b!935523 (= e!525348 lt!421714)))

(assert (=> b!935523 (= lt!421714 (lemmaContainsKeyImpliesGetValueByKeyDefined!345 (toList!6076 lt!421538) k0!1099))))

(assert (=> b!935523 (isDefined!355 (getValueByKey!485 (toList!6076 lt!421538) k0!1099))))

(declare-fun b!935524 () Bool)

(declare-fun Unit!31558 () Unit!31553)

(assert (=> b!935524 (= e!525348 Unit!31558)))

(declare-fun b!935525 () Bool)

(assert (=> b!935525 (= e!525347 (isDefined!355 (getValueByKey!485 (toList!6076 lt!421538) k0!1099)))))

(assert (= (and d!113209 c!97247) b!935523))

(assert (= (and d!113209 (not c!97247)) b!935524))

(assert (= (and d!113209 (not res!630082)) b!935525))

(declare-fun m!870147 () Bool)

(assert (=> d!113209 m!870147))

(declare-fun m!870149 () Bool)

(assert (=> b!935523 m!870149))

(assert (=> b!935523 m!869975))

(assert (=> b!935523 m!869975))

(declare-fun m!870151 () Bool)

(assert (=> b!935523 m!870151))

(assert (=> b!935525 m!869975))

(assert (=> b!935525 m!869975))

(assert (=> b!935525 m!870151))

(assert (=> b!935294 d!113209))

(declare-fun bm!40749 () Bool)

(declare-fun call!40755 () ListLongMap!12121)

(declare-fun call!40756 () ListLongMap!12121)

(assert (=> bm!40749 (= call!40755 call!40756)))

(declare-fun lt!421724 () ListLongMap!12121)

(declare-fun e!525358 () Bool)

(declare-fun b!935526 () Bool)

(assert (=> b!935526 (= e!525358 (= (apply!855 lt!421724 (select (arr!27093 _keys!1487) from!1844)) (get!14288 (select (arr!27094 _values!1231) from!1844) (dynLambda!1614 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!935526 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27554 _values!1231)))))

(assert (=> b!935526 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27553 _keys!1487)))))

(declare-fun call!40754 () ListLongMap!12121)

(declare-fun call!40753 () ListLongMap!12121)

(declare-fun c!97251 () Bool)

(declare-fun call!40757 () ListLongMap!12121)

(declare-fun c!97250 () Bool)

(declare-fun bm!40750 () Bool)

(assert (=> bm!40750 (= call!40756 (+!2775 (ite c!97251 call!40754 (ite c!97250 call!40753 call!40757)) (ite (or c!97251 c!97250) (tuple2!13411 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13411 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun b!935527 () Bool)

(declare-fun e!525354 () Bool)

(assert (=> b!935527 (= e!525354 e!525358)))

(declare-fun res!630088 () Bool)

(assert (=> b!935527 (=> (not res!630088) (not e!525358))))

(assert (=> b!935527 (= res!630088 (contains!5084 lt!421724 (select (arr!27093 _keys!1487) from!1844)))))

(assert (=> b!935527 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27553 _keys!1487)))))

(declare-fun b!935528 () Bool)

(declare-fun e!525356 () Unit!31553)

(declare-fun lt!421737 () Unit!31553)

(assert (=> b!935528 (= e!525356 lt!421737)))

(declare-fun lt!421716 () ListLongMap!12121)

(assert (=> b!935528 (= lt!421716 (getCurrentListMapNoExtraKeys!3318 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!421729 () (_ BitVec 64))

(assert (=> b!935528 (= lt!421729 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421732 () (_ BitVec 64))

(assert (=> b!935528 (= lt!421732 (select (arr!27093 _keys!1487) from!1844))))

(declare-fun lt!421734 () Unit!31553)

(assert (=> b!935528 (= lt!421734 (addStillContains!531 lt!421716 lt!421729 zeroValue!1173 lt!421732))))

(assert (=> b!935528 (contains!5084 (+!2775 lt!421716 (tuple2!13411 lt!421729 zeroValue!1173)) lt!421732)))

(declare-fun lt!421730 () Unit!31553)

(assert (=> b!935528 (= lt!421730 lt!421734)))

(declare-fun lt!421728 () ListLongMap!12121)

(assert (=> b!935528 (= lt!421728 (getCurrentListMapNoExtraKeys!3318 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!421725 () (_ BitVec 64))

(assert (=> b!935528 (= lt!421725 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421720 () (_ BitVec 64))

(assert (=> b!935528 (= lt!421720 (select (arr!27093 _keys!1487) from!1844))))

(declare-fun lt!421722 () Unit!31553)

(assert (=> b!935528 (= lt!421722 (addApplyDifferent!413 lt!421728 lt!421725 minValue!1173 lt!421720))))

(assert (=> b!935528 (= (apply!855 (+!2775 lt!421728 (tuple2!13411 lt!421725 minValue!1173)) lt!421720) (apply!855 lt!421728 lt!421720))))

(declare-fun lt!421736 () Unit!31553)

(assert (=> b!935528 (= lt!421736 lt!421722)))

(declare-fun lt!421721 () ListLongMap!12121)

(assert (=> b!935528 (= lt!421721 (getCurrentListMapNoExtraKeys!3318 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!421731 () (_ BitVec 64))

(assert (=> b!935528 (= lt!421731 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421727 () (_ BitVec 64))

(assert (=> b!935528 (= lt!421727 (select (arr!27093 _keys!1487) from!1844))))

(declare-fun lt!421717 () Unit!31553)

(assert (=> b!935528 (= lt!421717 (addApplyDifferent!413 lt!421721 lt!421731 zeroValue!1173 lt!421727))))

(assert (=> b!935528 (= (apply!855 (+!2775 lt!421721 (tuple2!13411 lt!421731 zeroValue!1173)) lt!421727) (apply!855 lt!421721 lt!421727))))

(declare-fun lt!421733 () Unit!31553)

(assert (=> b!935528 (= lt!421733 lt!421717)))

(declare-fun lt!421726 () ListLongMap!12121)

(assert (=> b!935528 (= lt!421726 (getCurrentListMapNoExtraKeys!3318 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!421718 () (_ BitVec 64))

(assert (=> b!935528 (= lt!421718 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!421735 () (_ BitVec 64))

(assert (=> b!935528 (= lt!421735 (select (arr!27093 _keys!1487) from!1844))))

(assert (=> b!935528 (= lt!421737 (addApplyDifferent!413 lt!421726 lt!421718 minValue!1173 lt!421735))))

(assert (=> b!935528 (= (apply!855 (+!2775 lt!421726 (tuple2!13411 lt!421718 minValue!1173)) lt!421735) (apply!855 lt!421726 lt!421735))))

(declare-fun b!935529 () Bool)

(declare-fun res!630091 () Bool)

(declare-fun e!525357 () Bool)

(assert (=> b!935529 (=> (not res!630091) (not e!525357))))

(assert (=> b!935529 (= res!630091 e!525354)))

(declare-fun res!630083 () Bool)

(assert (=> b!935529 (=> res!630083 e!525354)))

(declare-fun e!525360 () Bool)

(assert (=> b!935529 (= res!630083 (not e!525360))))

(declare-fun res!630087 () Bool)

(assert (=> b!935529 (=> (not res!630087) (not e!525360))))

(assert (=> b!935529 (= res!630087 (bvslt from!1844 (size!27553 _keys!1487)))))

(declare-fun b!935531 () Bool)

(declare-fun e!525361 () Bool)

(declare-fun call!40752 () Bool)

(assert (=> b!935531 (= e!525361 (not call!40752))))

(declare-fun b!935532 () Bool)

(declare-fun res!630090 () Bool)

(assert (=> b!935532 (=> (not res!630090) (not e!525357))))

(assert (=> b!935532 (= res!630090 e!525361)))

(declare-fun c!97249 () Bool)

(assert (=> b!935532 (= c!97249 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!935533 () Bool)

(declare-fun e!525351 () ListLongMap!12121)

(assert (=> b!935533 (= e!525351 (+!2775 call!40756 (tuple2!13411 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun b!935534 () Bool)

(assert (=> b!935534 (= e!525360 (validKeyInArray!0 (select (arr!27093 _keys!1487) from!1844)))))

(declare-fun b!935535 () Bool)

(declare-fun e!525359 () Bool)

(assert (=> b!935535 (= e!525357 e!525359)))

(declare-fun c!97248 () Bool)

(assert (=> b!935535 (= c!97248 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!935536 () Bool)

(declare-fun e!525349 () Bool)

(assert (=> b!935536 (= e!525349 (= (apply!855 lt!421724 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!935537 () Bool)

(declare-fun e!525350 () ListLongMap!12121)

(assert (=> b!935537 (= e!525350 call!40755)))

(declare-fun b!935538 () Bool)

(declare-fun c!97252 () Bool)

(assert (=> b!935538 (= c!97252 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!525352 () ListLongMap!12121)

(assert (=> b!935538 (= e!525352 e!525350)))

(declare-fun b!935539 () Bool)

(declare-fun call!40758 () Bool)

(assert (=> b!935539 (= e!525359 (not call!40758))))

(declare-fun bm!40751 () Bool)

(assert (=> bm!40751 (= call!40752 (contains!5084 lt!421724 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935540 () Bool)

(assert (=> b!935540 (= e!525351 e!525352)))

(assert (=> b!935540 (= c!97250 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!935541 () Bool)

(declare-fun e!525353 () Bool)

(assert (=> b!935541 (= e!525353 (validKeyInArray!0 (select (arr!27093 _keys!1487) from!1844)))))

(declare-fun bm!40752 () Bool)

(assert (=> bm!40752 (= call!40754 (getCurrentListMapNoExtraKeys!3318 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!935542 () Bool)

(declare-fun e!525355 () Bool)

(assert (=> b!935542 (= e!525359 e!525355)))

(declare-fun res!630086 () Bool)

(assert (=> b!935542 (= res!630086 call!40758)))

(assert (=> b!935542 (=> (not res!630086) (not e!525355))))

(declare-fun b!935543 () Bool)

(declare-fun Unit!31559 () Unit!31553)

(assert (=> b!935543 (= e!525356 Unit!31559)))

(declare-fun b!935544 () Bool)

(assert (=> b!935544 (= e!525355 (= (apply!855 lt!421724 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun b!935545 () Bool)

(assert (=> b!935545 (= e!525361 e!525349)))

(declare-fun res!630084 () Bool)

(assert (=> b!935545 (= res!630084 call!40752)))

(assert (=> b!935545 (=> (not res!630084) (not e!525349))))

(declare-fun b!935546 () Bool)

(assert (=> b!935546 (= e!525350 call!40757)))

(declare-fun bm!40753 () Bool)

(assert (=> bm!40753 (= call!40757 call!40753)))

(declare-fun bm!40754 () Bool)

(assert (=> bm!40754 (= call!40758 (contains!5084 lt!421724 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!40755 () Bool)

(assert (=> bm!40755 (= call!40753 call!40754)))

(declare-fun d!113211 () Bool)

(assert (=> d!113211 e!525357))

(declare-fun res!630089 () Bool)

(assert (=> d!113211 (=> (not res!630089) (not e!525357))))

(assert (=> d!113211 (= res!630089 (or (bvsge from!1844 (size!27553 _keys!1487)) (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27553 _keys!1487)))))))

(declare-fun lt!421723 () ListLongMap!12121)

(assert (=> d!113211 (= lt!421724 lt!421723)))

(declare-fun lt!421719 () Unit!31553)

(assert (=> d!113211 (= lt!421719 e!525356)))

(declare-fun c!97253 () Bool)

(assert (=> d!113211 (= c!97253 e!525353)))

(declare-fun res!630085 () Bool)

(assert (=> d!113211 (=> (not res!630085) (not e!525353))))

(assert (=> d!113211 (= res!630085 (bvslt from!1844 (size!27553 _keys!1487)))))

(assert (=> d!113211 (= lt!421723 e!525351)))

(assert (=> d!113211 (= c!97251 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113211 (validMask!0 mask!1881)))

(assert (=> d!113211 (= (getCurrentListMap!3268 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) lt!421724)))

(declare-fun b!935530 () Bool)

(assert (=> b!935530 (= e!525352 call!40755)))

(assert (= (and d!113211 c!97251) b!935533))

(assert (= (and d!113211 (not c!97251)) b!935540))

(assert (= (and b!935540 c!97250) b!935530))

(assert (= (and b!935540 (not c!97250)) b!935538))

(assert (= (and b!935538 c!97252) b!935537))

(assert (= (and b!935538 (not c!97252)) b!935546))

(assert (= (or b!935537 b!935546) bm!40753))

(assert (= (or b!935530 bm!40753) bm!40755))

(assert (= (or b!935530 b!935537) bm!40749))

(assert (= (or b!935533 bm!40755) bm!40752))

(assert (= (or b!935533 bm!40749) bm!40750))

(assert (= (and d!113211 res!630085) b!935541))

(assert (= (and d!113211 c!97253) b!935528))

(assert (= (and d!113211 (not c!97253)) b!935543))

(assert (= (and d!113211 res!630089) b!935529))

(assert (= (and b!935529 res!630087) b!935534))

(assert (= (and b!935529 (not res!630083)) b!935527))

(assert (= (and b!935527 res!630088) b!935526))

(assert (= (and b!935529 res!630091) b!935532))

(assert (= (and b!935532 c!97249) b!935545))

(assert (= (and b!935532 (not c!97249)) b!935531))

(assert (= (and b!935545 res!630084) b!935536))

(assert (= (or b!935545 b!935531) bm!40751))

(assert (= (and b!935532 res!630090) b!935535))

(assert (= (and b!935535 c!97248) b!935542))

(assert (= (and b!935535 (not c!97248)) b!935539))

(assert (= (and b!935542 res!630086) b!935544))

(assert (= (or b!935542 b!935539) bm!40754))

(declare-fun b_lambda!14097 () Bool)

(assert (=> (not b_lambda!14097) (not b!935526)))

(assert (=> b!935526 t!27435))

(declare-fun b_and!28949 () Bool)

(assert (= b_and!28947 (and (=> t!27435 result!11961) b_and!28949)))

(declare-fun m!870153 () Bool)

(assert (=> b!935533 m!870153))

(assert (=> d!113211 m!869887))

(declare-fun m!870155 () Bool)

(assert (=> b!935528 m!870155))

(declare-fun m!870157 () Bool)

(assert (=> b!935528 m!870157))

(declare-fun m!870159 () Bool)

(assert (=> b!935528 m!870159))

(declare-fun m!870161 () Bool)

(assert (=> b!935528 m!870161))

(declare-fun m!870163 () Bool)

(assert (=> b!935528 m!870163))

(declare-fun m!870165 () Bool)

(assert (=> b!935528 m!870165))

(declare-fun m!870167 () Bool)

(assert (=> b!935528 m!870167))

(declare-fun m!870169 () Bool)

(assert (=> b!935528 m!870169))

(assert (=> b!935528 m!870163))

(declare-fun m!870171 () Bool)

(assert (=> b!935528 m!870171))

(declare-fun m!870173 () Bool)

(assert (=> b!935528 m!870173))

(assert (=> b!935528 m!870165))

(declare-fun m!870175 () Bool)

(assert (=> b!935528 m!870175))

(declare-fun m!870177 () Bool)

(assert (=> b!935528 m!870177))

(declare-fun m!870179 () Bool)

(assert (=> b!935528 m!870179))

(assert (=> b!935528 m!870177))

(declare-fun m!870181 () Bool)

(assert (=> b!935528 m!870181))

(declare-fun m!870183 () Bool)

(assert (=> b!935528 m!870183))

(declare-fun m!870185 () Bool)

(assert (=> b!935528 m!870185))

(declare-fun m!870187 () Bool)

(assert (=> b!935528 m!870187))

(assert (=> b!935528 m!870183))

(declare-fun m!870189 () Bool)

(assert (=> bm!40754 m!870189))

(declare-fun m!870191 () Bool)

(assert (=> b!935526 m!870191))

(assert (=> b!935526 m!869869))

(declare-fun m!870193 () Bool)

(assert (=> b!935526 m!870193))

(assert (=> b!935526 m!869869))

(assert (=> b!935526 m!870191))

(assert (=> b!935526 m!870179))

(assert (=> b!935526 m!870179))

(declare-fun m!870195 () Bool)

(assert (=> b!935526 m!870195))

(declare-fun m!870197 () Bool)

(assert (=> b!935536 m!870197))

(assert (=> b!935527 m!870179))

(assert (=> b!935527 m!870179))

(declare-fun m!870199 () Bool)

(assert (=> b!935527 m!870199))

(assert (=> bm!40752 m!870157))

(assert (=> b!935541 m!870179))

(assert (=> b!935541 m!870179))

(declare-fun m!870201 () Bool)

(assert (=> b!935541 m!870201))

(declare-fun m!870203 () Bool)

(assert (=> bm!40751 m!870203))

(declare-fun m!870205 () Bool)

(assert (=> b!935544 m!870205))

(assert (=> b!935534 m!870179))

(assert (=> b!935534 m!870179))

(assert (=> b!935534 m!870201))

(declare-fun m!870207 () Bool)

(assert (=> bm!40750 m!870207))

(assert (=> b!935294 d!113211))

(declare-fun d!113213 () Bool)

(assert (=> d!113213 (= (validKeyInArray!0 k0!1099) (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!935284 d!113213))

(declare-fun d!113215 () Bool)

(declare-fun lt!421738 () Bool)

(assert (=> d!113215 (= lt!421738 (select (content!409 Nil!19214) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!525362 () Bool)

(assert (=> d!113215 (= lt!421738 e!525362)))

(declare-fun res!630093 () Bool)

(assert (=> d!113215 (=> (not res!630093) (not e!525362))))

(assert (=> d!113215 (= res!630093 ((_ is Cons!19213) Nil!19214))))

(assert (=> d!113215 (= (contains!5085 Nil!19214 #b1000000000000000000000000000000000000000000000000000000000000000) lt!421738)))

(declare-fun b!935547 () Bool)

(declare-fun e!525363 () Bool)

(assert (=> b!935547 (= e!525362 e!525363)))

(declare-fun res!630092 () Bool)

(assert (=> b!935547 (=> res!630092 e!525363)))

(assert (=> b!935547 (= res!630092 (= (h!20359 Nil!19214) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!935548 () Bool)

(assert (=> b!935548 (= e!525363 (contains!5085 (t!27436 Nil!19214) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!113215 res!630093) b!935547))

(assert (= (and b!935547 (not res!630092)) b!935548))

(assert (=> d!113215 m!869957))

(declare-fun m!870209 () Bool)

(assert (=> d!113215 m!870209))

(declare-fun m!870211 () Bool)

(assert (=> b!935548 m!870211))

(assert (=> b!935293 d!113215))

(declare-fun d!113217 () Bool)

(declare-fun res!630094 () Bool)

(declare-fun e!525364 () Bool)

(assert (=> d!113217 (=> res!630094 e!525364)))

(assert (=> d!113217 (= res!630094 (= (select (arr!27093 _keys!1487) from!1844) k0!1099))))

(assert (=> d!113217 (= (arrayContainsKey!0 _keys!1487 k0!1099 from!1844) e!525364)))

(declare-fun b!935549 () Bool)

(declare-fun e!525365 () Bool)

(assert (=> b!935549 (= e!525364 e!525365)))

(declare-fun res!630095 () Bool)

(assert (=> b!935549 (=> (not res!630095) (not e!525365))))

(assert (=> b!935549 (= res!630095 (bvslt (bvadd from!1844 #b00000000000000000000000000000001) (size!27553 _keys!1487)))))

(declare-fun b!935550 () Bool)

(assert (=> b!935550 (= e!525365 (arrayContainsKey!0 _keys!1487 k0!1099 (bvadd from!1844 #b00000000000000000000000000000001)))))

(assert (= (and d!113217 (not res!630094)) b!935549))

(assert (= (and b!935549 res!630095) b!935550))

(assert (=> d!113217 m!870179))

(declare-fun m!870213 () Bool)

(assert (=> b!935550 m!870213))

(assert (=> b!935283 d!113217))

(declare-fun d!113219 () Bool)

(declare-fun res!630100 () Bool)

(declare-fun e!525370 () Bool)

(assert (=> d!113219 (=> res!630100 e!525370)))

(assert (=> d!113219 (= res!630100 ((_ is Nil!19214) Nil!19214))))

(assert (=> d!113219 (= (noDuplicate!1358 Nil!19214) e!525370)))

(declare-fun b!935555 () Bool)

(declare-fun e!525371 () Bool)

(assert (=> b!935555 (= e!525370 e!525371)))

(declare-fun res!630101 () Bool)

(assert (=> b!935555 (=> (not res!630101) (not e!525371))))

(assert (=> b!935555 (= res!630101 (not (contains!5085 (t!27436 Nil!19214) (h!20359 Nil!19214))))))

(declare-fun b!935556 () Bool)

(assert (=> b!935556 (= e!525371 (noDuplicate!1358 (t!27436 Nil!19214)))))

(assert (= (and d!113219 (not res!630100)) b!935555))

(assert (= (and b!935555 res!630101) b!935556))

(declare-fun m!870215 () Bool)

(assert (=> b!935555 m!870215))

(declare-fun m!870217 () Bool)

(assert (=> b!935556 m!870217))

(assert (=> b!935292 d!113219))

(declare-fun condMapEmpty!32037 () Bool)

(declare-fun mapDefault!32037 () ValueCell!9606)

(assert (=> mapNonEmpty!32031 (= condMapEmpty!32037 (= mapRest!32031 ((as const (Array (_ BitVec 32) ValueCell!9606)) mapDefault!32037)))))

(declare-fun e!525376 () Bool)

(declare-fun mapRes!32037 () Bool)

(assert (=> mapNonEmpty!32031 (= tp!61455 (and e!525376 mapRes!32037))))

(declare-fun b!935564 () Bool)

(assert (=> b!935564 (= e!525376 tp_is_empty!20175)))

(declare-fun mapNonEmpty!32037 () Bool)

(declare-fun tp!61464 () Bool)

(declare-fun e!525377 () Bool)

(assert (=> mapNonEmpty!32037 (= mapRes!32037 (and tp!61464 e!525377))))

(declare-fun mapKey!32037 () (_ BitVec 32))

(declare-fun mapValue!32037 () ValueCell!9606)

(declare-fun mapRest!32037 () (Array (_ BitVec 32) ValueCell!9606))

(assert (=> mapNonEmpty!32037 (= mapRest!32031 (store mapRest!32037 mapKey!32037 mapValue!32037))))

(declare-fun mapIsEmpty!32037 () Bool)

(assert (=> mapIsEmpty!32037 mapRes!32037))

(declare-fun b!935563 () Bool)

(assert (=> b!935563 (= e!525377 tp_is_empty!20175)))

(assert (= (and mapNonEmpty!32031 condMapEmpty!32037) mapIsEmpty!32037))

(assert (= (and mapNonEmpty!32031 (not condMapEmpty!32037)) mapNonEmpty!32037))

(assert (= (and mapNonEmpty!32037 ((_ is ValueCellFull!9606) mapValue!32037)) b!935563))

(assert (= (and mapNonEmpty!32031 ((_ is ValueCellFull!9606) mapDefault!32037)) b!935564))

(declare-fun m!870219 () Bool)

(assert (=> mapNonEmpty!32037 m!870219))

(declare-fun b_lambda!14099 () Bool)

(assert (= b_lambda!14091 (or (and start!79610 b_free!17667) b_lambda!14099)))

(declare-fun b_lambda!14101 () Bool)

(assert (= b_lambda!14093 (or (and start!79610 b_free!17667) b_lambda!14101)))

(declare-fun b_lambda!14103 () Bool)

(assert (= b_lambda!14095 (or (and start!79610 b_free!17667) b_lambda!14103)))

(declare-fun b_lambda!14105 () Bool)

(assert (= b_lambda!14097 (or (and start!79610 b_free!17667) b_lambda!14105)))

(check-sat (not b!935526) (not b!935456) (not b_lambda!14101) (not b!935534) (not b!935519) (not b_lambda!14103) (not b!935548) (not b!935460) (not bm!40740) (not b!935510) (not b!935555) (not b!935486) (not d!113199) (not d!113179) (not b!935478) (not bm!40742) (not b!935550) (not b!935367) (not b!935483) (not b!935525) (not b!935533) (not bm!40750) (not b!935382) (not bm!40734) (not bm!40738) (not b!935476) (not d!113189) (not b!935536) (not b!935450) (not b!935459) tp_is_empty!20175 (not bm!40744) (not d!113193) (not b!935502) (not b!935504) (not d!113187) (not b!935528) (not b!935432) (not d!113177) (not b!935469) (not b!935523) (not d!113191) (not bm!40732) (not b!935447) (not d!113183) (not b!935378) b_and!28949 (not d!113211) (not b!935501) (not bm!40741) (not b!935477) (not b!935484) (not d!113181) (not bm!40736) (not b!935433) (not b!935494) (not b!935439) (not b!935381) (not b!935544) (not b_lambda!14105) (not bm!40751) (not bm!40752) (not b!935388) (not b!935474) (not b!935503) (not bm!40733) (not b_next!17667) (not bm!40754) (not d!113195) (not b!935556) (not b!935541) (not mapNonEmpty!32037) (not b!935440) (not b_lambda!14099) (not bm!40716) (not d!113171) (not b!935455) (not b!935434) (not d!113215) (not d!113209) (not bm!40748) (not b!935509) (not b!935442) (not b!935491) (not b_lambda!14089) (not b!935527) (not b!935467) (not b!935522))
(check-sat b_and!28949 (not b_next!17667))
