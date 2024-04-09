; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109306 () Bool)

(assert start!109306)

(declare-fun b_free!28759 () Bool)

(declare-fun b_next!28759 () Bool)

(assert (=> start!109306 (= b_free!28759 (not b_next!28759))))

(declare-fun tp!101397 () Bool)

(declare-fun b_and!46859 () Bool)

(assert (=> start!109306 (= tp!101397 b_and!46859)))

(declare-fun b!1292766 () Bool)

(declare-fun res!859088 () Bool)

(declare-fun e!737864 () Bool)

(assert (=> b!1292766 (=> (not res!859088) (not e!737864))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85787 0))(
  ( (array!85788 (arr!41390 (Array (_ BitVec 32) (_ BitVec 64))) (size!41941 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85787)

(assert (=> b!1292766 (= res!859088 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41941 _keys!1741))))))

(declare-fun b!1292767 () Bool)

(declare-fun res!859095 () Bool)

(assert (=> b!1292767 (=> (not res!859095) (not e!737864))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292767 (= res!859095 (not (validKeyInArray!0 (select (arr!41390 _keys!1741) from!2144))))))

(declare-fun res!859094 () Bool)

(assert (=> start!109306 (=> (not res!859094) (not e!737864))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109306 (= res!859094 (validMask!0 mask!2175))))

(assert (=> start!109306 e!737864))

(declare-fun tp_is_empty!34399 () Bool)

(assert (=> start!109306 tp_is_empty!34399))

(assert (=> start!109306 true))

(declare-datatypes ((V!50969 0))(
  ( (V!50970 (val!17274 Int)) )
))
(declare-datatypes ((ValueCell!16301 0))(
  ( (ValueCellFull!16301 (v!19875 V!50969)) (EmptyCell!16301) )
))
(declare-datatypes ((array!85789 0))(
  ( (array!85790 (arr!41391 (Array (_ BitVec 32) ValueCell!16301)) (size!41942 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85789)

(declare-fun e!737862 () Bool)

(declare-fun array_inv!31333 (array!85789) Bool)

(assert (=> start!109306 (and (array_inv!31333 _values!1445) e!737862)))

(declare-fun array_inv!31334 (array!85787) Bool)

(assert (=> start!109306 (array_inv!31334 _keys!1741)))

(assert (=> start!109306 tp!101397))

(declare-fun b!1292768 () Bool)

(declare-fun res!859093 () Bool)

(assert (=> b!1292768 (=> (not res!859093) (not e!737864))))

(declare-fun minValue!1387 () V!50969)

(declare-fun zeroValue!1387 () V!50969)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22362 0))(
  ( (tuple2!22363 (_1!11191 (_ BitVec 64)) (_2!11191 V!50969)) )
))
(declare-datatypes ((List!29547 0))(
  ( (Nil!29544) (Cons!29543 (h!30752 tuple2!22362) (t!43118 List!29547)) )
))
(declare-datatypes ((ListLongMap!20031 0))(
  ( (ListLongMap!20032 (toList!10031 List!29547)) )
))
(declare-fun contains!8087 (ListLongMap!20031 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5020 (array!85787 array!85789 (_ BitVec 32) (_ BitVec 32) V!50969 V!50969 (_ BitVec 32) Int) ListLongMap!20031)

(assert (=> b!1292768 (= res!859093 (contains!8087 (getCurrentListMap!5020 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1292769 () Bool)

(declare-fun res!859091 () Bool)

(assert (=> b!1292769 (=> (not res!859091) (not e!737864))))

(assert (=> b!1292769 (= res!859091 (and (= (size!41942 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41941 _keys!1741) (size!41942 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1292770 () Bool)

(declare-fun res!859087 () Bool)

(assert (=> b!1292770 (=> (not res!859087) (not e!737864))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85787 (_ BitVec 32)) Bool)

(assert (=> b!1292770 (= res!859087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1292771 () Bool)

(declare-fun e!737866 () Bool)

(assert (=> b!1292771 (= e!737866 tp_is_empty!34399)))

(declare-fun b!1292772 () Bool)

(declare-fun res!859092 () Bool)

(assert (=> b!1292772 (=> (not res!859092) (not e!737864))))

(declare-datatypes ((List!29548 0))(
  ( (Nil!29545) (Cons!29544 (h!30753 (_ BitVec 64)) (t!43119 List!29548)) )
))
(declare-fun arrayNoDuplicates!0 (array!85787 (_ BitVec 32) List!29548) Bool)

(assert (=> b!1292772 (= res!859092 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29545))))

(declare-fun mapNonEmpty!53159 () Bool)

(declare-fun mapRes!53159 () Bool)

(declare-fun tp!101396 () Bool)

(assert (=> mapNonEmpty!53159 (= mapRes!53159 (and tp!101396 e!737866))))

(declare-fun mapValue!53159 () ValueCell!16301)

(declare-fun mapKey!53159 () (_ BitVec 32))

(declare-fun mapRest!53159 () (Array (_ BitVec 32) ValueCell!16301))

(assert (=> mapNonEmpty!53159 (= (arr!41391 _values!1445) (store mapRest!53159 mapKey!53159 mapValue!53159))))

(declare-fun b!1292773 () Bool)

(declare-fun e!737861 () Bool)

(assert (=> b!1292773 (= e!737862 (and e!737861 mapRes!53159))))

(declare-fun condMapEmpty!53159 () Bool)

(declare-fun mapDefault!53159 () ValueCell!16301)

