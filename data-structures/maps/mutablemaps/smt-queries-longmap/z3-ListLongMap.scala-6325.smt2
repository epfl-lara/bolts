; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81406 () Bool)

(assert start!81406)

(declare-fun b!951421 () Bool)

(declare-fun b_free!18273 () Bool)

(declare-fun b_next!18273 () Bool)

(assert (=> b!951421 (= b_free!18273 (not b_next!18273))))

(declare-fun tp!63432 () Bool)

(declare-fun b_and!29761 () Bool)

(assert (=> b!951421 (= tp!63432 b_and!29761)))

(declare-fun b!951419 () Bool)

(declare-fun e!535794 () Bool)

(declare-fun e!535793 () Bool)

(declare-fun mapRes!33099 () Bool)

(assert (=> b!951419 (= e!535794 (and e!535793 mapRes!33099))))

(declare-fun condMapEmpty!33099 () Bool)

(declare-datatypes ((V!32673 0))(
  ( (V!32674 (val!10441 Int)) )
))
(declare-datatypes ((ValueCell!9909 0))(
  ( (ValueCellFull!9909 (v!12989 V!32673)) (EmptyCell!9909) )
))
(declare-datatypes ((array!57612 0))(
  ( (array!57613 (arr!27697 (Array (_ BitVec 32) ValueCell!9909)) (size!28176 (_ BitVec 32))) )
))
(declare-datatypes ((array!57614 0))(
  ( (array!57615 (arr!27698 (Array (_ BitVec 32) (_ BitVec 64))) (size!28177 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4968 0))(
  ( (LongMapFixedSize!4969 (defaultEntry!5807 Int) (mask!27625 (_ BitVec 32)) (extraKeys!5539 (_ BitVec 32)) (zeroValue!5643 V!32673) (minValue!5643 V!32673) (_size!2539 (_ BitVec 32)) (_keys!10748 array!57614) (_values!5830 array!57612) (_vacant!2539 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4968)

(declare-fun mapDefault!33099 () ValueCell!9909)

(assert (=> b!951419 (= condMapEmpty!33099 (= (arr!27697 (_values!5830 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9909)) mapDefault!33099)))))

(declare-fun mapIsEmpty!33099 () Bool)

(assert (=> mapIsEmpty!33099 mapRes!33099))

(declare-fun b!951420 () Bool)

(declare-fun e!535795 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!951420 (= e!535795 (not (validMask!0 (mask!27625 thiss!1141))))))

(declare-fun lt!428590 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57614 (_ BitVec 32)) Bool)

(assert (=> b!951420 (arrayForallSeekEntryOrOpenFound!0 lt!428590 (_keys!10748 thiss!1141) (mask!27625 thiss!1141))))

(declare-datatypes ((Unit!32018 0))(
  ( (Unit!32019) )
))
(declare-fun lt!428591 () Unit!32018)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57614 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32018)

(assert (=> b!951420 (= lt!428591 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10748 thiss!1141) (mask!27625 thiss!1141) #b00000000000000000000000000000000 lt!428590))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!57614 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!951420 (= lt!428590 (arrayScanForKey!0 (_keys!10748 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57614 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!951420 (arrayContainsKey!0 (_keys!10748 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!428589 () Unit!32018)

(declare-fun lemmaKeyInListMapIsInArray!333 (array!57614 array!57612 (_ BitVec 32) (_ BitVec 32) V!32673 V!32673 (_ BitVec 64) Int) Unit!32018)

(assert (=> b!951420 (= lt!428589 (lemmaKeyInListMapIsInArray!333 (_keys!10748 thiss!1141) (_values!5830 thiss!1141) (mask!27625 thiss!1141) (extraKeys!5539 thiss!1141) (zeroValue!5643 thiss!1141) (minValue!5643 thiss!1141) key!756 (defaultEntry!5807 thiss!1141)))))

(declare-fun e!535792 () Bool)

(declare-fun tp_is_empty!20781 () Bool)

(declare-fun array_inv!21442 (array!57614) Bool)

(declare-fun array_inv!21443 (array!57612) Bool)

(assert (=> b!951421 (= e!535792 (and tp!63432 tp_is_empty!20781 (array_inv!21442 (_keys!10748 thiss!1141)) (array_inv!21443 (_values!5830 thiss!1141)) e!535794))))

(declare-fun mapNonEmpty!33099 () Bool)

(declare-fun tp!63431 () Bool)

(declare-fun e!535791 () Bool)

(assert (=> mapNonEmpty!33099 (= mapRes!33099 (and tp!63431 e!535791))))

(declare-fun mapKey!33099 () (_ BitVec 32))

(declare-fun mapRest!33099 () (Array (_ BitVec 32) ValueCell!9909))

(declare-fun mapValue!33099 () ValueCell!9909)

(assert (=> mapNonEmpty!33099 (= (arr!27697 (_values!5830 thiss!1141)) (store mapRest!33099 mapKey!33099 mapValue!33099))))

(declare-fun res!637707 () Bool)

(assert (=> start!81406 (=> (not res!637707) (not e!535795))))

(declare-fun valid!1861 (LongMapFixedSize!4968) Bool)

(assert (=> start!81406 (= res!637707 (valid!1861 thiss!1141))))

(assert (=> start!81406 e!535795))

(assert (=> start!81406 e!535792))

(assert (=> start!81406 true))

(declare-fun b!951422 () Bool)

(declare-fun res!637709 () Bool)

(assert (=> b!951422 (=> (not res!637709) (not e!535795))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9141 0))(
  ( (MissingZero!9141 (index!38934 (_ BitVec 32))) (Found!9141 (index!38935 (_ BitVec 32))) (Intermediate!9141 (undefined!9953 Bool) (index!38936 (_ BitVec 32)) (x!81850 (_ BitVec 32))) (Undefined!9141) (MissingVacant!9141 (index!38937 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57614 (_ BitVec 32)) SeekEntryResult!9141)

(assert (=> b!951422 (= res!637709 (not ((_ is Found!9141) (seekEntry!0 key!756 (_keys!10748 thiss!1141) (mask!27625 thiss!1141)))))))

(declare-fun b!951423 () Bool)

(assert (=> b!951423 (= e!535793 tp_is_empty!20781)))

(declare-fun b!951424 () Bool)

(declare-fun res!637710 () Bool)

(assert (=> b!951424 (=> (not res!637710) (not e!535795))))

(declare-datatypes ((tuple2!13664 0))(
  ( (tuple2!13665 (_1!6842 (_ BitVec 64)) (_2!6842 V!32673)) )
))
(declare-datatypes ((List!19485 0))(
  ( (Nil!19482) (Cons!19481 (h!20642 tuple2!13664) (t!27842 List!19485)) )
))
(declare-datatypes ((ListLongMap!12375 0))(
  ( (ListLongMap!12376 (toList!6203 List!19485)) )
))
(declare-fun contains!5247 (ListLongMap!12375 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3388 (array!57614 array!57612 (_ BitVec 32) (_ BitVec 32) V!32673 V!32673 (_ BitVec 32) Int) ListLongMap!12375)

(assert (=> b!951424 (= res!637710 (contains!5247 (getCurrentListMap!3388 (_keys!10748 thiss!1141) (_values!5830 thiss!1141) (mask!27625 thiss!1141) (extraKeys!5539 thiss!1141) (zeroValue!5643 thiss!1141) (minValue!5643 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5807 thiss!1141)) key!756))))

(declare-fun b!951425 () Bool)

(assert (=> b!951425 (= e!535791 tp_is_empty!20781)))

(declare-fun b!951426 () Bool)

(declare-fun res!637708 () Bool)

(assert (=> b!951426 (=> (not res!637708) (not e!535795))))

(assert (=> b!951426 (= res!637708 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!81406 res!637707) b!951426))

(assert (= (and b!951426 res!637708) b!951422))

(assert (= (and b!951422 res!637709) b!951424))

(assert (= (and b!951424 res!637710) b!951420))

(assert (= (and b!951419 condMapEmpty!33099) mapIsEmpty!33099))

(assert (= (and b!951419 (not condMapEmpty!33099)) mapNonEmpty!33099))

(assert (= (and mapNonEmpty!33099 ((_ is ValueCellFull!9909) mapValue!33099)) b!951425))

(assert (= (and b!951419 ((_ is ValueCellFull!9909) mapDefault!33099)) b!951423))

(assert (= b!951421 b!951419))

(assert (= start!81406 b!951421))

(declare-fun m!883751 () Bool)

(assert (=> b!951422 m!883751))

(declare-fun m!883753 () Bool)

(assert (=> b!951421 m!883753))

(declare-fun m!883755 () Bool)

(assert (=> b!951421 m!883755))

(declare-fun m!883757 () Bool)

(assert (=> b!951424 m!883757))

(assert (=> b!951424 m!883757))

(declare-fun m!883759 () Bool)

(assert (=> b!951424 m!883759))

(declare-fun m!883761 () Bool)

(assert (=> start!81406 m!883761))

(declare-fun m!883763 () Bool)

(assert (=> mapNonEmpty!33099 m!883763))

(declare-fun m!883765 () Bool)

(assert (=> b!951420 m!883765))

(declare-fun m!883767 () Bool)

(assert (=> b!951420 m!883767))

(declare-fun m!883769 () Bool)

(assert (=> b!951420 m!883769))

(declare-fun m!883771 () Bool)

(assert (=> b!951420 m!883771))

(declare-fun m!883773 () Bool)

(assert (=> b!951420 m!883773))

(declare-fun m!883775 () Bool)

(assert (=> b!951420 m!883775))

(check-sat (not b!951420) (not mapNonEmpty!33099) (not b!951424) (not b!951422) b_and!29761 (not b_next!18273) (not start!81406) (not b!951421) tp_is_empty!20781)
(check-sat b_and!29761 (not b_next!18273))
(get-model)

(declare-fun d!115281 () Bool)

(declare-fun res!637727 () Bool)

(declare-fun e!535818 () Bool)

(assert (=> d!115281 (=> res!637727 e!535818)))

(assert (=> d!115281 (= res!637727 (= (select (arr!27698 (_keys!10748 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115281 (= (arrayContainsKey!0 (_keys!10748 thiss!1141) key!756 #b00000000000000000000000000000000) e!535818)))

(declare-fun b!951455 () Bool)

(declare-fun e!535819 () Bool)

(assert (=> b!951455 (= e!535818 e!535819)))

(declare-fun res!637728 () Bool)

(assert (=> b!951455 (=> (not res!637728) (not e!535819))))

(assert (=> b!951455 (= res!637728 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28177 (_keys!10748 thiss!1141))))))

(declare-fun b!951456 () Bool)

(assert (=> b!951456 (= e!535819 (arrayContainsKey!0 (_keys!10748 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115281 (not res!637727)) b!951455))

(assert (= (and b!951455 res!637728) b!951456))

(declare-fun m!883803 () Bool)

(assert (=> d!115281 m!883803))

(declare-fun m!883805 () Bool)

(assert (=> b!951456 m!883805))

(assert (=> b!951420 d!115281))

(declare-fun d!115283 () Bool)

(declare-fun e!535822 () Bool)

(assert (=> d!115283 e!535822))

(declare-fun c!99380 () Bool)

(assert (=> d!115283 (= c!99380 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!428603 () Unit!32018)

(declare-fun choose!1600 (array!57614 array!57612 (_ BitVec 32) (_ BitVec 32) V!32673 V!32673 (_ BitVec 64) Int) Unit!32018)

(assert (=> d!115283 (= lt!428603 (choose!1600 (_keys!10748 thiss!1141) (_values!5830 thiss!1141) (mask!27625 thiss!1141) (extraKeys!5539 thiss!1141) (zeroValue!5643 thiss!1141) (minValue!5643 thiss!1141) key!756 (defaultEntry!5807 thiss!1141)))))

(assert (=> d!115283 (validMask!0 (mask!27625 thiss!1141))))

(assert (=> d!115283 (= (lemmaKeyInListMapIsInArray!333 (_keys!10748 thiss!1141) (_values!5830 thiss!1141) (mask!27625 thiss!1141) (extraKeys!5539 thiss!1141) (zeroValue!5643 thiss!1141) (minValue!5643 thiss!1141) key!756 (defaultEntry!5807 thiss!1141)) lt!428603)))

(declare-fun b!951461 () Bool)

(assert (=> b!951461 (= e!535822 (arrayContainsKey!0 (_keys!10748 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun b!951462 () Bool)

(assert (=> b!951462 (= e!535822 (ite (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5539 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5539 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!115283 c!99380) b!951461))

(assert (= (and d!115283 (not c!99380)) b!951462))

(declare-fun m!883807 () Bool)

(assert (=> d!115283 m!883807))

(assert (=> d!115283 m!883771))

(assert (=> b!951461 m!883775))

(assert (=> b!951420 d!115283))

(declare-fun d!115285 () Bool)

(assert (=> d!115285 (arrayForallSeekEntryOrOpenFound!0 lt!428590 (_keys!10748 thiss!1141) (mask!27625 thiss!1141))))

(declare-fun lt!428606 () Unit!32018)

(declare-fun choose!38 (array!57614 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32018)

(assert (=> d!115285 (= lt!428606 (choose!38 (_keys!10748 thiss!1141) (mask!27625 thiss!1141) #b00000000000000000000000000000000 lt!428590))))

(assert (=> d!115285 (validMask!0 (mask!27625 thiss!1141))))

(assert (=> d!115285 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10748 thiss!1141) (mask!27625 thiss!1141) #b00000000000000000000000000000000 lt!428590) lt!428606)))

(declare-fun bs!26730 () Bool)

(assert (= bs!26730 d!115285))

(assert (=> bs!26730 m!883769))

(declare-fun m!883809 () Bool)

(assert (=> bs!26730 m!883809))

(assert (=> bs!26730 m!883771))

(assert (=> b!951420 d!115285))

(declare-fun d!115287 () Bool)

(assert (=> d!115287 (= (validMask!0 (mask!27625 thiss!1141)) (and (or (= (mask!27625 thiss!1141) #b00000000000000000000000000000111) (= (mask!27625 thiss!1141) #b00000000000000000000000000001111) (= (mask!27625 thiss!1141) #b00000000000000000000000000011111) (= (mask!27625 thiss!1141) #b00000000000000000000000000111111) (= (mask!27625 thiss!1141) #b00000000000000000000000001111111) (= (mask!27625 thiss!1141) #b00000000000000000000000011111111) (= (mask!27625 thiss!1141) #b00000000000000000000000111111111) (= (mask!27625 thiss!1141) #b00000000000000000000001111111111) (= (mask!27625 thiss!1141) #b00000000000000000000011111111111) (= (mask!27625 thiss!1141) #b00000000000000000000111111111111) (= (mask!27625 thiss!1141) #b00000000000000000001111111111111) (= (mask!27625 thiss!1141) #b00000000000000000011111111111111) (= (mask!27625 thiss!1141) #b00000000000000000111111111111111) (= (mask!27625 thiss!1141) #b00000000000000001111111111111111) (= (mask!27625 thiss!1141) #b00000000000000011111111111111111) (= (mask!27625 thiss!1141) #b00000000000000111111111111111111) (= (mask!27625 thiss!1141) #b00000000000001111111111111111111) (= (mask!27625 thiss!1141) #b00000000000011111111111111111111) (= (mask!27625 thiss!1141) #b00000000000111111111111111111111) (= (mask!27625 thiss!1141) #b00000000001111111111111111111111) (= (mask!27625 thiss!1141) #b00000000011111111111111111111111) (= (mask!27625 thiss!1141) #b00000000111111111111111111111111) (= (mask!27625 thiss!1141) #b00000001111111111111111111111111) (= (mask!27625 thiss!1141) #b00000011111111111111111111111111) (= (mask!27625 thiss!1141) #b00000111111111111111111111111111) (= (mask!27625 thiss!1141) #b00001111111111111111111111111111) (= (mask!27625 thiss!1141) #b00011111111111111111111111111111) (= (mask!27625 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27625 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!951420 d!115287))

(declare-fun d!115289 () Bool)

(declare-fun lt!428609 () (_ BitVec 32))

(assert (=> d!115289 (and (or (bvslt lt!428609 #b00000000000000000000000000000000) (bvsge lt!428609 (size!28177 (_keys!10748 thiss!1141))) (and (bvsge lt!428609 #b00000000000000000000000000000000) (bvslt lt!428609 (size!28177 (_keys!10748 thiss!1141))))) (bvsge lt!428609 #b00000000000000000000000000000000) (bvslt lt!428609 (size!28177 (_keys!10748 thiss!1141))) (= (select (arr!27698 (_keys!10748 thiss!1141)) lt!428609) key!756))))

(declare-fun e!535825 () (_ BitVec 32))

(assert (=> d!115289 (= lt!428609 e!535825)))

(declare-fun c!99383 () Bool)

(assert (=> d!115289 (= c!99383 (= (select (arr!27698 (_keys!10748 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115289 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28177 (_keys!10748 thiss!1141))) (bvslt (size!28177 (_keys!10748 thiss!1141)) #b01111111111111111111111111111111))))

(assert (=> d!115289 (= (arrayScanForKey!0 (_keys!10748 thiss!1141) key!756 #b00000000000000000000000000000000) lt!428609)))

(declare-fun b!951467 () Bool)

(assert (=> b!951467 (= e!535825 #b00000000000000000000000000000000)))

(declare-fun b!951468 () Bool)

(assert (=> b!951468 (= e!535825 (arrayScanForKey!0 (_keys!10748 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115289 c!99383) b!951467))

(assert (= (and d!115289 (not c!99383)) b!951468))

(declare-fun m!883811 () Bool)

(assert (=> d!115289 m!883811))

(assert (=> d!115289 m!883803))

(declare-fun m!883813 () Bool)

(assert (=> b!951468 m!883813))

(assert (=> b!951420 d!115289))

(declare-fun b!951477 () Bool)

(declare-fun e!535834 () Bool)

(declare-fun call!41493 () Bool)

(assert (=> b!951477 (= e!535834 call!41493)))

(declare-fun d!115291 () Bool)

(declare-fun res!637733 () Bool)

(declare-fun e!535832 () Bool)

(assert (=> d!115291 (=> res!637733 e!535832)))

(assert (=> d!115291 (= res!637733 (bvsge lt!428590 (size!28177 (_keys!10748 thiss!1141))))))

(assert (=> d!115291 (= (arrayForallSeekEntryOrOpenFound!0 lt!428590 (_keys!10748 thiss!1141) (mask!27625 thiss!1141)) e!535832)))

(declare-fun b!951478 () Bool)

(declare-fun e!535833 () Bool)

(assert (=> b!951478 (= e!535832 e!535833)))

(declare-fun c!99386 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!951478 (= c!99386 (validKeyInArray!0 (select (arr!27698 (_keys!10748 thiss!1141)) lt!428590)))))

(declare-fun b!951479 () Bool)

(assert (=> b!951479 (= e!535833 call!41493)))

(declare-fun b!951480 () Bool)

(assert (=> b!951480 (= e!535833 e!535834)))

(declare-fun lt!428618 () (_ BitVec 64))

(assert (=> b!951480 (= lt!428618 (select (arr!27698 (_keys!10748 thiss!1141)) lt!428590))))

(declare-fun lt!428616 () Unit!32018)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57614 (_ BitVec 64) (_ BitVec 32)) Unit!32018)

(assert (=> b!951480 (= lt!428616 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10748 thiss!1141) lt!428618 lt!428590))))

(assert (=> b!951480 (arrayContainsKey!0 (_keys!10748 thiss!1141) lt!428618 #b00000000000000000000000000000000)))

(declare-fun lt!428617 () Unit!32018)

(assert (=> b!951480 (= lt!428617 lt!428616)))

(declare-fun res!637734 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57614 (_ BitVec 32)) SeekEntryResult!9141)

(assert (=> b!951480 (= res!637734 (= (seekEntryOrOpen!0 (select (arr!27698 (_keys!10748 thiss!1141)) lt!428590) (_keys!10748 thiss!1141) (mask!27625 thiss!1141)) (Found!9141 lt!428590)))))

(assert (=> b!951480 (=> (not res!637734) (not e!535834))))

(declare-fun bm!41490 () Bool)

(assert (=> bm!41490 (= call!41493 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!428590 #b00000000000000000000000000000001) (_keys!10748 thiss!1141) (mask!27625 thiss!1141)))))

(assert (= (and d!115291 (not res!637733)) b!951478))

(assert (= (and b!951478 c!99386) b!951480))

(assert (= (and b!951478 (not c!99386)) b!951479))

(assert (= (and b!951480 res!637734) b!951477))

(assert (= (or b!951477 b!951479) bm!41490))

(declare-fun m!883815 () Bool)

(assert (=> b!951478 m!883815))

(assert (=> b!951478 m!883815))

(declare-fun m!883817 () Bool)

(assert (=> b!951478 m!883817))

(assert (=> b!951480 m!883815))

(declare-fun m!883819 () Bool)

(assert (=> b!951480 m!883819))

(declare-fun m!883821 () Bool)

(assert (=> b!951480 m!883821))

(assert (=> b!951480 m!883815))

(declare-fun m!883823 () Bool)

(assert (=> b!951480 m!883823))

(declare-fun m!883825 () Bool)

(assert (=> bm!41490 m!883825))

(assert (=> b!951420 d!115291))

(declare-fun d!115293 () Bool)

(declare-fun e!535839 () Bool)

(assert (=> d!115293 e!535839))

(declare-fun res!637737 () Bool)

(assert (=> d!115293 (=> res!637737 e!535839)))

(declare-fun lt!428630 () Bool)

(assert (=> d!115293 (= res!637737 (not lt!428630))))

(declare-fun lt!428627 () Bool)

(assert (=> d!115293 (= lt!428630 lt!428627)))

(declare-fun lt!428628 () Unit!32018)

(declare-fun e!535840 () Unit!32018)

(assert (=> d!115293 (= lt!428628 e!535840)))

(declare-fun c!99389 () Bool)

(assert (=> d!115293 (= c!99389 lt!428627)))

(declare-fun containsKey!470 (List!19485 (_ BitVec 64)) Bool)

(assert (=> d!115293 (= lt!428627 (containsKey!470 (toList!6203 (getCurrentListMap!3388 (_keys!10748 thiss!1141) (_values!5830 thiss!1141) (mask!27625 thiss!1141) (extraKeys!5539 thiss!1141) (zeroValue!5643 thiss!1141) (minValue!5643 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5807 thiss!1141))) key!756))))

(assert (=> d!115293 (= (contains!5247 (getCurrentListMap!3388 (_keys!10748 thiss!1141) (_values!5830 thiss!1141) (mask!27625 thiss!1141) (extraKeys!5539 thiss!1141) (zeroValue!5643 thiss!1141) (minValue!5643 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5807 thiss!1141)) key!756) lt!428630)))

(declare-fun b!951487 () Bool)

(declare-fun lt!428629 () Unit!32018)

(assert (=> b!951487 (= e!535840 lt!428629)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!365 (List!19485 (_ BitVec 64)) Unit!32018)

(assert (=> b!951487 (= lt!428629 (lemmaContainsKeyImpliesGetValueByKeyDefined!365 (toList!6203 (getCurrentListMap!3388 (_keys!10748 thiss!1141) (_values!5830 thiss!1141) (mask!27625 thiss!1141) (extraKeys!5539 thiss!1141) (zeroValue!5643 thiss!1141) (minValue!5643 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5807 thiss!1141))) key!756))))

(declare-datatypes ((Option!511 0))(
  ( (Some!510 (v!12991 V!32673)) (None!509) )
))
(declare-fun isDefined!375 (Option!511) Bool)

(declare-fun getValueByKey!505 (List!19485 (_ BitVec 64)) Option!511)

(assert (=> b!951487 (isDefined!375 (getValueByKey!505 (toList!6203 (getCurrentListMap!3388 (_keys!10748 thiss!1141) (_values!5830 thiss!1141) (mask!27625 thiss!1141) (extraKeys!5539 thiss!1141) (zeroValue!5643 thiss!1141) (minValue!5643 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5807 thiss!1141))) key!756))))

(declare-fun b!951488 () Bool)

(declare-fun Unit!32022 () Unit!32018)

(assert (=> b!951488 (= e!535840 Unit!32022)))

(declare-fun b!951489 () Bool)

(assert (=> b!951489 (= e!535839 (isDefined!375 (getValueByKey!505 (toList!6203 (getCurrentListMap!3388 (_keys!10748 thiss!1141) (_values!5830 thiss!1141) (mask!27625 thiss!1141) (extraKeys!5539 thiss!1141) (zeroValue!5643 thiss!1141) (minValue!5643 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5807 thiss!1141))) key!756)))))

(assert (= (and d!115293 c!99389) b!951487))

(assert (= (and d!115293 (not c!99389)) b!951488))

(assert (= (and d!115293 (not res!637737)) b!951489))

(declare-fun m!883827 () Bool)

(assert (=> d!115293 m!883827))

(declare-fun m!883829 () Bool)

(assert (=> b!951487 m!883829))

(declare-fun m!883831 () Bool)

(assert (=> b!951487 m!883831))

(assert (=> b!951487 m!883831))

(declare-fun m!883833 () Bool)

(assert (=> b!951487 m!883833))

(assert (=> b!951489 m!883831))

(assert (=> b!951489 m!883831))

(assert (=> b!951489 m!883833))

(assert (=> b!951424 d!115293))

(declare-fun b!951532 () Bool)

(declare-fun e!535872 () Bool)

(assert (=> b!951532 (= e!535872 (validKeyInArray!0 (select (arr!27698 (_keys!10748 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun call!41508 () ListLongMap!12375)

(declare-fun call!41509 () ListLongMap!12375)

(declare-fun call!41512 () ListLongMap!12375)

(declare-fun c!99404 () Bool)

(declare-fun bm!41505 () Bool)

(declare-fun call!41514 () ListLongMap!12375)

(declare-fun c!99402 () Bool)

(declare-fun +!2832 (ListLongMap!12375 tuple2!13664) ListLongMap!12375)

(assert (=> bm!41505 (= call!41514 (+!2832 (ite c!99402 call!41509 (ite c!99404 call!41512 call!41508)) (ite (or c!99402 c!99404) (tuple2!13665 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5643 thiss!1141)) (tuple2!13665 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5643 thiss!1141)))))))

(declare-fun b!951533 () Bool)

(declare-fun e!535879 () Bool)

(declare-fun e!535878 () Bool)

(assert (=> b!951533 (= e!535879 e!535878)))

(declare-fun res!637764 () Bool)

(declare-fun call!41510 () Bool)

(assert (=> b!951533 (= res!637764 call!41510)))

(assert (=> b!951533 (=> (not res!637764) (not e!535878))))

(declare-fun b!951534 () Bool)

(declare-fun e!535867 () ListLongMap!12375)

(declare-fun e!535874 () ListLongMap!12375)

(assert (=> b!951534 (= e!535867 e!535874)))

(assert (=> b!951534 (= c!99404 (and (not (= (bvand (extraKeys!5539 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5539 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!951535 () Bool)

(declare-fun res!637756 () Bool)

(declare-fun e!535868 () Bool)

(assert (=> b!951535 (=> (not res!637756) (not e!535868))))

(assert (=> b!951535 (= res!637756 e!535879)))

(declare-fun c!99405 () Bool)

(assert (=> b!951535 (= c!99405 (not (= (bvand (extraKeys!5539 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!41506 () Bool)

(declare-fun call!41511 () ListLongMap!12375)

(assert (=> bm!41506 (= call!41511 call!41514)))

(declare-fun b!951536 () Bool)

(declare-fun e!535875 () Bool)

(declare-fun e!535876 () Bool)

(assert (=> b!951536 (= e!535875 e!535876)))

(declare-fun res!637762 () Bool)

(assert (=> b!951536 (=> (not res!637762) (not e!535876))))

(declare-fun lt!428684 () ListLongMap!12375)

(assert (=> b!951536 (= res!637762 (contains!5247 lt!428684 (select (arr!27698 (_keys!10748 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!951536 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28177 (_keys!10748 thiss!1141))))))

(declare-fun b!951537 () Bool)

(declare-fun apply!918 (ListLongMap!12375 (_ BitVec 64)) V!32673)

(declare-fun get!14574 (ValueCell!9909 V!32673) V!32673)

(declare-fun dynLambda!1671 (Int (_ BitVec 64)) V!32673)

(assert (=> b!951537 (= e!535876 (= (apply!918 lt!428684 (select (arr!27698 (_keys!10748 thiss!1141)) #b00000000000000000000000000000000)) (get!14574 (select (arr!27697 (_values!5830 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1671 (defaultEntry!5807 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!951537 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28176 (_values!5830 thiss!1141))))))

(assert (=> b!951537 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28177 (_keys!10748 thiss!1141))))))

(declare-fun b!951538 () Bool)

(declare-fun e!535869 () Bool)

(declare-fun e!535871 () Bool)

(assert (=> b!951538 (= e!535869 e!535871)))

(declare-fun res!637761 () Bool)

(declare-fun call!41513 () Bool)

(assert (=> b!951538 (= res!637761 call!41513)))

(assert (=> b!951538 (=> (not res!637761) (not e!535871))))

(declare-fun b!951539 () Bool)

(assert (=> b!951539 (= e!535878 (= (apply!918 lt!428684 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5643 thiss!1141)))))

(declare-fun b!951540 () Bool)

(assert (=> b!951540 (= e!535867 (+!2832 call!41514 (tuple2!13665 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5643 thiss!1141))))))

(declare-fun b!951541 () Bool)

(declare-fun e!535873 () Unit!32018)

(declare-fun lt!428688 () Unit!32018)

(assert (=> b!951541 (= e!535873 lt!428688)))

(declare-fun lt!428691 () ListLongMap!12375)

(declare-fun getCurrentListMapNoExtraKeys!3338 (array!57614 array!57612 (_ BitVec 32) (_ BitVec 32) V!32673 V!32673 (_ BitVec 32) Int) ListLongMap!12375)

(assert (=> b!951541 (= lt!428691 (getCurrentListMapNoExtraKeys!3338 (_keys!10748 thiss!1141) (_values!5830 thiss!1141) (mask!27625 thiss!1141) (extraKeys!5539 thiss!1141) (zeroValue!5643 thiss!1141) (minValue!5643 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5807 thiss!1141)))))

(declare-fun lt!428682 () (_ BitVec 64))

(assert (=> b!951541 (= lt!428682 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428681 () (_ BitVec 64))

(assert (=> b!951541 (= lt!428681 (select (arr!27698 (_keys!10748 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428694 () Unit!32018)

(declare-fun addStillContains!588 (ListLongMap!12375 (_ BitVec 64) V!32673 (_ BitVec 64)) Unit!32018)

(assert (=> b!951541 (= lt!428694 (addStillContains!588 lt!428691 lt!428682 (zeroValue!5643 thiss!1141) lt!428681))))

(assert (=> b!951541 (contains!5247 (+!2832 lt!428691 (tuple2!13665 lt!428682 (zeroValue!5643 thiss!1141))) lt!428681)))

(declare-fun lt!428678 () Unit!32018)

(assert (=> b!951541 (= lt!428678 lt!428694)))

(declare-fun lt!428696 () ListLongMap!12375)

(assert (=> b!951541 (= lt!428696 (getCurrentListMapNoExtraKeys!3338 (_keys!10748 thiss!1141) (_values!5830 thiss!1141) (mask!27625 thiss!1141) (extraKeys!5539 thiss!1141) (zeroValue!5643 thiss!1141) (minValue!5643 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5807 thiss!1141)))))

(declare-fun lt!428695 () (_ BitVec 64))

(assert (=> b!951541 (= lt!428695 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428676 () (_ BitVec 64))

(assert (=> b!951541 (= lt!428676 (select (arr!27698 (_keys!10748 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428685 () Unit!32018)

(declare-fun addApplyDifferent!462 (ListLongMap!12375 (_ BitVec 64) V!32673 (_ BitVec 64)) Unit!32018)

(assert (=> b!951541 (= lt!428685 (addApplyDifferent!462 lt!428696 lt!428695 (minValue!5643 thiss!1141) lt!428676))))

(assert (=> b!951541 (= (apply!918 (+!2832 lt!428696 (tuple2!13665 lt!428695 (minValue!5643 thiss!1141))) lt!428676) (apply!918 lt!428696 lt!428676))))

(declare-fun lt!428687 () Unit!32018)

(assert (=> b!951541 (= lt!428687 lt!428685)))

(declare-fun lt!428689 () ListLongMap!12375)

(assert (=> b!951541 (= lt!428689 (getCurrentListMapNoExtraKeys!3338 (_keys!10748 thiss!1141) (_values!5830 thiss!1141) (mask!27625 thiss!1141) (extraKeys!5539 thiss!1141) (zeroValue!5643 thiss!1141) (minValue!5643 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5807 thiss!1141)))))

(declare-fun lt!428692 () (_ BitVec 64))

(assert (=> b!951541 (= lt!428692 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428693 () (_ BitVec 64))

(assert (=> b!951541 (= lt!428693 (select (arr!27698 (_keys!10748 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428690 () Unit!32018)

(assert (=> b!951541 (= lt!428690 (addApplyDifferent!462 lt!428689 lt!428692 (zeroValue!5643 thiss!1141) lt!428693))))

(assert (=> b!951541 (= (apply!918 (+!2832 lt!428689 (tuple2!13665 lt!428692 (zeroValue!5643 thiss!1141))) lt!428693) (apply!918 lt!428689 lt!428693))))

(declare-fun lt!428680 () Unit!32018)

(assert (=> b!951541 (= lt!428680 lt!428690)))

(declare-fun lt!428677 () ListLongMap!12375)

(assert (=> b!951541 (= lt!428677 (getCurrentListMapNoExtraKeys!3338 (_keys!10748 thiss!1141) (_values!5830 thiss!1141) (mask!27625 thiss!1141) (extraKeys!5539 thiss!1141) (zeroValue!5643 thiss!1141) (minValue!5643 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5807 thiss!1141)))))

(declare-fun lt!428679 () (_ BitVec 64))

(assert (=> b!951541 (= lt!428679 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428675 () (_ BitVec 64))

(assert (=> b!951541 (= lt!428675 (select (arr!27698 (_keys!10748 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!951541 (= lt!428688 (addApplyDifferent!462 lt!428677 lt!428679 (minValue!5643 thiss!1141) lt!428675))))

(assert (=> b!951541 (= (apply!918 (+!2832 lt!428677 (tuple2!13665 lt!428679 (minValue!5643 thiss!1141))) lt!428675) (apply!918 lt!428677 lt!428675))))

(declare-fun b!951542 () Bool)

(declare-fun res!637757 () Bool)

(assert (=> b!951542 (=> (not res!637757) (not e!535868))))

(assert (=> b!951542 (= res!637757 e!535875)))

(declare-fun res!637758 () Bool)

(assert (=> b!951542 (=> res!637758 e!535875)))

(assert (=> b!951542 (= res!637758 (not e!535872))))

(declare-fun res!637760 () Bool)

(assert (=> b!951542 (=> (not res!637760) (not e!535872))))

(assert (=> b!951542 (= res!637760 (bvslt #b00000000000000000000000000000000 (size!28177 (_keys!10748 thiss!1141))))))

(declare-fun bm!41508 () Bool)

(assert (=> bm!41508 (= call!41513 (contains!5247 lt!428684 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!951543 () Bool)

(declare-fun c!99403 () Bool)

(assert (=> b!951543 (= c!99403 (and (not (= (bvand (extraKeys!5539 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5539 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!535870 () ListLongMap!12375)

(assert (=> b!951543 (= e!535874 e!535870)))

(declare-fun bm!41509 () Bool)

(assert (=> bm!41509 (= call!41512 call!41509)))

(declare-fun b!951544 () Bool)

(assert (=> b!951544 (= e!535879 (not call!41510))))

(declare-fun b!951545 () Bool)

(assert (=> b!951545 (= e!535869 (not call!41513))))

(declare-fun bm!41510 () Bool)

(assert (=> bm!41510 (= call!41508 call!41512)))

(declare-fun b!951546 () Bool)

(assert (=> b!951546 (= e!535874 call!41511)))

(declare-fun b!951547 () Bool)

(assert (=> b!951547 (= e!535870 call!41508)))

(declare-fun b!951548 () Bool)

(assert (=> b!951548 (= e!535870 call!41511)))

(declare-fun b!951549 () Bool)

(assert (=> b!951549 (= e!535868 e!535869)))

(declare-fun c!99407 () Bool)

(assert (=> b!951549 (= c!99407 (not (= (bvand (extraKeys!5539 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!115295 () Bool)

(assert (=> d!115295 e!535868))

(declare-fun res!637763 () Bool)

(assert (=> d!115295 (=> (not res!637763) (not e!535868))))

(assert (=> d!115295 (= res!637763 (or (bvsge #b00000000000000000000000000000000 (size!28177 (_keys!10748 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28177 (_keys!10748 thiss!1141))))))))

(declare-fun lt!428686 () ListLongMap!12375)

(assert (=> d!115295 (= lt!428684 lt!428686)))

(declare-fun lt!428683 () Unit!32018)

(assert (=> d!115295 (= lt!428683 e!535873)))

(declare-fun c!99406 () Bool)

(declare-fun e!535877 () Bool)

(assert (=> d!115295 (= c!99406 e!535877)))

(declare-fun res!637759 () Bool)

(assert (=> d!115295 (=> (not res!637759) (not e!535877))))

(assert (=> d!115295 (= res!637759 (bvslt #b00000000000000000000000000000000 (size!28177 (_keys!10748 thiss!1141))))))

(assert (=> d!115295 (= lt!428686 e!535867)))

(assert (=> d!115295 (= c!99402 (and (not (= (bvand (extraKeys!5539 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5539 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!115295 (validMask!0 (mask!27625 thiss!1141))))

(assert (=> d!115295 (= (getCurrentListMap!3388 (_keys!10748 thiss!1141) (_values!5830 thiss!1141) (mask!27625 thiss!1141) (extraKeys!5539 thiss!1141) (zeroValue!5643 thiss!1141) (minValue!5643 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5807 thiss!1141)) lt!428684)))

(declare-fun bm!41507 () Bool)

(assert (=> bm!41507 (= call!41509 (getCurrentListMapNoExtraKeys!3338 (_keys!10748 thiss!1141) (_values!5830 thiss!1141) (mask!27625 thiss!1141) (extraKeys!5539 thiss!1141) (zeroValue!5643 thiss!1141) (minValue!5643 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5807 thiss!1141)))))

(declare-fun b!951550 () Bool)

(assert (=> b!951550 (= e!535871 (= (apply!918 lt!428684 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5643 thiss!1141)))))

(declare-fun b!951551 () Bool)

(declare-fun Unit!32023 () Unit!32018)

(assert (=> b!951551 (= e!535873 Unit!32023)))

(declare-fun bm!41511 () Bool)

(assert (=> bm!41511 (= call!41510 (contains!5247 lt!428684 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!951552 () Bool)

(assert (=> b!951552 (= e!535877 (validKeyInArray!0 (select (arr!27698 (_keys!10748 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!115295 c!99402) b!951540))

(assert (= (and d!115295 (not c!99402)) b!951534))

(assert (= (and b!951534 c!99404) b!951546))

(assert (= (and b!951534 (not c!99404)) b!951543))

(assert (= (and b!951543 c!99403) b!951548))

(assert (= (and b!951543 (not c!99403)) b!951547))

(assert (= (or b!951548 b!951547) bm!41510))

(assert (= (or b!951546 bm!41510) bm!41509))

(assert (= (or b!951546 b!951548) bm!41506))

(assert (= (or b!951540 bm!41509) bm!41507))

(assert (= (or b!951540 bm!41506) bm!41505))

(assert (= (and d!115295 res!637759) b!951552))

(assert (= (and d!115295 c!99406) b!951541))

(assert (= (and d!115295 (not c!99406)) b!951551))

(assert (= (and d!115295 res!637763) b!951542))

(assert (= (and b!951542 res!637760) b!951532))

(assert (= (and b!951542 (not res!637758)) b!951536))

(assert (= (and b!951536 res!637762) b!951537))

(assert (= (and b!951542 res!637757) b!951535))

(assert (= (and b!951535 c!99405) b!951533))

(assert (= (and b!951535 (not c!99405)) b!951544))

(assert (= (and b!951533 res!637764) b!951539))

(assert (= (or b!951533 b!951544) bm!41511))

(assert (= (and b!951535 res!637756) b!951549))

(assert (= (and b!951549 c!99407) b!951538))

(assert (= (and b!951549 (not c!99407)) b!951545))

(assert (= (and b!951538 res!637761) b!951550))

(assert (= (or b!951538 b!951545) bm!41508))

(declare-fun b_lambda!14425 () Bool)

(assert (=> (not b_lambda!14425) (not b!951537)))

(declare-fun t!27845 () Bool)

(declare-fun tb!6209 () Bool)

(assert (=> (and b!951421 (= (defaultEntry!5807 thiss!1141) (defaultEntry!5807 thiss!1141)) t!27845) tb!6209))

(declare-fun result!12333 () Bool)

(assert (=> tb!6209 (= result!12333 tp_is_empty!20781)))

(assert (=> b!951537 t!27845))

(declare-fun b_and!29765 () Bool)

(assert (= b_and!29761 (and (=> t!27845 result!12333) b_and!29765)))

(declare-fun m!883835 () Bool)

(assert (=> bm!41505 m!883835))

(declare-fun m!883837 () Bool)

(assert (=> bm!41507 m!883837))

(assert (=> b!951536 m!883803))

(assert (=> b!951536 m!883803))

(declare-fun m!883839 () Bool)

(assert (=> b!951536 m!883839))

(assert (=> b!951552 m!883803))

(assert (=> b!951552 m!883803))

(declare-fun m!883841 () Bool)

(assert (=> b!951552 m!883841))

(declare-fun m!883843 () Bool)

(assert (=> b!951540 m!883843))

(declare-fun m!883845 () Bool)

(assert (=> b!951550 m!883845))

(declare-fun m!883847 () Bool)

(assert (=> b!951539 m!883847))

(assert (=> b!951532 m!883803))

(assert (=> b!951532 m!883803))

(assert (=> b!951532 m!883841))

(declare-fun m!883849 () Bool)

(assert (=> b!951541 m!883849))

(assert (=> b!951541 m!883837))

(declare-fun m!883851 () Bool)

(assert (=> b!951541 m!883851))

(declare-fun m!883853 () Bool)

(assert (=> b!951541 m!883853))

(declare-fun m!883855 () Bool)

(assert (=> b!951541 m!883855))

(declare-fun m!883857 () Bool)

(assert (=> b!951541 m!883857))

(declare-fun m!883859 () Bool)

(assert (=> b!951541 m!883859))

(assert (=> b!951541 m!883803))

(declare-fun m!883861 () Bool)

(assert (=> b!951541 m!883861))

(declare-fun m!883863 () Bool)

(assert (=> b!951541 m!883863))

(declare-fun m!883865 () Bool)

(assert (=> b!951541 m!883865))

(assert (=> b!951541 m!883853))

(declare-fun m!883867 () Bool)

(assert (=> b!951541 m!883867))

(assert (=> b!951541 m!883863))

(declare-fun m!883869 () Bool)

(assert (=> b!951541 m!883869))

(declare-fun m!883871 () Bool)

(assert (=> b!951541 m!883871))

(declare-fun m!883873 () Bool)

(assert (=> b!951541 m!883873))

(declare-fun m!883875 () Bool)

(assert (=> b!951541 m!883875))

(assert (=> b!951541 m!883873))

(assert (=> b!951541 m!883869))

(declare-fun m!883877 () Bool)

(assert (=> b!951541 m!883877))

(declare-fun m!883879 () Bool)

(assert (=> b!951537 m!883879))

(assert (=> b!951537 m!883803))

(declare-fun m!883881 () Bool)

(assert (=> b!951537 m!883881))

(assert (=> b!951537 m!883803))

(declare-fun m!883883 () Bool)

(assert (=> b!951537 m!883883))

(assert (=> b!951537 m!883879))

(assert (=> b!951537 m!883883))

(declare-fun m!883885 () Bool)

(assert (=> b!951537 m!883885))

(assert (=> d!115295 m!883771))

(declare-fun m!883887 () Bool)

(assert (=> bm!41511 m!883887))

(declare-fun m!883889 () Bool)

(assert (=> bm!41508 m!883889))

(assert (=> b!951424 d!115295))

(declare-fun d!115297 () Bool)

(assert (=> d!115297 (= (array_inv!21442 (_keys!10748 thiss!1141)) (bvsge (size!28177 (_keys!10748 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!951421 d!115297))

(declare-fun d!115299 () Bool)

(assert (=> d!115299 (= (array_inv!21443 (_values!5830 thiss!1141)) (bvsge (size!28176 (_values!5830 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!951421 d!115299))

(declare-fun b!951567 () Bool)

(declare-fun e!535886 () SeekEntryResult!9141)

(assert (=> b!951567 (= e!535886 Undefined!9141)))

(declare-fun d!115301 () Bool)

(declare-fun lt!428705 () SeekEntryResult!9141)

(assert (=> d!115301 (and (or ((_ is MissingVacant!9141) lt!428705) (not ((_ is Found!9141) lt!428705)) (and (bvsge (index!38935 lt!428705) #b00000000000000000000000000000000) (bvslt (index!38935 lt!428705) (size!28177 (_keys!10748 thiss!1141))))) (not ((_ is MissingVacant!9141) lt!428705)) (or (not ((_ is Found!9141) lt!428705)) (= (select (arr!27698 (_keys!10748 thiss!1141)) (index!38935 lt!428705)) key!756)))))

(assert (=> d!115301 (= lt!428705 e!535886)))

(declare-fun c!99415 () Bool)

(declare-fun lt!428708 () SeekEntryResult!9141)

(assert (=> d!115301 (= c!99415 (and ((_ is Intermediate!9141) lt!428708) (undefined!9953 lt!428708)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57614 (_ BitVec 32)) SeekEntryResult!9141)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!115301 (= lt!428708 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27625 thiss!1141)) key!756 (_keys!10748 thiss!1141) (mask!27625 thiss!1141)))))

(assert (=> d!115301 (validMask!0 (mask!27625 thiss!1141))))

(assert (=> d!115301 (= (seekEntry!0 key!756 (_keys!10748 thiss!1141) (mask!27625 thiss!1141)) lt!428705)))

(declare-fun b!951568 () Bool)

(declare-fun c!99414 () Bool)

(declare-fun lt!428707 () (_ BitVec 64))

(assert (=> b!951568 (= c!99414 (= lt!428707 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!535888 () SeekEntryResult!9141)

(declare-fun e!535887 () SeekEntryResult!9141)

(assert (=> b!951568 (= e!535888 e!535887)))

(declare-fun b!951569 () Bool)

(assert (=> b!951569 (= e!535887 (MissingZero!9141 (index!38936 lt!428708)))))

(declare-fun b!951570 () Bool)

(declare-fun lt!428706 () SeekEntryResult!9141)

(assert (=> b!951570 (= e!535887 (ite ((_ is MissingVacant!9141) lt!428706) (MissingZero!9141 (index!38937 lt!428706)) lt!428706))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57614 (_ BitVec 32)) SeekEntryResult!9141)

(assert (=> b!951570 (= lt!428706 (seekKeyOrZeroReturnVacant!0 (x!81850 lt!428708) (index!38936 lt!428708) (index!38936 lt!428708) key!756 (_keys!10748 thiss!1141) (mask!27625 thiss!1141)))))

(declare-fun b!951571 () Bool)

(assert (=> b!951571 (= e!535886 e!535888)))

(assert (=> b!951571 (= lt!428707 (select (arr!27698 (_keys!10748 thiss!1141)) (index!38936 lt!428708)))))

(declare-fun c!99416 () Bool)

(assert (=> b!951571 (= c!99416 (= lt!428707 key!756))))

(declare-fun b!951572 () Bool)

(assert (=> b!951572 (= e!535888 (Found!9141 (index!38936 lt!428708)))))

(assert (= (and d!115301 c!99415) b!951567))

(assert (= (and d!115301 (not c!99415)) b!951571))

(assert (= (and b!951571 c!99416) b!951572))

(assert (= (and b!951571 (not c!99416)) b!951568))

(assert (= (and b!951568 c!99414) b!951569))

(assert (= (and b!951568 (not c!99414)) b!951570))

(declare-fun m!883891 () Bool)

(assert (=> d!115301 m!883891))

(declare-fun m!883893 () Bool)

(assert (=> d!115301 m!883893))

(assert (=> d!115301 m!883893))

(declare-fun m!883895 () Bool)

(assert (=> d!115301 m!883895))

(assert (=> d!115301 m!883771))

(declare-fun m!883897 () Bool)

(assert (=> b!951570 m!883897))

(declare-fun m!883899 () Bool)

(assert (=> b!951571 m!883899))

(assert (=> b!951422 d!115301))

(declare-fun d!115303 () Bool)

(declare-fun res!637771 () Bool)

(declare-fun e!535891 () Bool)

(assert (=> d!115303 (=> (not res!637771) (not e!535891))))

(declare-fun simpleValid!378 (LongMapFixedSize!4968) Bool)

(assert (=> d!115303 (= res!637771 (simpleValid!378 thiss!1141))))

(assert (=> d!115303 (= (valid!1861 thiss!1141) e!535891)))

(declare-fun b!951579 () Bool)

(declare-fun res!637772 () Bool)

(assert (=> b!951579 (=> (not res!637772) (not e!535891))))

(declare-fun arrayCountValidKeys!0 (array!57614 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!951579 (= res!637772 (= (arrayCountValidKeys!0 (_keys!10748 thiss!1141) #b00000000000000000000000000000000 (size!28177 (_keys!10748 thiss!1141))) (_size!2539 thiss!1141)))))

(declare-fun b!951580 () Bool)

(declare-fun res!637773 () Bool)

(assert (=> b!951580 (=> (not res!637773) (not e!535891))))

(assert (=> b!951580 (= res!637773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10748 thiss!1141) (mask!27625 thiss!1141)))))

(declare-fun b!951581 () Bool)

(declare-datatypes ((List!19487 0))(
  ( (Nil!19484) (Cons!19483 (h!20644 (_ BitVec 64)) (t!27846 List!19487)) )
))
(declare-fun arrayNoDuplicates!0 (array!57614 (_ BitVec 32) List!19487) Bool)

(assert (=> b!951581 (= e!535891 (arrayNoDuplicates!0 (_keys!10748 thiss!1141) #b00000000000000000000000000000000 Nil!19484))))

(assert (= (and d!115303 res!637771) b!951579))

(assert (= (and b!951579 res!637772) b!951580))

(assert (= (and b!951580 res!637773) b!951581))

(declare-fun m!883901 () Bool)

(assert (=> d!115303 m!883901))

(declare-fun m!883903 () Bool)

(assert (=> b!951579 m!883903))

(declare-fun m!883905 () Bool)

(assert (=> b!951580 m!883905))

(declare-fun m!883907 () Bool)

(assert (=> b!951581 m!883907))

(assert (=> start!81406 d!115303))

(declare-fun mapIsEmpty!33105 () Bool)

(declare-fun mapRes!33105 () Bool)

(assert (=> mapIsEmpty!33105 mapRes!33105))

(declare-fun b!951589 () Bool)

(declare-fun e!535897 () Bool)

(assert (=> b!951589 (= e!535897 tp_is_empty!20781)))

(declare-fun condMapEmpty!33105 () Bool)

(declare-fun mapDefault!33105 () ValueCell!9909)

(assert (=> mapNonEmpty!33099 (= condMapEmpty!33105 (= mapRest!33099 ((as const (Array (_ BitVec 32) ValueCell!9909)) mapDefault!33105)))))

(assert (=> mapNonEmpty!33099 (= tp!63431 (and e!535897 mapRes!33105))))

(declare-fun b!951588 () Bool)

(declare-fun e!535896 () Bool)

(assert (=> b!951588 (= e!535896 tp_is_empty!20781)))

(declare-fun mapNonEmpty!33105 () Bool)

(declare-fun tp!63441 () Bool)

(assert (=> mapNonEmpty!33105 (= mapRes!33105 (and tp!63441 e!535896))))

(declare-fun mapRest!33105 () (Array (_ BitVec 32) ValueCell!9909))

(declare-fun mapValue!33105 () ValueCell!9909)

(declare-fun mapKey!33105 () (_ BitVec 32))

(assert (=> mapNonEmpty!33105 (= mapRest!33099 (store mapRest!33105 mapKey!33105 mapValue!33105))))

(assert (= (and mapNonEmpty!33099 condMapEmpty!33105) mapIsEmpty!33105))

(assert (= (and mapNonEmpty!33099 (not condMapEmpty!33105)) mapNonEmpty!33105))

(assert (= (and mapNonEmpty!33105 ((_ is ValueCellFull!9909) mapValue!33105)) b!951588))

(assert (= (and mapNonEmpty!33099 ((_ is ValueCellFull!9909) mapDefault!33105)) b!951589))

(declare-fun m!883909 () Bool)

(assert (=> mapNonEmpty!33105 m!883909))

(declare-fun b_lambda!14427 () Bool)

(assert (= b_lambda!14425 (or (and b!951421 b_free!18273) b_lambda!14427)))

(check-sat (not b!951570) (not b!951552) (not b!951480) (not b!951478) (not d!115295) (not b!951536) (not bm!41505) (not d!115301) b_and!29765 (not mapNonEmpty!33105) (not d!115283) (not b!951541) (not b!951581) (not d!115303) (not bm!41490) (not b!951489) (not b_lambda!14427) (not b!951539) (not b!951456) (not b_next!18273) (not d!115293) (not b!951550) (not d!115285) (not b!951579) (not b!951537) (not bm!41507) (not bm!41508) (not bm!41511) (not b!951580) tp_is_empty!20781 (not b!951468) (not b!951540) (not b!951461) (not b!951532) (not b!951487))
(check-sat b_and!29765 (not b_next!18273))
