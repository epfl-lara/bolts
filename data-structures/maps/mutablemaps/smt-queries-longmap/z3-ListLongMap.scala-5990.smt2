; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77822 () Bool)

(assert start!77822)

(declare-fun b_free!16353 () Bool)

(declare-fun b_next!16353 () Bool)

(assert (=> start!77822 (= b_free!16353 (not b_next!16353))))

(declare-fun tp!57325 () Bool)

(declare-fun b_and!26881 () Bool)

(assert (=> start!77822 (= tp!57325 b_and!26881)))

(declare-fun b!907749 () Bool)

(declare-fun res!612762 () Bool)

(declare-fun e!508780 () Bool)

(assert (=> b!907749 (=> (not res!612762) (not e!508780))))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53568 0))(
  ( (array!53569 (arr!25738 (Array (_ BitVec 32) (_ BitVec 64))) (size!26198 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53568)

(declare-fun k0!1033 () (_ BitVec 64))

(assert (=> b!907749 (= res!612762 (and (= (select (arr!25738 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!907750 () Bool)

(declare-fun e!508787 () Bool)

(assert (=> b!907750 (= e!508787 e!508780)))

(declare-fun res!612758 () Bool)

(assert (=> b!907750 (=> (not res!612758) (not e!508780))))

(declare-datatypes ((V!29993 0))(
  ( (V!29994 (val!9436 Int)) )
))
(declare-datatypes ((tuple2!12314 0))(
  ( (tuple2!12315 (_1!6167 (_ BitVec 64)) (_2!6167 V!29993)) )
))
(declare-datatypes ((List!18173 0))(
  ( (Nil!18170) (Cons!18169 (h!19315 tuple2!12314) (t!25706 List!18173)) )
))
(declare-datatypes ((ListLongMap!11025 0))(
  ( (ListLongMap!11026 (toList!5528 List!18173)) )
))
(declare-fun lt!409465 () ListLongMap!11025)

(declare-fun contains!4537 (ListLongMap!11025 (_ BitVec 64)) Bool)

(assert (=> b!907750 (= res!612758 (contains!4537 lt!409465 k0!1033))))

(declare-datatypes ((ValueCell!8904 0))(
  ( (ValueCellFull!8904 (v!11943 V!29993)) (EmptyCell!8904) )
))
(declare-datatypes ((array!53570 0))(
  ( (array!53571 (arr!25739 (Array (_ BitVec 32) ValueCell!8904)) (size!26199 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53570)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29993)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29993)

(declare-fun getCurrentListMap!2760 (array!53568 array!53570 (_ BitVec 32) (_ BitVec 32) V!29993 V!29993 (_ BitVec 32) Int) ListLongMap!11025)

(assert (=> b!907750 (= lt!409465 (getCurrentListMap!2760 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!907751 () Bool)

(declare-fun res!612766 () Bool)

(assert (=> b!907751 (=> (not res!612766) (not e!508787))))

(declare-datatypes ((List!18174 0))(
  ( (Nil!18171) (Cons!18170 (h!19316 (_ BitVec 64)) (t!25707 List!18174)) )
))
(declare-fun arrayNoDuplicates!0 (array!53568 (_ BitVec 32) List!18174) Bool)

(assert (=> b!907751 (= res!612766 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18171))))

(declare-fun b!907752 () Bool)

(declare-fun res!612763 () Bool)

(assert (=> b!907752 (=> (not res!612763) (not e!508787))))

(assert (=> b!907752 (= res!612763 (and (= (size!26199 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26198 _keys!1386) (size!26199 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!907753 () Bool)

(declare-fun e!508786 () Bool)

(assert (=> b!907753 (= e!508780 (not e!508786))))

(declare-fun res!612764 () Bool)

(assert (=> b!907753 (=> res!612764 e!508786)))

(assert (=> b!907753 (= res!612764 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26198 _keys!1386))))))

(declare-fun lt!409463 () V!29993)

(declare-fun get!13562 (ValueCell!8904 V!29993) V!29993)

(declare-fun dynLambda!1375 (Int (_ BitVec 64)) V!29993)

(assert (=> b!907753 (= lt!409463 (get!13562 (select (arr!25739 _values!1152) i!717) (dynLambda!1375 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53568 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!907753 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30787 0))(
  ( (Unit!30788) )
))
(declare-fun lt!409461 () Unit!30787)

(declare-fun lemmaKeyInListMapIsInArray!248 (array!53568 array!53570 (_ BitVec 32) (_ BitVec 32) V!29993 V!29993 (_ BitVec 64) Int) Unit!30787)

(assert (=> b!907753 (= lt!409461 (lemmaKeyInListMapIsInArray!248 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!907754 () Bool)

(declare-fun e!508783 () Bool)

(assert (=> b!907754 (= e!508786 e!508783)))

(declare-fun res!612757 () Bool)

(assert (=> b!907754 (=> res!612757 e!508783)))

(declare-fun lt!409464 () ListLongMap!11025)

(assert (=> b!907754 (= res!612757 (not (contains!4537 lt!409464 k0!1033)))))

(assert (=> b!907754 (= lt!409464 (getCurrentListMap!2760 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun mapIsEmpty!29872 () Bool)

(declare-fun mapRes!29872 () Bool)

(assert (=> mapIsEmpty!29872 mapRes!29872))

(declare-fun b!907755 () Bool)

(declare-fun res!612760 () Bool)

(assert (=> b!907755 (=> res!612760 e!508783)))

(declare-fun apply!504 (ListLongMap!11025 (_ BitVec 64)) V!29993)

(assert (=> b!907755 (= res!612760 (not (= (apply!504 lt!409464 k0!1033) lt!409463)))))

(declare-fun b!907756 () Bool)

(declare-fun res!612761 () Bool)

(assert (=> b!907756 (=> (not res!612761) (not e!508780))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!907756 (= res!612761 (inRange!0 i!717 mask!1756))))

(declare-fun b!907757 () Bool)

(assert (=> b!907757 (= e!508783 true)))

(assert (=> b!907757 (= (apply!504 lt!409465 k0!1033) lt!409463)))

(declare-fun lt!409462 () Unit!30787)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!50 (array!53568 array!53570 (_ BitVec 32) (_ BitVec 32) V!29993 V!29993 (_ BitVec 64) V!29993 (_ BitVec 32) Int) Unit!30787)

(assert (=> b!907757 (= lt!409462 (lemmaListMapApplyFromThenApplyFromZero!50 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!409463 i!717 defaultEntry!1160))))

(declare-fun mapNonEmpty!29872 () Bool)

(declare-fun tp!57324 () Bool)

(declare-fun e!508781 () Bool)

(assert (=> mapNonEmpty!29872 (= mapRes!29872 (and tp!57324 e!508781))))

(declare-fun mapKey!29872 () (_ BitVec 32))

(declare-fun mapRest!29872 () (Array (_ BitVec 32) ValueCell!8904))

(declare-fun mapValue!29872 () ValueCell!8904)

(assert (=> mapNonEmpty!29872 (= (arr!25739 _values!1152) (store mapRest!29872 mapKey!29872 mapValue!29872))))

(declare-fun b!907758 () Bool)

(declare-fun e!508782 () Bool)

(declare-fun tp_is_empty!18771 () Bool)

(assert (=> b!907758 (= e!508782 tp_is_empty!18771)))

(declare-fun b!907759 () Bool)

(declare-fun e!508785 () Bool)

(assert (=> b!907759 (= e!508785 (and e!508782 mapRes!29872))))

(declare-fun condMapEmpty!29872 () Bool)

(declare-fun mapDefault!29872 () ValueCell!8904)

(assert (=> b!907759 (= condMapEmpty!29872 (= (arr!25739 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8904)) mapDefault!29872)))))

(declare-fun res!612759 () Bool)

(assert (=> start!77822 (=> (not res!612759) (not e!508787))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77822 (= res!612759 (validMask!0 mask!1756))))

(assert (=> start!77822 e!508787))

(declare-fun array_inv!20128 (array!53570) Bool)

(assert (=> start!77822 (and (array_inv!20128 _values!1152) e!508785)))

(assert (=> start!77822 tp!57325))

(assert (=> start!77822 true))

(assert (=> start!77822 tp_is_empty!18771))

(declare-fun array_inv!20129 (array!53568) Bool)

(assert (=> start!77822 (array_inv!20129 _keys!1386)))

(declare-fun b!907760 () Bool)

(declare-fun res!612765 () Bool)

(assert (=> b!907760 (=> (not res!612765) (not e!508787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53568 (_ BitVec 32)) Bool)

(assert (=> b!907760 (= res!612765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!907761 () Bool)

(assert (=> b!907761 (= e!508781 tp_is_empty!18771)))

(assert (= (and start!77822 res!612759) b!907752))

(assert (= (and b!907752 res!612763) b!907760))

(assert (= (and b!907760 res!612765) b!907751))

(assert (= (and b!907751 res!612766) b!907750))

(assert (= (and b!907750 res!612758) b!907756))

(assert (= (and b!907756 res!612761) b!907749))

(assert (= (and b!907749 res!612762) b!907753))

(assert (= (and b!907753 (not res!612764)) b!907754))

(assert (= (and b!907754 (not res!612757)) b!907755))

(assert (= (and b!907755 (not res!612760)) b!907757))

(assert (= (and b!907759 condMapEmpty!29872) mapIsEmpty!29872))

(assert (= (and b!907759 (not condMapEmpty!29872)) mapNonEmpty!29872))

(get-info :version)

(assert (= (and mapNonEmpty!29872 ((_ is ValueCellFull!8904) mapValue!29872)) b!907761))

(assert (= (and b!907759 ((_ is ValueCellFull!8904) mapDefault!29872)) b!907758))

(assert (= start!77822 b!907759))

(declare-fun b_lambda!13267 () Bool)

(assert (=> (not b_lambda!13267) (not b!907753)))

(declare-fun t!25705 () Bool)

(declare-fun tb!5383 () Bool)

(assert (=> (and start!77822 (= defaultEntry!1160 defaultEntry!1160) t!25705) tb!5383))

(declare-fun result!10555 () Bool)

(assert (=> tb!5383 (= result!10555 tp_is_empty!18771)))

(assert (=> b!907753 t!25705))

(declare-fun b_and!26883 () Bool)

(assert (= b_and!26881 (and (=> t!25705 result!10555) b_and!26883)))

(declare-fun m!843205 () Bool)

(assert (=> b!907751 m!843205))

(declare-fun m!843207 () Bool)

(assert (=> b!907753 m!843207))

(declare-fun m!843209 () Bool)

(assert (=> b!907753 m!843209))

(declare-fun m!843211 () Bool)

(assert (=> b!907753 m!843211))

(declare-fun m!843213 () Bool)

(assert (=> b!907753 m!843213))

(assert (=> b!907753 m!843207))

(assert (=> b!907753 m!843211))

(declare-fun m!843215 () Bool)

(assert (=> b!907753 m!843215))

(declare-fun m!843217 () Bool)

(assert (=> start!77822 m!843217))

(declare-fun m!843219 () Bool)

(assert (=> start!77822 m!843219))

(declare-fun m!843221 () Bool)

(assert (=> start!77822 m!843221))

(declare-fun m!843223 () Bool)

(assert (=> mapNonEmpty!29872 m!843223))

(declare-fun m!843225 () Bool)

(assert (=> b!907754 m!843225))

(declare-fun m!843227 () Bool)

(assert (=> b!907754 m!843227))

(declare-fun m!843229 () Bool)

(assert (=> b!907760 m!843229))

(declare-fun m!843231 () Bool)

(assert (=> b!907749 m!843231))

(declare-fun m!843233 () Bool)

(assert (=> b!907750 m!843233))

(declare-fun m!843235 () Bool)

(assert (=> b!907750 m!843235))

(declare-fun m!843237 () Bool)

(assert (=> b!907756 m!843237))

(declare-fun m!843239 () Bool)

(assert (=> b!907757 m!843239))

(declare-fun m!843241 () Bool)

(assert (=> b!907757 m!843241))

(declare-fun m!843243 () Bool)

(assert (=> b!907755 m!843243))

(check-sat (not b!907751) tp_is_empty!18771 (not b!907753) (not b!907760) (not b!907750) (not mapNonEmpty!29872) (not start!77822) (not b_lambda!13267) (not b!907754) (not b!907757) (not b_next!16353) b_and!26883 (not b!907755) (not b!907756))
(check-sat b_and!26883 (not b_next!16353))
