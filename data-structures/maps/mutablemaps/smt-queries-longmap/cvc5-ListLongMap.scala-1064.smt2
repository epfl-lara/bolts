; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22078 () Bool)

(assert start!22078)

(declare-fun b!228481 () Bool)

(declare-fun b_free!6133 () Bool)

(declare-fun b_next!6133 () Bool)

(assert (=> b!228481 (= b_free!6133 (not b_next!6133))))

(declare-fun tp!21540 () Bool)

(declare-fun b_and!13049 () Bool)

(assert (=> b!228481 (= tp!21540 b_and!13049)))

(declare-fun b!228460 () Bool)

(declare-datatypes ((Unit!6948 0))(
  ( (Unit!6949) )
))
(declare-fun e!148239 () Unit!6948)

(declare-fun lt!114984 () Unit!6948)

(assert (=> b!228460 (= e!148239 lt!114984)))

(declare-datatypes ((V!7641 0))(
  ( (V!7642 (val!3042 Int)) )
))
(declare-datatypes ((ValueCell!2654 0))(
  ( (ValueCellFull!2654 (v!5058 V!7641)) (EmptyCell!2654) )
))
(declare-datatypes ((array!11232 0))(
  ( (array!11233 (arr!5335 (Array (_ BitVec 32) ValueCell!2654)) (size!5668 (_ BitVec 32))) )
))
(declare-datatypes ((array!11234 0))(
  ( (array!11235 (arr!5336 (Array (_ BitVec 32) (_ BitVec 64))) (size!5669 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3208 0))(
  ( (LongMapFixedSize!3209 (defaultEntry!4263 Int) (mask!10135 (_ BitVec 32)) (extraKeys!4000 (_ BitVec 32)) (zeroValue!4104 V!7641) (minValue!4104 V!7641) (_size!1653 (_ BitVec 32)) (_keys!6317 array!11234) (_values!4246 array!11232) (_vacant!1653 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3208)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!285 (array!11234 array!11232 (_ BitVec 32) (_ BitVec 32) V!7641 V!7641 (_ BitVec 64) Int) Unit!6948)

(assert (=> b!228460 (= lt!114984 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!285 (_keys!6317 thiss!1504) (_values!4246 thiss!1504) (mask!10135 thiss!1504) (extraKeys!4000 thiss!1504) (zeroValue!4104 thiss!1504) (minValue!4104 thiss!1504) key!932 (defaultEntry!4263 thiss!1504)))))

(declare-fun c!37874 () Bool)

(declare-datatypes ((SeekEntryResult!918 0))(
  ( (MissingZero!918 (index!5842 (_ BitVec 32))) (Found!918 (index!5843 (_ BitVec 32))) (Intermediate!918 (undefined!1730 Bool) (index!5844 (_ BitVec 32)) (x!23346 (_ BitVec 32))) (Undefined!918) (MissingVacant!918 (index!5845 (_ BitVec 32))) )
))
(declare-fun lt!114981 () SeekEntryResult!918)

(assert (=> b!228460 (= c!37874 (is-MissingZero!918 lt!114981))))

(declare-fun e!148235 () Bool)

(assert (=> b!228460 e!148235))

(declare-fun b!228461 () Bool)

(declare-fun e!148236 () Bool)

(assert (=> b!228461 (= e!148236 true)))

(declare-fun lt!114980 () Bool)

(declare-datatypes ((List!3432 0))(
  ( (Nil!3429) (Cons!3428 (h!4076 (_ BitVec 64)) (t!8399 List!3432)) )
))
(declare-fun arrayNoDuplicates!0 (array!11234 (_ BitVec 32) List!3432) Bool)

(assert (=> b!228461 (= lt!114980 (arrayNoDuplicates!0 (_keys!6317 thiss!1504) #b00000000000000000000000000000000 Nil!3429))))

(declare-fun b!228462 () Bool)

(declare-fun e!148234 () Bool)

(declare-fun tp_is_empty!5995 () Bool)

(assert (=> b!228462 (= e!148234 tp_is_empty!5995)))

(declare-fun b!228463 () Bool)

(declare-fun e!148227 () Bool)

(declare-fun e!148240 () Bool)

(assert (=> b!228463 (= e!148227 e!148240)))

(declare-fun res!112471 () Bool)

(assert (=> b!228463 (=> (not res!112471) (not e!148240))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!228463 (= res!112471 (inRange!0 index!297 (mask!10135 thiss!1504)))))

(declare-fun lt!114985 () Unit!6948)

(assert (=> b!228463 (= lt!114985 e!148239)))

(declare-fun c!37876 () Bool)

(declare-datatypes ((tuple2!4486 0))(
  ( (tuple2!4487 (_1!2253 (_ BitVec 64)) (_2!2253 V!7641)) )
))
(declare-datatypes ((List!3433 0))(
  ( (Nil!3430) (Cons!3429 (h!4077 tuple2!4486) (t!8400 List!3433)) )
))
(declare-datatypes ((ListLongMap!3413 0))(
  ( (ListLongMap!3414 (toList!1722 List!3433)) )
))
(declare-fun contains!1590 (ListLongMap!3413 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1245 (array!11234 array!11232 (_ BitVec 32) (_ BitVec 32) V!7641 V!7641 (_ BitVec 32) Int) ListLongMap!3413)

(assert (=> b!228463 (= c!37876 (contains!1590 (getCurrentListMap!1245 (_keys!6317 thiss!1504) (_values!4246 thiss!1504) (mask!10135 thiss!1504) (extraKeys!4000 thiss!1504) (zeroValue!4104 thiss!1504) (minValue!4104 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4263 thiss!1504)) key!932))))

(declare-fun b!228464 () Bool)

(declare-fun c!37875 () Bool)

(assert (=> b!228464 (= c!37875 (is-MissingVacant!918 lt!114981))))

(declare-fun e!148238 () Bool)

(assert (=> b!228464 (= e!148235 e!148238)))

(declare-fun b!228465 () Bool)

(declare-fun e!148229 () Bool)

(declare-fun mapRes!10162 () Bool)

(assert (=> b!228465 (= e!148229 (and e!148234 mapRes!10162))))

(declare-fun condMapEmpty!10162 () Bool)

(declare-fun mapDefault!10162 () ValueCell!2654)

