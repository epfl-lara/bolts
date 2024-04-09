; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95956 () Bool)

(assert start!95956)

(declare-fun b_free!22573 () Bool)

(declare-fun b_next!22573 () Bool)

(assert (=> start!95956 (= b_free!22573 (not b_next!22573))))

(declare-fun tp!79569 () Bool)

(declare-fun b_and!35839 () Bool)

(assert (=> start!95956 (= tp!79569 b_and!35839)))

(declare-fun b!1086287 () Bool)

(declare-fun res!724433 () Bool)

(declare-fun e!620579 () Bool)

(assert (=> b!1086287 (=> (not res!724433) (not e!620579))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70046 0))(
  ( (array!70047 (arr!33693 (Array (_ BitVec 32) (_ BitVec 64))) (size!34230 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70046)

(assert (=> b!1086287 (= res!724433 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34230 _keys!1070))))))

(declare-fun mapIsEmpty!41617 () Bool)

(declare-fun mapRes!41617 () Bool)

(assert (=> mapIsEmpty!41617 mapRes!41617))

(declare-fun b!1086289 () Bool)

(declare-fun res!724435 () Bool)

(assert (=> b!1086289 (=> (not res!724435) (not e!620579))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40561 0))(
  ( (V!40562 (val!13344 Int)) )
))
(declare-datatypes ((ValueCell!12578 0))(
  ( (ValueCellFull!12578 (v!15966 V!40561)) (EmptyCell!12578) )
))
(declare-datatypes ((array!70048 0))(
  ( (array!70049 (arr!33694 (Array (_ BitVec 32) ValueCell!12578)) (size!34231 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70048)

(assert (=> b!1086289 (= res!724435 (and (= (size!34231 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34230 _keys!1070) (size!34231 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1086290 () Bool)

(declare-fun e!620580 () Bool)

(declare-fun e!620578 () Bool)

(assert (=> b!1086290 (= e!620580 (and e!620578 mapRes!41617))))

(declare-fun condMapEmpty!41617 () Bool)

(declare-fun mapDefault!41617 () ValueCell!12578)

