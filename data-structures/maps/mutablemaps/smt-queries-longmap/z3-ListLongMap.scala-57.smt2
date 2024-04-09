; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!856 () Bool)

(assert start!856)

(declare-fun b_free!249 () Bool)

(declare-fun b_next!249 () Bool)

(assert (=> start!856 (= b_free!249 (not b_next!249))))

(declare-fun tp!976 () Bool)

(declare-fun b_and!395 () Bool)

(assert (=> start!856 (= tp!976 b_and!395)))

(declare-fun b!7039 () Bool)

(declare-fun e!3896 () Bool)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!7039 (= e!3896 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!461 () Bool)

(declare-fun mapRes!461 () Bool)

(declare-fun tp!977 () Bool)

(declare-fun e!3895 () Bool)

(assert (=> mapNonEmpty!461 (= mapRes!461 (and tp!977 e!3895))))

(declare-datatypes ((V!613 0))(
  ( (V!614 (val!169 Int)) )
))
(declare-datatypes ((ValueCell!147 0))(
  ( (ValueCellFull!147 (v!1260 V!613)) (EmptyCell!147) )
))
(declare-datatypes ((array!587 0))(
  ( (array!588 (arr!282 (Array (_ BitVec 32) ValueCell!147)) (size!344 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!587)

(declare-fun mapValue!461 () ValueCell!147)

(declare-fun mapRest!461 () (Array (_ BitVec 32) ValueCell!147))

(declare-fun mapKey!461 () (_ BitVec 32))

(assert (=> mapNonEmpty!461 (= (arr!282 _values!1492) (store mapRest!461 mapKey!461 mapValue!461))))

(declare-fun b!7041 () Bool)

(declare-fun e!3897 () Bool)

(declare-fun tp_is_empty!327 () Bool)

(assert (=> b!7041 (= e!3897 tp_is_empty!327)))

(declare-fun b!7042 () Bool)

(declare-fun res!7197 () Bool)

(declare-fun e!3894 () Bool)

(assert (=> b!7042 (=> (not res!7197) (not e!3894))))

(declare-datatypes ((array!589 0))(
  ( (array!590 (arr!283 (Array (_ BitVec 32) (_ BitVec 64))) (size!345 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!589)

(declare-datatypes ((List!189 0))(
  ( (Nil!186) (Cons!185 (h!751 (_ BitVec 64)) (t!2324 List!189)) )
))
(declare-fun arrayNoDuplicates!0 (array!589 (_ BitVec 32) List!189) Bool)

(assert (=> b!7042 (= res!7197 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!186))))

(declare-fun b!7043 () Bool)

(declare-fun e!3892 () Bool)

(assert (=> b!7043 (= e!3892 true)))

(declare-datatypes ((SeekEntryResult!32 0))(
  ( (MissingZero!32 (index!2247 (_ BitVec 32))) (Found!32 (index!2248 (_ BitVec 32))) (Intermediate!32 (undefined!844 Bool) (index!2249 (_ BitVec 32)) (x!2578 (_ BitVec 32))) (Undefined!32) (MissingVacant!32 (index!2250 (_ BitVec 32))) )
))
(declare-fun lt!1410 () SeekEntryResult!32)

(declare-fun lt!1409 () (_ BitVec 32))

(get-info :version)

(assert (=> b!7043 (and ((_ is Found!32) lt!1410) (= (index!2248 lt!1410) lt!1409))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun seekEntry!0 ((_ BitVec 64) array!589 (_ BitVec 32)) SeekEntryResult!32)

(assert (=> b!7043 (= lt!1410 (seekEntry!0 k0!1278 _keys!1806 mask!2250))))

(declare-datatypes ((Unit!129 0))(
  ( (Unit!130) )
))
(declare-fun lt!1408 () Unit!129)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!589 (_ BitVec 32)) Unit!129)

(assert (=> b!7043 (= lt!1408 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1278 lt!1409 _keys!1806 mask!2250))))

(declare-fun b!7044 () Bool)

(declare-fun res!7198 () Bool)

(assert (=> b!7044 (=> (not res!7198) (not e!3894))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!589 (_ BitVec 32)) Bool)

(assert (=> b!7044 (= res!7198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!7045 () Bool)

(declare-fun e!3898 () Bool)

(assert (=> b!7045 (= e!3898 (and e!3897 mapRes!461))))

(declare-fun condMapEmpty!461 () Bool)

(declare-fun mapDefault!461 () ValueCell!147)

(assert (=> b!7045 (= condMapEmpty!461 (= (arr!282 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!147)) mapDefault!461)))))

(declare-fun res!7200 () Bool)

(assert (=> start!856 (=> (not res!7200) (not e!3894))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!856 (= res!7200 (validMask!0 mask!2250))))

(assert (=> start!856 e!3894))

(assert (=> start!856 tp!976))

(assert (=> start!856 true))

(declare-fun array_inv!207 (array!587) Bool)

(assert (=> start!856 (and (array_inv!207 _values!1492) e!3898)))

(assert (=> start!856 tp_is_empty!327))

(declare-fun array_inv!208 (array!589) Bool)

(assert (=> start!856 (array_inv!208 _keys!1806)))

(declare-fun b!7040 () Bool)

(declare-fun res!7196 () Bool)

(assert (=> b!7040 (=> res!7196 e!3892)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!589 (_ BitVec 32)) SeekEntryResult!32)

(assert (=> b!7040 (= res!7196 (not (= (seekEntryOrOpen!0 k0!1278 _keys!1806 mask!2250) (Found!32 lt!1409))))))

(declare-fun b!7046 () Bool)

(declare-fun e!3893 () Bool)

(assert (=> b!7046 (= e!3894 (not e!3893))))

(declare-fun res!7199 () Bool)

(assert (=> b!7046 (=> res!7199 e!3893)))

(declare-fun arrayContainsKey!0 (array!589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!7046 (= res!7199 (not (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000)))))

(assert (=> b!7046 e!3896))

(declare-fun c!506 () Bool)

(assert (=> b!7046 (= c!506 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!613)

(declare-fun lt!1407 () Unit!129)

(declare-fun zeroValue!1434 () V!613)

(declare-fun lemmaKeyInListMapIsInArray!46 (array!589 array!587 (_ BitVec 32) (_ BitVec 32) V!613 V!613 (_ BitVec 64) Int) Unit!129)

(assert (=> b!7046 (= lt!1407 (lemmaKeyInListMapIsInArray!46 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun b!7047 () Bool)

(assert (=> b!7047 (= e!3895 tp_is_empty!327)))

(declare-fun b!7048 () Bool)

(assert (=> b!7048 (= e!3896 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!7049 () Bool)

(declare-fun res!7204 () Bool)

(assert (=> b!7049 (=> (not res!7204) (not e!3894))))

(declare-datatypes ((tuple2!172 0))(
  ( (tuple2!173 (_1!86 (_ BitVec 64)) (_2!86 V!613)) )
))
(declare-datatypes ((List!190 0))(
  ( (Nil!187) (Cons!186 (h!752 tuple2!172) (t!2325 List!190)) )
))
(declare-datatypes ((ListLongMap!177 0))(
  ( (ListLongMap!178 (toList!104 List!190)) )
))
(declare-fun contains!78 (ListLongMap!177 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!63 (array!589 array!587 (_ BitVec 32) (_ BitVec 32) V!613 V!613 (_ BitVec 32) Int) ListLongMap!177)

(assert (=> b!7049 (= res!7204 (contains!78 (getCurrentListMap!63 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!7050 () Bool)

(declare-fun res!7202 () Bool)

(assert (=> b!7050 (=> (not res!7202) (not e!3894))))

(assert (=> b!7050 (= res!7202 (and (= (size!344 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!345 _keys!1806) (size!344 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!7051 () Bool)

(assert (=> b!7051 (= e!3893 e!3892)))

(declare-fun res!7201 () Bool)

(assert (=> b!7051 (=> res!7201 e!3892)))

(assert (=> b!7051 (= res!7201 (not (= (size!345 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(assert (=> b!7051 (arrayForallSeekEntryOrOpenFound!0 lt!1409 _keys!1806 mask!2250)))

(declare-fun lt!1406 () Unit!129)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!589 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!129)

(assert (=> b!7051 (= lt!1406 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1409))))

(declare-fun arrayScanForKey!0 (array!589 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!7051 (= lt!1409 (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!461 () Bool)

(assert (=> mapIsEmpty!461 mapRes!461))

(declare-fun b!7052 () Bool)

(declare-fun res!7203 () Bool)

(assert (=> b!7052 (=> (not res!7203) (not e!3894))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!7052 (= res!7203 (validKeyInArray!0 k0!1278))))

(assert (= (and start!856 res!7200) b!7050))

(assert (= (and b!7050 res!7202) b!7044))

(assert (= (and b!7044 res!7198) b!7042))

(assert (= (and b!7042 res!7197) b!7049))

(assert (= (and b!7049 res!7204) b!7052))

(assert (= (and b!7052 res!7203) b!7046))

(assert (= (and b!7046 c!506) b!7048))

(assert (= (and b!7046 (not c!506)) b!7039))

(assert (= (and b!7046 (not res!7199)) b!7051))

(assert (= (and b!7051 (not res!7201)) b!7040))

(assert (= (and b!7040 (not res!7196)) b!7043))

(assert (= (and b!7045 condMapEmpty!461) mapIsEmpty!461))

(assert (= (and b!7045 (not condMapEmpty!461)) mapNonEmpty!461))

(assert (= (and mapNonEmpty!461 ((_ is ValueCellFull!147) mapValue!461)) b!7047))

(assert (= (and b!7045 ((_ is ValueCellFull!147) mapDefault!461)) b!7041))

(assert (= start!856 b!7045))

(declare-fun m!4185 () Bool)

(assert (=> b!7052 m!4185))

(declare-fun m!4187 () Bool)

(assert (=> b!7040 m!4187))

(declare-fun m!4189 () Bool)

(assert (=> b!7042 m!4189))

(declare-fun m!4191 () Bool)

(assert (=> b!7044 m!4191))

(declare-fun m!4193 () Bool)

(assert (=> b!7049 m!4193))

(assert (=> b!7049 m!4193))

(declare-fun m!4195 () Bool)

(assert (=> b!7049 m!4195))

(declare-fun m!4197 () Bool)

(assert (=> start!856 m!4197))

(declare-fun m!4199 () Bool)

(assert (=> start!856 m!4199))

(declare-fun m!4201 () Bool)

(assert (=> start!856 m!4201))

(declare-fun m!4203 () Bool)

(assert (=> b!7048 m!4203))

(declare-fun m!4205 () Bool)

(assert (=> mapNonEmpty!461 m!4205))

(assert (=> b!7046 m!4203))

(declare-fun m!4207 () Bool)

(assert (=> b!7046 m!4207))

(declare-fun m!4209 () Bool)

(assert (=> b!7043 m!4209))

(declare-fun m!4211 () Bool)

(assert (=> b!7043 m!4211))

(declare-fun m!4213 () Bool)

(assert (=> b!7051 m!4213))

(declare-fun m!4215 () Bool)

(assert (=> b!7051 m!4215))

(declare-fun m!4217 () Bool)

(assert (=> b!7051 m!4217))

(check-sat (not b!7040) b_and!395 tp_is_empty!327 (not b!7043) (not b!7046) (not b!7042) (not b_next!249) (not b!7052) (not b!7049) (not b!7044) (not b!7048) (not mapNonEmpty!461) (not b!7051) (not start!856))
(check-sat b_and!395 (not b_next!249))
