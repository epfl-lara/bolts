; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80288 () Bool)

(assert start!80288)

(declare-fun b!942563 () Bool)

(declare-fun b_free!17959 () Bool)

(declare-fun b_next!17959 () Bool)

(assert (=> b!942563 (= b_free!17959 (not b_next!17959))))

(declare-fun tp!62383 () Bool)

(declare-fun b_and!29389 () Bool)

(assert (=> b!942563 (= tp!62383 b_and!29389)))

(declare-fun mapNonEmpty!32522 () Bool)

(declare-fun mapRes!32522 () Bool)

(declare-fun tp!62384 () Bool)

(declare-fun e!529993 () Bool)

(assert (=> mapNonEmpty!32522 (= mapRes!32522 (and tp!62384 e!529993))))

(declare-datatypes ((V!32255 0))(
  ( (V!32256 (val!10284 Int)) )
))
(declare-datatypes ((ValueCell!9752 0))(
  ( (ValueCellFull!9752 (v!12815 V!32255)) (EmptyCell!9752) )
))
(declare-fun mapRest!32522 () (Array (_ BitVec 32) ValueCell!9752))

(declare-fun mapKey!32522 () (_ BitVec 32))

(declare-fun mapValue!32522 () ValueCell!9752)

(declare-datatypes ((array!56922 0))(
  ( (array!56923 (arr!27383 (Array (_ BitVec 32) ValueCell!9752)) (size!27849 (_ BitVec 32))) )
))
(declare-datatypes ((array!56924 0))(
  ( (array!56925 (arr!27384 (Array (_ BitVec 32) (_ BitVec 64))) (size!27850 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4654 0))(
  ( (LongMapFixedSize!4655 (defaultEntry!5618 Int) (mask!27225 (_ BitVec 32)) (extraKeys!5350 (_ BitVec 32)) (zeroValue!5454 V!32255) (minValue!5454 V!32255) (_size!2382 (_ BitVec 32)) (_keys!10488 array!56924) (_values!5641 array!56922) (_vacant!2382 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4654)

(assert (=> mapNonEmpty!32522 (= (arr!27383 (_values!5641 thiss!1141)) (store mapRest!32522 mapKey!32522 mapValue!32522))))

(declare-fun b!942556 () Bool)

(declare-fun res!633476 () Bool)

(declare-fun e!529991 () Bool)

(assert (=> b!942556 (=> (not res!633476) (not e!529991))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!942556 (= res!633476 (validMask!0 (mask!27225 thiss!1141)))))

(declare-fun b!942557 () Bool)

(declare-fun res!633473 () Bool)

(assert (=> b!942557 (=> (not res!633473) (not e!529991))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13514 0))(
  ( (tuple2!13515 (_1!6767 (_ BitVec 64)) (_2!6767 V!32255)) )
))
(declare-datatypes ((List!19353 0))(
  ( (Nil!19350) (Cons!19349 (h!20499 tuple2!13514) (t!27676 List!19353)) )
))
(declare-datatypes ((ListLongMap!12225 0))(
  ( (ListLongMap!12226 (toList!6128 List!19353)) )
))
(declare-fun contains!5149 (ListLongMap!12225 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3316 (array!56924 array!56922 (_ BitVec 32) (_ BitVec 32) V!32255 V!32255 (_ BitVec 32) Int) ListLongMap!12225)

(assert (=> b!942557 (= res!633473 (contains!5149 (getCurrentListMap!3316 (_keys!10488 thiss!1141) (_values!5641 thiss!1141) (mask!27225 thiss!1141) (extraKeys!5350 thiss!1141) (zeroValue!5454 thiss!1141) (minValue!5454 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5618 thiss!1141)) key!756))))

(declare-fun b!942558 () Bool)

(declare-fun e!529990 () Bool)

(declare-fun e!529992 () Bool)

(assert (=> b!942558 (= e!529990 (and e!529992 mapRes!32522))))

(declare-fun condMapEmpty!32522 () Bool)

(declare-fun mapDefault!32522 () ValueCell!9752)

