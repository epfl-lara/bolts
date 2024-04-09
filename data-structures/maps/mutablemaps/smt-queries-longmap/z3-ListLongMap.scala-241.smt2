; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4128 () Bool)

(assert start!4128)

(declare-fun b_free!1035 () Bool)

(declare-fun b_next!1035 () Bool)

(assert (=> start!4128 (= b_free!1035 (not b_next!1035))))

(declare-fun tp!4525 () Bool)

(declare-fun b_and!1847 () Bool)

(assert (=> start!4128 (= tp!4525 b_and!1847)))

(declare-fun b!30968 () Bool)

(declare-fun e!19836 () Bool)

(declare-fun e!19837 () Bool)

(assert (=> b!30968 (= e!19836 e!19837)))

(declare-fun res!18701 () Bool)

(assert (=> b!30968 (=> (not res!18701) (not e!19837))))

(declare-datatypes ((V!1677 0))(
  ( (V!1678 (val!721 Int)) )
))
(declare-datatypes ((tuple2!1172 0))(
  ( (tuple2!1173 (_1!596 (_ BitVec 64)) (_2!596 V!1677)) )
))
(declare-datatypes ((List!775 0))(
  ( (Nil!772) (Cons!771 (h!1338 tuple2!1172) (t!3470 List!775)) )
))
(declare-datatypes ((ListLongMap!753 0))(
  ( (ListLongMap!754 (toList!392 List!775)) )
))
(declare-fun lt!11524 () ListLongMap!753)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun contains!329 (ListLongMap!753 (_ BitVec 64)) Bool)

(assert (=> b!30968 (= res!18701 (not (contains!329 lt!11524 k0!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!495 0))(
  ( (ValueCellFull!495 (v!1810 V!1677)) (EmptyCell!495) )
))
(declare-datatypes ((array!1987 0))(
  ( (array!1988 (arr!947 (Array (_ BitVec 32) ValueCell!495)) (size!1048 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1987)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1989 0))(
  ( (array!1990 (arr!948 (Array (_ BitVec 32) (_ BitVec 64))) (size!1049 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1989)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1677)

(declare-fun minValue!1443 () V!1677)

(declare-fun getCurrentListMap!218 (array!1989 array!1987 (_ BitVec 32) (_ BitVec 32) V!1677 V!1677 (_ BitVec 32) Int) ListLongMap!753)

(assert (=> b!30968 (= lt!11524 (getCurrentListMap!218 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!30969 () Bool)

(declare-fun e!19840 () Bool)

(assert (=> b!30969 (= e!19840 (not true))))

(declare-datatypes ((SeekEntryResult!120 0))(
  ( (MissingZero!120 (index!2602 (_ BitVec 32))) (Found!120 (index!2603 (_ BitVec 32))) (Intermediate!120 (undefined!932 Bool) (index!2604 (_ BitVec 32)) (x!6590 (_ BitVec 32))) (Undefined!120) (MissingVacant!120 (index!2605 (_ BitVec 32))) )
))
(declare-fun lt!11526 () SeekEntryResult!120)

(assert (=> b!30969 (contains!329 lt!11524 (select (arr!948 _keys!1833) (index!2603 lt!11526)))))

(declare-datatypes ((Unit!703 0))(
  ( (Unit!704) )
))
(declare-fun lt!11525 () Unit!703)

(declare-fun lemmaValidKeyInArrayIsInListMap!43 (array!1989 array!1987 (_ BitVec 32) (_ BitVec 32) V!1677 V!1677 (_ BitVec 32) Int) Unit!703)

(assert (=> b!30969 (= lt!11525 (lemmaValidKeyInArrayIsInListMap!43 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 (index!2603 lt!11526) defaultEntry!1504))))

(declare-fun b!30970 () Bool)

(declare-fun res!18706 () Bool)

(assert (=> b!30970 (=> (not res!18706) (not e!19836))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1989 (_ BitVec 32)) Bool)

(assert (=> b!30970 (= res!18706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1612 () Bool)

(declare-fun mapRes!1612 () Bool)

(declare-fun tp!4524 () Bool)

(declare-fun e!19839 () Bool)

(assert (=> mapNonEmpty!1612 (= mapRes!1612 (and tp!4524 e!19839))))

(declare-fun mapValue!1612 () ValueCell!495)

(declare-fun mapRest!1612 () (Array (_ BitVec 32) ValueCell!495))

(declare-fun mapKey!1612 () (_ BitVec 32))

(assert (=> mapNonEmpty!1612 (= (arr!947 _values!1501) (store mapRest!1612 mapKey!1612 mapValue!1612))))

(declare-fun b!30971 () Bool)

(declare-fun res!18704 () Bool)

(assert (=> b!30971 (=> (not res!18704) (not e!19836))))

(assert (=> b!30971 (= res!18704 (and (= (size!1048 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1049 _keys!1833) (size!1048 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1612 () Bool)

(assert (=> mapIsEmpty!1612 mapRes!1612))

(declare-fun b!30972 () Bool)

(declare-fun res!18699 () Bool)

(assert (=> b!30972 (=> (not res!18699) (not e!19836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!30972 (= res!18699 (validKeyInArray!0 k0!1304))))

(declare-fun b!30973 () Bool)

(declare-fun e!19834 () Bool)

(declare-fun e!19835 () Bool)

(assert (=> b!30973 (= e!19834 (and e!19835 mapRes!1612))))

(declare-fun condMapEmpty!1612 () Bool)

(declare-fun mapDefault!1612 () ValueCell!495)

(assert (=> b!30973 (= condMapEmpty!1612 (= (arr!947 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!495)) mapDefault!1612)))))

(declare-fun b!30974 () Bool)

(declare-fun tp_is_empty!1389 () Bool)

(assert (=> b!30974 (= e!19839 tp_is_empty!1389)))

(declare-fun b!30975 () Bool)

(assert (=> b!30975 (= e!19835 tp_is_empty!1389)))

(declare-fun res!18702 () Bool)

(assert (=> start!4128 (=> (not res!18702) (not e!19836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4128 (= res!18702 (validMask!0 mask!2294))))

(assert (=> start!4128 e!19836))

(assert (=> start!4128 true))

(assert (=> start!4128 tp!4525))

(declare-fun array_inv!633 (array!1987) Bool)

(assert (=> start!4128 (and (array_inv!633 _values!1501) e!19834)))

(declare-fun array_inv!634 (array!1989) Bool)

(assert (=> start!4128 (array_inv!634 _keys!1833)))

(assert (=> start!4128 tp_is_empty!1389))

(declare-fun b!30967 () Bool)

(declare-fun res!18705 () Bool)

(assert (=> b!30967 (=> (not res!18705) (not e!19836))))

(declare-datatypes ((List!776 0))(
  ( (Nil!773) (Cons!772 (h!1339 (_ BitVec 64)) (t!3471 List!776)) )
))
(declare-fun arrayNoDuplicates!0 (array!1989 (_ BitVec 32) List!776) Bool)

(assert (=> b!30967 (= res!18705 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!773))))

(declare-fun b!30976 () Bool)

(declare-fun res!18703 () Bool)

(assert (=> b!30976 (=> (not res!18703) (not e!19837))))

(declare-fun arrayContainsKey!0 (array!1989 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30976 (= res!18703 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!30977 () Bool)

(assert (=> b!30977 (= e!19837 e!19840)))

(declare-fun res!18700 () Bool)

(assert (=> b!30977 (=> (not res!18700) (not e!19840))))

(get-info :version)

(assert (=> b!30977 (= res!18700 ((_ is Found!120) lt!11526))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1989 (_ BitVec 32)) SeekEntryResult!120)

(assert (=> b!30977 (= lt!11526 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(assert (= (and start!4128 res!18702) b!30971))

(assert (= (and b!30971 res!18704) b!30970))

(assert (= (and b!30970 res!18706) b!30967))

(assert (= (and b!30967 res!18705) b!30972))

(assert (= (and b!30972 res!18699) b!30968))

(assert (= (and b!30968 res!18701) b!30976))

(assert (= (and b!30976 res!18703) b!30977))

(assert (= (and b!30977 res!18700) b!30969))

(assert (= (and b!30973 condMapEmpty!1612) mapIsEmpty!1612))

(assert (= (and b!30973 (not condMapEmpty!1612)) mapNonEmpty!1612))

(assert (= (and mapNonEmpty!1612 ((_ is ValueCellFull!495) mapValue!1612)) b!30974))

(assert (= (and b!30973 ((_ is ValueCellFull!495) mapDefault!1612)) b!30975))

(assert (= start!4128 b!30973))

(declare-fun m!24877 () Bool)

(assert (=> start!4128 m!24877))

(declare-fun m!24879 () Bool)

(assert (=> start!4128 m!24879))

(declare-fun m!24881 () Bool)

(assert (=> start!4128 m!24881))

(declare-fun m!24883 () Bool)

(assert (=> b!30967 m!24883))

(declare-fun m!24885 () Bool)

(assert (=> b!30977 m!24885))

(declare-fun m!24887 () Bool)

(assert (=> b!30972 m!24887))

(declare-fun m!24889 () Bool)

(assert (=> b!30976 m!24889))

(declare-fun m!24891 () Bool)

(assert (=> b!30968 m!24891))

(declare-fun m!24893 () Bool)

(assert (=> b!30968 m!24893))

(declare-fun m!24895 () Bool)

(assert (=> mapNonEmpty!1612 m!24895))

(declare-fun m!24897 () Bool)

(assert (=> b!30969 m!24897))

(assert (=> b!30969 m!24897))

(declare-fun m!24899 () Bool)

(assert (=> b!30969 m!24899))

(declare-fun m!24901 () Bool)

(assert (=> b!30969 m!24901))

(declare-fun m!24903 () Bool)

(assert (=> b!30970 m!24903))

(check-sat (not start!4128) tp_is_empty!1389 (not b!30976) (not b!30970) (not b!30969) (not mapNonEmpty!1612) (not b!30972) (not b!30977) (not b!30968) (not b_next!1035) (not b!30967) b_and!1847)
(check-sat b_and!1847 (not b_next!1035))
