; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107336 () Bool)

(assert start!107336)

(declare-fun b!1271625 () Bool)

(declare-fun e!725226 () Bool)

(declare-fun e!725228 () Bool)

(declare-fun mapRes!51064 () Bool)

(assert (=> b!1271625 (= e!725226 (and e!725228 mapRes!51064))))

(declare-fun condMapEmpty!51064 () Bool)

(declare-datatypes ((V!49179 0))(
  ( (V!49180 (val!16569 Int)) )
))
(declare-datatypes ((ValueCell!15641 0))(
  ( (ValueCellFull!15641 (v!19204 V!49179)) (EmptyCell!15641) )
))
(declare-datatypes ((array!83177 0))(
  ( (array!83178 (arr!40121 (Array (_ BitVec 32) ValueCell!15641)) (size!40658 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83177)

(declare-fun mapDefault!51064 () ValueCell!15641)

