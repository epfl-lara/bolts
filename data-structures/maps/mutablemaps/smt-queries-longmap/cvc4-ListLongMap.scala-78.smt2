; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1048 () Bool)

(assert start!1048)

(declare-fun b_free!377 () Bool)

(declare-fun b_next!377 () Bool)

(assert (=> start!1048 (= b_free!377 (not b_next!377))))

(declare-fun tp!1370 () Bool)

(declare-fun b_and!529 () Bool)

(assert (=> start!1048 (= tp!1370 b_and!529)))

(declare-fun b!9311 () Bool)

(declare-fun e!5319 () Bool)

(declare-datatypes ((array!833 0))(
  ( (array!834 (arr!402 (Array (_ BitVec 32) (_ BitVec 64))) (size!464 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!833)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!833 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!9311 (= e!5319 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!9312 () Bool)

(declare-fun e!5318 () Bool)

(declare-fun tp_is_empty!455 () Bool)

(assert (=> b!9312 (= e!5318 tp_is_empty!455)))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun b!9313 () Bool)

(declare-fun lt!2025 () (_ BitVec 32))

(declare-fun e!5320 () Bool)

(declare-datatypes ((SeekEntryResult!39 0))(
  ( (MissingZero!39 (index!2275 (_ BitVec 32))) (Found!39 (index!2276 (_ BitVec 32))) (Intermediate!39 (undefined!851 Bool) (index!2277 (_ BitVec 32)) (x!2783 (_ BitVec 32))) (Undefined!39) (MissingVacant!39 (index!2278 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!833 (_ BitVec 32)) SeekEntryResult!39)

(assert (=> b!9313 (= e!5320 (= (seekEntryOrOpen!0 k!1278 _keys!1806 mask!2250) (Found!39 lt!2025)))))

(declare-fun b!9314 () Bool)

(declare-fun res!8454 () Bool)

(declare-fun e!5323 () Bool)

(assert (=> b!9314 (=> (not res!8454) (not e!5323))))

(declare-fun defaultEntry!1495 () Int)

(declare-datatypes ((V!783 0))(
  ( (V!784 (val!233 Int)) )
))
(declare-datatypes ((ValueCell!211 0))(
  ( (ValueCellFull!211 (v!1327 V!783)) (EmptyCell!211) )
))
(declare-datatypes ((array!835 0))(
  ( (array!836 (arr!403 (Array (_ BitVec 32) ValueCell!211)) (size!465 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!835)

(declare-fun minValue!1434 () V!783)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!783)

(declare-datatypes ((tuple2!250 0))(
  ( (tuple2!251 (_1!125 (_ BitVec 64)) (_2!125 V!783)) )
))
(declare-datatypes ((List!276 0))(
  ( (Nil!273) (Cons!272 (h!838 tuple2!250) (t!2417 List!276)) )
))
(declare-datatypes ((ListLongMap!255 0))(
  ( (ListLongMap!256 (toList!143 List!276)) )
))
(declare-fun contains!120 (ListLongMap!255 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!102 (array!833 array!835 (_ BitVec 32) (_ BitVec 32) V!783 V!783 (_ BitVec 32) Int) ListLongMap!255)

(assert (=> b!9314 (= res!8454 (contains!120 (getCurrentListMap!102 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!9315 () Bool)

(declare-fun e!5324 () Bool)

(declare-fun mapRes!662 () Bool)

(assert (=> b!9315 (= e!5324 (and e!5318 mapRes!662))))

(declare-fun condMapEmpty!662 () Bool)

(declare-fun mapDefault!662 () ValueCell!211)

