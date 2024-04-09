; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22972 () Bool)

(assert start!22972)

(declare-fun b!240297 () Bool)

(declare-fun b_free!6463 () Bool)

(declare-fun b_next!6463 () Bool)

(assert (=> b!240297 (= b_free!6463 (not b_next!6463))))

(declare-fun tp!22592 () Bool)

(declare-fun b_and!13447 () Bool)

(assert (=> b!240297 (= tp!22592 b_and!13447)))

(declare-fun b!240278 () Bool)

(declare-fun e!155981 () Bool)

(declare-datatypes ((V!8081 0))(
  ( (V!8082 (val!3207 Int)) )
))
(declare-datatypes ((ValueCell!2819 0))(
  ( (ValueCellFull!2819 (v!5241 V!8081)) (EmptyCell!2819) )
))
(declare-datatypes ((array!11928 0))(
  ( (array!11929 (arr!5665 (Array (_ BitVec 32) ValueCell!2819)) (size!6006 (_ BitVec 32))) )
))
(declare-datatypes ((array!11930 0))(
  ( (array!11931 (arr!5666 (Array (_ BitVec 32) (_ BitVec 64))) (size!6007 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3538 0))(
  ( (LongMapFixedSize!3539 (defaultEntry!4454 Int) (mask!10510 (_ BitVec 32)) (extraKeys!4191 (_ BitVec 32)) (zeroValue!4295 V!8081) (minValue!4295 V!8081) (_size!1818 (_ BitVec 32)) (_keys!6556 array!11930) (_values!4437 array!11928) (_vacant!1818 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3538)

(assert (=> b!240278 (= e!155981 (bvsge #b00000000000000000000000000000000 (size!6007 (_keys!6556 thiss!1504))))))

(declare-fun b!240279 () Bool)

(declare-fun e!155985 () Bool)

(declare-fun call!22347 () Bool)

(assert (=> b!240279 (= e!155985 (not call!22347))))

(declare-fun mapIsEmpty!10719 () Bool)

(declare-fun mapRes!10719 () Bool)

(assert (=> mapIsEmpty!10719 mapRes!10719))

(declare-fun bm!22344 () Bool)

(declare-datatypes ((SeekEntryResult!1054 0))(
  ( (MissingZero!1054 (index!6386 (_ BitVec 32))) (Found!1054 (index!6387 (_ BitVec 32))) (Intermediate!1054 (undefined!1866 Bool) (index!6388 (_ BitVec 32)) (x!24166 (_ BitVec 32))) (Undefined!1054) (MissingVacant!1054 (index!6389 (_ BitVec 32))) )
))
(declare-fun lt!120976 () SeekEntryResult!1054)

(declare-fun c!40018 () Bool)

(declare-fun call!22348 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22344 (= call!22348 (inRange!0 (ite c!40018 (index!6386 lt!120976) (index!6389 lt!120976)) (mask!10510 thiss!1504)))))

(declare-fun b!240280 () Bool)

(declare-fun res!117821 () Bool)

(assert (=> b!240280 (=> (not res!117821) (not e!155981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!240280 (= res!117821 (validMask!0 (mask!10510 thiss!1504)))))

(declare-fun b!240281 () Bool)

(declare-fun e!155978 () Bool)

(declare-fun e!155984 () Bool)

(assert (=> b!240281 (= e!155978 e!155984)))

(declare-fun res!117814 () Bool)

(assert (=> b!240281 (=> (not res!117814) (not e!155984))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!240281 (= res!117814 (or (= lt!120976 (MissingZero!1054 index!297)) (= lt!120976 (MissingVacant!1054 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11930 (_ BitVec 32)) SeekEntryResult!1054)

(assert (=> b!240281 (= lt!120976 (seekEntryOrOpen!0 key!932 (_keys!6556 thiss!1504) (mask!10510 thiss!1504)))))

(declare-fun b!240282 () Bool)

(declare-fun e!155976 () Bool)

(assert (=> b!240282 (= e!155976 (not call!22347))))

(declare-fun b!240283 () Bool)

(declare-fun c!40016 () Bool)

(assert (=> b!240283 (= c!40016 (is-MissingVacant!1054 lt!120976))))

(declare-fun e!155979 () Bool)

(declare-fun e!155980 () Bool)

(assert (=> b!240283 (= e!155979 e!155980)))

(declare-fun mapNonEmpty!10719 () Bool)

(declare-fun tp!22593 () Bool)

(declare-fun e!155987 () Bool)

(assert (=> mapNonEmpty!10719 (= mapRes!10719 (and tp!22593 e!155987))))

(declare-fun mapRest!10719 () (Array (_ BitVec 32) ValueCell!2819))

(declare-fun mapKey!10719 () (_ BitVec 32))

(declare-fun mapValue!10719 () ValueCell!2819)

(assert (=> mapNonEmpty!10719 (= (arr!5665 (_values!4437 thiss!1504)) (store mapRest!10719 mapKey!10719 mapValue!10719))))

(declare-fun b!240285 () Bool)

(declare-datatypes ((Unit!7388 0))(
  ( (Unit!7389) )
))
(declare-fun e!155982 () Unit!7388)

(declare-fun Unit!7390 () Unit!7388)

(assert (=> b!240285 (= e!155982 Unit!7390)))

(declare-fun lt!120978 () Unit!7388)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!340 (array!11930 array!11928 (_ BitVec 32) (_ BitVec 32) V!8081 V!8081 (_ BitVec 64) Int) Unit!7388)

(assert (=> b!240285 (= lt!120978 (lemmaInListMapThenSeekEntryOrOpenFindsIt!340 (_keys!6556 thiss!1504) (_values!4437 thiss!1504) (mask!10510 thiss!1504) (extraKeys!4191 thiss!1504) (zeroValue!4295 thiss!1504) (minValue!4295 thiss!1504) key!932 (defaultEntry!4454 thiss!1504)))))

(assert (=> b!240285 false))

(declare-fun b!240286 () Bool)

(assert (=> b!240286 (= e!155980 (is-Undefined!1054 lt!120976))))

(declare-fun b!240287 () Bool)

(declare-fun res!117822 () Bool)

(assert (=> b!240287 (= res!117822 (= (select (arr!5666 (_keys!6556 thiss!1504)) (index!6389 lt!120976)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!240287 (=> (not res!117822) (not e!155985))))

(declare-fun b!240288 () Bool)

(declare-fun res!117823 () Bool)

(assert (=> b!240288 (=> (not res!117823) (not e!155981))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11930 (_ BitVec 32)) Bool)

(assert (=> b!240288 (= res!117823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6556 thiss!1504) (mask!10510 thiss!1504)))))

(declare-fun b!240289 () Bool)

(assert (=> b!240289 (= e!155980 e!155985)))

(declare-fun res!117827 () Bool)

(assert (=> b!240289 (= res!117827 call!22348)))

(assert (=> b!240289 (=> (not res!117827) (not e!155985))))

(declare-fun bm!22345 () Bool)

(declare-fun arrayContainsKey!0 (array!11930 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22345 (= call!22347 (arrayContainsKey!0 (_keys!6556 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!240290 () Bool)

(declare-fun tp_is_empty!6325 () Bool)

(assert (=> b!240290 (= e!155987 tp_is_empty!6325)))

(declare-fun b!240291 () Bool)

(declare-fun res!117817 () Bool)

(assert (=> b!240291 (=> (not res!117817) (not e!155981))))

(assert (=> b!240291 (= res!117817 (arrayContainsKey!0 (_keys!6556 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!240292 () Bool)

(declare-fun res!117820 () Bool)

(assert (=> b!240292 (=> (not res!117820) (not e!155981))))

(declare-datatypes ((List!3629 0))(
  ( (Nil!3626) (Cons!3625 (h!4281 (_ BitVec 64)) (t!8632 List!3629)) )
))
(declare-fun arrayNoDuplicates!0 (array!11930 (_ BitVec 32) List!3629) Bool)

(assert (=> b!240292 (= res!117820 (arrayNoDuplicates!0 (_keys!6556 thiss!1504) #b00000000000000000000000000000000 Nil!3626))))

(declare-fun b!240293 () Bool)

(declare-fun res!117826 () Bool)

(assert (=> b!240293 (=> (not res!117826) (not e!155981))))

(assert (=> b!240293 (= res!117826 (and (= (size!6006 (_values!4437 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10510 thiss!1504))) (= (size!6007 (_keys!6556 thiss!1504)) (size!6006 (_values!4437 thiss!1504))) (bvsge (mask!10510 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4191 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4191 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!240294 () Bool)

(declare-fun res!117825 () Bool)

(assert (=> b!240294 (=> (not res!117825) (not e!155976))))

(assert (=> b!240294 (= res!117825 call!22348)))

(assert (=> b!240294 (= e!155979 e!155976)))

(declare-fun b!240295 () Bool)

(declare-fun res!117824 () Bool)

(assert (=> b!240295 (=> (not res!117824) (not e!155981))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!240295 (= res!117824 (validKeyInArray!0 key!932))))

(declare-fun b!240296 () Bool)

(assert (=> b!240296 (= e!155984 e!155981)))

(declare-fun res!117815 () Bool)

(assert (=> b!240296 (=> (not res!117815) (not e!155981))))

(assert (=> b!240296 (= res!117815 (inRange!0 index!297 (mask!10510 thiss!1504)))))

(declare-fun lt!120977 () Unit!7388)

(assert (=> b!240296 (= lt!120977 e!155982)))

(declare-fun c!40017 () Bool)

(declare-datatypes ((tuple2!4722 0))(
  ( (tuple2!4723 (_1!2371 (_ BitVec 64)) (_2!2371 V!8081)) )
))
(declare-datatypes ((List!3630 0))(
  ( (Nil!3627) (Cons!3626 (h!4282 tuple2!4722) (t!8633 List!3630)) )
))
(declare-datatypes ((ListLongMap!3649 0))(
  ( (ListLongMap!3650 (toList!1840 List!3630)) )
))
(declare-fun contains!1722 (ListLongMap!3649 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1363 (array!11930 array!11928 (_ BitVec 32) (_ BitVec 32) V!8081 V!8081 (_ BitVec 32) Int) ListLongMap!3649)

(assert (=> b!240296 (= c!40017 (contains!1722 (getCurrentListMap!1363 (_keys!6556 thiss!1504) (_values!4437 thiss!1504) (mask!10510 thiss!1504) (extraKeys!4191 thiss!1504) (zeroValue!4295 thiss!1504) (minValue!4295 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4454 thiss!1504)) key!932))))

(declare-fun e!155983 () Bool)

(declare-fun e!155986 () Bool)

(declare-fun array_inv!3739 (array!11930) Bool)

(declare-fun array_inv!3740 (array!11928) Bool)

(assert (=> b!240297 (= e!155983 (and tp!22592 tp_is_empty!6325 (array_inv!3739 (_keys!6556 thiss!1504)) (array_inv!3740 (_values!4437 thiss!1504)) e!155986))))

(declare-fun b!240298 () Bool)

(declare-fun e!155977 () Bool)

(assert (=> b!240298 (= e!155986 (and e!155977 mapRes!10719))))

(declare-fun condMapEmpty!10719 () Bool)

(declare-fun mapDefault!10719 () ValueCell!2819)

