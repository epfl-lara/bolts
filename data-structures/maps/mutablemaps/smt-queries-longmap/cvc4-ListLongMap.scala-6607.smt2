; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83558 () Bool)

(assert start!83558)

(declare-fun b_free!19517 () Bool)

(declare-fun b_next!19517 () Bool)

(assert (=> start!83558 (= b_free!19517 (not b_next!19517))))

(declare-fun tp!67840 () Bool)

(declare-fun b_and!31147 () Bool)

(assert (=> start!83558 (= tp!67840 b_and!31147)))

(declare-fun b!975793 () Bool)

(declare-fun res!653350 () Bool)

(declare-fun e!549955 () Bool)

(assert (=> b!975793 (=> (not res!653350) (not e!549955))))

(declare-datatypes ((array!60857 0))(
  ( (array!60858 (arr!29288 (Array (_ BitVec 32) (_ BitVec 64))) (size!29768 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60857)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975793 (= res!653350 (validKeyInArray!0 (select (arr!29288 _keys!1717) i!822)))))

(declare-fun b!975794 () Bool)

(declare-fun e!549959 () Bool)

(declare-fun tp_is_empty!22421 () Bool)

(assert (=> b!975794 (= e!549959 tp_is_empty!22421)))

(declare-fun b!975795 () Bool)

(declare-fun e!549958 () Bool)

(declare-fun mapRes!35641 () Bool)

(assert (=> b!975795 (= e!549958 (and e!549959 mapRes!35641))))

(declare-fun condMapEmpty!35641 () Bool)

(declare-datatypes ((V!34877 0))(
  ( (V!34878 (val!11261 Int)) )
))
(declare-datatypes ((ValueCell!10729 0))(
  ( (ValueCellFull!10729 (v!13820 V!34877)) (EmptyCell!10729) )
))
(declare-datatypes ((array!60859 0))(
  ( (array!60860 (arr!29289 (Array (_ BitVec 32) ValueCell!10729)) (size!29769 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60859)

(declare-fun mapDefault!35641 () ValueCell!10729)

