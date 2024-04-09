; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16494 () Bool)

(assert start!16494)

(declare-fun b!163921 () Bool)

(declare-fun b_free!3815 () Bool)

(declare-fun b_next!3815 () Bool)

(assert (=> b!163921 (= b_free!3815 (not b_next!3815))))

(declare-fun tp!14039 () Bool)

(declare-fun b_and!10247 () Bool)

(assert (=> b!163921 (= tp!14039 b_and!10247)))

(declare-fun res!77578 () Bool)

(declare-fun e!107567 () Bool)

(assert (=> start!16494 (=> (not res!77578) (not e!107567))))

(declare-datatypes ((V!4469 0))(
  ( (V!4470 (val!1853 Int)) )
))
(declare-datatypes ((ValueCell!1465 0))(
  ( (ValueCellFull!1465 (v!3714 V!4469)) (EmptyCell!1465) )
))
(declare-datatypes ((array!6326 0))(
  ( (array!6327 (arr!3000 (Array (_ BitVec 32) (_ BitVec 64))) (size!3288 (_ BitVec 32))) )
))
(declare-datatypes ((array!6328 0))(
  ( (array!6329 (arr!3001 (Array (_ BitVec 32) ValueCell!1465)) (size!3289 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1838 0))(
  ( (LongMapFixedSize!1839 (defaultEntry!3361 Int) (mask!8038 (_ BitVec 32)) (extraKeys!3102 (_ BitVec 32)) (zeroValue!3204 V!4469) (minValue!3204 V!4469) (_size!968 (_ BitVec 32)) (_keys!5182 array!6326) (_values!3344 array!6328) (_vacant!968 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1838)

(declare-fun valid!812 (LongMapFixedSize!1838) Bool)

(assert (=> start!16494 (= res!77578 (valid!812 thiss!1248))))

(assert (=> start!16494 e!107567))

(declare-fun e!107564 () Bool)

(assert (=> start!16494 e!107564))

(assert (=> start!16494 true))

(declare-fun b!163917 () Bool)

(declare-fun res!77579 () Bool)

(declare-fun e!107569 () Bool)

(assert (=> b!163917 (=> (not res!77579) (not e!107569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!163917 (= res!77579 (validMask!0 (mask!8038 thiss!1248)))))

(declare-fun b!163918 () Bool)

(declare-fun e!107568 () Bool)

(declare-fun tp_is_empty!3617 () Bool)

(assert (=> b!163918 (= e!107568 tp_is_empty!3617)))

(declare-fun b!163919 () Bool)

(declare-fun res!77580 () Bool)

(assert (=> b!163919 (=> (not res!77580) (not e!107569))))

(assert (=> b!163919 (= res!77580 (and (= (size!3289 (_values!3344 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8038 thiss!1248))) (= (size!3288 (_keys!5182 thiss!1248)) (size!3289 (_values!3344 thiss!1248))) (bvsge (mask!8038 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3102 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3102 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!163920 () Bool)

(assert (=> b!163920 (= e!107567 e!107569)))

(declare-fun res!77576 () Bool)

(assert (=> b!163920 (=> (not res!77576) (not e!107569))))

(declare-datatypes ((SeekEntryResult!418 0))(
  ( (MissingZero!418 (index!3840 (_ BitVec 32))) (Found!418 (index!3841 (_ BitVec 32))) (Intermediate!418 (undefined!1230 Bool) (index!3842 (_ BitVec 32)) (x!18190 (_ BitVec 32))) (Undefined!418) (MissingVacant!418 (index!3843 (_ BitVec 32))) )
))
(declare-fun lt!82820 () SeekEntryResult!418)

(assert (=> b!163920 (= res!77576 (and (not (is-Undefined!418 lt!82820)) (not (is-MissingVacant!418 lt!82820)) (not (is-MissingZero!418 lt!82820)) (is-Found!418 lt!82820)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6326 (_ BitVec 32)) SeekEntryResult!418)

(assert (=> b!163920 (= lt!82820 (seekEntryOrOpen!0 key!828 (_keys!5182 thiss!1248) (mask!8038 thiss!1248)))))

(declare-fun mapIsEmpty!6138 () Bool)

(declare-fun mapRes!6138 () Bool)

(assert (=> mapIsEmpty!6138 mapRes!6138))

(declare-fun e!107566 () Bool)

(declare-fun array_inv!1909 (array!6326) Bool)

(declare-fun array_inv!1910 (array!6328) Bool)

(assert (=> b!163921 (= e!107564 (and tp!14039 tp_is_empty!3617 (array_inv!1909 (_keys!5182 thiss!1248)) (array_inv!1910 (_values!3344 thiss!1248)) e!107566))))

(declare-fun b!163922 () Bool)

(declare-fun e!107563 () Bool)

(assert (=> b!163922 (= e!107563 tp_is_empty!3617)))

(declare-fun mapNonEmpty!6138 () Bool)

(declare-fun tp!14040 () Bool)

(assert (=> mapNonEmpty!6138 (= mapRes!6138 (and tp!14040 e!107568))))

(declare-fun mapKey!6138 () (_ BitVec 32))

(declare-fun mapValue!6138 () ValueCell!1465)

(declare-fun mapRest!6138 () (Array (_ BitVec 32) ValueCell!1465))

(assert (=> mapNonEmpty!6138 (= (arr!3001 (_values!3344 thiss!1248)) (store mapRest!6138 mapKey!6138 mapValue!6138))))

(declare-fun b!163923 () Bool)

(assert (=> b!163923 (= e!107566 (and e!107563 mapRes!6138))))

(declare-fun condMapEmpty!6138 () Bool)

(declare-fun mapDefault!6138 () ValueCell!1465)

