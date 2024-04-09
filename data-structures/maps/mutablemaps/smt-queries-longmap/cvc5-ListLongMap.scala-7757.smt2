; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97322 () Bool)

(assert start!97322)

(declare-fun b_free!23257 () Bool)

(declare-fun b_next!23257 () Bool)

(assert (=> start!97322 (= b_free!23257 (not b_next!23257))))

(declare-fun tp!82070 () Bool)

(declare-fun b_and!37363 () Bool)

(assert (=> start!97322 (= tp!82070 b_and!37363)))

(declare-fun b!1107745 () Bool)

(declare-fun res!739368 () Bool)

(declare-fun e!632034 () Bool)

(assert (=> b!1107745 (=> (not res!739368) (not e!632034))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1107745 (= res!739368 (validKeyInArray!0 k!934))))

(declare-fun b!1107746 () Bool)

(declare-fun e!632033 () Bool)

(declare-fun tp_is_empty!27517 () Bool)

(assert (=> b!1107746 (= e!632033 tp_is_empty!27517)))

(declare-fun b!1107747 () Bool)

(declare-fun res!739364 () Bool)

(assert (=> b!1107747 (=> (not res!739364) (not e!632034))))

(declare-datatypes ((array!71902 0))(
  ( (array!71903 (arr!34600 (Array (_ BitVec 32) (_ BitVec 64))) (size!35137 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71902)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1107747 (= res!739364 (= (select (arr!34600 _keys!1208) i!673) k!934))))

(declare-datatypes ((V!41817 0))(
  ( (V!41818 (val!13815 Int)) )
))
(declare-fun zeroValue!944 () V!41817)

(declare-fun bm!46465 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13049 0))(
  ( (ValueCellFull!13049 (v!16449 V!41817)) (EmptyCell!13049) )
))
(declare-datatypes ((array!71904 0))(
  ( (array!71905 (arr!34601 (Array (_ BitVec 32) ValueCell!13049)) (size!35138 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71904)

(declare-fun minValue!944 () V!41817)

(declare-datatypes ((tuple2!17520 0))(
  ( (tuple2!17521 (_1!8770 (_ BitVec 64)) (_2!8770 V!41817)) )
))
(declare-datatypes ((List!24257 0))(
  ( (Nil!24254) (Cons!24253 (h!25462 tuple2!17520) (t!34567 List!24257)) )
))
(declare-datatypes ((ListLongMap!15501 0))(
  ( (ListLongMap!15502 (toList!7766 List!24257)) )
))
(declare-fun call!46468 () ListLongMap!15501)

(declare-fun getCurrentListMapNoExtraKeys!4234 (array!71902 array!71904 (_ BitVec 32) (_ BitVec 32) V!41817 V!41817 (_ BitVec 32) Int) ListLongMap!15501)

(assert (=> bm!46465 (= call!46468 (getCurrentListMapNoExtraKeys!4234 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107748 () Bool)

(declare-fun e!632035 () Bool)

(declare-fun e!632036 () Bool)

(assert (=> b!1107748 (= e!632035 (not e!632036))))

(declare-fun res!739366 () Bool)

(assert (=> b!1107748 (=> res!739366 e!632036)))

(assert (=> b!1107748 (= res!739366 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35137 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71902 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1107748 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36289 0))(
  ( (Unit!36290) )
))
(declare-fun lt!495670 () Unit!36289)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71902 (_ BitVec 64) (_ BitVec 32)) Unit!36289)

(assert (=> b!1107748 (= lt!495670 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!739370 () Bool)

(assert (=> start!97322 (=> (not res!739370) (not e!632034))))

(assert (=> start!97322 (= res!739370 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35137 _keys!1208))))))

(assert (=> start!97322 e!632034))

(assert (=> start!97322 tp_is_empty!27517))

(declare-fun array_inv!26492 (array!71902) Bool)

(assert (=> start!97322 (array_inv!26492 _keys!1208)))

(assert (=> start!97322 true))

(assert (=> start!97322 tp!82070))

(declare-fun e!632037 () Bool)

(declare-fun array_inv!26493 (array!71904) Bool)

(assert (=> start!97322 (and (array_inv!26493 _values!996) e!632037)))

(declare-fun mapIsEmpty!43093 () Bool)

(declare-fun mapRes!43093 () Bool)

(assert (=> mapIsEmpty!43093 mapRes!43093))

(declare-fun b!1107749 () Bool)

(declare-fun res!739373 () Bool)

(assert (=> b!1107749 (=> (not res!739373) (not e!632034))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71902 (_ BitVec 32)) Bool)

(assert (=> b!1107749 (= res!739373 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1107750 () Bool)

(declare-fun res!739365 () Bool)

(assert (=> b!1107750 (=> (not res!739365) (not e!632034))))

(declare-datatypes ((List!24258 0))(
  ( (Nil!24255) (Cons!24254 (h!25463 (_ BitVec 64)) (t!34568 List!24258)) )
))
(declare-fun arrayNoDuplicates!0 (array!71902 (_ BitVec 32) List!24258) Bool)

(assert (=> b!1107750 (= res!739365 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24255))))

(declare-fun b!1107751 () Bool)

(declare-fun res!739372 () Bool)

(assert (=> b!1107751 (=> (not res!739372) (not e!632035))))

(declare-fun lt!495671 () array!71902)

(assert (=> b!1107751 (= res!739372 (arrayNoDuplicates!0 lt!495671 #b00000000000000000000000000000000 Nil!24255))))

(declare-fun b!1107752 () Bool)

(declare-fun e!632038 () Bool)

(declare-fun call!46469 () ListLongMap!15501)

(declare-fun -!999 (ListLongMap!15501 (_ BitVec 64)) ListLongMap!15501)

(assert (=> b!1107752 (= e!632038 (= call!46469 (-!999 call!46468 k!934)))))

(declare-fun b!1107753 () Bool)

(declare-fun e!632039 () Bool)

(assert (=> b!1107753 (= e!632039 tp_is_empty!27517)))

(declare-fun mapNonEmpty!43093 () Bool)

(declare-fun tp!82071 () Bool)

(assert (=> mapNonEmpty!43093 (= mapRes!43093 (and tp!82071 e!632033))))

(declare-fun mapValue!43093 () ValueCell!13049)

(declare-fun mapKey!43093 () (_ BitVec 32))

(declare-fun mapRest!43093 () (Array (_ BitVec 32) ValueCell!13049))

(assert (=> mapNonEmpty!43093 (= (arr!34601 _values!996) (store mapRest!43093 mapKey!43093 mapValue!43093))))

(declare-fun b!1107754 () Bool)

(assert (=> b!1107754 (= e!632034 e!632035)))

(declare-fun res!739374 () Bool)

(assert (=> b!1107754 (=> (not res!739374) (not e!632035))))

(assert (=> b!1107754 (= res!739374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495671 mask!1564))))

(assert (=> b!1107754 (= lt!495671 (array!71903 (store (arr!34600 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35137 _keys!1208)))))

(declare-fun b!1107755 () Bool)

(declare-fun res!739369 () Bool)

(assert (=> b!1107755 (=> (not res!739369) (not e!632034))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1107755 (= res!739369 (validMask!0 mask!1564))))

(declare-fun b!1107756 () Bool)

(assert (=> b!1107756 (= e!632037 (and e!632039 mapRes!43093))))

(declare-fun condMapEmpty!43093 () Bool)

(declare-fun mapDefault!43093 () ValueCell!13049)

