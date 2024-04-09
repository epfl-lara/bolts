; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38918 () Bool)

(assert start!38918)

(declare-fun b!406742 () Bool)

(declare-fun res!235121 () Bool)

(declare-fun e!244363 () Bool)

(assert (=> b!406742 (=> (not res!235121) (not e!244363))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14877 0))(
  ( (V!14878 (val!5209 Int)) )
))
(declare-datatypes ((ValueCell!4821 0))(
  ( (ValueCellFull!4821 (v!7452 V!14877)) (EmptyCell!4821) )
))
(declare-datatypes ((array!24515 0))(
  ( (array!24516 (arr!11704 (Array (_ BitVec 32) ValueCell!4821)) (size!12056 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24515)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!24517 0))(
  ( (array!24518 (arr!11705 (Array (_ BitVec 32) (_ BitVec 64))) (size!12057 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24517)

(assert (=> b!406742 (= res!235121 (and (= (size!12056 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12057 _keys!709) (size!12056 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!406743 () Bool)

(declare-fun e!244362 () Bool)

(assert (=> b!406743 (= e!244362 false)))

(declare-fun lt!188528 () Bool)

(declare-fun lt!188529 () array!24517)

(declare-datatypes ((List!6772 0))(
  ( (Nil!6769) (Cons!6768 (h!7624 (_ BitVec 64)) (t!11954 List!6772)) )
))
(declare-fun arrayNoDuplicates!0 (array!24517 (_ BitVec 32) List!6772) Bool)

(assert (=> b!406743 (= lt!188528 (arrayNoDuplicates!0 lt!188529 #b00000000000000000000000000000000 Nil!6769))))

(declare-fun b!406744 () Bool)

(declare-fun e!244361 () Bool)

(declare-fun tp_is_empty!10329 () Bool)

(assert (=> b!406744 (= e!244361 tp_is_empty!10329)))

(declare-fun b!406745 () Bool)

(declare-fun res!235119 () Bool)

(assert (=> b!406745 (=> (not res!235119) (not e!244363))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!406745 (= res!235119 (validKeyInArray!0 k0!794))))

(declare-fun b!406746 () Bool)

(declare-fun res!235113 () Bool)

(assert (=> b!406746 (=> (not res!235113) (not e!244363))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406746 (= res!235113 (or (= (select (arr!11705 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11705 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!406747 () Bool)

(declare-fun res!235118 () Bool)

(assert (=> b!406747 (=> (not res!235118) (not e!244363))))

(declare-fun arrayContainsKey!0 (array!24517 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!406747 (= res!235118 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17115 () Bool)

(declare-fun mapRes!17115 () Bool)

(assert (=> mapIsEmpty!17115 mapRes!17115))

(declare-fun b!406748 () Bool)

(declare-fun res!235117 () Bool)

(assert (=> b!406748 (=> (not res!235117) (not e!244363))))

(assert (=> b!406748 (= res!235117 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6769))))

(declare-fun b!406749 () Bool)

(declare-fun e!244360 () Bool)

(declare-fun e!244359 () Bool)

(assert (=> b!406749 (= e!244360 (and e!244359 mapRes!17115))))

(declare-fun condMapEmpty!17115 () Bool)

(declare-fun mapDefault!17115 () ValueCell!4821)

(assert (=> b!406749 (= condMapEmpty!17115 (= (arr!11704 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4821)) mapDefault!17115)))))

(declare-fun b!406750 () Bool)

(declare-fun res!235115 () Bool)

(assert (=> b!406750 (=> (not res!235115) (not e!244363))))

(assert (=> b!406750 (= res!235115 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12057 _keys!709))))))

(declare-fun b!406751 () Bool)

(assert (=> b!406751 (= e!244359 tp_is_empty!10329)))

(declare-fun b!406752 () Bool)

(declare-fun res!235120 () Bool)

(assert (=> b!406752 (=> (not res!235120) (not e!244363))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24517 (_ BitVec 32)) Bool)

(assert (=> b!406752 (= res!235120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!17115 () Bool)

(declare-fun tp!33234 () Bool)

(assert (=> mapNonEmpty!17115 (= mapRes!17115 (and tp!33234 e!244361))))

(declare-fun mapRest!17115 () (Array (_ BitVec 32) ValueCell!4821))

(declare-fun mapKey!17115 () (_ BitVec 32))

(declare-fun mapValue!17115 () ValueCell!4821)

(assert (=> mapNonEmpty!17115 (= (arr!11704 _values!549) (store mapRest!17115 mapKey!17115 mapValue!17115))))

(declare-fun res!235116 () Bool)

(assert (=> start!38918 (=> (not res!235116) (not e!244363))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38918 (= res!235116 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12057 _keys!709))))))

(assert (=> start!38918 e!244363))

(assert (=> start!38918 true))

(declare-fun array_inv!8552 (array!24515) Bool)

(assert (=> start!38918 (and (array_inv!8552 _values!549) e!244360)))

(declare-fun array_inv!8553 (array!24517) Bool)

(assert (=> start!38918 (array_inv!8553 _keys!709)))

(declare-fun b!406753 () Bool)

(assert (=> b!406753 (= e!244363 e!244362)))

(declare-fun res!235114 () Bool)

(assert (=> b!406753 (=> (not res!235114) (not e!244362))))

(assert (=> b!406753 (= res!235114 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188529 mask!1025))))

(assert (=> b!406753 (= lt!188529 (array!24518 (store (arr!11705 _keys!709) i!563 k0!794) (size!12057 _keys!709)))))

(declare-fun b!406754 () Bool)

(declare-fun res!235122 () Bool)

(assert (=> b!406754 (=> (not res!235122) (not e!244363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!406754 (= res!235122 (validMask!0 mask!1025))))

(assert (= (and start!38918 res!235116) b!406754))

(assert (= (and b!406754 res!235122) b!406742))

(assert (= (and b!406742 res!235121) b!406752))

(assert (= (and b!406752 res!235120) b!406748))

(assert (= (and b!406748 res!235117) b!406750))

(assert (= (and b!406750 res!235115) b!406745))

(assert (= (and b!406745 res!235119) b!406746))

(assert (= (and b!406746 res!235113) b!406747))

(assert (= (and b!406747 res!235118) b!406753))

(assert (= (and b!406753 res!235114) b!406743))

(assert (= (and b!406749 condMapEmpty!17115) mapIsEmpty!17115))

(assert (= (and b!406749 (not condMapEmpty!17115)) mapNonEmpty!17115))

(get-info :version)

(assert (= (and mapNonEmpty!17115 ((_ is ValueCellFull!4821) mapValue!17115)) b!406744))

(assert (= (and b!406749 ((_ is ValueCellFull!4821) mapDefault!17115)) b!406751))

(assert (= start!38918 b!406749))

(declare-fun m!398661 () Bool)

(assert (=> b!406747 m!398661))

(declare-fun m!398663 () Bool)

(assert (=> b!406743 m!398663))

(declare-fun m!398665 () Bool)

(assert (=> b!406748 m!398665))

(declare-fun m!398667 () Bool)

(assert (=> b!406752 m!398667))

(declare-fun m!398669 () Bool)

(assert (=> b!406746 m!398669))

(declare-fun m!398671 () Bool)

(assert (=> mapNonEmpty!17115 m!398671))

(declare-fun m!398673 () Bool)

(assert (=> b!406754 m!398673))

(declare-fun m!398675 () Bool)

(assert (=> b!406745 m!398675))

(declare-fun m!398677 () Bool)

(assert (=> start!38918 m!398677))

(declare-fun m!398679 () Bool)

(assert (=> start!38918 m!398679))

(declare-fun m!398681 () Bool)

(assert (=> b!406753 m!398681))

(declare-fun m!398683 () Bool)

(assert (=> b!406753 m!398683))

(check-sat (not mapNonEmpty!17115) (not b!406752) (not b!406745) tp_is_empty!10329 (not b!406753) (not b!406748) (not b!406754) (not b!406743) (not start!38918) (not b!406747))
(check-sat)
