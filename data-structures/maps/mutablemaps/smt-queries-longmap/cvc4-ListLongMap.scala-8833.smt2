; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107262 () Bool)

(assert start!107262)

(declare-fun b!1270959 () Bool)

(declare-fun e!724669 () Bool)

(declare-fun e!724672 () Bool)

(declare-fun mapRes!50953 () Bool)

(assert (=> b!1270959 (= e!724669 (and e!724672 mapRes!50953))))

(declare-fun condMapEmpty!50953 () Bool)

(declare-datatypes ((V!49079 0))(
  ( (V!49080 (val!16532 Int)) )
))
(declare-datatypes ((ValueCell!15604 0))(
  ( (ValueCellFull!15604 (v!19167 V!49079)) (EmptyCell!15604) )
))
(declare-datatypes ((array!83047 0))(
  ( (array!83048 (arr!40056 (Array (_ BitVec 32) ValueCell!15604)) (size!40593 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83047)

(declare-fun mapDefault!50953 () ValueCell!15604)

