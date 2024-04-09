; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97654 () Bool)

(assert start!97654)

(declare-fun b!1115263 () Bool)

(declare-fun e!635591 () Bool)

(declare-fun tp_is_empty!27849 () Bool)

(assert (=> b!1115263 (= e!635591 tp_is_empty!27849)))

(declare-fun b!1115264 () Bool)

(declare-fun e!635587 () Bool)

(assert (=> b!1115264 (= e!635587 (not true))))

(declare-datatypes ((array!72540 0))(
  ( (array!72541 (arr!34919 (Array (_ BitVec 32) (_ BitVec 64))) (size!35456 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72540)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72540 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1115264 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36505 0))(
  ( (Unit!36506) )
))
(declare-fun lt!496934 () Unit!36505)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72540 (_ BitVec 64) (_ BitVec 32)) Unit!36505)

(assert (=> b!1115264 (= lt!496934 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1115265 () Bool)

(declare-fun res!744619 () Bool)

(declare-fun e!635588 () Bool)

(assert (=> b!1115265 (=> (not res!744619) (not e!635588))))

(assert (=> b!1115265 (= res!744619 (= (select (arr!34919 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!43591 () Bool)

(declare-fun mapRes!43591 () Bool)

(assert (=> mapIsEmpty!43591 mapRes!43591))

(declare-fun b!1115266 () Bool)

(declare-fun res!744621 () Bool)

(assert (=> b!1115266 (=> (not res!744621) (not e!635588))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1115266 (= res!744621 (validKeyInArray!0 k0!934))))

(declare-fun b!1115267 () Bool)

(declare-fun res!744615 () Bool)

(assert (=> b!1115267 (=> (not res!744615) (not e!635588))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72540 (_ BitVec 32)) Bool)

(assert (=> b!1115267 (= res!744615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!744616 () Bool)

(assert (=> start!97654 (=> (not res!744616) (not e!635588))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97654 (= res!744616 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35456 _keys!1208))))))

(assert (=> start!97654 e!635588))

(declare-fun array_inv!26706 (array!72540) Bool)

(assert (=> start!97654 (array_inv!26706 _keys!1208)))

(assert (=> start!97654 true))

(declare-datatypes ((V!42259 0))(
  ( (V!42260 (val!13981 Int)) )
))
(declare-datatypes ((ValueCell!13215 0))(
  ( (ValueCellFull!13215 (v!16615 V!42259)) (EmptyCell!13215) )
))
(declare-datatypes ((array!72542 0))(
  ( (array!72543 (arr!34920 (Array (_ BitVec 32) ValueCell!13215)) (size!35457 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72542)

(declare-fun e!635590 () Bool)

(declare-fun array_inv!26707 (array!72542) Bool)

(assert (=> start!97654 (and (array_inv!26707 _values!996) e!635590)))

(declare-fun b!1115268 () Bool)

(declare-fun res!744614 () Bool)

(assert (=> b!1115268 (=> (not res!744614) (not e!635588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1115268 (= res!744614 (validMask!0 mask!1564))))

(declare-fun b!1115269 () Bool)

(declare-fun res!744618 () Bool)

(assert (=> b!1115269 (=> (not res!744618) (not e!635588))))

(assert (=> b!1115269 (= res!744618 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35456 _keys!1208))))))

(declare-fun b!1115270 () Bool)

(declare-fun e!635586 () Bool)

(assert (=> b!1115270 (= e!635586 tp_is_empty!27849)))

(declare-fun b!1115271 () Bool)

(declare-fun res!744612 () Bool)

(assert (=> b!1115271 (=> (not res!744612) (not e!635588))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1115271 (= res!744612 (and (= (size!35457 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35456 _keys!1208) (size!35457 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1115272 () Bool)

(declare-fun res!744613 () Bool)

(assert (=> b!1115272 (=> (not res!744613) (not e!635587))))

(declare-fun lt!496935 () array!72540)

(declare-datatypes ((List!24451 0))(
  ( (Nil!24448) (Cons!24447 (h!25656 (_ BitVec 64)) (t!34939 List!24451)) )
))
(declare-fun arrayNoDuplicates!0 (array!72540 (_ BitVec 32) List!24451) Bool)

(assert (=> b!1115272 (= res!744613 (arrayNoDuplicates!0 lt!496935 #b00000000000000000000000000000000 Nil!24448))))

(declare-fun b!1115273 () Bool)

(assert (=> b!1115273 (= e!635590 (and e!635591 mapRes!43591))))

(declare-fun condMapEmpty!43591 () Bool)

(declare-fun mapDefault!43591 () ValueCell!13215)

(assert (=> b!1115273 (= condMapEmpty!43591 (= (arr!34920 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13215)) mapDefault!43591)))))

(declare-fun b!1115274 () Bool)

(assert (=> b!1115274 (= e!635588 e!635587)))

(declare-fun res!744620 () Bool)

(assert (=> b!1115274 (=> (not res!744620) (not e!635587))))

(assert (=> b!1115274 (= res!744620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496935 mask!1564))))

(assert (=> b!1115274 (= lt!496935 (array!72541 (store (arr!34919 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35456 _keys!1208)))))

(declare-fun b!1115275 () Bool)

(declare-fun res!744617 () Bool)

(assert (=> b!1115275 (=> (not res!744617) (not e!635588))))

(assert (=> b!1115275 (= res!744617 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24448))))

(declare-fun mapNonEmpty!43591 () Bool)

(declare-fun tp!82836 () Bool)

(assert (=> mapNonEmpty!43591 (= mapRes!43591 (and tp!82836 e!635586))))

(declare-fun mapRest!43591 () (Array (_ BitVec 32) ValueCell!13215))

(declare-fun mapKey!43591 () (_ BitVec 32))

(declare-fun mapValue!43591 () ValueCell!13215)

(assert (=> mapNonEmpty!43591 (= (arr!34920 _values!996) (store mapRest!43591 mapKey!43591 mapValue!43591))))

(assert (= (and start!97654 res!744616) b!1115268))

(assert (= (and b!1115268 res!744614) b!1115271))

(assert (= (and b!1115271 res!744612) b!1115267))

(assert (= (and b!1115267 res!744615) b!1115275))

(assert (= (and b!1115275 res!744617) b!1115269))

(assert (= (and b!1115269 res!744618) b!1115266))

(assert (= (and b!1115266 res!744621) b!1115265))

(assert (= (and b!1115265 res!744619) b!1115274))

(assert (= (and b!1115274 res!744620) b!1115272))

(assert (= (and b!1115272 res!744613) b!1115264))

(assert (= (and b!1115273 condMapEmpty!43591) mapIsEmpty!43591))

(assert (= (and b!1115273 (not condMapEmpty!43591)) mapNonEmpty!43591))

(get-info :version)

(assert (= (and mapNonEmpty!43591 ((_ is ValueCellFull!13215) mapValue!43591)) b!1115270))

(assert (= (and b!1115273 ((_ is ValueCellFull!13215) mapDefault!43591)) b!1115263))

(assert (= start!97654 b!1115273))

(declare-fun m!1031967 () Bool)

(assert (=> start!97654 m!1031967))

(declare-fun m!1031969 () Bool)

(assert (=> start!97654 m!1031969))

(declare-fun m!1031971 () Bool)

(assert (=> b!1115265 m!1031971))

(declare-fun m!1031973 () Bool)

(assert (=> b!1115275 m!1031973))

(declare-fun m!1031975 () Bool)

(assert (=> b!1115274 m!1031975))

(declare-fun m!1031977 () Bool)

(assert (=> b!1115274 m!1031977))

(declare-fun m!1031979 () Bool)

(assert (=> b!1115268 m!1031979))

(declare-fun m!1031981 () Bool)

(assert (=> b!1115266 m!1031981))

(declare-fun m!1031983 () Bool)

(assert (=> mapNonEmpty!43591 m!1031983))

(declare-fun m!1031985 () Bool)

(assert (=> b!1115267 m!1031985))

(declare-fun m!1031987 () Bool)

(assert (=> b!1115264 m!1031987))

(declare-fun m!1031989 () Bool)

(assert (=> b!1115264 m!1031989))

(declare-fun m!1031991 () Bool)

(assert (=> b!1115272 m!1031991))

(check-sat (not b!1115264) (not b!1115272) (not mapNonEmpty!43591) (not start!97654) tp_is_empty!27849 (not b!1115275) (not b!1115266) (not b!1115274) (not b!1115267) (not b!1115268))
(check-sat)
