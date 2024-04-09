; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98816 () Bool)

(assert start!98816)

(declare-fun b_free!24385 () Bool)

(declare-fun b_next!24385 () Bool)

(assert (=> start!98816 (= b_free!24385 (not b_next!24385))))

(declare-fun tp!85867 () Bool)

(declare-fun b_and!39633 () Bool)

(assert (=> start!98816 (= tp!85867 b_and!39633)))

(declare-fun b!1152658 () Bool)

(declare-fun e!655609 () Bool)

(declare-datatypes ((V!43681 0))(
  ( (V!43682 (val!14514 Int)) )
))
(declare-datatypes ((tuple2!18510 0))(
  ( (tuple2!18511 (_1!9265 (_ BitVec 64)) (_2!9265 V!43681)) )
))
(declare-datatypes ((List!25300 0))(
  ( (Nil!25297) (Cons!25296 (h!26505 tuple2!18510) (t!36684 List!25300)) )
))
(declare-datatypes ((ListLongMap!16491 0))(
  ( (ListLongMap!16492 (toList!8261 List!25300)) )
))
(declare-fun call!54163 () ListLongMap!16491)

(declare-fun call!54168 () ListLongMap!16491)

(assert (=> b!1152658 (= e!655609 (= call!54163 call!54168))))

(declare-fun zeroValue!944 () V!43681)

(declare-datatypes ((ValueCell!13748 0))(
  ( (ValueCellFull!13748 (v!17152 V!43681)) (EmptyCell!13748) )
))
(declare-datatypes ((array!74628 0))(
  ( (array!74629 (arr!35961 (Array (_ BitVec 32) ValueCell!13748)) (size!36498 (_ BitVec 32))) )
))
(declare-fun lt!516387 () array!74628)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((array!74630 0))(
  ( (array!74631 (arr!35962 (Array (_ BitVec 32) (_ BitVec 64))) (size!36499 (_ BitVec 32))) )
))
(declare-fun lt!516400 () array!74630)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!54158 () Bool)

(declare-fun minValue!944 () V!43681)

(declare-fun getCurrentListMapNoExtraKeys!4701 (array!74630 array!74628 (_ BitVec 32) (_ BitVec 32) V!43681 V!43681 (_ BitVec 32) Int) ListLongMap!16491)

(assert (=> bm!54158 (= call!54163 (getCurrentListMapNoExtraKeys!4701 lt!516400 lt!516387 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1152659 () Bool)

(declare-fun res!766388 () Bool)

(declare-fun e!655613 () Bool)

(assert (=> b!1152659 (=> (not res!766388) (not e!655613))))

(declare-fun _keys!1208 () array!74630)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1152659 (= res!766388 (= (select (arr!35962 _keys!1208) i!673) k!934))))

(declare-fun b!1152660 () Bool)

(declare-fun e!655618 () Bool)

(declare-fun lt!516390 () Bool)

(assert (=> b!1152660 (= e!655618 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!516390) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!45197 () Bool)

(declare-fun mapRes!45197 () Bool)

(declare-fun tp!85866 () Bool)

(declare-fun e!655619 () Bool)

(assert (=> mapNonEmpty!45197 (= mapRes!45197 (and tp!85866 e!655619))))

(declare-fun mapRest!45197 () (Array (_ BitVec 32) ValueCell!13748))

(declare-fun mapKey!45197 () (_ BitVec 32))

(declare-fun _values!996 () array!74628)

(declare-fun mapValue!45197 () ValueCell!13748)

(assert (=> mapNonEmpty!45197 (= (arr!35961 _values!996) (store mapRest!45197 mapKey!45197 mapValue!45197))))

(declare-fun res!766376 () Bool)

(assert (=> start!98816 (=> (not res!766376) (not e!655613))))

(assert (=> start!98816 (= res!766376 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36499 _keys!1208))))))

(assert (=> start!98816 e!655613))

(declare-fun tp_is_empty!28915 () Bool)

(assert (=> start!98816 tp_is_empty!28915))

(declare-fun array_inv!27410 (array!74630) Bool)

(assert (=> start!98816 (array_inv!27410 _keys!1208)))

(assert (=> start!98816 true))

(assert (=> start!98816 tp!85867))

(declare-fun e!655620 () Bool)

(declare-fun array_inv!27411 (array!74628) Bool)

(assert (=> start!98816 (and (array_inv!27411 _values!996) e!655620)))

(declare-fun b!1152661 () Bool)

(declare-fun res!766381 () Bool)

(assert (=> b!1152661 (=> (not res!766381) (not e!655613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1152661 (= res!766381 (validMask!0 mask!1564))))

(declare-fun bm!54159 () Bool)

(declare-fun call!54161 () Bool)

(declare-fun call!54165 () Bool)

(assert (=> bm!54159 (= call!54161 call!54165)))

(declare-fun b!1152662 () Bool)

(declare-fun res!766383 () Bool)

(assert (=> b!1152662 (=> (not res!766383) (not e!655613))))

(assert (=> b!1152662 (= res!766383 (and (= (size!36498 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36499 _keys!1208) (size!36498 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!45197 () Bool)

(assert (=> mapIsEmpty!45197 mapRes!45197))

(declare-fun b!1152663 () Bool)

(declare-datatypes ((Unit!37837 0))(
  ( (Unit!37838) )
))
(declare-fun e!655615 () Unit!37837)

(declare-fun e!655604 () Unit!37837)

(assert (=> b!1152663 (= e!655615 e!655604)))

(declare-fun c!114275 () Bool)

(assert (=> b!1152663 (= c!114275 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!516390))))

(declare-fun b!1152664 () Bool)

(assert (=> b!1152664 call!54161))

(declare-fun lt!516401 () Unit!37837)

(declare-fun call!54162 () Unit!37837)

(assert (=> b!1152664 (= lt!516401 call!54162)))

(assert (=> b!1152664 (= e!655604 lt!516401)))

(declare-fun b!1152665 () Bool)

(declare-fun res!766375 () Bool)

(assert (=> b!1152665 (=> (not res!766375) (not e!655613))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1152665 (= res!766375 (validKeyInArray!0 k!934))))

(declare-fun b!1152666 () Bool)

(declare-fun lt!516391 () Unit!37837)

(assert (=> b!1152666 (= e!655615 lt!516391)))

(assert (=> b!1152666 (= lt!516391 call!54162)))

(assert (=> b!1152666 call!54161))

(declare-fun c!114273 () Bool)

(declare-fun call!54164 () ListLongMap!16491)

(declare-fun bm!54160 () Bool)

(declare-fun lt!516399 () ListLongMap!16491)

(declare-fun contains!6754 (ListLongMap!16491 (_ BitVec 64)) Bool)

(assert (=> bm!54160 (= call!54165 (contains!6754 (ite c!114273 lt!516399 call!54164) k!934))))

(declare-fun b!1152667 () Bool)

(assert (=> b!1152667 (= e!655619 tp_is_empty!28915)))

(declare-fun b!1152668 () Bool)

(declare-fun e!655611 () Bool)

(assert (=> b!1152668 (= e!655611 tp_is_empty!28915)))

(declare-fun b!1152669 () Bool)

(declare-fun arrayContainsKey!0 (array!74630 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1152669 (= e!655618 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!516393 () ListLongMap!16491)

(declare-fun e!655617 () Bool)

(declare-fun b!1152670 () Bool)

(assert (=> b!1152670 (= e!655617 (= lt!516393 (getCurrentListMapNoExtraKeys!4701 lt!516400 lt!516387 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1152671 () Bool)

(declare-fun e!655605 () Bool)

(declare-fun e!655610 () Bool)

(assert (=> b!1152671 (= e!655605 (not e!655610))))

(declare-fun res!766387 () Bool)

(assert (=> b!1152671 (=> res!766387 e!655610)))

(assert (=> b!1152671 (= res!766387 (bvsgt from!1455 i!673))))

(assert (=> b!1152671 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!516389 () Unit!37837)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74630 (_ BitVec 64) (_ BitVec 32)) Unit!37837)

(assert (=> b!1152671 (= lt!516389 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1152672 () Bool)

(declare-fun res!766382 () Bool)

(assert (=> b!1152672 (=> (not res!766382) (not e!655605))))

(declare-datatypes ((List!25301 0))(
  ( (Nil!25298) (Cons!25297 (h!26506 (_ BitVec 64)) (t!36685 List!25301)) )
))
(declare-fun arrayNoDuplicates!0 (array!74630 (_ BitVec 32) List!25301) Bool)

(assert (=> b!1152672 (= res!766382 (arrayNoDuplicates!0 lt!516400 #b00000000000000000000000000000000 Nil!25298))))

(declare-fun bm!54161 () Bool)

(assert (=> bm!54161 (= call!54168 (getCurrentListMapNoExtraKeys!4701 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1152673 () Bool)

(declare-fun e!655607 () Unit!37837)

(declare-fun Unit!37839 () Unit!37837)

(assert (=> b!1152673 (= e!655607 Unit!37839)))

(assert (=> b!1152673 (= lt!516390 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1152673 (= c!114273 (and (not lt!516390) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!516392 () Unit!37837)

(declare-fun e!655612 () Unit!37837)

(assert (=> b!1152673 (= lt!516392 e!655612)))

(declare-fun lt!516403 () Unit!37837)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!478 (array!74630 array!74628 (_ BitVec 32) (_ BitVec 32) V!43681 V!43681 (_ BitVec 64) (_ BitVec 32) Int) Unit!37837)

(assert (=> b!1152673 (= lt!516403 (lemmaListMapContainsThenArrayContainsFrom!478 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114272 () Bool)

(assert (=> b!1152673 (= c!114272 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!766374 () Bool)

(assert (=> b!1152673 (= res!766374 e!655618)))

(declare-fun e!655616 () Bool)

(assert (=> b!1152673 (=> (not res!766374) (not e!655616))))

(assert (=> b!1152673 e!655616))

(declare-fun lt!516397 () Unit!37837)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74630 (_ BitVec 32) (_ BitVec 32)) Unit!37837)

(assert (=> b!1152673 (= lt!516397 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1152673 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25298)))

(declare-fun lt!516398 () Unit!37837)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74630 (_ BitVec 64) (_ BitVec 32) List!25301) Unit!37837)

(assert (=> b!1152673 (= lt!516398 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25298))))

(assert (=> b!1152673 false))

(declare-fun bm!54162 () Bool)

(declare-fun call!54166 () ListLongMap!16491)

(assert (=> bm!54162 (= call!54164 call!54166)))

(declare-fun b!1152674 () Bool)

(declare-fun e!655608 () Bool)

(assert (=> b!1152674 (= e!655610 e!655608)))

(declare-fun res!766386 () Bool)

(assert (=> b!1152674 (=> res!766386 e!655608)))

(assert (=> b!1152674 (= res!766386 (not (= from!1455 i!673)))))

(declare-fun lt!516386 () ListLongMap!16491)

(assert (=> b!1152674 (= lt!516386 (getCurrentListMapNoExtraKeys!4701 lt!516400 lt!516387 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!516404 () V!43681)

(assert (=> b!1152674 (= lt!516387 (array!74629 (store (arr!35961 _values!996) i!673 (ValueCellFull!13748 lt!516404)) (size!36498 _values!996)))))

(declare-fun dynLambda!2725 (Int (_ BitVec 64)) V!43681)

(assert (=> b!1152674 (= lt!516404 (dynLambda!2725 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!516385 () ListLongMap!16491)

(assert (=> b!1152674 (= lt!516385 (getCurrentListMapNoExtraKeys!4701 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1152675 () Bool)

(declare-fun res!766385 () Bool)

(assert (=> b!1152675 (=> (not res!766385) (not e!655613))))

(assert (=> b!1152675 (= res!766385 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25298))))

(declare-fun b!1152676 () Bool)

(declare-fun res!766380 () Bool)

(assert (=> b!1152676 (=> (not res!766380) (not e!655613))))

(assert (=> b!1152676 (= res!766380 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36499 _keys!1208))))))

(declare-fun b!1152677 () Bool)

(declare-fun Unit!37840 () Unit!37837)

(assert (=> b!1152677 (= e!655604 Unit!37840)))

(declare-fun b!1152678 () Bool)

(declare-fun res!766384 () Bool)

(assert (=> b!1152678 (=> (not res!766384) (not e!655613))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74630 (_ BitVec 32)) Bool)

(assert (=> b!1152678 (= res!766384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1152679 () Bool)

(declare-fun +!3596 (ListLongMap!16491 tuple2!18510) ListLongMap!16491)

(assert (=> b!1152679 (contains!6754 (+!3596 lt!516399 (tuple2!18511 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!516402 () Unit!37837)

(declare-fun addStillContains!894 (ListLongMap!16491 (_ BitVec 64) V!43681 (_ BitVec 64)) Unit!37837)

(assert (=> b!1152679 (= lt!516402 (addStillContains!894 lt!516399 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1152679 call!54165))

(assert (=> b!1152679 (= lt!516399 call!54166)))

(declare-fun lt!516396 () Unit!37837)

(declare-fun call!54167 () Unit!37837)

(assert (=> b!1152679 (= lt!516396 call!54167)))

(assert (=> b!1152679 (= e!655612 lt!516402)))

(declare-fun b!1152680 () Bool)

(assert (=> b!1152680 (= e!655620 (and e!655611 mapRes!45197))))

(declare-fun condMapEmpty!45197 () Bool)

(declare-fun mapDefault!45197 () ValueCell!13748)

