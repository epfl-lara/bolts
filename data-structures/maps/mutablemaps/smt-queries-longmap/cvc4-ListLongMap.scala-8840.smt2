; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107304 () Bool)

(assert start!107304)

(declare-fun b!1271337 () Bool)

(declare-fun e!724988 () Bool)

(declare-fun tp_is_empty!32957 () Bool)

(assert (=> b!1271337 (= e!724988 tp_is_empty!32957)))

(declare-fun b!1271338 () Bool)

(declare-fun e!724985 () Bool)

(declare-fun mapRes!51016 () Bool)

(assert (=> b!1271338 (= e!724985 (and e!724988 mapRes!51016))))

(declare-fun condMapEmpty!51016 () Bool)

(declare-datatypes ((V!49135 0))(
  ( (V!49136 (val!16553 Int)) )
))
(declare-datatypes ((ValueCell!15625 0))(
  ( (ValueCellFull!15625 (v!19188 V!49135)) (EmptyCell!15625) )
))
(declare-datatypes ((array!83123 0))(
  ( (array!83124 (arr!40094 (Array (_ BitVec 32) ValueCell!15625)) (size!40631 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83123)

(declare-fun mapDefault!51016 () ValueCell!15625)

