; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11278 () Bool)

(assert start!11278)

(declare-fun b!92811 () Bool)

(declare-fun b_free!2357 () Bool)

(declare-fun b_next!2357 () Bool)

(assert (=> b!92811 (= b_free!2357 (not b_next!2357))))

(declare-fun tp!9332 () Bool)

(declare-fun b_and!5633 () Bool)

(assert (=> b!92811 (= tp!9332 b_and!5633)))

(declare-fun b!92804 () Bool)

(declare-fun b_free!2359 () Bool)

(declare-fun b_next!2359 () Bool)

(assert (=> b!92804 (= b_free!2359 (not b_next!2359))))

(declare-fun tp!9329 () Bool)

(declare-fun b_and!5635 () Bool)

(assert (=> b!92804 (= tp!9329 b_and!5635)))

(declare-fun b!92795 () Bool)

(declare-datatypes ((Unit!2786 0))(
  ( (Unit!2787) )
))
(declare-fun e!60553 () Unit!2786)

(declare-fun Unit!2788 () Unit!2786)

(assert (=> b!92795 (= e!60553 Unit!2788)))

(declare-fun lt!45607 () Unit!2786)

(declare-datatypes ((V!3107 0))(
  ( (V!3108 (val!1342 Int)) )
))
(declare-datatypes ((array!4160 0))(
  ( (array!4161 (arr!1978 (Array (_ BitVec 32) (_ BitVec 64))) (size!2226 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!954 0))(
  ( (ValueCellFull!954 (v!2740 V!3107)) (EmptyCell!954) )
))
(declare-datatypes ((array!4162 0))(
  ( (array!4163 (arr!1979 (Array (_ BitVec 32) ValueCell!954)) (size!2227 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!816 0))(
  ( (LongMapFixedSize!817 (defaultEntry!2422 Int) (mask!6490 (_ BitVec 32)) (extraKeys!2251 (_ BitVec 32)) (zeroValue!2309 V!3107) (minValue!2309 V!3107) (_size!457 (_ BitVec 32)) (_keys!4104 array!4160) (_values!2405 array!4162) (_vacant!457 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!620 0))(
  ( (Cell!621 (v!2741 LongMapFixedSize!816)) )
))
(declare-datatypes ((LongMap!620 0))(
  ( (LongMap!621 (underlying!321 Cell!620)) )
))
(declare-fun thiss!992 () LongMap!620)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!88 (array!4160 array!4162 (_ BitVec 32) (_ BitVec 32) V!3107 V!3107 (_ BitVec 64) (_ BitVec 32) Int) Unit!2786)

(assert (=> b!92795 (= lt!45607 (lemmaListMapContainsThenArrayContainsFrom!88 (_keys!4104 (v!2741 (underlying!321 thiss!992))) (_values!2405 (v!2741 (underlying!321 thiss!992))) (mask!6490 (v!2741 (underlying!321 thiss!992))) (extraKeys!2251 (v!2741 (underlying!321 thiss!992))) (zeroValue!2309 (v!2741 (underlying!321 thiss!992))) (minValue!2309 (v!2741 (underlying!321 thiss!992))) (select (arr!1978 (_keys!4104 (v!2741 (underlying!321 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2422 (v!2741 (underlying!321 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4160 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!92795 (arrayContainsKey!0 (_keys!4104 (v!2741 (underlying!321 thiss!992))) (select (arr!1978 (_keys!4104 (v!2741 (underlying!321 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!45603 () Unit!2786)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4160 (_ BitVec 32) (_ BitVec 32)) Unit!2786)

(assert (=> b!92795 (= lt!45603 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4104 (v!2741 (underlying!321 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1590 0))(
  ( (Nil!1587) (Cons!1586 (h!2178 (_ BitVec 64)) (t!5460 List!1590)) )
))
(declare-fun arrayNoDuplicates!0 (array!4160 (_ BitVec 32) List!1590) Bool)

(assert (=> b!92795 (arrayNoDuplicates!0 (_keys!4104 (v!2741 (underlying!321 thiss!992))) from!355 Nil!1587)))

(declare-fun lt!45621 () Unit!2786)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4160 (_ BitVec 32) (_ BitVec 64) List!1590) Unit!2786)

(assert (=> b!92795 (= lt!45621 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4104 (v!2741 (underlying!321 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1978 (_keys!4104 (v!2741 (underlying!321 thiss!992)))) from!355) (Cons!1586 (select (arr!1978 (_keys!4104 (v!2741 (underlying!321 thiss!992)))) from!355) Nil!1587)))))

(assert (=> b!92795 false))

(declare-fun b!92797 () Bool)

(declare-fun e!60550 () Bool)

(declare-fun e!60549 () Bool)

(assert (=> b!92797 (= e!60550 e!60549)))

(declare-fun res!47152 () Bool)

(assert (=> b!92797 (=> (not res!47152) (not e!60549))))

(declare-datatypes ((tuple2!2310 0))(
  ( (tuple2!2311 (_1!1165 (_ BitVec 64)) (_2!1165 V!3107)) )
))
(declare-datatypes ((List!1591 0))(
  ( (Nil!1588) (Cons!1587 (h!2179 tuple2!2310) (t!5461 List!1591)) )
))
(declare-datatypes ((ListLongMap!1529 0))(
  ( (ListLongMap!1530 (toList!780 List!1591)) )
))
(declare-fun lt!45609 () ListLongMap!1529)

(declare-fun lt!45619 () ListLongMap!1529)

(assert (=> b!92797 (= res!47152 (= lt!45609 lt!45619))))

(declare-fun newMap!16 () LongMapFixedSize!816)

(declare-fun map!1233 (LongMapFixedSize!816) ListLongMap!1529)

(assert (=> b!92797 (= lt!45619 (map!1233 newMap!16))))

(declare-fun getCurrentListMap!462 (array!4160 array!4162 (_ BitVec 32) (_ BitVec 32) V!3107 V!3107 (_ BitVec 32) Int) ListLongMap!1529)

(assert (=> b!92797 (= lt!45609 (getCurrentListMap!462 (_keys!4104 (v!2741 (underlying!321 thiss!992))) (_values!2405 (v!2741 (underlying!321 thiss!992))) (mask!6490 (v!2741 (underlying!321 thiss!992))) (extraKeys!2251 (v!2741 (underlying!321 thiss!992))) (zeroValue!2309 (v!2741 (underlying!321 thiss!992))) (minValue!2309 (v!2741 (underlying!321 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2422 (v!2741 (underlying!321 thiss!992)))))))

(declare-fun b!92798 () Bool)

(declare-fun Unit!2789 () Unit!2786)

(assert (=> b!92798 (= e!60553 Unit!2789)))

(declare-fun b!92799 () Bool)

(declare-fun e!60548 () Bool)

(declare-fun e!60539 () Bool)

(assert (=> b!92799 (= e!60548 e!60539)))

(declare-fun b!92800 () Bool)

(declare-fun e!60540 () Bool)

(assert (=> b!92800 (= e!60540 true)))

(declare-fun lt!45604 () Bool)

(declare-datatypes ((tuple2!2312 0))(
  ( (tuple2!2313 (_1!1166 Bool) (_2!1166 LongMapFixedSize!816)) )
))
(declare-fun lt!45611 () tuple2!2312)

(declare-fun valid!362 (LongMapFixedSize!816) Bool)

(assert (=> b!92800 (= lt!45604 (valid!362 (_2!1166 lt!45611)))))

(declare-fun b!92801 () Bool)

(declare-fun e!60547 () Bool)

(assert (=> b!92801 (= e!60547 e!60540)))

(declare-fun res!47151 () Bool)

(assert (=> b!92801 (=> res!47151 e!60540)))

(assert (=> b!92801 (= res!47151 (not (_1!1166 lt!45611)))))

(declare-fun lt!45606 () tuple2!2312)

(declare-fun repackFrom!10 (LongMap!620 LongMapFixedSize!816 (_ BitVec 32)) tuple2!2312)

(assert (=> b!92801 (= lt!45611 (repackFrom!10 thiss!992 (_2!1166 lt!45606) (bvsub from!355 #b00000000000000000000000000000001)))))

(declare-fun b!92802 () Bool)

(declare-fun e!60554 () Bool)

(declare-fun tp_is_empty!2595 () Bool)

(assert (=> b!92802 (= e!60554 tp_is_empty!2595)))

(declare-fun b!92803 () Bool)

(declare-fun e!60544 () Bool)

(assert (=> b!92803 (= e!60539 e!60544)))

(declare-fun mapNonEmpty!3613 () Bool)

(declare-fun mapRes!3614 () Bool)

(declare-fun tp!9331 () Bool)

(declare-fun e!60552 () Bool)

(assert (=> mapNonEmpty!3613 (= mapRes!3614 (and tp!9331 e!60552))))

(declare-fun mapValue!3613 () ValueCell!954)

(declare-fun mapRest!3614 () (Array (_ BitVec 32) ValueCell!954))

(declare-fun mapKey!3613 () (_ BitVec 32))

(assert (=> mapNonEmpty!3613 (= (arr!1979 (_values!2405 newMap!16)) (store mapRest!3614 mapKey!3613 mapValue!3613))))

(declare-fun e!60543 () Bool)

(declare-fun e!60545 () Bool)

(declare-fun array_inv!1187 (array!4160) Bool)

(declare-fun array_inv!1188 (array!4162) Bool)

(assert (=> b!92804 (= e!60545 (and tp!9329 tp_is_empty!2595 (array_inv!1187 (_keys!4104 newMap!16)) (array_inv!1188 (_values!2405 newMap!16)) e!60543))))

(declare-fun b!92805 () Bool)

(declare-fun e!60538 () Bool)

(assert (=> b!92805 (= e!60538 tp_is_empty!2595)))

(declare-fun mapNonEmpty!3614 () Bool)

(declare-fun mapRes!3613 () Bool)

(declare-fun tp!9330 () Bool)

(declare-fun e!60555 () Bool)

(assert (=> mapNonEmpty!3614 (= mapRes!3613 (and tp!9330 e!60555))))

(declare-fun mapKey!3614 () (_ BitVec 32))

(declare-fun mapValue!3614 () ValueCell!954)

(declare-fun mapRest!3613 () (Array (_ BitVec 32) ValueCell!954))

(assert (=> mapNonEmpty!3614 (= (arr!1979 (_values!2405 (v!2741 (underlying!321 thiss!992)))) (store mapRest!3613 mapKey!3614 mapValue!3614))))

(declare-fun b!92806 () Bool)

(declare-fun res!47156 () Bool)

(assert (=> b!92806 (=> (not res!47156) (not e!60550))))

(assert (=> b!92806 (= res!47156 (valid!362 newMap!16))))

(declare-fun res!47149 () Bool)

(assert (=> start!11278 (=> (not res!47149) (not e!60550))))

(declare-fun valid!363 (LongMap!620) Bool)

(assert (=> start!11278 (= res!47149 (valid!363 thiss!992))))

(assert (=> start!11278 e!60550))

(assert (=> start!11278 e!60548))

(assert (=> start!11278 true))

(assert (=> start!11278 e!60545))

(declare-fun b!92796 () Bool)

(declare-fun res!47157 () Bool)

(assert (=> b!92796 (=> (not res!47157) (not e!60550))))

(assert (=> b!92796 (= res!47157 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6490 newMap!16)) (_size!457 (v!2741 (underlying!321 thiss!992)))))))

(declare-fun b!92807 () Bool)

(assert (=> b!92807 (= e!60543 (and e!60538 mapRes!3614))))

(declare-fun condMapEmpty!3614 () Bool)

(declare-fun mapDefault!3614 () ValueCell!954)

(assert (=> b!92807 (= condMapEmpty!3614 (= (arr!1979 (_values!2405 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!954)) mapDefault!3614)))))

(declare-fun b!92808 () Bool)

(declare-fun e!60542 () Bool)

(assert (=> b!92808 (= e!60542 (and e!60554 mapRes!3613))))

(declare-fun condMapEmpty!3613 () Bool)

(declare-fun mapDefault!3613 () ValueCell!954)

(assert (=> b!92808 (= condMapEmpty!3613 (= (arr!1979 (_values!2405 (v!2741 (underlying!321 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!954)) mapDefault!3613)))))

(declare-fun b!92809 () Bool)

(assert (=> b!92809 (= e!60552 tp_is_empty!2595)))

(declare-fun b!92810 () Bool)

(declare-fun res!47154 () Bool)

(assert (=> b!92810 (=> (not res!47154) (not e!60550))))

(assert (=> b!92810 (= res!47154 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2226 (_keys!4104 (v!2741 (underlying!321 thiss!992)))))))))

(assert (=> b!92811 (= e!60544 (and tp!9332 tp_is_empty!2595 (array_inv!1187 (_keys!4104 (v!2741 (underlying!321 thiss!992)))) (array_inv!1188 (_values!2405 (v!2741 (underlying!321 thiss!992)))) e!60542))))

(declare-fun mapIsEmpty!3613 () Bool)

(assert (=> mapIsEmpty!3613 mapRes!3614))

(declare-fun b!92812 () Bool)

(declare-fun e!60551 () Bool)

(assert (=> b!92812 (= e!60549 e!60551)))

(declare-fun res!47155 () Bool)

(assert (=> b!92812 (=> (not res!47155) (not e!60551))))

(assert (=> b!92812 (= res!47155 (and (not (= (select (arr!1978 (_keys!4104 (v!2741 (underlying!321 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1978 (_keys!4104 (v!2741 (underlying!321 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!45618 () V!3107)

(declare-fun get!1264 (ValueCell!954 V!3107) V!3107)

(declare-fun dynLambda!368 (Int (_ BitVec 64)) V!3107)

(assert (=> b!92812 (= lt!45618 (get!1264 (select (arr!1979 (_values!2405 (v!2741 (underlying!321 thiss!992)))) from!355) (dynLambda!368 (defaultEntry!2422 (v!2741 (underlying!321 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!92813 () Bool)

(assert (=> b!92813 (= e!60555 tp_is_empty!2595)))

(declare-fun b!92814 () Bool)

(declare-fun e!60541 () Bool)

(assert (=> b!92814 (= e!60551 e!60541)))

(declare-fun res!47150 () Bool)

(assert (=> b!92814 (=> (not res!47150) (not e!60541))))

(assert (=> b!92814 (= res!47150 (and (_1!1166 lt!45606) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!45615 () Unit!2786)

(assert (=> b!92814 (= lt!45615 e!60553)))

(declare-fun c!15450 () Bool)

(declare-fun contains!789 (ListLongMap!1529 (_ BitVec 64)) Bool)

(assert (=> b!92814 (= c!15450 (contains!789 lt!45619 (select (arr!1978 (_keys!4104 (v!2741 (underlying!321 thiss!992)))) from!355)))))

(declare-fun update!137 (LongMapFixedSize!816 (_ BitVec 64) V!3107) tuple2!2312)

(assert (=> b!92814 (= lt!45606 (update!137 newMap!16 (select (arr!1978 (_keys!4104 (v!2741 (underlying!321 thiss!992)))) from!355) lt!45618))))

(declare-fun mapIsEmpty!3614 () Bool)

(assert (=> mapIsEmpty!3614 mapRes!3613))

(declare-fun b!92815 () Bool)

(assert (=> b!92815 (= e!60541 (not e!60547))))

(declare-fun res!47153 () Bool)

(assert (=> b!92815 (=> res!47153 e!60547)))

(assert (=> b!92815 (= res!47153 (not (= (getCurrentListMap!462 (_keys!4104 (v!2741 (underlying!321 thiss!992))) (_values!2405 (v!2741 (underlying!321 thiss!992))) (mask!6490 (v!2741 (underlying!321 thiss!992))) (extraKeys!2251 (v!2741 (underlying!321 thiss!992))) (zeroValue!2309 (v!2741 (underlying!321 thiss!992))) (minValue!2309 (v!2741 (underlying!321 thiss!992))) from!355 (defaultEntry!2422 (v!2741 (underlying!321 thiss!992)))) (map!1233 (_2!1166 lt!45606)))))))

(declare-fun lt!45616 () tuple2!2310)

(declare-fun lt!45613 () ListLongMap!1529)

(declare-fun lt!45614 () tuple2!2310)

(declare-fun lt!45612 () ListLongMap!1529)

(declare-fun +!133 (ListLongMap!1529 tuple2!2310) ListLongMap!1529)

(assert (=> b!92815 (= (+!133 lt!45613 lt!45614) (+!133 (+!133 lt!45612 lt!45614) lt!45616))))

(assert (=> b!92815 (= lt!45614 (tuple2!2311 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2309 (v!2741 (underlying!321 thiss!992)))))))

(declare-fun lt!45620 () Unit!2786)

(declare-fun addCommutativeForDiffKeys!52 (ListLongMap!1529 (_ BitVec 64) V!3107 (_ BitVec 64) V!3107) Unit!2786)

(assert (=> b!92815 (= lt!45620 (addCommutativeForDiffKeys!52 lt!45612 (select (arr!1978 (_keys!4104 (v!2741 (underlying!321 thiss!992)))) from!355) lt!45618 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2309 (v!2741 (underlying!321 thiss!992)))))))

(declare-fun lt!45610 () ListLongMap!1529)

(assert (=> b!92815 (= lt!45610 lt!45613)))

(assert (=> b!92815 (= lt!45613 (+!133 lt!45612 lt!45616))))

(declare-fun lt!45605 () ListLongMap!1529)

(declare-fun lt!45608 () tuple2!2310)

(assert (=> b!92815 (= lt!45610 (+!133 lt!45605 lt!45608))))

(declare-fun lt!45617 () ListLongMap!1529)

(assert (=> b!92815 (= lt!45612 (+!133 lt!45617 lt!45608))))

(assert (=> b!92815 (= lt!45608 (tuple2!2311 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2309 (v!2741 (underlying!321 thiss!992)))))))

(assert (=> b!92815 (= lt!45605 (+!133 lt!45617 lt!45616))))

(assert (=> b!92815 (= lt!45616 (tuple2!2311 (select (arr!1978 (_keys!4104 (v!2741 (underlying!321 thiss!992)))) from!355) lt!45618))))

(declare-fun lt!45602 () Unit!2786)

(assert (=> b!92815 (= lt!45602 (addCommutativeForDiffKeys!52 lt!45617 (select (arr!1978 (_keys!4104 (v!2741 (underlying!321 thiss!992)))) from!355) lt!45618 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2309 (v!2741 (underlying!321 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!97 (array!4160 array!4162 (_ BitVec 32) (_ BitVec 32) V!3107 V!3107 (_ BitVec 32) Int) ListLongMap!1529)

(assert (=> b!92815 (= lt!45617 (getCurrentListMapNoExtraKeys!97 (_keys!4104 (v!2741 (underlying!321 thiss!992))) (_values!2405 (v!2741 (underlying!321 thiss!992))) (mask!6490 (v!2741 (underlying!321 thiss!992))) (extraKeys!2251 (v!2741 (underlying!321 thiss!992))) (zeroValue!2309 (v!2741 (underlying!321 thiss!992))) (minValue!2309 (v!2741 (underlying!321 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2422 (v!2741 (underlying!321 thiss!992)))))))

(assert (= (and start!11278 res!47149) b!92810))

(assert (= (and b!92810 res!47154) b!92806))

(assert (= (and b!92806 res!47156) b!92796))

(assert (= (and b!92796 res!47157) b!92797))

(assert (= (and b!92797 res!47152) b!92812))

(assert (= (and b!92812 res!47155) b!92814))

(assert (= (and b!92814 c!15450) b!92795))

(assert (= (and b!92814 (not c!15450)) b!92798))

(assert (= (and b!92814 res!47150) b!92815))

(assert (= (and b!92815 (not res!47153)) b!92801))

(assert (= (and b!92801 (not res!47151)) b!92800))

(assert (= (and b!92808 condMapEmpty!3613) mapIsEmpty!3614))

(assert (= (and b!92808 (not condMapEmpty!3613)) mapNonEmpty!3614))

(get-info :version)

(assert (= (and mapNonEmpty!3614 ((_ is ValueCellFull!954) mapValue!3614)) b!92813))

(assert (= (and b!92808 ((_ is ValueCellFull!954) mapDefault!3613)) b!92802))

(assert (= b!92811 b!92808))

(assert (= b!92803 b!92811))

(assert (= b!92799 b!92803))

(assert (= start!11278 b!92799))

(assert (= (and b!92807 condMapEmpty!3614) mapIsEmpty!3613))

(assert (= (and b!92807 (not condMapEmpty!3614)) mapNonEmpty!3613))

(assert (= (and mapNonEmpty!3613 ((_ is ValueCellFull!954) mapValue!3613)) b!92809))

(assert (= (and b!92807 ((_ is ValueCellFull!954) mapDefault!3614)) b!92805))

(assert (= b!92804 b!92807))

(assert (= start!11278 b!92804))

(declare-fun b_lambda!4099 () Bool)

(assert (=> (not b_lambda!4099) (not b!92812)))

(declare-fun t!5457 () Bool)

(declare-fun tb!1837 () Bool)

(assert (=> (and b!92811 (= (defaultEntry!2422 (v!2741 (underlying!321 thiss!992))) (defaultEntry!2422 (v!2741 (underlying!321 thiss!992)))) t!5457) tb!1837))

(declare-fun result!3133 () Bool)

(assert (=> tb!1837 (= result!3133 tp_is_empty!2595)))

(assert (=> b!92812 t!5457))

(declare-fun b_and!5637 () Bool)

(assert (= b_and!5633 (and (=> t!5457 result!3133) b_and!5637)))

(declare-fun t!5459 () Bool)

(declare-fun tb!1839 () Bool)

(assert (=> (and b!92804 (= (defaultEntry!2422 newMap!16) (defaultEntry!2422 (v!2741 (underlying!321 thiss!992)))) t!5459) tb!1839))

(declare-fun result!3137 () Bool)

(assert (= result!3137 result!3133))

(assert (=> b!92812 t!5459))

(declare-fun b_and!5639 () Bool)

(assert (= b_and!5635 (and (=> t!5459 result!3137) b_and!5639)))

(declare-fun m!99929 () Bool)

(assert (=> b!92811 m!99929))

(declare-fun m!99931 () Bool)

(assert (=> b!92811 m!99931))

(declare-fun m!99933 () Bool)

(assert (=> start!11278 m!99933))

(declare-fun m!99935 () Bool)

(assert (=> b!92814 m!99935))

(assert (=> b!92814 m!99935))

(declare-fun m!99937 () Bool)

(assert (=> b!92814 m!99937))

(assert (=> b!92814 m!99935))

(declare-fun m!99939 () Bool)

(assert (=> b!92814 m!99939))

(declare-fun m!99941 () Bool)

(assert (=> b!92801 m!99941))

(declare-fun m!99943 () Bool)

(assert (=> b!92800 m!99943))

(declare-fun m!99945 () Bool)

(assert (=> b!92806 m!99945))

(declare-fun m!99947 () Bool)

(assert (=> b!92804 m!99947))

(declare-fun m!99949 () Bool)

(assert (=> b!92804 m!99949))

(declare-fun m!99951 () Bool)

(assert (=> b!92815 m!99951))

(declare-fun m!99953 () Bool)

(assert (=> b!92815 m!99953))

(declare-fun m!99955 () Bool)

(assert (=> b!92815 m!99955))

(declare-fun m!99957 () Bool)

(assert (=> b!92815 m!99957))

(declare-fun m!99959 () Bool)

(assert (=> b!92815 m!99959))

(assert (=> b!92815 m!99935))

(assert (=> b!92815 m!99935))

(declare-fun m!99961 () Bool)

(assert (=> b!92815 m!99961))

(declare-fun m!99963 () Bool)

(assert (=> b!92815 m!99963))

(assert (=> b!92815 m!99935))

(declare-fun m!99965 () Bool)

(assert (=> b!92815 m!99965))

(declare-fun m!99967 () Bool)

(assert (=> b!92815 m!99967))

(declare-fun m!99969 () Bool)

(assert (=> b!92815 m!99969))

(assert (=> b!92815 m!99955))

(declare-fun m!99971 () Bool)

(assert (=> b!92815 m!99971))

(declare-fun m!99973 () Bool)

(assert (=> b!92815 m!99973))

(declare-fun m!99975 () Bool)

(assert (=> b!92795 m!99975))

(declare-fun m!99977 () Bool)

(assert (=> b!92795 m!99977))

(assert (=> b!92795 m!99935))

(declare-fun m!99979 () Bool)

(assert (=> b!92795 m!99979))

(assert (=> b!92795 m!99935))

(assert (=> b!92795 m!99935))

(declare-fun m!99981 () Bool)

(assert (=> b!92795 m!99981))

(assert (=> b!92795 m!99935))

(declare-fun m!99983 () Bool)

(assert (=> b!92795 m!99983))

(declare-fun m!99985 () Bool)

(assert (=> b!92797 m!99985))

(declare-fun m!99987 () Bool)

(assert (=> b!92797 m!99987))

(assert (=> b!92812 m!99935))

(declare-fun m!99989 () Bool)

(assert (=> b!92812 m!99989))

(declare-fun m!99991 () Bool)

(assert (=> b!92812 m!99991))

(assert (=> b!92812 m!99989))

(assert (=> b!92812 m!99991))

(declare-fun m!99993 () Bool)

(assert (=> b!92812 m!99993))

(declare-fun m!99995 () Bool)

(assert (=> mapNonEmpty!3613 m!99995))

(declare-fun m!99997 () Bool)

(assert (=> mapNonEmpty!3614 m!99997))

(check-sat (not b_lambda!4099) (not b!92797) b_and!5637 (not b_next!2359) (not b!92795) (not b_next!2357) (not b!92815) b_and!5639 (not b!92804) (not start!11278) (not b!92812) (not b!92801) tp_is_empty!2595 (not b!92800) (not b!92806) (not b!92814) (not mapNonEmpty!3613) (not mapNonEmpty!3614) (not b!92811))
(check-sat b_and!5637 b_and!5639 (not b_next!2357) (not b_next!2359))
