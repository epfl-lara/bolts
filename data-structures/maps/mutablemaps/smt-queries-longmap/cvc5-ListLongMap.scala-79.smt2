; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1076 () Bool)

(assert start!1076)

(declare-fun b_free!379 () Bool)

(declare-fun b_next!379 () Bool)

(assert (=> start!1076 (= b_free!379 (not b_next!379))))

(declare-fun tp!1378 () Bool)

(declare-fun b_and!533 () Bool)

(assert (=> start!1076 (= tp!1378 b_and!533)))

(declare-fun b!9505 () Bool)

(declare-fun e!5447 () Bool)

(declare-fun e!5446 () Bool)

(assert (=> b!9505 (= e!5447 e!5446)))

(declare-fun res!8539 () Bool)

(assert (=> b!9505 (=> res!8539 e!5446)))

(declare-datatypes ((array!839 0))(
  ( (array!840 (arr!404 (Array (_ BitVec 32) (_ BitVec 64))) (size!466 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!839)

(declare-fun mask!2250 () (_ BitVec 32))

(assert (=> b!9505 (= res!8539 (not (= (size!466 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(declare-fun lt!2144 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!839 (_ BitVec 32)) Bool)

(assert (=> b!9505 (arrayForallSeekEntryOrOpenFound!0 lt!2144 _keys!1806 mask!2250)))

(declare-datatypes ((Unit!195 0))(
  ( (Unit!196) )
))
(declare-fun lt!2148 () Unit!195)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!839 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!195)

(assert (=> b!9505 (= lt!2148 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!2144))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!839 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!9505 (= lt!2144 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!9506 () Bool)

(declare-fun e!5443 () Bool)

(declare-fun tp_is_empty!457 () Bool)

(assert (=> b!9506 (= e!5443 tp_is_empty!457)))

(declare-fun mapIsEmpty!668 () Bool)

(declare-fun mapRes!668 () Bool)

(assert (=> mapIsEmpty!668 mapRes!668))

(declare-fun b!9507 () Bool)

(declare-fun e!5444 () Bool)

(declare-fun arrayContainsKey!0 (array!839 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!9507 (= e!5444 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!9508 () Bool)

(declare-fun res!8541 () Bool)

(assert (=> b!9508 (=> res!8541 e!5446)))

(declare-datatypes ((SeekEntryResult!40 0))(
  ( (MissingZero!40 (index!2279 (_ BitVec 32))) (Found!40 (index!2280 (_ BitVec 32))) (Intermediate!40 (undefined!852 Bool) (index!2281 (_ BitVec 32)) (x!2802 (_ BitVec 32))) (Undefined!40) (MissingVacant!40 (index!2282 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!839 (_ BitVec 32)) SeekEntryResult!40)

(assert (=> b!9508 (= res!8541 (not (= (seekEntryOrOpen!0 k!1278 _keys!1806 mask!2250) (Found!40 lt!2144))))))

(declare-fun b!9509 () Bool)

(declare-fun res!8532 () Bool)

(declare-fun e!5440 () Bool)

(assert (=> b!9509 (=> (not res!8532) (not e!5440))))

(assert (=> b!9509 (= res!8532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!9510 () Bool)

(declare-fun e!5441 () Bool)

(assert (=> b!9510 (= e!5446 e!5441)))

(declare-fun res!8535 () Bool)

(assert (=> b!9510 (=> res!8535 e!5441)))

(declare-fun lt!2147 () SeekEntryResult!40)

(assert (=> b!9510 (= res!8535 (not (is-Found!40 lt!2147)))))

(assert (=> b!9510 (and (is-Found!40 lt!2147) (= (index!2280 lt!2147) lt!2144))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!839 (_ BitVec 32)) SeekEntryResult!40)

(assert (=> b!9510 (= lt!2147 (seekEntry!0 k!1278 _keys!1806 mask!2250))))

(declare-fun lt!2146 () Unit!195)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!839 (_ BitVec 32)) Unit!195)

(assert (=> b!9510 (= lt!2146 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1278 lt!2144 _keys!1806 mask!2250))))

(declare-fun b!9511 () Bool)

(declare-fun res!8536 () Bool)

(assert (=> b!9511 (=> (not res!8536) (not e!5440))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!9511 (= res!8536 (validKeyInArray!0 k!1278))))

(declare-fun b!9512 () Bool)

(assert (=> b!9512 (= e!5441 (and (bvsge (index!2280 lt!2147) #b00000000000000000000000000000000) (bvslt (index!2280 lt!2147) (size!466 _keys!1806))))))

(declare-fun b!9514 () Bool)

(assert (=> b!9514 (= e!5440 (not e!5447))))

(declare-fun res!8533 () Bool)

(assert (=> b!9514 (=> res!8533 e!5447)))

(assert (=> b!9514 (= res!8533 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(assert (=> b!9514 e!5444))

(declare-fun c!759 () Bool)

(assert (=> b!9514 (= c!759 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun lt!2145 () Unit!195)

(declare-datatypes ((V!787 0))(
  ( (V!788 (val!234 Int)) )
))
(declare-datatypes ((ValueCell!212 0))(
  ( (ValueCellFull!212 (v!1329 V!787)) (EmptyCell!212) )
))
(declare-datatypes ((array!841 0))(
  ( (array!842 (arr!405 (Array (_ BitVec 32) ValueCell!212)) (size!467 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!841)

(declare-fun minValue!1434 () V!787)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!787)

(declare-fun lemmaKeyInListMapIsInArray!73 (array!839 array!841 (_ BitVec 32) (_ BitVec 32) V!787 V!787 (_ BitVec 64) Int) Unit!195)

(assert (=> b!9514 (= lt!2145 (lemmaKeyInListMapIsInArray!73 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun mapNonEmpty!668 () Bool)

(declare-fun tp!1379 () Bool)

(assert (=> mapNonEmpty!668 (= mapRes!668 (and tp!1379 e!5443))))

(declare-fun mapRest!668 () (Array (_ BitVec 32) ValueCell!212))

(declare-fun mapKey!668 () (_ BitVec 32))

(declare-fun mapValue!668 () ValueCell!212)

(assert (=> mapNonEmpty!668 (= (arr!405 _values!1492) (store mapRest!668 mapKey!668 mapValue!668))))

(declare-fun b!9515 () Bool)

(assert (=> b!9515 (= e!5444 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!9516 () Bool)

(declare-fun res!8538 () Bool)

(assert (=> b!9516 (=> (not res!8538) (not e!5440))))

(declare-datatypes ((List!277 0))(
  ( (Nil!274) (Cons!273 (h!839 (_ BitVec 64)) (t!2420 List!277)) )
))
(declare-fun arrayNoDuplicates!0 (array!839 (_ BitVec 32) List!277) Bool)

(assert (=> b!9516 (= res!8538 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!274))))

(declare-fun res!8531 () Bool)

(assert (=> start!1076 (=> (not res!8531) (not e!5440))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!1076 (= res!8531 (validMask!0 mask!2250))))

(assert (=> start!1076 e!5440))

(assert (=> start!1076 tp!1378))

(assert (=> start!1076 true))

(declare-fun e!5442 () Bool)

(declare-fun array_inv!291 (array!841) Bool)

(assert (=> start!1076 (and (array_inv!291 _values!1492) e!5442)))

(assert (=> start!1076 tp_is_empty!457))

(declare-fun array_inv!292 (array!839) Bool)

(assert (=> start!1076 (array_inv!292 _keys!1806)))

(declare-fun b!9513 () Bool)

(declare-fun e!5439 () Bool)

(assert (=> b!9513 (= e!5439 tp_is_empty!457)))

(declare-fun b!9517 () Bool)

(declare-fun res!8534 () Bool)

(assert (=> b!9517 (=> res!8534 e!5441)))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!9517 (= res!8534 (not (inRange!0 (index!2280 lt!2147) mask!2250)))))

(declare-fun b!9518 () Bool)

(declare-fun res!8540 () Bool)

(assert (=> b!9518 (=> (not res!8540) (not e!5440))))

(assert (=> b!9518 (= res!8540 (and (= (size!467 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!466 _keys!1806) (size!467 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!9519 () Bool)

(declare-fun res!8537 () Bool)

(assert (=> b!9519 (=> (not res!8537) (not e!5440))))

(declare-datatypes ((tuple2!252 0))(
  ( (tuple2!253 (_1!126 (_ BitVec 64)) (_2!126 V!787)) )
))
(declare-datatypes ((List!278 0))(
  ( (Nil!275) (Cons!274 (h!840 tuple2!252) (t!2421 List!278)) )
))
(declare-datatypes ((ListLongMap!257 0))(
  ( (ListLongMap!258 (toList!144 List!278)) )
))
(declare-fun contains!122 (ListLongMap!257 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!103 (array!839 array!841 (_ BitVec 32) (_ BitVec 32) V!787 V!787 (_ BitVec 32) Int) ListLongMap!257)

(assert (=> b!9519 (= res!8537 (contains!122 (getCurrentListMap!103 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!9520 () Bool)

(assert (=> b!9520 (= e!5442 (and e!5439 mapRes!668))))

(declare-fun condMapEmpty!668 () Bool)

(declare-fun mapDefault!668 () ValueCell!212)

