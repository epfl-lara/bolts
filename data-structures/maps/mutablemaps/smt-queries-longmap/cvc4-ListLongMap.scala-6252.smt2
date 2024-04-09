; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80010 () Bool)

(assert start!80010)

(declare-fun b!940091 () Bool)

(declare-fun b_free!17837 () Bool)

(declare-fun b_next!17837 () Bool)

(assert (=> b!940091 (= b_free!17837 (not b_next!17837))))

(declare-fun tp!61987 () Bool)

(declare-fun b_and!29267 () Bool)

(assert (=> b!940091 (= tp!61987 b_and!29267)))

(declare-fun b!940086 () Bool)

(declare-fun e!528281 () Bool)

(assert (=> b!940086 (= e!528281 true)))

(declare-fun lt!424594 () Bool)

(declare-datatypes ((V!32091 0))(
  ( (V!32092 (val!10223 Int)) )
))
(declare-datatypes ((ValueCell!9691 0))(
  ( (ValueCellFull!9691 (v!12754 V!32091)) (EmptyCell!9691) )
))
(declare-datatypes ((array!56660 0))(
  ( (array!56661 (arr!27261 (Array (_ BitVec 32) ValueCell!9691)) (size!27723 (_ BitVec 32))) )
))
(declare-datatypes ((array!56662 0))(
  ( (array!56663 (arr!27262 (Array (_ BitVec 32) (_ BitVec 64))) (size!27724 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4532 0))(
  ( (LongMapFixedSize!4533 (defaultEntry!5557 Int) (mask!27085 (_ BitVec 32)) (extraKeys!5289 (_ BitVec 32)) (zeroValue!5393 V!32091) (minValue!5393 V!32091) (_size!2321 (_ BitVec 32)) (_keys!10403 array!56662) (_values!5580 array!56660) (_vacant!2321 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4532)

(declare-datatypes ((List!19316 0))(
  ( (Nil!19313) (Cons!19312 (h!20458 (_ BitVec 64)) (t!27639 List!19316)) )
))
(declare-fun arrayNoDuplicates!0 (array!56662 (_ BitVec 32) List!19316) Bool)

(assert (=> b!940086 (= lt!424594 (arrayNoDuplicates!0 (_keys!10403 thiss!1141) #b00000000000000000000000000000000 Nil!19313))))

(declare-fun mapNonEmpty!32308 () Bool)

(declare-fun mapRes!32308 () Bool)

(declare-fun tp!61986 () Bool)

(declare-fun e!528286 () Bool)

(assert (=> mapNonEmpty!32308 (= mapRes!32308 (and tp!61986 e!528286))))

(declare-fun mapKey!32308 () (_ BitVec 32))

(declare-fun mapRest!32308 () (Array (_ BitVec 32) ValueCell!9691))

(declare-fun mapValue!32308 () ValueCell!9691)

(assert (=> mapNonEmpty!32308 (= (arr!27261 (_values!5580 thiss!1141)) (store mapRest!32308 mapKey!32308 mapValue!32308))))

(declare-fun b!940087 () Bool)

(declare-fun e!528285 () Bool)

(declare-fun e!528282 () Bool)

(assert (=> b!940087 (= e!528285 e!528282)))

(declare-fun res!632244 () Bool)

(assert (=> b!940087 (=> (not res!632244) (not e!528282))))

(declare-datatypes ((SeekEntryResult!8982 0))(
  ( (MissingZero!8982 (index!38298 (_ BitVec 32))) (Found!8982 (index!38299 (_ BitVec 32))) (Intermediate!8982 (undefined!9794 Bool) (index!38300 (_ BitVec 32)) (x!80612 (_ BitVec 32))) (Undefined!8982) (MissingVacant!8982 (index!38301 (_ BitVec 32))) )
))
(declare-fun lt!424595 () SeekEntryResult!8982)

(assert (=> b!940087 (= res!632244 (is-Found!8982 lt!424595))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56662 (_ BitVec 32)) SeekEntryResult!8982)

(assert (=> b!940087 (= lt!424595 (seekEntry!0 key!756 (_keys!10403 thiss!1141) (mask!27085 thiss!1141)))))

(declare-fun res!632245 () Bool)

(assert (=> start!80010 (=> (not res!632245) (not e!528285))))

(declare-fun valid!1722 (LongMapFixedSize!4532) Bool)

(assert (=> start!80010 (= res!632245 (valid!1722 thiss!1141))))

(assert (=> start!80010 e!528285))

(declare-fun e!528283 () Bool)

(assert (=> start!80010 e!528283))

(assert (=> start!80010 true))

(declare-fun b!940088 () Bool)

(declare-fun res!632243 () Bool)

(assert (=> b!940088 (=> (not res!632243) (not e!528285))))

(assert (=> b!940088 (= res!632243 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!940089 () Bool)

(declare-fun e!528287 () Bool)

(declare-fun e!528288 () Bool)

(assert (=> b!940089 (= e!528287 (and e!528288 mapRes!32308))))

(declare-fun condMapEmpty!32308 () Bool)

(declare-fun mapDefault!32308 () ValueCell!9691)

