; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99324 () Bool)

(assert start!99324)

(declare-fun b_free!24867 () Bool)

(declare-fun b_next!24867 () Bool)

(assert (=> start!99324 (= b_free!24867 (not b_next!24867))))

(declare-fun tp!87316 () Bool)

(declare-fun b_and!40615 () Bool)

(assert (=> start!99324 (= tp!87316 b_and!40615)))

(declare-fun b!1169666 () Bool)

(declare-fun res!776245 () Bool)

(declare-fun e!664821 () Bool)

(assert (=> b!1169666 (=> (not res!776245) (not e!664821))))

(declare-datatypes ((array!75570 0))(
  ( (array!75571 (arr!36431 (Array (_ BitVec 32) (_ BitVec 64))) (size!36968 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75570)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44323 0))(
  ( (V!44324 (val!14755 Int)) )
))
(declare-datatypes ((ValueCell!13989 0))(
  ( (ValueCellFull!13989 (v!17394 V!44323)) (EmptyCell!13989) )
))
(declare-datatypes ((array!75572 0))(
  ( (array!75573 (arr!36432 (Array (_ BitVec 32) ValueCell!13989)) (size!36969 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75572)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1169666 (= res!776245 (and (= (size!36969 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36968 _keys!1208) (size!36969 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1169667 () Bool)

(declare-fun e!664822 () Bool)

(assert (=> b!1169667 (= e!664821 e!664822)))

(declare-fun res!776248 () Bool)

(assert (=> b!1169667 (=> (not res!776248) (not e!664822))))

(declare-fun lt!526689 () array!75570)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75570 (_ BitVec 32)) Bool)

(assert (=> b!1169667 (= res!776248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526689 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1169667 (= lt!526689 (array!75571 (store (arr!36431 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36968 _keys!1208)))))

(declare-fun b!1169668 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun e!664825 () Bool)

(declare-fun arrayContainsKey!0 (array!75570 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1169668 (= e!664825 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!45923 () Bool)

(declare-fun mapRes!45923 () Bool)

(declare-fun tp!87315 () Bool)

(declare-fun e!664823 () Bool)

(assert (=> mapNonEmpty!45923 (= mapRes!45923 (and tp!87315 e!664823))))

(declare-fun mapValue!45923 () ValueCell!13989)

(declare-fun mapRest!45923 () (Array (_ BitVec 32) ValueCell!13989))

(declare-fun mapKey!45923 () (_ BitVec 32))

(assert (=> mapNonEmpty!45923 (= (arr!36432 _values!996) (store mapRest!45923 mapKey!45923 mapValue!45923))))

(declare-fun b!1169669 () Bool)

(declare-fun tp_is_empty!29397 () Bool)

(assert (=> b!1169669 (= e!664823 tp_is_empty!29397)))

(declare-fun res!776252 () Bool)

(assert (=> start!99324 (=> (not res!776252) (not e!664821))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99324 (= res!776252 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36968 _keys!1208))))))

(assert (=> start!99324 e!664821))

(assert (=> start!99324 tp_is_empty!29397))

(declare-fun array_inv!27726 (array!75570) Bool)

(assert (=> start!99324 (array_inv!27726 _keys!1208)))

(assert (=> start!99324 true))

(assert (=> start!99324 tp!87316))

(declare-fun e!664820 () Bool)

(declare-fun array_inv!27727 (array!75572) Bool)

(assert (=> start!99324 (and (array_inv!27727 _values!996) e!664820)))

(declare-fun b!1169670 () Bool)

(declare-fun res!776247 () Bool)

(assert (=> b!1169670 (=> (not res!776247) (not e!664821))))

(assert (=> b!1169670 (= res!776247 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36968 _keys!1208))))))

(declare-fun b!1169671 () Bool)

(declare-fun e!664826 () Bool)

(assert (=> b!1169671 (= e!664826 e!664825)))

(declare-fun res!776244 () Bool)

(assert (=> b!1169671 (=> res!776244 e!664825)))

(assert (=> b!1169671 (= res!776244 (not (= (select (arr!36431 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1169672 () Bool)

(declare-fun e!664828 () Bool)

(assert (=> b!1169672 (= e!664820 (and e!664828 mapRes!45923))))

(declare-fun condMapEmpty!45923 () Bool)

(declare-fun mapDefault!45923 () ValueCell!13989)

(assert (=> b!1169672 (= condMapEmpty!45923 (= (arr!36432 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13989)) mapDefault!45923)))))

(declare-fun b!1169673 () Bool)

(declare-fun res!776250 () Bool)

(assert (=> b!1169673 (=> (not res!776250) (not e!664821))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1169673 (= res!776250 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!45923 () Bool)

(assert (=> mapIsEmpty!45923 mapRes!45923))

(declare-fun b!1169674 () Bool)

(declare-fun e!664827 () Bool)

(assert (=> b!1169674 (= e!664827 true)))

(assert (=> b!1169674 e!664826))

(declare-fun res!776243 () Bool)

(assert (=> b!1169674 (=> (not res!776243) (not e!664826))))

(declare-datatypes ((tuple2!18926 0))(
  ( (tuple2!18927 (_1!9473 (_ BitVec 64)) (_2!9473 V!44323)) )
))
(declare-datatypes ((List!25698 0))(
  ( (Nil!25695) (Cons!25694 (h!26903 tuple2!18926) (t!37564 List!25698)) )
))
(declare-datatypes ((ListLongMap!16907 0))(
  ( (ListLongMap!16908 (toList!8469 List!25698)) )
))
(declare-fun lt!526693 () ListLongMap!16907)

(declare-fun lt!526691 () V!44323)

(declare-fun lt!526697 () ListLongMap!16907)

(declare-fun +!3715 (ListLongMap!16907 tuple2!18926) ListLongMap!16907)

(declare-fun get!18604 (ValueCell!13989 V!44323) V!44323)

(assert (=> b!1169674 (= res!776243 (= lt!526697 (+!3715 lt!526693 (tuple2!18927 (select (arr!36431 _keys!1208) from!1455) (get!18604 (select (arr!36432 _values!996) from!1455) lt!526691)))))))

(declare-fun b!1169675 () Bool)

(declare-fun res!776255 () Bool)

(assert (=> b!1169675 (=> (not res!776255) (not e!664821))))

(declare-datatypes ((List!25699 0))(
  ( (Nil!25696) (Cons!25695 (h!26904 (_ BitVec 64)) (t!37565 List!25699)) )
))
(declare-fun arrayNoDuplicates!0 (array!75570 (_ BitVec 32) List!25699) Bool)

(assert (=> b!1169675 (= res!776255 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25696))))

(declare-fun b!1169676 () Bool)

(assert (=> b!1169676 (= e!664828 tp_is_empty!29397)))

(declare-fun b!1169677 () Bool)

(declare-fun e!664819 () Bool)

(declare-fun e!664818 () Bool)

(assert (=> b!1169677 (= e!664819 e!664818)))

(declare-fun res!776253 () Bool)

(assert (=> b!1169677 (=> res!776253 e!664818)))

(assert (=> b!1169677 (= res!776253 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44323)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!526694 () array!75572)

(declare-fun minValue!944 () V!44323)

(declare-fun getCurrentListMapNoExtraKeys!4902 (array!75570 array!75572 (_ BitVec 32) (_ BitVec 32) V!44323 V!44323 (_ BitVec 32) Int) ListLongMap!16907)

(assert (=> b!1169677 (= lt!526697 (getCurrentListMapNoExtraKeys!4902 lt!526689 lt!526694 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1169677 (= lt!526694 (array!75573 (store (arr!36432 _values!996) i!673 (ValueCellFull!13989 lt!526691)) (size!36969 _values!996)))))

(declare-fun dynLambda!2892 (Int (_ BitVec 64)) V!44323)

(assert (=> b!1169677 (= lt!526691 (dynLambda!2892 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526698 () ListLongMap!16907)

(assert (=> b!1169677 (= lt!526698 (getCurrentListMapNoExtraKeys!4902 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1169678 () Bool)

(assert (=> b!1169678 (= e!664818 e!664827)))

(declare-fun res!776257 () Bool)

(assert (=> b!1169678 (=> res!776257 e!664827)))

(assert (=> b!1169678 (= res!776257 (not (validKeyInArray!0 (select (arr!36431 _keys!1208) from!1455))))))

(declare-fun lt!526695 () ListLongMap!16907)

(assert (=> b!1169678 (= lt!526695 lt!526693)))

(declare-fun lt!526692 () ListLongMap!16907)

(declare-fun -!1492 (ListLongMap!16907 (_ BitVec 64)) ListLongMap!16907)

(assert (=> b!1169678 (= lt!526693 (-!1492 lt!526692 k0!934))))

(assert (=> b!1169678 (= lt!526695 (getCurrentListMapNoExtraKeys!4902 lt!526689 lt!526694 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1169678 (= lt!526692 (getCurrentListMapNoExtraKeys!4902 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38482 0))(
  ( (Unit!38483) )
))
(declare-fun lt!526696 () Unit!38482)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!716 (array!75570 array!75572 (_ BitVec 32) (_ BitVec 32) V!44323 V!44323 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38482)

(assert (=> b!1169678 (= lt!526696 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!716 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1169679 () Bool)

(declare-fun res!776251 () Bool)

(assert (=> b!1169679 (=> (not res!776251) (not e!664821))))

(assert (=> b!1169679 (= res!776251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1169680 () Bool)

(declare-fun res!776256 () Bool)

(assert (=> b!1169680 (=> (not res!776256) (not e!664821))))

(assert (=> b!1169680 (= res!776256 (= (select (arr!36431 _keys!1208) i!673) k0!934))))

(declare-fun b!1169681 () Bool)

(declare-fun res!776246 () Bool)

(assert (=> b!1169681 (=> (not res!776246) (not e!664821))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1169681 (= res!776246 (validMask!0 mask!1564))))

(declare-fun b!1169682 () Bool)

(assert (=> b!1169682 (= e!664822 (not e!664819))))

(declare-fun res!776254 () Bool)

(assert (=> b!1169682 (=> res!776254 e!664819)))

(assert (=> b!1169682 (= res!776254 (bvsgt from!1455 i!673))))

(assert (=> b!1169682 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!526690 () Unit!38482)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75570 (_ BitVec 64) (_ BitVec 32)) Unit!38482)

(assert (=> b!1169682 (= lt!526690 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1169683 () Bool)

(declare-fun res!776249 () Bool)

(assert (=> b!1169683 (=> (not res!776249) (not e!664822))))

(assert (=> b!1169683 (= res!776249 (arrayNoDuplicates!0 lt!526689 #b00000000000000000000000000000000 Nil!25696))))

(assert (= (and start!99324 res!776252) b!1169681))

(assert (= (and b!1169681 res!776246) b!1169666))

(assert (= (and b!1169666 res!776245) b!1169679))

(assert (= (and b!1169679 res!776251) b!1169675))

(assert (= (and b!1169675 res!776255) b!1169670))

(assert (= (and b!1169670 res!776247) b!1169673))

(assert (= (and b!1169673 res!776250) b!1169680))

(assert (= (and b!1169680 res!776256) b!1169667))

(assert (= (and b!1169667 res!776248) b!1169683))

(assert (= (and b!1169683 res!776249) b!1169682))

(assert (= (and b!1169682 (not res!776254)) b!1169677))

(assert (= (and b!1169677 (not res!776253)) b!1169678))

(assert (= (and b!1169678 (not res!776257)) b!1169674))

(assert (= (and b!1169674 res!776243) b!1169671))

(assert (= (and b!1169671 (not res!776244)) b!1169668))

(assert (= (and b!1169672 condMapEmpty!45923) mapIsEmpty!45923))

(assert (= (and b!1169672 (not condMapEmpty!45923)) mapNonEmpty!45923))

(get-info :version)

(assert (= (and mapNonEmpty!45923 ((_ is ValueCellFull!13989) mapValue!45923)) b!1169669))

(assert (= (and b!1169672 ((_ is ValueCellFull!13989) mapDefault!45923)) b!1169676))

(assert (= start!99324 b!1169672))

(declare-fun b_lambda!20029 () Bool)

(assert (=> (not b_lambda!20029) (not b!1169677)))

(declare-fun t!37563 () Bool)

(declare-fun tb!9687 () Bool)

(assert (=> (and start!99324 (= defaultEntry!1004 defaultEntry!1004) t!37563) tb!9687))

(declare-fun result!19933 () Bool)

(assert (=> tb!9687 (= result!19933 tp_is_empty!29397)))

(assert (=> b!1169677 t!37563))

(declare-fun b_and!40617 () Bool)

(assert (= b_and!40615 (and (=> t!37563 result!19933) b_and!40617)))

(declare-fun m!1077569 () Bool)

(assert (=> b!1169679 m!1077569))

(declare-fun m!1077571 () Bool)

(assert (=> mapNonEmpty!45923 m!1077571))

(declare-fun m!1077573 () Bool)

(assert (=> start!99324 m!1077573))

(declare-fun m!1077575 () Bool)

(assert (=> start!99324 m!1077575))

(declare-fun m!1077577 () Bool)

(assert (=> b!1169680 m!1077577))

(declare-fun m!1077579 () Bool)

(assert (=> b!1169681 m!1077579))

(declare-fun m!1077581 () Bool)

(assert (=> b!1169667 m!1077581))

(declare-fun m!1077583 () Bool)

(assert (=> b!1169667 m!1077583))

(declare-fun m!1077585 () Bool)

(assert (=> b!1169668 m!1077585))

(declare-fun m!1077587 () Bool)

(assert (=> b!1169678 m!1077587))

(declare-fun m!1077589 () Bool)

(assert (=> b!1169678 m!1077589))

(declare-fun m!1077591 () Bool)

(assert (=> b!1169678 m!1077591))

(declare-fun m!1077593 () Bool)

(assert (=> b!1169678 m!1077593))

(declare-fun m!1077595 () Bool)

(assert (=> b!1169678 m!1077595))

(declare-fun m!1077597 () Bool)

(assert (=> b!1169678 m!1077597))

(assert (=> b!1169678 m!1077595))

(declare-fun m!1077599 () Bool)

(assert (=> b!1169675 m!1077599))

(declare-fun m!1077601 () Bool)

(assert (=> b!1169682 m!1077601))

(declare-fun m!1077603 () Bool)

(assert (=> b!1169682 m!1077603))

(declare-fun m!1077605 () Bool)

(assert (=> b!1169673 m!1077605))

(assert (=> b!1169674 m!1077595))

(declare-fun m!1077607 () Bool)

(assert (=> b!1169674 m!1077607))

(assert (=> b!1169674 m!1077607))

(declare-fun m!1077609 () Bool)

(assert (=> b!1169674 m!1077609))

(declare-fun m!1077611 () Bool)

(assert (=> b!1169674 m!1077611))

(declare-fun m!1077613 () Bool)

(assert (=> b!1169683 m!1077613))

(declare-fun m!1077615 () Bool)

(assert (=> b!1169677 m!1077615))

(declare-fun m!1077617 () Bool)

(assert (=> b!1169677 m!1077617))

(declare-fun m!1077619 () Bool)

(assert (=> b!1169677 m!1077619))

(declare-fun m!1077621 () Bool)

(assert (=> b!1169677 m!1077621))

(assert (=> b!1169671 m!1077595))

(check-sat (not b!1169681) (not b!1169675) (not b!1169677) (not b!1169673) (not b!1169683) b_and!40617 (not b!1169678) (not b!1169674) (not b_next!24867) (not b!1169679) tp_is_empty!29397 (not start!99324) (not b!1169682) (not b!1169668) (not b_lambda!20029) (not b!1169667) (not mapNonEmpty!45923))
(check-sat b_and!40617 (not b_next!24867))
