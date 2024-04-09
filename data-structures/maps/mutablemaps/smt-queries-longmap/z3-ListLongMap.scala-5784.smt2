; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74656 () Bool)

(assert start!74656)

(declare-fun b_free!15297 () Bool)

(declare-fun b_next!15297 () Bool)

(assert (=> start!74656 (= b_free!15297 (not b_next!15297))))

(declare-fun tp!53576 () Bool)

(declare-fun b_and!25215 () Bool)

(assert (=> start!74656 (= tp!53576 b_and!25215)))

(declare-fun b!879315 () Bool)

(declare-fun e!489388 () Bool)

(declare-fun e!489382 () Bool)

(declare-fun mapRes!27930 () Bool)

(assert (=> b!879315 (= e!489388 (and e!489382 mapRes!27930))))

(declare-fun condMapEmpty!27930 () Bool)

(declare-datatypes ((V!28435 0))(
  ( (V!28436 (val!8818 Int)) )
))
(declare-datatypes ((ValueCell!8331 0))(
  ( (ValueCellFull!8331 (v!11258 V!28435)) (EmptyCell!8331) )
))
(declare-datatypes ((array!51190 0))(
  ( (array!51191 (arr!24616 (Array (_ BitVec 32) ValueCell!8331)) (size!25057 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51190)

(declare-fun mapDefault!27930 () ValueCell!8331)

(assert (=> b!879315 (= condMapEmpty!27930 (= (arr!24616 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8331)) mapDefault!27930)))))

(declare-fun b!879316 () Bool)

(declare-fun res!597519 () Bool)

(declare-fun e!489383 () Bool)

(assert (=> b!879316 (=> (not res!597519) (not e!489383))))

(declare-datatypes ((array!51192 0))(
  ( (array!51193 (arr!24617 (Array (_ BitVec 32) (_ BitVec 64))) (size!25058 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51192)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51192 (_ BitVec 32)) Bool)

(assert (=> b!879316 (= res!597519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!879317 () Bool)

(declare-fun res!597523 () Bool)

(assert (=> b!879317 (=> (not res!597523) (not e!489383))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!879317 (= res!597523 (and (= (select (arr!24617 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!879318 () Bool)

(declare-fun res!597515 () Bool)

(assert (=> b!879318 (=> (not res!597515) (not e!489383))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!879318 (= res!597515 (and (= (size!25057 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25058 _keys!868) (size!25057 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!879319 () Bool)

(declare-fun res!597517 () Bool)

(assert (=> b!879319 (=> (not res!597517) (not e!489383))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!879319 (= res!597517 (validKeyInArray!0 k0!854))))

(declare-fun b!879320 () Bool)

(declare-fun e!489384 () Bool)

(assert (=> b!879320 (= e!489384 (bvslt from!1053 (size!25058 _keys!868)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11684 0))(
  ( (tuple2!11685 (_1!5852 (_ BitVec 64)) (_2!5852 V!28435)) )
))
(declare-datatypes ((List!17560 0))(
  ( (Nil!17557) (Cons!17556 (h!18687 tuple2!11684) (t!24667 List!17560)) )
))
(declare-datatypes ((ListLongMap!10467 0))(
  ( (ListLongMap!10468 (toList!5249 List!17560)) )
))
(declare-fun lt!397560 () ListLongMap!10467)

(declare-fun lt!397558 () ListLongMap!10467)

(declare-fun +!2455 (ListLongMap!10467 tuple2!11684) ListLongMap!10467)

(declare-fun get!12951 (ValueCell!8331 V!28435) V!28435)

(declare-fun dynLambda!1226 (Int (_ BitVec 64)) V!28435)

(assert (=> b!879320 (= lt!397560 (+!2455 lt!397558 (tuple2!11685 (select (arr!24617 _keys!868) from!1053) (get!12951 (select (arr!24616 _values!688) from!1053) (dynLambda!1226 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!879321 () Bool)

(declare-fun e!489387 () Bool)

(assert (=> b!879321 (= e!489383 e!489387)))

(declare-fun res!597518 () Bool)

(assert (=> b!879321 (=> (not res!597518) (not e!489387))))

(assert (=> b!879321 (= res!597518 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!397563 () array!51190)

(declare-fun minValue!654 () V!28435)

(declare-fun zeroValue!654 () V!28435)

(declare-fun getCurrentListMapNoExtraKeys!3210 (array!51192 array!51190 (_ BitVec 32) (_ BitVec 32) V!28435 V!28435 (_ BitVec 32) Int) ListLongMap!10467)

(assert (=> b!879321 (= lt!397560 (getCurrentListMapNoExtraKeys!3210 _keys!868 lt!397563 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28435)

(assert (=> b!879321 (= lt!397563 (array!51191 (store (arr!24616 _values!688) i!612 (ValueCellFull!8331 v!557)) (size!25057 _values!688)))))

(declare-fun lt!397557 () ListLongMap!10467)

(assert (=> b!879321 (= lt!397557 (getCurrentListMapNoExtraKeys!3210 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!27930 () Bool)

(declare-fun tp!53577 () Bool)

(declare-fun e!489386 () Bool)

(assert (=> mapNonEmpty!27930 (= mapRes!27930 (and tp!53577 e!489386))))

(declare-fun mapKey!27930 () (_ BitVec 32))

(declare-fun mapValue!27930 () ValueCell!8331)

(declare-fun mapRest!27930 () (Array (_ BitVec 32) ValueCell!8331))

(assert (=> mapNonEmpty!27930 (= (arr!24616 _values!688) (store mapRest!27930 mapKey!27930 mapValue!27930))))

(declare-fun b!879322 () Bool)

(declare-fun tp_is_empty!17541 () Bool)

(assert (=> b!879322 (= e!489382 tp_is_empty!17541)))

(declare-fun b!879323 () Bool)

(declare-fun res!597524 () Bool)

(assert (=> b!879323 (=> (not res!597524) (not e!489383))))

(declare-datatypes ((List!17561 0))(
  ( (Nil!17558) (Cons!17557 (h!18688 (_ BitVec 64)) (t!24668 List!17561)) )
))
(declare-fun arrayNoDuplicates!0 (array!51192 (_ BitVec 32) List!17561) Bool)

(assert (=> b!879323 (= res!597524 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17558))))

(declare-fun b!879324 () Bool)

(declare-fun res!597516 () Bool)

(assert (=> b!879324 (=> (not res!597516) (not e!489383))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!879324 (= res!597516 (validMask!0 mask!1196))))

(declare-fun b!879325 () Bool)

(assert (=> b!879325 (= e!489387 (not e!489384))))

(declare-fun res!597521 () Bool)

(assert (=> b!879325 (=> res!597521 e!489384)))

(assert (=> b!879325 (= res!597521 (not (validKeyInArray!0 (select (arr!24617 _keys!868) from!1053))))))

(declare-fun lt!397559 () ListLongMap!10467)

(assert (=> b!879325 (= lt!397559 lt!397558)))

(declare-fun lt!397562 () ListLongMap!10467)

(assert (=> b!879325 (= lt!397558 (+!2455 lt!397562 (tuple2!11685 k0!854 v!557)))))

(assert (=> b!879325 (= lt!397559 (getCurrentListMapNoExtraKeys!3210 _keys!868 lt!397563 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!879325 (= lt!397562 (getCurrentListMapNoExtraKeys!3210 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29988 0))(
  ( (Unit!29989) )
))
(declare-fun lt!397561 () Unit!29988)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!686 (array!51192 array!51190 (_ BitVec 32) (_ BitVec 32) V!28435 V!28435 (_ BitVec 32) (_ BitVec 64) V!28435 (_ BitVec 32) Int) Unit!29988)

(assert (=> b!879325 (= lt!397561 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!686 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!597520 () Bool)

(assert (=> start!74656 (=> (not res!597520) (not e!489383))))

(assert (=> start!74656 (= res!597520 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25058 _keys!868))))))

(assert (=> start!74656 e!489383))

(assert (=> start!74656 tp_is_empty!17541))

(assert (=> start!74656 true))

(assert (=> start!74656 tp!53576))

(declare-fun array_inv!19378 (array!51192) Bool)

(assert (=> start!74656 (array_inv!19378 _keys!868)))

(declare-fun array_inv!19379 (array!51190) Bool)

(assert (=> start!74656 (and (array_inv!19379 _values!688) e!489388)))

(declare-fun mapIsEmpty!27930 () Bool)

(assert (=> mapIsEmpty!27930 mapRes!27930))

(declare-fun b!879326 () Bool)

(declare-fun res!597522 () Bool)

(assert (=> b!879326 (=> (not res!597522) (not e!489383))))

(assert (=> b!879326 (= res!597522 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25058 _keys!868))))))

(declare-fun b!879327 () Bool)

(assert (=> b!879327 (= e!489386 tp_is_empty!17541)))

(assert (= (and start!74656 res!597520) b!879324))

(assert (= (and b!879324 res!597516) b!879318))

(assert (= (and b!879318 res!597515) b!879316))

(assert (= (and b!879316 res!597519) b!879323))

(assert (= (and b!879323 res!597524) b!879326))

(assert (= (and b!879326 res!597522) b!879319))

(assert (= (and b!879319 res!597517) b!879317))

(assert (= (and b!879317 res!597523) b!879321))

(assert (= (and b!879321 res!597518) b!879325))

(assert (= (and b!879325 (not res!597521)) b!879320))

(assert (= (and b!879315 condMapEmpty!27930) mapIsEmpty!27930))

(assert (= (and b!879315 (not condMapEmpty!27930)) mapNonEmpty!27930))

(get-info :version)

(assert (= (and mapNonEmpty!27930 ((_ is ValueCellFull!8331) mapValue!27930)) b!879327))

(assert (= (and b!879315 ((_ is ValueCellFull!8331) mapDefault!27930)) b!879322))

(assert (= start!74656 b!879315))

(declare-fun b_lambda!12401 () Bool)

(assert (=> (not b_lambda!12401) (not b!879320)))

(declare-fun t!24666 () Bool)

(declare-fun tb!4963 () Bool)

(assert (=> (and start!74656 (= defaultEntry!696 defaultEntry!696) t!24666) tb!4963))

(declare-fun result!9541 () Bool)

(assert (=> tb!4963 (= result!9541 tp_is_empty!17541)))

(assert (=> b!879320 t!24666))

(declare-fun b_and!25217 () Bool)

(assert (= b_and!25215 (and (=> t!24666 result!9541) b_and!25217)))

(declare-fun m!819157 () Bool)

(assert (=> b!879324 m!819157))

(declare-fun m!819159 () Bool)

(assert (=> b!879325 m!819159))

(declare-fun m!819161 () Bool)

(assert (=> b!879325 m!819161))

(declare-fun m!819163 () Bool)

(assert (=> b!879325 m!819163))

(assert (=> b!879325 m!819161))

(declare-fun m!819165 () Bool)

(assert (=> b!879325 m!819165))

(declare-fun m!819167 () Bool)

(assert (=> b!879325 m!819167))

(declare-fun m!819169 () Bool)

(assert (=> b!879325 m!819169))

(declare-fun m!819171 () Bool)

(assert (=> b!879319 m!819171))

(declare-fun m!819173 () Bool)

(assert (=> mapNonEmpty!27930 m!819173))

(declare-fun m!819175 () Bool)

(assert (=> start!74656 m!819175))

(declare-fun m!819177 () Bool)

(assert (=> start!74656 m!819177))

(declare-fun m!819179 () Bool)

(assert (=> b!879321 m!819179))

(declare-fun m!819181 () Bool)

(assert (=> b!879321 m!819181))

(declare-fun m!819183 () Bool)

(assert (=> b!879321 m!819183))

(declare-fun m!819185 () Bool)

(assert (=> b!879323 m!819185))

(declare-fun m!819187 () Bool)

(assert (=> b!879320 m!819187))

(declare-fun m!819189 () Bool)

(assert (=> b!879320 m!819189))

(declare-fun m!819191 () Bool)

(assert (=> b!879320 m!819191))

(declare-fun m!819193 () Bool)

(assert (=> b!879320 m!819193))

(assert (=> b!879320 m!819189))

(assert (=> b!879320 m!819161))

(assert (=> b!879320 m!819191))

(declare-fun m!819195 () Bool)

(assert (=> b!879317 m!819195))

(declare-fun m!819197 () Bool)

(assert (=> b!879316 m!819197))

(check-sat (not b!879325) (not b!879321) (not b_next!15297) (not b!879324) (not start!74656) (not b_lambda!12401) (not b!879320) (not b!879323) (not mapNonEmpty!27930) (not b!879319) (not b!879316) b_and!25217 tp_is_empty!17541)
(check-sat b_and!25217 (not b_next!15297))
