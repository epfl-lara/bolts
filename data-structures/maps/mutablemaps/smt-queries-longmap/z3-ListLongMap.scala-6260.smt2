; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80056 () Bool)

(assert start!80056)

(declare-fun b!940779 () Bool)

(declare-fun b_free!17883 () Bool)

(declare-fun b_next!17883 () Bool)

(assert (=> b!940779 (= b_free!17883 (not b_next!17883))))

(declare-fun tp!62125 () Bool)

(declare-fun b_and!29313 () Bool)

(assert (=> b!940779 (= tp!62125 b_and!29313)))

(declare-fun res!632655 () Bool)

(declare-fun e!528837 () Bool)

(assert (=> start!80056 (=> (not res!632655) (not e!528837))))

(declare-datatypes ((V!32153 0))(
  ( (V!32154 (val!10246 Int)) )
))
(declare-datatypes ((ValueCell!9714 0))(
  ( (ValueCellFull!9714 (v!12777 V!32153)) (EmptyCell!9714) )
))
(declare-datatypes ((array!56752 0))(
  ( (array!56753 (arr!27307 (Array (_ BitVec 32) ValueCell!9714)) (size!27769 (_ BitVec 32))) )
))
(declare-datatypes ((array!56754 0))(
  ( (array!56755 (arr!27308 (Array (_ BitVec 32) (_ BitVec 64))) (size!27770 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4578 0))(
  ( (LongMapFixedSize!4579 (defaultEntry!5580 Int) (mask!27124 (_ BitVec 32)) (extraKeys!5312 (_ BitVec 32)) (zeroValue!5416 V!32153) (minValue!5416 V!32153) (_size!2344 (_ BitVec 32)) (_keys!10426 array!56754) (_values!5603 array!56752) (_vacant!2344 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4578)

(declare-fun valid!1737 (LongMapFixedSize!4578) Bool)

(assert (=> start!80056 (= res!632655 (valid!1737 thiss!1141))))

(assert (=> start!80056 e!528837))

(declare-fun e!528833 () Bool)

(assert (=> start!80056 e!528833))

(assert (=> start!80056 true))

(declare-fun b!940776 () Bool)

(declare-fun e!528836 () Bool)

(assert (=> b!940776 (= e!528836 true)))

(declare-fun lt!424802 () Bool)

(declare-datatypes ((List!19332 0))(
  ( (Nil!19329) (Cons!19328 (h!20474 (_ BitVec 64)) (t!27655 List!19332)) )
))
(declare-fun arrayNoDuplicates!0 (array!56754 (_ BitVec 32) List!19332) Bool)

(assert (=> b!940776 (= lt!424802 (arrayNoDuplicates!0 (_keys!10426 thiss!1141) #b00000000000000000000000000000000 Nil!19329))))

(declare-fun b!940777 () Bool)

(declare-fun res!632660 () Bool)

(assert (=> b!940777 (=> res!632660 e!528836)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56754 (_ BitVec 32)) Bool)

(assert (=> b!940777 (= res!632660 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10426 thiss!1141) (mask!27124 thiss!1141))))))

(declare-fun b!940778 () Bool)

(declare-fun e!528840 () Bool)

(assert (=> b!940778 (= e!528840 (not e!528836))))

(declare-fun res!632658 () Bool)

(assert (=> b!940778 (=> res!632658 e!528836)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940778 (= res!632658 (not (validMask!0 (mask!27124 thiss!1141))))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!56754 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940778 (arrayContainsKey!0 (_keys!10426 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!9002 0))(
  ( (MissingZero!9002 (index!38378 (_ BitVec 32))) (Found!9002 (index!38379 (_ BitVec 32))) (Intermediate!9002 (undefined!9814 Bool) (index!38380 (_ BitVec 32)) (x!80696 (_ BitVec 32))) (Undefined!9002) (MissingVacant!9002 (index!38381 (_ BitVec 32))) )
))
(declare-fun lt!424803 () SeekEntryResult!9002)

(declare-datatypes ((Unit!31791 0))(
  ( (Unit!31792) )
))
(declare-fun lt!424801 () Unit!31791)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56754 (_ BitVec 64) (_ BitVec 32)) Unit!31791)

(assert (=> b!940778 (= lt!424801 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10426 thiss!1141) key!756 (index!38379 lt!424803)))))

(declare-fun tp_is_empty!20391 () Bool)

(declare-fun e!528835 () Bool)

(declare-fun array_inv!21176 (array!56754) Bool)

(declare-fun array_inv!21177 (array!56752) Bool)

(assert (=> b!940779 (= e!528833 (and tp!62125 tp_is_empty!20391 (array_inv!21176 (_keys!10426 thiss!1141)) (array_inv!21177 (_values!5603 thiss!1141)) e!528835))))

(declare-fun b!940780 () Bool)

(declare-fun e!528834 () Bool)

(assert (=> b!940780 (= e!528834 tp_is_empty!20391)))

(declare-fun b!940781 () Bool)

(assert (=> b!940781 (= e!528837 e!528840)))

(declare-fun res!632659 () Bool)

(assert (=> b!940781 (=> (not res!632659) (not e!528840))))

(get-info :version)

(assert (=> b!940781 (= res!632659 ((_ is Found!9002) lt!424803))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56754 (_ BitVec 32)) SeekEntryResult!9002)

(assert (=> b!940781 (= lt!424803 (seekEntry!0 key!756 (_keys!10426 thiss!1141) (mask!27124 thiss!1141)))))

(declare-fun b!940782 () Bool)

(declare-fun res!632656 () Bool)

(assert (=> b!940782 (=> res!632656 e!528836)))

(assert (=> b!940782 (= res!632656 (or (not (= (size!27769 (_values!5603 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27124 thiss!1141)))) (not (= (size!27770 (_keys!10426 thiss!1141)) (size!27769 (_values!5603 thiss!1141)))) (bvslt (mask!27124 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5312 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5312 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!32377 () Bool)

(declare-fun mapRes!32377 () Bool)

(assert (=> mapIsEmpty!32377 mapRes!32377))

(declare-fun b!940783 () Bool)

(declare-fun e!528838 () Bool)

(assert (=> b!940783 (= e!528838 tp_is_empty!20391)))

(declare-fun b!940784 () Bool)

(assert (=> b!940784 (= e!528835 (and e!528838 mapRes!32377))))

(declare-fun condMapEmpty!32377 () Bool)

(declare-fun mapDefault!32377 () ValueCell!9714)

(assert (=> b!940784 (= condMapEmpty!32377 (= (arr!27307 (_values!5603 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9714)) mapDefault!32377)))))

(declare-fun b!940785 () Bool)

(declare-fun res!632657 () Bool)

(assert (=> b!940785 (=> (not res!632657) (not e!528837))))

(assert (=> b!940785 (= res!632657 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!32377 () Bool)

(declare-fun tp!62124 () Bool)

(assert (=> mapNonEmpty!32377 (= mapRes!32377 (and tp!62124 e!528834))))

(declare-fun mapValue!32377 () ValueCell!9714)

(declare-fun mapRest!32377 () (Array (_ BitVec 32) ValueCell!9714))

(declare-fun mapKey!32377 () (_ BitVec 32))

(assert (=> mapNonEmpty!32377 (= (arr!27307 (_values!5603 thiss!1141)) (store mapRest!32377 mapKey!32377 mapValue!32377))))

(assert (= (and start!80056 res!632655) b!940785))

(assert (= (and b!940785 res!632657) b!940781))

(assert (= (and b!940781 res!632659) b!940778))

(assert (= (and b!940778 (not res!632658)) b!940782))

(assert (= (and b!940782 (not res!632656)) b!940777))

(assert (= (and b!940777 (not res!632660)) b!940776))

(assert (= (and b!940784 condMapEmpty!32377) mapIsEmpty!32377))

(assert (= (and b!940784 (not condMapEmpty!32377)) mapNonEmpty!32377))

(assert (= (and mapNonEmpty!32377 ((_ is ValueCellFull!9714) mapValue!32377)) b!940780))

(assert (= (and b!940784 ((_ is ValueCellFull!9714) mapDefault!32377)) b!940783))

(assert (= b!940779 b!940784))

(assert (= start!80056 b!940779))

(declare-fun m!876169 () Bool)

(assert (=> b!940779 m!876169))

(declare-fun m!876171 () Bool)

(assert (=> b!940779 m!876171))

(declare-fun m!876173 () Bool)

(assert (=> b!940776 m!876173))

(declare-fun m!876175 () Bool)

(assert (=> mapNonEmpty!32377 m!876175))

(declare-fun m!876177 () Bool)

(assert (=> start!80056 m!876177))

(declare-fun m!876179 () Bool)

(assert (=> b!940778 m!876179))

(declare-fun m!876181 () Bool)

(assert (=> b!940778 m!876181))

(declare-fun m!876183 () Bool)

(assert (=> b!940778 m!876183))

(declare-fun m!876185 () Bool)

(assert (=> b!940781 m!876185))

(declare-fun m!876187 () Bool)

(assert (=> b!940777 m!876187))

(check-sat (not b!940776) (not b_next!17883) (not mapNonEmpty!32377) tp_is_empty!20391 (not b!940779) (not b!940781) (not b!940777) (not b!940778) (not start!80056) b_and!29313)
(check-sat b_and!29313 (not b_next!17883))
