; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104928 () Bool)

(assert start!104928)

(declare-fun b_free!26683 () Bool)

(declare-fun b_next!26683 () Bool)

(assert (=> start!104928 (= b_free!26683 (not b_next!26683))))

(declare-fun tp!93543 () Bool)

(declare-fun b_and!44469 () Bool)

(assert (=> start!104928 (= tp!93543 b_and!44469)))

(declare-fun b!1250115 () Bool)

(declare-fun e!709677 () Bool)

(declare-fun e!709676 () Bool)

(declare-fun mapRes!49141 () Bool)

(assert (=> b!1250115 (= e!709677 (and e!709676 mapRes!49141))))

(declare-fun condMapEmpty!49141 () Bool)

(declare-datatypes ((V!47479 0))(
  ( (V!47480 (val!15855 Int)) )
))
(declare-datatypes ((ValueCell!15029 0))(
  ( (ValueCellFull!15029 (v!18551 V!47479)) (EmptyCell!15029) )
))
(declare-datatypes ((array!80823 0))(
  ( (array!80824 (arr!38973 (Array (_ BitVec 32) ValueCell!15029)) (size!39510 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80823)

(declare-fun mapDefault!49141 () ValueCell!15029)

