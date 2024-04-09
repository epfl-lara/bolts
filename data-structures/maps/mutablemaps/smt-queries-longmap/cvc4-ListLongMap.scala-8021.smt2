; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99006 () Bool)

(assert start!99006)

(declare-fun b_free!24575 () Bool)

(declare-fun b_next!24575 () Bool)

(assert (=> start!99006 (= b_free!24575 (not b_next!24575))))

(declare-fun tp!86436 () Bool)

(declare-fun b_and!40013 () Bool)

(assert (=> start!99006 (= tp!86436 b_and!40013)))

(declare-fun b!1161398 () Bool)

(declare-fun c!115983 () Bool)

(declare-fun lt!522674 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1161398 (= c!115983 (and (not lt!522674) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!38203 0))(
  ( (Unit!38204) )
))
(declare-fun e!660459 () Unit!38203)

(declare-fun e!660458 () Unit!38203)

(assert (=> b!1161398 (= e!660459 e!660458)))

(declare-fun b!1161399 () Bool)

(declare-fun res!770662 () Bool)

(declare-fun e!660465 () Bool)

(assert (=> b!1161399 (=> (not res!770662) (not e!660465))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1161399 (= res!770662 (validKeyInArray!0 k!934))))

(declare-fun b!1161400 () Bool)

(declare-fun res!770655 () Bool)

(declare-fun e!660450 () Bool)

(assert (=> b!1161400 (=> (not res!770655) (not e!660450))))

(declare-datatypes ((array!75000 0))(
  ( (array!75001 (arr!36147 (Array (_ BitVec 32) (_ BitVec 64))) (size!36684 (_ BitVec 32))) )
))
(declare-fun lt!522664 () array!75000)

(declare-datatypes ((List!25466 0))(
  ( (Nil!25463) (Cons!25462 (h!26671 (_ BitVec 64)) (t!37040 List!25466)) )
))
(declare-fun arrayNoDuplicates!0 (array!75000 (_ BitVec 32) List!25466) Bool)

(assert (=> b!1161400 (= res!770655 (arrayNoDuplicates!0 lt!522664 #b00000000000000000000000000000000 Nil!25463))))

(declare-fun b!1161401 () Bool)

(declare-fun e!660452 () Unit!38203)

(declare-fun Unit!38205 () Unit!38203)

(assert (=> b!1161401 (= e!660452 Unit!38205)))

(declare-fun b!1161402 () Bool)

(declare-fun res!770658 () Bool)

(assert (=> b!1161402 (=> (not res!770658) (not e!660465))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!43933 0))(
  ( (V!43934 (val!14609 Int)) )
))
(declare-datatypes ((ValueCell!13843 0))(
  ( (ValueCellFull!13843 (v!17247 V!43933)) (EmptyCell!13843) )
))
(declare-datatypes ((array!75002 0))(
  ( (array!75003 (arr!36148 (Array (_ BitVec 32) ValueCell!13843)) (size!36685 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75002)

(declare-fun _keys!1208 () array!75000)

(assert (=> b!1161402 (= res!770658 (and (= (size!36685 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36684 _keys!1208) (size!36685 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1161404 () Bool)

(declare-fun e!660451 () Bool)

(declare-fun e!660454 () Bool)

(assert (=> b!1161404 (= e!660451 e!660454)))

(declare-fun res!770663 () Bool)

(assert (=> b!1161404 (=> res!770663 e!660454)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1161404 (= res!770663 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!43933)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18688 0))(
  ( (tuple2!18689 (_1!9354 (_ BitVec 64)) (_2!9354 V!43933)) )
))
(declare-datatypes ((List!25467 0))(
  ( (Nil!25464) (Cons!25463 (h!26672 tuple2!18688) (t!37041 List!25467)) )
))
(declare-datatypes ((ListLongMap!16669 0))(
  ( (ListLongMap!16670 (toList!8350 List!25467)) )
))
(declare-fun lt!522655 () ListLongMap!16669)

(declare-fun lt!522672 () array!75002)

(declare-fun minValue!944 () V!43933)

(declare-fun getCurrentListMapNoExtraKeys!4785 (array!75000 array!75002 (_ BitVec 32) (_ BitVec 32) V!43933 V!43933 (_ BitVec 32) Int) ListLongMap!16669)

(assert (=> b!1161404 (= lt!522655 (getCurrentListMapNoExtraKeys!4785 lt!522664 lt!522672 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!522670 () V!43933)

(assert (=> b!1161404 (= lt!522672 (array!75003 (store (arr!36148 _values!996) i!673 (ValueCellFull!13843 lt!522670)) (size!36685 _values!996)))))

(declare-fun dynLambda!2786 (Int (_ BitVec 64)) V!43933)

(assert (=> b!1161404 (= lt!522670 (dynLambda!2786 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!522662 () ListLongMap!16669)

(assert (=> b!1161404 (= lt!522662 (getCurrentListMapNoExtraKeys!4785 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1161405 () Bool)

(declare-fun e!660457 () Bool)

(assert (=> b!1161405 (= e!660454 e!660457)))

(declare-fun res!770651 () Bool)

(assert (=> b!1161405 (=> res!770651 e!660457)))

(assert (=> b!1161405 (= res!770651 (not (= (select (arr!36147 _keys!1208) from!1455) k!934)))))

(declare-fun e!660463 () Bool)

(assert (=> b!1161405 e!660463))

(declare-fun c!115984 () Bool)

(assert (=> b!1161405 (= c!115984 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!522659 () Unit!38203)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!644 (array!75000 array!75002 (_ BitVec 32) (_ BitVec 32) V!43933 V!43933 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38203)

(assert (=> b!1161405 (= lt!522659 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!644 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115981 () Bool)

(declare-fun lt!522669 () ListLongMap!16669)

(declare-fun lt!522663 () ListLongMap!16669)

(declare-fun call!56447 () ListLongMap!16669)

(declare-fun bm!56438 () Bool)

(declare-fun +!3674 (ListLongMap!16669 tuple2!18688) ListLongMap!16669)

(assert (=> bm!56438 (= call!56447 (+!3674 (ite c!115981 lt!522663 lt!522669) (ite c!115981 (tuple2!18689 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!115983 (tuple2!18689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18689 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun bm!56439 () Bool)

(declare-fun call!56444 () Bool)

(declare-fun call!56441 () Bool)

(assert (=> bm!56439 (= call!56444 call!56441)))

(declare-fun bm!56440 () Bool)

(declare-fun call!56448 () ListLongMap!16669)

(declare-fun contains!6830 (ListLongMap!16669 (_ BitVec 64)) Bool)

(assert (=> bm!56440 (= call!56441 (contains!6830 (ite c!115981 lt!522663 call!56448) k!934))))

(declare-fun b!1161406 () Bool)

(assert (=> b!1161406 (contains!6830 call!56447 k!934)))

(declare-fun lt!522666 () Unit!38203)

(declare-fun call!56445 () Unit!38203)

(assert (=> b!1161406 (= lt!522666 call!56445)))

(assert (=> b!1161406 call!56441))

(assert (=> b!1161406 (= lt!522663 (+!3674 lt!522669 (tuple2!18689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!522661 () Unit!38203)

(declare-fun addStillContains!972 (ListLongMap!16669 (_ BitVec 64) V!43933 (_ BitVec 64)) Unit!38203)

(assert (=> b!1161406 (= lt!522661 (addStillContains!972 lt!522669 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1161406 (= e!660459 lt!522666)))

(declare-fun mapNonEmpty!45482 () Bool)

(declare-fun mapRes!45482 () Bool)

(declare-fun tp!86437 () Bool)

(declare-fun e!660449 () Bool)

(assert (=> mapNonEmpty!45482 (= mapRes!45482 (and tp!86437 e!660449))))

(declare-fun mapRest!45482 () (Array (_ BitVec 32) ValueCell!13843))

(declare-fun mapKey!45482 () (_ BitVec 32))

(declare-fun mapValue!45482 () ValueCell!13843)

(assert (=> mapNonEmpty!45482 (= (arr!36148 _values!996) (store mapRest!45482 mapKey!45482 mapValue!45482))))

(declare-fun b!1161407 () Bool)

(declare-fun res!770649 () Bool)

(assert (=> b!1161407 (=> (not res!770649) (not e!660465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1161407 (= res!770649 (validMask!0 mask!1564))))

(declare-fun call!56442 () ListLongMap!16669)

(declare-fun bm!56441 () Bool)

(assert (=> bm!56441 (= call!56442 (getCurrentListMapNoExtraKeys!4785 lt!522664 lt!522672 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1161408 () Bool)

(assert (=> b!1161408 (= e!660465 e!660450)))

(declare-fun res!770660 () Bool)

(assert (=> b!1161408 (=> (not res!770660) (not e!660450))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75000 (_ BitVec 32)) Bool)

(assert (=> b!1161408 (= res!770660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!522664 mask!1564))))

(assert (=> b!1161408 (= lt!522664 (array!75001 (store (arr!36147 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36684 _keys!1208)))))

(declare-fun b!1161409 () Bool)

(declare-fun e!660461 () Bool)

(assert (=> b!1161409 (= e!660461 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!522674) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!45482 () Bool)

(assert (=> mapIsEmpty!45482 mapRes!45482))

(declare-fun bm!56442 () Bool)

(assert (=> bm!56442 (= call!56445 (addStillContains!972 (ite c!115981 lt!522663 lt!522669) (ite c!115981 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!115983 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!115981 minValue!944 (ite c!115983 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1161410 () Bool)

(assert (=> b!1161410 (= e!660457 true)))

(declare-fun e!660455 () Bool)

(assert (=> b!1161410 e!660455))

(declare-fun res!770654 () Bool)

(assert (=> b!1161410 (=> (not res!770654) (not e!660455))))

(declare-fun lt!522654 () ListLongMap!16669)

(assert (=> b!1161410 (= res!770654 (= lt!522654 lt!522669))))

(declare-fun -!1420 (ListLongMap!16669 (_ BitVec 64)) ListLongMap!16669)

(assert (=> b!1161410 (= lt!522654 (-!1420 lt!522662 k!934))))

(declare-fun lt!522671 () V!43933)

(assert (=> b!1161410 (= (-!1420 (+!3674 lt!522669 (tuple2!18689 (select (arr!36147 _keys!1208) from!1455) lt!522671)) (select (arr!36147 _keys!1208) from!1455)) lt!522669)))

(declare-fun lt!522668 () Unit!38203)

(declare-fun addThenRemoveForNewKeyIsSame!257 (ListLongMap!16669 (_ BitVec 64) V!43933) Unit!38203)

(assert (=> b!1161410 (= lt!522668 (addThenRemoveForNewKeyIsSame!257 lt!522669 (select (arr!36147 _keys!1208) from!1455) lt!522671))))

(declare-fun get!18469 (ValueCell!13843 V!43933) V!43933)

(assert (=> b!1161410 (= lt!522671 (get!18469 (select (arr!36148 _values!996) from!1455) lt!522670))))

(declare-fun lt!522675 () Unit!38203)

(assert (=> b!1161410 (= lt!522675 e!660452)))

(declare-fun c!115985 () Bool)

(assert (=> b!1161410 (= c!115985 (contains!6830 lt!522669 k!934))))

(assert (=> b!1161410 (= lt!522669 (getCurrentListMapNoExtraKeys!4785 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1161403 () Bool)

(declare-fun res!770652 () Bool)

(assert (=> b!1161403 (=> (not res!770652) (not e!660465))))

(assert (=> b!1161403 (= res!770652 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36684 _keys!1208))))))

(declare-fun res!770656 () Bool)

(assert (=> start!99006 (=> (not res!770656) (not e!660465))))

(assert (=> start!99006 (= res!770656 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36684 _keys!1208))))))

(assert (=> start!99006 e!660465))

(declare-fun tp_is_empty!29105 () Bool)

(assert (=> start!99006 tp_is_empty!29105))

(declare-fun array_inv!27530 (array!75000) Bool)

(assert (=> start!99006 (array_inv!27530 _keys!1208)))

(assert (=> start!99006 true))

(assert (=> start!99006 tp!86436))

(declare-fun e!660453 () Bool)

(declare-fun array_inv!27531 (array!75002) Bool)

(assert (=> start!99006 (and (array_inv!27531 _values!996) e!660453)))

(declare-fun b!1161411 () Bool)

(declare-fun call!56443 () ListLongMap!16669)

(assert (=> b!1161411 (= e!660463 (= call!56442 call!56443))))

(declare-fun b!1161412 () Bool)

(declare-fun res!770659 () Bool)

(assert (=> b!1161412 (=> (not res!770659) (not e!660465))))

(assert (=> b!1161412 (= res!770659 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25463))))

(declare-fun b!1161413 () Bool)

(declare-fun e!660456 () Unit!38203)

(declare-fun Unit!38206 () Unit!38203)

(assert (=> b!1161413 (= e!660456 Unit!38206)))

(declare-fun b!1161414 () Bool)

(declare-fun lt!522656 () Unit!38203)

(assert (=> b!1161414 (= e!660458 lt!522656)))

(declare-fun call!56446 () Unit!38203)

(assert (=> b!1161414 (= lt!522656 call!56446)))

(assert (=> b!1161414 call!56444))

(declare-fun b!1161415 () Bool)

(declare-fun e!660460 () Bool)

(assert (=> b!1161415 (= e!660460 tp_is_empty!29105)))

(declare-fun bm!56443 () Bool)

(assert (=> bm!56443 (= call!56446 call!56445)))

(declare-fun b!1161416 () Bool)

(assert (=> b!1161416 (= e!660453 (and e!660460 mapRes!45482))))

(declare-fun condMapEmpty!45482 () Bool)

(declare-fun mapDefault!45482 () ValueCell!13843)

