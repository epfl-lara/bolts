; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81184 () Bool)

(assert start!81184)

(declare-fun b!949634 () Bool)

(declare-fun b_free!18225 () Bool)

(declare-fun b_next!18225 () Bool)

(assert (=> b!949634 (= b_free!18225 (not b_next!18225))))

(declare-fun tp!63265 () Bool)

(declare-fun b_and!29695 () Bool)

(assert (=> b!949634 (= tp!63265 b_and!29695)))

(declare-fun b!949626 () Bool)

(declare-fun e!534662 () Bool)

(declare-fun tp_is_empty!20733 () Bool)

(assert (=> b!949626 (= e!534662 tp_is_empty!20733)))

(declare-fun b!949627 () Bool)

(declare-fun e!534660 () Bool)

(assert (=> b!949627 (= e!534660 tp_is_empty!20733)))

(declare-fun b!949628 () Bool)

(declare-fun e!534665 () Bool)

(declare-fun mapRes!33005 () Bool)

(assert (=> b!949628 (= e!534665 (and e!534660 mapRes!33005))))

(declare-fun condMapEmpty!33005 () Bool)

(declare-datatypes ((V!32609 0))(
  ( (V!32610 (val!10417 Int)) )
))
(declare-datatypes ((ValueCell!9885 0))(
  ( (ValueCellFull!9885 (v!12958 V!32609)) (EmptyCell!9885) )
))
(declare-datatypes ((array!57502 0))(
  ( (array!57503 (arr!27649 (Array (_ BitVec 32) ValueCell!9885)) (size!28127 (_ BitVec 32))) )
))
(declare-datatypes ((array!57504 0))(
  ( (array!57505 (arr!27650 (Array (_ BitVec 32) (_ BitVec 64))) (size!28128 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4920 0))(
  ( (LongMapFixedSize!4921 (defaultEntry!5769 Int) (mask!27550 (_ BitVec 32)) (extraKeys!5501 (_ BitVec 32)) (zeroValue!5605 V!32609) (minValue!5605 V!32609) (_size!2515 (_ BitVec 32)) (_keys!10697 array!57504) (_values!5792 array!57502) (_vacant!2515 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4920)

(declare-fun mapDefault!33005 () ValueCell!9885)

(assert (=> b!949628 (= condMapEmpty!33005 (= (arr!27649 (_values!5792 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9885)) mapDefault!33005)))))

(declare-fun mapNonEmpty!33005 () Bool)

(declare-fun tp!63266 () Bool)

(assert (=> mapNonEmpty!33005 (= mapRes!33005 (and tp!63266 e!534662))))

(declare-fun mapRest!33005 () (Array (_ BitVec 32) ValueCell!9885))

(declare-fun mapValue!33005 () ValueCell!9885)

(declare-fun mapKey!33005 () (_ BitVec 32))

(assert (=> mapNonEmpty!33005 (= (arr!27649 (_values!5792 thiss!1141)) (store mapRest!33005 mapKey!33005 mapValue!33005))))

(declare-fun b!949629 () Bool)

(declare-fun e!534663 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57504 (_ BitVec 32)) Bool)

(assert (=> b!949629 (= e!534663 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10697 thiss!1141) (mask!27550 thiss!1141))))))

(declare-fun mapIsEmpty!33005 () Bool)

(assert (=> mapIsEmpty!33005 mapRes!33005))

(declare-fun b!949630 () Bool)

(declare-fun res!636902 () Bool)

(assert (=> b!949630 (=> (not res!636902) (not e!534663))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!949630 (= res!636902 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!949631 () Bool)

(declare-fun res!636901 () Bool)

(assert (=> b!949631 (=> (not res!636901) (not e!534663))))

(declare-datatypes ((tuple2!13636 0))(
  ( (tuple2!13637 (_1!6828 (_ BitVec 64)) (_2!6828 V!32609)) )
))
(declare-datatypes ((List!19460 0))(
  ( (Nil!19457) (Cons!19456 (h!20616 tuple2!13636) (t!27803 List!19460)) )
))
(declare-datatypes ((ListLongMap!12347 0))(
  ( (ListLongMap!12348 (toList!6189 List!19460)) )
))
(declare-fun contains!5230 (ListLongMap!12347 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3374 (array!57504 array!57502 (_ BitVec 32) (_ BitVec 32) V!32609 V!32609 (_ BitVec 32) Int) ListLongMap!12347)

(assert (=> b!949631 (= res!636901 (contains!5230 (getCurrentListMap!3374 (_keys!10697 thiss!1141) (_values!5792 thiss!1141) (mask!27550 thiss!1141) (extraKeys!5501 thiss!1141) (zeroValue!5605 thiss!1141) (minValue!5605 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5769 thiss!1141)) key!756))))

(declare-fun b!949632 () Bool)

(declare-fun res!636898 () Bool)

(assert (=> b!949632 (=> (not res!636898) (not e!534663))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!949632 (= res!636898 (validMask!0 (mask!27550 thiss!1141)))))

(declare-fun b!949633 () Bool)

(declare-fun res!636899 () Bool)

(assert (=> b!949633 (=> (not res!636899) (not e!534663))))

(assert (=> b!949633 (= res!636899 (and (= (size!28127 (_values!5792 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27550 thiss!1141))) (= (size!28128 (_keys!10697 thiss!1141)) (size!28127 (_values!5792 thiss!1141))) (bvsge (mask!27550 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5501 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5501 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun res!636900 () Bool)

(assert (=> start!81184 (=> (not res!636900) (not e!534663))))

(declare-fun valid!1847 (LongMapFixedSize!4920) Bool)

(assert (=> start!81184 (= res!636900 (valid!1847 thiss!1141))))

(assert (=> start!81184 e!534663))

(declare-fun e!534664 () Bool)

(assert (=> start!81184 e!534664))

(assert (=> start!81184 true))

(declare-fun array_inv!21406 (array!57504) Bool)

(declare-fun array_inv!21407 (array!57502) Bool)

(assert (=> b!949634 (= e!534664 (and tp!63265 tp_is_empty!20733 (array_inv!21406 (_keys!10697 thiss!1141)) (array_inv!21407 (_values!5792 thiss!1141)) e!534665))))

(declare-fun b!949635 () Bool)

(declare-fun res!636897 () Bool)

(assert (=> b!949635 (=> (not res!636897) (not e!534663))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9124 0))(
  ( (MissingZero!9124 (index!38866 (_ BitVec 32))) (Found!9124 (index!38867 (_ BitVec 32))) (Intermediate!9124 (undefined!9936 Bool) (index!38868 (_ BitVec 32)) (x!81691 (_ BitVec 32))) (Undefined!9124) (MissingVacant!9124 (index!38869 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57504 (_ BitVec 32)) SeekEntryResult!9124)

(assert (=> b!949635 (= res!636897 (not ((_ is Found!9124) (seekEntry!0 key!756 (_keys!10697 thiss!1141) (mask!27550 thiss!1141)))))))

(assert (= (and start!81184 res!636900) b!949630))

(assert (= (and b!949630 res!636902) b!949635))

(assert (= (and b!949635 res!636897) b!949631))

(assert (= (and b!949631 res!636901) b!949632))

(assert (= (and b!949632 res!636898) b!949633))

(assert (= (and b!949633 res!636899) b!949629))

(assert (= (and b!949628 condMapEmpty!33005) mapIsEmpty!33005))

(assert (= (and b!949628 (not condMapEmpty!33005)) mapNonEmpty!33005))

(assert (= (and mapNonEmpty!33005 ((_ is ValueCellFull!9885) mapValue!33005)) b!949626))

(assert (= (and b!949628 ((_ is ValueCellFull!9885) mapDefault!33005)) b!949627))

(assert (= b!949634 b!949628))

(assert (= start!81184 b!949634))

(declare-fun m!882345 () Bool)

(assert (=> b!949635 m!882345))

(declare-fun m!882347 () Bool)

(assert (=> b!949634 m!882347))

(declare-fun m!882349 () Bool)

(assert (=> b!949634 m!882349))

(declare-fun m!882351 () Bool)

(assert (=> start!81184 m!882351))

(declare-fun m!882353 () Bool)

(assert (=> b!949632 m!882353))

(declare-fun m!882355 () Bool)

(assert (=> b!949629 m!882355))

(declare-fun m!882357 () Bool)

(assert (=> b!949631 m!882357))

(assert (=> b!949631 m!882357))

(declare-fun m!882359 () Bool)

(assert (=> b!949631 m!882359))

(declare-fun m!882361 () Bool)

(assert (=> mapNonEmpty!33005 m!882361))

(check-sat (not b_next!18225) tp_is_empty!20733 b_and!29695 (not b!949632) (not b!949635) (not start!81184) (not b!949631) (not b!949629) (not mapNonEmpty!33005) (not b!949634))
(check-sat b_and!29695 (not b_next!18225))
(get-model)

(declare-fun b!949678 () Bool)

(declare-fun e!534692 () SeekEntryResult!9124)

(declare-fun lt!427687 () SeekEntryResult!9124)

(assert (=> b!949678 (= e!534692 (MissingZero!9124 (index!38868 lt!427687)))))

(declare-fun b!949680 () Bool)

(declare-fun e!534690 () SeekEntryResult!9124)

(assert (=> b!949680 (= e!534690 (Found!9124 (index!38868 lt!427687)))))

(declare-fun b!949681 () Bool)

(declare-fun lt!427686 () SeekEntryResult!9124)

(assert (=> b!949681 (= e!534692 (ite ((_ is MissingVacant!9124) lt!427686) (MissingZero!9124 (index!38869 lt!427686)) lt!427686))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57504 (_ BitVec 32)) SeekEntryResult!9124)

(assert (=> b!949681 (= lt!427686 (seekKeyOrZeroReturnVacant!0 (x!81691 lt!427687) (index!38868 lt!427687) (index!38868 lt!427687) key!756 (_keys!10697 thiss!1141) (mask!27550 thiss!1141)))))

(declare-fun b!949682 () Bool)

(declare-fun e!534691 () SeekEntryResult!9124)

(assert (=> b!949682 (= e!534691 Undefined!9124)))

(declare-fun b!949683 () Bool)

(declare-fun c!99074 () Bool)

(declare-fun lt!427688 () (_ BitVec 64))

(assert (=> b!949683 (= c!99074 (= lt!427688 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!949683 (= e!534690 e!534692)))

(declare-fun b!949679 () Bool)

(assert (=> b!949679 (= e!534691 e!534690)))

(assert (=> b!949679 (= lt!427688 (select (arr!27650 (_keys!10697 thiss!1141)) (index!38868 lt!427687)))))

(declare-fun c!99075 () Bool)

(assert (=> b!949679 (= c!99075 (= lt!427688 key!756))))

(declare-fun d!115049 () Bool)

(declare-fun lt!427685 () SeekEntryResult!9124)

(assert (=> d!115049 (and (or ((_ is MissingVacant!9124) lt!427685) (not ((_ is Found!9124) lt!427685)) (and (bvsge (index!38867 lt!427685) #b00000000000000000000000000000000) (bvslt (index!38867 lt!427685) (size!28128 (_keys!10697 thiss!1141))))) (not ((_ is MissingVacant!9124) lt!427685)) (or (not ((_ is Found!9124) lt!427685)) (= (select (arr!27650 (_keys!10697 thiss!1141)) (index!38867 lt!427685)) key!756)))))

(assert (=> d!115049 (= lt!427685 e!534691)))

(declare-fun c!99073 () Bool)

(assert (=> d!115049 (= c!99073 (and ((_ is Intermediate!9124) lt!427687) (undefined!9936 lt!427687)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57504 (_ BitVec 32)) SeekEntryResult!9124)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!115049 (= lt!427687 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27550 thiss!1141)) key!756 (_keys!10697 thiss!1141) (mask!27550 thiss!1141)))))

(assert (=> d!115049 (validMask!0 (mask!27550 thiss!1141))))

(assert (=> d!115049 (= (seekEntry!0 key!756 (_keys!10697 thiss!1141) (mask!27550 thiss!1141)) lt!427685)))

(assert (= (and d!115049 c!99073) b!949682))

(assert (= (and d!115049 (not c!99073)) b!949679))

(assert (= (and b!949679 c!99075) b!949680))

(assert (= (and b!949679 (not c!99075)) b!949683))

(assert (= (and b!949683 c!99074) b!949678))

(assert (= (and b!949683 (not c!99074)) b!949681))

(declare-fun m!882381 () Bool)

(assert (=> b!949681 m!882381))

(declare-fun m!882383 () Bool)

(assert (=> b!949679 m!882383))

(declare-fun m!882385 () Bool)

(assert (=> d!115049 m!882385))

(declare-fun m!882387 () Bool)

(assert (=> d!115049 m!882387))

(assert (=> d!115049 m!882387))

(declare-fun m!882389 () Bool)

(assert (=> d!115049 m!882389))

(assert (=> d!115049 m!882353))

(assert (=> b!949635 d!115049))

(declare-fun b!949692 () Bool)

(declare-fun e!534700 () Bool)

(declare-fun call!41322 () Bool)

(assert (=> b!949692 (= e!534700 call!41322)))

(declare-fun b!949693 () Bool)

(declare-fun e!534699 () Bool)

(assert (=> b!949693 (= e!534699 call!41322)))

(declare-fun bm!41319 () Bool)

(assert (=> bm!41319 (= call!41322 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10697 thiss!1141) (mask!27550 thiss!1141)))))

(declare-fun d!115051 () Bool)

(declare-fun res!636926 () Bool)

(declare-fun e!534701 () Bool)

(assert (=> d!115051 (=> res!636926 e!534701)))

(assert (=> d!115051 (= res!636926 (bvsge #b00000000000000000000000000000000 (size!28128 (_keys!10697 thiss!1141))))))

(assert (=> d!115051 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10697 thiss!1141) (mask!27550 thiss!1141)) e!534701)))

(declare-fun b!949694 () Bool)

(assert (=> b!949694 (= e!534701 e!534699)))

(declare-fun c!99078 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!949694 (= c!99078 (validKeyInArray!0 (select (arr!27650 (_keys!10697 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!949695 () Bool)

(assert (=> b!949695 (= e!534699 e!534700)))

(declare-fun lt!427695 () (_ BitVec 64))

(assert (=> b!949695 (= lt!427695 (select (arr!27650 (_keys!10697 thiss!1141)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!31972 0))(
  ( (Unit!31973) )
))
(declare-fun lt!427696 () Unit!31972)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57504 (_ BitVec 64) (_ BitVec 32)) Unit!31972)

(assert (=> b!949695 (= lt!427696 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10697 thiss!1141) lt!427695 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57504 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!949695 (arrayContainsKey!0 (_keys!10697 thiss!1141) lt!427695 #b00000000000000000000000000000000)))

(declare-fun lt!427697 () Unit!31972)

(assert (=> b!949695 (= lt!427697 lt!427696)))

(declare-fun res!636925 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57504 (_ BitVec 32)) SeekEntryResult!9124)

(assert (=> b!949695 (= res!636925 (= (seekEntryOrOpen!0 (select (arr!27650 (_keys!10697 thiss!1141)) #b00000000000000000000000000000000) (_keys!10697 thiss!1141) (mask!27550 thiss!1141)) (Found!9124 #b00000000000000000000000000000000)))))

(assert (=> b!949695 (=> (not res!636925) (not e!534700))))

(assert (= (and d!115051 (not res!636926)) b!949694))

(assert (= (and b!949694 c!99078) b!949695))

(assert (= (and b!949694 (not c!99078)) b!949693))

(assert (= (and b!949695 res!636925) b!949692))

(assert (= (or b!949692 b!949693) bm!41319))

(declare-fun m!882391 () Bool)

(assert (=> bm!41319 m!882391))

(declare-fun m!882393 () Bool)

(assert (=> b!949694 m!882393))

(assert (=> b!949694 m!882393))

(declare-fun m!882395 () Bool)

(assert (=> b!949694 m!882395))

(assert (=> b!949695 m!882393))

(declare-fun m!882397 () Bool)

(assert (=> b!949695 m!882397))

(declare-fun m!882399 () Bool)

(assert (=> b!949695 m!882399))

(assert (=> b!949695 m!882393))

(declare-fun m!882401 () Bool)

(assert (=> b!949695 m!882401))

(assert (=> b!949629 d!115051))

(declare-fun d!115053 () Bool)

(declare-fun res!636933 () Bool)

(declare-fun e!534704 () Bool)

(assert (=> d!115053 (=> (not res!636933) (not e!534704))))

(declare-fun simpleValid!371 (LongMapFixedSize!4920) Bool)

(assert (=> d!115053 (= res!636933 (simpleValid!371 thiss!1141))))

(assert (=> d!115053 (= (valid!1847 thiss!1141) e!534704)))

(declare-fun b!949702 () Bool)

(declare-fun res!636934 () Bool)

(assert (=> b!949702 (=> (not res!636934) (not e!534704))))

(declare-fun arrayCountValidKeys!0 (array!57504 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!949702 (= res!636934 (= (arrayCountValidKeys!0 (_keys!10697 thiss!1141) #b00000000000000000000000000000000 (size!28128 (_keys!10697 thiss!1141))) (_size!2515 thiss!1141)))))

(declare-fun b!949703 () Bool)

(declare-fun res!636935 () Bool)

(assert (=> b!949703 (=> (not res!636935) (not e!534704))))

(assert (=> b!949703 (= res!636935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10697 thiss!1141) (mask!27550 thiss!1141)))))

(declare-fun b!949704 () Bool)

(declare-datatypes ((List!19461 0))(
  ( (Nil!19458) (Cons!19457 (h!20617 (_ BitVec 64)) (t!27806 List!19461)) )
))
(declare-fun arrayNoDuplicates!0 (array!57504 (_ BitVec 32) List!19461) Bool)

(assert (=> b!949704 (= e!534704 (arrayNoDuplicates!0 (_keys!10697 thiss!1141) #b00000000000000000000000000000000 Nil!19458))))

(assert (= (and d!115053 res!636933) b!949702))

(assert (= (and b!949702 res!636934) b!949703))

(assert (= (and b!949703 res!636935) b!949704))

(declare-fun m!882403 () Bool)

(assert (=> d!115053 m!882403))

(declare-fun m!882405 () Bool)

(assert (=> b!949702 m!882405))

(assert (=> b!949703 m!882355))

(declare-fun m!882407 () Bool)

(assert (=> b!949704 m!882407))

(assert (=> start!81184 d!115053))

(declare-fun d!115055 () Bool)

(assert (=> d!115055 (= (array_inv!21406 (_keys!10697 thiss!1141)) (bvsge (size!28128 (_keys!10697 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!949634 d!115055))

(declare-fun d!115057 () Bool)

(assert (=> d!115057 (= (array_inv!21407 (_values!5792 thiss!1141)) (bvsge (size!28127 (_values!5792 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!949634 d!115057))

(declare-fun d!115059 () Bool)

(assert (=> d!115059 (= (validMask!0 (mask!27550 thiss!1141)) (and (or (= (mask!27550 thiss!1141) #b00000000000000000000000000000111) (= (mask!27550 thiss!1141) #b00000000000000000000000000001111) (= (mask!27550 thiss!1141) #b00000000000000000000000000011111) (= (mask!27550 thiss!1141) #b00000000000000000000000000111111) (= (mask!27550 thiss!1141) #b00000000000000000000000001111111) (= (mask!27550 thiss!1141) #b00000000000000000000000011111111) (= (mask!27550 thiss!1141) #b00000000000000000000000111111111) (= (mask!27550 thiss!1141) #b00000000000000000000001111111111) (= (mask!27550 thiss!1141) #b00000000000000000000011111111111) (= (mask!27550 thiss!1141) #b00000000000000000000111111111111) (= (mask!27550 thiss!1141) #b00000000000000000001111111111111) (= (mask!27550 thiss!1141) #b00000000000000000011111111111111) (= (mask!27550 thiss!1141) #b00000000000000000111111111111111) (= (mask!27550 thiss!1141) #b00000000000000001111111111111111) (= (mask!27550 thiss!1141) #b00000000000000011111111111111111) (= (mask!27550 thiss!1141) #b00000000000000111111111111111111) (= (mask!27550 thiss!1141) #b00000000000001111111111111111111) (= (mask!27550 thiss!1141) #b00000000000011111111111111111111) (= (mask!27550 thiss!1141) #b00000000000111111111111111111111) (= (mask!27550 thiss!1141) #b00000000001111111111111111111111) (= (mask!27550 thiss!1141) #b00000000011111111111111111111111) (= (mask!27550 thiss!1141) #b00000000111111111111111111111111) (= (mask!27550 thiss!1141) #b00000001111111111111111111111111) (= (mask!27550 thiss!1141) #b00000011111111111111111111111111) (= (mask!27550 thiss!1141) #b00000111111111111111111111111111) (= (mask!27550 thiss!1141) #b00001111111111111111111111111111) (= (mask!27550 thiss!1141) #b00011111111111111111111111111111) (= (mask!27550 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27550 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!949632 d!115059))

(declare-fun d!115061 () Bool)

(declare-fun e!534710 () Bool)

(assert (=> d!115061 e!534710))

(declare-fun res!636938 () Bool)

(assert (=> d!115061 (=> res!636938 e!534710)))

(declare-fun lt!427706 () Bool)

(assert (=> d!115061 (= res!636938 (not lt!427706))))

(declare-fun lt!427709 () Bool)

(assert (=> d!115061 (= lt!427706 lt!427709)))

(declare-fun lt!427708 () Unit!31972)

(declare-fun e!534709 () Unit!31972)

(assert (=> d!115061 (= lt!427708 e!534709)))

(declare-fun c!99081 () Bool)

(assert (=> d!115061 (= c!99081 lt!427709)))

(declare-fun containsKey!463 (List!19460 (_ BitVec 64)) Bool)

(assert (=> d!115061 (= lt!427709 (containsKey!463 (toList!6189 (getCurrentListMap!3374 (_keys!10697 thiss!1141) (_values!5792 thiss!1141) (mask!27550 thiss!1141) (extraKeys!5501 thiss!1141) (zeroValue!5605 thiss!1141) (minValue!5605 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5769 thiss!1141))) key!756))))

(assert (=> d!115061 (= (contains!5230 (getCurrentListMap!3374 (_keys!10697 thiss!1141) (_values!5792 thiss!1141) (mask!27550 thiss!1141) (extraKeys!5501 thiss!1141) (zeroValue!5605 thiss!1141) (minValue!5605 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5769 thiss!1141)) key!756) lt!427706)))

(declare-fun b!949711 () Bool)

(declare-fun lt!427707 () Unit!31972)

(assert (=> b!949711 (= e!534709 lt!427707)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!358 (List!19460 (_ BitVec 64)) Unit!31972)

(assert (=> b!949711 (= lt!427707 (lemmaContainsKeyImpliesGetValueByKeyDefined!358 (toList!6189 (getCurrentListMap!3374 (_keys!10697 thiss!1141) (_values!5792 thiss!1141) (mask!27550 thiss!1141) (extraKeys!5501 thiss!1141) (zeroValue!5605 thiss!1141) (minValue!5605 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5769 thiss!1141))) key!756))))

(declare-datatypes ((Option!504 0))(
  ( (Some!503 (v!12960 V!32609)) (None!502) )
))
(declare-fun isDefined!368 (Option!504) Bool)

(declare-fun getValueByKey!498 (List!19460 (_ BitVec 64)) Option!504)

(assert (=> b!949711 (isDefined!368 (getValueByKey!498 (toList!6189 (getCurrentListMap!3374 (_keys!10697 thiss!1141) (_values!5792 thiss!1141) (mask!27550 thiss!1141) (extraKeys!5501 thiss!1141) (zeroValue!5605 thiss!1141) (minValue!5605 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5769 thiss!1141))) key!756))))

(declare-fun b!949712 () Bool)

(declare-fun Unit!31974 () Unit!31972)

(assert (=> b!949712 (= e!534709 Unit!31974)))

(declare-fun b!949713 () Bool)

(assert (=> b!949713 (= e!534710 (isDefined!368 (getValueByKey!498 (toList!6189 (getCurrentListMap!3374 (_keys!10697 thiss!1141) (_values!5792 thiss!1141) (mask!27550 thiss!1141) (extraKeys!5501 thiss!1141) (zeroValue!5605 thiss!1141) (minValue!5605 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5769 thiss!1141))) key!756)))))

(assert (= (and d!115061 c!99081) b!949711))

(assert (= (and d!115061 (not c!99081)) b!949712))

(assert (= (and d!115061 (not res!636938)) b!949713))

(declare-fun m!882409 () Bool)

(assert (=> d!115061 m!882409))

(declare-fun m!882411 () Bool)

(assert (=> b!949711 m!882411))

(declare-fun m!882413 () Bool)

(assert (=> b!949711 m!882413))

(assert (=> b!949711 m!882413))

(declare-fun m!882415 () Bool)

(assert (=> b!949711 m!882415))

(assert (=> b!949713 m!882413))

(assert (=> b!949713 m!882413))

(assert (=> b!949713 m!882415))

(assert (=> b!949631 d!115061))

(declare-fun b!949756 () Bool)

(declare-fun e!534743 () Unit!31972)

(declare-fun lt!427755 () Unit!31972)

(assert (=> b!949756 (= e!534743 lt!427755)))

(declare-fun lt!427763 () ListLongMap!12347)

(declare-fun getCurrentListMapNoExtraKeys!3331 (array!57504 array!57502 (_ BitVec 32) (_ BitVec 32) V!32609 V!32609 (_ BitVec 32) Int) ListLongMap!12347)

(assert (=> b!949756 (= lt!427763 (getCurrentListMapNoExtraKeys!3331 (_keys!10697 thiss!1141) (_values!5792 thiss!1141) (mask!27550 thiss!1141) (extraKeys!5501 thiss!1141) (zeroValue!5605 thiss!1141) (minValue!5605 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5769 thiss!1141)))))

(declare-fun lt!427769 () (_ BitVec 64))

(assert (=> b!949756 (= lt!427769 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427775 () (_ BitVec 64))

(assert (=> b!949756 (= lt!427775 (select (arr!27650 (_keys!10697 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427773 () Unit!31972)

(declare-fun addStillContains!581 (ListLongMap!12347 (_ BitVec 64) V!32609 (_ BitVec 64)) Unit!31972)

(assert (=> b!949756 (= lt!427773 (addStillContains!581 lt!427763 lt!427769 (zeroValue!5605 thiss!1141) lt!427775))))

(declare-fun +!2825 (ListLongMap!12347 tuple2!13636) ListLongMap!12347)

(assert (=> b!949756 (contains!5230 (+!2825 lt!427763 (tuple2!13637 lt!427769 (zeroValue!5605 thiss!1141))) lt!427775)))

(declare-fun lt!427774 () Unit!31972)

(assert (=> b!949756 (= lt!427774 lt!427773)))

(declare-fun lt!427767 () ListLongMap!12347)

(assert (=> b!949756 (= lt!427767 (getCurrentListMapNoExtraKeys!3331 (_keys!10697 thiss!1141) (_values!5792 thiss!1141) (mask!27550 thiss!1141) (extraKeys!5501 thiss!1141) (zeroValue!5605 thiss!1141) (minValue!5605 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5769 thiss!1141)))))

(declare-fun lt!427758 () (_ BitVec 64))

(assert (=> b!949756 (= lt!427758 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427760 () (_ BitVec 64))

(assert (=> b!949756 (= lt!427760 (select (arr!27650 (_keys!10697 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427759 () Unit!31972)

(declare-fun addApplyDifferent!455 (ListLongMap!12347 (_ BitVec 64) V!32609 (_ BitVec 64)) Unit!31972)

(assert (=> b!949756 (= lt!427759 (addApplyDifferent!455 lt!427767 lt!427758 (minValue!5605 thiss!1141) lt!427760))))

(declare-fun apply!911 (ListLongMap!12347 (_ BitVec 64)) V!32609)

(assert (=> b!949756 (= (apply!911 (+!2825 lt!427767 (tuple2!13637 lt!427758 (minValue!5605 thiss!1141))) lt!427760) (apply!911 lt!427767 lt!427760))))

(declare-fun lt!427770 () Unit!31972)

(assert (=> b!949756 (= lt!427770 lt!427759)))

(declare-fun lt!427768 () ListLongMap!12347)

(assert (=> b!949756 (= lt!427768 (getCurrentListMapNoExtraKeys!3331 (_keys!10697 thiss!1141) (_values!5792 thiss!1141) (mask!27550 thiss!1141) (extraKeys!5501 thiss!1141) (zeroValue!5605 thiss!1141) (minValue!5605 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5769 thiss!1141)))))

(declare-fun lt!427771 () (_ BitVec 64))

(assert (=> b!949756 (= lt!427771 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427764 () (_ BitVec 64))

(assert (=> b!949756 (= lt!427764 (select (arr!27650 (_keys!10697 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427766 () Unit!31972)

(assert (=> b!949756 (= lt!427766 (addApplyDifferent!455 lt!427768 lt!427771 (zeroValue!5605 thiss!1141) lt!427764))))

(assert (=> b!949756 (= (apply!911 (+!2825 lt!427768 (tuple2!13637 lt!427771 (zeroValue!5605 thiss!1141))) lt!427764) (apply!911 lt!427768 lt!427764))))

(declare-fun lt!427756 () Unit!31972)

(assert (=> b!949756 (= lt!427756 lt!427766)))

(declare-fun lt!427761 () ListLongMap!12347)

(assert (=> b!949756 (= lt!427761 (getCurrentListMapNoExtraKeys!3331 (_keys!10697 thiss!1141) (_values!5792 thiss!1141) (mask!27550 thiss!1141) (extraKeys!5501 thiss!1141) (zeroValue!5605 thiss!1141) (minValue!5605 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5769 thiss!1141)))))

(declare-fun lt!427762 () (_ BitVec 64))

(assert (=> b!949756 (= lt!427762 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427754 () (_ BitVec 64))

(assert (=> b!949756 (= lt!427754 (select (arr!27650 (_keys!10697 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!949756 (= lt!427755 (addApplyDifferent!455 lt!427761 lt!427762 (minValue!5605 thiss!1141) lt!427754))))

(assert (=> b!949756 (= (apply!911 (+!2825 lt!427761 (tuple2!13637 lt!427762 (minValue!5605 thiss!1141))) lt!427754) (apply!911 lt!427761 lt!427754))))

(declare-fun bm!41334 () Bool)

(declare-fun call!41343 () Bool)

(declare-fun lt!427757 () ListLongMap!12347)

(assert (=> bm!41334 (= call!41343 (contains!5230 lt!427757 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!949757 () Bool)

(declare-fun e!534738 () ListLongMap!12347)

(declare-fun call!41339 () ListLongMap!12347)

(assert (=> b!949757 (= e!534738 call!41339)))

(declare-fun b!949758 () Bool)

(declare-fun e!534748 () Bool)

(declare-fun get!14548 (ValueCell!9885 V!32609) V!32609)

(declare-fun dynLambda!1664 (Int (_ BitVec 64)) V!32609)

(assert (=> b!949758 (= e!534748 (= (apply!911 lt!427757 (select (arr!27650 (_keys!10697 thiss!1141)) #b00000000000000000000000000000000)) (get!14548 (select (arr!27649 (_values!5792 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1664 (defaultEntry!5769 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!949758 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28127 (_values!5792 thiss!1141))))))

(assert (=> b!949758 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28128 (_keys!10697 thiss!1141))))))

(declare-fun c!99096 () Bool)

(declare-fun call!41340 () ListLongMap!12347)

(declare-fun call!41341 () ListLongMap!12347)

(declare-fun call!41338 () ListLongMap!12347)

(declare-fun c!99098 () Bool)

(declare-fun bm!41335 () Bool)

(declare-fun call!41337 () ListLongMap!12347)

(assert (=> bm!41335 (= call!41341 (+!2825 (ite c!99098 call!41338 (ite c!99096 call!41340 call!41337)) (ite (or c!99098 c!99096) (tuple2!13637 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5605 thiss!1141)) (tuple2!13637 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5605 thiss!1141)))))))

(declare-fun b!949759 () Bool)

(declare-fun e!534739 () Bool)

(assert (=> b!949759 (= e!534739 (validKeyInArray!0 (select (arr!27650 (_keys!10697 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!949760 () Bool)

(declare-fun e!534742 () Bool)

(assert (=> b!949760 (= e!534742 e!534748)))

(declare-fun res!636957 () Bool)

(assert (=> b!949760 (=> (not res!636957) (not e!534748))))

(assert (=> b!949760 (= res!636957 (contains!5230 lt!427757 (select (arr!27650 (_keys!10697 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!949760 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28128 (_keys!10697 thiss!1141))))))

(declare-fun bm!41336 () Bool)

(declare-fun call!41342 () Bool)

(assert (=> bm!41336 (= call!41342 (contains!5230 lt!427757 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!949761 () Bool)

(declare-fun e!534744 () Bool)

(declare-fun e!534747 () Bool)

(assert (=> b!949761 (= e!534744 e!534747)))

(declare-fun res!636960 () Bool)

(assert (=> b!949761 (= res!636960 call!41343)))

(assert (=> b!949761 (=> (not res!636960) (not e!534747))))

(declare-fun b!949762 () Bool)

(declare-fun e!534737 () ListLongMap!12347)

(assert (=> b!949762 (= e!534737 (+!2825 call!41341 (tuple2!13637 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5605 thiss!1141))))))

(declare-fun b!949764 () Bool)

(declare-fun e!534741 () Bool)

(declare-fun e!534746 () Bool)

(assert (=> b!949764 (= e!534741 e!534746)))

(declare-fun res!636963 () Bool)

(assert (=> b!949764 (= res!636963 call!41342)))

(assert (=> b!949764 (=> (not res!636963) (not e!534746))))

(declare-fun b!949765 () Bool)

(assert (=> b!949765 (= e!534744 (not call!41343))))

(declare-fun b!949766 () Bool)

(declare-fun e!534740 () Bool)

(assert (=> b!949766 (= e!534740 (validKeyInArray!0 (select (arr!27650 (_keys!10697 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!949767 () Bool)

(declare-fun e!534745 () Bool)

(assert (=> b!949767 (= e!534745 e!534741)))

(declare-fun c!99095 () Bool)

(assert (=> b!949767 (= c!99095 (not (= (bvand (extraKeys!5501 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!949768 () Bool)

(declare-fun e!534749 () ListLongMap!12347)

(assert (=> b!949768 (= e!534749 call!41339)))

(declare-fun b!949769 () Bool)

(declare-fun c!99099 () Bool)

(assert (=> b!949769 (= c!99099 (and (not (= (bvand (extraKeys!5501 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5501 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!949769 (= e!534749 e!534738)))

(declare-fun b!949770 () Bool)

(assert (=> b!949770 (= e!534737 e!534749)))

(assert (=> b!949770 (= c!99096 (and (not (= (bvand (extraKeys!5501 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5501 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!949771 () Bool)

(assert (=> b!949771 (= e!534747 (= (apply!911 lt!427757 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5605 thiss!1141)))))

(declare-fun b!949772 () Bool)

(assert (=> b!949772 (= e!534738 call!41337)))

(declare-fun b!949773 () Bool)

(declare-fun res!636958 () Bool)

(assert (=> b!949773 (=> (not res!636958) (not e!534745))))

(assert (=> b!949773 (= res!636958 e!534742)))

(declare-fun res!636964 () Bool)

(assert (=> b!949773 (=> res!636964 e!534742)))

(assert (=> b!949773 (= res!636964 (not e!534740))))

(declare-fun res!636961 () Bool)

(assert (=> b!949773 (=> (not res!636961) (not e!534740))))

(assert (=> b!949773 (= res!636961 (bvslt #b00000000000000000000000000000000 (size!28128 (_keys!10697 thiss!1141))))))

(declare-fun b!949774 () Bool)

(declare-fun res!636962 () Bool)

(assert (=> b!949774 (=> (not res!636962) (not e!534745))))

(assert (=> b!949774 (= res!636962 e!534744)))

(declare-fun c!99097 () Bool)

(assert (=> b!949774 (= c!99097 (not (= (bvand (extraKeys!5501 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!41337 () Bool)

(assert (=> bm!41337 (= call!41339 call!41341)))

(declare-fun bm!41338 () Bool)

(assert (=> bm!41338 (= call!41338 (getCurrentListMapNoExtraKeys!3331 (_keys!10697 thiss!1141) (_values!5792 thiss!1141) (mask!27550 thiss!1141) (extraKeys!5501 thiss!1141) (zeroValue!5605 thiss!1141) (minValue!5605 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5769 thiss!1141)))))

(declare-fun bm!41339 () Bool)

(assert (=> bm!41339 (= call!41337 call!41340)))

(declare-fun b!949775 () Bool)

(assert (=> b!949775 (= e!534746 (= (apply!911 lt!427757 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5605 thiss!1141)))))

(declare-fun b!949763 () Bool)

(declare-fun Unit!31975 () Unit!31972)

(assert (=> b!949763 (= e!534743 Unit!31975)))

(declare-fun d!115063 () Bool)

(assert (=> d!115063 e!534745))

(declare-fun res!636959 () Bool)

(assert (=> d!115063 (=> (not res!636959) (not e!534745))))

(assert (=> d!115063 (= res!636959 (or (bvsge #b00000000000000000000000000000000 (size!28128 (_keys!10697 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28128 (_keys!10697 thiss!1141))))))))

(declare-fun lt!427772 () ListLongMap!12347)

(assert (=> d!115063 (= lt!427757 lt!427772)))

(declare-fun lt!427765 () Unit!31972)

(assert (=> d!115063 (= lt!427765 e!534743)))

(declare-fun c!99094 () Bool)

(assert (=> d!115063 (= c!99094 e!534739)))

(declare-fun res!636965 () Bool)

(assert (=> d!115063 (=> (not res!636965) (not e!534739))))

(assert (=> d!115063 (= res!636965 (bvslt #b00000000000000000000000000000000 (size!28128 (_keys!10697 thiss!1141))))))

(assert (=> d!115063 (= lt!427772 e!534737)))

(assert (=> d!115063 (= c!99098 (and (not (= (bvand (extraKeys!5501 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5501 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!115063 (validMask!0 (mask!27550 thiss!1141))))

(assert (=> d!115063 (= (getCurrentListMap!3374 (_keys!10697 thiss!1141) (_values!5792 thiss!1141) (mask!27550 thiss!1141) (extraKeys!5501 thiss!1141) (zeroValue!5605 thiss!1141) (minValue!5605 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5769 thiss!1141)) lt!427757)))

(declare-fun b!949776 () Bool)

(assert (=> b!949776 (= e!534741 (not call!41342))))

(declare-fun bm!41340 () Bool)

(assert (=> bm!41340 (= call!41340 call!41338)))

(assert (= (and d!115063 c!99098) b!949762))

(assert (= (and d!115063 (not c!99098)) b!949770))

(assert (= (and b!949770 c!99096) b!949768))

(assert (= (and b!949770 (not c!99096)) b!949769))

(assert (= (and b!949769 c!99099) b!949757))

(assert (= (and b!949769 (not c!99099)) b!949772))

(assert (= (or b!949757 b!949772) bm!41339))

(assert (= (or b!949768 bm!41339) bm!41340))

(assert (= (or b!949768 b!949757) bm!41337))

(assert (= (or b!949762 bm!41340) bm!41338))

(assert (= (or b!949762 bm!41337) bm!41335))

(assert (= (and d!115063 res!636965) b!949759))

(assert (= (and d!115063 c!99094) b!949756))

(assert (= (and d!115063 (not c!99094)) b!949763))

(assert (= (and d!115063 res!636959) b!949773))

(assert (= (and b!949773 res!636961) b!949766))

(assert (= (and b!949773 (not res!636964)) b!949760))

(assert (= (and b!949760 res!636957) b!949758))

(assert (= (and b!949773 res!636958) b!949774))

(assert (= (and b!949774 c!99097) b!949761))

(assert (= (and b!949774 (not c!99097)) b!949765))

(assert (= (and b!949761 res!636960) b!949771))

(assert (= (or b!949761 b!949765) bm!41334))

(assert (= (and b!949774 res!636962) b!949767))

(assert (= (and b!949767 c!99095) b!949764))

(assert (= (and b!949767 (not c!99095)) b!949776))

(assert (= (and b!949764 res!636963) b!949775))

(assert (= (or b!949764 b!949776) bm!41336))

(declare-fun b_lambda!14389 () Bool)

(assert (=> (not b_lambda!14389) (not b!949758)))

(declare-fun t!27805 () Bool)

(declare-fun tb!6195 () Bool)

(assert (=> (and b!949634 (= (defaultEntry!5769 thiss!1141) (defaultEntry!5769 thiss!1141)) t!27805) tb!6195))

(declare-fun result!12291 () Bool)

(assert (=> tb!6195 (= result!12291 tp_is_empty!20733)))

(assert (=> b!949758 t!27805))

(declare-fun b_and!29699 () Bool)

(assert (= b_and!29695 (and (=> t!27805 result!12291) b_and!29699)))

(assert (=> d!115063 m!882353))

(declare-fun m!882417 () Bool)

(assert (=> b!949758 m!882417))

(assert (=> b!949758 m!882393))

(declare-fun m!882419 () Bool)

(assert (=> b!949758 m!882419))

(assert (=> b!949758 m!882417))

(declare-fun m!882421 () Bool)

(assert (=> b!949758 m!882421))

(assert (=> b!949758 m!882393))

(declare-fun m!882423 () Bool)

(assert (=> b!949758 m!882423))

(assert (=> b!949758 m!882419))

(declare-fun m!882425 () Bool)

(assert (=> bm!41335 m!882425))

(declare-fun m!882427 () Bool)

(assert (=> b!949775 m!882427))

(declare-fun m!882429 () Bool)

(assert (=> b!949762 m!882429))

(declare-fun m!882431 () Bool)

(assert (=> b!949771 m!882431))

(declare-fun m!882433 () Bool)

(assert (=> b!949756 m!882433))

(declare-fun m!882435 () Bool)

(assert (=> b!949756 m!882435))

(declare-fun m!882437 () Bool)

(assert (=> b!949756 m!882437))

(declare-fun m!882439 () Bool)

(assert (=> b!949756 m!882439))

(declare-fun m!882441 () Bool)

(assert (=> b!949756 m!882441))

(declare-fun m!882443 () Bool)

(assert (=> b!949756 m!882443))

(declare-fun m!882445 () Bool)

(assert (=> b!949756 m!882445))

(declare-fun m!882447 () Bool)

(assert (=> b!949756 m!882447))

(declare-fun m!882449 () Bool)

(assert (=> b!949756 m!882449))

(assert (=> b!949756 m!882447))

(declare-fun m!882451 () Bool)

(assert (=> b!949756 m!882451))

(declare-fun m!882453 () Bool)

(assert (=> b!949756 m!882453))

(assert (=> b!949756 m!882437))

(assert (=> b!949756 m!882433))

(declare-fun m!882455 () Bool)

(assert (=> b!949756 m!882455))

(assert (=> b!949756 m!882393))

(declare-fun m!882457 () Bool)

(assert (=> b!949756 m!882457))

(declare-fun m!882459 () Bool)

(assert (=> b!949756 m!882459))

(assert (=> b!949756 m!882445))

(declare-fun m!882461 () Bool)

(assert (=> b!949756 m!882461))

(declare-fun m!882463 () Bool)

(assert (=> b!949756 m!882463))

(assert (=> b!949760 m!882393))

(assert (=> b!949760 m!882393))

(declare-fun m!882465 () Bool)

(assert (=> b!949760 m!882465))

(declare-fun m!882467 () Bool)

(assert (=> bm!41336 m!882467))

(assert (=> b!949759 m!882393))

(assert (=> b!949759 m!882393))

(assert (=> b!949759 m!882395))

(declare-fun m!882469 () Bool)

(assert (=> bm!41334 m!882469))

(assert (=> bm!41338 m!882463))

(assert (=> b!949766 m!882393))

(assert (=> b!949766 m!882393))

(assert (=> b!949766 m!882395))

(assert (=> b!949631 d!115063))

(declare-fun mapIsEmpty!33011 () Bool)

(declare-fun mapRes!33011 () Bool)

(assert (=> mapIsEmpty!33011 mapRes!33011))

(declare-fun b!949786 () Bool)

(declare-fun e!534755 () Bool)

(assert (=> b!949786 (= e!534755 tp_is_empty!20733)))

(declare-fun condMapEmpty!33011 () Bool)

(declare-fun mapDefault!33011 () ValueCell!9885)

(assert (=> mapNonEmpty!33005 (= condMapEmpty!33011 (= mapRest!33005 ((as const (Array (_ BitVec 32) ValueCell!9885)) mapDefault!33011)))))

(assert (=> mapNonEmpty!33005 (= tp!63266 (and e!534755 mapRes!33011))))

(declare-fun mapNonEmpty!33011 () Bool)

(declare-fun tp!63275 () Bool)

(declare-fun e!534754 () Bool)

(assert (=> mapNonEmpty!33011 (= mapRes!33011 (and tp!63275 e!534754))))

(declare-fun mapValue!33011 () ValueCell!9885)

(declare-fun mapKey!33011 () (_ BitVec 32))

(declare-fun mapRest!33011 () (Array (_ BitVec 32) ValueCell!9885))

(assert (=> mapNonEmpty!33011 (= mapRest!33005 (store mapRest!33011 mapKey!33011 mapValue!33011))))

(declare-fun b!949785 () Bool)

(assert (=> b!949785 (= e!534754 tp_is_empty!20733)))

(assert (= (and mapNonEmpty!33005 condMapEmpty!33011) mapIsEmpty!33011))

(assert (= (and mapNonEmpty!33005 (not condMapEmpty!33011)) mapNonEmpty!33011))

(assert (= (and mapNonEmpty!33011 ((_ is ValueCellFull!9885) mapValue!33011)) b!949785))

(assert (= (and mapNonEmpty!33005 ((_ is ValueCellFull!9885) mapDefault!33011)) b!949786))

(declare-fun m!882471 () Bool)

(assert (=> mapNonEmpty!33011 m!882471))

(declare-fun b_lambda!14391 () Bool)

(assert (= b_lambda!14389 (or (and b!949634 b_free!18225) b_lambda!14391)))

(check-sat (not b_next!18225) (not d!115063) (not bm!41334) (not b!949703) (not b!949758) (not bm!41336) (not mapNonEmpty!33011) (not b!949681) (not b_lambda!14391) (not b!949771) (not d!115053) b_and!29699 tp_is_empty!20733 (not b!949702) (not b!949775) (not b!949756) (not bm!41319) (not d!115061) (not b!949704) (not b!949711) (not b!949766) (not d!115049) (not b!949762) (not b!949713) (not b!949760) (not b!949695) (not bm!41338) (not bm!41335) (not b!949694) (not b!949759))
(check-sat b_and!29699 (not b_next!18225))
