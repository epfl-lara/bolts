; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97912 () Bool)

(assert start!97912)

(declare-fun b_free!23577 () Bool)

(declare-fun b_next!23577 () Bool)

(assert (=> start!97912 (= b_free!23577 (not b_next!23577))))

(declare-fun tp!83436 () Bool)

(declare-fun b_and!37959 () Bool)

(assert (=> start!97912 (= tp!83436 b_and!37959)))

(declare-fun mapNonEmpty!43978 () Bool)

(declare-fun mapRes!43978 () Bool)

(declare-fun tp!83435 () Bool)

(declare-fun e!638134 () Bool)

(assert (=> mapNonEmpty!43978 (= mapRes!43978 (and tp!83435 e!638134))))

(declare-fun mapKey!43978 () (_ BitVec 32))

(declare-datatypes ((V!42603 0))(
  ( (V!42604 (val!14110 Int)) )
))
(declare-datatypes ((ValueCell!13344 0))(
  ( (ValueCellFull!13344 (v!16744 V!42603)) (EmptyCell!13344) )
))
(declare-fun mapRest!43978 () (Array (_ BitVec 32) ValueCell!13344))

(declare-fun mapValue!43978 () ValueCell!13344)

(declare-datatypes ((array!73040 0))(
  ( (array!73041 (arr!35169 (Array (_ BitVec 32) ValueCell!13344)) (size!35706 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73040)

(assert (=> mapNonEmpty!43978 (= (arr!35169 _values!996) (store mapRest!43978 mapKey!43978 mapValue!43978))))

(declare-fun b!1120607 () Bool)

(declare-fun e!638136 () Bool)

(declare-fun e!638135 () Bool)

(assert (=> b!1120607 (= e!638136 (and e!638135 mapRes!43978))))

(declare-fun condMapEmpty!43978 () Bool)

(declare-fun mapDefault!43978 () ValueCell!13344)

(assert (=> b!1120607 (= condMapEmpty!43978 (= (arr!35169 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13344)) mapDefault!43978)))))

(declare-fun b!1120608 () Bool)

(declare-fun res!748706 () Bool)

(declare-fun e!638131 () Bool)

(assert (=> b!1120608 (=> (not res!748706) (not e!638131))))

(declare-datatypes ((array!73042 0))(
  ( (array!73043 (arr!35170 (Array (_ BitVec 32) (_ BitVec 64))) (size!35707 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73042)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73042 (_ BitVec 32)) Bool)

(assert (=> b!1120608 (= res!748706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1120609 () Bool)

(declare-fun e!638133 () Bool)

(assert (=> b!1120609 (= e!638133 true)))

(declare-fun e!638132 () Bool)

(assert (=> b!1120609 e!638132))

(declare-fun c!109316 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1120609 (= c!109316 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42603)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((Unit!36693 0))(
  ( (Unit!36694) )
))
(declare-fun lt!498061 () Unit!36693)

(declare-fun minValue!944 () V!42603)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!311 (array!73042 array!73040 (_ BitVec 32) (_ BitVec 32) V!42603 V!42603 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36693)

(assert (=> b!1120609 (= lt!498061 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!311 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1120610 () Bool)

(declare-fun e!638138 () Bool)

(declare-fun e!638130 () Bool)

(assert (=> b!1120610 (= e!638138 (not e!638130))))

(declare-fun res!748700 () Bool)

(assert (=> b!1120610 (=> res!748700 e!638130)))

(assert (=> b!1120610 (= res!748700 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73042 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1120610 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!498062 () Unit!36693)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73042 (_ BitVec 64) (_ BitVec 32)) Unit!36693)

(assert (=> b!1120610 (= lt!498062 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1120611 () Bool)

(declare-fun tp_is_empty!28107 () Bool)

(assert (=> b!1120611 (= e!638134 tp_is_empty!28107)))

(declare-datatypes ((tuple2!17762 0))(
  ( (tuple2!17763 (_1!8891 (_ BitVec 64)) (_2!8891 V!42603)) )
))
(declare-datatypes ((List!24601 0))(
  ( (Nil!24598) (Cons!24597 (h!25806 tuple2!17762) (t!35177 List!24601)) )
))
(declare-datatypes ((ListLongMap!15743 0))(
  ( (ListLongMap!15744 (toList!7887 List!24601)) )
))
(declare-fun call!47015 () ListLongMap!15743)

(declare-fun bm!47011 () Bool)

(declare-fun lt!498065 () array!73040)

(declare-fun lt!498063 () array!73042)

(declare-fun getCurrentListMapNoExtraKeys!4348 (array!73042 array!73040 (_ BitVec 32) (_ BitVec 32) V!42603 V!42603 (_ BitVec 32) Int) ListLongMap!15743)

(assert (=> bm!47011 (= call!47015 (getCurrentListMapNoExtraKeys!4348 lt!498063 lt!498065 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1120612 () Bool)

(declare-fun res!748704 () Bool)

(assert (=> b!1120612 (=> (not res!748704) (not e!638131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1120612 (= res!748704 (validMask!0 mask!1564))))

(declare-fun b!1120613 () Bool)

(declare-fun res!748708 () Bool)

(assert (=> b!1120613 (=> (not res!748708) (not e!638131))))

(declare-datatypes ((List!24602 0))(
  ( (Nil!24599) (Cons!24598 (h!25807 (_ BitVec 64)) (t!35178 List!24602)) )
))
(declare-fun arrayNoDuplicates!0 (array!73042 (_ BitVec 32) List!24602) Bool)

(assert (=> b!1120613 (= res!748708 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24599))))

(declare-fun b!1120614 () Bool)

(declare-fun call!47014 () ListLongMap!15743)

(assert (=> b!1120614 (= e!638132 (= call!47015 call!47014))))

(declare-fun b!1120615 () Bool)

(assert (=> b!1120615 (= e!638131 e!638138)))

(declare-fun res!748702 () Bool)

(assert (=> b!1120615 (=> (not res!748702) (not e!638138))))

(assert (=> b!1120615 (= res!748702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498063 mask!1564))))

(assert (=> b!1120615 (= lt!498063 (array!73043 (store (arr!35170 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35707 _keys!1208)))))

(declare-fun b!1120616 () Bool)

(assert (=> b!1120616 (= e!638135 tp_is_empty!28107)))

(declare-fun b!1120617 () Bool)

(assert (=> b!1120617 (= e!638130 e!638133)))

(declare-fun res!748703 () Bool)

(assert (=> b!1120617 (=> res!748703 e!638133)))

(assert (=> b!1120617 (= res!748703 (not (= from!1455 i!673)))))

(declare-fun lt!498066 () ListLongMap!15743)

(assert (=> b!1120617 (= lt!498066 (getCurrentListMapNoExtraKeys!4348 lt!498063 lt!498065 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2449 (Int (_ BitVec 64)) V!42603)

(assert (=> b!1120617 (= lt!498065 (array!73041 (store (arr!35169 _values!996) i!673 (ValueCellFull!13344 (dynLambda!2449 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35706 _values!996)))))

(declare-fun lt!498064 () ListLongMap!15743)

(assert (=> b!1120617 (= lt!498064 (getCurrentListMapNoExtraKeys!4348 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1120618 () Bool)

(declare-fun res!748710 () Bool)

(assert (=> b!1120618 (=> (not res!748710) (not e!638131))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1120618 (= res!748710 (validKeyInArray!0 k0!934))))

(declare-fun res!748705 () Bool)

(assert (=> start!97912 (=> (not res!748705) (not e!638131))))

(assert (=> start!97912 (= res!748705 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35707 _keys!1208))))))

(assert (=> start!97912 e!638131))

(assert (=> start!97912 tp_is_empty!28107))

(declare-fun array_inv!26882 (array!73042) Bool)

(assert (=> start!97912 (array_inv!26882 _keys!1208)))

(assert (=> start!97912 true))

(assert (=> start!97912 tp!83436))

(declare-fun array_inv!26883 (array!73040) Bool)

(assert (=> start!97912 (and (array_inv!26883 _values!996) e!638136)))

(declare-fun b!1120619 () Bool)

(declare-fun res!748707 () Bool)

(assert (=> b!1120619 (=> (not res!748707) (not e!638138))))

(assert (=> b!1120619 (= res!748707 (arrayNoDuplicates!0 lt!498063 #b00000000000000000000000000000000 Nil!24599))))

(declare-fun b!1120620 () Bool)

(declare-fun -!1056 (ListLongMap!15743 (_ BitVec 64)) ListLongMap!15743)

(assert (=> b!1120620 (= e!638132 (= call!47015 (-!1056 call!47014 k0!934)))))

(declare-fun bm!47012 () Bool)

(assert (=> bm!47012 (= call!47014 (getCurrentListMapNoExtraKeys!4348 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!43978 () Bool)

(assert (=> mapIsEmpty!43978 mapRes!43978))

(declare-fun b!1120621 () Bool)

(declare-fun res!748701 () Bool)

(assert (=> b!1120621 (=> (not res!748701) (not e!638131))))

(assert (=> b!1120621 (= res!748701 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35707 _keys!1208))))))

(declare-fun b!1120622 () Bool)

(declare-fun res!748709 () Bool)

(assert (=> b!1120622 (=> (not res!748709) (not e!638131))))

(assert (=> b!1120622 (= res!748709 (and (= (size!35706 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35707 _keys!1208) (size!35706 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1120623 () Bool)

(declare-fun res!748699 () Bool)

(assert (=> b!1120623 (=> (not res!748699) (not e!638131))))

(assert (=> b!1120623 (= res!748699 (= (select (arr!35170 _keys!1208) i!673) k0!934))))

(assert (= (and start!97912 res!748705) b!1120612))

(assert (= (and b!1120612 res!748704) b!1120622))

(assert (= (and b!1120622 res!748709) b!1120608))

(assert (= (and b!1120608 res!748706) b!1120613))

(assert (= (and b!1120613 res!748708) b!1120621))

(assert (= (and b!1120621 res!748701) b!1120618))

(assert (= (and b!1120618 res!748710) b!1120623))

(assert (= (and b!1120623 res!748699) b!1120615))

(assert (= (and b!1120615 res!748702) b!1120619))

(assert (= (and b!1120619 res!748707) b!1120610))

(assert (= (and b!1120610 (not res!748700)) b!1120617))

(assert (= (and b!1120617 (not res!748703)) b!1120609))

(assert (= (and b!1120609 c!109316) b!1120620))

(assert (= (and b!1120609 (not c!109316)) b!1120614))

(assert (= (or b!1120620 b!1120614) bm!47012))

(assert (= (or b!1120620 b!1120614) bm!47011))

(assert (= (and b!1120607 condMapEmpty!43978) mapIsEmpty!43978))

(assert (= (and b!1120607 (not condMapEmpty!43978)) mapNonEmpty!43978))

(get-info :version)

(assert (= (and mapNonEmpty!43978 ((_ is ValueCellFull!13344) mapValue!43978)) b!1120611))

(assert (= (and b!1120607 ((_ is ValueCellFull!13344) mapDefault!43978)) b!1120616))

(assert (= start!97912 b!1120607))

(declare-fun b_lambda!18581 () Bool)

(assert (=> (not b_lambda!18581) (not b!1120617)))

(declare-fun t!35176 () Bool)

(declare-fun tb!8397 () Bool)

(assert (=> (and start!97912 (= defaultEntry!1004 defaultEntry!1004) t!35176) tb!8397))

(declare-fun result!17347 () Bool)

(assert (=> tb!8397 (= result!17347 tp_is_empty!28107)))

(assert (=> b!1120617 t!35176))

(declare-fun b_and!37961 () Bool)

(assert (= b_and!37959 (and (=> t!35176 result!17347) b_and!37961)))

(declare-fun m!1035727 () Bool)

(assert (=> start!97912 m!1035727))

(declare-fun m!1035729 () Bool)

(assert (=> start!97912 m!1035729))

(declare-fun m!1035731 () Bool)

(assert (=> b!1120620 m!1035731))

(declare-fun m!1035733 () Bool)

(assert (=> mapNonEmpty!43978 m!1035733))

(declare-fun m!1035735 () Bool)

(assert (=> b!1120619 m!1035735))

(declare-fun m!1035737 () Bool)

(assert (=> b!1120608 m!1035737))

(declare-fun m!1035739 () Bool)

(assert (=> b!1120623 m!1035739))

(declare-fun m!1035741 () Bool)

(assert (=> b!1120609 m!1035741))

(declare-fun m!1035743 () Bool)

(assert (=> b!1120610 m!1035743))

(declare-fun m!1035745 () Bool)

(assert (=> b!1120610 m!1035745))

(declare-fun m!1035747 () Bool)

(assert (=> b!1120618 m!1035747))

(declare-fun m!1035749 () Bool)

(assert (=> b!1120612 m!1035749))

(declare-fun m!1035751 () Bool)

(assert (=> b!1120613 m!1035751))

(declare-fun m!1035753 () Bool)

(assert (=> b!1120615 m!1035753))

(declare-fun m!1035755 () Bool)

(assert (=> b!1120615 m!1035755))

(declare-fun m!1035757 () Bool)

(assert (=> b!1120617 m!1035757))

(declare-fun m!1035759 () Bool)

(assert (=> b!1120617 m!1035759))

(declare-fun m!1035761 () Bool)

(assert (=> b!1120617 m!1035761))

(declare-fun m!1035763 () Bool)

(assert (=> b!1120617 m!1035763))

(declare-fun m!1035765 () Bool)

(assert (=> bm!47011 m!1035765))

(declare-fun m!1035767 () Bool)

(assert (=> bm!47012 m!1035767))

(check-sat (not bm!47011) (not b_lambda!18581) (not b!1120615) tp_is_empty!28107 (not start!97912) (not mapNonEmpty!43978) (not b!1120609) (not bm!47012) (not b!1120618) (not b!1120608) (not b!1120619) (not b!1120610) (not b!1120612) (not b!1120617) b_and!37961 (not b!1120613) (not b_next!23577) (not b!1120620))
(check-sat b_and!37961 (not b_next!23577))
