; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108902 () Bool)

(assert start!108902)

(declare-fun b_free!28379 () Bool)

(declare-fun b_next!28379 () Bool)

(assert (=> start!108902 (= b_free!28379 (not b_next!28379))))

(declare-fun tp!100254 () Bool)

(declare-fun b_and!46455 () Bool)

(assert (=> start!108902 (= tp!100254 b_and!46455)))

(declare-fun b!1285581 () Bool)

(declare-fun e!734379 () Bool)

(assert (=> b!1285581 (= e!734379 false)))

(declare-datatypes ((V!50461 0))(
  ( (V!50462 (val!17084 Int)) )
))
(declare-fun minValue!1387 () V!50461)

(declare-fun zeroValue!1387 () V!50461)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!576882 () Bool)

(declare-datatypes ((ValueCell!16111 0))(
  ( (ValueCellFull!16111 (v!19684 V!50461)) (EmptyCell!16111) )
))
(declare-datatypes ((array!85047 0))(
  ( (array!85048 (arr!41021 (Array (_ BitVec 32) ValueCell!16111)) (size!41572 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85047)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85049 0))(
  ( (array!85050 (arr!41022 (Array (_ BitVec 32) (_ BitVec 64))) (size!41573 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85049)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22030 0))(
  ( (tuple2!22031 (_1!11025 (_ BitVec 64)) (_2!11025 V!50461)) )
))
(declare-datatypes ((List!29242 0))(
  ( (Nil!29239) (Cons!29238 (h!30447 tuple2!22030) (t!42793 List!29242)) )
))
(declare-datatypes ((ListLongMap!19699 0))(
  ( (ListLongMap!19700 (toList!9865 List!29242)) )
))
(declare-fun contains!7920 (ListLongMap!19699 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4881 (array!85049 array!85047 (_ BitVec 32) (_ BitVec 32) V!50461 V!50461 (_ BitVec 32) Int) ListLongMap!19699)

(assert (=> b!1285581 (= lt!576882 (contains!7920 (getCurrentListMap!4881 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1285582 () Bool)

(declare-fun res!854106 () Bool)

(assert (=> b!1285582 (=> (not res!854106) (not e!734379))))

(assert (=> b!1285582 (= res!854106 (and (= (size!41572 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41573 _keys!1741) (size!41572 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!52586 () Bool)

(declare-fun mapRes!52586 () Bool)

(assert (=> mapIsEmpty!52586 mapRes!52586))

(declare-fun b!1285583 () Bool)

(declare-fun res!854103 () Bool)

(assert (=> b!1285583 (=> (not res!854103) (not e!734379))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85049 (_ BitVec 32)) Bool)

(assert (=> b!1285583 (= res!854103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!52586 () Bool)

(declare-fun tp!100253 () Bool)

(declare-fun e!734378 () Bool)

(assert (=> mapNonEmpty!52586 (= mapRes!52586 (and tp!100253 e!734378))))

(declare-fun mapValue!52586 () ValueCell!16111)

(declare-fun mapRest!52586 () (Array (_ BitVec 32) ValueCell!16111))

(declare-fun mapKey!52586 () (_ BitVec 32))

(assert (=> mapNonEmpty!52586 (= (arr!41021 _values!1445) (store mapRest!52586 mapKey!52586 mapValue!52586))))

(declare-fun res!854104 () Bool)

(assert (=> start!108902 (=> (not res!854104) (not e!734379))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108902 (= res!854104 (validMask!0 mask!2175))))

(assert (=> start!108902 e!734379))

(declare-fun tp_is_empty!34019 () Bool)

(assert (=> start!108902 tp_is_empty!34019))

(assert (=> start!108902 true))

(declare-fun e!734380 () Bool)

(declare-fun array_inv!31083 (array!85047) Bool)

(assert (=> start!108902 (and (array_inv!31083 _values!1445) e!734380)))

(declare-fun array_inv!31084 (array!85049) Bool)

(assert (=> start!108902 (array_inv!31084 _keys!1741)))

(assert (=> start!108902 tp!100254))

(declare-fun b!1285584 () Bool)

(declare-fun res!854102 () Bool)

(assert (=> b!1285584 (=> (not res!854102) (not e!734379))))

(declare-datatypes ((List!29243 0))(
  ( (Nil!29240) (Cons!29239 (h!30448 (_ BitVec 64)) (t!42794 List!29243)) )
))
(declare-fun arrayNoDuplicates!0 (array!85049 (_ BitVec 32) List!29243) Bool)

(assert (=> b!1285584 (= res!854102 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29240))))

(declare-fun b!1285585 () Bool)

(declare-fun e!734377 () Bool)

(assert (=> b!1285585 (= e!734377 tp_is_empty!34019)))

(declare-fun b!1285586 () Bool)

(assert (=> b!1285586 (= e!734380 (and e!734377 mapRes!52586))))

(declare-fun condMapEmpty!52586 () Bool)

(declare-fun mapDefault!52586 () ValueCell!16111)

