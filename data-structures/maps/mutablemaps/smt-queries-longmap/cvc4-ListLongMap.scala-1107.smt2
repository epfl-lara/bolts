; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22866 () Bool)

(assert start!22866)

(declare-fun b!238076 () Bool)

(declare-fun b_free!6395 () Bool)

(declare-fun b_next!6395 () Bool)

(assert (=> b!238076 (= b_free!6395 (not b_next!6395))))

(declare-fun tp!22383 () Bool)

(declare-fun b_and!13375 () Bool)

(assert (=> b!238076 (= tp!22383 b_and!13375)))

(declare-fun b!238075 () Bool)

(declare-fun e!154596 () Bool)

(declare-datatypes ((V!7989 0))(
  ( (V!7990 (val!3173 Int)) )
))
(declare-datatypes ((ValueCell!2785 0))(
  ( (ValueCellFull!2785 (v!5205 V!7989)) (EmptyCell!2785) )
))
(declare-datatypes ((array!11788 0))(
  ( (array!11789 (arr!5597 (Array (_ BitVec 32) ValueCell!2785)) (size!5938 (_ BitVec 32))) )
))
(declare-datatypes ((array!11790 0))(
  ( (array!11791 (arr!5598 (Array (_ BitVec 32) (_ BitVec 64))) (size!5939 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3470 0))(
  ( (LongMapFixedSize!3471 (defaultEntry!4418 Int) (mask!10444 (_ BitVec 32)) (extraKeys!4155 (_ BitVec 32)) (zeroValue!4259 V!7989) (minValue!4259 V!7989) (_size!1784 (_ BitVec 32)) (_keys!6516 array!11790) (_values!4401 array!11788) (_vacant!1784 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3470)

(declare-datatypes ((List!3595 0))(
  ( (Nil!3592) (Cons!3591 (h!4247 (_ BitVec 64)) (t!8594 List!3595)) )
))
(declare-fun arrayNoDuplicates!0 (array!11790 (_ BitVec 32) List!3595) Bool)

(assert (=> b!238075 (= e!154596 (not (arrayNoDuplicates!0 (_keys!6516 thiss!1504) #b00000000000000000000000000000000 Nil!3592)))))

(declare-fun res!116682 () Bool)

(declare-fun e!154595 () Bool)

(assert (=> start!22866 (=> (not res!116682) (not e!154595))))

(declare-fun valid!1362 (LongMapFixedSize!3470) Bool)

(assert (=> start!22866 (= res!116682 (valid!1362 thiss!1504))))

(assert (=> start!22866 e!154595))

(declare-fun e!154599 () Bool)

(assert (=> start!22866 e!154599))

(assert (=> start!22866 true))

(declare-fun e!154597 () Bool)

(declare-fun tp_is_empty!6257 () Bool)

(declare-fun array_inv!3689 (array!11790) Bool)

(declare-fun array_inv!3690 (array!11788) Bool)

(assert (=> b!238076 (= e!154599 (and tp!22383 tp_is_empty!6257 (array_inv!3689 (_keys!6516 thiss!1504)) (array_inv!3690 (_values!4401 thiss!1504)) e!154597))))

(declare-fun b!238077 () Bool)

(declare-fun res!116681 () Bool)

(assert (=> b!238077 (=> (not res!116681) (not e!154596))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11790 (_ BitVec 32)) Bool)

(assert (=> b!238077 (= res!116681 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6516 thiss!1504) (mask!10444 thiss!1504)))))

(declare-fun b!238078 () Bool)

(assert (=> b!238078 (= e!154595 e!154596)))

(declare-fun res!116683 () Bool)

(assert (=> b!238078 (=> (not res!116683) (not e!154596))))

(declare-datatypes ((SeekEntryResult!1024 0))(
  ( (MissingZero!1024 (index!6266 (_ BitVec 32))) (Found!1024 (index!6267 (_ BitVec 32))) (Intermediate!1024 (undefined!1836 Bool) (index!6268 (_ BitVec 32)) (x!24020 (_ BitVec 32))) (Undefined!1024) (MissingVacant!1024 (index!6269 (_ BitVec 32))) )
))
(declare-fun lt!120424 () SeekEntryResult!1024)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!238078 (= res!116683 (or (= lt!120424 (MissingZero!1024 index!297)) (= lt!120424 (MissingVacant!1024 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11790 (_ BitVec 32)) SeekEntryResult!1024)

(assert (=> b!238078 (= lt!120424 (seekEntryOrOpen!0 key!932 (_keys!6516 thiss!1504) (mask!10444 thiss!1504)))))

(declare-fun b!238079 () Bool)

(declare-fun e!154600 () Bool)

(assert (=> b!238079 (= e!154600 tp_is_empty!6257)))

(declare-fun b!238080 () Bool)

(declare-fun mapRes!10611 () Bool)

(assert (=> b!238080 (= e!154597 (and e!154600 mapRes!10611))))

(declare-fun condMapEmpty!10611 () Bool)

(declare-fun mapDefault!10611 () ValueCell!2785)

