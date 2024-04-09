; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97344 () Bool)

(assert start!97344)

(declare-fun b_free!23279 () Bool)

(declare-fun b_next!23279 () Bool)

(assert (=> start!97344 (= b_free!23279 (not b_next!23279))))

(declare-fun tp!82137 () Bool)

(declare-fun b_and!37409 () Bool)

(assert (=> start!97344 (= tp!82137 b_and!37409)))

(declare-fun b!1108315 () Bool)

(declare-fun e!632313 () Bool)

(declare-datatypes ((V!41845 0))(
  ( (V!41846 (val!13826 Int)) )
))
(declare-datatypes ((tuple2!17538 0))(
  ( (tuple2!17539 (_1!8779 (_ BitVec 64)) (_2!8779 V!41845)) )
))
(declare-datatypes ((List!24274 0))(
  ( (Nil!24271) (Cons!24270 (h!25479 tuple2!17538) (t!34606 List!24274)) )
))
(declare-datatypes ((ListLongMap!15519 0))(
  ( (ListLongMap!15520 (toList!7775 List!24274)) )
))
(declare-fun call!46534 () ListLongMap!15519)

(declare-fun call!46535 () ListLongMap!15519)

(assert (=> b!1108315 (= e!632313 (= call!46534 call!46535))))

(declare-fun b!1108316 () Bool)

(declare-fun res!739730 () Bool)

(declare-fun e!632311 () Bool)

(assert (=> b!1108316 (=> (not res!739730) (not e!632311))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1108316 (= res!739730 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!43126 () Bool)

(declare-fun mapRes!43126 () Bool)

(declare-fun tp!82136 () Bool)

(declare-fun e!632315 () Bool)

(assert (=> mapNonEmpty!43126 (= mapRes!43126 (and tp!82136 e!632315))))

(declare-datatypes ((ValueCell!13060 0))(
  ( (ValueCellFull!13060 (v!16460 V!41845)) (EmptyCell!13060) )
))
(declare-fun mapValue!43126 () ValueCell!13060)

(declare-fun mapKey!43126 () (_ BitVec 32))

(declare-datatypes ((array!71946 0))(
  ( (array!71947 (arr!34622 (Array (_ BitVec 32) ValueCell!13060)) (size!35159 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71946)

(declare-fun mapRest!43126 () (Array (_ BitVec 32) ValueCell!13060))

(assert (=> mapNonEmpty!43126 (= (arr!34622 _values!996) (store mapRest!43126 mapKey!43126 mapValue!43126))))

(declare-fun b!1108317 () Bool)

(declare-fun res!739737 () Bool)

(assert (=> b!1108317 (=> (not res!739737) (not e!632311))))

(declare-datatypes ((array!71948 0))(
  ( (array!71949 (arr!34623 (Array (_ BitVec 32) (_ BitVec 64))) (size!35160 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71948)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71948 (_ BitVec 32)) Bool)

(assert (=> b!1108317 (= res!739737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1108318 () Bool)

(declare-fun e!632308 () Bool)

(assert (=> b!1108318 (= e!632311 e!632308)))

(declare-fun res!739729 () Bool)

(assert (=> b!1108318 (=> (not res!739729) (not e!632308))))

(declare-fun lt!495770 () array!71948)

(assert (=> b!1108318 (= res!739729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495770 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1108318 (= lt!495770 (array!71949 (store (arr!34623 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35160 _keys!1208)))))

(declare-fun zeroValue!944 () V!41845)

(declare-fun defaultEntry!1004 () Int)

(declare-fun e!632307 () array!71946)

(declare-fun minValue!944 () V!41845)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun c!109058 () Bool)

(declare-fun bm!46531 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4242 (array!71948 array!71946 (_ BitVec 32) (_ BitVec 32) V!41845 V!41845 (_ BitVec 32) Int) ListLongMap!15519)

(assert (=> bm!46531 (= call!46534 (getCurrentListMapNoExtraKeys!4242 (ite c!109058 _keys!1208 lt!495770) e!632307 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!109056 () Bool)

(assert (=> bm!46531 (= c!109056 c!109058)))

(declare-fun b!1108319 () Bool)

(declare-fun dynLambda!2367 (Int (_ BitVec 64)) V!41845)

(assert (=> b!1108319 (= e!632307 (array!71947 (store (arr!34622 _values!996) i!673 (ValueCellFull!13060 (dynLambda!2367 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35159 _values!996)))))

(declare-fun b!1108320 () Bool)

(declare-fun res!739734 () Bool)

(assert (=> b!1108320 (=> (not res!739734) (not e!632311))))

(assert (=> b!1108320 (= res!739734 (and (= (size!35159 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35160 _keys!1208) (size!35159 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1108321 () Bool)

(declare-fun e!632306 () array!71946)

(assert (=> b!1108321 (= e!632306 _values!996)))

(declare-fun b!1108322 () Bool)

(declare-fun res!739733 () Bool)

(assert (=> b!1108322 (=> (not res!739733) (not e!632311))))

(declare-datatypes ((List!24275 0))(
  ( (Nil!24272) (Cons!24271 (h!25480 (_ BitVec 64)) (t!34607 List!24275)) )
))
(declare-fun arrayNoDuplicates!0 (array!71948 (_ BitVec 32) List!24275) Bool)

(assert (=> b!1108322 (= res!739733 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24272))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1108323 () Bool)

(declare-fun -!1007 (ListLongMap!15519 (_ BitVec 64)) ListLongMap!15519)

(assert (=> b!1108323 (= e!632313 (= call!46535 (-!1007 call!46534 k!934)))))

(declare-fun b!1108325 () Bool)

(declare-fun e!632314 () Bool)

(declare-fun tp_is_empty!27539 () Bool)

(assert (=> b!1108325 (= e!632314 tp_is_empty!27539)))

(declare-fun b!1108326 () Bool)

(declare-fun e!632312 () Bool)

(assert (=> b!1108326 (= e!632308 (not e!632312))))

(declare-fun res!739736 () Bool)

(assert (=> b!1108326 (=> res!739736 e!632312)))

(assert (=> b!1108326 (= res!739736 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35160 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71948 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1108326 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36303 0))(
  ( (Unit!36304) )
))
(declare-fun lt!495769 () Unit!36303)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71948 (_ BitVec 64) (_ BitVec 32)) Unit!36303)

(assert (=> b!1108326 (= lt!495769 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1108327 () Bool)

(assert (=> b!1108327 (= e!632312 true)))

(assert (=> b!1108327 e!632313))

(assert (=> b!1108327 (= c!109058 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!495771 () Unit!36303)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!260 (array!71948 array!71946 (_ BitVec 32) (_ BitVec 32) V!41845 V!41845 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36303)

(assert (=> b!1108327 (= lt!495771 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!260 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108328 () Bool)

(declare-fun e!632310 () Bool)

(assert (=> b!1108328 (= e!632310 (and e!632314 mapRes!43126))))

(declare-fun condMapEmpty!43126 () Bool)

(declare-fun mapDefault!43126 () ValueCell!13060)

