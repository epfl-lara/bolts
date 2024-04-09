; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74074 () Bool)

(assert start!74074)

(declare-fun b_free!14961 () Bool)

(declare-fun b_next!14961 () Bool)

(assert (=> start!74074 (= b_free!14961 (not b_next!14961))))

(declare-fun tp!52388 () Bool)

(declare-fun b_and!24731 () Bool)

(assert (=> start!74074 (= tp!52388 b_and!24731)))

(declare-fun b!870801 () Bool)

(declare-fun e!484897 () Bool)

(declare-fun tp_is_empty!17097 () Bool)

(assert (=> b!870801 (= e!484897 tp_is_empty!17097)))

(declare-fun mapIsEmpty!27245 () Bool)

(declare-fun mapRes!27245 () Bool)

(assert (=> mapIsEmpty!27245 mapRes!27245))

(declare-fun mapNonEmpty!27245 () Bool)

(declare-fun tp!52387 () Bool)

(declare-fun e!484894 () Bool)

(assert (=> mapNonEmpty!27245 (= mapRes!27245 (and tp!52387 e!484894))))

(declare-datatypes ((V!27843 0))(
  ( (V!27844 (val!8596 Int)) )
))
(declare-datatypes ((ValueCell!8109 0))(
  ( (ValueCellFull!8109 (v!11017 V!27843)) (EmptyCell!8109) )
))
(declare-fun mapValue!27245 () ValueCell!8109)

(declare-fun mapKey!27245 () (_ BitVec 32))

(declare-fun mapRest!27245 () (Array (_ BitVec 32) ValueCell!8109))

(declare-datatypes ((array!50324 0))(
  ( (array!50325 (arr!24189 (Array (_ BitVec 32) ValueCell!8109)) (size!24630 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50324)

(assert (=> mapNonEmpty!27245 (= (arr!24189 _values!688) (store mapRest!27245 mapKey!27245 mapValue!27245))))

(declare-fun b!870802 () Bool)

(declare-fun res!592007 () Bool)

(declare-fun e!484899 () Bool)

(assert (=> b!870802 (=> (not res!592007) (not e!484899))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!50326 0))(
  ( (array!50327 (arr!24190 (Array (_ BitVec 32) (_ BitVec 64))) (size!24631 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50326)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!870802 (= res!592007 (and (= (select (arr!24190 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!870803 () Bool)

(declare-fun res!592005 () Bool)

(assert (=> b!870803 (=> (not res!592005) (not e!484899))))

(declare-datatypes ((List!17275 0))(
  ( (Nil!17272) (Cons!17271 (h!18402 (_ BitVec 64)) (t!24320 List!17275)) )
))
(declare-fun arrayNoDuplicates!0 (array!50326 (_ BitVec 32) List!17275) Bool)

(assert (=> b!870803 (= res!592005 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17272))))

(declare-fun b!870804 () Bool)

(declare-fun e!484896 () Bool)

(assert (=> b!870804 (= e!484896 (not true))))

(declare-fun v!557 () V!27843)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!395252 () array!50324)

(declare-fun minValue!654 () V!27843)

(declare-fun zeroValue!654 () V!27843)

(declare-datatypes ((tuple2!11420 0))(
  ( (tuple2!11421 (_1!5720 (_ BitVec 64)) (_2!5720 V!27843)) )
))
(declare-datatypes ((List!17276 0))(
  ( (Nil!17273) (Cons!17272 (h!18403 tuple2!11420) (t!24321 List!17276)) )
))
(declare-datatypes ((ListLongMap!10203 0))(
  ( (ListLongMap!10204 (toList!5117 List!17276)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3081 (array!50326 array!50324 (_ BitVec 32) (_ BitVec 32) V!27843 V!27843 (_ BitVec 32) Int) ListLongMap!10203)

(declare-fun +!2398 (ListLongMap!10203 tuple2!11420) ListLongMap!10203)

(assert (=> b!870804 (= (getCurrentListMapNoExtraKeys!3081 _keys!868 lt!395252 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2398 (getCurrentListMapNoExtraKeys!3081 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11421 k0!854 v!557)))))

(declare-datatypes ((Unit!29846 0))(
  ( (Unit!29847) )
))
(declare-fun lt!395250 () Unit!29846)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!629 (array!50326 array!50324 (_ BitVec 32) (_ BitVec 32) V!27843 V!27843 (_ BitVec 32) (_ BitVec 64) V!27843 (_ BitVec 32) Int) Unit!29846)

(assert (=> b!870804 (= lt!395250 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!629 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!870805 () Bool)

(declare-fun res!592002 () Bool)

(assert (=> b!870805 (=> (not res!592002) (not e!484899))))

(assert (=> b!870805 (= res!592002 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24631 _keys!868))))))

(declare-fun b!870806 () Bool)

(declare-fun res!592004 () Bool)

(assert (=> b!870806 (=> (not res!592004) (not e!484899))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!870806 (= res!592004 (validMask!0 mask!1196))))

(declare-fun b!870807 () Bool)

(assert (=> b!870807 (= e!484894 tp_is_empty!17097)))

(declare-fun b!870808 () Bool)

(assert (=> b!870808 (= e!484899 e!484896)))

(declare-fun res!592001 () Bool)

(assert (=> b!870808 (=> (not res!592001) (not e!484896))))

(assert (=> b!870808 (= res!592001 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!395251 () ListLongMap!10203)

(assert (=> b!870808 (= lt!395251 (getCurrentListMapNoExtraKeys!3081 _keys!868 lt!395252 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!870808 (= lt!395252 (array!50325 (store (arr!24189 _values!688) i!612 (ValueCellFull!8109 v!557)) (size!24630 _values!688)))))

(declare-fun lt!395253 () ListLongMap!10203)

(assert (=> b!870808 (= lt!395253 (getCurrentListMapNoExtraKeys!3081 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!870809 () Bool)

(declare-fun res!592008 () Bool)

(assert (=> b!870809 (=> (not res!592008) (not e!484899))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50326 (_ BitVec 32)) Bool)

(assert (=> b!870809 (= res!592008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!592006 () Bool)

(assert (=> start!74074 (=> (not res!592006) (not e!484899))))

(assert (=> start!74074 (= res!592006 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24631 _keys!868))))))

(assert (=> start!74074 e!484899))

(assert (=> start!74074 tp_is_empty!17097))

(assert (=> start!74074 true))

(assert (=> start!74074 tp!52388))

(declare-fun array_inv!19074 (array!50326) Bool)

(assert (=> start!74074 (array_inv!19074 _keys!868)))

(declare-fun e!484895 () Bool)

(declare-fun array_inv!19075 (array!50324) Bool)

(assert (=> start!74074 (and (array_inv!19075 _values!688) e!484895)))

(declare-fun b!870810 () Bool)

(declare-fun res!592003 () Bool)

(assert (=> b!870810 (=> (not res!592003) (not e!484899))))

(assert (=> b!870810 (= res!592003 (and (= (size!24630 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24631 _keys!868) (size!24630 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!870811 () Bool)

(declare-fun res!592000 () Bool)

(assert (=> b!870811 (=> (not res!592000) (not e!484899))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!870811 (= res!592000 (validKeyInArray!0 k0!854))))

(declare-fun b!870812 () Bool)

(assert (=> b!870812 (= e!484895 (and e!484897 mapRes!27245))))

(declare-fun condMapEmpty!27245 () Bool)

(declare-fun mapDefault!27245 () ValueCell!8109)

(assert (=> b!870812 (= condMapEmpty!27245 (= (arr!24189 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8109)) mapDefault!27245)))))

(assert (= (and start!74074 res!592006) b!870806))

(assert (= (and b!870806 res!592004) b!870810))

(assert (= (and b!870810 res!592003) b!870809))

(assert (= (and b!870809 res!592008) b!870803))

(assert (= (and b!870803 res!592005) b!870805))

(assert (= (and b!870805 res!592002) b!870811))

(assert (= (and b!870811 res!592000) b!870802))

(assert (= (and b!870802 res!592007) b!870808))

(assert (= (and b!870808 res!592001) b!870804))

(assert (= (and b!870812 condMapEmpty!27245) mapIsEmpty!27245))

(assert (= (and b!870812 (not condMapEmpty!27245)) mapNonEmpty!27245))

(get-info :version)

(assert (= (and mapNonEmpty!27245 ((_ is ValueCellFull!8109) mapValue!27245)) b!870807))

(assert (= (and b!870812 ((_ is ValueCellFull!8109) mapDefault!27245)) b!870801))

(assert (= start!74074 b!870812))

(declare-fun m!812191 () Bool)

(assert (=> b!870803 m!812191))

(declare-fun m!812193 () Bool)

(assert (=> b!870802 m!812193))

(declare-fun m!812195 () Bool)

(assert (=> mapNonEmpty!27245 m!812195))

(declare-fun m!812197 () Bool)

(assert (=> b!870811 m!812197))

(declare-fun m!812199 () Bool)

(assert (=> start!74074 m!812199))

(declare-fun m!812201 () Bool)

(assert (=> start!74074 m!812201))

(declare-fun m!812203 () Bool)

(assert (=> b!870806 m!812203))

(declare-fun m!812205 () Bool)

(assert (=> b!870809 m!812205))

(declare-fun m!812207 () Bool)

(assert (=> b!870804 m!812207))

(declare-fun m!812209 () Bool)

(assert (=> b!870804 m!812209))

(assert (=> b!870804 m!812209))

(declare-fun m!812211 () Bool)

(assert (=> b!870804 m!812211))

(declare-fun m!812213 () Bool)

(assert (=> b!870804 m!812213))

(declare-fun m!812215 () Bool)

(assert (=> b!870808 m!812215))

(declare-fun m!812217 () Bool)

(assert (=> b!870808 m!812217))

(declare-fun m!812219 () Bool)

(assert (=> b!870808 m!812219))

(check-sat (not b_next!14961) (not b!870804) (not b!870803) (not b!870811) (not b!870809) tp_is_empty!17097 (not b!870806) (not b!870808) (not mapNonEmpty!27245) b_and!24731 (not start!74074))
(check-sat b_and!24731 (not b_next!14961))
