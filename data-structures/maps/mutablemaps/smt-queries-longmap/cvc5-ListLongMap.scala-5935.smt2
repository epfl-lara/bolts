; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77424 () Bool)

(assert start!77424)

(declare-fun b!902150 () Bool)

(declare-fun e!505257 () Bool)

(declare-fun e!505254 () Bool)

(declare-fun mapRes!29359 () Bool)

(assert (=> b!902150 (= e!505257 (and e!505254 mapRes!29359))))

(declare-fun condMapEmpty!29359 () Bool)

(declare-datatypes ((V!29551 0))(
  ( (V!29552 (val!9270 Int)) )
))
(declare-datatypes ((ValueCell!8738 0))(
  ( (ValueCellFull!8738 (v!11774 V!29551)) (EmptyCell!8738) )
))
(declare-datatypes ((array!52930 0))(
  ( (array!52931 (arr!25424 (Array (_ BitVec 32) ValueCell!8738)) (size!25884 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52930)

(declare-fun mapDefault!29359 () ValueCell!8738)

