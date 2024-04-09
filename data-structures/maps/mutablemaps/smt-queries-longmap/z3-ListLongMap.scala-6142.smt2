; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78990 () Bool)

(assert start!78990)

(declare-fun b_free!17175 () Bool)

(declare-fun b_next!17175 () Bool)

(assert (=> start!78990 (= b_free!17175 (not b_next!17175))))

(declare-fun tp!59966 () Bool)

(declare-fun b_and!28105 () Bool)

(assert (=> start!78990 (= tp!59966 b_and!28105)))

(declare-fun b!923807 () Bool)

(declare-fun res!622913 () Bool)

(declare-fun e!518401 () Bool)

(assert (=> b!923807 (=> (not res!622913) (not e!518401))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55352 0))(
  ( (array!55353 (arr!26617 (Array (_ BitVec 32) (_ BitVec 64))) (size!27077 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55352)

(assert (=> b!923807 (= res!622913 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27077 _keys!1487))))))

(declare-fun b!923808 () Bool)

(declare-fun e!518407 () Bool)

(assert (=> b!923808 (= e!518407 false)))

(declare-datatypes ((V!31209 0))(
  ( (V!31210 (val!9892 Int)) )
))
(declare-fun lt!415238 () V!31209)

(declare-datatypes ((tuple2!12992 0))(
  ( (tuple2!12993 (_1!6506 (_ BitVec 64)) (_2!6506 V!31209)) )
))
(declare-datatypes ((List!18828 0))(
  ( (Nil!18825) (Cons!18824 (h!19970 tuple2!12992) (t!26741 List!18828)) )
))
(declare-datatypes ((ListLongMap!11703 0))(
  ( (ListLongMap!11704 (toList!5867 List!18828)) )
))
(declare-fun lt!415229 () ListLongMap!11703)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!670 (ListLongMap!11703 (_ BitVec 64)) V!31209)

(assert (=> b!923808 (= lt!415238 (apply!670 lt!415229 k0!1099))))

(declare-fun b!923809 () Bool)

(declare-fun e!518406 () Bool)

(assert (=> b!923809 (= e!518401 e!518406)))

(declare-fun res!622906 () Bool)

(assert (=> b!923809 (=> (not res!622906) (not e!518406))))

(declare-fun lt!415230 () ListLongMap!11703)

(declare-fun contains!4891 (ListLongMap!11703 (_ BitVec 64)) Bool)

(assert (=> b!923809 (= res!622906 (contains!4891 lt!415230 k0!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9360 0))(
  ( (ValueCellFull!9360 (v!12410 V!31209)) (EmptyCell!9360) )
))
(declare-datatypes ((array!55354 0))(
  ( (array!55355 (arr!26618 (Array (_ BitVec 32) ValueCell!9360)) (size!27078 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55354)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31209)

(declare-fun minValue!1173 () V!31209)

(declare-fun getCurrentListMap!3085 (array!55352 array!55354 (_ BitVec 32) (_ BitVec 32) V!31209 V!31209 (_ BitVec 32) Int) ListLongMap!11703)

(assert (=> b!923809 (= lt!415230 (getCurrentListMap!3085 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!923810 () Bool)

(declare-datatypes ((Unit!31184 0))(
  ( (Unit!31185) )
))
(declare-fun e!518405 () Unit!31184)

(declare-fun Unit!31186 () Unit!31184)

(assert (=> b!923810 (= e!518405 Unit!31186)))

(declare-fun b!923811 () Bool)

(declare-fun res!622909 () Bool)

(assert (=> b!923811 (=> (not res!622909) (not e!518401))))

(assert (=> b!923811 (= res!622909 (and (= (size!27078 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27077 _keys!1487) (size!27078 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!31281 () Bool)

(declare-fun mapRes!31281 () Bool)

(assert (=> mapIsEmpty!31281 mapRes!31281))

(declare-fun b!923812 () Bool)

(declare-fun res!622910 () Bool)

(assert (=> b!923812 (=> (not res!622910) (not e!518401))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55352 (_ BitVec 32)) Bool)

(assert (=> b!923812 (= res!622910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!923813 () Bool)

(declare-fun e!518402 () Bool)

(assert (=> b!923813 (= e!518402 e!518407)))

(declare-fun res!622911 () Bool)

(assert (=> b!923813 (=> (not res!622911) (not e!518407))))

(assert (=> b!923813 (= res!622911 (contains!4891 lt!415229 k0!1099))))

(assert (=> b!923813 (= lt!415229 (getCurrentListMap!3085 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!923814 () Bool)

(declare-fun e!518411 () Bool)

(declare-fun tp_is_empty!19683 () Bool)

(assert (=> b!923814 (= e!518411 tp_is_empty!19683)))

(declare-fun b!923815 () Bool)

(declare-fun res!622908 () Bool)

(assert (=> b!923815 (=> (not res!622908) (not e!518401))))

(declare-datatypes ((List!18829 0))(
  ( (Nil!18826) (Cons!18825 (h!19971 (_ BitVec 64)) (t!26742 List!18829)) )
))
(declare-fun arrayNoDuplicates!0 (array!55352 (_ BitVec 32) List!18829) Bool)

(assert (=> b!923815 (= res!622908 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18826))))

(declare-fun b!923816 () Bool)

(declare-fun e!518403 () Bool)

(declare-fun arrayContainsKey!0 (array!55352 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!923816 (= e!518403 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!923817 () Bool)

(declare-fun e!518410 () Bool)

(assert (=> b!923817 (= e!518410 tp_is_empty!19683)))

(declare-fun res!622905 () Bool)

(assert (=> start!78990 (=> (not res!622905) (not e!518401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78990 (= res!622905 (validMask!0 mask!1881))))

(assert (=> start!78990 e!518401))

(assert (=> start!78990 true))

(assert (=> start!78990 tp_is_empty!19683))

(declare-fun e!518404 () Bool)

(declare-fun array_inv!20726 (array!55354) Bool)

(assert (=> start!78990 (and (array_inv!20726 _values!1231) e!518404)))

(assert (=> start!78990 tp!59966))

(declare-fun array_inv!20727 (array!55352) Bool)

(assert (=> start!78990 (array_inv!20727 _keys!1487)))

(declare-fun b!923818 () Bool)

(declare-fun e!518408 () Bool)

(assert (=> b!923818 (= e!518406 e!518408)))

(declare-fun res!622907 () Bool)

(assert (=> b!923818 (=> (not res!622907) (not e!518408))))

(declare-fun v!791 () V!31209)

(declare-fun lt!415233 () V!31209)

(assert (=> b!923818 (= res!622907 (and (= lt!415233 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!923818 (= lt!415233 (apply!670 lt!415230 k0!1099))))

(declare-fun mapNonEmpty!31281 () Bool)

(declare-fun tp!59967 () Bool)

(assert (=> mapNonEmpty!31281 (= mapRes!31281 (and tp!59967 e!518411))))

(declare-fun mapValue!31281 () ValueCell!9360)

(declare-fun mapKey!31281 () (_ BitVec 32))

(declare-fun mapRest!31281 () (Array (_ BitVec 32) ValueCell!9360))

(assert (=> mapNonEmpty!31281 (= (arr!26618 _values!1231) (store mapRest!31281 mapKey!31281 mapValue!31281))))

(declare-fun b!923819 () Bool)

(declare-fun lt!415228 () ListLongMap!11703)

(assert (=> b!923819 (= (apply!670 lt!415228 k0!1099) lt!415233)))

(declare-fun lt!415235 () Unit!31184)

(declare-fun lt!415241 () (_ BitVec 64))

(declare-fun lt!415232 () V!31209)

(declare-fun addApplyDifferent!362 (ListLongMap!11703 (_ BitVec 64) V!31209 (_ BitVec 64)) Unit!31184)

(assert (=> b!923819 (= lt!415235 (addApplyDifferent!362 lt!415230 lt!415241 lt!415232 k0!1099))))

(assert (=> b!923819 (not (= lt!415241 k0!1099))))

(declare-fun lt!415239 () Unit!31184)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55352 (_ BitVec 64) (_ BitVec 32) List!18829) Unit!31184)

(assert (=> b!923819 (= lt!415239 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18826))))

(assert (=> b!923819 e!518403))

(declare-fun c!96265 () Bool)

(assert (=> b!923819 (= c!96265 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!415236 () Unit!31184)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!222 (array!55352 array!55354 (_ BitVec 32) (_ BitVec 32) V!31209 V!31209 (_ BitVec 64) (_ BitVec 32) Int) Unit!31184)

(assert (=> b!923819 (= lt!415236 (lemmaListMapContainsThenArrayContainsFrom!222 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!923819 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18826)))

(declare-fun lt!415237 () Unit!31184)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55352 (_ BitVec 32) (_ BitVec 32)) Unit!31184)

(assert (=> b!923819 (= lt!415237 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!923819 (contains!4891 lt!415228 k0!1099)))

(declare-fun lt!415242 () tuple2!12992)

(declare-fun +!2676 (ListLongMap!11703 tuple2!12992) ListLongMap!11703)

(assert (=> b!923819 (= lt!415228 (+!2676 lt!415230 lt!415242))))

(declare-fun lt!415231 () Unit!31184)

(declare-fun addStillContains!438 (ListLongMap!11703 (_ BitVec 64) V!31209 (_ BitVec 64)) Unit!31184)

(assert (=> b!923819 (= lt!415231 (addStillContains!438 lt!415230 lt!415241 lt!415232 k0!1099))))

(assert (=> b!923819 (= (getCurrentListMap!3085 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2676 (getCurrentListMap!3085 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!415242))))

(assert (=> b!923819 (= lt!415242 (tuple2!12993 lt!415241 lt!415232))))

(declare-fun get!14013 (ValueCell!9360 V!31209) V!31209)

(declare-fun dynLambda!1515 (Int (_ BitVec 64)) V!31209)

(assert (=> b!923819 (= lt!415232 (get!14013 (select (arr!26618 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1515 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!415240 () Unit!31184)

(declare-fun lemmaListMapRecursiveValidKeyArray!111 (array!55352 array!55354 (_ BitVec 32) (_ BitVec 32) V!31209 V!31209 (_ BitVec 32) Int) Unit!31184)

(assert (=> b!923819 (= lt!415240 (lemmaListMapRecursiveValidKeyArray!111 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!923819 (= e!518405 lt!415235)))

(declare-fun b!923820 () Bool)

(assert (=> b!923820 (= e!518408 e!518402)))

(declare-fun res!622912 () Bool)

(assert (=> b!923820 (=> (not res!622912) (not e!518402))))

(assert (=> b!923820 (= res!622912 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27077 _keys!1487)))))

(declare-fun lt!415234 () Unit!31184)

(declare-fun e!518409 () Unit!31184)

(assert (=> b!923820 (= lt!415234 e!518409)))

(declare-fun c!96264 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!923820 (= c!96264 (validKeyInArray!0 k0!1099))))

(declare-fun b!923821 () Bool)

(assert (=> b!923821 (= e!518403 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!923822 () Bool)

(assert (=> b!923822 (= e!518409 e!518405)))

(assert (=> b!923822 (= lt!415241 (select (arr!26617 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96266 () Bool)

(assert (=> b!923822 (= c!96266 (validKeyInArray!0 lt!415241))))

(declare-fun b!923823 () Bool)

(declare-fun Unit!31187 () Unit!31184)

(assert (=> b!923823 (= e!518409 Unit!31187)))

(declare-fun b!923824 () Bool)

(assert (=> b!923824 (= e!518404 (and e!518410 mapRes!31281))))

(declare-fun condMapEmpty!31281 () Bool)

(declare-fun mapDefault!31281 () ValueCell!9360)

(assert (=> b!923824 (= condMapEmpty!31281 (= (arr!26618 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9360)) mapDefault!31281)))))

(assert (= (and start!78990 res!622905) b!923811))

(assert (= (and b!923811 res!622909) b!923812))

(assert (= (and b!923812 res!622910) b!923815))

(assert (= (and b!923815 res!622908) b!923807))

(assert (= (and b!923807 res!622913) b!923809))

(assert (= (and b!923809 res!622906) b!923818))

(assert (= (and b!923818 res!622907) b!923820))

(assert (= (and b!923820 c!96264) b!923822))

(assert (= (and b!923820 (not c!96264)) b!923823))

(assert (= (and b!923822 c!96266) b!923819))

(assert (= (and b!923822 (not c!96266)) b!923810))

(assert (= (and b!923819 c!96265) b!923816))

(assert (= (and b!923819 (not c!96265)) b!923821))

(assert (= (and b!923820 res!622912) b!923813))

(assert (= (and b!923813 res!622911) b!923808))

(assert (= (and b!923824 condMapEmpty!31281) mapIsEmpty!31281))

(assert (= (and b!923824 (not condMapEmpty!31281)) mapNonEmpty!31281))

(get-info :version)

(assert (= (and mapNonEmpty!31281 ((_ is ValueCellFull!9360) mapValue!31281)) b!923814))

(assert (= (and b!923824 ((_ is ValueCellFull!9360) mapDefault!31281)) b!923817))

(assert (= start!78990 b!923824))

(declare-fun b_lambda!13707 () Bool)

(assert (=> (not b_lambda!13707) (not b!923819)))

(declare-fun t!26740 () Bool)

(declare-fun tb!5763 () Bool)

(assert (=> (and start!78990 (= defaultEntry!1235 defaultEntry!1235) t!26740) tb!5763))

(declare-fun result!11341 () Bool)

(assert (=> tb!5763 (= result!11341 tp_is_empty!19683)))

(assert (=> b!923819 t!26740))

(declare-fun b_and!28107 () Bool)

(assert (= b_and!28105 (and (=> t!26740 result!11341) b_and!28107)))

(declare-fun m!858171 () Bool)

(assert (=> b!923815 m!858171))

(declare-fun m!858173 () Bool)

(assert (=> b!923819 m!858173))

(declare-fun m!858175 () Bool)

(assert (=> b!923819 m!858175))

(declare-fun m!858177 () Bool)

(assert (=> b!923819 m!858177))

(declare-fun m!858179 () Bool)

(assert (=> b!923819 m!858179))

(declare-fun m!858181 () Bool)

(assert (=> b!923819 m!858181))

(declare-fun m!858183 () Bool)

(assert (=> b!923819 m!858183))

(declare-fun m!858185 () Bool)

(assert (=> b!923819 m!858185))

(declare-fun m!858187 () Bool)

(assert (=> b!923819 m!858187))

(declare-fun m!858189 () Bool)

(assert (=> b!923819 m!858189))

(declare-fun m!858191 () Bool)

(assert (=> b!923819 m!858191))

(declare-fun m!858193 () Bool)

(assert (=> b!923819 m!858193))

(declare-fun m!858195 () Bool)

(assert (=> b!923819 m!858195))

(declare-fun m!858197 () Bool)

(assert (=> b!923819 m!858197))

(declare-fun m!858199 () Bool)

(assert (=> b!923819 m!858199))

(assert (=> b!923819 m!858181))

(assert (=> b!923819 m!858183))

(declare-fun m!858201 () Bool)

(assert (=> b!923819 m!858201))

(assert (=> b!923819 m!858197))

(declare-fun m!858203 () Bool)

(assert (=> b!923819 m!858203))

(declare-fun m!858205 () Bool)

(assert (=> b!923812 m!858205))

(declare-fun m!858207 () Bool)

(assert (=> b!923820 m!858207))

(declare-fun m!858209 () Bool)

(assert (=> b!923818 m!858209))

(declare-fun m!858211 () Bool)

(assert (=> b!923808 m!858211))

(declare-fun m!858213 () Bool)

(assert (=> b!923809 m!858213))

(declare-fun m!858215 () Bool)

(assert (=> b!923809 m!858215))

(declare-fun m!858217 () Bool)

(assert (=> b!923813 m!858217))

(assert (=> b!923813 m!858187))

(declare-fun m!858219 () Bool)

(assert (=> start!78990 m!858219))

(declare-fun m!858221 () Bool)

(assert (=> start!78990 m!858221))

(declare-fun m!858223 () Bool)

(assert (=> start!78990 m!858223))

(declare-fun m!858225 () Bool)

(assert (=> b!923822 m!858225))

(declare-fun m!858227 () Bool)

(assert (=> b!923822 m!858227))

(declare-fun m!858229 () Bool)

(assert (=> mapNonEmpty!31281 m!858229))

(declare-fun m!858231 () Bool)

(assert (=> b!923816 m!858231))

(check-sat (not b!923813) (not mapNonEmpty!31281) (not b!923816) (not b!923812) (not b!923822) (not b_next!17175) b_and!28107 (not b!923809) (not b!923808) (not b!923820) (not b!923819) (not b!923818) (not start!78990) (not b_lambda!13707) (not b!923815) tp_is_empty!19683)
(check-sat b_and!28107 (not b_next!17175))
