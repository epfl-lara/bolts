; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77550 () Bool)

(assert start!77550)

(declare-fun b_free!16107 () Bool)

(declare-fun b_next!16107 () Bool)

(assert (=> start!77550 (= b_free!16107 (not b_next!16107))))

(declare-fun tp!56584 () Bool)

(declare-fun b_and!26491 () Bool)

(assert (=> start!77550 (= tp!56584 b_and!26491)))

(declare-fun b!903107 () Bool)

(declare-fun e!505999 () Bool)

(declare-fun e!506000 () Bool)

(declare-fun mapRes!29500 () Bool)

(assert (=> b!903107 (= e!505999 (and e!506000 mapRes!29500))))

(declare-fun condMapEmpty!29500 () Bool)

(declare-datatypes ((V!29665 0))(
  ( (V!29666 (val!9313 Int)) )
))
(declare-datatypes ((ValueCell!8781 0))(
  ( (ValueCellFull!8781 (v!11818 V!29665)) (EmptyCell!8781) )
))
(declare-datatypes ((array!53094 0))(
  ( (array!53095 (arr!25502 (Array (_ BitVec 32) ValueCell!8781)) (size!25962 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53094)

(declare-fun mapDefault!29500 () ValueCell!8781)

(assert (=> b!903107 (= condMapEmpty!29500 (= (arr!25502 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8781)) mapDefault!29500)))))

(declare-fun b!903108 () Bool)

(declare-fun e!506001 () Bool)

(declare-fun tp_is_empty!18525 () Bool)

(assert (=> b!903108 (= e!506001 tp_is_empty!18525)))

(declare-fun b!903109 () Bool)

(declare-fun res!609450 () Bool)

(declare-fun e!506003 () Bool)

(assert (=> b!903109 (=> (not res!609450) (not e!506003))))

(declare-datatypes ((array!53096 0))(
  ( (array!53097 (arr!25503 (Array (_ BitVec 32) (_ BitVec 64))) (size!25963 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53096)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53096 (_ BitVec 32)) Bool)

(assert (=> b!903109 (= res!609450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!903110 () Bool)

(assert (=> b!903110 (= e!506003 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29665)

(declare-fun lt!407927 () Bool)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29665)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-datatypes ((tuple2!12114 0))(
  ( (tuple2!12115 (_1!6067 (_ BitVec 64)) (_2!6067 V!29665)) )
))
(declare-datatypes ((List!17990 0))(
  ( (Nil!17987) (Cons!17986 (h!19132 tuple2!12114) (t!25381 List!17990)) )
))
(declare-datatypes ((ListLongMap!10825 0))(
  ( (ListLongMap!10826 (toList!5428 List!17990)) )
))
(declare-fun contains!4441 (ListLongMap!10825 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2665 (array!53096 array!53094 (_ BitVec 32) (_ BitVec 32) V!29665 V!29665 (_ BitVec 32) Int) ListLongMap!10825)

(assert (=> b!903110 (= lt!407927 (contains!4441 (getCurrentListMap!2665 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!903111 () Bool)

(assert (=> b!903111 (= e!506000 tp_is_empty!18525)))

(declare-fun mapIsEmpty!29500 () Bool)

(assert (=> mapIsEmpty!29500 mapRes!29500))

(declare-fun res!609451 () Bool)

(assert (=> start!77550 (=> (not res!609451) (not e!506003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77550 (= res!609451 (validMask!0 mask!1756))))

(assert (=> start!77550 e!506003))

(declare-fun array_inv!19964 (array!53094) Bool)

(assert (=> start!77550 (and (array_inv!19964 _values!1152) e!505999)))

(assert (=> start!77550 tp!56584))

(assert (=> start!77550 true))

(assert (=> start!77550 tp_is_empty!18525))

(declare-fun array_inv!19965 (array!53096) Bool)

(assert (=> start!77550 (array_inv!19965 _keys!1386)))

(declare-fun b!903112 () Bool)

(declare-fun res!609453 () Bool)

(assert (=> b!903112 (=> (not res!609453) (not e!506003))))

(assert (=> b!903112 (= res!609453 (and (= (size!25962 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25963 _keys!1386) (size!25962 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!903113 () Bool)

(declare-fun res!609452 () Bool)

(assert (=> b!903113 (=> (not res!609452) (not e!506003))))

(declare-datatypes ((List!17991 0))(
  ( (Nil!17988) (Cons!17987 (h!19133 (_ BitVec 64)) (t!25382 List!17991)) )
))
(declare-fun arrayNoDuplicates!0 (array!53096 (_ BitVec 32) List!17991) Bool)

(assert (=> b!903113 (= res!609452 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17988))))

(declare-fun mapNonEmpty!29500 () Bool)

(declare-fun tp!56583 () Bool)

(assert (=> mapNonEmpty!29500 (= mapRes!29500 (and tp!56583 e!506001))))

(declare-fun mapValue!29500 () ValueCell!8781)

(declare-fun mapKey!29500 () (_ BitVec 32))

(declare-fun mapRest!29500 () (Array (_ BitVec 32) ValueCell!8781))

(assert (=> mapNonEmpty!29500 (= (arr!25502 _values!1152) (store mapRest!29500 mapKey!29500 mapValue!29500))))

(assert (= (and start!77550 res!609451) b!903112))

(assert (= (and b!903112 res!609453) b!903109))

(assert (= (and b!903109 res!609450) b!903113))

(assert (= (and b!903113 res!609452) b!903110))

(assert (= (and b!903107 condMapEmpty!29500) mapIsEmpty!29500))

(assert (= (and b!903107 (not condMapEmpty!29500)) mapNonEmpty!29500))

(get-info :version)

(assert (= (and mapNonEmpty!29500 ((_ is ValueCellFull!8781) mapValue!29500)) b!903108))

(assert (= (and b!903107 ((_ is ValueCellFull!8781) mapDefault!29500)) b!903111))

(assert (= start!77550 b!903107))

(declare-fun m!838941 () Bool)

(assert (=> b!903110 m!838941))

(assert (=> b!903110 m!838941))

(declare-fun m!838943 () Bool)

(assert (=> b!903110 m!838943))

(declare-fun m!838945 () Bool)

(assert (=> start!77550 m!838945))

(declare-fun m!838947 () Bool)

(assert (=> start!77550 m!838947))

(declare-fun m!838949 () Bool)

(assert (=> start!77550 m!838949))

(declare-fun m!838951 () Bool)

(assert (=> b!903113 m!838951))

(declare-fun m!838953 () Bool)

(assert (=> mapNonEmpty!29500 m!838953))

(declare-fun m!838955 () Bool)

(assert (=> b!903109 m!838955))

(check-sat (not b!903110) (not start!77550) (not b!903113) (not mapNonEmpty!29500) (not b_next!16107) (not b!903109) tp_is_empty!18525 b_and!26491)
(check-sat b_and!26491 (not b_next!16107))
