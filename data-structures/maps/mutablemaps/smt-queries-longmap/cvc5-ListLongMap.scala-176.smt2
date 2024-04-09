; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3360 () Bool)

(assert start!3360)

(declare-fun b!21374 () Bool)

(declare-fun b_free!733 () Bool)

(declare-fun b_next!733 () Bool)

(assert (=> b!21374 (= b_free!733 (not b_next!733))))

(declare-fun tp!3436 () Bool)

(declare-fun b_and!1423 () Bool)

(assert (=> b!21374 (= tp!3436 b_and!1423)))

(declare-fun b!21364 () Bool)

(declare-fun e!13923 () Bool)

(declare-fun e!13918 () Bool)

(assert (=> b!21364 (= e!13923 e!13918)))

(declare-fun res!13749 () Bool)

(assert (=> b!21364 (=> (not res!13749) (not e!13918))))

(declare-datatypes ((V!1155 0))(
  ( (V!1156 (val!525 Int)) )
))
(declare-datatypes ((array!1217 0))(
  ( (array!1218 (arr!577 (Array (_ BitVec 32) (_ BitVec 64))) (size!670 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!299 0))(
  ( (ValueCellFull!299 (v!1570 V!1155)) (EmptyCell!299) )
))
(declare-datatypes ((array!1219 0))(
  ( (array!1220 (arr!578 (Array (_ BitVec 32) ValueCell!299)) (size!671 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!184 0))(
  ( (LongMapFixedSize!185 (defaultEntry!1718 Int) (mask!4691 (_ BitVec 32)) (extraKeys!1621 (_ BitVec 32)) (zeroValue!1645 V!1155) (minValue!1645 V!1155) (_size!133 (_ BitVec 32)) (_keys!3139 array!1217) (_values!1707 array!1219) (_vacant!133 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!184 0))(
  ( (Cell!185 (v!1571 LongMapFixedSize!184)) )
))
(declare-datatypes ((tuple2!880 0))(
  ( (tuple2!881 (_1!443 Bool) (_2!443 Cell!184)) )
))
(declare-fun lt!6658 () tuple2!880)

(assert (=> b!21364 (= res!13749 (_1!443 lt!6658))))

(declare-fun e!13925 () tuple2!880)

(assert (=> b!21364 (= lt!6658 e!13925)))

(declare-fun c!2474 () Bool)

(declare-fun lt!6656 () Bool)

(declare-datatypes ((LongMap!184 0))(
  ( (LongMap!185 (underlying!103 Cell!184)) )
))
(declare-fun thiss!938 () LongMap!184)

(assert (=> b!21364 (= c!2474 (and (not lt!6656) (not (= (bvand (extraKeys!1621 (v!1571 (underlying!103 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!21364 (= lt!6656 (= (bvand (extraKeys!1621 (v!1571 (underlying!103 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!6657 () LongMapFixedSize!184)

(declare-fun getNewLongMapFixedSize!24 ((_ BitVec 32) Int) LongMapFixedSize!184)

(declare-fun computeNewMask!21 (LongMap!184 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!21364 (= lt!6657 (getNewLongMapFixedSize!24 (computeNewMask!21 thiss!938 (mask!4691 (v!1571 (underlying!103 thiss!938))) (_vacant!133 (v!1571 (underlying!103 thiss!938))) (_size!133 (v!1571 (underlying!103 thiss!938)))) (defaultEntry!1718 (v!1571 (underlying!103 thiss!938)))))))

(declare-fun b!21365 () Bool)

(declare-fun res!13750 () Bool)

(assert (=> b!21365 (=> (not res!13750) (not e!13918))))

(assert (=> b!21365 (= res!13750 (and (= (size!670 (_keys!3139 (v!1571 (underlying!103 thiss!938)))) (bvadd #b00000000000000000000000000000001 (mask!4691 (v!1571 (underlying!103 thiss!938))))) (bvsge (bvsub (size!670 (_keys!3139 (v!1571 (underlying!103 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub (size!670 (_keys!3139 (v!1571 (underlying!103 thiss!938)))) #b00000000000000000000000000000001) (size!670 (_keys!3139 (v!1571 (underlying!103 thiss!938)))))))))

(declare-fun b!21366 () Bool)

(declare-datatypes ((tuple2!882 0))(
  ( (tuple2!883 (_1!444 Bool) (_2!444 LongMapFixedSize!184)) )
))
(declare-fun lt!6662 () tuple2!882)

(declare-fun lt!6661 () tuple2!882)

(assert (=> b!21366 (= e!13925 (tuple2!881 (and (_1!444 lt!6662) (_1!444 lt!6661)) (Cell!185 (_2!444 lt!6661))))))

(declare-fun update!24 (LongMapFixedSize!184 (_ BitVec 64) V!1155) tuple2!882)

(assert (=> b!21366 (= lt!6662 (update!24 lt!6657 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1645 (v!1571 (underlying!103 thiss!938)))))))

(declare-fun call!1342 () tuple2!882)

(assert (=> b!21366 (= lt!6661 call!1342)))

(declare-fun b!21367 () Bool)

(declare-fun e!13919 () tuple2!880)

(assert (=> b!21367 (= e!13919 (tuple2!881 true (Cell!185 lt!6657)))))

(declare-fun b!21368 () Bool)

(declare-fun e!13917 () Bool)

(declare-fun e!13921 () Bool)

(assert (=> b!21368 (= e!13917 e!13921)))

(declare-fun b!21369 () Bool)

(declare-fun lt!6660 () tuple2!882)

(declare-fun call!1341 () tuple2!882)

(assert (=> b!21369 (= lt!6660 call!1341)))

(declare-fun e!13927 () tuple2!880)

(assert (=> b!21369 (= e!13927 (tuple2!881 (_1!444 lt!6660) (Cell!185 (_2!444 lt!6660))))))

(declare-fun b!21370 () Bool)

(declare-fun e!13924 () Bool)

(assert (=> b!21370 (= e!13921 e!13924)))

(declare-fun mapNonEmpty!976 () Bool)

(declare-fun mapRes!976 () Bool)

(declare-fun tp!3435 () Bool)

(declare-fun e!13920 () Bool)

(assert (=> mapNonEmpty!976 (= mapRes!976 (and tp!3435 e!13920))))

(declare-fun mapKey!976 () (_ BitVec 32))

(declare-fun mapValue!976 () ValueCell!299)

(declare-fun mapRest!976 () (Array (_ BitVec 32) ValueCell!299))

(assert (=> mapNonEmpty!976 (= (arr!578 (_values!1707 (v!1571 (underlying!103 thiss!938)))) (store mapRest!976 mapKey!976 mapValue!976))))

(declare-fun b!21371 () Bool)

(declare-datatypes ((tuple2!884 0))(
  ( (tuple2!885 (_1!445 (_ BitVec 64)) (_2!445 V!1155)) )
))
(declare-datatypes ((List!557 0))(
  ( (Nil!554) (Cons!553 (h!1119 tuple2!884) (t!3216 List!557)) )
))
(declare-datatypes ((ListLongMap!543 0))(
  ( (ListLongMap!544 (toList!287 List!557)) )
))
(declare-fun getCurrentListMap!116 (array!1217 array!1219 (_ BitVec 32) (_ BitVec 32) V!1155 V!1155 (_ BitVec 32) Int) ListLongMap!543)

(declare-fun map!397 (LongMapFixedSize!184) ListLongMap!543)

(assert (=> b!21371 (= e!13918 (not (= (getCurrentListMap!116 (_keys!3139 (v!1571 (underlying!103 thiss!938))) (_values!1707 (v!1571 (underlying!103 thiss!938))) (mask!4691 (v!1571 (underlying!103 thiss!938))) (extraKeys!1621 (v!1571 (underlying!103 thiss!938))) (zeroValue!1645 (v!1571 (underlying!103 thiss!938))) (minValue!1645 (v!1571 (underlying!103 thiss!938))) (bvadd #b00000000000000000000000000000001 (bvsub (size!670 (_keys!3139 (v!1571 (underlying!103 thiss!938)))) #b00000000000000000000000000000001)) (defaultEntry!1718 (v!1571 (underlying!103 thiss!938)))) (map!397 (v!1571 (_2!443 lt!6658))))))))

(declare-fun b!21372 () Bool)

(declare-fun res!13751 () Bool)

(assert (=> b!21372 (=> (not res!13751) (not e!13918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!21372 (= res!13751 (validMask!0 (mask!4691 (v!1571 (underlying!103 thiss!938)))))))

(declare-fun b!21373 () Bool)

(declare-fun c!2473 () Bool)

(assert (=> b!21373 (= c!2473 (and (not (= (bvand (extraKeys!1621 (v!1571 (underlying!103 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!6656))))

(assert (=> b!21373 (= e!13927 e!13919)))

(declare-fun tp_is_empty!997 () Bool)

(declare-fun e!13922 () Bool)

(declare-fun array_inv!409 (array!1217) Bool)

(declare-fun array_inv!410 (array!1219) Bool)

(assert (=> b!21374 (= e!13924 (and tp!3436 tp_is_empty!997 (array_inv!409 (_keys!3139 (v!1571 (underlying!103 thiss!938)))) (array_inv!410 (_values!1707 (v!1571 (underlying!103 thiss!938)))) e!13922))))

(declare-fun res!13748 () Bool)

(assert (=> start!3360 (=> (not res!13748) (not e!13923))))

(declare-fun valid!96 (LongMap!184) Bool)

(assert (=> start!3360 (= res!13748 (valid!96 thiss!938))))

(assert (=> start!3360 e!13923))

(assert (=> start!3360 e!13917))

(declare-fun b!21375 () Bool)

(declare-fun res!13747 () Bool)

(assert (=> b!21375 (=> (not res!13747) (not e!13918))))

(assert (=> b!21375 (= res!13747 (bvsge (bvadd #b00000000000000000000000000000001 (mask!4691 (v!1571 (_2!443 lt!6658)))) (_size!133 (v!1571 (underlying!103 thiss!938)))))))

(declare-fun b!21376 () Bool)

(declare-fun lt!6659 () tuple2!882)

(assert (=> b!21376 (= e!13919 (tuple2!881 (_1!444 lt!6659) (Cell!185 (_2!444 lt!6659))))))

(assert (=> b!21376 (= lt!6659 call!1341)))

(declare-fun b!21377 () Bool)

(assert (=> b!21377 (= e!13920 tp_is_empty!997)))

(declare-fun b!21378 () Bool)

(assert (=> b!21378 (= e!13925 e!13927)))

(declare-fun c!2472 () Bool)

(assert (=> b!21378 (= c!2472 (and (not lt!6656) (= (bvand (extraKeys!1621 (v!1571 (underlying!103 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!21379 () Bool)

(declare-fun res!13752 () Bool)

(assert (=> b!21379 (=> (not res!13752) (not e!13918))))

(declare-fun valid!97 (LongMapFixedSize!184) Bool)

(assert (=> b!21379 (= res!13752 (valid!97 (v!1571 (_2!443 lt!6658))))))

(declare-fun bm!1338 () Bool)

(assert (=> bm!1338 (= call!1342 (update!24 (ite c!2474 (_2!444 lt!6662) lt!6657) (ite c!2474 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2472 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2474 (minValue!1645 (v!1571 (underlying!103 thiss!938))) (ite c!2472 (zeroValue!1645 (v!1571 (underlying!103 thiss!938))) (minValue!1645 (v!1571 (underlying!103 thiss!938)))))))))

(declare-fun mapIsEmpty!976 () Bool)

(assert (=> mapIsEmpty!976 mapRes!976))

(declare-fun b!21380 () Bool)

(declare-fun e!13926 () Bool)

(assert (=> b!21380 (= e!13922 (and e!13926 mapRes!976))))

(declare-fun condMapEmpty!976 () Bool)

(declare-fun mapDefault!976 () ValueCell!299)

