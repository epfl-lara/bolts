; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83898 () Bool)

(assert start!83898)

(declare-fun b_free!19679 () Bool)

(declare-fun b_next!19679 () Bool)

(assert (=> start!83898 (= b_free!19679 (not b_next!19679))))

(declare-fun tp!68479 () Bool)

(declare-fun b_and!31465 () Bool)

(assert (=> start!83898 (= tp!68479 b_and!31465)))

(declare-fun mapIsEmpty!36038 () Bool)

(declare-fun mapRes!36038 () Bool)

(assert (=> mapIsEmpty!36038 mapRes!36038))

(declare-fun b!979776 () Bool)

(declare-fun res!655817 () Bool)

(declare-fun e!552313 () Bool)

(assert (=> b!979776 (=> (not res!655817) (not e!552313))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61357 0))(
  ( (array!61358 (arr!29532 (Array (_ BitVec 32) (_ BitVec 64))) (size!30012 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61357)

(assert (=> b!979776 (= res!655817 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30012 _keys!1544))))))

(declare-fun b!979777 () Bool)

(declare-fun e!552310 () Bool)

(declare-fun tp_is_empty!22673 () Bool)

(assert (=> b!979777 (= e!552310 tp_is_empty!22673)))

(declare-fun b!979778 () Bool)

(declare-fun e!552311 () Bool)

(declare-fun e!552312 () Bool)

(assert (=> b!979778 (= e!552311 (and e!552312 mapRes!36038))))

(declare-fun condMapEmpty!36038 () Bool)

(declare-datatypes ((V!35213 0))(
  ( (V!35214 (val!11387 Int)) )
))
(declare-datatypes ((ValueCell!10855 0))(
  ( (ValueCellFull!10855 (v!13949 V!35213)) (EmptyCell!10855) )
))
(declare-datatypes ((array!61359 0))(
  ( (array!61360 (arr!29533 (Array (_ BitVec 32) ValueCell!10855)) (size!30013 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61359)

(declare-fun mapDefault!36038 () ValueCell!10855)

