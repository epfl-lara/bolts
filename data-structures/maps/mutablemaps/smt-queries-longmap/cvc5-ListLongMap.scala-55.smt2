; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!842 () Bool)

(assert start!842)

(declare-fun b_free!235 () Bool)

(declare-fun b_next!235 () Bool)

(assert (=> start!842 (= b_free!235 (not b_next!235))))

(declare-fun tp!935 () Bool)

(declare-fun b_and!381 () Bool)

(assert (=> start!842 (= tp!935 b_and!381)))

(declare-fun b!6745 () Bool)

(declare-fun res!7009 () Bool)

(declare-fun e!3728 () Bool)

(assert (=> b!6745 (=> (not res!7009) (not e!3728))))

(declare-datatypes ((array!559 0))(
  ( (array!560 (arr!268 (Array (_ BitVec 32) (_ BitVec 64))) (size!330 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!559)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!559 (_ BitVec 32)) Bool)

(assert (=> b!6745 (= res!7009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!6746 () Bool)

(declare-fun res!7007 () Bool)

(assert (=> b!6746 (=> (not res!7007) (not e!3728))))

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((V!595 0))(
  ( (V!596 (val!162 Int)) )
))
(declare-datatypes ((ValueCell!140 0))(
  ( (ValueCellFull!140 (v!1253 V!595)) (EmptyCell!140) )
))
(declare-datatypes ((array!561 0))(
  ( (array!562 (arr!269 (Array (_ BitVec 32) ValueCell!140)) (size!331 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!561)

(declare-fun minValue!1434 () V!595)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!595)

(declare-datatypes ((tuple2!162 0))(
  ( (tuple2!163 (_1!81 (_ BitVec 64)) (_2!81 V!595)) )
))
(declare-datatypes ((List!178 0))(
  ( (Nil!175) (Cons!174 (h!740 tuple2!162) (t!2313 List!178)) )
))
(declare-datatypes ((ListLongMap!167 0))(
  ( (ListLongMap!168 (toList!99 List!178)) )
))
(declare-fun contains!73 (ListLongMap!167 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!58 (array!559 array!561 (_ BitVec 32) (_ BitVec 32) V!595 V!595 (_ BitVec 32) Int) ListLongMap!167)

(assert (=> b!6746 (= res!7007 (contains!73 (getCurrentListMap!58 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!6747 () Bool)

(declare-fun e!3727 () Bool)

(assert (=> b!6747 (= e!3727 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!6748 () Bool)

(declare-fun res!7013 () Bool)

(assert (=> b!6748 (=> (not res!7013) (not e!3728))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!6748 (= res!7013 (validKeyInArray!0 k!1278))))

(declare-fun b!6749 () Bool)

(declare-fun e!3730 () Bool)

(assert (=> b!6749 (= e!3730 true)))

(declare-datatypes ((SeekEntryResult!25 0))(
  ( (MissingZero!25 (index!2219 (_ BitVec 32))) (Found!25 (index!2220 (_ BitVec 32))) (Intermediate!25 (undefined!837 Bool) (index!2221 (_ BitVec 32)) (x!2555 (_ BitVec 32))) (Undefined!25) (MissingVacant!25 (index!2222 (_ BitVec 32))) )
))
(declare-fun lt!1302 () SeekEntryResult!25)

(declare-fun lt!1305 () (_ BitVec 32))

(assert (=> b!6749 (and (is-Found!25 lt!1302) (= (index!2220 lt!1302) lt!1305))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!559 (_ BitVec 32)) SeekEntryResult!25)

(assert (=> b!6749 (= lt!1302 (seekEntry!0 k!1278 _keys!1806 mask!2250))))

(declare-datatypes ((Unit!115 0))(
  ( (Unit!116) )
))
(declare-fun lt!1304 () Unit!115)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!559 (_ BitVec 32)) Unit!115)

(assert (=> b!6749 (= lt!1304 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1278 lt!1305 _keys!1806 mask!2250))))

(declare-fun b!6750 () Bool)

(declare-fun res!7010 () Bool)

(assert (=> b!6750 (=> res!7010 e!3730)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!559 (_ BitVec 32)) SeekEntryResult!25)

(assert (=> b!6750 (= res!7010 (not (= (seekEntryOrOpen!0 k!1278 _keys!1806 mask!2250) (Found!25 lt!1305))))))

(declare-fun mapIsEmpty!440 () Bool)

(declare-fun mapRes!440 () Bool)

(assert (=> mapIsEmpty!440 mapRes!440))

(declare-fun b!6751 () Bool)

(declare-fun e!3731 () Bool)

(assert (=> b!6751 (= e!3731 e!3730)))

(declare-fun res!7015 () Bool)

(assert (=> b!6751 (=> res!7015 e!3730)))

(assert (=> b!6751 (= res!7015 (not (= (size!330 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(assert (=> b!6751 (arrayForallSeekEntryOrOpenFound!0 lt!1305 _keys!1806 mask!2250)))

(declare-fun lt!1303 () Unit!115)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!559 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!115)

(assert (=> b!6751 (= lt!1303 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1305))))

(declare-fun arrayScanForKey!0 (array!559 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!6751 (= lt!1305 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!6752 () Bool)

(declare-fun res!7012 () Bool)

(assert (=> b!6752 (=> (not res!7012) (not e!3728))))

(declare-datatypes ((List!179 0))(
  ( (Nil!176) (Cons!175 (h!741 (_ BitVec 64)) (t!2314 List!179)) )
))
(declare-fun arrayNoDuplicates!0 (array!559 (_ BitVec 32) List!179) Bool)

(assert (=> b!6752 (= res!7012 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!176))))

(declare-fun res!7008 () Bool)

(assert (=> start!842 (=> (not res!7008) (not e!3728))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!842 (= res!7008 (validMask!0 mask!2250))))

(assert (=> start!842 e!3728))

(assert (=> start!842 tp!935))

(assert (=> start!842 true))

(declare-fun e!3729 () Bool)

(declare-fun array_inv!193 (array!561) Bool)

(assert (=> start!842 (and (array_inv!193 _values!1492) e!3729)))

(declare-fun tp_is_empty!313 () Bool)

(assert (=> start!842 tp_is_empty!313))

(declare-fun array_inv!194 (array!559) Bool)

(assert (=> start!842 (array_inv!194 _keys!1806)))

(declare-fun b!6753 () Bool)

(declare-fun arrayContainsKey!0 (array!559 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!6753 (= e!3727 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!6754 () Bool)

(declare-fun e!3726 () Bool)

(assert (=> b!6754 (= e!3729 (and e!3726 mapRes!440))))

(declare-fun condMapEmpty!440 () Bool)

(declare-fun mapDefault!440 () ValueCell!140)

