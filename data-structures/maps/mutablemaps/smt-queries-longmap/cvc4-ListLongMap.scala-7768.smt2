; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97392 () Bool)

(assert start!97392)

(declare-fun b_free!23327 () Bool)

(declare-fun b_next!23327 () Bool)

(assert (=> start!97392 (= b_free!23327 (not b_next!23327))))

(declare-fun tp!82280 () Bool)

(declare-fun b_and!37509 () Bool)

(assert (=> start!97392 (= tp!82280 b_and!37509)))

(declare-fun b!1109531 () Bool)

(declare-fun res!740526 () Bool)

(declare-fun e!632890 () Bool)

(assert (=> b!1109531 (=> (not res!740526) (not e!632890))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72042 0))(
  ( (array!72043 (arr!34670 (Array (_ BitVec 32) (_ BitVec 64))) (size!35207 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72042)

(assert (=> b!1109531 (= res!740526 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35207 _keys!1208))))))

(declare-fun b!1109532 () Bool)

(declare-fun res!740521 () Bool)

(assert (=> b!1109532 (=> (not res!740521) (not e!632890))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1109532 (= res!740521 (validKeyInArray!0 k!934))))

(declare-fun b!1109533 () Bool)

(declare-fun res!740523 () Bool)

(assert (=> b!1109533 (=> (not res!740523) (not e!632890))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1109533 (= res!740523 (validMask!0 mask!1564))))

(declare-fun b!1109534 () Bool)

(declare-fun e!632897 () Bool)

(assert (=> b!1109534 (= e!632890 e!632897)))

(declare-fun res!740524 () Bool)

(assert (=> b!1109534 (=> (not res!740524) (not e!632897))))

(declare-fun lt!495986 () array!72042)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72042 (_ BitVec 32)) Bool)

(assert (=> b!1109534 (= res!740524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495986 mask!1564))))

(assert (=> b!1109534 (= lt!495986 (array!72043 (store (arr!34670 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35207 _keys!1208)))))

(declare-fun b!1109535 () Bool)

(declare-fun res!740519 () Bool)

(assert (=> b!1109535 (=> (not res!740519) (not e!632890))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!41909 0))(
  ( (V!41910 (val!13850 Int)) )
))
(declare-datatypes ((ValueCell!13084 0))(
  ( (ValueCellFull!13084 (v!16484 V!41909)) (EmptyCell!13084) )
))
(declare-datatypes ((array!72044 0))(
  ( (array!72045 (arr!34671 (Array (_ BitVec 32) ValueCell!13084)) (size!35208 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72044)

(assert (=> b!1109535 (= res!740519 (and (= (size!35208 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35207 _keys!1208) (size!35208 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1109536 () Bool)

(declare-fun e!632891 () Bool)

(assert (=> b!1109536 (= e!632891 true)))

(declare-fun e!632893 () Bool)

(assert (=> b!1109536 e!632893))

(declare-fun c!109136 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1109536 (= c!109136 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!41909)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!36335 0))(
  ( (Unit!36336) )
))
(declare-fun lt!495987 () Unit!36335)

(declare-fun minValue!944 () V!41909)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!275 (array!72042 array!72044 (_ BitVec 32) (_ BitVec 32) V!41909 V!41909 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36335)

(assert (=> b!1109536 (= lt!495987 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!275 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109537 () Bool)

(declare-fun e!632894 () Bool)

(declare-fun tp_is_empty!27587 () Bool)

(assert (=> b!1109537 (= e!632894 tp_is_empty!27587)))

(declare-fun mapNonEmpty!43198 () Bool)

(declare-fun mapRes!43198 () Bool)

(declare-fun tp!82281 () Bool)

(assert (=> mapNonEmpty!43198 (= mapRes!43198 (and tp!82281 e!632894))))

(declare-fun mapValue!43198 () ValueCell!13084)

(declare-fun mapRest!43198 () (Array (_ BitVec 32) ValueCell!13084))

(declare-fun mapKey!43198 () (_ BitVec 32))

(assert (=> mapNonEmpty!43198 (= (arr!34671 _values!996) (store mapRest!43198 mapKey!43198 mapValue!43198))))

(declare-fun res!740525 () Bool)

(assert (=> start!97392 (=> (not res!740525) (not e!632890))))

(assert (=> start!97392 (= res!740525 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35207 _keys!1208))))))

(assert (=> start!97392 e!632890))

(assert (=> start!97392 tp_is_empty!27587))

(declare-fun array_inv!26546 (array!72042) Bool)

(assert (=> start!97392 (array_inv!26546 _keys!1208)))

(assert (=> start!97392 true))

(assert (=> start!97392 tp!82280))

(declare-fun e!632895 () Bool)

(declare-fun array_inv!26547 (array!72044) Bool)

(assert (=> start!97392 (and (array_inv!26547 _values!996) e!632895)))

(declare-fun b!1109538 () Bool)

(declare-fun res!740520 () Bool)

(assert (=> b!1109538 (=> (not res!740520) (not e!632890))))

(assert (=> b!1109538 (= res!740520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1109539 () Bool)

(declare-fun e!632892 () Bool)

(assert (=> b!1109539 (= e!632892 tp_is_empty!27587)))

(declare-fun mapIsEmpty!43198 () Bool)

(assert (=> mapIsEmpty!43198 mapRes!43198))

(declare-fun bm!46675 () Bool)

(declare-datatypes ((tuple2!17578 0))(
  ( (tuple2!17579 (_1!8799 (_ BitVec 64)) (_2!8799 V!41909)) )
))
(declare-datatypes ((List!24316 0))(
  ( (Nil!24313) (Cons!24312 (h!25521 tuple2!17578) (t!34696 List!24316)) )
))
(declare-datatypes ((ListLongMap!15559 0))(
  ( (ListLongMap!15560 (toList!7795 List!24316)) )
))
(declare-fun call!46679 () ListLongMap!15559)

(declare-fun getCurrentListMapNoExtraKeys!4259 (array!72042 array!72044 (_ BitVec 32) (_ BitVec 32) V!41909 V!41909 (_ BitVec 32) Int) ListLongMap!15559)

(assert (=> bm!46675 (= call!46679 (getCurrentListMapNoExtraKeys!4259 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109540 () Bool)

(declare-fun call!46678 () ListLongMap!15559)

(declare-fun -!1023 (ListLongMap!15559 (_ BitVec 64)) ListLongMap!15559)

(assert (=> b!1109540 (= e!632893 (= call!46678 (-!1023 call!46679 k!934)))))

(declare-fun b!1109541 () Bool)

(assert (=> b!1109541 (= e!632897 (not e!632891))))

(declare-fun res!740522 () Bool)

(assert (=> b!1109541 (=> res!740522 e!632891)))

(assert (=> b!1109541 (= res!740522 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35207 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72042 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1109541 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!495985 () Unit!36335)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72042 (_ BitVec 64) (_ BitVec 32)) Unit!36335)

(assert (=> b!1109541 (= lt!495985 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1109542 () Bool)

(assert (=> b!1109542 (= e!632895 (and e!632892 mapRes!43198))))

(declare-fun condMapEmpty!43198 () Bool)

(declare-fun mapDefault!43198 () ValueCell!13084)

