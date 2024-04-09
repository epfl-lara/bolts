; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16446 () Bool)

(assert start!16446)

(declare-fun b!163571 () Bool)

(declare-fun b_free!3803 () Bool)

(declare-fun b_next!3803 () Bool)

(assert (=> b!163571 (= b_free!3803 (not b_next!3803))))

(declare-fun tp!13996 () Bool)

(declare-fun b_and!10235 () Bool)

(assert (=> b!163571 (= tp!13996 b_and!10235)))

(declare-fun b!163568 () Bool)

(declare-fun e!107339 () Bool)

(declare-fun tp_is_empty!3605 () Bool)

(assert (=> b!163568 (= e!107339 tp_is_empty!3605)))

(declare-fun res!77418 () Bool)

(declare-fun e!107337 () Bool)

(assert (=> start!16446 (=> (not res!77418) (not e!107337))))

(declare-datatypes ((V!4453 0))(
  ( (V!4454 (val!1847 Int)) )
))
(declare-datatypes ((ValueCell!1459 0))(
  ( (ValueCellFull!1459 (v!3708 V!4453)) (EmptyCell!1459) )
))
(declare-datatypes ((array!6298 0))(
  ( (array!6299 (arr!2988 (Array (_ BitVec 32) (_ BitVec 64))) (size!3275 (_ BitVec 32))) )
))
(declare-datatypes ((array!6300 0))(
  ( (array!6301 (arr!2989 (Array (_ BitVec 32) ValueCell!1459)) (size!3276 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1826 0))(
  ( (LongMapFixedSize!1827 (defaultEntry!3355 Int) (mask!8019 (_ BitVec 32)) (extraKeys!3096 (_ BitVec 32)) (zeroValue!3198 V!4453) (minValue!3198 V!4453) (_size!962 (_ BitVec 32)) (_keys!5170 array!6298) (_values!3338 array!6300) (_vacant!962 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1826)

(declare-fun valid!809 (LongMapFixedSize!1826) Bool)

(assert (=> start!16446 (= res!77418 (valid!809 thiss!1248))))

(assert (=> start!16446 e!107337))

(declare-fun e!107336 () Bool)

(assert (=> start!16446 e!107336))

(assert (=> start!16446 true))

(declare-fun b!163569 () Bool)

(declare-fun res!77417 () Bool)

(assert (=> b!163569 (=> (not res!77417) (not e!107337))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!163569 (= res!77417 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!6113 () Bool)

(declare-fun mapRes!6113 () Bool)

(declare-fun tp!13997 () Bool)

(declare-fun e!107340 () Bool)

(assert (=> mapNonEmpty!6113 (= mapRes!6113 (and tp!13997 e!107340))))

(declare-fun mapKey!6113 () (_ BitVec 32))

(declare-fun mapRest!6113 () (Array (_ BitVec 32) ValueCell!1459))

(declare-fun mapValue!6113 () ValueCell!1459)

(assert (=> mapNonEmpty!6113 (= (arr!2989 (_values!3338 thiss!1248)) (store mapRest!6113 mapKey!6113 mapValue!6113))))

(declare-fun b!163570 () Bool)

(assert (=> b!163570 (= e!107340 tp_is_empty!3605)))

(declare-fun e!107342 () Bool)

(declare-fun array_inv!1903 (array!6298) Bool)

(declare-fun array_inv!1904 (array!6300) Bool)

(assert (=> b!163571 (= e!107336 (and tp!13996 tp_is_empty!3605 (array_inv!1903 (_keys!5170 thiss!1248)) (array_inv!1904 (_values!3338 thiss!1248)) e!107342))))

(declare-fun b!163572 () Bool)

(declare-fun res!77420 () Bool)

(declare-fun e!107341 () Bool)

(assert (=> b!163572 (=> (not res!77420) (not e!107341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!163572 (= res!77420 (validMask!0 (mask!8019 thiss!1248)))))

(declare-fun b!163573 () Bool)

(assert (=> b!163573 (= e!107337 e!107341)))

(declare-fun res!77419 () Bool)

(assert (=> b!163573 (=> (not res!77419) (not e!107341))))

(declare-datatypes ((SeekEntryResult!412 0))(
  ( (MissingZero!412 (index!3816 (_ BitVec 32))) (Found!412 (index!3817 (_ BitVec 32))) (Intermediate!412 (undefined!1224 Bool) (index!3818 (_ BitVec 32)) (x!18143 (_ BitVec 32))) (Undefined!412) (MissingVacant!412 (index!3819 (_ BitVec 32))) )
))
(declare-fun lt!82745 () SeekEntryResult!412)

(assert (=> b!163573 (= res!77419 (and (not (is-Undefined!412 lt!82745)) (not (is-MissingVacant!412 lt!82745)) (not (is-MissingZero!412 lt!82745)) (is-Found!412 lt!82745)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6298 (_ BitVec 32)) SeekEntryResult!412)

(assert (=> b!163573 (= lt!82745 (seekEntryOrOpen!0 key!828 (_keys!5170 thiss!1248) (mask!8019 thiss!1248)))))

(declare-fun b!163574 () Bool)

(assert (=> b!163574 (= e!107341 (and (= (size!3276 (_values!3338 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8019 thiss!1248))) (= (size!3275 (_keys!5170 thiss!1248)) (size!3276 (_values!3338 thiss!1248))) (bvsge (mask!8019 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3096 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3096 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!163575 () Bool)

(assert (=> b!163575 (= e!107342 (and e!107339 mapRes!6113))))

(declare-fun condMapEmpty!6113 () Bool)

(declare-fun mapDefault!6113 () ValueCell!1459)

