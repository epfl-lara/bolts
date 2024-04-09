; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73504 () Bool)

(assert start!73504)

(declare-fun b_free!14391 () Bool)

(declare-fun b_next!14391 () Bool)

(assert (=> start!73504 (= b_free!14391 (not b_next!14391))))

(declare-fun tp!50677 () Bool)

(declare-fun b_and!23779 () Bool)

(assert (=> start!73504 (= tp!50677 b_and!23779)))

(declare-fun mapIsEmpty!26390 () Bool)

(declare-fun mapRes!26390 () Bool)

(assert (=> mapIsEmpty!26390 mapRes!26390))

(declare-fun b!858058 () Bool)

(declare-fun e!478242 () Bool)

(declare-fun e!478239 () Bool)

(assert (=> b!858058 (= e!478242 (not e!478239))))

(declare-fun res!583033 () Bool)

(assert (=> b!858058 (=> res!583033 e!478239)))

(declare-datatypes ((array!49214 0))(
  ( (array!49215 (arr!23634 (Array (_ BitVec 32) (_ BitVec 64))) (size!24075 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49214)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!858058 (= res!583033 (not (validKeyInArray!0 (select (arr!23634 _keys!868) from!1053))))))

(declare-datatypes ((V!27083 0))(
  ( (V!27084 (val!8311 Int)) )
))
(declare-datatypes ((tuple2!10952 0))(
  ( (tuple2!10953 (_1!5486 (_ BitVec 64)) (_2!5486 V!27083)) )
))
(declare-datatypes ((List!16824 0))(
  ( (Nil!16821) (Cons!16820 (h!17951 tuple2!10952) (t!23489 List!16824)) )
))
(declare-datatypes ((ListLongMap!9735 0))(
  ( (ListLongMap!9736 (toList!4883 List!16824)) )
))
(declare-fun lt!386548 () ListLongMap!9735)

(declare-fun lt!386547 () ListLongMap!9735)

(assert (=> b!858058 (= lt!386548 lt!386547)))

(declare-fun v!557 () V!27083)

(declare-fun lt!386549 () ListLongMap!9735)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2189 (ListLongMap!9735 tuple2!10952) ListLongMap!9735)

(assert (=> b!858058 (= lt!386547 (+!2189 lt!386549 (tuple2!10953 k0!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27083)

(declare-fun zeroValue!654 () V!27083)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7824 0))(
  ( (ValueCellFull!7824 (v!10732 V!27083)) (EmptyCell!7824) )
))
(declare-datatypes ((array!49216 0))(
  ( (array!49217 (arr!23635 (Array (_ BitVec 32) ValueCell!7824)) (size!24076 (_ BitVec 32))) )
))
(declare-fun lt!386545 () array!49216)

(declare-fun getCurrentListMapNoExtraKeys!2865 (array!49214 array!49216 (_ BitVec 32) (_ BitVec 32) V!27083 V!27083 (_ BitVec 32) Int) ListLongMap!9735)

(assert (=> b!858058 (= lt!386548 (getCurrentListMapNoExtraKeys!2865 _keys!868 lt!386545 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!49216)

(assert (=> b!858058 (= lt!386549 (getCurrentListMapNoExtraKeys!2865 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29220 0))(
  ( (Unit!29221) )
))
(declare-fun lt!386546 () Unit!29220)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!449 (array!49214 array!49216 (_ BitVec 32) (_ BitVec 32) V!27083 V!27083 (_ BitVec 32) (_ BitVec 64) V!27083 (_ BitVec 32) Int) Unit!29220)

(assert (=> b!858058 (= lt!386546 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!449 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!858059 () Bool)

(assert (=> b!858059 (= e!478239 true)))

(declare-fun lt!386550 () ListLongMap!9735)

(declare-fun get!12459 (ValueCell!7824 V!27083) V!27083)

(declare-fun dynLambda!1079 (Int (_ BitVec 64)) V!27083)

(assert (=> b!858059 (= lt!386550 (+!2189 lt!386547 (tuple2!10953 (select (arr!23634 _keys!868) from!1053) (get!12459 (select (arr!23635 _values!688) from!1053) (dynLambda!1079 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!858060 () Bool)

(declare-fun e!478241 () Bool)

(declare-fun tp_is_empty!16527 () Bool)

(assert (=> b!858060 (= e!478241 tp_is_empty!16527)))

(declare-fun b!858061 () Bool)

(declare-fun res!583040 () Bool)

(declare-fun e!478244 () Bool)

(assert (=> b!858061 (=> (not res!583040) (not e!478244))))

(assert (=> b!858061 (= res!583040 (and (= (size!24076 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24075 _keys!868) (size!24076 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!858062 () Bool)

(declare-fun res!583035 () Bool)

(assert (=> b!858062 (=> (not res!583035) (not e!478244))))

(assert (=> b!858062 (= res!583035 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!26390 () Bool)

(declare-fun tp!50678 () Bool)

(declare-fun e!478245 () Bool)

(assert (=> mapNonEmpty!26390 (= mapRes!26390 (and tp!50678 e!478245))))

(declare-fun mapKey!26390 () (_ BitVec 32))

(declare-fun mapValue!26390 () ValueCell!7824)

(declare-fun mapRest!26390 () (Array (_ BitVec 32) ValueCell!7824))

(assert (=> mapNonEmpty!26390 (= (arr!23635 _values!688) (store mapRest!26390 mapKey!26390 mapValue!26390))))

(declare-fun res!583041 () Bool)

(assert (=> start!73504 (=> (not res!583041) (not e!478244))))

(assert (=> start!73504 (= res!583041 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24075 _keys!868))))))

(assert (=> start!73504 e!478244))

(assert (=> start!73504 tp_is_empty!16527))

(assert (=> start!73504 true))

(assert (=> start!73504 tp!50677))

(declare-fun array_inv!18696 (array!49214) Bool)

(assert (=> start!73504 (array_inv!18696 _keys!868)))

(declare-fun e!478243 () Bool)

(declare-fun array_inv!18697 (array!49216) Bool)

(assert (=> start!73504 (and (array_inv!18697 _values!688) e!478243)))

(declare-fun b!858063 () Bool)

(declare-fun res!583037 () Bool)

(assert (=> b!858063 (=> (not res!583037) (not e!478244))))

(assert (=> b!858063 (= res!583037 (and (= (select (arr!23634 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!858064 () Bool)

(assert (=> b!858064 (= e!478244 e!478242)))

(declare-fun res!583036 () Bool)

(assert (=> b!858064 (=> (not res!583036) (not e!478242))))

(assert (=> b!858064 (= res!583036 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!858064 (= lt!386550 (getCurrentListMapNoExtraKeys!2865 _keys!868 lt!386545 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!858064 (= lt!386545 (array!49217 (store (arr!23635 _values!688) i!612 (ValueCellFull!7824 v!557)) (size!24076 _values!688)))))

(declare-fun lt!386544 () ListLongMap!9735)

(assert (=> b!858064 (= lt!386544 (getCurrentListMapNoExtraKeys!2865 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!858065 () Bool)

(declare-fun res!583034 () Bool)

(assert (=> b!858065 (=> (not res!583034) (not e!478244))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49214 (_ BitVec 32)) Bool)

(assert (=> b!858065 (= res!583034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!858066 () Bool)

(declare-fun res!583032 () Bool)

(assert (=> b!858066 (=> (not res!583032) (not e!478244))))

(assert (=> b!858066 (= res!583032 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24075 _keys!868))))))

(declare-fun b!858067 () Bool)

(assert (=> b!858067 (= e!478245 tp_is_empty!16527)))

(declare-fun b!858068 () Bool)

(declare-fun res!583038 () Bool)

(assert (=> b!858068 (=> (not res!583038) (not e!478244))))

(declare-datatypes ((List!16825 0))(
  ( (Nil!16822) (Cons!16821 (h!17952 (_ BitVec 64)) (t!23490 List!16825)) )
))
(declare-fun arrayNoDuplicates!0 (array!49214 (_ BitVec 32) List!16825) Bool)

(assert (=> b!858068 (= res!583038 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16822))))

(declare-fun b!858069 () Bool)

(declare-fun res!583039 () Bool)

(assert (=> b!858069 (=> (not res!583039) (not e!478244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!858069 (= res!583039 (validMask!0 mask!1196))))

(declare-fun b!858070 () Bool)

(assert (=> b!858070 (= e!478243 (and e!478241 mapRes!26390))))

(declare-fun condMapEmpty!26390 () Bool)

(declare-fun mapDefault!26390 () ValueCell!7824)

(assert (=> b!858070 (= condMapEmpty!26390 (= (arr!23635 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7824)) mapDefault!26390)))))

(assert (= (and start!73504 res!583041) b!858069))

(assert (= (and b!858069 res!583039) b!858061))

(assert (= (and b!858061 res!583040) b!858065))

(assert (= (and b!858065 res!583034) b!858068))

(assert (= (and b!858068 res!583038) b!858066))

(assert (= (and b!858066 res!583032) b!858062))

(assert (= (and b!858062 res!583035) b!858063))

(assert (= (and b!858063 res!583037) b!858064))

(assert (= (and b!858064 res!583036) b!858058))

(assert (= (and b!858058 (not res!583033)) b!858059))

(assert (= (and b!858070 condMapEmpty!26390) mapIsEmpty!26390))

(assert (= (and b!858070 (not condMapEmpty!26390)) mapNonEmpty!26390))

(get-info :version)

(assert (= (and mapNonEmpty!26390 ((_ is ValueCellFull!7824) mapValue!26390)) b!858067))

(assert (= (and b!858070 ((_ is ValueCellFull!7824) mapDefault!26390)) b!858060))

(assert (= start!73504 b!858070))

(declare-fun b_lambda!11773 () Bool)

(assert (=> (not b_lambda!11773) (not b!858059)))

(declare-fun t!23488 () Bool)

(declare-fun tb!4521 () Bool)

(assert (=> (and start!73504 (= defaultEntry!696 defaultEntry!696) t!23488) tb!4521))

(declare-fun result!8645 () Bool)

(assert (=> tb!4521 (= result!8645 tp_is_empty!16527)))

(assert (=> b!858059 t!23488))

(declare-fun b_and!23781 () Bool)

(assert (= b_and!23779 (and (=> t!23488 result!8645) b_and!23781)))

(declare-fun m!798871 () Bool)

(assert (=> mapNonEmpty!26390 m!798871))

(declare-fun m!798873 () Bool)

(assert (=> b!858064 m!798873))

(declare-fun m!798875 () Bool)

(assert (=> b!858064 m!798875))

(declare-fun m!798877 () Bool)

(assert (=> b!858064 m!798877))

(declare-fun m!798879 () Bool)

(assert (=> b!858059 m!798879))

(declare-fun m!798881 () Bool)

(assert (=> b!858059 m!798881))

(declare-fun m!798883 () Bool)

(assert (=> b!858059 m!798883))

(declare-fun m!798885 () Bool)

(assert (=> b!858059 m!798885))

(assert (=> b!858059 m!798881))

(declare-fun m!798887 () Bool)

(assert (=> b!858059 m!798887))

(assert (=> b!858059 m!798883))

(declare-fun m!798889 () Bool)

(assert (=> start!73504 m!798889))

(declare-fun m!798891 () Bool)

(assert (=> start!73504 m!798891))

(declare-fun m!798893 () Bool)

(assert (=> b!858068 m!798893))

(declare-fun m!798895 () Bool)

(assert (=> b!858065 m!798895))

(declare-fun m!798897 () Bool)

(assert (=> b!858063 m!798897))

(declare-fun m!798899 () Bool)

(assert (=> b!858062 m!798899))

(declare-fun m!798901 () Bool)

(assert (=> b!858058 m!798901))

(assert (=> b!858058 m!798887))

(declare-fun m!798903 () Bool)

(assert (=> b!858058 m!798903))

(assert (=> b!858058 m!798887))

(declare-fun m!798905 () Bool)

(assert (=> b!858058 m!798905))

(declare-fun m!798907 () Bool)

(assert (=> b!858058 m!798907))

(declare-fun m!798909 () Bool)

(assert (=> b!858058 m!798909))

(declare-fun m!798911 () Bool)

(assert (=> b!858069 m!798911))

(check-sat (not b!858058) (not b_next!14391) tp_is_empty!16527 (not b!858069) (not b_lambda!11773) (not b!858064) (not b!858059) (not b!858068) (not b!858062) (not b!858065) (not mapNonEmpty!26390) b_and!23781 (not start!73504))
(check-sat b_and!23781 (not b_next!14391))
