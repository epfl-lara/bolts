; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97494 () Bool)

(assert start!97494)

(declare-fun b_free!23429 () Bool)

(declare-fun b_next!23429 () Bool)

(assert (=> start!97494 (= b_free!23429 (not b_next!23429))))

(declare-fun tp!82587 () Bool)

(declare-fun b_and!37717 () Bool)

(assert (=> start!97494 (= tp!82587 b_and!37717)))

(declare-datatypes ((V!42045 0))(
  ( (V!42046 (val!13901 Int)) )
))
(declare-fun zeroValue!944 () V!42045)

(declare-datatypes ((tuple2!17654 0))(
  ( (tuple2!17655 (_1!8837 (_ BitVec 64)) (_2!8837 V!42045)) )
))
(declare-datatypes ((List!24391 0))(
  ( (Nil!24388) (Cons!24387 (h!25596 tuple2!17654) (t!34873 List!24391)) )
))
(declare-datatypes ((ListLongMap!15635 0))(
  ( (ListLongMap!15636 (toList!7833 List!24391)) )
))
(declare-fun call!46984 () ListLongMap!15635)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!46981 () Bool)

(declare-datatypes ((array!72236 0))(
  ( (array!72237 (arr!34767 (Array (_ BitVec 32) (_ BitVec 64))) (size!35304 (_ BitVec 32))) )
))
(declare-fun lt!496446 () array!72236)

(declare-datatypes ((ValueCell!13135 0))(
  ( (ValueCellFull!13135 (v!16535 V!42045)) (EmptyCell!13135) )
))
(declare-datatypes ((array!72238 0))(
  ( (array!72239 (arr!34768 (Array (_ BitVec 32) ValueCell!13135)) (size!35305 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72238)

(declare-fun minValue!944 () V!42045)

(declare-fun getCurrentListMapNoExtraKeys!4294 (array!72236 array!72238 (_ BitVec 32) (_ BitVec 32) V!42045 V!42045 (_ BitVec 32) Int) ListLongMap!15635)

(declare-fun dynLambda!2416 (Int (_ BitVec 64)) V!42045)

(assert (=> bm!46981 (= call!46984 (getCurrentListMapNoExtraKeys!4294 lt!496446 (array!72239 (store (arr!34768 _values!996) i!673 (ValueCellFull!13135 (dynLambda!2416 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35305 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1112105 () Bool)

(declare-fun res!742208 () Bool)

(declare-fun e!634130 () Bool)

(assert (=> b!1112105 (=> (not res!742208) (not e!634130))))

(declare-fun _keys!1208 () array!72236)

(assert (=> b!1112105 (= res!742208 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35304 _keys!1208))))))

(declare-fun b!1112106 () Bool)

(declare-fun e!634131 () Bool)

(declare-fun call!46985 () ListLongMap!15635)

(assert (=> b!1112106 (= e!634131 (= call!46984 call!46985))))

(declare-fun b!1112107 () Bool)

(declare-fun res!742207 () Bool)

(assert (=> b!1112107 (=> (not res!742207) (not e!634130))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1112107 (= res!742207 (validMask!0 mask!1564))))

(declare-fun b!1112108 () Bool)

(declare-fun e!634128 () Bool)

(assert (=> b!1112108 (= e!634128 true)))

(assert (=> b!1112108 e!634131))

(declare-fun c!109301 () Bool)

(assert (=> b!1112108 (= c!109301 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36407 0))(
  ( (Unit!36408) )
))
(declare-fun lt!496445 () Unit!36407)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!309 (array!72236 array!72238 (_ BitVec 32) (_ BitVec 32) V!42045 V!42045 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36407)

(assert (=> b!1112108 (= lt!496445 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!309 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1112109 () Bool)

(declare-fun -!1052 (ListLongMap!15635 (_ BitVec 64)) ListLongMap!15635)

(assert (=> b!1112109 (= e!634131 (= call!46984 (-!1052 call!46985 k!934)))))

(declare-fun b!1112110 () Bool)

(declare-fun e!634132 () Bool)

(assert (=> b!1112110 (= e!634130 e!634132)))

(declare-fun res!742202 () Bool)

(assert (=> b!1112110 (=> (not res!742202) (not e!634132))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72236 (_ BitVec 32)) Bool)

(assert (=> b!1112110 (= res!742202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496446 mask!1564))))

(assert (=> b!1112110 (= lt!496446 (array!72237 (store (arr!34767 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35304 _keys!1208)))))

(declare-fun b!1112111 () Bool)

(declare-fun res!742211 () Bool)

(assert (=> b!1112111 (=> (not res!742211) (not e!634130))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1112111 (= res!742211 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!43351 () Bool)

(declare-fun mapRes!43351 () Bool)

(declare-fun tp!82586 () Bool)

(declare-fun e!634126 () Bool)

(assert (=> mapNonEmpty!43351 (= mapRes!43351 (and tp!82586 e!634126))))

(declare-fun mapValue!43351 () ValueCell!13135)

(declare-fun mapKey!43351 () (_ BitVec 32))

(declare-fun mapRest!43351 () (Array (_ BitVec 32) ValueCell!13135))

(assert (=> mapNonEmpty!43351 (= (arr!34768 _values!996) (store mapRest!43351 mapKey!43351 mapValue!43351))))

(declare-fun bm!46982 () Bool)

(assert (=> bm!46982 (= call!46985 (getCurrentListMapNoExtraKeys!4294 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1112112 () Bool)

(declare-fun tp_is_empty!27689 () Bool)

(assert (=> b!1112112 (= e!634126 tp_is_empty!27689)))

(declare-fun res!742206 () Bool)

(assert (=> start!97494 (=> (not res!742206) (not e!634130))))

(assert (=> start!97494 (= res!742206 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35304 _keys!1208))))))

(assert (=> start!97494 e!634130))

(assert (=> start!97494 tp_is_empty!27689))

(declare-fun array_inv!26608 (array!72236) Bool)

(assert (=> start!97494 (array_inv!26608 _keys!1208)))

(assert (=> start!97494 true))

(assert (=> start!97494 tp!82587))

(declare-fun e!634129 () Bool)

(declare-fun array_inv!26609 (array!72238) Bool)

(assert (=> start!97494 (and (array_inv!26609 _values!996) e!634129)))

(declare-fun b!1112113 () Bool)

(declare-fun res!742209 () Bool)

(assert (=> b!1112113 (=> (not res!742209) (not e!634130))))

(assert (=> b!1112113 (= res!742209 (= (select (arr!34767 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!43351 () Bool)

(assert (=> mapIsEmpty!43351 mapRes!43351))

(declare-fun b!1112114 () Bool)

(declare-fun e!634133 () Bool)

(assert (=> b!1112114 (= e!634133 tp_is_empty!27689)))

(declare-fun b!1112115 () Bool)

(declare-fun res!742205 () Bool)

(assert (=> b!1112115 (=> (not res!742205) (not e!634130))))

(declare-datatypes ((List!24392 0))(
  ( (Nil!24389) (Cons!24388 (h!25597 (_ BitVec 64)) (t!34874 List!24392)) )
))
(declare-fun arrayNoDuplicates!0 (array!72236 (_ BitVec 32) List!24392) Bool)

(assert (=> b!1112115 (= res!742205 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24389))))

(declare-fun b!1112116 () Bool)

(declare-fun res!742204 () Bool)

(assert (=> b!1112116 (=> (not res!742204) (not e!634130))))

(assert (=> b!1112116 (= res!742204 (and (= (size!35305 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35304 _keys!1208) (size!35305 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1112117 () Bool)

(assert (=> b!1112117 (= e!634132 (not e!634128))))

(declare-fun res!742203 () Bool)

(assert (=> b!1112117 (=> res!742203 e!634128)))

(assert (=> b!1112117 (= res!742203 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35304 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72236 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1112117 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!496444 () Unit!36407)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72236 (_ BitVec 64) (_ BitVec 32)) Unit!36407)

(assert (=> b!1112117 (= lt!496444 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1112118 () Bool)

(assert (=> b!1112118 (= e!634129 (and e!634133 mapRes!43351))))

(declare-fun condMapEmpty!43351 () Bool)

(declare-fun mapDefault!43351 () ValueCell!13135)

