; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98078 () Bool)

(assert start!98078)

(declare-fun b_free!23743 () Bool)

(declare-fun b_next!23743 () Bool)

(assert (=> start!98078 (= b_free!23743 (not b_next!23743))))

(declare-fun tp!83933 () Bool)

(declare-fun b_and!38291 () Bool)

(assert (=> start!98078 (= tp!83933 b_and!38291)))

(declare-fun b!1125354 () Bool)

(declare-fun res!752046 () Bool)

(declare-fun e!640630 () Bool)

(assert (=> b!1125354 (=> (not res!752046) (not e!640630))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73368 0))(
  ( (array!73369 (arr!35333 (Array (_ BitVec 32) (_ BitVec 64))) (size!35870 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73368)

(assert (=> b!1125354 (= res!752046 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35870 _keys!1208))))))

(declare-fun b!1125355 () Bool)

(declare-fun res!752036 () Bool)

(assert (=> b!1125355 (=> (not res!752036) (not e!640630))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42825 0))(
  ( (V!42826 (val!14193 Int)) )
))
(declare-datatypes ((ValueCell!13427 0))(
  ( (ValueCellFull!13427 (v!16827 V!42825)) (EmptyCell!13427) )
))
(declare-datatypes ((array!73370 0))(
  ( (array!73371 (arr!35334 (Array (_ BitVec 32) ValueCell!13427)) (size!35871 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73370)

(assert (=> b!1125355 (= res!752036 (and (= (size!35871 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35870 _keys!1208) (size!35871 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1125357 () Bool)

(declare-fun e!640629 () Bool)

(declare-fun e!640635 () Bool)

(assert (=> b!1125357 (= e!640629 e!640635)))

(declare-fun res!752041 () Bool)

(assert (=> b!1125357 (=> res!752041 e!640635)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1125357 (= res!752041 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!42825)

(declare-fun lt!499803 () array!73370)

(declare-fun lt!499808 () array!73368)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42825)

(declare-datatypes ((tuple2!17918 0))(
  ( (tuple2!17919 (_1!8969 (_ BitVec 64)) (_2!8969 V!42825)) )
))
(declare-datatypes ((List!24748 0))(
  ( (Nil!24745) (Cons!24744 (h!25953 tuple2!17918) (t!35490 List!24748)) )
))
(declare-datatypes ((ListLongMap!15899 0))(
  ( (ListLongMap!15900 (toList!7965 List!24748)) )
))
(declare-fun lt!499805 () ListLongMap!15899)

(declare-fun getCurrentListMapNoExtraKeys!4424 (array!73368 array!73370 (_ BitVec 32) (_ BitVec 32) V!42825 V!42825 (_ BitVec 32) Int) ListLongMap!15899)

(assert (=> b!1125357 (= lt!499805 (getCurrentListMapNoExtraKeys!4424 lt!499808 lt!499803 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2509 (Int (_ BitVec 64)) V!42825)

(assert (=> b!1125357 (= lt!499803 (array!73371 (store (arr!35334 _values!996) i!673 (ValueCellFull!13427 (dynLambda!2509 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35871 _values!996)))))

(declare-fun lt!499807 () ListLongMap!15899)

(assert (=> b!1125357 (= lt!499807 (getCurrentListMapNoExtraKeys!4424 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!47509 () Bool)

(declare-fun call!47512 () ListLongMap!15899)

(assert (=> bm!47509 (= call!47512 (getCurrentListMapNoExtraKeys!4424 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125358 () Bool)

(declare-fun e!640633 () Bool)

(declare-fun e!640634 () Bool)

(assert (=> b!1125358 (= e!640633 e!640634)))

(declare-fun res!752042 () Bool)

(assert (=> b!1125358 (=> res!752042 e!640634)))

(declare-fun lt!499804 () ListLongMap!15899)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6476 (ListLongMap!15899 (_ BitVec 64)) Bool)

(assert (=> b!1125358 (= res!752042 (not (contains!6476 lt!499804 k!934)))))

(assert (=> b!1125358 (= lt!499804 (getCurrentListMapNoExtraKeys!4424 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125359 () Bool)

(declare-fun e!640627 () Bool)

(assert (=> b!1125359 (= e!640627 (not e!640629))))

(declare-fun res!752040 () Bool)

(assert (=> b!1125359 (=> res!752040 e!640629)))

(assert (=> b!1125359 (= res!752040 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73368 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1125359 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36827 0))(
  ( (Unit!36828) )
))
(declare-fun lt!499806 () Unit!36827)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73368 (_ BitVec 64) (_ BitVec 32)) Unit!36827)

(assert (=> b!1125359 (= lt!499806 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1125360 () Bool)

(assert (=> b!1125360 (= e!640635 e!640633)))

(declare-fun res!752048 () Bool)

(assert (=> b!1125360 (=> res!752048 e!640633)))

(assert (=> b!1125360 (= res!752048 (not (= (select (arr!35333 _keys!1208) from!1455) k!934)))))

(declare-fun e!640637 () Bool)

(assert (=> b!1125360 e!640637))

(declare-fun c!109565 () Bool)

(assert (=> b!1125360 (= c!109565 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!499802 () Unit!36827)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!366 (array!73368 array!73370 (_ BitVec 32) (_ BitVec 32) V!42825 V!42825 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36827)

(assert (=> b!1125360 (= lt!499802 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!366 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!47510 () Bool)

(declare-fun call!47513 () ListLongMap!15899)

(assert (=> bm!47510 (= call!47513 (getCurrentListMapNoExtraKeys!4424 lt!499808 lt!499803 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125361 () Bool)

(declare-fun res!752038 () Bool)

(assert (=> b!1125361 (=> res!752038 e!640634)))

(assert (=> b!1125361 (= res!752038 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1125362 () Bool)

(declare-fun res!752039 () Bool)

(assert (=> b!1125362 (=> (not res!752039) (not e!640630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1125362 (= res!752039 (validMask!0 mask!1564))))

(declare-fun b!1125363 () Bool)

(assert (=> b!1125363 (= e!640634 true)))

(declare-fun +!3389 (ListLongMap!15899 tuple2!17918) ListLongMap!15899)

(assert (=> b!1125363 (contains!6476 (+!3389 lt!499804 (tuple2!17919 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k!934)))

(declare-fun lt!499809 () Unit!36827)

(declare-fun addStillContains!688 (ListLongMap!15899 (_ BitVec 64) V!42825 (_ BitVec 64)) Unit!36827)

(assert (=> b!1125363 (= lt!499809 (addStillContains!688 lt!499804 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun b!1125364 () Bool)

(declare-fun -!1113 (ListLongMap!15899 (_ BitVec 64)) ListLongMap!15899)

(assert (=> b!1125364 (= e!640637 (= call!47513 (-!1113 call!47512 k!934)))))

(declare-fun b!1125356 () Bool)

(declare-fun e!640628 () Bool)

(declare-fun tp_is_empty!28273 () Bool)

(assert (=> b!1125356 (= e!640628 tp_is_empty!28273)))

(declare-fun res!752043 () Bool)

(assert (=> start!98078 (=> (not res!752043) (not e!640630))))

(assert (=> start!98078 (= res!752043 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35870 _keys!1208))))))

(assert (=> start!98078 e!640630))

(assert (=> start!98078 tp_is_empty!28273))

(declare-fun array_inv!26994 (array!73368) Bool)

(assert (=> start!98078 (array_inv!26994 _keys!1208)))

(assert (=> start!98078 true))

(assert (=> start!98078 tp!83933))

(declare-fun e!640636 () Bool)

(declare-fun array_inv!26995 (array!73370) Bool)

(assert (=> start!98078 (and (array_inv!26995 _values!996) e!640636)))

(declare-fun b!1125365 () Bool)

(declare-fun res!752037 () Bool)

(assert (=> b!1125365 (=> (not res!752037) (not e!640630))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1125365 (= res!752037 (validKeyInArray!0 k!934))))

(declare-fun b!1125366 () Bool)

(declare-fun res!752044 () Bool)

(assert (=> b!1125366 (=> (not res!752044) (not e!640630))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73368 (_ BitVec 32)) Bool)

(assert (=> b!1125366 (= res!752044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!44227 () Bool)

(declare-fun mapRes!44227 () Bool)

(assert (=> mapIsEmpty!44227 mapRes!44227))

(declare-fun b!1125367 () Bool)

(assert (=> b!1125367 (= e!640630 e!640627)))

(declare-fun res!752049 () Bool)

(assert (=> b!1125367 (=> (not res!752049) (not e!640627))))

(assert (=> b!1125367 (= res!752049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499808 mask!1564))))

(assert (=> b!1125367 (= lt!499808 (array!73369 (store (arr!35333 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35870 _keys!1208)))))

(declare-fun b!1125368 () Bool)

(declare-fun res!752047 () Bool)

(assert (=> b!1125368 (=> (not res!752047) (not e!640627))))

(declare-datatypes ((List!24749 0))(
  ( (Nil!24746) (Cons!24745 (h!25954 (_ BitVec 64)) (t!35491 List!24749)) )
))
(declare-fun arrayNoDuplicates!0 (array!73368 (_ BitVec 32) List!24749) Bool)

(assert (=> b!1125368 (= res!752047 (arrayNoDuplicates!0 lt!499808 #b00000000000000000000000000000000 Nil!24746))))

(declare-fun b!1125369 () Bool)

(declare-fun e!640631 () Bool)

(assert (=> b!1125369 (= e!640631 tp_is_empty!28273)))

(declare-fun mapNonEmpty!44227 () Bool)

(declare-fun tp!83934 () Bool)

(assert (=> mapNonEmpty!44227 (= mapRes!44227 (and tp!83934 e!640631))))

(declare-fun mapValue!44227 () ValueCell!13427)

(declare-fun mapRest!44227 () (Array (_ BitVec 32) ValueCell!13427))

(declare-fun mapKey!44227 () (_ BitVec 32))

(assert (=> mapNonEmpty!44227 (= (arr!35334 _values!996) (store mapRest!44227 mapKey!44227 mapValue!44227))))

(declare-fun b!1125370 () Bool)

(assert (=> b!1125370 (= e!640636 (and e!640628 mapRes!44227))))

(declare-fun condMapEmpty!44227 () Bool)

(declare-fun mapDefault!44227 () ValueCell!13427)

