; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7376 () Bool)

(assert start!7376)

(declare-fun b!47326 () Bool)

(declare-fun e!30296 () Bool)

(declare-datatypes ((List!1272 0))(
  ( (Nil!1269) (Cons!1268 (h!1848 (_ BitVec 64)) (t!4308 List!1272)) )
))
(declare-fun noDuplicate!33 (List!1272) Bool)

(assert (=> b!47326 (= e!30296 (not (noDuplicate!33 Nil!1269)))))

(declare-fun mapIsEmpty!2072 () Bool)

(declare-fun mapRes!2072 () Bool)

(assert (=> mapIsEmpty!2072 mapRes!2072))

(declare-fun b!47327 () Bool)

(declare-fun res!27522 () Bool)

(assert (=> b!47327 (=> (not res!27522) (not e!30296))))

(declare-datatypes ((array!3110 0))(
  ( (array!3111 (arr!1491 (Array (_ BitVec 32) (_ BitVec 64))) (size!1713 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3110)

(assert (=> b!47327 (= res!27522 (and (bvsle #b00000000000000000000000000000000 (size!1713 _keys!1940)) (bvslt (size!1713 _keys!1940) #b01111111111111111111111111111111)))))

(declare-fun b!47328 () Bool)

(declare-fun res!27520 () Bool)

(assert (=> b!47328 (=> (not res!27520) (not e!30296))))

(declare-fun extraKeys!1471 () (_ BitVec 32))

(declare-fun mask!2458 () (_ BitVec 32))

(declare-datatypes ((V!2431 0))(
  ( (V!2432 (val!1050 Int)) )
))
(declare-datatypes ((ValueCell!722 0))(
  ( (ValueCellFull!722 (v!2109 V!2431)) (EmptyCell!722) )
))
(declare-datatypes ((array!3112 0))(
  ( (array!3113 (arr!1492 (Array (_ BitVec 32) ValueCell!722)) (size!1714 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3112)

(assert (=> b!47328 (= res!27520 (and (= (size!1714 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1713 _keys!1940) (size!1714 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011)))))

(declare-fun b!47329 () Bool)

(declare-fun e!30294 () Bool)

(declare-fun tp_is_empty!2023 () Bool)

(assert (=> b!47329 (= e!30294 tp_is_empty!2023)))

(declare-fun b!47330 () Bool)

(declare-fun e!30293 () Bool)

(assert (=> b!47330 (= e!30293 tp_is_empty!2023)))

(declare-fun mapNonEmpty!2072 () Bool)

(declare-fun tp!6221 () Bool)

(assert (=> mapNonEmpty!2072 (= mapRes!2072 (and tp!6221 e!30293))))

(declare-fun mapValue!2072 () ValueCell!722)

(declare-fun mapKey!2072 () (_ BitVec 32))

(declare-fun mapRest!2072 () (Array (_ BitVec 32) ValueCell!722))

(assert (=> mapNonEmpty!2072 (= (arr!1492 _values!1550) (store mapRest!2072 mapKey!2072 mapValue!2072))))

(declare-fun b!47331 () Bool)

(declare-fun e!30292 () Bool)

(assert (=> b!47331 (= e!30292 (and e!30294 mapRes!2072))))

(declare-fun condMapEmpty!2072 () Bool)

(declare-fun mapDefault!2072 () ValueCell!722)

