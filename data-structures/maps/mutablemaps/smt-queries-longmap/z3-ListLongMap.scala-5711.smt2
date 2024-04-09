; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74080 () Bool)

(assert start!74080)

(declare-fun b_free!14967 () Bool)

(declare-fun b_next!14967 () Bool)

(assert (=> start!74080 (= b_free!14967 (not b_next!14967))))

(declare-fun tp!52405 () Bool)

(declare-fun b_and!24737 () Bool)

(assert (=> start!74080 (= tp!52405 b_and!24737)))

(declare-fun b!870909 () Bool)

(declare-fun e!484953 () Bool)

(declare-fun tp_is_empty!17103 () Bool)

(assert (=> b!870909 (= e!484953 tp_is_empty!17103)))

(declare-fun b!870910 () Bool)

(declare-fun res!592084 () Bool)

(declare-fun e!484951 () Bool)

(assert (=> b!870910 (=> (not res!592084) (not e!484951))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!870910 (= res!592084 (validKeyInArray!0 k0!854))))

(declare-fun b!870912 () Bool)

(declare-fun res!592081 () Bool)

(assert (=> b!870912 (=> (not res!592081) (not e!484951))))

(declare-datatypes ((array!50336 0))(
  ( (array!50337 (arr!24195 (Array (_ BitVec 32) (_ BitVec 64))) (size!24636 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50336)

(declare-datatypes ((List!17281 0))(
  ( (Nil!17278) (Cons!17277 (h!18408 (_ BitVec 64)) (t!24326 List!17281)) )
))
(declare-fun arrayNoDuplicates!0 (array!50336 (_ BitVec 32) List!17281) Bool)

(assert (=> b!870912 (= res!592081 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17278))))

(declare-fun b!870913 () Bool)

(declare-fun res!592087 () Bool)

(assert (=> b!870913 (=> (not res!592087) (not e!484951))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!870913 (= res!592087 (validMask!0 mask!1196))))

(declare-fun b!870914 () Bool)

(declare-fun res!592089 () Bool)

(assert (=> b!870914 (=> (not res!592089) (not e!484951))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!870914 (= res!592089 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24636 _keys!868))))))

(declare-fun mapIsEmpty!27254 () Bool)

(declare-fun mapRes!27254 () Bool)

(assert (=> mapIsEmpty!27254 mapRes!27254))

(declare-fun b!870915 () Bool)

(declare-fun e!484948 () Bool)

(assert (=> b!870915 (= e!484951 e!484948)))

(declare-fun res!592088 () Bool)

(assert (=> b!870915 (=> (not res!592088) (not e!484948))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!870915 (= res!592088 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27851 0))(
  ( (V!27852 (val!8599 Int)) )
))
(declare-datatypes ((tuple2!11426 0))(
  ( (tuple2!11427 (_1!5723 (_ BitVec 64)) (_2!5723 V!27851)) )
))
(declare-datatypes ((List!17282 0))(
  ( (Nil!17279) (Cons!17278 (h!18409 tuple2!11426) (t!24327 List!17282)) )
))
(declare-datatypes ((ListLongMap!10209 0))(
  ( (ListLongMap!10210 (toList!5120 List!17282)) )
))
(declare-fun lt!395288 () ListLongMap!10209)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8112 0))(
  ( (ValueCellFull!8112 (v!11020 V!27851)) (EmptyCell!8112) )
))
(declare-datatypes ((array!50338 0))(
  ( (array!50339 (arr!24196 (Array (_ BitVec 32) ValueCell!8112)) (size!24637 (_ BitVec 32))) )
))
(declare-fun lt!395287 () array!50338)

(declare-fun minValue!654 () V!27851)

(declare-fun zeroValue!654 () V!27851)

(declare-fun getCurrentListMapNoExtraKeys!3084 (array!50336 array!50338 (_ BitVec 32) (_ BitVec 32) V!27851 V!27851 (_ BitVec 32) Int) ListLongMap!10209)

(assert (=> b!870915 (= lt!395288 (getCurrentListMapNoExtraKeys!3084 _keys!868 lt!395287 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27851)

(declare-fun _values!688 () array!50338)

(assert (=> b!870915 (= lt!395287 (array!50339 (store (arr!24196 _values!688) i!612 (ValueCellFull!8112 v!557)) (size!24637 _values!688)))))

(declare-fun lt!395286 () ListLongMap!10209)

(assert (=> b!870915 (= lt!395286 (getCurrentListMapNoExtraKeys!3084 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!870916 () Bool)

(declare-fun res!592082 () Bool)

(assert (=> b!870916 (=> (not res!592082) (not e!484951))))

(assert (=> b!870916 (= res!592082 (and (= (size!24637 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24636 _keys!868) (size!24637 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!870917 () Bool)

(declare-fun res!592085 () Bool)

(assert (=> b!870917 (=> (not res!592085) (not e!484951))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50336 (_ BitVec 32)) Bool)

(assert (=> b!870917 (= res!592085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!870918 () Bool)

(assert (=> b!870918 (= e!484948 (not true))))

(declare-fun +!2400 (ListLongMap!10209 tuple2!11426) ListLongMap!10209)

(assert (=> b!870918 (= (getCurrentListMapNoExtraKeys!3084 _keys!868 lt!395287 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2400 (getCurrentListMapNoExtraKeys!3084 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11427 k0!854 v!557)))))

(declare-datatypes ((Unit!29850 0))(
  ( (Unit!29851) )
))
(declare-fun lt!395289 () Unit!29850)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!631 (array!50336 array!50338 (_ BitVec 32) (_ BitVec 32) V!27851 V!27851 (_ BitVec 32) (_ BitVec 64) V!27851 (_ BitVec 32) Int) Unit!29850)

(assert (=> b!870918 (= lt!395289 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!631 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!27254 () Bool)

(declare-fun tp!52406 () Bool)

(assert (=> mapNonEmpty!27254 (= mapRes!27254 (and tp!52406 e!484953))))

(declare-fun mapValue!27254 () ValueCell!8112)

(declare-fun mapRest!27254 () (Array (_ BitVec 32) ValueCell!8112))

(declare-fun mapKey!27254 () (_ BitVec 32))

(assert (=> mapNonEmpty!27254 (= (arr!24196 _values!688) (store mapRest!27254 mapKey!27254 mapValue!27254))))

(declare-fun b!870919 () Bool)

(declare-fun e!484949 () Bool)

(assert (=> b!870919 (= e!484949 tp_is_empty!17103)))

(declare-fun b!870920 () Bool)

(declare-fun res!592086 () Bool)

(assert (=> b!870920 (=> (not res!592086) (not e!484951))))

(assert (=> b!870920 (= res!592086 (and (= (select (arr!24195 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!592083 () Bool)

(assert (=> start!74080 (=> (not res!592083) (not e!484951))))

(assert (=> start!74080 (= res!592083 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24636 _keys!868))))))

(assert (=> start!74080 e!484951))

(assert (=> start!74080 tp_is_empty!17103))

(assert (=> start!74080 true))

(assert (=> start!74080 tp!52405))

(declare-fun array_inv!19080 (array!50336) Bool)

(assert (=> start!74080 (array_inv!19080 _keys!868)))

(declare-fun e!484952 () Bool)

(declare-fun array_inv!19081 (array!50338) Bool)

(assert (=> start!74080 (and (array_inv!19081 _values!688) e!484952)))

(declare-fun b!870911 () Bool)

(assert (=> b!870911 (= e!484952 (and e!484949 mapRes!27254))))

(declare-fun condMapEmpty!27254 () Bool)

(declare-fun mapDefault!27254 () ValueCell!8112)

(assert (=> b!870911 (= condMapEmpty!27254 (= (arr!24196 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8112)) mapDefault!27254)))))

(assert (= (and start!74080 res!592083) b!870913))

(assert (= (and b!870913 res!592087) b!870916))

(assert (= (and b!870916 res!592082) b!870917))

(assert (= (and b!870917 res!592085) b!870912))

(assert (= (and b!870912 res!592081) b!870914))

(assert (= (and b!870914 res!592089) b!870910))

(assert (= (and b!870910 res!592084) b!870920))

(assert (= (and b!870920 res!592086) b!870915))

(assert (= (and b!870915 res!592088) b!870918))

(assert (= (and b!870911 condMapEmpty!27254) mapIsEmpty!27254))

(assert (= (and b!870911 (not condMapEmpty!27254)) mapNonEmpty!27254))

(get-info :version)

(assert (= (and mapNonEmpty!27254 ((_ is ValueCellFull!8112) mapValue!27254)) b!870909))

(assert (= (and b!870911 ((_ is ValueCellFull!8112) mapDefault!27254)) b!870919))

(assert (= start!74080 b!870911))

(declare-fun m!812281 () Bool)

(assert (=> b!870918 m!812281))

(declare-fun m!812283 () Bool)

(assert (=> b!870918 m!812283))

(assert (=> b!870918 m!812283))

(declare-fun m!812285 () Bool)

(assert (=> b!870918 m!812285))

(declare-fun m!812287 () Bool)

(assert (=> b!870918 m!812287))

(declare-fun m!812289 () Bool)

(assert (=> b!870912 m!812289))

(declare-fun m!812291 () Bool)

(assert (=> b!870913 m!812291))

(declare-fun m!812293 () Bool)

(assert (=> b!870915 m!812293))

(declare-fun m!812295 () Bool)

(assert (=> b!870915 m!812295))

(declare-fun m!812297 () Bool)

(assert (=> b!870915 m!812297))

(declare-fun m!812299 () Bool)

(assert (=> b!870910 m!812299))

(declare-fun m!812301 () Bool)

(assert (=> mapNonEmpty!27254 m!812301))

(declare-fun m!812303 () Bool)

(assert (=> start!74080 m!812303))

(declare-fun m!812305 () Bool)

(assert (=> start!74080 m!812305))

(declare-fun m!812307 () Bool)

(assert (=> b!870920 m!812307))

(declare-fun m!812309 () Bool)

(assert (=> b!870917 m!812309))

(check-sat (not b!870913) b_and!24737 (not start!74080) (not mapNonEmpty!27254) (not b!870915) (not b!870917) (not b_next!14967) tp_is_empty!17103 (not b!870918) (not b!870910) (not b!870912))
(check-sat b_and!24737 (not b_next!14967))
