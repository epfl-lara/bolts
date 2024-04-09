; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!550 () Bool)

(assert start!550)

(declare-fun mapIsEmpty!122 () Bool)

(declare-fun mapRes!122 () Bool)

(assert (=> mapIsEmpty!122 mapRes!122))

(declare-fun b!3285 () Bool)

(declare-fun e!1523 () Bool)

(assert (=> b!3285 (= e!1523 false)))

(declare-fun lt!450 () Bool)

(declare-datatypes ((array!157 0))(
  ( (array!158 (arr!72 (Array (_ BitVec 32) (_ BitVec 64))) (size!134 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!157)

(declare-datatypes ((List!49 0))(
  ( (Nil!46) (Cons!45 (h!611 (_ BitVec 64)) (t!2176 List!49)) )
))
(declare-fun arrayNoDuplicates!0 (array!157 (_ BitVec 32) List!49) Bool)

(assert (=> b!3285 (= lt!450 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!46))))

(declare-fun b!3286 () Bool)

(declare-fun res!5102 () Bool)

(assert (=> b!3286 (=> (not res!5102) (not e!1523))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!157 (_ BitVec 32)) Bool)

(assert (=> b!3286 (= res!5102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!3287 () Bool)

(declare-fun e!1519 () Bool)

(declare-fun tp_is_empty!111 () Bool)

(assert (=> b!3287 (= e!1519 tp_is_empty!111)))

(declare-fun b!3288 () Bool)

(declare-fun e!1521 () Bool)

(declare-fun e!1520 () Bool)

(assert (=> b!3288 (= e!1521 (and e!1520 mapRes!122))))

(declare-fun condMapEmpty!122 () Bool)

(declare-datatypes ((V!325 0))(
  ( (V!326 (val!61 Int)) )
))
(declare-datatypes ((ValueCell!39 0))(
  ( (ValueCellFull!39 (v!1148 V!325)) (EmptyCell!39) )
))
(declare-datatypes ((array!159 0))(
  ( (array!160 (arr!73 (Array (_ BitVec 32) ValueCell!39)) (size!135 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!159)

(declare-fun mapDefault!122 () ValueCell!39)

(assert (=> b!3288 (= condMapEmpty!122 (= (arr!73 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!39)) mapDefault!122)))))

(declare-fun res!5104 () Bool)

(assert (=> start!550 (=> (not res!5104) (not e!1523))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!550 (= res!5104 (validMask!0 mask!2250))))

(assert (=> start!550 e!1523))

(assert (=> start!550 true))

(declare-fun array_inv!51 (array!159) Bool)

(assert (=> start!550 (and (array_inv!51 _values!1492) e!1521)))

(declare-fun array_inv!52 (array!157) Bool)

(assert (=> start!550 (array_inv!52 _keys!1806)))

(declare-fun b!3289 () Bool)

(declare-fun res!5103 () Bool)

(assert (=> b!3289 (=> (not res!5103) (not e!1523))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3289 (= res!5103 (and (= (size!135 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!134 _keys!1806) (size!135 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3290 () Bool)

(assert (=> b!3290 (= e!1520 tp_is_empty!111)))

(declare-fun mapNonEmpty!122 () Bool)

(declare-fun tp!362 () Bool)

(assert (=> mapNonEmpty!122 (= mapRes!122 (and tp!362 e!1519))))

(declare-fun mapValue!122 () ValueCell!39)

(declare-fun mapRest!122 () (Array (_ BitVec 32) ValueCell!39))

(declare-fun mapKey!122 () (_ BitVec 32))

(assert (=> mapNonEmpty!122 (= (arr!73 _values!1492) (store mapRest!122 mapKey!122 mapValue!122))))

(assert (= (and start!550 res!5104) b!3289))

(assert (= (and b!3289 res!5103) b!3286))

(assert (= (and b!3286 res!5102) b!3285))

(assert (= (and b!3288 condMapEmpty!122) mapIsEmpty!122))

(assert (= (and b!3288 (not condMapEmpty!122)) mapNonEmpty!122))

(get-info :version)

(assert (= (and mapNonEmpty!122 ((_ is ValueCellFull!39) mapValue!122)) b!3287))

(assert (= (and b!3288 ((_ is ValueCellFull!39) mapDefault!122)) b!3290))

(assert (= start!550 b!3288))

(declare-fun m!1553 () Bool)

(assert (=> b!3285 m!1553))

(declare-fun m!1555 () Bool)

(assert (=> b!3286 m!1555))

(declare-fun m!1557 () Bool)

(assert (=> start!550 m!1557))

(declare-fun m!1559 () Bool)

(assert (=> start!550 m!1559))

(declare-fun m!1561 () Bool)

(assert (=> start!550 m!1561))

(declare-fun m!1563 () Bool)

(assert (=> mapNonEmpty!122 m!1563))

(check-sat (not start!550) tp_is_empty!111 (not mapNonEmpty!122) (not b!3285) (not b!3286))
(check-sat)
