; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21602 () Bool)

(assert start!21602)

(declare-fun b!216333 () Bool)

(declare-fun b_free!5753 () Bool)

(declare-fun b_next!5753 () Bool)

(assert (=> b!216333 (= b_free!5753 (not b_next!5753))))

(declare-fun tp!20391 () Bool)

(declare-fun b_and!12661 () Bool)

(assert (=> b!216333 (= tp!20391 b_and!12661)))

(declare-fun b!216330 () Bool)

(declare-fun res!105801 () Bool)

(declare-fun e!140758 () Bool)

(assert (=> b!216330 (=> (not res!105801) (not e!140758))))

(declare-datatypes ((V!7133 0))(
  ( (V!7134 (val!2852 Int)) )
))
(declare-datatypes ((ValueCell!2464 0))(
  ( (ValueCellFull!2464 (v!4866 V!7133)) (EmptyCell!2464) )
))
(declare-datatypes ((array!10466 0))(
  ( (array!10467 (arr!4955 (Array (_ BitVec 32) ValueCell!2464)) (size!5287 (_ BitVec 32))) )
))
(declare-datatypes ((array!10468 0))(
  ( (array!10469 (arr!4956 (Array (_ BitVec 32) (_ BitVec 64))) (size!5288 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2828 0))(
  ( (LongMapFixedSize!2829 (defaultEntry!4064 Int) (mask!9796 (_ BitVec 32)) (extraKeys!3801 (_ BitVec 32)) (zeroValue!3905 V!7133) (minValue!3905 V!7133) (_size!1463 (_ BitVec 32)) (_keys!6111 array!10468) (_values!4047 array!10466) (_vacant!1463 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2828)

(declare-datatypes ((List!3166 0))(
  ( (Nil!3163) (Cons!3162 (h!3809 (_ BitVec 64)) (t!8129 List!3166)) )
))
(declare-fun arrayNoDuplicates!0 (array!10468 (_ BitVec 32) List!3166) Bool)

(assert (=> b!216330 (= res!105801 (arrayNoDuplicates!0 (_keys!6111 thiss!1504) #b00000000000000000000000000000000 Nil!3163))))

(declare-fun b!216331 () Bool)

(declare-fun e!140757 () Bool)

(assert (=> b!216331 (= e!140757 e!140758)))

(declare-fun res!105804 () Bool)

(assert (=> b!216331 (=> (not res!105804) (not e!140758))))

(declare-datatypes ((SeekEntryResult!754 0))(
  ( (MissingZero!754 (index!5186 (_ BitVec 32))) (Found!754 (index!5187 (_ BitVec 32))) (Intermediate!754 (undefined!1566 Bool) (index!5188 (_ BitVec 32)) (x!22634 (_ BitVec 32))) (Undefined!754) (MissingVacant!754 (index!5189 (_ BitVec 32))) )
))
(declare-fun lt!111169 () SeekEntryResult!754)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216331 (= res!105804 (or (= lt!111169 (MissingZero!754 index!297)) (= lt!111169 (MissingVacant!754 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10468 (_ BitVec 32)) SeekEntryResult!754)

(assert (=> b!216331 (= lt!111169 (seekEntryOrOpen!0 key!932 (_keys!6111 thiss!1504) (mask!9796 thiss!1504)))))

(declare-fun b!216332 () Bool)

(declare-fun e!140762 () Bool)

(declare-fun tp_is_empty!5615 () Bool)

(assert (=> b!216332 (= e!140762 tp_is_empty!5615)))

(declare-fun e!140761 () Bool)

(declare-fun e!140763 () Bool)

(declare-fun array_inv!3269 (array!10468) Bool)

(declare-fun array_inv!3270 (array!10466) Bool)

(assert (=> b!216333 (= e!140763 (and tp!20391 tp_is_empty!5615 (array_inv!3269 (_keys!6111 thiss!1504)) (array_inv!3270 (_values!4047 thiss!1504)) e!140761))))

(declare-fun res!105806 () Bool)

(assert (=> start!21602 (=> (not res!105806) (not e!140757))))

(declare-fun valid!1141 (LongMapFixedSize!2828) Bool)

(assert (=> start!21602 (= res!105806 (valid!1141 thiss!1504))))

(assert (=> start!21602 e!140757))

(assert (=> start!21602 e!140763))

(assert (=> start!21602 true))

(declare-fun b!216334 () Bool)

(declare-fun e!140759 () Bool)

(declare-fun mapRes!9582 () Bool)

(assert (=> b!216334 (= e!140761 (and e!140759 mapRes!9582))))

(declare-fun condMapEmpty!9582 () Bool)

(declare-fun mapDefault!9582 () ValueCell!2464)

