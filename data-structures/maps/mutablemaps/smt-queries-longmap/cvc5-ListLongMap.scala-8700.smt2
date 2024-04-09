; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105670 () Bool)

(assert start!105670)

(declare-fun b_free!27235 () Bool)

(declare-fun b_next!27235 () Bool)

(assert (=> start!105670 (= b_free!27235 (not b_next!27235))))

(declare-fun tp!95229 () Bool)

(declare-fun b_and!45119 () Bool)

(assert (=> start!105670 (= tp!95229 b_and!45119)))

(declare-fun b!1258199 () Bool)

(declare-fun e!715606 () Bool)

(declare-fun e!715604 () Bool)

(declare-fun mapRes!49999 () Bool)

(assert (=> b!1258199 (= e!715606 (and e!715604 mapRes!49999))))

(declare-fun condMapEmpty!49999 () Bool)

(declare-datatypes ((V!48215 0))(
  ( (V!48216 (val!16131 Int)) )
))
(declare-datatypes ((ValueCell!15305 0))(
  ( (ValueCellFull!15305 (v!18833 V!48215)) (EmptyCell!15305) )
))
(declare-datatypes ((array!81897 0))(
  ( (array!81898 (arr!39500 (Array (_ BitVec 32) ValueCell!15305)) (size!40037 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81897)

(declare-fun mapDefault!49999 () ValueCell!15305)

