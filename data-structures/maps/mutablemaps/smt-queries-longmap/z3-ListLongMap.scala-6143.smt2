; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78996 () Bool)

(assert start!78996)

(declare-fun b_free!17181 () Bool)

(declare-fun b_next!17181 () Bool)

(assert (=> start!78996 (= b_free!17181 (not b_next!17181))))

(declare-fun tp!59985 () Bool)

(declare-fun b_and!28117 () Bool)

(assert (=> start!78996 (= tp!59985 b_and!28117)))

(declare-fun b!923975 () Bool)

(declare-fun res!622986 () Bool)

(declare-fun e!518514 () Bool)

(assert (=> b!923975 (=> (not res!622986) (not e!518514))))

(declare-datatypes ((array!55364 0))(
  ( (array!55365 (arr!26623 (Array (_ BitVec 32) (_ BitVec 64))) (size!27083 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55364)

(declare-datatypes ((List!18834 0))(
  ( (Nil!18831) (Cons!18830 (h!19976 (_ BitVec 64)) (t!26753 List!18834)) )
))
(declare-fun arrayNoDuplicates!0 (array!55364 (_ BitVec 32) List!18834) Bool)

(assert (=> b!923975 (= res!622986 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18831))))

(declare-fun b!923976 () Bool)

(declare-fun e!518517 () Bool)

(declare-fun e!518520 () Bool)

(assert (=> b!923976 (= e!518517 e!518520)))

(declare-fun res!622994 () Bool)

(assert (=> b!923976 (=> (not res!622994) (not e!518520))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!923976 (= res!622994 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27083 _keys!1487)))))

(declare-datatypes ((Unit!31195 0))(
  ( (Unit!31196) )
))
(declare-fun lt!415370 () Unit!31195)

(declare-fun e!518512 () Unit!31195)

(assert (=> b!923976 (= lt!415370 e!518512)))

(declare-fun c!96292 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!923976 (= c!96292 (validKeyInArray!0 k0!1099))))

(declare-fun b!923977 () Bool)

(declare-fun e!518510 () Bool)

(assert (=> b!923977 (= e!518520 e!518510)))

(declare-fun res!622993 () Bool)

(assert (=> b!923977 (=> (not res!622993) (not e!518510))))

(declare-datatypes ((V!31217 0))(
  ( (V!31218 (val!9895 Int)) )
))
(declare-datatypes ((tuple2!12998 0))(
  ( (tuple2!12999 (_1!6509 (_ BitVec 64)) (_2!6509 V!31217)) )
))
(declare-datatypes ((List!18835 0))(
  ( (Nil!18832) (Cons!18831 (h!19977 tuple2!12998) (t!26754 List!18835)) )
))
(declare-datatypes ((ListLongMap!11709 0))(
  ( (ListLongMap!11710 (toList!5870 List!18835)) )
))
(declare-fun lt!415372 () ListLongMap!11709)

(declare-fun contains!4894 (ListLongMap!11709 (_ BitVec 64)) Bool)

(assert (=> b!923977 (= res!622993 (contains!4894 lt!415372 k0!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((ValueCell!9363 0))(
  ( (ValueCellFull!9363 (v!12413 V!31217)) (EmptyCell!9363) )
))
(declare-datatypes ((array!55366 0))(
  ( (array!55367 (arr!26624 (Array (_ BitVec 32) ValueCell!9363)) (size!27084 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55366)

(declare-fun zeroValue!1173 () V!31217)

(declare-fun minValue!1173 () V!31217)

(declare-fun getCurrentListMap!3088 (array!55364 array!55366 (_ BitVec 32) (_ BitVec 32) V!31217 V!31217 (_ BitVec 32) Int) ListLongMap!11709)

(assert (=> b!923977 (= lt!415372 (getCurrentListMap!3088 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!923978 () Bool)

(declare-fun e!518519 () Bool)

(assert (=> b!923978 (= e!518519 e!518517)))

(declare-fun res!622990 () Bool)

(assert (=> b!923978 (=> (not res!622990) (not e!518517))))

(declare-fun v!791 () V!31217)

(declare-fun lt!415373 () V!31217)

(assert (=> b!923978 (= res!622990 (and (= lt!415373 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun lt!415374 () ListLongMap!11709)

(declare-fun apply!673 (ListLongMap!11709 (_ BitVec 64)) V!31217)

(assert (=> b!923978 (= lt!415373 (apply!673 lt!415374 k0!1099))))

(declare-fun res!622992 () Bool)

(assert (=> start!78996 (=> (not res!622992) (not e!518514))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78996 (= res!622992 (validMask!0 mask!1881))))

(assert (=> start!78996 e!518514))

(assert (=> start!78996 true))

(declare-fun tp_is_empty!19689 () Bool)

(assert (=> start!78996 tp_is_empty!19689))

(declare-fun e!518511 () Bool)

(declare-fun array_inv!20730 (array!55366) Bool)

(assert (=> start!78996 (and (array_inv!20730 _values!1231) e!518511)))

(assert (=> start!78996 tp!59985))

(declare-fun array_inv!20731 (array!55364) Bool)

(assert (=> start!78996 (array_inv!20731 _keys!1487)))

(declare-fun b!923979 () Bool)

(declare-fun res!622988 () Bool)

(assert (=> b!923979 (=> (not res!622988) (not e!518514))))

(assert (=> b!923979 (= res!622988 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27083 _keys!1487))))))

(declare-fun b!923980 () Bool)

(declare-fun e!518518 () Unit!31195)

(assert (=> b!923980 (= e!518512 e!518518)))

(declare-fun lt!415371 () (_ BitVec 64))

(assert (=> b!923980 (= lt!415371 (select (arr!26623 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96291 () Bool)

(assert (=> b!923980 (= c!96291 (validKeyInArray!0 lt!415371))))

(declare-fun b!923981 () Bool)

(declare-fun e!518513 () Bool)

(assert (=> b!923981 (= e!518513 tp_is_empty!19689)))

(declare-fun mapNonEmpty!31290 () Bool)

(declare-fun mapRes!31290 () Bool)

(declare-fun tp!59984 () Bool)

(assert (=> mapNonEmpty!31290 (= mapRes!31290 (and tp!59984 e!518513))))

(declare-fun mapKey!31290 () (_ BitVec 32))

(declare-fun mapValue!31290 () ValueCell!9363)

(declare-fun mapRest!31290 () (Array (_ BitVec 32) ValueCell!9363))

(assert (=> mapNonEmpty!31290 (= (arr!26624 _values!1231) (store mapRest!31290 mapKey!31290 mapValue!31290))))

(declare-fun e!518516 () Bool)

(declare-fun b!923982 () Bool)

(declare-fun arrayContainsKey!0 (array!55364 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!923982 (= e!518516 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!923983 () Bool)

(declare-fun e!518509 () Bool)

(assert (=> b!923983 (= e!518511 (and e!518509 mapRes!31290))))

(declare-fun condMapEmpty!31290 () Bool)

(declare-fun mapDefault!31290 () ValueCell!9363)

(assert (=> b!923983 (= condMapEmpty!31290 (= (arr!26624 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9363)) mapDefault!31290)))))

(declare-fun b!923984 () Bool)

(declare-fun Unit!31197 () Unit!31195)

(assert (=> b!923984 (= e!518512 Unit!31197)))

(declare-fun mapIsEmpty!31290 () Bool)

(assert (=> mapIsEmpty!31290 mapRes!31290))

(declare-fun b!923985 () Bool)

(declare-fun Unit!31198 () Unit!31195)

(assert (=> b!923985 (= e!518518 Unit!31198)))

(declare-fun b!923986 () Bool)

(declare-fun lt!415365 () ListLongMap!11709)

(assert (=> b!923986 (= (apply!673 lt!415365 k0!1099) lt!415373)))

(declare-fun lt!415367 () V!31217)

(declare-fun lt!415376 () Unit!31195)

(declare-fun addApplyDifferent!365 (ListLongMap!11709 (_ BitVec 64) V!31217 (_ BitVec 64)) Unit!31195)

(assert (=> b!923986 (= lt!415376 (addApplyDifferent!365 lt!415374 lt!415371 lt!415367 k0!1099))))

(assert (=> b!923986 (not (= lt!415371 k0!1099))))

(declare-fun lt!415363 () Unit!31195)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55364 (_ BitVec 64) (_ BitVec 32) List!18834) Unit!31195)

(assert (=> b!923986 (= lt!415363 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18831))))

(assert (=> b!923986 e!518516))

(declare-fun c!96293 () Bool)

(assert (=> b!923986 (= c!96293 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!415369 () Unit!31195)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!225 (array!55364 array!55366 (_ BitVec 32) (_ BitVec 32) V!31217 V!31217 (_ BitVec 64) (_ BitVec 32) Int) Unit!31195)

(assert (=> b!923986 (= lt!415369 (lemmaListMapContainsThenArrayContainsFrom!225 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!923986 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18831)))

(declare-fun lt!415377 () Unit!31195)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55364 (_ BitVec 32) (_ BitVec 32)) Unit!31195)

(assert (=> b!923986 (= lt!415377 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!923986 (contains!4894 lt!415365 k0!1099)))

(declare-fun lt!415364 () tuple2!12998)

(declare-fun +!2679 (ListLongMap!11709 tuple2!12998) ListLongMap!11709)

(assert (=> b!923986 (= lt!415365 (+!2679 lt!415374 lt!415364))))

(declare-fun lt!415375 () Unit!31195)

(declare-fun addStillContains!441 (ListLongMap!11709 (_ BitVec 64) V!31217 (_ BitVec 64)) Unit!31195)

(assert (=> b!923986 (= lt!415375 (addStillContains!441 lt!415374 lt!415371 lt!415367 k0!1099))))

(assert (=> b!923986 (= (getCurrentListMap!3088 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2679 (getCurrentListMap!3088 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!415364))))

(assert (=> b!923986 (= lt!415364 (tuple2!12999 lt!415371 lt!415367))))

(declare-fun get!14018 (ValueCell!9363 V!31217) V!31217)

(declare-fun dynLambda!1518 (Int (_ BitVec 64)) V!31217)

(assert (=> b!923986 (= lt!415367 (get!14018 (select (arr!26624 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1518 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!415368 () Unit!31195)

(declare-fun lemmaListMapRecursiveValidKeyArray!114 (array!55364 array!55366 (_ BitVec 32) (_ BitVec 32) V!31217 V!31217 (_ BitVec 32) Int) Unit!31195)

(assert (=> b!923986 (= lt!415368 (lemmaListMapRecursiveValidKeyArray!114 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!923986 (= e!518518 lt!415376)))

(declare-fun b!923987 () Bool)

(declare-fun res!622987 () Bool)

(assert (=> b!923987 (=> (not res!622987) (not e!518514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55364 (_ BitVec 32)) Bool)

(assert (=> b!923987 (= res!622987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!923988 () Bool)

(assert (=> b!923988 (= e!518509 tp_is_empty!19689)))

(declare-fun b!923989 () Bool)

(assert (=> b!923989 (= e!518516 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!923990 () Bool)

(declare-fun res!622989 () Bool)

(assert (=> b!923990 (=> (not res!622989) (not e!518514))))

(assert (=> b!923990 (= res!622989 (and (= (size!27084 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27083 _keys!1487) (size!27084 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!923991 () Bool)

(assert (=> b!923991 (= e!518510 false)))

(declare-fun lt!415366 () V!31217)

(assert (=> b!923991 (= lt!415366 (apply!673 lt!415372 k0!1099))))

(declare-fun b!923992 () Bool)

(assert (=> b!923992 (= e!518514 e!518519)))

(declare-fun res!622991 () Bool)

(assert (=> b!923992 (=> (not res!622991) (not e!518519))))

(assert (=> b!923992 (= res!622991 (contains!4894 lt!415374 k0!1099))))

(assert (=> b!923992 (= lt!415374 (getCurrentListMap!3088 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(assert (= (and start!78996 res!622992) b!923990))

(assert (= (and b!923990 res!622989) b!923987))

(assert (= (and b!923987 res!622987) b!923975))

(assert (= (and b!923975 res!622986) b!923979))

(assert (= (and b!923979 res!622988) b!923992))

(assert (= (and b!923992 res!622991) b!923978))

(assert (= (and b!923978 res!622990) b!923976))

(assert (= (and b!923976 c!96292) b!923980))

(assert (= (and b!923976 (not c!96292)) b!923984))

(assert (= (and b!923980 c!96291) b!923986))

(assert (= (and b!923980 (not c!96291)) b!923985))

(assert (= (and b!923986 c!96293) b!923982))

(assert (= (and b!923986 (not c!96293)) b!923989))

(assert (= (and b!923976 res!622994) b!923977))

(assert (= (and b!923977 res!622993) b!923991))

(assert (= (and b!923983 condMapEmpty!31290) mapIsEmpty!31290))

(assert (= (and b!923983 (not condMapEmpty!31290)) mapNonEmpty!31290))

(get-info :version)

(assert (= (and mapNonEmpty!31290 ((_ is ValueCellFull!9363) mapValue!31290)) b!923981))

(assert (= (and b!923983 ((_ is ValueCellFull!9363) mapDefault!31290)) b!923988))

(assert (= start!78996 b!923983))

(declare-fun b_lambda!13713 () Bool)

(assert (=> (not b_lambda!13713) (not b!923986)))

(declare-fun t!26752 () Bool)

(declare-fun tb!5769 () Bool)

(assert (=> (and start!78996 (= defaultEntry!1235 defaultEntry!1235) t!26752) tb!5769))

(declare-fun result!11353 () Bool)

(assert (=> tb!5769 (= result!11353 tp_is_empty!19689)))

(assert (=> b!923986 t!26752))

(declare-fun b_and!28119 () Bool)

(assert (= b_and!28117 (and (=> t!26752 result!11353) b_and!28119)))

(declare-fun m!858357 () Bool)

(assert (=> b!923982 m!858357))

(declare-fun m!858359 () Bool)

(assert (=> mapNonEmpty!31290 m!858359))

(declare-fun m!858361 () Bool)

(assert (=> b!923987 m!858361))

(declare-fun m!858363 () Bool)

(assert (=> b!923980 m!858363))

(declare-fun m!858365 () Bool)

(assert (=> b!923980 m!858365))

(declare-fun m!858367 () Bool)

(assert (=> b!923992 m!858367))

(declare-fun m!858369 () Bool)

(assert (=> b!923992 m!858369))

(declare-fun m!858371 () Bool)

(assert (=> b!923986 m!858371))

(declare-fun m!858373 () Bool)

(assert (=> b!923986 m!858373))

(declare-fun m!858375 () Bool)

(assert (=> b!923986 m!858375))

(declare-fun m!858377 () Bool)

(assert (=> b!923986 m!858377))

(declare-fun m!858379 () Bool)

(assert (=> b!923986 m!858379))

(declare-fun m!858381 () Bool)

(assert (=> b!923986 m!858381))

(assert (=> b!923986 m!858379))

(declare-fun m!858383 () Bool)

(assert (=> b!923986 m!858383))

(declare-fun m!858385 () Bool)

(assert (=> b!923986 m!858385))

(declare-fun m!858387 () Bool)

(assert (=> b!923986 m!858387))

(declare-fun m!858389 () Bool)

(assert (=> b!923986 m!858389))

(assert (=> b!923986 m!858383))

(declare-fun m!858391 () Bool)

(assert (=> b!923986 m!858391))

(declare-fun m!858393 () Bool)

(assert (=> b!923986 m!858393))

(declare-fun m!858395 () Bool)

(assert (=> b!923986 m!858395))

(declare-fun m!858397 () Bool)

(assert (=> b!923986 m!858397))

(declare-fun m!858399 () Bool)

(assert (=> b!923986 m!858399))

(assert (=> b!923986 m!858371))

(declare-fun m!858401 () Bool)

(assert (=> b!923986 m!858401))

(declare-fun m!858403 () Bool)

(assert (=> b!923975 m!858403))

(declare-fun m!858405 () Bool)

(assert (=> b!923991 m!858405))

(declare-fun m!858407 () Bool)

(assert (=> b!923976 m!858407))

(declare-fun m!858409 () Bool)

(assert (=> b!923977 m!858409))

(assert (=> b!923977 m!858395))

(declare-fun m!858411 () Bool)

(assert (=> b!923978 m!858411))

(declare-fun m!858413 () Bool)

(assert (=> start!78996 m!858413))

(declare-fun m!858415 () Bool)

(assert (=> start!78996 m!858415))

(declare-fun m!858417 () Bool)

(assert (=> start!78996 m!858417))

(check-sat b_and!28119 (not b!923991) (not b!923976) (not mapNonEmpty!31290) (not b!923982) (not b!923987) (not b!923992) (not b!923978) (not b_lambda!13713) (not b_next!17181) (not b!923980) (not b!923977) (not b!923986) tp_is_empty!19689 (not b!923975) (not start!78996))
(check-sat b_and!28119 (not b_next!17181))
