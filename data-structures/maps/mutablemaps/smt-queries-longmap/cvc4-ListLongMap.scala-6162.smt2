; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79112 () Bool)

(assert start!79112)

(declare-fun b_free!17297 () Bool)

(declare-fun b_next!17297 () Bool)

(assert (=> start!79112 (= b_free!17297 (not b_next!17297))))

(declare-fun tp!60333 () Bool)

(declare-fun b_and!28349 () Bool)

(assert (=> start!79112 (= tp!60333 b_and!28349)))

(declare-fun b!927473 () Bool)

(declare-fun e!520729 () Bool)

(declare-fun tp_is_empty!19805 () Bool)

(assert (=> b!927473 (= e!520729 tp_is_empty!19805)))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun e!520731 () Bool)

(declare-datatypes ((V!31371 0))(
  ( (V!31372 (val!9953 Int)) )
))
(declare-fun v!791 () V!31371)

(declare-datatypes ((tuple2!13102 0))(
  ( (tuple2!13103 (_1!6561 (_ BitVec 64)) (_2!6561 V!31371)) )
))
(declare-datatypes ((List!18928 0))(
  ( (Nil!18925) (Cons!18924 (h!20070 tuple2!13102) (t!26963 List!18928)) )
))
(declare-datatypes ((ListLongMap!11813 0))(
  ( (ListLongMap!11814 (toList!5922 List!18928)) )
))
(declare-fun lt!418099 () ListLongMap!11813)

(declare-fun b!927474 () Bool)

(declare-fun apply!718 (ListLongMap!11813 (_ BitVec 64)) V!31371)

(assert (=> b!927474 (= e!520731 (= (apply!718 lt!418099 k!1099) v!791))))

(declare-fun b!927475 () Bool)

(declare-fun lt!418108 () ListLongMap!11813)

(declare-fun lt!418110 () V!31371)

(assert (=> b!927475 (= (apply!718 lt!418108 k!1099) lt!418110)))

(declare-fun lt!418109 () V!31371)

(declare-datatypes ((Unit!31376 0))(
  ( (Unit!31377) )
))
(declare-fun lt!418102 () Unit!31376)

(declare-fun lt!418100 () ListLongMap!11813)

(declare-fun lt!418104 () (_ BitVec 64))

(declare-fun addApplyDifferent!398 (ListLongMap!11813 (_ BitVec 64) V!31371 (_ BitVec 64)) Unit!31376)

(assert (=> b!927475 (= lt!418102 (addApplyDifferent!398 lt!418100 lt!418104 lt!418109 k!1099))))

(assert (=> b!927475 (not (= lt!418104 k!1099))))

(declare-fun lt!418112 () Unit!31376)

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55588 0))(
  ( (array!55589 (arr!26735 (Array (_ BitVec 32) (_ BitVec 64))) (size!27195 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55588)

(declare-datatypes ((List!18929 0))(
  ( (Nil!18926) (Cons!18925 (h!20071 (_ BitVec 64)) (t!26964 List!18929)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55588 (_ BitVec 64) (_ BitVec 32) List!18929) Unit!31376)

(assert (=> b!927475 (= lt!418112 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18926))))

(declare-fun e!520732 () Bool)

(assert (=> b!927475 e!520732))

(declare-fun c!96815 () Bool)

(assert (=> b!927475 (= c!96815 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun lt!418106 () Unit!31376)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9421 0))(
  ( (ValueCellFull!9421 (v!12471 V!31371)) (EmptyCell!9421) )
))
(declare-datatypes ((array!55590 0))(
  ( (array!55591 (arr!26736 (Array (_ BitVec 32) ValueCell!9421)) (size!27196 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55590)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31371)

(declare-fun minValue!1173 () V!31371)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!258 (array!55588 array!55590 (_ BitVec 32) (_ BitVec 32) V!31371 V!31371 (_ BitVec 64) (_ BitVec 32) Int) Unit!31376)

(assert (=> b!927475 (= lt!418106 (lemmaListMapContainsThenArrayContainsFrom!258 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55588 (_ BitVec 32) List!18929) Bool)

(assert (=> b!927475 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18926)))

(declare-fun lt!418107 () Unit!31376)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55588 (_ BitVec 32) (_ BitVec 32)) Unit!31376)

(assert (=> b!927475 (= lt!418107 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4941 (ListLongMap!11813 (_ BitVec 64)) Bool)

(assert (=> b!927475 (contains!4941 lt!418108 k!1099)))

(declare-fun lt!418113 () tuple2!13102)

(declare-fun +!2712 (ListLongMap!11813 tuple2!13102) ListLongMap!11813)

(assert (=> b!927475 (= lt!418108 (+!2712 lt!418100 lt!418113))))

(declare-fun lt!418101 () Unit!31376)

(declare-fun addStillContains!474 (ListLongMap!11813 (_ BitVec 64) V!31371 (_ BitVec 64)) Unit!31376)

(assert (=> b!927475 (= lt!418101 (addStillContains!474 lt!418100 lt!418104 lt!418109 k!1099))))

(declare-fun getCurrentListMap!3135 (array!55588 array!55590 (_ BitVec 32) (_ BitVec 32) V!31371 V!31371 (_ BitVec 32) Int) ListLongMap!11813)

(assert (=> b!927475 (= (getCurrentListMap!3135 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2712 (getCurrentListMap!3135 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!418113))))

(assert (=> b!927475 (= lt!418113 (tuple2!13103 lt!418104 lt!418109))))

(declare-fun get!14089 (ValueCell!9421 V!31371) V!31371)

(declare-fun dynLambda!1551 (Int (_ BitVec 64)) V!31371)

(assert (=> b!927475 (= lt!418109 (get!14089 (select (arr!26736 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1551 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!418111 () Unit!31376)

(declare-fun lemmaListMapRecursiveValidKeyArray!147 (array!55588 array!55590 (_ BitVec 32) (_ BitVec 32) V!31371 V!31371 (_ BitVec 32) Int) Unit!31376)

(assert (=> b!927475 (= lt!418111 (lemmaListMapRecursiveValidKeyArray!147 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!520724 () Unit!31376)

(assert (=> b!927475 (= e!520724 lt!418102)))

(declare-fun b!927476 () Bool)

(declare-fun res!624804 () Bool)

(declare-fun e!520727 () Bool)

(assert (=> b!927476 (=> (not res!624804) (not e!520727))))

(assert (=> b!927476 (= res!624804 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18926))))

(declare-fun mapIsEmpty!31464 () Bool)

(declare-fun mapRes!31464 () Bool)

(assert (=> mapIsEmpty!31464 mapRes!31464))

(declare-fun b!927477 () Bool)

(declare-fun e!520726 () Bool)

(assert (=> b!927477 (= e!520726 (not true))))

(assert (=> b!927477 e!520731))

(declare-fun res!624808 () Bool)

(assert (=> b!927477 (=> (not res!624808) (not e!520731))))

(assert (=> b!927477 (= res!624808 (contains!4941 lt!418099 k!1099))))

(assert (=> b!927477 (= lt!418099 (getCurrentListMap!3135 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!418105 () Unit!31376)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!99 (array!55588 array!55590 (_ BitVec 32) (_ BitVec 32) V!31371 V!31371 (_ BitVec 64) V!31371 (_ BitVec 32) Int) Unit!31376)

(assert (=> b!927477 (= lt!418105 (lemmaListMapApplyFromThenApplyFromZero!99 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927478 () Bool)

(declare-fun res!624807 () Bool)

(assert (=> b!927478 (=> (not res!624807) (not e!520727))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55588 (_ BitVec 32)) Bool)

(assert (=> b!927478 (= res!624807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!927479 () Bool)

(declare-fun res!624805 () Bool)

(assert (=> b!927479 (=> (not res!624805) (not e!520727))))

(assert (=> b!927479 (= res!624805 (and (= (size!27196 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27195 _keys!1487) (size!27196 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!624810 () Bool)

(assert (=> start!79112 (=> (not res!624810) (not e!520727))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79112 (= res!624810 (validMask!0 mask!1881))))

(assert (=> start!79112 e!520727))

(assert (=> start!79112 true))

(assert (=> start!79112 tp_is_empty!19805))

(declare-fun e!520725 () Bool)

(declare-fun array_inv!20806 (array!55590) Bool)

(assert (=> start!79112 (and (array_inv!20806 _values!1231) e!520725)))

(assert (=> start!79112 tp!60333))

(declare-fun array_inv!20807 (array!55588) Bool)

(assert (=> start!79112 (array_inv!20807 _keys!1487)))

(declare-fun b!927480 () Bool)

(declare-fun arrayContainsKey!0 (array!55588 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!927480 (= e!520732 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!927481 () Bool)

(declare-fun e!520733 () Bool)

(assert (=> b!927481 (= e!520733 tp_is_empty!19805)))

(declare-fun b!927482 () Bool)

(declare-fun e!520730 () Unit!31376)

(declare-fun Unit!31378 () Unit!31376)

(assert (=> b!927482 (= e!520730 Unit!31378)))

(declare-fun b!927483 () Bool)

(declare-fun e!520734 () Bool)

(assert (=> b!927483 (= e!520727 e!520734)))

(declare-fun res!624806 () Bool)

(assert (=> b!927483 (=> (not res!624806) (not e!520734))))

(assert (=> b!927483 (= res!624806 (contains!4941 lt!418100 k!1099))))

(assert (=> b!927483 (= lt!418100 (getCurrentListMap!3135 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!927484 () Bool)

(assert (=> b!927484 (= e!520725 (and e!520729 mapRes!31464))))

(declare-fun condMapEmpty!31464 () Bool)

(declare-fun mapDefault!31464 () ValueCell!9421)

