; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8356 () Bool)

(assert start!8356)

(declare-fun b!55428 () Bool)

(declare-fun b_free!1853 () Bool)

(declare-fun b_next!1853 () Bool)

(assert (=> b!55428 (= b_free!1853 (not b_next!1853))))

(declare-fun tp!7661 () Bool)

(declare-fun b_and!3257 () Bool)

(assert (=> b!55428 (= tp!7661 b_and!3257)))

(declare-fun b!55430 () Bool)

(declare-fun b_free!1855 () Bool)

(declare-fun b_next!1855 () Bool)

(assert (=> b!55430 (= b_free!1855 (not b_next!1855))))

(declare-fun tp!7662 () Bool)

(declare-fun b_and!3259 () Bool)

(assert (=> b!55430 (= tp!7662 b_and!3259)))

(declare-datatypes ((V!2771 0))(
  ( (V!2772 (val!1216 Int)) )
))
(declare-datatypes ((array!3608 0))(
  ( (array!3609 (arr!1726 (Array (_ BitVec 32) (_ BitVec 64))) (size!1955 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!828 0))(
  ( (ValueCellFull!828 (v!2314 V!2771)) (EmptyCell!828) )
))
(declare-datatypes ((array!3610 0))(
  ( (array!3611 (arr!1727 (Array (_ BitVec 32) ValueCell!828)) (size!1956 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!564 0))(
  ( (LongMapFixedSize!565 (defaultEntry!1996 Int) (mask!5853 (_ BitVec 32)) (extraKeys!1887 (_ BitVec 32)) (zeroValue!1914 V!2771) (minValue!1914 V!2771) (_size!331 (_ BitVec 32)) (_keys!3616 array!3608) (_values!1979 array!3610) (_vacant!331 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!374 0))(
  ( (Cell!375 (v!2315 LongMapFixedSize!564)) )
))
(declare-datatypes ((LongMap!374 0))(
  ( (LongMap!375 (underlying!198 Cell!374)) )
))
(declare-fun thiss!992 () LongMap!374)

(declare-fun e!36410 () Bool)

(declare-fun e!36416 () Bool)

(declare-fun tp_is_empty!2343 () Bool)

(declare-fun array_inv!1009 (array!3608) Bool)

(declare-fun array_inv!1010 (array!3610) Bool)

(assert (=> b!55428 (= e!36410 (and tp!7661 tp_is_empty!2343 (array_inv!1009 (_keys!3616 (v!2315 (underlying!198 thiss!992)))) (array_inv!1010 (_values!1979 (v!2315 (underlying!198 thiss!992)))) e!36416))))

(declare-fun b!55429 () Bool)

(declare-fun e!36415 () Bool)

(assert (=> b!55429 (= e!36415 tp_is_empty!2343)))

(declare-fun e!36425 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!564)

(declare-fun e!36421 () Bool)

(assert (=> b!55430 (= e!36421 (and tp!7662 tp_is_empty!2343 (array_inv!1009 (_keys!3616 newMap!16)) (array_inv!1010 (_values!1979 newMap!16)) e!36425))))

(declare-fun b!55431 () Bool)

(declare-fun e!36424 () Bool)

(assert (=> b!55431 (= e!36424 tp_is_empty!2343)))

(declare-fun b!55432 () Bool)

(declare-fun e!36417 () Bool)

(declare-fun mapRes!2699 () Bool)

(assert (=> b!55432 (= e!36425 (and e!36417 mapRes!2699))))

(declare-fun condMapEmpty!2700 () Bool)

(declare-fun mapDefault!2700 () ValueCell!828)

(assert (=> b!55432 (= condMapEmpty!2700 (= (arr!1727 (_values!1979 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!828)) mapDefault!2700)))))

(declare-fun res!31214 () Bool)

(declare-fun e!36418 () Bool)

(assert (=> start!8356 (=> (not res!31214) (not e!36418))))

(declare-fun valid!220 (LongMap!374) Bool)

(assert (=> start!8356 (= res!31214 (valid!220 thiss!992))))

(assert (=> start!8356 e!36418))

(declare-fun e!36422 () Bool)

(assert (=> start!8356 e!36422))

(assert (=> start!8356 true))

(assert (=> start!8356 e!36421))

(declare-fun mapNonEmpty!2699 () Bool)

(declare-fun tp!7660 () Bool)

(declare-fun e!36423 () Bool)

(assert (=> mapNonEmpty!2699 (= mapRes!2699 (and tp!7660 e!36423))))

(declare-fun mapRest!2699 () (Array (_ BitVec 32) ValueCell!828))

(declare-fun mapValue!2699 () ValueCell!828)

(declare-fun mapKey!2699 () (_ BitVec 32))

(assert (=> mapNonEmpty!2699 (= (arr!1727 (_values!1979 newMap!16)) (store mapRest!2699 mapKey!2699 mapValue!2699))))

(declare-fun b!55433 () Bool)

(declare-fun res!31215 () Bool)

(assert (=> b!55433 (=> (not res!31215) (not e!36418))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!55433 (= res!31215 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1955 (_keys!3616 (v!2315 (underlying!198 thiss!992)))))))))

(declare-fun mapIsEmpty!2699 () Bool)

(declare-fun mapRes!2700 () Bool)

(assert (=> mapIsEmpty!2699 mapRes!2700))

(declare-fun b!55434 () Bool)

(declare-fun e!36413 () Bool)

(assert (=> b!55434 (= e!36413 true)))

(declare-datatypes ((List!1413 0))(
  ( (Nil!1410) (Cons!1409 (h!1989 (_ BitVec 64)) (t!4643 List!1413)) )
))
(declare-fun lt!21929 () List!1413)

(declare-fun lt!21932 () Bool)

(declare-fun contains!656 (List!1413 (_ BitVec 64)) Bool)

(assert (=> b!55434 (= lt!21932 (contains!656 lt!21929 (select (arr!1726 (_keys!3616 (v!2315 (underlying!198 thiss!992)))) from!355)))))

(declare-fun b!55435 () Bool)

(declare-fun e!36414 () Bool)

(assert (=> b!55435 (= e!36422 e!36414)))

(declare-fun b!55436 () Bool)

(declare-fun res!31221 () Bool)

(assert (=> b!55436 (=> res!31221 e!36413)))

(declare-fun arrayNoDuplicates!0 (array!3608 (_ BitVec 32) List!1413) Bool)

(assert (=> b!55436 (= res!31221 (not (arrayNoDuplicates!0 (_keys!3616 (v!2315 (underlying!198 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) lt!21929)))))

(declare-fun b!55437 () Bool)

(assert (=> b!55437 (= e!36423 tp_is_empty!2343)))

(declare-fun b!55438 () Bool)

(declare-fun res!31213 () Bool)

(assert (=> b!55438 (=> (not res!31213) (not e!36418))))

(declare-fun valid!221 (LongMapFixedSize!564) Bool)

(assert (=> b!55438 (= res!31213 (valid!221 newMap!16))))

(declare-fun b!55439 () Bool)

(declare-fun e!36420 () Bool)

(assert (=> b!55439 (= e!36420 (not e!36413))))

(declare-fun res!31217 () Bool)

(assert (=> b!55439 (=> res!31217 e!36413)))

(assert (=> b!55439 (= res!31217 (or (bvsge (size!1955 (_keys!3616 (v!2315 (underlying!198 thiss!992)))) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!1955 (_keys!3616 (v!2315 (underlying!198 thiss!992)))))))))

(assert (=> b!55439 (= lt!21929 (Cons!1409 (select (arr!1726 (_keys!3616 (v!2315 (underlying!198 thiss!992)))) from!355) Nil!1410))))

(assert (=> b!55439 (arrayNoDuplicates!0 (_keys!3616 (v!2315 (underlying!198 thiss!992))) from!355 Nil!1410)))

(declare-datatypes ((Unit!1446 0))(
  ( (Unit!1447) )
))
(declare-fun lt!21933 () Unit!1446)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3608 (_ BitVec 32) (_ BitVec 32)) Unit!1446)

(assert (=> b!55439 (= lt!21933 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3616 (v!2315 (underlying!198 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!3608 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!55439 (arrayContainsKey!0 (_keys!3616 (v!2315 (underlying!198 thiss!992))) (select (arr!1726 (_keys!3616 (v!2315 (underlying!198 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!21931 () Unit!1446)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!12 (array!3608 array!3610 (_ BitVec 32) (_ BitVec 32) V!2771 V!2771 (_ BitVec 64) (_ BitVec 32) Int) Unit!1446)

(assert (=> b!55439 (= lt!21931 (lemmaListMapContainsThenArrayContainsFrom!12 (_keys!3616 (v!2315 (underlying!198 thiss!992))) (_values!1979 (v!2315 (underlying!198 thiss!992))) (mask!5853 (v!2315 (underlying!198 thiss!992))) (extraKeys!1887 (v!2315 (underlying!198 thiss!992))) (zeroValue!1914 (v!2315 (underlying!198 thiss!992))) (minValue!1914 (v!2315 (underlying!198 thiss!992))) (select (arr!1726 (_keys!3616 (v!2315 (underlying!198 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1996 (v!2315 (underlying!198 thiss!992)))))))

(declare-fun b!55440 () Bool)

(declare-fun res!31220 () Bool)

(assert (=> b!55440 (=> res!31220 e!36413)))

(declare-fun noDuplicate!39 (List!1413) Bool)

(assert (=> b!55440 (= res!31220 (not (noDuplicate!39 lt!21929)))))

(declare-fun b!55441 () Bool)

(declare-fun e!36412 () Bool)

(assert (=> b!55441 (= e!36418 e!36412)))

(declare-fun res!31216 () Bool)

(assert (=> b!55441 (=> (not res!31216) (not e!36412))))

(declare-datatypes ((tuple2!1974 0))(
  ( (tuple2!1975 (_1!997 (_ BitVec 64)) (_2!997 V!2771)) )
))
(declare-datatypes ((List!1414 0))(
  ( (Nil!1411) (Cons!1410 (h!1990 tuple2!1974) (t!4644 List!1414)) )
))
(declare-datatypes ((ListLongMap!1339 0))(
  ( (ListLongMap!1340 (toList!685 List!1414)) )
))
(declare-fun lt!21930 () ListLongMap!1339)

(declare-fun lt!21928 () ListLongMap!1339)

(assert (=> b!55441 (= res!31216 (and (= lt!21930 lt!21928) (not (= (select (arr!1726 (_keys!3616 (v!2315 (underlying!198 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1726 (_keys!3616 (v!2315 (underlying!198 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1075 (LongMapFixedSize!564) ListLongMap!1339)

(assert (=> b!55441 (= lt!21928 (map!1075 newMap!16))))

(declare-fun getCurrentListMap!387 (array!3608 array!3610 (_ BitVec 32) (_ BitVec 32) V!2771 V!2771 (_ BitVec 32) Int) ListLongMap!1339)

(assert (=> b!55441 (= lt!21930 (getCurrentListMap!387 (_keys!3616 (v!2315 (underlying!198 thiss!992))) (_values!1979 (v!2315 (underlying!198 thiss!992))) (mask!5853 (v!2315 (underlying!198 thiss!992))) (extraKeys!1887 (v!2315 (underlying!198 thiss!992))) (zeroValue!1914 (v!2315 (underlying!198 thiss!992))) (minValue!1914 (v!2315 (underlying!198 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1996 (v!2315 (underlying!198 thiss!992)))))))

(declare-fun b!55442 () Bool)

(assert (=> b!55442 (= e!36417 tp_is_empty!2343)))

(declare-fun b!55443 () Bool)

(assert (=> b!55443 (= e!36414 e!36410)))

(declare-fun b!55444 () Bool)

(declare-fun res!31211 () Bool)

(assert (=> b!55444 (=> (not res!31211) (not e!36418))))

(assert (=> b!55444 (= res!31211 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5853 newMap!16)) (_size!331 (v!2315 (underlying!198 thiss!992)))))))

(declare-fun mapNonEmpty!2700 () Bool)

(declare-fun tp!7659 () Bool)

(assert (=> mapNonEmpty!2700 (= mapRes!2700 (and tp!7659 e!36424))))

(declare-fun mapKey!2700 () (_ BitVec 32))

(declare-fun mapRest!2700 () (Array (_ BitVec 32) ValueCell!828))

(declare-fun mapValue!2700 () ValueCell!828)

(assert (=> mapNonEmpty!2700 (= (arr!1727 (_values!1979 (v!2315 (underlying!198 thiss!992)))) (store mapRest!2700 mapKey!2700 mapValue!2700))))

(declare-fun mapIsEmpty!2700 () Bool)

(assert (=> mapIsEmpty!2700 mapRes!2699))

(declare-fun b!55445 () Bool)

(assert (=> b!55445 (= e!36412 e!36420)))

(declare-fun res!31212 () Bool)

(assert (=> b!55445 (=> (not res!31212) (not e!36420))))

(declare-fun contains!657 (ListLongMap!1339 (_ BitVec 64)) Bool)

(assert (=> b!55445 (= res!31212 (contains!657 lt!21928 (select (arr!1726 (_keys!3616 (v!2315 (underlying!198 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1976 0))(
  ( (tuple2!1977 (_1!998 Bool) (_2!998 LongMapFixedSize!564)) )
))
(declare-fun lt!21934 () tuple2!1976)

(declare-fun update!67 (LongMapFixedSize!564 (_ BitVec 64) V!2771) tuple2!1976)

(declare-fun get!1040 (ValueCell!828 V!2771) V!2771)

(declare-fun dynLambda!295 (Int (_ BitVec 64)) V!2771)

(assert (=> b!55445 (= lt!21934 (update!67 newMap!16 (select (arr!1726 (_keys!3616 (v!2315 (underlying!198 thiss!992)))) from!355) (get!1040 (select (arr!1727 (_values!1979 (v!2315 (underlying!198 thiss!992)))) from!355) (dynLambda!295 (defaultEntry!1996 (v!2315 (underlying!198 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!55446 () Bool)

(assert (=> b!55446 (= e!36416 (and e!36415 mapRes!2700))))

(declare-fun condMapEmpty!2699 () Bool)

(declare-fun mapDefault!2699 () ValueCell!828)

(assert (=> b!55446 (= condMapEmpty!2699 (= (arr!1727 (_values!1979 (v!2315 (underlying!198 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!828)) mapDefault!2699)))))

(declare-fun b!55447 () Bool)

(declare-fun res!31218 () Bool)

(assert (=> b!55447 (=> res!31218 e!36413)))

(assert (=> b!55447 (= res!31218 (contains!656 lt!21929 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!55448 () Bool)

(declare-fun res!31219 () Bool)

(assert (=> b!55448 (=> res!31219 e!36413)))

(assert (=> b!55448 (= res!31219 (contains!656 lt!21929 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!8356 res!31214) b!55433))

(assert (= (and b!55433 res!31215) b!55438))

(assert (= (and b!55438 res!31213) b!55444))

(assert (= (and b!55444 res!31211) b!55441))

(assert (= (and b!55441 res!31216) b!55445))

(assert (= (and b!55445 res!31212) b!55439))

(assert (= (and b!55439 (not res!31217)) b!55440))

(assert (= (and b!55440 (not res!31220)) b!55447))

(assert (= (and b!55447 (not res!31218)) b!55448))

(assert (= (and b!55448 (not res!31219)) b!55436))

(assert (= (and b!55436 (not res!31221)) b!55434))

(assert (= (and b!55446 condMapEmpty!2699) mapIsEmpty!2699))

(assert (= (and b!55446 (not condMapEmpty!2699)) mapNonEmpty!2700))

(get-info :version)

(assert (= (and mapNonEmpty!2700 ((_ is ValueCellFull!828) mapValue!2700)) b!55431))

(assert (= (and b!55446 ((_ is ValueCellFull!828) mapDefault!2699)) b!55429))

(assert (= b!55428 b!55446))

(assert (= b!55443 b!55428))

(assert (= b!55435 b!55443))

(assert (= start!8356 b!55435))

(assert (= (and b!55432 condMapEmpty!2700) mapIsEmpty!2700))

(assert (= (and b!55432 (not condMapEmpty!2700)) mapNonEmpty!2699))

(assert (= (and mapNonEmpty!2699 ((_ is ValueCellFull!828) mapValue!2699)) b!55437))

(assert (= (and b!55432 ((_ is ValueCellFull!828) mapDefault!2700)) b!55442))

(assert (= b!55430 b!55432))

(assert (= start!8356 b!55430))

(declare-fun b_lambda!2457 () Bool)

(assert (=> (not b_lambda!2457) (not b!55445)))

(declare-fun t!4640 () Bool)

(declare-fun tb!1205 () Bool)

(assert (=> (and b!55428 (= (defaultEntry!1996 (v!2315 (underlying!198 thiss!992))) (defaultEntry!1996 (v!2315 (underlying!198 thiss!992)))) t!4640) tb!1205))

(declare-fun result!2201 () Bool)

(assert (=> tb!1205 (= result!2201 tp_is_empty!2343)))

(assert (=> b!55445 t!4640))

(declare-fun b_and!3261 () Bool)

(assert (= b_and!3257 (and (=> t!4640 result!2201) b_and!3261)))

(declare-fun tb!1207 () Bool)

(declare-fun t!4642 () Bool)

(assert (=> (and b!55430 (= (defaultEntry!1996 newMap!16) (defaultEntry!1996 (v!2315 (underlying!198 thiss!992)))) t!4642) tb!1207))

(declare-fun result!2205 () Bool)

(assert (= result!2205 result!2201))

(assert (=> b!55445 t!4642))

(declare-fun b_and!3263 () Bool)

(assert (= b_and!3259 (and (=> t!4642 result!2205) b_and!3263)))

(declare-fun m!46771 () Bool)

(assert (=> b!55436 m!46771))

(declare-fun m!46773 () Bool)

(assert (=> b!55448 m!46773))

(declare-fun m!46775 () Bool)

(assert (=> b!55430 m!46775))

(declare-fun m!46777 () Bool)

(assert (=> b!55430 m!46777))

(declare-fun m!46779 () Bool)

(assert (=> b!55428 m!46779))

(declare-fun m!46781 () Bool)

(assert (=> b!55428 m!46781))

(declare-fun m!46783 () Bool)

(assert (=> b!55434 m!46783))

(assert (=> b!55434 m!46783))

(declare-fun m!46785 () Bool)

(assert (=> b!55434 m!46785))

(declare-fun m!46787 () Bool)

(assert (=> b!55447 m!46787))

(assert (=> b!55441 m!46783))

(declare-fun m!46789 () Bool)

(assert (=> b!55441 m!46789))

(declare-fun m!46791 () Bool)

(assert (=> b!55441 m!46791))

(declare-fun m!46793 () Bool)

(assert (=> b!55439 m!46793))

(declare-fun m!46795 () Bool)

(assert (=> b!55439 m!46795))

(assert (=> b!55439 m!46783))

(declare-fun m!46797 () Bool)

(assert (=> b!55439 m!46797))

(assert (=> b!55439 m!46783))

(assert (=> b!55439 m!46783))

(declare-fun m!46799 () Bool)

(assert (=> b!55439 m!46799))

(declare-fun m!46801 () Bool)

(assert (=> b!55438 m!46801))

(declare-fun m!46803 () Bool)

(assert (=> start!8356 m!46803))

(declare-fun m!46805 () Bool)

(assert (=> mapNonEmpty!2699 m!46805))

(declare-fun m!46807 () Bool)

(assert (=> b!55440 m!46807))

(declare-fun m!46809 () Bool)

(assert (=> b!55445 m!46809))

(declare-fun m!46811 () Bool)

(assert (=> b!55445 m!46811))

(declare-fun m!46813 () Bool)

(assert (=> b!55445 m!46813))

(assert (=> b!55445 m!46783))

(declare-fun m!46815 () Bool)

(assert (=> b!55445 m!46815))

(assert (=> b!55445 m!46783))

(assert (=> b!55445 m!46811))

(assert (=> b!55445 m!46783))

(assert (=> b!55445 m!46813))

(declare-fun m!46817 () Bool)

(assert (=> b!55445 m!46817))

(assert (=> b!55445 m!46809))

(declare-fun m!46819 () Bool)

(assert (=> mapNonEmpty!2700 m!46819))

(check-sat (not start!8356) b_and!3261 (not b_next!1855) (not b!55430) (not mapNonEmpty!2700) tp_is_empty!2343 (not b!55428) (not b_lambda!2457) (not b!55436) (not mapNonEmpty!2699) b_and!3263 (not b!55434) (not b!55447) (not b!55440) (not b_next!1853) (not b!55439) (not b!55445) (not b!55441) (not b!55438) (not b!55448))
(check-sat b_and!3261 b_and!3263 (not b_next!1853) (not b_next!1855))
