; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82554 () Bool)

(assert start!82554)

(declare-fun b!961562 () Bool)

(declare-fun e!542275 () Bool)

(declare-fun e!542278 () Bool)

(declare-fun mapRes!34186 () Bool)

(assert (=> b!961562 (= e!542275 (and e!542278 mapRes!34186))))

(declare-fun condMapEmpty!34186 () Bool)

(declare-datatypes ((V!33597 0))(
  ( (V!33598 (val!10781 Int)) )
))
(declare-datatypes ((ValueCell!10249 0))(
  ( (ValueCellFull!10249 (v!13339 V!33597)) (EmptyCell!10249) )
))
(declare-datatypes ((array!59013 0))(
  ( (array!59014 (arr!28371 (Array (_ BitVec 32) ValueCell!10249)) (size!28851 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59013)

(declare-fun mapDefault!34186 () ValueCell!10249)

