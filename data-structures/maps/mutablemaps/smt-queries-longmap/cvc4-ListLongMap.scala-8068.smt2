; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99314 () Bool)

(assert start!99314)

(declare-fun b_free!24857 () Bool)

(declare-fun b_next!24857 () Bool)

(assert (=> start!99314 (= b_free!24857 (not b_next!24857))))

(declare-fun tp!87286 () Bool)

(declare-fun b_and!40595 () Bool)

(assert (=> start!99314 (= tp!87286 b_and!40595)))

(declare-fun res!776024 () Bool)

(declare-fun e!664660 () Bool)

(assert (=> start!99314 (=> (not res!776024) (not e!664660))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75550 0))(
  ( (array!75551 (arr!36421 (Array (_ BitVec 32) (_ BitVec 64))) (size!36958 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75550)

(assert (=> start!99314 (= res!776024 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36958 _keys!1208))))))

(assert (=> start!99314 e!664660))

(declare-fun tp_is_empty!29387 () Bool)

(assert (=> start!99314 tp_is_empty!29387))

(declare-fun array_inv!27718 (array!75550) Bool)

(assert (=> start!99314 (array_inv!27718 _keys!1208)))

(assert (=> start!99314 true))

(assert (=> start!99314 tp!87286))

(declare-datatypes ((V!44309 0))(
  ( (V!44310 (val!14750 Int)) )
))
(declare-datatypes ((ValueCell!13984 0))(
  ( (ValueCellFull!13984 (v!17389 V!44309)) (EmptyCell!13984) )
))
(declare-datatypes ((array!75552 0))(
  ( (array!75553 (arr!36422 (Array (_ BitVec 32) ValueCell!13984)) (size!36959 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75552)

(declare-fun e!664654 () Bool)

(declare-fun array_inv!27719 (array!75552) Bool)

(assert (=> start!99314 (and (array_inv!27719 _values!996) e!664654)))

(declare-fun b!1169386 () Bool)

(declare-fun res!776029 () Bool)

(assert (=> b!1169386 (=> (not res!776029) (not e!664660))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1169386 (= res!776029 (validKeyInArray!0 k!934))))

(declare-fun b!1169387 () Bool)

(declare-fun res!776031 () Bool)

(assert (=> b!1169387 (=> (not res!776031) (not e!664660))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75550 (_ BitVec 32)) Bool)

(assert (=> b!1169387 (= res!776031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1169388 () Bool)

(declare-fun e!664659 () Bool)

(declare-fun e!664662 () Bool)

(assert (=> b!1169388 (= e!664659 e!664662)))

(declare-fun res!776030 () Bool)

(assert (=> b!1169388 (=> res!776030 e!664662)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1169388 (= res!776030 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44309)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44309)

(declare-fun lt!526548 () array!75552)

(declare-fun lt!526541 () array!75550)

(declare-datatypes ((tuple2!18918 0))(
  ( (tuple2!18919 (_1!9469 (_ BitVec 64)) (_2!9469 V!44309)) )
))
(declare-datatypes ((List!25690 0))(
  ( (Nil!25687) (Cons!25686 (h!26895 tuple2!18918) (t!37546 List!25690)) )
))
(declare-datatypes ((ListLongMap!16899 0))(
  ( (ListLongMap!16900 (toList!8465 List!25690)) )
))
(declare-fun lt!526547 () ListLongMap!16899)

(declare-fun getCurrentListMapNoExtraKeys!4898 (array!75550 array!75552 (_ BitVec 32) (_ BitVec 32) V!44309 V!44309 (_ BitVec 32) Int) ListLongMap!16899)

(assert (=> b!1169388 (= lt!526547 (getCurrentListMapNoExtraKeys!4898 lt!526541 lt!526548 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!526540 () V!44309)

(assert (=> b!1169388 (= lt!526548 (array!75553 (store (arr!36422 _values!996) i!673 (ValueCellFull!13984 lt!526540)) (size!36959 _values!996)))))

(declare-fun dynLambda!2889 (Int (_ BitVec 64)) V!44309)

(assert (=> b!1169388 (= lt!526540 (dynLambda!2889 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526543 () ListLongMap!16899)

(assert (=> b!1169388 (= lt!526543 (getCurrentListMapNoExtraKeys!4898 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1169389 () Bool)

(declare-fun res!776019 () Bool)

(assert (=> b!1169389 (=> (not res!776019) (not e!664660))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1169389 (= res!776019 (validMask!0 mask!1564))))

(declare-fun b!1169390 () Bool)

(declare-fun res!776018 () Bool)

(assert (=> b!1169390 (=> (not res!776018) (not e!664660))))

(assert (=> b!1169390 (= res!776018 (and (= (size!36959 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36958 _keys!1208) (size!36959 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1169391 () Bool)

(declare-fun e!664653 () Bool)

(assert (=> b!1169391 (= e!664653 tp_is_empty!29387)))

(declare-fun b!1169392 () Bool)

(declare-fun e!664655 () Bool)

(declare-fun e!664658 () Bool)

(assert (=> b!1169392 (= e!664655 e!664658)))

(declare-fun res!776023 () Bool)

(assert (=> b!1169392 (=> res!776023 e!664658)))

(assert (=> b!1169392 (= res!776023 (not (= (select (arr!36421 _keys!1208) from!1455) k!934)))))

(declare-fun b!1169393 () Bool)

(declare-fun res!776021 () Bool)

(assert (=> b!1169393 (=> (not res!776021) (not e!664660))))

(assert (=> b!1169393 (= res!776021 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36958 _keys!1208))))))

(declare-fun b!1169394 () Bool)

(declare-fun res!776026 () Bool)

(assert (=> b!1169394 (=> (not res!776026) (not e!664660))))

(declare-datatypes ((List!25691 0))(
  ( (Nil!25688) (Cons!25687 (h!26896 (_ BitVec 64)) (t!37547 List!25691)) )
))
(declare-fun arrayNoDuplicates!0 (array!75550 (_ BitVec 32) List!25691) Bool)

(assert (=> b!1169394 (= res!776026 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25688))))

(declare-fun b!1169395 () Bool)

(declare-fun e!664657 () Bool)

(declare-fun mapRes!45908 () Bool)

(assert (=> b!1169395 (= e!664654 (and e!664657 mapRes!45908))))

(declare-fun condMapEmpty!45908 () Bool)

(declare-fun mapDefault!45908 () ValueCell!13984)

