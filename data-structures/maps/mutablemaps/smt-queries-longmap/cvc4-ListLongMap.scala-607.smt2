; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15840 () Bool)

(assert start!15840)

(declare-fun b!157679 () Bool)

(declare-fun b_free!3455 () Bool)

(declare-fun b_next!3455 () Bool)

(assert (=> b!157679 (= b_free!3455 (not b_next!3455))))

(declare-fun tp!12900 () Bool)

(declare-fun b_and!9887 () Bool)

(assert (=> b!157679 (= tp!12900 b_and!9887)))

(declare-fun b!157674 () Bool)

(declare-fun e!103278 () Bool)

(declare-fun tp_is_empty!3257 () Bool)

(assert (=> b!157674 (= e!103278 tp_is_empty!3257)))

(declare-fun b!157676 () Bool)

(declare-fun e!103279 () Bool)

(declare-fun mapRes!5539 () Bool)

(assert (=> b!157676 (= e!103279 (and e!103278 mapRes!5539))))

(declare-fun condMapEmpty!5539 () Bool)

(declare-datatypes ((V!3989 0))(
  ( (V!3990 (val!1673 Int)) )
))
(declare-datatypes ((ValueCell!1285 0))(
  ( (ValueCellFull!1285 (v!3534 V!3989)) (EmptyCell!1285) )
))
(declare-datatypes ((array!5572 0))(
  ( (array!5573 (arr!2640 (Array (_ BitVec 32) (_ BitVec 64))) (size!2920 (_ BitVec 32))) )
))
(declare-datatypes ((array!5574 0))(
  ( (array!5575 (arr!2641 (Array (_ BitVec 32) ValueCell!1285)) (size!2921 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1478 0))(
  ( (LongMapFixedSize!1479 (defaultEntry!3181 Int) (mask!7669 (_ BitVec 32)) (extraKeys!2922 (_ BitVec 32)) (zeroValue!3024 V!3989) (minValue!3024 V!3989) (_size!788 (_ BitVec 32)) (_keys!4958 array!5572) (_values!3164 array!5574) (_vacant!788 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1478)

(declare-fun mapDefault!5539 () ValueCell!1285)

