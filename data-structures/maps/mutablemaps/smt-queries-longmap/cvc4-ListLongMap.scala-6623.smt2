; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83742 () Bool)

(assert start!83742)

(declare-fun b!977386 () Bool)

(declare-fun e!551053 () Bool)

(declare-fun tp_is_empty!22517 () Bool)

(assert (=> b!977386 (= e!551053 tp_is_empty!22517)))

(declare-fun b!977387 () Bool)

(declare-fun res!654241 () Bool)

(declare-fun e!551052 () Bool)

(assert (=> b!977387 (=> (not res!654241) (not e!551052))))

(declare-datatypes ((array!61051 0))(
  ( (array!61052 (arr!29379 (Array (_ BitVec 32) (_ BitVec 64))) (size!29859 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61051)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61051 (_ BitVec 32)) Bool)

(assert (=> b!977387 (= res!654241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!977388 () Bool)

(declare-fun e!551050 () Bool)

(assert (=> b!977388 (= e!551050 tp_is_empty!22517)))

(declare-fun b!977389 () Bool)

(declare-fun e!551054 () Bool)

(declare-fun mapRes!35804 () Bool)

(assert (=> b!977389 (= e!551054 (and e!551050 mapRes!35804))))

(declare-fun condMapEmpty!35804 () Bool)

(declare-datatypes ((V!35005 0))(
  ( (V!35006 (val!11309 Int)) )
))
(declare-datatypes ((ValueCell!10777 0))(
  ( (ValueCellFull!10777 (v!13871 V!35005)) (EmptyCell!10777) )
))
(declare-datatypes ((array!61053 0))(
  ( (array!61054 (arr!29380 (Array (_ BitVec 32) ValueCell!10777)) (size!29860 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61053)

(declare-fun mapDefault!35804 () ValueCell!10777)

