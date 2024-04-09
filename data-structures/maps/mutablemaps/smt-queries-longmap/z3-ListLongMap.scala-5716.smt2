; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74110 () Bool)

(assert start!74110)

(declare-fun b_free!14991 () Bool)

(declare-fun b_next!14991 () Bool)

(assert (=> start!74110 (= b_free!14991 (not b_next!14991))))

(declare-fun tp!52486 () Bool)

(declare-fun b_and!24761 () Bool)

(assert (=> start!74110 (= tp!52486 b_and!24761)))

(declare-fun b!871414 () Bool)

(declare-fun res!592442 () Bool)

(declare-fun e!485218 () Bool)

(assert (=> b!871414 (=> (not res!592442) (not e!485218))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!50394 0))(
  ( (array!50395 (arr!24224 (Array (_ BitVec 32) (_ BitVec 64))) (size!24665 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50394)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!871414 (= res!592442 (and (= (select (arr!24224 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!592446 () Bool)

(assert (=> start!74110 (=> (not res!592446) (not e!485218))))

(assert (=> start!74110 (= res!592446 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24665 _keys!868))))))

(assert (=> start!74110 e!485218))

(declare-fun tp_is_empty!17133 () Bool)

(assert (=> start!74110 tp_is_empty!17133))

(assert (=> start!74110 true))

(assert (=> start!74110 tp!52486))

(declare-fun array_inv!19100 (array!50394) Bool)

(assert (=> start!74110 (array_inv!19100 _keys!868)))

(declare-datatypes ((V!27891 0))(
  ( (V!27892 (val!8614 Int)) )
))
(declare-datatypes ((ValueCell!8127 0))(
  ( (ValueCellFull!8127 (v!11035 V!27891)) (EmptyCell!8127) )
))
(declare-datatypes ((array!50396 0))(
  ( (array!50397 (arr!24225 (Array (_ BitVec 32) ValueCell!8127)) (size!24666 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50396)

(declare-fun e!485219 () Bool)

(declare-fun array_inv!19101 (array!50396) Bool)

(assert (=> start!74110 (and (array_inv!19101 _values!688) e!485219)))

(declare-datatypes ((tuple2!11444 0))(
  ( (tuple2!11445 (_1!5732 (_ BitVec 64)) (_2!5732 V!27891)) )
))
(declare-datatypes ((List!17298 0))(
  ( (Nil!17295) (Cons!17294 (h!18425 tuple2!11444) (t!24343 List!17298)) )
))
(declare-datatypes ((ListLongMap!10227 0))(
  ( (ListLongMap!10228 (toList!5129 List!17298)) )
))
(declare-fun call!38453 () ListLongMap!10227)

(declare-fun b!871415 () Bool)

(declare-fun call!38452 () ListLongMap!10227)

(declare-fun v!557 () V!27891)

(declare-fun e!485217 () Bool)

(declare-fun +!2408 (ListLongMap!10227 tuple2!11444) ListLongMap!10227)

(assert (=> b!871415 (= e!485217 (= call!38453 (+!2408 call!38452 (tuple2!11445 k0!854 v!557))))))

(declare-fun b!871416 () Bool)

(declare-fun e!485216 () Bool)

(assert (=> b!871416 (= e!485216 tp_is_empty!17133)))

(declare-fun b!871417 () Bool)

(declare-fun e!485220 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!871417 (= e!485220 (not (validKeyInArray!0 (select (arr!24224 _keys!868) from!1053))))))

(assert (=> b!871417 e!485217))

(declare-fun c!92301 () Bool)

(assert (=> b!871417 (= c!92301 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27891)

(declare-fun zeroValue!654 () V!27891)

(declare-datatypes ((Unit!29866 0))(
  ( (Unit!29867) )
))
(declare-fun lt!395441 () Unit!29866)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!639 (array!50394 array!50396 (_ BitVec 32) (_ BitVec 32) V!27891 V!27891 (_ BitVec 32) (_ BitVec 64) V!27891 (_ BitVec 32) Int) Unit!29866)

(assert (=> b!871417 (= lt!395441 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!639 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38449 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3093 (array!50394 array!50396 (_ BitVec 32) (_ BitVec 32) V!27891 V!27891 (_ BitVec 32) Int) ListLongMap!10227)

(assert (=> bm!38449 (= call!38452 (getCurrentListMapNoExtraKeys!3093 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!871418 () Bool)

(declare-fun res!592441 () Bool)

(assert (=> b!871418 (=> (not res!592441) (not e!485218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871418 (= res!592441 (validMask!0 mask!1196))))

(declare-fun b!871419 () Bool)

(declare-fun res!592444 () Bool)

(assert (=> b!871419 (=> (not res!592444) (not e!485218))))

(assert (=> b!871419 (= res!592444 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!27299 () Bool)

(declare-fun mapRes!27299 () Bool)

(declare-fun tp!52487 () Bool)

(declare-fun e!485215 () Bool)

(assert (=> mapNonEmpty!27299 (= mapRes!27299 (and tp!52487 e!485215))))

(declare-fun mapRest!27299 () (Array (_ BitVec 32) ValueCell!8127))

(declare-fun mapKey!27299 () (_ BitVec 32))

(declare-fun mapValue!27299 () ValueCell!8127)

(assert (=> mapNonEmpty!27299 (= (arr!24225 _values!688) (store mapRest!27299 mapKey!27299 mapValue!27299))))

(declare-fun b!871420 () Bool)

(declare-fun res!592445 () Bool)

(assert (=> b!871420 (=> (not res!592445) (not e!485218))))

(declare-datatypes ((List!17299 0))(
  ( (Nil!17296) (Cons!17295 (h!18426 (_ BitVec 64)) (t!24344 List!17299)) )
))
(declare-fun arrayNoDuplicates!0 (array!50394 (_ BitVec 32) List!17299) Bool)

(assert (=> b!871420 (= res!592445 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17296))))

(declare-fun b!871421 () Bool)

(assert (=> b!871421 (= e!485217 (= call!38453 call!38452))))

(declare-fun mapIsEmpty!27299 () Bool)

(assert (=> mapIsEmpty!27299 mapRes!27299))

(declare-fun b!871422 () Bool)

(declare-fun res!592443 () Bool)

(assert (=> b!871422 (=> (not res!592443) (not e!485218))))

(assert (=> b!871422 (= res!592443 (and (= (size!24666 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24665 _keys!868) (size!24666 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!871423 () Bool)

(assert (=> b!871423 (= e!485219 (and e!485216 mapRes!27299))))

(declare-fun condMapEmpty!27299 () Bool)

(declare-fun mapDefault!27299 () ValueCell!8127)

(assert (=> b!871423 (= condMapEmpty!27299 (= (arr!24225 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8127)) mapDefault!27299)))))

(declare-fun b!871424 () Bool)

(assert (=> b!871424 (= e!485218 e!485220)))

(declare-fun res!592448 () Bool)

(assert (=> b!871424 (=> (not res!592448) (not e!485220))))

(assert (=> b!871424 (= res!592448 (= from!1053 i!612))))

(declare-fun lt!395439 () ListLongMap!10227)

(declare-fun lt!395442 () array!50396)

(assert (=> b!871424 (= lt!395439 (getCurrentListMapNoExtraKeys!3093 _keys!868 lt!395442 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!871424 (= lt!395442 (array!50397 (store (arr!24225 _values!688) i!612 (ValueCellFull!8127 v!557)) (size!24666 _values!688)))))

(declare-fun lt!395440 () ListLongMap!10227)

(assert (=> b!871424 (= lt!395440 (getCurrentListMapNoExtraKeys!3093 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!871425 () Bool)

(declare-fun res!592447 () Bool)

(assert (=> b!871425 (=> (not res!592447) (not e!485218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50394 (_ BitVec 32)) Bool)

(assert (=> b!871425 (= res!592447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun bm!38450 () Bool)

(assert (=> bm!38450 (= call!38453 (getCurrentListMapNoExtraKeys!3093 _keys!868 lt!395442 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!871426 () Bool)

(assert (=> b!871426 (= e!485215 tp_is_empty!17133)))

(declare-fun b!871427 () Bool)

(declare-fun res!592449 () Bool)

(assert (=> b!871427 (=> (not res!592449) (not e!485218))))

(assert (=> b!871427 (= res!592449 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24665 _keys!868))))))

(assert (= (and start!74110 res!592446) b!871418))

(assert (= (and b!871418 res!592441) b!871422))

(assert (= (and b!871422 res!592443) b!871425))

(assert (= (and b!871425 res!592447) b!871420))

(assert (= (and b!871420 res!592445) b!871427))

(assert (= (and b!871427 res!592449) b!871419))

(assert (= (and b!871419 res!592444) b!871414))

(assert (= (and b!871414 res!592442) b!871424))

(assert (= (and b!871424 res!592448) b!871417))

(assert (= (and b!871417 c!92301) b!871415))

(assert (= (and b!871417 (not c!92301)) b!871421))

(assert (= (or b!871415 b!871421) bm!38449))

(assert (= (or b!871415 b!871421) bm!38450))

(assert (= (and b!871423 condMapEmpty!27299) mapIsEmpty!27299))

(assert (= (and b!871423 (not condMapEmpty!27299)) mapNonEmpty!27299))

(get-info :version)

(assert (= (and mapNonEmpty!27299 ((_ is ValueCellFull!8127) mapValue!27299)) b!871426))

(assert (= (and b!871423 ((_ is ValueCellFull!8127) mapDefault!27299)) b!871416))

(assert (= start!74110 b!871423))

(declare-fun m!812681 () Bool)

(assert (=> bm!38449 m!812681))

(declare-fun m!812683 () Bool)

(assert (=> b!871417 m!812683))

(assert (=> b!871417 m!812683))

(declare-fun m!812685 () Bool)

(assert (=> b!871417 m!812685))

(declare-fun m!812687 () Bool)

(assert (=> b!871417 m!812687))

(declare-fun m!812689 () Bool)

(assert (=> b!871414 m!812689))

(declare-fun m!812691 () Bool)

(assert (=> b!871418 m!812691))

(declare-fun m!812693 () Bool)

(assert (=> start!74110 m!812693))

(declare-fun m!812695 () Bool)

(assert (=> start!74110 m!812695))

(declare-fun m!812697 () Bool)

(assert (=> b!871424 m!812697))

(declare-fun m!812699 () Bool)

(assert (=> b!871424 m!812699))

(declare-fun m!812701 () Bool)

(assert (=> b!871424 m!812701))

(declare-fun m!812703 () Bool)

(assert (=> b!871415 m!812703))

(declare-fun m!812705 () Bool)

(assert (=> b!871420 m!812705))

(declare-fun m!812707 () Bool)

(assert (=> bm!38450 m!812707))

(declare-fun m!812709 () Bool)

(assert (=> mapNonEmpty!27299 m!812709))

(declare-fun m!812711 () Bool)

(assert (=> b!871419 m!812711))

(declare-fun m!812713 () Bool)

(assert (=> b!871425 m!812713))

(check-sat (not bm!38450) (not bm!38449) (not b!871418) (not b!871424) (not b!871417) (not b!871425) (not b!871419) (not start!74110) tp_is_empty!17133 (not b_next!14991) (not b!871415) b_and!24761 (not b!871420) (not mapNonEmpty!27299))
(check-sat b_and!24761 (not b_next!14991))
