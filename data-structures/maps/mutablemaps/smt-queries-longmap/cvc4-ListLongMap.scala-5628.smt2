; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73584 () Bool)

(assert start!73584)

(declare-fun b_free!14471 () Bool)

(declare-fun b_next!14471 () Bool)

(assert (=> start!73584 (= b_free!14471 (not b_next!14471))))

(declare-fun tp!50917 () Bool)

(declare-fun b_and!23939 () Bool)

(assert (=> start!73584 (= tp!50917 b_and!23939)))

(declare-fun b!859928 () Bool)

(declare-fun e!479228 () Bool)

(declare-fun e!479222 () Bool)

(assert (=> b!859928 (= e!479228 e!479222)))

(declare-fun res!584465 () Bool)

(assert (=> b!859928 (=> (not res!584465) (not e!479222))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!859928 (= res!584465 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!27189 0))(
  ( (V!27190 (val!8351 Int)) )
))
(declare-datatypes ((ValueCell!7864 0))(
  ( (ValueCellFull!7864 (v!10772 V!27189)) (EmptyCell!7864) )
))
(declare-datatypes ((array!49372 0))(
  ( (array!49373 (arr!23713 (Array (_ BitVec 32) ValueCell!7864)) (size!24154 (_ BitVec 32))) )
))
(declare-fun lt!387577 () array!49372)

(declare-datatypes ((array!49374 0))(
  ( (array!49375 (arr!23714 (Array (_ BitVec 32) (_ BitVec 64))) (size!24155 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49374)

(declare-fun zeroValue!654 () V!27189)

(declare-fun minValue!654 () V!27189)

(declare-datatypes ((tuple2!11024 0))(
  ( (tuple2!11025 (_1!5522 (_ BitVec 64)) (_2!5522 V!27189)) )
))
(declare-datatypes ((List!16895 0))(
  ( (Nil!16892) (Cons!16891 (h!18022 tuple2!11024) (t!23640 List!16895)) )
))
(declare-datatypes ((ListLongMap!9807 0))(
  ( (ListLongMap!9808 (toList!4919 List!16895)) )
))
(declare-fun lt!387573 () ListLongMap!9807)

(declare-fun getCurrentListMapNoExtraKeys!2899 (array!49374 array!49372 (_ BitVec 32) (_ BitVec 32) V!27189 V!27189 (_ BitVec 32) Int) ListLongMap!9807)

(assert (=> b!859928 (= lt!387573 (getCurrentListMapNoExtraKeys!2899 _keys!868 lt!387577 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun _values!688 () array!49372)

(declare-fun v!557 () V!27189)

(assert (=> b!859928 (= lt!387577 (array!49373 (store (arr!23713 _values!688) i!612 (ValueCellFull!7864 v!557)) (size!24154 _values!688)))))

(declare-fun lt!387571 () ListLongMap!9807)

(assert (=> b!859928 (= lt!387571 (getCurrentListMapNoExtraKeys!2899 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!859929 () Bool)

(declare-fun res!584475 () Bool)

(assert (=> b!859929 (=> (not res!584475) (not e!479228))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!859929 (= res!584475 (and (= (select (arr!23714 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!26510 () Bool)

(declare-fun mapRes!26510 () Bool)

(assert (=> mapIsEmpty!26510 mapRes!26510))

(declare-fun b!859930 () Bool)

(declare-fun e!479229 () Bool)

(declare-fun e!479225 () Bool)

(assert (=> b!859930 (= e!479229 (and e!479225 mapRes!26510))))

(declare-fun condMapEmpty!26510 () Bool)

(declare-fun mapDefault!26510 () ValueCell!7864)

