; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74026 () Bool)

(assert start!74026)

(declare-fun b_free!14913 () Bool)

(declare-fun b_next!14913 () Bool)

(assert (=> start!74026 (= b_free!14913 (not b_next!14913))))

(declare-fun tp!52243 () Bool)

(declare-fun b_and!24683 () Bool)

(assert (=> start!74026 (= tp!52243 b_and!24683)))

(declare-fun mapNonEmpty!27173 () Bool)

(declare-fun mapRes!27173 () Bool)

(declare-fun tp!52244 () Bool)

(declare-fun e!484462 () Bool)

(assert (=> mapNonEmpty!27173 (= mapRes!27173 (and tp!52244 e!484462))))

(declare-datatypes ((V!27779 0))(
  ( (V!27780 (val!8572 Int)) )
))
(declare-datatypes ((ValueCell!8085 0))(
  ( (ValueCellFull!8085 (v!10993 V!27779)) (EmptyCell!8085) )
))
(declare-fun mapValue!27173 () ValueCell!8085)

(declare-fun mapRest!27173 () (Array (_ BitVec 32) ValueCell!8085))

(declare-fun mapKey!27173 () (_ BitVec 32))

(declare-datatypes ((array!50230 0))(
  ( (array!50231 (arr!24142 (Array (_ BitVec 32) ValueCell!8085)) (size!24583 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50230)

(assert (=> mapNonEmpty!27173 (= (arr!24142 _values!688) (store mapRest!27173 mapKey!27173 mapValue!27173))))

(declare-fun b!869937 () Bool)

(declare-fun res!591355 () Bool)

(declare-fun e!484467 () Bool)

(assert (=> b!869937 (=> (not res!591355) (not e!484467))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50232 0))(
  ( (array!50233 (arr!24143 (Array (_ BitVec 32) (_ BitVec 64))) (size!24584 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50232)

(assert (=> b!869937 (= res!591355 (and (= (size!24583 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24584 _keys!868) (size!24583 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!869938 () Bool)

(declare-fun res!591360 () Bool)

(assert (=> b!869938 (=> (not res!591360) (not e!484467))))

(declare-datatypes ((List!17243 0))(
  ( (Nil!17240) (Cons!17239 (h!18370 (_ BitVec 64)) (t!24288 List!17243)) )
))
(declare-fun arrayNoDuplicates!0 (array!50232 (_ BitVec 32) List!17243) Bool)

(assert (=> b!869938 (= res!591360 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17240))))

(declare-fun b!869940 () Bool)

(declare-fun res!591354 () Bool)

(assert (=> b!869940 (=> (not res!591354) (not e!484467))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50232 (_ BitVec 32)) Bool)

(assert (=> b!869940 (= res!591354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!27173 () Bool)

(assert (=> mapIsEmpty!27173 mapRes!27173))

(declare-fun b!869941 () Bool)

(declare-fun res!591358 () Bool)

(assert (=> b!869941 (=> (not res!591358) (not e!484467))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!869941 (= res!591358 (and (= (select (arr!24143 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!869942 () Bool)

(declare-fun res!591359 () Bool)

(assert (=> b!869942 (=> (not res!591359) (not e!484467))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!869942 (= res!591359 (validKeyInArray!0 k0!854))))

(declare-fun b!869943 () Bool)

(declare-fun e!484464 () Bool)

(declare-fun e!484463 () Bool)

(assert (=> b!869943 (= e!484464 (and e!484463 mapRes!27173))))

(declare-fun condMapEmpty!27173 () Bool)

(declare-fun mapDefault!27173 () ValueCell!8085)

(assert (=> b!869943 (= condMapEmpty!27173 (= (arr!24142 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8085)) mapDefault!27173)))))

(declare-fun res!591357 () Bool)

(assert (=> start!74026 (=> (not res!591357) (not e!484467))))

(assert (=> start!74026 (= res!591357 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24584 _keys!868))))))

(assert (=> start!74026 e!484467))

(declare-fun tp_is_empty!17049 () Bool)

(assert (=> start!74026 tp_is_empty!17049))

(assert (=> start!74026 true))

(assert (=> start!74026 tp!52243))

(declare-fun array_inv!19040 (array!50232) Bool)

(assert (=> start!74026 (array_inv!19040 _keys!868)))

(declare-fun array_inv!19041 (array!50230) Bool)

(assert (=> start!74026 (and (array_inv!19041 _values!688) e!484464)))

(declare-fun b!869939 () Bool)

(declare-fun e!484465 () Bool)

(assert (=> b!869939 (= e!484465 (not true))))

(declare-fun v!557 () V!27779)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27779)

(declare-fun lt!394965 () array!50230)

(declare-fun zeroValue!654 () V!27779)

(declare-datatypes ((tuple2!11386 0))(
  ( (tuple2!11387 (_1!5703 (_ BitVec 64)) (_2!5703 V!27779)) )
))
(declare-datatypes ((List!17244 0))(
  ( (Nil!17241) (Cons!17240 (h!18371 tuple2!11386) (t!24289 List!17244)) )
))
(declare-datatypes ((ListLongMap!10169 0))(
  ( (ListLongMap!10170 (toList!5100 List!17244)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3064 (array!50232 array!50230 (_ BitVec 32) (_ BitVec 32) V!27779 V!27779 (_ BitVec 32) Int) ListLongMap!10169)

(declare-fun +!2383 (ListLongMap!10169 tuple2!11386) ListLongMap!10169)

(assert (=> b!869939 (= (getCurrentListMapNoExtraKeys!3064 _keys!868 lt!394965 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2383 (getCurrentListMapNoExtraKeys!3064 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11387 k0!854 v!557)))))

(declare-datatypes ((Unit!29816 0))(
  ( (Unit!29817) )
))
(declare-fun lt!394963 () Unit!29816)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!614 (array!50232 array!50230 (_ BitVec 32) (_ BitVec 32) V!27779 V!27779 (_ BitVec 32) (_ BitVec 64) V!27779 (_ BitVec 32) Int) Unit!29816)

(assert (=> b!869939 (= lt!394963 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!614 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!869944 () Bool)

(assert (=> b!869944 (= e!484463 tp_is_empty!17049)))

(declare-fun b!869945 () Bool)

(assert (=> b!869945 (= e!484467 e!484465)))

(declare-fun res!591356 () Bool)

(assert (=> b!869945 (=> (not res!591356) (not e!484465))))

(assert (=> b!869945 (= res!591356 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394964 () ListLongMap!10169)

(assert (=> b!869945 (= lt!394964 (getCurrentListMapNoExtraKeys!3064 _keys!868 lt!394965 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!869945 (= lt!394965 (array!50231 (store (arr!24142 _values!688) i!612 (ValueCellFull!8085 v!557)) (size!24583 _values!688)))))

(declare-fun lt!394962 () ListLongMap!10169)

(assert (=> b!869945 (= lt!394962 (getCurrentListMapNoExtraKeys!3064 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!869946 () Bool)

(declare-fun res!591353 () Bool)

(assert (=> b!869946 (=> (not res!591353) (not e!484467))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869946 (= res!591353 (validMask!0 mask!1196))))

(declare-fun b!869947 () Bool)

(declare-fun res!591352 () Bool)

(assert (=> b!869947 (=> (not res!591352) (not e!484467))))

(assert (=> b!869947 (= res!591352 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24584 _keys!868))))))

(declare-fun b!869948 () Bool)

(assert (=> b!869948 (= e!484462 tp_is_empty!17049)))

(assert (= (and start!74026 res!591357) b!869946))

(assert (= (and b!869946 res!591353) b!869937))

(assert (= (and b!869937 res!591355) b!869940))

(assert (= (and b!869940 res!591354) b!869938))

(assert (= (and b!869938 res!591360) b!869947))

(assert (= (and b!869947 res!591352) b!869942))

(assert (= (and b!869942 res!591359) b!869941))

(assert (= (and b!869941 res!591358) b!869945))

(assert (= (and b!869945 res!591356) b!869939))

(assert (= (and b!869943 condMapEmpty!27173) mapIsEmpty!27173))

(assert (= (and b!869943 (not condMapEmpty!27173)) mapNonEmpty!27173))

(get-info :version)

(assert (= (and mapNonEmpty!27173 ((_ is ValueCellFull!8085) mapValue!27173)) b!869948))

(assert (= (and b!869943 ((_ is ValueCellFull!8085) mapDefault!27173)) b!869944))

(assert (= start!74026 b!869943))

(declare-fun m!811471 () Bool)

(assert (=> b!869946 m!811471))

(declare-fun m!811473 () Bool)

(assert (=> b!869939 m!811473))

(declare-fun m!811475 () Bool)

(assert (=> b!869939 m!811475))

(assert (=> b!869939 m!811475))

(declare-fun m!811477 () Bool)

(assert (=> b!869939 m!811477))

(declare-fun m!811479 () Bool)

(assert (=> b!869939 m!811479))

(declare-fun m!811481 () Bool)

(assert (=> b!869941 m!811481))

(declare-fun m!811483 () Bool)

(assert (=> b!869938 m!811483))

(declare-fun m!811485 () Bool)

(assert (=> mapNonEmpty!27173 m!811485))

(declare-fun m!811487 () Bool)

(assert (=> b!869945 m!811487))

(declare-fun m!811489 () Bool)

(assert (=> b!869945 m!811489))

(declare-fun m!811491 () Bool)

(assert (=> b!869945 m!811491))

(declare-fun m!811493 () Bool)

(assert (=> b!869940 m!811493))

(declare-fun m!811495 () Bool)

(assert (=> b!869942 m!811495))

(declare-fun m!811497 () Bool)

(assert (=> start!74026 m!811497))

(declare-fun m!811499 () Bool)

(assert (=> start!74026 m!811499))

(check-sat (not start!74026) (not b!869942) (not b!869940) tp_is_empty!17049 b_and!24683 (not b!869945) (not b!869939) (not b_next!14913) (not mapNonEmpty!27173) (not b!869938) (not b!869946))
(check-sat b_and!24683 (not b_next!14913))
