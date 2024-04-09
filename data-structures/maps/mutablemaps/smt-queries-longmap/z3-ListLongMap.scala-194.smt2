; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3784 () Bool)

(assert start!3784)

(declare-fun mapIsEmpty!1177 () Bool)

(declare-fun mapRes!1177 () Bool)

(assert (=> mapIsEmpty!1177 mapRes!1177))

(declare-fun res!15711 () Bool)

(declare-fun e!17262 () Bool)

(assert (=> start!3784 (=> (not res!15711) (not e!17262))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3784 (= res!15711 (validMask!0 mask!2294))))

(assert (=> start!3784 e!17262))

(assert (=> start!3784 true))

(declare-datatypes ((V!1301 0))(
  ( (V!1302 (val!580 Int)) )
))
(declare-datatypes ((ValueCell!354 0))(
  ( (ValueCellFull!354 (v!1666 V!1301)) (EmptyCell!354) )
))
(declare-datatypes ((array!1445 0))(
  ( (array!1446 (arr!680 (Array (_ BitVec 32) ValueCell!354)) (size!781 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1445)

(declare-fun e!17266 () Bool)

(declare-fun array_inv!467 (array!1445) Bool)

(assert (=> start!3784 (and (array_inv!467 _values!1501) e!17266)))

(declare-datatypes ((array!1447 0))(
  ( (array!1448 (arr!681 (Array (_ BitVec 32) (_ BitVec 64))) (size!782 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1447)

(declare-fun array_inv!468 (array!1447) Bool)

(assert (=> start!3784 (array_inv!468 _keys!1833)))

(declare-fun b!26497 () Bool)

(declare-fun e!17265 () Bool)

(declare-fun tp_is_empty!1107 () Bool)

(assert (=> b!26497 (= e!17265 tp_is_empty!1107)))

(declare-fun b!26498 () Bool)

(declare-fun res!15710 () Bool)

(assert (=> b!26498 (=> (not res!15710) (not e!17262))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!26498 (= res!15710 (and (= (size!781 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!782 _keys!1833) (size!781 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!26499 () Bool)

(declare-fun res!15712 () Bool)

(assert (=> b!26499 (=> (not res!15712) (not e!17262))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1447 (_ BitVec 32)) Bool)

(assert (=> b!26499 (= res!15712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1177 () Bool)

(declare-fun tp!3697 () Bool)

(assert (=> mapNonEmpty!1177 (= mapRes!1177 (and tp!3697 e!17265))))

(declare-fun mapKey!1177 () (_ BitVec 32))

(declare-fun mapValue!1177 () ValueCell!354)

(declare-fun mapRest!1177 () (Array (_ BitVec 32) ValueCell!354))

(assert (=> mapNonEmpty!1177 (= (arr!680 _values!1501) (store mapRest!1177 mapKey!1177 mapValue!1177))))

(declare-fun b!26500 () Bool)

(assert (=> b!26500 (= e!17262 false)))

(declare-fun lt!10380 () Bool)

(declare-datatypes ((List!589 0))(
  ( (Nil!586) (Cons!585 (h!1152 (_ BitVec 64)) (t!3278 List!589)) )
))
(declare-fun arrayNoDuplicates!0 (array!1447 (_ BitVec 32) List!589) Bool)

(assert (=> b!26500 (= lt!10380 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!586))))

(declare-fun b!26501 () Bool)

(declare-fun e!17263 () Bool)

(assert (=> b!26501 (= e!17266 (and e!17263 mapRes!1177))))

(declare-fun condMapEmpty!1177 () Bool)

(declare-fun mapDefault!1177 () ValueCell!354)

(assert (=> b!26501 (= condMapEmpty!1177 (= (arr!680 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!354)) mapDefault!1177)))))

(declare-fun b!26502 () Bool)

(assert (=> b!26502 (= e!17263 tp_is_empty!1107)))

(assert (= (and start!3784 res!15711) b!26498))

(assert (= (and b!26498 res!15710) b!26499))

(assert (= (and b!26499 res!15712) b!26500))

(assert (= (and b!26501 condMapEmpty!1177) mapIsEmpty!1177))

(assert (= (and b!26501 (not condMapEmpty!1177)) mapNonEmpty!1177))

(get-info :version)

(assert (= (and mapNonEmpty!1177 ((_ is ValueCellFull!354) mapValue!1177)) b!26497))

(assert (= (and b!26501 ((_ is ValueCellFull!354) mapDefault!1177)) b!26502))

(assert (= start!3784 b!26501))

(declare-fun m!21265 () Bool)

(assert (=> start!3784 m!21265))

(declare-fun m!21267 () Bool)

(assert (=> start!3784 m!21267))

(declare-fun m!21269 () Bool)

(assert (=> start!3784 m!21269))

(declare-fun m!21271 () Bool)

(assert (=> b!26499 m!21271))

(declare-fun m!21273 () Bool)

(assert (=> mapNonEmpty!1177 m!21273))

(declare-fun m!21275 () Bool)

(assert (=> b!26500 m!21275))

(check-sat (not mapNonEmpty!1177) (not b!26500) (not start!3784) (not b!26499) tp_is_empty!1107)
(check-sat)
