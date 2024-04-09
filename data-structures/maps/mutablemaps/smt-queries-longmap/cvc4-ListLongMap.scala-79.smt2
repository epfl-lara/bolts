; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1080 () Bool)

(assert start!1080)

(declare-fun b_free!383 () Bool)

(declare-fun b_next!383 () Bool)

(assert (=> start!1080 (= b_free!383 (not b_next!383))))

(declare-fun tp!1391 () Bool)

(declare-fun b_and!537 () Bool)

(assert (=> start!1080 (= tp!1391 b_and!537)))

(declare-fun b!9601 () Bool)

(declare-fun e!5501 () Bool)

(declare-fun tp_is_empty!461 () Bool)

(assert (=> b!9601 (= e!5501 tp_is_empty!461)))

(declare-fun b!9602 () Bool)

(declare-fun res!8598 () Bool)

(declare-fun e!5495 () Bool)

(assert (=> b!9602 (=> (not res!8598) (not e!5495))))

(declare-datatypes ((array!847 0))(
  ( (array!848 (arr!408 (Array (_ BitVec 32) (_ BitVec 64))) (size!470 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!847)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!847 (_ BitVec 32)) Bool)

(assert (=> b!9602 (= res!8598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!9604 () Bool)

(declare-fun e!5499 () Bool)

(assert (=> b!9604 (= e!5495 (not e!5499))))

(declare-fun res!8600 () Bool)

(assert (=> b!9604 (=> res!8600 e!5499)))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!847 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!9604 (= res!8600 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(declare-fun e!5496 () Bool)

(assert (=> b!9604 e!5496))

(declare-fun c!765 () Bool)

(assert (=> b!9604 (= c!765 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((Unit!199 0))(
  ( (Unit!200) )
))
(declare-fun lt!2176 () Unit!199)

(declare-datatypes ((V!791 0))(
  ( (V!792 (val!236 Int)) )
))
(declare-datatypes ((ValueCell!214 0))(
  ( (ValueCellFull!214 (v!1331 V!791)) (EmptyCell!214) )
))
(declare-datatypes ((array!849 0))(
  ( (array!850 (arr!409 (Array (_ BitVec 32) ValueCell!214)) (size!471 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!849)

(declare-fun minValue!1434 () V!791)

(declare-fun zeroValue!1434 () V!791)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun lemmaKeyInListMapIsInArray!75 (array!847 array!849 (_ BitVec 32) (_ BitVec 32) V!791 V!791 (_ BitVec 64) Int) Unit!199)

(assert (=> b!9604 (= lt!2176 (lemmaKeyInListMapIsInArray!75 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!9605 () Bool)

(declare-fun e!5494 () Bool)

(assert (=> b!9605 (= e!5499 e!5494)))

(declare-fun res!8603 () Bool)

(assert (=> b!9605 (=> res!8603 e!5494)))

(assert (=> b!9605 (= res!8603 (not (= (size!470 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(declare-fun lt!2175 () (_ BitVec 32))

(assert (=> b!9605 (arrayForallSeekEntryOrOpenFound!0 lt!2175 _keys!1806 mask!2250)))

(declare-fun lt!2174 () Unit!199)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!847 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!199)

(assert (=> b!9605 (= lt!2174 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!2175))))

(declare-fun arrayScanForKey!0 (array!847 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!9605 (= lt!2175 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!9606 () Bool)

(assert (=> b!9606 (= e!5496 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!9607 () Bool)

(declare-fun e!5497 () Bool)

(assert (=> b!9607 (= e!5494 e!5497)))

(declare-fun res!8601 () Bool)

(assert (=> b!9607 (=> res!8601 e!5497)))

(declare-datatypes ((SeekEntryResult!42 0))(
  ( (MissingZero!42 (index!2287 (_ BitVec 32))) (Found!42 (index!2288 (_ BitVec 32))) (Intermediate!42 (undefined!854 Bool) (index!2289 (_ BitVec 32)) (x!2804 (_ BitVec 32))) (Undefined!42) (MissingVacant!42 (index!2290 (_ BitVec 32))) )
))
(declare-fun lt!2177 () SeekEntryResult!42)

(assert (=> b!9607 (= res!8601 (not (is-Found!42 lt!2177)))))

(assert (=> b!9607 (and (is-Found!42 lt!2177) (= (index!2288 lt!2177) lt!2175))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!847 (_ BitVec 32)) SeekEntryResult!42)

(assert (=> b!9607 (= lt!2177 (seekEntry!0 k!1278 _keys!1806 mask!2250))))

(declare-fun lt!2178 () Unit!199)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!847 (_ BitVec 32)) Unit!199)

(assert (=> b!9607 (= lt!2178 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1278 lt!2175 _keys!1806 mask!2250))))

(declare-fun b!9608 () Bool)

(declare-fun res!8607 () Bool)

(assert (=> b!9608 (=> (not res!8607) (not e!5495))))

(declare-datatypes ((tuple2!256 0))(
  ( (tuple2!257 (_1!128 (_ BitVec 64)) (_2!128 V!791)) )
))
(declare-datatypes ((List!281 0))(
  ( (Nil!278) (Cons!277 (h!843 tuple2!256) (t!2424 List!281)) )
))
(declare-datatypes ((ListLongMap!261 0))(
  ( (ListLongMap!262 (toList!146 List!281)) )
))
(declare-fun contains!124 (ListLongMap!261 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!105 (array!847 array!849 (_ BitVec 32) (_ BitVec 32) V!791 V!791 (_ BitVec 32) Int) ListLongMap!261)

(assert (=> b!9608 (= res!8607 (contains!124 (getCurrentListMap!105 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!9609 () Bool)

(declare-fun e!5493 () Bool)

(assert (=> b!9609 (= e!5493 tp_is_empty!461)))

(declare-fun mapNonEmpty!674 () Bool)

(declare-fun mapRes!674 () Bool)

(declare-fun tp!1390 () Bool)

(assert (=> mapNonEmpty!674 (= mapRes!674 (and tp!1390 e!5493))))

(declare-fun mapKey!674 () (_ BitVec 32))

(declare-fun mapRest!674 () (Array (_ BitVec 32) ValueCell!214))

(declare-fun mapValue!674 () ValueCell!214)

(assert (=> mapNonEmpty!674 (= (arr!409 _values!1492) (store mapRest!674 mapKey!674 mapValue!674))))

(declare-fun mapIsEmpty!674 () Bool)

(assert (=> mapIsEmpty!674 mapRes!674))

(declare-fun b!9610 () Bool)

(declare-fun res!8597 () Bool)

(assert (=> b!9610 (=> (not res!8597) (not e!5495))))

(declare-datatypes ((List!282 0))(
  ( (Nil!279) (Cons!278 (h!844 (_ BitVec 64)) (t!2425 List!282)) )
))
(declare-fun arrayNoDuplicates!0 (array!847 (_ BitVec 32) List!282) Bool)

(assert (=> b!9610 (= res!8597 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!279))))

(declare-fun b!9611 () Bool)

(declare-fun res!8602 () Bool)

(assert (=> b!9611 (=> res!8602 e!5494)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!847 (_ BitVec 32)) SeekEntryResult!42)

(assert (=> b!9611 (= res!8602 (not (= (seekEntryOrOpen!0 k!1278 _keys!1806 mask!2250) (Found!42 lt!2175))))))

(declare-fun b!9612 () Bool)

(declare-fun res!8604 () Bool)

(assert (=> b!9612 (=> (not res!8604) (not e!5495))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!9612 (= res!8604 (validKeyInArray!0 k!1278))))

(declare-fun b!9603 () Bool)

(declare-fun res!8599 () Bool)

(assert (=> b!9603 (=> res!8599 e!5497)))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!9603 (= res!8599 (not (inRange!0 (index!2288 lt!2177) mask!2250)))))

(declare-fun res!8606 () Bool)

(assert (=> start!1080 (=> (not res!8606) (not e!5495))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!1080 (= res!8606 (validMask!0 mask!2250))))

(assert (=> start!1080 e!5495))

(assert (=> start!1080 tp!1391))

(assert (=> start!1080 true))

(declare-fun e!5500 () Bool)

(declare-fun array_inv!295 (array!849) Bool)

(assert (=> start!1080 (and (array_inv!295 _values!1492) e!5500)))

(assert (=> start!1080 tp_is_empty!461))

(declare-fun array_inv!296 (array!847) Bool)

(assert (=> start!1080 (array_inv!296 _keys!1806)))

(declare-fun b!9613 () Bool)

(declare-fun res!8605 () Bool)

(assert (=> b!9613 (=> (not res!8605) (not e!5495))))

(assert (=> b!9613 (= res!8605 (and (= (size!471 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!470 _keys!1806) (size!471 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!9614 () Bool)

(assert (=> b!9614 (= e!5497 (and (bvsge (index!2288 lt!2177) #b00000000000000000000000000000000) (bvslt (index!2288 lt!2177) (size!470 _keys!1806))))))

(declare-fun b!9615 () Bool)

(assert (=> b!9615 (= e!5496 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!9616 () Bool)

(assert (=> b!9616 (= e!5500 (and e!5501 mapRes!674))))

(declare-fun condMapEmpty!674 () Bool)

(declare-fun mapDefault!674 () ValueCell!214)

