; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7380 () Bool)

(assert start!7380)

(declare-fun b!47369 () Bool)

(declare-fun e!30326 () Bool)

(declare-datatypes ((List!1274 0))(
  ( (Nil!1271) (Cons!1270 (h!1850 (_ BitVec 64)) (t!4310 List!1274)) )
))
(declare-fun noDuplicate!35 (List!1274) Bool)

(assert (=> b!47369 (= e!30326 (not (noDuplicate!35 Nil!1271)))))

(declare-fun b!47370 () Bool)

(declare-fun res!27545 () Bool)

(assert (=> b!47370 (=> (not res!27545) (not e!30326))))

(declare-datatypes ((array!3118 0))(
  ( (array!3119 (arr!1495 (Array (_ BitVec 32) (_ BitVec 64))) (size!1717 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3118)

(declare-fun extraKeys!1471 () (_ BitVec 32))

(declare-fun mask!2458 () (_ BitVec 32))

(declare-datatypes ((V!2435 0))(
  ( (V!2436 (val!1052 Int)) )
))
(declare-datatypes ((ValueCell!724 0))(
  ( (ValueCellFull!724 (v!2111 V!2435)) (EmptyCell!724) )
))
(declare-datatypes ((array!3120 0))(
  ( (array!3121 (arr!1496 (Array (_ BitVec 32) ValueCell!724)) (size!1718 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3120)

(assert (=> b!47370 (= res!27545 (and (= (size!1718 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1717 _keys!1940) (size!1718 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011)))))

(declare-fun b!47371 () Bool)

(declare-fun e!30323 () Bool)

(declare-fun tp_is_empty!2027 () Bool)

(assert (=> b!47371 (= e!30323 tp_is_empty!2027)))

(declare-fun mapNonEmpty!2078 () Bool)

(declare-fun mapRes!2078 () Bool)

(declare-fun tp!6227 () Bool)

(declare-fun e!30322 () Bool)

(assert (=> mapNonEmpty!2078 (= mapRes!2078 (and tp!6227 e!30322))))

(declare-fun mapRest!2078 () (Array (_ BitVec 32) ValueCell!724))

(declare-fun mapValue!2078 () ValueCell!724)

(declare-fun mapKey!2078 () (_ BitVec 32))

(assert (=> mapNonEmpty!2078 (= (arr!1496 _values!1550) (store mapRest!2078 mapKey!2078 mapValue!2078))))

(declare-fun b!47372 () Bool)

(assert (=> b!47372 (= e!30322 tp_is_empty!2027)))

(declare-fun mapIsEmpty!2078 () Bool)

(assert (=> mapIsEmpty!2078 mapRes!2078))

(declare-fun b!47373 () Bool)

(declare-fun res!27547 () Bool)

(assert (=> b!47373 (=> (not res!27547) (not e!30326))))

(assert (=> b!47373 (= res!27547 (and (bvsle #b00000000000000000000000000000000 (size!1717 _keys!1940)) (bvslt (size!1717 _keys!1940) #b01111111111111111111111111111111)))))

(declare-fun b!47374 () Bool)

(declare-fun res!27544 () Bool)

(assert (=> b!47374 (=> (not res!27544) (not e!30326))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3118 (_ BitVec 32)) Bool)

(assert (=> b!47374 (= res!27544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458))))

(declare-fun res!27546 () Bool)

(assert (=> start!7380 (=> (not res!27546) (not e!30326))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7380 (= res!27546 (validMask!0 mask!2458))))

(assert (=> start!7380 e!30326))

(assert (=> start!7380 true))

(declare-fun e!30324 () Bool)

(declare-fun array_inv!854 (array!3120) Bool)

(assert (=> start!7380 (and (array_inv!854 _values!1550) e!30324)))

(declare-fun array_inv!855 (array!3118) Bool)

(assert (=> start!7380 (array_inv!855 _keys!1940)))

(declare-fun b!47368 () Bool)

(assert (=> b!47368 (= e!30324 (and e!30323 mapRes!2078))))

(declare-fun condMapEmpty!2078 () Bool)

(declare-fun mapDefault!2078 () ValueCell!724)

