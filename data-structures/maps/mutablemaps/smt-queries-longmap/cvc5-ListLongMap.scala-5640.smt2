; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73652 () Bool)

(assert start!73652)

(declare-fun b_free!14539 () Bool)

(declare-fun b_next!14539 () Bool)

(assert (=> start!73652 (= b_free!14539 (not b_next!14539))))

(declare-fun tp!51122 () Bool)

(declare-fun b_and!24075 () Bool)

(assert (=> start!73652 (= tp!51122 b_and!24075)))

(declare-fun b!861600 () Bool)

(declare-fun res!585636 () Bool)

(declare-fun e!480078 () Bool)

(assert (=> b!861600 (=> (not res!585636) (not e!480078))))

(declare-datatypes ((array!49496 0))(
  ( (array!49497 (arr!23775 (Array (_ BitVec 32) (_ BitVec 64))) (size!24216 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49496)

(declare-datatypes ((List!16948 0))(
  ( (Nil!16945) (Cons!16944 (h!18075 (_ BitVec 64)) (t!23761 List!16948)) )
))
(declare-fun arrayNoDuplicates!0 (array!49496 (_ BitVec 32) List!16948) Bool)

(assert (=> b!861600 (= res!585636 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16945))))

(declare-fun b!861601 () Bool)

(declare-datatypes ((Unit!29364 0))(
  ( (Unit!29365) )
))
(declare-fun e!480074 () Unit!29364)

(declare-fun Unit!29366 () Unit!29364)

(assert (=> b!861601 (= e!480074 Unit!29366)))

(declare-fun b!861602 () Bool)

(declare-fun e!480080 () Bool)

(assert (=> b!861602 (= e!480080 true)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!861602 (not (= (select (arr!23775 _keys!868) from!1053) k!854))))

(declare-fun lt!388659 () Unit!29364)

(assert (=> b!861602 (= lt!388659 e!480074)))

(declare-fun c!91947 () Bool)

(assert (=> b!861602 (= c!91947 (= (select (arr!23775 _keys!868) from!1053) k!854))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!27281 0))(
  ( (V!27282 (val!8385 Int)) )
))
(declare-datatypes ((tuple2!11078 0))(
  ( (tuple2!11079 (_1!5549 (_ BitVec 64)) (_2!5549 V!27281)) )
))
(declare-datatypes ((List!16949 0))(
  ( (Nil!16946) (Cons!16945 (h!18076 tuple2!11078) (t!23762 List!16949)) )
))
(declare-datatypes ((ListLongMap!9861 0))(
  ( (ListLongMap!9862 (toList!4946 List!16949)) )
))
(declare-fun lt!388660 () ListLongMap!9861)

(declare-fun lt!388664 () ListLongMap!9861)

(declare-datatypes ((ValueCell!7898 0))(
  ( (ValueCellFull!7898 (v!10806 V!27281)) (EmptyCell!7898) )
))
(declare-datatypes ((array!49498 0))(
  ( (array!49499 (arr!23776 (Array (_ BitVec 32) ValueCell!7898)) (size!24217 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49498)

(declare-fun +!2244 (ListLongMap!9861 tuple2!11078) ListLongMap!9861)

(declare-fun get!12556 (ValueCell!7898 V!27281) V!27281)

(declare-fun dynLambda!1126 (Int (_ BitVec 64)) V!27281)

(assert (=> b!861602 (= lt!388664 (+!2244 lt!388660 (tuple2!11079 (select (arr!23775 _keys!868) from!1053) (get!12556 (select (arr!23776 _values!688) from!1053) (dynLambda!1126 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!861603 () Bool)

(declare-fun res!585635 () Bool)

(assert (=> b!861603 (=> (not res!585635) (not e!480078))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!861603 (= res!585635 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24216 _keys!868))))))

(declare-fun b!861604 () Bool)

(declare-fun res!585634 () Bool)

(assert (=> b!861604 (=> (not res!585634) (not e!480078))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!861604 (= res!585634 (and (= (size!24217 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24216 _keys!868) (size!24217 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!861605 () Bool)

(declare-fun e!480079 () Bool)

(declare-fun e!480077 () Bool)

(declare-fun mapRes!26612 () Bool)

(assert (=> b!861605 (= e!480079 (and e!480077 mapRes!26612))))

(declare-fun condMapEmpty!26612 () Bool)

(declare-fun mapDefault!26612 () ValueCell!7898)

