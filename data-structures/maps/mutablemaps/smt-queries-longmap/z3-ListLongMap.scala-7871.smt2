; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98008 () Bool)

(assert start!98008)

(declare-fun b_free!23673 () Bool)

(declare-fun b_next!23673 () Bool)

(assert (=> start!98008 (= b_free!23673 (not b_next!23673))))

(declare-fun tp!83723 () Bool)

(declare-fun b_and!38151 () Bool)

(assert (=> start!98008 (= tp!83723 b_and!38151)))

(declare-fun b!1123219 () Bool)

(declare-fun e!639502 () Bool)

(declare-fun e!639501 () Bool)

(assert (=> b!1123219 (= e!639502 e!639501)))

(declare-fun res!750500 () Bool)

(assert (=> b!1123219 (=> res!750500 e!639501)))

(declare-datatypes ((array!73232 0))(
  ( (array!73233 (arr!35265 (Array (_ BitVec 32) (_ BitVec 64))) (size!35802 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73232)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1123219 (= res!750500 (not (= (select (arr!35265 _keys!1208) from!1455) k0!934)))))

(declare-fun e!639499 () Bool)

(assert (=> b!1123219 e!639499))

(declare-fun c!109460 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1123219 (= c!109460 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!42731 0))(
  ( (V!42732 (val!14158 Int)) )
))
(declare-fun zeroValue!944 () V!42731)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((Unit!36771 0))(
  ( (Unit!36772) )
))
(declare-fun lt!498995 () Unit!36771)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13392 0))(
  ( (ValueCellFull!13392 (v!16792 V!42731)) (EmptyCell!13392) )
))
(declare-datatypes ((array!73234 0))(
  ( (array!73235 (arr!35266 (Array (_ BitVec 32) ValueCell!13392)) (size!35803 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73234)

(declare-fun minValue!944 () V!42731)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!344 (array!73232 array!73234 (_ BitVec 32) (_ BitVec 32) V!42731 V!42731 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36771)

(assert (=> b!1123219 (= lt!498995 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!344 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123220 () Bool)

(declare-fun e!639495 () Bool)

(declare-fun tp_is_empty!28203 () Bool)

(assert (=> b!1123220 (= e!639495 tp_is_empty!28203)))

(declare-fun b!1123221 () Bool)

(declare-fun res!750505 () Bool)

(declare-fun e!639497 () Bool)

(assert (=> b!1123221 (=> (not res!750505) (not e!639497))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1123221 (= res!750505 (validMask!0 mask!1564))))

(declare-fun bm!47299 () Bool)

(declare-datatypes ((tuple2!17854 0))(
  ( (tuple2!17855 (_1!8937 (_ BitVec 64)) (_2!8937 V!42731)) )
))
(declare-datatypes ((List!24687 0))(
  ( (Nil!24684) (Cons!24683 (h!25892 tuple2!17854) (t!35359 List!24687)) )
))
(declare-datatypes ((ListLongMap!15835 0))(
  ( (ListLongMap!15836 (toList!7933 List!24687)) )
))
(declare-fun call!47302 () ListLongMap!15835)

(declare-fun getCurrentListMapNoExtraKeys!4393 (array!73232 array!73234 (_ BitVec 32) (_ BitVec 32) V!42731 V!42731 (_ BitVec 32) Int) ListLongMap!15835)

(assert (=> bm!47299 (= call!47302 (getCurrentListMapNoExtraKeys!4393 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44122 () Bool)

(declare-fun mapRes!44122 () Bool)

(declare-fun tp!83724 () Bool)

(declare-fun e!639496 () Bool)

(assert (=> mapNonEmpty!44122 (= mapRes!44122 (and tp!83724 e!639496))))

(declare-fun mapValue!44122 () ValueCell!13392)

(declare-fun mapRest!44122 () (Array (_ BitVec 32) ValueCell!13392))

(declare-fun mapKey!44122 () (_ BitVec 32))

(assert (=> mapNonEmpty!44122 (= (arr!35266 _values!996) (store mapRest!44122 mapKey!44122 mapValue!44122))))

(declare-fun b!1123223 () Bool)

(declare-fun res!750497 () Bool)

(assert (=> b!1123223 (=> (not res!750497) (not e!639497))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1123223 (= res!750497 (validKeyInArray!0 k0!934))))

(declare-fun call!47303 () ListLongMap!15835)

(declare-fun b!1123224 () Bool)

(declare-fun -!1092 (ListLongMap!15835 (_ BitVec 64)) ListLongMap!15835)

(assert (=> b!1123224 (= e!639499 (= call!47303 (-!1092 call!47302 k0!934)))))

(declare-fun b!1123225 () Bool)

(assert (=> b!1123225 (= e!639501 true)))

(declare-fun lt!498994 () Bool)

(declare-fun contains!6450 (ListLongMap!15835 (_ BitVec 64)) Bool)

(assert (=> b!1123225 (= lt!498994 (contains!6450 (getCurrentListMapNoExtraKeys!4393 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1123226 () Bool)

(assert (=> b!1123226 (= e!639496 tp_is_empty!28203)))

(declare-fun b!1123227 () Bool)

(declare-fun e!639503 () Bool)

(declare-fun e!639500 () Bool)

(assert (=> b!1123227 (= e!639503 (not e!639500))))

(declare-fun res!750506 () Bool)

(assert (=> b!1123227 (=> res!750506 e!639500)))

(assert (=> b!1123227 (= res!750506 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73232 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1123227 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!498998 () Unit!36771)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73232 (_ BitVec 64) (_ BitVec 32)) Unit!36771)

(assert (=> b!1123227 (= lt!498998 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!44122 () Bool)

(assert (=> mapIsEmpty!44122 mapRes!44122))

(declare-fun b!1123228 () Bool)

(declare-fun res!750501 () Bool)

(assert (=> b!1123228 (=> (not res!750501) (not e!639497))))

(assert (=> b!1123228 (= res!750501 (= (select (arr!35265 _keys!1208) i!673) k0!934))))

(declare-fun b!1123229 () Bool)

(declare-fun e!639498 () Bool)

(assert (=> b!1123229 (= e!639498 (and e!639495 mapRes!44122))))

(declare-fun condMapEmpty!44122 () Bool)

(declare-fun mapDefault!44122 () ValueCell!13392)

(assert (=> b!1123229 (= condMapEmpty!44122 (= (arr!35266 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13392)) mapDefault!44122)))))

(declare-fun lt!498996 () array!73234)

(declare-fun lt!498993 () array!73232)

(declare-fun bm!47300 () Bool)

(assert (=> bm!47300 (= call!47303 (getCurrentListMapNoExtraKeys!4393 lt!498993 lt!498996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123230 () Bool)

(declare-fun res!750498 () Bool)

(assert (=> b!1123230 (=> (not res!750498) (not e!639497))))

(assert (=> b!1123230 (= res!750498 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35802 _keys!1208))))))

(declare-fun b!1123231 () Bool)

(assert (=> b!1123231 (= e!639499 (= call!47303 call!47302))))

(declare-fun b!1123232 () Bool)

(assert (=> b!1123232 (= e!639500 e!639502)))

(declare-fun res!750502 () Bool)

(assert (=> b!1123232 (=> res!750502 e!639502)))

(assert (=> b!1123232 (= res!750502 (not (= from!1455 i!673)))))

(declare-fun lt!498999 () ListLongMap!15835)

(assert (=> b!1123232 (= lt!498999 (getCurrentListMapNoExtraKeys!4393 lt!498993 lt!498996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2485 (Int (_ BitVec 64)) V!42731)

(assert (=> b!1123232 (= lt!498996 (array!73235 (store (arr!35266 _values!996) i!673 (ValueCellFull!13392 (dynLambda!2485 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35803 _values!996)))))

(declare-fun lt!498997 () ListLongMap!15835)

(assert (=> b!1123232 (= lt!498997 (getCurrentListMapNoExtraKeys!4393 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!750503 () Bool)

(assert (=> start!98008 (=> (not res!750503) (not e!639497))))

(assert (=> start!98008 (= res!750503 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35802 _keys!1208))))))

(assert (=> start!98008 e!639497))

(assert (=> start!98008 tp_is_empty!28203))

(declare-fun array_inv!26952 (array!73232) Bool)

(assert (=> start!98008 (array_inv!26952 _keys!1208)))

(assert (=> start!98008 true))

(assert (=> start!98008 tp!83723))

(declare-fun array_inv!26953 (array!73234) Bool)

(assert (=> start!98008 (and (array_inv!26953 _values!996) e!639498)))

(declare-fun b!1123222 () Bool)

(declare-fun res!750504 () Bool)

(assert (=> b!1123222 (=> (not res!750504) (not e!639497))))

(assert (=> b!1123222 (= res!750504 (and (= (size!35803 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35802 _keys!1208) (size!35803 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1123233 () Bool)

(declare-fun res!750495 () Bool)

(assert (=> b!1123233 (=> (not res!750495) (not e!639497))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73232 (_ BitVec 32)) Bool)

(assert (=> b!1123233 (= res!750495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1123234 () Bool)

(declare-fun res!750499 () Bool)

(assert (=> b!1123234 (=> (not res!750499) (not e!639497))))

(declare-datatypes ((List!24688 0))(
  ( (Nil!24685) (Cons!24684 (h!25893 (_ BitVec 64)) (t!35360 List!24688)) )
))
(declare-fun arrayNoDuplicates!0 (array!73232 (_ BitVec 32) List!24688) Bool)

(assert (=> b!1123234 (= res!750499 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24685))))

(declare-fun b!1123235 () Bool)

(assert (=> b!1123235 (= e!639497 e!639503)))

(declare-fun res!750507 () Bool)

(assert (=> b!1123235 (=> (not res!750507) (not e!639503))))

(assert (=> b!1123235 (= res!750507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498993 mask!1564))))

(assert (=> b!1123235 (= lt!498993 (array!73233 (store (arr!35265 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35802 _keys!1208)))))

(declare-fun b!1123236 () Bool)

(declare-fun res!750496 () Bool)

(assert (=> b!1123236 (=> (not res!750496) (not e!639503))))

(assert (=> b!1123236 (= res!750496 (arrayNoDuplicates!0 lt!498993 #b00000000000000000000000000000000 Nil!24685))))

(assert (= (and start!98008 res!750503) b!1123221))

(assert (= (and b!1123221 res!750505) b!1123222))

(assert (= (and b!1123222 res!750504) b!1123233))

(assert (= (and b!1123233 res!750495) b!1123234))

(assert (= (and b!1123234 res!750499) b!1123230))

(assert (= (and b!1123230 res!750498) b!1123223))

(assert (= (and b!1123223 res!750497) b!1123228))

(assert (= (and b!1123228 res!750501) b!1123235))

(assert (= (and b!1123235 res!750507) b!1123236))

(assert (= (and b!1123236 res!750496) b!1123227))

(assert (= (and b!1123227 (not res!750506)) b!1123232))

(assert (= (and b!1123232 (not res!750502)) b!1123219))

(assert (= (and b!1123219 c!109460) b!1123224))

(assert (= (and b!1123219 (not c!109460)) b!1123231))

(assert (= (or b!1123224 b!1123231) bm!47300))

(assert (= (or b!1123224 b!1123231) bm!47299))

(assert (= (and b!1123219 (not res!750500)) b!1123225))

(assert (= (and b!1123229 condMapEmpty!44122) mapIsEmpty!44122))

(assert (= (and b!1123229 (not condMapEmpty!44122)) mapNonEmpty!44122))

(get-info :version)

(assert (= (and mapNonEmpty!44122 ((_ is ValueCellFull!13392) mapValue!44122)) b!1123226))

(assert (= (and b!1123229 ((_ is ValueCellFull!13392) mapDefault!44122)) b!1123220))

(assert (= start!98008 b!1123229))

(declare-fun b_lambda!18677 () Bool)

(assert (=> (not b_lambda!18677) (not b!1123232)))

(declare-fun t!35358 () Bool)

(declare-fun tb!8493 () Bool)

(assert (=> (and start!98008 (= defaultEntry!1004 defaultEntry!1004) t!35358) tb!8493))

(declare-fun result!17539 () Bool)

(assert (=> tb!8493 (= result!17539 tp_is_empty!28203)))

(assert (=> b!1123232 t!35358))

(declare-fun b_and!38153 () Bool)

(assert (= b_and!38151 (and (=> t!35358 result!17539) b_and!38153)))

(declare-fun m!1037839 () Bool)

(assert (=> b!1123227 m!1037839))

(declare-fun m!1037841 () Bool)

(assert (=> b!1123227 m!1037841))

(declare-fun m!1037843 () Bool)

(assert (=> b!1123235 m!1037843))

(declare-fun m!1037845 () Bool)

(assert (=> b!1123235 m!1037845))

(declare-fun m!1037847 () Bool)

(assert (=> bm!47300 m!1037847))

(declare-fun m!1037849 () Bool)

(assert (=> b!1123233 m!1037849))

(declare-fun m!1037851 () Bool)

(assert (=> bm!47299 m!1037851))

(assert (=> b!1123225 m!1037851))

(assert (=> b!1123225 m!1037851))

(declare-fun m!1037853 () Bool)

(assert (=> b!1123225 m!1037853))

(declare-fun m!1037855 () Bool)

(assert (=> b!1123234 m!1037855))

(declare-fun m!1037857 () Bool)

(assert (=> b!1123219 m!1037857))

(declare-fun m!1037859 () Bool)

(assert (=> b!1123219 m!1037859))

(declare-fun m!1037861 () Bool)

(assert (=> b!1123224 m!1037861))

(declare-fun m!1037863 () Bool)

(assert (=> b!1123236 m!1037863))

(declare-fun m!1037865 () Bool)

(assert (=> mapNonEmpty!44122 m!1037865))

(declare-fun m!1037867 () Bool)

(assert (=> b!1123228 m!1037867))

(declare-fun m!1037869 () Bool)

(assert (=> b!1123223 m!1037869))

(declare-fun m!1037871 () Bool)

(assert (=> b!1123221 m!1037871))

(declare-fun m!1037873 () Bool)

(assert (=> b!1123232 m!1037873))

(declare-fun m!1037875 () Bool)

(assert (=> b!1123232 m!1037875))

(declare-fun m!1037877 () Bool)

(assert (=> b!1123232 m!1037877))

(declare-fun m!1037879 () Bool)

(assert (=> b!1123232 m!1037879))

(declare-fun m!1037881 () Bool)

(assert (=> start!98008 m!1037881))

(declare-fun m!1037883 () Bool)

(assert (=> start!98008 m!1037883))

(check-sat (not bm!47299) (not b!1123225) (not b!1123232) (not b!1123224) (not b!1123227) (not b!1123234) (not b!1123236) (not start!98008) (not bm!47300) (not b!1123219) (not b!1123223) b_and!38153 (not b_next!23673) (not b!1123235) (not mapNonEmpty!44122) (not b!1123233) (not b!1123221) (not b_lambda!18677) tp_is_empty!28203)
(check-sat b_and!38153 (not b_next!23673))
