; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108600 () Bool)

(assert start!108600)

(declare-fun b_free!28111 () Bool)

(declare-fun b_next!28111 () Bool)

(assert (=> start!108600 (= b_free!28111 (not b_next!28111))))

(declare-fun tp!99444 () Bool)

(declare-fun b_and!46181 () Bool)

(assert (=> start!108600 (= tp!99444 b_and!46181)))

(declare-fun b!1281487 () Bool)

(declare-fun res!851366 () Bool)

(declare-fun e!732193 () Bool)

(assert (=> b!1281487 (=> (not res!851366) (not e!732193))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84525 0))(
  ( (array!84526 (arr!40762 (Array (_ BitVec 32) (_ BitVec 64))) (size!41313 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84525)

(declare-datatypes ((V!50105 0))(
  ( (V!50106 (val!16950 Int)) )
))
(declare-datatypes ((ValueCell!15977 0))(
  ( (ValueCellFull!15977 (v!19548 V!50105)) (EmptyCell!15977) )
))
(declare-datatypes ((array!84527 0))(
  ( (array!84528 (arr!40763 (Array (_ BitVec 32) ValueCell!15977)) (size!41314 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84527)

(assert (=> b!1281487 (= res!851366 (and (= (size!41314 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41313 _keys!1741) (size!41314 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!52178 () Bool)

(declare-fun mapRes!52178 () Bool)

(declare-fun tp!99443 () Bool)

(declare-fun e!732192 () Bool)

(assert (=> mapNonEmpty!52178 (= mapRes!52178 (and tp!99443 e!732192))))

(declare-fun mapRest!52178 () (Array (_ BitVec 32) ValueCell!15977))

(declare-fun mapKey!52178 () (_ BitVec 32))

(declare-fun mapValue!52178 () ValueCell!15977)

(assert (=> mapNonEmpty!52178 (= (arr!40763 _values!1445) (store mapRest!52178 mapKey!52178 mapValue!52178))))

(declare-fun res!851369 () Bool)

(assert (=> start!108600 (=> (not res!851369) (not e!732193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108600 (= res!851369 (validMask!0 mask!2175))))

(assert (=> start!108600 e!732193))

(declare-fun tp_is_empty!33751 () Bool)

(assert (=> start!108600 tp_is_empty!33751))

(assert (=> start!108600 true))

(declare-fun e!732195 () Bool)

(declare-fun array_inv!30915 (array!84527) Bool)

(assert (=> start!108600 (and (array_inv!30915 _values!1445) e!732195)))

(declare-fun array_inv!30916 (array!84525) Bool)

(assert (=> start!108600 (array_inv!30916 _keys!1741)))

(assert (=> start!108600 tp!99444))

(declare-fun b!1281488 () Bool)

(declare-fun e!732194 () Bool)

(assert (=> b!1281488 (= e!732194 (bvslt (size!41313 _keys!1741) #b01111111111111111111111111111111))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!84525 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1281488 (arrayContainsKey!0 _keys!1741 k!1205 (bvadd #b00000000000000000000000000000001 from!2144))))

(declare-fun zeroValue!1387 () V!50105)

(declare-fun minValue!1387 () V!50105)

(declare-datatypes ((Unit!42385 0))(
  ( (Unit!42386) )
))
(declare-fun lt!576195 () Unit!42385)

(declare-fun defaultEntry!1448 () Int)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!638 (array!84525 array!84527 (_ BitVec 32) (_ BitVec 32) V!50105 V!50105 (_ BitVec 64) (_ BitVec 32) Int) Unit!42385)

(assert (=> b!1281488 (= lt!576195 (lemmaListMapContainsThenArrayContainsFrom!638 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448))))

(declare-fun mapIsEmpty!52178 () Bool)

(assert (=> mapIsEmpty!52178 mapRes!52178))

(declare-fun b!1281489 () Bool)

(declare-fun e!732191 () Bool)

(assert (=> b!1281489 (= e!732191 tp_is_empty!33751)))

(declare-fun b!1281490 () Bool)

(declare-fun res!851367 () Bool)

(assert (=> b!1281490 (=> (not res!851367) (not e!732193))))

(declare-datatypes ((tuple2!21850 0))(
  ( (tuple2!21851 (_1!10935 (_ BitVec 64)) (_2!10935 V!50105)) )
))
(declare-datatypes ((List!29058 0))(
  ( (Nil!29055) (Cons!29054 (h!30263 tuple2!21850) (t!42605 List!29058)) )
))
(declare-datatypes ((ListLongMap!19519 0))(
  ( (ListLongMap!19520 (toList!9775 List!29058)) )
))
(declare-fun contains!7828 (ListLongMap!19519 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4795 (array!84525 array!84527 (_ BitVec 32) (_ BitVec 32) V!50105 V!50105 (_ BitVec 32) Int) ListLongMap!19519)

(assert (=> b!1281490 (= res!851367 (contains!7828 (getCurrentListMap!4795 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1281491 () Bool)

(declare-fun res!851362 () Bool)

(assert (=> b!1281491 (=> (not res!851362) (not e!732193))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84525 (_ BitVec 32)) Bool)

(assert (=> b!1281491 (= res!851362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1281492 () Bool)

(assert (=> b!1281492 (= e!732195 (and e!732191 mapRes!52178))))

(declare-fun condMapEmpty!52178 () Bool)

(declare-fun mapDefault!52178 () ValueCell!15977)

