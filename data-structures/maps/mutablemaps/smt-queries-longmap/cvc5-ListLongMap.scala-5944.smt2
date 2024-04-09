; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77508 () Bool)

(assert start!77508)

(declare-fun b!902752 () Bool)

(declare-fun e!505733 () Bool)

(declare-fun e!505734 () Bool)

(declare-fun mapRes!29449 () Bool)

(assert (=> b!902752 (= e!505733 (and e!505734 mapRes!29449))))

(declare-fun condMapEmpty!29449 () Bool)

(declare-datatypes ((V!29623 0))(
  ( (V!29624 (val!9297 Int)) )
))
(declare-datatypes ((ValueCell!8765 0))(
  ( (ValueCellFull!8765 (v!11802 V!29623)) (EmptyCell!8765) )
))
(declare-datatypes ((array!53034 0))(
  ( (array!53035 (arr!25473 (Array (_ BitVec 32) ValueCell!8765)) (size!25933 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53034)

(declare-fun mapDefault!29449 () ValueCell!8765)

