; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73986 () Bool)

(assert start!73986)

(declare-fun b_free!14873 () Bool)

(declare-fun b_next!14873 () Bool)

(assert (=> start!73986 (= b_free!14873 (not b_next!14873))))

(declare-fun tp!52124 () Bool)

(declare-fun b_and!24643 () Bool)

(assert (=> start!73986 (= tp!52124 b_and!24643)))

(declare-fun b!869217 () Bool)

(declare-fun res!590819 () Bool)

(declare-fun e!484104 () Bool)

(assert (=> b!869217 (=> (not res!590819) (not e!484104))))

(declare-datatypes ((array!50150 0))(
  ( (array!50151 (arr!24102 (Array (_ BitVec 32) (_ BitVec 64))) (size!24543 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50150)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50150 (_ BitVec 32)) Bool)

(assert (=> b!869217 (= res!590819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!869219 () Bool)

(declare-fun res!590820 () Bool)

(assert (=> b!869219 (=> (not res!590820) (not e!484104))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!869219 (= res!590820 (and (= (select (arr!24102 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!869220 () Bool)

(declare-fun e!484103 () Bool)

(declare-fun e!484107 () Bool)

(declare-fun mapRes!27113 () Bool)

(assert (=> b!869220 (= e!484103 (and e!484107 mapRes!27113))))

(declare-fun condMapEmpty!27113 () Bool)

(declare-datatypes ((V!27725 0))(
  ( (V!27726 (val!8552 Int)) )
))
(declare-datatypes ((ValueCell!8065 0))(
  ( (ValueCellFull!8065 (v!10973 V!27725)) (EmptyCell!8065) )
))
(declare-datatypes ((array!50152 0))(
  ( (array!50153 (arr!24103 (Array (_ BitVec 32) ValueCell!8065)) (size!24544 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50152)

(declare-fun mapDefault!27113 () ValueCell!8065)

