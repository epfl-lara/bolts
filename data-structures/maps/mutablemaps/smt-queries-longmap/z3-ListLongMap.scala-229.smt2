; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4056 () Bool)

(assert start!4056)

(declare-fun b_free!963 () Bool)

(declare-fun b_next!963 () Bool)

(assert (=> start!4056 (= b_free!963 (not b_next!963))))

(declare-fun tp!4309 () Bool)

(declare-fun b_and!1775 () Bool)

(assert (=> start!4056 (= tp!4309 b_and!1775)))

(declare-fun b!29864 () Bool)

(declare-fun res!17924 () Bool)

(declare-fun e!19248 () Bool)

(assert (=> b!29864 (=> (not res!17924) (not e!19248))))

(declare-datatypes ((array!1855 0))(
  ( (array!1856 (arr!881 (Array (_ BitVec 32) (_ BitVec 64))) (size!982 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1855)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1855 (_ BitVec 32)) Bool)

(assert (=> b!29864 (= res!17924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!29865 () Bool)

(declare-fun res!17926 () Bool)

(assert (=> b!29865 (=> (not res!17926) (not e!19248))))

(declare-datatypes ((V!1581 0))(
  ( (V!1582 (val!685 Int)) )
))
(declare-datatypes ((ValueCell!459 0))(
  ( (ValueCellFull!459 (v!1774 V!1581)) (EmptyCell!459) )
))
(declare-datatypes ((array!1857 0))(
  ( (array!1858 (arr!882 (Array (_ BitVec 32) ValueCell!459)) (size!983 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1857)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!29865 (= res!17926 (and (= (size!983 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!982 _keys!1833) (size!983 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!29866 () Bool)

(declare-fun e!19250 () Bool)

(declare-fun e!19252 () Bool)

(declare-fun mapRes!1504 () Bool)

(assert (=> b!29866 (= e!19250 (and e!19252 mapRes!1504))))

(declare-fun condMapEmpty!1504 () Bool)

(declare-fun mapDefault!1504 () ValueCell!459)

(assert (=> b!29866 (= condMapEmpty!1504 (= (arr!882 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!459)) mapDefault!1504)))))

(declare-fun mapNonEmpty!1504 () Bool)

(declare-fun tp!4308 () Bool)

(declare-fun e!19251 () Bool)

(assert (=> mapNonEmpty!1504 (= mapRes!1504 (and tp!4308 e!19251))))

(declare-fun mapKey!1504 () (_ BitVec 32))

(declare-fun mapRest!1504 () (Array (_ BitVec 32) ValueCell!459))

(declare-fun mapValue!1504 () ValueCell!459)

(assert (=> mapNonEmpty!1504 (= (arr!882 _values!1501) (store mapRest!1504 mapKey!1504 mapValue!1504))))

(declare-fun b!29868 () Bool)

(declare-fun res!17920 () Bool)

(assert (=> b!29868 (=> (not res!17920) (not e!19248))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29868 (= res!17920 (validKeyInArray!0 k0!1304))))

(declare-fun b!29869 () Bool)

(assert (=> b!29869 (= e!19248 false)))

(declare-datatypes ((SeekEntryResult!97 0))(
  ( (MissingZero!97 (index!2510 (_ BitVec 32))) (Found!97 (index!2511 (_ BitVec 32))) (Intermediate!97 (undefined!909 Bool) (index!2512 (_ BitVec 32)) (x!6471 (_ BitVec 32))) (Undefined!97) (MissingVacant!97 (index!2513 (_ BitVec 32))) )
))
(declare-fun lt!11370 () SeekEntryResult!97)

(declare-fun seekEntry!0 ((_ BitVec 64) array!1855 (_ BitVec 32)) SeekEntryResult!97)

(assert (=> b!29869 (= lt!11370 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun mapIsEmpty!1504 () Bool)

(assert (=> mapIsEmpty!1504 mapRes!1504))

(declare-fun b!29870 () Bool)

(declare-fun res!17922 () Bool)

(assert (=> b!29870 (=> (not res!17922) (not e!19248))))

(declare-fun arrayContainsKey!0 (array!1855 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!29870 (= res!17922 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!29871 () Bool)

(declare-fun res!17925 () Bool)

(assert (=> b!29871 (=> (not res!17925) (not e!19248))))

(declare-datatypes ((List!727 0))(
  ( (Nil!724) (Cons!723 (h!1290 (_ BitVec 64)) (t!3422 List!727)) )
))
(declare-fun arrayNoDuplicates!0 (array!1855 (_ BitVec 32) List!727) Bool)

(assert (=> b!29871 (= res!17925 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!724))))

(declare-fun b!29872 () Bool)

(declare-fun res!17923 () Bool)

(assert (=> b!29872 (=> (not res!17923) (not e!19248))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1581)

(declare-fun minValue!1443 () V!1581)

(declare-datatypes ((tuple2!1124 0))(
  ( (tuple2!1125 (_1!572 (_ BitVec 64)) (_2!572 V!1581)) )
))
(declare-datatypes ((List!728 0))(
  ( (Nil!725) (Cons!724 (h!1291 tuple2!1124) (t!3423 List!728)) )
))
(declare-datatypes ((ListLongMap!705 0))(
  ( (ListLongMap!706 (toList!368 List!728)) )
))
(declare-fun contains!305 (ListLongMap!705 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!195 (array!1855 array!1857 (_ BitVec 32) (_ BitVec 32) V!1581 V!1581 (_ BitVec 32) Int) ListLongMap!705)

(assert (=> b!29872 (= res!17923 (not (contains!305 (getCurrentListMap!195 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!29873 () Bool)

(declare-fun tp_is_empty!1317 () Bool)

(assert (=> b!29873 (= e!19252 tp_is_empty!1317)))

(declare-fun res!17921 () Bool)

(assert (=> start!4056 (=> (not res!17921) (not e!19248))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4056 (= res!17921 (validMask!0 mask!2294))))

(assert (=> start!4056 e!19248))

(assert (=> start!4056 true))

(assert (=> start!4056 tp!4309))

(declare-fun array_inv!595 (array!1857) Bool)

(assert (=> start!4056 (and (array_inv!595 _values!1501) e!19250)))

(declare-fun array_inv!596 (array!1855) Bool)

(assert (=> start!4056 (array_inv!596 _keys!1833)))

(assert (=> start!4056 tp_is_empty!1317))

(declare-fun b!29867 () Bool)

(assert (=> b!29867 (= e!19251 tp_is_empty!1317)))

(assert (= (and start!4056 res!17921) b!29865))

(assert (= (and b!29865 res!17926) b!29864))

(assert (= (and b!29864 res!17924) b!29871))

(assert (= (and b!29871 res!17925) b!29868))

(assert (= (and b!29868 res!17920) b!29872))

(assert (= (and b!29872 res!17923) b!29870))

(assert (= (and b!29870 res!17922) b!29869))

(assert (= (and b!29866 condMapEmpty!1504) mapIsEmpty!1504))

(assert (= (and b!29866 (not condMapEmpty!1504)) mapNonEmpty!1504))

(get-info :version)

(assert (= (and mapNonEmpty!1504 ((_ is ValueCellFull!459) mapValue!1504)) b!29867))

(assert (= (and b!29866 ((_ is ValueCellFull!459) mapDefault!1504)) b!29873))

(assert (= start!4056 b!29866))

(declare-fun m!24043 () Bool)

(assert (=> b!29872 m!24043))

(assert (=> b!29872 m!24043))

(declare-fun m!24045 () Bool)

(assert (=> b!29872 m!24045))

(declare-fun m!24047 () Bool)

(assert (=> b!29871 m!24047))

(declare-fun m!24049 () Bool)

(assert (=> start!4056 m!24049))

(declare-fun m!24051 () Bool)

(assert (=> start!4056 m!24051))

(declare-fun m!24053 () Bool)

(assert (=> start!4056 m!24053))

(declare-fun m!24055 () Bool)

(assert (=> mapNonEmpty!1504 m!24055))

(declare-fun m!24057 () Bool)

(assert (=> b!29864 m!24057))

(declare-fun m!24059 () Bool)

(assert (=> b!29869 m!24059))

(declare-fun m!24061 () Bool)

(assert (=> b!29870 m!24061))

(declare-fun m!24063 () Bool)

(assert (=> b!29868 m!24063))

(check-sat (not b!29871) (not b!29872) tp_is_empty!1317 b_and!1775 (not b!29870) (not b!29868) (not mapNonEmpty!1504) (not b!29864) (not b!29869) (not start!4056) (not b_next!963))
(check-sat b_and!1775 (not b_next!963))
