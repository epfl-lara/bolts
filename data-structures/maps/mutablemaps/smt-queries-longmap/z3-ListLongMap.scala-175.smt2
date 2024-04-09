; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3340 () Bool)

(assert start!3340)

(declare-fun b!21061 () Bool)

(declare-fun b_free!729 () Bool)

(declare-fun b_next!729 () Bool)

(assert (=> b!21061 (= b_free!729 (not b_next!729))))

(declare-fun tp!3421 () Bool)

(declare-fun b_and!1415 () Bool)

(assert (=> b!21061 (= tp!3421 b_and!1415)))

(declare-fun b!21046 () Bool)

(declare-fun e!13733 () Bool)

(declare-fun e!13737 () Bool)

(assert (=> b!21046 (= e!13733 e!13737)))

(declare-fun res!13643 () Bool)

(assert (=> b!21046 (=> (not res!13643) (not e!13737))))

(declare-datatypes ((V!1149 0))(
  ( (V!1150 (val!523 Int)) )
))
(declare-datatypes ((array!1207 0))(
  ( (array!1208 (arr!573 (Array (_ BitVec 32) (_ BitVec 64))) (size!666 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!297 0))(
  ( (ValueCellFull!297 (v!1565 V!1149)) (EmptyCell!297) )
))
(declare-datatypes ((array!1209 0))(
  ( (array!1210 (arr!574 (Array (_ BitVec 32) ValueCell!297)) (size!667 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!180 0))(
  ( (LongMapFixedSize!181 (defaultEntry!1715 Int) (mask!4685 (_ BitVec 32)) (extraKeys!1619 (_ BitVec 32)) (zeroValue!1643 V!1149) (minValue!1643 V!1149) (_size!130 (_ BitVec 32)) (_keys!3137 array!1207) (_values!1705 array!1209) (_vacant!130 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!180 0))(
  ( (Cell!181 (v!1566 LongMapFixedSize!180)) )
))
(declare-datatypes ((tuple2!868 0))(
  ( (tuple2!869 (_1!437 Bool) (_2!437 Cell!180)) )
))
(declare-fun lt!6435 () tuple2!868)

(assert (=> b!21046 (= res!13643 (_1!437 lt!6435))))

(declare-fun e!13735 () tuple2!868)

(assert (=> b!21046 (= lt!6435 e!13735)))

(declare-fun c!2390 () Bool)

(declare-fun lt!6433 () Bool)

(declare-datatypes ((LongMap!180 0))(
  ( (LongMap!181 (underlying!101 Cell!180)) )
))
(declare-fun thiss!938 () LongMap!180)

(assert (=> b!21046 (= c!2390 (and (not lt!6433) (not (= (bvand (extraKeys!1619 (v!1566 (underlying!101 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!21046 (= lt!6433 (= (bvand (extraKeys!1619 (v!1566 (underlying!101 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!6434 () LongMapFixedSize!180)

(declare-fun getNewLongMapFixedSize!22 ((_ BitVec 32) Int) LongMapFixedSize!180)

(declare-fun computeNewMask!19 (LongMap!180 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!21046 (= lt!6434 (getNewLongMapFixedSize!22 (computeNewMask!19 thiss!938 (mask!4685 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (_size!130 (v!1566 (underlying!101 thiss!938)))) (defaultEntry!1715 (v!1566 (underlying!101 thiss!938)))))))

(declare-fun b!21047 () Bool)

(declare-fun e!13744 () tuple2!868)

(declare-datatypes ((tuple2!870 0))(
  ( (tuple2!871 (_1!438 Bool) (_2!438 LongMapFixedSize!180)) )
))
(declare-fun lt!6437 () tuple2!870)

(assert (=> b!21047 (= e!13744 (tuple2!869 (_1!438 lt!6437) (Cell!181 (_2!438 lt!6437))))))

(declare-fun call!1233 () tuple2!870)

(assert (=> b!21047 (= lt!6437 call!1233)))

(declare-fun mapNonEmpty!967 () Bool)

(declare-fun mapRes!967 () Bool)

(declare-fun tp!3420 () Bool)

(declare-fun e!13736 () Bool)

(assert (=> mapNonEmpty!967 (= mapRes!967 (and tp!3420 e!13736))))

(declare-fun mapValue!967 () ValueCell!297)

(declare-fun mapRest!967 () (Array (_ BitVec 32) ValueCell!297))

(declare-fun mapKey!967 () (_ BitVec 32))

(assert (=> mapNonEmpty!967 (= (arr!574 (_values!1705 (v!1566 (underlying!101 thiss!938)))) (store mapRest!967 mapKey!967 mapValue!967))))

(declare-fun b!21048 () Bool)

(declare-fun lt!6431 () tuple2!870)

(declare-fun lt!6432 () tuple2!870)

(assert (=> b!21048 (= e!13735 (tuple2!869 (and (_1!438 lt!6431) (_1!438 lt!6432)) (Cell!181 (_2!438 lt!6432))))))

(declare-fun update!22 (LongMapFixedSize!180 (_ BitVec 64) V!1149) tuple2!870)

(assert (=> b!21048 (= lt!6431 (update!22 lt!6434 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1643 (v!1566 (underlying!101 thiss!938)))))))

(declare-fun call!1234 () tuple2!870)

(assert (=> b!21048 (= lt!6432 call!1234)))

(declare-fun res!13645 () Bool)

(assert (=> start!3340 (=> (not res!13645) (not e!13733))))

(declare-fun valid!92 (LongMap!180) Bool)

(assert (=> start!3340 (= res!13645 (valid!92 thiss!938))))

(assert (=> start!3340 e!13733))

(declare-fun e!13738 () Bool)

(assert (=> start!3340 e!13738))

(declare-fun b!21049 () Bool)

(declare-fun lt!6436 () tuple2!870)

(assert (=> b!21049 (= lt!6436 call!1233)))

(declare-fun e!13741 () tuple2!868)

(assert (=> b!21049 (= e!13741 (tuple2!869 (_1!438 lt!6436) (Cell!181 (_2!438 lt!6436))))))

(declare-fun b!21050 () Bool)

(declare-fun res!13642 () Bool)

(assert (=> b!21050 (=> (not res!13642) (not e!13737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!21050 (= res!13642 (validMask!0 (mask!4685 (v!1566 (underlying!101 thiss!938)))))))

(declare-fun b!21051 () Bool)

(assert (=> b!21051 (= e!13735 e!13741)))

(declare-fun c!2391 () Bool)

(assert (=> b!21051 (= c!2391 (and (not lt!6433) (= (bvand (extraKeys!1619 (v!1566 (underlying!101 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!21052 () Bool)

(declare-fun res!13644 () Bool)

(assert (=> b!21052 (=> (not res!13644) (not e!13737))))

(assert (=> b!21052 (= res!13644 (and (= (size!666 (_keys!3137 (v!1566 (underlying!101 thiss!938)))) (bvadd #b00000000000000000000000000000001 (mask!4685 (v!1566 (underlying!101 thiss!938))))) (bvsge (bvsub (size!666 (_keys!3137 (v!1566 (underlying!101 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub (size!666 (_keys!3137 (v!1566 (underlying!101 thiss!938)))) #b00000000000000000000000000000001) (size!666 (_keys!3137 (v!1566 (underlying!101 thiss!938)))))))))

(declare-fun b!21053 () Bool)

(declare-fun c!2389 () Bool)

(assert (=> b!21053 (= c!2389 (and (not (= (bvand (extraKeys!1619 (v!1566 (underlying!101 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!6433))))

(assert (=> b!21053 (= e!13741 e!13744)))

(declare-fun b!21054 () Bool)

(declare-fun res!13641 () Bool)

(assert (=> b!21054 (=> (not res!13641) (not e!13737))))

(declare-fun valid!93 (LongMapFixedSize!180) Bool)

(assert (=> b!21054 (= res!13641 (valid!93 (v!1566 (_2!437 lt!6435))))))

(declare-fun b!21055 () Bool)

(assert (=> b!21055 (= e!13737 (bvslt (bvadd #b00000000000000000000000000000001 (mask!4685 (v!1566 (_2!437 lt!6435)))) (_size!130 (v!1566 (underlying!101 thiss!938)))))))

(declare-fun bm!1230 () Bool)

(assert (=> bm!1230 (= call!1233 call!1234)))

(declare-fun b!21056 () Bool)

(declare-fun e!13743 () Bool)

(declare-fun e!13742 () Bool)

(assert (=> b!21056 (= e!13743 (and e!13742 mapRes!967))))

(declare-fun condMapEmpty!967 () Bool)

(declare-fun mapDefault!967 () ValueCell!297)

(assert (=> b!21056 (= condMapEmpty!967 (= (arr!574 (_values!1705 (v!1566 (underlying!101 thiss!938)))) ((as const (Array (_ BitVec 32) ValueCell!297)) mapDefault!967)))))

(declare-fun b!21057 () Bool)

(declare-fun tp_is_empty!993 () Bool)

(assert (=> b!21057 (= e!13736 tp_is_empty!993)))

(declare-fun b!21058 () Bool)

(declare-fun e!13734 () Bool)

(declare-fun e!13740 () Bool)

(assert (=> b!21058 (= e!13734 e!13740)))

(declare-fun bm!1231 () Bool)

(assert (=> bm!1231 (= call!1234 (update!22 (ite c!2390 (_2!438 lt!6431) lt!6434) (ite c!2390 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2391 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2390 (minValue!1643 (v!1566 (underlying!101 thiss!938))) (ite c!2391 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (minValue!1643 (v!1566 (underlying!101 thiss!938)))))))))

(declare-fun b!21059 () Bool)

(assert (=> b!21059 (= e!13738 e!13734)))

(declare-fun b!21060 () Bool)

(assert (=> b!21060 (= e!13744 (tuple2!869 true (Cell!181 lt!6434)))))

(declare-fun mapIsEmpty!967 () Bool)

(assert (=> mapIsEmpty!967 mapRes!967))

(declare-fun array_inv!405 (array!1207) Bool)

(declare-fun array_inv!406 (array!1209) Bool)

(assert (=> b!21061 (= e!13740 (and tp!3421 tp_is_empty!993 (array_inv!405 (_keys!3137 (v!1566 (underlying!101 thiss!938)))) (array_inv!406 (_values!1705 (v!1566 (underlying!101 thiss!938)))) e!13743))))

(declare-fun b!21062 () Bool)

(assert (=> b!21062 (= e!13742 tp_is_empty!993)))

(assert (= (and start!3340 res!13645) b!21046))

(assert (= (and b!21046 c!2390) b!21048))

(assert (= (and b!21046 (not c!2390)) b!21051))

(assert (= (and b!21051 c!2391) b!21049))

(assert (= (and b!21051 (not c!2391)) b!21053))

(assert (= (and b!21053 c!2389) b!21047))

(assert (= (and b!21053 (not c!2389)) b!21060))

(assert (= (or b!21049 b!21047) bm!1230))

(assert (= (or b!21048 bm!1230) bm!1231))

(assert (= (and b!21046 res!13643) b!21050))

(assert (= (and b!21050 res!13642) b!21052))

(assert (= (and b!21052 res!13644) b!21054))

(assert (= (and b!21054 res!13641) b!21055))

(assert (= (and b!21056 condMapEmpty!967) mapIsEmpty!967))

(assert (= (and b!21056 (not condMapEmpty!967)) mapNonEmpty!967))

(get-info :version)

(assert (= (and mapNonEmpty!967 ((_ is ValueCellFull!297) mapValue!967)) b!21057))

(assert (= (and b!21056 ((_ is ValueCellFull!297) mapDefault!967)) b!21062))

(assert (= b!21061 b!21056))

(assert (= b!21058 b!21061))

(assert (= b!21059 b!21058))

(assert (= start!3340 b!21059))

(declare-fun m!14689 () Bool)

(assert (=> b!21048 m!14689))

(declare-fun m!14691 () Bool)

(assert (=> start!3340 m!14691))

(declare-fun m!14693 () Bool)

(assert (=> mapNonEmpty!967 m!14693))

(declare-fun m!14695 () Bool)

(assert (=> b!21054 m!14695))

(declare-fun m!14697 () Bool)

(assert (=> b!21046 m!14697))

(assert (=> b!21046 m!14697))

(declare-fun m!14699 () Bool)

(assert (=> b!21046 m!14699))

(declare-fun m!14701 () Bool)

(assert (=> b!21061 m!14701))

(declare-fun m!14703 () Bool)

(assert (=> b!21061 m!14703))

(declare-fun m!14705 () Bool)

(assert (=> bm!1231 m!14705))

(declare-fun m!14707 () Bool)

(assert (=> b!21050 m!14707))

(check-sat b_and!1415 (not bm!1231) (not start!3340) (not mapNonEmpty!967) tp_is_empty!993 (not b!21046) (not b!21048) (not b!21054) (not b!21061) (not b_next!729) (not b!21050))
(check-sat b_and!1415 (not b_next!729))
(get-model)

(declare-fun b!21126 () Bool)

(declare-fun e!13788 () Bool)

(declare-fun lt!6527 () array!1207)

(declare-datatypes ((tuple2!876 0))(
  ( (tuple2!877 (_1!441 (_ BitVec 64)) (_2!441 V!1149)) )
))
(declare-fun lt!6513 () tuple2!876)

(declare-fun arrayContainsKey!0 (array!1207 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!21126 (= e!13788 (arrayContainsKey!0 lt!6527 (_1!441 lt!6513) #b00000000000000000000000000000000))))

(declare-fun b!21127 () Bool)

(declare-fun e!13787 () Bool)

(declare-fun lt!6522 () LongMapFixedSize!180)

(declare-datatypes ((List!555 0))(
  ( (Nil!552) (Cons!551 (h!1117 tuple2!876) (t!3214 List!555)) )
))
(declare-datatypes ((ListLongMap!541 0))(
  ( (ListLongMap!542 (toList!286 List!555)) )
))
(declare-fun map!394 (LongMapFixedSize!180) ListLongMap!541)

(assert (=> b!21127 (= e!13787 (= (map!394 lt!6522) (ListLongMap!542 Nil!552)))))

(declare-fun b!21128 () Bool)

(declare-fun lt!6506 () (_ BitVec 32))

(assert (=> b!21128 (= e!13788 (ite (= (_1!441 lt!6513) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!6506 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!6506 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun d!3719 () Bool)

(assert (=> d!3719 e!13787))

(declare-fun res!13665 () Bool)

(assert (=> d!3719 (=> (not res!13665) (not e!13787))))

(assert (=> d!3719 (= res!13665 (valid!93 lt!6522))))

(declare-fun lt!6526 () LongMapFixedSize!180)

(assert (=> d!3719 (= lt!6522 lt!6526)))

(declare-datatypes ((Unit!443 0))(
  ( (Unit!444) )
))
(declare-fun lt!6512 () Unit!443)

(declare-fun e!13789 () Unit!443)

(assert (=> d!3719 (= lt!6512 e!13789)))

(declare-fun c!2405 () Bool)

(assert (=> d!3719 (= c!2405 (not (= (map!394 lt!6526) (ListLongMap!542 Nil!552))))))

(declare-fun lt!6524 () Unit!443)

(declare-fun lt!6525 () Unit!443)

(assert (=> d!3719 (= lt!6524 lt!6525)))

(declare-fun lt!6508 () array!1207)

(declare-fun lt!6519 () (_ BitVec 32))

(declare-datatypes ((List!556 0))(
  ( (Nil!553) (Cons!552 (h!1118 (_ BitVec 64)) (t!3215 List!556)) )
))
(declare-fun lt!6521 () List!556)

(declare-fun arrayNoDuplicates!0 (array!1207 (_ BitVec 32) List!556) Bool)

(assert (=> d!3719 (arrayNoDuplicates!0 lt!6508 lt!6519 lt!6521)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!1207 (_ BitVec 32) (_ BitVec 32) List!556) Unit!443)

(assert (=> d!3719 (= lt!6525 (lemmaArrayNoDuplicatesInAll0Array!0 lt!6508 lt!6519 (bvadd (computeNewMask!19 thiss!938 (mask!4685 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (_size!130 (v!1566 (underlying!101 thiss!938)))) #b00000000000000000000000000000001) lt!6521))))

(assert (=> d!3719 (= lt!6521 Nil!553)))

(assert (=> d!3719 (= lt!6519 #b00000000000000000000000000000000)))

(assert (=> d!3719 (= lt!6508 (array!1208 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!19 thiss!938 (mask!4685 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (_size!130 (v!1566 (underlying!101 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!6515 () Unit!443)

(declare-fun lt!6518 () Unit!443)

(assert (=> d!3719 (= lt!6515 lt!6518)))

(declare-fun lt!6516 () (_ BitVec 32))

(declare-fun lt!6509 () array!1207)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1207 (_ BitVec 32)) Bool)

(assert (=> d!3719 (arrayForallSeekEntryOrOpenFound!0 lt!6516 lt!6509 (computeNewMask!19 thiss!938 (mask!4685 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (_size!130 (v!1566 (underlying!101 thiss!938)))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!1207 (_ BitVec 32) (_ BitVec 32)) Unit!443)

(assert (=> d!3719 (= lt!6518 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!6509 (computeNewMask!19 thiss!938 (mask!4685 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (_size!130 (v!1566 (underlying!101 thiss!938)))) lt!6516))))

(assert (=> d!3719 (= lt!6516 #b00000000000000000000000000000000)))

(assert (=> d!3719 (= lt!6509 (array!1208 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!19 thiss!938 (mask!4685 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (_size!130 (v!1566 (underlying!101 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!6520 () Unit!443)

(declare-fun lt!6514 () Unit!443)

(assert (=> d!3719 (= lt!6520 lt!6514)))

(declare-fun lt!6523 () array!1207)

(declare-fun lt!6507 () (_ BitVec 32))

(declare-fun lt!6510 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!1207 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!3719 (= (arrayCountValidKeys!0 lt!6523 lt!6507 lt!6510) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!1207 (_ BitVec 32) (_ BitVec 32)) Unit!443)

(assert (=> d!3719 (= lt!6514 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!6523 lt!6507 lt!6510))))

(assert (=> d!3719 (= lt!6510 (bvadd (computeNewMask!19 thiss!938 (mask!4685 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (_size!130 (v!1566 (underlying!101 thiss!938)))) #b00000000000000000000000000000001))))

(assert (=> d!3719 (= lt!6507 #b00000000000000000000000000000000)))

(assert (=> d!3719 (= lt!6523 (array!1208 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!19 thiss!938 (mask!4685 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (_size!130 (v!1566 (underlying!101 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun dynLambda!140 (Int (_ BitVec 64)) V!1149)

(assert (=> d!3719 (= lt!6526 (LongMapFixedSize!181 (defaultEntry!1715 (v!1566 (underlying!101 thiss!938))) (computeNewMask!19 thiss!938 (mask!4685 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (_size!130 (v!1566 (underlying!101 thiss!938)))) #b00000000000000000000000000000000 (dynLambda!140 (defaultEntry!1715 (v!1566 (underlying!101 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!140 (defaultEntry!1715 (v!1566 (underlying!101 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!1208 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!19 thiss!938 (mask!4685 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (_size!130 (v!1566 (underlying!101 thiss!938)))) #b00000000000000000000000000000001)) (array!1210 ((as const (Array (_ BitVec 32) ValueCell!297)) EmptyCell!297) (bvadd (computeNewMask!19 thiss!938 (mask!4685 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (_size!130 (v!1566 (underlying!101 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(assert (=> d!3719 (validMask!0 (computeNewMask!19 thiss!938 (mask!4685 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (_size!130 (v!1566 (underlying!101 thiss!938)))))))

(assert (=> d!3719 (= (getNewLongMapFixedSize!22 (computeNewMask!19 thiss!938 (mask!4685 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (_size!130 (v!1566 (underlying!101 thiss!938)))) (defaultEntry!1715 (v!1566 (underlying!101 thiss!938)))) lt!6522)))

(declare-fun b!21129 () Bool)

(declare-fun res!13666 () Bool)

(assert (=> b!21129 (=> (not res!13666) (not e!13787))))

(assert (=> b!21129 (= res!13666 (= (mask!4685 lt!6522) (computeNewMask!19 thiss!938 (mask!4685 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (_size!130 (v!1566 (underlying!101 thiss!938))))))))

(declare-fun b!21130 () Bool)

(declare-fun Unit!445 () Unit!443)

(assert (=> b!21130 (= e!13789 Unit!445)))

(declare-fun b!21131 () Bool)

(declare-fun Unit!446 () Unit!443)

(assert (=> b!21131 (= e!13789 Unit!446)))

(declare-fun head!826 (List!555) tuple2!876)

(assert (=> b!21131 (= lt!6513 (head!826 (toList!286 (map!394 lt!6526))))))

(assert (=> b!21131 (= lt!6527 (array!1208 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!19 thiss!938 (mask!4685 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (_size!130 (v!1566 (underlying!101 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> b!21131 (= lt!6506 #b00000000000000000000000000000000)))

(declare-fun lt!6505 () Unit!443)

(declare-fun lemmaKeyInListMapIsInArray!89 (array!1207 array!1209 (_ BitVec 32) (_ BitVec 32) V!1149 V!1149 (_ BitVec 64) Int) Unit!443)

(assert (=> b!21131 (= lt!6505 (lemmaKeyInListMapIsInArray!89 lt!6527 (array!1210 ((as const (Array (_ BitVec 32) ValueCell!297)) EmptyCell!297) (bvadd (computeNewMask!19 thiss!938 (mask!4685 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (_size!130 (v!1566 (underlying!101 thiss!938)))) #b00000000000000000000000000000001)) (computeNewMask!19 thiss!938 (mask!4685 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (_size!130 (v!1566 (underlying!101 thiss!938)))) lt!6506 (dynLambda!140 (defaultEntry!1715 (v!1566 (underlying!101 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!140 (defaultEntry!1715 (v!1566 (underlying!101 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (_1!441 lt!6513) (defaultEntry!1715 (v!1566 (underlying!101 thiss!938)))))))

(declare-fun c!2406 () Bool)

(assert (=> b!21131 (= c!2406 (and (not (= (_1!441 lt!6513) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!441 lt!6513) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!21131 e!13788))

(declare-fun lt!6511 () Unit!443)

(assert (=> b!21131 (= lt!6511 lt!6505)))

(declare-fun lt!6517 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1207 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!21131 (= lt!6517 (arrayScanForKey!0 (array!1208 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!19 thiss!938 (mask!4685 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (_size!130 (v!1566 (underlying!101 thiss!938)))) #b00000000000000000000000000000001)) (_1!441 lt!6513) #b00000000000000000000000000000000))))

(assert (=> b!21131 false))

(assert (= (and d!3719 c!2405) b!21131))

(assert (= (and d!3719 (not c!2405)) b!21130))

(assert (= (and b!21131 c!2406) b!21126))

(assert (= (and b!21131 (not c!2406)) b!21128))

(assert (= (and d!3719 res!13665) b!21129))

(assert (= (and b!21129 res!13666) b!21127))

(declare-fun b_lambda!1517 () Bool)

(assert (=> (not b_lambda!1517) (not d!3719)))

(declare-fun t!3213 () Bool)

(declare-fun tb!645 () Bool)

(assert (=> (and b!21061 (= (defaultEntry!1715 (v!1566 (underlying!101 thiss!938))) (defaultEntry!1715 (v!1566 (underlying!101 thiss!938)))) t!3213) tb!645))

(declare-fun result!1065 () Bool)

(assert (=> tb!645 (= result!1065 tp_is_empty!993)))

(assert (=> d!3719 t!3213))

(declare-fun b_and!1419 () Bool)

(assert (= b_and!1415 (and (=> t!3213 result!1065) b_and!1419)))

(declare-fun b_lambda!1519 () Bool)

(assert (=> (not b_lambda!1519) (not b!21131)))

(assert (=> b!21131 t!3213))

(declare-fun b_and!1421 () Bool)

(assert (= b_and!1419 (and (=> t!3213 result!1065) b_and!1421)))

(declare-fun m!14729 () Bool)

(assert (=> b!21126 m!14729))

(declare-fun m!14731 () Bool)

(assert (=> b!21127 m!14731))

(declare-fun m!14733 () Bool)

(assert (=> d!3719 m!14733))

(assert (=> d!3719 m!14697))

(declare-fun m!14735 () Bool)

(assert (=> d!3719 m!14735))

(declare-fun m!14737 () Bool)

(assert (=> d!3719 m!14737))

(declare-fun m!14739 () Bool)

(assert (=> d!3719 m!14739))

(declare-fun m!14741 () Bool)

(assert (=> d!3719 m!14741))

(declare-fun m!14743 () Bool)

(assert (=> d!3719 m!14743))

(assert (=> d!3719 m!14697))

(declare-fun m!14745 () Bool)

(assert (=> d!3719 m!14745))

(declare-fun m!14747 () Bool)

(assert (=> d!3719 m!14747))

(assert (=> d!3719 m!14697))

(declare-fun m!14749 () Bool)

(assert (=> d!3719 m!14749))

(declare-fun m!14751 () Bool)

(assert (=> d!3719 m!14751))

(assert (=> b!21131 m!14697))

(assert (=> b!21131 m!14733))

(assert (=> b!21131 m!14733))

(declare-fun m!14753 () Bool)

(assert (=> b!21131 m!14753))

(declare-fun m!14755 () Bool)

(assert (=> b!21131 m!14755))

(assert (=> b!21131 m!14733))

(declare-fun m!14757 () Bool)

(assert (=> b!21131 m!14757))

(assert (=> b!21131 m!14747))

(assert (=> b!21046 d!3719))

(declare-fun d!3721 () Bool)

(declare-fun e!13794 () Bool)

(assert (=> d!3721 e!13794))

(declare-fun res!13669 () Bool)

(assert (=> d!3721 (=> (not res!13669) (not e!13794))))

(declare-fun lt!6532 () (_ BitVec 32))

(assert (=> d!3721 (= res!13669 (validMask!0 lt!6532))))

(declare-datatypes ((tuple2!878 0))(
  ( (tuple2!879 (_1!442 Unit!443) (_2!442 (_ BitVec 32))) )
))
(declare-fun e!13795 () tuple2!878)

(assert (=> d!3721 (= lt!6532 (_2!442 e!13795))))

(declare-fun c!2409 () Bool)

(declare-fun lt!6533 () tuple2!878)

(assert (=> d!3721 (= c!2409 (and (bvsgt (_2!442 lt!6533) #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 (_size!130 (v!1566 (underlying!101 thiss!938)))) (_2!442 lt!6533)) (bvsge (bvadd (bvand (bvashr (_2!442 lt!6533) #b00000000000000000000000000000001) #b00111111111111111111111111111111) #b00000000000000000000000000000001) (_size!130 (v!1566 (underlying!101 thiss!938))))))))

(declare-fun Unit!447 () Unit!443)

(declare-fun Unit!448 () Unit!443)

(assert (=> d!3721 (= lt!6533 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!130 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))))) (mask!4685 (v!1566 (underlying!101 thiss!938)))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!130 (v!1566 (underlying!101 thiss!938)))) (mask!4685 (v!1566 (underlying!101 thiss!938))))) (tuple2!879 Unit!447 (bvand (bvadd (bvshl (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!879 Unit!448 (mask!4685 (v!1566 (underlying!101 thiss!938))))))))

(assert (=> d!3721 (validMask!0 (mask!4685 (v!1566 (underlying!101 thiss!938))))))

(assert (=> d!3721 (= (computeNewMask!19 thiss!938 (mask!4685 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (_size!130 (v!1566 (underlying!101 thiss!938)))) lt!6532)))

(declare-fun b!21140 () Bool)

(declare-fun computeNewMaskWhile!10 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!878)

(assert (=> b!21140 (= e!13795 (computeNewMaskWhile!10 (_size!130 (v!1566 (underlying!101 thiss!938))) (_vacant!130 (v!1566 (underlying!101 thiss!938))) (mask!4685 (v!1566 (underlying!101 thiss!938))) (_2!442 lt!6533)))))

(declare-fun b!21141 () Bool)

(declare-fun Unit!449 () Unit!443)

(assert (=> b!21141 (= e!13795 (tuple2!879 Unit!449 (_2!442 lt!6533)))))

(declare-fun b!21142 () Bool)

(assert (=> b!21142 (= e!13794 (bvsle (_size!130 (v!1566 (underlying!101 thiss!938))) (bvadd lt!6532 #b00000000000000000000000000000001)))))

(assert (= (and d!3721 c!2409) b!21140))

(assert (= (and d!3721 (not c!2409)) b!21141))

(assert (= (and d!3721 res!13669) b!21142))

(declare-fun m!14759 () Bool)

(assert (=> d!3721 m!14759))

(assert (=> d!3721 m!14707))

(declare-fun m!14761 () Bool)

(assert (=> b!21140 m!14761))

(assert (=> b!21046 d!3721))

(declare-fun d!3723 () Bool)

(assert (=> d!3723 (= (validMask!0 (mask!4685 (v!1566 (underlying!101 thiss!938)))) (and (or (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000000000000000000000111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000000000000000000001111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000000000000000000011111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000000000000000000111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000000000000000001111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000000000000000011111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000000000000000111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000000000000001111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000000000000011111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000000000000111111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000000000001111111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000000000011111111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000000000111111111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000000001111111111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000000011111111111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000000111111111111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000001111111111111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000011111111111111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000000111111111111111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000001111111111111111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000011111111111111111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000000111111111111111111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000001111111111111111111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000011111111111111111111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00000111111111111111111111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00001111111111111111111111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00011111111111111111111111111111) (= (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00111111111111111111111111111111)) (bvsle (mask!4685 (v!1566 (underlying!101 thiss!938))) #b00111111111111111111111111111111)))))

(assert (=> b!21050 d!3723))

(declare-fun b!21227 () Bool)

(declare-fun e!13854 () tuple2!870)

(declare-fun e!13861 () tuple2!870)

(assert (=> b!21227 (= e!13854 e!13861)))

(declare-datatypes ((SeekEntryResult!55 0))(
  ( (MissingZero!55 (index!2340 (_ BitVec 32))) (Found!55 (index!2341 (_ BitVec 32))) (Intermediate!55 (undefined!867 Bool) (index!2342 (_ BitVec 32)) (x!5118 (_ BitVec 32))) (Undefined!55) (MissingVacant!55 (index!2343 (_ BitVec 32))) )
))
(declare-fun lt!6594 () SeekEntryResult!55)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1207 (_ BitVec 32)) SeekEntryResult!55)

(assert (=> b!21227 (= lt!6594 (seekEntryOrOpen!0 (ite c!2390 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2391 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434)) (mask!4685 (ite c!2390 (_2!438 lt!6431) lt!6434))))))

(declare-fun c!2439 () Bool)

(assert (=> b!21227 (= c!2439 ((_ is Undefined!55) lt!6594))))

(declare-fun bm!1286 () Bool)

(declare-fun call!1308 () Bool)

(declare-fun call!1298 () Bool)

(assert (=> bm!1286 (= call!1308 call!1298)))

(declare-fun b!21228 () Bool)

(declare-fun e!13845 () Unit!443)

(declare-fun lt!6600 () Unit!443)

(assert (=> b!21228 (= e!13845 lt!6600)))

(declare-fun call!1306 () Unit!443)

(assert (=> b!21228 (= lt!6600 call!1306)))

(declare-fun lt!6606 () SeekEntryResult!55)

(declare-fun call!1300 () SeekEntryResult!55)

(assert (=> b!21228 (= lt!6606 call!1300)))

(declare-fun c!2438 () Bool)

(assert (=> b!21228 (= c!2438 ((_ is MissingZero!55) lt!6606))))

(declare-fun e!13859 () Bool)

(assert (=> b!21228 e!13859))

(declare-fun b!21229 () Bool)

(declare-fun c!2447 () Bool)

(assert (=> b!21229 (= c!2447 ((_ is MissingVacant!55) lt!6594))))

(declare-fun e!13844 () tuple2!870)

(assert (=> b!21229 (= e!13861 e!13844)))

(declare-fun bm!1287 () Bool)

(declare-fun call!1311 () Bool)

(declare-fun call!1309 () Bool)

(assert (=> bm!1287 (= call!1311 call!1309)))

(declare-fun b!21230 () Bool)

(declare-fun res!13701 () Bool)

(declare-fun e!13856 () Bool)

(assert (=> b!21230 (=> (not res!13701) (not e!13856))))

(declare-fun lt!6589 () SeekEntryResult!55)

(assert (=> b!21230 (= res!13701 (= (select (arr!573 (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434))) (index!2340 lt!6589)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21231 () Bool)

(declare-fun e!13858 () ListLongMap!541)

(declare-fun call!1304 () ListLongMap!541)

(assert (=> b!21231 (= e!13858 call!1304)))

(declare-fun b!21232 () Bool)

(declare-fun e!13850 () Bool)

(declare-fun call!1305 () Bool)

(assert (=> b!21232 (= e!13850 (not call!1305))))

(declare-fun e!13853 () Bool)

(declare-fun lt!6599 () SeekEntryResult!55)

(declare-fun b!21233 () Bool)

(assert (=> b!21233 (= e!13853 (= (select (arr!573 (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434))) (index!2341 lt!6599)) (ite c!2390 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2391 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!6590 () tuple2!870)

(declare-fun c!2441 () Bool)

(declare-fun bm!1288 () Bool)

(declare-fun call!1293 () ListLongMap!541)

(assert (=> bm!1288 (= call!1293 (map!394 (ite c!2441 (ite c!2390 (_2!438 lt!6431) lt!6434) (_2!438 lt!6590))))))

(declare-fun bm!1289 () Bool)

(declare-fun c!2443 () Bool)

(assert (=> bm!1289 (= c!2443 c!2439)))

(declare-fun e!13846 () ListLongMap!541)

(declare-fun call!1289 () Bool)

(declare-fun contains!214 (ListLongMap!541 (_ BitVec 64)) Bool)

(assert (=> bm!1289 (= call!1289 (contains!214 e!13846 (ite c!2390 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2391 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!21234 () Bool)

(declare-fun e!13843 () Bool)

(declare-fun e!13847 () Bool)

(assert (=> b!21234 (= e!13843 e!13847)))

(declare-fun res!13704 () Bool)

(assert (=> b!21234 (= res!13704 call!1311)))

(assert (=> b!21234 (=> (not res!13704) (not e!13847))))

(declare-fun b!21235 () Bool)

(declare-fun res!13707 () Bool)

(assert (=> b!21235 (= res!13707 call!1309)))

(assert (=> b!21235 (=> (not res!13707) (not e!13853))))

(declare-fun b!21236 () Bool)

(declare-fun lt!6612 () Unit!443)

(declare-fun lt!6603 () Unit!443)

(assert (=> b!21236 (= lt!6612 lt!6603)))

(declare-fun call!1294 () ListLongMap!541)

(assert (=> b!21236 (contains!214 call!1294 (select (arr!573 (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434))) (index!2341 lt!6594)))))

(declare-fun lt!6610 () array!1209)

(declare-fun lemmaValidKeyInArrayIsInListMap!6 (array!1207 array!1209 (_ BitVec 32) (_ BitVec 32) V!1149 V!1149 (_ BitVec 32) Int) Unit!443)

(assert (=> b!21236 (= lt!6603 (lemmaValidKeyInArrayIsInListMap!6 (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434)) lt!6610 (mask!4685 (ite c!2390 (_2!438 lt!6431) lt!6434)) (extraKeys!1619 (ite c!2390 (_2!438 lt!6431) lt!6434)) (zeroValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (minValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (index!2341 lt!6594) (defaultEntry!1715 (ite c!2390 (_2!438 lt!6431) lt!6434))))))

(assert (=> b!21236 (= lt!6610 (array!1210 (store (arr!574 (_values!1705 (ite c!2390 (_2!438 lt!6431) lt!6434))) (index!2341 lt!6594) (ValueCellFull!297 (ite c!2390 (minValue!1643 (v!1566 (underlying!101 thiss!938))) (ite c!2391 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (minValue!1643 (v!1566 (underlying!101 thiss!938))))))) (size!667 (_values!1705 (ite c!2390 (_2!438 lt!6431) lt!6434)))))))

(declare-fun lt!6596 () Unit!443)

(declare-fun lt!6613 () Unit!443)

(assert (=> b!21236 (= lt!6596 lt!6613)))

(declare-fun call!1302 () ListLongMap!541)

(declare-fun call!1307 () ListLongMap!541)

(assert (=> b!21236 (= call!1302 call!1307)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!6 (array!1207 array!1209 (_ BitVec 32) (_ BitVec 32) V!1149 V!1149 (_ BitVec 32) (_ BitVec 64) V!1149 Int) Unit!443)

(assert (=> b!21236 (= lt!6613 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!6 (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434)) (_values!1705 (ite c!2390 (_2!438 lt!6431) lt!6434)) (mask!4685 (ite c!2390 (_2!438 lt!6431) lt!6434)) (extraKeys!1619 (ite c!2390 (_2!438 lt!6431) lt!6434)) (zeroValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (minValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (index!2341 lt!6594) (ite c!2390 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2391 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2390 (minValue!1643 (v!1566 (underlying!101 thiss!938))) (ite c!2391 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (minValue!1643 (v!1566 (underlying!101 thiss!938))))) (defaultEntry!1715 (ite c!2390 (_2!438 lt!6431) lt!6434))))))

(declare-fun lt!6608 () Unit!443)

(declare-fun e!13849 () Unit!443)

(assert (=> b!21236 (= lt!6608 e!13849)))

(declare-fun c!2446 () Bool)

(assert (=> b!21236 (= c!2446 call!1289)))

(declare-fun e!13852 () tuple2!870)

(assert (=> b!21236 (= e!13852 (tuple2!871 true (LongMapFixedSize!181 (defaultEntry!1715 (ite c!2390 (_2!438 lt!6431) lt!6434)) (mask!4685 (ite c!2390 (_2!438 lt!6431) lt!6434)) (extraKeys!1619 (ite c!2390 (_2!438 lt!6431) lt!6434)) (zeroValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (minValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (_size!130 (ite c!2390 (_2!438 lt!6431) lt!6434)) (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434)) (array!1210 (store (arr!574 (_values!1705 (ite c!2390 (_2!438 lt!6431) lt!6434))) (index!2341 lt!6594) (ValueCellFull!297 (ite c!2390 (minValue!1643 (v!1566 (underlying!101 thiss!938))) (ite c!2391 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (minValue!1643 (v!1566 (underlying!101 thiss!938))))))) (size!667 (_values!1705 (ite c!2390 (_2!438 lt!6431) lt!6434)))) (_vacant!130 (ite c!2390 (_2!438 lt!6431) lt!6434)))))))

(declare-fun bm!1290 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!6 (array!1207 array!1209 (_ BitVec 32) (_ BitVec 32) V!1149 V!1149 (_ BitVec 64) Int) Unit!443)

(assert (=> bm!1290 (= call!1306 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!6 (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434)) (_values!1705 (ite c!2390 (_2!438 lt!6431) lt!6434)) (mask!4685 (ite c!2390 (_2!438 lt!6431) lt!6434)) (extraKeys!1619 (ite c!2390 (_2!438 lt!6431) lt!6434)) (zeroValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (minValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (ite c!2390 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2391 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!1715 (ite c!2390 (_2!438 lt!6431) lt!6434))))))

(declare-fun bm!1291 () Bool)

(declare-fun call!1310 () Bool)

(assert (=> bm!1291 (= call!1305 call!1310)))

(declare-fun bm!1292 () Bool)

(declare-fun call!1292 () ListLongMap!541)

(declare-fun call!1312 () ListLongMap!541)

(assert (=> bm!1292 (= call!1292 call!1312)))

(declare-fun b!21237 () Bool)

(declare-fun lt!6595 () tuple2!870)

(assert (=> b!21237 (= e!13844 (tuple2!871 (_1!438 lt!6595) (_2!438 lt!6595)))))

(declare-fun call!1296 () tuple2!870)

(assert (=> b!21237 (= lt!6595 call!1296)))

(declare-fun b!21238 () Bool)

(declare-fun e!13855 () Bool)

(declare-fun e!13848 () Bool)

(assert (=> b!21238 (= e!13855 e!13848)))

(declare-fun res!13711 () Bool)

(declare-fun call!1301 () ListLongMap!541)

(assert (=> b!21238 (= res!13711 (contains!214 call!1301 (ite c!2390 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2391 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!21238 (=> (not res!13711) (not e!13848))))

(declare-fun bm!1293 () Bool)

(declare-fun call!1303 () Bool)

(assert (=> bm!1293 (= call!1303 call!1310)))

(declare-fun b!21239 () Bool)

(declare-fun e!13857 () Bool)

(assert (=> b!21239 (= e!13857 (not call!1305))))

(declare-fun b!21240 () Bool)

(declare-fun res!13700 () Bool)

(assert (=> b!21240 (=> (not res!13700) (not e!13850))))

(assert (=> b!21240 (= res!13700 (= (select (arr!573 (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434))) (index!2340 lt!6606)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1294 () Bool)

(assert (=> bm!1294 (= call!1310 (arrayContainsKey!0 (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434)) (ite c!2390 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2391 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000))))

(declare-fun bm!1295 () Bool)

(declare-fun call!1295 () ListLongMap!541)

(assert (=> bm!1295 (= call!1295 call!1302)))

(declare-fun b!21241 () Bool)

(declare-fun res!13710 () Bool)

(assert (=> b!21241 (= res!13710 (= (select (arr!573 (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434))) (index!2343 lt!6589)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!21241 (=> (not res!13710) (not e!13847))))

(declare-fun b!21242 () Bool)

(declare-fun lt!6607 () Unit!443)

(assert (=> b!21242 (= e!13849 lt!6607)))

(declare-fun call!1290 () Unit!443)

(assert (=> b!21242 (= lt!6607 call!1290)))

(declare-fun call!1291 () SeekEntryResult!55)

(assert (=> b!21242 (= lt!6599 call!1291)))

(declare-fun res!13705 () Bool)

(assert (=> b!21242 (= res!13705 ((_ is Found!55) lt!6599))))

(assert (=> b!21242 (=> (not res!13705) (not e!13853))))

(assert (=> b!21242 e!13853))

(declare-fun e!13840 () Bool)

(declare-fun lt!6588 () SeekEntryResult!55)

(declare-fun b!21243 () Bool)

(assert (=> b!21243 (= e!13840 (= (select (arr!573 (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434))) (index!2341 lt!6588)) (ite c!2390 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2391 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!1296 () Bool)

(declare-fun call!1297 () Bool)

(assert (=> bm!1296 (= call!1297 call!1308)))

(declare-fun bm!1297 () Bool)

(declare-fun call!1299 () SeekEntryResult!55)

(assert (=> bm!1297 (= call!1291 call!1299)))

(declare-fun b!21244 () Bool)

(assert (=> b!21244 (= e!13847 (not call!1303))))

(declare-fun b!21245 () Bool)

(declare-fun getCurrentListMap!115 (array!1207 array!1209 (_ BitVec 32) (_ BitVec 32) V!1149 V!1149 (_ BitVec 32) Int) ListLongMap!541)

(assert (=> b!21245 (= e!13846 (getCurrentListMap!115 (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434)) (_values!1705 (ite c!2390 (_2!438 lt!6431) lt!6434)) (mask!4685 (ite c!2390 (_2!438 lt!6431) lt!6434)) (extraKeys!1619 (ite c!2390 (_2!438 lt!6431) lt!6434)) (zeroValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (minValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) #b00000000000000000000000000000000 (defaultEntry!1715 (ite c!2390 (_2!438 lt!6431) lt!6434))))))

(declare-fun b!21246 () Bool)

(declare-fun c!2445 () Bool)

(assert (=> b!21246 (= c!2445 ((_ is MissingVacant!55) lt!6589))))

(declare-fun e!13860 () Bool)

(assert (=> b!21246 (= e!13860 e!13843)))

(declare-fun b!21247 () Bool)

(declare-fun Unit!450 () Unit!443)

(assert (=> b!21247 (= e!13849 Unit!450)))

(declare-fun lt!6598 () Unit!443)

(assert (=> b!21247 (= lt!6598 call!1306)))

(assert (=> b!21247 (= lt!6589 call!1291)))

(declare-fun c!2451 () Bool)

(assert (=> b!21247 (= c!2451 ((_ is MissingZero!55) lt!6589))))

(assert (=> b!21247 e!13860))

(declare-fun lt!6601 () Unit!443)

(assert (=> b!21247 (= lt!6601 lt!6598)))

(assert (=> b!21247 false))

(declare-fun b!21248 () Bool)

(assert (=> b!21248 (= e!13846 call!1294)))

(declare-fun bm!1298 () Bool)

(assert (=> bm!1298 (= call!1301 (map!394 (ite c!2441 (_2!438 lt!6590) (ite c!2390 (_2!438 lt!6431) lt!6434))))))

(declare-fun b!21249 () Bool)

(declare-fun c!2442 () Bool)

(assert (=> b!21249 (= c!2442 ((_ is MissingVacant!55) lt!6606))))

(declare-fun e!13842 () Bool)

(assert (=> b!21249 (= e!13859 e!13842)))

(declare-fun bm!1299 () Bool)

(assert (=> bm!1299 (= call!1300 call!1299)))

(declare-fun bm!1300 () Bool)

(declare-fun c!2449 () Bool)

(declare-fun c!2450 () Bool)

(declare-fun +!41 (ListLongMap!541 tuple2!876) ListLongMap!541)

(assert (=> bm!1300 (= call!1302 (+!41 e!13858 (ite c!2449 (ite c!2450 (tuple2!877 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!2390 (minValue!1643 (v!1566 (underlying!101 thiss!938))) (ite c!2391 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (minValue!1643 (v!1566 (underlying!101 thiss!938)))))) (tuple2!877 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2390 (minValue!1643 (v!1566 (underlying!101 thiss!938))) (ite c!2391 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (minValue!1643 (v!1566 (underlying!101 thiss!938))))))) (tuple2!877 (ite c!2390 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2391 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2390 (minValue!1643 (v!1566 (underlying!101 thiss!938))) (ite c!2391 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (minValue!1643 (v!1566 (underlying!101 thiss!938)))))))))))

(declare-fun c!2448 () Bool)

(assert (=> bm!1300 (= c!2448 c!2449)))

(declare-fun b!21250 () Bool)

(declare-fun lt!6604 () Unit!443)

(declare-fun lt!6602 () Unit!443)

(assert (=> b!21250 (= lt!6604 lt!6602)))

(assert (=> b!21250 (= call!1295 call!1292)))

(declare-fun lt!6593 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!6 (array!1207 array!1209 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1149 V!1149 V!1149 Int) Unit!443)

(assert (=> b!21250 (= lt!6602 (lemmaChangeLongMinValueKeyThenAddPairToListMap!6 (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434)) (_values!1705 (ite c!2390 (_2!438 lt!6431) lt!6434)) (mask!4685 (ite c!2390 (_2!438 lt!6431) lt!6434)) (extraKeys!1619 (ite c!2390 (_2!438 lt!6431) lt!6434)) lt!6593 (zeroValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (minValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (ite c!2390 (minValue!1643 (v!1566 (underlying!101 thiss!938))) (ite c!2391 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (minValue!1643 (v!1566 (underlying!101 thiss!938))))) (defaultEntry!1715 (ite c!2390 (_2!438 lt!6431) lt!6434))))))

(assert (=> b!21250 (= lt!6593 (bvor (extraKeys!1619 (ite c!2390 (_2!438 lt!6431) lt!6434)) #b00000000000000000000000000000010))))

(declare-fun e!13851 () tuple2!870)

(assert (=> b!21250 (= e!13851 (tuple2!871 true (LongMapFixedSize!181 (defaultEntry!1715 (ite c!2390 (_2!438 lt!6431) lt!6434)) (mask!4685 (ite c!2390 (_2!438 lt!6431) lt!6434)) (bvor (extraKeys!1619 (ite c!2390 (_2!438 lt!6431) lt!6434)) #b00000000000000000000000000000010) (zeroValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (ite c!2390 (minValue!1643 (v!1566 (underlying!101 thiss!938))) (ite c!2391 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (minValue!1643 (v!1566 (underlying!101 thiss!938))))) (_size!130 (ite c!2390 (_2!438 lt!6431) lt!6434)) (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434)) (_values!1705 (ite c!2390 (_2!438 lt!6431) lt!6434)) (_vacant!130 (ite c!2390 (_2!438 lt!6431) lt!6434)))))))

(declare-fun b!21251 () Bool)

(assert (=> b!21251 (= e!13842 ((_ is Undefined!55) lt!6606))))

(declare-fun b!21252 () Bool)

(declare-fun res!13709 () Bool)

(assert (=> b!21252 (=> (not res!13709) (not e!13856))))

(assert (=> b!21252 (= res!13709 call!1311)))

(assert (=> b!21252 (= e!13860 e!13856)))

(declare-fun b!21253 () Bool)

(declare-fun res!13703 () Bool)

(assert (=> b!21253 (=> (not res!13703) (not e!13850))))

(assert (=> b!21253 (= res!13703 call!1297)))

(assert (=> b!21253 (= e!13859 e!13850)))

(declare-fun bm!1301 () Bool)

(assert (=> bm!1301 (= call!1304 call!1307)))

(declare-fun b!21254 () Bool)

(assert (=> b!21254 (= e!13842 e!13857)))

(declare-fun res!13708 () Bool)

(assert (=> b!21254 (= res!13708 call!1297)))

(assert (=> b!21254 (=> (not res!13708) (not e!13857))))

(declare-fun b!21255 () Bool)

(assert (=> b!21255 (= e!13858 (getCurrentListMap!115 (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434)) (_values!1705 (ite c!2390 (_2!438 lt!6431) lt!6434)) (mask!4685 (ite c!2390 (_2!438 lt!6431) lt!6434)) (extraKeys!1619 (ite c!2390 (_2!438 lt!6431) lt!6434)) (zeroValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (minValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) #b00000000000000000000000000000000 (defaultEntry!1715 (ite c!2390 (_2!438 lt!6431) lt!6434))))))

(declare-fun bm!1302 () Bool)

(assert (=> bm!1302 (= call!1294 call!1312)))

(declare-fun bm!1303 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!6 (array!1207 array!1209 (_ BitVec 32) (_ BitVec 32) V!1149 V!1149 (_ BitVec 64) Int) Unit!443)

(assert (=> bm!1303 (= call!1290 (lemmaInListMapThenSeekEntryOrOpenFindsIt!6 (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434)) (_values!1705 (ite c!2390 (_2!438 lt!6431) lt!6434)) (mask!4685 (ite c!2390 (_2!438 lt!6431) lt!6434)) (extraKeys!1619 (ite c!2390 (_2!438 lt!6431) lt!6434)) (zeroValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (minValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (ite c!2390 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2391 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!1715 (ite c!2390 (_2!438 lt!6431) lt!6434))))))

(declare-fun bm!1304 () Bool)

(assert (=> bm!1304 (= call!1309 call!1298)))

(declare-fun d!3725 () Bool)

(declare-fun e!13841 () Bool)

(assert (=> d!3725 e!13841))

(declare-fun res!13699 () Bool)

(assert (=> d!3725 (=> (not res!13699) (not e!13841))))

(assert (=> d!3725 (= res!13699 (valid!93 (_2!438 lt!6590)))))

(assert (=> d!3725 (= lt!6590 e!13854)))

(assert (=> d!3725 (= c!2449 (= (ite c!2390 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2391 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvneg (ite c!2390 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2391 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!3725 (valid!93 (ite c!2390 (_2!438 lt!6431) lt!6434))))

(assert (=> d!3725 (= (update!22 (ite c!2390 (_2!438 lt!6431) lt!6434) (ite c!2390 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2391 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2390 (minValue!1643 (v!1566 (underlying!101 thiss!938))) (ite c!2391 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (minValue!1643 (v!1566 (underlying!101 thiss!938)))))) lt!6590)))

(declare-fun bm!1305 () Bool)

(declare-fun c!2444 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!1305 (= call!1298 (inRange!0 (ite c!2439 (ite c!2444 (index!2341 lt!6588) (ite c!2438 (index!2340 lt!6606) (index!2343 lt!6606))) (ite c!2446 (index!2341 lt!6599) (ite c!2451 (index!2340 lt!6589) (index!2343 lt!6589)))) (mask!4685 (ite c!2390 (_2!438 lt!6431) lt!6434))))))

(declare-fun b!21256 () Bool)

(assert (=> b!21256 (= e!13843 ((_ is Undefined!55) lt!6589))))

(declare-fun b!21257 () Bool)

(declare-fun lt!6614 () tuple2!870)

(assert (=> b!21257 (= lt!6614 call!1296)))

(assert (=> b!21257 (= e!13852 (tuple2!871 (_1!438 lt!6614) (_2!438 lt!6614)))))

(declare-fun b!21258 () Bool)

(assert (=> b!21258 (= e!13854 e!13851)))

(assert (=> b!21258 (= c!2450 (= (ite c!2390 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2391 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21259 () Bool)

(assert (=> b!21259 (= e!13856 (not call!1303))))

(declare-fun b!21260 () Bool)

(declare-fun res!13706 () Bool)

(assert (=> b!21260 (= res!13706 call!1308)))

(assert (=> b!21260 (=> (not res!13706) (not e!13840))))

(declare-fun bm!1306 () Bool)

(declare-fun lt!6597 () (_ BitVec 32))

(assert (=> bm!1306 (= call!1312 (getCurrentListMap!115 (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434)) (ite (or c!2449 c!2439) (_values!1705 (ite c!2390 (_2!438 lt!6431) lt!6434)) lt!6610) (mask!4685 (ite c!2390 (_2!438 lt!6431) lt!6434)) (ite c!2449 (ite c!2450 lt!6597 lt!6593) (extraKeys!1619 (ite c!2390 (_2!438 lt!6431) lt!6434))) (ite (and c!2449 c!2450) (ite c!2390 (minValue!1643 (v!1566 (underlying!101 thiss!938))) (ite c!2391 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (minValue!1643 (v!1566 (underlying!101 thiss!938))))) (zeroValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434))) (ite c!2449 (ite c!2450 (minValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (ite c!2390 (minValue!1643 (v!1566 (underlying!101 thiss!938))) (ite c!2391 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (minValue!1643 (v!1566 (underlying!101 thiss!938)))))) (minValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434))) #b00000000000000000000000000000000 (defaultEntry!1715 (ite c!2390 (_2!438 lt!6431) lt!6434))))))

(declare-fun b!21261 () Bool)

(assert (=> b!21261 (= e!13855 (= call!1293 call!1301))))

(declare-fun res!13698 () Bool)

(declare-fun b!21262 () Bool)

(assert (=> b!21262 (= res!13698 (= (select (arr!573 (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434))) (index!2343 lt!6606)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!21262 (=> (not res!13698) (not e!13857))))

(declare-fun bm!1307 () Bool)

(assert (=> bm!1307 (= call!1299 (seekEntryOrOpen!0 (ite c!2390 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2391 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434)) (mask!4685 (ite c!2390 (_2!438 lt!6431) lt!6434))))))

(declare-fun bm!1308 () Bool)

(assert (=> bm!1308 (= call!1307 (getCurrentListMap!115 (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434)) (ite c!2449 (_values!1705 (ite c!2390 (_2!438 lt!6431) lt!6434)) (array!1210 (store (arr!574 (_values!1705 (ite c!2390 (_2!438 lt!6431) lt!6434))) (index!2341 lt!6594) (ValueCellFull!297 (ite c!2390 (minValue!1643 (v!1566 (underlying!101 thiss!938))) (ite c!2391 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (minValue!1643 (v!1566 (underlying!101 thiss!938))))))) (size!667 (_values!1705 (ite c!2390 (_2!438 lt!6431) lt!6434))))) (mask!4685 (ite c!2390 (_2!438 lt!6431) lt!6434)) (extraKeys!1619 (ite c!2390 (_2!438 lt!6431) lt!6434)) (zeroValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (minValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) #b00000000000000000000000000000000 (defaultEntry!1715 (ite c!2390 (_2!438 lt!6431) lt!6434))))))

(declare-fun b!21263 () Bool)

(declare-fun lt!6591 () Unit!443)

(declare-fun lt!6592 () Unit!443)

(assert (=> b!21263 (= lt!6591 lt!6592)))

(assert (=> b!21263 (= call!1295 call!1292)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!6 (array!1207 array!1209 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1149 V!1149 V!1149 Int) Unit!443)

(assert (=> b!21263 (= lt!6592 (lemmaChangeZeroKeyThenAddPairToListMap!6 (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434)) (_values!1705 (ite c!2390 (_2!438 lt!6431) lt!6434)) (mask!4685 (ite c!2390 (_2!438 lt!6431) lt!6434)) (extraKeys!1619 (ite c!2390 (_2!438 lt!6431) lt!6434)) lt!6597 (zeroValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (ite c!2390 (minValue!1643 (v!1566 (underlying!101 thiss!938))) (ite c!2391 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (minValue!1643 (v!1566 (underlying!101 thiss!938))))) (minValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (defaultEntry!1715 (ite c!2390 (_2!438 lt!6431) lt!6434))))))

(assert (=> b!21263 (= lt!6597 (bvor (extraKeys!1619 (ite c!2390 (_2!438 lt!6431) lt!6434)) #b00000000000000000000000000000001))))

(assert (=> b!21263 (= e!13851 (tuple2!871 true (LongMapFixedSize!181 (defaultEntry!1715 (ite c!2390 (_2!438 lt!6431) lt!6434)) (mask!4685 (ite c!2390 (_2!438 lt!6431) lt!6434)) (bvor (extraKeys!1619 (ite c!2390 (_2!438 lt!6431) lt!6434)) #b00000000000000000000000000000001) (ite c!2390 (minValue!1643 (v!1566 (underlying!101 thiss!938))) (ite c!2391 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (minValue!1643 (v!1566 (underlying!101 thiss!938))))) (minValue!1643 (ite c!2390 (_2!438 lt!6431) lt!6434)) (_size!130 (ite c!2390 (_2!438 lt!6431) lt!6434)) (_keys!3137 (ite c!2390 (_2!438 lt!6431) lt!6434)) (_values!1705 (ite c!2390 (_2!438 lt!6431) lt!6434)) (_vacant!130 (ite c!2390 (_2!438 lt!6431) lt!6434)))))))

(declare-fun b!21264 () Bool)

(assert (=> b!21264 (= e!13848 (= call!1301 (+!41 call!1293 (tuple2!877 (ite c!2390 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2391 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2390 (minValue!1643 (v!1566 (underlying!101 thiss!938))) (ite c!2391 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (minValue!1643 (v!1566 (underlying!101 thiss!938)))))))))))

(declare-fun bm!1309 () Bool)

(declare-fun updateHelperNewKey!6 (LongMapFixedSize!180 (_ BitVec 64) V!1149 (_ BitVec 32)) tuple2!870)

(assert (=> bm!1309 (= call!1296 (updateHelperNewKey!6 (ite c!2390 (_2!438 lt!6431) lt!6434) (ite c!2390 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2391 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2390 (minValue!1643 (v!1566 (underlying!101 thiss!938))) (ite c!2391 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (minValue!1643 (v!1566 (underlying!101 thiss!938))))) (ite c!2447 (index!2343 lt!6594) (index!2340 lt!6594))))))

(declare-fun b!21265 () Bool)

(assert (=> b!21265 (= e!13844 e!13852)))

(declare-fun c!2440 () Bool)

(assert (=> b!21265 (= c!2440 ((_ is MissingZero!55) lt!6594))))

(declare-fun b!21266 () Bool)

(declare-fun Unit!451 () Unit!443)

(assert (=> b!21266 (= e!13845 Unit!451)))

(declare-fun lt!6611 () Unit!443)

(assert (=> b!21266 (= lt!6611 call!1290)))

(assert (=> b!21266 (= lt!6588 call!1300)))

(declare-fun res!13702 () Bool)

(assert (=> b!21266 (= res!13702 ((_ is Found!55) lt!6588))))

(assert (=> b!21266 (=> (not res!13702) (not e!13840))))

(assert (=> b!21266 e!13840))

(declare-fun lt!6609 () Unit!443)

(assert (=> b!21266 (= lt!6609 lt!6611)))

(assert (=> b!21266 false))

(declare-fun b!21267 () Bool)

(declare-fun lt!6605 () Unit!443)

(assert (=> b!21267 (= lt!6605 e!13845)))

(assert (=> b!21267 (= c!2444 call!1289)))

(assert (=> b!21267 (= e!13861 (tuple2!871 false (ite c!2390 (_2!438 lt!6431) lt!6434)))))

(declare-fun b!21268 () Bool)

(assert (=> b!21268 (= e!13841 e!13855)))

(assert (=> b!21268 (= c!2441 (_1!438 lt!6590))))

(assert (= (and d!3725 c!2449) b!21258))

(assert (= (and d!3725 (not c!2449)) b!21227))

(assert (= (and b!21258 c!2450) b!21263))

(assert (= (and b!21258 (not c!2450)) b!21250))

(assert (= (or b!21263 b!21250) bm!1292))

(assert (= (or b!21263 b!21250) bm!1301))

(assert (= (or b!21263 b!21250) bm!1295))

(assert (= (and b!21227 c!2439) b!21267))

(assert (= (and b!21227 (not c!2439)) b!21229))

(assert (= (and b!21267 c!2444) b!21266))

(assert (= (and b!21267 (not c!2444)) b!21228))

(assert (= (and b!21266 res!13702) b!21260))

(assert (= (and b!21260 res!13706) b!21243))

(assert (= (and b!21228 c!2438) b!21253))

(assert (= (and b!21228 (not c!2438)) b!21249))

(assert (= (and b!21253 res!13703) b!21240))

(assert (= (and b!21240 res!13700) b!21232))

(assert (= (and b!21249 c!2442) b!21254))

(assert (= (and b!21249 (not c!2442)) b!21251))

(assert (= (and b!21254 res!13708) b!21262))

(assert (= (and b!21262 res!13698) b!21239))

(assert (= (or b!21253 b!21254) bm!1296))

(assert (= (or b!21232 b!21239) bm!1291))

(assert (= (or b!21260 bm!1296) bm!1286))

(assert (= (or b!21266 b!21228) bm!1299))

(assert (= (and b!21229 c!2447) b!21237))

(assert (= (and b!21229 (not c!2447)) b!21265))

(assert (= (and b!21265 c!2440) b!21257))

(assert (= (and b!21265 (not c!2440)) b!21236))

(assert (= (and b!21236 c!2446) b!21242))

(assert (= (and b!21236 (not c!2446)) b!21247))

(assert (= (and b!21242 res!13705) b!21235))

(assert (= (and b!21235 res!13707) b!21233))

(assert (= (and b!21247 c!2451) b!21252))

(assert (= (and b!21247 (not c!2451)) b!21246))

(assert (= (and b!21252 res!13709) b!21230))

(assert (= (and b!21230 res!13701) b!21259))

(assert (= (and b!21246 c!2445) b!21234))

(assert (= (and b!21246 (not c!2445)) b!21256))

(assert (= (and b!21234 res!13704) b!21241))

(assert (= (and b!21241 res!13710) b!21244))

(assert (= (or b!21252 b!21234) bm!1287))

(assert (= (or b!21259 b!21244) bm!1293))

(assert (= (or b!21235 bm!1287) bm!1304))

(assert (= (or b!21242 b!21247) bm!1297))

(assert (= (or b!21237 b!21257) bm!1309))

(assert (= (or b!21228 b!21247) bm!1290))

(assert (= (or bm!1291 bm!1293) bm!1294))

(assert (= (or bm!1286 bm!1304) bm!1305))

(assert (= (or b!21266 b!21242) bm!1303))

(assert (= (or bm!1299 bm!1297) bm!1307))

(assert (= (or b!21267 b!21236) bm!1302))

(assert (= (or b!21267 b!21236) bm!1289))

(assert (= (and bm!1289 c!2443) b!21248))

(assert (= (and bm!1289 (not c!2443)) b!21245))

(assert (= (or bm!1292 bm!1302) bm!1306))

(assert (= (or bm!1301 b!21236) bm!1308))

(assert (= (or bm!1295 b!21236) bm!1300))

(assert (= (and bm!1300 c!2448) b!21231))

(assert (= (and bm!1300 (not c!2448)) b!21255))

(assert (= (and d!3725 res!13699) b!21268))

(assert (= (and b!21268 c!2441) b!21238))

(assert (= (and b!21268 (not c!2441)) b!21261))

(assert (= (and b!21238 res!13711) b!21264))

(assert (= (or b!21264 b!21261) bm!1288))

(assert (= (or b!21238 b!21264 b!21261) bm!1298))

(declare-fun m!14763 () Bool)

(assert (=> b!21250 m!14763))

(declare-fun m!14765 () Bool)

(assert (=> d!3725 m!14765))

(declare-fun m!14767 () Bool)

(assert (=> d!3725 m!14767))

(declare-fun m!14769 () Bool)

(assert (=> b!21227 m!14769))

(declare-fun m!14771 () Bool)

(assert (=> b!21238 m!14771))

(declare-fun m!14773 () Bool)

(assert (=> bm!1290 m!14773))

(declare-fun m!14775 () Bool)

(assert (=> bm!1289 m!14775))

(declare-fun m!14777 () Bool)

(assert (=> bm!1309 m!14777))

(declare-fun m!14779 () Bool)

(assert (=> b!21230 m!14779))

(declare-fun m!14781 () Bool)

(assert (=> b!21264 m!14781))

(declare-fun m!14783 () Bool)

(assert (=> b!21245 m!14783))

(assert (=> bm!1307 m!14769))

(declare-fun m!14785 () Bool)

(assert (=> bm!1303 m!14785))

(assert (=> b!21255 m!14783))

(declare-fun m!14787 () Bool)

(assert (=> bm!1305 m!14787))

(declare-fun m!14789 () Bool)

(assert (=> bm!1298 m!14789))

(declare-fun m!14791 () Bool)

(assert (=> b!21243 m!14791))

(declare-fun m!14793 () Bool)

(assert (=> b!21240 m!14793))

(declare-fun m!14795 () Bool)

(assert (=> bm!1308 m!14795))

(declare-fun m!14797 () Bool)

(assert (=> bm!1308 m!14797))

(assert (=> b!21236 m!14795))

(declare-fun m!14799 () Bool)

(assert (=> b!21236 m!14799))

(declare-fun m!14801 () Bool)

(assert (=> b!21236 m!14801))

(declare-fun m!14803 () Bool)

(assert (=> b!21236 m!14803))

(declare-fun m!14805 () Bool)

(assert (=> b!21236 m!14805))

(assert (=> b!21236 m!14799))

(declare-fun m!14807 () Bool)

(assert (=> bm!1300 m!14807))

(declare-fun m!14809 () Bool)

(assert (=> bm!1288 m!14809))

(declare-fun m!14811 () Bool)

(assert (=> b!21263 m!14811))

(declare-fun m!14813 () Bool)

(assert (=> bm!1306 m!14813))

(declare-fun m!14815 () Bool)

(assert (=> bm!1294 m!14815))

(declare-fun m!14817 () Bool)

(assert (=> b!21233 m!14817))

(declare-fun m!14819 () Bool)

(assert (=> b!21262 m!14819))

(declare-fun m!14821 () Bool)

(assert (=> b!21241 m!14821))

(assert (=> bm!1231 d!3725))

(declare-fun d!3727 () Bool)

(assert (=> d!3727 (= (valid!92 thiss!938) (valid!93 (v!1566 (underlying!101 thiss!938))))))

(declare-fun bs!904 () Bool)

(assert (= bs!904 d!3727))

(declare-fun m!14823 () Bool)

(assert (=> bs!904 m!14823))

(assert (=> start!3340 d!3727))

(declare-fun d!3729 () Bool)

(declare-fun res!13718 () Bool)

(declare-fun e!13864 () Bool)

(assert (=> d!3729 (=> (not res!13718) (not e!13864))))

(declare-fun simpleValid!17 (LongMapFixedSize!180) Bool)

(assert (=> d!3729 (= res!13718 (simpleValid!17 (v!1566 (_2!437 lt!6435))))))

(assert (=> d!3729 (= (valid!93 (v!1566 (_2!437 lt!6435))) e!13864)))

(declare-fun b!21275 () Bool)

(declare-fun res!13719 () Bool)

(assert (=> b!21275 (=> (not res!13719) (not e!13864))))

(assert (=> b!21275 (= res!13719 (= (arrayCountValidKeys!0 (_keys!3137 (v!1566 (_2!437 lt!6435))) #b00000000000000000000000000000000 (size!666 (_keys!3137 (v!1566 (_2!437 lt!6435))))) (_size!130 (v!1566 (_2!437 lt!6435)))))))

(declare-fun b!21276 () Bool)

(declare-fun res!13720 () Bool)

(assert (=> b!21276 (=> (not res!13720) (not e!13864))))

(assert (=> b!21276 (= res!13720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3137 (v!1566 (_2!437 lt!6435))) (mask!4685 (v!1566 (_2!437 lt!6435)))))))

(declare-fun b!21277 () Bool)

(assert (=> b!21277 (= e!13864 (arrayNoDuplicates!0 (_keys!3137 (v!1566 (_2!437 lt!6435))) #b00000000000000000000000000000000 Nil!553))))

(assert (= (and d!3729 res!13718) b!21275))

(assert (= (and b!21275 res!13719) b!21276))

(assert (= (and b!21276 res!13720) b!21277))

(declare-fun m!14825 () Bool)

(assert (=> d!3729 m!14825))

(declare-fun m!14827 () Bool)

(assert (=> b!21275 m!14827))

(declare-fun m!14829 () Bool)

(assert (=> b!21276 m!14829))

(declare-fun m!14831 () Bool)

(assert (=> b!21277 m!14831))

(assert (=> b!21054 d!3729))

(declare-fun b!21278 () Bool)

(declare-fun e!13879 () tuple2!870)

(declare-fun e!13886 () tuple2!870)

(assert (=> b!21278 (= e!13879 e!13886)))

(declare-fun lt!6621 () SeekEntryResult!55)

(assert (=> b!21278 (= lt!6621 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!3137 lt!6434) (mask!4685 lt!6434)))))

(declare-fun c!2453 () Bool)

(assert (=> b!21278 (= c!2453 ((_ is Undefined!55) lt!6621))))

(declare-fun bm!1310 () Bool)

(declare-fun call!1332 () Bool)

(declare-fun call!1322 () Bool)

(assert (=> bm!1310 (= call!1332 call!1322)))

(declare-fun b!21279 () Bool)

(declare-fun e!13870 () Unit!443)

(declare-fun lt!6627 () Unit!443)

(assert (=> b!21279 (= e!13870 lt!6627)))

(declare-fun call!1330 () Unit!443)

(assert (=> b!21279 (= lt!6627 call!1330)))

(declare-fun lt!6633 () SeekEntryResult!55)

(declare-fun call!1324 () SeekEntryResult!55)

(assert (=> b!21279 (= lt!6633 call!1324)))

(declare-fun c!2452 () Bool)

(assert (=> b!21279 (= c!2452 ((_ is MissingZero!55) lt!6633))))

(declare-fun e!13884 () Bool)

(assert (=> b!21279 e!13884))

(declare-fun b!21280 () Bool)

(declare-fun c!2461 () Bool)

(assert (=> b!21280 (= c!2461 ((_ is MissingVacant!55) lt!6621))))

(declare-fun e!13869 () tuple2!870)

(assert (=> b!21280 (= e!13886 e!13869)))

(declare-fun bm!1311 () Bool)

(declare-fun call!1335 () Bool)

(declare-fun call!1333 () Bool)

(assert (=> bm!1311 (= call!1335 call!1333)))

(declare-fun b!21281 () Bool)

(declare-fun res!13724 () Bool)

(declare-fun e!13881 () Bool)

(assert (=> b!21281 (=> (not res!13724) (not e!13881))))

(declare-fun lt!6616 () SeekEntryResult!55)

(assert (=> b!21281 (= res!13724 (= (select (arr!573 (_keys!3137 lt!6434)) (index!2340 lt!6616)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21282 () Bool)

(declare-fun e!13883 () ListLongMap!541)

(declare-fun call!1328 () ListLongMap!541)

(assert (=> b!21282 (= e!13883 call!1328)))

(declare-fun b!21283 () Bool)

(declare-fun e!13875 () Bool)

(declare-fun call!1329 () Bool)

(assert (=> b!21283 (= e!13875 (not call!1329))))

(declare-fun b!21284 () Bool)

(declare-fun e!13878 () Bool)

(declare-fun lt!6626 () SeekEntryResult!55)

(assert (=> b!21284 (= e!13878 (= (select (arr!573 (_keys!3137 lt!6434)) (index!2341 lt!6626)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1312 () Bool)

(declare-fun lt!6617 () tuple2!870)

(declare-fun call!1317 () ListLongMap!541)

(declare-fun c!2455 () Bool)

(assert (=> bm!1312 (= call!1317 (map!394 (ite c!2455 lt!6434 (_2!438 lt!6617))))))

(declare-fun bm!1313 () Bool)

(declare-fun c!2457 () Bool)

(assert (=> bm!1313 (= c!2457 c!2453)))

(declare-fun call!1313 () Bool)

(declare-fun e!13871 () ListLongMap!541)

(assert (=> bm!1313 (= call!1313 (contains!214 e!13871 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21285 () Bool)

(declare-fun e!13868 () Bool)

(declare-fun e!13872 () Bool)

(assert (=> b!21285 (= e!13868 e!13872)))

(declare-fun res!13727 () Bool)

(assert (=> b!21285 (= res!13727 call!1335)))

(assert (=> b!21285 (=> (not res!13727) (not e!13872))))

(declare-fun b!21286 () Bool)

(declare-fun res!13730 () Bool)

(assert (=> b!21286 (= res!13730 call!1333)))

(assert (=> b!21286 (=> (not res!13730) (not e!13878))))

(declare-fun b!21287 () Bool)

(declare-fun lt!6639 () Unit!443)

(declare-fun lt!6630 () Unit!443)

(assert (=> b!21287 (= lt!6639 lt!6630)))

(declare-fun call!1318 () ListLongMap!541)

(assert (=> b!21287 (contains!214 call!1318 (select (arr!573 (_keys!3137 lt!6434)) (index!2341 lt!6621)))))

(declare-fun lt!6637 () array!1209)

(assert (=> b!21287 (= lt!6630 (lemmaValidKeyInArrayIsInListMap!6 (_keys!3137 lt!6434) lt!6637 (mask!4685 lt!6434) (extraKeys!1619 lt!6434) (zeroValue!1643 lt!6434) (minValue!1643 lt!6434) (index!2341 lt!6621) (defaultEntry!1715 lt!6434)))))

(assert (=> b!21287 (= lt!6637 (array!1210 (store (arr!574 (_values!1705 lt!6434)) (index!2341 lt!6621) (ValueCellFull!297 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))))) (size!667 (_values!1705 lt!6434))))))

(declare-fun lt!6623 () Unit!443)

(declare-fun lt!6640 () Unit!443)

(assert (=> b!21287 (= lt!6623 lt!6640)))

(declare-fun call!1326 () ListLongMap!541)

(declare-fun call!1331 () ListLongMap!541)

(assert (=> b!21287 (= call!1326 call!1331)))

(assert (=> b!21287 (= lt!6640 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!6 (_keys!3137 lt!6434) (_values!1705 lt!6434) (mask!4685 lt!6434) (extraKeys!1619 lt!6434) (zeroValue!1643 lt!6434) (minValue!1643 lt!6434) (index!2341 lt!6621) #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (defaultEntry!1715 lt!6434)))))

(declare-fun lt!6635 () Unit!443)

(declare-fun e!13874 () Unit!443)

(assert (=> b!21287 (= lt!6635 e!13874)))

(declare-fun c!2460 () Bool)

(assert (=> b!21287 (= c!2460 call!1313)))

(declare-fun e!13877 () tuple2!870)

(assert (=> b!21287 (= e!13877 (tuple2!871 true (LongMapFixedSize!181 (defaultEntry!1715 lt!6434) (mask!4685 lt!6434) (extraKeys!1619 lt!6434) (zeroValue!1643 lt!6434) (minValue!1643 lt!6434) (_size!130 lt!6434) (_keys!3137 lt!6434) (array!1210 (store (arr!574 (_values!1705 lt!6434)) (index!2341 lt!6621) (ValueCellFull!297 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))))) (size!667 (_values!1705 lt!6434))) (_vacant!130 lt!6434))))))

(declare-fun bm!1314 () Bool)

(assert (=> bm!1314 (= call!1330 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!6 (_keys!3137 lt!6434) (_values!1705 lt!6434) (mask!4685 lt!6434) (extraKeys!1619 lt!6434) (zeroValue!1643 lt!6434) (minValue!1643 lt!6434) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1715 lt!6434)))))

(declare-fun bm!1315 () Bool)

(declare-fun call!1334 () Bool)

(assert (=> bm!1315 (= call!1329 call!1334)))

(declare-fun bm!1316 () Bool)

(declare-fun call!1316 () ListLongMap!541)

(declare-fun call!1336 () ListLongMap!541)

(assert (=> bm!1316 (= call!1316 call!1336)))

(declare-fun b!21288 () Bool)

(declare-fun lt!6622 () tuple2!870)

(assert (=> b!21288 (= e!13869 (tuple2!871 (_1!438 lt!6622) (_2!438 lt!6622)))))

(declare-fun call!1320 () tuple2!870)

(assert (=> b!21288 (= lt!6622 call!1320)))

(declare-fun b!21289 () Bool)

(declare-fun e!13880 () Bool)

(declare-fun e!13873 () Bool)

(assert (=> b!21289 (= e!13880 e!13873)))

(declare-fun res!13734 () Bool)

(declare-fun call!1325 () ListLongMap!541)

(assert (=> b!21289 (= res!13734 (contains!214 call!1325 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!21289 (=> (not res!13734) (not e!13873))))

(declare-fun bm!1317 () Bool)

(declare-fun call!1327 () Bool)

(assert (=> bm!1317 (= call!1327 call!1334)))

(declare-fun b!21290 () Bool)

(declare-fun e!13882 () Bool)

(assert (=> b!21290 (= e!13882 (not call!1329))))

(declare-fun b!21291 () Bool)

(declare-fun res!13723 () Bool)

(assert (=> b!21291 (=> (not res!13723) (not e!13875))))

(assert (=> b!21291 (= res!13723 (= (select (arr!573 (_keys!3137 lt!6434)) (index!2340 lt!6633)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1318 () Bool)

(assert (=> bm!1318 (= call!1334 (arrayContainsKey!0 (_keys!3137 lt!6434) #b0000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000))))

(declare-fun bm!1319 () Bool)

(declare-fun call!1319 () ListLongMap!541)

(assert (=> bm!1319 (= call!1319 call!1326)))

(declare-fun b!21292 () Bool)

(declare-fun res!13733 () Bool)

(assert (=> b!21292 (= res!13733 (= (select (arr!573 (_keys!3137 lt!6434)) (index!2343 lt!6616)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!21292 (=> (not res!13733) (not e!13872))))

(declare-fun b!21293 () Bool)

(declare-fun lt!6634 () Unit!443)

(assert (=> b!21293 (= e!13874 lt!6634)))

(declare-fun call!1314 () Unit!443)

(assert (=> b!21293 (= lt!6634 call!1314)))

(declare-fun call!1315 () SeekEntryResult!55)

(assert (=> b!21293 (= lt!6626 call!1315)))

(declare-fun res!13728 () Bool)

(assert (=> b!21293 (= res!13728 ((_ is Found!55) lt!6626))))

(assert (=> b!21293 (=> (not res!13728) (not e!13878))))

(assert (=> b!21293 e!13878))

(declare-fun b!21294 () Bool)

(declare-fun e!13865 () Bool)

(declare-fun lt!6615 () SeekEntryResult!55)

(assert (=> b!21294 (= e!13865 (= (select (arr!573 (_keys!3137 lt!6434)) (index!2341 lt!6615)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1320 () Bool)

(declare-fun call!1321 () Bool)

(assert (=> bm!1320 (= call!1321 call!1332)))

(declare-fun bm!1321 () Bool)

(declare-fun call!1323 () SeekEntryResult!55)

(assert (=> bm!1321 (= call!1315 call!1323)))

(declare-fun b!21295 () Bool)

(assert (=> b!21295 (= e!13872 (not call!1327))))

(declare-fun b!21296 () Bool)

(assert (=> b!21296 (= e!13871 (getCurrentListMap!115 (_keys!3137 lt!6434) (_values!1705 lt!6434) (mask!4685 lt!6434) (extraKeys!1619 lt!6434) (zeroValue!1643 lt!6434) (minValue!1643 lt!6434) #b00000000000000000000000000000000 (defaultEntry!1715 lt!6434)))))

(declare-fun b!21297 () Bool)

(declare-fun c!2459 () Bool)

(assert (=> b!21297 (= c!2459 ((_ is MissingVacant!55) lt!6616))))

(declare-fun e!13885 () Bool)

(assert (=> b!21297 (= e!13885 e!13868)))

(declare-fun b!21298 () Bool)

(declare-fun Unit!452 () Unit!443)

(assert (=> b!21298 (= e!13874 Unit!452)))

(declare-fun lt!6625 () Unit!443)

(assert (=> b!21298 (= lt!6625 call!1330)))

(assert (=> b!21298 (= lt!6616 call!1315)))

(declare-fun c!2465 () Bool)

(assert (=> b!21298 (= c!2465 ((_ is MissingZero!55) lt!6616))))

(assert (=> b!21298 e!13885))

(declare-fun lt!6628 () Unit!443)

(assert (=> b!21298 (= lt!6628 lt!6625)))

(assert (=> b!21298 false))

(declare-fun b!21299 () Bool)

(assert (=> b!21299 (= e!13871 call!1318)))

(declare-fun bm!1322 () Bool)

(assert (=> bm!1322 (= call!1325 (map!394 (ite c!2455 (_2!438 lt!6617) lt!6434)))))

(declare-fun b!21300 () Bool)

(declare-fun c!2456 () Bool)

(assert (=> b!21300 (= c!2456 ((_ is MissingVacant!55) lt!6633))))

(declare-fun e!13867 () Bool)

(assert (=> b!21300 (= e!13884 e!13867)))

(declare-fun bm!1323 () Bool)

(assert (=> bm!1323 (= call!1324 call!1323)))

(declare-fun bm!1324 () Bool)

(declare-fun c!2464 () Bool)

(declare-fun c!2463 () Bool)

(assert (=> bm!1324 (= call!1326 (+!41 e!13883 (ite c!2463 (ite c!2464 (tuple2!877 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1643 (v!1566 (underlying!101 thiss!938)))) (tuple2!877 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))))) (tuple2!877 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1643 (v!1566 (underlying!101 thiss!938)))))))))

(declare-fun c!2462 () Bool)

(assert (=> bm!1324 (= c!2462 c!2463)))

(declare-fun b!21301 () Bool)

(declare-fun lt!6631 () Unit!443)

(declare-fun lt!6629 () Unit!443)

(assert (=> b!21301 (= lt!6631 lt!6629)))

(assert (=> b!21301 (= call!1319 call!1316)))

(declare-fun lt!6620 () (_ BitVec 32))

(assert (=> b!21301 (= lt!6629 (lemmaChangeLongMinValueKeyThenAddPairToListMap!6 (_keys!3137 lt!6434) (_values!1705 lt!6434) (mask!4685 lt!6434) (extraKeys!1619 lt!6434) lt!6620 (zeroValue!1643 lt!6434) (minValue!1643 lt!6434) (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (defaultEntry!1715 lt!6434)))))

(assert (=> b!21301 (= lt!6620 (bvor (extraKeys!1619 lt!6434) #b00000000000000000000000000000010))))

(declare-fun e!13876 () tuple2!870)

(assert (=> b!21301 (= e!13876 (tuple2!871 true (LongMapFixedSize!181 (defaultEntry!1715 lt!6434) (mask!4685 lt!6434) (bvor (extraKeys!1619 lt!6434) #b00000000000000000000000000000010) (zeroValue!1643 lt!6434) (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (_size!130 lt!6434) (_keys!3137 lt!6434) (_values!1705 lt!6434) (_vacant!130 lt!6434))))))

(declare-fun b!21302 () Bool)

(assert (=> b!21302 (= e!13867 ((_ is Undefined!55) lt!6633))))

(declare-fun b!21303 () Bool)

(declare-fun res!13732 () Bool)

(assert (=> b!21303 (=> (not res!13732) (not e!13881))))

(assert (=> b!21303 (= res!13732 call!1335)))

(assert (=> b!21303 (= e!13885 e!13881)))

(declare-fun b!21304 () Bool)

(declare-fun res!13726 () Bool)

(assert (=> b!21304 (=> (not res!13726) (not e!13875))))

(assert (=> b!21304 (= res!13726 call!1321)))

(assert (=> b!21304 (= e!13884 e!13875)))

(declare-fun bm!1325 () Bool)

(assert (=> bm!1325 (= call!1328 call!1331)))

(declare-fun b!21305 () Bool)

(assert (=> b!21305 (= e!13867 e!13882)))

(declare-fun res!13731 () Bool)

(assert (=> b!21305 (= res!13731 call!1321)))

(assert (=> b!21305 (=> (not res!13731) (not e!13882))))

(declare-fun b!21306 () Bool)

(assert (=> b!21306 (= e!13883 (getCurrentListMap!115 (_keys!3137 lt!6434) (_values!1705 lt!6434) (mask!4685 lt!6434) (extraKeys!1619 lt!6434) (zeroValue!1643 lt!6434) (minValue!1643 lt!6434) #b00000000000000000000000000000000 (defaultEntry!1715 lt!6434)))))

(declare-fun bm!1326 () Bool)

(assert (=> bm!1326 (= call!1318 call!1336)))

(declare-fun bm!1327 () Bool)

(assert (=> bm!1327 (= call!1314 (lemmaInListMapThenSeekEntryOrOpenFindsIt!6 (_keys!3137 lt!6434) (_values!1705 lt!6434) (mask!4685 lt!6434) (extraKeys!1619 lt!6434) (zeroValue!1643 lt!6434) (minValue!1643 lt!6434) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1715 lt!6434)))))

(declare-fun bm!1328 () Bool)

(assert (=> bm!1328 (= call!1333 call!1322)))

(declare-fun d!3731 () Bool)

(declare-fun e!13866 () Bool)

(assert (=> d!3731 e!13866))

(declare-fun res!13722 () Bool)

(assert (=> d!3731 (=> (not res!13722) (not e!13866))))

(assert (=> d!3731 (= res!13722 (valid!93 (_2!438 lt!6617)))))

(assert (=> d!3731 (= lt!6617 e!13879)))

(assert (=> d!3731 (= c!2463 (= #b0000000000000000000000000000000000000000000000000000000000000000 (bvneg #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!3731 (valid!93 lt!6434)))

(assert (=> d!3731 (= (update!22 lt!6434 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1643 (v!1566 (underlying!101 thiss!938)))) lt!6617)))

(declare-fun bm!1329 () Bool)

(declare-fun c!2458 () Bool)

(assert (=> bm!1329 (= call!1322 (inRange!0 (ite c!2453 (ite c!2458 (index!2341 lt!6615) (ite c!2452 (index!2340 lt!6633) (index!2343 lt!6633))) (ite c!2460 (index!2341 lt!6626) (ite c!2465 (index!2340 lt!6616) (index!2343 lt!6616)))) (mask!4685 lt!6434)))))

(declare-fun b!21307 () Bool)

(assert (=> b!21307 (= e!13868 ((_ is Undefined!55) lt!6616))))

(declare-fun b!21308 () Bool)

(declare-fun lt!6641 () tuple2!870)

(assert (=> b!21308 (= lt!6641 call!1320)))

(assert (=> b!21308 (= e!13877 (tuple2!871 (_1!438 lt!6641) (_2!438 lt!6641)))))

(declare-fun b!21309 () Bool)

(assert (=> b!21309 (= e!13879 e!13876)))

(assert (=> b!21309 (= c!2464 (= #b0000000000000000000000000000000000000000000000000000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!21310 () Bool)

(assert (=> b!21310 (= e!13881 (not call!1327))))

(declare-fun b!21311 () Bool)

(declare-fun res!13729 () Bool)

(assert (=> b!21311 (= res!13729 call!1332)))

(assert (=> b!21311 (=> (not res!13729) (not e!13865))))

(declare-fun bm!1330 () Bool)

(declare-fun lt!6624 () (_ BitVec 32))

(assert (=> bm!1330 (= call!1336 (getCurrentListMap!115 (_keys!3137 lt!6434) (ite (or c!2463 c!2453) (_values!1705 lt!6434) lt!6637) (mask!4685 lt!6434) (ite c!2463 (ite c!2464 lt!6624 lt!6620) (extraKeys!1619 lt!6434)) (ite (and c!2463 c!2464) (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (zeroValue!1643 lt!6434)) (ite c!2463 (ite c!2464 (minValue!1643 lt!6434) (zeroValue!1643 (v!1566 (underlying!101 thiss!938)))) (minValue!1643 lt!6434)) #b00000000000000000000000000000000 (defaultEntry!1715 lt!6434)))))

(declare-fun b!21312 () Bool)

(assert (=> b!21312 (= e!13880 (= call!1317 call!1325))))

(declare-fun b!21313 () Bool)

(declare-fun res!13721 () Bool)

(assert (=> b!21313 (= res!13721 (= (select (arr!573 (_keys!3137 lt!6434)) (index!2343 lt!6633)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!21313 (=> (not res!13721) (not e!13882))))

(declare-fun bm!1331 () Bool)

(assert (=> bm!1331 (= call!1323 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!3137 lt!6434) (mask!4685 lt!6434)))))

(declare-fun bm!1332 () Bool)

(assert (=> bm!1332 (= call!1331 (getCurrentListMap!115 (_keys!3137 lt!6434) (ite c!2463 (_values!1705 lt!6434) (array!1210 (store (arr!574 (_values!1705 lt!6434)) (index!2341 lt!6621) (ValueCellFull!297 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))))) (size!667 (_values!1705 lt!6434)))) (mask!4685 lt!6434) (extraKeys!1619 lt!6434) (zeroValue!1643 lt!6434) (minValue!1643 lt!6434) #b00000000000000000000000000000000 (defaultEntry!1715 lt!6434)))))

(declare-fun b!21314 () Bool)

(declare-fun lt!6618 () Unit!443)

(declare-fun lt!6619 () Unit!443)

(assert (=> b!21314 (= lt!6618 lt!6619)))

(assert (=> b!21314 (= call!1319 call!1316)))

(assert (=> b!21314 (= lt!6619 (lemmaChangeZeroKeyThenAddPairToListMap!6 (_keys!3137 lt!6434) (_values!1705 lt!6434) (mask!4685 lt!6434) (extraKeys!1619 lt!6434) lt!6624 (zeroValue!1643 lt!6434) (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (minValue!1643 lt!6434) (defaultEntry!1715 lt!6434)))))

(assert (=> b!21314 (= lt!6624 (bvor (extraKeys!1619 lt!6434) #b00000000000000000000000000000001))))

(assert (=> b!21314 (= e!13876 (tuple2!871 true (LongMapFixedSize!181 (defaultEntry!1715 lt!6434) (mask!4685 lt!6434) (bvor (extraKeys!1619 lt!6434) #b00000000000000000000000000000001) (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (minValue!1643 lt!6434) (_size!130 lt!6434) (_keys!3137 lt!6434) (_values!1705 lt!6434) (_vacant!130 lt!6434))))))

(declare-fun b!21315 () Bool)

(assert (=> b!21315 (= e!13873 (= call!1325 (+!41 call!1317 (tuple2!877 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1643 (v!1566 (underlying!101 thiss!938)))))))))

(declare-fun bm!1333 () Bool)

(assert (=> bm!1333 (= call!1320 (updateHelperNewKey!6 lt!6434 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1643 (v!1566 (underlying!101 thiss!938))) (ite c!2461 (index!2343 lt!6621) (index!2340 lt!6621))))))

(declare-fun b!21316 () Bool)

(assert (=> b!21316 (= e!13869 e!13877)))

(declare-fun c!2454 () Bool)

(assert (=> b!21316 (= c!2454 ((_ is MissingZero!55) lt!6621))))

(declare-fun b!21317 () Bool)

(declare-fun Unit!453 () Unit!443)

(assert (=> b!21317 (= e!13870 Unit!453)))

(declare-fun lt!6638 () Unit!443)

(assert (=> b!21317 (= lt!6638 call!1314)))

(assert (=> b!21317 (= lt!6615 call!1324)))

(declare-fun res!13725 () Bool)

(assert (=> b!21317 (= res!13725 ((_ is Found!55) lt!6615))))

(assert (=> b!21317 (=> (not res!13725) (not e!13865))))

(assert (=> b!21317 e!13865))

(declare-fun lt!6636 () Unit!443)

(assert (=> b!21317 (= lt!6636 lt!6638)))

(assert (=> b!21317 false))

(declare-fun b!21318 () Bool)

(declare-fun lt!6632 () Unit!443)

(assert (=> b!21318 (= lt!6632 e!13870)))

(assert (=> b!21318 (= c!2458 call!1313)))

(assert (=> b!21318 (= e!13886 (tuple2!871 false lt!6434))))

(declare-fun b!21319 () Bool)

(assert (=> b!21319 (= e!13866 e!13880)))

(assert (=> b!21319 (= c!2455 (_1!438 lt!6617))))

(assert (= (and d!3731 c!2463) b!21309))

(assert (= (and d!3731 (not c!2463)) b!21278))

(assert (= (and b!21309 c!2464) b!21314))

(assert (= (and b!21309 (not c!2464)) b!21301))

(assert (= (or b!21314 b!21301) bm!1316))

(assert (= (or b!21314 b!21301) bm!1325))

(assert (= (or b!21314 b!21301) bm!1319))

(assert (= (and b!21278 c!2453) b!21318))

(assert (= (and b!21278 (not c!2453)) b!21280))

(assert (= (and b!21318 c!2458) b!21317))

(assert (= (and b!21318 (not c!2458)) b!21279))

(assert (= (and b!21317 res!13725) b!21311))

(assert (= (and b!21311 res!13729) b!21294))

(assert (= (and b!21279 c!2452) b!21304))

(assert (= (and b!21279 (not c!2452)) b!21300))

(assert (= (and b!21304 res!13726) b!21291))

(assert (= (and b!21291 res!13723) b!21283))

(assert (= (and b!21300 c!2456) b!21305))

(assert (= (and b!21300 (not c!2456)) b!21302))

(assert (= (and b!21305 res!13731) b!21313))

(assert (= (and b!21313 res!13721) b!21290))

(assert (= (or b!21304 b!21305) bm!1320))

(assert (= (or b!21283 b!21290) bm!1315))

(assert (= (or b!21311 bm!1320) bm!1310))

(assert (= (or b!21317 b!21279) bm!1323))

(assert (= (and b!21280 c!2461) b!21288))

(assert (= (and b!21280 (not c!2461)) b!21316))

(assert (= (and b!21316 c!2454) b!21308))

(assert (= (and b!21316 (not c!2454)) b!21287))

(assert (= (and b!21287 c!2460) b!21293))

(assert (= (and b!21287 (not c!2460)) b!21298))

(assert (= (and b!21293 res!13728) b!21286))

(assert (= (and b!21286 res!13730) b!21284))

(assert (= (and b!21298 c!2465) b!21303))

(assert (= (and b!21298 (not c!2465)) b!21297))

(assert (= (and b!21303 res!13732) b!21281))

(assert (= (and b!21281 res!13724) b!21310))

(assert (= (and b!21297 c!2459) b!21285))

(assert (= (and b!21297 (not c!2459)) b!21307))

(assert (= (and b!21285 res!13727) b!21292))

(assert (= (and b!21292 res!13733) b!21295))

(assert (= (or b!21303 b!21285) bm!1311))

(assert (= (or b!21310 b!21295) bm!1317))

(assert (= (or b!21286 bm!1311) bm!1328))

(assert (= (or b!21293 b!21298) bm!1321))

(assert (= (or b!21288 b!21308) bm!1333))

(assert (= (or b!21279 b!21298) bm!1314))

(assert (= (or bm!1315 bm!1317) bm!1318))

(assert (= (or bm!1310 bm!1328) bm!1329))

(assert (= (or b!21317 b!21293) bm!1327))

(assert (= (or bm!1323 bm!1321) bm!1331))

(assert (= (or b!21318 b!21287) bm!1326))

(assert (= (or b!21318 b!21287) bm!1313))

(assert (= (and bm!1313 c!2457) b!21299))

(assert (= (and bm!1313 (not c!2457)) b!21296))

(assert (= (or bm!1316 bm!1326) bm!1330))

(assert (= (or bm!1325 b!21287) bm!1332))

(assert (= (or bm!1319 b!21287) bm!1324))

(assert (= (and bm!1324 c!2462) b!21282))

(assert (= (and bm!1324 (not c!2462)) b!21306))

(assert (= (and d!3731 res!13722) b!21319))

(assert (= (and b!21319 c!2455) b!21289))

(assert (= (and b!21319 (not c!2455)) b!21312))

(assert (= (and b!21289 res!13734) b!21315))

(assert (= (or b!21315 b!21312) bm!1312))

(assert (= (or b!21289 b!21315 b!21312) bm!1322))

(declare-fun m!14833 () Bool)

(assert (=> b!21301 m!14833))

(declare-fun m!14835 () Bool)

(assert (=> d!3731 m!14835))

(declare-fun m!14837 () Bool)

(assert (=> d!3731 m!14837))

(declare-fun m!14839 () Bool)

(assert (=> b!21278 m!14839))

(declare-fun m!14841 () Bool)

(assert (=> b!21289 m!14841))

(declare-fun m!14843 () Bool)

(assert (=> bm!1314 m!14843))

(declare-fun m!14845 () Bool)

(assert (=> bm!1313 m!14845))

(declare-fun m!14847 () Bool)

(assert (=> bm!1333 m!14847))

(declare-fun m!14849 () Bool)

(assert (=> b!21281 m!14849))

(declare-fun m!14851 () Bool)

(assert (=> b!21315 m!14851))

(declare-fun m!14853 () Bool)

(assert (=> b!21296 m!14853))

(assert (=> bm!1331 m!14839))

(declare-fun m!14855 () Bool)

(assert (=> bm!1327 m!14855))

(assert (=> b!21306 m!14853))

(declare-fun m!14857 () Bool)

(assert (=> bm!1329 m!14857))

(declare-fun m!14859 () Bool)

(assert (=> bm!1322 m!14859))

(declare-fun m!14861 () Bool)

(assert (=> b!21294 m!14861))

(declare-fun m!14863 () Bool)

(assert (=> b!21291 m!14863))

(declare-fun m!14865 () Bool)

(assert (=> bm!1332 m!14865))

(declare-fun m!14867 () Bool)

(assert (=> bm!1332 m!14867))

(assert (=> b!21287 m!14865))

(declare-fun m!14869 () Bool)

(assert (=> b!21287 m!14869))

(declare-fun m!14871 () Bool)

(assert (=> b!21287 m!14871))

(declare-fun m!14873 () Bool)

(assert (=> b!21287 m!14873))

(declare-fun m!14875 () Bool)

(assert (=> b!21287 m!14875))

(assert (=> b!21287 m!14869))

(declare-fun m!14877 () Bool)

(assert (=> bm!1324 m!14877))

(declare-fun m!14879 () Bool)

(assert (=> bm!1312 m!14879))

(declare-fun m!14881 () Bool)

(assert (=> b!21314 m!14881))

(declare-fun m!14883 () Bool)

(assert (=> bm!1330 m!14883))

(declare-fun m!14885 () Bool)

(assert (=> bm!1318 m!14885))

(declare-fun m!14887 () Bool)

(assert (=> b!21284 m!14887))

(declare-fun m!14889 () Bool)

(assert (=> b!21313 m!14889))

(declare-fun m!14891 () Bool)

(assert (=> b!21292 m!14891))

(assert (=> b!21048 d!3731))

(declare-fun d!3733 () Bool)

(assert (=> d!3733 (= (array_inv!405 (_keys!3137 (v!1566 (underlying!101 thiss!938)))) (bvsge (size!666 (_keys!3137 (v!1566 (underlying!101 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!21061 d!3733))

(declare-fun d!3735 () Bool)

(assert (=> d!3735 (= (array_inv!406 (_values!1705 (v!1566 (underlying!101 thiss!938)))) (bvsge (size!667 (_values!1705 (v!1566 (underlying!101 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!21061 d!3735))

(declare-fun mapNonEmpty!973 () Bool)

(declare-fun mapRes!973 () Bool)

(declare-fun tp!3430 () Bool)

(declare-fun e!13892 () Bool)

(assert (=> mapNonEmpty!973 (= mapRes!973 (and tp!3430 e!13892))))

(declare-fun mapValue!973 () ValueCell!297)

(declare-fun mapRest!973 () (Array (_ BitVec 32) ValueCell!297))

(declare-fun mapKey!973 () (_ BitVec 32))

(assert (=> mapNonEmpty!973 (= mapRest!967 (store mapRest!973 mapKey!973 mapValue!973))))

(declare-fun condMapEmpty!973 () Bool)

(declare-fun mapDefault!973 () ValueCell!297)

(assert (=> mapNonEmpty!967 (= condMapEmpty!973 (= mapRest!967 ((as const (Array (_ BitVec 32) ValueCell!297)) mapDefault!973)))))

(declare-fun e!13891 () Bool)

(assert (=> mapNonEmpty!967 (= tp!3420 (and e!13891 mapRes!973))))

(declare-fun b!21326 () Bool)

(assert (=> b!21326 (= e!13892 tp_is_empty!993)))

(declare-fun b!21327 () Bool)

(assert (=> b!21327 (= e!13891 tp_is_empty!993)))

(declare-fun mapIsEmpty!973 () Bool)

(assert (=> mapIsEmpty!973 mapRes!973))

(assert (= (and mapNonEmpty!967 condMapEmpty!973) mapIsEmpty!973))

(assert (= (and mapNonEmpty!967 (not condMapEmpty!973)) mapNonEmpty!973))

(assert (= (and mapNonEmpty!973 ((_ is ValueCellFull!297) mapValue!973)) b!21326))

(assert (= (and mapNonEmpty!967 ((_ is ValueCellFull!297) mapDefault!973)) b!21327))

(declare-fun m!14893 () Bool)

(assert (=> mapNonEmpty!973 m!14893))

(declare-fun b_lambda!1521 () Bool)

(assert (= b_lambda!1517 (or (and b!21061 b_free!729) b_lambda!1521)))

(declare-fun b_lambda!1523 () Bool)

(assert (= b_lambda!1519 (or (and b!21061 b_free!729) b_lambda!1523)))

(check-sat (not bm!1308) (not b_lambda!1523) (not bm!1309) (not b!21227) (not bm!1303) tp_is_empty!993 (not b!21287) (not b!21289) (not bm!1322) (not bm!1332) (not bm!1330) (not b!21131) (not b!21296) (not bm!1289) (not bm!1298) (not bm!1324) (not b!21126) (not bm!1306) (not b!21236) (not b!21140) (not d!3725) (not bm!1305) (not bm!1318) (not b_next!729) (not b!21127) (not bm!1288) (not bm!1294) (not bm!1300) (not b!21314) (not b!21301) (not d!3727) (not b!21238) (not b!21277) (not bm!1331) b_and!1421 (not d!3729) (not b_lambda!1521) (not b!21263) (not b!21278) (not b!21255) (not bm!1314) (not d!3719) (not bm!1327) (not b!21315) (not bm!1312) (not bm!1290) (not b!21275) (not b!21306) (not bm!1333) (not bm!1313) (not b!21250) (not b!21276) (not d!3721) (not d!3731) (not b!21245) (not bm!1307) (not mapNonEmpty!973) (not b!21264) (not bm!1329))
(check-sat b_and!1421 (not b_next!729))
