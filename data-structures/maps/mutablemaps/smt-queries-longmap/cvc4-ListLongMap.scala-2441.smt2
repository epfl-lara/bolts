; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38476 () Bool)

(assert start!38476)

(declare-fun b!396828 () Bool)

(declare-fun e!240059 () Bool)

(declare-fun tp_is_empty!9887 () Bool)

(assert (=> b!396828 (= e!240059 tp_is_empty!9887)))

(declare-fun b!396829 () Bool)

(declare-fun e!240058 () Bool)

(declare-fun e!240061 () Bool)

(declare-fun mapRes!16452 () Bool)

(assert (=> b!396829 (= e!240058 (and e!240061 mapRes!16452))))

(declare-fun condMapEmpty!16452 () Bool)

(declare-datatypes ((V!14287 0))(
  ( (V!14288 (val!4988 Int)) )
))
(declare-datatypes ((ValueCell!4600 0))(
  ( (ValueCellFull!4600 (v!7231 V!14287)) (EmptyCell!4600) )
))
(declare-datatypes ((array!23659 0))(
  ( (array!23660 (arr!11276 (Array (_ BitVec 32) ValueCell!4600)) (size!11628 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23659)

(declare-fun mapDefault!16452 () ValueCell!4600)

