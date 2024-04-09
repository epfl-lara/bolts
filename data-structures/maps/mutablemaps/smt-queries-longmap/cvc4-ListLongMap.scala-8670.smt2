; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105436 () Bool)

(assert start!105436)

(declare-fun b_free!27059 () Bool)

(declare-fun b_next!27059 () Bool)

(assert (=> start!105436 (= b_free!27059 (not b_next!27059))))

(declare-fun tp!94692 () Bool)

(declare-fun b_and!44915 () Bool)

(assert (=> start!105436 (= tp!94692 b_and!44915)))

(declare-fun b!1255615 () Bool)

(declare-fun e!713689 () Bool)

(declare-fun e!713692 () Bool)

(declare-fun mapRes!49726 () Bool)

(assert (=> b!1255615 (= e!713689 (and e!713692 mapRes!49726))))

(declare-fun condMapEmpty!49726 () Bool)

(declare-datatypes ((V!47979 0))(
  ( (V!47980 (val!16043 Int)) )
))
(declare-datatypes ((ValueCell!15217 0))(
  ( (ValueCellFull!15217 (v!18743 V!47979)) (EmptyCell!15217) )
))
(declare-datatypes ((array!81557 0))(
  ( (array!81558 (arr!39333 (Array (_ BitVec 32) ValueCell!15217)) (size!39870 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81557)

(declare-fun mapDefault!49726 () ValueCell!15217)

