; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!886 () Bool)

(assert start!886)

(declare-fun b_free!259 () Bool)

(declare-fun b_next!259 () Bool)

(assert (=> start!886 (= b_free!259 (not b_next!259))))

(declare-fun tp!1009 () Bool)

(declare-fun b_and!407 () Bool)

(assert (=> start!886 (= tp!1009 b_and!407)))

(declare-fun b!7337 () Bool)

(declare-fun e!4074 () Bool)

(assert (=> b!7337 (= e!4074 (not true))))

(declare-fun e!4073 () Bool)

(assert (=> b!7337 e!4073))

(declare-fun c!551 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(assert (=> b!7337 (= c!551 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!627 0))(
  ( (V!628 (val!174 Int)) )
))
(declare-datatypes ((ValueCell!152 0))(
  ( (ValueCellFull!152 (v!1266 V!627)) (EmptyCell!152) )
))
(declare-datatypes ((array!609 0))(
  ( (array!610 (arr!292 (Array (_ BitVec 32) ValueCell!152)) (size!354 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!609)

(declare-datatypes ((array!611 0))(
  ( (array!612 (arr!293 (Array (_ BitVec 32) (_ BitVec 64))) (size!355 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!611)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-datatypes ((Unit!137 0))(
  ( (Unit!138) )
))
(declare-fun lt!1527 () Unit!137)

(declare-fun zeroValue!1434 () V!627)

(declare-fun minValue!1434 () V!627)

(declare-fun lemmaKeyInListMapIsInArray!49 (array!611 array!609 (_ BitVec 32) (_ BitVec 32) V!627 V!627 (_ BitVec 64) Int) Unit!137)

(assert (=> b!7337 (= lt!1527 (lemmaKeyInListMapIsInArray!49 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!7338 () Bool)

(assert (=> b!7338 (= e!4073 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!7339 () Bool)

(declare-fun e!4072 () Bool)

(declare-fun tp_is_empty!337 () Bool)

(assert (=> b!7339 (= e!4072 tp_is_empty!337)))

(declare-fun b!7340 () Bool)

(declare-fun e!4076 () Bool)

(assert (=> b!7340 (= e!4076 tp_is_empty!337)))

(declare-fun b!7341 () Bool)

(declare-fun res!7353 () Bool)

(assert (=> b!7341 (=> (not res!7353) (not e!4074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!611 (_ BitVec 32)) Bool)

(assert (=> b!7341 (= res!7353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!7342 () Bool)

(declare-fun res!7349 () Bool)

(assert (=> b!7342 (=> (not res!7349) (not e!4074))))

(declare-datatypes ((List!197 0))(
  ( (Nil!194) (Cons!193 (h!759 (_ BitVec 64)) (t!2334 List!197)) )
))
(declare-fun arrayNoDuplicates!0 (array!611 (_ BitVec 32) List!197) Bool)

(assert (=> b!7342 (= res!7349 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!194))))

(declare-fun b!7343 () Bool)

(declare-fun res!7352 () Bool)

(assert (=> b!7343 (=> (not res!7352) (not e!4074))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!7343 (= res!7352 (validKeyInArray!0 k!1278))))

(declare-fun res!7354 () Bool)

(assert (=> start!886 (=> (not res!7354) (not e!4074))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!886 (= res!7354 (validMask!0 mask!2250))))

(assert (=> start!886 e!4074))

(assert (=> start!886 tp!1009))

(assert (=> start!886 true))

(declare-fun e!4075 () Bool)

(declare-fun array_inv!215 (array!609) Bool)

(assert (=> start!886 (and (array_inv!215 _values!1492) e!4075)))

(assert (=> start!886 tp_is_empty!337))

(declare-fun array_inv!216 (array!611) Bool)

(assert (=> start!886 (array_inv!216 _keys!1806)))

(declare-fun mapNonEmpty!479 () Bool)

(declare-fun mapRes!479 () Bool)

(declare-fun tp!1010 () Bool)

(assert (=> mapNonEmpty!479 (= mapRes!479 (and tp!1010 e!4072))))

(declare-fun mapRest!479 () (Array (_ BitVec 32) ValueCell!152))

(declare-fun mapValue!479 () ValueCell!152)

(declare-fun mapKey!479 () (_ BitVec 32))

(assert (=> mapNonEmpty!479 (= (arr!292 _values!1492) (store mapRest!479 mapKey!479 mapValue!479))))

(declare-fun b!7344 () Bool)

(assert (=> b!7344 (= e!4075 (and e!4076 mapRes!479))))

(declare-fun condMapEmpty!479 () Bool)

(declare-fun mapDefault!479 () ValueCell!152)

