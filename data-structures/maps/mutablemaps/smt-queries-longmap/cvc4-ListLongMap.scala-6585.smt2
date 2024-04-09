; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83426 () Bool)

(assert start!83426)

(declare-fun b_free!19391 () Bool)

(declare-fun b_next!19391 () Bool)

(assert (=> start!83426 (= b_free!19391 (not b_next!19391))))

(declare-fun tp!67453 () Bool)

(declare-fun b_and!31011 () Bool)

(assert (=> start!83426 (= tp!67453 b_and!31011)))

(declare-fun b!973804 () Bool)

(declare-fun e!548932 () Bool)

(declare-fun e!548931 () Bool)

(declare-fun mapRes!35443 () Bool)

(assert (=> b!973804 (= e!548932 (and e!548931 mapRes!35443))))

(declare-fun condMapEmpty!35443 () Bool)

(declare-datatypes ((V!34701 0))(
  ( (V!34702 (val!11195 Int)) )
))
(declare-datatypes ((ValueCell!10663 0))(
  ( (ValueCellFull!10663 (v!13754 V!34701)) (EmptyCell!10663) )
))
(declare-datatypes ((array!60603 0))(
  ( (array!60604 (arr!29161 (Array (_ BitVec 32) ValueCell!10663)) (size!29641 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60603)

(declare-fun mapDefault!35443 () ValueCell!10663)

