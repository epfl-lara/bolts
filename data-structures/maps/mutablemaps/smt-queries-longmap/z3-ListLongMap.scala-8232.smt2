; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100338 () Bool)

(assert start!100338)

(declare-fun b_free!25689 () Bool)

(declare-fun b_next!25689 () Bool)

(assert (=> start!100338 (= b_free!25689 (not b_next!25689))))

(declare-fun tp!90015 () Bool)

(declare-fun b_and!42259 () Bool)

(assert (=> start!100338 (= tp!90015 b_and!42259)))

(declare-fun b!1196749 () Bool)

(declare-fun res!796543 () Bool)

(declare-fun e!679952 () Bool)

(assert (=> b!1196749 (=> (not res!796543) (not e!679952))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1196749 (= res!796543 (validMask!0 mask!1564))))

(declare-fun b!1196750 () Bool)

(declare-fun res!796536 () Bool)

(assert (=> b!1196750 (=> (not res!796536) (not e!679952))))

(declare-datatypes ((array!77498 0))(
  ( (array!77499 (arr!37392 (Array (_ BitVec 32) (_ BitVec 64))) (size!37929 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77498)

(declare-datatypes ((List!26471 0))(
  ( (Nil!26468) (Cons!26467 (h!27676 (_ BitVec 64)) (t!39159 List!26471)) )
))
(declare-fun arrayNoDuplicates!0 (array!77498 (_ BitVec 32) List!26471) Bool)

(assert (=> b!1196750 (= res!796536 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26468))))

(declare-fun b!1196752 () Bool)

(declare-fun e!679949 () Bool)

(declare-fun e!679950 () Bool)

(declare-fun mapRes!47390 () Bool)

(assert (=> b!1196752 (= e!679949 (and e!679950 mapRes!47390))))

(declare-fun condMapEmpty!47390 () Bool)

(declare-datatypes ((V!45619 0))(
  ( (V!45620 (val!15241 Int)) )
))
(declare-datatypes ((ValueCell!14475 0))(
  ( (ValueCellFull!14475 (v!17880 V!45619)) (EmptyCell!14475) )
))
(declare-datatypes ((array!77500 0))(
  ( (array!77501 (arr!37393 (Array (_ BitVec 32) ValueCell!14475)) (size!37930 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77500)

(declare-fun mapDefault!47390 () ValueCell!14475)

(assert (=> b!1196752 (= condMapEmpty!47390 (= (arr!37393 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14475)) mapDefault!47390)))))

(declare-fun b!1196753 () Bool)

(declare-fun e!679948 () Bool)

(assert (=> b!1196753 (= e!679948 true)))

(declare-fun e!679947 () Bool)

(assert (=> b!1196753 e!679947))

(declare-fun c!117296 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1196753 (= c!117296 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!45619)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45619)

(declare-datatypes ((Unit!39626 0))(
  ( (Unit!39627) )
))
(declare-fun lt!543093 () Unit!39626)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1007 (array!77498 array!77500 (_ BitVec 32) (_ BitVec 32) V!45619 V!45619 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39626)

(assert (=> b!1196753 (= lt!543093 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1007 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1196754 () Bool)

(declare-fun res!796546 () Bool)

(assert (=> b!1196754 (=> (not res!796546) (not e!679952))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1196754 (= res!796546 (validKeyInArray!0 k0!934))))

(declare-fun b!1196755 () Bool)

(declare-datatypes ((tuple2!19654 0))(
  ( (tuple2!19655 (_1!9837 (_ BitVec 64)) (_2!9837 V!45619)) )
))
(declare-datatypes ((List!26472 0))(
  ( (Nil!26469) (Cons!26468 (h!27677 tuple2!19654) (t!39160 List!26472)) )
))
(declare-datatypes ((ListLongMap!17635 0))(
  ( (ListLongMap!17636 (toList!8833 List!26472)) )
))
(declare-fun call!57187 () ListLongMap!17635)

(declare-fun call!57188 () ListLongMap!17635)

(declare-fun -!1800 (ListLongMap!17635 (_ BitVec 64)) ListLongMap!17635)

(assert (=> b!1196755 (= e!679947 (= call!57188 (-!1800 call!57187 k0!934)))))

(declare-fun b!1196756 () Bool)

(declare-fun tp_is_empty!30369 () Bool)

(assert (=> b!1196756 (= e!679950 tp_is_empty!30369)))

(declare-fun lt!543091 () array!77498)

(declare-fun bm!57184 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5246 (array!77498 array!77500 (_ BitVec 32) (_ BitVec 32) V!45619 V!45619 (_ BitVec 32) Int) ListLongMap!17635)

(declare-fun dynLambda!3183 (Int (_ BitVec 64)) V!45619)

(assert (=> bm!57184 (= call!57188 (getCurrentListMapNoExtraKeys!5246 lt!543091 (array!77501 (store (arr!37393 _values!996) i!673 (ValueCellFull!14475 (dynLambda!3183 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37930 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1196757 () Bool)

(declare-fun res!796538 () Bool)

(declare-fun e!679954 () Bool)

(assert (=> b!1196757 (=> (not res!796538) (not e!679954))))

(assert (=> b!1196757 (= res!796538 (arrayNoDuplicates!0 lt!543091 #b00000000000000000000000000000000 Nil!26468))))

(declare-fun b!1196758 () Bool)

(declare-fun res!796542 () Bool)

(assert (=> b!1196758 (=> (not res!796542) (not e!679952))))

(assert (=> b!1196758 (= res!796542 (and (= (size!37930 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37929 _keys!1208) (size!37930 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1196759 () Bool)

(declare-fun res!796545 () Bool)

(assert (=> b!1196759 (=> (not res!796545) (not e!679952))))

(assert (=> b!1196759 (= res!796545 (= (select (arr!37392 _keys!1208) i!673) k0!934))))

(declare-fun b!1196760 () Bool)

(assert (=> b!1196760 (= e!679954 (not e!679948))))

(declare-fun res!796537 () Bool)

(assert (=> b!1196760 (=> res!796537 e!679948)))

(assert (=> b!1196760 (= res!796537 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!37929 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!77498 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1196760 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!543092 () Unit!39626)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77498 (_ BitVec 64) (_ BitVec 32)) Unit!39626)

(assert (=> b!1196760 (= lt!543092 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1196761 () Bool)

(declare-fun res!796544 () Bool)

(assert (=> b!1196761 (=> (not res!796544) (not e!679952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77498 (_ BitVec 32)) Bool)

(assert (=> b!1196761 (= res!796544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1196762 () Bool)

(assert (=> b!1196762 (= e!679952 e!679954)))

(declare-fun res!796540 () Bool)

(assert (=> b!1196762 (=> (not res!796540) (not e!679954))))

(assert (=> b!1196762 (= res!796540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543091 mask!1564))))

(assert (=> b!1196762 (= lt!543091 (array!77499 (store (arr!37392 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37929 _keys!1208)))))

(declare-fun mapNonEmpty!47390 () Bool)

(declare-fun tp!90016 () Bool)

(declare-fun e!679953 () Bool)

(assert (=> mapNonEmpty!47390 (= mapRes!47390 (and tp!90016 e!679953))))

(declare-fun mapRest!47390 () (Array (_ BitVec 32) ValueCell!14475))

(declare-fun mapValue!47390 () ValueCell!14475)

(declare-fun mapKey!47390 () (_ BitVec 32))

(assert (=> mapNonEmpty!47390 (= (arr!37393 _values!996) (store mapRest!47390 mapKey!47390 mapValue!47390))))

(declare-fun b!1196751 () Bool)

(declare-fun res!796541 () Bool)

(assert (=> b!1196751 (=> (not res!796541) (not e!679952))))

(assert (=> b!1196751 (= res!796541 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37929 _keys!1208))))))

(declare-fun res!796539 () Bool)

(assert (=> start!100338 (=> (not res!796539) (not e!679952))))

(assert (=> start!100338 (= res!796539 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37929 _keys!1208))))))

(assert (=> start!100338 e!679952))

(assert (=> start!100338 tp_is_empty!30369))

(declare-fun array_inv!28402 (array!77498) Bool)

(assert (=> start!100338 (array_inv!28402 _keys!1208)))

(assert (=> start!100338 true))

(assert (=> start!100338 tp!90015))

(declare-fun array_inv!28403 (array!77500) Bool)

(assert (=> start!100338 (and (array_inv!28403 _values!996) e!679949)))

(declare-fun bm!57185 () Bool)

(assert (=> bm!57185 (= call!57187 (getCurrentListMapNoExtraKeys!5246 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1196763 () Bool)

(assert (=> b!1196763 (= e!679953 tp_is_empty!30369)))

(declare-fun b!1196764 () Bool)

(assert (=> b!1196764 (= e!679947 (= call!57188 call!57187))))

(declare-fun mapIsEmpty!47390 () Bool)

(assert (=> mapIsEmpty!47390 mapRes!47390))

(assert (= (and start!100338 res!796539) b!1196749))

(assert (= (and b!1196749 res!796543) b!1196758))

(assert (= (and b!1196758 res!796542) b!1196761))

(assert (= (and b!1196761 res!796544) b!1196750))

(assert (= (and b!1196750 res!796536) b!1196751))

(assert (= (and b!1196751 res!796541) b!1196754))

(assert (= (and b!1196754 res!796546) b!1196759))

(assert (= (and b!1196759 res!796545) b!1196762))

(assert (= (and b!1196762 res!796540) b!1196757))

(assert (= (and b!1196757 res!796538) b!1196760))

(assert (= (and b!1196760 (not res!796537)) b!1196753))

(assert (= (and b!1196753 c!117296) b!1196755))

(assert (= (and b!1196753 (not c!117296)) b!1196764))

(assert (= (or b!1196755 b!1196764) bm!57184))

(assert (= (or b!1196755 b!1196764) bm!57185))

(assert (= (and b!1196752 condMapEmpty!47390) mapIsEmpty!47390))

(assert (= (and b!1196752 (not condMapEmpty!47390)) mapNonEmpty!47390))

(get-info :version)

(assert (= (and mapNonEmpty!47390 ((_ is ValueCellFull!14475) mapValue!47390)) b!1196763))

(assert (= (and b!1196752 ((_ is ValueCellFull!14475) mapDefault!47390)) b!1196756))

(assert (= start!100338 b!1196752))

(declare-fun b_lambda!20851 () Bool)

(assert (=> (not b_lambda!20851) (not bm!57184)))

(declare-fun t!39158 () Bool)

(declare-fun tb!10509 () Bool)

(assert (=> (and start!100338 (= defaultEntry!1004 defaultEntry!1004) t!39158) tb!10509))

(declare-fun result!21583 () Bool)

(assert (=> tb!10509 (= result!21583 tp_is_empty!30369)))

(assert (=> bm!57184 t!39158))

(declare-fun b_and!42261 () Bool)

(assert (= b_and!42259 (and (=> t!39158 result!21583) b_and!42261)))

(declare-fun m!1103929 () Bool)

(assert (=> b!1196749 m!1103929))

(declare-fun m!1103931 () Bool)

(assert (=> b!1196754 m!1103931))

(declare-fun m!1103933 () Bool)

(assert (=> b!1196762 m!1103933))

(declare-fun m!1103935 () Bool)

(assert (=> b!1196762 m!1103935))

(declare-fun m!1103937 () Bool)

(assert (=> bm!57185 m!1103937))

(declare-fun m!1103939 () Bool)

(assert (=> bm!57184 m!1103939))

(declare-fun m!1103941 () Bool)

(assert (=> bm!57184 m!1103941))

(declare-fun m!1103943 () Bool)

(assert (=> bm!57184 m!1103943))

(declare-fun m!1103945 () Bool)

(assert (=> b!1196753 m!1103945))

(declare-fun m!1103947 () Bool)

(assert (=> start!100338 m!1103947))

(declare-fun m!1103949 () Bool)

(assert (=> start!100338 m!1103949))

(declare-fun m!1103951 () Bool)

(assert (=> b!1196761 m!1103951))

(declare-fun m!1103953 () Bool)

(assert (=> b!1196750 m!1103953))

(declare-fun m!1103955 () Bool)

(assert (=> mapNonEmpty!47390 m!1103955))

(declare-fun m!1103957 () Bool)

(assert (=> b!1196757 m!1103957))

(declare-fun m!1103959 () Bool)

(assert (=> b!1196759 m!1103959))

(declare-fun m!1103961 () Bool)

(assert (=> b!1196755 m!1103961))

(declare-fun m!1103963 () Bool)

(assert (=> b!1196760 m!1103963))

(declare-fun m!1103965 () Bool)

(assert (=> b!1196760 m!1103965))

(check-sat (not b!1196760) b_and!42261 (not bm!57184) (not b!1196754) (not b_next!25689) (not b!1196753) tp_is_empty!30369 (not b!1196755) (not b_lambda!20851) (not b!1196761) (not b!1196762) (not b!1196757) (not bm!57185) (not mapNonEmpty!47390) (not start!100338) (not b!1196749) (not b!1196750))
(check-sat b_and!42261 (not b_next!25689))
