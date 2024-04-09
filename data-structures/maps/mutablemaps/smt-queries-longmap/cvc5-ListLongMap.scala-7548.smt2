; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95644 () Bool)

(assert start!95644)

(declare-fun b_free!22261 () Bool)

(declare-fun b_next!22261 () Bool)

(assert (=> start!95644 (= b_free!22261 (not b_next!22261))))

(declare-fun tp!78632 () Bool)

(declare-fun b_and!35257 () Bool)

(assert (=> start!95644 (= tp!78632 b_and!35257)))

(declare-fun res!719986 () Bool)

(declare-fun e!617542 () Bool)

(assert (=> start!95644 (=> (not res!719986) (not e!617542))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95644 (= res!719986 (validMask!0 mask!1414))))

(assert (=> start!95644 e!617542))

(assert (=> start!95644 tp!78632))

(assert (=> start!95644 true))

(declare-fun tp_is_empty!26263 () Bool)

(assert (=> start!95644 tp_is_empty!26263))

(declare-datatypes ((array!69432 0))(
  ( (array!69433 (arr!33386 (Array (_ BitVec 32) (_ BitVec 64))) (size!33923 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69432)

(declare-fun array_inv!25640 (array!69432) Bool)

(assert (=> start!95644 (array_inv!25640 _keys!1070)))

(declare-datatypes ((V!40145 0))(
  ( (V!40146 (val!13188 Int)) )
))
(declare-datatypes ((ValueCell!12422 0))(
  ( (ValueCellFull!12422 (v!15810 V!40145)) (EmptyCell!12422) )
))
(declare-datatypes ((array!69434 0))(
  ( (array!69435 (arr!33387 (Array (_ BitVec 32) ValueCell!12422)) (size!33924 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69434)

(declare-fun e!617545 () Bool)

(declare-fun array_inv!25641 (array!69434) Bool)

(assert (=> start!95644 (and (array_inv!25641 _values!874) e!617545)))

(declare-fun b!1080163 () Bool)

(declare-fun e!617544 () Bool)

(assert (=> b!1080163 (= e!617544 tp_is_empty!26263)))

(declare-fun b!1080164 () Bool)

(declare-fun res!719979 () Bool)

(assert (=> b!1080164 (=> (not res!719979) (not e!617542))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080164 (= res!719979 (validKeyInArray!0 k!904))))

(declare-fun b!1080165 () Bool)

(declare-fun mapRes!41149 () Bool)

(assert (=> b!1080165 (= e!617545 (and e!617544 mapRes!41149))))

(declare-fun condMapEmpty!41149 () Bool)

(declare-fun mapDefault!41149 () ValueCell!12422)

