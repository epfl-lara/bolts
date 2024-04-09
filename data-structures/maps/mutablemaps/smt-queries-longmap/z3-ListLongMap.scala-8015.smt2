; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98968 () Bool)

(assert start!98968)

(declare-fun b_free!24537 () Bool)

(declare-fun b_next!24537 () Bool)

(assert (=> start!98968 (= b_free!24537 (not b_next!24537))))

(declare-fun tp!86323 () Bool)

(declare-fun b_and!39937 () Bool)

(assert (=> start!98968 (= tp!86323 b_and!39937)))

(declare-fun b!1159650 () Bool)

(declare-datatypes ((Unit!38117 0))(
  ( (Unit!38118) )
))
(declare-fun e!659486 () Unit!38117)

(declare-fun e!659492 () Unit!38117)

(assert (=> b!1159650 (= e!659486 e!659492)))

(declare-fun c!115641 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!521402 () Bool)

(assert (=> b!1159650 (= c!115641 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!521402))))

(declare-fun b!1159651 () Bool)

(declare-fun res!769806 () Bool)

(declare-fun e!659482 () Bool)

(assert (=> b!1159651 (=> (not res!769806) (not e!659482))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1159651 (= res!769806 (validMask!0 mask!1564))))

(declare-datatypes ((V!43883 0))(
  ( (V!43884 (val!14590 Int)) )
))
(declare-fun zeroValue!944 () V!43883)

(declare-datatypes ((array!74924 0))(
  ( (array!74925 (arr!36109 (Array (_ BitVec 32) (_ BitVec 64))) (size!36646 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74924)

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!55982 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!18650 0))(
  ( (tuple2!18651 (_1!9335 (_ BitVec 64)) (_2!9335 V!43883)) )
))
(declare-datatypes ((List!25428 0))(
  ( (Nil!25425) (Cons!25424 (h!26633 tuple2!18650) (t!36964 List!25428)) )
))
(declare-datatypes ((ListLongMap!16631 0))(
  ( (ListLongMap!16632 (toList!8331 List!25428)) )
))
(declare-fun call!55988 () ListLongMap!16631)

(declare-datatypes ((ValueCell!13824 0))(
  ( (ValueCellFull!13824 (v!17228 V!43883)) (EmptyCell!13824) )
))
(declare-datatypes ((array!74926 0))(
  ( (array!74927 (arr!36110 (Array (_ BitVec 32) ValueCell!13824)) (size!36647 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74926)

(declare-fun minValue!944 () V!43883)

(declare-fun getCurrentListMapNoExtraKeys!4767 (array!74924 array!74926 (_ BitVec 32) (_ BitVec 32) V!43883 V!43883 (_ BitVec 32) Int) ListLongMap!16631)

(assert (=> bm!55982 (= call!55988 (getCurrentListMapNoExtraKeys!4767 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159652 () Bool)

(declare-fun res!769798 () Bool)

(declare-fun e!659488 () Bool)

(assert (=> b!1159652 (=> (not res!769798) (not e!659488))))

(declare-fun lt!521413 () array!74924)

(declare-datatypes ((List!25429 0))(
  ( (Nil!25426) (Cons!25425 (h!26634 (_ BitVec 64)) (t!36965 List!25429)) )
))
(declare-fun arrayNoDuplicates!0 (array!74924 (_ BitVec 32) List!25429) Bool)

(assert (=> b!1159652 (= res!769798 (arrayNoDuplicates!0 lt!521413 #b00000000000000000000000000000000 Nil!25426))))

(declare-fun c!115644 () Bool)

(declare-fun bm!55983 () Bool)

(declare-fun c!115642 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun call!55991 () Unit!38117)

(declare-fun lt!521412 () ListLongMap!16631)

(declare-fun addStillContains!954 (ListLongMap!16631 (_ BitVec 64) V!43883 (_ BitVec 64)) Unit!38117)

(assert (=> bm!55983 (= call!55991 (addStillContains!954 lt!521412 (ite (or c!115644 c!115642) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115644 c!115642) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1159653 () Bool)

(declare-fun Unit!38119 () Unit!38117)

(assert (=> b!1159653 (= e!659492 Unit!38119)))

(declare-fun mapIsEmpty!45425 () Bool)

(declare-fun mapRes!45425 () Bool)

(assert (=> mapIsEmpty!45425 mapRes!45425))

(declare-fun b!1159654 () Bool)

(declare-fun lt!521405 () ListLongMap!16631)

(declare-fun contains!6813 (ListLongMap!16631 (_ BitVec 64)) Bool)

(declare-fun +!3657 (ListLongMap!16631 tuple2!18650) ListLongMap!16631)

(assert (=> b!1159654 (contains!6813 (+!3657 lt!521405 (tuple2!18651 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!521400 () Unit!38117)

(assert (=> b!1159654 (= lt!521400 (addStillContains!954 lt!521405 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun call!55989 () Bool)

(assert (=> b!1159654 call!55989))

(declare-fun call!55986 () ListLongMap!16631)

(assert (=> b!1159654 (= lt!521405 call!55986)))

(declare-fun lt!521404 () Unit!38117)

(assert (=> b!1159654 (= lt!521404 call!55991)))

(declare-fun e!659490 () Unit!38117)

(assert (=> b!1159654 (= e!659490 lt!521400)))

(declare-fun bm!55984 () Bool)

(declare-fun call!55992 () ListLongMap!16631)

(assert (=> bm!55984 (= call!55989 (contains!6813 (ite c!115644 lt!521405 call!55992) k0!934))))

(declare-fun b!1159655 () Bool)

(assert (=> b!1159655 (= c!115642 (and (not lt!521402) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1159655 (= e!659490 e!659486)))

(declare-fun b!1159656 () Bool)

(declare-fun e!659491 () Bool)

(assert (=> b!1159656 (= e!659488 (not e!659491))))

(declare-fun res!769805 () Bool)

(assert (=> b!1159656 (=> res!769805 e!659491)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1159656 (= res!769805 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74924 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1159656 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!521410 () Unit!38117)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74924 (_ BitVec 64) (_ BitVec 32)) Unit!38117)

(assert (=> b!1159656 (= lt!521410 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1159657 () Bool)

(declare-fun lt!521421 () array!74926)

(declare-fun lt!521419 () ListLongMap!16631)

(declare-fun e!659485 () Bool)

(assert (=> b!1159657 (= e!659485 (= lt!521419 (getCurrentListMapNoExtraKeys!4767 lt!521413 lt!521421 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1159658 () Bool)

(declare-fun res!769795 () Bool)

(assert (=> b!1159658 (=> (not res!769795) (not e!659482))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1159658 (= res!769795 (validKeyInArray!0 k0!934))))

(declare-fun b!1159659 () Bool)

(declare-fun res!769799 () Bool)

(assert (=> b!1159659 (=> (not res!769799) (not e!659482))))

(assert (=> b!1159659 (= res!769799 (= (select (arr!36109 _keys!1208) i!673) k0!934))))

(declare-fun b!1159660 () Bool)

(declare-fun e!659487 () Unit!38117)

(declare-fun Unit!38120 () Unit!38117)

(assert (=> b!1159660 (= e!659487 Unit!38120)))

(declare-fun b!1159661 () Bool)

(declare-fun res!769794 () Bool)

(assert (=> b!1159661 (=> (not res!769794) (not e!659482))))

(assert (=> b!1159661 (= res!769794 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36646 _keys!1208))))))

(declare-fun b!1159662 () Bool)

(declare-fun e!659489 () Bool)

(assert (=> b!1159662 (= e!659489 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1159663 () Bool)

(declare-fun res!769796 () Bool)

(assert (=> b!1159663 (=> (not res!769796) (not e!659482))))

(assert (=> b!1159663 (= res!769796 (and (= (size!36647 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36646 _keys!1208) (size!36647 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!55985 () Bool)

(assert (=> bm!55985 (= call!55992 call!55986)))

(declare-fun bm!55986 () Bool)

(assert (=> bm!55986 (= call!55986 (+!3657 lt!521412 (ite (or c!115644 c!115642) (tuple2!18651 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18651 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1159664 () Bool)

(declare-fun e!659480 () Bool)

(assert (=> b!1159664 (= e!659480 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!521402) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1159665 () Bool)

(declare-fun e!659494 () Bool)

(declare-fun call!55987 () ListLongMap!16631)

(assert (=> b!1159665 (= e!659494 (= call!55987 call!55988))))

(declare-fun b!1159666 () Bool)

(assert (=> b!1159666 (= e!659480 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1159667 () Bool)

(declare-fun lt!521417 () Unit!38117)

(assert (=> b!1159667 (= e!659486 lt!521417)))

(declare-fun call!55990 () Unit!38117)

(assert (=> b!1159667 (= lt!521417 call!55990)))

(declare-fun call!55985 () Bool)

(assert (=> b!1159667 call!55985))

(declare-fun b!1159668 () Bool)

(declare-fun e!659495 () Bool)

(assert (=> b!1159668 (= e!659495 true)))

(assert (=> b!1159668 e!659485))

(declare-fun res!769807 () Bool)

(assert (=> b!1159668 (=> (not res!769807) (not e!659485))))

(assert (=> b!1159668 (= res!769807 (= lt!521419 lt!521412))))

(declare-fun lt!521401 () ListLongMap!16631)

(declare-fun -!1403 (ListLongMap!16631 (_ BitVec 64)) ListLongMap!16631)

(assert (=> b!1159668 (= lt!521419 (-!1403 lt!521401 k0!934))))

(declare-fun lt!521416 () V!43883)

(assert (=> b!1159668 (= (-!1403 (+!3657 lt!521412 (tuple2!18651 (select (arr!36109 _keys!1208) from!1455) lt!521416)) (select (arr!36109 _keys!1208) from!1455)) lt!521412)))

(declare-fun lt!521418 () Unit!38117)

(declare-fun addThenRemoveForNewKeyIsSame!241 (ListLongMap!16631 (_ BitVec 64) V!43883) Unit!38117)

(assert (=> b!1159668 (= lt!521418 (addThenRemoveForNewKeyIsSame!241 lt!521412 (select (arr!36109 _keys!1208) from!1455) lt!521416))))

(declare-fun lt!521415 () V!43883)

(declare-fun get!18441 (ValueCell!13824 V!43883) V!43883)

(assert (=> b!1159668 (= lt!521416 (get!18441 (select (arr!36110 _values!996) from!1455) lt!521415))))

(declare-fun lt!521420 () Unit!38117)

(assert (=> b!1159668 (= lt!521420 e!659487)))

(declare-fun c!115639 () Bool)

(assert (=> b!1159668 (= c!115639 (contains!6813 lt!521412 k0!934))))

(assert (=> b!1159668 (= lt!521412 (getCurrentListMapNoExtraKeys!4767 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159669 () Bool)

(declare-fun res!769803 () Bool)

(assert (=> b!1159669 (=> (not res!769803) (not e!659482))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74924 (_ BitVec 32)) Bool)

(assert (=> b!1159669 (= res!769803 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!769800 () Bool)

(assert (=> start!98968 (=> (not res!769800) (not e!659482))))

(assert (=> start!98968 (= res!769800 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36646 _keys!1208))))))

(assert (=> start!98968 e!659482))

(declare-fun tp_is_empty!29067 () Bool)

(assert (=> start!98968 tp_is_empty!29067))

(declare-fun array_inv!27498 (array!74924) Bool)

(assert (=> start!98968 (array_inv!27498 _keys!1208)))

(assert (=> start!98968 true))

(assert (=> start!98968 tp!86323))

(declare-fun e!659483 () Bool)

(declare-fun array_inv!27499 (array!74926) Bool)

(assert (=> start!98968 (and (array_inv!27499 _values!996) e!659483)))

(declare-fun b!1159670 () Bool)

(declare-fun res!769808 () Bool)

(assert (=> b!1159670 (=> (not res!769808) (not e!659482))))

(assert (=> b!1159670 (= res!769808 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25426))))

(declare-fun b!1159671 () Bool)

(declare-fun Unit!38121 () Unit!38117)

(assert (=> b!1159671 (= e!659487 Unit!38121)))

(assert (=> b!1159671 (= lt!521402 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1159671 (= c!115644 (and (not lt!521402) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!521406 () Unit!38117)

(assert (=> b!1159671 (= lt!521406 e!659490)))

(declare-fun lt!521407 () Unit!38117)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!528 (array!74924 array!74926 (_ BitVec 32) (_ BitVec 32) V!43883 V!43883 (_ BitVec 64) (_ BitVec 32) Int) Unit!38117)

(assert (=> b!1159671 (= lt!521407 (lemmaListMapContainsThenArrayContainsFrom!528 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115643 () Bool)

(assert (=> b!1159671 (= c!115643 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!769802 () Bool)

(assert (=> b!1159671 (= res!769802 e!659480)))

(assert (=> b!1159671 (=> (not res!769802) (not e!659489))))

(assert (=> b!1159671 e!659489))

(declare-fun lt!521408 () Unit!38117)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74924 (_ BitVec 32) (_ BitVec 32)) Unit!38117)

(assert (=> b!1159671 (= lt!521408 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1159671 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25426)))

(declare-fun lt!521403 () Unit!38117)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74924 (_ BitVec 64) (_ BitVec 32) List!25429) Unit!38117)

(assert (=> b!1159671 (= lt!521403 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25426))))

(assert (=> b!1159671 false))

(declare-fun b!1159672 () Bool)

(declare-fun e!659493 () Bool)

(assert (=> b!1159672 (= e!659483 (and e!659493 mapRes!45425))))

(declare-fun condMapEmpty!45425 () Bool)

(declare-fun mapDefault!45425 () ValueCell!13824)

(assert (=> b!1159672 (= condMapEmpty!45425 (= (arr!36110 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13824)) mapDefault!45425)))))

(declare-fun b!1159673 () Bool)

(assert (=> b!1159673 call!55985))

(declare-fun lt!521414 () Unit!38117)

(assert (=> b!1159673 (= lt!521414 call!55990)))

(assert (=> b!1159673 (= e!659492 lt!521414)))

(declare-fun b!1159674 () Bool)

(declare-fun e!659484 () Bool)

(assert (=> b!1159674 (= e!659484 tp_is_empty!29067)))

(declare-fun bm!55987 () Bool)

(assert (=> bm!55987 (= call!55987 (getCurrentListMapNoExtraKeys!4767 lt!521413 lt!521421 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!55988 () Bool)

(assert (=> bm!55988 (= call!55985 call!55989)))

(declare-fun b!1159675 () Bool)

(declare-fun e!659481 () Bool)

(assert (=> b!1159675 (= e!659491 e!659481)))

(declare-fun res!769797 () Bool)

(assert (=> b!1159675 (=> res!769797 e!659481)))

(assert (=> b!1159675 (= res!769797 (not (= from!1455 i!673)))))

(declare-fun lt!521409 () ListLongMap!16631)

(assert (=> b!1159675 (= lt!521409 (getCurrentListMapNoExtraKeys!4767 lt!521413 lt!521421 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1159675 (= lt!521421 (array!74927 (store (arr!36110 _values!996) i!673 (ValueCellFull!13824 lt!521415)) (size!36647 _values!996)))))

(declare-fun dynLambda!2770 (Int (_ BitVec 64)) V!43883)

(assert (=> b!1159675 (= lt!521415 (dynLambda!2770 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1159675 (= lt!521401 (getCurrentListMapNoExtraKeys!4767 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1159676 () Bool)

(assert (=> b!1159676 (= e!659482 e!659488)))

(declare-fun res!769801 () Bool)

(assert (=> b!1159676 (=> (not res!769801) (not e!659488))))

(assert (=> b!1159676 (= res!769801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!521413 mask!1564))))

(assert (=> b!1159676 (= lt!521413 (array!74925 (store (arr!36109 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36646 _keys!1208)))))

(declare-fun b!1159677 () Bool)

(assert (=> b!1159677 (= e!659493 tp_is_empty!29067)))

(declare-fun bm!55989 () Bool)

(assert (=> bm!55989 (= call!55990 call!55991)))

(declare-fun mapNonEmpty!45425 () Bool)

(declare-fun tp!86322 () Bool)

(assert (=> mapNonEmpty!45425 (= mapRes!45425 (and tp!86322 e!659484))))

(declare-fun mapValue!45425 () ValueCell!13824)

(declare-fun mapKey!45425 () (_ BitVec 32))

(declare-fun mapRest!45425 () (Array (_ BitVec 32) ValueCell!13824))

(assert (=> mapNonEmpty!45425 (= (arr!36110 _values!996) (store mapRest!45425 mapKey!45425 mapValue!45425))))

(declare-fun b!1159678 () Bool)

(assert (=> b!1159678 (= e!659494 (= call!55987 (-!1403 call!55988 k0!934)))))

(declare-fun b!1159679 () Bool)

(assert (=> b!1159679 (= e!659481 e!659495)))

(declare-fun res!769804 () Bool)

(assert (=> b!1159679 (=> res!769804 e!659495)))

(assert (=> b!1159679 (= res!769804 (not (= (select (arr!36109 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1159679 e!659494))

(declare-fun c!115640 () Bool)

(assert (=> b!1159679 (= c!115640 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!521411 () Unit!38117)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!627 (array!74924 array!74926 (_ BitVec 32) (_ BitVec 32) V!43883 V!43883 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38117)

(assert (=> b!1159679 (= lt!521411 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!627 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!98968 res!769800) b!1159651))

(assert (= (and b!1159651 res!769806) b!1159663))

(assert (= (and b!1159663 res!769796) b!1159669))

(assert (= (and b!1159669 res!769803) b!1159670))

(assert (= (and b!1159670 res!769808) b!1159661))

(assert (= (and b!1159661 res!769794) b!1159658))

(assert (= (and b!1159658 res!769795) b!1159659))

(assert (= (and b!1159659 res!769799) b!1159676))

(assert (= (and b!1159676 res!769801) b!1159652))

(assert (= (and b!1159652 res!769798) b!1159656))

(assert (= (and b!1159656 (not res!769805)) b!1159675))

(assert (= (and b!1159675 (not res!769797)) b!1159679))

(assert (= (and b!1159679 c!115640) b!1159678))

(assert (= (and b!1159679 (not c!115640)) b!1159665))

(assert (= (or b!1159678 b!1159665) bm!55987))

(assert (= (or b!1159678 b!1159665) bm!55982))

(assert (= (and b!1159679 (not res!769804)) b!1159668))

(assert (= (and b!1159668 c!115639) b!1159671))

(assert (= (and b!1159668 (not c!115639)) b!1159660))

(assert (= (and b!1159671 c!115644) b!1159654))

(assert (= (and b!1159671 (not c!115644)) b!1159655))

(assert (= (and b!1159655 c!115642) b!1159667))

(assert (= (and b!1159655 (not c!115642)) b!1159650))

(assert (= (and b!1159650 c!115641) b!1159673))

(assert (= (and b!1159650 (not c!115641)) b!1159653))

(assert (= (or b!1159667 b!1159673) bm!55989))

(assert (= (or b!1159667 b!1159673) bm!55985))

(assert (= (or b!1159667 b!1159673) bm!55988))

(assert (= (or b!1159654 bm!55988) bm!55984))

(assert (= (or b!1159654 bm!55989) bm!55983))

(assert (= (or b!1159654 bm!55985) bm!55986))

(assert (= (and b!1159671 c!115643) b!1159666))

(assert (= (and b!1159671 (not c!115643)) b!1159664))

(assert (= (and b!1159671 res!769802) b!1159662))

(assert (= (and b!1159668 res!769807) b!1159657))

(assert (= (and b!1159672 condMapEmpty!45425) mapIsEmpty!45425))

(assert (= (and b!1159672 (not condMapEmpty!45425)) mapNonEmpty!45425))

(get-info :version)

(assert (= (and mapNonEmpty!45425 ((_ is ValueCellFull!13824) mapValue!45425)) b!1159674))

(assert (= (and b!1159672 ((_ is ValueCellFull!13824) mapDefault!45425)) b!1159677))

(assert (= start!98968 b!1159672))

(declare-fun b_lambda!19661 () Bool)

(assert (=> (not b_lambda!19661) (not b!1159675)))

(declare-fun t!36963 () Bool)

(declare-fun tb!9357 () Bool)

(assert (=> (and start!98968 (= defaultEntry!1004 defaultEntry!1004) t!36963) tb!9357))

(declare-fun result!19271 () Bool)

(assert (=> tb!9357 (= result!19271 tp_is_empty!29067)))

(assert (=> b!1159675 t!36963))

(declare-fun b_and!39939 () Bool)

(assert (= b_and!39937 (and (=> t!36963 result!19271) b_and!39939)))

(declare-fun m!1068743 () Bool)

(assert (=> bm!55983 m!1068743))

(declare-fun m!1068745 () Bool)

(assert (=> start!98968 m!1068745))

(declare-fun m!1068747 () Bool)

(assert (=> start!98968 m!1068747))

(declare-fun m!1068749 () Bool)

(assert (=> b!1159670 m!1068749))

(declare-fun m!1068751 () Bool)

(assert (=> b!1159662 m!1068751))

(declare-fun m!1068753 () Bool)

(assert (=> bm!55984 m!1068753))

(declare-fun m!1068755 () Bool)

(assert (=> b!1159668 m!1068755))

(declare-fun m!1068757 () Bool)

(assert (=> b!1159668 m!1068757))

(declare-fun m!1068759 () Bool)

(assert (=> b!1159668 m!1068759))

(declare-fun m!1068761 () Bool)

(assert (=> b!1159668 m!1068761))

(declare-fun m!1068763 () Bool)

(assert (=> b!1159668 m!1068763))

(assert (=> b!1159668 m!1068759))

(declare-fun m!1068765 () Bool)

(assert (=> b!1159668 m!1068765))

(declare-fun m!1068767 () Bool)

(assert (=> b!1159668 m!1068767))

(assert (=> b!1159668 m!1068763))

(declare-fun m!1068769 () Bool)

(assert (=> b!1159668 m!1068769))

(assert (=> b!1159668 m!1068759))

(assert (=> b!1159668 m!1068757))

(declare-fun m!1068771 () Bool)

(assert (=> b!1159668 m!1068771))

(declare-fun m!1068773 () Bool)

(assert (=> b!1159676 m!1068773))

(declare-fun m!1068775 () Bool)

(assert (=> b!1159676 m!1068775))

(declare-fun m!1068777 () Bool)

(assert (=> b!1159656 m!1068777))

(declare-fun m!1068779 () Bool)

(assert (=> b!1159656 m!1068779))

(assert (=> b!1159666 m!1068751))

(declare-fun m!1068781 () Bool)

(assert (=> b!1159671 m!1068781))

(declare-fun m!1068783 () Bool)

(assert (=> b!1159671 m!1068783))

(declare-fun m!1068785 () Bool)

(assert (=> b!1159671 m!1068785))

(declare-fun m!1068787 () Bool)

(assert (=> b!1159671 m!1068787))

(assert (=> b!1159679 m!1068759))

(declare-fun m!1068789 () Bool)

(assert (=> b!1159679 m!1068789))

(declare-fun m!1068791 () Bool)

(assert (=> b!1159651 m!1068791))

(declare-fun m!1068793 () Bool)

(assert (=> b!1159659 m!1068793))

(declare-fun m!1068795 () Bool)

(assert (=> b!1159652 m!1068795))

(declare-fun m!1068797 () Bool)

(assert (=> b!1159678 m!1068797))

(declare-fun m!1068799 () Bool)

(assert (=> b!1159654 m!1068799))

(assert (=> b!1159654 m!1068799))

(declare-fun m!1068801 () Bool)

(assert (=> b!1159654 m!1068801))

(declare-fun m!1068803 () Bool)

(assert (=> b!1159654 m!1068803))

(declare-fun m!1068805 () Bool)

(assert (=> mapNonEmpty!45425 m!1068805))

(declare-fun m!1068807 () Bool)

(assert (=> bm!55986 m!1068807))

(declare-fun m!1068809 () Bool)

(assert (=> b!1159669 m!1068809))

(declare-fun m!1068811 () Bool)

(assert (=> b!1159657 m!1068811))

(assert (=> bm!55982 m!1068755))

(assert (=> bm!55987 m!1068811))

(declare-fun m!1068813 () Bool)

(assert (=> b!1159658 m!1068813))

(declare-fun m!1068815 () Bool)

(assert (=> b!1159675 m!1068815))

(declare-fun m!1068817 () Bool)

(assert (=> b!1159675 m!1068817))

(declare-fun m!1068819 () Bool)

(assert (=> b!1159675 m!1068819))

(declare-fun m!1068821 () Bool)

(assert (=> b!1159675 m!1068821))

(check-sat (not b_lambda!19661) tp_is_empty!29067 (not b!1159657) (not b!1159658) (not b!1159670) (not b!1159654) (not mapNonEmpty!45425) (not b!1159679) b_and!39939 (not bm!55984) (not b!1159652) (not b_next!24537) (not bm!55987) (not b!1159662) (not b!1159666) (not b!1159675) (not bm!55986) (not b!1159656) (not b!1159678) (not bm!55982) (not b!1159651) (not start!98968) (not b!1159668) (not b!1159669) (not bm!55983) (not b!1159676) (not b!1159671))
(check-sat b_and!39939 (not b_next!24537))
