; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107324 () Bool)

(assert start!107324)

(declare-fun b!1271517 () Bool)

(declare-fun e!725134 () Bool)

(declare-fun e!725136 () Bool)

(declare-fun mapRes!51046 () Bool)

(assert (=> b!1271517 (= e!725134 (and e!725136 mapRes!51046))))

(declare-fun condMapEmpty!51046 () Bool)

(declare-datatypes ((V!49163 0))(
  ( (V!49164 (val!16563 Int)) )
))
(declare-datatypes ((ValueCell!15635 0))(
  ( (ValueCellFull!15635 (v!19198 V!49163)) (EmptyCell!15635) )
))
(declare-datatypes ((array!83157 0))(
  ( (array!83158 (arr!40111 (Array (_ BitVec 32) ValueCell!15635)) (size!40648 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83157)

(declare-fun mapDefault!51046 () ValueCell!15635)

