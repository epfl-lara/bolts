; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107298 () Bool)

(assert start!107298)

(declare-fun b!1271283 () Bool)

(declare-fun e!724943 () Bool)

(declare-fun e!724939 () Bool)

(declare-fun mapRes!51007 () Bool)

(assert (=> b!1271283 (= e!724943 (and e!724939 mapRes!51007))))

(declare-fun condMapEmpty!51007 () Bool)

(declare-datatypes ((V!49127 0))(
  ( (V!49128 (val!16550 Int)) )
))
(declare-datatypes ((ValueCell!15622 0))(
  ( (ValueCellFull!15622 (v!19185 V!49127)) (EmptyCell!15622) )
))
(declare-datatypes ((array!83113 0))(
  ( (array!83114 (arr!40089 (Array (_ BitVec 32) ValueCell!15622)) (size!40626 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83113)

(declare-fun mapDefault!51007 () ValueCell!15622)

