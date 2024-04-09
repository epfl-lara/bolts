; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82748 () Bool)

(assert start!82748)

(declare-fun b_free!18853 () Bool)

(declare-fun b_next!18853 () Bool)

(assert (=> start!82748 (= b_free!18853 (not b_next!18853))))

(declare-fun tp!65679 () Bool)

(declare-fun b_and!30359 () Bool)

(assert (=> start!82748 (= tp!65679 b_and!30359)))

(declare-fun mapIsEmpty!34477 () Bool)

(declare-fun mapRes!34477 () Bool)

(assert (=> mapIsEmpty!34477 mapRes!34477))

(declare-fun b!964562 () Bool)

(declare-fun e!543798 () Bool)

(declare-fun e!543796 () Bool)

(assert (=> b!964562 (= e!543798 (and e!543796 mapRes!34477))))

(declare-fun condMapEmpty!34477 () Bool)

(declare-datatypes ((V!33857 0))(
  ( (V!33858 (val!10878 Int)) )
))
(declare-datatypes ((ValueCell!10346 0))(
  ( (ValueCellFull!10346 (v!13436 V!33857)) (EmptyCell!10346) )
))
(declare-datatypes ((array!59383 0))(
  ( (array!59384 (arr!28556 (Array (_ BitVec 32) ValueCell!10346)) (size!29036 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59383)

(declare-fun mapDefault!34477 () ValueCell!10346)

