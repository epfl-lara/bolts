; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99070 () Bool)

(assert start!99070)

(declare-fun b_free!24639 () Bool)

(declare-fun b_next!24639 () Bool)

(assert (=> start!99070 (= b_free!24639 (not b_next!24639))))

(declare-fun tp!86629 () Bool)

(declare-fun b_and!40141 () Bool)

(assert (=> start!99070 (= tp!86629 b_and!40141)))

(declare-fun b!1164118 () Bool)

(declare-fun res!772033 () Bool)

(declare-fun e!661942 () Bool)

(assert (=> b!1164118 (=> (not res!772033) (not e!661942))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1164118 (= res!772033 (validMask!0 mask!1564))))

(declare-fun b!1164120 () Bool)

(declare-fun res!772040 () Bool)

(assert (=> b!1164120 (=> (not res!772040) (not e!661942))))

(declare-datatypes ((array!75122 0))(
  ( (array!75123 (arr!36208 (Array (_ BitVec 32) (_ BitVec 64))) (size!36745 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75122)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75122 (_ BitVec 32)) Bool)

(assert (=> b!1164120 (= res!772040 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1164121 () Bool)

(declare-fun e!661945 () Bool)

(declare-fun e!661946 () Bool)

(declare-fun mapRes!45578 () Bool)

(assert (=> b!1164121 (= e!661945 (and e!661946 mapRes!45578))))

(declare-fun condMapEmpty!45578 () Bool)

(declare-datatypes ((V!44019 0))(
  ( (V!44020 (val!14641 Int)) )
))
(declare-datatypes ((ValueCell!13875 0))(
  ( (ValueCellFull!13875 (v!17279 V!44019)) (EmptyCell!13875) )
))
(declare-datatypes ((array!75124 0))(
  ( (array!75125 (arr!36209 (Array (_ BitVec 32) ValueCell!13875)) (size!36746 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75124)

(declare-fun mapDefault!45578 () ValueCell!13875)

(assert (=> b!1164121 (= condMapEmpty!45578 (= (arr!36209 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13875)) mapDefault!45578)))))

(declare-fun b!1164122 () Bool)

(declare-fun e!661943 () Bool)

(declare-fun tp_is_empty!29169 () Bool)

(assert (=> b!1164122 (= e!661943 tp_is_empty!29169)))

(declare-fun b!1164123 () Bool)

(declare-fun e!661941 () Bool)

(assert (=> b!1164123 (= e!661942 e!661941)))

(declare-fun res!772035 () Bool)

(assert (=> b!1164123 (=> (not res!772035) (not e!661941))))

(declare-fun lt!524515 () array!75122)

(assert (=> b!1164123 (= res!772035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524515 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1164123 (= lt!524515 (array!75123 (store (arr!36208 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36745 _keys!1208)))))

(declare-fun b!1164124 () Bool)

(declare-fun e!661947 () Bool)

(assert (=> b!1164124 (= e!661941 (not e!661947))))

(declare-fun res!772037 () Bool)

(assert (=> b!1164124 (=> res!772037 e!661947)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1164124 (= res!772037 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75122 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1164124 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38316 0))(
  ( (Unit!38317) )
))
(declare-fun lt!524517 () Unit!38316)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75122 (_ BitVec 64) (_ BitVec 32)) Unit!38316)

(assert (=> b!1164124 (= lt!524517 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1164125 () Bool)

(declare-fun res!772043 () Bool)

(assert (=> b!1164125 (=> (not res!772043) (not e!661942))))

(assert (=> b!1164125 (= res!772043 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36745 _keys!1208))))))

(declare-fun mapIsEmpty!45578 () Bool)

(assert (=> mapIsEmpty!45578 mapRes!45578))

(declare-fun res!772041 () Bool)

(assert (=> start!99070 (=> (not res!772041) (not e!661942))))

(assert (=> start!99070 (= res!772041 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36745 _keys!1208))))))

(assert (=> start!99070 e!661942))

(assert (=> start!99070 tp_is_empty!29169))

(declare-fun array_inv!27572 (array!75122) Bool)

(assert (=> start!99070 (array_inv!27572 _keys!1208)))

(assert (=> start!99070 true))

(assert (=> start!99070 tp!86629))

(declare-fun array_inv!27573 (array!75124) Bool)

(assert (=> start!99070 (and (array_inv!27573 _values!996) e!661945)))

(declare-fun b!1164119 () Bool)

(assert (=> b!1164119 (= e!661947 true)))

(declare-fun zeroValue!944 () V!44019)

(declare-datatypes ((tuple2!18746 0))(
  ( (tuple2!18747 (_1!9383 (_ BitVec 64)) (_2!9383 V!44019)) )
))
(declare-datatypes ((List!25520 0))(
  ( (Nil!25517) (Cons!25516 (h!26725 tuple2!18746) (t!37158 List!25520)) )
))
(declare-datatypes ((ListLongMap!16727 0))(
  ( (ListLongMap!16728 (toList!8379 List!25520)) )
))
(declare-fun lt!524516 () ListLongMap!16727)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44019)

(declare-fun getCurrentListMapNoExtraKeys!4812 (array!75122 array!75124 (_ BitVec 32) (_ BitVec 32) V!44019 V!44019 (_ BitVec 32) Int) ListLongMap!16727)

(declare-fun dynLambda!2809 (Int (_ BitVec 64)) V!44019)

(assert (=> b!1164119 (= lt!524516 (getCurrentListMapNoExtraKeys!4812 lt!524515 (array!75125 (store (arr!36209 _values!996) i!673 (ValueCellFull!13875 (dynLambda!2809 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36746 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524514 () ListLongMap!16727)

(assert (=> b!1164119 (= lt!524514 (getCurrentListMapNoExtraKeys!4812 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1164126 () Bool)

(declare-fun res!772039 () Bool)

(assert (=> b!1164126 (=> (not res!772039) (not e!661942))))

(declare-datatypes ((List!25521 0))(
  ( (Nil!25518) (Cons!25517 (h!26726 (_ BitVec 64)) (t!37159 List!25521)) )
))
(declare-fun arrayNoDuplicates!0 (array!75122 (_ BitVec 32) List!25521) Bool)

(assert (=> b!1164126 (= res!772039 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25518))))

(declare-fun b!1164127 () Bool)

(declare-fun res!772038 () Bool)

(assert (=> b!1164127 (=> (not res!772038) (not e!661942))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1164127 (= res!772038 (validKeyInArray!0 k0!934))))

(declare-fun b!1164128 () Bool)

(declare-fun res!772042 () Bool)

(assert (=> b!1164128 (=> (not res!772042) (not e!661942))))

(assert (=> b!1164128 (= res!772042 (and (= (size!36746 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36745 _keys!1208) (size!36746 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1164129 () Bool)

(declare-fun res!772034 () Bool)

(assert (=> b!1164129 (=> (not res!772034) (not e!661941))))

(assert (=> b!1164129 (= res!772034 (arrayNoDuplicates!0 lt!524515 #b00000000000000000000000000000000 Nil!25518))))

(declare-fun mapNonEmpty!45578 () Bool)

(declare-fun tp!86628 () Bool)

(assert (=> mapNonEmpty!45578 (= mapRes!45578 (and tp!86628 e!661943))))

(declare-fun mapValue!45578 () ValueCell!13875)

(declare-fun mapRest!45578 () (Array (_ BitVec 32) ValueCell!13875))

(declare-fun mapKey!45578 () (_ BitVec 32))

(assert (=> mapNonEmpty!45578 (= (arr!36209 _values!996) (store mapRest!45578 mapKey!45578 mapValue!45578))))

(declare-fun b!1164130 () Bool)

(assert (=> b!1164130 (= e!661946 tp_is_empty!29169)))

(declare-fun b!1164131 () Bool)

(declare-fun res!772036 () Bool)

(assert (=> b!1164131 (=> (not res!772036) (not e!661942))))

(assert (=> b!1164131 (= res!772036 (= (select (arr!36208 _keys!1208) i!673) k0!934))))

(assert (= (and start!99070 res!772041) b!1164118))

(assert (= (and b!1164118 res!772033) b!1164128))

(assert (= (and b!1164128 res!772042) b!1164120))

(assert (= (and b!1164120 res!772040) b!1164126))

(assert (= (and b!1164126 res!772039) b!1164125))

(assert (= (and b!1164125 res!772043) b!1164127))

(assert (= (and b!1164127 res!772038) b!1164131))

(assert (= (and b!1164131 res!772036) b!1164123))

(assert (= (and b!1164123 res!772035) b!1164129))

(assert (= (and b!1164129 res!772034) b!1164124))

(assert (= (and b!1164124 (not res!772037)) b!1164119))

(assert (= (and b!1164121 condMapEmpty!45578) mapIsEmpty!45578))

(assert (= (and b!1164121 (not condMapEmpty!45578)) mapNonEmpty!45578))

(get-info :version)

(assert (= (and mapNonEmpty!45578 ((_ is ValueCellFull!13875) mapValue!45578)) b!1164122))

(assert (= (and b!1164121 ((_ is ValueCellFull!13875) mapDefault!45578)) b!1164130))

(assert (= start!99070 b!1164121))

(declare-fun b_lambda!19763 () Bool)

(assert (=> (not b_lambda!19763) (not b!1164119)))

(declare-fun t!37157 () Bool)

(declare-fun tb!9459 () Bool)

(assert (=> (and start!99070 (= defaultEntry!1004 defaultEntry!1004) t!37157) tb!9459))

(declare-fun result!19475 () Bool)

(assert (=> tb!9459 (= result!19475 tp_is_empty!29169)))

(assert (=> b!1164119 t!37157))

(declare-fun b_and!40143 () Bool)

(assert (= b_and!40141 (and (=> t!37157 result!19475) b_and!40143)))

(declare-fun m!1072655 () Bool)

(assert (=> b!1164124 m!1072655))

(declare-fun m!1072657 () Bool)

(assert (=> b!1164124 m!1072657))

(declare-fun m!1072659 () Bool)

(assert (=> b!1164123 m!1072659))

(declare-fun m!1072661 () Bool)

(assert (=> b!1164123 m!1072661))

(declare-fun m!1072663 () Bool)

(assert (=> b!1164129 m!1072663))

(declare-fun m!1072665 () Bool)

(assert (=> b!1164118 m!1072665))

(declare-fun m!1072667 () Bool)

(assert (=> b!1164127 m!1072667))

(declare-fun m!1072669 () Bool)

(assert (=> b!1164126 m!1072669))

(declare-fun m!1072671 () Bool)

(assert (=> start!99070 m!1072671))

(declare-fun m!1072673 () Bool)

(assert (=> start!99070 m!1072673))

(declare-fun m!1072675 () Bool)

(assert (=> b!1164119 m!1072675))

(declare-fun m!1072677 () Bool)

(assert (=> b!1164119 m!1072677))

(declare-fun m!1072679 () Bool)

(assert (=> b!1164119 m!1072679))

(declare-fun m!1072681 () Bool)

(assert (=> b!1164119 m!1072681))

(declare-fun m!1072683 () Bool)

(assert (=> b!1164120 m!1072683))

(declare-fun m!1072685 () Bool)

(assert (=> mapNonEmpty!45578 m!1072685))

(declare-fun m!1072687 () Bool)

(assert (=> b!1164131 m!1072687))

(check-sat (not b_next!24639) tp_is_empty!29169 b_and!40143 (not b!1164127) (not b_lambda!19763) (not b!1164126) (not mapNonEmpty!45578) (not start!99070) (not b!1164118) (not b!1164124) (not b!1164123) (not b!1164120) (not b!1164129) (not b!1164119))
(check-sat b_and!40143 (not b_next!24639))
