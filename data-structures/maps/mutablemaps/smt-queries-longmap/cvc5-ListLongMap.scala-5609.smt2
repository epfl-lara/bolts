; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73466 () Bool)

(assert start!73466)

(declare-fun b_free!14353 () Bool)

(declare-fun b_next!14353 () Bool)

(assert (=> start!73466 (= b_free!14353 (not b_next!14353))))

(declare-fun tp!50563 () Bool)

(declare-fun b_and!23727 () Bool)

(assert (=> start!73466 (= tp!50563 b_and!23727)))

(declare-fun b!857328 () Bool)

(declare-fun res!582493 () Bool)

(declare-fun e!477869 () Bool)

(assert (=> b!857328 (=> (not res!582493) (not e!477869))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!857328 (= res!582493 (validKeyInArray!0 k!854))))

(declare-fun b!857329 () Bool)

(declare-fun res!582489 () Bool)

(assert (=> b!857329 (=> (not res!582489) (not e!477869))))

(declare-datatypes ((array!49142 0))(
  ( (array!49143 (arr!23598 (Array (_ BitVec 32) (_ BitVec 64))) (size!24039 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49142)

(declare-datatypes ((List!16797 0))(
  ( (Nil!16794) (Cons!16793 (h!17924 (_ BitVec 64)) (t!23446 List!16797)) )
))
(declare-fun arrayNoDuplicates!0 (array!49142 (_ BitVec 32) List!16797) Bool)

(assert (=> b!857329 (= res!582489 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16794))))

(declare-fun b!857330 () Bool)

(declare-fun e!477865 () Bool)

(declare-fun tp_is_empty!16489 () Bool)

(assert (=> b!857330 (= e!477865 tp_is_empty!16489)))

(declare-fun b!857331 () Bool)

(declare-fun e!477870 () Bool)

(assert (=> b!857331 (= e!477870 (not true))))

(declare-datatypes ((V!27033 0))(
  ( (V!27034 (val!8292 Int)) )
))
(declare-fun v!557 () V!27033)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7805 0))(
  ( (ValueCellFull!7805 (v!10713 V!27033)) (EmptyCell!7805) )
))
(declare-datatypes ((array!49144 0))(
  ( (array!49145 (arr!23599 (Array (_ BitVec 32) ValueCell!7805)) (size!24040 (_ BitVec 32))) )
))
(declare-fun lt!386250 () array!49144)

(declare-fun _values!688 () array!49144)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!27033)

(declare-fun zeroValue!654 () V!27033)

(declare-datatypes ((tuple2!10924 0))(
  ( (tuple2!10925 (_1!5472 (_ BitVec 64)) (_2!5472 V!27033)) )
))
(declare-datatypes ((List!16798 0))(
  ( (Nil!16795) (Cons!16794 (h!17925 tuple2!10924) (t!23447 List!16798)) )
))
(declare-datatypes ((ListLongMap!9707 0))(
  ( (ListLongMap!9708 (toList!4869 List!16798)) )
))
(declare-fun getCurrentListMapNoExtraKeys!2851 (array!49142 array!49144 (_ BitVec 32) (_ BitVec 32) V!27033 V!27033 (_ BitVec 32) Int) ListLongMap!9707)

(declare-fun +!2177 (ListLongMap!9707 tuple2!10924) ListLongMap!9707)

(assert (=> b!857331 (= (getCurrentListMapNoExtraKeys!2851 _keys!868 lt!386250 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2177 (getCurrentListMapNoExtraKeys!2851 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10925 k!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29196 0))(
  ( (Unit!29197) )
))
(declare-fun lt!386249 () Unit!29196)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!437 (array!49142 array!49144 (_ BitVec 32) (_ BitVec 32) V!27033 V!27033 (_ BitVec 32) (_ BitVec 64) V!27033 (_ BitVec 32) Int) Unit!29196)

(assert (=> b!857331 (= lt!386249 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!437 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!857332 () Bool)

(assert (=> b!857332 (= e!477869 e!477870)))

(declare-fun res!582492 () Bool)

(assert (=> b!857332 (=> (not res!582492) (not e!477870))))

(assert (=> b!857332 (= res!582492 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!386247 () ListLongMap!9707)

(assert (=> b!857332 (= lt!386247 (getCurrentListMapNoExtraKeys!2851 _keys!868 lt!386250 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!857332 (= lt!386250 (array!49145 (store (arr!23599 _values!688) i!612 (ValueCellFull!7805 v!557)) (size!24040 _values!688)))))

(declare-fun lt!386248 () ListLongMap!9707)

(assert (=> b!857332 (= lt!386248 (getCurrentListMapNoExtraKeys!2851 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!857333 () Bool)

(declare-fun res!582490 () Bool)

(assert (=> b!857333 (=> (not res!582490) (not e!477869))))

(assert (=> b!857333 (= res!582490 (and (= (size!24040 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24039 _keys!868) (size!24040 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!857334 () Bool)

(declare-fun e!477867 () Bool)

(assert (=> b!857334 (= e!477867 tp_is_empty!16489)))

(declare-fun b!857335 () Bool)

(declare-fun res!582487 () Bool)

(assert (=> b!857335 (=> (not res!582487) (not e!477869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!857335 (= res!582487 (validMask!0 mask!1196))))

(declare-fun b!857336 () Bool)

(declare-fun res!582491 () Bool)

(assert (=> b!857336 (=> (not res!582491) (not e!477869))))

(assert (=> b!857336 (= res!582491 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24039 _keys!868))))))

(declare-fun b!857337 () Bool)

(declare-fun res!582488 () Bool)

(assert (=> b!857337 (=> (not res!582488) (not e!477869))))

(assert (=> b!857337 (= res!582488 (and (= (select (arr!23598 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!857338 () Bool)

(declare-fun e!477868 () Bool)

(declare-fun mapRes!26333 () Bool)

(assert (=> b!857338 (= e!477868 (and e!477867 mapRes!26333))))

(declare-fun condMapEmpty!26333 () Bool)

(declare-fun mapDefault!26333 () ValueCell!7805)

