; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16150 () Bool)

(assert start!16150)

(declare-fun b!160642 () Bool)

(declare-fun b_free!3599 () Bool)

(declare-fun b_next!3599 () Bool)

(assert (=> b!160642 (= b_free!3599 (not b_next!3599))))

(declare-fun tp!13366 () Bool)

(declare-fun b_and!10031 () Bool)

(assert (=> b!160642 (= tp!13366 b_and!10031)))

(declare-fun b!160639 () Bool)

(declare-fun res!76116 () Bool)

(declare-fun e!105023 () Bool)

(assert (=> b!160639 (=> (not res!76116) (not e!105023))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4181 0))(
  ( (V!4182 (val!1745 Int)) )
))
(declare-datatypes ((ValueCell!1357 0))(
  ( (ValueCellFull!1357 (v!3606 V!4181)) (EmptyCell!1357) )
))
(declare-datatypes ((array!5880 0))(
  ( (array!5881 (arr!2784 (Array (_ BitVec 32) (_ BitVec 64))) (size!3068 (_ BitVec 32))) )
))
(declare-datatypes ((array!5882 0))(
  ( (array!5883 (arr!2785 (Array (_ BitVec 32) ValueCell!1357)) (size!3069 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1622 0))(
  ( (LongMapFixedSize!1623 (defaultEntry!3253 Int) (mask!7827 (_ BitVec 32)) (extraKeys!2994 (_ BitVec 32)) (zeroValue!3096 V!4181) (minValue!3096 V!4181) (_size!860 (_ BitVec 32)) (_keys!5054 array!5880) (_values!3236 array!5882) (_vacant!860 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1622)

(declare-datatypes ((SeekEntryResult!346 0))(
  ( (MissingZero!346 (index!3552 (_ BitVec 32))) (Found!346 (index!3553 (_ BitVec 32))) (Intermediate!346 (undefined!1158 Bool) (index!3554 (_ BitVec 32)) (x!17738 (_ BitVec 32))) (Undefined!346) (MissingVacant!346 (index!3555 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5880 (_ BitVec 32)) SeekEntryResult!346)

(assert (=> b!160639 (= res!76116 (is-Undefined!346 (seekEntryOrOpen!0 key!828 (_keys!5054 thiss!1248) (mask!7827 thiss!1248))))))

(declare-fun b!160640 () Bool)

(declare-fun e!105021 () Bool)

(declare-fun e!105018 () Bool)

(declare-fun mapRes!5789 () Bool)

(assert (=> b!160640 (= e!105021 (and e!105018 mapRes!5789))))

(declare-fun condMapEmpty!5789 () Bool)

(declare-fun mapDefault!5789 () ValueCell!1357)

