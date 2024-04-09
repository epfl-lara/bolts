; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1024 () Bool)

(assert start!1024)

(declare-fun b_free!353 () Bool)

(declare-fun b_next!353 () Bool)

(assert (=> start!1024 (= b_free!353 (not b_next!353))))

(declare-fun tp!1297 () Bool)

(declare-fun b_and!505 () Bool)

(assert (=> start!1024 (= tp!1297 b_and!505)))

(declare-fun b!8871 () Bool)

(declare-fun e!5061 () Bool)

(assert (=> b!8871 (= e!5061 true)))

(declare-fun lt!1916 () (_ BitVec 32))

(declare-datatypes ((array!785 0))(
  ( (array!786 (arr!378 (Array (_ BitVec 32) (_ BitVec 64))) (size!440 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!785)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!785 (_ BitVec 32)) Bool)

(assert (=> b!8871 (arrayForallSeekEntryOrOpenFound!0 lt!1916 _keys!1806 mask!2250)))

(declare-datatypes ((Unit!171 0))(
  ( (Unit!172) )
))
(declare-fun lt!1917 () Unit!171)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!785 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!171)

(assert (=> b!8871 (= lt!1917 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1916))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!785 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!8871 (= lt!1916 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!8872 () Bool)

(declare-fun res!8194 () Bool)

(declare-fun e!5060 () Bool)

(assert (=> b!8872 (=> (not res!8194) (not e!5060))))

(assert (=> b!8872 (= res!8194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!8873 () Bool)

(declare-fun res!8190 () Bool)

(assert (=> b!8873 (=> (not res!8190) (not e!5060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!8873 (= res!8190 (validKeyInArray!0 k!1278))))

(declare-fun b!8874 () Bool)

(declare-fun res!8191 () Bool)

(assert (=> b!8874 (=> (not res!8191) (not e!5060))))

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((V!751 0))(
  ( (V!752 (val!221 Int)) )
))
(declare-datatypes ((ValueCell!199 0))(
  ( (ValueCellFull!199 (v!1315 V!751)) (EmptyCell!199) )
))
(declare-datatypes ((array!787 0))(
  ( (array!788 (arr!379 (Array (_ BitVec 32) ValueCell!199)) (size!441 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!787)

(declare-fun minValue!1434 () V!751)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!751)

(declare-datatypes ((tuple2!234 0))(
  ( (tuple2!235 (_1!117 (_ BitVec 64)) (_2!117 V!751)) )
))
(declare-datatypes ((List!258 0))(
  ( (Nil!255) (Cons!254 (h!820 tuple2!234) (t!2399 List!258)) )
))
(declare-datatypes ((ListLongMap!239 0))(
  ( (ListLongMap!240 (toList!135 List!258)) )
))
(declare-fun contains!112 (ListLongMap!239 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!94 (array!785 array!787 (_ BitVec 32) (_ BitVec 32) V!751 V!751 (_ BitVec 32) Int) ListLongMap!239)

(assert (=> b!8874 (= res!8191 (contains!112 (getCurrentListMap!94 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun mapNonEmpty!626 () Bool)

(declare-fun mapRes!626 () Bool)

(declare-fun tp!1298 () Bool)

(declare-fun e!5062 () Bool)

(assert (=> mapNonEmpty!626 (= mapRes!626 (and tp!1298 e!5062))))

(declare-fun mapValue!626 () ValueCell!199)

(declare-fun mapKey!626 () (_ BitVec 32))

(declare-fun mapRest!626 () (Array (_ BitVec 32) ValueCell!199))

(assert (=> mapNonEmpty!626 (= (arr!379 _values!1492) (store mapRest!626 mapKey!626 mapValue!626))))

(declare-fun b!8875 () Bool)

(declare-fun res!8188 () Bool)

(assert (=> b!8875 (=> (not res!8188) (not e!5060))))

(assert (=> b!8875 (= res!8188 (and (= (size!441 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!440 _keys!1806) (size!441 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!8876 () Bool)

(declare-fun res!8189 () Bool)

(assert (=> b!8876 (=> (not res!8189) (not e!5060))))

(declare-datatypes ((List!259 0))(
  ( (Nil!256) (Cons!255 (h!821 (_ BitVec 64)) (t!2400 List!259)) )
))
(declare-fun arrayNoDuplicates!0 (array!785 (_ BitVec 32) List!259) Bool)

(assert (=> b!8876 (= res!8189 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!256))))

(declare-fun b!8877 () Bool)

(declare-fun e!5057 () Bool)

(declare-fun e!5058 () Bool)

(assert (=> b!8877 (= e!5057 (and e!5058 mapRes!626))))

(declare-fun condMapEmpty!626 () Bool)

(declare-fun mapDefault!626 () ValueCell!199)

