; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80036 () Bool)

(assert start!80036)

(declare-fun b!940485 () Bool)

(declare-fun b_free!17863 () Bool)

(declare-fun b_next!17863 () Bool)

(assert (=> b!940485 (= b_free!17863 (not b_next!17863))))

(declare-fun tp!62065 () Bool)

(declare-fun b_and!29293 () Bool)

(assert (=> b!940485 (= tp!62065 b_and!29293)))

(declare-fun b!940476 () Bool)

(declare-fun e!528594 () Bool)

(declare-fun e!528597 () Bool)

(assert (=> b!940476 (= e!528594 e!528597)))

(declare-fun res!632477 () Bool)

(assert (=> b!940476 (=> (not res!632477) (not e!528597))))

(declare-datatypes ((SeekEntryResult!8994 0))(
  ( (MissingZero!8994 (index!38346 (_ BitVec 32))) (Found!8994 (index!38347 (_ BitVec 32))) (Intermediate!8994 (undefined!9806 Bool) (index!38348 (_ BitVec 32)) (x!80664 (_ BitVec 32))) (Undefined!8994) (MissingVacant!8994 (index!38349 (_ BitVec 32))) )
))
(declare-fun lt!424711 () SeekEntryResult!8994)

(assert (=> b!940476 (= res!632477 (is-Found!8994 lt!424711))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32127 0))(
  ( (V!32128 (val!10236 Int)) )
))
(declare-datatypes ((ValueCell!9704 0))(
  ( (ValueCellFull!9704 (v!12767 V!32127)) (EmptyCell!9704) )
))
(declare-datatypes ((array!56712 0))(
  ( (array!56713 (arr!27287 (Array (_ BitVec 32) ValueCell!9704)) (size!27749 (_ BitVec 32))) )
))
(declare-datatypes ((array!56714 0))(
  ( (array!56715 (arr!27288 (Array (_ BitVec 32) (_ BitVec 64))) (size!27750 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4558 0))(
  ( (LongMapFixedSize!4559 (defaultEntry!5570 Int) (mask!27108 (_ BitVec 32)) (extraKeys!5302 (_ BitVec 32)) (zeroValue!5406 V!32127) (minValue!5406 V!32127) (_size!2334 (_ BitVec 32)) (_keys!10416 array!56714) (_values!5593 array!56712) (_vacant!2334 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4558)

(declare-fun seekEntry!0 ((_ BitVec 64) array!56714 (_ BitVec 32)) SeekEntryResult!8994)

(assert (=> b!940476 (= lt!424711 (seekEntry!0 key!756 (_keys!10416 thiss!1141) (mask!27108 thiss!1141)))))

(declare-fun b!940477 () Bool)

(declare-fun e!528598 () Bool)

(assert (=> b!940477 (= e!528598 true)))

(declare-fun lt!424713 () Bool)

(declare-datatypes ((List!19325 0))(
  ( (Nil!19322) (Cons!19321 (h!20467 (_ BitVec 64)) (t!27648 List!19325)) )
))
(declare-fun arrayNoDuplicates!0 (array!56714 (_ BitVec 32) List!19325) Bool)

(assert (=> b!940477 (= lt!424713 (arrayNoDuplicates!0 (_keys!10416 thiss!1141) #b00000000000000000000000000000000 Nil!19322))))

(declare-fun b!940479 () Bool)

(declare-fun res!632476 () Bool)

(assert (=> b!940479 (=> res!632476 e!528598)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56714 (_ BitVec 32)) Bool)

(assert (=> b!940479 (= res!632476 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10416 thiss!1141) (mask!27108 thiss!1141))))))

(declare-fun b!940480 () Bool)

(declare-fun e!528595 () Bool)

(declare-fun tp_is_empty!20371 () Bool)

(assert (=> b!940480 (= e!528595 tp_is_empty!20371)))

(declare-fun b!940481 () Bool)

(declare-fun e!528600 () Bool)

(assert (=> b!940481 (= e!528600 tp_is_empty!20371)))

(declare-fun mapNonEmpty!32347 () Bool)

(declare-fun mapRes!32347 () Bool)

(declare-fun tp!62064 () Bool)

(assert (=> mapNonEmpty!32347 (= mapRes!32347 (and tp!62064 e!528595))))

(declare-fun mapRest!32347 () (Array (_ BitVec 32) ValueCell!9704))

(declare-fun mapKey!32347 () (_ BitVec 32))

(declare-fun mapValue!32347 () ValueCell!9704)

(assert (=> mapNonEmpty!32347 (= (arr!27287 (_values!5593 thiss!1141)) (store mapRest!32347 mapKey!32347 mapValue!32347))))

(declare-fun b!940482 () Bool)

(declare-fun res!632480 () Bool)

(assert (=> b!940482 (=> res!632480 e!528598)))

(assert (=> b!940482 (= res!632480 (or (not (= (size!27749 (_values!5593 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27108 thiss!1141)))) (not (= (size!27750 (_keys!10416 thiss!1141)) (size!27749 (_values!5593 thiss!1141)))) (bvslt (mask!27108 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5302 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5302 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!940483 () Bool)

(assert (=> b!940483 (= e!528597 (not e!528598))))

(declare-fun res!632479 () Bool)

(assert (=> b!940483 (=> res!632479 e!528598)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940483 (= res!632479 (not (validMask!0 (mask!27108 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!56714 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940483 (arrayContainsKey!0 (_keys!10416 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31779 0))(
  ( (Unit!31780) )
))
(declare-fun lt!424712 () Unit!31779)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56714 (_ BitVec 64) (_ BitVec 32)) Unit!31779)

(assert (=> b!940483 (= lt!424712 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10416 thiss!1141) key!756 (index!38347 lt!424711)))))

(declare-fun b!940478 () Bool)

(declare-fun e!528596 () Bool)

(assert (=> b!940478 (= e!528596 (and e!528600 mapRes!32347))))

(declare-fun condMapEmpty!32347 () Bool)

(declare-fun mapDefault!32347 () ValueCell!9704)

