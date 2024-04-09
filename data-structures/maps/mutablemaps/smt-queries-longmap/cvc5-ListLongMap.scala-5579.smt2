; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73286 () Bool)

(assert start!73286)

(declare-fun b_free!14173 () Bool)

(declare-fun b_next!14173 () Bool)

(assert (=> start!73286 (= b_free!14173 (not b_next!14173))))

(declare-fun tp!50023 () Bool)

(declare-fun b_and!23523 () Bool)

(assert (=> start!73286 (= tp!50023 b_and!23523)))

(declare-fun mapNonEmpty!26063 () Bool)

(declare-fun mapRes!26063 () Bool)

(declare-fun tp!50024 () Bool)

(declare-fun e!476289 () Bool)

(assert (=> mapNonEmpty!26063 (= mapRes!26063 (and tp!50024 e!476289))))

(declare-datatypes ((V!26793 0))(
  ( (V!26794 (val!8202 Int)) )
))
(declare-datatypes ((ValueCell!7715 0))(
  ( (ValueCellFull!7715 (v!10623 V!26793)) (EmptyCell!7715) )
))
(declare-fun mapValue!26063 () ValueCell!7715)

(declare-fun mapKey!26063 () (_ BitVec 32))

(declare-datatypes ((array!48798 0))(
  ( (array!48799 (arr!23426 (Array (_ BitVec 32) ValueCell!7715)) (size!23867 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48798)

(declare-fun mapRest!26063 () (Array (_ BitVec 32) ValueCell!7715))

(assert (=> mapNonEmpty!26063 (= (arr!23426 _values!688) (store mapRest!26063 mapKey!26063 mapValue!26063))))

(declare-fun res!580136 () Bool)

(declare-fun e!476291 () Bool)

(assert (=> start!73286 (=> (not res!580136) (not e!476291))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48800 0))(
  ( (array!48801 (arr!23427 (Array (_ BitVec 32) (_ BitVec 64))) (size!23868 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48800)

(assert (=> start!73286 (= res!580136 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23868 _keys!868))))))

(assert (=> start!73286 e!476291))

(declare-fun tp_is_empty!16309 () Bool)

(assert (=> start!73286 tp_is_empty!16309))

(assert (=> start!73286 true))

(assert (=> start!73286 tp!50023))

(declare-fun array_inv!18548 (array!48800) Bool)

(assert (=> start!73286 (array_inv!18548 _keys!868)))

(declare-fun e!476288 () Bool)

(declare-fun array_inv!18549 (array!48798) Bool)

(assert (=> start!73286 (and (array_inv!18549 _values!688) e!476288)))

(declare-fun b!854070 () Bool)

(declare-fun e!476287 () Bool)

(assert (=> b!854070 (= e!476288 (and e!476287 mapRes!26063))))

(declare-fun condMapEmpty!26063 () Bool)

(declare-fun mapDefault!26063 () ValueCell!7715)

