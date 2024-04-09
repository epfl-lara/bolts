; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109510 () Bool)

(assert start!109510)

(declare-fun b_free!28963 () Bool)

(declare-fun b_next!28963 () Bool)

(assert (=> start!109510 (= b_free!28963 (not b_next!28963))))

(declare-fun tp!102009 () Bool)

(declare-fun b_and!47063 () Bool)

(assert (=> start!109510 (= tp!102009 b_and!47063)))

(declare-fun b!1296484 () Bool)

(declare-fun e!739671 () Bool)

(assert (=> b!1296484 (= e!739671 false)))

(declare-datatypes ((V!51241 0))(
  ( (V!51242 (val!17376 Int)) )
))
(declare-fun minValue!1387 () V!51241)

(declare-fun zeroValue!1387 () V!51241)

(declare-datatypes ((ValueCell!16403 0))(
  ( (ValueCellFull!16403 (v!19977 V!51241)) (EmptyCell!16403) )
))
(declare-datatypes ((array!86185 0))(
  ( (array!86186 (arr!41589 (Array (_ BitVec 32) ValueCell!16403)) (size!42140 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86185)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86187 0))(
  ( (array!86188 (arr!41590 (Array (_ BitVec 32) (_ BitVec 64))) (size!42141 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86187)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!580435 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22534 0))(
  ( (tuple2!22535 (_1!11277 (_ BitVec 64)) (_2!11277 V!51241)) )
))
(declare-datatypes ((List!29699 0))(
  ( (Nil!29696) (Cons!29695 (h!30904 tuple2!22534) (t!43270 List!29699)) )
))
(declare-datatypes ((ListLongMap!20203 0))(
  ( (ListLongMap!20204 (toList!10117 List!29699)) )
))
(declare-fun contains!8171 (ListLongMap!20203 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5091 (array!86187 array!86185 (_ BitVec 32) (_ BitVec 32) V!51241 V!51241 (_ BitVec 32) Int) ListLongMap!20203)

(assert (=> b!1296484 (= lt!580435 (contains!8171 (getCurrentListMap!5091 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1296485 () Bool)

(declare-fun res!861727 () Bool)

(assert (=> b!1296485 (=> (not res!861727) (not e!739671))))

(assert (=> b!1296485 (= res!861727 (and (= (size!42140 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42141 _keys!1741) (size!42140 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1296486 () Bool)

(declare-fun e!739670 () Bool)

(declare-fun tp_is_empty!34603 () Bool)

(assert (=> b!1296486 (= e!739670 tp_is_empty!34603)))

(declare-fun b!1296487 () Bool)

(declare-fun res!861728 () Bool)

(assert (=> b!1296487 (=> (not res!861728) (not e!739671))))

(declare-datatypes ((List!29700 0))(
  ( (Nil!29697) (Cons!29696 (h!30905 (_ BitVec 64)) (t!43271 List!29700)) )
))
(declare-fun arrayNoDuplicates!0 (array!86187 (_ BitVec 32) List!29700) Bool)

(assert (=> b!1296487 (= res!861728 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29697))))

(declare-fun mapNonEmpty!53465 () Bool)

(declare-fun mapRes!53465 () Bool)

(declare-fun tp!102008 () Bool)

(assert (=> mapNonEmpty!53465 (= mapRes!53465 (and tp!102008 e!739670))))

(declare-fun mapValue!53465 () ValueCell!16403)

(declare-fun mapKey!53465 () (_ BitVec 32))

(declare-fun mapRest!53465 () (Array (_ BitVec 32) ValueCell!16403))

(assert (=> mapNonEmpty!53465 (= (arr!41589 _values!1445) (store mapRest!53465 mapKey!53465 mapValue!53465))))

(declare-fun b!1296488 () Bool)

(declare-fun res!861729 () Bool)

(assert (=> b!1296488 (=> (not res!861729) (not e!739671))))

(assert (=> b!1296488 (= res!861729 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42141 _keys!1741))))))

(declare-fun b!1296489 () Bool)

(declare-fun e!739669 () Bool)

(assert (=> b!1296489 (= e!739669 tp_is_empty!34603)))

(declare-fun res!861726 () Bool)

(assert (=> start!109510 (=> (not res!861726) (not e!739671))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109510 (= res!861726 (validMask!0 mask!2175))))

(assert (=> start!109510 e!739671))

(assert (=> start!109510 tp_is_empty!34603))

(assert (=> start!109510 true))

(declare-fun e!739672 () Bool)

(declare-fun array_inv!31475 (array!86185) Bool)

(assert (=> start!109510 (and (array_inv!31475 _values!1445) e!739672)))

(declare-fun array_inv!31476 (array!86187) Bool)

(assert (=> start!109510 (array_inv!31476 _keys!1741)))

(assert (=> start!109510 tp!102009))

(declare-fun b!1296490 () Bool)

(declare-fun res!861725 () Bool)

(assert (=> b!1296490 (=> (not res!861725) (not e!739671))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86187 (_ BitVec 32)) Bool)

(assert (=> b!1296490 (= res!861725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!53465 () Bool)

(assert (=> mapIsEmpty!53465 mapRes!53465))

(declare-fun b!1296491 () Bool)

(assert (=> b!1296491 (= e!739672 (and e!739669 mapRes!53465))))

(declare-fun condMapEmpty!53465 () Bool)

(declare-fun mapDefault!53465 () ValueCell!16403)

