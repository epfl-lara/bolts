; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77502 () Bool)

(assert start!77502)

(declare-fun b!902698 () Bool)

(declare-fun e!505688 () Bool)

(declare-fun e!505691 () Bool)

(declare-fun mapRes!29440 () Bool)

(assert (=> b!902698 (= e!505688 (and e!505691 mapRes!29440))))

(declare-fun condMapEmpty!29440 () Bool)

(declare-datatypes ((V!29615 0))(
  ( (V!29616 (val!9294 Int)) )
))
(declare-datatypes ((ValueCell!8762 0))(
  ( (ValueCellFull!8762 (v!11799 V!29615)) (EmptyCell!8762) )
))
(declare-datatypes ((array!53024 0))(
  ( (array!53025 (arr!25468 (Array (_ BitVec 32) ValueCell!8762)) (size!25928 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53024)

(declare-fun mapDefault!29440 () ValueCell!8762)

