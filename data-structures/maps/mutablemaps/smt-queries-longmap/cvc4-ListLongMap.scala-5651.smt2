; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73722 () Bool)

(assert start!73722)

(declare-fun b_free!14609 () Bool)

(declare-fun b_next!14609 () Bool)

(assert (=> start!73722 (= b_free!14609 (not b_next!14609))))

(declare-fun tp!51331 () Bool)

(declare-fun b_and!24215 () Bool)

(assert (=> start!73722 (= tp!51331 b_and!24215)))

(declare-fun b!863325 () Bool)

(declare-fun res!586763 () Bool)

(declare-fun e!480994 () Bool)

(assert (=> b!863325 (=> (not res!586763) (not e!480994))))

(declare-datatypes ((array!49634 0))(
  ( (array!49635 (arr!23844 (Array (_ BitVec 32) (_ BitVec 64))) (size!24285 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49634)

(declare-datatypes ((List!17009 0))(
  ( (Nil!17006) (Cons!17005 (h!18136 (_ BitVec 64)) (t!23892 List!17009)) )
))
(declare-fun arrayNoDuplicates!0 (array!49634 (_ BitVec 32) List!17009) Bool)

(assert (=> b!863325 (= res!586763 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17006))))

(declare-fun b!863326 () Bool)

(declare-fun res!586764 () Bool)

(assert (=> b!863326 (=> (not res!586764) (not e!480994))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49634 (_ BitVec 32)) Bool)

(assert (=> b!863326 (= res!586764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!863327 () Bool)

(declare-fun e!480997 () Bool)

(assert (=> b!863327 (= e!480994 e!480997)))

(declare-fun res!586769 () Bool)

(assert (=> b!863327 (=> (not res!586769) (not e!480997))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!863327 (= res!586769 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27373 0))(
  ( (V!27374 (val!8420 Int)) )
))
(declare-datatypes ((ValueCell!7933 0))(
  ( (ValueCellFull!7933 (v!10841 V!27373)) (EmptyCell!7933) )
))
(declare-datatypes ((array!49636 0))(
  ( (array!49637 (arr!23845 (Array (_ BitVec 32) ValueCell!7933)) (size!24286 (_ BitVec 32))) )
))
(declare-fun lt!390218 () array!49636)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11140 0))(
  ( (tuple2!11141 (_1!5580 (_ BitVec 64)) (_2!5580 V!27373)) )
))
(declare-datatypes ((List!17010 0))(
  ( (Nil!17007) (Cons!17006 (h!18137 tuple2!11140) (t!23893 List!17010)) )
))
(declare-datatypes ((ListLongMap!9923 0))(
  ( (ListLongMap!9924 (toList!4977 List!17010)) )
))
(declare-fun lt!390219 () ListLongMap!9923)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27373)

(declare-fun zeroValue!654 () V!27373)

(declare-fun getCurrentListMapNoExtraKeys!2952 (array!49634 array!49636 (_ BitVec 32) (_ BitVec 32) V!27373 V!27373 (_ BitVec 32) Int) ListLongMap!9923)

(assert (=> b!863327 (= lt!390219 (getCurrentListMapNoExtraKeys!2952 _keys!868 lt!390218 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27373)

(declare-fun _values!688 () array!49636)

(assert (=> b!863327 (= lt!390218 (array!49637 (store (arr!23845 _values!688) i!612 (ValueCellFull!7933 v!557)) (size!24286 _values!688)))))

(declare-fun lt!390221 () ListLongMap!9923)

(assert (=> b!863327 (= lt!390221 (getCurrentListMapNoExtraKeys!2952 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!863328 () Bool)

(declare-fun res!586770 () Bool)

(assert (=> b!863328 (=> (not res!586770) (not e!480994))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!863328 (= res!586770 (validMask!0 mask!1196))))

(declare-fun b!863329 () Bool)

(declare-fun e!481000 () Bool)

(assert (=> b!863329 (= e!480997 (not e!481000))))

(declare-fun res!586766 () Bool)

(assert (=> b!863329 (=> res!586766 e!481000)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!863329 (= res!586766 (not (validKeyInArray!0 (select (arr!23844 _keys!868) from!1053))))))

(declare-fun lt!390216 () ListLongMap!9923)

(declare-fun lt!390212 () ListLongMap!9923)

(assert (=> b!863329 (= lt!390216 lt!390212)))

(declare-fun lt!390222 () ListLongMap!9923)

(declare-fun lt!390213 () tuple2!11140)

(declare-fun +!2274 (ListLongMap!9923 tuple2!11140) ListLongMap!9923)

(assert (=> b!863329 (= lt!390212 (+!2274 lt!390222 lt!390213))))

(assert (=> b!863329 (= lt!390216 (getCurrentListMapNoExtraKeys!2952 _keys!868 lt!390218 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!863329 (= lt!390213 (tuple2!11141 k!854 v!557))))

(assert (=> b!863329 (= lt!390222 (getCurrentListMapNoExtraKeys!2952 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29477 0))(
  ( (Unit!29478) )
))
(declare-fun lt!390217 () Unit!29477)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!521 (array!49634 array!49636 (_ BitVec 32) (_ BitVec 32) V!27373 V!27373 (_ BitVec 32) (_ BitVec 64) V!27373 (_ BitVec 32) Int) Unit!29477)

(assert (=> b!863329 (= lt!390217 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!521 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!863330 () Bool)

(declare-fun res!586765 () Bool)

(assert (=> b!863330 (=> (not res!586765) (not e!480994))))

(assert (=> b!863330 (= res!586765 (validKeyInArray!0 k!854))))

(declare-fun b!863331 () Bool)

(declare-fun res!586762 () Bool)

(assert (=> b!863331 (=> (not res!586762) (not e!480994))))

(assert (=> b!863331 (= res!586762 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24285 _keys!868))))))

(declare-fun b!863332 () Bool)

(declare-fun e!480999 () Bool)

(assert (=> b!863332 (= e!481000 e!480999)))

(declare-fun res!586761 () Bool)

(assert (=> b!863332 (=> res!586761 e!480999)))

(assert (=> b!863332 (= res!586761 (= k!854 (select (arr!23844 _keys!868) from!1053)))))

(assert (=> b!863332 (not (= (select (arr!23844 _keys!868) from!1053) k!854))))

(declare-fun lt!390214 () Unit!29477)

(declare-fun e!480998 () Unit!29477)

(assert (=> b!863332 (= lt!390214 e!480998)))

(declare-fun c!92052 () Bool)

(assert (=> b!863332 (= c!92052 (= (select (arr!23844 _keys!868) from!1053) k!854))))

(declare-fun lt!390215 () ListLongMap!9923)

(assert (=> b!863332 (= lt!390219 lt!390215)))

(declare-fun lt!390223 () tuple2!11140)

(assert (=> b!863332 (= lt!390215 (+!2274 lt!390212 lt!390223))))

(declare-fun lt!390210 () V!27373)

(assert (=> b!863332 (= lt!390223 (tuple2!11141 (select (arr!23844 _keys!868) from!1053) lt!390210))))

(declare-fun get!12602 (ValueCell!7933 V!27373) V!27373)

(declare-fun dynLambda!1150 (Int (_ BitVec 64)) V!27373)

(assert (=> b!863332 (= lt!390210 (get!12602 (select (arr!23845 _values!688) from!1053) (dynLambda!1150 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!586760 () Bool)

(assert (=> start!73722 (=> (not res!586760) (not e!480994))))

(assert (=> start!73722 (= res!586760 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24285 _keys!868))))))

(assert (=> start!73722 e!480994))

(declare-fun tp_is_empty!16745 () Bool)

(assert (=> start!73722 tp_is_empty!16745))

(assert (=> start!73722 true))

(assert (=> start!73722 tp!51331))

(declare-fun array_inv!18838 (array!49634) Bool)

(assert (=> start!73722 (array_inv!18838 _keys!868)))

(declare-fun e!480996 () Bool)

(declare-fun array_inv!18839 (array!49636) Bool)

(assert (=> start!73722 (and (array_inv!18839 _values!688) e!480996)))

(declare-fun b!863333 () Bool)

(assert (=> b!863333 (= e!480999 true)))

(assert (=> b!863333 (= lt!390215 (+!2274 (+!2274 lt!390222 lt!390223) lt!390213))))

(declare-fun lt!390224 () Unit!29477)

(declare-fun addCommutativeForDiffKeys!487 (ListLongMap!9923 (_ BitVec 64) V!27373 (_ BitVec 64) V!27373) Unit!29477)

(assert (=> b!863333 (= lt!390224 (addCommutativeForDiffKeys!487 lt!390222 k!854 v!557 (select (arr!23844 _keys!868) from!1053) lt!390210))))

(declare-fun mapIsEmpty!26717 () Bool)

(declare-fun mapRes!26717 () Bool)

(assert (=> mapIsEmpty!26717 mapRes!26717))

(declare-fun b!863334 () Bool)

(declare-fun res!586767 () Bool)

(assert (=> b!863334 (=> (not res!586767) (not e!480994))))

(assert (=> b!863334 (= res!586767 (and (= (size!24286 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24285 _keys!868) (size!24286 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!26717 () Bool)

(declare-fun tp!51332 () Bool)

(declare-fun e!481001 () Bool)

(assert (=> mapNonEmpty!26717 (= mapRes!26717 (and tp!51332 e!481001))))

(declare-fun mapRest!26717 () (Array (_ BitVec 32) ValueCell!7933))

(declare-fun mapKey!26717 () (_ BitVec 32))

(declare-fun mapValue!26717 () ValueCell!7933)

(assert (=> mapNonEmpty!26717 (= (arr!23845 _values!688) (store mapRest!26717 mapKey!26717 mapValue!26717))))

(declare-fun b!863335 () Bool)

(declare-fun Unit!29479 () Unit!29477)

(assert (=> b!863335 (= e!480998 Unit!29479)))

(declare-fun b!863336 () Bool)

(declare-fun e!481002 () Bool)

(assert (=> b!863336 (= e!480996 (and e!481002 mapRes!26717))))

(declare-fun condMapEmpty!26717 () Bool)

(declare-fun mapDefault!26717 () ValueCell!7933)

