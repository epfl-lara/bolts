; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21992 () Bool)

(assert start!21992)

(declare-fun b!225393 () Bool)

(declare-fun b_free!6047 () Bool)

(declare-fun b_next!6047 () Bool)

(assert (=> b!225393 (= b_free!6047 (not b_next!6047))))

(declare-fun tp!21283 () Bool)

(declare-fun b_and!12963 () Bool)

(assert (=> b!225393 (= tp!21283 b_and!12963)))

(declare-fun b!225383 () Bool)

(declare-fun e!146293 () Bool)

(declare-fun e!146305 () Bool)

(assert (=> b!225383 (= e!146293 e!146305)))

(declare-fun res!110940 () Bool)

(assert (=> b!225383 (=> (not res!110940) (not e!146305))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!7525 0))(
  ( (V!7526 (val!2999 Int)) )
))
(declare-datatypes ((ValueCell!2611 0))(
  ( (ValueCellFull!2611 (v!5015 V!7525)) (EmptyCell!2611) )
))
(declare-datatypes ((array!11060 0))(
  ( (array!11061 (arr!5249 (Array (_ BitVec 32) ValueCell!2611)) (size!5582 (_ BitVec 32))) )
))
(declare-datatypes ((array!11062 0))(
  ( (array!11063 (arr!5250 (Array (_ BitVec 32) (_ BitVec 64))) (size!5583 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3122 0))(
  ( (LongMapFixedSize!3123 (defaultEntry!4220 Int) (mask!10062 (_ BitVec 32)) (extraKeys!3957 (_ BitVec 32)) (zeroValue!4061 V!7525) (minValue!4061 V!7525) (_size!1610 (_ BitVec 32)) (_keys!6274 array!11062) (_values!4203 array!11060) (_vacant!1610 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3122)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!225383 (= res!110940 (inRange!0 index!297 (mask!10062 thiss!1504)))))

(declare-datatypes ((Unit!6794 0))(
  ( (Unit!6795) )
))
(declare-fun lt!113566 () Unit!6794)

(declare-fun e!146299 () Unit!6794)

(assert (=> b!225383 (= lt!113566 e!146299)))

(declare-fun c!37361 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4438 0))(
  ( (tuple2!4439 (_1!2229 (_ BitVec 64)) (_2!2229 V!7525)) )
))
(declare-datatypes ((List!3375 0))(
  ( (Nil!3372) (Cons!3371 (h!4019 tuple2!4438) (t!8342 List!3375)) )
))
(declare-datatypes ((ListLongMap!3365 0))(
  ( (ListLongMap!3366 (toList!1698 List!3375)) )
))
(declare-fun contains!1566 (ListLongMap!3365 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1221 (array!11062 array!11060 (_ BitVec 32) (_ BitVec 32) V!7525 V!7525 (_ BitVec 32) Int) ListLongMap!3365)

(assert (=> b!225383 (= c!37361 (contains!1566 (getCurrentListMap!1221 (_keys!6274 thiss!1504) (_values!4203 thiss!1504) (mask!10062 thiss!1504) (extraKeys!3957 thiss!1504) (zeroValue!4061 thiss!1504) (minValue!4061 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4220 thiss!1504)) key!932))))

(declare-fun b!225384 () Bool)

(declare-fun e!146298 () Bool)

(declare-fun e!146302 () Bool)

(assert (=> b!225384 (= e!146298 e!146302)))

(declare-fun res!110943 () Bool)

(declare-fun call!20974 () Bool)

(assert (=> b!225384 (= res!110943 call!20974)))

(assert (=> b!225384 (=> (not res!110943) (not e!146302))))

(declare-fun b!225385 () Bool)

(declare-fun res!110936 () Bool)

(declare-fun e!146292 () Bool)

(assert (=> b!225385 (=> res!110936 e!146292)))

(declare-fun lt!113561 () Bool)

(assert (=> b!225385 (= res!110936 lt!113561)))

(declare-fun b!225386 () Bool)

(declare-fun e!146296 () Unit!6794)

(declare-fun Unit!6796 () Unit!6794)

(assert (=> b!225386 (= e!146296 Unit!6796)))

(declare-fun b!225387 () Bool)

(declare-fun res!110939 () Bool)

(assert (=> b!225387 (=> res!110939 e!146292)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11062 (_ BitVec 32)) Bool)

(assert (=> b!225387 (= res!110939 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6274 thiss!1504) (mask!10062 thiss!1504))))))

(declare-fun c!37360 () Bool)

(declare-fun bm!20970 () Bool)

(declare-datatypes ((SeekEntryResult!879 0))(
  ( (MissingZero!879 (index!5686 (_ BitVec 32))) (Found!879 (index!5687 (_ BitVec 32))) (Intermediate!879 (undefined!1691 Bool) (index!5688 (_ BitVec 32)) (x!23187 (_ BitVec 32))) (Undefined!879) (MissingVacant!879 (index!5689 (_ BitVec 32))) )
))
(declare-fun lt!113563 () SeekEntryResult!879)

(assert (=> bm!20970 (= call!20974 (inRange!0 (ite c!37360 (index!5686 lt!113563) (index!5689 lt!113563)) (mask!10062 thiss!1504)))))

(declare-fun b!225388 () Bool)

(declare-fun res!110941 () Bool)

(assert (=> b!225388 (=> res!110941 e!146292)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!225388 (= res!110941 (not (validKeyInArray!0 key!932)))))

(declare-fun b!225389 () Bool)

(declare-fun c!37358 () Bool)

(assert (=> b!225389 (= c!37358 (is-MissingVacant!879 lt!113563))))

(declare-fun e!146295 () Bool)

(assert (=> b!225389 (= e!146295 e!146298)))

(declare-fun b!225390 () Bool)

(declare-fun lt!113564 () Unit!6794)

(assert (=> b!225390 (= e!146299 lt!113564)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!257 (array!11062 array!11060 (_ BitVec 32) (_ BitVec 32) V!7525 V!7525 (_ BitVec 64) Int) Unit!6794)

(assert (=> b!225390 (= lt!113564 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!257 (_keys!6274 thiss!1504) (_values!4203 thiss!1504) (mask!10062 thiss!1504) (extraKeys!3957 thiss!1504) (zeroValue!4061 thiss!1504) (minValue!4061 thiss!1504) key!932 (defaultEntry!4220 thiss!1504)))))

(assert (=> b!225390 (= c!37360 (is-MissingZero!879 lt!113563))))

(assert (=> b!225390 e!146295))

(declare-fun b!225391 () Bool)

(assert (=> b!225391 (= e!146298 (is-Undefined!879 lt!113563))))

(declare-fun b!225392 () Bool)

(declare-fun e!146294 () Bool)

(declare-fun e!146300 () Bool)

(declare-fun mapRes!10033 () Bool)

(assert (=> b!225392 (= e!146294 (and e!146300 mapRes!10033))))

(declare-fun condMapEmpty!10033 () Bool)

(declare-fun mapDefault!10033 () ValueCell!2611)

