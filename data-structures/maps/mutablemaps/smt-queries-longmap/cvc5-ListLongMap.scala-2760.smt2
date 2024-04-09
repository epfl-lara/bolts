; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40420 () Bool)

(assert start!40420)

(declare-fun b!444185 () Bool)

(declare-fun e!261241 () Bool)

(declare-fun e!261242 () Bool)

(declare-fun mapRes!19323 () Bool)

(assert (=> b!444185 (= e!261241 (and e!261242 mapRes!19323))))

(declare-fun condMapEmpty!19323 () Bool)

(declare-datatypes ((V!16835 0))(
  ( (V!16836 (val!5943 Int)) )
))
(declare-datatypes ((ValueCell!5555 0))(
  ( (ValueCellFull!5555 (v!8190 V!16835)) (EmptyCell!5555) )
))
(declare-datatypes ((array!27367 0))(
  ( (array!27368 (arr!13128 (Array (_ BitVec 32) ValueCell!5555)) (size!13480 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27367)

(declare-fun mapDefault!19323 () ValueCell!5555)

