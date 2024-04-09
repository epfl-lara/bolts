; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16396 () Bool)

(assert start!16396)

(declare-fun b!163212 () Bool)

(declare-fun b_free!3787 () Bool)

(declare-fun b_next!3787 () Bool)

(assert (=> b!163212 (= b_free!3787 (not b_next!3787))))

(declare-fun tp!13942 () Bool)

(declare-fun b_and!10219 () Bool)

(assert (=> b!163212 (= tp!13942 b_and!10219)))

(declare-fun res!77266 () Bool)

(declare-fun e!107076 () Bool)

(assert (=> start!16396 (=> (not res!77266) (not e!107076))))

(declare-datatypes ((V!4433 0))(
  ( (V!4434 (val!1839 Int)) )
))
(declare-datatypes ((ValueCell!1451 0))(
  ( (ValueCellFull!1451 (v!3700 V!4433)) (EmptyCell!1451) )
))
(declare-datatypes ((array!6262 0))(
  ( (array!6263 (arr!2972 (Array (_ BitVec 32) (_ BitVec 64))) (size!3258 (_ BitVec 32))) )
))
(declare-datatypes ((array!6264 0))(
  ( (array!6265 (arr!2973 (Array (_ BitVec 32) ValueCell!1451)) (size!3259 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1810 0))(
  ( (LongMapFixedSize!1811 (defaultEntry!3347 Int) (mask!7999 (_ BitVec 32)) (extraKeys!3088 (_ BitVec 32)) (zeroValue!3190 V!4433) (minValue!3190 V!4433) (_size!954 (_ BitVec 32)) (_keys!5157 array!6262) (_values!3330 array!6264) (_vacant!954 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1810)

(declare-fun valid!804 (LongMapFixedSize!1810) Bool)

(assert (=> start!16396 (= res!77266 (valid!804 thiss!1248))))

(assert (=> start!16396 e!107076))

(declare-fun e!107078 () Bool)

(assert (=> start!16396 e!107078))

(assert (=> start!16396 true))

(declare-fun b!163208 () Bool)

(declare-fun res!77268 () Bool)

(assert (=> b!163208 (=> (not res!77268) (not e!107076))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!163208 (= res!77268 (not (= key!828 (bvneg key!828))))))

(declare-fun b!163209 () Bool)

(declare-fun e!107077 () Bool)

(assert (=> b!163209 (= e!107077 (and (= (size!3259 (_values!3330 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7999 thiss!1248))) (= (size!3258 (_keys!5157 thiss!1248)) (size!3259 (_values!3330 thiss!1248))) (bvslt (mask!7999 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!163210 () Bool)

(declare-fun res!77267 () Bool)

(assert (=> b!163210 (=> (not res!77267) (not e!107077))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!163210 (= res!77267 (validMask!0 (mask!7999 thiss!1248)))))

(declare-fun b!163211 () Bool)

(declare-fun e!107081 () Bool)

(declare-fun tp_is_empty!3589 () Bool)

(assert (=> b!163211 (= e!107081 tp_is_empty!3589)))

(declare-fun e!107079 () Bool)

(declare-fun array_inv!1891 (array!6262) Bool)

(declare-fun array_inv!1892 (array!6264) Bool)

(assert (=> b!163212 (= e!107078 (and tp!13942 tp_is_empty!3589 (array_inv!1891 (_keys!5157 thiss!1248)) (array_inv!1892 (_values!3330 thiss!1248)) e!107079))))

(declare-fun b!163213 () Bool)

(declare-fun e!107082 () Bool)

(assert (=> b!163213 (= e!107082 tp_is_empty!3589)))

(declare-fun mapNonEmpty!6082 () Bool)

(declare-fun mapRes!6082 () Bool)

(declare-fun tp!13941 () Bool)

(assert (=> mapNonEmpty!6082 (= mapRes!6082 (and tp!13941 e!107082))))

(declare-fun mapKey!6082 () (_ BitVec 32))

(declare-fun mapRest!6082 () (Array (_ BitVec 32) ValueCell!1451))

(declare-fun mapValue!6082 () ValueCell!1451)

(assert (=> mapNonEmpty!6082 (= (arr!2973 (_values!3330 thiss!1248)) (store mapRest!6082 mapKey!6082 mapValue!6082))))

(declare-fun b!163214 () Bool)

(assert (=> b!163214 (= e!107076 e!107077)))

(declare-fun res!77269 () Bool)

(assert (=> b!163214 (=> (not res!77269) (not e!107077))))

(declare-datatypes ((SeekEntryResult!406 0))(
  ( (MissingZero!406 (index!3792 (_ BitVec 32))) (Found!406 (index!3793 (_ BitVec 32))) (Intermediate!406 (undefined!1218 Bool) (index!3794 (_ BitVec 32)) (x!18096 (_ BitVec 32))) (Undefined!406) (MissingVacant!406 (index!3795 (_ BitVec 32))) )
))
(declare-fun lt!82673 () SeekEntryResult!406)

(assert (=> b!163214 (= res!77269 (and (not (is-Undefined!406 lt!82673)) (not (is-MissingVacant!406 lt!82673)) (not (is-MissingZero!406 lt!82673)) (is-Found!406 lt!82673)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6262 (_ BitVec 32)) SeekEntryResult!406)

(assert (=> b!163214 (= lt!82673 (seekEntryOrOpen!0 key!828 (_keys!5157 thiss!1248) (mask!7999 thiss!1248)))))

(declare-fun b!163215 () Bool)

(assert (=> b!163215 (= e!107079 (and e!107081 mapRes!6082))))

(declare-fun condMapEmpty!6082 () Bool)

(declare-fun mapDefault!6082 () ValueCell!1451)

