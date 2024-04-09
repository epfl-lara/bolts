; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79676 () Bool)

(assert start!79676)

(declare-fun b_free!17697 () Bool)

(declare-fun b_next!17697 () Bool)

(assert (=> start!79676 (= b_free!17697 (not b_next!17697))))

(declare-fun tp!61547 () Bool)

(declare-fun b_and!29003 () Bool)

(assert (=> start!79676 (= tp!61547 b_and!29003)))

(declare-fun b!936238 () Bool)

(declare-datatypes ((Unit!31580 0))(
  ( (Unit!31581) )
))
(declare-fun e!525727 () Unit!31580)

(declare-fun Unit!31582 () Unit!31580)

(assert (=> b!936238 (= e!525727 Unit!31582)))

(declare-fun b!936239 () Bool)

(declare-fun e!525732 () Bool)

(assert (=> b!936239 (= e!525732 false)))

(declare-fun lt!422138 () Unit!31580)

(assert (=> b!936239 (= lt!422138 e!525727)))

(declare-fun c!97305 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!936239 (= c!97305 (validKeyInArray!0 k0!1099))))

(declare-fun b!936240 () Bool)

(declare-datatypes ((V!31905 0))(
  ( (V!31906 (val!10153 Int)) )
))
(declare-datatypes ((tuple2!13434 0))(
  ( (tuple2!13435 (_1!6727 (_ BitVec 64)) (_2!6727 V!31905)) )
))
(declare-datatypes ((List!19241 0))(
  ( (Nil!19238) (Cons!19237 (h!20383 tuple2!13434) (t!27490 List!19241)) )
))
(declare-datatypes ((ListLongMap!12145 0))(
  ( (ListLongMap!12146 (toList!6088 List!19241)) )
))
(declare-fun lt!422137 () ListLongMap!12145)

(declare-fun lt!422130 () V!31905)

(declare-fun apply!866 (ListLongMap!12145 (_ BitVec 64)) V!31905)

(assert (=> b!936240 (= (apply!866 lt!422137 k0!1099) lt!422130)))

(declare-fun lt!422135 () Unit!31580)

(declare-fun lt!422140 () V!31905)

(declare-fun lt!422131 () ListLongMap!12145)

(declare-fun lt!422134 () (_ BitVec 64))

(declare-fun addApplyDifferent!415 (ListLongMap!12145 (_ BitVec 64) V!31905 (_ BitVec 64)) Unit!31580)

(assert (=> b!936240 (= lt!422135 (addApplyDifferent!415 lt!422131 lt!422134 lt!422140 k0!1099))))

(assert (=> b!936240 (not (= lt!422134 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!422132 () Unit!31580)

(declare-datatypes ((array!56374 0))(
  ( (array!56375 (arr!27123 (Array (_ BitVec 32) (_ BitVec 64))) (size!27583 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56374)

(declare-datatypes ((List!19242 0))(
  ( (Nil!19239) (Cons!19238 (h!20384 (_ BitVec 64)) (t!27491 List!19242)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56374 (_ BitVec 64) (_ BitVec 32) List!19242) Unit!31580)

(assert (=> b!936240 (= lt!422132 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19239))))

(declare-fun e!525729 () Bool)

(assert (=> b!936240 e!525729))

(declare-fun c!97306 () Bool)

(assert (=> b!936240 (= c!97306 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9621 0))(
  ( (ValueCellFull!9621 (v!12678 V!31905)) (EmptyCell!9621) )
))
(declare-datatypes ((array!56376 0))(
  ( (array!56377 (arr!27124 (Array (_ BitVec 32) ValueCell!9621)) (size!27584 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56376)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31905)

(declare-fun minValue!1173 () V!31905)

(declare-fun lt!422129 () Unit!31580)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!298 (array!56374 array!56376 (_ BitVec 32) (_ BitVec 32) V!31905 V!31905 (_ BitVec 64) (_ BitVec 32) Int) Unit!31580)

(assert (=> b!936240 (= lt!422129 (lemmaListMapContainsThenArrayContainsFrom!298 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56374 (_ BitVec 32) List!19242) Bool)

(assert (=> b!936240 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19239)))

(declare-fun lt!422128 () Unit!31580)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56374 (_ BitVec 32) (_ BitVec 32)) Unit!31580)

(assert (=> b!936240 (= lt!422128 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!5099 (ListLongMap!12145 (_ BitVec 64)) Bool)

(assert (=> b!936240 (contains!5099 lt!422137 k0!1099)))

(declare-fun lt!422139 () tuple2!13434)

(declare-fun +!2785 (ListLongMap!12145 tuple2!13434) ListLongMap!12145)

(assert (=> b!936240 (= lt!422137 (+!2785 lt!422131 lt!422139))))

(declare-fun lt!422133 () Unit!31580)

(declare-fun addStillContains!541 (ListLongMap!12145 (_ BitVec 64) V!31905 (_ BitVec 64)) Unit!31580)

(assert (=> b!936240 (= lt!422133 (addStillContains!541 lt!422131 lt!422134 lt!422140 k0!1099))))

(declare-fun getCurrentListMap!3278 (array!56374 array!56376 (_ BitVec 32) (_ BitVec 32) V!31905 V!31905 (_ BitVec 32) Int) ListLongMap!12145)

(assert (=> b!936240 (= (getCurrentListMap!3278 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2785 (getCurrentListMap!3278 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422139))))

(assert (=> b!936240 (= lt!422139 (tuple2!13435 lt!422134 lt!422140))))

(declare-fun get!14311 (ValueCell!9621 V!31905) V!31905)

(declare-fun dynLambda!1624 (Int (_ BitVec 64)) V!31905)

(assert (=> b!936240 (= lt!422140 (get!14311 (select (arr!27124 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1624 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422136 () Unit!31580)

(declare-fun lemmaListMapRecursiveValidKeyArray!220 (array!56374 array!56376 (_ BitVec 32) (_ BitVec 32) V!31905 V!31905 (_ BitVec 32) Int) Unit!31580)

(assert (=> b!936240 (= lt!422136 (lemmaListMapRecursiveValidKeyArray!220 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!525734 () Unit!31580)

(assert (=> b!936240 (= e!525734 lt!422135)))

(declare-fun b!936241 () Bool)

(declare-fun e!525731 () Bool)

(declare-fun tp_is_empty!20205 () Bool)

(assert (=> b!936241 (= e!525731 tp_is_empty!20205)))

(declare-fun mapIsEmpty!32079 () Bool)

(declare-fun mapRes!32079 () Bool)

(assert (=> mapIsEmpty!32079 mapRes!32079))

(declare-fun b!936242 () Bool)

(declare-fun res!630529 () Bool)

(declare-fun e!525733 () Bool)

(assert (=> b!936242 (=> (not res!630529) (not e!525733))))

(assert (=> b!936242 (= res!630529 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19239))))

(declare-fun b!936243 () Bool)

(declare-fun e!525728 () Bool)

(assert (=> b!936243 (= e!525728 e!525732)))

(declare-fun res!630524 () Bool)

(assert (=> b!936243 (=> (not res!630524) (not e!525732))))

(declare-fun v!791 () V!31905)

(assert (=> b!936243 (= res!630524 (and (= lt!422130 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!936243 (= lt!422130 (apply!866 lt!422131 k0!1099))))

(declare-fun b!936244 () Bool)

(declare-fun arrayContainsKey!0 (array!56374 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!936244 (= e!525729 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!936246 () Bool)

(declare-fun res!630528 () Bool)

(assert (=> b!936246 (=> (not res!630528) (not e!525733))))

(assert (=> b!936246 (= res!630528 (and (= (size!27584 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27583 _keys!1487) (size!27584 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!936247 () Bool)

(assert (=> b!936247 (= e!525733 e!525728)))

(declare-fun res!630530 () Bool)

(assert (=> b!936247 (=> (not res!630530) (not e!525728))))

(assert (=> b!936247 (= res!630530 (contains!5099 lt!422131 k0!1099))))

(assert (=> b!936247 (= lt!422131 (getCurrentListMap!3278 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!936248 () Bool)

(assert (=> b!936248 (= e!525729 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!936249 () Bool)

(declare-fun e!525726 () Bool)

(assert (=> b!936249 (= e!525726 tp_is_empty!20205)))

(declare-fun mapNonEmpty!32079 () Bool)

(declare-fun tp!61548 () Bool)

(assert (=> mapNonEmpty!32079 (= mapRes!32079 (and tp!61548 e!525731))))

(declare-fun mapValue!32079 () ValueCell!9621)

(declare-fun mapRest!32079 () (Array (_ BitVec 32) ValueCell!9621))

(declare-fun mapKey!32079 () (_ BitVec 32))

(assert (=> mapNonEmpty!32079 (= (arr!27124 _values!1231) (store mapRest!32079 mapKey!32079 mapValue!32079))))

(declare-fun b!936250 () Bool)

(declare-fun res!630525 () Bool)

(assert (=> b!936250 (=> (not res!630525) (not e!525733))))

(assert (=> b!936250 (= res!630525 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27583 _keys!1487))))))

(declare-fun b!936251 () Bool)

(declare-fun res!630526 () Bool)

(assert (=> b!936251 (=> (not res!630526) (not e!525733))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56374 (_ BitVec 32)) Bool)

(assert (=> b!936251 (= res!630526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!936252 () Bool)

(assert (=> b!936252 (= e!525727 e!525734)))

(assert (=> b!936252 (= lt!422134 (select (arr!27123 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97307 () Bool)

(assert (=> b!936252 (= c!97307 (validKeyInArray!0 lt!422134))))

(declare-fun b!936253 () Bool)

(declare-fun Unit!31583 () Unit!31580)

(assert (=> b!936253 (= e!525734 Unit!31583)))

(declare-fun b!936245 () Bool)

(declare-fun e!525730 () Bool)

(assert (=> b!936245 (= e!525730 (and e!525726 mapRes!32079))))

(declare-fun condMapEmpty!32079 () Bool)

(declare-fun mapDefault!32079 () ValueCell!9621)

(assert (=> b!936245 (= condMapEmpty!32079 (= (arr!27124 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9621)) mapDefault!32079)))))

(declare-fun res!630527 () Bool)

(assert (=> start!79676 (=> (not res!630527) (not e!525733))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79676 (= res!630527 (validMask!0 mask!1881))))

(assert (=> start!79676 e!525733))

(assert (=> start!79676 true))

(assert (=> start!79676 tp_is_empty!20205))

(declare-fun array_inv!21062 (array!56376) Bool)

(assert (=> start!79676 (and (array_inv!21062 _values!1231) e!525730)))

(assert (=> start!79676 tp!61547))

(declare-fun array_inv!21063 (array!56374) Bool)

(assert (=> start!79676 (array_inv!21063 _keys!1487)))

(assert (= (and start!79676 res!630527) b!936246))

(assert (= (and b!936246 res!630528) b!936251))

(assert (= (and b!936251 res!630526) b!936242))

(assert (= (and b!936242 res!630529) b!936250))

(assert (= (and b!936250 res!630525) b!936247))

(assert (= (and b!936247 res!630530) b!936243))

(assert (= (and b!936243 res!630524) b!936239))

(assert (= (and b!936239 c!97305) b!936252))

(assert (= (and b!936239 (not c!97305)) b!936238))

(assert (= (and b!936252 c!97307) b!936240))

(assert (= (and b!936252 (not c!97307)) b!936253))

(assert (= (and b!936240 c!97306) b!936244))

(assert (= (and b!936240 (not c!97306)) b!936248))

(assert (= (and b!936245 condMapEmpty!32079) mapIsEmpty!32079))

(assert (= (and b!936245 (not condMapEmpty!32079)) mapNonEmpty!32079))

(get-info :version)

(assert (= (and mapNonEmpty!32079 ((_ is ValueCellFull!9621) mapValue!32079)) b!936241))

(assert (= (and b!936245 ((_ is ValueCellFull!9621) mapDefault!32079)) b!936249))

(assert (= start!79676 b!936245))

(declare-fun b_lambda!14133 () Bool)

(assert (=> (not b_lambda!14133) (not b!936240)))

(declare-fun t!27489 () Bool)

(declare-fun tb!6099 () Bool)

(assert (=> (and start!79676 (= defaultEntry!1235 defaultEntry!1235) t!27489) tb!6099))

(declare-fun result!12023 () Bool)

(assert (=> tb!6099 (= result!12023 tp_is_empty!20205)))

(assert (=> b!936240 t!27489))

(declare-fun b_and!29005 () Bool)

(assert (= b_and!29003 (and (=> t!27489 result!12023) b_and!29005)))

(declare-fun m!870939 () Bool)

(assert (=> b!936252 m!870939))

(declare-fun m!870941 () Bool)

(assert (=> b!936252 m!870941))

(declare-fun m!870943 () Bool)

(assert (=> start!79676 m!870943))

(declare-fun m!870945 () Bool)

(assert (=> start!79676 m!870945))

(declare-fun m!870947 () Bool)

(assert (=> start!79676 m!870947))

(declare-fun m!870949 () Bool)

(assert (=> b!936242 m!870949))

(declare-fun m!870951 () Bool)

(assert (=> b!936251 m!870951))

(declare-fun m!870953 () Bool)

(assert (=> b!936240 m!870953))

(declare-fun m!870955 () Bool)

(assert (=> b!936240 m!870955))

(declare-fun m!870957 () Bool)

(assert (=> b!936240 m!870957))

(declare-fun m!870959 () Bool)

(assert (=> b!936240 m!870959))

(declare-fun m!870961 () Bool)

(assert (=> b!936240 m!870961))

(declare-fun m!870963 () Bool)

(assert (=> b!936240 m!870963))

(declare-fun m!870965 () Bool)

(assert (=> b!936240 m!870965))

(assert (=> b!936240 m!870957))

(assert (=> b!936240 m!870959))

(declare-fun m!870967 () Bool)

(assert (=> b!936240 m!870967))

(declare-fun m!870969 () Bool)

(assert (=> b!936240 m!870969))

(declare-fun m!870971 () Bool)

(assert (=> b!936240 m!870971))

(declare-fun m!870973 () Bool)

(assert (=> b!936240 m!870973))

(declare-fun m!870975 () Bool)

(assert (=> b!936240 m!870975))

(declare-fun m!870977 () Bool)

(assert (=> b!936240 m!870977))

(declare-fun m!870979 () Bool)

(assert (=> b!936240 m!870979))

(declare-fun m!870981 () Bool)

(assert (=> b!936240 m!870981))

(assert (=> b!936240 m!870961))

(declare-fun m!870983 () Bool)

(assert (=> b!936240 m!870983))

(declare-fun m!870985 () Bool)

(assert (=> b!936239 m!870985))

(declare-fun m!870987 () Bool)

(assert (=> b!936244 m!870987))

(declare-fun m!870989 () Bool)

(assert (=> mapNonEmpty!32079 m!870989))

(declare-fun m!870991 () Bool)

(assert (=> b!936247 m!870991))

(declare-fun m!870993 () Bool)

(assert (=> b!936247 m!870993))

(declare-fun m!870995 () Bool)

(assert (=> b!936243 m!870995))

(check-sat (not b!936251) (not b!936247) b_and!29005 (not b_next!17697) tp_is_empty!20205 (not b!936242) (not b!936252) (not b!936240) (not b_lambda!14133) (not b!936243) (not start!79676) (not b!936239) (not mapNonEmpty!32079) (not b!936244))
(check-sat b_and!29005 (not b_next!17697))
