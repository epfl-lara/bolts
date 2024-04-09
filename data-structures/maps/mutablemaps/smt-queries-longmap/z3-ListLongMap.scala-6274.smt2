; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80296 () Bool)

(assert start!80296)

(declare-fun b!942698 () Bool)

(declare-fun b_free!17967 () Bool)

(declare-fun b_next!17967 () Bool)

(assert (=> b!942698 (= b_free!17967 (not b_next!17967))))

(declare-fun tp!62408 () Bool)

(declare-fun b_and!29397 () Bool)

(assert (=> b!942698 (= tp!62408 b_and!29397)))

(declare-fun b!942688 () Bool)

(declare-fun res!633557 () Bool)

(declare-fun e!530065 () Bool)

(assert (=> b!942688 (=> (not res!633557) (not e!530065))))

(declare-datatypes ((V!32265 0))(
  ( (V!32266 (val!10288 Int)) )
))
(declare-datatypes ((ValueCell!9756 0))(
  ( (ValueCellFull!9756 (v!12819 V!32265)) (EmptyCell!9756) )
))
(declare-datatypes ((array!56938 0))(
  ( (array!56939 (arr!27391 (Array (_ BitVec 32) ValueCell!9756)) (size!27857 (_ BitVec 32))) )
))
(declare-datatypes ((array!56940 0))(
  ( (array!56941 (arr!27392 (Array (_ BitVec 32) (_ BitVec 64))) (size!27858 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4662 0))(
  ( (LongMapFixedSize!4663 (defaultEntry!5622 Int) (mask!27231 (_ BitVec 32)) (extraKeys!5354 (_ BitVec 32)) (zeroValue!5458 V!32265) (minValue!5458 V!32265) (_size!2386 (_ BitVec 32)) (_keys!10492 array!56940) (_values!5645 array!56938) (_vacant!2386 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4662)

(assert (=> b!942688 (= res!633557 (and (= (size!27857 (_values!5645 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27231 thiss!1141))) (= (size!27858 (_keys!10492 thiss!1141)) (size!27857 (_values!5645 thiss!1141))) (bvsge (mask!27231 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5354 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5354 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!32534 () Bool)

(declare-fun mapRes!32534 () Bool)

(declare-fun tp!62407 () Bool)

(declare-fun e!530064 () Bool)

(assert (=> mapNonEmpty!32534 (= mapRes!32534 (and tp!62407 e!530064))))

(declare-fun mapValue!32534 () ValueCell!9756)

(declare-fun mapKey!32534 () (_ BitVec 32))

(declare-fun mapRest!32534 () (Array (_ BitVec 32) ValueCell!9756))

(assert (=> mapNonEmpty!32534 (= (arr!27391 (_values!5645 thiss!1141)) (store mapRest!32534 mapKey!32534 mapValue!32534))))

(declare-fun b!942689 () Bool)

(declare-fun e!530066 () Bool)

(declare-fun tp_is_empty!20475 () Bool)

(assert (=> b!942689 (= e!530066 tp_is_empty!20475)))

(declare-fun b!942691 () Bool)

(assert (=> b!942691 (= e!530064 tp_is_empty!20475)))

(declare-fun b!942692 () Bool)

(declare-fun res!633555 () Bool)

(assert (=> b!942692 (=> (not res!633555) (not e!530065))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!942692 (= res!633555 (validMask!0 (mask!27231 thiss!1141)))))

(declare-fun b!942693 () Bool)

(declare-fun res!633560 () Bool)

(assert (=> b!942693 (=> (not res!633560) (not e!530065))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13522 0))(
  ( (tuple2!13523 (_1!6771 (_ BitVec 64)) (_2!6771 V!32265)) )
))
(declare-datatypes ((List!19360 0))(
  ( (Nil!19357) (Cons!19356 (h!20506 tuple2!13522) (t!27683 List!19360)) )
))
(declare-datatypes ((ListLongMap!12233 0))(
  ( (ListLongMap!12234 (toList!6132 List!19360)) )
))
(declare-fun contains!5153 (ListLongMap!12233 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3320 (array!56940 array!56938 (_ BitVec 32) (_ BitVec 32) V!32265 V!32265 (_ BitVec 32) Int) ListLongMap!12233)

(assert (=> b!942693 (= res!633560 (contains!5153 (getCurrentListMap!3320 (_keys!10492 thiss!1141) (_values!5645 thiss!1141) (mask!27231 thiss!1141) (extraKeys!5354 thiss!1141) (zeroValue!5458 thiss!1141) (minValue!5458 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5622 thiss!1141)) key!756))))

(declare-fun b!942694 () Bool)

(declare-fun e!530062 () Bool)

(assert (=> b!942694 (= e!530062 (and e!530066 mapRes!32534))))

(declare-fun condMapEmpty!32534 () Bool)

(declare-fun mapDefault!32534 () ValueCell!9756)

(assert (=> b!942694 (= condMapEmpty!32534 (= (arr!27391 (_values!5645 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9756)) mapDefault!32534)))))

(declare-fun b!942695 () Bool)

(declare-fun res!633559 () Bool)

(assert (=> b!942695 (=> (not res!633559) (not e!530065))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56940 (_ BitVec 32)) Bool)

(assert (=> b!942695 (= res!633559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10492 thiss!1141) (mask!27231 thiss!1141)))))

(declare-fun b!942696 () Bool)

(assert (=> b!942696 (= e!530065 false)))

(declare-fun lt!425145 () Bool)

(declare-datatypes ((List!19361 0))(
  ( (Nil!19358) (Cons!19357 (h!20507 (_ BitVec 64)) (t!27684 List!19361)) )
))
(declare-fun arrayNoDuplicates!0 (array!56940 (_ BitVec 32) List!19361) Bool)

(assert (=> b!942696 (= lt!425145 (arrayNoDuplicates!0 (_keys!10492 thiss!1141) #b00000000000000000000000000000000 Nil!19358))))

(declare-fun mapIsEmpty!32534 () Bool)

(assert (=> mapIsEmpty!32534 mapRes!32534))

(declare-fun res!633558 () Bool)

(assert (=> start!80296 (=> (not res!633558) (not e!530065))))

(declare-fun valid!1766 (LongMapFixedSize!4662) Bool)

(assert (=> start!80296 (= res!633558 (valid!1766 thiss!1141))))

(assert (=> start!80296 e!530065))

(declare-fun e!530061 () Bool)

(assert (=> start!80296 e!530061))

(assert (=> start!80296 true))

(declare-fun b!942690 () Bool)

(declare-fun res!633561 () Bool)

(assert (=> b!942690 (=> (not res!633561) (not e!530065))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9030 0))(
  ( (MissingZero!9030 (index!38490 (_ BitVec 32))) (Found!9030 (index!38491 (_ BitVec 32))) (Intermediate!9030 (undefined!9842 Bool) (index!38492 (_ BitVec 32)) (x!80944 (_ BitVec 32))) (Undefined!9030) (MissingVacant!9030 (index!38493 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56940 (_ BitVec 32)) SeekEntryResult!9030)

(assert (=> b!942690 (= res!633561 (not ((_ is Found!9030) (seekEntry!0 key!756 (_keys!10492 thiss!1141) (mask!27231 thiss!1141)))))))

(declare-fun b!942697 () Bool)

(declare-fun res!633556 () Bool)

(assert (=> b!942697 (=> (not res!633556) (not e!530065))))

(assert (=> b!942697 (= res!633556 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun array_inv!21236 (array!56940) Bool)

(declare-fun array_inv!21237 (array!56938) Bool)

(assert (=> b!942698 (= e!530061 (and tp!62408 tp_is_empty!20475 (array_inv!21236 (_keys!10492 thiss!1141)) (array_inv!21237 (_values!5645 thiss!1141)) e!530062))))

(assert (= (and start!80296 res!633558) b!942697))

(assert (= (and b!942697 res!633556) b!942690))

(assert (= (and b!942690 res!633561) b!942693))

(assert (= (and b!942693 res!633560) b!942692))

(assert (= (and b!942692 res!633555) b!942688))

(assert (= (and b!942688 res!633557) b!942695))

(assert (= (and b!942695 res!633559) b!942696))

(assert (= (and b!942694 condMapEmpty!32534) mapIsEmpty!32534))

(assert (= (and b!942694 (not condMapEmpty!32534)) mapNonEmpty!32534))

(assert (= (and mapNonEmpty!32534 ((_ is ValueCellFull!9756) mapValue!32534)) b!942691))

(assert (= (and b!942694 ((_ is ValueCellFull!9756) mapDefault!32534)) b!942689))

(assert (= b!942698 b!942694))

(assert (= start!80296 b!942698))

(declare-fun m!877195 () Bool)

(assert (=> mapNonEmpty!32534 m!877195))

(declare-fun m!877197 () Bool)

(assert (=> b!942693 m!877197))

(assert (=> b!942693 m!877197))

(declare-fun m!877199 () Bool)

(assert (=> b!942693 m!877199))

(declare-fun m!877201 () Bool)

(assert (=> b!942690 m!877201))

(declare-fun m!877203 () Bool)

(assert (=> b!942692 m!877203))

(declare-fun m!877205 () Bool)

(assert (=> start!80296 m!877205))

(declare-fun m!877207 () Bool)

(assert (=> b!942695 m!877207))

(declare-fun m!877209 () Bool)

(assert (=> b!942698 m!877209))

(declare-fun m!877211 () Bool)

(assert (=> b!942698 m!877211))

(declare-fun m!877213 () Bool)

(assert (=> b!942696 m!877213))

(check-sat (not b!942692) (not b!942690) tp_is_empty!20475 (not b!942693) b_and!29397 (not mapNonEmpty!32534) (not start!80296) (not b!942698) (not b_next!17967) (not b!942696) (not b!942695))
(check-sat b_and!29397 (not b_next!17967))
