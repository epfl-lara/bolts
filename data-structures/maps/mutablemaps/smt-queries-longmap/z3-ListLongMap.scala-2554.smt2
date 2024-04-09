; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39152 () Bool)

(assert start!39152)

(declare-fun b_free!9411 () Bool)

(declare-fun b_next!9411 () Bool)

(assert (=> start!39152 (= b_free!9411 (not b_next!9411))))

(declare-fun tp!33761 () Bool)

(declare-fun b_and!16815 () Bool)

(assert (=> start!39152 (= tp!33761 b_and!16815)))

(declare-fun mapNonEmpty!17466 () Bool)

(declare-fun mapRes!17466 () Bool)

(declare-fun tp!33762 () Bool)

(declare-fun e!246466 () Bool)

(assert (=> mapNonEmpty!17466 (= mapRes!17466 (and tp!33762 e!246466))))

(declare-fun mapKey!17466 () (_ BitVec 32))

(declare-datatypes ((V!15189 0))(
  ( (V!15190 (val!5326 Int)) )
))
(declare-datatypes ((ValueCell!4938 0))(
  ( (ValueCellFull!4938 (v!7569 V!15189)) (EmptyCell!4938) )
))
(declare-datatypes ((array!24969 0))(
  ( (array!24970 (arr!11931 (Array (_ BitVec 32) ValueCell!4938)) (size!12283 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24969)

(declare-fun mapRest!17466 () (Array (_ BitVec 32) ValueCell!4938))

(declare-fun mapValue!17466 () ValueCell!4938)

(assert (=> mapNonEmpty!17466 (= (arr!11931 _values!549) (store mapRest!17466 mapKey!17466 mapValue!17466))))

(declare-fun b!411657 () Bool)

(declare-fun res!238981 () Bool)

(declare-fun e!246467 () Bool)

(assert (=> b!411657 (=> (not res!238981) (not e!246467))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!411657 (= res!238981 (validMask!0 mask!1025))))

(declare-fun b!411658 () Bool)

(declare-fun res!238975 () Bool)

(assert (=> b!411658 (=> (not res!238975) (not e!246467))))

(declare-datatypes ((array!24971 0))(
  ( (array!24972 (arr!11932 (Array (_ BitVec 32) (_ BitVec 64))) (size!12284 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24971)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24971 (_ BitVec 32)) Bool)

(assert (=> b!411658 (= res!238975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!411659 () Bool)

(declare-fun e!246468 () Bool)

(declare-fun tp_is_empty!10563 () Bool)

(assert (=> b!411659 (= e!246468 tp_is_empty!10563)))

(declare-fun b!411660 () Bool)

(declare-fun res!238979 () Bool)

(assert (=> b!411660 (=> (not res!238979) (not e!246467))))

(declare-datatypes ((List!6895 0))(
  ( (Nil!6892) (Cons!6891 (h!7747 (_ BitVec 64)) (t!12077 List!6895)) )
))
(declare-fun arrayNoDuplicates!0 (array!24971 (_ BitVec 32) List!6895) Bool)

(assert (=> b!411660 (= res!238979 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6892))))

(declare-fun b!411661 () Bool)

(declare-fun e!246465 () Bool)

(assert (=> b!411661 (= e!246465 (and e!246468 mapRes!17466))))

(declare-fun condMapEmpty!17466 () Bool)

(declare-fun mapDefault!17466 () ValueCell!4938)

(assert (=> b!411661 (= condMapEmpty!17466 (= (arr!11931 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4938)) mapDefault!17466)))))

(declare-fun b!411662 () Bool)

(declare-fun e!246469 () Bool)

(assert (=> b!411662 (= e!246469 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!15189)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!189327 () array!24971)

(declare-fun zeroValue!515 () V!15189)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!6838 0))(
  ( (tuple2!6839 (_1!3429 (_ BitVec 64)) (_2!3429 V!15189)) )
))
(declare-datatypes ((List!6896 0))(
  ( (Nil!6893) (Cons!6892 (h!7748 tuple2!6838) (t!12078 List!6896)) )
))
(declare-datatypes ((ListLongMap!5765 0))(
  ( (ListLongMap!5766 (toList!2898 List!6896)) )
))
(declare-fun lt!189325 () ListLongMap!5765)

(declare-fun v!412 () V!15189)

(declare-fun getCurrentListMapNoExtraKeys!1108 (array!24971 array!24969 (_ BitVec 32) (_ BitVec 32) V!15189 V!15189 (_ BitVec 32) Int) ListLongMap!5765)

(assert (=> b!411662 (= lt!189325 (getCurrentListMapNoExtraKeys!1108 lt!189327 (array!24970 (store (arr!11931 _values!549) i!563 (ValueCellFull!4938 v!412)) (size!12283 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189326 () ListLongMap!5765)

(assert (=> b!411662 (= lt!189326 (getCurrentListMapNoExtraKeys!1108 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!411663 () Bool)

(declare-fun res!238980 () Bool)

(assert (=> b!411663 (=> (not res!238980) (not e!246469))))

(assert (=> b!411663 (= res!238980 (bvsle from!863 i!563))))

(declare-fun b!411664 () Bool)

(assert (=> b!411664 (= e!246466 tp_is_empty!10563)))

(declare-fun b!411665 () Bool)

(assert (=> b!411665 (= e!246467 e!246469)))

(declare-fun res!238986 () Bool)

(assert (=> b!411665 (=> (not res!238986) (not e!246469))))

(assert (=> b!411665 (= res!238986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189327 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!411665 (= lt!189327 (array!24972 (store (arr!11932 _keys!709) i!563 k0!794) (size!12284 _keys!709)))))

(declare-fun mapIsEmpty!17466 () Bool)

(assert (=> mapIsEmpty!17466 mapRes!17466))

(declare-fun b!411666 () Bool)

(declare-fun res!238978 () Bool)

(assert (=> b!411666 (=> (not res!238978) (not e!246467))))

(assert (=> b!411666 (= res!238978 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12284 _keys!709))))))

(declare-fun b!411667 () Bool)

(declare-fun res!238982 () Bool)

(assert (=> b!411667 (=> (not res!238982) (not e!246467))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!411667 (= res!238982 (validKeyInArray!0 k0!794))))

(declare-fun b!411668 () Bool)

(declare-fun res!238985 () Bool)

(assert (=> b!411668 (=> (not res!238985) (not e!246467))))

(assert (=> b!411668 (= res!238985 (and (= (size!12283 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12284 _keys!709) (size!12283 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!411669 () Bool)

(declare-fun res!238984 () Bool)

(assert (=> b!411669 (=> (not res!238984) (not e!246469))))

(assert (=> b!411669 (= res!238984 (arrayNoDuplicates!0 lt!189327 #b00000000000000000000000000000000 Nil!6892))))

(declare-fun b!411670 () Bool)

(declare-fun res!238977 () Bool)

(assert (=> b!411670 (=> (not res!238977) (not e!246467))))

(assert (=> b!411670 (= res!238977 (or (= (select (arr!11932 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11932 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!238976 () Bool)

(assert (=> start!39152 (=> (not res!238976) (not e!246467))))

(assert (=> start!39152 (= res!238976 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12284 _keys!709))))))

(assert (=> start!39152 e!246467))

(assert (=> start!39152 tp_is_empty!10563))

(assert (=> start!39152 tp!33761))

(assert (=> start!39152 true))

(declare-fun array_inv!8704 (array!24969) Bool)

(assert (=> start!39152 (and (array_inv!8704 _values!549) e!246465)))

(declare-fun array_inv!8705 (array!24971) Bool)

(assert (=> start!39152 (array_inv!8705 _keys!709)))

(declare-fun b!411671 () Bool)

(declare-fun res!238983 () Bool)

(assert (=> b!411671 (=> (not res!238983) (not e!246467))))

(declare-fun arrayContainsKey!0 (array!24971 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!411671 (= res!238983 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!39152 res!238976) b!411657))

(assert (= (and b!411657 res!238981) b!411668))

(assert (= (and b!411668 res!238985) b!411658))

(assert (= (and b!411658 res!238975) b!411660))

(assert (= (and b!411660 res!238979) b!411666))

(assert (= (and b!411666 res!238978) b!411667))

(assert (= (and b!411667 res!238982) b!411670))

(assert (= (and b!411670 res!238977) b!411671))

(assert (= (and b!411671 res!238983) b!411665))

(assert (= (and b!411665 res!238986) b!411669))

(assert (= (and b!411669 res!238984) b!411663))

(assert (= (and b!411663 res!238980) b!411662))

(assert (= (and b!411661 condMapEmpty!17466) mapIsEmpty!17466))

(assert (= (and b!411661 (not condMapEmpty!17466)) mapNonEmpty!17466))

(get-info :version)

(assert (= (and mapNonEmpty!17466 ((_ is ValueCellFull!4938) mapValue!17466)) b!411664))

(assert (= (and b!411661 ((_ is ValueCellFull!4938) mapDefault!17466)) b!411659))

(assert (= start!39152 b!411661))

(declare-fun m!401709 () Bool)

(assert (=> b!411657 m!401709))

(declare-fun m!401711 () Bool)

(assert (=> b!411669 m!401711))

(declare-fun m!401713 () Bool)

(assert (=> b!411665 m!401713))

(declare-fun m!401715 () Bool)

(assert (=> b!411665 m!401715))

(declare-fun m!401717 () Bool)

(assert (=> b!411667 m!401717))

(declare-fun m!401719 () Bool)

(assert (=> b!411658 m!401719))

(declare-fun m!401721 () Bool)

(assert (=> mapNonEmpty!17466 m!401721))

(declare-fun m!401723 () Bool)

(assert (=> b!411660 m!401723))

(declare-fun m!401725 () Bool)

(assert (=> start!39152 m!401725))

(declare-fun m!401727 () Bool)

(assert (=> start!39152 m!401727))

(declare-fun m!401729 () Bool)

(assert (=> b!411670 m!401729))

(declare-fun m!401731 () Bool)

(assert (=> b!411671 m!401731))

(declare-fun m!401733 () Bool)

(assert (=> b!411662 m!401733))

(declare-fun m!401735 () Bool)

(assert (=> b!411662 m!401735))

(declare-fun m!401737 () Bool)

(assert (=> b!411662 m!401737))

(check-sat (not b!411660) (not b!411662) (not start!39152) (not b!411665) (not b!411669) (not b!411658) b_and!16815 (not b!411667) (not mapNonEmpty!17466) (not b!411657) (not b!411671) tp_is_empty!10563 (not b_next!9411))
(check-sat b_and!16815 (not b_next!9411))
