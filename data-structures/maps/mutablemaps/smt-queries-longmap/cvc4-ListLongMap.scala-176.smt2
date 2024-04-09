; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3364 () Bool)

(assert start!3364)

(declare-fun b!21479 () Bool)

(declare-fun b_free!737 () Bool)

(declare-fun b_next!737 () Bool)

(assert (=> b!21479 (= b_free!737 (not b_next!737))))

(declare-fun tp!3448 () Bool)

(declare-fun b_and!1427 () Bool)

(assert (=> b!21479 (= tp!3448 b_and!1427)))

(declare-fun b!21472 () Bool)

(declare-fun res!13786 () Bool)

(declare-fun e!13993 () Bool)

(assert (=> b!21472 (=> (not res!13786) (not e!13993))))

(declare-datatypes ((V!1159 0))(
  ( (V!1160 (val!527 Int)) )
))
(declare-datatypes ((ValueCell!301 0))(
  ( (ValueCellFull!301 (v!1574 V!1159)) (EmptyCell!301) )
))
(declare-datatypes ((array!1225 0))(
  ( (array!1226 (arr!581 (Array (_ BitVec 32) ValueCell!301)) (size!674 (_ BitVec 32))) )
))
(declare-datatypes ((array!1227 0))(
  ( (array!1228 (arr!582 (Array (_ BitVec 32) (_ BitVec 64))) (size!675 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!188 0))(
  ( (LongMapFixedSize!189 (defaultEntry!1720 Int) (mask!4693 (_ BitVec 32)) (extraKeys!1623 (_ BitVec 32)) (zeroValue!1647 V!1159) (minValue!1647 V!1159) (_size!135 (_ BitVec 32)) (_keys!3141 array!1227) (_values!1709 array!1225) (_vacant!135 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!188 0))(
  ( (Cell!189 (v!1575 LongMapFixedSize!188)) )
))
(declare-datatypes ((LongMap!188 0))(
  ( (LongMap!189 (underlying!105 Cell!188)) )
))
(declare-fun thiss!938 () LongMap!188)

(assert (=> b!21472 (= res!13786 (and (= (size!675 (_keys!3141 (v!1575 (underlying!105 thiss!938)))) (bvadd #b00000000000000000000000000000001 (mask!4693 (v!1575 (underlying!105 thiss!938))))) (bvsge (bvsub (size!675 (_keys!3141 (v!1575 (underlying!105 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub (size!675 (_keys!3141 (v!1575 (underlying!105 thiss!938)))) #b00000000000000000000000000000001) (size!675 (_keys!3141 (v!1575 (underlying!105 thiss!938)))))))))

(declare-fun b!21473 () Bool)

(declare-datatypes ((tuple2!892 0))(
  ( (tuple2!893 (_1!449 Bool) (_2!449 Cell!188)) )
))
(declare-fun lt!6700 () tuple2!892)

(declare-datatypes ((tuple2!894 0))(
  ( (tuple2!895 (_1!450 (_ BitVec 64)) (_2!450 V!1159)) )
))
(declare-datatypes ((List!559 0))(
  ( (Nil!556) (Cons!555 (h!1121 tuple2!894) (t!3218 List!559)) )
))
(declare-datatypes ((ListLongMap!547 0))(
  ( (ListLongMap!548 (toList!289 List!559)) )
))
(declare-fun getCurrentListMap!118 (array!1227 array!1225 (_ BitVec 32) (_ BitVec 32) V!1159 V!1159 (_ BitVec 32) Int) ListLongMap!547)

(declare-fun map!399 (LongMapFixedSize!188) ListLongMap!547)

(assert (=> b!21473 (= e!13993 (not (= (getCurrentListMap!118 (_keys!3141 (v!1575 (underlying!105 thiss!938))) (_values!1709 (v!1575 (underlying!105 thiss!938))) (mask!4693 (v!1575 (underlying!105 thiss!938))) (extraKeys!1623 (v!1575 (underlying!105 thiss!938))) (zeroValue!1647 (v!1575 (underlying!105 thiss!938))) (minValue!1647 (v!1575 (underlying!105 thiss!938))) (bvadd #b00000000000000000000000000000001 (bvsub (size!675 (_keys!3141 (v!1575 (underlying!105 thiss!938)))) #b00000000000000000000000000000001)) (defaultEntry!1720 (v!1575 (underlying!105 thiss!938)))) (map!399 (v!1575 (_2!449 lt!6700))))))))

(declare-fun b!21474 () Bool)

(declare-fun e!13997 () tuple2!892)

(declare-datatypes ((tuple2!896 0))(
  ( (tuple2!897 (_1!451 Bool) (_2!451 LongMapFixedSize!188)) )
))
(declare-fun lt!6703 () tuple2!896)

(assert (=> b!21474 (= e!13997 (tuple2!893 (_1!451 lt!6703) (Cell!189 (_2!451 lt!6703))))))

(declare-fun call!1353 () tuple2!896)

(assert (=> b!21474 (= lt!6703 call!1353)))

(declare-fun c!2492 () Bool)

(declare-fun c!2490 () Bool)

(declare-fun bm!1350 () Bool)

(declare-fun lt!6701 () LongMapFixedSize!188)

(declare-fun call!1354 () tuple2!896)

(declare-fun update!26 (LongMapFixedSize!188 (_ BitVec 64) V!1159) tuple2!896)

(assert (=> bm!1350 (= call!1354 (update!26 lt!6701 (ite (or c!2490 c!2492) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2490 c!2492) (zeroValue!1647 (v!1575 (underlying!105 thiss!938))) (minValue!1647 (v!1575 (underlying!105 thiss!938))))))))

(declare-fun b!21475 () Bool)

(declare-fun e!13999 () Bool)

(declare-fun e!13998 () Bool)

(assert (=> b!21475 (= e!13999 e!13998)))

(declare-fun b!21476 () Bool)

(declare-fun e!13990 () tuple2!892)

(declare-fun e!13992 () tuple2!892)

(assert (=> b!21476 (= e!13990 e!13992)))

(declare-fun lt!6702 () Bool)

(assert (=> b!21476 (= c!2492 (and (not lt!6702) (= (bvand (extraKeys!1623 (v!1575 (underlying!105 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!21477 () Bool)

(declare-fun c!2491 () Bool)

(assert (=> b!21477 (= c!2491 (and (not (= (bvand (extraKeys!1623 (v!1575 (underlying!105 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!6702))))

(assert (=> b!21477 (= e!13992 e!13997)))

(declare-fun res!13785 () Bool)

(declare-fun e!13994 () Bool)

(assert (=> start!3364 (=> (not res!13785) (not e!13994))))

(declare-fun valid!100 (LongMap!188) Bool)

(assert (=> start!3364 (= res!13785 (valid!100 thiss!938))))

(assert (=> start!3364 e!13994))

(assert (=> start!3364 e!13999))

(declare-fun b!21478 () Bool)

(declare-fun res!13787 () Bool)

(assert (=> b!21478 (=> (not res!13787) (not e!13993))))

(declare-fun valid!101 (LongMapFixedSize!188) Bool)

(assert (=> b!21478 (= res!13787 (valid!101 (v!1575 (_2!449 lt!6700))))))

(declare-fun e!14000 () Bool)

(declare-fun e!13995 () Bool)

(declare-fun tp_is_empty!1001 () Bool)

(declare-fun array_inv!413 (array!1227) Bool)

(declare-fun array_inv!414 (array!1225) Bool)

(assert (=> b!21479 (= e!13995 (and tp!3448 tp_is_empty!1001 (array_inv!413 (_keys!3141 (v!1575 (underlying!105 thiss!938)))) (array_inv!414 (_values!1709 (v!1575 (underlying!105 thiss!938)))) e!14000))))

(declare-fun b!21480 () Bool)

(declare-fun lt!6698 () tuple2!896)

(assert (=> b!21480 (= lt!6698 call!1353)))

(assert (=> b!21480 (= e!13992 (tuple2!893 (_1!451 lt!6698) (Cell!189 (_2!451 lt!6698))))))

(declare-fun b!21481 () Bool)

(assert (=> b!21481 (= e!13998 e!13995)))

(declare-fun b!21482 () Bool)

(assert (=> b!21482 (= e!13994 e!13993)))

(declare-fun res!13788 () Bool)

(assert (=> b!21482 (=> (not res!13788) (not e!13993))))

(assert (=> b!21482 (= res!13788 (_1!449 lt!6700))))

(assert (=> b!21482 (= lt!6700 e!13990)))

(assert (=> b!21482 (= c!2490 (and (not lt!6702) (not (= (bvand (extraKeys!1623 (v!1575 (underlying!105 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!21482 (= lt!6702 (= (bvand (extraKeys!1623 (v!1575 (underlying!105 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun getNewLongMapFixedSize!26 ((_ BitVec 32) Int) LongMapFixedSize!188)

(declare-fun computeNewMask!23 (LongMap!188 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!21482 (= lt!6701 (getNewLongMapFixedSize!26 (computeNewMask!23 thiss!938 (mask!4693 (v!1575 (underlying!105 thiss!938))) (_vacant!135 (v!1575 (underlying!105 thiss!938))) (_size!135 (v!1575 (underlying!105 thiss!938)))) (defaultEntry!1720 (v!1575 (underlying!105 thiss!938)))))))

(declare-fun b!21483 () Bool)

(declare-fun res!13783 () Bool)

(assert (=> b!21483 (=> (not res!13783) (not e!13993))))

(assert (=> b!21483 (= res!13783 (bvsge (bvadd #b00000000000000000000000000000001 (mask!4693 (v!1575 (_2!449 lt!6700)))) (_size!135 (v!1575 (underlying!105 thiss!938)))))))

(declare-fun bm!1351 () Bool)

(assert (=> bm!1351 (= call!1353 call!1354)))

(declare-fun b!21484 () Bool)

(declare-fun res!13784 () Bool)

(assert (=> b!21484 (=> (not res!13784) (not e!13993))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!21484 (= res!13784 (validMask!0 (mask!4693 (v!1575 (underlying!105 thiss!938)))))))

(declare-fun b!21485 () Bool)

(declare-fun e!13989 () Bool)

(declare-fun mapRes!982 () Bool)

(assert (=> b!21485 (= e!14000 (and e!13989 mapRes!982))))

(declare-fun condMapEmpty!982 () Bool)

(declare-fun mapDefault!982 () ValueCell!301)

