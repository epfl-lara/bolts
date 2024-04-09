; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97490 () Bool)

(assert start!97490)

(declare-fun b_free!23425 () Bool)

(declare-fun b_next!23425 () Bool)

(assert (=> start!97490 (= b_free!23425 (not b_next!23425))))

(declare-fun tp!82575 () Bool)

(declare-fun b_and!37707 () Bool)

(assert (=> start!97490 (= tp!82575 b_and!37707)))

(declare-fun b!1112001 () Bool)

(declare-fun e!634085 () Bool)

(assert (=> b!1112001 (= e!634085 true)))

(declare-fun e!634076 () Bool)

(assert (=> b!1112001 e!634076))

(declare-fun c!109293 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1112001 (= c!109293 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!42041 0))(
  ( (V!42042 (val!13899 Int)) )
))
(declare-fun zeroValue!944 () V!42041)

(declare-datatypes ((array!72228 0))(
  ( (array!72229 (arr!34763 (Array (_ BitVec 32) (_ BitVec 64))) (size!35300 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72228)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((Unit!36403 0))(
  ( (Unit!36404) )
))
(declare-fun lt!496426 () Unit!36403)

(declare-datatypes ((ValueCell!13133 0))(
  ( (ValueCellFull!13133 (v!16533 V!42041)) (EmptyCell!13133) )
))
(declare-datatypes ((array!72230 0))(
  ( (array!72231 (arr!34764 (Array (_ BitVec 32) ValueCell!13133)) (size!35301 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72230)

(declare-fun minValue!944 () V!42041)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!307 (array!72228 array!72230 (_ BitVec 32) (_ BitVec 32) V!42041 V!42041 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36403)

(assert (=> b!1112001 (= lt!496426 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!307 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!496427 () array!72228)

(declare-fun e!634077 () array!72230)

(declare-fun bm!46969 () Bool)

(declare-datatypes ((tuple2!17650 0))(
  ( (tuple2!17651 (_1!8835 (_ BitVec 64)) (_2!8835 V!42041)) )
))
(declare-datatypes ((List!24387 0))(
  ( (Nil!24384) (Cons!24383 (h!25592 tuple2!17650) (t!34865 List!24387)) )
))
(declare-datatypes ((ListLongMap!15631 0))(
  ( (ListLongMap!15632 (toList!7831 List!24387)) )
))
(declare-fun call!46972 () ListLongMap!15631)

(declare-fun getCurrentListMapNoExtraKeys!4292 (array!72228 array!72230 (_ BitVec 32) (_ BitVec 32) V!42041 V!42041 (_ BitVec 32) Int) ListLongMap!15631)

(assert (=> bm!46969 (= call!46972 (getCurrentListMapNoExtraKeys!4292 (ite c!109293 _keys!1208 lt!496427) e!634077 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!109294 () Bool)

(assert (=> bm!46969 (= c!109294 c!109293)))

(declare-fun b!1112002 () Bool)

(declare-fun res!742136 () Bool)

(declare-fun e!634081 () Bool)

(assert (=> b!1112002 (=> (not res!742136) (not e!634081))))

(assert (=> b!1112002 (= res!742136 (= (select (arr!34763 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!43345 () Bool)

(declare-fun mapRes!43345 () Bool)

(declare-fun tp!82574 () Bool)

(declare-fun e!634078 () Bool)

(assert (=> mapNonEmpty!43345 (= mapRes!43345 (and tp!82574 e!634078))))

(declare-fun mapRest!43345 () (Array (_ BitVec 32) ValueCell!13133))

(declare-fun mapKey!43345 () (_ BitVec 32))

(declare-fun mapValue!43345 () ValueCell!13133)

(assert (=> mapNonEmpty!43345 (= (arr!34764 _values!996) (store mapRest!43345 mapKey!43345 mapValue!43345))))

(declare-fun b!1112003 () Bool)

(declare-fun e!634084 () Bool)

(assert (=> b!1112003 (= e!634084 (not e!634085))))

(declare-fun res!742139 () Bool)

(assert (=> b!1112003 (=> res!742139 e!634085)))

(assert (=> b!1112003 (= res!742139 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35300 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72228 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1112003 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!496428 () Unit!36403)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72228 (_ BitVec 64) (_ BitVec 32)) Unit!36403)

(assert (=> b!1112003 (= lt!496428 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!742137 () Bool)

(assert (=> start!97490 (=> (not res!742137) (not e!634081))))

(assert (=> start!97490 (= res!742137 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35300 _keys!1208))))))

(assert (=> start!97490 e!634081))

(declare-fun tp_is_empty!27685 () Bool)

(assert (=> start!97490 tp_is_empty!27685))

(declare-fun array_inv!26604 (array!72228) Bool)

(assert (=> start!97490 (array_inv!26604 _keys!1208)))

(assert (=> start!97490 true))

(assert (=> start!97490 tp!82575))

(declare-fun e!634083 () Bool)

(declare-fun array_inv!26605 (array!72230) Bool)

(assert (=> start!97490 (and (array_inv!26605 _values!996) e!634083)))

(declare-fun b!1112004 () Bool)

(assert (=> b!1112004 (= e!634081 e!634084)))

(declare-fun res!742145 () Bool)

(assert (=> b!1112004 (=> (not res!742145) (not e!634084))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72228 (_ BitVec 32)) Bool)

(assert (=> b!1112004 (= res!742145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496427 mask!1564))))

(assert (=> b!1112004 (= lt!496427 (array!72229 (store (arr!34763 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35300 _keys!1208)))))

(declare-fun b!1112005 () Bool)

(declare-fun call!46973 () ListLongMap!15631)

(assert (=> b!1112005 (= e!634076 (= call!46972 call!46973))))

(declare-fun mapIsEmpty!43345 () Bool)

(assert (=> mapIsEmpty!43345 mapRes!43345))

(declare-fun b!1112006 () Bool)

(declare-fun res!742141 () Bool)

(assert (=> b!1112006 (=> (not res!742141) (not e!634081))))

(assert (=> b!1112006 (= res!742141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1112007 () Bool)

(assert (=> b!1112007 (= e!634078 tp_is_empty!27685)))

(declare-fun b!1112008 () Bool)

(declare-fun res!742138 () Bool)

(assert (=> b!1112008 (=> (not res!742138) (not e!634081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1112008 (= res!742138 (validMask!0 mask!1564))))

(declare-fun b!1112009 () Bool)

(declare-fun e!634082 () array!72230)

(declare-fun dynLambda!2414 (Int (_ BitVec 64)) V!42041)

(assert (=> b!1112009 (= e!634082 (array!72231 (store (arr!34764 _values!996) i!673 (ValueCellFull!13133 (dynLambda!2414 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35301 _values!996)))))

(declare-fun b!1112010 () Bool)

(declare-fun e!634080 () Bool)

(assert (=> b!1112010 (= e!634080 tp_is_empty!27685)))

(declare-fun b!1112011 () Bool)

(declare-fun res!742140 () Bool)

(assert (=> b!1112011 (=> (not res!742140) (not e!634081))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1112011 (= res!742140 (validKeyInArray!0 k!934))))

(declare-fun b!1112012 () Bool)

(declare-fun res!742146 () Bool)

(assert (=> b!1112012 (=> (not res!742146) (not e!634081))))

(declare-datatypes ((List!24388 0))(
  ( (Nil!24385) (Cons!24384 (h!25593 (_ BitVec 64)) (t!34866 List!24388)) )
))
(declare-fun arrayNoDuplicates!0 (array!72228 (_ BitVec 32) List!24388) Bool)

(assert (=> b!1112012 (= res!742146 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24385))))

(declare-fun b!1112013 () Bool)

(declare-fun -!1050 (ListLongMap!15631 (_ BitVec 64)) ListLongMap!15631)

(assert (=> b!1112013 (= e!634076 (= call!46973 (-!1050 call!46972 k!934)))))

(declare-fun b!1112014 () Bool)

(assert (=> b!1112014 (= e!634082 _values!996)))

(declare-fun b!1112015 () Bool)

(assert (=> b!1112015 (= e!634077 _values!996)))

(declare-fun b!1112016 () Bool)

(declare-fun res!742143 () Bool)

(assert (=> b!1112016 (=> (not res!742143) (not e!634081))))

(assert (=> b!1112016 (= res!742143 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35300 _keys!1208))))))

(declare-fun b!1112017 () Bool)

(declare-fun res!742142 () Bool)

(assert (=> b!1112017 (=> (not res!742142) (not e!634081))))

(assert (=> b!1112017 (= res!742142 (and (= (size!35301 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35300 _keys!1208) (size!35301 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1112018 () Bool)

(assert (=> b!1112018 (= e!634083 (and e!634080 mapRes!43345))))

(declare-fun condMapEmpty!43345 () Bool)

(declare-fun mapDefault!43345 () ValueCell!13133)

