; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79080 () Bool)

(assert start!79080)

(declare-fun b_free!17265 () Bool)

(declare-fun b_next!17265 () Bool)

(assert (=> start!79080 (= b_free!17265 (not b_next!17265))))

(declare-fun tp!60236 () Bool)

(declare-fun b_and!28285 () Bool)

(assert (=> start!79080 (= tp!60236 b_and!28285)))

(declare-fun b!926481 () Bool)

(declare-fun e!520103 () Bool)

(declare-fun e!520108 () Bool)

(assert (=> b!926481 (= e!520103 e!520108)))

(declare-fun res!624284 () Bool)

(assert (=> b!926481 (=> (not res!624284) (not e!520108))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55526 0))(
  ( (array!55527 (arr!26704 (Array (_ BitVec 32) (_ BitVec 64))) (size!27164 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55526)

(assert (=> b!926481 (= res!624284 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27164 _keys!1487)))))

(declare-datatypes ((Unit!31324 0))(
  ( (Unit!31325) )
))
(declare-fun lt!417341 () Unit!31324)

(declare-fun e!520107 () Unit!31324)

(assert (=> b!926481 (= lt!417341 e!520107)))

(declare-fun c!96669 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!926481 (= c!96669 (validKeyInArray!0 k0!1099))))

(declare-datatypes ((V!31329 0))(
  ( (V!31330 (val!9937 Int)) )
))
(declare-datatypes ((tuple2!13070 0))(
  ( (tuple2!13071 (_1!6545 (_ BitVec 64)) (_2!6545 V!31329)) )
))
(declare-datatypes ((List!18901 0))(
  ( (Nil!18898) (Cons!18897 (h!20043 tuple2!13070) (t!26904 List!18901)) )
))
(declare-datatypes ((ListLongMap!11781 0))(
  ( (ListLongMap!11782 (toList!5906 List!18901)) )
))
(declare-fun lt!417337 () ListLongMap!11781)

(declare-fun e!520105 () Bool)

(declare-fun v!791 () V!31329)

(declare-fun b!926482 () Bool)

(declare-fun apply!704 (ListLongMap!11781 (_ BitVec 64)) V!31329)

(assert (=> b!926482 (= e!520105 (= (apply!704 lt!417337 k0!1099) v!791))))

(declare-fun b!926483 () Bool)

(declare-fun e!520099 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!926483 (= e!520099 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!31416 () Bool)

(declare-fun mapRes!31416 () Bool)

(declare-fun tp!60237 () Bool)

(declare-fun e!520109 () Bool)

(assert (=> mapNonEmpty!31416 (= mapRes!31416 (and tp!60237 e!520109))))

(declare-datatypes ((ValueCell!9405 0))(
  ( (ValueCellFull!9405 (v!12455 V!31329)) (EmptyCell!9405) )
))
(declare-fun mapValue!31416 () ValueCell!9405)

(declare-fun mapKey!31416 () (_ BitVec 32))

(declare-datatypes ((array!55528 0))(
  ( (array!55529 (arr!26705 (Array (_ BitVec 32) ValueCell!9405)) (size!27165 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55528)

(declare-fun mapRest!31416 () (Array (_ BitVec 32) ValueCell!9405))

(assert (=> mapNonEmpty!31416 (= (arr!26705 _values!1231) (store mapRest!31416 mapKey!31416 mapValue!31416))))

(declare-fun b!926484 () Bool)

(declare-fun res!624282 () Bool)

(declare-fun e!520110 () Bool)

(assert (=> b!926484 (=> (not res!624282) (not e!520110))))

(declare-fun mask!1881 () (_ BitVec 32))

(assert (=> b!926484 (= res!624282 (and (= (size!27165 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27164 _keys!1487) (size!27165 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!926485 () Bool)

(declare-fun res!624278 () Bool)

(declare-fun e!520101 () Bool)

(assert (=> b!926485 (=> (not res!624278) (not e!520101))))

(declare-fun lt!417330 () ListLongMap!11781)

(assert (=> b!926485 (= res!624278 (= (apply!704 lt!417330 k0!1099) v!791))))

(declare-fun b!926486 () Bool)

(declare-fun e!520104 () Bool)

(declare-fun tp_is_empty!19773 () Bool)

(assert (=> b!926486 (= e!520104 tp_is_empty!19773)))

(declare-fun b!926487 () Bool)

(declare-fun e!520102 () Unit!31324)

(assert (=> b!926487 (= e!520107 e!520102)))

(declare-fun lt!417333 () (_ BitVec 64))

(assert (=> b!926487 (= lt!417333 (select (arr!26704 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96671 () Bool)

(assert (=> b!926487 (= c!96671 (validKeyInArray!0 lt!417333))))

(declare-fun mapIsEmpty!31416 () Bool)

(assert (=> mapIsEmpty!31416 mapRes!31416))

(declare-fun b!926488 () Bool)

(declare-fun res!624275 () Bool)

(assert (=> b!926488 (=> (not res!624275) (not e!520110))))

(assert (=> b!926488 (= res!624275 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27164 _keys!1487))))))

(declare-fun b!926489 () Bool)

(declare-fun Unit!31326 () Unit!31324)

(assert (=> b!926489 (= e!520102 Unit!31326)))

(declare-fun b!926490 () Bool)

(assert (=> b!926490 (= e!520101 (not (bvsle #b00000000000000000000000000000000 (size!27164 _keys!1487))))))

(assert (=> b!926490 e!520105))

(declare-fun res!624277 () Bool)

(assert (=> b!926490 (=> (not res!624277) (not e!520105))))

(declare-fun contains!4927 (ListLongMap!11781 (_ BitVec 64)) Bool)

(assert (=> b!926490 (= res!624277 (contains!4927 lt!417337 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31329)

(declare-fun minValue!1173 () V!31329)

(declare-fun getCurrentListMap!3121 (array!55526 array!55528 (_ BitVec 32) (_ BitVec 32) V!31329 V!31329 (_ BitVec 32) Int) ListLongMap!11781)

(assert (=> b!926490 (= lt!417337 (getCurrentListMap!3121 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!417343 () Unit!31324)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!86 (array!55526 array!55528 (_ BitVec 32) (_ BitVec 32) V!31329 V!31329 (_ BitVec 64) V!31329 (_ BitVec 32) Int) Unit!31324)

(assert (=> b!926490 (= lt!417343 (lemmaListMapApplyFromThenApplyFromZero!86 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!926491 () Bool)

(declare-fun e!520106 () Bool)

(assert (=> b!926491 (= e!520106 e!520103)))

(declare-fun res!624279 () Bool)

(assert (=> b!926491 (=> (not res!624279) (not e!520103))))

(declare-fun lt!417334 () V!31329)

(assert (=> b!926491 (= res!624279 (and (= lt!417334 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun lt!417344 () ListLongMap!11781)

(assert (=> b!926491 (= lt!417334 (apply!704 lt!417344 k0!1099))))

(declare-fun b!926492 () Bool)

(assert (=> b!926492 (= e!520108 e!520101)))

(declare-fun res!624274 () Bool)

(assert (=> b!926492 (=> (not res!624274) (not e!520101))))

(assert (=> b!926492 (= res!624274 (contains!4927 lt!417330 k0!1099))))

(assert (=> b!926492 (= lt!417330 (getCurrentListMap!3121 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!926493 () Bool)

(declare-fun lt!417332 () ListLongMap!11781)

(assert (=> b!926493 (= (apply!704 lt!417332 k0!1099) lt!417334)))

(declare-fun lt!417335 () V!31329)

(declare-fun lt!417331 () Unit!31324)

(declare-fun addApplyDifferent!388 (ListLongMap!11781 (_ BitVec 64) V!31329 (_ BitVec 64)) Unit!31324)

(assert (=> b!926493 (= lt!417331 (addApplyDifferent!388 lt!417344 lt!417333 lt!417335 k0!1099))))

(assert (=> b!926493 (not (= lt!417333 k0!1099))))

(declare-fun lt!417340 () Unit!31324)

(declare-datatypes ((List!18902 0))(
  ( (Nil!18899) (Cons!18898 (h!20044 (_ BitVec 64)) (t!26905 List!18902)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55526 (_ BitVec 64) (_ BitVec 32) List!18902) Unit!31324)

(assert (=> b!926493 (= lt!417340 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18899))))

(assert (=> b!926493 e!520099))

(declare-fun c!96670 () Bool)

(assert (=> b!926493 (= c!96670 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!417339 () Unit!31324)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!248 (array!55526 array!55528 (_ BitVec 32) (_ BitVec 32) V!31329 V!31329 (_ BitVec 64) (_ BitVec 32) Int) Unit!31324)

(assert (=> b!926493 (= lt!417339 (lemmaListMapContainsThenArrayContainsFrom!248 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55526 (_ BitVec 32) List!18902) Bool)

(assert (=> b!926493 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18899)))

(declare-fun lt!417342 () Unit!31324)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55526 (_ BitVec 32) (_ BitVec 32)) Unit!31324)

(assert (=> b!926493 (= lt!417342 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!926493 (contains!4927 lt!417332 k0!1099)))

(declare-fun lt!417338 () tuple2!13070)

(declare-fun +!2702 (ListLongMap!11781 tuple2!13070) ListLongMap!11781)

(assert (=> b!926493 (= lt!417332 (+!2702 lt!417344 lt!417338))))

(declare-fun lt!417345 () Unit!31324)

(declare-fun addStillContains!464 (ListLongMap!11781 (_ BitVec 64) V!31329 (_ BitVec 64)) Unit!31324)

(assert (=> b!926493 (= lt!417345 (addStillContains!464 lt!417344 lt!417333 lt!417335 k0!1099))))

(assert (=> b!926493 (= (getCurrentListMap!3121 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2702 (getCurrentListMap!3121 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!417338))))

(assert (=> b!926493 (= lt!417338 (tuple2!13071 lt!417333 lt!417335))))

(declare-fun get!14069 (ValueCell!9405 V!31329) V!31329)

(declare-fun dynLambda!1541 (Int (_ BitVec 64)) V!31329)

(assert (=> b!926493 (= lt!417335 (get!14069 (select (arr!26705 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1541 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!417336 () Unit!31324)

(declare-fun lemmaListMapRecursiveValidKeyArray!137 (array!55526 array!55528 (_ BitVec 32) (_ BitVec 32) V!31329 V!31329 (_ BitVec 32) Int) Unit!31324)

(assert (=> b!926493 (= lt!417336 (lemmaListMapRecursiveValidKeyArray!137 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!926493 (= e!520102 lt!417331)))

(declare-fun b!926494 () Bool)

(assert (=> b!926494 (= e!520110 e!520106)))

(declare-fun res!624280 () Bool)

(assert (=> b!926494 (=> (not res!624280) (not e!520106))))

(assert (=> b!926494 (= res!624280 (contains!4927 lt!417344 k0!1099))))

(assert (=> b!926494 (= lt!417344 (getCurrentListMap!3121 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!926495 () Bool)

(declare-fun res!624276 () Bool)

(assert (=> b!926495 (=> (not res!624276) (not e!520110))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55526 (_ BitVec 32)) Bool)

(assert (=> b!926495 (= res!624276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!926496 () Bool)

(declare-fun e!520098 () Bool)

(assert (=> b!926496 (= e!520098 (and e!520104 mapRes!31416))))

(declare-fun condMapEmpty!31416 () Bool)

(declare-fun mapDefault!31416 () ValueCell!9405)

(assert (=> b!926496 (= condMapEmpty!31416 (= (arr!26705 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9405)) mapDefault!31416)))))

(declare-fun res!624281 () Bool)

(assert (=> start!79080 (=> (not res!624281) (not e!520110))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79080 (= res!624281 (validMask!0 mask!1881))))

(assert (=> start!79080 e!520110))

(assert (=> start!79080 true))

(assert (=> start!79080 tp_is_empty!19773))

(declare-fun array_inv!20786 (array!55528) Bool)

(assert (=> start!79080 (and (array_inv!20786 _values!1231) e!520098)))

(assert (=> start!79080 tp!60236))

(declare-fun array_inv!20787 (array!55526) Bool)

(assert (=> start!79080 (array_inv!20787 _keys!1487)))

(declare-fun b!926497 () Bool)

(declare-fun arrayContainsKey!0 (array!55526 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!926497 (= e!520099 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!926498 () Bool)

(declare-fun res!624283 () Bool)

(assert (=> b!926498 (=> (not res!624283) (not e!520110))))

(assert (=> b!926498 (= res!624283 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18899))))

(declare-fun b!926499 () Bool)

(declare-fun Unit!31327 () Unit!31324)

(assert (=> b!926499 (= e!520107 Unit!31327)))

(declare-fun b!926500 () Bool)

(assert (=> b!926500 (= e!520109 tp_is_empty!19773)))

(assert (= (and start!79080 res!624281) b!926484))

(assert (= (and b!926484 res!624282) b!926495))

(assert (= (and b!926495 res!624276) b!926498))

(assert (= (and b!926498 res!624283) b!926488))

(assert (= (and b!926488 res!624275) b!926494))

(assert (= (and b!926494 res!624280) b!926491))

(assert (= (and b!926491 res!624279) b!926481))

(assert (= (and b!926481 c!96669) b!926487))

(assert (= (and b!926481 (not c!96669)) b!926499))

(assert (= (and b!926487 c!96671) b!926493))

(assert (= (and b!926487 (not c!96671)) b!926489))

(assert (= (and b!926493 c!96670) b!926497))

(assert (= (and b!926493 (not c!96670)) b!926483))

(assert (= (and b!926481 res!624284) b!926492))

(assert (= (and b!926492 res!624274) b!926485))

(assert (= (and b!926485 res!624278) b!926490))

(assert (= (and b!926490 res!624277) b!926482))

(assert (= (and b!926496 condMapEmpty!31416) mapIsEmpty!31416))

(assert (= (and b!926496 (not condMapEmpty!31416)) mapNonEmpty!31416))

(get-info :version)

(assert (= (and mapNonEmpty!31416 ((_ is ValueCellFull!9405) mapValue!31416)) b!926500))

(assert (= (and b!926496 ((_ is ValueCellFull!9405) mapDefault!31416)) b!926486))

(assert (= start!79080 b!926496))

(declare-fun b_lambda!13797 () Bool)

(assert (=> (not b_lambda!13797) (not b!926493)))

(declare-fun t!26903 () Bool)

(declare-fun tb!5853 () Bool)

(assert (=> (and start!79080 (= defaultEntry!1235 defaultEntry!1235) t!26903) tb!5853))

(declare-fun result!11521 () Bool)

(assert (=> tb!5853 (= result!11521 tp_is_empty!19773)))

(assert (=> b!926493 t!26903))

(declare-fun b_and!28287 () Bool)

(assert (= b_and!28285 (and (=> t!26903 result!11521) b_and!28287)))

(declare-fun m!861161 () Bool)

(assert (=> b!926494 m!861161))

(declare-fun m!861163 () Bool)

(assert (=> b!926494 m!861163))

(declare-fun m!861165 () Bool)

(assert (=> b!926498 m!861165))

(declare-fun m!861167 () Bool)

(assert (=> b!926492 m!861167))

(declare-fun m!861169 () Bool)

(assert (=> b!926492 m!861169))

(declare-fun m!861171 () Bool)

(assert (=> b!926485 m!861171))

(declare-fun m!861173 () Bool)

(assert (=> b!926491 m!861173))

(declare-fun m!861175 () Bool)

(assert (=> b!926490 m!861175))

(declare-fun m!861177 () Bool)

(assert (=> b!926490 m!861177))

(declare-fun m!861179 () Bool)

(assert (=> b!926490 m!861179))

(declare-fun m!861181 () Bool)

(assert (=> mapNonEmpty!31416 m!861181))

(declare-fun m!861183 () Bool)

(assert (=> b!926495 m!861183))

(declare-fun m!861185 () Bool)

(assert (=> b!926481 m!861185))

(declare-fun m!861187 () Bool)

(assert (=> b!926493 m!861187))

(declare-fun m!861189 () Bool)

(assert (=> b!926493 m!861189))

(declare-fun m!861191 () Bool)

(assert (=> b!926493 m!861191))

(assert (=> b!926493 m!861169))

(declare-fun m!861193 () Bool)

(assert (=> b!926493 m!861193))

(declare-fun m!861195 () Bool)

(assert (=> b!926493 m!861195))

(declare-fun m!861197 () Bool)

(assert (=> b!926493 m!861197))

(declare-fun m!861199 () Bool)

(assert (=> b!926493 m!861199))

(declare-fun m!861201 () Bool)

(assert (=> b!926493 m!861201))

(declare-fun m!861203 () Bool)

(assert (=> b!926493 m!861203))

(declare-fun m!861205 () Bool)

(assert (=> b!926493 m!861205))

(declare-fun m!861207 () Bool)

(assert (=> b!926493 m!861207))

(declare-fun m!861209 () Bool)

(assert (=> b!926493 m!861209))

(assert (=> b!926493 m!861209))

(assert (=> b!926493 m!861189))

(declare-fun m!861211 () Bool)

(assert (=> b!926493 m!861211))

(declare-fun m!861213 () Bool)

(assert (=> b!926493 m!861213))

(assert (=> b!926493 m!861205))

(declare-fun m!861215 () Bool)

(assert (=> b!926493 m!861215))

(declare-fun m!861217 () Bool)

(assert (=> start!79080 m!861217))

(declare-fun m!861219 () Bool)

(assert (=> start!79080 m!861219))

(declare-fun m!861221 () Bool)

(assert (=> start!79080 m!861221))

(declare-fun m!861223 () Bool)

(assert (=> b!926497 m!861223))

(declare-fun m!861225 () Bool)

(assert (=> b!926482 m!861225))

(declare-fun m!861227 () Bool)

(assert (=> b!926487 m!861227))

(declare-fun m!861229 () Bool)

(assert (=> b!926487 m!861229))

(check-sat (not b_lambda!13797) (not b!926482) (not start!79080) (not b!926490) (not b!926481) (not b!926491) (not b_next!17265) b_and!28287 (not b!926495) (not b!926493) (not b!926494) (not mapNonEmpty!31416) (not b!926498) (not b!926497) (not b!926492) tp_is_empty!19773 (not b!926485) (not b!926487))
(check-sat b_and!28287 (not b_next!17265))
