; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109564 () Bool)

(assert start!109564)

(declare-fun b_free!29017 () Bool)

(declare-fun b_next!29017 () Bool)

(assert (=> start!109564 (= b_free!29017 (not b_next!29017))))

(declare-fun tp!102170 () Bool)

(declare-fun b_and!47117 () Bool)

(assert (=> start!109564 (= tp!102170 b_and!47117)))

(declare-fun b!1297141 () Bool)

(declare-fun res!862143 () Bool)

(declare-fun e!740077 () Bool)

(assert (=> b!1297141 (=> (not res!862143) (not e!740077))))

(declare-datatypes ((array!86291 0))(
  ( (array!86292 (arr!41642 (Array (_ BitVec 32) (_ BitVec 64))) (size!42193 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86291)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86291 (_ BitVec 32)) Bool)

(assert (=> b!1297141 (= res!862143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1297142 () Bool)

(declare-fun res!862140 () Bool)

(assert (=> b!1297142 (=> (not res!862140) (not e!740077))))

(declare-datatypes ((List!29738 0))(
  ( (Nil!29735) (Cons!29734 (h!30943 (_ BitVec 64)) (t!43309 List!29738)) )
))
(declare-fun arrayNoDuplicates!0 (array!86291 (_ BitVec 32) List!29738) Bool)

(assert (=> b!1297142 (= res!862140 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29735))))

(declare-fun mapNonEmpty!53546 () Bool)

(declare-fun mapRes!53546 () Bool)

(declare-fun tp!102171 () Bool)

(declare-fun e!740076 () Bool)

(assert (=> mapNonEmpty!53546 (= mapRes!53546 (and tp!102171 e!740076))))

(declare-fun mapKey!53546 () (_ BitVec 32))

(declare-datatypes ((V!51313 0))(
  ( (V!51314 (val!17403 Int)) )
))
(declare-datatypes ((ValueCell!16430 0))(
  ( (ValueCellFull!16430 (v!20004 V!51313)) (EmptyCell!16430) )
))
(declare-fun mapRest!53546 () (Array (_ BitVec 32) ValueCell!16430))

(declare-datatypes ((array!86293 0))(
  ( (array!86294 (arr!41643 (Array (_ BitVec 32) ValueCell!16430)) (size!42194 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86293)

(declare-fun mapValue!53546 () ValueCell!16430)

(assert (=> mapNonEmpty!53546 (= (arr!41643 _values!1445) (store mapRest!53546 mapKey!53546 mapValue!53546))))

(declare-fun b!1297143 () Bool)

(declare-fun e!740074 () Bool)

(declare-fun tp_is_empty!34657 () Bool)

(assert (=> b!1297143 (= e!740074 tp_is_empty!34657)))

(declare-fun b!1297144 () Bool)

(assert (=> b!1297144 (= e!740077 false)))

(declare-fun minValue!1387 () V!51313)

(declare-fun zeroValue!1387 () V!51313)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!580507 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22574 0))(
  ( (tuple2!22575 (_1!11297 (_ BitVec 64)) (_2!11297 V!51313)) )
))
(declare-datatypes ((List!29739 0))(
  ( (Nil!29736) (Cons!29735 (h!30944 tuple2!22574) (t!43310 List!29739)) )
))
(declare-datatypes ((ListLongMap!20243 0))(
  ( (ListLongMap!20244 (toList!10137 List!29739)) )
))
(declare-fun contains!8191 (ListLongMap!20243 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5111 (array!86291 array!86293 (_ BitVec 32) (_ BitVec 32) V!51313 V!51313 (_ BitVec 32) Int) ListLongMap!20243)

(assert (=> b!1297144 (= lt!580507 (contains!8191 (getCurrentListMap!5111 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1297145 () Bool)

(declare-fun e!740075 () Bool)

(assert (=> b!1297145 (= e!740075 (and e!740074 mapRes!53546))))

(declare-fun condMapEmpty!53546 () Bool)

(declare-fun mapDefault!53546 () ValueCell!16430)

