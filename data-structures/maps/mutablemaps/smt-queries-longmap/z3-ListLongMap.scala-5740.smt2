; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74298 () Bool)

(assert start!74298)

(declare-fun b_free!15033 () Bool)

(declare-fun b_next!15033 () Bool)

(assert (=> start!74298 (= b_free!15033 (not b_next!15033))))

(declare-fun tp!52775 () Bool)

(declare-fun b_and!24827 () Bool)

(assert (=> start!74298 (= tp!52775 b_and!24827)))

(declare-fun res!593742 () Bool)

(declare-fun e!486489 () Bool)

(assert (=> start!74298 (=> (not res!593742) (not e!486489))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50670 0))(
  ( (array!50671 (arr!24359 (Array (_ BitVec 32) (_ BitVec 64))) (size!24800 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50670)

(assert (=> start!74298 (= res!593742 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24800 _keys!868))))))

(assert (=> start!74298 e!486489))

(declare-fun tp_is_empty!17277 () Bool)

(assert (=> start!74298 tp_is_empty!17277))

(assert (=> start!74298 true))

(assert (=> start!74298 tp!52775))

(declare-fun array_inv!19196 (array!50670) Bool)

(assert (=> start!74298 (array_inv!19196 _keys!868)))

(declare-datatypes ((V!28083 0))(
  ( (V!28084 (val!8686 Int)) )
))
(declare-datatypes ((ValueCell!8199 0))(
  ( (ValueCellFull!8199 (v!11111 V!28083)) (EmptyCell!8199) )
))
(declare-datatypes ((array!50672 0))(
  ( (array!50673 (arr!24360 (Array (_ BitVec 32) ValueCell!8199)) (size!24801 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50672)

(declare-fun e!486492 () Bool)

(declare-fun array_inv!19197 (array!50672) Bool)

(assert (=> start!74298 (and (array_inv!19197 _values!688) e!486492)))

(declare-fun b!873569 () Bool)

(declare-fun res!593741 () Bool)

(assert (=> b!873569 (=> (not res!593741) (not e!486489))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!873569 (= res!593741 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24800 _keys!868))))))

(declare-fun b!873570 () Bool)

(declare-fun e!486493 () Bool)

(assert (=> b!873570 (= e!486493 tp_is_empty!17277)))

(declare-fun b!873571 () Bool)

(declare-fun res!593740 () Bool)

(assert (=> b!873571 (=> (not res!593740) (not e!486489))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!873571 (= res!593740 (validMask!0 mask!1196))))

(declare-fun b!873572 () Bool)

(declare-fun res!593738 () Bool)

(assert (=> b!873572 (=> (not res!593738) (not e!486489))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!873572 (= res!593738 (validKeyInArray!0 k0!854))))

(declare-fun b!873573 () Bool)

(declare-fun mapRes!27524 () Bool)

(assert (=> b!873573 (= e!486492 (and e!486493 mapRes!27524))))

(declare-fun condMapEmpty!27524 () Bool)

(declare-fun mapDefault!27524 () ValueCell!8199)

(assert (=> b!873573 (= condMapEmpty!27524 (= (arr!24360 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8199)) mapDefault!27524)))))

(declare-fun mapNonEmpty!27524 () Bool)

(declare-fun tp!52774 () Bool)

(declare-fun e!486490 () Bool)

(assert (=> mapNonEmpty!27524 (= mapRes!27524 (and tp!52774 e!486490))))

(declare-fun mapKey!27524 () (_ BitVec 32))

(declare-fun mapValue!27524 () ValueCell!8199)

(declare-fun mapRest!27524 () (Array (_ BitVec 32) ValueCell!8199))

(assert (=> mapNonEmpty!27524 (= (arr!24360 _values!688) (store mapRest!27524 mapKey!27524 mapValue!27524))))

(declare-fun b!873574 () Bool)

(assert (=> b!873574 (= e!486490 tp_is_empty!17277)))

(declare-fun mapIsEmpty!27524 () Bool)

(assert (=> mapIsEmpty!27524 mapRes!27524))

(declare-fun b!873575 () Bool)

(declare-fun res!593743 () Bool)

(assert (=> b!873575 (=> (not res!593743) (not e!486489))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!873575 (= res!593743 (and (= (size!24801 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24800 _keys!868) (size!24801 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!873576 () Bool)

(declare-fun res!593739 () Bool)

(assert (=> b!873576 (=> (not res!593739) (not e!486489))))

(declare-datatypes ((List!17360 0))(
  ( (Nil!17357) (Cons!17356 (h!18487 (_ BitVec 64)) (t!24409 List!17360)) )
))
(declare-fun arrayNoDuplicates!0 (array!50670 (_ BitVec 32) List!17360) Bool)

(assert (=> b!873576 (= res!593739 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17357))))

(declare-fun b!873577 () Bool)

(declare-fun res!593736 () Bool)

(assert (=> b!873577 (=> (not res!593736) (not e!486489))))

(assert (=> b!873577 (= res!593736 (and (= (select (arr!24359 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!873578 () Bool)

(assert (=> b!873578 (= e!486489 (and (= from!1053 i!612) (or (bvslt (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 from!1053) (size!24800 _keys!868)))))))

(declare-fun v!557 () V!28083)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28083)

(declare-datatypes ((tuple2!11472 0))(
  ( (tuple2!11473 (_1!5746 (_ BitVec 64)) (_2!5746 V!28083)) )
))
(declare-datatypes ((List!17361 0))(
  ( (Nil!17358) (Cons!17357 (h!18488 tuple2!11472) (t!24410 List!17361)) )
))
(declare-datatypes ((ListLongMap!10255 0))(
  ( (ListLongMap!10256 (toList!5143 List!17361)) )
))
(declare-fun lt!395757 () ListLongMap!10255)

(declare-fun zeroValue!654 () V!28083)

(declare-fun getCurrentListMapNoExtraKeys!3107 (array!50670 array!50672 (_ BitVec 32) (_ BitVec 32) V!28083 V!28083 (_ BitVec 32) Int) ListLongMap!10255)

(assert (=> b!873578 (= lt!395757 (getCurrentListMapNoExtraKeys!3107 _keys!868 (array!50673 (store (arr!24360 _values!688) i!612 (ValueCellFull!8199 v!557)) (size!24801 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395758 () ListLongMap!10255)

(assert (=> b!873578 (= lt!395758 (getCurrentListMapNoExtraKeys!3107 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!873579 () Bool)

(declare-fun res!593737 () Bool)

(assert (=> b!873579 (=> (not res!593737) (not e!486489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50670 (_ BitVec 32)) Bool)

(assert (=> b!873579 (= res!593737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!74298 res!593742) b!873571))

(assert (= (and b!873571 res!593740) b!873575))

(assert (= (and b!873575 res!593743) b!873579))

(assert (= (and b!873579 res!593737) b!873576))

(assert (= (and b!873576 res!593739) b!873569))

(assert (= (and b!873569 res!593741) b!873572))

(assert (= (and b!873572 res!593738) b!873577))

(assert (= (and b!873577 res!593736) b!873578))

(assert (= (and b!873573 condMapEmpty!27524) mapIsEmpty!27524))

(assert (= (and b!873573 (not condMapEmpty!27524)) mapNonEmpty!27524))

(get-info :version)

(assert (= (and mapNonEmpty!27524 ((_ is ValueCellFull!8199) mapValue!27524)) b!873574))

(assert (= (and b!873573 ((_ is ValueCellFull!8199) mapDefault!27524)) b!873570))

(assert (= start!74298 b!873573))

(declare-fun m!814081 () Bool)

(assert (=> b!873572 m!814081))

(declare-fun m!814083 () Bool)

(assert (=> b!873571 m!814083))

(declare-fun m!814085 () Bool)

(assert (=> b!873576 m!814085))

(declare-fun m!814087 () Bool)

(assert (=> b!873579 m!814087))

(declare-fun m!814089 () Bool)

(assert (=> mapNonEmpty!27524 m!814089))

(declare-fun m!814091 () Bool)

(assert (=> start!74298 m!814091))

(declare-fun m!814093 () Bool)

(assert (=> start!74298 m!814093))

(declare-fun m!814095 () Bool)

(assert (=> b!873577 m!814095))

(declare-fun m!814097 () Bool)

(assert (=> b!873578 m!814097))

(declare-fun m!814099 () Bool)

(assert (=> b!873578 m!814099))

(declare-fun m!814101 () Bool)

(assert (=> b!873578 m!814101))

(check-sat (not b_next!15033) (not b!873576) (not mapNonEmpty!27524) (not b!873578) (not b!873571) b_and!24827 (not b!873579) (not start!74298) (not b!873572) tp_is_empty!17277)
(check-sat b_and!24827 (not b_next!15033))
