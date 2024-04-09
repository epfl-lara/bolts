; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97396 () Bool)

(assert start!97396)

(declare-fun b_free!23331 () Bool)

(declare-fun b_next!23331 () Bool)

(assert (=> start!97396 (= b_free!23331 (not b_next!23331))))

(declare-fun tp!82292 () Bool)

(declare-fun b_and!37517 () Bool)

(assert (=> start!97396 (= tp!82292 b_and!37517)))

(declare-fun mapIsEmpty!43204 () Bool)

(declare-fun mapRes!43204 () Bool)

(assert (=> mapIsEmpty!43204 mapRes!43204))

(declare-fun b!1109631 () Bool)

(declare-fun e!632945 () Bool)

(declare-fun e!632940 () Bool)

(assert (=> b!1109631 (= e!632945 (not e!632940))))

(declare-fun res!740590 () Bool)

(assert (=> b!1109631 (=> res!740590 e!632940)))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72050 0))(
  ( (array!72051 (arr!34674 (Array (_ BitVec 32) (_ BitVec 64))) (size!35211 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72050)

(assert (=> b!1109631 (= res!740590 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35211 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72050 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1109631 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36337 0))(
  ( (Unit!36338) )
))
(declare-fun lt!496005 () Unit!36337)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72050 (_ BitVec 64) (_ BitVec 32)) Unit!36337)

(assert (=> b!1109631 (= lt!496005 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1109632 () Bool)

(declare-fun res!740593 () Bool)

(assert (=> b!1109632 (=> (not res!740593) (not e!632945))))

(declare-fun lt!496003 () array!72050)

(declare-datatypes ((List!24318 0))(
  ( (Nil!24315) (Cons!24314 (h!25523 (_ BitVec 64)) (t!34702 List!24318)) )
))
(declare-fun arrayNoDuplicates!0 (array!72050 (_ BitVec 32) List!24318) Bool)

(assert (=> b!1109632 (= res!740593 (arrayNoDuplicates!0 lt!496003 #b00000000000000000000000000000000 Nil!24315))))

(declare-fun b!1109633 () Bool)

(declare-fun e!632941 () Bool)

(declare-fun tp_is_empty!27591 () Bool)

(assert (=> b!1109633 (= e!632941 tp_is_empty!27591)))

(declare-datatypes ((V!41915 0))(
  ( (V!41916 (val!13852 Int)) )
))
(declare-fun zeroValue!944 () V!41915)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun bm!46687 () Bool)

(declare-datatypes ((ValueCell!13086 0))(
  ( (ValueCellFull!13086 (v!16486 V!41915)) (EmptyCell!13086) )
))
(declare-datatypes ((array!72052 0))(
  ( (array!72053 (arr!34675 (Array (_ BitVec 32) ValueCell!13086)) (size!35212 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72052)

(declare-fun minValue!944 () V!41915)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17582 0))(
  ( (tuple2!17583 (_1!8801 (_ BitVec 64)) (_2!8801 V!41915)) )
))
(declare-datatypes ((List!24319 0))(
  ( (Nil!24316) (Cons!24315 (h!25524 tuple2!17582) (t!34703 List!24319)) )
))
(declare-datatypes ((ListLongMap!15563 0))(
  ( (ListLongMap!15564 (toList!7797 List!24319)) )
))
(declare-fun call!46690 () ListLongMap!15563)

(declare-fun getCurrentListMapNoExtraKeys!4260 (array!72050 array!72052 (_ BitVec 32) (_ BitVec 32) V!41915 V!41915 (_ BitVec 32) Int) ListLongMap!15563)

(assert (=> bm!46687 (= call!46690 (getCurrentListMapNoExtraKeys!4260 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109634 () Bool)

(declare-fun res!740585 () Bool)

(declare-fun e!632942 () Bool)

(assert (=> b!1109634 (=> (not res!740585) (not e!632942))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1109634 (= res!740585 (validMask!0 mask!1564))))

(declare-fun b!1109635 () Bool)

(declare-fun res!740586 () Bool)

(assert (=> b!1109635 (=> (not res!740586) (not e!632942))))

(assert (=> b!1109635 (= res!740586 (and (= (size!35212 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35211 _keys!1208) (size!35212 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1109636 () Bool)

(declare-fun e!632943 () Bool)

(declare-fun call!46691 () ListLongMap!15563)

(assert (=> b!1109636 (= e!632943 (= call!46691 call!46690))))

(declare-fun b!1109638 () Bool)

(declare-fun res!740587 () Bool)

(assert (=> b!1109638 (=> (not res!740587) (not e!632942))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72050 (_ BitVec 32)) Bool)

(assert (=> b!1109638 (= res!740587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1109639 () Bool)

(assert (=> b!1109639 (= e!632940 true)))

(assert (=> b!1109639 e!632943))

(declare-fun c!109142 () Bool)

(assert (=> b!1109639 (= c!109142 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!496004 () Unit!36337)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!276 (array!72050 array!72052 (_ BitVec 32) (_ BitVec 32) V!41915 V!41915 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36337)

(assert (=> b!1109639 (= lt!496004 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!276 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109640 () Bool)

(declare-fun res!740588 () Bool)

(assert (=> b!1109640 (=> (not res!740588) (not e!632942))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1109640 (= res!740588 (validKeyInArray!0 k0!934))))

(declare-fun b!1109641 () Bool)

(declare-fun e!632939 () Bool)

(assert (=> b!1109641 (= e!632939 tp_is_empty!27591)))

(declare-fun b!1109642 () Bool)

(assert (=> b!1109642 (= e!632942 e!632945)))

(declare-fun res!740592 () Bool)

(assert (=> b!1109642 (=> (not res!740592) (not e!632945))))

(assert (=> b!1109642 (= res!740592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496003 mask!1564))))

(assert (=> b!1109642 (= lt!496003 (array!72051 (store (arr!34674 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35211 _keys!1208)))))

(declare-fun b!1109643 () Bool)

(declare-fun -!1025 (ListLongMap!15563 (_ BitVec 64)) ListLongMap!15563)

(assert (=> b!1109643 (= e!632943 (= call!46691 (-!1025 call!46690 k0!934)))))

(declare-fun b!1109644 () Bool)

(declare-fun e!632938 () Bool)

(assert (=> b!1109644 (= e!632938 (and e!632941 mapRes!43204))))

(declare-fun condMapEmpty!43204 () Bool)

(declare-fun mapDefault!43204 () ValueCell!13086)

(assert (=> b!1109644 (= condMapEmpty!43204 (= (arr!34675 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13086)) mapDefault!43204)))))

(declare-fun mapNonEmpty!43204 () Bool)

(declare-fun tp!82293 () Bool)

(assert (=> mapNonEmpty!43204 (= mapRes!43204 (and tp!82293 e!632939))))

(declare-fun mapValue!43204 () ValueCell!13086)

(declare-fun mapKey!43204 () (_ BitVec 32))

(declare-fun mapRest!43204 () (Array (_ BitVec 32) ValueCell!13086))

(assert (=> mapNonEmpty!43204 (= (arr!34675 _values!996) (store mapRest!43204 mapKey!43204 mapValue!43204))))

(declare-fun bm!46688 () Bool)

(declare-fun dynLambda!2383 (Int (_ BitVec 64)) V!41915)

(assert (=> bm!46688 (= call!46691 (getCurrentListMapNoExtraKeys!4260 lt!496003 (array!72053 (store (arr!34675 _values!996) i!673 (ValueCellFull!13086 (dynLambda!2383 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35212 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!740595 () Bool)

(assert (=> start!97396 (=> (not res!740595) (not e!632942))))

(assert (=> start!97396 (= res!740595 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35211 _keys!1208))))))

(assert (=> start!97396 e!632942))

(assert (=> start!97396 tp_is_empty!27591))

(declare-fun array_inv!26550 (array!72050) Bool)

(assert (=> start!97396 (array_inv!26550 _keys!1208)))

(assert (=> start!97396 true))

(assert (=> start!97396 tp!82292))

(declare-fun array_inv!26551 (array!72052) Bool)

(assert (=> start!97396 (and (array_inv!26551 _values!996) e!632938)))

(declare-fun b!1109637 () Bool)

(declare-fun res!740589 () Bool)

(assert (=> b!1109637 (=> (not res!740589) (not e!632942))))

(assert (=> b!1109637 (= res!740589 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35211 _keys!1208))))))

(declare-fun b!1109645 () Bool)

(declare-fun res!740591 () Bool)

(assert (=> b!1109645 (=> (not res!740591) (not e!632942))))

(assert (=> b!1109645 (= res!740591 (= (select (arr!34674 _keys!1208) i!673) k0!934))))

(declare-fun b!1109646 () Bool)

(declare-fun res!740594 () Bool)

(assert (=> b!1109646 (=> (not res!740594) (not e!632942))))

(assert (=> b!1109646 (= res!740594 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24315))))

(assert (= (and start!97396 res!740595) b!1109634))

(assert (= (and b!1109634 res!740585) b!1109635))

(assert (= (and b!1109635 res!740586) b!1109638))

(assert (= (and b!1109638 res!740587) b!1109646))

(assert (= (and b!1109646 res!740594) b!1109637))

(assert (= (and b!1109637 res!740589) b!1109640))

(assert (= (and b!1109640 res!740588) b!1109645))

(assert (= (and b!1109645 res!740591) b!1109642))

(assert (= (and b!1109642 res!740592) b!1109632))

(assert (= (and b!1109632 res!740593) b!1109631))

(assert (= (and b!1109631 (not res!740590)) b!1109639))

(assert (= (and b!1109639 c!109142) b!1109643))

(assert (= (and b!1109639 (not c!109142)) b!1109636))

(assert (= (or b!1109643 b!1109636) bm!46688))

(assert (= (or b!1109643 b!1109636) bm!46687))

(assert (= (and b!1109644 condMapEmpty!43204) mapIsEmpty!43204))

(assert (= (and b!1109644 (not condMapEmpty!43204)) mapNonEmpty!43204))

(get-info :version)

(assert (= (and mapNonEmpty!43204 ((_ is ValueCellFull!13086) mapValue!43204)) b!1109641))

(assert (= (and b!1109644 ((_ is ValueCellFull!13086) mapDefault!43204)) b!1109633))

(assert (= start!97396 b!1109644))

(declare-fun b_lambda!18385 () Bool)

(assert (=> (not b_lambda!18385) (not bm!46688)))

(declare-fun t!34701 () Bool)

(declare-fun tb!8205 () Bool)

(assert (=> (and start!97396 (= defaultEntry!1004 defaultEntry!1004) t!34701) tb!8205))

(declare-fun result!16963 () Bool)

(assert (=> tb!8205 (= result!16963 tp_is_empty!27591)))

(assert (=> bm!46688 t!34701))

(declare-fun b_and!37519 () Bool)

(assert (= b_and!37517 (and (=> t!34701 result!16963) b_and!37519)))

(declare-fun m!1027977 () Bool)

(assert (=> bm!46687 m!1027977))

(declare-fun m!1027979 () Bool)

(assert (=> b!1109645 m!1027979))

(declare-fun m!1027981 () Bool)

(assert (=> b!1109646 m!1027981))

(declare-fun m!1027983 () Bool)

(assert (=> b!1109634 m!1027983))

(declare-fun m!1027985 () Bool)

(assert (=> b!1109638 m!1027985))

(declare-fun m!1027987 () Bool)

(assert (=> b!1109642 m!1027987))

(declare-fun m!1027989 () Bool)

(assert (=> b!1109642 m!1027989))

(declare-fun m!1027991 () Bool)

(assert (=> b!1109632 m!1027991))

(declare-fun m!1027993 () Bool)

(assert (=> b!1109640 m!1027993))

(declare-fun m!1027995 () Bool)

(assert (=> mapNonEmpty!43204 m!1027995))

(declare-fun m!1027997 () Bool)

(assert (=> start!97396 m!1027997))

(declare-fun m!1027999 () Bool)

(assert (=> start!97396 m!1027999))

(declare-fun m!1028001 () Bool)

(assert (=> b!1109631 m!1028001))

(declare-fun m!1028003 () Bool)

(assert (=> b!1109631 m!1028003))

(declare-fun m!1028005 () Bool)

(assert (=> b!1109643 m!1028005))

(declare-fun m!1028007 () Bool)

(assert (=> bm!46688 m!1028007))

(declare-fun m!1028009 () Bool)

(assert (=> bm!46688 m!1028009))

(declare-fun m!1028011 () Bool)

(assert (=> bm!46688 m!1028011))

(declare-fun m!1028013 () Bool)

(assert (=> b!1109639 m!1028013))

(check-sat (not b!1109640) (not b!1109643) (not start!97396) (not b_lambda!18385) (not b_next!23331) (not b!1109642) (not b!1109632) (not b!1109646) (not bm!46687) (not bm!46688) (not b!1109631) b_and!37519 (not b!1109634) (not b!1109639) tp_is_empty!27591 (not b!1109638) (not mapNonEmpty!43204))
(check-sat b_and!37519 (not b_next!23331))
