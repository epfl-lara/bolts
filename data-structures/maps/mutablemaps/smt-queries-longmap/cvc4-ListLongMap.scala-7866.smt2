; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97980 () Bool)

(assert start!97980)

(declare-fun b_free!23645 () Bool)

(declare-fun b_next!23645 () Bool)

(assert (=> start!97980 (= b_free!23645 (not b_next!23645))))

(declare-fun tp!83640 () Bool)

(declare-fun b_and!38095 () Bool)

(assert (=> start!97980 (= tp!83640 b_and!38095)))

(declare-datatypes ((V!42693 0))(
  ( (V!42694 (val!14144 Int)) )
))
(declare-fun zeroValue!944 () V!42693)

(declare-datatypes ((array!73176 0))(
  ( (array!73177 (arr!35237 (Array (_ BitVec 32) (_ BitVec 64))) (size!35774 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73176)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!47215 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!17828 0))(
  ( (tuple2!17829 (_1!8924 (_ BitVec 64)) (_2!8924 V!42693)) )
))
(declare-datatypes ((List!24665 0))(
  ( (Nil!24662) (Cons!24661 (h!25870 tuple2!17828) (t!35309 List!24665)) )
))
(declare-datatypes ((ListLongMap!15809 0))(
  ( (ListLongMap!15810 (toList!7920 List!24665)) )
))
(declare-fun call!47218 () ListLongMap!15809)

(declare-datatypes ((ValueCell!13378 0))(
  ( (ValueCellFull!13378 (v!16778 V!42693)) (EmptyCell!13378) )
))
(declare-datatypes ((array!73178 0))(
  ( (array!73179 (arr!35238 (Array (_ BitVec 32) ValueCell!13378)) (size!35775 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73178)

(declare-fun minValue!944 () V!42693)

(declare-fun getCurrentListMapNoExtraKeys!4380 (array!73176 array!73178 (_ BitVec 32) (_ BitVec 32) V!42693 V!42693 (_ BitVec 32) Int) ListLongMap!15809)

(assert (=> bm!47215 (= call!47218 (getCurrentListMapNoExtraKeys!4380 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44080 () Bool)

(declare-fun mapRes!44080 () Bool)

(declare-fun tp!83639 () Bool)

(declare-fun e!639081 () Bool)

(assert (=> mapNonEmpty!44080 (= mapRes!44080 (and tp!83639 e!639081))))

(declare-fun mapKey!44080 () (_ BitVec 32))

(declare-fun mapRest!44080 () (Array (_ BitVec 32) ValueCell!13378))

(declare-fun mapValue!44080 () ValueCell!13378)

(assert (=> mapNonEmpty!44080 (= (arr!35238 _values!996) (store mapRest!44080 mapKey!44080 mapValue!44080))))

(declare-fun b!1122435 () Bool)

(declare-fun res!749952 () Bool)

(declare-fun e!639083 () Bool)

(assert (=> b!1122435 (=> (not res!749952) (not e!639083))))

(assert (=> b!1122435 (= res!749952 (and (= (size!35775 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35774 _keys!1208) (size!35775 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun lt!498700 () array!73176)

(declare-fun bm!47216 () Bool)

(declare-fun call!47219 () ListLongMap!15809)

(declare-fun lt!498703 () array!73178)

(assert (=> bm!47216 (= call!47219 (getCurrentListMapNoExtraKeys!4380 lt!498700 lt!498703 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!749957 () Bool)

(assert (=> start!97980 (=> (not res!749957) (not e!639083))))

(assert (=> start!97980 (= res!749957 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35774 _keys!1208))))))

(assert (=> start!97980 e!639083))

(declare-fun tp_is_empty!28175 () Bool)

(assert (=> start!97980 tp_is_empty!28175))

(declare-fun array_inv!26930 (array!73176) Bool)

(assert (=> start!97980 (array_inv!26930 _keys!1208)))

(assert (=> start!97980 true))

(assert (=> start!97980 tp!83640))

(declare-fun e!639077 () Bool)

(declare-fun array_inv!26931 (array!73178) Bool)

(assert (=> start!97980 (and (array_inv!26931 _values!996) e!639077)))

(declare-fun b!1122436 () Bool)

(declare-fun res!749961 () Bool)

(assert (=> b!1122436 (=> (not res!749961) (not e!639083))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1122436 (= res!749961 (validMask!0 mask!1564))))

(declare-fun b!1122437 () Bool)

(declare-fun res!749960 () Bool)

(assert (=> b!1122437 (=> (not res!749960) (not e!639083))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1122437 (= res!749960 (= (select (arr!35237 _keys!1208) i!673) k!934))))

(declare-fun b!1122438 () Bool)

(declare-fun e!639074 () Bool)

(assert (=> b!1122438 (= e!639083 e!639074)))

(declare-fun res!749959 () Bool)

(assert (=> b!1122438 (=> (not res!749959) (not e!639074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73176 (_ BitVec 32)) Bool)

(assert (=> b!1122438 (= res!749959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498700 mask!1564))))

(assert (=> b!1122438 (= lt!498700 (array!73177 (store (arr!35237 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35774 _keys!1208)))))

(declare-fun b!1122439 () Bool)

(declare-fun res!749955 () Bool)

(assert (=> b!1122439 (=> (not res!749955) (not e!639083))))

(assert (=> b!1122439 (= res!749955 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35774 _keys!1208))))))

(declare-fun b!1122440 () Bool)

(assert (=> b!1122440 (= e!639081 tp_is_empty!28175)))

(declare-fun b!1122441 () Bool)

(declare-fun res!749956 () Bool)

(assert (=> b!1122441 (=> (not res!749956) (not e!639083))))

(declare-datatypes ((List!24666 0))(
  ( (Nil!24663) (Cons!24662 (h!25871 (_ BitVec 64)) (t!35310 List!24666)) )
))
(declare-fun arrayNoDuplicates!0 (array!73176 (_ BitVec 32) List!24666) Bool)

(assert (=> b!1122441 (= res!749956 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24663))))

(declare-fun b!1122442 () Bool)

(declare-fun e!639076 () Bool)

(declare-fun e!639082 () Bool)

(assert (=> b!1122442 (= e!639076 e!639082)))

(declare-fun res!749954 () Bool)

(assert (=> b!1122442 (=> res!749954 e!639082)))

(assert (=> b!1122442 (= res!749954 (not (= from!1455 i!673)))))

(declare-fun lt!498699 () ListLongMap!15809)

(assert (=> b!1122442 (= lt!498699 (getCurrentListMapNoExtraKeys!4380 lt!498700 lt!498703 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2477 (Int (_ BitVec 64)) V!42693)

(assert (=> b!1122442 (= lt!498703 (array!73179 (store (arr!35238 _values!996) i!673 (ValueCellFull!13378 (dynLambda!2477 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35775 _values!996)))))

(declare-fun lt!498702 () ListLongMap!15809)

(assert (=> b!1122442 (= lt!498702 (getCurrentListMapNoExtraKeys!4380 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1122443 () Bool)

(declare-fun e!639080 () Bool)

(assert (=> b!1122443 (= e!639077 (and e!639080 mapRes!44080))))

(declare-fun condMapEmpty!44080 () Bool)

(declare-fun mapDefault!44080 () ValueCell!13378)

