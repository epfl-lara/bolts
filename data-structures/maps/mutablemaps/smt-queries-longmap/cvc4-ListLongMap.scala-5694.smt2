; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73980 () Bool)

(assert start!73980)

(declare-fun b_free!14867 () Bool)

(declare-fun b_next!14867 () Bool)

(assert (=> start!73980 (= b_free!14867 (not b_next!14867))))

(declare-fun tp!52106 () Bool)

(declare-fun b_and!24637 () Bool)

(assert (=> start!73980 (= tp!52106 b_and!24637)))

(declare-fun b!869109 () Bool)

(declare-fun res!590734 () Bool)

(declare-fun e!484051 () Bool)

(assert (=> b!869109 (=> (not res!590734) (not e!484051))))

(declare-datatypes ((array!50138 0))(
  ( (array!50139 (arr!24096 (Array (_ BitVec 32) (_ BitVec 64))) (size!24537 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50138)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50138 (_ BitVec 32)) Bool)

(assert (=> b!869109 (= res!590734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!869110 () Bool)

(declare-fun res!590733 () Bool)

(assert (=> b!869110 (=> (not res!590733) (not e!484051))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!869110 (= res!590733 (validKeyInArray!0 k!854))))

(declare-fun b!869111 () Bool)

(declare-fun e!484048 () Bool)

(declare-fun tp_is_empty!17003 () Bool)

(assert (=> b!869111 (= e!484048 tp_is_empty!17003)))

(declare-fun b!869112 () Bool)

(declare-fun res!590731 () Bool)

(assert (=> b!869112 (=> (not res!590731) (not e!484051))))

(declare-datatypes ((List!17210 0))(
  ( (Nil!17207) (Cons!17206 (h!18337 (_ BitVec 64)) (t!24255 List!17210)) )
))
(declare-fun arrayNoDuplicates!0 (array!50138 (_ BitVec 32) List!17210) Bool)

(assert (=> b!869112 (= res!590731 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17207))))

(declare-fun b!869114 () Bool)

(declare-fun e!484049 () Bool)

(declare-fun e!484050 () Bool)

(declare-fun mapRes!27104 () Bool)

(assert (=> b!869114 (= e!484049 (and e!484050 mapRes!27104))))

(declare-fun condMapEmpty!27104 () Bool)

(declare-datatypes ((V!27717 0))(
  ( (V!27718 (val!8549 Int)) )
))
(declare-datatypes ((ValueCell!8062 0))(
  ( (ValueCellFull!8062 (v!10970 V!27717)) (EmptyCell!8062) )
))
(declare-datatypes ((array!50140 0))(
  ( (array!50141 (arr!24097 (Array (_ BitVec 32) ValueCell!8062)) (size!24538 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50140)

(declare-fun mapDefault!27104 () ValueCell!8062)

