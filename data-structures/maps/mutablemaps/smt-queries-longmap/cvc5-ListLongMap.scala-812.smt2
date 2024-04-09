; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19772 () Bool)

(assert start!19772)

(declare-fun b!193587 () Bool)

(declare-fun b_free!4711 () Bool)

(declare-fun b_next!4711 () Bool)

(assert (=> b!193587 (= b_free!4711 (not b_next!4711))))

(declare-fun tp!17000 () Bool)

(declare-fun b_and!11439 () Bool)

(assert (=> b!193587 (= tp!17000 b_and!11439)))

(declare-fun b!193577 () Bool)

(declare-fun e!127377 () Bool)

(declare-fun tp_is_empty!4483 () Bool)

(assert (=> b!193577 (= e!127377 tp_is_empty!4483)))

(declare-fun res!91496 () Bool)

(declare-fun e!127375 () Bool)

(assert (=> start!19772 (=> (not res!91496) (not e!127375))))

(declare-datatypes ((V!5625 0))(
  ( (V!5626 (val!2286 Int)) )
))
(declare-datatypes ((ValueCell!1898 0))(
  ( (ValueCellFull!1898 (v!4241 V!5625)) (EmptyCell!1898) )
))
(declare-datatypes ((array!8214 0))(
  ( (array!8215 (arr!3866 (Array (_ BitVec 32) (_ BitVec 64))) (size!4190 (_ BitVec 32))) )
))
(declare-datatypes ((array!8216 0))(
  ( (array!8217 (arr!3867 (Array (_ BitVec 32) ValueCell!1898)) (size!4191 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2704 0))(
  ( (LongMapFixedSize!2705 (defaultEntry!3952 Int) (mask!9209 (_ BitVec 32)) (extraKeys!3689 (_ BitVec 32)) (zeroValue!3793 V!5625) (minValue!3793 V!5625) (_size!1401 (_ BitVec 32)) (_keys!5944 array!8214) (_values!3935 array!8216) (_vacant!1401 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2704)

(declare-fun valid!1101 (LongMapFixedSize!2704) Bool)

(assert (=> start!19772 (= res!91496 (valid!1101 thiss!1248))))

(assert (=> start!19772 e!127375))

(declare-fun e!127370 () Bool)

(assert (=> start!19772 e!127370))

(assert (=> start!19772 true))

(assert (=> start!19772 tp_is_empty!4483))

(declare-fun b!193578 () Bool)

(declare-fun res!91500 () Bool)

(declare-fun e!127374 () Bool)

(assert (=> b!193578 (=> res!91500 e!127374)))

(declare-datatypes ((SeekEntryResult!700 0))(
  ( (MissingZero!700 (index!4970 (_ BitVec 32))) (Found!700 (index!4971 (_ BitVec 32))) (Intermediate!700 (undefined!1512 Bool) (index!4972 (_ BitVec 32)) (x!20678 (_ BitVec 32))) (Undefined!700) (MissingVacant!700 (index!4973 (_ BitVec 32))) )
))
(declare-fun lt!96440 () SeekEntryResult!700)

(assert (=> b!193578 (= res!91500 (or (bvslt (index!4971 lt!96440) #b00000000000000000000000000000000) (bvsge (index!4971 lt!96440) (size!4190 (_keys!5944 thiss!1248)))))))

(declare-fun mapIsEmpty!7754 () Bool)

(declare-fun mapRes!7754 () Bool)

(assert (=> mapIsEmpty!7754 mapRes!7754))

(declare-fun mapNonEmpty!7754 () Bool)

(declare-fun tp!16999 () Bool)

(assert (=> mapNonEmpty!7754 (= mapRes!7754 (and tp!16999 e!127377))))

(declare-fun mapKey!7754 () (_ BitVec 32))

(declare-fun mapRest!7754 () (Array (_ BitVec 32) ValueCell!1898))

(declare-fun mapValue!7754 () ValueCell!1898)

(assert (=> mapNonEmpty!7754 (= (arr!3867 (_values!3935 thiss!1248)) (store mapRest!7754 mapKey!7754 mapValue!7754))))

(declare-fun b!193579 () Bool)

(declare-fun e!127379 () Bool)

(assert (=> b!193579 (= e!127379 (not e!127374))))

(declare-fun res!91501 () Bool)

(assert (=> b!193579 (=> res!91501 e!127374)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!193579 (= res!91501 (not (validMask!0 (mask!9209 thiss!1248))))))

(declare-datatypes ((tuple2!3548 0))(
  ( (tuple2!3549 (_1!1784 (_ BitVec 64)) (_2!1784 V!5625)) )
))
(declare-datatypes ((List!2463 0))(
  ( (Nil!2460) (Cons!2459 (h!3100 tuple2!3548) (t!7395 List!2463)) )
))
(declare-datatypes ((ListLongMap!2479 0))(
  ( (ListLongMap!2480 (toList!1255 List!2463)) )
))
(declare-fun lt!96442 () ListLongMap!2479)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun v!309 () V!5625)

(declare-fun +!313 (ListLongMap!2479 tuple2!3548) ListLongMap!2479)

(declare-fun getCurrentListMap!898 (array!8214 array!8216 (_ BitVec 32) (_ BitVec 32) V!5625 V!5625 (_ BitVec 32) Int) ListLongMap!2479)

(assert (=> b!193579 (= (+!313 lt!96442 (tuple2!3549 key!828 v!309)) (getCurrentListMap!898 (_keys!5944 thiss!1248) (array!8217 (store (arr!3867 (_values!3935 thiss!1248)) (index!4971 lt!96440) (ValueCellFull!1898 v!309)) (size!4191 (_values!3935 thiss!1248))) (mask!9209 thiss!1248) (extraKeys!3689 thiss!1248) (zeroValue!3793 thiss!1248) (minValue!3793 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3952 thiss!1248)))))

(declare-datatypes ((Unit!5861 0))(
  ( (Unit!5862) )
))
(declare-fun lt!96439 () Unit!5861)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!119 (array!8214 array!8216 (_ BitVec 32) (_ BitVec 32) V!5625 V!5625 (_ BitVec 32) (_ BitVec 64) V!5625 Int) Unit!5861)

(assert (=> b!193579 (= lt!96439 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!119 (_keys!5944 thiss!1248) (_values!3935 thiss!1248) (mask!9209 thiss!1248) (extraKeys!3689 thiss!1248) (zeroValue!3793 thiss!1248) (minValue!3793 thiss!1248) (index!4971 lt!96440) key!828 v!309 (defaultEntry!3952 thiss!1248)))))

(declare-fun lt!96441 () Unit!5861)

(declare-fun e!127376 () Unit!5861)

(assert (=> b!193579 (= lt!96441 e!127376)))

(declare-fun c!34903 () Bool)

(declare-fun contains!1372 (ListLongMap!2479 (_ BitVec 64)) Bool)

(assert (=> b!193579 (= c!34903 (contains!1372 lt!96442 key!828))))

(assert (=> b!193579 (= lt!96442 (getCurrentListMap!898 (_keys!5944 thiss!1248) (_values!3935 thiss!1248) (mask!9209 thiss!1248) (extraKeys!3689 thiss!1248) (zeroValue!3793 thiss!1248) (minValue!3793 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3952 thiss!1248)))))

(declare-fun b!193580 () Bool)

(declare-fun res!91495 () Bool)

(assert (=> b!193580 (=> res!91495 e!127374)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8214 (_ BitVec 32)) Bool)

(assert (=> b!193580 (= res!91495 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5944 thiss!1248) (mask!9209 thiss!1248))))))

(declare-fun b!193581 () Bool)

(declare-fun res!91494 () Bool)

(assert (=> b!193581 (=> res!91494 e!127374)))

(assert (=> b!193581 (= res!91494 (or (not (= (size!4191 (_values!3935 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9209 thiss!1248)))) (not (= (size!4190 (_keys!5944 thiss!1248)) (size!4191 (_values!3935 thiss!1248)))) (bvslt (mask!9209 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3689 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3689 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!193582 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!193582 (= e!127374 (validKeyInArray!0 (select (arr!3866 (_keys!5944 thiss!1248)) (index!4971 lt!96440))))))

(declare-fun b!193583 () Bool)

(declare-fun Unit!5863 () Unit!5861)

(assert (=> b!193583 (= e!127376 Unit!5863)))

(declare-fun lt!96444 () Unit!5861)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!191 (array!8214 array!8216 (_ BitVec 32) (_ BitVec 32) V!5625 V!5625 (_ BitVec 64) Int) Unit!5861)

(assert (=> b!193583 (= lt!96444 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!191 (_keys!5944 thiss!1248) (_values!3935 thiss!1248) (mask!9209 thiss!1248) (extraKeys!3689 thiss!1248) (zeroValue!3793 thiss!1248) (minValue!3793 thiss!1248) key!828 (defaultEntry!3952 thiss!1248)))))

(assert (=> b!193583 false))

(declare-fun b!193584 () Bool)

(assert (=> b!193584 (= e!127375 e!127379)))

(declare-fun res!91499 () Bool)

(assert (=> b!193584 (=> (not res!91499) (not e!127379))))

(assert (=> b!193584 (= res!91499 (and (not (is-Undefined!700 lt!96440)) (not (is-MissingVacant!700 lt!96440)) (not (is-MissingZero!700 lt!96440)) (is-Found!700 lt!96440)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8214 (_ BitVec 32)) SeekEntryResult!700)

(assert (=> b!193584 (= lt!96440 (seekEntryOrOpen!0 key!828 (_keys!5944 thiss!1248) (mask!9209 thiss!1248)))))

(declare-fun b!193585 () Bool)

(declare-fun res!91497 () Bool)

(assert (=> b!193585 (=> res!91497 e!127374)))

(declare-datatypes ((List!2464 0))(
  ( (Nil!2461) (Cons!2460 (h!3101 (_ BitVec 64)) (t!7396 List!2464)) )
))
(declare-fun arrayNoDuplicates!0 (array!8214 (_ BitVec 32) List!2464) Bool)

(assert (=> b!193585 (= res!91497 (not (arrayNoDuplicates!0 (_keys!5944 thiss!1248) #b00000000000000000000000000000000 Nil!2461)))))

(declare-fun b!193586 () Bool)

(declare-fun e!127378 () Bool)

(assert (=> b!193586 (= e!127378 tp_is_empty!4483)))

(declare-fun e!127372 () Bool)

(declare-fun array_inv!2499 (array!8214) Bool)

(declare-fun array_inv!2500 (array!8216) Bool)

(assert (=> b!193587 (= e!127370 (and tp!17000 tp_is_empty!4483 (array_inv!2499 (_keys!5944 thiss!1248)) (array_inv!2500 (_values!3935 thiss!1248)) e!127372))))

(declare-fun b!193588 () Bool)

(assert (=> b!193588 (= e!127372 (and e!127378 mapRes!7754))))

(declare-fun condMapEmpty!7754 () Bool)

(declare-fun mapDefault!7754 () ValueCell!1898)

