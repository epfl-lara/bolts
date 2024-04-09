; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22052 () Bool)

(assert start!22052)

(declare-fun b!227581 () Bool)

(declare-fun b_free!6107 () Bool)

(declare-fun b_next!6107 () Bool)

(assert (=> b!227581 (= b_free!6107 (not b_next!6107))))

(declare-fun tp!21463 () Bool)

(declare-fun b_and!13023 () Bool)

(assert (=> b!227581 (= tp!21463 b_and!13023)))

(declare-fun bm!21150 () Bool)

(declare-fun call!21153 () Bool)

(declare-datatypes ((V!7605 0))(
  ( (V!7606 (val!3029 Int)) )
))
(declare-datatypes ((ValueCell!2641 0))(
  ( (ValueCellFull!2641 (v!5045 V!7605)) (EmptyCell!2641) )
))
(declare-datatypes ((array!11180 0))(
  ( (array!11181 (arr!5309 (Array (_ BitVec 32) ValueCell!2641)) (size!5642 (_ BitVec 32))) )
))
(declare-datatypes ((array!11182 0))(
  ( (array!11183 (arr!5310 (Array (_ BitVec 32) (_ BitVec 64))) (size!5643 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3182 0))(
  ( (LongMapFixedSize!3183 (defaultEntry!4250 Int) (mask!10112 (_ BitVec 32)) (extraKeys!3987 (_ BitVec 32)) (zeroValue!4091 V!7605) (minValue!4091 V!7605) (_size!1640 (_ BitVec 32)) (_keys!6304 array!11182) (_values!4233 array!11180) (_vacant!1640 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3182)

(declare-datatypes ((SeekEntryResult!907 0))(
  ( (MissingZero!907 (index!5798 (_ BitVec 32))) (Found!907 (index!5799 (_ BitVec 32))) (Intermediate!907 (undefined!1719 Bool) (index!5800 (_ BitVec 32)) (x!23295 (_ BitVec 32))) (Undefined!907) (MissingVacant!907 (index!5801 (_ BitVec 32))) )
))
(declare-fun lt!114561 () SeekEntryResult!907)

(declare-fun c!37718 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21150 (= call!21153 (inRange!0 (ite c!37718 (index!5798 lt!114561) (index!5801 lt!114561)) (mask!10112 thiss!1504)))))

(declare-fun b!227563 () Bool)

(declare-fun e!147655 () Bool)

(declare-fun e!147644 () Bool)

(declare-fun mapRes!10123 () Bool)

(assert (=> b!227563 (= e!147655 (and e!147644 mapRes!10123))))

(declare-fun condMapEmpty!10123 () Bool)

(declare-fun mapDefault!10123 () ValueCell!2641)

