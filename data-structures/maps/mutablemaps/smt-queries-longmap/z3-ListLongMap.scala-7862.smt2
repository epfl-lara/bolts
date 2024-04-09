; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97954 () Bool)

(assert start!97954)

(declare-fun b_free!23619 () Bool)

(declare-fun b_next!23619 () Bool)

(assert (=> start!97954 (= b_free!23619 (not b_next!23619))))

(declare-fun tp!83562 () Bool)

(declare-fun b_and!38043 () Bool)

(assert (=> start!97954 (= tp!83562 b_and!38043)))

(declare-fun b!1121720 () Bool)

(declare-fun res!749465 () Bool)

(declare-fun e!638704 () Bool)

(assert (=> b!1121720 (=> (not res!749465) (not e!638704))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1121720 (= res!749465 (validMask!0 mask!1564))))

(declare-fun b!1121721 () Bool)

(declare-fun res!749466 () Bool)

(assert (=> b!1121721 (=> (not res!749466) (not e!638704))))

(declare-datatypes ((array!73124 0))(
  ( (array!73125 (arr!35211 (Array (_ BitVec 32) (_ BitVec 64))) (size!35748 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73124)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42659 0))(
  ( (V!42660 (val!14131 Int)) )
))
(declare-datatypes ((ValueCell!13365 0))(
  ( (ValueCellFull!13365 (v!16765 V!42659)) (EmptyCell!13365) )
))
(declare-datatypes ((array!73126 0))(
  ( (array!73127 (arr!35212 (Array (_ BitVec 32) ValueCell!13365)) (size!35749 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73126)

(assert (=> b!1121721 (= res!749466 (and (= (size!35749 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35748 _keys!1208) (size!35749 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1121722 () Bool)

(declare-fun res!749456 () Bool)

(assert (=> b!1121722 (=> (not res!749456) (not e!638704))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1121722 (= res!749456 (= (select (arr!35211 _keys!1208) i!673) k0!934))))

(declare-fun b!1121723 () Bool)

(declare-fun res!749458 () Bool)

(declare-fun e!638697 () Bool)

(assert (=> b!1121723 (=> (not res!749458) (not e!638697))))

(declare-fun lt!498441 () array!73124)

(declare-datatypes ((List!24640 0))(
  ( (Nil!24637) (Cons!24636 (h!25845 (_ BitVec 64)) (t!35258 List!24640)) )
))
(declare-fun arrayNoDuplicates!0 (array!73124 (_ BitVec 32) List!24640) Bool)

(assert (=> b!1121723 (= res!749458 (arrayNoDuplicates!0 lt!498441 #b00000000000000000000000000000000 Nil!24637))))

(declare-fun zeroValue!944 () V!42659)

(declare-datatypes ((tuple2!17802 0))(
  ( (tuple2!17803 (_1!8911 (_ BitVec 64)) (_2!8911 V!42659)) )
))
(declare-datatypes ((List!24641 0))(
  ( (Nil!24638) (Cons!24637 (h!25846 tuple2!17802) (t!35259 List!24641)) )
))
(declare-datatypes ((ListLongMap!15783 0))(
  ( (ListLongMap!15784 (toList!7907 List!24641)) )
))
(declare-fun call!47141 () ListLongMap!15783)

(declare-fun bm!47137 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!42659)

(declare-fun getCurrentListMapNoExtraKeys!4368 (array!73124 array!73126 (_ BitVec 32) (_ BitVec 32) V!42659 V!42659 (_ BitVec 32) Int) ListLongMap!15783)

(assert (=> bm!47137 (= call!47141 (getCurrentListMapNoExtraKeys!4368 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121724 () Bool)

(declare-fun res!749464 () Bool)

(assert (=> b!1121724 (=> (not res!749464) (not e!638704))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1121724 (= res!749464 (validKeyInArray!0 k0!934))))

(declare-fun b!1121725 () Bool)

(assert (=> b!1121725 (= e!638704 e!638697)))

(declare-fun res!749459 () Bool)

(assert (=> b!1121725 (=> (not res!749459) (not e!638697))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73124 (_ BitVec 32)) Bool)

(assert (=> b!1121725 (= res!749459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498441 mask!1564))))

(assert (=> b!1121725 (= lt!498441 (array!73125 (store (arr!35211 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35748 _keys!1208)))))

(declare-fun b!1121726 () Bool)

(declare-fun e!638699 () Bool)

(declare-fun e!638705 () Bool)

(declare-fun mapRes!44041 () Bool)

(assert (=> b!1121726 (= e!638699 (and e!638705 mapRes!44041))))

(declare-fun condMapEmpty!44041 () Bool)

(declare-fun mapDefault!44041 () ValueCell!13365)

(assert (=> b!1121726 (= condMapEmpty!44041 (= (arr!35212 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13365)) mapDefault!44041)))))

(declare-fun mapNonEmpty!44041 () Bool)

(declare-fun tp!83561 () Bool)

(declare-fun e!638701 () Bool)

(assert (=> mapNonEmpty!44041 (= mapRes!44041 (and tp!83561 e!638701))))

(declare-fun mapRest!44041 () (Array (_ BitVec 32) ValueCell!13365))

(declare-fun mapValue!44041 () ValueCell!13365)

(declare-fun mapKey!44041 () (_ BitVec 32))

(assert (=> mapNonEmpty!44041 (= (arr!35212 _values!996) (store mapRest!44041 mapKey!44041 mapValue!44041))))

(declare-fun b!1121728 () Bool)

(declare-fun tp_is_empty!28149 () Bool)

(assert (=> b!1121728 (= e!638705 tp_is_empty!28149)))

(declare-fun b!1121729 () Bool)

(declare-fun e!638698 () Bool)

(declare-fun call!47140 () ListLongMap!15783)

(assert (=> b!1121729 (= e!638698 (= call!47140 call!47141))))

(declare-fun b!1121730 () Bool)

(declare-fun e!638703 () Bool)

(declare-fun e!638702 () Bool)

(assert (=> b!1121730 (= e!638703 e!638702)))

(declare-fun res!749460 () Bool)

(assert (=> b!1121730 (=> res!749460 e!638702)))

(assert (=> b!1121730 (= res!749460 (not (= from!1455 i!673)))))

(declare-fun lt!498439 () ListLongMap!15783)

(declare-fun lt!498443 () array!73126)

(assert (=> b!1121730 (= lt!498439 (getCurrentListMapNoExtraKeys!4368 lt!498441 lt!498443 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2467 (Int (_ BitVec 64)) V!42659)

(assert (=> b!1121730 (= lt!498443 (array!73127 (store (arr!35212 _values!996) i!673 (ValueCellFull!13365 (dynLambda!2467 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35749 _values!996)))))

(declare-fun lt!498442 () ListLongMap!15783)

(assert (=> b!1121730 (= lt!498442 (getCurrentListMapNoExtraKeys!4368 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1121731 () Bool)

(assert (=> b!1121731 (= e!638701 tp_is_empty!28149)))

(declare-fun b!1121732 () Bool)

(declare-fun res!749461 () Bool)

(assert (=> b!1121732 (=> (not res!749461) (not e!638704))))

(assert (=> b!1121732 (= res!749461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1121733 () Bool)

(declare-fun -!1072 (ListLongMap!15783 (_ BitVec 64)) ListLongMap!15783)

(assert (=> b!1121733 (= e!638698 (= call!47140 (-!1072 call!47141 k0!934)))))

(declare-fun b!1121734 () Bool)

(assert (=> b!1121734 (= e!638697 (not e!638703))))

(declare-fun res!749457 () Bool)

(assert (=> b!1121734 (=> res!749457 e!638703)))

(assert (=> b!1121734 (= res!749457 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73124 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1121734 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36727 0))(
  ( (Unit!36728) )
))
(declare-fun lt!498440 () Unit!36727)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73124 (_ BitVec 64) (_ BitVec 32)) Unit!36727)

(assert (=> b!1121734 (= lt!498440 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!44041 () Bool)

(assert (=> mapIsEmpty!44041 mapRes!44041))

(declare-fun bm!47138 () Bool)

(assert (=> bm!47138 (= call!47140 (getCurrentListMapNoExtraKeys!4368 lt!498441 lt!498443 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121735 () Bool)

(assert (=> b!1121735 (= e!638702 true)))

(assert (=> b!1121735 e!638698))

(declare-fun c!109379 () Bool)

(assert (=> b!1121735 (= c!109379 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!498444 () Unit!36727)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!326 (array!73124 array!73126 (_ BitVec 32) (_ BitVec 32) V!42659 V!42659 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36727)

(assert (=> b!1121735 (= lt!498444 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!326 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121736 () Bool)

(declare-fun res!749463 () Bool)

(assert (=> b!1121736 (=> (not res!749463) (not e!638704))))

(assert (=> b!1121736 (= res!749463 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24637))))

(declare-fun res!749455 () Bool)

(assert (=> start!97954 (=> (not res!749455) (not e!638704))))

(assert (=> start!97954 (= res!749455 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35748 _keys!1208))))))

(assert (=> start!97954 e!638704))

(assert (=> start!97954 tp_is_empty!28149))

(declare-fun array_inv!26916 (array!73124) Bool)

(assert (=> start!97954 (array_inv!26916 _keys!1208)))

(assert (=> start!97954 true))

(assert (=> start!97954 tp!83562))

(declare-fun array_inv!26917 (array!73126) Bool)

(assert (=> start!97954 (and (array_inv!26917 _values!996) e!638699)))

(declare-fun b!1121727 () Bool)

(declare-fun res!749462 () Bool)

(assert (=> b!1121727 (=> (not res!749462) (not e!638704))))

(assert (=> b!1121727 (= res!749462 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35748 _keys!1208))))))

(assert (= (and start!97954 res!749455) b!1121720))

(assert (= (and b!1121720 res!749465) b!1121721))

(assert (= (and b!1121721 res!749466) b!1121732))

(assert (= (and b!1121732 res!749461) b!1121736))

(assert (= (and b!1121736 res!749463) b!1121727))

(assert (= (and b!1121727 res!749462) b!1121724))

(assert (= (and b!1121724 res!749464) b!1121722))

(assert (= (and b!1121722 res!749456) b!1121725))

(assert (= (and b!1121725 res!749459) b!1121723))

(assert (= (and b!1121723 res!749458) b!1121734))

(assert (= (and b!1121734 (not res!749457)) b!1121730))

(assert (= (and b!1121730 (not res!749460)) b!1121735))

(assert (= (and b!1121735 c!109379) b!1121733))

(assert (= (and b!1121735 (not c!109379)) b!1121729))

(assert (= (or b!1121733 b!1121729) bm!47137))

(assert (= (or b!1121733 b!1121729) bm!47138))

(assert (= (and b!1121726 condMapEmpty!44041) mapIsEmpty!44041))

(assert (= (and b!1121726 (not condMapEmpty!44041)) mapNonEmpty!44041))

(get-info :version)

(assert (= (and mapNonEmpty!44041 ((_ is ValueCellFull!13365) mapValue!44041)) b!1121731))

(assert (= (and b!1121726 ((_ is ValueCellFull!13365) mapDefault!44041)) b!1121728))

(assert (= start!97954 b!1121726))

(declare-fun b_lambda!18623 () Bool)

(assert (=> (not b_lambda!18623) (not b!1121730)))

(declare-fun t!35257 () Bool)

(declare-fun tb!8439 () Bool)

(assert (=> (and start!97954 (= defaultEntry!1004 defaultEntry!1004) t!35257) tb!8439))

(declare-fun result!17431 () Bool)

(assert (=> tb!8439 (= result!17431 tp_is_empty!28149)))

(assert (=> b!1121730 t!35257))

(declare-fun b_and!38045 () Bool)

(assert (= b_and!38043 (and (=> t!35257 result!17431) b_and!38045)))

(declare-fun m!1036609 () Bool)

(assert (=> b!1121725 m!1036609))

(declare-fun m!1036611 () Bool)

(assert (=> b!1121725 m!1036611))

(declare-fun m!1036613 () Bool)

(assert (=> b!1121734 m!1036613))

(declare-fun m!1036615 () Bool)

(assert (=> b!1121734 m!1036615))

(declare-fun m!1036617 () Bool)

(assert (=> b!1121724 m!1036617))

(declare-fun m!1036619 () Bool)

(assert (=> b!1121735 m!1036619))

(declare-fun m!1036621 () Bool)

(assert (=> bm!47137 m!1036621))

(declare-fun m!1036623 () Bool)

(assert (=> b!1121730 m!1036623))

(declare-fun m!1036625 () Bool)

(assert (=> b!1121730 m!1036625))

(declare-fun m!1036627 () Bool)

(assert (=> b!1121730 m!1036627))

(declare-fun m!1036629 () Bool)

(assert (=> b!1121730 m!1036629))

(declare-fun m!1036631 () Bool)

(assert (=> bm!47138 m!1036631))

(declare-fun m!1036633 () Bool)

(assert (=> b!1121723 m!1036633))

(declare-fun m!1036635 () Bool)

(assert (=> b!1121720 m!1036635))

(declare-fun m!1036637 () Bool)

(assert (=> b!1121736 m!1036637))

(declare-fun m!1036639 () Bool)

(assert (=> b!1121732 m!1036639))

(declare-fun m!1036641 () Bool)

(assert (=> start!97954 m!1036641))

(declare-fun m!1036643 () Bool)

(assert (=> start!97954 m!1036643))

(declare-fun m!1036645 () Bool)

(assert (=> b!1121722 m!1036645))

(declare-fun m!1036647 () Bool)

(assert (=> b!1121733 m!1036647))

(declare-fun m!1036649 () Bool)

(assert (=> mapNonEmpty!44041 m!1036649))

(check-sat (not b!1121720) (not start!97954) (not bm!47137) tp_is_empty!28149 (not b!1121735) (not b!1121733) (not b_next!23619) (not b_lambda!18623) b_and!38045 (not b!1121724) (not b!1121723) (not b!1121725) (not b!1121734) (not b!1121732) (not b!1121736) (not bm!47138) (not b!1121730) (not mapNonEmpty!44041))
(check-sat b_and!38045 (not b_next!23619))
