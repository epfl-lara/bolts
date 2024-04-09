; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82722 () Bool)

(assert start!82722)

(declare-fun b_free!18827 () Bool)

(declare-fun b_next!18827 () Bool)

(assert (=> start!82722 (= b_free!18827 (not b_next!18827))))

(declare-fun tp!65602 () Bool)

(declare-fun b_and!30333 () Bool)

(assert (=> start!82722 (= tp!65602 b_and!30333)))

(declare-fun b!964094 () Bool)

(declare-fun e!543563 () Bool)

(declare-fun tp_is_empty!21629 () Bool)

(assert (=> b!964094 (= e!543563 tp_is_empty!21629)))

(declare-fun b!964096 () Bool)

(declare-fun e!543561 () Bool)

(assert (=> b!964096 (= e!543561 tp_is_empty!21629)))

(declare-fun b!964097 () Bool)

(declare-fun e!543564 () Bool)

(declare-fun mapRes!34438 () Bool)

(assert (=> b!964097 (= e!543564 (and e!543561 mapRes!34438))))

(declare-fun condMapEmpty!34438 () Bool)

(declare-datatypes ((V!33821 0))(
  ( (V!33822 (val!10865 Int)) )
))
(declare-datatypes ((ValueCell!10333 0))(
  ( (ValueCellFull!10333 (v!13423 V!33821)) (EmptyCell!10333) )
))
(declare-datatypes ((array!59333 0))(
  ( (array!59334 (arr!28531 (Array (_ BitVec 32) ValueCell!10333)) (size!29011 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59333)

(declare-fun mapDefault!34438 () ValueCell!10333)

