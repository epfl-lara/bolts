; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97996 () Bool)

(assert start!97996)

(declare-fun b_free!23661 () Bool)

(declare-fun b_next!23661 () Bool)

(assert (=> start!97996 (= b_free!23661 (not b_next!23661))))

(declare-fun tp!83688 () Bool)

(declare-fun b_and!38127 () Bool)

(assert (=> start!97996 (= tp!83688 b_and!38127)))

(declare-fun b!1122883 () Bool)

(declare-fun e!639317 () Bool)

(declare-fun e!639314 () Bool)

(declare-fun mapRes!44104 () Bool)

(assert (=> b!1122883 (= e!639317 (and e!639314 mapRes!44104))))

(declare-fun condMapEmpty!44104 () Bool)

(declare-datatypes ((V!42715 0))(
  ( (V!42716 (val!14152 Int)) )
))
(declare-datatypes ((ValueCell!13386 0))(
  ( (ValueCellFull!13386 (v!16786 V!42715)) (EmptyCell!13386) )
))
(declare-datatypes ((array!73208 0))(
  ( (array!73209 (arr!35253 (Array (_ BitVec 32) ValueCell!13386)) (size!35790 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73208)

(declare-fun mapDefault!44104 () ValueCell!13386)

(assert (=> b!1122883 (= condMapEmpty!44104 (= (arr!35253 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13386)) mapDefault!44104)))))

(declare-fun b!1122884 () Bool)

(declare-fun res!750262 () Bool)

(declare-fun e!639323 () Bool)

(assert (=> b!1122884 (=> (not res!750262) (not e!639323))))

(declare-datatypes ((array!73210 0))(
  ( (array!73211 (arr!35254 (Array (_ BitVec 32) (_ BitVec 64))) (size!35791 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73210)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1122884 (= res!750262 (= (select (arr!35254 _keys!1208) i!673) k0!934))))

(declare-fun b!1122885 () Bool)

(declare-fun tp_is_empty!28191 () Bool)

(assert (=> b!1122885 (= e!639314 tp_is_empty!28191)))

(declare-fun b!1122886 () Bool)

(declare-fun res!750272 () Bool)

(declare-fun e!639322 () Bool)

(assert (=> b!1122886 (=> (not res!750272) (not e!639322))))

(declare-fun lt!498873 () array!73210)

(declare-datatypes ((List!24676 0))(
  ( (Nil!24673) (Cons!24672 (h!25881 (_ BitVec 64)) (t!35336 List!24676)) )
))
(declare-fun arrayNoDuplicates!0 (array!73210 (_ BitVec 32) List!24676) Bool)

(assert (=> b!1122886 (= res!750272 (arrayNoDuplicates!0 lt!498873 #b00000000000000000000000000000000 Nil!24673))))

(declare-fun res!750261 () Bool)

(assert (=> start!97996 (=> (not res!750261) (not e!639323))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97996 (= res!750261 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35791 _keys!1208))))))

(assert (=> start!97996 e!639323))

(assert (=> start!97996 tp_is_empty!28191))

(declare-fun array_inv!26940 (array!73210) Bool)

(assert (=> start!97996 (array_inv!26940 _keys!1208)))

(assert (=> start!97996 true))

(assert (=> start!97996 tp!83688))

(declare-fun array_inv!26941 (array!73208) Bool)

(assert (=> start!97996 (and (array_inv!26941 _values!996) e!639317)))

(declare-fun zeroValue!944 () V!42715)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!47263 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17842 0))(
  ( (tuple2!17843 (_1!8931 (_ BitVec 64)) (_2!8931 V!42715)) )
))
(declare-datatypes ((List!24677 0))(
  ( (Nil!24674) (Cons!24673 (h!25882 tuple2!17842) (t!35337 List!24677)) )
))
(declare-datatypes ((ListLongMap!15823 0))(
  ( (ListLongMap!15824 (toList!7927 List!24677)) )
))
(declare-fun call!47266 () ListLongMap!15823)

(declare-fun lt!498868 () array!73208)

(declare-fun minValue!944 () V!42715)

(declare-fun getCurrentListMapNoExtraKeys!4387 (array!73210 array!73208 (_ BitVec 32) (_ BitVec 32) V!42715 V!42715 (_ BitVec 32) Int) ListLongMap!15823)

(assert (=> bm!47263 (= call!47266 (getCurrentListMapNoExtraKeys!4387 lt!498873 lt!498868 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44104 () Bool)

(declare-fun tp!83687 () Bool)

(declare-fun e!639318 () Bool)

(assert (=> mapNonEmpty!44104 (= mapRes!44104 (and tp!83687 e!639318))))

(declare-fun mapValue!44104 () ValueCell!13386)

(declare-fun mapKey!44104 () (_ BitVec 32))

(declare-fun mapRest!44104 () (Array (_ BitVec 32) ValueCell!13386))

(assert (=> mapNonEmpty!44104 (= (arr!35253 _values!996) (store mapRest!44104 mapKey!44104 mapValue!44104))))

(declare-fun b!1122887 () Bool)

(declare-fun res!750266 () Bool)

(assert (=> b!1122887 (=> (not res!750266) (not e!639323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1122887 (= res!750266 (validMask!0 mask!1564))))

(declare-fun b!1122888 () Bool)

(declare-fun res!750271 () Bool)

(assert (=> b!1122888 (=> (not res!750271) (not e!639323))))

(assert (=> b!1122888 (= res!750271 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24673))))

(declare-fun b!1122889 () Bool)

(declare-fun res!750267 () Bool)

(assert (=> b!1122889 (=> (not res!750267) (not e!639323))))

(assert (=> b!1122889 (= res!750267 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35791 _keys!1208))))))

(declare-fun b!1122890 () Bool)

(assert (=> b!1122890 (= e!639318 tp_is_empty!28191)))

(declare-fun b!1122891 () Bool)

(declare-fun e!639321 () Bool)

(declare-fun e!639315 () Bool)

(assert (=> b!1122891 (= e!639321 e!639315)))

(declare-fun res!750263 () Bool)

(assert (=> b!1122891 (=> res!750263 e!639315)))

(assert (=> b!1122891 (= res!750263 (not (= from!1455 i!673)))))

(declare-fun lt!498871 () ListLongMap!15823)

(assert (=> b!1122891 (= lt!498871 (getCurrentListMapNoExtraKeys!4387 lt!498873 lt!498868 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2482 (Int (_ BitVec 64)) V!42715)

(assert (=> b!1122891 (= lt!498868 (array!73209 (store (arr!35253 _values!996) i!673 (ValueCellFull!13386 (dynLambda!2482 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35790 _values!996)))))

(declare-fun lt!498867 () ListLongMap!15823)

(assert (=> b!1122891 (= lt!498867 (getCurrentListMapNoExtraKeys!4387 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1122892 () Bool)

(declare-fun res!750268 () Bool)

(assert (=> b!1122892 (=> (not res!750268) (not e!639323))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73210 (_ BitVec 32)) Bool)

(assert (=> b!1122892 (= res!750268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1122893 () Bool)

(declare-fun e!639319 () Bool)

(assert (=> b!1122893 (= e!639315 e!639319)))

(declare-fun res!750270 () Bool)

(assert (=> b!1122893 (=> res!750270 e!639319)))

(assert (=> b!1122893 (= res!750270 (not (= (select (arr!35254 _keys!1208) from!1455) k0!934)))))

(declare-fun e!639320 () Bool)

(assert (=> b!1122893 e!639320))

(declare-fun c!109442 () Bool)

(assert (=> b!1122893 (= c!109442 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36761 0))(
  ( (Unit!36762) )
))
(declare-fun lt!498872 () Unit!36761)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!340 (array!73210 array!73208 (_ BitVec 32) (_ BitVec 32) V!42715 V!42715 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36761)

(assert (=> b!1122893 (= lt!498872 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!340 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122894 () Bool)

(declare-fun res!750269 () Bool)

(assert (=> b!1122894 (=> (not res!750269) (not e!639323))))

(assert (=> b!1122894 (= res!750269 (and (= (size!35790 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35791 _keys!1208) (size!35790 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!44104 () Bool)

(assert (=> mapIsEmpty!44104 mapRes!44104))

(declare-fun b!1122895 () Bool)

(assert (=> b!1122895 (= e!639319 true)))

(declare-fun lt!498870 () Bool)

(declare-fun contains!6444 (ListLongMap!15823 (_ BitVec 64)) Bool)

(assert (=> b!1122895 (= lt!498870 (contains!6444 (getCurrentListMapNoExtraKeys!4387 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1122896 () Bool)

(declare-fun call!47267 () ListLongMap!15823)

(assert (=> b!1122896 (= e!639320 (= call!47266 call!47267))))

(declare-fun bm!47264 () Bool)

(assert (=> bm!47264 (= call!47267 (getCurrentListMapNoExtraKeys!4387 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122897 () Bool)

(declare-fun -!1088 (ListLongMap!15823 (_ BitVec 64)) ListLongMap!15823)

(assert (=> b!1122897 (= e!639320 (= call!47266 (-!1088 call!47267 k0!934)))))

(declare-fun b!1122898 () Bool)

(declare-fun res!750273 () Bool)

(assert (=> b!1122898 (=> (not res!750273) (not e!639323))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1122898 (= res!750273 (validKeyInArray!0 k0!934))))

(declare-fun b!1122899 () Bool)

(assert (=> b!1122899 (= e!639322 (not e!639321))))

(declare-fun res!750264 () Bool)

(assert (=> b!1122899 (=> res!750264 e!639321)))

(assert (=> b!1122899 (= res!750264 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73210 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1122899 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!498869 () Unit!36761)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73210 (_ BitVec 64) (_ BitVec 32)) Unit!36761)

(assert (=> b!1122899 (= lt!498869 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1122900 () Bool)

(assert (=> b!1122900 (= e!639323 e!639322)))

(declare-fun res!750265 () Bool)

(assert (=> b!1122900 (=> (not res!750265) (not e!639322))))

(assert (=> b!1122900 (= res!750265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498873 mask!1564))))

(assert (=> b!1122900 (= lt!498873 (array!73211 (store (arr!35254 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35791 _keys!1208)))))

(assert (= (and start!97996 res!750261) b!1122887))

(assert (= (and b!1122887 res!750266) b!1122894))

(assert (= (and b!1122894 res!750269) b!1122892))

(assert (= (and b!1122892 res!750268) b!1122888))

(assert (= (and b!1122888 res!750271) b!1122889))

(assert (= (and b!1122889 res!750267) b!1122898))

(assert (= (and b!1122898 res!750273) b!1122884))

(assert (= (and b!1122884 res!750262) b!1122900))

(assert (= (and b!1122900 res!750265) b!1122886))

(assert (= (and b!1122886 res!750272) b!1122899))

(assert (= (and b!1122899 (not res!750264)) b!1122891))

(assert (= (and b!1122891 (not res!750263)) b!1122893))

(assert (= (and b!1122893 c!109442) b!1122897))

(assert (= (and b!1122893 (not c!109442)) b!1122896))

(assert (= (or b!1122897 b!1122896) bm!47263))

(assert (= (or b!1122897 b!1122896) bm!47264))

(assert (= (and b!1122893 (not res!750270)) b!1122895))

(assert (= (and b!1122883 condMapEmpty!44104) mapIsEmpty!44104))

(assert (= (and b!1122883 (not condMapEmpty!44104)) mapNonEmpty!44104))

(get-info :version)

(assert (= (and mapNonEmpty!44104 ((_ is ValueCellFull!13386) mapValue!44104)) b!1122890))

(assert (= (and b!1122883 ((_ is ValueCellFull!13386) mapDefault!44104)) b!1122885))

(assert (= start!97996 b!1122883))

(declare-fun b_lambda!18665 () Bool)

(assert (=> (not b_lambda!18665) (not b!1122891)))

(declare-fun t!35335 () Bool)

(declare-fun tb!8481 () Bool)

(assert (=> (and start!97996 (= defaultEntry!1004 defaultEntry!1004) t!35335) tb!8481))

(declare-fun result!17515 () Bool)

(assert (=> tb!8481 (= result!17515 tp_is_empty!28191)))

(assert (=> b!1122891 t!35335))

(declare-fun b_and!38129 () Bool)

(assert (= b_and!38127 (and (=> t!35335 result!17515) b_and!38129)))

(declare-fun m!1037563 () Bool)

(assert (=> start!97996 m!1037563))

(declare-fun m!1037565 () Bool)

(assert (=> start!97996 m!1037565))

(declare-fun m!1037567 () Bool)

(assert (=> b!1122884 m!1037567))

(declare-fun m!1037569 () Bool)

(assert (=> b!1122895 m!1037569))

(assert (=> b!1122895 m!1037569))

(declare-fun m!1037571 () Bool)

(assert (=> b!1122895 m!1037571))

(declare-fun m!1037573 () Bool)

(assert (=> bm!47263 m!1037573))

(assert (=> bm!47264 m!1037569))

(declare-fun m!1037575 () Bool)

(assert (=> b!1122892 m!1037575))

(declare-fun m!1037577 () Bool)

(assert (=> b!1122899 m!1037577))

(declare-fun m!1037579 () Bool)

(assert (=> b!1122899 m!1037579))

(declare-fun m!1037581 () Bool)

(assert (=> b!1122891 m!1037581))

(declare-fun m!1037583 () Bool)

(assert (=> b!1122891 m!1037583))

(declare-fun m!1037585 () Bool)

(assert (=> b!1122891 m!1037585))

(declare-fun m!1037587 () Bool)

(assert (=> b!1122891 m!1037587))

(declare-fun m!1037589 () Bool)

(assert (=> b!1122893 m!1037589))

(declare-fun m!1037591 () Bool)

(assert (=> b!1122893 m!1037591))

(declare-fun m!1037593 () Bool)

(assert (=> b!1122886 m!1037593))

(declare-fun m!1037595 () Bool)

(assert (=> b!1122897 m!1037595))

(declare-fun m!1037597 () Bool)

(assert (=> b!1122888 m!1037597))

(declare-fun m!1037599 () Bool)

(assert (=> mapNonEmpty!44104 m!1037599))

(declare-fun m!1037601 () Bool)

(assert (=> b!1122887 m!1037601))

(declare-fun m!1037603 () Bool)

(assert (=> b!1122900 m!1037603))

(declare-fun m!1037605 () Bool)

(assert (=> b!1122900 m!1037605))

(declare-fun m!1037607 () Bool)

(assert (=> b!1122898 m!1037607))

(check-sat b_and!38129 (not b!1122892) (not b!1122900) (not mapNonEmpty!44104) (not b!1122888) (not b!1122898) (not b_lambda!18665) (not b!1122887) (not b_next!23661) (not b!1122899) tp_is_empty!28191 (not b!1122891) (not b!1122886) (not b!1122893) (not b!1122895) (not b!1122897) (not bm!47263) (not start!97996) (not bm!47264))
(check-sat b_and!38129 (not b_next!23661))
