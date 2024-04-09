; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97712 () Bool)

(assert start!97712)

(declare-fun b!1116394 () Bool)

(declare-fun e!636111 () Bool)

(declare-fun tp_is_empty!27907 () Bool)

(assert (=> b!1116394 (= e!636111 tp_is_empty!27907)))

(declare-fun b!1116395 () Bool)

(declare-fun res!745482 () Bool)

(declare-fun e!636110 () Bool)

(assert (=> b!1116395 (=> (not res!745482) (not e!636110))))

(declare-datatypes ((array!72652 0))(
  ( (array!72653 (arr!34975 (Array (_ BitVec 32) (_ BitVec 64))) (size!35512 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72652)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1116395 (= res!745482 (= (select (arr!34975 _keys!1208) i!673) k!934))))

(declare-fun b!1116396 () Bool)

(declare-fun res!745489 () Bool)

(assert (=> b!1116396 (=> (not res!745489) (not e!636110))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116396 (= res!745489 (validMask!0 mask!1564))))

(declare-fun b!1116397 () Bool)

(declare-fun res!745483 () Bool)

(declare-fun e!636108 () Bool)

(assert (=> b!1116397 (=> (not res!745483) (not e!636108))))

(declare-fun lt!497108 () array!72652)

(declare-datatypes ((List!24473 0))(
  ( (Nil!24470) (Cons!24469 (h!25678 (_ BitVec 64)) (t!34961 List!24473)) )
))
(declare-fun arrayNoDuplicates!0 (array!72652 (_ BitVec 32) List!24473) Bool)

(assert (=> b!1116397 (= res!745483 (arrayNoDuplicates!0 lt!497108 #b00000000000000000000000000000000 Nil!24470))))

(declare-fun mapNonEmpty!43678 () Bool)

(declare-fun mapRes!43678 () Bool)

(declare-fun tp!82923 () Bool)

(assert (=> mapNonEmpty!43678 (= mapRes!43678 (and tp!82923 e!636111))))

(declare-datatypes ((V!42337 0))(
  ( (V!42338 (val!14010 Int)) )
))
(declare-datatypes ((ValueCell!13244 0))(
  ( (ValueCellFull!13244 (v!16644 V!42337)) (EmptyCell!13244) )
))
(declare-fun mapValue!43678 () ValueCell!13244)

(declare-fun mapKey!43678 () (_ BitVec 32))

(declare-datatypes ((array!72654 0))(
  ( (array!72655 (arr!34976 (Array (_ BitVec 32) ValueCell!13244)) (size!35513 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72654)

(declare-fun mapRest!43678 () (Array (_ BitVec 32) ValueCell!13244))

(assert (=> mapNonEmpty!43678 (= (arr!34976 _values!996) (store mapRest!43678 mapKey!43678 mapValue!43678))))

(declare-fun mapIsEmpty!43678 () Bool)

(assert (=> mapIsEmpty!43678 mapRes!43678))

(declare-fun b!1116398 () Bool)

(assert (=> b!1116398 (= e!636108 (not true))))

(declare-fun arrayContainsKey!0 (array!72652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1116398 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36541 0))(
  ( (Unit!36542) )
))
(declare-fun lt!497109 () Unit!36541)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72652 (_ BitVec 64) (_ BitVec 32)) Unit!36541)

(assert (=> b!1116398 (= lt!497109 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1116399 () Bool)

(declare-fun res!745488 () Bool)

(assert (=> b!1116399 (=> (not res!745488) (not e!636110))))

(assert (=> b!1116399 (= res!745488 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35512 _keys!1208))))))

(declare-fun b!1116400 () Bool)

(assert (=> b!1116400 (= e!636110 e!636108)))

(declare-fun res!745491 () Bool)

(assert (=> b!1116400 (=> (not res!745491) (not e!636108))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72652 (_ BitVec 32)) Bool)

(assert (=> b!1116400 (= res!745491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497108 mask!1564))))

(assert (=> b!1116400 (= lt!497108 (array!72653 (store (arr!34975 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35512 _keys!1208)))))

(declare-fun b!1116401 () Bool)

(declare-fun res!745490 () Bool)

(assert (=> b!1116401 (=> (not res!745490) (not e!636110))))

(assert (=> b!1116401 (= res!745490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!745487 () Bool)

(assert (=> start!97712 (=> (not res!745487) (not e!636110))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97712 (= res!745487 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35512 _keys!1208))))))

(assert (=> start!97712 e!636110))

(declare-fun array_inv!26740 (array!72652) Bool)

(assert (=> start!97712 (array_inv!26740 _keys!1208)))

(assert (=> start!97712 true))

(declare-fun e!636113 () Bool)

(declare-fun array_inv!26741 (array!72654) Bool)

(assert (=> start!97712 (and (array_inv!26741 _values!996) e!636113)))

(declare-fun b!1116402 () Bool)

(declare-fun res!745484 () Bool)

(assert (=> b!1116402 (=> (not res!745484) (not e!636110))))

(assert (=> b!1116402 (= res!745484 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24470))))

(declare-fun b!1116403 () Bool)

(declare-fun res!745486 () Bool)

(assert (=> b!1116403 (=> (not res!745486) (not e!636110))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1116403 (= res!745486 (and (= (size!35513 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35512 _keys!1208) (size!35513 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1116404 () Bool)

(declare-fun e!636109 () Bool)

(assert (=> b!1116404 (= e!636113 (and e!636109 mapRes!43678))))

(declare-fun condMapEmpty!43678 () Bool)

(declare-fun mapDefault!43678 () ValueCell!13244)

