; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76188 () Bool)

(assert start!76188)

(declare-fun b!894458 () Bool)

(declare-fun b_free!15879 () Bool)

(declare-fun b_next!15879 () Bool)

(assert (=> b!894458 (= b_free!15879 (not b_next!15879))))

(declare-fun tp!55629 () Bool)

(declare-fun b_and!26189 () Bool)

(assert (=> b!894458 (= tp!55629 b_and!26189)))

(declare-fun mapIsEmpty!28887 () Bool)

(declare-fun mapRes!28887 () Bool)

(assert (=> mapIsEmpty!28887 mapRes!28887))

(declare-fun b!894454 () Bool)

(declare-fun e!499664 () Bool)

(declare-fun e!499668 () Bool)

(assert (=> b!894454 (= e!499664 (and e!499668 mapRes!28887))))

(declare-fun condMapEmpty!28887 () Bool)

(declare-datatypes ((array!52392 0))(
  ( (array!52393 (arr!25192 (Array (_ BitVec 32) (_ BitVec 64))) (size!25639 (_ BitVec 32))) )
))
(declare-datatypes ((V!29241 0))(
  ( (V!29242 (val!9154 Int)) )
))
(declare-datatypes ((ValueCell!8622 0))(
  ( (ValueCellFull!8622 (v!11641 V!29241)) (EmptyCell!8622) )
))
(declare-datatypes ((array!52394 0))(
  ( (array!52395 (arr!25193 (Array (_ BitVec 32) ValueCell!8622)) (size!25640 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4260 0))(
  ( (LongMapFixedSize!4261 (defaultEntry!5342 Int) (mask!25898 (_ BitVec 32)) (extraKeys!5038 (_ BitVec 32)) (zeroValue!5142 V!29241) (minValue!5142 V!29241) (_size!2185 (_ BitVec 32)) (_keys!10036 array!52392) (_values!5329 array!52394) (_vacant!2185 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4260)

(declare-fun mapDefault!28887 () ValueCell!8622)

(assert (=> b!894454 (= condMapEmpty!28887 (= (arr!25193 (_values!5329 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8622)) mapDefault!28887)))))

(declare-fun b!894455 () Bool)

(declare-fun e!499666 () Bool)

(declare-fun tp_is_empty!18207 () Bool)

(assert (=> b!894455 (= e!499666 tp_is_empty!18207)))

(declare-fun b!894456 () Bool)

(declare-fun e!499665 () Bool)

(declare-fun e!499669 () Bool)

(assert (=> b!894456 (= e!499665 e!499669)))

(declare-fun res!605414 () Bool)

(assert (=> b!894456 (=> (not res!605414) (not e!499669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!894456 (= res!605414 (validMask!0 (mask!25898 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8862 0))(
  ( (MissingZero!8862 (index!37818 (_ BitVec 32))) (Found!8862 (index!37819 (_ BitVec 32))) (Intermediate!8862 (undefined!9674 Bool) (index!37820 (_ BitVec 32)) (x!76051 (_ BitVec 32))) (Undefined!8862) (MissingVacant!8862 (index!37821 (_ BitVec 32))) )
))
(declare-fun lt!404256 () SeekEntryResult!8862)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52392 (_ BitVec 32)) SeekEntryResult!8862)

(assert (=> b!894456 (= lt!404256 (seekEntry!0 key!785 (_keys!10036 thiss!1181) (mask!25898 thiss!1181)))))

(declare-fun res!605412 () Bool)

(assert (=> start!76188 (=> (not res!605412) (not e!499665))))

(declare-fun valid!1636 (LongMapFixedSize!4260) Bool)

(assert (=> start!76188 (= res!605412 (valid!1636 thiss!1181))))

(assert (=> start!76188 e!499665))

(declare-fun e!499667 () Bool)

(assert (=> start!76188 e!499667))

(assert (=> start!76188 true))

(declare-fun b!894457 () Bool)

(declare-fun res!605413 () Bool)

(assert (=> b!894457 (=> (not res!605413) (not e!499665))))

(assert (=> b!894457 (= res!605413 (not (= key!785 (bvneg key!785))))))

(declare-fun mapNonEmpty!28887 () Bool)

(declare-fun tp!55628 () Bool)

(assert (=> mapNonEmpty!28887 (= mapRes!28887 (and tp!55628 e!499666))))

(declare-fun mapRest!28887 () (Array (_ BitVec 32) ValueCell!8622))

(declare-fun mapValue!28887 () ValueCell!8622)

(declare-fun mapKey!28887 () (_ BitVec 32))

(assert (=> mapNonEmpty!28887 (= (arr!25193 (_values!5329 thiss!1181)) (store mapRest!28887 mapKey!28887 mapValue!28887))))

(declare-fun array_inv!19760 (array!52392) Bool)

(declare-fun array_inv!19761 (array!52394) Bool)

(assert (=> b!894458 (= e!499667 (and tp!55629 tp_is_empty!18207 (array_inv!19760 (_keys!10036 thiss!1181)) (array_inv!19761 (_values!5329 thiss!1181)) e!499664))))

(declare-fun b!894459 () Bool)

(assert (=> b!894459 (= e!499668 tp_is_empty!18207)))

(declare-fun b!894460 () Bool)

(assert (=> b!894460 (= e!499669 (not (= (size!25640 (_values!5329 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25898 thiss!1181)))))))

(assert (= (and start!76188 res!605412) b!894457))

(assert (= (and b!894457 res!605413) b!894456))

(assert (= (and b!894456 res!605414) b!894460))

(assert (= (and b!894454 condMapEmpty!28887) mapIsEmpty!28887))

(assert (= (and b!894454 (not condMapEmpty!28887)) mapNonEmpty!28887))

(get-info :version)

(assert (= (and mapNonEmpty!28887 ((_ is ValueCellFull!8622) mapValue!28887)) b!894455))

(assert (= (and b!894454 ((_ is ValueCellFull!8622) mapDefault!28887)) b!894459))

(assert (= b!894458 b!894454))

(assert (= start!76188 b!894458))

(declare-fun m!832565 () Bool)

(assert (=> b!894456 m!832565))

(declare-fun m!832567 () Bool)

(assert (=> b!894456 m!832567))

(declare-fun m!832569 () Bool)

(assert (=> start!76188 m!832569))

(declare-fun m!832571 () Bool)

(assert (=> mapNonEmpty!28887 m!832571))

(declare-fun m!832573 () Bool)

(assert (=> b!894458 m!832573))

(declare-fun m!832575 () Bool)

(assert (=> b!894458 m!832575))

(check-sat (not b!894458) (not b!894456) (not start!76188) (not mapNonEmpty!28887) (not b_next!15879) tp_is_empty!18207 b_and!26189)
(check-sat b_and!26189 (not b_next!15879))
(get-model)

(declare-fun d!110589 () Bool)

(assert (=> d!110589 (= (validMask!0 (mask!25898 thiss!1181)) (and (or (= (mask!25898 thiss!1181) #b00000000000000000000000000000111) (= (mask!25898 thiss!1181) #b00000000000000000000000000001111) (= (mask!25898 thiss!1181) #b00000000000000000000000000011111) (= (mask!25898 thiss!1181) #b00000000000000000000000000111111) (= (mask!25898 thiss!1181) #b00000000000000000000000001111111) (= (mask!25898 thiss!1181) #b00000000000000000000000011111111) (= (mask!25898 thiss!1181) #b00000000000000000000000111111111) (= (mask!25898 thiss!1181) #b00000000000000000000001111111111) (= (mask!25898 thiss!1181) #b00000000000000000000011111111111) (= (mask!25898 thiss!1181) #b00000000000000000000111111111111) (= (mask!25898 thiss!1181) #b00000000000000000001111111111111) (= (mask!25898 thiss!1181) #b00000000000000000011111111111111) (= (mask!25898 thiss!1181) #b00000000000000000111111111111111) (= (mask!25898 thiss!1181) #b00000000000000001111111111111111) (= (mask!25898 thiss!1181) #b00000000000000011111111111111111) (= (mask!25898 thiss!1181) #b00000000000000111111111111111111) (= (mask!25898 thiss!1181) #b00000000000001111111111111111111) (= (mask!25898 thiss!1181) #b00000000000011111111111111111111) (= (mask!25898 thiss!1181) #b00000000000111111111111111111111) (= (mask!25898 thiss!1181) #b00000000001111111111111111111111) (= (mask!25898 thiss!1181) #b00000000011111111111111111111111) (= (mask!25898 thiss!1181) #b00000000111111111111111111111111) (= (mask!25898 thiss!1181) #b00000001111111111111111111111111) (= (mask!25898 thiss!1181) #b00000011111111111111111111111111) (= (mask!25898 thiss!1181) #b00000111111111111111111111111111) (= (mask!25898 thiss!1181) #b00001111111111111111111111111111) (= (mask!25898 thiss!1181) #b00011111111111111111111111111111) (= (mask!25898 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!25898 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!894456 d!110589))

(declare-fun d!110591 () Bool)

(declare-fun lt!404271 () SeekEntryResult!8862)

(assert (=> d!110591 (and (or ((_ is MissingVacant!8862) lt!404271) (not ((_ is Found!8862) lt!404271)) (and (bvsge (index!37819 lt!404271) #b00000000000000000000000000000000) (bvslt (index!37819 lt!404271) (size!25639 (_keys!10036 thiss!1181))))) (not ((_ is MissingVacant!8862) lt!404271)) (or (not ((_ is Found!8862) lt!404271)) (= (select (arr!25192 (_keys!10036 thiss!1181)) (index!37819 lt!404271)) key!785)))))

(declare-fun e!499698 () SeekEntryResult!8862)

(assert (=> d!110591 (= lt!404271 e!499698)))

(declare-fun c!94336 () Bool)

(declare-fun lt!404268 () SeekEntryResult!8862)

(assert (=> d!110591 (= c!94336 (and ((_ is Intermediate!8862) lt!404268) (undefined!9674 lt!404268)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52392 (_ BitVec 32)) SeekEntryResult!8862)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110591 (= lt!404268 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25898 thiss!1181)) key!785 (_keys!10036 thiss!1181) (mask!25898 thiss!1181)))))

(assert (=> d!110591 (validMask!0 (mask!25898 thiss!1181))))

(assert (=> d!110591 (= (seekEntry!0 key!785 (_keys!10036 thiss!1181) (mask!25898 thiss!1181)) lt!404271)))

(declare-fun b!894494 () Bool)

(assert (=> b!894494 (= e!499698 Undefined!8862)))

(declare-fun b!894495 () Bool)

(declare-fun c!94335 () Bool)

(declare-fun lt!404270 () (_ BitVec 64))

(assert (=> b!894495 (= c!94335 (= lt!404270 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!499700 () SeekEntryResult!8862)

(declare-fun e!499699 () SeekEntryResult!8862)

(assert (=> b!894495 (= e!499700 e!499699)))

(declare-fun b!894496 () Bool)

(assert (=> b!894496 (= e!499699 (MissingZero!8862 (index!37820 lt!404268)))))

(declare-fun b!894497 () Bool)

(assert (=> b!894497 (= e!499698 e!499700)))

(assert (=> b!894497 (= lt!404270 (select (arr!25192 (_keys!10036 thiss!1181)) (index!37820 lt!404268)))))

(declare-fun c!94334 () Bool)

(assert (=> b!894497 (= c!94334 (= lt!404270 key!785))))

(declare-fun b!894498 () Bool)

(assert (=> b!894498 (= e!499700 (Found!8862 (index!37820 lt!404268)))))

(declare-fun b!894499 () Bool)

(declare-fun lt!404269 () SeekEntryResult!8862)

(assert (=> b!894499 (= e!499699 (ite ((_ is MissingVacant!8862) lt!404269) (MissingZero!8862 (index!37821 lt!404269)) lt!404269))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52392 (_ BitVec 32)) SeekEntryResult!8862)

(assert (=> b!894499 (= lt!404269 (seekKeyOrZeroReturnVacant!0 (x!76051 lt!404268) (index!37820 lt!404268) (index!37820 lt!404268) key!785 (_keys!10036 thiss!1181) (mask!25898 thiss!1181)))))

(assert (= (and d!110591 c!94336) b!894494))

(assert (= (and d!110591 (not c!94336)) b!894497))

(assert (= (and b!894497 c!94334) b!894498))

(assert (= (and b!894497 (not c!94334)) b!894495))

(assert (= (and b!894495 c!94335) b!894496))

(assert (= (and b!894495 (not c!94335)) b!894499))

(declare-fun m!832589 () Bool)

(assert (=> d!110591 m!832589))

(declare-fun m!832591 () Bool)

(assert (=> d!110591 m!832591))

(assert (=> d!110591 m!832591))

(declare-fun m!832593 () Bool)

(assert (=> d!110591 m!832593))

(assert (=> d!110591 m!832565))

(declare-fun m!832595 () Bool)

(assert (=> b!894497 m!832595))

(declare-fun m!832597 () Bool)

(assert (=> b!894499 m!832597))

(assert (=> b!894456 d!110591))

(declare-fun d!110593 () Bool)

(assert (=> d!110593 (= (array_inv!19760 (_keys!10036 thiss!1181)) (bvsge (size!25639 (_keys!10036 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!894458 d!110593))

(declare-fun d!110595 () Bool)

(assert (=> d!110595 (= (array_inv!19761 (_values!5329 thiss!1181)) (bvsge (size!25640 (_values!5329 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!894458 d!110595))

(declare-fun d!110597 () Bool)

(declare-fun res!605430 () Bool)

(declare-fun e!499703 () Bool)

(assert (=> d!110597 (=> (not res!605430) (not e!499703))))

(declare-fun simpleValid!300 (LongMapFixedSize!4260) Bool)

(assert (=> d!110597 (= res!605430 (simpleValid!300 thiss!1181))))

(assert (=> d!110597 (= (valid!1636 thiss!1181) e!499703)))

(declare-fun b!894506 () Bool)

(declare-fun res!605431 () Bool)

(assert (=> b!894506 (=> (not res!605431) (not e!499703))))

(declare-fun arrayCountValidKeys!0 (array!52392 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!894506 (= res!605431 (= (arrayCountValidKeys!0 (_keys!10036 thiss!1181) #b00000000000000000000000000000000 (size!25639 (_keys!10036 thiss!1181))) (_size!2185 thiss!1181)))))

(declare-fun b!894507 () Bool)

(declare-fun res!605432 () Bool)

(assert (=> b!894507 (=> (not res!605432) (not e!499703))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52392 (_ BitVec 32)) Bool)

(assert (=> b!894507 (= res!605432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10036 thiss!1181) (mask!25898 thiss!1181)))))

(declare-fun b!894508 () Bool)

(declare-datatypes ((List!17888 0))(
  ( (Nil!17885) (Cons!17884 (h!19017 (_ BitVec 64)) (t!25235 List!17888)) )
))
(declare-fun arrayNoDuplicates!0 (array!52392 (_ BitVec 32) List!17888) Bool)

(assert (=> b!894508 (= e!499703 (arrayNoDuplicates!0 (_keys!10036 thiss!1181) #b00000000000000000000000000000000 Nil!17885))))

(assert (= (and d!110597 res!605430) b!894506))

(assert (= (and b!894506 res!605431) b!894507))

(assert (= (and b!894507 res!605432) b!894508))

(declare-fun m!832599 () Bool)

(assert (=> d!110597 m!832599))

(declare-fun m!832601 () Bool)

(assert (=> b!894506 m!832601))

(declare-fun m!832603 () Bool)

(assert (=> b!894507 m!832603))

(declare-fun m!832605 () Bool)

(assert (=> b!894508 m!832605))

(assert (=> start!76188 d!110597))

(declare-fun mapNonEmpty!28893 () Bool)

(declare-fun mapRes!28893 () Bool)

(declare-fun tp!55638 () Bool)

(declare-fun e!499709 () Bool)

(assert (=> mapNonEmpty!28893 (= mapRes!28893 (and tp!55638 e!499709))))

(declare-fun mapKey!28893 () (_ BitVec 32))

(declare-fun mapRest!28893 () (Array (_ BitVec 32) ValueCell!8622))

(declare-fun mapValue!28893 () ValueCell!8622)

(assert (=> mapNonEmpty!28893 (= mapRest!28887 (store mapRest!28893 mapKey!28893 mapValue!28893))))

(declare-fun condMapEmpty!28893 () Bool)

(declare-fun mapDefault!28893 () ValueCell!8622)

(assert (=> mapNonEmpty!28887 (= condMapEmpty!28893 (= mapRest!28887 ((as const (Array (_ BitVec 32) ValueCell!8622)) mapDefault!28893)))))

(declare-fun e!499708 () Bool)

(assert (=> mapNonEmpty!28887 (= tp!55628 (and e!499708 mapRes!28893))))

(declare-fun mapIsEmpty!28893 () Bool)

(assert (=> mapIsEmpty!28893 mapRes!28893))

(declare-fun b!894515 () Bool)

(assert (=> b!894515 (= e!499709 tp_is_empty!18207)))

(declare-fun b!894516 () Bool)

(assert (=> b!894516 (= e!499708 tp_is_empty!18207)))

(assert (= (and mapNonEmpty!28887 condMapEmpty!28893) mapIsEmpty!28893))

(assert (= (and mapNonEmpty!28887 (not condMapEmpty!28893)) mapNonEmpty!28893))

(assert (= (and mapNonEmpty!28893 ((_ is ValueCellFull!8622) mapValue!28893)) b!894515))

(assert (= (and mapNonEmpty!28887 ((_ is ValueCellFull!8622) mapDefault!28893)) b!894516))

(declare-fun m!832607 () Bool)

(assert (=> mapNonEmpty!28893 m!832607))

(check-sat (not b!894507) (not d!110591) (not b!894506) (not d!110597) (not b!894508) (not b!894499) (not b_next!15879) (not mapNonEmpty!28893) tp_is_empty!18207 b_and!26189)
(check-sat b_and!26189 (not b_next!15879))
(get-model)

(declare-fun b!894535 () Bool)

(declare-fun e!499723 () Bool)

(declare-fun e!499722 () Bool)

(assert (=> b!894535 (= e!499723 e!499722)))

(declare-fun res!605441 () Bool)

(declare-fun lt!404277 () SeekEntryResult!8862)

(assert (=> b!894535 (= res!605441 (and ((_ is Intermediate!8862) lt!404277) (not (undefined!9674 lt!404277)) (bvslt (x!76051 lt!404277) #b01111111111111111111111111111110) (bvsge (x!76051 lt!404277) #b00000000000000000000000000000000) (bvsge (x!76051 lt!404277) #b00000000000000000000000000000000)))))

(assert (=> b!894535 (=> (not res!605441) (not e!499722))))

(declare-fun b!894536 () Bool)

(declare-fun e!499720 () SeekEntryResult!8862)

(assert (=> b!894536 (= e!499720 (Intermediate!8862 false (toIndex!0 key!785 (mask!25898 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!894537 () Bool)

(assert (=> b!894537 (and (bvsge (index!37820 lt!404277) #b00000000000000000000000000000000) (bvslt (index!37820 lt!404277) (size!25639 (_keys!10036 thiss!1181))))))

(declare-fun res!605439 () Bool)

(assert (=> b!894537 (= res!605439 (= (select (arr!25192 (_keys!10036 thiss!1181)) (index!37820 lt!404277)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!499724 () Bool)

(assert (=> b!894537 (=> res!605439 e!499724)))

(declare-fun b!894538 () Bool)

(declare-fun e!499721 () SeekEntryResult!8862)

(assert (=> b!894538 (= e!499721 (Intermediate!8862 true (toIndex!0 key!785 (mask!25898 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!894539 () Bool)

(assert (=> b!894539 (and (bvsge (index!37820 lt!404277) #b00000000000000000000000000000000) (bvslt (index!37820 lt!404277) (size!25639 (_keys!10036 thiss!1181))))))

(declare-fun res!605440 () Bool)

(assert (=> b!894539 (= res!605440 (= (select (arr!25192 (_keys!10036 thiss!1181)) (index!37820 lt!404277)) key!785))))

(assert (=> b!894539 (=> res!605440 e!499724)))

(assert (=> b!894539 (= e!499722 e!499724)))

(declare-fun b!894540 () Bool)

(assert (=> b!894540 (= e!499721 e!499720)))

(declare-fun c!94345 () Bool)

(declare-fun lt!404276 () (_ BitVec 64))

(assert (=> b!894540 (= c!94345 (or (= lt!404276 key!785) (= (bvadd lt!404276 lt!404276) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!894541 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!894541 (= e!499720 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!785 (mask!25898 thiss!1181)) #b00000000000000000000000000000000 (mask!25898 thiss!1181)) key!785 (_keys!10036 thiss!1181) (mask!25898 thiss!1181)))))

(declare-fun b!894542 () Bool)

(assert (=> b!894542 (= e!499723 (bvsge (x!76051 lt!404277) #b01111111111111111111111111111110))))

(declare-fun d!110599 () Bool)

(assert (=> d!110599 e!499723))

(declare-fun c!94344 () Bool)

(assert (=> d!110599 (= c!94344 (and ((_ is Intermediate!8862) lt!404277) (undefined!9674 lt!404277)))))

(assert (=> d!110599 (= lt!404277 e!499721)))

(declare-fun c!94343 () Bool)

(assert (=> d!110599 (= c!94343 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!110599 (= lt!404276 (select (arr!25192 (_keys!10036 thiss!1181)) (toIndex!0 key!785 (mask!25898 thiss!1181))))))

(assert (=> d!110599 (validMask!0 (mask!25898 thiss!1181))))

(assert (=> d!110599 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25898 thiss!1181)) key!785 (_keys!10036 thiss!1181) (mask!25898 thiss!1181)) lt!404277)))

(declare-fun b!894543 () Bool)

(assert (=> b!894543 (and (bvsge (index!37820 lt!404277) #b00000000000000000000000000000000) (bvslt (index!37820 lt!404277) (size!25639 (_keys!10036 thiss!1181))))))

(assert (=> b!894543 (= e!499724 (= (select (arr!25192 (_keys!10036 thiss!1181)) (index!37820 lt!404277)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!110599 c!94343) b!894538))

(assert (= (and d!110599 (not c!94343)) b!894540))

(assert (= (and b!894540 c!94345) b!894536))

(assert (= (and b!894540 (not c!94345)) b!894541))

(assert (= (and d!110599 c!94344) b!894542))

(assert (= (and d!110599 (not c!94344)) b!894535))

(assert (= (and b!894535 res!605441) b!894539))

(assert (= (and b!894539 (not res!605440)) b!894537))

(assert (= (and b!894537 (not res!605439)) b!894543))

(declare-fun m!832609 () Bool)

(assert (=> b!894537 m!832609))

(assert (=> b!894539 m!832609))

(assert (=> b!894543 m!832609))

(assert (=> d!110599 m!832591))

(declare-fun m!832611 () Bool)

(assert (=> d!110599 m!832611))

(assert (=> d!110599 m!832565))

(assert (=> b!894541 m!832591))

(declare-fun m!832613 () Bool)

(assert (=> b!894541 m!832613))

(assert (=> b!894541 m!832613))

(declare-fun m!832615 () Bool)

(assert (=> b!894541 m!832615))

(assert (=> d!110591 d!110599))

(declare-fun d!110601 () Bool)

(declare-fun lt!404283 () (_ BitVec 32))

(declare-fun lt!404282 () (_ BitVec 32))

(assert (=> d!110601 (= lt!404283 (bvmul (bvxor lt!404282 (bvlshr lt!404282 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!110601 (= lt!404282 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!110601 (and (bvsge (mask!25898 thiss!1181) #b00000000000000000000000000000000) (let ((res!605442 (let ((h!19018 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!76068 (bvmul (bvxor h!19018 (bvlshr h!19018 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!76068 (bvlshr x!76068 #b00000000000000000000000000001101)) (mask!25898 thiss!1181)))))) (and (bvslt res!605442 (bvadd (mask!25898 thiss!1181) #b00000000000000000000000000000001)) (bvsge res!605442 #b00000000000000000000000000000000))))))

(assert (=> d!110601 (= (toIndex!0 key!785 (mask!25898 thiss!1181)) (bvand (bvxor lt!404283 (bvlshr lt!404283 #b00000000000000000000000000001101)) (mask!25898 thiss!1181)))))

(assert (=> d!110591 d!110601))

(assert (=> d!110591 d!110589))

(declare-fun b!894556 () Bool)

(declare-fun e!499733 () SeekEntryResult!8862)

(declare-fun e!499732 () SeekEntryResult!8862)

(assert (=> b!894556 (= e!499733 e!499732)))

(declare-fun c!94353 () Bool)

(declare-fun lt!404288 () (_ BitVec 64))

(assert (=> b!894556 (= c!94353 (= lt!404288 key!785))))

(declare-fun b!894557 () Bool)

(declare-fun e!499731 () SeekEntryResult!8862)

(assert (=> b!894557 (= e!499731 (MissingVacant!8862 (index!37820 lt!404268)))))

(declare-fun b!894558 () Bool)

(assert (=> b!894558 (= e!499732 (Found!8862 (index!37820 lt!404268)))))

(declare-fun b!894559 () Bool)

(assert (=> b!894559 (= e!499733 Undefined!8862)))

(declare-fun b!894560 () Bool)

(declare-fun c!94354 () Bool)

(assert (=> b!894560 (= c!94354 (= lt!404288 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!894560 (= e!499732 e!499731)))

(declare-fun d!110603 () Bool)

(declare-fun lt!404289 () SeekEntryResult!8862)

(assert (=> d!110603 (and (or ((_ is Undefined!8862) lt!404289) (not ((_ is Found!8862) lt!404289)) (and (bvsge (index!37819 lt!404289) #b00000000000000000000000000000000) (bvslt (index!37819 lt!404289) (size!25639 (_keys!10036 thiss!1181))))) (or ((_ is Undefined!8862) lt!404289) ((_ is Found!8862) lt!404289) (not ((_ is MissingVacant!8862) lt!404289)) (not (= (index!37821 lt!404289) (index!37820 lt!404268))) (and (bvsge (index!37821 lt!404289) #b00000000000000000000000000000000) (bvslt (index!37821 lt!404289) (size!25639 (_keys!10036 thiss!1181))))) (or ((_ is Undefined!8862) lt!404289) (ite ((_ is Found!8862) lt!404289) (= (select (arr!25192 (_keys!10036 thiss!1181)) (index!37819 lt!404289)) key!785) (and ((_ is MissingVacant!8862) lt!404289) (= (index!37821 lt!404289) (index!37820 lt!404268)) (= (select (arr!25192 (_keys!10036 thiss!1181)) (index!37821 lt!404289)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!110603 (= lt!404289 e!499733)))

(declare-fun c!94352 () Bool)

(assert (=> d!110603 (= c!94352 (bvsge (x!76051 lt!404268) #b01111111111111111111111111111110))))

(assert (=> d!110603 (= lt!404288 (select (arr!25192 (_keys!10036 thiss!1181)) (index!37820 lt!404268)))))

(assert (=> d!110603 (validMask!0 (mask!25898 thiss!1181))))

(assert (=> d!110603 (= (seekKeyOrZeroReturnVacant!0 (x!76051 lt!404268) (index!37820 lt!404268) (index!37820 lt!404268) key!785 (_keys!10036 thiss!1181) (mask!25898 thiss!1181)) lt!404289)))

(declare-fun b!894561 () Bool)

(assert (=> b!894561 (= e!499731 (seekKeyOrZeroReturnVacant!0 (bvadd (x!76051 lt!404268) #b00000000000000000000000000000001) (nextIndex!0 (index!37820 lt!404268) (x!76051 lt!404268) (mask!25898 thiss!1181)) (index!37820 lt!404268) key!785 (_keys!10036 thiss!1181) (mask!25898 thiss!1181)))))

(assert (= (and d!110603 c!94352) b!894559))

(assert (= (and d!110603 (not c!94352)) b!894556))

(assert (= (and b!894556 c!94353) b!894558))

(assert (= (and b!894556 (not c!94353)) b!894560))

(assert (= (and b!894560 c!94354) b!894557))

(assert (= (and b!894560 (not c!94354)) b!894561))

(declare-fun m!832617 () Bool)

(assert (=> d!110603 m!832617))

(declare-fun m!832619 () Bool)

(assert (=> d!110603 m!832619))

(assert (=> d!110603 m!832595))

(assert (=> d!110603 m!832565))

(declare-fun m!832621 () Bool)

(assert (=> b!894561 m!832621))

(assert (=> b!894561 m!832621))

(declare-fun m!832623 () Bool)

(assert (=> b!894561 m!832623))

(assert (=> b!894499 d!110603))

(declare-fun b!894573 () Bool)

(declare-fun e!499736 () Bool)

(assert (=> b!894573 (= e!499736 (and (bvsge (extraKeys!5038 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5038 thiss!1181) #b00000000000000000000000000000011) (bvsge (_vacant!2185 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun b!894570 () Bool)

(declare-fun res!605453 () Bool)

(assert (=> b!894570 (=> (not res!605453) (not e!499736))))

(assert (=> b!894570 (= res!605453 (and (= (size!25640 (_values!5329 thiss!1181)) (bvadd (mask!25898 thiss!1181) #b00000000000000000000000000000001)) (= (size!25639 (_keys!10036 thiss!1181)) (size!25640 (_values!5329 thiss!1181))) (bvsge (_size!2185 thiss!1181) #b00000000000000000000000000000000) (bvsle (_size!2185 thiss!1181) (bvadd (mask!25898 thiss!1181) #b00000000000000000000000000000001))))))

(declare-fun d!110605 () Bool)

(declare-fun res!605451 () Bool)

(assert (=> d!110605 (=> (not res!605451) (not e!499736))))

(assert (=> d!110605 (= res!605451 (validMask!0 (mask!25898 thiss!1181)))))

(assert (=> d!110605 (= (simpleValid!300 thiss!1181) e!499736)))

(declare-fun b!894571 () Bool)

(declare-fun res!605454 () Bool)

(assert (=> b!894571 (=> (not res!605454) (not e!499736))))

(declare-fun size!25643 (LongMapFixedSize!4260) (_ BitVec 32))

(assert (=> b!894571 (= res!605454 (bvsge (size!25643 thiss!1181) (_size!2185 thiss!1181)))))

(declare-fun b!894572 () Bool)

(declare-fun res!605452 () Bool)

(assert (=> b!894572 (=> (not res!605452) (not e!499736))))

(assert (=> b!894572 (= res!605452 (= (size!25643 thiss!1181) (bvadd (_size!2185 thiss!1181) (bvsdiv (bvadd (extraKeys!5038 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!110605 res!605451) b!894570))

(assert (= (and b!894570 res!605453) b!894571))

(assert (= (and b!894571 res!605454) b!894572))

(assert (= (and b!894572 res!605452) b!894573))

(assert (=> d!110605 m!832565))

(declare-fun m!832625 () Bool)

(assert (=> b!894571 m!832625))

(assert (=> b!894572 m!832625))

(assert (=> d!110597 d!110605))

(declare-fun b!894582 () Bool)

(declare-fun e!499742 () (_ BitVec 32))

(assert (=> b!894582 (= e!499742 #b00000000000000000000000000000000)))

(declare-fun b!894583 () Bool)

(declare-fun e!499741 () (_ BitVec 32))

(declare-fun call!39721 () (_ BitVec 32))

(assert (=> b!894583 (= e!499741 call!39721)))

(declare-fun b!894584 () Bool)

(assert (=> b!894584 (= e!499741 (bvadd #b00000000000000000000000000000001 call!39721))))

(declare-fun d!110607 () Bool)

(declare-fun lt!404292 () (_ BitVec 32))

(assert (=> d!110607 (and (bvsge lt!404292 #b00000000000000000000000000000000) (bvsle lt!404292 (bvsub (size!25639 (_keys!10036 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!110607 (= lt!404292 e!499742)))

(declare-fun c!94360 () Bool)

(assert (=> d!110607 (= c!94360 (bvsge #b00000000000000000000000000000000 (size!25639 (_keys!10036 thiss!1181))))))

(assert (=> d!110607 (and (bvsle #b00000000000000000000000000000000 (size!25639 (_keys!10036 thiss!1181))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!25639 (_keys!10036 thiss!1181)) (size!25639 (_keys!10036 thiss!1181))))))

(assert (=> d!110607 (= (arrayCountValidKeys!0 (_keys!10036 thiss!1181) #b00000000000000000000000000000000 (size!25639 (_keys!10036 thiss!1181))) lt!404292)))

(declare-fun bm!39718 () Bool)

(assert (=> bm!39718 (= call!39721 (arrayCountValidKeys!0 (_keys!10036 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25639 (_keys!10036 thiss!1181))))))

(declare-fun b!894585 () Bool)

(assert (=> b!894585 (= e!499742 e!499741)))

(declare-fun c!94359 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!894585 (= c!94359 (validKeyInArray!0 (select (arr!25192 (_keys!10036 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110607 c!94360) b!894582))

(assert (= (and d!110607 (not c!94360)) b!894585))

(assert (= (and b!894585 c!94359) b!894584))

(assert (= (and b!894585 (not c!94359)) b!894583))

(assert (= (or b!894584 b!894583) bm!39718))

(declare-fun m!832627 () Bool)

(assert (=> bm!39718 m!832627))

(declare-fun m!832629 () Bool)

(assert (=> b!894585 m!832629))

(assert (=> b!894585 m!832629))

(declare-fun m!832631 () Bool)

(assert (=> b!894585 m!832631))

(assert (=> b!894506 d!110607))

(declare-fun b!894594 () Bool)

(declare-fun e!499750 () Bool)

(declare-fun call!39724 () Bool)

(assert (=> b!894594 (= e!499750 call!39724)))

(declare-fun bm!39721 () Bool)

(assert (=> bm!39721 (= call!39724 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10036 thiss!1181) (mask!25898 thiss!1181)))))

(declare-fun b!894595 () Bool)

(declare-fun e!499749 () Bool)

(assert (=> b!894595 (= e!499749 e!499750)))

(declare-fun c!94363 () Bool)

(assert (=> b!894595 (= c!94363 (validKeyInArray!0 (select (arr!25192 (_keys!10036 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!894596 () Bool)

(declare-fun e!499751 () Bool)

(assert (=> b!894596 (= e!499750 e!499751)))

(declare-fun lt!404299 () (_ BitVec 64))

(assert (=> b!894596 (= lt!404299 (select (arr!25192 (_keys!10036 thiss!1181)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30425 0))(
  ( (Unit!30426) )
))
(declare-fun lt!404301 () Unit!30425)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52392 (_ BitVec 64) (_ BitVec 32)) Unit!30425)

(assert (=> b!894596 (= lt!404301 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10036 thiss!1181) lt!404299 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!52392 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!894596 (arrayContainsKey!0 (_keys!10036 thiss!1181) lt!404299 #b00000000000000000000000000000000)))

(declare-fun lt!404300 () Unit!30425)

(assert (=> b!894596 (= lt!404300 lt!404301)))

(declare-fun res!605460 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52392 (_ BitVec 32)) SeekEntryResult!8862)

(assert (=> b!894596 (= res!605460 (= (seekEntryOrOpen!0 (select (arr!25192 (_keys!10036 thiss!1181)) #b00000000000000000000000000000000) (_keys!10036 thiss!1181) (mask!25898 thiss!1181)) (Found!8862 #b00000000000000000000000000000000)))))

(assert (=> b!894596 (=> (not res!605460) (not e!499751))))

(declare-fun b!894597 () Bool)

(assert (=> b!894597 (= e!499751 call!39724)))

(declare-fun d!110609 () Bool)

(declare-fun res!605459 () Bool)

(assert (=> d!110609 (=> res!605459 e!499749)))

(assert (=> d!110609 (= res!605459 (bvsge #b00000000000000000000000000000000 (size!25639 (_keys!10036 thiss!1181))))))

(assert (=> d!110609 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10036 thiss!1181) (mask!25898 thiss!1181)) e!499749)))

(assert (= (and d!110609 (not res!605459)) b!894595))

(assert (= (and b!894595 c!94363) b!894596))

(assert (= (and b!894595 (not c!94363)) b!894594))

(assert (= (and b!894596 res!605460) b!894597))

(assert (= (or b!894597 b!894594) bm!39721))

(declare-fun m!832633 () Bool)

(assert (=> bm!39721 m!832633))

(assert (=> b!894595 m!832629))

(assert (=> b!894595 m!832629))

(assert (=> b!894595 m!832631))

(assert (=> b!894596 m!832629))

(declare-fun m!832635 () Bool)

(assert (=> b!894596 m!832635))

(declare-fun m!832637 () Bool)

(assert (=> b!894596 m!832637))

(assert (=> b!894596 m!832629))

(declare-fun m!832639 () Bool)

(assert (=> b!894596 m!832639))

(assert (=> b!894507 d!110609))

(declare-fun b!894608 () Bool)

(declare-fun e!499760 () Bool)

(declare-fun call!39727 () Bool)

(assert (=> b!894608 (= e!499760 call!39727)))

(declare-fun b!894609 () Bool)

(declare-fun e!499761 () Bool)

(declare-fun e!499762 () Bool)

(assert (=> b!894609 (= e!499761 e!499762)))

(declare-fun res!605469 () Bool)

(assert (=> b!894609 (=> (not res!605469) (not e!499762))))

(declare-fun e!499763 () Bool)

(assert (=> b!894609 (= res!605469 (not e!499763))))

(declare-fun res!605467 () Bool)

(assert (=> b!894609 (=> (not res!605467) (not e!499763))))

(assert (=> b!894609 (= res!605467 (validKeyInArray!0 (select (arr!25192 (_keys!10036 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!894610 () Bool)

(declare-fun contains!4382 (List!17888 (_ BitVec 64)) Bool)

(assert (=> b!894610 (= e!499763 (contains!4382 Nil!17885 (select (arr!25192 (_keys!10036 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!894611 () Bool)

(assert (=> b!894611 (= e!499760 call!39727)))

(declare-fun bm!39724 () Bool)

(declare-fun c!94366 () Bool)

(assert (=> bm!39724 (= call!39727 (arrayNoDuplicates!0 (_keys!10036 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!94366 (Cons!17884 (select (arr!25192 (_keys!10036 thiss!1181)) #b00000000000000000000000000000000) Nil!17885) Nil!17885)))))

(declare-fun d!110611 () Bool)

(declare-fun res!605468 () Bool)

(assert (=> d!110611 (=> res!605468 e!499761)))

(assert (=> d!110611 (= res!605468 (bvsge #b00000000000000000000000000000000 (size!25639 (_keys!10036 thiss!1181))))))

(assert (=> d!110611 (= (arrayNoDuplicates!0 (_keys!10036 thiss!1181) #b00000000000000000000000000000000 Nil!17885) e!499761)))

(declare-fun b!894612 () Bool)

(assert (=> b!894612 (= e!499762 e!499760)))

(assert (=> b!894612 (= c!94366 (validKeyInArray!0 (select (arr!25192 (_keys!10036 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110611 (not res!605468)) b!894609))

(assert (= (and b!894609 res!605467) b!894610))

(assert (= (and b!894609 res!605469) b!894612))

(assert (= (and b!894612 c!94366) b!894608))

(assert (= (and b!894612 (not c!94366)) b!894611))

(assert (= (or b!894608 b!894611) bm!39724))

(assert (=> b!894609 m!832629))

(assert (=> b!894609 m!832629))

(assert (=> b!894609 m!832631))

(assert (=> b!894610 m!832629))

(assert (=> b!894610 m!832629))

(declare-fun m!832641 () Bool)

(assert (=> b!894610 m!832641))

(assert (=> bm!39724 m!832629))

(declare-fun m!832643 () Bool)

(assert (=> bm!39724 m!832643))

(assert (=> b!894612 m!832629))

(assert (=> b!894612 m!832629))

(assert (=> b!894612 m!832631))

(assert (=> b!894508 d!110611))

(declare-fun mapNonEmpty!28894 () Bool)

(declare-fun mapRes!28894 () Bool)

(declare-fun tp!55639 () Bool)

(declare-fun e!499765 () Bool)

(assert (=> mapNonEmpty!28894 (= mapRes!28894 (and tp!55639 e!499765))))

(declare-fun mapKey!28894 () (_ BitVec 32))

(declare-fun mapValue!28894 () ValueCell!8622)

(declare-fun mapRest!28894 () (Array (_ BitVec 32) ValueCell!8622))

(assert (=> mapNonEmpty!28894 (= mapRest!28893 (store mapRest!28894 mapKey!28894 mapValue!28894))))

(declare-fun condMapEmpty!28894 () Bool)

(declare-fun mapDefault!28894 () ValueCell!8622)

(assert (=> mapNonEmpty!28893 (= condMapEmpty!28894 (= mapRest!28893 ((as const (Array (_ BitVec 32) ValueCell!8622)) mapDefault!28894)))))

(declare-fun e!499764 () Bool)

(assert (=> mapNonEmpty!28893 (= tp!55638 (and e!499764 mapRes!28894))))

(declare-fun mapIsEmpty!28894 () Bool)

(assert (=> mapIsEmpty!28894 mapRes!28894))

(declare-fun b!894613 () Bool)

(assert (=> b!894613 (= e!499765 tp_is_empty!18207)))

(declare-fun b!894614 () Bool)

(assert (=> b!894614 (= e!499764 tp_is_empty!18207)))

(assert (= (and mapNonEmpty!28893 condMapEmpty!28894) mapIsEmpty!28894))

(assert (= (and mapNonEmpty!28893 (not condMapEmpty!28894)) mapNonEmpty!28894))

(assert (= (and mapNonEmpty!28894 ((_ is ValueCellFull!8622) mapValue!28894)) b!894613))

(assert (= (and mapNonEmpty!28893 ((_ is ValueCellFull!8622) mapDefault!28894)) b!894614))

(declare-fun m!832645 () Bool)

(assert (=> mapNonEmpty!28894 m!832645))

(check-sat (not b!894595) (not d!110603) (not bm!39721) (not b!894572) (not b!894585) (not b!894612) (not b!894609) (not d!110605) (not mapNonEmpty!28894) (not b!894571) (not bm!39718) (not b!894541) (not bm!39724) (not b!894561) (not d!110599) (not b!894610) (not b!894596) (not b_next!15879) tp_is_empty!18207 b_and!26189)
(check-sat b_and!26189 (not b_next!15879))
