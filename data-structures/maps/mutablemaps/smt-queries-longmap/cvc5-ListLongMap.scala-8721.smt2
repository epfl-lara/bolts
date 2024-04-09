; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105834 () Bool)

(assert start!105834)

(declare-fun b_free!27361 () Bool)

(declare-fun b_next!27361 () Bool)

(assert (=> start!105834 (= b_free!27361 (not b_next!27361))))

(declare-fun tp!95613 () Bool)

(declare-fun b_and!45267 () Bool)

(assert (=> start!105834 (= tp!95613 b_and!45267)))

(declare-fun mapIsEmpty!50194 () Bool)

(declare-fun mapRes!50194 () Bool)

(assert (=> mapIsEmpty!50194 mapRes!50194))

(declare-fun b!1260184 () Bool)

(declare-fun e!717091 () Bool)

(declare-fun e!717090 () Bool)

(assert (=> b!1260184 (= e!717091 (and e!717090 mapRes!50194))))

(declare-fun condMapEmpty!50194 () Bool)

(declare-datatypes ((V!48383 0))(
  ( (V!48384 (val!16194 Int)) )
))
(declare-datatypes ((ValueCell!15368 0))(
  ( (ValueCellFull!15368 (v!18897 V!48383)) (EmptyCell!15368) )
))
(declare-datatypes ((array!82135 0))(
  ( (array!82136 (arr!39617 (Array (_ BitVec 32) ValueCell!15368)) (size!40154 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82135)

(declare-fun mapDefault!50194 () ValueCell!15368)

