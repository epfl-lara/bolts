; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4122 () Bool)

(assert start!4122)

(declare-fun b_free!1029 () Bool)

(declare-fun b_next!1029 () Bool)

(assert (=> start!4122 (= b_free!1029 (not b_next!1029))))

(declare-fun tp!4506 () Bool)

(declare-fun b_and!1841 () Bool)

(assert (=> start!4122 (= tp!4506 b_and!1841)))

(declare-fun b!30868 () Bool)

(declare-fun e!19777 () Bool)

(declare-fun e!19776 () Bool)

(assert (=> b!30868 (= e!19777 e!19776)))

(declare-fun res!18632 () Bool)

(assert (=> b!30868 (=> (not res!18632) (not e!19776))))

(declare-datatypes ((V!1669 0))(
  ( (V!1670 (val!718 Int)) )
))
(declare-datatypes ((tuple2!1166 0))(
  ( (tuple2!1167 (_1!593 (_ BitVec 64)) (_2!593 V!1669)) )
))
(declare-datatypes ((List!769 0))(
  ( (Nil!766) (Cons!765 (h!1332 tuple2!1166) (t!3464 List!769)) )
))
(declare-datatypes ((ListLongMap!747 0))(
  ( (ListLongMap!748 (toList!389 List!769)) )
))
(declare-fun lt!11498 () ListLongMap!747)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun contains!326 (ListLongMap!747 (_ BitVec 64)) Bool)

(assert (=> b!30868 (= res!18632 (not (contains!326 lt!11498 k0!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!492 0))(
  ( (ValueCellFull!492 (v!1807 V!1669)) (EmptyCell!492) )
))
(declare-datatypes ((array!1975 0))(
  ( (array!1976 (arr!941 (Array (_ BitVec 32) ValueCell!492)) (size!1042 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1975)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1977 0))(
  ( (array!1978 (arr!942 (Array (_ BitVec 32) (_ BitVec 64))) (size!1043 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1977)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1669)

(declare-fun minValue!1443 () V!1669)

(declare-fun getCurrentListMap!215 (array!1977 array!1975 (_ BitVec 32) (_ BitVec 32) V!1669 V!1669 (_ BitVec 32) Int) ListLongMap!747)

(assert (=> b!30868 (= lt!11498 (getCurrentListMap!215 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!30869 () Bool)

(declare-fun e!19774 () Bool)

(declare-fun tp_is_empty!1383 () Bool)

(assert (=> b!30869 (= e!19774 tp_is_empty!1383)))

(declare-fun b!30870 () Bool)

(declare-fun res!18627 () Bool)

(assert (=> b!30870 (=> (not res!18627) (not e!19777))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!30870 (= res!18627 (validKeyInArray!0 k0!1304))))

(declare-fun b!30871 () Bool)

(declare-fun e!19772 () Bool)

(declare-fun mapRes!1603 () Bool)

(assert (=> b!30871 (= e!19772 (and e!19774 mapRes!1603))))

(declare-fun condMapEmpty!1603 () Bool)

(declare-fun mapDefault!1603 () ValueCell!492)

(assert (=> b!30871 (= condMapEmpty!1603 (= (arr!941 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!492)) mapDefault!1603)))))

(declare-fun mapNonEmpty!1603 () Bool)

(declare-fun tp!4507 () Bool)

(declare-fun e!19775 () Bool)

(assert (=> mapNonEmpty!1603 (= mapRes!1603 (and tp!4507 e!19775))))

(declare-fun mapValue!1603 () ValueCell!492)

(declare-fun mapRest!1603 () (Array (_ BitVec 32) ValueCell!492))

(declare-fun mapKey!1603 () (_ BitVec 32))

(assert (=> mapNonEmpty!1603 (= (arr!941 _values!1501) (store mapRest!1603 mapKey!1603 mapValue!1603))))

(declare-fun res!18634 () Bool)

(assert (=> start!4122 (=> (not res!18634) (not e!19777))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4122 (= res!18634 (validMask!0 mask!2294))))

(assert (=> start!4122 e!19777))

(assert (=> start!4122 true))

(assert (=> start!4122 tp!4506))

(declare-fun array_inv!629 (array!1975) Bool)

(assert (=> start!4122 (and (array_inv!629 _values!1501) e!19772)))

(declare-fun array_inv!630 (array!1977) Bool)

(assert (=> start!4122 (array_inv!630 _keys!1833)))

(assert (=> start!4122 tp_is_empty!1383))

(declare-fun b!30872 () Bool)

(assert (=> b!30872 (= e!19775 tp_is_empty!1383)))

(declare-fun b!30873 () Bool)

(declare-fun res!18631 () Bool)

(assert (=> b!30873 (=> (not res!18631) (not e!19777))))

(declare-datatypes ((List!770 0))(
  ( (Nil!767) (Cons!766 (h!1333 (_ BitVec 64)) (t!3465 List!770)) )
))
(declare-fun arrayNoDuplicates!0 (array!1977 (_ BitVec 32) List!770) Bool)

(assert (=> b!30873 (= res!18631 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!767))))

(declare-fun b!30874 () Bool)

(declare-fun e!19773 () Bool)

(assert (=> b!30874 (= e!19773 (not true))))

(declare-datatypes ((SeekEntryResult!117 0))(
  ( (MissingZero!117 (index!2590 (_ BitVec 32))) (Found!117 (index!2591 (_ BitVec 32))) (Intermediate!117 (undefined!929 Bool) (index!2592 (_ BitVec 32)) (x!6579 (_ BitVec 32))) (Undefined!117) (MissingVacant!117 (index!2593 (_ BitVec 32))) )
))
(declare-fun lt!11497 () SeekEntryResult!117)

(assert (=> b!30874 (contains!326 lt!11498 (select (arr!942 _keys!1833) (index!2591 lt!11497)))))

(declare-datatypes ((Unit!697 0))(
  ( (Unit!698) )
))
(declare-fun lt!11499 () Unit!697)

(declare-fun lemmaValidKeyInArrayIsInListMap!40 (array!1977 array!1975 (_ BitVec 32) (_ BitVec 32) V!1669 V!1669 (_ BitVec 32) Int) Unit!697)

(assert (=> b!30874 (= lt!11499 (lemmaValidKeyInArrayIsInListMap!40 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 (index!2591 lt!11497) defaultEntry!1504))))

(declare-fun b!30875 () Bool)

(declare-fun res!18630 () Bool)

(assert (=> b!30875 (=> (not res!18630) (not e!19776))))

(declare-fun arrayContainsKey!0 (array!1977 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30875 (= res!18630 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!1603 () Bool)

(assert (=> mapIsEmpty!1603 mapRes!1603))

(declare-fun b!30876 () Bool)

(declare-fun res!18633 () Bool)

(assert (=> b!30876 (=> (not res!18633) (not e!19777))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1977 (_ BitVec 32)) Bool)

(assert (=> b!30876 (= res!18633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!30877 () Bool)

(declare-fun res!18629 () Bool)

(assert (=> b!30877 (=> (not res!18629) (not e!19777))))

(assert (=> b!30877 (= res!18629 (and (= (size!1042 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1043 _keys!1833) (size!1042 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!30878 () Bool)

(assert (=> b!30878 (= e!19776 e!19773)))

(declare-fun res!18628 () Bool)

(assert (=> b!30878 (=> (not res!18628) (not e!19773))))

(get-info :version)

(assert (=> b!30878 (= res!18628 ((_ is Found!117) lt!11497))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1977 (_ BitVec 32)) SeekEntryResult!117)

(assert (=> b!30878 (= lt!11497 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(assert (= (and start!4122 res!18634) b!30877))

(assert (= (and b!30877 res!18629) b!30876))

(assert (= (and b!30876 res!18633) b!30873))

(assert (= (and b!30873 res!18631) b!30870))

(assert (= (and b!30870 res!18627) b!30868))

(assert (= (and b!30868 res!18632) b!30875))

(assert (= (and b!30875 res!18630) b!30878))

(assert (= (and b!30878 res!18628) b!30874))

(assert (= (and b!30871 condMapEmpty!1603) mapIsEmpty!1603))

(assert (= (and b!30871 (not condMapEmpty!1603)) mapNonEmpty!1603))

(assert (= (and mapNonEmpty!1603 ((_ is ValueCellFull!492) mapValue!1603)) b!30872))

(assert (= (and b!30871 ((_ is ValueCellFull!492) mapDefault!1603)) b!30869))

(assert (= start!4122 b!30871))

(declare-fun m!24793 () Bool)

(assert (=> b!30868 m!24793))

(declare-fun m!24795 () Bool)

(assert (=> b!30868 m!24795))

(declare-fun m!24797 () Bool)

(assert (=> b!30870 m!24797))

(declare-fun m!24799 () Bool)

(assert (=> b!30875 m!24799))

(declare-fun m!24801 () Bool)

(assert (=> b!30876 m!24801))

(declare-fun m!24803 () Bool)

(assert (=> mapNonEmpty!1603 m!24803))

(declare-fun m!24805 () Bool)

(assert (=> b!30878 m!24805))

(declare-fun m!24807 () Bool)

(assert (=> start!4122 m!24807))

(declare-fun m!24809 () Bool)

(assert (=> start!4122 m!24809))

(declare-fun m!24811 () Bool)

(assert (=> start!4122 m!24811))

(declare-fun m!24813 () Bool)

(assert (=> b!30874 m!24813))

(assert (=> b!30874 m!24813))

(declare-fun m!24815 () Bool)

(assert (=> b!30874 m!24815))

(declare-fun m!24817 () Bool)

(assert (=> b!30874 m!24817))

(declare-fun m!24819 () Bool)

(assert (=> b!30873 m!24819))

(check-sat (not b!30876) b_and!1841 (not b!30873) (not b_next!1029) (not b!30878) tp_is_empty!1383 (not b!30870) (not start!4122) (not b!30874) (not mapNonEmpty!1603) (not b!30868) (not b!30875))
(check-sat b_and!1841 (not b_next!1029))
