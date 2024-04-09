; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98398 () Bool)

(assert start!98398)

(declare-fun b_free!23967 () Bool)

(declare-fun b_next!23967 () Bool)

(assert (=> start!98398 (= b_free!23967 (not b_next!23967))))

(declare-fun tp!84612 () Bool)

(declare-fun b_and!38797 () Bool)

(assert (=> start!98398 (= tp!84612 b_and!38797)))

(declare-fun b!1133627 () Bool)

(declare-fun e!645210 () Bool)

(declare-fun e!645214 () Bool)

(assert (=> b!1133627 (= e!645210 e!645214)))

(declare-fun res!756990 () Bool)

(assert (=> b!1133627 (=> (not res!756990) (not e!645214))))

(declare-datatypes ((array!73816 0))(
  ( (array!73817 (arr!35555 (Array (_ BitVec 32) (_ BitVec 64))) (size!36092 (_ BitVec 32))) )
))
(declare-fun lt!503774 () array!73816)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73816 (_ BitVec 32)) Bool)

(assert (=> b!1133627 (= res!756990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!503774 mask!1564))))

(declare-fun _keys!1208 () array!73816)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1133627 (= lt!503774 (array!73817 (store (arr!35555 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36092 _keys!1208)))))

(declare-fun b!1133628 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((V!43123 0))(
  ( (V!43124 (val!14305 Int)) )
))
(declare-datatypes ((tuple2!18132 0))(
  ( (tuple2!18133 (_1!9076 (_ BitVec 64)) (_2!9076 V!43123)) )
))
(declare-datatypes ((List!24944 0))(
  ( (Nil!24941) (Cons!24940 (h!26149 tuple2!18132) (t!35910 List!24944)) )
))
(declare-datatypes ((ListLongMap!16113 0))(
  ( (ListLongMap!16114 (toList!8072 List!24944)) )
))
(declare-fun call!49148 () ListLongMap!16113)

(declare-fun call!49149 () ListLongMap!16113)

(declare-fun e!645223 () Bool)

(declare-fun -!1190 (ListLongMap!16113 (_ BitVec 64)) ListLongMap!16113)

(assert (=> b!1133628 (= e!645223 (= call!49149 (-!1190 call!49148 k0!934)))))

(declare-fun mapIsEmpty!44570 () Bool)

(declare-fun mapRes!44570 () Bool)

(assert (=> mapIsEmpty!44570 mapRes!44570))

(declare-fun b!1133629 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!645221 () Bool)

(declare-fun arrayContainsKey!0 (array!73816 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1133629 (= e!645221 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1133630 () Bool)

(declare-fun c!110603 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!503775 () Bool)

(assert (=> b!1133630 (= c!110603 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!503775))))

(declare-datatypes ((Unit!37088 0))(
  ( (Unit!37089) )
))
(declare-fun e!645215 () Unit!37088)

(declare-fun e!645212 () Unit!37088)

(assert (=> b!1133630 (= e!645215 e!645212)))

(declare-fun zeroValue!944 () V!43123)

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!49142 () Bool)

(declare-datatypes ((ValueCell!13539 0))(
  ( (ValueCellFull!13539 (v!16943 V!43123)) (EmptyCell!13539) )
))
(declare-datatypes ((array!73818 0))(
  ( (array!73819 (arr!35556 (Array (_ BitVec 32) ValueCell!13539)) (size!36093 (_ BitVec 32))) )
))
(declare-fun lt!503768 () array!73818)

(declare-fun minValue!944 () V!43123)

(declare-fun getCurrentListMapNoExtraKeys!4521 (array!73816 array!73818 (_ BitVec 32) (_ BitVec 32) V!43123 V!43123 (_ BitVec 32) Int) ListLongMap!16113)

(assert (=> bm!49142 (= call!49149 (getCurrentListMapNoExtraKeys!4521 lt!503774 lt!503768 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133631 () Bool)

(declare-fun res!756991 () Bool)

(assert (=> b!1133631 (=> (not res!756991) (not e!645210))))

(assert (=> b!1133631 (= res!756991 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36092 _keys!1208))))))

(declare-fun c!110606 () Bool)

(declare-fun lt!503767 () ListLongMap!16113)

(declare-fun bm!49143 () Bool)

(declare-fun call!49152 () Unit!37088)

(declare-fun c!110604 () Bool)

(declare-fun addStillContains!731 (ListLongMap!16113 (_ BitVec 64) V!43123 (_ BitVec 64)) Unit!37088)

(assert (=> bm!49143 (= call!49152 (addStillContains!731 lt!503767 (ite (or c!110606 c!110604) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110606 c!110604) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1133632 () Bool)

(declare-fun e!645211 () Bool)

(declare-fun e!645220 () Bool)

(assert (=> b!1133632 (= e!645211 e!645220)))

(declare-fun res!756992 () Bool)

(assert (=> b!1133632 (=> res!756992 e!645220)))

(assert (=> b!1133632 (= res!756992 (not (= (select (arr!35555 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1133632 e!645223))

(declare-fun c!110605 () Bool)

(assert (=> b!1133632 (= c!110605 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!503765 () Unit!37088)

(declare-fun _values!996 () array!73818)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!447 (array!73816 array!73818 (_ BitVec 32) (_ BitVec 32) V!43123 V!43123 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37088)

(assert (=> b!1133632 (= lt!503765 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!447 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133633 () Bool)

(declare-fun res!756989 () Bool)

(assert (=> b!1133633 (=> (not res!756989) (not e!645210))))

(declare-datatypes ((List!24945 0))(
  ( (Nil!24942) (Cons!24941 (h!26150 (_ BitVec 64)) (t!35911 List!24945)) )
))
(declare-fun arrayNoDuplicates!0 (array!73816 (_ BitVec 32) List!24945) Bool)

(assert (=> b!1133633 (= res!756989 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24942))))

(declare-fun b!1133634 () Bool)

(declare-fun e!645216 () Unit!37088)

(assert (=> b!1133634 (= e!645216 e!645215)))

(assert (=> b!1133634 (= c!110604 (and (not lt!503775) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1133635 () Bool)

(declare-fun e!645222 () Bool)

(assert (=> b!1133635 (= e!645222 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!49144 () Bool)

(assert (=> bm!49144 (= call!49148 (getCurrentListMapNoExtraKeys!4521 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133637 () Bool)

(declare-fun lt!503766 () Unit!37088)

(assert (=> b!1133637 (= e!645216 lt!503766)))

(declare-fun lt!503762 () Unit!37088)

(assert (=> b!1133637 (= lt!503762 call!49152)))

(declare-fun lt!503771 () ListLongMap!16113)

(declare-fun call!49145 () ListLongMap!16113)

(assert (=> b!1133637 (= lt!503771 call!49145)))

(declare-fun call!49150 () Bool)

(assert (=> b!1133637 call!49150))

(assert (=> b!1133637 (= lt!503766 (addStillContains!731 lt!503771 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun contains!6563 (ListLongMap!16113 (_ BitVec 64)) Bool)

(declare-fun +!3432 (ListLongMap!16113 tuple2!18132) ListLongMap!16113)

(assert (=> b!1133637 (contains!6563 (+!3432 lt!503771 (tuple2!18133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun call!49151 () ListLongMap!16113)

(declare-fun bm!49145 () Bool)

(assert (=> bm!49145 (= call!49150 (contains!6563 (ite c!110606 lt!503771 call!49151) k0!934))))

(declare-fun b!1133638 () Bool)

(declare-fun res!756982 () Bool)

(assert (=> b!1133638 (=> (not res!756982) (not e!645210))))

(assert (=> b!1133638 (= res!756982 (and (= (size!36093 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36092 _keys!1208) (size!36093 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1133639 () Bool)

(assert (=> b!1133639 (= e!645221 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!503775) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1133640 () Bool)

(declare-fun res!756984 () Bool)

(assert (=> b!1133640 (=> (not res!756984) (not e!645210))))

(assert (=> b!1133640 (= res!756984 (= (select (arr!35555 _keys!1208) i!673) k0!934))))

(declare-fun b!1133641 () Bool)

(declare-fun res!756986 () Bool)

(assert (=> b!1133641 (=> (not res!756986) (not e!645210))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1133641 (= res!756986 (validKeyInArray!0 k0!934))))

(declare-fun b!1133642 () Bool)

(declare-fun lt!503761 () Unit!37088)

(assert (=> b!1133642 (= e!645212 lt!503761)))

(declare-fun call!49146 () Unit!37088)

(assert (=> b!1133642 (= lt!503761 call!49146)))

(declare-fun call!49147 () Bool)

(assert (=> b!1133642 call!49147))

(declare-fun b!1133643 () Bool)

(declare-fun e!645219 () Bool)

(assert (=> b!1133643 (= e!645214 (not e!645219))))

(declare-fun res!756978 () Bool)

(assert (=> b!1133643 (=> res!756978 e!645219)))

(assert (=> b!1133643 (= res!756978 (bvsgt from!1455 i!673))))

(assert (=> b!1133643 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!503769 () Unit!37088)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73816 (_ BitVec 64) (_ BitVec 32)) Unit!37088)

(assert (=> b!1133643 (= lt!503769 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1133644 () Bool)

(assert (=> b!1133644 (= e!645219 e!645211)))

(declare-fun res!756985 () Bool)

(assert (=> b!1133644 (=> res!756985 e!645211)))

(assert (=> b!1133644 (= res!756985 (not (= from!1455 i!673)))))

(declare-fun lt!503773 () ListLongMap!16113)

(assert (=> b!1133644 (= lt!503773 (getCurrentListMapNoExtraKeys!4521 lt!503774 lt!503768 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2590 (Int (_ BitVec 64)) V!43123)

(assert (=> b!1133644 (= lt!503768 (array!73819 (store (arr!35556 _values!996) i!673 (ValueCellFull!13539 (dynLambda!2590 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36093 _values!996)))))

(declare-fun lt!503763 () ListLongMap!16113)

(assert (=> b!1133644 (= lt!503763 (getCurrentListMapNoExtraKeys!4521 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1133645 () Bool)

(assert (=> b!1133645 call!49147))

(declare-fun lt!503772 () Unit!37088)

(assert (=> b!1133645 (= lt!503772 call!49146)))

(assert (=> b!1133645 (= e!645215 lt!503772)))

(declare-fun bm!49146 () Bool)

(assert (=> bm!49146 (= call!49146 call!49152)))

(declare-fun mapNonEmpty!44570 () Bool)

(declare-fun tp!84613 () Bool)

(declare-fun e!645225 () Bool)

(assert (=> mapNonEmpty!44570 (= mapRes!44570 (and tp!84613 e!645225))))

(declare-fun mapKey!44570 () (_ BitVec 32))

(declare-fun mapRest!44570 () (Array (_ BitVec 32) ValueCell!13539))

(declare-fun mapValue!44570 () ValueCell!13539)

(assert (=> mapNonEmpty!44570 (= (arr!35556 _values!996) (store mapRest!44570 mapKey!44570 mapValue!44570))))

(declare-fun b!1133646 () Bool)

(declare-fun e!645224 () Bool)

(declare-fun tp_is_empty!28497 () Bool)

(assert (=> b!1133646 (= e!645224 tp_is_empty!28497)))

(declare-fun b!1133647 () Bool)

(declare-fun e!645213 () Bool)

(assert (=> b!1133647 (= e!645213 (and e!645224 mapRes!44570))))

(declare-fun condMapEmpty!44570 () Bool)

(declare-fun mapDefault!44570 () ValueCell!13539)

(assert (=> b!1133647 (= condMapEmpty!44570 (= (arr!35556 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13539)) mapDefault!44570)))))

(declare-fun b!1133648 () Bool)

(declare-fun e!645218 () Bool)

(assert (=> b!1133648 (= e!645220 e!645218)))

(declare-fun res!756988 () Bool)

(assert (=> b!1133648 (=> res!756988 e!645218)))

(assert (=> b!1133648 (= res!756988 (not (contains!6563 lt!503767 k0!934)))))

(assert (=> b!1133648 (= lt!503767 (getCurrentListMapNoExtraKeys!4521 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133649 () Bool)

(assert (=> b!1133649 (= e!645218 true)))

(assert (=> b!1133649 e!645222))

(declare-fun res!756987 () Bool)

(assert (=> b!1133649 (=> (not res!756987) (not e!645222))))

(assert (=> b!1133649 (= res!756987 e!645221)))

(declare-fun c!110607 () Bool)

(assert (=> b!1133649 (= c!110607 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!503764 () Unit!37088)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!340 (array!73816 array!73818 (_ BitVec 32) (_ BitVec 32) V!43123 V!43123 (_ BitVec 64) (_ BitVec 32) Int) Unit!37088)

(assert (=> b!1133649 (= lt!503764 (lemmaListMapContainsThenArrayContainsFrom!340 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!503770 () Unit!37088)

(assert (=> b!1133649 (= lt!503770 e!645216)))

(assert (=> b!1133649 (= c!110606 (and (not lt!503775) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1133649 (= lt!503775 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!49147 () Bool)

(assert (=> bm!49147 (= call!49147 call!49150)))

(declare-fun b!1133650 () Bool)

(declare-fun res!756983 () Bool)

(assert (=> b!1133650 (=> (not res!756983) (not e!645210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1133650 (= res!756983 (validMask!0 mask!1564))))

(declare-fun b!1133651 () Bool)

(declare-fun Unit!37090 () Unit!37088)

(assert (=> b!1133651 (= e!645212 Unit!37090)))

(declare-fun b!1133652 () Bool)

(declare-fun res!756980 () Bool)

(assert (=> b!1133652 (=> (not res!756980) (not e!645210))))

(assert (=> b!1133652 (= res!756980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!756981 () Bool)

(assert (=> start!98398 (=> (not res!756981) (not e!645210))))

(assert (=> start!98398 (= res!756981 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36092 _keys!1208))))))

(assert (=> start!98398 e!645210))

(assert (=> start!98398 tp_is_empty!28497))

(declare-fun array_inv!27136 (array!73816) Bool)

(assert (=> start!98398 (array_inv!27136 _keys!1208)))

(assert (=> start!98398 true))

(assert (=> start!98398 tp!84612))

(declare-fun array_inv!27137 (array!73818) Bool)

(assert (=> start!98398 (and (array_inv!27137 _values!996) e!645213)))

(declare-fun b!1133636 () Bool)

(assert (=> b!1133636 (= e!645225 tp_is_empty!28497)))

(declare-fun bm!49148 () Bool)

(assert (=> bm!49148 (= call!49151 call!49145)))

(declare-fun b!1133653 () Bool)

(assert (=> b!1133653 (= e!645223 (= call!49149 call!49148))))

(declare-fun b!1133654 () Bool)

(declare-fun res!756979 () Bool)

(assert (=> b!1133654 (=> (not res!756979) (not e!645214))))

(assert (=> b!1133654 (= res!756979 (arrayNoDuplicates!0 lt!503774 #b00000000000000000000000000000000 Nil!24942))))

(declare-fun bm!49149 () Bool)

(assert (=> bm!49149 (= call!49145 (+!3432 lt!503767 (ite (or c!110606 c!110604) (tuple2!18133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (= (and start!98398 res!756981) b!1133650))

(assert (= (and b!1133650 res!756983) b!1133638))

(assert (= (and b!1133638 res!756982) b!1133652))

(assert (= (and b!1133652 res!756980) b!1133633))

(assert (= (and b!1133633 res!756989) b!1133631))

(assert (= (and b!1133631 res!756991) b!1133641))

(assert (= (and b!1133641 res!756986) b!1133640))

(assert (= (and b!1133640 res!756984) b!1133627))

(assert (= (and b!1133627 res!756990) b!1133654))

(assert (= (and b!1133654 res!756979) b!1133643))

(assert (= (and b!1133643 (not res!756978)) b!1133644))

(assert (= (and b!1133644 (not res!756985)) b!1133632))

(assert (= (and b!1133632 c!110605) b!1133628))

(assert (= (and b!1133632 (not c!110605)) b!1133653))

(assert (= (or b!1133628 b!1133653) bm!49142))

(assert (= (or b!1133628 b!1133653) bm!49144))

(assert (= (and b!1133632 (not res!756992)) b!1133648))

(assert (= (and b!1133648 (not res!756988)) b!1133649))

(assert (= (and b!1133649 c!110606) b!1133637))

(assert (= (and b!1133649 (not c!110606)) b!1133634))

(assert (= (and b!1133634 c!110604) b!1133645))

(assert (= (and b!1133634 (not c!110604)) b!1133630))

(assert (= (and b!1133630 c!110603) b!1133642))

(assert (= (and b!1133630 (not c!110603)) b!1133651))

(assert (= (or b!1133645 b!1133642) bm!49146))

(assert (= (or b!1133645 b!1133642) bm!49148))

(assert (= (or b!1133645 b!1133642) bm!49147))

(assert (= (or b!1133637 bm!49147) bm!49145))

(assert (= (or b!1133637 bm!49146) bm!49143))

(assert (= (or b!1133637 bm!49148) bm!49149))

(assert (= (and b!1133649 c!110607) b!1133629))

(assert (= (and b!1133649 (not c!110607)) b!1133639))

(assert (= (and b!1133649 res!756987) b!1133635))

(assert (= (and b!1133647 condMapEmpty!44570) mapIsEmpty!44570))

(assert (= (and b!1133647 (not condMapEmpty!44570)) mapNonEmpty!44570))

(get-info :version)

(assert (= (and mapNonEmpty!44570 ((_ is ValueCellFull!13539) mapValue!44570)) b!1133636))

(assert (= (and b!1133647 ((_ is ValueCellFull!13539) mapDefault!44570)) b!1133646))

(assert (= start!98398 b!1133647))

(declare-fun b_lambda!19091 () Bool)

(assert (=> (not b_lambda!19091) (not b!1133644)))

(declare-fun t!35909 () Bool)

(declare-fun tb!8787 () Bool)

(assert (=> (and start!98398 (= defaultEntry!1004 defaultEntry!1004) t!35909) tb!8787))

(declare-fun result!18131 () Bool)

(assert (=> tb!8787 (= result!18131 tp_is_empty!28497)))

(assert (=> b!1133644 t!35909))

(declare-fun b_and!38799 () Bool)

(assert (= b_and!38797 (and (=> t!35909 result!18131) b_and!38799)))

(declare-fun m!1046691 () Bool)

(assert (=> b!1133635 m!1046691))

(declare-fun m!1046693 () Bool)

(assert (=> mapNonEmpty!44570 m!1046693))

(declare-fun m!1046695 () Bool)

(assert (=> bm!49145 m!1046695))

(declare-fun m!1046697 () Bool)

(assert (=> b!1133644 m!1046697))

(declare-fun m!1046699 () Bool)

(assert (=> b!1133644 m!1046699))

(declare-fun m!1046701 () Bool)

(assert (=> b!1133644 m!1046701))

(declare-fun m!1046703 () Bool)

(assert (=> b!1133644 m!1046703))

(declare-fun m!1046705 () Bool)

(assert (=> b!1133628 m!1046705))

(declare-fun m!1046707 () Bool)

(assert (=> b!1133652 m!1046707))

(declare-fun m!1046709 () Bool)

(assert (=> bm!49149 m!1046709))

(declare-fun m!1046711 () Bool)

(assert (=> bm!49143 m!1046711))

(declare-fun m!1046713 () Bool)

(assert (=> start!98398 m!1046713))

(declare-fun m!1046715 () Bool)

(assert (=> start!98398 m!1046715))

(declare-fun m!1046717 () Bool)

(assert (=> b!1133650 m!1046717))

(declare-fun m!1046719 () Bool)

(assert (=> b!1133640 m!1046719))

(declare-fun m!1046721 () Bool)

(assert (=> b!1133643 m!1046721))

(declare-fun m!1046723 () Bool)

(assert (=> b!1133643 m!1046723))

(declare-fun m!1046725 () Bool)

(assert (=> b!1133633 m!1046725))

(declare-fun m!1046727 () Bool)

(assert (=> b!1133648 m!1046727))

(declare-fun m!1046729 () Bool)

(assert (=> b!1133648 m!1046729))

(declare-fun m!1046731 () Bool)

(assert (=> b!1133637 m!1046731))

(declare-fun m!1046733 () Bool)

(assert (=> b!1133637 m!1046733))

(assert (=> b!1133637 m!1046733))

(declare-fun m!1046735 () Bool)

(assert (=> b!1133637 m!1046735))

(declare-fun m!1046737 () Bool)

(assert (=> b!1133627 m!1046737))

(declare-fun m!1046739 () Bool)

(assert (=> b!1133627 m!1046739))

(declare-fun m!1046741 () Bool)

(assert (=> b!1133654 m!1046741))

(assert (=> bm!49144 m!1046729))

(declare-fun m!1046743 () Bool)

(assert (=> bm!49142 m!1046743))

(declare-fun m!1046745 () Bool)

(assert (=> b!1133641 m!1046745))

(assert (=> b!1133629 m!1046691))

(declare-fun m!1046747 () Bool)

(assert (=> b!1133649 m!1046747))

(declare-fun m!1046749 () Bool)

(assert (=> b!1133632 m!1046749))

(declare-fun m!1046751 () Bool)

(assert (=> b!1133632 m!1046751))

(check-sat (not b!1133635) (not b!1133627) (not bm!49145) (not b!1133633) (not bm!49143) (not b!1133644) tp_is_empty!28497 (not b!1133629) (not b_lambda!19091) (not b!1133650) (not mapNonEmpty!44570) (not b!1133654) (not b!1133643) (not b!1133632) (not b!1133637) (not b!1133641) (not b!1133648) (not b!1133652) (not b!1133649) (not b!1133628) (not start!98398) b_and!38799 (not bm!49144) (not bm!49149) (not bm!49142) (not b_next!23967))
(check-sat b_and!38799 (not b_next!23967))
