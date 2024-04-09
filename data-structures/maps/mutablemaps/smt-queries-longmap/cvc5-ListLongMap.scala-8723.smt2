; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105846 () Bool)

(assert start!105846)

(declare-fun b_free!27373 () Bool)

(declare-fun b_next!27373 () Bool)

(assert (=> start!105846 (= b_free!27373 (not b_next!27373))))

(declare-fun tp!95648 () Bool)

(declare-fun b_and!45279 () Bool)

(assert (=> start!105846 (= tp!95648 b_and!45279)))

(declare-fun b!1260346 () Bool)

(declare-fun e!717216 () Bool)

(declare-fun e!717218 () Bool)

(declare-fun mapRes!50212 () Bool)

(assert (=> b!1260346 (= e!717216 (and e!717218 mapRes!50212))))

(declare-fun condMapEmpty!50212 () Bool)

(declare-datatypes ((V!48399 0))(
  ( (V!48400 (val!16200 Int)) )
))
(declare-datatypes ((ValueCell!15374 0))(
  ( (ValueCellFull!15374 (v!18903 V!48399)) (EmptyCell!15374) )
))
(declare-datatypes ((array!82157 0))(
  ( (array!82158 (arr!39628 (Array (_ BitVec 32) ValueCell!15374)) (size!40165 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82157)

(declare-fun mapDefault!50212 () ValueCell!15374)

