; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83470 () Bool)

(assert start!83470)

(declare-fun b!974467 () Bool)

(declare-fun e!549270 () Bool)

(declare-fun e!549272 () Bool)

(declare-fun mapRes!35509 () Bool)

(assert (=> b!974467 (= e!549270 (and e!549272 mapRes!35509))))

(declare-fun condMapEmpty!35509 () Bool)

(declare-datatypes ((V!34761 0))(
  ( (V!34762 (val!11217 Int)) )
))
(declare-datatypes ((ValueCell!10685 0))(
  ( (ValueCellFull!10685 (v!13776 V!34761)) (EmptyCell!10685) )
))
(declare-datatypes ((array!60685 0))(
  ( (array!60686 (arr!29202 (Array (_ BitVec 32) ValueCell!10685)) (size!29682 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60685)

(declare-fun mapDefault!35509 () ValueCell!10685)

