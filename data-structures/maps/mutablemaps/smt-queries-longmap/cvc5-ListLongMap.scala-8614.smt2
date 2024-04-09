; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104986 () Bool)

(assert start!104986)

(declare-fun b_free!26719 () Bool)

(declare-fun b_next!26719 () Bool)

(assert (=> start!104986 (= b_free!26719 (not b_next!26719))))

(declare-fun tp!93654 () Bool)

(declare-fun b_and!44515 () Bool)

(assert (=> start!104986 (= tp!93654 b_and!44515)))

(declare-fun b!1250758 () Bool)

(declare-fun e!710157 () Bool)

(declare-fun e!710153 () Bool)

(declare-fun mapRes!49198 () Bool)

(assert (=> b!1250758 (= e!710157 (and e!710153 mapRes!49198))))

(declare-fun condMapEmpty!49198 () Bool)

(declare-datatypes ((V!47527 0))(
  ( (V!47528 (val!15873 Int)) )
))
(declare-datatypes ((ValueCell!15047 0))(
  ( (ValueCellFull!15047 (v!18570 V!47527)) (EmptyCell!15047) )
))
(declare-datatypes ((array!80891 0))(
  ( (array!80892 (arr!39006 (Array (_ BitVec 32) ValueCell!15047)) (size!39543 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80891)

(declare-fun mapDefault!49198 () ValueCell!15047)

