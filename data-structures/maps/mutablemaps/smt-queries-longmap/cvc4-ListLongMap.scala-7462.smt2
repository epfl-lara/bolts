; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94720 () Bool)

(assert start!94720)

(declare-fun b_free!21953 () Bool)

(declare-fun b_next!21953 () Bool)

(assert (=> start!94720 (= b_free!21953 (not b_next!21953))))

(declare-fun tp!77315 () Bool)

(declare-fun b_and!34791 () Bool)

(assert (=> start!94720 (= tp!77315 b_and!34791)))

(declare-fun b!1070491 () Bool)

(declare-fun e!611139 () Bool)

(declare-fun e!611138 () Bool)

(declare-fun mapRes!40348 () Bool)

(assert (=> b!1070491 (= e!611139 (and e!611138 mapRes!40348))))

(declare-fun condMapEmpty!40348 () Bool)

(declare-datatypes ((V!39485 0))(
  ( (V!39486 (val!12932 Int)) )
))
(declare-datatypes ((ValueCell!12178 0))(
  ( (ValueCellFull!12178 (v!15549 V!39485)) (EmptyCell!12178) )
))
(declare-datatypes ((array!68466 0))(
  ( (array!68467 (arr!32926 (Array (_ BitVec 32) ValueCell!12178)) (size!33463 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68466)

(declare-fun mapDefault!40348 () ValueCell!12178)

