; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99924 () Bool)

(assert start!99924)

(declare-fun b_free!25467 () Bool)

(declare-fun b_next!25467 () Bool)

(assert (=> start!99924 (= b_free!25467 (not b_next!25467))))

(declare-fun tp!89115 () Bool)

(declare-fun b_and!41815 () Bool)

(assert (=> start!99924 (= tp!89115 b_and!41815)))

(declare-fun res!790386 () Bool)

(declare-fun e!675846 () Bool)

(assert (=> start!99924 (=> (not res!790386) (not e!675846))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76762 0))(
  ( (array!76763 (arr!37027 (Array (_ BitVec 32) (_ BitVec 64))) (size!37564 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76762)

(assert (=> start!99924 (= res!790386 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37564 _keys!1208))))))

(assert (=> start!99924 e!675846))

(declare-fun tp_is_empty!29997 () Bool)

(assert (=> start!99924 tp_is_empty!29997))

(declare-fun array_inv!28138 (array!76762) Bool)

(assert (=> start!99924 (array_inv!28138 _keys!1208)))

(assert (=> start!99924 true))

(assert (=> start!99924 tp!89115))

(declare-datatypes ((V!45123 0))(
  ( (V!45124 (val!15055 Int)) )
))
(declare-datatypes ((ValueCell!14289 0))(
  ( (ValueCellFull!14289 (v!17694 V!45123)) (EmptyCell!14289) )
))
(declare-datatypes ((array!76764 0))(
  ( (array!76765 (arr!37028 (Array (_ BitVec 32) ValueCell!14289)) (size!37565 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76764)

(declare-fun e!675848 () Bool)

(declare-fun array_inv!28139 (array!76764) Bool)

(assert (=> start!99924 (and (array_inv!28139 _values!996) e!675848)))

(declare-fun mapIsEmpty!46823 () Bool)

(declare-fun mapRes!46823 () Bool)

(assert (=> mapIsEmpty!46823 mapRes!46823))

(declare-fun b!1188584 () Bool)

(declare-fun e!675853 () Bool)

(declare-fun e!675852 () Bool)

(assert (=> b!1188584 (= e!675853 (not e!675852))))

(declare-fun res!790395 () Bool)

(assert (=> b!1188584 (=> res!790395 e!675852)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1188584 (= res!790395 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76762 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1188584 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39364 0))(
  ( (Unit!39365) )
))
(declare-fun lt!540710 () Unit!39364)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76762 (_ BitVec 64) (_ BitVec 32)) Unit!39364)

(assert (=> b!1188584 (= lt!540710 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1188585 () Bool)

(declare-fun e!675850 () Bool)

(assert (=> b!1188585 (= e!675848 (and e!675850 mapRes!46823))))

(declare-fun condMapEmpty!46823 () Bool)

(declare-fun mapDefault!46823 () ValueCell!14289)

(assert (=> b!1188585 (= condMapEmpty!46823 (= (arr!37028 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14289)) mapDefault!46823)))))

(declare-fun mapNonEmpty!46823 () Bool)

(declare-fun tp!89116 () Bool)

(declare-fun e!675847 () Bool)

(assert (=> mapNonEmpty!46823 (= mapRes!46823 (and tp!89116 e!675847))))

(declare-fun mapKey!46823 () (_ BitVec 32))

(declare-fun mapRest!46823 () (Array (_ BitVec 32) ValueCell!14289))

(declare-fun mapValue!46823 () ValueCell!14289)

(assert (=> mapNonEmpty!46823 (= (arr!37028 _values!996) (store mapRest!46823 mapKey!46823 mapValue!46823))))

(declare-fun b!1188586 () Bool)

(declare-fun res!790387 () Bool)

(assert (=> b!1188586 (=> (not res!790387) (not e!675846))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1188586 (= res!790387 (validKeyInArray!0 k0!934))))

(declare-fun b!1188587 () Bool)

(declare-fun res!790394 () Bool)

(assert (=> b!1188587 (=> (not res!790394) (not e!675853))))

(declare-fun lt!540709 () array!76762)

(declare-datatypes ((List!26222 0))(
  ( (Nil!26219) (Cons!26218 (h!27427 (_ BitVec 64)) (t!38688 List!26222)) )
))
(declare-fun arrayNoDuplicates!0 (array!76762 (_ BitVec 32) List!26222) Bool)

(assert (=> b!1188587 (= res!790394 (arrayNoDuplicates!0 lt!540709 #b00000000000000000000000000000000 Nil!26219))))

(declare-fun b!1188588 () Bool)

(declare-fun res!790392 () Bool)

(assert (=> b!1188588 (=> (not res!790392) (not e!675846))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1188588 (= res!790392 (and (= (size!37565 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37564 _keys!1208) (size!37565 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1188589 () Bool)

(declare-fun res!790385 () Bool)

(assert (=> b!1188589 (=> (not res!790385) (not e!675846))))

(assert (=> b!1188589 (= res!790385 (= (select (arr!37027 _keys!1208) i!673) k0!934))))

(declare-fun b!1188590 () Bool)

(declare-fun res!790388 () Bool)

(assert (=> b!1188590 (=> (not res!790388) (not e!675846))))

(assert (=> b!1188590 (= res!790388 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26219))))

(declare-fun b!1188591 () Bool)

(declare-fun res!790391 () Bool)

(assert (=> b!1188591 (=> (not res!790391) (not e!675846))))

(assert (=> b!1188591 (= res!790391 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37564 _keys!1208))))))

(declare-fun b!1188592 () Bool)

(assert (=> b!1188592 (= e!675846 e!675853)))

(declare-fun res!790390 () Bool)

(assert (=> b!1188592 (=> (not res!790390) (not e!675853))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76762 (_ BitVec 32)) Bool)

(assert (=> b!1188592 (= res!790390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540709 mask!1564))))

(assert (=> b!1188592 (= lt!540709 (array!76763 (store (arr!37027 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37564 _keys!1208)))))

(declare-fun b!1188593 () Bool)

(declare-fun e!675851 () Bool)

(assert (=> b!1188593 (= e!675851 true)))

(declare-fun zeroValue!944 () V!45123)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45123)

(declare-fun lt!540711 () array!76764)

(declare-datatypes ((tuple2!19462 0))(
  ( (tuple2!19463 (_1!9741 (_ BitVec 64)) (_2!9741 V!45123)) )
))
(declare-datatypes ((List!26223 0))(
  ( (Nil!26220) (Cons!26219 (h!27428 tuple2!19462) (t!38689 List!26223)) )
))
(declare-datatypes ((ListLongMap!17443 0))(
  ( (ListLongMap!17444 (toList!8737 List!26223)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5151 (array!76762 array!76764 (_ BitVec 32) (_ BitVec 32) V!45123 V!45123 (_ BitVec 32) Int) ListLongMap!17443)

(declare-fun -!1721 (ListLongMap!17443 (_ BitVec 64)) ListLongMap!17443)

(assert (=> b!1188593 (= (getCurrentListMapNoExtraKeys!5151 lt!540709 lt!540711 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1721 (getCurrentListMapNoExtraKeys!5151 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!540713 () Unit!39364)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!927 (array!76762 array!76764 (_ BitVec 32) (_ BitVec 32) V!45123 V!45123 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39364)

(assert (=> b!1188593 (= lt!540713 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!927 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1188594 () Bool)

(declare-fun res!790389 () Bool)

(assert (=> b!1188594 (=> (not res!790389) (not e!675846))))

(assert (=> b!1188594 (= res!790389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1188595 () Bool)

(assert (=> b!1188595 (= e!675850 tp_is_empty!29997)))

(declare-fun b!1188596 () Bool)

(assert (=> b!1188596 (= e!675847 tp_is_empty!29997)))

(declare-fun b!1188597 () Bool)

(declare-fun res!790393 () Bool)

(assert (=> b!1188597 (=> (not res!790393) (not e!675846))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1188597 (= res!790393 (validMask!0 mask!1564))))

(declare-fun b!1188598 () Bool)

(assert (=> b!1188598 (= e!675852 e!675851)))

(declare-fun res!790396 () Bool)

(assert (=> b!1188598 (=> res!790396 e!675851)))

(assert (=> b!1188598 (= res!790396 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!540714 () ListLongMap!17443)

(assert (=> b!1188598 (= lt!540714 (getCurrentListMapNoExtraKeys!5151 lt!540709 lt!540711 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3106 (Int (_ BitVec 64)) V!45123)

(assert (=> b!1188598 (= lt!540711 (array!76765 (store (arr!37028 _values!996) i!673 (ValueCellFull!14289 (dynLambda!3106 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37565 _values!996)))))

(declare-fun lt!540712 () ListLongMap!17443)

(assert (=> b!1188598 (= lt!540712 (getCurrentListMapNoExtraKeys!5151 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (= (and start!99924 res!790386) b!1188597))

(assert (= (and b!1188597 res!790393) b!1188588))

(assert (= (and b!1188588 res!790392) b!1188594))

(assert (= (and b!1188594 res!790389) b!1188590))

(assert (= (and b!1188590 res!790388) b!1188591))

(assert (= (and b!1188591 res!790391) b!1188586))

(assert (= (and b!1188586 res!790387) b!1188589))

(assert (= (and b!1188589 res!790385) b!1188592))

(assert (= (and b!1188592 res!790390) b!1188587))

(assert (= (and b!1188587 res!790394) b!1188584))

(assert (= (and b!1188584 (not res!790395)) b!1188598))

(assert (= (and b!1188598 (not res!790396)) b!1188593))

(assert (= (and b!1188585 condMapEmpty!46823) mapIsEmpty!46823))

(assert (= (and b!1188585 (not condMapEmpty!46823)) mapNonEmpty!46823))

(get-info :version)

(assert (= (and mapNonEmpty!46823 ((_ is ValueCellFull!14289) mapValue!46823)) b!1188596))

(assert (= (and b!1188585 ((_ is ValueCellFull!14289) mapDefault!46823)) b!1188595))

(assert (= start!99924 b!1188585))

(declare-fun b_lambda!20629 () Bool)

(assert (=> (not b_lambda!20629) (not b!1188598)))

(declare-fun t!38687 () Bool)

(declare-fun tb!10287 () Bool)

(assert (=> (and start!99924 (= defaultEntry!1004 defaultEntry!1004) t!38687) tb!10287))

(declare-fun result!21133 () Bool)

(assert (=> tb!10287 (= result!21133 tp_is_empty!29997)))

(assert (=> b!1188598 t!38687))

(declare-fun b_and!41817 () Bool)

(assert (= b_and!41815 (and (=> t!38687 result!21133) b_and!41817)))

(declare-fun m!1097399 () Bool)

(assert (=> b!1188586 m!1097399))

(declare-fun m!1097401 () Bool)

(assert (=> b!1188594 m!1097401))

(declare-fun m!1097403 () Bool)

(assert (=> b!1188593 m!1097403))

(declare-fun m!1097405 () Bool)

(assert (=> b!1188593 m!1097405))

(assert (=> b!1188593 m!1097405))

(declare-fun m!1097407 () Bool)

(assert (=> b!1188593 m!1097407))

(declare-fun m!1097409 () Bool)

(assert (=> b!1188593 m!1097409))

(declare-fun m!1097411 () Bool)

(assert (=> mapNonEmpty!46823 m!1097411))

(declare-fun m!1097413 () Bool)

(assert (=> b!1188598 m!1097413))

(declare-fun m!1097415 () Bool)

(assert (=> b!1188598 m!1097415))

(declare-fun m!1097417 () Bool)

(assert (=> b!1188598 m!1097417))

(declare-fun m!1097419 () Bool)

(assert (=> b!1188598 m!1097419))

(declare-fun m!1097421 () Bool)

(assert (=> b!1188597 m!1097421))

(declare-fun m!1097423 () Bool)

(assert (=> b!1188592 m!1097423))

(declare-fun m!1097425 () Bool)

(assert (=> b!1188592 m!1097425))

(declare-fun m!1097427 () Bool)

(assert (=> b!1188589 m!1097427))

(declare-fun m!1097429 () Bool)

(assert (=> b!1188590 m!1097429))

(declare-fun m!1097431 () Bool)

(assert (=> start!99924 m!1097431))

(declare-fun m!1097433 () Bool)

(assert (=> start!99924 m!1097433))

(declare-fun m!1097435 () Bool)

(assert (=> b!1188584 m!1097435))

(declare-fun m!1097437 () Bool)

(assert (=> b!1188584 m!1097437))

(declare-fun m!1097439 () Bool)

(assert (=> b!1188587 m!1097439))

(check-sat (not start!99924) (not b!1188586) (not b_lambda!20629) (not b!1188584) (not b!1188594) (not b!1188597) (not b!1188593) (not b!1188592) (not b_next!25467) (not b!1188590) (not b!1188587) (not mapNonEmpty!46823) b_and!41817 tp_is_empty!29997 (not b!1188598))
(check-sat b_and!41817 (not b_next!25467))
