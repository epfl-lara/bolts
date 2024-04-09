; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83964 () Bool)

(assert start!83964)

(declare-fun b!980785 () Bool)

(declare-fun e!552878 () Bool)

(declare-fun e!552877 () Bool)

(declare-fun mapRes!36137 () Bool)

(assert (=> b!980785 (= e!552878 (and e!552877 mapRes!36137))))

(declare-fun condMapEmpty!36137 () Bool)

(declare-datatypes ((V!35301 0))(
  ( (V!35302 (val!11420 Int)) )
))
(declare-datatypes ((ValueCell!10888 0))(
  ( (ValueCellFull!10888 (v!13982 V!35301)) (EmptyCell!10888) )
))
(declare-datatypes ((array!61481 0))(
  ( (array!61482 (arr!29594 (Array (_ BitVec 32) ValueCell!10888)) (size!30074 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61481)

(declare-fun mapDefault!36137 () ValueCell!10888)

