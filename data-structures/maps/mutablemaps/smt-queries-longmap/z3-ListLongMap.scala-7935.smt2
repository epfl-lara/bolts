; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98488 () Bool)

(assert start!98488)

(declare-fun b_free!24057 () Bool)

(declare-fun b_next!24057 () Bool)

(assert (=> start!98488 (= b_free!24057 (not b_next!24057))))

(declare-fun tp!84883 () Bool)

(declare-fun b_and!38977 () Bool)

(assert (=> start!98488 (= tp!84883 b_and!38977)))

(declare-datatypes ((array!73992 0))(
  ( (array!73993 (arr!35643 (Array (_ BitVec 32) (_ BitVec 64))) (size!36180 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73992)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!647460 () Bool)

(declare-fun b!1137781 () Bool)

(declare-fun arrayContainsKey!0 (array!73992 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1137781 (= e!647460 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1137782 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!506071 () Bool)

(assert (=> b!1137782 (= e!647460 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!506071) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!43243 0))(
  ( (V!43244 (val!14350 Int)) )
))
(declare-fun zeroValue!944 () V!43243)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13584 0))(
  ( (ValueCellFull!13584 (v!16988 V!43243)) (EmptyCell!13584) )
))
(declare-datatypes ((array!73994 0))(
  ( (array!73995 (arr!35644 (Array (_ BitVec 32) ValueCell!13584)) (size!36181 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73994)

(declare-fun minValue!944 () V!43243)

(declare-datatypes ((tuple2!18216 0))(
  ( (tuple2!18217 (_1!9118 (_ BitVec 64)) (_2!9118 V!43243)) )
))
(declare-datatypes ((List!25023 0))(
  ( (Nil!25020) (Cons!25019 (h!26228 tuple2!18216) (t!36079 List!25023)) )
))
(declare-datatypes ((ListLongMap!16197 0))(
  ( (ListLongMap!16198 (toList!8114 List!25023)) )
))
(declare-fun call!50229 () ListLongMap!16197)

(declare-fun bm!50222 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4561 (array!73992 array!73994 (_ BitVec 32) (_ BitVec 32) V!43243 V!43243 (_ BitVec 32) Int) ListLongMap!16197)

(assert (=> bm!50222 (= call!50229 (getCurrentListMapNoExtraKeys!4561 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1137783 () Bool)

(declare-fun e!647457 () Bool)

(declare-fun e!647466 () Bool)

(assert (=> b!1137783 (= e!647457 (not e!647466))))

(declare-fun res!759206 () Bool)

(assert (=> b!1137783 (=> res!759206 e!647466)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1137783 (= res!759206 (bvsgt from!1455 i!673))))

(assert (=> b!1137783 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37221 0))(
  ( (Unit!37222) )
))
(declare-fun lt!506082 () Unit!37221)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73992 (_ BitVec 64) (_ BitVec 32)) Unit!37221)

(assert (=> b!1137783 (= lt!506082 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1137784 () Bool)

(declare-fun res!759215 () Bool)

(declare-fun e!647454 () Bool)

(assert (=> b!1137784 (=> (not res!759215) (not e!647454))))

(assert (=> b!1137784 (= res!759215 (and (= (size!36181 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36180 _keys!1208) (size!36181 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1137785 () Bool)

(declare-fun res!759214 () Bool)

(assert (=> b!1137785 (=> (not res!759214) (not e!647454))))

(assert (=> b!1137785 (= res!759214 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36180 _keys!1208))))))

(declare-fun b!1137786 () Bool)

(declare-fun e!647452 () Unit!37221)

(declare-fun Unit!37223 () Unit!37221)

(assert (=> b!1137786 (= e!647452 Unit!37223)))

(assert (=> b!1137786 (= lt!506071 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!111322 () Bool)

(assert (=> b!1137786 (= c!111322 (and (not lt!506071) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!506072 () Unit!37221)

(declare-fun e!647455 () Unit!37221)

(assert (=> b!1137786 (= lt!506072 e!647455)))

(declare-fun lt!506080 () Unit!37221)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!371 (array!73992 array!73994 (_ BitVec 32) (_ BitVec 32) V!43243 V!43243 (_ BitVec 64) (_ BitVec 32) Int) Unit!37221)

(assert (=> b!1137786 (= lt!506080 (lemmaListMapContainsThenArrayContainsFrom!371 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111320 () Bool)

(assert (=> b!1137786 (= c!111320 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!759209 () Bool)

(assert (=> b!1137786 (= res!759209 e!647460)))

(declare-fun e!647451 () Bool)

(assert (=> b!1137786 (=> (not res!759209) (not e!647451))))

(assert (=> b!1137786 e!647451))

(declare-fun lt!506088 () Unit!37221)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73992 (_ BitVec 32) (_ BitVec 32)) Unit!37221)

(assert (=> b!1137786 (= lt!506088 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25024 0))(
  ( (Nil!25021) (Cons!25020 (h!26229 (_ BitVec 64)) (t!36080 List!25024)) )
))
(declare-fun arrayNoDuplicates!0 (array!73992 (_ BitVec 32) List!25024) Bool)

(assert (=> b!1137786 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25021)))

(declare-fun lt!506086 () Unit!37221)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!73992 (_ BitVec 64) (_ BitVec 32) List!25024) Unit!37221)

(assert (=> b!1137786 (= lt!506086 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25021))))

(assert (=> b!1137786 false))

(declare-fun b!1137787 () Bool)

(declare-fun res!759213 () Bool)

(assert (=> b!1137787 (=> (not res!759213) (not e!647454))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1137787 (= res!759213 (validKeyInArray!0 k0!934))))

(declare-fun b!1137788 () Bool)

(declare-fun e!647465 () Unit!37221)

(declare-fun Unit!37224 () Unit!37221)

(assert (=> b!1137788 (= e!647465 Unit!37224)))

(declare-fun b!1137789 () Bool)

(declare-fun res!759207 () Bool)

(assert (=> b!1137789 (=> (not res!759207) (not e!647457))))

(declare-fun lt!506084 () array!73992)

(assert (=> b!1137789 (= res!759207 (arrayNoDuplicates!0 lt!506084 #b00000000000000000000000000000000 Nil!25021))))

(declare-fun b!1137790 () Bool)

(declare-fun e!647463 () Unit!37221)

(assert (=> b!1137790 (= e!647463 e!647465)))

(declare-fun c!111323 () Bool)

(assert (=> b!1137790 (= c!111323 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!506071))))

(declare-fun mapNonEmpty!44705 () Bool)

(declare-fun mapRes!44705 () Bool)

(declare-fun tp!84882 () Bool)

(declare-fun e!647456 () Bool)

(assert (=> mapNonEmpty!44705 (= mapRes!44705 (and tp!84882 e!647456))))

(declare-fun mapKey!44705 () (_ BitVec 32))

(declare-fun mapValue!44705 () ValueCell!13584)

(declare-fun mapRest!44705 () (Array (_ BitVec 32) ValueCell!13584))

(assert (=> mapNonEmpty!44705 (= (arr!35644 _values!996) (store mapRest!44705 mapKey!44705 mapValue!44705))))

(declare-fun bm!50223 () Bool)

(declare-fun call!50228 () Unit!37221)

(declare-fun lt!506074 () ListLongMap!16197)

(declare-fun c!111319 () Bool)

(declare-fun lt!506078 () ListLongMap!16197)

(declare-fun addStillContains!766 (ListLongMap!16197 (_ BitVec 64) V!43243 (_ BitVec 64)) Unit!37221)

(assert (=> bm!50223 (= call!50228 (addStillContains!766 (ite c!111322 lt!506074 lt!506078) (ite c!111322 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!111319 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!111322 minValue!944 (ite c!111319 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1137791 () Bool)

(declare-fun e!647461 () Bool)

(declare-fun call!50225 () ListLongMap!16197)

(assert (=> b!1137791 (= e!647461 (= call!50225 call!50229))))

(declare-fun b!1137792 () Bool)

(declare-fun lt!506079 () Unit!37221)

(assert (=> b!1137792 (= e!647463 lt!506079)))

(declare-fun call!50226 () Unit!37221)

(assert (=> b!1137792 (= lt!506079 call!50226)))

(declare-fun call!50230 () Bool)

(assert (=> b!1137792 call!50230))

(declare-fun b!1137793 () Bool)

(assert (=> b!1137793 (= c!111319 (and (not lt!506071) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1137793 (= e!647455 e!647463)))

(declare-fun bm!50224 () Bool)

(declare-fun call!50227 () ListLongMap!16197)

(declare-fun call!50231 () ListLongMap!16197)

(assert (=> bm!50224 (= call!50227 call!50231)))

(declare-fun bm!50225 () Bool)

(declare-fun +!3466 (ListLongMap!16197 tuple2!18216) ListLongMap!16197)

(assert (=> bm!50225 (= call!50231 (+!3466 (ite c!111322 lt!506074 lt!506078) (ite c!111322 (tuple2!18217 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!111319 (tuple2!18217 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18217 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1137794 () Bool)

(declare-fun e!647458 () Bool)

(declare-fun e!647453 () Bool)

(assert (=> b!1137794 (= e!647458 (and e!647453 mapRes!44705))))

(declare-fun condMapEmpty!44705 () Bool)

(declare-fun mapDefault!44705 () ValueCell!13584)

(assert (=> b!1137794 (= condMapEmpty!44705 (= (arr!35644 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13584)) mapDefault!44705)))))

(declare-fun b!1137795 () Bool)

(declare-fun e!647464 () Bool)

(declare-fun e!647462 () Bool)

(assert (=> b!1137795 (= e!647464 e!647462)))

(declare-fun res!759208 () Bool)

(assert (=> b!1137795 (=> res!759208 e!647462)))

(assert (=> b!1137795 (= res!759208 (not (= (select (arr!35643 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1137795 e!647461))

(declare-fun c!111324 () Bool)

(assert (=> b!1137795 (= c!111324 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!506076 () Unit!37221)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!478 (array!73992 array!73994 (_ BitVec 32) (_ BitVec 32) V!43243 V!43243 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37221)

(assert (=> b!1137795 (= lt!506076 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!478 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1137796 () Bool)

(declare-fun res!759205 () Bool)

(assert (=> b!1137796 (=> (not res!759205) (not e!647454))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73992 (_ BitVec 32)) Bool)

(assert (=> b!1137796 (= res!759205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1137797 () Bool)

(declare-fun Unit!37225 () Unit!37221)

(assert (=> b!1137797 (= e!647452 Unit!37225)))

(declare-fun b!1137798 () Bool)

(declare-fun res!759218 () Bool)

(assert (=> b!1137798 (=> (not res!759218) (not e!647454))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1137798 (= res!759218 (validMask!0 mask!1564))))

(declare-fun b!1137799 () Bool)

(declare-fun contains!6624 (ListLongMap!16197 (_ BitVec 64)) Bool)

(assert (=> b!1137799 (contains!6624 call!50231 k0!934)))

(declare-fun lt!506083 () Unit!37221)

(assert (=> b!1137799 (= lt!506083 call!50228)))

(declare-fun call!50232 () Bool)

(assert (=> b!1137799 call!50232))

(assert (=> b!1137799 (= lt!506074 (+!3466 lt!506078 (tuple2!18217 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!506077 () Unit!37221)

(assert (=> b!1137799 (= lt!506077 (addStillContains!766 lt!506078 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1137799 (= e!647455 lt!506083)))

(declare-fun b!1137800 () Bool)

(declare-fun tp_is_empty!28587 () Bool)

(assert (=> b!1137800 (= e!647453 tp_is_empty!28587)))

(declare-fun b!1137801 () Bool)

(declare-fun res!759212 () Bool)

(assert (=> b!1137801 (=> (not res!759212) (not e!647454))))

(assert (=> b!1137801 (= res!759212 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25021))))

(declare-fun b!1137802 () Bool)

(assert (=> b!1137802 call!50230))

(declare-fun lt!506075 () Unit!37221)

(assert (=> b!1137802 (= lt!506075 call!50226)))

(assert (=> b!1137802 (= e!647465 lt!506075)))

(declare-fun b!1137803 () Bool)

(assert (=> b!1137803 (= e!647462 true)))

(declare-fun lt!506087 () Unit!37221)

(assert (=> b!1137803 (= lt!506087 e!647452)))

(declare-fun c!111321 () Bool)

(assert (=> b!1137803 (= c!111321 (contains!6624 lt!506078 k0!934))))

(assert (=> b!1137803 (= lt!506078 (getCurrentListMapNoExtraKeys!4561 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50227 () Bool)

(assert (=> bm!50227 (= call!50230 call!50232)))

(declare-fun b!1137804 () Bool)

(declare-fun -!1221 (ListLongMap!16197 (_ BitVec 64)) ListLongMap!16197)

(assert (=> b!1137804 (= e!647461 (= call!50225 (-!1221 call!50229 k0!934)))))

(declare-fun bm!50228 () Bool)

(assert (=> bm!50228 (= call!50232 (contains!6624 (ite c!111322 lt!506074 call!50227) k0!934))))

(declare-fun bm!50229 () Bool)

(declare-fun lt!506081 () array!73994)

(assert (=> bm!50229 (= call!50225 (getCurrentListMapNoExtraKeys!4561 lt!506084 lt!506081 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44705 () Bool)

(assert (=> mapIsEmpty!44705 mapRes!44705))

(declare-fun bm!50226 () Bool)

(assert (=> bm!50226 (= call!50226 call!50228)))

(declare-fun res!759216 () Bool)

(assert (=> start!98488 (=> (not res!759216) (not e!647454))))

(assert (=> start!98488 (= res!759216 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36180 _keys!1208))))))

(assert (=> start!98488 e!647454))

(assert (=> start!98488 tp_is_empty!28587))

(declare-fun array_inv!27202 (array!73992) Bool)

(assert (=> start!98488 (array_inv!27202 _keys!1208)))

(assert (=> start!98488 true))

(assert (=> start!98488 tp!84883))

(declare-fun array_inv!27203 (array!73994) Bool)

(assert (=> start!98488 (and (array_inv!27203 _values!996) e!647458)))

(declare-fun b!1137805 () Bool)

(declare-fun res!759211 () Bool)

(assert (=> b!1137805 (=> (not res!759211) (not e!647454))))

(assert (=> b!1137805 (= res!759211 (= (select (arr!35643 _keys!1208) i!673) k0!934))))

(declare-fun b!1137806 () Bool)

(assert (=> b!1137806 (= e!647466 e!647464)))

(declare-fun res!759217 () Bool)

(assert (=> b!1137806 (=> res!759217 e!647464)))

(assert (=> b!1137806 (= res!759217 (not (= from!1455 i!673)))))

(declare-fun lt!506073 () ListLongMap!16197)

(assert (=> b!1137806 (= lt!506073 (getCurrentListMapNoExtraKeys!4561 lt!506084 lt!506081 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2622 (Int (_ BitVec 64)) V!43243)

(assert (=> b!1137806 (= lt!506081 (array!73995 (store (arr!35644 _values!996) i!673 (ValueCellFull!13584 (dynLambda!2622 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36181 _values!996)))))

(declare-fun lt!506085 () ListLongMap!16197)

(assert (=> b!1137806 (= lt!506085 (getCurrentListMapNoExtraKeys!4561 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1137807 () Bool)

(assert (=> b!1137807 (= e!647456 tp_is_empty!28587)))

(declare-fun b!1137808 () Bool)

(assert (=> b!1137808 (= e!647454 e!647457)))

(declare-fun res!759210 () Bool)

(assert (=> b!1137808 (=> (not res!759210) (not e!647457))))

(assert (=> b!1137808 (= res!759210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!506084 mask!1564))))

(assert (=> b!1137808 (= lt!506084 (array!73993 (store (arr!35643 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36180 _keys!1208)))))

(declare-fun b!1137809 () Bool)

(assert (=> b!1137809 (= e!647451 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (= (and start!98488 res!759216) b!1137798))

(assert (= (and b!1137798 res!759218) b!1137784))

(assert (= (and b!1137784 res!759215) b!1137796))

(assert (= (and b!1137796 res!759205) b!1137801))

(assert (= (and b!1137801 res!759212) b!1137785))

(assert (= (and b!1137785 res!759214) b!1137787))

(assert (= (and b!1137787 res!759213) b!1137805))

(assert (= (and b!1137805 res!759211) b!1137808))

(assert (= (and b!1137808 res!759210) b!1137789))

(assert (= (and b!1137789 res!759207) b!1137783))

(assert (= (and b!1137783 (not res!759206)) b!1137806))

(assert (= (and b!1137806 (not res!759217)) b!1137795))

(assert (= (and b!1137795 c!111324) b!1137804))

(assert (= (and b!1137795 (not c!111324)) b!1137791))

(assert (= (or b!1137804 b!1137791) bm!50229))

(assert (= (or b!1137804 b!1137791) bm!50222))

(assert (= (and b!1137795 (not res!759208)) b!1137803))

(assert (= (and b!1137803 c!111321) b!1137786))

(assert (= (and b!1137803 (not c!111321)) b!1137797))

(assert (= (and b!1137786 c!111322) b!1137799))

(assert (= (and b!1137786 (not c!111322)) b!1137793))

(assert (= (and b!1137793 c!111319) b!1137792))

(assert (= (and b!1137793 (not c!111319)) b!1137790))

(assert (= (and b!1137790 c!111323) b!1137802))

(assert (= (and b!1137790 (not c!111323)) b!1137788))

(assert (= (or b!1137792 b!1137802) bm!50226))

(assert (= (or b!1137792 b!1137802) bm!50224))

(assert (= (or b!1137792 b!1137802) bm!50227))

(assert (= (or b!1137799 bm!50227) bm!50228))

(assert (= (or b!1137799 bm!50226) bm!50223))

(assert (= (or b!1137799 bm!50224) bm!50225))

(assert (= (and b!1137786 c!111320) b!1137781))

(assert (= (and b!1137786 (not c!111320)) b!1137782))

(assert (= (and b!1137786 res!759209) b!1137809))

(assert (= (and b!1137794 condMapEmpty!44705) mapIsEmpty!44705))

(assert (= (and b!1137794 (not condMapEmpty!44705)) mapNonEmpty!44705))

(get-info :version)

(assert (= (and mapNonEmpty!44705 ((_ is ValueCellFull!13584) mapValue!44705)) b!1137807))

(assert (= (and b!1137794 ((_ is ValueCellFull!13584) mapDefault!44705)) b!1137800))

(assert (= start!98488 b!1137794))

(declare-fun b_lambda!19181 () Bool)

(assert (=> (not b_lambda!19181) (not b!1137806)))

(declare-fun t!36078 () Bool)

(declare-fun tb!8877 () Bool)

(assert (=> (and start!98488 (= defaultEntry!1004 defaultEntry!1004) t!36078) tb!8877))

(declare-fun result!18311 () Bool)

(assert (=> tb!8877 (= result!18311 tp_is_empty!28587)))

(assert (=> b!1137806 t!36078))

(declare-fun b_and!38979 () Bool)

(assert (= b_and!38977 (and (=> t!36078 result!18311) b_and!38979)))

(declare-fun m!1049831 () Bool)

(assert (=> bm!50225 m!1049831))

(declare-fun m!1049833 () Bool)

(assert (=> b!1137809 m!1049833))

(declare-fun m!1049835 () Bool)

(assert (=> b!1137805 m!1049835))

(declare-fun m!1049837 () Bool)

(assert (=> b!1137787 m!1049837))

(declare-fun m!1049839 () Bool)

(assert (=> bm!50228 m!1049839))

(declare-fun m!1049841 () Bool)

(assert (=> bm!50229 m!1049841))

(declare-fun m!1049843 () Bool)

(assert (=> start!98488 m!1049843))

(declare-fun m!1049845 () Bool)

(assert (=> start!98488 m!1049845))

(declare-fun m!1049847 () Bool)

(assert (=> b!1137803 m!1049847))

(declare-fun m!1049849 () Bool)

(assert (=> b!1137803 m!1049849))

(declare-fun m!1049851 () Bool)

(assert (=> b!1137806 m!1049851))

(declare-fun m!1049853 () Bool)

(assert (=> b!1137806 m!1049853))

(declare-fun m!1049855 () Bool)

(assert (=> b!1137806 m!1049855))

(declare-fun m!1049857 () Bool)

(assert (=> b!1137806 m!1049857))

(declare-fun m!1049859 () Bool)

(assert (=> b!1137783 m!1049859))

(declare-fun m!1049861 () Bool)

(assert (=> b!1137783 m!1049861))

(declare-fun m!1049863 () Bool)

(assert (=> mapNonEmpty!44705 m!1049863))

(declare-fun m!1049865 () Bool)

(assert (=> b!1137798 m!1049865))

(declare-fun m!1049867 () Bool)

(assert (=> b!1137808 m!1049867))

(declare-fun m!1049869 () Bool)

(assert (=> b!1137808 m!1049869))

(declare-fun m!1049871 () Bool)

(assert (=> b!1137796 m!1049871))

(assert (=> b!1137781 m!1049833))

(declare-fun m!1049873 () Bool)

(assert (=> b!1137801 m!1049873))

(declare-fun m!1049875 () Bool)

(assert (=> b!1137795 m!1049875))

(declare-fun m!1049877 () Bool)

(assert (=> b!1137795 m!1049877))

(declare-fun m!1049879 () Bool)

(assert (=> b!1137786 m!1049879))

(declare-fun m!1049881 () Bool)

(assert (=> b!1137786 m!1049881))

(declare-fun m!1049883 () Bool)

(assert (=> b!1137786 m!1049883))

(declare-fun m!1049885 () Bool)

(assert (=> b!1137786 m!1049885))

(declare-fun m!1049887 () Bool)

(assert (=> b!1137789 m!1049887))

(assert (=> bm!50222 m!1049849))

(declare-fun m!1049889 () Bool)

(assert (=> b!1137799 m!1049889))

(declare-fun m!1049891 () Bool)

(assert (=> b!1137799 m!1049891))

(declare-fun m!1049893 () Bool)

(assert (=> b!1137799 m!1049893))

(declare-fun m!1049895 () Bool)

(assert (=> bm!50223 m!1049895))

(declare-fun m!1049897 () Bool)

(assert (=> b!1137804 m!1049897))

(check-sat (not bm!50225) (not b!1137787) (not b!1137799) (not b!1137808) (not b!1137783) (not b!1137801) (not b!1137796) (not bm!50229) (not b!1137804) (not start!98488) (not bm!50228) (not b!1137786) (not b!1137795) tp_is_empty!28587 (not b!1137781) (not bm!50223) (not b_lambda!19181) b_and!38979 (not b!1137789) (not b!1137798) (not b!1137809) (not b!1137806) (not mapNonEmpty!44705) (not bm!50222) (not b!1137803) (not b_next!24057))
(check-sat b_and!38979 (not b_next!24057))
