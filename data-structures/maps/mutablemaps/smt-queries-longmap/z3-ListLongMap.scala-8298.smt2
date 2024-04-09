; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101136 () Bool)

(assert start!101136)

(declare-fun b_free!26061 () Bool)

(declare-fun b_next!26061 () Bool)

(assert (=> start!101136 (= b_free!26061 (not b_next!26061))))

(declare-fun tp!91202 () Bool)

(declare-fun b_and!43231 () Bool)

(assert (=> start!101136 (= tp!91202 b_and!43231)))

(declare-fun b!1212580 () Bool)

(declare-fun e!688671 () Bool)

(declare-fun tp_is_empty!30765 () Bool)

(assert (=> b!1212580 (= e!688671 tp_is_empty!30765)))

(declare-datatypes ((V!46147 0))(
  ( (V!46148 (val!15439 Int)) )
))
(declare-fun zeroValue!944 () V!46147)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((array!78288 0))(
  ( (array!78289 (arr!37776 (Array (_ BitVec 32) (_ BitVec 64))) (size!38313 (_ BitVec 32))) )
))
(declare-fun lt!551066 () array!78288)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14673 0))(
  ( (ValueCellFull!14673 (v!18092 V!46147)) (EmptyCell!14673) )
))
(declare-datatypes ((array!78290 0))(
  ( (array!78291 (arr!37777 (Array (_ BitVec 32) ValueCell!14673)) (size!38314 (_ BitVec 32))) )
))
(declare-fun lt!551057 () array!78290)

(declare-datatypes ((tuple2!19972 0))(
  ( (tuple2!19973 (_1!9996 (_ BitVec 64)) (_2!9996 V!46147)) )
))
(declare-datatypes ((List!26792 0))(
  ( (Nil!26789) (Cons!26788 (h!27997 tuple2!19972) (t!39840 List!26792)) )
))
(declare-datatypes ((ListLongMap!17953 0))(
  ( (ListLongMap!17954 (toList!8992 List!26792)) )
))
(declare-fun call!60199 () ListLongMap!17953)

(declare-fun minValue!944 () V!46147)

(declare-fun bm!60189 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5397 (array!78288 array!78290 (_ BitVec 32) (_ BitVec 32) V!46147 V!46147 (_ BitVec 32) Int) ListLongMap!17953)

(assert (=> bm!60189 (= call!60199 (getCurrentListMapNoExtraKeys!5397 lt!551066 lt!551057 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1212581 () Bool)

(declare-datatypes ((Unit!40132 0))(
  ( (Unit!40133) )
))
(declare-fun e!688679 () Unit!40132)

(declare-fun Unit!40134 () Unit!40132)

(assert (=> b!1212581 (= e!688679 Unit!40134)))

(declare-fun b!1212582 () Bool)

(declare-fun res!805419 () Bool)

(declare-fun e!688665 () Bool)

(assert (=> b!1212582 (=> (not res!805419) (not e!688665))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1212582 (= res!805419 (validKeyInArray!0 k0!934))))

(declare-fun b!1212583 () Bool)

(declare-fun res!805414 () Bool)

(assert (=> b!1212583 (=> (not res!805414) (not e!688665))))

(declare-fun _keys!1208 () array!78288)

(declare-fun _values!996 () array!78290)

(assert (=> b!1212583 (= res!805414 (and (= (size!38314 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38313 _keys!1208) (size!38314 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1212584 () Bool)

(declare-fun c!119655 () Bool)

(declare-fun lt!551060 () Bool)

(assert (=> b!1212584 (= c!119655 (and (not lt!551060) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!688667 () Unit!40132)

(declare-fun e!688672 () Unit!40132)

(assert (=> b!1212584 (= e!688667 e!688672)))

(declare-fun b!1212585 () Bool)

(declare-fun e!688675 () Bool)

(declare-fun e!688670 () Bool)

(assert (=> b!1212585 (= e!688675 e!688670)))

(declare-fun res!805415 () Bool)

(assert (=> b!1212585 (=> res!805415 e!688670)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1212585 (= res!805415 (not (= from!1455 i!673)))))

(declare-fun lt!551071 () ListLongMap!17953)

(assert (=> b!1212585 (= lt!551071 (getCurrentListMapNoExtraKeys!5397 lt!551066 lt!551057 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!551073 () V!46147)

(assert (=> b!1212585 (= lt!551057 (array!78291 (store (arr!37777 _values!996) i!673 (ValueCellFull!14673 lt!551073)) (size!38314 _values!996)))))

(declare-fun dynLambda!3309 (Int (_ BitVec 64)) V!46147)

(assert (=> b!1212585 (= lt!551073 (dynLambda!3309 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!551053 () ListLongMap!17953)

(assert (=> b!1212585 (= lt!551053 (getCurrentListMapNoExtraKeys!5397 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1212586 () Bool)

(declare-fun e!688666 () Bool)

(assert (=> b!1212586 (= e!688666 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!551060) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!60191 () Bool)

(declare-fun call!60193 () ListLongMap!17953)

(declare-fun call!60192 () ListLongMap!17953)

(assert (=> bm!60191 (= call!60193 call!60192)))

(declare-fun e!688677 () Bool)

(declare-fun call!60198 () ListLongMap!17953)

(declare-fun b!1212587 () Bool)

(declare-fun -!1888 (ListLongMap!17953 (_ BitVec 64)) ListLongMap!17953)

(assert (=> b!1212587 (= e!688677 (= call!60199 (-!1888 call!60198 k0!934)))))

(declare-fun lt!551068 () ListLongMap!17953)

(declare-fun c!119654 () Bool)

(declare-fun bm!60192 () Bool)

(declare-fun +!4019 (ListLongMap!17953 tuple2!19972) ListLongMap!17953)

(assert (=> bm!60192 (= call!60192 (+!4019 lt!551068 (ite (or c!119654 c!119655) (tuple2!19973 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun e!688676 () Bool)

(declare-fun b!1212588 () Bool)

(declare-fun lt!551065 () ListLongMap!17953)

(assert (=> b!1212588 (= e!688676 (= lt!551065 (getCurrentListMapNoExtraKeys!5397 lt!551066 lt!551057 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1212589 () Bool)

(declare-fun res!805420 () Bool)

(assert (=> b!1212589 (=> (not res!805420) (not e!688665))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1212589 (= res!805420 (validMask!0 mask!1564))))

(declare-fun b!1212590 () Bool)

(declare-fun lt!551061 () ListLongMap!17953)

(declare-fun contains!7007 (ListLongMap!17953 (_ BitVec 64)) Bool)

(assert (=> b!1212590 (contains!7007 (+!4019 lt!551061 (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!551063 () Unit!40132)

(declare-fun call!60196 () Unit!40132)

(assert (=> b!1212590 (= lt!551063 call!60196)))

(declare-fun call!60194 () Bool)

(assert (=> b!1212590 call!60194))

(assert (=> b!1212590 (= lt!551061 call!60192)))

(declare-fun lt!551058 () Unit!40132)

(declare-fun addStillContains!1078 (ListLongMap!17953 (_ BitVec 64) V!46147 (_ BitVec 64)) Unit!40132)

(assert (=> b!1212590 (= lt!551058 (addStillContains!1078 lt!551068 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1212590 (= e!688667 lt!551063)))

(declare-fun b!1212591 () Bool)

(declare-fun res!805416 () Bool)

(assert (=> b!1212591 (=> (not res!805416) (not e!688665))))

(assert (=> b!1212591 (= res!805416 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38313 _keys!1208))))))

(declare-fun b!1212592 () Bool)

(declare-fun e!688678 () Bool)

(assert (=> b!1212592 (= e!688670 e!688678)))

(declare-fun res!805408 () Bool)

(assert (=> b!1212592 (=> res!805408 e!688678)))

(assert (=> b!1212592 (= res!805408 (not (= (select (arr!37776 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1212592 e!688677))

(declare-fun c!119656 () Bool)

(assert (=> b!1212592 (= c!119656 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!551072 () Unit!40132)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1094 (array!78288 array!78290 (_ BitVec 32) (_ BitVec 32) V!46147 V!46147 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40132)

(assert (=> b!1212592 (= lt!551072 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1094 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1212593 () Bool)

(declare-fun res!805418 () Bool)

(assert (=> b!1212593 (=> (not res!805418) (not e!688665))))

(assert (=> b!1212593 (= res!805418 (= (select (arr!37776 _keys!1208) i!673) k0!934))))

(declare-fun b!1212594 () Bool)

(declare-fun e!688669 () Bool)

(declare-fun mapRes!48019 () Bool)

(assert (=> b!1212594 (= e!688669 (and e!688671 mapRes!48019))))

(declare-fun condMapEmpty!48019 () Bool)

(declare-fun mapDefault!48019 () ValueCell!14673)

(assert (=> b!1212594 (= condMapEmpty!48019 (= (arr!37777 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14673)) mapDefault!48019)))))

(declare-fun b!1212595 () Bool)

(declare-fun e!688674 () Unit!40132)

(declare-fun Unit!40135 () Unit!40132)

(assert (=> b!1212595 (= e!688674 Unit!40135)))

(assert (=> b!1212595 (= lt!551060 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1212595 (= c!119654 (and (not lt!551060) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!551069 () Unit!40132)

(assert (=> b!1212595 (= lt!551069 e!688667)))

(declare-fun lt!551054 () Unit!40132)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!614 (array!78288 array!78290 (_ BitVec 32) (_ BitVec 32) V!46147 V!46147 (_ BitVec 64) (_ BitVec 32) Int) Unit!40132)

(assert (=> b!1212595 (= lt!551054 (lemmaListMapContainsThenArrayContainsFrom!614 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119657 () Bool)

(assert (=> b!1212595 (= c!119657 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!805409 () Bool)

(assert (=> b!1212595 (= res!805409 e!688666)))

(declare-fun e!688664 () Bool)

(assert (=> b!1212595 (=> (not res!805409) (not e!688664))))

(assert (=> b!1212595 e!688664))

(declare-fun lt!551070 () Unit!40132)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78288 (_ BitVec 32) (_ BitVec 32)) Unit!40132)

(assert (=> b!1212595 (= lt!551070 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26793 0))(
  ( (Nil!26790) (Cons!26789 (h!27998 (_ BitVec 64)) (t!39841 List!26793)) )
))
(declare-fun arrayNoDuplicates!0 (array!78288 (_ BitVec 32) List!26793) Bool)

(assert (=> b!1212595 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26790)))

(declare-fun lt!551056 () Unit!40132)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78288 (_ BitVec 64) (_ BitVec 32) List!26793) Unit!40132)

(assert (=> b!1212595 (= lt!551056 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26790))))

(assert (=> b!1212595 false))

(declare-fun bm!60190 () Bool)

(assert (=> bm!60190 (= call!60198 (getCurrentListMapNoExtraKeys!5397 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!805412 () Bool)

(assert (=> start!101136 (=> (not res!805412) (not e!688665))))

(assert (=> start!101136 (= res!805412 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38313 _keys!1208))))))

(assert (=> start!101136 e!688665))

(assert (=> start!101136 tp_is_empty!30765))

(declare-fun array_inv!28672 (array!78288) Bool)

(assert (=> start!101136 (array_inv!28672 _keys!1208)))

(assert (=> start!101136 true))

(assert (=> start!101136 tp!91202))

(declare-fun array_inv!28673 (array!78290) Bool)

(assert (=> start!101136 (and (array_inv!28673 _values!996) e!688669)))

(declare-fun b!1212596 () Bool)

(declare-fun res!805421 () Bool)

(assert (=> b!1212596 (=> (not res!805421) (not e!688665))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78288 (_ BitVec 32)) Bool)

(assert (=> b!1212596 (= res!805421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!60193 () Bool)

(declare-fun call!60197 () Unit!40132)

(assert (=> bm!60193 (= call!60197 call!60196)))

(declare-fun b!1212597 () Bool)

(declare-fun call!60195 () Bool)

(assert (=> b!1212597 call!60195))

(declare-fun lt!551055 () Unit!40132)

(assert (=> b!1212597 (= lt!551055 call!60197)))

(assert (=> b!1212597 (= e!688679 lt!551055)))

(declare-fun b!1212598 () Bool)

(assert (=> b!1212598 (= e!688677 (= call!60199 call!60198))))

(declare-fun mapNonEmpty!48019 () Bool)

(declare-fun tp!91203 () Bool)

(declare-fun e!688668 () Bool)

(assert (=> mapNonEmpty!48019 (= mapRes!48019 (and tp!91203 e!688668))))

(declare-fun mapKey!48019 () (_ BitVec 32))

(declare-fun mapValue!48019 () ValueCell!14673)

(declare-fun mapRest!48019 () (Array (_ BitVec 32) ValueCell!14673))

(assert (=> mapNonEmpty!48019 (= (arr!37777 _values!996) (store mapRest!48019 mapKey!48019 mapValue!48019))))

(declare-fun b!1212599 () Bool)

(declare-fun lt!551067 () Unit!40132)

(assert (=> b!1212599 (= e!688672 lt!551067)))

(assert (=> b!1212599 (= lt!551067 call!60197)))

(assert (=> b!1212599 call!60195))

(declare-fun b!1212600 () Bool)

(declare-fun Unit!40136 () Unit!40132)

(assert (=> b!1212600 (= e!688674 Unit!40136)))

(declare-fun bm!60194 () Bool)

(assert (=> bm!60194 (= call!60195 call!60194)))

(declare-fun bm!60195 () Bool)

(assert (=> bm!60195 (= call!60194 (contains!7007 (ite c!119654 lt!551061 call!60193) k0!934))))

(declare-fun bm!60196 () Bool)

(assert (=> bm!60196 (= call!60196 (addStillContains!1078 (ite c!119654 lt!551061 lt!551068) (ite c!119654 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!119655 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!119654 minValue!944 (ite c!119655 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1212601 () Bool)

(assert (=> b!1212601 (= e!688668 tp_is_empty!30765)))

(declare-fun b!1212602 () Bool)

(declare-fun e!688663 () Bool)

(assert (=> b!1212602 (= e!688665 e!688663)))

(declare-fun res!805422 () Bool)

(assert (=> b!1212602 (=> (not res!805422) (not e!688663))))

(assert (=> b!1212602 (= res!805422 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!551066 mask!1564))))

(assert (=> b!1212602 (= lt!551066 (array!78289 (store (arr!37776 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38313 _keys!1208)))))

(declare-fun b!1212603 () Bool)

(declare-fun arrayContainsKey!0 (array!78288 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1212603 (= e!688664 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1212604 () Bool)

(assert (=> b!1212604 (= e!688678 (= lt!551065 lt!551071))))

(assert (=> b!1212604 e!688676))

(declare-fun res!805417 () Bool)

(assert (=> b!1212604 (=> (not res!805417) (not e!688676))))

(assert (=> b!1212604 (= res!805417 (= lt!551065 lt!551068))))

(assert (=> b!1212604 (= lt!551065 (-!1888 lt!551053 k0!934))))

(declare-fun lt!551074 () V!46147)

(assert (=> b!1212604 (= (-!1888 (+!4019 lt!551068 (tuple2!19973 (select (arr!37776 _keys!1208) from!1455) lt!551074)) (select (arr!37776 _keys!1208) from!1455)) lt!551068)))

(declare-fun lt!551059 () Unit!40132)

(declare-fun addThenRemoveForNewKeyIsSame!289 (ListLongMap!17953 (_ BitVec 64) V!46147) Unit!40132)

(assert (=> b!1212604 (= lt!551059 (addThenRemoveForNewKeyIsSame!289 lt!551068 (select (arr!37776 _keys!1208) from!1455) lt!551074))))

(declare-fun get!19299 (ValueCell!14673 V!46147) V!46147)

(assert (=> b!1212604 (= lt!551074 (get!19299 (select (arr!37777 _values!996) from!1455) lt!551073))))

(declare-fun lt!551062 () Unit!40132)

(assert (=> b!1212604 (= lt!551062 e!688674)))

(declare-fun c!119653 () Bool)

(assert (=> b!1212604 (= c!119653 (contains!7007 lt!551068 k0!934))))

(assert (=> b!1212604 (= lt!551068 (getCurrentListMapNoExtraKeys!5397 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1212605 () Bool)

(assert (=> b!1212605 (= e!688663 (not e!688675))))

(declare-fun res!805411 () Bool)

(assert (=> b!1212605 (=> res!805411 e!688675)))

(assert (=> b!1212605 (= res!805411 (bvsgt from!1455 i!673))))

(assert (=> b!1212605 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!551064 () Unit!40132)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78288 (_ BitVec 64) (_ BitVec 32)) Unit!40132)

(assert (=> b!1212605 (= lt!551064 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!48019 () Bool)

(assert (=> mapIsEmpty!48019 mapRes!48019))

(declare-fun b!1212606 () Bool)

(assert (=> b!1212606 (= e!688666 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1212607 () Bool)

(declare-fun res!805410 () Bool)

(assert (=> b!1212607 (=> (not res!805410) (not e!688663))))

(assert (=> b!1212607 (= res!805410 (arrayNoDuplicates!0 lt!551066 #b00000000000000000000000000000000 Nil!26790))))

(declare-fun b!1212608 () Bool)

(declare-fun res!805413 () Bool)

(assert (=> b!1212608 (=> (not res!805413) (not e!688665))))

(assert (=> b!1212608 (= res!805413 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26790))))

(declare-fun b!1212609 () Bool)

(assert (=> b!1212609 (= e!688672 e!688679)))

(declare-fun c!119652 () Bool)

(assert (=> b!1212609 (= c!119652 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!551060))))

(assert (= (and start!101136 res!805412) b!1212589))

(assert (= (and b!1212589 res!805420) b!1212583))

(assert (= (and b!1212583 res!805414) b!1212596))

(assert (= (and b!1212596 res!805421) b!1212608))

(assert (= (and b!1212608 res!805413) b!1212591))

(assert (= (and b!1212591 res!805416) b!1212582))

(assert (= (and b!1212582 res!805419) b!1212593))

(assert (= (and b!1212593 res!805418) b!1212602))

(assert (= (and b!1212602 res!805422) b!1212607))

(assert (= (and b!1212607 res!805410) b!1212605))

(assert (= (and b!1212605 (not res!805411)) b!1212585))

(assert (= (and b!1212585 (not res!805415)) b!1212592))

(assert (= (and b!1212592 c!119656) b!1212587))

(assert (= (and b!1212592 (not c!119656)) b!1212598))

(assert (= (or b!1212587 b!1212598) bm!60189))

(assert (= (or b!1212587 b!1212598) bm!60190))

(assert (= (and b!1212592 (not res!805408)) b!1212604))

(assert (= (and b!1212604 c!119653) b!1212595))

(assert (= (and b!1212604 (not c!119653)) b!1212600))

(assert (= (and b!1212595 c!119654) b!1212590))

(assert (= (and b!1212595 (not c!119654)) b!1212584))

(assert (= (and b!1212584 c!119655) b!1212599))

(assert (= (and b!1212584 (not c!119655)) b!1212609))

(assert (= (and b!1212609 c!119652) b!1212597))

(assert (= (and b!1212609 (not c!119652)) b!1212581))

(assert (= (or b!1212599 b!1212597) bm!60193))

(assert (= (or b!1212599 b!1212597) bm!60191))

(assert (= (or b!1212599 b!1212597) bm!60194))

(assert (= (or b!1212590 bm!60194) bm!60195))

(assert (= (or b!1212590 bm!60193) bm!60196))

(assert (= (or b!1212590 bm!60191) bm!60192))

(assert (= (and b!1212595 c!119657) b!1212606))

(assert (= (and b!1212595 (not c!119657)) b!1212586))

(assert (= (and b!1212595 res!805409) b!1212603))

(assert (= (and b!1212604 res!805417) b!1212588))

(assert (= (and b!1212594 condMapEmpty!48019) mapIsEmpty!48019))

(assert (= (and b!1212594 (not condMapEmpty!48019)) mapNonEmpty!48019))

(get-info :version)

(assert (= (and mapNonEmpty!48019 ((_ is ValueCellFull!14673) mapValue!48019)) b!1212601))

(assert (= (and b!1212594 ((_ is ValueCellFull!14673) mapDefault!48019)) b!1212580))

(assert (= start!101136 b!1212594))

(declare-fun b_lambda!21709 () Bool)

(assert (=> (not b_lambda!21709) (not b!1212585)))

(declare-fun t!39839 () Bool)

(declare-fun tb!10869 () Bool)

(assert (=> (and start!101136 (= defaultEntry!1004 defaultEntry!1004) t!39839) tb!10869))

(declare-fun result!22325 () Bool)

(assert (=> tb!10869 (= result!22325 tp_is_empty!30765)))

(assert (=> b!1212585 t!39839))

(declare-fun b_and!43233 () Bool)

(assert (= b_and!43231 (and (=> t!39839 result!22325) b_and!43233)))

(declare-fun m!1117925 () Bool)

(assert (=> b!1212608 m!1117925))

(declare-fun m!1117927 () Bool)

(assert (=> mapNonEmpty!48019 m!1117927))

(declare-fun m!1117929 () Bool)

(assert (=> bm!60195 m!1117929))

(declare-fun m!1117931 () Bool)

(assert (=> b!1212603 m!1117931))

(declare-fun m!1117933 () Bool)

(assert (=> b!1212592 m!1117933))

(declare-fun m!1117935 () Bool)

(assert (=> b!1212592 m!1117935))

(declare-fun m!1117937 () Bool)

(assert (=> b!1212590 m!1117937))

(assert (=> b!1212590 m!1117937))

(declare-fun m!1117939 () Bool)

(assert (=> b!1212590 m!1117939))

(declare-fun m!1117941 () Bool)

(assert (=> b!1212590 m!1117941))

(declare-fun m!1117943 () Bool)

(assert (=> b!1212605 m!1117943))

(declare-fun m!1117945 () Bool)

(assert (=> b!1212605 m!1117945))

(declare-fun m!1117947 () Bool)

(assert (=> b!1212595 m!1117947))

(declare-fun m!1117949 () Bool)

(assert (=> b!1212595 m!1117949))

(declare-fun m!1117951 () Bool)

(assert (=> b!1212595 m!1117951))

(declare-fun m!1117953 () Bool)

(assert (=> b!1212595 m!1117953))

(declare-fun m!1117955 () Bool)

(assert (=> b!1212587 m!1117955))

(declare-fun m!1117957 () Bool)

(assert (=> bm!60196 m!1117957))

(declare-fun m!1117959 () Bool)

(assert (=> b!1212589 m!1117959))

(declare-fun m!1117961 () Bool)

(assert (=> b!1212607 m!1117961))

(declare-fun m!1117963 () Bool)

(assert (=> b!1212604 m!1117963))

(declare-fun m!1117965 () Bool)

(assert (=> b!1212604 m!1117965))

(declare-fun m!1117967 () Bool)

(assert (=> b!1212604 m!1117967))

(assert (=> b!1212604 m!1117933))

(declare-fun m!1117969 () Bool)

(assert (=> b!1212604 m!1117969))

(declare-fun m!1117971 () Bool)

(assert (=> b!1212604 m!1117971))

(assert (=> b!1212604 m!1117933))

(declare-fun m!1117973 () Bool)

(assert (=> b!1212604 m!1117973))

(assert (=> b!1212604 m!1117967))

(assert (=> b!1212604 m!1117933))

(declare-fun m!1117975 () Bool)

(assert (=> b!1212604 m!1117975))

(assert (=> b!1212604 m!1117965))

(declare-fun m!1117977 () Bool)

(assert (=> b!1212604 m!1117977))

(declare-fun m!1117979 () Bool)

(assert (=> b!1212593 m!1117979))

(declare-fun m!1117981 () Bool)

(assert (=> b!1212596 m!1117981))

(declare-fun m!1117983 () Bool)

(assert (=> b!1212602 m!1117983))

(declare-fun m!1117985 () Bool)

(assert (=> b!1212602 m!1117985))

(declare-fun m!1117987 () Bool)

(assert (=> bm!60192 m!1117987))

(declare-fun m!1117989 () Bool)

(assert (=> b!1212588 m!1117989))

(declare-fun m!1117991 () Bool)

(assert (=> b!1212582 m!1117991))

(assert (=> b!1212606 m!1117931))

(assert (=> bm!60190 m!1117963))

(declare-fun m!1117993 () Bool)

(assert (=> b!1212585 m!1117993))

(declare-fun m!1117995 () Bool)

(assert (=> b!1212585 m!1117995))

(declare-fun m!1117997 () Bool)

(assert (=> b!1212585 m!1117997))

(declare-fun m!1117999 () Bool)

(assert (=> b!1212585 m!1117999))

(declare-fun m!1118001 () Bool)

(assert (=> start!101136 m!1118001))

(declare-fun m!1118003 () Bool)

(assert (=> start!101136 m!1118003))

(assert (=> bm!60189 m!1117989))

(check-sat (not b!1212604) (not start!101136) (not b!1212606) (not b!1212582) (not b!1212587) (not b!1212605) (not bm!60192) (not mapNonEmpty!48019) (not b!1212602) (not b!1212603) (not b_next!26061) tp_is_empty!30765 (not b!1212596) b_and!43233 (not b!1212592) (not bm!60195) (not b!1212595) (not bm!60190) (not b!1212588) (not b!1212590) (not b_lambda!21709) (not b!1212589) (not b!1212607) (not b!1212608) (not bm!60189) (not b!1212585) (not bm!60196))
(check-sat b_and!43233 (not b_next!26061))
(get-model)

(declare-fun b_lambda!21713 () Bool)

(assert (= b_lambda!21709 (or (and start!101136 b_free!26061) b_lambda!21713)))

(check-sat (not b!1212604) (not start!101136) (not b!1212606) (not b!1212582) (not b!1212587) (not b!1212605) (not bm!60192) (not mapNonEmpty!48019) (not b!1212602) (not b!1212603) (not b_next!26061) tp_is_empty!30765 (not b_lambda!21713) (not b!1212596) b_and!43233 (not b!1212592) (not bm!60195) (not b!1212595) (not bm!60190) (not b!1212588) (not b!1212590) (not b!1212589) (not b!1212607) (not b!1212608) (not bm!60189) (not b!1212585) (not bm!60196))
(check-sat b_and!43233 (not b_next!26061))
(get-model)

(declare-fun d!133359 () Bool)

(declare-fun e!688735 () Bool)

(assert (=> d!133359 e!688735))

(declare-fun res!805470 () Bool)

(assert (=> d!133359 (=> res!805470 e!688735)))

(declare-fun lt!551151 () Bool)

(assert (=> d!133359 (= res!805470 (not lt!551151))))

(declare-fun lt!551150 () Bool)

(assert (=> d!133359 (= lt!551151 lt!551150)))

(declare-fun lt!551152 () Unit!40132)

(declare-fun e!688736 () Unit!40132)

(assert (=> d!133359 (= lt!551152 e!688736)))

(declare-fun c!119678 () Bool)

(assert (=> d!133359 (= c!119678 lt!551150)))

(declare-fun containsKey!597 (List!26792 (_ BitVec 64)) Bool)

(assert (=> d!133359 (= lt!551150 (containsKey!597 (toList!8992 (+!4019 lt!551061 (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(assert (=> d!133359 (= (contains!7007 (+!4019 lt!551061 (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934) lt!551151)))

(declare-fun b!1212710 () Bool)

(declare-fun lt!551149 () Unit!40132)

(assert (=> b!1212710 (= e!688736 lt!551149)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!426 (List!26792 (_ BitVec 64)) Unit!40132)

(assert (=> b!1212710 (= lt!551149 (lemmaContainsKeyImpliesGetValueByKeyDefined!426 (toList!8992 (+!4019 lt!551061 (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(declare-datatypes ((Option!694 0))(
  ( (Some!693 (v!18094 V!46147)) (None!692) )
))
(declare-fun isDefined!466 (Option!694) Bool)

(declare-fun getValueByKey!643 (List!26792 (_ BitVec 64)) Option!694)

(assert (=> b!1212710 (isDefined!466 (getValueByKey!643 (toList!8992 (+!4019 lt!551061 (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(declare-fun b!1212711 () Bool)

(declare-fun Unit!40141 () Unit!40132)

(assert (=> b!1212711 (= e!688736 Unit!40141)))

(declare-fun b!1212712 () Bool)

(assert (=> b!1212712 (= e!688735 (isDefined!466 (getValueByKey!643 (toList!8992 (+!4019 lt!551061 (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934)))))

(assert (= (and d!133359 c!119678) b!1212710))

(assert (= (and d!133359 (not c!119678)) b!1212711))

(assert (= (and d!133359 (not res!805470)) b!1212712))

(declare-fun m!1118085 () Bool)

(assert (=> d!133359 m!1118085))

(declare-fun m!1118087 () Bool)

(assert (=> b!1212710 m!1118087))

(declare-fun m!1118089 () Bool)

(assert (=> b!1212710 m!1118089))

(assert (=> b!1212710 m!1118089))

(declare-fun m!1118091 () Bool)

(assert (=> b!1212710 m!1118091))

(assert (=> b!1212712 m!1118089))

(assert (=> b!1212712 m!1118089))

(assert (=> b!1212712 m!1118091))

(assert (=> b!1212590 d!133359))

(declare-fun d!133361 () Bool)

(declare-fun e!688739 () Bool)

(assert (=> d!133361 e!688739))

(declare-fun res!805476 () Bool)

(assert (=> d!133361 (=> (not res!805476) (not e!688739))))

(declare-fun lt!551161 () ListLongMap!17953)

(assert (=> d!133361 (= res!805476 (contains!7007 lt!551161 (_1!9996 (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun lt!551162 () List!26792)

(assert (=> d!133361 (= lt!551161 (ListLongMap!17954 lt!551162))))

(declare-fun lt!551163 () Unit!40132)

(declare-fun lt!551164 () Unit!40132)

(assert (=> d!133361 (= lt!551163 lt!551164)))

(assert (=> d!133361 (= (getValueByKey!643 lt!551162 (_1!9996 (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (Some!693 (_2!9996 (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun lemmaContainsTupThenGetReturnValue!318 (List!26792 (_ BitVec 64) V!46147) Unit!40132)

(assert (=> d!133361 (= lt!551164 (lemmaContainsTupThenGetReturnValue!318 lt!551162 (_1!9996 (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9996 (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun insertStrictlySorted!410 (List!26792 (_ BitVec 64) V!46147) List!26792)

(assert (=> d!133361 (= lt!551162 (insertStrictlySorted!410 (toList!8992 lt!551061) (_1!9996 (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9996 (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!133361 (= (+!4019 lt!551061 (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) lt!551161)))

(declare-fun b!1212717 () Bool)

(declare-fun res!805475 () Bool)

(assert (=> b!1212717 (=> (not res!805475) (not e!688739))))

(assert (=> b!1212717 (= res!805475 (= (getValueByKey!643 (toList!8992 lt!551161) (_1!9996 (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (Some!693 (_2!9996 (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1212718 () Bool)

(declare-fun contains!7008 (List!26792 tuple2!19972) Bool)

(assert (=> b!1212718 (= e!688739 (contains!7008 (toList!8992 lt!551161) (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))

(assert (= (and d!133361 res!805476) b!1212717))

(assert (= (and b!1212717 res!805475) b!1212718))

(declare-fun m!1118093 () Bool)

(assert (=> d!133361 m!1118093))

(declare-fun m!1118095 () Bool)

(assert (=> d!133361 m!1118095))

(declare-fun m!1118097 () Bool)

(assert (=> d!133361 m!1118097))

(declare-fun m!1118099 () Bool)

(assert (=> d!133361 m!1118099))

(declare-fun m!1118101 () Bool)

(assert (=> b!1212717 m!1118101))

(declare-fun m!1118103 () Bool)

(assert (=> b!1212718 m!1118103))

(assert (=> b!1212590 d!133361))

(declare-fun d!133363 () Bool)

(assert (=> d!133363 (contains!7007 (+!4019 lt!551068 (tuple2!19973 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k0!934)))

(declare-fun lt!551167 () Unit!40132)

(declare-fun choose!1824 (ListLongMap!17953 (_ BitVec 64) V!46147 (_ BitVec 64)) Unit!40132)

(assert (=> d!133363 (= lt!551167 (choose!1824 lt!551068 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> d!133363 (contains!7007 lt!551068 k0!934)))

(assert (=> d!133363 (= (addStillContains!1078 lt!551068 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934) lt!551167)))

(declare-fun bs!34213 () Bool)

(assert (= bs!34213 d!133363))

(declare-fun m!1118105 () Bool)

(assert (=> bs!34213 m!1118105))

(assert (=> bs!34213 m!1118105))

(declare-fun m!1118107 () Bool)

(assert (=> bs!34213 m!1118107))

(declare-fun m!1118109 () Bool)

(assert (=> bs!34213 m!1118109))

(assert (=> bs!34213 m!1117973))

(assert (=> b!1212590 d!133363))

(declare-fun d!133365 () Bool)

(assert (=> d!133365 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1212582 d!133365))

(declare-fun d!133367 () Bool)

(declare-fun res!805481 () Bool)

(declare-fun e!688744 () Bool)

(assert (=> d!133367 (=> res!805481 e!688744)))

(assert (=> d!133367 (= res!805481 (= (select (arr!37776 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) k0!934))))

(assert (=> d!133367 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)) e!688744)))

(declare-fun b!1212724 () Bool)

(declare-fun e!688745 () Bool)

(assert (=> b!1212724 (= e!688744 e!688745)))

(declare-fun res!805482 () Bool)

(assert (=> b!1212724 (=> (not res!805482) (not e!688745))))

(assert (=> b!1212724 (= res!805482 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38313 _keys!1208)))))

(declare-fun b!1212725 () Bool)

(assert (=> b!1212725 (= e!688745 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(assert (= (and d!133367 (not res!805481)) b!1212724))

(assert (= (and b!1212724 res!805482) b!1212725))

(declare-fun m!1118111 () Bool)

(assert (=> d!133367 m!1118111))

(declare-fun m!1118113 () Bool)

(assert (=> b!1212725 m!1118113))

(assert (=> b!1212606 d!133367))

(declare-fun b!1212736 () Bool)

(declare-fun e!688757 () Bool)

(declare-fun e!688755 () Bool)

(assert (=> b!1212736 (= e!688757 e!688755)))

(declare-fun c!119681 () Bool)

(assert (=> b!1212736 (= c!119681 (validKeyInArray!0 (select (arr!37776 lt!551066) #b00000000000000000000000000000000)))))

(declare-fun d!133369 () Bool)

(declare-fun res!805490 () Bool)

(declare-fun e!688754 () Bool)

(assert (=> d!133369 (=> res!805490 e!688754)))

(assert (=> d!133369 (= res!805490 (bvsge #b00000000000000000000000000000000 (size!38313 lt!551066)))))

(assert (=> d!133369 (= (arrayNoDuplicates!0 lt!551066 #b00000000000000000000000000000000 Nil!26790) e!688754)))

(declare-fun b!1212737 () Bool)

(assert (=> b!1212737 (= e!688754 e!688757)))

(declare-fun res!805491 () Bool)

(assert (=> b!1212737 (=> (not res!805491) (not e!688757))))

(declare-fun e!688756 () Bool)

(assert (=> b!1212737 (= res!805491 (not e!688756))))

(declare-fun res!805489 () Bool)

(assert (=> b!1212737 (=> (not res!805489) (not e!688756))))

(assert (=> b!1212737 (= res!805489 (validKeyInArray!0 (select (arr!37776 lt!551066) #b00000000000000000000000000000000)))))

(declare-fun bm!60223 () Bool)

(declare-fun call!60226 () Bool)

(assert (=> bm!60223 (= call!60226 (arrayNoDuplicates!0 lt!551066 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!119681 (Cons!26789 (select (arr!37776 lt!551066) #b00000000000000000000000000000000) Nil!26790) Nil!26790)))))

(declare-fun b!1212738 () Bool)

(assert (=> b!1212738 (= e!688755 call!60226)))

(declare-fun b!1212739 () Bool)

(declare-fun contains!7009 (List!26793 (_ BitVec 64)) Bool)

(assert (=> b!1212739 (= e!688756 (contains!7009 Nil!26790 (select (arr!37776 lt!551066) #b00000000000000000000000000000000)))))

(declare-fun b!1212740 () Bool)

(assert (=> b!1212740 (= e!688755 call!60226)))

(assert (= (and d!133369 (not res!805490)) b!1212737))

(assert (= (and b!1212737 res!805489) b!1212739))

(assert (= (and b!1212737 res!805491) b!1212736))

(assert (= (and b!1212736 c!119681) b!1212740))

(assert (= (and b!1212736 (not c!119681)) b!1212738))

(assert (= (or b!1212740 b!1212738) bm!60223))

(declare-fun m!1118115 () Bool)

(assert (=> b!1212736 m!1118115))

(assert (=> b!1212736 m!1118115))

(declare-fun m!1118117 () Bool)

(assert (=> b!1212736 m!1118117))

(assert (=> b!1212737 m!1118115))

(assert (=> b!1212737 m!1118115))

(assert (=> b!1212737 m!1118117))

(assert (=> bm!60223 m!1118115))

(declare-fun m!1118119 () Bool)

(assert (=> bm!60223 m!1118119))

(assert (=> b!1212739 m!1118115))

(assert (=> b!1212739 m!1118115))

(declare-fun m!1118121 () Bool)

(assert (=> b!1212739 m!1118121))

(assert (=> b!1212607 d!133369))

(declare-fun d!133371 () Bool)

(declare-fun e!688763 () Bool)

(assert (=> d!133371 e!688763))

(declare-fun res!805494 () Bool)

(assert (=> d!133371 (=> (not res!805494) (not e!688763))))

(assert (=> d!133371 (= res!805494 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38313 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38313 _keys!1208))))))))

(declare-fun lt!551170 () Unit!40132)

(declare-fun choose!1825 (array!78288 array!78290 (_ BitVec 32) (_ BitVec 32) V!46147 V!46147 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40132)

(assert (=> d!133371 (= lt!551170 (choose!1825 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!133371 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38313 _keys!1208)))))

(assert (=> d!133371 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1094 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!551170)))

(declare-fun bm!60228 () Bool)

(declare-fun call!60232 () ListLongMap!17953)

(assert (=> bm!60228 (= call!60232 (getCurrentListMapNoExtraKeys!5397 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1212747 () Bool)

(declare-fun e!688762 () Bool)

(assert (=> b!1212747 (= e!688763 e!688762)))

(declare-fun c!119684 () Bool)

(assert (=> b!1212747 (= c!119684 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun b!1212748 () Bool)

(declare-fun call!60231 () ListLongMap!17953)

(assert (=> b!1212748 (= e!688762 (= call!60231 call!60232))))

(assert (=> b!1212748 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38314 _values!996)))))

(declare-fun b!1212749 () Bool)

(assert (=> b!1212749 (= e!688762 (= call!60231 (-!1888 call!60232 k0!934)))))

(assert (=> b!1212749 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38314 _values!996)))))

(declare-fun bm!60229 () Bool)

(assert (=> bm!60229 (= call!60231 (getCurrentListMapNoExtraKeys!5397 (array!78289 (store (arr!37776 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38313 _keys!1208)) (array!78291 (store (arr!37777 _values!996) i!673 (ValueCellFull!14673 (dynLambda!3309 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38314 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and d!133371 res!805494) b!1212747))

(assert (= (and b!1212747 c!119684) b!1212749))

(assert (= (and b!1212747 (not c!119684)) b!1212748))

(assert (= (or b!1212749 b!1212748) bm!60228))

(assert (= (or b!1212749 b!1212748) bm!60229))

(declare-fun b_lambda!21715 () Bool)

(assert (=> (not b_lambda!21715) (not bm!60229)))

(assert (=> bm!60229 t!39839))

(declare-fun b_and!43239 () Bool)

(assert (= b_and!43233 (and (=> t!39839 result!22325) b_and!43239)))

(declare-fun m!1118123 () Bool)

(assert (=> d!133371 m!1118123))

(assert (=> bm!60228 m!1117963))

(declare-fun m!1118125 () Bool)

(assert (=> b!1212749 m!1118125))

(assert (=> bm!60229 m!1117985))

(assert (=> bm!60229 m!1117997))

(declare-fun m!1118127 () Bool)

(assert (=> bm!60229 m!1118127))

(declare-fun m!1118129 () Bool)

(assert (=> bm!60229 m!1118129))

(assert (=> b!1212592 d!133371))

(declare-fun b!1212750 () Bool)

(declare-fun e!688767 () Bool)

(declare-fun e!688765 () Bool)

(assert (=> b!1212750 (= e!688767 e!688765)))

(declare-fun c!119685 () Bool)

(assert (=> b!1212750 (= c!119685 (validKeyInArray!0 (select (arr!37776 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!133373 () Bool)

(declare-fun res!805496 () Bool)

(declare-fun e!688764 () Bool)

(assert (=> d!133373 (=> res!805496 e!688764)))

(assert (=> d!133373 (= res!805496 (bvsge #b00000000000000000000000000000000 (size!38313 _keys!1208)))))

(assert (=> d!133373 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26790) e!688764)))

(declare-fun b!1212751 () Bool)

(assert (=> b!1212751 (= e!688764 e!688767)))

(declare-fun res!805497 () Bool)

(assert (=> b!1212751 (=> (not res!805497) (not e!688767))))

(declare-fun e!688766 () Bool)

(assert (=> b!1212751 (= res!805497 (not e!688766))))

(declare-fun res!805495 () Bool)

(assert (=> b!1212751 (=> (not res!805495) (not e!688766))))

(assert (=> b!1212751 (= res!805495 (validKeyInArray!0 (select (arr!37776 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun bm!60230 () Bool)

(declare-fun call!60233 () Bool)

(assert (=> bm!60230 (= call!60233 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!119685 (Cons!26789 (select (arr!37776 _keys!1208) #b00000000000000000000000000000000) Nil!26790) Nil!26790)))))

(declare-fun b!1212752 () Bool)

(assert (=> b!1212752 (= e!688765 call!60233)))

(declare-fun b!1212753 () Bool)

(assert (=> b!1212753 (= e!688766 (contains!7009 Nil!26790 (select (arr!37776 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1212754 () Bool)

(assert (=> b!1212754 (= e!688765 call!60233)))

(assert (= (and d!133373 (not res!805496)) b!1212751))

(assert (= (and b!1212751 res!805495) b!1212753))

(assert (= (and b!1212751 res!805497) b!1212750))

(assert (= (and b!1212750 c!119685) b!1212754))

(assert (= (and b!1212750 (not c!119685)) b!1212752))

(assert (= (or b!1212754 b!1212752) bm!60230))

(declare-fun m!1118131 () Bool)

(assert (=> b!1212750 m!1118131))

(assert (=> b!1212750 m!1118131))

(declare-fun m!1118133 () Bool)

(assert (=> b!1212750 m!1118133))

(assert (=> b!1212751 m!1118131))

(assert (=> b!1212751 m!1118131))

(assert (=> b!1212751 m!1118133))

(assert (=> bm!60230 m!1118131))

(declare-fun m!1118135 () Bool)

(assert (=> bm!60230 m!1118135))

(assert (=> b!1212753 m!1118131))

(assert (=> b!1212753 m!1118131))

(declare-fun m!1118137 () Bool)

(assert (=> b!1212753 m!1118137))

(assert (=> b!1212608 d!133373))

(declare-fun b!1212779 () Bool)

(declare-fun res!805506 () Bool)

(declare-fun e!688787 () Bool)

(assert (=> b!1212779 (=> (not res!805506) (not e!688787))))

(declare-fun lt!551187 () ListLongMap!17953)

(assert (=> b!1212779 (= res!805506 (not (contains!7007 lt!551187 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1212780 () Bool)

(declare-fun e!688784 () Bool)

(declare-fun e!688786 () Bool)

(assert (=> b!1212780 (= e!688784 e!688786)))

(assert (=> b!1212780 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38313 lt!551066)))))

(declare-fun res!805508 () Bool)

(assert (=> b!1212780 (= res!805508 (contains!7007 lt!551187 (select (arr!37776 lt!551066) from!1455)))))

(assert (=> b!1212780 (=> (not res!805508) (not e!688786))))

(declare-fun b!1212781 () Bool)

(declare-fun e!688785 () ListLongMap!17953)

(declare-fun e!688783 () ListLongMap!17953)

(assert (=> b!1212781 (= e!688785 e!688783)))

(declare-fun c!119694 () Bool)

(assert (=> b!1212781 (= c!119694 (validKeyInArray!0 (select (arr!37776 lt!551066) from!1455)))))

(declare-fun d!133375 () Bool)

(assert (=> d!133375 e!688787))

(declare-fun res!805509 () Bool)

(assert (=> d!133375 (=> (not res!805509) (not e!688787))))

(assert (=> d!133375 (= res!805509 (not (contains!7007 lt!551187 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133375 (= lt!551187 e!688785)))

(declare-fun c!119695 () Bool)

(assert (=> d!133375 (= c!119695 (bvsge from!1455 (size!38313 lt!551066)))))

(assert (=> d!133375 (validMask!0 mask!1564)))

(assert (=> d!133375 (= (getCurrentListMapNoExtraKeys!5397 lt!551066 lt!551057 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!551187)))

(declare-fun b!1212782 () Bool)

(declare-fun e!688788 () Bool)

(declare-fun isEmpty!996 (ListLongMap!17953) Bool)

(assert (=> b!1212782 (= e!688788 (isEmpty!996 lt!551187))))

(declare-fun b!1212783 () Bool)

(declare-fun call!60236 () ListLongMap!17953)

(assert (=> b!1212783 (= e!688783 call!60236)))

(declare-fun b!1212784 () Bool)

(assert (=> b!1212784 (= e!688788 (= lt!551187 (getCurrentListMapNoExtraKeys!5397 lt!551066 lt!551057 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1212785 () Bool)

(assert (=> b!1212785 (= e!688787 e!688784)))

(declare-fun c!119696 () Bool)

(declare-fun e!688782 () Bool)

(assert (=> b!1212785 (= c!119696 e!688782)))

(declare-fun res!805507 () Bool)

(assert (=> b!1212785 (=> (not res!805507) (not e!688782))))

(assert (=> b!1212785 (= res!805507 (bvslt from!1455 (size!38313 lt!551066)))))

(declare-fun b!1212786 () Bool)

(assert (=> b!1212786 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38313 lt!551066)))))

(assert (=> b!1212786 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38314 lt!551057)))))

(declare-fun apply!1004 (ListLongMap!17953 (_ BitVec 64)) V!46147)

(assert (=> b!1212786 (= e!688786 (= (apply!1004 lt!551187 (select (arr!37776 lt!551066) from!1455)) (get!19299 (select (arr!37777 lt!551057) from!1455) (dynLambda!3309 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1212787 () Bool)

(assert (=> b!1212787 (= e!688782 (validKeyInArray!0 (select (arr!37776 lt!551066) from!1455)))))

(assert (=> b!1212787 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1212788 () Bool)

(assert (=> b!1212788 (= e!688784 e!688788)))

(declare-fun c!119697 () Bool)

(assert (=> b!1212788 (= c!119697 (bvslt from!1455 (size!38313 lt!551066)))))

(declare-fun bm!60233 () Bool)

(assert (=> bm!60233 (= call!60236 (getCurrentListMapNoExtraKeys!5397 lt!551066 lt!551057 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1212789 () Bool)

(assert (=> b!1212789 (= e!688785 (ListLongMap!17954 Nil!26789))))

(declare-fun b!1212790 () Bool)

(declare-fun lt!551185 () Unit!40132)

(declare-fun lt!551191 () Unit!40132)

(assert (=> b!1212790 (= lt!551185 lt!551191)))

(declare-fun lt!551186 () (_ BitVec 64))

(declare-fun lt!551189 () (_ BitVec 64))

(declare-fun lt!551190 () ListLongMap!17953)

(declare-fun lt!551188 () V!46147)

(assert (=> b!1212790 (not (contains!7007 (+!4019 lt!551190 (tuple2!19973 lt!551189 lt!551188)) lt!551186))))

(declare-fun addStillNotContains!299 (ListLongMap!17953 (_ BitVec 64) V!46147 (_ BitVec 64)) Unit!40132)

(assert (=> b!1212790 (= lt!551191 (addStillNotContains!299 lt!551190 lt!551189 lt!551188 lt!551186))))

(assert (=> b!1212790 (= lt!551186 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1212790 (= lt!551188 (get!19299 (select (arr!37777 lt!551057) from!1455) (dynLambda!3309 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1212790 (= lt!551189 (select (arr!37776 lt!551066) from!1455))))

(assert (=> b!1212790 (= lt!551190 call!60236)))

(assert (=> b!1212790 (= e!688783 (+!4019 call!60236 (tuple2!19973 (select (arr!37776 lt!551066) from!1455) (get!19299 (select (arr!37777 lt!551057) from!1455) (dynLambda!3309 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!133375 c!119695) b!1212789))

(assert (= (and d!133375 (not c!119695)) b!1212781))

(assert (= (and b!1212781 c!119694) b!1212790))

(assert (= (and b!1212781 (not c!119694)) b!1212783))

(assert (= (or b!1212790 b!1212783) bm!60233))

(assert (= (and d!133375 res!805509) b!1212779))

(assert (= (and b!1212779 res!805506) b!1212785))

(assert (= (and b!1212785 res!805507) b!1212787))

(assert (= (and b!1212785 c!119696) b!1212780))

(assert (= (and b!1212785 (not c!119696)) b!1212788))

(assert (= (and b!1212780 res!805508) b!1212786))

(assert (= (and b!1212788 c!119697) b!1212784))

(assert (= (and b!1212788 (not c!119697)) b!1212782))

(declare-fun b_lambda!21717 () Bool)

(assert (=> (not b_lambda!21717) (not b!1212786)))

(assert (=> b!1212786 t!39839))

(declare-fun b_and!43241 () Bool)

(assert (= b_and!43239 (and (=> t!39839 result!22325) b_and!43241)))

(declare-fun b_lambda!21719 () Bool)

(assert (=> (not b_lambda!21719) (not b!1212790)))

(assert (=> b!1212790 t!39839))

(declare-fun b_and!43243 () Bool)

(assert (= b_and!43241 (and (=> t!39839 result!22325) b_and!43243)))

(declare-fun m!1118139 () Bool)

(assert (=> b!1212779 m!1118139))

(declare-fun m!1118141 () Bool)

(assert (=> b!1212781 m!1118141))

(assert (=> b!1212781 m!1118141))

(declare-fun m!1118143 () Bool)

(assert (=> b!1212781 m!1118143))

(assert (=> b!1212790 m!1117997))

(declare-fun m!1118145 () Bool)

(assert (=> b!1212790 m!1118145))

(declare-fun m!1118147 () Bool)

(assert (=> b!1212790 m!1118147))

(assert (=> b!1212790 m!1117997))

(declare-fun m!1118149 () Bool)

(assert (=> b!1212790 m!1118149))

(declare-fun m!1118151 () Bool)

(assert (=> b!1212790 m!1118151))

(declare-fun m!1118153 () Bool)

(assert (=> b!1212790 m!1118153))

(assert (=> b!1212790 m!1118147))

(assert (=> b!1212790 m!1118141))

(assert (=> b!1212790 m!1118153))

(declare-fun m!1118155 () Bool)

(assert (=> b!1212790 m!1118155))

(declare-fun m!1118157 () Bool)

(assert (=> d!133375 m!1118157))

(assert (=> d!133375 m!1117959))

(assert (=> b!1212786 m!1117997))

(assert (=> b!1212786 m!1118141))

(declare-fun m!1118159 () Bool)

(assert (=> b!1212786 m!1118159))

(assert (=> b!1212786 m!1118147))

(assert (=> b!1212786 m!1117997))

(assert (=> b!1212786 m!1118149))

(assert (=> b!1212786 m!1118141))

(assert (=> b!1212786 m!1118147))

(assert (=> b!1212780 m!1118141))

(assert (=> b!1212780 m!1118141))

(declare-fun m!1118161 () Bool)

(assert (=> b!1212780 m!1118161))

(assert (=> b!1212787 m!1118141))

(assert (=> b!1212787 m!1118141))

(assert (=> b!1212787 m!1118143))

(declare-fun m!1118163 () Bool)

(assert (=> b!1212782 m!1118163))

(declare-fun m!1118165 () Bool)

(assert (=> bm!60233 m!1118165))

(assert (=> b!1212784 m!1118165))

(assert (=> b!1212585 d!133375))

(declare-fun b!1212791 () Bool)

(declare-fun res!805510 () Bool)

(declare-fun e!688794 () Bool)

(assert (=> b!1212791 (=> (not res!805510) (not e!688794))))

(declare-fun lt!551194 () ListLongMap!17953)

(assert (=> b!1212791 (= res!805510 (not (contains!7007 lt!551194 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1212792 () Bool)

(declare-fun e!688791 () Bool)

(declare-fun e!688793 () Bool)

(assert (=> b!1212792 (= e!688791 e!688793)))

(assert (=> b!1212792 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38313 _keys!1208)))))

(declare-fun res!805512 () Bool)

(assert (=> b!1212792 (= res!805512 (contains!7007 lt!551194 (select (arr!37776 _keys!1208) from!1455)))))

(assert (=> b!1212792 (=> (not res!805512) (not e!688793))))

(declare-fun b!1212793 () Bool)

(declare-fun e!688792 () ListLongMap!17953)

(declare-fun e!688790 () ListLongMap!17953)

(assert (=> b!1212793 (= e!688792 e!688790)))

(declare-fun c!119698 () Bool)

(assert (=> b!1212793 (= c!119698 (validKeyInArray!0 (select (arr!37776 _keys!1208) from!1455)))))

(declare-fun d!133377 () Bool)

(assert (=> d!133377 e!688794))

(declare-fun res!805513 () Bool)

(assert (=> d!133377 (=> (not res!805513) (not e!688794))))

(assert (=> d!133377 (= res!805513 (not (contains!7007 lt!551194 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133377 (= lt!551194 e!688792)))

(declare-fun c!119699 () Bool)

(assert (=> d!133377 (= c!119699 (bvsge from!1455 (size!38313 _keys!1208)))))

(assert (=> d!133377 (validMask!0 mask!1564)))

(assert (=> d!133377 (= (getCurrentListMapNoExtraKeys!5397 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!551194)))

(declare-fun b!1212794 () Bool)

(declare-fun e!688795 () Bool)

(assert (=> b!1212794 (= e!688795 (isEmpty!996 lt!551194))))

(declare-fun b!1212795 () Bool)

(declare-fun call!60237 () ListLongMap!17953)

(assert (=> b!1212795 (= e!688790 call!60237)))

(declare-fun b!1212796 () Bool)

(assert (=> b!1212796 (= e!688795 (= lt!551194 (getCurrentListMapNoExtraKeys!5397 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1212797 () Bool)

(assert (=> b!1212797 (= e!688794 e!688791)))

(declare-fun c!119700 () Bool)

(declare-fun e!688789 () Bool)

(assert (=> b!1212797 (= c!119700 e!688789)))

(declare-fun res!805511 () Bool)

(assert (=> b!1212797 (=> (not res!805511) (not e!688789))))

(assert (=> b!1212797 (= res!805511 (bvslt from!1455 (size!38313 _keys!1208)))))

(declare-fun b!1212798 () Bool)

(assert (=> b!1212798 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38313 _keys!1208)))))

(assert (=> b!1212798 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38314 _values!996)))))

(assert (=> b!1212798 (= e!688793 (= (apply!1004 lt!551194 (select (arr!37776 _keys!1208) from!1455)) (get!19299 (select (arr!37777 _values!996) from!1455) (dynLambda!3309 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1212799 () Bool)

(assert (=> b!1212799 (= e!688789 (validKeyInArray!0 (select (arr!37776 _keys!1208) from!1455)))))

(assert (=> b!1212799 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1212800 () Bool)

(assert (=> b!1212800 (= e!688791 e!688795)))

(declare-fun c!119701 () Bool)

(assert (=> b!1212800 (= c!119701 (bvslt from!1455 (size!38313 _keys!1208)))))

(declare-fun bm!60234 () Bool)

(assert (=> bm!60234 (= call!60237 (getCurrentListMapNoExtraKeys!5397 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1212801 () Bool)

(assert (=> b!1212801 (= e!688792 (ListLongMap!17954 Nil!26789))))

(declare-fun b!1212802 () Bool)

(declare-fun lt!551192 () Unit!40132)

(declare-fun lt!551198 () Unit!40132)

(assert (=> b!1212802 (= lt!551192 lt!551198)))

(declare-fun lt!551196 () (_ BitVec 64))

(declare-fun lt!551193 () (_ BitVec 64))

(declare-fun lt!551197 () ListLongMap!17953)

(declare-fun lt!551195 () V!46147)

(assert (=> b!1212802 (not (contains!7007 (+!4019 lt!551197 (tuple2!19973 lt!551196 lt!551195)) lt!551193))))

(assert (=> b!1212802 (= lt!551198 (addStillNotContains!299 lt!551197 lt!551196 lt!551195 lt!551193))))

(assert (=> b!1212802 (= lt!551193 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1212802 (= lt!551195 (get!19299 (select (arr!37777 _values!996) from!1455) (dynLambda!3309 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1212802 (= lt!551196 (select (arr!37776 _keys!1208) from!1455))))

(assert (=> b!1212802 (= lt!551197 call!60237)))

(assert (=> b!1212802 (= e!688790 (+!4019 call!60237 (tuple2!19973 (select (arr!37776 _keys!1208) from!1455) (get!19299 (select (arr!37777 _values!996) from!1455) (dynLambda!3309 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!133377 c!119699) b!1212801))

(assert (= (and d!133377 (not c!119699)) b!1212793))

(assert (= (and b!1212793 c!119698) b!1212802))

(assert (= (and b!1212793 (not c!119698)) b!1212795))

(assert (= (or b!1212802 b!1212795) bm!60234))

(assert (= (and d!133377 res!805513) b!1212791))

(assert (= (and b!1212791 res!805510) b!1212797))

(assert (= (and b!1212797 res!805511) b!1212799))

(assert (= (and b!1212797 c!119700) b!1212792))

(assert (= (and b!1212797 (not c!119700)) b!1212800))

(assert (= (and b!1212792 res!805512) b!1212798))

(assert (= (and b!1212800 c!119701) b!1212796))

(assert (= (and b!1212800 (not c!119701)) b!1212794))

(declare-fun b_lambda!21721 () Bool)

(assert (=> (not b_lambda!21721) (not b!1212798)))

(assert (=> b!1212798 t!39839))

(declare-fun b_and!43245 () Bool)

(assert (= b_and!43243 (and (=> t!39839 result!22325) b_and!43245)))

(declare-fun b_lambda!21723 () Bool)

(assert (=> (not b_lambda!21723) (not b!1212802)))

(assert (=> b!1212802 t!39839))

(declare-fun b_and!43247 () Bool)

(assert (= b_and!43245 (and (=> t!39839 result!22325) b_and!43247)))

(declare-fun m!1118167 () Bool)

(assert (=> b!1212791 m!1118167))

(assert (=> b!1212793 m!1117933))

(assert (=> b!1212793 m!1117933))

(declare-fun m!1118169 () Bool)

(assert (=> b!1212793 m!1118169))

(assert (=> b!1212802 m!1117997))

(declare-fun m!1118171 () Bool)

(assert (=> b!1212802 m!1118171))

(assert (=> b!1212802 m!1117965))

(assert (=> b!1212802 m!1117997))

(declare-fun m!1118173 () Bool)

(assert (=> b!1212802 m!1118173))

(declare-fun m!1118175 () Bool)

(assert (=> b!1212802 m!1118175))

(declare-fun m!1118177 () Bool)

(assert (=> b!1212802 m!1118177))

(assert (=> b!1212802 m!1117965))

(assert (=> b!1212802 m!1117933))

(assert (=> b!1212802 m!1118177))

(declare-fun m!1118179 () Bool)

(assert (=> b!1212802 m!1118179))

(declare-fun m!1118181 () Bool)

(assert (=> d!133377 m!1118181))

(assert (=> d!133377 m!1117959))

(assert (=> b!1212798 m!1117997))

(assert (=> b!1212798 m!1117933))

(declare-fun m!1118183 () Bool)

(assert (=> b!1212798 m!1118183))

(assert (=> b!1212798 m!1117965))

(assert (=> b!1212798 m!1117997))

(assert (=> b!1212798 m!1118173))

(assert (=> b!1212798 m!1117933))

(assert (=> b!1212798 m!1117965))

(assert (=> b!1212792 m!1117933))

(assert (=> b!1212792 m!1117933))

(declare-fun m!1118185 () Bool)

(assert (=> b!1212792 m!1118185))

(assert (=> b!1212799 m!1117933))

(assert (=> b!1212799 m!1117933))

(assert (=> b!1212799 m!1118169))

(declare-fun m!1118187 () Bool)

(assert (=> b!1212794 m!1118187))

(declare-fun m!1118189 () Bool)

(assert (=> bm!60234 m!1118189))

(assert (=> b!1212796 m!1118189))

(assert (=> b!1212585 d!133377))

(declare-fun d!133379 () Bool)

(declare-fun e!688796 () Bool)

(assert (=> d!133379 e!688796))

(declare-fun res!805514 () Bool)

(assert (=> d!133379 (=> res!805514 e!688796)))

(declare-fun lt!551201 () Bool)

(assert (=> d!133379 (= res!805514 (not lt!551201))))

(declare-fun lt!551200 () Bool)

(assert (=> d!133379 (= lt!551201 lt!551200)))

(declare-fun lt!551202 () Unit!40132)

(declare-fun e!688797 () Unit!40132)

(assert (=> d!133379 (= lt!551202 e!688797)))

(declare-fun c!119702 () Bool)

(assert (=> d!133379 (= c!119702 lt!551200)))

(assert (=> d!133379 (= lt!551200 (containsKey!597 (toList!8992 (ite c!119654 lt!551061 call!60193)) k0!934))))

(assert (=> d!133379 (= (contains!7007 (ite c!119654 lt!551061 call!60193) k0!934) lt!551201)))

(declare-fun b!1212803 () Bool)

(declare-fun lt!551199 () Unit!40132)

(assert (=> b!1212803 (= e!688797 lt!551199)))

(assert (=> b!1212803 (= lt!551199 (lemmaContainsKeyImpliesGetValueByKeyDefined!426 (toList!8992 (ite c!119654 lt!551061 call!60193)) k0!934))))

(assert (=> b!1212803 (isDefined!466 (getValueByKey!643 (toList!8992 (ite c!119654 lt!551061 call!60193)) k0!934))))

(declare-fun b!1212804 () Bool)

(declare-fun Unit!40142 () Unit!40132)

(assert (=> b!1212804 (= e!688797 Unit!40142)))

(declare-fun b!1212805 () Bool)

(assert (=> b!1212805 (= e!688796 (isDefined!466 (getValueByKey!643 (toList!8992 (ite c!119654 lt!551061 call!60193)) k0!934)))))

(assert (= (and d!133379 c!119702) b!1212803))

(assert (= (and d!133379 (not c!119702)) b!1212804))

(assert (= (and d!133379 (not res!805514)) b!1212805))

(declare-fun m!1118191 () Bool)

(assert (=> d!133379 m!1118191))

(declare-fun m!1118193 () Bool)

(assert (=> b!1212803 m!1118193))

(declare-fun m!1118195 () Bool)

(assert (=> b!1212803 m!1118195))

(assert (=> b!1212803 m!1118195))

(declare-fun m!1118197 () Bool)

(assert (=> b!1212803 m!1118197))

(assert (=> b!1212805 m!1118195))

(assert (=> b!1212805 m!1118195))

(assert (=> b!1212805 m!1118197))

(assert (=> bm!60195 d!133379))

(declare-fun d!133381 () Bool)

(assert (=> d!133381 (contains!7007 (+!4019 (ite c!119654 lt!551061 lt!551068) (tuple2!19973 (ite c!119654 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!119655 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!119654 minValue!944 (ite c!119655 zeroValue!944 minValue!944)))) k0!934)))

(declare-fun lt!551203 () Unit!40132)

(assert (=> d!133381 (= lt!551203 (choose!1824 (ite c!119654 lt!551061 lt!551068) (ite c!119654 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!119655 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!119654 minValue!944 (ite c!119655 zeroValue!944 minValue!944)) k0!934))))

(assert (=> d!133381 (contains!7007 (ite c!119654 lt!551061 lt!551068) k0!934)))

(assert (=> d!133381 (= (addStillContains!1078 (ite c!119654 lt!551061 lt!551068) (ite c!119654 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!119655 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!119654 minValue!944 (ite c!119655 zeroValue!944 minValue!944)) k0!934) lt!551203)))

(declare-fun bs!34214 () Bool)

(assert (= bs!34214 d!133381))

(declare-fun m!1118199 () Bool)

(assert (=> bs!34214 m!1118199))

(assert (=> bs!34214 m!1118199))

(declare-fun m!1118201 () Bool)

(assert (=> bs!34214 m!1118201))

(declare-fun m!1118203 () Bool)

(assert (=> bs!34214 m!1118203))

(declare-fun m!1118205 () Bool)

(assert (=> bs!34214 m!1118205))

(assert (=> bm!60196 d!133381))

(declare-fun d!133383 () Bool)

(declare-fun e!688800 () Bool)

(assert (=> d!133383 e!688800))

(declare-fun c!119705 () Bool)

(assert (=> d!133383 (= c!119705 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!551206 () Unit!40132)

(declare-fun choose!1826 (array!78288 array!78290 (_ BitVec 32) (_ BitVec 32) V!46147 V!46147 (_ BitVec 64) (_ BitVec 32) Int) Unit!40132)

(assert (=> d!133383 (= lt!551206 (choose!1826 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!133383 (validMask!0 mask!1564)))

(assert (=> d!133383 (= (lemmaListMapContainsThenArrayContainsFrom!614 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!551206)))

(declare-fun b!1212810 () Bool)

(assert (=> b!1212810 (= e!688800 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1212811 () Bool)

(assert (=> b!1212811 (= e!688800 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!133383 c!119705) b!1212810))

(assert (= (and d!133383 (not c!119705)) b!1212811))

(declare-fun m!1118207 () Bool)

(assert (=> d!133383 m!1118207))

(assert (=> d!133383 m!1117959))

(assert (=> b!1212810 m!1117931))

(assert (=> b!1212595 d!133383))

(declare-fun d!133385 () Bool)

(assert (=> d!133385 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26790)))

(declare-fun lt!551209 () Unit!40132)

(declare-fun choose!39 (array!78288 (_ BitVec 32) (_ BitVec 32)) Unit!40132)

(assert (=> d!133385 (= lt!551209 (choose!39 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> d!133385 (bvslt (size!38313 _keys!1208) #b01111111111111111111111111111111)))

(assert (=> d!133385 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455) lt!551209)))

(declare-fun bs!34215 () Bool)

(assert (= bs!34215 d!133385))

(assert (=> bs!34215 m!1117951))

(declare-fun m!1118209 () Bool)

(assert (=> bs!34215 m!1118209))

(assert (=> b!1212595 d!133385))

(declare-fun b!1212812 () Bool)

(declare-fun e!688804 () Bool)

(declare-fun e!688802 () Bool)

(assert (=> b!1212812 (= e!688804 e!688802)))

(declare-fun c!119706 () Bool)

(assert (=> b!1212812 (= c!119706 (validKeyInArray!0 (select (arr!37776 _keys!1208) from!1455)))))

(declare-fun d!133387 () Bool)

(declare-fun res!805516 () Bool)

(declare-fun e!688801 () Bool)

(assert (=> d!133387 (=> res!805516 e!688801)))

(assert (=> d!133387 (= res!805516 (bvsge from!1455 (size!38313 _keys!1208)))))

(assert (=> d!133387 (= (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26790) e!688801)))

(declare-fun b!1212813 () Bool)

(assert (=> b!1212813 (= e!688801 e!688804)))

(declare-fun res!805517 () Bool)

(assert (=> b!1212813 (=> (not res!805517) (not e!688804))))

(declare-fun e!688803 () Bool)

(assert (=> b!1212813 (= res!805517 (not e!688803))))

(declare-fun res!805515 () Bool)

(assert (=> b!1212813 (=> (not res!805515) (not e!688803))))

(assert (=> b!1212813 (= res!805515 (validKeyInArray!0 (select (arr!37776 _keys!1208) from!1455)))))

(declare-fun bm!60235 () Bool)

(declare-fun call!60238 () Bool)

(assert (=> bm!60235 (= call!60238 (arrayNoDuplicates!0 _keys!1208 (bvadd from!1455 #b00000000000000000000000000000001) (ite c!119706 (Cons!26789 (select (arr!37776 _keys!1208) from!1455) Nil!26790) Nil!26790)))))

(declare-fun b!1212814 () Bool)

(assert (=> b!1212814 (= e!688802 call!60238)))

(declare-fun b!1212815 () Bool)

(assert (=> b!1212815 (= e!688803 (contains!7009 Nil!26790 (select (arr!37776 _keys!1208) from!1455)))))

(declare-fun b!1212816 () Bool)

(assert (=> b!1212816 (= e!688802 call!60238)))

(assert (= (and d!133387 (not res!805516)) b!1212813))

(assert (= (and b!1212813 res!805515) b!1212815))

(assert (= (and b!1212813 res!805517) b!1212812))

(assert (= (and b!1212812 c!119706) b!1212816))

(assert (= (and b!1212812 (not c!119706)) b!1212814))

(assert (= (or b!1212816 b!1212814) bm!60235))

(assert (=> b!1212812 m!1117933))

(assert (=> b!1212812 m!1117933))

(assert (=> b!1212812 m!1118169))

(assert (=> b!1212813 m!1117933))

(assert (=> b!1212813 m!1117933))

(assert (=> b!1212813 m!1118169))

(assert (=> bm!60235 m!1117933))

(declare-fun m!1118211 () Bool)

(assert (=> bm!60235 m!1118211))

(assert (=> b!1212815 m!1117933))

(assert (=> b!1212815 m!1117933))

(declare-fun m!1118213 () Bool)

(assert (=> b!1212815 m!1118213))

(assert (=> b!1212595 d!133387))

(declare-fun d!133389 () Bool)

(assert (=> d!133389 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38313 _keys!1208)) (not (= (select (arr!37776 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!551212 () Unit!40132)

(declare-fun choose!21 (array!78288 (_ BitVec 64) (_ BitVec 32) List!26793) Unit!40132)

(assert (=> d!133389 (= lt!551212 (choose!21 _keys!1208 k0!934 from!1455 Nil!26790))))

(assert (=> d!133389 (bvslt (size!38313 _keys!1208) #b01111111111111111111111111111111)))

(assert (=> d!133389 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26790) lt!551212)))

(declare-fun bs!34216 () Bool)

(assert (= bs!34216 d!133389))

(assert (=> bs!34216 m!1117933))

(declare-fun m!1118215 () Bool)

(assert (=> bs!34216 m!1118215))

(assert (=> b!1212595 d!133389))

(declare-fun d!133391 () Bool)

(assert (=> d!133391 (= (array_inv!28672 _keys!1208) (bvsge (size!38313 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!101136 d!133391))

(declare-fun d!133393 () Bool)

(assert (=> d!133393 (= (array_inv!28673 _values!996) (bvsge (size!38314 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!101136 d!133393))

(declare-fun b!1212825 () Bool)

(declare-fun e!688811 () Bool)

(declare-fun call!60241 () Bool)

(assert (=> b!1212825 (= e!688811 call!60241)))

(declare-fun bm!60238 () Bool)

(assert (=> bm!60238 (= call!60241 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!551066 mask!1564))))

(declare-fun b!1212826 () Bool)

(declare-fun e!688813 () Bool)

(assert (=> b!1212826 (= e!688813 e!688811)))

(declare-fun c!119709 () Bool)

(assert (=> b!1212826 (= c!119709 (validKeyInArray!0 (select (arr!37776 lt!551066) #b00000000000000000000000000000000)))))

(declare-fun d!133395 () Bool)

(declare-fun res!805523 () Bool)

(assert (=> d!133395 (=> res!805523 e!688813)))

(assert (=> d!133395 (= res!805523 (bvsge #b00000000000000000000000000000000 (size!38313 lt!551066)))))

(assert (=> d!133395 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!551066 mask!1564) e!688813)))

(declare-fun b!1212827 () Bool)

(declare-fun e!688812 () Bool)

(assert (=> b!1212827 (= e!688811 e!688812)))

(declare-fun lt!551220 () (_ BitVec 64))

(assert (=> b!1212827 (= lt!551220 (select (arr!37776 lt!551066) #b00000000000000000000000000000000))))

(declare-fun lt!551219 () Unit!40132)

(assert (=> b!1212827 (= lt!551219 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!551066 lt!551220 #b00000000000000000000000000000000))))

(assert (=> b!1212827 (arrayContainsKey!0 lt!551066 lt!551220 #b00000000000000000000000000000000)))

(declare-fun lt!551221 () Unit!40132)

(assert (=> b!1212827 (= lt!551221 lt!551219)))

(declare-fun res!805522 () Bool)

(declare-datatypes ((SeekEntryResult!9939 0))(
  ( (MissingZero!9939 (index!42126 (_ BitVec 32))) (Found!9939 (index!42127 (_ BitVec 32))) (Intermediate!9939 (undefined!10751 Bool) (index!42128 (_ BitVec 32)) (x!106848 (_ BitVec 32))) (Undefined!9939) (MissingVacant!9939 (index!42129 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!78288 (_ BitVec 32)) SeekEntryResult!9939)

(assert (=> b!1212827 (= res!805522 (= (seekEntryOrOpen!0 (select (arr!37776 lt!551066) #b00000000000000000000000000000000) lt!551066 mask!1564) (Found!9939 #b00000000000000000000000000000000)))))

(assert (=> b!1212827 (=> (not res!805522) (not e!688812))))

(declare-fun b!1212828 () Bool)

(assert (=> b!1212828 (= e!688812 call!60241)))

(assert (= (and d!133395 (not res!805523)) b!1212826))

(assert (= (and b!1212826 c!119709) b!1212827))

(assert (= (and b!1212826 (not c!119709)) b!1212825))

(assert (= (and b!1212827 res!805522) b!1212828))

(assert (= (or b!1212828 b!1212825) bm!60238))

(declare-fun m!1118217 () Bool)

(assert (=> bm!60238 m!1118217))

(assert (=> b!1212826 m!1118115))

(assert (=> b!1212826 m!1118115))

(assert (=> b!1212826 m!1118117))

(assert (=> b!1212827 m!1118115))

(declare-fun m!1118219 () Bool)

(assert (=> b!1212827 m!1118219))

(declare-fun m!1118221 () Bool)

(assert (=> b!1212827 m!1118221))

(assert (=> b!1212827 m!1118115))

(declare-fun m!1118223 () Bool)

(assert (=> b!1212827 m!1118223))

(assert (=> b!1212602 d!133395))

(declare-fun b!1212829 () Bool)

(declare-fun e!688814 () Bool)

(declare-fun call!60242 () Bool)

(assert (=> b!1212829 (= e!688814 call!60242)))

(declare-fun bm!60239 () Bool)

(assert (=> bm!60239 (= call!60242 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1212830 () Bool)

(declare-fun e!688816 () Bool)

(assert (=> b!1212830 (= e!688816 e!688814)))

(declare-fun c!119710 () Bool)

(assert (=> b!1212830 (= c!119710 (validKeyInArray!0 (select (arr!37776 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!133397 () Bool)

(declare-fun res!805525 () Bool)

(assert (=> d!133397 (=> res!805525 e!688816)))

(assert (=> d!133397 (= res!805525 (bvsge #b00000000000000000000000000000000 (size!38313 _keys!1208)))))

(assert (=> d!133397 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!688816)))

(declare-fun b!1212831 () Bool)

(declare-fun e!688815 () Bool)

(assert (=> b!1212831 (= e!688814 e!688815)))

(declare-fun lt!551223 () (_ BitVec 64))

(assert (=> b!1212831 (= lt!551223 (select (arr!37776 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!551222 () Unit!40132)

(assert (=> b!1212831 (= lt!551222 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!551223 #b00000000000000000000000000000000))))

(assert (=> b!1212831 (arrayContainsKey!0 _keys!1208 lt!551223 #b00000000000000000000000000000000)))

(declare-fun lt!551224 () Unit!40132)

(assert (=> b!1212831 (= lt!551224 lt!551222)))

(declare-fun res!805524 () Bool)

(assert (=> b!1212831 (= res!805524 (= (seekEntryOrOpen!0 (select (arr!37776 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9939 #b00000000000000000000000000000000)))))

(assert (=> b!1212831 (=> (not res!805524) (not e!688815))))

(declare-fun b!1212832 () Bool)

(assert (=> b!1212832 (= e!688815 call!60242)))

(assert (= (and d!133397 (not res!805525)) b!1212830))

(assert (= (and b!1212830 c!119710) b!1212831))

(assert (= (and b!1212830 (not c!119710)) b!1212829))

(assert (= (and b!1212831 res!805524) b!1212832))

(assert (= (or b!1212832 b!1212829) bm!60239))

(declare-fun m!1118225 () Bool)

(assert (=> bm!60239 m!1118225))

(assert (=> b!1212830 m!1118131))

(assert (=> b!1212830 m!1118131))

(assert (=> b!1212830 m!1118133))

(assert (=> b!1212831 m!1118131))

(declare-fun m!1118227 () Bool)

(assert (=> b!1212831 m!1118227))

(declare-fun m!1118229 () Bool)

(assert (=> b!1212831 m!1118229))

(assert (=> b!1212831 m!1118131))

(declare-fun m!1118231 () Bool)

(assert (=> b!1212831 m!1118231))

(assert (=> b!1212596 d!133397))

(declare-fun d!133399 () Bool)

(declare-fun lt!551227 () ListLongMap!17953)

(assert (=> d!133399 (not (contains!7007 lt!551227 k0!934))))

(declare-fun removeStrictlySorted!103 (List!26792 (_ BitVec 64)) List!26792)

(assert (=> d!133399 (= lt!551227 (ListLongMap!17954 (removeStrictlySorted!103 (toList!8992 call!60198) k0!934)))))

(assert (=> d!133399 (= (-!1888 call!60198 k0!934) lt!551227)))

(declare-fun bs!34217 () Bool)

(assert (= bs!34217 d!133399))

(declare-fun m!1118233 () Bool)

(assert (=> bs!34217 m!1118233))

(declare-fun m!1118235 () Bool)

(assert (=> bs!34217 m!1118235))

(assert (=> b!1212587 d!133399))

(declare-fun d!133401 () Bool)

(declare-fun e!688817 () Bool)

(assert (=> d!133401 e!688817))

(declare-fun res!805527 () Bool)

(assert (=> d!133401 (=> (not res!805527) (not e!688817))))

(declare-fun lt!551228 () ListLongMap!17953)

(assert (=> d!133401 (= res!805527 (contains!7007 lt!551228 (_1!9996 (ite (or c!119654 c!119655) (tuple2!19973 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun lt!551229 () List!26792)

(assert (=> d!133401 (= lt!551228 (ListLongMap!17954 lt!551229))))

(declare-fun lt!551230 () Unit!40132)

(declare-fun lt!551231 () Unit!40132)

(assert (=> d!133401 (= lt!551230 lt!551231)))

(assert (=> d!133401 (= (getValueByKey!643 lt!551229 (_1!9996 (ite (or c!119654 c!119655) (tuple2!19973 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (Some!693 (_2!9996 (ite (or c!119654 c!119655) (tuple2!19973 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!133401 (= lt!551231 (lemmaContainsTupThenGetReturnValue!318 lt!551229 (_1!9996 (ite (or c!119654 c!119655) (tuple2!19973 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9996 (ite (or c!119654 c!119655) (tuple2!19973 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!133401 (= lt!551229 (insertStrictlySorted!410 (toList!8992 lt!551068) (_1!9996 (ite (or c!119654 c!119655) (tuple2!19973 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9996 (ite (or c!119654 c!119655) (tuple2!19973 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!133401 (= (+!4019 lt!551068 (ite (or c!119654 c!119655) (tuple2!19973 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) lt!551228)))

(declare-fun b!1212833 () Bool)

(declare-fun res!805526 () Bool)

(assert (=> b!1212833 (=> (not res!805526) (not e!688817))))

(assert (=> b!1212833 (= res!805526 (= (getValueByKey!643 (toList!8992 lt!551228) (_1!9996 (ite (or c!119654 c!119655) (tuple2!19973 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (Some!693 (_2!9996 (ite (or c!119654 c!119655) (tuple2!19973 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun b!1212834 () Bool)

(assert (=> b!1212834 (= e!688817 (contains!7008 (toList!8992 lt!551228) (ite (or c!119654 c!119655) (tuple2!19973 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19973 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (= (and d!133401 res!805527) b!1212833))

(assert (= (and b!1212833 res!805526) b!1212834))

(declare-fun m!1118237 () Bool)

(assert (=> d!133401 m!1118237))

(declare-fun m!1118239 () Bool)

(assert (=> d!133401 m!1118239))

(declare-fun m!1118241 () Bool)

(assert (=> d!133401 m!1118241))

(declare-fun m!1118243 () Bool)

(assert (=> d!133401 m!1118243))

(declare-fun m!1118245 () Bool)

(assert (=> b!1212833 m!1118245))

(declare-fun m!1118247 () Bool)

(assert (=> b!1212834 m!1118247))

(assert (=> bm!60192 d!133401))

(assert (=> b!1212603 d!133367))

(declare-fun b!1212835 () Bool)

(declare-fun res!805528 () Bool)

(declare-fun e!688823 () Bool)

(assert (=> b!1212835 (=> (not res!805528) (not e!688823))))

(declare-fun lt!551234 () ListLongMap!17953)

(assert (=> b!1212835 (= res!805528 (not (contains!7007 lt!551234 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1212836 () Bool)

(declare-fun e!688820 () Bool)

(declare-fun e!688822 () Bool)

(assert (=> b!1212836 (= e!688820 e!688822)))

(assert (=> b!1212836 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38313 lt!551066)))))

(declare-fun res!805530 () Bool)

(assert (=> b!1212836 (= res!805530 (contains!7007 lt!551234 (select (arr!37776 lt!551066) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1212836 (=> (not res!805530) (not e!688822))))

(declare-fun b!1212837 () Bool)

(declare-fun e!688821 () ListLongMap!17953)

(declare-fun e!688819 () ListLongMap!17953)

(assert (=> b!1212837 (= e!688821 e!688819)))

(declare-fun c!119711 () Bool)

(assert (=> b!1212837 (= c!119711 (validKeyInArray!0 (select (arr!37776 lt!551066) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun d!133403 () Bool)

(assert (=> d!133403 e!688823))

(declare-fun res!805531 () Bool)

(assert (=> d!133403 (=> (not res!805531) (not e!688823))))

(assert (=> d!133403 (= res!805531 (not (contains!7007 lt!551234 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133403 (= lt!551234 e!688821)))

(declare-fun c!119712 () Bool)

(assert (=> d!133403 (= c!119712 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38313 lt!551066)))))

(assert (=> d!133403 (validMask!0 mask!1564)))

(assert (=> d!133403 (= (getCurrentListMapNoExtraKeys!5397 lt!551066 lt!551057 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!551234)))

(declare-fun b!1212838 () Bool)

(declare-fun e!688824 () Bool)

(assert (=> b!1212838 (= e!688824 (isEmpty!996 lt!551234))))

(declare-fun b!1212839 () Bool)

(declare-fun call!60243 () ListLongMap!17953)

(assert (=> b!1212839 (= e!688819 call!60243)))

(declare-fun b!1212840 () Bool)

(assert (=> b!1212840 (= e!688824 (= lt!551234 (getCurrentListMapNoExtraKeys!5397 lt!551066 lt!551057 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1212841 () Bool)

(assert (=> b!1212841 (= e!688823 e!688820)))

(declare-fun c!119713 () Bool)

(declare-fun e!688818 () Bool)

(assert (=> b!1212841 (= c!119713 e!688818)))

(declare-fun res!805529 () Bool)

(assert (=> b!1212841 (=> (not res!805529) (not e!688818))))

(assert (=> b!1212841 (= res!805529 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38313 lt!551066)))))

(declare-fun b!1212842 () Bool)

(assert (=> b!1212842 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38313 lt!551066)))))

(assert (=> b!1212842 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38314 lt!551057)))))

(assert (=> b!1212842 (= e!688822 (= (apply!1004 lt!551234 (select (arr!37776 lt!551066) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19299 (select (arr!37777 lt!551057) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3309 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1212843 () Bool)

(assert (=> b!1212843 (= e!688818 (validKeyInArray!0 (select (arr!37776 lt!551066) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1212843 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1212844 () Bool)

(assert (=> b!1212844 (= e!688820 e!688824)))

(declare-fun c!119714 () Bool)

(assert (=> b!1212844 (= c!119714 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38313 lt!551066)))))

(declare-fun bm!60240 () Bool)

(assert (=> bm!60240 (= call!60243 (getCurrentListMapNoExtraKeys!5397 lt!551066 lt!551057 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1212845 () Bool)

(assert (=> b!1212845 (= e!688821 (ListLongMap!17954 Nil!26789))))

(declare-fun b!1212846 () Bool)

(declare-fun lt!551232 () Unit!40132)

(declare-fun lt!551238 () Unit!40132)

(assert (=> b!1212846 (= lt!551232 lt!551238)))

(declare-fun lt!551235 () V!46147)

(declare-fun lt!551237 () ListLongMap!17953)

(declare-fun lt!551233 () (_ BitVec 64))

(declare-fun lt!551236 () (_ BitVec 64))

(assert (=> b!1212846 (not (contains!7007 (+!4019 lt!551237 (tuple2!19973 lt!551236 lt!551235)) lt!551233))))

(assert (=> b!1212846 (= lt!551238 (addStillNotContains!299 lt!551237 lt!551236 lt!551235 lt!551233))))

(assert (=> b!1212846 (= lt!551233 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1212846 (= lt!551235 (get!19299 (select (arr!37777 lt!551057) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3309 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1212846 (= lt!551236 (select (arr!37776 lt!551066) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1212846 (= lt!551237 call!60243)))

(assert (=> b!1212846 (= e!688819 (+!4019 call!60243 (tuple2!19973 (select (arr!37776 lt!551066) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19299 (select (arr!37777 lt!551057) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3309 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!133403 c!119712) b!1212845))

(assert (= (and d!133403 (not c!119712)) b!1212837))

(assert (= (and b!1212837 c!119711) b!1212846))

(assert (= (and b!1212837 (not c!119711)) b!1212839))

(assert (= (or b!1212846 b!1212839) bm!60240))

(assert (= (and d!133403 res!805531) b!1212835))

(assert (= (and b!1212835 res!805528) b!1212841))

(assert (= (and b!1212841 res!805529) b!1212843))

(assert (= (and b!1212841 c!119713) b!1212836))

(assert (= (and b!1212841 (not c!119713)) b!1212844))

(assert (= (and b!1212836 res!805530) b!1212842))

(assert (= (and b!1212844 c!119714) b!1212840))

(assert (= (and b!1212844 (not c!119714)) b!1212838))

(declare-fun b_lambda!21725 () Bool)

(assert (=> (not b_lambda!21725) (not b!1212842)))

(assert (=> b!1212842 t!39839))

(declare-fun b_and!43249 () Bool)

(assert (= b_and!43247 (and (=> t!39839 result!22325) b_and!43249)))

(declare-fun b_lambda!21727 () Bool)

(assert (=> (not b_lambda!21727) (not b!1212846)))

(assert (=> b!1212846 t!39839))

(declare-fun b_and!43251 () Bool)

(assert (= b_and!43249 (and (=> t!39839 result!22325) b_and!43251)))

(declare-fun m!1118249 () Bool)

(assert (=> b!1212835 m!1118249))

(declare-fun m!1118251 () Bool)

(assert (=> b!1212837 m!1118251))

(assert (=> b!1212837 m!1118251))

(declare-fun m!1118253 () Bool)

(assert (=> b!1212837 m!1118253))

(assert (=> b!1212846 m!1117997))

(declare-fun m!1118255 () Bool)

(assert (=> b!1212846 m!1118255))

(declare-fun m!1118257 () Bool)

(assert (=> b!1212846 m!1118257))

(assert (=> b!1212846 m!1117997))

(declare-fun m!1118259 () Bool)

(assert (=> b!1212846 m!1118259))

(declare-fun m!1118261 () Bool)

(assert (=> b!1212846 m!1118261))

(declare-fun m!1118263 () Bool)

(assert (=> b!1212846 m!1118263))

(assert (=> b!1212846 m!1118257))

(assert (=> b!1212846 m!1118251))

(assert (=> b!1212846 m!1118263))

(declare-fun m!1118265 () Bool)

(assert (=> b!1212846 m!1118265))

(declare-fun m!1118267 () Bool)

(assert (=> d!133403 m!1118267))

(assert (=> d!133403 m!1117959))

(assert (=> b!1212842 m!1117997))

(assert (=> b!1212842 m!1118251))

(declare-fun m!1118269 () Bool)

(assert (=> b!1212842 m!1118269))

(assert (=> b!1212842 m!1118257))

(assert (=> b!1212842 m!1117997))

(assert (=> b!1212842 m!1118259))

(assert (=> b!1212842 m!1118251))

(assert (=> b!1212842 m!1118257))

(assert (=> b!1212836 m!1118251))

(assert (=> b!1212836 m!1118251))

(declare-fun m!1118271 () Bool)

(assert (=> b!1212836 m!1118271))

(assert (=> b!1212843 m!1118251))

(assert (=> b!1212843 m!1118251))

(assert (=> b!1212843 m!1118253))

(declare-fun m!1118273 () Bool)

(assert (=> b!1212838 m!1118273))

(declare-fun m!1118275 () Bool)

(assert (=> bm!60240 m!1118275))

(assert (=> b!1212840 m!1118275))

(assert (=> bm!60189 d!133403))

(declare-fun d!133405 () Bool)

(declare-fun e!688825 () Bool)

(assert (=> d!133405 e!688825))

(declare-fun res!805532 () Bool)

(assert (=> d!133405 (=> res!805532 e!688825)))

(declare-fun lt!551241 () Bool)

(assert (=> d!133405 (= res!805532 (not lt!551241))))

(declare-fun lt!551240 () Bool)

(assert (=> d!133405 (= lt!551241 lt!551240)))

(declare-fun lt!551242 () Unit!40132)

(declare-fun e!688826 () Unit!40132)

(assert (=> d!133405 (= lt!551242 e!688826)))

(declare-fun c!119715 () Bool)

(assert (=> d!133405 (= c!119715 lt!551240)))

(assert (=> d!133405 (= lt!551240 (containsKey!597 (toList!8992 lt!551068) k0!934))))

(assert (=> d!133405 (= (contains!7007 lt!551068 k0!934) lt!551241)))

(declare-fun b!1212847 () Bool)

(declare-fun lt!551239 () Unit!40132)

(assert (=> b!1212847 (= e!688826 lt!551239)))

(assert (=> b!1212847 (= lt!551239 (lemmaContainsKeyImpliesGetValueByKeyDefined!426 (toList!8992 lt!551068) k0!934))))

(assert (=> b!1212847 (isDefined!466 (getValueByKey!643 (toList!8992 lt!551068) k0!934))))

(declare-fun b!1212848 () Bool)

(declare-fun Unit!40143 () Unit!40132)

(assert (=> b!1212848 (= e!688826 Unit!40143)))

(declare-fun b!1212849 () Bool)

(assert (=> b!1212849 (= e!688825 (isDefined!466 (getValueByKey!643 (toList!8992 lt!551068) k0!934)))))

(assert (= (and d!133405 c!119715) b!1212847))

(assert (= (and d!133405 (not c!119715)) b!1212848))

(assert (= (and d!133405 (not res!805532)) b!1212849))

(declare-fun m!1118277 () Bool)

(assert (=> d!133405 m!1118277))

(declare-fun m!1118279 () Bool)

(assert (=> b!1212847 m!1118279))

(declare-fun m!1118281 () Bool)

(assert (=> b!1212847 m!1118281))

(assert (=> b!1212847 m!1118281))

(declare-fun m!1118283 () Bool)

(assert (=> b!1212847 m!1118283))

(assert (=> b!1212849 m!1118281))

(assert (=> b!1212849 m!1118281))

(assert (=> b!1212849 m!1118283))

(assert (=> b!1212604 d!133405))

(declare-fun d!133407 () Bool)

(assert (=> d!133407 (= (-!1888 (+!4019 lt!551068 (tuple2!19973 (select (arr!37776 _keys!1208) from!1455) lt!551074)) (select (arr!37776 _keys!1208) from!1455)) lt!551068)))

(declare-fun lt!551245 () Unit!40132)

(declare-fun choose!1827 (ListLongMap!17953 (_ BitVec 64) V!46147) Unit!40132)

(assert (=> d!133407 (= lt!551245 (choose!1827 lt!551068 (select (arr!37776 _keys!1208) from!1455) lt!551074))))

(assert (=> d!133407 (not (contains!7007 lt!551068 (select (arr!37776 _keys!1208) from!1455)))))

(assert (=> d!133407 (= (addThenRemoveForNewKeyIsSame!289 lt!551068 (select (arr!37776 _keys!1208) from!1455) lt!551074) lt!551245)))

(declare-fun bs!34218 () Bool)

(assert (= bs!34218 d!133407))

(assert (=> bs!34218 m!1117967))

(assert (=> bs!34218 m!1117967))

(assert (=> bs!34218 m!1117933))

(assert (=> bs!34218 m!1117975))

(assert (=> bs!34218 m!1117933))

(declare-fun m!1118285 () Bool)

(assert (=> bs!34218 m!1118285))

(assert (=> bs!34218 m!1117933))

(declare-fun m!1118287 () Bool)

(assert (=> bs!34218 m!1118287))

(assert (=> b!1212604 d!133407))

(declare-fun d!133409 () Bool)

(declare-fun c!119718 () Bool)

(assert (=> d!133409 (= c!119718 ((_ is ValueCellFull!14673) (select (arr!37777 _values!996) from!1455)))))

(declare-fun e!688829 () V!46147)

(assert (=> d!133409 (= (get!19299 (select (arr!37777 _values!996) from!1455) lt!551073) e!688829)))

(declare-fun b!1212854 () Bool)

(declare-fun get!19300 (ValueCell!14673 V!46147) V!46147)

(assert (=> b!1212854 (= e!688829 (get!19300 (select (arr!37777 _values!996) from!1455) lt!551073))))

(declare-fun b!1212855 () Bool)

(declare-fun get!19301 (ValueCell!14673 V!46147) V!46147)

(assert (=> b!1212855 (= e!688829 (get!19301 (select (arr!37777 _values!996) from!1455) lt!551073))))

(assert (= (and d!133409 c!119718) b!1212854))

(assert (= (and d!133409 (not c!119718)) b!1212855))

(assert (=> b!1212854 m!1117965))

(declare-fun m!1118289 () Bool)

(assert (=> b!1212854 m!1118289))

(assert (=> b!1212855 m!1117965))

(declare-fun m!1118291 () Bool)

(assert (=> b!1212855 m!1118291))

(assert (=> b!1212604 d!133409))

(declare-fun d!133411 () Bool)

(declare-fun lt!551246 () ListLongMap!17953)

(assert (=> d!133411 (not (contains!7007 lt!551246 k0!934))))

(assert (=> d!133411 (= lt!551246 (ListLongMap!17954 (removeStrictlySorted!103 (toList!8992 lt!551053) k0!934)))))

(assert (=> d!133411 (= (-!1888 lt!551053 k0!934) lt!551246)))

(declare-fun bs!34219 () Bool)

(assert (= bs!34219 d!133411))

(declare-fun m!1118293 () Bool)

(assert (=> bs!34219 m!1118293))

(declare-fun m!1118295 () Bool)

(assert (=> bs!34219 m!1118295))

(assert (=> b!1212604 d!133411))

(declare-fun d!133413 () Bool)

(declare-fun e!688830 () Bool)

(assert (=> d!133413 e!688830))

(declare-fun res!805534 () Bool)

(assert (=> d!133413 (=> (not res!805534) (not e!688830))))

(declare-fun lt!551247 () ListLongMap!17953)

(assert (=> d!133413 (= res!805534 (contains!7007 lt!551247 (_1!9996 (tuple2!19973 (select (arr!37776 _keys!1208) from!1455) lt!551074))))))

(declare-fun lt!551248 () List!26792)

(assert (=> d!133413 (= lt!551247 (ListLongMap!17954 lt!551248))))

(declare-fun lt!551249 () Unit!40132)

(declare-fun lt!551250 () Unit!40132)

(assert (=> d!133413 (= lt!551249 lt!551250)))

(assert (=> d!133413 (= (getValueByKey!643 lt!551248 (_1!9996 (tuple2!19973 (select (arr!37776 _keys!1208) from!1455) lt!551074))) (Some!693 (_2!9996 (tuple2!19973 (select (arr!37776 _keys!1208) from!1455) lt!551074))))))

(assert (=> d!133413 (= lt!551250 (lemmaContainsTupThenGetReturnValue!318 lt!551248 (_1!9996 (tuple2!19973 (select (arr!37776 _keys!1208) from!1455) lt!551074)) (_2!9996 (tuple2!19973 (select (arr!37776 _keys!1208) from!1455) lt!551074))))))

(assert (=> d!133413 (= lt!551248 (insertStrictlySorted!410 (toList!8992 lt!551068) (_1!9996 (tuple2!19973 (select (arr!37776 _keys!1208) from!1455) lt!551074)) (_2!9996 (tuple2!19973 (select (arr!37776 _keys!1208) from!1455) lt!551074))))))

(assert (=> d!133413 (= (+!4019 lt!551068 (tuple2!19973 (select (arr!37776 _keys!1208) from!1455) lt!551074)) lt!551247)))

(declare-fun b!1212856 () Bool)

(declare-fun res!805533 () Bool)

(assert (=> b!1212856 (=> (not res!805533) (not e!688830))))

(assert (=> b!1212856 (= res!805533 (= (getValueByKey!643 (toList!8992 lt!551247) (_1!9996 (tuple2!19973 (select (arr!37776 _keys!1208) from!1455) lt!551074))) (Some!693 (_2!9996 (tuple2!19973 (select (arr!37776 _keys!1208) from!1455) lt!551074)))))))

(declare-fun b!1212857 () Bool)

(assert (=> b!1212857 (= e!688830 (contains!7008 (toList!8992 lt!551247) (tuple2!19973 (select (arr!37776 _keys!1208) from!1455) lt!551074)))))

(assert (= (and d!133413 res!805534) b!1212856))

(assert (= (and b!1212856 res!805533) b!1212857))

(declare-fun m!1118297 () Bool)

(assert (=> d!133413 m!1118297))

(declare-fun m!1118299 () Bool)

(assert (=> d!133413 m!1118299))

(declare-fun m!1118301 () Bool)

(assert (=> d!133413 m!1118301))

(declare-fun m!1118303 () Bool)

(assert (=> d!133413 m!1118303))

(declare-fun m!1118305 () Bool)

(assert (=> b!1212856 m!1118305))

(declare-fun m!1118307 () Bool)

(assert (=> b!1212857 m!1118307))

(assert (=> b!1212604 d!133413))

(declare-fun b!1212858 () Bool)

(declare-fun res!805535 () Bool)

(declare-fun e!688836 () Bool)

(assert (=> b!1212858 (=> (not res!805535) (not e!688836))))

(declare-fun lt!551253 () ListLongMap!17953)

(assert (=> b!1212858 (= res!805535 (not (contains!7007 lt!551253 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1212859 () Bool)

(declare-fun e!688833 () Bool)

(declare-fun e!688835 () Bool)

(assert (=> b!1212859 (= e!688833 e!688835)))

(assert (=> b!1212859 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38313 _keys!1208)))))

(declare-fun res!805537 () Bool)

(assert (=> b!1212859 (= res!805537 (contains!7007 lt!551253 (select (arr!37776 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1212859 (=> (not res!805537) (not e!688835))))

(declare-fun b!1212860 () Bool)

(declare-fun e!688834 () ListLongMap!17953)

(declare-fun e!688832 () ListLongMap!17953)

(assert (=> b!1212860 (= e!688834 e!688832)))

(declare-fun c!119719 () Bool)

(assert (=> b!1212860 (= c!119719 (validKeyInArray!0 (select (arr!37776 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun d!133415 () Bool)

(assert (=> d!133415 e!688836))

(declare-fun res!805538 () Bool)

(assert (=> d!133415 (=> (not res!805538) (not e!688836))))

(assert (=> d!133415 (= res!805538 (not (contains!7007 lt!551253 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!133415 (= lt!551253 e!688834)))

(declare-fun c!119720 () Bool)

(assert (=> d!133415 (= c!119720 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38313 _keys!1208)))))

(assert (=> d!133415 (validMask!0 mask!1564)))

(assert (=> d!133415 (= (getCurrentListMapNoExtraKeys!5397 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!551253)))

(declare-fun b!1212861 () Bool)

(declare-fun e!688837 () Bool)

(assert (=> b!1212861 (= e!688837 (isEmpty!996 lt!551253))))

(declare-fun b!1212862 () Bool)

(declare-fun call!60244 () ListLongMap!17953)

(assert (=> b!1212862 (= e!688832 call!60244)))

(declare-fun b!1212863 () Bool)

(assert (=> b!1212863 (= e!688837 (= lt!551253 (getCurrentListMapNoExtraKeys!5397 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1212864 () Bool)

(assert (=> b!1212864 (= e!688836 e!688833)))

(declare-fun c!119721 () Bool)

(declare-fun e!688831 () Bool)

(assert (=> b!1212864 (= c!119721 e!688831)))

(declare-fun res!805536 () Bool)

(assert (=> b!1212864 (=> (not res!805536) (not e!688831))))

(assert (=> b!1212864 (= res!805536 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38313 _keys!1208)))))

(declare-fun b!1212865 () Bool)

(assert (=> b!1212865 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38313 _keys!1208)))))

(assert (=> b!1212865 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38314 _values!996)))))

(assert (=> b!1212865 (= e!688835 (= (apply!1004 lt!551253 (select (arr!37776 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19299 (select (arr!37777 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3309 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1212866 () Bool)

(assert (=> b!1212866 (= e!688831 (validKeyInArray!0 (select (arr!37776 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1212866 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1212867 () Bool)

(assert (=> b!1212867 (= e!688833 e!688837)))

(declare-fun c!119722 () Bool)

(assert (=> b!1212867 (= c!119722 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38313 _keys!1208)))))

(declare-fun bm!60241 () Bool)

(assert (=> bm!60241 (= call!60244 (getCurrentListMapNoExtraKeys!5397 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(declare-fun b!1212868 () Bool)

(assert (=> b!1212868 (= e!688834 (ListLongMap!17954 Nil!26789))))

(declare-fun b!1212869 () Bool)

(declare-fun lt!551251 () Unit!40132)

(declare-fun lt!551257 () Unit!40132)

(assert (=> b!1212869 (= lt!551251 lt!551257)))

(declare-fun lt!551255 () (_ BitVec 64))

(declare-fun lt!551254 () V!46147)

(declare-fun lt!551252 () (_ BitVec 64))

(declare-fun lt!551256 () ListLongMap!17953)

(assert (=> b!1212869 (not (contains!7007 (+!4019 lt!551256 (tuple2!19973 lt!551255 lt!551254)) lt!551252))))

(assert (=> b!1212869 (= lt!551257 (addStillNotContains!299 lt!551256 lt!551255 lt!551254 lt!551252))))

(assert (=> b!1212869 (= lt!551252 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1212869 (= lt!551254 (get!19299 (select (arr!37777 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3309 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1212869 (= lt!551255 (select (arr!37776 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1212869 (= lt!551256 call!60244)))

(assert (=> b!1212869 (= e!688832 (+!4019 call!60244 (tuple2!19973 (select (arr!37776 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19299 (select (arr!37777 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3309 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!133415 c!119720) b!1212868))

(assert (= (and d!133415 (not c!119720)) b!1212860))

(assert (= (and b!1212860 c!119719) b!1212869))

(assert (= (and b!1212860 (not c!119719)) b!1212862))

(assert (= (or b!1212869 b!1212862) bm!60241))

(assert (= (and d!133415 res!805538) b!1212858))

(assert (= (and b!1212858 res!805535) b!1212864))

(assert (= (and b!1212864 res!805536) b!1212866))

(assert (= (and b!1212864 c!119721) b!1212859))

(assert (= (and b!1212864 (not c!119721)) b!1212867))

(assert (= (and b!1212859 res!805537) b!1212865))

(assert (= (and b!1212867 c!119722) b!1212863))

(assert (= (and b!1212867 (not c!119722)) b!1212861))

(declare-fun b_lambda!21729 () Bool)

(assert (=> (not b_lambda!21729) (not b!1212865)))

(assert (=> b!1212865 t!39839))

(declare-fun b_and!43253 () Bool)

(assert (= b_and!43251 (and (=> t!39839 result!22325) b_and!43253)))

(declare-fun b_lambda!21731 () Bool)

(assert (=> (not b_lambda!21731) (not b!1212869)))

(assert (=> b!1212869 t!39839))

(declare-fun b_and!43255 () Bool)

(assert (= b_and!43253 (and (=> t!39839 result!22325) b_and!43255)))

(declare-fun m!1118309 () Bool)

(assert (=> b!1212858 m!1118309))

(assert (=> b!1212860 m!1118111))

(assert (=> b!1212860 m!1118111))

(declare-fun m!1118311 () Bool)

(assert (=> b!1212860 m!1118311))

(assert (=> b!1212869 m!1117997))

(declare-fun m!1118313 () Bool)

(assert (=> b!1212869 m!1118313))

(declare-fun m!1118315 () Bool)

(assert (=> b!1212869 m!1118315))

(assert (=> b!1212869 m!1117997))

(declare-fun m!1118317 () Bool)

(assert (=> b!1212869 m!1118317))

(declare-fun m!1118319 () Bool)

(assert (=> b!1212869 m!1118319))

(declare-fun m!1118321 () Bool)

(assert (=> b!1212869 m!1118321))

(assert (=> b!1212869 m!1118315))

(assert (=> b!1212869 m!1118111))

(assert (=> b!1212869 m!1118321))

(declare-fun m!1118323 () Bool)

(assert (=> b!1212869 m!1118323))

(declare-fun m!1118325 () Bool)

(assert (=> d!133415 m!1118325))

(assert (=> d!133415 m!1117959))

(assert (=> b!1212865 m!1117997))

(assert (=> b!1212865 m!1118111))

(declare-fun m!1118327 () Bool)

(assert (=> b!1212865 m!1118327))

(assert (=> b!1212865 m!1118315))

(assert (=> b!1212865 m!1117997))

(assert (=> b!1212865 m!1118317))

(assert (=> b!1212865 m!1118111))

(assert (=> b!1212865 m!1118315))

(assert (=> b!1212859 m!1118111))

(assert (=> b!1212859 m!1118111))

(declare-fun m!1118329 () Bool)

(assert (=> b!1212859 m!1118329))

(assert (=> b!1212866 m!1118111))

(assert (=> b!1212866 m!1118111))

(assert (=> b!1212866 m!1118311))

(declare-fun m!1118331 () Bool)

(assert (=> b!1212861 m!1118331))

(declare-fun m!1118333 () Bool)

(assert (=> bm!60241 m!1118333))

(assert (=> b!1212863 m!1118333))

(assert (=> b!1212604 d!133415))

(declare-fun d!133417 () Bool)

(declare-fun lt!551258 () ListLongMap!17953)

(assert (=> d!133417 (not (contains!7007 lt!551258 (select (arr!37776 _keys!1208) from!1455)))))

(assert (=> d!133417 (= lt!551258 (ListLongMap!17954 (removeStrictlySorted!103 (toList!8992 (+!4019 lt!551068 (tuple2!19973 (select (arr!37776 _keys!1208) from!1455) lt!551074))) (select (arr!37776 _keys!1208) from!1455))))))

(assert (=> d!133417 (= (-!1888 (+!4019 lt!551068 (tuple2!19973 (select (arr!37776 _keys!1208) from!1455) lt!551074)) (select (arr!37776 _keys!1208) from!1455)) lt!551258)))

(declare-fun bs!34220 () Bool)

(assert (= bs!34220 d!133417))

(assert (=> bs!34220 m!1117933))

(declare-fun m!1118335 () Bool)

(assert (=> bs!34220 m!1118335))

(assert (=> bs!34220 m!1117933))

(declare-fun m!1118337 () Bool)

(assert (=> bs!34220 m!1118337))

(assert (=> b!1212604 d!133417))

(assert (=> b!1212588 d!133403))

(declare-fun d!133419 () Bool)

(assert (=> d!133419 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1212589 d!133419))

(assert (=> bm!60190 d!133415))

(declare-fun d!133421 () Bool)

(declare-fun res!805539 () Bool)

(declare-fun e!688838 () Bool)

(assert (=> d!133421 (=> res!805539 e!688838)))

(assert (=> d!133421 (= res!805539 (= (select (arr!37776 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!133421 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!688838)))

(declare-fun b!1212870 () Bool)

(declare-fun e!688839 () Bool)

(assert (=> b!1212870 (= e!688838 e!688839)))

(declare-fun res!805540 () Bool)

(assert (=> b!1212870 (=> (not res!805540) (not e!688839))))

(assert (=> b!1212870 (= res!805540 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38313 _keys!1208)))))

(declare-fun b!1212871 () Bool)

(assert (=> b!1212871 (= e!688839 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!133421 (not res!805539)) b!1212870))

(assert (= (and b!1212870 res!805540) b!1212871))

(assert (=> d!133421 m!1118131))

(declare-fun m!1118339 () Bool)

(assert (=> b!1212871 m!1118339))

(assert (=> b!1212605 d!133421))

(declare-fun d!133423 () Bool)

(assert (=> d!133423 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!551261 () Unit!40132)

(declare-fun choose!13 (array!78288 (_ BitVec 64) (_ BitVec 32)) Unit!40132)

(assert (=> d!133423 (= lt!551261 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!133423 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!133423 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!551261)))

(declare-fun bs!34221 () Bool)

(assert (= bs!34221 d!133423))

(assert (=> bs!34221 m!1117943))

(declare-fun m!1118341 () Bool)

(assert (=> bs!34221 m!1118341))

(assert (=> b!1212605 d!133423))

(declare-fun mapIsEmpty!48025 () Bool)

(declare-fun mapRes!48025 () Bool)

(assert (=> mapIsEmpty!48025 mapRes!48025))

(declare-fun mapNonEmpty!48025 () Bool)

(declare-fun tp!91212 () Bool)

(declare-fun e!688844 () Bool)

(assert (=> mapNonEmpty!48025 (= mapRes!48025 (and tp!91212 e!688844))))

(declare-fun mapRest!48025 () (Array (_ BitVec 32) ValueCell!14673))

(declare-fun mapKey!48025 () (_ BitVec 32))

(declare-fun mapValue!48025 () ValueCell!14673)

(assert (=> mapNonEmpty!48025 (= mapRest!48019 (store mapRest!48025 mapKey!48025 mapValue!48025))))

(declare-fun condMapEmpty!48025 () Bool)

(declare-fun mapDefault!48025 () ValueCell!14673)

(assert (=> mapNonEmpty!48019 (= condMapEmpty!48025 (= mapRest!48019 ((as const (Array (_ BitVec 32) ValueCell!14673)) mapDefault!48025)))))

(declare-fun e!688845 () Bool)

(assert (=> mapNonEmpty!48019 (= tp!91203 (and e!688845 mapRes!48025))))

(declare-fun b!1212878 () Bool)

(assert (=> b!1212878 (= e!688844 tp_is_empty!30765)))

(declare-fun b!1212879 () Bool)

(assert (=> b!1212879 (= e!688845 tp_is_empty!30765)))

(assert (= (and mapNonEmpty!48019 condMapEmpty!48025) mapIsEmpty!48025))

(assert (= (and mapNonEmpty!48019 (not condMapEmpty!48025)) mapNonEmpty!48025))

(assert (= (and mapNonEmpty!48025 ((_ is ValueCellFull!14673) mapValue!48025)) b!1212878))

(assert (= (and mapNonEmpty!48019 ((_ is ValueCellFull!14673) mapDefault!48025)) b!1212879))

(declare-fun m!1118343 () Bool)

(assert (=> mapNonEmpty!48025 m!1118343))

(declare-fun b_lambda!21733 () Bool)

(assert (= b_lambda!21729 (or (and start!101136 b_free!26061) b_lambda!21733)))

(declare-fun b_lambda!21735 () Bool)

(assert (= b_lambda!21721 (or (and start!101136 b_free!26061) b_lambda!21735)))

(declare-fun b_lambda!21737 () Bool)

(assert (= b_lambda!21727 (or (and start!101136 b_free!26061) b_lambda!21737)))

(declare-fun b_lambda!21739 () Bool)

(assert (= b_lambda!21723 (or (and start!101136 b_free!26061) b_lambda!21739)))

(declare-fun b_lambda!21741 () Bool)

(assert (= b_lambda!21731 (or (and start!101136 b_free!26061) b_lambda!21741)))

(declare-fun b_lambda!21743 () Bool)

(assert (= b_lambda!21715 (or (and start!101136 b_free!26061) b_lambda!21743)))

(declare-fun b_lambda!21745 () Bool)

(assert (= b_lambda!21725 (or (and start!101136 b_free!26061) b_lambda!21745)))

(declare-fun b_lambda!21747 () Bool)

(assert (= b_lambda!21719 (or (and start!101136 b_free!26061) b_lambda!21747)))

(declare-fun b_lambda!21749 () Bool)

(assert (= b_lambda!21717 (or (and start!101136 b_free!26061) b_lambda!21749)))

(check-sat (not b!1212803) (not b!1212782) (not b!1212810) (not d!133405) (not b_lambda!21749) (not b_lambda!21741) (not d!133379) (not b!1212779) (not d!133417) (not d!133423) (not b_lambda!21737) (not b!1212830) (not mapNonEmpty!48025) (not b!1212835) (not d!133403) (not b_lambda!21739) (not b!1212859) (not bm!60234) (not b!1212865) (not b!1212860) (not bm!60240) (not bm!60230) (not b!1212751) (not b!1212843) (not b!1212834) (not b!1212712) (not d!133407) (not bm!60239) (not d!133411) (not b!1212826) (not bm!60241) (not b!1212854) (not b!1212718) (not b!1212749) (not d!133401) (not b!1212863) (not d!133385) (not b!1212837) (not bm!60238) (not bm!60235) (not b!1212710) (not b!1212846) (not d!133377) (not d!133399) (not b!1212805) (not b!1212833) (not b!1212739) (not b!1212737) (not b_next!26061) (not b!1212812) (not bm!60233) (not b!1212798) (not b!1212753) (not b!1212815) (not b!1212794) (not b!1212866) (not b!1212836) (not b!1212831) (not b!1212799) (not bm!60229) tp_is_empty!30765 (not b!1212869) (not d!133363) (not b!1212781) (not bm!60228) (not b!1212750) (not b!1212791) (not b!1212858) (not d!133361) (not b!1212838) (not b!1212840) (not b!1212796) (not b!1212787) (not d!133375) (not b!1212792) (not b_lambda!21713) (not b!1212871) (not d!133415) (not bm!60223) (not b!1212855) (not b_lambda!21735) (not b!1212856) (not b!1212842) (not b_lambda!21745) (not d!133371) (not b_lambda!21743) (not b!1212857) (not d!133359) (not b!1212736) (not b!1212813) (not b!1212784) (not b!1212790) (not b!1212717) (not b!1212802) (not b_lambda!21733) (not d!133381) (not b!1212849) (not b!1212861) (not b_lambda!21747) (not b!1212793) (not d!133383) (not d!133389) (not b!1212786) (not b!1212847) b_and!43255 (not d!133413) (not b!1212725) (not b!1212827) (not b!1212780))
(check-sat b_and!43255 (not b_next!26061))
