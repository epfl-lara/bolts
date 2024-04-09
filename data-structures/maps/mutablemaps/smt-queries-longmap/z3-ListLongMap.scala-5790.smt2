; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74712 () Bool)

(assert start!74712)

(declare-fun b_free!15333 () Bool)

(declare-fun b_next!15333 () Bool)

(assert (=> start!74712 (= b_free!15333 (not b_next!15333))))

(declare-fun tp!53687 () Bool)

(declare-fun b_and!25303 () Bool)

(assert (=> start!74712 (= tp!53687 b_and!25303)))

(declare-fun b!880188 () Bool)

(declare-fun res!598114 () Bool)

(declare-fun e!489852 () Bool)

(assert (=> b!880188 (=> (not res!598114) (not e!489852))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!880188 (= res!598114 (validKeyInArray!0 k0!854))))

(declare-fun b!880189 () Bool)

(declare-fun res!598111 () Bool)

(assert (=> b!880189 (=> (not res!598111) (not e!489852))))

(declare-datatypes ((array!51262 0))(
  ( (array!51263 (arr!24651 (Array (_ BitVec 32) (_ BitVec 64))) (size!25092 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51262)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51262 (_ BitVec 32)) Bool)

(assert (=> b!880189 (= res!598111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!880190 () Bool)

(declare-fun res!598118 () Bool)

(assert (=> b!880190 (=> (not res!598118) (not e!489852))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!880190 (= res!598118 (validMask!0 mask!1196))))

(declare-fun res!598115 () Bool)

(assert (=> start!74712 (=> (not res!598115) (not e!489852))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74712 (= res!598115 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25092 _keys!868))))))

(assert (=> start!74712 e!489852))

(declare-fun tp_is_empty!17577 () Bool)

(assert (=> start!74712 tp_is_empty!17577))

(assert (=> start!74712 true))

(assert (=> start!74712 tp!53687))

(declare-fun array_inv!19406 (array!51262) Bool)

(assert (=> start!74712 (array_inv!19406 _keys!868)))

(declare-datatypes ((V!28483 0))(
  ( (V!28484 (val!8836 Int)) )
))
(declare-datatypes ((ValueCell!8349 0))(
  ( (ValueCellFull!8349 (v!11280 V!28483)) (EmptyCell!8349) )
))
(declare-datatypes ((array!51264 0))(
  ( (array!51265 (arr!24652 (Array (_ BitVec 32) ValueCell!8349)) (size!25093 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51264)

(declare-fun e!489849 () Bool)

(declare-fun array_inv!19407 (array!51264) Bool)

(assert (=> start!74712 (and (array_inv!19407 _values!688) e!489849)))

(declare-fun b!880191 () Bool)

(declare-fun res!598112 () Bool)

(assert (=> b!880191 (=> (not res!598112) (not e!489852))))

(declare-datatypes ((List!17589 0))(
  ( (Nil!17586) (Cons!17585 (h!18716 (_ BitVec 64)) (t!24732 List!17589)) )
))
(declare-fun arrayNoDuplicates!0 (array!51262 (_ BitVec 32) List!17589) Bool)

(assert (=> b!880191 (= res!598112 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17586))))

(declare-fun b!880192 () Bool)

(declare-fun e!489854 () Bool)

(assert (=> b!880192 (= e!489854 true)))

(assert (=> b!880192 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17586)))

(declare-datatypes ((Unit!30018 0))(
  ( (Unit!30019) )
))
(declare-fun lt!398014 () Unit!30018)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51262 (_ BitVec 32) (_ BitVec 32)) Unit!30018)

(assert (=> b!880192 (= lt!398014 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!880193 () Bool)

(declare-fun e!489851 () Bool)

(assert (=> b!880193 (= e!489851 tp_is_empty!17577)))

(declare-fun b!880194 () Bool)

(declare-fun res!598119 () Bool)

(assert (=> b!880194 (=> (not res!598119) (not e!489852))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!880194 (= res!598119 (and (= (select (arr!24651 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!27987 () Bool)

(declare-fun mapRes!27987 () Bool)

(declare-fun tp!53688 () Bool)

(assert (=> mapNonEmpty!27987 (= mapRes!27987 (and tp!53688 e!489851))))

(declare-fun mapRest!27987 () (Array (_ BitVec 32) ValueCell!8349))

(declare-fun mapValue!27987 () ValueCell!8349)

(declare-fun mapKey!27987 () (_ BitVec 32))

(assert (=> mapNonEmpty!27987 (= (arr!24652 _values!688) (store mapRest!27987 mapKey!27987 mapValue!27987))))

(declare-fun mapIsEmpty!27987 () Bool)

(assert (=> mapIsEmpty!27987 mapRes!27987))

(declare-fun b!880195 () Bool)

(declare-fun e!489853 () Bool)

(declare-fun e!489850 () Bool)

(assert (=> b!880195 (= e!489853 (not e!489850))))

(declare-fun res!598113 () Bool)

(assert (=> b!880195 (=> res!598113 e!489850)))

(assert (=> b!880195 (= res!598113 (not (validKeyInArray!0 (select (arr!24651 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11716 0))(
  ( (tuple2!11717 (_1!5868 (_ BitVec 64)) (_2!5868 V!28483)) )
))
(declare-datatypes ((List!17590 0))(
  ( (Nil!17587) (Cons!17586 (h!18717 tuple2!11716) (t!24733 List!17590)) )
))
(declare-datatypes ((ListLongMap!10499 0))(
  ( (ListLongMap!10500 (toList!5265 List!17590)) )
))
(declare-fun lt!398017 () ListLongMap!10499)

(declare-fun lt!398011 () ListLongMap!10499)

(assert (=> b!880195 (= lt!398017 lt!398011)))

(declare-fun v!557 () V!28483)

(declare-fun lt!398013 () ListLongMap!10499)

(declare-fun +!2471 (ListLongMap!10499 tuple2!11716) ListLongMap!10499)

(assert (=> b!880195 (= lt!398011 (+!2471 lt!398013 (tuple2!11717 k0!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!398016 () array!51264)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!28483)

(declare-fun zeroValue!654 () V!28483)

(declare-fun getCurrentListMapNoExtraKeys!3225 (array!51262 array!51264 (_ BitVec 32) (_ BitVec 32) V!28483 V!28483 (_ BitVec 32) Int) ListLongMap!10499)

(assert (=> b!880195 (= lt!398017 (getCurrentListMapNoExtraKeys!3225 _keys!868 lt!398016 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!880195 (= lt!398013 (getCurrentListMapNoExtraKeys!3225 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!398015 () Unit!30018)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!701 (array!51262 array!51264 (_ BitVec 32) (_ BitVec 32) V!28483 V!28483 (_ BitVec 32) (_ BitVec 64) V!28483 (_ BitVec 32) Int) Unit!30018)

(assert (=> b!880195 (= lt!398015 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!701 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!880196 () Bool)

(declare-fun e!489848 () Bool)

(assert (=> b!880196 (= e!489848 tp_is_empty!17577)))

(declare-fun b!880197 () Bool)

(declare-fun res!598120 () Bool)

(assert (=> b!880197 (=> (not res!598120) (not e!489852))))

(assert (=> b!880197 (= res!598120 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25092 _keys!868))))))

(declare-fun b!880198 () Bool)

(declare-fun res!598110 () Bool)

(assert (=> b!880198 (=> (not res!598110) (not e!489852))))

(assert (=> b!880198 (= res!598110 (and (= (size!25093 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25092 _keys!868) (size!25093 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!880199 () Bool)

(assert (=> b!880199 (= e!489852 e!489853)))

(declare-fun res!598116 () Bool)

(assert (=> b!880199 (=> (not res!598116) (not e!489853))))

(assert (=> b!880199 (= res!598116 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!398012 () ListLongMap!10499)

(assert (=> b!880199 (= lt!398012 (getCurrentListMapNoExtraKeys!3225 _keys!868 lt!398016 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!880199 (= lt!398016 (array!51265 (store (arr!24652 _values!688) i!612 (ValueCellFull!8349 v!557)) (size!25093 _values!688)))))

(declare-fun lt!398010 () ListLongMap!10499)

(assert (=> b!880199 (= lt!398010 (getCurrentListMapNoExtraKeys!3225 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!880200 () Bool)

(assert (=> b!880200 (= e!489849 (and e!489848 mapRes!27987))))

(declare-fun condMapEmpty!27987 () Bool)

(declare-fun mapDefault!27987 () ValueCell!8349)

(assert (=> b!880200 (= condMapEmpty!27987 (= (arr!24652 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8349)) mapDefault!27987)))))

(declare-fun b!880201 () Bool)

(assert (=> b!880201 (= e!489850 e!489854)))

(declare-fun res!598117 () Bool)

(assert (=> b!880201 (=> res!598117 e!489854)))

(assert (=> b!880201 (= res!598117 (not (= (select (arr!24651 _keys!868) from!1053) k0!854)))))

(declare-fun get!12977 (ValueCell!8349 V!28483) V!28483)

(declare-fun dynLambda!1238 (Int (_ BitVec 64)) V!28483)

(assert (=> b!880201 (= lt!398012 (+!2471 lt!398011 (tuple2!11717 (select (arr!24651 _keys!868) from!1053) (get!12977 (select (arr!24652 _values!688) from!1053) (dynLambda!1238 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and start!74712 res!598115) b!880190))

(assert (= (and b!880190 res!598118) b!880198))

(assert (= (and b!880198 res!598110) b!880189))

(assert (= (and b!880189 res!598111) b!880191))

(assert (= (and b!880191 res!598112) b!880197))

(assert (= (and b!880197 res!598120) b!880188))

(assert (= (and b!880188 res!598114) b!880194))

(assert (= (and b!880194 res!598119) b!880199))

(assert (= (and b!880199 res!598116) b!880195))

(assert (= (and b!880195 (not res!598113)) b!880201))

(assert (= (and b!880201 (not res!598117)) b!880192))

(assert (= (and b!880200 condMapEmpty!27987) mapIsEmpty!27987))

(assert (= (and b!880200 (not condMapEmpty!27987)) mapNonEmpty!27987))

(get-info :version)

(assert (= (and mapNonEmpty!27987 ((_ is ValueCellFull!8349) mapValue!27987)) b!880193))

(assert (= (and b!880200 ((_ is ValueCellFull!8349) mapDefault!27987)) b!880196))

(assert (= start!74712 b!880200))

(declare-fun b_lambda!12471 () Bool)

(assert (=> (not b_lambda!12471) (not b!880201)))

(declare-fun t!24731 () Bool)

(declare-fun tb!4999 () Bool)

(assert (=> (and start!74712 (= defaultEntry!696 defaultEntry!696) t!24731) tb!4999))

(declare-fun result!9615 () Bool)

(assert (=> tb!4999 (= result!9615 tp_is_empty!17577)))

(assert (=> b!880201 t!24731))

(declare-fun b_and!25305 () Bool)

(assert (= b_and!25303 (and (=> t!24731 result!9615) b_and!25305)))

(declare-fun m!820065 () Bool)

(assert (=> b!880194 m!820065))

(declare-fun m!820067 () Bool)

(assert (=> b!880199 m!820067))

(declare-fun m!820069 () Bool)

(assert (=> b!880199 m!820069))

(declare-fun m!820071 () Bool)

(assert (=> b!880199 m!820071))

(declare-fun m!820073 () Bool)

(assert (=> b!880189 m!820073))

(declare-fun m!820075 () Bool)

(assert (=> b!880201 m!820075))

(declare-fun m!820077 () Bool)

(assert (=> b!880201 m!820077))

(declare-fun m!820079 () Bool)

(assert (=> b!880201 m!820079))

(assert (=> b!880201 m!820075))

(declare-fun m!820081 () Bool)

(assert (=> b!880201 m!820081))

(declare-fun m!820083 () Bool)

(assert (=> b!880201 m!820083))

(assert (=> b!880201 m!820077))

(declare-fun m!820085 () Bool)

(assert (=> start!74712 m!820085))

(declare-fun m!820087 () Bool)

(assert (=> start!74712 m!820087))

(declare-fun m!820089 () Bool)

(assert (=> b!880192 m!820089))

(declare-fun m!820091 () Bool)

(assert (=> b!880192 m!820091))

(declare-fun m!820093 () Bool)

(assert (=> b!880191 m!820093))

(declare-fun m!820095 () Bool)

(assert (=> b!880188 m!820095))

(declare-fun m!820097 () Bool)

(assert (=> b!880195 m!820097))

(declare-fun m!820099 () Bool)

(assert (=> b!880195 m!820099))

(assert (=> b!880195 m!820083))

(declare-fun m!820101 () Bool)

(assert (=> b!880195 m!820101))

(assert (=> b!880195 m!820083))

(declare-fun m!820103 () Bool)

(assert (=> b!880195 m!820103))

(declare-fun m!820105 () Bool)

(assert (=> b!880195 m!820105))

(declare-fun m!820107 () Bool)

(assert (=> mapNonEmpty!27987 m!820107))

(declare-fun m!820109 () Bool)

(assert (=> b!880190 m!820109))

(check-sat b_and!25305 (not b!880188) (not b!880201) (not b!880199) (not b!880191) (not b!880195) (not start!74712) (not b!880190) (not b_lambda!12471) tp_is_empty!17577 (not b_next!15333) (not b!880192) (not mapNonEmpty!27987) (not b!880189))
(check-sat b_and!25305 (not b_next!15333))
