; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15276 () Bool)

(assert start!15276)

(declare-fun b!147534 () Bool)

(declare-fun b_free!3161 () Bool)

(declare-fun b_next!3161 () Bool)

(assert (=> b!147534 (= b_free!3161 (not b_next!3161))))

(declare-fun tp!11989 () Bool)

(declare-fun b_and!9285 () Bool)

(assert (=> b!147534 (= tp!11989 b_and!9285)))

(declare-fun b!147536 () Bool)

(declare-fun b_free!3163 () Bool)

(declare-fun b_next!3163 () Bool)

(assert (=> b!147536 (= b_free!3163 (not b_next!3163))))

(declare-fun tp!11990 () Bool)

(declare-fun b_and!9287 () Bool)

(assert (=> b!147536 (= tp!11990 b_and!9287)))

(declare-fun b!147532 () Bool)

(declare-fun res!70085 () Bool)

(declare-fun e!96368 () Bool)

(assert (=> b!147532 (=> (not res!70085) (not e!96368))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!3643 0))(
  ( (V!3644 (val!1543 Int)) )
))
(declare-datatypes ((array!5040 0))(
  ( (array!5041 (arr!2380 (Array (_ BitVec 32) (_ BitVec 64))) (size!2656 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1155 0))(
  ( (ValueCellFull!1155 (v!3376 V!3643)) (EmptyCell!1155) )
))
(declare-datatypes ((array!5042 0))(
  ( (array!5043 (arr!2381 (Array (_ BitVec 32) ValueCell!1155)) (size!2657 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1218 0))(
  ( (LongMapFixedSize!1219 (defaultEntry!3028 Int) (mask!7412 (_ BitVec 32)) (extraKeys!2773 (_ BitVec 32)) (zeroValue!2873 V!3643) (minValue!2873 V!3643) (_size!658 (_ BitVec 32)) (_keys!4797 array!5040) (_values!3011 array!5042) (_vacant!658 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1000 0))(
  ( (Cell!1001 (v!3377 LongMapFixedSize!1218)) )
))
(declare-datatypes ((LongMap!1000 0))(
  ( (LongMap!1001 (underlying!511 Cell!1000)) )
))
(declare-fun thiss!992 () LongMap!1000)

(assert (=> b!147532 (= res!70085 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2656 (_keys!4797 (v!3377 (underlying!511 thiss!992)))))))))

(declare-fun mapIsEmpty!5067 () Bool)

(declare-fun mapRes!5068 () Bool)

(assert (=> mapIsEmpty!5067 mapRes!5068))

(declare-fun b!147533 () Bool)

(declare-fun e!96366 () Bool)

(assert (=> b!147533 (= e!96368 e!96366)))

(declare-fun res!70081 () Bool)

(assert (=> b!147533 (=> (not res!70081) (not e!96366))))

(declare-datatypes ((tuple2!2774 0))(
  ( (tuple2!2775 (_1!1397 (_ BitVec 64)) (_2!1397 V!3643)) )
))
(declare-datatypes ((List!1810 0))(
  ( (Nil!1807) (Cons!1806 (h!2414 tuple2!2774) (t!6563 List!1810)) )
))
(declare-datatypes ((ListLongMap!1797 0))(
  ( (ListLongMap!1798 (toList!914 List!1810)) )
))
(declare-fun lt!77869 () ListLongMap!1797)

(declare-fun lt!77876 () ListLongMap!1797)

(assert (=> b!147533 (= res!70081 (= lt!77869 lt!77876))))

(declare-fun newMap!16 () LongMapFixedSize!1218)

(declare-fun map!1481 (LongMapFixedSize!1218) ListLongMap!1797)

(assert (=> b!147533 (= lt!77876 (map!1481 newMap!16))))

(declare-fun getCurrentListMap!576 (array!5040 array!5042 (_ BitVec 32) (_ BitVec 32) V!3643 V!3643 (_ BitVec 32) Int) ListLongMap!1797)

(assert (=> b!147533 (= lt!77869 (getCurrentListMap!576 (_keys!4797 (v!3377 (underlying!511 thiss!992))) (_values!3011 (v!3377 (underlying!511 thiss!992))) (mask!7412 (v!3377 (underlying!511 thiss!992))) (extraKeys!2773 (v!3377 (underlying!511 thiss!992))) (zeroValue!2873 (v!3377 (underlying!511 thiss!992))) (minValue!2873 (v!3377 (underlying!511 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3028 (v!3377 (underlying!511 thiss!992)))))))

(declare-fun e!96367 () Bool)

(declare-fun e!96362 () Bool)

(declare-fun tp_is_empty!2997 () Bool)

(declare-fun array_inv!1477 (array!5040) Bool)

(declare-fun array_inv!1478 (array!5042) Bool)

(assert (=> b!147534 (= e!96362 (and tp!11989 tp_is_empty!2997 (array_inv!1477 (_keys!4797 (v!3377 (underlying!511 thiss!992)))) (array_inv!1478 (_values!3011 (v!3377 (underlying!511 thiss!992)))) e!96367))))

(declare-fun b!147535 () Bool)

(declare-fun e!96357 () Bool)

(assert (=> b!147535 (= e!96357 tp_is_empty!2997)))

(declare-fun e!96364 () Bool)

(declare-fun e!96370 () Bool)

(assert (=> b!147536 (= e!96364 (and tp!11990 tp_is_empty!2997 (array_inv!1477 (_keys!4797 newMap!16)) (array_inv!1478 (_values!3011 newMap!16)) e!96370))))

(declare-fun b!147538 () Bool)

(declare-fun e!96371 () Bool)

(assert (=> b!147538 (= e!96371 tp_is_empty!2997)))

(declare-fun mapNonEmpty!5067 () Bool)

(declare-fun tp!11992 () Bool)

(declare-fun e!96363 () Bool)

(assert (=> mapNonEmpty!5067 (= mapRes!5068 (and tp!11992 e!96363))))

(declare-fun mapKey!5068 () (_ BitVec 32))

(declare-fun mapRest!5068 () (Array (_ BitVec 32) ValueCell!1155))

(declare-fun mapValue!5068 () ValueCell!1155)

(assert (=> mapNonEmpty!5067 (= (arr!2381 (_values!3011 (v!3377 (underlying!511 thiss!992)))) (store mapRest!5068 mapKey!5068 mapValue!5068))))

(declare-fun b!147539 () Bool)

(declare-fun e!96360 () Bool)

(assert (=> b!147539 (= e!96360 e!96362)))

(declare-fun mapNonEmpty!5068 () Bool)

(declare-fun mapRes!5067 () Bool)

(declare-fun tp!11991 () Bool)

(assert (=> mapNonEmpty!5068 (= mapRes!5067 (and tp!11991 e!96371))))

(declare-fun mapKey!5067 () (_ BitVec 32))

(declare-fun mapRest!5067 () (Array (_ BitVec 32) ValueCell!1155))

(declare-fun mapValue!5067 () ValueCell!1155)

(assert (=> mapNonEmpty!5068 (= (arr!2381 (_values!3011 newMap!16)) (store mapRest!5067 mapKey!5067 mapValue!5067))))

(declare-fun b!147540 () Bool)

(declare-fun res!70084 () Bool)

(assert (=> b!147540 (=> (not res!70084) (not e!96368))))

(assert (=> b!147540 (= res!70084 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7412 newMap!16)) (_size!658 (v!3377 (underlying!511 thiss!992)))))))

(declare-fun b!147541 () Bool)

(declare-fun e!96365 () Bool)

(assert (=> b!147541 (= e!96365 e!96360)))

(declare-fun b!147542 () Bool)

(declare-fun e!96359 () Bool)

(declare-fun e!96361 () Bool)

(assert (=> b!147542 (= e!96359 e!96361)))

(declare-fun res!70086 () Bool)

(assert (=> b!147542 (=> (not res!70086) (not e!96361))))

(declare-datatypes ((tuple2!2776 0))(
  ( (tuple2!2777 (_1!1398 Bool) (_2!1398 LongMapFixedSize!1218)) )
))
(declare-fun lt!77873 () tuple2!2776)

(assert (=> b!147542 (= res!70086 (and (_1!1398 lt!77873) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!4673 0))(
  ( (Unit!4674) )
))
(declare-fun lt!77872 () Unit!4673)

(declare-fun e!96355 () Unit!4673)

(assert (=> b!147542 (= lt!77872 e!96355)))

(declare-fun c!27833 () Bool)

(declare-fun contains!954 (ListLongMap!1797 (_ BitVec 64)) Bool)

(assert (=> b!147542 (= c!27833 (contains!954 lt!77876 (select (arr!2380 (_keys!4797 (v!3377 (underlying!511 thiss!992)))) from!355)))))

(declare-fun lt!77867 () V!3643)

(declare-fun update!229 (LongMapFixedSize!1218 (_ BitVec 64) V!3643) tuple2!2776)

(assert (=> b!147542 (= lt!77873 (update!229 newMap!16 (select (arr!2380 (_keys!4797 (v!3377 (underlying!511 thiss!992)))) from!355) lt!77867))))

(declare-fun b!147543 () Bool)

(assert (=> b!147543 (= e!96366 e!96359)))

(declare-fun res!70083 () Bool)

(assert (=> b!147543 (=> (not res!70083) (not e!96359))))

(assert (=> b!147543 (= res!70083 (and (not (= (select (arr!2380 (_keys!4797 (v!3377 (underlying!511 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2380 (_keys!4797 (v!3377 (underlying!511 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1591 (ValueCell!1155 V!3643) V!3643)

(declare-fun dynLambda!461 (Int (_ BitVec 64)) V!3643)

(assert (=> b!147543 (= lt!77867 (get!1591 (select (arr!2381 (_values!3011 (v!3377 (underlying!511 thiss!992)))) from!355) (dynLambda!461 (defaultEntry!3028 (v!3377 (underlying!511 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!147544 () Bool)

(assert (=> b!147544 (= e!96363 tp_is_empty!2997)))

(declare-fun mapIsEmpty!5068 () Bool)

(assert (=> mapIsEmpty!5068 mapRes!5067))

(declare-fun b!147545 () Bool)

(declare-fun Unit!4675 () Unit!4673)

(assert (=> b!147545 (= e!96355 Unit!4675)))

(declare-fun lt!77875 () Unit!4673)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!162 (array!5040 array!5042 (_ BitVec 32) (_ BitVec 32) V!3643 V!3643 (_ BitVec 64) (_ BitVec 32) Int) Unit!4673)

(assert (=> b!147545 (= lt!77875 (lemmaListMapContainsThenArrayContainsFrom!162 (_keys!4797 (v!3377 (underlying!511 thiss!992))) (_values!3011 (v!3377 (underlying!511 thiss!992))) (mask!7412 (v!3377 (underlying!511 thiss!992))) (extraKeys!2773 (v!3377 (underlying!511 thiss!992))) (zeroValue!2873 (v!3377 (underlying!511 thiss!992))) (minValue!2873 (v!3377 (underlying!511 thiss!992))) (select (arr!2380 (_keys!4797 (v!3377 (underlying!511 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3028 (v!3377 (underlying!511 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!5040 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!147545 (arrayContainsKey!0 (_keys!4797 (v!3377 (underlying!511 thiss!992))) (select (arr!2380 (_keys!4797 (v!3377 (underlying!511 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!77868 () Unit!4673)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!5040 (_ BitVec 32) (_ BitVec 32)) Unit!4673)

(assert (=> b!147545 (= lt!77868 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4797 (v!3377 (underlying!511 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1811 0))(
  ( (Nil!1808) (Cons!1807 (h!2415 (_ BitVec 64)) (t!6564 List!1811)) )
))
(declare-fun arrayNoDuplicates!0 (array!5040 (_ BitVec 32) List!1811) Bool)

(assert (=> b!147545 (arrayNoDuplicates!0 (_keys!4797 (v!3377 (underlying!511 thiss!992))) from!355 Nil!1808)))

(declare-fun lt!77874 () Unit!4673)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!5040 (_ BitVec 32) (_ BitVec 64) List!1811) Unit!4673)

(assert (=> b!147545 (= lt!77874 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4797 (v!3377 (underlying!511 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2380 (_keys!4797 (v!3377 (underlying!511 thiss!992)))) from!355) (Cons!1807 (select (arr!2380 (_keys!4797 (v!3377 (underlying!511 thiss!992)))) from!355) Nil!1808)))))

(assert (=> b!147545 false))

(declare-fun b!147546 () Bool)

(declare-fun res!70082 () Bool)

(assert (=> b!147546 (=> (not res!70082) (not e!96368))))

(declare-fun valid!595 (LongMapFixedSize!1218) Bool)

(assert (=> b!147546 (= res!70082 (valid!595 newMap!16))))

(declare-fun b!147547 () Bool)

(declare-fun Unit!4676 () Unit!4673)

(assert (=> b!147547 (= e!96355 Unit!4676)))

(declare-fun b!147548 () Bool)

(assert (=> b!147548 (= e!96367 (and e!96357 mapRes!5068))))

(declare-fun condMapEmpty!5067 () Bool)

(declare-fun mapDefault!5068 () ValueCell!1155)

(assert (=> b!147548 (= condMapEmpty!5067 (= (arr!2381 (_values!3011 (v!3377 (underlying!511 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1155)) mapDefault!5068)))))

(declare-fun b!147549 () Bool)

(assert (=> b!147549 (= e!96361 (not true))))

(declare-fun lt!77870 () ListLongMap!1797)

(declare-fun lt!77871 () tuple2!2774)

(declare-fun lt!77866 () tuple2!2774)

(declare-fun +!184 (ListLongMap!1797 tuple2!2774) ListLongMap!1797)

(assert (=> b!147549 (= (+!184 (+!184 lt!77870 lt!77871) lt!77866) (+!184 (+!184 lt!77870 lt!77866) lt!77871))))

(assert (=> b!147549 (= lt!77866 (tuple2!2775 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2873 (v!3377 (underlying!511 thiss!992)))))))

(assert (=> b!147549 (= lt!77871 (tuple2!2775 (select (arr!2380 (_keys!4797 (v!3377 (underlying!511 thiss!992)))) from!355) lt!77867))))

(declare-fun lt!77865 () Unit!4673)

(declare-fun addCommutativeForDiffKeys!77 (ListLongMap!1797 (_ BitVec 64) V!3643 (_ BitVec 64) V!3643) Unit!4673)

(assert (=> b!147549 (= lt!77865 (addCommutativeForDiffKeys!77 lt!77870 (select (arr!2380 (_keys!4797 (v!3377 (underlying!511 thiss!992)))) from!355) lt!77867 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2873 (v!3377 (underlying!511 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!155 (array!5040 array!5042 (_ BitVec 32) (_ BitVec 32) V!3643 V!3643 (_ BitVec 32) Int) ListLongMap!1797)

(assert (=> b!147549 (= lt!77870 (getCurrentListMapNoExtraKeys!155 (_keys!4797 (v!3377 (underlying!511 thiss!992))) (_values!3011 (v!3377 (underlying!511 thiss!992))) (mask!7412 (v!3377 (underlying!511 thiss!992))) (extraKeys!2773 (v!3377 (underlying!511 thiss!992))) (zeroValue!2873 (v!3377 (underlying!511 thiss!992))) (minValue!2873 (v!3377 (underlying!511 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3028 (v!3377 (underlying!511 thiss!992)))))))

(declare-fun b!147550 () Bool)

(declare-fun e!96356 () Bool)

(assert (=> b!147550 (= e!96356 tp_is_empty!2997)))

(declare-fun res!70080 () Bool)

(assert (=> start!15276 (=> (not res!70080) (not e!96368))))

(declare-fun valid!596 (LongMap!1000) Bool)

(assert (=> start!15276 (= res!70080 (valid!596 thiss!992))))

(assert (=> start!15276 e!96368))

(assert (=> start!15276 e!96365))

(assert (=> start!15276 true))

(assert (=> start!15276 e!96364))

(declare-fun b!147537 () Bool)

(assert (=> b!147537 (= e!96370 (and e!96356 mapRes!5067))))

(declare-fun condMapEmpty!5068 () Bool)

(declare-fun mapDefault!5067 () ValueCell!1155)

(assert (=> b!147537 (= condMapEmpty!5068 (= (arr!2381 (_values!3011 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1155)) mapDefault!5067)))))

(assert (= (and start!15276 res!70080) b!147532))

(assert (= (and b!147532 res!70085) b!147546))

(assert (= (and b!147546 res!70082) b!147540))

(assert (= (and b!147540 res!70084) b!147533))

(assert (= (and b!147533 res!70081) b!147543))

(assert (= (and b!147543 res!70083) b!147542))

(assert (= (and b!147542 c!27833) b!147545))

(assert (= (and b!147542 (not c!27833)) b!147547))

(assert (= (and b!147542 res!70086) b!147549))

(assert (= (and b!147548 condMapEmpty!5067) mapIsEmpty!5067))

(assert (= (and b!147548 (not condMapEmpty!5067)) mapNonEmpty!5067))

(get-info :version)

(assert (= (and mapNonEmpty!5067 ((_ is ValueCellFull!1155) mapValue!5068)) b!147544))

(assert (= (and b!147548 ((_ is ValueCellFull!1155) mapDefault!5068)) b!147535))

(assert (= b!147534 b!147548))

(assert (= b!147539 b!147534))

(assert (= b!147541 b!147539))

(assert (= start!15276 b!147541))

(assert (= (and b!147537 condMapEmpty!5068) mapIsEmpty!5068))

(assert (= (and b!147537 (not condMapEmpty!5068)) mapNonEmpty!5068))

(assert (= (and mapNonEmpty!5068 ((_ is ValueCellFull!1155) mapValue!5067)) b!147538))

(assert (= (and b!147537 ((_ is ValueCellFull!1155) mapDefault!5067)) b!147550))

(assert (= b!147536 b!147537))

(assert (= start!15276 b!147536))

(declare-fun b_lambda!6633 () Bool)

(assert (=> (not b_lambda!6633) (not b!147543)))

(declare-fun t!6560 () Bool)

(declare-fun tb!2713 () Bool)

(assert (=> (and b!147534 (= (defaultEntry!3028 (v!3377 (underlying!511 thiss!992))) (defaultEntry!3028 (v!3377 (underlying!511 thiss!992)))) t!6560) tb!2713))

(declare-fun result!4423 () Bool)

(assert (=> tb!2713 (= result!4423 tp_is_empty!2997)))

(assert (=> b!147543 t!6560))

(declare-fun b_and!9289 () Bool)

(assert (= b_and!9285 (and (=> t!6560 result!4423) b_and!9289)))

(declare-fun t!6562 () Bool)

(declare-fun tb!2715 () Bool)

(assert (=> (and b!147536 (= (defaultEntry!3028 newMap!16) (defaultEntry!3028 (v!3377 (underlying!511 thiss!992)))) t!6562) tb!2715))

(declare-fun result!4427 () Bool)

(assert (= result!4427 result!4423))

(assert (=> b!147543 t!6562))

(declare-fun b_and!9291 () Bool)

(assert (= b_and!9287 (and (=> t!6562 result!4427) b_and!9291)))

(declare-fun m!177479 () Bool)

(assert (=> mapNonEmpty!5068 m!177479))

(declare-fun m!177481 () Bool)

(assert (=> b!147533 m!177481))

(declare-fun m!177483 () Bool)

(assert (=> b!147533 m!177483))

(declare-fun m!177485 () Bool)

(assert (=> start!15276 m!177485))

(declare-fun m!177487 () Bool)

(assert (=> b!147545 m!177487))

(declare-fun m!177489 () Bool)

(assert (=> b!147545 m!177489))

(declare-fun m!177491 () Bool)

(assert (=> b!147545 m!177491))

(declare-fun m!177493 () Bool)

(assert (=> b!147545 m!177493))

(assert (=> b!147545 m!177491))

(assert (=> b!147545 m!177491))

(declare-fun m!177495 () Bool)

(assert (=> b!147545 m!177495))

(assert (=> b!147545 m!177491))

(declare-fun m!177497 () Bool)

(assert (=> b!147545 m!177497))

(declare-fun m!177499 () Bool)

(assert (=> mapNonEmpty!5067 m!177499))

(declare-fun m!177501 () Bool)

(assert (=> b!147549 m!177501))

(declare-fun m!177503 () Bool)

(assert (=> b!147549 m!177503))

(declare-fun m!177505 () Bool)

(assert (=> b!147549 m!177505))

(assert (=> b!147549 m!177501))

(assert (=> b!147549 m!177491))

(assert (=> b!147549 m!177505))

(declare-fun m!177507 () Bool)

(assert (=> b!147549 m!177507))

(assert (=> b!147549 m!177491))

(declare-fun m!177509 () Bool)

(assert (=> b!147549 m!177509))

(declare-fun m!177511 () Bool)

(assert (=> b!147549 m!177511))

(declare-fun m!177513 () Bool)

(assert (=> b!147534 m!177513))

(declare-fun m!177515 () Bool)

(assert (=> b!147534 m!177515))

(declare-fun m!177517 () Bool)

(assert (=> b!147546 m!177517))

(declare-fun m!177519 () Bool)

(assert (=> b!147536 m!177519))

(declare-fun m!177521 () Bool)

(assert (=> b!147536 m!177521))

(assert (=> b!147543 m!177491))

(declare-fun m!177523 () Bool)

(assert (=> b!147543 m!177523))

(declare-fun m!177525 () Bool)

(assert (=> b!147543 m!177525))

(assert (=> b!147543 m!177523))

(assert (=> b!147543 m!177525))

(declare-fun m!177527 () Bool)

(assert (=> b!147543 m!177527))

(assert (=> b!147542 m!177491))

(assert (=> b!147542 m!177491))

(declare-fun m!177529 () Bool)

(assert (=> b!147542 m!177529))

(assert (=> b!147542 m!177491))

(declare-fun m!177531 () Bool)

(assert (=> b!147542 m!177531))

(check-sat (not b!147543) (not mapNonEmpty!5068) (not b!147536) (not b_lambda!6633) (not b!147549) (not start!15276) (not b!147534) (not b!147546) (not b_next!3163) (not mapNonEmpty!5067) (not b_next!3161) (not b!147533) b_and!9289 (not b!147545) (not b!147542) tp_is_empty!2997 b_and!9291)
(check-sat b_and!9289 b_and!9291 (not b_next!3161) (not b_next!3163))
