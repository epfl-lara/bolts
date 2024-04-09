; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21618 () Bool)

(assert start!21618)

(declare-fun b!216435 () Bool)

(declare-fun b_free!5755 () Bool)

(declare-fun b_next!5755 () Bool)

(assert (=> b!216435 (= b_free!5755 (not b_next!5755))))

(declare-fun tp!20399 () Bool)

(declare-fun b_and!12663 () Bool)

(assert (=> b!216435 (= tp!20399 b_and!12663)))

(declare-fun res!105850 () Bool)

(declare-fun e!140817 () Bool)

(assert (=> start!21618 (=> (not res!105850) (not e!140817))))

(declare-datatypes ((V!7137 0))(
  ( (V!7138 (val!2853 Int)) )
))
(declare-datatypes ((ValueCell!2465 0))(
  ( (ValueCellFull!2465 (v!4867 V!7137)) (EmptyCell!2465) )
))
(declare-datatypes ((array!10472 0))(
  ( (array!10473 (arr!4957 (Array (_ BitVec 32) ValueCell!2465)) (size!5289 (_ BitVec 32))) )
))
(declare-datatypes ((array!10474 0))(
  ( (array!10475 (arr!4958 (Array (_ BitVec 32) (_ BitVec 64))) (size!5290 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2830 0))(
  ( (LongMapFixedSize!2831 (defaultEntry!4065 Int) (mask!9802 (_ BitVec 32)) (extraKeys!3802 (_ BitVec 32)) (zeroValue!3906 V!7137) (minValue!3906 V!7137) (_size!1464 (_ BitVec 32)) (_keys!6114 array!10474) (_values!4048 array!10472) (_vacant!1464 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2830)

(declare-fun valid!1142 (LongMapFixedSize!2830) Bool)

(assert (=> start!21618 (= res!105850 (valid!1142 thiss!1504))))

(assert (=> start!21618 e!140817))

(declare-fun e!140821 () Bool)

(assert (=> start!21618 e!140821))

(assert (=> start!21618 true))

(declare-fun b!216425 () Bool)

(declare-fun res!105848 () Bool)

(declare-fun e!140822 () Bool)

(assert (=> b!216425 (=> (not res!105848) (not e!140822))))

(assert (=> b!216425 (= res!105848 (and (= (size!5289 (_values!4048 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9802 thiss!1504))) (= (size!5290 (_keys!6114 thiss!1504)) (size!5289 (_values!4048 thiss!1504))) (bvsge (mask!9802 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3802 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3802 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!216426 () Bool)

(declare-fun e!140819 () Bool)

(declare-fun tp_is_empty!5617 () Bool)

(assert (=> b!216426 (= e!140819 tp_is_empty!5617)))

(declare-fun b!216427 () Bool)

(declare-fun res!105851 () Bool)

(assert (=> b!216427 (=> (not res!105851) (not e!140817))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!216427 (= res!105851 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!216428 () Bool)

(assert (=> b!216428 (= e!140817 e!140822)))

(declare-fun res!105847 () Bool)

(assert (=> b!216428 (=> (not res!105847) (not e!140822))))

(declare-datatypes ((SeekEntryResult!755 0))(
  ( (MissingZero!755 (index!5190 (_ BitVec 32))) (Found!755 (index!5191 (_ BitVec 32))) (Intermediate!755 (undefined!1567 Bool) (index!5192 (_ BitVec 32)) (x!22651 (_ BitVec 32))) (Undefined!755) (MissingVacant!755 (index!5193 (_ BitVec 32))) )
))
(declare-fun lt!111192 () SeekEntryResult!755)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216428 (= res!105847 (or (= lt!111192 (MissingZero!755 index!297)) (= lt!111192 (MissingVacant!755 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10474 (_ BitVec 32)) SeekEntryResult!755)

(assert (=> b!216428 (= lt!111192 (seekEntryOrOpen!0 key!932 (_keys!6114 thiss!1504) (mask!9802 thiss!1504)))))

(declare-fun b!216429 () Bool)

(assert (=> b!216429 (= e!140822 false)))

(declare-fun lt!111193 () Bool)

(declare-datatypes ((List!3167 0))(
  ( (Nil!3164) (Cons!3163 (h!3810 (_ BitVec 64)) (t!8130 List!3167)) )
))
(declare-fun arrayNoDuplicates!0 (array!10474 (_ BitVec 32) List!3167) Bool)

(assert (=> b!216429 (= lt!111193 (arrayNoDuplicates!0 (_keys!6114 thiss!1504) #b00000000000000000000000000000000 Nil!3164))))

(declare-fun b!216430 () Bool)

(declare-fun res!105852 () Bool)

(assert (=> b!216430 (=> (not res!105852) (not e!140822))))

(declare-datatypes ((tuple2!4238 0))(
  ( (tuple2!4239 (_1!2129 (_ BitVec 64)) (_2!2129 V!7137)) )
))
(declare-datatypes ((List!3168 0))(
  ( (Nil!3165) (Cons!3164 (h!3811 tuple2!4238) (t!8131 List!3168)) )
))
(declare-datatypes ((ListLongMap!3165 0))(
  ( (ListLongMap!3166 (toList!1598 List!3168)) )
))
(declare-fun contains!1433 (ListLongMap!3165 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1121 (array!10474 array!10472 (_ BitVec 32) (_ BitVec 32) V!7137 V!7137 (_ BitVec 32) Int) ListLongMap!3165)

(assert (=> b!216430 (= res!105852 (contains!1433 (getCurrentListMap!1121 (_keys!6114 thiss!1504) (_values!4048 thiss!1504) (mask!9802 thiss!1504) (extraKeys!3802 thiss!1504) (zeroValue!3906 thiss!1504) (minValue!3906 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4065 thiss!1504)) key!932))))

(declare-fun b!216431 () Bool)

(declare-fun res!105849 () Bool)

(assert (=> b!216431 (=> (not res!105849) (not e!140822))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10474 (_ BitVec 32)) Bool)

(assert (=> b!216431 (= res!105849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6114 thiss!1504) (mask!9802 thiss!1504)))))

(declare-fun b!216432 () Bool)

(declare-fun e!140820 () Bool)

(declare-fun mapRes!9588 () Bool)

(assert (=> b!216432 (= e!140820 (and e!140819 mapRes!9588))))

(declare-fun condMapEmpty!9588 () Bool)

(declare-fun mapDefault!9588 () ValueCell!2465)

