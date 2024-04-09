; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101192 () Bool)

(assert start!101192)

(declare-fun b_free!26079 () Bool)

(declare-fun b_next!26079 () Bool)

(assert (=> start!101192 (= b_free!26079 (not b_next!26079))))

(declare-fun tp!91259 () Bool)

(declare-fun b_and!43285 () Bool)

(assert (=> start!101192 (= tp!91259 b_and!43285)))

(declare-fun b!1213584 () Bool)

(declare-fun e!689249 () Bool)

(declare-fun e!689238 () Bool)

(assert (=> b!1213584 (= e!689249 e!689238)))

(declare-fun res!805899 () Bool)

(assert (=> b!1213584 (=> res!805899 e!689238)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1213584 (= res!805899 (not (= from!1455 i!673)))))

(declare-datatypes ((V!46171 0))(
  ( (V!46172 (val!15448 Int)) )
))
(declare-fun zeroValue!944 () V!46171)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14682 0))(
  ( (ValueCellFull!14682 (v!18102 V!46171)) (EmptyCell!14682) )
))
(declare-datatypes ((array!78326 0))(
  ( (array!78327 (arr!37794 (Array (_ BitVec 32) ValueCell!14682)) (size!38331 (_ BitVec 32))) )
))
(declare-fun lt!551789 () array!78326)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((array!78328 0))(
  ( (array!78329 (arr!37795 (Array (_ BitVec 32) (_ BitVec 64))) (size!38332 (_ BitVec 32))) )
))
(declare-fun lt!551782 () array!78328)

(declare-fun minValue!944 () V!46171)

(declare-datatypes ((tuple2!19990 0))(
  ( (tuple2!19991 (_1!10005 (_ BitVec 64)) (_2!10005 V!46171)) )
))
(declare-datatypes ((List!26809 0))(
  ( (Nil!26806) (Cons!26805 (h!28014 tuple2!19990) (t!39875 List!26809)) )
))
(declare-datatypes ((ListLongMap!17971 0))(
  ( (ListLongMap!17972 (toList!9001 List!26809)) )
))
(declare-fun lt!551772 () ListLongMap!17971)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5406 (array!78328 array!78326 (_ BitVec 32) (_ BitVec 32) V!46171 V!46171 (_ BitVec 32) Int) ListLongMap!17971)

(assert (=> b!1213584 (= lt!551772 (getCurrentListMapNoExtraKeys!5406 lt!551782 lt!551789 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!551787 () V!46171)

(declare-fun _values!996 () array!78326)

(assert (=> b!1213584 (= lt!551789 (array!78327 (store (arr!37794 _values!996) i!673 (ValueCellFull!14682 lt!551787)) (size!38331 _values!996)))))

(declare-fun dynLambda!3316 (Int (_ BitVec 64)) V!46171)

(assert (=> b!1213584 (= lt!551787 (dynLambda!3316 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!78328)

(declare-fun lt!551786 () ListLongMap!17971)

(assert (=> b!1213584 (= lt!551786 (getCurrentListMapNoExtraKeys!5406 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1213585 () Bool)

(declare-fun e!689246 () Bool)

(declare-fun tp_is_empty!30783 () Bool)

(assert (=> b!1213585 (= e!689246 tp_is_empty!30783)))

(declare-fun b!1213586 () Bool)

(declare-datatypes ((Unit!40172 0))(
  ( (Unit!40173) )
))
(declare-fun e!689239 () Unit!40172)

(declare-fun Unit!40174 () Unit!40172)

(assert (=> b!1213586 (= e!689239 Unit!40174)))

(declare-fun lt!551778 () Bool)

(assert (=> b!1213586 (= lt!551778 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!119864 () Bool)

(assert (=> b!1213586 (= c!119864 (and (not lt!551778) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!551784 () Unit!40172)

(declare-fun e!689248 () Unit!40172)

(assert (=> b!1213586 (= lt!551784 e!689248)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lt!551777 () Unit!40172)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!619 (array!78328 array!78326 (_ BitVec 32) (_ BitVec 32) V!46171 V!46171 (_ BitVec 64) (_ BitVec 32) Int) Unit!40172)

(assert (=> b!1213586 (= lt!551777 (lemmaListMapContainsThenArrayContainsFrom!619 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119865 () Bool)

(assert (=> b!1213586 (= c!119865 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!805890 () Bool)

(declare-fun e!689252 () Bool)

(assert (=> b!1213586 (= res!805890 e!689252)))

(declare-fun e!689245 () Bool)

(assert (=> b!1213586 (=> (not res!805890) (not e!689245))))

(assert (=> b!1213586 e!689245))

(declare-fun lt!551785 () Unit!40172)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78328 (_ BitVec 32) (_ BitVec 32)) Unit!40172)

(assert (=> b!1213586 (= lt!551785 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26810 0))(
  ( (Nil!26807) (Cons!26806 (h!28015 (_ BitVec 64)) (t!39876 List!26810)) )
))
(declare-fun arrayNoDuplicates!0 (array!78328 (_ BitVec 32) List!26810) Bool)

(assert (=> b!1213586 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26807)))

(declare-fun lt!551788 () Unit!40172)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78328 (_ BitVec 64) (_ BitVec 32) List!26810) Unit!40172)

(assert (=> b!1213586 (= lt!551788 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26807))))

(assert (=> b!1213586 false))

(declare-fun b!1213587 () Bool)

(declare-fun res!805895 () Bool)

(declare-fun e!689250 () Bool)

(assert (=> b!1213587 (=> (not res!805895) (not e!689250))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1213587 (= res!805895 (validKeyInArray!0 k0!934))))

(declare-fun call!60436 () ListLongMap!17971)

(declare-fun call!60432 () ListLongMap!17971)

(declare-fun b!1213588 () Bool)

(declare-fun e!689243 () Bool)

(declare-fun -!1895 (ListLongMap!17971 (_ BitVec 64)) ListLongMap!17971)

(assert (=> b!1213588 (= e!689243 (= call!60436 (-!1895 call!60432 k0!934)))))

(declare-fun bm!60426 () Bool)

(declare-fun call!60435 () ListLongMap!17971)

(declare-fun call!60429 () ListLongMap!17971)

(assert (=> bm!60426 (= call!60435 call!60429)))

(declare-fun b!1213589 () Bool)

(declare-fun e!689242 () Bool)

(declare-fun mapRes!48049 () Bool)

(assert (=> b!1213589 (= e!689242 (and e!689246 mapRes!48049))))

(declare-fun condMapEmpty!48049 () Bool)

(declare-fun mapDefault!48049 () ValueCell!14682)

(assert (=> b!1213589 (= condMapEmpty!48049 (= (arr!37794 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14682)) mapDefault!48049)))))

(declare-fun b!1213590 () Bool)

(declare-fun arrayContainsKey!0 (array!78328 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1213590 (= e!689252 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapNonEmpty!48049 () Bool)

(declare-fun tp!91260 () Bool)

(declare-fun e!689241 () Bool)

(assert (=> mapNonEmpty!48049 (= mapRes!48049 (and tp!91260 e!689241))))

(declare-fun mapRest!48049 () (Array (_ BitVec 32) ValueCell!14682))

(declare-fun mapValue!48049 () ValueCell!14682)

(declare-fun mapKey!48049 () (_ BitVec 32))

(assert (=> mapNonEmpty!48049 (= (arr!37794 _values!996) (store mapRest!48049 mapKey!48049 mapValue!48049))))

(declare-fun b!1213592 () Bool)

(declare-fun call!60431 () Bool)

(assert (=> b!1213592 call!60431))

(declare-fun lt!551770 () Unit!40172)

(declare-fun call!60434 () Unit!40172)

(assert (=> b!1213592 (= lt!551770 call!60434)))

(declare-fun e!689247 () Unit!40172)

(assert (=> b!1213592 (= e!689247 lt!551770)))

(declare-fun b!1213593 () Bool)

(assert (=> b!1213593 (= e!689252 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!551778) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1213594 () Bool)

(declare-fun res!805892 () Bool)

(assert (=> b!1213594 (=> (not res!805892) (not e!689250))))

(assert (=> b!1213594 (= res!805892 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26807))))

(declare-fun b!1213595 () Bool)

(declare-fun res!805897 () Bool)

(assert (=> b!1213595 (=> (not res!805897) (not e!689250))))

(assert (=> b!1213595 (= res!805897 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38332 _keys!1208))))))

(declare-fun call!60433 () Bool)

(declare-fun lt!551776 () ListLongMap!17971)

(declare-fun bm!60427 () Bool)

(declare-fun contains!7015 (ListLongMap!17971 (_ BitVec 64)) Bool)

(assert (=> bm!60427 (= call!60433 (contains!7015 (ite c!119864 lt!551776 call!60435) k0!934))))

(declare-fun b!1213596 () Bool)

(declare-fun res!805886 () Bool)

(assert (=> b!1213596 (=> (not res!805886) (not e!689250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1213596 (= res!805886 (validMask!0 mask!1564))))

(declare-fun b!1213597 () Bool)

(declare-fun e!689253 () Unit!40172)

(declare-fun lt!551775 () Unit!40172)

(assert (=> b!1213597 (= e!689253 lt!551775)))

(assert (=> b!1213597 (= lt!551775 call!60434)))

(assert (=> b!1213597 call!60431))

(declare-fun c!119863 () Bool)

(declare-fun lt!551769 () ListLongMap!17971)

(declare-fun bm!60428 () Bool)

(declare-fun +!4026 (ListLongMap!17971 tuple2!19990) ListLongMap!17971)

(assert (=> bm!60428 (= call!60429 (+!4026 lt!551769 (ite (or c!119864 c!119863) (tuple2!19991 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19991 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1213598 () Bool)

(declare-fun Unit!40175 () Unit!40172)

(assert (=> b!1213598 (= e!689239 Unit!40175)))

(declare-fun b!1213599 () Bool)

(declare-fun res!805900 () Bool)

(assert (=> b!1213599 (=> (not res!805900) (not e!689250))))

(assert (=> b!1213599 (= res!805900 (and (= (size!38331 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38332 _keys!1208) (size!38331 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1213600 () Bool)

(declare-fun res!805896 () Bool)

(declare-fun e!689251 () Bool)

(assert (=> b!1213600 (=> (not res!805896) (not e!689251))))

(assert (=> b!1213600 (= res!805896 (arrayNoDuplicates!0 lt!551782 #b00000000000000000000000000000000 Nil!26807))))

(declare-fun b!1213601 () Bool)

(declare-fun res!805898 () Bool)

(assert (=> b!1213601 (=> (not res!805898) (not e!689250))))

(assert (=> b!1213601 (= res!805898 (= (select (arr!37795 _keys!1208) i!673) k0!934))))

(declare-fun bm!60429 () Bool)

(assert (=> bm!60429 (= call!60431 call!60433)))

(declare-fun b!1213602 () Bool)

(assert (=> b!1213602 (contains!7015 (+!4026 lt!551776 (tuple2!19991 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!551780 () Unit!40172)

(declare-fun addStillContains!1084 (ListLongMap!17971 (_ BitVec 64) V!46171 (_ BitVec 64)) Unit!40172)

(assert (=> b!1213602 (= lt!551780 (addStillContains!1084 lt!551776 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1213602 call!60433))

(assert (=> b!1213602 (= lt!551776 call!60429)))

(declare-fun lt!551768 () Unit!40172)

(declare-fun call!60430 () Unit!40172)

(assert (=> b!1213602 (= lt!551768 call!60430)))

(assert (=> b!1213602 (= e!689248 lt!551780)))

(declare-fun bm!60430 () Bool)

(assert (=> bm!60430 (= call!60436 (getCurrentListMapNoExtraKeys!5406 lt!551782 lt!551789 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213603 () Bool)

(assert (=> b!1213603 (= e!689253 e!689247)))

(declare-fun c!119861 () Bool)

(assert (=> b!1213603 (= c!119861 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!551778))))

(declare-fun bm!60431 () Bool)

(assert (=> bm!60431 (= call!60432 (getCurrentListMapNoExtraKeys!5406 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!48049 () Bool)

(assert (=> mapIsEmpty!48049 mapRes!48049))

(declare-fun bm!60432 () Bool)

(assert (=> bm!60432 (= call!60434 call!60430)))

(declare-fun b!1213604 () Bool)

(declare-fun Unit!40176 () Unit!40172)

(assert (=> b!1213604 (= e!689247 Unit!40176)))

(declare-fun b!1213605 () Bool)

(assert (=> b!1213605 (= e!689245 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1213606 () Bool)

(assert (=> b!1213606 (= e!689251 (not e!689249))))

(declare-fun res!805894 () Bool)

(assert (=> b!1213606 (=> res!805894 e!689249)))

(assert (=> b!1213606 (= res!805894 (bvsgt from!1455 i!673))))

(assert (=> b!1213606 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!551773 () Unit!40172)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78328 (_ BitVec 64) (_ BitVec 32)) Unit!40172)

(assert (=> b!1213606 (= lt!551773 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1213607 () Bool)

(declare-fun e!689244 () Bool)

(assert (=> b!1213607 (= e!689238 e!689244)))

(declare-fun res!805891 () Bool)

(assert (=> b!1213607 (=> res!805891 e!689244)))

(assert (=> b!1213607 (= res!805891 (not (= (select (arr!37795 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1213607 e!689243))

(declare-fun c!119866 () Bool)

(assert (=> b!1213607 (= c!119866 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!551771 () Unit!40172)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1100 (array!78328 array!78326 (_ BitVec 32) (_ BitVec 32) V!46171 V!46171 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40172)

(assert (=> b!1213607 (= lt!551771 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1100 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213608 () Bool)

(assert (=> b!1213608 (= e!689243 (= call!60436 call!60432))))

(declare-fun b!1213609 () Bool)

(declare-fun res!805887 () Bool)

(assert (=> b!1213609 (=> (not res!805887) (not e!689250))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78328 (_ BitVec 32)) Bool)

(assert (=> b!1213609 (= res!805887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1213591 () Bool)

(assert (=> b!1213591 (= e!689250 e!689251)))

(declare-fun res!805889 () Bool)

(assert (=> b!1213591 (=> (not res!805889) (not e!689251))))

(assert (=> b!1213591 (= res!805889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!551782 mask!1564))))

(assert (=> b!1213591 (= lt!551782 (array!78329 (store (arr!37795 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38332 _keys!1208)))))

(declare-fun res!805888 () Bool)

(assert (=> start!101192 (=> (not res!805888) (not e!689250))))

(assert (=> start!101192 (= res!805888 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38332 _keys!1208))))))

(assert (=> start!101192 e!689250))

(assert (=> start!101192 tp_is_empty!30783))

(declare-fun array_inv!28686 (array!78328) Bool)

(assert (=> start!101192 (array_inv!28686 _keys!1208)))

(assert (=> start!101192 true))

(assert (=> start!101192 tp!91259))

(declare-fun array_inv!28687 (array!78326) Bool)

(assert (=> start!101192 (and (array_inv!28687 _values!996) e!689242)))

(declare-fun bm!60433 () Bool)

(assert (=> bm!60433 (= call!60430 (addStillContains!1084 lt!551769 (ite (or c!119864 c!119863) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!119864 c!119863) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1213610 () Bool)

(assert (=> b!1213610 (= e!689241 tp_is_empty!30783)))

(declare-fun b!1213611 () Bool)

(assert (=> b!1213611 (= e!689244 true)))

(declare-fun e!689237 () Bool)

(assert (=> b!1213611 e!689237))

(declare-fun res!805893 () Bool)

(assert (=> b!1213611 (=> (not res!805893) (not e!689237))))

(declare-fun lt!551783 () ListLongMap!17971)

(assert (=> b!1213611 (= res!805893 (= lt!551783 lt!551769))))

(assert (=> b!1213611 (= lt!551783 (-!1895 lt!551786 k0!934))))

(declare-fun lt!551774 () V!46171)

(assert (=> b!1213611 (= (-!1895 (+!4026 lt!551769 (tuple2!19991 (select (arr!37795 _keys!1208) from!1455) lt!551774)) (select (arr!37795 _keys!1208) from!1455)) lt!551769)))

(declare-fun lt!551781 () Unit!40172)

(declare-fun addThenRemoveForNewKeyIsSame!294 (ListLongMap!17971 (_ BitVec 64) V!46171) Unit!40172)

(assert (=> b!1213611 (= lt!551781 (addThenRemoveForNewKeyIsSame!294 lt!551769 (select (arr!37795 _keys!1208) from!1455) lt!551774))))

(declare-fun get!19312 (ValueCell!14682 V!46171) V!46171)

(assert (=> b!1213611 (= lt!551774 (get!19312 (select (arr!37794 _values!996) from!1455) lt!551787))))

(declare-fun lt!551779 () Unit!40172)

(assert (=> b!1213611 (= lt!551779 e!689239)))

(declare-fun c!119862 () Bool)

(assert (=> b!1213611 (= c!119862 (contains!7015 lt!551769 k0!934))))

(assert (=> b!1213611 (= lt!551769 (getCurrentListMapNoExtraKeys!5406 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213612 () Bool)

(assert (=> b!1213612 (= e!689237 (= lt!551783 (getCurrentListMapNoExtraKeys!5406 lt!551782 lt!551789 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1213613 () Bool)

(assert (=> b!1213613 (= c!119863 (and (not lt!551778) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1213613 (= e!689248 e!689253)))

(assert (= (and start!101192 res!805888) b!1213596))

(assert (= (and b!1213596 res!805886) b!1213599))

(assert (= (and b!1213599 res!805900) b!1213609))

(assert (= (and b!1213609 res!805887) b!1213594))

(assert (= (and b!1213594 res!805892) b!1213595))

(assert (= (and b!1213595 res!805897) b!1213587))

(assert (= (and b!1213587 res!805895) b!1213601))

(assert (= (and b!1213601 res!805898) b!1213591))

(assert (= (and b!1213591 res!805889) b!1213600))

(assert (= (and b!1213600 res!805896) b!1213606))

(assert (= (and b!1213606 (not res!805894)) b!1213584))

(assert (= (and b!1213584 (not res!805899)) b!1213607))

(assert (= (and b!1213607 c!119866) b!1213588))

(assert (= (and b!1213607 (not c!119866)) b!1213608))

(assert (= (or b!1213588 b!1213608) bm!60430))

(assert (= (or b!1213588 b!1213608) bm!60431))

(assert (= (and b!1213607 (not res!805891)) b!1213611))

(assert (= (and b!1213611 c!119862) b!1213586))

(assert (= (and b!1213611 (not c!119862)) b!1213598))

(assert (= (and b!1213586 c!119864) b!1213602))

(assert (= (and b!1213586 (not c!119864)) b!1213613))

(assert (= (and b!1213613 c!119863) b!1213597))

(assert (= (and b!1213613 (not c!119863)) b!1213603))

(assert (= (and b!1213603 c!119861) b!1213592))

(assert (= (and b!1213603 (not c!119861)) b!1213604))

(assert (= (or b!1213597 b!1213592) bm!60432))

(assert (= (or b!1213597 b!1213592) bm!60426))

(assert (= (or b!1213597 b!1213592) bm!60429))

(assert (= (or b!1213602 bm!60429) bm!60427))

(assert (= (or b!1213602 bm!60432) bm!60433))

(assert (= (or b!1213602 bm!60426) bm!60428))

(assert (= (and b!1213586 c!119865) b!1213590))

(assert (= (and b!1213586 (not c!119865)) b!1213593))

(assert (= (and b!1213586 res!805890) b!1213605))

(assert (= (and b!1213611 res!805893) b!1213612))

(assert (= (and b!1213589 condMapEmpty!48049) mapIsEmpty!48049))

(assert (= (and b!1213589 (not condMapEmpty!48049)) mapNonEmpty!48049))

(get-info :version)

(assert (= (and mapNonEmpty!48049 ((_ is ValueCellFull!14682) mapValue!48049)) b!1213610))

(assert (= (and b!1213589 ((_ is ValueCellFull!14682) mapDefault!48049)) b!1213585))

(assert (= start!101192 b!1213589))

(declare-fun b_lambda!21765 () Bool)

(assert (=> (not b_lambda!21765) (not b!1213584)))

(declare-fun t!39874 () Bool)

(declare-fun tb!10887 () Bool)

(assert (=> (and start!101192 (= defaultEntry!1004 defaultEntry!1004) t!39874) tb!10887))

(declare-fun result!22363 () Bool)

(assert (=> tb!10887 (= result!22363 tp_is_empty!30783)))

(assert (=> b!1213584 t!39874))

(declare-fun b_and!43287 () Bool)

(assert (= b_and!43285 (and (=> t!39874 result!22363) b_and!43287)))

(declare-fun m!1118905 () Bool)

(assert (=> b!1213607 m!1118905))

(declare-fun m!1118907 () Bool)

(assert (=> b!1213607 m!1118907))

(declare-fun m!1118909 () Bool)

(assert (=> b!1213591 m!1118909))

(declare-fun m!1118911 () Bool)

(assert (=> b!1213591 m!1118911))

(declare-fun m!1118913 () Bool)

(assert (=> b!1213586 m!1118913))

(declare-fun m!1118915 () Bool)

(assert (=> b!1213586 m!1118915))

(declare-fun m!1118917 () Bool)

(assert (=> b!1213586 m!1118917))

(declare-fun m!1118919 () Bool)

(assert (=> b!1213586 m!1118919))

(declare-fun m!1118921 () Bool)

(assert (=> b!1213590 m!1118921))

(declare-fun m!1118923 () Bool)

(assert (=> bm!60428 m!1118923))

(declare-fun m!1118925 () Bool)

(assert (=> b!1213587 m!1118925))

(declare-fun m!1118927 () Bool)

(assert (=> b!1213612 m!1118927))

(declare-fun m!1118929 () Bool)

(assert (=> bm!60427 m!1118929))

(declare-fun m!1118931 () Bool)

(assert (=> b!1213594 m!1118931))

(declare-fun m!1118933 () Bool)

(assert (=> b!1213588 m!1118933))

(declare-fun m!1118935 () Bool)

(assert (=> b!1213600 m!1118935))

(assert (=> bm!60430 m!1118927))

(declare-fun m!1118937 () Bool)

(assert (=> bm!60433 m!1118937))

(declare-fun m!1118939 () Bool)

(assert (=> b!1213611 m!1118939))

(assert (=> b!1213611 m!1118905))

(declare-fun m!1118941 () Bool)

(assert (=> b!1213611 m!1118941))

(declare-fun m!1118943 () Bool)

(assert (=> b!1213611 m!1118943))

(assert (=> b!1213611 m!1118939))

(declare-fun m!1118945 () Bool)

(assert (=> b!1213611 m!1118945))

(assert (=> b!1213611 m!1118945))

(declare-fun m!1118947 () Bool)

(assert (=> b!1213611 m!1118947))

(declare-fun m!1118949 () Bool)

(assert (=> b!1213611 m!1118949))

(assert (=> b!1213611 m!1118905))

(declare-fun m!1118951 () Bool)

(assert (=> b!1213611 m!1118951))

(declare-fun m!1118953 () Bool)

(assert (=> b!1213611 m!1118953))

(assert (=> b!1213611 m!1118905))

(declare-fun m!1118955 () Bool)

(assert (=> b!1213609 m!1118955))

(declare-fun m!1118957 () Bool)

(assert (=> start!101192 m!1118957))

(declare-fun m!1118959 () Bool)

(assert (=> start!101192 m!1118959))

(declare-fun m!1118961 () Bool)

(assert (=> b!1213596 m!1118961))

(declare-fun m!1118963 () Bool)

(assert (=> b!1213606 m!1118963))

(declare-fun m!1118965 () Bool)

(assert (=> b!1213606 m!1118965))

(declare-fun m!1118967 () Bool)

(assert (=> mapNonEmpty!48049 m!1118967))

(assert (=> bm!60431 m!1118943))

(assert (=> b!1213605 m!1118921))

(declare-fun m!1118969 () Bool)

(assert (=> b!1213602 m!1118969))

(assert (=> b!1213602 m!1118969))

(declare-fun m!1118971 () Bool)

(assert (=> b!1213602 m!1118971))

(declare-fun m!1118973 () Bool)

(assert (=> b!1213602 m!1118973))

(declare-fun m!1118975 () Bool)

(assert (=> b!1213584 m!1118975))

(declare-fun m!1118977 () Bool)

(assert (=> b!1213584 m!1118977))

(declare-fun m!1118979 () Bool)

(assert (=> b!1213584 m!1118979))

(declare-fun m!1118981 () Bool)

(assert (=> b!1213584 m!1118981))

(declare-fun m!1118983 () Bool)

(assert (=> b!1213601 m!1118983))

(check-sat (not b_lambda!21765) (not b!1213602) (not b_next!26079) (not b!1213594) (not mapNonEmpty!48049) (not bm!60427) (not bm!60431) (not b!1213588) b_and!43287 (not b!1213611) (not b!1213584) (not b!1213590) (not b!1213587) (not start!101192) (not b!1213612) (not bm!60433) (not b!1213596) (not bm!60430) (not b!1213586) (not b!1213606) (not b!1213605) (not b!1213591) (not b!1213607) (not b!1213609) (not b!1213600) tp_is_empty!30783 (not bm!60428))
(check-sat b_and!43287 (not b_next!26079))
