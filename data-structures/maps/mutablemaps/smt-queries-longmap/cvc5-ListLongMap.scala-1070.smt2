; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22114 () Bool)

(assert start!22114)

(declare-fun b!229703 () Bool)

(declare-fun b_free!6169 () Bool)

(declare-fun b_next!6169 () Bool)

(assert (=> b!229703 (= b_free!6169 (not b_next!6169))))

(declare-fun tp!21649 () Bool)

(declare-fun b_and!13085 () Bool)

(assert (=> b!229703 (= tp!21649 b_and!13085)))

(declare-fun res!113054 () Bool)

(declare-fun e!149042 () Bool)

(assert (=> start!22114 (=> (not res!113054) (not e!149042))))

(declare-datatypes ((V!7689 0))(
  ( (V!7690 (val!3060 Int)) )
))
(declare-datatypes ((ValueCell!2672 0))(
  ( (ValueCellFull!2672 (v!5076 V!7689)) (EmptyCell!2672) )
))
(declare-datatypes ((array!11304 0))(
  ( (array!11305 (arr!5371 (Array (_ BitVec 32) ValueCell!2672)) (size!5704 (_ BitVec 32))) )
))
(declare-datatypes ((array!11306 0))(
  ( (array!11307 (arr!5372 (Array (_ BitVec 32) (_ BitVec 64))) (size!5705 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3244 0))(
  ( (LongMapFixedSize!3245 (defaultEntry!4281 Int) (mask!10165 (_ BitVec 32)) (extraKeys!4018 (_ BitVec 32)) (zeroValue!4122 V!7689) (minValue!4122 V!7689) (_size!1671 (_ BitVec 32)) (_keys!6335 array!11306) (_values!4264 array!11304) (_vacant!1671 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3244)

(declare-fun valid!1286 (LongMapFixedSize!3244) Bool)

(assert (=> start!22114 (= res!113054 (valid!1286 thiss!1504))))

(assert (=> start!22114 e!149042))

(declare-fun e!149038 () Bool)

(assert (=> start!22114 e!149038))

(assert (=> start!22114 true))

(declare-fun tp_is_empty!6031 () Bool)

(assert (=> start!22114 tp_is_empty!6031))

(declare-fun b!229696 () Bool)

(declare-fun e!149034 () Bool)

(declare-fun e!149036 () Bool)

(assert (=> b!229696 (= e!149034 e!149036)))

(declare-fun res!113058 () Bool)

(assert (=> b!229696 (=> (not res!113058) (not e!149036))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!229696 (= res!113058 (inRange!0 index!297 (mask!10165 thiss!1504)))))

(declare-datatypes ((Unit!7011 0))(
  ( (Unit!7012) )
))
(declare-fun lt!115577 () Unit!7011)

(declare-fun e!149037 () Unit!7011)

(assert (=> b!229696 (= lt!115577 e!149037)))

(declare-fun c!38091 () Bool)

(declare-datatypes ((tuple2!4508 0))(
  ( (tuple2!4509 (_1!2264 (_ BitVec 64)) (_2!2264 V!7689)) )
))
(declare-datatypes ((List!3457 0))(
  ( (Nil!3454) (Cons!3453 (h!4101 tuple2!4508) (t!8424 List!3457)) )
))
(declare-datatypes ((ListLongMap!3435 0))(
  ( (ListLongMap!3436 (toList!1733 List!3457)) )
))
(declare-fun lt!115585 () ListLongMap!3435)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun contains!1601 (ListLongMap!3435 (_ BitVec 64)) Bool)

(assert (=> b!229696 (= c!38091 (contains!1601 lt!115585 key!932))))

(declare-fun getCurrentListMap!1256 (array!11306 array!11304 (_ BitVec 32) (_ BitVec 32) V!7689 V!7689 (_ BitVec 32) Int) ListLongMap!3435)

(assert (=> b!229696 (= lt!115585 (getCurrentListMap!1256 (_keys!6335 thiss!1504) (_values!4264 thiss!1504) (mask!10165 thiss!1504) (extraKeys!4018 thiss!1504) (zeroValue!4122 thiss!1504) (minValue!4122 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4281 thiss!1504)))))

(declare-fun b!229697 () Bool)

(declare-fun res!113053 () Bool)

(declare-datatypes ((SeekEntryResult!936 0))(
  ( (MissingZero!936 (index!5914 (_ BitVec 32))) (Found!936 (index!5915 (_ BitVec 32))) (Intermediate!936 (undefined!1748 Bool) (index!5916 (_ BitVec 32)) (x!23412 (_ BitVec 32))) (Undefined!936) (MissingVacant!936 (index!5917 (_ BitVec 32))) )
))
(declare-fun lt!115578 () SeekEntryResult!936)

(assert (=> b!229697 (= res!113053 (= (select (arr!5372 (_keys!6335 thiss!1504)) (index!5917 lt!115578)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!149045 () Bool)

(assert (=> b!229697 (=> (not res!113053) (not e!149045))))

(declare-fun bm!21336 () Bool)

(declare-fun call!21339 () Bool)

(declare-fun arrayContainsKey!0 (array!11306 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21336 (= call!21339 (arrayContainsKey!0 (_keys!6335 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229698 () Bool)

(declare-fun res!113059 () Bool)

(assert (=> b!229698 (=> (not res!113059) (not e!149042))))

(assert (=> b!229698 (= res!113059 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!229699 () Bool)

(declare-fun e!149046 () Bool)

(declare-fun e!149035 () Bool)

(declare-fun mapRes!10216 () Bool)

(assert (=> b!229699 (= e!149046 (and e!149035 mapRes!10216))))

(declare-fun condMapEmpty!10216 () Bool)

(declare-fun mapDefault!10216 () ValueCell!2672)

