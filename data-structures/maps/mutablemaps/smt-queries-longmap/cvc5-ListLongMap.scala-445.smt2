; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8294 () Bool)

(assert start!8294)

(declare-fun b!53597 () Bool)

(declare-fun b_free!1729 () Bool)

(declare-fun b_next!1729 () Bool)

(assert (=> b!53597 (= b_free!1729 (not b_next!1729))))

(declare-fun tp!7288 () Bool)

(declare-fun b_and!3009 () Bool)

(assert (=> b!53597 (= tp!7288 b_and!3009)))

(declare-fun b!53599 () Bool)

(declare-fun b_free!1731 () Bool)

(declare-fun b_next!1731 () Bool)

(assert (=> b!53599 (= b_free!1731 (not b_next!1731))))

(declare-fun tp!7290 () Bool)

(declare-fun b_and!3011 () Bool)

(assert (=> b!53599 (= tp!7290 b_and!3011)))

(declare-fun b!53593 () Bool)

(declare-fun e!34969 () Bool)

(declare-fun tp_is_empty!2281 () Bool)

(assert (=> b!53593 (= e!34969 tp_is_empty!2281)))

(declare-fun b!53594 () Bool)

(declare-fun e!34977 () Bool)

(assert (=> b!53594 (= e!34977 tp_is_empty!2281)))

(declare-fun b!53595 () Bool)

(declare-fun e!34974 () Bool)

(assert (=> b!53595 (= e!34974 tp_is_empty!2281)))

(declare-fun b!53596 () Bool)

(declare-fun e!34975 () Bool)

(declare-fun e!34976 () Bool)

(assert (=> b!53596 (= e!34975 e!34976)))

(declare-datatypes ((V!2689 0))(
  ( (V!2690 (val!1185 Int)) )
))
(declare-datatypes ((array!3484 0))(
  ( (array!3485 (arr!1664 (Array (_ BitVec 32) (_ BitVec 64))) (size!1893 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!797 0))(
  ( (ValueCellFull!797 (v!2254 V!2689)) (EmptyCell!797) )
))
(declare-datatypes ((array!3486 0))(
  ( (array!3487 (arr!1665 (Array (_ BitVec 32) ValueCell!797)) (size!1894 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!502 0))(
  ( (LongMapFixedSize!503 (defaultEntry!1965 Int) (mask!5802 (_ BitVec 32)) (extraKeys!1856 (_ BitVec 32)) (zeroValue!1883 V!2689) (minValue!1883 V!2689) (_size!300 (_ BitVec 32)) (_keys!3585 array!3484) (_values!1948 array!3486) (_vacant!300 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!316 0))(
  ( (Cell!317 (v!2255 LongMapFixedSize!502)) )
))
(declare-datatypes ((LongMap!316 0))(
  ( (LongMap!317 (underlying!169 Cell!316)) )
))
(declare-fun thiss!992 () LongMap!316)

(declare-fun e!34972 () Bool)

(declare-fun array_inv!975 (array!3484) Bool)

(declare-fun array_inv!976 (array!3486) Bool)

(assert (=> b!53597 (= e!34976 (and tp!7288 tp_is_empty!2281 (array_inv!975 (_keys!3585 (v!2255 (underlying!169 thiss!992)))) (array_inv!976 (_values!1948 (v!2255 (underlying!169 thiss!992)))) e!34972))))

(declare-fun b!53598 () Bool)

(declare-fun e!34971 () Bool)

(declare-fun e!34967 () Bool)

(assert (=> b!53598 (= e!34971 e!34967)))

(declare-fun res!30369 () Bool)

(assert (=> b!53598 (=> (not res!30369) (not e!34967))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!1894 0))(
  ( (tuple2!1895 (_1!957 (_ BitVec 64)) (_2!957 V!2689)) )
))
(declare-datatypes ((List!1379 0))(
  ( (Nil!1376) (Cons!1375 (h!1955 tuple2!1894) (t!4485 List!1379)) )
))
(declare-datatypes ((ListLongMap!1297 0))(
  ( (ListLongMap!1298 (toList!664 List!1379)) )
))
(declare-fun lt!21496 () ListLongMap!1297)

(declare-fun contains!635 (ListLongMap!1297 (_ BitVec 64)) Bool)

(assert (=> b!53598 (= res!30369 (contains!635 lt!21496 (select (arr!1664 (_keys!3585 (v!2255 (underlying!169 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1896 0))(
  ( (tuple2!1897 (_1!958 Bool) (_2!958 LongMapFixedSize!502)) )
))
(declare-fun lt!21498 () tuple2!1896)

(declare-fun newMap!16 () LongMapFixedSize!502)

(declare-fun update!48 (LongMapFixedSize!502 (_ BitVec 64) V!2689) tuple2!1896)

(declare-fun get!1001 (ValueCell!797 V!2689) V!2689)

(declare-fun dynLambda!276 (Int (_ BitVec 64)) V!2689)

(assert (=> b!53598 (= lt!21498 (update!48 newMap!16 (select (arr!1664 (_keys!3585 (v!2255 (underlying!169 thiss!992)))) from!355) (get!1001 (select (arr!1665 (_values!1948 (v!2255 (underlying!169 thiss!992)))) from!355) (dynLambda!276 (defaultEntry!1965 (v!2255 (underlying!169 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!34973 () Bool)

(declare-fun e!34970 () Bool)

(assert (=> b!53599 (= e!34970 (and tp!7290 tp_is_empty!2281 (array_inv!975 (_keys!3585 newMap!16)) (array_inv!976 (_values!1948 newMap!16)) e!34973))))

(declare-fun b!53600 () Bool)

(declare-fun e!34978 () Bool)

(assert (=> b!53600 (= e!34978 e!34971)))

(declare-fun res!30377 () Bool)

(assert (=> b!53600 (=> (not res!30377) (not e!34971))))

(declare-fun lt!21497 () ListLongMap!1297)

(assert (=> b!53600 (= res!30377 (and (= lt!21497 lt!21496) (not (= (select (arr!1664 (_keys!3585 (v!2255 (underlying!169 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1664 (_keys!3585 (v!2255 (underlying!169 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1039 (LongMapFixedSize!502) ListLongMap!1297)

(assert (=> b!53600 (= lt!21496 (map!1039 newMap!16))))

(declare-fun getCurrentListMap!371 (array!3484 array!3486 (_ BitVec 32) (_ BitVec 32) V!2689 V!2689 (_ BitVec 32) Int) ListLongMap!1297)

(assert (=> b!53600 (= lt!21497 (getCurrentListMap!371 (_keys!3585 (v!2255 (underlying!169 thiss!992))) (_values!1948 (v!2255 (underlying!169 thiss!992))) (mask!5802 (v!2255 (underlying!169 thiss!992))) (extraKeys!1856 (v!2255 (underlying!169 thiss!992))) (zeroValue!1883 (v!2255 (underlying!169 thiss!992))) (minValue!1883 (v!2255 (underlying!169 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1965 (v!2255 (underlying!169 thiss!992)))))))

(declare-fun b!53601 () Bool)

(declare-fun res!30376 () Bool)

(assert (=> b!53601 (=> (not res!30376) (not e!34978))))

(declare-fun valid!187 (LongMapFixedSize!502) Bool)

(assert (=> b!53601 (= res!30376 (valid!187 newMap!16))))

(declare-fun mapNonEmpty!2513 () Bool)

(declare-fun mapRes!2514 () Bool)

(declare-fun tp!7289 () Bool)

(assert (=> mapNonEmpty!2513 (= mapRes!2514 (and tp!7289 e!34969))))

(declare-fun mapKey!2513 () (_ BitVec 32))

(declare-fun mapValue!2514 () ValueCell!797)

(declare-fun mapRest!2514 () (Array (_ BitVec 32) ValueCell!797))

(assert (=> mapNonEmpty!2513 (= (arr!1665 (_values!1948 (v!2255 (underlying!169 thiss!992)))) (store mapRest!2514 mapKey!2513 mapValue!2514))))

(declare-fun b!53602 () Bool)

(assert (=> b!53602 (= e!34967 false)))

(declare-fun lt!21499 () Bool)

(assert (=> b!53602 (= lt!21499 (contains!635 lt!21497 (select (arr!1664 (_keys!3585 (v!2255 (underlying!169 thiss!992)))) from!355)))))

(declare-fun b!53603 () Bool)

(declare-fun e!34979 () Bool)

(assert (=> b!53603 (= e!34979 e!34975)))

(declare-fun res!30378 () Bool)

(assert (=> start!8294 (=> (not res!30378) (not e!34978))))

(declare-fun valid!188 (LongMap!316) Bool)

(assert (=> start!8294 (= res!30378 (valid!188 thiss!992))))

(assert (=> start!8294 e!34978))

(assert (=> start!8294 e!34979))

(assert (=> start!8294 true))

(assert (=> start!8294 e!34970))

(declare-fun b!53604 () Bool)

(declare-fun res!30373 () Bool)

(assert (=> b!53604 (=> (not res!30373) (not e!34967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!53604 (= res!30373 (validMask!0 (mask!5802 (v!2255 (underlying!169 thiss!992)))))))

(declare-fun b!53605 () Bool)

(assert (=> b!53605 (= e!34972 (and e!34977 mapRes!2514))))

(declare-fun condMapEmpty!2514 () Bool)

(declare-fun mapDefault!2514 () ValueCell!797)

