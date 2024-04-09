; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33718 () Bool)

(assert start!33718)

(declare-fun b_free!6945 () Bool)

(declare-fun b_next!6945 () Bool)

(assert (=> start!33718 (= b_free!6945 (not b_next!6945))))

(declare-fun tp!24339 () Bool)

(declare-fun b_and!14143 () Bool)

(assert (=> start!33718 (= tp!24339 b_and!14143)))

(declare-fun b!334894 () Bool)

(declare-fun res!184807 () Bool)

(declare-fun e!205578 () Bool)

(assert (=> b!334894 (=> (not res!184807) (not e!205578))))

(declare-datatypes ((SeekEntryResult!3186 0))(
  ( (MissingZero!3186 (index!14923 (_ BitVec 32))) (Found!3186 (index!14924 (_ BitVec 32))) (Intermediate!3186 (undefined!3998 Bool) (index!14925 (_ BitVec 32)) (x!33395 (_ BitVec 32))) (Undefined!3186) (MissingVacant!3186 (index!14926 (_ BitVec 32))) )
))
(declare-fun lt!159666 () SeekEntryResult!3186)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((array!17379 0))(
  ( (array!17380 (arr!8217 (Array (_ BitVec 32) (_ BitVec 64))) (size!8569 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17379)

(declare-fun arrayContainsKey!0 (array!17379 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!334894 (= res!184807 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14924 lt!159666)))))

(declare-fun b!334895 () Bool)

(declare-fun res!184813 () Bool)

(declare-fun e!205581 () Bool)

(assert (=> b!334895 (=> (not res!184813) (not e!205581))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17379 (_ BitVec 32)) Bool)

(assert (=> b!334895 (= res!184813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!334896 () Bool)

(declare-fun e!205580 () Bool)

(declare-fun tp_is_empty!6897 () Bool)

(assert (=> b!334896 (= e!205580 tp_is_empty!6897)))

(declare-fun b!334897 () Bool)

(declare-fun e!205577 () Bool)

(assert (=> b!334897 (= e!205577 tp_is_empty!6897)))

(declare-fun b!334898 () Bool)

(assert (=> b!334898 (= e!205578 (not true))))

(declare-datatypes ((V!10173 0))(
  ( (V!10174 (val!3493 Int)) )
))
(declare-datatypes ((tuple2!5074 0))(
  ( (tuple2!5075 (_1!2547 (_ BitVec 64)) (_2!2547 V!10173)) )
))
(declare-datatypes ((List!4716 0))(
  ( (Nil!4713) (Cons!4712 (h!5568 tuple2!5074) (t!9812 List!4716)) )
))
(declare-datatypes ((ListLongMap!4001 0))(
  ( (ListLongMap!4002 (toList!2016 List!4716)) )
))
(declare-fun lt!159667 () ListLongMap!4001)

(declare-fun contains!2056 (ListLongMap!4001 (_ BitVec 64)) Bool)

(assert (=> b!334898 (contains!2056 lt!159667 (select (arr!8217 _keys!1895) (index!14924 lt!159666)))))

(declare-datatypes ((Unit!10418 0))(
  ( (Unit!10419) )
))
(declare-fun lt!159669 () Unit!10418)

(declare-fun zeroValue!1467 () V!10173)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3105 0))(
  ( (ValueCellFull!3105 (v!5651 V!10173)) (EmptyCell!3105) )
))
(declare-datatypes ((array!17381 0))(
  ( (array!17382 (arr!8218 (Array (_ BitVec 32) ValueCell!3105)) (size!8570 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17381)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10173)

(declare-fun lemmaValidKeyInArrayIsInListMap!155 (array!17379 array!17381 (_ BitVec 32) (_ BitVec 32) V!10173 V!10173 (_ BitVec 32) Int) Unit!10418)

(assert (=> b!334898 (= lt!159669 (lemmaValidKeyInArrayIsInListMap!155 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!14924 lt!159666) defaultEntry!1528))))

(assert (=> b!334898 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-fun lt!159668 () Unit!10418)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17379 (_ BitVec 64) (_ BitVec 32)) Unit!10418)

(assert (=> b!334898 (= lt!159668 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14924 lt!159666)))))

(declare-fun mapIsEmpty!11742 () Bool)

(declare-fun mapRes!11742 () Bool)

(assert (=> mapIsEmpty!11742 mapRes!11742))

(declare-fun b!334899 () Bool)

(declare-fun e!205579 () Bool)

(assert (=> b!334899 (= e!205579 e!205578)))

(declare-fun res!184808 () Bool)

(assert (=> b!334899 (=> (not res!184808) (not e!205578))))

(get-info :version)

(assert (=> b!334899 (= res!184808 (and ((_ is Found!3186) lt!159666) (= (select (arr!8217 _keys!1895) (index!14924 lt!159666)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17379 (_ BitVec 32)) SeekEntryResult!3186)

(assert (=> b!334899 (= lt!159666 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!334900 () Bool)

(declare-fun res!184814 () Bool)

(assert (=> b!334900 (=> (not res!184814) (not e!205581))))

(declare-datatypes ((List!4717 0))(
  ( (Nil!4714) (Cons!4713 (h!5569 (_ BitVec 64)) (t!9813 List!4717)) )
))
(declare-fun arrayNoDuplicates!0 (array!17379 (_ BitVec 32) List!4717) Bool)

(assert (=> b!334900 (= res!184814 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4714))))

(declare-fun b!334901 () Bool)

(assert (=> b!334901 (= e!205581 e!205579)))

(declare-fun res!184810 () Bool)

(assert (=> b!334901 (=> (not res!184810) (not e!205579))))

(assert (=> b!334901 (= res!184810 (not (contains!2056 lt!159667 k0!1348)))))

(declare-fun getCurrentListMap!1538 (array!17379 array!17381 (_ BitVec 32) (_ BitVec 32) V!10173 V!10173 (_ BitVec 32) Int) ListLongMap!4001)

(assert (=> b!334901 (= lt!159667 (getCurrentListMap!1538 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun res!184812 () Bool)

(assert (=> start!33718 (=> (not res!184812) (not e!205581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33718 (= res!184812 (validMask!0 mask!2385))))

(assert (=> start!33718 e!205581))

(assert (=> start!33718 true))

(assert (=> start!33718 tp_is_empty!6897))

(assert (=> start!33718 tp!24339))

(declare-fun e!205575 () Bool)

(declare-fun array_inv!6092 (array!17381) Bool)

(assert (=> start!33718 (and (array_inv!6092 _values!1525) e!205575)))

(declare-fun array_inv!6093 (array!17379) Bool)

(assert (=> start!33718 (array_inv!6093 _keys!1895)))

(declare-fun b!334902 () Bool)

(declare-fun res!184809 () Bool)

(assert (=> b!334902 (=> (not res!184809) (not e!205581))))

(assert (=> b!334902 (= res!184809 (and (= (size!8570 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8569 _keys!1895) (size!8570 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!11742 () Bool)

(declare-fun tp!24338 () Bool)

(assert (=> mapNonEmpty!11742 (= mapRes!11742 (and tp!24338 e!205580))))

(declare-fun mapKey!11742 () (_ BitVec 32))

(declare-fun mapRest!11742 () (Array (_ BitVec 32) ValueCell!3105))

(declare-fun mapValue!11742 () ValueCell!3105)

(assert (=> mapNonEmpty!11742 (= (arr!8218 _values!1525) (store mapRest!11742 mapKey!11742 mapValue!11742))))

(declare-fun b!334903 () Bool)

(assert (=> b!334903 (= e!205575 (and e!205577 mapRes!11742))))

(declare-fun condMapEmpty!11742 () Bool)

(declare-fun mapDefault!11742 () ValueCell!3105)

(assert (=> b!334903 (= condMapEmpty!11742 (= (arr!8218 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3105)) mapDefault!11742)))))

(declare-fun b!334904 () Bool)

(declare-fun res!184811 () Bool)

(assert (=> b!334904 (=> (not res!184811) (not e!205581))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!334904 (= res!184811 (validKeyInArray!0 k0!1348))))

(assert (= (and start!33718 res!184812) b!334902))

(assert (= (and b!334902 res!184809) b!334895))

(assert (= (and b!334895 res!184813) b!334900))

(assert (= (and b!334900 res!184814) b!334904))

(assert (= (and b!334904 res!184811) b!334901))

(assert (= (and b!334901 res!184810) b!334899))

(assert (= (and b!334899 res!184808) b!334894))

(assert (= (and b!334894 res!184807) b!334898))

(assert (= (and b!334903 condMapEmpty!11742) mapIsEmpty!11742))

(assert (= (and b!334903 (not condMapEmpty!11742)) mapNonEmpty!11742))

(assert (= (and mapNonEmpty!11742 ((_ is ValueCellFull!3105) mapValue!11742)) b!334896))

(assert (= (and b!334903 ((_ is ValueCellFull!3105) mapDefault!11742)) b!334897))

(assert (= start!33718 b!334903))

(declare-fun m!338941 () Bool)

(assert (=> b!334894 m!338941))

(declare-fun m!338943 () Bool)

(assert (=> b!334895 m!338943))

(declare-fun m!338945 () Bool)

(assert (=> b!334899 m!338945))

(declare-fun m!338947 () Bool)

(assert (=> b!334899 m!338947))

(declare-fun m!338949 () Bool)

(assert (=> b!334900 m!338949))

(declare-fun m!338951 () Bool)

(assert (=> start!33718 m!338951))

(declare-fun m!338953 () Bool)

(assert (=> start!33718 m!338953))

(declare-fun m!338955 () Bool)

(assert (=> start!33718 m!338955))

(declare-fun m!338957 () Bool)

(assert (=> b!334901 m!338957))

(declare-fun m!338959 () Bool)

(assert (=> b!334901 m!338959))

(assert (=> b!334898 m!338945))

(declare-fun m!338961 () Bool)

(assert (=> b!334898 m!338961))

(assert (=> b!334898 m!338945))

(declare-fun m!338963 () Bool)

(assert (=> b!334898 m!338963))

(declare-fun m!338965 () Bool)

(assert (=> b!334898 m!338965))

(declare-fun m!338967 () Bool)

(assert (=> b!334898 m!338967))

(declare-fun m!338969 () Bool)

(assert (=> b!334904 m!338969))

(declare-fun m!338971 () Bool)

(assert (=> mapNonEmpty!11742 m!338971))

(check-sat (not b!334900) (not b!334901) (not start!33718) b_and!14143 (not b!334899) (not b!334894) (not b!334904) (not b!334895) (not b_next!6945) tp_is_empty!6897 (not mapNonEmpty!11742) (not b!334898))
(check-sat b_and!14143 (not b_next!6945))
