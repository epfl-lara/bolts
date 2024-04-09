; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21932 () Bool)

(assert start!21932)

(declare-fun b!222800 () Bool)

(declare-fun b_free!5987 () Bool)

(declare-fun b_next!5987 () Bool)

(assert (=> b!222800 (= b_free!5987 (not b_next!5987))))

(declare-fun tp!21102 () Bool)

(declare-fun b_and!12903 () Bool)

(assert (=> b!222800 (= tp!21102 b_and!12903)))

(declare-fun b!222788 () Bool)

(declare-fun res!109433 () Bool)

(declare-datatypes ((V!7445 0))(
  ( (V!7446 (val!2969 Int)) )
))
(declare-datatypes ((ValueCell!2581 0))(
  ( (ValueCellFull!2581 (v!4985 V!7445)) (EmptyCell!2581) )
))
(declare-datatypes ((array!10940 0))(
  ( (array!10941 (arr!5189 (Array (_ BitVec 32) ValueCell!2581)) (size!5522 (_ BitVec 32))) )
))
(declare-datatypes ((array!10942 0))(
  ( (array!10943 (arr!5190 (Array (_ BitVec 32) (_ BitVec 64))) (size!5523 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3062 0))(
  ( (LongMapFixedSize!3063 (defaultEntry!4190 Int) (mask!10012 (_ BitVec 32)) (extraKeys!3927 (_ BitVec 32)) (zeroValue!4031 V!7445) (minValue!4031 V!7445) (_size!1580 (_ BitVec 32)) (_keys!6244 array!10942) (_values!4173 array!10940) (_vacant!1580 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3062)

(declare-datatypes ((SeekEntryResult!852 0))(
  ( (MissingZero!852 (index!5578 (_ BitVec 32))) (Found!852 (index!5579 (_ BitVec 32))) (Intermediate!852 (undefined!1664 Bool) (index!5580 (_ BitVec 32)) (x!23080 (_ BitVec 32))) (Undefined!852) (MissingVacant!852 (index!5581 (_ BitVec 32))) )
))
(declare-fun lt!112774 () SeekEntryResult!852)

(assert (=> b!222788 (= res!109433 (= (select (arr!5190 (_keys!6244 thiss!1504)) (index!5581 lt!112774)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!144791 () Bool)

(assert (=> b!222788 (=> (not res!109433) (not e!144791))))

(declare-fun b!222789 () Bool)

(declare-datatypes ((Unit!6684 0))(
  ( (Unit!6685) )
))
(declare-fun e!144788 () Unit!6684)

(declare-fun Unit!6686 () Unit!6684)

(assert (=> b!222789 (= e!144788 Unit!6686)))

(declare-fun lt!112775 () Unit!6684)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!65 (array!10942 array!10940 (_ BitVec 32) (_ BitVec 32) V!7445 V!7445 (_ BitVec 64) (_ BitVec 32) Int) Unit!6684)

(assert (=> b!222789 (= lt!112775 (lemmaArrayContainsKeyThenInListMap!65 (_keys!6244 thiss!1504) (_values!4173 thiss!1504) (mask!10012 thiss!1504) (extraKeys!3927 thiss!1504) (zeroValue!4031 thiss!1504) (minValue!4031 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4190 thiss!1504)))))

(assert (=> b!222789 false))

(declare-fun b!222790 () Bool)

(declare-fun res!109435 () Bool)

(declare-fun e!144792 () Bool)

(assert (=> b!222790 (=> (not res!109435) (not e!144792))))

(declare-datatypes ((List!3331 0))(
  ( (Nil!3328) (Cons!3327 (h!3975 (_ BitVec 64)) (t!8298 List!3331)) )
))
(declare-fun noDuplicate!73 (List!3331) Bool)

(assert (=> b!222790 (= res!109435 (noDuplicate!73 Nil!3328))))

(declare-fun b!222791 () Bool)

(declare-fun e!144797 () Bool)

(assert (=> b!222791 (= e!144797 e!144792)))

(declare-fun res!109430 () Bool)

(assert (=> b!222791 (=> (not res!109430) (not e!144792))))

(assert (=> b!222791 (= res!109430 (and (bvslt (size!5523 (_keys!6244 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5523 (_keys!6244 thiss!1504)))))))

(declare-fun lt!112773 () Unit!6684)

(assert (=> b!222791 (= lt!112773 e!144788)))

(declare-fun c!36999 () Bool)

(declare-fun arrayContainsKey!0 (array!10942 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!222791 (= c!36999 (arrayContainsKey!0 (_keys!6244 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!222792 () Bool)

(declare-fun res!109431 () Bool)

(assert (=> b!222792 (=> (not res!109431) (not e!144792))))

(declare-fun contains!1530 (List!3331 (_ BitVec 64)) Bool)

(assert (=> b!222792 (= res!109431 (not (contains!1530 Nil!3328 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!222793 () Bool)

(declare-fun e!144799 () Bool)

(declare-fun e!144801 () Bool)

(declare-fun mapRes!9943 () Bool)

(assert (=> b!222793 (= e!144799 (and e!144801 mapRes!9943))))

(declare-fun condMapEmpty!9943 () Bool)

(declare-fun mapDefault!9943 () ValueCell!2581)

