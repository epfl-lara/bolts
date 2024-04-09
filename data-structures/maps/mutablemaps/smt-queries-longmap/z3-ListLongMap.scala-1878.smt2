; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33712 () Bool)

(assert start!33712)

(declare-fun b_free!6939 () Bool)

(declare-fun b_next!6939 () Bool)

(assert (=> start!33712 (= b_free!6939 (not b_next!6939))))

(declare-fun tp!24321 () Bool)

(declare-fun b_and!14137 () Bool)

(assert (=> start!33712 (= tp!24321 b_and!14137)))

(declare-fun b!334795 () Bool)

(declare-fun res!184737 () Bool)

(declare-fun e!205516 () Bool)

(assert (=> b!334795 (=> (not res!184737) (not e!205516))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10165 0))(
  ( (V!10166 (val!3490 Int)) )
))
(declare-datatypes ((ValueCell!3102 0))(
  ( (ValueCellFull!3102 (v!5648 V!10165)) (EmptyCell!3102) )
))
(declare-datatypes ((array!17367 0))(
  ( (array!17368 (arr!8211 (Array (_ BitVec 32) ValueCell!3102)) (size!8563 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17367)

(declare-datatypes ((array!17369 0))(
  ( (array!17370 (arr!8212 (Array (_ BitVec 32) (_ BitVec 64))) (size!8564 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17369)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!334795 (= res!184737 (and (= (size!8563 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8564 _keys!1895) (size!8563 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!11733 () Bool)

(declare-fun mapRes!11733 () Bool)

(assert (=> mapIsEmpty!11733 mapRes!11733))

(declare-fun b!334796 () Bool)

(declare-fun res!184739 () Bool)

(assert (=> b!334796 (=> (not res!184739) (not e!205516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17369 (_ BitVec 32)) Bool)

(assert (=> b!334796 (= res!184739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun res!184736 () Bool)

(assert (=> start!33712 (=> (not res!184736) (not e!205516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33712 (= res!184736 (validMask!0 mask!2385))))

(assert (=> start!33712 e!205516))

(assert (=> start!33712 true))

(declare-fun tp_is_empty!6891 () Bool)

(assert (=> start!33712 tp_is_empty!6891))

(assert (=> start!33712 tp!24321))

(declare-fun e!205518 () Bool)

(declare-fun array_inv!6088 (array!17367) Bool)

(assert (=> start!33712 (and (array_inv!6088 _values!1525) e!205518)))

(declare-fun array_inv!6089 (array!17369) Bool)

(assert (=> start!33712 (array_inv!6089 _keys!1895)))

(declare-fun b!334797 () Bool)

(declare-fun e!205513 () Bool)

(assert (=> b!334797 (= e!205513 (not true))))

(declare-datatypes ((tuple2!5070 0))(
  ( (tuple2!5071 (_1!2545 (_ BitVec 64)) (_2!2545 V!10165)) )
))
(declare-datatypes ((List!4712 0))(
  ( (Nil!4709) (Cons!4708 (h!5564 tuple2!5070) (t!9808 List!4712)) )
))
(declare-datatypes ((ListLongMap!3997 0))(
  ( (ListLongMap!3998 (toList!2014 List!4712)) )
))
(declare-fun lt!159632 () ListLongMap!3997)

(declare-datatypes ((SeekEntryResult!3183 0))(
  ( (MissingZero!3183 (index!14911 (_ BitVec 32))) (Found!3183 (index!14912 (_ BitVec 32))) (Intermediate!3183 (undefined!3995 Bool) (index!14913 (_ BitVec 32)) (x!33384 (_ BitVec 32))) (Undefined!3183) (MissingVacant!3183 (index!14914 (_ BitVec 32))) )
))
(declare-fun lt!159630 () SeekEntryResult!3183)

(declare-fun contains!2054 (ListLongMap!3997 (_ BitVec 64)) Bool)

(assert (=> b!334797 (contains!2054 lt!159632 (select (arr!8212 _keys!1895) (index!14912 lt!159630)))))

(declare-fun zeroValue!1467 () V!10165)

(declare-datatypes ((Unit!10414 0))(
  ( (Unit!10415) )
))
(declare-fun lt!159631 () Unit!10414)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10165)

(declare-fun lemmaValidKeyInArrayIsInListMap!153 (array!17369 array!17367 (_ BitVec 32) (_ BitVec 32) V!10165 V!10165 (_ BitVec 32) Int) Unit!10414)

(assert (=> b!334797 (= lt!159631 (lemmaValidKeyInArrayIsInListMap!153 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!14912 lt!159630) defaultEntry!1528))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17369 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!334797 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-fun lt!159633 () Unit!10414)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17369 (_ BitVec 64) (_ BitVec 32)) Unit!10414)

(assert (=> b!334797 (= lt!159633 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14912 lt!159630)))))

(declare-fun b!334798 () Bool)

(declare-fun e!205514 () Bool)

(assert (=> b!334798 (= e!205514 tp_is_empty!6891)))

(declare-fun b!334799 () Bool)

(declare-fun e!205517 () Bool)

(assert (=> b!334799 (= e!205517 e!205513)))

(declare-fun res!184735 () Bool)

(assert (=> b!334799 (=> (not res!184735) (not e!205513))))

(get-info :version)

(assert (=> b!334799 (= res!184735 (and ((_ is Found!3183) lt!159630) (= (select (arr!8212 _keys!1895) (index!14912 lt!159630)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17369 (_ BitVec 32)) SeekEntryResult!3183)

(assert (=> b!334799 (= lt!159630 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!11733 () Bool)

(declare-fun tp!24320 () Bool)

(assert (=> mapNonEmpty!11733 (= mapRes!11733 (and tp!24320 e!205514))))

(declare-fun mapRest!11733 () (Array (_ BitVec 32) ValueCell!3102))

(declare-fun mapValue!11733 () ValueCell!3102)

(declare-fun mapKey!11733 () (_ BitVec 32))

(assert (=> mapNonEmpty!11733 (= (arr!8211 _values!1525) (store mapRest!11733 mapKey!11733 mapValue!11733))))

(declare-fun b!334800 () Bool)

(declare-fun e!205512 () Bool)

(assert (=> b!334800 (= e!205518 (and e!205512 mapRes!11733))))

(declare-fun condMapEmpty!11733 () Bool)

(declare-fun mapDefault!11733 () ValueCell!3102)

(assert (=> b!334800 (= condMapEmpty!11733 (= (arr!8211 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3102)) mapDefault!11733)))))

(declare-fun b!334801 () Bool)

(declare-fun res!184740 () Bool)

(assert (=> b!334801 (=> (not res!184740) (not e!205516))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!334801 (= res!184740 (validKeyInArray!0 k0!1348))))

(declare-fun b!334802 () Bool)

(declare-fun res!184741 () Bool)

(assert (=> b!334802 (=> (not res!184741) (not e!205516))))

(declare-datatypes ((List!4713 0))(
  ( (Nil!4710) (Cons!4709 (h!5565 (_ BitVec 64)) (t!9809 List!4713)) )
))
(declare-fun arrayNoDuplicates!0 (array!17369 (_ BitVec 32) List!4713) Bool)

(assert (=> b!334802 (= res!184741 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4710))))

(declare-fun b!334803 () Bool)

(assert (=> b!334803 (= e!205516 e!205517)))

(declare-fun res!184742 () Bool)

(assert (=> b!334803 (=> (not res!184742) (not e!205517))))

(assert (=> b!334803 (= res!184742 (not (contains!2054 lt!159632 k0!1348)))))

(declare-fun getCurrentListMap!1537 (array!17369 array!17367 (_ BitVec 32) (_ BitVec 32) V!10165 V!10165 (_ BitVec 32) Int) ListLongMap!3997)

(assert (=> b!334803 (= lt!159632 (getCurrentListMap!1537 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!334804 () Bool)

(assert (=> b!334804 (= e!205512 tp_is_empty!6891)))

(declare-fun b!334805 () Bool)

(declare-fun res!184738 () Bool)

(assert (=> b!334805 (=> (not res!184738) (not e!205513))))

(assert (=> b!334805 (= res!184738 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14912 lt!159630)))))

(assert (= (and start!33712 res!184736) b!334795))

(assert (= (and b!334795 res!184737) b!334796))

(assert (= (and b!334796 res!184739) b!334802))

(assert (= (and b!334802 res!184741) b!334801))

(assert (= (and b!334801 res!184740) b!334803))

(assert (= (and b!334803 res!184742) b!334799))

(assert (= (and b!334799 res!184735) b!334805))

(assert (= (and b!334805 res!184738) b!334797))

(assert (= (and b!334800 condMapEmpty!11733) mapIsEmpty!11733))

(assert (= (and b!334800 (not condMapEmpty!11733)) mapNonEmpty!11733))

(assert (= (and mapNonEmpty!11733 ((_ is ValueCellFull!3102) mapValue!11733)) b!334798))

(assert (= (and b!334800 ((_ is ValueCellFull!3102) mapDefault!11733)) b!334804))

(assert (= start!33712 b!334800))

(declare-fun m!338845 () Bool)

(assert (=> b!334801 m!338845))

(declare-fun m!338847 () Bool)

(assert (=> b!334803 m!338847))

(declare-fun m!338849 () Bool)

(assert (=> b!334803 m!338849))

(declare-fun m!338851 () Bool)

(assert (=> mapNonEmpty!11733 m!338851))

(declare-fun m!338853 () Bool)

(assert (=> b!334805 m!338853))

(declare-fun m!338855 () Bool)

(assert (=> start!33712 m!338855))

(declare-fun m!338857 () Bool)

(assert (=> start!33712 m!338857))

(declare-fun m!338859 () Bool)

(assert (=> start!33712 m!338859))

(declare-fun m!338861 () Bool)

(assert (=> b!334799 m!338861))

(declare-fun m!338863 () Bool)

(assert (=> b!334799 m!338863))

(declare-fun m!338865 () Bool)

(assert (=> b!334796 m!338865))

(declare-fun m!338867 () Bool)

(assert (=> b!334797 m!338867))

(declare-fun m!338869 () Bool)

(assert (=> b!334797 m!338869))

(declare-fun m!338871 () Bool)

(assert (=> b!334797 m!338871))

(assert (=> b!334797 m!338861))

(assert (=> b!334797 m!338861))

(declare-fun m!338873 () Bool)

(assert (=> b!334797 m!338873))

(declare-fun m!338875 () Bool)

(assert (=> b!334802 m!338875))

(check-sat (not b!334803) (not b!334805) (not mapNonEmpty!11733) (not b!334797) (not b_next!6939) (not b!334796) b_and!14137 (not start!33712) tp_is_empty!6891 (not b!334802) (not b!334799) (not b!334801))
(check-sat b_and!14137 (not b_next!6939))
