; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22070 () Bool)

(assert start!22070)

(declare-fun b!228203 () Bool)

(declare-fun b_free!6125 () Bool)

(declare-fun b_next!6125 () Bool)

(assert (=> b!228203 (= b_free!6125 (not b_next!6125))))

(declare-fun tp!21516 () Bool)

(declare-fun b_and!13041 () Bool)

(assert (=> b!228203 (= tp!21516 b_and!13041)))

(declare-fun b!228184 () Bool)

(declare-fun e!148054 () Bool)

(declare-fun e!148049 () Bool)

(assert (=> b!228184 (= e!148054 e!148049)))

(declare-fun res!112334 () Bool)

(assert (=> b!228184 (=> (not res!112334) (not e!148049))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!7629 0))(
  ( (V!7630 (val!3038 Int)) )
))
(declare-datatypes ((ValueCell!2650 0))(
  ( (ValueCellFull!2650 (v!5054 V!7629)) (EmptyCell!2650) )
))
(declare-datatypes ((array!11216 0))(
  ( (array!11217 (arr!5327 (Array (_ BitVec 32) ValueCell!2650)) (size!5660 (_ BitVec 32))) )
))
(declare-datatypes ((array!11218 0))(
  ( (array!11219 (arr!5328 (Array (_ BitVec 32) (_ BitVec 64))) (size!5661 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3200 0))(
  ( (LongMapFixedSize!3201 (defaultEntry!4259 Int) (mask!10127 (_ BitVec 32)) (extraKeys!3996 (_ BitVec 32)) (zeroValue!4100 V!7629) (minValue!4100 V!7629) (_size!1649 (_ BitVec 32)) (_keys!6313 array!11218) (_values!4242 array!11216) (_vacant!1649 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3200)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!228184 (= res!112334 (inRange!0 index!297 (mask!10127 thiss!1504)))))

(declare-datatypes ((Unit!6934 0))(
  ( (Unit!6935) )
))
(declare-fun lt!114853 () Unit!6934)

(declare-fun e!148060 () Unit!6934)

(assert (=> b!228184 (= lt!114853 e!148060)))

(declare-fun c!37829 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4480 0))(
  ( (tuple2!4481 (_1!2250 (_ BitVec 64)) (_2!2250 V!7629)) )
))
(declare-datatypes ((List!3426 0))(
  ( (Nil!3423) (Cons!3422 (h!4070 tuple2!4480) (t!8393 List!3426)) )
))
(declare-datatypes ((ListLongMap!3407 0))(
  ( (ListLongMap!3408 (toList!1719 List!3426)) )
))
(declare-fun contains!1587 (ListLongMap!3407 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1242 (array!11218 array!11216 (_ BitVec 32) (_ BitVec 32) V!7629 V!7629 (_ BitVec 32) Int) ListLongMap!3407)

(assert (=> b!228184 (= c!37829 (contains!1587 (getCurrentListMap!1242 (_keys!6313 thiss!1504) (_values!4242 thiss!1504) (mask!10127 thiss!1504) (extraKeys!3996 thiss!1504) (zeroValue!4100 thiss!1504) (minValue!4100 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4259 thiss!1504)) key!932))))

(declare-fun b!228185 () Bool)

(declare-fun c!37827 () Bool)

(declare-datatypes ((SeekEntryResult!915 0))(
  ( (MissingZero!915 (index!5830 (_ BitVec 32))) (Found!915 (index!5831 (_ BitVec 32))) (Intermediate!915 (undefined!1727 Bool) (index!5832 (_ BitVec 32)) (x!23327 (_ BitVec 32))) (Undefined!915) (MissingVacant!915 (index!5833 (_ BitVec 32))) )
))
(declare-fun lt!114856 () SeekEntryResult!915)

(assert (=> b!228185 (= c!37827 (is-MissingVacant!915 lt!114856))))

(declare-fun e!148059 () Bool)

(declare-fun e!148053 () Bool)

(assert (=> b!228185 (= e!148059 e!148053)))

(declare-fun b!228186 () Bool)

(declare-fun e!148048 () Unit!6934)

(declare-fun Unit!6936 () Unit!6934)

(assert (=> b!228186 (= e!148048 Unit!6936)))

(declare-fun mapNonEmpty!10150 () Bool)

(declare-fun mapRes!10150 () Bool)

(declare-fun tp!21517 () Bool)

(declare-fun e!148050 () Bool)

(assert (=> mapNonEmpty!10150 (= mapRes!10150 (and tp!21517 e!148050))))

(declare-fun mapValue!10150 () ValueCell!2650)

(declare-fun mapRest!10150 () (Array (_ BitVec 32) ValueCell!2650))

(declare-fun mapKey!10150 () (_ BitVec 32))

(assert (=> mapNonEmpty!10150 (= (arr!5327 (_values!4242 thiss!1504)) (store mapRest!10150 mapKey!10150 mapValue!10150))))

(declare-fun call!21207 () Bool)

(declare-fun c!37828 () Bool)

(declare-fun bm!21204 () Bool)

(assert (=> bm!21204 (= call!21207 (inRange!0 (ite c!37828 (index!5830 lt!114856) (index!5833 lt!114856)) (mask!10127 thiss!1504)))))

(declare-fun mapIsEmpty!10150 () Bool)

(assert (=> mapIsEmpty!10150 mapRes!10150))

(declare-fun b!228187 () Bool)

(declare-fun e!148052 () Bool)

(declare-fun e!148046 () Bool)

(assert (=> b!228187 (= e!148052 (and e!148046 mapRes!10150))))

(declare-fun condMapEmpty!10150 () Bool)

(declare-fun mapDefault!10150 () ValueCell!2650)

