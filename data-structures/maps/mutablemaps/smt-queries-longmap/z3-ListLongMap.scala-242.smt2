; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4134 () Bool)

(assert start!4134)

(declare-fun b_free!1041 () Bool)

(declare-fun b_next!1041 () Bool)

(assert (=> start!4134 (= b_free!1041 (not b_next!1041))))

(declare-fun tp!4543 () Bool)

(declare-fun b_and!1853 () Bool)

(assert (=> start!4134 (= tp!4543 b_and!1853)))

(declare-fun b!31061 () Bool)

(declare-fun e!19888 () Bool)

(declare-fun tp_is_empty!1395 () Bool)

(assert (=> b!31061 (= e!19888 tp_is_empty!1395)))

(declare-fun mapNonEmpty!1621 () Bool)

(declare-fun mapRes!1621 () Bool)

(declare-fun tp!4542 () Bool)

(assert (=> mapNonEmpty!1621 (= mapRes!1621 (and tp!4542 e!19888))))

(declare-datatypes ((V!1685 0))(
  ( (V!1686 (val!724 Int)) )
))
(declare-datatypes ((ValueCell!498 0))(
  ( (ValueCellFull!498 (v!1813 V!1685)) (EmptyCell!498) )
))
(declare-fun mapRest!1621 () (Array (_ BitVec 32) ValueCell!498))

(declare-datatypes ((array!1997 0))(
  ( (array!1998 (arr!952 (Array (_ BitVec 32) ValueCell!498)) (size!1053 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1997)

(declare-fun mapValue!1621 () ValueCell!498)

(declare-fun mapKey!1621 () (_ BitVec 32))

(assert (=> mapNonEmpty!1621 (= (arr!952 _values!1501) (store mapRest!1621 mapKey!1621 mapValue!1621))))

(declare-fun b!31062 () Bool)

(declare-fun res!18770 () Bool)

(declare-fun e!19890 () Bool)

(assert (=> b!31062 (=> (not res!18770) (not e!19890))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31062 (= res!18770 (validKeyInArray!0 k0!1304))))

(declare-fun b!31063 () Bool)

(assert (=> b!31063 (= e!19890 false)))

(declare-datatypes ((array!1999 0))(
  ( (array!2000 (arr!953 (Array (_ BitVec 32) (_ BitVec 64))) (size!1054 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1999)

(declare-datatypes ((SeekEntryResult!122 0))(
  ( (MissingZero!122 (index!2610 (_ BitVec 32))) (Found!122 (index!2611 (_ BitVec 32))) (Intermediate!122 (undefined!934 Bool) (index!2612 (_ BitVec 32)) (x!6600 (_ BitVec 32))) (Undefined!122) (MissingVacant!122 (index!2613 (_ BitVec 32))) )
))
(declare-fun lt!11541 () SeekEntryResult!122)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1999 (_ BitVec 32)) SeekEntryResult!122)

(assert (=> b!31063 (= lt!11541 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!31064 () Bool)

(declare-fun res!18767 () Bool)

(assert (=> b!31064 (=> (not res!18767) (not e!19890))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1685)

(declare-fun minValue!1443 () V!1685)

(declare-datatypes ((tuple2!1176 0))(
  ( (tuple2!1177 (_1!598 (_ BitVec 64)) (_2!598 V!1685)) )
))
(declare-datatypes ((List!779 0))(
  ( (Nil!776) (Cons!775 (h!1342 tuple2!1176) (t!3474 List!779)) )
))
(declare-datatypes ((ListLongMap!757 0))(
  ( (ListLongMap!758 (toList!394 List!779)) )
))
(declare-fun contains!331 (ListLongMap!757 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!219 (array!1999 array!1997 (_ BitVec 32) (_ BitVec 32) V!1685 V!1685 (_ BitVec 32) Int) ListLongMap!757)

(assert (=> b!31064 (= res!18767 (not (contains!331 (getCurrentListMap!219 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!31065 () Bool)

(declare-fun res!18769 () Bool)

(assert (=> b!31065 (=> (not res!18769) (not e!19890))))

(declare-fun arrayContainsKey!0 (array!1999 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!31065 (= res!18769 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!1621 () Bool)

(assert (=> mapIsEmpty!1621 mapRes!1621))

(declare-fun b!31067 () Bool)

(declare-fun e!19889 () Bool)

(assert (=> b!31067 (= e!19889 tp_is_empty!1395)))

(declare-fun b!31068 () Bool)

(declare-fun res!18768 () Bool)

(assert (=> b!31068 (=> (not res!18768) (not e!19890))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1999 (_ BitVec 32)) Bool)

(assert (=> b!31068 (= res!18768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31069 () Bool)

(declare-fun e!19891 () Bool)

(assert (=> b!31069 (= e!19891 (and e!19889 mapRes!1621))))

(declare-fun condMapEmpty!1621 () Bool)

(declare-fun mapDefault!1621 () ValueCell!498)

(assert (=> b!31069 (= condMapEmpty!1621 (= (arr!952 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!498)) mapDefault!1621)))))

(declare-fun b!31070 () Bool)

(declare-fun res!18772 () Bool)

(assert (=> b!31070 (=> (not res!18772) (not e!19890))))

(assert (=> b!31070 (= res!18772 (and (= (size!1053 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1054 _keys!1833) (size!1053 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!31066 () Bool)

(declare-fun res!18766 () Bool)

(assert (=> b!31066 (=> (not res!18766) (not e!19890))))

(declare-datatypes ((List!780 0))(
  ( (Nil!777) (Cons!776 (h!1343 (_ BitVec 64)) (t!3475 List!780)) )
))
(declare-fun arrayNoDuplicates!0 (array!1999 (_ BitVec 32) List!780) Bool)

(assert (=> b!31066 (= res!18766 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!777))))

(declare-fun res!18771 () Bool)

(assert (=> start!4134 (=> (not res!18771) (not e!19890))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4134 (= res!18771 (validMask!0 mask!2294))))

(assert (=> start!4134 e!19890))

(assert (=> start!4134 true))

(assert (=> start!4134 tp!4543))

(declare-fun array_inv!635 (array!1997) Bool)

(assert (=> start!4134 (and (array_inv!635 _values!1501) e!19891)))

(declare-fun array_inv!636 (array!1999) Bool)

(assert (=> start!4134 (array_inv!636 _keys!1833)))

(assert (=> start!4134 tp_is_empty!1395))

(assert (= (and start!4134 res!18771) b!31070))

(assert (= (and b!31070 res!18772) b!31068))

(assert (= (and b!31068 res!18768) b!31066))

(assert (= (and b!31066 res!18766) b!31062))

(assert (= (and b!31062 res!18770) b!31064))

(assert (= (and b!31064 res!18767) b!31065))

(assert (= (and b!31065 res!18769) b!31063))

(assert (= (and b!31069 condMapEmpty!1621) mapIsEmpty!1621))

(assert (= (and b!31069 (not condMapEmpty!1621)) mapNonEmpty!1621))

(get-info :version)

(assert (= (and mapNonEmpty!1621 ((_ is ValueCellFull!498) mapValue!1621)) b!31061))

(assert (= (and b!31069 ((_ is ValueCellFull!498) mapDefault!1621)) b!31067))

(assert (= start!4134 b!31069))

(declare-fun m!24955 () Bool)

(assert (=> b!31066 m!24955))

(declare-fun m!24957 () Bool)

(assert (=> mapNonEmpty!1621 m!24957))

(declare-fun m!24959 () Bool)

(assert (=> b!31062 m!24959))

(declare-fun m!24961 () Bool)

(assert (=> b!31068 m!24961))

(declare-fun m!24963 () Bool)

(assert (=> b!31063 m!24963))

(declare-fun m!24965 () Bool)

(assert (=> b!31065 m!24965))

(declare-fun m!24967 () Bool)

(assert (=> b!31064 m!24967))

(assert (=> b!31064 m!24967))

(declare-fun m!24969 () Bool)

(assert (=> b!31064 m!24969))

(declare-fun m!24971 () Bool)

(assert (=> start!4134 m!24971))

(declare-fun m!24973 () Bool)

(assert (=> start!4134 m!24973))

(declare-fun m!24975 () Bool)

(assert (=> start!4134 m!24975))

(check-sat tp_is_empty!1395 (not b_next!1041) (not b!31062) (not mapNonEmpty!1621) (not b!31064) b_and!1853 (not start!4134) (not b!31066) (not b!31065) (not b!31068) (not b!31063))
(check-sat b_and!1853 (not b_next!1041))
