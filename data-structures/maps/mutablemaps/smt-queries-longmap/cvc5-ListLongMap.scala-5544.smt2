; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73076 () Bool)

(assert start!73076)

(declare-fun b_free!13963 () Bool)

(declare-fun b_next!13963 () Bool)

(assert (=> start!73076 (= b_free!13963 (not b_next!13963))))

(declare-fun tp!49394 () Bool)

(declare-fun b_and!23103 () Bool)

(assert (=> start!73076 (= tp!49394 b_and!23103)))

(declare-datatypes ((V!26513 0))(
  ( (V!26514 (val!8097 Int)) )
))
(declare-datatypes ((tuple2!10612 0))(
  ( (tuple2!10613 (_1!5316 (_ BitVec 64)) (_2!5316 V!26513)) )
))
(declare-datatypes ((List!16513 0))(
  ( (Nil!16510) (Cons!16509 (h!17640 tuple2!10612) (t!22930 List!16513)) )
))
(declare-datatypes ((ListLongMap!9395 0))(
  ( (ListLongMap!9396 (toList!4713 List!16513)) )
))
(declare-fun call!37744 () ListLongMap!9395)

(declare-fun v!557 () V!26513)

(declare-fun b!849135 () Bool)

(declare-fun call!37745 () ListLongMap!9395)

(declare-fun e!473769 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2058 (ListLongMap!9395 tuple2!10612) ListLongMap!9395)

(assert (=> b!849135 (= e!473769 (= call!37744 (+!2058 call!37745 (tuple2!10613 k!854 v!557))))))

(declare-fun b!849136 () Bool)

(declare-fun e!473771 () Bool)

(declare-fun tp_is_empty!16099 () Bool)

(assert (=> b!849136 (= e!473771 tp_is_empty!16099)))

(declare-fun mapNonEmpty!25748 () Bool)

(declare-fun mapRes!25748 () Bool)

(declare-fun tp!49393 () Bool)

(declare-fun e!473765 () Bool)

(assert (=> mapNonEmpty!25748 (= mapRes!25748 (and tp!49393 e!473765))))

(declare-datatypes ((ValueCell!7610 0))(
  ( (ValueCellFull!7610 (v!10518 V!26513)) (EmptyCell!7610) )
))
(declare-fun mapValue!25748 () ValueCell!7610)

(declare-fun mapRest!25748 () (Array (_ BitVec 32) ValueCell!7610))

(declare-fun mapKey!25748 () (_ BitVec 32))

(declare-datatypes ((array!48390 0))(
  ( (array!48391 (arr!23222 (Array (_ BitVec 32) ValueCell!7610)) (size!23663 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48390)

(assert (=> mapNonEmpty!25748 (= (arr!23222 _values!688) (store mapRest!25748 mapKey!25748 mapValue!25748))))

(declare-fun b!849137 () Bool)

(declare-fun res!576989 () Bool)

(declare-fun e!473770 () Bool)

(assert (=> b!849137 (=> (not res!576989) (not e!473770))))

(declare-datatypes ((array!48392 0))(
  ( (array!48393 (arr!23223 (Array (_ BitVec 32) (_ BitVec 64))) (size!23664 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48392)

(declare-datatypes ((List!16514 0))(
  ( (Nil!16511) (Cons!16510 (h!17641 (_ BitVec 64)) (t!22931 List!16514)) )
))
(declare-fun arrayNoDuplicates!0 (array!48392 (_ BitVec 32) List!16514) Bool)

(assert (=> b!849137 (= res!576989 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16511))))

(declare-fun b!849138 () Bool)

(declare-fun res!576982 () Bool)

(assert (=> b!849138 (=> (not res!576982) (not e!473770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!849138 (= res!576982 (validKeyInArray!0 k!854))))

(declare-fun b!849139 () Bool)

(declare-fun e!473768 () Bool)

(assert (=> b!849139 (= e!473768 true)))

(declare-fun lt!382181 () array!48390)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26513)

(declare-fun zeroValue!654 () V!26513)

(declare-fun lt!382182 () ListLongMap!9395)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2701 (array!48392 array!48390 (_ BitVec 32) (_ BitVec 32) V!26513 V!26513 (_ BitVec 32) Int) ListLongMap!9395)

(declare-fun get!12232 (ValueCell!7610 V!26513) V!26513)

(declare-fun dynLambda!994 (Int (_ BitVec 64)) V!26513)

(assert (=> b!849139 (= lt!382182 (+!2058 (getCurrentListMapNoExtraKeys!2701 _keys!868 lt!382181 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10613 (select (arr!23223 _keys!868) from!1053) (get!12232 (select (arr!23222 lt!382181) from!1053) (dynLambda!994 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!849140 () Bool)

(declare-fun res!576988 () Bool)

(assert (=> b!849140 (=> (not res!576988) (not e!473770))))

(assert (=> b!849140 (= res!576988 (and (= (size!23663 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23664 _keys!868) (size!23663 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!849141 () Bool)

(declare-fun e!473767 () Bool)

(assert (=> b!849141 (= e!473770 e!473767)))

(declare-fun res!576981 () Bool)

(assert (=> b!849141 (=> (not res!576981) (not e!473767))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!849141 (= res!576981 (= from!1053 i!612))))

(assert (=> b!849141 (= lt!382182 (getCurrentListMapNoExtraKeys!2701 _keys!868 lt!382181 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!849141 (= lt!382181 (array!48391 (store (arr!23222 _values!688) i!612 (ValueCellFull!7610 v!557)) (size!23663 _values!688)))))

(declare-fun lt!382179 () ListLongMap!9395)

(assert (=> b!849141 (= lt!382179 (getCurrentListMapNoExtraKeys!2701 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!849143 () Bool)

(assert (=> b!849143 (= e!473765 tp_is_empty!16099)))

(declare-fun b!849144 () Bool)

(assert (=> b!849144 (= e!473767 (not e!473768))))

(declare-fun res!576985 () Bool)

(assert (=> b!849144 (=> res!576985 e!473768)))

(assert (=> b!849144 (= res!576985 (not (validKeyInArray!0 (select (arr!23223 _keys!868) from!1053))))))

(assert (=> b!849144 e!473769))

(declare-fun c!91533 () Bool)

(assert (=> b!849144 (= c!91533 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28970 0))(
  ( (Unit!28971) )
))
(declare-fun lt!382180 () Unit!28970)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!334 (array!48392 array!48390 (_ BitVec 32) (_ BitVec 32) V!26513 V!26513 (_ BitVec 32) (_ BitVec 64) V!26513 (_ BitVec 32) Int) Unit!28970)

(assert (=> b!849144 (= lt!382180 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!334 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!37741 () Bool)

(assert (=> bm!37741 (= call!37744 (getCurrentListMapNoExtraKeys!2701 _keys!868 lt!382181 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849145 () Bool)

(assert (=> b!849145 (= e!473769 (= call!37744 call!37745))))

(declare-fun b!849146 () Bool)

(declare-fun res!576986 () Bool)

(assert (=> b!849146 (=> (not res!576986) (not e!473770))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48392 (_ BitVec 32)) Bool)

(assert (=> b!849146 (= res!576986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!25748 () Bool)

(assert (=> mapIsEmpty!25748 mapRes!25748))

(declare-fun b!849142 () Bool)

(declare-fun res!576983 () Bool)

(assert (=> b!849142 (=> (not res!576983) (not e!473770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!849142 (= res!576983 (validMask!0 mask!1196))))

(declare-fun res!576987 () Bool)

(assert (=> start!73076 (=> (not res!576987) (not e!473770))))

(assert (=> start!73076 (= res!576987 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23664 _keys!868))))))

(assert (=> start!73076 e!473770))

(assert (=> start!73076 tp_is_empty!16099))

(assert (=> start!73076 true))

(assert (=> start!73076 tp!49394))

(declare-fun array_inv!18418 (array!48392) Bool)

(assert (=> start!73076 (array_inv!18418 _keys!868)))

(declare-fun e!473766 () Bool)

(declare-fun array_inv!18419 (array!48390) Bool)

(assert (=> start!73076 (and (array_inv!18419 _values!688) e!473766)))

(declare-fun b!849147 () Bool)

(declare-fun res!576990 () Bool)

(assert (=> b!849147 (=> (not res!576990) (not e!473770))))

(assert (=> b!849147 (= res!576990 (and (= (select (arr!23223 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!849148 () Bool)

(declare-fun res!576984 () Bool)

(assert (=> b!849148 (=> (not res!576984) (not e!473770))))

(assert (=> b!849148 (= res!576984 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23664 _keys!868))))))

(declare-fun b!849149 () Bool)

(assert (=> b!849149 (= e!473766 (and e!473771 mapRes!25748))))

(declare-fun condMapEmpty!25748 () Bool)

(declare-fun mapDefault!25748 () ValueCell!7610)

