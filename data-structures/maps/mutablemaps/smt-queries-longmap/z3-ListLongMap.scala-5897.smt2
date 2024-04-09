; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76218 () Bool)

(assert start!76218)

(declare-fun b!894654 () Bool)

(declare-fun b_free!15885 () Bool)

(declare-fun b_next!15885 () Bool)

(assert (=> b!894654 (= b_free!15885 (not b_next!15885))))

(declare-fun tp!55650 () Bool)

(declare-fun b_and!26195 () Bool)

(assert (=> b!894654 (= tp!55650 b_and!26195)))

(declare-fun res!605487 () Bool)

(declare-fun e!499807 () Bool)

(assert (=> start!76218 (=> (not res!605487) (not e!499807))))

(declare-datatypes ((array!52406 0))(
  ( (array!52407 (arr!25198 (Array (_ BitVec 32) (_ BitVec 64))) (size!25646 (_ BitVec 32))) )
))
(declare-datatypes ((V!29249 0))(
  ( (V!29250 (val!9157 Int)) )
))
(declare-datatypes ((ValueCell!8625 0))(
  ( (ValueCellFull!8625 (v!11644 V!29249)) (EmptyCell!8625) )
))
(declare-datatypes ((array!52408 0))(
  ( (array!52409 (arr!25199 (Array (_ BitVec 32) ValueCell!8625)) (size!25647 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4266 0))(
  ( (LongMapFixedSize!4267 (defaultEntry!5345 Int) (mask!25909 (_ BitVec 32)) (extraKeys!5041 (_ BitVec 32)) (zeroValue!5145 V!29249) (minValue!5145 V!29249) (_size!2188 (_ BitVec 32)) (_keys!10043 array!52406) (_values!5332 array!52408) (_vacant!2188 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4266)

(declare-fun valid!1637 (LongMapFixedSize!4266) Bool)

(assert (=> start!76218 (= res!605487 (valid!1637 thiss!1181))))

(assert (=> start!76218 e!499807))

(declare-fun e!499805 () Bool)

(assert (=> start!76218 e!499805))

(assert (=> start!76218 true))

(declare-fun b!894650 () Bool)

(declare-fun e!499804 () Bool)

(assert (=> b!894650 (= e!499804 (and (= (size!25647 (_values!5332 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25909 thiss!1181))) (not (= (size!25646 (_keys!10043 thiss!1181)) (size!25647 (_values!5332 thiss!1181))))))))

(declare-fun b!894651 () Bool)

(declare-fun e!499806 () Bool)

(declare-fun tp_is_empty!18213 () Bool)

(assert (=> b!894651 (= e!499806 tp_is_empty!18213)))

(declare-fun b!894652 () Bool)

(assert (=> b!894652 (= e!499807 e!499804)))

(declare-fun res!605486 () Bool)

(assert (=> b!894652 (=> (not res!605486) (not e!499804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!894652 (= res!605486 (validMask!0 (mask!25909 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8865 0))(
  ( (MissingZero!8865 (index!37830 (_ BitVec 32))) (Found!8865 (index!37831 (_ BitVec 32))) (Intermediate!8865 (undefined!9677 Bool) (index!37832 (_ BitVec 32)) (x!76079 (_ BitVec 32))) (Undefined!8865) (MissingVacant!8865 (index!37833 (_ BitVec 32))) )
))
(declare-fun lt!404307 () SeekEntryResult!8865)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52406 (_ BitVec 32)) SeekEntryResult!8865)

(assert (=> b!894652 (= lt!404307 (seekEntry!0 key!785 (_keys!10043 thiss!1181) (mask!25909 thiss!1181)))))

(declare-fun b!894653 () Bool)

(declare-fun e!499802 () Bool)

(assert (=> b!894653 (= e!499802 tp_is_empty!18213)))

(declare-fun mapIsEmpty!28900 () Bool)

(declare-fun mapRes!28900 () Bool)

(assert (=> mapIsEmpty!28900 mapRes!28900))

(declare-fun e!499803 () Bool)

(declare-fun array_inv!19766 (array!52406) Bool)

(declare-fun array_inv!19767 (array!52408) Bool)

(assert (=> b!894654 (= e!499805 (and tp!55650 tp_is_empty!18213 (array_inv!19766 (_keys!10043 thiss!1181)) (array_inv!19767 (_values!5332 thiss!1181)) e!499803))))

(declare-fun b!894655 () Bool)

(assert (=> b!894655 (= e!499803 (and e!499806 mapRes!28900))))

(declare-fun condMapEmpty!28900 () Bool)

(declare-fun mapDefault!28900 () ValueCell!8625)

(assert (=> b!894655 (= condMapEmpty!28900 (= (arr!25199 (_values!5332 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8625)) mapDefault!28900)))))

(declare-fun b!894656 () Bool)

(declare-fun res!605485 () Bool)

(assert (=> b!894656 (=> (not res!605485) (not e!499807))))

(assert (=> b!894656 (= res!605485 (not (= key!785 (bvneg key!785))))))

(declare-fun mapNonEmpty!28900 () Bool)

(declare-fun tp!55651 () Bool)

(assert (=> mapNonEmpty!28900 (= mapRes!28900 (and tp!55651 e!499802))))

(declare-fun mapRest!28900 () (Array (_ BitVec 32) ValueCell!8625))

(declare-fun mapValue!28900 () ValueCell!8625)

(declare-fun mapKey!28900 () (_ BitVec 32))

(assert (=> mapNonEmpty!28900 (= (arr!25199 (_values!5332 thiss!1181)) (store mapRest!28900 mapKey!28900 mapValue!28900))))

(assert (= (and start!76218 res!605487) b!894656))

(assert (= (and b!894656 res!605485) b!894652))

(assert (= (and b!894652 res!605486) b!894650))

(assert (= (and b!894655 condMapEmpty!28900) mapIsEmpty!28900))

(assert (= (and b!894655 (not condMapEmpty!28900)) mapNonEmpty!28900))

(get-info :version)

(assert (= (and mapNonEmpty!28900 ((_ is ValueCellFull!8625) mapValue!28900)) b!894653))

(assert (= (and b!894655 ((_ is ValueCellFull!8625) mapDefault!28900)) b!894651))

(assert (= b!894654 b!894655))

(assert (= start!76218 b!894654))

(declare-fun m!832659 () Bool)

(assert (=> start!76218 m!832659))

(declare-fun m!832661 () Bool)

(assert (=> b!894652 m!832661))

(declare-fun m!832663 () Bool)

(assert (=> b!894652 m!832663))

(declare-fun m!832665 () Bool)

(assert (=> b!894654 m!832665))

(declare-fun m!832667 () Bool)

(assert (=> b!894654 m!832667))

(declare-fun m!832669 () Bool)

(assert (=> mapNonEmpty!28900 m!832669))

(check-sat b_and!26195 (not b_next!15885) (not start!76218) tp_is_empty!18213 (not b!894654) (not mapNonEmpty!28900) (not b!894652))
(check-sat b_and!26195 (not b_next!15885))
(get-model)

(declare-fun d!110615 () Bool)

(assert (=> d!110615 (= (validMask!0 (mask!25909 thiss!1181)) (and (or (= (mask!25909 thiss!1181) #b00000000000000000000000000000111) (= (mask!25909 thiss!1181) #b00000000000000000000000000001111) (= (mask!25909 thiss!1181) #b00000000000000000000000000011111) (= (mask!25909 thiss!1181) #b00000000000000000000000000111111) (= (mask!25909 thiss!1181) #b00000000000000000000000001111111) (= (mask!25909 thiss!1181) #b00000000000000000000000011111111) (= (mask!25909 thiss!1181) #b00000000000000000000000111111111) (= (mask!25909 thiss!1181) #b00000000000000000000001111111111) (= (mask!25909 thiss!1181) #b00000000000000000000011111111111) (= (mask!25909 thiss!1181) #b00000000000000000000111111111111) (= (mask!25909 thiss!1181) #b00000000000000000001111111111111) (= (mask!25909 thiss!1181) #b00000000000000000011111111111111) (= (mask!25909 thiss!1181) #b00000000000000000111111111111111) (= (mask!25909 thiss!1181) #b00000000000000001111111111111111) (= (mask!25909 thiss!1181) #b00000000000000011111111111111111) (= (mask!25909 thiss!1181) #b00000000000000111111111111111111) (= (mask!25909 thiss!1181) #b00000000000001111111111111111111) (= (mask!25909 thiss!1181) #b00000000000011111111111111111111) (= (mask!25909 thiss!1181) #b00000000000111111111111111111111) (= (mask!25909 thiss!1181) #b00000000001111111111111111111111) (= (mask!25909 thiss!1181) #b00000000011111111111111111111111) (= (mask!25909 thiss!1181) #b00000000111111111111111111111111) (= (mask!25909 thiss!1181) #b00000001111111111111111111111111) (= (mask!25909 thiss!1181) #b00000011111111111111111111111111) (= (mask!25909 thiss!1181) #b00000111111111111111111111111111) (= (mask!25909 thiss!1181) #b00001111111111111111111111111111) (= (mask!25909 thiss!1181) #b00011111111111111111111111111111) (= (mask!25909 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!25909 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!894652 d!110615))

(declare-fun b!894690 () Bool)

(declare-fun e!499835 () SeekEntryResult!8865)

(assert (=> b!894690 (= e!499835 Undefined!8865)))

(declare-fun b!894691 () Bool)

(declare-fun e!499837 () SeekEntryResult!8865)

(assert (=> b!894691 (= e!499835 e!499837)))

(declare-fun lt!404322 () (_ BitVec 64))

(declare-fun lt!404319 () SeekEntryResult!8865)

(assert (=> b!894691 (= lt!404322 (select (arr!25198 (_keys!10043 thiss!1181)) (index!37832 lt!404319)))))

(declare-fun c!94373 () Bool)

(assert (=> b!894691 (= c!94373 (= lt!404322 key!785))))

(declare-fun d!110617 () Bool)

(declare-fun lt!404320 () SeekEntryResult!8865)

(assert (=> d!110617 (and (or ((_ is MissingVacant!8865) lt!404320) (not ((_ is Found!8865) lt!404320)) (and (bvsge (index!37831 lt!404320) #b00000000000000000000000000000000) (bvslt (index!37831 lt!404320) (size!25646 (_keys!10043 thiss!1181))))) (not ((_ is MissingVacant!8865) lt!404320)) (or (not ((_ is Found!8865) lt!404320)) (= (select (arr!25198 (_keys!10043 thiss!1181)) (index!37831 lt!404320)) key!785)))))

(assert (=> d!110617 (= lt!404320 e!499835)))

(declare-fun c!94374 () Bool)

(assert (=> d!110617 (= c!94374 (and ((_ is Intermediate!8865) lt!404319) (undefined!9677 lt!404319)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52406 (_ BitVec 32)) SeekEntryResult!8865)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110617 (= lt!404319 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25909 thiss!1181)) key!785 (_keys!10043 thiss!1181) (mask!25909 thiss!1181)))))

(assert (=> d!110617 (validMask!0 (mask!25909 thiss!1181))))

(assert (=> d!110617 (= (seekEntry!0 key!785 (_keys!10043 thiss!1181) (mask!25909 thiss!1181)) lt!404320)))

(declare-fun b!894692 () Bool)

(declare-fun c!94375 () Bool)

(assert (=> b!894692 (= c!94375 (= lt!404322 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!499836 () SeekEntryResult!8865)

(assert (=> b!894692 (= e!499837 e!499836)))

(declare-fun b!894693 () Bool)

(assert (=> b!894693 (= e!499836 (MissingZero!8865 (index!37832 lt!404319)))))

(declare-fun b!894694 () Bool)

(assert (=> b!894694 (= e!499837 (Found!8865 (index!37832 lt!404319)))))

(declare-fun b!894695 () Bool)

(declare-fun lt!404321 () SeekEntryResult!8865)

(assert (=> b!894695 (= e!499836 (ite ((_ is MissingVacant!8865) lt!404321) (MissingZero!8865 (index!37833 lt!404321)) lt!404321))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52406 (_ BitVec 32)) SeekEntryResult!8865)

(assert (=> b!894695 (= lt!404321 (seekKeyOrZeroReturnVacant!0 (x!76079 lt!404319) (index!37832 lt!404319) (index!37832 lt!404319) key!785 (_keys!10043 thiss!1181) (mask!25909 thiss!1181)))))

(assert (= (and d!110617 c!94374) b!894690))

(assert (= (and d!110617 (not c!94374)) b!894691))

(assert (= (and b!894691 c!94373) b!894694))

(assert (= (and b!894691 (not c!94373)) b!894692))

(assert (= (and b!894692 c!94375) b!894693))

(assert (= (and b!894692 (not c!94375)) b!894695))

(declare-fun m!832683 () Bool)

(assert (=> b!894691 m!832683))

(declare-fun m!832685 () Bool)

(assert (=> d!110617 m!832685))

(declare-fun m!832687 () Bool)

(assert (=> d!110617 m!832687))

(assert (=> d!110617 m!832687))

(declare-fun m!832689 () Bool)

(assert (=> d!110617 m!832689))

(assert (=> d!110617 m!832661))

(declare-fun m!832691 () Bool)

(assert (=> b!894695 m!832691))

(assert (=> b!894652 d!110617))

(declare-fun d!110619 () Bool)

(declare-fun res!605503 () Bool)

(declare-fun e!499840 () Bool)

(assert (=> d!110619 (=> (not res!605503) (not e!499840))))

(declare-fun simpleValid!301 (LongMapFixedSize!4266) Bool)

(assert (=> d!110619 (= res!605503 (simpleValid!301 thiss!1181))))

(assert (=> d!110619 (= (valid!1637 thiss!1181) e!499840)))

(declare-fun b!894702 () Bool)

(declare-fun res!605504 () Bool)

(assert (=> b!894702 (=> (not res!605504) (not e!499840))))

(declare-fun arrayCountValidKeys!0 (array!52406 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!894702 (= res!605504 (= (arrayCountValidKeys!0 (_keys!10043 thiss!1181) #b00000000000000000000000000000000 (size!25646 (_keys!10043 thiss!1181))) (_size!2188 thiss!1181)))))

(declare-fun b!894703 () Bool)

(declare-fun res!605505 () Bool)

(assert (=> b!894703 (=> (not res!605505) (not e!499840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52406 (_ BitVec 32)) Bool)

(assert (=> b!894703 (= res!605505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10043 thiss!1181) (mask!25909 thiss!1181)))))

(declare-fun b!894704 () Bool)

(declare-datatypes ((List!17889 0))(
  ( (Nil!17886) (Cons!17885 (h!19019 (_ BitVec 64)) (t!25236 List!17889)) )
))
(declare-fun arrayNoDuplicates!0 (array!52406 (_ BitVec 32) List!17889) Bool)

(assert (=> b!894704 (= e!499840 (arrayNoDuplicates!0 (_keys!10043 thiss!1181) #b00000000000000000000000000000000 Nil!17886))))

(assert (= (and d!110619 res!605503) b!894702))

(assert (= (and b!894702 res!605504) b!894703))

(assert (= (and b!894703 res!605505) b!894704))

(declare-fun m!832693 () Bool)

(assert (=> d!110619 m!832693))

(declare-fun m!832695 () Bool)

(assert (=> b!894702 m!832695))

(declare-fun m!832697 () Bool)

(assert (=> b!894703 m!832697))

(declare-fun m!832699 () Bool)

(assert (=> b!894704 m!832699))

(assert (=> start!76218 d!110619))

(declare-fun d!110621 () Bool)

(assert (=> d!110621 (= (array_inv!19766 (_keys!10043 thiss!1181)) (bvsge (size!25646 (_keys!10043 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!894654 d!110621))

(declare-fun d!110623 () Bool)

(assert (=> d!110623 (= (array_inv!19767 (_values!5332 thiss!1181)) (bvsge (size!25647 (_values!5332 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!894654 d!110623))

(declare-fun condMapEmpty!28906 () Bool)

(declare-fun mapDefault!28906 () ValueCell!8625)

(assert (=> mapNonEmpty!28900 (= condMapEmpty!28906 (= mapRest!28900 ((as const (Array (_ BitVec 32) ValueCell!8625)) mapDefault!28906)))))

(declare-fun e!499845 () Bool)

(declare-fun mapRes!28906 () Bool)

(assert (=> mapNonEmpty!28900 (= tp!55651 (and e!499845 mapRes!28906))))

(declare-fun mapNonEmpty!28906 () Bool)

(declare-fun tp!55660 () Bool)

(declare-fun e!499846 () Bool)

(assert (=> mapNonEmpty!28906 (= mapRes!28906 (and tp!55660 e!499846))))

(declare-fun mapKey!28906 () (_ BitVec 32))

(declare-fun mapValue!28906 () ValueCell!8625)

(declare-fun mapRest!28906 () (Array (_ BitVec 32) ValueCell!8625))

(assert (=> mapNonEmpty!28906 (= mapRest!28900 (store mapRest!28906 mapKey!28906 mapValue!28906))))

(declare-fun b!894711 () Bool)

(assert (=> b!894711 (= e!499846 tp_is_empty!18213)))

(declare-fun b!894712 () Bool)

(assert (=> b!894712 (= e!499845 tp_is_empty!18213)))

(declare-fun mapIsEmpty!28906 () Bool)

(assert (=> mapIsEmpty!28906 mapRes!28906))

(assert (= (and mapNonEmpty!28900 condMapEmpty!28906) mapIsEmpty!28906))

(assert (= (and mapNonEmpty!28900 (not condMapEmpty!28906)) mapNonEmpty!28906))

(assert (= (and mapNonEmpty!28906 ((_ is ValueCellFull!8625) mapValue!28906)) b!894711))

(assert (= (and mapNonEmpty!28900 ((_ is ValueCellFull!8625) mapDefault!28906)) b!894712))

(declare-fun m!832701 () Bool)

(assert (=> mapNonEmpty!28906 m!832701))

(check-sat b_and!26195 (not b_next!15885) (not b!894695) tp_is_empty!18213 (not d!110619) (not b!894702) (not d!110617) (not mapNonEmpty!28906) (not b!894704) (not b!894703))
(check-sat b_and!26195 (not b_next!15885))
(get-model)

(declare-fun b!894723 () Bool)

(declare-fun e!499857 () Bool)

(declare-fun call!39730 () Bool)

(assert (=> b!894723 (= e!499857 call!39730)))

(declare-fun b!894724 () Bool)

(assert (=> b!894724 (= e!499857 call!39730)))

(declare-fun b!894725 () Bool)

(declare-fun e!499858 () Bool)

(assert (=> b!894725 (= e!499858 e!499857)))

(declare-fun c!94378 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!894725 (= c!94378 (validKeyInArray!0 (select (arr!25198 (_keys!10043 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!110625 () Bool)

(declare-fun res!605512 () Bool)

(declare-fun e!499855 () Bool)

(assert (=> d!110625 (=> res!605512 e!499855)))

(assert (=> d!110625 (= res!605512 (bvsge #b00000000000000000000000000000000 (size!25646 (_keys!10043 thiss!1181))))))

(assert (=> d!110625 (= (arrayNoDuplicates!0 (_keys!10043 thiss!1181) #b00000000000000000000000000000000 Nil!17886) e!499855)))

(declare-fun b!894726 () Bool)

(assert (=> b!894726 (= e!499855 e!499858)))

(declare-fun res!605513 () Bool)

(assert (=> b!894726 (=> (not res!605513) (not e!499858))))

(declare-fun e!499856 () Bool)

(assert (=> b!894726 (= res!605513 (not e!499856))))

(declare-fun res!605514 () Bool)

(assert (=> b!894726 (=> (not res!605514) (not e!499856))))

(assert (=> b!894726 (= res!605514 (validKeyInArray!0 (select (arr!25198 (_keys!10043 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!39727 () Bool)

(assert (=> bm!39727 (= call!39730 (arrayNoDuplicates!0 (_keys!10043 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!94378 (Cons!17885 (select (arr!25198 (_keys!10043 thiss!1181)) #b00000000000000000000000000000000) Nil!17886) Nil!17886)))))

(declare-fun b!894727 () Bool)

(declare-fun contains!4383 (List!17889 (_ BitVec 64)) Bool)

(assert (=> b!894727 (= e!499856 (contains!4383 Nil!17886 (select (arr!25198 (_keys!10043 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110625 (not res!605512)) b!894726))

(assert (= (and b!894726 res!605514) b!894727))

(assert (= (and b!894726 res!605513) b!894725))

(assert (= (and b!894725 c!94378) b!894724))

(assert (= (and b!894725 (not c!94378)) b!894723))

(assert (= (or b!894724 b!894723) bm!39727))

(declare-fun m!832703 () Bool)

(assert (=> b!894725 m!832703))

(assert (=> b!894725 m!832703))

(declare-fun m!832705 () Bool)

(assert (=> b!894725 m!832705))

(assert (=> b!894726 m!832703))

(assert (=> b!894726 m!832703))

(assert (=> b!894726 m!832705))

(assert (=> bm!39727 m!832703))

(declare-fun m!832707 () Bool)

(assert (=> bm!39727 m!832707))

(assert (=> b!894727 m!832703))

(assert (=> b!894727 m!832703))

(declare-fun m!832709 () Bool)

(assert (=> b!894727 m!832709))

(assert (=> b!894704 d!110625))

(declare-fun bm!39730 () Bool)

(declare-fun call!39733 () Bool)

(assert (=> bm!39730 (= call!39733 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10043 thiss!1181) (mask!25909 thiss!1181)))))

(declare-fun b!894736 () Bool)

(declare-fun e!499867 () Bool)

(declare-fun e!499865 () Bool)

(assert (=> b!894736 (= e!499867 e!499865)))

(declare-fun lt!404330 () (_ BitVec 64))

(assert (=> b!894736 (= lt!404330 (select (arr!25198 (_keys!10043 thiss!1181)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30427 0))(
  ( (Unit!30428) )
))
(declare-fun lt!404331 () Unit!30427)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52406 (_ BitVec 64) (_ BitVec 32)) Unit!30427)

(assert (=> b!894736 (= lt!404331 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10043 thiss!1181) lt!404330 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!52406 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!894736 (arrayContainsKey!0 (_keys!10043 thiss!1181) lt!404330 #b00000000000000000000000000000000)))

(declare-fun lt!404329 () Unit!30427)

(assert (=> b!894736 (= lt!404329 lt!404331)))

(declare-fun res!605520 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52406 (_ BitVec 32)) SeekEntryResult!8865)

(assert (=> b!894736 (= res!605520 (= (seekEntryOrOpen!0 (select (arr!25198 (_keys!10043 thiss!1181)) #b00000000000000000000000000000000) (_keys!10043 thiss!1181) (mask!25909 thiss!1181)) (Found!8865 #b00000000000000000000000000000000)))))

(assert (=> b!894736 (=> (not res!605520) (not e!499865))))

(declare-fun b!894737 () Bool)

(assert (=> b!894737 (= e!499865 call!39733)))

(declare-fun b!894738 () Bool)

(declare-fun e!499866 () Bool)

(assert (=> b!894738 (= e!499866 e!499867)))

(declare-fun c!94381 () Bool)

(assert (=> b!894738 (= c!94381 (validKeyInArray!0 (select (arr!25198 (_keys!10043 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!894739 () Bool)

(assert (=> b!894739 (= e!499867 call!39733)))

(declare-fun d!110627 () Bool)

(declare-fun res!605519 () Bool)

(assert (=> d!110627 (=> res!605519 e!499866)))

(assert (=> d!110627 (= res!605519 (bvsge #b00000000000000000000000000000000 (size!25646 (_keys!10043 thiss!1181))))))

(assert (=> d!110627 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10043 thiss!1181) (mask!25909 thiss!1181)) e!499866)))

(assert (= (and d!110627 (not res!605519)) b!894738))

(assert (= (and b!894738 c!94381) b!894736))

(assert (= (and b!894738 (not c!94381)) b!894739))

(assert (= (and b!894736 res!605520) b!894737))

(assert (= (or b!894737 b!894739) bm!39730))

(declare-fun m!832711 () Bool)

(assert (=> bm!39730 m!832711))

(assert (=> b!894736 m!832703))

(declare-fun m!832713 () Bool)

(assert (=> b!894736 m!832713))

(declare-fun m!832715 () Bool)

(assert (=> b!894736 m!832715))

(assert (=> b!894736 m!832703))

(declare-fun m!832717 () Bool)

(assert (=> b!894736 m!832717))

(assert (=> b!894738 m!832703))

(assert (=> b!894738 m!832703))

(assert (=> b!894738 m!832705))

(assert (=> b!894703 d!110627))

(declare-fun b!894748 () Bool)

(declare-fun e!499873 () (_ BitVec 32))

(declare-fun call!39736 () (_ BitVec 32))

(assert (=> b!894748 (= e!499873 (bvadd #b00000000000000000000000000000001 call!39736))))

(declare-fun b!894749 () Bool)

(declare-fun e!499872 () (_ BitVec 32))

(assert (=> b!894749 (= e!499872 #b00000000000000000000000000000000)))

(declare-fun b!894750 () Bool)

(assert (=> b!894750 (= e!499873 call!39736)))

(declare-fun bm!39733 () Bool)

(assert (=> bm!39733 (= call!39736 (arrayCountValidKeys!0 (_keys!10043 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25646 (_keys!10043 thiss!1181))))))

(declare-fun d!110629 () Bool)

(declare-fun lt!404334 () (_ BitVec 32))

(assert (=> d!110629 (and (bvsge lt!404334 #b00000000000000000000000000000000) (bvsle lt!404334 (bvsub (size!25646 (_keys!10043 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!110629 (= lt!404334 e!499872)))

(declare-fun c!94386 () Bool)

(assert (=> d!110629 (= c!94386 (bvsge #b00000000000000000000000000000000 (size!25646 (_keys!10043 thiss!1181))))))

(assert (=> d!110629 (and (bvsle #b00000000000000000000000000000000 (size!25646 (_keys!10043 thiss!1181))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!25646 (_keys!10043 thiss!1181)) (size!25646 (_keys!10043 thiss!1181))))))

(assert (=> d!110629 (= (arrayCountValidKeys!0 (_keys!10043 thiss!1181) #b00000000000000000000000000000000 (size!25646 (_keys!10043 thiss!1181))) lt!404334)))

(declare-fun b!894751 () Bool)

(assert (=> b!894751 (= e!499872 e!499873)))

(declare-fun c!94387 () Bool)

(assert (=> b!894751 (= c!94387 (validKeyInArray!0 (select (arr!25198 (_keys!10043 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110629 c!94386) b!894749))

(assert (= (and d!110629 (not c!94386)) b!894751))

(assert (= (and b!894751 c!94387) b!894748))

(assert (= (and b!894751 (not c!94387)) b!894750))

(assert (= (or b!894748 b!894750) bm!39733))

(declare-fun m!832719 () Bool)

(assert (=> bm!39733 m!832719))

(assert (=> b!894751 m!832703))

(assert (=> b!894751 m!832703))

(assert (=> b!894751 m!832705))

(assert (=> b!894702 d!110629))

(declare-fun b!894760 () Bool)

(declare-fun res!605529 () Bool)

(declare-fun e!499876 () Bool)

(assert (=> b!894760 (=> (not res!605529) (not e!499876))))

(assert (=> b!894760 (= res!605529 (and (= (size!25647 (_values!5332 thiss!1181)) (bvadd (mask!25909 thiss!1181) #b00000000000000000000000000000001)) (= (size!25646 (_keys!10043 thiss!1181)) (size!25647 (_values!5332 thiss!1181))) (bvsge (_size!2188 thiss!1181) #b00000000000000000000000000000000) (bvsle (_size!2188 thiss!1181) (bvadd (mask!25909 thiss!1181) #b00000000000000000000000000000001))))))

(declare-fun d!110631 () Bool)

(declare-fun res!605532 () Bool)

(assert (=> d!110631 (=> (not res!605532) (not e!499876))))

(assert (=> d!110631 (= res!605532 (validMask!0 (mask!25909 thiss!1181)))))

(assert (=> d!110631 (= (simpleValid!301 thiss!1181) e!499876)))

(declare-fun b!894763 () Bool)

(assert (=> b!894763 (= e!499876 (and (bvsge (extraKeys!5041 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5041 thiss!1181) #b00000000000000000000000000000011) (bvsge (_vacant!2188 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!894761 () Bool)

(declare-fun res!605530 () Bool)

(assert (=> b!894761 (=> (not res!605530) (not e!499876))))

(declare-fun size!25650 (LongMapFixedSize!4266) (_ BitVec 32))

(assert (=> b!894761 (= res!605530 (bvsge (size!25650 thiss!1181) (_size!2188 thiss!1181)))))

(declare-fun b!894762 () Bool)

(declare-fun res!605531 () Bool)

(assert (=> b!894762 (=> (not res!605531) (not e!499876))))

(assert (=> b!894762 (= res!605531 (= (size!25650 thiss!1181) (bvadd (_size!2188 thiss!1181) (bvsdiv (bvadd (extraKeys!5041 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!110631 res!605532) b!894760))

(assert (= (and b!894760 res!605529) b!894761))

(assert (= (and b!894761 res!605530) b!894762))

(assert (= (and b!894762 res!605531) b!894763))

(assert (=> d!110631 m!832661))

(declare-fun m!832721 () Bool)

(assert (=> b!894761 m!832721))

(assert (=> b!894762 m!832721))

(assert (=> d!110619 d!110631))

(declare-fun b!894776 () Bool)

(declare-fun c!94394 () Bool)

(declare-fun lt!404340 () (_ BitVec 64))

(assert (=> b!894776 (= c!94394 (= lt!404340 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!499884 () SeekEntryResult!8865)

(declare-fun e!499883 () SeekEntryResult!8865)

(assert (=> b!894776 (= e!499884 e!499883)))

(declare-fun b!894777 () Bool)

(declare-fun e!499885 () SeekEntryResult!8865)

(assert (=> b!894777 (= e!499885 Undefined!8865)))

(declare-fun d!110633 () Bool)

(declare-fun lt!404339 () SeekEntryResult!8865)

(assert (=> d!110633 (and (or ((_ is Undefined!8865) lt!404339) (not ((_ is Found!8865) lt!404339)) (and (bvsge (index!37831 lt!404339) #b00000000000000000000000000000000) (bvslt (index!37831 lt!404339) (size!25646 (_keys!10043 thiss!1181))))) (or ((_ is Undefined!8865) lt!404339) ((_ is Found!8865) lt!404339) (not ((_ is MissingVacant!8865) lt!404339)) (not (= (index!37833 lt!404339) (index!37832 lt!404319))) (and (bvsge (index!37833 lt!404339) #b00000000000000000000000000000000) (bvslt (index!37833 lt!404339) (size!25646 (_keys!10043 thiss!1181))))) (or ((_ is Undefined!8865) lt!404339) (ite ((_ is Found!8865) lt!404339) (= (select (arr!25198 (_keys!10043 thiss!1181)) (index!37831 lt!404339)) key!785) (and ((_ is MissingVacant!8865) lt!404339) (= (index!37833 lt!404339) (index!37832 lt!404319)) (= (select (arr!25198 (_keys!10043 thiss!1181)) (index!37833 lt!404339)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!110633 (= lt!404339 e!499885)))

(declare-fun c!94396 () Bool)

(assert (=> d!110633 (= c!94396 (bvsge (x!76079 lt!404319) #b01111111111111111111111111111110))))

(assert (=> d!110633 (= lt!404340 (select (arr!25198 (_keys!10043 thiss!1181)) (index!37832 lt!404319)))))

(assert (=> d!110633 (validMask!0 (mask!25909 thiss!1181))))

(assert (=> d!110633 (= (seekKeyOrZeroReturnVacant!0 (x!76079 lt!404319) (index!37832 lt!404319) (index!37832 lt!404319) key!785 (_keys!10043 thiss!1181) (mask!25909 thiss!1181)) lt!404339)))

(declare-fun b!894778 () Bool)

(assert (=> b!894778 (= e!499883 (MissingVacant!8865 (index!37832 lt!404319)))))

(declare-fun b!894779 () Bool)

(assert (=> b!894779 (= e!499884 (Found!8865 (index!37832 lt!404319)))))

(declare-fun b!894780 () Bool)

(assert (=> b!894780 (= e!499885 e!499884)))

(declare-fun c!94395 () Bool)

(assert (=> b!894780 (= c!94395 (= lt!404340 key!785))))

(declare-fun b!894781 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!894781 (= e!499883 (seekKeyOrZeroReturnVacant!0 (bvadd (x!76079 lt!404319) #b00000000000000000000000000000001) (nextIndex!0 (index!37832 lt!404319) (x!76079 lt!404319) (mask!25909 thiss!1181)) (index!37832 lt!404319) key!785 (_keys!10043 thiss!1181) (mask!25909 thiss!1181)))))

(assert (= (and d!110633 c!94396) b!894777))

(assert (= (and d!110633 (not c!94396)) b!894780))

(assert (= (and b!894780 c!94395) b!894779))

(assert (= (and b!894780 (not c!94395)) b!894776))

(assert (= (and b!894776 c!94394) b!894778))

(assert (= (and b!894776 (not c!94394)) b!894781))

(declare-fun m!832723 () Bool)

(assert (=> d!110633 m!832723))

(declare-fun m!832725 () Bool)

(assert (=> d!110633 m!832725))

(assert (=> d!110633 m!832683))

(assert (=> d!110633 m!832661))

(declare-fun m!832727 () Bool)

(assert (=> b!894781 m!832727))

(assert (=> b!894781 m!832727))

(declare-fun m!832729 () Bool)

(assert (=> b!894781 m!832729))

(assert (=> b!894695 d!110633))

(declare-fun b!894800 () Bool)

(declare-fun e!499899 () SeekEntryResult!8865)

(assert (=> b!894800 (= e!499899 (Intermediate!8865 false (toIndex!0 key!785 (mask!25909 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!894801 () Bool)

(declare-fun e!499897 () Bool)

(declare-fun e!499896 () Bool)

(assert (=> b!894801 (= e!499897 e!499896)))

(declare-fun res!605540 () Bool)

(declare-fun lt!404346 () SeekEntryResult!8865)

(assert (=> b!894801 (= res!605540 (and ((_ is Intermediate!8865) lt!404346) (not (undefined!9677 lt!404346)) (bvslt (x!76079 lt!404346) #b01111111111111111111111111111110) (bvsge (x!76079 lt!404346) #b00000000000000000000000000000000) (bvsge (x!76079 lt!404346) #b00000000000000000000000000000000)))))

(assert (=> b!894801 (=> (not res!605540) (not e!499896))))

(declare-fun b!894802 () Bool)

(declare-fun e!499898 () SeekEntryResult!8865)

(assert (=> b!894802 (= e!499898 e!499899)))

(declare-fun c!94404 () Bool)

(declare-fun lt!404345 () (_ BitVec 64))

(assert (=> b!894802 (= c!94404 (or (= lt!404345 key!785) (= (bvadd lt!404345 lt!404345) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!894803 () Bool)

(assert (=> b!894803 (and (bvsge (index!37832 lt!404346) #b00000000000000000000000000000000) (bvslt (index!37832 lt!404346) (size!25646 (_keys!10043 thiss!1181))))))

(declare-fun res!605541 () Bool)

(assert (=> b!894803 (= res!605541 (= (select (arr!25198 (_keys!10043 thiss!1181)) (index!37832 lt!404346)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!499900 () Bool)

(assert (=> b!894803 (=> res!605541 e!499900)))

(declare-fun b!894804 () Bool)

(assert (=> b!894804 (= e!499899 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!785 (mask!25909 thiss!1181)) #b00000000000000000000000000000000 (mask!25909 thiss!1181)) key!785 (_keys!10043 thiss!1181) (mask!25909 thiss!1181)))))

(declare-fun b!894805 () Bool)

(assert (=> b!894805 (and (bvsge (index!37832 lt!404346) #b00000000000000000000000000000000) (bvslt (index!37832 lt!404346) (size!25646 (_keys!10043 thiss!1181))))))

(assert (=> b!894805 (= e!499900 (= (select (arr!25198 (_keys!10043 thiss!1181)) (index!37832 lt!404346)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!110635 () Bool)

(assert (=> d!110635 e!499897))

(declare-fun c!94403 () Bool)

(assert (=> d!110635 (= c!94403 (and ((_ is Intermediate!8865) lt!404346) (undefined!9677 lt!404346)))))

(assert (=> d!110635 (= lt!404346 e!499898)))

(declare-fun c!94405 () Bool)

(assert (=> d!110635 (= c!94405 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!110635 (= lt!404345 (select (arr!25198 (_keys!10043 thiss!1181)) (toIndex!0 key!785 (mask!25909 thiss!1181))))))

(assert (=> d!110635 (validMask!0 (mask!25909 thiss!1181))))

(assert (=> d!110635 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25909 thiss!1181)) key!785 (_keys!10043 thiss!1181) (mask!25909 thiss!1181)) lt!404346)))

(declare-fun b!894806 () Bool)

(assert (=> b!894806 (= e!499897 (bvsge (x!76079 lt!404346) #b01111111111111111111111111111110))))

(declare-fun b!894807 () Bool)

(assert (=> b!894807 (and (bvsge (index!37832 lt!404346) #b00000000000000000000000000000000) (bvslt (index!37832 lt!404346) (size!25646 (_keys!10043 thiss!1181))))))

(declare-fun res!605539 () Bool)

(assert (=> b!894807 (= res!605539 (= (select (arr!25198 (_keys!10043 thiss!1181)) (index!37832 lt!404346)) key!785))))

(assert (=> b!894807 (=> res!605539 e!499900)))

(assert (=> b!894807 (= e!499896 e!499900)))

(declare-fun b!894808 () Bool)

(assert (=> b!894808 (= e!499898 (Intermediate!8865 true (toIndex!0 key!785 (mask!25909 thiss!1181)) #b00000000000000000000000000000000))))

(assert (= (and d!110635 c!94405) b!894808))

(assert (= (and d!110635 (not c!94405)) b!894802))

(assert (= (and b!894802 c!94404) b!894800))

(assert (= (and b!894802 (not c!94404)) b!894804))

(assert (= (and d!110635 c!94403) b!894806))

(assert (= (and d!110635 (not c!94403)) b!894801))

(assert (= (and b!894801 res!605540) b!894807))

(assert (= (and b!894807 (not res!605539)) b!894803))

(assert (= (and b!894803 (not res!605541)) b!894805))

(declare-fun m!832731 () Bool)

(assert (=> b!894803 m!832731))

(assert (=> b!894805 m!832731))

(assert (=> b!894804 m!832687))

(declare-fun m!832733 () Bool)

(assert (=> b!894804 m!832733))

(assert (=> b!894804 m!832733))

(declare-fun m!832735 () Bool)

(assert (=> b!894804 m!832735))

(assert (=> b!894807 m!832731))

(assert (=> d!110635 m!832687))

(declare-fun m!832737 () Bool)

(assert (=> d!110635 m!832737))

(assert (=> d!110635 m!832661))

(assert (=> d!110617 d!110635))

(declare-fun d!110637 () Bool)

(declare-fun lt!404352 () (_ BitVec 32))

(declare-fun lt!404351 () (_ BitVec 32))

(assert (=> d!110637 (= lt!404352 (bvmul (bvxor lt!404351 (bvlshr lt!404351 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!110637 (= lt!404351 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!110637 (and (bvsge (mask!25909 thiss!1181) #b00000000000000000000000000000000) (let ((res!605542 (let ((h!19020 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!76096 (bvmul (bvxor h!19020 (bvlshr h!19020 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!76096 (bvlshr x!76096 #b00000000000000000000000000001101)) (mask!25909 thiss!1181)))))) (and (bvslt res!605542 (bvadd (mask!25909 thiss!1181) #b00000000000000000000000000000001)) (bvsge res!605542 #b00000000000000000000000000000000))))))

(assert (=> d!110637 (= (toIndex!0 key!785 (mask!25909 thiss!1181)) (bvand (bvxor lt!404352 (bvlshr lt!404352 #b00000000000000000000000000001101)) (mask!25909 thiss!1181)))))

(assert (=> d!110617 d!110637))

(assert (=> d!110617 d!110615))

(declare-fun condMapEmpty!28907 () Bool)

(declare-fun mapDefault!28907 () ValueCell!8625)

(assert (=> mapNonEmpty!28906 (= condMapEmpty!28907 (= mapRest!28906 ((as const (Array (_ BitVec 32) ValueCell!8625)) mapDefault!28907)))))

(declare-fun e!499901 () Bool)

(declare-fun mapRes!28907 () Bool)

(assert (=> mapNonEmpty!28906 (= tp!55660 (and e!499901 mapRes!28907))))

(declare-fun mapNonEmpty!28907 () Bool)

(declare-fun tp!55661 () Bool)

(declare-fun e!499902 () Bool)

(assert (=> mapNonEmpty!28907 (= mapRes!28907 (and tp!55661 e!499902))))

(declare-fun mapKey!28907 () (_ BitVec 32))

(declare-fun mapValue!28907 () ValueCell!8625)

(declare-fun mapRest!28907 () (Array (_ BitVec 32) ValueCell!8625))

(assert (=> mapNonEmpty!28907 (= mapRest!28906 (store mapRest!28907 mapKey!28907 mapValue!28907))))

(declare-fun b!894809 () Bool)

(assert (=> b!894809 (= e!499902 tp_is_empty!18213)))

(declare-fun b!894810 () Bool)

(assert (=> b!894810 (= e!499901 tp_is_empty!18213)))

(declare-fun mapIsEmpty!28907 () Bool)

(assert (=> mapIsEmpty!28907 mapRes!28907))

(assert (= (and mapNonEmpty!28906 condMapEmpty!28907) mapIsEmpty!28907))

(assert (= (and mapNonEmpty!28906 (not condMapEmpty!28907)) mapNonEmpty!28907))

(assert (= (and mapNonEmpty!28907 ((_ is ValueCellFull!8625) mapValue!28907)) b!894809))

(assert (= (and mapNonEmpty!28906 ((_ is ValueCellFull!8625) mapDefault!28907)) b!894810))

(declare-fun m!832739 () Bool)

(assert (=> mapNonEmpty!28907 m!832739))

(check-sat (not b!894725) (not b!894804) (not b_next!15885) (not b!894738) (not d!110631) (not d!110633) (not b!894762) (not b!894781) (not bm!39733) (not b!894761) (not b!894736) b_and!26195 (not b!894751) (not b!894726) (not bm!39727) (not b!894727) tp_is_empty!18213 (not bm!39730) (not mapNonEmpty!28907) (not d!110635))
(check-sat b_and!26195 (not b_next!15885))
