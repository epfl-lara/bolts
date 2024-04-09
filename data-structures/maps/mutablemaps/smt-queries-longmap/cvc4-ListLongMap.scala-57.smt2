; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!858 () Bool)

(assert start!858)

(declare-fun b_free!251 () Bool)

(declare-fun b_next!251 () Bool)

(assert (=> start!858 (= b_free!251 (not b_next!251))))

(declare-fun tp!982 () Bool)

(declare-fun b_and!397 () Bool)

(assert (=> start!858 (= tp!982 b_and!397)))

(declare-fun b!7081 () Bool)

(declare-fun e!3921 () Bool)

(declare-fun tp_is_empty!329 () Bool)

(assert (=> b!7081 (= e!3921 tp_is_empty!329)))

(declare-fun mapIsEmpty!464 () Bool)

(declare-fun mapRes!464 () Bool)

(assert (=> mapIsEmpty!464 mapRes!464))

(declare-fun res!7224 () Bool)

(declare-fun e!3923 () Bool)

(assert (=> start!858 (=> (not res!7224) (not e!3923))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!858 (= res!7224 (validMask!0 mask!2250))))

(assert (=> start!858 e!3923))

(assert (=> start!858 tp!982))

(assert (=> start!858 true))

(declare-datatypes ((V!615 0))(
  ( (V!616 (val!170 Int)) )
))
(declare-datatypes ((ValueCell!148 0))(
  ( (ValueCellFull!148 (v!1261 V!615)) (EmptyCell!148) )
))
(declare-datatypes ((array!591 0))(
  ( (array!592 (arr!284 (Array (_ BitVec 32) ValueCell!148)) (size!346 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!591)

(declare-fun e!3917 () Bool)

(declare-fun array_inv!209 (array!591) Bool)

(assert (=> start!858 (and (array_inv!209 _values!1492) e!3917)))

(assert (=> start!858 tp_is_empty!329))

(declare-datatypes ((array!593 0))(
  ( (array!594 (arr!285 (Array (_ BitVec 32) (_ BitVec 64))) (size!347 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!593)

(declare-fun array_inv!210 (array!593) Bool)

(assert (=> start!858 (array_inv!210 _keys!1806)))

(declare-fun b!7082 () Bool)

(declare-fun res!7228 () Bool)

(assert (=> b!7082 (=> (not res!7228) (not e!3923))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!7082 (= res!7228 (and (= (size!346 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!347 _keys!1806) (size!346 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!7083 () Bool)

(declare-fun e!3919 () Bool)

(declare-fun e!3918 () Bool)

(assert (=> b!7083 (= e!3919 e!3918)))

(declare-fun res!7227 () Bool)

(assert (=> b!7083 (=> res!7227 e!3918)))

(assert (=> b!7083 (= res!7227 (not (= (size!347 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(declare-fun lt!1423 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!593 (_ BitVec 32)) Bool)

(assert (=> b!7083 (arrayForallSeekEntryOrOpenFound!0 lt!1423 _keys!1806 mask!2250)))

(declare-datatypes ((Unit!131 0))(
  ( (Unit!132) )
))
(declare-fun lt!1425 () Unit!131)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!593 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!131)

(assert (=> b!7083 (= lt!1425 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1423))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!593 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!7083 (= lt!1423 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!7084 () Bool)

(declare-fun e!3920 () Bool)

(assert (=> b!7084 (= e!3920 tp_is_empty!329)))

(declare-fun b!7085 () Bool)

(declare-fun e!3922 () Bool)

(assert (=> b!7085 (= e!3922 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!7086 () Bool)

(declare-fun arrayContainsKey!0 (array!593 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!7086 (= e!3922 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!464 () Bool)

(declare-fun tp!983 () Bool)

(assert (=> mapNonEmpty!464 (= mapRes!464 (and tp!983 e!3920))))

(declare-fun mapKey!464 () (_ BitVec 32))

(declare-fun mapValue!464 () ValueCell!148)

(declare-fun mapRest!464 () (Array (_ BitVec 32) ValueCell!148))

(assert (=> mapNonEmpty!464 (= (arr!284 _values!1492) (store mapRest!464 mapKey!464 mapValue!464))))

(declare-fun b!7087 () Bool)

(declare-fun res!7226 () Bool)

(assert (=> b!7087 (=> (not res!7226) (not e!3923))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!7087 (= res!7226 (validKeyInArray!0 k!1278))))

(declare-fun b!7088 () Bool)

(declare-fun res!7225 () Bool)

(assert (=> b!7088 (=> res!7225 e!3918)))

(declare-datatypes ((SeekEntryResult!33 0))(
  ( (MissingZero!33 (index!2251 (_ BitVec 32))) (Found!33 (index!2252 (_ BitVec 32))) (Intermediate!33 (undefined!845 Bool) (index!2253 (_ BitVec 32)) (x!2579 (_ BitVec 32))) (Undefined!33) (MissingVacant!33 (index!2254 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!593 (_ BitVec 32)) SeekEntryResult!33)

(assert (=> b!7088 (= res!7225 (not (= (seekEntryOrOpen!0 k!1278 _keys!1806 mask!2250) (Found!33 lt!1423))))))

(declare-fun b!7089 () Bool)

(declare-fun res!7229 () Bool)

(assert (=> b!7089 (=> (not res!7229) (not e!3923))))

(assert (=> b!7089 (= res!7229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!7090 () Bool)

(declare-fun res!7231 () Bool)

(assert (=> b!7090 (=> (not res!7231) (not e!3923))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun zeroValue!1434 () V!615)

(declare-fun minValue!1434 () V!615)

(declare-datatypes ((tuple2!174 0))(
  ( (tuple2!175 (_1!87 (_ BitVec 64)) (_2!87 V!615)) )
))
(declare-datatypes ((List!191 0))(
  ( (Nil!188) (Cons!187 (h!753 tuple2!174) (t!2326 List!191)) )
))
(declare-datatypes ((ListLongMap!179 0))(
  ( (ListLongMap!180 (toList!105 List!191)) )
))
(declare-fun contains!79 (ListLongMap!179 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!64 (array!593 array!591 (_ BitVec 32) (_ BitVec 32) V!615 V!615 (_ BitVec 32) Int) ListLongMap!179)

(assert (=> b!7090 (= res!7231 (contains!79 (getCurrentListMap!64 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!7091 () Bool)

(assert (=> b!7091 (= e!3918 true)))

(declare-fun lt!1421 () SeekEntryResult!33)

(assert (=> b!7091 (and (is-Found!33 lt!1421) (= (index!2252 lt!1421) lt!1423))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!593 (_ BitVec 32)) SeekEntryResult!33)

(assert (=> b!7091 (= lt!1421 (seekEntry!0 k!1278 _keys!1806 mask!2250))))

(declare-fun lt!1424 () Unit!131)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!593 (_ BitVec 32)) Unit!131)

(assert (=> b!7091 (= lt!1424 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1278 lt!1423 _keys!1806 mask!2250))))

(declare-fun b!7092 () Bool)

(assert (=> b!7092 (= e!3923 (not e!3919))))

(declare-fun res!7230 () Bool)

(assert (=> b!7092 (=> res!7230 e!3919)))

(assert (=> b!7092 (= res!7230 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(assert (=> b!7092 e!3922))

(declare-fun c!509 () Bool)

(assert (=> b!7092 (= c!509 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!1422 () Unit!131)

(declare-fun lemmaKeyInListMapIsInArray!47 (array!593 array!591 (_ BitVec 32) (_ BitVec 32) V!615 V!615 (_ BitVec 64) Int) Unit!131)

(assert (=> b!7092 (= lt!1422 (lemmaKeyInListMapIsInArray!47 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!7093 () Bool)

(declare-fun res!7223 () Bool)

(assert (=> b!7093 (=> (not res!7223) (not e!3923))))

(declare-datatypes ((List!192 0))(
  ( (Nil!189) (Cons!188 (h!754 (_ BitVec 64)) (t!2327 List!192)) )
))
(declare-fun arrayNoDuplicates!0 (array!593 (_ BitVec 32) List!192) Bool)

(assert (=> b!7093 (= res!7223 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!189))))

(declare-fun b!7094 () Bool)

(assert (=> b!7094 (= e!3917 (and e!3921 mapRes!464))))

(declare-fun condMapEmpty!464 () Bool)

(declare-fun mapDefault!464 () ValueCell!148)

