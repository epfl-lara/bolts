; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38816 () Bool)

(assert start!38816)

(declare-fun b!404753 () Bool)

(declare-fun res!233591 () Bool)

(declare-fun e!243445 () Bool)

(assert (=> b!404753 (=> (not res!233591) (not e!243445))))

(declare-datatypes ((array!24317 0))(
  ( (array!24318 (arr!11605 (Array (_ BitVec 32) (_ BitVec 64))) (size!11957 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24317)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!404753 (= res!233591 (or (= (select (arr!11605 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11605 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!404754 () Bool)

(declare-fun e!243444 () Bool)

(declare-fun e!243441 () Bool)

(declare-fun mapRes!16962 () Bool)

(assert (=> b!404754 (= e!243444 (and e!243441 mapRes!16962))))

(declare-fun condMapEmpty!16962 () Bool)

(declare-datatypes ((V!14741 0))(
  ( (V!14742 (val!5158 Int)) )
))
(declare-datatypes ((ValueCell!4770 0))(
  ( (ValueCellFull!4770 (v!7401 V!14741)) (EmptyCell!4770) )
))
(declare-datatypes ((array!24319 0))(
  ( (array!24320 (arr!11606 (Array (_ BitVec 32) ValueCell!4770)) (size!11958 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24319)

(declare-fun mapDefault!16962 () ValueCell!4770)

(assert (=> b!404754 (= condMapEmpty!16962 (= (arr!11606 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4770)) mapDefault!16962)))))

(declare-fun b!404755 () Bool)

(declare-fun res!233587 () Bool)

(assert (=> b!404755 (=> (not res!233587) (not e!243445))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!404755 (= res!233587 (validKeyInArray!0 k0!794))))

(declare-fun b!404756 () Bool)

(declare-fun e!243443 () Bool)

(assert (=> b!404756 (= e!243445 e!243443)))

(declare-fun res!233592 () Bool)

(assert (=> b!404756 (=> (not res!233592) (not e!243443))))

(declare-fun lt!188223 () array!24317)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24317 (_ BitVec 32)) Bool)

(assert (=> b!404756 (= res!233592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188223 mask!1025))))

(assert (=> b!404756 (= lt!188223 (array!24318 (store (arr!11605 _keys!709) i!563 k0!794) (size!11957 _keys!709)))))

(declare-fun b!404757 () Bool)

(declare-fun res!233589 () Bool)

(assert (=> b!404757 (=> (not res!233589) (not e!243445))))

(assert (=> b!404757 (= res!233589 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11957 _keys!709))))))

(declare-fun b!404758 () Bool)

(declare-fun res!233584 () Bool)

(assert (=> b!404758 (=> (not res!233584) (not e!243445))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!404758 (= res!233584 (and (= (size!11958 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11957 _keys!709) (size!11958 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!16962 () Bool)

(declare-fun tp!33081 () Bool)

(declare-fun e!243442 () Bool)

(assert (=> mapNonEmpty!16962 (= mapRes!16962 (and tp!33081 e!243442))))

(declare-fun mapKey!16962 () (_ BitVec 32))

(declare-fun mapValue!16962 () ValueCell!4770)

(declare-fun mapRest!16962 () (Array (_ BitVec 32) ValueCell!4770))

(assert (=> mapNonEmpty!16962 (= (arr!11606 _values!549) (store mapRest!16962 mapKey!16962 mapValue!16962))))

(declare-fun b!404760 () Bool)

(assert (=> b!404760 (= e!243443 false)))

(declare-fun lt!188222 () Bool)

(declare-datatypes ((List!6731 0))(
  ( (Nil!6728) (Cons!6727 (h!7583 (_ BitVec 64)) (t!11913 List!6731)) )
))
(declare-fun arrayNoDuplicates!0 (array!24317 (_ BitVec 32) List!6731) Bool)

(assert (=> b!404760 (= lt!188222 (arrayNoDuplicates!0 lt!188223 #b00000000000000000000000000000000 Nil!6728))))

(declare-fun b!404761 () Bool)

(declare-fun res!233585 () Bool)

(assert (=> b!404761 (=> (not res!233585) (not e!243445))))

(declare-fun arrayContainsKey!0 (array!24317 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!404761 (= res!233585 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!404762 () Bool)

(declare-fun res!233583 () Bool)

(assert (=> b!404762 (=> (not res!233583) (not e!243445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!404762 (= res!233583 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!16962 () Bool)

(assert (=> mapIsEmpty!16962 mapRes!16962))

(declare-fun b!404763 () Bool)

(declare-fun res!233590 () Bool)

(assert (=> b!404763 (=> (not res!233590) (not e!243445))))

(assert (=> b!404763 (= res!233590 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6728))))

(declare-fun b!404764 () Bool)

(declare-fun tp_is_empty!10227 () Bool)

(assert (=> b!404764 (= e!243442 tp_is_empty!10227)))

(declare-fun b!404765 () Bool)

(assert (=> b!404765 (= e!243441 tp_is_empty!10227)))

(declare-fun b!404759 () Bool)

(declare-fun res!233588 () Bool)

(assert (=> b!404759 (=> (not res!233588) (not e!243445))))

(assert (=> b!404759 (= res!233588 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!233586 () Bool)

(assert (=> start!38816 (=> (not res!233586) (not e!243445))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38816 (= res!233586 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11957 _keys!709))))))

(assert (=> start!38816 e!243445))

(assert (=> start!38816 true))

(declare-fun array_inv!8478 (array!24319) Bool)

(assert (=> start!38816 (and (array_inv!8478 _values!549) e!243444)))

(declare-fun array_inv!8479 (array!24317) Bool)

(assert (=> start!38816 (array_inv!8479 _keys!709)))

(assert (= (and start!38816 res!233586) b!404762))

(assert (= (and b!404762 res!233583) b!404758))

(assert (= (and b!404758 res!233584) b!404759))

(assert (= (and b!404759 res!233588) b!404763))

(assert (= (and b!404763 res!233590) b!404757))

(assert (= (and b!404757 res!233589) b!404755))

(assert (= (and b!404755 res!233587) b!404753))

(assert (= (and b!404753 res!233591) b!404761))

(assert (= (and b!404761 res!233585) b!404756))

(assert (= (and b!404756 res!233592) b!404760))

(assert (= (and b!404754 condMapEmpty!16962) mapIsEmpty!16962))

(assert (= (and b!404754 (not condMapEmpty!16962)) mapNonEmpty!16962))

(get-info :version)

(assert (= (and mapNonEmpty!16962 ((_ is ValueCellFull!4770) mapValue!16962)) b!404764))

(assert (= (and b!404754 ((_ is ValueCellFull!4770) mapDefault!16962)) b!404765))

(assert (= start!38816 b!404754))

(declare-fun m!397437 () Bool)

(assert (=> b!404759 m!397437))

(declare-fun m!397439 () Bool)

(assert (=> start!38816 m!397439))

(declare-fun m!397441 () Bool)

(assert (=> start!38816 m!397441))

(declare-fun m!397443 () Bool)

(assert (=> b!404761 m!397443))

(declare-fun m!397445 () Bool)

(assert (=> b!404753 m!397445))

(declare-fun m!397447 () Bool)

(assert (=> b!404755 m!397447))

(declare-fun m!397449 () Bool)

(assert (=> b!404756 m!397449))

(declare-fun m!397451 () Bool)

(assert (=> b!404756 m!397451))

(declare-fun m!397453 () Bool)

(assert (=> b!404760 m!397453))

(declare-fun m!397455 () Bool)

(assert (=> mapNonEmpty!16962 m!397455))

(declare-fun m!397457 () Bool)

(assert (=> b!404763 m!397457))

(declare-fun m!397459 () Bool)

(assert (=> b!404762 m!397459))

(check-sat (not start!38816) (not b!404759) (not b!404761) (not mapNonEmpty!16962) (not b!404763) (not b!404760) (not b!404755) (not b!404756) tp_is_empty!10227 (not b!404762))
(check-sat)
