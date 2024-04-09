; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83408 () Bool)

(assert start!83408)

(declare-fun b_free!19373 () Bool)

(declare-fun b_next!19373 () Bool)

(assert (=> start!83408 (= b_free!19373 (not b_next!19373))))

(declare-fun tp!67399 () Bool)

(declare-fun b_and!30985 () Bool)

(assert (=> start!83408 (= tp!67399 b_and!30985)))

(declare-fun b!973516 () Bool)

(declare-fun res!651768 () Bool)

(declare-fun e!548776 () Bool)

(assert (=> b!973516 (=> (not res!651768) (not e!548776))))

(declare-datatypes ((array!60567 0))(
  ( (array!60568 (arr!29143 (Array (_ BitVec 32) (_ BitVec 64))) (size!29623 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60567)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973516 (= res!651768 (validKeyInArray!0 (select (arr!29143 _keys!1717) i!822)))))

(declare-fun b!973517 () Bool)

(declare-fun e!548780 () Bool)

(declare-fun e!548775 () Bool)

(declare-fun mapRes!35416 () Bool)

(assert (=> b!973517 (= e!548780 (and e!548775 mapRes!35416))))

(declare-fun condMapEmpty!35416 () Bool)

(declare-datatypes ((V!34677 0))(
  ( (V!34678 (val!11186 Int)) )
))
(declare-datatypes ((ValueCell!10654 0))(
  ( (ValueCellFull!10654 (v!13745 V!34677)) (EmptyCell!10654) )
))
(declare-datatypes ((array!60569 0))(
  ( (array!60570 (arr!29144 (Array (_ BitVec 32) ValueCell!10654)) (size!29624 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60569)

(declare-fun mapDefault!35416 () ValueCell!10654)

