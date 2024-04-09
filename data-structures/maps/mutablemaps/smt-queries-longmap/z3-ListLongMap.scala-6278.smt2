; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80320 () Bool)

(assert start!80320)

(declare-fun b!943085 () Bool)

(declare-fun b_free!17991 () Bool)

(declare-fun b_next!17991 () Bool)

(assert (=> b!943085 (= b_free!17991 (not b_next!17991))))

(declare-fun tp!62480 () Bool)

(declare-fun b_and!29421 () Bool)

(assert (=> b!943085 (= tp!62480 b_and!29421)))

(declare-fun b!943084 () Bool)

(declare-fun e!530279 () Bool)

(declare-fun tp_is_empty!20499 () Bool)

(assert (=> b!943084 (= e!530279 tp_is_empty!20499)))

(declare-datatypes ((V!32297 0))(
  ( (V!32298 (val!10300 Int)) )
))
(declare-datatypes ((ValueCell!9768 0))(
  ( (ValueCellFull!9768 (v!12831 V!32297)) (EmptyCell!9768) )
))
(declare-datatypes ((array!56986 0))(
  ( (array!56987 (arr!27415 (Array (_ BitVec 32) ValueCell!9768)) (size!27881 (_ BitVec 32))) )
))
(declare-datatypes ((array!56988 0))(
  ( (array!56989 (arr!27416 (Array (_ BitVec 32) (_ BitVec 64))) (size!27882 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4686 0))(
  ( (LongMapFixedSize!4687 (defaultEntry!5634 Int) (mask!27251 (_ BitVec 32)) (extraKeys!5366 (_ BitVec 32)) (zeroValue!5470 V!32297) (minValue!5470 V!32297) (_size!2398 (_ BitVec 32)) (_keys!10504 array!56988) (_values!5657 array!56986) (_vacant!2398 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4686)

(declare-fun e!530277 () Bool)

(declare-fun e!530282 () Bool)

(declare-fun array_inv!21254 (array!56988) Bool)

(declare-fun array_inv!21255 (array!56986) Bool)

(assert (=> b!943085 (= e!530282 (and tp!62480 tp_is_empty!20499 (array_inv!21254 (_keys!10504 thiss!1141)) (array_inv!21255 (_values!5657 thiss!1141)) e!530277))))

(declare-fun b!943086 () Bool)

(declare-fun res!633807 () Bool)

(declare-fun e!530280 () Bool)

(assert (=> b!943086 (=> (not res!633807) (not e!530280))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!943086 (= res!633807 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!943087 () Bool)

(declare-fun res!633809 () Bool)

(assert (=> b!943087 (=> (not res!633809) (not e!530280))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56988 (_ BitVec 32)) Bool)

(assert (=> b!943087 (= res!633809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10504 thiss!1141) (mask!27251 thiss!1141)))))

(declare-fun b!943088 () Bool)

(assert (=> b!943088 (= e!530280 false)))

(declare-fun lt!425181 () Bool)

(declare-datatypes ((List!19375 0))(
  ( (Nil!19372) (Cons!19371 (h!20521 (_ BitVec 64)) (t!27698 List!19375)) )
))
(declare-fun arrayNoDuplicates!0 (array!56988 (_ BitVec 32) List!19375) Bool)

(assert (=> b!943088 (= lt!425181 (arrayNoDuplicates!0 (_keys!10504 thiss!1141) #b00000000000000000000000000000000 Nil!19372))))

(declare-fun res!633810 () Bool)

(assert (=> start!80320 (=> (not res!633810) (not e!530280))))

(declare-fun valid!1772 (LongMapFixedSize!4686) Bool)

(assert (=> start!80320 (= res!633810 (valid!1772 thiss!1141))))

(assert (=> start!80320 e!530280))

(assert (=> start!80320 e!530282))

(assert (=> start!80320 true))

(declare-fun b!943089 () Bool)

(declare-fun res!633808 () Bool)

(assert (=> b!943089 (=> (not res!633808) (not e!530280))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9037 0))(
  ( (MissingZero!9037 (index!38518 (_ BitVec 32))) (Found!9037 (index!38519 (_ BitVec 32))) (Intermediate!9037 (undefined!9849 Bool) (index!38520 (_ BitVec 32)) (x!80983 (_ BitVec 32))) (Undefined!9037) (MissingVacant!9037 (index!38521 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56988 (_ BitVec 32)) SeekEntryResult!9037)

(assert (=> b!943089 (= res!633808 (not ((_ is Found!9037) (seekEntry!0 key!756 (_keys!10504 thiss!1141) (mask!27251 thiss!1141)))))))

(declare-fun b!943090 () Bool)

(declare-fun mapRes!32570 () Bool)

(assert (=> b!943090 (= e!530277 (and e!530279 mapRes!32570))))

(declare-fun condMapEmpty!32570 () Bool)

(declare-fun mapDefault!32570 () ValueCell!9768)

(assert (=> b!943090 (= condMapEmpty!32570 (= (arr!27415 (_values!5657 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9768)) mapDefault!32570)))))

(declare-fun b!943091 () Bool)

(declare-fun res!633813 () Bool)

(assert (=> b!943091 (=> (not res!633813) (not e!530280))))

(declare-datatypes ((tuple2!13538 0))(
  ( (tuple2!13539 (_1!6779 (_ BitVec 64)) (_2!6779 V!32297)) )
))
(declare-datatypes ((List!19376 0))(
  ( (Nil!19373) (Cons!19372 (h!20522 tuple2!13538) (t!27699 List!19376)) )
))
(declare-datatypes ((ListLongMap!12249 0))(
  ( (ListLongMap!12250 (toList!6140 List!19376)) )
))
(declare-fun contains!5161 (ListLongMap!12249 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3328 (array!56988 array!56986 (_ BitVec 32) (_ BitVec 32) V!32297 V!32297 (_ BitVec 32) Int) ListLongMap!12249)

(assert (=> b!943091 (= res!633813 (contains!5161 (getCurrentListMap!3328 (_keys!10504 thiss!1141) (_values!5657 thiss!1141) (mask!27251 thiss!1141) (extraKeys!5366 thiss!1141) (zeroValue!5470 thiss!1141) (minValue!5470 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5634 thiss!1141)) key!756))))

(declare-fun b!943092 () Bool)

(declare-fun res!633812 () Bool)

(assert (=> b!943092 (=> (not res!633812) (not e!530280))))

(assert (=> b!943092 (= res!633812 (and (= (size!27881 (_values!5657 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27251 thiss!1141))) (= (size!27882 (_keys!10504 thiss!1141)) (size!27881 (_values!5657 thiss!1141))) (bvsge (mask!27251 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5366 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5366 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!943093 () Bool)

(declare-fun e!530278 () Bool)

(assert (=> b!943093 (= e!530278 tp_is_empty!20499)))

(declare-fun mapIsEmpty!32570 () Bool)

(assert (=> mapIsEmpty!32570 mapRes!32570))

(declare-fun mapNonEmpty!32570 () Bool)

(declare-fun tp!62479 () Bool)

(assert (=> mapNonEmpty!32570 (= mapRes!32570 (and tp!62479 e!530278))))

(declare-fun mapRest!32570 () (Array (_ BitVec 32) ValueCell!9768))

(declare-fun mapKey!32570 () (_ BitVec 32))

(declare-fun mapValue!32570 () ValueCell!9768)

(assert (=> mapNonEmpty!32570 (= (arr!27415 (_values!5657 thiss!1141)) (store mapRest!32570 mapKey!32570 mapValue!32570))))

(declare-fun b!943094 () Bool)

(declare-fun res!633811 () Bool)

(assert (=> b!943094 (=> (not res!633811) (not e!530280))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!943094 (= res!633811 (validMask!0 (mask!27251 thiss!1141)))))

(assert (= (and start!80320 res!633810) b!943086))

(assert (= (and b!943086 res!633807) b!943089))

(assert (= (and b!943089 res!633808) b!943091))

(assert (= (and b!943091 res!633813) b!943094))

(assert (= (and b!943094 res!633811) b!943092))

(assert (= (and b!943092 res!633812) b!943087))

(assert (= (and b!943087 res!633809) b!943088))

(assert (= (and b!943090 condMapEmpty!32570) mapIsEmpty!32570))

(assert (= (and b!943090 (not condMapEmpty!32570)) mapNonEmpty!32570))

(assert (= (and mapNonEmpty!32570 ((_ is ValueCellFull!9768) mapValue!32570)) b!943093))

(assert (= (and b!943090 ((_ is ValueCellFull!9768) mapDefault!32570)) b!943084))

(assert (= b!943085 b!943090))

(assert (= start!80320 b!943085))

(declare-fun m!877435 () Bool)

(assert (=> b!943094 m!877435))

(declare-fun m!877437 () Bool)

(assert (=> b!943085 m!877437))

(declare-fun m!877439 () Bool)

(assert (=> b!943085 m!877439))

(declare-fun m!877441 () Bool)

(assert (=> b!943091 m!877441))

(assert (=> b!943091 m!877441))

(declare-fun m!877443 () Bool)

(assert (=> b!943091 m!877443))

(declare-fun m!877445 () Bool)

(assert (=> mapNonEmpty!32570 m!877445))

(declare-fun m!877447 () Bool)

(assert (=> b!943087 m!877447))

(declare-fun m!877449 () Bool)

(assert (=> b!943089 m!877449))

(declare-fun m!877451 () Bool)

(assert (=> start!80320 m!877451))

(declare-fun m!877453 () Bool)

(assert (=> b!943088 m!877453))

(check-sat (not b_next!17991) (not b!943087) (not start!80320) (not b!943085) (not b!943088) tp_is_empty!20499 (not mapNonEmpty!32570) (not b!943094) (not b!943091) (not b!943089) b_and!29421)
(check-sat b_and!29421 (not b_next!17991))
