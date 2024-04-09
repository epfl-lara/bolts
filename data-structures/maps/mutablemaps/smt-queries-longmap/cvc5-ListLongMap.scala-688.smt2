; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16644 () Bool)

(assert start!16644)

(declare-fun b!166061 () Bool)

(declare-fun b_free!3937 () Bool)

(declare-fun b_next!3937 () Bool)

(assert (=> b!166061 (= b_free!3937 (not b_next!3937))))

(declare-fun tp!14412 () Bool)

(declare-fun b_and!10369 () Bool)

(assert (=> b!166061 (= tp!14412 b_and!10369)))

(declare-fun b!166053 () Bool)

(declare-fun res!78908 () Bool)

(declare-fun e!108923 () Bool)

(assert (=> b!166053 (=> (not res!78908) (not e!108923))))

(declare-datatypes ((V!4633 0))(
  ( (V!4634 (val!1914 Int)) )
))
(declare-datatypes ((ValueCell!1526 0))(
  ( (ValueCellFull!1526 (v!3775 V!4633)) (EmptyCell!1526) )
))
(declare-datatypes ((array!6574 0))(
  ( (array!6575 (arr!3122 (Array (_ BitVec 32) (_ BitVec 64))) (size!3410 (_ BitVec 32))) )
))
(declare-datatypes ((array!6576 0))(
  ( (array!6577 (arr!3123 (Array (_ BitVec 32) ValueCell!1526)) (size!3411 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1960 0))(
  ( (LongMapFixedSize!1961 (defaultEntry!3422 Int) (mask!8147 (_ BitVec 32)) (extraKeys!3163 (_ BitVec 32)) (zeroValue!3265 V!4633) (minValue!3265 V!4633) (_size!1029 (_ BitVec 32)) (_keys!5247 array!6574) (_values!3405 array!6576) (_vacant!1029 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1960)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3090 0))(
  ( (tuple2!3091 (_1!1555 (_ BitVec 64)) (_2!1555 V!4633)) )
))
(declare-datatypes ((List!2099 0))(
  ( (Nil!2096) (Cons!2095 (h!2712 tuple2!3090) (t!6909 List!2099)) )
))
(declare-datatypes ((ListLongMap!2059 0))(
  ( (ListLongMap!2060 (toList!1045 List!2099)) )
))
(declare-fun contains!1081 (ListLongMap!2059 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!698 (array!6574 array!6576 (_ BitVec 32) (_ BitVec 32) V!4633 V!4633 (_ BitVec 32) Int) ListLongMap!2059)

(assert (=> b!166053 (= res!78908 (not (contains!1081 (getCurrentListMap!698 (_keys!5247 thiss!1248) (_values!3405 thiss!1248) (mask!8147 thiss!1248) (extraKeys!3163 thiss!1248) (zeroValue!3265 thiss!1248) (minValue!3265 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3422 thiss!1248)) key!828)))))

(declare-fun b!166054 () Bool)

(declare-fun e!108924 () Bool)

(declare-fun tp_is_empty!3739 () Bool)

(assert (=> b!166054 (= e!108924 tp_is_empty!3739)))

(declare-fun b!166055 () Bool)

(declare-fun res!78909 () Bool)

(assert (=> b!166055 (=> (not res!78909) (not e!108923))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6574 (_ BitVec 32)) Bool)

(assert (=> b!166055 (= res!78909 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5247 thiss!1248) (mask!8147 thiss!1248)))))

(declare-fun b!166056 () Bool)

(declare-fun e!108922 () Bool)

(assert (=> b!166056 (= e!108922 e!108923)))

(declare-fun res!78903 () Bool)

(assert (=> b!166056 (=> (not res!78903) (not e!108923))))

(declare-datatypes ((SeekEntryResult!459 0))(
  ( (MissingZero!459 (index!4004 (_ BitVec 32))) (Found!459 (index!4005 (_ BitVec 32))) (Intermediate!459 (undefined!1271 Bool) (index!4006 (_ BitVec 32)) (x!18415 (_ BitVec 32))) (Undefined!459) (MissingVacant!459 (index!4007 (_ BitVec 32))) )
))
(declare-fun lt!83212 () SeekEntryResult!459)

(assert (=> b!166056 (= res!78903 (and (not (is-Undefined!459 lt!83212)) (not (is-MissingVacant!459 lt!83212)) (not (is-MissingZero!459 lt!83212)) (is-Found!459 lt!83212)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6574 (_ BitVec 32)) SeekEntryResult!459)

(assert (=> b!166056 (= lt!83212 (seekEntryOrOpen!0 key!828 (_keys!5247 thiss!1248) (mask!8147 thiss!1248)))))

(declare-fun mapNonEmpty!6327 () Bool)

(declare-fun mapRes!6327 () Bool)

(declare-fun tp!14411 () Bool)

(assert (=> mapNonEmpty!6327 (= mapRes!6327 (and tp!14411 e!108924))))

(declare-fun mapRest!6327 () (Array (_ BitVec 32) ValueCell!1526))

(declare-fun mapValue!6327 () ValueCell!1526)

(declare-fun mapKey!6327 () (_ BitVec 32))

(assert (=> mapNonEmpty!6327 (= (arr!3123 (_values!3405 thiss!1248)) (store mapRest!6327 mapKey!6327 mapValue!6327))))

(declare-fun mapIsEmpty!6327 () Bool)

(assert (=> mapIsEmpty!6327 mapRes!6327))

(declare-fun b!166057 () Bool)

(declare-fun res!78905 () Bool)

(assert (=> b!166057 (=> (not res!78905) (not e!108923))))

(assert (=> b!166057 (= res!78905 (and (= (size!3411 (_values!3405 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8147 thiss!1248))) (= (size!3410 (_keys!5247 thiss!1248)) (size!3411 (_values!3405 thiss!1248))) (bvsge (mask!8147 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3163 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3163 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!166058 () Bool)

(assert (=> b!166058 (= e!108923 false)))

(declare-fun lt!83213 () Bool)

(declare-datatypes ((List!2100 0))(
  ( (Nil!2097) (Cons!2096 (h!2713 (_ BitVec 64)) (t!6910 List!2100)) )
))
(declare-fun arrayNoDuplicates!0 (array!6574 (_ BitVec 32) List!2100) Bool)

(assert (=> b!166058 (= lt!83213 (arrayNoDuplicates!0 (_keys!5247 thiss!1248) #b00000000000000000000000000000000 Nil!2097))))

(declare-fun b!166059 () Bool)

(declare-fun e!108925 () Bool)

(assert (=> b!166059 (= e!108925 tp_is_empty!3739)))

(declare-fun b!166060 () Bool)

(declare-fun e!108926 () Bool)

(assert (=> b!166060 (= e!108926 (and e!108925 mapRes!6327))))

(declare-fun condMapEmpty!6327 () Bool)

(declare-fun mapDefault!6327 () ValueCell!1526)

