; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83970 () Bool)

(assert start!83970)

(declare-fun mapIsEmpty!36146 () Bool)

(declare-fun mapRes!36146 () Bool)

(assert (=> mapIsEmpty!36146 mapRes!36146))

(declare-fun b!980839 () Bool)

(declare-fun e!552923 () Bool)

(declare-fun e!552925 () Bool)

(assert (=> b!980839 (= e!552923 (and e!552925 mapRes!36146))))

(declare-fun condMapEmpty!36146 () Bool)

(declare-datatypes ((V!35309 0))(
  ( (V!35310 (val!11423 Int)) )
))
(declare-datatypes ((ValueCell!10891 0))(
  ( (ValueCellFull!10891 (v!13985 V!35309)) (EmptyCell!10891) )
))
(declare-datatypes ((array!61491 0))(
  ( (array!61492 (arr!29599 (Array (_ BitVec 32) ValueCell!10891)) (size!30079 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61491)

(declare-fun mapDefault!36146 () ValueCell!10891)

