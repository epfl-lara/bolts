; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100474 () Bool)

(assert start!100474)

(declare-fun b_free!25761 () Bool)

(declare-fun b_next!25761 () Bool)

(assert (=> start!100474 (= b_free!25761 (not b_next!25761))))

(declare-fun tp!90274 () Bool)

(declare-fun b_and!42423 () Bool)

(assert (=> start!100474 (= tp!90274 b_and!42423)))

(declare-fun b!1199080 () Bool)

(declare-fun res!798187 () Bool)

(declare-fun e!681108 () Bool)

(assert (=> b!1199080 (=> (not res!798187) (not e!681108))))

(declare-datatypes ((array!77688 0))(
  ( (array!77689 (arr!37485 (Array (_ BitVec 32) (_ BitVec 64))) (size!38022 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77688)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1199080 (= res!798187 (= (select (arr!37485 _keys!1208) i!673) k0!934))))

(declare-fun b!1199081 () Bool)

(declare-fun res!798189 () Bool)

(assert (=> b!1199081 (=> (not res!798189) (not e!681108))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77688 (_ BitVec 32)) Bool)

(assert (=> b!1199081 (= res!798189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1199082 () Bool)

(declare-fun e!681106 () Bool)

(assert (=> b!1199082 (= e!681108 e!681106)))

(declare-fun res!798183 () Bool)

(assert (=> b!1199082 (=> (not res!798183) (not e!681106))))

(declare-fun lt!543636 () array!77688)

(assert (=> b!1199082 (= res!798183 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543636 mask!1564))))

(assert (=> b!1199082 (= lt!543636 (array!77689 (store (arr!37485 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38022 _keys!1208)))))

(declare-fun b!1199083 () Bool)

(declare-fun e!681112 () Bool)

(declare-fun e!681110 () Bool)

(declare-fun mapRes!47540 () Bool)

(assert (=> b!1199083 (= e!681112 (and e!681110 mapRes!47540))))

(declare-fun condMapEmpty!47540 () Bool)

(declare-datatypes ((V!45747 0))(
  ( (V!45748 (val!15289 Int)) )
))
(declare-datatypes ((ValueCell!14523 0))(
  ( (ValueCellFull!14523 (v!17928 V!45747)) (EmptyCell!14523) )
))
(declare-datatypes ((array!77690 0))(
  ( (array!77691 (arr!37486 (Array (_ BitVec 32) ValueCell!14523)) (size!38023 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77690)

(declare-fun mapDefault!47540 () ValueCell!14523)

(assert (=> b!1199083 (= condMapEmpty!47540 (= (arr!37486 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14523)) mapDefault!47540)))))

(declare-fun b!1199084 () Bool)

(declare-fun res!798186 () Bool)

(assert (=> b!1199084 (=> (not res!798186) (not e!681108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1199084 (= res!798186 (validMask!0 mask!1564))))

(declare-fun res!798180 () Bool)

(assert (=> start!100474 (=> (not res!798180) (not e!681108))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100474 (= res!798180 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38022 _keys!1208))))))

(assert (=> start!100474 e!681108))

(declare-fun tp_is_empty!30465 () Bool)

(assert (=> start!100474 tp_is_empty!30465))

(declare-fun array_inv!28472 (array!77688) Bool)

(assert (=> start!100474 (array_inv!28472 _keys!1208)))

(assert (=> start!100474 true))

(assert (=> start!100474 tp!90274))

(declare-fun array_inv!28473 (array!77690) Bool)

(assert (=> start!100474 (and (array_inv!28473 _values!996) e!681112)))

(declare-fun b!1199085 () Bool)

(declare-fun res!798184 () Bool)

(assert (=> b!1199085 (=> (not res!798184) (not e!681108))))

(declare-datatypes ((List!26541 0))(
  ( (Nil!26538) (Cons!26537 (h!27746 (_ BitVec 64)) (t!39289 List!26541)) )
))
(declare-fun arrayNoDuplicates!0 (array!77688 (_ BitVec 32) List!26541) Bool)

(assert (=> b!1199085 (= res!798184 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26538))))

(declare-fun b!1199086 () Bool)

(declare-fun e!681109 () Bool)

(assert (=> b!1199086 (= e!681109 tp_is_empty!30465)))

(declare-fun b!1199087 () Bool)

(declare-fun e!681111 () Bool)

(assert (=> b!1199087 (= e!681111 true)))

(declare-fun zeroValue!944 () V!45747)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19712 0))(
  ( (tuple2!19713 (_1!9866 (_ BitVec 64)) (_2!9866 V!45747)) )
))
(declare-datatypes ((List!26542 0))(
  ( (Nil!26539) (Cons!26538 (h!27747 tuple2!19712) (t!39290 List!26542)) )
))
(declare-datatypes ((ListLongMap!17693 0))(
  ( (ListLongMap!17694 (toList!8862 List!26542)) )
))
(declare-fun lt!543635 () ListLongMap!17693)

(declare-fun minValue!944 () V!45747)

(declare-fun getCurrentListMapNoExtraKeys!5275 (array!77688 array!77690 (_ BitVec 32) (_ BitVec 32) V!45747 V!45747 (_ BitVec 32) Int) ListLongMap!17693)

(declare-fun dynLambda!3206 (Int (_ BitVec 64)) V!45747)

(assert (=> b!1199087 (= lt!543635 (getCurrentListMapNoExtraKeys!5275 lt!543636 (array!77691 (store (arr!37486 _values!996) i!673 (ValueCellFull!14523 (dynLambda!3206 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38023 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543634 () ListLongMap!17693)

(assert (=> b!1199087 (= lt!543634 (getCurrentListMapNoExtraKeys!5275 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!47540 () Bool)

(assert (=> mapIsEmpty!47540 mapRes!47540))

(declare-fun b!1199088 () Bool)

(assert (=> b!1199088 (= e!681110 tp_is_empty!30465)))

(declare-fun b!1199089 () Bool)

(declare-fun res!798181 () Bool)

(assert (=> b!1199089 (=> (not res!798181) (not e!681108))))

(assert (=> b!1199089 (= res!798181 (and (= (size!38023 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38022 _keys!1208) (size!38023 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!47540 () Bool)

(declare-fun tp!90273 () Bool)

(assert (=> mapNonEmpty!47540 (= mapRes!47540 (and tp!90273 e!681109))))

(declare-fun mapValue!47540 () ValueCell!14523)

(declare-fun mapRest!47540 () (Array (_ BitVec 32) ValueCell!14523))

(declare-fun mapKey!47540 () (_ BitVec 32))

(assert (=> mapNonEmpty!47540 (= (arr!37486 _values!996) (store mapRest!47540 mapKey!47540 mapValue!47540))))

(declare-fun b!1199090 () Bool)

(declare-fun res!798188 () Bool)

(assert (=> b!1199090 (=> (not res!798188) (not e!681106))))

(assert (=> b!1199090 (= res!798188 (arrayNoDuplicates!0 lt!543636 #b00000000000000000000000000000000 Nil!26538))))

(declare-fun b!1199091 () Bool)

(assert (=> b!1199091 (= e!681106 (not e!681111))))

(declare-fun res!798179 () Bool)

(assert (=> b!1199091 (=> res!798179 e!681111)))

(assert (=> b!1199091 (= res!798179 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77688 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1199091 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39694 0))(
  ( (Unit!39695) )
))
(declare-fun lt!543637 () Unit!39694)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77688 (_ BitVec 64) (_ BitVec 32)) Unit!39694)

(assert (=> b!1199091 (= lt!543637 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1199092 () Bool)

(declare-fun res!798185 () Bool)

(assert (=> b!1199092 (=> (not res!798185) (not e!681108))))

(assert (=> b!1199092 (= res!798185 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38022 _keys!1208))))))

(declare-fun b!1199093 () Bool)

(declare-fun res!798182 () Bool)

(assert (=> b!1199093 (=> (not res!798182) (not e!681108))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1199093 (= res!798182 (validKeyInArray!0 k0!934))))

(assert (= (and start!100474 res!798180) b!1199084))

(assert (= (and b!1199084 res!798186) b!1199089))

(assert (= (and b!1199089 res!798181) b!1199081))

(assert (= (and b!1199081 res!798189) b!1199085))

(assert (= (and b!1199085 res!798184) b!1199092))

(assert (= (and b!1199092 res!798185) b!1199093))

(assert (= (and b!1199093 res!798182) b!1199080))

(assert (= (and b!1199080 res!798187) b!1199082))

(assert (= (and b!1199082 res!798183) b!1199090))

(assert (= (and b!1199090 res!798188) b!1199091))

(assert (= (and b!1199091 (not res!798179)) b!1199087))

(assert (= (and b!1199083 condMapEmpty!47540) mapIsEmpty!47540))

(assert (= (and b!1199083 (not condMapEmpty!47540)) mapNonEmpty!47540))

(get-info :version)

(assert (= (and mapNonEmpty!47540 ((_ is ValueCellFull!14523) mapValue!47540)) b!1199086))

(assert (= (and b!1199083 ((_ is ValueCellFull!14523) mapDefault!47540)) b!1199088))

(assert (= start!100474 b!1199083))

(declare-fun b_lambda!20975 () Bool)

(assert (=> (not b_lambda!20975) (not b!1199087)))

(declare-fun t!39288 () Bool)

(declare-fun tb!10569 () Bool)

(assert (=> (and start!100474 (= defaultEntry!1004 defaultEntry!1004) t!39288) tb!10569))

(declare-fun result!21707 () Bool)

(assert (=> tb!10569 (= result!21707 tp_is_empty!30465)))

(assert (=> b!1199087 t!39288))

(declare-fun b_and!42425 () Bool)

(assert (= b_and!42423 (and (=> t!39288 result!21707) b_and!42425)))

(declare-fun m!1105739 () Bool)

(assert (=> b!1199090 m!1105739))

(declare-fun m!1105741 () Bool)

(assert (=> b!1199081 m!1105741))

(declare-fun m!1105743 () Bool)

(assert (=> b!1199084 m!1105743))

(declare-fun m!1105745 () Bool)

(assert (=> b!1199080 m!1105745))

(declare-fun m!1105747 () Bool)

(assert (=> b!1199087 m!1105747))

(declare-fun m!1105749 () Bool)

(assert (=> b!1199087 m!1105749))

(declare-fun m!1105751 () Bool)

(assert (=> b!1199087 m!1105751))

(declare-fun m!1105753 () Bool)

(assert (=> b!1199087 m!1105753))

(declare-fun m!1105755 () Bool)

(assert (=> mapNonEmpty!47540 m!1105755))

(declare-fun m!1105757 () Bool)

(assert (=> b!1199093 m!1105757))

(declare-fun m!1105759 () Bool)

(assert (=> b!1199091 m!1105759))

(declare-fun m!1105761 () Bool)

(assert (=> b!1199091 m!1105761))

(declare-fun m!1105763 () Bool)

(assert (=> b!1199082 m!1105763))

(declare-fun m!1105765 () Bool)

(assert (=> b!1199082 m!1105765))

(declare-fun m!1105767 () Bool)

(assert (=> start!100474 m!1105767))

(declare-fun m!1105769 () Bool)

(assert (=> start!100474 m!1105769))

(declare-fun m!1105771 () Bool)

(assert (=> b!1199085 m!1105771))

(check-sat (not b!1199082) (not b!1199084) tp_is_empty!30465 (not b!1199093) b_and!42425 (not b_next!25761) (not b!1199081) (not b!1199091) (not b!1199090) (not b!1199087) (not mapNonEmpty!47540) (not start!100474) (not b_lambda!20975) (not b!1199085))
(check-sat b_and!42425 (not b_next!25761))
