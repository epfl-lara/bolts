; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73392 () Bool)

(assert start!73392)

(declare-fun b_free!14279 () Bool)

(declare-fun b_next!14279 () Bool)

(assert (=> start!73392 (= b_free!14279 (not b_next!14279))))

(declare-fun tp!50341 () Bool)

(declare-fun b_and!23653 () Bool)

(assert (=> start!73392 (= tp!50341 b_and!23653)))

(declare-fun b!855996 () Bool)

(declare-fun e!477202 () Bool)

(declare-fun tp_is_empty!16415 () Bool)

(assert (=> b!855996 (= e!477202 tp_is_empty!16415)))

(declare-fun b!855997 () Bool)

(declare-fun res!581495 () Bool)

(declare-fun e!477200 () Bool)

(assert (=> b!855997 (=> (not res!581495) (not e!477200))))

(declare-datatypes ((array!49000 0))(
  ( (array!49001 (arr!23527 (Array (_ BitVec 32) (_ BitVec 64))) (size!23968 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49000)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49000 (_ BitVec 32)) Bool)

(assert (=> b!855997 (= res!581495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!855998 () Bool)

(declare-fun e!477204 () Bool)

(assert (=> b!855998 (= e!477204 (not true))))

(declare-datatypes ((V!26933 0))(
  ( (V!26934 (val!8255 Int)) )
))
(declare-fun v!557 () V!26933)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun minValue!654 () V!26933)

(declare-fun zeroValue!654 () V!26933)

(declare-datatypes ((ValueCell!7768 0))(
  ( (ValueCellFull!7768 (v!10676 V!26933)) (EmptyCell!7768) )
))
(declare-datatypes ((array!49002 0))(
  ( (array!49003 (arr!23528 (Array (_ BitVec 32) ValueCell!7768)) (size!23969 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49002)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lt!385803 () array!49002)

(declare-datatypes ((tuple2!10870 0))(
  ( (tuple2!10871 (_1!5445 (_ BitVec 64)) (_2!5445 V!26933)) )
))
(declare-datatypes ((List!16745 0))(
  ( (Nil!16742) (Cons!16741 (h!17872 tuple2!10870) (t!23394 List!16745)) )
))
(declare-datatypes ((ListLongMap!9653 0))(
  ( (ListLongMap!9654 (toList!4842 List!16745)) )
))
(declare-fun getCurrentListMapNoExtraKeys!2824 (array!49000 array!49002 (_ BitVec 32) (_ BitVec 32) V!26933 V!26933 (_ BitVec 32) Int) ListLongMap!9653)

(declare-fun +!2154 (ListLongMap!9653 tuple2!10870) ListLongMap!9653)

(assert (=> b!855998 (= (getCurrentListMapNoExtraKeys!2824 _keys!868 lt!385803 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2154 (getCurrentListMapNoExtraKeys!2824 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10871 k!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29150 0))(
  ( (Unit!29151) )
))
(declare-fun lt!385805 () Unit!29150)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!414 (array!49000 array!49002 (_ BitVec 32) (_ BitVec 32) V!26933 V!26933 (_ BitVec 32) (_ BitVec 64) V!26933 (_ BitVec 32) Int) Unit!29150)

(assert (=> b!855998 (= lt!385805 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!414 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!26222 () Bool)

(declare-fun mapRes!26222 () Bool)

(declare-fun tp!50342 () Bool)

(declare-fun e!477201 () Bool)

(assert (=> mapNonEmpty!26222 (= mapRes!26222 (and tp!50342 e!477201))))

(declare-fun mapRest!26222 () (Array (_ BitVec 32) ValueCell!7768))

(declare-fun mapKey!26222 () (_ BitVec 32))

(declare-fun mapValue!26222 () ValueCell!7768)

(assert (=> mapNonEmpty!26222 (= (arr!23528 _values!688) (store mapRest!26222 mapKey!26222 mapValue!26222))))

(declare-fun mapIsEmpty!26222 () Bool)

(assert (=> mapIsEmpty!26222 mapRes!26222))

(declare-fun b!855999 () Bool)

(declare-fun res!581488 () Bool)

(assert (=> b!855999 (=> (not res!581488) (not e!477200))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855999 (= res!581488 (validKeyInArray!0 k!854))))

(declare-fun b!856000 () Bool)

(declare-fun res!581490 () Bool)

(assert (=> b!856000 (=> (not res!581490) (not e!477200))))

(assert (=> b!856000 (= res!581490 (and (= (size!23969 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23968 _keys!868) (size!23969 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!856001 () Bool)

(assert (=> b!856001 (= e!477200 e!477204)))

(declare-fun res!581489 () Bool)

(assert (=> b!856001 (=> (not res!581489) (not e!477204))))

(assert (=> b!856001 (= res!581489 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!385804 () ListLongMap!9653)

(assert (=> b!856001 (= lt!385804 (getCurrentListMapNoExtraKeys!2824 _keys!868 lt!385803 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!856001 (= lt!385803 (array!49003 (store (arr!23528 _values!688) i!612 (ValueCellFull!7768 v!557)) (size!23969 _values!688)))))

(declare-fun lt!385806 () ListLongMap!9653)

(assert (=> b!856001 (= lt!385806 (getCurrentListMapNoExtraKeys!2824 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!581492 () Bool)

(assert (=> start!73392 (=> (not res!581492) (not e!477200))))

(assert (=> start!73392 (= res!581492 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23968 _keys!868))))))

(assert (=> start!73392 e!477200))

(assert (=> start!73392 tp_is_empty!16415))

(assert (=> start!73392 true))

(assert (=> start!73392 tp!50341))

(declare-fun array_inv!18624 (array!49000) Bool)

(assert (=> start!73392 (array_inv!18624 _keys!868)))

(declare-fun e!477203 () Bool)

(declare-fun array_inv!18625 (array!49002) Bool)

(assert (=> start!73392 (and (array_inv!18625 _values!688) e!477203)))

(declare-fun b!856002 () Bool)

(declare-fun res!581494 () Bool)

(assert (=> b!856002 (=> (not res!581494) (not e!477200))))

(assert (=> b!856002 (= res!581494 (and (= (select (arr!23527 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!856003 () Bool)

(assert (=> b!856003 (= e!477201 tp_is_empty!16415)))

(declare-fun b!856004 () Bool)

(declare-fun res!581496 () Bool)

(assert (=> b!856004 (=> (not res!581496) (not e!477200))))

(assert (=> b!856004 (= res!581496 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23968 _keys!868))))))

(declare-fun b!856005 () Bool)

(declare-fun res!581491 () Bool)

(assert (=> b!856005 (=> (not res!581491) (not e!477200))))

(declare-datatypes ((List!16746 0))(
  ( (Nil!16743) (Cons!16742 (h!17873 (_ BitVec 64)) (t!23395 List!16746)) )
))
(declare-fun arrayNoDuplicates!0 (array!49000 (_ BitVec 32) List!16746) Bool)

(assert (=> b!856005 (= res!581491 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16743))))

(declare-fun b!856006 () Bool)

(declare-fun res!581493 () Bool)

(assert (=> b!856006 (=> (not res!581493) (not e!477200))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!856006 (= res!581493 (validMask!0 mask!1196))))

(declare-fun b!856007 () Bool)

(assert (=> b!856007 (= e!477203 (and e!477202 mapRes!26222))))

(declare-fun condMapEmpty!26222 () Bool)

(declare-fun mapDefault!26222 () ValueCell!7768)

