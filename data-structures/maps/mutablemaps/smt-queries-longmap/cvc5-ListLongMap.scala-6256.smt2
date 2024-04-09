; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80030 () Bool)

(assert start!80030)

(declare-fun b!940394 () Bool)

(declare-fun b_free!17857 () Bool)

(declare-fun b_next!17857 () Bool)

(assert (=> b!940394 (= b_free!17857 (not b_next!17857))))

(declare-fun tp!62046 () Bool)

(declare-fun b_and!29287 () Bool)

(assert (=> b!940394 (= tp!62046 b_and!29287)))

(declare-fun b!940386 () Bool)

(declare-fun res!632422 () Bool)

(declare-fun e!528522 () Bool)

(assert (=> b!940386 (=> res!632422 e!528522)))

(declare-datatypes ((V!32119 0))(
  ( (V!32120 (val!10233 Int)) )
))
(declare-datatypes ((ValueCell!9701 0))(
  ( (ValueCellFull!9701 (v!12764 V!32119)) (EmptyCell!9701) )
))
(declare-datatypes ((array!56700 0))(
  ( (array!56701 (arr!27281 (Array (_ BitVec 32) ValueCell!9701)) (size!27743 (_ BitVec 32))) )
))
(declare-datatypes ((array!56702 0))(
  ( (array!56703 (arr!27282 (Array (_ BitVec 32) (_ BitVec 64))) (size!27744 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4552 0))(
  ( (LongMapFixedSize!4553 (defaultEntry!5567 Int) (mask!27103 (_ BitVec 32)) (extraKeys!5299 (_ BitVec 32)) (zeroValue!5403 V!32119) (minValue!5403 V!32119) (_size!2331 (_ BitVec 32)) (_keys!10413 array!56702) (_values!5590 array!56700) (_vacant!2331 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4552)

(assert (=> b!940386 (= res!632422 (or (not (= (size!27743 (_values!5590 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27103 thiss!1141)))) (not (= (size!27744 (_keys!10413 thiss!1141)) (size!27743 (_values!5590 thiss!1141)))) (bvslt (mask!27103 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5299 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5299 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun res!632424 () Bool)

(declare-fun e!528528 () Bool)

(assert (=> start!80030 (=> (not res!632424) (not e!528528))))

(declare-fun valid!1730 (LongMapFixedSize!4552) Bool)

(assert (=> start!80030 (= res!632424 (valid!1730 thiss!1141))))

(assert (=> start!80030 e!528528))

(declare-fun e!528525 () Bool)

(assert (=> start!80030 e!528525))

(assert (=> start!80030 true))

(declare-fun b!940387 () Bool)

(declare-fun res!632421 () Bool)

(assert (=> b!940387 (=> res!632421 e!528522)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56702 (_ BitVec 32)) Bool)

(assert (=> b!940387 (= res!632421 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10413 thiss!1141) (mask!27103 thiss!1141))))))

(declare-fun b!940388 () Bool)

(declare-fun e!528523 () Bool)

(assert (=> b!940388 (= e!528528 e!528523)))

(declare-fun res!632426 () Bool)

(assert (=> b!940388 (=> (not res!632426) (not e!528523))))

(declare-datatypes ((SeekEntryResult!8991 0))(
  ( (MissingZero!8991 (index!38334 (_ BitVec 32))) (Found!8991 (index!38335 (_ BitVec 32))) (Intermediate!8991 (undefined!9803 Bool) (index!38336 (_ BitVec 32)) (x!80653 (_ BitVec 32))) (Undefined!8991) (MissingVacant!8991 (index!38337 (_ BitVec 32))) )
))
(declare-fun lt!424684 () SeekEntryResult!8991)

(assert (=> b!940388 (= res!632426 (is-Found!8991 lt!424684))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56702 (_ BitVec 32)) SeekEntryResult!8991)

(assert (=> b!940388 (= lt!424684 (seekEntry!0 key!756 (_keys!10413 thiss!1141) (mask!27103 thiss!1141)))))

(declare-fun b!940389 () Bool)

(declare-fun res!632425 () Bool)

(assert (=> b!940389 (=> (not res!632425) (not e!528528))))

(assert (=> b!940389 (= res!632425 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!32338 () Bool)

(declare-fun mapRes!32338 () Bool)

(assert (=> mapIsEmpty!32338 mapRes!32338))

(declare-fun b!940390 () Bool)

(assert (=> b!940390 (= e!528522 true)))

(declare-fun lt!424685 () Bool)

(declare-datatypes ((List!19323 0))(
  ( (Nil!19320) (Cons!19319 (h!20465 (_ BitVec 64)) (t!27646 List!19323)) )
))
(declare-fun arrayNoDuplicates!0 (array!56702 (_ BitVec 32) List!19323) Bool)

(assert (=> b!940390 (= lt!424685 (arrayNoDuplicates!0 (_keys!10413 thiss!1141) #b00000000000000000000000000000000 Nil!19320))))

(declare-fun b!940391 () Bool)

(declare-fun e!528524 () Bool)

(declare-fun tp_is_empty!20365 () Bool)

(assert (=> b!940391 (= e!528524 tp_is_empty!20365)))

(declare-fun b!940392 () Bool)

(assert (=> b!940392 (= e!528523 (not e!528522))))

(declare-fun res!632423 () Bool)

(assert (=> b!940392 (=> res!632423 e!528522)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940392 (= res!632423 (not (validMask!0 (mask!27103 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!56702 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940392 (arrayContainsKey!0 (_keys!10413 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31775 0))(
  ( (Unit!31776) )
))
(declare-fun lt!424686 () Unit!31775)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56702 (_ BitVec 64) (_ BitVec 32)) Unit!31775)

(assert (=> b!940392 (= lt!424686 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10413 thiss!1141) key!756 (index!38335 lt!424684)))))

(declare-fun b!940393 () Bool)

(declare-fun e!528526 () Bool)

(assert (=> b!940393 (= e!528526 tp_is_empty!20365)))

(declare-fun mapNonEmpty!32338 () Bool)

(declare-fun tp!62047 () Bool)

(assert (=> mapNonEmpty!32338 (= mapRes!32338 (and tp!62047 e!528526))))

(declare-fun mapRest!32338 () (Array (_ BitVec 32) ValueCell!9701))

(declare-fun mapValue!32338 () ValueCell!9701)

(declare-fun mapKey!32338 () (_ BitVec 32))

(assert (=> mapNonEmpty!32338 (= (arr!27281 (_values!5590 thiss!1141)) (store mapRest!32338 mapKey!32338 mapValue!32338))))

(declare-fun e!528527 () Bool)

(declare-fun array_inv!21160 (array!56702) Bool)

(declare-fun array_inv!21161 (array!56700) Bool)

(assert (=> b!940394 (= e!528525 (and tp!62046 tp_is_empty!20365 (array_inv!21160 (_keys!10413 thiss!1141)) (array_inv!21161 (_values!5590 thiss!1141)) e!528527))))

(declare-fun b!940395 () Bool)

(assert (=> b!940395 (= e!528527 (and e!528524 mapRes!32338))))

(declare-fun condMapEmpty!32338 () Bool)

(declare-fun mapDefault!32338 () ValueCell!9701)

