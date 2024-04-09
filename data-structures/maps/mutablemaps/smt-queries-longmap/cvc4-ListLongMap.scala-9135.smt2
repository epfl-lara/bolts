; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109634 () Bool)

(assert start!109634)

(declare-fun b_free!29087 () Bool)

(declare-fun b_next!29087 () Bool)

(assert (=> start!109634 (= b_free!29087 (not b_next!29087))))

(declare-fun tp!102380 () Bool)

(declare-fun b_and!47187 () Bool)

(assert (=> start!109634 (= tp!102380 b_and!47187)))

(declare-fun b!1298069 () Bool)

(declare-fun res!862753 () Bool)

(declare-fun e!740602 () Bool)

(assert (=> b!1298069 (=> (not res!862753) (not e!740602))))

(declare-datatypes ((V!51405 0))(
  ( (V!51406 (val!17438 Int)) )
))
(declare-fun minValue!1387 () V!51405)

(declare-fun zeroValue!1387 () V!51405)

(declare-datatypes ((ValueCell!16465 0))(
  ( (ValueCellFull!16465 (v!20039 V!51405)) (EmptyCell!16465) )
))
(declare-datatypes ((array!86423 0))(
  ( (array!86424 (arr!41708 (Array (_ BitVec 32) ValueCell!16465)) (size!42259 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86423)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86425 0))(
  ( (array!86426 (arr!41709 (Array (_ BitVec 32) (_ BitVec 64))) (size!42260 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86425)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22628 0))(
  ( (tuple2!22629 (_1!11324 (_ BitVec 64)) (_2!11324 V!51405)) )
))
(declare-datatypes ((List!29789 0))(
  ( (Nil!29786) (Cons!29785 (h!30994 tuple2!22628) (t!43360 List!29789)) )
))
(declare-datatypes ((ListLongMap!20297 0))(
  ( (ListLongMap!20298 (toList!10164 List!29789)) )
))
(declare-fun contains!8218 (ListLongMap!20297 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5138 (array!86425 array!86423 (_ BitVec 32) (_ BitVec 32) V!51405 V!51405 (_ BitVec 32) Int) ListLongMap!20297)

(assert (=> b!1298069 (= res!862753 (contains!8218 (getCurrentListMap!5138 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!862752 () Bool)

(assert (=> start!109634 (=> (not res!862752) (not e!740602))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109634 (= res!862752 (validMask!0 mask!2175))))

(assert (=> start!109634 e!740602))

(declare-fun tp_is_empty!34727 () Bool)

(assert (=> start!109634 tp_is_empty!34727))

(assert (=> start!109634 true))

(declare-fun e!740600 () Bool)

(declare-fun array_inv!31559 (array!86423) Bool)

(assert (=> start!109634 (and (array_inv!31559 _values!1445) e!740600)))

(declare-fun array_inv!31560 (array!86425) Bool)

(assert (=> start!109634 (array_inv!31560 _keys!1741)))

(assert (=> start!109634 tp!102380))

(declare-fun b!1298070 () Bool)

(declare-fun res!862757 () Bool)

(assert (=> b!1298070 (=> (not res!862757) (not e!740602))))

(assert (=> b!1298070 (= res!862757 (and (= (size!42259 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42260 _keys!1741) (size!42259 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1298071 () Bool)

(declare-fun res!862758 () Bool)

(assert (=> b!1298071 (=> (not res!862758) (not e!740602))))

(assert (=> b!1298071 (= res!862758 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42260 _keys!1741)) (not (= (select (arr!41709 _keys!1741) from!2144) k!1205))))))

(declare-fun b!1298072 () Bool)

(declare-fun e!740599 () Bool)

(assert (=> b!1298072 (= e!740599 tp_is_empty!34727)))

(declare-fun b!1298073 () Bool)

(declare-fun e!740601 () Bool)

(assert (=> b!1298073 (= e!740601 tp_is_empty!34727)))

(declare-fun b!1298074 () Bool)

(assert (=> b!1298074 (= e!740602 (not true))))

(assert (=> b!1298074 (contains!8218 (getCurrentListMap!5138 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42922 0))(
  ( (Unit!42923) )
))
(declare-fun lt!580612 () Unit!42922)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!36 (array!86425 array!86423 (_ BitVec 32) (_ BitVec 32) V!51405 V!51405 (_ BitVec 64) (_ BitVec 32) Int) Unit!42922)

(assert (=> b!1298074 (= lt!580612 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!36 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1298075 () Bool)

(declare-fun res!862755 () Bool)

(assert (=> b!1298075 (=> (not res!862755) (not e!740602))))

(assert (=> b!1298075 (= res!862755 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42260 _keys!1741))))))

(declare-fun b!1298076 () Bool)

(declare-fun res!862756 () Bool)

(assert (=> b!1298076 (=> (not res!862756) (not e!740602))))

(declare-datatypes ((List!29790 0))(
  ( (Nil!29787) (Cons!29786 (h!30995 (_ BitVec 64)) (t!43361 List!29790)) )
))
(declare-fun arrayNoDuplicates!0 (array!86425 (_ BitVec 32) List!29790) Bool)

(assert (=> b!1298076 (= res!862756 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29787))))

(declare-fun mapNonEmpty!53651 () Bool)

(declare-fun mapRes!53651 () Bool)

(declare-fun tp!102381 () Bool)

(assert (=> mapNonEmpty!53651 (= mapRes!53651 (and tp!102381 e!740599))))

(declare-fun mapKey!53651 () (_ BitVec 32))

(declare-fun mapRest!53651 () (Array (_ BitVec 32) ValueCell!16465))

(declare-fun mapValue!53651 () ValueCell!16465)

(assert (=> mapNonEmpty!53651 (= (arr!41708 _values!1445) (store mapRest!53651 mapKey!53651 mapValue!53651))))

(declare-fun b!1298077 () Bool)

(declare-fun res!862754 () Bool)

(assert (=> b!1298077 (=> (not res!862754) (not e!740602))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86425 (_ BitVec 32)) Bool)

(assert (=> b!1298077 (= res!862754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1298078 () Bool)

(assert (=> b!1298078 (= e!740600 (and e!740601 mapRes!53651))))

(declare-fun condMapEmpty!53651 () Bool)

(declare-fun mapDefault!53651 () ValueCell!16465)

