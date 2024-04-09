; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!952 () Bool)

(assert start!952)

(declare-fun b_free!325 () Bool)

(declare-fun b_next!325 () Bool)

(assert (=> start!952 (= b_free!325 (not b_next!325))))

(declare-fun tp!1207 () Bool)

(declare-fun b_and!473 () Bool)

(assert (=> start!952 (= tp!1207 b_and!473)))

(declare-fun b!8113 () Bool)

(declare-fun res!7794 () Bool)

(declare-fun e!4596 () Bool)

(assert (=> b!8113 (=> (not res!7794) (not e!4596))))

(declare-datatypes ((array!731 0))(
  ( (array!732 (arr!353 (Array (_ BitVec 32) (_ BitVec 64))) (size!415 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!731)

(declare-datatypes ((List!243 0))(
  ( (Nil!240) (Cons!239 (h!805 (_ BitVec 64)) (t!2380 List!243)) )
))
(declare-fun arrayNoDuplicates!0 (array!731 (_ BitVec 32) List!243) Bool)

(assert (=> b!8113 (= res!7794 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!240))))

(declare-fun mapNonEmpty!578 () Bool)

(declare-fun mapRes!578 () Bool)

(declare-fun tp!1208 () Bool)

(declare-fun e!4598 () Bool)

(assert (=> mapNonEmpty!578 (= mapRes!578 (and tp!1208 e!4598))))

(declare-fun mapKey!578 () (_ BitVec 32))

(declare-datatypes ((V!715 0))(
  ( (V!716 (val!207 Int)) )
))
(declare-datatypes ((ValueCell!185 0))(
  ( (ValueCellFull!185 (v!1299 V!715)) (EmptyCell!185) )
))
(declare-fun mapValue!578 () ValueCell!185)

(declare-datatypes ((array!733 0))(
  ( (array!734 (arr!354 (Array (_ BitVec 32) ValueCell!185)) (size!416 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!733)

(declare-fun mapRest!578 () (Array (_ BitVec 32) ValueCell!185))

(assert (=> mapNonEmpty!578 (= (arr!354 _values!1492) (store mapRest!578 mapKey!578 mapValue!578))))

(declare-fun b!8114 () Bool)

(declare-fun tp_is_empty!403 () Bool)

(assert (=> b!8114 (= e!4598 tp_is_empty!403)))

(declare-fun mapIsEmpty!578 () Bool)

(assert (=> mapIsEmpty!578 mapRes!578))

(declare-fun b!8115 () Bool)

(declare-fun e!4599 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!731 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!8115 (= e!4599 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!8116 () Bool)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!8116 (= e!4599 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!8117 () Bool)

(declare-fun e!4595 () Bool)

(assert (=> b!8117 (= e!4596 (not e!4595))))

(declare-fun res!7795 () Bool)

(assert (=> b!8117 (=> res!7795 e!4595)))

(assert (=> b!8117 (= res!7795 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(assert (=> b!8117 e!4599))

(declare-fun c!569 () Bool)

(assert (=> b!8117 (= c!569 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun minValue!1434 () V!715)

(declare-datatypes ((Unit!147 0))(
  ( (Unit!148) )
))
(declare-fun lt!1638 () Unit!147)

(declare-fun zeroValue!1434 () V!715)

(declare-fun lemmaKeyInListMapIsInArray!54 (array!731 array!733 (_ BitVec 32) (_ BitVec 32) V!715 V!715 (_ BitVec 64) Int) Unit!147)

(assert (=> b!8117 (= lt!1638 (lemmaKeyInListMapIsInArray!54 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!8118 () Bool)

(declare-fun e!4597 () Bool)

(declare-fun e!4601 () Bool)

(assert (=> b!8118 (= e!4597 (and e!4601 mapRes!578))))

(declare-fun condMapEmpty!578 () Bool)

(declare-fun mapDefault!578 () ValueCell!185)

