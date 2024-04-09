; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99268 () Bool)

(assert start!99268)

(declare-fun b_free!24837 () Bool)

(declare-fun b_next!24837 () Bool)

(assert (=> start!99268 (= b_free!24837 (not b_next!24837))))

(declare-fun tp!87223 () Bool)

(declare-fun b_and!40537 () Bool)

(assert (=> start!99268 (= tp!87223 b_and!40537)))

(declare-fun b!1168691 () Bool)

(declare-fun e!664242 () Bool)

(declare-fun tp_is_empty!29367 () Bool)

(assert (=> b!1168691 (= e!664242 tp_is_empty!29367)))

(declare-fun b!1168692 () Bool)

(declare-fun e!664244 () Bool)

(declare-fun e!664237 () Bool)

(assert (=> b!1168692 (= e!664244 (not e!664237))))

(declare-fun res!775528 () Bool)

(assert (=> b!1168692 (=> res!775528 e!664237)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1168692 (= res!775528 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!75508 0))(
  ( (array!75509 (arr!36401 (Array (_ BitVec 32) (_ BitVec 64))) (size!36938 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75508)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1168692 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38458 0))(
  ( (Unit!38459) )
))
(declare-fun lt!526171 () Unit!38458)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75508 (_ BitVec 64) (_ BitVec 32)) Unit!38458)

(assert (=> b!1168692 (= lt!526171 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1168693 () Bool)

(declare-fun res!775527 () Bool)

(declare-fun e!664243 () Bool)

(assert (=> b!1168693 (=> (not res!775527) (not e!664243))))

(assert (=> b!1168693 (= res!775527 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36938 _keys!1208))))))

(declare-fun mapIsEmpty!45875 () Bool)

(declare-fun mapRes!45875 () Bool)

(assert (=> mapIsEmpty!45875 mapRes!45875))

(declare-fun b!1168694 () Bool)

(declare-fun e!664238 () Bool)

(declare-fun e!664241 () Bool)

(assert (=> b!1168694 (= e!664238 e!664241)))

(declare-fun res!775526 () Bool)

(assert (=> b!1168694 (=> res!775526 e!664241)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1168694 (= res!775526 (not (validKeyInArray!0 (select (arr!36401 _keys!1208) from!1455))))))

(declare-datatypes ((V!44283 0))(
  ( (V!44284 (val!14740 Int)) )
))
(declare-datatypes ((tuple2!18898 0))(
  ( (tuple2!18899 (_1!9459 (_ BitVec 64)) (_2!9459 V!44283)) )
))
(declare-datatypes ((List!25670 0))(
  ( (Nil!25667) (Cons!25666 (h!26875 tuple2!18898) (t!37506 List!25670)) )
))
(declare-datatypes ((ListLongMap!16879 0))(
  ( (ListLongMap!16880 (toList!8455 List!25670)) )
))
(declare-fun lt!526172 () ListLongMap!16879)

(declare-fun lt!526169 () ListLongMap!16879)

(assert (=> b!1168694 (= lt!526172 lt!526169)))

(declare-fun lt!526165 () ListLongMap!16879)

(declare-fun -!1482 (ListLongMap!16879 (_ BitVec 64)) ListLongMap!16879)

(assert (=> b!1168694 (= lt!526169 (-!1482 lt!526165 k0!934))))

(declare-fun zeroValue!944 () V!44283)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!526168 () array!75508)

(declare-datatypes ((ValueCell!13974 0))(
  ( (ValueCellFull!13974 (v!17378 V!44283)) (EmptyCell!13974) )
))
(declare-datatypes ((array!75510 0))(
  ( (array!75511 (arr!36402 (Array (_ BitVec 32) ValueCell!13974)) (size!36939 (_ BitVec 32))) )
))
(declare-fun lt!526173 () array!75510)

(declare-fun minValue!944 () V!44283)

(declare-fun getCurrentListMapNoExtraKeys!4888 (array!75508 array!75510 (_ BitVec 32) (_ BitVec 32) V!44283 V!44283 (_ BitVec 32) Int) ListLongMap!16879)

(assert (=> b!1168694 (= lt!526172 (getCurrentListMapNoExtraKeys!4888 lt!526168 lt!526173 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75510)

(assert (=> b!1168694 (= lt!526165 (getCurrentListMapNoExtraKeys!4888 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!526170 () Unit!38458)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!706 (array!75508 array!75510 (_ BitVec 32) (_ BitVec 32) V!44283 V!44283 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38458)

(assert (=> b!1168694 (= lt!526170 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!706 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1168695 () Bool)

(assert (=> b!1168695 (= e!664237 e!664238)))

(declare-fun res!775520 () Bool)

(assert (=> b!1168695 (=> res!775520 e!664238)))

(assert (=> b!1168695 (= res!775520 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!526164 () ListLongMap!16879)

(assert (=> b!1168695 (= lt!526164 (getCurrentListMapNoExtraKeys!4888 lt!526168 lt!526173 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!526167 () V!44283)

(assert (=> b!1168695 (= lt!526173 (array!75511 (store (arr!36402 _values!996) i!673 (ValueCellFull!13974 lt!526167)) (size!36939 _values!996)))))

(declare-fun dynLambda!2880 (Int (_ BitVec 64)) V!44283)

(assert (=> b!1168695 (= lt!526167 (dynLambda!2880 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526166 () ListLongMap!16879)

(assert (=> b!1168695 (= lt!526166 (getCurrentListMapNoExtraKeys!4888 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1168696 () Bool)

(declare-fun res!775517 () Bool)

(assert (=> b!1168696 (=> (not res!775517) (not e!664243))))

(assert (=> b!1168696 (= res!775517 (= (select (arr!36401 _keys!1208) i!673) k0!934))))

(declare-fun b!1168697 () Bool)

(declare-fun e!664245 () Bool)

(assert (=> b!1168697 (= e!664245 tp_is_empty!29367)))

(declare-fun b!1168698 () Bool)

(declare-fun res!775523 () Bool)

(assert (=> b!1168698 (=> (not res!775523) (not e!664243))))

(assert (=> b!1168698 (= res!775523 (validKeyInArray!0 k0!934))))

(declare-fun res!775519 () Bool)

(assert (=> start!99268 (=> (not res!775519) (not e!664243))))

(assert (=> start!99268 (= res!775519 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36938 _keys!1208))))))

(assert (=> start!99268 e!664243))

(assert (=> start!99268 tp_is_empty!29367))

(declare-fun array_inv!27700 (array!75508) Bool)

(assert (=> start!99268 (array_inv!27700 _keys!1208)))

(assert (=> start!99268 true))

(assert (=> start!99268 tp!87223))

(declare-fun e!664240 () Bool)

(declare-fun array_inv!27701 (array!75510) Bool)

(assert (=> start!99268 (and (array_inv!27701 _values!996) e!664240)))

(declare-fun b!1168699 () Bool)

(declare-fun res!775529 () Bool)

(assert (=> b!1168699 (=> (not res!775529) (not e!664244))))

(declare-datatypes ((List!25671 0))(
  ( (Nil!25668) (Cons!25667 (h!26876 (_ BitVec 64)) (t!37507 List!25671)) )
))
(declare-fun arrayNoDuplicates!0 (array!75508 (_ BitVec 32) List!25671) Bool)

(assert (=> b!1168699 (= res!775529 (arrayNoDuplicates!0 lt!526168 #b00000000000000000000000000000000 Nil!25668))))

(declare-fun b!1168700 () Bool)

(declare-fun res!775522 () Bool)

(assert (=> b!1168700 (=> (not res!775522) (not e!664243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1168700 (= res!775522 (validMask!0 mask!1564))))

(declare-fun b!1168701 () Bool)

(assert (=> b!1168701 (= e!664243 e!664244)))

(declare-fun res!775521 () Bool)

(assert (=> b!1168701 (=> (not res!775521) (not e!664244))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75508 (_ BitVec 32)) Bool)

(assert (=> b!1168701 (= res!775521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526168 mask!1564))))

(assert (=> b!1168701 (= lt!526168 (array!75509 (store (arr!36401 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36938 _keys!1208)))))

(declare-fun b!1168702 () Bool)

(assert (=> b!1168702 (= e!664241 (or (not (= (select (arr!36401 _keys!1208) from!1455) k0!934)) (bvslt (size!36938 _keys!1208) #b01111111111111111111111111111111)))))

(declare-fun +!3705 (ListLongMap!16879 tuple2!18898) ListLongMap!16879)

(declare-fun get!18582 (ValueCell!13974 V!44283) V!44283)

(assert (=> b!1168702 (= lt!526164 (+!3705 lt!526169 (tuple2!18899 (select (arr!36401 _keys!1208) from!1455) (get!18582 (select (arr!36402 _values!996) from!1455) lt!526167))))))

(declare-fun mapNonEmpty!45875 () Bool)

(declare-fun tp!87222 () Bool)

(assert (=> mapNonEmpty!45875 (= mapRes!45875 (and tp!87222 e!664242))))

(declare-fun mapKey!45875 () (_ BitVec 32))

(declare-fun mapValue!45875 () ValueCell!13974)

(declare-fun mapRest!45875 () (Array (_ BitVec 32) ValueCell!13974))

(assert (=> mapNonEmpty!45875 (= (arr!36402 _values!996) (store mapRest!45875 mapKey!45875 mapValue!45875))))

(declare-fun b!1168703 () Bool)

(declare-fun res!775518 () Bool)

(assert (=> b!1168703 (=> (not res!775518) (not e!664243))))

(assert (=> b!1168703 (= res!775518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1168704 () Bool)

(declare-fun res!775524 () Bool)

(assert (=> b!1168704 (=> (not res!775524) (not e!664243))))

(assert (=> b!1168704 (= res!775524 (and (= (size!36939 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36938 _keys!1208) (size!36939 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1168705 () Bool)

(assert (=> b!1168705 (= e!664240 (and e!664245 mapRes!45875))))

(declare-fun condMapEmpty!45875 () Bool)

(declare-fun mapDefault!45875 () ValueCell!13974)

(assert (=> b!1168705 (= condMapEmpty!45875 (= (arr!36402 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13974)) mapDefault!45875)))))

(declare-fun b!1168706 () Bool)

(declare-fun res!775525 () Bool)

(assert (=> b!1168706 (=> (not res!775525) (not e!664243))))

(assert (=> b!1168706 (= res!775525 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25668))))

(assert (= (and start!99268 res!775519) b!1168700))

(assert (= (and b!1168700 res!775522) b!1168704))

(assert (= (and b!1168704 res!775524) b!1168703))

(assert (= (and b!1168703 res!775518) b!1168706))

(assert (= (and b!1168706 res!775525) b!1168693))

(assert (= (and b!1168693 res!775527) b!1168698))

(assert (= (and b!1168698 res!775523) b!1168696))

(assert (= (and b!1168696 res!775517) b!1168701))

(assert (= (and b!1168701 res!775521) b!1168699))

(assert (= (and b!1168699 res!775529) b!1168692))

(assert (= (and b!1168692 (not res!775528)) b!1168695))

(assert (= (and b!1168695 (not res!775520)) b!1168694))

(assert (= (and b!1168694 (not res!775526)) b!1168702))

(assert (= (and b!1168705 condMapEmpty!45875) mapIsEmpty!45875))

(assert (= (and b!1168705 (not condMapEmpty!45875)) mapNonEmpty!45875))

(get-info :version)

(assert (= (and mapNonEmpty!45875 ((_ is ValueCellFull!13974) mapValue!45875)) b!1168691))

(assert (= (and b!1168705 ((_ is ValueCellFull!13974) mapDefault!45875)) b!1168697))

(assert (= start!99268 b!1168705))

(declare-fun b_lambda!19961 () Bool)

(assert (=> (not b_lambda!19961) (not b!1168695)))

(declare-fun t!37505 () Bool)

(declare-fun tb!9657 () Bool)

(assert (=> (and start!99268 (= defaultEntry!1004 defaultEntry!1004) t!37505) tb!9657))

(declare-fun result!19871 () Bool)

(assert (=> tb!9657 (= result!19871 tp_is_empty!29367)))

(assert (=> b!1168695 t!37505))

(declare-fun b_and!40539 () Bool)

(assert (= b_and!40537 (and (=> t!37505 result!19871) b_and!40539)))

(declare-fun m!1076591 () Bool)

(assert (=> b!1168706 m!1076591))

(declare-fun m!1076593 () Bool)

(assert (=> b!1168699 m!1076593))

(declare-fun m!1076595 () Bool)

(assert (=> b!1168692 m!1076595))

(declare-fun m!1076597 () Bool)

(assert (=> b!1168692 m!1076597))

(declare-fun m!1076599 () Bool)

(assert (=> b!1168695 m!1076599))

(declare-fun m!1076601 () Bool)

(assert (=> b!1168695 m!1076601))

(declare-fun m!1076603 () Bool)

(assert (=> b!1168695 m!1076603))

(declare-fun m!1076605 () Bool)

(assert (=> b!1168695 m!1076605))

(declare-fun m!1076607 () Bool)

(assert (=> b!1168698 m!1076607))

(declare-fun m!1076609 () Bool)

(assert (=> start!99268 m!1076609))

(declare-fun m!1076611 () Bool)

(assert (=> start!99268 m!1076611))

(declare-fun m!1076613 () Bool)

(assert (=> b!1168703 m!1076613))

(declare-fun m!1076615 () Bool)

(assert (=> b!1168702 m!1076615))

(declare-fun m!1076617 () Bool)

(assert (=> b!1168702 m!1076617))

(assert (=> b!1168702 m!1076617))

(declare-fun m!1076619 () Bool)

(assert (=> b!1168702 m!1076619))

(declare-fun m!1076621 () Bool)

(assert (=> b!1168702 m!1076621))

(declare-fun m!1076623 () Bool)

(assert (=> b!1168700 m!1076623))

(declare-fun m!1076625 () Bool)

(assert (=> mapNonEmpty!45875 m!1076625))

(declare-fun m!1076627 () Bool)

(assert (=> b!1168696 m!1076627))

(declare-fun m!1076629 () Bool)

(assert (=> b!1168694 m!1076629))

(declare-fun m!1076631 () Bool)

(assert (=> b!1168694 m!1076631))

(declare-fun m!1076633 () Bool)

(assert (=> b!1168694 m!1076633))

(assert (=> b!1168694 m!1076615))

(declare-fun m!1076635 () Bool)

(assert (=> b!1168694 m!1076635))

(declare-fun m!1076637 () Bool)

(assert (=> b!1168694 m!1076637))

(assert (=> b!1168694 m!1076615))

(declare-fun m!1076639 () Bool)

(assert (=> b!1168701 m!1076639))

(declare-fun m!1076641 () Bool)

(assert (=> b!1168701 m!1076641))

(check-sat (not b!1168698) (not b!1168702) (not b!1168699) tp_is_empty!29367 (not b_lambda!19961) (not mapNonEmpty!45875) (not b_next!24837) (not start!99268) (not b!1168706) b_and!40539 (not b!1168695) (not b!1168694) (not b!1168692) (not b!1168700) (not b!1168701) (not b!1168703))
(check-sat b_and!40539 (not b_next!24837))
(get-model)

(declare-fun b_lambda!19965 () Bool)

(assert (= b_lambda!19961 (or (and start!99268 b_free!24837) b_lambda!19965)))

(check-sat (not b!1168698) (not b!1168702) (not b!1168699) tp_is_empty!29367 (not mapNonEmpty!45875) (not b_next!24837) (not start!99268) (not b!1168706) (not b_lambda!19965) b_and!40539 (not b!1168695) (not b!1168694) (not b!1168692) (not b!1168700) (not b!1168701) (not b!1168703))
(check-sat b_and!40539 (not b_next!24837))
(get-model)

(declare-fun b!1168767 () Bool)

(declare-fun e!664280 () Bool)

(declare-fun call!57099 () Bool)

(assert (=> b!1168767 (= e!664280 call!57099)))

(declare-fun bm!57096 () Bool)

(assert (=> bm!57096 (= call!57099 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun d!131853 () Bool)

(declare-fun res!775573 () Bool)

(declare-fun e!664281 () Bool)

(assert (=> d!131853 (=> res!775573 e!664281)))

(assert (=> d!131853 (= res!775573 (bvsge #b00000000000000000000000000000000 (size!36938 _keys!1208)))))

(assert (=> d!131853 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!664281)))

(declare-fun b!1168768 () Bool)

(declare-fun e!664279 () Bool)

(assert (=> b!1168768 (= e!664280 e!664279)))

(declare-fun lt!526211 () (_ BitVec 64))

(assert (=> b!1168768 (= lt!526211 (select (arr!36401 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!526210 () Unit!38458)

(assert (=> b!1168768 (= lt!526210 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!526211 #b00000000000000000000000000000000))))

(assert (=> b!1168768 (arrayContainsKey!0 _keys!1208 lt!526211 #b00000000000000000000000000000000)))

(declare-fun lt!526212 () Unit!38458)

(assert (=> b!1168768 (= lt!526212 lt!526210)))

(declare-fun res!775574 () Bool)

(declare-datatypes ((SeekEntryResult!9924 0))(
  ( (MissingZero!9924 (index!42066 (_ BitVec 32))) (Found!9924 (index!42067 (_ BitVec 32))) (Intermediate!9924 (undefined!10736 Bool) (index!42068 (_ BitVec 32)) (x!103611 (_ BitVec 32))) (Undefined!9924) (MissingVacant!9924 (index!42069 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!75508 (_ BitVec 32)) SeekEntryResult!9924)

(assert (=> b!1168768 (= res!775574 (= (seekEntryOrOpen!0 (select (arr!36401 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9924 #b00000000000000000000000000000000)))))

(assert (=> b!1168768 (=> (not res!775574) (not e!664279))))

(declare-fun b!1168769 () Bool)

(assert (=> b!1168769 (= e!664279 call!57099)))

(declare-fun b!1168770 () Bool)

(assert (=> b!1168770 (= e!664281 e!664280)))

(declare-fun c!116475 () Bool)

(assert (=> b!1168770 (= c!116475 (validKeyInArray!0 (select (arr!36401 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!131853 (not res!775573)) b!1168770))

(assert (= (and b!1168770 c!116475) b!1168768))

(assert (= (and b!1168770 (not c!116475)) b!1168767))

(assert (= (and b!1168768 res!775574) b!1168769))

(assert (= (or b!1168769 b!1168767) bm!57096))

(declare-fun m!1076695 () Bool)

(assert (=> bm!57096 m!1076695))

(declare-fun m!1076697 () Bool)

(assert (=> b!1168768 m!1076697))

(declare-fun m!1076699 () Bool)

(assert (=> b!1168768 m!1076699))

(declare-fun m!1076701 () Bool)

(assert (=> b!1168768 m!1076701))

(assert (=> b!1168768 m!1076697))

(declare-fun m!1076703 () Bool)

(assert (=> b!1168768 m!1076703))

(assert (=> b!1168770 m!1076697))

(assert (=> b!1168770 m!1076697))

(declare-fun m!1076705 () Bool)

(assert (=> b!1168770 m!1076705))

(assert (=> b!1168703 d!131853))

(declare-fun d!131855 () Bool)

(declare-fun e!664297 () Bool)

(assert (=> d!131855 e!664297))

(declare-fun res!775584 () Bool)

(assert (=> d!131855 (=> (not res!775584) (not e!664297))))

(declare-fun lt!526231 () ListLongMap!16879)

(declare-fun contains!6855 (ListLongMap!16879 (_ BitVec 64)) Bool)

(assert (=> d!131855 (= res!775584 (not (contains!6855 lt!526231 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!664299 () ListLongMap!16879)

(assert (=> d!131855 (= lt!526231 e!664299)))

(declare-fun c!116486 () Bool)

(assert (=> d!131855 (= c!116486 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36938 lt!526168)))))

(assert (=> d!131855 (validMask!0 mask!1564)))

(assert (=> d!131855 (= (getCurrentListMapNoExtraKeys!4888 lt!526168 lt!526173 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!526231)))

(declare-fun b!1168795 () Bool)

(declare-fun res!775586 () Bool)

(assert (=> b!1168795 (=> (not res!775586) (not e!664297))))

(assert (=> b!1168795 (= res!775586 (not (contains!6855 lt!526231 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1168796 () Bool)

(declare-fun e!664301 () Bool)

(assert (=> b!1168796 (= e!664301 (validKeyInArray!0 (select (arr!36401 lt!526168) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1168796 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun call!57102 () ListLongMap!16879)

(declare-fun bm!57099 () Bool)

(assert (=> bm!57099 (= call!57102 (getCurrentListMapNoExtraKeys!4888 lt!526168 lt!526173 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1168797 () Bool)

(declare-fun e!664298 () ListLongMap!16879)

(assert (=> b!1168797 (= e!664299 e!664298)))

(declare-fun c!116485 () Bool)

(assert (=> b!1168797 (= c!116485 (validKeyInArray!0 (select (arr!36401 lt!526168) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun e!664302 () Bool)

(declare-fun b!1168798 () Bool)

(assert (=> b!1168798 (= e!664302 (= lt!526231 (getCurrentListMapNoExtraKeys!4888 lt!526168 lt!526173 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1168799 () Bool)

(assert (=> b!1168799 (= e!664298 call!57102)))

(declare-fun b!1168800 () Bool)

(declare-fun lt!526230 () Unit!38458)

(declare-fun lt!526227 () Unit!38458)

(assert (=> b!1168800 (= lt!526230 lt!526227)))

(declare-fun lt!526229 () (_ BitVec 64))

(declare-fun lt!526228 () V!44283)

(declare-fun lt!526232 () ListLongMap!16879)

(declare-fun lt!526233 () (_ BitVec 64))

(assert (=> b!1168800 (not (contains!6855 (+!3705 lt!526232 (tuple2!18899 lt!526233 lt!526228)) lt!526229))))

(declare-fun addStillNotContains!287 (ListLongMap!16879 (_ BitVec 64) V!44283 (_ BitVec 64)) Unit!38458)

(assert (=> b!1168800 (= lt!526227 (addStillNotContains!287 lt!526232 lt!526233 lt!526228 lt!526229))))

(assert (=> b!1168800 (= lt!526229 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1168800 (= lt!526228 (get!18582 (select (arr!36402 lt!526173) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2880 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1168800 (= lt!526233 (select (arr!36401 lt!526168) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1168800 (= lt!526232 call!57102)))

(assert (=> b!1168800 (= e!664298 (+!3705 call!57102 (tuple2!18899 (select (arr!36401 lt!526168) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18582 (select (arr!36402 lt!526173) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2880 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1168801 () Bool)

(assert (=> b!1168801 (= e!664299 (ListLongMap!16880 Nil!25667))))

(declare-fun b!1168802 () Bool)

(declare-fun e!664300 () Bool)

(assert (=> b!1168802 (= e!664300 e!664302)))

(declare-fun c!116484 () Bool)

(assert (=> b!1168802 (= c!116484 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36938 lt!526168)))))

(declare-fun b!1168803 () Bool)

(assert (=> b!1168803 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36938 lt!526168)))))

(assert (=> b!1168803 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36939 lt!526173)))))

(declare-fun e!664296 () Bool)

(declare-fun apply!992 (ListLongMap!16879 (_ BitVec 64)) V!44283)

(assert (=> b!1168803 (= e!664296 (= (apply!992 lt!526231 (select (arr!36401 lt!526168) (bvadd #b00000000000000000000000000000001 from!1455))) (get!18582 (select (arr!36402 lt!526173) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2880 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1168804 () Bool)

(assert (=> b!1168804 (= e!664300 e!664296)))

(assert (=> b!1168804 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36938 lt!526168)))))

(declare-fun res!775583 () Bool)

(assert (=> b!1168804 (= res!775583 (contains!6855 lt!526231 (select (arr!36401 lt!526168) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1168804 (=> (not res!775583) (not e!664296))))

(declare-fun b!1168805 () Bool)

(assert (=> b!1168805 (= e!664297 e!664300)))

(declare-fun c!116487 () Bool)

(assert (=> b!1168805 (= c!116487 e!664301)))

(declare-fun res!775585 () Bool)

(assert (=> b!1168805 (=> (not res!775585) (not e!664301))))

(assert (=> b!1168805 (= res!775585 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36938 lt!526168)))))

(declare-fun b!1168806 () Bool)

(declare-fun isEmpty!980 (ListLongMap!16879) Bool)

(assert (=> b!1168806 (= e!664302 (isEmpty!980 lt!526231))))

(assert (= (and d!131855 c!116486) b!1168801))

(assert (= (and d!131855 (not c!116486)) b!1168797))

(assert (= (and b!1168797 c!116485) b!1168800))

(assert (= (and b!1168797 (not c!116485)) b!1168799))

(assert (= (or b!1168800 b!1168799) bm!57099))

(assert (= (and d!131855 res!775584) b!1168795))

(assert (= (and b!1168795 res!775586) b!1168805))

(assert (= (and b!1168805 res!775585) b!1168796))

(assert (= (and b!1168805 c!116487) b!1168804))

(assert (= (and b!1168805 (not c!116487)) b!1168802))

(assert (= (and b!1168804 res!775583) b!1168803))

(assert (= (and b!1168802 c!116484) b!1168798))

(assert (= (and b!1168802 (not c!116484)) b!1168806))

(declare-fun b_lambda!19967 () Bool)

(assert (=> (not b_lambda!19967) (not b!1168800)))

(assert (=> b!1168800 t!37505))

(declare-fun b_and!40545 () Bool)

(assert (= b_and!40539 (and (=> t!37505 result!19871) b_and!40545)))

(declare-fun b_lambda!19969 () Bool)

(assert (=> (not b_lambda!19969) (not b!1168803)))

(assert (=> b!1168803 t!37505))

(declare-fun b_and!40547 () Bool)

(assert (= b_and!40545 (and (=> t!37505 result!19871) b_and!40547)))

(declare-fun m!1076707 () Bool)

(assert (=> bm!57099 m!1076707))

(declare-fun m!1076709 () Bool)

(assert (=> d!131855 m!1076709))

(assert (=> d!131855 m!1076623))

(declare-fun m!1076711 () Bool)

(assert (=> b!1168803 m!1076711))

(declare-fun m!1076713 () Bool)

(assert (=> b!1168803 m!1076713))

(assert (=> b!1168803 m!1076711))

(assert (=> b!1168803 m!1076603))

(declare-fun m!1076715 () Bool)

(assert (=> b!1168803 m!1076715))

(assert (=> b!1168803 m!1076603))

(assert (=> b!1168803 m!1076713))

(declare-fun m!1076717 () Bool)

(assert (=> b!1168803 m!1076717))

(assert (=> b!1168804 m!1076713))

(assert (=> b!1168804 m!1076713))

(declare-fun m!1076719 () Bool)

(assert (=> b!1168804 m!1076719))

(declare-fun m!1076721 () Bool)

(assert (=> b!1168806 m!1076721))

(assert (=> b!1168798 m!1076707))

(assert (=> b!1168796 m!1076713))

(assert (=> b!1168796 m!1076713))

(declare-fun m!1076723 () Bool)

(assert (=> b!1168796 m!1076723))

(declare-fun m!1076725 () Bool)

(assert (=> b!1168795 m!1076725))

(assert (=> b!1168797 m!1076713))

(assert (=> b!1168797 m!1076713))

(assert (=> b!1168797 m!1076723))

(declare-fun m!1076727 () Bool)

(assert (=> b!1168800 m!1076727))

(declare-fun m!1076729 () Bool)

(assert (=> b!1168800 m!1076729))

(assert (=> b!1168800 m!1076713))

(assert (=> b!1168800 m!1076711))

(assert (=> b!1168800 m!1076603))

(assert (=> b!1168800 m!1076715))

(assert (=> b!1168800 m!1076603))

(declare-fun m!1076731 () Bool)

(assert (=> b!1168800 m!1076731))

(declare-fun m!1076733 () Bool)

(assert (=> b!1168800 m!1076733))

(assert (=> b!1168800 m!1076731))

(assert (=> b!1168800 m!1076711))

(assert (=> b!1168694 d!131855))

(declare-fun d!131857 () Bool)

(assert (=> d!131857 (= (validKeyInArray!0 (select (arr!36401 _keys!1208) from!1455)) (and (not (= (select (arr!36401 _keys!1208) from!1455) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!36401 _keys!1208) from!1455) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1168694 d!131857))

(declare-fun d!131859 () Bool)

(declare-fun lt!526236 () ListLongMap!16879)

(assert (=> d!131859 (not (contains!6855 lt!526236 k0!934))))

(declare-fun removeStrictlySorted!92 (List!25670 (_ BitVec 64)) List!25670)

(assert (=> d!131859 (= lt!526236 (ListLongMap!16880 (removeStrictlySorted!92 (toList!8455 lt!526165) k0!934)))))

(assert (=> d!131859 (= (-!1482 lt!526165 k0!934) lt!526236)))

(declare-fun bs!33428 () Bool)

(assert (= bs!33428 d!131859))

(declare-fun m!1076735 () Bool)

(assert (=> bs!33428 m!1076735))

(declare-fun m!1076737 () Bool)

(assert (=> bs!33428 m!1076737))

(assert (=> b!1168694 d!131859))

(declare-fun b!1168813 () Bool)

(declare-fun e!664308 () Bool)

(declare-fun call!57107 () ListLongMap!16879)

(declare-fun call!57108 () ListLongMap!16879)

(assert (=> b!1168813 (= e!664308 (= call!57107 call!57108))))

(assert (=> b!1168813 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36939 _values!996)))))

(declare-fun bm!57104 () Bool)

(assert (=> bm!57104 (= call!57108 (getCurrentListMapNoExtraKeys!4888 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1168814 () Bool)

(assert (=> b!1168814 (= e!664308 (= call!57107 (-!1482 call!57108 k0!934)))))

(assert (=> b!1168814 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36939 _values!996)))))

(declare-fun b!1168815 () Bool)

(declare-fun e!664307 () Bool)

(assert (=> b!1168815 (= e!664307 e!664308)))

(declare-fun c!116490 () Bool)

(assert (=> b!1168815 (= c!116490 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun bm!57105 () Bool)

(assert (=> bm!57105 (= call!57107 (getCurrentListMapNoExtraKeys!4888 (array!75509 (store (arr!36401 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36938 _keys!1208)) (array!75511 (store (arr!36402 _values!996) i!673 (ValueCellFull!13974 (dynLambda!2880 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36939 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun d!131861 () Bool)

(assert (=> d!131861 e!664307))

(declare-fun res!775589 () Bool)

(assert (=> d!131861 (=> (not res!775589) (not e!664307))))

(assert (=> d!131861 (= res!775589 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36938 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36938 _keys!1208))))))))

(declare-fun lt!526239 () Unit!38458)

(declare-fun choose!1790 (array!75508 array!75510 (_ BitVec 32) (_ BitVec 32) V!44283 V!44283 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38458)

(assert (=> d!131861 (= lt!526239 (choose!1790 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!131861 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!36938 _keys!1208)))))

(assert (=> d!131861 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!706 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!526239)))

(assert (= (and d!131861 res!775589) b!1168815))

(assert (= (and b!1168815 c!116490) b!1168814))

(assert (= (and b!1168815 (not c!116490)) b!1168813))

(assert (= (or b!1168814 b!1168813) bm!57104))

(assert (= (or b!1168814 b!1168813) bm!57105))

(declare-fun b_lambda!19971 () Bool)

(assert (=> (not b_lambda!19971) (not bm!57105)))

(assert (=> bm!57105 t!37505))

(declare-fun b_and!40549 () Bool)

(assert (= b_and!40547 (and (=> t!37505 result!19871) b_and!40549)))

(assert (=> bm!57104 m!1076629))

(declare-fun m!1076739 () Bool)

(assert (=> b!1168814 m!1076739))

(assert (=> bm!57105 m!1076641))

(assert (=> bm!57105 m!1076603))

(declare-fun m!1076741 () Bool)

(assert (=> bm!57105 m!1076741))

(declare-fun m!1076743 () Bool)

(assert (=> bm!57105 m!1076743))

(declare-fun m!1076745 () Bool)

(assert (=> d!131861 m!1076745))

(assert (=> b!1168694 d!131861))

(declare-fun d!131863 () Bool)

(declare-fun e!664310 () Bool)

(assert (=> d!131863 e!664310))

(declare-fun res!775591 () Bool)

(assert (=> d!131863 (=> (not res!775591) (not e!664310))))

(declare-fun lt!526244 () ListLongMap!16879)

(assert (=> d!131863 (= res!775591 (not (contains!6855 lt!526244 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!664312 () ListLongMap!16879)

(assert (=> d!131863 (= lt!526244 e!664312)))

(declare-fun c!116493 () Bool)

(assert (=> d!131863 (= c!116493 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36938 _keys!1208)))))

(assert (=> d!131863 (validMask!0 mask!1564)))

(assert (=> d!131863 (= (getCurrentListMapNoExtraKeys!4888 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!526244)))

(declare-fun b!1168816 () Bool)

(declare-fun res!775593 () Bool)

(assert (=> b!1168816 (=> (not res!775593) (not e!664310))))

(assert (=> b!1168816 (= res!775593 (not (contains!6855 lt!526244 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1168817 () Bool)

(declare-fun e!664314 () Bool)

(assert (=> b!1168817 (= e!664314 (validKeyInArray!0 (select (arr!36401 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1168817 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun bm!57106 () Bool)

(declare-fun call!57109 () ListLongMap!16879)

(assert (=> bm!57106 (= call!57109 (getCurrentListMapNoExtraKeys!4888 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1168818 () Bool)

(declare-fun e!664311 () ListLongMap!16879)

(assert (=> b!1168818 (= e!664312 e!664311)))

(declare-fun c!116492 () Bool)

(assert (=> b!1168818 (= c!116492 (validKeyInArray!0 (select (arr!36401 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1168819 () Bool)

(declare-fun e!664315 () Bool)

(assert (=> b!1168819 (= e!664315 (= lt!526244 (getCurrentListMapNoExtraKeys!4888 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1168820 () Bool)

(assert (=> b!1168820 (= e!664311 call!57109)))

(declare-fun b!1168821 () Bool)

(declare-fun lt!526243 () Unit!38458)

(declare-fun lt!526240 () Unit!38458)

(assert (=> b!1168821 (= lt!526243 lt!526240)))

(declare-fun lt!526245 () ListLongMap!16879)

(declare-fun lt!526242 () (_ BitVec 64))

(declare-fun lt!526241 () V!44283)

(declare-fun lt!526246 () (_ BitVec 64))

(assert (=> b!1168821 (not (contains!6855 (+!3705 lt!526245 (tuple2!18899 lt!526246 lt!526241)) lt!526242))))

(assert (=> b!1168821 (= lt!526240 (addStillNotContains!287 lt!526245 lt!526246 lt!526241 lt!526242))))

(assert (=> b!1168821 (= lt!526242 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1168821 (= lt!526241 (get!18582 (select (arr!36402 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2880 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1168821 (= lt!526246 (select (arr!36401 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1168821 (= lt!526245 call!57109)))

(assert (=> b!1168821 (= e!664311 (+!3705 call!57109 (tuple2!18899 (select (arr!36401 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!18582 (select (arr!36402 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2880 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1168822 () Bool)

(assert (=> b!1168822 (= e!664312 (ListLongMap!16880 Nil!25667))))

(declare-fun b!1168823 () Bool)

(declare-fun e!664313 () Bool)

(assert (=> b!1168823 (= e!664313 e!664315)))

(declare-fun c!116491 () Bool)

(assert (=> b!1168823 (= c!116491 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36938 _keys!1208)))))

(declare-fun b!1168824 () Bool)

(assert (=> b!1168824 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36938 _keys!1208)))))

(assert (=> b!1168824 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36939 _values!996)))))

(declare-fun e!664309 () Bool)

(assert (=> b!1168824 (= e!664309 (= (apply!992 lt!526244 (select (arr!36401 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!18582 (select (arr!36402 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!2880 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1168825 () Bool)

(assert (=> b!1168825 (= e!664313 e!664309)))

(assert (=> b!1168825 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36938 _keys!1208)))))

(declare-fun res!775590 () Bool)

(assert (=> b!1168825 (= res!775590 (contains!6855 lt!526244 (select (arr!36401 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1168825 (=> (not res!775590) (not e!664309))))

(declare-fun b!1168826 () Bool)

(assert (=> b!1168826 (= e!664310 e!664313)))

(declare-fun c!116494 () Bool)

(assert (=> b!1168826 (= c!116494 e!664314)))

(declare-fun res!775592 () Bool)

(assert (=> b!1168826 (=> (not res!775592) (not e!664314))))

(assert (=> b!1168826 (= res!775592 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!36938 _keys!1208)))))

(declare-fun b!1168827 () Bool)

(assert (=> b!1168827 (= e!664315 (isEmpty!980 lt!526244))))

(assert (= (and d!131863 c!116493) b!1168822))

(assert (= (and d!131863 (not c!116493)) b!1168818))

(assert (= (and b!1168818 c!116492) b!1168821))

(assert (= (and b!1168818 (not c!116492)) b!1168820))

(assert (= (or b!1168821 b!1168820) bm!57106))

(assert (= (and d!131863 res!775591) b!1168816))

(assert (= (and b!1168816 res!775593) b!1168826))

(assert (= (and b!1168826 res!775592) b!1168817))

(assert (= (and b!1168826 c!116494) b!1168825))

(assert (= (and b!1168826 (not c!116494)) b!1168823))

(assert (= (and b!1168825 res!775590) b!1168824))

(assert (= (and b!1168823 c!116491) b!1168819))

(assert (= (and b!1168823 (not c!116491)) b!1168827))

(declare-fun b_lambda!19973 () Bool)

(assert (=> (not b_lambda!19973) (not b!1168821)))

(assert (=> b!1168821 t!37505))

(declare-fun b_and!40551 () Bool)

(assert (= b_and!40549 (and (=> t!37505 result!19871) b_and!40551)))

(declare-fun b_lambda!19975 () Bool)

(assert (=> (not b_lambda!19975) (not b!1168824)))

(assert (=> b!1168824 t!37505))

(declare-fun b_and!40553 () Bool)

(assert (= b_and!40551 (and (=> t!37505 result!19871) b_and!40553)))

(declare-fun m!1076747 () Bool)

(assert (=> bm!57106 m!1076747))

(declare-fun m!1076749 () Bool)

(assert (=> d!131863 m!1076749))

(assert (=> d!131863 m!1076623))

(declare-fun m!1076751 () Bool)

(assert (=> b!1168824 m!1076751))

(declare-fun m!1076753 () Bool)

(assert (=> b!1168824 m!1076753))

(assert (=> b!1168824 m!1076751))

(assert (=> b!1168824 m!1076603))

(declare-fun m!1076755 () Bool)

(assert (=> b!1168824 m!1076755))

(assert (=> b!1168824 m!1076603))

(assert (=> b!1168824 m!1076753))

(declare-fun m!1076757 () Bool)

(assert (=> b!1168824 m!1076757))

(assert (=> b!1168825 m!1076753))

(assert (=> b!1168825 m!1076753))

(declare-fun m!1076759 () Bool)

(assert (=> b!1168825 m!1076759))

(declare-fun m!1076761 () Bool)

(assert (=> b!1168827 m!1076761))

(assert (=> b!1168819 m!1076747))

(assert (=> b!1168817 m!1076753))

(assert (=> b!1168817 m!1076753))

(declare-fun m!1076763 () Bool)

(assert (=> b!1168817 m!1076763))

(declare-fun m!1076765 () Bool)

(assert (=> b!1168816 m!1076765))

(assert (=> b!1168818 m!1076753))

(assert (=> b!1168818 m!1076753))

(assert (=> b!1168818 m!1076763))

(declare-fun m!1076767 () Bool)

(assert (=> b!1168821 m!1076767))

(declare-fun m!1076769 () Bool)

(assert (=> b!1168821 m!1076769))

(assert (=> b!1168821 m!1076753))

(assert (=> b!1168821 m!1076751))

(assert (=> b!1168821 m!1076603))

(assert (=> b!1168821 m!1076755))

(assert (=> b!1168821 m!1076603))

(declare-fun m!1076771 () Bool)

(assert (=> b!1168821 m!1076771))

(declare-fun m!1076773 () Bool)

(assert (=> b!1168821 m!1076773))

(assert (=> b!1168821 m!1076771))

(assert (=> b!1168821 m!1076751))

(assert (=> b!1168694 d!131863))

(declare-fun d!131865 () Bool)

(declare-fun e!664317 () Bool)

(assert (=> d!131865 e!664317))

(declare-fun res!775595 () Bool)

(assert (=> d!131865 (=> (not res!775595) (not e!664317))))

(declare-fun lt!526251 () ListLongMap!16879)

(assert (=> d!131865 (= res!775595 (not (contains!6855 lt!526251 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!664319 () ListLongMap!16879)

(assert (=> d!131865 (= lt!526251 e!664319)))

(declare-fun c!116497 () Bool)

(assert (=> d!131865 (= c!116497 (bvsge from!1455 (size!36938 lt!526168)))))

(assert (=> d!131865 (validMask!0 mask!1564)))

(assert (=> d!131865 (= (getCurrentListMapNoExtraKeys!4888 lt!526168 lt!526173 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!526251)))

(declare-fun b!1168828 () Bool)

(declare-fun res!775597 () Bool)

(assert (=> b!1168828 (=> (not res!775597) (not e!664317))))

(assert (=> b!1168828 (= res!775597 (not (contains!6855 lt!526251 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1168829 () Bool)

(declare-fun e!664321 () Bool)

(assert (=> b!1168829 (= e!664321 (validKeyInArray!0 (select (arr!36401 lt!526168) from!1455)))))

(assert (=> b!1168829 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun call!57110 () ListLongMap!16879)

(declare-fun bm!57107 () Bool)

(assert (=> bm!57107 (= call!57110 (getCurrentListMapNoExtraKeys!4888 lt!526168 lt!526173 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1168830 () Bool)

(declare-fun e!664318 () ListLongMap!16879)

(assert (=> b!1168830 (= e!664319 e!664318)))

(declare-fun c!116496 () Bool)

(assert (=> b!1168830 (= c!116496 (validKeyInArray!0 (select (arr!36401 lt!526168) from!1455)))))

(declare-fun e!664322 () Bool)

(declare-fun b!1168831 () Bool)

(assert (=> b!1168831 (= e!664322 (= lt!526251 (getCurrentListMapNoExtraKeys!4888 lt!526168 lt!526173 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1168832 () Bool)

(assert (=> b!1168832 (= e!664318 call!57110)))

(declare-fun b!1168833 () Bool)

(declare-fun lt!526250 () Unit!38458)

(declare-fun lt!526247 () Unit!38458)

(assert (=> b!1168833 (= lt!526250 lt!526247)))

(declare-fun lt!526252 () ListLongMap!16879)

(declare-fun lt!526249 () (_ BitVec 64))

(declare-fun lt!526253 () (_ BitVec 64))

(declare-fun lt!526248 () V!44283)

(assert (=> b!1168833 (not (contains!6855 (+!3705 lt!526252 (tuple2!18899 lt!526253 lt!526248)) lt!526249))))

(assert (=> b!1168833 (= lt!526247 (addStillNotContains!287 lt!526252 lt!526253 lt!526248 lt!526249))))

(assert (=> b!1168833 (= lt!526249 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1168833 (= lt!526248 (get!18582 (select (arr!36402 lt!526173) from!1455) (dynLambda!2880 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1168833 (= lt!526253 (select (arr!36401 lt!526168) from!1455))))

(assert (=> b!1168833 (= lt!526252 call!57110)))

(assert (=> b!1168833 (= e!664318 (+!3705 call!57110 (tuple2!18899 (select (arr!36401 lt!526168) from!1455) (get!18582 (select (arr!36402 lt!526173) from!1455) (dynLambda!2880 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1168834 () Bool)

(assert (=> b!1168834 (= e!664319 (ListLongMap!16880 Nil!25667))))

(declare-fun b!1168835 () Bool)

(declare-fun e!664320 () Bool)

(assert (=> b!1168835 (= e!664320 e!664322)))

(declare-fun c!116495 () Bool)

(assert (=> b!1168835 (= c!116495 (bvslt from!1455 (size!36938 lt!526168)))))

(declare-fun b!1168836 () Bool)

(assert (=> b!1168836 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!36938 lt!526168)))))

(assert (=> b!1168836 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!36939 lt!526173)))))

(declare-fun e!664316 () Bool)

(assert (=> b!1168836 (= e!664316 (= (apply!992 lt!526251 (select (arr!36401 lt!526168) from!1455)) (get!18582 (select (arr!36402 lt!526173) from!1455) (dynLambda!2880 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1168837 () Bool)

(assert (=> b!1168837 (= e!664320 e!664316)))

(assert (=> b!1168837 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!36938 lt!526168)))))

(declare-fun res!775594 () Bool)

(assert (=> b!1168837 (= res!775594 (contains!6855 lt!526251 (select (arr!36401 lt!526168) from!1455)))))

(assert (=> b!1168837 (=> (not res!775594) (not e!664316))))

(declare-fun b!1168838 () Bool)

(assert (=> b!1168838 (= e!664317 e!664320)))

(declare-fun c!116498 () Bool)

(assert (=> b!1168838 (= c!116498 e!664321)))

(declare-fun res!775596 () Bool)

(assert (=> b!1168838 (=> (not res!775596) (not e!664321))))

(assert (=> b!1168838 (= res!775596 (bvslt from!1455 (size!36938 lt!526168)))))

(declare-fun b!1168839 () Bool)

(assert (=> b!1168839 (= e!664322 (isEmpty!980 lt!526251))))

(assert (= (and d!131865 c!116497) b!1168834))

(assert (= (and d!131865 (not c!116497)) b!1168830))

(assert (= (and b!1168830 c!116496) b!1168833))

(assert (= (and b!1168830 (not c!116496)) b!1168832))

(assert (= (or b!1168833 b!1168832) bm!57107))

(assert (= (and d!131865 res!775595) b!1168828))

(assert (= (and b!1168828 res!775597) b!1168838))

(assert (= (and b!1168838 res!775596) b!1168829))

(assert (= (and b!1168838 c!116498) b!1168837))

(assert (= (and b!1168838 (not c!116498)) b!1168835))

(assert (= (and b!1168837 res!775594) b!1168836))

(assert (= (and b!1168835 c!116495) b!1168831))

(assert (= (and b!1168835 (not c!116495)) b!1168839))

(declare-fun b_lambda!19977 () Bool)

(assert (=> (not b_lambda!19977) (not b!1168833)))

(assert (=> b!1168833 t!37505))

(declare-fun b_and!40555 () Bool)

(assert (= b_and!40553 (and (=> t!37505 result!19871) b_and!40555)))

(declare-fun b_lambda!19979 () Bool)

(assert (=> (not b_lambda!19979) (not b!1168836)))

(assert (=> b!1168836 t!37505))

(declare-fun b_and!40557 () Bool)

(assert (= b_and!40555 (and (=> t!37505 result!19871) b_and!40557)))

(declare-fun m!1076775 () Bool)

(assert (=> bm!57107 m!1076775))

(declare-fun m!1076777 () Bool)

(assert (=> d!131865 m!1076777))

(assert (=> d!131865 m!1076623))

(declare-fun m!1076779 () Bool)

(assert (=> b!1168836 m!1076779))

(declare-fun m!1076781 () Bool)

(assert (=> b!1168836 m!1076781))

(assert (=> b!1168836 m!1076779))

(assert (=> b!1168836 m!1076603))

(declare-fun m!1076783 () Bool)

(assert (=> b!1168836 m!1076783))

(assert (=> b!1168836 m!1076603))

(assert (=> b!1168836 m!1076781))

(declare-fun m!1076785 () Bool)

(assert (=> b!1168836 m!1076785))

(assert (=> b!1168837 m!1076781))

(assert (=> b!1168837 m!1076781))

(declare-fun m!1076787 () Bool)

(assert (=> b!1168837 m!1076787))

(declare-fun m!1076789 () Bool)

(assert (=> b!1168839 m!1076789))

(assert (=> b!1168831 m!1076775))

(assert (=> b!1168829 m!1076781))

(assert (=> b!1168829 m!1076781))

(declare-fun m!1076791 () Bool)

(assert (=> b!1168829 m!1076791))

(declare-fun m!1076793 () Bool)

(assert (=> b!1168828 m!1076793))

(assert (=> b!1168830 m!1076781))

(assert (=> b!1168830 m!1076781))

(assert (=> b!1168830 m!1076791))

(declare-fun m!1076795 () Bool)

(assert (=> b!1168833 m!1076795))

(declare-fun m!1076797 () Bool)

(assert (=> b!1168833 m!1076797))

(assert (=> b!1168833 m!1076781))

(assert (=> b!1168833 m!1076779))

(assert (=> b!1168833 m!1076603))

(assert (=> b!1168833 m!1076783))

(assert (=> b!1168833 m!1076603))

(declare-fun m!1076799 () Bool)

(assert (=> b!1168833 m!1076799))

(declare-fun m!1076801 () Bool)

(assert (=> b!1168833 m!1076801))

(assert (=> b!1168833 m!1076799))

(assert (=> b!1168833 m!1076779))

(assert (=> b!1168695 d!131865))

(declare-fun d!131867 () Bool)

(declare-fun e!664324 () Bool)

(assert (=> d!131867 e!664324))

(declare-fun res!775599 () Bool)

(assert (=> d!131867 (=> (not res!775599) (not e!664324))))

(declare-fun lt!526258 () ListLongMap!16879)

(assert (=> d!131867 (= res!775599 (not (contains!6855 lt!526258 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!664326 () ListLongMap!16879)

(assert (=> d!131867 (= lt!526258 e!664326)))

(declare-fun c!116501 () Bool)

(assert (=> d!131867 (= c!116501 (bvsge from!1455 (size!36938 _keys!1208)))))

(assert (=> d!131867 (validMask!0 mask!1564)))

(assert (=> d!131867 (= (getCurrentListMapNoExtraKeys!4888 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!526258)))

(declare-fun b!1168840 () Bool)

(declare-fun res!775601 () Bool)

(assert (=> b!1168840 (=> (not res!775601) (not e!664324))))

(assert (=> b!1168840 (= res!775601 (not (contains!6855 lt!526258 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1168841 () Bool)

(declare-fun e!664328 () Bool)

(assert (=> b!1168841 (= e!664328 (validKeyInArray!0 (select (arr!36401 _keys!1208) from!1455)))))

(assert (=> b!1168841 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun bm!57108 () Bool)

(declare-fun call!57111 () ListLongMap!16879)

(assert (=> bm!57108 (= call!57111 (getCurrentListMapNoExtraKeys!4888 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1168842 () Bool)

(declare-fun e!664325 () ListLongMap!16879)

(assert (=> b!1168842 (= e!664326 e!664325)))

(declare-fun c!116500 () Bool)

(assert (=> b!1168842 (= c!116500 (validKeyInArray!0 (select (arr!36401 _keys!1208) from!1455)))))

(declare-fun b!1168843 () Bool)

(declare-fun e!664329 () Bool)

(assert (=> b!1168843 (= e!664329 (= lt!526258 (getCurrentListMapNoExtraKeys!4888 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1168844 () Bool)

(assert (=> b!1168844 (= e!664325 call!57111)))

(declare-fun b!1168845 () Bool)

(declare-fun lt!526257 () Unit!38458)

(declare-fun lt!526254 () Unit!38458)

(assert (=> b!1168845 (= lt!526257 lt!526254)))

(declare-fun lt!526260 () (_ BitVec 64))

(declare-fun lt!526259 () ListLongMap!16879)

(declare-fun lt!526255 () V!44283)

(declare-fun lt!526256 () (_ BitVec 64))

(assert (=> b!1168845 (not (contains!6855 (+!3705 lt!526259 (tuple2!18899 lt!526260 lt!526255)) lt!526256))))

(assert (=> b!1168845 (= lt!526254 (addStillNotContains!287 lt!526259 lt!526260 lt!526255 lt!526256))))

(assert (=> b!1168845 (= lt!526256 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1168845 (= lt!526255 (get!18582 (select (arr!36402 _values!996) from!1455) (dynLambda!2880 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1168845 (= lt!526260 (select (arr!36401 _keys!1208) from!1455))))

(assert (=> b!1168845 (= lt!526259 call!57111)))

(assert (=> b!1168845 (= e!664325 (+!3705 call!57111 (tuple2!18899 (select (arr!36401 _keys!1208) from!1455) (get!18582 (select (arr!36402 _values!996) from!1455) (dynLambda!2880 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1168846 () Bool)

(assert (=> b!1168846 (= e!664326 (ListLongMap!16880 Nil!25667))))

(declare-fun b!1168847 () Bool)

(declare-fun e!664327 () Bool)

(assert (=> b!1168847 (= e!664327 e!664329)))

(declare-fun c!116499 () Bool)

(assert (=> b!1168847 (= c!116499 (bvslt from!1455 (size!36938 _keys!1208)))))

(declare-fun b!1168848 () Bool)

(assert (=> b!1168848 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!36938 _keys!1208)))))

(assert (=> b!1168848 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!36939 _values!996)))))

(declare-fun e!664323 () Bool)

(assert (=> b!1168848 (= e!664323 (= (apply!992 lt!526258 (select (arr!36401 _keys!1208) from!1455)) (get!18582 (select (arr!36402 _values!996) from!1455) (dynLambda!2880 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1168849 () Bool)

(assert (=> b!1168849 (= e!664327 e!664323)))

(assert (=> b!1168849 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!36938 _keys!1208)))))

(declare-fun res!775598 () Bool)

(assert (=> b!1168849 (= res!775598 (contains!6855 lt!526258 (select (arr!36401 _keys!1208) from!1455)))))

(assert (=> b!1168849 (=> (not res!775598) (not e!664323))))

(declare-fun b!1168850 () Bool)

(assert (=> b!1168850 (= e!664324 e!664327)))

(declare-fun c!116502 () Bool)

(assert (=> b!1168850 (= c!116502 e!664328)))

(declare-fun res!775600 () Bool)

(assert (=> b!1168850 (=> (not res!775600) (not e!664328))))

(assert (=> b!1168850 (= res!775600 (bvslt from!1455 (size!36938 _keys!1208)))))

(declare-fun b!1168851 () Bool)

(assert (=> b!1168851 (= e!664329 (isEmpty!980 lt!526258))))

(assert (= (and d!131867 c!116501) b!1168846))

(assert (= (and d!131867 (not c!116501)) b!1168842))

(assert (= (and b!1168842 c!116500) b!1168845))

(assert (= (and b!1168842 (not c!116500)) b!1168844))

(assert (= (or b!1168845 b!1168844) bm!57108))

(assert (= (and d!131867 res!775599) b!1168840))

(assert (= (and b!1168840 res!775601) b!1168850))

(assert (= (and b!1168850 res!775600) b!1168841))

(assert (= (and b!1168850 c!116502) b!1168849))

(assert (= (and b!1168850 (not c!116502)) b!1168847))

(assert (= (and b!1168849 res!775598) b!1168848))

(assert (= (and b!1168847 c!116499) b!1168843))

(assert (= (and b!1168847 (not c!116499)) b!1168851))

(declare-fun b_lambda!19981 () Bool)

(assert (=> (not b_lambda!19981) (not b!1168845)))

(assert (=> b!1168845 t!37505))

(declare-fun b_and!40559 () Bool)

(assert (= b_and!40557 (and (=> t!37505 result!19871) b_and!40559)))

(declare-fun b_lambda!19983 () Bool)

(assert (=> (not b_lambda!19983) (not b!1168848)))

(assert (=> b!1168848 t!37505))

(declare-fun b_and!40561 () Bool)

(assert (= b_and!40559 (and (=> t!37505 result!19871) b_and!40561)))

(declare-fun m!1076803 () Bool)

(assert (=> bm!57108 m!1076803))

(declare-fun m!1076805 () Bool)

(assert (=> d!131867 m!1076805))

(assert (=> d!131867 m!1076623))

(assert (=> b!1168848 m!1076617))

(assert (=> b!1168848 m!1076615))

(assert (=> b!1168848 m!1076617))

(assert (=> b!1168848 m!1076603))

(declare-fun m!1076807 () Bool)

(assert (=> b!1168848 m!1076807))

(assert (=> b!1168848 m!1076603))

(assert (=> b!1168848 m!1076615))

(declare-fun m!1076809 () Bool)

(assert (=> b!1168848 m!1076809))

(assert (=> b!1168849 m!1076615))

(assert (=> b!1168849 m!1076615))

(declare-fun m!1076811 () Bool)

(assert (=> b!1168849 m!1076811))

(declare-fun m!1076813 () Bool)

(assert (=> b!1168851 m!1076813))

(assert (=> b!1168843 m!1076803))

(assert (=> b!1168841 m!1076615))

(assert (=> b!1168841 m!1076615))

(assert (=> b!1168841 m!1076635))

(declare-fun m!1076815 () Bool)

(assert (=> b!1168840 m!1076815))

(assert (=> b!1168842 m!1076615))

(assert (=> b!1168842 m!1076615))

(assert (=> b!1168842 m!1076635))

(declare-fun m!1076817 () Bool)

(assert (=> b!1168845 m!1076817))

(declare-fun m!1076819 () Bool)

(assert (=> b!1168845 m!1076819))

(assert (=> b!1168845 m!1076615))

(assert (=> b!1168845 m!1076617))

(assert (=> b!1168845 m!1076603))

(assert (=> b!1168845 m!1076807))

(assert (=> b!1168845 m!1076603))

(declare-fun m!1076821 () Bool)

(assert (=> b!1168845 m!1076821))

(declare-fun m!1076823 () Bool)

(assert (=> b!1168845 m!1076823))

(assert (=> b!1168845 m!1076821))

(assert (=> b!1168845 m!1076617))

(assert (=> b!1168695 d!131867))

(declare-fun b!1168862 () Bool)

(declare-fun e!664339 () Bool)

(declare-fun e!664338 () Bool)

(assert (=> b!1168862 (= e!664339 e!664338)))

(declare-fun c!116505 () Bool)

(assert (=> b!1168862 (= c!116505 (validKeyInArray!0 (select (arr!36401 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!131869 () Bool)

(declare-fun res!775609 () Bool)

(declare-fun e!664341 () Bool)

(assert (=> d!131869 (=> res!775609 e!664341)))

(assert (=> d!131869 (= res!775609 (bvsge #b00000000000000000000000000000000 (size!36938 _keys!1208)))))

(assert (=> d!131869 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25668) e!664341)))

(declare-fun b!1168863 () Bool)

(declare-fun call!57114 () Bool)

(assert (=> b!1168863 (= e!664338 call!57114)))

(declare-fun b!1168864 () Bool)

(declare-fun e!664340 () Bool)

(declare-fun contains!6856 (List!25671 (_ BitVec 64)) Bool)

(assert (=> b!1168864 (= e!664340 (contains!6856 Nil!25668 (select (arr!36401 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1168865 () Bool)

(assert (=> b!1168865 (= e!664338 call!57114)))

(declare-fun bm!57111 () Bool)

(assert (=> bm!57111 (= call!57114 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!116505 (Cons!25667 (select (arr!36401 _keys!1208) #b00000000000000000000000000000000) Nil!25668) Nil!25668)))))

(declare-fun b!1168866 () Bool)

(assert (=> b!1168866 (= e!664341 e!664339)))

(declare-fun res!775608 () Bool)

(assert (=> b!1168866 (=> (not res!775608) (not e!664339))))

(assert (=> b!1168866 (= res!775608 (not e!664340))))

(declare-fun res!775610 () Bool)

(assert (=> b!1168866 (=> (not res!775610) (not e!664340))))

(assert (=> b!1168866 (= res!775610 (validKeyInArray!0 (select (arr!36401 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!131869 (not res!775609)) b!1168866))

(assert (= (and b!1168866 res!775610) b!1168864))

(assert (= (and b!1168866 res!775608) b!1168862))

(assert (= (and b!1168862 c!116505) b!1168863))

(assert (= (and b!1168862 (not c!116505)) b!1168865))

(assert (= (or b!1168863 b!1168865) bm!57111))

(assert (=> b!1168862 m!1076697))

(assert (=> b!1168862 m!1076697))

(assert (=> b!1168862 m!1076705))

(assert (=> b!1168864 m!1076697))

(assert (=> b!1168864 m!1076697))

(declare-fun m!1076825 () Bool)

(assert (=> b!1168864 m!1076825))

(assert (=> bm!57111 m!1076697))

(declare-fun m!1076827 () Bool)

(assert (=> bm!57111 m!1076827))

(assert (=> b!1168866 m!1076697))

(assert (=> b!1168866 m!1076697))

(assert (=> b!1168866 m!1076705))

(assert (=> b!1168706 d!131869))

(declare-fun d!131871 () Bool)

(assert (=> d!131871 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1168698 d!131871))

(declare-fun b!1168867 () Bool)

(declare-fun e!664343 () Bool)

(declare-fun e!664342 () Bool)

(assert (=> b!1168867 (= e!664343 e!664342)))

(declare-fun c!116506 () Bool)

(assert (=> b!1168867 (= c!116506 (validKeyInArray!0 (select (arr!36401 lt!526168) #b00000000000000000000000000000000)))))

(declare-fun d!131873 () Bool)

(declare-fun res!775612 () Bool)

(declare-fun e!664345 () Bool)

(assert (=> d!131873 (=> res!775612 e!664345)))

(assert (=> d!131873 (= res!775612 (bvsge #b00000000000000000000000000000000 (size!36938 lt!526168)))))

(assert (=> d!131873 (= (arrayNoDuplicates!0 lt!526168 #b00000000000000000000000000000000 Nil!25668) e!664345)))

(declare-fun b!1168868 () Bool)

(declare-fun call!57115 () Bool)

(assert (=> b!1168868 (= e!664342 call!57115)))

(declare-fun b!1168869 () Bool)

(declare-fun e!664344 () Bool)

(assert (=> b!1168869 (= e!664344 (contains!6856 Nil!25668 (select (arr!36401 lt!526168) #b00000000000000000000000000000000)))))

(declare-fun b!1168870 () Bool)

(assert (=> b!1168870 (= e!664342 call!57115)))

(declare-fun bm!57112 () Bool)

(assert (=> bm!57112 (= call!57115 (arrayNoDuplicates!0 lt!526168 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!116506 (Cons!25667 (select (arr!36401 lt!526168) #b00000000000000000000000000000000) Nil!25668) Nil!25668)))))

(declare-fun b!1168871 () Bool)

(assert (=> b!1168871 (= e!664345 e!664343)))

(declare-fun res!775611 () Bool)

(assert (=> b!1168871 (=> (not res!775611) (not e!664343))))

(assert (=> b!1168871 (= res!775611 (not e!664344))))

(declare-fun res!775613 () Bool)

(assert (=> b!1168871 (=> (not res!775613) (not e!664344))))

(assert (=> b!1168871 (= res!775613 (validKeyInArray!0 (select (arr!36401 lt!526168) #b00000000000000000000000000000000)))))

(assert (= (and d!131873 (not res!775612)) b!1168871))

(assert (= (and b!1168871 res!775613) b!1168869))

(assert (= (and b!1168871 res!775611) b!1168867))

(assert (= (and b!1168867 c!116506) b!1168868))

(assert (= (and b!1168867 (not c!116506)) b!1168870))

(assert (= (or b!1168868 b!1168870) bm!57112))

(declare-fun m!1076829 () Bool)

(assert (=> b!1168867 m!1076829))

(assert (=> b!1168867 m!1076829))

(declare-fun m!1076831 () Bool)

(assert (=> b!1168867 m!1076831))

(assert (=> b!1168869 m!1076829))

(assert (=> b!1168869 m!1076829))

(declare-fun m!1076833 () Bool)

(assert (=> b!1168869 m!1076833))

(assert (=> bm!57112 m!1076829))

(declare-fun m!1076835 () Bool)

(assert (=> bm!57112 m!1076835))

(assert (=> b!1168871 m!1076829))

(assert (=> b!1168871 m!1076829))

(assert (=> b!1168871 m!1076831))

(assert (=> b!1168699 d!131873))

(declare-fun d!131875 () Bool)

(assert (=> d!131875 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1168700 d!131875))

(declare-fun b!1168872 () Bool)

(declare-fun e!664347 () Bool)

(declare-fun call!57116 () Bool)

(assert (=> b!1168872 (= e!664347 call!57116)))

(declare-fun bm!57113 () Bool)

(assert (=> bm!57113 (= call!57116 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!526168 mask!1564))))

(declare-fun d!131877 () Bool)

(declare-fun res!775614 () Bool)

(declare-fun e!664348 () Bool)

(assert (=> d!131877 (=> res!775614 e!664348)))

(assert (=> d!131877 (= res!775614 (bvsge #b00000000000000000000000000000000 (size!36938 lt!526168)))))

(assert (=> d!131877 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526168 mask!1564) e!664348)))

(declare-fun b!1168873 () Bool)

(declare-fun e!664346 () Bool)

(assert (=> b!1168873 (= e!664347 e!664346)))

(declare-fun lt!526262 () (_ BitVec 64))

(assert (=> b!1168873 (= lt!526262 (select (arr!36401 lt!526168) #b00000000000000000000000000000000))))

(declare-fun lt!526261 () Unit!38458)

(assert (=> b!1168873 (= lt!526261 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!526168 lt!526262 #b00000000000000000000000000000000))))

(assert (=> b!1168873 (arrayContainsKey!0 lt!526168 lt!526262 #b00000000000000000000000000000000)))

(declare-fun lt!526263 () Unit!38458)

(assert (=> b!1168873 (= lt!526263 lt!526261)))

(declare-fun res!775615 () Bool)

(assert (=> b!1168873 (= res!775615 (= (seekEntryOrOpen!0 (select (arr!36401 lt!526168) #b00000000000000000000000000000000) lt!526168 mask!1564) (Found!9924 #b00000000000000000000000000000000)))))

(assert (=> b!1168873 (=> (not res!775615) (not e!664346))))

(declare-fun b!1168874 () Bool)

(assert (=> b!1168874 (= e!664346 call!57116)))

(declare-fun b!1168875 () Bool)

(assert (=> b!1168875 (= e!664348 e!664347)))

(declare-fun c!116507 () Bool)

(assert (=> b!1168875 (= c!116507 (validKeyInArray!0 (select (arr!36401 lt!526168) #b00000000000000000000000000000000)))))

(assert (= (and d!131877 (not res!775614)) b!1168875))

(assert (= (and b!1168875 c!116507) b!1168873))

(assert (= (and b!1168875 (not c!116507)) b!1168872))

(assert (= (and b!1168873 res!775615) b!1168874))

(assert (= (or b!1168874 b!1168872) bm!57113))

(declare-fun m!1076837 () Bool)

(assert (=> bm!57113 m!1076837))

(assert (=> b!1168873 m!1076829))

(declare-fun m!1076839 () Bool)

(assert (=> b!1168873 m!1076839))

(declare-fun m!1076841 () Bool)

(assert (=> b!1168873 m!1076841))

(assert (=> b!1168873 m!1076829))

(declare-fun m!1076843 () Bool)

(assert (=> b!1168873 m!1076843))

(assert (=> b!1168875 m!1076829))

(assert (=> b!1168875 m!1076829))

(assert (=> b!1168875 m!1076831))

(assert (=> b!1168701 d!131877))

(declare-fun d!131879 () Bool)

(assert (=> d!131879 (= (array_inv!27700 _keys!1208) (bvsge (size!36938 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!99268 d!131879))

(declare-fun d!131881 () Bool)

(assert (=> d!131881 (= (array_inv!27701 _values!996) (bvsge (size!36939 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!99268 d!131881))

(declare-fun d!131883 () Bool)

(declare-fun res!775620 () Bool)

(declare-fun e!664353 () Bool)

(assert (=> d!131883 (=> res!775620 e!664353)))

(assert (=> d!131883 (= res!775620 (= (select (arr!36401 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!131883 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!664353)))

(declare-fun b!1168880 () Bool)

(declare-fun e!664354 () Bool)

(assert (=> b!1168880 (= e!664353 e!664354)))

(declare-fun res!775621 () Bool)

(assert (=> b!1168880 (=> (not res!775621) (not e!664354))))

(assert (=> b!1168880 (= res!775621 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!36938 _keys!1208)))))

(declare-fun b!1168881 () Bool)

(assert (=> b!1168881 (= e!664354 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!131883 (not res!775620)) b!1168880))

(assert (= (and b!1168880 res!775621) b!1168881))

(assert (=> d!131883 m!1076697))

(declare-fun m!1076845 () Bool)

(assert (=> b!1168881 m!1076845))

(assert (=> b!1168692 d!131883))

(declare-fun d!131885 () Bool)

(assert (=> d!131885 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!526266 () Unit!38458)

(declare-fun choose!13 (array!75508 (_ BitVec 64) (_ BitVec 32)) Unit!38458)

(assert (=> d!131885 (= lt!526266 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!131885 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!131885 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!526266)))

(declare-fun bs!33429 () Bool)

(assert (= bs!33429 d!131885))

(assert (=> bs!33429 m!1076595))

(declare-fun m!1076847 () Bool)

(assert (=> bs!33429 m!1076847))

(assert (=> b!1168692 d!131885))

(declare-fun d!131887 () Bool)

(declare-fun e!664357 () Bool)

(assert (=> d!131887 e!664357))

(declare-fun res!775626 () Bool)

(assert (=> d!131887 (=> (not res!775626) (not e!664357))))

(declare-fun lt!526275 () ListLongMap!16879)

(assert (=> d!131887 (= res!775626 (contains!6855 lt!526275 (_1!9459 (tuple2!18899 (select (arr!36401 _keys!1208) from!1455) (get!18582 (select (arr!36402 _values!996) from!1455) lt!526167)))))))

(declare-fun lt!526277 () List!25670)

(assert (=> d!131887 (= lt!526275 (ListLongMap!16880 lt!526277))))

(declare-fun lt!526278 () Unit!38458)

(declare-fun lt!526276 () Unit!38458)

(assert (=> d!131887 (= lt!526278 lt!526276)))

(declare-datatypes ((Option!684 0))(
  ( (Some!683 (v!17380 V!44283)) (None!682) )
))
(declare-fun getValueByKey!633 (List!25670 (_ BitVec 64)) Option!684)

(assert (=> d!131887 (= (getValueByKey!633 lt!526277 (_1!9459 (tuple2!18899 (select (arr!36401 _keys!1208) from!1455) (get!18582 (select (arr!36402 _values!996) from!1455) lt!526167)))) (Some!683 (_2!9459 (tuple2!18899 (select (arr!36401 _keys!1208) from!1455) (get!18582 (select (arr!36402 _values!996) from!1455) lt!526167)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!308 (List!25670 (_ BitVec 64) V!44283) Unit!38458)

(assert (=> d!131887 (= lt!526276 (lemmaContainsTupThenGetReturnValue!308 lt!526277 (_1!9459 (tuple2!18899 (select (arr!36401 _keys!1208) from!1455) (get!18582 (select (arr!36402 _values!996) from!1455) lt!526167))) (_2!9459 (tuple2!18899 (select (arr!36401 _keys!1208) from!1455) (get!18582 (select (arr!36402 _values!996) from!1455) lt!526167)))))))

(declare-fun insertStrictlySorted!400 (List!25670 (_ BitVec 64) V!44283) List!25670)

(assert (=> d!131887 (= lt!526277 (insertStrictlySorted!400 (toList!8455 lt!526169) (_1!9459 (tuple2!18899 (select (arr!36401 _keys!1208) from!1455) (get!18582 (select (arr!36402 _values!996) from!1455) lt!526167))) (_2!9459 (tuple2!18899 (select (arr!36401 _keys!1208) from!1455) (get!18582 (select (arr!36402 _values!996) from!1455) lt!526167)))))))

(assert (=> d!131887 (= (+!3705 lt!526169 (tuple2!18899 (select (arr!36401 _keys!1208) from!1455) (get!18582 (select (arr!36402 _values!996) from!1455) lt!526167))) lt!526275)))

(declare-fun b!1168886 () Bool)

(declare-fun res!775627 () Bool)

(assert (=> b!1168886 (=> (not res!775627) (not e!664357))))

(assert (=> b!1168886 (= res!775627 (= (getValueByKey!633 (toList!8455 lt!526275) (_1!9459 (tuple2!18899 (select (arr!36401 _keys!1208) from!1455) (get!18582 (select (arr!36402 _values!996) from!1455) lt!526167)))) (Some!683 (_2!9459 (tuple2!18899 (select (arr!36401 _keys!1208) from!1455) (get!18582 (select (arr!36402 _values!996) from!1455) lt!526167))))))))

(declare-fun b!1168887 () Bool)

(declare-fun contains!6857 (List!25670 tuple2!18898) Bool)

(assert (=> b!1168887 (= e!664357 (contains!6857 (toList!8455 lt!526275) (tuple2!18899 (select (arr!36401 _keys!1208) from!1455) (get!18582 (select (arr!36402 _values!996) from!1455) lt!526167))))))

(assert (= (and d!131887 res!775626) b!1168886))

(assert (= (and b!1168886 res!775627) b!1168887))

(declare-fun m!1076849 () Bool)

(assert (=> d!131887 m!1076849))

(declare-fun m!1076851 () Bool)

(assert (=> d!131887 m!1076851))

(declare-fun m!1076853 () Bool)

(assert (=> d!131887 m!1076853))

(declare-fun m!1076855 () Bool)

(assert (=> d!131887 m!1076855))

(declare-fun m!1076857 () Bool)

(assert (=> b!1168886 m!1076857))

(declare-fun m!1076859 () Bool)

(assert (=> b!1168887 m!1076859))

(assert (=> b!1168702 d!131887))

(declare-fun d!131889 () Bool)

(declare-fun c!116510 () Bool)

(assert (=> d!131889 (= c!116510 ((_ is ValueCellFull!13974) (select (arr!36402 _values!996) from!1455)))))

(declare-fun e!664360 () V!44283)

(assert (=> d!131889 (= (get!18582 (select (arr!36402 _values!996) from!1455) lt!526167) e!664360)))

(declare-fun b!1168892 () Bool)

(declare-fun get!18584 (ValueCell!13974 V!44283) V!44283)

(assert (=> b!1168892 (= e!664360 (get!18584 (select (arr!36402 _values!996) from!1455) lt!526167))))

(declare-fun b!1168893 () Bool)

(declare-fun get!18585 (ValueCell!13974 V!44283) V!44283)

(assert (=> b!1168893 (= e!664360 (get!18585 (select (arr!36402 _values!996) from!1455) lt!526167))))

(assert (= (and d!131889 c!116510) b!1168892))

(assert (= (and d!131889 (not c!116510)) b!1168893))

(assert (=> b!1168892 m!1076617))

(declare-fun m!1076861 () Bool)

(assert (=> b!1168892 m!1076861))

(assert (=> b!1168893 m!1076617))

(declare-fun m!1076863 () Bool)

(assert (=> b!1168893 m!1076863))

(assert (=> b!1168702 d!131889))

(declare-fun b!1168901 () Bool)

(declare-fun e!664366 () Bool)

(assert (=> b!1168901 (= e!664366 tp_is_empty!29367)))

(declare-fun b!1168900 () Bool)

(declare-fun e!664365 () Bool)

(assert (=> b!1168900 (= e!664365 tp_is_empty!29367)))

(declare-fun mapIsEmpty!45881 () Bool)

(declare-fun mapRes!45881 () Bool)

(assert (=> mapIsEmpty!45881 mapRes!45881))

(declare-fun mapNonEmpty!45881 () Bool)

(declare-fun tp!87232 () Bool)

(assert (=> mapNonEmpty!45881 (= mapRes!45881 (and tp!87232 e!664365))))

(declare-fun mapValue!45881 () ValueCell!13974)

(declare-fun mapKey!45881 () (_ BitVec 32))

(declare-fun mapRest!45881 () (Array (_ BitVec 32) ValueCell!13974))

(assert (=> mapNonEmpty!45881 (= mapRest!45875 (store mapRest!45881 mapKey!45881 mapValue!45881))))

(declare-fun condMapEmpty!45881 () Bool)

(declare-fun mapDefault!45881 () ValueCell!13974)

(assert (=> mapNonEmpty!45875 (= condMapEmpty!45881 (= mapRest!45875 ((as const (Array (_ BitVec 32) ValueCell!13974)) mapDefault!45881)))))

(assert (=> mapNonEmpty!45875 (= tp!87222 (and e!664366 mapRes!45881))))

(assert (= (and mapNonEmpty!45875 condMapEmpty!45881) mapIsEmpty!45881))

(assert (= (and mapNonEmpty!45875 (not condMapEmpty!45881)) mapNonEmpty!45881))

(assert (= (and mapNonEmpty!45881 ((_ is ValueCellFull!13974) mapValue!45881)) b!1168900))

(assert (= (and mapNonEmpty!45875 ((_ is ValueCellFull!13974) mapDefault!45881)) b!1168901))

(declare-fun m!1076865 () Bool)

(assert (=> mapNonEmpty!45881 m!1076865))

(declare-fun b_lambda!19985 () Bool)

(assert (= b_lambda!19973 (or (and start!99268 b_free!24837) b_lambda!19985)))

(declare-fun b_lambda!19987 () Bool)

(assert (= b_lambda!19979 (or (and start!99268 b_free!24837) b_lambda!19987)))

(declare-fun b_lambda!19989 () Bool)

(assert (= b_lambda!19983 (or (and start!99268 b_free!24837) b_lambda!19989)))

(declare-fun b_lambda!19991 () Bool)

(assert (= b_lambda!19971 (or (and start!99268 b_free!24837) b_lambda!19991)))

(declare-fun b_lambda!19993 () Bool)

(assert (= b_lambda!19967 (or (and start!99268 b_free!24837) b_lambda!19993)))

(declare-fun b_lambda!19995 () Bool)

(assert (= b_lambda!19981 (or (and start!99268 b_free!24837) b_lambda!19995)))

(declare-fun b_lambda!19997 () Bool)

(assert (= b_lambda!19977 (or (and start!99268 b_free!24837) b_lambda!19997)))

(declare-fun b_lambda!19999 () Bool)

(assert (= b_lambda!19969 (or (and start!99268 b_free!24837) b_lambda!19999)))

(declare-fun b_lambda!20001 () Bool)

(assert (= b_lambda!19975 (or (and start!99268 b_free!24837) b_lambda!20001)))

(check-sat (not b!1168803) (not b!1168836) (not b!1168798) (not bm!57099) (not bm!57104) (not b_lambda!19989) (not b!1168814) (not b_lambda!19987) (not d!131865) (not d!131861) (not mapNonEmpty!45881) (not b!1168795) (not b!1168873) (not b!1168843) (not b!1168848) (not d!131863) (not b!1168829) tp_is_empty!29367 (not b!1168886) (not bm!57096) (not b!1168800) (not b!1168806) (not b!1168824) (not b!1168881) (not b!1168768) (not b!1168828) (not b!1168862) (not b_lambda!20001) (not b!1168840) (not b_next!24837) (not d!131855) (not b!1168770) (not b!1168839) (not b!1168845) (not b_lambda!19997) (not b!1168830) (not b!1168866) (not d!131885) (not bm!57107) (not b!1168819) (not bm!57113) (not b!1168867) (not b!1168825) (not d!131867) (not b!1168851) (not b!1168842) (not b_lambda!19995) (not bm!57112) (not b_lambda!19993) (not b_lambda!19965) (not b!1168804) (not b!1168887) (not b!1168817) (not b!1168816) b_and!40561 (not b_lambda!19985) (not b_lambda!19991) (not bm!57106) (not d!131859) (not bm!57108) (not bm!57105) (not bm!57111) (not b!1168864) (not b!1168837) (not b!1168818) (not b_lambda!19999) (not b!1168875) (not b!1168892) (not d!131887) (not b!1168797) (not b!1168849) (not b!1168841) (not b!1168821) (not b!1168893) (not b!1168827) (not b!1168831) (not b!1168869) (not b!1168871) (not b!1168796) (not b!1168833))
(check-sat b_and!40561 (not b_next!24837))
