; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110986 () Bool)

(assert start!110986)

(declare-fun b_free!29785 () Bool)

(declare-fun b_next!29785 () Bool)

(assert (=> start!110986 (= b_free!29785 (not b_next!29785))))

(declare-fun tp!104677 () Bool)

(declare-fun b_and!48003 () Bool)

(assert (=> start!110986 (= tp!104677 b_and!48003)))

(declare-fun mapNonEmpty!54901 () Bool)

(declare-fun mapRes!54901 () Bool)

(declare-fun tp!104678 () Bool)

(declare-fun e!749224 () Bool)

(assert (=> mapNonEmpty!54901 (= mapRes!54901 (and tp!104678 e!749224))))

(declare-datatypes ((V!52457 0))(
  ( (V!52458 (val!17832 Int)) )
))
(declare-datatypes ((ValueCell!16859 0))(
  ( (ValueCellFull!16859 (v!20457 V!52457)) (EmptyCell!16859) )
))
(declare-fun mapRest!54901 () (Array (_ BitVec 32) ValueCell!16859))

(declare-fun mapValue!54901 () ValueCell!16859)

(declare-datatypes ((array!87973 0))(
  ( (array!87974 (arr!42462 (Array (_ BitVec 32) ValueCell!16859)) (size!43013 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87973)

(declare-fun mapKey!54901 () (_ BitVec 32))

(assert (=> mapNonEmpty!54901 (= (arr!42462 _values!1354) (store mapRest!54901 mapKey!54901 mapValue!54901))))

(declare-fun b!1313458 () Bool)

(declare-fun e!749222 () Bool)

(declare-fun e!749221 () Bool)

(assert (=> b!1313458 (= e!749222 (and e!749221 mapRes!54901))))

(declare-fun condMapEmpty!54901 () Bool)

(declare-fun mapDefault!54901 () ValueCell!16859)

