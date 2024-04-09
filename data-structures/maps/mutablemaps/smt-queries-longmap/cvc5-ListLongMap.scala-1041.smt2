; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21940 () Bool)

(assert start!21940)

(declare-fun b!223197 () Bool)

(declare-fun b_free!5995 () Bool)

(declare-fun b_next!5995 () Bool)

(assert (=> b!223197 (= b_free!5995 (not b_next!5995))))

(declare-fun tp!21126 () Bool)

(declare-fun b_and!12911 () Bool)

(assert (=> b!223197 (= tp!21126 b_and!12911)))

(declare-fun b!223177 () Bool)

(declare-fun res!109681 () Bool)

(declare-fun e!145004 () Bool)

(assert (=> b!223177 (=> (not res!109681) (not e!145004))))

(declare-datatypes ((V!7457 0))(
  ( (V!7458 (val!2973 Int)) )
))
(declare-datatypes ((ValueCell!2585 0))(
  ( (ValueCellFull!2585 (v!4989 V!7457)) (EmptyCell!2585) )
))
(declare-datatypes ((array!10956 0))(
  ( (array!10957 (arr!5197 (Array (_ BitVec 32) ValueCell!2585)) (size!5530 (_ BitVec 32))) )
))
(declare-datatypes ((array!10958 0))(
  ( (array!10959 (arr!5198 (Array (_ BitVec 32) (_ BitVec 64))) (size!5531 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3070 0))(
  ( (LongMapFixedSize!3071 (defaultEntry!4194 Int) (mask!10020 (_ BitVec 32)) (extraKeys!3931 (_ BitVec 32)) (zeroValue!4035 V!7457) (minValue!4035 V!7457) (_size!1584 (_ BitVec 32)) (_keys!6248 array!10958) (_values!4177 array!10956) (_vacant!1584 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3070)

(declare-datatypes ((List!3337 0))(
  ( (Nil!3334) (Cons!3333 (h!3981 (_ BitVec 64)) (t!8304 List!3337)) )
))
(declare-fun arrayNoDuplicates!0 (array!10958 (_ BitVec 32) List!3337) Bool)

(assert (=> b!223177 (= res!109681 (arrayNoDuplicates!0 (_keys!6248 thiss!1504) #b00000000000000000000000000000000 Nil!3334))))

(declare-fun b!223178 () Bool)

(declare-fun e!145001 () Bool)

(declare-fun e!145009 () Bool)

(assert (=> b!223178 (= e!145001 e!145009)))

(declare-fun res!109669 () Bool)

(declare-fun call!20817 () Bool)

(assert (=> b!223178 (= res!109669 call!20817)))

(assert (=> b!223178 (=> (not res!109669) (not e!145009))))

(declare-fun b!223179 () Bool)

(declare-datatypes ((SeekEntryResult!856 0))(
  ( (MissingZero!856 (index!5594 (_ BitVec 32))) (Found!856 (index!5595 (_ BitVec 32))) (Intermediate!856 (undefined!1668 Bool) (index!5596 (_ BitVec 32)) (x!23100 (_ BitVec 32))) (Undefined!856) (MissingVacant!856 (index!5597 (_ BitVec 32))) )
))
(declare-fun lt!112871 () SeekEntryResult!856)

(assert (=> b!223179 (= e!145001 (is-Undefined!856 lt!112871))))

(declare-fun b!223180 () Bool)

(declare-fun res!109680 () Bool)

(declare-fun e!145003 () Bool)

(assert (=> b!223180 (=> (not res!109680) (not e!145003))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!223180 (= res!109680 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!223181 () Bool)

(declare-fun res!109667 () Bool)

(assert (=> b!223181 (=> (not res!109667) (not e!145004))))

(declare-fun contains!1536 (List!3337 (_ BitVec 64)) Bool)

(assert (=> b!223181 (= res!109667 (not (contains!1536 Nil!3334 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!223182 () Bool)

(declare-fun res!109675 () Bool)

(assert (=> b!223182 (=> (not res!109675) (not e!145004))))

(declare-fun e!145002 () Bool)

(assert (=> b!223182 (= res!109675 e!145002)))

(declare-fun res!109665 () Bool)

(assert (=> b!223182 (=> res!109665 e!145002)))

(declare-fun e!145018 () Bool)

(assert (=> b!223182 (= res!109665 e!145018)))

(declare-fun res!109682 () Bool)

(assert (=> b!223182 (=> (not res!109682) (not e!145018))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!223182 (= res!109682 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!223183 () Bool)

(declare-datatypes ((Unit!6700 0))(
  ( (Unit!6701) )
))
(declare-fun e!145016 () Unit!6700)

(declare-fun lt!112869 () Unit!6700)

(assert (=> b!223183 (= e!145016 lt!112869)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!239 (array!10958 array!10956 (_ BitVec 32) (_ BitVec 32) V!7457 V!7457 (_ BitVec 64) Int) Unit!6700)

(assert (=> b!223183 (= lt!112869 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!239 (_keys!6248 thiss!1504) (_values!4177 thiss!1504) (mask!10020 thiss!1504) (extraKeys!3931 thiss!1504) (zeroValue!4035 thiss!1504) (minValue!4035 thiss!1504) key!932 (defaultEntry!4194 thiss!1504)))))

(declare-fun c!37048 () Bool)

(assert (=> b!223183 (= c!37048 (is-MissingZero!856 lt!112871))))

(declare-fun e!145012 () Bool)

(assert (=> b!223183 e!145012))

(declare-fun res!109679 () Bool)

(assert (=> start!21940 (=> (not res!109679) (not e!145003))))

(declare-fun valid!1228 (LongMapFixedSize!3070) Bool)

(assert (=> start!21940 (= res!109679 (valid!1228 thiss!1504))))

(assert (=> start!21940 e!145003))

(declare-fun e!145015 () Bool)

(assert (=> start!21940 e!145015))

(assert (=> start!21940 true))

(declare-fun b!223184 () Bool)

(declare-fun res!109676 () Bool)

(assert (=> b!223184 (=> (not res!109676) (not e!145004))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!223184 (= res!109676 (validKeyInArray!0 key!932))))

(declare-fun b!223185 () Bool)

(assert (=> b!223185 (= e!145018 (contains!1536 Nil!3334 key!932))))

(declare-fun b!223186 () Bool)

(declare-fun Unit!6702 () Unit!6700)

(assert (=> b!223186 (= e!145016 Unit!6702)))

(declare-fun lt!112868 () Unit!6700)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!231 (array!10958 array!10956 (_ BitVec 32) (_ BitVec 32) V!7457 V!7457 (_ BitVec 64) Int) Unit!6700)

(assert (=> b!223186 (= lt!112868 (lemmaInListMapThenSeekEntryOrOpenFindsIt!231 (_keys!6248 thiss!1504) (_values!4177 thiss!1504) (mask!10020 thiss!1504) (extraKeys!3931 thiss!1504) (zeroValue!4035 thiss!1504) (minValue!4035 thiss!1504) key!932 (defaultEntry!4194 thiss!1504)))))

(assert (=> b!223186 false))

(declare-fun b!223187 () Bool)

(declare-fun res!109668 () Bool)

(assert (=> b!223187 (= res!109668 (= (select (arr!5198 (_keys!6248 thiss!1504)) (index!5597 lt!112871)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!223187 (=> (not res!109668) (not e!145009))))

(declare-fun b!223188 () Bool)

(declare-fun e!145010 () Unit!6700)

(declare-fun Unit!6703 () Unit!6700)

(assert (=> b!223188 (= e!145010 Unit!6703)))

(declare-fun lt!112870 () Unit!6700)

(declare-fun lemmaArrayContainsKeyThenInListMap!69 (array!10958 array!10956 (_ BitVec 32) (_ BitVec 32) V!7457 V!7457 (_ BitVec 64) (_ BitVec 32) Int) Unit!6700)

(assert (=> b!223188 (= lt!112870 (lemmaArrayContainsKeyThenInListMap!69 (_keys!6248 thiss!1504) (_values!4177 thiss!1504) (mask!10020 thiss!1504) (extraKeys!3931 thiss!1504) (zeroValue!4035 thiss!1504) (minValue!4035 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4194 thiss!1504)))))

(assert (=> b!223188 false))

(declare-fun b!223189 () Bool)

(declare-fun e!145008 () Bool)

(declare-fun call!20818 () Bool)

(assert (=> b!223189 (= e!145008 (not call!20818))))

(declare-fun b!223190 () Bool)

(declare-fun Unit!6704 () Unit!6700)

(assert (=> b!223190 (= e!145010 Unit!6704)))

(declare-fun b!223191 () Bool)

(declare-fun res!109672 () Bool)

(assert (=> b!223191 (=> (not res!109672) (not e!145008))))

(assert (=> b!223191 (= res!109672 (= (select (arr!5198 (_keys!6248 thiss!1504)) (index!5594 lt!112871)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!9955 () Bool)

(declare-fun mapRes!9955 () Bool)

(declare-fun tp!21127 () Bool)

(declare-fun e!145017 () Bool)

(assert (=> mapNonEmpty!9955 (= mapRes!9955 (and tp!21127 e!145017))))

(declare-fun mapRest!9955 () (Array (_ BitVec 32) ValueCell!2585))

(declare-fun mapValue!9955 () ValueCell!2585)

(declare-fun mapKey!9955 () (_ BitVec 32))

(assert (=> mapNonEmpty!9955 (= (arr!5197 (_values!4177 thiss!1504)) (store mapRest!9955 mapKey!9955 mapValue!9955))))

(declare-fun b!223192 () Bool)

(declare-fun e!145007 () Bool)

(declare-fun e!145014 () Bool)

(assert (=> b!223192 (= e!145007 (and e!145014 mapRes!9955))))

(declare-fun condMapEmpty!9955 () Bool)

(declare-fun mapDefault!9955 () ValueCell!2585)

