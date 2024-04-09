; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74540 () Bool)

(assert start!74540)

(declare-fun b_free!15201 () Bool)

(declare-fun b_next!15201 () Bool)

(assert (=> start!74540 (= b_free!15201 (not b_next!15201))))

(declare-fun tp!53285 () Bool)

(declare-fun b_and!25095 () Bool)

(assert (=> start!74540 (= tp!53285 b_and!25095)))

(declare-fun b!877502 () Bool)

(declare-fun res!596224 () Bool)

(declare-fun e!488490 () Bool)

(assert (=> b!877502 (=> (not res!596224) (not e!488490))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!877502 (= res!596224 (validKeyInArray!0 k0!854))))

(declare-fun b!877503 () Bool)

(declare-fun res!596227 () Bool)

(assert (=> b!877503 (=> (not res!596227) (not e!488490))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!877503 (= res!596227 (validMask!0 mask!1196))))

(declare-fun b!877504 () Bool)

(declare-fun e!488489 () Bool)

(declare-fun tp_is_empty!17445 () Bool)

(assert (=> b!877504 (= e!488489 tp_is_empty!17445)))

(declare-fun b!877505 () Bool)

(declare-fun e!488491 () Bool)

(declare-fun mapRes!27783 () Bool)

(assert (=> b!877505 (= e!488491 (and e!488489 mapRes!27783))))

(declare-fun condMapEmpty!27783 () Bool)

(declare-datatypes ((V!28307 0))(
  ( (V!28308 (val!8770 Int)) )
))
(declare-datatypes ((ValueCell!8283 0))(
  ( (ValueCellFull!8283 (v!11206 V!28307)) (EmptyCell!8283) )
))
(declare-datatypes ((array!51000 0))(
  ( (array!51001 (arr!24522 (Array (_ BitVec 32) ValueCell!8283)) (size!24963 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51000)

(declare-fun mapDefault!27783 () ValueCell!8283)

(assert (=> b!877505 (= condMapEmpty!27783 (= (arr!24522 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8283)) mapDefault!27783)))))

(declare-fun mapIsEmpty!27783 () Bool)

(assert (=> mapIsEmpty!27783 mapRes!27783))

(declare-fun res!596226 () Bool)

(assert (=> start!74540 (=> (not res!596226) (not e!488490))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!51002 0))(
  ( (array!51003 (arr!24523 (Array (_ BitVec 32) (_ BitVec 64))) (size!24964 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51002)

(assert (=> start!74540 (= res!596226 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24964 _keys!868))))))

(assert (=> start!74540 e!488490))

(assert (=> start!74540 tp_is_empty!17445))

(assert (=> start!74540 true))

(assert (=> start!74540 tp!53285))

(declare-fun array_inv!19312 (array!51002) Bool)

(assert (=> start!74540 (array_inv!19312 _keys!868)))

(declare-fun array_inv!19313 (array!51000) Bool)

(assert (=> start!74540 (and (array_inv!19313 _values!688) e!488491)))

(declare-fun b!877506 () Bool)

(declare-fun res!596229 () Bool)

(assert (=> b!877506 (=> (not res!596229) (not e!488490))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!877506 (= res!596229 (and (= (select (arr!24523 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!877507 () Bool)

(declare-fun res!596223 () Bool)

(assert (=> b!877507 (=> (not res!596223) (not e!488490))))

(assert (=> b!877507 (= res!596223 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24964 _keys!868))))))

(declare-fun b!877508 () Bool)

(declare-fun res!596222 () Bool)

(assert (=> b!877508 (=> (not res!596222) (not e!488490))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!877508 (= res!596222 (and (= (size!24963 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24964 _keys!868) (size!24963 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!877509 () Bool)

(assert (=> b!877509 (= e!488490 false)))

(declare-datatypes ((tuple2!11612 0))(
  ( (tuple2!11613 (_1!5816 (_ BitVec 64)) (_2!5816 V!28307)) )
))
(declare-datatypes ((List!17493 0))(
  ( (Nil!17490) (Cons!17489 (h!18620 tuple2!11612) (t!24590 List!17493)) )
))
(declare-datatypes ((ListLongMap!10395 0))(
  ( (ListLongMap!10396 (toList!5213 List!17493)) )
))
(declare-fun lt!397058 () ListLongMap!10395)

(declare-fun v!557 () V!28307)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28307)

(declare-fun zeroValue!654 () V!28307)

(declare-fun getCurrentListMapNoExtraKeys!3175 (array!51002 array!51000 (_ BitVec 32) (_ BitVec 32) V!28307 V!28307 (_ BitVec 32) Int) ListLongMap!10395)

(assert (=> b!877509 (= lt!397058 (getCurrentListMapNoExtraKeys!3175 _keys!868 (array!51001 (store (arr!24522 _values!688) i!612 (ValueCellFull!8283 v!557)) (size!24963 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397057 () ListLongMap!10395)

(assert (=> b!877509 (= lt!397057 (getCurrentListMapNoExtraKeys!3175 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!877510 () Bool)

(declare-fun e!488493 () Bool)

(assert (=> b!877510 (= e!488493 tp_is_empty!17445)))

(declare-fun b!877511 () Bool)

(declare-fun res!596228 () Bool)

(assert (=> b!877511 (=> (not res!596228) (not e!488490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51002 (_ BitVec 32)) Bool)

(assert (=> b!877511 (= res!596228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27783 () Bool)

(declare-fun tp!53286 () Bool)

(assert (=> mapNonEmpty!27783 (= mapRes!27783 (and tp!53286 e!488493))))

(declare-fun mapKey!27783 () (_ BitVec 32))

(declare-fun mapValue!27783 () ValueCell!8283)

(declare-fun mapRest!27783 () (Array (_ BitVec 32) ValueCell!8283))

(assert (=> mapNonEmpty!27783 (= (arr!24522 _values!688) (store mapRest!27783 mapKey!27783 mapValue!27783))))

(declare-fun b!877512 () Bool)

(declare-fun res!596225 () Bool)

(assert (=> b!877512 (=> (not res!596225) (not e!488490))))

(declare-datatypes ((List!17494 0))(
  ( (Nil!17491) (Cons!17490 (h!18621 (_ BitVec 64)) (t!24591 List!17494)) )
))
(declare-fun arrayNoDuplicates!0 (array!51002 (_ BitVec 32) List!17494) Bool)

(assert (=> b!877512 (= res!596225 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17491))))

(assert (= (and start!74540 res!596226) b!877503))

(assert (= (and b!877503 res!596227) b!877508))

(assert (= (and b!877508 res!596222) b!877511))

(assert (= (and b!877511 res!596228) b!877512))

(assert (= (and b!877512 res!596225) b!877507))

(assert (= (and b!877507 res!596223) b!877502))

(assert (= (and b!877502 res!596224) b!877506))

(assert (= (and b!877506 res!596229) b!877509))

(assert (= (and b!877505 condMapEmpty!27783) mapIsEmpty!27783))

(assert (= (and b!877505 (not condMapEmpty!27783)) mapNonEmpty!27783))

(get-info :version)

(assert (= (and mapNonEmpty!27783 ((_ is ValueCellFull!8283) mapValue!27783)) b!877510))

(assert (= (and b!877505 ((_ is ValueCellFull!8283) mapDefault!27783)) b!877504))

(assert (= start!74540 b!877505))

(declare-fun m!817741 () Bool)

(assert (=> mapNonEmpty!27783 m!817741))

(declare-fun m!817743 () Bool)

(assert (=> b!877509 m!817743))

(declare-fun m!817745 () Bool)

(assert (=> b!877509 m!817745))

(declare-fun m!817747 () Bool)

(assert (=> b!877509 m!817747))

(declare-fun m!817749 () Bool)

(assert (=> b!877511 m!817749))

(declare-fun m!817751 () Bool)

(assert (=> b!877502 m!817751))

(declare-fun m!817753 () Bool)

(assert (=> start!74540 m!817753))

(declare-fun m!817755 () Bool)

(assert (=> start!74540 m!817755))

(declare-fun m!817757 () Bool)

(assert (=> b!877503 m!817757))

(declare-fun m!817759 () Bool)

(assert (=> b!877506 m!817759))

(declare-fun m!817761 () Bool)

(assert (=> b!877512 m!817761))

(check-sat (not b_next!15201) (not b!877502) (not b!877509) (not b!877503) tp_is_empty!17445 (not b!877511) (not start!74540) b_and!25095 (not mapNonEmpty!27783) (not b!877512))
(check-sat b_and!25095 (not b_next!15201))
