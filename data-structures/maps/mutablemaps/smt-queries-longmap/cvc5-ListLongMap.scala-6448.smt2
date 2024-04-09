; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82556 () Bool)

(assert start!82556)

(declare-fun b!961580 () Bool)

(declare-fun e!542290 () Bool)

(declare-fun e!542293 () Bool)

(declare-fun mapRes!34189 () Bool)

(assert (=> b!961580 (= e!542290 (and e!542293 mapRes!34189))))

(declare-fun condMapEmpty!34189 () Bool)

(declare-datatypes ((V!33601 0))(
  ( (V!33602 (val!10782 Int)) )
))
(declare-datatypes ((ValueCell!10250 0))(
  ( (ValueCellFull!10250 (v!13340 V!33601)) (EmptyCell!10250) )
))
(declare-datatypes ((array!59015 0))(
  ( (array!59016 (arr!28372 (Array (_ BitVec 32) ValueCell!10250)) (size!28852 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59015)

(declare-fun mapDefault!34189 () ValueCell!10250)

