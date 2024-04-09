; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98644 () Bool)

(assert start!98644)

(declare-fun b_free!24213 () Bool)

(declare-fun b_next!24213 () Bool)

(assert (=> start!98644 (= b_free!24213 (not b_next!24213))))

(declare-fun tp!85350 () Bool)

(declare-fun b_and!39289 () Bool)

(assert (=> start!98644 (= tp!85350 b_and!39289)))

(declare-fun b!1144746 () Bool)

(declare-fun res!762504 () Bool)

(declare-fun e!651233 () Bool)

(assert (=> b!1144746 (=> (not res!762504) (not e!651233))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1144746 (= res!762504 (validMask!0 mask!1564))))

(declare-fun b!1144747 () Bool)

(declare-fun c!112728 () Bool)

(declare-fun lt!510861 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1144747 (= c!112728 (and (not lt!510861) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!37507 0))(
  ( (Unit!37508) )
))
(declare-fun e!651226 () Unit!37507)

(declare-fun e!651219 () Unit!37507)

(assert (=> b!1144747 (= e!651226 e!651219)))

(declare-datatypes ((V!43451 0))(
  ( (V!43452 (val!14428 Int)) )
))
(declare-fun zeroValue!944 () V!43451)

(declare-datatypes ((array!74294 0))(
  ( (array!74295 (arr!35794 (Array (_ BitVec 32) (_ BitVec 64))) (size!36331 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74294)

(declare-datatypes ((tuple2!18354 0))(
  ( (tuple2!18355 (_1!9187 (_ BitVec 64)) (_2!9187 V!43451)) )
))
(declare-datatypes ((List!25154 0))(
  ( (Nil!25151) (Cons!25150 (h!26359 tuple2!18354) (t!36366 List!25154)) )
))
(declare-datatypes ((ListLongMap!16335 0))(
  ( (ListLongMap!16336 (toList!8183 List!25154)) )
))
(declare-fun call!52101 () ListLongMap!16335)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!52094 () Bool)

(declare-datatypes ((ValueCell!13662 0))(
  ( (ValueCellFull!13662 (v!17066 V!43451)) (EmptyCell!13662) )
))
(declare-datatypes ((array!74296 0))(
  ( (array!74297 (arr!35795 (Array (_ BitVec 32) ValueCell!13662)) (size!36332 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74296)

(declare-fun minValue!944 () V!43451)

(declare-fun getCurrentListMapNoExtraKeys!4625 (array!74294 array!74296 (_ BitVec 32) (_ BitVec 32) V!43451 V!43451 (_ BitVec 32) Int) ListLongMap!16335)

(assert (=> bm!52094 (= call!52101 (getCurrentListMapNoExtraKeys!4625 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!52098 () Unit!37507)

(declare-fun lt!510849 () ListLongMap!16335)

(declare-fun lt!510850 () ListLongMap!16335)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun bm!52095 () Bool)

(declare-fun c!112727 () Bool)

(declare-fun addStillContains!824 (ListLongMap!16335 (_ BitVec 64) V!43451 (_ BitVec 64)) Unit!37507)

(assert (=> bm!52095 (= call!52098 (addStillContains!824 (ite c!112727 lt!510849 lt!510850) (ite c!112727 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112728 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112727 minValue!944 (ite c!112728 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1144748 () Bool)

(declare-fun e!651225 () Bool)

(declare-fun e!651222 () Bool)

(assert (=> b!1144748 (= e!651225 e!651222)))

(declare-fun res!762517 () Bool)

(assert (=> b!1144748 (=> res!762517 e!651222)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1144748 (= res!762517 (not (= from!1455 i!673)))))

(declare-fun lt!510855 () array!74296)

(declare-fun lt!510862 () ListLongMap!16335)

(declare-fun lt!510860 () array!74294)

(assert (=> b!1144748 (= lt!510862 (getCurrentListMapNoExtraKeys!4625 lt!510860 lt!510855 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!510859 () V!43451)

(assert (=> b!1144748 (= lt!510855 (array!74297 (store (arr!35795 _values!996) i!673 (ValueCellFull!13662 lt!510859)) (size!36332 _values!996)))))

(declare-fun dynLambda!2670 (Int (_ BitVec 64)) V!43451)

(assert (=> b!1144748 (= lt!510859 (dynLambda!2670 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!510863 () ListLongMap!16335)

(assert (=> b!1144748 (= lt!510863 (getCurrentListMapNoExtraKeys!4625 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun e!651224 () Bool)

(declare-fun b!1144749 () Bool)

(declare-fun arrayContainsKey!0 (array!74294 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1144749 (= e!651224 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1144750 () Bool)

(declare-fun e!651229 () Unit!37507)

(assert (=> b!1144750 (= e!651219 e!651229)))

(declare-fun c!112724 () Bool)

(assert (=> b!1144750 (= c!112724 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!510861))))

(declare-fun b!1144751 () Bool)

(declare-fun res!762513 () Bool)

(assert (=> b!1144751 (=> (not res!762513) (not e!651233))))

(assert (=> b!1144751 (= res!762513 (= (select (arr!35794 _keys!1208) i!673) k0!934))))

(declare-fun b!1144753 () Bool)

(declare-fun Unit!37509 () Unit!37507)

(assert (=> b!1144753 (= e!651229 Unit!37509)))

(declare-fun mapIsEmpty!44939 () Bool)

(declare-fun mapRes!44939 () Bool)

(assert (=> mapIsEmpty!44939 mapRes!44939))

(declare-fun b!1144754 () Bool)

(declare-fun res!762507 () Bool)

(assert (=> b!1144754 (=> (not res!762507) (not e!651233))))

(assert (=> b!1144754 (= res!762507 (and (= (size!36332 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36331 _keys!1208) (size!36332 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1144755 () Bool)

(declare-fun contains!6685 (ListLongMap!16335 (_ BitVec 64)) Bool)

(declare-fun +!3527 (ListLongMap!16335 tuple2!18354) ListLongMap!16335)

(assert (=> b!1144755 (contains!6685 (+!3527 lt!510849 (tuple2!18355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!510865 () Unit!37507)

(assert (=> b!1144755 (= lt!510865 call!52098)))

(declare-fun call!52097 () Bool)

(assert (=> b!1144755 call!52097))

(declare-fun call!52099 () ListLongMap!16335)

(assert (=> b!1144755 (= lt!510849 call!52099)))

(declare-fun lt!510848 () Unit!37507)

(assert (=> b!1144755 (= lt!510848 (addStillContains!824 lt!510850 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1144755 (= e!651226 lt!510865)))

(declare-fun b!1144756 () Bool)

(declare-fun e!651232 () Bool)

(assert (=> b!1144756 (= e!651232 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1144757 () Bool)

(declare-fun e!651228 () Bool)

(declare-fun tp_is_empty!28743 () Bool)

(assert (=> b!1144757 (= e!651228 tp_is_empty!28743)))

(declare-fun bm!52096 () Bool)

(declare-fun call!52103 () ListLongMap!16335)

(assert (=> bm!52096 (= call!52103 (getCurrentListMapNoExtraKeys!4625 lt!510860 lt!510855 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144758 () Bool)

(declare-fun e!651234 () Bool)

(declare-fun e!651227 () Bool)

(assert (=> b!1144758 (= e!651234 (and e!651227 mapRes!44939))))

(declare-fun condMapEmpty!44939 () Bool)

(declare-fun mapDefault!44939 () ValueCell!13662)

(assert (=> b!1144758 (= condMapEmpty!44939 (= (arr!35795 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13662)) mapDefault!44939)))))

(declare-fun b!1144759 () Bool)

(declare-fun lt!510857 () Unit!37507)

(assert (=> b!1144759 (= e!651219 lt!510857)))

(declare-fun call!52102 () Unit!37507)

(assert (=> b!1144759 (= lt!510857 call!52102)))

(declare-fun call!52104 () Bool)

(assert (=> b!1144759 call!52104))

(declare-fun b!1144760 () Bool)

(declare-fun e!651218 () Bool)

(assert (=> b!1144760 (= e!651222 e!651218)))

(declare-fun res!762505 () Bool)

(assert (=> b!1144760 (=> res!762505 e!651218)))

(assert (=> b!1144760 (= res!762505 (not (= (select (arr!35794 _keys!1208) from!1455) k0!934)))))

(declare-fun e!651220 () Bool)

(assert (=> b!1144760 e!651220))

(declare-fun c!112725 () Bool)

(assert (=> b!1144760 (= c!112725 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!510866 () Unit!37507)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!529 (array!74294 array!74296 (_ BitVec 32) (_ BitVec 32) V!43451 V!43451 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37507)

(assert (=> b!1144760 (= lt!510866 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!529 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!52097 () Bool)

(assert (=> bm!52097 (= call!52099 (+!3527 lt!510850 (ite (or c!112727 c!112728) (tuple2!18355 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1144761 () Bool)

(assert (=> b!1144761 (= e!651232 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!510861) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!52098 () Bool)

(declare-fun call!52100 () ListLongMap!16335)

(assert (=> bm!52098 (= call!52100 call!52099)))

(declare-fun b!1144762 () Bool)

(assert (=> b!1144762 (= e!651220 (= call!52103 call!52101))))

(declare-fun b!1144763 () Bool)

(declare-fun e!651221 () Bool)

(assert (=> b!1144763 (= e!651221 (not e!651225))))

(declare-fun res!762510 () Bool)

(assert (=> b!1144763 (=> res!762510 e!651225)))

(assert (=> b!1144763 (= res!762510 (bvsgt from!1455 i!673))))

(assert (=> b!1144763 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!510851 () Unit!37507)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74294 (_ BitVec 64) (_ BitVec 32)) Unit!37507)

(assert (=> b!1144763 (= lt!510851 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1144764 () Bool)

(declare-fun res!762515 () Bool)

(assert (=> b!1144764 (=> (not res!762515) (not e!651233))))

(declare-datatypes ((List!25155 0))(
  ( (Nil!25152) (Cons!25151 (h!26360 (_ BitVec 64)) (t!36367 List!25155)) )
))
(declare-fun arrayNoDuplicates!0 (array!74294 (_ BitVec 32) List!25155) Bool)

(assert (=> b!1144764 (= res!762515 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25152))))

(declare-fun e!651223 () Bool)

(declare-fun b!1144765 () Bool)

(declare-fun -!1276 (ListLongMap!16335 (_ BitVec 64)) ListLongMap!16335)

(assert (=> b!1144765 (= e!651223 (= (-!1276 lt!510863 k0!934) lt!510850))))

(declare-fun b!1144766 () Bool)

(declare-fun res!762518 () Bool)

(assert (=> b!1144766 (=> (not res!762518) (not e!651233))))

(assert (=> b!1144766 (= res!762518 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36331 _keys!1208))))))

(declare-fun bm!52099 () Bool)

(assert (=> bm!52099 (= call!52097 (contains!6685 (ite c!112727 lt!510849 call!52100) k0!934))))

(declare-fun b!1144767 () Bool)

(assert (=> b!1144767 (= e!651233 e!651221)))

(declare-fun res!762514 () Bool)

(assert (=> b!1144767 (=> (not res!762514) (not e!651221))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74294 (_ BitVec 32)) Bool)

(assert (=> b!1144767 (= res!762514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!510860 mask!1564))))

(assert (=> b!1144767 (= lt!510860 (array!74295 (store (arr!35794 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36331 _keys!1208)))))

(declare-fun bm!52100 () Bool)

(assert (=> bm!52100 (= call!52102 call!52098)))

(declare-fun bm!52101 () Bool)

(assert (=> bm!52101 (= call!52104 call!52097)))

(declare-fun b!1144768 () Bool)

(assert (=> b!1144768 (= e!651227 tp_is_empty!28743)))

(declare-fun b!1144769 () Bool)

(declare-fun e!651230 () Unit!37507)

(declare-fun Unit!37510 () Unit!37507)

(assert (=> b!1144769 (= e!651230 Unit!37510)))

(assert (=> b!1144769 (= lt!510861 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1144769 (= c!112727 (and (not lt!510861) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!510867 () Unit!37507)

(assert (=> b!1144769 (= lt!510867 e!651226)))

(declare-fun lt!510864 () Unit!37507)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!419 (array!74294 array!74296 (_ BitVec 32) (_ BitVec 32) V!43451 V!43451 (_ BitVec 64) (_ BitVec 32) Int) Unit!37507)

(assert (=> b!1144769 (= lt!510864 (lemmaListMapContainsThenArrayContainsFrom!419 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112726 () Bool)

(assert (=> b!1144769 (= c!112726 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!762516 () Bool)

(assert (=> b!1144769 (= res!762516 e!651232)))

(assert (=> b!1144769 (=> (not res!762516) (not e!651224))))

(assert (=> b!1144769 e!651224))

(declare-fun lt!510847 () Unit!37507)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74294 (_ BitVec 32) (_ BitVec 32)) Unit!37507)

(assert (=> b!1144769 (= lt!510847 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1144769 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25152)))

(declare-fun lt!510858 () Unit!37507)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74294 (_ BitVec 64) (_ BitVec 32) List!25155) Unit!37507)

(assert (=> b!1144769 (= lt!510858 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25152))))

(assert (=> b!1144769 false))

(declare-fun b!1144770 () Bool)

(assert (=> b!1144770 (= e!651220 (= call!52103 (-!1276 call!52101 k0!934)))))

(declare-fun mapNonEmpty!44939 () Bool)

(declare-fun tp!85351 () Bool)

(assert (=> mapNonEmpty!44939 (= mapRes!44939 (and tp!85351 e!651228))))

(declare-fun mapKey!44939 () (_ BitVec 32))

(declare-fun mapRest!44939 () (Array (_ BitVec 32) ValueCell!13662))

(declare-fun mapValue!44939 () ValueCell!13662)

(assert (=> mapNonEmpty!44939 (= (arr!35795 _values!996) (store mapRest!44939 mapKey!44939 mapValue!44939))))

(declare-fun b!1144771 () Bool)

(declare-fun res!762509 () Bool)

(assert (=> b!1144771 (=> (not res!762509) (not e!651221))))

(assert (=> b!1144771 (= res!762509 (arrayNoDuplicates!0 lt!510860 #b00000000000000000000000000000000 Nil!25152))))

(declare-fun res!762511 () Bool)

(assert (=> start!98644 (=> (not res!762511) (not e!651233))))

(assert (=> start!98644 (= res!762511 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36331 _keys!1208))))))

(assert (=> start!98644 e!651233))

(assert (=> start!98644 tp_is_empty!28743))

(declare-fun array_inv!27304 (array!74294) Bool)

(assert (=> start!98644 (array_inv!27304 _keys!1208)))

(assert (=> start!98644 true))

(assert (=> start!98644 tp!85350))

(declare-fun array_inv!27305 (array!74296) Bool)

(assert (=> start!98644 (and (array_inv!27305 _values!996) e!651234)))

(declare-fun b!1144752 () Bool)

(declare-fun Unit!37511 () Unit!37507)

(assert (=> b!1144752 (= e!651230 Unit!37511)))

(declare-fun b!1144772 () Bool)

(declare-fun res!762512 () Bool)

(assert (=> b!1144772 (=> (not res!762512) (not e!651233))))

(assert (=> b!1144772 (= res!762512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1144773 () Bool)

(declare-fun res!762506 () Bool)

(assert (=> b!1144773 (=> (not res!762506) (not e!651233))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1144773 (= res!762506 (validKeyInArray!0 k0!934))))

(declare-fun b!1144774 () Bool)

(assert (=> b!1144774 call!52104))

(declare-fun lt!510852 () Unit!37507)

(assert (=> b!1144774 (= lt!510852 call!52102)))

(assert (=> b!1144774 (= e!651229 lt!510852)))

(declare-fun b!1144775 () Bool)

(assert (=> b!1144775 (= e!651218 true)))

(assert (=> b!1144775 e!651223))

(declare-fun res!762508 () Bool)

(assert (=> b!1144775 (=> (not res!762508) (not e!651223))))

(declare-fun lt!510853 () V!43451)

(assert (=> b!1144775 (= res!762508 (= (-!1276 (+!3527 lt!510850 (tuple2!18355 (select (arr!35794 _keys!1208) from!1455) lt!510853)) (select (arr!35794 _keys!1208) from!1455)) lt!510850))))

(declare-fun lt!510854 () Unit!37507)

(declare-fun addThenRemoveForNewKeyIsSame!131 (ListLongMap!16335 (_ BitVec 64) V!43451) Unit!37507)

(assert (=> b!1144775 (= lt!510854 (addThenRemoveForNewKeyIsSame!131 lt!510850 (select (arr!35794 _keys!1208) from!1455) lt!510853))))

(declare-fun get!18223 (ValueCell!13662 V!43451) V!43451)

(assert (=> b!1144775 (= lt!510853 (get!18223 (select (arr!35795 _values!996) from!1455) lt!510859))))

(declare-fun lt!510856 () Unit!37507)

(assert (=> b!1144775 (= lt!510856 e!651230)))

(declare-fun c!112723 () Bool)

(assert (=> b!1144775 (= c!112723 (contains!6685 lt!510850 k0!934))))

(assert (=> b!1144775 (= lt!510850 (getCurrentListMapNoExtraKeys!4625 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!98644 res!762511) b!1144746))

(assert (= (and b!1144746 res!762504) b!1144754))

(assert (= (and b!1144754 res!762507) b!1144772))

(assert (= (and b!1144772 res!762512) b!1144764))

(assert (= (and b!1144764 res!762515) b!1144766))

(assert (= (and b!1144766 res!762518) b!1144773))

(assert (= (and b!1144773 res!762506) b!1144751))

(assert (= (and b!1144751 res!762513) b!1144767))

(assert (= (and b!1144767 res!762514) b!1144771))

(assert (= (and b!1144771 res!762509) b!1144763))

(assert (= (and b!1144763 (not res!762510)) b!1144748))

(assert (= (and b!1144748 (not res!762517)) b!1144760))

(assert (= (and b!1144760 c!112725) b!1144770))

(assert (= (and b!1144760 (not c!112725)) b!1144762))

(assert (= (or b!1144770 b!1144762) bm!52096))

(assert (= (or b!1144770 b!1144762) bm!52094))

(assert (= (and b!1144760 (not res!762505)) b!1144775))

(assert (= (and b!1144775 c!112723) b!1144769))

(assert (= (and b!1144775 (not c!112723)) b!1144752))

(assert (= (and b!1144769 c!112727) b!1144755))

(assert (= (and b!1144769 (not c!112727)) b!1144747))

(assert (= (and b!1144747 c!112728) b!1144759))

(assert (= (and b!1144747 (not c!112728)) b!1144750))

(assert (= (and b!1144750 c!112724) b!1144774))

(assert (= (and b!1144750 (not c!112724)) b!1144753))

(assert (= (or b!1144759 b!1144774) bm!52100))

(assert (= (or b!1144759 b!1144774) bm!52098))

(assert (= (or b!1144759 b!1144774) bm!52101))

(assert (= (or b!1144755 bm!52101) bm!52099))

(assert (= (or b!1144755 bm!52100) bm!52095))

(assert (= (or b!1144755 bm!52098) bm!52097))

(assert (= (and b!1144769 c!112726) b!1144756))

(assert (= (and b!1144769 (not c!112726)) b!1144761))

(assert (= (and b!1144769 res!762516) b!1144749))

(assert (= (and b!1144775 res!762508) b!1144765))

(assert (= (and b!1144758 condMapEmpty!44939) mapIsEmpty!44939))

(assert (= (and b!1144758 (not condMapEmpty!44939)) mapNonEmpty!44939))

(get-info :version)

(assert (= (and mapNonEmpty!44939 ((_ is ValueCellFull!13662) mapValue!44939)) b!1144757))

(assert (= (and b!1144758 ((_ is ValueCellFull!13662) mapDefault!44939)) b!1144768))

(assert (= start!98644 b!1144758))

(declare-fun b_lambda!19337 () Bool)

(assert (=> (not b_lambda!19337) (not b!1144748)))

(declare-fun t!36365 () Bool)

(declare-fun tb!9033 () Bool)

(assert (=> (and start!98644 (= defaultEntry!1004 defaultEntry!1004) t!36365) tb!9033))

(declare-fun result!18623 () Bool)

(assert (=> tb!9033 (= result!18623 tp_is_empty!28743)))

(assert (=> b!1144748 t!36365))

(declare-fun b_and!39291 () Bool)

(assert (= b_and!39289 (and (=> t!36365 result!18623) b_and!39291)))

(declare-fun m!1055769 () Bool)

(assert (=> b!1144746 m!1055769))

(declare-fun m!1055771 () Bool)

(assert (=> b!1144771 m!1055771))

(declare-fun m!1055773 () Bool)

(assert (=> bm!52097 m!1055773))

(declare-fun m!1055775 () Bool)

(assert (=> b!1144756 m!1055775))

(declare-fun m!1055777 () Bool)

(assert (=> b!1144764 m!1055777))

(declare-fun m!1055779 () Bool)

(assert (=> b!1144751 m!1055779))

(declare-fun m!1055781 () Bool)

(assert (=> bm!52094 m!1055781))

(declare-fun m!1055783 () Bool)

(assert (=> bm!52096 m!1055783))

(declare-fun m!1055785 () Bool)

(assert (=> b!1144765 m!1055785))

(declare-fun m!1055787 () Bool)

(assert (=> mapNonEmpty!44939 m!1055787))

(declare-fun m!1055789 () Bool)

(assert (=> b!1144773 m!1055789))

(declare-fun m!1055791 () Bool)

(assert (=> b!1144770 m!1055791))

(declare-fun m!1055793 () Bool)

(assert (=> b!1144760 m!1055793))

(declare-fun m!1055795 () Bool)

(assert (=> b!1144760 m!1055795))

(assert (=> b!1144775 m!1055781))

(declare-fun m!1055797 () Bool)

(assert (=> b!1144775 m!1055797))

(assert (=> b!1144775 m!1055793))

(declare-fun m!1055799 () Bool)

(assert (=> b!1144775 m!1055799))

(declare-fun m!1055801 () Bool)

(assert (=> b!1144775 m!1055801))

(assert (=> b!1144775 m!1055797))

(declare-fun m!1055803 () Bool)

(assert (=> b!1144775 m!1055803))

(declare-fun m!1055805 () Bool)

(assert (=> b!1144775 m!1055805))

(assert (=> b!1144775 m!1055793))

(declare-fun m!1055807 () Bool)

(assert (=> b!1144775 m!1055807))

(assert (=> b!1144775 m!1055793))

(assert (=> b!1144775 m!1055805))

(assert (=> b!1144749 m!1055775))

(declare-fun m!1055809 () Bool)

(assert (=> b!1144763 m!1055809))

(declare-fun m!1055811 () Bool)

(assert (=> b!1144763 m!1055811))

(declare-fun m!1055813 () Bool)

(assert (=> b!1144769 m!1055813))

(declare-fun m!1055815 () Bool)

(assert (=> b!1144769 m!1055815))

(declare-fun m!1055817 () Bool)

(assert (=> b!1144769 m!1055817))

(declare-fun m!1055819 () Bool)

(assert (=> b!1144769 m!1055819))

(declare-fun m!1055821 () Bool)

(assert (=> bm!52095 m!1055821))

(declare-fun m!1055823 () Bool)

(assert (=> start!98644 m!1055823))

(declare-fun m!1055825 () Bool)

(assert (=> start!98644 m!1055825))

(declare-fun m!1055827 () Bool)

(assert (=> b!1144748 m!1055827))

(declare-fun m!1055829 () Bool)

(assert (=> b!1144748 m!1055829))

(declare-fun m!1055831 () Bool)

(assert (=> b!1144748 m!1055831))

(declare-fun m!1055833 () Bool)

(assert (=> b!1144748 m!1055833))

(declare-fun m!1055835 () Bool)

(assert (=> b!1144755 m!1055835))

(assert (=> b!1144755 m!1055835))

(declare-fun m!1055837 () Bool)

(assert (=> b!1144755 m!1055837))

(declare-fun m!1055839 () Bool)

(assert (=> b!1144755 m!1055839))

(declare-fun m!1055841 () Bool)

(assert (=> b!1144772 m!1055841))

(declare-fun m!1055843 () Bool)

(assert (=> b!1144767 m!1055843))

(declare-fun m!1055845 () Bool)

(assert (=> b!1144767 m!1055845))

(declare-fun m!1055847 () Bool)

(assert (=> bm!52099 m!1055847))

(check-sat (not bm!52097) (not b!1144748) (not b!1144765) (not start!98644) (not b!1144763) (not bm!52099) (not b!1144770) (not b!1144746) (not b!1144749) (not b!1144771) (not mapNonEmpty!44939) (not b_next!24213) (not bm!52096) (not b!1144764) (not b!1144755) tp_is_empty!28743 (not bm!52094) (not b!1144769) (not b!1144775) (not b!1144773) (not b!1144760) b_and!39291 (not b_lambda!19337) (not b!1144772) (not b!1144756) (not b!1144767) (not bm!52095))
(check-sat b_and!39291 (not b_next!24213))
