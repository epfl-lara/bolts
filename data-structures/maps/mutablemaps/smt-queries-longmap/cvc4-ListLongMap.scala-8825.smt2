; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107214 () Bool)

(assert start!107214)

(declare-fun b!1270527 () Bool)

(declare-fun res!845526 () Bool)

(declare-fun e!724311 () Bool)

(assert (=> b!1270527 (=> (not res!845526) (not e!724311))))

(declare-datatypes ((array!82959 0))(
  ( (array!82960 (arr!40012 (Array (_ BitVec 32) (_ BitVec 64))) (size!40549 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82959)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82959 (_ BitVec 32)) Bool)

(assert (=> b!1270527 (= res!845526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270528 () Bool)

(declare-fun e!724313 () Bool)

(declare-fun e!724309 () Bool)

(declare-fun mapRes!50881 () Bool)

(assert (=> b!1270528 (= e!724313 (and e!724309 mapRes!50881))))

(declare-fun condMapEmpty!50881 () Bool)

(declare-datatypes ((V!49015 0))(
  ( (V!49016 (val!16508 Int)) )
))
(declare-datatypes ((ValueCell!15580 0))(
  ( (ValueCellFull!15580 (v!19143 V!49015)) (EmptyCell!15580) )
))
(declare-datatypes ((array!82961 0))(
  ( (array!82962 (arr!40013 (Array (_ BitVec 32) ValueCell!15580)) (size!40550 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82961)

(declare-fun mapDefault!50881 () ValueCell!15580)

