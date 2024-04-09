; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98054 () Bool)

(assert start!98054)

(declare-fun b_free!23719 () Bool)

(declare-fun b_next!23719 () Bool)

(assert (=> start!98054 (= b_free!23719 (not b_next!23719))))

(declare-fun tp!83861 () Bool)

(declare-fun b_and!38243 () Bool)

(assert (=> start!98054 (= tp!83861 b_and!38243)))

(declare-fun b!1124610 () Bool)

(declare-fun e!640232 () Bool)

(declare-datatypes ((V!42793 0))(
  ( (V!42794 (val!14181 Int)) )
))
(declare-datatypes ((tuple2!17896 0))(
  ( (tuple2!17897 (_1!8958 (_ BitVec 64)) (_2!8958 V!42793)) )
))
(declare-datatypes ((List!24726 0))(
  ( (Nil!24723) (Cons!24722 (h!25931 tuple2!17896) (t!35444 List!24726)) )
))
(declare-datatypes ((ListLongMap!15877 0))(
  ( (ListLongMap!15878 (toList!7954 List!24726)) )
))
(declare-fun call!47441 () ListLongMap!15877)

(declare-fun call!47440 () ListLongMap!15877)

(assert (=> b!1124610 (= e!640232 (= call!47441 call!47440))))

(declare-fun b!1124612 () Bool)

(declare-fun res!751497 () Bool)

(declare-fun e!640236 () Bool)

(assert (=> b!1124612 (=> (not res!751497) (not e!640236))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((array!73322 0))(
  ( (array!73323 (arr!35310 (Array (_ BitVec 32) (_ BitVec 64))) (size!35847 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73322)

(assert (=> b!1124612 (= res!751497 (= (select (arr!35310 _keys!1208) i!673) k!934))))

(declare-fun zeroValue!944 () V!42793)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13415 0))(
  ( (ValueCellFull!13415 (v!16815 V!42793)) (EmptyCell!13415) )
))
(declare-datatypes ((array!73324 0))(
  ( (array!73325 (arr!35311 (Array (_ BitVec 32) ValueCell!13415)) (size!35848 (_ BitVec 32))) )
))
(declare-fun lt!499515 () array!73324)

(declare-fun lt!499518 () array!73322)

(declare-fun bm!47437 () Bool)

(declare-fun minValue!944 () V!42793)

(declare-fun getCurrentListMapNoExtraKeys!4413 (array!73322 array!73324 (_ BitVec 32) (_ BitVec 32) V!42793 V!42793 (_ BitVec 32) Int) ListLongMap!15877)

(assert (=> bm!47437 (= call!47441 (getCurrentListMapNoExtraKeys!4413 lt!499518 lt!499515 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44191 () Bool)

(declare-fun mapRes!44191 () Bool)

(assert (=> mapIsEmpty!44191 mapRes!44191))

(declare-fun b!1124613 () Bool)

(declare-fun e!640240 () Bool)

(declare-fun e!640241 () Bool)

(assert (=> b!1124613 (= e!640240 (not e!640241))))

(declare-fun res!751501 () Bool)

(assert (=> b!1124613 (=> res!751501 e!640241)))

(assert (=> b!1124613 (= res!751501 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73322 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1124613 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36805 0))(
  ( (Unit!36806) )
))
(declare-fun lt!499517 () Unit!36805)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73322 (_ BitVec 64) (_ BitVec 32)) Unit!36805)

(assert (=> b!1124613 (= lt!499517 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1124614 () Bool)

(declare-fun res!751504 () Bool)

(assert (=> b!1124614 (=> (not res!751504) (not e!640236))))

(declare-datatypes ((List!24727 0))(
  ( (Nil!24724) (Cons!24723 (h!25932 (_ BitVec 64)) (t!35445 List!24727)) )
))
(declare-fun arrayNoDuplicates!0 (array!73322 (_ BitVec 32) List!24727) Bool)

(assert (=> b!1124614 (= res!751504 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24724))))

(declare-fun b!1124615 () Bool)

(assert (=> b!1124615 (= e!640236 e!640240)))

(declare-fun res!751508 () Bool)

(assert (=> b!1124615 (=> (not res!751508) (not e!640240))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73322 (_ BitVec 32)) Bool)

(assert (=> b!1124615 (= res!751508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499518 mask!1564))))

(assert (=> b!1124615 (= lt!499518 (array!73323 (store (arr!35310 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35847 _keys!1208)))))

(declare-fun b!1124616 () Bool)

(declare-fun res!751503 () Bool)

(assert (=> b!1124616 (=> (not res!751503) (not e!640236))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1124616 (= res!751503 (validKeyInArray!0 k!934))))

(declare-fun b!1124617 () Bool)

(declare-fun res!751498 () Bool)

(assert (=> b!1124617 (=> (not res!751498) (not e!640240))))

(assert (=> b!1124617 (= res!751498 (arrayNoDuplicates!0 lt!499518 #b00000000000000000000000000000000 Nil!24724))))

(declare-fun b!1124618 () Bool)

(declare-fun e!640239 () Bool)

(declare-fun e!640231 () Bool)

(assert (=> b!1124618 (= e!640239 e!640231)))

(declare-fun res!751500 () Bool)

(assert (=> b!1124618 (=> res!751500 e!640231)))

(assert (=> b!1124618 (= res!751500 (not (= (select (arr!35310 _keys!1208) from!1455) k!934)))))

(assert (=> b!1124618 e!640232))

(declare-fun c!109529 () Bool)

(assert (=> b!1124618 (= c!109529 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!499519 () Unit!36805)

(declare-fun _values!996 () array!73324)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!357 (array!73322 array!73324 (_ BitVec 32) (_ BitVec 32) V!42793 V!42793 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36805)

(assert (=> b!1124618 (= lt!499519 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!357 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124619 () Bool)

(declare-fun e!640237 () Bool)

(assert (=> b!1124619 (= e!640231 e!640237)))

(declare-fun res!751507 () Bool)

(assert (=> b!1124619 (=> res!751507 e!640237)))

(declare-fun lt!499516 () ListLongMap!15877)

(declare-fun contains!6465 (ListLongMap!15877 (_ BitVec 64)) Bool)

(assert (=> b!1124619 (= res!751507 (not (contains!6465 lt!499516 k!934)))))

(assert (=> b!1124619 (= lt!499516 (getCurrentListMapNoExtraKeys!4413 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124620 () Bool)

(declare-fun res!751505 () Bool)

(assert (=> b!1124620 (=> res!751505 e!640237)))

(assert (=> b!1124620 (= res!751505 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!751506 () Bool)

(assert (=> start!98054 (=> (not res!751506) (not e!640236))))

(assert (=> start!98054 (= res!751506 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35847 _keys!1208))))))

(assert (=> start!98054 e!640236))

(declare-fun tp_is_empty!28249 () Bool)

(assert (=> start!98054 tp_is_empty!28249))

(declare-fun array_inv!26976 (array!73322) Bool)

(assert (=> start!98054 (array_inv!26976 _keys!1208)))

(assert (=> start!98054 true))

(assert (=> start!98054 tp!83861))

(declare-fun e!640233 () Bool)

(declare-fun array_inv!26977 (array!73324) Bool)

(assert (=> start!98054 (and (array_inv!26977 _values!996) e!640233)))

(declare-fun b!1124611 () Bool)

(declare-fun e!640234 () Bool)

(assert (=> b!1124611 (= e!640233 (and e!640234 mapRes!44191))))

(declare-fun condMapEmpty!44191 () Bool)

(declare-fun mapDefault!44191 () ValueCell!13415)

