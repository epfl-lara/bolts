; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76172 () Bool)

(assert start!76172)

(declare-fun b!894365 () Bool)

(declare-fun b_free!15873 () Bool)

(declare-fun b_next!15873 () Bool)

(assert (=> b!894365 (= b_free!15873 (not b_next!15873))))

(declare-fun tp!55608 () Bool)

(declare-fun b_and!26183 () Bool)

(assert (=> b!894365 (= tp!55608 b_and!26183)))

(declare-fun b!894360 () Bool)

(declare-fun e!499588 () Bool)

(declare-fun tp_is_empty!18201 () Bool)

(assert (=> b!894360 (= e!499588 tp_is_empty!18201)))

(declare-fun res!605381 () Bool)

(declare-fun e!499590 () Bool)

(assert (=> start!76172 (=> (not res!605381) (not e!499590))))

(declare-datatypes ((array!52378 0))(
  ( (array!52379 (arr!25186 (Array (_ BitVec 32) (_ BitVec 64))) (size!25633 (_ BitVec 32))) )
))
(declare-datatypes ((V!29233 0))(
  ( (V!29234 (val!9151 Int)) )
))
(declare-datatypes ((ValueCell!8619 0))(
  ( (ValueCellFull!8619 (v!11638 V!29233)) (EmptyCell!8619) )
))
(declare-datatypes ((array!52380 0))(
  ( (array!52381 (arr!25187 (Array (_ BitVec 32) ValueCell!8619)) (size!25634 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4254 0))(
  ( (LongMapFixedSize!4255 (defaultEntry!5339 Int) (mask!25891 (_ BitVec 32)) (extraKeys!5035 (_ BitVec 32)) (zeroValue!5139 V!29233) (minValue!5139 V!29233) (_size!2182 (_ BitVec 32)) (_keys!10032 array!52378) (_values!5326 array!52380) (_vacant!2182 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4254)

(declare-fun valid!1634 (LongMapFixedSize!4254) Bool)

(assert (=> start!76172 (= res!605381 (valid!1634 thiss!1181))))

(assert (=> start!76172 e!499590))

(declare-fun e!499587 () Bool)

(assert (=> start!76172 e!499587))

(assert (=> start!76172 true))

(declare-fun b!894361 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!894361 (= e!499590 (not (validMask!0 (mask!25891 thiss!1181))))))

(declare-datatypes ((SeekEntryResult!8860 0))(
  ( (MissingZero!8860 (index!37810 (_ BitVec 32))) (Found!8860 (index!37811 (_ BitVec 32))) (Intermediate!8860 (undefined!9672 Bool) (index!37812 (_ BitVec 32)) (x!76033 (_ BitVec 32))) (Undefined!8860) (MissingVacant!8860 (index!37813 (_ BitVec 32))) )
))
(declare-fun lt!404235 () SeekEntryResult!8860)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52378 (_ BitVec 32)) SeekEntryResult!8860)

(assert (=> b!894361 (= lt!404235 (seekEntry!0 key!785 (_keys!10032 thiss!1181) (mask!25891 thiss!1181)))))

(declare-fun mapIsEmpty!28875 () Bool)

(declare-fun mapRes!28875 () Bool)

(assert (=> mapIsEmpty!28875 mapRes!28875))

(declare-fun b!894362 () Bool)

(declare-fun e!499591 () Bool)

(assert (=> b!894362 (= e!499591 (and e!499588 mapRes!28875))))

(declare-fun condMapEmpty!28875 () Bool)

(declare-fun mapDefault!28875 () ValueCell!8619)

(assert (=> b!894362 (= condMapEmpty!28875 (= (arr!25187 (_values!5326 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8619)) mapDefault!28875)))))

(declare-fun b!894363 () Bool)

(declare-fun res!605380 () Bool)

(assert (=> b!894363 (=> (not res!605380) (not e!499590))))

(assert (=> b!894363 (= res!605380 (not (= key!785 (bvneg key!785))))))

(declare-fun b!894364 () Bool)

(declare-fun e!499592 () Bool)

(assert (=> b!894364 (= e!499592 tp_is_empty!18201)))

(declare-fun array_inv!19756 (array!52378) Bool)

(declare-fun array_inv!19757 (array!52380) Bool)

(assert (=> b!894365 (= e!499587 (and tp!55608 tp_is_empty!18201 (array_inv!19756 (_keys!10032 thiss!1181)) (array_inv!19757 (_values!5326 thiss!1181)) e!499591))))

(declare-fun mapNonEmpty!28875 () Bool)

(declare-fun tp!55607 () Bool)

(assert (=> mapNonEmpty!28875 (= mapRes!28875 (and tp!55607 e!499592))))

(declare-fun mapValue!28875 () ValueCell!8619)

(declare-fun mapRest!28875 () (Array (_ BitVec 32) ValueCell!8619))

(declare-fun mapKey!28875 () (_ BitVec 32))

(assert (=> mapNonEmpty!28875 (= (arr!25187 (_values!5326 thiss!1181)) (store mapRest!28875 mapKey!28875 mapValue!28875))))

(assert (= (and start!76172 res!605381) b!894363))

(assert (= (and b!894363 res!605380) b!894361))

(assert (= (and b!894362 condMapEmpty!28875) mapIsEmpty!28875))

(assert (= (and b!894362 (not condMapEmpty!28875)) mapNonEmpty!28875))

(get-info :version)

(assert (= (and mapNonEmpty!28875 ((_ is ValueCellFull!8619) mapValue!28875)) b!894364))

(assert (= (and b!894362 ((_ is ValueCellFull!8619) mapDefault!28875)) b!894360))

(assert (= b!894365 b!894362))

(assert (= start!76172 b!894365))

(declare-fun m!832509 () Bool)

(assert (=> start!76172 m!832509))

(declare-fun m!832511 () Bool)

(assert (=> b!894361 m!832511))

(declare-fun m!832513 () Bool)

(assert (=> b!894361 m!832513))

(declare-fun m!832515 () Bool)

(assert (=> b!894365 m!832515))

(declare-fun m!832517 () Bool)

(assert (=> b!894365 m!832517))

(declare-fun m!832519 () Bool)

(assert (=> mapNonEmpty!28875 m!832519))

(check-sat (not b!894365) tp_is_empty!18201 (not mapNonEmpty!28875) (not b_next!15873) (not start!76172) (not b!894361) b_and!26183)
(check-sat b_and!26183 (not b_next!15873))
(get-model)

(declare-fun d!110577 () Bool)

(declare-fun res!605394 () Bool)

(declare-fun e!499613 () Bool)

(assert (=> d!110577 (=> (not res!605394) (not e!499613))))

(declare-fun simpleValid!299 (LongMapFixedSize!4254) Bool)

(assert (=> d!110577 (= res!605394 (simpleValid!299 thiss!1181))))

(assert (=> d!110577 (= (valid!1634 thiss!1181) e!499613)))

(declare-fun b!894390 () Bool)

(declare-fun res!605395 () Bool)

(assert (=> b!894390 (=> (not res!605395) (not e!499613))))

(declare-fun arrayCountValidKeys!0 (array!52378 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!894390 (= res!605395 (= (arrayCountValidKeys!0 (_keys!10032 thiss!1181) #b00000000000000000000000000000000 (size!25633 (_keys!10032 thiss!1181))) (_size!2182 thiss!1181)))))

(declare-fun b!894391 () Bool)

(declare-fun res!605396 () Bool)

(assert (=> b!894391 (=> (not res!605396) (not e!499613))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52378 (_ BitVec 32)) Bool)

(assert (=> b!894391 (= res!605396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10032 thiss!1181) (mask!25891 thiss!1181)))))

(declare-fun b!894392 () Bool)

(declare-datatypes ((List!17887 0))(
  ( (Nil!17884) (Cons!17883 (h!19016 (_ BitVec 64)) (t!25234 List!17887)) )
))
(declare-fun arrayNoDuplicates!0 (array!52378 (_ BitVec 32) List!17887) Bool)

(assert (=> b!894392 (= e!499613 (arrayNoDuplicates!0 (_keys!10032 thiss!1181) #b00000000000000000000000000000000 Nil!17884))))

(assert (= (and d!110577 res!605394) b!894390))

(assert (= (and b!894390 res!605395) b!894391))

(assert (= (and b!894391 res!605396) b!894392))

(declare-fun m!832533 () Bool)

(assert (=> d!110577 m!832533))

(declare-fun m!832535 () Bool)

(assert (=> b!894390 m!832535))

(declare-fun m!832537 () Bool)

(assert (=> b!894391 m!832537))

(declare-fun m!832539 () Bool)

(assert (=> b!894392 m!832539))

(assert (=> start!76172 d!110577))

(declare-fun d!110579 () Bool)

(assert (=> d!110579 (= (validMask!0 (mask!25891 thiss!1181)) (and (or (= (mask!25891 thiss!1181) #b00000000000000000000000000000111) (= (mask!25891 thiss!1181) #b00000000000000000000000000001111) (= (mask!25891 thiss!1181) #b00000000000000000000000000011111) (= (mask!25891 thiss!1181) #b00000000000000000000000000111111) (= (mask!25891 thiss!1181) #b00000000000000000000000001111111) (= (mask!25891 thiss!1181) #b00000000000000000000000011111111) (= (mask!25891 thiss!1181) #b00000000000000000000000111111111) (= (mask!25891 thiss!1181) #b00000000000000000000001111111111) (= (mask!25891 thiss!1181) #b00000000000000000000011111111111) (= (mask!25891 thiss!1181) #b00000000000000000000111111111111) (= (mask!25891 thiss!1181) #b00000000000000000001111111111111) (= (mask!25891 thiss!1181) #b00000000000000000011111111111111) (= (mask!25891 thiss!1181) #b00000000000000000111111111111111) (= (mask!25891 thiss!1181) #b00000000000000001111111111111111) (= (mask!25891 thiss!1181) #b00000000000000011111111111111111) (= (mask!25891 thiss!1181) #b00000000000000111111111111111111) (= (mask!25891 thiss!1181) #b00000000000001111111111111111111) (= (mask!25891 thiss!1181) #b00000000000011111111111111111111) (= (mask!25891 thiss!1181) #b00000000000111111111111111111111) (= (mask!25891 thiss!1181) #b00000000001111111111111111111111) (= (mask!25891 thiss!1181) #b00000000011111111111111111111111) (= (mask!25891 thiss!1181) #b00000000111111111111111111111111) (= (mask!25891 thiss!1181) #b00000001111111111111111111111111) (= (mask!25891 thiss!1181) #b00000011111111111111111111111111) (= (mask!25891 thiss!1181) #b00000111111111111111111111111111) (= (mask!25891 thiss!1181) #b00001111111111111111111111111111) (= (mask!25891 thiss!1181) #b00011111111111111111111111111111) (= (mask!25891 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!25891 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!894361 d!110579))

(declare-fun b!894405 () Bool)

(declare-fun e!499621 () SeekEntryResult!8860)

(declare-fun lt!404247 () SeekEntryResult!8860)

(assert (=> b!894405 (= e!499621 (MissingZero!8860 (index!37812 lt!404247)))))

(declare-fun b!894406 () Bool)

(declare-fun e!499622 () SeekEntryResult!8860)

(assert (=> b!894406 (= e!499622 (Found!8860 (index!37812 lt!404247)))))

(declare-fun b!894407 () Bool)

(declare-fun e!499620 () SeekEntryResult!8860)

(assert (=> b!894407 (= e!499620 Undefined!8860)))

(declare-fun d!110581 () Bool)

(declare-fun lt!404248 () SeekEntryResult!8860)

(assert (=> d!110581 (and (or ((_ is MissingVacant!8860) lt!404248) (not ((_ is Found!8860) lt!404248)) (and (bvsge (index!37811 lt!404248) #b00000000000000000000000000000000) (bvslt (index!37811 lt!404248) (size!25633 (_keys!10032 thiss!1181))))) (not ((_ is MissingVacant!8860) lt!404248)) (or (not ((_ is Found!8860) lt!404248)) (= (select (arr!25186 (_keys!10032 thiss!1181)) (index!37811 lt!404248)) key!785)))))

(assert (=> d!110581 (= lt!404248 e!499620)))

(declare-fun c!94326 () Bool)

(assert (=> d!110581 (= c!94326 (and ((_ is Intermediate!8860) lt!404247) (undefined!9672 lt!404247)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52378 (_ BitVec 32)) SeekEntryResult!8860)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110581 (= lt!404247 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25891 thiss!1181)) key!785 (_keys!10032 thiss!1181) (mask!25891 thiss!1181)))))

(assert (=> d!110581 (validMask!0 (mask!25891 thiss!1181))))

(assert (=> d!110581 (= (seekEntry!0 key!785 (_keys!10032 thiss!1181) (mask!25891 thiss!1181)) lt!404248)))

(declare-fun b!894408 () Bool)

(assert (=> b!894408 (= e!499620 e!499622)))

(declare-fun lt!404249 () (_ BitVec 64))

(assert (=> b!894408 (= lt!404249 (select (arr!25186 (_keys!10032 thiss!1181)) (index!37812 lt!404247)))))

(declare-fun c!94325 () Bool)

(assert (=> b!894408 (= c!94325 (= lt!404249 key!785))))

(declare-fun b!894409 () Bool)

(declare-fun c!94327 () Bool)

(assert (=> b!894409 (= c!94327 (= lt!404249 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!894409 (= e!499622 e!499621)))

(declare-fun b!894410 () Bool)

(declare-fun lt!404250 () SeekEntryResult!8860)

(assert (=> b!894410 (= e!499621 (ite ((_ is MissingVacant!8860) lt!404250) (MissingZero!8860 (index!37813 lt!404250)) lt!404250))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52378 (_ BitVec 32)) SeekEntryResult!8860)

(assert (=> b!894410 (= lt!404250 (seekKeyOrZeroReturnVacant!0 (x!76033 lt!404247) (index!37812 lt!404247) (index!37812 lt!404247) key!785 (_keys!10032 thiss!1181) (mask!25891 thiss!1181)))))

(assert (= (and d!110581 c!94326) b!894407))

(assert (= (and d!110581 (not c!94326)) b!894408))

(assert (= (and b!894408 c!94325) b!894406))

(assert (= (and b!894408 (not c!94325)) b!894409))

(assert (= (and b!894409 c!94327) b!894405))

(assert (= (and b!894409 (not c!94327)) b!894410))

(declare-fun m!832541 () Bool)

(assert (=> d!110581 m!832541))

(declare-fun m!832543 () Bool)

(assert (=> d!110581 m!832543))

(assert (=> d!110581 m!832543))

(declare-fun m!832545 () Bool)

(assert (=> d!110581 m!832545))

(assert (=> d!110581 m!832511))

(declare-fun m!832547 () Bool)

(assert (=> b!894408 m!832547))

(declare-fun m!832549 () Bool)

(assert (=> b!894410 m!832549))

(assert (=> b!894361 d!110581))

(declare-fun d!110583 () Bool)

(assert (=> d!110583 (= (array_inv!19756 (_keys!10032 thiss!1181)) (bvsge (size!25633 (_keys!10032 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!894365 d!110583))

(declare-fun d!110585 () Bool)

(assert (=> d!110585 (= (array_inv!19757 (_values!5326 thiss!1181)) (bvsge (size!25634 (_values!5326 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!894365 d!110585))

(declare-fun mapIsEmpty!28881 () Bool)

(declare-fun mapRes!28881 () Bool)

(assert (=> mapIsEmpty!28881 mapRes!28881))

(declare-fun condMapEmpty!28881 () Bool)

(declare-fun mapDefault!28881 () ValueCell!8619)

(assert (=> mapNonEmpty!28875 (= condMapEmpty!28881 (= mapRest!28875 ((as const (Array (_ BitVec 32) ValueCell!8619)) mapDefault!28881)))))

(declare-fun e!499627 () Bool)

(assert (=> mapNonEmpty!28875 (= tp!55607 (and e!499627 mapRes!28881))))

(declare-fun mapNonEmpty!28881 () Bool)

(declare-fun tp!55617 () Bool)

(declare-fun e!499628 () Bool)

(assert (=> mapNonEmpty!28881 (= mapRes!28881 (and tp!55617 e!499628))))

(declare-fun mapRest!28881 () (Array (_ BitVec 32) ValueCell!8619))

(declare-fun mapKey!28881 () (_ BitVec 32))

(declare-fun mapValue!28881 () ValueCell!8619)

(assert (=> mapNonEmpty!28881 (= mapRest!28875 (store mapRest!28881 mapKey!28881 mapValue!28881))))

(declare-fun b!894417 () Bool)

(assert (=> b!894417 (= e!499628 tp_is_empty!18201)))

(declare-fun b!894418 () Bool)

(assert (=> b!894418 (= e!499627 tp_is_empty!18201)))

(assert (= (and mapNonEmpty!28875 condMapEmpty!28881) mapIsEmpty!28881))

(assert (= (and mapNonEmpty!28875 (not condMapEmpty!28881)) mapNonEmpty!28881))

(assert (= (and mapNonEmpty!28881 ((_ is ValueCellFull!8619) mapValue!28881)) b!894417))

(assert (= (and mapNonEmpty!28875 ((_ is ValueCellFull!8619) mapDefault!28881)) b!894418))

(declare-fun m!832551 () Bool)

(assert (=> mapNonEmpty!28881 m!832551))

(check-sat b_and!26183 tp_is_empty!18201 (not b!894390) (not d!110581) (not b!894410) (not d!110577) (not b_next!15873) (not b!894391) (not mapNonEmpty!28881) (not b!894392))
(check-sat b_and!26183 (not b_next!15873))
