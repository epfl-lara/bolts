; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83702 () Bool)

(assert start!83702)

(declare-fun b!977079 () Bool)

(declare-fun e!550808 () Bool)

(declare-fun tp_is_empty!22489 () Bool)

(assert (=> b!977079 (= e!550808 tp_is_empty!22489)))

(declare-fun mapIsEmpty!35759 () Bool)

(declare-fun mapRes!35759 () Bool)

(assert (=> mapIsEmpty!35759 mapRes!35759))

(declare-fun b!977080 () Bool)

(declare-fun res!654074 () Bool)

(declare-fun e!550804 () Bool)

(assert (=> b!977080 (=> (not res!654074) (not e!550804))))

(declare-datatypes ((array!60995 0))(
  ( (array!60996 (arr!29352 (Array (_ BitVec 32) (_ BitVec 64))) (size!29832 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!60995)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60995 (_ BitVec 32)) Bool)

(assert (=> b!977080 (= res!654074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!35759 () Bool)

(declare-fun tp!68012 () Bool)

(assert (=> mapNonEmpty!35759 (= mapRes!35759 (and tp!68012 e!550808))))

(declare-fun mapKey!35759 () (_ BitVec 32))

(declare-datatypes ((V!34969 0))(
  ( (V!34970 (val!11295 Int)) )
))
(declare-datatypes ((ValueCell!10763 0))(
  ( (ValueCellFull!10763 (v!13856 V!34969)) (EmptyCell!10763) )
))
(declare-datatypes ((array!60997 0))(
  ( (array!60998 (arr!29353 (Array (_ BitVec 32) ValueCell!10763)) (size!29833 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!60997)

(declare-fun mapRest!35759 () (Array (_ BitVec 32) ValueCell!10763))

(declare-fun mapValue!35759 () ValueCell!10763)

(assert (=> mapNonEmpty!35759 (= (arr!29353 _values!1278) (store mapRest!35759 mapKey!35759 mapValue!35759))))

(declare-fun b!977081 () Bool)

(declare-fun e!550809 () Bool)

(assert (=> b!977081 (= e!550809 tp_is_empty!22489)))

(declare-fun b!977082 () Bool)

(declare-fun res!654078 () Bool)

(assert (=> b!977082 (=> (not res!654078) (not e!550804))))

(assert (=> b!977082 (= res!654078 (and (bvsle #b00000000000000000000000000000000 (size!29832 _keys!1544)) (bvslt (size!29832 _keys!1544) #b01111111111111111111111111111111)))))

(declare-fun b!977083 () Bool)

(declare-fun e!550805 () Bool)

(assert (=> b!977083 (= e!550804 e!550805)))

(declare-fun res!654076 () Bool)

(assert (=> b!977083 (=> res!654076 e!550805)))

(declare-datatypes ((List!20491 0))(
  ( (Nil!20488) (Cons!20487 (h!21649 (_ BitVec 64)) (t!29014 List!20491)) )
))
(declare-fun contains!5713 (List!20491 (_ BitVec 64)) Bool)

(assert (=> b!977083 (= res!654076 (contains!5713 Nil!20488 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!654075 () Bool)

(assert (=> start!83702 (=> (not res!654075) (not e!550804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83702 (= res!654075 (validMask!0 mask!1948))))

(assert (=> start!83702 e!550804))

(assert (=> start!83702 true))

(declare-fun e!550807 () Bool)

(declare-fun array_inv!22597 (array!60997) Bool)

(assert (=> start!83702 (and (array_inv!22597 _values!1278) e!550807)))

(declare-fun array_inv!22598 (array!60995) Bool)

(assert (=> start!83702 (array_inv!22598 _keys!1544)))

(declare-fun b!977084 () Bool)

(assert (=> b!977084 (= e!550805 (contains!5713 Nil!20488 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!977085 () Bool)

(declare-fun res!654079 () Bool)

(assert (=> b!977085 (=> (not res!654079) (not e!550804))))

(declare-fun noDuplicate!1384 (List!20491) Bool)

(assert (=> b!977085 (= res!654079 (noDuplicate!1384 Nil!20488))))

(declare-fun b!977086 () Bool)

(assert (=> b!977086 (= e!550807 (and e!550809 mapRes!35759))))

(declare-fun condMapEmpty!35759 () Bool)

(declare-fun mapDefault!35759 () ValueCell!10763)

