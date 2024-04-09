; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107028 () Bool)

(assert start!107028)

(declare-fun b!1268529 () Bool)

(declare-fun e!722918 () Bool)

(declare-fun e!722915 () Bool)

(declare-fun mapRes!50602 () Bool)

(assert (=> b!1268529 (= e!722918 (and e!722915 mapRes!50602))))

(declare-fun condMapEmpty!50602 () Bool)

(declare-datatypes ((V!48767 0))(
  ( (V!48768 (val!16415 Int)) )
))
(declare-datatypes ((ValueCell!15487 0))(
  ( (ValueCellFull!15487 (v!19050 V!48767)) (EmptyCell!15487) )
))
(declare-datatypes ((array!82613 0))(
  ( (array!82614 (arr!39839 (Array (_ BitVec 32) ValueCell!15487)) (size!40376 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82613)

(declare-fun mapDefault!50602 () ValueCell!15487)

