; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95550 () Bool)

(assert start!95550)

(declare-fun b!1078709 () Bool)

(declare-fun e!616801 () Bool)

(declare-fun tp_is_empty!26185 () Bool)

(assert (=> b!1078709 (= e!616801 tp_is_empty!26185)))

(declare-fun b!1078710 () Bool)

(declare-fun e!616798 () Bool)

(assert (=> b!1078710 (= e!616798 tp_is_empty!26185)))

(declare-fun b!1078711 () Bool)

(declare-fun e!616799 () Bool)

(declare-fun mapRes!41029 () Bool)

(assert (=> b!1078711 (= e!616799 (and e!616798 mapRes!41029))))

(declare-fun condMapEmpty!41029 () Bool)

(declare-datatypes ((V!40041 0))(
  ( (V!40042 (val!13149 Int)) )
))
(declare-datatypes ((ValueCell!12383 0))(
  ( (ValueCellFull!12383 (v!15771 V!40041)) (EmptyCell!12383) )
))
(declare-datatypes ((array!69282 0))(
  ( (array!69283 (arr!33312 (Array (_ BitVec 32) ValueCell!12383)) (size!33849 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69282)

(declare-fun mapDefault!41029 () ValueCell!12383)

