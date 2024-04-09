; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95632 () Bool)

(assert start!95632)

(declare-fun b_free!22249 () Bool)

(declare-fun b_next!22249 () Bool)

(assert (=> start!95632 (= b_free!22249 (not b_next!22249))))

(declare-fun tp!78597 () Bool)

(declare-fun b_and!35245 () Bool)

(assert (=> start!95632 (= tp!78597 b_and!35245)))

(declare-fun b!1079947 () Bool)

(declare-fun res!719822 () Bool)

(declare-fun e!617435 () Bool)

(assert (=> b!1079947 (=> (not res!719822) (not e!617435))))

(declare-datatypes ((array!69408 0))(
  ( (array!69409 (arr!33374 (Array (_ BitVec 32) (_ BitVec 64))) (size!33911 (_ BitVec 32))) )
))
(declare-fun lt!478886 () array!69408)

(declare-datatypes ((List!23387 0))(
  ( (Nil!23384) (Cons!23383 (h!24592 (_ BitVec 64)) (t!32753 List!23387)) )
))
(declare-fun arrayNoDuplicates!0 (array!69408 (_ BitVec 32) List!23387) Bool)

(assert (=> b!1079947 (= res!719822 (arrayNoDuplicates!0 lt!478886 #b00000000000000000000000000000000 Nil!23384))))

(declare-fun b!1079949 () Bool)

(declare-fun e!617436 () Bool)

(declare-fun e!617437 () Bool)

(declare-fun mapRes!41131 () Bool)

(assert (=> b!1079949 (= e!617436 (and e!617437 mapRes!41131))))

(declare-fun condMapEmpty!41131 () Bool)

(declare-datatypes ((V!40129 0))(
  ( (V!40130 (val!13182 Int)) )
))
(declare-datatypes ((ValueCell!12416 0))(
  ( (ValueCellFull!12416 (v!15804 V!40129)) (EmptyCell!12416) )
))
(declare-datatypes ((array!69410 0))(
  ( (array!69411 (arr!33375 (Array (_ BitVec 32) ValueCell!12416)) (size!33912 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69410)

(declare-fun mapDefault!41131 () ValueCell!12416)

