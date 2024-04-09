; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131718 () Bool)

(assert start!131718)

(declare-fun b!1542002 () Bool)

(declare-fun e!857824 () Bool)

(declare-fun e!857823 () Bool)

(declare-fun mapRes!58216 () Bool)

(assert (=> b!1542002 (= e!857824 (and e!857823 mapRes!58216))))

(declare-fun condMapEmpty!58216 () Bool)

(declare-datatypes ((V!58677 0))(
  ( (V!58678 (val!18915 Int)) )
))
(declare-datatypes ((ValueCell!17927 0))(
  ( (ValueCellFull!17927 (v!21713 V!58677)) (EmptyCell!17927) )
))
(declare-datatypes ((array!102547 0))(
  ( (array!102548 (arr!49471 (Array (_ BitVec 32) ValueCell!17927)) (size!50022 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102547)

(declare-fun mapDefault!58216 () ValueCell!17927)

