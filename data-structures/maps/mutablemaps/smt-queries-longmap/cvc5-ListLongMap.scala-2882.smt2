; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41430 () Bool)

(assert start!41430)

(declare-fun b_free!11101 () Bool)

(declare-fun b_next!11101 () Bool)

(assert (=> start!41430 (= b_free!11101 (not b_next!11101))))

(declare-fun tp!39297 () Bool)

(declare-fun b_and!19455 () Bool)

(assert (=> start!41430 (= tp!39297 b_and!19455)))

(declare-fun mapNonEmpty!20467 () Bool)

(declare-fun mapRes!20467 () Bool)

(declare-fun tp!39298 () Bool)

(declare-fun e!270052 () Bool)

(assert (=> mapNonEmpty!20467 (= mapRes!20467 (and tp!39298 e!270052))))

(declare-datatypes ((V!17811 0))(
  ( (V!17812 (val!6309 Int)) )
))
(declare-datatypes ((ValueCell!5921 0))(
  ( (ValueCellFull!5921 (v!8592 V!17811)) (EmptyCell!5921) )
))
(declare-fun mapValue!20467 () ValueCell!5921)

(declare-datatypes ((array!28821 0))(
  ( (array!28822 (arr!13840 (Array (_ BitVec 32) ValueCell!5921)) (size!14192 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28821)

(declare-fun mapRest!20467 () (Array (_ BitVec 32) ValueCell!5921))

(declare-fun mapKey!20467 () (_ BitVec 32))

(assert (=> mapNonEmpty!20467 (= (arr!13840 _values!833) (store mapRest!20467 mapKey!20467 mapValue!20467))))

(declare-fun b!462639 () Bool)

(declare-fun e!270050 () Bool)

(declare-fun e!270048 () Bool)

(assert (=> b!462639 (= e!270050 (and e!270048 mapRes!20467))))

(declare-fun condMapEmpty!20467 () Bool)

(declare-fun mapDefault!20467 () ValueCell!5921)

