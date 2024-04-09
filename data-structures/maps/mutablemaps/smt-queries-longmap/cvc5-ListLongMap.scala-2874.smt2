; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41372 () Bool)

(assert start!41372)

(declare-fun mapNonEmpty!20392 () Bool)

(declare-fun mapRes!20392 () Bool)

(declare-fun tp!39211 () Bool)

(declare-fun e!269664 () Bool)

(assert (=> mapNonEmpty!20392 (= mapRes!20392 (and tp!39211 e!269664))))

(declare-datatypes ((V!17747 0))(
  ( (V!17748 (val!6285 Int)) )
))
(declare-datatypes ((ValueCell!5897 0))(
  ( (ValueCellFull!5897 (v!8568 V!17747)) (EmptyCell!5897) )
))
(declare-fun mapValue!20392 () ValueCell!5897)

(declare-datatypes ((array!28731 0))(
  ( (array!28732 (arr!13796 (Array (_ BitVec 32) ValueCell!5897)) (size!14148 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28731)

(declare-fun mapRest!20392 () (Array (_ BitVec 32) ValueCell!5897))

(declare-fun mapKey!20392 () (_ BitVec 32))

(assert (=> mapNonEmpty!20392 (= (arr!13796 _values!833) (store mapRest!20392 mapKey!20392 mapValue!20392))))

(declare-fun b!462152 () Bool)

(declare-fun e!269665 () Bool)

(declare-fun e!269661 () Bool)

(assert (=> b!462152 (= e!269665 (and e!269661 mapRes!20392))))

(declare-fun condMapEmpty!20392 () Bool)

(declare-fun mapDefault!20392 () ValueCell!5897)

