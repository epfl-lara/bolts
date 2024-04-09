; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73488 () Bool)

(assert start!73488)

(declare-fun b_free!14375 () Bool)

(declare-fun b_next!14375 () Bool)

(assert (=> start!73488 (= b_free!14375 (not b_next!14375))))

(declare-fun tp!50629 () Bool)

(declare-fun b_and!23749 () Bool)

(assert (=> start!73488 (= tp!50629 b_and!23749)))

(declare-fun b!857732 () Bool)

(declare-fun res!582798 () Bool)

(declare-fun e!478072 () Bool)

(assert (=> b!857732 (=> (not res!582798) (not e!478072))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49184 0))(
  ( (array!49185 (arr!23619 (Array (_ BitVec 32) (_ BitVec 64))) (size!24060 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49184)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!857732 (= res!582798 (and (= (select (arr!23619 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!857733 () Bool)

(declare-fun res!582792 () Bool)

(assert (=> b!857733 (=> (not res!582792) (not e!478072))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!857733 (= res!582792 (validKeyInArray!0 k!854))))

(declare-fun b!857734 () Bool)

(declare-fun res!582800 () Bool)

(assert (=> b!857734 (=> (not res!582800) (not e!478072))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!27061 0))(
  ( (V!27062 (val!8303 Int)) )
))
(declare-datatypes ((ValueCell!7816 0))(
  ( (ValueCellFull!7816 (v!10724 V!27061)) (EmptyCell!7816) )
))
(declare-datatypes ((array!49186 0))(
  ( (array!49187 (arr!23620 (Array (_ BitVec 32) ValueCell!7816)) (size!24061 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49186)

(assert (=> b!857734 (= res!582800 (and (= (size!24061 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24060 _keys!868) (size!24061 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!857735 () Bool)

(declare-fun res!582794 () Bool)

(assert (=> b!857735 (=> (not res!582794) (not e!478072))))

(declare-datatypes ((List!16814 0))(
  ( (Nil!16811) (Cons!16810 (h!17941 (_ BitVec 64)) (t!23463 List!16814)) )
))
(declare-fun arrayNoDuplicates!0 (array!49184 (_ BitVec 32) List!16814) Bool)

(assert (=> b!857735 (= res!582794 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16811))))

(declare-fun b!857736 () Bool)

(declare-fun e!478071 () Bool)

(declare-fun e!478073 () Bool)

(declare-fun mapRes!26366 () Bool)

(assert (=> b!857736 (= e!478071 (and e!478073 mapRes!26366))))

(declare-fun condMapEmpty!26366 () Bool)

(declare-fun mapDefault!26366 () ValueCell!7816)

