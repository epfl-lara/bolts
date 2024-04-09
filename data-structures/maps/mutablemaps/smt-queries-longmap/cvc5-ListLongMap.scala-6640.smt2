; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83840 () Bool)

(assert start!83840)

(declare-fun b_free!19621 () Bool)

(declare-fun b_next!19621 () Bool)

(assert (=> start!83840 (= b_free!19621 (not b_next!19621))))

(declare-fun tp!68306 () Bool)

(declare-fun b_and!31349 () Bool)

(assert (=> start!83840 (= tp!68306 b_and!31349)))

(declare-fun res!655120 () Bool)

(declare-fun e!551789 () Bool)

(assert (=> start!83840 (=> (not res!655120) (not e!551789))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83840 (= res!655120 (validMask!0 mask!1948))))

(assert (=> start!83840 e!551789))

(assert (=> start!83840 true))

(declare-fun tp_is_empty!22615 () Bool)

(assert (=> start!83840 tp_is_empty!22615))

(declare-datatypes ((V!35137 0))(
  ( (V!35138 (val!11358 Int)) )
))
(declare-datatypes ((ValueCell!10826 0))(
  ( (ValueCellFull!10826 (v!13920 V!35137)) (EmptyCell!10826) )
))
(declare-datatypes ((array!61245 0))(
  ( (array!61246 (arr!29476 (Array (_ BitVec 32) ValueCell!10826)) (size!29956 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61245)

(declare-fun e!551787 () Bool)

(declare-fun array_inv!22687 (array!61245) Bool)

(assert (=> start!83840 (and (array_inv!22687 _values!1278) e!551787)))

(assert (=> start!83840 tp!68306))

(declare-datatypes ((array!61247 0))(
  ( (array!61248 (arr!29477 (Array (_ BitVec 32) (_ BitVec 64))) (size!29957 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61247)

(declare-fun array_inv!22688 (array!61247) Bool)

(assert (=> start!83840 (array_inv!22688 _keys!1544)))

(declare-fun b!978761 () Bool)

(declare-fun e!551788 () Bool)

(declare-fun mapRes!35951 () Bool)

(assert (=> b!978761 (= e!551787 (and e!551788 mapRes!35951))))

(declare-fun condMapEmpty!35951 () Bool)

(declare-fun mapDefault!35951 () ValueCell!10826)

