; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99022 () Bool)

(assert start!99022)

(declare-fun b_free!24591 () Bool)

(declare-fun b_next!24591 () Bool)

(assert (=> start!99022 (= b_free!24591 (not b_next!24591))))

(declare-fun tp!86484 () Bool)

(declare-fun b_and!40045 () Bool)

(assert (=> start!99022 (= tp!86484 b_and!40045)))

(declare-fun b!1162134 () Bool)

(declare-datatypes ((Unit!38233 0))(
  ( (Unit!38234) )
))
(declare-fun e!660858 () Unit!38233)

(declare-fun lt!523193 () Unit!38233)

(assert (=> b!1162134 (= e!660858 lt!523193)))

(declare-fun call!56637 () Unit!38233)

(assert (=> b!1162134 (= lt!523193 call!56637)))

(declare-fun call!56633 () Bool)

(assert (=> b!1162134 call!56633))

(declare-fun b!1162135 () Bool)

(declare-fun e!660862 () Unit!38233)

(declare-fun Unit!38235 () Unit!38233)

(assert (=> b!1162135 (= e!660862 Unit!38235)))

(declare-fun lt!523200 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1162135 (= lt!523200 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!116129 () Bool)

(assert (=> b!1162135 (= c!116129 (and (not lt!523200) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!523184 () Unit!38233)

(declare-fun e!660865 () Unit!38233)

(assert (=> b!1162135 (= lt!523184 e!660865)))

(declare-datatypes ((V!43955 0))(
  ( (V!43956 (val!14617 Int)) )
))
(declare-fun zeroValue!944 () V!43955)

(declare-fun lt!523182 () Unit!38233)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13851 0))(
  ( (ValueCellFull!13851 (v!17255 V!43955)) (EmptyCell!13851) )
))
(declare-datatypes ((array!75032 0))(
  ( (array!75033 (arr!36163 (Array (_ BitVec 32) ValueCell!13851)) (size!36700 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75032)

(declare-fun minValue!944 () V!43955)

(declare-datatypes ((array!75034 0))(
  ( (array!75035 (arr!36164 (Array (_ BitVec 32) (_ BitVec 64))) (size!36701 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75034)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!548 (array!75034 array!75032 (_ BitVec 32) (_ BitVec 32) V!43955 V!43955 (_ BitVec 64) (_ BitVec 32) Int) Unit!38233)

(assert (=> b!1162135 (= lt!523182 (lemmaListMapContainsThenArrayContainsFrom!548 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116130 () Bool)

(assert (=> b!1162135 (= c!116130 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!771013 () Bool)

(declare-fun e!660860 () Bool)

(assert (=> b!1162135 (= res!771013 e!660860)))

(declare-fun e!660868 () Bool)

(assert (=> b!1162135 (=> (not res!771013) (not e!660868))))

(assert (=> b!1162135 e!660868))

(declare-fun lt!523187 () Unit!38233)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75034 (_ BitVec 32) (_ BitVec 32)) Unit!38233)

(assert (=> b!1162135 (= lt!523187 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25480 0))(
  ( (Nil!25477) (Cons!25476 (h!26685 (_ BitVec 64)) (t!37070 List!25480)) )
))
(declare-fun arrayNoDuplicates!0 (array!75034 (_ BitVec 32) List!25480) Bool)

(assert (=> b!1162135 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25477)))

(declare-fun lt!523196 () Unit!38233)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75034 (_ BitVec 64) (_ BitVec 32) List!25480) Unit!38233)

(assert (=> b!1162135 (= lt!523196 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25477))))

(assert (=> b!1162135 false))

(declare-fun b!1162136 () Bool)

(declare-fun e!660871 () Bool)

(declare-fun e!660867 () Bool)

(assert (=> b!1162136 (= e!660871 e!660867)))

(declare-fun res!771015 () Bool)

(assert (=> b!1162136 (=> res!771015 e!660867)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1162136 (= res!771015 (not (= from!1455 i!673)))))

(declare-datatypes ((tuple2!18704 0))(
  ( (tuple2!18705 (_1!9362 (_ BitVec 64)) (_2!9362 V!43955)) )
))
(declare-datatypes ((List!25481 0))(
  ( (Nil!25478) (Cons!25477 (h!26686 tuple2!18704) (t!37071 List!25481)) )
))
(declare-datatypes ((ListLongMap!16685 0))(
  ( (ListLongMap!16686 (toList!8358 List!25481)) )
))
(declare-fun lt!523185 () ListLongMap!16685)

(declare-fun lt!523190 () array!75032)

(declare-fun lt!523189 () array!75034)

(declare-fun getCurrentListMapNoExtraKeys!4792 (array!75034 array!75032 (_ BitVec 32) (_ BitVec 32) V!43955 V!43955 (_ BitVec 32) Int) ListLongMap!16685)

(assert (=> b!1162136 (= lt!523185 (getCurrentListMapNoExtraKeys!4792 lt!523189 lt!523190 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!523202 () V!43955)

(assert (=> b!1162136 (= lt!523190 (array!75033 (store (arr!36163 _values!996) i!673 (ValueCellFull!13851 lt!523202)) (size!36700 _values!996)))))

(declare-fun dynLambda!2792 (Int (_ BitVec 64)) V!43955)

(assert (=> b!1162136 (= lt!523202 (dynLambda!2792 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!523192 () ListLongMap!16685)

(assert (=> b!1162136 (= lt!523192 (getCurrentListMapNoExtraKeys!4792 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun call!56638 () ListLongMap!16685)

(declare-fun bm!56630 () Bool)

(assert (=> bm!56630 (= call!56638 (getCurrentListMapNoExtraKeys!4792 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56631 () Bool)

(declare-fun call!56640 () ListLongMap!16685)

(declare-fun call!56636 () ListLongMap!16685)

(assert (=> bm!56631 (= call!56640 call!56636)))

(declare-fun b!1162137 () Bool)

(declare-fun c!116125 () Bool)

(assert (=> b!1162137 (= c!116125 (and (not lt!523200) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1162137 (= e!660865 e!660858)))

(declare-fun res!771020 () Bool)

(declare-fun e!660869 () Bool)

(assert (=> start!99022 (=> (not res!771020) (not e!660869))))

(assert (=> start!99022 (= res!771020 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36701 _keys!1208))))))

(assert (=> start!99022 e!660869))

(declare-fun tp_is_empty!29121 () Bool)

(assert (=> start!99022 tp_is_empty!29121))

(declare-fun array_inv!27542 (array!75034) Bool)

(assert (=> start!99022 (array_inv!27542 _keys!1208)))

(assert (=> start!99022 true))

(assert (=> start!99022 tp!86484))

(declare-fun e!660870 () Bool)

(declare-fun array_inv!27543 (array!75032) Bool)

(assert (=> start!99022 (and (array_inv!27543 _values!996) e!660870)))

(declare-fun b!1162138 () Bool)

(declare-fun arrayContainsKey!0 (array!75034 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1162138 (= e!660868 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1162139 () Bool)

(declare-fun e!660866 () Bool)

(assert (=> b!1162139 (= e!660866 tp_is_empty!29121)))

(declare-fun bm!56632 () Bool)

(declare-fun call!56639 () Unit!38233)

(assert (=> bm!56632 (= call!56637 call!56639)))

(declare-fun b!1162140 () Bool)

(declare-fun e!660863 () Bool)

(declare-fun call!56635 () ListLongMap!16685)

(declare-fun -!1427 (ListLongMap!16685 (_ BitVec 64)) ListLongMap!16685)

(assert (=> b!1162140 (= e!660863 (= call!56635 (-!1427 call!56638 k0!934)))))

(declare-fun b!1162141 () Bool)

(declare-fun e!660859 () Bool)

(declare-fun mapRes!45506 () Bool)

(assert (=> b!1162141 (= e!660870 (and e!660859 mapRes!45506))))

(declare-fun condMapEmpty!45506 () Bool)

(declare-fun mapDefault!45506 () ValueCell!13851)

(assert (=> b!1162141 (= condMapEmpty!45506 (= (arr!36163 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13851)) mapDefault!45506)))))

(declare-fun b!1162142 () Bool)

(declare-fun e!660861 () Bool)

(assert (=> b!1162142 (= e!660861 (not e!660871))))

(declare-fun res!771022 () Bool)

(assert (=> b!1162142 (=> res!771022 e!660871)))

(assert (=> b!1162142 (= res!771022 (bvsgt from!1455 i!673))))

(assert (=> b!1162142 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!523186 () Unit!38233)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75034 (_ BitVec 64) (_ BitVec 32)) Unit!38233)

(assert (=> b!1162142 (= lt!523186 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun lt!523188 () ListLongMap!16685)

(declare-fun lt!523199 () ListLongMap!16685)

(declare-fun bm!56633 () Bool)

(declare-fun +!3679 (ListLongMap!16685 tuple2!18704) ListLongMap!16685)

(assert (=> bm!56633 (= call!56636 (+!3679 (ite c!116129 lt!523199 lt!523188) (ite c!116129 (tuple2!18705 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!116125 (tuple2!18705 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18705 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun e!660872 () Bool)

(declare-fun lt!523183 () ListLongMap!16685)

(declare-fun b!1162143 () Bool)

(assert (=> b!1162143 (= e!660872 (= lt!523183 (getCurrentListMapNoExtraKeys!4792 lt!523189 lt!523190 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1162144 () Bool)

(declare-fun res!771012 () Bool)

(assert (=> b!1162144 (=> (not res!771012) (not e!660869))))

(assert (=> b!1162144 (= res!771012 (= (select (arr!36164 _keys!1208) i!673) k0!934))))

(declare-fun b!1162145 () Bool)

(declare-fun res!771018 () Bool)

(assert (=> b!1162145 (=> (not res!771018) (not e!660869))))

(assert (=> b!1162145 (= res!771018 (and (= (size!36700 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36701 _keys!1208) (size!36700 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1162146 () Bool)

(assert (=> b!1162146 (= e!660859 tp_is_empty!29121)))

(declare-fun b!1162147 () Bool)

(declare-fun res!771009 () Bool)

(assert (=> b!1162147 (=> (not res!771009) (not e!660861))))

(assert (=> b!1162147 (= res!771009 (arrayNoDuplicates!0 lt!523189 #b00000000000000000000000000000000 Nil!25477))))

(declare-fun b!1162148 () Bool)

(assert (=> b!1162148 (= e!660860 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!523200) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1162149 () Bool)

(declare-fun e!660873 () Unit!38233)

(declare-fun Unit!38236 () Unit!38233)

(assert (=> b!1162149 (= e!660873 Unit!38236)))

(declare-fun b!1162150 () Bool)

(assert (=> b!1162150 (= e!660858 e!660873)))

(declare-fun c!116127 () Bool)

(assert (=> b!1162150 (= c!116127 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!523200))))

(declare-fun b!1162151 () Bool)

(declare-fun res!771014 () Bool)

(assert (=> b!1162151 (=> (not res!771014) (not e!660869))))

(assert (=> b!1162151 (= res!771014 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36701 _keys!1208))))))

(declare-fun b!1162152 () Bool)

(declare-fun contains!6836 (ListLongMap!16685 (_ BitVec 64)) Bool)

(assert (=> b!1162152 (contains!6836 call!56636 k0!934)))

(declare-fun lt!523195 () Unit!38233)

(assert (=> b!1162152 (= lt!523195 call!56639)))

(declare-fun call!56634 () Bool)

(assert (=> b!1162152 call!56634))

(assert (=> b!1162152 (= lt!523199 (+!3679 lt!523188 (tuple2!18705 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!523201 () Unit!38233)

(declare-fun addStillContains!977 (ListLongMap!16685 (_ BitVec 64) V!43955 (_ BitVec 64)) Unit!38233)

(assert (=> b!1162152 (= lt!523201 (addStillContains!977 lt!523188 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1162152 (= e!660865 lt!523195)))

(declare-fun b!1162153 () Bool)

(assert (=> b!1162153 (= e!660863 (= call!56635 call!56638))))

(declare-fun mapNonEmpty!45506 () Bool)

(declare-fun tp!86485 () Bool)

(assert (=> mapNonEmpty!45506 (= mapRes!45506 (and tp!86485 e!660866))))

(declare-fun mapRest!45506 () (Array (_ BitVec 32) ValueCell!13851))

(declare-fun mapKey!45506 () (_ BitVec 32))

(declare-fun mapValue!45506 () ValueCell!13851)

(assert (=> mapNonEmpty!45506 (= (arr!36163 _values!996) (store mapRest!45506 mapKey!45506 mapValue!45506))))

(declare-fun b!1162154 () Bool)

(declare-fun res!771017 () Bool)

(assert (=> b!1162154 (=> (not res!771017) (not e!660869))))

(assert (=> b!1162154 (= res!771017 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25477))))

(declare-fun b!1162155 () Bool)

(declare-fun Unit!38237 () Unit!38233)

(assert (=> b!1162155 (= e!660862 Unit!38237)))

(declare-fun bm!56634 () Bool)

(assert (=> bm!56634 (= call!56634 (contains!6836 (ite c!116129 lt!523199 call!56640) k0!934))))

(declare-fun b!1162156 () Bool)

(assert (=> b!1162156 (= e!660860 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!56635 () Bool)

(assert (=> bm!56635 (= call!56633 call!56634)))

(declare-fun bm!56636 () Bool)

(assert (=> bm!56636 (= call!56639 (addStillContains!977 (ite c!116129 lt!523199 lt!523188) (ite c!116129 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!116125 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!116129 minValue!944 (ite c!116125 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1162157 () Bool)

(declare-fun e!660857 () Bool)

(assert (=> b!1162157 (= e!660867 e!660857)))

(declare-fun res!771016 () Bool)

(assert (=> b!1162157 (=> res!771016 e!660857)))

(assert (=> b!1162157 (= res!771016 (not (= (select (arr!36164 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1162157 e!660863))

(declare-fun c!116128 () Bool)

(assert (=> b!1162157 (= c!116128 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!523194 () Unit!38233)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!648 (array!75034 array!75032 (_ BitVec 32) (_ BitVec 32) V!43955 V!43955 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38233)

(assert (=> b!1162157 (= lt!523194 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!648 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162158 () Bool)

(assert (=> b!1162158 call!56633))

(declare-fun lt!523197 () Unit!38233)

(assert (=> b!1162158 (= lt!523197 call!56637)))

(assert (=> b!1162158 (= e!660873 lt!523197)))

(declare-fun bm!56637 () Bool)

(assert (=> bm!56637 (= call!56635 (getCurrentListMapNoExtraKeys!4792 lt!523189 lt!523190 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162159 () Bool)

(declare-fun res!771011 () Bool)

(assert (=> b!1162159 (=> (not res!771011) (not e!660869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1162159 (= res!771011 (validMask!0 mask!1564))))

(declare-fun b!1162160 () Bool)

(assert (=> b!1162160 (= e!660857 true)))

(assert (=> b!1162160 e!660872))

(declare-fun res!771023 () Bool)

(assert (=> b!1162160 (=> (not res!771023) (not e!660872))))

(assert (=> b!1162160 (= res!771023 (= lt!523183 lt!523188))))

(assert (=> b!1162160 (= lt!523183 (-!1427 lt!523192 k0!934))))

(declare-fun lt!523198 () V!43955)

(assert (=> b!1162160 (= (-!1427 (+!3679 lt!523188 (tuple2!18705 (select (arr!36164 _keys!1208) from!1455) lt!523198)) (select (arr!36164 _keys!1208) from!1455)) lt!523188)))

(declare-fun lt!523191 () Unit!38233)

(declare-fun addThenRemoveForNewKeyIsSame!262 (ListLongMap!16685 (_ BitVec 64) V!43955) Unit!38233)

(assert (=> b!1162160 (= lt!523191 (addThenRemoveForNewKeyIsSame!262 lt!523188 (select (arr!36164 _keys!1208) from!1455) lt!523198))))

(declare-fun get!18480 (ValueCell!13851 V!43955) V!43955)

(assert (=> b!1162160 (= lt!523198 (get!18480 (select (arr!36163 _values!996) from!1455) lt!523202))))

(declare-fun lt!523203 () Unit!38233)

(assert (=> b!1162160 (= lt!523203 e!660862)))

(declare-fun c!116126 () Bool)

(assert (=> b!1162160 (= c!116126 (contains!6836 lt!523188 k0!934))))

(assert (=> b!1162160 (= lt!523188 (getCurrentListMapNoExtraKeys!4792 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!45506 () Bool)

(assert (=> mapIsEmpty!45506 mapRes!45506))

(declare-fun b!1162161 () Bool)

(assert (=> b!1162161 (= e!660869 e!660861)))

(declare-fun res!771019 () Bool)

(assert (=> b!1162161 (=> (not res!771019) (not e!660861))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75034 (_ BitVec 32)) Bool)

(assert (=> b!1162161 (= res!771019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!523189 mask!1564))))

(assert (=> b!1162161 (= lt!523189 (array!75035 (store (arr!36164 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36701 _keys!1208)))))

(declare-fun b!1162162 () Bool)

(declare-fun res!771010 () Bool)

(assert (=> b!1162162 (=> (not res!771010) (not e!660869))))

(assert (=> b!1162162 (= res!771010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1162163 () Bool)

(declare-fun res!771021 () Bool)

(assert (=> b!1162163 (=> (not res!771021) (not e!660869))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1162163 (= res!771021 (validKeyInArray!0 k0!934))))

(assert (= (and start!99022 res!771020) b!1162159))

(assert (= (and b!1162159 res!771011) b!1162145))

(assert (= (and b!1162145 res!771018) b!1162162))

(assert (= (and b!1162162 res!771010) b!1162154))

(assert (= (and b!1162154 res!771017) b!1162151))

(assert (= (and b!1162151 res!771014) b!1162163))

(assert (= (and b!1162163 res!771021) b!1162144))

(assert (= (and b!1162144 res!771012) b!1162161))

(assert (= (and b!1162161 res!771019) b!1162147))

(assert (= (and b!1162147 res!771009) b!1162142))

(assert (= (and b!1162142 (not res!771022)) b!1162136))

(assert (= (and b!1162136 (not res!771015)) b!1162157))

(assert (= (and b!1162157 c!116128) b!1162140))

(assert (= (and b!1162157 (not c!116128)) b!1162153))

(assert (= (or b!1162140 b!1162153) bm!56637))

(assert (= (or b!1162140 b!1162153) bm!56630))

(assert (= (and b!1162157 (not res!771016)) b!1162160))

(assert (= (and b!1162160 c!116126) b!1162135))

(assert (= (and b!1162160 (not c!116126)) b!1162155))

(assert (= (and b!1162135 c!116129) b!1162152))

(assert (= (and b!1162135 (not c!116129)) b!1162137))

(assert (= (and b!1162137 c!116125) b!1162134))

(assert (= (and b!1162137 (not c!116125)) b!1162150))

(assert (= (and b!1162150 c!116127) b!1162158))

(assert (= (and b!1162150 (not c!116127)) b!1162149))

(assert (= (or b!1162134 b!1162158) bm!56632))

(assert (= (or b!1162134 b!1162158) bm!56631))

(assert (= (or b!1162134 b!1162158) bm!56635))

(assert (= (or b!1162152 bm!56635) bm!56634))

(assert (= (or b!1162152 bm!56632) bm!56636))

(assert (= (or b!1162152 bm!56631) bm!56633))

(assert (= (and b!1162135 c!116130) b!1162156))

(assert (= (and b!1162135 (not c!116130)) b!1162148))

(assert (= (and b!1162135 res!771013) b!1162138))

(assert (= (and b!1162160 res!771023) b!1162143))

(assert (= (and b!1162141 condMapEmpty!45506) mapIsEmpty!45506))

(assert (= (and b!1162141 (not condMapEmpty!45506)) mapNonEmpty!45506))

(get-info :version)

(assert (= (and mapNonEmpty!45506 ((_ is ValueCellFull!13851) mapValue!45506)) b!1162139))

(assert (= (and b!1162141 ((_ is ValueCellFull!13851) mapDefault!45506)) b!1162146))

(assert (= start!99022 b!1162141))

(declare-fun b_lambda!19715 () Bool)

(assert (=> (not b_lambda!19715) (not b!1162136)))

(declare-fun t!37069 () Bool)

(declare-fun tb!9411 () Bool)

(assert (=> (and start!99022 (= defaultEntry!1004 defaultEntry!1004) t!37069) tb!9411))

(declare-fun result!19379 () Bool)

(assert (=> tb!9411 (= result!19379 tp_is_empty!29121)))

(assert (=> b!1162136 t!37069))

(declare-fun b_and!40047 () Bool)

(assert (= b_and!40045 (and (=> t!37069 result!19379) b_and!40047)))

(declare-fun m!1070907 () Bool)

(assert (=> b!1162152 m!1070907))

(declare-fun m!1070909 () Bool)

(assert (=> b!1162152 m!1070909))

(declare-fun m!1070911 () Bool)

(assert (=> b!1162152 m!1070911))

(declare-fun m!1070913 () Bool)

(assert (=> b!1162159 m!1070913))

(declare-fun m!1070915 () Bool)

(assert (=> b!1162143 m!1070915))

(declare-fun m!1070917 () Bool)

(assert (=> b!1162157 m!1070917))

(declare-fun m!1070919 () Bool)

(assert (=> b!1162157 m!1070919))

(declare-fun m!1070921 () Bool)

(assert (=> b!1162156 m!1070921))

(declare-fun m!1070923 () Bool)

(assert (=> b!1162162 m!1070923))

(declare-fun m!1070925 () Bool)

(assert (=> b!1162160 m!1070925))

(declare-fun m!1070927 () Bool)

(assert (=> b!1162160 m!1070927))

(declare-fun m!1070929 () Bool)

(assert (=> b!1162160 m!1070929))

(assert (=> b!1162160 m!1070917))

(declare-fun m!1070931 () Bool)

(assert (=> b!1162160 m!1070931))

(assert (=> b!1162160 m!1070925))

(assert (=> b!1162160 m!1070917))

(declare-fun m!1070933 () Bool)

(assert (=> b!1162160 m!1070933))

(assert (=> b!1162160 m!1070927))

(declare-fun m!1070935 () Bool)

(assert (=> b!1162160 m!1070935))

(assert (=> b!1162160 m!1070917))

(declare-fun m!1070937 () Bool)

(assert (=> b!1162160 m!1070937))

(declare-fun m!1070939 () Bool)

(assert (=> b!1162160 m!1070939))

(assert (=> bm!56637 m!1070915))

(assert (=> bm!56630 m!1070937))

(declare-fun m!1070941 () Bool)

(assert (=> bm!56636 m!1070941))

(declare-fun m!1070943 () Bool)

(assert (=> mapNonEmpty!45506 m!1070943))

(declare-fun m!1070945 () Bool)

(assert (=> b!1162144 m!1070945))

(declare-fun m!1070947 () Bool)

(assert (=> bm!56634 m!1070947))

(declare-fun m!1070949 () Bool)

(assert (=> start!99022 m!1070949))

(declare-fun m!1070951 () Bool)

(assert (=> start!99022 m!1070951))

(declare-fun m!1070953 () Bool)

(assert (=> b!1162140 m!1070953))

(declare-fun m!1070955 () Bool)

(assert (=> b!1162154 m!1070955))

(declare-fun m!1070957 () Bool)

(assert (=> bm!56633 m!1070957))

(assert (=> b!1162138 m!1070921))

(declare-fun m!1070959 () Bool)

(assert (=> b!1162142 m!1070959))

(declare-fun m!1070961 () Bool)

(assert (=> b!1162142 m!1070961))

(declare-fun m!1070963 () Bool)

(assert (=> b!1162163 m!1070963))

(declare-fun m!1070965 () Bool)

(assert (=> b!1162136 m!1070965))

(declare-fun m!1070967 () Bool)

(assert (=> b!1162136 m!1070967))

(declare-fun m!1070969 () Bool)

(assert (=> b!1162136 m!1070969))

(declare-fun m!1070971 () Bool)

(assert (=> b!1162136 m!1070971))

(declare-fun m!1070973 () Bool)

(assert (=> b!1162135 m!1070973))

(declare-fun m!1070975 () Bool)

(assert (=> b!1162135 m!1070975))

(declare-fun m!1070977 () Bool)

(assert (=> b!1162135 m!1070977))

(declare-fun m!1070979 () Bool)

(assert (=> b!1162135 m!1070979))

(declare-fun m!1070981 () Bool)

(assert (=> b!1162161 m!1070981))

(declare-fun m!1070983 () Bool)

(assert (=> b!1162161 m!1070983))

(declare-fun m!1070985 () Bool)

(assert (=> b!1162147 m!1070985))

(check-sat (not bm!56633) (not b!1162163) (not b!1162136) (not b!1162152) (not b!1162154) (not mapNonEmpty!45506) (not b!1162162) (not b!1162135) (not b!1162161) tp_is_empty!29121 (not bm!56634) (not b!1162142) (not b!1162138) (not b!1162160) (not start!99022) (not b!1162159) (not b!1162147) (not b_lambda!19715) (not bm!56630) (not b_next!24591) (not bm!56637) (not b!1162143) (not b!1162140) (not b!1162156) (not bm!56636) (not b!1162157) b_and!40047)
(check-sat b_and!40047 (not b_next!24591))
