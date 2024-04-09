; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35032 () Bool)

(assert start!35032)

(declare-fun b_free!7713 () Bool)

(declare-fun b_next!7713 () Bool)

(assert (=> start!35032 (= b_free!7713 (not b_next!7713))))

(declare-fun tp!26718 () Bool)

(declare-fun b_and!14961 () Bool)

(assert (=> start!35032 (= tp!26718 b_and!14961)))

(declare-fun b!350805 () Bool)

(declare-fun e!214861 () Bool)

(declare-fun tp_is_empty!7665 () Bool)

(assert (=> b!350805 (= e!214861 tp_is_empty!7665)))

(declare-fun mapIsEmpty!12969 () Bool)

(declare-fun mapRes!12969 () Bool)

(assert (=> mapIsEmpty!12969 mapRes!12969))

(declare-fun b!350806 () Bool)

(declare-fun res!194564 () Bool)

(declare-fun e!214862 () Bool)

(assert (=> b!350806 (=> (not res!194564) (not e!214862))))

(declare-datatypes ((array!18875 0))(
  ( (array!18876 (arr!8940 (Array (_ BitVec 32) (_ BitVec 64))) (size!9292 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18875)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18875 (_ BitVec 32)) Bool)

(assert (=> b!350806 (= res!194564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!350807 () Bool)

(declare-fun e!214860 () Bool)

(assert (=> b!350807 (= e!214860 false)))

(declare-fun lt!164645 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!18875 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!350807 (= lt!164645 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!350808 () Bool)

(declare-fun res!194570 () Bool)

(assert (=> b!350808 (=> (not res!194570) (not e!214862))))

(declare-datatypes ((List!5226 0))(
  ( (Nil!5223) (Cons!5222 (h!6078 (_ BitVec 64)) (t!10372 List!5226)) )
))
(declare-fun arrayNoDuplicates!0 (array!18875 (_ BitVec 32) List!5226) Bool)

(assert (=> b!350808 (= res!194570 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5223))))

(declare-fun b!350809 () Bool)

(declare-fun e!214864 () Bool)

(assert (=> b!350809 (= e!214864 tp_is_empty!7665)))

(declare-fun mapNonEmpty!12969 () Bool)

(declare-fun tp!26717 () Bool)

(assert (=> mapNonEmpty!12969 (= mapRes!12969 (and tp!26717 e!214864))))

(declare-datatypes ((V!11197 0))(
  ( (V!11198 (val!3877 Int)) )
))
(declare-datatypes ((ValueCell!3489 0))(
  ( (ValueCellFull!3489 (v!6060 V!11197)) (EmptyCell!3489) )
))
(declare-fun mapRest!12969 () (Array (_ BitVec 32) ValueCell!3489))

(declare-fun mapValue!12969 () ValueCell!3489)

(declare-datatypes ((array!18877 0))(
  ( (array!18878 (arr!8941 (Array (_ BitVec 32) ValueCell!3489)) (size!9293 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18877)

(declare-fun mapKey!12969 () (_ BitVec 32))

(assert (=> mapNonEmpty!12969 (= (arr!8941 _values!1525) (store mapRest!12969 mapKey!12969 mapValue!12969))))

(declare-fun res!194565 () Bool)

(assert (=> start!35032 (=> (not res!194565) (not e!214862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35032 (= res!194565 (validMask!0 mask!2385))))

(assert (=> start!35032 e!214862))

(assert (=> start!35032 true))

(assert (=> start!35032 tp_is_empty!7665))

(assert (=> start!35032 tp!26718))

(declare-fun e!214863 () Bool)

(declare-fun array_inv!6590 (array!18877) Bool)

(assert (=> start!35032 (and (array_inv!6590 _values!1525) e!214863)))

(declare-fun array_inv!6591 (array!18875) Bool)

(assert (=> start!35032 (array_inv!6591 _keys!1895)))

(declare-fun b!350810 () Bool)

(declare-fun res!194571 () Bool)

(assert (=> b!350810 (=> (not res!194571) (not e!214862))))

(declare-fun zeroValue!1467 () V!11197)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11197)

(declare-datatypes ((tuple2!5588 0))(
  ( (tuple2!5589 (_1!2804 (_ BitVec 64)) (_2!2804 V!11197)) )
))
(declare-datatypes ((List!5227 0))(
  ( (Nil!5224) (Cons!5223 (h!6079 tuple2!5588) (t!10373 List!5227)) )
))
(declare-datatypes ((ListLongMap!4515 0))(
  ( (ListLongMap!4516 (toList!2273 List!5227)) )
))
(declare-fun contains!2338 (ListLongMap!4515 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1790 (array!18875 array!18877 (_ BitVec 32) (_ BitVec 32) V!11197 V!11197 (_ BitVec 32) Int) ListLongMap!4515)

(assert (=> b!350810 (= res!194571 (not (contains!2338 (getCurrentListMap!1790 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!350811 () Bool)

(declare-fun res!194566 () Bool)

(assert (=> b!350811 (=> (not res!194566) (not e!214860))))

(declare-fun arrayContainsKey!0 (array!18875 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!350811 (= res!194566 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!350812 () Bool)

(declare-fun res!194567 () Bool)

(assert (=> b!350812 (=> (not res!194567) (not e!214862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!350812 (= res!194567 (validKeyInArray!0 k0!1348))))

(declare-fun b!350813 () Bool)

(declare-fun res!194568 () Bool)

(assert (=> b!350813 (=> (not res!194568) (not e!214862))))

(assert (=> b!350813 (= res!194568 (and (= (size!9293 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9292 _keys!1895) (size!9293 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!350814 () Bool)

(assert (=> b!350814 (= e!214862 e!214860)))

(declare-fun res!194569 () Bool)

(assert (=> b!350814 (=> (not res!194569) (not e!214860))))

(declare-datatypes ((SeekEntryResult!3441 0))(
  ( (MissingZero!3441 (index!15943 (_ BitVec 32))) (Found!3441 (index!15944 (_ BitVec 32))) (Intermediate!3441 (undefined!4253 Bool) (index!15945 (_ BitVec 32)) (x!34924 (_ BitVec 32))) (Undefined!3441) (MissingVacant!3441 (index!15946 (_ BitVec 32))) )
))
(declare-fun lt!164646 () SeekEntryResult!3441)

(get-info :version)

(assert (=> b!350814 (= res!194569 (and (not ((_ is Found!3441) lt!164646)) (not ((_ is MissingZero!3441) lt!164646)) ((_ is MissingVacant!3441) lt!164646)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18875 (_ BitVec 32)) SeekEntryResult!3441)

(assert (=> b!350814 (= lt!164646 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!350815 () Bool)

(assert (=> b!350815 (= e!214863 (and e!214861 mapRes!12969))))

(declare-fun condMapEmpty!12969 () Bool)

(declare-fun mapDefault!12969 () ValueCell!3489)

(assert (=> b!350815 (= condMapEmpty!12969 (= (arr!8941 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3489)) mapDefault!12969)))))

(assert (= (and start!35032 res!194565) b!350813))

(assert (= (and b!350813 res!194568) b!350806))

(assert (= (and b!350806 res!194564) b!350808))

(assert (= (and b!350808 res!194570) b!350812))

(assert (= (and b!350812 res!194567) b!350810))

(assert (= (and b!350810 res!194571) b!350814))

(assert (= (and b!350814 res!194569) b!350811))

(assert (= (and b!350811 res!194566) b!350807))

(assert (= (and b!350815 condMapEmpty!12969) mapIsEmpty!12969))

(assert (= (and b!350815 (not condMapEmpty!12969)) mapNonEmpty!12969))

(assert (= (and mapNonEmpty!12969 ((_ is ValueCellFull!3489) mapValue!12969)) b!350809))

(assert (= (and b!350815 ((_ is ValueCellFull!3489) mapDefault!12969)) b!350805))

(assert (= start!35032 b!350815))

(declare-fun m!350889 () Bool)

(assert (=> b!350810 m!350889))

(assert (=> b!350810 m!350889))

(declare-fun m!350891 () Bool)

(assert (=> b!350810 m!350891))

(declare-fun m!350893 () Bool)

(assert (=> b!350811 m!350893))

(declare-fun m!350895 () Bool)

(assert (=> mapNonEmpty!12969 m!350895))

(declare-fun m!350897 () Bool)

(assert (=> b!350814 m!350897))

(declare-fun m!350899 () Bool)

(assert (=> b!350807 m!350899))

(declare-fun m!350901 () Bool)

(assert (=> b!350812 m!350901))

(declare-fun m!350903 () Bool)

(assert (=> start!35032 m!350903))

(declare-fun m!350905 () Bool)

(assert (=> start!35032 m!350905))

(declare-fun m!350907 () Bool)

(assert (=> start!35032 m!350907))

(declare-fun m!350909 () Bool)

(assert (=> b!350808 m!350909))

(declare-fun m!350911 () Bool)

(assert (=> b!350806 m!350911))

(check-sat (not b!350812) (not b_next!7713) (not b!350814) (not b!350808) (not b!350807) (not b!350811) tp_is_empty!7665 (not start!35032) (not b!350806) b_and!14961 (not b!350810) (not mapNonEmpty!12969))
(check-sat b_and!14961 (not b_next!7713))
