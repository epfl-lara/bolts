; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95624 () Bool)

(assert start!95624)

(declare-fun b!1079803 () Bool)

(declare-fun e!617363 () Bool)

(declare-fun e!617365 () Bool)

(declare-fun mapRes!41119 () Bool)

(assert (=> b!1079803 (= e!617363 (and e!617365 mapRes!41119))))

(declare-fun condMapEmpty!41119 () Bool)

(declare-datatypes ((V!40117 0))(
  ( (V!40118 (val!13178 Int)) )
))
(declare-datatypes ((ValueCell!12412 0))(
  ( (ValueCellFull!12412 (v!15800 V!40117)) (EmptyCell!12412) )
))
(declare-datatypes ((array!69394 0))(
  ( (array!69395 (arr!33367 (Array (_ BitVec 32) ValueCell!12412)) (size!33904 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69394)

(declare-fun mapDefault!41119 () ValueCell!12412)

