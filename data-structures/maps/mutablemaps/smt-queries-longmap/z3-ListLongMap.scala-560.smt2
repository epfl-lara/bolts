; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15216 () Bool)

(assert start!15216)

(declare-fun b!146441 () Bool)

(declare-fun b_free!3113 () Bool)

(declare-fun b_next!3113 () Bool)

(assert (=> b!146441 (= b_free!3113 (not b_next!3113))))

(declare-fun tp!11844 () Bool)

(declare-fun b_and!9169 () Bool)

(assert (=> b!146441 (= tp!11844 b_and!9169)))

(declare-fun b!146444 () Bool)

(declare-fun b_free!3115 () Bool)

(declare-fun b_next!3115 () Bool)

(assert (=> b!146444 (= b_free!3115 (not b_next!3115))))

(declare-fun tp!11841 () Bool)

(declare-fun b_and!9171 () Bool)

(assert (=> b!146444 (= tp!11841 b_and!9171)))

(declare-fun b!146427 () Bool)

(declare-fun e!95515 () Bool)

(declare-fun e!95508 () Bool)

(declare-fun mapRes!4992 () Bool)

(assert (=> b!146427 (= e!95515 (and e!95508 mapRes!4992))))

(declare-fun condMapEmpty!4992 () Bool)

(declare-datatypes ((V!3611 0))(
  ( (V!3612 (val!1531 Int)) )
))
(declare-datatypes ((array!4990 0))(
  ( (array!4991 (arr!2356 (Array (_ BitVec 32) (_ BitVec 64))) (size!2632 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1143 0))(
  ( (ValueCellFull!1143 (v!3350 V!3611)) (EmptyCell!1143) )
))
(declare-datatypes ((array!4992 0))(
  ( (array!4993 (arr!2357 (Array (_ BitVec 32) ValueCell!1143)) (size!2633 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1194 0))(
  ( (LongMapFixedSize!1195 (defaultEntry!3013 Int) (mask!7389 (_ BitVec 32)) (extraKeys!2758 (_ BitVec 32)) (zeroValue!2858 V!3611) (minValue!2858 V!3611) (_size!646 (_ BitVec 32)) (_keys!4782 array!4990) (_values!2996 array!4992) (_vacant!646 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1194)

(declare-fun mapDefault!4991 () ValueCell!1143)

(assert (=> b!146427 (= condMapEmpty!4992 (= (arr!2357 (_values!2996 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1143)) mapDefault!4991)))))

(declare-fun res!69661 () Bool)

(declare-fun e!95514 () Bool)

(assert (=> start!15216 (=> (not res!69661) (not e!95514))))

(declare-datatypes ((Cell!976 0))(
  ( (Cell!977 (v!3351 LongMapFixedSize!1194)) )
))
(declare-datatypes ((LongMap!976 0))(
  ( (LongMap!977 (underlying!499 Cell!976)) )
))
(declare-fun thiss!992 () LongMap!976)

(declare-fun valid!581 (LongMap!976) Bool)

(assert (=> start!15216 (= res!69661 (valid!581 thiss!992))))

(assert (=> start!15216 e!95514))

(declare-fun e!95507 () Bool)

(assert (=> start!15216 e!95507))

(assert (=> start!15216 true))

(declare-fun e!95505 () Bool)

(assert (=> start!15216 e!95505))

(declare-fun b!146428 () Bool)

(declare-datatypes ((Unit!4633 0))(
  ( (Unit!4634) )
))
(declare-fun e!95511 () Unit!4633)

(declare-fun Unit!4635 () Unit!4633)

(assert (=> b!146428 (= e!95511 Unit!4635)))

(declare-fun b!146429 () Bool)

(declare-fun res!69663 () Bool)

(assert (=> b!146429 (=> (not res!69663) (not e!95514))))

(assert (=> b!146429 (= res!69663 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7389 newMap!16)) (_size!646 (v!3351 (underlying!499 thiss!992)))))))

(declare-fun b!146430 () Bool)

(declare-fun res!69662 () Bool)

(assert (=> b!146430 (=> (not res!69662) (not e!95514))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!146430 (= res!69662 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2632 (_keys!4782 (v!3351 (underlying!499 thiss!992)))))))))

(declare-fun mapIsEmpty!4991 () Bool)

(assert (=> mapIsEmpty!4991 mapRes!4992))

(declare-fun b!146431 () Bool)

(declare-fun e!95509 () Bool)

(assert (=> b!146431 (= e!95509 (not true))))

(declare-datatypes ((tuple2!2740 0))(
  ( (tuple2!2741 (_1!1380 (_ BitVec 64)) (_2!1380 V!3611)) )
))
(declare-datatypes ((List!1794 0))(
  ( (Nil!1791) (Cons!1790 (h!2398 tuple2!2740) (t!6499 List!1794)) )
))
(declare-datatypes ((ListLongMap!1777 0))(
  ( (ListLongMap!1778 (toList!904 List!1794)) )
))
(declare-fun lt!77013 () ListLongMap!1777)

(declare-fun lt!77016 () tuple2!2740)

(declare-fun lt!77009 () tuple2!2740)

(declare-fun +!179 (ListLongMap!1777 tuple2!2740) ListLongMap!1777)

(assert (=> b!146431 (= (+!179 (+!179 lt!77013 lt!77016) lt!77009) (+!179 (+!179 lt!77013 lt!77009) lt!77016))))

(assert (=> b!146431 (= lt!77009 (tuple2!2741 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2858 (v!3351 (underlying!499 thiss!992)))))))

(declare-fun lt!77011 () V!3611)

(assert (=> b!146431 (= lt!77016 (tuple2!2741 (select (arr!2356 (_keys!4782 (v!3351 (underlying!499 thiss!992)))) from!355) lt!77011))))

(declare-fun lt!77014 () Unit!4633)

(declare-fun addCommutativeForDiffKeys!72 (ListLongMap!1777 (_ BitVec 64) V!3611 (_ BitVec 64) V!3611) Unit!4633)

(assert (=> b!146431 (= lt!77014 (addCommutativeForDiffKeys!72 lt!77013 (select (arr!2356 (_keys!4782 (v!3351 (underlying!499 thiss!992)))) from!355) lt!77011 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2858 (v!3351 (underlying!499 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!148 (array!4990 array!4992 (_ BitVec 32) (_ BitVec 32) V!3611 V!3611 (_ BitVec 32) Int) ListLongMap!1777)

(assert (=> b!146431 (= lt!77013 (getCurrentListMapNoExtraKeys!148 (_keys!4782 (v!3351 (underlying!499 thiss!992))) (_values!2996 (v!3351 (underlying!499 thiss!992))) (mask!7389 (v!3351 (underlying!499 thiss!992))) (extraKeys!2758 (v!3351 (underlying!499 thiss!992))) (zeroValue!2858 (v!3351 (underlying!499 thiss!992))) (minValue!2858 (v!3351 (underlying!499 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3013 (v!3351 (underlying!499 thiss!992)))))))

(declare-fun b!146432 () Bool)

(declare-fun e!95513 () Bool)

(declare-fun tp_is_empty!2973 () Bool)

(assert (=> b!146432 (= e!95513 tp_is_empty!2973)))

(declare-fun b!146433 () Bool)

(declare-fun e!95504 () Bool)

(declare-fun e!95518 () Bool)

(assert (=> b!146433 (= e!95504 e!95518)))

(declare-fun res!69659 () Bool)

(assert (=> b!146433 (=> (not res!69659) (not e!95518))))

(assert (=> b!146433 (= res!69659 (and (not (= (select (arr!2356 (_keys!4782 (v!3351 (underlying!499 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2356 (_keys!4782 (v!3351 (underlying!499 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1575 (ValueCell!1143 V!3611) V!3611)

(declare-fun dynLambda!455 (Int (_ BitVec 64)) V!3611)

(assert (=> b!146433 (= lt!77011 (get!1575 (select (arr!2357 (_values!2996 (v!3351 (underlying!499 thiss!992)))) from!355) (dynLambda!455 (defaultEntry!3013 (v!3351 (underlying!499 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!146434 () Bool)

(declare-fun e!95506 () Bool)

(declare-fun e!95503 () Bool)

(declare-fun mapRes!4991 () Bool)

(assert (=> b!146434 (= e!95506 (and e!95503 mapRes!4991))))

(declare-fun condMapEmpty!4991 () Bool)

(declare-fun mapDefault!4992 () ValueCell!1143)

(assert (=> b!146434 (= condMapEmpty!4991 (= (arr!2357 (_values!2996 (v!3351 (underlying!499 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1143)) mapDefault!4992)))))

(declare-fun b!146435 () Bool)

(declare-fun e!95510 () Bool)

(assert (=> b!146435 (= e!95507 e!95510)))

(declare-fun b!146436 () Bool)

(assert (=> b!146436 (= e!95518 e!95509)))

(declare-fun res!69657 () Bool)

(assert (=> b!146436 (=> (not res!69657) (not e!95509))))

(declare-datatypes ((tuple2!2742 0))(
  ( (tuple2!2743 (_1!1381 Bool) (_2!1381 LongMapFixedSize!1194)) )
))
(declare-fun lt!77008 () tuple2!2742)

(assert (=> b!146436 (= res!69657 (and (_1!1381 lt!77008) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!77015 () Unit!4633)

(assert (=> b!146436 (= lt!77015 e!95511)))

(declare-fun c!27689 () Bool)

(declare-fun lt!77010 () ListLongMap!1777)

(declare-fun contains!946 (ListLongMap!1777 (_ BitVec 64)) Bool)

(assert (=> b!146436 (= c!27689 (contains!946 lt!77010 (select (arr!2356 (_keys!4782 (v!3351 (underlying!499 thiss!992)))) from!355)))))

(declare-fun update!223 (LongMapFixedSize!1194 (_ BitVec 64) V!3611) tuple2!2742)

(assert (=> b!146436 (= lt!77008 (update!223 newMap!16 (select (arr!2356 (_keys!4782 (v!3351 (underlying!499 thiss!992)))) from!355) lt!77011))))

(declare-fun b!146437 () Bool)

(declare-fun res!69658 () Bool)

(assert (=> b!146437 (=> (not res!69658) (not e!95514))))

(declare-fun valid!582 (LongMapFixedSize!1194) Bool)

(assert (=> b!146437 (= res!69658 (valid!582 newMap!16))))

(declare-fun b!146438 () Bool)

(declare-fun e!95512 () Bool)

(assert (=> b!146438 (= e!95510 e!95512)))

(declare-fun b!146439 () Bool)

(declare-fun Unit!4636 () Unit!4633)

(assert (=> b!146439 (= e!95511 Unit!4636)))

(declare-fun lt!77006 () Unit!4633)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!156 (array!4990 array!4992 (_ BitVec 32) (_ BitVec 32) V!3611 V!3611 (_ BitVec 64) (_ BitVec 32) Int) Unit!4633)

(assert (=> b!146439 (= lt!77006 (lemmaListMapContainsThenArrayContainsFrom!156 (_keys!4782 (v!3351 (underlying!499 thiss!992))) (_values!2996 (v!3351 (underlying!499 thiss!992))) (mask!7389 (v!3351 (underlying!499 thiss!992))) (extraKeys!2758 (v!3351 (underlying!499 thiss!992))) (zeroValue!2858 (v!3351 (underlying!499 thiss!992))) (minValue!2858 (v!3351 (underlying!499 thiss!992))) (select (arr!2356 (_keys!4782 (v!3351 (underlying!499 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3013 (v!3351 (underlying!499 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4990 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!146439 (arrayContainsKey!0 (_keys!4782 (v!3351 (underlying!499 thiss!992))) (select (arr!2356 (_keys!4782 (v!3351 (underlying!499 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!77007 () Unit!4633)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4990 (_ BitVec 32) (_ BitVec 32)) Unit!4633)

(assert (=> b!146439 (= lt!77007 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4782 (v!3351 (underlying!499 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1795 0))(
  ( (Nil!1792) (Cons!1791 (h!2399 (_ BitVec 64)) (t!6500 List!1795)) )
))
(declare-fun arrayNoDuplicates!0 (array!4990 (_ BitVec 32) List!1795) Bool)

(assert (=> b!146439 (arrayNoDuplicates!0 (_keys!4782 (v!3351 (underlying!499 thiss!992))) from!355 Nil!1792)))

(declare-fun lt!77005 () Unit!4633)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4990 (_ BitVec 32) (_ BitVec 64) List!1795) Unit!4633)

(assert (=> b!146439 (= lt!77005 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4782 (v!3351 (underlying!499 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2356 (_keys!4782 (v!3351 (underlying!499 thiss!992)))) from!355) (Cons!1791 (select (arr!2356 (_keys!4782 (v!3351 (underlying!499 thiss!992)))) from!355) Nil!1792)))))

(assert (=> b!146439 false))

(declare-fun b!146440 () Bool)

(assert (=> b!146440 (= e!95508 tp_is_empty!2973)))

(declare-fun array_inv!1463 (array!4990) Bool)

(declare-fun array_inv!1464 (array!4992) Bool)

(assert (=> b!146441 (= e!95512 (and tp!11844 tp_is_empty!2973 (array_inv!1463 (_keys!4782 (v!3351 (underlying!499 thiss!992)))) (array_inv!1464 (_values!2996 (v!3351 (underlying!499 thiss!992)))) e!95506))))

(declare-fun mapNonEmpty!4991 () Bool)

(declare-fun tp!11842 () Bool)

(assert (=> mapNonEmpty!4991 (= mapRes!4991 (and tp!11842 e!95513))))

(declare-fun mapValue!4992 () ValueCell!1143)

(declare-fun mapRest!4992 () (Array (_ BitVec 32) ValueCell!1143))

(declare-fun mapKey!4992 () (_ BitVec 32))

(assert (=> mapNonEmpty!4991 (= (arr!2357 (_values!2996 (v!3351 (underlying!499 thiss!992)))) (store mapRest!4992 mapKey!4992 mapValue!4992))))

(declare-fun b!146442 () Bool)

(declare-fun e!95517 () Bool)

(assert (=> b!146442 (= e!95517 tp_is_empty!2973)))

(declare-fun b!146443 () Bool)

(assert (=> b!146443 (= e!95514 e!95504)))

(declare-fun res!69660 () Bool)

(assert (=> b!146443 (=> (not res!69660) (not e!95504))))

(declare-fun lt!77012 () ListLongMap!1777)

(assert (=> b!146443 (= res!69660 (= lt!77012 lt!77010))))

(declare-fun map!1465 (LongMapFixedSize!1194) ListLongMap!1777)

(assert (=> b!146443 (= lt!77010 (map!1465 newMap!16))))

(declare-fun getCurrentListMap!568 (array!4990 array!4992 (_ BitVec 32) (_ BitVec 32) V!3611 V!3611 (_ BitVec 32) Int) ListLongMap!1777)

(assert (=> b!146443 (= lt!77012 (getCurrentListMap!568 (_keys!4782 (v!3351 (underlying!499 thiss!992))) (_values!2996 (v!3351 (underlying!499 thiss!992))) (mask!7389 (v!3351 (underlying!499 thiss!992))) (extraKeys!2758 (v!3351 (underlying!499 thiss!992))) (zeroValue!2858 (v!3351 (underlying!499 thiss!992))) (minValue!2858 (v!3351 (underlying!499 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3013 (v!3351 (underlying!499 thiss!992)))))))

(declare-fun mapNonEmpty!4992 () Bool)

(declare-fun tp!11843 () Bool)

(assert (=> mapNonEmpty!4992 (= mapRes!4992 (and tp!11843 e!95517))))

(declare-fun mapKey!4991 () (_ BitVec 32))

(declare-fun mapRest!4991 () (Array (_ BitVec 32) ValueCell!1143))

(declare-fun mapValue!4991 () ValueCell!1143)

(assert (=> mapNonEmpty!4992 (= (arr!2357 (_values!2996 newMap!16)) (store mapRest!4991 mapKey!4991 mapValue!4991))))

(assert (=> b!146444 (= e!95505 (and tp!11841 tp_is_empty!2973 (array_inv!1463 (_keys!4782 newMap!16)) (array_inv!1464 (_values!2996 newMap!16)) e!95515))))

(declare-fun mapIsEmpty!4992 () Bool)

(assert (=> mapIsEmpty!4992 mapRes!4991))

(declare-fun b!146445 () Bool)

(assert (=> b!146445 (= e!95503 tp_is_empty!2973)))

(assert (= (and start!15216 res!69661) b!146430))

(assert (= (and b!146430 res!69662) b!146437))

(assert (= (and b!146437 res!69658) b!146429))

(assert (= (and b!146429 res!69663) b!146443))

(assert (= (and b!146443 res!69660) b!146433))

(assert (= (and b!146433 res!69659) b!146436))

(assert (= (and b!146436 c!27689) b!146439))

(assert (= (and b!146436 (not c!27689)) b!146428))

(assert (= (and b!146436 res!69657) b!146431))

(assert (= (and b!146434 condMapEmpty!4991) mapIsEmpty!4992))

(assert (= (and b!146434 (not condMapEmpty!4991)) mapNonEmpty!4991))

(get-info :version)

(assert (= (and mapNonEmpty!4991 ((_ is ValueCellFull!1143) mapValue!4992)) b!146432))

(assert (= (and b!146434 ((_ is ValueCellFull!1143) mapDefault!4992)) b!146445))

(assert (= b!146441 b!146434))

(assert (= b!146438 b!146441))

(assert (= b!146435 b!146438))

(assert (= start!15216 b!146435))

(assert (= (and b!146427 condMapEmpty!4992) mapIsEmpty!4991))

(assert (= (and b!146427 (not condMapEmpty!4992)) mapNonEmpty!4992))

(assert (= (and mapNonEmpty!4992 ((_ is ValueCellFull!1143) mapValue!4991)) b!146442))

(assert (= (and b!146427 ((_ is ValueCellFull!1143) mapDefault!4991)) b!146440))

(assert (= b!146444 b!146427))

(assert (= start!15216 b!146444))

(declare-fun b_lambda!6587 () Bool)

(assert (=> (not b_lambda!6587) (not b!146433)))

(declare-fun t!6496 () Bool)

(declare-fun tb!2665 () Bool)

(assert (=> (and b!146441 (= (defaultEntry!3013 (v!3351 (underlying!499 thiss!992))) (defaultEntry!3013 (v!3351 (underlying!499 thiss!992)))) t!6496) tb!2665))

(declare-fun result!4349 () Bool)

(assert (=> tb!2665 (= result!4349 tp_is_empty!2973)))

(assert (=> b!146433 t!6496))

(declare-fun b_and!9173 () Bool)

(assert (= b_and!9169 (and (=> t!6496 result!4349) b_and!9173)))

(declare-fun t!6498 () Bool)

(declare-fun tb!2667 () Bool)

(assert (=> (and b!146444 (= (defaultEntry!3013 newMap!16) (defaultEntry!3013 (v!3351 (underlying!499 thiss!992)))) t!6498) tb!2667))

(declare-fun result!4353 () Bool)

(assert (= result!4353 result!4349))

(assert (=> b!146433 t!6498))

(declare-fun b_and!9175 () Bool)

(assert (= b_and!9171 (and (=> t!6498 result!4353) b_and!9175)))

(declare-fun m!176375 () Bool)

(assert (=> b!146433 m!176375))

(declare-fun m!176377 () Bool)

(assert (=> b!146433 m!176377))

(declare-fun m!176379 () Bool)

(assert (=> b!146433 m!176379))

(assert (=> b!146433 m!176377))

(assert (=> b!146433 m!176379))

(declare-fun m!176381 () Bool)

(assert (=> b!146433 m!176381))

(declare-fun m!176383 () Bool)

(assert (=> mapNonEmpty!4992 m!176383))

(declare-fun m!176385 () Bool)

(assert (=> start!15216 m!176385))

(declare-fun m!176387 () Bool)

(assert (=> mapNonEmpty!4991 m!176387))

(declare-fun m!176389 () Bool)

(assert (=> b!146441 m!176389))

(declare-fun m!176391 () Bool)

(assert (=> b!146441 m!176391))

(declare-fun m!176393 () Bool)

(assert (=> b!146439 m!176393))

(declare-fun m!176395 () Bool)

(assert (=> b!146439 m!176395))

(assert (=> b!146439 m!176375))

(declare-fun m!176397 () Bool)

(assert (=> b!146439 m!176397))

(assert (=> b!146439 m!176375))

(assert (=> b!146439 m!176375))

(declare-fun m!176399 () Bool)

(assert (=> b!146439 m!176399))

(assert (=> b!146439 m!176375))

(declare-fun m!176401 () Bool)

(assert (=> b!146439 m!176401))

(assert (=> b!146431 m!176375))

(declare-fun m!176403 () Bool)

(assert (=> b!146431 m!176403))

(declare-fun m!176405 () Bool)

(assert (=> b!146431 m!176405))

(declare-fun m!176407 () Bool)

(assert (=> b!146431 m!176407))

(declare-fun m!176409 () Bool)

(assert (=> b!146431 m!176409))

(declare-fun m!176411 () Bool)

(assert (=> b!146431 m!176411))

(assert (=> b!146431 m!176375))

(assert (=> b!146431 m!176409))

(assert (=> b!146431 m!176405))

(declare-fun m!176413 () Bool)

(assert (=> b!146431 m!176413))

(declare-fun m!176415 () Bool)

(assert (=> b!146437 m!176415))

(assert (=> b!146436 m!176375))

(assert (=> b!146436 m!176375))

(declare-fun m!176417 () Bool)

(assert (=> b!146436 m!176417))

(assert (=> b!146436 m!176375))

(declare-fun m!176419 () Bool)

(assert (=> b!146436 m!176419))

(declare-fun m!176421 () Bool)

(assert (=> b!146444 m!176421))

(declare-fun m!176423 () Bool)

(assert (=> b!146444 m!176423))

(declare-fun m!176425 () Bool)

(assert (=> b!146443 m!176425))

(declare-fun m!176427 () Bool)

(assert (=> b!146443 m!176427))

(check-sat (not b_lambda!6587) (not mapNonEmpty!4991) (not b!146441) (not b!146431) (not b_next!3113) tp_is_empty!2973 (not b!146433) b_and!9173 (not b!146436) (not b!146443) (not start!15216) (not b!146444) (not mapNonEmpty!4992) b_and!9175 (not b_next!3115) (not b!146439) (not b!146437))
(check-sat b_and!9173 b_and!9175 (not b_next!3113) (not b_next!3115))
