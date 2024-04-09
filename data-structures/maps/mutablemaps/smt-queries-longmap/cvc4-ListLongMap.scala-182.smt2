; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3654 () Bool)

(assert start!3654)

(declare-fun b!25513 () Bool)

(declare-fun b_free!773 () Bool)

(declare-fun b_next!773 () Bool)

(assert (=> b!25513 (= b_free!773 (not b_next!773))))

(declare-fun tp!3573 () Bool)

(declare-fun b_and!1573 () Bool)

(assert (=> b!25513 (= tp!3573 b_and!1573)))

(declare-fun b!25502 () Bool)

(declare-datatypes ((V!1207 0))(
  ( (V!1208 (val!545 Int)) )
))
(declare-datatypes ((array!1307 0))(
  ( (array!1308 (arr!617 (Array (_ BitVec 32) (_ BitVec 64))) (size!718 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!319 0))(
  ( (ValueCellFull!319 (v!1628 V!1207)) (EmptyCell!319) )
))
(declare-datatypes ((array!1309 0))(
  ( (array!1310 (arr!618 (Array (_ BitVec 32) ValueCell!319)) (size!719 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!224 0))(
  ( (LongMapFixedSize!225 (defaultEntry!1770 Int) (mask!4772 (_ BitVec 32)) (extraKeys!1662 (_ BitVec 32)) (zeroValue!1689 V!1207) (minValue!1689 V!1207) (_size!160 (_ BitVec 32)) (_keys!3195 array!1307) (_values!1754 array!1309) (_vacant!160 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!224 0))(
  ( (Cell!225 (v!1629 LongMapFixedSize!224)) )
))
(declare-datatypes ((tuple2!972 0))(
  ( (tuple2!973 (_1!495 Bool) (_2!495 Cell!224)) )
))
(declare-fun e!16504 () tuple2!972)

(declare-fun e!16501 () tuple2!972)

(assert (=> b!25502 (= e!16504 e!16501)))

(declare-fun c!3569 () Bool)

(declare-fun lt!10002 () Bool)

(declare-datatypes ((LongMap!224 0))(
  ( (LongMap!225 (underlying!123 Cell!224)) )
))
(declare-fun thiss!938 () LongMap!224)

(assert (=> b!25502 (= c!3569 (and (not lt!10002) (= (bvand (extraKeys!1662 (v!1629 (underlying!123 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!25503 () Bool)

(declare-datatypes ((tuple2!974 0))(
  ( (tuple2!975 (_1!496 Bool) (_2!496 LongMapFixedSize!224)) )
))
(declare-fun lt!10007 () tuple2!974)

(declare-fun call!2354 () tuple2!974)

(assert (=> b!25503 (= lt!10007 call!2354)))

(assert (=> b!25503 (= e!16501 (tuple2!973 (_1!496 lt!10007) (Cell!225 (_2!496 lt!10007))))))

(declare-fun b!25504 () Bool)

(declare-fun e!16510 () Bool)

(declare-datatypes ((tuple3!18 0))(
  ( (tuple3!19 (_1!497 Bool) (_2!497 Cell!224) (_3!9 LongMap!224)) )
))
(declare-fun lt!10010 () tuple3!18)

(declare-datatypes ((tuple2!976 0))(
  ( (tuple2!977 (_1!498 (_ BitVec 64)) (_2!498 V!1207)) )
))
(declare-datatypes ((List!570 0))(
  ( (Nil!567) (Cons!566 (h!1133 tuple2!976) (t!3257 List!570)) )
))
(declare-datatypes ((ListLongMap!559 0))(
  ( (ListLongMap!560 (toList!295 List!570)) )
))
(declare-fun map!417 (LongMap!224) ListLongMap!559)

(assert (=> b!25504 (= e!16510 (not (= (map!417 (_3!9 lt!10010)) (map!417 thiss!938))))))

(declare-fun b!25505 () Bool)

(declare-fun e!16507 () Bool)

(assert (=> b!25505 (= e!16507 e!16510)))

(declare-fun res!15282 () Bool)

(assert (=> b!25505 (=> (not res!15282) (not e!16510))))

(assert (=> b!25505 (= res!15282 (_1!497 lt!10010))))

(declare-fun e!16505 () tuple3!18)

(assert (=> b!25505 (= lt!10010 e!16505)))

(declare-fun c!3568 () Bool)

(declare-fun lt!10005 () tuple2!972)

(assert (=> b!25505 (= c!3568 (not (_1!495 lt!10005)))))

(assert (=> b!25505 (= lt!10005 e!16504)))

(declare-fun c!3566 () Bool)

(assert (=> b!25505 (= c!3566 (and (not lt!10002) (not (= (bvand (extraKeys!1662 (v!1629 (underlying!123 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!25505 (= lt!10002 (= (bvand (extraKeys!1662 (v!1629 (underlying!123 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!10003 () LongMapFixedSize!224)

(declare-fun getNewLongMapFixedSize!34 ((_ BitVec 32) Int) LongMapFixedSize!224)

(declare-fun computeNewMask!31 (LongMap!224 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!25505 (= lt!10003 (getNewLongMapFixedSize!34 (computeNewMask!31 thiss!938 (mask!4772 (v!1629 (underlying!123 thiss!938))) (_vacant!160 (v!1629 (underlying!123 thiss!938))) (_size!160 (v!1629 (underlying!123 thiss!938)))) (defaultEntry!1770 (v!1629 (underlying!123 thiss!938)))))))

(declare-fun lt!10001 () Cell!224)

(declare-fun b!25506 () Bool)

(declare-fun lt!10008 () tuple2!974)

(assert (=> b!25506 (= e!16505 (ite (_1!496 lt!10008) (tuple3!19 true (underlying!123 thiss!938) (LongMap!225 lt!10001)) (tuple3!19 false lt!10001 thiss!938)))))

(declare-fun repackFrom!9 (LongMap!224 LongMapFixedSize!224 (_ BitVec 32)) tuple2!974)

(assert (=> b!25506 (= lt!10008 (repackFrom!9 thiss!938 (v!1629 (_2!495 lt!10005)) (bvsub (size!718 (_keys!3195 (v!1629 (underlying!123 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> b!25506 (= lt!10001 (Cell!225 (_2!496 lt!10008)))))

(declare-fun b!25507 () Bool)

(declare-fun e!16513 () Bool)

(declare-fun tp_is_empty!1037 () Bool)

(assert (=> b!25507 (= e!16513 tp_is_empty!1037)))

(declare-fun b!25508 () Bool)

(declare-fun e!16509 () Bool)

(declare-fun e!16506 () Bool)

(declare-fun mapRes!1054 () Bool)

(assert (=> b!25508 (= e!16509 (and e!16506 mapRes!1054))))

(declare-fun condMapEmpty!1054 () Bool)

(declare-fun mapDefault!1054 () ValueCell!319)

