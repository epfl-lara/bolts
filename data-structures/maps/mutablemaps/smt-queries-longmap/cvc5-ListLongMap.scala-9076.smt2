; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109276 () Bool)

(assert start!109276)

(declare-fun b_free!28729 () Bool)

(declare-fun b_next!28729 () Bool)

(assert (=> start!109276 (= b_free!28729 (not b_next!28729))))

(declare-fun tp!101306 () Bool)

(declare-fun b_and!46829 () Bool)

(assert (=> start!109276 (= tp!101306 b_and!46829)))

(declare-fun mapIsEmpty!53114 () Bool)

(declare-fun mapRes!53114 () Bool)

(assert (=> mapIsEmpty!53114 mapRes!53114))

(declare-fun b!1292251 () Bool)

(declare-fun res!858713 () Bool)

(declare-fun e!737617 () Bool)

(assert (=> b!1292251 (=> (not res!858713) (not e!737617))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50929 0))(
  ( (V!50930 (val!17259 Int)) )
))
(declare-datatypes ((ValueCell!16286 0))(
  ( (ValueCellFull!16286 (v!19860 V!50929)) (EmptyCell!16286) )
))
(declare-datatypes ((array!85731 0))(
  ( (array!85732 (arr!41362 (Array (_ BitVec 32) ValueCell!16286)) (size!41913 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85731)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85733 0))(
  ( (array!85734 (arr!41363 (Array (_ BitVec 32) (_ BitVec 64))) (size!41914 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85733)

(assert (=> b!1292251 (= res!858713 (and (= (size!41913 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41914 _keys!1741) (size!41913 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!858712 () Bool)

(assert (=> start!109276 (=> (not res!858712) (not e!737617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109276 (= res!858712 (validMask!0 mask!2175))))

(assert (=> start!109276 e!737617))

(declare-fun tp_is_empty!34369 () Bool)

(assert (=> start!109276 tp_is_empty!34369))

(assert (=> start!109276 true))

(declare-fun e!737618 () Bool)

(declare-fun array_inv!31309 (array!85731) Bool)

(assert (=> start!109276 (and (array_inv!31309 _values!1445) e!737618)))

(declare-fun array_inv!31310 (array!85733) Bool)

(assert (=> start!109276 (array_inv!31310 _keys!1741)))

(assert (=> start!109276 tp!101306))

(declare-fun b!1292252 () Bool)

(declare-fun e!737616 () Bool)

(assert (=> b!1292252 (= e!737616 tp_is_empty!34369)))

(declare-fun b!1292253 () Bool)

(declare-fun res!858709 () Bool)

(assert (=> b!1292253 (=> (not res!858709) (not e!737617))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1292253 (= res!858709 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41914 _keys!1741))))))

(declare-fun mapNonEmpty!53114 () Bool)

(declare-fun tp!101307 () Bool)

(declare-fun e!737619 () Bool)

(assert (=> mapNonEmpty!53114 (= mapRes!53114 (and tp!101307 e!737619))))

(declare-fun mapKey!53114 () (_ BitVec 32))

(declare-fun mapValue!53114 () ValueCell!16286)

(declare-fun mapRest!53114 () (Array (_ BitVec 32) ValueCell!16286))

(assert (=> mapNonEmpty!53114 (= (arr!41362 _values!1445) (store mapRest!53114 mapKey!53114 mapValue!53114))))

(declare-fun b!1292254 () Bool)

(assert (=> b!1292254 (= e!737619 tp_is_empty!34369)))

(declare-fun b!1292255 () Bool)

(declare-fun res!858708 () Bool)

(assert (=> b!1292255 (=> (not res!858708) (not e!737617))))

(assert (=> b!1292255 (= res!858708 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41914 _keys!1741))))))

(declare-fun b!1292256 () Bool)

(declare-fun res!858707 () Bool)

(assert (=> b!1292256 (=> (not res!858707) (not e!737617))))

(declare-datatypes ((List!29525 0))(
  ( (Nil!29522) (Cons!29521 (h!30730 (_ BitVec 64)) (t!43096 List!29525)) )
))
(declare-fun arrayNoDuplicates!0 (array!85733 (_ BitVec 32) List!29525) Bool)

(assert (=> b!1292256 (= res!858707 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29522))))

(declare-fun b!1292257 () Bool)

(declare-fun res!858711 () Bool)

(assert (=> b!1292257 (=> (not res!858711) (not e!737617))))

(declare-fun minValue!1387 () V!50929)

(declare-fun zeroValue!1387 () V!50929)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22338 0))(
  ( (tuple2!22339 (_1!11179 (_ BitVec 64)) (_2!11179 V!50929)) )
))
(declare-datatypes ((List!29526 0))(
  ( (Nil!29523) (Cons!29522 (h!30731 tuple2!22338) (t!43097 List!29526)) )
))
(declare-datatypes ((ListLongMap!20007 0))(
  ( (ListLongMap!20008 (toList!10019 List!29526)) )
))
(declare-fun contains!8075 (ListLongMap!20007 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5011 (array!85733 array!85731 (_ BitVec 32) (_ BitVec 32) V!50929 V!50929 (_ BitVec 32) Int) ListLongMap!20007)

(assert (=> b!1292257 (= res!858711 (contains!8075 (getCurrentListMap!5011 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1292258 () Bool)

(assert (=> b!1292258 (= e!737617 (not true))))

(assert (=> b!1292258 (not (contains!8075 (ListLongMap!20008 Nil!29523) k!1205))))

(declare-datatypes ((Unit!42719 0))(
  ( (Unit!42720) )
))
(declare-fun lt!579265 () Unit!42719)

(declare-fun emptyContainsNothing!116 ((_ BitVec 64)) Unit!42719)

(assert (=> b!1292258 (= lt!579265 (emptyContainsNothing!116 k!1205))))

(declare-fun b!1292259 () Bool)

(declare-fun res!858710 () Bool)

(assert (=> b!1292259 (=> (not res!858710) (not e!737617))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292259 (= res!858710 (not (validKeyInArray!0 (select (arr!41363 _keys!1741) from!2144))))))

(declare-fun b!1292260 () Bool)

(assert (=> b!1292260 (= e!737618 (and e!737616 mapRes!53114))))

(declare-fun condMapEmpty!53114 () Bool)

(declare-fun mapDefault!53114 () ValueCell!16286)

