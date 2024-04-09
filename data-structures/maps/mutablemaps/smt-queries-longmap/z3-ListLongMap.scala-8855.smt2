; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107450 () Bool)

(assert start!107450)

(declare-fun b!1272508 () Bool)

(declare-fun b_free!27675 () Bool)

(declare-fun b_next!27675 () Bool)

(assert (=> b!1272508 (= b_free!27675 (not b_next!27675))))

(declare-fun tp!97546 () Bool)

(declare-fun b_and!45741 () Bool)

(assert (=> b!1272508 (= tp!97546 b_and!45741)))

(declare-fun res!846491 () Bool)

(declare-fun e!725873 () Bool)

(assert (=> start!107450 (=> (not res!846491) (not e!725873))))

(declare-datatypes ((V!49253 0))(
  ( (V!49254 (val!16597 Int)) )
))
(declare-datatypes ((ValueCell!15669 0))(
  ( (ValueCellFull!15669 (v!19232 V!49253)) (EmptyCell!15669) )
))
(declare-datatypes ((array!83289 0))(
  ( (array!83290 (arr!40173 (Array (_ BitVec 32) ValueCell!15669)) (size!40712 (_ BitVec 32))) )
))
(declare-datatypes ((array!83291 0))(
  ( (array!83292 (arr!40174 (Array (_ BitVec 32) (_ BitVec 64))) (size!40713 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6102 0))(
  ( (LongMapFixedSize!6103 (defaultEntry!6697 Int) (mask!34444 (_ BitVec 32)) (extraKeys!6376 (_ BitVec 32)) (zeroValue!6482 V!49253) (minValue!6482 V!49253) (_size!3106 (_ BitVec 32)) (_keys!12102 array!83291) (_values!6720 array!83289) (_vacant!3106 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6102)

(declare-fun valid!2245 (LongMapFixedSize!6102) Bool)

(assert (=> start!107450 (= res!846491 (valid!2245 thiss!1559))))

(assert (=> start!107450 e!725873))

(declare-fun e!725877 () Bool)

(assert (=> start!107450 e!725877))

(declare-fun tp_is_empty!33045 () Bool)

(declare-fun e!725874 () Bool)

(declare-fun array_inv!30497 (array!83291) Bool)

(declare-fun array_inv!30498 (array!83289) Bool)

(assert (=> b!1272508 (= e!725877 (and tp!97546 tp_is_empty!33045 (array_inv!30497 (_keys!12102 thiss!1559)) (array_inv!30498 (_values!6720 thiss!1559)) e!725874))))

(declare-fun b!1272509 () Bool)

(declare-fun e!725875 () Bool)

(assert (=> b!1272509 (= e!725875 tp_is_empty!33045)))

(declare-fun b!1272510 () Bool)

(declare-fun e!725878 () Bool)

(assert (=> b!1272510 (= e!725878 tp_is_empty!33045)))

(declare-fun mapNonEmpty!51162 () Bool)

(declare-fun mapRes!51162 () Bool)

(declare-fun tp!97545 () Bool)

(assert (=> mapNonEmpty!51162 (= mapRes!51162 (and tp!97545 e!725878))))

(declare-fun mapValue!51162 () ValueCell!15669)

(declare-fun mapRest!51162 () (Array (_ BitVec 32) ValueCell!15669))

(declare-fun mapKey!51162 () (_ BitVec 32))

(assert (=> mapNonEmpty!51162 (= (arr!40173 (_values!6720 thiss!1559)) (store mapRest!51162 mapKey!51162 mapValue!51162))))

(declare-fun b!1272511 () Bool)

(declare-fun res!846492 () Bool)

(assert (=> b!1272511 (=> (not res!846492) (not e!725873))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1272511 (= res!846492 (validMask!0 (mask!34444 thiss!1559)))))

(declare-fun b!1272512 () Bool)

(assert (=> b!1272512 (= e!725874 (and e!725875 mapRes!51162))))

(declare-fun condMapEmpty!51162 () Bool)

(declare-fun mapDefault!51162 () ValueCell!15669)

(assert (=> b!1272512 (= condMapEmpty!51162 (= (arr!40173 (_values!6720 thiss!1559)) ((as const (Array (_ BitVec 32) ValueCell!15669)) mapDefault!51162)))))

(declare-fun b!1272513 () Bool)

(assert (=> b!1272513 (= e!725873 (and (= (size!40712 (_values!6720 thiss!1559)) (bvadd #b00000000000000000000000000000001 (mask!34444 thiss!1559))) (not (= (size!40713 (_keys!12102 thiss!1559)) (size!40712 (_values!6720 thiss!1559))))))))

(declare-fun mapIsEmpty!51162 () Bool)

(assert (=> mapIsEmpty!51162 mapRes!51162))

(assert (= (and start!107450 res!846491) b!1272511))

(assert (= (and b!1272511 res!846492) b!1272513))

(assert (= (and b!1272512 condMapEmpty!51162) mapIsEmpty!51162))

(assert (= (and b!1272512 (not condMapEmpty!51162)) mapNonEmpty!51162))

(get-info :version)

(assert (= (and mapNonEmpty!51162 ((_ is ValueCellFull!15669) mapValue!51162)) b!1272510))

(assert (= (and b!1272512 ((_ is ValueCellFull!15669) mapDefault!51162)) b!1272509))

(assert (= b!1272508 b!1272512))

(assert (= start!107450 b!1272508))

(declare-fun m!1170139 () Bool)

(assert (=> start!107450 m!1170139))

(declare-fun m!1170141 () Bool)

(assert (=> b!1272508 m!1170141))

(declare-fun m!1170143 () Bool)

(assert (=> b!1272508 m!1170143))

(declare-fun m!1170145 () Bool)

(assert (=> mapNonEmpty!51162 m!1170145))

(declare-fun m!1170147 () Bool)

(assert (=> b!1272511 m!1170147))

(check-sat (not b_next!27675) (not b!1272508) (not start!107450) b_and!45741 (not b!1272511) (not mapNonEmpty!51162) tp_is_empty!33045)
(check-sat b_and!45741 (not b_next!27675))
(get-model)

(declare-fun d!139799 () Bool)

(assert (=> d!139799 (= (array_inv!30497 (_keys!12102 thiss!1559)) (bvsge (size!40713 (_keys!12102 thiss!1559)) #b00000000000000000000000000000000))))

(assert (=> b!1272508 d!139799))

(declare-fun d!139801 () Bool)

(assert (=> d!139801 (= (array_inv!30498 (_values!6720 thiss!1559)) (bvsge (size!40712 (_values!6720 thiss!1559)) #b00000000000000000000000000000000))))

(assert (=> b!1272508 d!139801))

(declare-fun d!139803 () Bool)

(declare-fun res!846505 () Bool)

(declare-fun e!725899 () Bool)

(assert (=> d!139803 (=> (not res!846505) (not e!725899))))

(declare-fun simpleValid!456 (LongMapFixedSize!6102) Bool)

(assert (=> d!139803 (= res!846505 (simpleValid!456 thiss!1559))))

(assert (=> d!139803 (= (valid!2245 thiss!1559) e!725899)))

(declare-fun b!1272538 () Bool)

(declare-fun res!846506 () Bool)

(assert (=> b!1272538 (=> (not res!846506) (not e!725899))))

(declare-fun arrayCountValidKeys!0 (array!83291 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1272538 (= res!846506 (= (arrayCountValidKeys!0 (_keys!12102 thiss!1559) #b00000000000000000000000000000000 (size!40713 (_keys!12102 thiss!1559))) (_size!3106 thiss!1559)))))

(declare-fun b!1272539 () Bool)

(declare-fun res!846507 () Bool)

(assert (=> b!1272539 (=> (not res!846507) (not e!725899))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83291 (_ BitVec 32)) Bool)

(assert (=> b!1272539 (= res!846507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12102 thiss!1559) (mask!34444 thiss!1559)))))

(declare-fun b!1272540 () Bool)

(declare-datatypes ((List!28718 0))(
  ( (Nil!28715) (Cons!28714 (h!29923 (_ BitVec 64)) (t!42258 List!28718)) )
))
(declare-fun arrayNoDuplicates!0 (array!83291 (_ BitVec 32) List!28718) Bool)

(assert (=> b!1272540 (= e!725899 (arrayNoDuplicates!0 (_keys!12102 thiss!1559) #b00000000000000000000000000000000 Nil!28715))))

(assert (= (and d!139803 res!846505) b!1272538))

(assert (= (and b!1272538 res!846506) b!1272539))

(assert (= (and b!1272539 res!846507) b!1272540))

(declare-fun m!1170159 () Bool)

(assert (=> d!139803 m!1170159))

(declare-fun m!1170161 () Bool)

(assert (=> b!1272538 m!1170161))

(declare-fun m!1170163 () Bool)

(assert (=> b!1272539 m!1170163))

(declare-fun m!1170165 () Bool)

(assert (=> b!1272540 m!1170165))

(assert (=> start!107450 d!139803))

(declare-fun d!139805 () Bool)

(assert (=> d!139805 (= (validMask!0 (mask!34444 thiss!1559)) (and (or (= (mask!34444 thiss!1559) #b00000000000000000000000000000111) (= (mask!34444 thiss!1559) #b00000000000000000000000000001111) (= (mask!34444 thiss!1559) #b00000000000000000000000000011111) (= (mask!34444 thiss!1559) #b00000000000000000000000000111111) (= (mask!34444 thiss!1559) #b00000000000000000000000001111111) (= (mask!34444 thiss!1559) #b00000000000000000000000011111111) (= (mask!34444 thiss!1559) #b00000000000000000000000111111111) (= (mask!34444 thiss!1559) #b00000000000000000000001111111111) (= (mask!34444 thiss!1559) #b00000000000000000000011111111111) (= (mask!34444 thiss!1559) #b00000000000000000000111111111111) (= (mask!34444 thiss!1559) #b00000000000000000001111111111111) (= (mask!34444 thiss!1559) #b00000000000000000011111111111111) (= (mask!34444 thiss!1559) #b00000000000000000111111111111111) (= (mask!34444 thiss!1559) #b00000000000000001111111111111111) (= (mask!34444 thiss!1559) #b00000000000000011111111111111111) (= (mask!34444 thiss!1559) #b00000000000000111111111111111111) (= (mask!34444 thiss!1559) #b00000000000001111111111111111111) (= (mask!34444 thiss!1559) #b00000000000011111111111111111111) (= (mask!34444 thiss!1559) #b00000000000111111111111111111111) (= (mask!34444 thiss!1559) #b00000000001111111111111111111111) (= (mask!34444 thiss!1559) #b00000000011111111111111111111111) (= (mask!34444 thiss!1559) #b00000000111111111111111111111111) (= (mask!34444 thiss!1559) #b00000001111111111111111111111111) (= (mask!34444 thiss!1559) #b00000011111111111111111111111111) (= (mask!34444 thiss!1559) #b00000111111111111111111111111111) (= (mask!34444 thiss!1559) #b00001111111111111111111111111111) (= (mask!34444 thiss!1559) #b00011111111111111111111111111111) (= (mask!34444 thiss!1559) #b00111111111111111111111111111111)) (bvsle (mask!34444 thiss!1559) #b00111111111111111111111111111111)))))

(assert (=> b!1272511 d!139805))

(declare-fun condMapEmpty!51168 () Bool)

(declare-fun mapDefault!51168 () ValueCell!15669)

(assert (=> mapNonEmpty!51162 (= condMapEmpty!51168 (= mapRest!51162 ((as const (Array (_ BitVec 32) ValueCell!15669)) mapDefault!51168)))))

(declare-fun e!725904 () Bool)

(declare-fun mapRes!51168 () Bool)

(assert (=> mapNonEmpty!51162 (= tp!97545 (and e!725904 mapRes!51168))))

(declare-fun b!1272548 () Bool)

(assert (=> b!1272548 (= e!725904 tp_is_empty!33045)))

(declare-fun b!1272547 () Bool)

(declare-fun e!725905 () Bool)

(assert (=> b!1272547 (= e!725905 tp_is_empty!33045)))

(declare-fun mapNonEmpty!51168 () Bool)

(declare-fun tp!97555 () Bool)

(assert (=> mapNonEmpty!51168 (= mapRes!51168 (and tp!97555 e!725905))))

(declare-fun mapValue!51168 () ValueCell!15669)

(declare-fun mapKey!51168 () (_ BitVec 32))

(declare-fun mapRest!51168 () (Array (_ BitVec 32) ValueCell!15669))

(assert (=> mapNonEmpty!51168 (= mapRest!51162 (store mapRest!51168 mapKey!51168 mapValue!51168))))

(declare-fun mapIsEmpty!51168 () Bool)

(assert (=> mapIsEmpty!51168 mapRes!51168))

(assert (= (and mapNonEmpty!51162 condMapEmpty!51168) mapIsEmpty!51168))

(assert (= (and mapNonEmpty!51162 (not condMapEmpty!51168)) mapNonEmpty!51168))

(assert (= (and mapNonEmpty!51168 ((_ is ValueCellFull!15669) mapValue!51168)) b!1272547))

(assert (= (and mapNonEmpty!51162 ((_ is ValueCellFull!15669) mapDefault!51168)) b!1272548))

(declare-fun m!1170167 () Bool)

(assert (=> mapNonEmpty!51168 m!1170167))

(check-sat (not b!1272540) (not b!1272539) (not b_next!27675) (not d!139803) tp_is_empty!33045 (not mapNonEmpty!51168) (not b!1272538) b_and!45741)
(check-sat b_and!45741 (not b_next!27675))
(get-model)

(declare-fun bm!62551 () Bool)

(declare-fun call!62554 () Bool)

(declare-fun c!123654 () Bool)

(assert (=> bm!62551 (= call!62554 (arrayNoDuplicates!0 (_keys!12102 thiss!1559) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!123654 (Cons!28714 (select (arr!40174 (_keys!12102 thiss!1559)) #b00000000000000000000000000000000) Nil!28715) Nil!28715)))))

(declare-fun b!1272559 () Bool)

(declare-fun e!725914 () Bool)

(declare-fun e!725915 () Bool)

(assert (=> b!1272559 (= e!725914 e!725915)))

(declare-fun res!846514 () Bool)

(assert (=> b!1272559 (=> (not res!846514) (not e!725915))))

(declare-fun e!725917 () Bool)

(assert (=> b!1272559 (= res!846514 (not e!725917))))

(declare-fun res!846515 () Bool)

(assert (=> b!1272559 (=> (not res!846515) (not e!725917))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1272559 (= res!846515 (validKeyInArray!0 (select (arr!40174 (_keys!12102 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun b!1272560 () Bool)

(declare-fun e!725916 () Bool)

(assert (=> b!1272560 (= e!725916 call!62554)))

(declare-fun d!139807 () Bool)

(declare-fun res!846516 () Bool)

(assert (=> d!139807 (=> res!846516 e!725914)))

(assert (=> d!139807 (= res!846516 (bvsge #b00000000000000000000000000000000 (size!40713 (_keys!12102 thiss!1559))))))

(assert (=> d!139807 (= (arrayNoDuplicates!0 (_keys!12102 thiss!1559) #b00000000000000000000000000000000 Nil!28715) e!725914)))

(declare-fun b!1272561 () Bool)

(assert (=> b!1272561 (= e!725915 e!725916)))

(assert (=> b!1272561 (= c!123654 (validKeyInArray!0 (select (arr!40174 (_keys!12102 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun b!1272562 () Bool)

(declare-fun contains!7688 (List!28718 (_ BitVec 64)) Bool)

(assert (=> b!1272562 (= e!725917 (contains!7688 Nil!28715 (select (arr!40174 (_keys!12102 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun b!1272563 () Bool)

(assert (=> b!1272563 (= e!725916 call!62554)))

(assert (= (and d!139807 (not res!846516)) b!1272559))

(assert (= (and b!1272559 res!846515) b!1272562))

(assert (= (and b!1272559 res!846514) b!1272561))

(assert (= (and b!1272561 c!123654) b!1272563))

(assert (= (and b!1272561 (not c!123654)) b!1272560))

(assert (= (or b!1272563 b!1272560) bm!62551))

(declare-fun m!1170169 () Bool)

(assert (=> bm!62551 m!1170169))

(declare-fun m!1170171 () Bool)

(assert (=> bm!62551 m!1170171))

(assert (=> b!1272559 m!1170169))

(assert (=> b!1272559 m!1170169))

(declare-fun m!1170173 () Bool)

(assert (=> b!1272559 m!1170173))

(assert (=> b!1272561 m!1170169))

(assert (=> b!1272561 m!1170169))

(assert (=> b!1272561 m!1170173))

(assert (=> b!1272562 m!1170169))

(assert (=> b!1272562 m!1170169))

(declare-fun m!1170175 () Bool)

(assert (=> b!1272562 m!1170175))

(assert (=> b!1272540 d!139807))

(declare-fun b!1272572 () Bool)

(declare-fun e!725924 () Bool)

(declare-fun e!725926 () Bool)

(assert (=> b!1272572 (= e!725924 e!725926)))

(declare-fun lt!575011 () (_ BitVec 64))

(assert (=> b!1272572 (= lt!575011 (select (arr!40174 (_keys!12102 thiss!1559)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42266 0))(
  ( (Unit!42267) )
))
(declare-fun lt!575013 () Unit!42266)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83291 (_ BitVec 64) (_ BitVec 32)) Unit!42266)

(assert (=> b!1272572 (= lt!575013 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!12102 thiss!1559) lt!575011 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83291 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1272572 (arrayContainsKey!0 (_keys!12102 thiss!1559) lt!575011 #b00000000000000000000000000000000)))

(declare-fun lt!575012 () Unit!42266)

(assert (=> b!1272572 (= lt!575012 lt!575013)))

(declare-fun res!846522 () Bool)

(declare-datatypes ((SeekEntryResult!9988 0))(
  ( (MissingZero!9988 (index!42322 (_ BitVec 32))) (Found!9988 (index!42323 (_ BitVec 32))) (Intermediate!9988 (undefined!10800 Bool) (index!42324 (_ BitVec 32)) (x!112448 (_ BitVec 32))) (Undefined!9988) (MissingVacant!9988 (index!42325 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83291 (_ BitVec 32)) SeekEntryResult!9988)

(assert (=> b!1272572 (= res!846522 (= (seekEntryOrOpen!0 (select (arr!40174 (_keys!12102 thiss!1559)) #b00000000000000000000000000000000) (_keys!12102 thiss!1559) (mask!34444 thiss!1559)) (Found!9988 #b00000000000000000000000000000000)))))

(assert (=> b!1272572 (=> (not res!846522) (not e!725926))))

(declare-fun d!139809 () Bool)

(declare-fun res!846521 () Bool)

(declare-fun e!725925 () Bool)

(assert (=> d!139809 (=> res!846521 e!725925)))

(assert (=> d!139809 (= res!846521 (bvsge #b00000000000000000000000000000000 (size!40713 (_keys!12102 thiss!1559))))))

(assert (=> d!139809 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12102 thiss!1559) (mask!34444 thiss!1559)) e!725925)))

(declare-fun b!1272573 () Bool)

(declare-fun call!62557 () Bool)

(assert (=> b!1272573 (= e!725926 call!62557)))

(declare-fun bm!62554 () Bool)

(assert (=> bm!62554 (= call!62557 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!12102 thiss!1559) (mask!34444 thiss!1559)))))

(declare-fun b!1272574 () Bool)

(assert (=> b!1272574 (= e!725925 e!725924)))

(declare-fun c!123657 () Bool)

(assert (=> b!1272574 (= c!123657 (validKeyInArray!0 (select (arr!40174 (_keys!12102 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun b!1272575 () Bool)

(assert (=> b!1272575 (= e!725924 call!62557)))

(assert (= (and d!139809 (not res!846521)) b!1272574))

(assert (= (and b!1272574 c!123657) b!1272572))

(assert (= (and b!1272574 (not c!123657)) b!1272575))

(assert (= (and b!1272572 res!846522) b!1272573))

(assert (= (or b!1272573 b!1272575) bm!62554))

(assert (=> b!1272572 m!1170169))

(declare-fun m!1170177 () Bool)

(assert (=> b!1272572 m!1170177))

(declare-fun m!1170179 () Bool)

(assert (=> b!1272572 m!1170179))

(assert (=> b!1272572 m!1170169))

(declare-fun m!1170181 () Bool)

(assert (=> b!1272572 m!1170181))

(declare-fun m!1170183 () Bool)

(assert (=> bm!62554 m!1170183))

(assert (=> b!1272574 m!1170169))

(assert (=> b!1272574 m!1170169))

(assert (=> b!1272574 m!1170173))

(assert (=> b!1272539 d!139809))

(declare-fun b!1272584 () Bool)

(declare-fun res!846532 () Bool)

(declare-fun e!725929 () Bool)

(assert (=> b!1272584 (=> (not res!846532) (not e!725929))))

(assert (=> b!1272584 (= res!846532 (and (= (size!40712 (_values!6720 thiss!1559)) (bvadd (mask!34444 thiss!1559) #b00000000000000000000000000000001)) (= (size!40713 (_keys!12102 thiss!1559)) (size!40712 (_values!6720 thiss!1559))) (bvsge (_size!3106 thiss!1559) #b00000000000000000000000000000000) (bvsle (_size!3106 thiss!1559) (bvadd (mask!34444 thiss!1559) #b00000000000000000000000000000001))))))

(declare-fun d!139811 () Bool)

(declare-fun res!846531 () Bool)

(assert (=> d!139811 (=> (not res!846531) (not e!725929))))

(assert (=> d!139811 (= res!846531 (validMask!0 (mask!34444 thiss!1559)))))

(assert (=> d!139811 (= (simpleValid!456 thiss!1559) e!725929)))

(declare-fun b!1272585 () Bool)

(declare-fun res!846534 () Bool)

(assert (=> b!1272585 (=> (not res!846534) (not e!725929))))

(declare-fun size!40716 (LongMapFixedSize!6102) (_ BitVec 32))

(assert (=> b!1272585 (= res!846534 (bvsge (size!40716 thiss!1559) (_size!3106 thiss!1559)))))

(declare-fun b!1272587 () Bool)

(assert (=> b!1272587 (= e!725929 (and (bvsge (extraKeys!6376 thiss!1559) #b00000000000000000000000000000000) (bvsle (extraKeys!6376 thiss!1559) #b00000000000000000000000000000011) (bvsge (_vacant!3106 thiss!1559) #b00000000000000000000000000000000)))))

(declare-fun b!1272586 () Bool)

(declare-fun res!846533 () Bool)

(assert (=> b!1272586 (=> (not res!846533) (not e!725929))))

(assert (=> b!1272586 (= res!846533 (= (size!40716 thiss!1559) (bvadd (_size!3106 thiss!1559) (bvsdiv (bvadd (extraKeys!6376 thiss!1559) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!139811 res!846531) b!1272584))

(assert (= (and b!1272584 res!846532) b!1272585))

(assert (= (and b!1272585 res!846534) b!1272586))

(assert (= (and b!1272586 res!846533) b!1272587))

(assert (=> d!139811 m!1170147))

(declare-fun m!1170185 () Bool)

(assert (=> b!1272585 m!1170185))

(assert (=> b!1272586 m!1170185))

(assert (=> d!139803 d!139811))

(declare-fun b!1272596 () Bool)

(declare-fun e!725935 () (_ BitVec 32))

(assert (=> b!1272596 (= e!725935 #b00000000000000000000000000000000)))

(declare-fun b!1272597 () Bool)

(declare-fun e!725934 () (_ BitVec 32))

(assert (=> b!1272597 (= e!725935 e!725934)))

(declare-fun c!123663 () Bool)

(assert (=> b!1272597 (= c!123663 (validKeyInArray!0 (select (arr!40174 (_keys!12102 thiss!1559)) #b00000000000000000000000000000000)))))

(declare-fun d!139813 () Bool)

(declare-fun lt!575016 () (_ BitVec 32))

(assert (=> d!139813 (and (bvsge lt!575016 #b00000000000000000000000000000000) (bvsle lt!575016 (bvsub (size!40713 (_keys!12102 thiss!1559)) #b00000000000000000000000000000000)))))

(assert (=> d!139813 (= lt!575016 e!725935)))

(declare-fun c!123662 () Bool)

(assert (=> d!139813 (= c!123662 (bvsge #b00000000000000000000000000000000 (size!40713 (_keys!12102 thiss!1559))))))

(assert (=> d!139813 (and (bvsle #b00000000000000000000000000000000 (size!40713 (_keys!12102 thiss!1559))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!40713 (_keys!12102 thiss!1559)) (size!40713 (_keys!12102 thiss!1559))))))

(assert (=> d!139813 (= (arrayCountValidKeys!0 (_keys!12102 thiss!1559) #b00000000000000000000000000000000 (size!40713 (_keys!12102 thiss!1559))) lt!575016)))

(declare-fun b!1272598 () Bool)

(declare-fun call!62560 () (_ BitVec 32))

(assert (=> b!1272598 (= e!725934 (bvadd #b00000000000000000000000000000001 call!62560))))

(declare-fun b!1272599 () Bool)

(assert (=> b!1272599 (= e!725934 call!62560)))

(declare-fun bm!62557 () Bool)

(assert (=> bm!62557 (= call!62560 (arrayCountValidKeys!0 (_keys!12102 thiss!1559) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!40713 (_keys!12102 thiss!1559))))))

(assert (= (and d!139813 c!123662) b!1272596))

(assert (= (and d!139813 (not c!123662)) b!1272597))

(assert (= (and b!1272597 c!123663) b!1272598))

(assert (= (and b!1272597 (not c!123663)) b!1272599))

(assert (= (or b!1272598 b!1272599) bm!62557))

(assert (=> b!1272597 m!1170169))

(assert (=> b!1272597 m!1170169))

(assert (=> b!1272597 m!1170173))

(declare-fun m!1170187 () Bool)

(assert (=> bm!62557 m!1170187))

(assert (=> b!1272538 d!139813))

(declare-fun condMapEmpty!51169 () Bool)

(declare-fun mapDefault!51169 () ValueCell!15669)

(assert (=> mapNonEmpty!51168 (= condMapEmpty!51169 (= mapRest!51168 ((as const (Array (_ BitVec 32) ValueCell!15669)) mapDefault!51169)))))

(declare-fun e!725936 () Bool)

(declare-fun mapRes!51169 () Bool)

(assert (=> mapNonEmpty!51168 (= tp!97555 (and e!725936 mapRes!51169))))

(declare-fun b!1272601 () Bool)

(assert (=> b!1272601 (= e!725936 tp_is_empty!33045)))

(declare-fun b!1272600 () Bool)

(declare-fun e!725937 () Bool)

(assert (=> b!1272600 (= e!725937 tp_is_empty!33045)))

(declare-fun mapNonEmpty!51169 () Bool)

(declare-fun tp!97556 () Bool)

(assert (=> mapNonEmpty!51169 (= mapRes!51169 (and tp!97556 e!725937))))

(declare-fun mapValue!51169 () ValueCell!15669)

(declare-fun mapKey!51169 () (_ BitVec 32))

(declare-fun mapRest!51169 () (Array (_ BitVec 32) ValueCell!15669))

(assert (=> mapNonEmpty!51169 (= mapRest!51168 (store mapRest!51169 mapKey!51169 mapValue!51169))))

(declare-fun mapIsEmpty!51169 () Bool)

(assert (=> mapIsEmpty!51169 mapRes!51169))

(assert (= (and mapNonEmpty!51168 condMapEmpty!51169) mapIsEmpty!51169))

(assert (= (and mapNonEmpty!51168 (not condMapEmpty!51169)) mapNonEmpty!51169))

(assert (= (and mapNonEmpty!51169 ((_ is ValueCellFull!15669) mapValue!51169)) b!1272600))

(assert (= (and mapNonEmpty!51168 ((_ is ValueCellFull!15669) mapDefault!51169)) b!1272601))

(declare-fun m!1170189 () Bool)

(assert (=> mapNonEmpty!51169 m!1170189))

(check-sat (not d!139811) (not b!1272585) (not b!1272574) (not b!1272561) tp_is_empty!33045 (not b!1272586) (not b!1272597) (not bm!62551) (not bm!62557) (not b!1272572) (not bm!62554) (not b!1272559) (not b!1272562) (not b_next!27675) (not mapNonEmpty!51169) b_and!45741)
(check-sat b_and!45741 (not b_next!27675))
