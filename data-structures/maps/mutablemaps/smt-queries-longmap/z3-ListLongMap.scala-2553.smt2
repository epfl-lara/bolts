; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39146 () Bool)

(assert start!39146)

(declare-fun b_free!9405 () Bool)

(declare-fun b_next!9405 () Bool)

(assert (=> start!39146 (= b_free!9405 (not b_next!9405))))

(declare-fun tp!33743 () Bool)

(declare-fun b_and!16809 () Bool)

(assert (=> start!39146 (= tp!33743 b_and!16809)))

(declare-fun b!411522 () Bool)

(declare-fun res!238878 () Bool)

(declare-fun e!246410 () Bool)

(assert (=> b!411522 (=> (not res!238878) (not e!246410))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!411522 (= res!238878 (validKeyInArray!0 k0!794))))

(declare-fun b!411523 () Bool)

(declare-fun res!238873 () Bool)

(assert (=> b!411523 (=> (not res!238873) (not e!246410))))

(declare-datatypes ((array!24959 0))(
  ( (array!24960 (arr!11926 (Array (_ BitVec 32) (_ BitVec 64))) (size!12278 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24959)

(declare-fun arrayContainsKey!0 (array!24959 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!411523 (= res!238873 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!411524 () Bool)

(declare-fun e!246415 () Bool)

(declare-fun tp_is_empty!10557 () Bool)

(assert (=> b!411524 (= e!246415 tp_is_empty!10557)))

(declare-fun b!411525 () Bool)

(declare-fun e!246412 () Bool)

(assert (=> b!411525 (= e!246410 e!246412)))

(declare-fun res!238872 () Bool)

(assert (=> b!411525 (=> (not res!238872) (not e!246412))))

(declare-fun lt!189299 () array!24959)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24959 (_ BitVec 32)) Bool)

(assert (=> b!411525 (= res!238872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189299 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!411525 (= lt!189299 (array!24960 (store (arr!11926 _keys!709) i!563 k0!794) (size!12278 _keys!709)))))

(declare-fun b!411526 () Bool)

(declare-fun res!238875 () Bool)

(assert (=> b!411526 (=> (not res!238875) (not e!246410))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15181 0))(
  ( (V!15182 (val!5323 Int)) )
))
(declare-datatypes ((ValueCell!4935 0))(
  ( (ValueCellFull!4935 (v!7566 V!15181)) (EmptyCell!4935) )
))
(declare-datatypes ((array!24961 0))(
  ( (array!24962 (arr!11927 (Array (_ BitVec 32) ValueCell!4935)) (size!12279 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24961)

(assert (=> b!411526 (= res!238875 (and (= (size!12279 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12278 _keys!709) (size!12279 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!411527 () Bool)

(declare-fun e!246411 () Bool)

(assert (=> b!411527 (= e!246411 tp_is_empty!10557)))

(declare-fun b!411528 () Bool)

(declare-fun e!246414 () Bool)

(declare-fun mapRes!17457 () Bool)

(assert (=> b!411528 (= e!246414 (and e!246411 mapRes!17457))))

(declare-fun condMapEmpty!17457 () Bool)

(declare-fun mapDefault!17457 () ValueCell!4935)

(assert (=> b!411528 (= condMapEmpty!17457 (= (arr!11927 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4935)) mapDefault!17457)))))

(declare-fun b!411529 () Bool)

(declare-fun res!238877 () Bool)

(assert (=> b!411529 (=> (not res!238877) (not e!246410))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!411529 (= res!238877 (validMask!0 mask!1025))))

(declare-fun b!411530 () Bool)

(declare-fun res!238871 () Bool)

(assert (=> b!411530 (=> (not res!238871) (not e!246412))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!411530 (= res!238871 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!17457 () Bool)

(assert (=> mapIsEmpty!17457 mapRes!17457))

(declare-fun b!411531 () Bool)

(declare-fun res!238876 () Bool)

(assert (=> b!411531 (=> (not res!238876) (not e!246410))))

(declare-datatypes ((List!6891 0))(
  ( (Nil!6888) (Cons!6887 (h!7743 (_ BitVec 64)) (t!12073 List!6891)) )
))
(declare-fun arrayNoDuplicates!0 (array!24959 (_ BitVec 32) List!6891) Bool)

(assert (=> b!411531 (= res!238876 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6888))))

(declare-fun b!411532 () Bool)

(assert (=> b!411532 (= e!246412 false)))

(declare-fun minValue!515 () V!15181)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!6834 0))(
  ( (tuple2!6835 (_1!3427 (_ BitVec 64)) (_2!3427 V!15181)) )
))
(declare-datatypes ((List!6892 0))(
  ( (Nil!6889) (Cons!6888 (h!7744 tuple2!6834) (t!12074 List!6892)) )
))
(declare-datatypes ((ListLongMap!5761 0))(
  ( (ListLongMap!5762 (toList!2896 List!6892)) )
))
(declare-fun lt!189300 () ListLongMap!5761)

(declare-fun zeroValue!515 () V!15181)

(declare-fun v!412 () V!15181)

(declare-fun getCurrentListMapNoExtraKeys!1106 (array!24959 array!24961 (_ BitVec 32) (_ BitVec 32) V!15181 V!15181 (_ BitVec 32) Int) ListLongMap!5761)

(assert (=> b!411532 (= lt!189300 (getCurrentListMapNoExtraKeys!1106 lt!189299 (array!24962 (store (arr!11927 _values!549) i!563 (ValueCellFull!4935 v!412)) (size!12279 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189298 () ListLongMap!5761)

(assert (=> b!411532 (= lt!189298 (getCurrentListMapNoExtraKeys!1106 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!411533 () Bool)

(declare-fun res!238868 () Bool)

(assert (=> b!411533 (=> (not res!238868) (not e!246412))))

(assert (=> b!411533 (= res!238868 (arrayNoDuplicates!0 lt!189299 #b00000000000000000000000000000000 Nil!6888))))

(declare-fun b!411534 () Bool)

(declare-fun res!238869 () Bool)

(assert (=> b!411534 (=> (not res!238869) (not e!246410))))

(assert (=> b!411534 (= res!238869 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12278 _keys!709))))))

(declare-fun b!411535 () Bool)

(declare-fun res!238867 () Bool)

(assert (=> b!411535 (=> (not res!238867) (not e!246410))))

(assert (=> b!411535 (= res!238867 (or (= (select (arr!11926 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11926 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!411536 () Bool)

(declare-fun res!238870 () Bool)

(assert (=> b!411536 (=> (not res!238870) (not e!246410))))

(assert (=> b!411536 (= res!238870 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!238874 () Bool)

(assert (=> start!39146 (=> (not res!238874) (not e!246410))))

(assert (=> start!39146 (= res!238874 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12278 _keys!709))))))

(assert (=> start!39146 e!246410))

(assert (=> start!39146 tp_is_empty!10557))

(assert (=> start!39146 tp!33743))

(assert (=> start!39146 true))

(declare-fun array_inv!8702 (array!24961) Bool)

(assert (=> start!39146 (and (array_inv!8702 _values!549) e!246414)))

(declare-fun array_inv!8703 (array!24959) Bool)

(assert (=> start!39146 (array_inv!8703 _keys!709)))

(declare-fun mapNonEmpty!17457 () Bool)

(declare-fun tp!33744 () Bool)

(assert (=> mapNonEmpty!17457 (= mapRes!17457 (and tp!33744 e!246415))))

(declare-fun mapValue!17457 () ValueCell!4935)

(declare-fun mapRest!17457 () (Array (_ BitVec 32) ValueCell!4935))

(declare-fun mapKey!17457 () (_ BitVec 32))

(assert (=> mapNonEmpty!17457 (= (arr!11927 _values!549) (store mapRest!17457 mapKey!17457 mapValue!17457))))

(assert (= (and start!39146 res!238874) b!411529))

(assert (= (and b!411529 res!238877) b!411526))

(assert (= (and b!411526 res!238875) b!411536))

(assert (= (and b!411536 res!238870) b!411531))

(assert (= (and b!411531 res!238876) b!411534))

(assert (= (and b!411534 res!238869) b!411522))

(assert (= (and b!411522 res!238878) b!411535))

(assert (= (and b!411535 res!238867) b!411523))

(assert (= (and b!411523 res!238873) b!411525))

(assert (= (and b!411525 res!238872) b!411533))

(assert (= (and b!411533 res!238868) b!411530))

(assert (= (and b!411530 res!238871) b!411532))

(assert (= (and b!411528 condMapEmpty!17457) mapIsEmpty!17457))

(assert (= (and b!411528 (not condMapEmpty!17457)) mapNonEmpty!17457))

(get-info :version)

(assert (= (and mapNonEmpty!17457 ((_ is ValueCellFull!4935) mapValue!17457)) b!411524))

(assert (= (and b!411528 ((_ is ValueCellFull!4935) mapDefault!17457)) b!411527))

(assert (= start!39146 b!411528))

(declare-fun m!401619 () Bool)

(assert (=> b!411529 m!401619))

(declare-fun m!401621 () Bool)

(assert (=> b!411525 m!401621))

(declare-fun m!401623 () Bool)

(assert (=> b!411525 m!401623))

(declare-fun m!401625 () Bool)

(assert (=> b!411522 m!401625))

(declare-fun m!401627 () Bool)

(assert (=> b!411532 m!401627))

(declare-fun m!401629 () Bool)

(assert (=> b!411532 m!401629))

(declare-fun m!401631 () Bool)

(assert (=> b!411532 m!401631))

(declare-fun m!401633 () Bool)

(assert (=> mapNonEmpty!17457 m!401633))

(declare-fun m!401635 () Bool)

(assert (=> b!411535 m!401635))

(declare-fun m!401637 () Bool)

(assert (=> b!411533 m!401637))

(declare-fun m!401639 () Bool)

(assert (=> start!39146 m!401639))

(declare-fun m!401641 () Bool)

(assert (=> start!39146 m!401641))

(declare-fun m!401643 () Bool)

(assert (=> b!411536 m!401643))

(declare-fun m!401645 () Bool)

(assert (=> b!411531 m!401645))

(declare-fun m!401647 () Bool)

(assert (=> b!411523 m!401647))

(check-sat (not b!411532) (not b!411536) (not b!411529) (not b_next!9405) (not b!411523) (not b!411531) (not b!411522) (not start!39146) b_and!16809 (not b!411533) (not mapNonEmpty!17457) tp_is_empty!10557 (not b!411525))
(check-sat b_and!16809 (not b_next!9405))
