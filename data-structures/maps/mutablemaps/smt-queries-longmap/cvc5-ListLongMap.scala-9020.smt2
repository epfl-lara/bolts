; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108916 () Bool)

(assert start!108916)

(declare-fun b_free!28393 () Bool)

(declare-fun b_next!28393 () Bool)

(assert (=> start!108916 (= b_free!28393 (not b_next!28393))))

(declare-fun tp!100296 () Bool)

(declare-fun b_and!46469 () Bool)

(assert (=> start!108916 (= tp!100296 b_and!46469)))

(declare-fun b!1285820 () Bool)

(declare-fun res!854286 () Bool)

(declare-fun e!734481 () Bool)

(assert (=> b!1285820 (=> (not res!854286) (not e!734481))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50481 0))(
  ( (V!50482 (val!17091 Int)) )
))
(declare-datatypes ((ValueCell!16118 0))(
  ( (ValueCellFull!16118 (v!19691 V!50481)) (EmptyCell!16118) )
))
(declare-datatypes ((array!85075 0))(
  ( (array!85076 (arr!41035 (Array (_ BitVec 32) ValueCell!16118)) (size!41586 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85075)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85077 0))(
  ( (array!85078 (arr!41036 (Array (_ BitVec 32) (_ BitVec 64))) (size!41587 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85077)

(assert (=> b!1285820 (= res!854286 (and (= (size!41586 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41587 _keys!1741) (size!41586 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1285821 () Bool)

(declare-fun res!854284 () Bool)

(assert (=> b!1285821 (=> (not res!854284) (not e!734481))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1285821 (= res!854284 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41587 _keys!1741))))))

(declare-fun b!1285822 () Bool)

(declare-fun e!734483 () Bool)

(declare-fun tp_is_empty!34033 () Bool)

(assert (=> b!1285822 (= e!734483 tp_is_empty!34033)))

(declare-fun b!1285823 () Bool)

(declare-fun res!854279 () Bool)

(assert (=> b!1285823 (=> (not res!854279) (not e!734481))))

(declare-fun minValue!1387 () V!50481)

(declare-fun zeroValue!1387 () V!50481)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22044 0))(
  ( (tuple2!22045 (_1!11032 (_ BitVec 64)) (_2!11032 V!50481)) )
))
(declare-datatypes ((List!29254 0))(
  ( (Nil!29251) (Cons!29250 (h!30459 tuple2!22044) (t!42805 List!29254)) )
))
(declare-datatypes ((ListLongMap!19713 0))(
  ( (ListLongMap!19714 (toList!9872 List!29254)) )
))
(declare-fun contains!7927 (ListLongMap!19713 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4888 (array!85077 array!85075 (_ BitVec 32) (_ BitVec 32) V!50481 V!50481 (_ BitVec 32) Int) ListLongMap!19713)

(assert (=> b!1285823 (= res!854279 (contains!7927 (getCurrentListMap!4888 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1285824 () Bool)

(assert (=> b!1285824 (= e!734481 false)))

(declare-fun lt!576894 () Bool)

(declare-fun +!4281 (ListLongMap!19713 tuple2!22044) ListLongMap!19713)

(declare-fun getCurrentListMapNoExtraKeys!5992 (array!85077 array!85075 (_ BitVec 32) (_ BitVec 32) V!50481 V!50481 (_ BitVec 32) Int) ListLongMap!19713)

(assert (=> b!1285824 (= lt!576894 (contains!7927 (+!4281 (getCurrentListMapNoExtraKeys!5992 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22045 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun b!1285825 () Bool)

(declare-fun res!854283 () Bool)

(assert (=> b!1285825 (=> (not res!854283) (not e!734481))))

(declare-datatypes ((List!29255 0))(
  ( (Nil!29252) (Cons!29251 (h!30460 (_ BitVec 64)) (t!42806 List!29255)) )
))
(declare-fun arrayNoDuplicates!0 (array!85077 (_ BitVec 32) List!29255) Bool)

(assert (=> b!1285825 (= res!854283 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29252))))

(declare-fun b!1285826 () Bool)

(declare-fun res!854285 () Bool)

(assert (=> b!1285826 (=> (not res!854285) (not e!734481))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85077 (_ BitVec 32)) Bool)

(assert (=> b!1285826 (= res!854285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1285827 () Bool)

(declare-fun e!734484 () Bool)

(assert (=> b!1285827 (= e!734484 tp_is_empty!34033)))

(declare-fun b!1285828 () Bool)

(declare-fun res!854282 () Bool)

(assert (=> b!1285828 (=> (not res!854282) (not e!734481))))

(assert (=> b!1285828 (= res!854282 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41587 _keys!1741))))))

(declare-fun mapNonEmpty!52607 () Bool)

(declare-fun mapRes!52607 () Bool)

(declare-fun tp!100295 () Bool)

(assert (=> mapNonEmpty!52607 (= mapRes!52607 (and tp!100295 e!734483))))

(declare-fun mapKey!52607 () (_ BitVec 32))

(declare-fun mapValue!52607 () ValueCell!16118)

(declare-fun mapRest!52607 () (Array (_ BitVec 32) ValueCell!16118))

(assert (=> mapNonEmpty!52607 (= (arr!41035 _values!1445) (store mapRest!52607 mapKey!52607 mapValue!52607))))

(declare-fun mapIsEmpty!52607 () Bool)

(assert (=> mapIsEmpty!52607 mapRes!52607))

(declare-fun b!1285830 () Bool)

(declare-fun e!734482 () Bool)

(assert (=> b!1285830 (= e!734482 (and e!734484 mapRes!52607))))

(declare-fun condMapEmpty!52607 () Bool)

(declare-fun mapDefault!52607 () ValueCell!16118)

