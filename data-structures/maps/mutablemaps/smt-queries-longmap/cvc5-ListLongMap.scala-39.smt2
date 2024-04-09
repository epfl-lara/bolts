; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!706 () Bool)

(assert start!706)

(declare-fun b_free!139 () Bool)

(declare-fun b_next!139 () Bool)

(assert (=> start!706 (= b_free!139 (not b_next!139))))

(declare-fun tp!641 () Bool)

(declare-fun b_and!281 () Bool)

(assert (=> start!706 (= tp!641 b_and!281)))

(declare-fun mapNonEmpty!290 () Bool)

(declare-fun mapRes!290 () Bool)

(declare-fun tp!640 () Bool)

(declare-fun e!2535 () Bool)

(assert (=> mapNonEmpty!290 (= mapRes!290 (and tp!640 e!2535))))

(declare-datatypes ((V!467 0))(
  ( (V!468 (val!114 Int)) )
))
(declare-datatypes ((ValueCell!92 0))(
  ( (ValueCellFull!92 (v!1203 V!467)) (EmptyCell!92) )
))
(declare-fun mapValue!290 () ValueCell!92)

(declare-datatypes ((array!367 0))(
  ( (array!368 (arr!174 (Array (_ BitVec 32) ValueCell!92)) (size!236 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!367)

(declare-fun mapRest!290 () (Array (_ BitVec 32) ValueCell!92))

(declare-fun mapKey!290 () (_ BitVec 32))

(assert (=> mapNonEmpty!290 (= (arr!174 _values!1492) (store mapRest!290 mapKey!290 mapValue!290))))

(declare-fun b!4751 () Bool)

(declare-fun res!5875 () Bool)

(declare-fun e!2532 () Bool)

(assert (=> b!4751 (=> (not res!5875) (not e!2532))))

(declare-datatypes ((array!369 0))(
  ( (array!370 (arr!175 (Array (_ BitVec 32) (_ BitVec 64))) (size!237 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!369)

(declare-datatypes ((List!112 0))(
  ( (Nil!109) (Cons!108 (h!674 (_ BitVec 64)) (t!2243 List!112)) )
))
(declare-fun arrayNoDuplicates!0 (array!369 (_ BitVec 32) List!112) Bool)

(assert (=> b!4751 (= res!5875 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!109))))

(declare-fun res!5873 () Bool)

(assert (=> start!706 (=> (not res!5873) (not e!2532))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!706 (= res!5873 (validMask!0 mask!2250))))

(assert (=> start!706 e!2532))

(assert (=> start!706 tp!641))

(assert (=> start!706 true))

(declare-fun e!2533 () Bool)

(declare-fun array_inv!121 (array!367) Bool)

(assert (=> start!706 (and (array_inv!121 _values!1492) e!2533)))

(declare-fun tp_is_empty!217 () Bool)

(assert (=> start!706 tp_is_empty!217))

(declare-fun array_inv!122 (array!369) Bool)

(assert (=> start!706 (array_inv!122 _keys!1806)))

(declare-fun b!4752 () Bool)

(declare-fun e!2537 () Bool)

(assert (=> b!4752 (= e!2537 tp_is_empty!217)))

(declare-fun b!4753 () Bool)

(declare-fun e!2534 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!4753 (= e!2534 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4754 () Bool)

(assert (=> b!4754 (= e!2532 (not true))))

(assert (=> b!4754 e!2534))

(declare-fun c!281 () Bool)

(assert (=> b!4754 (= c!281 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((Unit!43 0))(
  ( (Unit!44) )
))
(declare-fun lt!789 () Unit!43)

(declare-fun minValue!1434 () V!467)

(declare-fun zeroValue!1434 () V!467)

(declare-fun lemmaKeyInListMapIsInArray!9 (array!369 array!367 (_ BitVec 32) (_ BitVec 32) V!467 V!467 (_ BitVec 64) Int) Unit!43)

(assert (=> b!4754 (= lt!789 (lemmaKeyInListMapIsInArray!9 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!4755 () Bool)

(assert (=> b!4755 (= e!2533 (and e!2537 mapRes!290))))

(declare-fun condMapEmpty!290 () Bool)

(declare-fun mapDefault!290 () ValueCell!92)

