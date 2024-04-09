; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97500 () Bool)

(assert start!97500)

(declare-fun b_free!23435 () Bool)

(declare-fun b_next!23435 () Bool)

(assert (=> start!97500 (= b_free!23435 (not b_next!23435))))

(declare-fun tp!82604 () Bool)

(declare-fun b_and!37729 () Bool)

(assert (=> start!97500 (= tp!82604 b_and!37729)))

(declare-fun b!1112255 () Bool)

(declare-fun e!634200 () Bool)

(declare-fun e!634203 () Bool)

(assert (=> b!1112255 (= e!634200 e!634203)))

(declare-fun res!742311 () Bool)

(assert (=> b!1112255 (=> (not res!742311) (not e!634203))))

(declare-datatypes ((array!72248 0))(
  ( (array!72249 (arr!34773 (Array (_ BitVec 32) (_ BitVec 64))) (size!35310 (_ BitVec 32))) )
))
(declare-fun lt!496472 () array!72248)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72248 (_ BitVec 32)) Bool)

(assert (=> b!1112255 (= res!742311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496472 mask!1564))))

(declare-fun _keys!1208 () array!72248)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1112255 (= lt!496472 (array!72249 (store (arr!34773 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35310 _keys!1208)))))

(declare-fun res!742302 () Bool)

(assert (=> start!97500 (=> (not res!742302) (not e!634200))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97500 (= res!742302 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35310 _keys!1208))))))

(assert (=> start!97500 e!634200))

(declare-fun tp_is_empty!27695 () Bool)

(assert (=> start!97500 tp_is_empty!27695))

(declare-fun array_inv!26612 (array!72248) Bool)

(assert (=> start!97500 (array_inv!26612 _keys!1208)))

(assert (=> start!97500 true))

(assert (=> start!97500 tp!82604))

(declare-datatypes ((V!42053 0))(
  ( (V!42054 (val!13904 Int)) )
))
(declare-datatypes ((ValueCell!13138 0))(
  ( (ValueCellFull!13138 (v!16538 V!42053)) (EmptyCell!13138) )
))
(declare-datatypes ((array!72250 0))(
  ( (array!72251 (arr!34774 (Array (_ BitVec 32) ValueCell!13138)) (size!35311 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72250)

(declare-fun e!634204 () Bool)

(declare-fun array_inv!26613 (array!72250) Bool)

(assert (=> start!97500 (and (array_inv!26613 _values!996) e!634204)))

(declare-fun mapNonEmpty!43360 () Bool)

(declare-fun mapRes!43360 () Bool)

(declare-fun tp!82605 () Bool)

(declare-fun e!634202 () Bool)

(assert (=> mapNonEmpty!43360 (= mapRes!43360 (and tp!82605 e!634202))))

(declare-fun mapRest!43360 () (Array (_ BitVec 32) ValueCell!13138))

(declare-fun mapKey!43360 () (_ BitVec 32))

(declare-fun mapValue!43360 () ValueCell!13138)

(assert (=> mapNonEmpty!43360 (= (arr!34774 _values!996) (store mapRest!43360 mapKey!43360 mapValue!43360))))

(declare-fun b!1112256 () Bool)

(declare-fun res!742307 () Bool)

(assert (=> b!1112256 (=> (not res!742307) (not e!634200))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1112256 (= res!742307 (validMask!0 mask!1564))))

(declare-fun b!1112257 () Bool)

(declare-datatypes ((tuple2!17658 0))(
  ( (tuple2!17659 (_1!8839 (_ BitVec 64)) (_2!8839 V!42053)) )
))
(declare-datatypes ((List!24395 0))(
  ( (Nil!24392) (Cons!24391 (h!25600 tuple2!17658) (t!34883 List!24395)) )
))
(declare-datatypes ((ListLongMap!15639 0))(
  ( (ListLongMap!15640 (toList!7835 List!24395)) )
))
(declare-fun call!47003 () ListLongMap!15639)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!47002 () ListLongMap!15639)

(declare-fun e!634201 () Bool)

(declare-fun -!1054 (ListLongMap!15639 (_ BitVec 64)) ListLongMap!15639)

(assert (=> b!1112257 (= e!634201 (= call!47002 (-!1054 call!47003 k!934)))))

(declare-fun b!1112258 () Bool)

(declare-fun res!742310 () Bool)

(assert (=> b!1112258 (=> (not res!742310) (not e!634200))))

(assert (=> b!1112258 (= res!742310 (= (select (arr!34773 _keys!1208) i!673) k!934))))

(declare-fun b!1112259 () Bool)

(assert (=> b!1112259 (= e!634201 (= call!47002 call!47003))))

(declare-fun zeroValue!944 () V!42053)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42053)

(declare-fun bm!46999 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4296 (array!72248 array!72250 (_ BitVec 32) (_ BitVec 32) V!42053 V!42053 (_ BitVec 32) Int) ListLongMap!15639)

(assert (=> bm!46999 (= call!47003 (getCurrentListMapNoExtraKeys!4296 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1112260 () Bool)

(declare-fun res!742303 () Bool)

(assert (=> b!1112260 (=> (not res!742303) (not e!634200))))

(assert (=> b!1112260 (= res!742303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1112261 () Bool)

(declare-fun e!634199 () Bool)

(assert (=> b!1112261 (= e!634204 (and e!634199 mapRes!43360))))

(declare-fun condMapEmpty!43360 () Bool)

(declare-fun mapDefault!43360 () ValueCell!13138)

