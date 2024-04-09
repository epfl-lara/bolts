; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!956 () Bool)

(assert start!956)

(declare-fun b_free!329 () Bool)

(declare-fun b_next!329 () Bool)

(assert (=> start!956 (= b_free!329 (not b_next!329))))

(declare-fun tp!1219 () Bool)

(declare-fun b_and!477 () Bool)

(assert (=> start!956 (= tp!1219 b_and!477)))

(declare-fun mapNonEmpty!584 () Bool)

(declare-fun mapRes!584 () Bool)

(declare-fun tp!1220 () Bool)

(declare-fun e!4642 () Bool)

(assert (=> mapNonEmpty!584 (= mapRes!584 (and tp!1220 e!4642))))

(declare-datatypes ((V!719 0))(
  ( (V!720 (val!209 Int)) )
))
(declare-datatypes ((ValueCell!187 0))(
  ( (ValueCellFull!187 (v!1301 V!719)) (EmptyCell!187) )
))
(declare-fun mapRest!584 () (Array (_ BitVec 32) ValueCell!187))

(declare-datatypes ((array!739 0))(
  ( (array!740 (arr!357 (Array (_ BitVec 32) ValueCell!187)) (size!419 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!739)

(declare-fun mapValue!584 () ValueCell!187)

(declare-fun mapKey!584 () (_ BitVec 32))

(assert (=> mapNonEmpty!584 (= (arr!357 _values!1492) (store mapRest!584 mapKey!584 mapValue!584))))

(declare-fun b!8185 () Bool)

(declare-fun e!4641 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!8185 (= e!4641 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!8186 () Bool)

(declare-fun e!4638 () Bool)

(declare-fun tp_is_empty!407 () Bool)

(assert (=> b!8186 (= e!4638 tp_is_empty!407)))

(declare-fun b!8187 () Bool)

(declare-fun res!7836 () Bool)

(declare-fun e!4637 () Bool)

(assert (=> b!8187 (=> (not res!7836) (not e!4637))))

(declare-datatypes ((array!741 0))(
  ( (array!742 (arr!358 (Array (_ BitVec 32) (_ BitVec 64))) (size!420 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!741)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!741 (_ BitVec 32)) Bool)

(assert (=> b!8187 (= res!7836 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!8188 () Bool)

(declare-fun res!7839 () Bool)

(assert (=> b!8188 (=> (not res!7839) (not e!4637))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!8188 (= res!7839 (validKeyInArray!0 k!1278))))

(declare-fun mapIsEmpty!584 () Bool)

(assert (=> mapIsEmpty!584 mapRes!584))

(declare-fun b!8189 () Bool)

(declare-fun arrayContainsKey!0 (array!741 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!8189 (= e!4641 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!8190 () Bool)

(declare-fun e!4643 () Bool)

(assert (=> b!8190 (= e!4643 (= (size!420 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250)))))

(declare-fun lt!1649 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!741 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!8190 (= lt!1649 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!8191 () Bool)

(assert (=> b!8191 (= e!4642 tp_is_empty!407)))

(declare-fun b!8192 () Bool)

(assert (=> b!8192 (= e!4637 (not e!4643))))

(declare-fun res!7834 () Bool)

(assert (=> b!8192 (=> res!7834 e!4643)))

(assert (=> b!8192 (= res!7834 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(assert (=> b!8192 e!4641))

(declare-fun c!575 () Bool)

(assert (=> b!8192 (= c!575 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((Unit!151 0))(
  ( (Unit!152) )
))
(declare-fun lt!1650 () Unit!151)

(declare-fun minValue!1434 () V!719)

(declare-fun zeroValue!1434 () V!719)

(declare-fun lemmaKeyInListMapIsInArray!56 (array!741 array!739 (_ BitVec 32) (_ BitVec 32) V!719 V!719 (_ BitVec 64) Int) Unit!151)

(assert (=> b!8192 (= lt!1650 (lemmaKeyInListMapIsInArray!56 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun res!7837 () Bool)

(assert (=> start!956 (=> (not res!7837) (not e!4637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!956 (= res!7837 (validMask!0 mask!2250))))

(assert (=> start!956 e!4637))

(assert (=> start!956 tp!1219))

(assert (=> start!956 true))

(declare-fun e!4639 () Bool)

(declare-fun array_inv!263 (array!739) Bool)

(assert (=> start!956 (and (array_inv!263 _values!1492) e!4639)))

(assert (=> start!956 tp_is_empty!407))

(declare-fun array_inv!264 (array!741) Bool)

(assert (=> start!956 (array_inv!264 _keys!1806)))

(declare-fun b!8193 () Bool)

(declare-fun res!7835 () Bool)

(assert (=> b!8193 (=> (not res!7835) (not e!4637))))

(declare-datatypes ((tuple2!222 0))(
  ( (tuple2!223 (_1!111 (_ BitVec 64)) (_2!111 V!719)) )
))
(declare-datatypes ((List!246 0))(
  ( (Nil!243) (Cons!242 (h!808 tuple2!222) (t!2383 List!246)) )
))
(declare-datatypes ((ListLongMap!227 0))(
  ( (ListLongMap!228 (toList!129 List!246)) )
))
(declare-fun contains!104 (ListLongMap!227 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!88 (array!741 array!739 (_ BitVec 32) (_ BitVec 32) V!719 V!719 (_ BitVec 32) Int) ListLongMap!227)

(assert (=> b!8193 (= res!7835 (contains!104 (getCurrentListMap!88 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!8194 () Bool)

(assert (=> b!8194 (= e!4639 (and e!4638 mapRes!584))))

(declare-fun condMapEmpty!584 () Bool)

(declare-fun mapDefault!584 () ValueCell!187)

