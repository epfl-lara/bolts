; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77516 () Bool)

(assert start!77516)

(declare-fun b!902824 () Bool)

(declare-fun e!505794 () Bool)

(declare-fun tp_is_empty!18501 () Bool)

(assert (=> b!902824 (= e!505794 tp_is_empty!18501)))

(declare-fun b!902825 () Bool)

(declare-fun res!609296 () Bool)

(declare-fun e!505796 () Bool)

(assert (=> b!902825 (=> (not res!609296) (not e!505796))))

(declare-datatypes ((array!53048 0))(
  ( (array!53049 (arr!25480 (Array (_ BitVec 32) (_ BitVec 64))) (size!25940 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53048)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53048 (_ BitVec 32)) Bool)

(assert (=> b!902825 (= res!609296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!902826 () Bool)

(declare-fun res!609297 () Bool)

(assert (=> b!902826 (=> (not res!609297) (not e!505796))))

(declare-datatypes ((V!29633 0))(
  ( (V!29634 (val!9301 Int)) )
))
(declare-datatypes ((ValueCell!8769 0))(
  ( (ValueCellFull!8769 (v!11806 V!29633)) (EmptyCell!8769) )
))
(declare-datatypes ((array!53050 0))(
  ( (array!53051 (arr!25481 (Array (_ BitVec 32) ValueCell!8769)) (size!25941 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53050)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!902826 (= res!609297 (and (= (size!25941 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25940 _keys!1386) (size!25941 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!902827 () Bool)

(assert (=> b!902827 (= e!505796 false)))

(declare-fun lt!407891 () Bool)

(declare-datatypes ((List!17980 0))(
  ( (Nil!17977) (Cons!17976 (h!19122 (_ BitVec 64)) (t!25371 List!17980)) )
))
(declare-fun arrayNoDuplicates!0 (array!53048 (_ BitVec 32) List!17980) Bool)

(assert (=> b!902827 (= lt!407891 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17977))))

(declare-fun mapNonEmpty!29461 () Bool)

(declare-fun mapRes!29461 () Bool)

(declare-fun tp!56521 () Bool)

(declare-fun e!505792 () Bool)

(assert (=> mapNonEmpty!29461 (= mapRes!29461 (and tp!56521 e!505792))))

(declare-fun mapRest!29461 () (Array (_ BitVec 32) ValueCell!8769))

(declare-fun mapKey!29461 () (_ BitVec 32))

(declare-fun mapValue!29461 () ValueCell!8769)

(assert (=> mapNonEmpty!29461 (= (arr!25481 _values!1152) (store mapRest!29461 mapKey!29461 mapValue!29461))))

(declare-fun res!609295 () Bool)

(assert (=> start!77516 (=> (not res!609295) (not e!505796))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77516 (= res!609295 (validMask!0 mask!1756))))

(assert (=> start!77516 e!505796))

(assert (=> start!77516 true))

(declare-fun e!505795 () Bool)

(declare-fun array_inv!19950 (array!53050) Bool)

(assert (=> start!77516 (and (array_inv!19950 _values!1152) e!505795)))

(declare-fun array_inv!19951 (array!53048) Bool)

(assert (=> start!77516 (array_inv!19951 _keys!1386)))

(declare-fun mapIsEmpty!29461 () Bool)

(assert (=> mapIsEmpty!29461 mapRes!29461))

(declare-fun b!902828 () Bool)

(assert (=> b!902828 (= e!505795 (and e!505794 mapRes!29461))))

(declare-fun condMapEmpty!29461 () Bool)

(declare-fun mapDefault!29461 () ValueCell!8769)

(assert (=> b!902828 (= condMapEmpty!29461 (= (arr!25481 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8769)) mapDefault!29461)))))

(declare-fun b!902829 () Bool)

(assert (=> b!902829 (= e!505792 tp_is_empty!18501)))

(assert (= (and start!77516 res!609295) b!902826))

(assert (= (and b!902826 res!609297) b!902825))

(assert (= (and b!902825 res!609296) b!902827))

(assert (= (and b!902828 condMapEmpty!29461) mapIsEmpty!29461))

(assert (= (and b!902828 (not condMapEmpty!29461)) mapNonEmpty!29461))

(get-info :version)

(assert (= (and mapNonEmpty!29461 ((_ is ValueCellFull!8769) mapValue!29461)) b!902829))

(assert (= (and b!902828 ((_ is ValueCellFull!8769) mapDefault!29461)) b!902824))

(assert (= start!77516 b!902828))

(declare-fun m!838751 () Bool)

(assert (=> b!902825 m!838751))

(declare-fun m!838753 () Bool)

(assert (=> b!902827 m!838753))

(declare-fun m!838755 () Bool)

(assert (=> mapNonEmpty!29461 m!838755))

(declare-fun m!838757 () Bool)

(assert (=> start!77516 m!838757))

(declare-fun m!838759 () Bool)

(assert (=> start!77516 m!838759))

(declare-fun m!838761 () Bool)

(assert (=> start!77516 m!838761))

(check-sat (not b!902827) tp_is_empty!18501 (not mapNonEmpty!29461) (not b!902825) (not start!77516))
(check-sat)
