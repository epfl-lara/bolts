; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3778 () Bool)

(assert start!3778)

(declare-fun b!26443 () Bool)

(declare-fun e!17219 () Bool)

(assert (=> b!26443 (= e!17219 false)))

(declare-fun lt!10371 () Bool)

(declare-datatypes ((array!1433 0))(
  ( (array!1434 (arr!674 (Array (_ BitVec 32) (_ BitVec 64))) (size!775 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1433)

(declare-datatypes ((List!587 0))(
  ( (Nil!584) (Cons!583 (h!1150 (_ BitVec 64)) (t!3276 List!587)) )
))
(declare-fun arrayNoDuplicates!0 (array!1433 (_ BitVec 32) List!587) Bool)

(assert (=> b!26443 (= lt!10371 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!584))))

(declare-fun res!15683 () Bool)

(assert (=> start!3778 (=> (not res!15683) (not e!17219))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3778 (= res!15683 (validMask!0 mask!2294))))

(assert (=> start!3778 e!17219))

(assert (=> start!3778 true))

(declare-datatypes ((V!1293 0))(
  ( (V!1294 (val!577 Int)) )
))
(declare-datatypes ((ValueCell!351 0))(
  ( (ValueCellFull!351 (v!1663 V!1293)) (EmptyCell!351) )
))
(declare-datatypes ((array!1435 0))(
  ( (array!1436 (arr!675 (Array (_ BitVec 32) ValueCell!351)) (size!776 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1435)

(declare-fun e!17218 () Bool)

(declare-fun array_inv!465 (array!1435) Bool)

(assert (=> start!3778 (and (array_inv!465 _values!1501) e!17218)))

(declare-fun array_inv!466 (array!1433) Bool)

(assert (=> start!3778 (array_inv!466 _keys!1833)))

(declare-fun mapIsEmpty!1168 () Bool)

(declare-fun mapRes!1168 () Bool)

(assert (=> mapIsEmpty!1168 mapRes!1168))

(declare-fun b!26444 () Bool)

(declare-fun e!17217 () Bool)

(declare-fun tp_is_empty!1101 () Bool)

(assert (=> b!26444 (= e!17217 tp_is_empty!1101)))

(declare-fun b!26445 () Bool)

(declare-fun res!15684 () Bool)

(assert (=> b!26445 (=> (not res!15684) (not e!17219))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1433 (_ BitVec 32)) Bool)

(assert (=> b!26445 (= res!15684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!26446 () Bool)

(declare-fun e!17221 () Bool)

(assert (=> b!26446 (= e!17218 (and e!17221 mapRes!1168))))

(declare-fun condMapEmpty!1168 () Bool)

(declare-fun mapDefault!1168 () ValueCell!351)

(assert (=> b!26446 (= condMapEmpty!1168 (= (arr!675 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!351)) mapDefault!1168)))))

(declare-fun b!26447 () Bool)

(assert (=> b!26447 (= e!17221 tp_is_empty!1101)))

(declare-fun mapNonEmpty!1168 () Bool)

(declare-fun tp!3688 () Bool)

(assert (=> mapNonEmpty!1168 (= mapRes!1168 (and tp!3688 e!17217))))

(declare-fun mapValue!1168 () ValueCell!351)

(declare-fun mapKey!1168 () (_ BitVec 32))

(declare-fun mapRest!1168 () (Array (_ BitVec 32) ValueCell!351))

(assert (=> mapNonEmpty!1168 (= (arr!675 _values!1501) (store mapRest!1168 mapKey!1168 mapValue!1168))))

(declare-fun b!26448 () Bool)

(declare-fun res!15685 () Bool)

(assert (=> b!26448 (=> (not res!15685) (not e!17219))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!26448 (= res!15685 (and (= (size!776 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!775 _keys!1833) (size!776 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(assert (= (and start!3778 res!15683) b!26448))

(assert (= (and b!26448 res!15685) b!26445))

(assert (= (and b!26445 res!15684) b!26443))

(assert (= (and b!26446 condMapEmpty!1168) mapIsEmpty!1168))

(assert (= (and b!26446 (not condMapEmpty!1168)) mapNonEmpty!1168))

(get-info :version)

(assert (= (and mapNonEmpty!1168 ((_ is ValueCellFull!351) mapValue!1168)) b!26444))

(assert (= (and b!26446 ((_ is ValueCellFull!351) mapDefault!1168)) b!26447))

(assert (= start!3778 b!26446))

(declare-fun m!21229 () Bool)

(assert (=> b!26443 m!21229))

(declare-fun m!21231 () Bool)

(assert (=> start!3778 m!21231))

(declare-fun m!21233 () Bool)

(assert (=> start!3778 m!21233))

(declare-fun m!21235 () Bool)

(assert (=> start!3778 m!21235))

(declare-fun m!21237 () Bool)

(assert (=> b!26445 m!21237))

(declare-fun m!21239 () Bool)

(assert (=> mapNonEmpty!1168 m!21239))

(check-sat (not start!3778) (not b!26443) tp_is_empty!1101 (not mapNonEmpty!1168) (not b!26445))
(check-sat)
