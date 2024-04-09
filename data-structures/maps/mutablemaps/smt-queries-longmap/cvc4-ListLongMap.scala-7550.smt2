; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95660 () Bool)

(assert start!95660)

(declare-fun b_free!22277 () Bool)

(declare-fun b_next!22277 () Bool)

(assert (=> start!95660 (= b_free!22277 (not b_next!22277))))

(declare-fun tp!78680 () Bool)

(declare-fun b_and!35273 () Bool)

(assert (=> start!95660 (= tp!78680 b_and!35273)))

(declare-fun b!1080451 () Bool)

(declare-fun res!720203 () Bool)

(declare-fun e!617687 () Bool)

(assert (=> b!1080451 (=> (not res!720203) (not e!617687))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080451 (= res!720203 (validKeyInArray!0 k!904))))

(declare-fun b!1080452 () Bool)

(declare-fun res!720198 () Bool)

(assert (=> b!1080452 (=> (not res!720198) (not e!617687))))

(declare-datatypes ((array!69464 0))(
  ( (array!69465 (arr!33402 (Array (_ BitVec 32) (_ BitVec 64))) (size!33939 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69464)

(declare-datatypes ((List!23406 0))(
  ( (Nil!23403) (Cons!23402 (h!24611 (_ BitVec 64)) (t!32772 List!23406)) )
))
(declare-fun arrayNoDuplicates!0 (array!69464 (_ BitVec 32) List!23406) Bool)

(assert (=> b!1080452 (= res!720198 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23403))))

(declare-fun b!1080454 () Bool)

(declare-fun e!617684 () Bool)

(declare-fun e!617689 () Bool)

(declare-fun mapRes!41173 () Bool)

(assert (=> b!1080454 (= e!617684 (and e!617689 mapRes!41173))))

(declare-fun condMapEmpty!41173 () Bool)

(declare-datatypes ((V!40165 0))(
  ( (V!40166 (val!13196 Int)) )
))
(declare-datatypes ((ValueCell!12430 0))(
  ( (ValueCellFull!12430 (v!15818 V!40165)) (EmptyCell!12430) )
))
(declare-datatypes ((array!69466 0))(
  ( (array!69467 (arr!33403 (Array (_ BitVec 32) ValueCell!12430)) (size!33940 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69466)

(declare-fun mapDefault!41173 () ValueCell!12430)

