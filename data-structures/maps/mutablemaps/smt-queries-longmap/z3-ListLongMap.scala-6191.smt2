; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79284 () Bool)

(assert start!79284)

(declare-fun b_free!17469 () Bool)

(declare-fun b_next!17469 () Bool)

(assert (=> start!79284 (= b_free!17469 (not b_next!17469))))

(declare-fun tp!60848 () Bool)

(declare-fun b_and!28553 () Bool)

(assert (=> start!79284 (= tp!60848 b_and!28553)))

(declare-fun b!930558 () Bool)

(declare-fun e!522592 () Bool)

(declare-fun tp_is_empty!19977 () Bool)

(assert (=> b!930558 (= e!522592 tp_is_empty!19977)))

(declare-fun b!930559 () Bool)

(declare-fun e!522595 () Bool)

(assert (=> b!930559 (= e!522595 false)))

(declare-datatypes ((V!31601 0))(
  ( (V!31602 (val!10039 Int)) )
))
(declare-fun lt!419231 () V!31601)

(declare-datatypes ((tuple2!13242 0))(
  ( (tuple2!13243 (_1!6631 (_ BitVec 64)) (_2!6631 V!31601)) )
))
(declare-datatypes ((List!19062 0))(
  ( (Nil!19059) (Cons!19058 (h!20204 tuple2!13242) (t!27127 List!19062)) )
))
(declare-datatypes ((ListLongMap!11953 0))(
  ( (ListLongMap!11954 (toList!5992 List!19062)) )
))
(declare-fun lt!419232 () ListLongMap!11953)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!779 (ListLongMap!11953 (_ BitVec 64)) V!31601)

(assert (=> b!930559 (= lt!419231 (apply!779 lt!419232 k0!1099))))

(declare-fun b!930560 () Bool)

(declare-fun e!522593 () Bool)

(assert (=> b!930560 (= e!522593 e!522595)))

(declare-fun res!626808 () Bool)

(assert (=> b!930560 (=> (not res!626808) (not e!522595))))

(declare-fun contains!5001 (ListLongMap!11953 (_ BitVec 64)) Bool)

(assert (=> b!930560 (= res!626808 (contains!5001 lt!419232 k0!1099))))

(declare-datatypes ((array!55924 0))(
  ( (array!55925 (arr!26903 (Array (_ BitVec 32) (_ BitVec 64))) (size!27363 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55924)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9507 0))(
  ( (ValueCellFull!9507 (v!12557 V!31601)) (EmptyCell!9507) )
))
(declare-datatypes ((array!55926 0))(
  ( (array!55927 (arr!26904 (Array (_ BitVec 32) ValueCell!9507)) (size!27364 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55926)

(declare-fun zeroValue!1173 () V!31601)

(declare-fun minValue!1173 () V!31601)

(declare-fun defaultEntry!1235 () Int)

(declare-fun getCurrentListMap!3195 (array!55924 array!55926 (_ BitVec 32) (_ BitVec 32) V!31601 V!31601 (_ BitVec 32) Int) ListLongMap!11953)

(assert (=> b!930560 (= lt!419232 (getCurrentListMap!3195 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!930561 () Bool)

(declare-fun res!626810 () Bool)

(assert (=> b!930561 (=> (not res!626810) (not e!522593))))

(declare-datatypes ((List!19063 0))(
  ( (Nil!19060) (Cons!19059 (h!20205 (_ BitVec 64)) (t!27128 List!19063)) )
))
(declare-fun arrayNoDuplicates!0 (array!55924 (_ BitVec 32) List!19063) Bool)

(assert (=> b!930561 (= res!626810 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19060))))

(declare-fun b!930562 () Bool)

(declare-fun e!522594 () Bool)

(assert (=> b!930562 (= e!522594 tp_is_empty!19977)))

(declare-fun mapIsEmpty!31722 () Bool)

(declare-fun mapRes!31722 () Bool)

(assert (=> mapIsEmpty!31722 mapRes!31722))

(declare-fun b!930563 () Bool)

(declare-fun e!522597 () Bool)

(assert (=> b!930563 (= e!522597 (and e!522594 mapRes!31722))))

(declare-fun condMapEmpty!31722 () Bool)

(declare-fun mapDefault!31722 () ValueCell!9507)

(assert (=> b!930563 (= condMapEmpty!31722 (= (arr!26904 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9507)) mapDefault!31722)))))

(declare-fun b!930564 () Bool)

(declare-fun res!626806 () Bool)

(assert (=> b!930564 (=> (not res!626806) (not e!522593))))

(assert (=> b!930564 (= res!626806 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27363 _keys!1487))))))

(declare-fun b!930565 () Bool)

(declare-fun res!626807 () Bool)

(assert (=> b!930565 (=> (not res!626807) (not e!522593))))

(assert (=> b!930565 (= res!626807 (and (= (size!27364 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27363 _keys!1487) (size!27364 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!626805 () Bool)

(assert (=> start!79284 (=> (not res!626805) (not e!522593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79284 (= res!626805 (validMask!0 mask!1881))))

(assert (=> start!79284 e!522593))

(assert (=> start!79284 true))

(declare-fun array_inv!20918 (array!55926) Bool)

(assert (=> start!79284 (and (array_inv!20918 _values!1231) e!522597)))

(assert (=> start!79284 tp!60848))

(declare-fun array_inv!20919 (array!55924) Bool)

(assert (=> start!79284 (array_inv!20919 _keys!1487)))

(assert (=> start!79284 tp_is_empty!19977))

(declare-fun mapNonEmpty!31722 () Bool)

(declare-fun tp!60849 () Bool)

(assert (=> mapNonEmpty!31722 (= mapRes!31722 (and tp!60849 e!522592))))

(declare-fun mapRest!31722 () (Array (_ BitVec 32) ValueCell!9507))

(declare-fun mapValue!31722 () ValueCell!9507)

(declare-fun mapKey!31722 () (_ BitVec 32))

(assert (=> mapNonEmpty!31722 (= (arr!26904 _values!1231) (store mapRest!31722 mapKey!31722 mapValue!31722))))

(declare-fun b!930566 () Bool)

(declare-fun res!626809 () Bool)

(assert (=> b!930566 (=> (not res!626809) (not e!522593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55924 (_ BitVec 32)) Bool)

(assert (=> b!930566 (= res!626809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(assert (= (and start!79284 res!626805) b!930565))

(assert (= (and b!930565 res!626807) b!930566))

(assert (= (and b!930566 res!626809) b!930561))

(assert (= (and b!930561 res!626810) b!930564))

(assert (= (and b!930564 res!626806) b!930560))

(assert (= (and b!930560 res!626808) b!930559))

(assert (= (and b!930563 condMapEmpty!31722) mapIsEmpty!31722))

(assert (= (and b!930563 (not condMapEmpty!31722)) mapNonEmpty!31722))

(get-info :version)

(assert (= (and mapNonEmpty!31722 ((_ is ValueCellFull!9507) mapValue!31722)) b!930558))

(assert (= (and b!930563 ((_ is ValueCellFull!9507) mapDefault!31722)) b!930562))

(assert (= start!79284 b!930563))

(declare-fun m!864787 () Bool)

(assert (=> b!930561 m!864787))

(declare-fun m!864789 () Bool)

(assert (=> b!930559 m!864789))

(declare-fun m!864791 () Bool)

(assert (=> b!930566 m!864791))

(declare-fun m!864793 () Bool)

(assert (=> mapNonEmpty!31722 m!864793))

(declare-fun m!864795 () Bool)

(assert (=> start!79284 m!864795))

(declare-fun m!864797 () Bool)

(assert (=> start!79284 m!864797))

(declare-fun m!864799 () Bool)

(assert (=> start!79284 m!864799))

(declare-fun m!864801 () Bool)

(assert (=> b!930560 m!864801))

(declare-fun m!864803 () Bool)

(assert (=> b!930560 m!864803))

(check-sat tp_is_empty!19977 (not b!930561) (not b!930566) (not b!930560) (not mapNonEmpty!31722) (not b_next!17469) (not start!79284) (not b!930559) b_and!28553)
(check-sat b_and!28553 (not b_next!17469))
