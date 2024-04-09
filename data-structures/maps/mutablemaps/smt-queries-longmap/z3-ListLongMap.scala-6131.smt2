; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78924 () Bool)

(assert start!78924)

(declare-fun b_free!17109 () Bool)

(declare-fun b_next!17109 () Bool)

(assert (=> start!78924 (= b_free!17109 (not b_next!17109))))

(declare-fun tp!59769 () Bool)

(declare-fun b_and!27973 () Bool)

(assert (=> start!78924 (= tp!59769 b_and!27973)))

(declare-fun b!922133 () Bool)

(declare-fun res!621956 () Bool)

(declare-fun e!517448 () Bool)

(assert (=> b!922133 (=> (not res!621956) (not e!517448))))

(declare-datatypes ((array!55222 0))(
  ( (array!55223 (arr!26552 (Array (_ BitVec 32) (_ BitVec 64))) (size!27012 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55222)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31121 0))(
  ( (V!31122 (val!9859 Int)) )
))
(declare-datatypes ((ValueCell!9327 0))(
  ( (ValueCellFull!9327 (v!12377 V!31121)) (EmptyCell!9327) )
))
(declare-datatypes ((array!55224 0))(
  ( (array!55225 (arr!26553 (Array (_ BitVec 32) ValueCell!9327)) (size!27013 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55224)

(assert (=> b!922133 (= res!621956 (and (= (size!27013 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27012 _keys!1487) (size!27013 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!922134 () Bool)

(declare-fun res!621960 () Bool)

(assert (=> b!922134 (=> (not res!621960) (not e!517448))))

(declare-datatypes ((List!18765 0))(
  ( (Nil!18762) (Cons!18761 (h!19907 (_ BitVec 64)) (t!26612 List!18765)) )
))
(declare-fun arrayNoDuplicates!0 (array!55222 (_ BitVec 32) List!18765) Bool)

(assert (=> b!922134 (= res!621960 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18762))))

(declare-fun b!922136 () Bool)

(declare-fun e!517452 () Bool)

(declare-fun tp_is_empty!19617 () Bool)

(assert (=> b!922136 (= e!517452 tp_is_empty!19617)))

(declare-fun b!922137 () Bool)

(declare-fun res!621964 () Bool)

(assert (=> b!922137 (=> (not res!621964) (not e!517448))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55222 (_ BitVec 32)) Bool)

(assert (=> b!922137 (= res!621964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!922138 () Bool)

(declare-fun e!517450 () Bool)

(assert (=> b!922138 (= e!517450 tp_is_empty!19617)))

(declare-fun b!922139 () Bool)

(declare-fun e!517451 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(assert (=> b!922139 (= e!517451 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!31182 () Bool)

(declare-fun mapRes!31182 () Bool)

(declare-fun tp!59768 () Bool)

(assert (=> mapNonEmpty!31182 (= mapRes!31182 (and tp!59768 e!517450))))

(declare-fun mapValue!31182 () ValueCell!9327)

(declare-fun mapRest!31182 () (Array (_ BitVec 32) ValueCell!9327))

(declare-fun mapKey!31182 () (_ BitVec 32))

(assert (=> mapNonEmpty!31182 (= (arr!26553 _values!1231) (store mapRest!31182 mapKey!31182 mapValue!31182))))

(declare-fun b!922140 () Bool)

(declare-fun res!621962 () Bool)

(assert (=> b!922140 (=> (not res!621962) (not e!517448))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!922140 (= res!621962 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27012 _keys!1487))))))

(declare-fun res!621958 () Bool)

(assert (=> start!78924 (=> (not res!621958) (not e!517448))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78924 (= res!621958 (validMask!0 mask!1881))))

(assert (=> start!78924 e!517448))

(assert (=> start!78924 true))

(assert (=> start!78924 tp_is_empty!19617))

(declare-fun e!517445 () Bool)

(declare-fun array_inv!20672 (array!55224) Bool)

(assert (=> start!78924 (and (array_inv!20672 _values!1231) e!517445)))

(assert (=> start!78924 tp!59769))

(declare-fun array_inv!20673 (array!55222) Bool)

(assert (=> start!78924 (array_inv!20673 _keys!1487)))

(declare-fun b!922135 () Bool)

(declare-fun res!621965 () Bool)

(declare-fun e!517447 () Bool)

(assert (=> b!922135 (=> (not res!621965) (not e!517447))))

(assert (=> b!922135 (= res!621965 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!31182 () Bool)

(assert (=> mapIsEmpty!31182 mapRes!31182))

(declare-fun b!922141 () Bool)

(declare-fun res!621959 () Bool)

(assert (=> b!922141 (=> (not res!621959) (not e!517447))))

(declare-fun v!791 () V!31121)

(declare-datatypes ((tuple2!12926 0))(
  ( (tuple2!12927 (_1!6473 (_ BitVec 64)) (_2!6473 V!31121)) )
))
(declare-datatypes ((List!18766 0))(
  ( (Nil!18763) (Cons!18762 (h!19908 tuple2!12926) (t!26613 List!18766)) )
))
(declare-datatypes ((ListLongMap!11637 0))(
  ( (ListLongMap!11638 (toList!5834 List!18766)) )
))
(declare-fun lt!414091 () ListLongMap!11637)

(declare-fun apply!640 (ListLongMap!11637 (_ BitVec 64)) V!31121)

(assert (=> b!922141 (= res!621959 (= (apply!640 lt!414091 k0!1099) v!791))))

(declare-fun b!922142 () Bool)

(declare-fun e!517446 () Bool)

(assert (=> b!922142 (= e!517447 e!517446)))

(declare-fun res!621957 () Bool)

(assert (=> b!922142 (=> (not res!621957) (not e!517446))))

(declare-fun lt!414096 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922142 (= res!621957 (validKeyInArray!0 lt!414096))))

(assert (=> b!922142 (= lt!414096 (select (arr!26552 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!922143 () Bool)

(declare-fun arrayContainsKey!0 (array!55222 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!922143 (= e!517451 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!922144 () Bool)

(assert (=> b!922144 (= e!517448 e!517447)))

(declare-fun res!621963 () Bool)

(assert (=> b!922144 (=> (not res!621963) (not e!517447))))

(declare-fun contains!4861 (ListLongMap!11637 (_ BitVec 64)) Bool)

(assert (=> b!922144 (= res!621963 (contains!4861 lt!414091 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31121)

(declare-fun minValue!1173 () V!31121)

(declare-fun getCurrentListMap!3055 (array!55222 array!55224 (_ BitVec 32) (_ BitVec 32) V!31121 V!31121 (_ BitVec 32) Int) ListLongMap!11637)

(assert (=> b!922144 (= lt!414091 (getCurrentListMap!3055 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!922145 () Bool)

(assert (=> b!922145 (= e!517446 (not true))))

(assert (=> b!922145 (not (= lt!414096 k0!1099))))

(declare-datatypes ((Unit!31103 0))(
  ( (Unit!31104) )
))
(declare-fun lt!414097 () Unit!31103)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55222 (_ BitVec 64) (_ BitVec 32) List!18765) Unit!31103)

(assert (=> b!922145 (= lt!414097 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18762))))

(assert (=> b!922145 e!517451))

(declare-fun c!96083 () Bool)

(assert (=> b!922145 (= c!96083 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!414093 () Unit!31103)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!194 (array!55222 array!55224 (_ BitVec 32) (_ BitVec 32) V!31121 V!31121 (_ BitVec 64) (_ BitVec 32) Int) Unit!31103)

(assert (=> b!922145 (= lt!414093 (lemmaListMapContainsThenArrayContainsFrom!194 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!922145 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18762)))

(declare-fun lt!414098 () Unit!31103)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55222 (_ BitVec 32) (_ BitVec 32)) Unit!31103)

(assert (=> b!922145 (= lt!414098 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!414099 () tuple2!12926)

(declare-fun +!2648 (ListLongMap!11637 tuple2!12926) ListLongMap!11637)

(assert (=> b!922145 (contains!4861 (+!2648 lt!414091 lt!414099) k0!1099)))

(declare-fun lt!414095 () V!31121)

(declare-fun lt!414094 () Unit!31103)

(declare-fun addStillContains!410 (ListLongMap!11637 (_ BitVec 64) V!31121 (_ BitVec 64)) Unit!31103)

(assert (=> b!922145 (= lt!414094 (addStillContains!410 lt!414091 lt!414096 lt!414095 k0!1099))))

(assert (=> b!922145 (= (getCurrentListMap!3055 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2648 (getCurrentListMap!3055 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414099))))

(assert (=> b!922145 (= lt!414099 (tuple2!12927 lt!414096 lt!414095))))

(declare-fun get!13963 (ValueCell!9327 V!31121) V!31121)

(declare-fun dynLambda!1487 (Int (_ BitVec 64)) V!31121)

(assert (=> b!922145 (= lt!414095 (get!13963 (select (arr!26553 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1487 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414092 () Unit!31103)

(declare-fun lemmaListMapRecursiveValidKeyArray!83 (array!55222 array!55224 (_ BitVec 32) (_ BitVec 32) V!31121 V!31121 (_ BitVec 32) Int) Unit!31103)

(assert (=> b!922145 (= lt!414092 (lemmaListMapRecursiveValidKeyArray!83 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!922146 () Bool)

(assert (=> b!922146 (= e!517445 (and e!517452 mapRes!31182))))

(declare-fun condMapEmpty!31182 () Bool)

(declare-fun mapDefault!31182 () ValueCell!9327)

(assert (=> b!922146 (= condMapEmpty!31182 (= (arr!26553 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9327)) mapDefault!31182)))))

(declare-fun b!922147 () Bool)

(declare-fun res!621961 () Bool)

(assert (=> b!922147 (=> (not res!621961) (not e!517447))))

(assert (=> b!922147 (= res!621961 (validKeyInArray!0 k0!1099))))

(assert (= (and start!78924 res!621958) b!922133))

(assert (= (and b!922133 res!621956) b!922137))

(assert (= (and b!922137 res!621964) b!922134))

(assert (= (and b!922134 res!621960) b!922140))

(assert (= (and b!922140 res!621962) b!922144))

(assert (= (and b!922144 res!621963) b!922141))

(assert (= (and b!922141 res!621959) b!922135))

(assert (= (and b!922135 res!621965) b!922147))

(assert (= (and b!922147 res!621961) b!922142))

(assert (= (and b!922142 res!621957) b!922145))

(assert (= (and b!922145 c!96083) b!922143))

(assert (= (and b!922145 (not c!96083)) b!922139))

(assert (= (and b!922146 condMapEmpty!31182) mapIsEmpty!31182))

(assert (= (and b!922146 (not condMapEmpty!31182)) mapNonEmpty!31182))

(get-info :version)

(assert (= (and mapNonEmpty!31182 ((_ is ValueCellFull!9327) mapValue!31182)) b!922138))

(assert (= (and b!922146 ((_ is ValueCellFull!9327) mapDefault!31182)) b!922136))

(assert (= start!78924 b!922146))

(declare-fun b_lambda!13641 () Bool)

(assert (=> (not b_lambda!13641) (not b!922145)))

(declare-fun t!26611 () Bool)

(declare-fun tb!5697 () Bool)

(assert (=> (and start!78924 (= defaultEntry!1235 defaultEntry!1235) t!26611) tb!5697))

(declare-fun result!11209 () Bool)

(assert (=> tb!5697 (= result!11209 tp_is_empty!19617)))

(assert (=> b!922145 t!26611))

(declare-fun b_and!27975 () Bool)

(assert (= b_and!27973 (and (=> t!26611 result!11209) b_and!27975)))

(declare-fun m!856285 () Bool)

(assert (=> b!922134 m!856285))

(declare-fun m!856287 () Bool)

(assert (=> start!78924 m!856287))

(declare-fun m!856289 () Bool)

(assert (=> start!78924 m!856289))

(declare-fun m!856291 () Bool)

(assert (=> start!78924 m!856291))

(declare-fun m!856293 () Bool)

(assert (=> b!922141 m!856293))

(declare-fun m!856295 () Bool)

(assert (=> b!922147 m!856295))

(declare-fun m!856297 () Bool)

(assert (=> mapNonEmpty!31182 m!856297))

(declare-fun m!856299 () Bool)

(assert (=> b!922142 m!856299))

(declare-fun m!856301 () Bool)

(assert (=> b!922142 m!856301))

(declare-fun m!856303 () Bool)

(assert (=> b!922143 m!856303))

(declare-fun m!856305 () Bool)

(assert (=> b!922144 m!856305))

(declare-fun m!856307 () Bool)

(assert (=> b!922144 m!856307))

(declare-fun m!856309 () Bool)

(assert (=> b!922145 m!856309))

(declare-fun m!856311 () Bool)

(assert (=> b!922145 m!856311))

(declare-fun m!856313 () Bool)

(assert (=> b!922145 m!856313))

(assert (=> b!922145 m!856309))

(assert (=> b!922145 m!856311))

(declare-fun m!856315 () Bool)

(assert (=> b!922145 m!856315))

(declare-fun m!856317 () Bool)

(assert (=> b!922145 m!856317))

(declare-fun m!856319 () Bool)

(assert (=> b!922145 m!856319))

(declare-fun m!856321 () Bool)

(assert (=> b!922145 m!856321))

(declare-fun m!856323 () Bool)

(assert (=> b!922145 m!856323))

(declare-fun m!856325 () Bool)

(assert (=> b!922145 m!856325))

(assert (=> b!922145 m!856313))

(declare-fun m!856327 () Bool)

(assert (=> b!922145 m!856327))

(declare-fun m!856329 () Bool)

(assert (=> b!922145 m!856329))

(declare-fun m!856331 () Bool)

(assert (=> b!922145 m!856331))

(declare-fun m!856333 () Bool)

(assert (=> b!922145 m!856333))

(assert (=> b!922145 m!856331))

(declare-fun m!856335 () Bool)

(assert (=> b!922145 m!856335))

(declare-fun m!856337 () Bool)

(assert (=> b!922137 m!856337))

(check-sat (not b!922147) (not b!922141) (not b!922137) (not b_lambda!13641) b_and!27975 (not b!922144) (not b!922145) (not mapNonEmpty!31182) (not b!922134) (not b!922143) (not b!922142) tp_is_empty!19617 (not start!78924) (not b_next!17109))
(check-sat b_and!27975 (not b_next!17109))
