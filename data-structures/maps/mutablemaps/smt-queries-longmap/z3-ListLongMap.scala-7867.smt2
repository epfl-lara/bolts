; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97984 () Bool)

(assert start!97984)

(declare-fun b_free!23649 () Bool)

(declare-fun b_next!23649 () Bool)

(assert (=> start!97984 (= b_free!23649 (not b_next!23649))))

(declare-fun tp!83652 () Bool)

(declare-fun b_and!38103 () Bool)

(assert (=> start!97984 (= tp!83652 b_and!38103)))

(declare-fun b!1122547 () Bool)

(declare-fun e!639139 () Bool)

(declare-fun tp_is_empty!28179 () Bool)

(assert (=> b!1122547 (= e!639139 tp_is_empty!28179)))

(declare-datatypes ((V!42699 0))(
  ( (V!42700 (val!14146 Int)) )
))
(declare-fun zeroValue!944 () V!42699)

(declare-datatypes ((tuple2!17832 0))(
  ( (tuple2!17833 (_1!8926 (_ BitVec 64)) (_2!8926 V!42699)) )
))
(declare-datatypes ((List!24668 0))(
  ( (Nil!24665) (Cons!24664 (h!25873 tuple2!17832) (t!35316 List!24668)) )
))
(declare-datatypes ((ListLongMap!15813 0))(
  ( (ListLongMap!15814 (toList!7922 List!24668)) )
))
(declare-fun call!47230 () ListLongMap!15813)

(declare-datatypes ((array!73184 0))(
  ( (array!73185 (arr!35241 (Array (_ BitVec 32) (_ BitVec 64))) (size!35778 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73184)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13380 0))(
  ( (ValueCellFull!13380 (v!16780 V!42699)) (EmptyCell!13380) )
))
(declare-datatypes ((array!73186 0))(
  ( (array!73187 (arr!35242 (Array (_ BitVec 32) ValueCell!13380)) (size!35779 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73186)

(declare-fun minValue!944 () V!42699)

(declare-fun bm!47227 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4382 (array!73184 array!73186 (_ BitVec 32) (_ BitVec 32) V!42699 V!42699 (_ BitVec 32) Int) ListLongMap!15813)

(assert (=> bm!47227 (= call!47230 (getCurrentListMapNoExtraKeys!4382 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122548 () Bool)

(declare-fun e!639140 () Bool)

(assert (=> b!1122548 (= e!639140 true)))

(declare-fun lt!498745 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6440 (ListLongMap!15813 (_ BitVec 64)) Bool)

(assert (=> b!1122548 (= lt!498745 (contains!6440 (getCurrentListMapNoExtraKeys!4382 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1122549 () Bool)

(declare-fun e!639142 () Bool)

(declare-fun e!639141 () Bool)

(declare-fun mapRes!44086 () Bool)

(assert (=> b!1122549 (= e!639142 (and e!639141 mapRes!44086))))

(declare-fun condMapEmpty!44086 () Bool)

(declare-fun mapDefault!44086 () ValueCell!13380)

(assert (=> b!1122549 (= condMapEmpty!44086 (= (arr!35242 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13380)) mapDefault!44086)))))

(declare-fun b!1122550 () Bool)

(declare-fun res!750028 () Bool)

(declare-fun e!639135 () Bool)

(assert (=> b!1122550 (=> (not res!750028) (not e!639135))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73184 (_ BitVec 32)) Bool)

(assert (=> b!1122550 (= res!750028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1122551 () Bool)

(declare-fun e!639136 () Bool)

(declare-fun e!639143 () Bool)

(assert (=> b!1122551 (= e!639136 e!639143)))

(declare-fun res!750035 () Bool)

(assert (=> b!1122551 (=> res!750035 e!639143)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1122551 (= res!750035 (not (= from!1455 i!673)))))

(declare-fun lt!498744 () array!73186)

(declare-fun lt!498746 () ListLongMap!15813)

(declare-fun lt!498742 () array!73184)

(assert (=> b!1122551 (= lt!498746 (getCurrentListMapNoExtraKeys!4382 lt!498742 lt!498744 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2479 (Int (_ BitVec 64)) V!42699)

(assert (=> b!1122551 (= lt!498744 (array!73187 (store (arr!35242 _values!996) i!673 (ValueCellFull!13380 (dynLambda!2479 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35779 _values!996)))))

(declare-fun lt!498741 () ListLongMap!15813)

(assert (=> b!1122551 (= lt!498741 (getCurrentListMapNoExtraKeys!4382 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1122552 () Bool)

(declare-fun res!750038 () Bool)

(assert (=> b!1122552 (=> (not res!750038) (not e!639135))))

(assert (=> b!1122552 (= res!750038 (and (= (size!35779 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35778 _keys!1208) (size!35779 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1122553 () Bool)

(declare-fun res!750039 () Bool)

(assert (=> b!1122553 (=> (not res!750039) (not e!639135))))

(declare-datatypes ((List!24669 0))(
  ( (Nil!24666) (Cons!24665 (h!25874 (_ BitVec 64)) (t!35317 List!24669)) )
))
(declare-fun arrayNoDuplicates!0 (array!73184 (_ BitVec 32) List!24669) Bool)

(assert (=> b!1122553 (= res!750039 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24666))))

(declare-fun b!1122555 () Bool)

(assert (=> b!1122555 (= e!639143 e!639140)))

(declare-fun res!750034 () Bool)

(assert (=> b!1122555 (=> res!750034 e!639140)))

(assert (=> b!1122555 (= res!750034 (not (= (select (arr!35241 _keys!1208) from!1455) k0!934)))))

(declare-fun e!639137 () Bool)

(assert (=> b!1122555 e!639137))

(declare-fun c!109424 () Bool)

(assert (=> b!1122555 (= c!109424 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36751 0))(
  ( (Unit!36752) )
))
(declare-fun lt!498747 () Unit!36751)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!335 (array!73184 array!73186 (_ BitVec 32) (_ BitVec 32) V!42699 V!42699 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36751)

(assert (=> b!1122555 (= lt!498747 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!335 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122556 () Bool)

(declare-fun e!639134 () Bool)

(assert (=> b!1122556 (= e!639134 (not e!639136))))

(declare-fun res!750029 () Bool)

(assert (=> b!1122556 (=> res!750029 e!639136)))

(assert (=> b!1122556 (= res!750029 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73184 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1122556 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!498743 () Unit!36751)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73184 (_ BitVec 64) (_ BitVec 32)) Unit!36751)

(assert (=> b!1122556 (= lt!498743 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1122557 () Bool)

(declare-fun res!750037 () Bool)

(assert (=> b!1122557 (=> (not res!750037) (not e!639135))))

(assert (=> b!1122557 (= res!750037 (= (select (arr!35241 _keys!1208) i!673) k0!934))))

(declare-fun b!1122558 () Bool)

(declare-fun res!750032 () Bool)

(assert (=> b!1122558 (=> (not res!750032) (not e!639135))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1122558 (= res!750032 (validMask!0 mask!1564))))

(declare-fun b!1122559 () Bool)

(assert (=> b!1122559 (= e!639141 tp_is_empty!28179)))

(declare-fun mapIsEmpty!44086 () Bool)

(assert (=> mapIsEmpty!44086 mapRes!44086))

(declare-fun b!1122560 () Bool)

(declare-fun res!750027 () Bool)

(assert (=> b!1122560 (=> (not res!750027) (not e!639134))))

(assert (=> b!1122560 (= res!750027 (arrayNoDuplicates!0 lt!498742 #b00000000000000000000000000000000 Nil!24666))))

(declare-fun b!1122561 () Bool)

(declare-fun res!750036 () Bool)

(assert (=> b!1122561 (=> (not res!750036) (not e!639135))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1122561 (= res!750036 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!44086 () Bool)

(declare-fun tp!83651 () Bool)

(assert (=> mapNonEmpty!44086 (= mapRes!44086 (and tp!83651 e!639139))))

(declare-fun mapKey!44086 () (_ BitVec 32))

(declare-fun mapValue!44086 () ValueCell!13380)

(declare-fun mapRest!44086 () (Array (_ BitVec 32) ValueCell!13380))

(assert (=> mapNonEmpty!44086 (= (arr!35242 _values!996) (store mapRest!44086 mapKey!44086 mapValue!44086))))

(declare-fun b!1122562 () Bool)

(declare-fun call!47231 () ListLongMap!15813)

(assert (=> b!1122562 (= e!639137 (= call!47231 call!47230))))

(declare-fun b!1122563 () Bool)

(declare-fun res!750031 () Bool)

(assert (=> b!1122563 (=> (not res!750031) (not e!639135))))

(assert (=> b!1122563 (= res!750031 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35778 _keys!1208))))))

(declare-fun res!750033 () Bool)

(assert (=> start!97984 (=> (not res!750033) (not e!639135))))

(assert (=> start!97984 (= res!750033 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35778 _keys!1208))))))

(assert (=> start!97984 e!639135))

(assert (=> start!97984 tp_is_empty!28179))

(declare-fun array_inv!26932 (array!73184) Bool)

(assert (=> start!97984 (array_inv!26932 _keys!1208)))

(assert (=> start!97984 true))

(assert (=> start!97984 tp!83652))

(declare-fun array_inv!26933 (array!73186) Bool)

(assert (=> start!97984 (and (array_inv!26933 _values!996) e!639142)))

(declare-fun b!1122554 () Bool)

(assert (=> b!1122554 (= e!639135 e!639134)))

(declare-fun res!750030 () Bool)

(assert (=> b!1122554 (=> (not res!750030) (not e!639134))))

(assert (=> b!1122554 (= res!750030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498742 mask!1564))))

(assert (=> b!1122554 (= lt!498742 (array!73185 (store (arr!35241 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35778 _keys!1208)))))

(declare-fun bm!47228 () Bool)

(assert (=> bm!47228 (= call!47231 (getCurrentListMapNoExtraKeys!4382 lt!498742 lt!498744 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122564 () Bool)

(declare-fun -!1084 (ListLongMap!15813 (_ BitVec 64)) ListLongMap!15813)

(assert (=> b!1122564 (= e!639137 (= call!47231 (-!1084 call!47230 k0!934)))))

(assert (= (and start!97984 res!750033) b!1122558))

(assert (= (and b!1122558 res!750032) b!1122552))

(assert (= (and b!1122552 res!750038) b!1122550))

(assert (= (and b!1122550 res!750028) b!1122553))

(assert (= (and b!1122553 res!750039) b!1122563))

(assert (= (and b!1122563 res!750031) b!1122561))

(assert (= (and b!1122561 res!750036) b!1122557))

(assert (= (and b!1122557 res!750037) b!1122554))

(assert (= (and b!1122554 res!750030) b!1122560))

(assert (= (and b!1122560 res!750027) b!1122556))

(assert (= (and b!1122556 (not res!750029)) b!1122551))

(assert (= (and b!1122551 (not res!750035)) b!1122555))

(assert (= (and b!1122555 c!109424) b!1122564))

(assert (= (and b!1122555 (not c!109424)) b!1122562))

(assert (= (or b!1122564 b!1122562) bm!47228))

(assert (= (or b!1122564 b!1122562) bm!47227))

(assert (= (and b!1122555 (not res!750034)) b!1122548))

(assert (= (and b!1122549 condMapEmpty!44086) mapIsEmpty!44086))

(assert (= (and b!1122549 (not condMapEmpty!44086)) mapNonEmpty!44086))

(get-info :version)

(assert (= (and mapNonEmpty!44086 ((_ is ValueCellFull!13380) mapValue!44086)) b!1122547))

(assert (= (and b!1122549 ((_ is ValueCellFull!13380) mapDefault!44086)) b!1122559))

(assert (= start!97984 b!1122549))

(declare-fun b_lambda!18653 () Bool)

(assert (=> (not b_lambda!18653) (not b!1122551)))

(declare-fun t!35315 () Bool)

(declare-fun tb!8469 () Bool)

(assert (=> (and start!97984 (= defaultEntry!1004 defaultEntry!1004) t!35315) tb!8469))

(declare-fun result!17491 () Bool)

(assert (=> tb!8469 (= result!17491 tp_is_empty!28179)))

(assert (=> b!1122551 t!35315))

(declare-fun b_and!38105 () Bool)

(assert (= b_and!38103 (and (=> t!35315 result!17491) b_and!38105)))

(declare-fun m!1037287 () Bool)

(assert (=> b!1122560 m!1037287))

(declare-fun m!1037289 () Bool)

(assert (=> bm!47228 m!1037289))

(declare-fun m!1037291 () Bool)

(assert (=> b!1122555 m!1037291))

(declare-fun m!1037293 () Bool)

(assert (=> b!1122555 m!1037293))

(declare-fun m!1037295 () Bool)

(assert (=> b!1122564 m!1037295))

(declare-fun m!1037297 () Bool)

(assert (=> b!1122548 m!1037297))

(assert (=> b!1122548 m!1037297))

(declare-fun m!1037299 () Bool)

(assert (=> b!1122548 m!1037299))

(declare-fun m!1037301 () Bool)

(assert (=> b!1122556 m!1037301))

(declare-fun m!1037303 () Bool)

(assert (=> b!1122556 m!1037303))

(declare-fun m!1037305 () Bool)

(assert (=> start!97984 m!1037305))

(declare-fun m!1037307 () Bool)

(assert (=> start!97984 m!1037307))

(declare-fun m!1037309 () Bool)

(assert (=> b!1122561 m!1037309))

(assert (=> bm!47227 m!1037297))

(declare-fun m!1037311 () Bool)

(assert (=> b!1122557 m!1037311))

(declare-fun m!1037313 () Bool)

(assert (=> b!1122550 m!1037313))

(declare-fun m!1037315 () Bool)

(assert (=> b!1122558 m!1037315))

(declare-fun m!1037317 () Bool)

(assert (=> mapNonEmpty!44086 m!1037317))

(declare-fun m!1037319 () Bool)

(assert (=> b!1122551 m!1037319))

(declare-fun m!1037321 () Bool)

(assert (=> b!1122551 m!1037321))

(declare-fun m!1037323 () Bool)

(assert (=> b!1122551 m!1037323))

(declare-fun m!1037325 () Bool)

(assert (=> b!1122551 m!1037325))

(declare-fun m!1037327 () Bool)

(assert (=> b!1122554 m!1037327))

(declare-fun m!1037329 () Bool)

(assert (=> b!1122554 m!1037329))

(declare-fun m!1037331 () Bool)

(assert (=> b!1122553 m!1037331))

(check-sat tp_is_empty!28179 (not b!1122555) (not bm!47227) (not b!1122561) (not b!1122554) (not b!1122551) (not b!1122564) (not mapNonEmpty!44086) (not b!1122560) (not b!1122548) (not b_lambda!18653) (not b!1122558) (not b!1122550) b_and!38105 (not b_next!23649) (not b!1122553) (not bm!47228) (not start!97984) (not b!1122556))
(check-sat b_and!38105 (not b_next!23649))
