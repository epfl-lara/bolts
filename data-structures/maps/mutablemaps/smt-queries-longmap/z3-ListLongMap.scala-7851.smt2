; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97888 () Bool)

(assert start!97888)

(declare-fun b_free!23553 () Bool)

(declare-fun b_next!23553 () Bool)

(assert (=> start!97888 (= b_free!23553 (not b_next!23553))))

(declare-fun tp!83363 () Bool)

(declare-fun b_and!37911 () Bool)

(assert (=> start!97888 (= tp!83363 b_and!37911)))

(declare-fun mapIsEmpty!43942 () Bool)

(declare-fun mapRes!43942 () Bool)

(assert (=> mapIsEmpty!43942 mapRes!43942))

(declare-fun b!1120064 () Bool)

(declare-fun res!748298 () Bool)

(declare-fun e!637870 () Bool)

(assert (=> b!1120064 (=> (not res!748298) (not e!637870))))

(declare-datatypes ((array!72992 0))(
  ( (array!72993 (arr!35145 (Array (_ BitVec 32) (_ BitVec 64))) (size!35682 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72992)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1120064 (= res!748298 (= (select (arr!35145 _keys!1208) i!673) k0!934))))

(declare-fun b!1120065 () Bool)

(declare-fun res!748305 () Bool)

(assert (=> b!1120065 (=> (not res!748305) (not e!637870))))

(declare-datatypes ((List!24581 0))(
  ( (Nil!24578) (Cons!24577 (h!25786 (_ BitVec 64)) (t!35133 List!24581)) )
))
(declare-fun arrayNoDuplicates!0 (array!72992 (_ BitVec 32) List!24581) Bool)

(assert (=> b!1120065 (= res!748305 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24578))))

(declare-fun b!1120066 () Bool)

(declare-fun e!637874 () Bool)

(assert (=> b!1120066 (= e!637874 true)))

(declare-datatypes ((V!42571 0))(
  ( (V!42572 (val!14098 Int)) )
))
(declare-fun zeroValue!944 () V!42571)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17744 0))(
  ( (tuple2!17745 (_1!8882 (_ BitVec 64)) (_2!8882 V!42571)) )
))
(declare-datatypes ((List!24582 0))(
  ( (Nil!24579) (Cons!24578 (h!25787 tuple2!17744) (t!35134 List!24582)) )
))
(declare-datatypes ((ListLongMap!15725 0))(
  ( (ListLongMap!15726 (toList!7878 List!24582)) )
))
(declare-fun lt!497909 () ListLongMap!15725)

(declare-fun lt!497907 () array!72992)

(declare-datatypes ((ValueCell!13332 0))(
  ( (ValueCellFull!13332 (v!16732 V!42571)) (EmptyCell!13332) )
))
(declare-datatypes ((array!72994 0))(
  ( (array!72995 (arr!35146 (Array (_ BitVec 32) ValueCell!13332)) (size!35683 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72994)

(declare-fun minValue!944 () V!42571)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4339 (array!72992 array!72994 (_ BitVec 32) (_ BitVec 32) V!42571 V!42571 (_ BitVec 32) Int) ListLongMap!15725)

(declare-fun dynLambda!2441 (Int (_ BitVec 64)) V!42571)

(assert (=> b!1120066 (= lt!497909 (getCurrentListMapNoExtraKeys!4339 lt!497907 (array!72995 (store (arr!35146 _values!996) i!673 (ValueCellFull!13332 (dynLambda!2441 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35683 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497908 () ListLongMap!15725)

(assert (=> b!1120066 (= lt!497908 (getCurrentListMapNoExtraKeys!4339 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!748308 () Bool)

(assert (=> start!97888 (=> (not res!748308) (not e!637870))))

(assert (=> start!97888 (= res!748308 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35682 _keys!1208))))))

(assert (=> start!97888 e!637870))

(declare-fun tp_is_empty!28083 () Bool)

(assert (=> start!97888 tp_is_empty!28083))

(declare-fun array_inv!26862 (array!72992) Bool)

(assert (=> start!97888 (array_inv!26862 _keys!1208)))

(assert (=> start!97888 true))

(assert (=> start!97888 tp!83363))

(declare-fun e!637868 () Bool)

(declare-fun array_inv!26863 (array!72994) Bool)

(assert (=> start!97888 (and (array_inv!26863 _values!996) e!637868)))

(declare-fun b!1120067 () Bool)

(declare-fun res!748303 () Bool)

(assert (=> b!1120067 (=> (not res!748303) (not e!637870))))

(assert (=> b!1120067 (= res!748303 (and (= (size!35683 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35682 _keys!1208) (size!35683 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1120068 () Bool)

(declare-fun e!637869 () Bool)

(assert (=> b!1120068 (= e!637869 tp_is_empty!28083)))

(declare-fun mapNonEmpty!43942 () Bool)

(declare-fun tp!83364 () Bool)

(declare-fun e!637871 () Bool)

(assert (=> mapNonEmpty!43942 (= mapRes!43942 (and tp!83364 e!637871))))

(declare-fun mapValue!43942 () ValueCell!13332)

(declare-fun mapKey!43942 () (_ BitVec 32))

(declare-fun mapRest!43942 () (Array (_ BitVec 32) ValueCell!13332))

(assert (=> mapNonEmpty!43942 (= (arr!35146 _values!996) (store mapRest!43942 mapKey!43942 mapValue!43942))))

(declare-fun b!1120069 () Bool)

(declare-fun res!748301 () Bool)

(assert (=> b!1120069 (=> (not res!748301) (not e!637870))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1120069 (= res!748301 (validKeyInArray!0 k0!934))))

(declare-fun b!1120070 () Bool)

(declare-fun res!748307 () Bool)

(assert (=> b!1120070 (=> (not res!748307) (not e!637870))))

(assert (=> b!1120070 (= res!748307 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35682 _keys!1208))))))

(declare-fun b!1120071 () Bool)

(assert (=> b!1120071 (= e!637871 tp_is_empty!28083)))

(declare-fun b!1120072 () Bool)

(assert (=> b!1120072 (= e!637868 (and e!637869 mapRes!43942))))

(declare-fun condMapEmpty!43942 () Bool)

(declare-fun mapDefault!43942 () ValueCell!13332)

(assert (=> b!1120072 (= condMapEmpty!43942 (= (arr!35146 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13332)) mapDefault!43942)))))

(declare-fun b!1120073 () Bool)

(declare-fun res!748300 () Bool)

(assert (=> b!1120073 (=> (not res!748300) (not e!637870))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1120073 (= res!748300 (validMask!0 mask!1564))))

(declare-fun b!1120074 () Bool)

(declare-fun e!637872 () Bool)

(assert (=> b!1120074 (= e!637872 (not e!637874))))

(declare-fun res!748299 () Bool)

(assert (=> b!1120074 (=> res!748299 e!637874)))

(assert (=> b!1120074 (= res!748299 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72992 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1120074 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36671 0))(
  ( (Unit!36672) )
))
(declare-fun lt!497910 () Unit!36671)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72992 (_ BitVec 64) (_ BitVec 32)) Unit!36671)

(assert (=> b!1120074 (= lt!497910 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1120075 () Bool)

(declare-fun res!748306 () Bool)

(assert (=> b!1120075 (=> (not res!748306) (not e!637870))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72992 (_ BitVec 32)) Bool)

(assert (=> b!1120075 (= res!748306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1120076 () Bool)

(declare-fun res!748304 () Bool)

(assert (=> b!1120076 (=> (not res!748304) (not e!637872))))

(assert (=> b!1120076 (= res!748304 (arrayNoDuplicates!0 lt!497907 #b00000000000000000000000000000000 Nil!24578))))

(declare-fun b!1120077 () Bool)

(assert (=> b!1120077 (= e!637870 e!637872)))

(declare-fun res!748302 () Bool)

(assert (=> b!1120077 (=> (not res!748302) (not e!637872))))

(assert (=> b!1120077 (= res!748302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497907 mask!1564))))

(assert (=> b!1120077 (= lt!497907 (array!72993 (store (arr!35145 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35682 _keys!1208)))))

(assert (= (and start!97888 res!748308) b!1120073))

(assert (= (and b!1120073 res!748300) b!1120067))

(assert (= (and b!1120067 res!748303) b!1120075))

(assert (= (and b!1120075 res!748306) b!1120065))

(assert (= (and b!1120065 res!748305) b!1120070))

(assert (= (and b!1120070 res!748307) b!1120069))

(assert (= (and b!1120069 res!748301) b!1120064))

(assert (= (and b!1120064 res!748298) b!1120077))

(assert (= (and b!1120077 res!748302) b!1120076))

(assert (= (and b!1120076 res!748304) b!1120074))

(assert (= (and b!1120074 (not res!748299)) b!1120066))

(assert (= (and b!1120072 condMapEmpty!43942) mapIsEmpty!43942))

(assert (= (and b!1120072 (not condMapEmpty!43942)) mapNonEmpty!43942))

(get-info :version)

(assert (= (and mapNonEmpty!43942 ((_ is ValueCellFull!13332) mapValue!43942)) b!1120071))

(assert (= (and b!1120072 ((_ is ValueCellFull!13332) mapDefault!43942)) b!1120068))

(assert (= start!97888 b!1120072))

(declare-fun b_lambda!18557 () Bool)

(assert (=> (not b_lambda!18557) (not b!1120066)))

(declare-fun t!35132 () Bool)

(declare-fun tb!8373 () Bool)

(assert (=> (and start!97888 (= defaultEntry!1004 defaultEntry!1004) t!35132) tb!8373))

(declare-fun result!17299 () Bool)

(assert (=> tb!8373 (= result!17299 tp_is_empty!28083)))

(assert (=> b!1120066 t!35132))

(declare-fun b_and!37913 () Bool)

(assert (= b_and!37911 (and (=> t!35132 result!17299) b_and!37913)))

(declare-fun m!1035311 () Bool)

(assert (=> b!1120065 m!1035311))

(declare-fun m!1035313 () Bool)

(assert (=> b!1120069 m!1035313))

(declare-fun m!1035315 () Bool)

(assert (=> b!1120064 m!1035315))

(declare-fun m!1035317 () Bool)

(assert (=> start!97888 m!1035317))

(declare-fun m!1035319 () Bool)

(assert (=> start!97888 m!1035319))

(declare-fun m!1035321 () Bool)

(assert (=> b!1120076 m!1035321))

(declare-fun m!1035323 () Bool)

(assert (=> b!1120073 m!1035323))

(declare-fun m!1035325 () Bool)

(assert (=> mapNonEmpty!43942 m!1035325))

(declare-fun m!1035327 () Bool)

(assert (=> b!1120075 m!1035327))

(declare-fun m!1035329 () Bool)

(assert (=> b!1120077 m!1035329))

(declare-fun m!1035331 () Bool)

(assert (=> b!1120077 m!1035331))

(declare-fun m!1035333 () Bool)

(assert (=> b!1120074 m!1035333))

(declare-fun m!1035335 () Bool)

(assert (=> b!1120074 m!1035335))

(declare-fun m!1035337 () Bool)

(assert (=> b!1120066 m!1035337))

(declare-fun m!1035339 () Bool)

(assert (=> b!1120066 m!1035339))

(declare-fun m!1035341 () Bool)

(assert (=> b!1120066 m!1035341))

(declare-fun m!1035343 () Bool)

(assert (=> b!1120066 m!1035343))

(check-sat b_and!37913 (not b!1120066) tp_is_empty!28083 (not b!1120065) (not b_lambda!18557) (not b!1120077) (not b!1120074) (not b!1120073) (not mapNonEmpty!43942) (not b!1120069) (not b_next!23553) (not b!1120075) (not b!1120076) (not start!97888))
(check-sat b_and!37913 (not b_next!23553))
