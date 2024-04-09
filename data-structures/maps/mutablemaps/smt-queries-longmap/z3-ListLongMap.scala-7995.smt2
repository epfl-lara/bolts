; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98848 () Bool)

(assert start!98848)

(declare-fun b_free!24417 () Bool)

(declare-fun b_next!24417 () Bool)

(assert (=> start!98848 (= b_free!24417 (not b_next!24417))))

(declare-fun tp!85963 () Bool)

(declare-fun b_and!39697 () Bool)

(assert (=> start!98848 (= tp!85963 b_and!39697)))

(declare-fun b!1154130 () Bool)

(declare-datatypes ((Unit!37893 0))(
  ( (Unit!37894) )
))
(declare-fun e!656434 () Unit!37893)

(declare-fun Unit!37895 () Unit!37893)

(assert (=> b!1154130 (= e!656434 Unit!37895)))

(declare-fun b!1154131 () Bool)

(declare-fun e!656424 () Unit!37893)

(assert (=> b!1154131 (= e!656424 e!656434)))

(declare-fun c!114561 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!517459 () Bool)

(assert (=> b!1154131 (= c!114561 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!517459))))

(declare-fun b!1154132 () Bool)

(declare-fun lt!517441 () Unit!37893)

(assert (=> b!1154132 (= e!656424 lt!517441)))

(declare-fun call!54546 () Unit!37893)

(assert (=> b!1154132 (= lt!517441 call!54546)))

(declare-fun call!54547 () Bool)

(assert (=> b!1154132 call!54547))

(declare-datatypes ((V!43723 0))(
  ( (V!43724 (val!14530 Int)) )
))
(declare-fun zeroValue!944 () V!43723)

(declare-datatypes ((array!74690 0))(
  ( (array!74691 (arr!35992 (Array (_ BitVec 32) (_ BitVec 64))) (size!36529 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74690)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!54542 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!18540 0))(
  ( (tuple2!18541 (_1!9280 (_ BitVec 64)) (_2!9280 V!43723)) )
))
(declare-datatypes ((List!25324 0))(
  ( (Nil!25321) (Cons!25320 (h!26529 tuple2!18540) (t!36740 List!25324)) )
))
(declare-datatypes ((ListLongMap!16521 0))(
  ( (ListLongMap!16522 (toList!8276 List!25324)) )
))
(declare-fun call!54545 () ListLongMap!16521)

(declare-datatypes ((ValueCell!13764 0))(
  ( (ValueCellFull!13764 (v!17168 V!43723)) (EmptyCell!13764) )
))
(declare-datatypes ((array!74692 0))(
  ( (array!74693 (arr!35993 (Array (_ BitVec 32) ValueCell!13764)) (size!36530 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74692)

(declare-fun minValue!944 () V!43723)

(declare-fun getCurrentListMapNoExtraKeys!4716 (array!74690 array!74692 (_ BitVec 32) (_ BitVec 32) V!43723 V!43723 (_ BitVec 32) Int) ListLongMap!16521)

(assert (=> bm!54542 (= call!54545 (getCurrentListMapNoExtraKeys!4716 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1154133 () Bool)

(declare-fun e!656436 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1154133 (= e!656436 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!517459) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1154134 () Bool)

(assert (=> b!1154134 call!54547))

(declare-fun lt!517449 () Unit!37893)

(assert (=> b!1154134 (= lt!517449 call!54546)))

(assert (=> b!1154134 (= e!656434 lt!517449)))

(declare-fun c!114559 () Bool)

(declare-fun lt!517442 () ListLongMap!16521)

(declare-fun call!54550 () Bool)

(declare-fun bm!54543 () Bool)

(declare-fun call!54552 () ListLongMap!16521)

(declare-fun contains!6765 (ListLongMap!16521 (_ BitVec 64)) Bool)

(assert (=> bm!54543 (= call!54550 (contains!6765 (ite c!114559 lt!517442 call!54552) k0!934))))

(declare-fun b!1154135 () Bool)

(declare-fun e!656433 () Unit!37893)

(declare-fun Unit!37896 () Unit!37893)

(assert (=> b!1154135 (= e!656433 Unit!37896)))

(declare-fun b!1154136 () Bool)

(declare-fun Unit!37897 () Unit!37893)

(assert (=> b!1154136 (= e!656433 Unit!37897)))

(assert (=> b!1154136 (= lt!517459 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1154136 (= c!114559 (and (not lt!517459) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!517445 () Unit!37893)

(declare-fun e!656422 () Unit!37893)

(assert (=> b!1154136 (= lt!517445 e!656422)))

(declare-fun lt!517452 () Unit!37893)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!487 (array!74690 array!74692 (_ BitVec 32) (_ BitVec 32) V!43723 V!43723 (_ BitVec 64) (_ BitVec 32) Int) Unit!37893)

(assert (=> b!1154136 (= lt!517452 (lemmaListMapContainsThenArrayContainsFrom!487 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114562 () Bool)

(assert (=> b!1154136 (= c!114562 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!767103 () Bool)

(assert (=> b!1154136 (= res!767103 e!656436)))

(declare-fun e!656431 () Bool)

(assert (=> b!1154136 (=> (not res!767103) (not e!656431))))

(assert (=> b!1154136 e!656431))

(declare-fun lt!517457 () Unit!37893)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74690 (_ BitVec 32) (_ BitVec 32)) Unit!37893)

(assert (=> b!1154136 (= lt!517457 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25325 0))(
  ( (Nil!25322) (Cons!25321 (h!26530 (_ BitVec 64)) (t!36741 List!25325)) )
))
(declare-fun arrayNoDuplicates!0 (array!74690 (_ BitVec 32) List!25325) Bool)

(assert (=> b!1154136 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25322)))

(declare-fun lt!517444 () Unit!37893)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74690 (_ BitVec 64) (_ BitVec 32) List!25325) Unit!37893)

(assert (=> b!1154136 (= lt!517444 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25322))))

(assert (=> b!1154136 false))

(declare-fun res!767098 () Bool)

(declare-fun e!656428 () Bool)

(assert (=> start!98848 (=> (not res!767098) (not e!656428))))

(assert (=> start!98848 (= res!767098 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36529 _keys!1208))))))

(assert (=> start!98848 e!656428))

(declare-fun tp_is_empty!28947 () Bool)

(assert (=> start!98848 tp_is_empty!28947))

(declare-fun array_inv!27426 (array!74690) Bool)

(assert (=> start!98848 (array_inv!27426 _keys!1208)))

(assert (=> start!98848 true))

(assert (=> start!98848 tp!85963))

(declare-fun e!656426 () Bool)

(declare-fun array_inv!27427 (array!74692) Bool)

(assert (=> start!98848 (and (array_inv!27427 _values!996) e!656426)))

(declare-fun b!1154137 () Bool)

(declare-fun arrayContainsKey!0 (array!74690 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1154137 (= e!656431 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1154138 () Bool)

(declare-fun c!114563 () Bool)

(assert (=> b!1154138 (= c!114563 (and (not lt!517459) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1154138 (= e!656422 e!656424)))

(declare-fun b!1154139 () Bool)

(declare-fun e!656420 () Bool)

(assert (=> b!1154139 (= e!656428 e!656420)))

(declare-fun res!767094 () Bool)

(assert (=> b!1154139 (=> (not res!767094) (not e!656420))))

(declare-fun lt!517446 () array!74690)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74690 (_ BitVec 32)) Bool)

(assert (=> b!1154139 (= res!767094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!517446 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1154139 (= lt!517446 (array!74691 (store (arr!35992 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36529 _keys!1208)))))

(declare-fun b!1154140 () Bool)

(declare-fun res!767096 () Bool)

(assert (=> b!1154140 (=> (not res!767096) (not e!656420))))

(assert (=> b!1154140 (= res!767096 (arrayNoDuplicates!0 lt!517446 #b00000000000000000000000000000000 Nil!25322))))

(declare-fun b!1154141 () Bool)

(declare-fun e!656423 () Bool)

(assert (=> b!1154141 (= e!656423 true)))

(declare-fun e!656429 () Bool)

(assert (=> b!1154141 e!656429))

(declare-fun res!767108 () Bool)

(assert (=> b!1154141 (=> (not res!767108) (not e!656429))))

(declare-fun lt!517460 () ListLongMap!16521)

(declare-fun lt!517454 () ListLongMap!16521)

(assert (=> b!1154141 (= res!767108 (= lt!517460 lt!517454))))

(declare-fun lt!517448 () ListLongMap!16521)

(declare-fun -!1356 (ListLongMap!16521 (_ BitVec 64)) ListLongMap!16521)

(assert (=> b!1154141 (= lt!517460 (-!1356 lt!517448 k0!934))))

(declare-fun lt!517443 () V!43723)

(declare-fun +!3609 (ListLongMap!16521 tuple2!18540) ListLongMap!16521)

(assert (=> b!1154141 (= (-!1356 (+!3609 lt!517454 (tuple2!18541 (select (arr!35992 _keys!1208) from!1455) lt!517443)) (select (arr!35992 _keys!1208) from!1455)) lt!517454)))

(declare-fun lt!517451 () Unit!37893)

(declare-fun addThenRemoveForNewKeyIsSame!200 (ListLongMap!16521 (_ BitVec 64) V!43723) Unit!37893)

(assert (=> b!1154141 (= lt!517451 (addThenRemoveForNewKeyIsSame!200 lt!517454 (select (arr!35992 _keys!1208) from!1455) lt!517443))))

(declare-fun lt!517447 () V!43723)

(declare-fun get!18360 (ValueCell!13764 V!43723) V!43723)

(assert (=> b!1154141 (= lt!517443 (get!18360 (select (arr!35993 _values!996) from!1455) lt!517447))))

(declare-fun lt!517455 () Unit!37893)

(assert (=> b!1154141 (= lt!517455 e!656433)))

(declare-fun c!114560 () Bool)

(assert (=> b!1154141 (= c!114560 (contains!6765 lt!517454 k0!934))))

(assert (=> b!1154141 (= lt!517454 (getCurrentListMapNoExtraKeys!4716 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1154142 () Bool)

(declare-fun e!656430 () Bool)

(assert (=> b!1154142 (= e!656430 e!656423)))

(declare-fun res!767100 () Bool)

(assert (=> b!1154142 (=> res!767100 e!656423)))

(assert (=> b!1154142 (= res!767100 (not (= (select (arr!35992 _keys!1208) from!1455) k0!934)))))

(declare-fun e!656425 () Bool)

(assert (=> b!1154142 e!656425))

(declare-fun c!114564 () Bool)

(assert (=> b!1154142 (= c!114564 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!517453 () Unit!37893)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!589 (array!74690 array!74692 (_ BitVec 32) (_ BitVec 32) V!43723 V!43723 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37893)

(assert (=> b!1154142 (= lt!517453 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!589 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!45245 () Bool)

(declare-fun mapRes!45245 () Bool)

(declare-fun tp!85962 () Bool)

(declare-fun e!656432 () Bool)

(assert (=> mapNonEmpty!45245 (= mapRes!45245 (and tp!85962 e!656432))))

(declare-fun mapRest!45245 () (Array (_ BitVec 32) ValueCell!13764))

(declare-fun mapKey!45245 () (_ BitVec 32))

(declare-fun mapValue!45245 () ValueCell!13764)

(assert (=> mapNonEmpty!45245 (= (arr!35993 _values!996) (store mapRest!45245 mapKey!45245 mapValue!45245))))

(declare-fun b!1154143 () Bool)

(declare-fun res!767095 () Bool)

(assert (=> b!1154143 (=> (not res!767095) (not e!656428))))

(assert (=> b!1154143 (= res!767095 (and (= (size!36530 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36529 _keys!1208) (size!36530 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1154144 () Bool)

(declare-fun res!767107 () Bool)

(assert (=> b!1154144 (=> (not res!767107) (not e!656428))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1154144 (= res!767107 (validKeyInArray!0 k0!934))))

(declare-fun bm!54544 () Bool)

(declare-fun call!54548 () ListLongMap!16521)

(assert (=> bm!54544 (= call!54548 (+!3609 (ite c!114559 lt!517442 lt!517454) (ite c!114559 (tuple2!18541 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!114563 (tuple2!18541 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18541 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1154145 () Bool)

(declare-fun res!767097 () Bool)

(assert (=> b!1154145 (=> (not res!767097) (not e!656428))))

(assert (=> b!1154145 (= res!767097 (= (select (arr!35992 _keys!1208) i!673) k0!934))))

(declare-fun b!1154146 () Bool)

(declare-fun res!767104 () Bool)

(assert (=> b!1154146 (=> (not res!767104) (not e!656428))))

(assert (=> b!1154146 (= res!767104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1154147 () Bool)

(assert (=> b!1154147 (= e!656436 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1154148 () Bool)

(declare-fun e!656421 () Bool)

(assert (=> b!1154148 (= e!656421 e!656430)))

(declare-fun res!767106 () Bool)

(assert (=> b!1154148 (=> res!767106 e!656430)))

(assert (=> b!1154148 (= res!767106 (not (= from!1455 i!673)))))

(declare-fun lt!517461 () ListLongMap!16521)

(declare-fun lt!517458 () array!74692)

(assert (=> b!1154148 (= lt!517461 (getCurrentListMapNoExtraKeys!4716 lt!517446 lt!517458 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1154148 (= lt!517458 (array!74693 (store (arr!35993 _values!996) i!673 (ValueCellFull!13764 lt!517447)) (size!36530 _values!996)))))

(declare-fun dynLambda!2734 (Int (_ BitVec 64)) V!43723)

(assert (=> b!1154148 (= lt!517447 (dynLambda!2734 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1154148 (= lt!517448 (getCurrentListMapNoExtraKeys!4716 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1154149 () Bool)

(declare-fun res!767102 () Bool)

(assert (=> b!1154149 (=> (not res!767102) (not e!656428))))

(assert (=> b!1154149 (= res!767102 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36529 _keys!1208))))))

(declare-fun b!1154150 () Bool)

(assert (=> b!1154150 (= e!656432 tp_is_empty!28947)))

(declare-fun call!54549 () ListLongMap!16521)

(declare-fun bm!54545 () Bool)

(assert (=> bm!54545 (= call!54549 (getCurrentListMapNoExtraKeys!4716 lt!517446 lt!517458 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!54546 () Bool)

(declare-fun call!54551 () Unit!37893)

(assert (=> bm!54546 (= call!54546 call!54551)))

(declare-fun bm!54547 () Bool)

(assert (=> bm!54547 (= call!54552 call!54548)))

(declare-fun bm!54548 () Bool)

(assert (=> bm!54548 (= call!54547 call!54550)))

(declare-fun b!1154151 () Bool)

(assert (=> b!1154151 (contains!6765 call!54548 k0!934)))

(declare-fun lt!517456 () Unit!37893)

(declare-fun addStillContains!906 (ListLongMap!16521 (_ BitVec 64) V!43723 (_ BitVec 64)) Unit!37893)

(assert (=> b!1154151 (= lt!517456 (addStillContains!906 lt!517442 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1154151 call!54550))

(assert (=> b!1154151 (= lt!517442 (+!3609 lt!517454 (tuple2!18541 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!517440 () Unit!37893)

(assert (=> b!1154151 (= lt!517440 call!54551)))

(assert (=> b!1154151 (= e!656422 lt!517456)))

(declare-fun b!1154152 () Bool)

(declare-fun res!767099 () Bool)

(assert (=> b!1154152 (=> (not res!767099) (not e!656428))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1154152 (= res!767099 (validMask!0 mask!1564))))

(declare-fun b!1154153 () Bool)

(declare-fun res!767101 () Bool)

(assert (=> b!1154153 (=> (not res!767101) (not e!656428))))

(assert (=> b!1154153 (= res!767101 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25322))))

(declare-fun bm!54549 () Bool)

(assert (=> bm!54549 (= call!54551 (addStillContains!906 lt!517454 (ite (or c!114559 c!114563) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!114559 c!114563) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1154154 () Bool)

(assert (=> b!1154154 (= e!656425 (= call!54549 (-!1356 call!54545 k0!934)))))

(declare-fun b!1154155 () Bool)

(assert (=> b!1154155 (= e!656425 (= call!54549 call!54545))))

(declare-fun mapIsEmpty!45245 () Bool)

(assert (=> mapIsEmpty!45245 mapRes!45245))

(declare-fun b!1154156 () Bool)

(declare-fun e!656427 () Bool)

(assert (=> b!1154156 (= e!656426 (and e!656427 mapRes!45245))))

(declare-fun condMapEmpty!45245 () Bool)

(declare-fun mapDefault!45245 () ValueCell!13764)

(assert (=> b!1154156 (= condMapEmpty!45245 (= (arr!35993 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13764)) mapDefault!45245)))))

(declare-fun b!1154157 () Bool)

(assert (=> b!1154157 (= e!656429 (= lt!517460 (getCurrentListMapNoExtraKeys!4716 lt!517446 lt!517458 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1154158 () Bool)

(assert (=> b!1154158 (= e!656420 (not e!656421))))

(declare-fun res!767105 () Bool)

(assert (=> b!1154158 (=> res!767105 e!656421)))

(assert (=> b!1154158 (= res!767105 (bvsgt from!1455 i!673))))

(assert (=> b!1154158 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!517450 () Unit!37893)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74690 (_ BitVec 64) (_ BitVec 32)) Unit!37893)

(assert (=> b!1154158 (= lt!517450 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1154159 () Bool)

(assert (=> b!1154159 (= e!656427 tp_is_empty!28947)))

(assert (= (and start!98848 res!767098) b!1154152))

(assert (= (and b!1154152 res!767099) b!1154143))

(assert (= (and b!1154143 res!767095) b!1154146))

(assert (= (and b!1154146 res!767104) b!1154153))

(assert (= (and b!1154153 res!767101) b!1154149))

(assert (= (and b!1154149 res!767102) b!1154144))

(assert (= (and b!1154144 res!767107) b!1154145))

(assert (= (and b!1154145 res!767097) b!1154139))

(assert (= (and b!1154139 res!767094) b!1154140))

(assert (= (and b!1154140 res!767096) b!1154158))

(assert (= (and b!1154158 (not res!767105)) b!1154148))

(assert (= (and b!1154148 (not res!767106)) b!1154142))

(assert (= (and b!1154142 c!114564) b!1154154))

(assert (= (and b!1154142 (not c!114564)) b!1154155))

(assert (= (or b!1154154 b!1154155) bm!54545))

(assert (= (or b!1154154 b!1154155) bm!54542))

(assert (= (and b!1154142 (not res!767100)) b!1154141))

(assert (= (and b!1154141 c!114560) b!1154136))

(assert (= (and b!1154141 (not c!114560)) b!1154135))

(assert (= (and b!1154136 c!114559) b!1154151))

(assert (= (and b!1154136 (not c!114559)) b!1154138))

(assert (= (and b!1154138 c!114563) b!1154132))

(assert (= (and b!1154138 (not c!114563)) b!1154131))

(assert (= (and b!1154131 c!114561) b!1154134))

(assert (= (and b!1154131 (not c!114561)) b!1154130))

(assert (= (or b!1154132 b!1154134) bm!54546))

(assert (= (or b!1154132 b!1154134) bm!54547))

(assert (= (or b!1154132 b!1154134) bm!54548))

(assert (= (or b!1154151 bm!54548) bm!54543))

(assert (= (or b!1154151 bm!54546) bm!54549))

(assert (= (or b!1154151 bm!54547) bm!54544))

(assert (= (and b!1154136 c!114562) b!1154147))

(assert (= (and b!1154136 (not c!114562)) b!1154133))

(assert (= (and b!1154136 res!767103) b!1154137))

(assert (= (and b!1154141 res!767108) b!1154157))

(assert (= (and b!1154156 condMapEmpty!45245) mapIsEmpty!45245))

(assert (= (and b!1154156 (not condMapEmpty!45245)) mapNonEmpty!45245))

(get-info :version)

(assert (= (and mapNonEmpty!45245 ((_ is ValueCellFull!13764) mapValue!45245)) b!1154150))

(assert (= (and b!1154156 ((_ is ValueCellFull!13764) mapDefault!45245)) b!1154159))

(assert (= start!98848 b!1154156))

(declare-fun b_lambda!19541 () Bool)

(assert (=> (not b_lambda!19541) (not b!1154148)))

(declare-fun t!36739 () Bool)

(declare-fun tb!9237 () Bool)

(assert (=> (and start!98848 (= defaultEntry!1004 defaultEntry!1004) t!36739) tb!9237))

(declare-fun result!19031 () Bool)

(assert (=> tb!9237 (= result!19031 tp_is_empty!28947)))

(assert (=> b!1154148 t!36739))

(declare-fun b_and!39699 () Bool)

(assert (= b_and!39697 (and (=> t!36739 result!19031) b_and!39699)))

(declare-fun m!1063939 () Bool)

(assert (=> b!1154136 m!1063939))

(declare-fun m!1063941 () Bool)

(assert (=> b!1154136 m!1063941))

(declare-fun m!1063943 () Bool)

(assert (=> b!1154136 m!1063943))

(declare-fun m!1063945 () Bool)

(assert (=> b!1154136 m!1063945))

(declare-fun m!1063947 () Bool)

(assert (=> bm!54542 m!1063947))

(declare-fun m!1063949 () Bool)

(assert (=> bm!54549 m!1063949))

(declare-fun m!1063951 () Bool)

(assert (=> b!1154145 m!1063951))

(declare-fun m!1063953 () Bool)

(assert (=> b!1154139 m!1063953))

(declare-fun m!1063955 () Bool)

(assert (=> b!1154139 m!1063955))

(declare-fun m!1063957 () Bool)

(assert (=> b!1154158 m!1063957))

(declare-fun m!1063959 () Bool)

(assert (=> b!1154158 m!1063959))

(assert (=> b!1154141 m!1063947))

(declare-fun m!1063961 () Bool)

(assert (=> b!1154141 m!1063961))

(assert (=> b!1154141 m!1063961))

(declare-fun m!1063963 () Bool)

(assert (=> b!1154141 m!1063963))

(declare-fun m!1063965 () Bool)

(assert (=> b!1154141 m!1063965))

(declare-fun m!1063967 () Bool)

(assert (=> b!1154141 m!1063967))

(declare-fun m!1063969 () Bool)

(assert (=> b!1154141 m!1063969))

(declare-fun m!1063971 () Bool)

(assert (=> b!1154141 m!1063971))

(assert (=> b!1154141 m!1063965))

(declare-fun m!1063973 () Bool)

(assert (=> b!1154141 m!1063973))

(assert (=> b!1154141 m!1063965))

(declare-fun m!1063975 () Bool)

(assert (=> b!1154141 m!1063975))

(assert (=> b!1154141 m!1063971))

(declare-fun m!1063977 () Bool)

(assert (=> b!1154157 m!1063977))

(declare-fun m!1063979 () Bool)

(assert (=> b!1154154 m!1063979))

(declare-fun m!1063981 () Bool)

(assert (=> mapNonEmpty!45245 m!1063981))

(declare-fun m!1063983 () Bool)

(assert (=> b!1154146 m!1063983))

(declare-fun m!1063985 () Bool)

(assert (=> b!1154152 m!1063985))

(declare-fun m!1063987 () Bool)

(assert (=> b!1154151 m!1063987))

(declare-fun m!1063989 () Bool)

(assert (=> b!1154151 m!1063989))

(declare-fun m!1063991 () Bool)

(assert (=> b!1154151 m!1063991))

(declare-fun m!1063993 () Bool)

(assert (=> b!1154140 m!1063993))

(declare-fun m!1063995 () Bool)

(assert (=> bm!54543 m!1063995))

(assert (=> b!1154142 m!1063965))

(declare-fun m!1063997 () Bool)

(assert (=> b!1154142 m!1063997))

(declare-fun m!1063999 () Bool)

(assert (=> b!1154153 m!1063999))

(assert (=> bm!54545 m!1063977))

(declare-fun m!1064001 () Bool)

(assert (=> b!1154137 m!1064001))

(declare-fun m!1064003 () Bool)

(assert (=> b!1154148 m!1064003))

(declare-fun m!1064005 () Bool)

(assert (=> b!1154148 m!1064005))

(declare-fun m!1064007 () Bool)

(assert (=> b!1154148 m!1064007))

(declare-fun m!1064009 () Bool)

(assert (=> b!1154148 m!1064009))

(declare-fun m!1064011 () Bool)

(assert (=> start!98848 m!1064011))

(declare-fun m!1064013 () Bool)

(assert (=> start!98848 m!1064013))

(assert (=> b!1154147 m!1064001))

(declare-fun m!1064015 () Bool)

(assert (=> bm!54544 m!1064015))

(declare-fun m!1064017 () Bool)

(assert (=> b!1154144 m!1064017))

(check-sat (not b!1154157) (not b!1154141) (not bm!54544) (not b!1154147) (not bm!54545) (not b!1154151) (not b!1154144) (not b!1154136) (not b!1154146) (not b!1154142) (not b!1154139) (not bm!54543) (not b_lambda!19541) (not b!1154137) (not b!1154148) b_and!39699 (not b!1154158) (not b!1154153) (not b!1154152) (not bm!54542) (not bm!54549) (not b!1154154) (not b_next!24417) (not mapNonEmpty!45245) tp_is_empty!28947 (not start!98848) (not b!1154140))
(check-sat b_and!39699 (not b_next!24417))
