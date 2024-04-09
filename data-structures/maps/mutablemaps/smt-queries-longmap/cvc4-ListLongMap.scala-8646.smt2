; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105234 () Bool)

(assert start!105234)

(declare-fun b_free!26915 () Bool)

(declare-fun b_next!26915 () Bool)

(assert (=> start!105234 (= b_free!26915 (not b_next!26915))))

(declare-fun tp!94250 () Bool)

(declare-fun b_and!44739 () Bool)

(assert (=> start!105234 (= tp!94250 b_and!44739)))

(declare-fun b!1253507 () Bool)

(declare-fun e!712174 () Bool)

(declare-fun e!712173 () Bool)

(declare-fun mapRes!49501 () Bool)

(assert (=> b!1253507 (= e!712174 (and e!712173 mapRes!49501))))

(declare-fun condMapEmpty!49501 () Bool)

(declare-datatypes ((V!47787 0))(
  ( (V!47788 (val!15971 Int)) )
))
(declare-datatypes ((ValueCell!15145 0))(
  ( (ValueCellFull!15145 (v!18669 V!47787)) (EmptyCell!15145) )
))
(declare-datatypes ((array!81275 0))(
  ( (array!81276 (arr!39195 (Array (_ BitVec 32) ValueCell!15145)) (size!39732 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81275)

(declare-fun mapDefault!49501 () ValueCell!15145)

