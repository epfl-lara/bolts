; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83458 () Bool)

(assert start!83458)

(declare-fun b_free!19423 () Bool)

(declare-fun b_next!19423 () Bool)

(assert (=> start!83458 (= b_free!19423 (not b_next!19423))))

(declare-fun tp!67548 () Bool)

(declare-fun b_and!31043 () Bool)

(assert (=> start!83458 (= tp!67548 b_and!31043)))

(declare-fun b!974284 () Bool)

(declare-fun e!549172 () Bool)

(declare-fun e!549170 () Bool)

(declare-fun mapRes!35491 () Bool)

(assert (=> b!974284 (= e!549172 (and e!549170 mapRes!35491))))

(declare-fun condMapEmpty!35491 () Bool)

(declare-datatypes ((V!34745 0))(
  ( (V!34746 (val!11211 Int)) )
))
(declare-datatypes ((ValueCell!10679 0))(
  ( (ValueCellFull!10679 (v!13770 V!34745)) (EmptyCell!10679) )
))
(declare-datatypes ((array!60663 0))(
  ( (array!60664 (arr!29191 (Array (_ BitVec 32) ValueCell!10679)) (size!29671 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60663)

(declare-fun mapDefault!35491 () ValueCell!10679)

