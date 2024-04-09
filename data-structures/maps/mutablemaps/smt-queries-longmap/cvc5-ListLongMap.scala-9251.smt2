; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110890 () Bool)

(assert start!110890)

(declare-fun b_free!29689 () Bool)

(declare-fun b_next!29689 () Bool)

(assert (=> start!110890 (= b_free!29689 (not b_next!29689))))

(declare-fun tp!104389 () Bool)

(declare-fun b_and!47907 () Bool)

(assert (=> start!110890 (= tp!104389 b_and!47907)))

(declare-fun b!1312214 () Bool)

(declare-fun res!871280 () Bool)

(declare-fun e!748505 () Bool)

(assert (=> b!1312214 (=> (not res!871280) (not e!748505))))

(declare-datatypes ((array!87789 0))(
  ( (array!87790 (arr!42370 (Array (_ BitVec 32) (_ BitVec 64))) (size!42921 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87789)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52329 0))(
  ( (V!52330 (val!17784 Int)) )
))
(declare-datatypes ((ValueCell!16811 0))(
  ( (ValueCellFull!16811 (v!20409 V!52329)) (EmptyCell!16811) )
))
(declare-datatypes ((array!87791 0))(
  ( (array!87792 (arr!42371 (Array (_ BitVec 32) ValueCell!16811)) (size!42922 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87791)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1312214 (= res!871280 (and (= (size!42922 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42921 _keys!1628) (size!42922 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1312215 () Bool)

(declare-fun res!871278 () Bool)

(assert (=> b!1312215 (=> (not res!871278) (not e!748505))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87789 (_ BitVec 32)) Bool)

(assert (=> b!1312215 (= res!871278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312216 () Bool)

(declare-fun res!871281 () Bool)

(assert (=> b!1312216 (=> (not res!871281) (not e!748505))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1312216 (= res!871281 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42921 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312217 () Bool)

(declare-fun res!871283 () Bool)

(assert (=> b!1312217 (=> (not res!871283) (not e!748505))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52329)

(declare-fun zeroValue!1296 () V!52329)

(declare-datatypes ((tuple2!23098 0))(
  ( (tuple2!23099 (_1!11559 (_ BitVec 64)) (_2!11559 V!52329)) )
))
(declare-datatypes ((List!30258 0))(
  ( (Nil!30255) (Cons!30254 (h!31463 tuple2!23098) (t!43871 List!30258)) )
))
(declare-datatypes ((ListLongMap!20767 0))(
  ( (ListLongMap!20768 (toList!10399 List!30258)) )
))
(declare-fun contains!8485 (ListLongMap!20767 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5355 (array!87789 array!87791 (_ BitVec 32) (_ BitVec 32) V!52329 V!52329 (_ BitVec 32) Int) ListLongMap!20767)

(assert (=> b!1312217 (= res!871283 (contains!8485 (getCurrentListMap!5355 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1312218 () Bool)

(declare-fun res!871284 () Bool)

(assert (=> b!1312218 (=> (not res!871284) (not e!748505))))

(assert (=> b!1312218 (= res!871284 (not (= (select (arr!42370 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1312219 () Bool)

(declare-fun e!748504 () Bool)

(declare-fun tp_is_empty!35419 () Bool)

(assert (=> b!1312219 (= e!748504 tp_is_empty!35419)))

(declare-fun mapIsEmpty!54757 () Bool)

(declare-fun mapRes!54757 () Bool)

(assert (=> mapIsEmpty!54757 mapRes!54757))

(declare-fun b!1312220 () Bool)

(declare-fun res!871285 () Bool)

(assert (=> b!1312220 (=> (not res!871285) (not e!748505))))

(assert (=> b!1312220 (= res!871285 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!54757 () Bool)

(declare-fun tp!104390 () Bool)

(declare-fun e!748502 () Bool)

(assert (=> mapNonEmpty!54757 (= mapRes!54757 (and tp!104390 e!748502))))

(declare-fun mapKey!54757 () (_ BitVec 32))

(declare-fun mapValue!54757 () ValueCell!16811)

(declare-fun mapRest!54757 () (Array (_ BitVec 32) ValueCell!16811))

(assert (=> mapNonEmpty!54757 (= (arr!42371 _values!1354) (store mapRest!54757 mapKey!54757 mapValue!54757))))

(declare-fun b!1312222 () Bool)

(declare-fun res!871282 () Bool)

(assert (=> b!1312222 (=> (not res!871282) (not e!748505))))

(declare-datatypes ((List!30259 0))(
  ( (Nil!30256) (Cons!30255 (h!31464 (_ BitVec 64)) (t!43872 List!30259)) )
))
(declare-fun arrayNoDuplicates!0 (array!87789 (_ BitVec 32) List!30259) Bool)

(assert (=> b!1312222 (= res!871282 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30256))))

(declare-fun b!1312223 () Bool)

(declare-fun e!748501 () Bool)

(assert (=> b!1312223 (= e!748501 (and e!748504 mapRes!54757))))

(declare-fun condMapEmpty!54757 () Bool)

(declare-fun mapDefault!54757 () ValueCell!16811)

