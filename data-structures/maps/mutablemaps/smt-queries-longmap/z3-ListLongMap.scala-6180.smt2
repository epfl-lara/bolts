; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79218 () Bool)

(assert start!79218)

(declare-fun b_free!17403 () Bool)

(declare-fun b_next!17403 () Bool)

(assert (=> start!79218 (= b_free!17403 (not b_next!17403))))

(declare-fun tp!60650 () Bool)

(declare-fun b_and!28487 () Bool)

(assert (=> start!79218 (= tp!60650 b_and!28487)))

(declare-fun b!929515 () Bool)

(declare-fun res!626059 () Bool)

(declare-fun e!522001 () Bool)

(assert (=> b!929515 (=> (not res!626059) (not e!522001))))

(declare-datatypes ((array!55794 0))(
  ( (array!55795 (arr!26838 (Array (_ BitVec 32) (_ BitVec 64))) (size!27298 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55794)

(declare-datatypes ((List!19010 0))(
  ( (Nil!19007) (Cons!19006 (h!20152 (_ BitVec 64)) (t!27075 List!19010)) )
))
(declare-fun arrayNoDuplicates!0 (array!55794 (_ BitVec 32) List!19010) Bool)

(assert (=> b!929515 (= res!626059 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19007))))

(declare-fun mapNonEmpty!31623 () Bool)

(declare-fun mapRes!31623 () Bool)

(declare-fun tp!60651 () Bool)

(declare-fun e!521999 () Bool)

(assert (=> mapNonEmpty!31623 (= mapRes!31623 (and tp!60651 e!521999))))

(declare-fun mapKey!31623 () (_ BitVec 32))

(declare-datatypes ((V!31513 0))(
  ( (V!31514 (val!10006 Int)) )
))
(declare-datatypes ((ValueCell!9474 0))(
  ( (ValueCellFull!9474 (v!12524 V!31513)) (EmptyCell!9474) )
))
(declare-datatypes ((array!55796 0))(
  ( (array!55797 (arr!26839 (Array (_ BitVec 32) ValueCell!9474)) (size!27299 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55796)

(declare-fun mapValue!31623 () ValueCell!9474)

(declare-fun mapRest!31623 () (Array (_ BitVec 32) ValueCell!9474))

(assert (=> mapNonEmpty!31623 (= (arr!26839 _values!1231) (store mapRest!31623 mapKey!31623 mapValue!31623))))

(declare-fun b!929516 () Bool)

(declare-fun e!522002 () Bool)

(declare-fun e!522000 () Bool)

(assert (=> b!929516 (= e!522002 (and e!522000 mapRes!31623))))

(declare-fun condMapEmpty!31623 () Bool)

(declare-fun mapDefault!31623 () ValueCell!9474)

(assert (=> b!929516 (= condMapEmpty!31623 (= (arr!26839 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9474)) mapDefault!31623)))))

(declare-fun b!929517 () Bool)

(declare-fun res!626064 () Bool)

(declare-fun e!522003 () Bool)

(assert (=> b!929517 (=> (not res!626064) (not e!522003))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!929517 (= res!626064 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun b!929518 () Bool)

(declare-fun tp_is_empty!19911 () Bool)

(assert (=> b!929518 (= e!521999 tp_is_empty!19911)))

(declare-fun b!929519 () Bool)

(declare-fun res!626065 () Bool)

(assert (=> b!929519 (=> (not res!626065) (not e!522001))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!929519 (= res!626065 (and (= (size!27299 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27298 _keys!1487) (size!27299 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!929520 () Bool)

(declare-fun res!626066 () Bool)

(assert (=> b!929520 (=> (not res!626066) (not e!522003))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun v!791 () V!31513)

(declare-datatypes ((tuple2!13190 0))(
  ( (tuple2!13191 (_1!6605 (_ BitVec 64)) (_2!6605 V!31513)) )
))
(declare-datatypes ((List!19011 0))(
  ( (Nil!19008) (Cons!19007 (h!20153 tuple2!13190) (t!27076 List!19011)) )
))
(declare-datatypes ((ListLongMap!11901 0))(
  ( (ListLongMap!11902 (toList!5966 List!19011)) )
))
(declare-fun lt!419052 () ListLongMap!11901)

(declare-fun apply!757 (ListLongMap!11901 (_ BitVec 64)) V!31513)

(assert (=> b!929520 (= res!626066 (= (apply!757 lt!419052 k0!1099) v!791))))

(declare-fun mapIsEmpty!31623 () Bool)

(assert (=> mapIsEmpty!31623 mapRes!31623))

(declare-fun b!929522 () Bool)

(declare-fun res!626060 () Bool)

(assert (=> b!929522 (=> (not res!626060) (not e!522001))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55794 (_ BitVec 32)) Bool)

(assert (=> b!929522 (= res!626060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!929523 () Bool)

(assert (=> b!929523 (= e!522000 tp_is_empty!19911)))

(declare-fun b!929524 () Bool)

(declare-fun res!626063 () Bool)

(assert (=> b!929524 (=> (not res!626063) (not e!522001))))

(assert (=> b!929524 (= res!626063 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27298 _keys!1487))))))

(declare-fun b!929525 () Bool)

(assert (=> b!929525 (= e!522003 false)))

(declare-fun lt!419051 () Bool)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31513)

(declare-fun minValue!1173 () V!31513)

(declare-fun contains!4982 (ListLongMap!11901 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3176 (array!55794 array!55796 (_ BitVec 32) (_ BitVec 32) V!31513 V!31513 (_ BitVec 32) Int) ListLongMap!11901)

(assert (=> b!929525 (= lt!419051 (contains!4982 (getCurrentListMap!3176 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235) k0!1099))))

(declare-fun b!929521 () Bool)

(assert (=> b!929521 (= e!522001 e!522003)))

(declare-fun res!626061 () Bool)

(assert (=> b!929521 (=> (not res!626061) (not e!522003))))

(assert (=> b!929521 (= res!626061 (contains!4982 lt!419052 k0!1099))))

(assert (=> b!929521 (= lt!419052 (getCurrentListMap!3176 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun res!626062 () Bool)

(assert (=> start!79218 (=> (not res!626062) (not e!522001))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79218 (= res!626062 (validMask!0 mask!1881))))

(assert (=> start!79218 e!522001))

(assert (=> start!79218 true))

(assert (=> start!79218 tp_is_empty!19911))

(declare-fun array_inv!20882 (array!55796) Bool)

(assert (=> start!79218 (and (array_inv!20882 _values!1231) e!522002)))

(assert (=> start!79218 tp!60650))

(declare-fun array_inv!20883 (array!55794) Bool)

(assert (=> start!79218 (array_inv!20883 _keys!1487)))

(assert (= (and start!79218 res!626062) b!929519))

(assert (= (and b!929519 res!626065) b!929522))

(assert (= (and b!929522 res!626060) b!929515))

(assert (= (and b!929515 res!626059) b!929524))

(assert (= (and b!929524 res!626063) b!929521))

(assert (= (and b!929521 res!626061) b!929520))

(assert (= (and b!929520 res!626066) b!929517))

(assert (= (and b!929517 res!626064) b!929525))

(assert (= (and b!929516 condMapEmpty!31623) mapIsEmpty!31623))

(assert (= (and b!929516 (not condMapEmpty!31623)) mapNonEmpty!31623))

(get-info :version)

(assert (= (and mapNonEmpty!31623 ((_ is ValueCellFull!9474) mapValue!31623)) b!929518))

(assert (= (and b!929516 ((_ is ValueCellFull!9474) mapDefault!31623)) b!929523))

(assert (= start!79218 b!929516))

(declare-fun m!864107 () Bool)

(assert (=> b!929520 m!864107))

(declare-fun m!864109 () Bool)

(assert (=> b!929525 m!864109))

(assert (=> b!929525 m!864109))

(declare-fun m!864111 () Bool)

(assert (=> b!929525 m!864111))

(declare-fun m!864113 () Bool)

(assert (=> b!929515 m!864113))

(declare-fun m!864115 () Bool)

(assert (=> start!79218 m!864115))

(declare-fun m!864117 () Bool)

(assert (=> start!79218 m!864117))

(declare-fun m!864119 () Bool)

(assert (=> start!79218 m!864119))

(declare-fun m!864121 () Bool)

(assert (=> b!929521 m!864121))

(declare-fun m!864123 () Bool)

(assert (=> b!929521 m!864123))

(declare-fun m!864125 () Bool)

(assert (=> b!929522 m!864125))

(declare-fun m!864127 () Bool)

(assert (=> mapNonEmpty!31623 m!864127))

(check-sat tp_is_empty!19911 (not b!929515) b_and!28487 (not mapNonEmpty!31623) (not b!929525) (not b!929520) (not b_next!17403) (not b!929522) (not start!79218) (not b!929521))
(check-sat b_and!28487 (not b_next!17403))
