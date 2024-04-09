; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105108 () Bool)

(assert start!105108)

(declare-fun b_free!26819 () Bool)

(declare-fun b_next!26819 () Bool)

(assert (=> start!105108 (= b_free!26819 (not b_next!26819))))

(declare-fun tp!93957 () Bool)

(declare-fun b_and!44625 () Bool)

(assert (=> start!105108 (= tp!93957 b_and!44625)))

(declare-fun mapIsEmpty!49351 () Bool)

(declare-fun mapRes!49351 () Bool)

(assert (=> mapIsEmpty!49351 mapRes!49351))

(declare-fun b!1252123 () Bool)

(declare-fun e!711163 () Bool)

(declare-fun e!711164 () Bool)

(assert (=> b!1252123 (= e!711163 (and e!711164 mapRes!49351))))

(declare-fun condMapEmpty!49351 () Bool)

(declare-datatypes ((V!47659 0))(
  ( (V!47660 (val!15923 Int)) )
))
(declare-datatypes ((ValueCell!15097 0))(
  ( (ValueCellFull!15097 (v!18621 V!47659)) (EmptyCell!15097) )
))
(declare-datatypes ((array!81085 0))(
  ( (array!81086 (arr!39102 (Array (_ BitVec 32) ValueCell!15097)) (size!39639 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81085)

(declare-fun mapDefault!49351 () ValueCell!15097)

