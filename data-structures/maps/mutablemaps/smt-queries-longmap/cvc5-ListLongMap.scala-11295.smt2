; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131706 () Bool)

(assert start!131706)

(declare-fun b!1541894 () Bool)

(declare-fun e!857734 () Bool)

(declare-fun e!857733 () Bool)

(declare-fun mapRes!58198 () Bool)

(assert (=> b!1541894 (= e!857734 (and e!857733 mapRes!58198))))

(declare-fun condMapEmpty!58198 () Bool)

(declare-datatypes ((V!58661 0))(
  ( (V!58662 (val!18909 Int)) )
))
(declare-datatypes ((ValueCell!17921 0))(
  ( (ValueCellFull!17921 (v!21707 V!58661)) (EmptyCell!17921) )
))
(declare-datatypes ((array!102527 0))(
  ( (array!102528 (arr!49461 (Array (_ BitVec 32) ValueCell!17921)) (size!50012 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102527)

(declare-fun mapDefault!58198 () ValueCell!17921)

