; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98830 () Bool)

(assert start!98830)

(declare-fun b_free!24399 () Bool)

(declare-fun b_next!24399 () Bool)

(assert (=> start!98830 (= b_free!24399 (not b_next!24399))))

(declare-fun tp!85908 () Bool)

(declare-fun b_and!39661 () Bool)

(assert (=> start!98830 (= tp!85908 b_and!39661)))

(declare-fun b!1153302 () Bool)

(declare-fun res!766696 () Bool)

(declare-fun e!655977 () Bool)

(assert (=> b!1153302 (=> (not res!766696) (not e!655977))))

(declare-datatypes ((array!74656 0))(
  ( (array!74657 (arr!35975 (Array (_ BitVec 32) (_ BitVec 64))) (size!36512 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74656)

(declare-datatypes ((List!25311 0))(
  ( (Nil!25308) (Cons!25307 (h!26516 (_ BitVec 64)) (t!36709 List!25311)) )
))
(declare-fun arrayNoDuplicates!0 (array!74656 (_ BitVec 32) List!25311) Bool)

(assert (=> b!1153302 (= res!766696 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25308))))

(declare-fun b!1153303 () Bool)

(declare-fun e!655975 () Bool)

(declare-fun e!655969 () Bool)

(assert (=> b!1153303 (= e!655975 e!655969)))

(declare-fun res!766690 () Bool)

(assert (=> b!1153303 (=> res!766690 e!655969)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1153303 (= res!766690 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43699 0))(
  ( (V!43700 (val!14521 Int)) )
))
(declare-fun zeroValue!944 () V!43699)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18524 0))(
  ( (tuple2!18525 (_1!9272 (_ BitVec 64)) (_2!9272 V!43699)) )
))
(declare-datatypes ((List!25312 0))(
  ( (Nil!25309) (Cons!25308 (h!26517 tuple2!18524) (t!36710 List!25312)) )
))
(declare-datatypes ((ListLongMap!16505 0))(
  ( (ListLongMap!16506 (toList!8268 List!25312)) )
))
(declare-fun lt!516858 () ListLongMap!16505)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13755 0))(
  ( (ValueCellFull!13755 (v!17159 V!43699)) (EmptyCell!13755) )
))
(declare-datatypes ((array!74658 0))(
  ( (array!74659 (arr!35976 (Array (_ BitVec 32) ValueCell!13755)) (size!36513 (_ BitVec 32))) )
))
(declare-fun lt!516850 () array!74658)

(declare-fun minValue!944 () V!43699)

(declare-fun lt!516853 () array!74656)

(declare-fun getCurrentListMapNoExtraKeys!4708 (array!74656 array!74658 (_ BitVec 32) (_ BitVec 32) V!43699 V!43699 (_ BitVec 32) Int) ListLongMap!16505)

(assert (=> b!1153303 (= lt!516858 (getCurrentListMapNoExtraKeys!4708 lt!516853 lt!516850 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!516866 () V!43699)

(declare-fun _values!996 () array!74658)

(assert (=> b!1153303 (= lt!516850 (array!74659 (store (arr!35976 _values!996) i!673 (ValueCellFull!13755 lt!516866)) (size!36513 _values!996)))))

(declare-fun dynLambda!2729 (Int (_ BitVec 64)) V!43699)

(assert (=> b!1153303 (= lt!516866 (dynLambda!2729 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!516847 () ListLongMap!16505)

(assert (=> b!1153303 (= lt!516847 (getCurrentListMapNoExtraKeys!4708 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1153304 () Bool)

(declare-fun res!766702 () Bool)

(assert (=> b!1153304 (=> (not res!766702) (not e!655977))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1153304 (= res!766702 (validKeyInArray!0 k0!934))))

(declare-fun b!1153305 () Bool)

(declare-datatypes ((Unit!37864 0))(
  ( (Unit!37865) )
))
(declare-fun e!655965 () Unit!37864)

(declare-fun lt!516856 () Unit!37864)

(assert (=> b!1153305 (= e!655965 lt!516856)))

(declare-fun call!54336 () Unit!37864)

(assert (=> b!1153305 (= lt!516856 call!54336)))

(declare-fun call!54333 () Bool)

(assert (=> b!1153305 call!54333))

(declare-fun mapIsEmpty!45218 () Bool)

(declare-fun mapRes!45218 () Bool)

(assert (=> mapIsEmpty!45218 mapRes!45218))

(declare-fun b!1153306 () Bool)

(declare-fun res!766700 () Bool)

(assert (=> b!1153306 (=> (not res!766700) (not e!655977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74656 (_ BitVec 32)) Bool)

(assert (=> b!1153306 (= res!766700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!54327 () Bool)

(declare-fun call!54335 () ListLongMap!16505)

(assert (=> bm!54327 (= call!54335 (getCurrentListMapNoExtraKeys!4708 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1153307 () Bool)

(declare-fun res!766689 () Bool)

(assert (=> b!1153307 (=> (not res!766689) (not e!655977))))

(assert (=> b!1153307 (= res!766689 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36512 _keys!1208))))))

(declare-fun mapNonEmpty!45218 () Bool)

(declare-fun tp!85909 () Bool)

(declare-fun e!655971 () Bool)

(assert (=> mapNonEmpty!45218 (= mapRes!45218 (and tp!85909 e!655971))))

(declare-fun mapValue!45218 () ValueCell!13755)

(declare-fun mapKey!45218 () (_ BitVec 32))

(declare-fun mapRest!45218 () (Array (_ BitVec 32) ValueCell!13755))

(assert (=> mapNonEmpty!45218 (= (arr!35976 _values!996) (store mapRest!45218 mapKey!45218 mapValue!45218))))

(declare-fun b!1153308 () Bool)

(declare-fun e!655970 () Bool)

(assert (=> b!1153308 (= e!655977 e!655970)))

(declare-fun res!766697 () Bool)

(assert (=> b!1153308 (=> (not res!766697) (not e!655970))))

(assert (=> b!1153308 (= res!766697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!516853 mask!1564))))

(assert (=> b!1153308 (= lt!516853 (array!74657 (store (arr!35975 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36512 _keys!1208)))))

(declare-fun b!1153309 () Bool)

(declare-fun res!766698 () Bool)

(assert (=> b!1153309 (=> (not res!766698) (not e!655977))))

(assert (=> b!1153309 (= res!766698 (and (= (size!36513 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36512 _keys!1208) (size!36513 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1153310 () Bool)

(declare-fun e!655973 () Bool)

(assert (=> b!1153310 (= e!655969 e!655973)))

(declare-fun res!766703 () Bool)

(assert (=> b!1153310 (=> res!766703 e!655973)))

(assert (=> b!1153310 (= res!766703 (not (= (select (arr!35975 _keys!1208) from!1455) k0!934)))))

(declare-fun e!655974 () Bool)

(assert (=> b!1153310 e!655974))

(declare-fun c!114400 () Bool)

(assert (=> b!1153310 (= c!114400 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!516863 () Unit!37864)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!582 (array!74656 array!74658 (_ BitVec 32) (_ BitVec 32) V!43699 V!43699 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37864)

(assert (=> b!1153310 (= lt!516863 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!582 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114402 () Bool)

(declare-fun lt!516867 () ListLongMap!16505)

(declare-fun lt!516854 () ListLongMap!16505)

(declare-fun c!114401 () Bool)

(declare-fun bm!54328 () Bool)

(declare-fun call!54331 () ListLongMap!16505)

(declare-fun +!3603 (ListLongMap!16505 tuple2!18524) ListLongMap!16505)

(assert (=> bm!54328 (= call!54331 (+!3603 (ite c!114401 lt!516854 lt!516867) (ite c!114401 (tuple2!18525 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!114402 (tuple2!18525 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18525 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1153311 () Bool)

(assert (=> b!1153311 (= e!655973 true)))

(declare-fun e!655964 () Bool)

(assert (=> b!1153311 e!655964))

(declare-fun res!766695 () Bool)

(assert (=> b!1153311 (=> (not res!766695) (not e!655964))))

(declare-fun lt!516846 () ListLongMap!16505)

(assert (=> b!1153311 (= res!766695 (= lt!516846 lt!516867))))

(declare-fun -!1350 (ListLongMap!16505 (_ BitVec 64)) ListLongMap!16505)

(assert (=> b!1153311 (= lt!516846 (-!1350 lt!516847 k0!934))))

(declare-fun lt!516857 () V!43699)

(assert (=> b!1153311 (= (-!1350 (+!3603 lt!516867 (tuple2!18525 (select (arr!35975 _keys!1208) from!1455) lt!516857)) (select (arr!35975 _keys!1208) from!1455)) lt!516867)))

(declare-fun lt!516855 () Unit!37864)

(declare-fun addThenRemoveForNewKeyIsSame!195 (ListLongMap!16505 (_ BitVec 64) V!43699) Unit!37864)

(assert (=> b!1153311 (= lt!516855 (addThenRemoveForNewKeyIsSame!195 lt!516867 (select (arr!35975 _keys!1208) from!1455) lt!516857))))

(declare-fun get!18349 (ValueCell!13755 V!43699) V!43699)

(assert (=> b!1153311 (= lt!516857 (get!18349 (select (arr!35976 _values!996) from!1455) lt!516866))))

(declare-fun lt!516864 () Unit!37864)

(declare-fun e!655967 () Unit!37864)

(assert (=> b!1153311 (= lt!516864 e!655967)))

(declare-fun c!114397 () Bool)

(declare-fun contains!6760 (ListLongMap!16505 (_ BitVec 64)) Bool)

(assert (=> b!1153311 (= c!114397 (contains!6760 lt!516867 k0!934))))

(assert (=> b!1153311 (= lt!516867 (getCurrentListMapNoExtraKeys!4708 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!54334 () ListLongMap!16505)

(declare-fun bm!54329 () Bool)

(declare-fun call!54329 () Bool)

(assert (=> bm!54329 (= call!54329 (contains!6760 (ite c!114401 lt!516854 call!54334) k0!934))))

(declare-fun b!1153312 () Bool)

(assert (=> b!1153312 (= e!655970 (not e!655975))))

(declare-fun res!766691 () Bool)

(assert (=> b!1153312 (=> res!766691 e!655975)))

(assert (=> b!1153312 (= res!766691 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74656 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1153312 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!516849 () Unit!37864)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74656 (_ BitVec 64) (_ BitVec 32)) Unit!37864)

(assert (=> b!1153312 (= lt!516849 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1153313 () Bool)

(assert (=> b!1153313 call!54333))

(declare-fun lt!516860 () Unit!37864)

(assert (=> b!1153313 (= lt!516860 call!54336)))

(declare-fun e!655961 () Unit!37864)

(assert (=> b!1153313 (= e!655961 lt!516860)))

(declare-fun b!1153314 () Bool)

(declare-fun Unit!37866 () Unit!37864)

(assert (=> b!1153314 (= e!655967 Unit!37866)))

(declare-fun b!1153315 () Bool)

(declare-fun res!766693 () Bool)

(assert (=> b!1153315 (=> (not res!766693) (not e!655977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1153315 (= res!766693 (validMask!0 mask!1564))))

(declare-fun b!1153316 () Bool)

(declare-fun tp_is_empty!28929 () Bool)

(assert (=> b!1153316 (= e!655971 tp_is_empty!28929)))

(declare-fun res!766701 () Bool)

(assert (=> start!98830 (=> (not res!766701) (not e!655977))))

(assert (=> start!98830 (= res!766701 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36512 _keys!1208))))))

(assert (=> start!98830 e!655977))

(assert (=> start!98830 tp_is_empty!28929))

(declare-fun array_inv!27416 (array!74656) Bool)

(assert (=> start!98830 (array_inv!27416 _keys!1208)))

(assert (=> start!98830 true))

(assert (=> start!98830 tp!85908))

(declare-fun e!655963 () Bool)

(declare-fun array_inv!27417 (array!74658) Bool)

(assert (=> start!98830 (and (array_inv!27417 _values!996) e!655963)))

(declare-fun bm!54326 () Bool)

(declare-fun call!54330 () ListLongMap!16505)

(assert (=> bm!54326 (= call!54330 (getCurrentListMapNoExtraKeys!4708 lt!516853 lt!516850 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1153317 () Bool)

(declare-fun lt!516861 () Bool)

(assert (=> b!1153317 (= c!114402 (and (not lt!516861) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!655972 () Unit!37864)

(assert (=> b!1153317 (= e!655972 e!655965)))

(declare-fun b!1153318 () Bool)

(assert (=> b!1153318 (= e!655974 (= call!54330 call!54335))))

(declare-fun e!655976 () Bool)

(declare-fun b!1153319 () Bool)

(assert (=> b!1153319 (= e!655976 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!54330 () Bool)

(assert (=> bm!54330 (= call!54334 call!54331)))

(declare-fun b!1153320 () Bool)

(assert (=> b!1153320 (= e!655974 (= call!54330 (-!1350 call!54335 k0!934)))))

(declare-fun b!1153321 () Bool)

(assert (=> b!1153321 (= e!655976 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!516861) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1153322 () Bool)

(assert (=> b!1153322 (= e!655964 (= lt!516846 (getCurrentListMapNoExtraKeys!4708 lt!516853 lt!516850 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1153323 () Bool)

(assert (=> b!1153323 (contains!6760 call!54331 k0!934)))

(declare-fun lt!516859 () Unit!37864)

(declare-fun call!54332 () Unit!37864)

(assert (=> b!1153323 (= lt!516859 call!54332)))

(assert (=> b!1153323 call!54329))

(assert (=> b!1153323 (= lt!516854 (+!3603 lt!516867 (tuple2!18525 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!516852 () Unit!37864)

(declare-fun addStillContains!900 (ListLongMap!16505 (_ BitVec 64) V!43699 (_ BitVec 64)) Unit!37864)

(assert (=> b!1153323 (= lt!516852 (addStillContains!900 lt!516867 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1153323 (= e!655972 lt!516859)))

(declare-fun bm!54331 () Bool)

(assert (=> bm!54331 (= call!54336 call!54332)))

(declare-fun b!1153324 () Bool)

(declare-fun e!655962 () Bool)

(assert (=> b!1153324 (= e!655962 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1153325 () Bool)

(declare-fun Unit!37867 () Unit!37864)

(assert (=> b!1153325 (= e!655961 Unit!37867)))

(declare-fun b!1153326 () Bool)

(declare-fun res!766699 () Bool)

(assert (=> b!1153326 (=> (not res!766699) (not e!655970))))

(assert (=> b!1153326 (= res!766699 (arrayNoDuplicates!0 lt!516853 #b00000000000000000000000000000000 Nil!25308))))

(declare-fun b!1153327 () Bool)

(declare-fun e!655966 () Bool)

(assert (=> b!1153327 (= e!655963 (and e!655966 mapRes!45218))))

(declare-fun condMapEmpty!45218 () Bool)

(declare-fun mapDefault!45218 () ValueCell!13755)

(assert (=> b!1153327 (= condMapEmpty!45218 (= (arr!35976 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13755)) mapDefault!45218)))))

(declare-fun b!1153328 () Bool)

(assert (=> b!1153328 (= e!655966 tp_is_empty!28929)))

(declare-fun b!1153329 () Bool)

(assert (=> b!1153329 (= e!655965 e!655961)))

(declare-fun c!114398 () Bool)

(assert (=> b!1153329 (= c!114398 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!516861))))

(declare-fun bm!54332 () Bool)

(assert (=> bm!54332 (= call!54332 (addStillContains!900 (ite c!114401 lt!516854 lt!516867) (ite c!114401 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114402 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114401 minValue!944 (ite c!114402 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1153330 () Bool)

(declare-fun Unit!37868 () Unit!37864)

(assert (=> b!1153330 (= e!655967 Unit!37868)))

(assert (=> b!1153330 (= lt!516861 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1153330 (= c!114401 (and (not lt!516861) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!516851 () Unit!37864)

(assert (=> b!1153330 (= lt!516851 e!655972)))

(declare-fun lt!516865 () Unit!37864)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!482 (array!74656 array!74658 (_ BitVec 32) (_ BitVec 32) V!43699 V!43699 (_ BitVec 64) (_ BitVec 32) Int) Unit!37864)

(assert (=> b!1153330 (= lt!516865 (lemmaListMapContainsThenArrayContainsFrom!482 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114399 () Bool)

(assert (=> b!1153330 (= c!114399 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!766694 () Bool)

(assert (=> b!1153330 (= res!766694 e!655976)))

(assert (=> b!1153330 (=> (not res!766694) (not e!655962))))

(assert (=> b!1153330 e!655962))

(declare-fun lt!516848 () Unit!37864)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74656 (_ BitVec 32) (_ BitVec 32)) Unit!37864)

(assert (=> b!1153330 (= lt!516848 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1153330 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25308)))

(declare-fun lt!516862 () Unit!37864)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74656 (_ BitVec 64) (_ BitVec 32) List!25311) Unit!37864)

(assert (=> b!1153330 (= lt!516862 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25308))))

(assert (=> b!1153330 false))

(declare-fun b!1153331 () Bool)

(declare-fun res!766692 () Bool)

(assert (=> b!1153331 (=> (not res!766692) (not e!655977))))

(assert (=> b!1153331 (= res!766692 (= (select (arr!35975 _keys!1208) i!673) k0!934))))

(declare-fun bm!54333 () Bool)

(assert (=> bm!54333 (= call!54333 call!54329)))

(assert (= (and start!98830 res!766701) b!1153315))

(assert (= (and b!1153315 res!766693) b!1153309))

(assert (= (and b!1153309 res!766698) b!1153306))

(assert (= (and b!1153306 res!766700) b!1153302))

(assert (= (and b!1153302 res!766696) b!1153307))

(assert (= (and b!1153307 res!766689) b!1153304))

(assert (= (and b!1153304 res!766702) b!1153331))

(assert (= (and b!1153331 res!766692) b!1153308))

(assert (= (and b!1153308 res!766697) b!1153326))

(assert (= (and b!1153326 res!766699) b!1153312))

(assert (= (and b!1153312 (not res!766691)) b!1153303))

(assert (= (and b!1153303 (not res!766690)) b!1153310))

(assert (= (and b!1153310 c!114400) b!1153320))

(assert (= (and b!1153310 (not c!114400)) b!1153318))

(assert (= (or b!1153320 b!1153318) bm!54326))

(assert (= (or b!1153320 b!1153318) bm!54327))

(assert (= (and b!1153310 (not res!766703)) b!1153311))

(assert (= (and b!1153311 c!114397) b!1153330))

(assert (= (and b!1153311 (not c!114397)) b!1153314))

(assert (= (and b!1153330 c!114401) b!1153323))

(assert (= (and b!1153330 (not c!114401)) b!1153317))

(assert (= (and b!1153317 c!114402) b!1153305))

(assert (= (and b!1153317 (not c!114402)) b!1153329))

(assert (= (and b!1153329 c!114398) b!1153313))

(assert (= (and b!1153329 (not c!114398)) b!1153325))

(assert (= (or b!1153305 b!1153313) bm!54331))

(assert (= (or b!1153305 b!1153313) bm!54330))

(assert (= (or b!1153305 b!1153313) bm!54333))

(assert (= (or b!1153323 bm!54333) bm!54329))

(assert (= (or b!1153323 bm!54331) bm!54332))

(assert (= (or b!1153323 bm!54330) bm!54328))

(assert (= (and b!1153330 c!114399) b!1153319))

(assert (= (and b!1153330 (not c!114399)) b!1153321))

(assert (= (and b!1153330 res!766694) b!1153324))

(assert (= (and b!1153311 res!766695) b!1153322))

(assert (= (and b!1153327 condMapEmpty!45218) mapIsEmpty!45218))

(assert (= (and b!1153327 (not condMapEmpty!45218)) mapNonEmpty!45218))

(get-info :version)

(assert (= (and mapNonEmpty!45218 ((_ is ValueCellFull!13755) mapValue!45218)) b!1153316))

(assert (= (and b!1153327 ((_ is ValueCellFull!13755) mapDefault!45218)) b!1153328))

(assert (= start!98830 b!1153327))

(declare-fun b_lambda!19523 () Bool)

(assert (=> (not b_lambda!19523) (not b!1153303)))

(declare-fun t!36708 () Bool)

(declare-fun tb!9219 () Bool)

(assert (=> (and start!98830 (= defaultEntry!1004 defaultEntry!1004) t!36708) tb!9219))

(declare-fun result!18995 () Bool)

(assert (=> tb!9219 (= result!18995 tp_is_empty!28929)))

(assert (=> b!1153303 t!36708))

(declare-fun b_and!39663 () Bool)

(assert (= b_and!39661 (and (=> t!36708 result!18995) b_and!39663)))

(declare-fun m!1063219 () Bool)

(assert (=> b!1153319 m!1063219))

(declare-fun m!1063221 () Bool)

(assert (=> b!1153312 m!1063221))

(declare-fun m!1063223 () Bool)

(assert (=> b!1153312 m!1063223))

(declare-fun m!1063225 () Bool)

(assert (=> b!1153310 m!1063225))

(declare-fun m!1063227 () Bool)

(assert (=> b!1153310 m!1063227))

(declare-fun m!1063229 () Bool)

(assert (=> b!1153311 m!1063229))

(declare-fun m!1063231 () Bool)

(assert (=> b!1153311 m!1063231))

(declare-fun m!1063233 () Bool)

(assert (=> b!1153311 m!1063233))

(declare-fun m!1063235 () Bool)

(assert (=> b!1153311 m!1063235))

(assert (=> b!1153311 m!1063225))

(declare-fun m!1063237 () Bool)

(assert (=> b!1153311 m!1063237))

(assert (=> b!1153311 m!1063235))

(declare-fun m!1063239 () Bool)

(assert (=> b!1153311 m!1063239))

(assert (=> b!1153311 m!1063225))

(declare-fun m!1063241 () Bool)

(assert (=> b!1153311 m!1063241))

(assert (=> b!1153311 m!1063229))

(declare-fun m!1063243 () Bool)

(assert (=> b!1153311 m!1063243))

(assert (=> b!1153311 m!1063225))

(assert (=> b!1153324 m!1063219))

(declare-fun m!1063245 () Bool)

(assert (=> b!1153322 m!1063245))

(declare-fun m!1063247 () Bool)

(assert (=> bm!54328 m!1063247))

(declare-fun m!1063249 () Bool)

(assert (=> bm!54332 m!1063249))

(declare-fun m!1063251 () Bool)

(assert (=> b!1153304 m!1063251))

(declare-fun m!1063253 () Bool)

(assert (=> mapNonEmpty!45218 m!1063253))

(declare-fun m!1063255 () Bool)

(assert (=> b!1153303 m!1063255))

(declare-fun m!1063257 () Bool)

(assert (=> b!1153303 m!1063257))

(declare-fun m!1063259 () Bool)

(assert (=> b!1153303 m!1063259))

(declare-fun m!1063261 () Bool)

(assert (=> b!1153303 m!1063261))

(assert (=> bm!54327 m!1063239))

(declare-fun m!1063263 () Bool)

(assert (=> start!98830 m!1063263))

(declare-fun m!1063265 () Bool)

(assert (=> start!98830 m!1063265))

(declare-fun m!1063267 () Bool)

(assert (=> b!1153306 m!1063267))

(declare-fun m!1063269 () Bool)

(assert (=> b!1153323 m!1063269))

(declare-fun m!1063271 () Bool)

(assert (=> b!1153323 m!1063271))

(declare-fun m!1063273 () Bool)

(assert (=> b!1153323 m!1063273))

(declare-fun m!1063275 () Bool)

(assert (=> bm!54329 m!1063275))

(declare-fun m!1063277 () Bool)

(assert (=> b!1153308 m!1063277))

(declare-fun m!1063279 () Bool)

(assert (=> b!1153308 m!1063279))

(assert (=> bm!54326 m!1063245))

(declare-fun m!1063281 () Bool)

(assert (=> b!1153331 m!1063281))

(declare-fun m!1063283 () Bool)

(assert (=> b!1153330 m!1063283))

(declare-fun m!1063285 () Bool)

(assert (=> b!1153330 m!1063285))

(declare-fun m!1063287 () Bool)

(assert (=> b!1153330 m!1063287))

(declare-fun m!1063289 () Bool)

(assert (=> b!1153330 m!1063289))

(declare-fun m!1063291 () Bool)

(assert (=> b!1153315 m!1063291))

(declare-fun m!1063293 () Bool)

(assert (=> b!1153302 m!1063293))

(declare-fun m!1063295 () Bool)

(assert (=> b!1153326 m!1063295))

(declare-fun m!1063297 () Bool)

(assert (=> b!1153320 m!1063297))

(check-sat (not b!1153304) (not bm!54328) (not b!1153311) (not b!1153312) b_and!39663 (not b!1153315) (not b_lambda!19523) (not b!1153320) (not mapNonEmpty!45218) (not start!98830) (not b!1153306) (not b!1153323) (not bm!54332) (not b!1153326) (not b!1153310) (not b_next!24399) (not b!1153302) (not b!1153324) tp_is_empty!28929 (not b!1153319) (not bm!54326) (not b!1153308) (not b!1153322) (not b!1153303) (not b!1153330) (not bm!54329) (not bm!54327))
(check-sat b_and!39663 (not b_next!24399))
