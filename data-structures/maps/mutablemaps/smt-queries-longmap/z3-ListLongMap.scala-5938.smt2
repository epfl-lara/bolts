; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77474 () Bool)

(assert start!77474)

(declare-fun b!902446 () Bool)

(declare-fun e!505478 () Bool)

(declare-fun tp_is_empty!18459 () Bool)

(assert (=> b!902446 (= e!505478 tp_is_empty!18459)))

(declare-fun b!902447 () Bool)

(declare-fun e!505480 () Bool)

(assert (=> b!902447 (= e!505480 tp_is_empty!18459)))

(declare-fun b!902448 () Bool)

(declare-fun res!609107 () Bool)

(declare-fun e!505477 () Bool)

(assert (=> b!902448 (=> (not res!609107) (not e!505477))))

(declare-datatypes ((array!52970 0))(
  ( (array!52971 (arr!25441 (Array (_ BitVec 32) (_ BitVec 64))) (size!25901 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52970)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52970 (_ BitVec 32)) Bool)

(assert (=> b!902448 (= res!609107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!902449 () Bool)

(declare-fun res!609108 () Bool)

(assert (=> b!902449 (=> (not res!609108) (not e!505477))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-datatypes ((V!29577 0))(
  ( (V!29578 (val!9280 Int)) )
))
(declare-datatypes ((ValueCell!8748 0))(
  ( (ValueCellFull!8748 (v!11785 V!29577)) (EmptyCell!8748) )
))
(declare-datatypes ((array!52972 0))(
  ( (array!52973 (arr!25442 (Array (_ BitVec 32) ValueCell!8748)) (size!25902 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52972)

(assert (=> b!902449 (= res!609108 (and (= (size!25902 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25901 _keys!1386) (size!25902 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!902450 () Bool)

(assert (=> b!902450 (= e!505477 false)))

(declare-fun lt!407828 () Bool)

(declare-datatypes ((List!17965 0))(
  ( (Nil!17962) (Cons!17961 (h!19107 (_ BitVec 64)) (t!25356 List!17965)) )
))
(declare-fun arrayNoDuplicates!0 (array!52970 (_ BitVec 32) List!17965) Bool)

(assert (=> b!902450 (= lt!407828 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17962))))

(declare-fun b!902451 () Bool)

(declare-fun e!505479 () Bool)

(declare-fun mapRes!29398 () Bool)

(assert (=> b!902451 (= e!505479 (and e!505478 mapRes!29398))))

(declare-fun condMapEmpty!29398 () Bool)

(declare-fun mapDefault!29398 () ValueCell!8748)

(assert (=> b!902451 (= condMapEmpty!29398 (= (arr!25442 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8748)) mapDefault!29398)))))

(declare-fun mapNonEmpty!29398 () Bool)

(declare-fun tp!56458 () Bool)

(assert (=> mapNonEmpty!29398 (= mapRes!29398 (and tp!56458 e!505480))))

(declare-fun mapKey!29398 () (_ BitVec 32))

(declare-fun mapValue!29398 () ValueCell!8748)

(declare-fun mapRest!29398 () (Array (_ BitVec 32) ValueCell!8748))

(assert (=> mapNonEmpty!29398 (= (arr!25442 _values!1152) (store mapRest!29398 mapKey!29398 mapValue!29398))))

(declare-fun mapIsEmpty!29398 () Bool)

(assert (=> mapIsEmpty!29398 mapRes!29398))

(declare-fun res!609106 () Bool)

(assert (=> start!77474 (=> (not res!609106) (not e!505477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77474 (= res!609106 (validMask!0 mask!1756))))

(assert (=> start!77474 e!505477))

(assert (=> start!77474 true))

(declare-fun array_inv!19924 (array!52972) Bool)

(assert (=> start!77474 (and (array_inv!19924 _values!1152) e!505479)))

(declare-fun array_inv!19925 (array!52970) Bool)

(assert (=> start!77474 (array_inv!19925 _keys!1386)))

(assert (= (and start!77474 res!609106) b!902449))

(assert (= (and b!902449 res!609108) b!902448))

(assert (= (and b!902448 res!609107) b!902450))

(assert (= (and b!902451 condMapEmpty!29398) mapIsEmpty!29398))

(assert (= (and b!902451 (not condMapEmpty!29398)) mapNonEmpty!29398))

(get-info :version)

(assert (= (and mapNonEmpty!29398 ((_ is ValueCellFull!8748) mapValue!29398)) b!902447))

(assert (= (and b!902451 ((_ is ValueCellFull!8748) mapDefault!29398)) b!902446))

(assert (= start!77474 b!902451))

(declare-fun m!838499 () Bool)

(assert (=> b!902448 m!838499))

(declare-fun m!838501 () Bool)

(assert (=> b!902450 m!838501))

(declare-fun m!838503 () Bool)

(assert (=> mapNonEmpty!29398 m!838503))

(declare-fun m!838505 () Bool)

(assert (=> start!77474 m!838505))

(declare-fun m!838507 () Bool)

(assert (=> start!77474 m!838507))

(declare-fun m!838509 () Bool)

(assert (=> start!77474 m!838509))

(check-sat (not b!902450) (not mapNonEmpty!29398) (not start!77474) tp_is_empty!18459 (not b!902448))
(check-sat)
