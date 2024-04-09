; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33876 () Bool)

(assert start!33876)

(declare-fun b_free!7047 () Bool)

(declare-fun b_next!7047 () Bool)

(assert (=> start!33876 (= b_free!7047 (not b_next!7047))))

(declare-fun tp!24653 () Bool)

(declare-fun b_and!14251 () Bool)

(assert (=> start!33876 (= tp!24653 b_and!14251)))

(declare-fun res!186100 () Bool)

(declare-fun e!206766 () Bool)

(assert (=> start!33876 (=> (not res!186100) (not e!206766))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33876 (= res!186100 (validMask!0 mask!2385))))

(assert (=> start!33876 e!206766))

(assert (=> start!33876 true))

(declare-fun tp_is_empty!6999 () Bool)

(assert (=> start!33876 tp_is_empty!6999))

(assert (=> start!33876 tp!24653))

(declare-datatypes ((V!10309 0))(
  ( (V!10310 (val!3544 Int)) )
))
(declare-datatypes ((ValueCell!3156 0))(
  ( (ValueCellFull!3156 (v!5705 V!10309)) (EmptyCell!3156) )
))
(declare-datatypes ((array!17575 0))(
  ( (array!17576 (arr!8312 (Array (_ BitVec 32) ValueCell!3156)) (size!8664 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17575)

(declare-fun e!206768 () Bool)

(declare-fun array_inv!6162 (array!17575) Bool)

(assert (=> start!33876 (and (array_inv!6162 _values!1525) e!206768)))

(declare-datatypes ((array!17577 0))(
  ( (array!17578 (arr!8313 (Array (_ BitVec 32) (_ BitVec 64))) (size!8665 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17577)

(declare-fun array_inv!6163 (array!17577) Bool)

(assert (=> start!33876 (array_inv!6163 _keys!1895)))

(declare-fun b!336892 () Bool)

(declare-fun res!186107 () Bool)

(assert (=> b!336892 (=> (not res!186107) (not e!206766))))

(declare-datatypes ((List!4791 0))(
  ( (Nil!4788) (Cons!4787 (h!5643 (_ BitVec 64)) (t!9893 List!4791)) )
))
(declare-fun arrayNoDuplicates!0 (array!17577 (_ BitVec 32) List!4791) Bool)

(assert (=> b!336892 (= res!186107 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4788))))

(declare-fun b!336893 () Bool)

(declare-fun res!186105 () Bool)

(declare-fun e!206764 () Bool)

(assert (=> b!336893 (=> (not res!186105) (not e!206764))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17577 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!336893 (= res!186105 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!11904 () Bool)

(declare-fun mapRes!11904 () Bool)

(declare-fun tp!24654 () Bool)

(declare-fun e!206769 () Bool)

(assert (=> mapNonEmpty!11904 (= mapRes!11904 (and tp!24654 e!206769))))

(declare-fun mapKey!11904 () (_ BitVec 32))

(declare-fun mapRest!11904 () (Array (_ BitVec 32) ValueCell!3156))

(declare-fun mapValue!11904 () ValueCell!3156)

(assert (=> mapNonEmpty!11904 (= (arr!8312 _values!1525) (store mapRest!11904 mapKey!11904 mapValue!11904))))

(declare-fun mapIsEmpty!11904 () Bool)

(assert (=> mapIsEmpty!11904 mapRes!11904))

(declare-fun b!336894 () Bool)

(assert (=> b!336894 (= e!206769 tp_is_empty!6999)))

(declare-fun b!336895 () Bool)

(assert (=> b!336895 (= e!206766 e!206764)))

(declare-fun res!186106 () Bool)

(assert (=> b!336895 (=> (not res!186106) (not e!206764))))

(declare-datatypes ((SeekEntryResult!3220 0))(
  ( (MissingZero!3220 (index!15059 (_ BitVec 32))) (Found!3220 (index!15060 (_ BitVec 32))) (Intermediate!3220 (undefined!4032 Bool) (index!15061 (_ BitVec 32)) (x!33595 (_ BitVec 32))) (Undefined!3220) (MissingVacant!3220 (index!15062 (_ BitVec 32))) )
))
(declare-fun lt!160332 () SeekEntryResult!3220)

(get-info :version)

(assert (=> b!336895 (= res!186106 (and (not ((_ is Found!3220) lt!160332)) ((_ is MissingZero!3220) lt!160332)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17577 (_ BitVec 32)) SeekEntryResult!3220)

(assert (=> b!336895 (= lt!160332 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!336896 () Bool)

(declare-fun res!186102 () Bool)

(assert (=> b!336896 (=> (not res!186102) (not e!206766))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!336896 (= res!186102 (validKeyInArray!0 k0!1348))))

(declare-fun b!336897 () Bool)

(declare-fun e!206767 () Bool)

(assert (=> b!336897 (= e!206767 tp_is_empty!6999)))

(declare-fun b!336898 () Bool)

(declare-fun res!186101 () Bool)

(assert (=> b!336898 (=> (not res!186101) (not e!206766))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17577 (_ BitVec 32)) Bool)

(assert (=> b!336898 (= res!186101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!336899 () Bool)

(assert (=> b!336899 (= e!206768 (and e!206767 mapRes!11904))))

(declare-fun condMapEmpty!11904 () Bool)

(declare-fun mapDefault!11904 () ValueCell!3156)

(assert (=> b!336899 (= condMapEmpty!11904 (= (arr!8312 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3156)) mapDefault!11904)))))

(declare-fun b!336900 () Bool)

(assert (=> b!336900 (= e!206764 false)))

(declare-fun lt!160331 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17577 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!336900 (= lt!160331 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!336901 () Bool)

(declare-fun res!186103 () Bool)

(assert (=> b!336901 (=> (not res!186103) (not e!206766))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!336901 (= res!186103 (and (= (size!8664 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8665 _keys!1895) (size!8664 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!336902 () Bool)

(declare-fun res!186104 () Bool)

(assert (=> b!336902 (=> (not res!186104) (not e!206766))))

(declare-fun zeroValue!1467 () V!10309)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10309)

(declare-datatypes ((tuple2!5154 0))(
  ( (tuple2!5155 (_1!2587 (_ BitVec 64)) (_2!2587 V!10309)) )
))
(declare-datatypes ((List!4792 0))(
  ( (Nil!4789) (Cons!4788 (h!5644 tuple2!5154) (t!9894 List!4792)) )
))
(declare-datatypes ((ListLongMap!4081 0))(
  ( (ListLongMap!4082 (toList!2056 List!4792)) )
))
(declare-fun contains!2099 (ListLongMap!4081 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1576 (array!17577 array!17575 (_ BitVec 32) (_ BitVec 32) V!10309 V!10309 (_ BitVec 32) Int) ListLongMap!4081)

(assert (=> b!336902 (= res!186104 (not (contains!2099 (getCurrentListMap!1576 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(assert (= (and start!33876 res!186100) b!336901))

(assert (= (and b!336901 res!186103) b!336898))

(assert (= (and b!336898 res!186101) b!336892))

(assert (= (and b!336892 res!186107) b!336896))

(assert (= (and b!336896 res!186102) b!336902))

(assert (= (and b!336902 res!186104) b!336895))

(assert (= (and b!336895 res!186106) b!336893))

(assert (= (and b!336893 res!186105) b!336900))

(assert (= (and b!336899 condMapEmpty!11904) mapIsEmpty!11904))

(assert (= (and b!336899 (not condMapEmpty!11904)) mapNonEmpty!11904))

(assert (= (and mapNonEmpty!11904 ((_ is ValueCellFull!3156) mapValue!11904)) b!336894))

(assert (= (and b!336899 ((_ is ValueCellFull!3156) mapDefault!11904)) b!336897))

(assert (= start!33876 b!336899))

(declare-fun m!340555 () Bool)

(assert (=> b!336898 m!340555))

(declare-fun m!340557 () Bool)

(assert (=> b!336896 m!340557))

(declare-fun m!340559 () Bool)

(assert (=> start!33876 m!340559))

(declare-fun m!340561 () Bool)

(assert (=> start!33876 m!340561))

(declare-fun m!340563 () Bool)

(assert (=> start!33876 m!340563))

(declare-fun m!340565 () Bool)

(assert (=> b!336892 m!340565))

(declare-fun m!340567 () Bool)

(assert (=> b!336902 m!340567))

(assert (=> b!336902 m!340567))

(declare-fun m!340569 () Bool)

(assert (=> b!336902 m!340569))

(declare-fun m!340571 () Bool)

(assert (=> mapNonEmpty!11904 m!340571))

(declare-fun m!340573 () Bool)

(assert (=> b!336900 m!340573))

(declare-fun m!340575 () Bool)

(assert (=> b!336895 m!340575))

(declare-fun m!340577 () Bool)

(assert (=> b!336893 m!340577))

(check-sat (not b!336900) (not b!336902) (not start!33876) tp_is_empty!6999 (not b!336898) (not b!336895) (not b_next!7047) (not mapNonEmpty!11904) (not b!336892) (not b!336896) (not b!336893) b_and!14251)
(check-sat b_and!14251 (not b_next!7047))
