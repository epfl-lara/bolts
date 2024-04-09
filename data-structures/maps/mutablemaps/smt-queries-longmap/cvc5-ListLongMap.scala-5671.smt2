; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73838 () Bool)

(assert start!73838)

(declare-fun b_free!14725 () Bool)

(declare-fun b_next!14725 () Bool)

(assert (=> start!73838 (= b_free!14725 (not b_next!14725))))

(declare-fun tp!51680 () Bool)

(declare-fun b_and!24447 () Bool)

(assert (=> start!73838 (= tp!51680 b_and!24447)))

(declare-fun mapIsEmpty!26891 () Bool)

(declare-fun mapRes!26891 () Bool)

(assert (=> mapIsEmpty!26891 mapRes!26891))

(declare-fun b!866225 () Bool)

(declare-fun res!588675 () Bool)

(declare-fun e!482568 () Bool)

(assert (=> b!866225 (=> (not res!588675) (not e!482568))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!866225 (= res!588675 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26891 () Bool)

(declare-fun tp!51679 () Bool)

(declare-fun e!482565 () Bool)

(assert (=> mapNonEmpty!26891 (= mapRes!26891 (and tp!51679 e!482565))))

(declare-datatypes ((V!27529 0))(
  ( (V!27530 (val!8478 Int)) )
))
(declare-datatypes ((ValueCell!7991 0))(
  ( (ValueCellFull!7991 (v!10899 V!27529)) (EmptyCell!7991) )
))
(declare-fun mapValue!26891 () ValueCell!7991)

(declare-fun mapRest!26891 () (Array (_ BitVec 32) ValueCell!7991))

(declare-fun mapKey!26891 () (_ BitVec 32))

(declare-datatypes ((array!49864 0))(
  ( (array!49865 (arr!23959 (Array (_ BitVec 32) ValueCell!7991)) (size!24400 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49864)

(assert (=> mapNonEmpty!26891 (= (arr!23959 _values!688) (store mapRest!26891 mapKey!26891 mapValue!26891))))

(declare-fun b!866226 () Bool)

(declare-fun res!588678 () Bool)

(assert (=> b!866226 (=> (not res!588678) (not e!482568))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49866 0))(
  ( (array!49867 (arr!23960 (Array (_ BitVec 32) (_ BitVec 64))) (size!24401 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49866)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!866226 (= res!588678 (and (= (select (arr!23960 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!866227 () Bool)

(declare-fun res!588676 () Bool)

(assert (=> b!866227 (=> (not res!588676) (not e!482568))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!866227 (= res!588676 (validKeyInArray!0 k!854))))

(declare-fun b!866228 () Bool)

(declare-fun res!588679 () Bool)

(assert (=> b!866228 (=> (not res!588679) (not e!482568))))

(declare-datatypes ((List!17109 0))(
  ( (Nil!17106) (Cons!17105 (h!18236 (_ BitVec 64)) (t!24108 List!17109)) )
))
(declare-fun arrayNoDuplicates!0 (array!49866 (_ BitVec 32) List!17109) Bool)

(assert (=> b!866228 (= res!588679 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17106))))

(declare-fun b!866229 () Bool)

(declare-fun res!588677 () Bool)

(assert (=> b!866229 (=> (not res!588677) (not e!482568))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49866 (_ BitVec 32)) Bool)

(assert (=> b!866229 (= res!588677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!866230 () Bool)

(declare-datatypes ((Unit!29669 0))(
  ( (Unit!29670) )
))
(declare-fun e!482560 () Unit!29669)

(declare-fun Unit!29671 () Unit!29669)

(assert (=> b!866230 (= e!482560 Unit!29671)))

(declare-fun lt!393009 () Unit!29669)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49866 (_ BitVec 32) (_ BitVec 32)) Unit!29669)

(assert (=> b!866230 (= lt!393009 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!866230 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17106)))

(declare-fun lt!393006 () Unit!29669)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49866 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29669)

(assert (=> b!866230 (= lt!393006 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49866 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!866230 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!393008 () Unit!29669)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49866 (_ BitVec 64) (_ BitVec 32) List!17109) Unit!29669)

(assert (=> b!866230 (= lt!393008 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17106))))

(assert (=> b!866230 false))

(declare-fun b!866231 () Bool)

(declare-fun e!482564 () Bool)

(assert (=> b!866231 (= e!482568 e!482564)))

(declare-fun res!588683 () Bool)

(assert (=> b!866231 (=> (not res!588683) (not e!482564))))

(assert (=> b!866231 (= res!588683 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!393002 () array!49864)

(declare-datatypes ((tuple2!11246 0))(
  ( (tuple2!11247 (_1!5633 (_ BitVec 64)) (_2!5633 V!27529)) )
))
(declare-datatypes ((List!17110 0))(
  ( (Nil!17107) (Cons!17106 (h!18237 tuple2!11246) (t!24109 List!17110)) )
))
(declare-datatypes ((ListLongMap!10029 0))(
  ( (ListLongMap!10030 (toList!5030 List!17110)) )
))
(declare-fun lt!393004 () ListLongMap!10029)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27529)

(declare-fun zeroValue!654 () V!27529)

(declare-fun getCurrentListMapNoExtraKeys!2997 (array!49866 array!49864 (_ BitVec 32) (_ BitVec 32) V!27529 V!27529 (_ BitVec 32) Int) ListLongMap!10029)

(assert (=> b!866231 (= lt!393004 (getCurrentListMapNoExtraKeys!2997 _keys!868 lt!393002 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27529)

(assert (=> b!866231 (= lt!393002 (array!49865 (store (arr!23959 _values!688) i!612 (ValueCellFull!7991 v!557)) (size!24400 _values!688)))))

(declare-fun lt!392997 () ListLongMap!10029)

(assert (=> b!866231 (= lt!392997 (getCurrentListMapNoExtraKeys!2997 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!866232 () Bool)

(declare-fun e!482561 () Bool)

(assert (=> b!866232 (= e!482561 true)))

(declare-fun lt!393000 () tuple2!11246)

(declare-fun lt!392998 () ListLongMap!10029)

(declare-fun lt!392999 () ListLongMap!10029)

(declare-fun lt!392994 () tuple2!11246)

(declare-fun +!2326 (ListLongMap!10029 tuple2!11246) ListLongMap!10029)

(assert (=> b!866232 (= lt!392998 (+!2326 (+!2326 lt!392999 lt!392994) lt!393000))))

(declare-fun lt!393001 () V!27529)

(declare-fun lt!392996 () Unit!29669)

(declare-fun addCommutativeForDiffKeys!530 (ListLongMap!10029 (_ BitVec 64) V!27529 (_ BitVec 64) V!27529) Unit!29669)

(assert (=> b!866232 (= lt!392996 (addCommutativeForDiffKeys!530 lt!392999 k!854 v!557 (select (arr!23960 _keys!868) from!1053) lt!393001))))

(declare-fun b!866234 () Bool)

(declare-fun tp_is_empty!16861 () Bool)

(assert (=> b!866234 (= e!482565 tp_is_empty!16861)))

(declare-fun b!866235 () Bool)

(declare-fun res!588682 () Bool)

(assert (=> b!866235 (=> (not res!588682) (not e!482568))))

(assert (=> b!866235 (= res!588682 (and (= (size!24400 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24401 _keys!868) (size!24400 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!866236 () Bool)

(declare-fun res!588674 () Bool)

(assert (=> b!866236 (=> (not res!588674) (not e!482568))))

(assert (=> b!866236 (= res!588674 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24401 _keys!868))))))

(declare-fun b!866237 () Bool)

(declare-fun e!482562 () Bool)

(declare-fun e!482567 () Bool)

(assert (=> b!866237 (= e!482562 (and e!482567 mapRes!26891))))

(declare-fun condMapEmpty!26891 () Bool)

(declare-fun mapDefault!26891 () ValueCell!7991)

