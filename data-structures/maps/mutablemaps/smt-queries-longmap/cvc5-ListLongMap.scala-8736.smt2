; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105946 () Bool)

(assert start!105946)

(declare-fun b_free!27451 () Bool)

(declare-fun b_next!27451 () Bool)

(assert (=> start!105946 (= b_free!27451 (not b_next!27451))))

(declare-fun tp!95886 () Bool)

(declare-fun b_and!45369 () Bool)

(assert (=> start!105946 (= tp!95886 b_and!45369)))

(declare-fun b!1261385 () Bool)

(declare-fun e!717953 () Bool)

(declare-fun e!717952 () Bool)

(declare-fun mapRes!50332 () Bool)

(assert (=> b!1261385 (= e!717953 (and e!717952 mapRes!50332))))

(declare-fun condMapEmpty!50332 () Bool)

(declare-datatypes ((V!48503 0))(
  ( (V!48504 (val!16239 Int)) )
))
(declare-datatypes ((ValueCell!15413 0))(
  ( (ValueCellFull!15413 (v!18943 V!48503)) (EmptyCell!15413) )
))
(declare-datatypes ((array!82305 0))(
  ( (array!82306 (arr!39701 (Array (_ BitVec 32) ValueCell!15413)) (size!40238 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82305)

(declare-fun mapDefault!50332 () ValueCell!15413)

