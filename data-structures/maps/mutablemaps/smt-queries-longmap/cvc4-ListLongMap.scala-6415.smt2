; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82318 () Bool)

(assert start!82318)

(declare-fun b_free!18563 () Bool)

(declare-fun b_next!18563 () Bool)

(assert (=> start!82318 (= b_free!18563 (not b_next!18563))))

(declare-fun tp!64651 () Bool)

(declare-fun b_and!30069 () Bool)

(assert (=> start!82318 (= tp!64651 b_and!30069)))

(declare-fun b!959182 () Bool)

(declare-fun e!540739 () Bool)

(declare-fun e!540742 () Bool)

(declare-fun mapRes!33883 () Bool)

(assert (=> b!959182 (= e!540739 (and e!540742 mapRes!33883))))

(declare-fun condMapEmpty!33883 () Bool)

(declare-datatypes ((V!33341 0))(
  ( (V!33342 (val!10685 Int)) )
))
(declare-datatypes ((ValueCell!10153 0))(
  ( (ValueCellFull!10153 (v!13242 V!33341)) (EmptyCell!10153) )
))
(declare-datatypes ((array!58649 0))(
  ( (array!58650 (arr!28194 (Array (_ BitVec 32) ValueCell!10153)) (size!28674 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58649)

(declare-fun mapDefault!33883 () ValueCell!10153)

