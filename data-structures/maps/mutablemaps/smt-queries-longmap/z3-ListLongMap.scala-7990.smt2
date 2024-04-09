; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98818 () Bool)

(assert start!98818)

(declare-fun b_free!24387 () Bool)

(declare-fun b_next!24387 () Bool)

(assert (=> start!98818 (= b_free!24387 (not b_next!24387))))

(declare-fun tp!85873 () Bool)

(declare-fun b_and!39637 () Bool)

(assert (=> start!98818 (= tp!85873 b_and!39637)))

(declare-fun b!1152750 () Bool)

(declare-fun res!766430 () Bool)

(declare-fun e!655658 () Bool)

(assert (=> b!1152750 (=> (not res!766430) (not e!655658))))

(declare-datatypes ((array!74632 0))(
  ( (array!74633 (arr!35963 (Array (_ BitVec 32) (_ BitVec 64))) (size!36500 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74632)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74632 (_ BitVec 32)) Bool)

(assert (=> b!1152750 (= res!766430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun b!1152751 () Bool)

(declare-fun lt!516465 () Bool)

(declare-fun e!655656 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1152751 (= e!655656 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!516465) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!45200 () Bool)

(declare-fun mapRes!45200 () Bool)

(assert (=> mapIsEmpty!45200 mapRes!45200))

(declare-datatypes ((V!43683 0))(
  ( (V!43684 (val!14515 Int)) )
))
(declare-datatypes ((tuple2!18512 0))(
  ( (tuple2!18513 (_1!9266 (_ BitVec 64)) (_2!9266 V!43683)) )
))
(declare-datatypes ((List!25302 0))(
  ( (Nil!25299) (Cons!25298 (h!26507 tuple2!18512) (t!36688 List!25302)) )
))
(declare-datatypes ((ListLongMap!16493 0))(
  ( (ListLongMap!16494 (toList!8262 List!25302)) )
))
(declare-fun lt!516456 () ListLongMap!16493)

(declare-fun call!54185 () ListLongMap!16493)

(declare-fun c!114294 () Bool)

(declare-fun bm!54182 () Bool)

(declare-fun call!54186 () Bool)

(declare-fun contains!6755 (ListLongMap!16493 (_ BitVec 64)) Bool)

(assert (=> bm!54182 (= call!54186 (contains!6755 (ite c!114294 lt!516456 call!54185) k0!934))))

(declare-fun zeroValue!944 () V!43683)

(declare-fun lt!516470 () array!74632)

(declare-fun e!655671 () Bool)

(declare-fun lt!516471 () ListLongMap!16493)

(declare-datatypes ((ValueCell!13749 0))(
  ( (ValueCellFull!13749 (v!17153 V!43683)) (EmptyCell!13749) )
))
(declare-datatypes ((array!74634 0))(
  ( (array!74635 (arr!35964 (Array (_ BitVec 32) ValueCell!13749)) (size!36501 (_ BitVec 32))) )
))
(declare-fun lt!516466 () array!74634)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1152752 () Bool)

(declare-fun minValue!944 () V!43683)

(declare-fun getCurrentListMapNoExtraKeys!4702 (array!74632 array!74634 (_ BitVec 32) (_ BitVec 32) V!43683 V!43683 (_ BitVec 32) Int) ListLongMap!16493)

(assert (=> b!1152752 (= e!655671 (= lt!516471 (getCurrentListMapNoExtraKeys!4702 lt!516470 lt!516466 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1152753 () Bool)

(declare-fun res!766432 () Bool)

(assert (=> b!1152753 (=> (not res!766432) (not e!655658))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1152753 (= res!766432 (= (select (arr!35963 _keys!1208) i!673) k0!934))))

(declare-fun b!1152754 () Bool)

(declare-datatypes ((Unit!37841 0))(
  ( (Unit!37842) )
))
(declare-fun e!655659 () Unit!37841)

(declare-fun Unit!37843 () Unit!37841)

(assert (=> b!1152754 (= e!655659 Unit!37843)))

(assert (=> b!1152754 (= lt!516465 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1152754 (= c!114294 (and (not lt!516465) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!516451 () Unit!37841)

(declare-fun e!655661 () Unit!37841)

(assert (=> b!1152754 (= lt!516451 e!655661)))

(declare-fun _values!996 () array!74634)

(declare-fun lt!516468 () Unit!37841)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!479 (array!74632 array!74634 (_ BitVec 32) (_ BitVec 32) V!43683 V!43683 (_ BitVec 64) (_ BitVec 32) Int) Unit!37841)

(assert (=> b!1152754 (= lt!516468 (lemmaListMapContainsThenArrayContainsFrom!479 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114290 () Bool)

(assert (=> b!1152754 (= c!114290 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!766429 () Bool)

(assert (=> b!1152754 (= res!766429 e!655656)))

(declare-fun e!655665 () Bool)

(assert (=> b!1152754 (=> (not res!766429) (not e!655665))))

(assert (=> b!1152754 e!655665))

(declare-fun lt!516454 () Unit!37841)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74632 (_ BitVec 32) (_ BitVec 32)) Unit!37841)

(assert (=> b!1152754 (= lt!516454 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25303 0))(
  ( (Nil!25300) (Cons!25299 (h!26508 (_ BitVec 64)) (t!36689 List!25303)) )
))
(declare-fun arrayNoDuplicates!0 (array!74632 (_ BitVec 32) List!25303) Bool)

(assert (=> b!1152754 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25300)))

(declare-fun lt!516459 () Unit!37841)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74632 (_ BitVec 64) (_ BitVec 32) List!25303) Unit!37841)

(assert (=> b!1152754 (= lt!516459 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25300))))

(assert (=> b!1152754 false))

(declare-fun b!1152756 () Bool)

(declare-fun e!655668 () Unit!37841)

(declare-fun lt!516460 () Unit!37841)

(assert (=> b!1152756 (= e!655668 lt!516460)))

(declare-fun call!54190 () Unit!37841)

(assert (=> b!1152756 (= lt!516460 call!54190)))

(declare-fun call!54192 () Bool)

(assert (=> b!1152756 call!54192))

(declare-fun b!1152757 () Bool)

(declare-fun res!766419 () Bool)

(assert (=> b!1152757 (=> (not res!766419) (not e!655658))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1152757 (= res!766419 (validKeyInArray!0 k0!934))))

(declare-fun b!1152758 () Bool)

(declare-fun e!655657 () Unit!37841)

(declare-fun Unit!37844 () Unit!37841)

(assert (=> b!1152758 (= e!655657 Unit!37844)))

(declare-fun b!1152759 () Bool)

(declare-fun res!766421 () Bool)

(assert (=> b!1152759 (=> (not res!766421) (not e!655658))))

(assert (=> b!1152759 (= res!766421 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25300))))

(declare-fun b!1152760 () Bool)

(declare-fun res!766425 () Bool)

(declare-fun e!655660 () Bool)

(assert (=> b!1152760 (=> (not res!766425) (not e!655660))))

(assert (=> b!1152760 (= res!766425 (arrayNoDuplicates!0 lt!516470 #b00000000000000000000000000000000 Nil!25300))))

(declare-fun b!1152761 () Bool)

(assert (=> b!1152761 (= e!655668 e!655657)))

(declare-fun c!114293 () Bool)

(assert (=> b!1152761 (= c!114293 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!516465))))

(declare-fun b!1152762 () Bool)

(declare-fun arrayContainsKey!0 (array!74632 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1152762 (= e!655665 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1152763 () Bool)

(assert (=> b!1152763 call!54192))

(declare-fun lt!516462 () Unit!37841)

(assert (=> b!1152763 (= lt!516462 call!54190)))

(assert (=> b!1152763 (= e!655657 lt!516462)))

(declare-fun b!1152764 () Bool)

(declare-fun e!655666 () Bool)

(declare-fun e!655670 () Bool)

(assert (=> b!1152764 (= e!655666 (and e!655670 mapRes!45200))))

(declare-fun condMapEmpty!45200 () Bool)

(declare-fun mapDefault!45200 () ValueCell!13749)

(assert (=> b!1152764 (= condMapEmpty!45200 (= (arr!35964 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13749)) mapDefault!45200)))))

(declare-fun bm!54183 () Bool)

(declare-fun call!54191 () Unit!37841)

(assert (=> bm!54183 (= call!54190 call!54191)))

(declare-fun call!54188 () ListLongMap!16493)

(declare-fun b!1152765 () Bool)

(declare-fun call!54189 () ListLongMap!16493)

(declare-fun e!655669 () Bool)

(declare-fun -!1345 (ListLongMap!16493 (_ BitVec 64)) ListLongMap!16493)

(assert (=> b!1152765 (= e!655669 (= call!54189 (-!1345 call!54188 k0!934)))))

(declare-fun b!1152766 () Bool)

(declare-fun tp_is_empty!28917 () Bool)

(assert (=> b!1152766 (= e!655670 tp_is_empty!28917)))

(declare-fun mapNonEmpty!45200 () Bool)

(declare-fun tp!85872 () Bool)

(declare-fun e!655667 () Bool)

(assert (=> mapNonEmpty!45200 (= mapRes!45200 (and tp!85872 e!655667))))

(declare-fun mapValue!45200 () ValueCell!13749)

(declare-fun mapRest!45200 () (Array (_ BitVec 32) ValueCell!13749))

(declare-fun mapKey!45200 () (_ BitVec 32))

(assert (=> mapNonEmpty!45200 (= (arr!35964 _values!996) (store mapRest!45200 mapKey!45200 mapValue!45200))))

(declare-fun b!1152767 () Bool)

(declare-fun e!655663 () Bool)

(assert (=> b!1152767 (= e!655660 (not e!655663))))

(declare-fun res!766424 () Bool)

(assert (=> b!1152767 (=> res!766424 e!655663)))

(assert (=> b!1152767 (= res!766424 (bvsgt from!1455 i!673))))

(assert (=> b!1152767 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!516455 () Unit!37841)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74632 (_ BitVec 64) (_ BitVec 32)) Unit!37841)

(assert (=> b!1152767 (= lt!516455 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1152768 () Bool)

(declare-fun Unit!37845 () Unit!37841)

(assert (=> b!1152768 (= e!655659 Unit!37845)))

(declare-fun bm!54184 () Bool)

(assert (=> bm!54184 (= call!54192 call!54186)))

(declare-fun b!1152769 () Bool)

(assert (=> b!1152769 (= e!655658 e!655660)))

(declare-fun res!766427 () Bool)

(assert (=> b!1152769 (=> (not res!766427) (not e!655660))))

(assert (=> b!1152769 (= res!766427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!516470 mask!1564))))

(assert (=> b!1152769 (= lt!516470 (array!74633 (store (arr!35963 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36500 _keys!1208)))))

(declare-fun b!1152770 () Bool)

(declare-fun e!655655 () Bool)

(declare-fun e!655664 () Bool)

(assert (=> b!1152770 (= e!655655 e!655664)))

(declare-fun res!766420 () Bool)

(assert (=> b!1152770 (=> res!766420 e!655664)))

(assert (=> b!1152770 (= res!766420 (not (= (select (arr!35963 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1152770 e!655669))

(declare-fun c!114289 () Bool)

(assert (=> b!1152770 (= c!114289 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!516467 () Unit!37841)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!580 (array!74632 array!74634 (_ BitVec 32) (_ BitVec 32) V!43683 V!43683 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37841)

(assert (=> b!1152770 (= lt!516467 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!580 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1152771 () Bool)

(assert (=> b!1152771 (= e!655667 tp_is_empty!28917)))

(declare-fun b!1152772 () Bool)

(declare-fun res!766422 () Bool)

(assert (=> b!1152772 (=> (not res!766422) (not e!655658))))

(assert (=> b!1152772 (= res!766422 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36500 _keys!1208))))))

(declare-fun b!1152755 () Bool)

(assert (=> b!1152755 (= e!655664 true)))

(assert (=> b!1152755 e!655671))

(declare-fun res!766426 () Bool)

(assert (=> b!1152755 (=> (not res!766426) (not e!655671))))

(declare-fun lt!516469 () ListLongMap!16493)

(assert (=> b!1152755 (= res!766426 (= lt!516471 lt!516469))))

(declare-fun lt!516450 () ListLongMap!16493)

(assert (=> b!1152755 (= lt!516471 (-!1345 lt!516450 k0!934))))

(declare-fun lt!516452 () V!43683)

(declare-fun +!3597 (ListLongMap!16493 tuple2!18512) ListLongMap!16493)

(assert (=> b!1152755 (= (-!1345 (+!3597 lt!516469 (tuple2!18513 (select (arr!35963 _keys!1208) from!1455) lt!516452)) (select (arr!35963 _keys!1208) from!1455)) lt!516469)))

(declare-fun lt!516453 () Unit!37841)

(declare-fun addThenRemoveForNewKeyIsSame!191 (ListLongMap!16493 (_ BitVec 64) V!43683) Unit!37841)

(assert (=> b!1152755 (= lt!516453 (addThenRemoveForNewKeyIsSame!191 lt!516469 (select (arr!35963 _keys!1208) from!1455) lt!516452))))

(declare-fun lt!516464 () V!43683)

(declare-fun get!18341 (ValueCell!13749 V!43683) V!43683)

(assert (=> b!1152755 (= lt!516452 (get!18341 (select (arr!35964 _values!996) from!1455) lt!516464))))

(declare-fun lt!516463 () Unit!37841)

(assert (=> b!1152755 (= lt!516463 e!655659)))

(declare-fun c!114292 () Bool)

(assert (=> b!1152755 (= c!114292 (contains!6755 lt!516469 k0!934))))

(assert (=> b!1152755 (= lt!516469 (getCurrentListMapNoExtraKeys!4702 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!766433 () Bool)

(assert (=> start!98818 (=> (not res!766433) (not e!655658))))

(assert (=> start!98818 (= res!766433 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36500 _keys!1208))))))

(assert (=> start!98818 e!655658))

(assert (=> start!98818 tp_is_empty!28917))

(declare-fun array_inv!27412 (array!74632) Bool)

(assert (=> start!98818 (array_inv!27412 _keys!1208)))

(assert (=> start!98818 true))

(assert (=> start!98818 tp!85873))

(declare-fun array_inv!27413 (array!74634) Bool)

(assert (=> start!98818 (and (array_inv!27413 _values!996) e!655666)))

(declare-fun b!1152773 () Bool)

(assert (=> b!1152773 (= e!655663 e!655655)))

(declare-fun res!766423 () Bool)

(assert (=> b!1152773 (=> res!766423 e!655655)))

(assert (=> b!1152773 (= res!766423 (not (= from!1455 i!673)))))

(declare-fun lt!516458 () ListLongMap!16493)

(assert (=> b!1152773 (= lt!516458 (getCurrentListMapNoExtraKeys!4702 lt!516470 lt!516466 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1152773 (= lt!516466 (array!74635 (store (arr!35964 _values!996) i!673 (ValueCellFull!13749 lt!516464)) (size!36501 _values!996)))))

(declare-fun dynLambda!2726 (Int (_ BitVec 64)) V!43683)

(assert (=> b!1152773 (= lt!516464 (dynLambda!2726 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1152773 (= lt!516450 (getCurrentListMapNoExtraKeys!4702 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1152774 () Bool)

(assert (=> b!1152774 (= e!655656 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun c!114291 () Bool)

(declare-fun call!54187 () ListLongMap!16493)

(declare-fun bm!54185 () Bool)

(assert (=> bm!54185 (= call!54187 (+!3597 lt!516469 (ite (or c!114294 c!114291) (tuple2!18513 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18513 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1152775 () Bool)

(declare-fun res!766428 () Bool)

(assert (=> b!1152775 (=> (not res!766428) (not e!655658))))

(assert (=> b!1152775 (= res!766428 (and (= (size!36501 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36500 _keys!1208) (size!36501 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!54186 () Bool)

(assert (=> bm!54186 (= call!54189 (getCurrentListMapNoExtraKeys!4702 lt!516470 lt!516466 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1152776 () Bool)

(assert (=> b!1152776 (= e!655669 (= call!54189 call!54188))))

(declare-fun b!1152777 () Bool)

(assert (=> b!1152777 (= c!114291 (and (not lt!516465) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1152777 (= e!655661 e!655668)))

(declare-fun bm!54187 () Bool)

(assert (=> bm!54187 (= call!54185 call!54187)))

(declare-fun b!1152778 () Bool)

(assert (=> b!1152778 (contains!6755 (+!3597 lt!516456 (tuple2!18513 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!516457 () Unit!37841)

(declare-fun addStillContains!895 (ListLongMap!16493 (_ BitVec 64) V!43683 (_ BitVec 64)) Unit!37841)

(assert (=> b!1152778 (= lt!516457 (addStillContains!895 lt!516456 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1152778 call!54186))

(assert (=> b!1152778 (= lt!516456 call!54187)))

(declare-fun lt!516461 () Unit!37841)

(assert (=> b!1152778 (= lt!516461 call!54191)))

(assert (=> b!1152778 (= e!655661 lt!516457)))

(declare-fun bm!54188 () Bool)

(assert (=> bm!54188 (= call!54191 (addStillContains!895 lt!516469 (ite (or c!114294 c!114291) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!114294 c!114291) zeroValue!944 minValue!944) k0!934))))

(declare-fun bm!54189 () Bool)

(assert (=> bm!54189 (= call!54188 (getCurrentListMapNoExtraKeys!4702 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1152779 () Bool)

(declare-fun res!766431 () Bool)

(assert (=> b!1152779 (=> (not res!766431) (not e!655658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1152779 (= res!766431 (validMask!0 mask!1564))))

(assert (= (and start!98818 res!766433) b!1152779))

(assert (= (and b!1152779 res!766431) b!1152775))

(assert (= (and b!1152775 res!766428) b!1152750))

(assert (= (and b!1152750 res!766430) b!1152759))

(assert (= (and b!1152759 res!766421) b!1152772))

(assert (= (and b!1152772 res!766422) b!1152757))

(assert (= (and b!1152757 res!766419) b!1152753))

(assert (= (and b!1152753 res!766432) b!1152769))

(assert (= (and b!1152769 res!766427) b!1152760))

(assert (= (and b!1152760 res!766425) b!1152767))

(assert (= (and b!1152767 (not res!766424)) b!1152773))

(assert (= (and b!1152773 (not res!766423)) b!1152770))

(assert (= (and b!1152770 c!114289) b!1152765))

(assert (= (and b!1152770 (not c!114289)) b!1152776))

(assert (= (or b!1152765 b!1152776) bm!54186))

(assert (= (or b!1152765 b!1152776) bm!54189))

(assert (= (and b!1152770 (not res!766420)) b!1152755))

(assert (= (and b!1152755 c!114292) b!1152754))

(assert (= (and b!1152755 (not c!114292)) b!1152768))

(assert (= (and b!1152754 c!114294) b!1152778))

(assert (= (and b!1152754 (not c!114294)) b!1152777))

(assert (= (and b!1152777 c!114291) b!1152756))

(assert (= (and b!1152777 (not c!114291)) b!1152761))

(assert (= (and b!1152761 c!114293) b!1152763))

(assert (= (and b!1152761 (not c!114293)) b!1152758))

(assert (= (or b!1152756 b!1152763) bm!54183))

(assert (= (or b!1152756 b!1152763) bm!54187))

(assert (= (or b!1152756 b!1152763) bm!54184))

(assert (= (or b!1152778 bm!54184) bm!54182))

(assert (= (or b!1152778 bm!54183) bm!54188))

(assert (= (or b!1152778 bm!54187) bm!54185))

(assert (= (and b!1152754 c!114290) b!1152774))

(assert (= (and b!1152754 (not c!114290)) b!1152751))

(assert (= (and b!1152754 res!766429) b!1152762))

(assert (= (and b!1152755 res!766426) b!1152752))

(assert (= (and b!1152764 condMapEmpty!45200) mapIsEmpty!45200))

(assert (= (and b!1152764 (not condMapEmpty!45200)) mapNonEmpty!45200))

(get-info :version)

(assert (= (and mapNonEmpty!45200 ((_ is ValueCellFull!13749) mapValue!45200)) b!1152771))

(assert (= (and b!1152764 ((_ is ValueCellFull!13749) mapDefault!45200)) b!1152766))

(assert (= start!98818 b!1152764))

(declare-fun b_lambda!19511 () Bool)

(assert (=> (not b_lambda!19511) (not b!1152773)))

(declare-fun t!36687 () Bool)

(declare-fun tb!9207 () Bool)

(assert (=> (and start!98818 (= defaultEntry!1004 defaultEntry!1004) t!36687) tb!9207))

(declare-fun result!18971 () Bool)

(assert (=> tb!9207 (= result!18971 tp_is_empty!28917)))

(assert (=> b!1152773 t!36687))

(declare-fun b_and!39639 () Bool)

(assert (= b_and!39637 (and (=> t!36687 result!18971) b_and!39639)))

(declare-fun m!1062739 () Bool)

(assert (=> bm!54185 m!1062739))

(declare-fun m!1062741 () Bool)

(assert (=> b!1152755 m!1062741))

(declare-fun m!1062743 () Bool)

(assert (=> b!1152755 m!1062743))

(declare-fun m!1062745 () Bool)

(assert (=> b!1152755 m!1062745))

(declare-fun m!1062747 () Bool)

(assert (=> b!1152755 m!1062747))

(assert (=> b!1152755 m!1062747))

(declare-fun m!1062749 () Bool)

(assert (=> b!1152755 m!1062749))

(declare-fun m!1062751 () Bool)

(assert (=> b!1152755 m!1062751))

(declare-fun m!1062753 () Bool)

(assert (=> b!1152755 m!1062753))

(declare-fun m!1062755 () Bool)

(assert (=> b!1152755 m!1062755))

(assert (=> b!1152755 m!1062751))

(assert (=> b!1152755 m!1062741))

(declare-fun m!1062757 () Bool)

(assert (=> b!1152755 m!1062757))

(assert (=> b!1152755 m!1062741))

(declare-fun m!1062759 () Bool)

(assert (=> bm!54188 m!1062759))

(declare-fun m!1062761 () Bool)

(assert (=> mapNonEmpty!45200 m!1062761))

(declare-fun m!1062763 () Bool)

(assert (=> b!1152757 m!1062763))

(assert (=> b!1152770 m!1062741))

(declare-fun m!1062765 () Bool)

(assert (=> b!1152770 m!1062765))

(declare-fun m!1062767 () Bool)

(assert (=> b!1152753 m!1062767))

(declare-fun m!1062769 () Bool)

(assert (=> start!98818 m!1062769))

(declare-fun m!1062771 () Bool)

(assert (=> start!98818 m!1062771))

(declare-fun m!1062773 () Bool)

(assert (=> b!1152779 m!1062773))

(declare-fun m!1062775 () Bool)

(assert (=> b!1152769 m!1062775))

(declare-fun m!1062777 () Bool)

(assert (=> b!1152769 m!1062777))

(declare-fun m!1062779 () Bool)

(assert (=> b!1152765 m!1062779))

(declare-fun m!1062781 () Bool)

(assert (=> bm!54186 m!1062781))

(assert (=> bm!54189 m!1062745))

(assert (=> b!1152752 m!1062781))

(declare-fun m!1062783 () Bool)

(assert (=> b!1152773 m!1062783))

(declare-fun m!1062785 () Bool)

(assert (=> b!1152773 m!1062785))

(declare-fun m!1062787 () Bool)

(assert (=> b!1152773 m!1062787))

(declare-fun m!1062789 () Bool)

(assert (=> b!1152773 m!1062789))

(declare-fun m!1062791 () Bool)

(assert (=> b!1152760 m!1062791))

(declare-fun m!1062793 () Bool)

(assert (=> b!1152759 m!1062793))

(declare-fun m!1062795 () Bool)

(assert (=> b!1152774 m!1062795))

(declare-fun m!1062797 () Bool)

(assert (=> b!1152767 m!1062797))

(declare-fun m!1062799 () Bool)

(assert (=> b!1152767 m!1062799))

(assert (=> b!1152762 m!1062795))

(declare-fun m!1062801 () Bool)

(assert (=> b!1152778 m!1062801))

(assert (=> b!1152778 m!1062801))

(declare-fun m!1062803 () Bool)

(assert (=> b!1152778 m!1062803))

(declare-fun m!1062805 () Bool)

(assert (=> b!1152778 m!1062805))

(declare-fun m!1062807 () Bool)

(assert (=> bm!54182 m!1062807))

(declare-fun m!1062809 () Bool)

(assert (=> b!1152754 m!1062809))

(declare-fun m!1062811 () Bool)

(assert (=> b!1152754 m!1062811))

(declare-fun m!1062813 () Bool)

(assert (=> b!1152754 m!1062813))

(declare-fun m!1062815 () Bool)

(assert (=> b!1152754 m!1062815))

(declare-fun m!1062817 () Bool)

(assert (=> b!1152750 m!1062817))

(check-sat (not bm!54188) (not b!1152774) (not b!1152779) (not bm!54185) (not b!1152762) (not b!1152778) (not mapNonEmpty!45200) (not bm!54182) tp_is_empty!28917 (not b!1152767) (not b!1152769) (not b!1152770) (not b!1152752) (not b!1152757) (not start!98818) b_and!39639 (not b!1152760) (not b!1152754) (not b!1152750) (not b!1152755) (not bm!54186) (not b!1152765) (not b_next!24387) (not bm!54189) (not b!1152773) (not b_lambda!19511) (not b!1152759))
(check-sat b_and!39639 (not b_next!24387))
