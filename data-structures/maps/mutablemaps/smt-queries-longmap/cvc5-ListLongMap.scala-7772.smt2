; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97412 () Bool)

(assert start!97412)

(declare-fun b_free!23347 () Bool)

(declare-fun b_next!23347 () Bool)

(assert (=> start!97412 (= b_free!23347 (not b_next!23347))))

(declare-fun tp!82341 () Bool)

(declare-fun b_and!37551 () Bool)

(assert (=> start!97412 (= tp!82341 b_and!37551)))

(declare-fun b!1110043 () Bool)

(declare-fun res!740851 () Bool)

(declare-fun e!633136 () Bool)

(assert (=> b!1110043 (=> (not res!740851) (not e!633136))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1110043 (= res!740851 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!43228 () Bool)

(declare-fun mapRes!43228 () Bool)

(assert (=> mapIsEmpty!43228 mapRes!43228))

(declare-fun b!1110044 () Bool)

(declare-fun e!633140 () Bool)

(assert (=> b!1110044 (= e!633136 e!633140)))

(declare-fun res!740859 () Bool)

(assert (=> b!1110044 (=> (not res!740859) (not e!633140))))

(declare-datatypes ((array!72080 0))(
  ( (array!72081 (arr!34689 (Array (_ BitVec 32) (_ BitVec 64))) (size!35226 (_ BitVec 32))) )
))
(declare-fun lt!496075 () array!72080)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72080 (_ BitVec 32)) Bool)

(assert (=> b!1110044 (= res!740859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496075 mask!1564))))

(declare-fun _keys!1208 () array!72080)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1110044 (= lt!496075 (array!72081 (store (arr!34689 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35226 _keys!1208)))))

(declare-datatypes ((V!41937 0))(
  ( (V!41938 (val!13860 Int)) )
))
(declare-datatypes ((tuple2!17592 0))(
  ( (tuple2!17593 (_1!8806 (_ BitVec 64)) (_2!8806 V!41937)) )
))
(declare-datatypes ((List!24328 0))(
  ( (Nil!24325) (Cons!24324 (h!25533 tuple2!17592) (t!34728 List!24328)) )
))
(declare-datatypes ((ListLongMap!15573 0))(
  ( (ListLongMap!15574 (toList!7802 List!24328)) )
))
(declare-fun call!46738 () ListLongMap!15573)

(declare-fun b!1110045 () Bool)

(declare-fun e!633138 () Bool)

(declare-fun call!46739 () ListLongMap!15573)

(declare-fun -!1029 (ListLongMap!15573 (_ BitVec 64)) ListLongMap!15573)

(assert (=> b!1110045 (= e!633138 (= call!46739 (-!1029 call!46738 k!934)))))

(declare-fun b!1110046 () Bool)

(declare-fun e!633137 () Bool)

(assert (=> b!1110046 (= e!633140 (not e!633137))))

(declare-fun res!740849 () Bool)

(assert (=> b!1110046 (=> res!740849 e!633137)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1110046 (= res!740849 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35226 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72080 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1110046 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36349 0))(
  ( (Unit!36350) )
))
(declare-fun lt!496076 () Unit!36349)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72080 (_ BitVec 64) (_ BitVec 32)) Unit!36349)

(assert (=> b!1110046 (= lt!496076 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1110047 () Bool)

(declare-fun res!740858 () Bool)

(assert (=> b!1110047 (=> (not res!740858) (not e!633136))))

(assert (=> b!1110047 (= res!740858 (= (select (arr!34689 _keys!1208) i!673) k!934))))

(declare-fun b!1110048 () Bool)

(assert (=> b!1110048 (= e!633137 true)))

(assert (=> b!1110048 e!633138))

(declare-fun c!109172 () Bool)

(assert (=> b!1110048 (= c!109172 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!41937)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13094 0))(
  ( (ValueCellFull!13094 (v!16494 V!41937)) (EmptyCell!13094) )
))
(declare-datatypes ((array!72082 0))(
  ( (array!72083 (arr!34690 (Array (_ BitVec 32) ValueCell!13094)) (size!35227 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72082)

(declare-fun lt!496077 () Unit!36349)

(declare-fun minValue!944 () V!41937)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!281 (array!72080 array!72082 (_ BitVec 32) (_ BitVec 32) V!41937 V!41937 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36349)

(assert (=> b!1110048 (= lt!496077 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!281 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110049 () Bool)

(declare-fun e!633143 () Bool)

(declare-fun tp_is_empty!27607 () Bool)

(assert (=> b!1110049 (= e!633143 tp_is_empty!27607)))

(declare-fun bm!46735 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4265 (array!72080 array!72082 (_ BitVec 32) (_ BitVec 32) V!41937 V!41937 (_ BitVec 32) Int) ListLongMap!15573)

(assert (=> bm!46735 (= call!46738 (getCurrentListMapNoExtraKeys!4265 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110050 () Bool)

(declare-fun res!740857 () Bool)

(assert (=> b!1110050 (=> (not res!740857) (not e!633140))))

(declare-datatypes ((List!24329 0))(
  ( (Nil!24326) (Cons!24325 (h!25534 (_ BitVec 64)) (t!34729 List!24329)) )
))
(declare-fun arrayNoDuplicates!0 (array!72080 (_ BitVec 32) List!24329) Bool)

(assert (=> b!1110050 (= res!740857 (arrayNoDuplicates!0 lt!496075 #b00000000000000000000000000000000 Nil!24326))))

(declare-fun b!1110051 () Bool)

(declare-fun e!633139 () Bool)

(assert (=> b!1110051 (= e!633139 tp_is_empty!27607)))

(declare-fun b!1110052 () Bool)

(assert (=> b!1110052 (= e!633138 (= call!46739 call!46738))))

(declare-fun b!1110053 () Bool)

(declare-fun res!740850 () Bool)

(assert (=> b!1110053 (=> (not res!740850) (not e!633136))))

(assert (=> b!1110053 (= res!740850 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35226 _keys!1208))))))

(declare-fun b!1110054 () Bool)

(declare-fun res!740856 () Bool)

(assert (=> b!1110054 (=> (not res!740856) (not e!633136))))

(assert (=> b!1110054 (= res!740856 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24326))))

(declare-fun b!1110055 () Bool)

(declare-fun res!740853 () Bool)

(assert (=> b!1110055 (=> (not res!740853) (not e!633136))))

(assert (=> b!1110055 (= res!740853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!740852 () Bool)

(assert (=> start!97412 (=> (not res!740852) (not e!633136))))

(assert (=> start!97412 (= res!740852 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35226 _keys!1208))))))

(assert (=> start!97412 e!633136))

(assert (=> start!97412 tp_is_empty!27607))

(declare-fun array_inv!26558 (array!72080) Bool)

(assert (=> start!97412 (array_inv!26558 _keys!1208)))

(assert (=> start!97412 true))

(assert (=> start!97412 tp!82341))

(declare-fun e!633142 () Bool)

(declare-fun array_inv!26559 (array!72082) Bool)

(assert (=> start!97412 (and (array_inv!26559 _values!996) e!633142)))

(declare-fun mapNonEmpty!43228 () Bool)

(declare-fun tp!82340 () Bool)

(assert (=> mapNonEmpty!43228 (= mapRes!43228 (and tp!82340 e!633143))))

(declare-fun mapValue!43228 () ValueCell!13094)

(declare-fun mapKey!43228 () (_ BitVec 32))

(declare-fun mapRest!43228 () (Array (_ BitVec 32) ValueCell!13094))

(assert (=> mapNonEmpty!43228 (= (arr!34690 _values!996) (store mapRest!43228 mapKey!43228 mapValue!43228))))

(declare-fun b!1110056 () Bool)

(declare-fun res!740855 () Bool)

(assert (=> b!1110056 (=> (not res!740855) (not e!633136))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1110056 (= res!740855 (validMask!0 mask!1564))))

(declare-fun bm!46736 () Bool)

(declare-fun dynLambda!2388 (Int (_ BitVec 64)) V!41937)

(assert (=> bm!46736 (= call!46739 (getCurrentListMapNoExtraKeys!4265 lt!496075 (array!72083 (store (arr!34690 _values!996) i!673 (ValueCellFull!13094 (dynLambda!2388 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35227 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110057 () Bool)

(declare-fun res!740854 () Bool)

(assert (=> b!1110057 (=> (not res!740854) (not e!633136))))

(assert (=> b!1110057 (= res!740854 (and (= (size!35227 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35226 _keys!1208) (size!35227 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1110058 () Bool)

(assert (=> b!1110058 (= e!633142 (and e!633139 mapRes!43228))))

(declare-fun condMapEmpty!43228 () Bool)

(declare-fun mapDefault!43228 () ValueCell!13094)

