; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82542 () Bool)

(assert start!82542)

(declare-fun b!961454 () Bool)

(declare-fun e!542188 () Bool)

(declare-fun tp_is_empty!21449 () Bool)

(assert (=> b!961454 (= e!542188 tp_is_empty!21449)))

(declare-fun b!961455 () Bool)

(declare-fun e!542186 () Bool)

(declare-fun mapRes!34168 () Bool)

(assert (=> b!961455 (= e!542186 (and e!542188 mapRes!34168))))

(declare-fun condMapEmpty!34168 () Bool)

(declare-datatypes ((V!33581 0))(
  ( (V!33582 (val!10775 Int)) )
))
(declare-datatypes ((ValueCell!10243 0))(
  ( (ValueCellFull!10243 (v!13333 V!33581)) (EmptyCell!10243) )
))
(declare-datatypes ((array!58993 0))(
  ( (array!58994 (arr!28361 (Array (_ BitVec 32) ValueCell!10243)) (size!28841 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58993)

(declare-fun mapDefault!34168 () ValueCell!10243)

