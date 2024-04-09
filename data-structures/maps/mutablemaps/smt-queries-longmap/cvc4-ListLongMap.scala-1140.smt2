; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23586 () Bool)

(assert start!23586)

(declare-fun b!247713 () Bool)

(declare-fun b_free!6593 () Bool)

(declare-fun b_next!6593 () Bool)

(assert (=> b!247713 (= b_free!6593 (not b_next!6593))))

(declare-fun tp!23027 () Bool)

(declare-fun b_and!13613 () Bool)

(assert (=> b!247713 (= tp!23027 b_and!13613)))

(declare-fun b!247696 () Bool)

(declare-datatypes ((Unit!7663 0))(
  ( (Unit!7664) )
))
(declare-fun e!160696 () Unit!7663)

(declare-fun Unit!7665 () Unit!7663)

(assert (=> b!247696 (= e!160696 Unit!7665)))

(declare-fun lt!124085 () Unit!7663)

(declare-datatypes ((V!8253 0))(
  ( (V!8254 (val!3272 Int)) )
))
(declare-datatypes ((ValueCell!2884 0))(
  ( (ValueCellFull!2884 (v!5326 V!8253)) (EmptyCell!2884) )
))
(declare-datatypes ((array!12216 0))(
  ( (array!12217 (arr!5795 (Array (_ BitVec 32) ValueCell!2884)) (size!6138 (_ BitVec 32))) )
))
(declare-datatypes ((array!12218 0))(
  ( (array!12219 (arr!5796 (Array (_ BitVec 32) (_ BitVec 64))) (size!6139 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3668 0))(
  ( (LongMapFixedSize!3669 (defaultEntry!4583 Int) (mask!10723 (_ BitVec 32)) (extraKeys!4320 (_ BitVec 32)) (zeroValue!4424 V!8253) (minValue!4424 V!8253) (_size!1883 (_ BitVec 32)) (_keys!6705 array!12218) (_values!4566 array!12216) (_vacant!1883 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3668)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!188 (array!12218 array!12216 (_ BitVec 32) (_ BitVec 32) V!8253 V!8253 (_ BitVec 64) (_ BitVec 32) Int) Unit!7663)

(assert (=> b!247696 (= lt!124085 (lemmaArrayContainsKeyThenInListMap!188 (_keys!6705 thiss!1504) (_values!4566 thiss!1504) (mask!10723 thiss!1504) (extraKeys!4320 thiss!1504) (zeroValue!4424 thiss!1504) (minValue!4424 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4583 thiss!1504)))))

(assert (=> b!247696 false))

(declare-fun b!247697 () Bool)

(declare-fun Unit!7666 () Unit!7663)

(assert (=> b!247697 (= e!160696 Unit!7666)))

(declare-fun b!247698 () Bool)

(declare-fun c!41464 () Bool)

(declare-datatypes ((SeekEntryResult!1115 0))(
  ( (MissingZero!1115 (index!6630 (_ BitVec 32))) (Found!1115 (index!6631 (_ BitVec 32))) (Intermediate!1115 (undefined!1927 Bool) (index!6632 (_ BitVec 32)) (x!24551 (_ BitVec 32))) (Undefined!1115) (MissingVacant!1115 (index!6633 (_ BitVec 32))) )
))
(declare-fun lt!124088 () SeekEntryResult!1115)

(assert (=> b!247698 (= c!41464 (is-MissingVacant!1115 lt!124088))))

(declare-fun e!160697 () Bool)

(declare-fun e!160700 () Bool)

(assert (=> b!247698 (= e!160697 e!160700)))

(declare-fun b!247699 () Bool)

(assert (=> b!247699 (= e!160700 (is-Undefined!1115 lt!124088))))

(declare-fun b!247700 () Bool)

(declare-fun res!121416 () Bool)

(declare-fun e!160705 () Bool)

(assert (=> b!247700 (=> (not res!121416) (not e!160705))))

(assert (=> b!247700 (= res!121416 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!247701 () Bool)

(declare-fun e!160698 () Bool)

(declare-fun e!160701 () Bool)

(assert (=> b!247701 (= e!160698 e!160701)))

(declare-fun res!121412 () Bool)

(assert (=> b!247701 (=> (not res!121412) (not e!160701))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!247701 (= res!121412 (inRange!0 index!297 (mask!10723 thiss!1504)))))

(declare-fun lt!124090 () Unit!7663)

(declare-fun e!160702 () Unit!7663)

(assert (=> b!247701 (= lt!124090 e!160702)))

(declare-fun c!41467 () Bool)

(declare-datatypes ((tuple2!4814 0))(
  ( (tuple2!4815 (_1!2417 (_ BitVec 64)) (_2!2417 V!8253)) )
))
(declare-datatypes ((List!3719 0))(
  ( (Nil!3716) (Cons!3715 (h!4373 tuple2!4814) (t!8750 List!3719)) )
))
(declare-datatypes ((ListLongMap!3741 0))(
  ( (ListLongMap!3742 (toList!1886 List!3719)) )
))
(declare-fun contains!1794 (ListLongMap!3741 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1409 (array!12218 array!12216 (_ BitVec 32) (_ BitVec 32) V!8253 V!8253 (_ BitVec 32) Int) ListLongMap!3741)

(assert (=> b!247701 (= c!41467 (contains!1794 (getCurrentListMap!1409 (_keys!6705 thiss!1504) (_values!4566 thiss!1504) (mask!10723 thiss!1504) (extraKeys!4320 thiss!1504) (zeroValue!4424 thiss!1504) (minValue!4424 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4583 thiss!1504)) key!932))))

(declare-fun b!247702 () Bool)

(declare-fun res!121414 () Bool)

(assert (=> b!247702 (= res!121414 (= (select (arr!5796 (_keys!6705 thiss!1504)) (index!6633 lt!124088)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!160704 () Bool)

(assert (=> b!247702 (=> (not res!121414) (not e!160704))))

(declare-fun call!23198 () Bool)

(declare-fun c!41465 () Bool)

(declare-fun bm!23195 () Bool)

(assert (=> bm!23195 (= call!23198 (inRange!0 (ite c!41465 (index!6630 lt!124088) (index!6633 lt!124088)) (mask!10723 thiss!1504)))))

(declare-fun b!247703 () Bool)

(declare-fun e!160699 () Bool)

(declare-fun tp_is_empty!6455 () Bool)

(assert (=> b!247703 (= e!160699 tp_is_empty!6455)))

(declare-fun res!121415 () Bool)

(assert (=> start!23586 (=> (not res!121415) (not e!160705))))

(declare-fun valid!1427 (LongMapFixedSize!3668) Bool)

(assert (=> start!23586 (= res!121415 (valid!1427 thiss!1504))))

(assert (=> start!23586 e!160705))

(declare-fun e!160709 () Bool)

(assert (=> start!23586 e!160709))

(assert (=> start!23586 true))

(declare-fun b!247704 () Bool)

(declare-fun res!121417 () Bool)

(declare-fun e!160703 () Bool)

(assert (=> b!247704 (=> (not res!121417) (not e!160703))))

(assert (=> b!247704 (= res!121417 call!23198)))

(assert (=> b!247704 (= e!160697 e!160703)))

(declare-fun b!247705 () Bool)

(declare-fun e!160707 () Bool)

(declare-fun mapRes!10958 () Bool)

(assert (=> b!247705 (= e!160707 (and e!160699 mapRes!10958))))

(declare-fun condMapEmpty!10958 () Bool)

(declare-fun mapDefault!10958 () ValueCell!2884)

