; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!822 () Bool)

(assert start!822)

(declare-fun b_free!215 () Bool)

(declare-fun b_next!215 () Bool)

(assert (=> start!822 (= b_free!215 (not b_next!215))))

(declare-fun tp!875 () Bool)

(declare-fun b_and!361 () Bool)

(assert (=> start!822 (= tp!875 b_and!361)))

(declare-fun mapNonEmpty!410 () Bool)

(declare-fun mapRes!410 () Bool)

(declare-fun tp!874 () Bool)

(declare-fun e!3486 () Bool)

(assert (=> mapNonEmpty!410 (= mapRes!410 (and tp!874 e!3486))))

(declare-fun mapKey!410 () (_ BitVec 32))

(declare-datatypes ((V!567 0))(
  ( (V!568 (val!152 Int)) )
))
(declare-datatypes ((ValueCell!130 0))(
  ( (ValueCellFull!130 (v!1243 V!567)) (EmptyCell!130) )
))
(declare-datatypes ((array!519 0))(
  ( (array!520 (arr!248 (Array (_ BitVec 32) ValueCell!130)) (size!310 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!519)

(declare-fun mapValue!410 () ValueCell!130)

(declare-fun mapRest!410 () (Array (_ BitVec 32) ValueCell!130))

(assert (=> mapNonEmpty!410 (= (arr!248 _values!1492) (store mapRest!410 mapKey!410 mapValue!410))))

(declare-fun b!6354 () Bool)

(declare-fun e!3488 () Bool)

(declare-fun tp_is_empty!293 () Bool)

(assert (=> b!6354 (= e!3488 tp_is_empty!293)))

(declare-fun b!6355 () Bool)

(declare-fun res!6772 () Bool)

(declare-fun e!3490 () Bool)

(assert (=> b!6355 (=> (not res!6772) (not e!3490))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((array!521 0))(
  ( (array!522 (arr!249 (Array (_ BitVec 32) (_ BitVec 64))) (size!311 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!521)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!6355 (= res!6772 (and (= (size!310 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!311 _keys!1806) (size!310 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!6356 () Bool)

(declare-fun e!3489 () Bool)

(declare-fun e!3484 () Bool)

(assert (=> b!6356 (= e!3489 e!3484)))

(declare-fun res!6765 () Bool)

(assert (=> b!6356 (=> res!6765 e!3484)))

(assert (=> b!6356 (= res!6765 (not (= (size!311 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))))))

(declare-fun lt!1180 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!521 (_ BitVec 32)) Bool)

(assert (=> b!6356 (arrayForallSeekEntryOrOpenFound!0 lt!1180 _keys!1806 mask!2250)))

(declare-datatypes ((Unit!101 0))(
  ( (Unit!102) )
))
(declare-fun lt!1182 () Unit!101)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!521 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!101)

(assert (=> b!6356 (= lt!1182 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1180))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!521 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!6356 (= lt!1180 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!6357 () Bool)

(assert (=> b!6357 (= e!3484 true)))

(declare-datatypes ((SeekEntryResult!17 0))(
  ( (MissingZero!17 (index!2187 (_ BitVec 32))) (Found!17 (index!2188 (_ BitVec 32))) (Intermediate!17 (undefined!829 Bool) (index!2189 (_ BitVec 32)) (x!2515 (_ BitVec 32))) (Undefined!17) (MissingVacant!17 (index!2190 (_ BitVec 32))) )
))
(declare-fun lt!1181 () SeekEntryResult!17)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!521 (_ BitVec 32)) SeekEntryResult!17)

(assert (=> b!6357 (= lt!1181 (seekEntryOrOpen!0 k!1278 _keys!1806 mask!2250))))

(declare-fun b!6358 () Bool)

(declare-fun e!3487 () Bool)

(declare-fun arrayContainsKey!0 (array!521 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!6358 (= e!3487 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!6359 () Bool)

(assert (=> b!6359 (= e!3490 (not e!3489))))

(declare-fun res!6767 () Bool)

(assert (=> b!6359 (=> res!6767 e!3489)))

(assert (=> b!6359 (= res!6767 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(assert (=> b!6359 e!3487))

(declare-fun c!455 () Bool)

(assert (=> b!6359 (= c!455 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun lt!1179 () Unit!101)

(declare-fun minValue!1434 () V!567)

(declare-fun zeroValue!1434 () V!567)

(declare-fun lemmaKeyInListMapIsInArray!35 (array!521 array!519 (_ BitVec 32) (_ BitVec 32) V!567 V!567 (_ BitVec 64) Int) Unit!101)

(assert (=> b!6359 (= lt!1179 (lemmaKeyInListMapIsInArray!35 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!6360 () Bool)

(declare-fun res!6771 () Bool)

(assert (=> b!6360 (=> (not res!6771) (not e!3490))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!6360 (= res!6771 (validKeyInArray!0 k!1278))))

(declare-fun b!6361 () Bool)

(assert (=> b!6361 (= e!3487 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!6362 () Bool)

(assert (=> b!6362 (= e!3486 tp_is_empty!293)))

(declare-fun b!6363 () Bool)

(declare-fun res!6769 () Bool)

(assert (=> b!6363 (=> (not res!6769) (not e!3490))))

(declare-datatypes ((List!161 0))(
  ( (Nil!158) (Cons!157 (h!723 (_ BitVec 64)) (t!2296 List!161)) )
))
(declare-fun arrayNoDuplicates!0 (array!521 (_ BitVec 32) List!161) Bool)

(assert (=> b!6363 (= res!6769 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!158))))

(declare-fun b!6364 () Bool)

(declare-fun res!6768 () Bool)

(assert (=> b!6364 (=> (not res!6768) (not e!3490))))

(assert (=> b!6364 (= res!6768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!6353 () Bool)

(declare-fun res!6766 () Bool)

(assert (=> b!6353 (=> (not res!6766) (not e!3490))))

(declare-datatypes ((tuple2!148 0))(
  ( (tuple2!149 (_1!74 (_ BitVec 64)) (_2!74 V!567)) )
))
(declare-datatypes ((List!162 0))(
  ( (Nil!159) (Cons!158 (h!724 tuple2!148) (t!2297 List!162)) )
))
(declare-datatypes ((ListLongMap!153 0))(
  ( (ListLongMap!154 (toList!92 List!162)) )
))
(declare-fun contains!66 (ListLongMap!153 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!51 (array!521 array!519 (_ BitVec 32) (_ BitVec 32) V!567 V!567 (_ BitVec 32) Int) ListLongMap!153)

(assert (=> b!6353 (= res!6766 (contains!66 (getCurrentListMap!51 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun res!6770 () Bool)

(assert (=> start!822 (=> (not res!6770) (not e!3490))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!822 (= res!6770 (validMask!0 mask!2250))))

(assert (=> start!822 e!3490))

(assert (=> start!822 tp!875))

(assert (=> start!822 true))

(declare-fun e!3485 () Bool)

(declare-fun array_inv!177 (array!519) Bool)

(assert (=> start!822 (and (array_inv!177 _values!1492) e!3485)))

(assert (=> start!822 tp_is_empty!293))

(declare-fun array_inv!178 (array!521) Bool)

(assert (=> start!822 (array_inv!178 _keys!1806)))

(declare-fun b!6365 () Bool)

(assert (=> b!6365 (= e!3485 (and e!3488 mapRes!410))))

(declare-fun condMapEmpty!410 () Bool)

(declare-fun mapDefault!410 () ValueCell!130)

