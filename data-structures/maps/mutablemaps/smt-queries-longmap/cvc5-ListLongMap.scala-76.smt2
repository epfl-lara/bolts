; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1032 () Bool)

(assert start!1032)

(declare-fun b_free!361 () Bool)

(declare-fun b_next!361 () Bool)

(assert (=> start!1032 (= b_free!361 (not b_next!361))))

(declare-fun tp!1321 () Bool)

(declare-fun b_and!513 () Bool)

(assert (=> start!1032 (= tp!1321 b_and!513)))

(declare-fun b!9016 () Bool)

(declare-fun res!8273 () Bool)

(declare-fun e!5144 () Bool)

(assert (=> b!9016 (=> (not res!8273) (not e!5144))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!9016 (= res!8273 (validKeyInArray!0 k!1278))))

(declare-fun b!9017 () Bool)

(declare-fun e!5146 () Bool)

(assert (=> b!9017 (= e!5144 (not e!5146))))

(declare-fun res!8275 () Bool)

(assert (=> b!9017 (=> res!8275 e!5146)))

(declare-datatypes ((array!801 0))(
  ( (array!802 (arr!386 (Array (_ BitVec 32) (_ BitVec 64))) (size!448 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!801)

(declare-fun arrayContainsKey!0 (array!801 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!9017 (= res!8275 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(declare-fun e!5141 () Bool)

(assert (=> b!9017 e!5141))

(declare-fun c!689 () Bool)

(assert (=> b!9017 (= c!689 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!763 0))(
  ( (V!764 (val!225 Int)) )
))
(declare-datatypes ((ValueCell!203 0))(
  ( (ValueCellFull!203 (v!1319 V!763)) (EmptyCell!203) )
))
(declare-datatypes ((array!803 0))(
  ( (array!804 (arr!387 (Array (_ BitVec 32) ValueCell!203)) (size!449 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!803)

(declare-fun minValue!1434 () V!763)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!763)

(declare-datatypes ((Unit!177 0))(
  ( (Unit!178) )
))
(declare-fun lt!1953 () Unit!177)

(declare-fun lemmaKeyInListMapIsInArray!66 (array!801 array!803 (_ BitVec 32) (_ BitVec 32) V!763 V!763 (_ BitVec 64) Int) Unit!177)

(assert (=> b!9017 (= lt!1953 (lemmaKeyInListMapIsInArray!66 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!9018 () Bool)

(assert (=> b!9018 (= e!5141 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!9019 () Bool)

(assert (=> b!9019 (= e!5146 true)))

(declare-fun lt!1952 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!801 (_ BitVec 32)) Bool)

(assert (=> b!9019 (arrayForallSeekEntryOrOpenFound!0 lt!1952 _keys!1806 mask!2250)))

(declare-fun lt!1951 () Unit!177)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!801 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!177)

(assert (=> b!9019 (= lt!1951 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1806 mask!2250 #b00000000000000000000000000000000 lt!1952))))

(declare-fun arrayScanForKey!0 (array!801 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!9019 (= lt!1952 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!9020 () Bool)

(declare-fun res!8276 () Bool)

(assert (=> b!9020 (=> (not res!8276) (not e!5144))))

(assert (=> b!9020 (= res!8276 (and (= (size!449 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!448 _keys!1806) (size!449 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!9021 () Bool)

(assert (=> b!9021 (= e!5141 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!9022 () Bool)

(declare-fun res!8274 () Bool)

(assert (=> b!9022 (=> (not res!8274) (not e!5144))))

(declare-datatypes ((tuple2!240 0))(
  ( (tuple2!241 (_1!120 (_ BitVec 64)) (_2!120 V!763)) )
))
(declare-datatypes ((List!265 0))(
  ( (Nil!262) (Cons!261 (h!827 tuple2!240) (t!2406 List!265)) )
))
(declare-datatypes ((ListLongMap!245 0))(
  ( (ListLongMap!246 (toList!138 List!265)) )
))
(declare-fun contains!115 (ListLongMap!245 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!97 (array!801 array!803 (_ BitVec 32) (_ BitVec 32) V!763 V!763 (_ BitVec 32) Int) ListLongMap!245)

(assert (=> b!9022 (= res!8274 (contains!115 (getCurrentListMap!97 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!9023 () Bool)

(declare-fun res!8277 () Bool)

(assert (=> b!9023 (=> (not res!8277) (not e!5144))))

(declare-datatypes ((List!266 0))(
  ( (Nil!263) (Cons!262 (h!828 (_ BitVec 64)) (t!2407 List!266)) )
))
(declare-fun arrayNoDuplicates!0 (array!801 (_ BitVec 32) List!266) Bool)

(assert (=> b!9023 (= res!8277 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!263))))

(declare-fun b!9024 () Bool)

(declare-fun e!5143 () Bool)

(declare-fun e!5145 () Bool)

(declare-fun mapRes!638 () Bool)

(assert (=> b!9024 (= e!5143 (and e!5145 mapRes!638))))

(declare-fun condMapEmpty!638 () Bool)

(declare-fun mapDefault!638 () ValueCell!203)

