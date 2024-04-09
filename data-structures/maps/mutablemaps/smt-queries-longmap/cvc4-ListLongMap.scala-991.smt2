; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21394 () Bool)

(assert start!21394)

(declare-fun b!214899 () Bool)

(declare-fun b_free!5699 () Bool)

(declare-fun b_next!5699 () Bool)

(assert (=> b!214899 (= b_free!5699 (not b_next!5699))))

(declare-fun tp!20197 () Bool)

(declare-fun b_and!12607 () Bool)

(assert (=> b!214899 (= tp!20197 b_and!12607)))

(declare-fun res!105187 () Bool)

(declare-fun e!139777 () Bool)

(assert (=> start!21394 (=> (not res!105187) (not e!139777))))

(declare-datatypes ((V!7061 0))(
  ( (V!7062 (val!2825 Int)) )
))
(declare-datatypes ((ValueCell!2437 0))(
  ( (ValueCellFull!2437 (v!4839 V!7061)) (EmptyCell!2437) )
))
(declare-datatypes ((array!10340 0))(
  ( (array!10341 (arr!4901 (Array (_ BitVec 32) ValueCell!2437)) (size!5229 (_ BitVec 32))) )
))
(declare-datatypes ((array!10342 0))(
  ( (array!10343 (arr!4902 (Array (_ BitVec 32) (_ BitVec 64))) (size!5230 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2774 0))(
  ( (LongMapFixedSize!2775 (defaultEntry!4037 Int) (mask!9715 (_ BitVec 32)) (extraKeys!3774 (_ BitVec 32)) (zeroValue!3878 V!7061) (minValue!3878 V!7061) (_size!1436 (_ BitVec 32)) (_keys!6061 array!10342) (_values!4020 array!10340) (_vacant!1436 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2774)

(declare-fun valid!1126 (LongMapFixedSize!2774) Bool)

(assert (=> start!21394 (= res!105187 (valid!1126 thiss!1504))))

(assert (=> start!21394 e!139777))

(declare-fun e!139778 () Bool)

(assert (=> start!21394 e!139778))

(assert (=> start!21394 true))

(declare-fun b!214893 () Bool)

(declare-fun e!139776 () Bool)

(declare-fun tp_is_empty!5561 () Bool)

(assert (=> b!214893 (= e!139776 tp_is_empty!5561)))

(declare-fun b!214894 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!214894 (= e!139777 (not (validKeyInArray!0 key!932)))))

(declare-fun mapIsEmpty!9470 () Bool)

(declare-fun mapRes!9470 () Bool)

(assert (=> mapIsEmpty!9470 mapRes!9470))

(declare-fun b!214895 () Bool)

(declare-fun res!105188 () Bool)

(assert (=> b!214895 (=> (not res!105188) (not e!139777))))

(assert (=> b!214895 (= res!105188 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!214896 () Bool)

(declare-fun res!105185 () Bool)

(assert (=> b!214896 (=> (not res!105185) (not e!139777))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!736 0))(
  ( (MissingZero!736 (index!5114 (_ BitVec 32))) (Found!736 (index!5115 (_ BitVec 32))) (Intermediate!736 (undefined!1548 Bool) (index!5116 (_ BitVec 32)) (x!22436 (_ BitVec 32))) (Undefined!736) (MissingVacant!736 (index!5117 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10342 (_ BitVec 32)) SeekEntryResult!736)

(assert (=> b!214896 (= res!105185 (not (= (seekEntryOrOpen!0 key!932 (_keys!6061 thiss!1504) (mask!9715 thiss!1504)) (MissingZero!736 index!297))))))

(declare-fun b!214897 () Bool)

(declare-fun e!139775 () Bool)

(assert (=> b!214897 (= e!139775 tp_is_empty!5561)))

(declare-fun b!214898 () Bool)

(declare-fun res!105186 () Bool)

(assert (=> b!214898 (=> (not res!105186) (not e!139777))))

(assert (=> b!214898 (= res!105186 (and (bvsge (mask!9715 thiss!1504) #b00000000000000000000000000000000) (= (size!5230 (_keys!6061 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9715 thiss!1504)))))))

(declare-fun e!139780 () Bool)

(declare-fun array_inv!3235 (array!10342) Bool)

(declare-fun array_inv!3236 (array!10340) Bool)

(assert (=> b!214899 (= e!139778 (and tp!20197 tp_is_empty!5561 (array_inv!3235 (_keys!6061 thiss!1504)) (array_inv!3236 (_values!4020 thiss!1504)) e!139780))))

(declare-fun b!214900 () Bool)

(declare-fun res!105184 () Bool)

(assert (=> b!214900 (=> (not res!105184) (not e!139777))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!214900 (= res!105184 (validMask!0 (mask!9715 thiss!1504)))))

(declare-fun b!214901 () Bool)

(assert (=> b!214901 (= e!139780 (and e!139775 mapRes!9470))))

(declare-fun condMapEmpty!9470 () Bool)

(declare-fun mapDefault!9470 () ValueCell!2437)

