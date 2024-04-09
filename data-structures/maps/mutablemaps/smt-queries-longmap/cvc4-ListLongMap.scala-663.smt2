; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16400 () Bool)

(assert start!16400)

(declare-fun b!163260 () Bool)

(declare-fun b_free!3791 () Bool)

(declare-fun b_next!3791 () Bool)

(assert (=> b!163260 (= b_free!3791 (not b_next!3791))))

(declare-fun tp!13954 () Bool)

(declare-fun b_and!10223 () Bool)

(assert (=> b!163260 (= tp!13954 b_and!10223)))

(declare-fun res!77291 () Bool)

(declare-fun e!107119 () Bool)

(assert (=> start!16400 (=> (not res!77291) (not e!107119))))

(declare-datatypes ((V!4437 0))(
  ( (V!4438 (val!1841 Int)) )
))
(declare-datatypes ((ValueCell!1453 0))(
  ( (ValueCellFull!1453 (v!3702 V!4437)) (EmptyCell!1453) )
))
(declare-datatypes ((array!6270 0))(
  ( (array!6271 (arr!2976 (Array (_ BitVec 32) (_ BitVec 64))) (size!3262 (_ BitVec 32))) )
))
(declare-datatypes ((array!6272 0))(
  ( (array!6273 (arr!2977 (Array (_ BitVec 32) ValueCell!1453)) (size!3263 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1814 0))(
  ( (LongMapFixedSize!1815 (defaultEntry!3349 Int) (mask!8001 (_ BitVec 32)) (extraKeys!3090 (_ BitVec 32)) (zeroValue!3192 V!4437) (minValue!3192 V!4437) (_size!956 (_ BitVec 32)) (_keys!5159 array!6270) (_values!3332 array!6272) (_vacant!956 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1814)

(declare-fun valid!806 (LongMapFixedSize!1814) Bool)

(assert (=> start!16400 (= res!77291 (valid!806 thiss!1248))))

(assert (=> start!16400 e!107119))

(declare-fun e!107124 () Bool)

(assert (=> start!16400 e!107124))

(assert (=> start!16400 true))

(declare-fun b!163256 () Bool)

(declare-fun e!107118 () Bool)

(assert (=> b!163256 (= e!107119 e!107118)))

(declare-fun res!77292 () Bool)

(assert (=> b!163256 (=> (not res!77292) (not e!107118))))

(declare-datatypes ((SeekEntryResult!408 0))(
  ( (MissingZero!408 (index!3800 (_ BitVec 32))) (Found!408 (index!3801 (_ BitVec 32))) (Intermediate!408 (undefined!1220 Bool) (index!3802 (_ BitVec 32)) (x!18098 (_ BitVec 32))) (Undefined!408) (MissingVacant!408 (index!3803 (_ BitVec 32))) )
))
(declare-fun lt!82679 () SeekEntryResult!408)

(assert (=> b!163256 (= res!77292 (and (not (is-Undefined!408 lt!82679)) (not (is-MissingVacant!408 lt!82679)) (not (is-MissingZero!408 lt!82679)) (is-Found!408 lt!82679)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6270 (_ BitVec 32)) SeekEntryResult!408)

(assert (=> b!163256 (= lt!82679 (seekEntryOrOpen!0 key!828 (_keys!5159 thiss!1248) (mask!8001 thiss!1248)))))

(declare-fun b!163257 () Bool)

(declare-fun res!77293 () Bool)

(assert (=> b!163257 (=> (not res!77293) (not e!107118))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!163257 (= res!77293 (validMask!0 (mask!8001 thiss!1248)))))

(declare-fun b!163258 () Bool)

(declare-fun res!77290 () Bool)

(assert (=> b!163258 (=> (not res!77290) (not e!107119))))

(assert (=> b!163258 (= res!77290 (not (= key!828 (bvneg key!828))))))

(declare-fun b!163259 () Bool)

(declare-fun e!107123 () Bool)

(declare-fun tp_is_empty!3593 () Bool)

(assert (=> b!163259 (= e!107123 tp_is_empty!3593)))

(declare-fun e!107121 () Bool)

(declare-fun array_inv!1895 (array!6270) Bool)

(declare-fun array_inv!1896 (array!6272) Bool)

(assert (=> b!163260 (= e!107124 (and tp!13954 tp_is_empty!3593 (array_inv!1895 (_keys!5159 thiss!1248)) (array_inv!1896 (_values!3332 thiss!1248)) e!107121))))

(declare-fun mapIsEmpty!6088 () Bool)

(declare-fun mapRes!6088 () Bool)

(assert (=> mapIsEmpty!6088 mapRes!6088))

(declare-fun b!163261 () Bool)

(assert (=> b!163261 (= e!107121 (and e!107123 mapRes!6088))))

(declare-fun condMapEmpty!6088 () Bool)

(declare-fun mapDefault!6088 () ValueCell!1453)

