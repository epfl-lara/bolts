; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98154 () Bool)

(assert start!98154)

(declare-fun b_free!23819 () Bool)

(declare-fun b_next!23819 () Bool)

(assert (=> start!98154 (= b_free!23819 (not b_next!23819))))

(declare-fun tp!84161 () Bool)

(declare-fun b_and!38443 () Bool)

(assert (=> start!98154 (= tp!84161 b_and!38443)))

(declare-fun b!1127505 () Bool)

(declare-fun res!753548 () Bool)

(declare-fun e!641775 () Bool)

(assert (=> b!1127505 (=> (not res!753548) (not e!641775))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1127505 (= res!753548 (validKeyInArray!0 k!934))))

(declare-fun e!641781 () Bool)

(declare-datatypes ((V!42925 0))(
  ( (V!42926 (val!14231 Int)) )
))
(declare-datatypes ((tuple2!17990 0))(
  ( (tuple2!17991 (_1!9005 (_ BitVec 64)) (_2!9005 V!42925)) )
))
(declare-datatypes ((List!24815 0))(
  ( (Nil!24812) (Cons!24811 (h!26020 tuple2!17990) (t!35633 List!24815)) )
))
(declare-datatypes ((ListLongMap!15971 0))(
  ( (ListLongMap!15972 (toList!8001 List!24815)) )
))
(declare-fun call!47740 () ListLongMap!15971)

(declare-fun call!47741 () ListLongMap!15971)

(declare-fun b!1127506 () Bool)

(declare-fun -!1138 (ListLongMap!15971 (_ BitVec 64)) ListLongMap!15971)

(assert (=> b!1127506 (= e!641781 (= call!47740 (-!1138 call!47741 k!934)))))

(declare-fun b!1127507 () Bool)

(declare-fun res!753546 () Bool)

(assert (=> b!1127507 (=> (not res!753546) (not e!641775))))

(declare-datatypes ((array!73518 0))(
  ( (array!73519 (arr!35408 (Array (_ BitVec 32) (_ BitVec 64))) (size!35945 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73518)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1127507 (= res!753546 (= (select (arr!35408 _keys!1208) i!673) k!934))))

(declare-fun b!1127508 () Bool)

(declare-fun e!641779 () Bool)

(declare-fun e!641782 () Bool)

(assert (=> b!1127508 (= e!641779 e!641782)))

(declare-fun res!753547 () Bool)

(assert (=> b!1127508 (=> res!753547 e!641782)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1127508 (= res!753547 (not (= (select (arr!35408 _keys!1208) from!1455) k!934)))))

(assert (=> b!1127508 e!641781))

(declare-fun c!109679 () Bool)

(assert (=> b!1127508 (= c!109679 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42925)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13465 0))(
  ( (ValueCellFull!13465 (v!16865 V!42925)) (EmptyCell!13465) )
))
(declare-datatypes ((array!73520 0))(
  ( (array!73521 (arr!35409 (Array (_ BitVec 32) ValueCell!13465)) (size!35946 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73520)

(declare-fun minValue!944 () V!42925)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((Unit!36893 0))(
  ( (Unit!36894) )
))
(declare-fun lt!500601 () Unit!36893)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!395 (array!73518 array!73520 (_ BitVec 32) (_ BitVec 32) V!42925 V!42925 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36893)

(assert (=> b!1127508 (= lt!500601 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!395 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!753542 () Bool)

(assert (=> start!98154 (=> (not res!753542) (not e!641775))))

(assert (=> start!98154 (= res!753542 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35945 _keys!1208))))))

(assert (=> start!98154 e!641775))

(declare-fun tp_is_empty!28349 () Bool)

(assert (=> start!98154 tp_is_empty!28349))

(declare-fun array_inv!27038 (array!73518) Bool)

(assert (=> start!98154 (array_inv!27038 _keys!1208)))

(assert (=> start!98154 true))

(assert (=> start!98154 tp!84161))

(declare-fun e!641776 () Bool)

(declare-fun array_inv!27039 (array!73520) Bool)

(assert (=> start!98154 (and (array_inv!27039 _values!996) e!641776)))

(declare-fun b!1127509 () Bool)

(declare-fun res!753549 () Bool)

(assert (=> b!1127509 (=> (not res!753549) (not e!641775))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1127509 (= res!753549 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!44341 () Bool)

(declare-fun mapRes!44341 () Bool)

(declare-fun tp!84162 () Bool)

(declare-fun e!641777 () Bool)

(assert (=> mapNonEmpty!44341 (= mapRes!44341 (and tp!84162 e!641777))))

(declare-fun mapKey!44341 () (_ BitVec 32))

(declare-fun mapRest!44341 () (Array (_ BitVec 32) ValueCell!13465))

(declare-fun mapValue!44341 () ValueCell!13465)

(assert (=> mapNonEmpty!44341 (= (arr!35409 _values!996) (store mapRest!44341 mapKey!44341 mapValue!44341))))

(declare-fun b!1127510 () Bool)

(declare-fun e!641774 () Bool)

(assert (=> b!1127510 (= e!641775 e!641774)))

(declare-fun res!753541 () Bool)

(assert (=> b!1127510 (=> (not res!753541) (not e!641774))))

(declare-fun lt!500600 () array!73518)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73518 (_ BitVec 32)) Bool)

(assert (=> b!1127510 (= res!753541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500600 mask!1564))))

(assert (=> b!1127510 (= lt!500600 (array!73519 (store (arr!35408 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35945 _keys!1208)))))

(declare-fun bm!47737 () Bool)

(declare-fun lt!500599 () array!73520)

(declare-fun getCurrentListMapNoExtraKeys!4459 (array!73518 array!73520 (_ BitVec 32) (_ BitVec 32) V!42925 V!42925 (_ BitVec 32) Int) ListLongMap!15971)

(assert (=> bm!47737 (= call!47740 (getCurrentListMapNoExtraKeys!4459 lt!500600 lt!500599 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44341 () Bool)

(assert (=> mapIsEmpty!44341 mapRes!44341))

(declare-fun b!1127511 () Bool)

(declare-fun res!753540 () Bool)

(assert (=> b!1127511 (=> (not res!753540) (not e!641775))))

(assert (=> b!1127511 (= res!753540 (and (= (size!35946 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35945 _keys!1208) (size!35946 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1127512 () Bool)

(assert (=> b!1127512 (= e!641781 (= call!47740 call!47741))))

(declare-fun b!1127513 () Bool)

(declare-fun res!753545 () Bool)

(assert (=> b!1127513 (=> (not res!753545) (not e!641775))))

(declare-datatypes ((List!24816 0))(
  ( (Nil!24813) (Cons!24812 (h!26021 (_ BitVec 64)) (t!35634 List!24816)) )
))
(declare-fun arrayNoDuplicates!0 (array!73518 (_ BitVec 32) List!24816) Bool)

(assert (=> b!1127513 (= res!753545 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24813))))

(declare-fun b!1127514 () Bool)

(declare-fun e!641780 () Bool)

(assert (=> b!1127514 (= e!641780 e!641779)))

(declare-fun res!753543 () Bool)

(assert (=> b!1127514 (=> res!753543 e!641779)))

(assert (=> b!1127514 (= res!753543 (not (= from!1455 i!673)))))

(declare-fun lt!500598 () ListLongMap!15971)

(assert (=> b!1127514 (= lt!500598 (getCurrentListMapNoExtraKeys!4459 lt!500600 lt!500599 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2538 (Int (_ BitVec 64)) V!42925)

(assert (=> b!1127514 (= lt!500599 (array!73521 (store (arr!35409 _values!996) i!673 (ValueCellFull!13465 (dynLambda!2538 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35946 _values!996)))))

(declare-fun lt!500602 () ListLongMap!15971)

(assert (=> b!1127514 (= lt!500602 (getCurrentListMapNoExtraKeys!4459 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1127515 () Bool)

(declare-fun e!641783 () Bool)

(assert (=> b!1127515 (= e!641776 (and e!641783 mapRes!44341))))

(declare-fun condMapEmpty!44341 () Bool)

(declare-fun mapDefault!44341 () ValueCell!13465)

