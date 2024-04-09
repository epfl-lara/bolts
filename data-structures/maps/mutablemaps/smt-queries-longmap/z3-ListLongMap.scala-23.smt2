; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!562 () Bool)

(assert start!562)

(declare-fun b!3393 () Bool)

(declare-fun e!1609 () Bool)

(declare-fun tp_is_empty!123 () Bool)

(assert (=> b!3393 (= e!1609 tp_is_empty!123)))

(declare-fun res!5156 () Bool)

(declare-fun e!1611 () Bool)

(assert (=> start!562 (=> (not res!5156) (not e!1611))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!562 (= res!5156 (validMask!0 mask!2250))))

(assert (=> start!562 e!1611))

(assert (=> start!562 true))

(declare-datatypes ((V!341 0))(
  ( (V!342 (val!67 Int)) )
))
(declare-datatypes ((ValueCell!45 0))(
  ( (ValueCellFull!45 (v!1154 V!341)) (EmptyCell!45) )
))
(declare-datatypes ((array!179 0))(
  ( (array!180 (arr!83 (Array (_ BitVec 32) ValueCell!45)) (size!145 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!179)

(declare-fun e!1612 () Bool)

(declare-fun array_inv!61 (array!179) Bool)

(assert (=> start!562 (and (array_inv!61 _values!1492) e!1612)))

(declare-datatypes ((array!181 0))(
  ( (array!182 (arr!84 (Array (_ BitVec 32) (_ BitVec 64))) (size!146 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!181)

(declare-fun array_inv!62 (array!181) Bool)

(assert (=> start!562 (array_inv!62 _keys!1806)))

(declare-fun mapNonEmpty!140 () Bool)

(declare-fun mapRes!140 () Bool)

(declare-fun tp!380 () Bool)

(assert (=> mapNonEmpty!140 (= mapRes!140 (and tp!380 e!1609))))

(declare-fun mapKey!140 () (_ BitVec 32))

(declare-fun mapRest!140 () (Array (_ BitVec 32) ValueCell!45))

(declare-fun mapValue!140 () ValueCell!45)

(assert (=> mapNonEmpty!140 (= (arr!83 _values!1492) (store mapRest!140 mapKey!140 mapValue!140))))

(declare-fun b!3394 () Bool)

(declare-fun e!1610 () Bool)

(assert (=> b!3394 (= e!1610 tp_is_empty!123)))

(declare-fun b!3395 () Bool)

(assert (=> b!3395 (= e!1612 (and e!1610 mapRes!140))))

(declare-fun condMapEmpty!140 () Bool)

(declare-fun mapDefault!140 () ValueCell!45)

(assert (=> b!3395 (= condMapEmpty!140 (= (arr!83 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!45)) mapDefault!140)))))

(declare-fun b!3396 () Bool)

(declare-fun res!5157 () Bool)

(assert (=> b!3396 (=> (not res!5157) (not e!1611))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!181 (_ BitVec 32)) Bool)

(assert (=> b!3396 (= res!5157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!3397 () Bool)

(assert (=> b!3397 (= e!1611 false)))

(declare-fun lt!468 () Bool)

(declare-datatypes ((List!53 0))(
  ( (Nil!50) (Cons!49 (h!615 (_ BitVec 64)) (t!2180 List!53)) )
))
(declare-fun arrayNoDuplicates!0 (array!181 (_ BitVec 32) List!53) Bool)

(assert (=> b!3397 (= lt!468 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!50))))

(declare-fun mapIsEmpty!140 () Bool)

(assert (=> mapIsEmpty!140 mapRes!140))

(declare-fun b!3398 () Bool)

(declare-fun res!5158 () Bool)

(assert (=> b!3398 (=> (not res!5158) (not e!1611))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3398 (= res!5158 (and (= (size!145 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!146 _keys!1806) (size!145 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(assert (= (and start!562 res!5156) b!3398))

(assert (= (and b!3398 res!5158) b!3396))

(assert (= (and b!3396 res!5157) b!3397))

(assert (= (and b!3395 condMapEmpty!140) mapIsEmpty!140))

(assert (= (and b!3395 (not condMapEmpty!140)) mapNonEmpty!140))

(get-info :version)

(assert (= (and mapNonEmpty!140 ((_ is ValueCellFull!45) mapValue!140)) b!3393))

(assert (= (and b!3395 ((_ is ValueCellFull!45) mapDefault!140)) b!3394))

(assert (= start!562 b!3395))

(declare-fun m!1625 () Bool)

(assert (=> start!562 m!1625))

(declare-fun m!1627 () Bool)

(assert (=> start!562 m!1627))

(declare-fun m!1629 () Bool)

(assert (=> start!562 m!1629))

(declare-fun m!1631 () Bool)

(assert (=> mapNonEmpty!140 m!1631))

(declare-fun m!1633 () Bool)

(assert (=> b!3396 m!1633))

(declare-fun m!1635 () Bool)

(assert (=> b!3397 m!1635))

(check-sat (not mapNonEmpty!140) (not start!562) tp_is_empty!123 (not b!3397) (not b!3396))
(check-sat)
