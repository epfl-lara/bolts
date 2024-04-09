; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82602 () Bool)

(assert start!82602)

(declare-fun b_free!18707 () Bool)

(declare-fun b_next!18707 () Bool)

(assert (=> start!82602 (= b_free!18707 (not b_next!18707))))

(declare-fun tp!65242 () Bool)

(declare-fun b_and!30213 () Bool)

(assert (=> start!82602 (= tp!65242 b_and!30213)))

(declare-fun b!962181 () Bool)

(declare-fun e!542635 () Bool)

(declare-fun e!542638 () Bool)

(declare-fun mapRes!34258 () Bool)

(assert (=> b!962181 (= e!542635 (and e!542638 mapRes!34258))))

(declare-fun condMapEmpty!34258 () Bool)

(declare-datatypes ((V!33661 0))(
  ( (V!33662 (val!10805 Int)) )
))
(declare-datatypes ((ValueCell!10273 0))(
  ( (ValueCellFull!10273 (v!13363 V!33661)) (EmptyCell!10273) )
))
(declare-datatypes ((array!59103 0))(
  ( (array!59104 (arr!28416 (Array (_ BitVec 32) ValueCell!10273)) (size!28896 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59103)

(declare-fun mapDefault!34258 () ValueCell!10273)

