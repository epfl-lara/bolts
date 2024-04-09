; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101270 () Bool)

(assert start!101270)

(declare-fun b_free!26157 () Bool)

(declare-fun b_next!26157 () Bool)

(assert (=> start!101270 (= b_free!26157 (not b_next!26157))))

(declare-fun tp!91493 () Bool)

(declare-fun b_and!43441 () Bool)

(assert (=> start!101270 (= tp!91493 b_and!43441)))

(declare-fun b!1215652 () Bool)

(declare-fun e!690282 () Bool)

(assert (=> b!1215652 (= e!690282 true)))

(declare-datatypes ((V!46275 0))(
  ( (V!46276 (val!15487 Int)) )
))
(declare-fun zeroValue!944 () V!46275)

(declare-datatypes ((tuple2!20050 0))(
  ( (tuple2!20051 (_1!10035 (_ BitVec 64)) (_2!10035 V!46275)) )
))
(declare-datatypes ((List!26869 0))(
  ( (Nil!26866) (Cons!26865 (h!28074 tuple2!20050) (t!40013 List!26869)) )
))
(declare-datatypes ((ListLongMap!18031 0))(
  ( (ListLongMap!18032 (toList!9031 List!26869)) )
))
(declare-fun lt!552635 () ListLongMap!18031)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78474 0))(
  ( (array!78475 (arr!37868 (Array (_ BitVec 32) (_ BitVec 64))) (size!38405 (_ BitVec 32))) )
))
(declare-fun lt!552632 () array!78474)

(declare-datatypes ((ValueCell!14721 0))(
  ( (ValueCellFull!14721 (v!18141 V!46275)) (EmptyCell!14721) )
))
(declare-datatypes ((array!78476 0))(
  ( (array!78477 (arr!37869 (Array (_ BitVec 32) ValueCell!14721)) (size!38406 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78476)

(declare-fun minValue!944 () V!46275)

(declare-fun getCurrentListMapNoExtraKeys!5436 (array!78474 array!78476 (_ BitVec 32) (_ BitVec 32) V!46275 V!46275 (_ BitVec 32) Int) ListLongMap!18031)

(declare-fun dynLambda!3345 (Int (_ BitVec 64)) V!46275)

(assert (=> b!1215652 (= lt!552635 (getCurrentListMapNoExtraKeys!5436 lt!552632 (array!78477 (store (arr!37869 _values!996) i!673 (ValueCellFull!14721 (dynLambda!3345 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38406 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _keys!1208 () array!78474)

(declare-fun lt!552633 () ListLongMap!18031)

(assert (=> b!1215652 (= lt!552633 (getCurrentListMapNoExtraKeys!5436 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!807264 () Bool)

(declare-fun e!690277 () Bool)

(assert (=> start!101270 (=> (not res!807264) (not e!690277))))

(assert (=> start!101270 (= res!807264 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38405 _keys!1208))))))

(assert (=> start!101270 e!690277))

(declare-fun tp_is_empty!30861 () Bool)

(assert (=> start!101270 tp_is_empty!30861))

(declare-fun array_inv!28736 (array!78474) Bool)

(assert (=> start!101270 (array_inv!28736 _keys!1208)))

(assert (=> start!101270 true))

(assert (=> start!101270 tp!91493))

(declare-fun e!690279 () Bool)

(declare-fun array_inv!28737 (array!78476) Bool)

(assert (=> start!101270 (and (array_inv!28737 _values!996) e!690279)))

(declare-fun mapIsEmpty!48166 () Bool)

(declare-fun mapRes!48166 () Bool)

(assert (=> mapIsEmpty!48166 mapRes!48166))

(declare-fun b!1215653 () Bool)

(declare-fun res!807263 () Bool)

(assert (=> b!1215653 (=> (not res!807263) (not e!690277))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1215653 (= res!807263 (validKeyInArray!0 k0!934))))

(declare-fun b!1215654 () Bool)

(declare-fun res!807266 () Bool)

(assert (=> b!1215654 (=> (not res!807266) (not e!690277))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78474 (_ BitVec 32)) Bool)

(assert (=> b!1215654 (= res!807266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!48166 () Bool)

(declare-fun tp!91494 () Bool)

(declare-fun e!690276 () Bool)

(assert (=> mapNonEmpty!48166 (= mapRes!48166 (and tp!91494 e!690276))))

(declare-fun mapValue!48166 () ValueCell!14721)

(declare-fun mapRest!48166 () (Array (_ BitVec 32) ValueCell!14721))

(declare-fun mapKey!48166 () (_ BitVec 32))

(assert (=> mapNonEmpty!48166 (= (arr!37869 _values!996) (store mapRest!48166 mapKey!48166 mapValue!48166))))

(declare-fun b!1215655 () Bool)

(declare-fun res!807270 () Bool)

(declare-fun e!690281 () Bool)

(assert (=> b!1215655 (=> (not res!807270) (not e!690281))))

(declare-datatypes ((List!26870 0))(
  ( (Nil!26867) (Cons!26866 (h!28075 (_ BitVec 64)) (t!40014 List!26870)) )
))
(declare-fun arrayNoDuplicates!0 (array!78474 (_ BitVec 32) List!26870) Bool)

(assert (=> b!1215655 (= res!807270 (arrayNoDuplicates!0 lt!552632 #b00000000000000000000000000000000 Nil!26867))))

(declare-fun b!1215656 () Bool)

(declare-fun res!807262 () Bool)

(assert (=> b!1215656 (=> (not res!807262) (not e!690277))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1215656 (= res!807262 (validMask!0 mask!1564))))

(declare-fun b!1215657 () Bool)

(declare-fun res!807269 () Bool)

(assert (=> b!1215657 (=> (not res!807269) (not e!690277))))

(assert (=> b!1215657 (= res!807269 (= (select (arr!37868 _keys!1208) i!673) k0!934))))

(declare-fun b!1215658 () Bool)

(assert (=> b!1215658 (= e!690276 tp_is_empty!30861)))

(declare-fun b!1215659 () Bool)

(declare-fun res!807261 () Bool)

(assert (=> b!1215659 (=> (not res!807261) (not e!690277))))

(assert (=> b!1215659 (= res!807261 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38405 _keys!1208))))))

(declare-fun b!1215660 () Bool)

(declare-fun res!807271 () Bool)

(assert (=> b!1215660 (=> (not res!807271) (not e!690277))))

(assert (=> b!1215660 (= res!807271 (and (= (size!38406 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38405 _keys!1208) (size!38406 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1215661 () Bool)

(declare-fun e!690278 () Bool)

(assert (=> b!1215661 (= e!690278 tp_is_empty!30861)))

(declare-fun b!1215662 () Bool)

(assert (=> b!1215662 (= e!690279 (and e!690278 mapRes!48166))))

(declare-fun condMapEmpty!48166 () Bool)

(declare-fun mapDefault!48166 () ValueCell!14721)

(assert (=> b!1215662 (= condMapEmpty!48166 (= (arr!37869 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14721)) mapDefault!48166)))))

(declare-fun b!1215663 () Bool)

(assert (=> b!1215663 (= e!690281 (not e!690282))))

(declare-fun res!807267 () Bool)

(assert (=> b!1215663 (=> res!807267 e!690282)))

(assert (=> b!1215663 (= res!807267 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78474 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1215663 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40246 0))(
  ( (Unit!40247) )
))
(declare-fun lt!552634 () Unit!40246)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78474 (_ BitVec 64) (_ BitVec 32)) Unit!40246)

(assert (=> b!1215663 (= lt!552634 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1215664 () Bool)

(assert (=> b!1215664 (= e!690277 e!690281)))

(declare-fun res!807268 () Bool)

(assert (=> b!1215664 (=> (not res!807268) (not e!690281))))

(assert (=> b!1215664 (= res!807268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552632 mask!1564))))

(assert (=> b!1215664 (= lt!552632 (array!78475 (store (arr!37868 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38405 _keys!1208)))))

(declare-fun b!1215665 () Bool)

(declare-fun res!807265 () Bool)

(assert (=> b!1215665 (=> (not res!807265) (not e!690277))))

(assert (=> b!1215665 (= res!807265 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26867))))

(assert (= (and start!101270 res!807264) b!1215656))

(assert (= (and b!1215656 res!807262) b!1215660))

(assert (= (and b!1215660 res!807271) b!1215654))

(assert (= (and b!1215654 res!807266) b!1215665))

(assert (= (and b!1215665 res!807265) b!1215659))

(assert (= (and b!1215659 res!807261) b!1215653))

(assert (= (and b!1215653 res!807263) b!1215657))

(assert (= (and b!1215657 res!807269) b!1215664))

(assert (= (and b!1215664 res!807268) b!1215655))

(assert (= (and b!1215655 res!807270) b!1215663))

(assert (= (and b!1215663 (not res!807267)) b!1215652))

(assert (= (and b!1215662 condMapEmpty!48166) mapIsEmpty!48166))

(assert (= (and b!1215662 (not condMapEmpty!48166)) mapNonEmpty!48166))

(get-info :version)

(assert (= (and mapNonEmpty!48166 ((_ is ValueCellFull!14721) mapValue!48166)) b!1215658))

(assert (= (and b!1215662 ((_ is ValueCellFull!14721) mapDefault!48166)) b!1215661))

(assert (= start!101270 b!1215662))

(declare-fun b_lambda!21843 () Bool)

(assert (=> (not b_lambda!21843) (not b!1215652)))

(declare-fun t!40012 () Bool)

(declare-fun tb!10965 () Bool)

(assert (=> (and start!101270 (= defaultEntry!1004 defaultEntry!1004) t!40012) tb!10965))

(declare-fun result!22519 () Bool)

(assert (=> tb!10965 (= result!22519 tp_is_empty!30861)))

(assert (=> b!1215652 t!40012))

(declare-fun b_and!43443 () Bool)

(assert (= b_and!43441 (and (=> t!40012 result!22519) b_and!43443)))

(declare-fun m!1120599 () Bool)

(assert (=> b!1215657 m!1120599))

(declare-fun m!1120601 () Bool)

(assert (=> mapNonEmpty!48166 m!1120601))

(declare-fun m!1120603 () Bool)

(assert (=> b!1215663 m!1120603))

(declare-fun m!1120605 () Bool)

(assert (=> b!1215663 m!1120605))

(declare-fun m!1120607 () Bool)

(assert (=> b!1215664 m!1120607))

(declare-fun m!1120609 () Bool)

(assert (=> b!1215664 m!1120609))

(declare-fun m!1120611 () Bool)

(assert (=> b!1215653 m!1120611))

(declare-fun m!1120613 () Bool)

(assert (=> start!101270 m!1120613))

(declare-fun m!1120615 () Bool)

(assert (=> start!101270 m!1120615))

(declare-fun m!1120617 () Bool)

(assert (=> b!1215656 m!1120617))

(declare-fun m!1120619 () Bool)

(assert (=> b!1215652 m!1120619))

(declare-fun m!1120621 () Bool)

(assert (=> b!1215652 m!1120621))

(declare-fun m!1120623 () Bool)

(assert (=> b!1215652 m!1120623))

(declare-fun m!1120625 () Bool)

(assert (=> b!1215652 m!1120625))

(declare-fun m!1120627 () Bool)

(assert (=> b!1215654 m!1120627))

(declare-fun m!1120629 () Bool)

(assert (=> b!1215665 m!1120629))

(declare-fun m!1120631 () Bool)

(assert (=> b!1215655 m!1120631))

(check-sat (not b_lambda!21843) tp_is_empty!30861 (not b!1215665) (not start!101270) (not b!1215656) (not mapNonEmpty!48166) (not b!1215654) (not b!1215664) (not b!1215655) (not b_next!26157) (not b!1215653) (not b!1215652) b_and!43443 (not b!1215663))
(check-sat b_and!43443 (not b_next!26157))
