; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97482 () Bool)

(assert start!97482)

(declare-fun b_free!23417 () Bool)

(declare-fun b_next!23417 () Bool)

(assert (=> start!97482 (= b_free!23417 (not b_next!23417))))

(declare-fun tp!82551 () Bool)

(declare-fun b_and!37691 () Bool)

(assert (=> start!97482 (= tp!82551 b_and!37691)))

(declare-fun b!1111793 () Bool)

(declare-fun res!742005 () Bool)

(declare-fun e!633977 () Bool)

(assert (=> b!1111793 (=> (not res!742005) (not e!633977))))

(declare-datatypes ((array!72214 0))(
  ( (array!72215 (arr!34756 (Array (_ BitVec 32) (_ BitVec 64))) (size!35293 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72214)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42029 0))(
  ( (V!42030 (val!13895 Int)) )
))
(declare-datatypes ((ValueCell!13129 0))(
  ( (ValueCellFull!13129 (v!16529 V!42029)) (EmptyCell!13129) )
))
(declare-datatypes ((array!72216 0))(
  ( (array!72217 (arr!34757 (Array (_ BitVec 32) ValueCell!13129)) (size!35294 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72216)

(assert (=> b!1111793 (= res!742005 (and (= (size!35294 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35293 _keys!1208) (size!35294 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun zeroValue!944 () V!42029)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!46945 () Bool)

(declare-fun lt!496391 () array!72214)

(declare-datatypes ((tuple2!17646 0))(
  ( (tuple2!17647 (_1!8833 (_ BitVec 64)) (_2!8833 V!42029)) )
))
(declare-datatypes ((List!24382 0))(
  ( (Nil!24379) (Cons!24378 (h!25587 tuple2!17646) (t!34852 List!24382)) )
))
(declare-datatypes ((ListLongMap!15627 0))(
  ( (ListLongMap!15628 (toList!7829 List!24382)) )
))
(declare-fun call!46949 () ListLongMap!15627)

(declare-fun minValue!944 () V!42029)

(declare-fun getCurrentListMapNoExtraKeys!4290 (array!72214 array!72216 (_ BitVec 32) (_ BitVec 32) V!42029 V!42029 (_ BitVec 32) Int) ListLongMap!15627)

(declare-fun dynLambda!2412 (Int (_ BitVec 64)) V!42029)

(assert (=> bm!46945 (= call!46949 (getCurrentListMapNoExtraKeys!4290 lt!496391 (array!72217 (store (arr!34757 _values!996) i!673 (ValueCellFull!13129 (dynLambda!2412 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35294 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1111794 () Bool)

(declare-fun res!742006 () Bool)

(assert (=> b!1111794 (=> (not res!742006) (not e!633977))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1111794 (= res!742006 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!43333 () Bool)

(declare-fun mapRes!43333 () Bool)

(declare-fun tp!82550 () Bool)

(declare-fun e!633976 () Bool)

(assert (=> mapNonEmpty!43333 (= mapRes!43333 (and tp!82550 e!633976))))

(declare-fun mapValue!43333 () ValueCell!13129)

(declare-fun mapRest!43333 () (Array (_ BitVec 32) ValueCell!13129))

(declare-fun mapKey!43333 () (_ BitVec 32))

(assert (=> mapNonEmpty!43333 (= (arr!34757 _values!996) (store mapRest!43333 mapKey!43333 mapValue!43333))))

(declare-fun b!1111795 () Bool)

(declare-fun res!742004 () Bool)

(declare-fun e!633982 () Bool)

(assert (=> b!1111795 (=> (not res!742004) (not e!633982))))

(declare-datatypes ((List!24383 0))(
  ( (Nil!24380) (Cons!24379 (h!25588 (_ BitVec 64)) (t!34853 List!24383)) )
))
(declare-fun arrayNoDuplicates!0 (array!72214 (_ BitVec 32) List!24383) Bool)

(assert (=> b!1111795 (= res!742004 (arrayNoDuplicates!0 lt!496391 #b00000000000000000000000000000000 Nil!24380))))

(declare-fun b!1111796 () Bool)

(declare-fun e!633978 () Bool)

(declare-fun e!633980 () Bool)

(assert (=> b!1111796 (= e!633978 (and e!633980 mapRes!43333))))

(declare-fun condMapEmpty!43333 () Bool)

(declare-fun mapDefault!43333 () ValueCell!13129)

