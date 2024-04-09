; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73914 () Bool)

(assert start!73914)

(declare-fun b_free!14801 () Bool)

(declare-fun b_next!14801 () Bool)

(assert (=> start!73914 (= b_free!14801 (not b_next!14801))))

(declare-fun tp!51907 () Bool)

(declare-fun b_and!24571 () Bool)

(assert (=> start!73914 (= tp!51907 b_and!24571)))

(declare-fun res!589843 () Bool)

(declare-fun e!483459 () Bool)

(assert (=> start!73914 (=> (not res!589843) (not e!483459))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50012 0))(
  ( (array!50013 (arr!24033 (Array (_ BitVec 32) (_ BitVec 64))) (size!24474 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50012)

(assert (=> start!73914 (= res!589843 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24474 _keys!868))))))

(assert (=> start!73914 e!483459))

(declare-fun tp_is_empty!16937 () Bool)

(assert (=> start!73914 tp_is_empty!16937))

(assert (=> start!73914 true))

(assert (=> start!73914 tp!51907))

(declare-fun array_inv!18968 (array!50012) Bool)

(assert (=> start!73914 (array_inv!18968 _keys!868)))

(declare-datatypes ((V!27629 0))(
  ( (V!27630 (val!8516 Int)) )
))
(declare-datatypes ((ValueCell!8029 0))(
  ( (ValueCellFull!8029 (v!10937 V!27629)) (EmptyCell!8029) )
))
(declare-datatypes ((array!50014 0))(
  ( (array!50015 (arr!24034 (Array (_ BitVec 32) ValueCell!8029)) (size!24475 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50014)

(declare-fun e!483458 () Bool)

(declare-fun array_inv!18969 (array!50014) Bool)

(assert (=> start!73914 (and (array_inv!18969 _values!688) e!483458)))

(declare-fun b!867921 () Bool)

(declare-fun e!483457 () Bool)

(declare-fun mapRes!27005 () Bool)

(assert (=> b!867921 (= e!483458 (and e!483457 mapRes!27005))))

(declare-fun condMapEmpty!27005 () Bool)

(declare-fun mapDefault!27005 () ValueCell!8029)

