; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11324 () Bool)

(assert start!11324)

(declare-fun b!93511 () Bool)

(declare-fun b_free!2377 () Bool)

(declare-fun b_next!2377 () Bool)

(assert (=> b!93511 (= b_free!2377 (not b_next!2377))))

(declare-fun tp!9396 () Bool)

(declare-fun b_and!5693 () Bool)

(assert (=> b!93511 (= tp!9396 b_and!5693)))

(declare-fun b!93509 () Bool)

(declare-fun b_free!2379 () Bool)

(declare-fun b_next!2379 () Bool)

(assert (=> b!93509 (= b_free!2379 (not b_next!2379))))

(declare-fun tp!9393 () Bool)

(declare-fun b_and!5695 () Bool)

(assert (=> b!93509 (= tp!9393 b_and!5695)))

(declare-fun b!93496 () Bool)

(declare-datatypes ((Unit!2808 0))(
  ( (Unit!2809) )
))
(declare-fun e!61039 () Unit!2808)

(declare-fun Unit!2810 () Unit!2808)

(assert (=> b!93496 (= e!61039 Unit!2810)))

(declare-fun b!93497 () Bool)

(declare-fun e!61038 () Bool)

(declare-fun e!61045 () Bool)

(assert (=> b!93497 (= e!61038 e!61045)))

(declare-fun b!93498 () Bool)

(declare-fun e!61037 () Bool)

(declare-fun e!61043 () Bool)

(assert (=> b!93498 (= e!61037 e!61043)))

(declare-fun res!47435 () Bool)

(assert (=> b!93498 (=> (not res!47435) (not e!61043))))

(declare-datatypes ((V!3121 0))(
  ( (V!3122 (val!1347 Int)) )
))
(declare-datatypes ((array!4182 0))(
  ( (array!4183 (arr!1988 (Array (_ BitVec 32) (_ BitVec 64))) (size!2236 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!959 0))(
  ( (ValueCellFull!959 (v!2752 V!3121)) (EmptyCell!959) )
))
(declare-datatypes ((array!4184 0))(
  ( (array!4185 (arr!1989 (Array (_ BitVec 32) ValueCell!959)) (size!2237 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!826 0))(
  ( (LongMapFixedSize!827 (defaultEntry!2430 Int) (mask!6502 (_ BitVec 32)) (extraKeys!2259 (_ BitVec 32)) (zeroValue!2317 V!3121) (minValue!2317 V!3121) (_size!462 (_ BitVec 32)) (_keys!4112 array!4182) (_values!2413 array!4184) (_vacant!462 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!630 0))(
  ( (Cell!631 (v!2753 LongMapFixedSize!826)) )
))
(declare-datatypes ((LongMap!630 0))(
  ( (LongMap!631 (underlying!326 Cell!630)) )
))
(declare-fun thiss!992 () LongMap!630)

(declare-datatypes ((tuple2!2320 0))(
  ( (tuple2!2321 (_1!1170 (_ BitVec 64)) (_2!1170 V!3121)) )
))
(declare-datatypes ((List!1596 0))(
  ( (Nil!1593) (Cons!1592 (h!2184 tuple2!2320) (t!5486 List!1596)) )
))
(declare-datatypes ((ListLongMap!1533 0))(
  ( (ListLongMap!1534 (toList!782 List!1596)) )
))
(declare-fun lt!46215 () ListLongMap!1533)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lt!46217 () ListLongMap!1533)

(assert (=> b!93498 (= res!47435 (and (= lt!46215 lt!46217) (not (= (select (arr!1988 (_keys!4112 (v!2753 (underlying!326 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1988 (_keys!4112 (v!2753 (underlying!326 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!826)

(declare-fun map!1239 (LongMapFixedSize!826) ListLongMap!1533)

(assert (=> b!93498 (= lt!46217 (map!1239 newMap!16))))

(declare-fun getCurrentListMap!464 (array!4182 array!4184 (_ BitVec 32) (_ BitVec 32) V!3121 V!3121 (_ BitVec 32) Int) ListLongMap!1533)

(assert (=> b!93498 (= lt!46215 (getCurrentListMap!464 (_keys!4112 (v!2753 (underlying!326 thiss!992))) (_values!2413 (v!2753 (underlying!326 thiss!992))) (mask!6502 (v!2753 (underlying!326 thiss!992))) (extraKeys!2259 (v!2753 (underlying!326 thiss!992))) (zeroValue!2317 (v!2753 (underlying!326 thiss!992))) (minValue!2317 (v!2753 (underlying!326 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2430 (v!2753 (underlying!326 thiss!992)))))))

(declare-fun b!93499 () Bool)

(declare-fun res!47434 () Bool)

(assert (=> b!93499 (=> (not res!47434) (not e!61037))))

(assert (=> b!93499 (= res!47434 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6502 newMap!16)) (_size!462 (v!2753 (underlying!326 thiss!992)))))))

(declare-fun b!93500 () Bool)

(declare-fun e!61046 () Bool)

(declare-fun tp_is_empty!2605 () Bool)

(assert (=> b!93500 (= e!61046 tp_is_empty!2605)))

(declare-fun mapIsEmpty!3647 () Bool)

(declare-fun mapRes!3648 () Bool)

(assert (=> mapIsEmpty!3647 mapRes!3648))

(declare-fun mapIsEmpty!3648 () Bool)

(declare-fun mapRes!3647 () Bool)

(assert (=> mapIsEmpty!3648 mapRes!3647))

(declare-fun b!93501 () Bool)

(declare-fun e!61041 () Bool)

(assert (=> b!93501 (= e!61043 e!61041)))

(declare-fun res!47438 () Bool)

(assert (=> b!93501 (=> (not res!47438) (not e!61041))))

(declare-datatypes ((tuple2!2322 0))(
  ( (tuple2!2323 (_1!1171 Bool) (_2!1171 LongMapFixedSize!826)) )
))
(declare-fun lt!46218 () tuple2!2322)

(assert (=> b!93501 (= res!47438 (and (_1!1171 lt!46218) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!46220 () Unit!2808)

(assert (=> b!93501 (= lt!46220 e!61039)))

(declare-fun c!15573 () Bool)

(declare-fun contains!793 (ListLongMap!1533 (_ BitVec 64)) Bool)

(assert (=> b!93501 (= c!15573 (contains!793 lt!46217 (select (arr!1988 (_keys!4112 (v!2753 (underlying!326 thiss!992)))) from!355)))))

(declare-fun update!139 (LongMapFixedSize!826 (_ BitVec 64) V!3121) tuple2!2322)

(declare-fun get!1273 (ValueCell!959 V!3121) V!3121)

(declare-fun dynLambda!371 (Int (_ BitVec 64)) V!3121)

(assert (=> b!93501 (= lt!46218 (update!139 newMap!16 (select (arr!1988 (_keys!4112 (v!2753 (underlying!326 thiss!992)))) from!355) (get!1273 (select (arr!1989 (_values!2413 (v!2753 (underlying!326 thiss!992)))) from!355) (dynLambda!371 (defaultEntry!2430 (v!2753 (underlying!326 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!47437 () Bool)

(assert (=> start!11324 (=> (not res!47437) (not e!61037))))

(declare-fun valid!368 (LongMap!630) Bool)

(assert (=> start!11324 (= res!47437 (valid!368 thiss!992))))

(assert (=> start!11324 e!61037))

(declare-fun e!61047 () Bool)

(assert (=> start!11324 e!61047))

(assert (=> start!11324 true))

(declare-fun e!61033 () Bool)

(assert (=> start!11324 e!61033))

(declare-fun mapNonEmpty!3647 () Bool)

(declare-fun tp!9394 () Bool)

(assert (=> mapNonEmpty!3647 (= mapRes!3648 (and tp!9394 e!61046))))

(declare-fun mapRest!3647 () (Array (_ BitVec 32) ValueCell!959))

(declare-fun mapValue!3647 () ValueCell!959)

(declare-fun mapKey!3648 () (_ BitVec 32))

(assert (=> mapNonEmpty!3647 (= (arr!1989 (_values!2413 newMap!16)) (store mapRest!3647 mapKey!3648 mapValue!3647))))

(declare-fun b!93502 () Bool)

(declare-fun e!61044 () Bool)

(assert (=> b!93502 (= e!61044 tp_is_empty!2605)))

(declare-fun b!93503 () Bool)

(declare-fun res!47436 () Bool)

(assert (=> b!93503 (=> (not res!47436) (not e!61037))))

(declare-fun valid!369 (LongMapFixedSize!826) Bool)

(assert (=> b!93503 (= res!47436 (valid!369 newMap!16))))

(declare-fun b!93504 () Bool)

(assert (=> b!93504 (= e!61047 e!61038)))

(declare-fun b!93505 () Bool)

(declare-fun e!61040 () Bool)

(assert (=> b!93505 (= e!61040 tp_is_empty!2605)))

(declare-fun b!93506 () Bool)

(declare-fun res!47439 () Bool)

(assert (=> b!93506 (=> (not res!47439) (not e!61037))))

(assert (=> b!93506 (= res!47439 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2236 (_keys!4112 (v!2753 (underlying!326 thiss!992)))))))))

(declare-fun mapNonEmpty!3648 () Bool)

(declare-fun tp!9395 () Bool)

(assert (=> mapNonEmpty!3648 (= mapRes!3647 (and tp!9395 e!61040))))

(declare-fun mapKey!3647 () (_ BitVec 32))

(declare-fun mapRest!3648 () (Array (_ BitVec 32) ValueCell!959))

(declare-fun mapValue!3648 () ValueCell!959)

(assert (=> mapNonEmpty!3648 (= (arr!1989 (_values!2413 (v!2753 (underlying!326 thiss!992)))) (store mapRest!3648 mapKey!3647 mapValue!3648))))

(declare-fun b!93507 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!93507 (= e!61041 (not (validMask!0 (mask!6502 (v!2753 (underlying!326 thiss!992))))))))

(declare-fun b!93508 () Bool)

(declare-fun e!61035 () Bool)

(assert (=> b!93508 (= e!61035 tp_is_empty!2605)))

(declare-fun e!61034 () Bool)

(declare-fun array_inv!1193 (array!4182) Bool)

(declare-fun array_inv!1194 (array!4184) Bool)

(assert (=> b!93509 (= e!61033 (and tp!9393 tp_is_empty!2605 (array_inv!1193 (_keys!4112 newMap!16)) (array_inv!1194 (_values!2413 newMap!16)) e!61034))))

(declare-fun b!93510 () Bool)

(assert (=> b!93510 (= e!61034 (and e!61044 mapRes!3648))))

(declare-fun condMapEmpty!3647 () Bool)

(declare-fun mapDefault!3647 () ValueCell!959)

