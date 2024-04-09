; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105926 () Bool)

(assert start!105926)

(declare-fun b_free!27431 () Bool)

(declare-fun b_next!27431 () Bool)

(assert (=> start!105926 (= b_free!27431 (not b_next!27431))))

(declare-fun tp!95825 () Bool)

(declare-fun b_and!45349 () Bool)

(assert (=> start!105926 (= tp!95825 b_and!45349)))

(declare-fun b!1261175 () Bool)

(declare-fun e!717804 () Bool)

(declare-fun e!717805 () Bool)

(declare-fun mapRes!50302 () Bool)

(assert (=> b!1261175 (= e!717804 (and e!717805 mapRes!50302))))

(declare-fun condMapEmpty!50302 () Bool)

(declare-datatypes ((V!48475 0))(
  ( (V!48476 (val!16229 Int)) )
))
(declare-datatypes ((ValueCell!15403 0))(
  ( (ValueCellFull!15403 (v!18933 V!48475)) (EmptyCell!15403) )
))
(declare-datatypes ((array!82267 0))(
  ( (array!82268 (arr!39682 (Array (_ BitVec 32) ValueCell!15403)) (size!40219 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82267)

(declare-fun mapDefault!50302 () ValueCell!15403)

