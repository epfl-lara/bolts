; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79194 () Bool)

(assert start!79194)

(declare-fun b_free!17379 () Bool)

(declare-fun b_next!17379 () Bool)

(assert (=> start!79194 (= b_free!17379 (not b_next!17379))))

(declare-fun tp!60579 () Bool)

(declare-fun b_and!28463 () Bool)

(assert (=> start!79194 (= tp!60579 b_and!28463)))

(declare-fun b!929123 () Bool)

(declare-fun e!521787 () Bool)

(declare-fun tp_is_empty!19887 () Bool)

(assert (=> b!929123 (= e!521787 tp_is_empty!19887)))

(declare-fun mapIsEmpty!31587 () Bool)

(declare-fun mapRes!31587 () Bool)

(assert (=> mapIsEmpty!31587 mapRes!31587))

(declare-fun b!929124 () Bool)

(declare-fun e!521783 () Bool)

(declare-fun e!521784 () Bool)

(assert (=> b!929124 (= e!521783 (and e!521784 mapRes!31587))))

(declare-fun condMapEmpty!31587 () Bool)

(declare-datatypes ((V!31481 0))(
  ( (V!31482 (val!9994 Int)) )
))
(declare-datatypes ((ValueCell!9462 0))(
  ( (ValueCellFull!9462 (v!12512 V!31481)) (EmptyCell!9462) )
))
(declare-datatypes ((array!55746 0))(
  ( (array!55747 (arr!26814 (Array (_ BitVec 32) ValueCell!9462)) (size!27274 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55746)

(declare-fun mapDefault!31587 () ValueCell!9462)

(assert (=> b!929124 (= condMapEmpty!31587 (= (arr!26814 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9462)) mapDefault!31587)))))

(declare-fun b!929125 () Bool)

(declare-fun e!521785 () Bool)

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55748 0))(
  ( (array!55749 (arr!26815 (Array (_ BitVec 32) (_ BitVec 64))) (size!27275 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55748)

(assert (=> b!929125 (= e!521785 (and (bvsle from!1844 #b00000000000000000000000000000000) (bvsgt #b00000000000000000000000000000000 (size!27275 _keys!1487))))))

(declare-fun b!929126 () Bool)

(assert (=> b!929126 (= e!521784 tp_is_empty!19887)))

(declare-fun res!625780 () Bool)

(declare-fun e!521782 () Bool)

(assert (=> start!79194 (=> (not res!625780) (not e!521782))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79194 (= res!625780 (validMask!0 mask!1881))))

(assert (=> start!79194 e!521782))

(assert (=> start!79194 true))

(assert (=> start!79194 tp_is_empty!19887))

(declare-fun array_inv!20864 (array!55746) Bool)

(assert (=> start!79194 (and (array_inv!20864 _values!1231) e!521783)))

(assert (=> start!79194 tp!60579))

(declare-fun array_inv!20865 (array!55748) Bool)

(assert (=> start!79194 (array_inv!20865 _keys!1487)))

(declare-fun b!929127 () Bool)

(declare-fun res!625779 () Bool)

(assert (=> b!929127 (=> (not res!625779) (not e!521782))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!929127 (= res!625779 (and (= (size!27274 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27275 _keys!1487) (size!27274 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!929128 () Bool)

(declare-fun res!625778 () Bool)

(assert (=> b!929128 (=> (not res!625778) (not e!521782))))

(declare-datatypes ((List!18992 0))(
  ( (Nil!18989) (Cons!18988 (h!20134 (_ BitVec 64)) (t!27057 List!18992)) )
))
(declare-fun arrayNoDuplicates!0 (array!55748 (_ BitVec 32) List!18992) Bool)

(assert (=> b!929128 (= res!625778 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18989))))

(declare-fun b!929129 () Bool)

(assert (=> b!929129 (= e!521782 e!521785)))

(declare-fun res!625777 () Bool)

(assert (=> b!929129 (=> (not res!625777) (not e!521785))))

(declare-datatypes ((tuple2!13170 0))(
  ( (tuple2!13171 (_1!6595 (_ BitVec 64)) (_2!6595 V!31481)) )
))
(declare-datatypes ((List!18993 0))(
  ( (Nil!18990) (Cons!18989 (h!20135 tuple2!13170) (t!27058 List!18993)) )
))
(declare-datatypes ((ListLongMap!11881 0))(
  ( (ListLongMap!11882 (toList!5956 List!18993)) )
))
(declare-fun lt!418983 () ListLongMap!11881)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4972 (ListLongMap!11881 (_ BitVec 64)) Bool)

(assert (=> b!929129 (= res!625777 (contains!4972 lt!418983 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31481)

(declare-fun minValue!1173 () V!31481)

(declare-fun getCurrentListMap!3166 (array!55748 array!55746 (_ BitVec 32) (_ BitVec 32) V!31481 V!31481 (_ BitVec 32) Int) ListLongMap!11881)

(assert (=> b!929129 (= lt!418983 (getCurrentListMap!3166 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapNonEmpty!31587 () Bool)

(declare-fun tp!60578 () Bool)

(assert (=> mapNonEmpty!31587 (= mapRes!31587 (and tp!60578 e!521787))))

(declare-fun mapValue!31587 () ValueCell!9462)

(declare-fun mapKey!31587 () (_ BitVec 32))

(declare-fun mapRest!31587 () (Array (_ BitVec 32) ValueCell!9462))

(assert (=> mapNonEmpty!31587 (= (arr!26814 _values!1231) (store mapRest!31587 mapKey!31587 mapValue!31587))))

(declare-fun b!929130 () Bool)

(declare-fun res!625775 () Bool)

(assert (=> b!929130 (=> (not res!625775) (not e!521782))))

(assert (=> b!929130 (= res!625775 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27275 _keys!1487))))))

(declare-fun b!929131 () Bool)

(declare-fun res!625781 () Bool)

(assert (=> b!929131 (=> (not res!625781) (not e!521785))))

(declare-fun v!791 () V!31481)

(declare-fun apply!751 (ListLongMap!11881 (_ BitVec 64)) V!31481)

(assert (=> b!929131 (= res!625781 (= (apply!751 lt!418983 k0!1099) v!791))))

(declare-fun b!929132 () Bool)

(declare-fun res!625776 () Bool)

(assert (=> b!929132 (=> (not res!625776) (not e!521782))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55748 (_ BitVec 32)) Bool)

(assert (=> b!929132 (= res!625776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(assert (= (and start!79194 res!625780) b!929127))

(assert (= (and b!929127 res!625779) b!929132))

(assert (= (and b!929132 res!625776) b!929128))

(assert (= (and b!929128 res!625778) b!929130))

(assert (= (and b!929130 res!625775) b!929129))

(assert (= (and b!929129 res!625777) b!929131))

(assert (= (and b!929131 res!625781) b!929125))

(assert (= (and b!929124 condMapEmpty!31587) mapIsEmpty!31587))

(assert (= (and b!929124 (not condMapEmpty!31587)) mapNonEmpty!31587))

(get-info :version)

(assert (= (and mapNonEmpty!31587 ((_ is ValueCellFull!9462) mapValue!31587)) b!929123))

(assert (= (and b!929124 ((_ is ValueCellFull!9462) mapDefault!31587)) b!929126))

(assert (= start!79194 b!929124))

(declare-fun m!863851 () Bool)

(assert (=> start!79194 m!863851))

(declare-fun m!863853 () Bool)

(assert (=> start!79194 m!863853))

(declare-fun m!863855 () Bool)

(assert (=> start!79194 m!863855))

(declare-fun m!863857 () Bool)

(assert (=> b!929132 m!863857))

(declare-fun m!863859 () Bool)

(assert (=> mapNonEmpty!31587 m!863859))

(declare-fun m!863861 () Bool)

(assert (=> b!929128 m!863861))

(declare-fun m!863863 () Bool)

(assert (=> b!929131 m!863863))

(declare-fun m!863865 () Bool)

(assert (=> b!929129 m!863865))

(declare-fun m!863867 () Bool)

(assert (=> b!929129 m!863867))

(check-sat (not b!929129) (not mapNonEmpty!31587) (not b!929128) (not b!929132) (not start!79194) (not b_next!17379) b_and!28463 (not b!929131) tp_is_empty!19887)
(check-sat b_and!28463 (not b_next!17379))
