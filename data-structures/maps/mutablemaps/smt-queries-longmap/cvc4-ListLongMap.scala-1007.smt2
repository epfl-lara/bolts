; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21658 () Bool)

(assert start!21658)

(declare-fun b!217085 () Bool)

(declare-fun b_free!5795 () Bool)

(declare-fun b_next!5795 () Bool)

(assert (=> b!217085 (= b_free!5795 (not b_next!5795))))

(declare-fun tp!20520 () Bool)

(declare-fun b_and!12703 () Bool)

(assert (=> b!217085 (= tp!20520 b_and!12703)))

(declare-fun tp_is_empty!5657 () Bool)

(declare-datatypes ((V!7189 0))(
  ( (V!7190 (val!2873 Int)) )
))
(declare-datatypes ((ValueCell!2485 0))(
  ( (ValueCellFull!2485 (v!4887 V!7189)) (EmptyCell!2485) )
))
(declare-datatypes ((array!10552 0))(
  ( (array!10553 (arr!4997 (Array (_ BitVec 32) ValueCell!2485)) (size!5329 (_ BitVec 32))) )
))
(declare-datatypes ((array!10554 0))(
  ( (array!10555 (arr!4998 (Array (_ BitVec 32) (_ BitVec 64))) (size!5330 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2870 0))(
  ( (LongMapFixedSize!2871 (defaultEntry!4085 Int) (mask!9834 (_ BitVec 32)) (extraKeys!3822 (_ BitVec 32)) (zeroValue!3926 V!7189) (minValue!3926 V!7189) (_size!1484 (_ BitVec 32)) (_keys!6134 array!10554) (_values!4068 array!10552) (_vacant!1484 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2870)

(declare-fun e!141240 () Bool)

(declare-fun e!141241 () Bool)

(declare-fun array_inv!3299 (array!10554) Bool)

(declare-fun array_inv!3300 (array!10552) Bool)

(assert (=> b!217085 (= e!141240 (and tp!20520 tp_is_empty!5657 (array_inv!3299 (_keys!6134 thiss!1504)) (array_inv!3300 (_values!4068 thiss!1504)) e!141241))))

(declare-fun b!217086 () Bool)

(declare-fun res!106268 () Bool)

(declare-fun e!141238 () Bool)

(assert (=> b!217086 (=> (not res!106268) (not e!141238))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!217086 (= res!106268 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!217087 () Bool)

(declare-fun e!141237 () Bool)

(assert (=> b!217087 (= e!141237 tp_is_empty!5657)))

(declare-fun b!217088 () Bool)

(declare-fun e!141239 () Bool)

(assert (=> b!217088 (= e!141238 e!141239)))

(declare-fun res!106270 () Bool)

(assert (=> b!217088 (=> (not res!106270) (not e!141239))))

(declare-datatypes ((SeekEntryResult!771 0))(
  ( (MissingZero!771 (index!5254 (_ BitVec 32))) (Found!771 (index!5255 (_ BitVec 32))) (Intermediate!771 (undefined!1583 Bool) (index!5256 (_ BitVec 32)) (x!22715 (_ BitVec 32))) (Undefined!771) (MissingVacant!771 (index!5257 (_ BitVec 32))) )
))
(declare-fun lt!111313 () SeekEntryResult!771)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217088 (= res!106270 (or (= lt!111313 (MissingZero!771 index!297)) (= lt!111313 (MissingVacant!771 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10554 (_ BitVec 32)) SeekEntryResult!771)

(assert (=> b!217088 (= lt!111313 (seekEntryOrOpen!0 key!932 (_keys!6134 thiss!1504) (mask!9834 thiss!1504)))))

(declare-fun b!217089 () Bool)

(declare-fun res!106267 () Bool)

(assert (=> b!217089 (=> (not res!106267) (not e!141239))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217089 (= res!106267 (validMask!0 (mask!9834 thiss!1504)))))

(declare-fun b!217090 () Bool)

(declare-fun e!141242 () Bool)

(declare-fun mapRes!9648 () Bool)

(assert (=> b!217090 (= e!141241 (and e!141242 mapRes!9648))))

(declare-fun condMapEmpty!9648 () Bool)

(declare-fun mapDefault!9648 () ValueCell!2485)

