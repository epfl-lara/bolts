; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73082 () Bool)

(assert start!73082)

(declare-fun b_free!13969 () Bool)

(declare-fun b_next!13969 () Bool)

(assert (=> start!73082 (= b_free!13969 (not b_next!13969))))

(declare-fun tp!49412 () Bool)

(declare-fun b_and!23115 () Bool)

(assert (=> start!73082 (= tp!49412 b_and!23115)))

(declare-fun mapIsEmpty!25757 () Bool)

(declare-fun mapRes!25757 () Bool)

(assert (=> mapIsEmpty!25757 mapRes!25757))

(declare-fun b!849276 () Bool)

(declare-fun e!473839 () Bool)

(assert (=> b!849276 (= e!473839 true)))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!26521 0))(
  ( (V!26522 (val!8100 Int)) )
))
(declare-datatypes ((ValueCell!7613 0))(
  ( (ValueCellFull!7613 (v!10521 V!26521)) (EmptyCell!7613) )
))
(declare-datatypes ((array!48402 0))(
  ( (array!48403 (arr!23228 (Array (_ BitVec 32) ValueCell!7613)) (size!23669 (_ BitVec 32))) )
))
(declare-fun lt!382215 () array!48402)

(declare-datatypes ((array!48404 0))(
  ( (array!48405 (arr!23229 (Array (_ BitVec 32) (_ BitVec 64))) (size!23670 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48404)

(declare-fun minValue!654 () V!26521)

(declare-fun zeroValue!654 () V!26521)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((tuple2!10618 0))(
  ( (tuple2!10619 (_1!5319 (_ BitVec 64)) (_2!5319 V!26521)) )
))
(declare-datatypes ((List!16518 0))(
  ( (Nil!16515) (Cons!16514 (h!17645 tuple2!10618) (t!22941 List!16518)) )
))
(declare-datatypes ((ListLongMap!9401 0))(
  ( (ListLongMap!9402 (toList!4716 List!16518)) )
))
(declare-fun lt!382216 () ListLongMap!9401)

(declare-fun +!2061 (ListLongMap!9401 tuple2!10618) ListLongMap!9401)

(declare-fun getCurrentListMapNoExtraKeys!2704 (array!48404 array!48402 (_ BitVec 32) (_ BitVec 32) V!26521 V!26521 (_ BitVec 32) Int) ListLongMap!9401)

(declare-fun get!12237 (ValueCell!7613 V!26521) V!26521)

(declare-fun dynLambda!997 (Int (_ BitVec 64)) V!26521)

(assert (=> b!849276 (= lt!382216 (+!2061 (getCurrentListMapNoExtraKeys!2704 _keys!868 lt!382215 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10619 (select (arr!23229 _keys!868) from!1053) (get!12237 (select (arr!23228 lt!382215) from!1053) (dynLambda!997 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!849277 () Bool)

(declare-fun res!577080 () Bool)

(declare-fun e!473837 () Bool)

(assert (=> b!849277 (=> (not res!577080) (not e!473837))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!849277 (= res!577080 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23670 _keys!868))))))

(declare-fun b!849278 () Bool)

(declare-fun e!473842 () Bool)

(declare-fun call!37762 () ListLongMap!9401)

(declare-fun call!37763 () ListLongMap!9401)

(assert (=> b!849278 (= e!473842 (= call!37762 call!37763))))

(declare-fun b!849279 () Bool)

(declare-fun res!577077 () Bool)

(assert (=> b!849279 (=> (not res!577077) (not e!473837))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48404 (_ BitVec 32)) Bool)

(assert (=> b!849279 (= res!577077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25757 () Bool)

(declare-fun tp!49411 () Bool)

(declare-fun e!473841 () Bool)

(assert (=> mapNonEmpty!25757 (= mapRes!25757 (and tp!49411 e!473841))))

(declare-fun mapValue!25757 () ValueCell!7613)

(declare-fun mapKey!25757 () (_ BitVec 32))

(declare-fun _values!688 () array!48402)

(declare-fun mapRest!25757 () (Array (_ BitVec 32) ValueCell!7613))

(assert (=> mapNonEmpty!25757 (= (arr!23228 _values!688) (store mapRest!25757 mapKey!25757 mapValue!25757))))

(declare-fun v!557 () V!26521)

(declare-fun b!849280 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!849280 (= e!473842 (= call!37762 (+!2061 call!37763 (tuple2!10619 k!854 v!557))))))

(declare-fun b!849281 () Bool)

(declare-fun e!473838 () Bool)

(declare-fun e!473840 () Bool)

(assert (=> b!849281 (= e!473838 (and e!473840 mapRes!25757))))

(declare-fun condMapEmpty!25757 () Bool)

(declare-fun mapDefault!25757 () ValueCell!7613)

