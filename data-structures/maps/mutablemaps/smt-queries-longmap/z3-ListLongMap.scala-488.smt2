; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10852 () Bool)

(assert start!10852)

(declare-fun b!87671 () Bool)

(declare-fun b_free!2249 () Bool)

(declare-fun b_next!2249 () Bool)

(assert (=> b!87671 (= b_free!2249 (not b_next!2249))))

(declare-fun tp!8981 () Bool)

(declare-fun b_and!5269 () Bool)

(assert (=> b!87671 (= tp!8981 b_and!5269)))

(declare-fun b!87670 () Bool)

(declare-fun b_free!2251 () Bool)

(declare-fun b_next!2251 () Bool)

(assert (=> b!87670 (= b_free!2251 (not b_next!2251))))

(declare-fun tp!8979 () Bool)

(declare-fun b_and!5271 () Bool)

(assert (=> b!87670 (= tp!8979 b_and!5271)))

(declare-fun b!87662 () Bool)

(declare-fun e!57140 () Bool)

(declare-fun tp_is_empty!2541 () Bool)

(assert (=> b!87662 (= e!57140 tp_is_empty!2541)))

(declare-fun b!87663 () Bool)

(declare-fun res!44950 () Bool)

(declare-fun e!57130 () Bool)

(assert (=> b!87663 (=> res!44950 e!57130)))

(declare-datatypes ((V!3035 0))(
  ( (V!3036 (val!1315 Int)) )
))
(declare-datatypes ((array!4042 0))(
  ( (array!4043 (arr!1924 (Array (_ BitVec 32) (_ BitVec 64))) (size!2169 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!927 0))(
  ( (ValueCellFull!927 (v!2662 V!3035)) (EmptyCell!927) )
))
(declare-datatypes ((array!4044 0))(
  ( (array!4045 (arr!1925 (Array (_ BitVec 32) ValueCell!927)) (size!2170 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!762 0))(
  ( (LongMapFixedSize!763 (defaultEntry!2359 Int) (mask!6397 (_ BitVec 32)) (extraKeys!2194 (_ BitVec 32)) (zeroValue!2249 V!3035) (minValue!2249 V!3035) (_size!430 (_ BitVec 32)) (_keys!4035 array!4042) (_values!2342 array!4044) (_vacant!430 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!568 0))(
  ( (Cell!569 (v!2663 LongMapFixedSize!762)) )
))
(declare-datatypes ((LongMap!568 0))(
  ( (LongMap!569 (underlying!295 Cell!568)) )
))
(declare-fun thiss!992 () LongMap!568)

(assert (=> b!87663 (= res!44950 (or (not (= (size!2170 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6397 (v!2663 (underlying!295 thiss!992)))))) (not (= (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (size!2170 (_values!2342 (v!2663 (underlying!295 thiss!992)))))) (bvslt (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000000) (bvslt (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000000) (bvsgt (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!87664 () Bool)

(declare-fun res!44945 () Bool)

(declare-fun e!57142 () Bool)

(assert (=> b!87664 (=> (not res!44945) (not e!57142))))

(declare-fun newMap!16 () LongMapFixedSize!762)

(declare-fun valid!330 (LongMapFixedSize!762) Bool)

(assert (=> b!87664 (= res!44945 (valid!330 newMap!16))))

(declare-fun b!87665 () Bool)

(declare-fun res!44943 () Bool)

(assert (=> b!87665 (=> (not res!44943) (not e!57142))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!87665 (= res!44943 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992)))))))))

(declare-fun b!87667 () Bool)

(declare-fun e!57132 () Bool)

(declare-fun e!57138 () Bool)

(assert (=> b!87667 (= e!57132 e!57138)))

(declare-fun b!87668 () Bool)

(declare-fun e!57134 () Bool)

(declare-fun e!57136 () Bool)

(declare-fun mapRes!3426 () Bool)

(assert (=> b!87668 (= e!57134 (and e!57136 mapRes!3426))))

(declare-fun condMapEmpty!3426 () Bool)

(declare-fun mapDefault!3425 () ValueCell!927)

(assert (=> b!87668 (= condMapEmpty!3426 (= (arr!1925 (_values!2342 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!927)) mapDefault!3425)))))

(declare-fun b!87669 () Bool)

(declare-fun e!57126 () Bool)

(declare-fun e!57139 () Bool)

(declare-fun mapRes!3425 () Bool)

(assert (=> b!87669 (= e!57126 (and e!57139 mapRes!3425))))

(declare-fun condMapEmpty!3425 () Bool)

(declare-fun mapDefault!3426 () ValueCell!927)

(assert (=> b!87669 (= condMapEmpty!3425 (= (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!927)) mapDefault!3426)))))

(declare-fun mapIsEmpty!3425 () Bool)

(assert (=> mapIsEmpty!3425 mapRes!3425))

(declare-fun e!57129 () Bool)

(declare-fun array_inv!1153 (array!4042) Bool)

(declare-fun array_inv!1154 (array!4044) Bool)

(assert (=> b!87670 (= e!57129 (and tp!8979 tp_is_empty!2541 (array_inv!1153 (_keys!4035 newMap!16)) (array_inv!1154 (_values!2342 newMap!16)) e!57134))))

(declare-fun e!57128 () Bool)

(assert (=> b!87671 (= e!57128 (and tp!8981 tp_is_empty!2541 (array_inv!1153 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (array_inv!1154 (_values!2342 (v!2663 (underlying!295 thiss!992)))) e!57126))))

(declare-fun b!87672 () Bool)

(declare-fun e!57141 () Bool)

(assert (=> b!87672 (= e!57141 (not e!57130))))

(declare-fun res!44944 () Bool)

(assert (=> b!87672 (=> res!44944 e!57130)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!87672 (= res!44944 (not (validMask!0 (mask!6397 (v!2663 (underlying!295 thiss!992))))))))

(declare-datatypes ((tuple2!2240 0))(
  ( (tuple2!2241 (_1!1130 (_ BitVec 64)) (_2!1130 V!3035)) )
))
(declare-fun lt!41592 () tuple2!2240)

(declare-datatypes ((List!1556 0))(
  ( (Nil!1553) (Cons!1552 (h!2144 tuple2!2240) (t!5302 List!1556)) )
))
(declare-datatypes ((ListLongMap!1491 0))(
  ( (ListLongMap!1492 (toList!761 List!1556)) )
))
(declare-fun lt!41585 () ListLongMap!1491)

(declare-fun lt!41584 () tuple2!2240)

(declare-fun lt!41589 () ListLongMap!1491)

(declare-fun +!118 (ListLongMap!1491 tuple2!2240) ListLongMap!1491)

(assert (=> b!87672 (= (+!118 lt!41589 lt!41584) (+!118 (+!118 lt!41585 lt!41584) lt!41592))))

(assert (=> b!87672 (= lt!41584 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun lt!41579 () V!3035)

(declare-datatypes ((Unit!2618 0))(
  ( (Unit!2619) )
))
(declare-fun lt!41583 () Unit!2618)

(declare-fun addCommutativeForDiffKeys!37 (ListLongMap!1491 (_ BitVec 64) V!3035 (_ BitVec 64) V!3035) Unit!2618)

(assert (=> b!87672 (= lt!41583 (addCommutativeForDiffKeys!37 lt!41585 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun lt!41577 () ListLongMap!1491)

(assert (=> b!87672 (= lt!41577 lt!41589)))

(assert (=> b!87672 (= lt!41589 (+!118 lt!41585 lt!41592))))

(declare-fun lt!41580 () ListLongMap!1491)

(declare-fun lt!41591 () tuple2!2240)

(assert (=> b!87672 (= lt!41577 (+!118 lt!41580 lt!41591))))

(declare-fun lt!41587 () ListLongMap!1491)

(assert (=> b!87672 (= lt!41585 (+!118 lt!41587 lt!41591))))

(assert (=> b!87672 (= lt!41591 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))

(assert (=> b!87672 (= lt!41580 (+!118 lt!41587 lt!41592))))

(assert (=> b!87672 (= lt!41592 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))

(declare-fun lt!41586 () Unit!2618)

(assert (=> b!87672 (= lt!41586 (addCommutativeForDiffKeys!37 lt!41587 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!82 (array!4042 array!4044 (_ BitVec 32) (_ BitVec 32) V!3035 V!3035 (_ BitVec 32) Int) ListLongMap!1491)

(assert (=> b!87672 (= lt!41587 (getCurrentListMapNoExtraKeys!82 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (_values!2342 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992))) (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) (minValue!2249 (v!2663 (underlying!295 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun mapIsEmpty!3426 () Bool)

(assert (=> mapIsEmpty!3426 mapRes!3426))

(declare-fun b!87673 () Bool)

(declare-fun e!57125 () Unit!2618)

(declare-fun Unit!2620 () Unit!2618)

(assert (=> b!87673 (= e!57125 Unit!2620)))

(declare-fun mapNonEmpty!3425 () Bool)

(declare-fun tp!8982 () Bool)

(declare-fun e!57127 () Bool)

(assert (=> mapNonEmpty!3425 (= mapRes!3426 (and tp!8982 e!57127))))

(declare-fun mapKey!3426 () (_ BitVec 32))

(declare-fun mapRest!3425 () (Array (_ BitVec 32) ValueCell!927))

(declare-fun mapValue!3425 () ValueCell!927)

(assert (=> mapNonEmpty!3425 (= (arr!1925 (_values!2342 newMap!16)) (store mapRest!3425 mapKey!3426 mapValue!3425))))

(declare-fun b!87674 () Bool)

(assert (=> b!87674 (= e!57138 e!57128)))

(declare-fun b!87675 () Bool)

(declare-fun e!57131 () Bool)

(assert (=> b!87675 (= e!57142 e!57131)))

(declare-fun res!44946 () Bool)

(assert (=> b!87675 (=> (not res!44946) (not e!57131))))

(declare-fun lt!41588 () ListLongMap!1491)

(declare-fun lt!41575 () ListLongMap!1491)

(assert (=> b!87675 (= res!44946 (= lt!41588 lt!41575))))

(declare-fun map!1198 (LongMapFixedSize!762) ListLongMap!1491)

(assert (=> b!87675 (= lt!41575 (map!1198 newMap!16))))

(declare-fun getCurrentListMap!444 (array!4042 array!4044 (_ BitVec 32) (_ BitVec 32) V!3035 V!3035 (_ BitVec 32) Int) ListLongMap!1491)

(assert (=> b!87675 (= lt!41588 (getCurrentListMap!444 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (_values!2342 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992))) (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) (minValue!2249 (v!2663 (underlying!295 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun b!87676 () Bool)

(declare-fun e!57133 () Bool)

(assert (=> b!87676 (= e!57131 e!57133)))

(declare-fun res!44949 () Bool)

(assert (=> b!87676 (=> (not res!44949) (not e!57133))))

(assert (=> b!87676 (= res!44949 (and (not (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1219 (ValueCell!927 V!3035) V!3035)

(declare-fun dynLambda!354 (Int (_ BitVec 64)) V!3035)

(assert (=> b!87676 (= lt!41579 (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) from!355) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!87677 () Bool)

(assert (=> b!87677 (= e!57139 tp_is_empty!2541)))

(declare-fun b!87678 () Bool)

(declare-fun Unit!2621 () Unit!2618)

(assert (=> b!87678 (= e!57125 Unit!2621)))

(declare-fun lt!41582 () Unit!2618)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!74 (array!4042 array!4044 (_ BitVec 32) (_ BitVec 32) V!3035 V!3035 (_ BitVec 64) (_ BitVec 32) Int) Unit!2618)

(assert (=> b!87678 (= lt!41582 (lemmaListMapContainsThenArrayContainsFrom!74 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (_values!2342 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992))) (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) (minValue!2249 (v!2663 (underlying!295 thiss!992))) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4042 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!87678 (arrayContainsKey!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!41578 () Unit!2618)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4042 (_ BitVec 32) (_ BitVec 32)) Unit!2618)

(assert (=> b!87678 (= lt!41578 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1557 0))(
  ( (Nil!1554) (Cons!1553 (h!2145 (_ BitVec 64)) (t!5303 List!1557)) )
))
(declare-fun arrayNoDuplicates!0 (array!4042 (_ BitVec 32) List!1557) Bool)

(assert (=> b!87678 (arrayNoDuplicates!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) from!355 Nil!1554)))

(declare-fun lt!41590 () Unit!2618)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4042 (_ BitVec 32) (_ BitVec 64) List!1557) Unit!2618)

(assert (=> b!87678 (= lt!41590 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (Cons!1553 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) Nil!1554)))))

(assert (=> b!87678 false))

(declare-fun b!87679 () Bool)

(assert (=> b!87679 (= e!57136 tp_is_empty!2541)))

(declare-fun b!87666 () Bool)

(assert (=> b!87666 (= e!57127 tp_is_empty!2541)))

(declare-fun res!44951 () Bool)

(assert (=> start!10852 (=> (not res!44951) (not e!57142))))

(declare-fun valid!331 (LongMap!568) Bool)

(assert (=> start!10852 (= res!44951 (valid!331 thiss!992))))

(assert (=> start!10852 e!57142))

(assert (=> start!10852 e!57132))

(assert (=> start!10852 true))

(assert (=> start!10852 e!57129))

(declare-fun b!87680 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4042 (_ BitVec 32)) Bool)

(assert (=> b!87680 (= e!57130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun b!87681 () Bool)

(assert (=> b!87681 (= e!57133 e!57141)))

(declare-fun res!44947 () Bool)

(assert (=> b!87681 (=> (not res!44947) (not e!57141))))

(declare-datatypes ((tuple2!2242 0))(
  ( (tuple2!2243 (_1!1131 Bool) (_2!1131 LongMapFixedSize!762)) )
))
(declare-fun lt!41581 () tuple2!2242)

(assert (=> b!87681 (= res!44947 (and (_1!1131 lt!41581) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!41576 () Unit!2618)

(assert (=> b!87681 (= lt!41576 e!57125)))

(declare-fun c!14454 () Bool)

(declare-fun contains!766 (ListLongMap!1491 (_ BitVec 64)) Bool)

(assert (=> b!87681 (= c!14454 (contains!766 lt!41575 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun update!124 (LongMapFixedSize!762 (_ BitVec 64) V!3035) tuple2!2242)

(assert (=> b!87681 (= lt!41581 (update!124 newMap!16 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))

(declare-fun b!87682 () Bool)

(declare-fun res!44948 () Bool)

(assert (=> b!87682 (=> (not res!44948) (not e!57142))))

(assert (=> b!87682 (= res!44948 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6397 newMap!16)) (_size!430 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun mapNonEmpty!3426 () Bool)

(declare-fun tp!8980 () Bool)

(assert (=> mapNonEmpty!3426 (= mapRes!3425 (and tp!8980 e!57140))))

(declare-fun mapRest!3426 () (Array (_ BitVec 32) ValueCell!927))

(declare-fun mapKey!3425 () (_ BitVec 32))

(declare-fun mapValue!3426 () ValueCell!927)

(assert (=> mapNonEmpty!3426 (= (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (store mapRest!3426 mapKey!3425 mapValue!3426))))

(assert (= (and start!10852 res!44951) b!87665))

(assert (= (and b!87665 res!44943) b!87664))

(assert (= (and b!87664 res!44945) b!87682))

(assert (= (and b!87682 res!44948) b!87675))

(assert (= (and b!87675 res!44946) b!87676))

(assert (= (and b!87676 res!44949) b!87681))

(assert (= (and b!87681 c!14454) b!87678))

(assert (= (and b!87681 (not c!14454)) b!87673))

(assert (= (and b!87681 res!44947) b!87672))

(assert (= (and b!87672 (not res!44944)) b!87663))

(assert (= (and b!87663 (not res!44950)) b!87680))

(assert (= (and b!87669 condMapEmpty!3425) mapIsEmpty!3425))

(assert (= (and b!87669 (not condMapEmpty!3425)) mapNonEmpty!3426))

(get-info :version)

(assert (= (and mapNonEmpty!3426 ((_ is ValueCellFull!927) mapValue!3426)) b!87662))

(assert (= (and b!87669 ((_ is ValueCellFull!927) mapDefault!3426)) b!87677))

(assert (= b!87671 b!87669))

(assert (= b!87674 b!87671))

(assert (= b!87667 b!87674))

(assert (= start!10852 b!87667))

(assert (= (and b!87668 condMapEmpty!3426) mapIsEmpty!3426))

(assert (= (and b!87668 (not condMapEmpty!3426)) mapNonEmpty!3425))

(assert (= (and mapNonEmpty!3425 ((_ is ValueCellFull!927) mapValue!3425)) b!87666))

(assert (= (and b!87668 ((_ is ValueCellFull!927) mapDefault!3425)) b!87679))

(assert (= b!87670 b!87668))

(assert (= start!10852 b!87670))

(declare-fun b_lambda!3889 () Bool)

(assert (=> (not b_lambda!3889) (not b!87676)))

(declare-fun t!5299 () Bool)

(declare-fun tb!1713 () Bool)

(assert (=> (and b!87671 (= (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992)))) t!5299) tb!1713))

(declare-fun result!2945 () Bool)

(assert (=> tb!1713 (= result!2945 tp_is_empty!2541)))

(assert (=> b!87676 t!5299))

(declare-fun b_and!5273 () Bool)

(assert (= b_and!5269 (and (=> t!5299 result!2945) b_and!5273)))

(declare-fun tb!1715 () Bool)

(declare-fun t!5301 () Bool)

(assert (=> (and b!87670 (= (defaultEntry!2359 newMap!16) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992)))) t!5301) tb!1715))

(declare-fun result!2949 () Bool)

(assert (= result!2949 result!2945))

(assert (=> b!87676 t!5301))

(declare-fun b_and!5275 () Bool)

(assert (= b_and!5271 (and (=> t!5301 result!2949) b_and!5275)))

(declare-fun m!93257 () Bool)

(assert (=> b!87670 m!93257))

(declare-fun m!93259 () Bool)

(assert (=> b!87670 m!93259))

(declare-fun m!93261 () Bool)

(assert (=> b!87672 m!93261))

(declare-fun m!93263 () Bool)

(assert (=> b!87672 m!93263))

(declare-fun m!93265 () Bool)

(assert (=> b!87672 m!93265))

(declare-fun m!93267 () Bool)

(assert (=> b!87672 m!93267))

(declare-fun m!93269 () Bool)

(assert (=> b!87672 m!93269))

(declare-fun m!93271 () Bool)

(assert (=> b!87672 m!93271))

(declare-fun m!93273 () Bool)

(assert (=> b!87672 m!93273))

(declare-fun m!93275 () Bool)

(assert (=> b!87672 m!93275))

(declare-fun m!93277 () Bool)

(assert (=> b!87672 m!93277))

(declare-fun m!93279 () Bool)

(assert (=> b!87672 m!93279))

(assert (=> b!87672 m!93261))

(assert (=> b!87672 m!93277))

(assert (=> b!87672 m!93277))

(declare-fun m!93281 () Bool)

(assert (=> b!87672 m!93281))

(declare-fun m!93283 () Bool)

(assert (=> b!87672 m!93283))

(declare-fun m!93285 () Bool)

(assert (=> mapNonEmpty!3426 m!93285))

(declare-fun m!93287 () Bool)

(assert (=> mapNonEmpty!3425 m!93287))

(declare-fun m!93289 () Bool)

(assert (=> b!87678 m!93289))

(declare-fun m!93291 () Bool)

(assert (=> b!87678 m!93291))

(assert (=> b!87678 m!93277))

(declare-fun m!93293 () Bool)

(assert (=> b!87678 m!93293))

(assert (=> b!87678 m!93277))

(assert (=> b!87678 m!93277))

(declare-fun m!93295 () Bool)

(assert (=> b!87678 m!93295))

(assert (=> b!87678 m!93277))

(declare-fun m!93297 () Bool)

(assert (=> b!87678 m!93297))

(assert (=> b!87681 m!93277))

(assert (=> b!87681 m!93277))

(declare-fun m!93299 () Bool)

(assert (=> b!87681 m!93299))

(assert (=> b!87681 m!93277))

(declare-fun m!93301 () Bool)

(assert (=> b!87681 m!93301))

(declare-fun m!93303 () Bool)

(assert (=> start!10852 m!93303))

(declare-fun m!93305 () Bool)

(assert (=> b!87664 m!93305))

(declare-fun m!93307 () Bool)

(assert (=> b!87675 m!93307))

(declare-fun m!93309 () Bool)

(assert (=> b!87675 m!93309))

(declare-fun m!93311 () Bool)

(assert (=> b!87680 m!93311))

(assert (=> b!87676 m!93277))

(declare-fun m!93313 () Bool)

(assert (=> b!87676 m!93313))

(declare-fun m!93315 () Bool)

(assert (=> b!87676 m!93315))

(assert (=> b!87676 m!93313))

(assert (=> b!87676 m!93315))

(declare-fun m!93317 () Bool)

(assert (=> b!87676 m!93317))

(declare-fun m!93319 () Bool)

(assert (=> b!87671 m!93319))

(declare-fun m!93321 () Bool)

(assert (=> b!87671 m!93321))

(check-sat (not b!87676) (not b!87671) (not b_lambda!3889) (not mapNonEmpty!3426) (not b!87680) b_and!5275 tp_is_empty!2541 (not b_next!2251) (not b!87681) b_and!5273 (not b!87664) (not start!10852) (not b!87678) (not b!87675) (not mapNonEmpty!3425) (not b_next!2249) (not b!87672) (not b!87670))
(check-sat b_and!5273 b_and!5275 (not b_next!2249) (not b_next!2251))
(get-model)

(declare-fun b_lambda!3893 () Bool)

(assert (= b_lambda!3889 (or (and b!87671 b_free!2249) (and b!87670 b_free!2251 (= (defaultEntry!2359 newMap!16) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))))) b_lambda!3893)))

(check-sat (not b!87676) (not b!87671) (not mapNonEmpty!3426) (not b!87680) b_and!5275 tp_is_empty!2541 (not b_lambda!3893) (not b_next!2251) (not b!87681) b_and!5273 (not b!87664) (not start!10852) (not b!87678) (not b!87675) (not mapNonEmpty!3425) (not b_next!2249) (not b!87672) (not b!87670))
(check-sat b_and!5273 b_and!5275 (not b_next!2249) (not b_next!2251))
(get-model)

(declare-fun d!23283 () Bool)

(assert (=> d!23283 (not (arrayContainsKey!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!41649 () Unit!2618)

(declare-fun choose!68 (array!4042 (_ BitVec 32) (_ BitVec 64) List!1557) Unit!2618)

(assert (=> d!23283 (= lt!41649 (choose!68 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (Cons!1553 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) Nil!1554)))))

(assert (=> d!23283 (bvslt (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!23283 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (Cons!1553 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) Nil!1554)) lt!41649)))

(declare-fun bs!3697 () Bool)

(assert (= bs!3697 d!23283))

(assert (=> bs!3697 m!93277))

(assert (=> bs!3697 m!93295))

(assert (=> bs!3697 m!93277))

(declare-fun m!93389 () Bool)

(assert (=> bs!3697 m!93389))

(assert (=> b!87678 d!23283))

(declare-fun d!23285 () Bool)

(assert (=> d!23285 (arrayNoDuplicates!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) from!355 Nil!1554)))

(declare-fun lt!41652 () Unit!2618)

(declare-fun choose!39 (array!4042 (_ BitVec 32) (_ BitVec 32)) Unit!2618)

(assert (=> d!23285 (= lt!41652 (choose!39 (_keys!4035 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!23285 (bvslt (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!23285 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000000 from!355) lt!41652)))

(declare-fun bs!3698 () Bool)

(assert (= bs!3698 d!23285))

(assert (=> bs!3698 m!93291))

(declare-fun m!93391 () Bool)

(assert (=> bs!3698 m!93391))

(assert (=> b!87678 d!23285))

(declare-fun d!23287 () Bool)

(declare-fun res!44983 () Bool)

(declare-fun e!57201 () Bool)

(assert (=> d!23287 (=> res!44983 e!57201)))

(assert (=> d!23287 (= res!44983 (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(assert (=> d!23287 (= (arrayContainsKey!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!57201)))

(declare-fun b!87754 () Bool)

(declare-fun e!57202 () Bool)

(assert (=> b!87754 (= e!57201 e!57202)))

(declare-fun res!44984 () Bool)

(assert (=> b!87754 (=> (not res!44984) (not e!57202))))

(assert (=> b!87754 (= res!44984 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(declare-fun b!87755 () Bool)

(assert (=> b!87755 (= e!57202 (arrayContainsKey!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!23287 (not res!44983)) b!87754))

(assert (= (and b!87754 res!44984) b!87755))

(declare-fun m!93393 () Bool)

(assert (=> d!23287 m!93393))

(assert (=> b!87755 m!93277))

(declare-fun m!93395 () Bool)

(assert (=> b!87755 m!93395))

(assert (=> b!87678 d!23287))

(declare-fun d!23289 () Bool)

(declare-fun e!57205 () Bool)

(assert (=> d!23289 e!57205))

(declare-fun c!14460 () Bool)

(assert (=> d!23289 (= c!14460 (and (not (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!41655 () Unit!2618)

(declare-fun choose!521 (array!4042 array!4044 (_ BitVec 32) (_ BitVec 32) V!3035 V!3035 (_ BitVec 64) (_ BitVec 32) Int) Unit!2618)

(assert (=> d!23289 (= lt!41655 (choose!521 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (_values!2342 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992))) (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) (minValue!2249 (v!2663 (underlying!295 thiss!992))) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992)))))))

(assert (=> d!23289 (validMask!0 (mask!6397 (v!2663 (underlying!295 thiss!992))))))

(assert (=> d!23289 (= (lemmaListMapContainsThenArrayContainsFrom!74 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (_values!2342 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992))) (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) (minValue!2249 (v!2663 (underlying!295 thiss!992))) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992)))) lt!41655)))

(declare-fun b!87760 () Bool)

(assert (=> b!87760 (= e!57205 (arrayContainsKey!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!87761 () Bool)

(assert (=> b!87761 (= e!57205 (ite (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!23289 c!14460) b!87760))

(assert (= (and d!23289 (not c!14460)) b!87761))

(assert (=> d!23289 m!93277))

(declare-fun m!93397 () Bool)

(assert (=> d!23289 m!93397))

(assert (=> d!23289 m!93265))

(assert (=> b!87760 m!93277))

(assert (=> b!87760 m!93295))

(assert (=> b!87678 d!23289))

(declare-fun b!87772 () Bool)

(declare-fun e!57216 () Bool)

(declare-fun e!57214 () Bool)

(assert (=> b!87772 (= e!57216 e!57214)))

(declare-fun c!14463 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!87772 (= c!14463 (validKeyInArray!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun b!87773 () Bool)

(declare-fun e!57217 () Bool)

(assert (=> b!87773 (= e!57217 e!57216)))

(declare-fun res!44992 () Bool)

(assert (=> b!87773 (=> (not res!44992) (not e!57216))))

(declare-fun e!57215 () Bool)

(assert (=> b!87773 (= res!44992 (not e!57215))))

(declare-fun res!44993 () Bool)

(assert (=> b!87773 (=> (not res!44993) (not e!57215))))

(assert (=> b!87773 (= res!44993 (validKeyInArray!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun b!87774 () Bool)

(declare-fun contains!767 (List!1557 (_ BitVec 64)) Bool)

(assert (=> b!87774 (= e!57215 (contains!767 Nil!1554 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun call!8356 () Bool)

(declare-fun bm!8353 () Bool)

(assert (=> bm!8353 (= call!8356 (arrayNoDuplicates!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!14463 (Cons!1553 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) Nil!1554) Nil!1554)))))

(declare-fun b!87775 () Bool)

(assert (=> b!87775 (= e!57214 call!8356)))

(declare-fun d!23291 () Bool)

(declare-fun res!44991 () Bool)

(assert (=> d!23291 (=> res!44991 e!57217)))

(assert (=> d!23291 (= res!44991 (bvsge from!355 (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(assert (=> d!23291 (= (arrayNoDuplicates!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) from!355 Nil!1554) e!57217)))

(declare-fun b!87776 () Bool)

(assert (=> b!87776 (= e!57214 call!8356)))

(assert (= (and d!23291 (not res!44991)) b!87773))

(assert (= (and b!87773 res!44993) b!87774))

(assert (= (and b!87773 res!44992) b!87772))

(assert (= (and b!87772 c!14463) b!87776))

(assert (= (and b!87772 (not c!14463)) b!87775))

(assert (= (or b!87776 b!87775) bm!8353))

(assert (=> b!87772 m!93277))

(assert (=> b!87772 m!93277))

(declare-fun m!93399 () Bool)

(assert (=> b!87772 m!93399))

(assert (=> b!87773 m!93277))

(assert (=> b!87773 m!93277))

(assert (=> b!87773 m!93399))

(assert (=> b!87774 m!93277))

(assert (=> b!87774 m!93277))

(declare-fun m!93401 () Bool)

(assert (=> b!87774 m!93401))

(assert (=> bm!8353 m!93277))

(declare-fun m!93403 () Bool)

(assert (=> bm!8353 m!93403))

(assert (=> b!87678 d!23291))

(declare-fun d!23293 () Bool)

(assert (=> d!23293 (= (array_inv!1153 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvsge (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!87671 d!23293))

(declare-fun d!23295 () Bool)

(assert (=> d!23295 (= (array_inv!1154 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvsge (size!2170 (_values!2342 (v!2663 (underlying!295 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!87671 d!23295))

(declare-fun d!23297 () Bool)

(assert (=> d!23297 (= (array_inv!1153 (_keys!4035 newMap!16)) (bvsge (size!2169 (_keys!4035 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!87670 d!23297))

(declare-fun d!23299 () Bool)

(assert (=> d!23299 (= (array_inv!1154 (_values!2342 newMap!16)) (bvsge (size!2170 (_values!2342 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!87670 d!23299))

(declare-fun d!23301 () Bool)

(declare-fun e!57220 () Bool)

(assert (=> d!23301 e!57220))

(declare-fun res!44999 () Bool)

(assert (=> d!23301 (=> (not res!44999) (not e!57220))))

(declare-fun lt!41664 () ListLongMap!1491)

(assert (=> d!23301 (= res!44999 (contains!766 lt!41664 (_1!1130 lt!41592)))))

(declare-fun lt!41665 () List!1556)

(assert (=> d!23301 (= lt!41664 (ListLongMap!1492 lt!41665))))

(declare-fun lt!41666 () Unit!2618)

(declare-fun lt!41667 () Unit!2618)

(assert (=> d!23301 (= lt!41666 lt!41667)))

(declare-datatypes ((Option!146 0))(
  ( (Some!145 (v!2667 V!3035)) (None!144) )
))
(declare-fun getValueByKey!140 (List!1556 (_ BitVec 64)) Option!146)

(assert (=> d!23301 (= (getValueByKey!140 lt!41665 (_1!1130 lt!41592)) (Some!145 (_2!1130 lt!41592)))))

(declare-fun lemmaContainsTupThenGetReturnValue!59 (List!1556 (_ BitVec 64) V!3035) Unit!2618)

(assert (=> d!23301 (= lt!41667 (lemmaContainsTupThenGetReturnValue!59 lt!41665 (_1!1130 lt!41592) (_2!1130 lt!41592)))))

(declare-fun insertStrictlySorted!61 (List!1556 (_ BitVec 64) V!3035) List!1556)

(assert (=> d!23301 (= lt!41665 (insertStrictlySorted!61 (toList!761 (+!118 lt!41585 lt!41584)) (_1!1130 lt!41592) (_2!1130 lt!41592)))))

(assert (=> d!23301 (= (+!118 (+!118 lt!41585 lt!41584) lt!41592) lt!41664)))

(declare-fun b!87781 () Bool)

(declare-fun res!44998 () Bool)

(assert (=> b!87781 (=> (not res!44998) (not e!57220))))

(assert (=> b!87781 (= res!44998 (= (getValueByKey!140 (toList!761 lt!41664) (_1!1130 lt!41592)) (Some!145 (_2!1130 lt!41592))))))

(declare-fun b!87782 () Bool)

(declare-fun contains!768 (List!1556 tuple2!2240) Bool)

(assert (=> b!87782 (= e!57220 (contains!768 (toList!761 lt!41664) lt!41592))))

(assert (= (and d!23301 res!44999) b!87781))

(assert (= (and b!87781 res!44998) b!87782))

(declare-fun m!93405 () Bool)

(assert (=> d!23301 m!93405))

(declare-fun m!93407 () Bool)

(assert (=> d!23301 m!93407))

(declare-fun m!93409 () Bool)

(assert (=> d!23301 m!93409))

(declare-fun m!93411 () Bool)

(assert (=> d!23301 m!93411))

(declare-fun m!93413 () Bool)

(assert (=> b!87781 m!93413))

(declare-fun m!93415 () Bool)

(assert (=> b!87782 m!93415))

(assert (=> b!87672 d!23301))

(declare-fun b!87807 () Bool)

(declare-fun lt!41687 () Unit!2618)

(declare-fun lt!41685 () Unit!2618)

(assert (=> b!87807 (= lt!41687 lt!41685)))

(declare-fun lt!41683 () V!3035)

(declare-fun lt!41686 () ListLongMap!1491)

(declare-fun lt!41684 () (_ BitVec 64))

(declare-fun lt!41688 () (_ BitVec 64))

(assert (=> b!87807 (not (contains!766 (+!118 lt!41686 (tuple2!2241 lt!41688 lt!41683)) lt!41684))))

(declare-fun addStillNotContains!34 (ListLongMap!1491 (_ BitVec 64) V!3035 (_ BitVec 64)) Unit!2618)

(assert (=> b!87807 (= lt!41685 (addStillNotContains!34 lt!41686 lt!41688 lt!41683 lt!41684))))

(assert (=> b!87807 (= lt!41684 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!87807 (= lt!41683 (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!87807 (= lt!41688 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun call!8359 () ListLongMap!1491)

(assert (=> b!87807 (= lt!41686 call!8359)))

(declare-fun e!57238 () ListLongMap!1491)

(assert (=> b!87807 (= e!57238 (+!118 call!8359 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!87808 () Bool)

(declare-fun e!57241 () Bool)

(declare-fun e!57235 () Bool)

(assert (=> b!87808 (= e!57241 e!57235)))

(assert (=> b!87808 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(declare-fun lt!41682 () ListLongMap!1491)

(declare-fun res!45011 () Bool)

(assert (=> b!87808 (= res!45011 (contains!766 lt!41682 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!87808 (=> (not res!45011) (not e!57235))))

(declare-fun b!87809 () Bool)

(declare-fun e!57239 () Bool)

(assert (=> b!87809 (= e!57239 (= lt!41682 (getCurrentListMapNoExtraKeys!82 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (_values!2342 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992))) (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) (minValue!2249 (v!2663 (underlying!295 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))))))))

(declare-fun b!87810 () Bool)

(declare-fun e!57240 () ListLongMap!1491)

(assert (=> b!87810 (= e!57240 (ListLongMap!1492 Nil!1553))))

(declare-fun b!87811 () Bool)

(declare-fun e!57236 () Bool)

(assert (=> b!87811 (= e!57236 e!57241)))

(declare-fun c!14473 () Bool)

(declare-fun e!57237 () Bool)

(assert (=> b!87811 (= c!14473 e!57237)))

(declare-fun res!45010 () Bool)

(assert (=> b!87811 (=> (not res!45010) (not e!57237))))

(assert (=> b!87811 (= res!45010 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(declare-fun b!87812 () Bool)

(declare-fun isEmpty!343 (ListLongMap!1491) Bool)

(assert (=> b!87812 (= e!57239 (isEmpty!343 lt!41682))))

(declare-fun b!87813 () Bool)

(assert (=> b!87813 (= e!57240 e!57238)))

(declare-fun c!14474 () Bool)

(assert (=> b!87813 (= c!14474 (validKeyInArray!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun d!23303 () Bool)

(assert (=> d!23303 e!57236))

(declare-fun res!45008 () Bool)

(assert (=> d!23303 (=> (not res!45008) (not e!57236))))

(assert (=> d!23303 (= res!45008 (not (contains!766 lt!41682 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!23303 (= lt!41682 e!57240)))

(declare-fun c!14472 () Bool)

(assert (=> d!23303 (= c!14472 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(assert (=> d!23303 (validMask!0 (mask!6397 (v!2663 (underlying!295 thiss!992))))))

(assert (=> d!23303 (= (getCurrentListMapNoExtraKeys!82 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (_values!2342 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992))) (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) (minValue!2249 (v!2663 (underlying!295 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992)))) lt!41682)))

(declare-fun b!87814 () Bool)

(assert (=> b!87814 (= e!57238 call!8359)))

(declare-fun b!87815 () Bool)

(declare-fun res!45009 () Bool)

(assert (=> b!87815 (=> (not res!45009) (not e!57236))))

(assert (=> b!87815 (= res!45009 (not (contains!766 lt!41682 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!87816 () Bool)

(assert (=> b!87816 (= e!57237 (validKeyInArray!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!87816 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!87817 () Bool)

(assert (=> b!87817 (= e!57241 e!57239)))

(declare-fun c!14475 () Bool)

(assert (=> b!87817 (= c!14475 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(declare-fun bm!8356 () Bool)

(assert (=> bm!8356 (= call!8359 (getCurrentListMapNoExtraKeys!82 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (_values!2342 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992))) (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) (minValue!2249 (v!2663 (underlying!295 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun b!87818 () Bool)

(assert (=> b!87818 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(assert (=> b!87818 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2170 (_values!2342 (v!2663 (underlying!295 thiss!992))))))))

(declare-fun apply!83 (ListLongMap!1491 (_ BitVec 64)) V!3035)

(assert (=> b!87818 (= e!57235 (= (apply!83 lt!41682 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!23303 c!14472) b!87810))

(assert (= (and d!23303 (not c!14472)) b!87813))

(assert (= (and b!87813 c!14474) b!87807))

(assert (= (and b!87813 (not c!14474)) b!87814))

(assert (= (or b!87807 b!87814) bm!8356))

(assert (= (and d!23303 res!45008) b!87815))

(assert (= (and b!87815 res!45009) b!87811))

(assert (= (and b!87811 res!45010) b!87816))

(assert (= (and b!87811 c!14473) b!87808))

(assert (= (and b!87811 (not c!14473)) b!87817))

(assert (= (and b!87808 res!45011) b!87818))

(assert (= (and b!87817 c!14475) b!87809))

(assert (= (and b!87817 (not c!14475)) b!87812))

(declare-fun b_lambda!3895 () Bool)

(assert (=> (not b_lambda!3895) (not b!87807)))

(assert (=> b!87807 t!5299))

(declare-fun b_and!5285 () Bool)

(assert (= b_and!5273 (and (=> t!5299 result!2945) b_and!5285)))

(assert (=> b!87807 t!5301))

(declare-fun b_and!5287 () Bool)

(assert (= b_and!5275 (and (=> t!5301 result!2949) b_and!5287)))

(declare-fun b_lambda!3897 () Bool)

(assert (=> (not b_lambda!3897) (not b!87818)))

(assert (=> b!87818 t!5299))

(declare-fun b_and!5289 () Bool)

(assert (= b_and!5285 (and (=> t!5299 result!2945) b_and!5289)))

(assert (=> b!87818 t!5301))

(declare-fun b_and!5291 () Bool)

(assert (= b_and!5287 (and (=> t!5301 result!2949) b_and!5291)))

(declare-fun m!93417 () Bool)

(assert (=> b!87812 m!93417))

(declare-fun m!93419 () Bool)

(assert (=> bm!8356 m!93419))

(declare-fun m!93421 () Bool)

(assert (=> b!87807 m!93421))

(assert (=> b!87807 m!93393))

(declare-fun m!93423 () Bool)

(assert (=> b!87807 m!93423))

(declare-fun m!93425 () Bool)

(assert (=> b!87807 m!93425))

(declare-fun m!93427 () Bool)

(assert (=> b!87807 m!93427))

(assert (=> b!87807 m!93423))

(declare-fun m!93429 () Bool)

(assert (=> b!87807 m!93429))

(assert (=> b!87807 m!93421))

(assert (=> b!87807 m!93315))

(declare-fun m!93431 () Bool)

(assert (=> b!87807 m!93431))

(assert (=> b!87807 m!93315))

(assert (=> b!87809 m!93419))

(assert (=> b!87816 m!93393))

(assert (=> b!87816 m!93393))

(declare-fun m!93433 () Bool)

(assert (=> b!87816 m!93433))

(assert (=> b!87813 m!93393))

(assert (=> b!87813 m!93393))

(assert (=> b!87813 m!93433))

(declare-fun m!93435 () Bool)

(assert (=> d!23303 m!93435))

(assert (=> d!23303 m!93265))

(assert (=> b!87808 m!93393))

(assert (=> b!87808 m!93393))

(declare-fun m!93437 () Bool)

(assert (=> b!87808 m!93437))

(assert (=> b!87818 m!93421))

(assert (=> b!87818 m!93393))

(assert (=> b!87818 m!93393))

(declare-fun m!93439 () Bool)

(assert (=> b!87818 m!93439))

(assert (=> b!87818 m!93421))

(assert (=> b!87818 m!93315))

(assert (=> b!87818 m!93431))

(assert (=> b!87818 m!93315))

(declare-fun m!93441 () Bool)

(assert (=> b!87815 m!93441))

(assert (=> b!87672 d!23303))

(declare-fun d!23305 () Bool)

(declare-fun e!57242 () Bool)

(assert (=> d!23305 e!57242))

(declare-fun res!45013 () Bool)

(assert (=> d!23305 (=> (not res!45013) (not e!57242))))

(declare-fun lt!41689 () ListLongMap!1491)

(assert (=> d!23305 (= res!45013 (contains!766 lt!41689 (_1!1130 lt!41591)))))

(declare-fun lt!41690 () List!1556)

(assert (=> d!23305 (= lt!41689 (ListLongMap!1492 lt!41690))))

(declare-fun lt!41691 () Unit!2618)

(declare-fun lt!41692 () Unit!2618)

(assert (=> d!23305 (= lt!41691 lt!41692)))

(assert (=> d!23305 (= (getValueByKey!140 lt!41690 (_1!1130 lt!41591)) (Some!145 (_2!1130 lt!41591)))))

(assert (=> d!23305 (= lt!41692 (lemmaContainsTupThenGetReturnValue!59 lt!41690 (_1!1130 lt!41591) (_2!1130 lt!41591)))))

(assert (=> d!23305 (= lt!41690 (insertStrictlySorted!61 (toList!761 lt!41587) (_1!1130 lt!41591) (_2!1130 lt!41591)))))

(assert (=> d!23305 (= (+!118 lt!41587 lt!41591) lt!41689)))

(declare-fun b!87819 () Bool)

(declare-fun res!45012 () Bool)

(assert (=> b!87819 (=> (not res!45012) (not e!57242))))

(assert (=> b!87819 (= res!45012 (= (getValueByKey!140 (toList!761 lt!41689) (_1!1130 lt!41591)) (Some!145 (_2!1130 lt!41591))))))

(declare-fun b!87820 () Bool)

(assert (=> b!87820 (= e!57242 (contains!768 (toList!761 lt!41689) lt!41591))))

(assert (= (and d!23305 res!45013) b!87819))

(assert (= (and b!87819 res!45012) b!87820))

(declare-fun m!93443 () Bool)

(assert (=> d!23305 m!93443))

(declare-fun m!93445 () Bool)

(assert (=> d!23305 m!93445))

(declare-fun m!93447 () Bool)

(assert (=> d!23305 m!93447))

(declare-fun m!93449 () Bool)

(assert (=> d!23305 m!93449))

(declare-fun m!93451 () Bool)

(assert (=> b!87819 m!93451))

(declare-fun m!93453 () Bool)

(assert (=> b!87820 m!93453))

(assert (=> b!87672 d!23305))

(declare-fun d!23307 () Bool)

(declare-fun e!57243 () Bool)

(assert (=> d!23307 e!57243))

(declare-fun res!45015 () Bool)

(assert (=> d!23307 (=> (not res!45015) (not e!57243))))

(declare-fun lt!41693 () ListLongMap!1491)

(assert (=> d!23307 (= res!45015 (contains!766 lt!41693 (_1!1130 lt!41592)))))

(declare-fun lt!41694 () List!1556)

(assert (=> d!23307 (= lt!41693 (ListLongMap!1492 lt!41694))))

(declare-fun lt!41695 () Unit!2618)

(declare-fun lt!41696 () Unit!2618)

(assert (=> d!23307 (= lt!41695 lt!41696)))

(assert (=> d!23307 (= (getValueByKey!140 lt!41694 (_1!1130 lt!41592)) (Some!145 (_2!1130 lt!41592)))))

(assert (=> d!23307 (= lt!41696 (lemmaContainsTupThenGetReturnValue!59 lt!41694 (_1!1130 lt!41592) (_2!1130 lt!41592)))))

(assert (=> d!23307 (= lt!41694 (insertStrictlySorted!61 (toList!761 lt!41585) (_1!1130 lt!41592) (_2!1130 lt!41592)))))

(assert (=> d!23307 (= (+!118 lt!41585 lt!41592) lt!41693)))

(declare-fun b!87821 () Bool)

(declare-fun res!45014 () Bool)

(assert (=> b!87821 (=> (not res!45014) (not e!57243))))

(assert (=> b!87821 (= res!45014 (= (getValueByKey!140 (toList!761 lt!41693) (_1!1130 lt!41592)) (Some!145 (_2!1130 lt!41592))))))

(declare-fun b!87822 () Bool)

(assert (=> b!87822 (= e!57243 (contains!768 (toList!761 lt!41693) lt!41592))))

(assert (= (and d!23307 res!45015) b!87821))

(assert (= (and b!87821 res!45014) b!87822))

(declare-fun m!93455 () Bool)

(assert (=> d!23307 m!93455))

(declare-fun m!93457 () Bool)

(assert (=> d!23307 m!93457))

(declare-fun m!93459 () Bool)

(assert (=> d!23307 m!93459))

(declare-fun m!93461 () Bool)

(assert (=> d!23307 m!93461))

(declare-fun m!93463 () Bool)

(assert (=> b!87821 m!93463))

(declare-fun m!93465 () Bool)

(assert (=> b!87822 m!93465))

(assert (=> b!87672 d!23307))

(declare-fun d!23309 () Bool)

(assert (=> d!23309 (= (+!118 (+!118 lt!41587 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) (+!118 (+!118 lt!41587 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))))

(declare-fun lt!41699 () Unit!2618)

(declare-fun choose!522 (ListLongMap!1491 (_ BitVec 64) V!3035 (_ BitVec 64) V!3035) Unit!2618)

(assert (=> d!23309 (= lt!41699 (choose!522 lt!41587 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))

(assert (=> d!23309 (not (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!23309 (= (addCommutativeForDiffKeys!37 lt!41587 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))) lt!41699)))

(declare-fun bs!3699 () Bool)

(assert (= bs!3699 d!23309))

(declare-fun m!93467 () Bool)

(assert (=> bs!3699 m!93467))

(assert (=> bs!3699 m!93277))

(declare-fun m!93469 () Bool)

(assert (=> bs!3699 m!93469))

(declare-fun m!93471 () Bool)

(assert (=> bs!3699 m!93471))

(assert (=> bs!3699 m!93467))

(declare-fun m!93473 () Bool)

(assert (=> bs!3699 m!93473))

(assert (=> bs!3699 m!93471))

(declare-fun m!93475 () Bool)

(assert (=> bs!3699 m!93475))

(assert (=> b!87672 d!23309))

(declare-fun d!23311 () Bool)

(declare-fun e!57244 () Bool)

(assert (=> d!23311 e!57244))

(declare-fun res!45017 () Bool)

(assert (=> d!23311 (=> (not res!45017) (not e!57244))))

(declare-fun lt!41700 () ListLongMap!1491)

(assert (=> d!23311 (= res!45017 (contains!766 lt!41700 (_1!1130 lt!41584)))))

(declare-fun lt!41701 () List!1556)

(assert (=> d!23311 (= lt!41700 (ListLongMap!1492 lt!41701))))

(declare-fun lt!41702 () Unit!2618)

(declare-fun lt!41703 () Unit!2618)

(assert (=> d!23311 (= lt!41702 lt!41703)))

(assert (=> d!23311 (= (getValueByKey!140 lt!41701 (_1!1130 lt!41584)) (Some!145 (_2!1130 lt!41584)))))

(assert (=> d!23311 (= lt!41703 (lemmaContainsTupThenGetReturnValue!59 lt!41701 (_1!1130 lt!41584) (_2!1130 lt!41584)))))

(assert (=> d!23311 (= lt!41701 (insertStrictlySorted!61 (toList!761 lt!41589) (_1!1130 lt!41584) (_2!1130 lt!41584)))))

(assert (=> d!23311 (= (+!118 lt!41589 lt!41584) lt!41700)))

(declare-fun b!87823 () Bool)

(declare-fun res!45016 () Bool)

(assert (=> b!87823 (=> (not res!45016) (not e!57244))))

(assert (=> b!87823 (= res!45016 (= (getValueByKey!140 (toList!761 lt!41700) (_1!1130 lt!41584)) (Some!145 (_2!1130 lt!41584))))))

(declare-fun b!87824 () Bool)

(assert (=> b!87824 (= e!57244 (contains!768 (toList!761 lt!41700) lt!41584))))

(assert (= (and d!23311 res!45017) b!87823))

(assert (= (and b!87823 res!45016) b!87824))

(declare-fun m!93477 () Bool)

(assert (=> d!23311 m!93477))

(declare-fun m!93479 () Bool)

(assert (=> d!23311 m!93479))

(declare-fun m!93481 () Bool)

(assert (=> d!23311 m!93481))

(declare-fun m!93483 () Bool)

(assert (=> d!23311 m!93483))

(declare-fun m!93485 () Bool)

(assert (=> b!87823 m!93485))

(declare-fun m!93487 () Bool)

(assert (=> b!87824 m!93487))

(assert (=> b!87672 d!23311))

(declare-fun d!23313 () Bool)

(declare-fun e!57245 () Bool)

(assert (=> d!23313 e!57245))

(declare-fun res!45019 () Bool)

(assert (=> d!23313 (=> (not res!45019) (not e!57245))))

(declare-fun lt!41704 () ListLongMap!1491)

(assert (=> d!23313 (= res!45019 (contains!766 lt!41704 (_1!1130 lt!41592)))))

(declare-fun lt!41705 () List!1556)

(assert (=> d!23313 (= lt!41704 (ListLongMap!1492 lt!41705))))

(declare-fun lt!41706 () Unit!2618)

(declare-fun lt!41707 () Unit!2618)

(assert (=> d!23313 (= lt!41706 lt!41707)))

(assert (=> d!23313 (= (getValueByKey!140 lt!41705 (_1!1130 lt!41592)) (Some!145 (_2!1130 lt!41592)))))

(assert (=> d!23313 (= lt!41707 (lemmaContainsTupThenGetReturnValue!59 lt!41705 (_1!1130 lt!41592) (_2!1130 lt!41592)))))

(assert (=> d!23313 (= lt!41705 (insertStrictlySorted!61 (toList!761 lt!41587) (_1!1130 lt!41592) (_2!1130 lt!41592)))))

(assert (=> d!23313 (= (+!118 lt!41587 lt!41592) lt!41704)))

(declare-fun b!87825 () Bool)

(declare-fun res!45018 () Bool)

(assert (=> b!87825 (=> (not res!45018) (not e!57245))))

(assert (=> b!87825 (= res!45018 (= (getValueByKey!140 (toList!761 lt!41704) (_1!1130 lt!41592)) (Some!145 (_2!1130 lt!41592))))))

(declare-fun b!87826 () Bool)

(assert (=> b!87826 (= e!57245 (contains!768 (toList!761 lt!41704) lt!41592))))

(assert (= (and d!23313 res!45019) b!87825))

(assert (= (and b!87825 res!45018) b!87826))

(declare-fun m!93489 () Bool)

(assert (=> d!23313 m!93489))

(declare-fun m!93491 () Bool)

(assert (=> d!23313 m!93491))

(declare-fun m!93493 () Bool)

(assert (=> d!23313 m!93493))

(declare-fun m!93495 () Bool)

(assert (=> d!23313 m!93495))

(declare-fun m!93497 () Bool)

(assert (=> b!87825 m!93497))

(declare-fun m!93499 () Bool)

(assert (=> b!87826 m!93499))

(assert (=> b!87672 d!23313))

(declare-fun d!23315 () Bool)

(declare-fun e!57246 () Bool)

(assert (=> d!23315 e!57246))

(declare-fun res!45021 () Bool)

(assert (=> d!23315 (=> (not res!45021) (not e!57246))))

(declare-fun lt!41708 () ListLongMap!1491)

(assert (=> d!23315 (= res!45021 (contains!766 lt!41708 (_1!1130 lt!41591)))))

(declare-fun lt!41709 () List!1556)

(assert (=> d!23315 (= lt!41708 (ListLongMap!1492 lt!41709))))

(declare-fun lt!41710 () Unit!2618)

(declare-fun lt!41711 () Unit!2618)

(assert (=> d!23315 (= lt!41710 lt!41711)))

(assert (=> d!23315 (= (getValueByKey!140 lt!41709 (_1!1130 lt!41591)) (Some!145 (_2!1130 lt!41591)))))

(assert (=> d!23315 (= lt!41711 (lemmaContainsTupThenGetReturnValue!59 lt!41709 (_1!1130 lt!41591) (_2!1130 lt!41591)))))

(assert (=> d!23315 (= lt!41709 (insertStrictlySorted!61 (toList!761 lt!41580) (_1!1130 lt!41591) (_2!1130 lt!41591)))))

(assert (=> d!23315 (= (+!118 lt!41580 lt!41591) lt!41708)))

(declare-fun b!87827 () Bool)

(declare-fun res!45020 () Bool)

(assert (=> b!87827 (=> (not res!45020) (not e!57246))))

(assert (=> b!87827 (= res!45020 (= (getValueByKey!140 (toList!761 lt!41708) (_1!1130 lt!41591)) (Some!145 (_2!1130 lt!41591))))))

(declare-fun b!87828 () Bool)

(assert (=> b!87828 (= e!57246 (contains!768 (toList!761 lt!41708) lt!41591))))

(assert (= (and d!23315 res!45021) b!87827))

(assert (= (and b!87827 res!45020) b!87828))

(declare-fun m!93501 () Bool)

(assert (=> d!23315 m!93501))

(declare-fun m!93503 () Bool)

(assert (=> d!23315 m!93503))

(declare-fun m!93505 () Bool)

(assert (=> d!23315 m!93505))

(declare-fun m!93507 () Bool)

(assert (=> d!23315 m!93507))

(declare-fun m!93509 () Bool)

(assert (=> b!87827 m!93509))

(declare-fun m!93511 () Bool)

(assert (=> b!87828 m!93511))

(assert (=> b!87672 d!23315))

(declare-fun d!23317 () Bool)

(declare-fun e!57247 () Bool)

(assert (=> d!23317 e!57247))

(declare-fun res!45023 () Bool)

(assert (=> d!23317 (=> (not res!45023) (not e!57247))))

(declare-fun lt!41712 () ListLongMap!1491)

(assert (=> d!23317 (= res!45023 (contains!766 lt!41712 (_1!1130 lt!41584)))))

(declare-fun lt!41713 () List!1556)

(assert (=> d!23317 (= lt!41712 (ListLongMap!1492 lt!41713))))

(declare-fun lt!41714 () Unit!2618)

(declare-fun lt!41715 () Unit!2618)

(assert (=> d!23317 (= lt!41714 lt!41715)))

(assert (=> d!23317 (= (getValueByKey!140 lt!41713 (_1!1130 lt!41584)) (Some!145 (_2!1130 lt!41584)))))

(assert (=> d!23317 (= lt!41715 (lemmaContainsTupThenGetReturnValue!59 lt!41713 (_1!1130 lt!41584) (_2!1130 lt!41584)))))

(assert (=> d!23317 (= lt!41713 (insertStrictlySorted!61 (toList!761 lt!41585) (_1!1130 lt!41584) (_2!1130 lt!41584)))))

(assert (=> d!23317 (= (+!118 lt!41585 lt!41584) lt!41712)))

(declare-fun b!87829 () Bool)

(declare-fun res!45022 () Bool)

(assert (=> b!87829 (=> (not res!45022) (not e!57247))))

(assert (=> b!87829 (= res!45022 (= (getValueByKey!140 (toList!761 lt!41712) (_1!1130 lt!41584)) (Some!145 (_2!1130 lt!41584))))))

(declare-fun b!87830 () Bool)

(assert (=> b!87830 (= e!57247 (contains!768 (toList!761 lt!41712) lt!41584))))

(assert (= (and d!23317 res!45023) b!87829))

(assert (= (and b!87829 res!45022) b!87830))

(declare-fun m!93513 () Bool)

(assert (=> d!23317 m!93513))

(declare-fun m!93515 () Bool)

(assert (=> d!23317 m!93515))

(declare-fun m!93517 () Bool)

(assert (=> d!23317 m!93517))

(declare-fun m!93519 () Bool)

(assert (=> d!23317 m!93519))

(declare-fun m!93521 () Bool)

(assert (=> b!87829 m!93521))

(declare-fun m!93523 () Bool)

(assert (=> b!87830 m!93523))

(assert (=> b!87672 d!23317))

(declare-fun d!23319 () Bool)

(assert (=> d!23319 (= (+!118 (+!118 lt!41585 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) (+!118 (+!118 lt!41585 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))))

(declare-fun lt!41716 () Unit!2618)

(assert (=> d!23319 (= lt!41716 (choose!522 lt!41585 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))

(assert (=> d!23319 (not (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!23319 (= (addCommutativeForDiffKeys!37 lt!41585 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))) lt!41716)))

(declare-fun bs!3700 () Bool)

(assert (= bs!3700 d!23319))

(declare-fun m!93525 () Bool)

(assert (=> bs!3700 m!93525))

(assert (=> bs!3700 m!93277))

(declare-fun m!93527 () Bool)

(assert (=> bs!3700 m!93527))

(declare-fun m!93529 () Bool)

(assert (=> bs!3700 m!93529))

(assert (=> bs!3700 m!93525))

(declare-fun m!93531 () Bool)

(assert (=> bs!3700 m!93531))

(assert (=> bs!3700 m!93529))

(declare-fun m!93533 () Bool)

(assert (=> bs!3700 m!93533))

(assert (=> b!87672 d!23319))

(declare-fun d!23321 () Bool)

(assert (=> d!23321 (= (validMask!0 (mask!6397 (v!2663 (underlying!295 thiss!992)))) (and (or (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000001111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000011111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000001111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000011111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000001111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000011111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000111111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000000000001111111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000000000011111111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000000000111111111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000000001111111111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000000011111111111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000000111111111111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000001111111111111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000011111111111111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000000111111111111111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000001111111111111111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000011111111111111111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000000111111111111111111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000001111111111111111111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000011111111111111111111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00000111111111111111111111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00001111111111111111111111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00011111111111111111111111111111) (= (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!6397 (v!2663 (underlying!295 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!87672 d!23321))

(declare-fun d!23323 () Bool)

(declare-fun e!57252 () Bool)

(assert (=> d!23323 e!57252))

(declare-fun res!45026 () Bool)

(assert (=> d!23323 (=> res!45026 e!57252)))

(declare-fun lt!41725 () Bool)

(assert (=> d!23323 (= res!45026 (not lt!41725))))

(declare-fun lt!41727 () Bool)

(assert (=> d!23323 (= lt!41725 lt!41727)))

(declare-fun lt!41726 () Unit!2618)

(declare-fun e!57253 () Unit!2618)

(assert (=> d!23323 (= lt!41726 e!57253)))

(declare-fun c!14478 () Bool)

(assert (=> d!23323 (= c!14478 lt!41727)))

(declare-fun containsKey!144 (List!1556 (_ BitVec 64)) Bool)

(assert (=> d!23323 (= lt!41727 (containsKey!144 (toList!761 lt!41575) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(assert (=> d!23323 (= (contains!766 lt!41575 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)) lt!41725)))

(declare-fun b!87837 () Bool)

(declare-fun lt!41728 () Unit!2618)

(assert (=> b!87837 (= e!57253 lt!41728)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!93 (List!1556 (_ BitVec 64)) Unit!2618)

(assert (=> b!87837 (= lt!41728 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 lt!41575) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun isDefined!94 (Option!146) Bool)

(assert (=> b!87837 (isDefined!94 (getValueByKey!140 (toList!761 lt!41575) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun b!87838 () Bool)

(declare-fun Unit!2622 () Unit!2618)

(assert (=> b!87838 (= e!57253 Unit!2622)))

(declare-fun b!87839 () Bool)

(assert (=> b!87839 (= e!57252 (isDefined!94 (getValueByKey!140 (toList!761 lt!41575) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355))))))

(assert (= (and d!23323 c!14478) b!87837))

(assert (= (and d!23323 (not c!14478)) b!87838))

(assert (= (and d!23323 (not res!45026)) b!87839))

(assert (=> d!23323 m!93277))

(declare-fun m!93535 () Bool)

(assert (=> d!23323 m!93535))

(assert (=> b!87837 m!93277))

(declare-fun m!93537 () Bool)

(assert (=> b!87837 m!93537))

(assert (=> b!87837 m!93277))

(declare-fun m!93539 () Bool)

(assert (=> b!87837 m!93539))

(assert (=> b!87837 m!93539))

(declare-fun m!93541 () Bool)

(assert (=> b!87837 m!93541))

(assert (=> b!87839 m!93277))

(assert (=> b!87839 m!93539))

(assert (=> b!87839 m!93539))

(assert (=> b!87839 m!93541))

(assert (=> b!87681 d!23323))

(declare-fun bm!8405 () Bool)

(declare-datatypes ((SeekEntryResult!254 0))(
  ( (MissingZero!254 (index!3154 (_ BitVec 32))) (Found!254 (index!3155 (_ BitVec 32))) (Intermediate!254 (undefined!1066 Bool) (index!3156 (_ BitVec 32)) (x!12151 (_ BitVec 32))) (Undefined!254) (MissingVacant!254 (index!3157 (_ BitVec 32))) )
))
(declare-fun call!8426 () SeekEntryResult!254)

(declare-fun call!8423 () SeekEntryResult!254)

(assert (=> bm!8405 (= call!8426 call!8423)))

(declare-fun call!8413 () tuple2!2242)

(declare-fun lt!41794 () SeekEntryResult!254)

(declare-fun bm!8406 () Bool)

(declare-fun c!14510 () Bool)

(declare-fun updateHelperNewKey!32 (LongMapFixedSize!762 (_ BitVec 64) V!3035 (_ BitVec 32)) tuple2!2242)

(assert (=> bm!8406 (= call!8413 (updateHelperNewKey!32 newMap!16 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579 (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794))))))

(declare-fun bm!8407 () Bool)

(declare-fun call!8421 () Bool)

(declare-fun call!8429 () Bool)

(assert (=> bm!8407 (= call!8421 call!8429)))

(declare-fun bm!8408 () Bool)

(declare-fun call!8422 () SeekEntryResult!254)

(assert (=> bm!8408 (= call!8422 call!8423)))

(declare-fun bm!8409 () Bool)

(declare-fun call!8410 () Bool)

(assert (=> bm!8409 (= call!8410 call!8429)))

(declare-fun bm!8410 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4042 (_ BitVec 32)) SeekEntryResult!254)

(assert (=> bm!8410 (= call!8423 (seekEntryOrOpen!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (_keys!4035 newMap!16) (mask!6397 newMap!16)))))

(declare-fun bm!8411 () Bool)

(declare-fun call!8431 () Bool)

(declare-fun call!8409 () Bool)

(assert (=> bm!8411 (= call!8431 call!8409)))

(declare-fun b!87921 () Bool)

(declare-fun lt!41785 () Unit!2618)

(declare-fun e!57306 () Unit!2618)

(assert (=> b!87921 (= lt!41785 e!57306)))

(declare-fun c!14511 () Bool)

(declare-fun call!8419 () Bool)

(assert (=> b!87921 (= c!14511 call!8419)))

(declare-fun e!57304 () tuple2!2242)

(assert (=> b!87921 (= e!57304 (tuple2!2243 false newMap!16))))

(declare-fun bm!8412 () Bool)

(declare-fun call!8418 () ListLongMap!1491)

(declare-fun call!8430 () ListLongMap!1491)

(assert (=> bm!8412 (= call!8418 call!8430)))

(declare-fun c!14507 () Bool)

(declare-fun bm!8413 () Bool)

(declare-fun c!14506 () Bool)

(declare-fun lt!41797 () (_ BitVec 32))

(declare-fun call!8412 () ListLongMap!1491)

(assert (=> bm!8413 (= call!8412 (getCurrentListMap!444 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (ite (and c!14507 c!14506) lt!41797 (extraKeys!2194 newMap!16)) (ite (and c!14507 c!14506) lt!41579 (zeroValue!2249 newMap!16)) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun bm!8414 () Bool)

(declare-fun call!8427 () Bool)

(assert (=> bm!8414 (= call!8427 call!8409)))

(declare-fun b!87922 () Bool)

(declare-fun c!14517 () Bool)

(declare-fun lt!41783 () SeekEntryResult!254)

(assert (=> b!87922 (= c!14517 ((_ is MissingVacant!254) lt!41783))))

(declare-fun e!57312 () Bool)

(declare-fun e!57307 () Bool)

(assert (=> b!87922 (= e!57312 e!57307)))

(declare-fun c!14505 () Bool)

(declare-fun bm!8415 () Bool)

(declare-fun call!8425 () ListLongMap!1491)

(declare-fun lt!41804 () (_ BitVec 32))

(assert (=> bm!8415 (= call!8425 (getCurrentListMap!444 (_keys!4035 newMap!16) (ite (or c!14507 c!14505) (_values!2342 newMap!16) (array!4045 (store (arr!1925 (_values!2342 newMap!16)) (index!3155 lt!41794) (ValueCellFull!927 lt!41579)) (size!2170 (_values!2342 newMap!16)))) (mask!6397 newMap!16) (ite c!14507 (ite c!14506 (extraKeys!2194 newMap!16) lt!41804) (extraKeys!2194 newMap!16)) (zeroValue!2249 newMap!16) (ite c!14507 (ite c!14506 (minValue!2249 newMap!16) lt!41579) (minValue!2249 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun b!87923 () Bool)

(declare-fun e!57308 () ListLongMap!1491)

(assert (=> b!87923 (= e!57308 call!8412)))

(declare-fun b!87924 () Bool)

(declare-fun c!14516 () Bool)

(declare-fun lt!41786 () SeekEntryResult!254)

(assert (=> b!87924 (= c!14516 ((_ is MissingVacant!254) lt!41786))))

(declare-fun e!57296 () Bool)

(declare-fun e!57301 () Bool)

(assert (=> b!87924 (= e!57296 e!57301)))

(declare-fun b!87925 () Bool)

(declare-fun Unit!2623 () Unit!2618)

(assert (=> b!87925 (= e!57306 Unit!2623)))

(declare-fun lt!41795 () Unit!2618)

(declare-fun call!8424 () Unit!2618)

(assert (=> b!87925 (= lt!41795 call!8424)))

(declare-fun lt!41793 () SeekEntryResult!254)

(assert (=> b!87925 (= lt!41793 call!8422)))

(declare-fun res!45061 () Bool)

(assert (=> b!87925 (= res!45061 ((_ is Found!254) lt!41793))))

(declare-fun e!57315 () Bool)

(assert (=> b!87925 (=> (not res!45061) (not e!57315))))

(assert (=> b!87925 e!57315))

(declare-fun lt!41788 () Unit!2618)

(assert (=> b!87925 (= lt!41788 lt!41795)))

(assert (=> b!87925 false))

(declare-fun bm!8416 () Bool)

(declare-fun call!8408 () ListLongMap!1491)

(assert (=> bm!8416 (= call!8408 (map!1198 newMap!16))))

(declare-fun b!87926 () Bool)

(declare-fun res!45064 () Bool)

(assert (=> b!87926 (= res!45064 call!8410)))

(declare-fun e!57309 () Bool)

(assert (=> b!87926 (=> (not res!45064) (not e!57309))))

(declare-fun bm!8417 () Bool)

(declare-fun call!8415 () ListLongMap!1491)

(declare-fun lt!41792 () tuple2!2242)

(assert (=> bm!8417 (= call!8415 (map!1198 (_2!1131 lt!41792)))))

(declare-fun b!87927 () Bool)

(assert (=> b!87927 (= c!14510 ((_ is MissingVacant!254) lt!41794))))

(declare-fun e!57313 () tuple2!2242)

(assert (=> b!87927 (= e!57304 e!57313)))

(declare-fun call!8420 () Unit!2618)

(declare-fun bm!8418 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!32 (array!4042 array!4044 (_ BitVec 32) (_ BitVec 32) V!3035 V!3035 (_ BitVec 64) Int) Unit!2618)

(assert (=> bm!8418 (= call!8420 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!32 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (defaultEntry!2359 newMap!16)))))

(declare-fun b!87928 () Bool)

(declare-fun lt!41809 () tuple2!2242)

(assert (=> b!87928 (= e!57313 (tuple2!2243 (_1!1131 lt!41809) (_2!1131 lt!41809)))))

(assert (=> b!87928 (= lt!41809 call!8413)))

(declare-fun b!87929 () Bool)

(declare-fun e!57298 () Bool)

(assert (=> b!87929 (= e!57298 (not call!8431))))

(declare-fun b!87930 () Bool)

(assert (=> b!87930 (= e!57307 ((_ is Undefined!254) lt!41783))))

(declare-fun b!87931 () Bool)

(declare-fun e!57316 () Bool)

(assert (=> b!87931 (= e!57316 (= call!8415 call!8408))))

(declare-fun bm!8419 () Bool)

(assert (=> bm!8419 (= call!8409 (arrayContainsKey!0 (_keys!4035 newMap!16) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun call!8417 () ListLongMap!1491)

(declare-fun call!8411 () ListLongMap!1491)

(declare-fun bm!8420 () Bool)

(assert (=> bm!8420 (= call!8430 (+!118 (ite c!14507 (ite c!14506 call!8417 call!8411) call!8412) (ite c!14507 (ite c!14506 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 lt!41579) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 lt!41579)) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(declare-fun b!87932 () Bool)

(declare-fun lt!41784 () Unit!2618)

(declare-fun lt!41803 () Unit!2618)

(assert (=> b!87932 (= lt!41784 lt!41803)))

(declare-fun lt!41807 () array!4044)

(assert (=> b!87932 (contains!766 (getCurrentListMap!444 (_keys!4035 newMap!16) lt!41807 (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)) (select (arr!1924 (_keys!4035 newMap!16)) (index!3155 lt!41794)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!90 (array!4042 array!4044 (_ BitVec 32) (_ BitVec 32) V!3035 V!3035 (_ BitVec 32) Int) Unit!2618)

(assert (=> b!87932 (= lt!41803 (lemmaValidKeyInArrayIsInListMap!90 (_keys!4035 newMap!16) lt!41807 (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) (index!3155 lt!41794) (defaultEntry!2359 newMap!16)))))

(assert (=> b!87932 (= lt!41807 (array!4045 (store (arr!1925 (_values!2342 newMap!16)) (index!3155 lt!41794) (ValueCellFull!927 lt!41579)) (size!2170 (_values!2342 newMap!16))))))

(declare-fun lt!41800 () Unit!2618)

(declare-fun lt!41798 () Unit!2618)

(assert (=> b!87932 (= lt!41800 lt!41798)))

(declare-fun call!8428 () ListLongMap!1491)

(assert (=> b!87932 (= call!8430 call!8428)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!32 (array!4042 array!4044 (_ BitVec 32) (_ BitVec 32) V!3035 V!3035 (_ BitVec 32) (_ BitVec 64) V!3035 Int) Unit!2618)

(assert (=> b!87932 (= lt!41798 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!32 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) (index!3155 lt!41794) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!41806 () Unit!2618)

(declare-fun e!57303 () Unit!2618)

(assert (=> b!87932 (= lt!41806 e!57303)))

(declare-fun c!14513 () Bool)

(assert (=> b!87932 (= c!14513 call!8419)))

(declare-fun e!57311 () tuple2!2242)

(assert (=> b!87932 (= e!57311 (tuple2!2243 true (LongMapFixedSize!763 (defaultEntry!2359 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) (_size!430 newMap!16) (_keys!4035 newMap!16) (array!4045 (store (arr!1925 (_values!2342 newMap!16)) (index!3155 lt!41794) (ValueCellFull!927 lt!41579)) (size!2170 (_values!2342 newMap!16))) (_vacant!430 newMap!16))))))

(declare-fun b!87933 () Bool)

(declare-fun e!57300 () Bool)

(assert (=> b!87933 (= e!57300 e!57316)))

(declare-fun c!14515 () Bool)

(assert (=> b!87933 (= c!14515 (_1!1131 lt!41792))))

(declare-fun b!87934 () Bool)

(declare-fun res!45056 () Bool)

(assert (=> b!87934 (=> (not res!45056) (not e!57298))))

(assert (=> b!87934 (= res!45056 (= (select (arr!1924 (_keys!4035 newMap!16)) (index!3154 lt!41786)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!87935 () Bool)

(declare-fun Unit!2624 () Unit!2618)

(assert (=> b!87935 (= e!57303 Unit!2624)))

(declare-fun lt!41789 () Unit!2618)

(assert (=> b!87935 (= lt!41789 call!8420)))

(assert (=> b!87935 (= lt!41786 call!8426)))

(declare-fun c!14509 () Bool)

(assert (=> b!87935 (= c!14509 ((_ is MissingZero!254) lt!41786))))

(assert (=> b!87935 e!57296))

(declare-fun lt!41801 () Unit!2618)

(assert (=> b!87935 (= lt!41801 lt!41789)))

(assert (=> b!87935 false))

(declare-fun b!87936 () Bool)

(assert (=> b!87936 (= e!57301 ((_ is Undefined!254) lt!41786))))

(declare-fun d!23325 () Bool)

(assert (=> d!23325 e!57300))

(declare-fun res!45066 () Bool)

(assert (=> d!23325 (=> (not res!45066) (not e!57300))))

(assert (=> d!23325 (= res!45066 (valid!330 (_2!1131 lt!41792)))))

(declare-fun e!57299 () tuple2!2242)

(assert (=> d!23325 (= lt!41792 e!57299)))

(assert (=> d!23325 (= c!14507 (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (bvneg (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355))))))

(assert (=> d!23325 (valid!330 newMap!16)))

(assert (=> d!23325 (= (update!124 newMap!16 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579) lt!41792)))

(declare-fun b!87920 () Bool)

(declare-fun e!57305 () Bool)

(assert (=> b!87920 (= e!57316 e!57305)))

(declare-fun res!45057 () Bool)

(assert (=> b!87920 (= res!45057 (contains!766 call!8415 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(assert (=> b!87920 (=> (not res!45057) (not e!57305))))

(declare-fun b!87937 () Bool)

(assert (=> b!87937 (= e!57308 call!8428)))

(declare-fun b!87938 () Bool)

(declare-fun res!45058 () Bool)

(declare-fun e!57314 () Bool)

(assert (=> b!87938 (=> (not res!45058) (not e!57314))))

(declare-fun call!8416 () Bool)

(assert (=> b!87938 (= res!45058 call!8416)))

(assert (=> b!87938 (= e!57312 e!57314)))

(declare-fun bm!8421 () Bool)

(assert (=> bm!8421 (= call!8428 call!8425)))

(declare-fun b!87939 () Bool)

(declare-fun lt!41787 () Unit!2618)

(declare-fun lt!41802 () Unit!2618)

(assert (=> b!87939 (= lt!41787 lt!41802)))

(assert (=> b!87939 (= call!8418 call!8411)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!32 (array!4042 array!4044 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3035 V!3035 V!3035 Int) Unit!2618)

(assert (=> b!87939 (= lt!41802 (lemmaChangeZeroKeyThenAddPairToListMap!32 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) lt!41797 (zeroValue!2249 newMap!16) lt!41579 (minValue!2249 newMap!16) (defaultEntry!2359 newMap!16)))))

(assert (=> b!87939 (= lt!41797 (bvor (extraKeys!2194 newMap!16) #b00000000000000000000000000000001))))

(declare-fun e!57302 () tuple2!2242)

(assert (=> b!87939 (= e!57302 (tuple2!2243 true (LongMapFixedSize!763 (defaultEntry!2359 newMap!16) (mask!6397 newMap!16) (bvor (extraKeys!2194 newMap!16) #b00000000000000000000000000000001) lt!41579 (minValue!2249 newMap!16) (_size!430 newMap!16) (_keys!4035 newMap!16) (_values!2342 newMap!16) (_vacant!430 newMap!16))))))

(declare-fun b!87940 () Bool)

(assert (=> b!87940 (= e!57299 e!57302)))

(assert (=> b!87940 (= c!14506 (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!8422 () Bool)

(declare-fun c!14514 () Bool)

(assert (=> bm!8422 (= c!14514 c!14505)))

(assert (=> bm!8422 (= call!8419 (contains!766 e!57308 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun b!87941 () Bool)

(declare-fun e!57297 () Bool)

(assert (=> b!87941 (= e!57297 (not call!8431))))

(declare-fun b!87942 () Bool)

(declare-fun res!45059 () Bool)

(assert (=> b!87942 (= res!45059 (= (select (arr!1924 (_keys!4035 newMap!16)) (index!3157 lt!41783)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!57310 () Bool)

(assert (=> b!87942 (=> (not res!45059) (not e!57310))))

(declare-fun b!87943 () Bool)

(assert (=> b!87943 (= e!57310 (not call!8427))))

(declare-fun b!87944 () Bool)

(assert (=> b!87944 (= e!57314 (not call!8427))))

(declare-fun bm!8423 () Bool)

(assert (=> bm!8423 (= call!8417 call!8425)))

(declare-fun bm!8424 () Bool)

(declare-fun call!8414 () Bool)

(assert (=> bm!8424 (= call!8414 call!8410)))

(declare-fun b!87945 () Bool)

(assert (=> b!87945 (= e!57315 (= (select (arr!1924 (_keys!4035 newMap!16)) (index!3155 lt!41793)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun b!87946 () Bool)

(declare-fun res!45060 () Bool)

(assert (=> b!87946 (=> (not res!45060) (not e!57298))))

(assert (=> b!87946 (= res!45060 call!8414)))

(assert (=> b!87946 (= e!57296 e!57298)))

(declare-fun b!87947 () Bool)

(assert (=> b!87947 (= e!57313 e!57311)))

(declare-fun c!14512 () Bool)

(assert (=> b!87947 (= c!14512 ((_ is MissingZero!254) lt!41794))))

(declare-fun b!87948 () Bool)

(declare-fun lt!41805 () Unit!2618)

(assert (=> b!87948 (= e!57303 lt!41805)))

(assert (=> b!87948 (= lt!41805 call!8424)))

(declare-fun lt!41799 () SeekEntryResult!254)

(assert (=> b!87948 (= lt!41799 call!8426)))

(declare-fun res!45067 () Bool)

(assert (=> b!87948 (= res!45067 ((_ is Found!254) lt!41799))))

(assert (=> b!87948 (=> (not res!45067) (not e!57309))))

(assert (=> b!87948 e!57309))

(declare-fun b!87949 () Bool)

(declare-fun res!45065 () Bool)

(assert (=> b!87949 (= res!45065 (= (select (arr!1924 (_keys!4035 newMap!16)) (index!3157 lt!41786)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!87949 (=> (not res!45065) (not e!57297))))

(declare-fun b!87950 () Bool)

(assert (=> b!87950 (= e!57307 e!57310)))

(declare-fun res!45055 () Bool)

(assert (=> b!87950 (= res!45055 call!8416)))

(assert (=> b!87950 (=> (not res!45055) (not e!57310))))

(declare-fun bm!8425 () Bool)

(assert (=> bm!8425 (= call!8411 call!8412)))

(declare-fun b!87951 () Bool)

(declare-fun res!45068 () Bool)

(assert (=> b!87951 (= res!45068 call!8421)))

(assert (=> b!87951 (=> (not res!45068) (not e!57315))))

(declare-fun b!87952 () Bool)

(assert (=> b!87952 (= e!57301 e!57297)))

(declare-fun res!45062 () Bool)

(assert (=> b!87952 (= res!45062 call!8414)))

(assert (=> b!87952 (=> (not res!45062) (not e!57297))))

(declare-fun b!87953 () Bool)

(assert (=> b!87953 (= e!57305 (= call!8415 (+!118 call!8408 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(declare-fun b!87954 () Bool)

(assert (=> b!87954 (= e!57309 (= (select (arr!1924 (_keys!4035 newMap!16)) (index!3155 lt!41799)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun bm!8426 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!32 (array!4042 array!4044 (_ BitVec 32) (_ BitVec 32) V!3035 V!3035 (_ BitVec 64) Int) Unit!2618)

(assert (=> bm!8426 (= call!8424 (lemmaInListMapThenSeekEntryOrOpenFindsIt!32 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (defaultEntry!2359 newMap!16)))))

(declare-fun bm!8427 () Bool)

(declare-fun c!14508 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!8427 (= call!8429 (inRange!0 (ite c!14505 (ite c!14511 (index!3155 lt!41793) (ite c!14508 (index!3154 lt!41783) (index!3157 lt!41783))) (ite c!14513 (index!3155 lt!41799) (ite c!14509 (index!3154 lt!41786) (index!3157 lt!41786)))) (mask!6397 newMap!16)))))

(declare-fun b!87955 () Bool)

(declare-fun lt!41808 () Unit!2618)

(declare-fun lt!41796 () Unit!2618)

(assert (=> b!87955 (= lt!41808 lt!41796)))

(assert (=> b!87955 (= call!8418 call!8417)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!32 (array!4042 array!4044 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3035 V!3035 V!3035 Int) Unit!2618)

(assert (=> b!87955 (= lt!41796 (lemmaChangeLongMinValueKeyThenAddPairToListMap!32 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) lt!41804 (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) lt!41579 (defaultEntry!2359 newMap!16)))))

(assert (=> b!87955 (= lt!41804 (bvor (extraKeys!2194 newMap!16) #b00000000000000000000000000000010))))

(assert (=> b!87955 (= e!57302 (tuple2!2243 true (LongMapFixedSize!763 (defaultEntry!2359 newMap!16) (mask!6397 newMap!16) (bvor (extraKeys!2194 newMap!16) #b00000000000000000000000000000010) (zeroValue!2249 newMap!16) lt!41579 (_size!430 newMap!16) (_keys!4035 newMap!16) (_values!2342 newMap!16) (_vacant!430 newMap!16))))))

(declare-fun b!87956 () Bool)

(assert (=> b!87956 (= e!57299 e!57304)))

(assert (=> b!87956 (= lt!41794 (seekEntryOrOpen!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (_keys!4035 newMap!16) (mask!6397 newMap!16)))))

(assert (=> b!87956 (= c!14505 ((_ is Undefined!254) lt!41794))))

(declare-fun bm!8428 () Bool)

(assert (=> bm!8428 (= call!8416 call!8421)))

(declare-fun b!87957 () Bool)

(declare-fun lt!41790 () Unit!2618)

(assert (=> b!87957 (= e!57306 lt!41790)))

(assert (=> b!87957 (= lt!41790 call!8420)))

(assert (=> b!87957 (= lt!41783 call!8422)))

(assert (=> b!87957 (= c!14508 ((_ is MissingZero!254) lt!41783))))

(assert (=> b!87957 e!57312))

(declare-fun b!87958 () Bool)

(declare-fun lt!41791 () tuple2!2242)

(assert (=> b!87958 (= lt!41791 call!8413)))

(assert (=> b!87958 (= e!57311 (tuple2!2243 (_1!1131 lt!41791) (_2!1131 lt!41791)))))

(declare-fun b!87959 () Bool)

(declare-fun res!45063 () Bool)

(assert (=> b!87959 (=> (not res!45063) (not e!57314))))

(assert (=> b!87959 (= res!45063 (= (select (arr!1924 (_keys!4035 newMap!16)) (index!3154 lt!41783)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!23325 c!14507) b!87940))

(assert (= (and d!23325 (not c!14507)) b!87956))

(assert (= (and b!87940 c!14506) b!87939))

(assert (= (and b!87940 (not c!14506)) b!87955))

(assert (= (or b!87939 b!87955) bm!8425))

(assert (= (or b!87939 b!87955) bm!8423))

(assert (= (or b!87939 b!87955) bm!8412))

(assert (= (and b!87956 c!14505) b!87921))

(assert (= (and b!87956 (not c!14505)) b!87927))

(assert (= (and b!87921 c!14511) b!87925))

(assert (= (and b!87921 (not c!14511)) b!87957))

(assert (= (and b!87925 res!45061) b!87951))

(assert (= (and b!87951 res!45068) b!87945))

(assert (= (and b!87957 c!14508) b!87938))

(assert (= (and b!87957 (not c!14508)) b!87922))

(assert (= (and b!87938 res!45058) b!87959))

(assert (= (and b!87959 res!45063) b!87944))

(assert (= (and b!87922 c!14517) b!87950))

(assert (= (and b!87922 (not c!14517)) b!87930))

(assert (= (and b!87950 res!45055) b!87942))

(assert (= (and b!87942 res!45059) b!87943))

(assert (= (or b!87938 b!87950) bm!8428))

(assert (= (or b!87944 b!87943) bm!8414))

(assert (= (or b!87951 bm!8428) bm!8407))

(assert (= (or b!87925 b!87957) bm!8408))

(assert (= (and b!87927 c!14510) b!87928))

(assert (= (and b!87927 (not c!14510)) b!87947))

(assert (= (and b!87947 c!14512) b!87958))

(assert (= (and b!87947 (not c!14512)) b!87932))

(assert (= (and b!87932 c!14513) b!87948))

(assert (= (and b!87932 (not c!14513)) b!87935))

(assert (= (and b!87948 res!45067) b!87926))

(assert (= (and b!87926 res!45064) b!87954))

(assert (= (and b!87935 c!14509) b!87946))

(assert (= (and b!87935 (not c!14509)) b!87924))

(assert (= (and b!87946 res!45060) b!87934))

(assert (= (and b!87934 res!45056) b!87929))

(assert (= (and b!87924 c!14516) b!87952))

(assert (= (and b!87924 (not c!14516)) b!87936))

(assert (= (and b!87952 res!45062) b!87949))

(assert (= (and b!87949 res!45065) b!87941))

(assert (= (or b!87946 b!87952) bm!8424))

(assert (= (or b!87929 b!87941) bm!8411))

(assert (= (or b!87926 bm!8424) bm!8409))

(assert (= (or b!87948 b!87935) bm!8405))

(assert (= (or b!87928 b!87958) bm!8406))

(assert (= (or b!87925 b!87948) bm!8426))

(assert (= (or bm!8407 bm!8409) bm!8427))

(assert (= (or bm!8408 bm!8405) bm!8410))

(assert (= (or b!87957 b!87935) bm!8418))

(assert (= (or bm!8414 bm!8411) bm!8419))

(assert (= (or b!87921 b!87932) bm!8421))

(assert (= (or b!87921 b!87932) bm!8422))

(assert (= (and bm!8422 c!14514) b!87937))

(assert (= (and bm!8422 (not c!14514)) b!87923))

(assert (= (or bm!8423 bm!8421) bm!8415))

(assert (= (or bm!8425 b!87923 b!87932) bm!8413))

(assert (= (or bm!8412 b!87932) bm!8420))

(assert (= (and d!23325 res!45066) b!87933))

(assert (= (and b!87933 c!14515) b!87920))

(assert (= (and b!87933 (not c!14515)) b!87931))

(assert (= (and b!87920 res!45057) b!87953))

(assert (= (or b!87920 b!87953 b!87931) bm!8417))

(assert (= (or b!87953 b!87931) bm!8416))

(assert (=> bm!8416 m!93307))

(declare-fun m!93543 () Bool)

(assert (=> d!23325 m!93543))

(assert (=> d!23325 m!93305))

(declare-fun m!93545 () Bool)

(assert (=> bm!8415 m!93545))

(declare-fun m!93547 () Bool)

(assert (=> bm!8415 m!93547))

(declare-fun m!93549 () Bool)

(assert (=> bm!8420 m!93549))

(declare-fun m!93551 () Bool)

(assert (=> b!87955 m!93551))

(declare-fun m!93553 () Bool)

(assert (=> b!87954 m!93553))

(assert (=> bm!8426 m!93277))

(declare-fun m!93555 () Bool)

(assert (=> bm!8426 m!93555))

(assert (=> bm!8422 m!93277))

(declare-fun m!93557 () Bool)

(assert (=> bm!8422 m!93557))

(declare-fun m!93559 () Bool)

(assert (=> b!87953 m!93559))

(declare-fun m!93561 () Bool)

(assert (=> b!87934 m!93561))

(declare-fun m!93563 () Bool)

(assert (=> bm!8413 m!93563))

(declare-fun m!93565 () Bool)

(assert (=> b!87939 m!93565))

(declare-fun m!93567 () Bool)

(assert (=> b!87949 m!93567))

(assert (=> bm!8410 m!93277))

(declare-fun m!93569 () Bool)

(assert (=> bm!8410 m!93569))

(assert (=> b!87920 m!93277))

(declare-fun m!93571 () Bool)

(assert (=> b!87920 m!93571))

(assert (=> b!87932 m!93277))

(declare-fun m!93573 () Bool)

(assert (=> b!87932 m!93573))

(declare-fun m!93575 () Bool)

(assert (=> b!87932 m!93575))

(declare-fun m!93577 () Bool)

(assert (=> b!87932 m!93577))

(assert (=> b!87932 m!93545))

(assert (=> b!87932 m!93577))

(declare-fun m!93579 () Bool)

(assert (=> b!87932 m!93579))

(declare-fun m!93581 () Bool)

(assert (=> b!87932 m!93581))

(assert (=> b!87932 m!93579))

(assert (=> b!87956 m!93277))

(assert (=> b!87956 m!93569))

(assert (=> bm!8418 m!93277))

(declare-fun m!93583 () Bool)

(assert (=> bm!8418 m!93583))

(declare-fun m!93585 () Bool)

(assert (=> b!87959 m!93585))

(assert (=> bm!8419 m!93277))

(declare-fun m!93587 () Bool)

(assert (=> bm!8419 m!93587))

(declare-fun m!93589 () Bool)

(assert (=> b!87942 m!93589))

(declare-fun m!93591 () Bool)

(assert (=> b!87945 m!93591))

(declare-fun m!93593 () Bool)

(assert (=> bm!8427 m!93593))

(declare-fun m!93595 () Bool)

(assert (=> bm!8417 m!93595))

(assert (=> bm!8406 m!93277))

(declare-fun m!93597 () Bool)

(assert (=> bm!8406 m!93597))

(assert (=> b!87681 d!23325))

(declare-fun b!87968 () Bool)

(declare-fun e!57325 () Bool)

(declare-fun e!57323 () Bool)

(assert (=> b!87968 (= e!57325 e!57323)))

(declare-fun lt!41818 () (_ BitVec 64))

(assert (=> b!87968 (= lt!41818 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!41817 () Unit!2618)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4042 (_ BitVec 64) (_ BitVec 32)) Unit!2618)

(assert (=> b!87968 (= lt!41817 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) lt!41818 #b00000000000000000000000000000000))))

(assert (=> b!87968 (arrayContainsKey!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) lt!41818 #b00000000000000000000000000000000)))

(declare-fun lt!41816 () Unit!2618)

(assert (=> b!87968 (= lt!41816 lt!41817)))

(declare-fun res!45073 () Bool)

(assert (=> b!87968 (= res!45073 (= (seekEntryOrOpen!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) #b00000000000000000000000000000000) (_keys!4035 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992)))) (Found!254 #b00000000000000000000000000000000)))))

(assert (=> b!87968 (=> (not res!45073) (not e!57323))))

(declare-fun d!23327 () Bool)

(declare-fun res!45074 () Bool)

(declare-fun e!57324 () Bool)

(assert (=> d!23327 (=> res!45074 e!57324)))

(assert (=> d!23327 (= res!45074 (bvsge #b00000000000000000000000000000000 (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(assert (=> d!23327 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992)))) e!57324)))

(declare-fun bm!8431 () Bool)

(declare-fun call!8434 () Bool)

(assert (=> bm!8431 (= call!8434 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4035 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun b!87969 () Bool)

(assert (=> b!87969 (= e!57324 e!57325)))

(declare-fun c!14520 () Bool)

(assert (=> b!87969 (= c!14520 (validKeyInArray!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!87970 () Bool)

(assert (=> b!87970 (= e!57325 call!8434)))

(declare-fun b!87971 () Bool)

(assert (=> b!87971 (= e!57323 call!8434)))

(assert (= (and d!23327 (not res!45074)) b!87969))

(assert (= (and b!87969 c!14520) b!87968))

(assert (= (and b!87969 (not c!14520)) b!87970))

(assert (= (and b!87968 res!45073) b!87971))

(assert (= (or b!87971 b!87970) bm!8431))

(declare-fun m!93599 () Bool)

(assert (=> b!87968 m!93599))

(declare-fun m!93601 () Bool)

(assert (=> b!87968 m!93601))

(declare-fun m!93603 () Bool)

(assert (=> b!87968 m!93603))

(assert (=> b!87968 m!93599))

(declare-fun m!93605 () Bool)

(assert (=> b!87968 m!93605))

(declare-fun m!93607 () Bool)

(assert (=> bm!8431 m!93607))

(assert (=> b!87969 m!93599))

(assert (=> b!87969 m!93599))

(declare-fun m!93609 () Bool)

(assert (=> b!87969 m!93609))

(assert (=> b!87680 d!23327))

(declare-fun d!23329 () Bool)

(assert (=> d!23329 (= (map!1198 newMap!16) (getCurrentListMap!444 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun bs!3701 () Bool)

(assert (= bs!3701 d!23329))

(declare-fun m!93611 () Bool)

(assert (=> bs!3701 m!93611))

(assert (=> b!87675 d!23329))

(declare-fun b!88014 () Bool)

(declare-fun e!57364 () Unit!2618)

(declare-fun Unit!2625 () Unit!2618)

(assert (=> b!88014 (= e!57364 Unit!2625)))

(declare-fun b!88015 () Bool)

(declare-fun e!57362 () ListLongMap!1491)

(declare-fun call!8455 () ListLongMap!1491)

(assert (=> b!88015 (= e!57362 call!8455)))

(declare-fun d!23331 () Bool)

(declare-fun e!57356 () Bool)

(assert (=> d!23331 e!57356))

(declare-fun res!45099 () Bool)

(assert (=> d!23331 (=> (not res!45099) (not e!57356))))

(assert (=> d!23331 (= res!45099 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))))

(declare-fun lt!41874 () ListLongMap!1491)

(declare-fun lt!41873 () ListLongMap!1491)

(assert (=> d!23331 (= lt!41874 lt!41873)))

(declare-fun lt!41866 () Unit!2618)

(assert (=> d!23331 (= lt!41866 e!57364)))

(declare-fun c!14535 () Bool)

(declare-fun e!57355 () Bool)

(assert (=> d!23331 (= c!14535 e!57355)))

(declare-fun res!45097 () Bool)

(assert (=> d!23331 (=> (not res!45097) (not e!57355))))

(assert (=> d!23331 (= res!45097 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(declare-fun e!57363 () ListLongMap!1491)

(assert (=> d!23331 (= lt!41873 e!57363)))

(declare-fun c!14537 () Bool)

(assert (=> d!23331 (= c!14537 (and (not (= (bvand (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!23331 (validMask!0 (mask!6397 (v!2663 (underlying!295 thiss!992))))))

(assert (=> d!23331 (= (getCurrentListMap!444 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (_values!2342 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992))) (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) (minValue!2249 (v!2663 (underlying!295 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992)))) lt!41874)))

(declare-fun bm!8446 () Bool)

(declare-fun call!8452 () Bool)

(assert (=> bm!8446 (= call!8452 (contains!766 lt!41874 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!88016 () Bool)

(declare-fun e!57361 () Bool)

(declare-fun e!57357 () Bool)

(assert (=> b!88016 (= e!57361 e!57357)))

(declare-fun res!45096 () Bool)

(assert (=> b!88016 (= res!45096 call!8452)))

(assert (=> b!88016 (=> (not res!45096) (not e!57357))))

(declare-fun b!88017 () Bool)

(declare-fun res!45101 () Bool)

(assert (=> b!88017 (=> (not res!45101) (not e!57356))))

(declare-fun e!57360 () Bool)

(assert (=> b!88017 (= res!45101 e!57360)))

(declare-fun res!45100 () Bool)

(assert (=> b!88017 (=> res!45100 e!57360)))

(declare-fun e!57354 () Bool)

(assert (=> b!88017 (= res!45100 (not e!57354))))

(declare-fun res!45094 () Bool)

(assert (=> b!88017 (=> (not res!45094) (not e!57354))))

(assert (=> b!88017 (= res!45094 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(declare-fun b!88018 () Bool)

(assert (=> b!88018 (= e!57354 (validKeyInArray!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!8447 () Bool)

(declare-fun call!8454 () ListLongMap!1491)

(assert (=> bm!8447 (= call!8455 call!8454)))

(declare-fun b!88019 () Bool)

(declare-fun res!45095 () Bool)

(assert (=> b!88019 (=> (not res!45095) (not e!57356))))

(declare-fun e!57353 () Bool)

(assert (=> b!88019 (= res!45095 e!57353)))

(declare-fun c!14536 () Bool)

(assert (=> b!88019 (= c!14536 (not (= (bvand (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!88020 () Bool)

(declare-fun e!57359 () ListLongMap!1491)

(declare-fun call!8449 () ListLongMap!1491)

(assert (=> b!88020 (= e!57359 call!8449)))

(declare-fun b!88021 () Bool)

(declare-fun e!57352 () Bool)

(assert (=> b!88021 (= e!57353 e!57352)))

(declare-fun res!45098 () Bool)

(declare-fun call!8450 () Bool)

(assert (=> b!88021 (= res!45098 call!8450)))

(assert (=> b!88021 (=> (not res!45098) (not e!57352))))

(declare-fun bm!8448 () Bool)

(declare-fun call!8451 () ListLongMap!1491)

(assert (=> bm!8448 (= call!8451 (getCurrentListMapNoExtraKeys!82 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (_values!2342 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992))) (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) (minValue!2249 (v!2663 (underlying!295 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun b!88022 () Bool)

(declare-fun e!57358 () Bool)

(assert (=> b!88022 (= e!57360 e!57358)))

(declare-fun res!45093 () Bool)

(assert (=> b!88022 (=> (not res!45093) (not e!57358))))

(assert (=> b!88022 (= res!45093 (contains!766 lt!41874 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!88022 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(declare-fun b!88023 () Bool)

(assert (=> b!88023 (= e!57358 (= (apply!83 lt!41874 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!88023 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2170 (_values!2342 (v!2663 (underlying!295 thiss!992))))))))

(assert (=> b!88023 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(declare-fun bm!8449 () Bool)

(assert (=> bm!8449 (= call!8450 (contains!766 lt!41874 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!8453 () ListLongMap!1491)

(declare-fun bm!8450 () Bool)

(declare-fun c!14533 () Bool)

(assert (=> bm!8450 (= call!8453 (+!118 (ite c!14537 call!8451 (ite c!14533 call!8454 call!8455)) (ite (or c!14537 c!14533) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(declare-fun bm!8451 () Bool)

(assert (=> bm!8451 (= call!8454 call!8451)))

(declare-fun b!88024 () Bool)

(assert (=> b!88024 (= e!57355 (validKeyInArray!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!88025 () Bool)

(assert (=> b!88025 (= e!57361 (not call!8452))))

(declare-fun b!88026 () Bool)

(assert (=> b!88026 (= e!57357 (= (apply!83 lt!41874 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun b!88027 () Bool)

(declare-fun c!14538 () Bool)

(assert (=> b!88027 (= c!14538 (and (not (= (bvand (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!88027 (= e!57359 e!57362)))

(declare-fun b!88028 () Bool)

(assert (=> b!88028 (= e!57353 (not call!8450))))

(declare-fun b!88029 () Bool)

(assert (=> b!88029 (= e!57356 e!57361)))

(declare-fun c!14534 () Bool)

(assert (=> b!88029 (= c!14534 (not (= (bvand (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!8452 () Bool)

(assert (=> bm!8452 (= call!8449 call!8453)))

(declare-fun b!88030 () Bool)

(declare-fun lt!41881 () Unit!2618)

(assert (=> b!88030 (= e!57364 lt!41881)))

(declare-fun lt!41872 () ListLongMap!1491)

(assert (=> b!88030 (= lt!41872 (getCurrentListMapNoExtraKeys!82 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (_values!2342 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992))) (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) (minValue!2249 (v!2663 (underlying!295 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun lt!41868 () (_ BitVec 64))

(assert (=> b!88030 (= lt!41868 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!41863 () (_ BitVec 64))

(assert (=> b!88030 (= lt!41863 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!41870 () Unit!2618)

(declare-fun addStillContains!59 (ListLongMap!1491 (_ BitVec 64) V!3035 (_ BitVec 64)) Unit!2618)

(assert (=> b!88030 (= lt!41870 (addStillContains!59 lt!41872 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) lt!41863))))

(assert (=> b!88030 (contains!766 (+!118 lt!41872 (tuple2!2241 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!41863)))

(declare-fun lt!41871 () Unit!2618)

(assert (=> b!88030 (= lt!41871 lt!41870)))

(declare-fun lt!41875 () ListLongMap!1491)

(assert (=> b!88030 (= lt!41875 (getCurrentListMapNoExtraKeys!82 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (_values!2342 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992))) (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) (minValue!2249 (v!2663 (underlying!295 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun lt!41884 () (_ BitVec 64))

(assert (=> b!88030 (= lt!41884 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!41883 () (_ BitVec 64))

(assert (=> b!88030 (= lt!41883 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!41876 () Unit!2618)

(declare-fun addApplyDifferent!59 (ListLongMap!1491 (_ BitVec 64) V!3035 (_ BitVec 64)) Unit!2618)

(assert (=> b!88030 (= lt!41876 (addApplyDifferent!59 lt!41875 lt!41884 (minValue!2249 (v!2663 (underlying!295 thiss!992))) lt!41883))))

(assert (=> b!88030 (= (apply!83 (+!118 lt!41875 (tuple2!2241 lt!41884 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!41883) (apply!83 lt!41875 lt!41883))))

(declare-fun lt!41880 () Unit!2618)

(assert (=> b!88030 (= lt!41880 lt!41876)))

(declare-fun lt!41877 () ListLongMap!1491)

(assert (=> b!88030 (= lt!41877 (getCurrentListMapNoExtraKeys!82 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (_values!2342 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992))) (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) (minValue!2249 (v!2663 (underlying!295 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun lt!41878 () (_ BitVec 64))

(assert (=> b!88030 (= lt!41878 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!41865 () (_ BitVec 64))

(assert (=> b!88030 (= lt!41865 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!41882 () Unit!2618)

(assert (=> b!88030 (= lt!41882 (addApplyDifferent!59 lt!41877 lt!41878 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) lt!41865))))

(assert (=> b!88030 (= (apply!83 (+!118 lt!41877 (tuple2!2241 lt!41878 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!41865) (apply!83 lt!41877 lt!41865))))

(declare-fun lt!41869 () Unit!2618)

(assert (=> b!88030 (= lt!41869 lt!41882)))

(declare-fun lt!41867 () ListLongMap!1491)

(assert (=> b!88030 (= lt!41867 (getCurrentListMapNoExtraKeys!82 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (_values!2342 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992))) (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) (minValue!2249 (v!2663 (underlying!295 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun lt!41879 () (_ BitVec 64))

(assert (=> b!88030 (= lt!41879 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!41864 () (_ BitVec 64))

(assert (=> b!88030 (= lt!41864 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!88030 (= lt!41881 (addApplyDifferent!59 lt!41867 lt!41879 (minValue!2249 (v!2663 (underlying!295 thiss!992))) lt!41864))))

(assert (=> b!88030 (= (apply!83 (+!118 lt!41867 (tuple2!2241 lt!41879 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!41864) (apply!83 lt!41867 lt!41864))))

(declare-fun b!88031 () Bool)

(assert (=> b!88031 (= e!57362 call!8449)))

(declare-fun b!88032 () Bool)

(assert (=> b!88032 (= e!57363 (+!118 call!8453 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))))))

(declare-fun b!88033 () Bool)

(assert (=> b!88033 (= e!57352 (= (apply!83 lt!41874 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun b!88034 () Bool)

(assert (=> b!88034 (= e!57363 e!57359)))

(assert (=> b!88034 (= c!14533 (and (not (= (bvand (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!23331 c!14537) b!88032))

(assert (= (and d!23331 (not c!14537)) b!88034))

(assert (= (and b!88034 c!14533) b!88020))

(assert (= (and b!88034 (not c!14533)) b!88027))

(assert (= (and b!88027 c!14538) b!88031))

(assert (= (and b!88027 (not c!14538)) b!88015))

(assert (= (or b!88031 b!88015) bm!8447))

(assert (= (or b!88020 bm!8447) bm!8451))

(assert (= (or b!88020 b!88031) bm!8452))

(assert (= (or b!88032 bm!8451) bm!8448))

(assert (= (or b!88032 bm!8452) bm!8450))

(assert (= (and d!23331 res!45097) b!88024))

(assert (= (and d!23331 c!14535) b!88030))

(assert (= (and d!23331 (not c!14535)) b!88014))

(assert (= (and d!23331 res!45099) b!88017))

(assert (= (and b!88017 res!45094) b!88018))

(assert (= (and b!88017 (not res!45100)) b!88022))

(assert (= (and b!88022 res!45093) b!88023))

(assert (= (and b!88017 res!45101) b!88019))

(assert (= (and b!88019 c!14536) b!88021))

(assert (= (and b!88019 (not c!14536)) b!88028))

(assert (= (and b!88021 res!45098) b!88033))

(assert (= (or b!88021 b!88028) bm!8449))

(assert (= (and b!88019 res!45095) b!88029))

(assert (= (and b!88029 c!14534) b!88016))

(assert (= (and b!88029 (not c!14534)) b!88025))

(assert (= (and b!88016 res!45096) b!88026))

(assert (= (or b!88016 b!88025) bm!8446))

(declare-fun b_lambda!3899 () Bool)

(assert (=> (not b_lambda!3899) (not b!88023)))

(assert (=> b!88023 t!5299))

(declare-fun b_and!5293 () Bool)

(assert (= b_and!5289 (and (=> t!5299 result!2945) b_and!5293)))

(assert (=> b!88023 t!5301))

(declare-fun b_and!5295 () Bool)

(assert (= b_and!5291 (and (=> t!5301 result!2949) b_and!5295)))

(declare-fun m!93613 () Bool)

(assert (=> bm!8450 m!93613))

(assert (=> b!88022 m!93393))

(assert (=> b!88022 m!93393))

(declare-fun m!93615 () Bool)

(assert (=> b!88022 m!93615))

(declare-fun m!93617 () Bool)

(assert (=> b!88026 m!93617))

(assert (=> d!23331 m!93265))

(declare-fun m!93619 () Bool)

(assert (=> b!88033 m!93619))

(assert (=> bm!8448 m!93275))

(assert (=> b!88024 m!93393))

(assert (=> b!88024 m!93393))

(assert (=> b!88024 m!93433))

(declare-fun m!93621 () Bool)

(assert (=> bm!8449 m!93621))

(assert (=> b!88023 m!93315))

(assert (=> b!88023 m!93393))

(declare-fun m!93623 () Bool)

(assert (=> b!88023 m!93623))

(assert (=> b!88023 m!93421))

(assert (=> b!88023 m!93315))

(assert (=> b!88023 m!93431))

(assert (=> b!88023 m!93421))

(assert (=> b!88023 m!93393))

(assert (=> b!88018 m!93393))

(assert (=> b!88018 m!93393))

(assert (=> b!88018 m!93433))

(declare-fun m!93625 () Bool)

(assert (=> bm!8446 m!93625))

(declare-fun m!93627 () Bool)

(assert (=> b!88032 m!93627))

(assert (=> b!88030 m!93275))

(declare-fun m!93629 () Bool)

(assert (=> b!88030 m!93629))

(declare-fun m!93631 () Bool)

(assert (=> b!88030 m!93631))

(declare-fun m!93633 () Bool)

(assert (=> b!88030 m!93633))

(declare-fun m!93635 () Bool)

(assert (=> b!88030 m!93635))

(declare-fun m!93637 () Bool)

(assert (=> b!88030 m!93637))

(declare-fun m!93639 () Bool)

(assert (=> b!88030 m!93639))

(declare-fun m!93641 () Bool)

(assert (=> b!88030 m!93641))

(assert (=> b!88030 m!93635))

(declare-fun m!93643 () Bool)

(assert (=> b!88030 m!93643))

(declare-fun m!93645 () Bool)

(assert (=> b!88030 m!93645))

(declare-fun m!93647 () Bool)

(assert (=> b!88030 m!93647))

(declare-fun m!93649 () Bool)

(assert (=> b!88030 m!93649))

(assert (=> b!88030 m!93629))

(declare-fun m!93651 () Bool)

(assert (=> b!88030 m!93651))

(assert (=> b!88030 m!93643))

(declare-fun m!93653 () Bool)

(assert (=> b!88030 m!93653))

(assert (=> b!88030 m!93641))

(declare-fun m!93655 () Bool)

(assert (=> b!88030 m!93655))

(assert (=> b!88030 m!93393))

(declare-fun m!93657 () Bool)

(assert (=> b!88030 m!93657))

(assert (=> b!87675 d!23331))

(declare-fun d!23333 () Bool)

(declare-fun res!45108 () Bool)

(declare-fun e!57367 () Bool)

(assert (=> d!23333 (=> (not res!45108) (not e!57367))))

(declare-fun simpleValid!58 (LongMapFixedSize!762) Bool)

(assert (=> d!23333 (= res!45108 (simpleValid!58 newMap!16))))

(assert (=> d!23333 (= (valid!330 newMap!16) e!57367)))

(declare-fun b!88041 () Bool)

(declare-fun res!45109 () Bool)

(assert (=> b!88041 (=> (not res!45109) (not e!57367))))

(declare-fun arrayCountValidKeys!0 (array!4042 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!88041 (= res!45109 (= (arrayCountValidKeys!0 (_keys!4035 newMap!16) #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))) (_size!430 newMap!16)))))

(declare-fun b!88042 () Bool)

(declare-fun res!45110 () Bool)

(assert (=> b!88042 (=> (not res!45110) (not e!57367))))

(assert (=> b!88042 (= res!45110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4035 newMap!16) (mask!6397 newMap!16)))))

(declare-fun b!88043 () Bool)

(assert (=> b!88043 (= e!57367 (arrayNoDuplicates!0 (_keys!4035 newMap!16) #b00000000000000000000000000000000 Nil!1554))))

(assert (= (and d!23333 res!45108) b!88041))

(assert (= (and b!88041 res!45109) b!88042))

(assert (= (and b!88042 res!45110) b!88043))

(declare-fun m!93659 () Bool)

(assert (=> d!23333 m!93659))

(declare-fun m!93661 () Bool)

(assert (=> b!88041 m!93661))

(declare-fun m!93663 () Bool)

(assert (=> b!88042 m!93663))

(declare-fun m!93665 () Bool)

(assert (=> b!88043 m!93665))

(assert (=> b!87664 d!23333))

(declare-fun d!23335 () Bool)

(declare-fun c!14541 () Bool)

(assert (=> d!23335 (= c!14541 ((_ is ValueCellFull!927) (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun e!57370 () V!3035)

(assert (=> d!23335 (= (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) from!355) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!57370)))

(declare-fun b!88048 () Bool)

(declare-fun get!1220 (ValueCell!927 V!3035) V!3035)

(assert (=> b!88048 (= e!57370 (get!1220 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) from!355) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!88049 () Bool)

(declare-fun get!1221 (ValueCell!927 V!3035) V!3035)

(assert (=> b!88049 (= e!57370 (get!1221 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) from!355) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!23335 c!14541) b!88048))

(assert (= (and d!23335 (not c!14541)) b!88049))

(assert (=> b!88048 m!93313))

(assert (=> b!88048 m!93315))

(declare-fun m!93667 () Bool)

(assert (=> b!88048 m!93667))

(assert (=> b!88049 m!93313))

(assert (=> b!88049 m!93315))

(declare-fun m!93669 () Bool)

(assert (=> b!88049 m!93669))

(assert (=> b!87676 d!23335))

(declare-fun d!23337 () Bool)

(assert (=> d!23337 (= (valid!331 thiss!992) (valid!330 (v!2663 (underlying!295 thiss!992))))))

(declare-fun bs!3702 () Bool)

(assert (= bs!3702 d!23337))

(declare-fun m!93671 () Bool)

(assert (=> bs!3702 m!93671))

(assert (=> start!10852 d!23337))

(declare-fun condMapEmpty!3435 () Bool)

(declare-fun mapDefault!3435 () ValueCell!927)

(assert (=> mapNonEmpty!3425 (= condMapEmpty!3435 (= mapRest!3425 ((as const (Array (_ BitVec 32) ValueCell!927)) mapDefault!3435)))))

(declare-fun e!57375 () Bool)

(declare-fun mapRes!3435 () Bool)

(assert (=> mapNonEmpty!3425 (= tp!8982 (and e!57375 mapRes!3435))))

(declare-fun mapNonEmpty!3435 () Bool)

(declare-fun tp!8997 () Bool)

(declare-fun e!57376 () Bool)

(assert (=> mapNonEmpty!3435 (= mapRes!3435 (and tp!8997 e!57376))))

(declare-fun mapKey!3435 () (_ BitVec 32))

(declare-fun mapValue!3435 () ValueCell!927)

(declare-fun mapRest!3435 () (Array (_ BitVec 32) ValueCell!927))

(assert (=> mapNonEmpty!3435 (= mapRest!3425 (store mapRest!3435 mapKey!3435 mapValue!3435))))

(declare-fun b!88056 () Bool)

(assert (=> b!88056 (= e!57376 tp_is_empty!2541)))

(declare-fun b!88057 () Bool)

(assert (=> b!88057 (= e!57375 tp_is_empty!2541)))

(declare-fun mapIsEmpty!3435 () Bool)

(assert (=> mapIsEmpty!3435 mapRes!3435))

(assert (= (and mapNonEmpty!3425 condMapEmpty!3435) mapIsEmpty!3435))

(assert (= (and mapNonEmpty!3425 (not condMapEmpty!3435)) mapNonEmpty!3435))

(assert (= (and mapNonEmpty!3435 ((_ is ValueCellFull!927) mapValue!3435)) b!88056))

(assert (= (and mapNonEmpty!3425 ((_ is ValueCellFull!927) mapDefault!3435)) b!88057))

(declare-fun m!93673 () Bool)

(assert (=> mapNonEmpty!3435 m!93673))

(declare-fun condMapEmpty!3436 () Bool)

(declare-fun mapDefault!3436 () ValueCell!927)

(assert (=> mapNonEmpty!3426 (= condMapEmpty!3436 (= mapRest!3426 ((as const (Array (_ BitVec 32) ValueCell!927)) mapDefault!3436)))))

(declare-fun e!57377 () Bool)

(declare-fun mapRes!3436 () Bool)

(assert (=> mapNonEmpty!3426 (= tp!8980 (and e!57377 mapRes!3436))))

(declare-fun mapNonEmpty!3436 () Bool)

(declare-fun tp!8998 () Bool)

(declare-fun e!57378 () Bool)

(assert (=> mapNonEmpty!3436 (= mapRes!3436 (and tp!8998 e!57378))))

(declare-fun mapRest!3436 () (Array (_ BitVec 32) ValueCell!927))

(declare-fun mapValue!3436 () ValueCell!927)

(declare-fun mapKey!3436 () (_ BitVec 32))

(assert (=> mapNonEmpty!3436 (= mapRest!3426 (store mapRest!3436 mapKey!3436 mapValue!3436))))

(declare-fun b!88058 () Bool)

(assert (=> b!88058 (= e!57378 tp_is_empty!2541)))

(declare-fun b!88059 () Bool)

(assert (=> b!88059 (= e!57377 tp_is_empty!2541)))

(declare-fun mapIsEmpty!3436 () Bool)

(assert (=> mapIsEmpty!3436 mapRes!3436))

(assert (= (and mapNonEmpty!3426 condMapEmpty!3436) mapIsEmpty!3436))

(assert (= (and mapNonEmpty!3426 (not condMapEmpty!3436)) mapNonEmpty!3436))

(assert (= (and mapNonEmpty!3436 ((_ is ValueCellFull!927) mapValue!3436)) b!88058))

(assert (= (and mapNonEmpty!3426 ((_ is ValueCellFull!927) mapDefault!3436)) b!88059))

(declare-fun m!93675 () Bool)

(assert (=> mapNonEmpty!3436 m!93675))

(declare-fun b_lambda!3901 () Bool)

(assert (= b_lambda!3895 (or (and b!87671 b_free!2249) (and b!87670 b_free!2251 (= (defaultEntry!2359 newMap!16) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))))) b_lambda!3901)))

(declare-fun b_lambda!3903 () Bool)

(assert (= b_lambda!3897 (or (and b!87671 b_free!2249) (and b!87670 b_free!2251 (= (defaultEntry!2359 newMap!16) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))))) b_lambda!3903)))

(declare-fun b_lambda!3905 () Bool)

(assert (= b_lambda!3899 (or (and b!87671 b_free!2249) (and b!87670 b_free!2251 (= (defaultEntry!2359 newMap!16) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))))) b_lambda!3905)))

(check-sat (not b!87830) (not bm!8422) (not b!87932) (not b!87755) (not b!87823) (not bm!8356) (not b!87807) (not d!23313) (not b_lambda!3905) (not b!87968) (not d!23337) (not bm!8449) (not d!23323) (not b!87821) (not b!87956) (not b!88049) (not b!87939) (not b!87822) (not d!23333) (not d!23305) (not bm!8353) (not b!87825) (not b_lambda!3901) (not b!87760) (not d!23317) (not d!23289) (not bm!8417) (not b!88042) (not b!88030) (not b!87808) (not bm!8427) (not b!87829) (not bm!8416) (not bm!8426) (not b!87819) tp_is_empty!2541 (not bm!8448) (not b!87772) (not b!87773) (not bm!8410) (not b!87813) (not d!23307) (not b!87809) (not b_lambda!3893) (not d!23283) (not b!88026) (not bm!8406) (not d!23303) (not b!88048) (not b!87824) (not d!23309) (not b!88033) b_and!5295 (not bm!8419) (not d!23331) (not d!23325) (not b!87782) (not b_next!2251) (not b!88022) (not b!88018) (not bm!8446) (not d!23311) (not b!88024) (not mapNonEmpty!3435) (not b!87774) (not b_lambda!3903) (not b!87828) (not bm!8418) (not bm!8431) (not bm!8413) (not b!87815) (not d!23319) (not b!87812) (not b!87816) (not b!87839) (not d!23285) (not b!87955) (not b!87953) (not b!87781) (not b!87820) (not b!87818) (not d!23315) (not b_next!2249) (not mapNonEmpty!3436) (not b!88032) (not d!23301) (not b!87920) (not d!23329) (not b!88041) (not bm!8420) (not b!87827) (not b!88043) b_and!5293 (not b!87969) (not b!87826) (not bm!8415) (not b!87837) (not bm!8450) (not b!88023))
(check-sat b_and!5293 b_and!5295 (not b_next!2249) (not b_next!2251))
(get-model)

(declare-fun d!23339 () Bool)

(declare-fun lt!41887 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!90 (List!1556) (InoxSet tuple2!2240))

(assert (=> d!23339 (= lt!41887 (select (content!90 (toList!761 lt!41704)) lt!41592))))

(declare-fun e!57383 () Bool)

(assert (=> d!23339 (= lt!41887 e!57383)))

(declare-fun res!45115 () Bool)

(assert (=> d!23339 (=> (not res!45115) (not e!57383))))

(assert (=> d!23339 (= res!45115 ((_ is Cons!1552) (toList!761 lt!41704)))))

(assert (=> d!23339 (= (contains!768 (toList!761 lt!41704) lt!41592) lt!41887)))

(declare-fun b!88064 () Bool)

(declare-fun e!57384 () Bool)

(assert (=> b!88064 (= e!57383 e!57384)))

(declare-fun res!45116 () Bool)

(assert (=> b!88064 (=> res!45116 e!57384)))

(assert (=> b!88064 (= res!45116 (= (h!2144 (toList!761 lt!41704)) lt!41592))))

(declare-fun b!88065 () Bool)

(assert (=> b!88065 (= e!57384 (contains!768 (t!5302 (toList!761 lt!41704)) lt!41592))))

(assert (= (and d!23339 res!45115) b!88064))

(assert (= (and b!88064 (not res!45116)) b!88065))

(declare-fun m!93677 () Bool)

(assert (=> d!23339 m!93677))

(declare-fun m!93679 () Bool)

(assert (=> d!23339 m!93679))

(declare-fun m!93681 () Bool)

(assert (=> b!88065 m!93681))

(assert (=> b!87826 d!23339))

(declare-fun d!23341 () Bool)

(assert (=> d!23341 (= (validKeyInArray!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) #b00000000000000000000000000000000)) (and (not (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!87969 d!23341))

(declare-fun d!23343 () Bool)

(declare-fun lt!41888 () Bool)

(assert (=> d!23343 (= lt!41888 (select (content!90 (toList!761 lt!41708)) lt!41591))))

(declare-fun e!57385 () Bool)

(assert (=> d!23343 (= lt!41888 e!57385)))

(declare-fun res!45117 () Bool)

(assert (=> d!23343 (=> (not res!45117) (not e!57385))))

(assert (=> d!23343 (= res!45117 ((_ is Cons!1552) (toList!761 lt!41708)))))

(assert (=> d!23343 (= (contains!768 (toList!761 lt!41708) lt!41591) lt!41888)))

(declare-fun b!88066 () Bool)

(declare-fun e!57386 () Bool)

(assert (=> b!88066 (= e!57385 e!57386)))

(declare-fun res!45118 () Bool)

(assert (=> b!88066 (=> res!45118 e!57386)))

(assert (=> b!88066 (= res!45118 (= (h!2144 (toList!761 lt!41708)) lt!41591))))

(declare-fun b!88067 () Bool)

(assert (=> b!88067 (= e!57386 (contains!768 (t!5302 (toList!761 lt!41708)) lt!41591))))

(assert (= (and d!23343 res!45117) b!88066))

(assert (= (and b!88066 (not res!45118)) b!88067))

(declare-fun m!93683 () Bool)

(assert (=> d!23343 m!93683))

(declare-fun m!93685 () Bool)

(assert (=> d!23343 m!93685))

(declare-fun m!93687 () Bool)

(assert (=> b!88067 m!93687))

(assert (=> b!87828 d!23343))

(declare-fun b!88079 () Bool)

(declare-fun e!57392 () Option!146)

(assert (=> b!88079 (= e!57392 None!144)))

(declare-fun b!88077 () Bool)

(declare-fun e!57391 () Option!146)

(assert (=> b!88077 (= e!57391 e!57392)))

(declare-fun c!14547 () Bool)

(assert (=> b!88077 (= c!14547 (and ((_ is Cons!1552) (toList!761 lt!41664)) (not (= (_1!1130 (h!2144 (toList!761 lt!41664))) (_1!1130 lt!41592)))))))

(declare-fun d!23345 () Bool)

(declare-fun c!14546 () Bool)

(assert (=> d!23345 (= c!14546 (and ((_ is Cons!1552) (toList!761 lt!41664)) (= (_1!1130 (h!2144 (toList!761 lt!41664))) (_1!1130 lt!41592))))))

(assert (=> d!23345 (= (getValueByKey!140 (toList!761 lt!41664) (_1!1130 lt!41592)) e!57391)))

(declare-fun b!88078 () Bool)

(assert (=> b!88078 (= e!57392 (getValueByKey!140 (t!5302 (toList!761 lt!41664)) (_1!1130 lt!41592)))))

(declare-fun b!88076 () Bool)

(assert (=> b!88076 (= e!57391 (Some!145 (_2!1130 (h!2144 (toList!761 lt!41664)))))))

(assert (= (and d!23345 c!14546) b!88076))

(assert (= (and d!23345 (not c!14546)) b!88077))

(assert (= (and b!88077 c!14547) b!88078))

(assert (= (and b!88077 (not c!14547)) b!88079))

(declare-fun m!93689 () Bool)

(assert (=> b!88078 m!93689))

(assert (=> b!87781 d!23345))

(declare-fun d!23347 () Bool)

(assert (=> d!23347 (= (validKeyInArray!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!87813 d!23347))

(assert (=> b!87760 d!23287))

(declare-fun d!23349 () Bool)

(declare-fun lt!41889 () Bool)

(assert (=> d!23349 (= lt!41889 (select (content!90 (toList!761 lt!41700)) lt!41584))))

(declare-fun e!57393 () Bool)

(assert (=> d!23349 (= lt!41889 e!57393)))

(declare-fun res!45119 () Bool)

(assert (=> d!23349 (=> (not res!45119) (not e!57393))))

(assert (=> d!23349 (= res!45119 ((_ is Cons!1552) (toList!761 lt!41700)))))

(assert (=> d!23349 (= (contains!768 (toList!761 lt!41700) lt!41584) lt!41889)))

(declare-fun b!88080 () Bool)

(declare-fun e!57394 () Bool)

(assert (=> b!88080 (= e!57393 e!57394)))

(declare-fun res!45120 () Bool)

(assert (=> b!88080 (=> res!45120 e!57394)))

(assert (=> b!88080 (= res!45120 (= (h!2144 (toList!761 lt!41700)) lt!41584))))

(declare-fun b!88081 () Bool)

(assert (=> b!88081 (= e!57394 (contains!768 (t!5302 (toList!761 lt!41700)) lt!41584))))

(assert (= (and d!23349 res!45119) b!88080))

(assert (= (and b!88080 (not res!45120)) b!88081))

(declare-fun m!93691 () Bool)

(assert (=> d!23349 m!93691))

(declare-fun m!93693 () Bool)

(assert (=> d!23349 m!93693))

(declare-fun m!93695 () Bool)

(assert (=> b!88081 m!93695))

(assert (=> b!87824 d!23349))

(declare-fun b!88082 () Bool)

(declare-fun lt!41895 () Unit!2618)

(declare-fun lt!41893 () Unit!2618)

(assert (=> b!88082 (= lt!41895 lt!41893)))

(declare-fun lt!41892 () (_ BitVec 64))

(declare-fun lt!41891 () V!3035)

(declare-fun lt!41894 () ListLongMap!1491)

(declare-fun lt!41896 () (_ BitVec 64))

(assert (=> b!88082 (not (contains!766 (+!118 lt!41894 (tuple2!2241 lt!41896 lt!41891)) lt!41892))))

(assert (=> b!88082 (= lt!41893 (addStillNotContains!34 lt!41894 lt!41896 lt!41891 lt!41892))))

(assert (=> b!88082 (= lt!41892 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!88082 (= lt!41891 (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!88082 (= lt!41896 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(declare-fun call!8456 () ListLongMap!1491)

(assert (=> b!88082 (= lt!41894 call!8456)))

(declare-fun e!57398 () ListLongMap!1491)

(assert (=> b!88082 (= e!57398 (+!118 call!8456 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!88083 () Bool)

(declare-fun e!57401 () Bool)

(declare-fun e!57395 () Bool)

(assert (=> b!88083 (= e!57401 e!57395)))

(assert (=> b!88083 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(declare-fun res!45124 () Bool)

(declare-fun lt!41890 () ListLongMap!1491)

(assert (=> b!88083 (= res!45124 (contains!766 lt!41890 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!88083 (=> (not res!45124) (not e!57395))))

(declare-fun b!88084 () Bool)

(declare-fun e!57399 () Bool)

(assert (=> b!88084 (= e!57399 (= lt!41890 (getCurrentListMapNoExtraKeys!82 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (_values!2342 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992))) (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) (minValue!2249 (v!2663 (underlying!295 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))))))))

(declare-fun b!88085 () Bool)

(declare-fun e!57400 () ListLongMap!1491)

(assert (=> b!88085 (= e!57400 (ListLongMap!1492 Nil!1553))))

(declare-fun b!88086 () Bool)

(declare-fun e!57396 () Bool)

(assert (=> b!88086 (= e!57396 e!57401)))

(declare-fun c!14549 () Bool)

(declare-fun e!57397 () Bool)

(assert (=> b!88086 (= c!14549 e!57397)))

(declare-fun res!45123 () Bool)

(assert (=> b!88086 (=> (not res!45123) (not e!57397))))

(assert (=> b!88086 (= res!45123 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(declare-fun b!88087 () Bool)

(assert (=> b!88087 (= e!57399 (isEmpty!343 lt!41890))))

(declare-fun b!88088 () Bool)

(assert (=> b!88088 (= e!57400 e!57398)))

(declare-fun c!14550 () Bool)

(assert (=> b!88088 (= c!14550 (validKeyInArray!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(declare-fun d!23351 () Bool)

(assert (=> d!23351 e!57396))

(declare-fun res!45121 () Bool)

(assert (=> d!23351 (=> (not res!45121) (not e!57396))))

(assert (=> d!23351 (= res!45121 (not (contains!766 lt!41890 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!23351 (= lt!41890 e!57400)))

(declare-fun c!14548 () Bool)

(assert (=> d!23351 (= c!14548 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(assert (=> d!23351 (validMask!0 (mask!6397 (v!2663 (underlying!295 thiss!992))))))

(assert (=> d!23351 (= (getCurrentListMapNoExtraKeys!82 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (_values!2342 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992))) (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) (minValue!2249 (v!2663 (underlying!295 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992)))) lt!41890)))

(declare-fun b!88089 () Bool)

(assert (=> b!88089 (= e!57398 call!8456)))

(declare-fun b!88090 () Bool)

(declare-fun res!45122 () Bool)

(assert (=> b!88090 (=> (not res!45122) (not e!57396))))

(assert (=> b!88090 (= res!45122 (not (contains!766 lt!41890 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!88091 () Bool)

(assert (=> b!88091 (= e!57397 (validKeyInArray!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!88091 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!88092 () Bool)

(assert (=> b!88092 (= e!57401 e!57399)))

(declare-fun c!14551 () Bool)

(assert (=> b!88092 (= c!14551 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(declare-fun bm!8453 () Bool)

(assert (=> bm!8453 (= call!8456 (getCurrentListMapNoExtraKeys!82 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (_values!2342 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992))) (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) (minValue!2249 (v!2663 (underlying!295 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun b!88093 () Bool)

(assert (=> b!88093 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(assert (=> b!88093 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2170 (_values!2342 (v!2663 (underlying!295 thiss!992))))))))

(assert (=> b!88093 (= e!57395 (= (apply!83 lt!41890 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))) (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!23351 c!14548) b!88085))

(assert (= (and d!23351 (not c!14548)) b!88088))

(assert (= (and b!88088 c!14550) b!88082))

(assert (= (and b!88088 (not c!14550)) b!88089))

(assert (= (or b!88082 b!88089) bm!8453))

(assert (= (and d!23351 res!45121) b!88090))

(assert (= (and b!88090 res!45122) b!88086))

(assert (= (and b!88086 res!45123) b!88091))

(assert (= (and b!88086 c!14549) b!88083))

(assert (= (and b!88086 (not c!14549)) b!88092))

(assert (= (and b!88083 res!45124) b!88093))

(assert (= (and b!88092 c!14551) b!88084))

(assert (= (and b!88092 (not c!14551)) b!88087))

(declare-fun b_lambda!3907 () Bool)

(assert (=> (not b_lambda!3907) (not b!88082)))

(assert (=> b!88082 t!5299))

(declare-fun b_and!5297 () Bool)

(assert (= b_and!5293 (and (=> t!5299 result!2945) b_and!5297)))

(assert (=> b!88082 t!5301))

(declare-fun b_and!5299 () Bool)

(assert (= b_and!5295 (and (=> t!5301 result!2949) b_and!5299)))

(declare-fun b_lambda!3909 () Bool)

(assert (=> (not b_lambda!3909) (not b!88093)))

(assert (=> b!88093 t!5299))

(declare-fun b_and!5301 () Bool)

(assert (= b_and!5297 (and (=> t!5299 result!2945) b_and!5301)))

(assert (=> b!88093 t!5301))

(declare-fun b_and!5303 () Bool)

(assert (= b_and!5299 (and (=> t!5301 result!2949) b_and!5303)))

(declare-fun m!93697 () Bool)

(assert (=> b!88087 m!93697))

(declare-fun m!93699 () Bool)

(assert (=> bm!8453 m!93699))

(declare-fun m!93701 () Bool)

(assert (=> b!88082 m!93701))

(declare-fun m!93703 () Bool)

(assert (=> b!88082 m!93703))

(declare-fun m!93705 () Bool)

(assert (=> b!88082 m!93705))

(declare-fun m!93707 () Bool)

(assert (=> b!88082 m!93707))

(declare-fun m!93709 () Bool)

(assert (=> b!88082 m!93709))

(assert (=> b!88082 m!93705))

(declare-fun m!93711 () Bool)

(assert (=> b!88082 m!93711))

(assert (=> b!88082 m!93701))

(assert (=> b!88082 m!93315))

(declare-fun m!93713 () Bool)

(assert (=> b!88082 m!93713))

(assert (=> b!88082 m!93315))

(assert (=> b!88084 m!93699))

(assert (=> b!88091 m!93703))

(assert (=> b!88091 m!93703))

(declare-fun m!93715 () Bool)

(assert (=> b!88091 m!93715))

(assert (=> b!88088 m!93703))

(assert (=> b!88088 m!93703))

(assert (=> b!88088 m!93715))

(declare-fun m!93717 () Bool)

(assert (=> d!23351 m!93717))

(assert (=> d!23351 m!93265))

(assert (=> b!88083 m!93703))

(assert (=> b!88083 m!93703))

(declare-fun m!93719 () Bool)

(assert (=> b!88083 m!93719))

(assert (=> b!88093 m!93701))

(assert (=> b!88093 m!93703))

(assert (=> b!88093 m!93703))

(declare-fun m!93721 () Bool)

(assert (=> b!88093 m!93721))

(assert (=> b!88093 m!93701))

(assert (=> b!88093 m!93315))

(assert (=> b!88093 m!93713))

(assert (=> b!88093 m!93315))

(declare-fun m!93723 () Bool)

(assert (=> b!88090 m!93723))

(assert (=> b!87809 d!23351))

(declare-fun d!23353 () Bool)

(declare-fun e!57404 () Bool)

(assert (=> d!23353 e!57404))

(declare-fun c!14554 () Bool)

(assert (=> d!23353 (= c!14554 (and (not (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!23353 true))

(declare-fun _$29!111 () Unit!2618)

(assert (=> d!23353 (= (choose!521 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (_values!2342 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992))) (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) (minValue!2249 (v!2663 (underlying!295 thiss!992))) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992)))) _$29!111)))

(declare-fun b!88098 () Bool)

(assert (=> b!88098 (= e!57404 (arrayContainsKey!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!88099 () Bool)

(assert (=> b!88099 (= e!57404 (ite (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2194 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!23353 c!14554) b!88098))

(assert (= (and d!23353 (not c!14554)) b!88099))

(assert (=> b!88098 m!93277))

(assert (=> b!88098 m!93295))

(assert (=> d!23289 d!23353))

(assert (=> d!23289 d!23321))

(declare-fun d!23355 () Bool)

(declare-fun res!45125 () Bool)

(declare-fun e!57405 () Bool)

(assert (=> d!23355 (=> (not res!45125) (not e!57405))))

(assert (=> d!23355 (= res!45125 (simpleValid!58 (_2!1131 lt!41792)))))

(assert (=> d!23355 (= (valid!330 (_2!1131 lt!41792)) e!57405)))

(declare-fun b!88100 () Bool)

(declare-fun res!45126 () Bool)

(assert (=> b!88100 (=> (not res!45126) (not e!57405))))

(assert (=> b!88100 (= res!45126 (= (arrayCountValidKeys!0 (_keys!4035 (_2!1131 lt!41792)) #b00000000000000000000000000000000 (size!2169 (_keys!4035 (_2!1131 lt!41792)))) (_size!430 (_2!1131 lt!41792))))))

(declare-fun b!88101 () Bool)

(declare-fun res!45127 () Bool)

(assert (=> b!88101 (=> (not res!45127) (not e!57405))))

(assert (=> b!88101 (= res!45127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4035 (_2!1131 lt!41792)) (mask!6397 (_2!1131 lt!41792))))))

(declare-fun b!88102 () Bool)

(assert (=> b!88102 (= e!57405 (arrayNoDuplicates!0 (_keys!4035 (_2!1131 lt!41792)) #b00000000000000000000000000000000 Nil!1554))))

(assert (= (and d!23355 res!45125) b!88100))

(assert (= (and b!88100 res!45126) b!88101))

(assert (= (and b!88101 res!45127) b!88102))

(declare-fun m!93725 () Bool)

(assert (=> d!23355 m!93725))

(declare-fun m!93727 () Bool)

(assert (=> b!88100 m!93727))

(declare-fun m!93729 () Bool)

(assert (=> b!88101 m!93729))

(declare-fun m!93731 () Bool)

(assert (=> b!88102 m!93731))

(assert (=> d!23325 d!23355))

(assert (=> d!23325 d!23333))

(declare-fun d!23357 () Bool)

(declare-fun e!57406 () Bool)

(assert (=> d!23357 e!57406))

(declare-fun res!45128 () Bool)

(assert (=> d!23357 (=> res!45128 e!57406)))

(declare-fun lt!41897 () Bool)

(assert (=> d!23357 (= res!45128 (not lt!41897))))

(declare-fun lt!41899 () Bool)

(assert (=> d!23357 (= lt!41897 lt!41899)))

(declare-fun lt!41898 () Unit!2618)

(declare-fun e!57407 () Unit!2618)

(assert (=> d!23357 (= lt!41898 e!57407)))

(declare-fun c!14555 () Bool)

(assert (=> d!23357 (= c!14555 lt!41899)))

(assert (=> d!23357 (= lt!41899 (containsKey!144 (toList!761 lt!41874) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!23357 (= (contains!766 lt!41874 #b0000000000000000000000000000000000000000000000000000000000000000) lt!41897)))

(declare-fun b!88103 () Bool)

(declare-fun lt!41900 () Unit!2618)

(assert (=> b!88103 (= e!57407 lt!41900)))

(assert (=> b!88103 (= lt!41900 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 lt!41874) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!88103 (isDefined!94 (getValueByKey!140 (toList!761 lt!41874) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!88104 () Bool)

(declare-fun Unit!2626 () Unit!2618)

(assert (=> b!88104 (= e!57407 Unit!2626)))

(declare-fun b!88105 () Bool)

(assert (=> b!88105 (= e!57406 (isDefined!94 (getValueByKey!140 (toList!761 lt!41874) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!23357 c!14555) b!88103))

(assert (= (and d!23357 (not c!14555)) b!88104))

(assert (= (and d!23357 (not res!45128)) b!88105))

(declare-fun m!93733 () Bool)

(assert (=> d!23357 m!93733))

(declare-fun m!93735 () Bool)

(assert (=> b!88103 m!93735))

(declare-fun m!93737 () Bool)

(assert (=> b!88103 m!93737))

(assert (=> b!88103 m!93737))

(declare-fun m!93739 () Bool)

(assert (=> b!88103 m!93739))

(assert (=> b!88105 m!93737))

(assert (=> b!88105 m!93737))

(assert (=> b!88105 m!93739))

(assert (=> bm!8449 d!23357))

(assert (=> d!23285 d!23291))

(declare-fun d!23359 () Bool)

(assert (=> d!23359 (arrayNoDuplicates!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) from!355 Nil!1554)))

(assert (=> d!23359 true))

(declare-fun _$71!117 () Unit!2618)

(assert (=> d!23359 (= (choose!39 (_keys!4035 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000000 from!355) _$71!117)))

(declare-fun bs!3703 () Bool)

(assert (= bs!3703 d!23359))

(assert (=> bs!3703 m!93291))

(assert (=> d!23285 d!23359))

(declare-fun d!23361 () Bool)

(assert (=> d!23361 (arrayContainsKey!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) lt!41818 #b00000000000000000000000000000000)))

(declare-fun lt!41903 () Unit!2618)

(declare-fun choose!13 (array!4042 (_ BitVec 64) (_ BitVec 32)) Unit!2618)

(assert (=> d!23361 (= lt!41903 (choose!13 (_keys!4035 (v!2663 (underlying!295 thiss!992))) lt!41818 #b00000000000000000000000000000000))))

(assert (=> d!23361 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!23361 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) lt!41818 #b00000000000000000000000000000000) lt!41903)))

(declare-fun bs!3704 () Bool)

(assert (= bs!3704 d!23361))

(assert (=> bs!3704 m!93603))

(declare-fun m!93741 () Bool)

(assert (=> bs!3704 m!93741))

(assert (=> b!87968 d!23361))

(declare-fun d!23363 () Bool)

(declare-fun res!45129 () Bool)

(declare-fun e!57408 () Bool)

(assert (=> d!23363 (=> res!45129 e!57408)))

(assert (=> d!23363 (= res!45129 (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) #b00000000000000000000000000000000) lt!41818))))

(assert (=> d!23363 (= (arrayContainsKey!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) lt!41818 #b00000000000000000000000000000000) e!57408)))

(declare-fun b!88106 () Bool)

(declare-fun e!57409 () Bool)

(assert (=> b!88106 (= e!57408 e!57409)))

(declare-fun res!45130 () Bool)

(assert (=> b!88106 (=> (not res!45130) (not e!57409))))

(assert (=> b!88106 (= res!45130 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(declare-fun b!88107 () Bool)

(assert (=> b!88107 (= e!57409 (arrayContainsKey!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) lt!41818 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!23363 (not res!45129)) b!88106))

(assert (= (and b!88106 res!45130) b!88107))

(assert (=> d!23363 m!93599))

(declare-fun m!93743 () Bool)

(assert (=> b!88107 m!93743))

(assert (=> b!87968 d!23363))

(declare-fun b!88120 () Bool)

(declare-fun e!57417 () SeekEntryResult!254)

(assert (=> b!88120 (= e!57417 Undefined!254)))

(declare-fun b!88121 () Bool)

(declare-fun c!14564 () Bool)

(declare-fun lt!41911 () (_ BitVec 64))

(assert (=> b!88121 (= c!14564 (= lt!41911 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!57416 () SeekEntryResult!254)

(declare-fun e!57418 () SeekEntryResult!254)

(assert (=> b!88121 (= e!57416 e!57418)))

(declare-fun b!88122 () Bool)

(declare-fun lt!41910 () SeekEntryResult!254)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4042 (_ BitVec 32)) SeekEntryResult!254)

(assert (=> b!88122 (= e!57418 (seekKeyOrZeroReturnVacant!0 (x!12151 lt!41910) (index!3156 lt!41910) (index!3156 lt!41910) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) #b00000000000000000000000000000000) (_keys!4035 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun b!88123 () Bool)

(assert (=> b!88123 (= e!57416 (Found!254 (index!3156 lt!41910)))))

(declare-fun b!88124 () Bool)

(assert (=> b!88124 (= e!57418 (MissingZero!254 (index!3156 lt!41910)))))

(declare-fun b!88125 () Bool)

(assert (=> b!88125 (= e!57417 e!57416)))

(assert (=> b!88125 (= lt!41911 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (index!3156 lt!41910)))))

(declare-fun c!14562 () Bool)

(assert (=> b!88125 (= c!14562 (= lt!41911 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!23365 () Bool)

(declare-fun lt!41912 () SeekEntryResult!254)

(assert (=> d!23365 (and (or ((_ is Undefined!254) lt!41912) (not ((_ is Found!254) lt!41912)) (and (bvsge (index!3155 lt!41912) #b00000000000000000000000000000000) (bvslt (index!3155 lt!41912) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))) (or ((_ is Undefined!254) lt!41912) ((_ is Found!254) lt!41912) (not ((_ is MissingZero!254) lt!41912)) (and (bvsge (index!3154 lt!41912) #b00000000000000000000000000000000) (bvslt (index!3154 lt!41912) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))) (or ((_ is Undefined!254) lt!41912) ((_ is Found!254) lt!41912) ((_ is MissingZero!254) lt!41912) (not ((_ is MissingVacant!254) lt!41912)) (and (bvsge (index!3157 lt!41912) #b00000000000000000000000000000000) (bvslt (index!3157 lt!41912) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))) (or ((_ is Undefined!254) lt!41912) (ite ((_ is Found!254) lt!41912) (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (index!3155 lt!41912)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!254) lt!41912) (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (index!3154 lt!41912)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!254) lt!41912) (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (index!3157 lt!41912)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!23365 (= lt!41912 e!57417)))

(declare-fun c!14563 () Bool)

(assert (=> d!23365 (= c!14563 (and ((_ is Intermediate!254) lt!41910) (undefined!1066 lt!41910)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4042 (_ BitVec 32)) SeekEntryResult!254)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!23365 (= lt!41910 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) #b00000000000000000000000000000000) (mask!6397 (v!2663 (underlying!295 thiss!992)))) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) #b00000000000000000000000000000000) (_keys!4035 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992)))))))

(assert (=> d!23365 (validMask!0 (mask!6397 (v!2663 (underlying!295 thiss!992))))))

(assert (=> d!23365 (= (seekEntryOrOpen!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) #b00000000000000000000000000000000) (_keys!4035 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992)))) lt!41912)))

(assert (= (and d!23365 c!14563) b!88120))

(assert (= (and d!23365 (not c!14563)) b!88125))

(assert (= (and b!88125 c!14562) b!88123))

(assert (= (and b!88125 (not c!14562)) b!88121))

(assert (= (and b!88121 c!14564) b!88124))

(assert (= (and b!88121 (not c!14564)) b!88122))

(assert (=> b!88122 m!93599))

(declare-fun m!93745 () Bool)

(assert (=> b!88122 m!93745))

(declare-fun m!93747 () Bool)

(assert (=> b!88125 m!93747))

(assert (=> d!23365 m!93265))

(declare-fun m!93749 () Bool)

(assert (=> d!23365 m!93749))

(assert (=> d!23365 m!93599))

(declare-fun m!93751 () Bool)

(assert (=> d!23365 m!93751))

(assert (=> d!23365 m!93751))

(assert (=> d!23365 m!93599))

(declare-fun m!93753 () Bool)

(assert (=> d!23365 m!93753))

(declare-fun m!93755 () Bool)

(assert (=> d!23365 m!93755))

(declare-fun m!93757 () Bool)

(assert (=> d!23365 m!93757))

(assert (=> b!87968 d!23365))

(declare-fun d!23367 () Bool)

(declare-fun lt!41913 () Bool)

(assert (=> d!23367 (= lt!41913 (select (content!90 (toList!761 lt!41693)) lt!41592))))

(declare-fun e!57419 () Bool)

(assert (=> d!23367 (= lt!41913 e!57419)))

(declare-fun res!45131 () Bool)

(assert (=> d!23367 (=> (not res!45131) (not e!57419))))

(assert (=> d!23367 (= res!45131 ((_ is Cons!1552) (toList!761 lt!41693)))))

(assert (=> d!23367 (= (contains!768 (toList!761 lt!41693) lt!41592) lt!41913)))

(declare-fun b!88126 () Bool)

(declare-fun e!57420 () Bool)

(assert (=> b!88126 (= e!57419 e!57420)))

(declare-fun res!45132 () Bool)

(assert (=> b!88126 (=> res!45132 e!57420)))

(assert (=> b!88126 (= res!45132 (= (h!2144 (toList!761 lt!41693)) lt!41592))))

(declare-fun b!88127 () Bool)

(assert (=> b!88127 (= e!57420 (contains!768 (t!5302 (toList!761 lt!41693)) lt!41592))))

(assert (= (and d!23367 res!45131) b!88126))

(assert (= (and b!88126 (not res!45132)) b!88127))

(declare-fun m!93759 () Bool)

(assert (=> d!23367 m!93759))

(declare-fun m!93761 () Bool)

(assert (=> d!23367 m!93761))

(declare-fun m!93763 () Bool)

(assert (=> b!88127 m!93763))

(assert (=> b!87822 d!23367))

(declare-fun d!23369 () Bool)

(declare-fun e!57421 () Bool)

(assert (=> d!23369 e!57421))

(declare-fun res!45134 () Bool)

(assert (=> d!23369 (=> (not res!45134) (not e!57421))))

(declare-fun lt!41914 () ListLongMap!1491)

(assert (=> d!23369 (= res!45134 (contains!766 lt!41914 (_1!1130 (tuple2!2241 lt!41688 lt!41683))))))

(declare-fun lt!41915 () List!1556)

(assert (=> d!23369 (= lt!41914 (ListLongMap!1492 lt!41915))))

(declare-fun lt!41916 () Unit!2618)

(declare-fun lt!41917 () Unit!2618)

(assert (=> d!23369 (= lt!41916 lt!41917)))

(assert (=> d!23369 (= (getValueByKey!140 lt!41915 (_1!1130 (tuple2!2241 lt!41688 lt!41683))) (Some!145 (_2!1130 (tuple2!2241 lt!41688 lt!41683))))))

(assert (=> d!23369 (= lt!41917 (lemmaContainsTupThenGetReturnValue!59 lt!41915 (_1!1130 (tuple2!2241 lt!41688 lt!41683)) (_2!1130 (tuple2!2241 lt!41688 lt!41683))))))

(assert (=> d!23369 (= lt!41915 (insertStrictlySorted!61 (toList!761 lt!41686) (_1!1130 (tuple2!2241 lt!41688 lt!41683)) (_2!1130 (tuple2!2241 lt!41688 lt!41683))))))

(assert (=> d!23369 (= (+!118 lt!41686 (tuple2!2241 lt!41688 lt!41683)) lt!41914)))

(declare-fun b!88128 () Bool)

(declare-fun res!45133 () Bool)

(assert (=> b!88128 (=> (not res!45133) (not e!57421))))

(assert (=> b!88128 (= res!45133 (= (getValueByKey!140 (toList!761 lt!41914) (_1!1130 (tuple2!2241 lt!41688 lt!41683))) (Some!145 (_2!1130 (tuple2!2241 lt!41688 lt!41683)))))))

(declare-fun b!88129 () Bool)

(assert (=> b!88129 (= e!57421 (contains!768 (toList!761 lt!41914) (tuple2!2241 lt!41688 lt!41683)))))

(assert (= (and d!23369 res!45134) b!88128))

(assert (= (and b!88128 res!45133) b!88129))

(declare-fun m!93765 () Bool)

(assert (=> d!23369 m!93765))

(declare-fun m!93767 () Bool)

(assert (=> d!23369 m!93767))

(declare-fun m!93769 () Bool)

(assert (=> d!23369 m!93769))

(declare-fun m!93771 () Bool)

(assert (=> d!23369 m!93771))

(declare-fun m!93773 () Bool)

(assert (=> b!88128 m!93773))

(declare-fun m!93775 () Bool)

(assert (=> b!88129 m!93775))

(assert (=> b!87807 d!23369))

(declare-fun d!23371 () Bool)

(declare-fun c!14565 () Bool)

(assert (=> d!23371 (= c!14565 ((_ is ValueCellFull!927) (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!57422 () V!3035)

(assert (=> d!23371 (= (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!57422)))

(declare-fun b!88130 () Bool)

(assert (=> b!88130 (= e!57422 (get!1220 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!88131 () Bool)

(assert (=> b!88131 (= e!57422 (get!1221 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!23371 c!14565) b!88130))

(assert (= (and d!23371 (not c!14565)) b!88131))

(assert (=> b!88130 m!93421))

(assert (=> b!88130 m!93315))

(declare-fun m!93777 () Bool)

(assert (=> b!88130 m!93777))

(assert (=> b!88131 m!93421))

(assert (=> b!88131 m!93315))

(declare-fun m!93779 () Bool)

(assert (=> b!88131 m!93779))

(assert (=> b!87807 d!23371))

(declare-fun d!23373 () Bool)

(declare-fun e!57423 () Bool)

(assert (=> d!23373 e!57423))

(declare-fun res!45136 () Bool)

(assert (=> d!23373 (=> (not res!45136) (not e!57423))))

(declare-fun lt!41918 () ListLongMap!1491)

(assert (=> d!23373 (= res!45136 (contains!766 lt!41918 (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!41919 () List!1556)

(assert (=> d!23373 (= lt!41918 (ListLongMap!1492 lt!41919))))

(declare-fun lt!41920 () Unit!2618)

(declare-fun lt!41921 () Unit!2618)

(assert (=> d!23373 (= lt!41920 lt!41921)))

(assert (=> d!23373 (= (getValueByKey!140 lt!41919 (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!145 (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!23373 (= lt!41921 (lemmaContainsTupThenGetReturnValue!59 lt!41919 (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!23373 (= lt!41919 (insertStrictlySorted!61 (toList!761 call!8359) (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!23373 (= (+!118 call!8359 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!41918)))

(declare-fun b!88132 () Bool)

(declare-fun res!45135 () Bool)

(assert (=> b!88132 (=> (not res!45135) (not e!57423))))

(assert (=> b!88132 (= res!45135 (= (getValueByKey!140 (toList!761 lt!41918) (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!145 (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!88133 () Bool)

(assert (=> b!88133 (= e!57423 (contains!768 (toList!761 lt!41918) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1219 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!23373 res!45136) b!88132))

(assert (= (and b!88132 res!45135) b!88133))

(declare-fun m!93781 () Bool)

(assert (=> d!23373 m!93781))

(declare-fun m!93783 () Bool)

(assert (=> d!23373 m!93783))

(declare-fun m!93785 () Bool)

(assert (=> d!23373 m!93785))

(declare-fun m!93787 () Bool)

(assert (=> d!23373 m!93787))

(declare-fun m!93789 () Bool)

(assert (=> b!88132 m!93789))

(declare-fun m!93791 () Bool)

(assert (=> b!88133 m!93791))

(assert (=> b!87807 d!23373))

(declare-fun d!23375 () Bool)

(declare-fun e!57424 () Bool)

(assert (=> d!23375 e!57424))

(declare-fun res!45137 () Bool)

(assert (=> d!23375 (=> res!45137 e!57424)))

(declare-fun lt!41922 () Bool)

(assert (=> d!23375 (= res!45137 (not lt!41922))))

(declare-fun lt!41924 () Bool)

(assert (=> d!23375 (= lt!41922 lt!41924)))

(declare-fun lt!41923 () Unit!2618)

(declare-fun e!57425 () Unit!2618)

(assert (=> d!23375 (= lt!41923 e!57425)))

(declare-fun c!14566 () Bool)

(assert (=> d!23375 (= c!14566 lt!41924)))

(assert (=> d!23375 (= lt!41924 (containsKey!144 (toList!761 (+!118 lt!41686 (tuple2!2241 lt!41688 lt!41683))) lt!41684))))

(assert (=> d!23375 (= (contains!766 (+!118 lt!41686 (tuple2!2241 lt!41688 lt!41683)) lt!41684) lt!41922)))

(declare-fun b!88134 () Bool)

(declare-fun lt!41925 () Unit!2618)

(assert (=> b!88134 (= e!57425 lt!41925)))

(assert (=> b!88134 (= lt!41925 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 (+!118 lt!41686 (tuple2!2241 lt!41688 lt!41683))) lt!41684))))

(assert (=> b!88134 (isDefined!94 (getValueByKey!140 (toList!761 (+!118 lt!41686 (tuple2!2241 lt!41688 lt!41683))) lt!41684))))

(declare-fun b!88135 () Bool)

(declare-fun Unit!2627 () Unit!2618)

(assert (=> b!88135 (= e!57425 Unit!2627)))

(declare-fun b!88136 () Bool)

(assert (=> b!88136 (= e!57424 (isDefined!94 (getValueByKey!140 (toList!761 (+!118 lt!41686 (tuple2!2241 lt!41688 lt!41683))) lt!41684)))))

(assert (= (and d!23375 c!14566) b!88134))

(assert (= (and d!23375 (not c!14566)) b!88135))

(assert (= (and d!23375 (not res!45137)) b!88136))

(declare-fun m!93793 () Bool)

(assert (=> d!23375 m!93793))

(declare-fun m!93795 () Bool)

(assert (=> b!88134 m!93795))

(declare-fun m!93797 () Bool)

(assert (=> b!88134 m!93797))

(assert (=> b!88134 m!93797))

(declare-fun m!93799 () Bool)

(assert (=> b!88134 m!93799))

(assert (=> b!88136 m!93797))

(assert (=> b!88136 m!93797))

(assert (=> b!88136 m!93799))

(assert (=> b!87807 d!23375))

(declare-fun d!23377 () Bool)

(assert (=> d!23377 (not (contains!766 (+!118 lt!41686 (tuple2!2241 lt!41688 lt!41683)) lt!41684))))

(declare-fun lt!41928 () Unit!2618)

(declare-fun choose!523 (ListLongMap!1491 (_ BitVec 64) V!3035 (_ BitVec 64)) Unit!2618)

(assert (=> d!23377 (= lt!41928 (choose!523 lt!41686 lt!41688 lt!41683 lt!41684))))

(declare-fun e!57428 () Bool)

(assert (=> d!23377 e!57428))

(declare-fun res!45140 () Bool)

(assert (=> d!23377 (=> (not res!45140) (not e!57428))))

(assert (=> d!23377 (= res!45140 (not (contains!766 lt!41686 lt!41684)))))

(assert (=> d!23377 (= (addStillNotContains!34 lt!41686 lt!41688 lt!41683 lt!41684) lt!41928)))

(declare-fun b!88140 () Bool)

(assert (=> b!88140 (= e!57428 (not (= lt!41688 lt!41684)))))

(assert (= (and d!23377 res!45140) b!88140))

(assert (=> d!23377 m!93423))

(assert (=> d!23377 m!93423))

(assert (=> d!23377 m!93425))

(declare-fun m!93801 () Bool)

(assert (=> d!23377 m!93801))

(declare-fun m!93803 () Bool)

(assert (=> d!23377 m!93803))

(assert (=> b!87807 d!23377))

(declare-fun d!23379 () Bool)

(declare-fun e!57429 () Bool)

(assert (=> d!23379 e!57429))

(declare-fun res!45141 () Bool)

(assert (=> d!23379 (=> res!45141 e!57429)))

(declare-fun lt!41929 () Bool)

(assert (=> d!23379 (= res!45141 (not lt!41929))))

(declare-fun lt!41931 () Bool)

(assert (=> d!23379 (= lt!41929 lt!41931)))

(declare-fun lt!41930 () Unit!2618)

(declare-fun e!57430 () Unit!2618)

(assert (=> d!23379 (= lt!41930 e!57430)))

(declare-fun c!14567 () Bool)

(assert (=> d!23379 (= c!14567 lt!41931)))

(assert (=> d!23379 (= lt!41931 (containsKey!144 (toList!761 lt!41682) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!23379 (= (contains!766 lt!41682 #b0000000000000000000000000000000000000000000000000000000000000000) lt!41929)))

(declare-fun b!88141 () Bool)

(declare-fun lt!41932 () Unit!2618)

(assert (=> b!88141 (= e!57430 lt!41932)))

(assert (=> b!88141 (= lt!41932 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 lt!41682) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!88141 (isDefined!94 (getValueByKey!140 (toList!761 lt!41682) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!88142 () Bool)

(declare-fun Unit!2628 () Unit!2618)

(assert (=> b!88142 (= e!57430 Unit!2628)))

(declare-fun b!88143 () Bool)

(assert (=> b!88143 (= e!57429 (isDefined!94 (getValueByKey!140 (toList!761 lt!41682) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!23379 c!14567) b!88141))

(assert (= (and d!23379 (not c!14567)) b!88142))

(assert (= (and d!23379 (not res!45141)) b!88143))

(declare-fun m!93805 () Bool)

(assert (=> d!23379 m!93805))

(declare-fun m!93807 () Bool)

(assert (=> b!88141 m!93807))

(declare-fun m!93809 () Bool)

(assert (=> b!88141 m!93809))

(assert (=> b!88141 m!93809))

(declare-fun m!93811 () Bool)

(assert (=> b!88141 m!93811))

(assert (=> b!88143 m!93809))

(assert (=> b!88143 m!93809))

(assert (=> b!88143 m!93811))

(assert (=> d!23303 d!23379))

(assert (=> d!23303 d!23321))

(declare-fun d!23381 () Bool)

(declare-fun e!57431 () Bool)

(assert (=> d!23381 e!57431))

(declare-fun res!45142 () Bool)

(assert (=> d!23381 (=> res!45142 e!57431)))

(declare-fun lt!41933 () Bool)

(assert (=> d!23381 (= res!45142 (not lt!41933))))

(declare-fun lt!41935 () Bool)

(assert (=> d!23381 (= lt!41933 lt!41935)))

(declare-fun lt!41934 () Unit!2618)

(declare-fun e!57432 () Unit!2618)

(assert (=> d!23381 (= lt!41934 e!57432)))

(declare-fun c!14568 () Bool)

(assert (=> d!23381 (= c!14568 lt!41935)))

(assert (=> d!23381 (= lt!41935 (containsKey!144 (toList!761 lt!41874) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!23381 (= (contains!766 lt!41874 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!41933)))

(declare-fun b!88144 () Bool)

(declare-fun lt!41936 () Unit!2618)

(assert (=> b!88144 (= e!57432 lt!41936)))

(assert (=> b!88144 (= lt!41936 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 lt!41874) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!88144 (isDefined!94 (getValueByKey!140 (toList!761 lt!41874) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!88145 () Bool)

(declare-fun Unit!2629 () Unit!2618)

(assert (=> b!88145 (= e!57432 Unit!2629)))

(declare-fun b!88146 () Bool)

(assert (=> b!88146 (= e!57431 (isDefined!94 (getValueByKey!140 (toList!761 lt!41874) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!23381 c!14568) b!88144))

(assert (= (and d!23381 (not c!14568)) b!88145))

(assert (= (and d!23381 (not res!45142)) b!88146))

(assert (=> d!23381 m!93393))

(declare-fun m!93813 () Bool)

(assert (=> d!23381 m!93813))

(assert (=> b!88144 m!93393))

(declare-fun m!93815 () Bool)

(assert (=> b!88144 m!93815))

(assert (=> b!88144 m!93393))

(declare-fun m!93817 () Bool)

(assert (=> b!88144 m!93817))

(assert (=> b!88144 m!93817))

(declare-fun m!93819 () Bool)

(assert (=> b!88144 m!93819))

(assert (=> b!88146 m!93393))

(assert (=> b!88146 m!93817))

(assert (=> b!88146 m!93817))

(assert (=> b!88146 m!93819))

(assert (=> b!88022 d!23381))

(declare-fun d!23383 () Bool)

(assert (=> d!23383 (= (+!118 (getCurrentListMap!444 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 lt!41579)) (getCurrentListMap!444 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) lt!41804 (zeroValue!2249 newMap!16) lt!41579 #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!41939 () Unit!2618)

(declare-fun choose!524 (array!4042 array!4044 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3035 V!3035 V!3035 Int) Unit!2618)

(assert (=> d!23383 (= lt!41939 (choose!524 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) lt!41804 (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) lt!41579 (defaultEntry!2359 newMap!16)))))

(assert (=> d!23383 (validMask!0 (mask!6397 newMap!16))))

(assert (=> d!23383 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!32 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) lt!41804 (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) lt!41579 (defaultEntry!2359 newMap!16)) lt!41939)))

(declare-fun bs!3705 () Bool)

(assert (= bs!3705 d!23383))

(assert (=> bs!3705 m!93611))

(assert (=> bs!3705 m!93611))

(declare-fun m!93821 () Bool)

(assert (=> bs!3705 m!93821))

(declare-fun m!93823 () Bool)

(assert (=> bs!3705 m!93823))

(declare-fun m!93825 () Bool)

(assert (=> bs!3705 m!93825))

(declare-fun m!93827 () Bool)

(assert (=> bs!3705 m!93827))

(assert (=> b!87955 d!23383))

(declare-fun d!23385 () Bool)

(declare-fun res!45143 () Bool)

(declare-fun e!57433 () Bool)

(assert (=> d!23385 (=> res!45143 e!57433)))

(assert (=> d!23385 (= res!45143 (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(assert (=> d!23385 (= (arrayContainsKey!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) e!57433)))

(declare-fun b!88147 () Bool)

(declare-fun e!57434 () Bool)

(assert (=> b!88147 (= e!57433 e!57434)))

(declare-fun res!45144 () Bool)

(assert (=> b!88147 (=> (not res!45144) (not e!57434))))

(assert (=> b!88147 (= res!45144 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(declare-fun b!88148 () Bool)

(assert (=> b!88148 (= e!57434 (arrayContainsKey!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!23385 (not res!45143)) b!88147))

(assert (= (and b!88147 res!45144) b!88148))

(assert (=> d!23385 m!93703))

(assert (=> b!88148 m!93277))

(declare-fun m!93829 () Bool)

(assert (=> b!88148 m!93829))

(assert (=> b!87755 d!23385))

(declare-fun d!23387 () Bool)

(declare-fun e!57435 () Bool)

(assert (=> d!23387 e!57435))

(declare-fun res!45146 () Bool)

(assert (=> d!23387 (=> (not res!45146) (not e!57435))))

(declare-fun lt!41940 () ListLongMap!1491)

(assert (=> d!23387 (= res!45146 (contains!766 lt!41940 (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(declare-fun lt!41941 () List!1556)

(assert (=> d!23387 (= lt!41940 (ListLongMap!1492 lt!41941))))

(declare-fun lt!41942 () Unit!2618)

(declare-fun lt!41943 () Unit!2618)

(assert (=> d!23387 (= lt!41942 lt!41943)))

(assert (=> d!23387 (= (getValueByKey!140 lt!41941 (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))) (Some!145 (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(assert (=> d!23387 (= lt!41943 (lemmaContainsTupThenGetReturnValue!59 lt!41941 (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(assert (=> d!23387 (= lt!41941 (insertStrictlySorted!61 (toList!761 call!8408) (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(assert (=> d!23387 (= (+!118 call!8408 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) lt!41940)))

(declare-fun b!88149 () Bool)

(declare-fun res!45145 () Bool)

(assert (=> b!88149 (=> (not res!45145) (not e!57435))))

(assert (=> b!88149 (= res!45145 (= (getValueByKey!140 (toList!761 lt!41940) (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))) (Some!145 (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))))))

(declare-fun b!88150 () Bool)

(assert (=> b!88150 (= e!57435 (contains!768 (toList!761 lt!41940) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))))

(assert (= (and d!23387 res!45146) b!88149))

(assert (= (and b!88149 res!45145) b!88150))

(declare-fun m!93831 () Bool)

(assert (=> d!23387 m!93831))

(declare-fun m!93833 () Bool)

(assert (=> d!23387 m!93833))

(declare-fun m!93835 () Bool)

(assert (=> d!23387 m!93835))

(declare-fun m!93837 () Bool)

(assert (=> d!23387 m!93837))

(declare-fun m!93839 () Bool)

(assert (=> b!88149 m!93839))

(declare-fun m!93841 () Bool)

(assert (=> b!88150 m!93841))

(assert (=> b!87953 d!23387))

(declare-fun d!23389 () Bool)

(declare-fun lt!41944 () Bool)

(assert (=> d!23389 (= lt!41944 (select (content!90 (toList!761 lt!41689)) lt!41591))))

(declare-fun e!57436 () Bool)

(assert (=> d!23389 (= lt!41944 e!57436)))

(declare-fun res!45147 () Bool)

(assert (=> d!23389 (=> (not res!45147) (not e!57436))))

(assert (=> d!23389 (= res!45147 ((_ is Cons!1552) (toList!761 lt!41689)))))

(assert (=> d!23389 (= (contains!768 (toList!761 lt!41689) lt!41591) lt!41944)))

(declare-fun b!88151 () Bool)

(declare-fun e!57437 () Bool)

(assert (=> b!88151 (= e!57436 e!57437)))

(declare-fun res!45148 () Bool)

(assert (=> b!88151 (=> res!45148 e!57437)))

(assert (=> b!88151 (= res!45148 (= (h!2144 (toList!761 lt!41689)) lt!41591))))

(declare-fun b!88152 () Bool)

(assert (=> b!88152 (= e!57437 (contains!768 (t!5302 (toList!761 lt!41689)) lt!41591))))

(assert (= (and d!23389 res!45147) b!88151))

(assert (= (and b!88151 (not res!45148)) b!88152))

(declare-fun m!93843 () Bool)

(assert (=> d!23389 m!93843))

(declare-fun m!93845 () Bool)

(assert (=> d!23389 m!93845))

(declare-fun m!93847 () Bool)

(assert (=> b!88152 m!93847))

(assert (=> b!87820 d!23389))

(declare-fun d!23391 () Bool)

(declare-fun res!45149 () Bool)

(declare-fun e!57438 () Bool)

(assert (=> d!23391 (=> (not res!45149) (not e!57438))))

(assert (=> d!23391 (= res!45149 (simpleValid!58 (v!2663 (underlying!295 thiss!992))))))

(assert (=> d!23391 (= (valid!330 (v!2663 (underlying!295 thiss!992))) e!57438)))

(declare-fun b!88153 () Bool)

(declare-fun res!45150 () Bool)

(assert (=> b!88153 (=> (not res!45150) (not e!57438))))

(assert (=> b!88153 (= res!45150 (= (arrayCountValidKeys!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000000 (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))) (_size!430 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun b!88154 () Bool)

(declare-fun res!45151 () Bool)

(assert (=> b!88154 (=> (not res!45151) (not e!57438))))

(assert (=> b!88154 (= res!45151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun b!88155 () Bool)

(assert (=> b!88155 (= e!57438 (arrayNoDuplicates!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) #b00000000000000000000000000000000 Nil!1554))))

(assert (= (and d!23391 res!45149) b!88153))

(assert (= (and b!88153 res!45150) b!88154))

(assert (= (and b!88154 res!45151) b!88155))

(declare-fun m!93849 () Bool)

(assert (=> d!23391 m!93849))

(declare-fun m!93851 () Bool)

(assert (=> b!88153 m!93851))

(assert (=> b!88154 m!93311))

(declare-fun m!93853 () Bool)

(assert (=> b!88155 m!93853))

(assert (=> d!23337 d!23391))

(declare-fun d!23393 () Bool)

(declare-fun e!57441 () Bool)

(assert (=> d!23393 e!57441))

(declare-fun res!45156 () Bool)

(assert (=> d!23393 (=> (not res!45156) (not e!57441))))

(declare-fun lt!41949 () SeekEntryResult!254)

(assert (=> d!23393 (= res!45156 ((_ is Found!254) lt!41949))))

(assert (=> d!23393 (= lt!41949 (seekEntryOrOpen!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (_keys!4035 newMap!16) (mask!6397 newMap!16)))))

(declare-fun lt!41950 () Unit!2618)

(declare-fun choose!525 (array!4042 array!4044 (_ BitVec 32) (_ BitVec 32) V!3035 V!3035 (_ BitVec 64) Int) Unit!2618)

(assert (=> d!23393 (= lt!41950 (choose!525 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (defaultEntry!2359 newMap!16)))))

(assert (=> d!23393 (validMask!0 (mask!6397 newMap!16))))

(assert (=> d!23393 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!32 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (defaultEntry!2359 newMap!16)) lt!41950)))

(declare-fun b!88160 () Bool)

(declare-fun res!45157 () Bool)

(assert (=> b!88160 (=> (not res!45157) (not e!57441))))

(assert (=> b!88160 (= res!45157 (inRange!0 (index!3155 lt!41949) (mask!6397 newMap!16)))))

(declare-fun b!88161 () Bool)

(assert (=> b!88161 (= e!57441 (= (select (arr!1924 (_keys!4035 newMap!16)) (index!3155 lt!41949)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(assert (=> b!88161 (and (bvsge (index!3155 lt!41949) #b00000000000000000000000000000000) (bvslt (index!3155 lt!41949) (size!2169 (_keys!4035 newMap!16))))))

(assert (= (and d!23393 res!45156) b!88160))

(assert (= (and b!88160 res!45157) b!88161))

(assert (=> d!23393 m!93277))

(assert (=> d!23393 m!93569))

(assert (=> d!23393 m!93277))

(declare-fun m!93855 () Bool)

(assert (=> d!23393 m!93855))

(assert (=> d!23393 m!93827))

(declare-fun m!93857 () Bool)

(assert (=> b!88160 m!93857))

(declare-fun m!93859 () Bool)

(assert (=> b!88161 m!93859))

(assert (=> bm!8426 d!23393))

(declare-fun d!23395 () Bool)

(declare-fun e!57442 () Bool)

(assert (=> d!23395 e!57442))

(declare-fun res!45158 () Bool)

(assert (=> d!23395 (=> res!45158 e!57442)))

(declare-fun lt!41951 () Bool)

(assert (=> d!23395 (= res!45158 (not lt!41951))))

(declare-fun lt!41953 () Bool)

(assert (=> d!23395 (= lt!41951 lt!41953)))

(declare-fun lt!41952 () Unit!2618)

(declare-fun e!57443 () Unit!2618)

(assert (=> d!23395 (= lt!41952 e!57443)))

(declare-fun c!14569 () Bool)

(assert (=> d!23395 (= c!14569 lt!41953)))

(assert (=> d!23395 (= lt!41953 (containsKey!144 (toList!761 lt!41700) (_1!1130 lt!41584)))))

(assert (=> d!23395 (= (contains!766 lt!41700 (_1!1130 lt!41584)) lt!41951)))

(declare-fun b!88162 () Bool)

(declare-fun lt!41954 () Unit!2618)

(assert (=> b!88162 (= e!57443 lt!41954)))

(assert (=> b!88162 (= lt!41954 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 lt!41700) (_1!1130 lt!41584)))))

(assert (=> b!88162 (isDefined!94 (getValueByKey!140 (toList!761 lt!41700) (_1!1130 lt!41584)))))

(declare-fun b!88163 () Bool)

(declare-fun Unit!2630 () Unit!2618)

(assert (=> b!88163 (= e!57443 Unit!2630)))

(declare-fun b!88164 () Bool)

(assert (=> b!88164 (= e!57442 (isDefined!94 (getValueByKey!140 (toList!761 lt!41700) (_1!1130 lt!41584))))))

(assert (= (and d!23395 c!14569) b!88162))

(assert (= (and d!23395 (not c!14569)) b!88163))

(assert (= (and d!23395 (not res!45158)) b!88164))

(declare-fun m!93861 () Bool)

(assert (=> d!23395 m!93861))

(declare-fun m!93863 () Bool)

(assert (=> b!88162 m!93863))

(assert (=> b!88162 m!93485))

(assert (=> b!88162 m!93485))

(declare-fun m!93865 () Bool)

(assert (=> b!88162 m!93865))

(assert (=> b!88164 m!93485))

(assert (=> b!88164 m!93485))

(assert (=> b!88164 m!93865))

(assert (=> d!23311 d!23395))

(declare-fun b!88168 () Bool)

(declare-fun e!57445 () Option!146)

(assert (=> b!88168 (= e!57445 None!144)))

(declare-fun b!88166 () Bool)

(declare-fun e!57444 () Option!146)

(assert (=> b!88166 (= e!57444 e!57445)))

(declare-fun c!14571 () Bool)

(assert (=> b!88166 (= c!14571 (and ((_ is Cons!1552) lt!41701) (not (= (_1!1130 (h!2144 lt!41701)) (_1!1130 lt!41584)))))))

(declare-fun d!23397 () Bool)

(declare-fun c!14570 () Bool)

(assert (=> d!23397 (= c!14570 (and ((_ is Cons!1552) lt!41701) (= (_1!1130 (h!2144 lt!41701)) (_1!1130 lt!41584))))))

(assert (=> d!23397 (= (getValueByKey!140 lt!41701 (_1!1130 lt!41584)) e!57444)))

(declare-fun b!88167 () Bool)

(assert (=> b!88167 (= e!57445 (getValueByKey!140 (t!5302 lt!41701) (_1!1130 lt!41584)))))

(declare-fun b!88165 () Bool)

(assert (=> b!88165 (= e!57444 (Some!145 (_2!1130 (h!2144 lt!41701))))))

(assert (= (and d!23397 c!14570) b!88165))

(assert (= (and d!23397 (not c!14570)) b!88166))

(assert (= (and b!88166 c!14571) b!88167))

(assert (= (and b!88166 (not c!14571)) b!88168))

(declare-fun m!93867 () Bool)

(assert (=> b!88167 m!93867))

(assert (=> d!23311 d!23397))

(declare-fun d!23399 () Bool)

(assert (=> d!23399 (= (getValueByKey!140 lt!41701 (_1!1130 lt!41584)) (Some!145 (_2!1130 lt!41584)))))

(declare-fun lt!41957 () Unit!2618)

(declare-fun choose!526 (List!1556 (_ BitVec 64) V!3035) Unit!2618)

(assert (=> d!23399 (= lt!41957 (choose!526 lt!41701 (_1!1130 lt!41584) (_2!1130 lt!41584)))))

(declare-fun e!57448 () Bool)

(assert (=> d!23399 e!57448))

(declare-fun res!45163 () Bool)

(assert (=> d!23399 (=> (not res!45163) (not e!57448))))

(declare-fun isStrictlySorted!294 (List!1556) Bool)

(assert (=> d!23399 (= res!45163 (isStrictlySorted!294 lt!41701))))

(assert (=> d!23399 (= (lemmaContainsTupThenGetReturnValue!59 lt!41701 (_1!1130 lt!41584) (_2!1130 lt!41584)) lt!41957)))

(declare-fun b!88173 () Bool)

(declare-fun res!45164 () Bool)

(assert (=> b!88173 (=> (not res!45164) (not e!57448))))

(assert (=> b!88173 (= res!45164 (containsKey!144 lt!41701 (_1!1130 lt!41584)))))

(declare-fun b!88174 () Bool)

(assert (=> b!88174 (= e!57448 (contains!768 lt!41701 (tuple2!2241 (_1!1130 lt!41584) (_2!1130 lt!41584))))))

(assert (= (and d!23399 res!45163) b!88173))

(assert (= (and b!88173 res!45164) b!88174))

(assert (=> d!23399 m!93479))

(declare-fun m!93869 () Bool)

(assert (=> d!23399 m!93869))

(declare-fun m!93871 () Bool)

(assert (=> d!23399 m!93871))

(declare-fun m!93873 () Bool)

(assert (=> b!88173 m!93873))

(declare-fun m!93875 () Bool)

(assert (=> b!88174 m!93875))

(assert (=> d!23311 d!23399))

(declare-fun b!88195 () Bool)

(declare-fun e!57463 () List!1556)

(declare-fun call!8464 () List!1556)

(assert (=> b!88195 (= e!57463 call!8464)))

(declare-fun c!14582 () Bool)

(declare-fun e!57460 () List!1556)

(declare-fun b!88196 () Bool)

(declare-fun c!14583 () Bool)

(assert (=> b!88196 (= e!57460 (ite c!14583 (t!5302 (toList!761 lt!41589)) (ite c!14582 (Cons!1552 (h!2144 (toList!761 lt!41589)) (t!5302 (toList!761 lt!41589))) Nil!1553)))))

(declare-fun b!88197 () Bool)

(declare-fun e!57459 () List!1556)

(declare-fun call!8463 () List!1556)

(assert (=> b!88197 (= e!57459 call!8463)))

(declare-fun bm!8460 () Bool)

(assert (=> bm!8460 (= call!8464 call!8463)))

(declare-fun b!88198 () Bool)

(declare-fun e!57462 () Bool)

(declare-fun lt!41960 () List!1556)

(assert (=> b!88198 (= e!57462 (contains!768 lt!41960 (tuple2!2241 (_1!1130 lt!41584) (_2!1130 lt!41584))))))

(declare-fun bm!8461 () Bool)

(declare-fun call!8465 () List!1556)

(assert (=> bm!8461 (= call!8463 call!8465)))

(declare-fun d!23401 () Bool)

(assert (=> d!23401 e!57462))

(declare-fun res!45169 () Bool)

(assert (=> d!23401 (=> (not res!45169) (not e!57462))))

(assert (=> d!23401 (= res!45169 (isStrictlySorted!294 lt!41960))))

(declare-fun e!57461 () List!1556)

(assert (=> d!23401 (= lt!41960 e!57461)))

(declare-fun c!14580 () Bool)

(assert (=> d!23401 (= c!14580 (and ((_ is Cons!1552) (toList!761 lt!41589)) (bvslt (_1!1130 (h!2144 (toList!761 lt!41589))) (_1!1130 lt!41584))))))

(assert (=> d!23401 (isStrictlySorted!294 (toList!761 lt!41589))))

(assert (=> d!23401 (= (insertStrictlySorted!61 (toList!761 lt!41589) (_1!1130 lt!41584) (_2!1130 lt!41584)) lt!41960)))

(declare-fun b!88199 () Bool)

(assert (=> b!88199 (= e!57463 call!8464)))

(declare-fun b!88200 () Bool)

(assert (=> b!88200 (= c!14582 (and ((_ is Cons!1552) (toList!761 lt!41589)) (bvsgt (_1!1130 (h!2144 (toList!761 lt!41589))) (_1!1130 lt!41584))))))

(assert (=> b!88200 (= e!57459 e!57463)))

(declare-fun bm!8462 () Bool)

(declare-fun $colon$colon!72 (List!1556 tuple2!2240) List!1556)

(assert (=> bm!8462 (= call!8465 ($colon$colon!72 e!57460 (ite c!14580 (h!2144 (toList!761 lt!41589)) (tuple2!2241 (_1!1130 lt!41584) (_2!1130 lt!41584)))))))

(declare-fun c!14581 () Bool)

(assert (=> bm!8462 (= c!14581 c!14580)))

(declare-fun b!88201 () Bool)

(assert (=> b!88201 (= e!57461 e!57459)))

(assert (=> b!88201 (= c!14583 (and ((_ is Cons!1552) (toList!761 lt!41589)) (= (_1!1130 (h!2144 (toList!761 lt!41589))) (_1!1130 lt!41584))))))

(declare-fun b!88202 () Bool)

(assert (=> b!88202 (= e!57460 (insertStrictlySorted!61 (t!5302 (toList!761 lt!41589)) (_1!1130 lt!41584) (_2!1130 lt!41584)))))

(declare-fun b!88203 () Bool)

(assert (=> b!88203 (= e!57461 call!8465)))

(declare-fun b!88204 () Bool)

(declare-fun res!45170 () Bool)

(assert (=> b!88204 (=> (not res!45170) (not e!57462))))

(assert (=> b!88204 (= res!45170 (containsKey!144 lt!41960 (_1!1130 lt!41584)))))

(assert (= (and d!23401 c!14580) b!88203))

(assert (= (and d!23401 (not c!14580)) b!88201))

(assert (= (and b!88201 c!14583) b!88197))

(assert (= (and b!88201 (not c!14583)) b!88200))

(assert (= (and b!88200 c!14582) b!88195))

(assert (= (and b!88200 (not c!14582)) b!88199))

(assert (= (or b!88195 b!88199) bm!8460))

(assert (= (or b!88197 bm!8460) bm!8461))

(assert (= (or b!88203 bm!8461) bm!8462))

(assert (= (and bm!8462 c!14581) b!88202))

(assert (= (and bm!8462 (not c!14581)) b!88196))

(assert (= (and d!23401 res!45169) b!88204))

(assert (= (and b!88204 res!45170) b!88198))

(declare-fun m!93877 () Bool)

(assert (=> bm!8462 m!93877))

(declare-fun m!93879 () Bool)

(assert (=> b!88198 m!93879))

(declare-fun m!93881 () Bool)

(assert (=> b!88204 m!93881))

(declare-fun m!93883 () Bool)

(assert (=> d!23401 m!93883))

(declare-fun m!93885 () Bool)

(assert (=> d!23401 m!93885))

(declare-fun m!93887 () Bool)

(assert (=> b!88202 m!93887))

(assert (=> d!23311 d!23401))

(declare-fun d!23403 () Bool)

(declare-fun lt!41963 () Bool)

(declare-fun content!91 (List!1557) (InoxSet (_ BitVec 64)))

(assert (=> d!23403 (= lt!41963 (select (content!91 Nil!1554) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun e!57469 () Bool)

(assert (=> d!23403 (= lt!41963 e!57469)))

(declare-fun res!45176 () Bool)

(assert (=> d!23403 (=> (not res!45176) (not e!57469))))

(assert (=> d!23403 (= res!45176 ((_ is Cons!1553) Nil!1554))))

(assert (=> d!23403 (= (contains!767 Nil!1554 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)) lt!41963)))

(declare-fun b!88209 () Bool)

(declare-fun e!57468 () Bool)

(assert (=> b!88209 (= e!57469 e!57468)))

(declare-fun res!45175 () Bool)

(assert (=> b!88209 (=> res!45175 e!57468)))

(assert (=> b!88209 (= res!45175 (= (h!2145 Nil!1554) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun b!88210 () Bool)

(assert (=> b!88210 (= e!57468 (contains!767 (t!5303 Nil!1554) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(assert (= (and d!23403 res!45176) b!88209))

(assert (= (and b!88209 (not res!45175)) b!88210))

(declare-fun m!93889 () Bool)

(assert (=> d!23403 m!93889))

(assert (=> d!23403 m!93277))

(declare-fun m!93891 () Bool)

(assert (=> d!23403 m!93891))

(assert (=> b!88210 m!93277))

(declare-fun m!93893 () Bool)

(assert (=> b!88210 m!93893))

(assert (=> b!87774 d!23403))

(declare-fun d!23405 () Bool)

(declare-fun e!57470 () Bool)

(assert (=> d!23405 e!57470))

(declare-fun res!45177 () Bool)

(assert (=> d!23405 (=> res!45177 e!57470)))

(declare-fun lt!41964 () Bool)

(assert (=> d!23405 (= res!45177 (not lt!41964))))

(declare-fun lt!41966 () Bool)

(assert (=> d!23405 (= lt!41964 lt!41966)))

(declare-fun lt!41965 () Unit!2618)

(declare-fun e!57471 () Unit!2618)

(assert (=> d!23405 (= lt!41965 e!57471)))

(declare-fun c!14584 () Bool)

(assert (=> d!23405 (= c!14584 lt!41966)))

(assert (=> d!23405 (= lt!41966 (containsKey!144 (toList!761 lt!41704) (_1!1130 lt!41592)))))

(assert (=> d!23405 (= (contains!766 lt!41704 (_1!1130 lt!41592)) lt!41964)))

(declare-fun b!88211 () Bool)

(declare-fun lt!41967 () Unit!2618)

(assert (=> b!88211 (= e!57471 lt!41967)))

(assert (=> b!88211 (= lt!41967 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 lt!41704) (_1!1130 lt!41592)))))

(assert (=> b!88211 (isDefined!94 (getValueByKey!140 (toList!761 lt!41704) (_1!1130 lt!41592)))))

(declare-fun b!88212 () Bool)

(declare-fun Unit!2631 () Unit!2618)

(assert (=> b!88212 (= e!57471 Unit!2631)))

(declare-fun b!88213 () Bool)

(assert (=> b!88213 (= e!57470 (isDefined!94 (getValueByKey!140 (toList!761 lt!41704) (_1!1130 lt!41592))))))

(assert (= (and d!23405 c!14584) b!88211))

(assert (= (and d!23405 (not c!14584)) b!88212))

(assert (= (and d!23405 (not res!45177)) b!88213))

(declare-fun m!93895 () Bool)

(assert (=> d!23405 m!93895))

(declare-fun m!93897 () Bool)

(assert (=> b!88211 m!93897))

(assert (=> b!88211 m!93497))

(assert (=> b!88211 m!93497))

(declare-fun m!93899 () Bool)

(assert (=> b!88211 m!93899))

(assert (=> b!88213 m!93497))

(assert (=> b!88213 m!93497))

(assert (=> b!88213 m!93899))

(assert (=> d!23313 d!23405))

(declare-fun b!88217 () Bool)

(declare-fun e!57473 () Option!146)

(assert (=> b!88217 (= e!57473 None!144)))

(declare-fun b!88215 () Bool)

(declare-fun e!57472 () Option!146)

(assert (=> b!88215 (= e!57472 e!57473)))

(declare-fun c!14586 () Bool)

(assert (=> b!88215 (= c!14586 (and ((_ is Cons!1552) lt!41705) (not (= (_1!1130 (h!2144 lt!41705)) (_1!1130 lt!41592)))))))

(declare-fun d!23407 () Bool)

(declare-fun c!14585 () Bool)

(assert (=> d!23407 (= c!14585 (and ((_ is Cons!1552) lt!41705) (= (_1!1130 (h!2144 lt!41705)) (_1!1130 lt!41592))))))

(assert (=> d!23407 (= (getValueByKey!140 lt!41705 (_1!1130 lt!41592)) e!57472)))

(declare-fun b!88216 () Bool)

(assert (=> b!88216 (= e!57473 (getValueByKey!140 (t!5302 lt!41705) (_1!1130 lt!41592)))))

(declare-fun b!88214 () Bool)

(assert (=> b!88214 (= e!57472 (Some!145 (_2!1130 (h!2144 lt!41705))))))

(assert (= (and d!23407 c!14585) b!88214))

(assert (= (and d!23407 (not c!14585)) b!88215))

(assert (= (and b!88215 c!14586) b!88216))

(assert (= (and b!88215 (not c!14586)) b!88217))

(declare-fun m!93901 () Bool)

(assert (=> b!88216 m!93901))

(assert (=> d!23313 d!23407))

(declare-fun d!23409 () Bool)

(assert (=> d!23409 (= (getValueByKey!140 lt!41705 (_1!1130 lt!41592)) (Some!145 (_2!1130 lt!41592)))))

(declare-fun lt!41968 () Unit!2618)

(assert (=> d!23409 (= lt!41968 (choose!526 lt!41705 (_1!1130 lt!41592) (_2!1130 lt!41592)))))

(declare-fun e!57474 () Bool)

(assert (=> d!23409 e!57474))

(declare-fun res!45178 () Bool)

(assert (=> d!23409 (=> (not res!45178) (not e!57474))))

(assert (=> d!23409 (= res!45178 (isStrictlySorted!294 lt!41705))))

(assert (=> d!23409 (= (lemmaContainsTupThenGetReturnValue!59 lt!41705 (_1!1130 lt!41592) (_2!1130 lt!41592)) lt!41968)))

(declare-fun b!88218 () Bool)

(declare-fun res!45179 () Bool)

(assert (=> b!88218 (=> (not res!45179) (not e!57474))))

(assert (=> b!88218 (= res!45179 (containsKey!144 lt!41705 (_1!1130 lt!41592)))))

(declare-fun b!88219 () Bool)

(assert (=> b!88219 (= e!57474 (contains!768 lt!41705 (tuple2!2241 (_1!1130 lt!41592) (_2!1130 lt!41592))))))

(assert (= (and d!23409 res!45178) b!88218))

(assert (= (and b!88218 res!45179) b!88219))

(assert (=> d!23409 m!93491))

(declare-fun m!93903 () Bool)

(assert (=> d!23409 m!93903))

(declare-fun m!93905 () Bool)

(assert (=> d!23409 m!93905))

(declare-fun m!93907 () Bool)

(assert (=> b!88218 m!93907))

(declare-fun m!93909 () Bool)

(assert (=> b!88219 m!93909))

(assert (=> d!23313 d!23409))

(declare-fun b!88220 () Bool)

(declare-fun e!57479 () List!1556)

(declare-fun call!8467 () List!1556)

(assert (=> b!88220 (= e!57479 call!8467)))

(declare-fun b!88221 () Bool)

(declare-fun e!57476 () List!1556)

(declare-fun c!14590 () Bool)

(declare-fun c!14589 () Bool)

(assert (=> b!88221 (= e!57476 (ite c!14590 (t!5302 (toList!761 lt!41587)) (ite c!14589 (Cons!1552 (h!2144 (toList!761 lt!41587)) (t!5302 (toList!761 lt!41587))) Nil!1553)))))

(declare-fun b!88222 () Bool)

(declare-fun e!57475 () List!1556)

(declare-fun call!8466 () List!1556)

(assert (=> b!88222 (= e!57475 call!8466)))

(declare-fun bm!8463 () Bool)

(assert (=> bm!8463 (= call!8467 call!8466)))

(declare-fun b!88223 () Bool)

(declare-fun e!57478 () Bool)

(declare-fun lt!41969 () List!1556)

(assert (=> b!88223 (= e!57478 (contains!768 lt!41969 (tuple2!2241 (_1!1130 lt!41592) (_2!1130 lt!41592))))))

(declare-fun bm!8464 () Bool)

(declare-fun call!8468 () List!1556)

(assert (=> bm!8464 (= call!8466 call!8468)))

(declare-fun d!23411 () Bool)

(assert (=> d!23411 e!57478))

(declare-fun res!45180 () Bool)

(assert (=> d!23411 (=> (not res!45180) (not e!57478))))

(assert (=> d!23411 (= res!45180 (isStrictlySorted!294 lt!41969))))

(declare-fun e!57477 () List!1556)

(assert (=> d!23411 (= lt!41969 e!57477)))

(declare-fun c!14587 () Bool)

(assert (=> d!23411 (= c!14587 (and ((_ is Cons!1552) (toList!761 lt!41587)) (bvslt (_1!1130 (h!2144 (toList!761 lt!41587))) (_1!1130 lt!41592))))))

(assert (=> d!23411 (isStrictlySorted!294 (toList!761 lt!41587))))

(assert (=> d!23411 (= (insertStrictlySorted!61 (toList!761 lt!41587) (_1!1130 lt!41592) (_2!1130 lt!41592)) lt!41969)))

(declare-fun b!88224 () Bool)

(assert (=> b!88224 (= e!57479 call!8467)))

(declare-fun b!88225 () Bool)

(assert (=> b!88225 (= c!14589 (and ((_ is Cons!1552) (toList!761 lt!41587)) (bvsgt (_1!1130 (h!2144 (toList!761 lt!41587))) (_1!1130 lt!41592))))))

(assert (=> b!88225 (= e!57475 e!57479)))

(declare-fun bm!8465 () Bool)

(assert (=> bm!8465 (= call!8468 ($colon$colon!72 e!57476 (ite c!14587 (h!2144 (toList!761 lt!41587)) (tuple2!2241 (_1!1130 lt!41592) (_2!1130 lt!41592)))))))

(declare-fun c!14588 () Bool)

(assert (=> bm!8465 (= c!14588 c!14587)))

(declare-fun b!88226 () Bool)

(assert (=> b!88226 (= e!57477 e!57475)))

(assert (=> b!88226 (= c!14590 (and ((_ is Cons!1552) (toList!761 lt!41587)) (= (_1!1130 (h!2144 (toList!761 lt!41587))) (_1!1130 lt!41592))))))

(declare-fun b!88227 () Bool)

(assert (=> b!88227 (= e!57476 (insertStrictlySorted!61 (t!5302 (toList!761 lt!41587)) (_1!1130 lt!41592) (_2!1130 lt!41592)))))

(declare-fun b!88228 () Bool)

(assert (=> b!88228 (= e!57477 call!8468)))

(declare-fun b!88229 () Bool)

(declare-fun res!45181 () Bool)

(assert (=> b!88229 (=> (not res!45181) (not e!57478))))

(assert (=> b!88229 (= res!45181 (containsKey!144 lt!41969 (_1!1130 lt!41592)))))

(assert (= (and d!23411 c!14587) b!88228))

(assert (= (and d!23411 (not c!14587)) b!88226))

(assert (= (and b!88226 c!14590) b!88222))

(assert (= (and b!88226 (not c!14590)) b!88225))

(assert (= (and b!88225 c!14589) b!88220))

(assert (= (and b!88225 (not c!14589)) b!88224))

(assert (= (or b!88220 b!88224) bm!8463))

(assert (= (or b!88222 bm!8463) bm!8464))

(assert (= (or b!88228 bm!8464) bm!8465))

(assert (= (and bm!8465 c!14588) b!88227))

(assert (= (and bm!8465 (not c!14588)) b!88221))

(assert (= (and d!23411 res!45180) b!88229))

(assert (= (and b!88229 res!45181) b!88223))

(declare-fun m!93911 () Bool)

(assert (=> bm!8465 m!93911))

(declare-fun m!93913 () Bool)

(assert (=> b!88223 m!93913))

(declare-fun m!93915 () Bool)

(assert (=> b!88229 m!93915))

(declare-fun m!93917 () Bool)

(assert (=> d!23411 m!93917))

(declare-fun m!93919 () Bool)

(assert (=> d!23411 m!93919))

(declare-fun m!93921 () Bool)

(assert (=> b!88227 m!93921))

(assert (=> d!23313 d!23411))

(declare-fun d!23413 () Bool)

(declare-fun get!1222 (Option!146) V!3035)

(assert (=> d!23413 (= (apply!83 lt!41682 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1222 (getValueByKey!140 (toList!761 lt!41682) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!3706 () Bool)

(assert (= bs!3706 d!23413))

(assert (=> bs!3706 m!93393))

(declare-fun m!93923 () Bool)

(assert (=> bs!3706 m!93923))

(assert (=> bs!3706 m!93923))

(declare-fun m!93925 () Bool)

(assert (=> bs!3706 m!93925))

(assert (=> b!87818 d!23413))

(assert (=> b!87818 d!23371))

(declare-fun d!23415 () Bool)

(assert (=> d!23415 (contains!766 (+!118 lt!41872 (tuple2!2241 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!41863)))

(declare-fun lt!41972 () Unit!2618)

(declare-fun choose!527 (ListLongMap!1491 (_ BitVec 64) V!3035 (_ BitVec 64)) Unit!2618)

(assert (=> d!23415 (= lt!41972 (choose!527 lt!41872 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) lt!41863))))

(assert (=> d!23415 (contains!766 lt!41872 lt!41863)))

(assert (=> d!23415 (= (addStillContains!59 lt!41872 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) lt!41863) lt!41972)))

(declare-fun bs!3707 () Bool)

(assert (= bs!3707 d!23415))

(assert (=> bs!3707 m!93643))

(assert (=> bs!3707 m!93643))

(assert (=> bs!3707 m!93653))

(declare-fun m!93927 () Bool)

(assert (=> bs!3707 m!93927))

(declare-fun m!93929 () Bool)

(assert (=> bs!3707 m!93929))

(assert (=> b!88030 d!23415))

(declare-fun d!23417 () Bool)

(assert (=> d!23417 (= (apply!83 (+!118 lt!41877 (tuple2!2241 lt!41878 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!41865) (apply!83 lt!41877 lt!41865))))

(declare-fun lt!41975 () Unit!2618)

(declare-fun choose!528 (ListLongMap!1491 (_ BitVec 64) V!3035 (_ BitVec 64)) Unit!2618)

(assert (=> d!23417 (= lt!41975 (choose!528 lt!41877 lt!41878 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) lt!41865))))

(declare-fun e!57482 () Bool)

(assert (=> d!23417 e!57482))

(declare-fun res!45184 () Bool)

(assert (=> d!23417 (=> (not res!45184) (not e!57482))))

(assert (=> d!23417 (= res!45184 (contains!766 lt!41877 lt!41865))))

(assert (=> d!23417 (= (addApplyDifferent!59 lt!41877 lt!41878 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))) lt!41865) lt!41975)))

(declare-fun b!88234 () Bool)

(assert (=> b!88234 (= e!57482 (not (= lt!41865 lt!41878)))))

(assert (= (and d!23417 res!45184) b!88234))

(assert (=> d!23417 m!93649))

(assert (=> d!23417 m!93635))

(assert (=> d!23417 m!93635))

(assert (=> d!23417 m!93637))

(declare-fun m!93931 () Bool)

(assert (=> d!23417 m!93931))

(declare-fun m!93933 () Bool)

(assert (=> d!23417 m!93933))

(assert (=> b!88030 d!23417))

(declare-fun d!23419 () Bool)

(assert (=> d!23419 (= (apply!83 (+!118 lt!41875 (tuple2!2241 lt!41884 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!41883) (get!1222 (getValueByKey!140 (toList!761 (+!118 lt!41875 (tuple2!2241 lt!41884 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))) lt!41883)))))

(declare-fun bs!3708 () Bool)

(assert (= bs!3708 d!23419))

(declare-fun m!93935 () Bool)

(assert (=> bs!3708 m!93935))

(assert (=> bs!3708 m!93935))

(declare-fun m!93937 () Bool)

(assert (=> bs!3708 m!93937))

(assert (=> b!88030 d!23419))

(declare-fun d!23421 () Bool)

(assert (=> d!23421 (= (apply!83 (+!118 lt!41867 (tuple2!2241 lt!41879 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!41864) (apply!83 lt!41867 lt!41864))))

(declare-fun lt!41976 () Unit!2618)

(assert (=> d!23421 (= lt!41976 (choose!528 lt!41867 lt!41879 (minValue!2249 (v!2663 (underlying!295 thiss!992))) lt!41864))))

(declare-fun e!57483 () Bool)

(assert (=> d!23421 e!57483))

(declare-fun res!45185 () Bool)

(assert (=> d!23421 (=> (not res!45185) (not e!57483))))

(assert (=> d!23421 (= res!45185 (contains!766 lt!41867 lt!41864))))

(assert (=> d!23421 (= (addApplyDifferent!59 lt!41867 lt!41879 (minValue!2249 (v!2663 (underlying!295 thiss!992))) lt!41864) lt!41976)))

(declare-fun b!88235 () Bool)

(assert (=> b!88235 (= e!57483 (not (= lt!41864 lt!41879)))))

(assert (= (and d!23421 res!45185) b!88235))

(assert (=> d!23421 m!93633))

(assert (=> d!23421 m!93629))

(assert (=> d!23421 m!93629))

(assert (=> d!23421 m!93651))

(declare-fun m!93939 () Bool)

(assert (=> d!23421 m!93939))

(declare-fun m!93941 () Bool)

(assert (=> d!23421 m!93941))

(assert (=> b!88030 d!23421))

(declare-fun d!23423 () Bool)

(assert (=> d!23423 (= (apply!83 (+!118 lt!41867 (tuple2!2241 lt!41879 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!41864) (get!1222 (getValueByKey!140 (toList!761 (+!118 lt!41867 (tuple2!2241 lt!41879 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))) lt!41864)))))

(declare-fun bs!3709 () Bool)

(assert (= bs!3709 d!23423))

(declare-fun m!93943 () Bool)

(assert (=> bs!3709 m!93943))

(assert (=> bs!3709 m!93943))

(declare-fun m!93945 () Bool)

(assert (=> bs!3709 m!93945))

(assert (=> b!88030 d!23423))

(declare-fun d!23425 () Bool)

(assert (=> d!23425 (= (apply!83 lt!41875 lt!41883) (get!1222 (getValueByKey!140 (toList!761 lt!41875) lt!41883)))))

(declare-fun bs!3710 () Bool)

(assert (= bs!3710 d!23425))

(declare-fun m!93947 () Bool)

(assert (=> bs!3710 m!93947))

(assert (=> bs!3710 m!93947))

(declare-fun m!93949 () Bool)

(assert (=> bs!3710 m!93949))

(assert (=> b!88030 d!23425))

(declare-fun d!23427 () Bool)

(declare-fun e!57484 () Bool)

(assert (=> d!23427 e!57484))

(declare-fun res!45187 () Bool)

(assert (=> d!23427 (=> (not res!45187) (not e!57484))))

(declare-fun lt!41977 () ListLongMap!1491)

(assert (=> d!23427 (= res!45187 (contains!766 lt!41977 (_1!1130 (tuple2!2241 lt!41884 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(declare-fun lt!41978 () List!1556)

(assert (=> d!23427 (= lt!41977 (ListLongMap!1492 lt!41978))))

(declare-fun lt!41979 () Unit!2618)

(declare-fun lt!41980 () Unit!2618)

(assert (=> d!23427 (= lt!41979 lt!41980)))

(assert (=> d!23427 (= (getValueByKey!140 lt!41978 (_1!1130 (tuple2!2241 lt!41884 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))) (Some!145 (_2!1130 (tuple2!2241 lt!41884 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23427 (= lt!41980 (lemmaContainsTupThenGetReturnValue!59 lt!41978 (_1!1130 (tuple2!2241 lt!41884 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) (_2!1130 (tuple2!2241 lt!41884 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23427 (= lt!41978 (insertStrictlySorted!61 (toList!761 lt!41875) (_1!1130 (tuple2!2241 lt!41884 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) (_2!1130 (tuple2!2241 lt!41884 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23427 (= (+!118 lt!41875 (tuple2!2241 lt!41884 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!41977)))

(declare-fun b!88236 () Bool)

(declare-fun res!45186 () Bool)

(assert (=> b!88236 (=> (not res!45186) (not e!57484))))

(assert (=> b!88236 (= res!45186 (= (getValueByKey!140 (toList!761 lt!41977) (_1!1130 (tuple2!2241 lt!41884 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))) (Some!145 (_2!1130 (tuple2!2241 lt!41884 (minValue!2249 (v!2663 (underlying!295 thiss!992))))))))))

(declare-fun b!88237 () Bool)

(assert (=> b!88237 (= e!57484 (contains!768 (toList!761 lt!41977) (tuple2!2241 lt!41884 (minValue!2249 (v!2663 (underlying!295 thiss!992))))))))

(assert (= (and d!23427 res!45187) b!88236))

(assert (= (and b!88236 res!45186) b!88237))

(declare-fun m!93951 () Bool)

(assert (=> d!23427 m!93951))

(declare-fun m!93953 () Bool)

(assert (=> d!23427 m!93953))

(declare-fun m!93955 () Bool)

(assert (=> d!23427 m!93955))

(declare-fun m!93957 () Bool)

(assert (=> d!23427 m!93957))

(declare-fun m!93959 () Bool)

(assert (=> b!88236 m!93959))

(declare-fun m!93961 () Bool)

(assert (=> b!88237 m!93961))

(assert (=> b!88030 d!23427))

(declare-fun d!23429 () Bool)

(declare-fun e!57485 () Bool)

(assert (=> d!23429 e!57485))

(declare-fun res!45189 () Bool)

(assert (=> d!23429 (=> (not res!45189) (not e!57485))))

(declare-fun lt!41981 () ListLongMap!1491)

(assert (=> d!23429 (= res!45189 (contains!766 lt!41981 (_1!1130 (tuple2!2241 lt!41878 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(declare-fun lt!41982 () List!1556)

(assert (=> d!23429 (= lt!41981 (ListLongMap!1492 lt!41982))))

(declare-fun lt!41983 () Unit!2618)

(declare-fun lt!41984 () Unit!2618)

(assert (=> d!23429 (= lt!41983 lt!41984)))

(assert (=> d!23429 (= (getValueByKey!140 lt!41982 (_1!1130 (tuple2!2241 lt!41878 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))) (Some!145 (_2!1130 (tuple2!2241 lt!41878 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23429 (= lt!41984 (lemmaContainsTupThenGetReturnValue!59 lt!41982 (_1!1130 (tuple2!2241 lt!41878 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) (_2!1130 (tuple2!2241 lt!41878 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23429 (= lt!41982 (insertStrictlySorted!61 (toList!761 lt!41877) (_1!1130 (tuple2!2241 lt!41878 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) (_2!1130 (tuple2!2241 lt!41878 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23429 (= (+!118 lt!41877 (tuple2!2241 lt!41878 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!41981)))

(declare-fun b!88238 () Bool)

(declare-fun res!45188 () Bool)

(assert (=> b!88238 (=> (not res!45188) (not e!57485))))

(assert (=> b!88238 (= res!45188 (= (getValueByKey!140 (toList!761 lt!41981) (_1!1130 (tuple2!2241 lt!41878 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))) (Some!145 (_2!1130 (tuple2!2241 lt!41878 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))))))))

(declare-fun b!88239 () Bool)

(assert (=> b!88239 (= e!57485 (contains!768 (toList!761 lt!41981) (tuple2!2241 lt!41878 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))))))

(assert (= (and d!23429 res!45189) b!88238))

(assert (= (and b!88238 res!45188) b!88239))

(declare-fun m!93963 () Bool)

(assert (=> d!23429 m!93963))

(declare-fun m!93965 () Bool)

(assert (=> d!23429 m!93965))

(declare-fun m!93967 () Bool)

(assert (=> d!23429 m!93967))

(declare-fun m!93969 () Bool)

(assert (=> d!23429 m!93969))

(declare-fun m!93971 () Bool)

(assert (=> b!88238 m!93971))

(declare-fun m!93973 () Bool)

(assert (=> b!88239 m!93973))

(assert (=> b!88030 d!23429))

(declare-fun d!23431 () Bool)

(assert (=> d!23431 (= (apply!83 (+!118 lt!41875 (tuple2!2241 lt!41884 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!41883) (apply!83 lt!41875 lt!41883))))

(declare-fun lt!41985 () Unit!2618)

(assert (=> d!23431 (= lt!41985 (choose!528 lt!41875 lt!41884 (minValue!2249 (v!2663 (underlying!295 thiss!992))) lt!41883))))

(declare-fun e!57486 () Bool)

(assert (=> d!23431 e!57486))

(declare-fun res!45190 () Bool)

(assert (=> d!23431 (=> (not res!45190) (not e!57486))))

(assert (=> d!23431 (= res!45190 (contains!766 lt!41875 lt!41883))))

(assert (=> d!23431 (= (addApplyDifferent!59 lt!41875 lt!41884 (minValue!2249 (v!2663 (underlying!295 thiss!992))) lt!41883) lt!41985)))

(declare-fun b!88240 () Bool)

(assert (=> b!88240 (= e!57486 (not (= lt!41883 lt!41884)))))

(assert (= (and d!23431 res!45190) b!88240))

(assert (=> d!23431 m!93631))

(assert (=> d!23431 m!93641))

(assert (=> d!23431 m!93641))

(assert (=> d!23431 m!93655))

(declare-fun m!93975 () Bool)

(assert (=> d!23431 m!93975))

(declare-fun m!93977 () Bool)

(assert (=> d!23431 m!93977))

(assert (=> b!88030 d!23431))

(declare-fun d!23433 () Bool)

(assert (=> d!23433 (= (apply!83 lt!41877 lt!41865) (get!1222 (getValueByKey!140 (toList!761 lt!41877) lt!41865)))))

(declare-fun bs!3711 () Bool)

(assert (= bs!3711 d!23433))

(declare-fun m!93979 () Bool)

(assert (=> bs!3711 m!93979))

(assert (=> bs!3711 m!93979))

(declare-fun m!93981 () Bool)

(assert (=> bs!3711 m!93981))

(assert (=> b!88030 d!23433))

(declare-fun d!23435 () Bool)

(declare-fun e!57487 () Bool)

(assert (=> d!23435 e!57487))

(declare-fun res!45191 () Bool)

(assert (=> d!23435 (=> res!45191 e!57487)))

(declare-fun lt!41986 () Bool)

(assert (=> d!23435 (= res!45191 (not lt!41986))))

(declare-fun lt!41988 () Bool)

(assert (=> d!23435 (= lt!41986 lt!41988)))

(declare-fun lt!41987 () Unit!2618)

(declare-fun e!57488 () Unit!2618)

(assert (=> d!23435 (= lt!41987 e!57488)))

(declare-fun c!14591 () Bool)

(assert (=> d!23435 (= c!14591 lt!41988)))

(assert (=> d!23435 (= lt!41988 (containsKey!144 (toList!761 (+!118 lt!41872 (tuple2!2241 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))) lt!41863))))

(assert (=> d!23435 (= (contains!766 (+!118 lt!41872 (tuple2!2241 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!41863) lt!41986)))

(declare-fun b!88241 () Bool)

(declare-fun lt!41989 () Unit!2618)

(assert (=> b!88241 (= e!57488 lt!41989)))

(assert (=> b!88241 (= lt!41989 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 (+!118 lt!41872 (tuple2!2241 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))) lt!41863))))

(assert (=> b!88241 (isDefined!94 (getValueByKey!140 (toList!761 (+!118 lt!41872 (tuple2!2241 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))) lt!41863))))

(declare-fun b!88242 () Bool)

(declare-fun Unit!2632 () Unit!2618)

(assert (=> b!88242 (= e!57488 Unit!2632)))

(declare-fun b!88243 () Bool)

(assert (=> b!88243 (= e!57487 (isDefined!94 (getValueByKey!140 (toList!761 (+!118 lt!41872 (tuple2!2241 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))) lt!41863)))))

(assert (= (and d!23435 c!14591) b!88241))

(assert (= (and d!23435 (not c!14591)) b!88242))

(assert (= (and d!23435 (not res!45191)) b!88243))

(declare-fun m!93983 () Bool)

(assert (=> d!23435 m!93983))

(declare-fun m!93985 () Bool)

(assert (=> b!88241 m!93985))

(declare-fun m!93987 () Bool)

(assert (=> b!88241 m!93987))

(assert (=> b!88241 m!93987))

(declare-fun m!93989 () Bool)

(assert (=> b!88241 m!93989))

(assert (=> b!88243 m!93987))

(assert (=> b!88243 m!93987))

(assert (=> b!88243 m!93989))

(assert (=> b!88030 d!23435))

(declare-fun d!23437 () Bool)

(declare-fun e!57489 () Bool)

(assert (=> d!23437 e!57489))

(declare-fun res!45193 () Bool)

(assert (=> d!23437 (=> (not res!45193) (not e!57489))))

(declare-fun lt!41990 () ListLongMap!1491)

(assert (=> d!23437 (= res!45193 (contains!766 lt!41990 (_1!1130 (tuple2!2241 lt!41879 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(declare-fun lt!41991 () List!1556)

(assert (=> d!23437 (= lt!41990 (ListLongMap!1492 lt!41991))))

(declare-fun lt!41992 () Unit!2618)

(declare-fun lt!41993 () Unit!2618)

(assert (=> d!23437 (= lt!41992 lt!41993)))

(assert (=> d!23437 (= (getValueByKey!140 lt!41991 (_1!1130 (tuple2!2241 lt!41879 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))) (Some!145 (_2!1130 (tuple2!2241 lt!41879 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23437 (= lt!41993 (lemmaContainsTupThenGetReturnValue!59 lt!41991 (_1!1130 (tuple2!2241 lt!41879 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) (_2!1130 (tuple2!2241 lt!41879 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23437 (= lt!41991 (insertStrictlySorted!61 (toList!761 lt!41867) (_1!1130 (tuple2!2241 lt!41879 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) (_2!1130 (tuple2!2241 lt!41879 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23437 (= (+!118 lt!41867 (tuple2!2241 lt!41879 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!41990)))

(declare-fun b!88244 () Bool)

(declare-fun res!45192 () Bool)

(assert (=> b!88244 (=> (not res!45192) (not e!57489))))

(assert (=> b!88244 (= res!45192 (= (getValueByKey!140 (toList!761 lt!41990) (_1!1130 (tuple2!2241 lt!41879 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))) (Some!145 (_2!1130 (tuple2!2241 lt!41879 (minValue!2249 (v!2663 (underlying!295 thiss!992))))))))))

(declare-fun b!88245 () Bool)

(assert (=> b!88245 (= e!57489 (contains!768 (toList!761 lt!41990) (tuple2!2241 lt!41879 (minValue!2249 (v!2663 (underlying!295 thiss!992))))))))

(assert (= (and d!23437 res!45193) b!88244))

(assert (= (and b!88244 res!45192) b!88245))

(declare-fun m!93991 () Bool)

(assert (=> d!23437 m!93991))

(declare-fun m!93993 () Bool)

(assert (=> d!23437 m!93993))

(declare-fun m!93995 () Bool)

(assert (=> d!23437 m!93995))

(declare-fun m!93997 () Bool)

(assert (=> d!23437 m!93997))

(declare-fun m!93999 () Bool)

(assert (=> b!88244 m!93999))

(declare-fun m!94001 () Bool)

(assert (=> b!88245 m!94001))

(assert (=> b!88030 d!23437))

(declare-fun d!23439 () Bool)

(assert (=> d!23439 (= (apply!83 (+!118 lt!41877 (tuple2!2241 lt!41878 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!41865) (get!1222 (getValueByKey!140 (toList!761 (+!118 lt!41877 (tuple2!2241 lt!41878 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))) lt!41865)))))

(declare-fun bs!3712 () Bool)

(assert (= bs!3712 d!23439))

(declare-fun m!94003 () Bool)

(assert (=> bs!3712 m!94003))

(assert (=> bs!3712 m!94003))

(declare-fun m!94005 () Bool)

(assert (=> bs!3712 m!94005))

(assert (=> b!88030 d!23439))

(declare-fun d!23441 () Bool)

(assert (=> d!23441 (= (apply!83 lt!41867 lt!41864) (get!1222 (getValueByKey!140 (toList!761 lt!41867) lt!41864)))))

(declare-fun bs!3713 () Bool)

(assert (= bs!3713 d!23441))

(declare-fun m!94007 () Bool)

(assert (=> bs!3713 m!94007))

(assert (=> bs!3713 m!94007))

(declare-fun m!94009 () Bool)

(assert (=> bs!3713 m!94009))

(assert (=> b!88030 d!23441))

(assert (=> b!88030 d!23303))

(declare-fun d!23443 () Bool)

(declare-fun e!57490 () Bool)

(assert (=> d!23443 e!57490))

(declare-fun res!45195 () Bool)

(assert (=> d!23443 (=> (not res!45195) (not e!57490))))

(declare-fun lt!41994 () ListLongMap!1491)

(assert (=> d!23443 (= res!45195 (contains!766 lt!41994 (_1!1130 (tuple2!2241 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(declare-fun lt!41995 () List!1556)

(assert (=> d!23443 (= lt!41994 (ListLongMap!1492 lt!41995))))

(declare-fun lt!41996 () Unit!2618)

(declare-fun lt!41997 () Unit!2618)

(assert (=> d!23443 (= lt!41996 lt!41997)))

(assert (=> d!23443 (= (getValueByKey!140 lt!41995 (_1!1130 (tuple2!2241 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))) (Some!145 (_2!1130 (tuple2!2241 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23443 (= lt!41997 (lemmaContainsTupThenGetReturnValue!59 lt!41995 (_1!1130 (tuple2!2241 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) (_2!1130 (tuple2!2241 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23443 (= lt!41995 (insertStrictlySorted!61 (toList!761 lt!41872) (_1!1130 (tuple2!2241 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) (_2!1130 (tuple2!2241 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23443 (= (+!118 lt!41872 (tuple2!2241 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!41994)))

(declare-fun b!88246 () Bool)

(declare-fun res!45194 () Bool)

(assert (=> b!88246 (=> (not res!45194) (not e!57490))))

(assert (=> b!88246 (= res!45194 (= (getValueByKey!140 (toList!761 lt!41994) (_1!1130 (tuple2!2241 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))) (Some!145 (_2!1130 (tuple2!2241 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))))))))

(declare-fun b!88247 () Bool)

(assert (=> b!88247 (= e!57490 (contains!768 (toList!761 lt!41994) (tuple2!2241 lt!41868 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))))))

(assert (= (and d!23443 res!45195) b!88246))

(assert (= (and b!88246 res!45194) b!88247))

(declare-fun m!94011 () Bool)

(assert (=> d!23443 m!94011))

(declare-fun m!94013 () Bool)

(assert (=> d!23443 m!94013))

(declare-fun m!94015 () Bool)

(assert (=> d!23443 m!94015))

(declare-fun m!94017 () Bool)

(assert (=> d!23443 m!94017))

(declare-fun m!94019 () Bool)

(assert (=> b!88246 m!94019))

(declare-fun m!94021 () Bool)

(assert (=> b!88247 m!94021))

(assert (=> b!88030 d!23443))

(declare-fun d!23445 () Bool)

(declare-fun e!57491 () Bool)

(assert (=> d!23445 e!57491))

(declare-fun res!45197 () Bool)

(assert (=> d!23445 (=> (not res!45197) (not e!57491))))

(declare-fun lt!41998 () ListLongMap!1491)

(assert (=> d!23445 (= res!45197 (contains!766 lt!41998 (_1!1130 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(declare-fun lt!41999 () List!1556)

(assert (=> d!23445 (= lt!41998 (ListLongMap!1492 lt!41999))))

(declare-fun lt!42000 () Unit!2618)

(declare-fun lt!42001 () Unit!2618)

(assert (=> d!23445 (= lt!42000 lt!42001)))

(assert (=> d!23445 (= (getValueByKey!140 lt!41999 (_1!1130 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))) (Some!145 (_2!1130 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23445 (= lt!42001 (lemmaContainsTupThenGetReturnValue!59 lt!41999 (_1!1130 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) (_2!1130 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23445 (= lt!41999 (insertStrictlySorted!61 (toList!761 (+!118 lt!41587 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))) (_1!1130 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) (_2!1130 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23445 (= (+!118 (+!118 lt!41587 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!41998)))

(declare-fun b!88248 () Bool)

(declare-fun res!45196 () Bool)

(assert (=> b!88248 (=> (not res!45196) (not e!57491))))

(assert (=> b!88248 (= res!45196 (= (getValueByKey!140 (toList!761 lt!41998) (_1!1130 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))) (Some!145 (_2!1130 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))))))))

(declare-fun b!88249 () Bool)

(assert (=> b!88249 (= e!57491 (contains!768 (toList!761 lt!41998) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))))))

(assert (= (and d!23445 res!45197) b!88248))

(assert (= (and b!88248 res!45196) b!88249))

(declare-fun m!94023 () Bool)

(assert (=> d!23445 m!94023))

(declare-fun m!94025 () Bool)

(assert (=> d!23445 m!94025))

(declare-fun m!94027 () Bool)

(assert (=> d!23445 m!94027))

(declare-fun m!94029 () Bool)

(assert (=> d!23445 m!94029))

(declare-fun m!94031 () Bool)

(assert (=> b!88248 m!94031))

(declare-fun m!94033 () Bool)

(assert (=> b!88249 m!94033))

(assert (=> d!23309 d!23445))

(declare-fun d!23447 () Bool)

(declare-fun e!57492 () Bool)

(assert (=> d!23447 e!57492))

(declare-fun res!45199 () Bool)

(assert (=> d!23447 (=> (not res!45199) (not e!57492))))

(declare-fun lt!42002 () ListLongMap!1491)

(assert (=> d!23447 (= res!45199 (contains!766 lt!42002 (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(declare-fun lt!42003 () List!1556)

(assert (=> d!23447 (= lt!42002 (ListLongMap!1492 lt!42003))))

(declare-fun lt!42004 () Unit!2618)

(declare-fun lt!42005 () Unit!2618)

(assert (=> d!23447 (= lt!42004 lt!42005)))

(assert (=> d!23447 (= (getValueByKey!140 lt!42003 (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))) (Some!145 (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(assert (=> d!23447 (= lt!42005 (lemmaContainsTupThenGetReturnValue!59 lt!42003 (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(assert (=> d!23447 (= lt!42003 (insertStrictlySorted!61 (toList!761 lt!41587) (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(assert (=> d!23447 (= (+!118 lt!41587 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) lt!42002)))

(declare-fun b!88250 () Bool)

(declare-fun res!45198 () Bool)

(assert (=> b!88250 (=> (not res!45198) (not e!57492))))

(assert (=> b!88250 (= res!45198 (= (getValueByKey!140 (toList!761 lt!42002) (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))) (Some!145 (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))))))

(declare-fun b!88251 () Bool)

(assert (=> b!88251 (= e!57492 (contains!768 (toList!761 lt!42002) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))))

(assert (= (and d!23447 res!45199) b!88250))

(assert (= (and b!88250 res!45198) b!88251))

(declare-fun m!94035 () Bool)

(assert (=> d!23447 m!94035))

(declare-fun m!94037 () Bool)

(assert (=> d!23447 m!94037))

(declare-fun m!94039 () Bool)

(assert (=> d!23447 m!94039))

(declare-fun m!94041 () Bool)

(assert (=> d!23447 m!94041))

(declare-fun m!94043 () Bool)

(assert (=> b!88250 m!94043))

(declare-fun m!94045 () Bool)

(assert (=> b!88251 m!94045))

(assert (=> d!23309 d!23447))

(declare-fun d!23449 () Bool)

(declare-fun e!57493 () Bool)

(assert (=> d!23449 e!57493))

(declare-fun res!45201 () Bool)

(assert (=> d!23449 (=> (not res!45201) (not e!57493))))

(declare-fun lt!42006 () ListLongMap!1491)

(assert (=> d!23449 (= res!45201 (contains!766 lt!42006 (_1!1130 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(declare-fun lt!42007 () List!1556)

(assert (=> d!23449 (= lt!42006 (ListLongMap!1492 lt!42007))))

(declare-fun lt!42008 () Unit!2618)

(declare-fun lt!42009 () Unit!2618)

(assert (=> d!23449 (= lt!42008 lt!42009)))

(assert (=> d!23449 (= (getValueByKey!140 lt!42007 (_1!1130 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))) (Some!145 (_2!1130 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23449 (= lt!42009 (lemmaContainsTupThenGetReturnValue!59 lt!42007 (_1!1130 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) (_2!1130 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23449 (= lt!42007 (insertStrictlySorted!61 (toList!761 lt!41587) (_1!1130 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) (_2!1130 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23449 (= (+!118 lt!41587 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!42006)))

(declare-fun b!88252 () Bool)

(declare-fun res!45200 () Bool)

(assert (=> b!88252 (=> (not res!45200) (not e!57493))))

(assert (=> b!88252 (= res!45200 (= (getValueByKey!140 (toList!761 lt!42006) (_1!1130 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))) (Some!145 (_2!1130 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))))))))

(declare-fun b!88253 () Bool)

(assert (=> b!88253 (= e!57493 (contains!768 (toList!761 lt!42006) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))))))

(assert (= (and d!23449 res!45201) b!88252))

(assert (= (and b!88252 res!45200) b!88253))

(declare-fun m!94047 () Bool)

(assert (=> d!23449 m!94047))

(declare-fun m!94049 () Bool)

(assert (=> d!23449 m!94049))

(declare-fun m!94051 () Bool)

(assert (=> d!23449 m!94051))

(declare-fun m!94053 () Bool)

(assert (=> d!23449 m!94053))

(declare-fun m!94055 () Bool)

(assert (=> b!88252 m!94055))

(declare-fun m!94057 () Bool)

(assert (=> b!88253 m!94057))

(assert (=> d!23309 d!23449))

(declare-fun d!23451 () Bool)

(declare-fun e!57494 () Bool)

(assert (=> d!23451 e!57494))

(declare-fun res!45203 () Bool)

(assert (=> d!23451 (=> (not res!45203) (not e!57494))))

(declare-fun lt!42010 () ListLongMap!1491)

(assert (=> d!23451 (= res!45203 (contains!766 lt!42010 (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(declare-fun lt!42011 () List!1556)

(assert (=> d!23451 (= lt!42010 (ListLongMap!1492 lt!42011))))

(declare-fun lt!42012 () Unit!2618)

(declare-fun lt!42013 () Unit!2618)

(assert (=> d!23451 (= lt!42012 lt!42013)))

(assert (=> d!23451 (= (getValueByKey!140 lt!42011 (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))) (Some!145 (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(assert (=> d!23451 (= lt!42013 (lemmaContainsTupThenGetReturnValue!59 lt!42011 (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(assert (=> d!23451 (= lt!42011 (insertStrictlySorted!61 (toList!761 (+!118 lt!41587 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))))) (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(assert (=> d!23451 (= (+!118 (+!118 lt!41587 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) lt!42010)))

(declare-fun b!88254 () Bool)

(declare-fun res!45202 () Bool)

(assert (=> b!88254 (=> (not res!45202) (not e!57494))))

(assert (=> b!88254 (= res!45202 (= (getValueByKey!140 (toList!761 lt!42010) (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))) (Some!145 (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))))))

(declare-fun b!88255 () Bool)

(assert (=> b!88255 (= e!57494 (contains!768 (toList!761 lt!42010) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))))

(assert (= (and d!23451 res!45203) b!88254))

(assert (= (and b!88254 res!45202) b!88255))

(declare-fun m!94059 () Bool)

(assert (=> d!23451 m!94059))

(declare-fun m!94061 () Bool)

(assert (=> d!23451 m!94061))

(declare-fun m!94063 () Bool)

(assert (=> d!23451 m!94063))

(declare-fun m!94065 () Bool)

(assert (=> d!23451 m!94065))

(declare-fun m!94067 () Bool)

(assert (=> b!88254 m!94067))

(declare-fun m!94069 () Bool)

(assert (=> b!88255 m!94069))

(assert (=> d!23309 d!23451))

(declare-fun d!23453 () Bool)

(assert (=> d!23453 (= (+!118 (+!118 lt!41587 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) (+!118 (+!118 lt!41587 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992))))) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))))

(assert (=> d!23453 true))

(declare-fun _$28!146 () Unit!2618)

(assert (=> d!23453 (= (choose!522 lt!41587 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))) _$28!146)))

(declare-fun bs!3714 () Bool)

(assert (= bs!3714 d!23453))

(assert (=> bs!3714 m!93467))

(assert (=> bs!3714 m!93467))

(assert (=> bs!3714 m!93473))

(assert (=> bs!3714 m!93471))

(assert (=> bs!3714 m!93471))

(assert (=> bs!3714 m!93475))

(assert (=> d!23309 d!23453))

(declare-fun d!23455 () Bool)

(assert (=> d!23455 (= (get!1220 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) from!355) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!2662 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(assert (=> b!88048 d!23455))

(declare-fun d!23457 () Bool)

(declare-fun e!57495 () Bool)

(assert (=> d!23457 e!57495))

(declare-fun res!45204 () Bool)

(assert (=> d!23457 (=> res!45204 e!57495)))

(declare-fun lt!42014 () Bool)

(assert (=> d!23457 (= res!45204 (not lt!42014))))

(declare-fun lt!42016 () Bool)

(assert (=> d!23457 (= lt!42014 lt!42016)))

(declare-fun lt!42015 () Unit!2618)

(declare-fun e!57496 () Unit!2618)

(assert (=> d!23457 (= lt!42015 e!57496)))

(declare-fun c!14592 () Bool)

(assert (=> d!23457 (= c!14592 lt!42016)))

(assert (=> d!23457 (= lt!42016 (containsKey!144 (toList!761 lt!41874) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!23457 (= (contains!766 lt!41874 #b1000000000000000000000000000000000000000000000000000000000000000) lt!42014)))

(declare-fun b!88256 () Bool)

(declare-fun lt!42017 () Unit!2618)

(assert (=> b!88256 (= e!57496 lt!42017)))

(assert (=> b!88256 (= lt!42017 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 lt!41874) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!88256 (isDefined!94 (getValueByKey!140 (toList!761 lt!41874) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!88257 () Bool)

(declare-fun Unit!2633 () Unit!2618)

(assert (=> b!88257 (= e!57496 Unit!2633)))

(declare-fun b!88258 () Bool)

(assert (=> b!88258 (= e!57495 (isDefined!94 (getValueByKey!140 (toList!761 lt!41874) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!23457 c!14592) b!88256))

(assert (= (and d!23457 (not c!14592)) b!88257))

(assert (= (and d!23457 (not res!45204)) b!88258))

(declare-fun m!94071 () Bool)

(assert (=> d!23457 m!94071))

(declare-fun m!94073 () Bool)

(assert (=> b!88256 m!94073))

(declare-fun m!94075 () Bool)

(assert (=> b!88256 m!94075))

(assert (=> b!88256 m!94075))

(declare-fun m!94077 () Bool)

(assert (=> b!88256 m!94077))

(assert (=> b!88258 m!94075))

(assert (=> b!88258 m!94075))

(assert (=> b!88258 m!94077))

(assert (=> bm!8446 d!23457))

(declare-fun d!23459 () Bool)

(declare-fun e!57497 () Bool)

(assert (=> d!23459 e!57497))

(declare-fun res!45205 () Bool)

(assert (=> d!23459 (=> res!45205 e!57497)))

(declare-fun lt!42018 () Bool)

(assert (=> d!23459 (= res!45205 (not lt!42018))))

(declare-fun lt!42020 () Bool)

(assert (=> d!23459 (= lt!42018 lt!42020)))

(declare-fun lt!42019 () Unit!2618)

(declare-fun e!57498 () Unit!2618)

(assert (=> d!23459 (= lt!42019 e!57498)))

(declare-fun c!14593 () Bool)

(assert (=> d!23459 (= c!14593 lt!42020)))

(assert (=> d!23459 (= lt!42020 (containsKey!144 (toList!761 (getCurrentListMap!444 (_keys!4035 newMap!16) lt!41807 (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16))) (select (arr!1924 (_keys!4035 newMap!16)) (index!3155 lt!41794))))))

(assert (=> d!23459 (= (contains!766 (getCurrentListMap!444 (_keys!4035 newMap!16) lt!41807 (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)) (select (arr!1924 (_keys!4035 newMap!16)) (index!3155 lt!41794))) lt!42018)))

(declare-fun b!88259 () Bool)

(declare-fun lt!42021 () Unit!2618)

(assert (=> b!88259 (= e!57498 lt!42021)))

(assert (=> b!88259 (= lt!42021 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 (getCurrentListMap!444 (_keys!4035 newMap!16) lt!41807 (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16))) (select (arr!1924 (_keys!4035 newMap!16)) (index!3155 lt!41794))))))

(assert (=> b!88259 (isDefined!94 (getValueByKey!140 (toList!761 (getCurrentListMap!444 (_keys!4035 newMap!16) lt!41807 (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16))) (select (arr!1924 (_keys!4035 newMap!16)) (index!3155 lt!41794))))))

(declare-fun b!88260 () Bool)

(declare-fun Unit!2634 () Unit!2618)

(assert (=> b!88260 (= e!57498 Unit!2634)))

(declare-fun b!88261 () Bool)

(assert (=> b!88261 (= e!57497 (isDefined!94 (getValueByKey!140 (toList!761 (getCurrentListMap!444 (_keys!4035 newMap!16) lt!41807 (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16))) (select (arr!1924 (_keys!4035 newMap!16)) (index!3155 lt!41794)))))))

(assert (= (and d!23459 c!14593) b!88259))

(assert (= (and d!23459 (not c!14593)) b!88260))

(assert (= (and d!23459 (not res!45205)) b!88261))

(assert (=> d!23459 m!93579))

(declare-fun m!94079 () Bool)

(assert (=> d!23459 m!94079))

(assert (=> b!88259 m!93579))

(declare-fun m!94081 () Bool)

(assert (=> b!88259 m!94081))

(assert (=> b!88259 m!93579))

(declare-fun m!94083 () Bool)

(assert (=> b!88259 m!94083))

(assert (=> b!88259 m!94083))

(declare-fun m!94085 () Bool)

(assert (=> b!88259 m!94085))

(assert (=> b!88261 m!93579))

(assert (=> b!88261 m!94083))

(assert (=> b!88261 m!94083))

(assert (=> b!88261 m!94085))

(assert (=> b!87932 d!23459))

(declare-fun b!88262 () Bool)

(declare-fun e!57511 () Unit!2618)

(declare-fun Unit!2635 () Unit!2618)

(assert (=> b!88262 (= e!57511 Unit!2635)))

(declare-fun b!88263 () Bool)

(declare-fun e!57509 () ListLongMap!1491)

(declare-fun call!8475 () ListLongMap!1491)

(assert (=> b!88263 (= e!57509 call!8475)))

(declare-fun d!23461 () Bool)

(declare-fun e!57503 () Bool)

(assert (=> d!23461 e!57503))

(declare-fun res!45212 () Bool)

(assert (=> d!23461 (=> (not res!45212) (not e!57503))))

(assert (=> d!23461 (= res!45212 (or (bvsge #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))))

(declare-fun lt!42033 () ListLongMap!1491)

(declare-fun lt!42032 () ListLongMap!1491)

(assert (=> d!23461 (= lt!42033 lt!42032)))

(declare-fun lt!42025 () Unit!2618)

(assert (=> d!23461 (= lt!42025 e!57511)))

(declare-fun c!14596 () Bool)

(declare-fun e!57502 () Bool)

(assert (=> d!23461 (= c!14596 e!57502)))

(declare-fun res!45210 () Bool)

(assert (=> d!23461 (=> (not res!45210) (not e!57502))))

(assert (=> d!23461 (= res!45210 (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))

(declare-fun e!57510 () ListLongMap!1491)

(assert (=> d!23461 (= lt!42032 e!57510)))

(declare-fun c!14598 () Bool)

(assert (=> d!23461 (= c!14598 (and (not (= (bvand (extraKeys!2194 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2194 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!23461 (validMask!0 (mask!6397 newMap!16))))

(assert (=> d!23461 (= (getCurrentListMap!444 (_keys!4035 newMap!16) lt!41807 (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)) lt!42033)))

(declare-fun bm!8466 () Bool)

(declare-fun call!8472 () Bool)

(assert (=> bm!8466 (= call!8472 (contains!766 lt!42033 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!88264 () Bool)

(declare-fun e!57508 () Bool)

(declare-fun e!57504 () Bool)

(assert (=> b!88264 (= e!57508 e!57504)))

(declare-fun res!45209 () Bool)

(assert (=> b!88264 (= res!45209 call!8472)))

(assert (=> b!88264 (=> (not res!45209) (not e!57504))))

(declare-fun b!88265 () Bool)

(declare-fun res!45214 () Bool)

(assert (=> b!88265 (=> (not res!45214) (not e!57503))))

(declare-fun e!57507 () Bool)

(assert (=> b!88265 (= res!45214 e!57507)))

(declare-fun res!45213 () Bool)

(assert (=> b!88265 (=> res!45213 e!57507)))

(declare-fun e!57501 () Bool)

(assert (=> b!88265 (= res!45213 (not e!57501))))

(declare-fun res!45207 () Bool)

(assert (=> b!88265 (=> (not res!45207) (not e!57501))))

(assert (=> b!88265 (= res!45207 (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))

(declare-fun b!88266 () Bool)

(assert (=> b!88266 (= e!57501 (validKeyInArray!0 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!8467 () Bool)

(declare-fun call!8474 () ListLongMap!1491)

(assert (=> bm!8467 (= call!8475 call!8474)))

(declare-fun b!88267 () Bool)

(declare-fun res!45208 () Bool)

(assert (=> b!88267 (=> (not res!45208) (not e!57503))))

(declare-fun e!57500 () Bool)

(assert (=> b!88267 (= res!45208 e!57500)))

(declare-fun c!14597 () Bool)

(assert (=> b!88267 (= c!14597 (not (= (bvand (extraKeys!2194 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!88268 () Bool)

(declare-fun e!57506 () ListLongMap!1491)

(declare-fun call!8469 () ListLongMap!1491)

(assert (=> b!88268 (= e!57506 call!8469)))

(declare-fun b!88269 () Bool)

(declare-fun e!57499 () Bool)

(assert (=> b!88269 (= e!57500 e!57499)))

(declare-fun res!45211 () Bool)

(declare-fun call!8470 () Bool)

(assert (=> b!88269 (= res!45211 call!8470)))

(assert (=> b!88269 (=> (not res!45211) (not e!57499))))

(declare-fun bm!8468 () Bool)

(declare-fun call!8471 () ListLongMap!1491)

(assert (=> bm!8468 (= call!8471 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) lt!41807 (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun b!88270 () Bool)

(declare-fun e!57505 () Bool)

(assert (=> b!88270 (= e!57507 e!57505)))

(declare-fun res!45206 () Bool)

(assert (=> b!88270 (=> (not res!45206) (not e!57505))))

(assert (=> b!88270 (= res!45206 (contains!766 lt!42033 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!88270 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))

(declare-fun b!88271 () Bool)

(assert (=> b!88271 (= e!57505 (= (apply!83 lt!42033 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)) (get!1219 (select (arr!1925 lt!41807) #b00000000000000000000000000000000) (dynLambda!354 (defaultEntry!2359 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!88271 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2170 lt!41807)))))

(assert (=> b!88271 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))

(declare-fun bm!8469 () Bool)

(assert (=> bm!8469 (= call!8470 (contains!766 lt!42033 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!8473 () ListLongMap!1491)

(declare-fun c!14594 () Bool)

(declare-fun bm!8470 () Bool)

(assert (=> bm!8470 (= call!8473 (+!118 (ite c!14598 call!8471 (ite c!14594 call!8474 call!8475)) (ite (or c!14598 c!14594) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 newMap!16)) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 newMap!16)))))))

(declare-fun bm!8471 () Bool)

(assert (=> bm!8471 (= call!8474 call!8471)))

(declare-fun b!88272 () Bool)

(assert (=> b!88272 (= e!57502 (validKeyInArray!0 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!88273 () Bool)

(assert (=> b!88273 (= e!57508 (not call!8472))))

(declare-fun b!88274 () Bool)

(assert (=> b!88274 (= e!57504 (= (apply!83 lt!42033 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2249 newMap!16)))))

(declare-fun b!88275 () Bool)

(declare-fun c!14599 () Bool)

(assert (=> b!88275 (= c!14599 (and (not (= (bvand (extraKeys!2194 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2194 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!88275 (= e!57506 e!57509)))

(declare-fun b!88276 () Bool)

(assert (=> b!88276 (= e!57500 (not call!8470))))

(declare-fun b!88277 () Bool)

(assert (=> b!88277 (= e!57503 e!57508)))

(declare-fun c!14595 () Bool)

(assert (=> b!88277 (= c!14595 (not (= (bvand (extraKeys!2194 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!8472 () Bool)

(assert (=> bm!8472 (= call!8469 call!8473)))

(declare-fun b!88278 () Bool)

(declare-fun lt!42040 () Unit!2618)

(assert (=> b!88278 (= e!57511 lt!42040)))

(declare-fun lt!42031 () ListLongMap!1491)

(assert (=> b!88278 (= lt!42031 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) lt!41807 (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!42027 () (_ BitVec 64))

(assert (=> b!88278 (= lt!42027 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42022 () (_ BitVec 64))

(assert (=> b!88278 (= lt!42022 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!42029 () Unit!2618)

(assert (=> b!88278 (= lt!42029 (addStillContains!59 lt!42031 lt!42027 (zeroValue!2249 newMap!16) lt!42022))))

(assert (=> b!88278 (contains!766 (+!118 lt!42031 (tuple2!2241 lt!42027 (zeroValue!2249 newMap!16))) lt!42022)))

(declare-fun lt!42030 () Unit!2618)

(assert (=> b!88278 (= lt!42030 lt!42029)))

(declare-fun lt!42034 () ListLongMap!1491)

(assert (=> b!88278 (= lt!42034 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) lt!41807 (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!42043 () (_ BitVec 64))

(assert (=> b!88278 (= lt!42043 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42042 () (_ BitVec 64))

(assert (=> b!88278 (= lt!42042 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!42035 () Unit!2618)

(assert (=> b!88278 (= lt!42035 (addApplyDifferent!59 lt!42034 lt!42043 (minValue!2249 newMap!16) lt!42042))))

(assert (=> b!88278 (= (apply!83 (+!118 lt!42034 (tuple2!2241 lt!42043 (minValue!2249 newMap!16))) lt!42042) (apply!83 lt!42034 lt!42042))))

(declare-fun lt!42039 () Unit!2618)

(assert (=> b!88278 (= lt!42039 lt!42035)))

(declare-fun lt!42036 () ListLongMap!1491)

(assert (=> b!88278 (= lt!42036 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) lt!41807 (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!42037 () (_ BitVec 64))

(assert (=> b!88278 (= lt!42037 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42024 () (_ BitVec 64))

(assert (=> b!88278 (= lt!42024 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!42041 () Unit!2618)

(assert (=> b!88278 (= lt!42041 (addApplyDifferent!59 lt!42036 lt!42037 (zeroValue!2249 newMap!16) lt!42024))))

(assert (=> b!88278 (= (apply!83 (+!118 lt!42036 (tuple2!2241 lt!42037 (zeroValue!2249 newMap!16))) lt!42024) (apply!83 lt!42036 lt!42024))))

(declare-fun lt!42028 () Unit!2618)

(assert (=> b!88278 (= lt!42028 lt!42041)))

(declare-fun lt!42026 () ListLongMap!1491)

(assert (=> b!88278 (= lt!42026 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) lt!41807 (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!42038 () (_ BitVec 64))

(assert (=> b!88278 (= lt!42038 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42023 () (_ BitVec 64))

(assert (=> b!88278 (= lt!42023 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!88278 (= lt!42040 (addApplyDifferent!59 lt!42026 lt!42038 (minValue!2249 newMap!16) lt!42023))))

(assert (=> b!88278 (= (apply!83 (+!118 lt!42026 (tuple2!2241 lt!42038 (minValue!2249 newMap!16))) lt!42023) (apply!83 lt!42026 lt!42023))))

(declare-fun b!88279 () Bool)

(assert (=> b!88279 (= e!57509 call!8469)))

(declare-fun b!88280 () Bool)

(assert (=> b!88280 (= e!57510 (+!118 call!8473 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 newMap!16))))))

(declare-fun b!88281 () Bool)

(assert (=> b!88281 (= e!57499 (= (apply!83 lt!42033 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2249 newMap!16)))))

(declare-fun b!88282 () Bool)

(assert (=> b!88282 (= e!57510 e!57506)))

(assert (=> b!88282 (= c!14594 (and (not (= (bvand (extraKeys!2194 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2194 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!23461 c!14598) b!88280))

(assert (= (and d!23461 (not c!14598)) b!88282))

(assert (= (and b!88282 c!14594) b!88268))

(assert (= (and b!88282 (not c!14594)) b!88275))

(assert (= (and b!88275 c!14599) b!88279))

(assert (= (and b!88275 (not c!14599)) b!88263))

(assert (= (or b!88279 b!88263) bm!8467))

(assert (= (or b!88268 bm!8467) bm!8471))

(assert (= (or b!88268 b!88279) bm!8472))

(assert (= (or b!88280 bm!8471) bm!8468))

(assert (= (or b!88280 bm!8472) bm!8470))

(assert (= (and d!23461 res!45210) b!88272))

(assert (= (and d!23461 c!14596) b!88278))

(assert (= (and d!23461 (not c!14596)) b!88262))

(assert (= (and d!23461 res!45212) b!88265))

(assert (= (and b!88265 res!45207) b!88266))

(assert (= (and b!88265 (not res!45213)) b!88270))

(assert (= (and b!88270 res!45206) b!88271))

(assert (= (and b!88265 res!45214) b!88267))

(assert (= (and b!88267 c!14597) b!88269))

(assert (= (and b!88267 (not c!14597)) b!88276))

(assert (= (and b!88269 res!45211) b!88281))

(assert (= (or b!88269 b!88276) bm!8469))

(assert (= (and b!88267 res!45208) b!88277))

(assert (= (and b!88277 c!14595) b!88264))

(assert (= (and b!88277 (not c!14595)) b!88273))

(assert (= (and b!88264 res!45209) b!88274))

(assert (= (or b!88264 b!88273) bm!8466))

(declare-fun b_lambda!3911 () Bool)

(assert (=> (not b_lambda!3911) (not b!88271)))

(declare-fun tb!1721 () Bool)

(declare-fun t!5309 () Bool)

(assert (=> (and b!87671 (= (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) (defaultEntry!2359 newMap!16)) t!5309) tb!1721))

(declare-fun result!2959 () Bool)

(assert (=> tb!1721 (= result!2959 tp_is_empty!2541)))

(assert (=> b!88271 t!5309))

(declare-fun b_and!5305 () Bool)

(assert (= b_and!5301 (and (=> t!5309 result!2959) b_and!5305)))

(declare-fun t!5311 () Bool)

(declare-fun tb!1723 () Bool)

(assert (=> (and b!87670 (= (defaultEntry!2359 newMap!16) (defaultEntry!2359 newMap!16)) t!5311) tb!1723))

(declare-fun result!2961 () Bool)

(assert (= result!2961 result!2959))

(assert (=> b!88271 t!5311))

(declare-fun b_and!5307 () Bool)

(assert (= b_and!5303 (and (=> t!5311 result!2961) b_and!5307)))

(declare-fun m!94087 () Bool)

(assert (=> bm!8470 m!94087))

(declare-fun m!94089 () Bool)

(assert (=> b!88270 m!94089))

(assert (=> b!88270 m!94089))

(declare-fun m!94091 () Bool)

(assert (=> b!88270 m!94091))

(declare-fun m!94093 () Bool)

(assert (=> b!88274 m!94093))

(assert (=> d!23461 m!93827))

(declare-fun m!94095 () Bool)

(assert (=> b!88281 m!94095))

(declare-fun m!94097 () Bool)

(assert (=> bm!8468 m!94097))

(assert (=> b!88272 m!94089))

(assert (=> b!88272 m!94089))

(declare-fun m!94099 () Bool)

(assert (=> b!88272 m!94099))

(declare-fun m!94101 () Bool)

(assert (=> bm!8469 m!94101))

(declare-fun m!94103 () Bool)

(assert (=> b!88271 m!94103))

(assert (=> b!88271 m!94089))

(declare-fun m!94105 () Bool)

(assert (=> b!88271 m!94105))

(declare-fun m!94107 () Bool)

(assert (=> b!88271 m!94107))

(assert (=> b!88271 m!94103))

(declare-fun m!94109 () Bool)

(assert (=> b!88271 m!94109))

(assert (=> b!88271 m!94107))

(assert (=> b!88271 m!94089))

(assert (=> b!88266 m!94089))

(assert (=> b!88266 m!94089))

(assert (=> b!88266 m!94099))

(declare-fun m!94111 () Bool)

(assert (=> bm!8466 m!94111))

(declare-fun m!94113 () Bool)

(assert (=> b!88280 m!94113))

(assert (=> b!88278 m!94097))

(declare-fun m!94115 () Bool)

(assert (=> b!88278 m!94115))

(declare-fun m!94117 () Bool)

(assert (=> b!88278 m!94117))

(declare-fun m!94119 () Bool)

(assert (=> b!88278 m!94119))

(declare-fun m!94121 () Bool)

(assert (=> b!88278 m!94121))

(declare-fun m!94123 () Bool)

(assert (=> b!88278 m!94123))

(declare-fun m!94125 () Bool)

(assert (=> b!88278 m!94125))

(declare-fun m!94127 () Bool)

(assert (=> b!88278 m!94127))

(assert (=> b!88278 m!94121))

(declare-fun m!94129 () Bool)

(assert (=> b!88278 m!94129))

(declare-fun m!94131 () Bool)

(assert (=> b!88278 m!94131))

(declare-fun m!94133 () Bool)

(assert (=> b!88278 m!94133))

(declare-fun m!94135 () Bool)

(assert (=> b!88278 m!94135))

(assert (=> b!88278 m!94115))

(declare-fun m!94137 () Bool)

(assert (=> b!88278 m!94137))

(assert (=> b!88278 m!94129))

(declare-fun m!94139 () Bool)

(assert (=> b!88278 m!94139))

(assert (=> b!88278 m!94127))

(declare-fun m!94141 () Bool)

(assert (=> b!88278 m!94141))

(assert (=> b!88278 m!94089))

(declare-fun m!94143 () Bool)

(assert (=> b!88278 m!94143))

(assert (=> b!87932 d!23461))

(declare-fun d!23463 () Bool)

(declare-fun e!57514 () Bool)

(assert (=> d!23463 e!57514))

(declare-fun res!45217 () Bool)

(assert (=> d!23463 (=> (not res!45217) (not e!57514))))

(assert (=> d!23463 (= res!45217 (and (bvsge (index!3155 lt!41794) #b00000000000000000000000000000000) (bvslt (index!3155 lt!41794) (size!2169 (_keys!4035 newMap!16)))))))

(declare-fun lt!42046 () Unit!2618)

(declare-fun choose!529 (array!4042 array!4044 (_ BitVec 32) (_ BitVec 32) V!3035 V!3035 (_ BitVec 32) Int) Unit!2618)

(assert (=> d!23463 (= lt!42046 (choose!529 (_keys!4035 newMap!16) lt!41807 (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) (index!3155 lt!41794) (defaultEntry!2359 newMap!16)))))

(assert (=> d!23463 (validMask!0 (mask!6397 newMap!16))))

(assert (=> d!23463 (= (lemmaValidKeyInArrayIsInListMap!90 (_keys!4035 newMap!16) lt!41807 (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) (index!3155 lt!41794) (defaultEntry!2359 newMap!16)) lt!42046)))

(declare-fun b!88285 () Bool)

(assert (=> b!88285 (= e!57514 (contains!766 (getCurrentListMap!444 (_keys!4035 newMap!16) lt!41807 (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)) (select (arr!1924 (_keys!4035 newMap!16)) (index!3155 lt!41794))))))

(assert (= (and d!23463 res!45217) b!88285))

(declare-fun m!94145 () Bool)

(assert (=> d!23463 m!94145))

(assert (=> d!23463 m!93827))

(assert (=> b!88285 m!93577))

(assert (=> b!88285 m!93579))

(assert (=> b!88285 m!93577))

(assert (=> b!88285 m!93579))

(assert (=> b!88285 m!93581))

(assert (=> b!87932 d!23463))

(declare-fun d!23465 () Bool)

(declare-fun e!57517 () Bool)

(assert (=> d!23465 e!57517))

(declare-fun res!45220 () Bool)

(assert (=> d!23465 (=> (not res!45220) (not e!57517))))

(assert (=> d!23465 (= res!45220 (and (bvsge (index!3155 lt!41794) #b00000000000000000000000000000000) (bvslt (index!3155 lt!41794) (size!2170 (_values!2342 newMap!16)))))))

(declare-fun lt!42049 () Unit!2618)

(declare-fun choose!530 (array!4042 array!4044 (_ BitVec 32) (_ BitVec 32) V!3035 V!3035 (_ BitVec 32) (_ BitVec 64) V!3035 Int) Unit!2618)

(assert (=> d!23465 (= lt!42049 (choose!530 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) (index!3155 lt!41794) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579 (defaultEntry!2359 newMap!16)))))

(assert (=> d!23465 (validMask!0 (mask!6397 newMap!16))))

(assert (=> d!23465 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!32 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) (index!3155 lt!41794) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579 (defaultEntry!2359 newMap!16)) lt!42049)))

(declare-fun b!88288 () Bool)

(assert (=> b!88288 (= e!57517 (= (+!118 (getCurrentListMap!444 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) (getCurrentListMap!444 (_keys!4035 newMap!16) (array!4045 (store (arr!1925 (_values!2342 newMap!16)) (index!3155 lt!41794) (ValueCellFull!927 lt!41579)) (size!2170 (_values!2342 newMap!16))) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16))))))

(assert (= (and d!23465 res!45220) b!88288))

(assert (=> d!23465 m!93277))

(declare-fun m!94147 () Bool)

(assert (=> d!23465 m!94147))

(assert (=> d!23465 m!93827))

(assert (=> b!88288 m!93611))

(assert (=> b!88288 m!93611))

(declare-fun m!94149 () Bool)

(assert (=> b!88288 m!94149))

(assert (=> b!88288 m!93545))

(declare-fun m!94151 () Bool)

(assert (=> b!88288 m!94151))

(assert (=> b!87932 d!23465))

(declare-fun d!23467 () Bool)

(assert (=> d!23467 (= (validKeyInArray!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)) (and (not (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!87772 d!23467))

(declare-fun d!23469 () Bool)

(declare-fun e!57518 () Bool)

(assert (=> d!23469 e!57518))

(declare-fun res!45222 () Bool)

(assert (=> d!23469 (=> (not res!45222) (not e!57518))))

(declare-fun lt!42050 () ListLongMap!1491)

(assert (=> d!23469 (= res!45222 (contains!766 lt!42050 (_1!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(declare-fun lt!42051 () List!1556)

(assert (=> d!23469 (= lt!42050 (ListLongMap!1492 lt!42051))))

(declare-fun lt!42052 () Unit!2618)

(declare-fun lt!42053 () Unit!2618)

(assert (=> d!23469 (= lt!42052 lt!42053)))

(assert (=> d!23469 (= (getValueByKey!140 lt!42051 (_1!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))) (Some!145 (_2!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23469 (= lt!42053 (lemmaContainsTupThenGetReturnValue!59 lt!42051 (_1!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) (_2!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23469 (= lt!42051 (insertStrictlySorted!61 (toList!761 call!8453) (_1!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) (_2!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23469 (= (+!118 call!8453 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!42050)))

(declare-fun b!88289 () Bool)

(declare-fun res!45221 () Bool)

(assert (=> b!88289 (=> (not res!45221) (not e!57518))))

(assert (=> b!88289 (= res!45221 (= (getValueByKey!140 (toList!761 lt!42050) (_1!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))) (Some!145 (_2!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))))))))

(declare-fun b!88290 () Bool)

(assert (=> b!88290 (= e!57518 (contains!768 (toList!761 lt!42050) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))))))

(assert (= (and d!23469 res!45222) b!88289))

(assert (= (and b!88289 res!45221) b!88290))

(declare-fun m!94153 () Bool)

(assert (=> d!23469 m!94153))

(declare-fun m!94155 () Bool)

(assert (=> d!23469 m!94155))

(declare-fun m!94157 () Bool)

(assert (=> d!23469 m!94157))

(declare-fun m!94159 () Bool)

(assert (=> d!23469 m!94159))

(declare-fun m!94161 () Bool)

(assert (=> b!88289 m!94161))

(declare-fun m!94163 () Bool)

(assert (=> b!88290 m!94163))

(assert (=> b!88032 d!23469))

(declare-fun d!23471 () Bool)

(declare-fun e!57519 () Bool)

(assert (=> d!23471 e!57519))

(declare-fun res!45223 () Bool)

(assert (=> d!23471 (=> res!45223 e!57519)))

(declare-fun lt!42054 () Bool)

(assert (=> d!23471 (= res!45223 (not lt!42054))))

(declare-fun lt!42056 () Bool)

(assert (=> d!23471 (= lt!42054 lt!42056)))

(declare-fun lt!42055 () Unit!2618)

(declare-fun e!57520 () Unit!2618)

(assert (=> d!23471 (= lt!42055 e!57520)))

(declare-fun c!14600 () Bool)

(assert (=> d!23471 (= c!14600 lt!42056)))

(assert (=> d!23471 (= lt!42056 (containsKey!144 (toList!761 lt!41689) (_1!1130 lt!41591)))))

(assert (=> d!23471 (= (contains!766 lt!41689 (_1!1130 lt!41591)) lt!42054)))

(declare-fun b!88291 () Bool)

(declare-fun lt!42057 () Unit!2618)

(assert (=> b!88291 (= e!57520 lt!42057)))

(assert (=> b!88291 (= lt!42057 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 lt!41689) (_1!1130 lt!41591)))))

(assert (=> b!88291 (isDefined!94 (getValueByKey!140 (toList!761 lt!41689) (_1!1130 lt!41591)))))

(declare-fun b!88292 () Bool)

(declare-fun Unit!2636 () Unit!2618)

(assert (=> b!88292 (= e!57520 Unit!2636)))

(declare-fun b!88293 () Bool)

(assert (=> b!88293 (= e!57519 (isDefined!94 (getValueByKey!140 (toList!761 lt!41689) (_1!1130 lt!41591))))))

(assert (= (and d!23471 c!14600) b!88291))

(assert (= (and d!23471 (not c!14600)) b!88292))

(assert (= (and d!23471 (not res!45223)) b!88293))

(declare-fun m!94165 () Bool)

(assert (=> d!23471 m!94165))

(declare-fun m!94167 () Bool)

(assert (=> b!88291 m!94167))

(assert (=> b!88291 m!93451))

(assert (=> b!88291 m!93451))

(declare-fun m!94169 () Bool)

(assert (=> b!88291 m!94169))

(assert (=> b!88293 m!93451))

(assert (=> b!88293 m!93451))

(assert (=> b!88293 m!94169))

(assert (=> d!23305 d!23471))

(declare-fun b!88297 () Bool)

(declare-fun e!57522 () Option!146)

(assert (=> b!88297 (= e!57522 None!144)))

(declare-fun b!88295 () Bool)

(declare-fun e!57521 () Option!146)

(assert (=> b!88295 (= e!57521 e!57522)))

(declare-fun c!14602 () Bool)

(assert (=> b!88295 (= c!14602 (and ((_ is Cons!1552) lt!41690) (not (= (_1!1130 (h!2144 lt!41690)) (_1!1130 lt!41591)))))))

(declare-fun d!23473 () Bool)

(declare-fun c!14601 () Bool)

(assert (=> d!23473 (= c!14601 (and ((_ is Cons!1552) lt!41690) (= (_1!1130 (h!2144 lt!41690)) (_1!1130 lt!41591))))))

(assert (=> d!23473 (= (getValueByKey!140 lt!41690 (_1!1130 lt!41591)) e!57521)))

(declare-fun b!88296 () Bool)

(assert (=> b!88296 (= e!57522 (getValueByKey!140 (t!5302 lt!41690) (_1!1130 lt!41591)))))

(declare-fun b!88294 () Bool)

(assert (=> b!88294 (= e!57521 (Some!145 (_2!1130 (h!2144 lt!41690))))))

(assert (= (and d!23473 c!14601) b!88294))

(assert (= (and d!23473 (not c!14601)) b!88295))

(assert (= (and b!88295 c!14602) b!88296))

(assert (= (and b!88295 (not c!14602)) b!88297))

(declare-fun m!94171 () Bool)

(assert (=> b!88296 m!94171))

(assert (=> d!23305 d!23473))

(declare-fun d!23475 () Bool)

(assert (=> d!23475 (= (getValueByKey!140 lt!41690 (_1!1130 lt!41591)) (Some!145 (_2!1130 lt!41591)))))

(declare-fun lt!42058 () Unit!2618)

(assert (=> d!23475 (= lt!42058 (choose!526 lt!41690 (_1!1130 lt!41591) (_2!1130 lt!41591)))))

(declare-fun e!57523 () Bool)

(assert (=> d!23475 e!57523))

(declare-fun res!45224 () Bool)

(assert (=> d!23475 (=> (not res!45224) (not e!57523))))

(assert (=> d!23475 (= res!45224 (isStrictlySorted!294 lt!41690))))

(assert (=> d!23475 (= (lemmaContainsTupThenGetReturnValue!59 lt!41690 (_1!1130 lt!41591) (_2!1130 lt!41591)) lt!42058)))

(declare-fun b!88298 () Bool)

(declare-fun res!45225 () Bool)

(assert (=> b!88298 (=> (not res!45225) (not e!57523))))

(assert (=> b!88298 (= res!45225 (containsKey!144 lt!41690 (_1!1130 lt!41591)))))

(declare-fun b!88299 () Bool)

(assert (=> b!88299 (= e!57523 (contains!768 lt!41690 (tuple2!2241 (_1!1130 lt!41591) (_2!1130 lt!41591))))))

(assert (= (and d!23475 res!45224) b!88298))

(assert (= (and b!88298 res!45225) b!88299))

(assert (=> d!23475 m!93445))

(declare-fun m!94173 () Bool)

(assert (=> d!23475 m!94173))

(declare-fun m!94175 () Bool)

(assert (=> d!23475 m!94175))

(declare-fun m!94177 () Bool)

(assert (=> b!88298 m!94177))

(declare-fun m!94179 () Bool)

(assert (=> b!88299 m!94179))

(assert (=> d!23305 d!23475))

(declare-fun b!88300 () Bool)

(declare-fun e!57528 () List!1556)

(declare-fun call!8477 () List!1556)

(assert (=> b!88300 (= e!57528 call!8477)))

(declare-fun c!14606 () Bool)

(declare-fun b!88301 () Bool)

(declare-fun c!14605 () Bool)

(declare-fun e!57525 () List!1556)

(assert (=> b!88301 (= e!57525 (ite c!14606 (t!5302 (toList!761 lt!41587)) (ite c!14605 (Cons!1552 (h!2144 (toList!761 lt!41587)) (t!5302 (toList!761 lt!41587))) Nil!1553)))))

(declare-fun b!88302 () Bool)

(declare-fun e!57524 () List!1556)

(declare-fun call!8476 () List!1556)

(assert (=> b!88302 (= e!57524 call!8476)))

(declare-fun bm!8473 () Bool)

(assert (=> bm!8473 (= call!8477 call!8476)))

(declare-fun b!88303 () Bool)

(declare-fun e!57527 () Bool)

(declare-fun lt!42059 () List!1556)

(assert (=> b!88303 (= e!57527 (contains!768 lt!42059 (tuple2!2241 (_1!1130 lt!41591) (_2!1130 lt!41591))))))

(declare-fun bm!8474 () Bool)

(declare-fun call!8478 () List!1556)

(assert (=> bm!8474 (= call!8476 call!8478)))

(declare-fun d!23477 () Bool)

(assert (=> d!23477 e!57527))

(declare-fun res!45226 () Bool)

(assert (=> d!23477 (=> (not res!45226) (not e!57527))))

(assert (=> d!23477 (= res!45226 (isStrictlySorted!294 lt!42059))))

(declare-fun e!57526 () List!1556)

(assert (=> d!23477 (= lt!42059 e!57526)))

(declare-fun c!14603 () Bool)

(assert (=> d!23477 (= c!14603 (and ((_ is Cons!1552) (toList!761 lt!41587)) (bvslt (_1!1130 (h!2144 (toList!761 lt!41587))) (_1!1130 lt!41591))))))

(assert (=> d!23477 (isStrictlySorted!294 (toList!761 lt!41587))))

(assert (=> d!23477 (= (insertStrictlySorted!61 (toList!761 lt!41587) (_1!1130 lt!41591) (_2!1130 lt!41591)) lt!42059)))

(declare-fun b!88304 () Bool)

(assert (=> b!88304 (= e!57528 call!8477)))

(declare-fun b!88305 () Bool)

(assert (=> b!88305 (= c!14605 (and ((_ is Cons!1552) (toList!761 lt!41587)) (bvsgt (_1!1130 (h!2144 (toList!761 lt!41587))) (_1!1130 lt!41591))))))

(assert (=> b!88305 (= e!57524 e!57528)))

(declare-fun bm!8475 () Bool)

(assert (=> bm!8475 (= call!8478 ($colon$colon!72 e!57525 (ite c!14603 (h!2144 (toList!761 lt!41587)) (tuple2!2241 (_1!1130 lt!41591) (_2!1130 lt!41591)))))))

(declare-fun c!14604 () Bool)

(assert (=> bm!8475 (= c!14604 c!14603)))

(declare-fun b!88306 () Bool)

(assert (=> b!88306 (= e!57526 e!57524)))

(assert (=> b!88306 (= c!14606 (and ((_ is Cons!1552) (toList!761 lt!41587)) (= (_1!1130 (h!2144 (toList!761 lt!41587))) (_1!1130 lt!41591))))))

(declare-fun b!88307 () Bool)

(assert (=> b!88307 (= e!57525 (insertStrictlySorted!61 (t!5302 (toList!761 lt!41587)) (_1!1130 lt!41591) (_2!1130 lt!41591)))))

(declare-fun b!88308 () Bool)

(assert (=> b!88308 (= e!57526 call!8478)))

(declare-fun b!88309 () Bool)

(declare-fun res!45227 () Bool)

(assert (=> b!88309 (=> (not res!45227) (not e!57527))))

(assert (=> b!88309 (= res!45227 (containsKey!144 lt!42059 (_1!1130 lt!41591)))))

(assert (= (and d!23477 c!14603) b!88308))

(assert (= (and d!23477 (not c!14603)) b!88306))

(assert (= (and b!88306 c!14606) b!88302))

(assert (= (and b!88306 (not c!14606)) b!88305))

(assert (= (and b!88305 c!14605) b!88300))

(assert (= (and b!88305 (not c!14605)) b!88304))

(assert (= (or b!88300 b!88304) bm!8473))

(assert (= (or b!88302 bm!8473) bm!8474))

(assert (= (or b!88308 bm!8474) bm!8475))

(assert (= (and bm!8475 c!14604) b!88307))

(assert (= (and bm!8475 (not c!14604)) b!88301))

(assert (= (and d!23477 res!45226) b!88309))

(assert (= (and b!88309 res!45227) b!88303))

(declare-fun m!94181 () Bool)

(assert (=> bm!8475 m!94181))

(declare-fun m!94183 () Bool)

(assert (=> b!88303 m!94183))

(declare-fun m!94185 () Bool)

(assert (=> b!88309 m!94185))

(declare-fun m!94187 () Bool)

(assert (=> d!23477 m!94187))

(assert (=> d!23477 m!93919))

(declare-fun m!94189 () Bool)

(assert (=> b!88307 m!94189))

(assert (=> d!23305 d!23477))

(declare-fun d!23479 () Bool)

(declare-fun res!45228 () Bool)

(declare-fun e!57529 () Bool)

(assert (=> d!23479 (=> res!45228 e!57529)))

(assert (=> d!23479 (= res!45228 (= (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(assert (=> d!23479 (= (arrayContainsKey!0 (_keys!4035 newMap!16) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b00000000000000000000000000000000) e!57529)))

(declare-fun b!88310 () Bool)

(declare-fun e!57530 () Bool)

(assert (=> b!88310 (= e!57529 e!57530)))

(declare-fun res!45229 () Bool)

(assert (=> b!88310 (=> (not res!45229) (not e!57530))))

(assert (=> b!88310 (= res!45229 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2169 (_keys!4035 newMap!16))))))

(declare-fun b!88311 () Bool)

(assert (=> b!88311 (= e!57530 (arrayContainsKey!0 (_keys!4035 newMap!16) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!23479 (not res!45228)) b!88310))

(assert (= (and b!88310 res!45229) b!88311))

(assert (=> d!23479 m!94089))

(assert (=> b!88311 m!93277))

(declare-fun m!94191 () Bool)

(assert (=> b!88311 m!94191))

(assert (=> bm!8419 d!23479))

(declare-fun d!23481 () Bool)

(declare-fun e!57531 () Bool)

(assert (=> d!23481 e!57531))

(declare-fun res!45230 () Bool)

(assert (=> d!23481 (=> res!45230 e!57531)))

(declare-fun lt!42060 () Bool)

(assert (=> d!23481 (= res!45230 (not lt!42060))))

(declare-fun lt!42062 () Bool)

(assert (=> d!23481 (= lt!42060 lt!42062)))

(declare-fun lt!42061 () Unit!2618)

(declare-fun e!57532 () Unit!2618)

(assert (=> d!23481 (= lt!42061 e!57532)))

(declare-fun c!14607 () Bool)

(assert (=> d!23481 (= c!14607 lt!42062)))

(assert (=> d!23481 (= lt!42062 (containsKey!144 (toList!761 call!8415) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(assert (=> d!23481 (= (contains!766 call!8415 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)) lt!42060)))

(declare-fun b!88312 () Bool)

(declare-fun lt!42063 () Unit!2618)

(assert (=> b!88312 (= e!57532 lt!42063)))

(assert (=> b!88312 (= lt!42063 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 call!8415) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(assert (=> b!88312 (isDefined!94 (getValueByKey!140 (toList!761 call!8415) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun b!88313 () Bool)

(declare-fun Unit!2637 () Unit!2618)

(assert (=> b!88313 (= e!57532 Unit!2637)))

(declare-fun b!88314 () Bool)

(assert (=> b!88314 (= e!57531 (isDefined!94 (getValueByKey!140 (toList!761 call!8415) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355))))))

(assert (= (and d!23481 c!14607) b!88312))

(assert (= (and d!23481 (not c!14607)) b!88313))

(assert (= (and d!23481 (not res!45230)) b!88314))

(assert (=> d!23481 m!93277))

(declare-fun m!94193 () Bool)

(assert (=> d!23481 m!94193))

(assert (=> b!88312 m!93277))

(declare-fun m!94195 () Bool)

(assert (=> b!88312 m!94195))

(assert (=> b!88312 m!93277))

(declare-fun m!94197 () Bool)

(assert (=> b!88312 m!94197))

(assert (=> b!88312 m!94197))

(declare-fun m!94199 () Bool)

(assert (=> b!88312 m!94199))

(assert (=> b!88314 m!93277))

(assert (=> b!88314 m!94197))

(assert (=> b!88314 m!94197))

(assert (=> b!88314 m!94199))

(assert (=> b!87920 d!23481))

(declare-fun d!23483 () Bool)

(declare-fun e!57533 () Bool)

(assert (=> d!23483 e!57533))

(declare-fun res!45231 () Bool)

(assert (=> d!23483 (=> res!45231 e!57533)))

(declare-fun lt!42064 () Bool)

(assert (=> d!23483 (= res!45231 (not lt!42064))))

(declare-fun lt!42066 () Bool)

(assert (=> d!23483 (= lt!42064 lt!42066)))

(declare-fun lt!42065 () Unit!2618)

(declare-fun e!57534 () Unit!2618)

(assert (=> d!23483 (= lt!42065 e!57534)))

(declare-fun c!14608 () Bool)

(assert (=> d!23483 (= c!14608 lt!42066)))

(assert (=> d!23483 (= lt!42066 (containsKey!144 (toList!761 lt!41693) (_1!1130 lt!41592)))))

(assert (=> d!23483 (= (contains!766 lt!41693 (_1!1130 lt!41592)) lt!42064)))

(declare-fun b!88315 () Bool)

(declare-fun lt!42067 () Unit!2618)

(assert (=> b!88315 (= e!57534 lt!42067)))

(assert (=> b!88315 (= lt!42067 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 lt!41693) (_1!1130 lt!41592)))))

(assert (=> b!88315 (isDefined!94 (getValueByKey!140 (toList!761 lt!41693) (_1!1130 lt!41592)))))

(declare-fun b!88316 () Bool)

(declare-fun Unit!2638 () Unit!2618)

(assert (=> b!88316 (= e!57534 Unit!2638)))

(declare-fun b!88317 () Bool)

(assert (=> b!88317 (= e!57533 (isDefined!94 (getValueByKey!140 (toList!761 lt!41693) (_1!1130 lt!41592))))))

(assert (= (and d!23483 c!14608) b!88315))

(assert (= (and d!23483 (not c!14608)) b!88316))

(assert (= (and d!23483 (not res!45231)) b!88317))

(declare-fun m!94201 () Bool)

(assert (=> d!23483 m!94201))

(declare-fun m!94203 () Bool)

(assert (=> b!88315 m!94203))

(assert (=> b!88315 m!93463))

(assert (=> b!88315 m!93463))

(declare-fun m!94205 () Bool)

(assert (=> b!88315 m!94205))

(assert (=> b!88317 m!93463))

(assert (=> b!88317 m!93463))

(assert (=> b!88317 m!94205))

(assert (=> d!23307 d!23483))

(declare-fun b!88321 () Bool)

(declare-fun e!57536 () Option!146)

(assert (=> b!88321 (= e!57536 None!144)))

(declare-fun b!88319 () Bool)

(declare-fun e!57535 () Option!146)

(assert (=> b!88319 (= e!57535 e!57536)))

(declare-fun c!14610 () Bool)

(assert (=> b!88319 (= c!14610 (and ((_ is Cons!1552) lt!41694) (not (= (_1!1130 (h!2144 lt!41694)) (_1!1130 lt!41592)))))))

(declare-fun d!23485 () Bool)

(declare-fun c!14609 () Bool)

(assert (=> d!23485 (= c!14609 (and ((_ is Cons!1552) lt!41694) (= (_1!1130 (h!2144 lt!41694)) (_1!1130 lt!41592))))))

(assert (=> d!23485 (= (getValueByKey!140 lt!41694 (_1!1130 lt!41592)) e!57535)))

(declare-fun b!88320 () Bool)

(assert (=> b!88320 (= e!57536 (getValueByKey!140 (t!5302 lt!41694) (_1!1130 lt!41592)))))

(declare-fun b!88318 () Bool)

(assert (=> b!88318 (= e!57535 (Some!145 (_2!1130 (h!2144 lt!41694))))))

(assert (= (and d!23485 c!14609) b!88318))

(assert (= (and d!23485 (not c!14609)) b!88319))

(assert (= (and b!88319 c!14610) b!88320))

(assert (= (and b!88319 (not c!14610)) b!88321))

(declare-fun m!94207 () Bool)

(assert (=> b!88320 m!94207))

(assert (=> d!23307 d!23485))

(declare-fun d!23487 () Bool)

(assert (=> d!23487 (= (getValueByKey!140 lt!41694 (_1!1130 lt!41592)) (Some!145 (_2!1130 lt!41592)))))

(declare-fun lt!42068 () Unit!2618)

(assert (=> d!23487 (= lt!42068 (choose!526 lt!41694 (_1!1130 lt!41592) (_2!1130 lt!41592)))))

(declare-fun e!57537 () Bool)

(assert (=> d!23487 e!57537))

(declare-fun res!45232 () Bool)

(assert (=> d!23487 (=> (not res!45232) (not e!57537))))

(assert (=> d!23487 (= res!45232 (isStrictlySorted!294 lt!41694))))

(assert (=> d!23487 (= (lemmaContainsTupThenGetReturnValue!59 lt!41694 (_1!1130 lt!41592) (_2!1130 lt!41592)) lt!42068)))

(declare-fun b!88322 () Bool)

(declare-fun res!45233 () Bool)

(assert (=> b!88322 (=> (not res!45233) (not e!57537))))

(assert (=> b!88322 (= res!45233 (containsKey!144 lt!41694 (_1!1130 lt!41592)))))

(declare-fun b!88323 () Bool)

(assert (=> b!88323 (= e!57537 (contains!768 lt!41694 (tuple2!2241 (_1!1130 lt!41592) (_2!1130 lt!41592))))))

(assert (= (and d!23487 res!45232) b!88322))

(assert (= (and b!88322 res!45233) b!88323))

(assert (=> d!23487 m!93457))

(declare-fun m!94209 () Bool)

(assert (=> d!23487 m!94209))

(declare-fun m!94211 () Bool)

(assert (=> d!23487 m!94211))

(declare-fun m!94213 () Bool)

(assert (=> b!88322 m!94213))

(declare-fun m!94215 () Bool)

(assert (=> b!88323 m!94215))

(assert (=> d!23307 d!23487))

(declare-fun b!88324 () Bool)

(declare-fun e!57542 () List!1556)

(declare-fun call!8480 () List!1556)

(assert (=> b!88324 (= e!57542 call!8480)))

(declare-fun c!14614 () Bool)

(declare-fun e!57539 () List!1556)

(declare-fun b!88325 () Bool)

(declare-fun c!14613 () Bool)

(assert (=> b!88325 (= e!57539 (ite c!14614 (t!5302 (toList!761 lt!41585)) (ite c!14613 (Cons!1552 (h!2144 (toList!761 lt!41585)) (t!5302 (toList!761 lt!41585))) Nil!1553)))))

(declare-fun b!88326 () Bool)

(declare-fun e!57538 () List!1556)

(declare-fun call!8479 () List!1556)

(assert (=> b!88326 (= e!57538 call!8479)))

(declare-fun bm!8476 () Bool)

(assert (=> bm!8476 (= call!8480 call!8479)))

(declare-fun b!88327 () Bool)

(declare-fun e!57541 () Bool)

(declare-fun lt!42069 () List!1556)

(assert (=> b!88327 (= e!57541 (contains!768 lt!42069 (tuple2!2241 (_1!1130 lt!41592) (_2!1130 lt!41592))))))

(declare-fun bm!8477 () Bool)

(declare-fun call!8481 () List!1556)

(assert (=> bm!8477 (= call!8479 call!8481)))

(declare-fun d!23489 () Bool)

(assert (=> d!23489 e!57541))

(declare-fun res!45234 () Bool)

(assert (=> d!23489 (=> (not res!45234) (not e!57541))))

(assert (=> d!23489 (= res!45234 (isStrictlySorted!294 lt!42069))))

(declare-fun e!57540 () List!1556)

(assert (=> d!23489 (= lt!42069 e!57540)))

(declare-fun c!14611 () Bool)

(assert (=> d!23489 (= c!14611 (and ((_ is Cons!1552) (toList!761 lt!41585)) (bvslt (_1!1130 (h!2144 (toList!761 lt!41585))) (_1!1130 lt!41592))))))

(assert (=> d!23489 (isStrictlySorted!294 (toList!761 lt!41585))))

(assert (=> d!23489 (= (insertStrictlySorted!61 (toList!761 lt!41585) (_1!1130 lt!41592) (_2!1130 lt!41592)) lt!42069)))

(declare-fun b!88328 () Bool)

(assert (=> b!88328 (= e!57542 call!8480)))

(declare-fun b!88329 () Bool)

(assert (=> b!88329 (= c!14613 (and ((_ is Cons!1552) (toList!761 lt!41585)) (bvsgt (_1!1130 (h!2144 (toList!761 lt!41585))) (_1!1130 lt!41592))))))

(assert (=> b!88329 (= e!57538 e!57542)))

(declare-fun bm!8478 () Bool)

(assert (=> bm!8478 (= call!8481 ($colon$colon!72 e!57539 (ite c!14611 (h!2144 (toList!761 lt!41585)) (tuple2!2241 (_1!1130 lt!41592) (_2!1130 lt!41592)))))))

(declare-fun c!14612 () Bool)

(assert (=> bm!8478 (= c!14612 c!14611)))

(declare-fun b!88330 () Bool)

(assert (=> b!88330 (= e!57540 e!57538)))

(assert (=> b!88330 (= c!14614 (and ((_ is Cons!1552) (toList!761 lt!41585)) (= (_1!1130 (h!2144 (toList!761 lt!41585))) (_1!1130 lt!41592))))))

(declare-fun b!88331 () Bool)

(assert (=> b!88331 (= e!57539 (insertStrictlySorted!61 (t!5302 (toList!761 lt!41585)) (_1!1130 lt!41592) (_2!1130 lt!41592)))))

(declare-fun b!88332 () Bool)

(assert (=> b!88332 (= e!57540 call!8481)))

(declare-fun b!88333 () Bool)

(declare-fun res!45235 () Bool)

(assert (=> b!88333 (=> (not res!45235) (not e!57541))))

(assert (=> b!88333 (= res!45235 (containsKey!144 lt!42069 (_1!1130 lt!41592)))))

(assert (= (and d!23489 c!14611) b!88332))

(assert (= (and d!23489 (not c!14611)) b!88330))

(assert (= (and b!88330 c!14614) b!88326))

(assert (= (and b!88330 (not c!14614)) b!88329))

(assert (= (and b!88329 c!14613) b!88324))

(assert (= (and b!88329 (not c!14613)) b!88328))

(assert (= (or b!88324 b!88328) bm!8476))

(assert (= (or b!88326 bm!8476) bm!8477))

(assert (= (or b!88332 bm!8477) bm!8478))

(assert (= (and bm!8478 c!14612) b!88331))

(assert (= (and bm!8478 (not c!14612)) b!88325))

(assert (= (and d!23489 res!45234) b!88333))

(assert (= (and b!88333 res!45235) b!88327))

(declare-fun m!94217 () Bool)

(assert (=> bm!8478 m!94217))

(declare-fun m!94219 () Bool)

(assert (=> b!88327 m!94219))

(declare-fun m!94221 () Bool)

(assert (=> b!88333 m!94221))

(declare-fun m!94223 () Bool)

(assert (=> d!23489 m!94223))

(declare-fun m!94225 () Bool)

(assert (=> d!23489 m!94225))

(declare-fun m!94227 () Bool)

(assert (=> b!88331 m!94227))

(assert (=> d!23307 d!23489))

(declare-fun b!88342 () Bool)

(declare-fun e!57548 () (_ BitVec 32))

(declare-fun call!8484 () (_ BitVec 32))

(assert (=> b!88342 (= e!57548 (bvadd #b00000000000000000000000000000001 call!8484))))

(declare-fun b!88343 () Bool)

(assert (=> b!88343 (= e!57548 call!8484)))

(declare-fun bm!8481 () Bool)

(assert (=> bm!8481 (= call!8484 (arrayCountValidKeys!0 (_keys!4035 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2169 (_keys!4035 newMap!16))))))

(declare-fun b!88344 () Bool)

(declare-fun e!57547 () (_ BitVec 32))

(assert (=> b!88344 (= e!57547 #b00000000000000000000000000000000)))

(declare-fun d!23491 () Bool)

(declare-fun lt!42072 () (_ BitVec 32))

(assert (=> d!23491 (and (bvsge lt!42072 #b00000000000000000000000000000000) (bvsle lt!42072 (bvsub (size!2169 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!23491 (= lt!42072 e!57547)))

(declare-fun c!14620 () Bool)

(assert (=> d!23491 (= c!14620 (bvsge #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))

(assert (=> d!23491 (and (bvsle #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2169 (_keys!4035 newMap!16)) (size!2169 (_keys!4035 newMap!16))))))

(assert (=> d!23491 (= (arrayCountValidKeys!0 (_keys!4035 newMap!16) #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))) lt!42072)))

(declare-fun b!88345 () Bool)

(assert (=> b!88345 (= e!57547 e!57548)))

(declare-fun c!14619 () Bool)

(assert (=> b!88345 (= c!14619 (validKeyInArray!0 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!23491 c!14620) b!88344))

(assert (= (and d!23491 (not c!14620)) b!88345))

(assert (= (and b!88345 c!14619) b!88342))

(assert (= (and b!88345 (not c!14619)) b!88343))

(assert (= (or b!88342 b!88343) bm!8481))

(declare-fun m!94229 () Bool)

(assert (=> bm!8481 m!94229))

(assert (=> b!88345 m!94089))

(assert (=> b!88345 m!94089))

(assert (=> b!88345 m!94099))

(assert (=> b!88041 d!23491))

(declare-fun b!88380 () Bool)

(declare-fun e!57566 () Bool)

(declare-fun call!8494 () Bool)

(assert (=> b!88380 (= e!57566 (not call!8494))))

(declare-fun b!88381 () Bool)

(declare-fun res!45262 () Bool)

(assert (=> b!88381 (=> (not res!45262) (not e!57566))))

(declare-fun call!8495 () Bool)

(assert (=> b!88381 (= res!45262 call!8495)))

(declare-fun e!57569 () Bool)

(assert (=> b!88381 (= e!57569 e!57566)))

(declare-fun b!88382 () Bool)

(declare-fun e!57570 () Bool)

(assert (=> b!88382 (= e!57570 (not call!8494))))

(declare-fun b!88384 () Bool)

(declare-fun e!57572 () Unit!2618)

(declare-fun Unit!2639 () Unit!2618)

(assert (=> b!88384 (= e!57572 Unit!2639)))

(declare-fun lt!42156 () SeekEntryResult!254)

(declare-fun call!8496 () Bool)

(declare-fun c!14629 () Bool)

(declare-fun lt!42146 () SeekEntryResult!254)

(declare-fun c!14632 () Bool)

(declare-fun bm!8490 () Bool)

(assert (=> bm!8490 (= call!8496 (inRange!0 (ite c!14629 (index!3155 lt!42146) (ite c!14632 (index!3154 lt!42156) (index!3157 lt!42156))) (mask!6397 newMap!16)))))

(declare-fun bm!8491 () Bool)

(assert (=> bm!8491 (= call!8494 (arrayContainsKey!0 (_keys!4035 newMap!16) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!88385 () Bool)

(declare-fun res!45259 () Bool)

(assert (=> b!88385 (= res!45259 (= (select (arr!1924 (_keys!4035 newMap!16)) (index!3157 lt!42156)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!88385 (=> (not res!45259) (not e!57570))))

(declare-fun b!88386 () Bool)

(declare-fun res!45256 () Bool)

(declare-fun e!57565 () Bool)

(assert (=> b!88386 (=> (not res!45256) (not e!57565))))

(declare-fun lt!42140 () tuple2!2242)

(assert (=> b!88386 (= res!45256 (contains!766 (map!1198 (_2!1131 lt!42140)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun b!88387 () Bool)

(declare-fun e!57567 () Bool)

(assert (=> b!88387 (= e!57567 ((_ is Undefined!254) lt!42156))))

(declare-fun d!23493 () Bool)

(assert (=> d!23493 e!57565))

(declare-fun res!45255 () Bool)

(assert (=> d!23493 (=> (not res!45255) (not e!57565))))

(assert (=> d!23493 (= res!45255 (_1!1131 lt!42140))))

(assert (=> d!23493 (= lt!42140 (tuple2!2243 true (LongMapFixedSize!763 (defaultEntry!2359 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) (bvadd (_size!430 newMap!16) #b00000000000000000000000000000001) (array!4043 (store (arr!1924 (_keys!4035 newMap!16)) (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)) (size!2169 (_keys!4035 newMap!16))) (array!4045 (store (arr!1925 (_values!2342 newMap!16)) (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794)) (ValueCellFull!927 lt!41579)) (size!2170 (_values!2342 newMap!16))) (_vacant!430 newMap!16))))))

(declare-fun lt!42159 () Unit!2618)

(declare-fun lt!42149 () Unit!2618)

(assert (=> d!23493 (= lt!42159 lt!42149)))

(declare-fun lt!42137 () array!4044)

(declare-fun lt!42147 () array!4042)

(assert (=> d!23493 (contains!766 (getCurrentListMap!444 lt!42147 lt!42137 (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)) (select (store (arr!1924 (_keys!4035 newMap!16)) (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)) (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794))))))

(assert (=> d!23493 (= lt!42149 (lemmaValidKeyInArrayIsInListMap!90 lt!42147 lt!42137 (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794)) (defaultEntry!2359 newMap!16)))))

(assert (=> d!23493 (= lt!42137 (array!4045 (store (arr!1925 (_values!2342 newMap!16)) (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794)) (ValueCellFull!927 lt!41579)) (size!2170 (_values!2342 newMap!16))))))

(assert (=> d!23493 (= lt!42147 (array!4043 (store (arr!1924 (_keys!4035 newMap!16)) (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)) (size!2169 (_keys!4035 newMap!16))))))

(declare-fun lt!42162 () Unit!2618)

(declare-fun lt!42154 () Unit!2618)

(assert (=> d!23493 (= lt!42162 lt!42154)))

(declare-fun lt!42161 () array!4042)

(assert (=> d!23493 (= (arrayCountValidKeys!0 lt!42161 (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794)) (bvadd (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!4042 (_ BitVec 32)) Unit!2618)

(assert (=> d!23493 (= lt!42154 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!42161 (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794))))))

(assert (=> d!23493 (= lt!42161 (array!4043 (store (arr!1924 (_keys!4035 newMap!16)) (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)) (size!2169 (_keys!4035 newMap!16))))))

(declare-fun lt!42144 () Unit!2618)

(declare-fun lt!42148 () Unit!2618)

(assert (=> d!23493 (= lt!42144 lt!42148)))

(declare-fun lt!42158 () array!4042)

(assert (=> d!23493 (arrayContainsKey!0 lt!42158 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(assert (=> d!23493 (= lt!42148 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!42158 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794))))))

(assert (=> d!23493 (= lt!42158 (array!4043 (store (arr!1924 (_keys!4035 newMap!16)) (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)) (size!2169 (_keys!4035 newMap!16))))))

(declare-fun lt!42138 () Unit!2618)

(declare-fun lt!42145 () Unit!2618)

(assert (=> d!23493 (= lt!42138 lt!42145)))

(assert (=> d!23493 (= (+!118 (getCurrentListMap!444 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) (getCurrentListMap!444 (array!4043 (store (arr!1924 (_keys!4035 newMap!16)) (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)) (size!2169 (_keys!4035 newMap!16))) (array!4045 (store (arr!1925 (_values!2342 newMap!16)) (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794)) (ValueCellFull!927 lt!41579)) (size!2170 (_values!2342 newMap!16))) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!20 (array!4042 array!4044 (_ BitVec 32) (_ BitVec 32) V!3035 V!3035 (_ BitVec 32) (_ BitVec 64) V!3035 Int) Unit!2618)

(assert (=> d!23493 (= lt!42145 (lemmaAddValidKeyToArrayThenAddPairToListMap!20 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!42151 () Unit!2618)

(declare-fun lt!42155 () Unit!2618)

(assert (=> d!23493 (= lt!42151 lt!42155)))

(assert (=> d!23493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4043 (store (arr!1924 (_keys!4035 newMap!16)) (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)) (size!2169 (_keys!4035 newMap!16))) (mask!6397 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!4042 (_ BitVec 32) (_ BitVec 32)) Unit!2618)

(assert (=> d!23493 (= lt!42155 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (_keys!4035 newMap!16) (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794)) (mask!6397 newMap!16)))))

(declare-fun lt!42150 () Unit!2618)

(declare-fun lt!42143 () Unit!2618)

(assert (=> d!23493 (= lt!42150 lt!42143)))

(assert (=> d!23493 (= (arrayCountValidKeys!0 (array!4043 (store (arr!1924 (_keys!4035 newMap!16)) (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)) (size!2169 (_keys!4035 newMap!16))) #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!4035 newMap!16) #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!4042 (_ BitVec 32) (_ BitVec 64)) Unit!2618)

(assert (=> d!23493 (= lt!42143 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!4035 newMap!16) (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun lt!42160 () Unit!2618)

(declare-fun lt!42141 () Unit!2618)

(assert (=> d!23493 (= lt!42160 lt!42141)))

(declare-fun lt!42139 () List!1557)

(declare-fun lt!42133 () (_ BitVec 32))

(assert (=> d!23493 (arrayNoDuplicates!0 (array!4043 (store (arr!1924 (_keys!4035 newMap!16)) (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)) (size!2169 (_keys!4035 newMap!16))) lt!42133 lt!42139)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!4042 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1557) Unit!2618)

(assert (=> d!23493 (= lt!42141 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!4035 newMap!16) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794)) lt!42133 lt!42139))))

(assert (=> d!23493 (= lt!42139 Nil!1554)))

(assert (=> d!23493 (= lt!42133 #b00000000000000000000000000000000)))

(declare-fun lt!42134 () Unit!2618)

(assert (=> d!23493 (= lt!42134 e!57572)))

(declare-fun c!14630 () Bool)

(assert (=> d!23493 (= c!14630 (arrayContainsKey!0 (_keys!4035 newMap!16) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!42157 () Unit!2618)

(declare-fun e!57568 () Unit!2618)

(assert (=> d!23493 (= lt!42157 e!57568)))

(assert (=> d!23493 (= c!14629 (contains!766 (getCurrentListMap!444 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(assert (=> d!23493 (valid!330 newMap!16)))

(assert (=> d!23493 (= (updateHelperNewKey!32 newMap!16 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579 (ite c!14510 (index!3157 lt!41794) (index!3154 lt!41794))) lt!42140)))

(declare-fun b!88383 () Bool)

(assert (=> b!88383 (= e!57565 (= (map!1198 (_2!1131 lt!42140)) (+!118 (map!1198 newMap!16) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(declare-fun b!88388 () Bool)

(declare-fun res!45254 () Bool)

(assert (=> b!88388 (=> (not res!45254) (not e!57566))))

(assert (=> b!88388 (= res!45254 (= (select (arr!1924 (_keys!4035 newMap!16)) (index!3154 lt!42156)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!88389 () Bool)

(declare-fun res!45261 () Bool)

(assert (=> b!88389 (=> (not res!45261) (not e!57565))))

(assert (=> b!88389 (= res!45261 (valid!330 (_2!1131 lt!42140)))))

(declare-fun b!88390 () Bool)

(declare-fun Unit!2640 () Unit!2618)

(assert (=> b!88390 (= e!57568 Unit!2640)))

(declare-fun lt!42135 () Unit!2618)

(assert (=> b!88390 (= lt!42135 (lemmaInListMapThenSeekEntryOrOpenFindsIt!32 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (defaultEntry!2359 newMap!16)))))

(declare-fun call!8493 () SeekEntryResult!254)

(assert (=> b!88390 (= lt!42146 call!8493)))

(declare-fun res!45258 () Bool)

(assert (=> b!88390 (= res!45258 ((_ is Found!254) lt!42146))))

(declare-fun e!57571 () Bool)

(assert (=> b!88390 (=> (not res!45258) (not e!57571))))

(assert (=> b!88390 e!57571))

(declare-fun lt!42153 () Unit!2618)

(assert (=> b!88390 (= lt!42153 lt!42135)))

(assert (=> b!88390 false))

(declare-fun b!88391 () Bool)

(declare-fun c!14631 () Bool)

(assert (=> b!88391 (= c!14631 ((_ is MissingVacant!254) lt!42156))))

(assert (=> b!88391 (= e!57569 e!57567)))

(declare-fun bm!8492 () Bool)

(assert (=> bm!8492 (= call!8495 call!8496)))

(declare-fun b!88392 () Bool)

(declare-fun Unit!2641 () Unit!2618)

(assert (=> b!88392 (= e!57572 Unit!2641)))

(declare-fun lt!42142 () Unit!2618)

(declare-fun lemmaArrayContainsKeyThenInListMap!20 (array!4042 array!4044 (_ BitVec 32) (_ BitVec 32) V!3035 V!3035 (_ BitVec 64) (_ BitVec 32) Int) Unit!2618)

(assert (=> b!88392 (= lt!42142 (lemmaArrayContainsKeyThenInListMap!20 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(assert (=> b!88392 (contains!766 (getCurrentListMap!444 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355))))

(declare-fun lt!42152 () Unit!2618)

(assert (=> b!88392 (= lt!42152 lt!42142)))

(assert (=> b!88392 false))

(declare-fun b!88393 () Bool)

(declare-fun lt!42136 () Unit!2618)

(assert (=> b!88393 (= e!57568 lt!42136)))

(assert (=> b!88393 (= lt!42136 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!32 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (defaultEntry!2359 newMap!16)))))

(assert (=> b!88393 (= lt!42156 call!8493)))

(assert (=> b!88393 (= c!14632 ((_ is MissingZero!254) lt!42156))))

(assert (=> b!88393 e!57569))

(declare-fun b!88394 () Bool)

(assert (=> b!88394 (= e!57571 (= (select (arr!1924 (_keys!4035 newMap!16)) (index!3155 lt!42146)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun b!88395 () Bool)

(declare-fun res!45257 () Bool)

(assert (=> b!88395 (= res!45257 call!8496)))

(assert (=> b!88395 (=> (not res!45257) (not e!57571))))

(declare-fun bm!8493 () Bool)

(assert (=> bm!8493 (= call!8493 (seekEntryOrOpen!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (_keys!4035 newMap!16) (mask!6397 newMap!16)))))

(declare-fun b!88396 () Bool)

(assert (=> b!88396 (= e!57567 e!57570)))

(declare-fun res!45260 () Bool)

(assert (=> b!88396 (= res!45260 call!8495)))

(assert (=> b!88396 (=> (not res!45260) (not e!57570))))

(assert (= (and d!23493 c!14629) b!88390))

(assert (= (and d!23493 (not c!14629)) b!88393))

(assert (= (and b!88390 res!45258) b!88395))

(assert (= (and b!88395 res!45257) b!88394))

(assert (= (and b!88393 c!14632) b!88381))

(assert (= (and b!88393 (not c!14632)) b!88391))

(assert (= (and b!88381 res!45262) b!88388))

(assert (= (and b!88388 res!45254) b!88380))

(assert (= (and b!88391 c!14631) b!88396))

(assert (= (and b!88391 (not c!14631)) b!88387))

(assert (= (and b!88396 res!45260) b!88385))

(assert (= (and b!88385 res!45259) b!88382))

(assert (= (or b!88381 b!88396) bm!8492))

(assert (= (or b!88380 b!88382) bm!8491))

(assert (= (or b!88395 bm!8492) bm!8490))

(assert (= (or b!88390 b!88393) bm!8493))

(assert (= (and d!23493 c!14630) b!88392))

(assert (= (and d!23493 (not c!14630)) b!88384))

(assert (= (and d!23493 res!45255) b!88389))

(assert (= (and b!88389 res!45261) b!88386))

(assert (= (and b!88386 res!45256) b!88383))

(declare-fun m!94231 () Bool)

(assert (=> d!23493 m!94231))

(assert (=> d!23493 m!93277))

(declare-fun m!94233 () Bool)

(assert (=> d!23493 m!94233))

(assert (=> d!23493 m!93661))

(assert (=> d!23493 m!93277))

(declare-fun m!94235 () Bool)

(assert (=> d!23493 m!94235))

(assert (=> d!23493 m!93277))

(assert (=> d!23493 m!93587))

(declare-fun m!94237 () Bool)

(assert (=> d!23493 m!94237))

(declare-fun m!94239 () Bool)

(assert (=> d!23493 m!94239))

(declare-fun m!94241 () Bool)

(assert (=> d!23493 m!94241))

(declare-fun m!94243 () Bool)

(assert (=> d!23493 m!94243))

(assert (=> d!23493 m!94237))

(declare-fun m!94245 () Bool)

(assert (=> d!23493 m!94245))

(declare-fun m!94247 () Bool)

(assert (=> d!23493 m!94247))

(assert (=> d!23493 m!93611))

(assert (=> d!23493 m!94149))

(assert (=> d!23493 m!93277))

(declare-fun m!94249 () Bool)

(assert (=> d!23493 m!94249))

(assert (=> d!23493 m!93611))

(assert (=> d!23493 m!93611))

(assert (=> d!23493 m!93277))

(declare-fun m!94251 () Bool)

(assert (=> d!23493 m!94251))

(declare-fun m!94253 () Bool)

(assert (=> d!23493 m!94253))

(assert (=> d!23493 m!93277))

(declare-fun m!94255 () Bool)

(assert (=> d!23493 m!94255))

(assert (=> d!23493 m!93277))

(declare-fun m!94257 () Bool)

(assert (=> d!23493 m!94257))

(assert (=> d!23493 m!93305))

(declare-fun m!94259 () Bool)

(assert (=> d!23493 m!94259))

(assert (=> d!23493 m!94239))

(declare-fun m!94261 () Bool)

(assert (=> d!23493 m!94261))

(declare-fun m!94263 () Bool)

(assert (=> d!23493 m!94263))

(assert (=> d!23493 m!93277))

(declare-fun m!94265 () Bool)

(assert (=> d!23493 m!94265))

(declare-fun m!94267 () Bool)

(assert (=> d!23493 m!94267))

(declare-fun m!94269 () Bool)

(assert (=> b!88385 m!94269))

(assert (=> bm!8493 m!93277))

(assert (=> bm!8493 m!93569))

(declare-fun m!94271 () Bool)

(assert (=> b!88394 m!94271))

(declare-fun m!94273 () Bool)

(assert (=> b!88383 m!94273))

(assert (=> b!88383 m!93307))

(assert (=> b!88383 m!93307))

(declare-fun m!94275 () Bool)

(assert (=> b!88383 m!94275))

(assert (=> b!88392 m!93277))

(declare-fun m!94277 () Bool)

(assert (=> b!88392 m!94277))

(assert (=> b!88392 m!93611))

(assert (=> b!88392 m!93611))

(assert (=> b!88392 m!93277))

(assert (=> b!88392 m!94251))

(declare-fun m!94279 () Bool)

(assert (=> b!88389 m!94279))

(assert (=> b!88390 m!93277))

(assert (=> b!88390 m!93555))

(assert (=> b!88393 m!93277))

(assert (=> b!88393 m!93583))

(assert (=> b!88386 m!94273))

(assert (=> b!88386 m!94273))

(assert (=> b!88386 m!93277))

(declare-fun m!94281 () Bool)

(assert (=> b!88386 m!94281))

(declare-fun m!94283 () Bool)

(assert (=> bm!8490 m!94283))

(assert (=> bm!8491 m!93277))

(assert (=> bm!8491 m!93587))

(declare-fun m!94285 () Bool)

(assert (=> b!88388 m!94285))

(assert (=> bm!8406 d!23493))

(declare-fun d!23495 () Bool)

(declare-fun lt!42163 () Bool)

(assert (=> d!23495 (= lt!42163 (select (content!90 (toList!761 lt!41712)) lt!41584))))

(declare-fun e!57573 () Bool)

(assert (=> d!23495 (= lt!42163 e!57573)))

(declare-fun res!45263 () Bool)

(assert (=> d!23495 (=> (not res!45263) (not e!57573))))

(assert (=> d!23495 (= res!45263 ((_ is Cons!1552) (toList!761 lt!41712)))))

(assert (=> d!23495 (= (contains!768 (toList!761 lt!41712) lt!41584) lt!42163)))

(declare-fun b!88397 () Bool)

(declare-fun e!57574 () Bool)

(assert (=> b!88397 (= e!57573 e!57574)))

(declare-fun res!45264 () Bool)

(assert (=> b!88397 (=> res!45264 e!57574)))

(assert (=> b!88397 (= res!45264 (= (h!2144 (toList!761 lt!41712)) lt!41584))))

(declare-fun b!88398 () Bool)

(assert (=> b!88398 (= e!57574 (contains!768 (t!5302 (toList!761 lt!41712)) lt!41584))))

(assert (= (and d!23495 res!45263) b!88397))

(assert (= (and b!88397 (not res!45264)) b!88398))

(declare-fun m!94287 () Bool)

(assert (=> d!23495 m!94287))

(declare-fun m!94289 () Bool)

(assert (=> d!23495 m!94289))

(declare-fun m!94291 () Bool)

(assert (=> b!88398 m!94291))

(assert (=> b!87830 d!23495))

(declare-fun d!23497 () Bool)

(declare-fun e!57575 () Bool)

(assert (=> d!23497 e!57575))

(declare-fun res!45265 () Bool)

(assert (=> d!23497 (=> res!45265 e!57575)))

(declare-fun lt!42164 () Bool)

(assert (=> d!23497 (= res!45265 (not lt!42164))))

(declare-fun lt!42166 () Bool)

(assert (=> d!23497 (= lt!42164 lt!42166)))

(declare-fun lt!42165 () Unit!2618)

(declare-fun e!57576 () Unit!2618)

(assert (=> d!23497 (= lt!42165 e!57576)))

(declare-fun c!14633 () Bool)

(assert (=> d!23497 (= c!14633 lt!42166)))

(assert (=> d!23497 (= lt!42166 (containsKey!144 (toList!761 lt!41682) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!23497 (= (contains!766 lt!41682 #b1000000000000000000000000000000000000000000000000000000000000000) lt!42164)))

(declare-fun b!88399 () Bool)

(declare-fun lt!42167 () Unit!2618)

(assert (=> b!88399 (= e!57576 lt!42167)))

(assert (=> b!88399 (= lt!42167 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 lt!41682) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!88399 (isDefined!94 (getValueByKey!140 (toList!761 lt!41682) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!88400 () Bool)

(declare-fun Unit!2642 () Unit!2618)

(assert (=> b!88400 (= e!57576 Unit!2642)))

(declare-fun b!88401 () Bool)

(assert (=> b!88401 (= e!57575 (isDefined!94 (getValueByKey!140 (toList!761 lt!41682) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!23497 c!14633) b!88399))

(assert (= (and d!23497 (not c!14633)) b!88400))

(assert (= (and d!23497 (not res!45265)) b!88401))

(declare-fun m!94293 () Bool)

(assert (=> d!23497 m!94293))

(declare-fun m!94295 () Bool)

(assert (=> b!88399 m!94295))

(declare-fun m!94297 () Bool)

(assert (=> b!88399 m!94297))

(assert (=> b!88399 m!94297))

(declare-fun m!94299 () Bool)

(assert (=> b!88399 m!94299))

(assert (=> b!88401 m!94297))

(assert (=> b!88401 m!94297))

(assert (=> b!88401 m!94299))

(assert (=> b!87815 d!23497))

(declare-fun b!88402 () Bool)

(declare-fun e!57579 () Bool)

(declare-fun e!57577 () Bool)

(assert (=> b!88402 (= e!57579 e!57577)))

(declare-fun c!14634 () Bool)

(assert (=> b!88402 (= c!14634 (validKeyInArray!0 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!88403 () Bool)

(declare-fun e!57580 () Bool)

(assert (=> b!88403 (= e!57580 e!57579)))

(declare-fun res!45267 () Bool)

(assert (=> b!88403 (=> (not res!45267) (not e!57579))))

(declare-fun e!57578 () Bool)

(assert (=> b!88403 (= res!45267 (not e!57578))))

(declare-fun res!45268 () Bool)

(assert (=> b!88403 (=> (not res!45268) (not e!57578))))

(assert (=> b!88403 (= res!45268 (validKeyInArray!0 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!88404 () Bool)

(assert (=> b!88404 (= e!57578 (contains!767 Nil!1554 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!8494 () Bool)

(declare-fun call!8497 () Bool)

(assert (=> bm!8494 (= call!8497 (arrayNoDuplicates!0 (_keys!4035 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!14634 (Cons!1553 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000) Nil!1554) Nil!1554)))))

(declare-fun b!88405 () Bool)

(assert (=> b!88405 (= e!57577 call!8497)))

(declare-fun d!23499 () Bool)

(declare-fun res!45266 () Bool)

(assert (=> d!23499 (=> res!45266 e!57580)))

(assert (=> d!23499 (= res!45266 (bvsge #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))

(assert (=> d!23499 (= (arrayNoDuplicates!0 (_keys!4035 newMap!16) #b00000000000000000000000000000000 Nil!1554) e!57580)))

(declare-fun b!88406 () Bool)

(assert (=> b!88406 (= e!57577 call!8497)))

(assert (= (and d!23499 (not res!45266)) b!88403))

(assert (= (and b!88403 res!45268) b!88404))

(assert (= (and b!88403 res!45267) b!88402))

(assert (= (and b!88402 c!14634) b!88406))

(assert (= (and b!88402 (not c!14634)) b!88405))

(assert (= (or b!88406 b!88405) bm!8494))

(assert (=> b!88402 m!94089))

(assert (=> b!88402 m!94089))

(assert (=> b!88402 m!94099))

(assert (=> b!88403 m!94089))

(assert (=> b!88403 m!94089))

(assert (=> b!88403 m!94099))

(assert (=> b!88404 m!94089))

(assert (=> b!88404 m!94089))

(declare-fun m!94301 () Bool)

(assert (=> b!88404 m!94301))

(assert (=> bm!8494 m!94089))

(declare-fun m!94303 () Bool)

(assert (=> bm!8494 m!94303))

(assert (=> b!88043 d!23499))

(declare-fun d!23501 () Bool)

(assert (=> d!23501 (= (map!1198 (_2!1131 lt!41792)) (getCurrentListMap!444 (_keys!4035 (_2!1131 lt!41792)) (_values!2342 (_2!1131 lt!41792)) (mask!6397 (_2!1131 lt!41792)) (extraKeys!2194 (_2!1131 lt!41792)) (zeroValue!2249 (_2!1131 lt!41792)) (minValue!2249 (_2!1131 lt!41792)) #b00000000000000000000000000000000 (defaultEntry!2359 (_2!1131 lt!41792))))))

(declare-fun bs!3715 () Bool)

(assert (= bs!3715 d!23501))

(declare-fun m!94305 () Bool)

(assert (=> bs!3715 m!94305))

(assert (=> bm!8417 d!23501))

(declare-fun b!88410 () Bool)

(declare-fun e!57582 () Option!146)

(assert (=> b!88410 (= e!57582 None!144)))

(declare-fun b!88408 () Bool)

(declare-fun e!57581 () Option!146)

(assert (=> b!88408 (= e!57581 e!57582)))

(declare-fun c!14636 () Bool)

(assert (=> b!88408 (= c!14636 (and ((_ is Cons!1552) (toList!761 lt!41708)) (not (= (_1!1130 (h!2144 (toList!761 lt!41708))) (_1!1130 lt!41591)))))))

(declare-fun d!23503 () Bool)

(declare-fun c!14635 () Bool)

(assert (=> d!23503 (= c!14635 (and ((_ is Cons!1552) (toList!761 lt!41708)) (= (_1!1130 (h!2144 (toList!761 lt!41708))) (_1!1130 lt!41591))))))

(assert (=> d!23503 (= (getValueByKey!140 (toList!761 lt!41708) (_1!1130 lt!41591)) e!57581)))

(declare-fun b!88409 () Bool)

(assert (=> b!88409 (= e!57582 (getValueByKey!140 (t!5302 (toList!761 lt!41708)) (_1!1130 lt!41591)))))

(declare-fun b!88407 () Bool)

(assert (=> b!88407 (= e!57581 (Some!145 (_2!1130 (h!2144 (toList!761 lt!41708)))))))

(assert (= (and d!23503 c!14635) b!88407))

(assert (= (and d!23503 (not c!14635)) b!88408))

(assert (= (and b!88408 c!14636) b!88409))

(assert (= (and b!88408 (not c!14636)) b!88410))

(declare-fun m!94307 () Bool)

(assert (=> b!88409 m!94307))

(assert (=> b!87827 d!23503))

(assert (=> b!88024 d!23347))

(declare-fun d!23505 () Bool)

(declare-fun isEmpty!344 (List!1556) Bool)

(assert (=> d!23505 (= (isEmpty!343 lt!41682) (isEmpty!344 (toList!761 lt!41682)))))

(declare-fun bs!3716 () Bool)

(assert (= bs!3716 d!23505))

(declare-fun m!94309 () Bool)

(assert (=> bs!3716 m!94309))

(assert (=> b!87812 d!23505))

(declare-fun b!88414 () Bool)

(declare-fun e!57584 () Option!146)

(assert (=> b!88414 (= e!57584 None!144)))

(declare-fun b!88412 () Bool)

(declare-fun e!57583 () Option!146)

(assert (=> b!88412 (= e!57583 e!57584)))

(declare-fun c!14638 () Bool)

(assert (=> b!88412 (= c!14638 (and ((_ is Cons!1552) (toList!761 lt!41712)) (not (= (_1!1130 (h!2144 (toList!761 lt!41712))) (_1!1130 lt!41584)))))))

(declare-fun d!23507 () Bool)

(declare-fun c!14637 () Bool)

(assert (=> d!23507 (= c!14637 (and ((_ is Cons!1552) (toList!761 lt!41712)) (= (_1!1130 (h!2144 (toList!761 lt!41712))) (_1!1130 lt!41584))))))

(assert (=> d!23507 (= (getValueByKey!140 (toList!761 lt!41712) (_1!1130 lt!41584)) e!57583)))

(declare-fun b!88413 () Bool)

(assert (=> b!88413 (= e!57584 (getValueByKey!140 (t!5302 (toList!761 lt!41712)) (_1!1130 lt!41584)))))

(declare-fun b!88411 () Bool)

(assert (=> b!88411 (= e!57583 (Some!145 (_2!1130 (h!2144 (toList!761 lt!41712)))))))

(assert (= (and d!23507 c!14637) b!88411))

(assert (= (and d!23507 (not c!14637)) b!88412))

(assert (= (and b!88412 c!14638) b!88413))

(assert (= (and b!88412 (not c!14638)) b!88414))

(declare-fun m!94311 () Bool)

(assert (=> b!88413 m!94311))

(assert (=> b!87829 d!23507))

(declare-fun call!8503 () Bool)

(declare-fun bm!8499 () Bool)

(assert (=> bm!8499 (= call!8503 (arrayContainsKey!0 (_keys!4035 newMap!16) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!88431 () Bool)

(declare-fun e!57595 () Bool)

(assert (=> b!88431 (= e!57595 (not call!8503))))

(declare-fun c!14644 () Bool)

(declare-fun lt!42173 () SeekEntryResult!254)

(declare-fun bm!8500 () Bool)

(declare-fun call!8502 () Bool)

(assert (=> bm!8500 (= call!8502 (inRange!0 (ite c!14644 (index!3154 lt!42173) (index!3157 lt!42173)) (mask!6397 newMap!16)))))

(declare-fun b!88433 () Bool)

(declare-fun res!45278 () Bool)

(declare-fun e!57594 () Bool)

(assert (=> b!88433 (=> (not res!45278) (not e!57594))))

(assert (=> b!88433 (= res!45278 (= (select (arr!1924 (_keys!4035 newMap!16)) (index!3157 lt!42173)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!88433 (and (bvsge (index!3157 lt!42173) #b00000000000000000000000000000000) (bvslt (index!3157 lt!42173) (size!2169 (_keys!4035 newMap!16))))))

(declare-fun b!88434 () Bool)

(declare-fun e!57593 () Bool)

(declare-fun e!57596 () Bool)

(assert (=> b!88434 (= e!57593 e!57596)))

(declare-fun c!14643 () Bool)

(assert (=> b!88434 (= c!14643 ((_ is MissingVacant!254) lt!42173))))

(declare-fun b!88435 () Bool)

(assert (=> b!88435 (and (bvsge (index!3154 lt!42173) #b00000000000000000000000000000000) (bvslt (index!3154 lt!42173) (size!2169 (_keys!4035 newMap!16))))))

(declare-fun res!45277 () Bool)

(assert (=> b!88435 (= res!45277 (= (select (arr!1924 (_keys!4035 newMap!16)) (index!3154 lt!42173)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!88435 (=> (not res!45277) (not e!57595))))

(declare-fun b!88436 () Bool)

(declare-fun res!45279 () Bool)

(assert (=> b!88436 (=> (not res!45279) (not e!57594))))

(assert (=> b!88436 (= res!45279 call!8502)))

(assert (=> b!88436 (= e!57596 e!57594)))

(declare-fun b!88432 () Bool)

(assert (=> b!88432 (= e!57596 ((_ is Undefined!254) lt!42173))))

(declare-fun d!23509 () Bool)

(assert (=> d!23509 e!57593))

(assert (=> d!23509 (= c!14644 ((_ is MissingZero!254) lt!42173))))

(assert (=> d!23509 (= lt!42173 (seekEntryOrOpen!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (_keys!4035 newMap!16) (mask!6397 newMap!16)))))

(declare-fun lt!42172 () Unit!2618)

(declare-fun choose!531 (array!4042 array!4044 (_ BitVec 32) (_ BitVec 32) V!3035 V!3035 (_ BitVec 64) Int) Unit!2618)

(assert (=> d!23509 (= lt!42172 (choose!531 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (defaultEntry!2359 newMap!16)))))

(assert (=> d!23509 (validMask!0 (mask!6397 newMap!16))))

(assert (=> d!23509 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!32 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (defaultEntry!2359 newMap!16)) lt!42172)))

(declare-fun b!88437 () Bool)

(assert (=> b!88437 (= e!57593 e!57595)))

(declare-fun res!45280 () Bool)

(assert (=> b!88437 (= res!45280 call!8502)))

(assert (=> b!88437 (=> (not res!45280) (not e!57595))))

(declare-fun b!88438 () Bool)

(assert (=> b!88438 (= e!57594 (not call!8503))))

(assert (= (and d!23509 c!14644) b!88437))

(assert (= (and d!23509 (not c!14644)) b!88434))

(assert (= (and b!88437 res!45280) b!88435))

(assert (= (and b!88435 res!45277) b!88431))

(assert (= (and b!88434 c!14643) b!88436))

(assert (= (and b!88434 (not c!14643)) b!88432))

(assert (= (and b!88436 res!45279) b!88433))

(assert (= (and b!88433 res!45278) b!88438))

(assert (= (or b!88437 b!88436) bm!8500))

(assert (= (or b!88431 b!88438) bm!8499))

(declare-fun m!94313 () Bool)

(assert (=> b!88435 m!94313))

(declare-fun m!94315 () Bool)

(assert (=> bm!8500 m!94315))

(assert (=> bm!8499 m!93277))

(assert (=> bm!8499 m!93587))

(declare-fun m!94317 () Bool)

(assert (=> b!88433 m!94317))

(assert (=> d!23509 m!93277))

(assert (=> d!23509 m!93569))

(assert (=> d!23509 m!93277))

(declare-fun m!94319 () Bool)

(assert (=> d!23509 m!94319))

(assert (=> d!23509 m!93827))

(assert (=> bm!8418 d!23509))

(declare-fun b!88447 () Bool)

(declare-fun res!45292 () Bool)

(declare-fun e!57599 () Bool)

(assert (=> b!88447 (=> (not res!45292) (not e!57599))))

(assert (=> b!88447 (= res!45292 (and (= (size!2170 (_values!2342 newMap!16)) (bvadd (mask!6397 newMap!16) #b00000000000000000000000000000001)) (= (size!2169 (_keys!4035 newMap!16)) (size!2170 (_values!2342 newMap!16))) (bvsge (_size!430 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!430 newMap!16) (bvadd (mask!6397 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!88450 () Bool)

(assert (=> b!88450 (= e!57599 (and (bvsge (extraKeys!2194 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2194 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!430 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun b!88449 () Bool)

(declare-fun res!45289 () Bool)

(assert (=> b!88449 (=> (not res!45289) (not e!57599))))

(declare-fun size!2173 (LongMapFixedSize!762) (_ BitVec 32))

(assert (=> b!88449 (= res!45289 (= (size!2173 newMap!16) (bvadd (_size!430 newMap!16) (bvsdiv (bvadd (extraKeys!2194 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!88448 () Bool)

(declare-fun res!45290 () Bool)

(assert (=> b!88448 (=> (not res!45290) (not e!57599))))

(assert (=> b!88448 (= res!45290 (bvsge (size!2173 newMap!16) (_size!430 newMap!16)))))

(declare-fun d!23511 () Bool)

(declare-fun res!45291 () Bool)

(assert (=> d!23511 (=> (not res!45291) (not e!57599))))

(assert (=> d!23511 (= res!45291 (validMask!0 (mask!6397 newMap!16)))))

(assert (=> d!23511 (= (simpleValid!58 newMap!16) e!57599)))

(assert (= (and d!23511 res!45291) b!88447))

(assert (= (and b!88447 res!45292) b!88448))

(assert (= (and b!88448 res!45290) b!88449))

(assert (= (and b!88449 res!45289) b!88450))

(declare-fun m!94321 () Bool)

(assert (=> b!88449 m!94321))

(assert (=> b!88448 m!94321))

(assert (=> d!23511 m!93827))

(assert (=> d!23333 d!23511))

(declare-fun d!23513 () Bool)

(assert (=> d!23513 (= (apply!83 lt!41874 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1222 (getValueByKey!140 (toList!761 lt!41874) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!3717 () Bool)

(assert (= bs!3717 d!23513))

(assert (=> bs!3717 m!93393))

(assert (=> bs!3717 m!93817))

(assert (=> bs!3717 m!93817))

(declare-fun m!94323 () Bool)

(assert (=> bs!3717 m!94323))

(assert (=> b!88023 d!23513))

(assert (=> b!88023 d!23371))

(declare-fun b!88451 () Bool)

(declare-fun e!57601 () SeekEntryResult!254)

(assert (=> b!88451 (= e!57601 Undefined!254)))

(declare-fun b!88452 () Bool)

(declare-fun c!14647 () Bool)

(declare-fun lt!42175 () (_ BitVec 64))

(assert (=> b!88452 (= c!14647 (= lt!42175 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!57600 () SeekEntryResult!254)

(declare-fun e!57602 () SeekEntryResult!254)

(assert (=> b!88452 (= e!57600 e!57602)))

(declare-fun b!88453 () Bool)

(declare-fun lt!42174 () SeekEntryResult!254)

(assert (=> b!88453 (= e!57602 (seekKeyOrZeroReturnVacant!0 (x!12151 lt!42174) (index!3156 lt!42174) (index!3156 lt!42174) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (_keys!4035 newMap!16) (mask!6397 newMap!16)))))

(declare-fun b!88454 () Bool)

(assert (=> b!88454 (= e!57600 (Found!254 (index!3156 lt!42174)))))

(declare-fun b!88455 () Bool)

(assert (=> b!88455 (= e!57602 (MissingZero!254 (index!3156 lt!42174)))))

(declare-fun b!88456 () Bool)

(assert (=> b!88456 (= e!57601 e!57600)))

(assert (=> b!88456 (= lt!42175 (select (arr!1924 (_keys!4035 newMap!16)) (index!3156 lt!42174)))))

(declare-fun c!14645 () Bool)

(assert (=> b!88456 (= c!14645 (= lt!42175 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun d!23515 () Bool)

(declare-fun lt!42176 () SeekEntryResult!254)

(assert (=> d!23515 (and (or ((_ is Undefined!254) lt!42176) (not ((_ is Found!254) lt!42176)) (and (bvsge (index!3155 lt!42176) #b00000000000000000000000000000000) (bvslt (index!3155 lt!42176) (size!2169 (_keys!4035 newMap!16))))) (or ((_ is Undefined!254) lt!42176) ((_ is Found!254) lt!42176) (not ((_ is MissingZero!254) lt!42176)) (and (bvsge (index!3154 lt!42176) #b00000000000000000000000000000000) (bvslt (index!3154 lt!42176) (size!2169 (_keys!4035 newMap!16))))) (or ((_ is Undefined!254) lt!42176) ((_ is Found!254) lt!42176) ((_ is MissingZero!254) lt!42176) (not ((_ is MissingVacant!254) lt!42176)) (and (bvsge (index!3157 lt!42176) #b00000000000000000000000000000000) (bvslt (index!3157 lt!42176) (size!2169 (_keys!4035 newMap!16))))) (or ((_ is Undefined!254) lt!42176) (ite ((_ is Found!254) lt!42176) (= (select (arr!1924 (_keys!4035 newMap!16)) (index!3155 lt!42176)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)) (ite ((_ is MissingZero!254) lt!42176) (= (select (arr!1924 (_keys!4035 newMap!16)) (index!3154 lt!42176)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!254) lt!42176) (= (select (arr!1924 (_keys!4035 newMap!16)) (index!3157 lt!42176)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!23515 (= lt!42176 e!57601)))

(declare-fun c!14646 () Bool)

(assert (=> d!23515 (= c!14646 (and ((_ is Intermediate!254) lt!42174) (undefined!1066 lt!42174)))))

(assert (=> d!23515 (= lt!42174 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (mask!6397 newMap!16)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (_keys!4035 newMap!16) (mask!6397 newMap!16)))))

(assert (=> d!23515 (validMask!0 (mask!6397 newMap!16))))

(assert (=> d!23515 (= (seekEntryOrOpen!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (_keys!4035 newMap!16) (mask!6397 newMap!16)) lt!42176)))

(assert (= (and d!23515 c!14646) b!88451))

(assert (= (and d!23515 (not c!14646)) b!88456))

(assert (= (and b!88456 c!14645) b!88454))

(assert (= (and b!88456 (not c!14645)) b!88452))

(assert (= (and b!88452 c!14647) b!88455))

(assert (= (and b!88452 (not c!14647)) b!88453))

(assert (=> b!88453 m!93277))

(declare-fun m!94325 () Bool)

(assert (=> b!88453 m!94325))

(declare-fun m!94327 () Bool)

(assert (=> b!88456 m!94327))

(assert (=> d!23515 m!93827))

(declare-fun m!94329 () Bool)

(assert (=> d!23515 m!94329))

(assert (=> d!23515 m!93277))

(declare-fun m!94331 () Bool)

(assert (=> d!23515 m!94331))

(assert (=> d!23515 m!94331))

(assert (=> d!23515 m!93277))

(declare-fun m!94333 () Bool)

(assert (=> d!23515 m!94333))

(declare-fun m!94335 () Bool)

(assert (=> d!23515 m!94335))

(declare-fun m!94337 () Bool)

(assert (=> d!23515 m!94337))

(assert (=> b!87956 d!23515))

(declare-fun b!88460 () Bool)

(declare-fun e!57604 () Option!146)

(assert (=> b!88460 (= e!57604 None!144)))

(declare-fun b!88458 () Bool)

(declare-fun e!57603 () Option!146)

(assert (=> b!88458 (= e!57603 e!57604)))

(declare-fun c!14649 () Bool)

(assert (=> b!88458 (= c!14649 (and ((_ is Cons!1552) (toList!761 lt!41700)) (not (= (_1!1130 (h!2144 (toList!761 lt!41700))) (_1!1130 lt!41584)))))))

(declare-fun d!23517 () Bool)

(declare-fun c!14648 () Bool)

(assert (=> d!23517 (= c!14648 (and ((_ is Cons!1552) (toList!761 lt!41700)) (= (_1!1130 (h!2144 (toList!761 lt!41700))) (_1!1130 lt!41584))))))

(assert (=> d!23517 (= (getValueByKey!140 (toList!761 lt!41700) (_1!1130 lt!41584)) e!57603)))

(declare-fun b!88459 () Bool)

(assert (=> b!88459 (= e!57604 (getValueByKey!140 (t!5302 (toList!761 lt!41700)) (_1!1130 lt!41584)))))

(declare-fun b!88457 () Bool)

(assert (=> b!88457 (= e!57603 (Some!145 (_2!1130 (h!2144 (toList!761 lt!41700)))))))

(assert (= (and d!23517 c!14648) b!88457))

(assert (= (and d!23517 (not c!14648)) b!88458))

(assert (= (and b!88458 c!14649) b!88459))

(assert (= (and b!88458 (not c!14649)) b!88460))

(declare-fun m!94339 () Bool)

(assert (=> b!88459 m!94339))

(assert (=> b!87823 d!23517))

(declare-fun d!23519 () Bool)

(declare-fun e!57605 () Bool)

(assert (=> d!23519 e!57605))

(declare-fun res!45293 () Bool)

(assert (=> d!23519 (=> res!45293 e!57605)))

(declare-fun lt!42177 () Bool)

(assert (=> d!23519 (= res!45293 (not lt!42177))))

(declare-fun lt!42179 () Bool)

(assert (=> d!23519 (= lt!42177 lt!42179)))

(declare-fun lt!42178 () Unit!2618)

(declare-fun e!57606 () Unit!2618)

(assert (=> d!23519 (= lt!42178 e!57606)))

(declare-fun c!14650 () Bool)

(assert (=> d!23519 (= c!14650 lt!42179)))

(assert (=> d!23519 (= lt!42179 (containsKey!144 (toList!761 lt!41682) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!23519 (= (contains!766 lt!41682 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!42177)))

(declare-fun b!88461 () Bool)

(declare-fun lt!42180 () Unit!2618)

(assert (=> b!88461 (= e!57606 lt!42180)))

(assert (=> b!88461 (= lt!42180 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 lt!41682) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!88461 (isDefined!94 (getValueByKey!140 (toList!761 lt!41682) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!88462 () Bool)

(declare-fun Unit!2643 () Unit!2618)

(assert (=> b!88462 (= e!57606 Unit!2643)))

(declare-fun b!88463 () Bool)

(assert (=> b!88463 (= e!57605 (isDefined!94 (getValueByKey!140 (toList!761 lt!41682) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!23519 c!14650) b!88461))

(assert (= (and d!23519 (not c!14650)) b!88462))

(assert (= (and d!23519 (not res!45293)) b!88463))

(assert (=> d!23519 m!93393))

(declare-fun m!94341 () Bool)

(assert (=> d!23519 m!94341))

(assert (=> b!88461 m!93393))

(declare-fun m!94343 () Bool)

(assert (=> b!88461 m!94343))

(assert (=> b!88461 m!93393))

(assert (=> b!88461 m!93923))

(assert (=> b!88461 m!93923))

(declare-fun m!94345 () Bool)

(assert (=> b!88461 m!94345))

(assert (=> b!88463 m!93393))

(assert (=> b!88463 m!93923))

(assert (=> b!88463 m!93923))

(assert (=> b!88463 m!94345))

(assert (=> b!87808 d!23519))

(declare-fun d!23521 () Bool)

(declare-fun e!57607 () Bool)

(assert (=> d!23521 e!57607))

(declare-fun res!45294 () Bool)

(assert (=> d!23521 (=> res!45294 e!57607)))

(declare-fun lt!42181 () Bool)

(assert (=> d!23521 (= res!45294 (not lt!42181))))

(declare-fun lt!42183 () Bool)

(assert (=> d!23521 (= lt!42181 lt!42183)))

(declare-fun lt!42182 () Unit!2618)

(declare-fun e!57608 () Unit!2618)

(assert (=> d!23521 (= lt!42182 e!57608)))

(declare-fun c!14651 () Bool)

(assert (=> d!23521 (= c!14651 lt!42183)))

(assert (=> d!23521 (= lt!42183 (containsKey!144 (toList!761 e!57308) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(assert (=> d!23521 (= (contains!766 e!57308 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)) lt!42181)))

(declare-fun b!88464 () Bool)

(declare-fun lt!42184 () Unit!2618)

(assert (=> b!88464 (= e!57608 lt!42184)))

(assert (=> b!88464 (= lt!42184 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 e!57308) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(assert (=> b!88464 (isDefined!94 (getValueByKey!140 (toList!761 e!57308) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun b!88465 () Bool)

(declare-fun Unit!2644 () Unit!2618)

(assert (=> b!88465 (= e!57608 Unit!2644)))

(declare-fun b!88466 () Bool)

(assert (=> b!88466 (= e!57607 (isDefined!94 (getValueByKey!140 (toList!761 e!57308) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355))))))

(assert (= (and d!23521 c!14651) b!88464))

(assert (= (and d!23521 (not c!14651)) b!88465))

(assert (= (and d!23521 (not res!45294)) b!88466))

(assert (=> d!23521 m!93277))

(declare-fun m!94347 () Bool)

(assert (=> d!23521 m!94347))

(assert (=> b!88464 m!93277))

(declare-fun m!94349 () Bool)

(assert (=> b!88464 m!94349))

(assert (=> b!88464 m!93277))

(declare-fun m!94351 () Bool)

(assert (=> b!88464 m!94351))

(assert (=> b!88464 m!94351))

(declare-fun m!94353 () Bool)

(assert (=> b!88464 m!94353))

(assert (=> b!88466 m!93277))

(assert (=> b!88466 m!94351))

(assert (=> b!88466 m!94351))

(assert (=> b!88466 m!94353))

(assert (=> bm!8422 d!23521))

(assert (=> bm!8416 d!23329))

(declare-fun b!88470 () Bool)

(declare-fun e!57610 () Option!146)

(assert (=> b!88470 (= e!57610 None!144)))

(declare-fun b!88468 () Bool)

(declare-fun e!57609 () Option!146)

(assert (=> b!88468 (= e!57609 e!57610)))

(declare-fun c!14653 () Bool)

(assert (=> b!88468 (= c!14653 (and ((_ is Cons!1552) (toList!761 lt!41704)) (not (= (_1!1130 (h!2144 (toList!761 lt!41704))) (_1!1130 lt!41592)))))))

(declare-fun d!23523 () Bool)

(declare-fun c!14652 () Bool)

(assert (=> d!23523 (= c!14652 (and ((_ is Cons!1552) (toList!761 lt!41704)) (= (_1!1130 (h!2144 (toList!761 lt!41704))) (_1!1130 lt!41592))))))

(assert (=> d!23523 (= (getValueByKey!140 (toList!761 lt!41704) (_1!1130 lt!41592)) e!57609)))

(declare-fun b!88469 () Bool)

(assert (=> b!88469 (= e!57610 (getValueByKey!140 (t!5302 (toList!761 lt!41704)) (_1!1130 lt!41592)))))

(declare-fun b!88467 () Bool)

(assert (=> b!88467 (= e!57609 (Some!145 (_2!1130 (h!2144 (toList!761 lt!41704)))))))

(assert (= (and d!23523 c!14652) b!88467))

(assert (= (and d!23523 (not c!14652)) b!88468))

(assert (= (and b!88468 c!14653) b!88469))

(assert (= (and b!88468 (not c!14653)) b!88470))

(declare-fun m!94355 () Bool)

(assert (=> b!88469 m!94355))

(assert (=> b!87825 d!23523))

(declare-fun d!23525 () Bool)

(declare-fun e!57611 () Bool)

(assert (=> d!23525 e!57611))

(declare-fun res!45296 () Bool)

(assert (=> d!23525 (=> (not res!45296) (not e!57611))))

(declare-fun lt!42185 () ListLongMap!1491)

(assert (=> d!23525 (= res!45296 (contains!766 lt!42185 (_1!1130 (ite (or c!14537 c!14533) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))))))))

(declare-fun lt!42186 () List!1556)

(assert (=> d!23525 (= lt!42185 (ListLongMap!1492 lt!42186))))

(declare-fun lt!42187 () Unit!2618)

(declare-fun lt!42188 () Unit!2618)

(assert (=> d!23525 (= lt!42187 lt!42188)))

(assert (=> d!23525 (= (getValueByKey!140 lt!42186 (_1!1130 (ite (or c!14537 c!14533) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))))) (Some!145 (_2!1130 (ite (or c!14537 c!14533) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))))))))

(assert (=> d!23525 (= lt!42188 (lemmaContainsTupThenGetReturnValue!59 lt!42186 (_1!1130 (ite (or c!14537 c!14533) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))) (_2!1130 (ite (or c!14537 c!14533) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))))))))

(assert (=> d!23525 (= lt!42186 (insertStrictlySorted!61 (toList!761 (ite c!14537 call!8451 (ite c!14533 call!8454 call!8455))) (_1!1130 (ite (or c!14537 c!14533) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))) (_2!1130 (ite (or c!14537 c!14533) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))))))))

(assert (=> d!23525 (= (+!118 (ite c!14537 call!8451 (ite c!14533 call!8454 call!8455)) (ite (or c!14537 c!14533) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))) lt!42185)))

(declare-fun b!88471 () Bool)

(declare-fun res!45295 () Bool)

(assert (=> b!88471 (=> (not res!45295) (not e!57611))))

(assert (=> b!88471 (= res!45295 (= (getValueByKey!140 (toList!761 lt!42185) (_1!1130 (ite (or c!14537 c!14533) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))))) (Some!145 (_2!1130 (ite (or c!14537 c!14533) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))))

(declare-fun b!88472 () Bool)

(assert (=> b!88472 (= e!57611 (contains!768 (toList!761 lt!42185) (ite (or c!14537 c!14533) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 (v!2663 (underlying!295 thiss!992)))) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (= (and d!23525 res!45296) b!88471))

(assert (= (and b!88471 res!45295) b!88472))

(declare-fun m!94357 () Bool)

(assert (=> d!23525 m!94357))

(declare-fun m!94359 () Bool)

(assert (=> d!23525 m!94359))

(declare-fun m!94361 () Bool)

(assert (=> d!23525 m!94361))

(declare-fun m!94363 () Bool)

(assert (=> d!23525 m!94363))

(declare-fun m!94365 () Bool)

(assert (=> b!88471 m!94365))

(declare-fun m!94367 () Bool)

(assert (=> b!88472 m!94367))

(assert (=> bm!8450 d!23525))

(declare-fun b!88473 () Bool)

(declare-fun e!57614 () Bool)

(declare-fun e!57612 () Bool)

(assert (=> b!88473 (= e!57614 e!57612)))

(declare-fun lt!42191 () (_ BitVec 64))

(assert (=> b!88473 (= lt!42191 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!42190 () Unit!2618)

(assert (=> b!88473 (= lt!42190 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) lt!42191 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!88473 (arrayContainsKey!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) lt!42191 #b00000000000000000000000000000000)))

(declare-fun lt!42189 () Unit!2618)

(assert (=> b!88473 (= lt!42189 lt!42190)))

(declare-fun res!45297 () Bool)

(assert (=> b!88473 (= res!45297 (= (seekEntryOrOpen!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!4035 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992)))) (Found!254 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!88473 (=> (not res!45297) (not e!57612))))

(declare-fun d!23527 () Bool)

(declare-fun res!45298 () Bool)

(declare-fun e!57613 () Bool)

(assert (=> d!23527 (=> res!45298 e!57613)))

(assert (=> d!23527 (= res!45298 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(assert (=> d!23527 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4035 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992)))) e!57613)))

(declare-fun bm!8501 () Bool)

(declare-fun call!8504 () Bool)

(assert (=> bm!8501 (= call!8504 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!4035 (v!2663 (underlying!295 thiss!992))) (mask!6397 (v!2663 (underlying!295 thiss!992)))))))

(declare-fun b!88474 () Bool)

(assert (=> b!88474 (= e!57613 e!57614)))

(declare-fun c!14654 () Bool)

(assert (=> b!88474 (= c!14654 (validKeyInArray!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!88475 () Bool)

(assert (=> b!88475 (= e!57614 call!8504)))

(declare-fun b!88476 () Bool)

(assert (=> b!88476 (= e!57612 call!8504)))

(assert (= (and d!23527 (not res!45298)) b!88474))

(assert (= (and b!88474 c!14654) b!88473))

(assert (= (and b!88474 (not c!14654)) b!88475))

(assert (= (and b!88473 res!45297) b!88476))

(assert (= (or b!88476 b!88475) bm!8501))

(declare-fun m!94369 () Bool)

(assert (=> b!88473 m!94369))

(declare-fun m!94371 () Bool)

(assert (=> b!88473 m!94371))

(declare-fun m!94373 () Bool)

(assert (=> b!88473 m!94373))

(assert (=> b!88473 m!94369))

(declare-fun m!94375 () Bool)

(assert (=> b!88473 m!94375))

(declare-fun m!94377 () Bool)

(assert (=> bm!8501 m!94377))

(assert (=> b!88474 m!94369))

(assert (=> b!88474 m!94369))

(declare-fun m!94379 () Bool)

(assert (=> b!88474 m!94379))

(assert (=> bm!8431 d!23527))

(assert (=> bm!8448 d!23303))

(declare-fun b!88477 () Bool)

(declare-fun e!57627 () Unit!2618)

(declare-fun Unit!2645 () Unit!2618)

(assert (=> b!88477 (= e!57627 Unit!2645)))

(declare-fun b!88478 () Bool)

(declare-fun e!57625 () ListLongMap!1491)

(declare-fun call!8511 () ListLongMap!1491)

(assert (=> b!88478 (= e!57625 call!8511)))

(declare-fun d!23529 () Bool)

(declare-fun e!57619 () Bool)

(assert (=> d!23529 e!57619))

(declare-fun res!45305 () Bool)

(assert (=> d!23529 (=> (not res!45305) (not e!57619))))

(assert (=> d!23529 (= res!45305 (or (bvsge #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))))

(declare-fun lt!42203 () ListLongMap!1491)

(declare-fun lt!42202 () ListLongMap!1491)

(assert (=> d!23529 (= lt!42203 lt!42202)))

(declare-fun lt!42195 () Unit!2618)

(assert (=> d!23529 (= lt!42195 e!57627)))

(declare-fun c!14657 () Bool)

(declare-fun e!57618 () Bool)

(assert (=> d!23529 (= c!14657 e!57618)))

(declare-fun res!45303 () Bool)

(assert (=> d!23529 (=> (not res!45303) (not e!57618))))

(assert (=> d!23529 (= res!45303 (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))

(declare-fun e!57626 () ListLongMap!1491)

(assert (=> d!23529 (= lt!42202 e!57626)))

(declare-fun c!14659 () Bool)

(assert (=> d!23529 (= c!14659 (and (not (= (bvand (extraKeys!2194 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2194 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!23529 (validMask!0 (mask!6397 newMap!16))))

(assert (=> d!23529 (= (getCurrentListMap!444 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)) lt!42203)))

(declare-fun bm!8502 () Bool)

(declare-fun call!8508 () Bool)

(assert (=> bm!8502 (= call!8508 (contains!766 lt!42203 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!88479 () Bool)

(declare-fun e!57624 () Bool)

(declare-fun e!57620 () Bool)

(assert (=> b!88479 (= e!57624 e!57620)))

(declare-fun res!45302 () Bool)

(assert (=> b!88479 (= res!45302 call!8508)))

(assert (=> b!88479 (=> (not res!45302) (not e!57620))))

(declare-fun b!88480 () Bool)

(declare-fun res!45307 () Bool)

(assert (=> b!88480 (=> (not res!45307) (not e!57619))))

(declare-fun e!57623 () Bool)

(assert (=> b!88480 (= res!45307 e!57623)))

(declare-fun res!45306 () Bool)

(assert (=> b!88480 (=> res!45306 e!57623)))

(declare-fun e!57617 () Bool)

(assert (=> b!88480 (= res!45306 (not e!57617))))

(declare-fun res!45300 () Bool)

(assert (=> b!88480 (=> (not res!45300) (not e!57617))))

(assert (=> b!88480 (= res!45300 (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))

(declare-fun b!88481 () Bool)

(assert (=> b!88481 (= e!57617 (validKeyInArray!0 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!8503 () Bool)

(declare-fun call!8510 () ListLongMap!1491)

(assert (=> bm!8503 (= call!8511 call!8510)))

(declare-fun b!88482 () Bool)

(declare-fun res!45301 () Bool)

(assert (=> b!88482 (=> (not res!45301) (not e!57619))))

(declare-fun e!57616 () Bool)

(assert (=> b!88482 (= res!45301 e!57616)))

(declare-fun c!14658 () Bool)

(assert (=> b!88482 (= c!14658 (not (= (bvand (extraKeys!2194 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!88483 () Bool)

(declare-fun e!57622 () ListLongMap!1491)

(declare-fun call!8505 () ListLongMap!1491)

(assert (=> b!88483 (= e!57622 call!8505)))

(declare-fun b!88484 () Bool)

(declare-fun e!57615 () Bool)

(assert (=> b!88484 (= e!57616 e!57615)))

(declare-fun res!45304 () Bool)

(declare-fun call!8506 () Bool)

(assert (=> b!88484 (= res!45304 call!8506)))

(assert (=> b!88484 (=> (not res!45304) (not e!57615))))

(declare-fun bm!8504 () Bool)

(declare-fun call!8507 () ListLongMap!1491)

(assert (=> bm!8504 (= call!8507 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun b!88485 () Bool)

(declare-fun e!57621 () Bool)

(assert (=> b!88485 (= e!57623 e!57621)))

(declare-fun res!45299 () Bool)

(assert (=> b!88485 (=> (not res!45299) (not e!57621))))

(assert (=> b!88485 (= res!45299 (contains!766 lt!42203 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!88485 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))

(declare-fun b!88486 () Bool)

(assert (=> b!88486 (= e!57621 (= (apply!83 lt!42203 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)) (get!1219 (select (arr!1925 (_values!2342 newMap!16)) #b00000000000000000000000000000000) (dynLambda!354 (defaultEntry!2359 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!88486 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2170 (_values!2342 newMap!16))))))

(assert (=> b!88486 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))

(declare-fun bm!8505 () Bool)

(assert (=> bm!8505 (= call!8506 (contains!766 lt!42203 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!14655 () Bool)

(declare-fun call!8509 () ListLongMap!1491)

(declare-fun bm!8506 () Bool)

(assert (=> bm!8506 (= call!8509 (+!118 (ite c!14659 call!8507 (ite c!14655 call!8510 call!8511)) (ite (or c!14659 c!14655) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 newMap!16)) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 newMap!16)))))))

(declare-fun bm!8507 () Bool)

(assert (=> bm!8507 (= call!8510 call!8507)))

(declare-fun b!88487 () Bool)

(assert (=> b!88487 (= e!57618 (validKeyInArray!0 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!88488 () Bool)

(assert (=> b!88488 (= e!57624 (not call!8508))))

(declare-fun b!88489 () Bool)

(assert (=> b!88489 (= e!57620 (= (apply!83 lt!42203 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2249 newMap!16)))))

(declare-fun b!88490 () Bool)

(declare-fun c!14660 () Bool)

(assert (=> b!88490 (= c!14660 (and (not (= (bvand (extraKeys!2194 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2194 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!88490 (= e!57622 e!57625)))

(declare-fun b!88491 () Bool)

(assert (=> b!88491 (= e!57616 (not call!8506))))

(declare-fun b!88492 () Bool)

(assert (=> b!88492 (= e!57619 e!57624)))

(declare-fun c!14656 () Bool)

(assert (=> b!88492 (= c!14656 (not (= (bvand (extraKeys!2194 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!8508 () Bool)

(assert (=> bm!8508 (= call!8505 call!8509)))

(declare-fun b!88493 () Bool)

(declare-fun lt!42210 () Unit!2618)

(assert (=> b!88493 (= e!57627 lt!42210)))

(declare-fun lt!42201 () ListLongMap!1491)

(assert (=> b!88493 (= lt!42201 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!42197 () (_ BitVec 64))

(assert (=> b!88493 (= lt!42197 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42192 () (_ BitVec 64))

(assert (=> b!88493 (= lt!42192 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!42199 () Unit!2618)

(assert (=> b!88493 (= lt!42199 (addStillContains!59 lt!42201 lt!42197 (zeroValue!2249 newMap!16) lt!42192))))

(assert (=> b!88493 (contains!766 (+!118 lt!42201 (tuple2!2241 lt!42197 (zeroValue!2249 newMap!16))) lt!42192)))

(declare-fun lt!42200 () Unit!2618)

(assert (=> b!88493 (= lt!42200 lt!42199)))

(declare-fun lt!42204 () ListLongMap!1491)

(assert (=> b!88493 (= lt!42204 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!42213 () (_ BitVec 64))

(assert (=> b!88493 (= lt!42213 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42212 () (_ BitVec 64))

(assert (=> b!88493 (= lt!42212 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!42205 () Unit!2618)

(assert (=> b!88493 (= lt!42205 (addApplyDifferent!59 lt!42204 lt!42213 (minValue!2249 newMap!16) lt!42212))))

(assert (=> b!88493 (= (apply!83 (+!118 lt!42204 (tuple2!2241 lt!42213 (minValue!2249 newMap!16))) lt!42212) (apply!83 lt!42204 lt!42212))))

(declare-fun lt!42209 () Unit!2618)

(assert (=> b!88493 (= lt!42209 lt!42205)))

(declare-fun lt!42206 () ListLongMap!1491)

(assert (=> b!88493 (= lt!42206 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!42207 () (_ BitVec 64))

(assert (=> b!88493 (= lt!42207 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42194 () (_ BitVec 64))

(assert (=> b!88493 (= lt!42194 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!42211 () Unit!2618)

(assert (=> b!88493 (= lt!42211 (addApplyDifferent!59 lt!42206 lt!42207 (zeroValue!2249 newMap!16) lt!42194))))

(assert (=> b!88493 (= (apply!83 (+!118 lt!42206 (tuple2!2241 lt!42207 (zeroValue!2249 newMap!16))) lt!42194) (apply!83 lt!42206 lt!42194))))

(declare-fun lt!42198 () Unit!2618)

(assert (=> b!88493 (= lt!42198 lt!42211)))

(declare-fun lt!42196 () ListLongMap!1491)

(assert (=> b!88493 (= lt!42196 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!42208 () (_ BitVec 64))

(assert (=> b!88493 (= lt!42208 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42193 () (_ BitVec 64))

(assert (=> b!88493 (= lt!42193 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!88493 (= lt!42210 (addApplyDifferent!59 lt!42196 lt!42208 (minValue!2249 newMap!16) lt!42193))))

(assert (=> b!88493 (= (apply!83 (+!118 lt!42196 (tuple2!2241 lt!42208 (minValue!2249 newMap!16))) lt!42193) (apply!83 lt!42196 lt!42193))))

(declare-fun b!88494 () Bool)

(assert (=> b!88494 (= e!57625 call!8505)))

(declare-fun b!88495 () Bool)

(assert (=> b!88495 (= e!57626 (+!118 call!8509 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 newMap!16))))))

(declare-fun b!88496 () Bool)

(assert (=> b!88496 (= e!57615 (= (apply!83 lt!42203 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2249 newMap!16)))))

(declare-fun b!88497 () Bool)

(assert (=> b!88497 (= e!57626 e!57622)))

(assert (=> b!88497 (= c!14655 (and (not (= (bvand (extraKeys!2194 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2194 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!23529 c!14659) b!88495))

(assert (= (and d!23529 (not c!14659)) b!88497))

(assert (= (and b!88497 c!14655) b!88483))

(assert (= (and b!88497 (not c!14655)) b!88490))

(assert (= (and b!88490 c!14660) b!88494))

(assert (= (and b!88490 (not c!14660)) b!88478))

(assert (= (or b!88494 b!88478) bm!8503))

(assert (= (or b!88483 bm!8503) bm!8507))

(assert (= (or b!88483 b!88494) bm!8508))

(assert (= (or b!88495 bm!8507) bm!8504))

(assert (= (or b!88495 bm!8508) bm!8506))

(assert (= (and d!23529 res!45303) b!88487))

(assert (= (and d!23529 c!14657) b!88493))

(assert (= (and d!23529 (not c!14657)) b!88477))

(assert (= (and d!23529 res!45305) b!88480))

(assert (= (and b!88480 res!45300) b!88481))

(assert (= (and b!88480 (not res!45306)) b!88485))

(assert (= (and b!88485 res!45299) b!88486))

(assert (= (and b!88480 res!45307) b!88482))

(assert (= (and b!88482 c!14658) b!88484))

(assert (= (and b!88482 (not c!14658)) b!88491))

(assert (= (and b!88484 res!45304) b!88496))

(assert (= (or b!88484 b!88491) bm!8505))

(assert (= (and b!88482 res!45301) b!88492))

(assert (= (and b!88492 c!14656) b!88479))

(assert (= (and b!88492 (not c!14656)) b!88488))

(assert (= (and b!88479 res!45302) b!88489))

(assert (= (or b!88479 b!88488) bm!8502))

(declare-fun b_lambda!3913 () Bool)

(assert (=> (not b_lambda!3913) (not b!88486)))

(assert (=> b!88486 t!5309))

(declare-fun b_and!5309 () Bool)

(assert (= b_and!5305 (and (=> t!5309 result!2959) b_and!5309)))

(assert (=> b!88486 t!5311))

(declare-fun b_and!5311 () Bool)

(assert (= b_and!5307 (and (=> t!5311 result!2961) b_and!5311)))

(declare-fun m!94381 () Bool)

(assert (=> bm!8506 m!94381))

(assert (=> b!88485 m!94089))

(assert (=> b!88485 m!94089))

(declare-fun m!94383 () Bool)

(assert (=> b!88485 m!94383))

(declare-fun m!94385 () Bool)

(assert (=> b!88489 m!94385))

(assert (=> d!23529 m!93827))

(declare-fun m!94387 () Bool)

(assert (=> b!88496 m!94387))

(declare-fun m!94389 () Bool)

(assert (=> bm!8504 m!94389))

(assert (=> b!88487 m!94089))

(assert (=> b!88487 m!94089))

(assert (=> b!88487 m!94099))

(declare-fun m!94391 () Bool)

(assert (=> bm!8505 m!94391))

(assert (=> b!88486 m!94103))

(assert (=> b!88486 m!94089))

(declare-fun m!94393 () Bool)

(assert (=> b!88486 m!94393))

(declare-fun m!94395 () Bool)

(assert (=> b!88486 m!94395))

(assert (=> b!88486 m!94103))

(declare-fun m!94397 () Bool)

(assert (=> b!88486 m!94397))

(assert (=> b!88486 m!94395))

(assert (=> b!88486 m!94089))

(assert (=> b!88481 m!94089))

(assert (=> b!88481 m!94089))

(assert (=> b!88481 m!94099))

(declare-fun m!94399 () Bool)

(assert (=> bm!8502 m!94399))

(declare-fun m!94401 () Bool)

(assert (=> b!88495 m!94401))

(assert (=> b!88493 m!94389))

(declare-fun m!94403 () Bool)

(assert (=> b!88493 m!94403))

(declare-fun m!94405 () Bool)

(assert (=> b!88493 m!94405))

(declare-fun m!94407 () Bool)

(assert (=> b!88493 m!94407))

(declare-fun m!94409 () Bool)

(assert (=> b!88493 m!94409))

(declare-fun m!94411 () Bool)

(assert (=> b!88493 m!94411))

(declare-fun m!94413 () Bool)

(assert (=> b!88493 m!94413))

(declare-fun m!94415 () Bool)

(assert (=> b!88493 m!94415))

(assert (=> b!88493 m!94409))

(declare-fun m!94417 () Bool)

(assert (=> b!88493 m!94417))

(declare-fun m!94419 () Bool)

(assert (=> b!88493 m!94419))

(declare-fun m!94421 () Bool)

(assert (=> b!88493 m!94421))

(declare-fun m!94423 () Bool)

(assert (=> b!88493 m!94423))

(assert (=> b!88493 m!94403))

(declare-fun m!94425 () Bool)

(assert (=> b!88493 m!94425))

(assert (=> b!88493 m!94417))

(declare-fun m!94427 () Bool)

(assert (=> b!88493 m!94427))

(assert (=> b!88493 m!94415))

(declare-fun m!94429 () Bool)

(assert (=> b!88493 m!94429))

(assert (=> b!88493 m!94089))

(declare-fun m!94431 () Bool)

(assert (=> b!88493 m!94431))

(assert (=> d!23329 d!23529))

(declare-fun d!23531 () Bool)

(assert (=> d!23531 (= (inRange!0 (ite c!14505 (ite c!14511 (index!3155 lt!41793) (ite c!14508 (index!3154 lt!41783) (index!3157 lt!41783))) (ite c!14513 (index!3155 lt!41799) (ite c!14509 (index!3154 lt!41786) (index!3157 lt!41786)))) (mask!6397 newMap!16)) (and (bvsge (ite c!14505 (ite c!14511 (index!3155 lt!41793) (ite c!14508 (index!3154 lt!41783) (index!3157 lt!41783))) (ite c!14513 (index!3155 lt!41799) (ite c!14509 (index!3154 lt!41786) (index!3157 lt!41786)))) #b00000000000000000000000000000000) (bvslt (ite c!14505 (ite c!14511 (index!3155 lt!41793) (ite c!14508 (index!3154 lt!41783) (index!3157 lt!41783))) (ite c!14513 (index!3155 lt!41799) (ite c!14509 (index!3154 lt!41786) (index!3157 lt!41786)))) (bvadd (mask!6397 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!8427 d!23531))

(declare-fun d!23533 () Bool)

(assert (=> d!23533 (= (+!118 (getCurrentListMap!444 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) (zeroValue!2249 newMap!16) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 lt!41579)) (getCurrentListMap!444 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) lt!41797 lt!41579 (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!42216 () Unit!2618)

(declare-fun choose!532 (array!4042 array!4044 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3035 V!3035 V!3035 Int) Unit!2618)

(assert (=> d!23533 (= lt!42216 (choose!532 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) lt!41797 (zeroValue!2249 newMap!16) lt!41579 (minValue!2249 newMap!16) (defaultEntry!2359 newMap!16)))))

(assert (=> d!23533 (validMask!0 (mask!6397 newMap!16))))

(assert (=> d!23533 (= (lemmaChangeZeroKeyThenAddPairToListMap!32 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (extraKeys!2194 newMap!16) lt!41797 (zeroValue!2249 newMap!16) lt!41579 (minValue!2249 newMap!16) (defaultEntry!2359 newMap!16)) lt!42216)))

(declare-fun bs!3718 () Bool)

(assert (= bs!3718 d!23533))

(assert (=> bs!3718 m!93611))

(declare-fun m!94433 () Bool)

(assert (=> bs!3718 m!94433))

(assert (=> bs!3718 m!93611))

(declare-fun m!94435 () Bool)

(assert (=> bs!3718 m!94435))

(assert (=> bs!3718 m!93827))

(declare-fun m!94437 () Bool)

(assert (=> bs!3718 m!94437))

(assert (=> b!87939 d!23533))

(declare-fun d!23535 () Bool)

(assert (=> d!23535 (= (+!118 (+!118 lt!41585 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) (+!118 (+!118 lt!41585 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))))

(assert (=> d!23535 true))

(declare-fun _$28!147 () Unit!2618)

(assert (=> d!23535 (= (choose!522 lt!41585 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))) _$28!147)))

(declare-fun bs!3719 () Bool)

(assert (= bs!3719 d!23535))

(assert (=> bs!3719 m!93525))

(assert (=> bs!3719 m!93525))

(assert (=> bs!3719 m!93531))

(assert (=> bs!3719 m!93529))

(assert (=> bs!3719 m!93529))

(assert (=> bs!3719 m!93533))

(assert (=> d!23319 d!23535))

(declare-fun d!23537 () Bool)

(declare-fun e!57628 () Bool)

(assert (=> d!23537 e!57628))

(declare-fun res!45309 () Bool)

(assert (=> d!23537 (=> (not res!45309) (not e!57628))))

(declare-fun lt!42217 () ListLongMap!1491)

(assert (=> d!23537 (= res!45309 (contains!766 lt!42217 (_1!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(declare-fun lt!42218 () List!1556)

(assert (=> d!23537 (= lt!42217 (ListLongMap!1492 lt!42218))))

(declare-fun lt!42219 () Unit!2618)

(declare-fun lt!42220 () Unit!2618)

(assert (=> d!23537 (= lt!42219 lt!42220)))

(assert (=> d!23537 (= (getValueByKey!140 lt!42218 (_1!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))) (Some!145 (_2!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23537 (= lt!42220 (lemmaContainsTupThenGetReturnValue!59 lt!42218 (_1!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) (_2!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23537 (= lt!42218 (insertStrictlySorted!61 (toList!761 (+!118 lt!41585 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))) (_1!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) (_2!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23537 (= (+!118 (+!118 lt!41585 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!42217)))

(declare-fun b!88498 () Bool)

(declare-fun res!45308 () Bool)

(assert (=> b!88498 (=> (not res!45308) (not e!57628))))

(assert (=> b!88498 (= res!45308 (= (getValueByKey!140 (toList!761 lt!42217) (_1!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))) (Some!145 (_2!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))))))))

(declare-fun b!88499 () Bool)

(assert (=> b!88499 (= e!57628 (contains!768 (toList!761 lt!42217) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))))))

(assert (= (and d!23537 res!45309) b!88498))

(assert (= (and b!88498 res!45308) b!88499))

(declare-fun m!94439 () Bool)

(assert (=> d!23537 m!94439))

(declare-fun m!94441 () Bool)

(assert (=> d!23537 m!94441))

(declare-fun m!94443 () Bool)

(assert (=> d!23537 m!94443))

(declare-fun m!94445 () Bool)

(assert (=> d!23537 m!94445))

(declare-fun m!94447 () Bool)

(assert (=> b!88498 m!94447))

(declare-fun m!94449 () Bool)

(assert (=> b!88499 m!94449))

(assert (=> d!23319 d!23537))

(declare-fun d!23539 () Bool)

(declare-fun e!57629 () Bool)

(assert (=> d!23539 e!57629))

(declare-fun res!45311 () Bool)

(assert (=> d!23539 (=> (not res!45311) (not e!57629))))

(declare-fun lt!42221 () ListLongMap!1491)

(assert (=> d!23539 (= res!45311 (contains!766 lt!42221 (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(declare-fun lt!42222 () List!1556)

(assert (=> d!23539 (= lt!42221 (ListLongMap!1492 lt!42222))))

(declare-fun lt!42223 () Unit!2618)

(declare-fun lt!42224 () Unit!2618)

(assert (=> d!23539 (= lt!42223 lt!42224)))

(assert (=> d!23539 (= (getValueByKey!140 lt!42222 (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))) (Some!145 (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(assert (=> d!23539 (= lt!42224 (lemmaContainsTupThenGetReturnValue!59 lt!42222 (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(assert (=> d!23539 (= lt!42222 (insertStrictlySorted!61 (toList!761 lt!41585) (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(assert (=> d!23539 (= (+!118 lt!41585 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) lt!42221)))

(declare-fun b!88500 () Bool)

(declare-fun res!45310 () Bool)

(assert (=> b!88500 (=> (not res!45310) (not e!57629))))

(assert (=> b!88500 (= res!45310 (= (getValueByKey!140 (toList!761 lt!42221) (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))) (Some!145 (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))))))

(declare-fun b!88501 () Bool)

(assert (=> b!88501 (= e!57629 (contains!768 (toList!761 lt!42221) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))))

(assert (= (and d!23539 res!45311) b!88500))

(assert (= (and b!88500 res!45310) b!88501))

(declare-fun m!94451 () Bool)

(assert (=> d!23539 m!94451))

(declare-fun m!94453 () Bool)

(assert (=> d!23539 m!94453))

(declare-fun m!94455 () Bool)

(assert (=> d!23539 m!94455))

(declare-fun m!94457 () Bool)

(assert (=> d!23539 m!94457))

(declare-fun m!94459 () Bool)

(assert (=> b!88500 m!94459))

(declare-fun m!94461 () Bool)

(assert (=> b!88501 m!94461))

(assert (=> d!23319 d!23539))

(declare-fun d!23541 () Bool)

(declare-fun e!57630 () Bool)

(assert (=> d!23541 e!57630))

(declare-fun res!45313 () Bool)

(assert (=> d!23541 (=> (not res!45313) (not e!57630))))

(declare-fun lt!42225 () ListLongMap!1491)

(assert (=> d!23541 (= res!45313 (contains!766 lt!42225 (_1!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(declare-fun lt!42226 () List!1556)

(assert (=> d!23541 (= lt!42225 (ListLongMap!1492 lt!42226))))

(declare-fun lt!42227 () Unit!2618)

(declare-fun lt!42228 () Unit!2618)

(assert (=> d!23541 (= lt!42227 lt!42228)))

(assert (=> d!23541 (= (getValueByKey!140 lt!42226 (_1!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))) (Some!145 (_2!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23541 (= lt!42228 (lemmaContainsTupThenGetReturnValue!59 lt!42226 (_1!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) (_2!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23541 (= lt!42226 (insertStrictlySorted!61 (toList!761 lt!41585) (_1!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) (_2!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))))))

(assert (=> d!23541 (= (+!118 lt!41585 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) lt!42225)))

(declare-fun b!88502 () Bool)

(declare-fun res!45312 () Bool)

(assert (=> b!88502 (=> (not res!45312) (not e!57630))))

(assert (=> b!88502 (= res!45312 (= (getValueByKey!140 (toList!761 lt!42225) (_1!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))) (Some!145 (_2!1130 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))))))))

(declare-fun b!88503 () Bool)

(assert (=> b!88503 (= e!57630 (contains!768 (toList!761 lt!42225) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))))))

(assert (= (and d!23541 res!45313) b!88502))

(assert (= (and b!88502 res!45312) b!88503))

(declare-fun m!94463 () Bool)

(assert (=> d!23541 m!94463))

(declare-fun m!94465 () Bool)

(assert (=> d!23541 m!94465))

(declare-fun m!94467 () Bool)

(assert (=> d!23541 m!94467))

(declare-fun m!94469 () Bool)

(assert (=> d!23541 m!94469))

(declare-fun m!94471 () Bool)

(assert (=> b!88502 m!94471))

(declare-fun m!94473 () Bool)

(assert (=> b!88503 m!94473))

(assert (=> d!23319 d!23541))

(declare-fun d!23543 () Bool)

(declare-fun e!57631 () Bool)

(assert (=> d!23543 e!57631))

(declare-fun res!45315 () Bool)

(assert (=> d!23543 (=> (not res!45315) (not e!57631))))

(declare-fun lt!42229 () ListLongMap!1491)

(assert (=> d!23543 (= res!45315 (contains!766 lt!42229 (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(declare-fun lt!42230 () List!1556)

(assert (=> d!23543 (= lt!42229 (ListLongMap!1492 lt!42230))))

(declare-fun lt!42231 () Unit!2618)

(declare-fun lt!42232 () Unit!2618)

(assert (=> d!23543 (= lt!42231 lt!42232)))

(assert (=> d!23543 (= (getValueByKey!140 lt!42230 (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))) (Some!145 (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(assert (=> d!23543 (= lt!42232 (lemmaContainsTupThenGetReturnValue!59 lt!42230 (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(assert (=> d!23543 (= lt!42230 (insertStrictlySorted!61 (toList!761 (+!118 lt!41585 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992)))))) (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(assert (=> d!23543 (= (+!118 (+!118 lt!41585 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 (v!2663 (underlying!295 thiss!992))))) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)) lt!42229)))

(declare-fun b!88504 () Bool)

(declare-fun res!45314 () Bool)

(assert (=> b!88504 (=> (not res!45314) (not e!57631))))

(assert (=> b!88504 (= res!45314 (= (getValueByKey!140 (toList!761 lt!42229) (_1!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))) (Some!145 (_2!1130 (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))))))

(declare-fun b!88505 () Bool)

(assert (=> b!88505 (= e!57631 (contains!768 (toList!761 lt!42229) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))))

(assert (= (and d!23543 res!45315) b!88504))

(assert (= (and b!88504 res!45314) b!88505))

(declare-fun m!94475 () Bool)

(assert (=> d!23543 m!94475))

(declare-fun m!94477 () Bool)

(assert (=> d!23543 m!94477))

(declare-fun m!94479 () Bool)

(assert (=> d!23543 m!94479))

(declare-fun m!94481 () Bool)

(assert (=> d!23543 m!94481))

(declare-fun m!94483 () Bool)

(assert (=> b!88504 m!94483))

(declare-fun m!94485 () Bool)

(assert (=> b!88505 m!94485))

(assert (=> d!23319 d!23543))

(declare-fun b!88509 () Bool)

(declare-fun e!57633 () Option!146)

(assert (=> b!88509 (= e!57633 None!144)))

(declare-fun b!88507 () Bool)

(declare-fun e!57632 () Option!146)

(assert (=> b!88507 (= e!57632 e!57633)))

(declare-fun c!14662 () Bool)

(assert (=> b!88507 (= c!14662 (and ((_ is Cons!1552) (toList!761 lt!41689)) (not (= (_1!1130 (h!2144 (toList!761 lt!41689))) (_1!1130 lt!41591)))))))

(declare-fun d!23545 () Bool)

(declare-fun c!14661 () Bool)

(assert (=> d!23545 (= c!14661 (and ((_ is Cons!1552) (toList!761 lt!41689)) (= (_1!1130 (h!2144 (toList!761 lt!41689))) (_1!1130 lt!41591))))))

(assert (=> d!23545 (= (getValueByKey!140 (toList!761 lt!41689) (_1!1130 lt!41591)) e!57632)))

(declare-fun b!88508 () Bool)

(assert (=> b!88508 (= e!57633 (getValueByKey!140 (t!5302 (toList!761 lt!41689)) (_1!1130 lt!41591)))))

(declare-fun b!88506 () Bool)

(assert (=> b!88506 (= e!57632 (Some!145 (_2!1130 (h!2144 (toList!761 lt!41689)))))))

(assert (= (and d!23545 c!14661) b!88506))

(assert (= (and d!23545 (not c!14661)) b!88507))

(assert (= (and b!88507 c!14662) b!88508))

(assert (= (and b!88507 (not c!14662)) b!88509))

(declare-fun m!94487 () Bool)

(assert (=> b!88508 m!94487))

(assert (=> b!87819 d!23545))

(declare-fun d!23547 () Bool)

(declare-fun e!57634 () Bool)

(assert (=> d!23547 e!57634))

(declare-fun res!45316 () Bool)

(assert (=> d!23547 (=> res!45316 e!57634)))

(declare-fun lt!42233 () Bool)

(assert (=> d!23547 (= res!45316 (not lt!42233))))

(declare-fun lt!42235 () Bool)

(assert (=> d!23547 (= lt!42233 lt!42235)))

(declare-fun lt!42234 () Unit!2618)

(declare-fun e!57635 () Unit!2618)

(assert (=> d!23547 (= lt!42234 e!57635)))

(declare-fun c!14663 () Bool)

(assert (=> d!23547 (= c!14663 lt!42235)))

(assert (=> d!23547 (= lt!42235 (containsKey!144 (toList!761 lt!41708) (_1!1130 lt!41591)))))

(assert (=> d!23547 (= (contains!766 lt!41708 (_1!1130 lt!41591)) lt!42233)))

(declare-fun b!88510 () Bool)

(declare-fun lt!42236 () Unit!2618)

(assert (=> b!88510 (= e!57635 lt!42236)))

(assert (=> b!88510 (= lt!42236 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 lt!41708) (_1!1130 lt!41591)))))

(assert (=> b!88510 (isDefined!94 (getValueByKey!140 (toList!761 lt!41708) (_1!1130 lt!41591)))))

(declare-fun b!88511 () Bool)

(declare-fun Unit!2646 () Unit!2618)

(assert (=> b!88511 (= e!57635 Unit!2646)))

(declare-fun b!88512 () Bool)

(assert (=> b!88512 (= e!57634 (isDefined!94 (getValueByKey!140 (toList!761 lt!41708) (_1!1130 lt!41591))))))

(assert (= (and d!23547 c!14663) b!88510))

(assert (= (and d!23547 (not c!14663)) b!88511))

(assert (= (and d!23547 (not res!45316)) b!88512))

(declare-fun m!94489 () Bool)

(assert (=> d!23547 m!94489))

(declare-fun m!94491 () Bool)

(assert (=> b!88510 m!94491))

(assert (=> b!88510 m!93509))

(assert (=> b!88510 m!93509))

(declare-fun m!94493 () Bool)

(assert (=> b!88510 m!94493))

(assert (=> b!88512 m!93509))

(assert (=> b!88512 m!93509))

(assert (=> b!88512 m!94493))

(assert (=> d!23315 d!23547))

(declare-fun b!88516 () Bool)

(declare-fun e!57637 () Option!146)

(assert (=> b!88516 (= e!57637 None!144)))

(declare-fun b!88514 () Bool)

(declare-fun e!57636 () Option!146)

(assert (=> b!88514 (= e!57636 e!57637)))

(declare-fun c!14665 () Bool)

(assert (=> b!88514 (= c!14665 (and ((_ is Cons!1552) lt!41709) (not (= (_1!1130 (h!2144 lt!41709)) (_1!1130 lt!41591)))))))

(declare-fun d!23549 () Bool)

(declare-fun c!14664 () Bool)

(assert (=> d!23549 (= c!14664 (and ((_ is Cons!1552) lt!41709) (= (_1!1130 (h!2144 lt!41709)) (_1!1130 lt!41591))))))

(assert (=> d!23549 (= (getValueByKey!140 lt!41709 (_1!1130 lt!41591)) e!57636)))

(declare-fun b!88515 () Bool)

(assert (=> b!88515 (= e!57637 (getValueByKey!140 (t!5302 lt!41709) (_1!1130 lt!41591)))))

(declare-fun b!88513 () Bool)

(assert (=> b!88513 (= e!57636 (Some!145 (_2!1130 (h!2144 lt!41709))))))

(assert (= (and d!23549 c!14664) b!88513))

(assert (= (and d!23549 (not c!14664)) b!88514))

(assert (= (and b!88514 c!14665) b!88515))

(assert (= (and b!88514 (not c!14665)) b!88516))

(declare-fun m!94495 () Bool)

(assert (=> b!88515 m!94495))

(assert (=> d!23315 d!23549))

(declare-fun d!23551 () Bool)

(assert (=> d!23551 (= (getValueByKey!140 lt!41709 (_1!1130 lt!41591)) (Some!145 (_2!1130 lt!41591)))))

(declare-fun lt!42237 () Unit!2618)

(assert (=> d!23551 (= lt!42237 (choose!526 lt!41709 (_1!1130 lt!41591) (_2!1130 lt!41591)))))

(declare-fun e!57638 () Bool)

(assert (=> d!23551 e!57638))

(declare-fun res!45317 () Bool)

(assert (=> d!23551 (=> (not res!45317) (not e!57638))))

(assert (=> d!23551 (= res!45317 (isStrictlySorted!294 lt!41709))))

(assert (=> d!23551 (= (lemmaContainsTupThenGetReturnValue!59 lt!41709 (_1!1130 lt!41591) (_2!1130 lt!41591)) lt!42237)))

(declare-fun b!88517 () Bool)

(declare-fun res!45318 () Bool)

(assert (=> b!88517 (=> (not res!45318) (not e!57638))))

(assert (=> b!88517 (= res!45318 (containsKey!144 lt!41709 (_1!1130 lt!41591)))))

(declare-fun b!88518 () Bool)

(assert (=> b!88518 (= e!57638 (contains!768 lt!41709 (tuple2!2241 (_1!1130 lt!41591) (_2!1130 lt!41591))))))

(assert (= (and d!23551 res!45317) b!88517))

(assert (= (and b!88517 res!45318) b!88518))

(assert (=> d!23551 m!93503))

(declare-fun m!94497 () Bool)

(assert (=> d!23551 m!94497))

(declare-fun m!94499 () Bool)

(assert (=> d!23551 m!94499))

(declare-fun m!94501 () Bool)

(assert (=> b!88517 m!94501))

(declare-fun m!94503 () Bool)

(assert (=> b!88518 m!94503))

(assert (=> d!23315 d!23551))

(declare-fun b!88519 () Bool)

(declare-fun e!57643 () List!1556)

(declare-fun call!8513 () List!1556)

(assert (=> b!88519 (= e!57643 call!8513)))

(declare-fun b!88520 () Bool)

(declare-fun c!14669 () Bool)

(declare-fun c!14668 () Bool)

(declare-fun e!57640 () List!1556)

(assert (=> b!88520 (= e!57640 (ite c!14669 (t!5302 (toList!761 lt!41580)) (ite c!14668 (Cons!1552 (h!2144 (toList!761 lt!41580)) (t!5302 (toList!761 lt!41580))) Nil!1553)))))

(declare-fun b!88521 () Bool)

(declare-fun e!57639 () List!1556)

(declare-fun call!8512 () List!1556)

(assert (=> b!88521 (= e!57639 call!8512)))

(declare-fun bm!8509 () Bool)

(assert (=> bm!8509 (= call!8513 call!8512)))

(declare-fun b!88522 () Bool)

(declare-fun e!57642 () Bool)

(declare-fun lt!42238 () List!1556)

(assert (=> b!88522 (= e!57642 (contains!768 lt!42238 (tuple2!2241 (_1!1130 lt!41591) (_2!1130 lt!41591))))))

(declare-fun bm!8510 () Bool)

(declare-fun call!8514 () List!1556)

(assert (=> bm!8510 (= call!8512 call!8514)))

(declare-fun d!23553 () Bool)

(assert (=> d!23553 e!57642))

(declare-fun res!45319 () Bool)

(assert (=> d!23553 (=> (not res!45319) (not e!57642))))

(assert (=> d!23553 (= res!45319 (isStrictlySorted!294 lt!42238))))

(declare-fun e!57641 () List!1556)

(assert (=> d!23553 (= lt!42238 e!57641)))

(declare-fun c!14666 () Bool)

(assert (=> d!23553 (= c!14666 (and ((_ is Cons!1552) (toList!761 lt!41580)) (bvslt (_1!1130 (h!2144 (toList!761 lt!41580))) (_1!1130 lt!41591))))))

(assert (=> d!23553 (isStrictlySorted!294 (toList!761 lt!41580))))

(assert (=> d!23553 (= (insertStrictlySorted!61 (toList!761 lt!41580) (_1!1130 lt!41591) (_2!1130 lt!41591)) lt!42238)))

(declare-fun b!88523 () Bool)

(assert (=> b!88523 (= e!57643 call!8513)))

(declare-fun b!88524 () Bool)

(assert (=> b!88524 (= c!14668 (and ((_ is Cons!1552) (toList!761 lt!41580)) (bvsgt (_1!1130 (h!2144 (toList!761 lt!41580))) (_1!1130 lt!41591))))))

(assert (=> b!88524 (= e!57639 e!57643)))

(declare-fun bm!8511 () Bool)

(assert (=> bm!8511 (= call!8514 ($colon$colon!72 e!57640 (ite c!14666 (h!2144 (toList!761 lt!41580)) (tuple2!2241 (_1!1130 lt!41591) (_2!1130 lt!41591)))))))

(declare-fun c!14667 () Bool)

(assert (=> bm!8511 (= c!14667 c!14666)))

(declare-fun b!88525 () Bool)

(assert (=> b!88525 (= e!57641 e!57639)))

(assert (=> b!88525 (= c!14669 (and ((_ is Cons!1552) (toList!761 lt!41580)) (= (_1!1130 (h!2144 (toList!761 lt!41580))) (_1!1130 lt!41591))))))

(declare-fun b!88526 () Bool)

(assert (=> b!88526 (= e!57640 (insertStrictlySorted!61 (t!5302 (toList!761 lt!41580)) (_1!1130 lt!41591) (_2!1130 lt!41591)))))

(declare-fun b!88527 () Bool)

(assert (=> b!88527 (= e!57641 call!8514)))

(declare-fun b!88528 () Bool)

(declare-fun res!45320 () Bool)

(assert (=> b!88528 (=> (not res!45320) (not e!57642))))

(assert (=> b!88528 (= res!45320 (containsKey!144 lt!42238 (_1!1130 lt!41591)))))

(assert (= (and d!23553 c!14666) b!88527))

(assert (= (and d!23553 (not c!14666)) b!88525))

(assert (= (and b!88525 c!14669) b!88521))

(assert (= (and b!88525 (not c!14669)) b!88524))

(assert (= (and b!88524 c!14668) b!88519))

(assert (= (and b!88524 (not c!14668)) b!88523))

(assert (= (or b!88519 b!88523) bm!8509))

(assert (= (or b!88521 bm!8509) bm!8510))

(assert (= (or b!88527 bm!8510) bm!8511))

(assert (= (and bm!8511 c!14667) b!88526))

(assert (= (and bm!8511 (not c!14667)) b!88520))

(assert (= (and d!23553 res!45319) b!88528))

(assert (= (and b!88528 res!45320) b!88522))

(declare-fun m!94505 () Bool)

(assert (=> bm!8511 m!94505))

(declare-fun m!94507 () Bool)

(assert (=> b!88522 m!94507))

(declare-fun m!94509 () Bool)

(assert (=> b!88528 m!94509))

(declare-fun m!94511 () Bool)

(assert (=> d!23553 m!94511))

(declare-fun m!94513 () Bool)

(assert (=> d!23553 m!94513))

(declare-fun m!94515 () Bool)

(assert (=> b!88526 m!94515))

(assert (=> d!23315 d!23553))

(declare-fun d!23555 () Bool)

(declare-fun res!45325 () Bool)

(declare-fun e!57648 () Bool)

(assert (=> d!23555 (=> res!45325 e!57648)))

(assert (=> d!23555 (= res!45325 (and ((_ is Cons!1552) (toList!761 lt!41575)) (= (_1!1130 (h!2144 (toList!761 lt!41575))) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355))))))

(assert (=> d!23555 (= (containsKey!144 (toList!761 lt!41575) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)) e!57648)))

(declare-fun b!88533 () Bool)

(declare-fun e!57649 () Bool)

(assert (=> b!88533 (= e!57648 e!57649)))

(declare-fun res!45326 () Bool)

(assert (=> b!88533 (=> (not res!45326) (not e!57649))))

(assert (=> b!88533 (= res!45326 (and (or (not ((_ is Cons!1552) (toList!761 lt!41575))) (bvsle (_1!1130 (h!2144 (toList!761 lt!41575))) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355))) ((_ is Cons!1552) (toList!761 lt!41575)) (bvslt (_1!1130 (h!2144 (toList!761 lt!41575))) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355))))))

(declare-fun b!88534 () Bool)

(assert (=> b!88534 (= e!57649 (containsKey!144 (t!5302 (toList!761 lt!41575)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(assert (= (and d!23555 (not res!45325)) b!88533))

(assert (= (and b!88533 res!45326) b!88534))

(assert (=> b!88534 m!93277))

(declare-fun m!94517 () Bool)

(assert (=> b!88534 m!94517))

(assert (=> d!23323 d!23555))

(declare-fun d!23557 () Bool)

(declare-fun e!57650 () Bool)

(assert (=> d!23557 e!57650))

(declare-fun res!45327 () Bool)

(assert (=> d!23557 (=> res!45327 e!57650)))

(declare-fun lt!42239 () Bool)

(assert (=> d!23557 (= res!45327 (not lt!42239))))

(declare-fun lt!42241 () Bool)

(assert (=> d!23557 (= lt!42239 lt!42241)))

(declare-fun lt!42240 () Unit!2618)

(declare-fun e!57651 () Unit!2618)

(assert (=> d!23557 (= lt!42240 e!57651)))

(declare-fun c!14670 () Bool)

(assert (=> d!23557 (= c!14670 lt!42241)))

(assert (=> d!23557 (= lt!42241 (containsKey!144 (toList!761 lt!41664) (_1!1130 lt!41592)))))

(assert (=> d!23557 (= (contains!766 lt!41664 (_1!1130 lt!41592)) lt!42239)))

(declare-fun b!88535 () Bool)

(declare-fun lt!42242 () Unit!2618)

(assert (=> b!88535 (= e!57651 lt!42242)))

(assert (=> b!88535 (= lt!42242 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 lt!41664) (_1!1130 lt!41592)))))

(assert (=> b!88535 (isDefined!94 (getValueByKey!140 (toList!761 lt!41664) (_1!1130 lt!41592)))))

(declare-fun b!88536 () Bool)

(declare-fun Unit!2647 () Unit!2618)

(assert (=> b!88536 (= e!57651 Unit!2647)))

(declare-fun b!88537 () Bool)

(assert (=> b!88537 (= e!57650 (isDefined!94 (getValueByKey!140 (toList!761 lt!41664) (_1!1130 lt!41592))))))

(assert (= (and d!23557 c!14670) b!88535))

(assert (= (and d!23557 (not c!14670)) b!88536))

(assert (= (and d!23557 (not res!45327)) b!88537))

(declare-fun m!94519 () Bool)

(assert (=> d!23557 m!94519))

(declare-fun m!94521 () Bool)

(assert (=> b!88535 m!94521))

(assert (=> b!88535 m!93413))

(assert (=> b!88535 m!93413))

(declare-fun m!94523 () Bool)

(assert (=> b!88535 m!94523))

(assert (=> b!88537 m!93413))

(assert (=> b!88537 m!93413))

(assert (=> b!88537 m!94523))

(assert (=> d!23301 d!23557))

(declare-fun b!88541 () Bool)

(declare-fun e!57653 () Option!146)

(assert (=> b!88541 (= e!57653 None!144)))

(declare-fun b!88539 () Bool)

(declare-fun e!57652 () Option!146)

(assert (=> b!88539 (= e!57652 e!57653)))

(declare-fun c!14672 () Bool)

(assert (=> b!88539 (= c!14672 (and ((_ is Cons!1552) lt!41665) (not (= (_1!1130 (h!2144 lt!41665)) (_1!1130 lt!41592)))))))

(declare-fun d!23559 () Bool)

(declare-fun c!14671 () Bool)

(assert (=> d!23559 (= c!14671 (and ((_ is Cons!1552) lt!41665) (= (_1!1130 (h!2144 lt!41665)) (_1!1130 lt!41592))))))

(assert (=> d!23559 (= (getValueByKey!140 lt!41665 (_1!1130 lt!41592)) e!57652)))

(declare-fun b!88540 () Bool)

(assert (=> b!88540 (= e!57653 (getValueByKey!140 (t!5302 lt!41665) (_1!1130 lt!41592)))))

(declare-fun b!88538 () Bool)

(assert (=> b!88538 (= e!57652 (Some!145 (_2!1130 (h!2144 lt!41665))))))

(assert (= (and d!23559 c!14671) b!88538))

(assert (= (and d!23559 (not c!14671)) b!88539))

(assert (= (and b!88539 c!14672) b!88540))

(assert (= (and b!88539 (not c!14672)) b!88541))

(declare-fun m!94525 () Bool)

(assert (=> b!88540 m!94525))

(assert (=> d!23301 d!23559))

(declare-fun d!23561 () Bool)

(assert (=> d!23561 (= (getValueByKey!140 lt!41665 (_1!1130 lt!41592)) (Some!145 (_2!1130 lt!41592)))))

(declare-fun lt!42243 () Unit!2618)

(assert (=> d!23561 (= lt!42243 (choose!526 lt!41665 (_1!1130 lt!41592) (_2!1130 lt!41592)))))

(declare-fun e!57654 () Bool)

(assert (=> d!23561 e!57654))

(declare-fun res!45328 () Bool)

(assert (=> d!23561 (=> (not res!45328) (not e!57654))))

(assert (=> d!23561 (= res!45328 (isStrictlySorted!294 lt!41665))))

(assert (=> d!23561 (= (lemmaContainsTupThenGetReturnValue!59 lt!41665 (_1!1130 lt!41592) (_2!1130 lt!41592)) lt!42243)))

(declare-fun b!88542 () Bool)

(declare-fun res!45329 () Bool)

(assert (=> b!88542 (=> (not res!45329) (not e!57654))))

(assert (=> b!88542 (= res!45329 (containsKey!144 lt!41665 (_1!1130 lt!41592)))))

(declare-fun b!88543 () Bool)

(assert (=> b!88543 (= e!57654 (contains!768 lt!41665 (tuple2!2241 (_1!1130 lt!41592) (_2!1130 lt!41592))))))

(assert (= (and d!23561 res!45328) b!88542))

(assert (= (and b!88542 res!45329) b!88543))

(assert (=> d!23561 m!93407))

(declare-fun m!94527 () Bool)

(assert (=> d!23561 m!94527))

(declare-fun m!94529 () Bool)

(assert (=> d!23561 m!94529))

(declare-fun m!94531 () Bool)

(assert (=> b!88542 m!94531))

(declare-fun m!94533 () Bool)

(assert (=> b!88543 m!94533))

(assert (=> d!23301 d!23561))

(declare-fun b!88544 () Bool)

(declare-fun e!57659 () List!1556)

(declare-fun call!8516 () List!1556)

(assert (=> b!88544 (= e!57659 call!8516)))

(declare-fun c!14676 () Bool)

(declare-fun e!57656 () List!1556)

(declare-fun b!88545 () Bool)

(declare-fun c!14675 () Bool)

(assert (=> b!88545 (= e!57656 (ite c!14676 (t!5302 (toList!761 (+!118 lt!41585 lt!41584))) (ite c!14675 (Cons!1552 (h!2144 (toList!761 (+!118 lt!41585 lt!41584))) (t!5302 (toList!761 (+!118 lt!41585 lt!41584)))) Nil!1553)))))

(declare-fun b!88546 () Bool)

(declare-fun e!57655 () List!1556)

(declare-fun call!8515 () List!1556)

(assert (=> b!88546 (= e!57655 call!8515)))

(declare-fun bm!8512 () Bool)

(assert (=> bm!8512 (= call!8516 call!8515)))

(declare-fun b!88547 () Bool)

(declare-fun e!57658 () Bool)

(declare-fun lt!42244 () List!1556)

(assert (=> b!88547 (= e!57658 (contains!768 lt!42244 (tuple2!2241 (_1!1130 lt!41592) (_2!1130 lt!41592))))))

(declare-fun bm!8513 () Bool)

(declare-fun call!8517 () List!1556)

(assert (=> bm!8513 (= call!8515 call!8517)))

(declare-fun d!23563 () Bool)

(assert (=> d!23563 e!57658))

(declare-fun res!45330 () Bool)

(assert (=> d!23563 (=> (not res!45330) (not e!57658))))

(assert (=> d!23563 (= res!45330 (isStrictlySorted!294 lt!42244))))

(declare-fun e!57657 () List!1556)

(assert (=> d!23563 (= lt!42244 e!57657)))

(declare-fun c!14673 () Bool)

(assert (=> d!23563 (= c!14673 (and ((_ is Cons!1552) (toList!761 (+!118 lt!41585 lt!41584))) (bvslt (_1!1130 (h!2144 (toList!761 (+!118 lt!41585 lt!41584)))) (_1!1130 lt!41592))))))

(assert (=> d!23563 (isStrictlySorted!294 (toList!761 (+!118 lt!41585 lt!41584)))))

(assert (=> d!23563 (= (insertStrictlySorted!61 (toList!761 (+!118 lt!41585 lt!41584)) (_1!1130 lt!41592) (_2!1130 lt!41592)) lt!42244)))

(declare-fun b!88548 () Bool)

(assert (=> b!88548 (= e!57659 call!8516)))

(declare-fun b!88549 () Bool)

(assert (=> b!88549 (= c!14675 (and ((_ is Cons!1552) (toList!761 (+!118 lt!41585 lt!41584))) (bvsgt (_1!1130 (h!2144 (toList!761 (+!118 lt!41585 lt!41584)))) (_1!1130 lt!41592))))))

(assert (=> b!88549 (= e!57655 e!57659)))

(declare-fun bm!8514 () Bool)

(assert (=> bm!8514 (= call!8517 ($colon$colon!72 e!57656 (ite c!14673 (h!2144 (toList!761 (+!118 lt!41585 lt!41584))) (tuple2!2241 (_1!1130 lt!41592) (_2!1130 lt!41592)))))))

(declare-fun c!14674 () Bool)

(assert (=> bm!8514 (= c!14674 c!14673)))

(declare-fun b!88550 () Bool)

(assert (=> b!88550 (= e!57657 e!57655)))

(assert (=> b!88550 (= c!14676 (and ((_ is Cons!1552) (toList!761 (+!118 lt!41585 lt!41584))) (= (_1!1130 (h!2144 (toList!761 (+!118 lt!41585 lt!41584)))) (_1!1130 lt!41592))))))

(declare-fun b!88551 () Bool)

(assert (=> b!88551 (= e!57656 (insertStrictlySorted!61 (t!5302 (toList!761 (+!118 lt!41585 lt!41584))) (_1!1130 lt!41592) (_2!1130 lt!41592)))))

(declare-fun b!88552 () Bool)

(assert (=> b!88552 (= e!57657 call!8517)))

(declare-fun b!88553 () Bool)

(declare-fun res!45331 () Bool)

(assert (=> b!88553 (=> (not res!45331) (not e!57658))))

(assert (=> b!88553 (= res!45331 (containsKey!144 lt!42244 (_1!1130 lt!41592)))))

(assert (= (and d!23563 c!14673) b!88552))

(assert (= (and d!23563 (not c!14673)) b!88550))

(assert (= (and b!88550 c!14676) b!88546))

(assert (= (and b!88550 (not c!14676)) b!88549))

(assert (= (and b!88549 c!14675) b!88544))

(assert (= (and b!88549 (not c!14675)) b!88548))

(assert (= (or b!88544 b!88548) bm!8512))

(assert (= (or b!88546 bm!8512) bm!8513))

(assert (= (or b!88552 bm!8513) bm!8514))

(assert (= (and bm!8514 c!14674) b!88551))

(assert (= (and bm!8514 (not c!14674)) b!88545))

(assert (= (and d!23563 res!45330) b!88553))

(assert (= (and b!88553 res!45331) b!88547))

(declare-fun m!94535 () Bool)

(assert (=> bm!8514 m!94535))

(declare-fun m!94537 () Bool)

(assert (=> b!88547 m!94537))

(declare-fun m!94539 () Bool)

(assert (=> b!88553 m!94539))

(declare-fun m!94541 () Bool)

(assert (=> d!23563 m!94541))

(declare-fun m!94543 () Bool)

(assert (=> d!23563 m!94543))

(declare-fun m!94545 () Bool)

(assert (=> b!88551 m!94545))

(assert (=> d!23301 d!23563))

(declare-fun d!23565 () Bool)

(declare-fun e!57660 () Bool)

(assert (=> d!23565 e!57660))

(declare-fun res!45332 () Bool)

(assert (=> d!23565 (=> res!45332 e!57660)))

(declare-fun lt!42245 () Bool)

(assert (=> d!23565 (= res!45332 (not lt!42245))))

(declare-fun lt!42247 () Bool)

(assert (=> d!23565 (= lt!42245 lt!42247)))

(declare-fun lt!42246 () Unit!2618)

(declare-fun e!57661 () Unit!2618)

(assert (=> d!23565 (= lt!42246 e!57661)))

(declare-fun c!14677 () Bool)

(assert (=> d!23565 (= c!14677 lt!42247)))

(assert (=> d!23565 (= lt!42247 (containsKey!144 (toList!761 lt!41712) (_1!1130 lt!41584)))))

(assert (=> d!23565 (= (contains!766 lt!41712 (_1!1130 lt!41584)) lt!42245)))

(declare-fun b!88554 () Bool)

(declare-fun lt!42248 () Unit!2618)

(assert (=> b!88554 (= e!57661 lt!42248)))

(assert (=> b!88554 (= lt!42248 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 lt!41712) (_1!1130 lt!41584)))))

(assert (=> b!88554 (isDefined!94 (getValueByKey!140 (toList!761 lt!41712) (_1!1130 lt!41584)))))

(declare-fun b!88555 () Bool)

(declare-fun Unit!2648 () Unit!2618)

(assert (=> b!88555 (= e!57661 Unit!2648)))

(declare-fun b!88556 () Bool)

(assert (=> b!88556 (= e!57660 (isDefined!94 (getValueByKey!140 (toList!761 lt!41712) (_1!1130 lt!41584))))))

(assert (= (and d!23565 c!14677) b!88554))

(assert (= (and d!23565 (not c!14677)) b!88555))

(assert (= (and d!23565 (not res!45332)) b!88556))

(declare-fun m!94547 () Bool)

(assert (=> d!23565 m!94547))

(declare-fun m!94549 () Bool)

(assert (=> b!88554 m!94549))

(assert (=> b!88554 m!93521))

(assert (=> b!88554 m!93521))

(declare-fun m!94551 () Bool)

(assert (=> b!88554 m!94551))

(assert (=> b!88556 m!93521))

(assert (=> b!88556 m!93521))

(assert (=> b!88556 m!94551))

(assert (=> d!23317 d!23565))

(declare-fun b!88560 () Bool)

(declare-fun e!57663 () Option!146)

(assert (=> b!88560 (= e!57663 None!144)))

(declare-fun b!88558 () Bool)

(declare-fun e!57662 () Option!146)

(assert (=> b!88558 (= e!57662 e!57663)))

(declare-fun c!14679 () Bool)

(assert (=> b!88558 (= c!14679 (and ((_ is Cons!1552) lt!41713) (not (= (_1!1130 (h!2144 lt!41713)) (_1!1130 lt!41584)))))))

(declare-fun d!23567 () Bool)

(declare-fun c!14678 () Bool)

(assert (=> d!23567 (= c!14678 (and ((_ is Cons!1552) lt!41713) (= (_1!1130 (h!2144 lt!41713)) (_1!1130 lt!41584))))))

(assert (=> d!23567 (= (getValueByKey!140 lt!41713 (_1!1130 lt!41584)) e!57662)))

(declare-fun b!88559 () Bool)

(assert (=> b!88559 (= e!57663 (getValueByKey!140 (t!5302 lt!41713) (_1!1130 lt!41584)))))

(declare-fun b!88557 () Bool)

(assert (=> b!88557 (= e!57662 (Some!145 (_2!1130 (h!2144 lt!41713))))))

(assert (= (and d!23567 c!14678) b!88557))

(assert (= (and d!23567 (not c!14678)) b!88558))

(assert (= (and b!88558 c!14679) b!88559))

(assert (= (and b!88558 (not c!14679)) b!88560))

(declare-fun m!94553 () Bool)

(assert (=> b!88559 m!94553))

(assert (=> d!23317 d!23567))

(declare-fun d!23569 () Bool)

(assert (=> d!23569 (= (getValueByKey!140 lt!41713 (_1!1130 lt!41584)) (Some!145 (_2!1130 lt!41584)))))

(declare-fun lt!42249 () Unit!2618)

(assert (=> d!23569 (= lt!42249 (choose!526 lt!41713 (_1!1130 lt!41584) (_2!1130 lt!41584)))))

(declare-fun e!57664 () Bool)

(assert (=> d!23569 e!57664))

(declare-fun res!45333 () Bool)

(assert (=> d!23569 (=> (not res!45333) (not e!57664))))

(assert (=> d!23569 (= res!45333 (isStrictlySorted!294 lt!41713))))

(assert (=> d!23569 (= (lemmaContainsTupThenGetReturnValue!59 lt!41713 (_1!1130 lt!41584) (_2!1130 lt!41584)) lt!42249)))

(declare-fun b!88561 () Bool)

(declare-fun res!45334 () Bool)

(assert (=> b!88561 (=> (not res!45334) (not e!57664))))

(assert (=> b!88561 (= res!45334 (containsKey!144 lt!41713 (_1!1130 lt!41584)))))

(declare-fun b!88562 () Bool)

(assert (=> b!88562 (= e!57664 (contains!768 lt!41713 (tuple2!2241 (_1!1130 lt!41584) (_2!1130 lt!41584))))))

(assert (= (and d!23569 res!45333) b!88561))

(assert (= (and b!88561 res!45334) b!88562))

(assert (=> d!23569 m!93515))

(declare-fun m!94555 () Bool)

(assert (=> d!23569 m!94555))

(declare-fun m!94557 () Bool)

(assert (=> d!23569 m!94557))

(declare-fun m!94559 () Bool)

(assert (=> b!88561 m!94559))

(declare-fun m!94561 () Bool)

(assert (=> b!88562 m!94561))

(assert (=> d!23317 d!23569))

(declare-fun b!88563 () Bool)

(declare-fun e!57669 () List!1556)

(declare-fun call!8519 () List!1556)

(assert (=> b!88563 (= e!57669 call!8519)))

(declare-fun e!57666 () List!1556)

(declare-fun b!88564 () Bool)

(declare-fun c!14683 () Bool)

(declare-fun c!14682 () Bool)

(assert (=> b!88564 (= e!57666 (ite c!14683 (t!5302 (toList!761 lt!41585)) (ite c!14682 (Cons!1552 (h!2144 (toList!761 lt!41585)) (t!5302 (toList!761 lt!41585))) Nil!1553)))))

(declare-fun b!88565 () Bool)

(declare-fun e!57665 () List!1556)

(declare-fun call!8518 () List!1556)

(assert (=> b!88565 (= e!57665 call!8518)))

(declare-fun bm!8515 () Bool)

(assert (=> bm!8515 (= call!8519 call!8518)))

(declare-fun b!88566 () Bool)

(declare-fun e!57668 () Bool)

(declare-fun lt!42250 () List!1556)

(assert (=> b!88566 (= e!57668 (contains!768 lt!42250 (tuple2!2241 (_1!1130 lt!41584) (_2!1130 lt!41584))))))

(declare-fun bm!8516 () Bool)

(declare-fun call!8520 () List!1556)

(assert (=> bm!8516 (= call!8518 call!8520)))

(declare-fun d!23571 () Bool)

(assert (=> d!23571 e!57668))

(declare-fun res!45335 () Bool)

(assert (=> d!23571 (=> (not res!45335) (not e!57668))))

(assert (=> d!23571 (= res!45335 (isStrictlySorted!294 lt!42250))))

(declare-fun e!57667 () List!1556)

(assert (=> d!23571 (= lt!42250 e!57667)))

(declare-fun c!14680 () Bool)

(assert (=> d!23571 (= c!14680 (and ((_ is Cons!1552) (toList!761 lt!41585)) (bvslt (_1!1130 (h!2144 (toList!761 lt!41585))) (_1!1130 lt!41584))))))

(assert (=> d!23571 (isStrictlySorted!294 (toList!761 lt!41585))))

(assert (=> d!23571 (= (insertStrictlySorted!61 (toList!761 lt!41585) (_1!1130 lt!41584) (_2!1130 lt!41584)) lt!42250)))

(declare-fun b!88567 () Bool)

(assert (=> b!88567 (= e!57669 call!8519)))

(declare-fun b!88568 () Bool)

(assert (=> b!88568 (= c!14682 (and ((_ is Cons!1552) (toList!761 lt!41585)) (bvsgt (_1!1130 (h!2144 (toList!761 lt!41585))) (_1!1130 lt!41584))))))

(assert (=> b!88568 (= e!57665 e!57669)))

(declare-fun bm!8517 () Bool)

(assert (=> bm!8517 (= call!8520 ($colon$colon!72 e!57666 (ite c!14680 (h!2144 (toList!761 lt!41585)) (tuple2!2241 (_1!1130 lt!41584) (_2!1130 lt!41584)))))))

(declare-fun c!14681 () Bool)

(assert (=> bm!8517 (= c!14681 c!14680)))

(declare-fun b!88569 () Bool)

(assert (=> b!88569 (= e!57667 e!57665)))

(assert (=> b!88569 (= c!14683 (and ((_ is Cons!1552) (toList!761 lt!41585)) (= (_1!1130 (h!2144 (toList!761 lt!41585))) (_1!1130 lt!41584))))))

(declare-fun b!88570 () Bool)

(assert (=> b!88570 (= e!57666 (insertStrictlySorted!61 (t!5302 (toList!761 lt!41585)) (_1!1130 lt!41584) (_2!1130 lt!41584)))))

(declare-fun b!88571 () Bool)

(assert (=> b!88571 (= e!57667 call!8520)))

(declare-fun b!88572 () Bool)

(declare-fun res!45336 () Bool)

(assert (=> b!88572 (=> (not res!45336) (not e!57668))))

(assert (=> b!88572 (= res!45336 (containsKey!144 lt!42250 (_1!1130 lt!41584)))))

(assert (= (and d!23571 c!14680) b!88571))

(assert (= (and d!23571 (not c!14680)) b!88569))

(assert (= (and b!88569 c!14683) b!88565))

(assert (= (and b!88569 (not c!14683)) b!88568))

(assert (= (and b!88568 c!14682) b!88563))

(assert (= (and b!88568 (not c!14682)) b!88567))

(assert (= (or b!88563 b!88567) bm!8515))

(assert (= (or b!88565 bm!8515) bm!8516))

(assert (= (or b!88571 bm!8516) bm!8517))

(assert (= (and bm!8517 c!14681) b!88570))

(assert (= (and bm!8517 (not c!14681)) b!88564))

(assert (= (and d!23571 res!45335) b!88572))

(assert (= (and b!88572 res!45336) b!88566))

(declare-fun m!94563 () Bool)

(assert (=> bm!8517 m!94563))

(declare-fun m!94565 () Bool)

(assert (=> b!88566 m!94565))

(declare-fun m!94567 () Bool)

(assert (=> b!88572 m!94567))

(declare-fun m!94569 () Bool)

(assert (=> d!23571 m!94569))

(assert (=> d!23571 m!94225))

(declare-fun m!94571 () Bool)

(assert (=> b!88570 m!94571))

(assert (=> d!23317 d!23571))

(declare-fun b!88573 () Bool)

(declare-fun e!57682 () Unit!2618)

(declare-fun Unit!2649 () Unit!2618)

(assert (=> b!88573 (= e!57682 Unit!2649)))

(declare-fun b!88574 () Bool)

(declare-fun e!57680 () ListLongMap!1491)

(declare-fun call!8527 () ListLongMap!1491)

(assert (=> b!88574 (= e!57680 call!8527)))

(declare-fun d!23573 () Bool)

(declare-fun e!57674 () Bool)

(assert (=> d!23573 e!57674))

(declare-fun res!45343 () Bool)

(assert (=> d!23573 (=> (not res!45343) (not e!57674))))

(assert (=> d!23573 (= res!45343 (or (bvsge #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))))

(declare-fun lt!42262 () ListLongMap!1491)

(declare-fun lt!42261 () ListLongMap!1491)

(assert (=> d!23573 (= lt!42262 lt!42261)))

(declare-fun lt!42254 () Unit!2618)

(assert (=> d!23573 (= lt!42254 e!57682)))

(declare-fun c!14686 () Bool)

(declare-fun e!57673 () Bool)

(assert (=> d!23573 (= c!14686 e!57673)))

(declare-fun res!45341 () Bool)

(assert (=> d!23573 (=> (not res!45341) (not e!57673))))

(assert (=> d!23573 (= res!45341 (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))

(declare-fun e!57681 () ListLongMap!1491)

(assert (=> d!23573 (= lt!42261 e!57681)))

(declare-fun c!14688 () Bool)

(assert (=> d!23573 (= c!14688 (and (not (= (bvand (ite c!14507 (ite c!14506 (extraKeys!2194 newMap!16) lt!41804) (extraKeys!2194 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!14507 (ite c!14506 (extraKeys!2194 newMap!16) lt!41804) (extraKeys!2194 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!23573 (validMask!0 (mask!6397 newMap!16))))

(assert (=> d!23573 (= (getCurrentListMap!444 (_keys!4035 newMap!16) (ite (or c!14507 c!14505) (_values!2342 newMap!16) (array!4045 (store (arr!1925 (_values!2342 newMap!16)) (index!3155 lt!41794) (ValueCellFull!927 lt!41579)) (size!2170 (_values!2342 newMap!16)))) (mask!6397 newMap!16) (ite c!14507 (ite c!14506 (extraKeys!2194 newMap!16) lt!41804) (extraKeys!2194 newMap!16)) (zeroValue!2249 newMap!16) (ite c!14507 (ite c!14506 (minValue!2249 newMap!16) lt!41579) (minValue!2249 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)) lt!42262)))

(declare-fun bm!8518 () Bool)

(declare-fun call!8524 () Bool)

(assert (=> bm!8518 (= call!8524 (contains!766 lt!42262 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!88575 () Bool)

(declare-fun e!57679 () Bool)

(declare-fun e!57675 () Bool)

(assert (=> b!88575 (= e!57679 e!57675)))

(declare-fun res!45340 () Bool)

(assert (=> b!88575 (= res!45340 call!8524)))

(assert (=> b!88575 (=> (not res!45340) (not e!57675))))

(declare-fun b!88576 () Bool)

(declare-fun res!45345 () Bool)

(assert (=> b!88576 (=> (not res!45345) (not e!57674))))

(declare-fun e!57678 () Bool)

(assert (=> b!88576 (= res!45345 e!57678)))

(declare-fun res!45344 () Bool)

(assert (=> b!88576 (=> res!45344 e!57678)))

(declare-fun e!57672 () Bool)

(assert (=> b!88576 (= res!45344 (not e!57672))))

(declare-fun res!45338 () Bool)

(assert (=> b!88576 (=> (not res!45338) (not e!57672))))

(assert (=> b!88576 (= res!45338 (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))

(declare-fun b!88577 () Bool)

(assert (=> b!88577 (= e!57672 (validKeyInArray!0 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!8519 () Bool)

(declare-fun call!8526 () ListLongMap!1491)

(assert (=> bm!8519 (= call!8527 call!8526)))

(declare-fun b!88578 () Bool)

(declare-fun res!45339 () Bool)

(assert (=> b!88578 (=> (not res!45339) (not e!57674))))

(declare-fun e!57671 () Bool)

(assert (=> b!88578 (= res!45339 e!57671)))

(declare-fun c!14687 () Bool)

(assert (=> b!88578 (= c!14687 (not (= (bvand (ite c!14507 (ite c!14506 (extraKeys!2194 newMap!16) lt!41804) (extraKeys!2194 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!88579 () Bool)

(declare-fun e!57677 () ListLongMap!1491)

(declare-fun call!8521 () ListLongMap!1491)

(assert (=> b!88579 (= e!57677 call!8521)))

(declare-fun b!88580 () Bool)

(declare-fun e!57670 () Bool)

(assert (=> b!88580 (= e!57671 e!57670)))

(declare-fun res!45342 () Bool)

(declare-fun call!8522 () Bool)

(assert (=> b!88580 (= res!45342 call!8522)))

(assert (=> b!88580 (=> (not res!45342) (not e!57670))))

(declare-fun call!8523 () ListLongMap!1491)

(declare-fun bm!8520 () Bool)

(assert (=> bm!8520 (= call!8523 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) (ite (or c!14507 c!14505) (_values!2342 newMap!16) (array!4045 (store (arr!1925 (_values!2342 newMap!16)) (index!3155 lt!41794) (ValueCellFull!927 lt!41579)) (size!2170 (_values!2342 newMap!16)))) (mask!6397 newMap!16) (ite c!14507 (ite c!14506 (extraKeys!2194 newMap!16) lt!41804) (extraKeys!2194 newMap!16)) (zeroValue!2249 newMap!16) (ite c!14507 (ite c!14506 (minValue!2249 newMap!16) lt!41579) (minValue!2249 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun b!88581 () Bool)

(declare-fun e!57676 () Bool)

(assert (=> b!88581 (= e!57678 e!57676)))

(declare-fun res!45337 () Bool)

(assert (=> b!88581 (=> (not res!45337) (not e!57676))))

(assert (=> b!88581 (= res!45337 (contains!766 lt!42262 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!88581 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))

(declare-fun b!88582 () Bool)

(assert (=> b!88582 (= e!57676 (= (apply!83 lt!42262 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)) (get!1219 (select (arr!1925 (ite (or c!14507 c!14505) (_values!2342 newMap!16) (array!4045 (store (arr!1925 (_values!2342 newMap!16)) (index!3155 lt!41794) (ValueCellFull!927 lt!41579)) (size!2170 (_values!2342 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!354 (defaultEntry!2359 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!88582 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2170 (ite (or c!14507 c!14505) (_values!2342 newMap!16) (array!4045 (store (arr!1925 (_values!2342 newMap!16)) (index!3155 lt!41794) (ValueCellFull!927 lt!41579)) (size!2170 (_values!2342 newMap!16)))))))))

(assert (=> b!88582 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))

(declare-fun bm!8521 () Bool)

(assert (=> bm!8521 (= call!8522 (contains!766 lt!42262 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!8525 () ListLongMap!1491)

(declare-fun bm!8522 () Bool)

(declare-fun c!14684 () Bool)

(assert (=> bm!8522 (= call!8525 (+!118 (ite c!14688 call!8523 (ite c!14684 call!8526 call!8527)) (ite (or c!14688 c!14684) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2249 newMap!16)) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!14507 (ite c!14506 (minValue!2249 newMap!16) lt!41579) (minValue!2249 newMap!16))))))))

(declare-fun bm!8523 () Bool)

(assert (=> bm!8523 (= call!8526 call!8523)))

(declare-fun b!88583 () Bool)

(assert (=> b!88583 (= e!57673 (validKeyInArray!0 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!88584 () Bool)

(assert (=> b!88584 (= e!57679 (not call!8524))))

(declare-fun b!88585 () Bool)

(assert (=> b!88585 (= e!57675 (= (apply!83 lt!42262 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!14507 (ite c!14506 (minValue!2249 newMap!16) lt!41579) (minValue!2249 newMap!16))))))

(declare-fun c!14689 () Bool)

(declare-fun b!88586 () Bool)

(assert (=> b!88586 (= c!14689 (and (not (= (bvand (ite c!14507 (ite c!14506 (extraKeys!2194 newMap!16) lt!41804) (extraKeys!2194 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!14507 (ite c!14506 (extraKeys!2194 newMap!16) lt!41804) (extraKeys!2194 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!88586 (= e!57677 e!57680)))

(declare-fun b!88587 () Bool)

(assert (=> b!88587 (= e!57671 (not call!8522))))

(declare-fun b!88588 () Bool)

(assert (=> b!88588 (= e!57674 e!57679)))

(declare-fun c!14685 () Bool)

(assert (=> b!88588 (= c!14685 (not (= (bvand (ite c!14507 (ite c!14506 (extraKeys!2194 newMap!16) lt!41804) (extraKeys!2194 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!8524 () Bool)

(assert (=> bm!8524 (= call!8521 call!8525)))

(declare-fun b!88589 () Bool)

(declare-fun lt!42269 () Unit!2618)

(assert (=> b!88589 (= e!57682 lt!42269)))

(declare-fun lt!42260 () ListLongMap!1491)

(assert (=> b!88589 (= lt!42260 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) (ite (or c!14507 c!14505) (_values!2342 newMap!16) (array!4045 (store (arr!1925 (_values!2342 newMap!16)) (index!3155 lt!41794) (ValueCellFull!927 lt!41579)) (size!2170 (_values!2342 newMap!16)))) (mask!6397 newMap!16) (ite c!14507 (ite c!14506 (extraKeys!2194 newMap!16) lt!41804) (extraKeys!2194 newMap!16)) (zeroValue!2249 newMap!16) (ite c!14507 (ite c!14506 (minValue!2249 newMap!16) lt!41579) (minValue!2249 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!42256 () (_ BitVec 64))

(assert (=> b!88589 (= lt!42256 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42251 () (_ BitVec 64))

(assert (=> b!88589 (= lt!42251 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!42258 () Unit!2618)

(assert (=> b!88589 (= lt!42258 (addStillContains!59 lt!42260 lt!42256 (zeroValue!2249 newMap!16) lt!42251))))

(assert (=> b!88589 (contains!766 (+!118 lt!42260 (tuple2!2241 lt!42256 (zeroValue!2249 newMap!16))) lt!42251)))

(declare-fun lt!42259 () Unit!2618)

(assert (=> b!88589 (= lt!42259 lt!42258)))

(declare-fun lt!42263 () ListLongMap!1491)

(assert (=> b!88589 (= lt!42263 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) (ite (or c!14507 c!14505) (_values!2342 newMap!16) (array!4045 (store (arr!1925 (_values!2342 newMap!16)) (index!3155 lt!41794) (ValueCellFull!927 lt!41579)) (size!2170 (_values!2342 newMap!16)))) (mask!6397 newMap!16) (ite c!14507 (ite c!14506 (extraKeys!2194 newMap!16) lt!41804) (extraKeys!2194 newMap!16)) (zeroValue!2249 newMap!16) (ite c!14507 (ite c!14506 (minValue!2249 newMap!16) lt!41579) (minValue!2249 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!42272 () (_ BitVec 64))

(assert (=> b!88589 (= lt!42272 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42271 () (_ BitVec 64))

(assert (=> b!88589 (= lt!42271 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!42264 () Unit!2618)

(assert (=> b!88589 (= lt!42264 (addApplyDifferent!59 lt!42263 lt!42272 (ite c!14507 (ite c!14506 (minValue!2249 newMap!16) lt!41579) (minValue!2249 newMap!16)) lt!42271))))

(assert (=> b!88589 (= (apply!83 (+!118 lt!42263 (tuple2!2241 lt!42272 (ite c!14507 (ite c!14506 (minValue!2249 newMap!16) lt!41579) (minValue!2249 newMap!16)))) lt!42271) (apply!83 lt!42263 lt!42271))))

(declare-fun lt!42268 () Unit!2618)

(assert (=> b!88589 (= lt!42268 lt!42264)))

(declare-fun lt!42265 () ListLongMap!1491)

(assert (=> b!88589 (= lt!42265 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) (ite (or c!14507 c!14505) (_values!2342 newMap!16) (array!4045 (store (arr!1925 (_values!2342 newMap!16)) (index!3155 lt!41794) (ValueCellFull!927 lt!41579)) (size!2170 (_values!2342 newMap!16)))) (mask!6397 newMap!16) (ite c!14507 (ite c!14506 (extraKeys!2194 newMap!16) lt!41804) (extraKeys!2194 newMap!16)) (zeroValue!2249 newMap!16) (ite c!14507 (ite c!14506 (minValue!2249 newMap!16) lt!41579) (minValue!2249 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!42266 () (_ BitVec 64))

(assert (=> b!88589 (= lt!42266 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42253 () (_ BitVec 64))

(assert (=> b!88589 (= lt!42253 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!42270 () Unit!2618)

(assert (=> b!88589 (= lt!42270 (addApplyDifferent!59 lt!42265 lt!42266 (zeroValue!2249 newMap!16) lt!42253))))

(assert (=> b!88589 (= (apply!83 (+!118 lt!42265 (tuple2!2241 lt!42266 (zeroValue!2249 newMap!16))) lt!42253) (apply!83 lt!42265 lt!42253))))

(declare-fun lt!42257 () Unit!2618)

(assert (=> b!88589 (= lt!42257 lt!42270)))

(declare-fun lt!42255 () ListLongMap!1491)

(assert (=> b!88589 (= lt!42255 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) (ite (or c!14507 c!14505) (_values!2342 newMap!16) (array!4045 (store (arr!1925 (_values!2342 newMap!16)) (index!3155 lt!41794) (ValueCellFull!927 lt!41579)) (size!2170 (_values!2342 newMap!16)))) (mask!6397 newMap!16) (ite c!14507 (ite c!14506 (extraKeys!2194 newMap!16) lt!41804) (extraKeys!2194 newMap!16)) (zeroValue!2249 newMap!16) (ite c!14507 (ite c!14506 (minValue!2249 newMap!16) lt!41579) (minValue!2249 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!42267 () (_ BitVec 64))

(assert (=> b!88589 (= lt!42267 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42252 () (_ BitVec 64))

(assert (=> b!88589 (= lt!42252 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!88589 (= lt!42269 (addApplyDifferent!59 lt!42255 lt!42267 (ite c!14507 (ite c!14506 (minValue!2249 newMap!16) lt!41579) (minValue!2249 newMap!16)) lt!42252))))

(assert (=> b!88589 (= (apply!83 (+!118 lt!42255 (tuple2!2241 lt!42267 (ite c!14507 (ite c!14506 (minValue!2249 newMap!16) lt!41579) (minValue!2249 newMap!16)))) lt!42252) (apply!83 lt!42255 lt!42252))))

(declare-fun b!88590 () Bool)

(assert (=> b!88590 (= e!57680 call!8521)))

(declare-fun b!88591 () Bool)

(assert (=> b!88591 (= e!57681 (+!118 call!8525 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!14507 (ite c!14506 (minValue!2249 newMap!16) lt!41579) (minValue!2249 newMap!16)))))))

(declare-fun b!88592 () Bool)

(assert (=> b!88592 (= e!57670 (= (apply!83 lt!42262 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2249 newMap!16)))))

(declare-fun b!88593 () Bool)

(assert (=> b!88593 (= e!57681 e!57677)))

(assert (=> b!88593 (= c!14684 (and (not (= (bvand (ite c!14507 (ite c!14506 (extraKeys!2194 newMap!16) lt!41804) (extraKeys!2194 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!14507 (ite c!14506 (extraKeys!2194 newMap!16) lt!41804) (extraKeys!2194 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!23573 c!14688) b!88591))

(assert (= (and d!23573 (not c!14688)) b!88593))

(assert (= (and b!88593 c!14684) b!88579))

(assert (= (and b!88593 (not c!14684)) b!88586))

(assert (= (and b!88586 c!14689) b!88590))

(assert (= (and b!88586 (not c!14689)) b!88574))

(assert (= (or b!88590 b!88574) bm!8519))

(assert (= (or b!88579 bm!8519) bm!8523))

(assert (= (or b!88579 b!88590) bm!8524))

(assert (= (or b!88591 bm!8523) bm!8520))

(assert (= (or b!88591 bm!8524) bm!8522))

(assert (= (and d!23573 res!45341) b!88583))

(assert (= (and d!23573 c!14686) b!88589))

(assert (= (and d!23573 (not c!14686)) b!88573))

(assert (= (and d!23573 res!45343) b!88576))

(assert (= (and b!88576 res!45338) b!88577))

(assert (= (and b!88576 (not res!45344)) b!88581))

(assert (= (and b!88581 res!45337) b!88582))

(assert (= (and b!88576 res!45345) b!88578))

(assert (= (and b!88578 c!14687) b!88580))

(assert (= (and b!88578 (not c!14687)) b!88587))

(assert (= (and b!88580 res!45342) b!88592))

(assert (= (or b!88580 b!88587) bm!8521))

(assert (= (and b!88578 res!45339) b!88588))

(assert (= (and b!88588 c!14685) b!88575))

(assert (= (and b!88588 (not c!14685)) b!88584))

(assert (= (and b!88575 res!45340) b!88585))

(assert (= (or b!88575 b!88584) bm!8518))

(declare-fun b_lambda!3915 () Bool)

(assert (=> (not b_lambda!3915) (not b!88582)))

(assert (=> b!88582 t!5309))

(declare-fun b_and!5313 () Bool)

(assert (= b_and!5309 (and (=> t!5309 result!2959) b_and!5313)))

(assert (=> b!88582 t!5311))

(declare-fun b_and!5315 () Bool)

(assert (= b_and!5311 (and (=> t!5311 result!2961) b_and!5315)))

(declare-fun m!94573 () Bool)

(assert (=> bm!8522 m!94573))

(assert (=> b!88581 m!94089))

(assert (=> b!88581 m!94089))

(declare-fun m!94575 () Bool)

(assert (=> b!88581 m!94575))

(declare-fun m!94577 () Bool)

(assert (=> b!88585 m!94577))

(assert (=> d!23573 m!93827))

(declare-fun m!94579 () Bool)

(assert (=> b!88592 m!94579))

(declare-fun m!94581 () Bool)

(assert (=> bm!8520 m!94581))

(assert (=> b!88583 m!94089))

(assert (=> b!88583 m!94089))

(assert (=> b!88583 m!94099))

(declare-fun m!94583 () Bool)

(assert (=> bm!8521 m!94583))

(assert (=> b!88582 m!94103))

(assert (=> b!88582 m!94089))

(declare-fun m!94585 () Bool)

(assert (=> b!88582 m!94585))

(declare-fun m!94587 () Bool)

(assert (=> b!88582 m!94587))

(assert (=> b!88582 m!94103))

(declare-fun m!94589 () Bool)

(assert (=> b!88582 m!94589))

(assert (=> b!88582 m!94587))

(assert (=> b!88582 m!94089))

(assert (=> b!88577 m!94089))

(assert (=> b!88577 m!94089))

(assert (=> b!88577 m!94099))

(declare-fun m!94591 () Bool)

(assert (=> bm!8518 m!94591))

(declare-fun m!94593 () Bool)

(assert (=> b!88591 m!94593))

(assert (=> b!88589 m!94581))

(declare-fun m!94595 () Bool)

(assert (=> b!88589 m!94595))

(declare-fun m!94597 () Bool)

(assert (=> b!88589 m!94597))

(declare-fun m!94599 () Bool)

(assert (=> b!88589 m!94599))

(declare-fun m!94601 () Bool)

(assert (=> b!88589 m!94601))

(declare-fun m!94603 () Bool)

(assert (=> b!88589 m!94603))

(declare-fun m!94605 () Bool)

(assert (=> b!88589 m!94605))

(declare-fun m!94607 () Bool)

(assert (=> b!88589 m!94607))

(assert (=> b!88589 m!94601))

(declare-fun m!94609 () Bool)

(assert (=> b!88589 m!94609))

(declare-fun m!94611 () Bool)

(assert (=> b!88589 m!94611))

(declare-fun m!94613 () Bool)

(assert (=> b!88589 m!94613))

(declare-fun m!94615 () Bool)

(assert (=> b!88589 m!94615))

(assert (=> b!88589 m!94595))

(declare-fun m!94617 () Bool)

(assert (=> b!88589 m!94617))

(assert (=> b!88589 m!94609))

(declare-fun m!94619 () Bool)

(assert (=> b!88589 m!94619))

(assert (=> b!88589 m!94607))

(declare-fun m!94621 () Bool)

(assert (=> b!88589 m!94621))

(assert (=> b!88589 m!94089))

(declare-fun m!94623 () Bool)

(assert (=> b!88589 m!94623))

(assert (=> bm!8415 d!23573))

(declare-fun b!88597 () Bool)

(declare-fun e!57684 () Option!146)

(assert (=> b!88597 (= e!57684 None!144)))

(declare-fun b!88595 () Bool)

(declare-fun e!57683 () Option!146)

(assert (=> b!88595 (= e!57683 e!57684)))

(declare-fun c!14691 () Bool)

(assert (=> b!88595 (= c!14691 (and ((_ is Cons!1552) (toList!761 lt!41693)) (not (= (_1!1130 (h!2144 (toList!761 lt!41693))) (_1!1130 lt!41592)))))))

(declare-fun d!23575 () Bool)

(declare-fun c!14690 () Bool)

(assert (=> d!23575 (= c!14690 (and ((_ is Cons!1552) (toList!761 lt!41693)) (= (_1!1130 (h!2144 (toList!761 lt!41693))) (_1!1130 lt!41592))))))

(assert (=> d!23575 (= (getValueByKey!140 (toList!761 lt!41693) (_1!1130 lt!41592)) e!57683)))

(declare-fun b!88596 () Bool)

(assert (=> b!88596 (= e!57684 (getValueByKey!140 (t!5302 (toList!761 lt!41693)) (_1!1130 lt!41592)))))

(declare-fun b!88594 () Bool)

(assert (=> b!88594 (= e!57683 (Some!145 (_2!1130 (h!2144 (toList!761 lt!41693)))))))

(assert (= (and d!23575 c!14690) b!88594))

(assert (= (and d!23575 (not c!14690)) b!88595))

(assert (= (and b!88595 c!14691) b!88596))

(assert (= (and b!88595 (not c!14691)) b!88597))

(declare-fun m!94625 () Bool)

(assert (=> b!88596 m!94625))

(assert (=> b!87821 d!23575))

(declare-fun d!23577 () Bool)

(assert (=> d!23577 (= (apply!83 lt!41874 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1222 (getValueByKey!140 (toList!761 lt!41874) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!3720 () Bool)

(assert (= bs!3720 d!23577))

(assert (=> bs!3720 m!93737))

(assert (=> bs!3720 m!93737))

(declare-fun m!94627 () Bool)

(assert (=> bs!3720 m!94627))

(assert (=> b!88033 d!23577))

(assert (=> b!88018 d!23347))

(declare-fun b!88598 () Bool)

(declare-fun e!57687 () Bool)

(declare-fun e!57685 () Bool)

(assert (=> b!88598 (= e!57687 e!57685)))

(declare-fun c!14692 () Bool)

(assert (=> b!88598 (= c!14692 (validKeyInArray!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!88599 () Bool)

(declare-fun e!57688 () Bool)

(assert (=> b!88599 (= e!57688 e!57687)))

(declare-fun res!45347 () Bool)

(assert (=> b!88599 (=> (not res!45347) (not e!57687))))

(declare-fun e!57686 () Bool)

(assert (=> b!88599 (= res!45347 (not e!57686))))

(declare-fun res!45348 () Bool)

(assert (=> b!88599 (=> (not res!45348) (not e!57686))))

(assert (=> b!88599 (= res!45348 (validKeyInArray!0 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!88600 () Bool)

(assert (=> b!88600 (= e!57686 (contains!767 (ite c!14463 (Cons!1553 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) Nil!1554) Nil!1554) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun call!8528 () Bool)

(declare-fun bm!8525 () Bool)

(assert (=> bm!8525 (= call!8528 (arrayNoDuplicates!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!14692 (Cons!1553 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001)) (ite c!14463 (Cons!1553 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) Nil!1554) Nil!1554)) (ite c!14463 (Cons!1553 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) Nil!1554) Nil!1554))))))

(declare-fun b!88601 () Bool)

(assert (=> b!88601 (= e!57685 call!8528)))

(declare-fun d!23579 () Bool)

(declare-fun res!45346 () Bool)

(assert (=> d!23579 (=> res!45346 e!57688)))

(assert (=> d!23579 (= res!45346 (bvsge (bvadd from!355 #b00000000000000000000000000000001) (size!2169 (_keys!4035 (v!2663 (underlying!295 thiss!992))))))))

(assert (=> d!23579 (= (arrayNoDuplicates!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!14463 (Cons!1553 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) Nil!1554) Nil!1554)) e!57688)))

(declare-fun b!88602 () Bool)

(assert (=> b!88602 (= e!57685 call!8528)))

(assert (= (and d!23579 (not res!45346)) b!88599))

(assert (= (and b!88599 res!45348) b!88600))

(assert (= (and b!88599 res!45347) b!88598))

(assert (= (and b!88598 c!14692) b!88602))

(assert (= (and b!88598 (not c!14692)) b!88601))

(assert (= (or b!88602 b!88601) bm!8525))

(declare-fun m!94629 () Bool)

(assert (=> b!88598 m!94629))

(assert (=> b!88598 m!94629))

(declare-fun m!94631 () Bool)

(assert (=> b!88598 m!94631))

(assert (=> b!88599 m!94629))

(assert (=> b!88599 m!94629))

(assert (=> b!88599 m!94631))

(assert (=> b!88600 m!94629))

(assert (=> b!88600 m!94629))

(declare-fun m!94633 () Bool)

(assert (=> b!88600 m!94633))

(assert (=> bm!8525 m!94629))

(declare-fun m!94635 () Bool)

(assert (=> bm!8525 m!94635))

(assert (=> bm!8353 d!23579))

(declare-fun b!88603 () Bool)

(declare-fun e!57701 () Unit!2618)

(declare-fun Unit!2650 () Unit!2618)

(assert (=> b!88603 (= e!57701 Unit!2650)))

(declare-fun b!88604 () Bool)

(declare-fun e!57699 () ListLongMap!1491)

(declare-fun call!8535 () ListLongMap!1491)

(assert (=> b!88604 (= e!57699 call!8535)))

(declare-fun d!23581 () Bool)

(declare-fun e!57693 () Bool)

(assert (=> d!23581 e!57693))

(declare-fun res!45355 () Bool)

(assert (=> d!23581 (=> (not res!45355) (not e!57693))))

(assert (=> d!23581 (= res!45355 (or (bvsge #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))))

(declare-fun lt!42284 () ListLongMap!1491)

(declare-fun lt!42283 () ListLongMap!1491)

(assert (=> d!23581 (= lt!42284 lt!42283)))

(declare-fun lt!42276 () Unit!2618)

(assert (=> d!23581 (= lt!42276 e!57701)))

(declare-fun c!14695 () Bool)

(declare-fun e!57692 () Bool)

(assert (=> d!23581 (= c!14695 e!57692)))

(declare-fun res!45353 () Bool)

(assert (=> d!23581 (=> (not res!45353) (not e!57692))))

(assert (=> d!23581 (= res!45353 (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))

(declare-fun e!57700 () ListLongMap!1491)

(assert (=> d!23581 (= lt!42283 e!57700)))

(declare-fun c!14697 () Bool)

(assert (=> d!23581 (= c!14697 (and (not (= (bvand (ite (and c!14507 c!14506) lt!41797 (extraKeys!2194 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite (and c!14507 c!14506) lt!41797 (extraKeys!2194 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!23581 (validMask!0 (mask!6397 newMap!16))))

(assert (=> d!23581 (= (getCurrentListMap!444 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (ite (and c!14507 c!14506) lt!41797 (extraKeys!2194 newMap!16)) (ite (and c!14507 c!14506) lt!41579 (zeroValue!2249 newMap!16)) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)) lt!42284)))

(declare-fun bm!8526 () Bool)

(declare-fun call!8532 () Bool)

(assert (=> bm!8526 (= call!8532 (contains!766 lt!42284 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!88605 () Bool)

(declare-fun e!57698 () Bool)

(declare-fun e!57694 () Bool)

(assert (=> b!88605 (= e!57698 e!57694)))

(declare-fun res!45352 () Bool)

(assert (=> b!88605 (= res!45352 call!8532)))

(assert (=> b!88605 (=> (not res!45352) (not e!57694))))

(declare-fun b!88606 () Bool)

(declare-fun res!45357 () Bool)

(assert (=> b!88606 (=> (not res!45357) (not e!57693))))

(declare-fun e!57697 () Bool)

(assert (=> b!88606 (= res!45357 e!57697)))

(declare-fun res!45356 () Bool)

(assert (=> b!88606 (=> res!45356 e!57697)))

(declare-fun e!57691 () Bool)

(assert (=> b!88606 (= res!45356 (not e!57691))))

(declare-fun res!45350 () Bool)

(assert (=> b!88606 (=> (not res!45350) (not e!57691))))

(assert (=> b!88606 (= res!45350 (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))

(declare-fun b!88607 () Bool)

(assert (=> b!88607 (= e!57691 (validKeyInArray!0 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!8527 () Bool)

(declare-fun call!8534 () ListLongMap!1491)

(assert (=> bm!8527 (= call!8535 call!8534)))

(declare-fun b!88608 () Bool)

(declare-fun res!45351 () Bool)

(assert (=> b!88608 (=> (not res!45351) (not e!57693))))

(declare-fun e!57690 () Bool)

(assert (=> b!88608 (= res!45351 e!57690)))

(declare-fun c!14696 () Bool)

(assert (=> b!88608 (= c!14696 (not (= (bvand (ite (and c!14507 c!14506) lt!41797 (extraKeys!2194 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!88609 () Bool)

(declare-fun e!57696 () ListLongMap!1491)

(declare-fun call!8529 () ListLongMap!1491)

(assert (=> b!88609 (= e!57696 call!8529)))

(declare-fun b!88610 () Bool)

(declare-fun e!57689 () Bool)

(assert (=> b!88610 (= e!57690 e!57689)))

(declare-fun res!45354 () Bool)

(declare-fun call!8530 () Bool)

(assert (=> b!88610 (= res!45354 call!8530)))

(assert (=> b!88610 (=> (not res!45354) (not e!57689))))

(declare-fun bm!8528 () Bool)

(declare-fun call!8531 () ListLongMap!1491)

(assert (=> bm!8528 (= call!8531 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (ite (and c!14507 c!14506) lt!41797 (extraKeys!2194 newMap!16)) (ite (and c!14507 c!14506) lt!41579 (zeroValue!2249 newMap!16)) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun b!88611 () Bool)

(declare-fun e!57695 () Bool)

(assert (=> b!88611 (= e!57697 e!57695)))

(declare-fun res!45349 () Bool)

(assert (=> b!88611 (=> (not res!45349) (not e!57695))))

(assert (=> b!88611 (= res!45349 (contains!766 lt!42284 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!88611 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))

(declare-fun b!88612 () Bool)

(assert (=> b!88612 (= e!57695 (= (apply!83 lt!42284 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)) (get!1219 (select (arr!1925 (_values!2342 newMap!16)) #b00000000000000000000000000000000) (dynLambda!354 (defaultEntry!2359 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!88612 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2170 (_values!2342 newMap!16))))))

(assert (=> b!88612 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))

(declare-fun bm!8529 () Bool)

(assert (=> bm!8529 (= call!8530 (contains!766 lt!42284 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!14693 () Bool)

(declare-fun call!8533 () ListLongMap!1491)

(declare-fun bm!8530 () Bool)

(assert (=> bm!8530 (= call!8533 (+!118 (ite c!14697 call!8531 (ite c!14693 call!8534 call!8535)) (ite (or c!14697 c!14693) (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!14507 c!14506) lt!41579 (zeroValue!2249 newMap!16))) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 newMap!16)))))))

(declare-fun bm!8531 () Bool)

(assert (=> bm!8531 (= call!8534 call!8531)))

(declare-fun b!88613 () Bool)

(assert (=> b!88613 (= e!57692 (validKeyInArray!0 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!88614 () Bool)

(assert (=> b!88614 (= e!57698 (not call!8532))))

(declare-fun b!88615 () Bool)

(assert (=> b!88615 (= e!57694 (= (apply!83 lt!42284 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2249 newMap!16)))))

(declare-fun b!88616 () Bool)

(declare-fun c!14698 () Bool)

(assert (=> b!88616 (= c!14698 (and (not (= (bvand (ite (and c!14507 c!14506) lt!41797 (extraKeys!2194 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite (and c!14507 c!14506) lt!41797 (extraKeys!2194 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!88616 (= e!57696 e!57699)))

(declare-fun b!88617 () Bool)

(assert (=> b!88617 (= e!57690 (not call!8530))))

(declare-fun b!88618 () Bool)

(assert (=> b!88618 (= e!57693 e!57698)))

(declare-fun c!14694 () Bool)

(assert (=> b!88618 (= c!14694 (not (= (bvand (ite (and c!14507 c!14506) lt!41797 (extraKeys!2194 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!8532 () Bool)

(assert (=> bm!8532 (= call!8529 call!8533)))

(declare-fun b!88619 () Bool)

(declare-fun lt!42291 () Unit!2618)

(assert (=> b!88619 (= e!57701 lt!42291)))

(declare-fun lt!42282 () ListLongMap!1491)

(assert (=> b!88619 (= lt!42282 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (ite (and c!14507 c!14506) lt!41797 (extraKeys!2194 newMap!16)) (ite (and c!14507 c!14506) lt!41579 (zeroValue!2249 newMap!16)) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!42278 () (_ BitVec 64))

(assert (=> b!88619 (= lt!42278 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42273 () (_ BitVec 64))

(assert (=> b!88619 (= lt!42273 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!42280 () Unit!2618)

(assert (=> b!88619 (= lt!42280 (addStillContains!59 lt!42282 lt!42278 (ite (and c!14507 c!14506) lt!41579 (zeroValue!2249 newMap!16)) lt!42273))))

(assert (=> b!88619 (contains!766 (+!118 lt!42282 (tuple2!2241 lt!42278 (ite (and c!14507 c!14506) lt!41579 (zeroValue!2249 newMap!16)))) lt!42273)))

(declare-fun lt!42281 () Unit!2618)

(assert (=> b!88619 (= lt!42281 lt!42280)))

(declare-fun lt!42285 () ListLongMap!1491)

(assert (=> b!88619 (= lt!42285 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (ite (and c!14507 c!14506) lt!41797 (extraKeys!2194 newMap!16)) (ite (and c!14507 c!14506) lt!41579 (zeroValue!2249 newMap!16)) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!42294 () (_ BitVec 64))

(assert (=> b!88619 (= lt!42294 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42293 () (_ BitVec 64))

(assert (=> b!88619 (= lt!42293 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!42286 () Unit!2618)

(assert (=> b!88619 (= lt!42286 (addApplyDifferent!59 lt!42285 lt!42294 (minValue!2249 newMap!16) lt!42293))))

(assert (=> b!88619 (= (apply!83 (+!118 lt!42285 (tuple2!2241 lt!42294 (minValue!2249 newMap!16))) lt!42293) (apply!83 lt!42285 lt!42293))))

(declare-fun lt!42290 () Unit!2618)

(assert (=> b!88619 (= lt!42290 lt!42286)))

(declare-fun lt!42287 () ListLongMap!1491)

(assert (=> b!88619 (= lt!42287 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (ite (and c!14507 c!14506) lt!41797 (extraKeys!2194 newMap!16)) (ite (and c!14507 c!14506) lt!41579 (zeroValue!2249 newMap!16)) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!42288 () (_ BitVec 64))

(assert (=> b!88619 (= lt!42288 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42275 () (_ BitVec 64))

(assert (=> b!88619 (= lt!42275 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!42292 () Unit!2618)

(assert (=> b!88619 (= lt!42292 (addApplyDifferent!59 lt!42287 lt!42288 (ite (and c!14507 c!14506) lt!41579 (zeroValue!2249 newMap!16)) lt!42275))))

(assert (=> b!88619 (= (apply!83 (+!118 lt!42287 (tuple2!2241 lt!42288 (ite (and c!14507 c!14506) lt!41579 (zeroValue!2249 newMap!16)))) lt!42275) (apply!83 lt!42287 lt!42275))))

(declare-fun lt!42279 () Unit!2618)

(assert (=> b!88619 (= lt!42279 lt!42292)))

(declare-fun lt!42277 () ListLongMap!1491)

(assert (=> b!88619 (= lt!42277 (getCurrentListMapNoExtraKeys!82 (_keys!4035 newMap!16) (_values!2342 newMap!16) (mask!6397 newMap!16) (ite (and c!14507 c!14506) lt!41797 (extraKeys!2194 newMap!16)) (ite (and c!14507 c!14506) lt!41579 (zeroValue!2249 newMap!16)) (minValue!2249 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2359 newMap!16)))))

(declare-fun lt!42289 () (_ BitVec 64))

(assert (=> b!88619 (= lt!42289 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!42274 () (_ BitVec 64))

(assert (=> b!88619 (= lt!42274 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!88619 (= lt!42291 (addApplyDifferent!59 lt!42277 lt!42289 (minValue!2249 newMap!16) lt!42274))))

(assert (=> b!88619 (= (apply!83 (+!118 lt!42277 (tuple2!2241 lt!42289 (minValue!2249 newMap!16))) lt!42274) (apply!83 lt!42277 lt!42274))))

(declare-fun b!88620 () Bool)

(assert (=> b!88620 (= e!57699 call!8529)))

(declare-fun b!88621 () Bool)

(assert (=> b!88621 (= e!57700 (+!118 call!8533 (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2249 newMap!16))))))

(declare-fun b!88622 () Bool)

(assert (=> b!88622 (= e!57689 (= (apply!83 lt!42284 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!14507 c!14506) lt!41579 (zeroValue!2249 newMap!16))))))

(declare-fun b!88623 () Bool)

(assert (=> b!88623 (= e!57700 e!57696)))

(assert (=> b!88623 (= c!14693 (and (not (= (bvand (ite (and c!14507 c!14506) lt!41797 (extraKeys!2194 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite (and c!14507 c!14506) lt!41797 (extraKeys!2194 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!23581 c!14697) b!88621))

(assert (= (and d!23581 (not c!14697)) b!88623))

(assert (= (and b!88623 c!14693) b!88609))

(assert (= (and b!88623 (not c!14693)) b!88616))

(assert (= (and b!88616 c!14698) b!88620))

(assert (= (and b!88616 (not c!14698)) b!88604))

(assert (= (or b!88620 b!88604) bm!8527))

(assert (= (or b!88609 bm!8527) bm!8531))

(assert (= (or b!88609 b!88620) bm!8532))

(assert (= (or b!88621 bm!8531) bm!8528))

(assert (= (or b!88621 bm!8532) bm!8530))

(assert (= (and d!23581 res!45353) b!88613))

(assert (= (and d!23581 c!14695) b!88619))

(assert (= (and d!23581 (not c!14695)) b!88603))

(assert (= (and d!23581 res!45355) b!88606))

(assert (= (and b!88606 res!45350) b!88607))

(assert (= (and b!88606 (not res!45356)) b!88611))

(assert (= (and b!88611 res!45349) b!88612))

(assert (= (and b!88606 res!45357) b!88608))

(assert (= (and b!88608 c!14696) b!88610))

(assert (= (and b!88608 (not c!14696)) b!88617))

(assert (= (and b!88610 res!45354) b!88622))

(assert (= (or b!88610 b!88617) bm!8529))

(assert (= (and b!88608 res!45351) b!88618))

(assert (= (and b!88618 c!14694) b!88605))

(assert (= (and b!88618 (not c!14694)) b!88614))

(assert (= (and b!88605 res!45352) b!88615))

(assert (= (or b!88605 b!88614) bm!8526))

(declare-fun b_lambda!3917 () Bool)

(assert (=> (not b_lambda!3917) (not b!88612)))

(assert (=> b!88612 t!5309))

(declare-fun b_and!5317 () Bool)

(assert (= b_and!5313 (and (=> t!5309 result!2959) b_and!5317)))

(assert (=> b!88612 t!5311))

(declare-fun b_and!5319 () Bool)

(assert (= b_and!5315 (and (=> t!5311 result!2961) b_and!5319)))

(declare-fun m!94637 () Bool)

(assert (=> bm!8530 m!94637))

(assert (=> b!88611 m!94089))

(assert (=> b!88611 m!94089))

(declare-fun m!94639 () Bool)

(assert (=> b!88611 m!94639))

(declare-fun m!94641 () Bool)

(assert (=> b!88615 m!94641))

(assert (=> d!23581 m!93827))

(declare-fun m!94643 () Bool)

(assert (=> b!88622 m!94643))

(declare-fun m!94645 () Bool)

(assert (=> bm!8528 m!94645))

(assert (=> b!88613 m!94089))

(assert (=> b!88613 m!94089))

(assert (=> b!88613 m!94099))

(declare-fun m!94647 () Bool)

(assert (=> bm!8529 m!94647))

(assert (=> b!88612 m!94103))

(assert (=> b!88612 m!94089))

(declare-fun m!94649 () Bool)

(assert (=> b!88612 m!94649))

(assert (=> b!88612 m!94395))

(assert (=> b!88612 m!94103))

(assert (=> b!88612 m!94397))

(assert (=> b!88612 m!94395))

(assert (=> b!88612 m!94089))

(assert (=> b!88607 m!94089))

(assert (=> b!88607 m!94089))

(assert (=> b!88607 m!94099))

(declare-fun m!94651 () Bool)

(assert (=> bm!8526 m!94651))

(declare-fun m!94653 () Bool)

(assert (=> b!88621 m!94653))

(assert (=> b!88619 m!94645))

(declare-fun m!94655 () Bool)

(assert (=> b!88619 m!94655))

(declare-fun m!94657 () Bool)

(assert (=> b!88619 m!94657))

(declare-fun m!94659 () Bool)

(assert (=> b!88619 m!94659))

(declare-fun m!94661 () Bool)

(assert (=> b!88619 m!94661))

(declare-fun m!94663 () Bool)

(assert (=> b!88619 m!94663))

(declare-fun m!94665 () Bool)

(assert (=> b!88619 m!94665))

(declare-fun m!94667 () Bool)

(assert (=> b!88619 m!94667))

(assert (=> b!88619 m!94661))

(declare-fun m!94669 () Bool)

(assert (=> b!88619 m!94669))

(declare-fun m!94671 () Bool)

(assert (=> b!88619 m!94671))

(declare-fun m!94673 () Bool)

(assert (=> b!88619 m!94673))

(declare-fun m!94675 () Bool)

(assert (=> b!88619 m!94675))

(assert (=> b!88619 m!94655))

(declare-fun m!94677 () Bool)

(assert (=> b!88619 m!94677))

(assert (=> b!88619 m!94669))

(declare-fun m!94679 () Bool)

(assert (=> b!88619 m!94679))

(assert (=> b!88619 m!94667))

(declare-fun m!94681 () Bool)

(assert (=> b!88619 m!94681))

(assert (=> b!88619 m!94089))

(declare-fun m!94683 () Bool)

(assert (=> b!88619 m!94683))

(assert (=> bm!8413 d!23581))

(declare-fun d!23583 () Bool)

(declare-fun e!57702 () Bool)

(assert (=> d!23583 e!57702))

(declare-fun res!45359 () Bool)

(assert (=> d!23583 (=> (not res!45359) (not e!57702))))

(declare-fun lt!42295 () ListLongMap!1491)

(assert (=> d!23583 (= res!45359 (contains!766 lt!42295 (_1!1130 (ite c!14507 (ite c!14506 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 lt!41579) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 lt!41579)) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))))))

(declare-fun lt!42296 () List!1556)

(assert (=> d!23583 (= lt!42295 (ListLongMap!1492 lt!42296))))

(declare-fun lt!42297 () Unit!2618)

(declare-fun lt!42298 () Unit!2618)

(assert (=> d!23583 (= lt!42297 lt!42298)))

(assert (=> d!23583 (= (getValueByKey!140 lt!42296 (_1!1130 (ite c!14507 (ite c!14506 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 lt!41579) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 lt!41579)) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))) (Some!145 (_2!1130 (ite c!14507 (ite c!14506 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 lt!41579) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 lt!41579)) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))))))

(assert (=> d!23583 (= lt!42298 (lemmaContainsTupThenGetReturnValue!59 lt!42296 (_1!1130 (ite c!14507 (ite c!14506 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 lt!41579) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 lt!41579)) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))) (_2!1130 (ite c!14507 (ite c!14506 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 lt!41579) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 lt!41579)) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))))))

(assert (=> d!23583 (= lt!42296 (insertStrictlySorted!61 (toList!761 (ite c!14507 (ite c!14506 call!8417 call!8411) call!8412)) (_1!1130 (ite c!14507 (ite c!14506 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 lt!41579) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 lt!41579)) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))) (_2!1130 (ite c!14507 (ite c!14506 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 lt!41579) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 lt!41579)) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))))))

(assert (=> d!23583 (= (+!118 (ite c!14507 (ite c!14506 call!8417 call!8411) call!8412) (ite c!14507 (ite c!14506 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 lt!41579) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 lt!41579)) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))) lt!42295)))

(declare-fun b!88624 () Bool)

(declare-fun res!45358 () Bool)

(assert (=> b!88624 (=> (not res!45358) (not e!57702))))

(assert (=> b!88624 (= res!45358 (= (getValueByKey!140 (toList!761 lt!42295) (_1!1130 (ite c!14507 (ite c!14506 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 lt!41579) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 lt!41579)) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579)))) (Some!145 (_2!1130 (ite c!14507 (ite c!14506 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 lt!41579) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 lt!41579)) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))))

(declare-fun b!88625 () Bool)

(assert (=> b!88625 (= e!57702 (contains!768 (toList!761 lt!42295) (ite c!14507 (ite c!14506 (tuple2!2241 #b0000000000000000000000000000000000000000000000000000000000000000 lt!41579) (tuple2!2241 #b1000000000000000000000000000000000000000000000000000000000000000 lt!41579)) (tuple2!2241 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) lt!41579))))))

(assert (= (and d!23583 res!45359) b!88624))

(assert (= (and b!88624 res!45358) b!88625))

(declare-fun m!94685 () Bool)

(assert (=> d!23583 m!94685))

(declare-fun m!94687 () Bool)

(assert (=> d!23583 m!94687))

(declare-fun m!94689 () Bool)

(assert (=> d!23583 m!94689))

(declare-fun m!94691 () Bool)

(assert (=> d!23583 m!94691))

(declare-fun m!94693 () Bool)

(assert (=> b!88624 m!94693))

(declare-fun m!94695 () Bool)

(assert (=> b!88625 m!94695))

(assert (=> bm!8420 d!23583))

(assert (=> bm!8410 d!23515))

(declare-fun d!23585 () Bool)

(declare-fun isEmpty!345 (Option!146) Bool)

(assert (=> d!23585 (= (isDefined!94 (getValueByKey!140 (toList!761 lt!41575) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355))) (not (isEmpty!345 (getValueByKey!140 (toList!761 lt!41575) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))))

(declare-fun bs!3721 () Bool)

(assert (= bs!3721 d!23585))

(assert (=> bs!3721 m!93539))

(declare-fun m!94697 () Bool)

(assert (=> bs!3721 m!94697))

(assert (=> b!87839 d!23585))

(declare-fun b!88629 () Bool)

(declare-fun e!57704 () Option!146)

(assert (=> b!88629 (= e!57704 None!144)))

(declare-fun b!88627 () Bool)

(declare-fun e!57703 () Option!146)

(assert (=> b!88627 (= e!57703 e!57704)))

(declare-fun c!14700 () Bool)

(assert (=> b!88627 (= c!14700 (and ((_ is Cons!1552) (toList!761 lt!41575)) (not (= (_1!1130 (h!2144 (toList!761 lt!41575))) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))))

(declare-fun d!23587 () Bool)

(declare-fun c!14699 () Bool)

(assert (=> d!23587 (= c!14699 (and ((_ is Cons!1552) (toList!761 lt!41575)) (= (_1!1130 (h!2144 (toList!761 lt!41575))) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355))))))

(assert (=> d!23587 (= (getValueByKey!140 (toList!761 lt!41575) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)) e!57703)))

(declare-fun b!88628 () Bool)

(assert (=> b!88628 (= e!57704 (getValueByKey!140 (t!5302 (toList!761 lt!41575)) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun b!88626 () Bool)

(assert (=> b!88626 (= e!57703 (Some!145 (_2!1130 (h!2144 (toList!761 lt!41575)))))))

(assert (= (and d!23587 c!14699) b!88626))

(assert (= (and d!23587 (not c!14699)) b!88627))

(assert (= (and b!88627 c!14700) b!88628))

(assert (= (and b!88627 (not c!14700)) b!88629))

(assert (=> b!88628 m!93277))

(declare-fun m!94699 () Bool)

(assert (=> b!88628 m!94699))

(assert (=> b!87839 d!23587))

(declare-fun d!23589 () Bool)

(assert (=> d!23589 (= (get!1221 (select (arr!1925 (_values!2342 (v!2663 (underlying!295 thiss!992)))) from!355) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!354 (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!88049 d!23589))

(assert (=> b!87773 d!23467))

(assert (=> b!87816 d!23347))

(assert (=> d!23283 d!23287))

(declare-fun d!23591 () Bool)

(assert (=> d!23591 (not (arrayContainsKey!0 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> d!23591 true))

(declare-fun _$68!76 () Unit!2618)

(assert (=> d!23591 (= (choose!68 (_keys!4035 (v!2663 (underlying!295 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) (Cons!1553 (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355) Nil!1554)) _$68!76)))

(declare-fun bs!3722 () Bool)

(assert (= bs!3722 d!23591))

(assert (=> bs!3722 m!93277))

(assert (=> bs!3722 m!93295))

(assert (=> d!23283 d!23591))

(declare-fun d!23593 () Bool)

(assert (=> d!23593 (isDefined!94 (getValueByKey!140 (toList!761 lt!41575) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun lt!42301 () Unit!2618)

(declare-fun choose!533 (List!1556 (_ BitVec 64)) Unit!2618)

(assert (=> d!23593 (= lt!42301 (choose!533 (toList!761 lt!41575) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(declare-fun e!57707 () Bool)

(assert (=> d!23593 e!57707))

(declare-fun res!45362 () Bool)

(assert (=> d!23593 (=> (not res!45362) (not e!57707))))

(assert (=> d!23593 (= res!45362 (isStrictlySorted!294 (toList!761 lt!41575)))))

(assert (=> d!23593 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!761 lt!41575) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)) lt!42301)))

(declare-fun b!88632 () Bool)

(assert (=> b!88632 (= e!57707 (containsKey!144 (toList!761 lt!41575) (select (arr!1924 (_keys!4035 (v!2663 (underlying!295 thiss!992)))) from!355)))))

(assert (= (and d!23593 res!45362) b!88632))

(assert (=> d!23593 m!93277))

(assert (=> d!23593 m!93539))

(assert (=> d!23593 m!93539))

(assert (=> d!23593 m!93541))

(assert (=> d!23593 m!93277))

(declare-fun m!94701 () Bool)

(assert (=> d!23593 m!94701))

(declare-fun m!94703 () Bool)

(assert (=> d!23593 m!94703))

(assert (=> b!88632 m!93277))

(assert (=> b!88632 m!93535))

(assert (=> b!87837 d!23593))

(assert (=> b!87837 d!23585))

(assert (=> b!87837 d!23587))

(assert (=> bm!8356 d!23351))

(declare-fun d!23595 () Bool)

(assert (=> d!23595 (= (apply!83 lt!41874 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1222 (getValueByKey!140 (toList!761 lt!41874) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!3723 () Bool)

(assert (= bs!3723 d!23595))

(assert (=> bs!3723 m!94075))

(assert (=> bs!3723 m!94075))

(declare-fun m!94705 () Bool)

(assert (=> bs!3723 m!94705))

(assert (=> b!88026 d!23595))

(assert (=> d!23331 d!23321))

(declare-fun d!23597 () Bool)

(declare-fun lt!42302 () Bool)

(assert (=> d!23597 (= lt!42302 (select (content!90 (toList!761 lt!41664)) lt!41592))))

(declare-fun e!57708 () Bool)

(assert (=> d!23597 (= lt!42302 e!57708)))

(declare-fun res!45363 () Bool)

(assert (=> d!23597 (=> (not res!45363) (not e!57708))))

(assert (=> d!23597 (= res!45363 ((_ is Cons!1552) (toList!761 lt!41664)))))

(assert (=> d!23597 (= (contains!768 (toList!761 lt!41664) lt!41592) lt!42302)))

(declare-fun b!88633 () Bool)

(declare-fun e!57709 () Bool)

(assert (=> b!88633 (= e!57708 e!57709)))

(declare-fun res!45364 () Bool)

(assert (=> b!88633 (=> res!45364 e!57709)))

(assert (=> b!88633 (= res!45364 (= (h!2144 (toList!761 lt!41664)) lt!41592))))

(declare-fun b!88634 () Bool)

(assert (=> b!88634 (= e!57709 (contains!768 (t!5302 (toList!761 lt!41664)) lt!41592))))

(assert (= (and d!23597 res!45363) b!88633))

(assert (= (and b!88633 (not res!45364)) b!88634))

(declare-fun m!94707 () Bool)

(assert (=> d!23597 m!94707))

(declare-fun m!94709 () Bool)

(assert (=> d!23597 m!94709))

(declare-fun m!94711 () Bool)

(assert (=> b!88634 m!94711))

(assert (=> b!87782 d!23597))

(declare-fun b!88635 () Bool)

(declare-fun e!57712 () Bool)

(declare-fun e!57710 () Bool)

(assert (=> b!88635 (= e!57712 e!57710)))

(declare-fun lt!42305 () (_ BitVec 64))

(assert (=> b!88635 (= lt!42305 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!42304 () Unit!2618)

(assert (=> b!88635 (= lt!42304 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4035 newMap!16) lt!42305 #b00000000000000000000000000000000))))

(assert (=> b!88635 (arrayContainsKey!0 (_keys!4035 newMap!16) lt!42305 #b00000000000000000000000000000000)))

(declare-fun lt!42303 () Unit!2618)

(assert (=> b!88635 (= lt!42303 lt!42304)))

(declare-fun res!45365 () Bool)

(assert (=> b!88635 (= res!45365 (= (seekEntryOrOpen!0 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000) (_keys!4035 newMap!16) (mask!6397 newMap!16)) (Found!254 #b00000000000000000000000000000000)))))

(assert (=> b!88635 (=> (not res!45365) (not e!57710))))

(declare-fun d!23599 () Bool)

(declare-fun res!45366 () Bool)

(declare-fun e!57711 () Bool)

(assert (=> d!23599 (=> res!45366 e!57711)))

(assert (=> d!23599 (= res!45366 (bvsge #b00000000000000000000000000000000 (size!2169 (_keys!4035 newMap!16))))))

(assert (=> d!23599 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4035 newMap!16) (mask!6397 newMap!16)) e!57711)))

(declare-fun bm!8533 () Bool)

(declare-fun call!8536 () Bool)

(assert (=> bm!8533 (= call!8536 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4035 newMap!16) (mask!6397 newMap!16)))))

(declare-fun b!88636 () Bool)

(assert (=> b!88636 (= e!57711 e!57712)))

(declare-fun c!14701 () Bool)

(assert (=> b!88636 (= c!14701 (validKeyInArray!0 (select (arr!1924 (_keys!4035 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!88637 () Bool)

(assert (=> b!88637 (= e!57712 call!8536)))

(declare-fun b!88638 () Bool)

(assert (=> b!88638 (= e!57710 call!8536)))

(assert (= (and d!23599 (not res!45366)) b!88636))

(assert (= (and b!88636 c!14701) b!88635))

(assert (= (and b!88636 (not c!14701)) b!88637))

(assert (= (and b!88635 res!45365) b!88638))

(assert (= (or b!88638 b!88637) bm!8533))

(assert (=> b!88635 m!94089))

(declare-fun m!94713 () Bool)

(assert (=> b!88635 m!94713))

(declare-fun m!94715 () Bool)

(assert (=> b!88635 m!94715))

(assert (=> b!88635 m!94089))

(declare-fun m!94717 () Bool)

(assert (=> b!88635 m!94717))

(declare-fun m!94719 () Bool)

(assert (=> bm!8533 m!94719))

(assert (=> b!88636 m!94089))

(assert (=> b!88636 m!94089))

(assert (=> b!88636 m!94099))

(assert (=> b!88042 d!23599))

(declare-fun condMapEmpty!3437 () Bool)

(declare-fun mapDefault!3437 () ValueCell!927)

(assert (=> mapNonEmpty!3435 (= condMapEmpty!3437 (= mapRest!3435 ((as const (Array (_ BitVec 32) ValueCell!927)) mapDefault!3437)))))

(declare-fun e!57713 () Bool)

(declare-fun mapRes!3437 () Bool)

(assert (=> mapNonEmpty!3435 (= tp!8997 (and e!57713 mapRes!3437))))

(declare-fun mapNonEmpty!3437 () Bool)

(declare-fun tp!8999 () Bool)

(declare-fun e!57714 () Bool)

(assert (=> mapNonEmpty!3437 (= mapRes!3437 (and tp!8999 e!57714))))

(declare-fun mapRest!3437 () (Array (_ BitVec 32) ValueCell!927))

(declare-fun mapKey!3437 () (_ BitVec 32))

(declare-fun mapValue!3437 () ValueCell!927)

(assert (=> mapNonEmpty!3437 (= mapRest!3435 (store mapRest!3437 mapKey!3437 mapValue!3437))))

(declare-fun b!88639 () Bool)

(assert (=> b!88639 (= e!57714 tp_is_empty!2541)))

(declare-fun b!88640 () Bool)

(assert (=> b!88640 (= e!57713 tp_is_empty!2541)))

(declare-fun mapIsEmpty!3437 () Bool)

(assert (=> mapIsEmpty!3437 mapRes!3437))

(assert (= (and mapNonEmpty!3435 condMapEmpty!3437) mapIsEmpty!3437))

(assert (= (and mapNonEmpty!3435 (not condMapEmpty!3437)) mapNonEmpty!3437))

(assert (= (and mapNonEmpty!3437 ((_ is ValueCellFull!927) mapValue!3437)) b!88639))

(assert (= (and mapNonEmpty!3435 ((_ is ValueCellFull!927) mapDefault!3437)) b!88640))

(declare-fun m!94721 () Bool)

(assert (=> mapNonEmpty!3437 m!94721))

(declare-fun condMapEmpty!3438 () Bool)

(declare-fun mapDefault!3438 () ValueCell!927)

(assert (=> mapNonEmpty!3436 (= condMapEmpty!3438 (= mapRest!3436 ((as const (Array (_ BitVec 32) ValueCell!927)) mapDefault!3438)))))

(declare-fun e!57715 () Bool)

(declare-fun mapRes!3438 () Bool)

(assert (=> mapNonEmpty!3436 (= tp!8998 (and e!57715 mapRes!3438))))

(declare-fun mapNonEmpty!3438 () Bool)

(declare-fun tp!9000 () Bool)

(declare-fun e!57716 () Bool)

(assert (=> mapNonEmpty!3438 (= mapRes!3438 (and tp!9000 e!57716))))

(declare-fun mapRest!3438 () (Array (_ BitVec 32) ValueCell!927))

(declare-fun mapKey!3438 () (_ BitVec 32))

(declare-fun mapValue!3438 () ValueCell!927)

(assert (=> mapNonEmpty!3438 (= mapRest!3436 (store mapRest!3438 mapKey!3438 mapValue!3438))))

(declare-fun b!88641 () Bool)

(assert (=> b!88641 (= e!57716 tp_is_empty!2541)))

(declare-fun b!88642 () Bool)

(assert (=> b!88642 (= e!57715 tp_is_empty!2541)))

(declare-fun mapIsEmpty!3438 () Bool)

(assert (=> mapIsEmpty!3438 mapRes!3438))

(assert (= (and mapNonEmpty!3436 condMapEmpty!3438) mapIsEmpty!3438))

(assert (= (and mapNonEmpty!3436 (not condMapEmpty!3438)) mapNonEmpty!3438))

(assert (= (and mapNonEmpty!3438 ((_ is ValueCellFull!927) mapValue!3438)) b!88641))

(assert (= (and mapNonEmpty!3436 ((_ is ValueCellFull!927) mapDefault!3438)) b!88642))

(declare-fun m!94723 () Bool)

(assert (=> mapNonEmpty!3438 m!94723))

(declare-fun b_lambda!3919 () Bool)

(assert (= b_lambda!3913 (or (and b!87671 b_free!2249 (= (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) (defaultEntry!2359 newMap!16))) (and b!87670 b_free!2251) b_lambda!3919)))

(declare-fun b_lambda!3921 () Bool)

(assert (= b_lambda!3915 (or (and b!87671 b_free!2249 (= (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) (defaultEntry!2359 newMap!16))) (and b!87670 b_free!2251) b_lambda!3921)))

(declare-fun b_lambda!3923 () Bool)

(assert (= b_lambda!3917 (or (and b!87671 b_free!2249 (= (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) (defaultEntry!2359 newMap!16))) (and b!87670 b_free!2251) b_lambda!3923)))

(declare-fun b_lambda!3925 () Bool)

(assert (= b_lambda!3911 (or (and b!87671 b_free!2249 (= (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))) (defaultEntry!2359 newMap!16))) (and b!87670 b_free!2251) b_lambda!3925)))

(declare-fun b_lambda!3927 () Bool)

(assert (= b_lambda!3909 (or (and b!87671 b_free!2249) (and b!87670 b_free!2251 (= (defaultEntry!2359 newMap!16) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))))) b_lambda!3927)))

(declare-fun b_lambda!3929 () Bool)

(assert (= b_lambda!3907 (or (and b!87671 b_free!2249) (and b!87670 b_free!2251 (= (defaultEntry!2359 newMap!16) (defaultEntry!2359 (v!2663 (underlying!295 thiss!992))))) b_lambda!3929)))

(check-sat (not b!88389) (not d!23493) (not b!88291) (not bm!8453) (not b!88581) (not d!23443) (not d!23509) (not b!88459) (not b!88448) (not d!23475) (not d!23459) (not b!88152) (not b!88504) (not b!88312) (not b!88500) (not d!23461) (not d!23583) (not b!88274) (not bm!8514) (not b!88635) (not d!23411) (not b!88244) (not b_lambda!3905) (not d!23445) (not d!23469) (not d!23595) (not b!88280) (not b!88211) (not d!23431) (not b!88272) (not b!88219) (not d!23399) (not b!88311) (not b!88393) (not b!88307) (not b!88107) (not b!88289) (not b!88204) (not d!23571) (not b!88174) (not d!23487) (not d!23577) (not b!88258) (not b!88131) (not b_lambda!3919) (not b!88153) (not b!88547) (not b!88082) (not b!88134) (not d!23439) (not b!88317) (not d!23513) (not b_lambda!3923) (not b!88551) (not b!88143) (not d!23427) (not d!23553) (not b!88632) (not bm!8526) (not b!88237) (not d!23401) (not b!88327) (not b!88223) (not b!88091) (not b!88582) (not b!88472) (not b!88090) (not d!23409) (not b!88087) (not bm!8504) (not b!88554) (not b!88469) (not d!23369) (not b!88198) (not b!88227) (not b!88065) (not bm!8465) (not b!88320) (not d!23515) (not b!88390) (not b!88251) (not b!88202) (not b!88246) (not b!88486) (not b!88503) (not b!88625) (not d!23541) (not b_lambda!3901) (not d!23581) (not b!88266) (not b!88481) (not b!88239) (not bm!8462) (not b!88148) (not d!23449) (not b!88130) (not d!23349) (not b!88315) (not d!23463) (not d!23433) (not b!88562) (not b!88464) (not b!88485) (not b!88164) (not b!88493) (not b!88522) (not mapNonEmpty!3437) (not b!88561) (not b!88255) (not b!88083) (not d!23359) (not b!88088) (not b!88323) (not b!88624) (not b!88241) (not b!88252) (not d!23497) (not b!88559) (not d!23593) b_and!5319 (not b!88495) (not d!23539) (not b!88501) (not b!88293) (not d!23437) (not d!23501) (not b!88409) (not b!88303) (not bm!8470) (not bm!8491) (not bm!8533) (not b!88173) (not bm!8530) (not b!88249) (not b!88466) (not b!88512) (not b!88254) (not b!88299) (not b!88127) (not b!88093) (not b_lambda!3925) (not bm!8506) (not b!88461) (not b!88133) (not b!88553) (not b!88100) (not b!88285) (not b!88213) (not b!88167) (not b!88453) (not b!88611) (not d!23525) (not d!23375) (not d!23377) (not b!88333) (not b!88566) (not d!23457) (not d!23361) tp_is_empty!2541 (not b!88398) (not b!88078) (not d!23453) (not b!88556) (not d!23379) (not d!23561) (not d!23393) (not b!88296) (not b!88598) (not bm!8501) (not b!88537) (not b_lambda!3929) (not bm!8525) (not b!88102) (not d!23551) (not bm!8521) (not b_lambda!3893) (not b!88517) (not b!88150) (not b!88534) (not d!23417) (not b!88600) (not d!23597) (not b!88510) (not d!23419) (not bm!8468) (not d!23447) (not b!88122) (not b!88589) (not b!88162) (not b!88518) (not bm!8511) (not d!23391) (not d!23365) (not b!88281) (not bm!8529) (not d!23367) (not d!23521) (not d!23465) (not b!88238) (not b!88309) (not b!88498) (not d!23543) (not b!88132) (not b!88229) (not d!23511) (not b!88535) (not b!88526) (not bm!8499) (not b!88243) (not b!88496) (not b!88236) (not b!88592) (not d!23415) (not bm!8520) (not d!23343) b_and!5317 (not d!23519) (not b_lambda!3921) (not d!23429) (not b!88154) (not d!23421) (not b!88449) (not d!23557) (not b!88508) (not bm!8494) (not b!88585) (not b_next!2251) (not b!88413) (not b!88386) (not b!88259) (not b!88146) (not d!23481) (not d!23533) (not b!88129) (not b!88247) (not d!23529) (not bm!8500) (not b!88392) (not bm!8481) (not d!23405) (not b!88136) (not d!23489) (not d!23395) (not b!88084) (not b!88253) (not b!88619) (not d!23569) (not bm!8475) (not d!23585) (not b!88403) (not b!88474) (not b!88540) (not d!23505) (not b!88528) (not b!88216) (not bm!8478) (not d!23477) (not d!23389) (not b!88613) (not b!88515) (not b!88543) (not b!88322) (not b!88149) (not b!88098) (not bm!8469) (not b_lambda!3903) (not d!23355) (not b!88628) (not bm!8493) (not d!23381) (not b!88505) (not d!23441) (not b!88345) (not d!23339) (not b!88278) (not d!23383) (not b!88636) (not bm!8466) (not bm!8518) (not d!23495) (not b!88248) (not b!88596) (not b!88489) (not mapNonEmpty!3438) (not b!88160) (not b!88314) (not b!88105) (not b!88402) (not b!88155) (not d!23547) (not d!23351) (not b!88572) (not b!88615) (not b!88621) (not b!88487) (not b!88570) (not d!23451) (not d!23425) (not b!88463) (not b_next!2249) (not b!88261) (not b!88103) (not b!88502) (not b!88331) (not bm!8505) (not b!88067) (not d!23563) (not d!23387) (not b!88250) (not b!88499) (not bm!8502) (not b!88290) (not d!23413) (not bm!8517) (not b!88128) (not d!23357) (not d!23565) (not d!23373) (not bm!8528) (not b!88471) (not bm!8522) (not b!88542) (not b!88141) (not b!88634) (not d!23403) (not b!88401) (not b!88612) (not d!23537) (not b!88599) (not d!23471) (not b!88288) (not b!88256) (not b!88245) (not b!88583) (not b!88218) (not d!23435) (not b!88607) (not b!88144) (not b!88473) (not b!88404) (not d!23535) (not b_lambda!3927) (not b!88622) (not b!88399) (not d!23423) (not bm!8490) (not d!23573) (not b!88577) (not b!88210) (not b!88270) (not b!88271) (not b!88081) (not d!23483) (not b!88298) (not b!88591) (not d!23591) (not b!88101) (not b!88383))
(check-sat b_and!5317 b_and!5319 (not b_next!2249) (not b_next!2251))
