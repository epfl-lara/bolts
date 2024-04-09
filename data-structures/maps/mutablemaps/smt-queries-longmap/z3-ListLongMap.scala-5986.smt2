; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77772 () Bool)

(assert start!77772)

(declare-fun b_free!16329 () Bool)

(declare-fun b_next!16329 () Bool)

(assert (=> start!77772 (= b_free!16329 (not b_next!16329))))

(declare-fun tp!57250 () Bool)

(declare-fun b_and!26829 () Bool)

(assert (=> start!77772 (= tp!57250 b_and!26829)))

(declare-fun b!907105 () Bool)

(declare-fun res!612340 () Bool)

(declare-fun e!508390 () Bool)

(assert (=> b!907105 (=> (not res!612340) (not e!508390))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!907105 (= res!612340 (inRange!0 i!717 mask!1756))))

(declare-fun b!907106 () Bool)

(declare-fun e!508391 () Bool)

(assert (=> b!907106 (= e!508390 (not e!508391))))

(declare-fun res!612334 () Bool)

(assert (=> b!907106 (=> res!612334 e!508391)))

(declare-datatypes ((array!53520 0))(
  ( (array!53521 (arr!25715 (Array (_ BitVec 32) (_ BitVec 64))) (size!26175 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53520)

(assert (=> b!907106 (= res!612334 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26175 _keys!1386))))))

(declare-fun defaultEntry!1160 () Int)

(declare-datatypes ((V!29961 0))(
  ( (V!29962 (val!9424 Int)) )
))
(declare-fun lt!409163 () V!29961)

(declare-datatypes ((ValueCell!8892 0))(
  ( (ValueCellFull!8892 (v!11929 V!29961)) (EmptyCell!8892) )
))
(declare-datatypes ((array!53522 0))(
  ( (array!53523 (arr!25716 (Array (_ BitVec 32) ValueCell!8892)) (size!26176 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53522)

(declare-fun get!13542 (ValueCell!8892 V!29961) V!29961)

(declare-fun dynLambda!1366 (Int (_ BitVec 64)) V!29961)

(assert (=> b!907106 (= lt!409163 (get!13542 (select (arr!25716 _values!1152) i!717) (dynLambda!1366 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53520 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!907106 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun zeroValue!1094 () V!29961)

(declare-datatypes ((Unit!30761 0))(
  ( (Unit!30762) )
))
(declare-fun lt!409165 () Unit!30761)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29961)

(declare-fun lemmaKeyInListMapIsInArray!239 (array!53520 array!53522 (_ BitVec 32) (_ BitVec 32) V!29961 V!29961 (_ BitVec 64) Int) Unit!30761)

(assert (=> b!907106 (= lt!409165 (lemmaKeyInListMapIsInArray!239 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!907107 () Bool)

(declare-fun res!612333 () Bool)

(declare-fun e!508393 () Bool)

(assert (=> b!907107 (=> (not res!612333) (not e!508393))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53520 (_ BitVec 32)) Bool)

(assert (=> b!907107 (= res!612333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!907108 () Bool)

(declare-fun res!612338 () Bool)

(assert (=> b!907108 (=> (not res!612338) (not e!508393))))

(declare-datatypes ((List!18153 0))(
  ( (Nil!18150) (Cons!18149 (h!19295 (_ BitVec 64)) (t!25662 List!18153)) )
))
(declare-fun arrayNoDuplicates!0 (array!53520 (_ BitVec 32) List!18153) Bool)

(assert (=> b!907108 (= res!612338 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18150))))

(declare-fun b!907109 () Bool)

(assert (=> b!907109 (= e!508393 e!508390)))

(declare-fun res!612342 () Bool)

(assert (=> b!907109 (=> (not res!612342) (not e!508390))))

(declare-datatypes ((tuple2!12292 0))(
  ( (tuple2!12293 (_1!6156 (_ BitVec 64)) (_2!6156 V!29961)) )
))
(declare-datatypes ((List!18154 0))(
  ( (Nil!18151) (Cons!18150 (h!19296 tuple2!12292) (t!25663 List!18154)) )
))
(declare-datatypes ((ListLongMap!11003 0))(
  ( (ListLongMap!11004 (toList!5517 List!18154)) )
))
(declare-fun lt!409164 () ListLongMap!11003)

(declare-fun contains!4526 (ListLongMap!11003 (_ BitVec 64)) Bool)

(assert (=> b!907109 (= res!612342 (contains!4526 lt!409164 k0!1033))))

(declare-fun getCurrentListMap!2750 (array!53520 array!53522 (_ BitVec 32) (_ BitVec 32) V!29961 V!29961 (_ BitVec 32) Int) ListLongMap!11003)

(assert (=> b!907109 (= lt!409164 (getCurrentListMap!2750 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!907110 () Bool)

(declare-fun res!612336 () Bool)

(declare-fun e!508396 () Bool)

(assert (=> b!907110 (=> res!612336 e!508396)))

(declare-fun lt!409162 () ListLongMap!11003)

(declare-fun apply!493 (ListLongMap!11003 (_ BitVec 64)) V!29961)

(assert (=> b!907110 (= res!612336 (not (= (apply!493 lt!409162 k0!1033) lt!409163)))))

(declare-fun mapIsEmpty!29833 () Bool)

(declare-fun mapRes!29833 () Bool)

(assert (=> mapIsEmpty!29833 mapRes!29833))

(declare-fun b!907111 () Bool)

(declare-fun res!612341 () Bool)

(assert (=> b!907111 (=> (not res!612341) (not e!508393))))

(assert (=> b!907111 (= res!612341 (and (= (size!26176 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26175 _keys!1386) (size!26176 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!907112 () Bool)

(assert (=> b!907112 (= e!508396 true)))

(assert (=> b!907112 (= (apply!493 lt!409164 k0!1033) lt!409163)))

(declare-fun lt!409166 () Unit!30761)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!39 (array!53520 array!53522 (_ BitVec 32) (_ BitVec 32) V!29961 V!29961 (_ BitVec 64) V!29961 (_ BitVec 32) Int) Unit!30761)

(assert (=> b!907112 (= lt!409166 (lemmaListMapApplyFromThenApplyFromZero!39 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!409163 i!717 defaultEntry!1160))))

(declare-fun b!907113 () Bool)

(declare-fun e!508392 () Bool)

(declare-fun tp_is_empty!18747 () Bool)

(assert (=> b!907113 (= e!508392 tp_is_empty!18747)))

(declare-fun b!907115 () Bool)

(declare-fun e!508397 () Bool)

(declare-fun e!508395 () Bool)

(assert (=> b!907115 (= e!508397 (and e!508395 mapRes!29833))))

(declare-fun condMapEmpty!29833 () Bool)

(declare-fun mapDefault!29833 () ValueCell!8892)

(assert (=> b!907115 (= condMapEmpty!29833 (= (arr!25716 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8892)) mapDefault!29833)))))

(declare-fun b!907116 () Bool)

(assert (=> b!907116 (= e!508395 tp_is_empty!18747)))

(declare-fun res!612339 () Bool)

(assert (=> start!77772 (=> (not res!612339) (not e!508393))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77772 (= res!612339 (validMask!0 mask!1756))))

(assert (=> start!77772 e!508393))

(declare-fun array_inv!20110 (array!53522) Bool)

(assert (=> start!77772 (and (array_inv!20110 _values!1152) e!508397)))

(assert (=> start!77772 tp!57250))

(assert (=> start!77772 true))

(assert (=> start!77772 tp_is_empty!18747))

(declare-fun array_inv!20111 (array!53520) Bool)

(assert (=> start!77772 (array_inv!20111 _keys!1386)))

(declare-fun b!907114 () Bool)

(declare-fun res!612337 () Bool)

(assert (=> b!907114 (=> (not res!612337) (not e!508390))))

(assert (=> b!907114 (= res!612337 (and (= (select (arr!25715 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!29833 () Bool)

(declare-fun tp!57249 () Bool)

(assert (=> mapNonEmpty!29833 (= mapRes!29833 (and tp!57249 e!508392))))

(declare-fun mapKey!29833 () (_ BitVec 32))

(declare-fun mapRest!29833 () (Array (_ BitVec 32) ValueCell!8892))

(declare-fun mapValue!29833 () ValueCell!8892)

(assert (=> mapNonEmpty!29833 (= (arr!25716 _values!1152) (store mapRest!29833 mapKey!29833 mapValue!29833))))

(declare-fun b!907117 () Bool)

(assert (=> b!907117 (= e!508391 e!508396)))

(declare-fun res!612335 () Bool)

(assert (=> b!907117 (=> res!612335 e!508396)))

(assert (=> b!907117 (= res!612335 (not (contains!4526 lt!409162 k0!1033)))))

(assert (=> b!907117 (= lt!409162 (getCurrentListMap!2750 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(assert (= (and start!77772 res!612339) b!907111))

(assert (= (and b!907111 res!612341) b!907107))

(assert (= (and b!907107 res!612333) b!907108))

(assert (= (and b!907108 res!612338) b!907109))

(assert (= (and b!907109 res!612342) b!907105))

(assert (= (and b!907105 res!612340) b!907114))

(assert (= (and b!907114 res!612337) b!907106))

(assert (= (and b!907106 (not res!612334)) b!907117))

(assert (= (and b!907117 (not res!612335)) b!907110))

(assert (= (and b!907110 (not res!612336)) b!907112))

(assert (= (and b!907115 condMapEmpty!29833) mapIsEmpty!29833))

(assert (= (and b!907115 (not condMapEmpty!29833)) mapNonEmpty!29833))

(get-info :version)

(assert (= (and mapNonEmpty!29833 ((_ is ValueCellFull!8892) mapValue!29833)) b!907113))

(assert (= (and b!907115 ((_ is ValueCellFull!8892) mapDefault!29833)) b!907116))

(assert (= start!77772 b!907115))

(declare-fun b_lambda!13233 () Bool)

(assert (=> (not b_lambda!13233) (not b!907106)))

(declare-fun t!25661 () Bool)

(declare-fun tb!5359 () Bool)

(assert (=> (and start!77772 (= defaultEntry!1160 defaultEntry!1160) t!25661) tb!5359))

(declare-fun result!10505 () Bool)

(assert (=> tb!5359 (= result!10505 tp_is_empty!18747)))

(assert (=> b!907106 t!25661))

(declare-fun b_and!26831 () Bool)

(assert (= b_and!26829 (and (=> t!25661 result!10505) b_and!26831)))

(declare-fun m!842571 () Bool)

(assert (=> start!77772 m!842571))

(declare-fun m!842573 () Bool)

(assert (=> start!77772 m!842573))

(declare-fun m!842575 () Bool)

(assert (=> start!77772 m!842575))

(declare-fun m!842577 () Bool)

(assert (=> b!907117 m!842577))

(declare-fun m!842579 () Bool)

(assert (=> b!907117 m!842579))

(declare-fun m!842581 () Bool)

(assert (=> b!907107 m!842581))

(declare-fun m!842583 () Bool)

(assert (=> b!907112 m!842583))

(declare-fun m!842585 () Bool)

(assert (=> b!907112 m!842585))

(declare-fun m!842587 () Bool)

(assert (=> b!907106 m!842587))

(declare-fun m!842589 () Bool)

(assert (=> b!907106 m!842589))

(declare-fun m!842591 () Bool)

(assert (=> b!907106 m!842591))

(declare-fun m!842593 () Bool)

(assert (=> b!907106 m!842593))

(assert (=> b!907106 m!842587))

(assert (=> b!907106 m!842591))

(declare-fun m!842595 () Bool)

(assert (=> b!907106 m!842595))

(declare-fun m!842597 () Bool)

(assert (=> b!907105 m!842597))

(declare-fun m!842599 () Bool)

(assert (=> mapNonEmpty!29833 m!842599))

(declare-fun m!842601 () Bool)

(assert (=> b!907110 m!842601))

(declare-fun m!842603 () Bool)

(assert (=> b!907109 m!842603))

(declare-fun m!842605 () Bool)

(assert (=> b!907109 m!842605))

(declare-fun m!842607 () Bool)

(assert (=> b!907114 m!842607))

(declare-fun m!842609 () Bool)

(assert (=> b!907108 m!842609))

(check-sat (not b!907109) (not b!907105) (not start!77772) (not b!907108) (not b!907112) (not b!907110) (not b!907106) (not mapNonEmpty!29833) b_and!26831 (not b_lambda!13233) (not b!907107) (not b_next!16329) tp_is_empty!18747 (not b!907117))
(check-sat b_and!26831 (not b_next!16329))
