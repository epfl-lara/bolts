; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79074 () Bool)

(assert start!79074)

(declare-fun b_free!17259 () Bool)

(declare-fun b_next!17259 () Bool)

(assert (=> start!79074 (= b_free!17259 (not b_next!17259))))

(declare-fun tp!60219 () Bool)

(declare-fun b_and!28273 () Bool)

(assert (=> start!79074 (= tp!60219 b_and!28273)))

(declare-fun b!926295 () Bool)

(declare-fun e!519992 () Bool)

(declare-fun tp_is_empty!19767 () Bool)

(assert (=> b!926295 (= e!519992 tp_is_empty!19767)))

(declare-fun b!926296 () Bool)

(declare-fun res!624178 () Bool)

(declare-fun e!519989 () Bool)

(assert (=> b!926296 (=> (not res!624178) (not e!519989))))

(declare-datatypes ((array!55514 0))(
  ( (array!55515 (arr!26698 (Array (_ BitVec 32) (_ BitVec 64))) (size!27158 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55514)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55514 (_ BitVec 32)) Bool)

(assert (=> b!926296 (= res!624178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!926297 () Bool)

(declare-datatypes ((Unit!31316 0))(
  ( (Unit!31317) )
))
(declare-fun e!519981 () Unit!31316)

(declare-fun e!519985 () Unit!31316)

(assert (=> b!926297 (= e!519981 e!519985)))

(declare-fun lt!417191 () (_ BitVec 64))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!926297 (= lt!417191 (select (arr!26698 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96642 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!926297 (= c!96642 (validKeyInArray!0 lt!417191))))

(declare-fun b!926298 () Bool)

(declare-fun res!624183 () Bool)

(assert (=> b!926298 (=> (not res!624183) (not e!519989))))

(declare-datatypes ((List!18896 0))(
  ( (Nil!18893) (Cons!18892 (h!20038 (_ BitVec 64)) (t!26893 List!18896)) )
))
(declare-fun arrayNoDuplicates!0 (array!55514 (_ BitVec 32) List!18896) Bool)

(assert (=> b!926298 (= res!624183 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18893))))

(declare-fun b!926299 () Bool)

(declare-fun res!624176 () Bool)

(declare-fun e!519991 () Bool)

(assert (=> b!926299 (=> (not res!624176) (not e!519991))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((V!31321 0))(
  ( (V!31322 (val!9934 Int)) )
))
(declare-fun v!791 () V!31321)

(declare-datatypes ((tuple2!13064 0))(
  ( (tuple2!13065 (_1!6542 (_ BitVec 64)) (_2!6542 V!31321)) )
))
(declare-datatypes ((List!18897 0))(
  ( (Nil!18894) (Cons!18893 (h!20039 tuple2!13064) (t!26894 List!18897)) )
))
(declare-datatypes ((ListLongMap!11775 0))(
  ( (ListLongMap!11776 (toList!5903 List!18897)) )
))
(declare-fun lt!417190 () ListLongMap!11775)

(declare-fun apply!703 (ListLongMap!11775 (_ BitVec 64)) V!31321)

(assert (=> b!926299 (= res!624176 (= (apply!703 lt!417190 k0!1099) v!791))))

(declare-fun b!926300 () Bool)

(declare-fun res!624184 () Bool)

(assert (=> b!926300 (=> (not res!624184) (not e!519989))))

(assert (=> b!926300 (= res!624184 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27158 _keys!1487))))))

(declare-fun b!926301 () Bool)

(declare-fun e!519983 () Bool)

(declare-fun arrayContainsKey!0 (array!55514 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!926301 (= e!519983 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun e!519988 () Bool)

(declare-fun lt!417193 () ListLongMap!11775)

(declare-fun b!926302 () Bool)

(assert (=> b!926302 (= e!519988 (= (apply!703 lt!417193 k0!1099) v!791))))

(declare-fun b!926303 () Bool)

(declare-fun e!519990 () Bool)

(declare-fun mapRes!31407 () Bool)

(assert (=> b!926303 (= e!519990 (and e!519992 mapRes!31407))))

(declare-fun condMapEmpty!31407 () Bool)

(declare-datatypes ((ValueCell!9402 0))(
  ( (ValueCellFull!9402 (v!12452 V!31321)) (EmptyCell!9402) )
))
(declare-datatypes ((array!55516 0))(
  ( (array!55517 (arr!26699 (Array (_ BitVec 32) ValueCell!9402)) (size!27159 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55516)

(declare-fun mapDefault!31407 () ValueCell!9402)

(assert (=> b!926303 (= condMapEmpty!31407 (= (arr!26699 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9402)) mapDefault!31407)))))

(declare-fun mapIsEmpty!31407 () Bool)

(assert (=> mapIsEmpty!31407 mapRes!31407))

(declare-fun res!624181 () Bool)

(assert (=> start!79074 (=> (not res!624181) (not e!519989))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79074 (= res!624181 (validMask!0 mask!1881))))

(assert (=> start!79074 e!519989))

(assert (=> start!79074 true))

(assert (=> start!79074 tp_is_empty!19767))

(declare-fun array_inv!20782 (array!55516) Bool)

(assert (=> start!79074 (and (array_inv!20782 _values!1231) e!519990)))

(assert (=> start!79074 tp!60219))

(declare-fun array_inv!20783 (array!55514) Bool)

(assert (=> start!79074 (array_inv!20783 _keys!1487)))

(declare-fun b!926304 () Bool)

(declare-fun Unit!31318 () Unit!31316)

(assert (=> b!926304 (= e!519981 Unit!31318)))

(declare-fun mapNonEmpty!31407 () Bool)

(declare-fun tp!60218 () Bool)

(declare-fun e!519986 () Bool)

(assert (=> mapNonEmpty!31407 (= mapRes!31407 (and tp!60218 e!519986))))

(declare-fun mapRest!31407 () (Array (_ BitVec 32) ValueCell!9402))

(declare-fun mapKey!31407 () (_ BitVec 32))

(declare-fun mapValue!31407 () ValueCell!9402)

(assert (=> mapNonEmpty!31407 (= (arr!26699 _values!1231) (store mapRest!31407 mapKey!31407 mapValue!31407))))

(declare-fun b!926305 () Bool)

(assert (=> b!926305 (= e!519991 (not true))))

(assert (=> b!926305 e!519988))

(declare-fun res!624179 () Bool)

(assert (=> b!926305 (=> (not res!624179) (not e!519988))))

(declare-fun contains!4924 (ListLongMap!11775 (_ BitVec 64)) Bool)

(assert (=> b!926305 (= res!624179 (contains!4924 lt!417193 k0!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31321)

(declare-fun minValue!1173 () V!31321)

(declare-fun getCurrentListMap!3118 (array!55514 array!55516 (_ BitVec 32) (_ BitVec 32) V!31321 V!31321 (_ BitVec 32) Int) ListLongMap!11775)

(assert (=> b!926305 (= lt!417193 (getCurrentListMap!3118 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!417186 () Unit!31316)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!84 (array!55514 array!55516 (_ BitVec 32) (_ BitVec 32) V!31321 V!31321 (_ BitVec 64) V!31321 (_ BitVec 32) Int) Unit!31316)

(assert (=> b!926305 (= lt!417186 (lemmaListMapApplyFromThenApplyFromZero!84 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!926306 () Bool)

(declare-fun e!519982 () Bool)

(declare-fun e!519987 () Bool)

(assert (=> b!926306 (= e!519982 e!519987)))

(declare-fun res!624185 () Bool)

(assert (=> b!926306 (=> (not res!624185) (not e!519987))))

(declare-fun lt!417194 () V!31321)

(assert (=> b!926306 (= res!624185 (and (= lt!417194 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun lt!417187 () ListLongMap!11775)

(assert (=> b!926306 (= lt!417194 (apply!703 lt!417187 k0!1099))))

(declare-fun b!926307 () Bool)

(declare-fun e!519984 () Bool)

(assert (=> b!926307 (= e!519987 e!519984)))

(declare-fun res!624177 () Bool)

(assert (=> b!926307 (=> (not res!624177) (not e!519984))))

(assert (=> b!926307 (= res!624177 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27158 _keys!1487)))))

(declare-fun lt!417198 () Unit!31316)

(assert (=> b!926307 (= lt!417198 e!519981)))

(declare-fun c!96643 () Bool)

(assert (=> b!926307 (= c!96643 (validKeyInArray!0 k0!1099))))

(declare-fun b!926308 () Bool)

(declare-fun lt!417200 () ListLongMap!11775)

(assert (=> b!926308 (= (apply!703 lt!417200 k0!1099) lt!417194)))

(declare-fun lt!417196 () Unit!31316)

(declare-fun lt!417201 () V!31321)

(declare-fun addApplyDifferent!387 (ListLongMap!11775 (_ BitVec 64) V!31321 (_ BitVec 64)) Unit!31316)

(assert (=> b!926308 (= lt!417196 (addApplyDifferent!387 lt!417187 lt!417191 lt!417201 k0!1099))))

(assert (=> b!926308 (not (= lt!417191 k0!1099))))

(declare-fun lt!417199 () Unit!31316)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55514 (_ BitVec 64) (_ BitVec 32) List!18896) Unit!31316)

(assert (=> b!926308 (= lt!417199 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18893))))

(assert (=> b!926308 e!519983))

(declare-fun c!96644 () Bool)

(assert (=> b!926308 (= c!96644 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!417195 () Unit!31316)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!247 (array!55514 array!55516 (_ BitVec 32) (_ BitVec 32) V!31321 V!31321 (_ BitVec 64) (_ BitVec 32) Int) Unit!31316)

(assert (=> b!926308 (= lt!417195 (lemmaListMapContainsThenArrayContainsFrom!247 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!926308 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18893)))

(declare-fun lt!417192 () Unit!31316)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55514 (_ BitVec 32) (_ BitVec 32)) Unit!31316)

(assert (=> b!926308 (= lt!417192 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!926308 (contains!4924 lt!417200 k0!1099)))

(declare-fun lt!417197 () tuple2!13064)

(declare-fun +!2701 (ListLongMap!11775 tuple2!13064) ListLongMap!11775)

(assert (=> b!926308 (= lt!417200 (+!2701 lt!417187 lt!417197))))

(declare-fun lt!417189 () Unit!31316)

(declare-fun addStillContains!463 (ListLongMap!11775 (_ BitVec 64) V!31321 (_ BitVec 64)) Unit!31316)

(assert (=> b!926308 (= lt!417189 (addStillContains!463 lt!417187 lt!417191 lt!417201 k0!1099))))

(assert (=> b!926308 (= (getCurrentListMap!3118 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2701 (getCurrentListMap!3118 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!417197))))

(assert (=> b!926308 (= lt!417197 (tuple2!13065 lt!417191 lt!417201))))

(declare-fun get!14066 (ValueCell!9402 V!31321) V!31321)

(declare-fun dynLambda!1540 (Int (_ BitVec 64)) V!31321)

(assert (=> b!926308 (= lt!417201 (get!14066 (select (arr!26699 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1540 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!417188 () Unit!31316)

(declare-fun lemmaListMapRecursiveValidKeyArray!136 (array!55514 array!55516 (_ BitVec 32) (_ BitVec 32) V!31321 V!31321 (_ BitVec 32) Int) Unit!31316)

(assert (=> b!926308 (= lt!417188 (lemmaListMapRecursiveValidKeyArray!136 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!926308 (= e!519985 lt!417196)))

(declare-fun b!926309 () Bool)

(assert (=> b!926309 (= e!519989 e!519982)))

(declare-fun res!624182 () Bool)

(assert (=> b!926309 (=> (not res!624182) (not e!519982))))

(assert (=> b!926309 (= res!624182 (contains!4924 lt!417187 k0!1099))))

(assert (=> b!926309 (= lt!417187 (getCurrentListMap!3118 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!926310 () Bool)

(assert (=> b!926310 (= e!519984 e!519991)))

(declare-fun res!624175 () Bool)

(assert (=> b!926310 (=> (not res!624175) (not e!519991))))

(assert (=> b!926310 (= res!624175 (contains!4924 lt!417190 k0!1099))))

(assert (=> b!926310 (= lt!417190 (getCurrentListMap!3118 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!926311 () Bool)

(assert (=> b!926311 (= e!519986 tp_is_empty!19767)))

(declare-fun b!926312 () Bool)

(declare-fun res!624180 () Bool)

(assert (=> b!926312 (=> (not res!624180) (not e!519989))))

(assert (=> b!926312 (= res!624180 (and (= (size!27159 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27158 _keys!1487) (size!27159 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!926313 () Bool)

(declare-fun Unit!31319 () Unit!31316)

(assert (=> b!926313 (= e!519985 Unit!31319)))

(declare-fun b!926314 () Bool)

(assert (=> b!926314 (= e!519983 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!79074 res!624181) b!926312))

(assert (= (and b!926312 res!624180) b!926296))

(assert (= (and b!926296 res!624178) b!926298))

(assert (= (and b!926298 res!624183) b!926300))

(assert (= (and b!926300 res!624184) b!926309))

(assert (= (and b!926309 res!624182) b!926306))

(assert (= (and b!926306 res!624185) b!926307))

(assert (= (and b!926307 c!96643) b!926297))

(assert (= (and b!926307 (not c!96643)) b!926304))

(assert (= (and b!926297 c!96642) b!926308))

(assert (= (and b!926297 (not c!96642)) b!926313))

(assert (= (and b!926308 c!96644) b!926301))

(assert (= (and b!926308 (not c!96644)) b!926314))

(assert (= (and b!926307 res!624177) b!926310))

(assert (= (and b!926310 res!624175) b!926299))

(assert (= (and b!926299 res!624176) b!926305))

(assert (= (and b!926305 res!624179) b!926302))

(assert (= (and b!926303 condMapEmpty!31407) mapIsEmpty!31407))

(assert (= (and b!926303 (not condMapEmpty!31407)) mapNonEmpty!31407))

(get-info :version)

(assert (= (and mapNonEmpty!31407 ((_ is ValueCellFull!9402) mapValue!31407)) b!926311))

(assert (= (and b!926303 ((_ is ValueCellFull!9402) mapDefault!31407)) b!926295))

(assert (= start!79074 b!926303))

(declare-fun b_lambda!13791 () Bool)

(assert (=> (not b_lambda!13791) (not b!926308)))

(declare-fun t!26892 () Bool)

(declare-fun tb!5847 () Bool)

(assert (=> (and start!79074 (= defaultEntry!1235 defaultEntry!1235) t!26892) tb!5847))

(declare-fun result!11509 () Bool)

(assert (=> tb!5847 (= result!11509 tp_is_empty!19767)))

(assert (=> b!926308 t!26892))

(declare-fun b_and!28275 () Bool)

(assert (= b_and!28273 (and (=> t!26892 result!11509) b_and!28275)))

(declare-fun m!860951 () Bool)

(assert (=> b!926310 m!860951))

(declare-fun m!860953 () Bool)

(assert (=> b!926310 m!860953))

(declare-fun m!860955 () Bool)

(assert (=> b!926297 m!860955))

(declare-fun m!860957 () Bool)

(assert (=> b!926297 m!860957))

(declare-fun m!860959 () Bool)

(assert (=> b!926296 m!860959))

(declare-fun m!860961 () Bool)

(assert (=> b!926306 m!860961))

(declare-fun m!860963 () Bool)

(assert (=> b!926299 m!860963))

(declare-fun m!860965 () Bool)

(assert (=> b!926309 m!860965))

(declare-fun m!860967 () Bool)

(assert (=> b!926309 m!860967))

(declare-fun m!860969 () Bool)

(assert (=> start!79074 m!860969))

(declare-fun m!860971 () Bool)

(assert (=> start!79074 m!860971))

(declare-fun m!860973 () Bool)

(assert (=> start!79074 m!860973))

(declare-fun m!860975 () Bool)

(assert (=> b!926307 m!860975))

(declare-fun m!860977 () Bool)

(assert (=> mapNonEmpty!31407 m!860977))

(declare-fun m!860979 () Bool)

(assert (=> b!926301 m!860979))

(declare-fun m!860981 () Bool)

(assert (=> b!926308 m!860981))

(declare-fun m!860983 () Bool)

(assert (=> b!926308 m!860983))

(declare-fun m!860985 () Bool)

(assert (=> b!926308 m!860985))

(declare-fun m!860987 () Bool)

(assert (=> b!926308 m!860987))

(declare-fun m!860989 () Bool)

(assert (=> b!926308 m!860989))

(declare-fun m!860991 () Bool)

(assert (=> b!926308 m!860991))

(declare-fun m!860993 () Bool)

(assert (=> b!926308 m!860993))

(assert (=> b!926308 m!860991))

(assert (=> b!926308 m!860993))

(declare-fun m!860995 () Bool)

(assert (=> b!926308 m!860995))

(declare-fun m!860997 () Bool)

(assert (=> b!926308 m!860997))

(declare-fun m!860999 () Bool)

(assert (=> b!926308 m!860999))

(declare-fun m!861001 () Bool)

(assert (=> b!926308 m!861001))

(declare-fun m!861003 () Bool)

(assert (=> b!926308 m!861003))

(declare-fun m!861005 () Bool)

(assert (=> b!926308 m!861005))

(declare-fun m!861007 () Bool)

(assert (=> b!926308 m!861007))

(assert (=> b!926308 m!860953))

(assert (=> b!926308 m!860981))

(declare-fun m!861009 () Bool)

(assert (=> b!926308 m!861009))

(declare-fun m!861011 () Bool)

(assert (=> b!926305 m!861011))

(declare-fun m!861013 () Bool)

(assert (=> b!926305 m!861013))

(declare-fun m!861015 () Bool)

(assert (=> b!926305 m!861015))

(declare-fun m!861017 () Bool)

(assert (=> b!926302 m!861017))

(declare-fun m!861019 () Bool)

(assert (=> b!926298 m!861019))

(check-sat (not b!926298) b_and!28275 (not b!926308) (not b!926301) (not b!926306) (not b!926307) tp_is_empty!19767 (not b!926297) (not b!926305) (not mapNonEmpty!31407) (not b!926310) (not b!926309) (not b!926302) (not b!926299) (not b!926296) (not b_next!17259) (not start!79074) (not b_lambda!13791))
(check-sat b_and!28275 (not b_next!17259))
