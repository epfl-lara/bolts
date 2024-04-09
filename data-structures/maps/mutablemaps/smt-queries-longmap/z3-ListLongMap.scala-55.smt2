; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!844 () Bool)

(assert start!844)

(declare-fun b_free!237 () Bool)

(declare-fun b_next!237 () Bool)

(assert (=> start!844 (= b_free!237 (not b_next!237))))

(declare-fun tp!940 () Bool)

(declare-fun b_and!383 () Bool)

(assert (=> start!844 (= tp!940 b_and!383)))

(declare-fun b!6787 () Bool)

(declare-fun res!7041 () Bool)

(declare-fun e!3749 () Bool)

(assert (=> b!6787 (=> (not res!7041) (not e!3749))))

(declare-datatypes ((array!563 0))(
  ( (array!564 (arr!270 (Array (_ BitVec 32) (_ BitVec 64))) (size!332 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!563)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!563 (_ BitVec 32)) Bool)

(assert (=> b!6787 (= res!7041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!6789 () Bool)

(declare-fun res!7036 () Bool)

(declare-fun e!3750 () Bool)

(assert (=> b!6789 (=> res!7036 e!3750)))

(declare-fun lt!1319 () (_ BitVec 32))

(declare-fun k0!1278 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!26 0))(
  ( (MissingZero!26 (index!2223 (_ BitVec 32))) (Found!26 (index!2224 (_ BitVec 32))) (Intermediate!26 (undefined!838 Bool) (index!2225 (_ BitVec 32)) (x!2556 (_ BitVec 32))) (Undefined!26) (MissingVacant!26 (index!2226 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!563 (_ BitVec 32)) SeekEntryResult!26)

(assert (=> b!6789 (= res!7036 (not (= (seekEntryOrOpen!0 k0!1278 _keys!1806 mask!2250) (Found!26 lt!1319))))))

(declare-fun b!6790 () Bool)

(declare-fun e!3751 () Bool)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!6790 (= e!3751 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!6791 () Bool)

(declare-fun e!3755 () Bool)

(declare-fun tp_is_empty!315 () Bool)

(assert (=> b!6791 (= e!3755 tp_is_empty!315)))

(declare-fun b!6792 () Bool)

(assert (=> b!6792 (= e!3750 true)))

(declare-fun lt!1316 () SeekEntryResult!26)

(get-info :version)

(assert (=> b!6792 (and ((_ is Found!26) lt!1316) (= (index!2224 lt!1316) lt!1319))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!563 (_ BitVec 32)) SeekEntryResult!26)

(assert (=> b!6792 (= lt!1316 (seekEntry!0 k0!1278 _keys!1806 mask!2250))))

(declare-datatypes ((Unit!117 0))(
  ( (Unit!118) )
))
(declare-fun lt!1318 () Unit!117)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!563 (_ BitVec 32)) Unit!117)

(assert (=> b!6792 (= lt!1318 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1278 lt!1319 _keys!1806 mask!2250))))

(declare-fun b!6793 () Bool)

(declare-fun e!3754 () Bool)

(declare-fun e!3748 () Bool)

(declare-fun mapRes!443 () Bool)

(assert (=> b!6793 (= e!3754 (and e!3748 mapRes!443))))

(declare-fun condMapEmpty!443 () Bool)

(declare-datatypes ((V!597 0))(
  ( (V!598 (val!163 Int)) )
))
(declare-datatypes ((ValueCell!141 0))(
  ( (ValueCellFull!141 (v!1254 V!597)) (EmptyCell!141) )
))
(declare-datatypes ((array!565 0))(
  ( (array!566 (arr!271 (Array (_ BitVec 32) ValueCell!141)) (size!333 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!565)

(declare-fun mapDefault!443 () ValueCell!141)

(assert (=> b!6793 (= condMapEmpty!443 (= (arr!271 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!141)) mapDefault!443)))))

(declare-fun mapNonEmpty!443 () Bool)

(declare-fun tp!941 () Bool)

(assert (=> mapNonEmpty!443 (= mapRes!443 (and tp!941 e!3755))))

(declare-fun mapValue!443 () ValueCell!141)

(declare-fun mapRest!443 () (Array (_ BitVec 32) ValueCell!141))

(declare-fun mapKey!443 () (_ BitVec 32))

(assert (=> mapNonEmpty!443 (= (arr!271 _values!1492) (store mapRest!443 mapKey!443 mapValue!443))))

(declare-fun b!6794 () Bool)

(declare-fun res!7037 () Bool)

(assert (=> b!6794 (=> (not res!7037) (not e!3749))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!597)

(declare-fun zeroValue!1434 () V!597)

(declare-datatypes ((tuple2!164 0))(
  ( (tuple2!165 (_1!82 (_ BitVec 64)) (_2!82 V!597)) )
))
(declare-datatypes ((List!180 0))(
  ( (Nil!177) (Cons!176 (h!742 tuple2!164) (t!2315 List!180)) )
))
(declare-datatypes ((ListLongMap!169 0))(
  ( (ListLongMap!170 (toList!100 List!180)) )
))
(declare-fun contains!74 (ListLongMap!169 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!59 (array!563 array!565 (_ BitVec 32) (_ BitVec 32) V!597 V!597 (_ BitVec 32) Int) ListLongMap!169)

(assert (=> b!6794 (= res!7037 (contains!74 (getCurrentListMap!59 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!6795 () Bool)

(declare-fun arrayContainsKey!0 (array!563 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!6795 (= e!3751 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!6796 () Bool)

(declare-fun res!7042 () Bool)

(assert (=> b!6796 (=> (not res!7042) (not e!3749))))

(assert (=> b!6796 (= res!7042 (and (= (size!333 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!332 _keys!1806) (size!333 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!6797 () Bool)

(declare-fun e!3752 () Bool)

(assert (=> b!6797 (= e!3752 e!3750)))

(declare-fun res!7035 () Bool)

(assert (=> b!6797 (=> res!7035 e!3750)))

(assert (=> b!6797 (= res!7035 (not (= (size!332 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(assert (=> b!6797 (arrayForallSeekEntryOrOpenFound!0 lt!1319 _keys!1806 mask!2250)))

(declare-fun lt!1317 () Unit!117)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!563 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!117)

(assert (=> b!6797 (= lt!1317 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1319))))

(declare-fun arrayScanForKey!0 (array!563 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!6797 (= lt!1319 (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!6798 () Bool)

(assert (=> b!6798 (= e!3749 (not e!3752))))

(declare-fun res!7038 () Bool)

(assert (=> b!6798 (=> res!7038 e!3752)))

(assert (=> b!6798 (= res!7038 (not (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000)))))

(assert (=> b!6798 e!3751))

(declare-fun c!488 () Bool)

(assert (=> b!6798 (= c!488 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!1320 () Unit!117)

(declare-fun lemmaKeyInListMapIsInArray!41 (array!563 array!565 (_ BitVec 32) (_ BitVec 32) V!597 V!597 (_ BitVec 64) Int) Unit!117)

(assert (=> b!6798 (= lt!1320 (lemmaKeyInListMapIsInArray!41 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun mapIsEmpty!443 () Bool)

(assert (=> mapIsEmpty!443 mapRes!443))

(declare-fun b!6799 () Bool)

(declare-fun res!7034 () Bool)

(assert (=> b!6799 (=> (not res!7034) (not e!3749))))

(declare-datatypes ((List!181 0))(
  ( (Nil!178) (Cons!177 (h!743 (_ BitVec 64)) (t!2316 List!181)) )
))
(declare-fun arrayNoDuplicates!0 (array!563 (_ BitVec 32) List!181) Bool)

(assert (=> b!6799 (= res!7034 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!178))))

(declare-fun b!6800 () Bool)

(assert (=> b!6800 (= e!3748 tp_is_empty!315)))

(declare-fun res!7040 () Bool)

(assert (=> start!844 (=> (not res!7040) (not e!3749))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!844 (= res!7040 (validMask!0 mask!2250))))

(assert (=> start!844 e!3749))

(assert (=> start!844 tp!940))

(assert (=> start!844 true))

(declare-fun array_inv!195 (array!565) Bool)

(assert (=> start!844 (and (array_inv!195 _values!1492) e!3754)))

(assert (=> start!844 tp_is_empty!315))

(declare-fun array_inv!196 (array!563) Bool)

(assert (=> start!844 (array_inv!196 _keys!1806)))

(declare-fun b!6788 () Bool)

(declare-fun res!7039 () Bool)

(assert (=> b!6788 (=> (not res!7039) (not e!3749))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!6788 (= res!7039 (validKeyInArray!0 k0!1278))))

(assert (= (and start!844 res!7040) b!6796))

(assert (= (and b!6796 res!7042) b!6787))

(assert (= (and b!6787 res!7041) b!6799))

(assert (= (and b!6799 res!7034) b!6794))

(assert (= (and b!6794 res!7037) b!6788))

(assert (= (and b!6788 res!7039) b!6798))

(assert (= (and b!6798 c!488) b!6795))

(assert (= (and b!6798 (not c!488)) b!6790))

(assert (= (and b!6798 (not res!7038)) b!6797))

(assert (= (and b!6797 (not res!7035)) b!6789))

(assert (= (and b!6789 (not res!7036)) b!6792))

(assert (= (and b!6793 condMapEmpty!443) mapIsEmpty!443))

(assert (= (and b!6793 (not condMapEmpty!443)) mapNonEmpty!443))

(assert (= (and mapNonEmpty!443 ((_ is ValueCellFull!141) mapValue!443)) b!6791))

(assert (= (and b!6793 ((_ is ValueCellFull!141) mapDefault!443)) b!6800))

(assert (= start!844 b!6793))

(declare-fun m!3981 () Bool)

(assert (=> b!6795 m!3981))

(declare-fun m!3983 () Bool)

(assert (=> b!6787 m!3983))

(declare-fun m!3985 () Bool)

(assert (=> b!6792 m!3985))

(declare-fun m!3987 () Bool)

(assert (=> b!6792 m!3987))

(declare-fun m!3989 () Bool)

(assert (=> b!6788 m!3989))

(assert (=> b!6798 m!3981))

(declare-fun m!3991 () Bool)

(assert (=> b!6798 m!3991))

(declare-fun m!3993 () Bool)

(assert (=> mapNonEmpty!443 m!3993))

(declare-fun m!3995 () Bool)

(assert (=> b!6789 m!3995))

(declare-fun m!3997 () Bool)

(assert (=> b!6797 m!3997))

(declare-fun m!3999 () Bool)

(assert (=> b!6797 m!3999))

(declare-fun m!4001 () Bool)

(assert (=> b!6797 m!4001))

(declare-fun m!4003 () Bool)

(assert (=> start!844 m!4003))

(declare-fun m!4005 () Bool)

(assert (=> start!844 m!4005))

(declare-fun m!4007 () Bool)

(assert (=> start!844 m!4007))

(declare-fun m!4009 () Bool)

(assert (=> b!6799 m!4009))

(declare-fun m!4011 () Bool)

(assert (=> b!6794 m!4011))

(assert (=> b!6794 m!4011))

(declare-fun m!4013 () Bool)

(assert (=> b!6794 m!4013))

(check-sat (not b_next!237) (not b!6789) (not b!6787) (not mapNonEmpty!443) (not start!844) (not b!6794) (not b!6788) (not b!6798) (not b!6792) (not b!6795) (not b!6799) (not b!6797) tp_is_empty!315 b_and!383)
(check-sat b_and!383 (not b_next!237))
