; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108598 () Bool)

(assert start!108598)

(declare-fun b_free!28109 () Bool)

(declare-fun b_next!28109 () Bool)

(assert (=> start!108598 (= b_free!28109 (not b_next!28109))))

(declare-fun tp!99437 () Bool)

(declare-fun b_and!46179 () Bool)

(assert (=> start!108598 (= tp!99437 b_and!46179)))

(declare-fun b!1281454 () Bool)

(declare-fun res!851338 () Bool)

(declare-fun e!732175 () Bool)

(assert (=> b!1281454 (=> (not res!851338) (not e!732175))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50101 0))(
  ( (V!50102 (val!16949 Int)) )
))
(declare-datatypes ((ValueCell!15976 0))(
  ( (ValueCellFull!15976 (v!19547 V!50101)) (EmptyCell!15976) )
))
(declare-datatypes ((array!84521 0))(
  ( (array!84522 (arr!40760 (Array (_ BitVec 32) ValueCell!15976)) (size!41311 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84521)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84523 0))(
  ( (array!84524 (arr!40761 (Array (_ BitVec 32) (_ BitVec 64))) (size!41312 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84523)

(assert (=> b!1281454 (= res!851338 (and (= (size!41311 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41312 _keys!1741) (size!41311 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1281455 () Bool)

(declare-fun res!851345 () Bool)

(assert (=> b!1281455 (=> (not res!851345) (not e!732175))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84523 (_ BitVec 32)) Bool)

(assert (=> b!1281455 (= res!851345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!851344 () Bool)

(assert (=> start!108598 (=> (not res!851344) (not e!732175))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108598 (= res!851344 (validMask!0 mask!2175))))

(assert (=> start!108598 e!732175))

(declare-fun tp_is_empty!33749 () Bool)

(assert (=> start!108598 tp_is_empty!33749))

(assert (=> start!108598 true))

(declare-fun e!732173 () Bool)

(declare-fun array_inv!30913 (array!84521) Bool)

(assert (=> start!108598 (and (array_inv!30913 _values!1445) e!732173)))

(declare-fun array_inv!30914 (array!84523) Bool)

(assert (=> start!108598 (array_inv!30914 _keys!1741)))

(assert (=> start!108598 tp!99437))

(declare-fun mapIsEmpty!52175 () Bool)

(declare-fun mapRes!52175 () Bool)

(assert (=> mapIsEmpty!52175 mapRes!52175))

(declare-fun b!1281456 () Bool)

(declare-fun res!851342 () Bool)

(assert (=> b!1281456 (=> (not res!851342) (not e!732175))))

(declare-datatypes ((List!29056 0))(
  ( (Nil!29053) (Cons!29052 (h!30261 (_ BitVec 64)) (t!42603 List!29056)) )
))
(declare-fun arrayNoDuplicates!0 (array!84523 (_ BitVec 32) List!29056) Bool)

(assert (=> b!1281456 (= res!851342 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29053))))

(declare-fun mapNonEmpty!52175 () Bool)

(declare-fun tp!99438 () Bool)

(declare-fun e!732177 () Bool)

(assert (=> mapNonEmpty!52175 (= mapRes!52175 (and tp!99438 e!732177))))

(declare-fun mapValue!52175 () ValueCell!15976)

(declare-fun mapKey!52175 () (_ BitVec 32))

(declare-fun mapRest!52175 () (Array (_ BitVec 32) ValueCell!15976))

(assert (=> mapNonEmpty!52175 (= (arr!40760 _values!1445) (store mapRest!52175 mapKey!52175 mapValue!52175))))

(declare-fun b!1281457 () Bool)

(declare-fun e!732176 () Bool)

(assert (=> b!1281457 (= e!732176 true)))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!84523 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1281457 (arrayContainsKey!0 _keys!1741 k!1205 (bvadd #b00000000000000000000000000000001 from!2144))))

(declare-fun minValue!1387 () V!50101)

(declare-fun zeroValue!1387 () V!50101)

(declare-datatypes ((Unit!42383 0))(
  ( (Unit!42384) )
))
(declare-fun lt!576190 () Unit!42383)

(declare-fun defaultEntry!1448 () Int)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!637 (array!84523 array!84521 (_ BitVec 32) (_ BitVec 32) V!50101 V!50101 (_ BitVec 64) (_ BitVec 32) Int) Unit!42383)

(assert (=> b!1281457 (= lt!576190 (lemmaListMapContainsThenArrayContainsFrom!637 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448))))

(declare-fun b!1281458 () Bool)

(declare-fun res!851339 () Bool)

(assert (=> b!1281458 (=> (not res!851339) (not e!732175))))

(assert (=> b!1281458 (= res!851339 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41312 _keys!1741)) (not (= (select (arr!40761 _keys!1741) from!2144) k!1205))))))

(declare-fun b!1281459 () Bool)

(declare-fun res!851340 () Bool)

(assert (=> b!1281459 (=> (not res!851340) (not e!732175))))

(assert (=> b!1281459 (= res!851340 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41312 _keys!1741))))))

(declare-fun b!1281460 () Bool)

(assert (=> b!1281460 (= e!732175 (not e!732176))))

(declare-fun res!851341 () Bool)

(assert (=> b!1281460 (=> res!851341 e!732176)))

(assert (=> b!1281460 (= res!851341 (bvslt (bvadd #b00000000000000000000000000000001 from!2144) #b00000000000000000000000000000000))))

(declare-datatypes ((tuple2!21848 0))(
  ( (tuple2!21849 (_1!10934 (_ BitVec 64)) (_2!10934 V!50101)) )
))
(declare-datatypes ((List!29057 0))(
  ( (Nil!29054) (Cons!29053 (h!30262 tuple2!21848) (t!42604 List!29057)) )
))
(declare-datatypes ((ListLongMap!19517 0))(
  ( (ListLongMap!19518 (toList!9774 List!29057)) )
))
(declare-fun contains!7827 (ListLongMap!19517 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4794 (array!84523 array!84521 (_ BitVec 32) (_ BitVec 32) V!50101 V!50101 (_ BitVec 32) Int) ListLongMap!19517)

(assert (=> b!1281460 (contains!7827 (getCurrentListMap!4794 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-fun lt!576189 () Unit!42383)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!23 (array!84523 array!84521 (_ BitVec 32) (_ BitVec 32) V!50101 V!50101 (_ BitVec 64) (_ BitVec 32) Int) Unit!42383)

(assert (=> b!1281460 (= lt!576189 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!23 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1281461 () Bool)

(declare-fun e!732178 () Bool)

(assert (=> b!1281461 (= e!732173 (and e!732178 mapRes!52175))))

(declare-fun condMapEmpty!52175 () Bool)

(declare-fun mapDefault!52175 () ValueCell!15976)

