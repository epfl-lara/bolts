; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77868 () Bool)

(assert start!77868)

(declare-fun b_free!16399 () Bool)

(declare-fun b_next!16399 () Bool)

(assert (=> start!77868 (= b_free!16399 (not b_next!16399))))

(declare-fun tp!57463 () Bool)

(declare-fun b_and!26973 () Bool)

(assert (=> start!77868 (= tp!57463 b_and!26973)))

(declare-fun b!908692 () Bool)

(declare-fun res!613455 () Bool)

(declare-fun e!509335 () Bool)

(assert (=> b!908692 (=> (not res!613455) (not e!509335))))

(declare-datatypes ((array!53656 0))(
  ( (array!53657 (arr!25782 (Array (_ BitVec 32) (_ BitVec 64))) (size!26242 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53656)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53656 (_ BitVec 32)) Bool)

(assert (=> b!908692 (= res!613455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!908693 () Bool)

(declare-fun e!509333 () Bool)

(declare-fun tp_is_empty!18817 () Bool)

(assert (=> b!908693 (= e!509333 tp_is_empty!18817)))

(declare-fun mapNonEmpty!29941 () Bool)

(declare-fun mapRes!29941 () Bool)

(declare-fun tp!57462 () Bool)

(assert (=> mapNonEmpty!29941 (= mapRes!29941 (and tp!57462 e!509333))))

(declare-datatypes ((V!30055 0))(
  ( (V!30056 (val!9459 Int)) )
))
(declare-datatypes ((ValueCell!8927 0))(
  ( (ValueCellFull!8927 (v!11966 V!30055)) (EmptyCell!8927) )
))
(declare-datatypes ((array!53658 0))(
  ( (array!53659 (arr!25783 (Array (_ BitVec 32) ValueCell!8927)) (size!26243 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53658)

(declare-fun mapValue!29941 () ValueCell!8927)

(declare-fun mapRest!29941 () (Array (_ BitVec 32) ValueCell!8927))

(declare-fun mapKey!29941 () (_ BitVec 32))

(assert (=> mapNonEmpty!29941 (= (arr!25783 _values!1152) (store mapRest!29941 mapKey!29941 mapValue!29941))))

(declare-fun b!908694 () Bool)

(declare-fun res!613448 () Bool)

(assert (=> b!908694 (=> (not res!613448) (not e!509335))))

(declare-datatypes ((List!18210 0))(
  ( (Nil!18207) (Cons!18206 (h!19352 (_ BitVec 64)) (t!25789 List!18210)) )
))
(declare-fun arrayNoDuplicates!0 (array!53656 (_ BitVec 32) List!18210) Bool)

(assert (=> b!908694 (= res!613448 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18207))))

(declare-fun mapIsEmpty!29941 () Bool)

(assert (=> mapIsEmpty!29941 mapRes!29941))

(declare-fun b!908695 () Bool)

(declare-fun res!613451 () Bool)

(assert (=> b!908695 (=> (not res!613451) (not e!509335))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!908695 (= res!613451 (and (= (size!26243 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26242 _keys!1386) (size!26243 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!908696 () Bool)

(declare-fun res!613453 () Bool)

(declare-fun e!509336 () Bool)

(assert (=> b!908696 (=> res!613453 e!509336)))

(declare-fun lt!409807 () V!30055)

(declare-fun k!1033 () (_ BitVec 64))

(declare-datatypes ((tuple2!12356 0))(
  ( (tuple2!12357 (_1!6188 (_ BitVec 64)) (_2!6188 V!30055)) )
))
(declare-datatypes ((List!18211 0))(
  ( (Nil!18208) (Cons!18207 (h!19353 tuple2!12356) (t!25790 List!18211)) )
))
(declare-datatypes ((ListLongMap!11067 0))(
  ( (ListLongMap!11068 (toList!5549 List!18211)) )
))
(declare-fun lt!409809 () ListLongMap!11067)

(declare-fun apply!521 (ListLongMap!11067 (_ BitVec 64)) V!30055)

(assert (=> b!908696 (= res!613453 (not (= (apply!521 lt!409809 k!1033) lt!409807)))))

(declare-fun res!613449 () Bool)

(assert (=> start!77868 (=> (not res!613449) (not e!509335))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77868 (= res!613449 (validMask!0 mask!1756))))

(assert (=> start!77868 e!509335))

(declare-fun e!509332 () Bool)

(declare-fun array_inv!20160 (array!53658) Bool)

(assert (=> start!77868 (and (array_inv!20160 _values!1152) e!509332)))

(assert (=> start!77868 tp!57463))

(assert (=> start!77868 true))

(assert (=> start!77868 tp_is_empty!18817))

(declare-fun array_inv!20161 (array!53656) Bool)

(assert (=> start!77868 (array_inv!20161 _keys!1386)))

(declare-fun b!908697 () Bool)

(declare-fun e!509337 () Bool)

(assert (=> b!908697 (= e!509332 (and e!509337 mapRes!29941))))

(declare-fun condMapEmpty!29941 () Bool)

(declare-fun mapDefault!29941 () ValueCell!8927)

