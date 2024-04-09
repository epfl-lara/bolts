; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99130 () Bool)

(assert start!99130)

(declare-fun b_free!24699 () Bool)

(declare-fun b_next!24699 () Bool)

(assert (=> start!99130 (= b_free!24699 (not b_next!24699))))

(declare-fun tp!86808 () Bool)

(declare-fun b_and!40261 () Bool)

(assert (=> start!99130 (= tp!86808 b_and!40261)))

(declare-fun mapNonEmpty!45668 () Bool)

(declare-fun mapRes!45668 () Bool)

(declare-fun tp!86809 () Bool)

(declare-fun e!662576 () Bool)

(assert (=> mapNonEmpty!45668 (= mapRes!45668 (and tp!86809 e!662576))))

(declare-datatypes ((V!44099 0))(
  ( (V!44100 (val!14671 Int)) )
))
(declare-datatypes ((ValueCell!13905 0))(
  ( (ValueCellFull!13905 (v!17309 V!44099)) (EmptyCell!13905) )
))
(declare-fun mapValue!45668 () ValueCell!13905)

(declare-fun mapRest!45668 () (Array (_ BitVec 32) ValueCell!13905))

(declare-fun mapKey!45668 () (_ BitVec 32))

(declare-datatypes ((array!75242 0))(
  ( (array!75243 (arr!36268 (Array (_ BitVec 32) ValueCell!13905)) (size!36805 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75242)

(assert (=> mapNonEmpty!45668 (= (arr!36268 _values!996) (store mapRest!45668 mapKey!45668 mapValue!45668))))

(declare-fun b!1165438 () Bool)

(declare-fun tp_is_empty!29229 () Bool)

(assert (=> b!1165438 (= e!662576 tp_is_empty!29229)))

(declare-fun res!773025 () Bool)

(declare-fun e!662575 () Bool)

(assert (=> start!99130 (=> (not res!773025) (not e!662575))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75244 0))(
  ( (array!75245 (arr!36269 (Array (_ BitVec 32) (_ BitVec 64))) (size!36806 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75244)

(assert (=> start!99130 (= res!773025 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36806 _keys!1208))))))

(assert (=> start!99130 e!662575))

(assert (=> start!99130 tp_is_empty!29229))

(declare-fun array_inv!27612 (array!75244) Bool)

(assert (=> start!99130 (array_inv!27612 _keys!1208)))

(assert (=> start!99130 true))

(assert (=> start!99130 tp!86808))

(declare-fun e!662571 () Bool)

(declare-fun array_inv!27613 (array!75242) Bool)

(assert (=> start!99130 (and (array_inv!27613 _values!996) e!662571)))

(declare-fun mapIsEmpty!45668 () Bool)

(assert (=> mapIsEmpty!45668 mapRes!45668))

(declare-fun b!1165439 () Bool)

(declare-fun e!662573 () Bool)

(assert (=> b!1165439 (= e!662573 true)))

(declare-fun zeroValue!944 () V!44099)

(declare-fun lt!524875 () array!75244)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18786 0))(
  ( (tuple2!18787 (_1!9403 (_ BitVec 64)) (_2!9403 V!44099)) )
))
(declare-datatypes ((List!25562 0))(
  ( (Nil!25559) (Cons!25558 (h!26767 tuple2!18786) (t!37260 List!25562)) )
))
(declare-datatypes ((ListLongMap!16767 0))(
  ( (ListLongMap!16768 (toList!8399 List!25562)) )
))
(declare-fun lt!524874 () ListLongMap!16767)

(declare-fun minValue!944 () V!44099)

(declare-fun getCurrentListMapNoExtraKeys!4832 (array!75244 array!75242 (_ BitVec 32) (_ BitVec 32) V!44099 V!44099 (_ BitVec 32) Int) ListLongMap!16767)

(declare-fun dynLambda!2829 (Int (_ BitVec 64)) V!44099)

(assert (=> b!1165439 (= lt!524874 (getCurrentListMapNoExtraKeys!4832 lt!524875 (array!75243 (store (arr!36268 _values!996) i!673 (ValueCellFull!13905 (dynLambda!2829 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36805 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524876 () ListLongMap!16767)

(assert (=> b!1165439 (= lt!524876 (getCurrentListMapNoExtraKeys!4832 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1165440 () Bool)

(declare-fun res!773032 () Bool)

(assert (=> b!1165440 (=> (not res!773032) (not e!662575))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1165440 (= res!773032 (= (select (arr!36269 _keys!1208) i!673) k0!934))))

(declare-fun b!1165441 () Bool)

(declare-fun e!662577 () Bool)

(assert (=> b!1165441 (= e!662575 e!662577)))

(declare-fun res!773029 () Bool)

(assert (=> b!1165441 (=> (not res!773029) (not e!662577))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75244 (_ BitVec 32)) Bool)

(assert (=> b!1165441 (= res!773029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524875 mask!1564))))

(assert (=> b!1165441 (= lt!524875 (array!75245 (store (arr!36269 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36806 _keys!1208)))))

(declare-fun b!1165442 () Bool)

(declare-fun res!773026 () Bool)

(assert (=> b!1165442 (=> (not res!773026) (not e!662575))))

(declare-datatypes ((List!25563 0))(
  ( (Nil!25560) (Cons!25559 (h!26768 (_ BitVec 64)) (t!37261 List!25563)) )
))
(declare-fun arrayNoDuplicates!0 (array!75244 (_ BitVec 32) List!25563) Bool)

(assert (=> b!1165442 (= res!773026 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25560))))

(declare-fun b!1165443 () Bool)

(declare-fun res!773027 () Bool)

(assert (=> b!1165443 (=> (not res!773027) (not e!662575))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1165443 (= res!773027 (validKeyInArray!0 k0!934))))

(declare-fun b!1165444 () Bool)

(declare-fun res!773023 () Bool)

(assert (=> b!1165444 (=> (not res!773023) (not e!662575))))

(assert (=> b!1165444 (= res!773023 (and (= (size!36805 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36806 _keys!1208) (size!36805 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1165445 () Bool)

(declare-fun res!773031 () Bool)

(assert (=> b!1165445 (=> (not res!773031) (not e!662577))))

(assert (=> b!1165445 (= res!773031 (arrayNoDuplicates!0 lt!524875 #b00000000000000000000000000000000 Nil!25560))))

(declare-fun b!1165446 () Bool)

(declare-fun res!773030 () Bool)

(assert (=> b!1165446 (=> (not res!773030) (not e!662575))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1165446 (= res!773030 (validMask!0 mask!1564))))

(declare-fun b!1165447 () Bool)

(declare-fun e!662574 () Bool)

(assert (=> b!1165447 (= e!662571 (and e!662574 mapRes!45668))))

(declare-fun condMapEmpty!45668 () Bool)

(declare-fun mapDefault!45668 () ValueCell!13905)

(assert (=> b!1165447 (= condMapEmpty!45668 (= (arr!36268 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13905)) mapDefault!45668)))))

(declare-fun b!1165448 () Bool)

(declare-fun res!773028 () Bool)

(assert (=> b!1165448 (=> (not res!773028) (not e!662575))))

(assert (=> b!1165448 (= res!773028 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36806 _keys!1208))))))

(declare-fun b!1165449 () Bool)

(declare-fun res!773024 () Bool)

(assert (=> b!1165449 (=> (not res!773024) (not e!662575))))

(assert (=> b!1165449 (= res!773024 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1165450 () Bool)

(assert (=> b!1165450 (= e!662577 (not e!662573))))

(declare-fun res!773033 () Bool)

(assert (=> b!1165450 (=> res!773033 e!662573)))

(assert (=> b!1165450 (= res!773033 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75244 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1165450 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38354 0))(
  ( (Unit!38355) )
))
(declare-fun lt!524877 () Unit!38354)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75244 (_ BitVec 64) (_ BitVec 32)) Unit!38354)

(assert (=> b!1165450 (= lt!524877 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1165451 () Bool)

(assert (=> b!1165451 (= e!662574 tp_is_empty!29229)))

(assert (= (and start!99130 res!773025) b!1165446))

(assert (= (and b!1165446 res!773030) b!1165444))

(assert (= (and b!1165444 res!773023) b!1165449))

(assert (= (and b!1165449 res!773024) b!1165442))

(assert (= (and b!1165442 res!773026) b!1165448))

(assert (= (and b!1165448 res!773028) b!1165443))

(assert (= (and b!1165443 res!773027) b!1165440))

(assert (= (and b!1165440 res!773032) b!1165441))

(assert (= (and b!1165441 res!773029) b!1165445))

(assert (= (and b!1165445 res!773031) b!1165450))

(assert (= (and b!1165450 (not res!773033)) b!1165439))

(assert (= (and b!1165447 condMapEmpty!45668) mapIsEmpty!45668))

(assert (= (and b!1165447 (not condMapEmpty!45668)) mapNonEmpty!45668))

(get-info :version)

(assert (= (and mapNonEmpty!45668 ((_ is ValueCellFull!13905) mapValue!45668)) b!1165438))

(assert (= (and b!1165447 ((_ is ValueCellFull!13905) mapDefault!45668)) b!1165451))

(assert (= start!99130 b!1165447))

(declare-fun b_lambda!19823 () Bool)

(assert (=> (not b_lambda!19823) (not b!1165439)))

(declare-fun t!37259 () Bool)

(declare-fun tb!9519 () Bool)

(assert (=> (and start!99130 (= defaultEntry!1004 defaultEntry!1004) t!37259) tb!9519))

(declare-fun result!19595 () Bool)

(assert (=> tb!9519 (= result!19595 tp_is_empty!29229)))

(assert (=> b!1165439 t!37259))

(declare-fun b_and!40263 () Bool)

(assert (= b_and!40261 (and (=> t!37259 result!19595) b_and!40263)))

(declare-fun m!1073675 () Bool)

(assert (=> b!1165449 m!1073675))

(declare-fun m!1073677 () Bool)

(assert (=> b!1165441 m!1073677))

(declare-fun m!1073679 () Bool)

(assert (=> b!1165441 m!1073679))

(declare-fun m!1073681 () Bool)

(assert (=> b!1165439 m!1073681))

(declare-fun m!1073683 () Bool)

(assert (=> b!1165439 m!1073683))

(declare-fun m!1073685 () Bool)

(assert (=> b!1165439 m!1073685))

(declare-fun m!1073687 () Bool)

(assert (=> b!1165439 m!1073687))

(declare-fun m!1073689 () Bool)

(assert (=> b!1165445 m!1073689))

(declare-fun m!1073691 () Bool)

(assert (=> b!1165450 m!1073691))

(declare-fun m!1073693 () Bool)

(assert (=> b!1165450 m!1073693))

(declare-fun m!1073695 () Bool)

(assert (=> start!99130 m!1073695))

(declare-fun m!1073697 () Bool)

(assert (=> start!99130 m!1073697))

(declare-fun m!1073699 () Bool)

(assert (=> b!1165442 m!1073699))

(declare-fun m!1073701 () Bool)

(assert (=> mapNonEmpty!45668 m!1073701))

(declare-fun m!1073703 () Bool)

(assert (=> b!1165443 m!1073703))

(declare-fun m!1073705 () Bool)

(assert (=> b!1165446 m!1073705))

(declare-fun m!1073707 () Bool)

(assert (=> b!1165440 m!1073707))

(check-sat (not b_lambda!19823) (not b!1165445) tp_is_empty!29229 (not b!1165450) (not b!1165442) (not b!1165441) (not b!1165446) (not mapNonEmpty!45668) (not start!99130) (not b!1165439) b_and!40263 (not b_next!24699) (not b!1165443) (not b!1165449))
(check-sat b_and!40263 (not b_next!24699))
