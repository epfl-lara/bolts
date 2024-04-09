; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77556 () Bool)

(assert start!77556)

(declare-fun b_free!16113 () Bool)

(declare-fun b_next!16113 () Bool)

(assert (=> start!77556 (= b_free!16113 (not b_next!16113))))

(declare-fun tp!56601 () Bool)

(declare-fun b_and!26497 () Bool)

(assert (=> start!77556 (= tp!56601 b_and!26497)))

(declare-fun b!903170 () Bool)

(declare-fun e!506044 () Bool)

(declare-fun tp_is_empty!18531 () Bool)

(assert (=> b!903170 (= e!506044 tp_is_empty!18531)))

(declare-fun mapNonEmpty!29509 () Bool)

(declare-fun mapRes!29509 () Bool)

(declare-fun tp!56602 () Bool)

(assert (=> mapNonEmpty!29509 (= mapRes!29509 (and tp!56602 e!506044))))

(declare-datatypes ((V!29673 0))(
  ( (V!29674 (val!9316 Int)) )
))
(declare-datatypes ((ValueCell!8784 0))(
  ( (ValueCellFull!8784 (v!11821 V!29673)) (EmptyCell!8784) )
))
(declare-datatypes ((array!53104 0))(
  ( (array!53105 (arr!25507 (Array (_ BitVec 32) ValueCell!8784)) (size!25967 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53104)

(declare-fun mapKey!29509 () (_ BitVec 32))

(declare-fun mapValue!29509 () ValueCell!8784)

(declare-fun mapRest!29509 () (Array (_ BitVec 32) ValueCell!8784))

(assert (=> mapNonEmpty!29509 (= (arr!25507 _values!1152) (store mapRest!29509 mapKey!29509 mapValue!29509))))

(declare-fun b!903171 () Bool)

(declare-fun res!609486 () Bool)

(declare-fun e!506046 () Bool)

(assert (=> b!903171 (=> (not res!609486) (not e!506046))))

(declare-datatypes ((array!53106 0))(
  ( (array!53107 (arr!25508 (Array (_ BitVec 32) (_ BitVec 64))) (size!25968 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53106)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53106 (_ BitVec 32)) Bool)

(assert (=> b!903171 (= res!609486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!903172 () Bool)

(assert (=> b!903172 (= e!506046 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29673)

(declare-fun lt!407936 () Bool)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29673)

(declare-datatypes ((tuple2!12118 0))(
  ( (tuple2!12119 (_1!6069 (_ BitVec 64)) (_2!6069 V!29673)) )
))
(declare-datatypes ((List!17994 0))(
  ( (Nil!17991) (Cons!17990 (h!19136 tuple2!12118) (t!25385 List!17994)) )
))
(declare-datatypes ((ListLongMap!10829 0))(
  ( (ListLongMap!10830 (toList!5430 List!17994)) )
))
(declare-fun contains!4443 (ListLongMap!10829 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2667 (array!53106 array!53104 (_ BitVec 32) (_ BitVec 32) V!29673 V!29673 (_ BitVec 32) Int) ListLongMap!10829)

(assert (=> b!903172 (= lt!407936 (contains!4443 (getCurrentListMap!2667 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!903174 () Bool)

(declare-fun e!506047 () Bool)

(declare-fun e!506045 () Bool)

(assert (=> b!903174 (= e!506047 (and e!506045 mapRes!29509))))

(declare-fun condMapEmpty!29509 () Bool)

(declare-fun mapDefault!29509 () ValueCell!8784)

(assert (=> b!903174 (= condMapEmpty!29509 (= (arr!25507 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8784)) mapDefault!29509)))))

(declare-fun b!903175 () Bool)

(assert (=> b!903175 (= e!506045 tp_is_empty!18531)))

(declare-fun res!609488 () Bool)

(assert (=> start!77556 (=> (not res!609488) (not e!506046))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77556 (= res!609488 (validMask!0 mask!1756))))

(assert (=> start!77556 e!506046))

(declare-fun array_inv!19966 (array!53104) Bool)

(assert (=> start!77556 (and (array_inv!19966 _values!1152) e!506047)))

(assert (=> start!77556 tp!56601))

(assert (=> start!77556 true))

(assert (=> start!77556 tp_is_empty!18531))

(declare-fun array_inv!19967 (array!53106) Bool)

(assert (=> start!77556 (array_inv!19967 _keys!1386)))

(declare-fun b!903173 () Bool)

(declare-fun res!609489 () Bool)

(assert (=> b!903173 (=> (not res!609489) (not e!506046))))

(assert (=> b!903173 (= res!609489 (and (= (size!25967 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25968 _keys!1386) (size!25967 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!29509 () Bool)

(assert (=> mapIsEmpty!29509 mapRes!29509))

(declare-fun b!903176 () Bool)

(declare-fun res!609487 () Bool)

(assert (=> b!903176 (=> (not res!609487) (not e!506046))))

(declare-datatypes ((List!17995 0))(
  ( (Nil!17992) (Cons!17991 (h!19137 (_ BitVec 64)) (t!25386 List!17995)) )
))
(declare-fun arrayNoDuplicates!0 (array!53106 (_ BitVec 32) List!17995) Bool)

(assert (=> b!903176 (= res!609487 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17992))))

(assert (= (and start!77556 res!609488) b!903173))

(assert (= (and b!903173 res!609489) b!903171))

(assert (= (and b!903171 res!609486) b!903176))

(assert (= (and b!903176 res!609487) b!903172))

(assert (= (and b!903174 condMapEmpty!29509) mapIsEmpty!29509))

(assert (= (and b!903174 (not condMapEmpty!29509)) mapNonEmpty!29509))

(get-info :version)

(assert (= (and mapNonEmpty!29509 ((_ is ValueCellFull!8784) mapValue!29509)) b!903170))

(assert (= (and b!903174 ((_ is ValueCellFull!8784) mapDefault!29509)) b!903175))

(assert (= start!77556 b!903174))

(declare-fun m!838989 () Bool)

(assert (=> start!77556 m!838989))

(declare-fun m!838991 () Bool)

(assert (=> start!77556 m!838991))

(declare-fun m!838993 () Bool)

(assert (=> start!77556 m!838993))

(declare-fun m!838995 () Bool)

(assert (=> b!903176 m!838995))

(declare-fun m!838997 () Bool)

(assert (=> b!903171 m!838997))

(declare-fun m!838999 () Bool)

(assert (=> mapNonEmpty!29509 m!838999))

(declare-fun m!839001 () Bool)

(assert (=> b!903172 m!839001))

(assert (=> b!903172 m!839001))

(declare-fun m!839003 () Bool)

(assert (=> b!903172 m!839003))

(check-sat tp_is_empty!18531 (not b!903172) (not mapNonEmpty!29509) (not b_next!16113) (not b!903176) (not start!77556) (not b!903171) b_and!26497)
(check-sat b_and!26497 (not b_next!16113))
