; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98666 () Bool)

(assert start!98666)

(declare-fun b_free!24235 () Bool)

(declare-fun b_next!24235 () Bool)

(assert (=> start!98666 (= b_free!24235 (not b_next!24235))))

(declare-fun tp!85416 () Bool)

(declare-fun b_and!39333 () Bool)

(assert (=> start!98666 (= tp!85416 b_and!39333)))

(declare-datatypes ((V!43481 0))(
  ( (V!43482 (val!14439 Int)) )
))
(declare-fun zeroValue!944 () V!43481)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18372 0))(
  ( (tuple2!18373 (_1!9196 (_ BitVec 64)) (_2!9196 V!43481)) )
))
(declare-datatypes ((List!25170 0))(
  ( (Nil!25167) (Cons!25166 (h!26375 tuple2!18372) (t!36404 List!25170)) )
))
(declare-datatypes ((ListLongMap!16353 0))(
  ( (ListLongMap!16354 (toList!8192 List!25170)) )
))
(declare-fun call!52366 () ListLongMap!16353)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13673 0))(
  ( (ValueCellFull!13673 (v!17077 V!43481)) (EmptyCell!13673) )
))
(declare-datatypes ((array!74336 0))(
  ( (array!74337 (arr!35815 (Array (_ BitVec 32) ValueCell!13673)) (size!36352 (_ BitVec 32))) )
))
(declare-fun lt!511558 () array!74336)

(declare-fun bm!52358 () Bool)

(declare-fun minValue!944 () V!43481)

(declare-datatypes ((array!74338 0))(
  ( (array!74339 (arr!35816 (Array (_ BitVec 32) (_ BitVec 64))) (size!36353 (_ BitVec 32))) )
))
(declare-fun lt!511557 () array!74338)

(declare-fun getCurrentListMapNoExtraKeys!4634 (array!74338 array!74336 (_ BitVec 32) (_ BitVec 32) V!43481 V!43481 (_ BitVec 32) Int) ListLongMap!16353)

(assert (=> bm!52358 (= call!52366 (getCurrentListMapNoExtraKeys!4634 lt!511557 lt!511558 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145758 () Bool)

(declare-fun res!763007 () Bool)

(declare-fun e!651788 () Bool)

(assert (=> b!1145758 (=> (not res!763007) (not e!651788))))

(declare-fun _keys!1208 () array!74338)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1145758 (= res!763007 (= (select (arr!35816 _keys!1208) i!673) k!934))))

(declare-fun b!1145759 () Bool)

(declare-fun e!651781 () Bool)

(declare-fun tp_is_empty!28765 () Bool)

(assert (=> b!1145759 (= e!651781 tp_is_empty!28765)))

(declare-fun b!1145760 () Bool)

(declare-datatypes ((Unit!37545 0))(
  ( (Unit!37546) )
))
(declare-fun e!651791 () Unit!37545)

(declare-fun Unit!37547 () Unit!37545)

(assert (=> b!1145760 (= e!651791 Unit!37547)))

(declare-fun lt!511548 () Bool)

(assert (=> b!1145760 (= lt!511548 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!112925 () Bool)

(assert (=> b!1145760 (= c!112925 (and (not lt!511548) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!511546 () Unit!37545)

(declare-fun e!651779 () Unit!37545)

(assert (=> b!1145760 (= lt!511546 e!651779)))

(declare-fun lt!511554 () Unit!37545)

(declare-fun _values!996 () array!74336)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!425 (array!74338 array!74336 (_ BitVec 32) (_ BitVec 32) V!43481 V!43481 (_ BitVec 64) (_ BitVec 32) Int) Unit!37545)

(assert (=> b!1145760 (= lt!511554 (lemmaListMapContainsThenArrayContainsFrom!425 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112926 () Bool)

(assert (=> b!1145760 (= c!112926 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!762999 () Bool)

(declare-fun e!651785 () Bool)

(assert (=> b!1145760 (= res!762999 e!651785)))

(declare-fun e!651789 () Bool)

(assert (=> b!1145760 (=> (not res!762999) (not e!651789))))

(assert (=> b!1145760 e!651789))

(declare-fun lt!511540 () Unit!37545)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74338 (_ BitVec 32) (_ BitVec 32)) Unit!37545)

(assert (=> b!1145760 (= lt!511540 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25171 0))(
  ( (Nil!25168) (Cons!25167 (h!26376 (_ BitVec 64)) (t!36405 List!25171)) )
))
(declare-fun arrayNoDuplicates!0 (array!74338 (_ BitVec 32) List!25171) Bool)

(assert (=> b!1145760 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25168)))

(declare-fun lt!511541 () Unit!37545)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74338 (_ BitVec 64) (_ BitVec 32) List!25171) Unit!37545)

(assert (=> b!1145760 (= lt!511541 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25168))))

(assert (=> b!1145760 false))

(declare-fun b!1145761 () Bool)

(declare-fun e!651790 () Bool)

(declare-fun e!651793 () Bool)

(assert (=> b!1145761 (= e!651790 (not e!651793))))

(declare-fun res!763010 () Bool)

(assert (=> b!1145761 (=> res!763010 e!651793)))

(assert (=> b!1145761 (= res!763010 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1145761 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!511543 () Unit!37545)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74338 (_ BitVec 64) (_ BitVec 32)) Unit!37545)

(assert (=> b!1145761 (= lt!511543 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1145762 () Bool)

(declare-fun e!651794 () Unit!37545)

(declare-fun Unit!37548 () Unit!37545)

(assert (=> b!1145762 (= e!651794 Unit!37548)))

(declare-fun b!1145763 () Bool)

(declare-fun res!763000 () Bool)

(assert (=> b!1145763 (=> (not res!763000) (not e!651788))))

(assert (=> b!1145763 (= res!763000 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25168))))

(declare-fun call!52362 () ListLongMap!16353)

(declare-fun lt!511553 () ListLongMap!16353)

(declare-fun lt!511544 () ListLongMap!16353)

(declare-fun c!112924 () Bool)

(declare-fun bm!52359 () Bool)

(declare-fun +!3534 (ListLongMap!16353 tuple2!18372) ListLongMap!16353)

(assert (=> bm!52359 (= call!52362 (+!3534 (ite c!112925 lt!511544 lt!511553) (ite c!112925 (tuple2!18373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112924 (tuple2!18373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun lt!511556 () ListLongMap!16353)

(declare-fun e!651792 () Bool)

(declare-fun b!1145764 () Bool)

(declare-fun -!1283 (ListLongMap!16353 (_ BitVec 64)) ListLongMap!16353)

(assert (=> b!1145764 (= e!651792 (= (-!1283 lt!511556 k!934) lt!511553))))

(declare-fun b!1145765 () Bool)

(declare-fun contains!6692 (ListLongMap!16353 (_ BitVec 64)) Bool)

(assert (=> b!1145765 (contains!6692 call!52362 k!934)))

(declare-fun lt!511549 () Unit!37545)

(declare-fun call!52367 () Unit!37545)

(assert (=> b!1145765 (= lt!511549 call!52367)))

(declare-fun call!52361 () Bool)

(assert (=> b!1145765 call!52361))

(assert (=> b!1145765 (= lt!511544 (+!3534 lt!511553 (tuple2!18373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!511552 () Unit!37545)

(declare-fun addStillContains!832 (ListLongMap!16353 (_ BitVec 64) V!43481 (_ BitVec 64)) Unit!37545)

(assert (=> b!1145765 (= lt!511552 (addStillContains!832 lt!511553 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1145765 (= e!651779 lt!511549)))

(declare-fun b!1145766 () Bool)

(declare-fun e!651783 () Bool)

(declare-fun call!52363 () ListLongMap!16353)

(assert (=> b!1145766 (= e!651783 (= call!52366 call!52363))))

(declare-fun bm!52360 () Bool)

(declare-fun call!52365 () ListLongMap!16353)

(assert (=> bm!52360 (= call!52365 call!52362)))

(declare-fun b!1145767 () Bool)

(declare-fun res!763009 () Bool)

(assert (=> b!1145767 (=> (not res!763009) (not e!651788))))

(assert (=> b!1145767 (= res!763009 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36353 _keys!1208))))))

(declare-fun res!763005 () Bool)

(assert (=> start!98666 (=> (not res!763005) (not e!651788))))

(assert (=> start!98666 (= res!763005 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36353 _keys!1208))))))

(assert (=> start!98666 e!651788))

(assert (=> start!98666 tp_is_empty!28765))

(declare-fun array_inv!27318 (array!74338) Bool)

(assert (=> start!98666 (array_inv!27318 _keys!1208)))

(assert (=> start!98666 true))

(assert (=> start!98666 tp!85416))

(declare-fun e!651787 () Bool)

(declare-fun array_inv!27319 (array!74336) Bool)

(assert (=> start!98666 (and (array_inv!27319 _values!996) e!651787)))

(declare-fun b!1145768 () Bool)

(declare-fun res!763013 () Bool)

(assert (=> b!1145768 (=> (not res!763013) (not e!651788))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1145768 (= res!763013 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!44972 () Bool)

(declare-fun mapRes!44972 () Bool)

(assert (=> mapIsEmpty!44972 mapRes!44972))

(declare-fun bm!52361 () Bool)

(assert (=> bm!52361 (= call!52363 (getCurrentListMapNoExtraKeys!4634 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145769 () Bool)

(assert (=> b!1145769 (= e!651783 (= call!52366 (-!1283 call!52363 k!934)))))

(declare-fun b!1145770 () Bool)

(assert (=> b!1145770 (= e!651789 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1145771 () Bool)

(assert (=> b!1145771 (= c!112924 (and (not lt!511548) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!651782 () Unit!37545)

(assert (=> b!1145771 (= e!651779 e!651782)))

(declare-fun mapNonEmpty!44972 () Bool)

(declare-fun tp!85417 () Bool)

(declare-fun e!651780 () Bool)

(assert (=> mapNonEmpty!44972 (= mapRes!44972 (and tp!85417 e!651780))))

(declare-fun mapKey!44972 () (_ BitVec 32))

(declare-fun mapValue!44972 () ValueCell!13673)

(declare-fun mapRest!44972 () (Array (_ BitVec 32) ValueCell!13673))

(assert (=> mapNonEmpty!44972 (= (arr!35815 _values!996) (store mapRest!44972 mapKey!44972 mapValue!44972))))

(declare-fun b!1145772 () Bool)

(declare-fun res!763004 () Bool)

(assert (=> b!1145772 (=> (not res!763004) (not e!651788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1145772 (= res!763004 (validMask!0 mask!1564))))

(declare-fun b!1145773 () Bool)

(declare-fun e!651786 () Bool)

(assert (=> b!1145773 (= e!651793 e!651786)))

(declare-fun res!763012 () Bool)

(assert (=> b!1145773 (=> res!763012 e!651786)))

(assert (=> b!1145773 (= res!763012 (not (= from!1455 i!673)))))

(declare-fun lt!511560 () ListLongMap!16353)

(assert (=> b!1145773 (= lt!511560 (getCurrentListMapNoExtraKeys!4634 lt!511557 lt!511558 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!511555 () V!43481)

(assert (=> b!1145773 (= lt!511558 (array!74337 (store (arr!35815 _values!996) i!673 (ValueCellFull!13673 lt!511555)) (size!36352 _values!996)))))

(declare-fun dynLambda!2676 (Int (_ BitVec 64)) V!43481)

(assert (=> b!1145773 (= lt!511555 (dynLambda!2676 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1145773 (= lt!511556 (getCurrentListMapNoExtraKeys!4634 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1145774 () Bool)

(declare-fun res!763001 () Bool)

(assert (=> b!1145774 (=> (not res!763001) (not e!651790))))

(assert (=> b!1145774 (= res!763001 (arrayNoDuplicates!0 lt!511557 #b00000000000000000000000000000000 Nil!25168))))

(declare-fun b!1145775 () Bool)

(declare-fun res!763006 () Bool)

(assert (=> b!1145775 (=> (not res!763006) (not e!651788))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74338 (_ BitVec 32)) Bool)

(assert (=> b!1145775 (= res!763006 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1145776 () Bool)

(declare-fun call!52368 () Bool)

(assert (=> b!1145776 call!52368))

(declare-fun lt!511545 () Unit!37545)

(declare-fun call!52364 () Unit!37545)

(assert (=> b!1145776 (= lt!511545 call!52364)))

(assert (=> b!1145776 (= e!651794 lt!511545)))

(declare-fun bm!52362 () Bool)

(assert (=> bm!52362 (= call!52361 (contains!6692 (ite c!112925 lt!511544 call!52365) k!934))))

(declare-fun b!1145777 () Bool)

(assert (=> b!1145777 (= e!651785 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!511548) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1145778 () Bool)

(assert (=> b!1145778 (= e!651788 e!651790)))

(declare-fun res!763008 () Bool)

(assert (=> b!1145778 (=> (not res!763008) (not e!651790))))

(assert (=> b!1145778 (= res!763008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!511557 mask!1564))))

(assert (=> b!1145778 (= lt!511557 (array!74339 (store (arr!35816 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36353 _keys!1208)))))

(declare-fun b!1145779 () Bool)

(assert (=> b!1145779 (= e!651782 e!651794)))

(declare-fun c!112923 () Bool)

(assert (=> b!1145779 (= c!112923 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!511548))))

(declare-fun bm!52363 () Bool)

(assert (=> bm!52363 (= call!52367 (addStillContains!832 (ite c!112925 lt!511544 lt!511553) (ite c!112925 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112924 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112925 minValue!944 (ite c!112924 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1145780 () Bool)

(assert (=> b!1145780 (= e!651787 (and e!651781 mapRes!44972))))

(declare-fun condMapEmpty!44972 () Bool)

(declare-fun mapDefault!44972 () ValueCell!13673)

