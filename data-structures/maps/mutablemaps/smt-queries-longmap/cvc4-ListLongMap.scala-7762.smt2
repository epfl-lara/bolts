; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97356 () Bool)

(assert start!97356)

(declare-fun b_free!23291 () Bool)

(declare-fun b_next!23291 () Bool)

(assert (=> start!97356 (= b_free!23291 (not b_next!23291))))

(declare-fun tp!82172 () Bool)

(declare-fun b_and!37435 () Bool)

(assert (=> start!97356 (= tp!82172 b_and!37435)))

(declare-fun b!1108619 () Bool)

(declare-fun res!739932 () Bool)

(declare-fun e!632456 () Bool)

(assert (=> b!1108619 (=> (not res!739932) (not e!632456))))

(declare-datatypes ((array!71970 0))(
  ( (array!71971 (arr!34634 (Array (_ BitVec 32) (_ BitVec 64))) (size!35171 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71970)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71970 (_ BitVec 32)) Bool)

(assert (=> b!1108619 (= res!739932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun e!632455 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((V!41861 0))(
  ( (V!41862 (val!13832 Int)) )
))
(declare-datatypes ((tuple2!17548 0))(
  ( (tuple2!17549 (_1!8784 (_ BitVec 64)) (_2!8784 V!41861)) )
))
(declare-datatypes ((List!24284 0))(
  ( (Nil!24281) (Cons!24280 (h!25489 tuple2!17548) (t!34628 List!24284)) )
))
(declare-datatypes ((ListLongMap!15529 0))(
  ( (ListLongMap!15530 (toList!7780 List!24284)) )
))
(declare-fun call!46570 () ListLongMap!15529)

(declare-fun call!46571 () ListLongMap!15529)

(declare-fun b!1108620 () Bool)

(declare-fun -!1011 (ListLongMap!15529 (_ BitVec 64)) ListLongMap!15529)

(assert (=> b!1108620 (= e!632455 (= call!46571 (-!1011 call!46570 k!934)))))

(declare-fun b!1108621 () Bool)

(declare-fun res!739926 () Bool)

(assert (=> b!1108621 (=> (not res!739926) (not e!632456))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1108621 (= res!739926 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35171 _keys!1208))))))

(declare-fun mapNonEmpty!43144 () Bool)

(declare-fun mapRes!43144 () Bool)

(declare-fun tp!82173 () Bool)

(declare-fun e!632458 () Bool)

(assert (=> mapNonEmpty!43144 (= mapRes!43144 (and tp!82173 e!632458))))

(declare-datatypes ((ValueCell!13066 0))(
  ( (ValueCellFull!13066 (v!16466 V!41861)) (EmptyCell!13066) )
))
(declare-datatypes ((array!71972 0))(
  ( (array!71973 (arr!34635 (Array (_ BitVec 32) ValueCell!13066)) (size!35172 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71972)

(declare-fun mapKey!43144 () (_ BitVec 32))

(declare-fun mapRest!43144 () (Array (_ BitVec 32) ValueCell!13066))

(declare-fun mapValue!43144 () ValueCell!13066)

(assert (=> mapNonEmpty!43144 (= (arr!34635 _values!996) (store mapRest!43144 mapKey!43144 mapValue!43144))))

(declare-fun b!1108622 () Bool)

(declare-fun e!632459 () Bool)

(assert (=> b!1108622 (= e!632459 true)))

(assert (=> b!1108622 e!632455))

(declare-fun c!109076 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1108622 (= c!109076 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!41861)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!41861)

(declare-datatypes ((Unit!36311 0))(
  ( (Unit!36312) )
))
(declare-fun lt!495824 () Unit!36311)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!264 (array!71970 array!71972 (_ BitVec 32) (_ BitVec 32) V!41861 V!41861 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36311)

(assert (=> b!1108622 (= lt!495824 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!264 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108623 () Bool)

(declare-fun res!739931 () Bool)

(assert (=> b!1108623 (=> (not res!739931) (not e!632456))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1108623 (= res!739931 (validMask!0 mask!1564))))

(declare-fun b!1108624 () Bool)

(declare-fun e!632453 () Bool)

(assert (=> b!1108624 (= e!632456 e!632453)))

(declare-fun res!739933 () Bool)

(assert (=> b!1108624 (=> (not res!739933) (not e!632453))))

(declare-fun lt!495823 () array!71970)

(assert (=> b!1108624 (= res!739933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495823 mask!1564))))

(assert (=> b!1108624 (= lt!495823 (array!71971 (store (arr!34634 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35171 _keys!1208)))))

(declare-fun b!1108625 () Bool)

(assert (=> b!1108625 (= e!632453 (not e!632459))))

(declare-fun res!739928 () Bool)

(assert (=> b!1108625 (=> res!739928 e!632459)))

(assert (=> b!1108625 (= res!739928 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35171 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71970 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1108625 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!495825 () Unit!36311)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71970 (_ BitVec 64) (_ BitVec 32)) Unit!36311)

(assert (=> b!1108625 (= lt!495825 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1108626 () Bool)

(declare-fun res!739929 () Bool)

(assert (=> b!1108626 (=> (not res!739929) (not e!632456))))

(declare-datatypes ((List!24285 0))(
  ( (Nil!24282) (Cons!24281 (h!25490 (_ BitVec 64)) (t!34629 List!24285)) )
))
(declare-fun arrayNoDuplicates!0 (array!71970 (_ BitVec 32) List!24285) Bool)

(assert (=> b!1108626 (= res!739929 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24282))))

(declare-fun b!1108627 () Bool)

(declare-fun e!632452 () Bool)

(declare-fun e!632454 () Bool)

(assert (=> b!1108627 (= e!632452 (and e!632454 mapRes!43144))))

(declare-fun condMapEmpty!43144 () Bool)

(declare-fun mapDefault!43144 () ValueCell!13066)

