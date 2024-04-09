; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79040 () Bool)

(assert start!79040)

(declare-fun b_free!17225 () Bool)

(declare-fun b_next!17225 () Bool)

(assert (=> start!79040 (= b_free!17225 (not b_next!17225))))

(declare-fun tp!60116 () Bool)

(declare-fun b_and!28205 () Bool)

(assert (=> start!79040 (= tp!60116 b_and!28205)))

(declare-fun b!925241 () Bool)

(declare-fun res!623620 () Bool)

(declare-fun e!519318 () Bool)

(assert (=> b!925241 (=> (not res!623620) (not e!519318))))

(declare-datatypes ((array!55448 0))(
  ( (array!55449 (arr!26665 (Array (_ BitVec 32) (_ BitVec 64))) (size!27125 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55448)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31275 0))(
  ( (V!31276 (val!9917 Int)) )
))
(declare-datatypes ((ValueCell!9385 0))(
  ( (ValueCellFull!9385 (v!12435 V!31275)) (EmptyCell!9385) )
))
(declare-datatypes ((array!55450 0))(
  ( (array!55451 (arr!26666 (Array (_ BitVec 32) ValueCell!9385)) (size!27126 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55450)

(declare-fun mask!1881 () (_ BitVec 32))

(assert (=> b!925241 (= res!623620 (and (= (size!27126 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27125 _keys!1487) (size!27126 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun b!925242 () Bool)

(declare-fun e!519320 () Bool)

(declare-fun v!791 () V!31275)

(declare-datatypes ((tuple2!13036 0))(
  ( (tuple2!13037 (_1!6528 (_ BitVec 64)) (_2!6528 V!31275)) )
))
(declare-datatypes ((List!18871 0))(
  ( (Nil!18868) (Cons!18867 (h!20013 tuple2!13036) (t!26834 List!18871)) )
))
(declare-datatypes ((ListLongMap!11747 0))(
  ( (ListLongMap!11748 (toList!5889 List!18871)) )
))
(declare-fun lt!416370 () ListLongMap!11747)

(declare-fun apply!690 (ListLongMap!11747 (_ BitVec 64)) V!31275)

(assert (=> b!925242 (= e!519320 (= (apply!690 lt!416370 k!1099) v!791))))

(declare-fun b!925243 () Bool)

(declare-fun res!623623 () Bool)

(assert (=> b!925243 (=> (not res!623623) (not e!519318))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!925243 (= res!623623 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27125 _keys!1487))))))

(declare-fun res!623624 () Bool)

(assert (=> start!79040 (=> (not res!623624) (not e!519318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79040 (= res!623624 (validMask!0 mask!1881))))

(assert (=> start!79040 e!519318))

(assert (=> start!79040 true))

(declare-fun tp_is_empty!19733 () Bool)

(assert (=> start!79040 tp_is_empty!19733))

(declare-fun e!519323 () Bool)

(declare-fun array_inv!20762 (array!55450) Bool)

(assert (=> start!79040 (and (array_inv!20762 _values!1231) e!519323)))

(assert (=> start!79040 tp!60116))

(declare-fun array_inv!20763 (array!55448) Bool)

(assert (=> start!79040 (array_inv!20763 _keys!1487)))

(declare-fun b!925244 () Bool)

(declare-fun lt!416384 () ListLongMap!11747)

(declare-fun lt!416374 () V!31275)

(assert (=> b!925244 (= (apply!690 lt!416384 k!1099) lt!416374)))

(declare-fun lt!416383 () ListLongMap!11747)

(declare-fun lt!416385 () (_ BitVec 64))

(declare-fun lt!416373 () V!31275)

(declare-datatypes ((Unit!31265 0))(
  ( (Unit!31266) )
))
(declare-fun lt!416372 () Unit!31265)

(declare-fun addApplyDifferent!378 (ListLongMap!11747 (_ BitVec 64) V!31275 (_ BitVec 64)) Unit!31265)

(assert (=> b!925244 (= lt!416372 (addApplyDifferent!378 lt!416383 lt!416385 lt!416373 k!1099))))

(assert (=> b!925244 (not (= lt!416385 k!1099))))

(declare-fun lt!416376 () Unit!31265)

(declare-datatypes ((List!18872 0))(
  ( (Nil!18869) (Cons!18868 (h!20014 (_ BitVec 64)) (t!26835 List!18872)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55448 (_ BitVec 64) (_ BitVec 32) List!18872) Unit!31265)

(assert (=> b!925244 (= lt!416376 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18869))))

(declare-fun e!519330 () Bool)

(assert (=> b!925244 e!519330))

(declare-fun c!96489 () Bool)

(assert (=> b!925244 (= c!96489 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun zeroValue!1173 () V!31275)

(declare-fun minValue!1173 () V!31275)

(declare-fun lt!416380 () Unit!31265)

(declare-fun defaultEntry!1235 () Int)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!238 (array!55448 array!55450 (_ BitVec 32) (_ BitVec 32) V!31275 V!31275 (_ BitVec 64) (_ BitVec 32) Int) Unit!31265)

(assert (=> b!925244 (= lt!416380 (lemmaListMapContainsThenArrayContainsFrom!238 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55448 (_ BitVec 32) List!18872) Bool)

(assert (=> b!925244 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18869)))

(declare-fun lt!416381 () Unit!31265)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55448 (_ BitVec 32) (_ BitVec 32)) Unit!31265)

(assert (=> b!925244 (= lt!416381 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4913 (ListLongMap!11747 (_ BitVec 64)) Bool)

(assert (=> b!925244 (contains!4913 lt!416384 k!1099)))

(declare-fun lt!416371 () tuple2!13036)

(declare-fun +!2692 (ListLongMap!11747 tuple2!13036) ListLongMap!11747)

(assert (=> b!925244 (= lt!416384 (+!2692 lt!416383 lt!416371))))

(declare-fun lt!416378 () Unit!31265)

(declare-fun addStillContains!454 (ListLongMap!11747 (_ BitVec 64) V!31275 (_ BitVec 64)) Unit!31265)

(assert (=> b!925244 (= lt!416378 (addStillContains!454 lt!416383 lt!416385 lt!416373 k!1099))))

(declare-fun getCurrentListMap!3107 (array!55448 array!55450 (_ BitVec 32) (_ BitVec 32) V!31275 V!31275 (_ BitVec 32) Int) ListLongMap!11747)

(assert (=> b!925244 (= (getCurrentListMap!3107 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2692 (getCurrentListMap!3107 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!416371))))

(assert (=> b!925244 (= lt!416371 (tuple2!13037 lt!416385 lt!416373))))

(declare-fun get!14045 (ValueCell!9385 V!31275) V!31275)

(declare-fun dynLambda!1531 (Int (_ BitVec 64)) V!31275)

(assert (=> b!925244 (= lt!416373 (get!14045 (select (arr!26666 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1531 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!416377 () Unit!31265)

(declare-fun lemmaListMapRecursiveValidKeyArray!127 (array!55448 array!55450 (_ BitVec 32) (_ BitVec 32) V!31275 V!31275 (_ BitVec 32) Int) Unit!31265)

(assert (=> b!925244 (= lt!416377 (lemmaListMapRecursiveValidKeyArray!127 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!519322 () Unit!31265)

(assert (=> b!925244 (= e!519322 lt!416372)))

(declare-fun b!925245 () Bool)

(declare-fun e!519328 () Bool)

(assert (=> b!925245 (= e!519328 tp_is_empty!19733)))

(declare-fun b!925246 () Bool)

(declare-fun e!519326 () Bool)

(declare-fun e!519325 () Bool)

(assert (=> b!925246 (= e!519326 e!519325)))

(declare-fun res!623614 () Bool)

(assert (=> b!925246 (=> (not res!623614) (not e!519325))))

(declare-fun lt!416375 () ListLongMap!11747)

(assert (=> b!925246 (= res!623614 (contains!4913 lt!416375 k!1099))))

(assert (=> b!925246 (= lt!416375 (getCurrentListMap!3107 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!925247 () Bool)

(declare-fun e!519324 () Bool)

(assert (=> b!925247 (= e!519324 tp_is_empty!19733)))

(declare-fun b!925248 () Bool)

(declare-fun e!519327 () Unit!31265)

(assert (=> b!925248 (= e!519327 e!519322)))

(assert (=> b!925248 (= lt!416385 (select (arr!26665 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96490 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!925248 (= c!96490 (validKeyInArray!0 lt!416385))))

(declare-fun b!925249 () Bool)

(declare-fun res!623617 () Bool)

(assert (=> b!925249 (=> (not res!623617) (not e!519325))))

(assert (=> b!925249 (= res!623617 (= (apply!690 lt!416375 k!1099) v!791))))

(declare-fun b!925250 () Bool)

(declare-fun e!519329 () Bool)

(declare-fun e!519321 () Bool)

(assert (=> b!925250 (= e!519329 e!519321)))

(declare-fun res!623619 () Bool)

(assert (=> b!925250 (=> (not res!623619) (not e!519321))))

(assert (=> b!925250 (= res!623619 (and (= lt!416374 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!925250 (= lt!416374 (apply!690 lt!416383 k!1099))))

(declare-fun b!925251 () Bool)

(declare-fun Unit!31267 () Unit!31265)

(assert (=> b!925251 (= e!519322 Unit!31267)))

(declare-fun b!925252 () Bool)

(declare-fun Unit!31268 () Unit!31265)

(assert (=> b!925252 (= e!519327 Unit!31268)))

(declare-fun mapIsEmpty!31356 () Bool)

(declare-fun mapRes!31356 () Bool)

(assert (=> mapIsEmpty!31356 mapRes!31356))

(declare-fun b!925253 () Bool)

(declare-fun res!623621 () Bool)

(assert (=> b!925253 (=> (not res!623621) (not e!519318))))

(assert (=> b!925253 (= res!623621 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18869))))

(declare-fun b!925254 () Bool)

(assert (=> b!925254 (= e!519321 e!519326)))

(declare-fun res!623616 () Bool)

(assert (=> b!925254 (=> (not res!623616) (not e!519326))))

(assert (=> b!925254 (= res!623616 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27125 _keys!1487)))))

(declare-fun lt!416382 () Unit!31265)

(assert (=> b!925254 (= lt!416382 e!519327)))

(declare-fun c!96491 () Bool)

(assert (=> b!925254 (= c!96491 (validKeyInArray!0 k!1099))))

(declare-fun b!925255 () Bool)

(assert (=> b!925255 (= e!519325 (not true))))

(assert (=> b!925255 e!519320))

(declare-fun res!623622 () Bool)

(assert (=> b!925255 (=> (not res!623622) (not e!519320))))

(assert (=> b!925255 (= res!623622 (contains!4913 lt!416370 k!1099))))

(assert (=> b!925255 (= lt!416370 (getCurrentListMap!3107 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!416379 () Unit!31265)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!73 (array!55448 array!55450 (_ BitVec 32) (_ BitVec 32) V!31275 V!31275 (_ BitVec 64) V!31275 (_ BitVec 32) Int) Unit!31265)

(assert (=> b!925255 (= lt!416379 (lemmaListMapApplyFromThenApplyFromZero!73 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapNonEmpty!31356 () Bool)

(declare-fun tp!60117 () Bool)

(assert (=> mapNonEmpty!31356 (= mapRes!31356 (and tp!60117 e!519324))))

(declare-fun mapValue!31356 () ValueCell!9385)

(declare-fun mapKey!31356 () (_ BitVec 32))

(declare-fun mapRest!31356 () (Array (_ BitVec 32) ValueCell!9385))

(assert (=> mapNonEmpty!31356 (= (arr!26666 _values!1231) (store mapRest!31356 mapKey!31356 mapValue!31356))))

(declare-fun b!925256 () Bool)

(declare-fun res!623618 () Bool)

(assert (=> b!925256 (=> (not res!623618) (not e!519318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55448 (_ BitVec 32)) Bool)

(assert (=> b!925256 (= res!623618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!925257 () Bool)

(declare-fun arrayContainsKey!0 (array!55448 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!925257 (= e!519330 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!925258 () Bool)

(assert (=> b!925258 (= e!519318 e!519329)))

(declare-fun res!623615 () Bool)

(assert (=> b!925258 (=> (not res!623615) (not e!519329))))

(assert (=> b!925258 (= res!623615 (contains!4913 lt!416383 k!1099))))

(assert (=> b!925258 (= lt!416383 (getCurrentListMap!3107 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!925259 () Bool)

(assert (=> b!925259 (= e!519330 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!925260 () Bool)

(assert (=> b!925260 (= e!519323 (and e!519328 mapRes!31356))))

(declare-fun condMapEmpty!31356 () Bool)

(declare-fun mapDefault!31356 () ValueCell!9385)

