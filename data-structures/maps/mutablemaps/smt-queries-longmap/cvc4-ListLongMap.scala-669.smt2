; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16534 () Bool)

(assert start!16534)

(declare-fun b!164241 () Bool)

(declare-fun b_free!3827 () Bool)

(declare-fun b_next!3827 () Bool)

(assert (=> b!164241 (= b_free!3827 (not b_next!3827))))

(declare-fun tp!14081 () Bool)

(declare-fun b_and!10259 () Bool)

(assert (=> b!164241 (= tp!14081 b_and!10259)))

(declare-fun b!164238 () Bool)

(declare-fun res!77753 () Bool)

(declare-fun e!107767 () Bool)

(assert (=> b!164238 (=> (not res!77753) (not e!107767))))

(declare-datatypes ((V!4485 0))(
  ( (V!4486 (val!1859 Int)) )
))
(declare-datatypes ((ValueCell!1471 0))(
  ( (ValueCellFull!1471 (v!3720 V!4485)) (EmptyCell!1471) )
))
(declare-datatypes ((array!6354 0))(
  ( (array!6355 (arr!3012 (Array (_ BitVec 32) (_ BitVec 64))) (size!3300 (_ BitVec 32))) )
))
(declare-datatypes ((array!6356 0))(
  ( (array!6357 (arr!3013 (Array (_ BitVec 32) ValueCell!1471)) (size!3301 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1850 0))(
  ( (LongMapFixedSize!1851 (defaultEntry!3367 Int) (mask!8054 (_ BitVec 32)) (extraKeys!3108 (_ BitVec 32)) (zeroValue!3210 V!4485) (minValue!3210 V!4485) (_size!974 (_ BitVec 32)) (_keys!5192 array!6354) (_values!3350 array!6356) (_vacant!974 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1850)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164238 (= res!77753 (validMask!0 (mask!8054 thiss!1248)))))

(declare-fun b!164239 () Bool)

(declare-fun res!77752 () Bool)

(assert (=> b!164239 (=> (not res!77752) (not e!107767))))

(assert (=> b!164239 (= res!77752 (and (= (size!3301 (_values!3350 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8054 thiss!1248))) (= (size!3300 (_keys!5192 thiss!1248)) (size!3301 (_values!3350 thiss!1248))) (bvsge (mask!8054 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3108 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3108 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!164240 () Bool)

(assert (=> b!164240 (= e!107767 false)))

(declare-fun lt!82882 () Bool)

(declare-datatypes ((List!2020 0))(
  ( (Nil!2017) (Cons!2016 (h!2633 (_ BitVec 64)) (t!6830 List!2020)) )
))
(declare-fun arrayNoDuplicates!0 (array!6354 (_ BitVec 32) List!2020) Bool)

(assert (=> b!164240 (= lt!82882 (arrayNoDuplicates!0 (_keys!5192 thiss!1248) #b00000000000000000000000000000000 Nil!2017))))

(declare-fun mapIsEmpty!6162 () Bool)

(declare-fun mapRes!6162 () Bool)

(assert (=> mapIsEmpty!6162 mapRes!6162))

(declare-fun e!107770 () Bool)

(declare-fun e!107768 () Bool)

(declare-fun tp_is_empty!3629 () Bool)

(declare-fun array_inv!1919 (array!6354) Bool)

(declare-fun array_inv!1920 (array!6356) Bool)

(assert (=> b!164241 (= e!107768 (and tp!14081 tp_is_empty!3629 (array_inv!1919 (_keys!5192 thiss!1248)) (array_inv!1920 (_values!3350 thiss!1248)) e!107770))))

(declare-fun b!164242 () Bool)

(declare-fun e!107773 () Bool)

(assert (=> b!164242 (= e!107773 e!107767)))

(declare-fun res!77750 () Bool)

(assert (=> b!164242 (=> (not res!77750) (not e!107767))))

(declare-datatypes ((SeekEntryResult!422 0))(
  ( (MissingZero!422 (index!3856 (_ BitVec 32))) (Found!422 (index!3857 (_ BitVec 32))) (Intermediate!422 (undefined!1234 Bool) (index!3858 (_ BitVec 32)) (x!18226 (_ BitVec 32))) (Undefined!422) (MissingVacant!422 (index!3859 (_ BitVec 32))) )
))
(declare-fun lt!82883 () SeekEntryResult!422)

(assert (=> b!164242 (= res!77750 (and (not (is-Undefined!422 lt!82883)) (not (is-MissingVacant!422 lt!82883)) (not (is-MissingZero!422 lt!82883)) (is-Found!422 lt!82883)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6354 (_ BitVec 32)) SeekEntryResult!422)

(assert (=> b!164242 (= lt!82883 (seekEntryOrOpen!0 key!828 (_keys!5192 thiss!1248) (mask!8054 thiss!1248)))))

(declare-fun b!164243 () Bool)

(declare-fun e!107772 () Bool)

(assert (=> b!164243 (= e!107770 (and e!107772 mapRes!6162))))

(declare-fun condMapEmpty!6162 () Bool)

(declare-fun mapDefault!6162 () ValueCell!1471)

