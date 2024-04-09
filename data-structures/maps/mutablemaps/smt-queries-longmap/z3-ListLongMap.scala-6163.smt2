; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79116 () Bool)

(assert start!79116)

(declare-fun b_free!17301 () Bool)

(declare-fun b_next!17301 () Bool)

(assert (=> start!79116 (= b_free!17301 (not b_next!17301))))

(declare-fun tp!60344 () Bool)

(declare-fun b_and!28357 () Bool)

(assert (=> start!79116 (= tp!60344 b_and!28357)))

(declare-fun b!927597 () Bool)

(declare-datatypes ((V!31377 0))(
  ( (V!31378 (val!9955 Int)) )
))
(declare-datatypes ((tuple2!13106 0))(
  ( (tuple2!13107 (_1!6563 (_ BitVec 64)) (_2!6563 V!31377)) )
))
(declare-datatypes ((List!18932 0))(
  ( (Nil!18929) (Cons!18928 (h!20074 tuple2!13106) (t!26971 List!18932)) )
))
(declare-datatypes ((ListLongMap!11817 0))(
  ( (ListLongMap!11818 (toList!5924 List!18932)) )
))
(declare-fun lt!418199 () ListLongMap!11817)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun lt!418205 () V!31377)

(declare-fun apply!720 (ListLongMap!11817 (_ BitVec 64)) V!31377)

(assert (=> b!927597 (= (apply!720 lt!418199 k0!1099) lt!418205)))

(declare-fun lt!418203 () ListLongMap!11817)

(declare-datatypes ((Unit!31381 0))(
  ( (Unit!31382) )
))
(declare-fun lt!418197 () Unit!31381)

(declare-fun lt!418209 () (_ BitVec 64))

(declare-fun lt!418204 () V!31377)

(declare-fun addApplyDifferent!400 (ListLongMap!11817 (_ BitVec 64) V!31377 (_ BitVec 64)) Unit!31381)

(assert (=> b!927597 (= lt!418197 (addApplyDifferent!400 lt!418203 lt!418209 lt!418204 k0!1099))))

(assert (=> b!927597 (not (= lt!418209 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!418194 () Unit!31381)

(declare-datatypes ((array!55596 0))(
  ( (array!55597 (arr!26739 (Array (_ BitVec 32) (_ BitVec 64))) (size!27199 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55596)

(declare-datatypes ((List!18933 0))(
  ( (Nil!18930) (Cons!18929 (h!20075 (_ BitVec 64)) (t!26972 List!18933)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55596 (_ BitVec 64) (_ BitVec 32) List!18933) Unit!31381)

(assert (=> b!927597 (= lt!418194 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18930))))

(declare-fun e!520802 () Bool)

(assert (=> b!927597 e!520802))

(declare-fun c!96831 () Bool)

(assert (=> b!927597 (= c!96831 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!418207 () Unit!31381)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9423 0))(
  ( (ValueCellFull!9423 (v!12473 V!31377)) (EmptyCell!9423) )
))
(declare-datatypes ((array!55598 0))(
  ( (array!55599 (arr!26740 (Array (_ BitVec 32) ValueCell!9423)) (size!27200 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55598)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31377)

(declare-fun minValue!1173 () V!31377)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!260 (array!55596 array!55598 (_ BitVec 32) (_ BitVec 32) V!31377 V!31377 (_ BitVec 64) (_ BitVec 32) Int) Unit!31381)

(assert (=> b!927597 (= lt!418207 (lemmaListMapContainsThenArrayContainsFrom!260 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55596 (_ BitVec 32) List!18933) Bool)

(assert (=> b!927597 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18930)))

(declare-fun lt!418206 () Unit!31381)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55596 (_ BitVec 32) (_ BitVec 32)) Unit!31381)

(assert (=> b!927597 (= lt!418206 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4943 (ListLongMap!11817 (_ BitVec 64)) Bool)

(assert (=> b!927597 (contains!4943 lt!418199 k0!1099)))

(declare-fun lt!418198 () tuple2!13106)

(declare-fun +!2714 (ListLongMap!11817 tuple2!13106) ListLongMap!11817)

(assert (=> b!927597 (= lt!418199 (+!2714 lt!418203 lt!418198))))

(declare-fun lt!418195 () Unit!31381)

(declare-fun addStillContains!476 (ListLongMap!11817 (_ BitVec 64) V!31377 (_ BitVec 64)) Unit!31381)

(assert (=> b!927597 (= lt!418195 (addStillContains!476 lt!418203 lt!418209 lt!418204 k0!1099))))

(declare-fun getCurrentListMap!3137 (array!55596 array!55598 (_ BitVec 32) (_ BitVec 32) V!31377 V!31377 (_ BitVec 32) Int) ListLongMap!11817)

(assert (=> b!927597 (= (getCurrentListMap!3137 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2714 (getCurrentListMap!3137 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!418198))))

(assert (=> b!927597 (= lt!418198 (tuple2!13107 lt!418209 lt!418204))))

(declare-fun get!14093 (ValueCell!9423 V!31377) V!31377)

(declare-fun dynLambda!1553 (Int (_ BitVec 64)) V!31377)

(assert (=> b!927597 (= lt!418204 (get!14093 (select (arr!26740 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1553 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!418196 () Unit!31381)

(declare-fun lemmaListMapRecursiveValidKeyArray!149 (array!55596 array!55598 (_ BitVec 32) (_ BitVec 32) V!31377 V!31377 (_ BitVec 32) Int) Unit!31381)

(assert (=> b!927597 (= lt!418196 (lemmaListMapRecursiveValidKeyArray!149 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!520809 () Unit!31381)

(assert (=> b!927597 (= e!520809 lt!418197)))

(declare-fun b!927598 () Bool)

(declare-fun e!520800 () Bool)

(declare-fun tp_is_empty!19809 () Bool)

(assert (=> b!927598 (= e!520800 tp_is_empty!19809)))

(declare-fun b!927599 () Bool)

(assert (=> b!927599 (= e!520802 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!624870 () Bool)

(declare-fun e!520804 () Bool)

(assert (=> start!79116 (=> (not res!624870) (not e!520804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79116 (= res!624870 (validMask!0 mask!1881))))

(assert (=> start!79116 e!520804))

(assert (=> start!79116 true))

(assert (=> start!79116 tp_is_empty!19809))

(declare-fun e!520810 () Bool)

(declare-fun array_inv!20810 (array!55598) Bool)

(assert (=> start!79116 (and (array_inv!20810 _values!1231) e!520810)))

(assert (=> start!79116 tp!60344))

(declare-fun array_inv!20811 (array!55596) Bool)

(assert (=> start!79116 (array_inv!20811 _keys!1487)))

(declare-fun b!927600 () Bool)

(declare-fun e!520806 () Bool)

(declare-fun e!520808 () Bool)

(assert (=> b!927600 (= e!520806 e!520808)))

(declare-fun res!624869 () Bool)

(assert (=> b!927600 (=> (not res!624869) (not e!520808))))

(declare-fun v!791 () V!31377)

(assert (=> b!927600 (= res!624869 (and (= lt!418205 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!927600 (= lt!418205 (apply!720 lt!418203 k0!1099))))

(declare-fun b!927601 () Bool)

(declare-fun lt!418202 () ListLongMap!11817)

(declare-fun e!520807 () Bool)

(assert (=> b!927601 (= e!520807 (= (apply!720 lt!418202 k0!1099) v!791))))

(declare-fun b!927602 () Bool)

(declare-fun res!624875 () Bool)

(assert (=> b!927602 (=> (not res!624875) (not e!520804))))

(assert (=> b!927602 (= res!624875 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18930))))

(declare-fun b!927603 () Bool)

(declare-fun e!520803 () Bool)

(assert (=> b!927603 (= e!520803 (not true))))

(assert (=> b!927603 e!520807))

(declare-fun res!624873 () Bool)

(assert (=> b!927603 (=> (not res!624873) (not e!520807))))

(assert (=> b!927603 (= res!624873 (contains!4943 lt!418202 k0!1099))))

(assert (=> b!927603 (= lt!418202 (getCurrentListMap!3137 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!418201 () Unit!31381)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!101 (array!55596 array!55598 (_ BitVec 32) (_ BitVec 32) V!31377 V!31377 (_ BitVec 64) V!31377 (_ BitVec 32) Int) Unit!31381)

(assert (=> b!927603 (= lt!418201 (lemmaListMapApplyFromThenApplyFromZero!101 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927604 () Bool)

(declare-fun res!624868 () Bool)

(assert (=> b!927604 (=> (not res!624868) (not e!520804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55596 (_ BitVec 32)) Bool)

(assert (=> b!927604 (= res!624868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!927605 () Bool)

(declare-fun e!520811 () Bool)

(declare-fun mapRes!31470 () Bool)

(assert (=> b!927605 (= e!520810 (and e!520811 mapRes!31470))))

(declare-fun condMapEmpty!31470 () Bool)

(declare-fun mapDefault!31470 () ValueCell!9423)

(assert (=> b!927605 (= condMapEmpty!31470 (= (arr!26740 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9423)) mapDefault!31470)))))

(declare-fun b!927606 () Bool)

(declare-fun res!624871 () Bool)

(assert (=> b!927606 (=> (not res!624871) (not e!520804))))

(assert (=> b!927606 (= res!624871 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27199 _keys!1487))))))

(declare-fun b!927607 () Bool)

(assert (=> b!927607 (= e!520804 e!520806)))

(declare-fun res!624878 () Bool)

(assert (=> b!927607 (=> (not res!624878) (not e!520806))))

(assert (=> b!927607 (= res!624878 (contains!4943 lt!418203 k0!1099))))

(assert (=> b!927607 (= lt!418203 (getCurrentListMap!3137 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!927608 () Bool)

(declare-fun Unit!31383 () Unit!31381)

(assert (=> b!927608 (= e!520809 Unit!31383)))

(declare-fun b!927609 () Bool)

(declare-fun e!520812 () Bool)

(assert (=> b!927609 (= e!520808 e!520812)))

(declare-fun res!624876 () Bool)

(assert (=> b!927609 (=> (not res!624876) (not e!520812))))

(assert (=> b!927609 (= res!624876 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27199 _keys!1487)))))

(declare-fun lt!418208 () Unit!31381)

(declare-fun e!520801 () Unit!31381)

(assert (=> b!927609 (= lt!418208 e!520801)))

(declare-fun c!96833 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!927609 (= c!96833 (validKeyInArray!0 k0!1099))))

(declare-fun b!927610 () Bool)

(declare-fun res!624877 () Bool)

(assert (=> b!927610 (=> (not res!624877) (not e!520804))))

(assert (=> b!927610 (= res!624877 (and (= (size!27200 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27199 _keys!1487) (size!27200 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!31470 () Bool)

(declare-fun tp!60345 () Bool)

(assert (=> mapNonEmpty!31470 (= mapRes!31470 (and tp!60345 e!520800))))

(declare-fun mapRest!31470 () (Array (_ BitVec 32) ValueCell!9423))

(declare-fun mapValue!31470 () ValueCell!9423)

(declare-fun mapKey!31470 () (_ BitVec 32))

(assert (=> mapNonEmpty!31470 (= (arr!26740 _values!1231) (store mapRest!31470 mapKey!31470 mapValue!31470))))

(declare-fun b!927611 () Bool)

(declare-fun res!624872 () Bool)

(assert (=> b!927611 (=> (not res!624872) (not e!520803))))

(declare-fun lt!418200 () ListLongMap!11817)

(assert (=> b!927611 (= res!624872 (= (apply!720 lt!418200 k0!1099) v!791))))

(declare-fun b!927612 () Bool)

(declare-fun Unit!31384 () Unit!31381)

(assert (=> b!927612 (= e!520801 Unit!31384)))

(declare-fun b!927613 () Bool)

(declare-fun arrayContainsKey!0 (array!55596 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!927613 (= e!520802 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!927614 () Bool)

(assert (=> b!927614 (= e!520812 e!520803)))

(declare-fun res!624874 () Bool)

(assert (=> b!927614 (=> (not res!624874) (not e!520803))))

(assert (=> b!927614 (= res!624874 (contains!4943 lt!418200 k0!1099))))

(assert (=> b!927614 (= lt!418200 (getCurrentListMap!3137 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927615 () Bool)

(assert (=> b!927615 (= e!520811 tp_is_empty!19809)))

(declare-fun b!927616 () Bool)

(assert (=> b!927616 (= e!520801 e!520809)))

(assert (=> b!927616 (= lt!418209 (select (arr!26739 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96832 () Bool)

(assert (=> b!927616 (= c!96832 (validKeyInArray!0 lt!418209))))

(declare-fun mapIsEmpty!31470 () Bool)

(assert (=> mapIsEmpty!31470 mapRes!31470))

(assert (= (and start!79116 res!624870) b!927610))

(assert (= (and b!927610 res!624877) b!927604))

(assert (= (and b!927604 res!624868) b!927602))

(assert (= (and b!927602 res!624875) b!927606))

(assert (= (and b!927606 res!624871) b!927607))

(assert (= (and b!927607 res!624878) b!927600))

(assert (= (and b!927600 res!624869) b!927609))

(assert (= (and b!927609 c!96833) b!927616))

(assert (= (and b!927609 (not c!96833)) b!927612))

(assert (= (and b!927616 c!96832) b!927597))

(assert (= (and b!927616 (not c!96832)) b!927608))

(assert (= (and b!927597 c!96831) b!927613))

(assert (= (and b!927597 (not c!96831)) b!927599))

(assert (= (and b!927609 res!624876) b!927614))

(assert (= (and b!927614 res!624874) b!927611))

(assert (= (and b!927611 res!624872) b!927603))

(assert (= (and b!927603 res!624873) b!927601))

(assert (= (and b!927605 condMapEmpty!31470) mapIsEmpty!31470))

(assert (= (and b!927605 (not condMapEmpty!31470)) mapNonEmpty!31470))

(get-info :version)

(assert (= (and mapNonEmpty!31470 ((_ is ValueCellFull!9423) mapValue!31470)) b!927598))

(assert (= (and b!927605 ((_ is ValueCellFull!9423) mapDefault!31470)) b!927615))

(assert (= start!79116 b!927605))

(declare-fun b_lambda!13833 () Bool)

(assert (=> (not b_lambda!13833) (not b!927597)))

(declare-fun t!26970 () Bool)

(declare-fun tb!5889 () Bool)

(assert (=> (and start!79116 (= defaultEntry!1235 defaultEntry!1235) t!26970) tb!5889))

(declare-fun result!11593 () Bool)

(assert (=> tb!5889 (= result!11593 tp_is_empty!19809)))

(assert (=> b!927597 t!26970))

(declare-fun b_and!28359 () Bool)

(assert (= b_and!28357 (and (=> t!26970 result!11593) b_and!28359)))

(declare-fun m!862421 () Bool)

(assert (=> b!927602 m!862421))

(declare-fun m!862423 () Bool)

(assert (=> b!927597 m!862423))

(declare-fun m!862425 () Bool)

(assert (=> b!927597 m!862425))

(declare-fun m!862427 () Bool)

(assert (=> b!927597 m!862427))

(declare-fun m!862429 () Bool)

(assert (=> b!927597 m!862429))

(declare-fun m!862431 () Bool)

(assert (=> b!927597 m!862431))

(declare-fun m!862433 () Bool)

(assert (=> b!927597 m!862433))

(declare-fun m!862435 () Bool)

(assert (=> b!927597 m!862435))

(declare-fun m!862437 () Bool)

(assert (=> b!927597 m!862437))

(declare-fun m!862439 () Bool)

(assert (=> b!927597 m!862439))

(declare-fun m!862441 () Bool)

(assert (=> b!927597 m!862441))

(declare-fun m!862443 () Bool)

(assert (=> b!927597 m!862443))

(declare-fun m!862445 () Bool)

(assert (=> b!927597 m!862445))

(assert (=> b!927597 m!862427))

(assert (=> b!927597 m!862429))

(declare-fun m!862447 () Bool)

(assert (=> b!927597 m!862447))

(assert (=> b!927597 m!862435))

(declare-fun m!862449 () Bool)

(assert (=> b!927597 m!862449))

(declare-fun m!862451 () Bool)

(assert (=> b!927597 m!862451))

(declare-fun m!862453 () Bool)

(assert (=> b!927597 m!862453))

(declare-fun m!862455 () Bool)

(assert (=> b!927614 m!862455))

(assert (=> b!927614 m!862431))

(declare-fun m!862457 () Bool)

(assert (=> b!927613 m!862457))

(declare-fun m!862459 () Bool)

(assert (=> start!79116 m!862459))

(declare-fun m!862461 () Bool)

(assert (=> start!79116 m!862461))

(declare-fun m!862463 () Bool)

(assert (=> start!79116 m!862463))

(declare-fun m!862465 () Bool)

(assert (=> b!927604 m!862465))

(declare-fun m!862467 () Bool)

(assert (=> b!927611 m!862467))

(declare-fun m!862469 () Bool)

(assert (=> b!927616 m!862469))

(declare-fun m!862471 () Bool)

(assert (=> b!927616 m!862471))

(declare-fun m!862473 () Bool)

(assert (=> mapNonEmpty!31470 m!862473))

(declare-fun m!862475 () Bool)

(assert (=> b!927600 m!862475))

(declare-fun m!862477 () Bool)

(assert (=> b!927609 m!862477))

(declare-fun m!862479 () Bool)

(assert (=> b!927601 m!862479))

(declare-fun m!862481 () Bool)

(assert (=> b!927603 m!862481))

(declare-fun m!862483 () Bool)

(assert (=> b!927603 m!862483))

(declare-fun m!862485 () Bool)

(assert (=> b!927603 m!862485))

(declare-fun m!862487 () Bool)

(assert (=> b!927607 m!862487))

(declare-fun m!862489 () Bool)

(assert (=> b!927607 m!862489))

(check-sat tp_is_empty!19809 (not b!927603) (not b_lambda!13833) (not b!927611) (not mapNonEmpty!31470) (not b!927597) (not b!927601) (not b!927600) (not b!927609) (not start!79116) (not b_next!17301) (not b!927614) (not b!927613) (not b!927602) (not b!927616) b_and!28359 (not b!927607) (not b!927604))
(check-sat b_and!28359 (not b_next!17301))
