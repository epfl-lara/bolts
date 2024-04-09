; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18554 () Bool)

(assert start!18554)

(declare-fun b!183714 () Bool)

(declare-fun b_free!4535 () Bool)

(declare-fun b_next!4535 () Bool)

(assert (=> b!183714 (= b_free!4535 (not b_next!4535))))

(declare-fun tp!16380 () Bool)

(declare-fun b_and!11129 () Bool)

(assert (=> b!183714 (= tp!16380 b_and!11129)))

(declare-fun b!183706 () Bool)

(declare-fun res!86961 () Bool)

(declare-fun e!120953 () Bool)

(assert (=> b!183706 (=> (not res!86961) (not e!120953))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!183706 (= res!86961 (not (= key!828 (bvneg key!828))))))

(declare-fun b!183707 () Bool)

(declare-fun e!120952 () Bool)

(declare-datatypes ((V!5389 0))(
  ( (V!5390 (val!2198 Int)) )
))
(declare-datatypes ((ValueCell!1810 0))(
  ( (ValueCellFull!1810 (v!4098 V!5389)) (EmptyCell!1810) )
))
(declare-datatypes ((array!7808 0))(
  ( (array!7809 (arr!3690 (Array (_ BitVec 32) (_ BitVec 64))) (size!4003 (_ BitVec 32))) )
))
(declare-datatypes ((array!7810 0))(
  ( (array!7811 (arr!3691 (Array (_ BitVec 32) ValueCell!1810)) (size!4004 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2528 0))(
  ( (LongMapFixedSize!2529 (defaultEntry!3756 Int) (mask!8826 (_ BitVec 32)) (extraKeys!3493 (_ BitVec 32)) (zeroValue!3597 V!5389) (minValue!3597 V!5389) (_size!1313 (_ BitVec 32)) (_keys!5678 array!7808) (_values!3739 array!7810) (_vacant!1313 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2528)

(assert (=> b!183707 (= e!120952 (and (= (size!4004 (_values!3739 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8826 thiss!1248))) (not (= (size!4003 (_keys!5678 thiss!1248)) (size!4004 (_values!3739 thiss!1248))))))))

(declare-fun b!183708 () Bool)

(assert (=> b!183708 (= e!120953 e!120952)))

(declare-fun res!86959 () Bool)

(assert (=> b!183708 (=> (not res!86959) (not e!120952))))

(declare-datatypes ((SeekEntryResult!633 0))(
  ( (MissingZero!633 (index!4702 (_ BitVec 32))) (Found!633 (index!4703 (_ BitVec 32))) (Intermediate!633 (undefined!1445 Bool) (index!4704 (_ BitVec 32)) (x!20013 (_ BitVec 32))) (Undefined!633) (MissingVacant!633 (index!4705 (_ BitVec 32))) )
))
(declare-fun lt!90853 () SeekEntryResult!633)

(assert (=> b!183708 (= res!86959 (and (not (is-Undefined!633 lt!90853)) (not (is-MissingVacant!633 lt!90853)) (not (is-MissingZero!633 lt!90853)) (is-Found!633 lt!90853)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7808 (_ BitVec 32)) SeekEntryResult!633)

(assert (=> b!183708 (= lt!90853 (seekEntryOrOpen!0 key!828 (_keys!5678 thiss!1248) (mask!8826 thiss!1248)))))

(declare-fun res!86963 () Bool)

(assert (=> start!18554 (=> (not res!86963) (not e!120953))))

(declare-fun valid!1038 (LongMapFixedSize!2528) Bool)

(assert (=> start!18554 (= res!86963 (valid!1038 thiss!1248))))

(assert (=> start!18554 e!120953))

(declare-fun e!120955 () Bool)

(assert (=> start!18554 e!120955))

(assert (=> start!18554 true))

(declare-fun b!183709 () Bool)

(declare-fun e!120951 () Bool)

(declare-fun e!120956 () Bool)

(declare-fun mapRes!7398 () Bool)

(assert (=> b!183709 (= e!120951 (and e!120956 mapRes!7398))))

(declare-fun condMapEmpty!7398 () Bool)

(declare-fun mapDefault!7398 () ValueCell!1810)

