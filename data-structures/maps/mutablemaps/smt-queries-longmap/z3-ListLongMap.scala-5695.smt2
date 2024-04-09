; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73984 () Bool)

(assert start!73984)

(declare-fun b_free!14871 () Bool)

(declare-fun b_next!14871 () Bool)

(assert (=> start!73984 (= b_free!14871 (not b_next!14871))))

(declare-fun tp!52118 () Bool)

(declare-fun b_and!24641 () Bool)

(assert (=> start!73984 (= tp!52118 b_and!24641)))

(declare-fun b!869181 () Bool)

(declare-fun e!484085 () Bool)

(declare-fun tp_is_empty!17007 () Bool)

(assert (=> b!869181 (= e!484085 tp_is_empty!17007)))

(declare-fun b!869182 () Bool)

(declare-fun res!590785 () Bool)

(declare-fun e!484089 () Bool)

(assert (=> b!869182 (=> (not res!590785) (not e!484089))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50146 0))(
  ( (array!50147 (arr!24100 (Array (_ BitVec 32) (_ BitVec 64))) (size!24541 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50146)

(assert (=> b!869182 (= res!590785 (and (= (select (arr!24100 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!869183 () Bool)

(declare-fun res!590791 () Bool)

(assert (=> b!869183 (=> (not res!590791) (not e!484089))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!869183 (= res!590791 (validKeyInArray!0 k0!854))))

(declare-fun res!590787 () Bool)

(assert (=> start!73984 (=> (not res!590787) (not e!484089))))

(assert (=> start!73984 (= res!590787 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24541 _keys!868))))))

(assert (=> start!73984 e!484089))

(assert (=> start!73984 tp_is_empty!17007))

(assert (=> start!73984 true))

(assert (=> start!73984 tp!52118))

(declare-fun array_inv!19010 (array!50146) Bool)

(assert (=> start!73984 (array_inv!19010 _keys!868)))

(declare-datatypes ((V!27723 0))(
  ( (V!27724 (val!8551 Int)) )
))
(declare-datatypes ((ValueCell!8064 0))(
  ( (ValueCellFull!8064 (v!10972 V!27723)) (EmptyCell!8064) )
))
(declare-datatypes ((array!50148 0))(
  ( (array!50149 (arr!24101 (Array (_ BitVec 32) ValueCell!8064)) (size!24542 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50148)

(declare-fun e!484086 () Bool)

(declare-fun array_inv!19011 (array!50148) Bool)

(assert (=> start!73984 (and (array_inv!19011 _values!688) e!484086)))

(declare-fun mapIsEmpty!27110 () Bool)

(declare-fun mapRes!27110 () Bool)

(assert (=> mapIsEmpty!27110 mapRes!27110))

(declare-fun b!869184 () Bool)

(declare-fun res!590793 () Bool)

(assert (=> b!869184 (=> (not res!590793) (not e!484089))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869184 (= res!590793 (validMask!0 mask!1196))))

(declare-fun b!869185 () Bool)

(declare-fun res!590792 () Bool)

(assert (=> b!869185 (=> (not res!590792) (not e!484089))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50146 (_ BitVec 32)) Bool)

(assert (=> b!869185 (= res!590792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!869186 () Bool)

(declare-fun e!484088 () Bool)

(assert (=> b!869186 (= e!484088 tp_is_empty!17007)))

(declare-fun b!869187 () Bool)

(declare-fun e!484084 () Bool)

(assert (=> b!869187 (= e!484089 e!484084)))

(declare-fun res!590788 () Bool)

(assert (=> b!869187 (=> (not res!590788) (not e!484084))))

(assert (=> b!869187 (= res!590788 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!394711 () array!50148)

(declare-datatypes ((tuple2!11354 0))(
  ( (tuple2!11355 (_1!5687 (_ BitVec 64)) (_2!5687 V!27723)) )
))
(declare-datatypes ((List!17212 0))(
  ( (Nil!17209) (Cons!17208 (h!18339 tuple2!11354) (t!24257 List!17212)) )
))
(declare-datatypes ((ListLongMap!10137 0))(
  ( (ListLongMap!10138 (toList!5084 List!17212)) )
))
(declare-fun lt!394713 () ListLongMap!10137)

(declare-fun minValue!654 () V!27723)

(declare-fun zeroValue!654 () V!27723)

(declare-fun getCurrentListMapNoExtraKeys!3048 (array!50146 array!50148 (_ BitVec 32) (_ BitVec 32) V!27723 V!27723 (_ BitVec 32) Int) ListLongMap!10137)

(assert (=> b!869187 (= lt!394713 (getCurrentListMapNoExtraKeys!3048 _keys!868 lt!394711 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27723)

(assert (=> b!869187 (= lt!394711 (array!50149 (store (arr!24101 _values!688) i!612 (ValueCellFull!8064 v!557)) (size!24542 _values!688)))))

(declare-fun lt!394712 () ListLongMap!10137)

(assert (=> b!869187 (= lt!394712 (getCurrentListMapNoExtraKeys!3048 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!869188 () Bool)

(assert (=> b!869188 (= e!484084 (not true))))

(declare-fun +!2370 (ListLongMap!10137 tuple2!11354) ListLongMap!10137)

(assert (=> b!869188 (= (getCurrentListMapNoExtraKeys!3048 _keys!868 lt!394711 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2370 (getCurrentListMapNoExtraKeys!3048 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11355 k0!854 v!557)))))

(declare-datatypes ((Unit!29790 0))(
  ( (Unit!29791) )
))
(declare-fun lt!394710 () Unit!29790)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!601 (array!50146 array!50148 (_ BitVec 32) (_ BitVec 32) V!27723 V!27723 (_ BitVec 32) (_ BitVec 64) V!27723 (_ BitVec 32) Int) Unit!29790)

(assert (=> b!869188 (= lt!394710 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!601 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!869189 () Bool)

(declare-fun res!590790 () Bool)

(assert (=> b!869189 (=> (not res!590790) (not e!484089))))

(declare-datatypes ((List!17213 0))(
  ( (Nil!17210) (Cons!17209 (h!18340 (_ BitVec 64)) (t!24258 List!17213)) )
))
(declare-fun arrayNoDuplicates!0 (array!50146 (_ BitVec 32) List!17213) Bool)

(assert (=> b!869189 (= res!590790 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17210))))

(declare-fun mapNonEmpty!27110 () Bool)

(declare-fun tp!52117 () Bool)

(assert (=> mapNonEmpty!27110 (= mapRes!27110 (and tp!52117 e!484085))))

(declare-fun mapRest!27110 () (Array (_ BitVec 32) ValueCell!8064))

(declare-fun mapKey!27110 () (_ BitVec 32))

(declare-fun mapValue!27110 () ValueCell!8064)

(assert (=> mapNonEmpty!27110 (= (arr!24101 _values!688) (store mapRest!27110 mapKey!27110 mapValue!27110))))

(declare-fun b!869190 () Bool)

(declare-fun res!590786 () Bool)

(assert (=> b!869190 (=> (not res!590786) (not e!484089))))

(assert (=> b!869190 (= res!590786 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24541 _keys!868))))))

(declare-fun b!869191 () Bool)

(declare-fun res!590789 () Bool)

(assert (=> b!869191 (=> (not res!590789) (not e!484089))))

(assert (=> b!869191 (= res!590789 (and (= (size!24542 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24541 _keys!868) (size!24542 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!869192 () Bool)

(assert (=> b!869192 (= e!484086 (and e!484088 mapRes!27110))))

(declare-fun condMapEmpty!27110 () Bool)

(declare-fun mapDefault!27110 () ValueCell!8064)

(assert (=> b!869192 (= condMapEmpty!27110 (= (arr!24101 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8064)) mapDefault!27110)))))

(assert (= (and start!73984 res!590787) b!869184))

(assert (= (and b!869184 res!590793) b!869191))

(assert (= (and b!869191 res!590789) b!869185))

(assert (= (and b!869185 res!590792) b!869189))

(assert (= (and b!869189 res!590790) b!869190))

(assert (= (and b!869190 res!590786) b!869183))

(assert (= (and b!869183 res!590791) b!869182))

(assert (= (and b!869182 res!590785) b!869187))

(assert (= (and b!869187 res!590788) b!869188))

(assert (= (and b!869192 condMapEmpty!27110) mapIsEmpty!27110))

(assert (= (and b!869192 (not condMapEmpty!27110)) mapNonEmpty!27110))

(get-info :version)

(assert (= (and mapNonEmpty!27110 ((_ is ValueCellFull!8064) mapValue!27110)) b!869181))

(assert (= (and b!869192 ((_ is ValueCellFull!8064) mapDefault!27110)) b!869186))

(assert (= start!73984 b!869192))

(declare-fun m!810841 () Bool)

(assert (=> b!869188 m!810841))

(declare-fun m!810843 () Bool)

(assert (=> b!869188 m!810843))

(assert (=> b!869188 m!810843))

(declare-fun m!810845 () Bool)

(assert (=> b!869188 m!810845))

(declare-fun m!810847 () Bool)

(assert (=> b!869188 m!810847))

(declare-fun m!810849 () Bool)

(assert (=> b!869189 m!810849))

(declare-fun m!810851 () Bool)

(assert (=> b!869187 m!810851))

(declare-fun m!810853 () Bool)

(assert (=> b!869187 m!810853))

(declare-fun m!810855 () Bool)

(assert (=> b!869187 m!810855))

(declare-fun m!810857 () Bool)

(assert (=> b!869184 m!810857))

(declare-fun m!810859 () Bool)

(assert (=> b!869183 m!810859))

(declare-fun m!810861 () Bool)

(assert (=> b!869182 m!810861))

(declare-fun m!810863 () Bool)

(assert (=> start!73984 m!810863))

(declare-fun m!810865 () Bool)

(assert (=> start!73984 m!810865))

(declare-fun m!810867 () Bool)

(assert (=> b!869185 m!810867))

(declare-fun m!810869 () Bool)

(assert (=> mapNonEmpty!27110 m!810869))

(check-sat (not mapNonEmpty!27110) (not b!869189) b_and!24641 (not start!73984) (not b!869184) (not b!869185) (not b!869188) (not b_next!14871) (not b!869187) tp_is_empty!17007 (not b!869183))
(check-sat b_and!24641 (not b_next!14871))
