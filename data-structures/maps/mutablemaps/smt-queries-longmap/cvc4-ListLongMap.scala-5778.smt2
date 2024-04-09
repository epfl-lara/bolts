; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74602 () Bool)

(assert start!74602)

(declare-fun b_free!15263 () Bool)

(declare-fun b_next!15263 () Bool)

(assert (=> start!74602 (= b_free!15263 (not b_next!15263))))

(declare-fun tp!53471 () Bool)

(declare-fun b_and!25157 () Bool)

(assert (=> start!74602 (= tp!53471 b_and!25157)))

(declare-fun b!878525 () Bool)

(declare-fun res!596968 () Bool)

(declare-fun e!488957 () Bool)

(assert (=> b!878525 (=> (not res!596968) (not e!488957))))

(declare-datatypes ((array!51120 0))(
  ( (array!51121 (arr!24582 (Array (_ BitVec 32) (_ BitVec 64))) (size!25023 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51120)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51120 (_ BitVec 32)) Bool)

(assert (=> b!878525 (= res!596968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27876 () Bool)

(declare-fun mapRes!27876 () Bool)

(declare-fun tp!53472 () Bool)

(declare-fun e!488956 () Bool)

(assert (=> mapNonEmpty!27876 (= mapRes!27876 (and tp!53472 e!488956))))

(declare-datatypes ((V!28389 0))(
  ( (V!28390 (val!8801 Int)) )
))
(declare-datatypes ((ValueCell!8314 0))(
  ( (ValueCellFull!8314 (v!11237 V!28389)) (EmptyCell!8314) )
))
(declare-fun mapRest!27876 () (Array (_ BitVec 32) ValueCell!8314))

(declare-datatypes ((array!51122 0))(
  ( (array!51123 (arr!24583 (Array (_ BitVec 32) ValueCell!8314)) (size!25024 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51122)

(declare-fun mapValue!27876 () ValueCell!8314)

(declare-fun mapKey!27876 () (_ BitVec 32))

(assert (=> mapNonEmpty!27876 (= (arr!24583 _values!688) (store mapRest!27876 mapKey!27876 mapValue!27876))))

(declare-fun b!878526 () Bool)

(declare-fun res!596970 () Bool)

(assert (=> b!878526 (=> (not res!596970) (not e!488957))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!878526 (= res!596970 (and (= (size!25024 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25023 _keys!868) (size!25024 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!878527 () Bool)

(declare-fun res!596973 () Bool)

(assert (=> b!878527 (=> (not res!596973) (not e!488957))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878527 (= res!596973 (validKeyInArray!0 k!854))))

(declare-fun b!878528 () Bool)

(declare-fun e!488958 () Bool)

(declare-fun tp_is_empty!17507 () Bool)

(assert (=> b!878528 (= e!488958 tp_is_empty!17507)))

(declare-fun b!878529 () Bool)

(declare-fun res!596967 () Bool)

(assert (=> b!878529 (=> (not res!596967) (not e!488957))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!878529 (= res!596967 (and (= (select (arr!24582 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun res!596972 () Bool)

(assert (=> start!74602 (=> (not res!596972) (not e!488957))))

(assert (=> start!74602 (= res!596972 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25023 _keys!868))))))

(assert (=> start!74602 e!488957))

(assert (=> start!74602 tp_is_empty!17507))

(assert (=> start!74602 true))

(assert (=> start!74602 tp!53471))

(declare-fun array_inv!19348 (array!51120) Bool)

(assert (=> start!74602 (array_inv!19348 _keys!868)))

(declare-fun e!488955 () Bool)

(declare-fun array_inv!19349 (array!51122) Bool)

(assert (=> start!74602 (and (array_inv!19349 _values!688) e!488955)))

(declare-fun b!878530 () Bool)

(declare-fun res!596969 () Bool)

(assert (=> b!878530 (=> (not res!596969) (not e!488957))))

(assert (=> b!878530 (= res!596969 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25023 _keys!868))))))

(declare-fun b!878531 () Bool)

(assert (=> b!878531 (= e!488955 (and e!488958 mapRes!27876))))

(declare-fun condMapEmpty!27876 () Bool)

(declare-fun mapDefault!27876 () ValueCell!8314)

