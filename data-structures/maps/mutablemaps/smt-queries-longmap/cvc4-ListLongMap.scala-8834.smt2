; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107268 () Bool)

(assert start!107268)

(declare-fun b!1271013 () Bool)

(declare-fun e!724716 () Bool)

(declare-fun e!724714 () Bool)

(declare-fun mapRes!50962 () Bool)

(assert (=> b!1271013 (= e!724716 (and e!724714 mapRes!50962))))

(declare-fun condMapEmpty!50962 () Bool)

(declare-datatypes ((V!49087 0))(
  ( (V!49088 (val!16535 Int)) )
))
(declare-datatypes ((ValueCell!15607 0))(
  ( (ValueCellFull!15607 (v!19170 V!49087)) (EmptyCell!15607) )
))
(declare-datatypes ((array!83057 0))(
  ( (array!83058 (arr!40061 (Array (_ BitVec 32) ValueCell!15607)) (size!40598 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83057)

(declare-fun mapDefault!50962 () ValueCell!15607)

