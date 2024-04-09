; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109756 () Bool)

(assert start!109756)

(declare-fun b_free!29153 () Bool)

(declare-fun b_next!29153 () Bool)

(assert (=> start!109756 (= b_free!29153 (not b_next!29153))))

(declare-fun tp!102587 () Bool)

(declare-fun b_and!47265 () Bool)

(assert (=> start!109756 (= tp!102587 b_and!47265)))

(declare-fun res!863655 () Bool)

(declare-fun e!741379 () Bool)

(assert (=> start!109756 (=> (not res!863655) (not e!741379))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109756 (= res!863655 (validMask!0 mask!2175))))

(assert (=> start!109756 e!741379))

(declare-fun tp_is_empty!34793 () Bool)

(assert (=> start!109756 tp_is_empty!34793))

(assert (=> start!109756 true))

(declare-datatypes ((V!51493 0))(
  ( (V!51494 (val!17471 Int)) )
))
(declare-datatypes ((ValueCell!16498 0))(
  ( (ValueCellFull!16498 (v!20075 V!51493)) (EmptyCell!16498) )
))
(declare-datatypes ((array!86559 0))(
  ( (array!86560 (arr!41773 (Array (_ BitVec 32) ValueCell!16498)) (size!42324 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86559)

(declare-fun e!741380 () Bool)

(declare-fun array_inv!31607 (array!86559) Bool)

(assert (=> start!109756 (and (array_inv!31607 _values!1445) e!741380)))

(declare-datatypes ((array!86561 0))(
  ( (array!86562 (arr!41774 (Array (_ BitVec 32) (_ BitVec 64))) (size!42325 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86561)

(declare-fun array_inv!31608 (array!86561) Bool)

(assert (=> start!109756 (array_inv!31608 _keys!1741)))

(assert (=> start!109756 tp!102587))

(declare-fun b!1299502 () Bool)

(declare-fun res!863652 () Bool)

(assert (=> b!1299502 (=> (not res!863652) (not e!741379))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1299502 (= res!863652 (and (= (size!42324 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42325 _keys!1741) (size!42324 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1299503 () Bool)

(declare-fun res!863657 () Bool)

(assert (=> b!1299503 (=> (not res!863657) (not e!741379))))

(declare-datatypes ((List!29840 0))(
  ( (Nil!29837) (Cons!29836 (h!31045 (_ BitVec 64)) (t!43417 List!29840)) )
))
(declare-fun arrayNoDuplicates!0 (array!86561 (_ BitVec 32) List!29840) Bool)

(assert (=> b!1299503 (= res!863657 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29837))))

(declare-fun b!1299504 () Bool)

(declare-fun e!741377 () Bool)

(assert (=> b!1299504 (= e!741377 tp_is_empty!34793)))

(declare-fun mapNonEmpty!53759 () Bool)

(declare-fun mapRes!53759 () Bool)

(declare-fun tp!102588 () Bool)

(declare-fun e!741381 () Bool)

(assert (=> mapNonEmpty!53759 (= mapRes!53759 (and tp!102588 e!741381))))

(declare-fun mapRest!53759 () (Array (_ BitVec 32) ValueCell!16498))

(declare-fun mapKey!53759 () (_ BitVec 32))

(declare-fun mapValue!53759 () ValueCell!16498)

(assert (=> mapNonEmpty!53759 (= (arr!41773 _values!1445) (store mapRest!53759 mapKey!53759 mapValue!53759))))

(declare-fun b!1299505 () Bool)

(declare-fun res!863653 () Bool)

(assert (=> b!1299505 (=> (not res!863653) (not e!741379))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1299505 (= res!863653 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42325 _keys!1741))))))

(declare-fun b!1299506 () Bool)

(declare-fun res!863651 () Bool)

(assert (=> b!1299506 (=> (not res!863651) (not e!741379))))

(declare-fun minValue!1387 () V!51493)

(declare-fun zeroValue!1387 () V!51493)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22680 0))(
  ( (tuple2!22681 (_1!11350 (_ BitVec 64)) (_2!11350 V!51493)) )
))
(declare-datatypes ((List!29841 0))(
  ( (Nil!29838) (Cons!29837 (h!31046 tuple2!22680) (t!43418 List!29841)) )
))
(declare-datatypes ((ListLongMap!20349 0))(
  ( (ListLongMap!20350 (toList!10190 List!29841)) )
))
(declare-fun contains!8248 (ListLongMap!20349 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5164 (array!86561 array!86559 (_ BitVec 32) (_ BitVec 32) V!51493 V!51493 (_ BitVec 32) Int) ListLongMap!20349)

(assert (=> b!1299506 (= res!863651 (contains!8248 (getCurrentListMap!5164 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1299507 () Bool)

(declare-fun res!863658 () Bool)

(assert (=> b!1299507 (=> (not res!863658) (not e!741379))))

(assert (=> b!1299507 (= res!863658 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42325 _keys!1741))))))

(declare-fun b!1299508 () Bool)

(declare-fun res!863650 () Bool)

(assert (=> b!1299508 (=> (not res!863650) (not e!741379))))

(assert (=> b!1299508 (= res!863650 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1299509 () Bool)

(assert (=> b!1299509 (= e!741381 tp_is_empty!34793)))

(declare-fun b!1299510 () Bool)

(assert (=> b!1299510 (= e!741380 (and e!741377 mapRes!53759))))

(declare-fun condMapEmpty!53759 () Bool)

(declare-fun mapDefault!53759 () ValueCell!16498)

