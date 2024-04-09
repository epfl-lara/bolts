; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43194 () Bool)

(assert start!43194)

(declare-fun mapNonEmpty!22057 () Bool)

(declare-fun mapRes!22057 () Bool)

(declare-fun tp!42532 () Bool)

(declare-fun e!281352 () Bool)

(assert (=> mapNonEmpty!22057 (= mapRes!22057 (and tp!42532 e!281352))))

(declare-fun mapKey!22057 () (_ BitVec 32))

(declare-datatypes ((V!19171 0))(
  ( (V!19172 (val!6835 Int)) )
))
(declare-datatypes ((ValueCell!6426 0))(
  ( (ValueCellFull!6426 (v!9120 V!19171)) (EmptyCell!6426) )
))
(declare-fun mapValue!22057 () ValueCell!6426)

(declare-fun mapRest!22057 () (Array (_ BitVec 32) ValueCell!6426))

(declare-datatypes ((array!30795 0))(
  ( (array!30796 (arr!14802 (Array (_ BitVec 32) ValueCell!6426)) (size!15160 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30795)

(assert (=> mapNonEmpty!22057 (= (arr!14802 _values!1516) (store mapRest!22057 mapKey!22057 mapValue!22057))))

(declare-fun b!478465 () Bool)

(declare-fun res!285532 () Bool)

(declare-fun e!281353 () Bool)

(assert (=> b!478465 (=> (not res!285532) (not e!281353))))

(declare-datatypes ((array!30797 0))(
  ( (array!30798 (arr!14803 (Array (_ BitVec 32) (_ BitVec 64))) (size!15161 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30797)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30797 (_ BitVec 32)) Bool)

(assert (=> b!478465 (= res!285532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478466 () Bool)

(declare-fun tp_is_empty!13575 () Bool)

(assert (=> b!478466 (= e!281352 tp_is_empty!13575)))

(declare-fun b!478467 () Bool)

(declare-fun res!285533 () Bool)

(assert (=> b!478467 (=> (not res!285533) (not e!281353))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!478467 (= res!285533 (and (= (size!15160 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15161 _keys!1874) (size!15160 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!478468 () Bool)

(declare-fun e!281356 () Bool)

(assert (=> b!478468 (= e!281356 tp_is_empty!13575)))

(declare-fun b!478469 () Bool)

(declare-fun e!281355 () Bool)

(assert (=> b!478469 (= e!281355 (and e!281356 mapRes!22057))))

(declare-fun condMapEmpty!22057 () Bool)

(declare-fun mapDefault!22057 () ValueCell!6426)

(assert (=> b!478469 (= condMapEmpty!22057 (= (arr!14802 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6426)) mapDefault!22057)))))

(declare-fun b!478470 () Bool)

(assert (=> b!478470 (= e!281353 false)))

(declare-fun lt!217709 () Bool)

(declare-datatypes ((List!9094 0))(
  ( (Nil!9091) (Cons!9090 (h!9946 (_ BitVec 64)) (t!15308 List!9094)) )
))
(declare-fun arrayNoDuplicates!0 (array!30797 (_ BitVec 32) List!9094) Bool)

(assert (=> b!478470 (= lt!217709 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9091))))

(declare-fun mapIsEmpty!22057 () Bool)

(assert (=> mapIsEmpty!22057 mapRes!22057))

(declare-fun res!285534 () Bool)

(assert (=> start!43194 (=> (not res!285534) (not e!281353))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43194 (= res!285534 (validMask!0 mask!2352))))

(assert (=> start!43194 e!281353))

(assert (=> start!43194 true))

(declare-fun array_inv!10666 (array!30795) Bool)

(assert (=> start!43194 (and (array_inv!10666 _values!1516) e!281355)))

(declare-fun array_inv!10667 (array!30797) Bool)

(assert (=> start!43194 (array_inv!10667 _keys!1874)))

(assert (= (and start!43194 res!285534) b!478467))

(assert (= (and b!478467 res!285533) b!478465))

(assert (= (and b!478465 res!285532) b!478470))

(assert (= (and b!478469 condMapEmpty!22057) mapIsEmpty!22057))

(assert (= (and b!478469 (not condMapEmpty!22057)) mapNonEmpty!22057))

(get-info :version)

(assert (= (and mapNonEmpty!22057 ((_ is ValueCellFull!6426) mapValue!22057)) b!478466))

(assert (= (and b!478469 ((_ is ValueCellFull!6426) mapDefault!22057)) b!478468))

(assert (= start!43194 b!478469))

(declare-fun m!460693 () Bool)

(assert (=> mapNonEmpty!22057 m!460693))

(declare-fun m!460695 () Bool)

(assert (=> b!478465 m!460695))

(declare-fun m!460697 () Bool)

(assert (=> b!478470 m!460697))

(declare-fun m!460699 () Bool)

(assert (=> start!43194 m!460699))

(declare-fun m!460701 () Bool)

(assert (=> start!43194 m!460701))

(declare-fun m!460703 () Bool)

(assert (=> start!43194 m!460703))

(check-sat (not b!478470) (not b!478465) (not start!43194) (not mapNonEmpty!22057) tp_is_empty!13575)
(check-sat)
