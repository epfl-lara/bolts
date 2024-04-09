; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74224 () Bool)

(assert start!74224)

(declare-fun b_free!15003 () Bool)

(declare-fun b_next!15003 () Bool)

(assert (=> start!74224 (= b_free!15003 (not b_next!15003))))

(declare-fun tp!52660 () Bool)

(declare-fun b_and!24773 () Bool)

(assert (=> start!74224 (= tp!52660 b_and!24773)))

(declare-fun mapIsEmpty!27455 () Bool)

(declare-fun mapRes!27455 () Bool)

(assert (=> mapIsEmpty!27455 mapRes!27455))

(declare-fun b!872668 () Bool)

(declare-fun e!486022 () Bool)

(declare-fun tp_is_empty!17235 () Bool)

(assert (=> b!872668 (= e!486022 tp_is_empty!17235)))

(declare-fun res!593201 () Bool)

(declare-fun e!486021 () Bool)

(assert (=> start!74224 (=> (not res!593201) (not e!486021))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50588 0))(
  ( (array!50589 (arr!24320 (Array (_ BitVec 32) (_ BitVec 64))) (size!24761 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50588)

(assert (=> start!74224 (= res!593201 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24761 _keys!868))))))

(assert (=> start!74224 e!486021))

(assert (=> start!74224 tp_is_empty!17235))

(assert (=> start!74224 true))

(assert (=> start!74224 tp!52660))

(declare-fun array_inv!19172 (array!50588) Bool)

(assert (=> start!74224 (array_inv!19172 _keys!868)))

(declare-datatypes ((V!28027 0))(
  ( (V!28028 (val!8665 Int)) )
))
(declare-datatypes ((ValueCell!8178 0))(
  ( (ValueCellFull!8178 (v!11086 V!28027)) (EmptyCell!8178) )
))
(declare-datatypes ((array!50590 0))(
  ( (array!50591 (arr!24321 (Array (_ BitVec 32) ValueCell!8178)) (size!24762 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50590)

(declare-fun e!486024 () Bool)

(declare-fun array_inv!19173 (array!50590) Bool)

(assert (=> start!74224 (and (array_inv!19173 _values!688) e!486024)))

(declare-fun b!872669 () Bool)

(declare-fun res!593203 () Bool)

(assert (=> b!872669 (=> (not res!593203) (not e!486021))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50588 (_ BitVec 32)) Bool)

(assert (=> b!872669 (= res!593203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun v!557 () V!28027)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!11450 0))(
  ( (tuple2!11451 (_1!5735 (_ BitVec 64)) (_2!5735 V!28027)) )
))
(declare-datatypes ((List!17335 0))(
  ( (Nil!17332) (Cons!17331 (h!18462 tuple2!11450) (t!24380 List!17335)) )
))
(declare-datatypes ((ListLongMap!10233 0))(
  ( (ListLongMap!10234 (toList!5132 List!17335)) )
))
(declare-fun call!38476 () ListLongMap!10233)

(declare-fun minValue!654 () V!28027)

(declare-fun zeroValue!654 () V!28027)

(declare-fun bm!38473 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!3096 (array!50588 array!50590 (_ BitVec 32) (_ BitVec 32) V!28027 V!28027 (_ BitVec 32) Int) ListLongMap!10233)

(assert (=> bm!38473 (= call!38476 (getCurrentListMapNoExtraKeys!3096 _keys!868 (array!50591 (store (arr!24321 _values!688) i!612 (ValueCellFull!8178 v!557)) (size!24762 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!872670 () Bool)

(declare-fun e!486020 () Bool)

(assert (=> b!872670 (= e!486020 tp_is_empty!17235)))

(declare-fun call!38477 () ListLongMap!10233)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun e!486019 () Bool)

(declare-fun b!872671 () Bool)

(declare-fun +!2410 (ListLongMap!10233 tuple2!11450) ListLongMap!10233)

(assert (=> b!872671 (= e!486019 (= call!38476 (+!2410 call!38477 (tuple2!11451 k0!854 v!557))))))

(declare-fun b!872672 () Bool)

(declare-fun res!593199 () Bool)

(assert (=> b!872672 (=> (not res!593199) (not e!486021))))

(assert (=> b!872672 (= res!593199 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24761 _keys!868))))))

(declare-fun b!872673 () Bool)

(declare-fun res!593202 () Bool)

(assert (=> b!872673 (=> (not res!593202) (not e!486021))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!872673 (= res!593202 (validKeyInArray!0 k0!854))))

(declare-fun b!872674 () Bool)

(assert (=> b!872674 (= e!486021 (not true))))

(assert (=> b!872674 e!486019))

(declare-fun c!92316 () Bool)

(assert (=> b!872674 (= c!92316 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29872 0))(
  ( (Unit!29873) )
))
(declare-fun lt!395604 () Unit!29872)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!641 (array!50588 array!50590 (_ BitVec 32) (_ BitVec 32) V!28027 V!28027 (_ BitVec 32) (_ BitVec 64) V!28027 (_ BitVec 32) Int) Unit!29872)

(assert (=> b!872674 (= lt!395604 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!641 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38474 () Bool)

(assert (=> bm!38474 (= call!38477 (getCurrentListMapNoExtraKeys!3096 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!872675 () Bool)

(declare-fun res!593200 () Bool)

(assert (=> b!872675 (=> (not res!593200) (not e!486021))))

(assert (=> b!872675 (= res!593200 (and (= (select (arr!24320 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!24761 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!27455 () Bool)

(declare-fun tp!52661 () Bool)

(assert (=> mapNonEmpty!27455 (= mapRes!27455 (and tp!52661 e!486020))))

(declare-fun mapValue!27455 () ValueCell!8178)

(declare-fun mapRest!27455 () (Array (_ BitVec 32) ValueCell!8178))

(declare-fun mapKey!27455 () (_ BitVec 32))

(assert (=> mapNonEmpty!27455 (= (arr!24321 _values!688) (store mapRest!27455 mapKey!27455 mapValue!27455))))

(declare-fun b!872676 () Bool)

(declare-fun res!593205 () Bool)

(assert (=> b!872676 (=> (not res!593205) (not e!486021))))

(declare-datatypes ((List!17336 0))(
  ( (Nil!17333) (Cons!17332 (h!18463 (_ BitVec 64)) (t!24381 List!17336)) )
))
(declare-fun arrayNoDuplicates!0 (array!50588 (_ BitVec 32) List!17336) Bool)

(assert (=> b!872676 (= res!593205 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17333))))

(declare-fun b!872677 () Bool)

(assert (=> b!872677 (= e!486024 (and e!486022 mapRes!27455))))

(declare-fun condMapEmpty!27455 () Bool)

(declare-fun mapDefault!27455 () ValueCell!8178)

(assert (=> b!872677 (= condMapEmpty!27455 (= (arr!24321 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8178)) mapDefault!27455)))))

(declare-fun b!872678 () Bool)

(declare-fun res!593198 () Bool)

(assert (=> b!872678 (=> (not res!593198) (not e!486021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872678 (= res!593198 (validMask!0 mask!1196))))

(declare-fun b!872679 () Bool)

(declare-fun res!593204 () Bool)

(assert (=> b!872679 (=> (not res!593204) (not e!486021))))

(assert (=> b!872679 (= res!593204 (and (= (size!24762 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24761 _keys!868) (size!24762 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!872680 () Bool)

(assert (=> b!872680 (= e!486019 (= call!38476 call!38477))))

(assert (= (and start!74224 res!593201) b!872678))

(assert (= (and b!872678 res!593198) b!872679))

(assert (= (and b!872679 res!593204) b!872669))

(assert (= (and b!872669 res!593203) b!872676))

(assert (= (and b!872676 res!593205) b!872672))

(assert (= (and b!872672 res!593199) b!872673))

(assert (= (and b!872673 res!593202) b!872675))

(assert (= (and b!872675 res!593200) b!872674))

(assert (= (and b!872674 c!92316) b!872671))

(assert (= (and b!872674 (not c!92316)) b!872680))

(assert (= (or b!872671 b!872680) bm!38473))

(assert (= (or b!872671 b!872680) bm!38474))

(assert (= (and b!872677 condMapEmpty!27455) mapIsEmpty!27455))

(assert (= (and b!872677 (not condMapEmpty!27455)) mapNonEmpty!27455))

(get-info :version)

(assert (= (and mapNonEmpty!27455 ((_ is ValueCellFull!8178) mapValue!27455)) b!872670))

(assert (= (and b!872677 ((_ is ValueCellFull!8178) mapDefault!27455)) b!872668))

(assert (= start!74224 b!872677))

(declare-fun m!813423 () Bool)

(assert (=> b!872669 m!813423))

(declare-fun m!813425 () Bool)

(assert (=> b!872674 m!813425))

(declare-fun m!813427 () Bool)

(assert (=> start!74224 m!813427))

(declare-fun m!813429 () Bool)

(assert (=> start!74224 m!813429))

(declare-fun m!813431 () Bool)

(assert (=> b!872671 m!813431))

(declare-fun m!813433 () Bool)

(assert (=> b!872676 m!813433))

(declare-fun m!813435 () Bool)

(assert (=> b!872675 m!813435))

(declare-fun m!813437 () Bool)

(assert (=> b!872678 m!813437))

(declare-fun m!813439 () Bool)

(assert (=> bm!38473 m!813439))

(declare-fun m!813441 () Bool)

(assert (=> bm!38473 m!813441))

(declare-fun m!813443 () Bool)

(assert (=> mapNonEmpty!27455 m!813443))

(declare-fun m!813445 () Bool)

(assert (=> b!872673 m!813445))

(declare-fun m!813447 () Bool)

(assert (=> bm!38474 m!813447))

(check-sat (not b!872674) (not mapNonEmpty!27455) (not b!872671) (not b!872673) (not bm!38474) (not b!872676) (not start!74224) (not b_next!15003) (not bm!38473) (not b!872678) b_and!24773 tp_is_empty!17235 (not b!872669))
(check-sat b_and!24773 (not b_next!15003))
