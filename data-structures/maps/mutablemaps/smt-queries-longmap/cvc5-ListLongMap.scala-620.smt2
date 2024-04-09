; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16080 () Bool)

(assert start!16080)

(declare-fun b!159490 () Bool)

(declare-fun b_free!3529 () Bool)

(declare-fun b_next!3529 () Bool)

(assert (=> b!159490 (= b_free!3529 (not b_next!3529))))

(declare-fun tp!13157 () Bool)

(declare-fun b_and!9961 () Bool)

(assert (=> b!159490 (= tp!13157 b_and!9961)))

(declare-fun b!159484 () Bool)

(declare-fun e!104390 () Bool)

(declare-fun e!104392 () Bool)

(declare-fun mapRes!5684 () Bool)

(assert (=> b!159484 (= e!104390 (and e!104392 mapRes!5684))))

(declare-fun condMapEmpty!5684 () Bool)

(declare-datatypes ((V!4089 0))(
  ( (V!4090 (val!1710 Int)) )
))
(declare-datatypes ((ValueCell!1322 0))(
  ( (ValueCellFull!1322 (v!3571 V!4089)) (EmptyCell!1322) )
))
(declare-datatypes ((array!5740 0))(
  ( (array!5741 (arr!2714 (Array (_ BitVec 32) (_ BitVec 64))) (size!2998 (_ BitVec 32))) )
))
(declare-datatypes ((array!5742 0))(
  ( (array!5743 (arr!2715 (Array (_ BitVec 32) ValueCell!1322)) (size!2999 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1552 0))(
  ( (LongMapFixedSize!1553 (defaultEntry!3218 Int) (mask!7770 (_ BitVec 32)) (extraKeys!2959 (_ BitVec 32)) (zeroValue!3061 V!4089) (minValue!3061 V!4089) (_size!825 (_ BitVec 32)) (_keys!5019 array!5740) (_values!3201 array!5742) (_vacant!825 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1552)

(declare-fun mapDefault!5684 () ValueCell!1322)

