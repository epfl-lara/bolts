; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3798 () Bool)

(assert start!3798)

(declare-fun mapNonEmpty!1198 () Bool)

(declare-fun mapRes!1198 () Bool)

(declare-fun tp!3718 () Bool)

(declare-fun e!17368 () Bool)

(assert (=> mapNonEmpty!1198 (= mapRes!1198 (and tp!3718 e!17368))))

(declare-datatypes ((V!1319 0))(
  ( (V!1320 (val!587 Int)) )
))
(declare-datatypes ((ValueCell!361 0))(
  ( (ValueCellFull!361 (v!1673 V!1319)) (EmptyCell!361) )
))
(declare-datatypes ((array!1473 0))(
  ( (array!1474 (arr!694 (Array (_ BitVec 32) ValueCell!361)) (size!795 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1473)

(declare-fun mapKey!1198 () (_ BitVec 32))

(declare-fun mapValue!1198 () ValueCell!361)

(declare-fun mapRest!1198 () (Array (_ BitVec 32) ValueCell!361))

(assert (=> mapNonEmpty!1198 (= (arr!694 _values!1501) (store mapRest!1198 mapKey!1198 mapValue!1198))))

(declare-fun b!26623 () Bool)

(declare-fun e!17370 () Bool)

(declare-fun e!17369 () Bool)

(assert (=> b!26623 (= e!17370 (and e!17369 mapRes!1198))))

(declare-fun condMapEmpty!1198 () Bool)

(declare-fun mapDefault!1198 () ValueCell!361)

