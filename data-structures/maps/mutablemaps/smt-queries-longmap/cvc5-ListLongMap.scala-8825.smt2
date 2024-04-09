; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107210 () Bool)

(assert start!107210)

(declare-fun b!1270491 () Bool)

(declare-fun e!724281 () Bool)

(declare-fun e!724280 () Bool)

(declare-fun mapRes!50875 () Bool)

(assert (=> b!1270491 (= e!724281 (and e!724280 mapRes!50875))))

(declare-fun condMapEmpty!50875 () Bool)

(declare-datatypes ((V!49011 0))(
  ( (V!49012 (val!16506 Int)) )
))
(declare-datatypes ((ValueCell!15578 0))(
  ( (ValueCellFull!15578 (v!19141 V!49011)) (EmptyCell!15578) )
))
(declare-datatypes ((array!82953 0))(
  ( (array!82954 (arr!40009 (Array (_ BitVec 32) ValueCell!15578)) (size!40546 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82953)

(declare-fun mapDefault!50875 () ValueCell!15578)

