; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100528 () Bool)

(assert start!100528)

(declare-fun b_free!25815 () Bool)

(declare-fun b_next!25815 () Bool)

(assert (=> start!100528 (= b_free!25815 (not b_next!25815))))

(declare-fun tp!90435 () Bool)

(declare-fun b_and!42531 () Bool)

(assert (=> start!100528 (= tp!90435 b_and!42531)))

(declare-fun b!1200268 () Bool)

(declare-fun e!681677 () Bool)

(declare-fun e!681678 () Bool)

(assert (=> b!1200268 (= e!681677 e!681678)))

(declare-fun res!799072 () Bool)

(assert (=> b!1200268 (=> (not res!799072) (not e!681678))))

(declare-datatypes ((array!77792 0))(
  ( (array!77793 (arr!37537 (Array (_ BitVec 32) (_ BitVec 64))) (size!38074 (_ BitVec 32))) )
))
(declare-fun lt!543959 () array!77792)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77792 (_ BitVec 32)) Bool)

(assert (=> b!1200268 (= res!799072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543959 mask!1564))))

(declare-fun _keys!1208 () array!77792)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1200268 (= lt!543959 (array!77793 (store (arr!37537 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38074 _keys!1208)))))

(declare-fun mapNonEmpty!47621 () Bool)

(declare-fun mapRes!47621 () Bool)

(declare-fun tp!90436 () Bool)

(declare-fun e!681675 () Bool)

(assert (=> mapNonEmpty!47621 (= mapRes!47621 (and tp!90436 e!681675))))

(declare-datatypes ((V!45819 0))(
  ( (V!45820 (val!15316 Int)) )
))
(declare-datatypes ((ValueCell!14550 0))(
  ( (ValueCellFull!14550 (v!17955 V!45819)) (EmptyCell!14550) )
))
(declare-fun mapRest!47621 () (Array (_ BitVec 32) ValueCell!14550))

(declare-fun mapValue!47621 () ValueCell!14550)

(declare-fun mapKey!47621 () (_ BitVec 32))

(declare-datatypes ((array!77794 0))(
  ( (array!77795 (arr!37538 (Array (_ BitVec 32) ValueCell!14550)) (size!38075 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77794)

(assert (=> mapNonEmpty!47621 (= (arr!37538 _values!996) (store mapRest!47621 mapKey!47621 mapValue!47621))))

(declare-fun b!1200269 () Bool)

(declare-fun res!799070 () Bool)

(assert (=> b!1200269 (=> (not res!799070) (not e!681677))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1200269 (= res!799070 (validMask!0 mask!1564))))

(declare-fun b!1200270 () Bool)

(declare-fun e!681674 () Bool)

(declare-fun tp_is_empty!30519 () Bool)

(assert (=> b!1200270 (= e!681674 tp_is_empty!30519)))

(declare-fun b!1200271 () Bool)

(declare-fun e!681673 () Bool)

(assert (=> b!1200271 (= e!681673 (and e!681674 mapRes!47621))))

(declare-fun condMapEmpty!47621 () Bool)

(declare-fun mapDefault!47621 () ValueCell!14550)

(assert (=> b!1200271 (= condMapEmpty!47621 (= (arr!37538 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14550)) mapDefault!47621)))))

(declare-fun b!1200272 () Bool)

(declare-fun res!799077 () Bool)

(assert (=> b!1200272 (=> (not res!799077) (not e!681677))))

(assert (=> b!1200272 (= res!799077 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38074 _keys!1208))))))

(declare-fun b!1200273 () Bool)

(declare-fun res!799075 () Bool)

(assert (=> b!1200273 (=> (not res!799075) (not e!681677))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1200273 (= res!799075 (validKeyInArray!0 k0!934))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1200274 () Bool)

(declare-fun e!681679 () Bool)

(assert (=> b!1200274 (= e!681679 (or (not (= from!1455 i!673)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!38074 _keys!1208)) (bvslt (bvsub (size!38074 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (bvsub (size!38074 _keys!1208) from!1455))))))

(declare-fun zeroValue!944 () V!45819)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19744 0))(
  ( (tuple2!19745 (_1!9882 (_ BitVec 64)) (_2!9882 V!45819)) )
))
(declare-datatypes ((List!26578 0))(
  ( (Nil!26575) (Cons!26574 (h!27783 tuple2!19744) (t!39380 List!26578)) )
))
(declare-datatypes ((ListLongMap!17725 0))(
  ( (ListLongMap!17726 (toList!8878 List!26578)) )
))
(declare-fun lt!543961 () ListLongMap!17725)

(declare-fun minValue!944 () V!45819)

(declare-fun getCurrentListMapNoExtraKeys!5291 (array!77792 array!77794 (_ BitVec 32) (_ BitVec 32) V!45819 V!45819 (_ BitVec 32) Int) ListLongMap!17725)

(declare-fun dynLambda!3222 (Int (_ BitVec 64)) V!45819)

(assert (=> b!1200274 (= lt!543961 (getCurrentListMapNoExtraKeys!5291 lt!543959 (array!77795 (store (arr!37538 _values!996) i!673 (ValueCellFull!14550 (dynLambda!3222 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38075 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543958 () ListLongMap!17725)

(assert (=> b!1200274 (= lt!543958 (getCurrentListMapNoExtraKeys!5291 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!799074 () Bool)

(assert (=> start!100528 (=> (not res!799074) (not e!681677))))

(assert (=> start!100528 (= res!799074 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38074 _keys!1208))))))

(assert (=> start!100528 e!681677))

(assert (=> start!100528 tp_is_empty!30519))

(declare-fun array_inv!28506 (array!77792) Bool)

(assert (=> start!100528 (array_inv!28506 _keys!1208)))

(assert (=> start!100528 true))

(assert (=> start!100528 tp!90435))

(declare-fun array_inv!28507 (array!77794) Bool)

(assert (=> start!100528 (and (array_inv!28507 _values!996) e!681673)))

(declare-fun b!1200275 () Bool)

(declare-fun res!799080 () Bool)

(assert (=> b!1200275 (=> (not res!799080) (not e!681678))))

(declare-datatypes ((List!26579 0))(
  ( (Nil!26576) (Cons!26575 (h!27784 (_ BitVec 64)) (t!39381 List!26579)) )
))
(declare-fun arrayNoDuplicates!0 (array!77792 (_ BitVec 32) List!26579) Bool)

(assert (=> b!1200275 (= res!799080 (arrayNoDuplicates!0 lt!543959 #b00000000000000000000000000000000 Nil!26576))))

(declare-fun b!1200276 () Bool)

(declare-fun res!799073 () Bool)

(assert (=> b!1200276 (=> (not res!799073) (not e!681677))))

(assert (=> b!1200276 (= res!799073 (and (= (size!38075 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38074 _keys!1208) (size!38075 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1200277 () Bool)

(declare-fun res!799078 () Bool)

(assert (=> b!1200277 (=> (not res!799078) (not e!681677))))

(assert (=> b!1200277 (= res!799078 (= (select (arr!37537 _keys!1208) i!673) k0!934))))

(declare-fun b!1200278 () Bool)

(assert (=> b!1200278 (= e!681675 tp_is_empty!30519)))

(declare-fun b!1200279 () Bool)

(declare-fun res!799076 () Bool)

(assert (=> b!1200279 (=> (not res!799076) (not e!681677))))

(assert (=> b!1200279 (= res!799076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!47621 () Bool)

(assert (=> mapIsEmpty!47621 mapRes!47621))

(declare-fun b!1200280 () Bool)

(declare-fun res!799071 () Bool)

(assert (=> b!1200280 (=> (not res!799071) (not e!681677))))

(assert (=> b!1200280 (= res!799071 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26576))))

(declare-fun b!1200281 () Bool)

(assert (=> b!1200281 (= e!681678 (not e!681679))))

(declare-fun res!799079 () Bool)

(assert (=> b!1200281 (=> res!799079 e!681679)))

(assert (=> b!1200281 (= res!799079 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77792 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1200281 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39724 0))(
  ( (Unit!39725) )
))
(declare-fun lt!543960 () Unit!39724)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77792 (_ BitVec 64) (_ BitVec 32)) Unit!39724)

(assert (=> b!1200281 (= lt!543960 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!100528 res!799074) b!1200269))

(assert (= (and b!1200269 res!799070) b!1200276))

(assert (= (and b!1200276 res!799073) b!1200279))

(assert (= (and b!1200279 res!799076) b!1200280))

(assert (= (and b!1200280 res!799071) b!1200272))

(assert (= (and b!1200272 res!799077) b!1200273))

(assert (= (and b!1200273 res!799075) b!1200277))

(assert (= (and b!1200277 res!799078) b!1200268))

(assert (= (and b!1200268 res!799072) b!1200275))

(assert (= (and b!1200275 res!799080) b!1200281))

(assert (= (and b!1200281 (not res!799079)) b!1200274))

(assert (= (and b!1200271 condMapEmpty!47621) mapIsEmpty!47621))

(assert (= (and b!1200271 (not condMapEmpty!47621)) mapNonEmpty!47621))

(get-info :version)

(assert (= (and mapNonEmpty!47621 ((_ is ValueCellFull!14550) mapValue!47621)) b!1200278))

(assert (= (and b!1200271 ((_ is ValueCellFull!14550) mapDefault!47621)) b!1200270))

(assert (= start!100528 b!1200271))

(declare-fun b_lambda!21029 () Bool)

(assert (=> (not b_lambda!21029) (not b!1200274)))

(declare-fun t!39379 () Bool)

(declare-fun tb!10623 () Bool)

(assert (=> (and start!100528 (= defaultEntry!1004 defaultEntry!1004) t!39379) tb!10623))

(declare-fun result!21815 () Bool)

(assert (=> tb!10623 (= result!21815 tp_is_empty!30519)))

(assert (=> b!1200274 t!39379))

(declare-fun b_and!42533 () Bool)

(assert (= b_and!42531 (and (=> t!39379 result!21815) b_and!42533)))

(declare-fun m!1106657 () Bool)

(assert (=> b!1200269 m!1106657))

(declare-fun m!1106659 () Bool)

(assert (=> b!1200280 m!1106659))

(declare-fun m!1106661 () Bool)

(assert (=> b!1200279 m!1106661))

(declare-fun m!1106663 () Bool)

(assert (=> b!1200275 m!1106663))

(declare-fun m!1106665 () Bool)

(assert (=> mapNonEmpty!47621 m!1106665))

(declare-fun m!1106667 () Bool)

(assert (=> b!1200281 m!1106667))

(declare-fun m!1106669 () Bool)

(assert (=> b!1200281 m!1106669))

(declare-fun m!1106671 () Bool)

(assert (=> b!1200273 m!1106671))

(declare-fun m!1106673 () Bool)

(assert (=> start!100528 m!1106673))

(declare-fun m!1106675 () Bool)

(assert (=> start!100528 m!1106675))

(declare-fun m!1106677 () Bool)

(assert (=> b!1200274 m!1106677))

(declare-fun m!1106679 () Bool)

(assert (=> b!1200274 m!1106679))

(declare-fun m!1106681 () Bool)

(assert (=> b!1200274 m!1106681))

(declare-fun m!1106683 () Bool)

(assert (=> b!1200274 m!1106683))

(declare-fun m!1106685 () Bool)

(assert (=> b!1200268 m!1106685))

(declare-fun m!1106687 () Bool)

(assert (=> b!1200268 m!1106687))

(declare-fun m!1106689 () Bool)

(assert (=> b!1200277 m!1106689))

(check-sat (not b_next!25815) (not b!1200274) (not b!1200279) (not b!1200268) (not mapNonEmpty!47621) (not b!1200275) (not b!1200273) (not b_lambda!21029) (not b!1200280) (not b!1200269) b_and!42533 (not start!100528) tp_is_empty!30519 (not b!1200281))
(check-sat b_and!42533 (not b_next!25815))
