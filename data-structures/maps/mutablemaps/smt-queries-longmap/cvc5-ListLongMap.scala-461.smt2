; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8390 () Bool)

(assert start!8390)

(declare-fun b!56546 () Bool)

(declare-fun b_free!1921 () Bool)

(declare-fun b_next!1921 () Bool)

(assert (=> b!56546 (= b_free!1921 (not b_next!1921))))

(declare-fun tp!7863 () Bool)

(declare-fun b_and!3393 () Bool)

(assert (=> b!56546 (= tp!7863 b_and!3393)))

(declare-fun b!56541 () Bool)

(declare-fun b_free!1923 () Bool)

(declare-fun b_next!1923 () Bool)

(assert (=> b!56541 (= b_free!1923 (not b_next!1923))))

(declare-fun tp!7864 () Bool)

(declare-fun b_and!3395 () Bool)

(assert (=> b!56541 (= tp!7864 b_and!3395)))

(declare-fun b!56533 () Bool)

(declare-fun e!37236 () Bool)

(declare-fun e!37237 () Bool)

(assert (=> b!56533 (= e!37236 e!37237)))

(declare-fun res!31775 () Bool)

(assert (=> b!56533 (=> (not res!31775) (not e!37237))))

(declare-datatypes ((V!2817 0))(
  ( (V!2818 (val!1233 Int)) )
))
(declare-datatypes ((array!3676 0))(
  ( (array!3677 (arr!1760 (Array (_ BitVec 32) (_ BitVec 64))) (size!1989 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!845 0))(
  ( (ValueCellFull!845 (v!2348 V!2817)) (EmptyCell!845) )
))
(declare-datatypes ((array!3678 0))(
  ( (array!3679 (arr!1761 (Array (_ BitVec 32) ValueCell!845)) (size!1990 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!598 0))(
  ( (LongMapFixedSize!599 (defaultEntry!2013 Int) (mask!5882 (_ BitVec 32)) (extraKeys!1904 (_ BitVec 32)) (zeroValue!1931 V!2817) (minValue!1931 V!2817) (_size!348 (_ BitVec 32)) (_keys!3633 array!3676) (_values!1996 array!3678) (_vacant!348 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!408 0))(
  ( (Cell!409 (v!2349 LongMapFixedSize!598)) )
))
(declare-datatypes ((LongMap!408 0))(
  ( (LongMap!409 (underlying!215 Cell!408)) )
))
(declare-fun thiss!992 () LongMap!408)

(declare-datatypes ((tuple2!2020 0))(
  ( (tuple2!2021 (_1!1020 (_ BitVec 64)) (_2!1020 V!2817)) )
))
(declare-datatypes ((List!1440 0))(
  ( (Nil!1437) (Cons!1436 (h!2016 tuple2!2020) (t!4738 List!1440)) )
))
(declare-datatypes ((ListLongMap!1363 0))(
  ( (ListLongMap!1364 (toList!697 List!1440)) )
))
(declare-fun lt!22289 () ListLongMap!1363)

(declare-fun lt!22290 () ListLongMap!1363)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!56533 (= res!31775 (and (= lt!22290 lt!22289) (not (= (select (arr!1760 (_keys!3633 (v!2349 (underlying!215 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1760 (_keys!3633 (v!2349 (underlying!215 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!598)

(declare-fun map!1096 (LongMapFixedSize!598) ListLongMap!1363)

(assert (=> b!56533 (= lt!22289 (map!1096 newMap!16))))

(declare-fun getCurrentListMap!396 (array!3676 array!3678 (_ BitVec 32) (_ BitVec 32) V!2817 V!2817 (_ BitVec 32) Int) ListLongMap!1363)

(assert (=> b!56533 (= lt!22290 (getCurrentListMap!396 (_keys!3633 (v!2349 (underlying!215 thiss!992))) (_values!1996 (v!2349 (underlying!215 thiss!992))) (mask!5882 (v!2349 (underlying!215 thiss!992))) (extraKeys!1904 (v!2349 (underlying!215 thiss!992))) (zeroValue!1931 (v!2349 (underlying!215 thiss!992))) (minValue!1931 (v!2349 (underlying!215 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2013 (v!2349 (underlying!215 thiss!992)))))))

(declare-fun b!56534 () Bool)

(declare-fun e!37232 () Bool)

(assert (=> b!56534 (= e!37232 true)))

(declare-datatypes ((List!1441 0))(
  ( (Nil!1438) (Cons!1437 (h!2017 (_ BitVec 64)) (t!4739 List!1441)) )
))
(declare-fun lt!22285 () List!1441)

(declare-fun lt!22286 () Bool)

(declare-fun contains!680 (List!1441 (_ BitVec 64)) Bool)

(assert (=> b!56534 (= lt!22286 (contains!680 lt!22285 (select (arr!1760 (_keys!3633 (v!2349 (underlying!215 thiss!992)))) from!355)))))

(declare-fun b!56535 () Bool)

(declare-fun e!37227 () Bool)

(assert (=> b!56535 (= e!37227 (not e!37232))))

(declare-fun res!31781 () Bool)

(assert (=> b!56535 (=> res!31781 e!37232)))

(assert (=> b!56535 (= res!31781 (or (bvsge (size!1989 (_keys!3633 (v!2349 (underlying!215 thiss!992)))) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!1989 (_keys!3633 (v!2349 (underlying!215 thiss!992)))))))))

(assert (=> b!56535 (= lt!22285 (Cons!1437 (select (arr!1760 (_keys!3633 (v!2349 (underlying!215 thiss!992)))) from!355) Nil!1438))))

(declare-fun arrayNoDuplicates!0 (array!3676 (_ BitVec 32) List!1441) Bool)

(assert (=> b!56535 (arrayNoDuplicates!0 (_keys!3633 (v!2349 (underlying!215 thiss!992))) from!355 Nil!1438)))

(declare-datatypes ((Unit!1468 0))(
  ( (Unit!1469) )
))
(declare-fun lt!22291 () Unit!1468)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3676 (_ BitVec 32) (_ BitVec 32)) Unit!1468)

(assert (=> b!56535 (= lt!22291 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3633 (v!2349 (underlying!215 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!3676 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!56535 (arrayContainsKey!0 (_keys!3633 (v!2349 (underlying!215 thiss!992))) (select (arr!1760 (_keys!3633 (v!2349 (underlying!215 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!22288 () Unit!1468)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!23 (array!3676 array!3678 (_ BitVec 32) (_ BitVec 32) V!2817 V!2817 (_ BitVec 64) (_ BitVec 32) Int) Unit!1468)

(assert (=> b!56535 (= lt!22288 (lemmaListMapContainsThenArrayContainsFrom!23 (_keys!3633 (v!2349 (underlying!215 thiss!992))) (_values!1996 (v!2349 (underlying!215 thiss!992))) (mask!5882 (v!2349 (underlying!215 thiss!992))) (extraKeys!1904 (v!2349 (underlying!215 thiss!992))) (zeroValue!1931 (v!2349 (underlying!215 thiss!992))) (minValue!1931 (v!2349 (underlying!215 thiss!992))) (select (arr!1760 (_keys!3633 (v!2349 (underlying!215 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2013 (v!2349 (underlying!215 thiss!992)))))))

(declare-fun b!56536 () Bool)

(declare-fun e!37228 () Bool)

(declare-fun tp_is_empty!2377 () Bool)

(assert (=> b!56536 (= e!37228 tp_is_empty!2377)))

(declare-fun b!56537 () Bool)

(declare-fun res!31777 () Bool)

(assert (=> b!56537 (=> res!31777 e!37232)))

(assert (=> b!56537 (= res!31777 (contains!680 lt!22285 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!2801 () Bool)

(declare-fun mapRes!2802 () Bool)

(assert (=> mapIsEmpty!2801 mapRes!2802))

(declare-fun res!31776 () Bool)

(assert (=> start!8390 (=> (not res!31776) (not e!37236))))

(declare-fun valid!241 (LongMap!408) Bool)

(assert (=> start!8390 (= res!31776 (valid!241 thiss!992))))

(assert (=> start!8390 e!37236))

(declare-fun e!37234 () Bool)

(assert (=> start!8390 e!37234))

(assert (=> start!8390 true))

(declare-fun e!37240 () Bool)

(assert (=> start!8390 e!37240))

(declare-fun b!56538 () Bool)

(declare-fun e!37238 () Bool)

(assert (=> b!56538 (= e!37238 tp_is_empty!2377)))

(declare-fun b!56539 () Bool)

(declare-fun res!31772 () Bool)

(assert (=> b!56539 (=> res!31772 e!37232)))

(declare-fun noDuplicate!49 (List!1441) Bool)

(assert (=> b!56539 (= res!31772 (not (noDuplicate!49 lt!22285)))))

(declare-fun mapNonEmpty!2801 () Bool)

(declare-fun mapRes!2801 () Bool)

(declare-fun tp!7866 () Bool)

(assert (=> mapNonEmpty!2801 (= mapRes!2801 (and tp!7866 e!37228))))

(declare-fun mapKey!2802 () (_ BitVec 32))

(declare-fun mapValue!2802 () ValueCell!845)

(declare-fun mapRest!2801 () (Array (_ BitVec 32) ValueCell!845))

(assert (=> mapNonEmpty!2801 (= (arr!1761 (_values!1996 newMap!16)) (store mapRest!2801 mapKey!2802 mapValue!2802))))

(declare-fun b!56540 () Bool)

(declare-fun res!31773 () Bool)

(assert (=> b!56540 (=> res!31773 e!37232)))

(assert (=> b!56540 (= res!31773 (not (arrayNoDuplicates!0 (_keys!3633 (v!2349 (underlying!215 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) lt!22285)))))

(declare-fun e!37226 () Bool)

(declare-fun array_inv!1039 (array!3676) Bool)

(declare-fun array_inv!1040 (array!3678) Bool)

(assert (=> b!56541 (= e!37240 (and tp!7864 tp_is_empty!2377 (array_inv!1039 (_keys!3633 newMap!16)) (array_inv!1040 (_values!1996 newMap!16)) e!37226))))

(declare-fun mapNonEmpty!2802 () Bool)

(declare-fun tp!7865 () Bool)

(assert (=> mapNonEmpty!2802 (= mapRes!2802 (and tp!7865 e!37238))))

(declare-fun mapRest!2802 () (Array (_ BitVec 32) ValueCell!845))

(declare-fun mapValue!2801 () ValueCell!845)

(declare-fun mapKey!2801 () (_ BitVec 32))

(assert (=> mapNonEmpty!2802 (= (arr!1761 (_values!1996 (v!2349 (underlying!215 thiss!992)))) (store mapRest!2802 mapKey!2801 mapValue!2801))))

(declare-fun b!56542 () Bool)

(declare-fun e!37235 () Bool)

(declare-fun e!37233 () Bool)

(assert (=> b!56542 (= e!37235 e!37233)))

(declare-fun b!56543 () Bool)

(declare-fun e!37231 () Bool)

(assert (=> b!56543 (= e!37226 (and e!37231 mapRes!2801))))

(declare-fun condMapEmpty!2802 () Bool)

(declare-fun mapDefault!2801 () ValueCell!845)

