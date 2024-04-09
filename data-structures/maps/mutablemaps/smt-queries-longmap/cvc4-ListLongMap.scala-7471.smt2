; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94790 () Bool)

(assert start!94790)

(declare-fun b_free!22007 () Bool)

(declare-fun b_next!22007 () Bool)

(assert (=> start!94790 (= b_free!22007 (not b_next!22007))))

(declare-fun tp!77481 () Bool)

(declare-fun b_and!34855 () Bool)

(assert (=> start!94790 (= tp!77481 b_and!34855)))

(declare-fun mapIsEmpty!40432 () Bool)

(declare-fun mapRes!40432 () Bool)

(assert (=> mapIsEmpty!40432 mapRes!40432))

(declare-fun b!1071350 () Bool)

(declare-fun e!611776 () Bool)

(declare-fun e!611777 () Bool)

(assert (=> b!1071350 (= e!611776 (and e!611777 mapRes!40432))))

(declare-fun condMapEmpty!40432 () Bool)

(declare-datatypes ((V!39557 0))(
  ( (V!39558 (val!12959 Int)) )
))
(declare-datatypes ((ValueCell!12205 0))(
  ( (ValueCellFull!12205 (v!15576 V!39557)) (EmptyCell!12205) )
))
(declare-datatypes ((array!68566 0))(
  ( (array!68567 (arr!32975 (Array (_ BitVec 32) ValueCell!12205)) (size!33512 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68566)

(declare-fun mapDefault!40432 () ValueCell!12205)

