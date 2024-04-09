; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38822 () Bool)

(assert start!38822)

(declare-fun b!404870 () Bool)

(declare-fun res!233673 () Bool)

(declare-fun e!243498 () Bool)

(assert (=> b!404870 (=> (not res!233673) (not e!243498))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!404870 (= res!233673 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!16971 () Bool)

(declare-fun mapRes!16971 () Bool)

(assert (=> mapIsEmpty!16971 mapRes!16971))

(declare-fun b!404871 () Bool)

(declare-fun res!233675 () Bool)

(assert (=> b!404871 (=> (not res!233675) (not e!243498))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!404871 (= res!233675 (validKeyInArray!0 k0!794))))

(declare-fun b!404872 () Bool)

(declare-fun res!233677 () Bool)

(assert (=> b!404872 (=> (not res!233677) (not e!243498))))

(declare-datatypes ((array!24329 0))(
  ( (array!24330 (arr!11611 (Array (_ BitVec 32) (_ BitVec 64))) (size!11963 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24329)

(declare-fun arrayContainsKey!0 (array!24329 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!404872 (= res!233677 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!233681 () Bool)

(assert (=> start!38822 (=> (not res!233681) (not e!243498))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38822 (= res!233681 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11963 _keys!709))))))

(assert (=> start!38822 e!243498))

(assert (=> start!38822 true))

(declare-datatypes ((V!14749 0))(
  ( (V!14750 (val!5161 Int)) )
))
(declare-datatypes ((ValueCell!4773 0))(
  ( (ValueCellFull!4773 (v!7404 V!14749)) (EmptyCell!4773) )
))
(declare-datatypes ((array!24331 0))(
  ( (array!24332 (arr!11612 (Array (_ BitVec 32) ValueCell!4773)) (size!11964 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24331)

(declare-fun e!243496 () Bool)

(declare-fun array_inv!8482 (array!24331) Bool)

(assert (=> start!38822 (and (array_inv!8482 _values!549) e!243496)))

(declare-fun array_inv!8483 (array!24329) Bool)

(assert (=> start!38822 (array_inv!8483 _keys!709)))

(declare-fun b!404873 () Bool)

(declare-fun e!243499 () Bool)

(assert (=> b!404873 (= e!243498 e!243499)))

(declare-fun res!233674 () Bool)

(assert (=> b!404873 (=> (not res!233674) (not e!243499))))

(declare-fun lt!188241 () array!24329)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24329 (_ BitVec 32)) Bool)

(assert (=> b!404873 (= res!233674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188241 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!404873 (= lt!188241 (array!24330 (store (arr!11611 _keys!709) i!563 k0!794) (size!11963 _keys!709)))))

(declare-fun b!404874 () Bool)

(declare-fun res!233679 () Bool)

(assert (=> b!404874 (=> (not res!233679) (not e!243498))))

(assert (=> b!404874 (= res!233679 (or (= (select (arr!11611 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11611 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16971 () Bool)

(declare-fun tp!33090 () Bool)

(declare-fun e!243497 () Bool)

(assert (=> mapNonEmpty!16971 (= mapRes!16971 (and tp!33090 e!243497))))

(declare-fun mapKey!16971 () (_ BitVec 32))

(declare-fun mapValue!16971 () ValueCell!4773)

(declare-fun mapRest!16971 () (Array (_ BitVec 32) ValueCell!4773))

(assert (=> mapNonEmpty!16971 (= (arr!11612 _values!549) (store mapRest!16971 mapKey!16971 mapValue!16971))))

(declare-fun b!404875 () Bool)

(declare-fun tp_is_empty!10233 () Bool)

(assert (=> b!404875 (= e!243497 tp_is_empty!10233)))

(declare-fun b!404876 () Bool)

(declare-fun res!233680 () Bool)

(assert (=> b!404876 (=> (not res!233680) (not e!243498))))

(declare-datatypes ((List!6733 0))(
  ( (Nil!6730) (Cons!6729 (h!7585 (_ BitVec 64)) (t!11915 List!6733)) )
))
(declare-fun arrayNoDuplicates!0 (array!24329 (_ BitVec 32) List!6733) Bool)

(assert (=> b!404876 (= res!233680 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6730))))

(declare-fun b!404877 () Bool)

(assert (=> b!404877 (= e!243499 false)))

(declare-fun lt!188240 () Bool)

(assert (=> b!404877 (= lt!188240 (arrayNoDuplicates!0 lt!188241 #b00000000000000000000000000000000 Nil!6730))))

(declare-fun b!404878 () Bool)

(declare-fun res!233682 () Bool)

(assert (=> b!404878 (=> (not res!233682) (not e!243498))))

(assert (=> b!404878 (= res!233682 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11963 _keys!709))))))

(declare-fun b!404879 () Bool)

(declare-fun e!243495 () Bool)

(assert (=> b!404879 (= e!243496 (and e!243495 mapRes!16971))))

(declare-fun condMapEmpty!16971 () Bool)

(declare-fun mapDefault!16971 () ValueCell!4773)

(assert (=> b!404879 (= condMapEmpty!16971 (= (arr!11612 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4773)) mapDefault!16971)))))

(declare-fun b!404880 () Bool)

(declare-fun res!233676 () Bool)

(assert (=> b!404880 (=> (not res!233676) (not e!243498))))

(assert (=> b!404880 (= res!233676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!404881 () Bool)

(declare-fun res!233678 () Bool)

(assert (=> b!404881 (=> (not res!233678) (not e!243498))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!404881 (= res!233678 (and (= (size!11964 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11963 _keys!709) (size!11964 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!404882 () Bool)

(assert (=> b!404882 (= e!243495 tp_is_empty!10233)))

(assert (= (and start!38822 res!233681) b!404870))

(assert (= (and b!404870 res!233673) b!404881))

(assert (= (and b!404881 res!233678) b!404880))

(assert (= (and b!404880 res!233676) b!404876))

(assert (= (and b!404876 res!233680) b!404878))

(assert (= (and b!404878 res!233682) b!404871))

(assert (= (and b!404871 res!233675) b!404874))

(assert (= (and b!404874 res!233679) b!404872))

(assert (= (and b!404872 res!233677) b!404873))

(assert (= (and b!404873 res!233674) b!404877))

(assert (= (and b!404879 condMapEmpty!16971) mapIsEmpty!16971))

(assert (= (and b!404879 (not condMapEmpty!16971)) mapNonEmpty!16971))

(get-info :version)

(assert (= (and mapNonEmpty!16971 ((_ is ValueCellFull!4773) mapValue!16971)) b!404875))

(assert (= (and b!404879 ((_ is ValueCellFull!4773) mapDefault!16971)) b!404882))

(assert (= start!38822 b!404879))

(declare-fun m!397509 () Bool)

(assert (=> b!404877 m!397509))

(declare-fun m!397511 () Bool)

(assert (=> b!404876 m!397511))

(declare-fun m!397513 () Bool)

(assert (=> b!404874 m!397513))

(declare-fun m!397515 () Bool)

(assert (=> b!404880 m!397515))

(declare-fun m!397517 () Bool)

(assert (=> mapNonEmpty!16971 m!397517))

(declare-fun m!397519 () Bool)

(assert (=> b!404871 m!397519))

(declare-fun m!397521 () Bool)

(assert (=> start!38822 m!397521))

(declare-fun m!397523 () Bool)

(assert (=> start!38822 m!397523))

(declare-fun m!397525 () Bool)

(assert (=> b!404872 m!397525))

(declare-fun m!397527 () Bool)

(assert (=> b!404873 m!397527))

(declare-fun m!397529 () Bool)

(assert (=> b!404873 m!397529))

(declare-fun m!397531 () Bool)

(assert (=> b!404870 m!397531))

(check-sat (not b!404876) (not start!38822) (not b!404873) (not b!404870) (not b!404871) (not mapNonEmpty!16971) (not b!404880) (not b!404872) tp_is_empty!10233 (not b!404877))
(check-sat)
