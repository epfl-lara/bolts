; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73944 () Bool)

(assert start!73944)

(declare-fun b_free!14831 () Bool)

(declare-fun b_next!14831 () Bool)

(assert (=> start!73944 (= b_free!14831 (not b_next!14831))))

(declare-fun tp!51997 () Bool)

(declare-fun b_and!24601 () Bool)

(assert (=> start!73944 (= tp!51997 b_and!24601)))

(declare-fun b!868461 () Bool)

(declare-fun res!590247 () Bool)

(declare-fun e!483727 () Bool)

(assert (=> b!868461 (=> (not res!590247) (not e!483727))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50068 0))(
  ( (array!50069 (arr!24061 (Array (_ BitVec 32) (_ BitVec 64))) (size!24502 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50068)

(declare-datatypes ((V!27669 0))(
  ( (V!27670 (val!8531 Int)) )
))
(declare-datatypes ((ValueCell!8044 0))(
  ( (ValueCellFull!8044 (v!10952 V!27669)) (EmptyCell!8044) )
))
(declare-datatypes ((array!50070 0))(
  ( (array!50071 (arr!24062 (Array (_ BitVec 32) ValueCell!8044)) (size!24503 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50070)

(assert (=> b!868461 (= res!590247 (and (= (size!24503 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24502 _keys!868) (size!24503 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!590251 () Bool)

(assert (=> start!73944 (=> (not res!590251) (not e!483727))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73944 (= res!590251 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24502 _keys!868))))))

(assert (=> start!73944 e!483727))

(declare-fun tp_is_empty!16967 () Bool)

(assert (=> start!73944 tp_is_empty!16967))

(assert (=> start!73944 true))

(assert (=> start!73944 tp!51997))

(declare-fun array_inv!18984 (array!50068) Bool)

(assert (=> start!73944 (array_inv!18984 _keys!868)))

(declare-fun e!483725 () Bool)

(declare-fun array_inv!18985 (array!50070) Bool)

(assert (=> start!73944 (and (array_inv!18985 _values!688) e!483725)))

(declare-fun b!868462 () Bool)

(declare-fun res!590248 () Bool)

(assert (=> b!868462 (=> (not res!590248) (not e!483727))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!868462 (= res!590248 (and (= (select (arr!24061 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!868463 () Bool)

(declare-fun res!590253 () Bool)

(assert (=> b!868463 (=> (not res!590253) (not e!483727))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50068 (_ BitVec 32)) Bool)

(assert (=> b!868463 (= res!590253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!868464 () Bool)

(declare-fun e!483724 () Bool)

(declare-fun mapRes!27050 () Bool)

(assert (=> b!868464 (= e!483725 (and e!483724 mapRes!27050))))

(declare-fun condMapEmpty!27050 () Bool)

(declare-fun mapDefault!27050 () ValueCell!8044)

