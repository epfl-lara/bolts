; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109336 () Bool)

(assert start!109336)

(declare-fun b_free!28789 () Bool)

(declare-fun b_next!28789 () Bool)

(assert (=> start!109336 (= b_free!28789 (not b_next!28789))))

(declare-fun tp!101486 () Bool)

(declare-fun b_and!46889 () Bool)

(assert (=> start!109336 (= tp!101486 b_and!46889)))

(declare-fun b!1293306 () Bool)

(declare-fun res!859494 () Bool)

(declare-fun e!738133 () Bool)

(assert (=> b!1293306 (=> (not res!859494) (not e!738133))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85847 0))(
  ( (array!85848 (arr!41420 (Array (_ BitVec 32) (_ BitVec 64))) (size!41971 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85847)

(assert (=> b!1293306 (= res!859494 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41971 _keys!1741))))))

(declare-fun mapNonEmpty!53204 () Bool)

(declare-fun mapRes!53204 () Bool)

(declare-fun tp!101487 () Bool)

(declare-fun e!738135 () Bool)

(assert (=> mapNonEmpty!53204 (= mapRes!53204 (and tp!101487 e!738135))))

(declare-datatypes ((V!51009 0))(
  ( (V!51010 (val!17289 Int)) )
))
(declare-datatypes ((ValueCell!16316 0))(
  ( (ValueCellFull!16316 (v!19890 V!51009)) (EmptyCell!16316) )
))
(declare-fun mapValue!53204 () ValueCell!16316)

(declare-fun mapRest!53204 () (Array (_ BitVec 32) ValueCell!16316))

(declare-datatypes ((array!85849 0))(
  ( (array!85850 (arr!41421 (Array (_ BitVec 32) ValueCell!16316)) (size!41972 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85849)

(declare-fun mapKey!53204 () (_ BitVec 32))

(assert (=> mapNonEmpty!53204 (= (arr!41421 _values!1445) (store mapRest!53204 mapKey!53204 mapValue!53204))))

(declare-fun b!1293307 () Bool)

(declare-fun res!859500 () Bool)

(assert (=> b!1293307 (=> (not res!859500) (not e!738133))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1293307 (= res!859500 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41971 _keys!1741))))))

(declare-fun b!1293308 () Bool)

(declare-fun res!859492 () Bool)

(assert (=> b!1293308 (=> (not res!859492) (not e!738133))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1293308 (= res!859492 (not (validKeyInArray!0 (select (arr!41420 _keys!1741) from!2144))))))

(declare-fun mapIsEmpty!53204 () Bool)

(assert (=> mapIsEmpty!53204 mapRes!53204))

(declare-fun b!1293309 () Bool)

(declare-fun res!859495 () Bool)

(assert (=> b!1293309 (=> (not res!859495) (not e!738133))))

(declare-fun zeroValue!1387 () V!51009)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun minValue!1387 () V!51009)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22390 0))(
  ( (tuple2!22391 (_1!11205 (_ BitVec 64)) (_2!11205 V!51009)) )
))
(declare-datatypes ((List!29572 0))(
  ( (Nil!29569) (Cons!29568 (h!30777 tuple2!22390) (t!43143 List!29572)) )
))
(declare-datatypes ((ListLongMap!20059 0))(
  ( (ListLongMap!20060 (toList!10045 List!29572)) )
))
(declare-fun contains!8101 (ListLongMap!20059 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5031 (array!85847 array!85849 (_ BitVec 32) (_ BitVec 32) V!51009 V!51009 (_ BitVec 32) Int) ListLongMap!20059)

(assert (=> b!1293309 (= res!859495 (contains!8101 (getCurrentListMap!5031 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1293310 () Bool)

(declare-fun res!859496 () Bool)

(assert (=> b!1293310 (=> (not res!859496) (not e!738133))))

(declare-datatypes ((List!29573 0))(
  ( (Nil!29570) (Cons!29569 (h!30778 (_ BitVec 64)) (t!43144 List!29573)) )
))
(declare-fun arrayNoDuplicates!0 (array!85847 (_ BitVec 32) List!29573) Bool)

(assert (=> b!1293310 (= res!859496 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29570))))

(declare-fun b!1293312 () Bool)

(declare-fun res!859499 () Bool)

(assert (=> b!1293312 (=> (not res!859499) (not e!738133))))

(assert (=> b!1293312 (= res!859499 (and (= (size!41972 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41971 _keys!1741) (size!41972 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1293313 () Bool)

(declare-fun e!738132 () Bool)

(declare-fun e!738134 () Bool)

(assert (=> b!1293313 (= e!738132 (and e!738134 mapRes!53204))))

(declare-fun condMapEmpty!53204 () Bool)

(declare-fun mapDefault!53204 () ValueCell!16316)

