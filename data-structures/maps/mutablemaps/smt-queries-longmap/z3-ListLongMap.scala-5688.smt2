; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73942 () Bool)

(assert start!73942)

(declare-fun b_free!14829 () Bool)

(declare-fun b_next!14829 () Bool)

(assert (=> start!73942 (= b_free!14829 (not b_next!14829))))

(declare-fun tp!51991 () Bool)

(declare-fun b_and!24599 () Bool)

(assert (=> start!73942 (= tp!51991 b_and!24599)))

(declare-fun b!868425 () Bool)

(declare-fun e!483710 () Bool)

(assert (=> b!868425 (= e!483710 (not true))))

(declare-datatypes ((V!27667 0))(
  ( (V!27668 (val!8530 Int)) )
))
(declare-fun v!557 () V!27667)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!50064 0))(
  ( (array!50065 (arr!24059 (Array (_ BitVec 32) (_ BitVec 64))) (size!24500 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50064)

(declare-datatypes ((ValueCell!8043 0))(
  ( (ValueCellFull!8043 (v!10951 V!27667)) (EmptyCell!8043) )
))
(declare-datatypes ((array!50066 0))(
  ( (array!50067 (arr!24060 (Array (_ BitVec 32) ValueCell!8043)) (size!24501 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50066)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!27667)

(declare-fun zeroValue!654 () V!27667)

(declare-fun lt!394460 () array!50066)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11322 0))(
  ( (tuple2!11323 (_1!5671 (_ BitVec 64)) (_2!5671 V!27667)) )
))
(declare-datatypes ((List!17182 0))(
  ( (Nil!17179) (Cons!17178 (h!18309 tuple2!11322) (t!24227 List!17182)) )
))
(declare-datatypes ((ListLongMap!10105 0))(
  ( (ListLongMap!10106 (toList!5068 List!17182)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3032 (array!50064 array!50066 (_ BitVec 32) (_ BitVec 32) V!27667 V!27667 (_ BitVec 32) Int) ListLongMap!10105)

(declare-fun +!2358 (ListLongMap!10105 tuple2!11322) ListLongMap!10105)

(assert (=> b!868425 (= (getCurrentListMapNoExtraKeys!3032 _keys!868 lt!394460 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2358 (getCurrentListMapNoExtraKeys!3032 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11323 k0!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29766 0))(
  ( (Unit!29767) )
))
(declare-fun lt!394458 () Unit!29766)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!589 (array!50064 array!50066 (_ BitVec 32) (_ BitVec 32) V!27667 V!27667 (_ BitVec 32) (_ BitVec 64) V!27667 (_ BitVec 32) Int) Unit!29766)

(assert (=> b!868425 (= lt!394458 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!589 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!868426 () Bool)

(declare-fun e!483709 () Bool)

(declare-fun tp_is_empty!16965 () Bool)

(assert (=> b!868426 (= e!483709 tp_is_empty!16965)))

(declare-fun mapIsEmpty!27047 () Bool)

(declare-fun mapRes!27047 () Bool)

(assert (=> mapIsEmpty!27047 mapRes!27047))

(declare-fun b!868427 () Bool)

(declare-fun res!590219 () Bool)

(declare-fun e!483707 () Bool)

(assert (=> b!868427 (=> (not res!590219) (not e!483707))))

(assert (=> b!868427 (= res!590219 (and (= (size!24501 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24500 _keys!868) (size!24501 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!868428 () Bool)

(declare-fun res!590220 () Bool)

(assert (=> b!868428 (=> (not res!590220) (not e!483707))))

(declare-datatypes ((List!17183 0))(
  ( (Nil!17180) (Cons!17179 (h!18310 (_ BitVec 64)) (t!24228 List!17183)) )
))
(declare-fun arrayNoDuplicates!0 (array!50064 (_ BitVec 32) List!17183) Bool)

(assert (=> b!868428 (= res!590220 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17180))))

(declare-fun b!868430 () Bool)

(declare-fun res!590226 () Bool)

(assert (=> b!868430 (=> (not res!590226) (not e!483707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!868430 (= res!590226 (validMask!0 mask!1196))))

(declare-fun b!868431 () Bool)

(declare-fun res!590222 () Bool)

(assert (=> b!868431 (=> (not res!590222) (not e!483707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!868431 (= res!590222 (validKeyInArray!0 k0!854))))

(declare-fun b!868432 () Bool)

(declare-fun res!590225 () Bool)

(assert (=> b!868432 (=> (not res!590225) (not e!483707))))

(assert (=> b!868432 (= res!590225 (and (= (select (arr!24059 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!868433 () Bool)

(declare-fun res!590223 () Bool)

(assert (=> b!868433 (=> (not res!590223) (not e!483707))))

(assert (=> b!868433 (= res!590223 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24500 _keys!868))))))

(declare-fun b!868434 () Bool)

(declare-fun res!590221 () Bool)

(assert (=> b!868434 (=> (not res!590221) (not e!483707))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50064 (_ BitVec 32)) Bool)

(assert (=> b!868434 (= res!590221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!868435 () Bool)

(declare-fun e!483708 () Bool)

(assert (=> b!868435 (= e!483708 tp_is_empty!16965)))

(declare-fun b!868436 () Bool)

(assert (=> b!868436 (= e!483707 e!483710)))

(declare-fun res!590218 () Bool)

(assert (=> b!868436 (=> (not res!590218) (not e!483710))))

(assert (=> b!868436 (= res!590218 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394461 () ListLongMap!10105)

(assert (=> b!868436 (= lt!394461 (getCurrentListMapNoExtraKeys!3032 _keys!868 lt!394460 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!868436 (= lt!394460 (array!50067 (store (arr!24060 _values!688) i!612 (ValueCellFull!8043 v!557)) (size!24501 _values!688)))))

(declare-fun lt!394459 () ListLongMap!10105)

(assert (=> b!868436 (= lt!394459 (getCurrentListMapNoExtraKeys!3032 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!27047 () Bool)

(declare-fun tp!51992 () Bool)

(assert (=> mapNonEmpty!27047 (= mapRes!27047 (and tp!51992 e!483709))))

(declare-fun mapRest!27047 () (Array (_ BitVec 32) ValueCell!8043))

(declare-fun mapKey!27047 () (_ BitVec 32))

(declare-fun mapValue!27047 () ValueCell!8043)

(assert (=> mapNonEmpty!27047 (= (arr!24060 _values!688) (store mapRest!27047 mapKey!27047 mapValue!27047))))

(declare-fun b!868429 () Bool)

(declare-fun e!483706 () Bool)

(assert (=> b!868429 (= e!483706 (and e!483708 mapRes!27047))))

(declare-fun condMapEmpty!27047 () Bool)

(declare-fun mapDefault!27047 () ValueCell!8043)

(assert (=> b!868429 (= condMapEmpty!27047 (= (arr!24060 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8043)) mapDefault!27047)))))

(declare-fun res!590224 () Bool)

(assert (=> start!73942 (=> (not res!590224) (not e!483707))))

(assert (=> start!73942 (= res!590224 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24500 _keys!868))))))

(assert (=> start!73942 e!483707))

(assert (=> start!73942 tp_is_empty!16965))

(assert (=> start!73942 true))

(assert (=> start!73942 tp!51991))

(declare-fun array_inv!18982 (array!50064) Bool)

(assert (=> start!73942 (array_inv!18982 _keys!868)))

(declare-fun array_inv!18983 (array!50066) Bool)

(assert (=> start!73942 (and (array_inv!18983 _values!688) e!483706)))

(assert (= (and start!73942 res!590224) b!868430))

(assert (= (and b!868430 res!590226) b!868427))

(assert (= (and b!868427 res!590219) b!868434))

(assert (= (and b!868434 res!590221) b!868428))

(assert (= (and b!868428 res!590220) b!868433))

(assert (= (and b!868433 res!590223) b!868431))

(assert (= (and b!868431 res!590222) b!868432))

(assert (= (and b!868432 res!590225) b!868436))

(assert (= (and b!868436 res!590218) b!868425))

(assert (= (and b!868429 condMapEmpty!27047) mapIsEmpty!27047))

(assert (= (and b!868429 (not condMapEmpty!27047)) mapNonEmpty!27047))

(get-info :version)

(assert (= (and mapNonEmpty!27047 ((_ is ValueCellFull!8043) mapValue!27047)) b!868426))

(assert (= (and b!868429 ((_ is ValueCellFull!8043) mapDefault!27047)) b!868435))

(assert (= start!73942 b!868429))

(declare-fun m!810211 () Bool)

(assert (=> start!73942 m!810211))

(declare-fun m!810213 () Bool)

(assert (=> start!73942 m!810213))

(declare-fun m!810215 () Bool)

(assert (=> b!868432 m!810215))

(declare-fun m!810217 () Bool)

(assert (=> mapNonEmpty!27047 m!810217))

(declare-fun m!810219 () Bool)

(assert (=> b!868425 m!810219))

(declare-fun m!810221 () Bool)

(assert (=> b!868425 m!810221))

(assert (=> b!868425 m!810221))

(declare-fun m!810223 () Bool)

(assert (=> b!868425 m!810223))

(declare-fun m!810225 () Bool)

(assert (=> b!868425 m!810225))

(declare-fun m!810227 () Bool)

(assert (=> b!868434 m!810227))

(declare-fun m!810229 () Bool)

(assert (=> b!868428 m!810229))

(declare-fun m!810231 () Bool)

(assert (=> b!868436 m!810231))

(declare-fun m!810233 () Bool)

(assert (=> b!868436 m!810233))

(declare-fun m!810235 () Bool)

(assert (=> b!868436 m!810235))

(declare-fun m!810237 () Bool)

(assert (=> b!868430 m!810237))

(declare-fun m!810239 () Bool)

(assert (=> b!868431 m!810239))

(check-sat (not b!868434) (not b!868430) (not b!868428) (not b!868436) (not b_next!14829) (not b!868425) (not mapNonEmpty!27047) (not b!868431) tp_is_empty!16965 (not start!73942) b_and!24599)
(check-sat b_and!24599 (not b_next!14829))
