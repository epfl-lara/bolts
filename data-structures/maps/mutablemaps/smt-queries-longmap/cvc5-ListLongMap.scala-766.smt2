; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18076 () Bool)

(assert start!18076)

(declare-fun b!179809 () Bool)

(declare-fun b_free!4435 () Bool)

(declare-fun b_next!4435 () Bool)

(assert (=> b!179809 (= b_free!4435 (not b_next!4435))))

(declare-fun tp!16036 () Bool)

(declare-fun b_and!10987 () Bool)

(assert (=> b!179809 (= tp!16036 b_and!10987)))

(declare-fun mapIsEmpty!7204 () Bool)

(declare-fun mapRes!7204 () Bool)

(assert (=> mapIsEmpty!7204 mapRes!7204))

(declare-fun b!179799 () Bool)

(declare-fun res!85184 () Bool)

(declare-fun e!118431 () Bool)

(assert (=> b!179799 (=> (not res!85184) (not e!118431))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!5257 0))(
  ( (V!5258 (val!2148 Int)) )
))
(declare-datatypes ((ValueCell!1760 0))(
  ( (ValueCellFull!1760 (v!4033 V!5257)) (EmptyCell!1760) )
))
(declare-datatypes ((array!7582 0))(
  ( (array!7583 (arr!3590 (Array (_ BitVec 32) (_ BitVec 64))) (size!3898 (_ BitVec 32))) )
))
(declare-datatypes ((array!7584 0))(
  ( (array!7585 (arr!3591 (Array (_ BitVec 32) ValueCell!1760)) (size!3899 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2428 0))(
  ( (LongMapFixedSize!2429 (defaultEntry!3690 Int) (mask!8681 (_ BitVec 32)) (extraKeys!3427 (_ BitVec 32)) (zeroValue!3531 V!5257) (minValue!3531 V!5257) (_size!1263 (_ BitVec 32)) (_keys!5581 array!7582) (_values!3673 array!7584) (_vacant!1263 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2428)

(declare-datatypes ((SeekEntryResult!594 0))(
  ( (MissingZero!594 (index!4544 (_ BitVec 32))) (Found!594 (index!4545 (_ BitVec 32))) (Intermediate!594 (undefined!1406 Bool) (index!4546 (_ BitVec 32)) (x!19668 (_ BitVec 32))) (Undefined!594) (MissingVacant!594 (index!4547 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7582 (_ BitVec 32)) SeekEntryResult!594)

(assert (=> b!179799 (= res!85184 (is-Undefined!594 (seekEntryOrOpen!0 key!828 (_keys!5581 thiss!1248) (mask!8681 thiss!1248))))))

(declare-fun b!179800 () Bool)

(declare-fun res!85187 () Bool)

(assert (=> b!179800 (=> (not res!85187) (not e!118431))))

(assert (=> b!179800 (= res!85187 (and (= (size!3899 (_values!3673 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8681 thiss!1248))) (= (size!3898 (_keys!5581 thiss!1248)) (size!3899 (_values!3673 thiss!1248))) (bvsge (mask!8681 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3427 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3427 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!179801 () Bool)

(declare-fun res!85188 () Bool)

(assert (=> b!179801 (=> (not res!85188) (not e!118431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7582 (_ BitVec 32)) Bool)

(assert (=> b!179801 (= res!85188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5581 thiss!1248) (mask!8681 thiss!1248)))))

(declare-fun b!179802 () Bool)

(assert (=> b!179802 (= e!118431 false)))

(declare-fun lt!88860 () Bool)

(declare-datatypes ((List!2301 0))(
  ( (Nil!2298) (Cons!2297 (h!2922 (_ BitVec 64)) (t!7157 List!2301)) )
))
(declare-fun arrayNoDuplicates!0 (array!7582 (_ BitVec 32) List!2301) Bool)

(assert (=> b!179802 (= lt!88860 (arrayNoDuplicates!0 (_keys!5581 thiss!1248) #b00000000000000000000000000000000 Nil!2298))))

(declare-fun b!179803 () Bool)

(declare-fun e!118428 () Bool)

(declare-fun tp_is_empty!4207 () Bool)

(assert (=> b!179803 (= e!118428 tp_is_empty!4207)))

(declare-fun b!179804 () Bool)

(declare-fun res!85189 () Bool)

(assert (=> b!179804 (=> (not res!85189) (not e!118431))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!179804 (= res!85189 (validMask!0 (mask!8681 thiss!1248)))))

(declare-fun b!179805 () Bool)

(declare-fun e!118427 () Bool)

(assert (=> b!179805 (= e!118427 tp_is_empty!4207)))

(declare-fun b!179806 () Bool)

(declare-fun e!118429 () Bool)

(assert (=> b!179806 (= e!118429 (and e!118427 mapRes!7204))))

(declare-fun condMapEmpty!7204 () Bool)

(declare-fun mapDefault!7204 () ValueCell!1760)

