; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107232 () Bool)

(assert start!107232)

(declare-fun b!1270689 () Bool)

(declare-fun e!724444 () Bool)

(declare-fun tp_is_empty!32885 () Bool)

(assert (=> b!1270689 (= e!724444 tp_is_empty!32885)))

(declare-fun b!1270690 () Bool)

(declare-fun res!845609 () Bool)

(declare-fun e!724446 () Bool)

(assert (=> b!1270690 (=> (not res!845609) (not e!724446))))

(declare-datatypes ((array!82991 0))(
  ( (array!82992 (arr!40028 (Array (_ BitVec 32) (_ BitVec 64))) (size!40565 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82991)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82991 (_ BitVec 32)) Bool)

(assert (=> b!1270690 (= res!845609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270691 () Bool)

(declare-fun e!724445 () Bool)

(declare-fun e!724447 () Bool)

(declare-fun mapRes!50908 () Bool)

(assert (=> b!1270691 (= e!724445 (and e!724447 mapRes!50908))))

(declare-fun condMapEmpty!50908 () Bool)

(declare-datatypes ((V!49039 0))(
  ( (V!49040 (val!16517 Int)) )
))
(declare-datatypes ((ValueCell!15589 0))(
  ( (ValueCellFull!15589 (v!19152 V!49039)) (EmptyCell!15589) )
))
(declare-datatypes ((array!82993 0))(
  ( (array!82994 (arr!40029 (Array (_ BitVec 32) ValueCell!15589)) (size!40566 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82993)

(declare-fun mapDefault!50908 () ValueCell!15589)

