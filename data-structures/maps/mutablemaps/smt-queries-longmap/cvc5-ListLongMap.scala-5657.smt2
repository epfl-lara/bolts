; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73754 () Bool)

(assert start!73754)

(declare-fun b_free!14641 () Bool)

(declare-fun b_next!14641 () Bool)

(assert (=> start!73754 (= b_free!14641 (not b_next!14641))))

(declare-fun tp!51428 () Bool)

(declare-fun b_and!24279 () Bool)

(assert (=> start!73754 (= tp!51428 b_and!24279)))

(declare-fun b!864125 () Bool)

(declare-fun e!481427 () Bool)

(declare-fun tp_is_empty!16777 () Bool)

(assert (=> b!864125 (= e!481427 tp_is_empty!16777)))

(declare-fun b!864126 () Bool)

(declare-fun e!481430 () Bool)

(assert (=> b!864126 (= e!481430 tp_is_empty!16777)))

(declare-fun res!587296 () Bool)

(declare-fun e!481426 () Bool)

(assert (=> start!73754 (=> (not res!587296) (not e!481426))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49698 0))(
  ( (array!49699 (arr!23876 (Array (_ BitVec 32) (_ BitVec 64))) (size!24317 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49698)

(assert (=> start!73754 (= res!587296 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24317 _keys!868))))))

(assert (=> start!73754 e!481426))

(assert (=> start!73754 tp_is_empty!16777))

(assert (=> start!73754 true))

(assert (=> start!73754 tp!51428))

(declare-fun array_inv!18860 (array!49698) Bool)

(assert (=> start!73754 (array_inv!18860 _keys!868)))

(declare-datatypes ((V!27417 0))(
  ( (V!27418 (val!8436 Int)) )
))
(declare-datatypes ((ValueCell!7949 0))(
  ( (ValueCellFull!7949 (v!10857 V!27417)) (EmptyCell!7949) )
))
(declare-datatypes ((array!49700 0))(
  ( (array!49701 (arr!23877 (Array (_ BitVec 32) ValueCell!7949)) (size!24318 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49700)

(declare-fun e!481429 () Bool)

(declare-fun array_inv!18861 (array!49700) Bool)

(assert (=> start!73754 (and (array_inv!18861 _values!688) e!481429)))

(declare-fun b!864127 () Bool)

(declare-fun res!587295 () Bool)

(assert (=> b!864127 (=> (not res!587295) (not e!481426))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!864127 (= res!587295 (and (= (size!24318 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24317 _keys!868) (size!24318 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!864128 () Bool)

(declare-fun res!587292 () Bool)

(assert (=> b!864128 (=> (not res!587292) (not e!481426))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!864128 (= res!587292 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26765 () Bool)

(declare-fun mapRes!26765 () Bool)

(declare-fun tp!51427 () Bool)

(assert (=> mapNonEmpty!26765 (= mapRes!26765 (and tp!51427 e!481430))))

(declare-fun mapValue!26765 () ValueCell!7949)

(declare-fun mapRest!26765 () (Array (_ BitVec 32) ValueCell!7949))

(declare-fun mapKey!26765 () (_ BitVec 32))

(assert (=> mapNonEmpty!26765 (= (arr!23877 _values!688) (store mapRest!26765 mapKey!26765 mapValue!26765))))

(declare-fun b!864129 () Bool)

(declare-fun res!587289 () Bool)

(assert (=> b!864129 (=> (not res!587289) (not e!481426))))

(declare-datatypes ((List!17039 0))(
  ( (Nil!17036) (Cons!17035 (h!18166 (_ BitVec 64)) (t!23954 List!17039)) )
))
(declare-fun arrayNoDuplicates!0 (array!49698 (_ BitVec 32) List!17039) Bool)

(assert (=> b!864129 (= res!587289 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17036))))

(declare-fun b!864130 () Bool)

(declare-fun e!481432 () Bool)

(assert (=> b!864130 (= e!481426 e!481432)))

(declare-fun res!587293 () Bool)

(assert (=> b!864130 (=> (not res!587293) (not e!481432))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!864130 (= res!587293 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!390991 () array!49700)

(declare-fun minValue!654 () V!27417)

(declare-fun zeroValue!654 () V!27417)

(declare-datatypes ((tuple2!11172 0))(
  ( (tuple2!11173 (_1!5596 (_ BitVec 64)) (_2!5596 V!27417)) )
))
(declare-datatypes ((List!17040 0))(
  ( (Nil!17037) (Cons!17036 (h!18167 tuple2!11172) (t!23955 List!17040)) )
))
(declare-datatypes ((ListLongMap!9955 0))(
  ( (ListLongMap!9956 (toList!4993 List!17040)) )
))
(declare-fun lt!390983 () ListLongMap!9955)

(declare-fun getCurrentListMapNoExtraKeys!2966 (array!49698 array!49700 (_ BitVec 32) (_ BitVec 32) V!27417 V!27417 (_ BitVec 32) Int) ListLongMap!9955)

(assert (=> b!864130 (= lt!390983 (getCurrentListMapNoExtraKeys!2966 _keys!868 lt!390991 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27417)

(assert (=> b!864130 (= lt!390991 (array!49701 (store (arr!23877 _values!688) i!612 (ValueCellFull!7949 v!557)) (size!24318 _values!688)))))

(declare-fun lt!390979 () ListLongMap!9955)

(assert (=> b!864130 (= lt!390979 (getCurrentListMapNoExtraKeys!2966 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!864131 () Bool)

(declare-fun e!481428 () Bool)

(assert (=> b!864131 (= e!481428 true)))

(declare-fun lt!390988 () ListLongMap!9955)

(declare-fun lt!390981 () tuple2!11172)

(declare-fun lt!390992 () ListLongMap!9955)

(declare-fun lt!390980 () tuple2!11172)

(declare-fun +!2290 (ListLongMap!9955 tuple2!11172) ListLongMap!9955)

(assert (=> b!864131 (= lt!390988 (+!2290 (+!2290 lt!390992 lt!390980) lt!390981))))

(declare-fun lt!390978 () V!27417)

(declare-datatypes ((Unit!29533 0))(
  ( (Unit!29534) )
))
(declare-fun lt!390986 () Unit!29533)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun addCommutativeForDiffKeys!500 (ListLongMap!9955 (_ BitVec 64) V!27417 (_ BitVec 64) V!27417) Unit!29533)

(assert (=> b!864131 (= lt!390986 (addCommutativeForDiffKeys!500 lt!390992 k!854 v!557 (select (arr!23876 _keys!868) from!1053) lt!390978))))

(declare-fun b!864132 () Bool)

(declare-fun res!587294 () Bool)

(assert (=> b!864132 (=> (not res!587294) (not e!481426))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49698 (_ BitVec 32)) Bool)

(assert (=> b!864132 (= res!587294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!26765 () Bool)

(assert (=> mapIsEmpty!26765 mapRes!26765))

(declare-fun b!864133 () Bool)

(declare-fun res!587297 () Bool)

(assert (=> b!864133 (=> (not res!587297) (not e!481426))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!864133 (= res!587297 (validKeyInArray!0 k!854))))

(declare-fun b!864134 () Bool)

(assert (=> b!864134 (= e!481429 (and e!481427 mapRes!26765))))

(declare-fun condMapEmpty!26765 () Bool)

(declare-fun mapDefault!26765 () ValueCell!7949)

