; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89506 () Bool)

(assert start!89506)

(declare-fun b!1025989 () Bool)

(declare-fun b_free!20469 () Bool)

(declare-fun b_next!20469 () Bool)

(assert (=> b!1025989 (= b_free!20469 (not b_next!20469))))

(declare-fun tp!72453 () Bool)

(declare-fun b_and!32733 () Bool)

(assert (=> b!1025989 (= tp!72453 b_and!32733)))

(declare-datatypes ((V!37125 0))(
  ( (V!37126 (val!12145 Int)) )
))
(declare-datatypes ((ValueCell!11391 0))(
  ( (ValueCellFull!11391 (v!14715 V!37125)) (EmptyCell!11391) )
))
(declare-datatypes ((array!64412 0))(
  ( (array!64413 (arr!31011 (Array (_ BitVec 32) (_ BitVec 64))) (size!31525 (_ BitVec 32))) )
))
(declare-datatypes ((array!64414 0))(
  ( (array!64415 (arr!31012 (Array (_ BitVec 32) ValueCell!11391)) (size!31526 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5376 0))(
  ( (LongMapFixedSize!5377 (defaultEntry!6040 Int) (mask!29719 (_ BitVec 32)) (extraKeys!5772 (_ BitVec 32)) (zeroValue!5876 V!37125) (minValue!5876 V!37125) (_size!2743 (_ BitVec 32)) (_keys!11184 array!64412) (_values!6063 array!64414) (_vacant!2743 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5376)

(declare-fun e!578693 () Bool)

(declare-fun e!578692 () Bool)

(declare-fun tp_is_empty!24189 () Bool)

(declare-fun array_inv!23869 (array!64412) Bool)

(declare-fun array_inv!23870 (array!64414) Bool)

(assert (=> b!1025989 (= e!578692 (and tp!72453 tp_is_empty!24189 (array_inv!23869 (_keys!11184 thiss!1427)) (array_inv!23870 (_values!6063 thiss!1427)) e!578693))))

(declare-fun b!1025990 () Bool)

(declare-fun res!686949 () Bool)

(declare-fun e!578690 () Bool)

(assert (=> b!1025990 (=> (not res!686949) (not e!578690))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1025990 (= res!686949 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1025991 () Bool)

(declare-fun e!578689 () Bool)

(assert (=> b!1025991 (= e!578690 e!578689)))

(declare-fun res!686946 () Bool)

(assert (=> b!1025991 (=> (not res!686946) (not e!578689))))

(declare-datatypes ((SeekEntryResult!9623 0))(
  ( (MissingZero!9623 (index!40862 (_ BitVec 32))) (Found!9623 (index!40863 (_ BitVec 32))) (Intermediate!9623 (undefined!10435 Bool) (index!40864 (_ BitVec 32)) (x!91240 (_ BitVec 32))) (Undefined!9623) (MissingVacant!9623 (index!40865 (_ BitVec 32))) )
))
(declare-fun lt!451246 () SeekEntryResult!9623)

(get-info :version)

(assert (=> b!1025991 (= res!686946 ((_ is Found!9623) lt!451246))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64412 (_ BitVec 32)) SeekEntryResult!9623)

(assert (=> b!1025991 (= lt!451246 (seekEntry!0 key!909 (_keys!11184 thiss!1427) (mask!29719 thiss!1427)))))

(declare-fun b!1025992 () Bool)

(declare-fun e!578691 () Bool)

(assert (=> b!1025992 (= e!578691 tp_is_empty!24189)))

(declare-fun b!1025993 () Bool)

(declare-fun e!578696 () Bool)

(declare-fun mapRes!37712 () Bool)

(assert (=> b!1025993 (= e!578693 (and e!578696 mapRes!37712))))

(declare-fun condMapEmpty!37712 () Bool)

(declare-fun mapDefault!37712 () ValueCell!11391)

(assert (=> b!1025993 (= condMapEmpty!37712 (= (arr!31012 (_values!6063 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11391)) mapDefault!37712)))))

(declare-fun b!1025994 () Bool)

(assert (=> b!1025994 (= e!578696 tp_is_empty!24189)))

(declare-fun mapNonEmpty!37712 () Bool)

(declare-fun tp!72454 () Bool)

(assert (=> mapNonEmpty!37712 (= mapRes!37712 (and tp!72454 e!578691))))

(declare-fun mapRest!37712 () (Array (_ BitVec 32) ValueCell!11391))

(declare-fun mapValue!37712 () ValueCell!11391)

(declare-fun mapKey!37712 () (_ BitVec 32))

(assert (=> mapNonEmpty!37712 (= (arr!31012 (_values!6063 thiss!1427)) (store mapRest!37712 mapKey!37712 mapValue!37712))))

(declare-fun mapIsEmpty!37712 () Bool)

(assert (=> mapIsEmpty!37712 mapRes!37712))

(declare-fun b!1025996 () Bool)

(declare-fun e!578695 () Bool)

(assert (=> b!1025996 (= e!578689 (not e!578695))))

(declare-fun res!686948 () Bool)

(assert (=> b!1025996 (=> res!686948 e!578695)))

(assert (=> b!1025996 (= res!686948 (or (bvslt (index!40863 lt!451246) #b00000000000000000000000000000000) (bvsge (index!40863 lt!451246) (size!31525 (_keys!11184 thiss!1427))) (bvsge (size!31525 (_keys!11184 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-fun lt!451249 () array!64412)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64412 (_ BitVec 32)) Bool)

(assert (=> b!1025996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451249 (mask!29719 thiss!1427))))

(declare-datatypes ((Unit!33384 0))(
  ( (Unit!33385) )
))
(declare-fun lt!451244 () Unit!33384)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64412 (_ BitVec 32) (_ BitVec 32)) Unit!33384)

(assert (=> b!1025996 (= lt!451244 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11184 thiss!1427) (index!40863 lt!451246) (mask!29719 thiss!1427)))))

(declare-datatypes ((List!21876 0))(
  ( (Nil!21873) (Cons!21872 (h!23070 (_ BitVec 64)) (t!30945 List!21876)) )
))
(declare-fun arrayNoDuplicates!0 (array!64412 (_ BitVec 32) List!21876) Bool)

(assert (=> b!1025996 (arrayNoDuplicates!0 lt!451249 #b00000000000000000000000000000000 Nil!21873)))

(declare-fun lt!451245 () Unit!33384)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64412 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21876) Unit!33384)

(assert (=> b!1025996 (= lt!451245 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11184 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40863 lt!451246) #b00000000000000000000000000000000 Nil!21873))))

(declare-fun arrayCountValidKeys!0 (array!64412 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025996 (= (arrayCountValidKeys!0 lt!451249 #b00000000000000000000000000000000 (size!31525 (_keys!11184 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11184 thiss!1427) #b00000000000000000000000000000000 (size!31525 (_keys!11184 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025996 (= lt!451249 (array!64413 (store (arr!31011 (_keys!11184 thiss!1427)) (index!40863 lt!451246) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31525 (_keys!11184 thiss!1427))))))

(declare-fun lt!451248 () Unit!33384)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64412 (_ BitVec 32) (_ BitVec 64)) Unit!33384)

(assert (=> b!1025996 (= lt!451248 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11184 thiss!1427) (index!40863 lt!451246) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1025995 () Bool)

(assert (=> b!1025995 (= e!578695 true)))

(declare-fun lt!451247 () Bool)

(assert (=> b!1025995 (= lt!451247 (arrayNoDuplicates!0 (_keys!11184 thiss!1427) #b00000000000000000000000000000000 Nil!21873))))

(declare-fun res!686947 () Bool)

(assert (=> start!89506 (=> (not res!686947) (not e!578690))))

(declare-fun valid!1993 (LongMapFixedSize!5376) Bool)

(assert (=> start!89506 (= res!686947 (valid!1993 thiss!1427))))

(assert (=> start!89506 e!578690))

(assert (=> start!89506 e!578692))

(assert (=> start!89506 true))

(assert (= (and start!89506 res!686947) b!1025990))

(assert (= (and b!1025990 res!686949) b!1025991))

(assert (= (and b!1025991 res!686946) b!1025996))

(assert (= (and b!1025996 (not res!686948)) b!1025995))

(assert (= (and b!1025993 condMapEmpty!37712) mapIsEmpty!37712))

(assert (= (and b!1025993 (not condMapEmpty!37712)) mapNonEmpty!37712))

(assert (= (and mapNonEmpty!37712 ((_ is ValueCellFull!11391) mapValue!37712)) b!1025992))

(assert (= (and b!1025993 ((_ is ValueCellFull!11391) mapDefault!37712)) b!1025994))

(assert (= b!1025989 b!1025993))

(assert (= start!89506 b!1025989))

(declare-fun m!944327 () Bool)

(assert (=> mapNonEmpty!37712 m!944327))

(declare-fun m!944329 () Bool)

(assert (=> start!89506 m!944329))

(declare-fun m!944331 () Bool)

(assert (=> b!1025991 m!944331))

(declare-fun m!944333 () Bool)

(assert (=> b!1025989 m!944333))

(declare-fun m!944335 () Bool)

(assert (=> b!1025989 m!944335))

(declare-fun m!944337 () Bool)

(assert (=> b!1025996 m!944337))

(declare-fun m!944339 () Bool)

(assert (=> b!1025996 m!944339))

(declare-fun m!944341 () Bool)

(assert (=> b!1025996 m!944341))

(declare-fun m!944343 () Bool)

(assert (=> b!1025996 m!944343))

(declare-fun m!944345 () Bool)

(assert (=> b!1025996 m!944345))

(declare-fun m!944347 () Bool)

(assert (=> b!1025996 m!944347))

(declare-fun m!944349 () Bool)

(assert (=> b!1025996 m!944349))

(declare-fun m!944351 () Bool)

(assert (=> b!1025996 m!944351))

(declare-fun m!944353 () Bool)

(assert (=> b!1025995 m!944353))

(check-sat b_and!32733 (not b!1025989) (not b!1025991) (not mapNonEmpty!37712) tp_is_empty!24189 (not b!1025996) (not b_next!20469) (not b!1025995) (not start!89506))
(check-sat b_and!32733 (not b_next!20469))
