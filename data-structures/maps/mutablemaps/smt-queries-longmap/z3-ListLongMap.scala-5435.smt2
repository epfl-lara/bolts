; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72424 () Bool)

(assert start!72424)

(declare-fun b_free!13581 () Bool)

(declare-fun b_next!13581 () Bool)

(assert (=> start!72424 (= b_free!13581 (not b_next!13581))))

(declare-fun tp!47843 () Bool)

(declare-fun b_and!22685 () Bool)

(assert (=> start!72424 (= tp!47843 b_and!22685)))

(declare-fun mapIsEmpty!24770 () Bool)

(declare-fun mapRes!24770 () Bool)

(assert (=> mapIsEmpty!24770 mapRes!24770))

(declare-fun b!838991 () Bool)

(declare-fun e!468293 () Bool)

(declare-fun e!468290 () Bool)

(assert (=> b!838991 (= e!468293 (and e!468290 mapRes!24770))))

(declare-fun condMapEmpty!24770 () Bool)

(declare-datatypes ((V!25643 0))(
  ( (V!25644 (val!7771 Int)) )
))
(declare-datatypes ((ValueCell!7284 0))(
  ( (ValueCellFull!7284 (v!10192 V!25643)) (EmptyCell!7284) )
))
(declare-datatypes ((array!47146 0))(
  ( (array!47147 (arr!22600 (Array (_ BitVec 32) ValueCell!7284)) (size!23041 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47146)

(declare-fun mapDefault!24770 () ValueCell!7284)

(assert (=> b!838991 (= condMapEmpty!24770 (= (arr!22600 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7284)) mapDefault!24770)))))

(declare-fun res!570578 () Bool)

(declare-fun e!468294 () Bool)

(assert (=> start!72424 (=> (not res!570578) (not e!468294))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47148 0))(
  ( (array!47149 (arr!22601 (Array (_ BitVec 32) (_ BitVec 64))) (size!23042 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47148)

(assert (=> start!72424 (= res!570578 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23042 _keys!868))))))

(assert (=> start!72424 e!468294))

(declare-fun tp_is_empty!15447 () Bool)

(assert (=> start!72424 tp_is_empty!15447))

(assert (=> start!72424 true))

(assert (=> start!72424 tp!47843))

(declare-fun array_inv!17978 (array!47148) Bool)

(assert (=> start!72424 (array_inv!17978 _keys!868)))

(declare-fun array_inv!17979 (array!47146) Bool)

(assert (=> start!72424 (and (array_inv!17979 _values!688) e!468293)))

(declare-datatypes ((tuple2!10304 0))(
  ( (tuple2!10305 (_1!5162 (_ BitVec 64)) (_2!5162 V!25643)) )
))
(declare-datatypes ((List!16138 0))(
  ( (Nil!16135) (Cons!16134 (h!17265 tuple2!10304) (t!22517 List!16138)) )
))
(declare-datatypes ((ListLongMap!9087 0))(
  ( (ListLongMap!9088 (toList!4559 List!16138)) )
))
(declare-fun call!36976 () ListLongMap!9087)

(declare-fun v!557 () V!25643)

(declare-fun call!36977 () ListLongMap!9087)

(declare-fun b!838992 () Bool)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun e!468292 () Bool)

(declare-fun +!1979 (ListLongMap!9087 tuple2!10304) ListLongMap!9087)

(assert (=> b!838992 (= e!468292 (= call!36977 (+!1979 call!36976 (tuple2!10305 k0!854 v!557))))))

(declare-fun b!838993 () Bool)

(declare-fun res!570582 () Bool)

(assert (=> b!838993 (=> (not res!570582) (not e!468294))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!838993 (= res!570582 (validKeyInArray!0 k0!854))))

(declare-fun b!838994 () Bool)

(declare-fun res!570579 () Bool)

(assert (=> b!838994 (=> (not res!570579) (not e!468294))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!838994 (= res!570579 (and (= (size!23041 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23042 _keys!868) (size!23041 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!838995 () Bool)

(declare-fun e!468289 () Bool)

(assert (=> b!838995 (= e!468289 tp_is_empty!15447)))

(declare-fun b!838996 () Bool)

(declare-fun res!570581 () Bool)

(assert (=> b!838996 (=> (not res!570581) (not e!468294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47148 (_ BitVec 32)) Bool)

(assert (=> b!838996 (= res!570581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!838997 () Bool)

(declare-fun res!570576 () Bool)

(assert (=> b!838997 (=> (not res!570576) (not e!468294))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!838997 (= res!570576 (and (= (select (arr!22601 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23042 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!838998 () Bool)

(declare-fun res!570575 () Bool)

(assert (=> b!838998 (=> (not res!570575) (not e!468294))))

(assert (=> b!838998 (= res!570575 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23042 _keys!868))))))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!36973 () Bool)

(declare-fun minValue!654 () V!25643)

(declare-fun zeroValue!654 () V!25643)

(declare-fun getCurrentListMapNoExtraKeys!2554 (array!47148 array!47146 (_ BitVec 32) (_ BitVec 32) V!25643 V!25643 (_ BitVec 32) Int) ListLongMap!9087)

(assert (=> bm!36973 (= call!36976 (getCurrentListMapNoExtraKeys!2554 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838999 () Bool)

(assert (=> b!838999 (= e!468290 tp_is_empty!15447)))

(declare-fun b!839000 () Bool)

(assert (=> b!839000 (= e!468292 (= call!36977 call!36976))))

(declare-fun b!839001 () Bool)

(assert (=> b!839001 (= e!468294 (not true))))

(assert (=> b!839001 e!468292))

(declare-fun c!91149 () Bool)

(assert (=> b!839001 (= c!91149 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28810 0))(
  ( (Unit!28811) )
))
(declare-fun lt!380682 () Unit!28810)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!254 (array!47148 array!47146 (_ BitVec 32) (_ BitVec 32) V!25643 V!25643 (_ BitVec 32) (_ BitVec 64) V!25643 (_ BitVec 32) Int) Unit!28810)

(assert (=> b!839001 (= lt!380682 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!254 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839002 () Bool)

(declare-fun res!570577 () Bool)

(assert (=> b!839002 (=> (not res!570577) (not e!468294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!839002 (= res!570577 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!24770 () Bool)

(declare-fun tp!47842 () Bool)

(assert (=> mapNonEmpty!24770 (= mapRes!24770 (and tp!47842 e!468289))))

(declare-fun mapKey!24770 () (_ BitVec 32))

(declare-fun mapRest!24770 () (Array (_ BitVec 32) ValueCell!7284))

(declare-fun mapValue!24770 () ValueCell!7284)

(assert (=> mapNonEmpty!24770 (= (arr!22600 _values!688) (store mapRest!24770 mapKey!24770 mapValue!24770))))

(declare-fun b!839003 () Bool)

(declare-fun res!570580 () Bool)

(assert (=> b!839003 (=> (not res!570580) (not e!468294))))

(declare-datatypes ((List!16139 0))(
  ( (Nil!16136) (Cons!16135 (h!17266 (_ BitVec 64)) (t!22518 List!16139)) )
))
(declare-fun arrayNoDuplicates!0 (array!47148 (_ BitVec 32) List!16139) Bool)

(assert (=> b!839003 (= res!570580 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16136))))

(declare-fun bm!36974 () Bool)

(assert (=> bm!36974 (= call!36977 (getCurrentListMapNoExtraKeys!2554 _keys!868 (array!47147 (store (arr!22600 _values!688) i!612 (ValueCellFull!7284 v!557)) (size!23041 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!72424 res!570578) b!839002))

(assert (= (and b!839002 res!570577) b!838994))

(assert (= (and b!838994 res!570579) b!838996))

(assert (= (and b!838996 res!570581) b!839003))

(assert (= (and b!839003 res!570580) b!838998))

(assert (= (and b!838998 res!570575) b!838993))

(assert (= (and b!838993 res!570582) b!838997))

(assert (= (and b!838997 res!570576) b!839001))

(assert (= (and b!839001 c!91149) b!838992))

(assert (= (and b!839001 (not c!91149)) b!839000))

(assert (= (or b!838992 b!839000) bm!36974))

(assert (= (or b!838992 b!839000) bm!36973))

(assert (= (and b!838991 condMapEmpty!24770) mapIsEmpty!24770))

(assert (= (and b!838991 (not condMapEmpty!24770)) mapNonEmpty!24770))

(get-info :version)

(assert (= (and mapNonEmpty!24770 ((_ is ValueCellFull!7284) mapValue!24770)) b!838995))

(assert (= (and b!838991 ((_ is ValueCellFull!7284) mapDefault!24770)) b!838999))

(assert (= start!72424 b!838991))

(declare-fun m!783307 () Bool)

(assert (=> b!838992 m!783307))

(declare-fun m!783309 () Bool)

(assert (=> b!839002 m!783309))

(declare-fun m!783311 () Bool)

(assert (=> bm!36974 m!783311))

(declare-fun m!783313 () Bool)

(assert (=> bm!36974 m!783313))

(declare-fun m!783315 () Bool)

(assert (=> bm!36973 m!783315))

(declare-fun m!783317 () Bool)

(assert (=> start!72424 m!783317))

(declare-fun m!783319 () Bool)

(assert (=> start!72424 m!783319))

(declare-fun m!783321 () Bool)

(assert (=> b!838993 m!783321))

(declare-fun m!783323 () Bool)

(assert (=> b!838996 m!783323))

(declare-fun m!783325 () Bool)

(assert (=> b!838997 m!783325))

(declare-fun m!783327 () Bool)

(assert (=> b!839001 m!783327))

(declare-fun m!783329 () Bool)

(assert (=> mapNonEmpty!24770 m!783329))

(declare-fun m!783331 () Bool)

(assert (=> b!839003 m!783331))

(check-sat (not b!839002) (not b!838993) (not mapNonEmpty!24770) (not start!72424) (not b!838992) (not b_next!13581) (not b!839003) (not b!838996) (not bm!36974) b_and!22685 (not b!839001) (not bm!36973) tp_is_empty!15447)
(check-sat b_and!22685 (not b_next!13581))
