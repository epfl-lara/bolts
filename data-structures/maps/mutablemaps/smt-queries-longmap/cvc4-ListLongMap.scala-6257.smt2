; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80040 () Bool)

(assert start!80040)

(declare-fun b!940538 () Bool)

(declare-fun b_free!17867 () Bool)

(declare-fun b_next!17867 () Bool)

(assert (=> b!940538 (= b_free!17867 (not b_next!17867))))

(declare-fun tp!62076 () Bool)

(declare-fun b_and!29297 () Bool)

(assert (=> b!940538 (= tp!62076 b_and!29297)))

(declare-fun b!940536 () Bool)

(declare-fun e!528642 () Bool)

(assert (=> b!940536 (= e!528642 true)))

(declare-fun lt!424729 () Bool)

(declare-datatypes ((V!32131 0))(
  ( (V!32132 (val!10238 Int)) )
))
(declare-datatypes ((ValueCell!9706 0))(
  ( (ValueCellFull!9706 (v!12769 V!32131)) (EmptyCell!9706) )
))
(declare-datatypes ((array!56720 0))(
  ( (array!56721 (arr!27291 (Array (_ BitVec 32) ValueCell!9706)) (size!27753 (_ BitVec 32))) )
))
(declare-datatypes ((array!56722 0))(
  ( (array!56723 (arr!27292 (Array (_ BitVec 32) (_ BitVec 64))) (size!27754 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4562 0))(
  ( (LongMapFixedSize!4563 (defaultEntry!5572 Int) (mask!27110 (_ BitVec 32)) (extraKeys!5304 (_ BitVec 32)) (zeroValue!5408 V!32131) (minValue!5408 V!32131) (_size!2336 (_ BitVec 32)) (_keys!10418 array!56722) (_values!5595 array!56720) (_vacant!2336 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4562)

(declare-datatypes ((List!19327 0))(
  ( (Nil!19324) (Cons!19323 (h!20469 (_ BitVec 64)) (t!27650 List!19327)) )
))
(declare-fun arrayNoDuplicates!0 (array!56722 (_ BitVec 32) List!19327) Bool)

(assert (=> b!940536 (= lt!424729 (arrayNoDuplicates!0 (_keys!10418 thiss!1141) #b00000000000000000000000000000000 Nil!19324))))

(declare-fun b!940537 () Bool)

(declare-fun e!528646 () Bool)

(declare-fun tp_is_empty!20375 () Bool)

(assert (=> b!940537 (= e!528646 tp_is_empty!20375)))

(declare-fun e!528645 () Bool)

(declare-fun e!528648 () Bool)

(declare-fun array_inv!21166 (array!56722) Bool)

(declare-fun array_inv!21167 (array!56720) Bool)

(assert (=> b!940538 (= e!528648 (and tp!62076 tp_is_empty!20375 (array_inv!21166 (_keys!10418 thiss!1141)) (array_inv!21167 (_values!5595 thiss!1141)) e!528645))))

(declare-fun b!940539 () Bool)

(declare-fun res!632511 () Bool)

(assert (=> b!940539 (=> res!632511 e!528642)))

(assert (=> b!940539 (= res!632511 (or (not (= (size!27753 (_values!5595 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27110 thiss!1141)))) (not (= (size!27754 (_keys!10418 thiss!1141)) (size!27753 (_values!5595 thiss!1141)))) (bvslt (mask!27110 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5304 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5304 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!940540 () Bool)

(declare-fun res!632515 () Bool)

(declare-fun e!528643 () Bool)

(assert (=> b!940540 (=> (not res!632515) (not e!528643))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!940540 (= res!632515 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!632513 () Bool)

(assert (=> start!80040 (=> (not res!632513) (not e!528643))))

(declare-fun valid!1733 (LongMapFixedSize!4562) Bool)

(assert (=> start!80040 (= res!632513 (valid!1733 thiss!1141))))

(assert (=> start!80040 e!528643))

(assert (=> start!80040 e!528648))

(assert (=> start!80040 true))

(declare-fun mapIsEmpty!32353 () Bool)

(declare-fun mapRes!32353 () Bool)

(assert (=> mapIsEmpty!32353 mapRes!32353))

(declare-fun b!940541 () Bool)

(declare-fun res!632516 () Bool)

(assert (=> b!940541 (=> res!632516 e!528642)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56722 (_ BitVec 32)) Bool)

(assert (=> b!940541 (= res!632516 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10418 thiss!1141) (mask!27110 thiss!1141))))))

(declare-fun b!940542 () Bool)

(declare-fun e!528641 () Bool)

(assert (=> b!940542 (= e!528641 tp_is_empty!20375)))

(declare-fun b!940543 () Bool)

(declare-fun e!528647 () Bool)

(assert (=> b!940543 (= e!528643 e!528647)))

(declare-fun res!632514 () Bool)

(assert (=> b!940543 (=> (not res!632514) (not e!528647))))

(declare-datatypes ((SeekEntryResult!8996 0))(
  ( (MissingZero!8996 (index!38354 (_ BitVec 32))) (Found!8996 (index!38355 (_ BitVec 32))) (Intermediate!8996 (undefined!9808 Bool) (index!38356 (_ BitVec 32)) (x!80666 (_ BitVec 32))) (Undefined!8996) (MissingVacant!8996 (index!38357 (_ BitVec 32))) )
))
(declare-fun lt!424731 () SeekEntryResult!8996)

(assert (=> b!940543 (= res!632514 (is-Found!8996 lt!424731))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56722 (_ BitVec 32)) SeekEntryResult!8996)

(assert (=> b!940543 (= lt!424731 (seekEntry!0 key!756 (_keys!10418 thiss!1141) (mask!27110 thiss!1141)))))

(declare-fun b!940544 () Bool)

(assert (=> b!940544 (= e!528647 (not e!528642))))

(declare-fun res!632512 () Bool)

(assert (=> b!940544 (=> res!632512 e!528642)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940544 (= res!632512 (not (validMask!0 (mask!27110 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!56722 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940544 (arrayContainsKey!0 (_keys!10418 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31783 0))(
  ( (Unit!31784) )
))
(declare-fun lt!424730 () Unit!31783)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56722 (_ BitVec 64) (_ BitVec 32)) Unit!31783)

(assert (=> b!940544 (= lt!424730 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10418 thiss!1141) key!756 (index!38355 lt!424731)))))

(declare-fun mapNonEmpty!32353 () Bool)

(declare-fun tp!62077 () Bool)

(assert (=> mapNonEmpty!32353 (= mapRes!32353 (and tp!62077 e!528641))))

(declare-fun mapRest!32353 () (Array (_ BitVec 32) ValueCell!9706))

(declare-fun mapValue!32353 () ValueCell!9706)

(declare-fun mapKey!32353 () (_ BitVec 32))

(assert (=> mapNonEmpty!32353 (= (arr!27291 (_values!5595 thiss!1141)) (store mapRest!32353 mapKey!32353 mapValue!32353))))

(declare-fun b!940545 () Bool)

(assert (=> b!940545 (= e!528645 (and e!528646 mapRes!32353))))

(declare-fun condMapEmpty!32353 () Bool)

(declare-fun mapDefault!32353 () ValueCell!9706)

