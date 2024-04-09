; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1038 () Bool)

(assert start!1038)

(declare-fun b_free!367 () Bool)

(declare-fun b_next!367 () Bool)

(assert (=> start!1038 (= b_free!367 (not b_next!367))))

(declare-fun tp!1339 () Bool)

(declare-fun b_and!519 () Bool)

(assert (=> start!1038 (= tp!1339 b_and!519)))

(declare-fun res!8339 () Bool)

(declare-fun e!5208 () Bool)

(assert (=> start!1038 (=> (not res!8339) (not e!5208))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!1038 (= res!8339 (validMask!0 mask!2250))))

(assert (=> start!1038 e!5208))

(assert (=> start!1038 tp!1339))

(assert (=> start!1038 true))

(declare-datatypes ((V!771 0))(
  ( (V!772 (val!228 Int)) )
))
(declare-datatypes ((ValueCell!206 0))(
  ( (ValueCellFull!206 (v!1322 V!771)) (EmptyCell!206) )
))
(declare-datatypes ((array!813 0))(
  ( (array!814 (arr!392 (Array (_ BitVec 32) ValueCell!206)) (size!454 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!813)

(declare-fun e!5204 () Bool)

(declare-fun array_inv!281 (array!813) Bool)

(assert (=> start!1038 (and (array_inv!281 _values!1492) e!5204)))

(declare-fun tp_is_empty!445 () Bool)

(assert (=> start!1038 tp_is_empty!445))

(declare-datatypes ((array!815 0))(
  ( (array!816 (arr!393 (Array (_ BitVec 32) (_ BitVec 64))) (size!455 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!815)

(declare-fun array_inv!282 (array!815) Bool)

(assert (=> start!1038 (array_inv!282 _keys!1806)))

(declare-fun b!9123 () Bool)

(declare-fun res!8341 () Bool)

(assert (=> b!9123 (=> (not res!8341) (not e!5208))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!815 (_ BitVec 32)) Bool)

(assert (=> b!9123 (= res!8341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapNonEmpty!647 () Bool)

(declare-fun mapRes!647 () Bool)

(declare-fun tp!1340 () Bool)

(declare-fun e!5209 () Bool)

(assert (=> mapNonEmpty!647 (= mapRes!647 (and tp!1340 e!5209))))

(declare-fun mapRest!647 () (Array (_ BitVec 32) ValueCell!206))

(declare-fun mapValue!647 () ValueCell!206)

(declare-fun mapKey!647 () (_ BitVec 32))

(assert (=> mapNonEmpty!647 (= (arr!392 _values!1492) (store mapRest!647 mapKey!647 mapValue!647))))

(declare-fun b!9124 () Bool)

(declare-fun res!8340 () Bool)

(assert (=> b!9124 (=> (not res!8340) (not e!5208))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!9124 (= res!8340 (and (= (size!454 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!455 _keys!1806) (size!454 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!9125 () Bool)

(declare-fun e!5206 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!815 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!9125 (= e!5206 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!647 () Bool)

(assert (=> mapIsEmpty!647 mapRes!647))

(declare-fun b!9126 () Bool)

(declare-fun e!5205 () Bool)

(assert (=> b!9126 (= e!5208 (not e!5205))))

(declare-fun res!8337 () Bool)

(assert (=> b!9126 (=> res!8337 e!5205)))

(assert (=> b!9126 (= res!8337 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(assert (=> b!9126 e!5206))

(declare-fun c!698 () Bool)

(assert (=> b!9126 (= c!698 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!771)

(declare-datatypes ((Unit!183 0))(
  ( (Unit!184) )
))
(declare-fun lt!1979 () Unit!183)

(declare-fun zeroValue!1434 () V!771)

(declare-fun lemmaKeyInListMapIsInArray!68 (array!815 array!813 (_ BitVec 32) (_ BitVec 32) V!771 V!771 (_ BitVec 64) Int) Unit!183)

(assert (=> b!9126 (= lt!1979 (lemmaKeyInListMapIsInArray!68 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!9127 () Bool)

(assert (=> b!9127 (= e!5206 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!9128 () Bool)

(assert (=> b!9128 (= e!5205 true)))

(declare-fun lt!1980 () (_ BitVec 32))

(assert (=> b!9128 (arrayForallSeekEntryOrOpenFound!0 lt!1980 _keys!1806 mask!2250)))

(declare-fun lt!1978 () Unit!183)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!815 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!183)

(assert (=> b!9128 (= lt!1978 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1980))))

(declare-fun arrayScanForKey!0 (array!815 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!9128 (= lt!1980 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!9129 () Bool)

(assert (=> b!9129 (= e!5209 tp_is_empty!445)))

(declare-fun b!9130 () Bool)

(declare-fun res!8335 () Bool)

(assert (=> b!9130 (=> (not res!8335) (not e!5208))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!9130 (= res!8335 (validKeyInArray!0 k!1278))))

(declare-fun b!9131 () Bool)

(declare-fun e!5210 () Bool)

(assert (=> b!9131 (= e!5204 (and e!5210 mapRes!647))))

(declare-fun condMapEmpty!647 () Bool)

(declare-fun mapDefault!647 () ValueCell!206)

