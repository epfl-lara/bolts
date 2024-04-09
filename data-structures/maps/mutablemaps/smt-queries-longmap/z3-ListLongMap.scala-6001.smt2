; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77888 () Bool)

(assert start!77888)

(declare-fun b_free!16419 () Bool)

(declare-fun b_next!16419 () Bool)

(assert (=> start!77888 (= b_free!16419 (not b_next!16419))))

(declare-fun tp!57522 () Bool)

(declare-fun b_and!27005 () Bool)

(assert (=> start!77888 (= tp!57522 b_and!27005)))

(declare-fun res!613664 () Bool)

(declare-fun e!509531 () Bool)

(assert (=> start!77888 (=> (not res!613664) (not e!509531))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77888 (= res!613664 (validMask!0 mask!1756))))

(assert (=> start!77888 e!509531))

(declare-datatypes ((V!30081 0))(
  ( (V!30082 (val!9469 Int)) )
))
(declare-datatypes ((ValueCell!8937 0))(
  ( (ValueCellFull!8937 (v!11976 V!30081)) (EmptyCell!8937) )
))
(declare-datatypes ((array!53694 0))(
  ( (array!53695 (arr!25801 (Array (_ BitVec 32) ValueCell!8937)) (size!26261 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53694)

(declare-fun e!509534 () Bool)

(declare-fun array_inv!20172 (array!53694) Bool)

(assert (=> start!77888 (and (array_inv!20172 _values!1152) e!509534)))

(assert (=> start!77888 tp!57522))

(assert (=> start!77888 true))

(declare-fun tp_is_empty!18837 () Bool)

(assert (=> start!77888 tp_is_empty!18837))

(declare-datatypes ((array!53696 0))(
  ( (array!53697 (arr!25802 (Array (_ BitVec 32) (_ BitVec 64))) (size!26262 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53696)

(declare-fun array_inv!20173 (array!53696) Bool)

(assert (=> start!77888 (array_inv!20173 _keys!1386)))

(declare-fun mapNonEmpty!29971 () Bool)

(declare-fun mapRes!29971 () Bool)

(declare-fun tp!57523 () Bool)

(declare-fun e!509532 () Bool)

(assert (=> mapNonEmpty!29971 (= mapRes!29971 (and tp!57523 e!509532))))

(declare-fun mapValue!29971 () ValueCell!8937)

(declare-fun mapRest!29971 () (Array (_ BitVec 32) ValueCell!8937))

(declare-fun mapKey!29971 () (_ BitVec 32))

(assert (=> mapNonEmpty!29971 (= (arr!25801 _values!1152) (store mapRest!29971 mapKey!29971 mapValue!29971))))

(declare-fun b!909010 () Bool)

(declare-fun e!509533 () Bool)

(assert (=> b!909010 (= e!509534 (and e!509533 mapRes!29971))))

(declare-fun condMapEmpty!29971 () Bool)

(declare-fun mapDefault!29971 () ValueCell!8937)

(assert (=> b!909010 (= condMapEmpty!29971 (= (arr!25801 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8937)) mapDefault!29971)))))

(declare-fun b!909011 () Bool)

(assert (=> b!909011 (= e!509531 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30081)

(declare-fun lt!409900 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30081)

(declare-datatypes ((tuple2!12368 0))(
  ( (tuple2!12369 (_1!6194 (_ BitVec 64)) (_2!6194 V!30081)) )
))
(declare-datatypes ((List!18224 0))(
  ( (Nil!18221) (Cons!18220 (h!19366 tuple2!12368) (t!25813 List!18224)) )
))
(declare-datatypes ((ListLongMap!11079 0))(
  ( (ListLongMap!11080 (toList!5555 List!18224)) )
))
(declare-fun contains!4562 (ListLongMap!11079 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2785 (array!53696 array!53694 (_ BitVec 32) (_ BitVec 32) V!30081 V!30081 (_ BitVec 32) Int) ListLongMap!11079)

(assert (=> b!909011 (= lt!409900 (contains!4562 (getCurrentListMap!2785 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!909012 () Bool)

(declare-fun res!613665 () Bool)

(assert (=> b!909012 (=> (not res!613665) (not e!509531))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53696 (_ BitVec 32)) Bool)

(assert (=> b!909012 (= res!613665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!29971 () Bool)

(assert (=> mapIsEmpty!29971 mapRes!29971))

(declare-fun b!909013 () Bool)

(assert (=> b!909013 (= e!509533 tp_is_empty!18837)))

(declare-fun b!909014 () Bool)

(assert (=> b!909014 (= e!509532 tp_is_empty!18837)))

(declare-fun b!909015 () Bool)

(declare-fun res!613666 () Bool)

(assert (=> b!909015 (=> (not res!613666) (not e!509531))))

(assert (=> b!909015 (= res!613666 (and (= (size!26261 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26262 _keys!1386) (size!26261 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!909016 () Bool)

(declare-fun res!613663 () Bool)

(assert (=> b!909016 (=> (not res!613663) (not e!509531))))

(declare-datatypes ((List!18225 0))(
  ( (Nil!18222) (Cons!18221 (h!19367 (_ BitVec 64)) (t!25814 List!18225)) )
))
(declare-fun arrayNoDuplicates!0 (array!53696 (_ BitVec 32) List!18225) Bool)

(assert (=> b!909016 (= res!613663 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18222))))

(assert (= (and start!77888 res!613664) b!909015))

(assert (= (and b!909015 res!613666) b!909012))

(assert (= (and b!909012 res!613665) b!909016))

(assert (= (and b!909016 res!613663) b!909011))

(assert (= (and b!909010 condMapEmpty!29971) mapIsEmpty!29971))

(assert (= (and b!909010 (not condMapEmpty!29971)) mapNonEmpty!29971))

(get-info :version)

(assert (= (and mapNonEmpty!29971 ((_ is ValueCellFull!8937) mapValue!29971)) b!909014))

(assert (= (and b!909010 ((_ is ValueCellFull!8937) mapDefault!29971)) b!909013))

(assert (= start!77888 b!909010))

(declare-fun m!844429 () Bool)

(assert (=> b!909012 m!844429))

(declare-fun m!844431 () Bool)

(assert (=> b!909016 m!844431))

(declare-fun m!844433 () Bool)

(assert (=> mapNonEmpty!29971 m!844433))

(declare-fun m!844435 () Bool)

(assert (=> b!909011 m!844435))

(assert (=> b!909011 m!844435))

(declare-fun m!844437 () Bool)

(assert (=> b!909011 m!844437))

(declare-fun m!844439 () Bool)

(assert (=> start!77888 m!844439))

(declare-fun m!844441 () Bool)

(assert (=> start!77888 m!844441))

(declare-fun m!844443 () Bool)

(assert (=> start!77888 m!844443))

(check-sat tp_is_empty!18837 (not b!909012) (not start!77888) (not mapNonEmpty!29971) b_and!27005 (not b!909011) (not b!909016) (not b_next!16419))
(check-sat b_and!27005 (not b_next!16419))
