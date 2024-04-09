; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97618 () Bool)

(assert start!97618)

(declare-fun b!1114561 () Bool)

(declare-fun res!744073 () Bool)

(declare-fun e!635262 () Bool)

(assert (=> b!1114561 (=> (not res!744073) (not e!635262))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1114561 (= res!744073 (validMask!0 mask!1564))))

(declare-fun res!744074 () Bool)

(assert (=> start!97618 (=> (not res!744074) (not e!635262))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72474 0))(
  ( (array!72475 (arr!34886 (Array (_ BitVec 32) (_ BitVec 64))) (size!35423 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72474)

(assert (=> start!97618 (= res!744074 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35423 _keys!1208))))))

(assert (=> start!97618 e!635262))

(declare-fun array_inv!26688 (array!72474) Bool)

(assert (=> start!97618 (array_inv!26688 _keys!1208)))

(assert (=> start!97618 true))

(declare-datatypes ((V!42211 0))(
  ( (V!42212 (val!13963 Int)) )
))
(declare-datatypes ((ValueCell!13197 0))(
  ( (ValueCellFull!13197 (v!16597 V!42211)) (EmptyCell!13197) )
))
(declare-datatypes ((array!72476 0))(
  ( (array!72477 (arr!34887 (Array (_ BitVec 32) ValueCell!13197)) (size!35424 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72476)

(declare-fun e!635264 () Bool)

(declare-fun array_inv!26689 (array!72476) Bool)

(assert (=> start!97618 (and (array_inv!26689 _values!996) e!635264)))

(declare-fun b!1114562 () Bool)

(declare-fun res!744078 () Bool)

(declare-fun e!635263 () Bool)

(assert (=> b!1114562 (=> (not res!744078) (not e!635263))))

(declare-fun lt!496827 () array!72474)

(declare-datatypes ((List!24438 0))(
  ( (Nil!24435) (Cons!24434 (h!25643 (_ BitVec 64)) (t!34926 List!24438)) )
))
(declare-fun arrayNoDuplicates!0 (array!72474 (_ BitVec 32) List!24438) Bool)

(assert (=> b!1114562 (= res!744078 (arrayNoDuplicates!0 lt!496827 #b00000000000000000000000000000000 Nil!24435))))

(declare-fun b!1114563 () Bool)

(declare-fun e!635265 () Bool)

(declare-fun tp_is_empty!27813 () Bool)

(assert (=> b!1114563 (= e!635265 tp_is_empty!27813)))

(declare-fun b!1114564 () Bool)

(declare-fun res!744072 () Bool)

(assert (=> b!1114564 (=> (not res!744072) (not e!635262))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1114564 (= res!744072 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35423 _keys!1208))))))

(declare-fun b!1114565 () Bool)

(declare-fun res!744081 () Bool)

(assert (=> b!1114565 (=> (not res!744081) (not e!635262))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1114565 (= res!744081 (and (= (size!35424 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35423 _keys!1208) (size!35424 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1114566 () Bool)

(assert (=> b!1114566 (= e!635263 (not true))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72474 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1114566 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36485 0))(
  ( (Unit!36486) )
))
(declare-fun lt!496826 () Unit!36485)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72474 (_ BitVec 64) (_ BitVec 32)) Unit!36485)

(assert (=> b!1114566 (= lt!496826 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1114567 () Bool)

(declare-fun res!744077 () Bool)

(assert (=> b!1114567 (=> (not res!744077) (not e!635262))))

(assert (=> b!1114567 (= res!744077 (= (select (arr!34886 _keys!1208) i!673) k0!934))))

(declare-fun b!1114568 () Bool)

(declare-fun res!744075 () Bool)

(assert (=> b!1114568 (=> (not res!744075) (not e!635262))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72474 (_ BitVec 32)) Bool)

(assert (=> b!1114568 (= res!744075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1114569 () Bool)

(declare-fun res!744076 () Bool)

(assert (=> b!1114569 (=> (not res!744076) (not e!635262))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1114569 (= res!744076 (validKeyInArray!0 k0!934))))

(declare-fun b!1114570 () Bool)

(assert (=> b!1114570 (= e!635262 e!635263)))

(declare-fun res!744079 () Bool)

(assert (=> b!1114570 (=> (not res!744079) (not e!635263))))

(assert (=> b!1114570 (= res!744079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496827 mask!1564))))

(assert (=> b!1114570 (= lt!496827 (array!72475 (store (arr!34886 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35423 _keys!1208)))))

(declare-fun b!1114571 () Bool)

(declare-fun e!635267 () Bool)

(assert (=> b!1114571 (= e!635267 tp_is_empty!27813)))

(declare-fun b!1114572 () Bool)

(declare-fun mapRes!43537 () Bool)

(assert (=> b!1114572 (= e!635264 (and e!635267 mapRes!43537))))

(declare-fun condMapEmpty!43537 () Bool)

(declare-fun mapDefault!43537 () ValueCell!13197)

(assert (=> b!1114572 (= condMapEmpty!43537 (= (arr!34887 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13197)) mapDefault!43537)))))

(declare-fun mapIsEmpty!43537 () Bool)

(assert (=> mapIsEmpty!43537 mapRes!43537))

(declare-fun b!1114573 () Bool)

(declare-fun res!744080 () Bool)

(assert (=> b!1114573 (=> (not res!744080) (not e!635262))))

(assert (=> b!1114573 (= res!744080 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24435))))

(declare-fun mapNonEmpty!43537 () Bool)

(declare-fun tp!82782 () Bool)

(assert (=> mapNonEmpty!43537 (= mapRes!43537 (and tp!82782 e!635265))))

(declare-fun mapValue!43537 () ValueCell!13197)

(declare-fun mapKey!43537 () (_ BitVec 32))

(declare-fun mapRest!43537 () (Array (_ BitVec 32) ValueCell!13197))

(assert (=> mapNonEmpty!43537 (= (arr!34887 _values!996) (store mapRest!43537 mapKey!43537 mapValue!43537))))

(assert (= (and start!97618 res!744074) b!1114561))

(assert (= (and b!1114561 res!744073) b!1114565))

(assert (= (and b!1114565 res!744081) b!1114568))

(assert (= (and b!1114568 res!744075) b!1114573))

(assert (= (and b!1114573 res!744080) b!1114564))

(assert (= (and b!1114564 res!744072) b!1114569))

(assert (= (and b!1114569 res!744076) b!1114567))

(assert (= (and b!1114567 res!744077) b!1114570))

(assert (= (and b!1114570 res!744079) b!1114562))

(assert (= (and b!1114562 res!744078) b!1114566))

(assert (= (and b!1114572 condMapEmpty!43537) mapIsEmpty!43537))

(assert (= (and b!1114572 (not condMapEmpty!43537)) mapNonEmpty!43537))

(get-info :version)

(assert (= (and mapNonEmpty!43537 ((_ is ValueCellFull!13197) mapValue!43537)) b!1114563))

(assert (= (and b!1114572 ((_ is ValueCellFull!13197) mapDefault!43537)) b!1114571))

(assert (= start!97618 b!1114572))

(declare-fun m!1031499 () Bool)

(assert (=> b!1114569 m!1031499))

(declare-fun m!1031501 () Bool)

(assert (=> mapNonEmpty!43537 m!1031501))

(declare-fun m!1031503 () Bool)

(assert (=> b!1114566 m!1031503))

(declare-fun m!1031505 () Bool)

(assert (=> b!1114566 m!1031505))

(declare-fun m!1031507 () Bool)

(assert (=> b!1114562 m!1031507))

(declare-fun m!1031509 () Bool)

(assert (=> b!1114561 m!1031509))

(declare-fun m!1031511 () Bool)

(assert (=> b!1114573 m!1031511))

(declare-fun m!1031513 () Bool)

(assert (=> b!1114570 m!1031513))

(declare-fun m!1031515 () Bool)

(assert (=> b!1114570 m!1031515))

(declare-fun m!1031517 () Bool)

(assert (=> start!97618 m!1031517))

(declare-fun m!1031519 () Bool)

(assert (=> start!97618 m!1031519))

(declare-fun m!1031521 () Bool)

(assert (=> b!1114567 m!1031521))

(declare-fun m!1031523 () Bool)

(assert (=> b!1114568 m!1031523))

(check-sat (not mapNonEmpty!43537) tp_is_empty!27813 (not b!1114562) (not b!1114561) (not b!1114566) (not b!1114569) (not b!1114568) (not b!1114570) (not start!97618) (not b!1114573))
(check-sat)
