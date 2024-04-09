; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18400 () Bool)

(assert start!18400)

(declare-fun b!182360 () Bool)

(declare-fun b_free!4499 () Bool)

(declare-fun b_next!4499 () Bool)

(assert (=> b!182360 (= b_free!4499 (not b_next!4499))))

(declare-fun tp!16255 () Bool)

(declare-fun b_and!11079 () Bool)

(assert (=> b!182360 (= tp!16255 b_and!11079)))

(declare-fun b!182358 () Bool)

(declare-fun res!86321 () Bool)

(declare-fun e!120091 () Bool)

(assert (=> b!182358 (=> (not res!86321) (not e!120091))))

(declare-datatypes ((V!5341 0))(
  ( (V!5342 (val!2180 Int)) )
))
(declare-datatypes ((ValueCell!1792 0))(
  ( (ValueCellFull!1792 (v!4075 V!5341)) (EmptyCell!1792) )
))
(declare-datatypes ((array!7726 0))(
  ( (array!7727 (arr!3654 (Array (_ BitVec 32) (_ BitVec 64))) (size!3966 (_ BitVec 32))) )
))
(declare-datatypes ((array!7728 0))(
  ( (array!7729 (arr!3655 (Array (_ BitVec 32) ValueCell!1792)) (size!3967 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2492 0))(
  ( (LongMapFixedSize!2493 (defaultEntry!3732 Int) (mask!8773 (_ BitVec 32)) (extraKeys!3469 (_ BitVec 32)) (zeroValue!3573 V!5341) (minValue!3573 V!5341) (_size!1295 (_ BitVec 32)) (_keys!5643 array!7726) (_values!3715 array!7728) (_vacant!1295 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2492)

(assert (=> b!182358 (= res!86321 (and (= (size!3967 (_values!3715 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8773 thiss!1248))) (= (size!3966 (_keys!5643 thiss!1248)) (size!3967 (_values!3715 thiss!1248))) (bvsge (mask!8773 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3469 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3469 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!182359 () Bool)

(declare-fun e!120097 () Bool)

(declare-fun tp_is_empty!4271 () Bool)

(assert (=> b!182359 (= e!120097 tp_is_empty!4271)))

(declare-fun e!120092 () Bool)

(declare-fun e!120094 () Bool)

(declare-fun array_inv!2347 (array!7726) Bool)

(declare-fun array_inv!2348 (array!7728) Bool)

(assert (=> b!182360 (= e!120092 (and tp!16255 tp_is_empty!4271 (array_inv!2347 (_keys!5643 thiss!1248)) (array_inv!2348 (_values!3715 thiss!1248)) e!120094))))

(declare-fun mapIsEmpty!7328 () Bool)

(declare-fun mapRes!7328 () Bool)

(assert (=> mapIsEmpty!7328 mapRes!7328))

(declare-fun b!182361 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7726 (_ BitVec 32)) Bool)

(assert (=> b!182361 (= e!120091 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5643 thiss!1248) (mask!8773 thiss!1248))))))

(declare-fun b!182362 () Bool)

(declare-fun res!86324 () Bool)

(declare-fun e!120095 () Bool)

(assert (=> b!182362 (=> (not res!86324) (not e!120095))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!182362 (= res!86324 (not (= key!828 (bvneg key!828))))))

(declare-fun res!86320 () Bool)

(assert (=> start!18400 (=> (not res!86320) (not e!120095))))

(declare-fun valid!1024 (LongMapFixedSize!2492) Bool)

(assert (=> start!18400 (= res!86320 (valid!1024 thiss!1248))))

(assert (=> start!18400 e!120095))

(assert (=> start!18400 e!120092))

(assert (=> start!18400 true))

(declare-fun b!182363 () Bool)

(declare-fun e!120093 () Bool)

(assert (=> b!182363 (= e!120093 tp_is_empty!4271)))

(declare-fun b!182364 () Bool)

(declare-fun res!86322 () Bool)

(assert (=> b!182364 (=> (not res!86322) (not e!120091))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!182364 (= res!86322 (validMask!0 (mask!8773 thiss!1248)))))

(declare-fun mapNonEmpty!7328 () Bool)

(declare-fun tp!16256 () Bool)

(assert (=> mapNonEmpty!7328 (= mapRes!7328 (and tp!16256 e!120097))))

(declare-fun mapValue!7328 () ValueCell!1792)

(declare-fun mapRest!7328 () (Array (_ BitVec 32) ValueCell!1792))

(declare-fun mapKey!7328 () (_ BitVec 32))

(assert (=> mapNonEmpty!7328 (= (arr!3655 (_values!3715 thiss!1248)) (store mapRest!7328 mapKey!7328 mapValue!7328))))

(declare-fun b!182365 () Bool)

(assert (=> b!182365 (= e!120095 e!120091)))

(declare-fun res!86323 () Bool)

(assert (=> b!182365 (=> (not res!86323) (not e!120091))))

(declare-datatypes ((SeekEntryResult!616 0))(
  ( (MissingZero!616 (index!4634 (_ BitVec 32))) (Found!616 (index!4635 (_ BitVec 32))) (Intermediate!616 (undefined!1428 Bool) (index!4636 (_ BitVec 32)) (x!19890 (_ BitVec 32))) (Undefined!616) (MissingVacant!616 (index!4637 (_ BitVec 32))) )
))
(declare-fun lt!90218 () SeekEntryResult!616)

(assert (=> b!182365 (= res!86323 (and (not (is-Undefined!616 lt!90218)) (not (is-MissingVacant!616 lt!90218)) (not (is-MissingZero!616 lt!90218)) (is-Found!616 lt!90218)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7726 (_ BitVec 32)) SeekEntryResult!616)

(assert (=> b!182365 (= lt!90218 (seekEntryOrOpen!0 key!828 (_keys!5643 thiss!1248) (mask!8773 thiss!1248)))))

(declare-fun b!182366 () Bool)

(assert (=> b!182366 (= e!120094 (and e!120093 mapRes!7328))))

(declare-fun condMapEmpty!7328 () Bool)

(declare-fun mapDefault!7328 () ValueCell!1792)

