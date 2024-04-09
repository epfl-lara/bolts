; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38810 () Bool)

(assert start!38810)

(declare-fun b!404636 () Bool)

(declare-fun e!243391 () Bool)

(declare-fun tp_is_empty!10221 () Bool)

(assert (=> b!404636 (= e!243391 tp_is_empty!10221)))

(declare-fun b!404637 () Bool)

(declare-fun res!233502 () Bool)

(declare-fun e!243386 () Bool)

(assert (=> b!404637 (=> (not res!233502) (not e!243386))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24305 0))(
  ( (array!24306 (arr!11599 (Array (_ BitVec 32) (_ BitVec 64))) (size!11951 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24305)

(assert (=> b!404637 (= res!233502 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11951 _keys!709))))))

(declare-fun b!404638 () Bool)

(declare-fun res!233500 () Bool)

(assert (=> b!404638 (=> (not res!233500) (not e!243386))))

(assert (=> b!404638 (= res!233500 (or (= (select (arr!11599 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11599 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!404639 () Bool)

(declare-fun e!243390 () Bool)

(assert (=> b!404639 (= e!243390 false)))

(declare-fun lt!188205 () Bool)

(declare-fun lt!188204 () array!24305)

(declare-datatypes ((List!6729 0))(
  ( (Nil!6726) (Cons!6725 (h!7581 (_ BitVec 64)) (t!11911 List!6729)) )
))
(declare-fun arrayNoDuplicates!0 (array!24305 (_ BitVec 32) List!6729) Bool)

(assert (=> b!404639 (= lt!188205 (arrayNoDuplicates!0 lt!188204 #b00000000000000000000000000000000 Nil!6726))))

(declare-fun b!404640 () Bool)

(declare-fun res!233493 () Bool)

(assert (=> b!404640 (=> (not res!233493) (not e!243386))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!404640 (= res!233493 (validMask!0 mask!1025))))

(declare-fun res!233494 () Bool)

(assert (=> start!38810 (=> (not res!233494) (not e!243386))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38810 (= res!233494 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11951 _keys!709))))))

(assert (=> start!38810 e!243386))

(assert (=> start!38810 true))

(declare-datatypes ((V!14733 0))(
  ( (V!14734 (val!5155 Int)) )
))
(declare-datatypes ((ValueCell!4767 0))(
  ( (ValueCellFull!4767 (v!7398 V!14733)) (EmptyCell!4767) )
))
(declare-datatypes ((array!24307 0))(
  ( (array!24308 (arr!11600 (Array (_ BitVec 32) ValueCell!4767)) (size!11952 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24307)

(declare-fun e!243387 () Bool)

(declare-fun array_inv!8474 (array!24307) Bool)

(assert (=> start!38810 (and (array_inv!8474 _values!549) e!243387)))

(declare-fun array_inv!8475 (array!24305) Bool)

(assert (=> start!38810 (array_inv!8475 _keys!709)))

(declare-fun b!404641 () Bool)

(declare-fun res!233496 () Bool)

(assert (=> b!404641 (=> (not res!233496) (not e!243386))))

(assert (=> b!404641 (= res!233496 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6726))))

(declare-fun b!404642 () Bool)

(declare-fun res!233499 () Bool)

(assert (=> b!404642 (=> (not res!233499) (not e!243386))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24305 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!404642 (= res!233499 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!404643 () Bool)

(declare-fun res!233495 () Bool)

(assert (=> b!404643 (=> (not res!233495) (not e!243386))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24305 (_ BitVec 32)) Bool)

(assert (=> b!404643 (= res!233495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!404644 () Bool)

(declare-fun e!243389 () Bool)

(declare-fun mapRes!16953 () Bool)

(assert (=> b!404644 (= e!243387 (and e!243389 mapRes!16953))))

(declare-fun condMapEmpty!16953 () Bool)

(declare-fun mapDefault!16953 () ValueCell!4767)

(assert (=> b!404644 (= condMapEmpty!16953 (= (arr!11600 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4767)) mapDefault!16953)))))

(declare-fun b!404645 () Bool)

(declare-fun res!233497 () Bool)

(assert (=> b!404645 (=> (not res!233497) (not e!243386))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!404645 (= res!233497 (validKeyInArray!0 k0!794))))

(declare-fun b!404646 () Bool)

(declare-fun res!233498 () Bool)

(assert (=> b!404646 (=> (not res!233498) (not e!243386))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!404646 (= res!233498 (and (= (size!11952 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11951 _keys!709) (size!11952 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!16953 () Bool)

(assert (=> mapIsEmpty!16953 mapRes!16953))

(declare-fun b!404647 () Bool)

(assert (=> b!404647 (= e!243389 tp_is_empty!10221)))

(declare-fun mapNonEmpty!16953 () Bool)

(declare-fun tp!33072 () Bool)

(assert (=> mapNonEmpty!16953 (= mapRes!16953 (and tp!33072 e!243391))))

(declare-fun mapValue!16953 () ValueCell!4767)

(declare-fun mapRest!16953 () (Array (_ BitVec 32) ValueCell!4767))

(declare-fun mapKey!16953 () (_ BitVec 32))

(assert (=> mapNonEmpty!16953 (= (arr!11600 _values!549) (store mapRest!16953 mapKey!16953 mapValue!16953))))

(declare-fun b!404648 () Bool)

(assert (=> b!404648 (= e!243386 e!243390)))

(declare-fun res!233501 () Bool)

(assert (=> b!404648 (=> (not res!233501) (not e!243390))))

(assert (=> b!404648 (= res!233501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188204 mask!1025))))

(assert (=> b!404648 (= lt!188204 (array!24306 (store (arr!11599 _keys!709) i!563 k0!794) (size!11951 _keys!709)))))

(assert (= (and start!38810 res!233494) b!404640))

(assert (= (and b!404640 res!233493) b!404646))

(assert (= (and b!404646 res!233498) b!404643))

(assert (= (and b!404643 res!233495) b!404641))

(assert (= (and b!404641 res!233496) b!404637))

(assert (= (and b!404637 res!233502) b!404645))

(assert (= (and b!404645 res!233497) b!404638))

(assert (= (and b!404638 res!233500) b!404642))

(assert (= (and b!404642 res!233499) b!404648))

(assert (= (and b!404648 res!233501) b!404639))

(assert (= (and b!404644 condMapEmpty!16953) mapIsEmpty!16953))

(assert (= (and b!404644 (not condMapEmpty!16953)) mapNonEmpty!16953))

(get-info :version)

(assert (= (and mapNonEmpty!16953 ((_ is ValueCellFull!4767) mapValue!16953)) b!404636))

(assert (= (and b!404644 ((_ is ValueCellFull!4767) mapDefault!16953)) b!404647))

(assert (= start!38810 b!404644))

(declare-fun m!397365 () Bool)

(assert (=> b!404648 m!397365))

(declare-fun m!397367 () Bool)

(assert (=> b!404648 m!397367))

(declare-fun m!397369 () Bool)

(assert (=> b!404639 m!397369))

(declare-fun m!397371 () Bool)

(assert (=> start!38810 m!397371))

(declare-fun m!397373 () Bool)

(assert (=> start!38810 m!397373))

(declare-fun m!397375 () Bool)

(assert (=> b!404645 m!397375))

(declare-fun m!397377 () Bool)

(assert (=> b!404642 m!397377))

(declare-fun m!397379 () Bool)

(assert (=> b!404643 m!397379))

(declare-fun m!397381 () Bool)

(assert (=> b!404640 m!397381))

(declare-fun m!397383 () Bool)

(assert (=> b!404638 m!397383))

(declare-fun m!397385 () Bool)

(assert (=> mapNonEmpty!16953 m!397385))

(declare-fun m!397387 () Bool)

(assert (=> b!404641 m!397387))

(check-sat (not b!404640) (not mapNonEmpty!16953) (not start!38810) (not b!404639) tp_is_empty!10221 (not b!404641) (not b!404642) (not b!404648) (not b!404643) (not b!404645))
(check-sat)
