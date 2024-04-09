; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98062 () Bool)

(assert start!98062)

(declare-fun b_free!23727 () Bool)

(declare-fun b_next!23727 () Bool)

(assert (=> start!98062 (= b_free!23727 (not b_next!23727))))

(declare-fun tp!83885 () Bool)

(declare-fun b_and!38259 () Bool)

(assert (=> start!98062 (= tp!83885 b_and!38259)))

(declare-fun res!751689 () Bool)

(declare-fun e!640371 () Bool)

(assert (=> start!98062 (=> (not res!751689) (not e!640371))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73338 0))(
  ( (array!73339 (arr!35318 (Array (_ BitVec 32) (_ BitVec 64))) (size!35855 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73338)

(assert (=> start!98062 (= res!751689 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35855 _keys!1208))))))

(assert (=> start!98062 e!640371))

(declare-fun tp_is_empty!28257 () Bool)

(assert (=> start!98062 tp_is_empty!28257))

(declare-fun array_inv!26982 (array!73338) Bool)

(assert (=> start!98062 (array_inv!26982 _keys!1208)))

(assert (=> start!98062 true))

(assert (=> start!98062 tp!83885))

(declare-datatypes ((V!42803 0))(
  ( (V!42804 (val!14185 Int)) )
))
(declare-datatypes ((ValueCell!13419 0))(
  ( (ValueCellFull!13419 (v!16819 V!42803)) (EmptyCell!13419) )
))
(declare-datatypes ((array!73340 0))(
  ( (array!73341 (arr!35319 (Array (_ BitVec 32) ValueCell!13419)) (size!35856 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73340)

(declare-fun e!640372 () Bool)

(declare-fun array_inv!26983 (array!73340) Bool)

(assert (=> start!98062 (and (array_inv!26983 _values!996) e!640372)))

(declare-fun b!1124858 () Bool)

(declare-fun e!640373 () Bool)

(assert (=> b!1124858 (= e!640371 e!640373)))

(declare-fun res!751684 () Bool)

(assert (=> b!1124858 (=> (not res!751684) (not e!640373))))

(declare-fun lt!499612 () array!73338)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73338 (_ BitVec 32)) Bool)

(assert (=> b!1124858 (= res!751684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499612 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1124858 (= lt!499612 (array!73339 (store (arr!35318 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35855 _keys!1208)))))

(declare-fun e!640367 () Bool)

(declare-fun b!1124859 () Bool)

(declare-datatypes ((tuple2!17904 0))(
  ( (tuple2!17905 (_1!8962 (_ BitVec 64)) (_2!8962 V!42803)) )
))
(declare-datatypes ((List!24734 0))(
  ( (Nil!24731) (Cons!24730 (h!25939 tuple2!17904) (t!35460 List!24734)) )
))
(declare-datatypes ((ListLongMap!15885 0))(
  ( (ListLongMap!15886 (toList!7958 List!24734)) )
))
(declare-fun call!47465 () ListLongMap!15885)

(declare-fun call!47464 () ListLongMap!15885)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1107 (ListLongMap!15885 (_ BitVec 64)) ListLongMap!15885)

(assert (=> b!1124859 (= e!640367 (= call!47464 (-!1107 call!47465 k0!934)))))

(declare-fun b!1124860 () Bool)

(declare-fun res!751685 () Bool)

(assert (=> b!1124860 (=> (not res!751685) (not e!640371))))

(assert (=> b!1124860 (= res!751685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1124861 () Bool)

(declare-fun e!640365 () Bool)

(assert (=> b!1124861 (= e!640373 (not e!640365))))

(declare-fun res!751678 () Bool)

(assert (=> b!1124861 (=> res!751678 e!640365)))

(assert (=> b!1124861 (= res!751678 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1124861 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36813 0))(
  ( (Unit!36814) )
))
(declare-fun lt!499610 () Unit!36813)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73338 (_ BitVec 64) (_ BitVec 32)) Unit!36813)

(assert (=> b!1124861 (= lt!499610 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1124862 () Bool)

(declare-fun e!640368 () Bool)

(declare-fun e!640366 () Bool)

(assert (=> b!1124862 (= e!640368 e!640366)))

(declare-fun res!751675 () Bool)

(assert (=> b!1124862 (=> res!751675 e!640366)))

(declare-fun lt!499613 () ListLongMap!15885)

(declare-fun contains!6469 (ListLongMap!15885 (_ BitVec 64)) Bool)

(assert (=> b!1124862 (= res!751675 (not (contains!6469 lt!499613 k0!934)))))

(declare-fun zeroValue!944 () V!42803)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun minValue!944 () V!42803)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4417 (array!73338 array!73340 (_ BitVec 32) (_ BitVec 32) V!42803 V!42803 (_ BitVec 32) Int) ListLongMap!15885)

(assert (=> b!1124862 (= lt!499613 (getCurrentListMapNoExtraKeys!4417 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124863 () Bool)

(declare-fun e!640370 () Bool)

(assert (=> b!1124863 (= e!640370 tp_is_empty!28257)))

(declare-fun mapIsEmpty!44203 () Bool)

(declare-fun mapRes!44203 () Bool)

(assert (=> mapIsEmpty!44203 mapRes!44203))

(declare-fun b!1124864 () Bool)

(declare-fun res!751682 () Bool)

(assert (=> b!1124864 (=> (not res!751682) (not e!640371))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1124864 (= res!751682 (validMask!0 mask!1564))))

(declare-fun b!1124865 () Bool)

(assert (=> b!1124865 (= e!640372 (and e!640370 mapRes!44203))))

(declare-fun condMapEmpty!44203 () Bool)

(declare-fun mapDefault!44203 () ValueCell!13419)

(assert (=> b!1124865 (= condMapEmpty!44203 (= (arr!35319 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13419)) mapDefault!44203)))))

(declare-fun b!1124866 () Bool)

(declare-fun e!640364 () Bool)

(assert (=> b!1124866 (= e!640364 tp_is_empty!28257)))

(declare-fun b!1124867 () Bool)

(declare-fun e!640363 () Bool)

(assert (=> b!1124867 (= e!640365 e!640363)))

(declare-fun res!751676 () Bool)

(assert (=> b!1124867 (=> res!751676 e!640363)))

(assert (=> b!1124867 (= res!751676 (not (= from!1455 i!673)))))

(declare-fun lt!499614 () array!73340)

(declare-fun lt!499616 () ListLongMap!15885)

(assert (=> b!1124867 (= lt!499616 (getCurrentListMapNoExtraKeys!4417 lt!499612 lt!499614 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2503 (Int (_ BitVec 64)) V!42803)

(assert (=> b!1124867 (= lt!499614 (array!73341 (store (arr!35319 _values!996) i!673 (ValueCellFull!13419 (dynLambda!2503 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35856 _values!996)))))

(declare-fun lt!499615 () ListLongMap!15885)

(assert (=> b!1124867 (= lt!499615 (getCurrentListMapNoExtraKeys!4417 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1124868 () Bool)

(declare-fun res!751680 () Bool)

(assert (=> b!1124868 (=> (not res!751680) (not e!640371))))

(declare-datatypes ((List!24735 0))(
  ( (Nil!24732) (Cons!24731 (h!25940 (_ BitVec 64)) (t!35461 List!24735)) )
))
(declare-fun arrayNoDuplicates!0 (array!73338 (_ BitVec 32) List!24735) Bool)

(assert (=> b!1124868 (= res!751680 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24732))))

(declare-fun mapNonEmpty!44203 () Bool)

(declare-fun tp!83886 () Bool)

(assert (=> mapNonEmpty!44203 (= mapRes!44203 (and tp!83886 e!640364))))

(declare-fun mapValue!44203 () ValueCell!13419)

(declare-fun mapKey!44203 () (_ BitVec 32))

(declare-fun mapRest!44203 () (Array (_ BitVec 32) ValueCell!13419))

(assert (=> mapNonEmpty!44203 (= (arr!35319 _values!996) (store mapRest!44203 mapKey!44203 mapValue!44203))))

(declare-fun b!1124869 () Bool)

(assert (=> b!1124869 (= e!640363 e!640368)))

(declare-fun res!751677 () Bool)

(assert (=> b!1124869 (=> res!751677 e!640368)))

(assert (=> b!1124869 (= res!751677 (not (= (select (arr!35318 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1124869 e!640367))

(declare-fun c!109541 () Bool)

(assert (=> b!1124869 (= c!109541 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!499611 () Unit!36813)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!360 (array!73338 array!73340 (_ BitVec 32) (_ BitVec 32) V!42803 V!42803 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36813)

(assert (=> b!1124869 (= lt!499611 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!360 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!47461 () Bool)

(assert (=> bm!47461 (= call!47464 (getCurrentListMapNoExtraKeys!4417 lt!499612 lt!499614 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124870 () Bool)

(declare-fun res!751683 () Bool)

(assert (=> b!1124870 (=> (not res!751683) (not e!640371))))

(assert (=> b!1124870 (= res!751683 (and (= (size!35856 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35855 _keys!1208) (size!35856 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1124871 () Bool)

(declare-fun res!751679 () Bool)

(assert (=> b!1124871 (=> (not res!751679) (not e!640371))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1124871 (= res!751679 (validKeyInArray!0 k0!934))))

(declare-fun b!1124872 () Bool)

(assert (=> b!1124872 (= e!640367 (= call!47464 call!47465))))

(declare-fun b!1124873 () Bool)

(declare-fun res!751688 () Bool)

(assert (=> b!1124873 (=> res!751688 e!640366)))

(assert (=> b!1124873 (= res!751688 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1124874 () Bool)

(declare-fun res!751681 () Bool)

(assert (=> b!1124874 (=> (not res!751681) (not e!640371))))

(assert (=> b!1124874 (= res!751681 (= (select (arr!35318 _keys!1208) i!673) k0!934))))

(declare-fun b!1124875 () Bool)

(assert (=> b!1124875 (= e!640366 true)))

(declare-fun +!3383 (ListLongMap!15885 tuple2!17904) ListLongMap!15885)

(assert (=> b!1124875 (contains!6469 (+!3383 lt!499613 (tuple2!17905 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k0!934)))

(declare-fun lt!499617 () Unit!36813)

(declare-fun addStillContains!682 (ListLongMap!15885 (_ BitVec 64) V!42803 (_ BitVec 64)) Unit!36813)

(assert (=> b!1124875 (= lt!499617 (addStillContains!682 lt!499613 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun b!1124876 () Bool)

(declare-fun res!751687 () Bool)

(assert (=> b!1124876 (=> (not res!751687) (not e!640373))))

(assert (=> b!1124876 (= res!751687 (arrayNoDuplicates!0 lt!499612 #b00000000000000000000000000000000 Nil!24732))))

(declare-fun bm!47462 () Bool)

(assert (=> bm!47462 (= call!47465 (getCurrentListMapNoExtraKeys!4417 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124877 () Bool)

(declare-fun res!751686 () Bool)

(assert (=> b!1124877 (=> (not res!751686) (not e!640371))))

(assert (=> b!1124877 (= res!751686 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35855 _keys!1208))))))

(assert (= (and start!98062 res!751689) b!1124864))

(assert (= (and b!1124864 res!751682) b!1124870))

(assert (= (and b!1124870 res!751683) b!1124860))

(assert (= (and b!1124860 res!751685) b!1124868))

(assert (= (and b!1124868 res!751680) b!1124877))

(assert (= (and b!1124877 res!751686) b!1124871))

(assert (= (and b!1124871 res!751679) b!1124874))

(assert (= (and b!1124874 res!751681) b!1124858))

(assert (= (and b!1124858 res!751684) b!1124876))

(assert (= (and b!1124876 res!751687) b!1124861))

(assert (= (and b!1124861 (not res!751678)) b!1124867))

(assert (= (and b!1124867 (not res!751676)) b!1124869))

(assert (= (and b!1124869 c!109541) b!1124859))

(assert (= (and b!1124869 (not c!109541)) b!1124872))

(assert (= (or b!1124859 b!1124872) bm!47462))

(assert (= (or b!1124859 b!1124872) bm!47461))

(assert (= (and b!1124869 (not res!751677)) b!1124862))

(assert (= (and b!1124862 (not res!751675)) b!1124873))

(assert (= (and b!1124873 (not res!751688)) b!1124875))

(assert (= (and b!1124865 condMapEmpty!44203) mapIsEmpty!44203))

(assert (= (and b!1124865 (not condMapEmpty!44203)) mapNonEmpty!44203))

(get-info :version)

(assert (= (and mapNonEmpty!44203 ((_ is ValueCellFull!13419) mapValue!44203)) b!1124866))

(assert (= (and b!1124865 ((_ is ValueCellFull!13419) mapDefault!44203)) b!1124863))

(assert (= start!98062 b!1124865))

(declare-fun b_lambda!18731 () Bool)

(assert (=> (not b_lambda!18731) (not b!1124867)))

(declare-fun t!35459 () Bool)

(declare-fun tb!8547 () Bool)

(assert (=> (and start!98062 (= defaultEntry!1004 defaultEntry!1004) t!35459) tb!8547))

(declare-fun result!17647 () Bool)

(assert (=> tb!8547 (= result!17647 tp_is_empty!28257)))

(assert (=> b!1124867 t!35459))

(declare-fun b_and!38261 () Bool)

(assert (= b_and!38259 (and (=> t!35459 result!17647) b_and!38261)))

(declare-fun m!1039195 () Bool)

(assert (=> b!1124861 m!1039195))

(declare-fun m!1039197 () Bool)

(assert (=> b!1124861 m!1039197))

(declare-fun m!1039199 () Bool)

(assert (=> bm!47461 m!1039199))

(declare-fun m!1039201 () Bool)

(assert (=> mapNonEmpty!44203 m!1039201))

(declare-fun m!1039203 () Bool)

(assert (=> b!1124874 m!1039203))

(declare-fun m!1039205 () Bool)

(assert (=> b!1124859 m!1039205))

(declare-fun m!1039207 () Bool)

(assert (=> start!98062 m!1039207))

(declare-fun m!1039209 () Bool)

(assert (=> start!98062 m!1039209))

(declare-fun m!1039211 () Bool)

(assert (=> bm!47462 m!1039211))

(declare-fun m!1039213 () Bool)

(assert (=> b!1124858 m!1039213))

(declare-fun m!1039215 () Bool)

(assert (=> b!1124858 m!1039215))

(declare-fun m!1039217 () Bool)

(assert (=> b!1124860 m!1039217))

(declare-fun m!1039219 () Bool)

(assert (=> b!1124868 m!1039219))

(declare-fun m!1039221 () Bool)

(assert (=> b!1124869 m!1039221))

(declare-fun m!1039223 () Bool)

(assert (=> b!1124869 m!1039223))

(declare-fun m!1039225 () Bool)

(assert (=> b!1124862 m!1039225))

(assert (=> b!1124862 m!1039211))

(declare-fun m!1039227 () Bool)

(assert (=> b!1124871 m!1039227))

(declare-fun m!1039229 () Bool)

(assert (=> b!1124867 m!1039229))

(declare-fun m!1039231 () Bool)

(assert (=> b!1124867 m!1039231))

(declare-fun m!1039233 () Bool)

(assert (=> b!1124867 m!1039233))

(declare-fun m!1039235 () Bool)

(assert (=> b!1124867 m!1039235))

(declare-fun m!1039237 () Bool)

(assert (=> b!1124876 m!1039237))

(declare-fun m!1039239 () Bool)

(assert (=> b!1124864 m!1039239))

(declare-fun m!1039241 () Bool)

(assert (=> b!1124875 m!1039241))

(assert (=> b!1124875 m!1039241))

(declare-fun m!1039243 () Bool)

(assert (=> b!1124875 m!1039243))

(declare-fun m!1039245 () Bool)

(assert (=> b!1124875 m!1039245))

(check-sat (not b!1124858) (not b!1124868) (not start!98062) (not b!1124869) (not b_lambda!18731) (not b!1124861) (not bm!47462) (not b!1124871) (not b!1124875) (not b!1124862) tp_is_empty!28257 (not b_next!23727) (not b!1124867) b_and!38261 (not bm!47461) (not b!1124860) (not b!1124859) (not b!1124876) (not mapNonEmpty!44203) (not b!1124864))
(check-sat b_and!38261 (not b_next!23727))
