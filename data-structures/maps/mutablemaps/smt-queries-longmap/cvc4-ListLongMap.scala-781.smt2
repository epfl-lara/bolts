; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18498 () Bool)

(assert start!18498)

(declare-fun b!183323 () Bool)

(declare-fun b_free!4529 () Bool)

(declare-fun b_next!4529 () Bool)

(assert (=> b!183323 (= b_free!4529 (not b_next!4529))))

(declare-fun tp!16357 () Bool)

(declare-fun b_and!11117 () Bool)

(assert (=> b!183323 (= tp!16357 b_and!11117)))

(declare-fun b!183320 () Bool)

(declare-fun res!86796 () Bool)

(declare-fun e!120714 () Bool)

(assert (=> b!183320 (=> (not res!86796) (not e!120714))))

(declare-datatypes ((V!5381 0))(
  ( (V!5382 (val!2195 Int)) )
))
(declare-datatypes ((ValueCell!1807 0))(
  ( (ValueCellFull!1807 (v!4094 V!5381)) (EmptyCell!1807) )
))
(declare-datatypes ((array!7794 0))(
  ( (array!7795 (arr!3684 (Array (_ BitVec 32) (_ BitVec 64))) (size!3996 (_ BitVec 32))) )
))
(declare-datatypes ((array!7796 0))(
  ( (array!7797 (arr!3685 (Array (_ BitVec 32) ValueCell!1807)) (size!3997 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2522 0))(
  ( (LongMapFixedSize!2523 (defaultEntry!3751 Int) (mask!8813 (_ BitVec 32)) (extraKeys!3488 (_ BitVec 32)) (zeroValue!3592 V!5381) (minValue!3592 V!5381) (_size!1310 (_ BitVec 32)) (_keys!5669 array!7794) (_values!3734 array!7796) (_vacant!1310 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2522)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3418 0))(
  ( (tuple2!3419 (_1!1719 (_ BitVec 64)) (_2!1719 V!5381)) )
))
(declare-datatypes ((List!2358 0))(
  ( (Nil!2355) (Cons!2354 (h!2983 tuple2!3418) (t!7234 List!2358)) )
))
(declare-datatypes ((ListLongMap!2349 0))(
  ( (ListLongMap!2350 (toList!1190 List!2358)) )
))
(declare-fun contains!1270 (ListLongMap!2349 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!833 (array!7794 array!7796 (_ BitVec 32) (_ BitVec 32) V!5381 V!5381 (_ BitVec 32) Int) ListLongMap!2349)

(assert (=> b!183320 (= res!86796 (not (contains!1270 (getCurrentListMap!833 (_keys!5669 thiss!1248) (_values!3734 thiss!1248) (mask!8813 thiss!1248) (extraKeys!3488 thiss!1248) (zeroValue!3592 thiss!1248) (minValue!3592 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3751 thiss!1248)) key!828)))))

(declare-fun b!183321 () Bool)

(declare-fun e!120713 () Bool)

(declare-fun tp_is_empty!4301 () Bool)

(assert (=> b!183321 (= e!120713 tp_is_empty!4301)))

(declare-fun res!86793 () Bool)

(declare-fun e!120711 () Bool)

(assert (=> start!18498 (=> (not res!86793) (not e!120711))))

(declare-fun valid!1035 (LongMapFixedSize!2522) Bool)

(assert (=> start!18498 (= res!86793 (valid!1035 thiss!1248))))

(assert (=> start!18498 e!120711))

(declare-fun e!120715 () Bool)

(assert (=> start!18498 e!120715))

(assert (=> start!18498 true))

(declare-fun b!183322 () Bool)

(assert (=> b!183322 (= e!120711 e!120714)))

(declare-fun res!86795 () Bool)

(assert (=> b!183322 (=> (not res!86795) (not e!120714))))

(declare-datatypes ((SeekEntryResult!631 0))(
  ( (MissingZero!631 (index!4694 (_ BitVec 32))) (Found!631 (index!4695 (_ BitVec 32))) (Intermediate!631 (undefined!1443 Bool) (index!4696 (_ BitVec 32)) (x!19985 (_ BitVec 32))) (Undefined!631) (MissingVacant!631 (index!4697 (_ BitVec 32))) )
))
(declare-fun lt!90647 () SeekEntryResult!631)

(assert (=> b!183322 (= res!86795 (and (not (is-Undefined!631 lt!90647)) (not (is-MissingVacant!631 lt!90647)) (not (is-MissingZero!631 lt!90647)) (is-Found!631 lt!90647)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7794 (_ BitVec 32)) SeekEntryResult!631)

(assert (=> b!183322 (= lt!90647 (seekEntryOrOpen!0 key!828 (_keys!5669 thiss!1248) (mask!8813 thiss!1248)))))

(declare-fun e!120710 () Bool)

(declare-fun array_inv!2373 (array!7794) Bool)

(declare-fun array_inv!2374 (array!7796) Bool)

(assert (=> b!183323 (= e!120715 (and tp!16357 tp_is_empty!4301 (array_inv!2373 (_keys!5669 thiss!1248)) (array_inv!2374 (_values!3734 thiss!1248)) e!120710))))

(declare-fun b!183324 () Bool)

(declare-fun e!120709 () Bool)

(assert (=> b!183324 (= e!120709 tp_is_empty!4301)))

(declare-fun mapNonEmpty!7385 () Bool)

(declare-fun mapRes!7385 () Bool)

(declare-fun tp!16358 () Bool)

(assert (=> mapNonEmpty!7385 (= mapRes!7385 (and tp!16358 e!120709))))

(declare-fun mapValue!7385 () ValueCell!1807)

(declare-fun mapKey!7385 () (_ BitVec 32))

(declare-fun mapRest!7385 () (Array (_ BitVec 32) ValueCell!1807))

(assert (=> mapNonEmpty!7385 (= (arr!3685 (_values!3734 thiss!1248)) (store mapRest!7385 mapKey!7385 mapValue!7385))))

(declare-fun b!183325 () Bool)

(assert (=> b!183325 (= e!120710 (and e!120713 mapRes!7385))))

(declare-fun condMapEmpty!7385 () Bool)

(declare-fun mapDefault!7385 () ValueCell!1807)

