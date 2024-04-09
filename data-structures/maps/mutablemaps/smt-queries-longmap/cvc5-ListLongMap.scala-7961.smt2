; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98642 () Bool)

(assert start!98642)

(declare-fun b_free!24211 () Bool)

(declare-fun b_next!24211 () Bool)

(assert (=> start!98642 (= b_free!24211 (not b_next!24211))))

(declare-fun tp!85344 () Bool)

(declare-fun b_and!39285 () Bool)

(assert (=> start!98642 (= tp!85344 b_and!39285)))

(declare-fun b!1144654 () Bool)

(declare-fun res!762472 () Bool)

(declare-fun e!651170 () Bool)

(assert (=> b!1144654 (=> (not res!762472) (not e!651170))))

(declare-datatypes ((array!74290 0))(
  ( (array!74291 (arr!35792 (Array (_ BitVec 32) (_ BitVec 64))) (size!36329 (_ BitVec 32))) )
))
(declare-fun lt!510804 () array!74290)

(declare-datatypes ((List!25152 0))(
  ( (Nil!25149) (Cons!25148 (h!26357 (_ BitVec 64)) (t!36362 List!25152)) )
))
(declare-fun arrayNoDuplicates!0 (array!74290 (_ BitVec 32) List!25152) Bool)

(assert (=> b!1144654 (= res!762472 (arrayNoDuplicates!0 lt!510804 #b00000000000000000000000000000000 Nil!25149))))

(declare-fun b!1144655 () Bool)

(declare-fun c!112705 () Bool)

(declare-fun lt!510785 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1144655 (= c!112705 (and (not lt!510785) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!37503 0))(
  ( (Unit!37504) )
))
(declare-fun e!651171 () Unit!37503)

(declare-fun e!651182 () Unit!37503)

(assert (=> b!1144655 (= e!651171 e!651182)))

(declare-fun bm!52070 () Bool)

(declare-fun call!52080 () Bool)

(declare-fun call!52075 () Bool)

(assert (=> bm!52070 (= call!52080 call!52075)))

(declare-fun b!1144656 () Bool)

(declare-fun res!762460 () Bool)

(declare-fun e!651178 () Bool)

(assert (=> b!1144656 (=> (not res!762460) (not e!651178))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun _keys!1208 () array!74290)

(assert (=> b!1144656 (= res!762460 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36329 _keys!1208))))))

(declare-fun b!1144657 () Bool)

(declare-datatypes ((V!43449 0))(
  ( (V!43450 (val!14427 Int)) )
))
(declare-datatypes ((tuple2!18352 0))(
  ( (tuple2!18353 (_1!9186 (_ BitVec 64)) (_2!9186 V!43449)) )
))
(declare-datatypes ((List!25153 0))(
  ( (Nil!25150) (Cons!25149 (h!26358 tuple2!18352) (t!36363 List!25153)) )
))
(declare-datatypes ((ListLongMap!16333 0))(
  ( (ListLongMap!16334 (toList!8182 List!25153)) )
))
(declare-fun call!52079 () ListLongMap!16333)

(declare-fun e!651183 () Bool)

(declare-fun call!52074 () ListLongMap!16333)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1275 (ListLongMap!16333 (_ BitVec 64)) ListLongMap!16333)

(assert (=> b!1144657 (= e!651183 (= call!52079 (-!1275 call!52074 k!934)))))

(declare-fun zeroValue!944 () V!43449)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13661 0))(
  ( (ValueCellFull!13661 (v!17065 V!43449)) (EmptyCell!13661) )
))
(declare-datatypes ((array!74292 0))(
  ( (array!74293 (arr!35793 (Array (_ BitVec 32) ValueCell!13661)) (size!36330 (_ BitVec 32))) )
))
(declare-fun lt!510791 () array!74292)

(declare-fun minValue!944 () V!43449)

(declare-fun bm!52071 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4624 (array!74290 array!74292 (_ BitVec 32) (_ BitVec 32) V!43449 V!43449 (_ BitVec 32) Int) ListLongMap!16333)

(assert (=> bm!52071 (= call!52079 (getCurrentListMapNoExtraKeys!4624 lt!510804 lt!510791 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112707 () Bool)

(declare-fun call!52077 () ListLongMap!16333)

(declare-fun bm!52072 () Bool)

(declare-fun lt!510802 () ListLongMap!16333)

(declare-fun contains!6684 (ListLongMap!16333 (_ BitVec 64)) Bool)

(assert (=> bm!52072 (= call!52075 (contains!6684 (ite c!112707 lt!510802 call!52077) k!934))))

(declare-fun bm!52073 () Bool)

(declare-fun _values!996 () array!74292)

(assert (=> bm!52073 (= call!52074 (getCurrentListMapNoExtraKeys!4624 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144658 () Bool)

(declare-fun lt!510795 () Unit!37503)

(assert (=> b!1144658 (= e!651182 lt!510795)))

(declare-fun call!52076 () Unit!37503)

(assert (=> b!1144658 (= lt!510795 call!52076)))

(assert (=> b!1144658 call!52080))

(declare-fun b!1144659 () Bool)

(assert (=> b!1144659 (= e!651178 e!651170)))

(declare-fun res!762468 () Bool)

(assert (=> b!1144659 (=> (not res!762468) (not e!651170))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74290 (_ BitVec 32)) Bool)

(assert (=> b!1144659 (= res!762468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!510804 mask!1564))))

(assert (=> b!1144659 (= lt!510804 (array!74291 (store (arr!35792 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36329 _keys!1208)))))

(declare-fun b!1144660 () Bool)

(declare-fun e!651169 () Bool)

(declare-fun lt!510787 () ListLongMap!16333)

(declare-fun lt!510788 () ListLongMap!16333)

(assert (=> b!1144660 (= e!651169 (= (-!1275 lt!510788 k!934) lt!510787))))

(declare-fun b!1144661 () Bool)

(declare-fun e!651177 () Bool)

(declare-fun arrayContainsKey!0 (array!74290 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1144661 (= e!651177 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1144662 () Bool)

(declare-fun e!651181 () Bool)

(declare-fun tp_is_empty!28741 () Bool)

(assert (=> b!1144662 (= e!651181 tp_is_empty!28741)))

(declare-fun bm!52074 () Bool)

(declare-fun call!52078 () Unit!37503)

(declare-fun addStillContains!823 (ListLongMap!16333 (_ BitVec 64) V!43449 (_ BitVec 64)) Unit!37503)

(assert (=> bm!52074 (= call!52078 (addStillContains!823 (ite c!112707 lt!510802 lt!510787) (ite c!112707 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112705 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112707 minValue!944 (ite c!112705 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1144663 () Bool)

(assert (=> b!1144663 call!52080))

(declare-fun lt!510784 () Unit!37503)

(assert (=> b!1144663 (= lt!510784 call!52076)))

(declare-fun e!651168 () Unit!37503)

(assert (=> b!1144663 (= e!651168 lt!510784)))

(declare-fun b!1144664 () Bool)

(declare-fun e!651175 () Bool)

(assert (=> b!1144664 (= e!651175 tp_is_empty!28741)))

(declare-fun mapNonEmpty!44936 () Bool)

(declare-fun mapRes!44936 () Bool)

(declare-fun tp!85345 () Bool)

(assert (=> mapNonEmpty!44936 (= mapRes!44936 (and tp!85345 e!651175))))

(declare-fun mapValue!44936 () ValueCell!13661)

(declare-fun mapKey!44936 () (_ BitVec 32))

(declare-fun mapRest!44936 () (Array (_ BitVec 32) ValueCell!13661))

(assert (=> mapNonEmpty!44936 (= (arr!35793 _values!996) (store mapRest!44936 mapKey!44936 mapValue!44936))))

(declare-fun b!1144665 () Bool)

(declare-fun res!762459 () Bool)

(assert (=> b!1144665 (=> (not res!762459) (not e!651178))))

(assert (=> b!1144665 (= res!762459 (and (= (size!36330 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36329 _keys!1208) (size!36330 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1144666 () Bool)

(declare-fun e!651179 () Unit!37503)

(declare-fun Unit!37505 () Unit!37503)

(assert (=> b!1144666 (= e!651179 Unit!37505)))

(assert (=> b!1144666 (= lt!510785 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1144666 (= c!112707 (and (not lt!510785) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!510801 () Unit!37503)

(assert (=> b!1144666 (= lt!510801 e!651171)))

(declare-fun lt!510800 () Unit!37503)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!418 (array!74290 array!74292 (_ BitVec 32) (_ BitVec 32) V!43449 V!43449 (_ BitVec 64) (_ BitVec 32) Int) Unit!37503)

(assert (=> b!1144666 (= lt!510800 (lemmaListMapContainsThenArrayContainsFrom!418 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112708 () Bool)

(assert (=> b!1144666 (= c!112708 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!762471 () Bool)

(declare-fun e!651174 () Bool)

(assert (=> b!1144666 (= res!762471 e!651174)))

(assert (=> b!1144666 (=> (not res!762471) (not e!651177))))

(assert (=> b!1144666 e!651177))

(declare-fun lt!510793 () Unit!37503)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74290 (_ BitVec 32) (_ BitVec 32)) Unit!37503)

(assert (=> b!1144666 (= lt!510793 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1144666 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25149)))

(declare-fun lt!510799 () Unit!37503)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74290 (_ BitVec 64) (_ BitVec 32) List!25152) Unit!37503)

(assert (=> b!1144666 (= lt!510799 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25149))))

(assert (=> b!1144666 false))

(declare-fun b!1144667 () Bool)

(assert (=> b!1144667 (= e!651183 (= call!52079 call!52074))))

(declare-fun b!1144668 () Bool)

(declare-fun e!651167 () Bool)

(assert (=> b!1144668 (= e!651170 (not e!651167))))

(declare-fun res!762470 () Bool)

(assert (=> b!1144668 (=> res!762470 e!651167)))

(assert (=> b!1144668 (= res!762470 (bvsgt from!1455 i!673))))

(assert (=> b!1144668 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!510792 () Unit!37503)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74290 (_ BitVec 64) (_ BitVec 32)) Unit!37503)

(assert (=> b!1144668 (= lt!510792 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1144669 () Bool)

(assert (=> b!1144669 (= e!651182 e!651168)))

(declare-fun c!112706 () Bool)

(assert (=> b!1144669 (= c!112706 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!510785))))

(declare-fun res!762467 () Bool)

(assert (=> start!98642 (=> (not res!762467) (not e!651178))))

(assert (=> start!98642 (= res!762467 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36329 _keys!1208))))))

(assert (=> start!98642 e!651178))

(assert (=> start!98642 tp_is_empty!28741))

(declare-fun array_inv!27302 (array!74290) Bool)

(assert (=> start!98642 (array_inv!27302 _keys!1208)))

(assert (=> start!98642 true))

(assert (=> start!98642 tp!85344))

(declare-fun e!651173 () Bool)

(declare-fun array_inv!27303 (array!74292) Bool)

(assert (=> start!98642 (and (array_inv!27303 _values!996) e!651173)))

(declare-fun b!1144670 () Bool)

(declare-fun res!762462 () Bool)

(assert (=> b!1144670 (=> (not res!762462) (not e!651178))))

(assert (=> b!1144670 (= res!762462 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25149))))

(declare-fun b!1144671 () Bool)

(declare-fun Unit!37506 () Unit!37503)

(assert (=> b!1144671 (= e!651168 Unit!37506)))

(declare-fun b!1144672 () Bool)

(declare-fun e!651180 () Bool)

(assert (=> b!1144672 (= e!651167 e!651180)))

(declare-fun res!762465 () Bool)

(assert (=> b!1144672 (=> res!762465 e!651180)))

(assert (=> b!1144672 (= res!762465 (not (= from!1455 i!673)))))

(declare-fun lt!510798 () ListLongMap!16333)

(assert (=> b!1144672 (= lt!510798 (getCurrentListMapNoExtraKeys!4624 lt!510804 lt!510791 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!510786 () V!43449)

(assert (=> b!1144672 (= lt!510791 (array!74293 (store (arr!35793 _values!996) i!673 (ValueCellFull!13661 lt!510786)) (size!36330 _values!996)))))

(declare-fun dynLambda!2669 (Int (_ BitVec 64)) V!43449)

(assert (=> b!1144672 (= lt!510786 (dynLambda!2669 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1144672 (= lt!510788 (getCurrentListMapNoExtraKeys!4624 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1144673 () Bool)

(declare-fun res!762461 () Bool)

(assert (=> b!1144673 (=> (not res!762461) (not e!651178))))

(assert (=> b!1144673 (= res!762461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1144674 () Bool)

(assert (=> b!1144674 (= e!651174 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!510785) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1144675 () Bool)

(declare-fun res!762463 () Bool)

(assert (=> b!1144675 (=> (not res!762463) (not e!651178))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1144675 (= res!762463 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!44936 () Bool)

(assert (=> mapIsEmpty!44936 mapRes!44936))

(declare-fun b!1144676 () Bool)

(declare-fun e!651172 () Bool)

(assert (=> b!1144676 (= e!651172 true)))

(assert (=> b!1144676 e!651169))

(declare-fun res!762464 () Bool)

(assert (=> b!1144676 (=> (not res!762464) (not e!651169))))

(declare-fun lt!510789 () V!43449)

(declare-fun +!3526 (ListLongMap!16333 tuple2!18352) ListLongMap!16333)

(assert (=> b!1144676 (= res!762464 (= (-!1275 (+!3526 lt!510787 (tuple2!18353 (select (arr!35792 _keys!1208) from!1455) lt!510789)) (select (arr!35792 _keys!1208) from!1455)) lt!510787))))

(declare-fun lt!510790 () Unit!37503)

(declare-fun addThenRemoveForNewKeyIsSame!130 (ListLongMap!16333 (_ BitVec 64) V!43449) Unit!37503)

(assert (=> b!1144676 (= lt!510790 (addThenRemoveForNewKeyIsSame!130 lt!510787 (select (arr!35792 _keys!1208) from!1455) lt!510789))))

(declare-fun get!18222 (ValueCell!13661 V!43449) V!43449)

(assert (=> b!1144676 (= lt!510789 (get!18222 (select (arr!35793 _values!996) from!1455) lt!510786))))

(declare-fun lt!510796 () Unit!37503)

(assert (=> b!1144676 (= lt!510796 e!651179)))

(declare-fun c!112710 () Bool)

(assert (=> b!1144676 (= c!112710 (contains!6684 lt!510787 k!934))))

(assert (=> b!1144676 (= lt!510787 (getCurrentListMapNoExtraKeys!4624 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1144677 () Bool)

(declare-fun res!762466 () Bool)

(assert (=> b!1144677 (=> (not res!762466) (not e!651178))))

(assert (=> b!1144677 (= res!762466 (= (select (arr!35792 _keys!1208) i!673) k!934))))

(declare-fun bm!52075 () Bool)

(assert (=> bm!52075 (= call!52076 call!52078)))

(declare-fun b!1144678 () Bool)

(declare-fun call!52073 () ListLongMap!16333)

(assert (=> b!1144678 (contains!6684 call!52073 k!934)))

(declare-fun lt!510803 () Unit!37503)

(assert (=> b!1144678 (= lt!510803 call!52078)))

(assert (=> b!1144678 call!52075))

(assert (=> b!1144678 (= lt!510802 (+!3526 lt!510787 (tuple2!18353 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!510797 () Unit!37503)

(assert (=> b!1144678 (= lt!510797 (addStillContains!823 lt!510787 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1144678 (= e!651171 lt!510803)))

(declare-fun b!1144679 () Bool)

(assert (=> b!1144679 (= e!651173 (and e!651181 mapRes!44936))))

(declare-fun condMapEmpty!44936 () Bool)

(declare-fun mapDefault!44936 () ValueCell!13661)

