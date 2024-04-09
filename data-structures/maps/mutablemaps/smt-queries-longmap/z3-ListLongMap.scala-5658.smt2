; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73762 () Bool)

(assert start!73762)

(declare-fun b_free!14649 () Bool)

(declare-fun b_next!14649 () Bool)

(assert (=> start!73762 (= b_free!14649 (not b_next!14649))))

(declare-fun tp!51451 () Bool)

(declare-fun b_and!24295 () Bool)

(assert (=> start!73762 (= tp!51451 b_and!24295)))

(declare-fun b!864325 () Bool)

(declare-fun e!481540 () Bool)

(declare-fun e!481536 () Bool)

(assert (=> b!864325 (= e!481540 e!481536)))

(declare-fun res!587423 () Bool)

(assert (=> b!864325 (=> res!587423 e!481536)))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!49714 0))(
  ( (array!49715 (arr!23884 (Array (_ BitVec 32) (_ BitVec 64))) (size!24325 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49714)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!864325 (= res!587423 (= k0!854 (select (arr!23884 _keys!868) from!1053)))))

(assert (=> b!864325 (not (= (select (arr!23884 _keys!868) from!1053) k0!854))))

(declare-datatypes ((Unit!29541 0))(
  ( (Unit!29542) )
))
(declare-fun lt!391179 () Unit!29541)

(declare-fun e!481535 () Unit!29541)

(assert (=> b!864325 (= lt!391179 e!481535)))

(declare-fun c!92112 () Bool)

(assert (=> b!864325 (= c!92112 (= (select (arr!23884 _keys!868) from!1053) k0!854))))

(declare-datatypes ((V!27427 0))(
  ( (V!27428 (val!8440 Int)) )
))
(declare-datatypes ((tuple2!11178 0))(
  ( (tuple2!11179 (_1!5599 (_ BitVec 64)) (_2!5599 V!27427)) )
))
(declare-datatypes ((List!17044 0))(
  ( (Nil!17041) (Cons!17040 (h!18171 tuple2!11178) (t!23967 List!17044)) )
))
(declare-datatypes ((ListLongMap!9961 0))(
  ( (ListLongMap!9962 (toList!4996 List!17044)) )
))
(declare-fun lt!391170 () ListLongMap!9961)

(declare-fun lt!391175 () ListLongMap!9961)

(assert (=> b!864325 (= lt!391170 lt!391175)))

(declare-fun lt!391185 () ListLongMap!9961)

(declare-fun lt!391177 () tuple2!11178)

(declare-fun +!2293 (ListLongMap!9961 tuple2!11178) ListLongMap!9961)

(assert (=> b!864325 (= lt!391175 (+!2293 lt!391185 lt!391177))))

(declare-fun lt!391183 () V!27427)

(assert (=> b!864325 (= lt!391177 (tuple2!11179 (select (arr!23884 _keys!868) from!1053) lt!391183))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7953 0))(
  ( (ValueCellFull!7953 (v!10861 V!27427)) (EmptyCell!7953) )
))
(declare-datatypes ((array!49716 0))(
  ( (array!49717 (arr!23885 (Array (_ BitVec 32) ValueCell!7953)) (size!24326 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49716)

(declare-fun get!12629 (ValueCell!7953 V!27427) V!27427)

(declare-fun dynLambda!1163 (Int (_ BitVec 64)) V!27427)

(assert (=> b!864325 (= lt!391183 (get!12629 (select (arr!23885 _values!688) from!1053) (dynLambda!1163 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!864326 () Bool)

(declare-fun e!481538 () Bool)

(declare-fun e!481542 () Bool)

(assert (=> b!864326 (= e!481538 e!481542)))

(declare-fun res!587427 () Bool)

(assert (=> b!864326 (=> (not res!587427) (not e!481542))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!864326 (= res!587427 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!391184 () array!49716)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27427)

(declare-fun zeroValue!654 () V!27427)

(declare-fun getCurrentListMapNoExtraKeys!2969 (array!49714 array!49716 (_ BitVec 32) (_ BitVec 32) V!27427 V!27427 (_ BitVec 32) Int) ListLongMap!9961)

(assert (=> b!864326 (= lt!391170 (getCurrentListMapNoExtraKeys!2969 _keys!868 lt!391184 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27427)

(assert (=> b!864326 (= lt!391184 (array!49717 (store (arr!23885 _values!688) i!612 (ValueCellFull!7953 v!557)) (size!24326 _values!688)))))

(declare-fun lt!391178 () ListLongMap!9961)

(assert (=> b!864326 (= lt!391178 (getCurrentListMapNoExtraKeys!2969 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!864327 () Bool)

(declare-fun e!481539 () Bool)

(declare-fun tp_is_empty!16785 () Bool)

(assert (=> b!864327 (= e!481539 tp_is_empty!16785)))

(declare-fun b!864328 () Bool)

(assert (=> b!864328 (= e!481542 (not e!481540))))

(declare-fun res!587430 () Bool)

(assert (=> b!864328 (=> res!587430 e!481540)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!864328 (= res!587430 (not (validKeyInArray!0 (select (arr!23884 _keys!868) from!1053))))))

(declare-fun lt!391173 () ListLongMap!9961)

(assert (=> b!864328 (= lt!391173 lt!391185)))

(declare-fun lt!391171 () ListLongMap!9961)

(declare-fun lt!391182 () tuple2!11178)

(assert (=> b!864328 (= lt!391185 (+!2293 lt!391171 lt!391182))))

(assert (=> b!864328 (= lt!391173 (getCurrentListMapNoExtraKeys!2969 _keys!868 lt!391184 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!864328 (= lt!391182 (tuple2!11179 k0!854 v!557))))

(assert (=> b!864328 (= lt!391171 (getCurrentListMapNoExtraKeys!2969 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!391172 () Unit!29541)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!537 (array!49714 array!49716 (_ BitVec 32) (_ BitVec 32) V!27427 V!27427 (_ BitVec 32) (_ BitVec 64) V!27427 (_ BitVec 32) Int) Unit!29541)

(assert (=> b!864328 (= lt!391172 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!537 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!864329 () Bool)

(declare-fun res!587424 () Bool)

(assert (=> b!864329 (=> (not res!587424) (not e!481538))))

(declare-datatypes ((List!17045 0))(
  ( (Nil!17042) (Cons!17041 (h!18172 (_ BitVec 64)) (t!23968 List!17045)) )
))
(declare-fun arrayNoDuplicates!0 (array!49714 (_ BitVec 32) List!17045) Bool)

(assert (=> b!864329 (= res!587424 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17042))))

(declare-fun b!864330 () Bool)

(declare-fun e!481534 () Bool)

(assert (=> b!864330 (= e!481534 tp_is_empty!16785)))

(declare-fun b!864331 () Bool)

(declare-fun res!587422 () Bool)

(assert (=> b!864331 (=> (not res!587422) (not e!481538))))

(assert (=> b!864331 (= res!587422 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24325 _keys!868))))))

(declare-fun b!864332 () Bool)

(declare-fun res!587425 () Bool)

(assert (=> b!864332 (=> (not res!587425) (not e!481538))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!864332 (= res!587425 (validMask!0 mask!1196))))

(declare-fun b!864333 () Bool)

(declare-fun res!587426 () Bool)

(assert (=> b!864333 (=> (not res!587426) (not e!481538))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49714 (_ BitVec 32)) Bool)

(assert (=> b!864333 (= res!587426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!864334 () Bool)

(declare-fun res!587421 () Bool)

(assert (=> b!864334 (=> (not res!587421) (not e!481538))))

(assert (=> b!864334 (= res!587421 (and (= (select (arr!23884 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!864335 () Bool)

(declare-fun Unit!29543 () Unit!29541)

(assert (=> b!864335 (= e!481535 Unit!29543)))

(declare-fun res!587429 () Bool)

(assert (=> start!73762 (=> (not res!587429) (not e!481538))))

(assert (=> start!73762 (= res!587429 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24325 _keys!868))))))

(assert (=> start!73762 e!481538))

(assert (=> start!73762 tp_is_empty!16785))

(assert (=> start!73762 true))

(assert (=> start!73762 tp!51451))

(declare-fun array_inv!18866 (array!49714) Bool)

(assert (=> start!73762 (array_inv!18866 _keys!868)))

(declare-fun e!481541 () Bool)

(declare-fun array_inv!18867 (array!49716) Bool)

(assert (=> start!73762 (and (array_inv!18867 _values!688) e!481541)))

(declare-fun b!864336 () Bool)

(declare-fun res!587428 () Bool)

(assert (=> b!864336 (=> (not res!587428) (not e!481538))))

(assert (=> b!864336 (= res!587428 (and (= (size!24326 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24325 _keys!868) (size!24326 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!864337 () Bool)

(assert (=> b!864337 (= e!481536 true)))

(assert (=> b!864337 (= lt!391175 (+!2293 (+!2293 lt!391171 lt!391177) lt!391182))))

(declare-fun lt!391181 () Unit!29541)

(declare-fun addCommutativeForDiffKeys!502 (ListLongMap!9961 (_ BitVec 64) V!27427 (_ BitVec 64) V!27427) Unit!29541)

(assert (=> b!864337 (= lt!391181 (addCommutativeForDiffKeys!502 lt!391171 k0!854 v!557 (select (arr!23884 _keys!868) from!1053) lt!391183))))

(declare-fun b!864338 () Bool)

(declare-fun res!587420 () Bool)

(assert (=> b!864338 (=> (not res!587420) (not e!481538))))

(assert (=> b!864338 (= res!587420 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!26777 () Bool)

(declare-fun mapRes!26777 () Bool)

(declare-fun tp!51452 () Bool)

(assert (=> mapNonEmpty!26777 (= mapRes!26777 (and tp!51452 e!481534))))

(declare-fun mapValue!26777 () ValueCell!7953)

(declare-fun mapRest!26777 () (Array (_ BitVec 32) ValueCell!7953))

(declare-fun mapKey!26777 () (_ BitVec 32))

(assert (=> mapNonEmpty!26777 (= (arr!23885 _values!688) (store mapRest!26777 mapKey!26777 mapValue!26777))))

(declare-fun b!864339 () Bool)

(declare-fun Unit!29544 () Unit!29541)

(assert (=> b!864339 (= e!481535 Unit!29544)))

(declare-fun lt!391180 () Unit!29541)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49714 (_ BitVec 32) (_ BitVec 32)) Unit!29541)

(assert (=> b!864339 (= lt!391180 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!864339 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17042)))

(declare-fun lt!391176 () Unit!29541)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49714 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29541)

(assert (=> b!864339 (= lt!391176 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49714 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!864339 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!391174 () Unit!29541)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49714 (_ BitVec 64) (_ BitVec 32) List!17045) Unit!29541)

(assert (=> b!864339 (= lt!391174 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17042))))

(assert (=> b!864339 false))

(declare-fun mapIsEmpty!26777 () Bool)

(assert (=> mapIsEmpty!26777 mapRes!26777))

(declare-fun b!864340 () Bool)

(assert (=> b!864340 (= e!481541 (and e!481539 mapRes!26777))))

(declare-fun condMapEmpty!26777 () Bool)

(declare-fun mapDefault!26777 () ValueCell!7953)

(assert (=> b!864340 (= condMapEmpty!26777 (= (arr!23885 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7953)) mapDefault!26777)))))

(assert (= (and start!73762 res!587429) b!864332))

(assert (= (and b!864332 res!587425) b!864336))

(assert (= (and b!864336 res!587428) b!864333))

(assert (= (and b!864333 res!587426) b!864329))

(assert (= (and b!864329 res!587424) b!864331))

(assert (= (and b!864331 res!587422) b!864338))

(assert (= (and b!864338 res!587420) b!864334))

(assert (= (and b!864334 res!587421) b!864326))

(assert (= (and b!864326 res!587427) b!864328))

(assert (= (and b!864328 (not res!587430)) b!864325))

(assert (= (and b!864325 c!92112) b!864339))

(assert (= (and b!864325 (not c!92112)) b!864335))

(assert (= (and b!864325 (not res!587423)) b!864337))

(assert (= (and b!864340 condMapEmpty!26777) mapIsEmpty!26777))

(assert (= (and b!864340 (not condMapEmpty!26777)) mapNonEmpty!26777))

(get-info :version)

(assert (= (and mapNonEmpty!26777 ((_ is ValueCellFull!7953) mapValue!26777)) b!864330))

(assert (= (and b!864340 ((_ is ValueCellFull!7953) mapDefault!26777)) b!864327))

(assert (= start!73762 b!864340))

(declare-fun b_lambda!12031 () Bool)

(assert (=> (not b_lambda!12031) (not b!864325)))

(declare-fun t!23966 () Bool)

(declare-fun tb!4779 () Bool)

(assert (=> (and start!73762 (= defaultEntry!696 defaultEntry!696) t!23966) tb!4779))

(declare-fun result!9161 () Bool)

(assert (=> tb!4779 (= result!9161 tp_is_empty!16785)))

(assert (=> b!864325 t!23966))

(declare-fun b_and!24297 () Bool)

(assert (= b_and!24295 (and (=> t!23966 result!9161) b_and!24297)))

(declare-fun m!805775 () Bool)

(assert (=> b!864334 m!805775))

(declare-fun m!805777 () Bool)

(assert (=> b!864339 m!805777))

(declare-fun m!805779 () Bool)

(assert (=> b!864339 m!805779))

(declare-fun m!805781 () Bool)

(assert (=> b!864339 m!805781))

(declare-fun m!805783 () Bool)

(assert (=> b!864339 m!805783))

(declare-fun m!805785 () Bool)

(assert (=> b!864339 m!805785))

(declare-fun m!805787 () Bool)

(assert (=> b!864328 m!805787))

(declare-fun m!805789 () Bool)

(assert (=> b!864328 m!805789))

(declare-fun m!805791 () Bool)

(assert (=> b!864328 m!805791))

(assert (=> b!864328 m!805789))

(declare-fun m!805793 () Bool)

(assert (=> b!864328 m!805793))

(declare-fun m!805795 () Bool)

(assert (=> b!864328 m!805795))

(declare-fun m!805797 () Bool)

(assert (=> b!864328 m!805797))

(declare-fun m!805799 () Bool)

(assert (=> b!864332 m!805799))

(declare-fun m!805801 () Bool)

(assert (=> b!864325 m!805801))

(declare-fun m!805803 () Bool)

(assert (=> b!864325 m!805803))

(declare-fun m!805805 () Bool)

(assert (=> b!864325 m!805805))

(assert (=> b!864325 m!805801))

(declare-fun m!805807 () Bool)

(assert (=> b!864325 m!805807))

(assert (=> b!864325 m!805789))

(assert (=> b!864325 m!805803))

(declare-fun m!805809 () Bool)

(assert (=> b!864337 m!805809))

(assert (=> b!864337 m!805809))

(declare-fun m!805811 () Bool)

(assert (=> b!864337 m!805811))

(assert (=> b!864337 m!805789))

(assert (=> b!864337 m!805789))

(declare-fun m!805813 () Bool)

(assert (=> b!864337 m!805813))

(declare-fun m!805815 () Bool)

(assert (=> b!864329 m!805815))

(declare-fun m!805817 () Bool)

(assert (=> start!73762 m!805817))

(declare-fun m!805819 () Bool)

(assert (=> start!73762 m!805819))

(declare-fun m!805821 () Bool)

(assert (=> b!864326 m!805821))

(declare-fun m!805823 () Bool)

(assert (=> b!864326 m!805823))

(declare-fun m!805825 () Bool)

(assert (=> b!864326 m!805825))

(declare-fun m!805827 () Bool)

(assert (=> b!864338 m!805827))

(declare-fun m!805829 () Bool)

(assert (=> b!864333 m!805829))

(declare-fun m!805831 () Bool)

(assert (=> mapNonEmpty!26777 m!805831))

(check-sat (not b_next!14649) (not b!864338) b_and!24297 (not b_lambda!12031) (not b!864339) (not b!864328) (not start!73762) (not mapNonEmpty!26777) (not b!864337) (not b!864325) (not b!864332) tp_is_empty!16785 (not b!864333) (not b!864329) (not b!864326))
(check-sat b_and!24297 (not b_next!14649))
