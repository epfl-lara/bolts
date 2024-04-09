; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38948 () Bool)

(assert start!38948)

(declare-fun b!407327 () Bool)

(declare-fun e!244633 () Bool)

(declare-fun e!244629 () Bool)

(declare-fun mapRes!17160 () Bool)

(assert (=> b!407327 (= e!244633 (and e!244629 mapRes!17160))))

(declare-fun condMapEmpty!17160 () Bool)

(declare-datatypes ((V!14917 0))(
  ( (V!14918 (val!5224 Int)) )
))
(declare-datatypes ((ValueCell!4836 0))(
  ( (ValueCellFull!4836 (v!7467 V!14917)) (EmptyCell!4836) )
))
(declare-datatypes ((array!24573 0))(
  ( (array!24574 (arr!11733 (Array (_ BitVec 32) ValueCell!4836)) (size!12085 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24573)

(declare-fun mapDefault!17160 () ValueCell!4836)

(assert (=> b!407327 (= condMapEmpty!17160 (= (arr!11733 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4836)) mapDefault!17160)))))

(declare-fun b!407328 () Bool)

(declare-fun e!244632 () Bool)

(declare-fun tp_is_empty!10359 () Bool)

(assert (=> b!407328 (= e!244632 tp_is_empty!10359)))

(declare-fun b!407329 () Bool)

(declare-fun res!235567 () Bool)

(declare-fun e!244631 () Bool)

(assert (=> b!407329 (=> (not res!235567) (not e!244631))))

(declare-datatypes ((array!24575 0))(
  ( (array!24576 (arr!11734 (Array (_ BitVec 32) (_ BitVec 64))) (size!12086 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24575)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24575 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!407329 (= res!235567 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!407330 () Bool)

(declare-fun e!244628 () Bool)

(assert (=> b!407330 (= e!244628 false)))

(declare-fun lt!188619 () Bool)

(declare-fun lt!188618 () array!24575)

(declare-datatypes ((List!6784 0))(
  ( (Nil!6781) (Cons!6780 (h!7636 (_ BitVec 64)) (t!11966 List!6784)) )
))
(declare-fun arrayNoDuplicates!0 (array!24575 (_ BitVec 32) List!6784) Bool)

(assert (=> b!407330 (= lt!188619 (arrayNoDuplicates!0 lt!188618 #b00000000000000000000000000000000 Nil!6781))))

(declare-fun b!407331 () Bool)

(assert (=> b!407331 (= e!244631 e!244628)))

(declare-fun res!235569 () Bool)

(assert (=> b!407331 (=> (not res!235569) (not e!244628))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24575 (_ BitVec 32)) Bool)

(assert (=> b!407331 (= res!235569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188618 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407331 (= lt!188618 (array!24576 (store (arr!11734 _keys!709) i!563 k0!794) (size!12086 _keys!709)))))

(declare-fun b!407332 () Bool)

(assert (=> b!407332 (= e!244629 tp_is_empty!10359)))

(declare-fun b!407333 () Bool)

(declare-fun res!235571 () Bool)

(assert (=> b!407333 (=> (not res!235571) (not e!244631))))

(assert (=> b!407333 (= res!235571 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!407334 () Bool)

(declare-fun res!235565 () Bool)

(assert (=> b!407334 (=> (not res!235565) (not e!244631))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!407334 (= res!235565 (validKeyInArray!0 k0!794))))

(declare-fun b!407335 () Bool)

(declare-fun res!235572 () Bool)

(assert (=> b!407335 (=> (not res!235572) (not e!244631))))

(assert (=> b!407335 (= res!235572 (or (= (select (arr!11734 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11734 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!407336 () Bool)

(declare-fun res!235566 () Bool)

(assert (=> b!407336 (=> (not res!235566) (not e!244631))))

(assert (=> b!407336 (= res!235566 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6781))))

(declare-fun b!407337 () Bool)

(declare-fun res!235563 () Bool)

(assert (=> b!407337 (=> (not res!235563) (not e!244631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!407337 (= res!235563 (validMask!0 mask!1025))))

(declare-fun res!235570 () Bool)

(assert (=> start!38948 (=> (not res!235570) (not e!244631))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38948 (= res!235570 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12086 _keys!709))))))

(assert (=> start!38948 e!244631))

(assert (=> start!38948 true))

(declare-fun array_inv!8566 (array!24573) Bool)

(assert (=> start!38948 (and (array_inv!8566 _values!549) e!244633)))

(declare-fun array_inv!8567 (array!24575) Bool)

(assert (=> start!38948 (array_inv!8567 _keys!709)))

(declare-fun mapIsEmpty!17160 () Bool)

(assert (=> mapIsEmpty!17160 mapRes!17160))

(declare-fun b!407338 () Bool)

(declare-fun res!235568 () Bool)

(assert (=> b!407338 (=> (not res!235568) (not e!244631))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!407338 (= res!235568 (and (= (size!12085 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12086 _keys!709) (size!12085 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!17160 () Bool)

(declare-fun tp!33279 () Bool)

(assert (=> mapNonEmpty!17160 (= mapRes!17160 (and tp!33279 e!244632))))

(declare-fun mapValue!17160 () ValueCell!4836)

(declare-fun mapKey!17160 () (_ BitVec 32))

(declare-fun mapRest!17160 () (Array (_ BitVec 32) ValueCell!4836))

(assert (=> mapNonEmpty!17160 (= (arr!11733 _values!549) (store mapRest!17160 mapKey!17160 mapValue!17160))))

(declare-fun b!407339 () Bool)

(declare-fun res!235564 () Bool)

(assert (=> b!407339 (=> (not res!235564) (not e!244631))))

(assert (=> b!407339 (= res!235564 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12086 _keys!709))))))

(assert (= (and start!38948 res!235570) b!407337))

(assert (= (and b!407337 res!235563) b!407338))

(assert (= (and b!407338 res!235568) b!407333))

(assert (= (and b!407333 res!235571) b!407336))

(assert (= (and b!407336 res!235566) b!407339))

(assert (= (and b!407339 res!235564) b!407334))

(assert (= (and b!407334 res!235565) b!407335))

(assert (= (and b!407335 res!235572) b!407329))

(assert (= (and b!407329 res!235567) b!407331))

(assert (= (and b!407331 res!235569) b!407330))

(assert (= (and b!407327 condMapEmpty!17160) mapIsEmpty!17160))

(assert (= (and b!407327 (not condMapEmpty!17160)) mapNonEmpty!17160))

(get-info :version)

(assert (= (and mapNonEmpty!17160 ((_ is ValueCellFull!4836) mapValue!17160)) b!407328))

(assert (= (and b!407327 ((_ is ValueCellFull!4836) mapDefault!17160)) b!407332))

(assert (= start!38948 b!407327))

(declare-fun m!399021 () Bool)

(assert (=> b!407334 m!399021))

(declare-fun m!399023 () Bool)

(assert (=> b!407331 m!399023))

(declare-fun m!399025 () Bool)

(assert (=> b!407331 m!399025))

(declare-fun m!399027 () Bool)

(assert (=> b!407336 m!399027))

(declare-fun m!399029 () Bool)

(assert (=> start!38948 m!399029))

(declare-fun m!399031 () Bool)

(assert (=> start!38948 m!399031))

(declare-fun m!399033 () Bool)

(assert (=> b!407337 m!399033))

(declare-fun m!399035 () Bool)

(assert (=> b!407330 m!399035))

(declare-fun m!399037 () Bool)

(assert (=> mapNonEmpty!17160 m!399037))

(declare-fun m!399039 () Bool)

(assert (=> b!407333 m!399039))

(declare-fun m!399041 () Bool)

(assert (=> b!407329 m!399041))

(declare-fun m!399043 () Bool)

(assert (=> b!407335 m!399043))

(check-sat (not start!38948) tp_is_empty!10359 (not b!407336) (not b!407331) (not b!407333) (not mapNonEmpty!17160) (not b!407330) (not b!407334) (not b!407329) (not b!407337))
(check-sat)
