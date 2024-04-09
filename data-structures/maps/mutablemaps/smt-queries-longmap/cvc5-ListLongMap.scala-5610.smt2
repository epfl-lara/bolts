; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73472 () Bool)

(assert start!73472)

(declare-fun b_free!14359 () Bool)

(declare-fun b_next!14359 () Bool)

(assert (=> start!73472 (= b_free!14359 (not b_next!14359))))

(declare-fun tp!50581 () Bool)

(declare-fun b_and!23733 () Bool)

(assert (=> start!73472 (= tp!50581 b_and!23733)))

(declare-fun b!857436 () Bool)

(declare-fun e!477920 () Bool)

(declare-fun tp_is_empty!16495 () Bool)

(assert (=> b!857436 (= e!477920 tp_is_empty!16495)))

(declare-fun mapIsEmpty!26342 () Bool)

(declare-fun mapRes!26342 () Bool)

(assert (=> mapIsEmpty!26342 mapRes!26342))

(declare-fun b!857437 () Bool)

(declare-fun res!582576 () Bool)

(declare-fun e!477922 () Bool)

(assert (=> b!857437 (=> (not res!582576) (not e!477922))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49154 0))(
  ( (array!49155 (arr!23604 (Array (_ BitVec 32) (_ BitVec 64))) (size!24045 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49154)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!857437 (= res!582576 (and (= (select (arr!23604 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!857438 () Bool)

(declare-fun res!582574 () Bool)

(assert (=> b!857438 (=> (not res!582574) (not e!477922))))

(assert (=> b!857438 (= res!582574 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24045 _keys!868))))))

(declare-fun b!857439 () Bool)

(declare-fun e!477921 () Bool)

(assert (=> b!857439 (= e!477921 (not true))))

(declare-datatypes ((V!27041 0))(
  ( (V!27042 (val!8295 Int)) )
))
(declare-fun v!557 () V!27041)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7808 0))(
  ( (ValueCellFull!7808 (v!10716 V!27041)) (EmptyCell!7808) )
))
(declare-datatypes ((array!49156 0))(
  ( (array!49157 (arr!23605 (Array (_ BitVec 32) ValueCell!7808)) (size!24046 (_ BitVec 32))) )
))
(declare-fun lt!386284 () array!49156)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun _values!688 () array!49156)

(declare-fun minValue!654 () V!27041)

(declare-fun zeroValue!654 () V!27041)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!10930 0))(
  ( (tuple2!10931 (_1!5475 (_ BitVec 64)) (_2!5475 V!27041)) )
))
(declare-datatypes ((List!16802 0))(
  ( (Nil!16799) (Cons!16798 (h!17929 tuple2!10930) (t!23451 List!16802)) )
))
(declare-datatypes ((ListLongMap!9713 0))(
  ( (ListLongMap!9714 (toList!4872 List!16802)) )
))
(declare-fun getCurrentListMapNoExtraKeys!2854 (array!49154 array!49156 (_ BitVec 32) (_ BitVec 32) V!27041 V!27041 (_ BitVec 32) Int) ListLongMap!9713)

(declare-fun +!2180 (ListLongMap!9713 tuple2!10930) ListLongMap!9713)

(assert (=> b!857439 (= (getCurrentListMapNoExtraKeys!2854 _keys!868 lt!386284 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2180 (getCurrentListMapNoExtraKeys!2854 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10931 k!854 v!557)))))

(declare-datatypes ((Unit!29202 0))(
  ( (Unit!29203) )
))
(declare-fun lt!386286 () Unit!29202)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!440 (array!49154 array!49156 (_ BitVec 32) (_ BitVec 32) V!27041 V!27041 (_ BitVec 32) (_ BitVec 64) V!27041 (_ BitVec 32) Int) Unit!29202)

(assert (=> b!857439 (= lt!386286 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!440 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!857440 () Bool)

(declare-fun res!582568 () Bool)

(assert (=> b!857440 (=> (not res!582568) (not e!477922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49154 (_ BitVec 32)) Bool)

(assert (=> b!857440 (= res!582568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!857441 () Bool)

(declare-fun e!477924 () Bool)

(declare-fun e!477923 () Bool)

(assert (=> b!857441 (= e!477924 (and e!477923 mapRes!26342))))

(declare-fun condMapEmpty!26342 () Bool)

(declare-fun mapDefault!26342 () ValueCell!7808)

