; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108150 () Bool)

(assert start!108150)

(declare-fun b_free!27827 () Bool)

(declare-fun b_next!27827 () Bool)

(assert (=> start!108150 (= b_free!27827 (not b_next!27827))))

(declare-fun tp!98436 () Bool)

(declare-fun b_and!45893 () Bool)

(assert (=> start!108150 (= tp!98436 b_and!45893)))

(declare-fun res!848485 () Bool)

(declare-fun e!729083 () Bool)

(assert (=> start!108150 (=> (not res!848485) (not e!729083))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108150 (= res!848485 (validMask!0 mask!1805))))

(assert (=> start!108150 e!729083))

(assert (=> start!108150 true))

(assert (=> start!108150 tp!98436))

(declare-fun tp_is_empty!33377 () Bool)

(assert (=> start!108150 tp_is_empty!33377))

(declare-datatypes ((V!49605 0))(
  ( (V!49606 (val!16763 Int)) )
))
(declare-datatypes ((ValueCell!15790 0))(
  ( (ValueCellFull!15790 (v!19358 V!49605)) (EmptyCell!15790) )
))
(declare-datatypes ((array!83799 0))(
  ( (array!83800 (arr!40406 (Array (_ BitVec 32) ValueCell!15790)) (size!40957 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83799)

(declare-fun e!729085 () Bool)

(declare-fun array_inv!30667 (array!83799) Bool)

(assert (=> start!108150 (and (array_inv!30667 _values!1187) e!729085)))

(declare-datatypes ((array!83801 0))(
  ( (array!83802 (arr!40407 (Array (_ BitVec 32) (_ BitVec 64))) (size!40958 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83801)

(declare-fun array_inv!30668 (array!83801) Bool)

(assert (=> start!108150 (array_inv!30668 _keys!1427)))

(declare-fun b!1276656 () Bool)

(declare-fun e!729082 () Bool)

(assert (=> b!1276656 (= e!729082 tp_is_empty!33377)))

(declare-fun b!1276657 () Bool)

(declare-fun e!729086 () Bool)

(assert (=> b!1276657 (= e!729086 tp_is_empty!33377)))

(declare-fun b!1276658 () Bool)

(declare-fun mapRes!51596 () Bool)

(assert (=> b!1276658 (= e!729085 (and e!729082 mapRes!51596))))

(declare-fun condMapEmpty!51596 () Bool)

(declare-fun mapDefault!51596 () ValueCell!15790)

