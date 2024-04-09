; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98958 () Bool)

(assert start!98958)

(declare-fun b_free!24527 () Bool)

(declare-fun b_next!24527 () Bool)

(assert (=> start!98958 (= b_free!24527 (not b_next!24527))))

(declare-fun tp!86292 () Bool)

(declare-fun b_and!39917 () Bool)

(assert (=> start!98958 (= tp!86292 b_and!39917)))

(declare-datatypes ((V!43869 0))(
  ( (V!43870 (val!14585 Int)) )
))
(declare-fun zeroValue!944 () V!43869)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!55862 () Bool)

(declare-datatypes ((array!74904 0))(
  ( (array!74905 (arr!36099 (Array (_ BitVec 32) (_ BitVec 64))) (size!36636 (_ BitVec 32))) )
))
(declare-fun lt!521075 () array!74904)

(declare-datatypes ((ValueCell!13819 0))(
  ( (ValueCellFull!13819 (v!17223 V!43869)) (EmptyCell!13819) )
))
(declare-datatypes ((array!74906 0))(
  ( (array!74907 (arr!36100 (Array (_ BitVec 32) ValueCell!13819)) (size!36637 (_ BitVec 32))) )
))
(declare-fun lt!521084 () array!74906)

(declare-fun minValue!944 () V!43869)

(declare-datatypes ((tuple2!18640 0))(
  ( (tuple2!18641 (_1!9330 (_ BitVec 64)) (_2!9330 V!43869)) )
))
(declare-datatypes ((List!25418 0))(
  ( (Nil!25415) (Cons!25414 (h!26623 tuple2!18640) (t!36944 List!25418)) )
))
(declare-datatypes ((ListLongMap!16621 0))(
  ( (ListLongMap!16622 (toList!8326 List!25418)) )
))
(declare-fun call!55872 () ListLongMap!16621)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4762 (array!74904 array!74906 (_ BitVec 32) (_ BitVec 32) V!43869 V!43869 (_ BitVec 32) Int) ListLongMap!16621)

(assert (=> bm!55862 (= call!55872 (getCurrentListMapNoExtraKeys!4762 lt!521075 lt!521084 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!45410 () Bool)

(declare-fun mapRes!45410 () Bool)

(declare-fun tp!86293 () Bool)

(declare-fun e!659232 () Bool)

(assert (=> mapNonEmpty!45410 (= mapRes!45410 (and tp!86293 e!659232))))

(declare-fun mapRest!45410 () (Array (_ BitVec 32) ValueCell!13819))

(declare-fun _values!996 () array!74906)

(declare-fun mapValue!45410 () ValueCell!13819)

(declare-fun mapKey!45410 () (_ BitVec 32))

(assert (=> mapNonEmpty!45410 (= (arr!36100 _values!996) (store mapRest!45410 mapKey!45410 mapValue!45410))))

(declare-fun b!1159190 () Bool)

(declare-fun e!659240 () Bool)

(declare-fun e!659226 () Bool)

(assert (=> b!1159190 (= e!659240 e!659226)))

(declare-fun res!769570 () Bool)

(assert (=> b!1159190 (=> res!769570 e!659226)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1159190 (= res!769570 (not (= from!1455 i!673)))))

(declare-fun lt!521077 () ListLongMap!16621)

(assert (=> b!1159190 (= lt!521077 (getCurrentListMapNoExtraKeys!4762 lt!521075 lt!521084 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!521080 () V!43869)

(assert (=> b!1159190 (= lt!521084 (array!74907 (store (arr!36100 _values!996) i!673 (ValueCellFull!13819 lt!521080)) (size!36637 _values!996)))))

(declare-fun dynLambda!2766 (Int (_ BitVec 64)) V!43869)

(assert (=> b!1159190 (= lt!521080 (dynLambda!2766 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!74904)

(declare-fun lt!521076 () ListLongMap!16621)

(assert (=> b!1159190 (= lt!521076 (getCurrentListMapNoExtraKeys!4762 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1159191 () Bool)

(declare-fun lt!521070 () ListLongMap!16621)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6808 (ListLongMap!16621 (_ BitVec 64)) Bool)

(declare-fun +!3652 (ListLongMap!16621 tuple2!18640) ListLongMap!16621)

(assert (=> b!1159191 (contains!6808 (+!3652 lt!521070 (tuple2!18641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-datatypes ((Unit!38095 0))(
  ( (Unit!38096) )
))
(declare-fun lt!521081 () Unit!38095)

(declare-fun addStillContains!949 (ListLongMap!16621 (_ BitVec 64) V!43869 (_ BitVec 64)) Unit!38095)

(assert (=> b!1159191 (= lt!521081 (addStillContains!949 lt!521070 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!55870 () Bool)

(assert (=> b!1159191 call!55870))

(declare-fun call!55867 () ListLongMap!16621)

(assert (=> b!1159191 (= lt!521070 call!55867)))

(declare-fun lt!521072 () Unit!38095)

(declare-fun call!55868 () Unit!38095)

(assert (=> b!1159191 (= lt!521072 call!55868)))

(declare-fun e!659227 () Unit!38095)

(assert (=> b!1159191 (= e!659227 lt!521081)))

(declare-fun mapIsEmpty!45410 () Bool)

(assert (=> mapIsEmpty!45410 mapRes!45410))

(declare-fun b!1159192 () Bool)

(declare-fun res!769572 () Bool)

(declare-fun e!659235 () Bool)

(assert (=> b!1159192 (=> (not res!769572) (not e!659235))))

(declare-datatypes ((List!25419 0))(
  ( (Nil!25416) (Cons!25415 (h!26624 (_ BitVec 64)) (t!36945 List!25419)) )
))
(declare-fun arrayNoDuplicates!0 (array!74904 (_ BitVec 32) List!25419) Bool)

(assert (=> b!1159192 (= res!769572 (arrayNoDuplicates!0 lt!521075 #b00000000000000000000000000000000 Nil!25416))))

(declare-fun b!1159193 () Bool)

(declare-fun c!115549 () Bool)

(declare-fun lt!521073 () Bool)

(assert (=> b!1159193 (= c!115549 (and (not lt!521073) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!659239 () Unit!38095)

(assert (=> b!1159193 (= e!659227 e!659239)))

(declare-fun b!1159194 () Bool)

(declare-fun res!769576 () Bool)

(declare-fun e!659229 () Bool)

(assert (=> b!1159194 (=> (not res!769576) (not e!659229))))

(assert (=> b!1159194 (= res!769576 (= (select (arr!36099 _keys!1208) i!673) k!934))))

(declare-fun b!1159195 () Bool)

(declare-fun e!659228 () Bool)

(declare-fun arrayContainsKey!0 (array!74904 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1159195 (= e!659228 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun res!769578 () Bool)

(assert (=> start!98958 (=> (not res!769578) (not e!659229))))

(assert (=> start!98958 (= res!769578 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36636 _keys!1208))))))

(assert (=> start!98958 e!659229))

(declare-fun tp_is_empty!29057 () Bool)

(assert (=> start!98958 tp_is_empty!29057))

(declare-fun array_inv!27490 (array!74904) Bool)

(assert (=> start!98958 (array_inv!27490 _keys!1208)))

(assert (=> start!98958 true))

(assert (=> start!98958 tp!86292))

(declare-fun e!659241 () Bool)

(declare-fun array_inv!27491 (array!74906) Bool)

(assert (=> start!98958 (and (array_inv!27491 _values!996) e!659241)))

(declare-fun b!1159196 () Bool)

(declare-fun call!55871 () Bool)

(assert (=> b!1159196 call!55871))

(declare-fun lt!521089 () Unit!38095)

(declare-fun call!55865 () Unit!38095)

(assert (=> b!1159196 (= lt!521089 call!55865)))

(declare-fun e!659225 () Unit!38095)

(assert (=> b!1159196 (= e!659225 lt!521089)))

(declare-fun b!1159197 () Bool)

(declare-fun res!769569 () Bool)

(assert (=> b!1159197 (=> (not res!769569) (not e!659229))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74904 (_ BitVec 32)) Bool)

(assert (=> b!1159197 (= res!769569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1159198 () Bool)

(declare-fun res!769582 () Bool)

(assert (=> b!1159198 (=> (not res!769582) (not e!659229))))

(assert (=> b!1159198 (= res!769582 (and (= (size!36637 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36636 _keys!1208) (size!36637 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1159199 () Bool)

(declare-fun e!659231 () Bool)

(assert (=> b!1159199 (= e!659231 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!521073) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1159200 () Bool)

(declare-fun res!769571 () Bool)

(assert (=> b!1159200 (=> (not res!769571) (not e!659229))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1159200 (= res!769571 (validKeyInArray!0 k!934))))

(declare-fun bm!55863 () Bool)

(assert (=> bm!55863 (= call!55871 call!55870)))

(declare-fun b!1159201 () Bool)

(declare-fun e!659236 () Unit!38095)

(declare-fun Unit!38097 () Unit!38095)

(assert (=> b!1159201 (= e!659236 Unit!38097)))

(assert (=> b!1159201 (= lt!521073 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!115552 () Bool)

(assert (=> b!1159201 (= c!115552 (and (not lt!521073) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!521090 () Unit!38095)

(assert (=> b!1159201 (= lt!521090 e!659227)))

(declare-fun lt!521082 () Unit!38095)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!523 (array!74904 array!74906 (_ BitVec 32) (_ BitVec 32) V!43869 V!43869 (_ BitVec 64) (_ BitVec 32) Int) Unit!38095)

(assert (=> b!1159201 (= lt!521082 (lemmaListMapContainsThenArrayContainsFrom!523 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115554 () Bool)

(assert (=> b!1159201 (= c!115554 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!769583 () Bool)

(assert (=> b!1159201 (= res!769583 e!659231)))

(assert (=> b!1159201 (=> (not res!769583) (not e!659228))))

(assert (=> b!1159201 e!659228))

(declare-fun lt!521071 () Unit!38095)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74904 (_ BitVec 32) (_ BitVec 32)) Unit!38095)

(assert (=> b!1159201 (= lt!521071 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1159201 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25416)))

(declare-fun lt!521079 () Unit!38095)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74904 (_ BitVec 64) (_ BitVec 32) List!25419) Unit!38095)

(assert (=> b!1159201 (= lt!521079 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25416))))

(assert (=> b!1159201 false))

(declare-fun bm!55864 () Bool)

(declare-fun call!55866 () ListLongMap!16621)

(assert (=> bm!55864 (= call!55870 (contains!6808 (ite c!115552 lt!521070 call!55866) k!934))))

(declare-fun b!1159202 () Bool)

(assert (=> b!1159202 (= e!659232 tp_is_empty!29057)))

(declare-fun bm!55865 () Bool)

(assert (=> bm!55865 (= call!55866 call!55867)))

(declare-fun bm!55866 () Bool)

(declare-fun call!55869 () ListLongMap!16621)

(assert (=> bm!55866 (= call!55869 (getCurrentListMapNoExtraKeys!4762 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159203 () Bool)

(declare-fun lt!521088 () Unit!38095)

(assert (=> b!1159203 (= e!659239 lt!521088)))

(assert (=> b!1159203 (= lt!521088 call!55865)))

(assert (=> b!1159203 call!55871))

(declare-fun b!1159204 () Bool)

(declare-fun e!659238 () Bool)

(assert (=> b!1159204 (= e!659238 true)))

(declare-fun e!659234 () Bool)

(assert (=> b!1159204 e!659234))

(declare-fun res!769579 () Bool)

(assert (=> b!1159204 (=> (not res!769579) (not e!659234))))

(declare-fun lt!521083 () ListLongMap!16621)

(declare-fun lt!521091 () ListLongMap!16621)

(assert (=> b!1159204 (= res!769579 (= lt!521083 lt!521091))))

(declare-fun -!1398 (ListLongMap!16621 (_ BitVec 64)) ListLongMap!16621)

(assert (=> b!1159204 (= lt!521083 (-!1398 lt!521076 k!934))))

(declare-fun lt!521086 () V!43869)

(assert (=> b!1159204 (= (-!1398 (+!3652 lt!521091 (tuple2!18641 (select (arr!36099 _keys!1208) from!1455) lt!521086)) (select (arr!36099 _keys!1208) from!1455)) lt!521091)))

(declare-fun lt!521087 () Unit!38095)

(declare-fun addThenRemoveForNewKeyIsSame!237 (ListLongMap!16621 (_ BitVec 64) V!43869) Unit!38095)

(assert (=> b!1159204 (= lt!521087 (addThenRemoveForNewKeyIsSame!237 lt!521091 (select (arr!36099 _keys!1208) from!1455) lt!521086))))

(declare-fun get!18433 (ValueCell!13819 V!43869) V!43869)

(assert (=> b!1159204 (= lt!521086 (get!18433 (select (arr!36100 _values!996) from!1455) lt!521080))))

(declare-fun lt!521085 () Unit!38095)

(assert (=> b!1159204 (= lt!521085 e!659236)))

(declare-fun c!115550 () Bool)

(assert (=> b!1159204 (= c!115550 (contains!6808 lt!521091 k!934))))

(assert (=> b!1159204 (= lt!521091 (getCurrentListMapNoExtraKeys!4762 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159205 () Bool)

(assert (=> b!1159205 (= e!659226 e!659238)))

(declare-fun res!769575 () Bool)

(assert (=> b!1159205 (=> res!769575 e!659238)))

(assert (=> b!1159205 (= res!769575 (not (= (select (arr!36099 _keys!1208) from!1455) k!934)))))

(declare-fun e!659233 () Bool)

(assert (=> b!1159205 e!659233))

(declare-fun c!115553 () Bool)

(assert (=> b!1159205 (= c!115553 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!521074 () Unit!38095)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!624 (array!74904 array!74906 (_ BitVec 32) (_ BitVec 32) V!43869 V!43869 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38095)

(assert (=> b!1159205 (= lt!521074 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!624 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159206 () Bool)

(declare-fun res!769574 () Bool)

(assert (=> b!1159206 (=> (not res!769574) (not e!659229))))

(assert (=> b!1159206 (= res!769574 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36636 _keys!1208))))))

(declare-fun b!1159207 () Bool)

(assert (=> b!1159207 (= e!659234 (= lt!521083 (getCurrentListMapNoExtraKeys!4762 lt!521075 lt!521084 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun bm!55867 () Bool)

(assert (=> bm!55867 (= call!55865 call!55868)))

(declare-fun b!1159208 () Bool)

(assert (=> b!1159208 (= e!659233 (= call!55872 call!55869))))

(declare-fun b!1159209 () Bool)

(declare-fun res!769573 () Bool)

(assert (=> b!1159209 (=> (not res!769573) (not e!659229))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1159209 (= res!769573 (validMask!0 mask!1564))))

(declare-fun b!1159210 () Bool)

(assert (=> b!1159210 (= e!659229 e!659235)))

(declare-fun res!769580 () Bool)

(assert (=> b!1159210 (=> (not res!769580) (not e!659235))))

(assert (=> b!1159210 (= res!769580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!521075 mask!1564))))

(assert (=> b!1159210 (= lt!521075 (array!74905 (store (arr!36099 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36636 _keys!1208)))))

(declare-fun b!1159211 () Bool)

(declare-fun e!659237 () Bool)

(assert (=> b!1159211 (= e!659237 tp_is_empty!29057)))

(declare-fun b!1159212 () Bool)

(assert (=> b!1159212 (= e!659241 (and e!659237 mapRes!45410))))

(declare-fun condMapEmpty!45410 () Bool)

(declare-fun mapDefault!45410 () ValueCell!13819)

