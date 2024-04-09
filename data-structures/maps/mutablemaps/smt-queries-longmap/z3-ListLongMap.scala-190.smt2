; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3760 () Bool)

(assert start!3760)

(declare-fun b!26281 () Bool)

(declare-fun e!17084 () Bool)

(declare-fun tp_is_empty!1083 () Bool)

(assert (=> b!26281 (= e!17084 tp_is_empty!1083)))

(declare-fun b!26282 () Bool)

(declare-fun e!17086 () Bool)

(declare-fun e!17085 () Bool)

(declare-fun mapRes!1141 () Bool)

(assert (=> b!26282 (= e!17086 (and e!17085 mapRes!1141))))

(declare-fun condMapEmpty!1141 () Bool)

(declare-datatypes ((V!1269 0))(
  ( (V!1270 (val!568 Int)) )
))
(declare-datatypes ((ValueCell!342 0))(
  ( (ValueCellFull!342 (v!1654 V!1269)) (EmptyCell!342) )
))
(declare-datatypes ((array!1397 0))(
  ( (array!1398 (arr!656 (Array (_ BitVec 32) ValueCell!342)) (size!757 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1397)

(declare-fun mapDefault!1141 () ValueCell!342)

(assert (=> b!26282 (= condMapEmpty!1141 (= (arr!656 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!342)) mapDefault!1141)))))

(declare-fun b!26283 () Bool)

(assert (=> b!26283 (= e!17085 tp_is_empty!1083)))

(declare-fun b!26284 () Bool)

(declare-fun res!15604 () Bool)

(declare-fun e!17083 () Bool)

(assert (=> b!26284 (=> (not res!15604) (not e!17083))))

(declare-datatypes ((array!1399 0))(
  ( (array!1400 (arr!657 (Array (_ BitVec 32) (_ BitVec 64))) (size!758 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1399)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1399 (_ BitVec 32)) Bool)

(assert (=> b!26284 (= res!15604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!26285 () Bool)

(assert (=> b!26285 (= e!17083 false)))

(declare-fun lt!10344 () Bool)

(declare-datatypes ((List!580 0))(
  ( (Nil!577) (Cons!576 (h!1143 (_ BitVec 64)) (t!3269 List!580)) )
))
(declare-fun arrayNoDuplicates!0 (array!1399 (_ BitVec 32) List!580) Bool)

(assert (=> b!26285 (= lt!10344 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!577))))

(declare-fun b!26286 () Bool)

(declare-fun res!15603 () Bool)

(assert (=> b!26286 (=> (not res!15603) (not e!17083))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!26286 (= res!15603 (and (= (size!757 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!758 _keys!1833) (size!757 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun res!15602 () Bool)

(assert (=> start!3760 (=> (not res!15602) (not e!17083))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3760 (= res!15602 (validMask!0 mask!2294))))

(assert (=> start!3760 e!17083))

(assert (=> start!3760 true))

(declare-fun array_inv!453 (array!1397) Bool)

(assert (=> start!3760 (and (array_inv!453 _values!1501) e!17086)))

(declare-fun array_inv!454 (array!1399) Bool)

(assert (=> start!3760 (array_inv!454 _keys!1833)))

(declare-fun mapNonEmpty!1141 () Bool)

(declare-fun tp!3661 () Bool)

(assert (=> mapNonEmpty!1141 (= mapRes!1141 (and tp!3661 e!17084))))

(declare-fun mapRest!1141 () (Array (_ BitVec 32) ValueCell!342))

(declare-fun mapValue!1141 () ValueCell!342)

(declare-fun mapKey!1141 () (_ BitVec 32))

(assert (=> mapNonEmpty!1141 (= (arr!656 _values!1501) (store mapRest!1141 mapKey!1141 mapValue!1141))))

(declare-fun mapIsEmpty!1141 () Bool)

(assert (=> mapIsEmpty!1141 mapRes!1141))

(assert (= (and start!3760 res!15602) b!26286))

(assert (= (and b!26286 res!15603) b!26284))

(assert (= (and b!26284 res!15604) b!26285))

(assert (= (and b!26282 condMapEmpty!1141) mapIsEmpty!1141))

(assert (= (and b!26282 (not condMapEmpty!1141)) mapNonEmpty!1141))

(get-info :version)

(assert (= (and mapNonEmpty!1141 ((_ is ValueCellFull!342) mapValue!1141)) b!26281))

(assert (= (and b!26282 ((_ is ValueCellFull!342) mapDefault!1141)) b!26283))

(assert (= start!3760 b!26282))

(declare-fun m!21121 () Bool)

(assert (=> b!26284 m!21121))

(declare-fun m!21123 () Bool)

(assert (=> b!26285 m!21123))

(declare-fun m!21125 () Bool)

(assert (=> start!3760 m!21125))

(declare-fun m!21127 () Bool)

(assert (=> start!3760 m!21127))

(declare-fun m!21129 () Bool)

(assert (=> start!3760 m!21129))

(declare-fun m!21131 () Bool)

(assert (=> mapNonEmpty!1141 m!21131))

(check-sat (not start!3760) (not b!26285) (not b!26284) tp_is_empty!1083 (not mapNonEmpty!1141))
(check-sat)
