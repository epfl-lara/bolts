; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79302 () Bool)

(assert start!79302)

(declare-fun b_free!17487 () Bool)

(declare-fun b_next!17487 () Bool)

(assert (=> start!79302 (= b_free!17487 (not b_next!17487))))

(declare-fun tp!60902 () Bool)

(declare-fun b_and!28571 () Bool)

(assert (=> start!79302 (= tp!60902 b_and!28571)))

(declare-fun mapIsEmpty!31749 () Bool)

(declare-fun mapRes!31749 () Bool)

(assert (=> mapIsEmpty!31749 mapRes!31749))

(declare-fun b!930801 () Bool)

(declare-fun res!626969 () Bool)

(declare-fun e!522757 () Bool)

(assert (=> b!930801 (=> (not res!626969) (not e!522757))))

(declare-datatypes ((array!55958 0))(
  ( (array!55959 (arr!26920 (Array (_ BitVec 32) (_ BitVec 64))) (size!27380 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55958)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55958 (_ BitVec 32)) Bool)

(assert (=> b!930801 (= res!626969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!930802 () Bool)

(declare-fun res!626967 () Bool)

(assert (=> b!930802 (=> (not res!626967) (not e!522757))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31625 0))(
  ( (V!31626 (val!10048 Int)) )
))
(declare-datatypes ((ValueCell!9516 0))(
  ( (ValueCellFull!9516 (v!12566 V!31625)) (EmptyCell!9516) )
))
(declare-datatypes ((array!55960 0))(
  ( (array!55961 (arr!26921 (Array (_ BitVec 32) ValueCell!9516)) (size!27381 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55960)

(assert (=> b!930802 (= res!626967 (and (= (size!27381 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27380 _keys!1487) (size!27381 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!930803 () Bool)

(declare-fun e!522755 () Bool)

(declare-fun e!522759 () Bool)

(assert (=> b!930803 (= e!522755 (and e!522759 mapRes!31749))))

(declare-fun condMapEmpty!31749 () Bool)

(declare-fun mapDefault!31749 () ValueCell!9516)

(assert (=> b!930803 (= condMapEmpty!31749 (= (arr!26921 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9516)) mapDefault!31749)))))

(declare-fun b!930804 () Bool)

(declare-fun tp_is_empty!19995 () Bool)

(assert (=> b!930804 (= e!522759 tp_is_empty!19995)))

(declare-fun b!930806 () Bool)

(declare-fun res!626972 () Bool)

(assert (=> b!930806 (=> (not res!626972) (not e!522757))))

(declare-datatypes ((List!19076 0))(
  ( (Nil!19073) (Cons!19072 (h!20218 (_ BitVec 64)) (t!27141 List!19076)) )
))
(declare-fun arrayNoDuplicates!0 (array!55958 (_ BitVec 32) List!19076) Bool)

(assert (=> b!930806 (= res!626972 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19073))))

(declare-fun res!626970 () Bool)

(assert (=> start!79302 (=> (not res!626970) (not e!522757))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79302 (= res!626970 (validMask!0 mask!1881))))

(assert (=> start!79302 e!522757))

(assert (=> start!79302 true))

(declare-fun array_inv!20932 (array!55960) Bool)

(assert (=> start!79302 (and (array_inv!20932 _values!1231) e!522755)))

(assert (=> start!79302 tp!60902))

(declare-fun array_inv!20933 (array!55958) Bool)

(assert (=> start!79302 (array_inv!20933 _keys!1487)))

(assert (=> start!79302 tp_is_empty!19995))

(declare-fun b!930805 () Bool)

(declare-fun res!626968 () Bool)

(assert (=> b!930805 (=> (not res!626968) (not e!522757))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!930805 (= res!626968 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27380 _keys!1487))))))

(declare-fun b!930807 () Bool)

(declare-fun e!522756 () Bool)

(assert (=> b!930807 (= e!522756 tp_is_empty!19995)))

(declare-fun b!930808 () Bool)

(declare-fun e!522758 () Bool)

(assert (=> b!930808 (= e!522757 e!522758)))

(declare-fun res!626971 () Bool)

(assert (=> b!930808 (=> (not res!626971) (not e!522758))))

(declare-datatypes ((tuple2!13260 0))(
  ( (tuple2!13261 (_1!6640 (_ BitVec 64)) (_2!6640 V!31625)) )
))
(declare-datatypes ((List!19077 0))(
  ( (Nil!19074) (Cons!19073 (h!20219 tuple2!13260) (t!27142 List!19077)) )
))
(declare-datatypes ((ListLongMap!11971 0))(
  ( (ListLongMap!11972 (toList!6001 List!19077)) )
))
(declare-fun lt!419286 () ListLongMap!11971)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5006 (ListLongMap!11971 (_ BitVec 64)) Bool)

(assert (=> b!930808 (= res!626971 (contains!5006 lt!419286 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31625)

(declare-fun minValue!1173 () V!31625)

(declare-fun getCurrentListMap!3200 (array!55958 array!55960 (_ BitVec 32) (_ BitVec 32) V!31625 V!31625 (_ BitVec 32) Int) ListLongMap!11971)

(assert (=> b!930808 (= lt!419286 (getCurrentListMap!3200 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!930809 () Bool)

(assert (=> b!930809 (= e!522758 false)))

(declare-fun lt!419285 () V!31625)

(declare-fun apply!788 (ListLongMap!11971 (_ BitVec 64)) V!31625)

(assert (=> b!930809 (= lt!419285 (apply!788 lt!419286 k0!1099))))

(declare-fun mapNonEmpty!31749 () Bool)

(declare-fun tp!60903 () Bool)

(assert (=> mapNonEmpty!31749 (= mapRes!31749 (and tp!60903 e!522756))))

(declare-fun mapValue!31749 () ValueCell!9516)

(declare-fun mapKey!31749 () (_ BitVec 32))

(declare-fun mapRest!31749 () (Array (_ BitVec 32) ValueCell!9516))

(assert (=> mapNonEmpty!31749 (= (arr!26921 _values!1231) (store mapRest!31749 mapKey!31749 mapValue!31749))))

(assert (= (and start!79302 res!626970) b!930802))

(assert (= (and b!930802 res!626967) b!930801))

(assert (= (and b!930801 res!626969) b!930806))

(assert (= (and b!930806 res!626972) b!930805))

(assert (= (and b!930805 res!626968) b!930808))

(assert (= (and b!930808 res!626971) b!930809))

(assert (= (and b!930803 condMapEmpty!31749) mapIsEmpty!31749))

(assert (= (and b!930803 (not condMapEmpty!31749)) mapNonEmpty!31749))

(get-info :version)

(assert (= (and mapNonEmpty!31749 ((_ is ValueCellFull!9516) mapValue!31749)) b!930807))

(assert (= (and b!930803 ((_ is ValueCellFull!9516) mapDefault!31749)) b!930804))

(assert (= start!79302 b!930803))

(declare-fun m!864949 () Bool)

(assert (=> b!930808 m!864949))

(declare-fun m!864951 () Bool)

(assert (=> b!930808 m!864951))

(declare-fun m!864953 () Bool)

(assert (=> b!930801 m!864953))

(declare-fun m!864955 () Bool)

(assert (=> start!79302 m!864955))

(declare-fun m!864957 () Bool)

(assert (=> start!79302 m!864957))

(declare-fun m!864959 () Bool)

(assert (=> start!79302 m!864959))

(declare-fun m!864961 () Bool)

(assert (=> b!930806 m!864961))

(declare-fun m!864963 () Bool)

(assert (=> mapNonEmpty!31749 m!864963))

(declare-fun m!864965 () Bool)

(assert (=> b!930809 m!864965))

(check-sat (not b!930808) (not b!930801) (not start!79302) (not b!930809) tp_is_empty!19995 b_and!28571 (not b!930806) (not mapNonEmpty!31749) (not b_next!17487))
(check-sat b_and!28571 (not b_next!17487))
