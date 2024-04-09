; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73538 () Bool)

(assert start!73538)

(declare-fun b_free!14425 () Bool)

(declare-fun b_next!14425 () Bool)

(assert (=> start!73538 (= b_free!14425 (not b_next!14425))))

(declare-fun tp!50780 () Bool)

(declare-fun b_and!23847 () Bool)

(assert (=> start!73538 (= tp!50780 b_and!23847)))

(declare-fun b!858784 () Bool)

(declare-fun e!478632 () Bool)

(declare-fun e!478629 () Bool)

(assert (=> b!858784 (= e!478632 e!478629)))

(declare-fun res!583575 () Bool)

(assert (=> b!858784 (=> res!583575 e!478629)))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49280 0))(
  ( (array!49281 (arr!23667 (Array (_ BitVec 32) (_ BitVec 64))) (size!24108 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49280)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!858784 (= res!583575 (not (= (select (arr!23667 _keys!868) from!1053) k!854)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!27129 0))(
  ( (V!27130 (val!8328 Int)) )
))
(declare-datatypes ((tuple2!10980 0))(
  ( (tuple2!10981 (_1!5500 (_ BitVec 64)) (_2!5500 V!27129)) )
))
(declare-datatypes ((List!16852 0))(
  ( (Nil!16849) (Cons!16848 (h!17979 tuple2!10980) (t!23551 List!16852)) )
))
(declare-datatypes ((ListLongMap!9763 0))(
  ( (ListLongMap!9764 (toList!4897 List!16852)) )
))
(declare-fun lt!386931 () ListLongMap!9763)

(declare-fun lt!386933 () ListLongMap!9763)

(declare-datatypes ((ValueCell!7841 0))(
  ( (ValueCellFull!7841 (v!10749 V!27129)) (EmptyCell!7841) )
))
(declare-datatypes ((array!49282 0))(
  ( (array!49283 (arr!23668 (Array (_ BitVec 32) ValueCell!7841)) (size!24109 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49282)

(declare-fun +!2200 (ListLongMap!9763 tuple2!10980) ListLongMap!9763)

(declare-fun get!12481 (ValueCell!7841 V!27129) V!27129)

(declare-fun dynLambda!1089 (Int (_ BitVec 64)) V!27129)

(assert (=> b!858784 (= lt!386931 (+!2200 lt!386933 (tuple2!10981 (select (arr!23667 _keys!868) from!1053) (get!12481 (select (arr!23668 _values!688) from!1053) (dynLambda!1089 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!858785 () Bool)

(declare-fun res!583578 () Bool)

(declare-fun e!478628 () Bool)

(assert (=> b!858785 (=> (not res!583578) (not e!478628))))

(declare-datatypes ((List!16853 0))(
  ( (Nil!16850) (Cons!16849 (h!17980 (_ BitVec 64)) (t!23552 List!16853)) )
))
(declare-fun arrayNoDuplicates!0 (array!49280 (_ BitVec 32) List!16853) Bool)

(assert (=> b!858785 (= res!583578 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16850))))

(declare-fun b!858786 () Bool)

(declare-fun e!478625 () Bool)

(declare-fun tp_is_empty!16561 () Bool)

(assert (=> b!858786 (= e!478625 tp_is_empty!16561)))

(declare-fun b!858787 () Bool)

(assert (=> b!858787 (= e!478629 true)))

(assert (=> b!858787 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16850)))

(declare-datatypes ((Unit!29244 0))(
  ( (Unit!29245) )
))
(declare-fun lt!386934 () Unit!29244)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49280 (_ BitVec 32) (_ BitVec 32)) Unit!29244)

(assert (=> b!858787 (= lt!386934 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!858788 () Bool)

(declare-fun e!478630 () Bool)

(declare-fun mapRes!26441 () Bool)

(assert (=> b!858788 (= e!478630 (and e!478625 mapRes!26441))))

(declare-fun condMapEmpty!26441 () Bool)

(declare-fun mapDefault!26441 () ValueCell!7841)

