; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76342 () Bool)

(assert start!76342)

(declare-fun b!895465 () Bool)

(declare-fun b_free!15915 () Bool)

(declare-fun b_next!15915 () Bool)

(assert (=> b!895465 (= b_free!15915 (not b_next!15915))))

(declare-fun tp!55758 () Bool)

(declare-fun b_and!26225 () Bool)

(assert (=> b!895465 (= tp!55758 b_and!26225)))

(declare-fun mapNonEmpty!28963 () Bool)

(declare-fun mapRes!28963 () Bool)

(declare-fun tp!55759 () Bool)

(declare-fun e!500389 () Bool)

(assert (=> mapNonEmpty!28963 (= mapRes!28963 (and tp!55759 e!500389))))

(declare-fun mapKey!28963 () (_ BitVec 32))

(declare-datatypes ((V!29289 0))(
  ( (V!29290 (val!9172 Int)) )
))
(declare-datatypes ((ValueCell!8640 0))(
  ( (ValueCellFull!8640 (v!11659 V!29289)) (EmptyCell!8640) )
))
(declare-fun mapRest!28963 () (Array (_ BitVec 32) ValueCell!8640))

(declare-datatypes ((array!52476 0))(
  ( (array!52477 (arr!25228 (Array (_ BitVec 32) (_ BitVec 64))) (size!25679 (_ BitVec 32))) )
))
(declare-datatypes ((array!52478 0))(
  ( (array!52479 (arr!25229 (Array (_ BitVec 32) ValueCell!8640)) (size!25680 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4296 0))(
  ( (LongMapFixedSize!4297 (defaultEntry!5360 Int) (mask!25957 (_ BitVec 32)) (extraKeys!5056 (_ BitVec 32)) (zeroValue!5160 V!29289) (minValue!5160 V!29289) (_size!2203 (_ BitVec 32)) (_keys!10073 array!52476) (_values!5347 array!52478) (_vacant!2203 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4296)

(declare-fun mapValue!28963 () ValueCell!8640)

(assert (=> mapNonEmpty!28963 (= (arr!25229 (_values!5347 thiss!1181)) (store mapRest!28963 mapKey!28963 mapValue!28963))))

(declare-fun e!500383 () Bool)

(declare-fun tp_is_empty!18243 () Bool)

(declare-fun e!500384 () Bool)

(declare-fun array_inv!19784 (array!52476) Bool)

(declare-fun array_inv!19785 (array!52478) Bool)

(assert (=> b!895465 (= e!500383 (and tp!55758 tp_is_empty!18243 (array_inv!19784 (_keys!10073 thiss!1181)) (array_inv!19785 (_values!5347 thiss!1181)) e!500384))))

(declare-fun b!895466 () Bool)

(declare-fun res!605803 () Bool)

(declare-fun e!500386 () Bool)

(assert (=> b!895466 (=> (not res!605803) (not e!500386))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!895466 (= res!605803 (not (= key!785 (bvneg key!785))))))

(declare-fun b!895467 () Bool)

(declare-fun res!605802 () Bool)

(declare-fun e!500385 () Bool)

(assert (=> b!895467 (=> (not res!605802) (not e!500385))))

(assert (=> b!895467 (= res!605802 (and (= (size!25680 (_values!5347 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25957 thiss!1181))) (= (size!25679 (_keys!10073 thiss!1181)) (size!25680 (_values!5347 thiss!1181))) (bvsge (mask!25957 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!5056 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5056 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!895468 () Bool)

(declare-fun e!500388 () Bool)

(assert (=> b!895468 (= e!500384 (and e!500388 mapRes!28963))))

(declare-fun condMapEmpty!28963 () Bool)

(declare-fun mapDefault!28963 () ValueCell!8640)

(assert (=> b!895468 (= condMapEmpty!28963 (= (arr!25229 (_values!5347 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8640)) mapDefault!28963)))))

(declare-fun mapIsEmpty!28963 () Bool)

(assert (=> mapIsEmpty!28963 mapRes!28963))

(declare-fun res!605801 () Bool)

(assert (=> start!76342 (=> (not res!605801) (not e!500386))))

(declare-fun valid!1648 (LongMapFixedSize!4296) Bool)

(assert (=> start!76342 (= res!605801 (valid!1648 thiss!1181))))

(assert (=> start!76342 e!500386))

(assert (=> start!76342 e!500383))

(assert (=> start!76342 true))

(declare-fun b!895469 () Bool)

(assert (=> b!895469 (= e!500389 tp_is_empty!18243)))

(declare-fun b!895470 () Bool)

(assert (=> b!895470 (= e!500386 e!500385)))

(declare-fun res!605804 () Bool)

(assert (=> b!895470 (=> (not res!605804) (not e!500385))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!895470 (= res!605804 (validMask!0 (mask!25957 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8874 0))(
  ( (MissingZero!8874 (index!37866 (_ BitVec 32))) (Found!8874 (index!37867 (_ BitVec 32))) (Intermediate!8874 (undefined!9686 Bool) (index!37868 (_ BitVec 32)) (x!76195 (_ BitVec 32))) (Undefined!8874) (MissingVacant!8874 (index!37869 (_ BitVec 32))) )
))
(declare-fun lt!404511 () SeekEntryResult!8874)

(declare-fun seekEntry!0 ((_ BitVec 64) array!52476 (_ BitVec 32)) SeekEntryResult!8874)

(assert (=> b!895470 (= lt!404511 (seekEntry!0 key!785 (_keys!10073 thiss!1181) (mask!25957 thiss!1181)))))

(declare-fun b!895471 () Bool)

(declare-datatypes ((List!17894 0))(
  ( (Nil!17891) (Cons!17890 (h!19027 (_ BitVec 64)) (t!25241 List!17894)) )
))
(declare-fun arrayNoDuplicates!0 (array!52476 (_ BitVec 32) List!17894) Bool)

(assert (=> b!895471 (= e!500385 (not (arrayNoDuplicates!0 (_keys!10073 thiss!1181) #b00000000000000000000000000000000 Nil!17891)))))

(declare-fun b!895472 () Bool)

(declare-fun res!605805 () Bool)

(assert (=> b!895472 (=> (not res!605805) (not e!500385))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52476 (_ BitVec 32)) Bool)

(assert (=> b!895472 (= res!605805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10073 thiss!1181) (mask!25957 thiss!1181)))))

(declare-fun b!895473 () Bool)

(assert (=> b!895473 (= e!500388 tp_is_empty!18243)))

(assert (= (and start!76342 res!605801) b!895466))

(assert (= (and b!895466 res!605803) b!895470))

(assert (= (and b!895470 res!605804) b!895467))

(assert (= (and b!895467 res!605802) b!895472))

(assert (= (and b!895472 res!605805) b!895471))

(assert (= (and b!895468 condMapEmpty!28963) mapIsEmpty!28963))

(assert (= (and b!895468 (not condMapEmpty!28963)) mapNonEmpty!28963))

(get-info :version)

(assert (= (and mapNonEmpty!28963 ((_ is ValueCellFull!8640) mapValue!28963)) b!895469))

(assert (= (and b!895468 ((_ is ValueCellFull!8640) mapDefault!28963)) b!895473))

(assert (= b!895465 b!895468))

(assert (= start!76342 b!895465))

(declare-fun m!833073 () Bool)

(assert (=> start!76342 m!833073))

(declare-fun m!833075 () Bool)

(assert (=> b!895471 m!833075))

(declare-fun m!833077 () Bool)

(assert (=> b!895470 m!833077))

(declare-fun m!833079 () Bool)

(assert (=> b!895470 m!833079))

(declare-fun m!833081 () Bool)

(assert (=> b!895472 m!833081))

(declare-fun m!833083 () Bool)

(assert (=> b!895465 m!833083))

(declare-fun m!833085 () Bool)

(assert (=> b!895465 m!833085))

(declare-fun m!833087 () Bool)

(assert (=> mapNonEmpty!28963 m!833087))

(check-sat (not start!76342) (not b!895465) (not b!895472) tp_is_empty!18243 b_and!26225 (not b!895470) (not b_next!15915) (not b!895471) (not mapNonEmpty!28963))
(check-sat b_and!26225 (not b_next!15915))
(get-model)

(declare-fun d!110719 () Bool)

(assert (=> d!110719 (= (array_inv!19784 (_keys!10073 thiss!1181)) (bvsge (size!25679 (_keys!10073 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!895465 d!110719))

(declare-fun d!110721 () Bool)

(assert (=> d!110721 (= (array_inv!19785 (_values!5347 thiss!1181)) (bvsge (size!25680 (_values!5347 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!895465 d!110721))

(declare-fun b!895511 () Bool)

(declare-fun e!500420 () Bool)

(declare-fun e!500419 () Bool)

(assert (=> b!895511 (= e!500420 e!500419)))

(declare-fun res!605827 () Bool)

(assert (=> b!895511 (=> (not res!605827) (not e!500419))))

(declare-fun e!500422 () Bool)

(assert (=> b!895511 (= res!605827 (not e!500422))))

(declare-fun res!605828 () Bool)

(assert (=> b!895511 (=> (not res!605828) (not e!500422))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!895511 (= res!605828 (validKeyInArray!0 (select (arr!25228 (_keys!10073 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!895512 () Bool)

(declare-fun e!500421 () Bool)

(declare-fun call!39760 () Bool)

(assert (=> b!895512 (= e!500421 call!39760)))

(declare-fun b!895513 () Bool)

(declare-fun contains!4386 (List!17894 (_ BitVec 64)) Bool)

(assert (=> b!895513 (= e!500422 (contains!4386 Nil!17891 (select (arr!25228 (_keys!10073 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!895515 () Bool)

(assert (=> b!895515 (= e!500421 call!39760)))

(declare-fun bm!39757 () Bool)

(declare-fun c!94507 () Bool)

(assert (=> bm!39757 (= call!39760 (arrayNoDuplicates!0 (_keys!10073 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!94507 (Cons!17890 (select (arr!25228 (_keys!10073 thiss!1181)) #b00000000000000000000000000000000) Nil!17891) Nil!17891)))))

(declare-fun d!110723 () Bool)

(declare-fun res!605829 () Bool)

(assert (=> d!110723 (=> res!605829 e!500420)))

(assert (=> d!110723 (= res!605829 (bvsge #b00000000000000000000000000000000 (size!25679 (_keys!10073 thiss!1181))))))

(assert (=> d!110723 (= (arrayNoDuplicates!0 (_keys!10073 thiss!1181) #b00000000000000000000000000000000 Nil!17891) e!500420)))

(declare-fun b!895514 () Bool)

(assert (=> b!895514 (= e!500419 e!500421)))

(assert (=> b!895514 (= c!94507 (validKeyInArray!0 (select (arr!25228 (_keys!10073 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110723 (not res!605829)) b!895511))

(assert (= (and b!895511 res!605828) b!895513))

(assert (= (and b!895511 res!605827) b!895514))

(assert (= (and b!895514 c!94507) b!895512))

(assert (= (and b!895514 (not c!94507)) b!895515))

(assert (= (or b!895512 b!895515) bm!39757))

(declare-fun m!833105 () Bool)

(assert (=> b!895511 m!833105))

(assert (=> b!895511 m!833105))

(declare-fun m!833107 () Bool)

(assert (=> b!895511 m!833107))

(assert (=> b!895513 m!833105))

(assert (=> b!895513 m!833105))

(declare-fun m!833109 () Bool)

(assert (=> b!895513 m!833109))

(assert (=> bm!39757 m!833105))

(declare-fun m!833111 () Bool)

(assert (=> bm!39757 m!833111))

(assert (=> b!895514 m!833105))

(assert (=> b!895514 m!833105))

(assert (=> b!895514 m!833107))

(assert (=> b!895471 d!110723))

(declare-fun d!110725 () Bool)

(declare-fun res!605836 () Bool)

(declare-fun e!500425 () Bool)

(assert (=> d!110725 (=> (not res!605836) (not e!500425))))

(declare-fun simpleValid!306 (LongMapFixedSize!4296) Bool)

(assert (=> d!110725 (= res!605836 (simpleValid!306 thiss!1181))))

(assert (=> d!110725 (= (valid!1648 thiss!1181) e!500425)))

(declare-fun b!895522 () Bool)

(declare-fun res!605837 () Bool)

(assert (=> b!895522 (=> (not res!605837) (not e!500425))))

(declare-fun arrayCountValidKeys!0 (array!52476 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!895522 (= res!605837 (= (arrayCountValidKeys!0 (_keys!10073 thiss!1181) #b00000000000000000000000000000000 (size!25679 (_keys!10073 thiss!1181))) (_size!2203 thiss!1181)))))

(declare-fun b!895523 () Bool)

(declare-fun res!605838 () Bool)

(assert (=> b!895523 (=> (not res!605838) (not e!500425))))

(assert (=> b!895523 (= res!605838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10073 thiss!1181) (mask!25957 thiss!1181)))))

(declare-fun b!895524 () Bool)

(assert (=> b!895524 (= e!500425 (arrayNoDuplicates!0 (_keys!10073 thiss!1181) #b00000000000000000000000000000000 Nil!17891))))

(assert (= (and d!110725 res!605836) b!895522))

(assert (= (and b!895522 res!605837) b!895523))

(assert (= (and b!895523 res!605838) b!895524))

(declare-fun m!833113 () Bool)

(assert (=> d!110725 m!833113))

(declare-fun m!833115 () Bool)

(assert (=> b!895522 m!833115))

(assert (=> b!895523 m!833081))

(assert (=> b!895524 m!833075))

(assert (=> start!76342 d!110725))

(declare-fun d!110727 () Bool)

(assert (=> d!110727 (= (validMask!0 (mask!25957 thiss!1181)) (and (or (= (mask!25957 thiss!1181) #b00000000000000000000000000000111) (= (mask!25957 thiss!1181) #b00000000000000000000000000001111) (= (mask!25957 thiss!1181) #b00000000000000000000000000011111) (= (mask!25957 thiss!1181) #b00000000000000000000000000111111) (= (mask!25957 thiss!1181) #b00000000000000000000000001111111) (= (mask!25957 thiss!1181) #b00000000000000000000000011111111) (= (mask!25957 thiss!1181) #b00000000000000000000000111111111) (= (mask!25957 thiss!1181) #b00000000000000000000001111111111) (= (mask!25957 thiss!1181) #b00000000000000000000011111111111) (= (mask!25957 thiss!1181) #b00000000000000000000111111111111) (= (mask!25957 thiss!1181) #b00000000000000000001111111111111) (= (mask!25957 thiss!1181) #b00000000000000000011111111111111) (= (mask!25957 thiss!1181) #b00000000000000000111111111111111) (= (mask!25957 thiss!1181) #b00000000000000001111111111111111) (= (mask!25957 thiss!1181) #b00000000000000011111111111111111) (= (mask!25957 thiss!1181) #b00000000000000111111111111111111) (= (mask!25957 thiss!1181) #b00000000000001111111111111111111) (= (mask!25957 thiss!1181) #b00000000000011111111111111111111) (= (mask!25957 thiss!1181) #b00000000000111111111111111111111) (= (mask!25957 thiss!1181) #b00000000001111111111111111111111) (= (mask!25957 thiss!1181) #b00000000011111111111111111111111) (= (mask!25957 thiss!1181) #b00000000111111111111111111111111) (= (mask!25957 thiss!1181) #b00000001111111111111111111111111) (= (mask!25957 thiss!1181) #b00000011111111111111111111111111) (= (mask!25957 thiss!1181) #b00000111111111111111111111111111) (= (mask!25957 thiss!1181) #b00001111111111111111111111111111) (= (mask!25957 thiss!1181) #b00011111111111111111111111111111) (= (mask!25957 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!25957 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!895470 d!110727))

(declare-fun d!110729 () Bool)

(declare-fun lt!404525 () SeekEntryResult!8874)

(assert (=> d!110729 (and (or ((_ is MissingVacant!8874) lt!404525) (not ((_ is Found!8874) lt!404525)) (and (bvsge (index!37867 lt!404525) #b00000000000000000000000000000000) (bvslt (index!37867 lt!404525) (size!25679 (_keys!10073 thiss!1181))))) (not ((_ is MissingVacant!8874) lt!404525)) (or (not ((_ is Found!8874) lt!404525)) (= (select (arr!25228 (_keys!10073 thiss!1181)) (index!37867 lt!404525)) key!785)))))

(declare-fun e!500433 () SeekEntryResult!8874)

(assert (=> d!110729 (= lt!404525 e!500433)))

(declare-fun c!94514 () Bool)

(declare-fun lt!404524 () SeekEntryResult!8874)

(assert (=> d!110729 (= c!94514 (and ((_ is Intermediate!8874) lt!404524) (undefined!9686 lt!404524)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52476 (_ BitVec 32)) SeekEntryResult!8874)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110729 (= lt!404524 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25957 thiss!1181)) key!785 (_keys!10073 thiss!1181) (mask!25957 thiss!1181)))))

(assert (=> d!110729 (validMask!0 (mask!25957 thiss!1181))))

(assert (=> d!110729 (= (seekEntry!0 key!785 (_keys!10073 thiss!1181) (mask!25957 thiss!1181)) lt!404525)))

(declare-fun b!895537 () Bool)

(assert (=> b!895537 (= e!500433 Undefined!8874)))

(declare-fun b!895538 () Bool)

(declare-fun e!500434 () SeekEntryResult!8874)

(assert (=> b!895538 (= e!500434 (MissingZero!8874 (index!37868 lt!404524)))))

(declare-fun b!895539 () Bool)

(declare-fun c!94516 () Bool)

(declare-fun lt!404523 () (_ BitVec 64))

(assert (=> b!895539 (= c!94516 (= lt!404523 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!500432 () SeekEntryResult!8874)

(assert (=> b!895539 (= e!500432 e!500434)))

(declare-fun b!895540 () Bool)

(assert (=> b!895540 (= e!500433 e!500432)))

(assert (=> b!895540 (= lt!404523 (select (arr!25228 (_keys!10073 thiss!1181)) (index!37868 lt!404524)))))

(declare-fun c!94515 () Bool)

(assert (=> b!895540 (= c!94515 (= lt!404523 key!785))))

(declare-fun b!895541 () Bool)

(assert (=> b!895541 (= e!500432 (Found!8874 (index!37868 lt!404524)))))

(declare-fun b!895542 () Bool)

(declare-fun lt!404526 () SeekEntryResult!8874)

(assert (=> b!895542 (= e!500434 (ite ((_ is MissingVacant!8874) lt!404526) (MissingZero!8874 (index!37869 lt!404526)) lt!404526))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52476 (_ BitVec 32)) SeekEntryResult!8874)

(assert (=> b!895542 (= lt!404526 (seekKeyOrZeroReturnVacant!0 (x!76195 lt!404524) (index!37868 lt!404524) (index!37868 lt!404524) key!785 (_keys!10073 thiss!1181) (mask!25957 thiss!1181)))))

(assert (= (and d!110729 c!94514) b!895537))

(assert (= (and d!110729 (not c!94514)) b!895540))

(assert (= (and b!895540 c!94515) b!895541))

(assert (= (and b!895540 (not c!94515)) b!895539))

(assert (= (and b!895539 c!94516) b!895538))

(assert (= (and b!895539 (not c!94516)) b!895542))

(declare-fun m!833117 () Bool)

(assert (=> d!110729 m!833117))

(declare-fun m!833119 () Bool)

(assert (=> d!110729 m!833119))

(assert (=> d!110729 m!833119))

(declare-fun m!833121 () Bool)

(assert (=> d!110729 m!833121))

(assert (=> d!110729 m!833077))

(declare-fun m!833123 () Bool)

(assert (=> b!895540 m!833123))

(declare-fun m!833125 () Bool)

(assert (=> b!895542 m!833125))

(assert (=> b!895470 d!110729))

(declare-fun b!895551 () Bool)

(declare-fun e!500442 () Bool)

(declare-fun call!39763 () Bool)

(assert (=> b!895551 (= e!500442 call!39763)))

(declare-fun b!895552 () Bool)

(declare-fun e!500441 () Bool)

(assert (=> b!895552 (= e!500441 call!39763)))

(declare-fun bm!39760 () Bool)

(assert (=> bm!39760 (= call!39763 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10073 thiss!1181) (mask!25957 thiss!1181)))))

(declare-fun b!895553 () Bool)

(declare-fun e!500443 () Bool)

(assert (=> b!895553 (= e!500443 e!500441)))

(declare-fun c!94519 () Bool)

(assert (=> b!895553 (= c!94519 (validKeyInArray!0 (select (arr!25228 (_keys!10073 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!110731 () Bool)

(declare-fun res!605843 () Bool)

(assert (=> d!110731 (=> res!605843 e!500443)))

(assert (=> d!110731 (= res!605843 (bvsge #b00000000000000000000000000000000 (size!25679 (_keys!10073 thiss!1181))))))

(assert (=> d!110731 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10073 thiss!1181) (mask!25957 thiss!1181)) e!500443)))

(declare-fun b!895554 () Bool)

(assert (=> b!895554 (= e!500441 e!500442)))

(declare-fun lt!404533 () (_ BitVec 64))

(assert (=> b!895554 (= lt!404533 (select (arr!25228 (_keys!10073 thiss!1181)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30435 0))(
  ( (Unit!30436) )
))
(declare-fun lt!404535 () Unit!30435)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52476 (_ BitVec 64) (_ BitVec 32)) Unit!30435)

(assert (=> b!895554 (= lt!404535 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10073 thiss!1181) lt!404533 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!52476 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!895554 (arrayContainsKey!0 (_keys!10073 thiss!1181) lt!404533 #b00000000000000000000000000000000)))

(declare-fun lt!404534 () Unit!30435)

(assert (=> b!895554 (= lt!404534 lt!404535)))

(declare-fun res!605844 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52476 (_ BitVec 32)) SeekEntryResult!8874)

(assert (=> b!895554 (= res!605844 (= (seekEntryOrOpen!0 (select (arr!25228 (_keys!10073 thiss!1181)) #b00000000000000000000000000000000) (_keys!10073 thiss!1181) (mask!25957 thiss!1181)) (Found!8874 #b00000000000000000000000000000000)))))

(assert (=> b!895554 (=> (not res!605844) (not e!500442))))

(assert (= (and d!110731 (not res!605843)) b!895553))

(assert (= (and b!895553 c!94519) b!895554))

(assert (= (and b!895553 (not c!94519)) b!895552))

(assert (= (and b!895554 res!605844) b!895551))

(assert (= (or b!895551 b!895552) bm!39760))

(declare-fun m!833127 () Bool)

(assert (=> bm!39760 m!833127))

(assert (=> b!895553 m!833105))

(assert (=> b!895553 m!833105))

(assert (=> b!895553 m!833107))

(assert (=> b!895554 m!833105))

(declare-fun m!833129 () Bool)

(assert (=> b!895554 m!833129))

(declare-fun m!833131 () Bool)

(assert (=> b!895554 m!833131))

(assert (=> b!895554 m!833105))

(declare-fun m!833133 () Bool)

(assert (=> b!895554 m!833133))

(assert (=> b!895472 d!110731))

(declare-fun b!895562 () Bool)

(declare-fun e!500448 () Bool)

(assert (=> b!895562 (= e!500448 tp_is_empty!18243)))

(declare-fun condMapEmpty!28969 () Bool)

(declare-fun mapDefault!28969 () ValueCell!8640)

(assert (=> mapNonEmpty!28963 (= condMapEmpty!28969 (= mapRest!28963 ((as const (Array (_ BitVec 32) ValueCell!8640)) mapDefault!28969)))))

(declare-fun mapRes!28969 () Bool)

(assert (=> mapNonEmpty!28963 (= tp!55759 (and e!500448 mapRes!28969))))

(declare-fun b!895561 () Bool)

(declare-fun e!500449 () Bool)

(assert (=> b!895561 (= e!500449 tp_is_empty!18243)))

(declare-fun mapNonEmpty!28969 () Bool)

(declare-fun tp!55768 () Bool)

(assert (=> mapNonEmpty!28969 (= mapRes!28969 (and tp!55768 e!500449))))

(declare-fun mapRest!28969 () (Array (_ BitVec 32) ValueCell!8640))

(declare-fun mapKey!28969 () (_ BitVec 32))

(declare-fun mapValue!28969 () ValueCell!8640)

(assert (=> mapNonEmpty!28969 (= mapRest!28963 (store mapRest!28969 mapKey!28969 mapValue!28969))))

(declare-fun mapIsEmpty!28969 () Bool)

(assert (=> mapIsEmpty!28969 mapRes!28969))

(assert (= (and mapNonEmpty!28963 condMapEmpty!28969) mapIsEmpty!28969))

(assert (= (and mapNonEmpty!28963 (not condMapEmpty!28969)) mapNonEmpty!28969))

(assert (= (and mapNonEmpty!28969 ((_ is ValueCellFull!8640) mapValue!28969)) b!895561))

(assert (= (and mapNonEmpty!28963 ((_ is ValueCellFull!8640) mapDefault!28969)) b!895562))

(declare-fun m!833135 () Bool)

(assert (=> mapNonEmpty!28969 m!833135))

(check-sat b_and!26225 (not b!895522) (not b!895554) (not b!895511) (not b!895524) (not mapNonEmpty!28969) (not b!895514) (not b!895523) (not b_next!15915) (not bm!39760) (not bm!39757) (not d!110729) (not b!895542) (not b!895553) (not b!895513) (not d!110725) tp_is_empty!18243)
(check-sat b_and!26225 (not b_next!15915))
