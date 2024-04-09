; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76324 () Bool)

(assert start!76324)

(declare-fun b!895344 () Bool)

(declare-fun b_free!15909 () Bool)

(declare-fun b_next!15909 () Bool)

(assert (=> b!895344 (= b_free!15909 (not b_next!15909))))

(declare-fun tp!55738 () Bool)

(declare-fun b_and!26219 () Bool)

(assert (=> b!895344 (= tp!55738 b_and!26219)))

(declare-fun b!895341 () Bool)

(declare-fun e!500296 () Bool)

(declare-fun e!500298 () Bool)

(declare-fun mapRes!28951 () Bool)

(assert (=> b!895341 (= e!500296 (and e!500298 mapRes!28951))))

(declare-fun condMapEmpty!28951 () Bool)

(declare-datatypes ((array!52462 0))(
  ( (array!52463 (arr!25222 (Array (_ BitVec 32) (_ BitVec 64))) (size!25673 (_ BitVec 32))) )
))
(declare-datatypes ((V!29281 0))(
  ( (V!29282 (val!9169 Int)) )
))
(declare-datatypes ((ValueCell!8637 0))(
  ( (ValueCellFull!8637 (v!11656 V!29281)) (EmptyCell!8637) )
))
(declare-datatypes ((array!52464 0))(
  ( (array!52465 (arr!25223 (Array (_ BitVec 32) ValueCell!8637)) (size!25674 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4290 0))(
  ( (LongMapFixedSize!4291 (defaultEntry!5357 Int) (mask!25949 (_ BitVec 32)) (extraKeys!5053 (_ BitVec 32)) (zeroValue!5157 V!29281) (minValue!5157 V!29281) (_size!2200 (_ BitVec 32)) (_keys!10068 array!52462) (_values!5344 array!52464) (_vacant!2200 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4290)

(declare-fun mapDefault!28951 () ValueCell!8637)

(assert (=> b!895341 (= condMapEmpty!28951 (= (arr!25223 (_values!5344 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8637)) mapDefault!28951)))))

(declare-fun mapNonEmpty!28951 () Bool)

(declare-fun tp!55737 () Bool)

(declare-fun e!500295 () Bool)

(assert (=> mapNonEmpty!28951 (= mapRes!28951 (and tp!55737 e!500295))))

(declare-fun mapValue!28951 () ValueCell!8637)

(declare-fun mapKey!28951 () (_ BitVec 32))

(declare-fun mapRest!28951 () (Array (_ BitVec 32) ValueCell!8637))

(assert (=> mapNonEmpty!28951 (= (arr!25223 (_values!5344 thiss!1181)) (store mapRest!28951 mapKey!28951 mapValue!28951))))

(declare-fun b!895342 () Bool)

(declare-fun res!605748 () Bool)

(declare-fun e!500293 () Bool)

(assert (=> b!895342 (=> (not res!605748) (not e!500293))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!895342 (= res!605748 (not (= key!785 (bvneg key!785))))))

(declare-fun b!895343 () Bool)

(declare-fun tp_is_empty!18237 () Bool)

(assert (=> b!895343 (= e!500298 tp_is_empty!18237)))

(declare-fun e!500299 () Bool)

(declare-fun array_inv!19782 (array!52462) Bool)

(declare-fun array_inv!19783 (array!52464) Bool)

(assert (=> b!895344 (= e!500299 (and tp!55738 tp_is_empty!18237 (array_inv!19782 (_keys!10068 thiss!1181)) (array_inv!19783 (_values!5344 thiss!1181)) e!500296))))

(declare-fun mapIsEmpty!28951 () Bool)

(assert (=> mapIsEmpty!28951 mapRes!28951))

(declare-fun res!605747 () Bool)

(assert (=> start!76324 (=> (not res!605747) (not e!500293))))

(declare-fun valid!1646 (LongMapFixedSize!4290) Bool)

(assert (=> start!76324 (= res!605747 (valid!1646 thiss!1181))))

(assert (=> start!76324 e!500293))

(assert (=> start!76324 e!500299))

(assert (=> start!76324 true))

(declare-fun b!895345 () Bool)

(declare-fun e!500294 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52462 (_ BitVec 32)) Bool)

(assert (=> b!895345 (= e!500294 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10068 thiss!1181) (mask!25949 thiss!1181))))))

(declare-fun b!895346 () Bool)

(assert (=> b!895346 (= e!500295 tp_is_empty!18237)))

(declare-fun b!895347 () Bool)

(declare-fun res!605746 () Bool)

(assert (=> b!895347 (=> (not res!605746) (not e!500294))))

(assert (=> b!895347 (= res!605746 (and (= (size!25674 (_values!5344 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25949 thiss!1181))) (= (size!25673 (_keys!10068 thiss!1181)) (size!25674 (_values!5344 thiss!1181))) (bvsge (mask!25949 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!5053 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5053 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!895348 () Bool)

(assert (=> b!895348 (= e!500293 e!500294)))

(declare-fun res!605745 () Bool)

(assert (=> b!895348 (=> (not res!605745) (not e!500294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!895348 (= res!605745 (validMask!0 (mask!25949 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8873 0))(
  ( (MissingZero!8873 (index!37862 (_ BitVec 32))) (Found!8873 (index!37863 (_ BitVec 32))) (Intermediate!8873 (undefined!9685 Bool) (index!37864 (_ BitVec 32)) (x!76178 (_ BitVec 32))) (Undefined!8873) (MissingVacant!8873 (index!37865 (_ BitVec 32))) )
))
(declare-fun lt!404481 () SeekEntryResult!8873)

(declare-fun seekEntry!0 ((_ BitVec 64) array!52462 (_ BitVec 32)) SeekEntryResult!8873)

(assert (=> b!895348 (= lt!404481 (seekEntry!0 key!785 (_keys!10068 thiss!1181) (mask!25949 thiss!1181)))))

(assert (= (and start!76324 res!605747) b!895342))

(assert (= (and b!895342 res!605748) b!895348))

(assert (= (and b!895348 res!605745) b!895347))

(assert (= (and b!895347 res!605746) b!895345))

(assert (= (and b!895341 condMapEmpty!28951) mapIsEmpty!28951))

(assert (= (and b!895341 (not condMapEmpty!28951)) mapNonEmpty!28951))

(get-info :version)

(assert (= (and mapNonEmpty!28951 ((_ is ValueCellFull!8637) mapValue!28951)) b!895346))

(assert (= (and b!895341 ((_ is ValueCellFull!8637) mapDefault!28951)) b!895343))

(assert (= b!895344 b!895341))

(assert (= start!76324 b!895344))

(declare-fun m!832999 () Bool)

(assert (=> b!895344 m!832999))

(declare-fun m!833001 () Bool)

(assert (=> b!895344 m!833001))

(declare-fun m!833003 () Bool)

(assert (=> start!76324 m!833003))

(declare-fun m!833005 () Bool)

(assert (=> mapNonEmpty!28951 m!833005))

(declare-fun m!833007 () Bool)

(assert (=> b!895348 m!833007))

(declare-fun m!833009 () Bool)

(assert (=> b!895348 m!833009))

(declare-fun m!833011 () Bool)

(assert (=> b!895345 m!833011))

(check-sat tp_is_empty!18237 (not b_next!15909) b_and!26219 (not start!76324) (not b!895348) (not b!895345) (not mapNonEmpty!28951) (not b!895344))
(check-sat b_and!26219 (not b_next!15909))
(get-model)

(declare-fun d!110705 () Bool)

(declare-fun res!605767 () Bool)

(declare-fun e!500323 () Bool)

(assert (=> d!110705 (=> (not res!605767) (not e!500323))))

(declare-fun simpleValid!305 (LongMapFixedSize!4290) Bool)

(assert (=> d!110705 (= res!605767 (simpleValid!305 thiss!1181))))

(assert (=> d!110705 (= (valid!1646 thiss!1181) e!500323)))

(declare-fun b!895379 () Bool)

(declare-fun res!605768 () Bool)

(assert (=> b!895379 (=> (not res!605768) (not e!500323))))

(declare-fun arrayCountValidKeys!0 (array!52462 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!895379 (= res!605768 (= (arrayCountValidKeys!0 (_keys!10068 thiss!1181) #b00000000000000000000000000000000 (size!25673 (_keys!10068 thiss!1181))) (_size!2200 thiss!1181)))))

(declare-fun b!895380 () Bool)

(declare-fun res!605769 () Bool)

(assert (=> b!895380 (=> (not res!605769) (not e!500323))))

(assert (=> b!895380 (= res!605769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10068 thiss!1181) (mask!25949 thiss!1181)))))

(declare-fun b!895381 () Bool)

(declare-datatypes ((List!17893 0))(
  ( (Nil!17890) (Cons!17889 (h!19026 (_ BitVec 64)) (t!25240 List!17893)) )
))
(declare-fun arrayNoDuplicates!0 (array!52462 (_ BitVec 32) List!17893) Bool)

(assert (=> b!895381 (= e!500323 (arrayNoDuplicates!0 (_keys!10068 thiss!1181) #b00000000000000000000000000000000 Nil!17890))))

(assert (= (and d!110705 res!605767) b!895379))

(assert (= (and b!895379 res!605768) b!895380))

(assert (= (and b!895380 res!605769) b!895381))

(declare-fun m!833027 () Bool)

(assert (=> d!110705 m!833027))

(declare-fun m!833029 () Bool)

(assert (=> b!895379 m!833029))

(assert (=> b!895380 m!833011))

(declare-fun m!833031 () Bool)

(assert (=> b!895381 m!833031))

(assert (=> start!76324 d!110705))

(declare-fun b!895390 () Bool)

(declare-fun e!500331 () Bool)

(declare-fun e!500332 () Bool)

(assert (=> b!895390 (= e!500331 e!500332)))

(declare-fun lt!404493 () (_ BitVec 64))

(assert (=> b!895390 (= lt!404493 (select (arr!25222 (_keys!10068 thiss!1181)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30433 0))(
  ( (Unit!30434) )
))
(declare-fun lt!404492 () Unit!30433)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52462 (_ BitVec 64) (_ BitVec 32)) Unit!30433)

(assert (=> b!895390 (= lt!404492 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10068 thiss!1181) lt!404493 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!52462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!895390 (arrayContainsKey!0 (_keys!10068 thiss!1181) lt!404493 #b00000000000000000000000000000000)))

(declare-fun lt!404491 () Unit!30433)

(assert (=> b!895390 (= lt!404491 lt!404492)))

(declare-fun res!605774 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52462 (_ BitVec 32)) SeekEntryResult!8873)

(assert (=> b!895390 (= res!605774 (= (seekEntryOrOpen!0 (select (arr!25222 (_keys!10068 thiss!1181)) #b00000000000000000000000000000000) (_keys!10068 thiss!1181) (mask!25949 thiss!1181)) (Found!8873 #b00000000000000000000000000000000)))))

(assert (=> b!895390 (=> (not res!605774) (not e!500332))))

(declare-fun b!895391 () Bool)

(declare-fun call!39757 () Bool)

(assert (=> b!895391 (= e!500331 call!39757)))

(declare-fun bm!39754 () Bool)

(assert (=> bm!39754 (= call!39757 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10068 thiss!1181) (mask!25949 thiss!1181)))))

(declare-fun b!895393 () Bool)

(declare-fun e!500330 () Bool)

(assert (=> b!895393 (= e!500330 e!500331)))

(declare-fun c!94495 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!895393 (= c!94495 (validKeyInArray!0 (select (arr!25222 (_keys!10068 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!110707 () Bool)

(declare-fun res!605775 () Bool)

(assert (=> d!110707 (=> res!605775 e!500330)))

(assert (=> d!110707 (= res!605775 (bvsge #b00000000000000000000000000000000 (size!25673 (_keys!10068 thiss!1181))))))

(assert (=> d!110707 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10068 thiss!1181) (mask!25949 thiss!1181)) e!500330)))

(declare-fun b!895392 () Bool)

(assert (=> b!895392 (= e!500332 call!39757)))

(assert (= (and d!110707 (not res!605775)) b!895393))

(assert (= (and b!895393 c!94495) b!895390))

(assert (= (and b!895393 (not c!94495)) b!895391))

(assert (= (and b!895390 res!605774) b!895392))

(assert (= (or b!895392 b!895391) bm!39754))

(declare-fun m!833033 () Bool)

(assert (=> b!895390 m!833033))

(declare-fun m!833035 () Bool)

(assert (=> b!895390 m!833035))

(declare-fun m!833037 () Bool)

(assert (=> b!895390 m!833037))

(assert (=> b!895390 m!833033))

(declare-fun m!833039 () Bool)

(assert (=> b!895390 m!833039))

(declare-fun m!833041 () Bool)

(assert (=> bm!39754 m!833041))

(assert (=> b!895393 m!833033))

(assert (=> b!895393 m!833033))

(declare-fun m!833043 () Bool)

(assert (=> b!895393 m!833043))

(assert (=> b!895345 d!110707))

(declare-fun d!110709 () Bool)

(assert (=> d!110709 (= (validMask!0 (mask!25949 thiss!1181)) (and (or (= (mask!25949 thiss!1181) #b00000000000000000000000000000111) (= (mask!25949 thiss!1181) #b00000000000000000000000000001111) (= (mask!25949 thiss!1181) #b00000000000000000000000000011111) (= (mask!25949 thiss!1181) #b00000000000000000000000000111111) (= (mask!25949 thiss!1181) #b00000000000000000000000001111111) (= (mask!25949 thiss!1181) #b00000000000000000000000011111111) (= (mask!25949 thiss!1181) #b00000000000000000000000111111111) (= (mask!25949 thiss!1181) #b00000000000000000000001111111111) (= (mask!25949 thiss!1181) #b00000000000000000000011111111111) (= (mask!25949 thiss!1181) #b00000000000000000000111111111111) (= (mask!25949 thiss!1181) #b00000000000000000001111111111111) (= (mask!25949 thiss!1181) #b00000000000000000011111111111111) (= (mask!25949 thiss!1181) #b00000000000000000111111111111111) (= (mask!25949 thiss!1181) #b00000000000000001111111111111111) (= (mask!25949 thiss!1181) #b00000000000000011111111111111111) (= (mask!25949 thiss!1181) #b00000000000000111111111111111111) (= (mask!25949 thiss!1181) #b00000000000001111111111111111111) (= (mask!25949 thiss!1181) #b00000000000011111111111111111111) (= (mask!25949 thiss!1181) #b00000000000111111111111111111111) (= (mask!25949 thiss!1181) #b00000000001111111111111111111111) (= (mask!25949 thiss!1181) #b00000000011111111111111111111111) (= (mask!25949 thiss!1181) #b00000000111111111111111111111111) (= (mask!25949 thiss!1181) #b00000001111111111111111111111111) (= (mask!25949 thiss!1181) #b00000011111111111111111111111111) (= (mask!25949 thiss!1181) #b00000111111111111111111111111111) (= (mask!25949 thiss!1181) #b00001111111111111111111111111111) (= (mask!25949 thiss!1181) #b00011111111111111111111111111111) (= (mask!25949 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!25949 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!895348 d!110709))

(declare-fun b!895406 () Bool)

(declare-fun c!94504 () Bool)

(declare-fun lt!404502 () (_ BitVec 64))

(assert (=> b!895406 (= c!94504 (= lt!404502 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!500341 () SeekEntryResult!8873)

(declare-fun e!500339 () SeekEntryResult!8873)

(assert (=> b!895406 (= e!500341 e!500339)))

(declare-fun d!110711 () Bool)

(declare-fun lt!404503 () SeekEntryResult!8873)

(assert (=> d!110711 (and (or ((_ is MissingVacant!8873) lt!404503) (not ((_ is Found!8873) lt!404503)) (and (bvsge (index!37863 lt!404503) #b00000000000000000000000000000000) (bvslt (index!37863 lt!404503) (size!25673 (_keys!10068 thiss!1181))))) (not ((_ is MissingVacant!8873) lt!404503)) (or (not ((_ is Found!8873) lt!404503)) (= (select (arr!25222 (_keys!10068 thiss!1181)) (index!37863 lt!404503)) key!785)))))

(declare-fun e!500340 () SeekEntryResult!8873)

(assert (=> d!110711 (= lt!404503 e!500340)))

(declare-fun c!94503 () Bool)

(declare-fun lt!404505 () SeekEntryResult!8873)

(assert (=> d!110711 (= c!94503 (and ((_ is Intermediate!8873) lt!404505) (undefined!9685 lt!404505)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52462 (_ BitVec 32)) SeekEntryResult!8873)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110711 (= lt!404505 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25949 thiss!1181)) key!785 (_keys!10068 thiss!1181) (mask!25949 thiss!1181)))))

(assert (=> d!110711 (validMask!0 (mask!25949 thiss!1181))))

(assert (=> d!110711 (= (seekEntry!0 key!785 (_keys!10068 thiss!1181) (mask!25949 thiss!1181)) lt!404503)))

(declare-fun b!895407 () Bool)

(assert (=> b!895407 (= e!500340 e!500341)))

(assert (=> b!895407 (= lt!404502 (select (arr!25222 (_keys!10068 thiss!1181)) (index!37864 lt!404505)))))

(declare-fun c!94502 () Bool)

(assert (=> b!895407 (= c!94502 (= lt!404502 key!785))))

(declare-fun b!895408 () Bool)

(assert (=> b!895408 (= e!500341 (Found!8873 (index!37864 lt!404505)))))

(declare-fun b!895409 () Bool)

(declare-fun lt!404504 () SeekEntryResult!8873)

(assert (=> b!895409 (= e!500339 (ite ((_ is MissingVacant!8873) lt!404504) (MissingZero!8873 (index!37865 lt!404504)) lt!404504))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52462 (_ BitVec 32)) SeekEntryResult!8873)

(assert (=> b!895409 (= lt!404504 (seekKeyOrZeroReturnVacant!0 (x!76178 lt!404505) (index!37864 lt!404505) (index!37864 lt!404505) key!785 (_keys!10068 thiss!1181) (mask!25949 thiss!1181)))))

(declare-fun b!895410 () Bool)

(assert (=> b!895410 (= e!500339 (MissingZero!8873 (index!37864 lt!404505)))))

(declare-fun b!895411 () Bool)

(assert (=> b!895411 (= e!500340 Undefined!8873)))

(assert (= (and d!110711 c!94503) b!895411))

(assert (= (and d!110711 (not c!94503)) b!895407))

(assert (= (and b!895407 c!94502) b!895408))

(assert (= (and b!895407 (not c!94502)) b!895406))

(assert (= (and b!895406 c!94504) b!895410))

(assert (= (and b!895406 (not c!94504)) b!895409))

(declare-fun m!833045 () Bool)

(assert (=> d!110711 m!833045))

(declare-fun m!833047 () Bool)

(assert (=> d!110711 m!833047))

(assert (=> d!110711 m!833047))

(declare-fun m!833049 () Bool)

(assert (=> d!110711 m!833049))

(assert (=> d!110711 m!833007))

(declare-fun m!833051 () Bool)

(assert (=> b!895407 m!833051))

(declare-fun m!833053 () Bool)

(assert (=> b!895409 m!833053))

(assert (=> b!895348 d!110711))

(declare-fun d!110713 () Bool)

(assert (=> d!110713 (= (array_inv!19782 (_keys!10068 thiss!1181)) (bvsge (size!25673 (_keys!10068 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!895344 d!110713))

(declare-fun d!110715 () Bool)

(assert (=> d!110715 (= (array_inv!19783 (_values!5344 thiss!1181)) (bvsge (size!25674 (_values!5344 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!895344 d!110715))

(declare-fun b!895418 () Bool)

(declare-fun e!500347 () Bool)

(assert (=> b!895418 (= e!500347 tp_is_empty!18237)))

(declare-fun b!895419 () Bool)

(declare-fun e!500346 () Bool)

(assert (=> b!895419 (= e!500346 tp_is_empty!18237)))

(declare-fun condMapEmpty!28957 () Bool)

(declare-fun mapDefault!28957 () ValueCell!8637)

(assert (=> mapNonEmpty!28951 (= condMapEmpty!28957 (= mapRest!28951 ((as const (Array (_ BitVec 32) ValueCell!8637)) mapDefault!28957)))))

(declare-fun mapRes!28957 () Bool)

(assert (=> mapNonEmpty!28951 (= tp!55737 (and e!500346 mapRes!28957))))

(declare-fun mapNonEmpty!28957 () Bool)

(declare-fun tp!55747 () Bool)

(assert (=> mapNonEmpty!28957 (= mapRes!28957 (and tp!55747 e!500347))))

(declare-fun mapRest!28957 () (Array (_ BitVec 32) ValueCell!8637))

(declare-fun mapKey!28957 () (_ BitVec 32))

(declare-fun mapValue!28957 () ValueCell!8637)

(assert (=> mapNonEmpty!28957 (= mapRest!28951 (store mapRest!28957 mapKey!28957 mapValue!28957))))

(declare-fun mapIsEmpty!28957 () Bool)

(assert (=> mapIsEmpty!28957 mapRes!28957))

(assert (= (and mapNonEmpty!28951 condMapEmpty!28957) mapIsEmpty!28957))

(assert (= (and mapNonEmpty!28951 (not condMapEmpty!28957)) mapNonEmpty!28957))

(assert (= (and mapNonEmpty!28957 ((_ is ValueCellFull!8637) mapValue!28957)) b!895418))

(assert (= (and mapNonEmpty!28951 ((_ is ValueCellFull!8637) mapDefault!28957)) b!895419))

(declare-fun m!833055 () Bool)

(assert (=> mapNonEmpty!28957 m!833055))

(check-sat tp_is_empty!18237 (not b!895381) (not b_next!15909) (not d!110705) b_and!26219 (not mapNonEmpty!28957) (not b!895409) (not b!895379) (not bm!39754) (not b!895390) (not b!895380) (not d!110711) (not b!895393))
(check-sat b_and!26219 (not b_next!15909))
