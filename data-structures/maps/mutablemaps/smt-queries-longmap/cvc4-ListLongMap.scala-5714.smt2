; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74100 () Bool)

(assert start!74100)

(declare-fun b_free!14987 () Bool)

(declare-fun b_next!14987 () Bool)

(assert (=> start!74100 (= b_free!14987 (not b_next!14987))))

(declare-fun tp!52466 () Bool)

(declare-fun b_and!24757 () Bool)

(assert (=> start!74100 (= tp!52466 b_and!24757)))

(declare-fun b!871269 () Bool)

(declare-fun res!592353 () Bool)

(declare-fun e!485131 () Bool)

(assert (=> b!871269 (=> (not res!592353) (not e!485131))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871269 (= res!592353 (validMask!0 mask!1196))))

(declare-fun b!871270 () Bool)

(declare-fun res!592357 () Bool)

(assert (=> b!871270 (=> (not res!592357) (not e!485131))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!50374 0))(
  ( (array!50375 (arr!24214 (Array (_ BitVec 32) (_ BitVec 64))) (size!24655 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50374)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!871270 (= res!592357 (and (= (select (arr!24214 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!27284 () Bool)

(declare-fun mapRes!27284 () Bool)

(assert (=> mapIsEmpty!27284 mapRes!27284))

(declare-fun b!871272 () Bool)

(declare-fun res!592356 () Bool)

(assert (=> b!871272 (=> (not res!592356) (not e!485131))))

(assert (=> b!871272 (= res!592356 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24655 _keys!868))))))

(declare-fun mapNonEmpty!27284 () Bool)

(declare-fun tp!52465 () Bool)

(declare-fun e!485129 () Bool)

(assert (=> mapNonEmpty!27284 (= mapRes!27284 (and tp!52465 e!485129))))

(declare-datatypes ((V!27877 0))(
  ( (V!27878 (val!8609 Int)) )
))
(declare-datatypes ((ValueCell!8122 0))(
  ( (ValueCellFull!8122 (v!11030 V!27877)) (EmptyCell!8122) )
))
(declare-fun mapValue!27284 () ValueCell!8122)

(declare-datatypes ((array!50376 0))(
  ( (array!50377 (arr!24215 (Array (_ BitVec 32) ValueCell!8122)) (size!24656 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50376)

(declare-fun mapRest!27284 () (Array (_ BitVec 32) ValueCell!8122))

(declare-fun mapKey!27284 () (_ BitVec 32))

(assert (=> mapNonEmpty!27284 (= (arr!24215 _values!688) (store mapRest!27284 mapKey!27284 mapValue!27284))))

(declare-fun b!871273 () Bool)

(declare-fun e!485133 () Bool)

(declare-fun e!485128 () Bool)

(assert (=> b!871273 (= e!485133 (and e!485128 mapRes!27284))))

(declare-fun condMapEmpty!27284 () Bool)

(declare-fun mapDefault!27284 () ValueCell!8122)

