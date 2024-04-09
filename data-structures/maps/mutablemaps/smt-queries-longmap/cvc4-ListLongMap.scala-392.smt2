; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7396 () Bool)

(assert start!7396)

(declare-fun b!47473 () Bool)

(declare-fun res!27613 () Bool)

(declare-fun e!30399 () Bool)

(assert (=> b!47473 (=> (not res!27613) (not e!30399))))

(declare-datatypes ((List!1277 0))(
  ( (Nil!1274) (Cons!1273 (h!1853 (_ BitVec 64)) (t!4313 List!1277)) )
))
(declare-fun noDuplicate!38 (List!1277) Bool)

(assert (=> b!47473 (= res!27613 (noDuplicate!38 Nil!1274))))

(declare-fun b!47475 () Bool)

(declare-fun res!27612 () Bool)

(assert (=> b!47475 (=> (not res!27612) (not e!30399))))

(declare-datatypes ((array!3132 0))(
  ( (array!3133 (arr!1501 (Array (_ BitVec 32) (_ BitVec 64))) (size!1723 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3132)

(assert (=> b!47475 (= res!27612 (and (bvsle #b00000000000000000000000000000000 (size!1723 _keys!1940)) (bvslt (size!1723 _keys!1940) #b01111111111111111111111111111111)))))

(declare-fun b!47476 () Bool)

(declare-fun e!30401 () Bool)

(declare-fun contains!588 (List!1277 (_ BitVec 64)) Bool)

(assert (=> b!47476 (= e!30401 (contains!588 Nil!1274 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!2090 () Bool)

(declare-fun mapRes!2090 () Bool)

(declare-fun tp!6239 () Bool)

(declare-fun e!30397 () Bool)

(assert (=> mapNonEmpty!2090 (= mapRes!2090 (and tp!6239 e!30397))))

(declare-datatypes ((V!2443 0))(
  ( (V!2444 (val!1055 Int)) )
))
(declare-datatypes ((ValueCell!727 0))(
  ( (ValueCellFull!727 (v!2114 V!2443)) (EmptyCell!727) )
))
(declare-fun mapRest!2090 () (Array (_ BitVec 32) ValueCell!727))

(declare-fun mapValue!2090 () ValueCell!727)

(declare-datatypes ((array!3134 0))(
  ( (array!3135 (arr!1502 (Array (_ BitVec 32) ValueCell!727)) (size!1724 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3134)

(declare-fun mapKey!2090 () (_ BitVec 32))

(assert (=> mapNonEmpty!2090 (= (arr!1502 _values!1550) (store mapRest!2090 mapKey!2090 mapValue!2090))))

(declare-fun b!47477 () Bool)

(assert (=> b!47477 (= e!30399 e!30401)))

(declare-fun res!27611 () Bool)

(assert (=> b!47477 (=> res!27611 e!30401)))

(assert (=> b!47477 (= res!27611 (contains!588 Nil!1274 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!2090 () Bool)

(assert (=> mapIsEmpty!2090 mapRes!2090))

(declare-fun b!47478 () Bool)

(declare-fun e!30398 () Bool)

(declare-fun tp_is_empty!2033 () Bool)

(assert (=> b!47478 (= e!30398 tp_is_empty!2033)))

(declare-fun b!47479 () Bool)

(declare-fun res!27610 () Bool)

(assert (=> b!47479 (=> (not res!27610) (not e!30399))))

(declare-fun extraKeys!1471 () (_ BitVec 32))

(declare-fun mask!2458 () (_ BitVec 32))

(assert (=> b!47479 (= res!27610 (and (= (size!1724 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1723 _keys!1940) (size!1724 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011)))))

(declare-fun res!27609 () Bool)

(assert (=> start!7396 (=> (not res!27609) (not e!30399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7396 (= res!27609 (validMask!0 mask!2458))))

(assert (=> start!7396 e!30399))

(assert (=> start!7396 true))

(declare-fun e!30396 () Bool)

(declare-fun array_inv!860 (array!3134) Bool)

(assert (=> start!7396 (and (array_inv!860 _values!1550) e!30396)))

(declare-fun array_inv!861 (array!3132) Bool)

(assert (=> start!7396 (array_inv!861 _keys!1940)))

(declare-fun b!47474 () Bool)

(assert (=> b!47474 (= e!30396 (and e!30398 mapRes!2090))))

(declare-fun condMapEmpty!2090 () Bool)

(declare-fun mapDefault!2090 () ValueCell!727)

