; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!824 () Bool)

(assert start!824)

(declare-fun b_free!217 () Bool)

(declare-fun b_next!217 () Bool)

(assert (=> start!824 (= b_free!217 (not b_next!217))))

(declare-fun tp!881 () Bool)

(declare-fun b_and!363 () Bool)

(assert (=> start!824 (= tp!881 b_and!363)))

(declare-fun b!6392 () Bool)

(declare-fun res!6794 () Bool)

(declare-fun e!3512 () Bool)

(assert (=> b!6392 (=> (not res!6794) (not e!3512))))

(declare-datatypes ((array!523 0))(
  ( (array!524 (arr!250 (Array (_ BitVec 32) (_ BitVec 64))) (size!312 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!523)

(declare-datatypes ((List!163 0))(
  ( (Nil!160) (Cons!159 (h!725 (_ BitVec 64)) (t!2298 List!163)) )
))
(declare-fun arrayNoDuplicates!0 (array!523 (_ BitVec 32) List!163) Bool)

(assert (=> b!6392 (= res!6794 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!160))))

(declare-fun b!6393 () Bool)

(declare-fun e!3510 () Bool)

(assert (=> b!6393 (= e!3512 (not e!3510))))

(declare-fun res!6790 () Bool)

(assert (=> b!6393 (=> res!6790 e!3510)))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!523 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!6393 (= res!6790 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(declare-fun e!3514 () Bool)

(assert (=> b!6393 e!3514))

(declare-fun c!458 () Bool)

(assert (=> b!6393 (= c!458 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((Unit!103 0))(
  ( (Unit!104) )
))
(declare-fun lt!1192 () Unit!103)

(declare-datatypes ((V!571 0))(
  ( (V!572 (val!153 Int)) )
))
(declare-datatypes ((ValueCell!131 0))(
  ( (ValueCellFull!131 (v!1244 V!571)) (EmptyCell!131) )
))
(declare-datatypes ((array!525 0))(
  ( (array!526 (arr!251 (Array (_ BitVec 32) ValueCell!131)) (size!313 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!525)

(declare-fun minValue!1434 () V!571)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!571)

(declare-fun lemmaKeyInListMapIsInArray!36 (array!523 array!525 (_ BitVec 32) (_ BitVec 32) V!571 V!571 (_ BitVec 64) Int) Unit!103)

(assert (=> b!6393 (= lt!1192 (lemmaKeyInListMapIsInArray!36 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!6394 () Bool)

(declare-fun res!6789 () Bool)

(assert (=> b!6394 (=> (not res!6789) (not e!3512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!523 (_ BitVec 32)) Bool)

(assert (=> b!6394 (= res!6789 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!6395 () Bool)

(declare-fun e!3508 () Bool)

(declare-fun tp_is_empty!295 () Bool)

(assert (=> b!6395 (= e!3508 tp_is_empty!295)))

(declare-fun b!6396 () Bool)

(declare-fun res!6791 () Bool)

(assert (=> b!6396 (=> (not res!6791) (not e!3512))))

(declare-datatypes ((tuple2!150 0))(
  ( (tuple2!151 (_1!75 (_ BitVec 64)) (_2!75 V!571)) )
))
(declare-datatypes ((List!164 0))(
  ( (Nil!161) (Cons!160 (h!726 tuple2!150) (t!2299 List!164)) )
))
(declare-datatypes ((ListLongMap!155 0))(
  ( (ListLongMap!156 (toList!93 List!164)) )
))
(declare-fun contains!67 (ListLongMap!155 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!52 (array!523 array!525 (_ BitVec 32) (_ BitVec 32) V!571 V!571 (_ BitVec 32) Int) ListLongMap!155)

(assert (=> b!6396 (= res!6791 (contains!67 (getCurrentListMap!52 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!6397 () Bool)

(declare-fun e!3509 () Bool)

(assert (=> b!6397 (= e!3510 e!3509)))

(declare-fun res!6795 () Bool)

(assert (=> b!6397 (=> res!6795 e!3509)))

(assert (=> b!6397 (= res!6795 (not (= (size!312 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(declare-fun lt!1191 () (_ BitVec 32))

(assert (=> b!6397 (arrayForallSeekEntryOrOpenFound!0 lt!1191 _keys!1806 mask!2250)))

(declare-fun lt!1194 () Unit!103)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!523 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!103)

(assert (=> b!6397 (= lt!1194 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1191))))

(declare-fun arrayScanForKey!0 (array!523 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!6397 (= lt!1191 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!413 () Bool)

(declare-fun mapRes!413 () Bool)

(declare-fun tp!880 () Bool)

(assert (=> mapNonEmpty!413 (= mapRes!413 (and tp!880 e!3508))))

(declare-fun mapRest!413 () (Array (_ BitVec 32) ValueCell!131))

(declare-fun mapValue!413 () ValueCell!131)

(declare-fun mapKey!413 () (_ BitVec 32))

(assert (=> mapNonEmpty!413 (= (arr!251 _values!1492) (store mapRest!413 mapKey!413 mapValue!413))))

(declare-fun b!6398 () Bool)

(declare-fun e!3515 () Bool)

(declare-fun e!3513 () Bool)

(assert (=> b!6398 (= e!3515 (and e!3513 mapRes!413))))

(declare-fun condMapEmpty!413 () Bool)

(declare-fun mapDefault!413 () ValueCell!131)

