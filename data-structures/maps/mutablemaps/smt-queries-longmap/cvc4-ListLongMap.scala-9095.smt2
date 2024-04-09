; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109394 () Bool)

(assert start!109394)

(declare-fun b_free!28847 () Bool)

(declare-fun b_next!28847 () Bool)

(assert (=> start!109394 (= b_free!28847 (not b_next!28847))))

(declare-fun tp!101661 () Bool)

(declare-fun b_and!46947 () Bool)

(assert (=> start!109394 (= tp!101661 b_and!46947)))

(declare-fun mapIsEmpty!53291 () Bool)

(declare-fun mapRes!53291 () Bool)

(assert (=> mapIsEmpty!53291 mapRes!53291))

(declare-fun res!860235 () Bool)

(declare-fun e!738612 () Bool)

(assert (=> start!109394 (=> (not res!860235) (not e!738612))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109394 (= res!860235 (validMask!0 mask!2175))))

(assert (=> start!109394 e!738612))

(declare-fun tp_is_empty!34487 () Bool)

(assert (=> start!109394 tp_is_empty!34487))

(assert (=> start!109394 true))

(declare-datatypes ((V!51085 0))(
  ( (V!51086 (val!17318 Int)) )
))
(declare-datatypes ((ValueCell!16345 0))(
  ( (ValueCellFull!16345 (v!19919 V!51085)) (EmptyCell!16345) )
))
(declare-datatypes ((array!85961 0))(
  ( (array!85962 (arr!41477 (Array (_ BitVec 32) ValueCell!16345)) (size!42028 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85961)

(declare-fun e!738611 () Bool)

(declare-fun array_inv!31389 (array!85961) Bool)

(assert (=> start!109394 (and (array_inv!31389 _values!1445) e!738611)))

(declare-datatypes ((array!85963 0))(
  ( (array!85964 (arr!41478 (Array (_ BitVec 32) (_ BitVec 64))) (size!42029 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85963)

(declare-fun array_inv!31390 (array!85963) Bool)

(assert (=> start!109394 (array_inv!31390 _keys!1741)))

(assert (=> start!109394 tp!101661))

(declare-fun b!1294306 () Bool)

(declare-fun e!738609 () Bool)

(assert (=> b!1294306 (= e!738609 tp_is_empty!34487)))

(declare-fun b!1294307 () Bool)

(declare-fun res!860232 () Bool)

(assert (=> b!1294307 (=> (not res!860232) (not e!738612))))

(declare-fun minValue!1387 () V!51085)

(declare-fun zeroValue!1387 () V!51085)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22438 0))(
  ( (tuple2!22439 (_1!11229 (_ BitVec 64)) (_2!11229 V!51085)) )
))
(declare-datatypes ((List!29613 0))(
  ( (Nil!29610) (Cons!29609 (h!30818 tuple2!22438) (t!43184 List!29613)) )
))
(declare-datatypes ((ListLongMap!20107 0))(
  ( (ListLongMap!20108 (toList!10069 List!29613)) )
))
(declare-fun contains!8125 (ListLongMap!20107 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5054 (array!85963 array!85961 (_ BitVec 32) (_ BitVec 32) V!51085 V!51085 (_ BitVec 32) Int) ListLongMap!20107)

(assert (=> b!1294307 (= res!860232 (contains!8125 (getCurrentListMap!5054 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1294308 () Bool)

(declare-fun res!860234 () Bool)

(assert (=> b!1294308 (=> (not res!860234) (not e!738612))))

(declare-datatypes ((List!29614 0))(
  ( (Nil!29611) (Cons!29610 (h!30819 (_ BitVec 64)) (t!43185 List!29614)) )
))
(declare-fun arrayNoDuplicates!0 (array!85963 (_ BitVec 32) List!29614) Bool)

(assert (=> b!1294308 (= res!860234 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29611))))

(declare-fun mapNonEmpty!53291 () Bool)

(declare-fun tp!101660 () Bool)

(declare-fun e!738613 () Bool)

(assert (=> mapNonEmpty!53291 (= mapRes!53291 (and tp!101660 e!738613))))

(declare-fun mapRest!53291 () (Array (_ BitVec 32) ValueCell!16345))

(declare-fun mapValue!53291 () ValueCell!16345)

(declare-fun mapKey!53291 () (_ BitVec 32))

(assert (=> mapNonEmpty!53291 (= (arr!41477 _values!1445) (store mapRest!53291 mapKey!53291 mapValue!53291))))

(declare-fun b!1294309 () Bool)

(declare-fun res!860238 () Bool)

(assert (=> b!1294309 (=> (not res!860238) (not e!738612))))

(assert (=> b!1294309 (= res!860238 (and (= (size!42028 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42029 _keys!1741) (size!42028 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1294310 () Bool)

(assert (=> b!1294310 (= e!738612 (not true))))

(assert (=> b!1294310 (not (contains!8125 (ListLongMap!20108 Nil!29610) k!1205))))

(declare-datatypes ((Unit!42809 0))(
  ( (Unit!42810) )
))
(declare-fun lt!579649 () Unit!42809)

(declare-fun emptyContainsNothing!161 ((_ BitVec 64)) Unit!42809)

(assert (=> b!1294310 (= lt!579649 (emptyContainsNothing!161 k!1205))))

(declare-fun b!1294311 () Bool)

(declare-fun res!860237 () Bool)

(assert (=> b!1294311 (=> (not res!860237) (not e!738612))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85963 (_ BitVec 32)) Bool)

(assert (=> b!1294311 (= res!860237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1294312 () Bool)

(assert (=> b!1294312 (= e!738611 (and e!738609 mapRes!53291))))

(declare-fun condMapEmpty!53291 () Bool)

(declare-fun mapDefault!53291 () ValueCell!16345)

