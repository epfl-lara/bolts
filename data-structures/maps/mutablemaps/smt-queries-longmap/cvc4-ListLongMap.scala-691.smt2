; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16666 () Bool)

(assert start!16666)

(declare-fun b!166473 () Bool)

(declare-fun b_free!3959 () Bool)

(declare-fun b_next!3959 () Bool)

(assert (=> b!166473 (= b_free!3959 (not b_next!3959))))

(declare-fun tp!14478 () Bool)

(declare-fun b_and!10391 () Bool)

(assert (=> b!166473 (= tp!14478 b_and!10391)))

(declare-fun b!166468 () Bool)

(declare-fun e!109233 () Bool)

(declare-fun e!109234 () Bool)

(assert (=> b!166468 (= e!109233 e!109234)))

(declare-fun res!79137 () Bool)

(assert (=> b!166468 (=> (not res!79137) (not e!109234))))

(declare-datatypes ((V!4661 0))(
  ( (V!4662 (val!1925 Int)) )
))
(declare-datatypes ((ValueCell!1537 0))(
  ( (ValueCellFull!1537 (v!3786 V!4661)) (EmptyCell!1537) )
))
(declare-datatypes ((array!6618 0))(
  ( (array!6619 (arr!3144 (Array (_ BitVec 32) (_ BitVec 64))) (size!3432 (_ BitVec 32))) )
))
(declare-datatypes ((array!6620 0))(
  ( (array!6621 (arr!3145 (Array (_ BitVec 32) ValueCell!1537)) (size!3433 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1982 0))(
  ( (LongMapFixedSize!1983 (defaultEntry!3433 Int) (mask!8164 (_ BitVec 32)) (extraKeys!3174 (_ BitVec 32)) (zeroValue!3276 V!4661) (minValue!3276 V!4661) (_size!1040 (_ BitVec 32)) (_keys!5258 array!6618) (_values!3416 array!6620) (_vacant!1040 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1982)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!166468 (= res!79137 (validMask!0 (mask!8164 thiss!1248)))))

(declare-datatypes ((Unit!5063 0))(
  ( (Unit!5064) )
))
(declare-fun lt!83359 () Unit!5063)

(declare-fun e!109235 () Unit!5063)

(assert (=> b!166468 (= lt!83359 e!109235)))

(declare-fun c!30201 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3104 0))(
  ( (tuple2!3105 (_1!1562 (_ BitVec 64)) (_2!1562 V!4661)) )
))
(declare-datatypes ((List!2115 0))(
  ( (Nil!2112) (Cons!2111 (h!2728 tuple2!3104) (t!6925 List!2115)) )
))
(declare-datatypes ((ListLongMap!2073 0))(
  ( (ListLongMap!2074 (toList!1052 List!2115)) )
))
(declare-fun contains!1088 (ListLongMap!2073 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!705 (array!6618 array!6620 (_ BitVec 32) (_ BitVec 32) V!4661 V!4661 (_ BitVec 32) Int) ListLongMap!2073)

(assert (=> b!166468 (= c!30201 (contains!1088 (getCurrentListMap!705 (_keys!5258 thiss!1248) (_values!3416 thiss!1248) (mask!8164 thiss!1248) (extraKeys!3174 thiss!1248) (zeroValue!3276 thiss!1248) (minValue!3276 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3433 thiss!1248)) key!828))))

(declare-fun b!166469 () Bool)

(declare-fun Unit!5065 () Unit!5063)

(assert (=> b!166469 (= e!109235 Unit!5065)))

(declare-fun lt!83356 () Unit!5063)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!87 (array!6618 array!6620 (_ BitVec 32) (_ BitVec 32) V!4661 V!4661 (_ BitVec 64) Int) Unit!5063)

(assert (=> b!166469 (= lt!83356 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!87 (_keys!5258 thiss!1248) (_values!3416 thiss!1248) (mask!8164 thiss!1248) (extraKeys!3174 thiss!1248) (zeroValue!3276 thiss!1248) (minValue!3276 thiss!1248) key!828 (defaultEntry!3433 thiss!1248)))))

(assert (=> b!166469 false))

(declare-fun b!166470 () Bool)

(declare-fun e!109239 () Bool)

(declare-fun tp_is_empty!3761 () Bool)

(assert (=> b!166470 (= e!109239 tp_is_empty!3761)))

(declare-fun e!109240 () Bool)

(declare-fun b!166471 () Bool)

(declare-datatypes ((SeekEntryResult!468 0))(
  ( (MissingZero!468 (index!4040 (_ BitVec 32))) (Found!468 (index!4041 (_ BitVec 32))) (Intermediate!468 (undefined!1280 Bool) (index!4042 (_ BitVec 32)) (x!18448 (_ BitVec 32))) (Undefined!468) (MissingVacant!468 (index!4043 (_ BitVec 32))) )
))
(declare-fun lt!83358 () SeekEntryResult!468)

(assert (=> b!166471 (= e!109240 (= (select (arr!3144 (_keys!5258 thiss!1248)) (index!4041 lt!83358)) key!828))))

(declare-fun b!166472 () Bool)

(assert (=> b!166472 (= e!109234 false)))

(declare-fun lt!83360 () Bool)

(declare-datatypes ((List!2116 0))(
  ( (Nil!2113) (Cons!2112 (h!2729 (_ BitVec 64)) (t!6926 List!2116)) )
))
(declare-fun arrayNoDuplicates!0 (array!6618 (_ BitVec 32) List!2116) Bool)

(assert (=> b!166472 (= lt!83360 (arrayNoDuplicates!0 (_keys!5258 thiss!1248) #b00000000000000000000000000000000 Nil!2113))))

(declare-fun e!109238 () Bool)

(declare-fun e!109231 () Bool)

(declare-fun array_inv!2009 (array!6618) Bool)

(declare-fun array_inv!2010 (array!6620) Bool)

(assert (=> b!166473 (= e!109231 (and tp!14478 tp_is_empty!3761 (array_inv!2009 (_keys!5258 thiss!1248)) (array_inv!2010 (_values!3416 thiss!1248)) e!109238))))

(declare-fun b!166474 () Bool)

(declare-fun e!109232 () Bool)

(assert (=> b!166474 (= e!109232 tp_is_empty!3761)))

(declare-fun b!166475 () Bool)

(declare-fun res!79135 () Bool)

(declare-fun e!109236 () Bool)

(assert (=> b!166475 (=> (not res!79135) (not e!109236))))

(assert (=> b!166475 (= res!79135 (not (= key!828 (bvneg key!828))))))

(declare-fun res!79139 () Bool)

(assert (=> start!16666 (=> (not res!79139) (not e!109236))))

(declare-fun valid!862 (LongMapFixedSize!1982) Bool)

(assert (=> start!16666 (= res!79139 (valid!862 thiss!1248))))

(assert (=> start!16666 e!109236))

(assert (=> start!16666 e!109231))

(assert (=> start!16666 true))

(declare-fun b!166476 () Bool)

(assert (=> b!166476 (= e!109236 e!109233)))

(declare-fun res!79136 () Bool)

(assert (=> b!166476 (=> (not res!79136) (not e!109233))))

(assert (=> b!166476 (= res!79136 (and (not (is-Undefined!468 lt!83358)) (not (is-MissingVacant!468 lt!83358)) (not (is-MissingZero!468 lt!83358)) (is-Found!468 lt!83358)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6618 (_ BitVec 32)) SeekEntryResult!468)

(assert (=> b!166476 (= lt!83358 (seekEntryOrOpen!0 key!828 (_keys!5258 thiss!1248) (mask!8164 thiss!1248)))))

(declare-fun mapNonEmpty!6360 () Bool)

(declare-fun mapRes!6360 () Bool)

(declare-fun tp!14477 () Bool)

(assert (=> mapNonEmpty!6360 (= mapRes!6360 (and tp!14477 e!109239))))

(declare-fun mapValue!6360 () ValueCell!1537)

(declare-fun mapKey!6360 () (_ BitVec 32))

(declare-fun mapRest!6360 () (Array (_ BitVec 32) ValueCell!1537))

(assert (=> mapNonEmpty!6360 (= (arr!3145 (_values!3416 thiss!1248)) (store mapRest!6360 mapKey!6360 mapValue!6360))))

(declare-fun b!166477 () Bool)

(declare-fun res!79140 () Bool)

(assert (=> b!166477 (=> (not res!79140) (not e!109234))))

(assert (=> b!166477 (= res!79140 (and (= (size!3433 (_values!3416 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8164 thiss!1248))) (= (size!3432 (_keys!5258 thiss!1248)) (size!3433 (_values!3416 thiss!1248))) (bvsge (mask!8164 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3174 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3174 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!166478 () Bool)

(assert (=> b!166478 (= e!109238 (and e!109232 mapRes!6360))))

(declare-fun condMapEmpty!6360 () Bool)

(declare-fun mapDefault!6360 () ValueCell!1537)

