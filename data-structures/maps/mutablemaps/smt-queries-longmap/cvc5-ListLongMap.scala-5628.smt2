; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73580 () Bool)

(assert start!73580)

(declare-fun b_free!14467 () Bool)

(declare-fun b_next!14467 () Bool)

(assert (=> start!73580 (= b_free!14467 (not b_next!14467))))

(declare-fun tp!50905 () Bool)

(declare-fun b_and!23931 () Bool)

(assert (=> start!73580 (= tp!50905 b_and!23931)))

(declare-fun b!859822 () Bool)

(declare-fun e!479169 () Bool)

(declare-fun e!479168 () Bool)

(assert (=> b!859822 (= e!479169 e!479168)))

(declare-fun res!584388 () Bool)

(assert (=> b!859822 (=> (not res!584388) (not e!479168))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!859822 (= res!584388 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27185 0))(
  ( (V!27186 (val!8349 Int)) )
))
(declare-datatypes ((ValueCell!7862 0))(
  ( (ValueCellFull!7862 (v!10770 V!27185)) (EmptyCell!7862) )
))
(declare-datatypes ((array!49364 0))(
  ( (array!49365 (arr!23709 (Array (_ BitVec 32) ValueCell!7862)) (size!24150 (_ BitVec 32))) )
))
(declare-fun lt!387517 () array!49364)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49366 0))(
  ( (array!49367 (arr!23710 (Array (_ BitVec 32) (_ BitVec 64))) (size!24151 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49366)

(declare-fun minValue!654 () V!27185)

(declare-fun zeroValue!654 () V!27185)

(declare-datatypes ((tuple2!11020 0))(
  ( (tuple2!11021 (_1!5520 (_ BitVec 64)) (_2!5520 V!27185)) )
))
(declare-datatypes ((List!16892 0))(
  ( (Nil!16889) (Cons!16888 (h!18019 tuple2!11020) (t!23633 List!16892)) )
))
(declare-datatypes ((ListLongMap!9803 0))(
  ( (ListLongMap!9804 (toList!4917 List!16892)) )
))
(declare-fun lt!387511 () ListLongMap!9803)

(declare-fun getCurrentListMapNoExtraKeys!2897 (array!49366 array!49364 (_ BitVec 32) (_ BitVec 32) V!27185 V!27185 (_ BitVec 32) Int) ListLongMap!9803)

(assert (=> b!859822 (= lt!387511 (getCurrentListMapNoExtraKeys!2897 _keys!868 lt!387517 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27185)

(declare-fun _values!688 () array!49364)

(assert (=> b!859822 (= lt!387517 (array!49365 (store (arr!23709 _values!688) i!612 (ValueCellFull!7862 v!557)) (size!24150 _values!688)))))

(declare-fun lt!387513 () ListLongMap!9803)

(assert (=> b!859822 (= lt!387513 (getCurrentListMapNoExtraKeys!2897 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!859823 () Bool)

(declare-fun e!479171 () Bool)

(declare-fun e!479174 () Bool)

(declare-fun mapRes!26504 () Bool)

(assert (=> b!859823 (= e!479171 (and e!479174 mapRes!26504))))

(declare-fun condMapEmpty!26504 () Bool)

(declare-fun mapDefault!26504 () ValueCell!7862)

