; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107318 () Bool)

(assert start!107318)

(declare-fun b!1271463 () Bool)

(declare-fun e!725093 () Bool)

(declare-fun e!725090 () Bool)

(declare-fun mapRes!51037 () Bool)

(assert (=> b!1271463 (= e!725093 (and e!725090 mapRes!51037))))

(declare-fun condMapEmpty!51037 () Bool)

(declare-datatypes ((V!49155 0))(
  ( (V!49156 (val!16560 Int)) )
))
(declare-datatypes ((ValueCell!15632 0))(
  ( (ValueCellFull!15632 (v!19195 V!49155)) (EmptyCell!15632) )
))
(declare-datatypes ((array!83147 0))(
  ( (array!83148 (arr!40106 (Array (_ BitVec 32) ValueCell!15632)) (size!40643 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83147)

(declare-fun mapDefault!51037 () ValueCell!15632)

