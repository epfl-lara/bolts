; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39032 () Bool)

(assert start!39032)

(declare-fun b!408965 () Bool)

(declare-fun res!236827 () Bool)

(declare-fun e!245389 () Bool)

(assert (=> b!408965 (=> (not res!236827) (not e!245389))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!408965 (= res!236827 (validMask!0 mask!1025))))

(declare-fun b!408966 () Bool)

(declare-fun res!236823 () Bool)

(assert (=> b!408966 (=> (not res!236823) (not e!245389))))

(declare-datatypes ((array!24739 0))(
  ( (array!24740 (arr!11816 (Array (_ BitVec 32) (_ BitVec 64))) (size!12168 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24739)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!408966 (= res!236823 (or (= (select (arr!11816 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11816 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!236832 () Bool)

(assert (=> start!39032 (=> (not res!236832) (not e!245389))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39032 (= res!236832 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12168 _keys!709))))))

(assert (=> start!39032 e!245389))

(assert (=> start!39032 true))

(declare-datatypes ((V!15029 0))(
  ( (V!15030 (val!5266 Int)) )
))
(declare-datatypes ((ValueCell!4878 0))(
  ( (ValueCellFull!4878 (v!7509 V!15029)) (EmptyCell!4878) )
))
(declare-datatypes ((array!24741 0))(
  ( (array!24742 (arr!11817 (Array (_ BitVec 32) ValueCell!4878)) (size!12169 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24741)

(declare-fun e!245385 () Bool)

(declare-fun array_inv!8628 (array!24741) Bool)

(assert (=> start!39032 (and (array_inv!8628 _values!549) e!245385)))

(declare-fun array_inv!8629 (array!24739) Bool)

(assert (=> start!39032 (array_inv!8629 _keys!709)))

(declare-fun mapIsEmpty!17286 () Bool)

(declare-fun mapRes!17286 () Bool)

(assert (=> mapIsEmpty!17286 mapRes!17286))

(declare-fun b!408967 () Bool)

(declare-fun res!236831 () Bool)

(assert (=> b!408967 (=> (not res!236831) (not e!245389))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!408967 (= res!236831 (and (= (size!12169 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12168 _keys!709) (size!12169 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!408968 () Bool)

(declare-fun e!245388 () Bool)

(assert (=> b!408968 (= e!245385 (and e!245388 mapRes!17286))))

(declare-fun condMapEmpty!17286 () Bool)

(declare-fun mapDefault!17286 () ValueCell!4878)

(assert (=> b!408968 (= condMapEmpty!17286 (= (arr!11817 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4878)) mapDefault!17286)))))

(declare-fun b!408969 () Bool)

(declare-fun res!236825 () Bool)

(assert (=> b!408969 (=> (not res!236825) (not e!245389))))

(declare-datatypes ((List!6820 0))(
  ( (Nil!6817) (Cons!6816 (h!7672 (_ BitVec 64)) (t!12002 List!6820)) )
))
(declare-fun arrayNoDuplicates!0 (array!24739 (_ BitVec 32) List!6820) Bool)

(assert (=> b!408969 (= res!236825 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6817))))

(declare-fun b!408970 () Bool)

(declare-fun e!245387 () Bool)

(declare-fun tp_is_empty!10443 () Bool)

(assert (=> b!408970 (= e!245387 tp_is_empty!10443)))

(declare-fun b!408971 () Bool)

(declare-fun res!236828 () Bool)

(assert (=> b!408971 (=> (not res!236828) (not e!245389))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!408971 (= res!236828 (validKeyInArray!0 k0!794))))

(declare-fun b!408972 () Bool)

(declare-fun e!245386 () Bool)

(assert (=> b!408972 (= e!245389 e!245386)))

(declare-fun res!236824 () Bool)

(assert (=> b!408972 (=> (not res!236824) (not e!245386))))

(declare-fun lt!188870 () array!24739)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24739 (_ BitVec 32)) Bool)

(assert (=> b!408972 (= res!236824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188870 mask!1025))))

(assert (=> b!408972 (= lt!188870 (array!24740 (store (arr!11816 _keys!709) i!563 k0!794) (size!12168 _keys!709)))))

(declare-fun b!408973 () Bool)

(declare-fun res!236829 () Bool)

(assert (=> b!408973 (=> (not res!236829) (not e!245389))))

(assert (=> b!408973 (= res!236829 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!408974 () Bool)

(declare-fun res!236826 () Bool)

(assert (=> b!408974 (=> (not res!236826) (not e!245389))))

(assert (=> b!408974 (= res!236826 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12168 _keys!709))))))

(declare-fun b!408975 () Bool)

(declare-fun res!236830 () Bool)

(assert (=> b!408975 (=> (not res!236830) (not e!245389))))

(declare-fun arrayContainsKey!0 (array!24739 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!408975 (= res!236830 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!408976 () Bool)

(assert (=> b!408976 (= e!245388 tp_is_empty!10443)))

(declare-fun mapNonEmpty!17286 () Bool)

(declare-fun tp!33405 () Bool)

(assert (=> mapNonEmpty!17286 (= mapRes!17286 (and tp!33405 e!245387))))

(declare-fun mapKey!17286 () (_ BitVec 32))

(declare-fun mapValue!17286 () ValueCell!4878)

(declare-fun mapRest!17286 () (Array (_ BitVec 32) ValueCell!4878))

(assert (=> mapNonEmpty!17286 (= (arr!11817 _values!549) (store mapRest!17286 mapKey!17286 mapValue!17286))))

(declare-fun b!408977 () Bool)

(assert (=> b!408977 (= e!245386 false)))

(declare-fun lt!188871 () Bool)

(assert (=> b!408977 (= lt!188871 (arrayNoDuplicates!0 lt!188870 #b00000000000000000000000000000000 Nil!6817))))

(assert (= (and start!39032 res!236832) b!408965))

(assert (= (and b!408965 res!236827) b!408967))

(assert (= (and b!408967 res!236831) b!408973))

(assert (= (and b!408973 res!236829) b!408969))

(assert (= (and b!408969 res!236825) b!408974))

(assert (= (and b!408974 res!236826) b!408971))

(assert (= (and b!408971 res!236828) b!408966))

(assert (= (and b!408966 res!236823) b!408975))

(assert (= (and b!408975 res!236830) b!408972))

(assert (= (and b!408972 res!236824) b!408977))

(assert (= (and b!408968 condMapEmpty!17286) mapIsEmpty!17286))

(assert (= (and b!408968 (not condMapEmpty!17286)) mapNonEmpty!17286))

(get-info :version)

(assert (= (and mapNonEmpty!17286 ((_ is ValueCellFull!4878) mapValue!17286)) b!408970))

(assert (= (and b!408968 ((_ is ValueCellFull!4878) mapDefault!17286)) b!408976))

(assert (= start!39032 b!408968))

(declare-fun m!400029 () Bool)

(assert (=> b!408965 m!400029))

(declare-fun m!400031 () Bool)

(assert (=> mapNonEmpty!17286 m!400031))

(declare-fun m!400033 () Bool)

(assert (=> b!408975 m!400033))

(declare-fun m!400035 () Bool)

(assert (=> b!408972 m!400035))

(declare-fun m!400037 () Bool)

(assert (=> b!408972 m!400037))

(declare-fun m!400039 () Bool)

(assert (=> b!408977 m!400039))

(declare-fun m!400041 () Bool)

(assert (=> b!408973 m!400041))

(declare-fun m!400043 () Bool)

(assert (=> b!408969 m!400043))

(declare-fun m!400045 () Bool)

(assert (=> b!408966 m!400045))

(declare-fun m!400047 () Bool)

(assert (=> start!39032 m!400047))

(declare-fun m!400049 () Bool)

(assert (=> start!39032 m!400049))

(declare-fun m!400051 () Bool)

(assert (=> b!408971 m!400051))

(check-sat (not start!39032) (not b!408972) (not b!408977) tp_is_empty!10443 (not b!408965) (not b!408975) (not b!408969) (not mapNonEmpty!17286) (not b!408971) (not b!408973))
(check-sat)
