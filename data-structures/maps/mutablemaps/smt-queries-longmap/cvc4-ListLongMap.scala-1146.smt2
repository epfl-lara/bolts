; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23894 () Bool)

(assert start!23894)

(declare-fun b!250403 () Bool)

(declare-fun b_free!6629 () Bool)

(declare-fun b_next!6629 () Bool)

(assert (=> b!250403 (= b_free!6629 (not b_next!6629))))

(declare-fun tp!23151 () Bool)

(declare-fun b_and!13667 () Bool)

(assert (=> b!250403 (= tp!23151 b_and!13667)))

(declare-fun b!250396 () Bool)

(declare-fun e!162419 () Bool)

(declare-fun tp_is_empty!6491 () Bool)

(assert (=> b!250396 (= e!162419 tp_is_empty!6491)))

(declare-fun mapIsEmpty!11029 () Bool)

(declare-fun mapRes!11029 () Bool)

(assert (=> mapIsEmpty!11029 mapRes!11029))

(declare-fun bm!23525 () Bool)

(declare-fun call!23528 () Bool)

(declare-datatypes ((V!8301 0))(
  ( (V!8302 (val!3290 Int)) )
))
(declare-datatypes ((ValueCell!2902 0))(
  ( (ValueCellFull!2902 (v!5351 V!8301)) (EmptyCell!2902) )
))
(declare-datatypes ((array!12298 0))(
  ( (array!12299 (arr!5831 (Array (_ BitVec 32) ValueCell!2902)) (size!6176 (_ BitVec 32))) )
))
(declare-datatypes ((array!12300 0))(
  ( (array!12301 (arr!5832 (Array (_ BitVec 32) (_ BitVec 64))) (size!6177 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3704 0))(
  ( (LongMapFixedSize!3705 (defaultEntry!4629 Int) (mask!10812 (_ BitVec 32)) (extraKeys!4366 (_ BitVec 32)) (zeroValue!4470 V!8301) (minValue!4470 V!8301) (_size!1901 (_ BitVec 32)) (_keys!6765 array!12300) (_values!4612 array!12298) (_vacant!1901 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3704)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12300 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23525 (= call!23528 (arrayContainsKey!0 (_keys!6765 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!250397 () Bool)

(declare-datatypes ((Unit!7750 0))(
  ( (Unit!7751) )
))
(declare-fun e!162412 () Unit!7750)

(declare-fun lt!125488 () Unit!7750)

(assert (=> b!250397 (= e!162412 lt!125488)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!398 (array!12300 array!12298 (_ BitVec 32) (_ BitVec 32) V!8301 V!8301 (_ BitVec 64) Int) Unit!7750)

(assert (=> b!250397 (= lt!125488 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!398 (_keys!6765 thiss!1504) (_values!4612 thiss!1504) (mask!10812 thiss!1504) (extraKeys!4366 thiss!1504) (zeroValue!4470 thiss!1504) (minValue!4470 thiss!1504) key!932 (defaultEntry!4629 thiss!1504)))))

(declare-fun c!42060 () Bool)

(declare-datatypes ((SeekEntryResult!1132 0))(
  ( (MissingZero!1132 (index!6698 (_ BitVec 32))) (Found!1132 (index!6699 (_ BitVec 32))) (Intermediate!1132 (undefined!1944 Bool) (index!6700 (_ BitVec 32)) (x!24682 (_ BitVec 32))) (Undefined!1132) (MissingVacant!1132 (index!6701 (_ BitVec 32))) )
))
(declare-fun lt!125496 () SeekEntryResult!1132)

(assert (=> b!250397 (= c!42060 (is-MissingZero!1132 lt!125496))))

(declare-fun e!162409 () Bool)

(assert (=> b!250397 e!162409))

(declare-fun b!250398 () Bool)

(declare-fun res!122652 () Bool)

(assert (=> b!250398 (= res!122652 (= (select (arr!5832 (_keys!6765 thiss!1504)) (index!6701 lt!125496)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!162420 () Bool)

(assert (=> b!250398 (=> (not res!122652) (not e!162420))))

(declare-fun b!250399 () Bool)

(declare-fun e!162416 () Bool)

(assert (=> b!250399 (= e!162416 tp_is_empty!6491)))

(declare-fun b!250400 () Bool)

(declare-fun e!162417 () Bool)

(declare-fun e!162410 () Bool)

(assert (=> b!250400 (= e!162417 e!162410)))

(declare-fun res!122649 () Bool)

(assert (=> b!250400 (=> (not res!122649) (not e!162410))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!250400 (= res!122649 (inRange!0 index!297 (mask!10812 thiss!1504)))))

(declare-fun lt!125492 () Unit!7750)

(assert (=> b!250400 (= lt!125492 e!162412)))

(declare-fun c!42059 () Bool)

(declare-datatypes ((tuple2!4838 0))(
  ( (tuple2!4839 (_1!2429 (_ BitVec 64)) (_2!2429 V!8301)) )
))
(declare-datatypes ((List!3744 0))(
  ( (Nil!3741) (Cons!3740 (h!4400 tuple2!4838) (t!8785 List!3744)) )
))
(declare-datatypes ((ListLongMap!3765 0))(
  ( (ListLongMap!3766 (toList!1898 List!3744)) )
))
(declare-fun contains!1813 (ListLongMap!3765 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1421 (array!12300 array!12298 (_ BitVec 32) (_ BitVec 32) V!8301 V!8301 (_ BitVec 32) Int) ListLongMap!3765)

(assert (=> b!250400 (= c!42059 (contains!1813 (getCurrentListMap!1421 (_keys!6765 thiss!1504) (_values!4612 thiss!1504) (mask!10812 thiss!1504) (extraKeys!4366 thiss!1504) (zeroValue!4470 thiss!1504) (minValue!4470 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4629 thiss!1504)) key!932))))

(declare-fun b!250401 () Bool)

(declare-fun res!122651 () Bool)

(declare-fun e!162415 () Bool)

(assert (=> b!250401 (=> (not res!122651) (not e!162415))))

(assert (=> b!250401 (= res!122651 (= (select (arr!5832 (_keys!6765 thiss!1504)) (index!6698 lt!125496)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!122653 () Bool)

(declare-fun e!162418 () Bool)

(assert (=> start!23894 (=> (not res!122653) (not e!162418))))

(declare-fun valid!1440 (LongMapFixedSize!3704) Bool)

(assert (=> start!23894 (= res!122653 (valid!1440 thiss!1504))))

(assert (=> start!23894 e!162418))

(declare-fun e!162413 () Bool)

(assert (=> start!23894 e!162413))

(assert (=> start!23894 true))

(declare-fun b!250402 () Bool)

(declare-fun res!122656 () Bool)

(assert (=> b!250402 (=> (not res!122656) (not e!162415))))

(declare-fun call!23529 () Bool)

(assert (=> b!250402 (= res!122656 call!23529)))

(assert (=> b!250402 (= e!162409 e!162415)))

(declare-fun e!162414 () Bool)

(declare-fun array_inv!3839 (array!12300) Bool)

(declare-fun array_inv!3840 (array!12298) Bool)

(assert (=> b!250403 (= e!162413 (and tp!23151 tp_is_empty!6491 (array_inv!3839 (_keys!6765 thiss!1504)) (array_inv!3840 (_values!4612 thiss!1504)) e!162414))))

(declare-fun b!250404 () Bool)

(declare-fun c!42061 () Bool)

(assert (=> b!250404 (= c!42061 (is-MissingVacant!1132 lt!125496))))

(declare-fun e!162411 () Bool)

(assert (=> b!250404 (= e!162409 e!162411)))

(declare-fun b!250405 () Bool)

(assert (=> b!250405 (= e!162414 (and e!162416 mapRes!11029))))

(declare-fun condMapEmpty!11029 () Bool)

(declare-fun mapDefault!11029 () ValueCell!2902)

