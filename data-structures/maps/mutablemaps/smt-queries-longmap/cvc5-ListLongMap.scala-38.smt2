; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!680 () Bool)

(assert start!680)

(declare-fun b_free!133 () Bool)

(declare-fun b_next!133 () Bool)

(assert (=> start!680 (= b_free!133 (not b_next!133))))

(declare-fun tp!620 () Bool)

(declare-fun b_and!273 () Bool)

(assert (=> start!680 (= tp!620 b_and!273)))

(declare-fun b!4532 () Bool)

(declare-fun res!5770 () Bool)

(declare-fun e!2399 () Bool)

(assert (=> b!4532 (=> (not res!5770) (not e!2399))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!459 0))(
  ( (V!460 (val!111 Int)) )
))
(declare-datatypes ((ValueCell!89 0))(
  ( (ValueCellFull!89 (v!1199 V!459)) (EmptyCell!89) )
))
(declare-datatypes ((array!353 0))(
  ( (array!354 (arr!168 (Array (_ BitVec 32) ValueCell!89)) (size!230 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!353)

(declare-datatypes ((array!355 0))(
  ( (array!356 (arr!169 (Array (_ BitVec 32) (_ BitVec 64))) (size!231 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!355)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!4532 (= res!5770 (and (= (size!230 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!231 _keys!1806) (size!230 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!278 () Bool)

(declare-fun mapRes!278 () Bool)

(assert (=> mapIsEmpty!278 mapRes!278))

(declare-fun b!4533 () Bool)

(declare-fun e!2398 () Bool)

(declare-fun tp_is_empty!211 () Bool)

(assert (=> b!4533 (= e!2398 tp_is_empty!211)))

(declare-fun b!4534 () Bool)

(declare-fun e!2402 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(assert (=> b!4534 (= e!2402 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4535 () Bool)

(declare-fun res!5773 () Bool)

(assert (=> b!4535 (=> (not res!5773) (not e!2399))))

(declare-datatypes ((List!106 0))(
  ( (Nil!103) (Cons!102 (h!668 (_ BitVec 64)) (t!2235 List!106)) )
))
(declare-fun arrayNoDuplicates!0 (array!355 (_ BitVec 32) List!106) Bool)

(assert (=> b!4535 (= res!5773 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!103))))

(declare-fun b!4536 () Bool)

(declare-fun res!5768 () Bool)

(assert (=> b!4536 (=> (not res!5768) (not e!2399))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!459)

(declare-fun zeroValue!1434 () V!459)

(declare-datatypes ((tuple2!100 0))(
  ( (tuple2!101 (_1!50 (_ BitVec 64)) (_2!50 V!459)) )
))
(declare-datatypes ((List!107 0))(
  ( (Nil!104) (Cons!103 (h!669 tuple2!100) (t!2236 List!107)) )
))
(declare-datatypes ((ListLongMap!105 0))(
  ( (ListLongMap!106 (toList!68 List!107)) )
))
(declare-fun contains!39 (ListLongMap!105 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!27 (array!355 array!353 (_ BitVec 32) (_ BitVec 32) V!459 V!459 (_ BitVec 32) Int) ListLongMap!105)

(assert (=> b!4536 (= res!5768 (contains!39 (getCurrentListMap!27 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!4537 () Bool)

(assert (=> b!4537 (= e!2399 (not (or (bvsge #b00000000000000000000000000000000 (size!231 _keys!1806)) (bvslt (size!231 _keys!1806) #b01111111111111111111111111111111))))))

(assert (=> b!4537 e!2402))

(declare-fun c!242 () Bool)

(assert (=> b!4537 (= c!242 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!37 0))(
  ( (Unit!38) )
))
(declare-fun lt!690 () Unit!37)

(declare-fun lemmaKeyInListMapIsInArray!7 (array!355 array!353 (_ BitVec 32) (_ BitVec 32) V!459 V!459 (_ BitVec 64) Int) Unit!37)

(assert (=> b!4537 (= lt!690 (lemmaKeyInListMapIsInArray!7 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!4538 () Bool)

(declare-fun e!2400 () Bool)

(declare-fun e!2401 () Bool)

(assert (=> b!4538 (= e!2400 (and e!2401 mapRes!278))))

(declare-fun condMapEmpty!278 () Bool)

(declare-fun mapDefault!278 () ValueCell!89)

