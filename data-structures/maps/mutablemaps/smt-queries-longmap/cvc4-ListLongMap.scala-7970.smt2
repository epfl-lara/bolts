; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98700 () Bool)

(assert start!98700)

(declare-fun b_free!24269 () Bool)

(declare-fun b_next!24269 () Bool)

(assert (=> start!98700 (= b_free!24269 (not b_next!24269))))

(declare-fun tp!85518 () Bool)

(declare-fun b_and!39401 () Bool)

(assert (=> start!98700 (= tp!85518 b_and!39401)))

(declare-fun b!1147322 () Bool)

(declare-datatypes ((Unit!37608 0))(
  ( (Unit!37609) )
))
(declare-fun e!652649 () Unit!37608)

(declare-fun lt!512629 () Unit!37608)

(assert (=> b!1147322 (= e!652649 lt!512629)))

(declare-fun call!52773 () Unit!37608)

(assert (=> b!1147322 (= lt!512629 call!52773)))

(declare-fun call!52771 () Bool)

(assert (=> b!1147322 call!52771))

(declare-fun bm!52766 () Bool)

(declare-datatypes ((V!43525 0))(
  ( (V!43526 (val!14456 Int)) )
))
(declare-datatypes ((tuple2!18404 0))(
  ( (tuple2!18405 (_1!9212 (_ BitVec 64)) (_2!9212 V!43525)) )
))
(declare-datatypes ((List!25198 0))(
  ( (Nil!25195) (Cons!25194 (h!26403 tuple2!18404) (t!36466 List!25198)) )
))
(declare-datatypes ((ListLongMap!16385 0))(
  ( (ListLongMap!16386 (toList!8208 List!25198)) )
))
(declare-fun call!52770 () ListLongMap!16385)

(declare-fun call!52774 () ListLongMap!16385)

(assert (=> bm!52766 (= call!52770 call!52774)))

(declare-fun b!1147323 () Bool)

(declare-fun e!652657 () Unit!37608)

(declare-fun Unit!37610 () Unit!37608)

(assert (=> b!1147323 (= e!652657 Unit!37610)))

(declare-fun b!1147324 () Bool)

(declare-fun e!652658 () Bool)

(declare-fun call!52775 () ListLongMap!16385)

(declare-fun call!52772 () ListLongMap!16385)

(assert (=> b!1147324 (= e!652658 (= call!52775 call!52772))))

(declare-fun b!1147325 () Bool)

(declare-fun res!763770 () Bool)

(declare-fun e!652662 () Bool)

(assert (=> b!1147325 (=> (not res!763770) (not e!652662))))

(declare-datatypes ((array!74402 0))(
  ( (array!74403 (arr!35848 (Array (_ BitVec 32) (_ BitVec 64))) (size!36385 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74402)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1147325 (= res!763770 (= (select (arr!35848 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!45023 () Bool)

(declare-fun mapRes!45023 () Bool)

(assert (=> mapIsEmpty!45023 mapRes!45023))

(declare-fun bm!52767 () Bool)

(declare-fun c!113228 () Bool)

(declare-fun call!52769 () Bool)

(declare-fun lt!512619 () ListLongMap!16385)

(declare-fun contains!6705 (ListLongMap!16385 (_ BitVec 64)) Bool)

(assert (=> bm!52767 (= call!52769 (contains!6705 (ite c!113228 lt!512619 call!52770) k!934))))

(declare-fun bm!52768 () Bool)

(assert (=> bm!52768 (= call!52771 call!52769)))

(declare-fun b!1147326 () Bool)

(declare-fun res!763778 () Bool)

(assert (=> b!1147326 (=> (not res!763778) (not e!652662))))

(assert (=> b!1147326 (= res!763778 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36385 _keys!1208))))))

(declare-fun lt!512612 () ListLongMap!16385)

(declare-fun b!1147327 () Bool)

(declare-fun e!652659 () Bool)

(declare-fun lt!512620 () ListLongMap!16385)

(declare-fun -!1298 (ListLongMap!16385 (_ BitVec 64)) ListLongMap!16385)

(assert (=> b!1147327 (= e!652659 (= (-!1298 lt!512620 k!934) lt!512612))))

(declare-fun mapNonEmpty!45023 () Bool)

(declare-fun tp!85519 () Bool)

(declare-fun e!652661 () Bool)

(assert (=> mapNonEmpty!45023 (= mapRes!45023 (and tp!85519 e!652661))))

(declare-datatypes ((ValueCell!13690 0))(
  ( (ValueCellFull!13690 (v!17094 V!43525)) (EmptyCell!13690) )
))
(declare-fun mapValue!45023 () ValueCell!13690)

(declare-datatypes ((array!74404 0))(
  ( (array!74405 (arr!35849 (Array (_ BitVec 32) ValueCell!13690)) (size!36386 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74404)

(declare-fun mapRest!45023 () (Array (_ BitVec 32) ValueCell!13690))

(declare-fun mapKey!45023 () (_ BitVec 32))

(assert (=> mapNonEmpty!45023 (= (arr!35849 _values!996) (store mapRest!45023 mapKey!45023 mapValue!45023))))

(declare-fun b!1147328 () Bool)

(declare-fun tp_is_empty!28799 () Bool)

(assert (=> b!1147328 (= e!652661 tp_is_empty!28799)))

(declare-fun e!652651 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1147329 () Bool)

(declare-fun arrayContainsKey!0 (array!74402 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1147329 (= e!652651 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1147330 () Bool)

(declare-fun e!652654 () Bool)

(declare-fun e!652660 () Bool)

(assert (=> b!1147330 (= e!652654 e!652660)))

(declare-fun res!763775 () Bool)

(assert (=> b!1147330 (=> res!763775 e!652660)))

(assert (=> b!1147330 (= res!763775 (not (= (select (arr!35848 _keys!1208) from!1455) k!934)))))

(assert (=> b!1147330 e!652658))

(declare-fun c!113232 () Bool)

(assert (=> b!1147330 (= c!113232 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!43525)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!512625 () Unit!37608)

(declare-fun minValue!944 () V!43525)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!545 (array!74402 array!74404 (_ BitVec 32) (_ BitVec 32) V!43525 V!43525 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37608)

(assert (=> b!1147330 (= lt!512625 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!545 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!52769 () Bool)

(declare-fun lt!512630 () array!74404)

(declare-fun lt!512626 () array!74402)

(declare-fun getCurrentListMapNoExtraKeys!4649 (array!74402 array!74404 (_ BitVec 32) (_ BitVec 32) V!43525 V!43525 (_ BitVec 32) Int) ListLongMap!16385)

(assert (=> bm!52769 (= call!52775 (getCurrentListMapNoExtraKeys!4649 lt!512626 lt!512630 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1147331 () Bool)

(declare-fun c!113231 () Bool)

(declare-fun lt!512627 () Bool)

(assert (=> b!1147331 (= c!113231 (and (not lt!512627) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!652647 () Unit!37608)

(assert (=> b!1147331 (= e!652647 e!652649)))

(declare-fun b!1147332 () Bool)

(declare-fun e!652646 () Bool)

(assert (=> b!1147332 (= e!652646 e!652654)))

(declare-fun res!763767 () Bool)

(assert (=> b!1147332 (=> res!763767 e!652654)))

(assert (=> b!1147332 (= res!763767 (not (= from!1455 i!673)))))

(declare-fun lt!512621 () ListLongMap!16385)

(assert (=> b!1147332 (= lt!512621 (getCurrentListMapNoExtraKeys!4649 lt!512626 lt!512630 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!512622 () V!43525)

(assert (=> b!1147332 (= lt!512630 (array!74405 (store (arr!35849 _values!996) i!673 (ValueCellFull!13690 lt!512622)) (size!36386 _values!996)))))

(declare-fun dynLambda!2685 (Int (_ BitVec 64)) V!43525)

(assert (=> b!1147332 (= lt!512622 (dynLambda!2685 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1147332 (= lt!512620 (getCurrentListMapNoExtraKeys!4649 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1147333 () Bool)

(declare-fun +!3548 (ListLongMap!16385 tuple2!18404) ListLongMap!16385)

(assert (=> b!1147333 (contains!6705 (+!3548 lt!512619 (tuple2!18405 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!512624 () Unit!37608)

(declare-fun call!52776 () Unit!37608)

(assert (=> b!1147333 (= lt!512624 call!52776)))

(assert (=> b!1147333 call!52769))

(assert (=> b!1147333 (= lt!512619 call!52774)))

(declare-fun lt!512618 () Unit!37608)

(declare-fun addStillContains!847 (ListLongMap!16385 (_ BitVec 64) V!43525 (_ BitVec 64)) Unit!37608)

(assert (=> b!1147333 (= lt!512618 (addStillContains!847 lt!512612 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1147333 (= e!652647 lt!512624)))

(declare-fun b!1147334 () Bool)

(declare-fun e!652653 () Unit!37608)

(declare-fun Unit!37611 () Unit!37608)

(assert (=> b!1147334 (= e!652653 Unit!37611)))

(declare-fun b!1147335 () Bool)

(declare-fun res!763777 () Bool)

(declare-fun e!652652 () Bool)

(assert (=> b!1147335 (=> (not res!763777) (not e!652652))))

(declare-datatypes ((List!25199 0))(
  ( (Nil!25196) (Cons!25195 (h!26404 (_ BitVec 64)) (t!36467 List!25199)) )
))
(declare-fun arrayNoDuplicates!0 (array!74402 (_ BitVec 32) List!25199) Bool)

(assert (=> b!1147335 (= res!763777 (arrayNoDuplicates!0 lt!512626 #b00000000000000000000000000000000 Nil!25196))))

(declare-fun e!652648 () Bool)

(declare-fun b!1147336 () Bool)

(assert (=> b!1147336 (= e!652648 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1147337 () Bool)

(declare-fun res!763766 () Bool)

(assert (=> b!1147337 (=> (not res!763766) (not e!652662))))

(assert (=> b!1147337 (= res!763766 (and (= (size!36386 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36385 _keys!1208) (size!36386 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1147338 () Bool)

(declare-fun Unit!37612 () Unit!37608)

(assert (=> b!1147338 (= e!652657 Unit!37612)))

(assert (=> b!1147338 (= lt!512627 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1147338 (= c!113228 (and (not lt!512627) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!512631 () Unit!37608)

(assert (=> b!1147338 (= lt!512631 e!652647)))

(declare-fun lt!512623 () Unit!37608)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!435 (array!74402 array!74404 (_ BitVec 32) (_ BitVec 32) V!43525 V!43525 (_ BitVec 64) (_ BitVec 32) Int) Unit!37608)

(assert (=> b!1147338 (= lt!512623 (lemmaListMapContainsThenArrayContainsFrom!435 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113227 () Bool)

(assert (=> b!1147338 (= c!113227 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!763765 () Bool)

(assert (=> b!1147338 (= res!763765 e!652651)))

(assert (=> b!1147338 (=> (not res!763765) (not e!652648))))

(assert (=> b!1147338 e!652648))

(declare-fun lt!512611 () Unit!37608)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74402 (_ BitVec 32) (_ BitVec 32)) Unit!37608)

(assert (=> b!1147338 (= lt!512611 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1147338 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25196)))

(declare-fun lt!512628 () Unit!37608)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74402 (_ BitVec 64) (_ BitVec 32) List!25199) Unit!37608)

(assert (=> b!1147338 (= lt!512628 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25196))))

(assert (=> b!1147338 false))

(declare-fun b!1147339 () Bool)

(declare-fun e!652650 () Bool)

(declare-fun e!652656 () Bool)

(assert (=> b!1147339 (= e!652650 (and e!652656 mapRes!45023))))

(declare-fun condMapEmpty!45023 () Bool)

(declare-fun mapDefault!45023 () ValueCell!13690)

