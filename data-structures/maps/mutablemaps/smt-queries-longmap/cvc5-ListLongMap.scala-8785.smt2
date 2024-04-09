; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106926 () Bool)

(assert start!106926)

(declare-fun b!1267895 () Bool)

(declare-fun e!722387 () Bool)

(declare-fun e!722388 () Bool)

(declare-fun mapRes!50500 () Bool)

(assert (=> b!1267895 (= e!722387 (and e!722388 mapRes!50500))))

(declare-fun condMapEmpty!50500 () Bool)

(declare-datatypes ((V!48691 0))(
  ( (V!48692 (val!16386 Int)) )
))
(declare-datatypes ((ValueCell!15458 0))(
  ( (ValueCellFull!15458 (v!19020 V!48691)) (EmptyCell!15458) )
))
(declare-datatypes ((array!82499 0))(
  ( (array!82500 (arr!39787 (Array (_ BitVec 32) ValueCell!15458)) (size!40324 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82499)

(declare-fun mapDefault!50500 () ValueCell!15458)

