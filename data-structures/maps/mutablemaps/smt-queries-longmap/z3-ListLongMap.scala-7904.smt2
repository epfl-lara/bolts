; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98206 () Bool)

(assert start!98206)

(declare-fun b_free!23871 () Bool)

(declare-fun b_next!23871 () Bool)

(assert (=> start!98206 (= b_free!23871 (not b_next!23871))))

(declare-fun tp!84318 () Bool)

(declare-fun b_and!38547 () Bool)

(assert (=> start!98206 (= tp!84318 b_and!38547)))

(declare-datatypes ((V!42995 0))(
  ( (V!42996 (val!14257 Int)) )
))
(declare-fun zeroValue!944 () V!42995)

(declare-datatypes ((array!73620 0))(
  ( (array!73621 (arr!35459 (Array (_ BitVec 32) (_ BitVec 64))) (size!35996 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73620)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18038 0))(
  ( (tuple2!18039 (_1!9029 (_ BitVec 64)) (_2!9029 V!42995)) )
))
(declare-datatypes ((List!24858 0))(
  ( (Nil!24855) (Cons!24854 (h!26063 tuple2!18038) (t!35728 List!24858)) )
))
(declare-datatypes ((ListLongMap!16019 0))(
  ( (ListLongMap!16020 (toList!8025 List!24858)) )
))
(declare-fun call!47927 () ListLongMap!16019)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13491 0))(
  ( (ValueCellFull!13491 (v!16891 V!42995)) (EmptyCell!13491) )
))
(declare-datatypes ((array!73622 0))(
  ( (array!73623 (arr!35460 (Array (_ BitVec 32) ValueCell!13491)) (size!35997 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73622)

(declare-fun minValue!944 () V!42995)

(declare-fun bm!47923 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4479 (array!73620 array!73622 (_ BitVec 32) (_ BitVec 32) V!42995 V!42995 (_ BitVec 32) Int) ListLongMap!16019)

(assert (=> bm!47923 (= call!47927 (getCurrentListMapNoExtraKeys!4479 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129010 () Bool)

(declare-fun res!754583 () Bool)

(declare-fun e!642590 () Bool)

(assert (=> b!1129010 (=> (not res!754583) (not e!642590))))

(declare-fun lt!501189 () array!73620)

(declare-datatypes ((List!24859 0))(
  ( (Nil!24856) (Cons!24855 (h!26064 (_ BitVec 64)) (t!35729 List!24859)) )
))
(declare-fun arrayNoDuplicates!0 (array!73620 (_ BitVec 32) List!24859) Bool)

(assert (=> b!1129010 (= res!754583 (arrayNoDuplicates!0 lt!501189 #b00000000000000000000000000000000 Nil!24856))))

(declare-fun b!1129011 () Bool)

(declare-fun e!642591 () Bool)

(assert (=> b!1129011 (= e!642590 (not e!642591))))

(declare-fun res!754579 () Bool)

(assert (=> b!1129011 (=> res!754579 e!642591)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1129011 (= res!754579 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73620 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1129011 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36936 0))(
  ( (Unit!36937) )
))
(declare-fun lt!501178 () Unit!36936)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73620 (_ BitVec 64) (_ BitVec 32)) Unit!36936)

(assert (=> b!1129011 (= lt!501178 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1129012 () Bool)

(declare-fun e!642579 () Unit!36936)

(declare-fun Unit!36938 () Unit!36936)

(assert (=> b!1129012 (= e!642579 Unit!36938)))

(declare-fun res!754587 () Bool)

(declare-fun e!642593 () Bool)

(assert (=> start!98206 (=> (not res!754587) (not e!642593))))

(assert (=> start!98206 (= res!754587 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35996 _keys!1208))))))

(assert (=> start!98206 e!642593))

(declare-fun tp_is_empty!28401 () Bool)

(assert (=> start!98206 tp_is_empty!28401))

(declare-fun array_inv!27074 (array!73620) Bool)

(assert (=> start!98206 (array_inv!27074 _keys!1208)))

(assert (=> start!98206 true))

(assert (=> start!98206 tp!84318))

(declare-fun e!642580 () Bool)

(declare-fun array_inv!27075 (array!73622) Bool)

(assert (=> start!98206 (and (array_inv!27075 _values!996) e!642580)))

(declare-fun bm!47924 () Bool)

(declare-fun call!47928 () Bool)

(declare-fun call!47926 () Bool)

(assert (=> bm!47924 (= call!47928 call!47926)))

(declare-fun bm!47925 () Bool)

(declare-fun lt!501181 () ListLongMap!16019)

(declare-fun c!109774 () Bool)

(declare-fun c!109773 () Bool)

(declare-fun call!47929 () ListLongMap!16019)

(declare-fun +!3393 (ListLongMap!16019 tuple2!18038) ListLongMap!16019)

(assert (=> bm!47925 (= call!47929 (+!3393 lt!501181 (ite (or c!109774 c!109773) (tuple2!18039 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18039 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1129013 () Bool)

(assert (=> b!1129013 call!47928))

(declare-fun lt!501176 () Unit!36936)

(declare-fun call!47931 () Unit!36936)

(assert (=> b!1129013 (= lt!501176 call!47931)))

(declare-fun e!642581 () Unit!36936)

(assert (=> b!1129013 (= e!642581 lt!501176)))

(declare-fun b!1129014 () Bool)

(declare-fun e!642584 () Bool)

(assert (=> b!1129014 (= e!642584 tp_is_empty!28401)))

(declare-fun call!47933 () ListLongMap!16019)

(declare-fun bm!47926 () Bool)

(declare-fun lt!501177 () ListLongMap!16019)

(declare-fun contains!6519 (ListLongMap!16019 (_ BitVec 64)) Bool)

(assert (=> bm!47926 (= call!47926 (contains!6519 (ite c!109774 lt!501177 call!47933) k0!934))))

(declare-fun b!1129015 () Bool)

(declare-fun res!754586 () Bool)

(assert (=> b!1129015 (=> (not res!754586) (not e!642593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1129015 (= res!754586 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!44419 () Bool)

(declare-fun mapRes!44419 () Bool)

(assert (=> mapIsEmpty!44419 mapRes!44419))

(declare-fun b!1129016 () Bool)

(declare-fun e!642589 () Unit!36936)

(assert (=> b!1129016 (= e!642589 e!642581)))

(declare-fun lt!501185 () Bool)

(assert (=> b!1129016 (= c!109773 (and (not lt!501185) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1129017 () Bool)

(declare-fun res!754576 () Bool)

(assert (=> b!1129017 (=> (not res!754576) (not e!642593))))

(assert (=> b!1129017 (= res!754576 (and (= (size!35997 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35996 _keys!1208) (size!35997 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1129018 () Bool)

(declare-fun res!754575 () Bool)

(assert (=> b!1129018 (=> (not res!754575) (not e!642593))))

(assert (=> b!1129018 (= res!754575 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24856))))

(declare-fun b!1129019 () Bool)

(declare-fun e!642588 () Bool)

(declare-fun e!642592 () Bool)

(assert (=> b!1129019 (= e!642588 e!642592)))

(declare-fun res!754574 () Bool)

(assert (=> b!1129019 (=> res!754574 e!642592)))

(assert (=> b!1129019 (= res!754574 (not (contains!6519 lt!501181 k0!934)))))

(assert (=> b!1129019 (= lt!501181 (getCurrentListMapNoExtraKeys!4479 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129020 () Bool)

(declare-fun res!754585 () Bool)

(assert (=> b!1129020 (=> (not res!754585) (not e!642593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73620 (_ BitVec 32)) Bool)

(assert (=> b!1129020 (= res!754585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1129021 () Bool)

(declare-fun c!109775 () Bool)

(assert (=> b!1129021 (= c!109775 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!501185))))

(assert (=> b!1129021 (= e!642581 e!642579)))

(declare-fun b!1129022 () Bool)

(declare-fun lt!501188 () Unit!36936)

(assert (=> b!1129022 (= e!642589 lt!501188)))

(declare-fun lt!501179 () Unit!36936)

(declare-fun addStillContains!692 (ListLongMap!16019 (_ BitVec 64) V!42995 (_ BitVec 64)) Unit!36936)

(assert (=> b!1129022 (= lt!501179 (addStillContains!692 lt!501181 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1129022 (= lt!501177 call!47929)))

(assert (=> b!1129022 call!47926))

(declare-fun call!47932 () Unit!36936)

(assert (=> b!1129022 (= lt!501188 call!47932)))

(assert (=> b!1129022 (contains!6519 (+!3393 lt!501177 (tuple2!18039 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1129023 () Bool)

(declare-fun e!642583 () Bool)

(assert (=> b!1129023 (= e!642583 tp_is_empty!28401)))

(declare-fun b!1129024 () Bool)

(assert (=> b!1129024 (= e!642593 e!642590)))

(declare-fun res!754578 () Bool)

(assert (=> b!1129024 (=> (not res!754578) (not e!642590))))

(assert (=> b!1129024 (= res!754578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501189 mask!1564))))

(assert (=> b!1129024 (= lt!501189 (array!73621 (store (arr!35459 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35996 _keys!1208)))))

(declare-fun mapNonEmpty!44419 () Bool)

(declare-fun tp!84317 () Bool)

(assert (=> mapNonEmpty!44419 (= mapRes!44419 (and tp!84317 e!642583))))

(declare-fun mapValue!44419 () ValueCell!13491)

(declare-fun mapKey!44419 () (_ BitVec 32))

(declare-fun mapRest!44419 () (Array (_ BitVec 32) ValueCell!13491))

(assert (=> mapNonEmpty!44419 (= (arr!35460 _values!996) (store mapRest!44419 mapKey!44419 mapValue!44419))))

(declare-fun b!1129025 () Bool)

(declare-fun res!754580 () Bool)

(assert (=> b!1129025 (=> (not res!754580) (not e!642593))))

(assert (=> b!1129025 (= res!754580 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35996 _keys!1208))))))

(declare-fun b!1129026 () Bool)

(declare-fun e!642586 () Bool)

(assert (=> b!1129026 (= e!642591 e!642586)))

(declare-fun res!754584 () Bool)

(assert (=> b!1129026 (=> res!754584 e!642586)))

(assert (=> b!1129026 (= res!754584 (not (= from!1455 i!673)))))

(declare-fun lt!501186 () ListLongMap!16019)

(declare-fun lt!501175 () array!73622)

(assert (=> b!1129026 (= lt!501186 (getCurrentListMapNoExtraKeys!4479 lt!501189 lt!501175 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2556 (Int (_ BitVec 64)) V!42995)

(assert (=> b!1129026 (= lt!501175 (array!73623 (store (arr!35460 _values!996) i!673 (ValueCellFull!13491 (dynLambda!2556 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35997 _values!996)))))

(declare-fun lt!501183 () ListLongMap!16019)

(assert (=> b!1129026 (= lt!501183 (getCurrentListMapNoExtraKeys!4479 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1129027 () Bool)

(declare-fun res!754582 () Bool)

(assert (=> b!1129027 (=> (not res!754582) (not e!642593))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1129027 (= res!754582 (validKeyInArray!0 k0!934))))

(declare-fun b!1129028 () Bool)

(declare-fun e!642585 () Bool)

(assert (=> b!1129028 (= e!642592 e!642585)))

(declare-fun res!754581 () Bool)

(assert (=> b!1129028 (=> res!754581 e!642585)))

(assert (=> b!1129028 (= res!754581 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!35996 _keys!1208))))))

(declare-fun lt!501184 () Unit!36936)

(assert (=> b!1129028 (= lt!501184 e!642589)))

(assert (=> b!1129028 (= c!109774 (and (not lt!501185) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1129028 (= lt!501185 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1129029 () Bool)

(declare-fun e!642587 () Bool)

(declare-fun call!47930 () ListLongMap!16019)

(assert (=> b!1129029 (= e!642587 (= call!47930 call!47927))))

(declare-fun bm!47927 () Bool)

(assert (=> bm!47927 (= call!47932 (addStillContains!692 (ite c!109774 lt!501177 lt!501181) (ite c!109774 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!109773 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!109774 minValue!944 (ite c!109773 zeroValue!944 minValue!944)) k0!934))))

(declare-fun bm!47928 () Bool)

(assert (=> bm!47928 (= call!47933 call!47929)))

(declare-fun b!1129030 () Bool)

(declare-fun -!1158 (ListLongMap!16019 (_ BitVec 64)) ListLongMap!16019)

(assert (=> b!1129030 (= e!642587 (= call!47930 (-!1158 call!47927 k0!934)))))

(declare-fun b!1129031 () Bool)

(assert (=> b!1129031 (= e!642586 e!642588)))

(declare-fun res!754573 () Bool)

(assert (=> b!1129031 (=> res!754573 e!642588)))

(assert (=> b!1129031 (= res!754573 (not (= (select (arr!35459 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1129031 e!642587))

(declare-fun c!109772 () Bool)

(assert (=> b!1129031 (= c!109772 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!501187 () Unit!36936)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!411 (array!73620 array!73622 (_ BitVec 32) (_ BitVec 32) V!42995 V!42995 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36936)

(assert (=> b!1129031 (= lt!501187 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!411 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129032 () Bool)

(declare-fun res!754577 () Bool)

(assert (=> b!1129032 (=> (not res!754577) (not e!642593))))

(assert (=> b!1129032 (= res!754577 (= (select (arr!35459 _keys!1208) i!673) k0!934))))

(declare-fun b!1129033 () Bool)

(declare-fun lt!501180 () Unit!36936)

(assert (=> b!1129033 (= e!642579 lt!501180)))

(assert (=> b!1129033 (= lt!501180 call!47931)))

(assert (=> b!1129033 call!47928))

(declare-fun b!1129034 () Bool)

(assert (=> b!1129034 (= e!642580 (and e!642584 mapRes!44419))))

(declare-fun condMapEmpty!44419 () Bool)

(declare-fun mapDefault!44419 () ValueCell!13491)

(assert (=> b!1129034 (= condMapEmpty!44419 (= (arr!35460 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13491)) mapDefault!44419)))))

(declare-fun bm!47929 () Bool)

(assert (=> bm!47929 (= call!47930 (getCurrentListMapNoExtraKeys!4479 lt!501189 lt!501175 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129035 () Bool)

(assert (=> b!1129035 (= e!642585 true)))

(declare-fun lt!501182 () Bool)

(declare-fun getCurrentListMap!4432 (array!73620 array!73622 (_ BitVec 32) (_ BitVec 32) V!42995 V!42995 (_ BitVec 32) Int) ListLongMap!16019)

(assert (=> b!1129035 (= lt!501182 (contains!6519 (getCurrentListMap!4432 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun bm!47930 () Bool)

(assert (=> bm!47930 (= call!47931 call!47932)))

(assert (= (and start!98206 res!754587) b!1129015))

(assert (= (and b!1129015 res!754586) b!1129017))

(assert (= (and b!1129017 res!754576) b!1129020))

(assert (= (and b!1129020 res!754585) b!1129018))

(assert (= (and b!1129018 res!754575) b!1129025))

(assert (= (and b!1129025 res!754580) b!1129027))

(assert (= (and b!1129027 res!754582) b!1129032))

(assert (= (and b!1129032 res!754577) b!1129024))

(assert (= (and b!1129024 res!754578) b!1129010))

(assert (= (and b!1129010 res!754583) b!1129011))

(assert (= (and b!1129011 (not res!754579)) b!1129026))

(assert (= (and b!1129026 (not res!754584)) b!1129031))

(assert (= (and b!1129031 c!109772) b!1129030))

(assert (= (and b!1129031 (not c!109772)) b!1129029))

(assert (= (or b!1129030 b!1129029) bm!47929))

(assert (= (or b!1129030 b!1129029) bm!47923))

(assert (= (and b!1129031 (not res!754573)) b!1129019))

(assert (= (and b!1129019 (not res!754574)) b!1129028))

(assert (= (and b!1129028 c!109774) b!1129022))

(assert (= (and b!1129028 (not c!109774)) b!1129016))

(assert (= (and b!1129016 c!109773) b!1129013))

(assert (= (and b!1129016 (not c!109773)) b!1129021))

(assert (= (and b!1129021 c!109775) b!1129033))

(assert (= (and b!1129021 (not c!109775)) b!1129012))

(assert (= (or b!1129013 b!1129033) bm!47930))

(assert (= (or b!1129013 b!1129033) bm!47928))

(assert (= (or b!1129013 b!1129033) bm!47924))

(assert (= (or b!1129022 bm!47924) bm!47926))

(assert (= (or b!1129022 bm!47930) bm!47927))

(assert (= (or b!1129022 bm!47928) bm!47925))

(assert (= (and b!1129028 (not res!754581)) b!1129035))

(assert (= (and b!1129034 condMapEmpty!44419) mapIsEmpty!44419))

(assert (= (and b!1129034 (not condMapEmpty!44419)) mapNonEmpty!44419))

(get-info :version)

(assert (= (and mapNonEmpty!44419 ((_ is ValueCellFull!13491) mapValue!44419)) b!1129023))

(assert (= (and b!1129034 ((_ is ValueCellFull!13491) mapDefault!44419)) b!1129014))

(assert (= start!98206 b!1129034))

(declare-fun b_lambda!18875 () Bool)

(assert (=> (not b_lambda!18875) (not b!1129026)))

(declare-fun t!35727 () Bool)

(declare-fun tb!8691 () Bool)

(assert (=> (and start!98206 (= defaultEntry!1004 defaultEntry!1004) t!35727) tb!8691))

(declare-fun result!17935 () Bool)

(assert (=> tb!8691 (= result!17935 tp_is_empty!28401)))

(assert (=> b!1129026 t!35727))

(declare-fun b_and!38549 () Bool)

(assert (= b_and!38547 (and (=> t!35727 result!17935) b_and!38549)))

(declare-fun m!1042599 () Bool)

(assert (=> bm!47923 m!1042599))

(declare-fun m!1042601 () Bool)

(assert (=> b!1129027 m!1042601))

(declare-fun m!1042603 () Bool)

(assert (=> b!1129030 m!1042603))

(declare-fun m!1042605 () Bool)

(assert (=> b!1129011 m!1042605))

(declare-fun m!1042607 () Bool)

(assert (=> b!1129011 m!1042607))

(declare-fun m!1042609 () Bool)

(assert (=> start!98206 m!1042609))

(declare-fun m!1042611 () Bool)

(assert (=> start!98206 m!1042611))

(declare-fun m!1042613 () Bool)

(assert (=> b!1129020 m!1042613))

(declare-fun m!1042615 () Bool)

(assert (=> b!1129015 m!1042615))

(declare-fun m!1042617 () Bool)

(assert (=> b!1129019 m!1042617))

(assert (=> b!1129019 m!1042599))

(declare-fun m!1042619 () Bool)

(assert (=> bm!47926 m!1042619))

(declare-fun m!1042621 () Bool)

(assert (=> b!1129022 m!1042621))

(declare-fun m!1042623 () Bool)

(assert (=> b!1129022 m!1042623))

(assert (=> b!1129022 m!1042623))

(declare-fun m!1042625 () Bool)

(assert (=> b!1129022 m!1042625))

(declare-fun m!1042627 () Bool)

(assert (=> b!1129018 m!1042627))

(declare-fun m!1042629 () Bool)

(assert (=> b!1129010 m!1042629))

(declare-fun m!1042631 () Bool)

(assert (=> b!1129031 m!1042631))

(declare-fun m!1042633 () Bool)

(assert (=> b!1129031 m!1042633))

(declare-fun m!1042635 () Bool)

(assert (=> b!1129024 m!1042635))

(declare-fun m!1042637 () Bool)

(assert (=> b!1129024 m!1042637))

(declare-fun m!1042639 () Bool)

(assert (=> bm!47929 m!1042639))

(declare-fun m!1042641 () Bool)

(assert (=> mapNonEmpty!44419 m!1042641))

(declare-fun m!1042643 () Bool)

(assert (=> b!1129032 m!1042643))

(declare-fun m!1042645 () Bool)

(assert (=> bm!47927 m!1042645))

(declare-fun m!1042647 () Bool)

(assert (=> b!1129035 m!1042647))

(assert (=> b!1129035 m!1042647))

(declare-fun m!1042649 () Bool)

(assert (=> b!1129035 m!1042649))

(declare-fun m!1042651 () Bool)

(assert (=> b!1129026 m!1042651))

(declare-fun m!1042653 () Bool)

(assert (=> b!1129026 m!1042653))

(declare-fun m!1042655 () Bool)

(assert (=> b!1129026 m!1042655))

(declare-fun m!1042657 () Bool)

(assert (=> b!1129026 m!1042657))

(declare-fun m!1042659 () Bool)

(assert (=> bm!47925 m!1042659))

(check-sat (not start!98206) (not mapNonEmpty!44419) (not b!1129026) b_and!38549 tp_is_empty!28401 (not b_lambda!18875) (not b!1129031) (not b!1129035) (not b!1129018) (not b!1129019) (not bm!47925) (not b!1129010) (not b!1129015) (not b!1129024) (not b_next!23871) (not b!1129030) (not bm!47929) (not bm!47926) (not bm!47923) (not bm!47927) (not b!1129027) (not b!1129022) (not b!1129011) (not b!1129020))
(check-sat b_and!38549 (not b_next!23871))
