; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20370 () Bool)

(assert start!20370)

(declare-fun b_free!5017 () Bool)

(declare-fun b_next!5017 () Bool)

(assert (=> start!20370 (= b_free!5017 (not b_next!5017))))

(declare-fun tp!18083 () Bool)

(declare-fun b_and!11781 () Bool)

(assert (=> start!20370 (= tp!18083 b_and!11781)))

(declare-fun mapIsEmpty!8378 () Bool)

(declare-fun mapRes!8378 () Bool)

(assert (=> mapIsEmpty!8378 mapRes!8378))

(declare-fun b!200890 () Bool)

(declare-fun e!131708 () Bool)

(declare-fun e!131710 () Bool)

(assert (=> b!200890 (= e!131708 (and e!131710 mapRes!8378))))

(declare-fun condMapEmpty!8378 () Bool)

(declare-datatypes ((V!6145 0))(
  ( (V!6146 (val!2481 Int)) )
))
(declare-datatypes ((ValueCell!2093 0))(
  ( (ValueCellFull!2093 (v!4447 V!6145)) (EmptyCell!2093) )
))
(declare-datatypes ((array!8976 0))(
  ( (array!8977 (arr!4238 (Array (_ BitVec 32) ValueCell!2093)) (size!4563 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8976)

(declare-fun mapDefault!8378 () ValueCell!2093)

