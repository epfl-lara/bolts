; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109280 () Bool)

(assert start!109280)

(declare-fun b_free!28733 () Bool)

(declare-fun b_next!28733 () Bool)

(assert (=> start!109280 (= b_free!28733 (not b_next!28733))))

(declare-fun tp!101318 () Bool)

(declare-fun b_and!46833 () Bool)

(assert (=> start!109280 (= tp!101318 b_and!46833)))

(declare-fun b!1292317 () Bool)

(declare-fun e!737648 () Bool)

(declare-fun tp_is_empty!34373 () Bool)

(assert (=> b!1292317 (= e!737648 tp_is_empty!34373)))

(declare-fun b!1292318 () Bool)

(declare-fun res!858762 () Bool)

(declare-fun e!737650 () Bool)

(assert (=> b!1292318 (=> (not res!858762) (not e!737650))))

(declare-datatypes ((array!85739 0))(
  ( (array!85740 (arr!41366 (Array (_ BitVec 32) (_ BitVec 64))) (size!41917 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85739)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292318 (= res!858762 (not (validKeyInArray!0 (select (arr!41366 _keys!1741) from!2144))))))

(declare-fun b!1292319 () Bool)

(declare-fun res!858761 () Bool)

(assert (=> b!1292319 (=> (not res!858761) (not e!737650))))

(assert (=> b!1292319 (= res!858761 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41917 _keys!1741))))))

(declare-fun b!1292320 () Bool)

(declare-fun e!737649 () Bool)

(assert (=> b!1292320 (= e!737649 tp_is_empty!34373)))

(declare-fun b!1292321 () Bool)

(declare-fun res!858755 () Bool)

(assert (=> b!1292321 (=> (not res!858755) (not e!737650))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1292321 (= res!858755 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41917 _keys!1741))))))

(declare-fun res!858760 () Bool)

(assert (=> start!109280 (=> (not res!858760) (not e!737650))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109280 (= res!858760 (validMask!0 mask!2175))))

(assert (=> start!109280 e!737650))

(assert (=> start!109280 tp_is_empty!34373))

(assert (=> start!109280 true))

(declare-datatypes ((V!50933 0))(
  ( (V!50934 (val!17261 Int)) )
))
(declare-datatypes ((ValueCell!16288 0))(
  ( (ValueCellFull!16288 (v!19862 V!50933)) (EmptyCell!16288) )
))
(declare-datatypes ((array!85741 0))(
  ( (array!85742 (arr!41367 (Array (_ BitVec 32) ValueCell!16288)) (size!41918 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85741)

(declare-fun e!737647 () Bool)

(declare-fun array_inv!31313 (array!85741) Bool)

(assert (=> start!109280 (and (array_inv!31313 _values!1445) e!737647)))

(declare-fun array_inv!31314 (array!85739) Bool)

(assert (=> start!109280 (array_inv!31314 _keys!1741)))

(assert (=> start!109280 tp!101318))

(declare-fun b!1292322 () Bool)

(assert (=> b!1292322 (= e!737650 (not true))))

(declare-datatypes ((tuple2!22342 0))(
  ( (tuple2!22343 (_1!11181 (_ BitVec 64)) (_2!11181 V!50933)) )
))
(declare-datatypes ((List!29529 0))(
  ( (Nil!29526) (Cons!29525 (h!30734 tuple2!22342) (t!43100 List!29529)) )
))
(declare-datatypes ((ListLongMap!20011 0))(
  ( (ListLongMap!20012 (toList!10021 List!29529)) )
))
(declare-fun contains!8077 (ListLongMap!20011 (_ BitVec 64)) Bool)

(assert (=> b!1292322 (not (contains!8077 (ListLongMap!20012 Nil!29526) k!1205))))

(declare-datatypes ((Unit!42723 0))(
  ( (Unit!42724) )
))
(declare-fun lt!579271 () Unit!42723)

(declare-fun emptyContainsNothing!118 ((_ BitVec 64)) Unit!42723)

(assert (=> b!1292322 (= lt!579271 (emptyContainsNothing!118 k!1205))))

(declare-fun mapIsEmpty!53120 () Bool)

(declare-fun mapRes!53120 () Bool)

(assert (=> mapIsEmpty!53120 mapRes!53120))

(declare-fun mapNonEmpty!53120 () Bool)

(declare-fun tp!101319 () Bool)

(assert (=> mapNonEmpty!53120 (= mapRes!53120 (and tp!101319 e!737648))))

(declare-fun mapKey!53120 () (_ BitVec 32))

(declare-fun mapRest!53120 () (Array (_ BitVec 32) ValueCell!16288))

(declare-fun mapValue!53120 () ValueCell!16288)

(assert (=> mapNonEmpty!53120 (= (arr!41367 _values!1445) (store mapRest!53120 mapKey!53120 mapValue!53120))))

(declare-fun b!1292323 () Bool)

(declare-fun res!858756 () Bool)

(assert (=> b!1292323 (=> (not res!858756) (not e!737650))))

(declare-fun minValue!1387 () V!50933)

(declare-fun zeroValue!1387 () V!50933)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5013 (array!85739 array!85741 (_ BitVec 32) (_ BitVec 32) V!50933 V!50933 (_ BitVec 32) Int) ListLongMap!20011)

(assert (=> b!1292323 (= res!858756 (contains!8077 (getCurrentListMap!5013 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1292324 () Bool)

(declare-fun res!858759 () Bool)

(assert (=> b!1292324 (=> (not res!858759) (not e!737650))))

(declare-datatypes ((List!29530 0))(
  ( (Nil!29527) (Cons!29526 (h!30735 (_ BitVec 64)) (t!43101 List!29530)) )
))
(declare-fun arrayNoDuplicates!0 (array!85739 (_ BitVec 32) List!29530) Bool)

(assert (=> b!1292324 (= res!858759 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29527))))

(declare-fun b!1292325 () Bool)

(declare-fun res!858757 () Bool)

(assert (=> b!1292325 (=> (not res!858757) (not e!737650))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85739 (_ BitVec 32)) Bool)

(assert (=> b!1292325 (= res!858757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1292326 () Bool)

(declare-fun res!858758 () Bool)

(assert (=> b!1292326 (=> (not res!858758) (not e!737650))))

(assert (=> b!1292326 (= res!858758 (and (= (size!41918 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41917 _keys!1741) (size!41918 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1292327 () Bool)

(assert (=> b!1292327 (= e!737647 (and e!737649 mapRes!53120))))

(declare-fun condMapEmpty!53120 () Bool)

(declare-fun mapDefault!53120 () ValueCell!16288)

