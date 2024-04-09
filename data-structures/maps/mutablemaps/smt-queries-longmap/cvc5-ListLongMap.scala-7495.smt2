; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94978 () Bool)

(assert start!94978)

(declare-fun b_free!22147 () Bool)

(declare-fun b_next!22147 () Bool)

(assert (=> start!94978 (= b_free!22147 (not b_next!22147))))

(declare-fun tp!77907 () Bool)

(declare-fun b_and!35019 () Bool)

(assert (=> start!94978 (= tp!77907 b_and!35019)))

(declare-fun b!1073439 () Bool)

(declare-fun e!613310 () Bool)

(declare-fun e!613308 () Bool)

(declare-fun mapRes!40648 () Bool)

(assert (=> b!1073439 (= e!613310 (and e!613308 mapRes!40648))))

(declare-fun condMapEmpty!40648 () Bool)

(declare-datatypes ((V!39745 0))(
  ( (V!39746 (val!13029 Int)) )
))
(declare-datatypes ((ValueCell!12275 0))(
  ( (ValueCellFull!12275 (v!15648 V!39745)) (EmptyCell!12275) )
))
(declare-datatypes ((array!68840 0))(
  ( (array!68841 (arr!33110 (Array (_ BitVec 32) ValueCell!12275)) (size!33647 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68840)

(declare-fun mapDefault!40648 () ValueCell!12275)

