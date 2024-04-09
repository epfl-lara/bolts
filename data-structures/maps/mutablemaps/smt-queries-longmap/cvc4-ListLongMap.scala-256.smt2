; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4220 () Bool)

(assert start!4220)

(declare-fun b_free!1127 () Bool)

(declare-fun b_next!1127 () Bool)

(assert (=> start!4220 (= b_free!1127 (not b_next!1127))))

(declare-fun tp!4801 () Bool)

(declare-fun b_and!1939 () Bool)

(assert (=> start!4220 (= tp!4801 b_and!1939)))

(declare-fun b!32306 () Bool)

(declare-fun res!19627 () Bool)

(declare-fun e!20535 () Bool)

(assert (=> b!32306 (=> (not res!19627) (not e!20535))))

(declare-datatypes ((array!2167 0))(
  ( (array!2168 (arr!1037 (Array (_ BitVec 32) (_ BitVec 64))) (size!1138 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2167)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2167 (_ BitVec 32)) Bool)

(assert (=> b!32306 (= res!19627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!32307 () Bool)

(declare-fun e!20533 () Bool)

(declare-fun tp_is_empty!1481 () Bool)

(assert (=> b!32307 (= e!20533 tp_is_empty!1481)))

(declare-fun b!32308 () Bool)

(declare-fun e!20532 () Bool)

(assert (=> b!32308 (= e!20532 tp_is_empty!1481)))

(declare-fun mapIsEmpty!1750 () Bool)

(declare-fun mapRes!1750 () Bool)

(assert (=> mapIsEmpty!1750 mapRes!1750))

(declare-fun mapNonEmpty!1750 () Bool)

(declare-fun tp!4800 () Bool)

(assert (=> mapNonEmpty!1750 (= mapRes!1750 (and tp!4800 e!20532))))

(declare-datatypes ((V!1799 0))(
  ( (V!1800 (val!767 Int)) )
))
(declare-datatypes ((ValueCell!541 0))(
  ( (ValueCellFull!541 (v!1856 V!1799)) (EmptyCell!541) )
))
(declare-datatypes ((array!2169 0))(
  ( (array!2170 (arr!1038 (Array (_ BitVec 32) ValueCell!541)) (size!1139 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2169)

(declare-fun mapRest!1750 () (Array (_ BitVec 32) ValueCell!541))

(declare-fun mapValue!1750 () ValueCell!541)

(declare-fun mapKey!1750 () (_ BitVec 32))

(assert (=> mapNonEmpty!1750 (= (arr!1038 _values!1501) (store mapRest!1750 mapKey!1750 mapValue!1750))))

(declare-fun b!32309 () Bool)

(declare-fun res!19624 () Bool)

(assert (=> b!32309 (=> (not res!19624) (not e!20535))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!32309 (= res!19624 (and (= (size!1139 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1138 _keys!1833) (size!1139 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!32310 () Bool)

(declare-fun res!19625 () Bool)

(assert (=> b!32310 (=> (not res!19625) (not e!20535))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!2167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!32310 (= res!19625 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!32311 () Bool)

(declare-fun lt!11661 () (_ BitVec 32))

(assert (=> b!32311 (= e!20535 (or (bvslt lt!11661 #b00000000000000000000000000000000) (bvsge lt!11661 (size!1138 _keys!1833))))))

(declare-fun arrayScanForKey!0 (array!2167 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!32311 (= lt!11661 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!32313 () Bool)

(declare-fun e!20536 () Bool)

(assert (=> b!32313 (= e!20536 (and e!20533 mapRes!1750))))

(declare-fun condMapEmpty!1750 () Bool)

(declare-fun mapDefault!1750 () ValueCell!541)

