; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99786 () Bool)

(assert start!99786)

(declare-fun b_free!25329 () Bool)

(declare-fun b_next!25329 () Bool)

(assert (=> start!99786 (= b_free!25329 (not b_next!25329))))

(declare-fun tp!88702 () Bool)

(declare-fun b_and!41539 () Bool)

(assert (=> start!99786 (= tp!88702 b_and!41539)))

(declare-datatypes ((array!76486 0))(
  ( (array!76487 (arr!36889 (Array (_ BitVec 32) (_ BitVec 64))) (size!37426 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76486)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun e!673457 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1184421 () Bool)

(declare-fun arrayContainsKey!0 (array!76486 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1184421 (= e!673457 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1184422 () Bool)

(declare-fun e!673458 () Bool)

(declare-fun e!673463 () Bool)

(assert (=> b!1184422 (= e!673458 (not e!673463))))

(declare-fun res!787356 () Bool)

(assert (=> b!1184422 (=> res!787356 e!673463)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1184422 (= res!787356 (bvsgt from!1455 i!673))))

(assert (=> b!1184422 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39145 0))(
  ( (Unit!39146) )
))
(declare-fun lt!537086 () Unit!39145)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76486 (_ BitVec 64) (_ BitVec 32)) Unit!39145)

(assert (=> b!1184422 (= lt!537086 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1184423 () Bool)

(declare-fun res!787353 () Bool)

(declare-fun e!673459 () Bool)

(assert (=> b!1184423 (=> (not res!787353) (not e!673459))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76486 (_ BitVec 32)) Bool)

(assert (=> b!1184423 (= res!787353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1184424 () Bool)

(declare-fun e!673455 () Unit!39145)

(declare-fun Unit!39147 () Unit!39145)

(assert (=> b!1184424 (= e!673455 Unit!39147)))

(declare-fun b!1184425 () Bool)

(declare-fun Unit!39148 () Unit!39145)

(assert (=> b!1184425 (= e!673455 Unit!39148)))

(declare-fun lt!537083 () Unit!39145)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76486 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39145)

(assert (=> b!1184425 (= lt!537083 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1184425 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!537082 () Unit!39145)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76486 (_ BitVec 32) (_ BitVec 32)) Unit!39145)

(assert (=> b!1184425 (= lt!537082 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26101 0))(
  ( (Nil!26098) (Cons!26097 (h!27306 (_ BitVec 64)) (t!38429 List!26101)) )
))
(declare-fun arrayNoDuplicates!0 (array!76486 (_ BitVec 32) List!26101) Bool)

(assert (=> b!1184425 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26098)))

(declare-fun lt!537085 () Unit!39145)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76486 (_ BitVec 64) (_ BitVec 32) List!26101) Unit!39145)

(assert (=> b!1184425 (= lt!537085 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26098))))

(assert (=> b!1184425 false))

(declare-fun b!1184426 () Bool)

(declare-fun res!787350 () Bool)

(assert (=> b!1184426 (=> (not res!787350) (not e!673459))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44939 0))(
  ( (V!44940 (val!14986 Int)) )
))
(declare-datatypes ((ValueCell!14220 0))(
  ( (ValueCellFull!14220 (v!17625 V!44939)) (EmptyCell!14220) )
))
(declare-datatypes ((array!76488 0))(
  ( (array!76489 (arr!36890 (Array (_ BitVec 32) ValueCell!14220)) (size!37427 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76488)

(assert (=> b!1184426 (= res!787350 (and (= (size!37427 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37426 _keys!1208) (size!37427 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1184427 () Bool)

(declare-fun res!787355 () Bool)

(assert (=> b!1184427 (=> (not res!787355) (not e!673459))))

(assert (=> b!1184427 (= res!787355 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26098))))

(declare-fun res!787351 () Bool)

(assert (=> start!99786 (=> (not res!787351) (not e!673459))))

(assert (=> start!99786 (= res!787351 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37426 _keys!1208))))))

(assert (=> start!99786 e!673459))

(declare-fun tp_is_empty!29859 () Bool)

(assert (=> start!99786 tp_is_empty!29859))

(declare-fun array_inv!28034 (array!76486) Bool)

(assert (=> start!99786 (array_inv!28034 _keys!1208)))

(assert (=> start!99786 true))

(assert (=> start!99786 tp!88702))

(declare-fun e!673456 () Bool)

(declare-fun array_inv!28035 (array!76488) Bool)

(assert (=> start!99786 (and (array_inv!28035 _values!996) e!673456)))

(declare-fun b!1184428 () Bool)

(declare-fun e!673465 () Bool)

(assert (=> b!1184428 (= e!673465 true)))

(declare-datatypes ((tuple2!19338 0))(
  ( (tuple2!19339 (_1!9679 (_ BitVec 64)) (_2!9679 V!44939)) )
))
(declare-datatypes ((List!26102 0))(
  ( (Nil!26099) (Cons!26098 (h!27307 tuple2!19338) (t!38430 List!26102)) )
))
(declare-datatypes ((ListLongMap!17319 0))(
  ( (ListLongMap!17320 (toList!8675 List!26102)) )
))
(declare-fun lt!537079 () ListLongMap!17319)

(declare-fun lt!537090 () ListLongMap!17319)

(declare-fun -!1662 (ListLongMap!17319 (_ BitVec 64)) ListLongMap!17319)

(assert (=> b!1184428 (= (-!1662 lt!537079 k0!934) lt!537090)))

(declare-fun lt!537078 () V!44939)

(declare-fun lt!537081 () ListLongMap!17319)

(declare-fun lt!537092 () Unit!39145)

(declare-fun addRemoveCommutativeForDiffKeys!175 (ListLongMap!17319 (_ BitVec 64) V!44939 (_ BitVec 64)) Unit!39145)

(assert (=> b!1184428 (= lt!537092 (addRemoveCommutativeForDiffKeys!175 lt!537081 (select (arr!36889 _keys!1208) from!1455) lt!537078 k0!934))))

(declare-fun lt!537088 () ListLongMap!17319)

(declare-fun lt!537084 () ListLongMap!17319)

(declare-fun lt!537075 () ListLongMap!17319)

(assert (=> b!1184428 (and (= lt!537075 lt!537079) (= lt!537084 lt!537088))))

(declare-fun lt!537093 () tuple2!19338)

(declare-fun +!3885 (ListLongMap!17319 tuple2!19338) ListLongMap!17319)

(assert (=> b!1184428 (= lt!537079 (+!3885 lt!537081 lt!537093))))

(assert (=> b!1184428 (not (= (select (arr!36889 _keys!1208) from!1455) k0!934))))

(declare-fun lt!537091 () Unit!39145)

(assert (=> b!1184428 (= lt!537091 e!673455)))

(declare-fun c!117065 () Bool)

(assert (=> b!1184428 (= c!117065 (= (select (arr!36889 _keys!1208) from!1455) k0!934))))

(declare-fun e!673460 () Bool)

(assert (=> b!1184428 e!673460))

(declare-fun res!787352 () Bool)

(assert (=> b!1184428 (=> (not res!787352) (not e!673460))))

(declare-fun lt!537076 () ListLongMap!17319)

(assert (=> b!1184428 (= res!787352 (= lt!537076 lt!537090))))

(assert (=> b!1184428 (= lt!537090 (+!3885 lt!537084 lt!537093))))

(assert (=> b!1184428 (= lt!537093 (tuple2!19339 (select (arr!36889 _keys!1208) from!1455) lt!537078))))

(declare-fun lt!537080 () V!44939)

(declare-fun get!18917 (ValueCell!14220 V!44939) V!44939)

(assert (=> b!1184428 (= lt!537078 (get!18917 (select (arr!36890 _values!996) from!1455) lt!537080))))

(declare-fun b!1184429 () Bool)

(declare-fun e!673461 () Bool)

(declare-fun mapRes!46616 () Bool)

(assert (=> b!1184429 (= e!673456 (and e!673461 mapRes!46616))))

(declare-fun condMapEmpty!46616 () Bool)

(declare-fun mapDefault!46616 () ValueCell!14220)

(assert (=> b!1184429 (= condMapEmpty!46616 (= (arr!36890 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14220)) mapDefault!46616)))))

(declare-fun b!1184430 () Bool)

(assert (=> b!1184430 (= e!673461 tp_is_empty!29859)))

(declare-fun b!1184431 () Bool)

(declare-fun res!787362 () Bool)

(assert (=> b!1184431 (=> (not res!787362) (not e!673458))))

(declare-fun lt!537089 () array!76486)

(assert (=> b!1184431 (= res!787362 (arrayNoDuplicates!0 lt!537089 #b00000000000000000000000000000000 Nil!26098))))

(declare-fun b!1184432 () Bool)

(declare-fun res!787354 () Bool)

(assert (=> b!1184432 (=> (not res!787354) (not e!673459))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1184432 (= res!787354 (validKeyInArray!0 k0!934))))

(declare-fun b!1184433 () Bool)

(declare-fun e!673454 () Bool)

(assert (=> b!1184433 (= e!673454 tp_is_empty!29859)))

(declare-fun b!1184434 () Bool)

(assert (=> b!1184434 (= e!673459 e!673458)))

(declare-fun res!787357 () Bool)

(assert (=> b!1184434 (=> (not res!787357) (not e!673458))))

(assert (=> b!1184434 (= res!787357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!537089 mask!1564))))

(assert (=> b!1184434 (= lt!537089 (array!76487 (store (arr!36889 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37426 _keys!1208)))))

(declare-fun mapIsEmpty!46616 () Bool)

(assert (=> mapIsEmpty!46616 mapRes!46616))

(declare-fun b!1184435 () Bool)

(assert (=> b!1184435 (= e!673460 e!673457)))

(declare-fun res!787360 () Bool)

(assert (=> b!1184435 (=> res!787360 e!673457)))

(assert (=> b!1184435 (= res!787360 (not (= (select (arr!36889 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1184436 () Bool)

(declare-fun res!787358 () Bool)

(assert (=> b!1184436 (=> (not res!787358) (not e!673459))))

(assert (=> b!1184436 (= res!787358 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37426 _keys!1208))))))

(declare-fun b!1184437 () Bool)

(declare-fun e!673462 () Bool)

(assert (=> b!1184437 (= e!673463 e!673462)))

(declare-fun res!787359 () Bool)

(assert (=> b!1184437 (=> res!787359 e!673462)))

(assert (=> b!1184437 (= res!787359 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44939)

(declare-fun lt!537087 () array!76488)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44939)

(declare-fun getCurrentListMapNoExtraKeys!5095 (array!76486 array!76488 (_ BitVec 32) (_ BitVec 32) V!44939 V!44939 (_ BitVec 32) Int) ListLongMap!17319)

(assert (=> b!1184437 (= lt!537076 (getCurrentListMapNoExtraKeys!5095 lt!537089 lt!537087 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1184437 (= lt!537087 (array!76489 (store (arr!36890 _values!996) i!673 (ValueCellFull!14220 lt!537080)) (size!37427 _values!996)))))

(declare-fun dynLambda!3059 (Int (_ BitVec 64)) V!44939)

(assert (=> b!1184437 (= lt!537080 (dynLambda!3059 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1184437 (= lt!537075 (getCurrentListMapNoExtraKeys!5095 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1184438 () Bool)

(declare-fun res!787349 () Bool)

(assert (=> b!1184438 (=> (not res!787349) (not e!673459))))

(assert (=> b!1184438 (= res!787349 (= (select (arr!36889 _keys!1208) i!673) k0!934))))

(declare-fun b!1184439 () Bool)

(declare-fun res!787363 () Bool)

(assert (=> b!1184439 (=> (not res!787363) (not e!673459))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1184439 (= res!787363 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!46616 () Bool)

(declare-fun tp!88701 () Bool)

(assert (=> mapNonEmpty!46616 (= mapRes!46616 (and tp!88701 e!673454))))

(declare-fun mapRest!46616 () (Array (_ BitVec 32) ValueCell!14220))

(declare-fun mapValue!46616 () ValueCell!14220)

(declare-fun mapKey!46616 () (_ BitVec 32))

(assert (=> mapNonEmpty!46616 (= (arr!36890 _values!996) (store mapRest!46616 mapKey!46616 mapValue!46616))))

(declare-fun b!1184440 () Bool)

(assert (=> b!1184440 (= e!673462 e!673465)))

(declare-fun res!787361 () Bool)

(assert (=> b!1184440 (=> res!787361 e!673465)))

(assert (=> b!1184440 (= res!787361 (not (validKeyInArray!0 (select (arr!36889 _keys!1208) from!1455))))))

(assert (=> b!1184440 (= lt!537088 lt!537084)))

(assert (=> b!1184440 (= lt!537084 (-!1662 lt!537081 k0!934))))

(assert (=> b!1184440 (= lt!537088 (getCurrentListMapNoExtraKeys!5095 lt!537089 lt!537087 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1184440 (= lt!537081 (getCurrentListMapNoExtraKeys!5095 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!537077 () Unit!39145)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!878 (array!76486 array!76488 (_ BitVec 32) (_ BitVec 32) V!44939 V!44939 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39145)

(assert (=> b!1184440 (= lt!537077 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!878 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!99786 res!787351) b!1184439))

(assert (= (and b!1184439 res!787363) b!1184426))

(assert (= (and b!1184426 res!787350) b!1184423))

(assert (= (and b!1184423 res!787353) b!1184427))

(assert (= (and b!1184427 res!787355) b!1184436))

(assert (= (and b!1184436 res!787358) b!1184432))

(assert (= (and b!1184432 res!787354) b!1184438))

(assert (= (and b!1184438 res!787349) b!1184434))

(assert (= (and b!1184434 res!787357) b!1184431))

(assert (= (and b!1184431 res!787362) b!1184422))

(assert (= (and b!1184422 (not res!787356)) b!1184437))

(assert (= (and b!1184437 (not res!787359)) b!1184440))

(assert (= (and b!1184440 (not res!787361)) b!1184428))

(assert (= (and b!1184428 res!787352) b!1184435))

(assert (= (and b!1184435 (not res!787360)) b!1184421))

(assert (= (and b!1184428 c!117065) b!1184425))

(assert (= (and b!1184428 (not c!117065)) b!1184424))

(assert (= (and b!1184429 condMapEmpty!46616) mapIsEmpty!46616))

(assert (= (and b!1184429 (not condMapEmpty!46616)) mapNonEmpty!46616))

(get-info :version)

(assert (= (and mapNonEmpty!46616 ((_ is ValueCellFull!14220) mapValue!46616)) b!1184433))

(assert (= (and b!1184429 ((_ is ValueCellFull!14220) mapDefault!46616)) b!1184430))

(assert (= start!99786 b!1184429))

(declare-fun b_lambda!20491 () Bool)

(assert (=> (not b_lambda!20491) (not b!1184437)))

(declare-fun t!38428 () Bool)

(declare-fun tb!10149 () Bool)

(assert (=> (and start!99786 (= defaultEntry!1004 defaultEntry!1004) t!38428) tb!10149))

(declare-fun result!20857 () Bool)

(assert (=> tb!10149 (= result!20857 tp_is_empty!29859)))

(assert (=> b!1184437 t!38428))

(declare-fun b_and!41541 () Bool)

(assert (= b_and!41539 (and (=> t!38428 result!20857) b_and!41541)))

(declare-fun m!1092765 () Bool)

(assert (=> b!1184435 m!1092765))

(declare-fun m!1092767 () Bool)

(assert (=> b!1184422 m!1092767))

(declare-fun m!1092769 () Bool)

(assert (=> b!1184422 m!1092769))

(declare-fun m!1092771 () Bool)

(assert (=> b!1184428 m!1092771))

(declare-fun m!1092773 () Bool)

(assert (=> b!1184428 m!1092773))

(declare-fun m!1092775 () Bool)

(assert (=> b!1184428 m!1092775))

(assert (=> b!1184428 m!1092771))

(declare-fun m!1092777 () Bool)

(assert (=> b!1184428 m!1092777))

(assert (=> b!1184428 m!1092765))

(declare-fun m!1092779 () Bool)

(assert (=> b!1184428 m!1092779))

(assert (=> b!1184428 m!1092765))

(declare-fun m!1092781 () Bool)

(assert (=> b!1184428 m!1092781))

(declare-fun m!1092783 () Bool)

(assert (=> b!1184439 m!1092783))

(declare-fun m!1092785 () Bool)

(assert (=> mapNonEmpty!46616 m!1092785))

(declare-fun m!1092787 () Bool)

(assert (=> b!1184432 m!1092787))

(declare-fun m!1092789 () Bool)

(assert (=> start!99786 m!1092789))

(declare-fun m!1092791 () Bool)

(assert (=> start!99786 m!1092791))

(declare-fun m!1092793 () Bool)

(assert (=> b!1184431 m!1092793))

(declare-fun m!1092795 () Bool)

(assert (=> b!1184434 m!1092795))

(declare-fun m!1092797 () Bool)

(assert (=> b!1184434 m!1092797))

(declare-fun m!1092799 () Bool)

(assert (=> b!1184425 m!1092799))

(declare-fun m!1092801 () Bool)

(assert (=> b!1184425 m!1092801))

(declare-fun m!1092803 () Bool)

(assert (=> b!1184425 m!1092803))

(declare-fun m!1092805 () Bool)

(assert (=> b!1184425 m!1092805))

(declare-fun m!1092807 () Bool)

(assert (=> b!1184425 m!1092807))

(declare-fun m!1092809 () Bool)

(assert (=> b!1184423 m!1092809))

(declare-fun m!1092811 () Bool)

(assert (=> b!1184437 m!1092811))

(declare-fun m!1092813 () Bool)

(assert (=> b!1184437 m!1092813))

(declare-fun m!1092815 () Bool)

(assert (=> b!1184437 m!1092815))

(declare-fun m!1092817 () Bool)

(assert (=> b!1184437 m!1092817))

(declare-fun m!1092819 () Bool)

(assert (=> b!1184427 m!1092819))

(declare-fun m!1092821 () Bool)

(assert (=> b!1184438 m!1092821))

(declare-fun m!1092823 () Bool)

(assert (=> b!1184421 m!1092823))

(declare-fun m!1092825 () Bool)

(assert (=> b!1184440 m!1092825))

(declare-fun m!1092827 () Bool)

(assert (=> b!1184440 m!1092827))

(declare-fun m!1092829 () Bool)

(assert (=> b!1184440 m!1092829))

(declare-fun m!1092831 () Bool)

(assert (=> b!1184440 m!1092831))

(assert (=> b!1184440 m!1092765))

(declare-fun m!1092833 () Bool)

(assert (=> b!1184440 m!1092833))

(assert (=> b!1184440 m!1092765))

(check-sat (not b!1184434) (not mapNonEmpty!46616) tp_is_empty!29859 (not b!1184440) (not b!1184422) (not b!1184439) (not b!1184432) (not b!1184431) (not b!1184425) (not b!1184437) (not b!1184427) (not b_next!25329) (not b!1184428) (not b!1184421) b_and!41541 (not b!1184423) (not start!99786) (not b_lambda!20491))
(check-sat b_and!41541 (not b_next!25329))
