; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11166 () Bool)

(assert start!11166)

(declare-fun b!91424 () Bool)

(declare-fun b_free!2333 () Bool)

(declare-fun b_next!2333 () Bool)

(assert (=> b!91424 (= b_free!2333 (not b_next!2333))))

(declare-fun tp!9251 () Bool)

(declare-fun b_and!5533 () Bool)

(assert (=> b!91424 (= tp!9251 b_and!5533)))

(declare-fun b!91420 () Bool)

(declare-fun b_free!2335 () Bool)

(declare-fun b_next!2335 () Bool)

(assert (=> b!91420 (= b_free!2335 (not b_next!2335))))

(declare-fun tp!9254 () Bool)

(declare-fun b_and!5535 () Bool)

(assert (=> b!91420 (= tp!9254 b_and!5535)))

(declare-fun mapNonEmpty!3571 () Bool)

(declare-fun mapRes!3571 () Bool)

(declare-fun tp!9252 () Bool)

(declare-fun e!59655 () Bool)

(assert (=> mapNonEmpty!3571 (= mapRes!3571 (and tp!9252 e!59655))))

(declare-datatypes ((V!3091 0))(
  ( (V!3092 (val!1336 Int)) )
))
(declare-datatypes ((array!4134 0))(
  ( (array!4135 (arr!1966 (Array (_ BitVec 32) (_ BitVec 64))) (size!2213 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!948 0))(
  ( (ValueCellFull!948 (v!2721 V!3091)) (EmptyCell!948) )
))
(declare-datatypes ((array!4136 0))(
  ( (array!4137 (arr!1967 (Array (_ BitVec 32) ValueCell!948)) (size!2214 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!804 0))(
  ( (LongMapFixedSize!805 (defaultEntry!2406 Int) (mask!6466 (_ BitVec 32)) (extraKeys!2237 (_ BitVec 32)) (zeroValue!2294 V!3091) (minValue!2294 V!3091) (_size!451 (_ BitVec 32)) (_keys!4086 array!4134) (_values!2389 array!4136) (_vacant!451 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!608 0))(
  ( (Cell!609 (v!2722 LongMapFixedSize!804)) )
))
(declare-datatypes ((LongMap!608 0))(
  ( (LongMap!609 (underlying!315 Cell!608)) )
))
(declare-fun thiss!992 () LongMap!608)

(declare-fun mapKey!3571 () (_ BitVec 32))

(declare-fun mapValue!3571 () ValueCell!948)

(declare-fun mapRest!3572 () (Array (_ BitVec 32) ValueCell!948))

(assert (=> mapNonEmpty!3571 (= (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (store mapRest!3572 mapKey!3571 mapValue!3571))))

(declare-fun newMap!16 () LongMapFixedSize!804)

(declare-fun e!59645 () Bool)

(declare-fun e!59648 () Bool)

(declare-fun tp_is_empty!2583 () Bool)

(declare-fun array_inv!1179 (array!4134) Bool)

(declare-fun array_inv!1180 (array!4136) Bool)

(assert (=> b!91420 (= e!59648 (and tp!9254 tp_is_empty!2583 (array_inv!1179 (_keys!4086 newMap!16)) (array_inv!1180 (_values!2389 newMap!16)) e!59645))))

(declare-fun b!91421 () Bool)

(declare-fun res!46544 () Bool)

(declare-fun e!59656 () Bool)

(assert (=> b!91421 (=> (not res!46544) (not e!59656))))

(declare-fun valid!355 (LongMapFixedSize!804) Bool)

(assert (=> b!91421 (= res!46544 (valid!355 newMap!16))))

(declare-fun b!91422 () Bool)

(declare-fun e!59658 () Bool)

(assert (=> b!91422 (= e!59656 e!59658)))

(declare-fun res!46546 () Bool)

(assert (=> b!91422 (=> (not res!46546) (not e!59658))))

(declare-datatypes ((tuple2!2290 0))(
  ( (tuple2!2291 (_1!1155 (_ BitVec 64)) (_2!1155 V!3091)) )
))
(declare-datatypes ((List!1581 0))(
  ( (Nil!1578) (Cons!1577 (h!2169 tuple2!2290) (t!5419 List!1581)) )
))
(declare-datatypes ((ListLongMap!1517 0))(
  ( (ListLongMap!1518 (toList!774 List!1581)) )
))
(declare-fun lt!44513 () ListLongMap!1517)

(declare-fun lt!44515 () ListLongMap!1517)

(assert (=> b!91422 (= res!46546 (= lt!44513 lt!44515))))

(declare-fun map!1224 (LongMapFixedSize!804) ListLongMap!1517)

(assert (=> b!91422 (= lt!44515 (map!1224 newMap!16))))

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!456 (array!4134 array!4136 (_ BitVec 32) (_ BitVec 32) V!3091 V!3091 (_ BitVec 32) Int) ListLongMap!1517)

(assert (=> b!91422 (= lt!44513 (getCurrentListMap!456 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun b!91423 () Bool)

(assert (=> b!91423 (= e!59655 tp_is_empty!2583)))

(declare-fun e!59650 () Bool)

(declare-fun e!59653 () Bool)

(assert (=> b!91424 (= e!59653 (and tp!9251 tp_is_empty!2583 (array_inv!1179 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (array_inv!1180 (_values!2389 (v!2722 (underlying!315 thiss!992)))) e!59650))))

(declare-fun b!91425 () Bool)

(declare-datatypes ((Unit!2738 0))(
  ( (Unit!2739) )
))
(declare-fun e!59643 () Unit!2738)

(declare-fun Unit!2740 () Unit!2738)

(assert (=> b!91425 (= e!59643 Unit!2740)))

(declare-fun mapNonEmpty!3572 () Bool)

(declare-fun mapRes!3572 () Bool)

(declare-fun tp!9253 () Bool)

(declare-fun e!59654 () Bool)

(assert (=> mapNonEmpty!3572 (= mapRes!3572 (and tp!9253 e!59654))))

(declare-fun mapValue!3572 () ValueCell!948)

(declare-fun mapKey!3572 () (_ BitVec 32))

(declare-fun mapRest!3571 () (Array (_ BitVec 32) ValueCell!948))

(assert (=> mapNonEmpty!3572 (= (arr!1967 (_values!2389 newMap!16)) (store mapRest!3571 mapKey!3572 mapValue!3572))))

(declare-fun b!91426 () Bool)

(declare-fun e!59652 () Bool)

(assert (=> b!91426 (= e!59658 e!59652)))

(declare-fun res!46542 () Bool)

(assert (=> b!91426 (=> (not res!46542) (not e!59652))))

(assert (=> b!91426 (= res!46542 (and (not (= (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!44521 () V!3091)

(declare-fun get!1254 (ValueCell!948 V!3091) V!3091)

(declare-fun dynLambda!365 (Int (_ BitVec 64)) V!3091)

(assert (=> b!91426 (= lt!44521 (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) from!355) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!91427 () Bool)

(declare-fun e!59646 () Bool)

(assert (=> b!91427 (= e!59646 tp_is_empty!2583)))

(declare-fun b!91428 () Bool)

(declare-fun e!59644 () Bool)

(declare-fun e!59647 () Bool)

(assert (=> b!91428 (= e!59644 e!59647)))

(declare-fun b!91429 () Bool)

(declare-fun res!46545 () Bool)

(assert (=> b!91429 (=> (not res!46545) (not e!59656))))

(assert (=> b!91429 (= res!46545 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6466 newMap!16)) (_size!451 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun b!91430 () Bool)

(assert (=> b!91430 (= e!59647 e!59653)))

(declare-fun b!91431 () Bool)

(declare-fun e!59642 () Bool)

(declare-datatypes ((tuple2!2292 0))(
  ( (tuple2!2293 (_1!1156 Bool) (_2!1156 LongMapFixedSize!804)) )
))
(declare-fun lt!44506 () tuple2!2292)

(assert (=> b!91431 (= e!59642 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6466 (_2!1156 lt!44506))) (_size!451 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun b!91432 () Bool)

(assert (=> b!91432 (= e!59650 (and e!59646 mapRes!3571))))

(declare-fun condMapEmpty!3572 () Bool)

(declare-fun mapDefault!3572 () ValueCell!948)

(assert (=> b!91432 (= condMapEmpty!3572 (= (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!948)) mapDefault!3572)))))

(declare-fun b!91433 () Bool)

(assert (=> b!91433 (= e!59654 tp_is_empty!2583)))

(declare-fun b!91434 () Bool)

(declare-fun Unit!2741 () Unit!2738)

(assert (=> b!91434 (= e!59643 Unit!2741)))

(declare-fun lt!44512 () Unit!2738)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!85 (array!4134 array!4136 (_ BitVec 32) (_ BitVec 32) V!3091 V!3091 (_ BitVec 64) (_ BitVec 32) Int) Unit!2738)

(assert (=> b!91434 (= lt!44512 (lemmaListMapContainsThenArrayContainsFrom!85 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4134 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!91434 (arrayContainsKey!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!44518 () Unit!2738)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4134 (_ BitVec 32) (_ BitVec 32)) Unit!2738)

(assert (=> b!91434 (= lt!44518 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1582 0))(
  ( (Nil!1579) (Cons!1578 (h!2170 (_ BitVec 64)) (t!5420 List!1582)) )
))
(declare-fun arrayNoDuplicates!0 (array!4134 (_ BitVec 32) List!1582) Bool)

(assert (=> b!91434 (arrayNoDuplicates!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) from!355 Nil!1579)))

(declare-fun lt!44508 () Unit!2738)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4134 (_ BitVec 32) (_ BitVec 64) List!1582) Unit!2738)

(assert (=> b!91434 (= lt!44508 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (Cons!1578 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) Nil!1579)))))

(assert (=> b!91434 false))

(declare-fun b!91435 () Bool)

(declare-fun res!46547 () Bool)

(assert (=> b!91435 (=> res!46547 e!59642)))

(assert (=> b!91435 (= res!46547 (bvsge (bvsub from!355 #b00000000000000000000000000000001) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun b!91436 () Bool)

(declare-fun e!59659 () Bool)

(assert (=> b!91436 (= e!59659 tp_is_empty!2583)))

(declare-fun res!46539 () Bool)

(assert (=> start!11166 (=> (not res!46539) (not e!59656))))

(declare-fun valid!356 (LongMap!608) Bool)

(assert (=> start!11166 (= res!46539 (valid!356 thiss!992))))

(assert (=> start!11166 e!59656))

(assert (=> start!11166 e!59644))

(assert (=> start!11166 true))

(assert (=> start!11166 e!59648))

(declare-fun b!91437 () Bool)

(declare-fun res!46540 () Bool)

(assert (=> b!91437 (=> (not res!46540) (not e!59656))))

(assert (=> b!91437 (= res!46540 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992)))))))))

(declare-fun b!91438 () Bool)

(declare-fun e!59657 () Bool)

(assert (=> b!91438 (= e!59657 (not e!59642))))

(declare-fun res!46548 () Bool)

(assert (=> b!91438 (=> res!46548 e!59642)))

(assert (=> b!91438 (= res!46548 (not (= (getCurrentListMap!456 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) from!355 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))) (map!1224 (_2!1156 lt!44506)))))))

(declare-fun lt!44504 () ListLongMap!1517)

(declare-fun lt!44510 () ListLongMap!1517)

(declare-fun lt!44511 () tuple2!2290)

(declare-fun lt!44507 () tuple2!2290)

(declare-fun +!129 (ListLongMap!1517 tuple2!2290) ListLongMap!1517)

(assert (=> b!91438 (= (+!129 lt!44510 lt!44511) (+!129 (+!129 lt!44504 lt!44511) lt!44507))))

(assert (=> b!91438 (= lt!44511 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun lt!44505 () Unit!2738)

(declare-fun addCommutativeForDiffKeys!48 (ListLongMap!1517 (_ BitVec 64) V!3091 (_ BitVec 64) V!3091) Unit!2738)

(assert (=> b!91438 (= lt!44505 (addCommutativeForDiffKeys!48 lt!44504 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun lt!44517 () ListLongMap!1517)

(assert (=> b!91438 (= lt!44517 lt!44510)))

(assert (=> b!91438 (= lt!44510 (+!129 lt!44504 lt!44507))))

(declare-fun lt!44516 () ListLongMap!1517)

(declare-fun lt!44520 () tuple2!2290)

(assert (=> b!91438 (= lt!44517 (+!129 lt!44516 lt!44520))))

(declare-fun lt!44519 () ListLongMap!1517)

(assert (=> b!91438 (= lt!44504 (+!129 lt!44519 lt!44520))))

(assert (=> b!91438 (= lt!44520 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))

(assert (=> b!91438 (= lt!44516 (+!129 lt!44519 lt!44507))))

(assert (=> b!91438 (= lt!44507 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))

(declare-fun lt!44514 () Unit!2738)

(assert (=> b!91438 (= lt!44514 (addCommutativeForDiffKeys!48 lt!44519 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!93 (array!4134 array!4136 (_ BitVec 32) (_ BitVec 32) V!3091 V!3091 (_ BitVec 32) Int) ListLongMap!1517)

(assert (=> b!91438 (= lt!44519 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun b!91439 () Bool)

(declare-fun res!46541 () Bool)

(assert (=> b!91439 (=> res!46541 e!59642)))

(assert (=> b!91439 (= res!46541 (not (valid!355 (_2!1156 lt!44506))))))

(declare-fun b!91440 () Bool)

(assert (=> b!91440 (= e!59652 e!59657)))

(declare-fun res!46543 () Bool)

(assert (=> b!91440 (=> (not res!46543) (not e!59657))))

(assert (=> b!91440 (= res!46543 (and (_1!1156 lt!44506) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!44509 () Unit!2738)

(assert (=> b!91440 (= lt!44509 e!59643)))

(declare-fun c!15172 () Bool)

(declare-fun contains!784 (ListLongMap!1517 (_ BitVec 64)) Bool)

(assert (=> b!91440 (= c!15172 (contains!784 lt!44515 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun update!134 (LongMapFixedSize!804 (_ BitVec 64) V!3091) tuple2!2292)

(assert (=> b!91440 (= lt!44506 (update!134 newMap!16 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))

(declare-fun mapIsEmpty!3571 () Bool)

(assert (=> mapIsEmpty!3571 mapRes!3572))

(declare-fun b!91441 () Bool)

(assert (=> b!91441 (= e!59645 (and e!59659 mapRes!3572))))

(declare-fun condMapEmpty!3571 () Bool)

(declare-fun mapDefault!3571 () ValueCell!948)

(assert (=> b!91441 (= condMapEmpty!3571 (= (arr!1967 (_values!2389 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!948)) mapDefault!3571)))))

(declare-fun mapIsEmpty!3572 () Bool)

(assert (=> mapIsEmpty!3572 mapRes!3571))

(assert (= (and start!11166 res!46539) b!91437))

(assert (= (and b!91437 res!46540) b!91421))

(assert (= (and b!91421 res!46544) b!91429))

(assert (= (and b!91429 res!46545) b!91422))

(assert (= (and b!91422 res!46546) b!91426))

(assert (= (and b!91426 res!46542) b!91440))

(assert (= (and b!91440 c!15172) b!91434))

(assert (= (and b!91440 (not c!15172)) b!91425))

(assert (= (and b!91440 res!46543) b!91438))

(assert (= (and b!91438 (not res!46548)) b!91435))

(assert (= (and b!91435 (not res!46547)) b!91439))

(assert (= (and b!91439 (not res!46541)) b!91431))

(assert (= (and b!91432 condMapEmpty!3572) mapIsEmpty!3572))

(assert (= (and b!91432 (not condMapEmpty!3572)) mapNonEmpty!3571))

(get-info :version)

(assert (= (and mapNonEmpty!3571 ((_ is ValueCellFull!948) mapValue!3571)) b!91423))

(assert (= (and b!91432 ((_ is ValueCellFull!948) mapDefault!3572)) b!91427))

(assert (= b!91424 b!91432))

(assert (= b!91430 b!91424))

(assert (= b!91428 b!91430))

(assert (= start!11166 b!91428))

(assert (= (and b!91441 condMapEmpty!3571) mapIsEmpty!3571))

(assert (= (and b!91441 (not condMapEmpty!3571)) mapNonEmpty!3572))

(assert (= (and mapNonEmpty!3572 ((_ is ValueCellFull!948) mapValue!3572)) b!91433))

(assert (= (and b!91441 ((_ is ValueCellFull!948) mapDefault!3571)) b!91436))

(assert (= b!91420 b!91441))

(assert (= start!11166 b!91420))

(declare-fun b_lambda!4035 () Bool)

(assert (=> (not b_lambda!4035) (not b!91426)))

(declare-fun t!5416 () Bool)

(declare-fun tb!1805 () Bool)

(assert (=> (and b!91424 (= (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))) t!5416) tb!1805))

(declare-fun result!3087 () Bool)

(assert (=> tb!1805 (= result!3087 tp_is_empty!2583)))

(assert (=> b!91426 t!5416))

(declare-fun b_and!5537 () Bool)

(assert (= b_and!5533 (and (=> t!5416 result!3087) b_and!5537)))

(declare-fun t!5418 () Bool)

(declare-fun tb!1807 () Bool)

(assert (=> (and b!91420 (= (defaultEntry!2406 newMap!16) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))) t!5418) tb!1807))

(declare-fun result!3091 () Bool)

(assert (= result!3091 result!3087))

(assert (=> b!91426 t!5418))

(declare-fun b_and!5539 () Bool)

(assert (= b_and!5535 (and (=> t!5418 result!3091) b_and!5539)))

(declare-fun m!97909 () Bool)

(assert (=> b!91440 m!97909))

(assert (=> b!91440 m!97909))

(declare-fun m!97911 () Bool)

(assert (=> b!91440 m!97911))

(assert (=> b!91440 m!97909))

(declare-fun m!97913 () Bool)

(assert (=> b!91440 m!97913))

(assert (=> b!91426 m!97909))

(declare-fun m!97915 () Bool)

(assert (=> b!91426 m!97915))

(declare-fun m!97917 () Bool)

(assert (=> b!91426 m!97917))

(assert (=> b!91426 m!97915))

(assert (=> b!91426 m!97917))

(declare-fun m!97919 () Bool)

(assert (=> b!91426 m!97919))

(declare-fun m!97921 () Bool)

(assert (=> b!91434 m!97921))

(declare-fun m!97923 () Bool)

(assert (=> b!91434 m!97923))

(assert (=> b!91434 m!97909))

(declare-fun m!97925 () Bool)

(assert (=> b!91434 m!97925))

(assert (=> b!91434 m!97909))

(assert (=> b!91434 m!97909))

(declare-fun m!97927 () Bool)

(assert (=> b!91434 m!97927))

(assert (=> b!91434 m!97909))

(declare-fun m!97929 () Bool)

(assert (=> b!91434 m!97929))

(declare-fun m!97931 () Bool)

(assert (=> b!91424 m!97931))

(declare-fun m!97933 () Bool)

(assert (=> b!91424 m!97933))

(declare-fun m!97935 () Bool)

(assert (=> mapNonEmpty!3571 m!97935))

(declare-fun m!97937 () Bool)

(assert (=> start!11166 m!97937))

(declare-fun m!97939 () Bool)

(assert (=> b!91420 m!97939))

(declare-fun m!97941 () Bool)

(assert (=> b!91420 m!97941))

(declare-fun m!97943 () Bool)

(assert (=> b!91438 m!97943))

(declare-fun m!97945 () Bool)

(assert (=> b!91438 m!97945))

(declare-fun m!97947 () Bool)

(assert (=> b!91438 m!97947))

(declare-fun m!97949 () Bool)

(assert (=> b!91438 m!97949))

(declare-fun m!97951 () Bool)

(assert (=> b!91438 m!97951))

(declare-fun m!97953 () Bool)

(assert (=> b!91438 m!97953))

(declare-fun m!97955 () Bool)

(assert (=> b!91438 m!97955))

(declare-fun m!97957 () Bool)

(assert (=> b!91438 m!97957))

(declare-fun m!97959 () Bool)

(assert (=> b!91438 m!97959))

(assert (=> b!91438 m!97909))

(declare-fun m!97961 () Bool)

(assert (=> b!91438 m!97961))

(assert (=> b!91438 m!97951))

(declare-fun m!97963 () Bool)

(assert (=> b!91438 m!97963))

(assert (=> b!91438 m!97909))

(assert (=> b!91438 m!97909))

(declare-fun m!97965 () Bool)

(assert (=> b!91438 m!97965))

(declare-fun m!97967 () Bool)

(assert (=> mapNonEmpty!3572 m!97967))

(declare-fun m!97969 () Bool)

(assert (=> b!91421 m!97969))

(declare-fun m!97971 () Bool)

(assert (=> b!91439 m!97971))

(declare-fun m!97973 () Bool)

(assert (=> b!91422 m!97973))

(declare-fun m!97975 () Bool)

(assert (=> b!91422 m!97975))

(check-sat (not b!91438) (not b_next!2333) (not b!91440) (not mapNonEmpty!3571) tp_is_empty!2583 (not b!91426) (not mapNonEmpty!3572) (not b_next!2335) b_and!5537 (not b!91421) (not b!91422) (not b_lambda!4035) (not b!91434) (not b!91424) (not b!91420) (not b!91439) (not start!11166) b_and!5539)
(check-sat b_and!5537 b_and!5539 (not b_next!2333) (not b_next!2335))
(get-model)

(declare-fun b_lambda!4039 () Bool)

(assert (= b_lambda!4035 (or (and b!91424 b_free!2333) (and b!91420 b_free!2335 (= (defaultEntry!2406 newMap!16) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))))) b_lambda!4039)))

(check-sat (not b!91438) (not b_next!2333) (not b!91440) tp_is_empty!2583 (not b!91426) (not mapNonEmpty!3572) (not b_next!2335) b_and!5537 (not b!91421) (not b!91422) (not b!91434) (not b!91424) (not mapNonEmpty!3571) (not b_lambda!4039) (not b!91420) (not b!91439) (not start!11166) b_and!5539)
(check-sat b_and!5537 b_and!5539 (not b_next!2333) (not b_next!2335))
(get-model)

(declare-fun d!24049 () Bool)

(declare-fun res!46585 () Bool)

(declare-fun e!59716 () Bool)

(assert (=> d!24049 (=> (not res!46585) (not e!59716))))

(declare-fun simpleValid!62 (LongMapFixedSize!804) Bool)

(assert (=> d!24049 (= res!46585 (simpleValid!62 newMap!16))))

(assert (=> d!24049 (= (valid!355 newMap!16) e!59716)))

(declare-fun b!91518 () Bool)

(declare-fun res!46586 () Bool)

(assert (=> b!91518 (=> (not res!46586) (not e!59716))))

(declare-fun arrayCountValidKeys!0 (array!4134 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!91518 (= res!46586 (= (arrayCountValidKeys!0 (_keys!4086 newMap!16) #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))) (_size!451 newMap!16)))))

(declare-fun b!91519 () Bool)

(declare-fun res!46587 () Bool)

(assert (=> b!91519 (=> (not res!46587) (not e!59716))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4134 (_ BitVec 32)) Bool)

(assert (=> b!91519 (= res!46587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4086 newMap!16) (mask!6466 newMap!16)))))

(declare-fun b!91520 () Bool)

(assert (=> b!91520 (= e!59716 (arrayNoDuplicates!0 (_keys!4086 newMap!16) #b00000000000000000000000000000000 Nil!1579))))

(assert (= (and d!24049 res!46585) b!91518))

(assert (= (and b!91518 res!46586) b!91519))

(assert (= (and b!91519 res!46587) b!91520))

(declare-fun m!98045 () Bool)

(assert (=> d!24049 m!98045))

(declare-fun m!98047 () Bool)

(assert (=> b!91518 m!98047))

(declare-fun m!98049 () Bool)

(assert (=> b!91519 m!98049))

(declare-fun m!98051 () Bool)

(assert (=> b!91520 m!98051))

(assert (=> b!91421 d!24049))

(declare-fun d!24051 () Bool)

(assert (=> d!24051 (= (valid!356 thiss!992) (valid!355 (v!2722 (underlying!315 thiss!992))))))

(declare-fun bs!3785 () Bool)

(assert (= bs!3785 d!24051))

(declare-fun m!98053 () Bool)

(assert (=> bs!3785 m!98053))

(assert (=> start!11166 d!24051))

(declare-fun d!24053 () Bool)

(assert (=> d!24053 (= (map!1224 newMap!16) (getCurrentListMap!456 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun bs!3786 () Bool)

(assert (= bs!3786 d!24053))

(declare-fun m!98055 () Bool)

(assert (=> bs!3786 m!98055))

(assert (=> b!91422 d!24053))

(declare-fun bm!8931 () Bool)

(declare-fun call!8937 () Bool)

(declare-fun lt!44640 () ListLongMap!1517)

(assert (=> bm!8931 (= call!8937 (contains!784 lt!44640 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!8933 () Bool)

(declare-fun call!8940 () ListLongMap!1517)

(declare-fun call!8939 () ListLongMap!1517)

(assert (=> bm!8933 (= call!8940 call!8939)))

(declare-fun b!91563 () Bool)

(declare-fun e!59752 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!91563 (= e!59752 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!91564 () Bool)

(declare-fun e!59751 () ListLongMap!1517)

(declare-fun e!59749 () ListLongMap!1517)

(assert (=> b!91564 (= e!59751 e!59749)))

(declare-fun c!15192 () Bool)

(assert (=> b!91564 (= c!15192 (and (not (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!91565 () Bool)

(declare-fun e!59750 () Bool)

(declare-fun e!59744 () Bool)

(assert (=> b!91565 (= e!59750 e!59744)))

(declare-fun res!46612 () Bool)

(declare-fun call!8934 () Bool)

(assert (=> b!91565 (= res!46612 call!8934)))

(assert (=> b!91565 (=> (not res!46612) (not e!59744))))

(declare-fun b!91566 () Bool)

(declare-fun call!8936 () ListLongMap!1517)

(assert (=> b!91566 (= e!59749 call!8936)))

(declare-fun call!8938 () ListLongMap!1517)

(declare-fun bm!8934 () Bool)

(declare-fun c!15188 () Bool)

(declare-fun call!8935 () ListLongMap!1517)

(assert (=> bm!8934 (= call!8938 (+!129 (ite c!15188 call!8935 (ite c!15192 call!8939 call!8940)) (ite (or c!15188 c!15192) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(declare-fun b!91567 () Bool)

(declare-fun apply!87 (ListLongMap!1517 (_ BitVec 64)) V!3091)

(assert (=> b!91567 (= e!59744 (= (apply!87 lt!44640 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun b!91568 () Bool)

(declare-fun e!59743 () ListLongMap!1517)

(assert (=> b!91568 (= e!59743 call!8940)))

(declare-fun b!91569 () Bool)

(declare-fun e!59745 () Bool)

(declare-fun e!59755 () Bool)

(assert (=> b!91569 (= e!59745 e!59755)))

(declare-fun res!46609 () Bool)

(assert (=> b!91569 (= res!46609 call!8937)))

(assert (=> b!91569 (=> (not res!46609) (not e!59755))))

(declare-fun b!91570 () Bool)

(declare-fun e!59753 () Unit!2738)

(declare-fun lt!44635 () Unit!2738)

(assert (=> b!91570 (= e!59753 lt!44635)))

(declare-fun lt!44624 () ListLongMap!1517)

(assert (=> b!91570 (= lt!44624 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun lt!44621 () (_ BitVec 64))

(assert (=> b!91570 (= lt!44621 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44636 () (_ BitVec 64))

(assert (=> b!91570 (= lt!44636 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!44639 () Unit!2738)

(declare-fun addStillContains!63 (ListLongMap!1517 (_ BitVec 64) V!3091 (_ BitVec 64)) Unit!2738)

(assert (=> b!91570 (= lt!44639 (addStillContains!63 lt!44624 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44636))))

(assert (=> b!91570 (contains!784 (+!129 lt!44624 (tuple2!2291 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44636)))

(declare-fun lt!44637 () Unit!2738)

(assert (=> b!91570 (= lt!44637 lt!44639)))

(declare-fun lt!44628 () ListLongMap!1517)

(assert (=> b!91570 (= lt!44628 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun lt!44620 () (_ BitVec 64))

(assert (=> b!91570 (= lt!44620 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44627 () (_ BitVec 64))

(assert (=> b!91570 (= lt!44627 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!44638 () Unit!2738)

(declare-fun addApplyDifferent!63 (ListLongMap!1517 (_ BitVec 64) V!3091 (_ BitVec 64)) Unit!2738)

(assert (=> b!91570 (= lt!44638 (addApplyDifferent!63 lt!44628 lt!44620 (minValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44627))))

(assert (=> b!91570 (= (apply!87 (+!129 lt!44628 (tuple2!2291 lt!44620 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44627) (apply!87 lt!44628 lt!44627))))

(declare-fun lt!44629 () Unit!2738)

(assert (=> b!91570 (= lt!44629 lt!44638)))

(declare-fun lt!44634 () ListLongMap!1517)

(assert (=> b!91570 (= lt!44634 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun lt!44622 () (_ BitVec 64))

(assert (=> b!91570 (= lt!44622 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44630 () (_ BitVec 64))

(assert (=> b!91570 (= lt!44630 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!44623 () Unit!2738)

(assert (=> b!91570 (= lt!44623 (addApplyDifferent!63 lt!44634 lt!44622 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44630))))

(assert (=> b!91570 (= (apply!87 (+!129 lt!44634 (tuple2!2291 lt!44622 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44630) (apply!87 lt!44634 lt!44630))))

(declare-fun lt!44633 () Unit!2738)

(assert (=> b!91570 (= lt!44633 lt!44623)))

(declare-fun lt!44625 () ListLongMap!1517)

(assert (=> b!91570 (= lt!44625 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun lt!44632 () (_ BitVec 64))

(assert (=> b!91570 (= lt!44632 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44641 () (_ BitVec 64))

(assert (=> b!91570 (= lt!44641 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!91570 (= lt!44635 (addApplyDifferent!63 lt!44625 lt!44632 (minValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44641))))

(assert (=> b!91570 (= (apply!87 (+!129 lt!44625 (tuple2!2291 lt!44632 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44641) (apply!87 lt!44625 lt!44641))))

(declare-fun b!91571 () Bool)

(assert (=> b!91571 (= e!59750 (not call!8934))))

(declare-fun b!91572 () Bool)

(declare-fun e!59748 () Bool)

(assert (=> b!91572 (= e!59748 e!59745)))

(declare-fun c!15190 () Bool)

(assert (=> b!91572 (= c!15190 (not (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!91573 () Bool)

(declare-fun e!59746 () Bool)

(assert (=> b!91573 (= e!59746 (= (apply!87 lt!44640 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!91573 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2214 (_values!2389 (v!2722 (underlying!315 thiss!992))))))))

(assert (=> b!91573 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun b!91574 () Bool)

(assert (=> b!91574 (= e!59755 (= (apply!87 lt!44640 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun b!91575 () Bool)

(declare-fun e!59747 () Bool)

(assert (=> b!91575 (= e!59747 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun d!24055 () Bool)

(assert (=> d!24055 e!59748))

(declare-fun res!46607 () Bool)

(assert (=> d!24055 (=> (not res!46607) (not e!59748))))

(assert (=> d!24055 (= res!46607 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))))

(declare-fun lt!44626 () ListLongMap!1517)

(assert (=> d!24055 (= lt!44640 lt!44626)))

(declare-fun lt!44631 () Unit!2738)

(assert (=> d!24055 (= lt!44631 e!59753)))

(declare-fun c!15189 () Bool)

(assert (=> d!24055 (= c!15189 e!59752)))

(declare-fun res!46608 () Bool)

(assert (=> d!24055 (=> (not res!46608) (not e!59752))))

(assert (=> d!24055 (= res!46608 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(assert (=> d!24055 (= lt!44626 e!59751)))

(assert (=> d!24055 (= c!15188 (and (not (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!24055 (validMask!0 (mask!6466 (v!2722 (underlying!315 thiss!992))))))

(assert (=> d!24055 (= (getCurrentListMap!456 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))) lt!44640)))

(declare-fun bm!8932 () Bool)

(assert (=> bm!8932 (= call!8939 call!8935)))

(declare-fun b!91576 () Bool)

(declare-fun res!46611 () Bool)

(assert (=> b!91576 (=> (not res!46611) (not e!59748))))

(declare-fun e!59754 () Bool)

(assert (=> b!91576 (= res!46611 e!59754)))

(declare-fun res!46606 () Bool)

(assert (=> b!91576 (=> res!46606 e!59754)))

(assert (=> b!91576 (= res!46606 (not e!59747))))

(declare-fun res!46613 () Bool)

(assert (=> b!91576 (=> (not res!46613) (not e!59747))))

(assert (=> b!91576 (= res!46613 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun b!91577 () Bool)

(assert (=> b!91577 (= e!59745 (not call!8937))))

(declare-fun bm!8935 () Bool)

(assert (=> bm!8935 (= call!8934 (contains!784 lt!44640 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!91578 () Bool)

(declare-fun res!46610 () Bool)

(assert (=> b!91578 (=> (not res!46610) (not e!59748))))

(assert (=> b!91578 (= res!46610 e!59750)))

(declare-fun c!15191 () Bool)

(assert (=> b!91578 (= c!15191 (not (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!91579 () Bool)

(assert (=> b!91579 (= e!59754 e!59746)))

(declare-fun res!46614 () Bool)

(assert (=> b!91579 (=> (not res!46614) (not e!59746))))

(assert (=> b!91579 (= res!46614 (contains!784 lt!44640 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!91579 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun b!91580 () Bool)

(declare-fun c!15193 () Bool)

(assert (=> b!91580 (= c!15193 (and (not (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!91580 (= e!59749 e!59743)))

(declare-fun b!91581 () Bool)

(declare-fun Unit!2745 () Unit!2738)

(assert (=> b!91581 (= e!59753 Unit!2745)))

(declare-fun b!91582 () Bool)

(assert (=> b!91582 (= e!59751 (+!129 call!8938 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun b!91583 () Bool)

(assert (=> b!91583 (= e!59743 call!8936)))

(declare-fun bm!8936 () Bool)

(assert (=> bm!8936 (= call!8935 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun bm!8937 () Bool)

(assert (=> bm!8937 (= call!8936 call!8938)))

(assert (= (and d!24055 c!15188) b!91582))

(assert (= (and d!24055 (not c!15188)) b!91564))

(assert (= (and b!91564 c!15192) b!91566))

(assert (= (and b!91564 (not c!15192)) b!91580))

(assert (= (and b!91580 c!15193) b!91583))

(assert (= (and b!91580 (not c!15193)) b!91568))

(assert (= (or b!91583 b!91568) bm!8933))

(assert (= (or b!91566 bm!8933) bm!8932))

(assert (= (or b!91566 b!91583) bm!8937))

(assert (= (or b!91582 bm!8932) bm!8936))

(assert (= (or b!91582 bm!8937) bm!8934))

(assert (= (and d!24055 res!46608) b!91563))

(assert (= (and d!24055 c!15189) b!91570))

(assert (= (and d!24055 (not c!15189)) b!91581))

(assert (= (and d!24055 res!46607) b!91576))

(assert (= (and b!91576 res!46613) b!91575))

(assert (= (and b!91576 (not res!46606)) b!91579))

(assert (= (and b!91579 res!46614) b!91573))

(assert (= (and b!91576 res!46611) b!91578))

(assert (= (and b!91578 c!15191) b!91565))

(assert (= (and b!91578 (not c!15191)) b!91571))

(assert (= (and b!91565 res!46612) b!91567))

(assert (= (or b!91565 b!91571) bm!8935))

(assert (= (and b!91578 res!46610) b!91572))

(assert (= (and b!91572 c!15190) b!91569))

(assert (= (and b!91572 (not c!15190)) b!91577))

(assert (= (and b!91569 res!46609) b!91574))

(assert (= (or b!91569 b!91577) bm!8931))

(declare-fun b_lambda!4041 () Bool)

(assert (=> (not b_lambda!4041) (not b!91573)))

(assert (=> b!91573 t!5416))

(declare-fun b_and!5549 () Bool)

(assert (= b_and!5537 (and (=> t!5416 result!3087) b_and!5549)))

(assert (=> b!91573 t!5418))

(declare-fun b_and!5551 () Bool)

(assert (= b_and!5539 (and (=> t!5418 result!3091) b_and!5551)))

(declare-fun m!98057 () Bool)

(assert (=> b!91574 m!98057))

(declare-fun m!98059 () Bool)

(assert (=> b!91570 m!98059))

(declare-fun m!98061 () Bool)

(assert (=> b!91570 m!98061))

(declare-fun m!98063 () Bool)

(assert (=> b!91570 m!98063))

(declare-fun m!98065 () Bool)

(assert (=> b!91570 m!98065))

(declare-fun m!98067 () Bool)

(assert (=> b!91570 m!98067))

(declare-fun m!98069 () Bool)

(assert (=> b!91570 m!98069))

(declare-fun m!98071 () Bool)

(assert (=> b!91570 m!98071))

(assert (=> b!91570 m!98069))

(declare-fun m!98073 () Bool)

(assert (=> b!91570 m!98073))

(declare-fun m!98075 () Bool)

(assert (=> b!91570 m!98075))

(assert (=> b!91570 m!98065))

(declare-fun m!98077 () Bool)

(assert (=> b!91570 m!98077))

(declare-fun m!98079 () Bool)

(assert (=> b!91570 m!98079))

(declare-fun m!98081 () Bool)

(assert (=> b!91570 m!98081))

(declare-fun m!98083 () Bool)

(assert (=> b!91570 m!98083))

(declare-fun m!98085 () Bool)

(assert (=> b!91570 m!98085))

(assert (=> b!91570 m!97957))

(assert (=> b!91570 m!98067))

(declare-fun m!98087 () Bool)

(assert (=> b!91570 m!98087))

(assert (=> b!91570 m!98059))

(declare-fun m!98089 () Bool)

(assert (=> b!91570 m!98089))

(declare-fun m!98091 () Bool)

(assert (=> bm!8934 m!98091))

(declare-fun m!98093 () Bool)

(assert (=> b!91567 m!98093))

(assert (=> b!91579 m!98075))

(assert (=> b!91579 m!98075))

(declare-fun m!98095 () Bool)

(assert (=> b!91579 m!98095))

(declare-fun m!98097 () Bool)

(assert (=> b!91582 m!98097))

(declare-fun m!98099 () Bool)

(assert (=> bm!8935 m!98099))

(declare-fun m!98101 () Bool)

(assert (=> bm!8931 m!98101))

(assert (=> bm!8936 m!97957))

(assert (=> b!91573 m!98075))

(declare-fun m!98103 () Bool)

(assert (=> b!91573 m!98103))

(assert (=> b!91573 m!97917))

(declare-fun m!98105 () Bool)

(assert (=> b!91573 m!98105))

(assert (=> b!91573 m!98075))

(declare-fun m!98107 () Bool)

(assert (=> b!91573 m!98107))

(assert (=> b!91573 m!98103))

(assert (=> b!91573 m!97917))

(assert (=> b!91575 m!98075))

(assert (=> b!91575 m!98075))

(declare-fun m!98109 () Bool)

(assert (=> b!91575 m!98109))

(assert (=> b!91563 m!98075))

(assert (=> b!91563 m!98075))

(assert (=> b!91563 m!98109))

(declare-fun m!98111 () Bool)

(assert (=> d!24055 m!98111))

(assert (=> b!91422 d!24055))

(declare-fun d!24057 () Bool)

(declare-fun c!15196 () Bool)

(assert (=> d!24057 (= c!15196 ((_ is ValueCellFull!948) (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun e!59758 () V!3091)

(assert (=> d!24057 (= (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) from!355) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!59758)))

(declare-fun b!91588 () Bool)

(declare-fun get!1255 (ValueCell!948 V!3091) V!3091)

(assert (=> b!91588 (= e!59758 (get!1255 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) from!355) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!91589 () Bool)

(declare-fun get!1256 (ValueCell!948 V!3091) V!3091)

(assert (=> b!91589 (= e!59758 (get!1256 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) from!355) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!24057 c!15196) b!91588))

(assert (= (and d!24057 (not c!15196)) b!91589))

(assert (=> b!91588 m!97915))

(assert (=> b!91588 m!97917))

(declare-fun m!98113 () Bool)

(assert (=> b!91588 m!98113))

(assert (=> b!91589 m!97915))

(assert (=> b!91589 m!97917))

(declare-fun m!98115 () Bool)

(assert (=> b!91589 m!98115))

(assert (=> b!91426 d!24057))

(declare-fun d!24059 () Bool)

(assert (=> d!24059 (= (array_inv!1179 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvsge (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!91424 d!24059))

(declare-fun d!24061 () Bool)

(assert (=> d!24061 (= (array_inv!1180 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvsge (size!2214 (_values!2389 (v!2722 (underlying!315 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!91424 d!24061))

(declare-fun d!24063 () Bool)

(declare-fun res!46615 () Bool)

(declare-fun e!59759 () Bool)

(assert (=> d!24063 (=> (not res!46615) (not e!59759))))

(assert (=> d!24063 (= res!46615 (simpleValid!62 (_2!1156 lt!44506)))))

(assert (=> d!24063 (= (valid!355 (_2!1156 lt!44506)) e!59759)))

(declare-fun b!91590 () Bool)

(declare-fun res!46616 () Bool)

(assert (=> b!91590 (=> (not res!46616) (not e!59759))))

(assert (=> b!91590 (= res!46616 (= (arrayCountValidKeys!0 (_keys!4086 (_2!1156 lt!44506)) #b00000000000000000000000000000000 (size!2213 (_keys!4086 (_2!1156 lt!44506)))) (_size!451 (_2!1156 lt!44506))))))

(declare-fun b!91591 () Bool)

(declare-fun res!46617 () Bool)

(assert (=> b!91591 (=> (not res!46617) (not e!59759))))

(assert (=> b!91591 (= res!46617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4086 (_2!1156 lt!44506)) (mask!6466 (_2!1156 lt!44506))))))

(declare-fun b!91592 () Bool)

(assert (=> b!91592 (= e!59759 (arrayNoDuplicates!0 (_keys!4086 (_2!1156 lt!44506)) #b00000000000000000000000000000000 Nil!1579))))

(assert (= (and d!24063 res!46615) b!91590))

(assert (= (and b!91590 res!46616) b!91591))

(assert (= (and b!91591 res!46617) b!91592))

(declare-fun m!98117 () Bool)

(assert (=> d!24063 m!98117))

(declare-fun m!98119 () Bool)

(assert (=> b!91590 m!98119))

(declare-fun m!98121 () Bool)

(assert (=> b!91591 m!98121))

(declare-fun m!98123 () Bool)

(assert (=> b!91592 m!98123))

(assert (=> b!91439 d!24063))

(declare-fun d!24065 () Bool)

(declare-fun e!59762 () Bool)

(assert (=> d!24065 e!59762))

(declare-fun res!46622 () Bool)

(assert (=> d!24065 (=> (not res!46622) (not e!59762))))

(declare-fun lt!44653 () ListLongMap!1517)

(assert (=> d!24065 (= res!46622 (contains!784 lt!44653 (_1!1155 lt!44507)))))

(declare-fun lt!44652 () List!1581)

(assert (=> d!24065 (= lt!44653 (ListLongMap!1518 lt!44652))))

(declare-fun lt!44650 () Unit!2738)

(declare-fun lt!44651 () Unit!2738)

(assert (=> d!24065 (= lt!44650 lt!44651)))

(declare-datatypes ((Option!150 0))(
  ( (Some!149 (v!2726 V!3091)) (None!148) )
))
(declare-fun getValueByKey!144 (List!1581 (_ BitVec 64)) Option!150)

(assert (=> d!24065 (= (getValueByKey!144 lt!44652 (_1!1155 lt!44507)) (Some!149 (_2!1155 lt!44507)))))

(declare-fun lemmaContainsTupThenGetReturnValue!63 (List!1581 (_ BitVec 64) V!3091) Unit!2738)

(assert (=> d!24065 (= lt!44651 (lemmaContainsTupThenGetReturnValue!63 lt!44652 (_1!1155 lt!44507) (_2!1155 lt!44507)))))

(declare-fun insertStrictlySorted!65 (List!1581 (_ BitVec 64) V!3091) List!1581)

(assert (=> d!24065 (= lt!44652 (insertStrictlySorted!65 (toList!774 lt!44519) (_1!1155 lt!44507) (_2!1155 lt!44507)))))

(assert (=> d!24065 (= (+!129 lt!44519 lt!44507) lt!44653)))

(declare-fun b!91597 () Bool)

(declare-fun res!46623 () Bool)

(assert (=> b!91597 (=> (not res!46623) (not e!59762))))

(assert (=> b!91597 (= res!46623 (= (getValueByKey!144 (toList!774 lt!44653) (_1!1155 lt!44507)) (Some!149 (_2!1155 lt!44507))))))

(declare-fun b!91598 () Bool)

(declare-fun contains!786 (List!1581 tuple2!2290) Bool)

(assert (=> b!91598 (= e!59762 (contains!786 (toList!774 lt!44653) lt!44507))))

(assert (= (and d!24065 res!46622) b!91597))

(assert (= (and b!91597 res!46623) b!91598))

(declare-fun m!98125 () Bool)

(assert (=> d!24065 m!98125))

(declare-fun m!98127 () Bool)

(assert (=> d!24065 m!98127))

(declare-fun m!98129 () Bool)

(assert (=> d!24065 m!98129))

(declare-fun m!98131 () Bool)

(assert (=> d!24065 m!98131))

(declare-fun m!98133 () Bool)

(assert (=> b!91597 m!98133))

(declare-fun m!98135 () Bool)

(assert (=> b!91598 m!98135))

(assert (=> b!91438 d!24065))

(declare-fun b!91623 () Bool)

(declare-fun e!59781 () ListLongMap!1517)

(declare-fun e!59783 () ListLongMap!1517)

(assert (=> b!91623 (= e!59781 e!59783)))

(declare-fun c!15206 () Bool)

(assert (=> b!91623 (= c!15206 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!91624 () Bool)

(assert (=> b!91624 (= e!59781 (ListLongMap!1518 Nil!1578))))

(declare-fun b!91625 () Bool)

(declare-fun call!8943 () ListLongMap!1517)

(assert (=> b!91625 (= e!59783 call!8943)))

(declare-fun lt!44673 () ListLongMap!1517)

(declare-fun e!59778 () Bool)

(declare-fun b!91626 () Bool)

(assert (=> b!91626 (= e!59778 (= lt!44673 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun bm!8940 () Bool)

(assert (=> bm!8940 (= call!8943 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun b!91627 () Bool)

(declare-fun e!59782 () Bool)

(assert (=> b!91627 (= e!59782 e!59778)))

(declare-fun c!15208 () Bool)

(assert (=> b!91627 (= c!15208 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun b!91628 () Bool)

(declare-fun e!59777 () Bool)

(assert (=> b!91628 (= e!59777 e!59782)))

(declare-fun c!15207 () Bool)

(declare-fun e!59780 () Bool)

(assert (=> b!91628 (= c!15207 e!59780)))

(declare-fun res!46633 () Bool)

(assert (=> b!91628 (=> (not res!46633) (not e!59780))))

(assert (=> b!91628 (= res!46633 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun b!91629 () Bool)

(assert (=> b!91629 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(assert (=> b!91629 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2214 (_values!2389 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun e!59779 () Bool)

(assert (=> b!91629 (= e!59779 (= (apply!87 lt!44673 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!24067 () Bool)

(assert (=> d!24067 e!59777))

(declare-fun res!46634 () Bool)

(assert (=> d!24067 (=> (not res!46634) (not e!59777))))

(assert (=> d!24067 (= res!46634 (not (contains!784 lt!44673 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!24067 (= lt!44673 e!59781)))

(declare-fun c!15205 () Bool)

(assert (=> d!24067 (= c!15205 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(assert (=> d!24067 (validMask!0 (mask!6466 (v!2722 (underlying!315 thiss!992))))))

(assert (=> d!24067 (= (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))) lt!44673)))

(declare-fun b!91630 () Bool)

(declare-fun isEmpty!351 (ListLongMap!1517) Bool)

(assert (=> b!91630 (= e!59778 (isEmpty!351 lt!44673))))

(declare-fun b!91631 () Bool)

(assert (=> b!91631 (= e!59780 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!91631 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!91632 () Bool)

(assert (=> b!91632 (= e!59782 e!59779)))

(assert (=> b!91632 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun res!46635 () Bool)

(assert (=> b!91632 (= res!46635 (contains!784 lt!44673 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!91632 (=> (not res!46635) (not e!59779))))

(declare-fun b!91633 () Bool)

(declare-fun res!46632 () Bool)

(assert (=> b!91633 (=> (not res!46632) (not e!59777))))

(assert (=> b!91633 (= res!46632 (not (contains!784 lt!44673 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!91634 () Bool)

(declare-fun lt!44671 () Unit!2738)

(declare-fun lt!44668 () Unit!2738)

(assert (=> b!91634 (= lt!44671 lt!44668)))

(declare-fun lt!44672 () (_ BitVec 64))

(declare-fun lt!44674 () (_ BitVec 64))

(declare-fun lt!44669 () V!3091)

(declare-fun lt!44670 () ListLongMap!1517)

(assert (=> b!91634 (not (contains!784 (+!129 lt!44670 (tuple2!2291 lt!44674 lt!44669)) lt!44672))))

(declare-fun addStillNotContains!38 (ListLongMap!1517 (_ BitVec 64) V!3091 (_ BitVec 64)) Unit!2738)

(assert (=> b!91634 (= lt!44668 (addStillNotContains!38 lt!44670 lt!44674 lt!44669 lt!44672))))

(assert (=> b!91634 (= lt!44672 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!91634 (= lt!44669 (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!91634 (= lt!44674 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!91634 (= lt!44670 call!8943)))

(assert (=> b!91634 (= e!59783 (+!129 call!8943 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!24067 c!15205) b!91624))

(assert (= (and d!24067 (not c!15205)) b!91623))

(assert (= (and b!91623 c!15206) b!91634))

(assert (= (and b!91623 (not c!15206)) b!91625))

(assert (= (or b!91634 b!91625) bm!8940))

(assert (= (and d!24067 res!46634) b!91633))

(assert (= (and b!91633 res!46632) b!91628))

(assert (= (and b!91628 res!46633) b!91631))

(assert (= (and b!91628 c!15207) b!91632))

(assert (= (and b!91628 (not c!15207)) b!91627))

(assert (= (and b!91632 res!46635) b!91629))

(assert (= (and b!91627 c!15208) b!91626))

(assert (= (and b!91627 (not c!15208)) b!91630))

(declare-fun b_lambda!4043 () Bool)

(assert (=> (not b_lambda!4043) (not b!91629)))

(assert (=> b!91629 t!5416))

(declare-fun b_and!5553 () Bool)

(assert (= b_and!5549 (and (=> t!5416 result!3087) b_and!5553)))

(assert (=> b!91629 t!5418))

(declare-fun b_and!5555 () Bool)

(assert (= b_and!5551 (and (=> t!5418 result!3091) b_and!5555)))

(declare-fun b_lambda!4045 () Bool)

(assert (=> (not b_lambda!4045) (not b!91634)))

(assert (=> b!91634 t!5416))

(declare-fun b_and!5557 () Bool)

(assert (= b_and!5553 (and (=> t!5416 result!3087) b_and!5557)))

(assert (=> b!91634 t!5418))

(declare-fun b_and!5559 () Bool)

(assert (= b_and!5555 (and (=> t!5418 result!3091) b_and!5559)))

(assert (=> b!91629 m!98075))

(assert (=> b!91629 m!98075))

(declare-fun m!98137 () Bool)

(assert (=> b!91629 m!98137))

(assert (=> b!91629 m!97917))

(assert (=> b!91629 m!98103))

(assert (=> b!91629 m!97917))

(assert (=> b!91629 m!98105))

(assert (=> b!91629 m!98103))

(declare-fun m!98139 () Bool)

(assert (=> d!24067 m!98139))

(assert (=> d!24067 m!98111))

(declare-fun m!98141 () Bool)

(assert (=> bm!8940 m!98141))

(assert (=> b!91632 m!98075))

(assert (=> b!91632 m!98075))

(declare-fun m!98143 () Bool)

(assert (=> b!91632 m!98143))

(declare-fun m!98145 () Bool)

(assert (=> b!91630 m!98145))

(assert (=> b!91631 m!98075))

(assert (=> b!91631 m!98075))

(assert (=> b!91631 m!98109))

(assert (=> b!91626 m!98141))

(declare-fun m!98147 () Bool)

(assert (=> b!91633 m!98147))

(declare-fun m!98149 () Bool)

(assert (=> b!91634 m!98149))

(assert (=> b!91634 m!98075))

(declare-fun m!98151 () Bool)

(assert (=> b!91634 m!98151))

(assert (=> b!91634 m!97917))

(declare-fun m!98153 () Bool)

(assert (=> b!91634 m!98153))

(assert (=> b!91634 m!98103))

(assert (=> b!91634 m!97917))

(assert (=> b!91634 m!98105))

(assert (=> b!91634 m!98103))

(assert (=> b!91634 m!98153))

(declare-fun m!98155 () Bool)

(assert (=> b!91634 m!98155))

(assert (=> b!91623 m!98075))

(assert (=> b!91623 m!98075))

(assert (=> b!91623 m!98109))

(assert (=> b!91438 d!24067))

(declare-fun d!24069 () Bool)

(declare-fun e!59784 () Bool)

(assert (=> d!24069 e!59784))

(declare-fun res!46636 () Bool)

(assert (=> d!24069 (=> (not res!46636) (not e!59784))))

(declare-fun lt!44678 () ListLongMap!1517)

(assert (=> d!24069 (= res!46636 (contains!784 lt!44678 (_1!1155 lt!44520)))))

(declare-fun lt!44677 () List!1581)

(assert (=> d!24069 (= lt!44678 (ListLongMap!1518 lt!44677))))

(declare-fun lt!44675 () Unit!2738)

(declare-fun lt!44676 () Unit!2738)

(assert (=> d!24069 (= lt!44675 lt!44676)))

(assert (=> d!24069 (= (getValueByKey!144 lt!44677 (_1!1155 lt!44520)) (Some!149 (_2!1155 lt!44520)))))

(assert (=> d!24069 (= lt!44676 (lemmaContainsTupThenGetReturnValue!63 lt!44677 (_1!1155 lt!44520) (_2!1155 lt!44520)))))

(assert (=> d!24069 (= lt!44677 (insertStrictlySorted!65 (toList!774 lt!44516) (_1!1155 lt!44520) (_2!1155 lt!44520)))))

(assert (=> d!24069 (= (+!129 lt!44516 lt!44520) lt!44678)))

(declare-fun b!91635 () Bool)

(declare-fun res!46637 () Bool)

(assert (=> b!91635 (=> (not res!46637) (not e!59784))))

(assert (=> b!91635 (= res!46637 (= (getValueByKey!144 (toList!774 lt!44678) (_1!1155 lt!44520)) (Some!149 (_2!1155 lt!44520))))))

(declare-fun b!91636 () Bool)

(assert (=> b!91636 (= e!59784 (contains!786 (toList!774 lt!44678) lt!44520))))

(assert (= (and d!24069 res!46636) b!91635))

(assert (= (and b!91635 res!46637) b!91636))

(declare-fun m!98157 () Bool)

(assert (=> d!24069 m!98157))

(declare-fun m!98159 () Bool)

(assert (=> d!24069 m!98159))

(declare-fun m!98161 () Bool)

(assert (=> d!24069 m!98161))

(declare-fun m!98163 () Bool)

(assert (=> d!24069 m!98163))

(declare-fun m!98165 () Bool)

(assert (=> b!91635 m!98165))

(declare-fun m!98167 () Bool)

(assert (=> b!91636 m!98167))

(assert (=> b!91438 d!24069))

(declare-fun d!24071 () Bool)

(declare-fun e!59785 () Bool)

(assert (=> d!24071 e!59785))

(declare-fun res!46638 () Bool)

(assert (=> d!24071 (=> (not res!46638) (not e!59785))))

(declare-fun lt!44682 () ListLongMap!1517)

(assert (=> d!24071 (= res!46638 (contains!784 lt!44682 (_1!1155 lt!44511)))))

(declare-fun lt!44681 () List!1581)

(assert (=> d!24071 (= lt!44682 (ListLongMap!1518 lt!44681))))

(declare-fun lt!44679 () Unit!2738)

(declare-fun lt!44680 () Unit!2738)

(assert (=> d!24071 (= lt!44679 lt!44680)))

(assert (=> d!24071 (= (getValueByKey!144 lt!44681 (_1!1155 lt!44511)) (Some!149 (_2!1155 lt!44511)))))

(assert (=> d!24071 (= lt!44680 (lemmaContainsTupThenGetReturnValue!63 lt!44681 (_1!1155 lt!44511) (_2!1155 lt!44511)))))

(assert (=> d!24071 (= lt!44681 (insertStrictlySorted!65 (toList!774 lt!44504) (_1!1155 lt!44511) (_2!1155 lt!44511)))))

(assert (=> d!24071 (= (+!129 lt!44504 lt!44511) lt!44682)))

(declare-fun b!91637 () Bool)

(declare-fun res!46639 () Bool)

(assert (=> b!91637 (=> (not res!46639) (not e!59785))))

(assert (=> b!91637 (= res!46639 (= (getValueByKey!144 (toList!774 lt!44682) (_1!1155 lt!44511)) (Some!149 (_2!1155 lt!44511))))))

(declare-fun b!91638 () Bool)

(assert (=> b!91638 (= e!59785 (contains!786 (toList!774 lt!44682) lt!44511))))

(assert (= (and d!24071 res!46638) b!91637))

(assert (= (and b!91637 res!46639) b!91638))

(declare-fun m!98169 () Bool)

(assert (=> d!24071 m!98169))

(declare-fun m!98171 () Bool)

(assert (=> d!24071 m!98171))

(declare-fun m!98173 () Bool)

(assert (=> d!24071 m!98173))

(declare-fun m!98175 () Bool)

(assert (=> d!24071 m!98175))

(declare-fun m!98177 () Bool)

(assert (=> b!91637 m!98177))

(declare-fun m!98179 () Bool)

(assert (=> b!91638 m!98179))

(assert (=> b!91438 d!24071))

(declare-fun bm!8941 () Bool)

(declare-fun call!8947 () Bool)

(declare-fun lt!44703 () ListLongMap!1517)

(assert (=> bm!8941 (= call!8947 (contains!784 lt!44703 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!8943 () Bool)

(declare-fun call!8950 () ListLongMap!1517)

(declare-fun call!8949 () ListLongMap!1517)

(assert (=> bm!8943 (= call!8950 call!8949)))

(declare-fun b!91639 () Bool)

(declare-fun e!59795 () Bool)

(assert (=> b!91639 (= e!59795 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun b!91640 () Bool)

(declare-fun e!59794 () ListLongMap!1517)

(declare-fun e!59792 () ListLongMap!1517)

(assert (=> b!91640 (= e!59794 e!59792)))

(declare-fun c!15213 () Bool)

(assert (=> b!91640 (= c!15213 (and (not (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!91641 () Bool)

(declare-fun e!59793 () Bool)

(declare-fun e!59787 () Bool)

(assert (=> b!91641 (= e!59793 e!59787)))

(declare-fun res!46646 () Bool)

(declare-fun call!8944 () Bool)

(assert (=> b!91641 (= res!46646 call!8944)))

(assert (=> b!91641 (=> (not res!46646) (not e!59787))))

(declare-fun b!91642 () Bool)

(declare-fun call!8946 () ListLongMap!1517)

(assert (=> b!91642 (= e!59792 call!8946)))

(declare-fun c!15209 () Bool)

(declare-fun bm!8944 () Bool)

(declare-fun call!8945 () ListLongMap!1517)

(declare-fun call!8948 () ListLongMap!1517)

(assert (=> bm!8944 (= call!8948 (+!129 (ite c!15209 call!8945 (ite c!15213 call!8949 call!8950)) (ite (or c!15209 c!15213) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(declare-fun b!91643 () Bool)

(assert (=> b!91643 (= e!59787 (= (apply!87 lt!44703 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun b!91644 () Bool)

(declare-fun e!59786 () ListLongMap!1517)

(assert (=> b!91644 (= e!59786 call!8950)))

(declare-fun b!91645 () Bool)

(declare-fun e!59788 () Bool)

(declare-fun e!59798 () Bool)

(assert (=> b!91645 (= e!59788 e!59798)))

(declare-fun res!46643 () Bool)

(assert (=> b!91645 (= res!46643 call!8947)))

(assert (=> b!91645 (=> (not res!46643) (not e!59798))))

(declare-fun b!91646 () Bool)

(declare-fun e!59796 () Unit!2738)

(declare-fun lt!44698 () Unit!2738)

(assert (=> b!91646 (= e!59796 lt!44698)))

(declare-fun lt!44687 () ListLongMap!1517)

(assert (=> b!91646 (= lt!44687 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) from!355 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun lt!44684 () (_ BitVec 64))

(assert (=> b!91646 (= lt!44684 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44699 () (_ BitVec 64))

(assert (=> b!91646 (= lt!44699 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355))))

(declare-fun lt!44702 () Unit!2738)

(assert (=> b!91646 (= lt!44702 (addStillContains!63 lt!44687 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44699))))

(assert (=> b!91646 (contains!784 (+!129 lt!44687 (tuple2!2291 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44699)))

(declare-fun lt!44700 () Unit!2738)

(assert (=> b!91646 (= lt!44700 lt!44702)))

(declare-fun lt!44691 () ListLongMap!1517)

(assert (=> b!91646 (= lt!44691 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) from!355 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun lt!44683 () (_ BitVec 64))

(assert (=> b!91646 (= lt!44683 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44690 () (_ BitVec 64))

(assert (=> b!91646 (= lt!44690 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355))))

(declare-fun lt!44701 () Unit!2738)

(assert (=> b!91646 (= lt!44701 (addApplyDifferent!63 lt!44691 lt!44683 (minValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44690))))

(assert (=> b!91646 (= (apply!87 (+!129 lt!44691 (tuple2!2291 lt!44683 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44690) (apply!87 lt!44691 lt!44690))))

(declare-fun lt!44692 () Unit!2738)

(assert (=> b!91646 (= lt!44692 lt!44701)))

(declare-fun lt!44697 () ListLongMap!1517)

(assert (=> b!91646 (= lt!44697 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) from!355 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun lt!44685 () (_ BitVec 64))

(assert (=> b!91646 (= lt!44685 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44693 () (_ BitVec 64))

(assert (=> b!91646 (= lt!44693 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355))))

(declare-fun lt!44686 () Unit!2738)

(assert (=> b!91646 (= lt!44686 (addApplyDifferent!63 lt!44697 lt!44685 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44693))))

(assert (=> b!91646 (= (apply!87 (+!129 lt!44697 (tuple2!2291 lt!44685 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44693) (apply!87 lt!44697 lt!44693))))

(declare-fun lt!44696 () Unit!2738)

(assert (=> b!91646 (= lt!44696 lt!44686)))

(declare-fun lt!44688 () ListLongMap!1517)

(assert (=> b!91646 (= lt!44688 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) from!355 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun lt!44695 () (_ BitVec 64))

(assert (=> b!91646 (= lt!44695 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44704 () (_ BitVec 64))

(assert (=> b!91646 (= lt!44704 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355))))

(assert (=> b!91646 (= lt!44698 (addApplyDifferent!63 lt!44688 lt!44695 (minValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44704))))

(assert (=> b!91646 (= (apply!87 (+!129 lt!44688 (tuple2!2291 lt!44695 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44704) (apply!87 lt!44688 lt!44704))))

(declare-fun b!91647 () Bool)

(assert (=> b!91647 (= e!59793 (not call!8944))))

(declare-fun b!91648 () Bool)

(declare-fun e!59791 () Bool)

(assert (=> b!91648 (= e!59791 e!59788)))

(declare-fun c!15211 () Bool)

(assert (=> b!91648 (= c!15211 (not (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!91649 () Bool)

(declare-fun e!59789 () Bool)

(assert (=> b!91649 (= e!59789 (= (apply!87 lt!44703 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) from!355) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!91649 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2214 (_values!2389 (v!2722 (underlying!315 thiss!992))))))))

(assert (=> b!91649 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun b!91650 () Bool)

(assert (=> b!91650 (= e!59798 (= (apply!87 lt!44703 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun b!91651 () Bool)

(declare-fun e!59790 () Bool)

(assert (=> b!91651 (= e!59790 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun d!24073 () Bool)

(assert (=> d!24073 e!59791))

(declare-fun res!46641 () Bool)

(assert (=> d!24073 (=> (not res!46641) (not e!59791))))

(assert (=> d!24073 (= res!46641 (or (bvsge from!355 (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))) (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))))

(declare-fun lt!44689 () ListLongMap!1517)

(assert (=> d!24073 (= lt!44703 lt!44689)))

(declare-fun lt!44694 () Unit!2738)

(assert (=> d!24073 (= lt!44694 e!59796)))

(declare-fun c!15210 () Bool)

(assert (=> d!24073 (= c!15210 e!59795)))

(declare-fun res!46642 () Bool)

(assert (=> d!24073 (=> (not res!46642) (not e!59795))))

(assert (=> d!24073 (= res!46642 (bvslt from!355 (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(assert (=> d!24073 (= lt!44689 e!59794)))

(assert (=> d!24073 (= c!15209 (and (not (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!24073 (validMask!0 (mask!6466 (v!2722 (underlying!315 thiss!992))))))

(assert (=> d!24073 (= (getCurrentListMap!456 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) from!355 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))) lt!44703)))

(declare-fun bm!8942 () Bool)

(assert (=> bm!8942 (= call!8949 call!8945)))

(declare-fun b!91652 () Bool)

(declare-fun res!46645 () Bool)

(assert (=> b!91652 (=> (not res!46645) (not e!59791))))

(declare-fun e!59797 () Bool)

(assert (=> b!91652 (= res!46645 e!59797)))

(declare-fun res!46640 () Bool)

(assert (=> b!91652 (=> res!46640 e!59797)))

(assert (=> b!91652 (= res!46640 (not e!59790))))

(declare-fun res!46647 () Bool)

(assert (=> b!91652 (=> (not res!46647) (not e!59790))))

(assert (=> b!91652 (= res!46647 (bvslt from!355 (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun b!91653 () Bool)

(assert (=> b!91653 (= e!59788 (not call!8947))))

(declare-fun bm!8945 () Bool)

(assert (=> bm!8945 (= call!8944 (contains!784 lt!44703 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!91654 () Bool)

(declare-fun res!46644 () Bool)

(assert (=> b!91654 (=> (not res!46644) (not e!59791))))

(assert (=> b!91654 (= res!46644 e!59793)))

(declare-fun c!15212 () Bool)

(assert (=> b!91654 (= c!15212 (not (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!91655 () Bool)

(assert (=> b!91655 (= e!59797 e!59789)))

(declare-fun res!46648 () Bool)

(assert (=> b!91655 (=> (not res!46648) (not e!59789))))

(assert (=> b!91655 (= res!46648 (contains!784 lt!44703 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (=> b!91655 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun b!91656 () Bool)

(declare-fun c!15214 () Bool)

(assert (=> b!91656 (= c!15214 (and (not (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!91656 (= e!59792 e!59786)))

(declare-fun b!91657 () Bool)

(declare-fun Unit!2746 () Unit!2738)

(assert (=> b!91657 (= e!59796 Unit!2746)))

(declare-fun b!91658 () Bool)

(assert (=> b!91658 (= e!59794 (+!129 call!8948 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun b!91659 () Bool)

(assert (=> b!91659 (= e!59786 call!8946)))

(declare-fun bm!8946 () Bool)

(assert (=> bm!8946 (= call!8945 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) from!355 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun bm!8947 () Bool)

(assert (=> bm!8947 (= call!8946 call!8948)))

(assert (= (and d!24073 c!15209) b!91658))

(assert (= (and d!24073 (not c!15209)) b!91640))

(assert (= (and b!91640 c!15213) b!91642))

(assert (= (and b!91640 (not c!15213)) b!91656))

(assert (= (and b!91656 c!15214) b!91659))

(assert (= (and b!91656 (not c!15214)) b!91644))

(assert (= (or b!91659 b!91644) bm!8943))

(assert (= (or b!91642 bm!8943) bm!8942))

(assert (= (or b!91642 b!91659) bm!8947))

(assert (= (or b!91658 bm!8942) bm!8946))

(assert (= (or b!91658 bm!8947) bm!8944))

(assert (= (and d!24073 res!46642) b!91639))

(assert (= (and d!24073 c!15210) b!91646))

(assert (= (and d!24073 (not c!15210)) b!91657))

(assert (= (and d!24073 res!46641) b!91652))

(assert (= (and b!91652 res!46647) b!91651))

(assert (= (and b!91652 (not res!46640)) b!91655))

(assert (= (and b!91655 res!46648) b!91649))

(assert (= (and b!91652 res!46645) b!91654))

(assert (= (and b!91654 c!15212) b!91641))

(assert (= (and b!91654 (not c!15212)) b!91647))

(assert (= (and b!91641 res!46646) b!91643))

(assert (= (or b!91641 b!91647) bm!8945))

(assert (= (and b!91654 res!46644) b!91648))

(assert (= (and b!91648 c!15211) b!91645))

(assert (= (and b!91648 (not c!15211)) b!91653))

(assert (= (and b!91645 res!46643) b!91650))

(assert (= (or b!91645 b!91653) bm!8941))

(declare-fun b_lambda!4047 () Bool)

(assert (=> (not b_lambda!4047) (not b!91649)))

(assert (=> b!91649 t!5416))

(declare-fun b_and!5561 () Bool)

(assert (= b_and!5557 (and (=> t!5416 result!3087) b_and!5561)))

(assert (=> b!91649 t!5418))

(declare-fun b_and!5563 () Bool)

(assert (= b_and!5559 (and (=> t!5418 result!3091) b_and!5563)))

(declare-fun m!98181 () Bool)

(assert (=> b!91650 m!98181))

(declare-fun m!98183 () Bool)

(assert (=> b!91646 m!98183))

(declare-fun m!98185 () Bool)

(assert (=> b!91646 m!98185))

(declare-fun m!98187 () Bool)

(assert (=> b!91646 m!98187))

(declare-fun m!98189 () Bool)

(assert (=> b!91646 m!98189))

(declare-fun m!98191 () Bool)

(assert (=> b!91646 m!98191))

(declare-fun m!98193 () Bool)

(assert (=> b!91646 m!98193))

(declare-fun m!98195 () Bool)

(assert (=> b!91646 m!98195))

(assert (=> b!91646 m!98193))

(declare-fun m!98197 () Bool)

(assert (=> b!91646 m!98197))

(assert (=> b!91646 m!97909))

(assert (=> b!91646 m!98189))

(declare-fun m!98199 () Bool)

(assert (=> b!91646 m!98199))

(declare-fun m!98201 () Bool)

(assert (=> b!91646 m!98201))

(declare-fun m!98203 () Bool)

(assert (=> b!91646 m!98203))

(declare-fun m!98205 () Bool)

(assert (=> b!91646 m!98205))

(declare-fun m!98207 () Bool)

(assert (=> b!91646 m!98207))

(declare-fun m!98209 () Bool)

(assert (=> b!91646 m!98209))

(assert (=> b!91646 m!98191))

(declare-fun m!98211 () Bool)

(assert (=> b!91646 m!98211))

(assert (=> b!91646 m!98183))

(declare-fun m!98213 () Bool)

(assert (=> b!91646 m!98213))

(declare-fun m!98215 () Bool)

(assert (=> bm!8944 m!98215))

(declare-fun m!98217 () Bool)

(assert (=> b!91643 m!98217))

(assert (=> b!91655 m!97909))

(assert (=> b!91655 m!97909))

(declare-fun m!98219 () Bool)

(assert (=> b!91655 m!98219))

(declare-fun m!98221 () Bool)

(assert (=> b!91658 m!98221))

(declare-fun m!98223 () Bool)

(assert (=> bm!8945 m!98223))

(declare-fun m!98225 () Bool)

(assert (=> bm!8941 m!98225))

(assert (=> bm!8946 m!98209))

(assert (=> b!91649 m!97909))

(assert (=> b!91649 m!97915))

(assert (=> b!91649 m!97917))

(assert (=> b!91649 m!97919))

(assert (=> b!91649 m!97909))

(declare-fun m!98227 () Bool)

(assert (=> b!91649 m!98227))

(assert (=> b!91649 m!97915))

(assert (=> b!91649 m!97917))

(assert (=> b!91651 m!97909))

(assert (=> b!91651 m!97909))

(declare-fun m!98229 () Bool)

(assert (=> b!91651 m!98229))

(assert (=> b!91639 m!97909))

(assert (=> b!91639 m!97909))

(assert (=> b!91639 m!98229))

(assert (=> d!24073 m!98111))

(assert (=> b!91438 d!24073))

(declare-fun d!24075 () Bool)

(declare-fun e!59799 () Bool)

(assert (=> d!24075 e!59799))

(declare-fun res!46649 () Bool)

(assert (=> d!24075 (=> (not res!46649) (not e!59799))))

(declare-fun lt!44708 () ListLongMap!1517)

(assert (=> d!24075 (= res!46649 (contains!784 lt!44708 (_1!1155 lt!44520)))))

(declare-fun lt!44707 () List!1581)

(assert (=> d!24075 (= lt!44708 (ListLongMap!1518 lt!44707))))

(declare-fun lt!44705 () Unit!2738)

(declare-fun lt!44706 () Unit!2738)

(assert (=> d!24075 (= lt!44705 lt!44706)))

(assert (=> d!24075 (= (getValueByKey!144 lt!44707 (_1!1155 lt!44520)) (Some!149 (_2!1155 lt!44520)))))

(assert (=> d!24075 (= lt!44706 (lemmaContainsTupThenGetReturnValue!63 lt!44707 (_1!1155 lt!44520) (_2!1155 lt!44520)))))

(assert (=> d!24075 (= lt!44707 (insertStrictlySorted!65 (toList!774 lt!44519) (_1!1155 lt!44520) (_2!1155 lt!44520)))))

(assert (=> d!24075 (= (+!129 lt!44519 lt!44520) lt!44708)))

(declare-fun b!91660 () Bool)

(declare-fun res!46650 () Bool)

(assert (=> b!91660 (=> (not res!46650) (not e!59799))))

(assert (=> b!91660 (= res!46650 (= (getValueByKey!144 (toList!774 lt!44708) (_1!1155 lt!44520)) (Some!149 (_2!1155 lt!44520))))))

(declare-fun b!91661 () Bool)

(assert (=> b!91661 (= e!59799 (contains!786 (toList!774 lt!44708) lt!44520))))

(assert (= (and d!24075 res!46649) b!91660))

(assert (= (and b!91660 res!46650) b!91661))

(declare-fun m!98231 () Bool)

(assert (=> d!24075 m!98231))

(declare-fun m!98233 () Bool)

(assert (=> d!24075 m!98233))

(declare-fun m!98235 () Bool)

(assert (=> d!24075 m!98235))

(declare-fun m!98237 () Bool)

(assert (=> d!24075 m!98237))

(declare-fun m!98239 () Bool)

(assert (=> b!91660 m!98239))

(declare-fun m!98241 () Bool)

(assert (=> b!91661 m!98241))

(assert (=> b!91438 d!24075))

(declare-fun d!24077 () Bool)

(assert (=> d!24077 (= (map!1224 (_2!1156 lt!44506)) (getCurrentListMap!456 (_keys!4086 (_2!1156 lt!44506)) (_values!2389 (_2!1156 lt!44506)) (mask!6466 (_2!1156 lt!44506)) (extraKeys!2237 (_2!1156 lt!44506)) (zeroValue!2294 (_2!1156 lt!44506)) (minValue!2294 (_2!1156 lt!44506)) #b00000000000000000000000000000000 (defaultEntry!2406 (_2!1156 lt!44506))))))

(declare-fun bs!3787 () Bool)

(assert (= bs!3787 d!24077))

(declare-fun m!98243 () Bool)

(assert (=> bs!3787 m!98243))

(assert (=> b!91438 d!24077))

(declare-fun d!24079 () Bool)

(declare-fun e!59800 () Bool)

(assert (=> d!24079 e!59800))

(declare-fun res!46651 () Bool)

(assert (=> d!24079 (=> (not res!46651) (not e!59800))))

(declare-fun lt!44712 () ListLongMap!1517)

(assert (=> d!24079 (= res!46651 (contains!784 lt!44712 (_1!1155 lt!44507)))))

(declare-fun lt!44711 () List!1581)

(assert (=> d!24079 (= lt!44712 (ListLongMap!1518 lt!44711))))

(declare-fun lt!44709 () Unit!2738)

(declare-fun lt!44710 () Unit!2738)

(assert (=> d!24079 (= lt!44709 lt!44710)))

(assert (=> d!24079 (= (getValueByKey!144 lt!44711 (_1!1155 lt!44507)) (Some!149 (_2!1155 lt!44507)))))

(assert (=> d!24079 (= lt!44710 (lemmaContainsTupThenGetReturnValue!63 lt!44711 (_1!1155 lt!44507) (_2!1155 lt!44507)))))

(assert (=> d!24079 (= lt!44711 (insertStrictlySorted!65 (toList!774 lt!44504) (_1!1155 lt!44507) (_2!1155 lt!44507)))))

(assert (=> d!24079 (= (+!129 lt!44504 lt!44507) lt!44712)))

(declare-fun b!91662 () Bool)

(declare-fun res!46652 () Bool)

(assert (=> b!91662 (=> (not res!46652) (not e!59800))))

(assert (=> b!91662 (= res!46652 (= (getValueByKey!144 (toList!774 lt!44712) (_1!1155 lt!44507)) (Some!149 (_2!1155 lt!44507))))))

(declare-fun b!91663 () Bool)

(assert (=> b!91663 (= e!59800 (contains!786 (toList!774 lt!44712) lt!44507))))

(assert (= (and d!24079 res!46651) b!91662))

(assert (= (and b!91662 res!46652) b!91663))

(declare-fun m!98245 () Bool)

(assert (=> d!24079 m!98245))

(declare-fun m!98247 () Bool)

(assert (=> d!24079 m!98247))

(declare-fun m!98249 () Bool)

(assert (=> d!24079 m!98249))

(declare-fun m!98251 () Bool)

(assert (=> d!24079 m!98251))

(declare-fun m!98253 () Bool)

(assert (=> b!91662 m!98253))

(declare-fun m!98255 () Bool)

(assert (=> b!91663 m!98255))

(assert (=> b!91438 d!24079))

(declare-fun d!24081 () Bool)

(declare-fun e!59801 () Bool)

(assert (=> d!24081 e!59801))

(declare-fun res!46653 () Bool)

(assert (=> d!24081 (=> (not res!46653) (not e!59801))))

(declare-fun lt!44716 () ListLongMap!1517)

(assert (=> d!24081 (= res!46653 (contains!784 lt!44716 (_1!1155 lt!44511)))))

(declare-fun lt!44715 () List!1581)

(assert (=> d!24081 (= lt!44716 (ListLongMap!1518 lt!44715))))

(declare-fun lt!44713 () Unit!2738)

(declare-fun lt!44714 () Unit!2738)

(assert (=> d!24081 (= lt!44713 lt!44714)))

(assert (=> d!24081 (= (getValueByKey!144 lt!44715 (_1!1155 lt!44511)) (Some!149 (_2!1155 lt!44511)))))

(assert (=> d!24081 (= lt!44714 (lemmaContainsTupThenGetReturnValue!63 lt!44715 (_1!1155 lt!44511) (_2!1155 lt!44511)))))

(assert (=> d!24081 (= lt!44715 (insertStrictlySorted!65 (toList!774 lt!44510) (_1!1155 lt!44511) (_2!1155 lt!44511)))))

(assert (=> d!24081 (= (+!129 lt!44510 lt!44511) lt!44716)))

(declare-fun b!91664 () Bool)

(declare-fun res!46654 () Bool)

(assert (=> b!91664 (=> (not res!46654) (not e!59801))))

(assert (=> b!91664 (= res!46654 (= (getValueByKey!144 (toList!774 lt!44716) (_1!1155 lt!44511)) (Some!149 (_2!1155 lt!44511))))))

(declare-fun b!91665 () Bool)

(assert (=> b!91665 (= e!59801 (contains!786 (toList!774 lt!44716) lt!44511))))

(assert (= (and d!24081 res!46653) b!91664))

(assert (= (and b!91664 res!46654) b!91665))

(declare-fun m!98257 () Bool)

(assert (=> d!24081 m!98257))

(declare-fun m!98259 () Bool)

(assert (=> d!24081 m!98259))

(declare-fun m!98261 () Bool)

(assert (=> d!24081 m!98261))

(declare-fun m!98263 () Bool)

(assert (=> d!24081 m!98263))

(declare-fun m!98265 () Bool)

(assert (=> b!91664 m!98265))

(declare-fun m!98267 () Bool)

(assert (=> b!91665 m!98267))

(assert (=> b!91438 d!24081))

(declare-fun d!24083 () Bool)

(declare-fun e!59802 () Bool)

(assert (=> d!24083 e!59802))

(declare-fun res!46655 () Bool)

(assert (=> d!24083 (=> (not res!46655) (not e!59802))))

(declare-fun lt!44720 () ListLongMap!1517)

(assert (=> d!24083 (= res!46655 (contains!784 lt!44720 (_1!1155 lt!44507)))))

(declare-fun lt!44719 () List!1581)

(assert (=> d!24083 (= lt!44720 (ListLongMap!1518 lt!44719))))

(declare-fun lt!44717 () Unit!2738)

(declare-fun lt!44718 () Unit!2738)

(assert (=> d!24083 (= lt!44717 lt!44718)))

(assert (=> d!24083 (= (getValueByKey!144 lt!44719 (_1!1155 lt!44507)) (Some!149 (_2!1155 lt!44507)))))

(assert (=> d!24083 (= lt!44718 (lemmaContainsTupThenGetReturnValue!63 lt!44719 (_1!1155 lt!44507) (_2!1155 lt!44507)))))

(assert (=> d!24083 (= lt!44719 (insertStrictlySorted!65 (toList!774 (+!129 lt!44504 lt!44511)) (_1!1155 lt!44507) (_2!1155 lt!44507)))))

(assert (=> d!24083 (= (+!129 (+!129 lt!44504 lt!44511) lt!44507) lt!44720)))

(declare-fun b!91666 () Bool)

(declare-fun res!46656 () Bool)

(assert (=> b!91666 (=> (not res!46656) (not e!59802))))

(assert (=> b!91666 (= res!46656 (= (getValueByKey!144 (toList!774 lt!44720) (_1!1155 lt!44507)) (Some!149 (_2!1155 lt!44507))))))

(declare-fun b!91667 () Bool)

(assert (=> b!91667 (= e!59802 (contains!786 (toList!774 lt!44720) lt!44507))))

(assert (= (and d!24083 res!46655) b!91666))

(assert (= (and b!91666 res!46656) b!91667))

(declare-fun m!98269 () Bool)

(assert (=> d!24083 m!98269))

(declare-fun m!98271 () Bool)

(assert (=> d!24083 m!98271))

(declare-fun m!98273 () Bool)

(assert (=> d!24083 m!98273))

(declare-fun m!98275 () Bool)

(assert (=> d!24083 m!98275))

(declare-fun m!98277 () Bool)

(assert (=> b!91666 m!98277))

(declare-fun m!98279 () Bool)

(assert (=> b!91667 m!98279))

(assert (=> b!91438 d!24083))

(declare-fun d!24085 () Bool)

(assert (=> d!24085 (= (+!129 (+!129 lt!44504 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (+!129 (+!129 lt!44504 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))))

(declare-fun lt!44723 () Unit!2738)

(declare-fun choose!551 (ListLongMap!1517 (_ BitVec 64) V!3091 (_ BitVec 64) V!3091) Unit!2738)

(assert (=> d!24085 (= lt!44723 (choose!551 lt!44504 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))

(assert (=> d!24085 (not (= (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!24085 (= (addCommutativeForDiffKeys!48 lt!44504 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))) lt!44723)))

(declare-fun bs!3788 () Bool)

(assert (= bs!3788 d!24085))

(declare-fun m!98281 () Bool)

(assert (=> bs!3788 m!98281))

(declare-fun m!98283 () Bool)

(assert (=> bs!3788 m!98283))

(assert (=> bs!3788 m!97909))

(declare-fun m!98285 () Bool)

(assert (=> bs!3788 m!98285))

(assert (=> bs!3788 m!98283))

(declare-fun m!98287 () Bool)

(assert (=> bs!3788 m!98287))

(assert (=> bs!3788 m!98281))

(declare-fun m!98289 () Bool)

(assert (=> bs!3788 m!98289))

(assert (=> b!91438 d!24085))

(declare-fun d!24087 () Bool)

(assert (=> d!24087 (= (+!129 (+!129 lt!44519 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) (+!129 (+!129 lt!44519 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))))

(declare-fun lt!44724 () Unit!2738)

(assert (=> d!24087 (= lt!44724 (choose!551 lt!44519 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))

(assert (=> d!24087 (not (= (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!24087 (= (addCommutativeForDiffKeys!48 lt!44519 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) lt!44724)))

(declare-fun bs!3789 () Bool)

(assert (= bs!3789 d!24087))

(declare-fun m!98291 () Bool)

(assert (=> bs!3789 m!98291))

(declare-fun m!98293 () Bool)

(assert (=> bs!3789 m!98293))

(assert (=> bs!3789 m!97909))

(declare-fun m!98295 () Bool)

(assert (=> bs!3789 m!98295))

(assert (=> bs!3789 m!98293))

(declare-fun m!98297 () Bool)

(assert (=> bs!3789 m!98297))

(assert (=> bs!3789 m!98291))

(declare-fun m!98299 () Bool)

(assert (=> bs!3789 m!98299))

(assert (=> b!91438 d!24087))

(declare-fun d!24089 () Bool)

(assert (=> d!24089 (= (array_inv!1179 (_keys!4086 newMap!16)) (bvsge (size!2213 (_keys!4086 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!91420 d!24089))

(declare-fun d!24091 () Bool)

(assert (=> d!24091 (= (array_inv!1180 (_values!2389 newMap!16)) (bvsge (size!2214 (_values!2389 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!91420 d!24091))

(declare-fun d!24093 () Bool)

(declare-fun e!59807 () Bool)

(assert (=> d!24093 e!59807))

(declare-fun res!46659 () Bool)

(assert (=> d!24093 (=> res!46659 e!59807)))

(declare-fun lt!44733 () Bool)

(assert (=> d!24093 (= res!46659 (not lt!44733))))

(declare-fun lt!44736 () Bool)

(assert (=> d!24093 (= lt!44733 lt!44736)))

(declare-fun lt!44734 () Unit!2738)

(declare-fun e!59808 () Unit!2738)

(assert (=> d!24093 (= lt!44734 e!59808)))

(declare-fun c!15217 () Bool)

(assert (=> d!24093 (= c!15217 lt!44736)))

(declare-fun containsKey!148 (List!1581 (_ BitVec 64)) Bool)

(assert (=> d!24093 (= lt!44736 (containsKey!148 (toList!774 lt!44515) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (=> d!24093 (= (contains!784 lt!44515 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) lt!44733)))

(declare-fun b!91674 () Bool)

(declare-fun lt!44735 () Unit!2738)

(assert (=> b!91674 (= e!59808 lt!44735)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!97 (List!1581 (_ BitVec 64)) Unit!2738)

(assert (=> b!91674 (= lt!44735 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 lt!44515) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun isDefined!98 (Option!150) Bool)

(assert (=> b!91674 (isDefined!98 (getValueByKey!144 (toList!774 lt!44515) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun b!91675 () Bool)

(declare-fun Unit!2747 () Unit!2738)

(assert (=> b!91675 (= e!59808 Unit!2747)))

(declare-fun b!91676 () Bool)

(assert (=> b!91676 (= e!59807 (isDefined!98 (getValueByKey!144 (toList!774 lt!44515) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355))))))

(assert (= (and d!24093 c!15217) b!91674))

(assert (= (and d!24093 (not c!15217)) b!91675))

(assert (= (and d!24093 (not res!46659)) b!91676))

(assert (=> d!24093 m!97909))

(declare-fun m!98301 () Bool)

(assert (=> d!24093 m!98301))

(assert (=> b!91674 m!97909))

(declare-fun m!98303 () Bool)

(assert (=> b!91674 m!98303))

(assert (=> b!91674 m!97909))

(declare-fun m!98305 () Bool)

(assert (=> b!91674 m!98305))

(assert (=> b!91674 m!98305))

(declare-fun m!98307 () Bool)

(assert (=> b!91674 m!98307))

(assert (=> b!91676 m!97909))

(assert (=> b!91676 m!98305))

(assert (=> b!91676 m!98305))

(assert (=> b!91676 m!98307))

(assert (=> b!91440 d!24093))

(declare-fun call!9022 () ListLongMap!1517)

(declare-fun call!8999 () ListLongMap!1517)

(declare-fun b!91753 () Bool)

(declare-fun e!59851 () Bool)

(assert (=> b!91753 (= e!59851 (= call!9022 (+!129 call!8999 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(declare-fun call!9018 () Bool)

(declare-fun c!15251 () Bool)

(declare-datatypes ((SeekEntryResult!258 0))(
  ( (MissingZero!258 (index!3172 (_ BitVec 32))) (Found!258 (index!3173 (_ BitVec 32))) (Intermediate!258 (undefined!1070 Bool) (index!3174 (_ BitVec 32)) (x!12457 (_ BitVec 32))) (Undefined!258) (MissingVacant!258 (index!3175 (_ BitVec 32))) )
))
(declare-fun lt!44816 () SeekEntryResult!258)

(declare-fun bm!8996 () Bool)

(declare-fun call!9021 () ListLongMap!1517)

(assert (=> bm!8996 (= call!9018 (contains!784 call!9021 (ite c!15251 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (select (arr!1966 (_keys!4086 newMap!16)) (index!3173 lt!44816)))))))

(declare-fun call!9015 () tuple2!2292)

(declare-fun bm!8997 () Bool)

(declare-fun c!15247 () Bool)

(declare-fun updateHelperNewKey!36 (LongMapFixedSize!804 (_ BitVec 64) V!3091 (_ BitVec 32)) tuple2!2292)

(assert (=> bm!8997 (= call!9015 (updateHelperNewKey!36 newMap!16 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521 (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816))))))

(declare-fun bm!8998 () Bool)

(declare-fun call!9010 () Bool)

(declare-fun call!9020 () Bool)

(assert (=> bm!8998 (= call!9010 call!9020)))

(declare-fun b!91754 () Bool)

(declare-fun lt!44802 () SeekEntryResult!258)

(declare-fun e!59850 () Bool)

(assert (=> b!91754 (= e!59850 (= (select (arr!1966 (_keys!4086 newMap!16)) (index!3173 lt!44802)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun bm!8999 () Bool)

(declare-fun call!9019 () SeekEntryResult!258)

(declare-fun call!9006 () SeekEntryResult!258)

(assert (=> bm!8999 (= call!9019 call!9006)))

(declare-fun bm!9000 () Bool)

(declare-fun call!9012 () SeekEntryResult!258)

(assert (=> bm!9000 (= call!9012 call!9006)))

(declare-fun bm!9001 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4134 (_ BitVec 32)) SeekEntryResult!258)

(assert (=> bm!9001 (= call!9006 (seekEntryOrOpen!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (_keys!4086 newMap!16) (mask!6466 newMap!16)))))

(declare-fun b!91755 () Bool)

(declare-fun res!46693 () Bool)

(declare-fun lt!44791 () SeekEntryResult!258)

(assert (=> b!91755 (= res!46693 (= (select (arr!1966 (_keys!4086 newMap!16)) (index!3175 lt!44791)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!59861 () Bool)

(assert (=> b!91755 (=> (not res!46693) (not e!59861))))

(declare-fun b!91756 () Bool)

(declare-fun e!59856 () Bool)

(assert (=> b!91756 (= e!59856 (= call!9022 call!8999))))

(declare-fun b!91757 () Bool)

(declare-fun e!59859 () Bool)

(declare-fun call!9013 () Bool)

(assert (=> b!91757 (= e!59859 (not call!9013))))

(declare-fun b!91758 () Bool)

(declare-fun res!46691 () Bool)

(assert (=> b!91758 (= res!46691 call!9020)))

(assert (=> b!91758 (=> (not res!46691) (not e!59850))))

(declare-fun b!91759 () Bool)

(declare-fun e!59863 () Bool)

(declare-fun call!9016 () Bool)

(assert (=> b!91759 (= e!59863 (not call!9016))))

(declare-fun c!15253 () Bool)

(declare-fun lt!44807 () SeekEntryResult!258)

(declare-fun c!15249 () Bool)

(declare-fun c!15244 () Bool)

(declare-fun call!9009 () Bool)

(declare-fun c!15248 () Bool)

(declare-fun lt!44814 () SeekEntryResult!258)

(declare-fun bm!9002 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!9002 (= call!9009 (inRange!0 (ite c!15251 (ite c!15253 (index!3173 lt!44814) (ite c!15248 (index!3172 lt!44807) (index!3175 lt!44807))) (ite c!15244 (index!3173 lt!44802) (ite c!15249 (index!3172 lt!44791) (index!3175 lt!44791)))) (mask!6466 newMap!16)))))

(declare-fun b!91760 () Bool)

(declare-fun e!59862 () Bool)

(assert (=> b!91760 (= e!59862 e!59861)))

(declare-fun res!46700 () Bool)

(assert (=> b!91760 (= res!46700 call!9010)))

(assert (=> b!91760 (=> (not res!46700) (not e!59861))))

(declare-fun b!91761 () Bool)

(declare-fun lt!44801 () tuple2!2292)

(assert (=> b!91761 (= lt!44801 call!9015)))

(declare-fun e!59867 () tuple2!2292)

(assert (=> b!91761 (= e!59867 (tuple2!2293 (_1!1156 lt!44801) (_2!1156 lt!44801)))))

(declare-fun b!91762 () Bool)

(declare-fun e!59857 () Bool)

(assert (=> b!91762 (= e!59857 e!59863)))

(declare-fun res!46689 () Bool)

(declare-fun call!9001 () Bool)

(assert (=> b!91762 (= res!46689 call!9001)))

(assert (=> b!91762 (=> (not res!46689) (not e!59863))))

(declare-fun bm!9003 () Bool)

(declare-fun call!9008 () ListLongMap!1517)

(declare-fun call!9017 () ListLongMap!1517)

(assert (=> bm!9003 (= call!9008 call!9017)))

(declare-fun call!9014 () Unit!2738)

(declare-fun bm!9004 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!36 (array!4134 array!4136 (_ BitVec 32) (_ BitVec 32) V!3091 V!3091 (_ BitVec 64) Int) Unit!2738)

(assert (=> bm!9004 (= call!9014 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!36 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (defaultEntry!2406 newMap!16)))))

(declare-fun lt!44805 () (_ BitVec 32))

(declare-fun bm!9005 () Bool)

(declare-fun c!15242 () Bool)

(declare-fun c!15246 () Bool)

(declare-fun call!9005 () ListLongMap!1517)

(assert (=> bm!9005 (= call!9005 (getCurrentListMap!456 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (ite c!15246 (ite c!15242 (extraKeys!2237 newMap!16) lt!44805) (extraKeys!2237 newMap!16)) (zeroValue!2294 newMap!16) (ite c!15246 (ite c!15242 (minValue!2294 newMap!16) lt!44521) (minValue!2294 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun b!91763 () Bool)

(declare-fun lt!44793 () Unit!2738)

(declare-fun lt!44806 () Unit!2738)

(assert (=> b!91763 (= lt!44793 lt!44806)))

(declare-fun call!9000 () ListLongMap!1517)

(assert (=> b!91763 (= call!9008 call!9000)))

(declare-fun lt!44800 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!36 (array!4134 array!4136 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3091 V!3091 V!3091 Int) Unit!2738)

(assert (=> b!91763 (= lt!44806 (lemmaChangeZeroKeyThenAddPairToListMap!36 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) lt!44800 (zeroValue!2294 newMap!16) lt!44521 (minValue!2294 newMap!16) (defaultEntry!2406 newMap!16)))))

(assert (=> b!91763 (= lt!44800 (bvor (extraKeys!2237 newMap!16) #b00000000000000000000000000000001))))

(declare-fun e!59864 () tuple2!2292)

(assert (=> b!91763 (= e!59864 (tuple2!2293 true (LongMapFixedSize!805 (defaultEntry!2406 newMap!16) (mask!6466 newMap!16) (bvor (extraKeys!2237 newMap!16) #b00000000000000000000000000000001) lt!44521 (minValue!2294 newMap!16) (_size!451 newMap!16) (_keys!4086 newMap!16) (_values!2389 newMap!16) (_vacant!451 newMap!16))))))

(declare-fun bm!9006 () Bool)

(declare-fun call!9007 () ListLongMap!1517)

(assert (=> bm!9006 (= call!9007 call!9005)))

(declare-fun call!9002 () Bool)

(declare-fun bm!9007 () Bool)

(assert (=> bm!9007 (= call!9002 (arrayContainsKey!0 (_keys!4086 newMap!16) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!91764 () Bool)

(declare-fun e!59858 () Unit!2738)

(declare-fun Unit!2748 () Unit!2738)

(assert (=> b!91764 (= e!59858 Unit!2748)))

(declare-fun lt!44796 () Unit!2738)

(assert (=> b!91764 (= lt!44796 call!9014)))

(assert (=> b!91764 (= lt!44791 call!9012)))

(assert (=> b!91764 (= c!15249 ((_ is MissingZero!258) lt!44791))))

(declare-fun e!59860 () Bool)

(assert (=> b!91764 e!59860))

(declare-fun lt!44795 () Unit!2738)

(assert (=> b!91764 (= lt!44795 lt!44796)))

(assert (=> b!91764 false))

(declare-fun b!91765 () Bool)

(declare-fun lt!44812 () Unit!2738)

(declare-fun lt!44794 () Unit!2738)

(assert (=> b!91765 (= lt!44812 lt!44794)))

(assert (=> b!91765 call!9018))

(declare-fun lt!44813 () array!4136)

(declare-fun lemmaValidKeyInArrayIsInListMap!94 (array!4134 array!4136 (_ BitVec 32) (_ BitVec 32) V!3091 V!3091 (_ BitVec 32) Int) Unit!2738)

(assert (=> b!91765 (= lt!44794 (lemmaValidKeyInArrayIsInListMap!94 (_keys!4086 newMap!16) lt!44813 (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) (index!3173 lt!44816) (defaultEntry!2406 newMap!16)))))

(assert (=> b!91765 (= lt!44813 (array!4137 (store (arr!1967 (_values!2389 newMap!16)) (index!3173 lt!44816) (ValueCellFull!948 lt!44521)) (size!2214 (_values!2389 newMap!16))))))

(declare-fun lt!44792 () Unit!2738)

(declare-fun lt!44811 () Unit!2738)

(assert (=> b!91765 (= lt!44792 lt!44811)))

(assert (=> b!91765 (= call!9017 (getCurrentListMap!456 (_keys!4086 newMap!16) (array!4137 (store (arr!1967 (_values!2389 newMap!16)) (index!3173 lt!44816) (ValueCellFull!948 lt!44521)) (size!2214 (_values!2389 newMap!16))) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!36 (array!4134 array!4136 (_ BitVec 32) (_ BitVec 32) V!3091 V!3091 (_ BitVec 32) (_ BitVec 64) V!3091 Int) Unit!2738)

(assert (=> b!91765 (= lt!44811 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!36 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) (index!3173 lt!44816) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!44809 () Unit!2738)

(assert (=> b!91765 (= lt!44809 e!59858)))

(assert (=> b!91765 (= c!15244 (contains!784 call!9005 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (=> b!91765 (= e!59867 (tuple2!2293 true (LongMapFixedSize!805 (defaultEntry!2406 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) (_size!451 newMap!16) (_keys!4086 newMap!16) (array!4137 (store (arr!1967 (_values!2389 newMap!16)) (index!3173 lt!44816) (ValueCellFull!948 lt!44521)) (size!2214 (_values!2389 newMap!16))) (_vacant!451 newMap!16))))))

(declare-fun b!91766 () Bool)

(declare-fun res!46696 () Bool)

(assert (=> b!91766 (=> (not res!46696) (not e!59859))))

(assert (=> b!91766 (= res!46696 call!9010)))

(assert (=> b!91766 (= e!59860 e!59859)))

(declare-fun b!91767 () Bool)

(declare-fun e!59852 () tuple2!2292)

(assert (=> b!91767 (= e!59852 e!59867)))

(declare-fun c!15250 () Bool)

(assert (=> b!91767 (= c!15250 ((_ is MissingZero!258) lt!44816))))

(declare-fun b!91768 () Bool)

(declare-fun e!59866 () Bool)

(assert (=> b!91768 (= e!59866 (not call!9016))))

(declare-fun b!91769 () Bool)

(declare-fun res!46690 () Bool)

(declare-fun call!9004 () Bool)

(assert (=> b!91769 (= res!46690 call!9004)))

(declare-fun e!59853 () Bool)

(assert (=> b!91769 (=> (not res!46690) (not e!59853))))

(declare-fun b!91770 () Bool)

(declare-fun res!46699 () Bool)

(assert (=> b!91770 (=> (not res!46699) (not e!59866))))

(assert (=> b!91770 (= res!46699 (= (select (arr!1966 (_keys!4086 newMap!16)) (index!3172 lt!44807)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!9008 () Bool)

(assert (=> bm!9008 (= call!9004 call!9009)))

(declare-fun b!91771 () Bool)

(declare-fun e!59868 () tuple2!2292)

(declare-fun e!59854 () tuple2!2292)

(assert (=> b!91771 (= e!59868 e!59854)))

(assert (=> b!91771 (= lt!44816 (seekEntryOrOpen!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (_keys!4086 newMap!16) (mask!6466 newMap!16)))))

(assert (=> b!91771 (= c!15251 ((_ is Undefined!258) lt!44816))))

(declare-fun bm!9009 () Bool)

(declare-fun lt!44803 () tuple2!2292)

(assert (=> bm!9009 (= call!9022 (map!1224 (_2!1156 lt!44803)))))

(declare-fun b!91772 () Bool)

(declare-fun c!15252 () Bool)

(assert (=> b!91772 (= c!15252 ((_ is MissingVacant!258) lt!44791))))

(assert (=> b!91772 (= e!59860 e!59862)))

(declare-fun bm!9010 () Bool)

(declare-fun call!9011 () ListLongMap!1517)

(assert (=> bm!9010 (= call!9021 call!9011)))

(declare-fun bm!9011 () Bool)

(assert (=> bm!9011 (= call!9011 (getCurrentListMap!456 (_keys!4086 newMap!16) (ite (or c!15246 c!15251) (_values!2389 newMap!16) lt!44813) (mask!6466 newMap!16) (ite (and c!15246 c!15242) lt!44800 (extraKeys!2237 newMap!16)) (ite (and c!15246 c!15242) lt!44521 (zeroValue!2294 newMap!16)) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun bm!9012 () Bool)

(assert (=> bm!9012 (= call!8999 (map!1224 newMap!16))))

(declare-fun b!91773 () Bool)

(assert (=> b!91773 (= e!59857 ((_ is Undefined!258) lt!44807))))

(declare-fun b!91774 () Bool)

(declare-fun lt!44798 () Unit!2738)

(declare-fun e!59855 () Unit!2738)

(assert (=> b!91774 (= lt!44798 e!59855)))

(assert (=> b!91774 (= c!15253 call!9018)))

(assert (=> b!91774 (= e!59854 (tuple2!2293 false newMap!16))))

(declare-fun b!91775 () Bool)

(declare-fun Unit!2749 () Unit!2738)

(assert (=> b!91775 (= e!59855 Unit!2749)))

(declare-fun lt!44817 () Unit!2738)

(declare-fun call!9003 () Unit!2738)

(assert (=> b!91775 (= lt!44817 call!9003)))

(assert (=> b!91775 (= lt!44814 call!9019)))

(declare-fun res!46688 () Bool)

(assert (=> b!91775 (= res!46688 ((_ is Found!258) lt!44814))))

(assert (=> b!91775 (=> (not res!46688) (not e!59853))))

(assert (=> b!91775 e!59853))

(declare-fun lt!44815 () Unit!2738)

(assert (=> b!91775 (= lt!44815 lt!44817)))

(assert (=> b!91775 false))

(declare-fun bm!9013 () Bool)

(assert (=> bm!9013 (= call!9020 call!9009)))

(declare-fun b!91776 () Bool)

(declare-fun lt!44808 () Unit!2738)

(assert (=> b!91776 (= e!59855 lt!44808)))

(assert (=> b!91776 (= lt!44808 call!9014)))

(assert (=> b!91776 (= lt!44807 call!9019)))

(assert (=> b!91776 (= c!15248 ((_ is MissingZero!258) lt!44807))))

(declare-fun e!59865 () Bool)

(assert (=> b!91776 e!59865))

(declare-fun bm!9014 () Bool)

(assert (=> bm!9014 (= call!9016 call!9002)))

(declare-fun bm!9015 () Bool)

(assert (=> bm!9015 (= call!9013 call!9002)))

(declare-fun b!91777 () Bool)

(declare-fun res!46692 () Bool)

(assert (=> b!91777 (=> (not res!46692) (not e!59859))))

(assert (=> b!91777 (= res!46692 (= (select (arr!1966 (_keys!4086 newMap!16)) (index!3172 lt!44791)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!91778 () Bool)

(assert (=> b!91778 (= e!59862 ((_ is Undefined!258) lt!44791))))

(declare-fun b!91779 () Bool)

(declare-fun lt!44810 () Unit!2738)

(assert (=> b!91779 (= e!59858 lt!44810)))

(assert (=> b!91779 (= lt!44810 call!9003)))

(assert (=> b!91779 (= lt!44802 call!9012)))

(declare-fun res!46697 () Bool)

(assert (=> b!91779 (= res!46697 ((_ is Found!258) lt!44802))))

(assert (=> b!91779 (=> (not res!46697) (not e!59850))))

(assert (=> b!91779 e!59850))

(declare-fun b!91780 () Bool)

(assert (=> b!91780 (= e!59868 e!59864)))

(assert (=> b!91780 (= c!15242 (= (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!91781 () Bool)

(declare-fun e!59849 () Bool)

(assert (=> b!91781 (= e!59849 e!59856)))

(declare-fun c!15243 () Bool)

(assert (=> b!91781 (= c!15243 (_1!1156 lt!44803))))

(declare-fun bm!9016 () Bool)

(assert (=> bm!9016 (= call!9001 call!9004)))

(declare-fun b!91782 () Bool)

(assert (=> b!91782 (= e!59853 (= (select (arr!1966 (_keys!4086 newMap!16)) (index!3173 lt!44814)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun bm!9017 () Bool)

(assert (=> bm!9017 (= call!9017 (+!129 (ite c!15246 (ite c!15242 call!9007 call!9000) call!9005) (ite c!15246 (ite c!15242 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 lt!44521) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 lt!44521)) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(declare-fun b!91783 () Bool)

(assert (=> b!91783 (= e!59861 (not call!9013))))

(declare-fun bm!9018 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!36 (array!4134 array!4136 (_ BitVec 32) (_ BitVec 32) V!3091 V!3091 (_ BitVec 64) Int) Unit!2738)

(assert (=> bm!9018 (= call!9003 (lemmaInListMapThenSeekEntryOrOpenFindsIt!36 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (defaultEntry!2406 newMap!16)))))

(declare-fun b!91784 () Bool)

(assert (=> b!91784 (= e!59856 e!59851)))

(declare-fun res!46695 () Bool)

(assert (=> b!91784 (= res!46695 (contains!784 call!9022 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (=> b!91784 (=> (not res!46695) (not e!59851))))

(declare-fun b!91785 () Bool)

(declare-fun lt!44797 () Unit!2738)

(declare-fun lt!44799 () Unit!2738)

(assert (=> b!91785 (= lt!44797 lt!44799)))

(assert (=> b!91785 (= call!9008 call!9007)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!36 (array!4134 array!4136 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3091 V!3091 V!3091 Int) Unit!2738)

(assert (=> b!91785 (= lt!44799 (lemmaChangeLongMinValueKeyThenAddPairToListMap!36 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) lt!44805 (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) lt!44521 (defaultEntry!2406 newMap!16)))))

(assert (=> b!91785 (= lt!44805 (bvor (extraKeys!2237 newMap!16) #b00000000000000000000000000000010))))

(assert (=> b!91785 (= e!59864 (tuple2!2293 true (LongMapFixedSize!805 (defaultEntry!2406 newMap!16) (mask!6466 newMap!16) (bvor (extraKeys!2237 newMap!16) #b00000000000000000000000000000010) (zeroValue!2294 newMap!16) lt!44521 (_size!451 newMap!16) (_keys!4086 newMap!16) (_values!2389 newMap!16) (_vacant!451 newMap!16))))))

(declare-fun b!91786 () Bool)

(declare-fun res!46694 () Bool)

(assert (=> b!91786 (= res!46694 (= (select (arr!1966 (_keys!4086 newMap!16)) (index!3175 lt!44807)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!91786 (=> (not res!46694) (not e!59863))))

(declare-fun d!24095 () Bool)

(assert (=> d!24095 e!59849))

(declare-fun res!46701 () Bool)

(assert (=> d!24095 (=> (not res!46701) (not e!59849))))

(assert (=> d!24095 (= res!46701 (valid!355 (_2!1156 lt!44803)))))

(assert (=> d!24095 (= lt!44803 e!59868)))

(assert (=> d!24095 (= c!15246 (= (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (bvneg (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355))))))

(assert (=> d!24095 (valid!355 newMap!16)))

(assert (=> d!24095 (= (update!134 newMap!16 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521) lt!44803)))

(declare-fun b!91787 () Bool)

(assert (=> b!91787 (= c!15247 ((_ is MissingVacant!258) lt!44816))))

(assert (=> b!91787 (= e!59854 e!59852)))

(declare-fun b!91788 () Bool)

(declare-fun c!15245 () Bool)

(assert (=> b!91788 (= c!15245 ((_ is MissingVacant!258) lt!44807))))

(assert (=> b!91788 (= e!59865 e!59857)))

(declare-fun bm!9019 () Bool)

(assert (=> bm!9019 (= call!9000 call!9011)))

(declare-fun b!91789 () Bool)

(declare-fun lt!44804 () tuple2!2292)

(assert (=> b!91789 (= e!59852 (tuple2!2293 (_1!1156 lt!44804) (_2!1156 lt!44804)))))

(assert (=> b!91789 (= lt!44804 call!9015)))

(declare-fun b!91790 () Bool)

(declare-fun res!46698 () Bool)

(assert (=> b!91790 (=> (not res!46698) (not e!59866))))

(assert (=> b!91790 (= res!46698 call!9001)))

(assert (=> b!91790 (= e!59865 e!59866)))

(assert (= (and d!24095 c!15246) b!91780))

(assert (= (and d!24095 (not c!15246)) b!91771))

(assert (= (and b!91780 c!15242) b!91763))

(assert (= (and b!91780 (not c!15242)) b!91785))

(assert (= (or b!91763 b!91785) bm!9019))

(assert (= (or b!91763 b!91785) bm!9006))

(assert (= (or b!91763 b!91785) bm!9003))

(assert (= (and b!91771 c!15251) b!91774))

(assert (= (and b!91771 (not c!15251)) b!91787))

(assert (= (and b!91774 c!15253) b!91775))

(assert (= (and b!91774 (not c!15253)) b!91776))

(assert (= (and b!91775 res!46688) b!91769))

(assert (= (and b!91769 res!46690) b!91782))

(assert (= (and b!91776 c!15248) b!91790))

(assert (= (and b!91776 (not c!15248)) b!91788))

(assert (= (and b!91790 res!46698) b!91770))

(assert (= (and b!91770 res!46699) b!91768))

(assert (= (and b!91788 c!15245) b!91762))

(assert (= (and b!91788 (not c!15245)) b!91773))

(assert (= (and b!91762 res!46689) b!91786))

(assert (= (and b!91786 res!46694) b!91759))

(assert (= (or b!91790 b!91762) bm!9016))

(assert (= (or b!91768 b!91759) bm!9014))

(assert (= (or b!91769 bm!9016) bm!9008))

(assert (= (or b!91775 b!91776) bm!8999))

(assert (= (and b!91787 c!15247) b!91789))

(assert (= (and b!91787 (not c!15247)) b!91767))

(assert (= (and b!91767 c!15250) b!91761))

(assert (= (and b!91767 (not c!15250)) b!91765))

(assert (= (and b!91765 c!15244) b!91779))

(assert (= (and b!91765 (not c!15244)) b!91764))

(assert (= (and b!91779 res!46697) b!91758))

(assert (= (and b!91758 res!46691) b!91754))

(assert (= (and b!91764 c!15249) b!91766))

(assert (= (and b!91764 (not c!15249)) b!91772))

(assert (= (and b!91766 res!46696) b!91777))

(assert (= (and b!91777 res!46692) b!91757))

(assert (= (and b!91772 c!15252) b!91760))

(assert (= (and b!91772 (not c!15252)) b!91778))

(assert (= (and b!91760 res!46700) b!91755))

(assert (= (and b!91755 res!46693) b!91783))

(assert (= (or b!91766 b!91760) bm!8998))

(assert (= (or b!91757 b!91783) bm!9015))

(assert (= (or b!91758 bm!8998) bm!9013))

(assert (= (or b!91779 b!91764) bm!9000))

(assert (= (or b!91789 b!91761) bm!8997))

(assert (= (or bm!9014 bm!9015) bm!9007))

(assert (= (or b!91775 b!91779) bm!9018))

(assert (= (or bm!9008 bm!9013) bm!9002))

(assert (= (or b!91774 b!91765) bm!9010))

(assert (= (or bm!8999 bm!9000) bm!9001))

(assert (= (or b!91776 b!91764) bm!9004))

(assert (= (or b!91774 b!91765) bm!8996))

(assert (= (or bm!9019 bm!9010) bm!9011))

(assert (= (or bm!9006 b!91765) bm!9005))

(assert (= (or bm!9003 b!91765) bm!9017))

(assert (= (and d!24095 res!46701) b!91781))

(assert (= (and b!91781 c!15243) b!91784))

(assert (= (and b!91781 (not c!15243)) b!91756))

(assert (= (and b!91784 res!46695) b!91753))

(assert (= (or b!91784 b!91753 b!91756) bm!9009))

(assert (= (or b!91753 b!91756) bm!9012))

(declare-fun m!98309 () Bool)

(assert (=> b!91763 m!98309))

(declare-fun m!98311 () Bool)

(assert (=> b!91753 m!98311))

(declare-fun m!98313 () Bool)

(assert (=> bm!9002 m!98313))

(assert (=> bm!9004 m!97909))

(declare-fun m!98315 () Bool)

(assert (=> bm!9004 m!98315))

(assert (=> b!91771 m!97909))

(declare-fun m!98317 () Bool)

(assert (=> b!91771 m!98317))

(declare-fun m!98319 () Bool)

(assert (=> b!91755 m!98319))

(assert (=> bm!9018 m!97909))

(declare-fun m!98321 () Bool)

(assert (=> bm!9018 m!98321))

(declare-fun m!98323 () Bool)

(assert (=> b!91786 m!98323))

(declare-fun m!98325 () Bool)

(assert (=> b!91777 m!98325))

(declare-fun m!98327 () Bool)

(assert (=> b!91754 m!98327))

(assert (=> bm!9012 m!97973))

(declare-fun m!98329 () Bool)

(assert (=> d!24095 m!98329))

(assert (=> d!24095 m!97969))

(declare-fun m!98331 () Bool)

(assert (=> bm!9017 m!98331))

(declare-fun m!98333 () Bool)

(assert (=> bm!9009 m!98333))

(assert (=> bm!9001 m!97909))

(assert (=> bm!9001 m!98317))

(declare-fun m!98335 () Bool)

(assert (=> bm!9005 m!98335))

(assert (=> b!91784 m!97909))

(declare-fun m!98337 () Bool)

(assert (=> b!91784 m!98337))

(declare-fun m!98339 () Bool)

(assert (=> b!91765 m!98339))

(declare-fun m!98341 () Bool)

(assert (=> b!91765 m!98341))

(declare-fun m!98343 () Bool)

(assert (=> b!91765 m!98343))

(assert (=> b!91765 m!97909))

(declare-fun m!98345 () Bool)

(assert (=> b!91765 m!98345))

(assert (=> b!91765 m!97909))

(declare-fun m!98347 () Bool)

(assert (=> b!91765 m!98347))

(declare-fun m!98349 () Bool)

(assert (=> bm!8996 m!98349))

(declare-fun m!98351 () Bool)

(assert (=> bm!8996 m!98351))

(assert (=> bm!9007 m!97909))

(declare-fun m!98353 () Bool)

(assert (=> bm!9007 m!98353))

(declare-fun m!98355 () Bool)

(assert (=> bm!9011 m!98355))

(declare-fun m!98357 () Bool)

(assert (=> b!91770 m!98357))

(assert (=> bm!8997 m!97909))

(declare-fun m!98359 () Bool)

(assert (=> bm!8997 m!98359))

(declare-fun m!98361 () Bool)

(assert (=> b!91785 m!98361))

(declare-fun m!98363 () Bool)

(assert (=> b!91782 m!98363))

(assert (=> b!91440 d!24095))

(declare-fun d!24097 () Bool)

(assert (=> d!24097 (not (arrayContainsKey!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!44820 () Unit!2738)

(declare-fun choose!68 (array!4134 (_ BitVec 32) (_ BitVec 64) List!1582) Unit!2738)

(assert (=> d!24097 (= lt!44820 (choose!68 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (Cons!1578 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) Nil!1579)))))

(assert (=> d!24097 (bvslt (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!24097 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (Cons!1578 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) Nil!1579)) lt!44820)))

(declare-fun bs!3790 () Bool)

(assert (= bs!3790 d!24097))

(assert (=> bs!3790 m!97909))

(assert (=> bs!3790 m!97927))

(assert (=> bs!3790 m!97909))

(declare-fun m!98365 () Bool)

(assert (=> bs!3790 m!98365))

(assert (=> b!91434 d!24097))

(declare-fun d!24099 () Bool)

(assert (=> d!24099 (arrayNoDuplicates!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) from!355 Nil!1579)))

(declare-fun lt!44823 () Unit!2738)

(declare-fun choose!39 (array!4134 (_ BitVec 32) (_ BitVec 32)) Unit!2738)

(assert (=> d!24099 (= lt!44823 (choose!39 (_keys!4086 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!24099 (bvslt (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!24099 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000000 from!355) lt!44823)))

(declare-fun bs!3791 () Bool)

(assert (= bs!3791 d!24099))

(assert (=> bs!3791 m!97923))

(declare-fun m!98367 () Bool)

(assert (=> bs!3791 m!98367))

(assert (=> b!91434 d!24099))

(declare-fun d!24101 () Bool)

(declare-fun res!46706 () Bool)

(declare-fun e!59873 () Bool)

(assert (=> d!24101 (=> res!46706 e!59873)))

(assert (=> d!24101 (= res!46706 (= (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (=> d!24101 (= (arrayContainsKey!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!59873)))

(declare-fun b!91795 () Bool)

(declare-fun e!59874 () Bool)

(assert (=> b!91795 (= e!59873 e!59874)))

(declare-fun res!46707 () Bool)

(assert (=> b!91795 (=> (not res!46707) (not e!59874))))

(assert (=> b!91795 (= res!46707 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun b!91796 () Bool)

(assert (=> b!91796 (= e!59874 (arrayContainsKey!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!24101 (not res!46706)) b!91795))

(assert (= (and b!91795 res!46707) b!91796))

(assert (=> d!24101 m!98075))

(assert (=> b!91796 m!97909))

(declare-fun m!98369 () Bool)

(assert (=> b!91796 m!98369))

(assert (=> b!91434 d!24101))

(declare-fun d!24103 () Bool)

(declare-fun e!59877 () Bool)

(assert (=> d!24103 e!59877))

(declare-fun c!15256 () Bool)

(assert (=> d!24103 (= c!15256 (and (not (= (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!44826 () Unit!2738)

(declare-fun choose!552 (array!4134 array!4136 (_ BitVec 32) (_ BitVec 32) V!3091 V!3091 (_ BitVec 64) (_ BitVec 32) Int) Unit!2738)

(assert (=> d!24103 (= lt!44826 (choose!552 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))))))

(assert (=> d!24103 (validMask!0 (mask!6466 (v!2722 (underlying!315 thiss!992))))))

(assert (=> d!24103 (= (lemmaListMapContainsThenArrayContainsFrom!85 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))) lt!44826)))

(declare-fun b!91801 () Bool)

(assert (=> b!91801 (= e!59877 (arrayContainsKey!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!91802 () Bool)

(assert (=> b!91802 (= e!59877 (ite (= (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!24103 c!15256) b!91801))

(assert (= (and d!24103 (not c!15256)) b!91802))

(assert (=> d!24103 m!97909))

(declare-fun m!98371 () Bool)

(assert (=> d!24103 m!98371))

(assert (=> d!24103 m!98111))

(assert (=> b!91801 m!97909))

(assert (=> b!91801 m!97927))

(assert (=> b!91434 d!24103))

(declare-fun c!15259 () Bool)

(declare-fun call!9025 () Bool)

(declare-fun bm!9022 () Bool)

(assert (=> bm!9022 (= call!9025 (arrayNoDuplicates!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!15259 (Cons!1578 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) Nil!1579) Nil!1579)))))

(declare-fun b!91813 () Bool)

(declare-fun e!59888 () Bool)

(assert (=> b!91813 (= e!59888 call!9025)))

(declare-fun b!91814 () Bool)

(declare-fun e!59889 () Bool)

(declare-fun contains!787 (List!1582 (_ BitVec 64)) Bool)

(assert (=> b!91814 (= e!59889 (contains!787 Nil!1579 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun d!24105 () Bool)

(declare-fun res!46716 () Bool)

(declare-fun e!59887 () Bool)

(assert (=> d!24105 (=> res!46716 e!59887)))

(assert (=> d!24105 (= res!46716 (bvsge from!355 (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(assert (=> d!24105 (= (arrayNoDuplicates!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) from!355 Nil!1579) e!59887)))

(declare-fun b!91815 () Bool)

(assert (=> b!91815 (= e!59888 call!9025)))

(declare-fun b!91816 () Bool)

(declare-fun e!59886 () Bool)

(assert (=> b!91816 (= e!59886 e!59888)))

(assert (=> b!91816 (= c!15259 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun b!91817 () Bool)

(assert (=> b!91817 (= e!59887 e!59886)))

(declare-fun res!46715 () Bool)

(assert (=> b!91817 (=> (not res!46715) (not e!59886))))

(assert (=> b!91817 (= res!46715 (not e!59889))))

(declare-fun res!46714 () Bool)

(assert (=> b!91817 (=> (not res!46714) (not e!59889))))

(assert (=> b!91817 (= res!46714 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (= (and d!24105 (not res!46716)) b!91817))

(assert (= (and b!91817 res!46714) b!91814))

(assert (= (and b!91817 res!46715) b!91816))

(assert (= (and b!91816 c!15259) b!91813))

(assert (= (and b!91816 (not c!15259)) b!91815))

(assert (= (or b!91813 b!91815) bm!9022))

(assert (=> bm!9022 m!97909))

(declare-fun m!98373 () Bool)

(assert (=> bm!9022 m!98373))

(assert (=> b!91814 m!97909))

(assert (=> b!91814 m!97909))

(declare-fun m!98375 () Bool)

(assert (=> b!91814 m!98375))

(assert (=> b!91816 m!97909))

(assert (=> b!91816 m!97909))

(assert (=> b!91816 m!98229))

(assert (=> b!91817 m!97909))

(assert (=> b!91817 m!97909))

(assert (=> b!91817 m!98229))

(assert (=> b!91434 d!24105))

(declare-fun b!91825 () Bool)

(declare-fun e!59894 () Bool)

(assert (=> b!91825 (= e!59894 tp_is_empty!2583)))

(declare-fun condMapEmpty!3581 () Bool)

(declare-fun mapDefault!3581 () ValueCell!948)

(assert (=> mapNonEmpty!3572 (= condMapEmpty!3581 (= mapRest!3571 ((as const (Array (_ BitVec 32) ValueCell!948)) mapDefault!3581)))))

(declare-fun mapRes!3581 () Bool)

(assert (=> mapNonEmpty!3572 (= tp!9253 (and e!59894 mapRes!3581))))

(declare-fun b!91824 () Bool)

(declare-fun e!59895 () Bool)

(assert (=> b!91824 (= e!59895 tp_is_empty!2583)))

(declare-fun mapIsEmpty!3581 () Bool)

(assert (=> mapIsEmpty!3581 mapRes!3581))

(declare-fun mapNonEmpty!3581 () Bool)

(declare-fun tp!9269 () Bool)

(assert (=> mapNonEmpty!3581 (= mapRes!3581 (and tp!9269 e!59895))))

(declare-fun mapKey!3581 () (_ BitVec 32))

(declare-fun mapValue!3581 () ValueCell!948)

(declare-fun mapRest!3581 () (Array (_ BitVec 32) ValueCell!948))

(assert (=> mapNonEmpty!3581 (= mapRest!3571 (store mapRest!3581 mapKey!3581 mapValue!3581))))

(assert (= (and mapNonEmpty!3572 condMapEmpty!3581) mapIsEmpty!3581))

(assert (= (and mapNonEmpty!3572 (not condMapEmpty!3581)) mapNonEmpty!3581))

(assert (= (and mapNonEmpty!3581 ((_ is ValueCellFull!948) mapValue!3581)) b!91824))

(assert (= (and mapNonEmpty!3572 ((_ is ValueCellFull!948) mapDefault!3581)) b!91825))

(declare-fun m!98377 () Bool)

(assert (=> mapNonEmpty!3581 m!98377))

(declare-fun b!91827 () Bool)

(declare-fun e!59896 () Bool)

(assert (=> b!91827 (= e!59896 tp_is_empty!2583)))

(declare-fun condMapEmpty!3582 () Bool)

(declare-fun mapDefault!3582 () ValueCell!948)

(assert (=> mapNonEmpty!3571 (= condMapEmpty!3582 (= mapRest!3572 ((as const (Array (_ BitVec 32) ValueCell!948)) mapDefault!3582)))))

(declare-fun mapRes!3582 () Bool)

(assert (=> mapNonEmpty!3571 (= tp!9252 (and e!59896 mapRes!3582))))

(declare-fun b!91826 () Bool)

(declare-fun e!59897 () Bool)

(assert (=> b!91826 (= e!59897 tp_is_empty!2583)))

(declare-fun mapIsEmpty!3582 () Bool)

(assert (=> mapIsEmpty!3582 mapRes!3582))

(declare-fun mapNonEmpty!3582 () Bool)

(declare-fun tp!9270 () Bool)

(assert (=> mapNonEmpty!3582 (= mapRes!3582 (and tp!9270 e!59897))))

(declare-fun mapRest!3582 () (Array (_ BitVec 32) ValueCell!948))

(declare-fun mapValue!3582 () ValueCell!948)

(declare-fun mapKey!3582 () (_ BitVec 32))

(assert (=> mapNonEmpty!3582 (= mapRest!3572 (store mapRest!3582 mapKey!3582 mapValue!3582))))

(assert (= (and mapNonEmpty!3571 condMapEmpty!3582) mapIsEmpty!3582))

(assert (= (and mapNonEmpty!3571 (not condMapEmpty!3582)) mapNonEmpty!3582))

(assert (= (and mapNonEmpty!3582 ((_ is ValueCellFull!948) mapValue!3582)) b!91826))

(assert (= (and mapNonEmpty!3571 ((_ is ValueCellFull!948) mapDefault!3582)) b!91827))

(declare-fun m!98379 () Bool)

(assert (=> mapNonEmpty!3582 m!98379))

(declare-fun b_lambda!4049 () Bool)

(assert (= b_lambda!4043 (or (and b!91424 b_free!2333) (and b!91420 b_free!2335 (= (defaultEntry!2406 newMap!16) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))))) b_lambda!4049)))

(declare-fun b_lambda!4051 () Bool)

(assert (= b_lambda!4047 (or (and b!91424 b_free!2333) (and b!91420 b_free!2335 (= (defaultEntry!2406 newMap!16) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))))) b_lambda!4051)))

(declare-fun b_lambda!4053 () Bool)

(assert (= b_lambda!4041 (or (and b!91424 b_free!2333) (and b!91420 b_free!2335 (= (defaultEntry!2406 newMap!16) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))))) b_lambda!4053)))

(declare-fun b_lambda!4055 () Bool)

(assert (= b_lambda!4045 (or (and b!91424 b_free!2333) (and b!91420 b_free!2335 (= (defaultEntry!2406 newMap!16) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))))) b_lambda!4055)))

(check-sat (not b!91623) (not d!24049) (not d!24075) (not bm!8934) (not b!91589) (not bm!8935) (not bm!9002) (not b!91814) (not b!91661) (not b!91663) (not b!91664) (not b_next!2333) (not b!91785) (not d!24085) (not b!91636) (not bm!8945) (not mapNonEmpty!3581) (not b!91635) (not d!24067) (not d!24053) (not bm!8940) (not b!91660) (not b!91674) (not bm!8997) (not b!91574) (not b!91630) (not b_lambda!4039) (not bm!9017) (not b!91570) (not b!91665) (not bm!8931) (not b!91667) (not b!91629) (not bm!9022) (not d!24093) tp_is_empty!2583 (not b!91575) b_and!5561 (not b!91592) (not b!91649) (not b!91632) (not b!91591) (not b!91637) (not d!24073) (not d!24051) (not d!24071) (not b_lambda!4055) (not mapNonEmpty!3582) (not b!91666) (not b!91567) b_and!5563 (not d!24087) (not d!24081) (not d!24055) (not b!91639) (not bm!8936) (not b!91771) (not b!91518) (not d!24095) (not b!91646) (not b!91655) (not bm!9009) (not b_next!2335) (not d!24083) (not b!91638) (not d!24079) (not bm!9011) (not b!91520) (not b!91563) (not bm!8944) (not b!91753) (not b!91573) (not b!91598) (not b!91784) (not b!91634) (not b!91676) (not bm!9005) (not b!91763) (not bm!9012) (not bm!9004) (not d!24069) (not b_lambda!4051) (not b!91650) (not b!91651) (not b!91582) (not d!24103) (not b!91817) (not b!91662) (not b!91626) (not d!24065) (not b!91643) (not bm!9001) (not b!91588) (not bm!9018) (not b!91816) (not bm!8996) (not b!91801) (not b!91631) (not b!91765) (not b_lambda!4049) (not b!91579) (not b!91519) (not b!91796) (not d!24077) (not b!91658) (not b!91590) (not b!91597) (not b!91633) (not d!24097) (not bm!8946) (not b_lambda!4053) (not bm!8941) (not d!24063) (not d!24099) (not bm!9007))
(check-sat b_and!5561 b_and!5563 (not b_next!2333) (not b_next!2335))
(get-model)

(declare-fun d!24107 () Bool)

(declare-fun lt!44829 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!94 (List!1581) (InoxSet tuple2!2290))

(assert (=> d!24107 (= lt!44829 (select (content!94 (toList!774 lt!44712)) lt!44507))))

(declare-fun e!59902 () Bool)

(assert (=> d!24107 (= lt!44829 e!59902)))

(declare-fun res!46721 () Bool)

(assert (=> d!24107 (=> (not res!46721) (not e!59902))))

(assert (=> d!24107 (= res!46721 ((_ is Cons!1577) (toList!774 lt!44712)))))

(assert (=> d!24107 (= (contains!786 (toList!774 lt!44712) lt!44507) lt!44829)))

(declare-fun b!91832 () Bool)

(declare-fun e!59903 () Bool)

(assert (=> b!91832 (= e!59902 e!59903)))

(declare-fun res!46722 () Bool)

(assert (=> b!91832 (=> res!46722 e!59903)))

(assert (=> b!91832 (= res!46722 (= (h!2169 (toList!774 lt!44712)) lt!44507))))

(declare-fun b!91833 () Bool)

(assert (=> b!91833 (= e!59903 (contains!786 (t!5419 (toList!774 lt!44712)) lt!44507))))

(assert (= (and d!24107 res!46721) b!91832))

(assert (= (and b!91832 (not res!46722)) b!91833))

(declare-fun m!98381 () Bool)

(assert (=> d!24107 m!98381))

(declare-fun m!98383 () Bool)

(assert (=> d!24107 m!98383))

(declare-fun m!98385 () Bool)

(assert (=> b!91833 m!98385))

(assert (=> b!91663 d!24107))

(declare-fun b!91844 () Bool)

(declare-fun res!46734 () Bool)

(declare-fun e!59906 () Bool)

(assert (=> b!91844 (=> (not res!46734) (not e!59906))))

(declare-fun size!2217 (LongMapFixedSize!804) (_ BitVec 32))

(assert (=> b!91844 (= res!46734 (= (size!2217 newMap!16) (bvadd (_size!451 newMap!16) (bvsdiv (bvadd (extraKeys!2237 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!91845 () Bool)

(assert (=> b!91845 (= e!59906 (and (bvsge (extraKeys!2237 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2237 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!451 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun b!91842 () Bool)

(declare-fun res!46731 () Bool)

(assert (=> b!91842 (=> (not res!46731) (not e!59906))))

(assert (=> b!91842 (= res!46731 (and (= (size!2214 (_values!2389 newMap!16)) (bvadd (mask!6466 newMap!16) #b00000000000000000000000000000001)) (= (size!2213 (_keys!4086 newMap!16)) (size!2214 (_values!2389 newMap!16))) (bvsge (_size!451 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!451 newMap!16) (bvadd (mask!6466 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun d!24109 () Bool)

(declare-fun res!46733 () Bool)

(assert (=> d!24109 (=> (not res!46733) (not e!59906))))

(assert (=> d!24109 (= res!46733 (validMask!0 (mask!6466 newMap!16)))))

(assert (=> d!24109 (= (simpleValid!62 newMap!16) e!59906)))

(declare-fun b!91843 () Bool)

(declare-fun res!46732 () Bool)

(assert (=> b!91843 (=> (not res!46732) (not e!59906))))

(assert (=> b!91843 (= res!46732 (bvsge (size!2217 newMap!16) (_size!451 newMap!16)))))

(assert (= (and d!24109 res!46733) b!91842))

(assert (= (and b!91842 res!46731) b!91843))

(assert (= (and b!91843 res!46732) b!91844))

(assert (= (and b!91844 res!46734) b!91845))

(declare-fun m!98387 () Bool)

(assert (=> b!91844 m!98387))

(declare-fun m!98389 () Bool)

(assert (=> d!24109 m!98389))

(assert (=> b!91843 m!98387))

(assert (=> d!24049 d!24109))

(declare-fun bm!9023 () Bool)

(declare-fun call!9029 () Bool)

(declare-fun lt!44850 () ListLongMap!1517)

(assert (=> bm!9023 (= call!9029 (contains!784 lt!44850 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!9025 () Bool)

(declare-fun call!9032 () ListLongMap!1517)

(declare-fun call!9031 () ListLongMap!1517)

(assert (=> bm!9025 (= call!9032 call!9031)))

(declare-fun b!91846 () Bool)

(declare-fun e!59916 () Bool)

(assert (=> b!91846 (= e!59916 (validKeyInArray!0 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!91847 () Bool)

(declare-fun e!59915 () ListLongMap!1517)

(declare-fun e!59913 () ListLongMap!1517)

(assert (=> b!91847 (= e!59915 e!59913)))

(declare-fun c!15264 () Bool)

(assert (=> b!91847 (= c!15264 (and (not (= (bvand (extraKeys!2237 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2237 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!91848 () Bool)

(declare-fun e!59914 () Bool)

(declare-fun e!59908 () Bool)

(assert (=> b!91848 (= e!59914 e!59908)))

(declare-fun res!46741 () Bool)

(declare-fun call!9026 () Bool)

(assert (=> b!91848 (= res!46741 call!9026)))

(assert (=> b!91848 (=> (not res!46741) (not e!59908))))

(declare-fun b!91849 () Bool)

(declare-fun call!9028 () ListLongMap!1517)

(assert (=> b!91849 (= e!59913 call!9028)))

(declare-fun call!9027 () ListLongMap!1517)

(declare-fun bm!9026 () Bool)

(declare-fun call!9030 () ListLongMap!1517)

(declare-fun c!15260 () Bool)

(assert (=> bm!9026 (= call!9030 (+!129 (ite c!15260 call!9027 (ite c!15264 call!9031 call!9032)) (ite (or c!15260 c!15264) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 newMap!16)) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 newMap!16)))))))

(declare-fun b!91850 () Bool)

(assert (=> b!91850 (= e!59908 (= (apply!87 lt!44850 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2294 newMap!16)))))

(declare-fun b!91851 () Bool)

(declare-fun e!59907 () ListLongMap!1517)

(assert (=> b!91851 (= e!59907 call!9032)))

(declare-fun b!91852 () Bool)

(declare-fun e!59909 () Bool)

(declare-fun e!59919 () Bool)

(assert (=> b!91852 (= e!59909 e!59919)))

(declare-fun res!46738 () Bool)

(assert (=> b!91852 (= res!46738 call!9029)))

(assert (=> b!91852 (=> (not res!46738) (not e!59919))))

(declare-fun b!91853 () Bool)

(declare-fun e!59917 () Unit!2738)

(declare-fun lt!44845 () Unit!2738)

(assert (=> b!91853 (= e!59917 lt!44845)))

(declare-fun lt!44834 () ListLongMap!1517)

(assert (=> b!91853 (= lt!44834 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!44831 () (_ BitVec 64))

(assert (=> b!91853 (= lt!44831 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44846 () (_ BitVec 64))

(assert (=> b!91853 (= lt!44846 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!44849 () Unit!2738)

(assert (=> b!91853 (= lt!44849 (addStillContains!63 lt!44834 lt!44831 (zeroValue!2294 newMap!16) lt!44846))))

(assert (=> b!91853 (contains!784 (+!129 lt!44834 (tuple2!2291 lt!44831 (zeroValue!2294 newMap!16))) lt!44846)))

(declare-fun lt!44847 () Unit!2738)

(assert (=> b!91853 (= lt!44847 lt!44849)))

(declare-fun lt!44838 () ListLongMap!1517)

(assert (=> b!91853 (= lt!44838 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!44830 () (_ BitVec 64))

(assert (=> b!91853 (= lt!44830 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44837 () (_ BitVec 64))

(assert (=> b!91853 (= lt!44837 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!44848 () Unit!2738)

(assert (=> b!91853 (= lt!44848 (addApplyDifferent!63 lt!44838 lt!44830 (minValue!2294 newMap!16) lt!44837))))

(assert (=> b!91853 (= (apply!87 (+!129 lt!44838 (tuple2!2291 lt!44830 (minValue!2294 newMap!16))) lt!44837) (apply!87 lt!44838 lt!44837))))

(declare-fun lt!44839 () Unit!2738)

(assert (=> b!91853 (= lt!44839 lt!44848)))

(declare-fun lt!44844 () ListLongMap!1517)

(assert (=> b!91853 (= lt!44844 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!44832 () (_ BitVec 64))

(assert (=> b!91853 (= lt!44832 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44840 () (_ BitVec 64))

(assert (=> b!91853 (= lt!44840 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!44833 () Unit!2738)

(assert (=> b!91853 (= lt!44833 (addApplyDifferent!63 lt!44844 lt!44832 (zeroValue!2294 newMap!16) lt!44840))))

(assert (=> b!91853 (= (apply!87 (+!129 lt!44844 (tuple2!2291 lt!44832 (zeroValue!2294 newMap!16))) lt!44840) (apply!87 lt!44844 lt!44840))))

(declare-fun lt!44843 () Unit!2738)

(assert (=> b!91853 (= lt!44843 lt!44833)))

(declare-fun lt!44835 () ListLongMap!1517)

(assert (=> b!91853 (= lt!44835 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!44842 () (_ BitVec 64))

(assert (=> b!91853 (= lt!44842 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44851 () (_ BitVec 64))

(assert (=> b!91853 (= lt!44851 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!91853 (= lt!44845 (addApplyDifferent!63 lt!44835 lt!44842 (minValue!2294 newMap!16) lt!44851))))

(assert (=> b!91853 (= (apply!87 (+!129 lt!44835 (tuple2!2291 lt!44842 (minValue!2294 newMap!16))) lt!44851) (apply!87 lt!44835 lt!44851))))

(declare-fun b!91854 () Bool)

(assert (=> b!91854 (= e!59914 (not call!9026))))

(declare-fun b!91855 () Bool)

(declare-fun e!59912 () Bool)

(assert (=> b!91855 (= e!59912 e!59909)))

(declare-fun c!15262 () Bool)

(assert (=> b!91855 (= c!15262 (not (= (bvand (extraKeys!2237 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!91856 () Bool)

(declare-fun e!59910 () Bool)

(assert (=> b!91856 (= e!59910 (= (apply!87 lt!44850 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)) (get!1254 (select (arr!1967 (_values!2389 newMap!16)) #b00000000000000000000000000000000) (dynLambda!365 (defaultEntry!2406 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!91856 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2214 (_values!2389 newMap!16))))))

(assert (=> b!91856 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))

(declare-fun b!91857 () Bool)

(assert (=> b!91857 (= e!59919 (= (apply!87 lt!44850 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2294 newMap!16)))))

(declare-fun b!91858 () Bool)

(declare-fun e!59911 () Bool)

(assert (=> b!91858 (= e!59911 (validKeyInArray!0 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!24111 () Bool)

(assert (=> d!24111 e!59912))

(declare-fun res!46736 () Bool)

(assert (=> d!24111 (=> (not res!46736) (not e!59912))))

(assert (=> d!24111 (= res!46736 (or (bvsge #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))))

(declare-fun lt!44836 () ListLongMap!1517)

(assert (=> d!24111 (= lt!44850 lt!44836)))

(declare-fun lt!44841 () Unit!2738)

(assert (=> d!24111 (= lt!44841 e!59917)))

(declare-fun c!15261 () Bool)

(assert (=> d!24111 (= c!15261 e!59916)))

(declare-fun res!46737 () Bool)

(assert (=> d!24111 (=> (not res!46737) (not e!59916))))

(assert (=> d!24111 (= res!46737 (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))

(assert (=> d!24111 (= lt!44836 e!59915)))

(assert (=> d!24111 (= c!15260 (and (not (= (bvand (extraKeys!2237 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2237 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!24111 (validMask!0 (mask!6466 newMap!16))))

(assert (=> d!24111 (= (getCurrentListMap!456 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)) lt!44850)))

(declare-fun bm!9024 () Bool)

(assert (=> bm!9024 (= call!9031 call!9027)))

(declare-fun b!91859 () Bool)

(declare-fun res!46740 () Bool)

(assert (=> b!91859 (=> (not res!46740) (not e!59912))))

(declare-fun e!59918 () Bool)

(assert (=> b!91859 (= res!46740 e!59918)))

(declare-fun res!46735 () Bool)

(assert (=> b!91859 (=> res!46735 e!59918)))

(assert (=> b!91859 (= res!46735 (not e!59911))))

(declare-fun res!46742 () Bool)

(assert (=> b!91859 (=> (not res!46742) (not e!59911))))

(assert (=> b!91859 (= res!46742 (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))

(declare-fun b!91860 () Bool)

(assert (=> b!91860 (= e!59909 (not call!9029))))

(declare-fun bm!9027 () Bool)

(assert (=> bm!9027 (= call!9026 (contains!784 lt!44850 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!91861 () Bool)

(declare-fun res!46739 () Bool)

(assert (=> b!91861 (=> (not res!46739) (not e!59912))))

(assert (=> b!91861 (= res!46739 e!59914)))

(declare-fun c!15263 () Bool)

(assert (=> b!91861 (= c!15263 (not (= (bvand (extraKeys!2237 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!91862 () Bool)

(assert (=> b!91862 (= e!59918 e!59910)))

(declare-fun res!46743 () Bool)

(assert (=> b!91862 (=> (not res!46743) (not e!59910))))

(assert (=> b!91862 (= res!46743 (contains!784 lt!44850 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!91862 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))

(declare-fun b!91863 () Bool)

(declare-fun c!15265 () Bool)

(assert (=> b!91863 (= c!15265 (and (not (= (bvand (extraKeys!2237 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2237 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!91863 (= e!59913 e!59907)))

(declare-fun b!91864 () Bool)

(declare-fun Unit!2750 () Unit!2738)

(assert (=> b!91864 (= e!59917 Unit!2750)))

(declare-fun b!91865 () Bool)

(assert (=> b!91865 (= e!59915 (+!129 call!9030 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 newMap!16))))))

(declare-fun b!91866 () Bool)

(assert (=> b!91866 (= e!59907 call!9028)))

(declare-fun bm!9028 () Bool)

(assert (=> bm!9028 (= call!9027 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun bm!9029 () Bool)

(assert (=> bm!9029 (= call!9028 call!9030)))

(assert (= (and d!24111 c!15260) b!91865))

(assert (= (and d!24111 (not c!15260)) b!91847))

(assert (= (and b!91847 c!15264) b!91849))

(assert (= (and b!91847 (not c!15264)) b!91863))

(assert (= (and b!91863 c!15265) b!91866))

(assert (= (and b!91863 (not c!15265)) b!91851))

(assert (= (or b!91866 b!91851) bm!9025))

(assert (= (or b!91849 bm!9025) bm!9024))

(assert (= (or b!91849 b!91866) bm!9029))

(assert (= (or b!91865 bm!9024) bm!9028))

(assert (= (or b!91865 bm!9029) bm!9026))

(assert (= (and d!24111 res!46737) b!91846))

(assert (= (and d!24111 c!15261) b!91853))

(assert (= (and d!24111 (not c!15261)) b!91864))

(assert (= (and d!24111 res!46736) b!91859))

(assert (= (and b!91859 res!46742) b!91858))

(assert (= (and b!91859 (not res!46735)) b!91862))

(assert (= (and b!91862 res!46743) b!91856))

(assert (= (and b!91859 res!46740) b!91861))

(assert (= (and b!91861 c!15263) b!91848))

(assert (= (and b!91861 (not c!15263)) b!91854))

(assert (= (and b!91848 res!46741) b!91850))

(assert (= (or b!91848 b!91854) bm!9027))

(assert (= (and b!91861 res!46739) b!91855))

(assert (= (and b!91855 c!15262) b!91852))

(assert (= (and b!91855 (not c!15262)) b!91860))

(assert (= (and b!91852 res!46738) b!91857))

(assert (= (or b!91852 b!91860) bm!9023))

(declare-fun b_lambda!4057 () Bool)

(assert (=> (not b_lambda!4057) (not b!91856)))

(declare-fun t!5428 () Bool)

(declare-fun tb!1813 () Bool)

(assert (=> (and b!91424 (= (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) (defaultEntry!2406 newMap!16)) t!5428) tb!1813))

(declare-fun result!3101 () Bool)

(assert (=> tb!1813 (= result!3101 tp_is_empty!2583)))

(assert (=> b!91856 t!5428))

(declare-fun b_and!5565 () Bool)

(assert (= b_and!5561 (and (=> t!5428 result!3101) b_and!5565)))

(declare-fun t!5430 () Bool)

(declare-fun tb!1815 () Bool)

(assert (=> (and b!91420 (= (defaultEntry!2406 newMap!16) (defaultEntry!2406 newMap!16)) t!5430) tb!1815))

(declare-fun result!3103 () Bool)

(assert (= result!3103 result!3101))

(assert (=> b!91856 t!5430))

(declare-fun b_and!5567 () Bool)

(assert (= b_and!5563 (and (=> t!5430 result!3103) b_and!5567)))

(declare-fun m!98391 () Bool)

(assert (=> b!91857 m!98391))

(declare-fun m!98393 () Bool)

(assert (=> b!91853 m!98393))

(declare-fun m!98395 () Bool)

(assert (=> b!91853 m!98395))

(declare-fun m!98397 () Bool)

(assert (=> b!91853 m!98397))

(declare-fun m!98399 () Bool)

(assert (=> b!91853 m!98399))

(declare-fun m!98401 () Bool)

(assert (=> b!91853 m!98401))

(declare-fun m!98403 () Bool)

(assert (=> b!91853 m!98403))

(declare-fun m!98405 () Bool)

(assert (=> b!91853 m!98405))

(assert (=> b!91853 m!98403))

(declare-fun m!98407 () Bool)

(assert (=> b!91853 m!98407))

(declare-fun m!98409 () Bool)

(assert (=> b!91853 m!98409))

(assert (=> b!91853 m!98399))

(declare-fun m!98411 () Bool)

(assert (=> b!91853 m!98411))

(declare-fun m!98413 () Bool)

(assert (=> b!91853 m!98413))

(declare-fun m!98415 () Bool)

(assert (=> b!91853 m!98415))

(declare-fun m!98417 () Bool)

(assert (=> b!91853 m!98417))

(declare-fun m!98419 () Bool)

(assert (=> b!91853 m!98419))

(declare-fun m!98421 () Bool)

(assert (=> b!91853 m!98421))

(assert (=> b!91853 m!98401))

(declare-fun m!98423 () Bool)

(assert (=> b!91853 m!98423))

(assert (=> b!91853 m!98393))

(declare-fun m!98425 () Bool)

(assert (=> b!91853 m!98425))

(declare-fun m!98427 () Bool)

(assert (=> bm!9026 m!98427))

(declare-fun m!98429 () Bool)

(assert (=> b!91850 m!98429))

(assert (=> b!91862 m!98409))

(assert (=> b!91862 m!98409))

(declare-fun m!98431 () Bool)

(assert (=> b!91862 m!98431))

(declare-fun m!98433 () Bool)

(assert (=> b!91865 m!98433))

(declare-fun m!98435 () Bool)

(assert (=> bm!9027 m!98435))

(declare-fun m!98437 () Bool)

(assert (=> bm!9023 m!98437))

(assert (=> bm!9028 m!98421))

(assert (=> b!91856 m!98409))

(declare-fun m!98439 () Bool)

(assert (=> b!91856 m!98439))

(declare-fun m!98441 () Bool)

(assert (=> b!91856 m!98441))

(declare-fun m!98443 () Bool)

(assert (=> b!91856 m!98443))

(assert (=> b!91856 m!98409))

(declare-fun m!98445 () Bool)

(assert (=> b!91856 m!98445))

(assert (=> b!91856 m!98439))

(assert (=> b!91856 m!98441))

(assert (=> b!91858 m!98409))

(assert (=> b!91858 m!98409))

(declare-fun m!98447 () Bool)

(assert (=> b!91858 m!98447))

(assert (=> b!91846 m!98409))

(assert (=> b!91846 m!98409))

(assert (=> b!91846 m!98447))

(assert (=> d!24111 m!98389))

(assert (=> d!24053 d!24111))

(declare-fun d!24113 () Bool)

(declare-fun e!59920 () Bool)

(assert (=> d!24113 e!59920))

(declare-fun res!46744 () Bool)

(assert (=> d!24113 (=> res!46744 e!59920)))

(declare-fun lt!44852 () Bool)

(assert (=> d!24113 (= res!46744 (not lt!44852))))

(declare-fun lt!44855 () Bool)

(assert (=> d!24113 (= lt!44852 lt!44855)))

(declare-fun lt!44853 () Unit!2738)

(declare-fun e!59921 () Unit!2738)

(assert (=> d!24113 (= lt!44853 e!59921)))

(declare-fun c!15266 () Bool)

(assert (=> d!24113 (= c!15266 lt!44855)))

(assert (=> d!24113 (= lt!44855 (containsKey!148 (toList!774 lt!44653) (_1!1155 lt!44507)))))

(assert (=> d!24113 (= (contains!784 lt!44653 (_1!1155 lt!44507)) lt!44852)))

(declare-fun b!91867 () Bool)

(declare-fun lt!44854 () Unit!2738)

(assert (=> b!91867 (= e!59921 lt!44854)))

(assert (=> b!91867 (= lt!44854 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 lt!44653) (_1!1155 lt!44507)))))

(assert (=> b!91867 (isDefined!98 (getValueByKey!144 (toList!774 lt!44653) (_1!1155 lt!44507)))))

(declare-fun b!91868 () Bool)

(declare-fun Unit!2751 () Unit!2738)

(assert (=> b!91868 (= e!59921 Unit!2751)))

(declare-fun b!91869 () Bool)

(assert (=> b!91869 (= e!59920 (isDefined!98 (getValueByKey!144 (toList!774 lt!44653) (_1!1155 lt!44507))))))

(assert (= (and d!24113 c!15266) b!91867))

(assert (= (and d!24113 (not c!15266)) b!91868))

(assert (= (and d!24113 (not res!46744)) b!91869))

(declare-fun m!98449 () Bool)

(assert (=> d!24113 m!98449))

(declare-fun m!98451 () Bool)

(assert (=> b!91867 m!98451))

(assert (=> b!91867 m!98133))

(assert (=> b!91867 m!98133))

(declare-fun m!98453 () Bool)

(assert (=> b!91867 m!98453))

(assert (=> b!91869 m!98133))

(assert (=> b!91869 m!98133))

(assert (=> b!91869 m!98453))

(assert (=> d!24065 d!24113))

(declare-fun b!91881 () Bool)

(declare-fun e!59927 () Option!150)

(assert (=> b!91881 (= e!59927 None!148)))

(declare-fun b!91879 () Bool)

(declare-fun e!59926 () Option!150)

(assert (=> b!91879 (= e!59926 e!59927)))

(declare-fun c!15272 () Bool)

(assert (=> b!91879 (= c!15272 (and ((_ is Cons!1577) lt!44652) (not (= (_1!1155 (h!2169 lt!44652)) (_1!1155 lt!44507)))))))

(declare-fun d!24115 () Bool)

(declare-fun c!15271 () Bool)

(assert (=> d!24115 (= c!15271 (and ((_ is Cons!1577) lt!44652) (= (_1!1155 (h!2169 lt!44652)) (_1!1155 lt!44507))))))

(assert (=> d!24115 (= (getValueByKey!144 lt!44652 (_1!1155 lt!44507)) e!59926)))

(declare-fun b!91878 () Bool)

(assert (=> b!91878 (= e!59926 (Some!149 (_2!1155 (h!2169 lt!44652))))))

(declare-fun b!91880 () Bool)

(assert (=> b!91880 (= e!59927 (getValueByKey!144 (t!5419 lt!44652) (_1!1155 lt!44507)))))

(assert (= (and d!24115 c!15271) b!91878))

(assert (= (and d!24115 (not c!15271)) b!91879))

(assert (= (and b!91879 c!15272) b!91880))

(assert (= (and b!91879 (not c!15272)) b!91881))

(declare-fun m!98455 () Bool)

(assert (=> b!91880 m!98455))

(assert (=> d!24065 d!24115))

(declare-fun d!24117 () Bool)

(assert (=> d!24117 (= (getValueByKey!144 lt!44652 (_1!1155 lt!44507)) (Some!149 (_2!1155 lt!44507)))))

(declare-fun lt!44858 () Unit!2738)

(declare-fun choose!553 (List!1581 (_ BitVec 64) V!3091) Unit!2738)

(assert (=> d!24117 (= lt!44858 (choose!553 lt!44652 (_1!1155 lt!44507) (_2!1155 lt!44507)))))

(declare-fun e!59930 () Bool)

(assert (=> d!24117 e!59930))

(declare-fun res!46749 () Bool)

(assert (=> d!24117 (=> (not res!46749) (not e!59930))))

(declare-fun isStrictlySorted!296 (List!1581) Bool)

(assert (=> d!24117 (= res!46749 (isStrictlySorted!296 lt!44652))))

(assert (=> d!24117 (= (lemmaContainsTupThenGetReturnValue!63 lt!44652 (_1!1155 lt!44507) (_2!1155 lt!44507)) lt!44858)))

(declare-fun b!91886 () Bool)

(declare-fun res!46750 () Bool)

(assert (=> b!91886 (=> (not res!46750) (not e!59930))))

(assert (=> b!91886 (= res!46750 (containsKey!148 lt!44652 (_1!1155 lt!44507)))))

(declare-fun b!91887 () Bool)

(assert (=> b!91887 (= e!59930 (contains!786 lt!44652 (tuple2!2291 (_1!1155 lt!44507) (_2!1155 lt!44507))))))

(assert (= (and d!24117 res!46749) b!91886))

(assert (= (and b!91886 res!46750) b!91887))

(assert (=> d!24117 m!98127))

(declare-fun m!98457 () Bool)

(assert (=> d!24117 m!98457))

(declare-fun m!98459 () Bool)

(assert (=> d!24117 m!98459))

(declare-fun m!98461 () Bool)

(assert (=> b!91886 m!98461))

(declare-fun m!98463 () Bool)

(assert (=> b!91887 m!98463))

(assert (=> d!24065 d!24117))

(declare-fun e!59944 () List!1581)

(declare-fun c!15282 () Bool)

(declare-fun c!15283 () Bool)

(declare-fun b!91908 () Bool)

(assert (=> b!91908 (= e!59944 (ite c!15282 (t!5419 (toList!774 lt!44519)) (ite c!15283 (Cons!1577 (h!2169 (toList!774 lt!44519)) (t!5419 (toList!774 lt!44519))) Nil!1578)))))

(declare-fun b!91909 () Bool)

(declare-fun e!59943 () List!1581)

(declare-fun call!9039 () List!1581)

(assert (=> b!91909 (= e!59943 call!9039)))

(declare-fun bm!9036 () Bool)

(declare-fun call!9040 () List!1581)

(declare-fun call!9041 () List!1581)

(assert (=> bm!9036 (= call!9040 call!9041)))

(declare-fun bm!9037 () Bool)

(declare-fun c!15281 () Bool)

(declare-fun $colon$colon!74 (List!1581 tuple2!2290) List!1581)

(assert (=> bm!9037 (= call!9041 ($colon$colon!74 e!59944 (ite c!15281 (h!2169 (toList!774 lt!44519)) (tuple2!2291 (_1!1155 lt!44507) (_2!1155 lt!44507)))))))

(declare-fun c!15284 () Bool)

(assert (=> bm!9037 (= c!15284 c!15281)))

(declare-fun b!91910 () Bool)

(declare-fun e!59941 () List!1581)

(assert (=> b!91910 (= e!59941 call!9041)))

(declare-fun b!91911 () Bool)

(assert (=> b!91911 (= e!59943 call!9039)))

(declare-fun b!91912 () Bool)

(declare-fun e!59945 () List!1581)

(assert (=> b!91912 (= e!59945 call!9040)))

(declare-fun b!91913 () Bool)

(assert (=> b!91913 (= e!59944 (insertStrictlySorted!65 (t!5419 (toList!774 lt!44519)) (_1!1155 lt!44507) (_2!1155 lt!44507)))))

(declare-fun b!91914 () Bool)

(assert (=> b!91914 (= c!15283 (and ((_ is Cons!1577) (toList!774 lt!44519)) (bvsgt (_1!1155 (h!2169 (toList!774 lt!44519))) (_1!1155 lt!44507))))))

(assert (=> b!91914 (= e!59945 e!59943)))

(declare-fun bm!9038 () Bool)

(assert (=> bm!9038 (= call!9039 call!9040)))

(declare-fun b!91915 () Bool)

(declare-fun res!46756 () Bool)

(declare-fun e!59942 () Bool)

(assert (=> b!91915 (=> (not res!46756) (not e!59942))))

(declare-fun lt!44861 () List!1581)

(assert (=> b!91915 (= res!46756 (containsKey!148 lt!44861 (_1!1155 lt!44507)))))

(declare-fun b!91916 () Bool)

(assert (=> b!91916 (= e!59941 e!59945)))

(assert (=> b!91916 (= c!15282 (and ((_ is Cons!1577) (toList!774 lt!44519)) (= (_1!1155 (h!2169 (toList!774 lt!44519))) (_1!1155 lt!44507))))))

(declare-fun b!91917 () Bool)

(assert (=> b!91917 (= e!59942 (contains!786 lt!44861 (tuple2!2291 (_1!1155 lt!44507) (_2!1155 lt!44507))))))

(declare-fun d!24119 () Bool)

(assert (=> d!24119 e!59942))

(declare-fun res!46755 () Bool)

(assert (=> d!24119 (=> (not res!46755) (not e!59942))))

(assert (=> d!24119 (= res!46755 (isStrictlySorted!296 lt!44861))))

(assert (=> d!24119 (= lt!44861 e!59941)))

(assert (=> d!24119 (= c!15281 (and ((_ is Cons!1577) (toList!774 lt!44519)) (bvslt (_1!1155 (h!2169 (toList!774 lt!44519))) (_1!1155 lt!44507))))))

(assert (=> d!24119 (isStrictlySorted!296 (toList!774 lt!44519))))

(assert (=> d!24119 (= (insertStrictlySorted!65 (toList!774 lt!44519) (_1!1155 lt!44507) (_2!1155 lt!44507)) lt!44861)))

(assert (= (and d!24119 c!15281) b!91910))

(assert (= (and d!24119 (not c!15281)) b!91916))

(assert (= (and b!91916 c!15282) b!91912))

(assert (= (and b!91916 (not c!15282)) b!91914))

(assert (= (and b!91914 c!15283) b!91909))

(assert (= (and b!91914 (not c!15283)) b!91911))

(assert (= (or b!91909 b!91911) bm!9038))

(assert (= (or b!91912 bm!9038) bm!9036))

(assert (= (or b!91910 bm!9036) bm!9037))

(assert (= (and bm!9037 c!15284) b!91913))

(assert (= (and bm!9037 (not c!15284)) b!91908))

(assert (= (and d!24119 res!46755) b!91915))

(assert (= (and b!91915 res!46756) b!91917))

(declare-fun m!98465 () Bool)

(assert (=> b!91915 m!98465))

(declare-fun m!98467 () Bool)

(assert (=> b!91917 m!98467))

(declare-fun m!98469 () Bool)

(assert (=> b!91913 m!98469))

(declare-fun m!98471 () Bool)

(assert (=> bm!9037 m!98471))

(declare-fun m!98473 () Bool)

(assert (=> d!24119 m!98473))

(declare-fun m!98475 () Bool)

(assert (=> d!24119 m!98475))

(assert (=> d!24065 d!24119))

(declare-fun b!91930 () Bool)

(declare-fun e!59952 () SeekEntryResult!258)

(declare-fun e!59953 () SeekEntryResult!258)

(assert (=> b!91930 (= e!59952 e!59953)))

(declare-fun lt!44868 () (_ BitVec 64))

(declare-fun lt!44869 () SeekEntryResult!258)

(assert (=> b!91930 (= lt!44868 (select (arr!1966 (_keys!4086 newMap!16)) (index!3174 lt!44869)))))

(declare-fun c!15292 () Bool)

(assert (=> b!91930 (= c!15292 (= lt!44868 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun b!91931 () Bool)

(declare-fun e!59954 () SeekEntryResult!258)

(assert (=> b!91931 (= e!59954 (MissingZero!258 (index!3174 lt!44869)))))

(declare-fun b!91932 () Bool)

(assert (=> b!91932 (= e!59953 (Found!258 (index!3174 lt!44869)))))

(declare-fun lt!44870 () SeekEntryResult!258)

(declare-fun d!24121 () Bool)

(assert (=> d!24121 (and (or ((_ is Undefined!258) lt!44870) (not ((_ is Found!258) lt!44870)) (and (bvsge (index!3173 lt!44870) #b00000000000000000000000000000000) (bvslt (index!3173 lt!44870) (size!2213 (_keys!4086 newMap!16))))) (or ((_ is Undefined!258) lt!44870) ((_ is Found!258) lt!44870) (not ((_ is MissingZero!258) lt!44870)) (and (bvsge (index!3172 lt!44870) #b00000000000000000000000000000000) (bvslt (index!3172 lt!44870) (size!2213 (_keys!4086 newMap!16))))) (or ((_ is Undefined!258) lt!44870) ((_ is Found!258) lt!44870) ((_ is MissingZero!258) lt!44870) (not ((_ is MissingVacant!258) lt!44870)) (and (bvsge (index!3175 lt!44870) #b00000000000000000000000000000000) (bvslt (index!3175 lt!44870) (size!2213 (_keys!4086 newMap!16))))) (or ((_ is Undefined!258) lt!44870) (ite ((_ is Found!258) lt!44870) (= (select (arr!1966 (_keys!4086 newMap!16)) (index!3173 lt!44870)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) (ite ((_ is MissingZero!258) lt!44870) (= (select (arr!1966 (_keys!4086 newMap!16)) (index!3172 lt!44870)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!258) lt!44870) (= (select (arr!1966 (_keys!4086 newMap!16)) (index!3175 lt!44870)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!24121 (= lt!44870 e!59952)))

(declare-fun c!15291 () Bool)

(assert (=> d!24121 (= c!15291 (and ((_ is Intermediate!258) lt!44869) (undefined!1070 lt!44869)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4134 (_ BitVec 32)) SeekEntryResult!258)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!24121 (= lt!44869 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (mask!6466 newMap!16)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (_keys!4086 newMap!16) (mask!6466 newMap!16)))))

(assert (=> d!24121 (validMask!0 (mask!6466 newMap!16))))

(assert (=> d!24121 (= (seekEntryOrOpen!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (_keys!4086 newMap!16) (mask!6466 newMap!16)) lt!44870)))

(declare-fun b!91933 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4134 (_ BitVec 32)) SeekEntryResult!258)

(assert (=> b!91933 (= e!59954 (seekKeyOrZeroReturnVacant!0 (x!12457 lt!44869) (index!3174 lt!44869) (index!3174 lt!44869) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (_keys!4086 newMap!16) (mask!6466 newMap!16)))))

(declare-fun b!91934 () Bool)

(declare-fun c!15293 () Bool)

(assert (=> b!91934 (= c!15293 (= lt!44868 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!91934 (= e!59953 e!59954)))

(declare-fun b!91935 () Bool)

(assert (=> b!91935 (= e!59952 Undefined!258)))

(assert (= (and d!24121 c!15291) b!91935))

(assert (= (and d!24121 (not c!15291)) b!91930))

(assert (= (and b!91930 c!15292) b!91932))

(assert (= (and b!91930 (not c!15292)) b!91934))

(assert (= (and b!91934 c!15293) b!91931))

(assert (= (and b!91934 (not c!15293)) b!91933))

(declare-fun m!98477 () Bool)

(assert (=> b!91930 m!98477))

(assert (=> d!24121 m!97909))

(declare-fun m!98479 () Bool)

(assert (=> d!24121 m!98479))

(assert (=> d!24121 m!98479))

(assert (=> d!24121 m!97909))

(declare-fun m!98481 () Bool)

(assert (=> d!24121 m!98481))

(declare-fun m!98483 () Bool)

(assert (=> d!24121 m!98483))

(declare-fun m!98485 () Bool)

(assert (=> d!24121 m!98485))

(declare-fun m!98487 () Bool)

(assert (=> d!24121 m!98487))

(assert (=> d!24121 m!98389))

(assert (=> b!91933 m!97909))

(declare-fun m!98489 () Bool)

(assert (=> b!91933 m!98489))

(assert (=> b!91771 d!24121))

(declare-fun d!24123 () Bool)

(declare-fun lt!44871 () Bool)

(assert (=> d!24123 (= lt!44871 (select (content!94 (toList!774 lt!44720)) lt!44507))))

(declare-fun e!59955 () Bool)

(assert (=> d!24123 (= lt!44871 e!59955)))

(declare-fun res!46757 () Bool)

(assert (=> d!24123 (=> (not res!46757) (not e!59955))))

(assert (=> d!24123 (= res!46757 ((_ is Cons!1577) (toList!774 lt!44720)))))

(assert (=> d!24123 (= (contains!786 (toList!774 lt!44720) lt!44507) lt!44871)))

(declare-fun b!91936 () Bool)

(declare-fun e!59956 () Bool)

(assert (=> b!91936 (= e!59955 e!59956)))

(declare-fun res!46758 () Bool)

(assert (=> b!91936 (=> res!46758 e!59956)))

(assert (=> b!91936 (= res!46758 (= (h!2169 (toList!774 lt!44720)) lt!44507))))

(declare-fun b!91937 () Bool)

(assert (=> b!91937 (= e!59956 (contains!786 (t!5419 (toList!774 lt!44720)) lt!44507))))

(assert (= (and d!24123 res!46757) b!91936))

(assert (= (and b!91936 (not res!46758)) b!91937))

(declare-fun m!98491 () Bool)

(assert (=> d!24123 m!98491))

(declare-fun m!98493 () Bool)

(assert (=> d!24123 m!98493))

(declare-fun m!98495 () Bool)

(assert (=> b!91937 m!98495))

(assert (=> b!91667 d!24123))

(declare-fun d!24125 () Bool)

(declare-fun e!59957 () Bool)

(assert (=> d!24125 e!59957))

(declare-fun res!46759 () Bool)

(assert (=> d!24125 (=> res!46759 e!59957)))

(declare-fun lt!44872 () Bool)

(assert (=> d!24125 (= res!46759 (not lt!44872))))

(declare-fun lt!44875 () Bool)

(assert (=> d!24125 (= lt!44872 lt!44875)))

(declare-fun lt!44873 () Unit!2738)

(declare-fun e!59958 () Unit!2738)

(assert (=> d!24125 (= lt!44873 e!59958)))

(declare-fun c!15294 () Bool)

(assert (=> d!24125 (= c!15294 lt!44875)))

(assert (=> d!24125 (= lt!44875 (containsKey!148 (toList!774 lt!44703) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (=> d!24125 (= (contains!784 lt!44703 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) lt!44872)))

(declare-fun b!91938 () Bool)

(declare-fun lt!44874 () Unit!2738)

(assert (=> b!91938 (= e!59958 lt!44874)))

(assert (=> b!91938 (= lt!44874 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 lt!44703) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (=> b!91938 (isDefined!98 (getValueByKey!144 (toList!774 lt!44703) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun b!91939 () Bool)

(declare-fun Unit!2752 () Unit!2738)

(assert (=> b!91939 (= e!59958 Unit!2752)))

(declare-fun b!91940 () Bool)

(assert (=> b!91940 (= e!59957 (isDefined!98 (getValueByKey!144 (toList!774 lt!44703) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355))))))

(assert (= (and d!24125 c!15294) b!91938))

(assert (= (and d!24125 (not c!15294)) b!91939))

(assert (= (and d!24125 (not res!46759)) b!91940))

(assert (=> d!24125 m!97909))

(declare-fun m!98497 () Bool)

(assert (=> d!24125 m!98497))

(assert (=> b!91938 m!97909))

(declare-fun m!98499 () Bool)

(assert (=> b!91938 m!98499))

(assert (=> b!91938 m!97909))

(declare-fun m!98501 () Bool)

(assert (=> b!91938 m!98501))

(assert (=> b!91938 m!98501))

(declare-fun m!98503 () Bool)

(assert (=> b!91938 m!98503))

(assert (=> b!91940 m!97909))

(assert (=> b!91940 m!98501))

(assert (=> b!91940 m!98501))

(assert (=> b!91940 m!98503))

(assert (=> b!91655 d!24125))

(declare-fun d!24127 () Bool)

(declare-fun get!1257 (Option!150) V!3091)

(assert (=> d!24127 (= (apply!87 lt!44640 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1257 (getValueByKey!144 (toList!774 lt!44640) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!3792 () Bool)

(assert (= bs!3792 d!24127))

(assert (=> bs!3792 m!98075))

(declare-fun m!98505 () Bool)

(assert (=> bs!3792 m!98505))

(assert (=> bs!3792 m!98505))

(declare-fun m!98507 () Bool)

(assert (=> bs!3792 m!98507))

(assert (=> b!91573 d!24127))

(declare-fun d!24129 () Bool)

(declare-fun c!15295 () Bool)

(assert (=> d!24129 (= c!15295 ((_ is ValueCellFull!948) (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!59959 () V!3091)

(assert (=> d!24129 (= (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!59959)))

(declare-fun b!91941 () Bool)

(assert (=> b!91941 (= e!59959 (get!1255 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!91942 () Bool)

(assert (=> b!91942 (= e!59959 (get!1256 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!24129 c!15295) b!91941))

(assert (= (and d!24129 (not c!15295)) b!91942))

(assert (=> b!91941 m!98103))

(assert (=> b!91941 m!97917))

(declare-fun m!98509 () Bool)

(assert (=> b!91941 m!98509))

(assert (=> b!91942 m!98103))

(assert (=> b!91942 m!97917))

(declare-fun m!98511 () Bool)

(assert (=> b!91942 m!98511))

(assert (=> b!91573 d!24129))

(assert (=> d!24097 d!24101))

(declare-fun d!24131 () Bool)

(assert (=> d!24131 (not (arrayContainsKey!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> d!24131 true))

(declare-fun _$68!82 () Unit!2738)

(assert (=> d!24131 (= (choose!68 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (Cons!1578 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) Nil!1579)) _$68!82)))

(declare-fun bs!3793 () Bool)

(assert (= bs!3793 d!24131))

(assert (=> bs!3793 m!97909))

(assert (=> bs!3793 m!97927))

(assert (=> d!24097 d!24131))

(declare-fun b!91945 () Bool)

(declare-fun res!46763 () Bool)

(declare-fun e!59960 () Bool)

(assert (=> b!91945 (=> (not res!46763) (not e!59960))))

(assert (=> b!91945 (= res!46763 (= (size!2217 (_2!1156 lt!44506)) (bvadd (_size!451 (_2!1156 lt!44506)) (bvsdiv (bvadd (extraKeys!2237 (_2!1156 lt!44506)) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!91946 () Bool)

(assert (=> b!91946 (= e!59960 (and (bvsge (extraKeys!2237 (_2!1156 lt!44506)) #b00000000000000000000000000000000) (bvsle (extraKeys!2237 (_2!1156 lt!44506)) #b00000000000000000000000000000011) (bvsge (_vacant!451 (_2!1156 lt!44506)) #b00000000000000000000000000000000)))))

(declare-fun b!91943 () Bool)

(declare-fun res!46760 () Bool)

(assert (=> b!91943 (=> (not res!46760) (not e!59960))))

(assert (=> b!91943 (= res!46760 (and (= (size!2214 (_values!2389 (_2!1156 lt!44506))) (bvadd (mask!6466 (_2!1156 lt!44506)) #b00000000000000000000000000000001)) (= (size!2213 (_keys!4086 (_2!1156 lt!44506))) (size!2214 (_values!2389 (_2!1156 lt!44506)))) (bvsge (_size!451 (_2!1156 lt!44506)) #b00000000000000000000000000000000) (bvsle (_size!451 (_2!1156 lt!44506)) (bvadd (mask!6466 (_2!1156 lt!44506)) #b00000000000000000000000000000001))))))

(declare-fun d!24133 () Bool)

(declare-fun res!46762 () Bool)

(assert (=> d!24133 (=> (not res!46762) (not e!59960))))

(assert (=> d!24133 (= res!46762 (validMask!0 (mask!6466 (_2!1156 lt!44506))))))

(assert (=> d!24133 (= (simpleValid!62 (_2!1156 lt!44506)) e!59960)))

(declare-fun b!91944 () Bool)

(declare-fun res!46761 () Bool)

(assert (=> b!91944 (=> (not res!46761) (not e!59960))))

(assert (=> b!91944 (= res!46761 (bvsge (size!2217 (_2!1156 lt!44506)) (_size!451 (_2!1156 lt!44506))))))

(assert (= (and d!24133 res!46762) b!91943))

(assert (= (and b!91943 res!46760) b!91944))

(assert (= (and b!91944 res!46761) b!91945))

(assert (= (and b!91945 res!46763) b!91946))

(declare-fun m!98513 () Bool)

(assert (=> b!91945 m!98513))

(declare-fun m!98515 () Bool)

(assert (=> d!24133 m!98515))

(assert (=> b!91944 m!98513))

(assert (=> d!24063 d!24133))

(declare-fun d!24135 () Bool)

(declare-fun e!59961 () Bool)

(assert (=> d!24135 e!59961))

(declare-fun res!46764 () Bool)

(assert (=> d!24135 (=> res!46764 e!59961)))

(declare-fun lt!44876 () Bool)

(assert (=> d!24135 (= res!46764 (not lt!44876))))

(declare-fun lt!44879 () Bool)

(assert (=> d!24135 (= lt!44876 lt!44879)))

(declare-fun lt!44877 () Unit!2738)

(declare-fun e!59962 () Unit!2738)

(assert (=> d!24135 (= lt!44877 e!59962)))

(declare-fun c!15296 () Bool)

(assert (=> d!24135 (= c!15296 lt!44879)))

(assert (=> d!24135 (= lt!44879 (containsKey!148 (toList!774 lt!44703) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!24135 (= (contains!784 lt!44703 #b1000000000000000000000000000000000000000000000000000000000000000) lt!44876)))

(declare-fun b!91947 () Bool)

(declare-fun lt!44878 () Unit!2738)

(assert (=> b!91947 (= e!59962 lt!44878)))

(assert (=> b!91947 (= lt!44878 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 lt!44703) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!91947 (isDefined!98 (getValueByKey!144 (toList!774 lt!44703) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!91948 () Bool)

(declare-fun Unit!2753 () Unit!2738)

(assert (=> b!91948 (= e!59962 Unit!2753)))

(declare-fun b!91949 () Bool)

(assert (=> b!91949 (= e!59961 (isDefined!98 (getValueByKey!144 (toList!774 lt!44703) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!24135 c!15296) b!91947))

(assert (= (and d!24135 (not c!15296)) b!91948))

(assert (= (and d!24135 (not res!46764)) b!91949))

(declare-fun m!98517 () Bool)

(assert (=> d!24135 m!98517))

(declare-fun m!98519 () Bool)

(assert (=> b!91947 m!98519))

(declare-fun m!98521 () Bool)

(assert (=> b!91947 m!98521))

(assert (=> b!91947 m!98521))

(declare-fun m!98523 () Bool)

(assert (=> b!91947 m!98523))

(assert (=> b!91949 m!98521))

(assert (=> b!91949 m!98521))

(assert (=> b!91949 m!98523))

(assert (=> bm!8941 d!24135))

(declare-fun bm!9039 () Bool)

(declare-fun call!9045 () Bool)

(declare-fun lt!44900 () ListLongMap!1517)

(assert (=> bm!9039 (= call!9045 (contains!784 lt!44900 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!9041 () Bool)

(declare-fun call!9048 () ListLongMap!1517)

(declare-fun call!9047 () ListLongMap!1517)

(assert (=> bm!9041 (= call!9048 call!9047)))

(declare-fun b!91950 () Bool)

(declare-fun e!59972 () Bool)

(assert (=> b!91950 (= e!59972 (validKeyInArray!0 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!91951 () Bool)

(declare-fun e!59971 () ListLongMap!1517)

(declare-fun e!59969 () ListLongMap!1517)

(assert (=> b!91951 (= e!59971 e!59969)))

(declare-fun c!15301 () Bool)

(assert (=> b!91951 (= c!15301 (and (not (= (bvand (ite (and c!15246 c!15242) lt!44800 (extraKeys!2237 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite (and c!15246 c!15242) lt!44800 (extraKeys!2237 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!91952 () Bool)

(declare-fun e!59970 () Bool)

(declare-fun e!59964 () Bool)

(assert (=> b!91952 (= e!59970 e!59964)))

(declare-fun res!46771 () Bool)

(declare-fun call!9042 () Bool)

(assert (=> b!91952 (= res!46771 call!9042)))

(assert (=> b!91952 (=> (not res!46771) (not e!59964))))

(declare-fun b!91953 () Bool)

(declare-fun call!9044 () ListLongMap!1517)

(assert (=> b!91953 (= e!59969 call!9044)))

(declare-fun bm!9042 () Bool)

(declare-fun c!15297 () Bool)

(declare-fun call!9046 () ListLongMap!1517)

(declare-fun call!9043 () ListLongMap!1517)

(assert (=> bm!9042 (= call!9046 (+!129 (ite c!15297 call!9043 (ite c!15301 call!9047 call!9048)) (ite (or c!15297 c!15301) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!15246 c!15242) lt!44521 (zeroValue!2294 newMap!16))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 newMap!16)))))))

(declare-fun b!91954 () Bool)

(assert (=> b!91954 (= e!59964 (= (apply!87 lt!44900 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!15246 c!15242) lt!44521 (zeroValue!2294 newMap!16))))))

(declare-fun b!91955 () Bool)

(declare-fun e!59963 () ListLongMap!1517)

(assert (=> b!91955 (= e!59963 call!9048)))

(declare-fun b!91956 () Bool)

(declare-fun e!59965 () Bool)

(declare-fun e!59975 () Bool)

(assert (=> b!91956 (= e!59965 e!59975)))

(declare-fun res!46768 () Bool)

(assert (=> b!91956 (= res!46768 call!9045)))

(assert (=> b!91956 (=> (not res!46768) (not e!59975))))

(declare-fun b!91957 () Bool)

(declare-fun e!59973 () Unit!2738)

(declare-fun lt!44895 () Unit!2738)

(assert (=> b!91957 (= e!59973 lt!44895)))

(declare-fun lt!44884 () ListLongMap!1517)

(assert (=> b!91957 (= lt!44884 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (ite (or c!15246 c!15251) (_values!2389 newMap!16) lt!44813) (mask!6466 newMap!16) (ite (and c!15246 c!15242) lt!44800 (extraKeys!2237 newMap!16)) (ite (and c!15246 c!15242) lt!44521 (zeroValue!2294 newMap!16)) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!44881 () (_ BitVec 64))

(assert (=> b!91957 (= lt!44881 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44896 () (_ BitVec 64))

(assert (=> b!91957 (= lt!44896 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!44899 () Unit!2738)

(assert (=> b!91957 (= lt!44899 (addStillContains!63 lt!44884 lt!44881 (ite (and c!15246 c!15242) lt!44521 (zeroValue!2294 newMap!16)) lt!44896))))

(assert (=> b!91957 (contains!784 (+!129 lt!44884 (tuple2!2291 lt!44881 (ite (and c!15246 c!15242) lt!44521 (zeroValue!2294 newMap!16)))) lt!44896)))

(declare-fun lt!44897 () Unit!2738)

(assert (=> b!91957 (= lt!44897 lt!44899)))

(declare-fun lt!44888 () ListLongMap!1517)

(assert (=> b!91957 (= lt!44888 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (ite (or c!15246 c!15251) (_values!2389 newMap!16) lt!44813) (mask!6466 newMap!16) (ite (and c!15246 c!15242) lt!44800 (extraKeys!2237 newMap!16)) (ite (and c!15246 c!15242) lt!44521 (zeroValue!2294 newMap!16)) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!44880 () (_ BitVec 64))

(assert (=> b!91957 (= lt!44880 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44887 () (_ BitVec 64))

(assert (=> b!91957 (= lt!44887 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!44898 () Unit!2738)

(assert (=> b!91957 (= lt!44898 (addApplyDifferent!63 lt!44888 lt!44880 (minValue!2294 newMap!16) lt!44887))))

(assert (=> b!91957 (= (apply!87 (+!129 lt!44888 (tuple2!2291 lt!44880 (minValue!2294 newMap!16))) lt!44887) (apply!87 lt!44888 lt!44887))))

(declare-fun lt!44889 () Unit!2738)

(assert (=> b!91957 (= lt!44889 lt!44898)))

(declare-fun lt!44894 () ListLongMap!1517)

(assert (=> b!91957 (= lt!44894 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (ite (or c!15246 c!15251) (_values!2389 newMap!16) lt!44813) (mask!6466 newMap!16) (ite (and c!15246 c!15242) lt!44800 (extraKeys!2237 newMap!16)) (ite (and c!15246 c!15242) lt!44521 (zeroValue!2294 newMap!16)) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!44882 () (_ BitVec 64))

(assert (=> b!91957 (= lt!44882 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44890 () (_ BitVec 64))

(assert (=> b!91957 (= lt!44890 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!44883 () Unit!2738)

(assert (=> b!91957 (= lt!44883 (addApplyDifferent!63 lt!44894 lt!44882 (ite (and c!15246 c!15242) lt!44521 (zeroValue!2294 newMap!16)) lt!44890))))

(assert (=> b!91957 (= (apply!87 (+!129 lt!44894 (tuple2!2291 lt!44882 (ite (and c!15246 c!15242) lt!44521 (zeroValue!2294 newMap!16)))) lt!44890) (apply!87 lt!44894 lt!44890))))

(declare-fun lt!44893 () Unit!2738)

(assert (=> b!91957 (= lt!44893 lt!44883)))

(declare-fun lt!44885 () ListLongMap!1517)

(assert (=> b!91957 (= lt!44885 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (ite (or c!15246 c!15251) (_values!2389 newMap!16) lt!44813) (mask!6466 newMap!16) (ite (and c!15246 c!15242) lt!44800 (extraKeys!2237 newMap!16)) (ite (and c!15246 c!15242) lt!44521 (zeroValue!2294 newMap!16)) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!44892 () (_ BitVec 64))

(assert (=> b!91957 (= lt!44892 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44901 () (_ BitVec 64))

(assert (=> b!91957 (= lt!44901 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!91957 (= lt!44895 (addApplyDifferent!63 lt!44885 lt!44892 (minValue!2294 newMap!16) lt!44901))))

(assert (=> b!91957 (= (apply!87 (+!129 lt!44885 (tuple2!2291 lt!44892 (minValue!2294 newMap!16))) lt!44901) (apply!87 lt!44885 lt!44901))))

(declare-fun b!91958 () Bool)

(assert (=> b!91958 (= e!59970 (not call!9042))))

(declare-fun b!91959 () Bool)

(declare-fun e!59968 () Bool)

(assert (=> b!91959 (= e!59968 e!59965)))

(declare-fun c!15299 () Bool)

(assert (=> b!91959 (= c!15299 (not (= (bvand (ite (and c!15246 c!15242) lt!44800 (extraKeys!2237 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!91960 () Bool)

(declare-fun e!59966 () Bool)

(assert (=> b!91960 (= e!59966 (= (apply!87 lt!44900 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)) (get!1254 (select (arr!1967 (ite (or c!15246 c!15251) (_values!2389 newMap!16) lt!44813)) #b00000000000000000000000000000000) (dynLambda!365 (defaultEntry!2406 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!91960 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2214 (ite (or c!15246 c!15251) (_values!2389 newMap!16) lt!44813))))))

(assert (=> b!91960 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))

(declare-fun b!91961 () Bool)

(assert (=> b!91961 (= e!59975 (= (apply!87 lt!44900 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2294 newMap!16)))))

(declare-fun b!91962 () Bool)

(declare-fun e!59967 () Bool)

(assert (=> b!91962 (= e!59967 (validKeyInArray!0 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!24137 () Bool)

(assert (=> d!24137 e!59968))

(declare-fun res!46766 () Bool)

(assert (=> d!24137 (=> (not res!46766) (not e!59968))))

(assert (=> d!24137 (= res!46766 (or (bvsge #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))))

(declare-fun lt!44886 () ListLongMap!1517)

(assert (=> d!24137 (= lt!44900 lt!44886)))

(declare-fun lt!44891 () Unit!2738)

(assert (=> d!24137 (= lt!44891 e!59973)))

(declare-fun c!15298 () Bool)

(assert (=> d!24137 (= c!15298 e!59972)))

(declare-fun res!46767 () Bool)

(assert (=> d!24137 (=> (not res!46767) (not e!59972))))

(assert (=> d!24137 (= res!46767 (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))

(assert (=> d!24137 (= lt!44886 e!59971)))

(assert (=> d!24137 (= c!15297 (and (not (= (bvand (ite (and c!15246 c!15242) lt!44800 (extraKeys!2237 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite (and c!15246 c!15242) lt!44800 (extraKeys!2237 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!24137 (validMask!0 (mask!6466 newMap!16))))

(assert (=> d!24137 (= (getCurrentListMap!456 (_keys!4086 newMap!16) (ite (or c!15246 c!15251) (_values!2389 newMap!16) lt!44813) (mask!6466 newMap!16) (ite (and c!15246 c!15242) lt!44800 (extraKeys!2237 newMap!16)) (ite (and c!15246 c!15242) lt!44521 (zeroValue!2294 newMap!16)) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)) lt!44900)))

(declare-fun bm!9040 () Bool)

(assert (=> bm!9040 (= call!9047 call!9043)))

(declare-fun b!91963 () Bool)

(declare-fun res!46770 () Bool)

(assert (=> b!91963 (=> (not res!46770) (not e!59968))))

(declare-fun e!59974 () Bool)

(assert (=> b!91963 (= res!46770 e!59974)))

(declare-fun res!46765 () Bool)

(assert (=> b!91963 (=> res!46765 e!59974)))

(assert (=> b!91963 (= res!46765 (not e!59967))))

(declare-fun res!46772 () Bool)

(assert (=> b!91963 (=> (not res!46772) (not e!59967))))

(assert (=> b!91963 (= res!46772 (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))

(declare-fun b!91964 () Bool)

(assert (=> b!91964 (= e!59965 (not call!9045))))

(declare-fun bm!9043 () Bool)

(assert (=> bm!9043 (= call!9042 (contains!784 lt!44900 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!91965 () Bool)

(declare-fun res!46769 () Bool)

(assert (=> b!91965 (=> (not res!46769) (not e!59968))))

(assert (=> b!91965 (= res!46769 e!59970)))

(declare-fun c!15300 () Bool)

(assert (=> b!91965 (= c!15300 (not (= (bvand (ite (and c!15246 c!15242) lt!44800 (extraKeys!2237 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!91966 () Bool)

(assert (=> b!91966 (= e!59974 e!59966)))

(declare-fun res!46773 () Bool)

(assert (=> b!91966 (=> (not res!46773) (not e!59966))))

(assert (=> b!91966 (= res!46773 (contains!784 lt!44900 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!91966 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))

(declare-fun c!15302 () Bool)

(declare-fun b!91967 () Bool)

(assert (=> b!91967 (= c!15302 (and (not (= (bvand (ite (and c!15246 c!15242) lt!44800 (extraKeys!2237 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite (and c!15246 c!15242) lt!44800 (extraKeys!2237 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!91967 (= e!59969 e!59963)))

(declare-fun b!91968 () Bool)

(declare-fun Unit!2754 () Unit!2738)

(assert (=> b!91968 (= e!59973 Unit!2754)))

(declare-fun b!91969 () Bool)

(assert (=> b!91969 (= e!59971 (+!129 call!9046 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 newMap!16))))))

(declare-fun b!91970 () Bool)

(assert (=> b!91970 (= e!59963 call!9044)))

(declare-fun bm!9044 () Bool)

(assert (=> bm!9044 (= call!9043 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (ite (or c!15246 c!15251) (_values!2389 newMap!16) lt!44813) (mask!6466 newMap!16) (ite (and c!15246 c!15242) lt!44800 (extraKeys!2237 newMap!16)) (ite (and c!15246 c!15242) lt!44521 (zeroValue!2294 newMap!16)) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun bm!9045 () Bool)

(assert (=> bm!9045 (= call!9044 call!9046)))

(assert (= (and d!24137 c!15297) b!91969))

(assert (= (and d!24137 (not c!15297)) b!91951))

(assert (= (and b!91951 c!15301) b!91953))

(assert (= (and b!91951 (not c!15301)) b!91967))

(assert (= (and b!91967 c!15302) b!91970))

(assert (= (and b!91967 (not c!15302)) b!91955))

(assert (= (or b!91970 b!91955) bm!9041))

(assert (= (or b!91953 bm!9041) bm!9040))

(assert (= (or b!91953 b!91970) bm!9045))

(assert (= (or b!91969 bm!9040) bm!9044))

(assert (= (or b!91969 bm!9045) bm!9042))

(assert (= (and d!24137 res!46767) b!91950))

(assert (= (and d!24137 c!15298) b!91957))

(assert (= (and d!24137 (not c!15298)) b!91968))

(assert (= (and d!24137 res!46766) b!91963))

(assert (= (and b!91963 res!46772) b!91962))

(assert (= (and b!91963 (not res!46765)) b!91966))

(assert (= (and b!91966 res!46773) b!91960))

(assert (= (and b!91963 res!46770) b!91965))

(assert (= (and b!91965 c!15300) b!91952))

(assert (= (and b!91965 (not c!15300)) b!91958))

(assert (= (and b!91952 res!46771) b!91954))

(assert (= (or b!91952 b!91958) bm!9043))

(assert (= (and b!91965 res!46769) b!91959))

(assert (= (and b!91959 c!15299) b!91956))

(assert (= (and b!91959 (not c!15299)) b!91964))

(assert (= (and b!91956 res!46768) b!91961))

(assert (= (or b!91956 b!91964) bm!9039))

(declare-fun b_lambda!4059 () Bool)

(assert (=> (not b_lambda!4059) (not b!91960)))

(assert (=> b!91960 t!5428))

(declare-fun b_and!5569 () Bool)

(assert (= b_and!5565 (and (=> t!5428 result!3101) b_and!5569)))

(assert (=> b!91960 t!5430))

(declare-fun b_and!5571 () Bool)

(assert (= b_and!5567 (and (=> t!5430 result!3103) b_and!5571)))

(declare-fun m!98525 () Bool)

(assert (=> b!91961 m!98525))

(declare-fun m!98527 () Bool)

(assert (=> b!91957 m!98527))

(declare-fun m!98529 () Bool)

(assert (=> b!91957 m!98529))

(declare-fun m!98531 () Bool)

(assert (=> b!91957 m!98531))

(declare-fun m!98533 () Bool)

(assert (=> b!91957 m!98533))

(declare-fun m!98535 () Bool)

(assert (=> b!91957 m!98535))

(declare-fun m!98537 () Bool)

(assert (=> b!91957 m!98537))

(declare-fun m!98539 () Bool)

(assert (=> b!91957 m!98539))

(assert (=> b!91957 m!98537))

(declare-fun m!98541 () Bool)

(assert (=> b!91957 m!98541))

(assert (=> b!91957 m!98409))

(assert (=> b!91957 m!98533))

(declare-fun m!98543 () Bool)

(assert (=> b!91957 m!98543))

(declare-fun m!98545 () Bool)

(assert (=> b!91957 m!98545))

(declare-fun m!98547 () Bool)

(assert (=> b!91957 m!98547))

(declare-fun m!98549 () Bool)

(assert (=> b!91957 m!98549))

(declare-fun m!98551 () Bool)

(assert (=> b!91957 m!98551))

(declare-fun m!98553 () Bool)

(assert (=> b!91957 m!98553))

(assert (=> b!91957 m!98535))

(declare-fun m!98555 () Bool)

(assert (=> b!91957 m!98555))

(assert (=> b!91957 m!98527))

(declare-fun m!98557 () Bool)

(assert (=> b!91957 m!98557))

(declare-fun m!98559 () Bool)

(assert (=> bm!9042 m!98559))

(declare-fun m!98561 () Bool)

(assert (=> b!91954 m!98561))

(assert (=> b!91966 m!98409))

(assert (=> b!91966 m!98409))

(declare-fun m!98563 () Bool)

(assert (=> b!91966 m!98563))

(declare-fun m!98565 () Bool)

(assert (=> b!91969 m!98565))

(declare-fun m!98567 () Bool)

(assert (=> bm!9043 m!98567))

(declare-fun m!98569 () Bool)

(assert (=> bm!9039 m!98569))

(assert (=> bm!9044 m!98553))

(assert (=> b!91960 m!98409))

(declare-fun m!98571 () Bool)

(assert (=> b!91960 m!98571))

(assert (=> b!91960 m!98441))

(declare-fun m!98573 () Bool)

(assert (=> b!91960 m!98573))

(assert (=> b!91960 m!98409))

(declare-fun m!98575 () Bool)

(assert (=> b!91960 m!98575))

(assert (=> b!91960 m!98571))

(assert (=> b!91960 m!98441))

(assert (=> b!91962 m!98409))

(assert (=> b!91962 m!98409))

(assert (=> b!91962 m!98447))

(assert (=> b!91950 m!98409))

(assert (=> b!91950 m!98409))

(assert (=> b!91950 m!98447))

(assert (=> d!24137 m!98389))

(assert (=> bm!9011 d!24137))

(declare-fun b!91971 () Bool)

(declare-fun e!59980 () ListLongMap!1517)

(declare-fun e!59982 () ListLongMap!1517)

(assert (=> b!91971 (= e!59980 e!59982)))

(declare-fun c!15304 () Bool)

(assert (=> b!91971 (= c!15304 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(declare-fun b!91972 () Bool)

(assert (=> b!91972 (= e!59980 (ListLongMap!1518 Nil!1578))))

(declare-fun b!91973 () Bool)

(declare-fun call!9049 () ListLongMap!1517)

(assert (=> b!91973 (= e!59982 call!9049)))

(declare-fun b!91974 () Bool)

(declare-fun lt!44907 () ListLongMap!1517)

(declare-fun e!59977 () Bool)

(assert (=> b!91974 (= e!59977 (= lt!44907 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun bm!9046 () Bool)

(assert (=> bm!9046 (= call!9049 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun b!91975 () Bool)

(declare-fun e!59981 () Bool)

(assert (=> b!91975 (= e!59981 e!59977)))

(declare-fun c!15306 () Bool)

(assert (=> b!91975 (= c!15306 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun b!91976 () Bool)

(declare-fun e!59976 () Bool)

(assert (=> b!91976 (= e!59976 e!59981)))

(declare-fun c!15305 () Bool)

(declare-fun e!59979 () Bool)

(assert (=> b!91976 (= c!15305 e!59979)))

(declare-fun res!46775 () Bool)

(assert (=> b!91976 (=> (not res!46775) (not e!59979))))

(assert (=> b!91976 (= res!46775 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun b!91977 () Bool)

(assert (=> b!91977 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(assert (=> b!91977 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2214 (_values!2389 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun e!59978 () Bool)

(assert (=> b!91977 (= e!59978 (= (apply!87 lt!44907 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))) (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!24139 () Bool)

(assert (=> d!24139 e!59976))

(declare-fun res!46776 () Bool)

(assert (=> d!24139 (=> (not res!46776) (not e!59976))))

(assert (=> d!24139 (= res!46776 (not (contains!784 lt!44907 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!24139 (= lt!44907 e!59980)))

(declare-fun c!15303 () Bool)

(assert (=> d!24139 (= c!15303 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(assert (=> d!24139 (validMask!0 (mask!6466 (v!2722 (underlying!315 thiss!992))))))

(assert (=> d!24139 (= (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))) lt!44907)))

(declare-fun b!91978 () Bool)

(assert (=> b!91978 (= e!59977 (isEmpty!351 lt!44907))))

(declare-fun b!91979 () Bool)

(assert (=> b!91979 (= e!59979 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!91979 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!91980 () Bool)

(assert (=> b!91980 (= e!59981 e!59978)))

(assert (=> b!91980 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun res!46777 () Bool)

(assert (=> b!91980 (= res!46777 (contains!784 lt!44907 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!91980 (=> (not res!46777) (not e!59978))))

(declare-fun b!91981 () Bool)

(declare-fun res!46774 () Bool)

(assert (=> b!91981 (=> (not res!46774) (not e!59976))))

(assert (=> b!91981 (= res!46774 (not (contains!784 lt!44907 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!91982 () Bool)

(declare-fun lt!44905 () Unit!2738)

(declare-fun lt!44902 () Unit!2738)

(assert (=> b!91982 (= lt!44905 lt!44902)))

(declare-fun lt!44906 () (_ BitVec 64))

(declare-fun lt!44908 () (_ BitVec 64))

(declare-fun lt!44904 () ListLongMap!1517)

(declare-fun lt!44903 () V!3091)

(assert (=> b!91982 (not (contains!784 (+!129 lt!44904 (tuple2!2291 lt!44908 lt!44903)) lt!44906))))

(assert (=> b!91982 (= lt!44902 (addStillNotContains!38 lt!44904 lt!44908 lt!44903 lt!44906))))

(assert (=> b!91982 (= lt!44906 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!91982 (= lt!44903 (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!91982 (= lt!44908 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (=> b!91982 (= lt!44904 call!9049)))

(assert (=> b!91982 (= e!59982 (+!129 call!9049 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!24139 c!15303) b!91972))

(assert (= (and d!24139 (not c!15303)) b!91971))

(assert (= (and b!91971 c!15304) b!91982))

(assert (= (and b!91971 (not c!15304)) b!91973))

(assert (= (or b!91982 b!91973) bm!9046))

(assert (= (and d!24139 res!46776) b!91981))

(assert (= (and b!91981 res!46774) b!91976))

(assert (= (and b!91976 res!46775) b!91979))

(assert (= (and b!91976 c!15305) b!91980))

(assert (= (and b!91976 (not c!15305)) b!91975))

(assert (= (and b!91980 res!46777) b!91977))

(assert (= (and b!91975 c!15306) b!91974))

(assert (= (and b!91975 (not c!15306)) b!91978))

(declare-fun b_lambda!4061 () Bool)

(assert (=> (not b_lambda!4061) (not b!91977)))

(assert (=> b!91977 t!5416))

(declare-fun b_and!5573 () Bool)

(assert (= b_and!5569 (and (=> t!5416 result!3087) b_and!5573)))

(assert (=> b!91977 t!5418))

(declare-fun b_and!5575 () Bool)

(assert (= b_and!5571 (and (=> t!5418 result!3091) b_and!5575)))

(declare-fun b_lambda!4063 () Bool)

(assert (=> (not b_lambda!4063) (not b!91982)))

(assert (=> b!91982 t!5416))

(declare-fun b_and!5577 () Bool)

(assert (= b_and!5573 (and (=> t!5416 result!3087) b_and!5577)))

(assert (=> b!91982 t!5418))

(declare-fun b_and!5579 () Bool)

(assert (= b_and!5575 (and (=> t!5418 result!3091) b_and!5579)))

(declare-fun m!98577 () Bool)

(assert (=> b!91977 m!98577))

(assert (=> b!91977 m!98577))

(declare-fun m!98579 () Bool)

(assert (=> b!91977 m!98579))

(assert (=> b!91977 m!97917))

(declare-fun m!98581 () Bool)

(assert (=> b!91977 m!98581))

(assert (=> b!91977 m!97917))

(declare-fun m!98583 () Bool)

(assert (=> b!91977 m!98583))

(assert (=> b!91977 m!98581))

(declare-fun m!98585 () Bool)

(assert (=> d!24139 m!98585))

(assert (=> d!24139 m!98111))

(declare-fun m!98587 () Bool)

(assert (=> bm!9046 m!98587))

(assert (=> b!91980 m!98577))

(assert (=> b!91980 m!98577))

(declare-fun m!98589 () Bool)

(assert (=> b!91980 m!98589))

(declare-fun m!98591 () Bool)

(assert (=> b!91978 m!98591))

(assert (=> b!91979 m!98577))

(assert (=> b!91979 m!98577))

(declare-fun m!98593 () Bool)

(assert (=> b!91979 m!98593))

(assert (=> b!91974 m!98587))

(declare-fun m!98595 () Bool)

(assert (=> b!91981 m!98595))

(declare-fun m!98597 () Bool)

(assert (=> b!91982 m!98597))

(assert (=> b!91982 m!98577))

(declare-fun m!98599 () Bool)

(assert (=> b!91982 m!98599))

(assert (=> b!91982 m!97917))

(declare-fun m!98601 () Bool)

(assert (=> b!91982 m!98601))

(assert (=> b!91982 m!98581))

(assert (=> b!91982 m!97917))

(assert (=> b!91982 m!98583))

(assert (=> b!91982 m!98581))

(assert (=> b!91982 m!98601))

(declare-fun m!98603 () Bool)

(assert (=> b!91982 m!98603))

(assert (=> b!91971 m!98577))

(assert (=> b!91971 m!98577))

(assert (=> b!91971 m!98593))

(assert (=> b!91626 d!24139))

(declare-fun d!24141 () Bool)

(assert (=> d!24141 (= (validMask!0 (mask!6466 (v!2722 (underlying!315 thiss!992)))) (and (or (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000001111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000011111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000001111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000011111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000001111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000011111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000111111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000000000000001111111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000000000000011111111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000000000000111111111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000000000001111111111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000000000011111111111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000000000111111111111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000000001111111111111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000000011111111111111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000000111111111111111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000001111111111111111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000011111111111111111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000000111111111111111111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000001111111111111111111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000011111111111111111111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00000111111111111111111111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00001111111111111111111111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00011111111111111111111111111111) (= (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!6466 (v!2722 (underlying!315 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> d!24055 d!24141))

(declare-fun d!24143 () Bool)

(declare-fun isEmpty!352 (Option!150) Bool)

(assert (=> d!24143 (= (isDefined!98 (getValueByKey!144 (toList!774 lt!44515) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355))) (not (isEmpty!352 (getValueByKey!144 (toList!774 lt!44515) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))))

(declare-fun bs!3794 () Bool)

(assert (= bs!3794 d!24143))

(assert (=> bs!3794 m!98305))

(declare-fun m!98605 () Bool)

(assert (=> bs!3794 m!98605))

(assert (=> b!91676 d!24143))

(declare-fun b!91986 () Bool)

(declare-fun e!59984 () Option!150)

(assert (=> b!91986 (= e!59984 None!148)))

(declare-fun b!91984 () Bool)

(declare-fun e!59983 () Option!150)

(assert (=> b!91984 (= e!59983 e!59984)))

(declare-fun c!15308 () Bool)

(assert (=> b!91984 (= c!15308 (and ((_ is Cons!1577) (toList!774 lt!44515)) (not (= (_1!1155 (h!2169 (toList!774 lt!44515))) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))))

(declare-fun d!24145 () Bool)

(declare-fun c!15307 () Bool)

(assert (=> d!24145 (= c!15307 (and ((_ is Cons!1577) (toList!774 lt!44515)) (= (_1!1155 (h!2169 (toList!774 lt!44515))) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355))))))

(assert (=> d!24145 (= (getValueByKey!144 (toList!774 lt!44515) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) e!59983)))

(declare-fun b!91983 () Bool)

(assert (=> b!91983 (= e!59983 (Some!149 (_2!1155 (h!2169 (toList!774 lt!44515)))))))

(declare-fun b!91985 () Bool)

(assert (=> b!91985 (= e!59984 (getValueByKey!144 (t!5419 (toList!774 lt!44515)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (= (and d!24145 c!15307) b!91983))

(assert (= (and d!24145 (not c!15307)) b!91984))

(assert (= (and b!91984 c!15308) b!91985))

(assert (= (and b!91984 (not c!15308)) b!91986))

(assert (=> b!91985 m!97909))

(declare-fun m!98607 () Bool)

(assert (=> b!91985 m!98607))

(assert (=> b!91676 d!24145))

(declare-fun bm!9051 () Bool)

(declare-fun call!9055 () Bool)

(assert (=> bm!9051 (= call!9055 (arrayContainsKey!0 (_keys!4086 newMap!16) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!92003 () Bool)

(declare-fun res!46786 () Bool)

(declare-fun e!59993 () Bool)

(assert (=> b!92003 (=> (not res!46786) (not e!59993))))

(declare-fun lt!44913 () SeekEntryResult!258)

(assert (=> b!92003 (= res!46786 (= (select (arr!1966 (_keys!4086 newMap!16)) (index!3175 lt!44913)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!92003 (and (bvsge (index!3175 lt!44913) #b00000000000000000000000000000000) (bvslt (index!3175 lt!44913) (size!2213 (_keys!4086 newMap!16))))))

(declare-fun d!24147 () Bool)

(declare-fun e!59996 () Bool)

(assert (=> d!24147 e!59996))

(declare-fun c!15314 () Bool)

(assert (=> d!24147 (= c!15314 ((_ is MissingZero!258) lt!44913))))

(assert (=> d!24147 (= lt!44913 (seekEntryOrOpen!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (_keys!4086 newMap!16) (mask!6466 newMap!16)))))

(declare-fun lt!44914 () Unit!2738)

(declare-fun choose!554 (array!4134 array!4136 (_ BitVec 32) (_ BitVec 32) V!3091 V!3091 (_ BitVec 64) Int) Unit!2738)

(assert (=> d!24147 (= lt!44914 (choose!554 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (defaultEntry!2406 newMap!16)))))

(assert (=> d!24147 (validMask!0 (mask!6466 newMap!16))))

(assert (=> d!24147 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!36 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (defaultEntry!2406 newMap!16)) lt!44914)))

(declare-fun b!92004 () Bool)

(declare-fun e!59994 () Bool)

(assert (=> b!92004 (= e!59994 ((_ is Undefined!258) lt!44913))))

(declare-fun b!92005 () Bool)

(declare-fun res!46788 () Bool)

(assert (=> b!92005 (=> (not res!46788) (not e!59993))))

(declare-fun call!9054 () Bool)

(assert (=> b!92005 (= res!46788 call!9054)))

(assert (=> b!92005 (= e!59994 e!59993)))

(declare-fun b!92006 () Bool)

(assert (=> b!92006 (= e!59996 e!59994)))

(declare-fun c!15313 () Bool)

(assert (=> b!92006 (= c!15313 ((_ is MissingVacant!258) lt!44913))))

(declare-fun b!92007 () Bool)

(declare-fun e!59995 () Bool)

(assert (=> b!92007 (= e!59995 (not call!9055))))

(declare-fun b!92008 () Bool)

(assert (=> b!92008 (= e!59993 (not call!9055))))

(declare-fun b!92009 () Bool)

(assert (=> b!92009 (and (bvsge (index!3172 lt!44913) #b00000000000000000000000000000000) (bvslt (index!3172 lt!44913) (size!2213 (_keys!4086 newMap!16))))))

(declare-fun res!46789 () Bool)

(assert (=> b!92009 (= res!46789 (= (select (arr!1966 (_keys!4086 newMap!16)) (index!3172 lt!44913)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!92009 (=> (not res!46789) (not e!59995))))

(declare-fun bm!9052 () Bool)

(assert (=> bm!9052 (= call!9054 (inRange!0 (ite c!15314 (index!3172 lt!44913) (index!3175 lt!44913)) (mask!6466 newMap!16)))))

(declare-fun b!92010 () Bool)

(assert (=> b!92010 (= e!59996 e!59995)))

(declare-fun res!46787 () Bool)

(assert (=> b!92010 (= res!46787 call!9054)))

(assert (=> b!92010 (=> (not res!46787) (not e!59995))))

(assert (= (and d!24147 c!15314) b!92010))

(assert (= (and d!24147 (not c!15314)) b!92006))

(assert (= (and b!92010 res!46787) b!92009))

(assert (= (and b!92009 res!46789) b!92007))

(assert (= (and b!92006 c!15313) b!92005))

(assert (= (and b!92006 (not c!15313)) b!92004))

(assert (= (and b!92005 res!46788) b!92003))

(assert (= (and b!92003 res!46786) b!92008))

(assert (= (or b!92010 b!92005) bm!9052))

(assert (= (or b!92007 b!92008) bm!9051))

(declare-fun m!98609 () Bool)

(assert (=> bm!9052 m!98609))

(assert (=> d!24147 m!97909))

(assert (=> d!24147 m!98317))

(assert (=> d!24147 m!97909))

(declare-fun m!98611 () Bool)

(assert (=> d!24147 m!98611))

(assert (=> d!24147 m!98389))

(assert (=> bm!9051 m!97909))

(assert (=> bm!9051 m!98353))

(declare-fun m!98613 () Bool)

(assert (=> b!92009 m!98613))

(declare-fun m!98615 () Bool)

(assert (=> b!92003 m!98615))

(assert (=> bm!9004 d!24147))

(declare-fun d!24149 () Bool)

(declare-fun e!59997 () Bool)

(assert (=> d!24149 e!59997))

(declare-fun res!46790 () Bool)

(assert (=> d!24149 (=> res!46790 e!59997)))

(declare-fun lt!44915 () Bool)

(assert (=> d!24149 (= res!46790 (not lt!44915))))

(declare-fun lt!44918 () Bool)

(assert (=> d!24149 (= lt!44915 lt!44918)))

(declare-fun lt!44916 () Unit!2738)

(declare-fun e!59998 () Unit!2738)

(assert (=> d!24149 (= lt!44916 e!59998)))

(declare-fun c!15315 () Bool)

(assert (=> d!24149 (= c!15315 lt!44918)))

(assert (=> d!24149 (= lt!44918 (containsKey!148 (toList!774 lt!44712) (_1!1155 lt!44507)))))

(assert (=> d!24149 (= (contains!784 lt!44712 (_1!1155 lt!44507)) lt!44915)))

(declare-fun b!92011 () Bool)

(declare-fun lt!44917 () Unit!2738)

(assert (=> b!92011 (= e!59998 lt!44917)))

(assert (=> b!92011 (= lt!44917 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 lt!44712) (_1!1155 lt!44507)))))

(assert (=> b!92011 (isDefined!98 (getValueByKey!144 (toList!774 lt!44712) (_1!1155 lt!44507)))))

(declare-fun b!92012 () Bool)

(declare-fun Unit!2755 () Unit!2738)

(assert (=> b!92012 (= e!59998 Unit!2755)))

(declare-fun b!92013 () Bool)

(assert (=> b!92013 (= e!59997 (isDefined!98 (getValueByKey!144 (toList!774 lt!44712) (_1!1155 lt!44507))))))

(assert (= (and d!24149 c!15315) b!92011))

(assert (= (and d!24149 (not c!15315)) b!92012))

(assert (= (and d!24149 (not res!46790)) b!92013))

(declare-fun m!98617 () Bool)

(assert (=> d!24149 m!98617))

(declare-fun m!98619 () Bool)

(assert (=> b!92011 m!98619))

(assert (=> b!92011 m!98253))

(assert (=> b!92011 m!98253))

(declare-fun m!98621 () Bool)

(assert (=> b!92011 m!98621))

(assert (=> b!92013 m!98253))

(assert (=> b!92013 m!98253))

(assert (=> b!92013 m!98621))

(assert (=> d!24079 d!24149))

(declare-fun b!92017 () Bool)

(declare-fun e!60000 () Option!150)

(assert (=> b!92017 (= e!60000 None!148)))

(declare-fun b!92015 () Bool)

(declare-fun e!59999 () Option!150)

(assert (=> b!92015 (= e!59999 e!60000)))

(declare-fun c!15317 () Bool)

(assert (=> b!92015 (= c!15317 (and ((_ is Cons!1577) lt!44711) (not (= (_1!1155 (h!2169 lt!44711)) (_1!1155 lt!44507)))))))

(declare-fun d!24151 () Bool)

(declare-fun c!15316 () Bool)

(assert (=> d!24151 (= c!15316 (and ((_ is Cons!1577) lt!44711) (= (_1!1155 (h!2169 lt!44711)) (_1!1155 lt!44507))))))

(assert (=> d!24151 (= (getValueByKey!144 lt!44711 (_1!1155 lt!44507)) e!59999)))

(declare-fun b!92014 () Bool)

(assert (=> b!92014 (= e!59999 (Some!149 (_2!1155 (h!2169 lt!44711))))))

(declare-fun b!92016 () Bool)

(assert (=> b!92016 (= e!60000 (getValueByKey!144 (t!5419 lt!44711) (_1!1155 lt!44507)))))

(assert (= (and d!24151 c!15316) b!92014))

(assert (= (and d!24151 (not c!15316)) b!92015))

(assert (= (and b!92015 c!15317) b!92016))

(assert (= (and b!92015 (not c!15317)) b!92017))

(declare-fun m!98623 () Bool)

(assert (=> b!92016 m!98623))

(assert (=> d!24079 d!24151))

(declare-fun d!24153 () Bool)

(assert (=> d!24153 (= (getValueByKey!144 lt!44711 (_1!1155 lt!44507)) (Some!149 (_2!1155 lt!44507)))))

(declare-fun lt!44919 () Unit!2738)

(assert (=> d!24153 (= lt!44919 (choose!553 lt!44711 (_1!1155 lt!44507) (_2!1155 lt!44507)))))

(declare-fun e!60001 () Bool)

(assert (=> d!24153 e!60001))

(declare-fun res!46791 () Bool)

(assert (=> d!24153 (=> (not res!46791) (not e!60001))))

(assert (=> d!24153 (= res!46791 (isStrictlySorted!296 lt!44711))))

(assert (=> d!24153 (= (lemmaContainsTupThenGetReturnValue!63 lt!44711 (_1!1155 lt!44507) (_2!1155 lt!44507)) lt!44919)))

(declare-fun b!92018 () Bool)

(declare-fun res!46792 () Bool)

(assert (=> b!92018 (=> (not res!46792) (not e!60001))))

(assert (=> b!92018 (= res!46792 (containsKey!148 lt!44711 (_1!1155 lt!44507)))))

(declare-fun b!92019 () Bool)

(assert (=> b!92019 (= e!60001 (contains!786 lt!44711 (tuple2!2291 (_1!1155 lt!44507) (_2!1155 lt!44507))))))

(assert (= (and d!24153 res!46791) b!92018))

(assert (= (and b!92018 res!46792) b!92019))

(assert (=> d!24153 m!98247))

(declare-fun m!98625 () Bool)

(assert (=> d!24153 m!98625))

(declare-fun m!98627 () Bool)

(assert (=> d!24153 m!98627))

(declare-fun m!98629 () Bool)

(assert (=> b!92018 m!98629))

(declare-fun m!98631 () Bool)

(assert (=> b!92019 m!98631))

(assert (=> d!24079 d!24153))

(declare-fun c!15319 () Bool)

(declare-fun b!92020 () Bool)

(declare-fun e!60005 () List!1581)

(declare-fun c!15320 () Bool)

(assert (=> b!92020 (= e!60005 (ite c!15319 (t!5419 (toList!774 lt!44504)) (ite c!15320 (Cons!1577 (h!2169 (toList!774 lt!44504)) (t!5419 (toList!774 lt!44504))) Nil!1578)))))

(declare-fun b!92021 () Bool)

(declare-fun e!60004 () List!1581)

(declare-fun call!9056 () List!1581)

(assert (=> b!92021 (= e!60004 call!9056)))

(declare-fun bm!9053 () Bool)

(declare-fun call!9057 () List!1581)

(declare-fun call!9058 () List!1581)

(assert (=> bm!9053 (= call!9057 call!9058)))

(declare-fun bm!9054 () Bool)

(declare-fun c!15318 () Bool)

(assert (=> bm!9054 (= call!9058 ($colon$colon!74 e!60005 (ite c!15318 (h!2169 (toList!774 lt!44504)) (tuple2!2291 (_1!1155 lt!44507) (_2!1155 lt!44507)))))))

(declare-fun c!15321 () Bool)

(assert (=> bm!9054 (= c!15321 c!15318)))

(declare-fun b!92022 () Bool)

(declare-fun e!60002 () List!1581)

(assert (=> b!92022 (= e!60002 call!9058)))

(declare-fun b!92023 () Bool)

(assert (=> b!92023 (= e!60004 call!9056)))

(declare-fun b!92024 () Bool)

(declare-fun e!60006 () List!1581)

(assert (=> b!92024 (= e!60006 call!9057)))

(declare-fun b!92025 () Bool)

(assert (=> b!92025 (= e!60005 (insertStrictlySorted!65 (t!5419 (toList!774 lt!44504)) (_1!1155 lt!44507) (_2!1155 lt!44507)))))

(declare-fun b!92026 () Bool)

(assert (=> b!92026 (= c!15320 (and ((_ is Cons!1577) (toList!774 lt!44504)) (bvsgt (_1!1155 (h!2169 (toList!774 lt!44504))) (_1!1155 lt!44507))))))

(assert (=> b!92026 (= e!60006 e!60004)))

(declare-fun bm!9055 () Bool)

(assert (=> bm!9055 (= call!9056 call!9057)))

(declare-fun b!92027 () Bool)

(declare-fun res!46794 () Bool)

(declare-fun e!60003 () Bool)

(assert (=> b!92027 (=> (not res!46794) (not e!60003))))

(declare-fun lt!44920 () List!1581)

(assert (=> b!92027 (= res!46794 (containsKey!148 lt!44920 (_1!1155 lt!44507)))))

(declare-fun b!92028 () Bool)

(assert (=> b!92028 (= e!60002 e!60006)))

(assert (=> b!92028 (= c!15319 (and ((_ is Cons!1577) (toList!774 lt!44504)) (= (_1!1155 (h!2169 (toList!774 lt!44504))) (_1!1155 lt!44507))))))

(declare-fun b!92029 () Bool)

(assert (=> b!92029 (= e!60003 (contains!786 lt!44920 (tuple2!2291 (_1!1155 lt!44507) (_2!1155 lt!44507))))))

(declare-fun d!24155 () Bool)

(assert (=> d!24155 e!60003))

(declare-fun res!46793 () Bool)

(assert (=> d!24155 (=> (not res!46793) (not e!60003))))

(assert (=> d!24155 (= res!46793 (isStrictlySorted!296 lt!44920))))

(assert (=> d!24155 (= lt!44920 e!60002)))

(assert (=> d!24155 (= c!15318 (and ((_ is Cons!1577) (toList!774 lt!44504)) (bvslt (_1!1155 (h!2169 (toList!774 lt!44504))) (_1!1155 lt!44507))))))

(assert (=> d!24155 (isStrictlySorted!296 (toList!774 lt!44504))))

(assert (=> d!24155 (= (insertStrictlySorted!65 (toList!774 lt!44504) (_1!1155 lt!44507) (_2!1155 lt!44507)) lt!44920)))

(assert (= (and d!24155 c!15318) b!92022))

(assert (= (and d!24155 (not c!15318)) b!92028))

(assert (= (and b!92028 c!15319) b!92024))

(assert (= (and b!92028 (not c!15319)) b!92026))

(assert (= (and b!92026 c!15320) b!92021))

(assert (= (and b!92026 (not c!15320)) b!92023))

(assert (= (or b!92021 b!92023) bm!9055))

(assert (= (or b!92024 bm!9055) bm!9053))

(assert (= (or b!92022 bm!9053) bm!9054))

(assert (= (and bm!9054 c!15321) b!92025))

(assert (= (and bm!9054 (not c!15321)) b!92020))

(assert (= (and d!24155 res!46793) b!92027))

(assert (= (and b!92027 res!46794) b!92029))

(declare-fun m!98633 () Bool)

(assert (=> b!92027 m!98633))

(declare-fun m!98635 () Bool)

(assert (=> b!92029 m!98635))

(declare-fun m!98637 () Bool)

(assert (=> b!92025 m!98637))

(declare-fun m!98639 () Bool)

(assert (=> bm!9054 m!98639))

(declare-fun m!98641 () Bool)

(assert (=> d!24155 m!98641))

(declare-fun m!98643 () Bool)

(assert (=> d!24155 m!98643))

(assert (=> d!24079 d!24155))

(declare-fun d!24157 () Bool)

(assert (=> d!24157 (= (apply!87 lt!44673 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1257 (getValueByKey!144 (toList!774 lt!44673) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!3795 () Bool)

(assert (= bs!3795 d!24157))

(assert (=> bs!3795 m!98075))

(declare-fun m!98645 () Bool)

(assert (=> bs!3795 m!98645))

(assert (=> bs!3795 m!98645))

(declare-fun m!98647 () Bool)

(assert (=> bs!3795 m!98647))

(assert (=> b!91629 d!24157))

(assert (=> b!91629 d!24129))

(declare-fun d!24159 () Bool)

(assert (=> d!24159 (= (validKeyInArray!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) (and (not (= (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!91817 d!24159))

(declare-fun d!24161 () Bool)

(assert (=> d!24161 (= (get!1255 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) from!355) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!2721 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (=> b!91588 d!24161))

(declare-fun d!24163 () Bool)

(declare-fun res!46795 () Bool)

(declare-fun e!60007 () Bool)

(assert (=> d!24163 (=> res!46795 e!60007)))

(assert (=> d!24163 (= res!46795 (= (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (=> d!24163 (= (arrayContainsKey!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) e!60007)))

(declare-fun b!92030 () Bool)

(declare-fun e!60008 () Bool)

(assert (=> b!92030 (= e!60007 e!60008)))

(declare-fun res!46796 () Bool)

(assert (=> b!92030 (=> (not res!46796) (not e!60008))))

(assert (=> b!92030 (= res!46796 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun b!92031 () Bool)

(assert (=> b!92031 (= e!60008 (arrayContainsKey!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!24163 (not res!46795)) b!92030))

(assert (= (and b!92030 res!46796) b!92031))

(assert (=> d!24163 m!98577))

(assert (=> b!92031 m!97909))

(declare-fun m!98649 () Bool)

(assert (=> b!92031 m!98649))

(assert (=> b!91796 d!24163))

(declare-fun d!24165 () Bool)

(assert (=> d!24165 (= (apply!87 lt!44703 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1257 (getValueByKey!144 (toList!774 lt!44703) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!3796 () Bool)

(assert (= bs!3796 d!24165))

(declare-fun m!98651 () Bool)

(assert (=> bs!3796 m!98651))

(assert (=> bs!3796 m!98651))

(declare-fun m!98653 () Bool)

(assert (=> bs!3796 m!98653))

(assert (=> b!91643 d!24165))

(declare-fun d!24167 () Bool)

(declare-fun res!46797 () Bool)

(declare-fun e!60009 () Bool)

(assert (=> d!24167 (=> res!46797 e!60009)))

(assert (=> d!24167 (= res!46797 (= (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (=> d!24167 (= (arrayContainsKey!0 (_keys!4086 newMap!16) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b00000000000000000000000000000000) e!60009)))

(declare-fun b!92032 () Bool)

(declare-fun e!60010 () Bool)

(assert (=> b!92032 (= e!60009 e!60010)))

(declare-fun res!46798 () Bool)

(assert (=> b!92032 (=> (not res!46798) (not e!60010))))

(assert (=> b!92032 (= res!46798 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2213 (_keys!4086 newMap!16))))))

(declare-fun b!92033 () Bool)

(assert (=> b!92033 (= e!60010 (arrayContainsKey!0 (_keys!4086 newMap!16) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!24167 (not res!46797)) b!92032))

(assert (= (and b!92032 res!46798) b!92033))

(assert (=> d!24167 m!98409))

(assert (=> b!92033 m!97909))

(declare-fun m!98655 () Bool)

(assert (=> b!92033 m!98655))

(assert (=> bm!9007 d!24167))

(declare-fun d!24169 () Bool)

(declare-fun e!60011 () Bool)

(assert (=> d!24169 e!60011))

(declare-fun res!46799 () Bool)

(assert (=> d!24169 (=> res!46799 e!60011)))

(declare-fun lt!44921 () Bool)

(assert (=> d!24169 (= res!46799 (not lt!44921))))

(declare-fun lt!44924 () Bool)

(assert (=> d!24169 (= lt!44921 lt!44924)))

(declare-fun lt!44922 () Unit!2738)

(declare-fun e!60012 () Unit!2738)

(assert (=> d!24169 (= lt!44922 e!60012)))

(declare-fun c!15322 () Bool)

(assert (=> d!24169 (= c!15322 lt!44924)))

(assert (=> d!24169 (= lt!44924 (containsKey!148 (toList!774 lt!44673) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!24169 (= (contains!784 lt!44673 #b1000000000000000000000000000000000000000000000000000000000000000) lt!44921)))

(declare-fun b!92034 () Bool)

(declare-fun lt!44923 () Unit!2738)

(assert (=> b!92034 (= e!60012 lt!44923)))

(assert (=> b!92034 (= lt!44923 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 lt!44673) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!92034 (isDefined!98 (getValueByKey!144 (toList!774 lt!44673) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!92035 () Bool)

(declare-fun Unit!2756 () Unit!2738)

(assert (=> b!92035 (= e!60012 Unit!2756)))

(declare-fun b!92036 () Bool)

(assert (=> b!92036 (= e!60011 (isDefined!98 (getValueByKey!144 (toList!774 lt!44673) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!24169 c!15322) b!92034))

(assert (= (and d!24169 (not c!15322)) b!92035))

(assert (= (and d!24169 (not res!46799)) b!92036))

(declare-fun m!98657 () Bool)

(assert (=> d!24169 m!98657))

(declare-fun m!98659 () Bool)

(assert (=> b!92034 m!98659))

(declare-fun m!98661 () Bool)

(assert (=> b!92034 m!98661))

(assert (=> b!92034 m!98661))

(declare-fun m!98663 () Bool)

(assert (=> b!92034 m!98663))

(assert (=> b!92036 m!98661))

(assert (=> b!92036 m!98661))

(assert (=> b!92036 m!98663))

(assert (=> b!91633 d!24169))

(declare-fun d!24171 () Bool)

(declare-fun e!60013 () Bool)

(assert (=> d!24171 e!60013))

(declare-fun res!46800 () Bool)

(assert (=> d!24171 (=> res!46800 e!60013)))

(declare-fun lt!44925 () Bool)

(assert (=> d!24171 (= res!46800 (not lt!44925))))

(declare-fun lt!44928 () Bool)

(assert (=> d!24171 (= lt!44925 lt!44928)))

(declare-fun lt!44926 () Unit!2738)

(declare-fun e!60014 () Unit!2738)

(assert (=> d!24171 (= lt!44926 e!60014)))

(declare-fun c!15323 () Bool)

(assert (=> d!24171 (= c!15323 lt!44928)))

(assert (=> d!24171 (= lt!44928 (containsKey!148 (toList!774 call!9021) (ite c!15251 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (select (arr!1966 (_keys!4086 newMap!16)) (index!3173 lt!44816)))))))

(assert (=> d!24171 (= (contains!784 call!9021 (ite c!15251 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (select (arr!1966 (_keys!4086 newMap!16)) (index!3173 lt!44816)))) lt!44925)))

(declare-fun b!92037 () Bool)

(declare-fun lt!44927 () Unit!2738)

(assert (=> b!92037 (= e!60014 lt!44927)))

(assert (=> b!92037 (= lt!44927 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 call!9021) (ite c!15251 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (select (arr!1966 (_keys!4086 newMap!16)) (index!3173 lt!44816)))))))

(assert (=> b!92037 (isDefined!98 (getValueByKey!144 (toList!774 call!9021) (ite c!15251 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (select (arr!1966 (_keys!4086 newMap!16)) (index!3173 lt!44816)))))))

(declare-fun b!92038 () Bool)

(declare-fun Unit!2757 () Unit!2738)

(assert (=> b!92038 (= e!60014 Unit!2757)))

(declare-fun b!92039 () Bool)

(assert (=> b!92039 (= e!60013 (isDefined!98 (getValueByKey!144 (toList!774 call!9021) (ite c!15251 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (select (arr!1966 (_keys!4086 newMap!16)) (index!3173 lt!44816))))))))

(assert (= (and d!24171 c!15323) b!92037))

(assert (= (and d!24171 (not c!15323)) b!92038))

(assert (= (and d!24171 (not res!46800)) b!92039))

(declare-fun m!98665 () Bool)

(assert (=> d!24171 m!98665))

(declare-fun m!98667 () Bool)

(assert (=> b!92037 m!98667))

(declare-fun m!98669 () Bool)

(assert (=> b!92037 m!98669))

(assert (=> b!92037 m!98669))

(declare-fun m!98671 () Bool)

(assert (=> b!92037 m!98671))

(assert (=> b!92039 m!98669))

(assert (=> b!92039 m!98669))

(assert (=> b!92039 m!98671))

(assert (=> bm!8996 d!24171))

(declare-fun d!24173 () Bool)

(declare-fun e!60015 () Bool)

(assert (=> d!24173 e!60015))

(declare-fun res!46801 () Bool)

(assert (=> d!24173 (=> res!46801 e!60015)))

(declare-fun lt!44929 () Bool)

(assert (=> d!24173 (= res!46801 (not lt!44929))))

(declare-fun lt!44932 () Bool)

(assert (=> d!24173 (= lt!44929 lt!44932)))

(declare-fun lt!44930 () Unit!2738)

(declare-fun e!60016 () Unit!2738)

(assert (=> d!24173 (= lt!44930 e!60016)))

(declare-fun c!15324 () Bool)

(assert (=> d!24173 (= c!15324 lt!44932)))

(assert (=> d!24173 (= lt!44932 (containsKey!148 (toList!774 lt!44720) (_1!1155 lt!44507)))))

(assert (=> d!24173 (= (contains!784 lt!44720 (_1!1155 lt!44507)) lt!44929)))

(declare-fun b!92040 () Bool)

(declare-fun lt!44931 () Unit!2738)

(assert (=> b!92040 (= e!60016 lt!44931)))

(assert (=> b!92040 (= lt!44931 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 lt!44720) (_1!1155 lt!44507)))))

(assert (=> b!92040 (isDefined!98 (getValueByKey!144 (toList!774 lt!44720) (_1!1155 lt!44507)))))

(declare-fun b!92041 () Bool)

(declare-fun Unit!2758 () Unit!2738)

(assert (=> b!92041 (= e!60016 Unit!2758)))

(declare-fun b!92042 () Bool)

(assert (=> b!92042 (= e!60015 (isDefined!98 (getValueByKey!144 (toList!774 lt!44720) (_1!1155 lt!44507))))))

(assert (= (and d!24173 c!15324) b!92040))

(assert (= (and d!24173 (not c!15324)) b!92041))

(assert (= (and d!24173 (not res!46801)) b!92042))

(declare-fun m!98673 () Bool)

(assert (=> d!24173 m!98673))

(declare-fun m!98675 () Bool)

(assert (=> b!92040 m!98675))

(assert (=> b!92040 m!98277))

(assert (=> b!92040 m!98277))

(declare-fun m!98677 () Bool)

(assert (=> b!92040 m!98677))

(assert (=> b!92042 m!98277))

(assert (=> b!92042 m!98277))

(assert (=> b!92042 m!98677))

(assert (=> d!24083 d!24173))

(declare-fun b!92046 () Bool)

(declare-fun e!60018 () Option!150)

(assert (=> b!92046 (= e!60018 None!148)))

(declare-fun b!92044 () Bool)

(declare-fun e!60017 () Option!150)

(assert (=> b!92044 (= e!60017 e!60018)))

(declare-fun c!15326 () Bool)

(assert (=> b!92044 (= c!15326 (and ((_ is Cons!1577) lt!44719) (not (= (_1!1155 (h!2169 lt!44719)) (_1!1155 lt!44507)))))))

(declare-fun d!24175 () Bool)

(declare-fun c!15325 () Bool)

(assert (=> d!24175 (= c!15325 (and ((_ is Cons!1577) lt!44719) (= (_1!1155 (h!2169 lt!44719)) (_1!1155 lt!44507))))))

(assert (=> d!24175 (= (getValueByKey!144 lt!44719 (_1!1155 lt!44507)) e!60017)))

(declare-fun b!92043 () Bool)

(assert (=> b!92043 (= e!60017 (Some!149 (_2!1155 (h!2169 lt!44719))))))

(declare-fun b!92045 () Bool)

(assert (=> b!92045 (= e!60018 (getValueByKey!144 (t!5419 lt!44719) (_1!1155 lt!44507)))))

(assert (= (and d!24175 c!15325) b!92043))

(assert (= (and d!24175 (not c!15325)) b!92044))

(assert (= (and b!92044 c!15326) b!92045))

(assert (= (and b!92044 (not c!15326)) b!92046))

(declare-fun m!98679 () Bool)

(assert (=> b!92045 m!98679))

(assert (=> d!24083 d!24175))

(declare-fun d!24177 () Bool)

(assert (=> d!24177 (= (getValueByKey!144 lt!44719 (_1!1155 lt!44507)) (Some!149 (_2!1155 lt!44507)))))

(declare-fun lt!44933 () Unit!2738)

(assert (=> d!24177 (= lt!44933 (choose!553 lt!44719 (_1!1155 lt!44507) (_2!1155 lt!44507)))))

(declare-fun e!60019 () Bool)

(assert (=> d!24177 e!60019))

(declare-fun res!46802 () Bool)

(assert (=> d!24177 (=> (not res!46802) (not e!60019))))

(assert (=> d!24177 (= res!46802 (isStrictlySorted!296 lt!44719))))

(assert (=> d!24177 (= (lemmaContainsTupThenGetReturnValue!63 lt!44719 (_1!1155 lt!44507) (_2!1155 lt!44507)) lt!44933)))

(declare-fun b!92047 () Bool)

(declare-fun res!46803 () Bool)

(assert (=> b!92047 (=> (not res!46803) (not e!60019))))

(assert (=> b!92047 (= res!46803 (containsKey!148 lt!44719 (_1!1155 lt!44507)))))

(declare-fun b!92048 () Bool)

(assert (=> b!92048 (= e!60019 (contains!786 lt!44719 (tuple2!2291 (_1!1155 lt!44507) (_2!1155 lt!44507))))))

(assert (= (and d!24177 res!46802) b!92047))

(assert (= (and b!92047 res!46803) b!92048))

(assert (=> d!24177 m!98271))

(declare-fun m!98681 () Bool)

(assert (=> d!24177 m!98681))

(declare-fun m!98683 () Bool)

(assert (=> d!24177 m!98683))

(declare-fun m!98685 () Bool)

(assert (=> b!92047 m!98685))

(declare-fun m!98687 () Bool)

(assert (=> b!92048 m!98687))

(assert (=> d!24083 d!24177))

(declare-fun b!92049 () Bool)

(declare-fun c!15329 () Bool)

(declare-fun c!15328 () Bool)

(declare-fun e!60023 () List!1581)

(assert (=> b!92049 (= e!60023 (ite c!15328 (t!5419 (toList!774 (+!129 lt!44504 lt!44511))) (ite c!15329 (Cons!1577 (h!2169 (toList!774 (+!129 lt!44504 lt!44511))) (t!5419 (toList!774 (+!129 lt!44504 lt!44511)))) Nil!1578)))))

(declare-fun b!92050 () Bool)

(declare-fun e!60022 () List!1581)

(declare-fun call!9059 () List!1581)

(assert (=> b!92050 (= e!60022 call!9059)))

(declare-fun bm!9056 () Bool)

(declare-fun call!9060 () List!1581)

(declare-fun call!9061 () List!1581)

(assert (=> bm!9056 (= call!9060 call!9061)))

(declare-fun c!15327 () Bool)

(declare-fun bm!9057 () Bool)

(assert (=> bm!9057 (= call!9061 ($colon$colon!74 e!60023 (ite c!15327 (h!2169 (toList!774 (+!129 lt!44504 lt!44511))) (tuple2!2291 (_1!1155 lt!44507) (_2!1155 lt!44507)))))))

(declare-fun c!15330 () Bool)

(assert (=> bm!9057 (= c!15330 c!15327)))

(declare-fun b!92051 () Bool)

(declare-fun e!60020 () List!1581)

(assert (=> b!92051 (= e!60020 call!9061)))

(declare-fun b!92052 () Bool)

(assert (=> b!92052 (= e!60022 call!9059)))

(declare-fun b!92053 () Bool)

(declare-fun e!60024 () List!1581)

(assert (=> b!92053 (= e!60024 call!9060)))

(declare-fun b!92054 () Bool)

(assert (=> b!92054 (= e!60023 (insertStrictlySorted!65 (t!5419 (toList!774 (+!129 lt!44504 lt!44511))) (_1!1155 lt!44507) (_2!1155 lt!44507)))))

(declare-fun b!92055 () Bool)

(assert (=> b!92055 (= c!15329 (and ((_ is Cons!1577) (toList!774 (+!129 lt!44504 lt!44511))) (bvsgt (_1!1155 (h!2169 (toList!774 (+!129 lt!44504 lt!44511)))) (_1!1155 lt!44507))))))

(assert (=> b!92055 (= e!60024 e!60022)))

(declare-fun bm!9058 () Bool)

(assert (=> bm!9058 (= call!9059 call!9060)))

(declare-fun b!92056 () Bool)

(declare-fun res!46805 () Bool)

(declare-fun e!60021 () Bool)

(assert (=> b!92056 (=> (not res!46805) (not e!60021))))

(declare-fun lt!44934 () List!1581)

(assert (=> b!92056 (= res!46805 (containsKey!148 lt!44934 (_1!1155 lt!44507)))))

(declare-fun b!92057 () Bool)

(assert (=> b!92057 (= e!60020 e!60024)))

(assert (=> b!92057 (= c!15328 (and ((_ is Cons!1577) (toList!774 (+!129 lt!44504 lt!44511))) (= (_1!1155 (h!2169 (toList!774 (+!129 lt!44504 lt!44511)))) (_1!1155 lt!44507))))))

(declare-fun b!92058 () Bool)

(assert (=> b!92058 (= e!60021 (contains!786 lt!44934 (tuple2!2291 (_1!1155 lt!44507) (_2!1155 lt!44507))))))

(declare-fun d!24179 () Bool)

(assert (=> d!24179 e!60021))

(declare-fun res!46804 () Bool)

(assert (=> d!24179 (=> (not res!46804) (not e!60021))))

(assert (=> d!24179 (= res!46804 (isStrictlySorted!296 lt!44934))))

(assert (=> d!24179 (= lt!44934 e!60020)))

(assert (=> d!24179 (= c!15327 (and ((_ is Cons!1577) (toList!774 (+!129 lt!44504 lt!44511))) (bvslt (_1!1155 (h!2169 (toList!774 (+!129 lt!44504 lt!44511)))) (_1!1155 lt!44507))))))

(assert (=> d!24179 (isStrictlySorted!296 (toList!774 (+!129 lt!44504 lt!44511)))))

(assert (=> d!24179 (= (insertStrictlySorted!65 (toList!774 (+!129 lt!44504 lt!44511)) (_1!1155 lt!44507) (_2!1155 lt!44507)) lt!44934)))

(assert (= (and d!24179 c!15327) b!92051))

(assert (= (and d!24179 (not c!15327)) b!92057))

(assert (= (and b!92057 c!15328) b!92053))

(assert (= (and b!92057 (not c!15328)) b!92055))

(assert (= (and b!92055 c!15329) b!92050))

(assert (= (and b!92055 (not c!15329)) b!92052))

(assert (= (or b!92050 b!92052) bm!9058))

(assert (= (or b!92053 bm!9058) bm!9056))

(assert (= (or b!92051 bm!9056) bm!9057))

(assert (= (and bm!9057 c!15330) b!92054))

(assert (= (and bm!9057 (not c!15330)) b!92049))

(assert (= (and d!24179 res!46804) b!92056))

(assert (= (and b!92056 res!46805) b!92058))

(declare-fun m!98689 () Bool)

(assert (=> b!92056 m!98689))

(declare-fun m!98691 () Bool)

(assert (=> b!92058 m!98691))

(declare-fun m!98693 () Bool)

(assert (=> b!92054 m!98693))

(declare-fun m!98695 () Bool)

(assert (=> bm!9057 m!98695))

(declare-fun m!98697 () Bool)

(assert (=> d!24179 m!98697))

(declare-fun m!98699 () Bool)

(assert (=> d!24179 m!98699))

(assert (=> d!24083 d!24179))

(declare-fun d!24181 () Bool)

(declare-fun e!60027 () Bool)

(assert (=> d!24181 e!60027))

(declare-fun c!15333 () Bool)

(assert (=> d!24181 (= c!15333 (and (not (= (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!24181 true))

(declare-fun _$29!117 () Unit!2738)

(assert (=> d!24181 (= (choose!552 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))) _$29!117)))

(declare-fun b!92063 () Bool)

(assert (=> b!92063 (= e!60027 (arrayContainsKey!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!92064 () Bool)

(assert (=> b!92064 (= e!60027 (ite (= (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!24181 c!15333) b!92063))

(assert (= (and d!24181 (not c!15333)) b!92064))

(assert (=> b!92063 m!97909))

(assert (=> b!92063 m!97927))

(assert (=> d!24103 d!24181))

(assert (=> d!24103 d!24141))

(assert (=> bm!8936 d!24067))

(declare-fun d!24183 () Bool)

(declare-fun e!60028 () Bool)

(assert (=> d!24183 e!60028))

(declare-fun res!46806 () Bool)

(assert (=> d!24183 (=> (not res!46806) (not e!60028))))

(declare-fun lt!44938 () ListLongMap!1517)

(assert (=> d!24183 (= res!46806 (contains!784 lt!44938 (_1!1155 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(declare-fun lt!44937 () List!1581)

(assert (=> d!24183 (= lt!44938 (ListLongMap!1518 lt!44937))))

(declare-fun lt!44935 () Unit!2738)

(declare-fun lt!44936 () Unit!2738)

(assert (=> d!24183 (= lt!44935 lt!44936)))

(assert (=> d!24183 (= (getValueByKey!144 lt!44937 (_1!1155 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24183 (= lt!44936 (lemmaContainsTupThenGetReturnValue!63 lt!44937 (_1!1155 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24183 (= lt!44937 (insertStrictlySorted!65 (toList!774 lt!44519) (_1!1155 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24183 (= (+!129 lt!44519 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44938)))

(declare-fun b!92065 () Bool)

(declare-fun res!46807 () Bool)

(assert (=> b!92065 (=> (not res!46807) (not e!60028))))

(assert (=> b!92065 (= res!46807 (= (getValueByKey!144 (toList!774 lt!44938) (_1!1155 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(declare-fun b!92066 () Bool)

(assert (=> b!92066 (= e!60028 (contains!786 (toList!774 lt!44938) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))))))

(assert (= (and d!24183 res!46806) b!92065))

(assert (= (and b!92065 res!46807) b!92066))

(declare-fun m!98701 () Bool)

(assert (=> d!24183 m!98701))

(declare-fun m!98703 () Bool)

(assert (=> d!24183 m!98703))

(declare-fun m!98705 () Bool)

(assert (=> d!24183 m!98705))

(declare-fun m!98707 () Bool)

(assert (=> d!24183 m!98707))

(declare-fun m!98709 () Bool)

(assert (=> b!92065 m!98709))

(declare-fun m!98711 () Bool)

(assert (=> b!92066 m!98711))

(assert (=> d!24087 d!24183))

(declare-fun d!24185 () Bool)

(assert (=> d!24185 (= (+!129 (+!129 lt!44519 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) (+!129 (+!129 lt!44519 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))))

(assert (=> d!24185 true))

(declare-fun _$28!154 () Unit!2738)

(assert (=> d!24185 (= (choose!551 lt!44519 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) _$28!154)))

(declare-fun bs!3797 () Bool)

(assert (= bs!3797 d!24185))

(assert (=> bs!3797 m!98291))

(assert (=> bs!3797 m!98291))

(assert (=> bs!3797 m!98299))

(assert (=> bs!3797 m!98293))

(assert (=> bs!3797 m!98293))

(assert (=> bs!3797 m!98297))

(assert (=> d!24087 d!24185))

(declare-fun d!24187 () Bool)

(declare-fun e!60029 () Bool)

(assert (=> d!24187 e!60029))

(declare-fun res!46808 () Bool)

(assert (=> d!24187 (=> (not res!46808) (not e!60029))))

(declare-fun lt!44942 () ListLongMap!1517)

(assert (=> d!24187 (= res!46808 (contains!784 lt!44942 (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(declare-fun lt!44941 () List!1581)

(assert (=> d!24187 (= lt!44942 (ListLongMap!1518 lt!44941))))

(declare-fun lt!44939 () Unit!2738)

(declare-fun lt!44940 () Unit!2738)

(assert (=> d!24187 (= lt!44939 lt!44940)))

(assert (=> d!24187 (= (getValueByKey!144 lt!44941 (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))) (Some!149 (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(assert (=> d!24187 (= lt!44940 (lemmaContainsTupThenGetReturnValue!63 lt!44941 (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(assert (=> d!24187 (= lt!44941 (insertStrictlySorted!65 (toList!774 lt!44519) (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(assert (=> d!24187 (= (+!129 lt!44519 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) lt!44942)))

(declare-fun b!92067 () Bool)

(declare-fun res!46809 () Bool)

(assert (=> b!92067 (=> (not res!46809) (not e!60029))))

(assert (=> b!92067 (= res!46809 (= (getValueByKey!144 (toList!774 lt!44942) (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))) (Some!149 (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))))))

(declare-fun b!92068 () Bool)

(assert (=> b!92068 (= e!60029 (contains!786 (toList!774 lt!44942) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))))

(assert (= (and d!24187 res!46808) b!92067))

(assert (= (and b!92067 res!46809) b!92068))

(declare-fun m!98713 () Bool)

(assert (=> d!24187 m!98713))

(declare-fun m!98715 () Bool)

(assert (=> d!24187 m!98715))

(declare-fun m!98717 () Bool)

(assert (=> d!24187 m!98717))

(declare-fun m!98719 () Bool)

(assert (=> d!24187 m!98719))

(declare-fun m!98721 () Bool)

(assert (=> b!92067 m!98721))

(declare-fun m!98723 () Bool)

(assert (=> b!92068 m!98723))

(assert (=> d!24087 d!24187))

(declare-fun d!24189 () Bool)

(declare-fun e!60030 () Bool)

(assert (=> d!24189 e!60030))

(declare-fun res!46810 () Bool)

(assert (=> d!24189 (=> (not res!46810) (not e!60030))))

(declare-fun lt!44946 () ListLongMap!1517)

(assert (=> d!24189 (= res!46810 (contains!784 lt!44946 (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(declare-fun lt!44945 () List!1581)

(assert (=> d!24189 (= lt!44946 (ListLongMap!1518 lt!44945))))

(declare-fun lt!44943 () Unit!2738)

(declare-fun lt!44944 () Unit!2738)

(assert (=> d!24189 (= lt!44943 lt!44944)))

(assert (=> d!24189 (= (getValueByKey!144 lt!44945 (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))) (Some!149 (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(assert (=> d!24189 (= lt!44944 (lemmaContainsTupThenGetReturnValue!63 lt!44945 (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(assert (=> d!24189 (= lt!44945 (insertStrictlySorted!65 (toList!774 (+!129 lt!44519 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(assert (=> d!24189 (= (+!129 (+!129 lt!44519 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) lt!44946)))

(declare-fun b!92069 () Bool)

(declare-fun res!46811 () Bool)

(assert (=> b!92069 (=> (not res!46811) (not e!60030))))

(assert (=> b!92069 (= res!46811 (= (getValueByKey!144 (toList!774 lt!44946) (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))) (Some!149 (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))))))

(declare-fun b!92070 () Bool)

(assert (=> b!92070 (= e!60030 (contains!786 (toList!774 lt!44946) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))))

(assert (= (and d!24189 res!46810) b!92069))

(assert (= (and b!92069 res!46811) b!92070))

(declare-fun m!98725 () Bool)

(assert (=> d!24189 m!98725))

(declare-fun m!98727 () Bool)

(assert (=> d!24189 m!98727))

(declare-fun m!98729 () Bool)

(assert (=> d!24189 m!98729))

(declare-fun m!98731 () Bool)

(assert (=> d!24189 m!98731))

(declare-fun m!98733 () Bool)

(assert (=> b!92069 m!98733))

(declare-fun m!98735 () Bool)

(assert (=> b!92070 m!98735))

(assert (=> d!24087 d!24189))

(declare-fun d!24191 () Bool)

(declare-fun e!60031 () Bool)

(assert (=> d!24191 e!60031))

(declare-fun res!46812 () Bool)

(assert (=> d!24191 (=> (not res!46812) (not e!60031))))

(declare-fun lt!44950 () ListLongMap!1517)

(assert (=> d!24191 (= res!46812 (contains!784 lt!44950 (_1!1155 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(declare-fun lt!44949 () List!1581)

(assert (=> d!24191 (= lt!44950 (ListLongMap!1518 lt!44949))))

(declare-fun lt!44947 () Unit!2738)

(declare-fun lt!44948 () Unit!2738)

(assert (=> d!24191 (= lt!44947 lt!44948)))

(assert (=> d!24191 (= (getValueByKey!144 lt!44949 (_1!1155 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24191 (= lt!44948 (lemmaContainsTupThenGetReturnValue!63 lt!44949 (_1!1155 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24191 (= lt!44949 (insertStrictlySorted!65 (toList!774 (+!129 lt!44519 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))) (_1!1155 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24191 (= (+!129 (+!129 lt!44519 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44950)))

(declare-fun b!92071 () Bool)

(declare-fun res!46813 () Bool)

(assert (=> b!92071 (=> (not res!46813) (not e!60031))))

(assert (=> b!92071 (= res!46813 (= (getValueByKey!144 (toList!774 lt!44950) (_1!1155 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(declare-fun b!92072 () Bool)

(assert (=> b!92072 (= e!60031 (contains!786 (toList!774 lt!44950) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))))))

(assert (= (and d!24191 res!46812) b!92071))

(assert (= (and b!92071 res!46813) b!92072))

(declare-fun m!98737 () Bool)

(assert (=> d!24191 m!98737))

(declare-fun m!98739 () Bool)

(assert (=> d!24191 m!98739))

(declare-fun m!98741 () Bool)

(assert (=> d!24191 m!98741))

(declare-fun m!98743 () Bool)

(assert (=> d!24191 m!98743))

(declare-fun m!98745 () Bool)

(assert (=> b!92071 m!98745))

(declare-fun m!98747 () Bool)

(assert (=> b!92072 m!98747))

(assert (=> d!24087 d!24191))

(declare-fun b!92076 () Bool)

(declare-fun e!60033 () Option!150)

(assert (=> b!92076 (= e!60033 None!148)))

(declare-fun b!92074 () Bool)

(declare-fun e!60032 () Option!150)

(assert (=> b!92074 (= e!60032 e!60033)))

(declare-fun c!15335 () Bool)

(assert (=> b!92074 (= c!15335 (and ((_ is Cons!1577) (toList!774 lt!44712)) (not (= (_1!1155 (h!2169 (toList!774 lt!44712))) (_1!1155 lt!44507)))))))

(declare-fun d!24193 () Bool)

(declare-fun c!15334 () Bool)

(assert (=> d!24193 (= c!15334 (and ((_ is Cons!1577) (toList!774 lt!44712)) (= (_1!1155 (h!2169 (toList!774 lt!44712))) (_1!1155 lt!44507))))))

(assert (=> d!24193 (= (getValueByKey!144 (toList!774 lt!44712) (_1!1155 lt!44507)) e!60032)))

(declare-fun b!92073 () Bool)

(assert (=> b!92073 (= e!60032 (Some!149 (_2!1155 (h!2169 (toList!774 lt!44712)))))))

(declare-fun b!92075 () Bool)

(assert (=> b!92075 (= e!60033 (getValueByKey!144 (t!5419 (toList!774 lt!44712)) (_1!1155 lt!44507)))))

(assert (= (and d!24193 c!15334) b!92073))

(assert (= (and d!24193 (not c!15334)) b!92074))

(assert (= (and b!92074 c!15335) b!92075))

(assert (= (and b!92074 (not c!15335)) b!92076))

(declare-fun m!98749 () Bool)

(assert (=> b!92075 m!98749))

(assert (=> b!91662 d!24193))

(declare-fun d!24195 () Bool)

(declare-fun lt!44951 () Bool)

(assert (=> d!24195 (= lt!44951 (select (content!94 (toList!774 lt!44682)) lt!44511))))

(declare-fun e!60034 () Bool)

(assert (=> d!24195 (= lt!44951 e!60034)))

(declare-fun res!46814 () Bool)

(assert (=> d!24195 (=> (not res!46814) (not e!60034))))

(assert (=> d!24195 (= res!46814 ((_ is Cons!1577) (toList!774 lt!44682)))))

(assert (=> d!24195 (= (contains!786 (toList!774 lt!44682) lt!44511) lt!44951)))

(declare-fun b!92077 () Bool)

(declare-fun e!60035 () Bool)

(assert (=> b!92077 (= e!60034 e!60035)))

(declare-fun res!46815 () Bool)

(assert (=> b!92077 (=> res!46815 e!60035)))

(assert (=> b!92077 (= res!46815 (= (h!2169 (toList!774 lt!44682)) lt!44511))))

(declare-fun b!92078 () Bool)

(assert (=> b!92078 (= e!60035 (contains!786 (t!5419 (toList!774 lt!44682)) lt!44511))))

(assert (= (and d!24195 res!46814) b!92077))

(assert (= (and b!92077 (not res!46815)) b!92078))

(declare-fun m!98751 () Bool)

(assert (=> d!24195 m!98751))

(declare-fun m!98753 () Bool)

(assert (=> d!24195 m!98753))

(declare-fun m!98755 () Bool)

(assert (=> b!92078 m!98755))

(assert (=> b!91638 d!24195))

(assert (=> b!91801 d!24101))

(assert (=> b!91651 d!24159))

(declare-fun d!24197 () Bool)

(declare-fun e!60036 () Bool)

(assert (=> d!24197 e!60036))

(declare-fun res!46816 () Bool)

(assert (=> d!24197 (=> (not res!46816) (not e!60036))))

(declare-fun lt!44955 () ListLongMap!1517)

(assert (=> d!24197 (= res!46816 (contains!784 lt!44955 (_1!1155 (ite c!15246 (ite c!15242 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 lt!44521) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 lt!44521)) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))))))

(declare-fun lt!44954 () List!1581)

(assert (=> d!24197 (= lt!44955 (ListLongMap!1518 lt!44954))))

(declare-fun lt!44952 () Unit!2738)

(declare-fun lt!44953 () Unit!2738)

(assert (=> d!24197 (= lt!44952 lt!44953)))

(assert (=> d!24197 (= (getValueByKey!144 lt!44954 (_1!1155 (ite c!15246 (ite c!15242 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 lt!44521) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 lt!44521)) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))) (Some!149 (_2!1155 (ite c!15246 (ite c!15242 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 lt!44521) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 lt!44521)) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))))))

(assert (=> d!24197 (= lt!44953 (lemmaContainsTupThenGetReturnValue!63 lt!44954 (_1!1155 (ite c!15246 (ite c!15242 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 lt!44521) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 lt!44521)) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))) (_2!1155 (ite c!15246 (ite c!15242 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 lt!44521) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 lt!44521)) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))))))

(assert (=> d!24197 (= lt!44954 (insertStrictlySorted!65 (toList!774 (ite c!15246 (ite c!15242 call!9007 call!9000) call!9005)) (_1!1155 (ite c!15246 (ite c!15242 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 lt!44521) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 lt!44521)) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))) (_2!1155 (ite c!15246 (ite c!15242 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 lt!44521) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 lt!44521)) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))))))

(assert (=> d!24197 (= (+!129 (ite c!15246 (ite c!15242 call!9007 call!9000) call!9005) (ite c!15246 (ite c!15242 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 lt!44521) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 lt!44521)) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))) lt!44955)))

(declare-fun b!92079 () Bool)

(declare-fun res!46817 () Bool)

(assert (=> b!92079 (=> (not res!46817) (not e!60036))))

(assert (=> b!92079 (= res!46817 (= (getValueByKey!144 (toList!774 lt!44955) (_1!1155 (ite c!15246 (ite c!15242 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 lt!44521) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 lt!44521)) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))) (Some!149 (_2!1155 (ite c!15246 (ite c!15242 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 lt!44521) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 lt!44521)) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))))

(declare-fun b!92080 () Bool)

(assert (=> b!92080 (= e!60036 (contains!786 (toList!774 lt!44955) (ite c!15246 (ite c!15242 (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 lt!44521) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 lt!44521)) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(assert (= (and d!24197 res!46816) b!92079))

(assert (= (and b!92079 res!46817) b!92080))

(declare-fun m!98757 () Bool)

(assert (=> d!24197 m!98757))

(declare-fun m!98759 () Bool)

(assert (=> d!24197 m!98759))

(declare-fun m!98761 () Bool)

(assert (=> d!24197 m!98761))

(declare-fun m!98763 () Bool)

(assert (=> d!24197 m!98763))

(declare-fun m!98765 () Bool)

(assert (=> b!92079 m!98765))

(declare-fun m!98767 () Bool)

(assert (=> b!92080 m!98767))

(assert (=> bm!9017 d!24197))

(declare-fun b!92084 () Bool)

(declare-fun e!60038 () Option!150)

(assert (=> b!92084 (= e!60038 None!148)))

(declare-fun b!92082 () Bool)

(declare-fun e!60037 () Option!150)

(assert (=> b!92082 (= e!60037 e!60038)))

(declare-fun c!15337 () Bool)

(assert (=> b!92082 (= c!15337 (and ((_ is Cons!1577) (toList!774 lt!44720)) (not (= (_1!1155 (h!2169 (toList!774 lt!44720))) (_1!1155 lt!44507)))))))

(declare-fun d!24199 () Bool)

(declare-fun c!15336 () Bool)

(assert (=> d!24199 (= c!15336 (and ((_ is Cons!1577) (toList!774 lt!44720)) (= (_1!1155 (h!2169 (toList!774 lt!44720))) (_1!1155 lt!44507))))))

(assert (=> d!24199 (= (getValueByKey!144 (toList!774 lt!44720) (_1!1155 lt!44507)) e!60037)))

(declare-fun b!92081 () Bool)

(assert (=> b!92081 (= e!60037 (Some!149 (_2!1155 (h!2169 (toList!774 lt!44720)))))))

(declare-fun b!92083 () Bool)

(assert (=> b!92083 (= e!60038 (getValueByKey!144 (t!5419 (toList!774 lt!44720)) (_1!1155 lt!44507)))))

(assert (= (and d!24199 c!15336) b!92081))

(assert (= (and d!24199 (not c!15336)) b!92082))

(assert (= (and b!92082 c!15337) b!92083))

(assert (= (and b!92082 (not c!15337)) b!92084))

(declare-fun m!98769 () Bool)

(assert (=> b!92083 m!98769))

(assert (=> b!91666 d!24199))

(declare-fun bm!9059 () Bool)

(declare-fun call!9062 () Bool)

(declare-fun c!15338 () Bool)

(assert (=> bm!9059 (= call!9062 (arrayNoDuplicates!0 (_keys!4086 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!15338 (Cons!1578 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000) Nil!1579) Nil!1579)))))

(declare-fun b!92085 () Bool)

(declare-fun e!60041 () Bool)

(assert (=> b!92085 (= e!60041 call!9062)))

(declare-fun b!92086 () Bool)

(declare-fun e!60042 () Bool)

(assert (=> b!92086 (= e!60042 (contains!787 Nil!1579 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!24201 () Bool)

(declare-fun res!46820 () Bool)

(declare-fun e!60040 () Bool)

(assert (=> d!24201 (=> res!46820 e!60040)))

(assert (=> d!24201 (= res!46820 (bvsge #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))

(assert (=> d!24201 (= (arrayNoDuplicates!0 (_keys!4086 newMap!16) #b00000000000000000000000000000000 Nil!1579) e!60040)))

(declare-fun b!92087 () Bool)

(assert (=> b!92087 (= e!60041 call!9062)))

(declare-fun b!92088 () Bool)

(declare-fun e!60039 () Bool)

(assert (=> b!92088 (= e!60039 e!60041)))

(assert (=> b!92088 (= c!15338 (validKeyInArray!0 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!92089 () Bool)

(assert (=> b!92089 (= e!60040 e!60039)))

(declare-fun res!46819 () Bool)

(assert (=> b!92089 (=> (not res!46819) (not e!60039))))

(assert (=> b!92089 (= res!46819 (not e!60042))))

(declare-fun res!46818 () Bool)

(assert (=> b!92089 (=> (not res!46818) (not e!60042))))

(assert (=> b!92089 (= res!46818 (validKeyInArray!0 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!24201 (not res!46820)) b!92089))

(assert (= (and b!92089 res!46818) b!92086))

(assert (= (and b!92089 res!46819) b!92088))

(assert (= (and b!92088 c!15338) b!92085))

(assert (= (and b!92088 (not c!15338)) b!92087))

(assert (= (or b!92085 b!92087) bm!9059))

(assert (=> bm!9059 m!98409))

(declare-fun m!98771 () Bool)

(assert (=> bm!9059 m!98771))

(assert (=> b!92086 m!98409))

(assert (=> b!92086 m!98409))

(declare-fun m!98773 () Bool)

(assert (=> b!92086 m!98773))

(assert (=> b!92088 m!98409))

(assert (=> b!92088 m!98409))

(assert (=> b!92088 m!98447))

(assert (=> b!92089 m!98409))

(assert (=> b!92089 m!98409))

(assert (=> b!92089 m!98447))

(assert (=> b!91520 d!24201))

(declare-fun d!24203 () Bool)

(declare-fun e!60043 () Bool)

(assert (=> d!24203 e!60043))

(declare-fun res!46821 () Bool)

(assert (=> d!24203 (=> res!46821 e!60043)))

(declare-fun lt!44956 () Bool)

(assert (=> d!24203 (= res!46821 (not lt!44956))))

(declare-fun lt!44959 () Bool)

(assert (=> d!24203 (= lt!44956 lt!44959)))

(declare-fun lt!44957 () Unit!2738)

(declare-fun e!60044 () Unit!2738)

(assert (=> d!24203 (= lt!44957 e!60044)))

(declare-fun c!15339 () Bool)

(assert (=> d!24203 (= c!15339 lt!44959)))

(assert (=> d!24203 (= lt!44959 (containsKey!148 (toList!774 lt!44673) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!24203 (= (contains!784 lt!44673 #b0000000000000000000000000000000000000000000000000000000000000000) lt!44956)))

(declare-fun b!92090 () Bool)

(declare-fun lt!44958 () Unit!2738)

(assert (=> b!92090 (= e!60044 lt!44958)))

(assert (=> b!92090 (= lt!44958 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 lt!44673) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!92090 (isDefined!98 (getValueByKey!144 (toList!774 lt!44673) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!92091 () Bool)

(declare-fun Unit!2759 () Unit!2738)

(assert (=> b!92091 (= e!60044 Unit!2759)))

(declare-fun b!92092 () Bool)

(assert (=> b!92092 (= e!60043 (isDefined!98 (getValueByKey!144 (toList!774 lt!44673) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!24203 c!15339) b!92090))

(assert (= (and d!24203 (not c!15339)) b!92091))

(assert (= (and d!24203 (not res!46821)) b!92092))

(declare-fun m!98775 () Bool)

(assert (=> d!24203 m!98775))

(declare-fun m!98777 () Bool)

(assert (=> b!92090 m!98777))

(declare-fun m!98779 () Bool)

(assert (=> b!92090 m!98779))

(assert (=> b!92090 m!98779))

(declare-fun m!98781 () Bool)

(assert (=> b!92090 m!98781))

(assert (=> b!92092 m!98779))

(assert (=> b!92092 m!98779))

(assert (=> b!92092 m!98781))

(assert (=> d!24067 d!24203))

(assert (=> d!24067 d!24141))

(declare-fun d!24205 () Bool)

(assert (=> d!24205 (= (+!129 (getCurrentListMap!456 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 lt!44521)) (getCurrentListMap!456 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) lt!44805 (zeroValue!2294 newMap!16) lt!44521 #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!44962 () Unit!2738)

(declare-fun choose!555 (array!4134 array!4136 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3091 V!3091 V!3091 Int) Unit!2738)

(assert (=> d!24205 (= lt!44962 (choose!555 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) lt!44805 (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) lt!44521 (defaultEntry!2406 newMap!16)))))

(assert (=> d!24205 (validMask!0 (mask!6466 newMap!16))))

(assert (=> d!24205 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!36 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) lt!44805 (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) lt!44521 (defaultEntry!2406 newMap!16)) lt!44962)))

(declare-fun bs!3798 () Bool)

(assert (= bs!3798 d!24205))

(declare-fun m!98783 () Bool)

(assert (=> bs!3798 m!98783))

(assert (=> bs!3798 m!98055))

(declare-fun m!98785 () Bool)

(assert (=> bs!3798 m!98785))

(assert (=> bs!3798 m!98055))

(declare-fun m!98787 () Bool)

(assert (=> bs!3798 m!98787))

(assert (=> bs!3798 m!98389))

(assert (=> b!91785 d!24205))

(declare-fun c!15340 () Bool)

(declare-fun bm!9060 () Bool)

(declare-fun call!9063 () Bool)

(assert (=> bm!9060 (= call!9063 (arrayNoDuplicates!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!15340 (Cons!1578 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001)) (ite c!15259 (Cons!1578 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) Nil!1579) Nil!1579)) (ite c!15259 (Cons!1578 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) Nil!1579) Nil!1579))))))

(declare-fun b!92093 () Bool)

(declare-fun e!60047 () Bool)

(assert (=> b!92093 (= e!60047 call!9063)))

(declare-fun b!92094 () Bool)

(declare-fun e!60048 () Bool)

(assert (=> b!92094 (= e!60048 (contains!787 (ite c!15259 (Cons!1578 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) Nil!1579) Nil!1579) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun d!24207 () Bool)

(declare-fun res!46824 () Bool)

(declare-fun e!60046 () Bool)

(assert (=> d!24207 (=> res!46824 e!60046)))

(assert (=> d!24207 (= res!46824 (bvsge (bvadd from!355 #b00000000000000000000000000000001) (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(assert (=> d!24207 (= (arrayNoDuplicates!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!15259 (Cons!1578 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) Nil!1579) Nil!1579)) e!60046)))

(declare-fun b!92095 () Bool)

(assert (=> b!92095 (= e!60047 call!9063)))

(declare-fun b!92096 () Bool)

(declare-fun e!60045 () Bool)

(assert (=> b!92096 (= e!60045 e!60047)))

(assert (=> b!92096 (= c!15340 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!92097 () Bool)

(assert (=> b!92097 (= e!60046 e!60045)))

(declare-fun res!46823 () Bool)

(assert (=> b!92097 (=> (not res!46823) (not e!60045))))

(assert (=> b!92097 (= res!46823 (not e!60048))))

(declare-fun res!46822 () Bool)

(assert (=> b!92097 (=> (not res!46822) (not e!60048))))

(assert (=> b!92097 (= res!46822 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(assert (= (and d!24207 (not res!46824)) b!92097))

(assert (= (and b!92097 res!46822) b!92094))

(assert (= (and b!92097 res!46823) b!92096))

(assert (= (and b!92096 c!15340) b!92093))

(assert (= (and b!92096 (not c!15340)) b!92095))

(assert (= (or b!92093 b!92095) bm!9060))

(declare-fun m!98789 () Bool)

(assert (=> bm!9060 m!98789))

(declare-fun m!98791 () Bool)

(assert (=> bm!9060 m!98791))

(assert (=> b!92094 m!98789))

(assert (=> b!92094 m!98789))

(declare-fun m!98793 () Bool)

(assert (=> b!92094 m!98793))

(assert (=> b!92096 m!98789))

(assert (=> b!92096 m!98789))

(declare-fun m!98795 () Bool)

(assert (=> b!92096 m!98795))

(assert (=> b!92097 m!98789))

(assert (=> b!92097 m!98789))

(assert (=> b!92097 m!98795))

(assert (=> bm!9022 d!24207))

(declare-fun d!24209 () Bool)

(assert (=> d!24209 (= (inRange!0 (ite c!15251 (ite c!15253 (index!3173 lt!44814) (ite c!15248 (index!3172 lt!44807) (index!3175 lt!44807))) (ite c!15244 (index!3173 lt!44802) (ite c!15249 (index!3172 lt!44791) (index!3175 lt!44791)))) (mask!6466 newMap!16)) (and (bvsge (ite c!15251 (ite c!15253 (index!3173 lt!44814) (ite c!15248 (index!3172 lt!44807) (index!3175 lt!44807))) (ite c!15244 (index!3173 lt!44802) (ite c!15249 (index!3172 lt!44791) (index!3175 lt!44791)))) #b00000000000000000000000000000000) (bvslt (ite c!15251 (ite c!15253 (index!3173 lt!44814) (ite c!15248 (index!3172 lt!44807) (index!3175 lt!44807))) (ite c!15244 (index!3173 lt!44802) (ite c!15249 (index!3172 lt!44791) (index!3175 lt!44791)))) (bvadd (mask!6466 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!9002 d!24209))

(declare-fun bm!9061 () Bool)

(declare-fun call!9067 () Bool)

(declare-fun lt!44983 () ListLongMap!1517)

(assert (=> bm!9061 (= call!9067 (contains!784 lt!44983 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!9063 () Bool)

(declare-fun call!9070 () ListLongMap!1517)

(declare-fun call!9069 () ListLongMap!1517)

(assert (=> bm!9063 (= call!9070 call!9069)))

(declare-fun b!92098 () Bool)

(declare-fun e!60058 () Bool)

(assert (=> b!92098 (= e!60058 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (_2!1156 lt!44506))) #b00000000000000000000000000000000)))))

(declare-fun b!92099 () Bool)

(declare-fun e!60057 () ListLongMap!1517)

(declare-fun e!60055 () ListLongMap!1517)

(assert (=> b!92099 (= e!60057 e!60055)))

(declare-fun c!15345 () Bool)

(assert (=> b!92099 (= c!15345 (and (not (= (bvand (extraKeys!2237 (_2!1156 lt!44506)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2237 (_2!1156 lt!44506)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!92100 () Bool)

(declare-fun e!60056 () Bool)

(declare-fun e!60050 () Bool)

(assert (=> b!92100 (= e!60056 e!60050)))

(declare-fun res!46831 () Bool)

(declare-fun call!9064 () Bool)

(assert (=> b!92100 (= res!46831 call!9064)))

(assert (=> b!92100 (=> (not res!46831) (not e!60050))))

(declare-fun b!92101 () Bool)

(declare-fun call!9066 () ListLongMap!1517)

(assert (=> b!92101 (= e!60055 call!9066)))

(declare-fun call!9068 () ListLongMap!1517)

(declare-fun c!15341 () Bool)

(declare-fun bm!9064 () Bool)

(declare-fun call!9065 () ListLongMap!1517)

(assert (=> bm!9064 (= call!9068 (+!129 (ite c!15341 call!9065 (ite c!15345 call!9069 call!9070)) (ite (or c!15341 c!15345) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (_2!1156 lt!44506))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (_2!1156 lt!44506))))))))

(declare-fun b!92102 () Bool)

(assert (=> b!92102 (= e!60050 (= (apply!87 lt!44983 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2294 (_2!1156 lt!44506))))))

(declare-fun b!92103 () Bool)

(declare-fun e!60049 () ListLongMap!1517)

(assert (=> b!92103 (= e!60049 call!9070)))

(declare-fun b!92104 () Bool)

(declare-fun e!60051 () Bool)

(declare-fun e!60061 () Bool)

(assert (=> b!92104 (= e!60051 e!60061)))

(declare-fun res!46828 () Bool)

(assert (=> b!92104 (= res!46828 call!9067)))

(assert (=> b!92104 (=> (not res!46828) (not e!60061))))

(declare-fun b!92105 () Bool)

(declare-fun e!60059 () Unit!2738)

(declare-fun lt!44978 () Unit!2738)

(assert (=> b!92105 (= e!60059 lt!44978)))

(declare-fun lt!44967 () ListLongMap!1517)

(assert (=> b!92105 (= lt!44967 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (_2!1156 lt!44506)) (_values!2389 (_2!1156 lt!44506)) (mask!6466 (_2!1156 lt!44506)) (extraKeys!2237 (_2!1156 lt!44506)) (zeroValue!2294 (_2!1156 lt!44506)) (minValue!2294 (_2!1156 lt!44506)) #b00000000000000000000000000000000 (defaultEntry!2406 (_2!1156 lt!44506))))))

(declare-fun lt!44964 () (_ BitVec 64))

(assert (=> b!92105 (= lt!44964 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44979 () (_ BitVec 64))

(assert (=> b!92105 (= lt!44979 (select (arr!1966 (_keys!4086 (_2!1156 lt!44506))) #b00000000000000000000000000000000))))

(declare-fun lt!44982 () Unit!2738)

(assert (=> b!92105 (= lt!44982 (addStillContains!63 lt!44967 lt!44964 (zeroValue!2294 (_2!1156 lt!44506)) lt!44979))))

(assert (=> b!92105 (contains!784 (+!129 lt!44967 (tuple2!2291 lt!44964 (zeroValue!2294 (_2!1156 lt!44506)))) lt!44979)))

(declare-fun lt!44980 () Unit!2738)

(assert (=> b!92105 (= lt!44980 lt!44982)))

(declare-fun lt!44971 () ListLongMap!1517)

(assert (=> b!92105 (= lt!44971 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (_2!1156 lt!44506)) (_values!2389 (_2!1156 lt!44506)) (mask!6466 (_2!1156 lt!44506)) (extraKeys!2237 (_2!1156 lt!44506)) (zeroValue!2294 (_2!1156 lt!44506)) (minValue!2294 (_2!1156 lt!44506)) #b00000000000000000000000000000000 (defaultEntry!2406 (_2!1156 lt!44506))))))

(declare-fun lt!44963 () (_ BitVec 64))

(assert (=> b!92105 (= lt!44963 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44970 () (_ BitVec 64))

(assert (=> b!92105 (= lt!44970 (select (arr!1966 (_keys!4086 (_2!1156 lt!44506))) #b00000000000000000000000000000000))))

(declare-fun lt!44981 () Unit!2738)

(assert (=> b!92105 (= lt!44981 (addApplyDifferent!63 lt!44971 lt!44963 (minValue!2294 (_2!1156 lt!44506)) lt!44970))))

(assert (=> b!92105 (= (apply!87 (+!129 lt!44971 (tuple2!2291 lt!44963 (minValue!2294 (_2!1156 lt!44506)))) lt!44970) (apply!87 lt!44971 lt!44970))))

(declare-fun lt!44972 () Unit!2738)

(assert (=> b!92105 (= lt!44972 lt!44981)))

(declare-fun lt!44977 () ListLongMap!1517)

(assert (=> b!92105 (= lt!44977 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (_2!1156 lt!44506)) (_values!2389 (_2!1156 lt!44506)) (mask!6466 (_2!1156 lt!44506)) (extraKeys!2237 (_2!1156 lt!44506)) (zeroValue!2294 (_2!1156 lt!44506)) (minValue!2294 (_2!1156 lt!44506)) #b00000000000000000000000000000000 (defaultEntry!2406 (_2!1156 lt!44506))))))

(declare-fun lt!44965 () (_ BitVec 64))

(assert (=> b!92105 (= lt!44965 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44973 () (_ BitVec 64))

(assert (=> b!92105 (= lt!44973 (select (arr!1966 (_keys!4086 (_2!1156 lt!44506))) #b00000000000000000000000000000000))))

(declare-fun lt!44966 () Unit!2738)

(assert (=> b!92105 (= lt!44966 (addApplyDifferent!63 lt!44977 lt!44965 (zeroValue!2294 (_2!1156 lt!44506)) lt!44973))))

(assert (=> b!92105 (= (apply!87 (+!129 lt!44977 (tuple2!2291 lt!44965 (zeroValue!2294 (_2!1156 lt!44506)))) lt!44973) (apply!87 lt!44977 lt!44973))))

(declare-fun lt!44976 () Unit!2738)

(assert (=> b!92105 (= lt!44976 lt!44966)))

(declare-fun lt!44968 () ListLongMap!1517)

(assert (=> b!92105 (= lt!44968 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (_2!1156 lt!44506)) (_values!2389 (_2!1156 lt!44506)) (mask!6466 (_2!1156 lt!44506)) (extraKeys!2237 (_2!1156 lt!44506)) (zeroValue!2294 (_2!1156 lt!44506)) (minValue!2294 (_2!1156 lt!44506)) #b00000000000000000000000000000000 (defaultEntry!2406 (_2!1156 lt!44506))))))

(declare-fun lt!44975 () (_ BitVec 64))

(assert (=> b!92105 (= lt!44975 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!44984 () (_ BitVec 64))

(assert (=> b!92105 (= lt!44984 (select (arr!1966 (_keys!4086 (_2!1156 lt!44506))) #b00000000000000000000000000000000))))

(assert (=> b!92105 (= lt!44978 (addApplyDifferent!63 lt!44968 lt!44975 (minValue!2294 (_2!1156 lt!44506)) lt!44984))))

(assert (=> b!92105 (= (apply!87 (+!129 lt!44968 (tuple2!2291 lt!44975 (minValue!2294 (_2!1156 lt!44506)))) lt!44984) (apply!87 lt!44968 lt!44984))))

(declare-fun b!92106 () Bool)

(assert (=> b!92106 (= e!60056 (not call!9064))))

(declare-fun b!92107 () Bool)

(declare-fun e!60054 () Bool)

(assert (=> b!92107 (= e!60054 e!60051)))

(declare-fun c!15343 () Bool)

(assert (=> b!92107 (= c!15343 (not (= (bvand (extraKeys!2237 (_2!1156 lt!44506)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!92108 () Bool)

(declare-fun e!60052 () Bool)

(assert (=> b!92108 (= e!60052 (= (apply!87 lt!44983 (select (arr!1966 (_keys!4086 (_2!1156 lt!44506))) #b00000000000000000000000000000000)) (get!1254 (select (arr!1967 (_values!2389 (_2!1156 lt!44506))) #b00000000000000000000000000000000) (dynLambda!365 (defaultEntry!2406 (_2!1156 lt!44506)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!92108 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2214 (_values!2389 (_2!1156 lt!44506)))))))

(assert (=> b!92108 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 (_2!1156 lt!44506)))))))

(declare-fun b!92109 () Bool)

(assert (=> b!92109 (= e!60061 (= (apply!87 lt!44983 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2294 (_2!1156 lt!44506))))))

(declare-fun b!92110 () Bool)

(declare-fun e!60053 () Bool)

(assert (=> b!92110 (= e!60053 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (_2!1156 lt!44506))) #b00000000000000000000000000000000)))))

(declare-fun d!24211 () Bool)

(assert (=> d!24211 e!60054))

(declare-fun res!46826 () Bool)

(assert (=> d!24211 (=> (not res!46826) (not e!60054))))

(assert (=> d!24211 (= res!46826 (or (bvsge #b00000000000000000000000000000000 (size!2213 (_keys!4086 (_2!1156 lt!44506)))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 (_2!1156 lt!44506)))))))))

(declare-fun lt!44969 () ListLongMap!1517)

(assert (=> d!24211 (= lt!44983 lt!44969)))

(declare-fun lt!44974 () Unit!2738)

(assert (=> d!24211 (= lt!44974 e!60059)))

(declare-fun c!15342 () Bool)

(assert (=> d!24211 (= c!15342 e!60058)))

(declare-fun res!46827 () Bool)

(assert (=> d!24211 (=> (not res!46827) (not e!60058))))

(assert (=> d!24211 (= res!46827 (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 (_2!1156 lt!44506)))))))

(assert (=> d!24211 (= lt!44969 e!60057)))

(assert (=> d!24211 (= c!15341 (and (not (= (bvand (extraKeys!2237 (_2!1156 lt!44506)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2237 (_2!1156 lt!44506)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!24211 (validMask!0 (mask!6466 (_2!1156 lt!44506)))))

(assert (=> d!24211 (= (getCurrentListMap!456 (_keys!4086 (_2!1156 lt!44506)) (_values!2389 (_2!1156 lt!44506)) (mask!6466 (_2!1156 lt!44506)) (extraKeys!2237 (_2!1156 lt!44506)) (zeroValue!2294 (_2!1156 lt!44506)) (minValue!2294 (_2!1156 lt!44506)) #b00000000000000000000000000000000 (defaultEntry!2406 (_2!1156 lt!44506))) lt!44983)))

(declare-fun bm!9062 () Bool)

(assert (=> bm!9062 (= call!9069 call!9065)))

(declare-fun b!92111 () Bool)

(declare-fun res!46830 () Bool)

(assert (=> b!92111 (=> (not res!46830) (not e!60054))))

(declare-fun e!60060 () Bool)

(assert (=> b!92111 (= res!46830 e!60060)))

(declare-fun res!46825 () Bool)

(assert (=> b!92111 (=> res!46825 e!60060)))

(assert (=> b!92111 (= res!46825 (not e!60053))))

(declare-fun res!46832 () Bool)

(assert (=> b!92111 (=> (not res!46832) (not e!60053))))

(assert (=> b!92111 (= res!46832 (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 (_2!1156 lt!44506)))))))

(declare-fun b!92112 () Bool)

(assert (=> b!92112 (= e!60051 (not call!9067))))

(declare-fun bm!9065 () Bool)

(assert (=> bm!9065 (= call!9064 (contains!784 lt!44983 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!92113 () Bool)

(declare-fun res!46829 () Bool)

(assert (=> b!92113 (=> (not res!46829) (not e!60054))))

(assert (=> b!92113 (= res!46829 e!60056)))

(declare-fun c!15344 () Bool)

(assert (=> b!92113 (= c!15344 (not (= (bvand (extraKeys!2237 (_2!1156 lt!44506)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!92114 () Bool)

(assert (=> b!92114 (= e!60060 e!60052)))

(declare-fun res!46833 () Bool)

(assert (=> b!92114 (=> (not res!46833) (not e!60052))))

(assert (=> b!92114 (= res!46833 (contains!784 lt!44983 (select (arr!1966 (_keys!4086 (_2!1156 lt!44506))) #b00000000000000000000000000000000)))))

(assert (=> b!92114 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 (_2!1156 lt!44506)))))))

(declare-fun b!92115 () Bool)

(declare-fun c!15346 () Bool)

(assert (=> b!92115 (= c!15346 (and (not (= (bvand (extraKeys!2237 (_2!1156 lt!44506)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2237 (_2!1156 lt!44506)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!92115 (= e!60055 e!60049)))

(declare-fun b!92116 () Bool)

(declare-fun Unit!2760 () Unit!2738)

(assert (=> b!92116 (= e!60059 Unit!2760)))

(declare-fun b!92117 () Bool)

(assert (=> b!92117 (= e!60057 (+!129 call!9068 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (_2!1156 lt!44506)))))))

(declare-fun b!92118 () Bool)

(assert (=> b!92118 (= e!60049 call!9066)))

(declare-fun bm!9066 () Bool)

(assert (=> bm!9066 (= call!9065 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (_2!1156 lt!44506)) (_values!2389 (_2!1156 lt!44506)) (mask!6466 (_2!1156 lt!44506)) (extraKeys!2237 (_2!1156 lt!44506)) (zeroValue!2294 (_2!1156 lt!44506)) (minValue!2294 (_2!1156 lt!44506)) #b00000000000000000000000000000000 (defaultEntry!2406 (_2!1156 lt!44506))))))

(declare-fun bm!9067 () Bool)

(assert (=> bm!9067 (= call!9066 call!9068)))

(assert (= (and d!24211 c!15341) b!92117))

(assert (= (and d!24211 (not c!15341)) b!92099))

(assert (= (and b!92099 c!15345) b!92101))

(assert (= (and b!92099 (not c!15345)) b!92115))

(assert (= (and b!92115 c!15346) b!92118))

(assert (= (and b!92115 (not c!15346)) b!92103))

(assert (= (or b!92118 b!92103) bm!9063))

(assert (= (or b!92101 bm!9063) bm!9062))

(assert (= (or b!92101 b!92118) bm!9067))

(assert (= (or b!92117 bm!9062) bm!9066))

(assert (= (or b!92117 bm!9067) bm!9064))

(assert (= (and d!24211 res!46827) b!92098))

(assert (= (and d!24211 c!15342) b!92105))

(assert (= (and d!24211 (not c!15342)) b!92116))

(assert (= (and d!24211 res!46826) b!92111))

(assert (= (and b!92111 res!46832) b!92110))

(assert (= (and b!92111 (not res!46825)) b!92114))

(assert (= (and b!92114 res!46833) b!92108))

(assert (= (and b!92111 res!46830) b!92113))

(assert (= (and b!92113 c!15344) b!92100))

(assert (= (and b!92113 (not c!15344)) b!92106))

(assert (= (and b!92100 res!46831) b!92102))

(assert (= (or b!92100 b!92106) bm!9065))

(assert (= (and b!92113 res!46829) b!92107))

(assert (= (and b!92107 c!15343) b!92104))

(assert (= (and b!92107 (not c!15343)) b!92112))

(assert (= (and b!92104 res!46828) b!92109))

(assert (= (or b!92104 b!92112) bm!9061))

(declare-fun b_lambda!4065 () Bool)

(assert (=> (not b_lambda!4065) (not b!92108)))

(declare-fun tb!1817 () Bool)

(declare-fun t!5432 () Bool)

(assert (=> (and b!91424 (= (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) (defaultEntry!2406 (_2!1156 lt!44506))) t!5432) tb!1817))

(declare-fun result!3105 () Bool)

(assert (=> tb!1817 (= result!3105 tp_is_empty!2583)))

(assert (=> b!92108 t!5432))

(declare-fun b_and!5581 () Bool)

(assert (= b_and!5577 (and (=> t!5432 result!3105) b_and!5581)))

(declare-fun tb!1819 () Bool)

(declare-fun t!5434 () Bool)

(assert (=> (and b!91420 (= (defaultEntry!2406 newMap!16) (defaultEntry!2406 (_2!1156 lt!44506))) t!5434) tb!1819))

(declare-fun result!3107 () Bool)

(assert (= result!3107 result!3105))

(assert (=> b!92108 t!5434))

(declare-fun b_and!5583 () Bool)

(assert (= b_and!5579 (and (=> t!5434 result!3107) b_and!5583)))

(declare-fun m!98797 () Bool)

(assert (=> b!92109 m!98797))

(declare-fun m!98799 () Bool)

(assert (=> b!92105 m!98799))

(declare-fun m!98801 () Bool)

(assert (=> b!92105 m!98801))

(declare-fun m!98803 () Bool)

(assert (=> b!92105 m!98803))

(declare-fun m!98805 () Bool)

(assert (=> b!92105 m!98805))

(declare-fun m!98807 () Bool)

(assert (=> b!92105 m!98807))

(declare-fun m!98809 () Bool)

(assert (=> b!92105 m!98809))

(declare-fun m!98811 () Bool)

(assert (=> b!92105 m!98811))

(assert (=> b!92105 m!98809))

(declare-fun m!98813 () Bool)

(assert (=> b!92105 m!98813))

(declare-fun m!98815 () Bool)

(assert (=> b!92105 m!98815))

(assert (=> b!92105 m!98805))

(declare-fun m!98817 () Bool)

(assert (=> b!92105 m!98817))

(declare-fun m!98819 () Bool)

(assert (=> b!92105 m!98819))

(declare-fun m!98821 () Bool)

(assert (=> b!92105 m!98821))

(declare-fun m!98823 () Bool)

(assert (=> b!92105 m!98823))

(declare-fun m!98825 () Bool)

(assert (=> b!92105 m!98825))

(declare-fun m!98827 () Bool)

(assert (=> b!92105 m!98827))

(assert (=> b!92105 m!98807))

(declare-fun m!98829 () Bool)

(assert (=> b!92105 m!98829))

(assert (=> b!92105 m!98799))

(declare-fun m!98831 () Bool)

(assert (=> b!92105 m!98831))

(declare-fun m!98833 () Bool)

(assert (=> bm!9064 m!98833))

(declare-fun m!98835 () Bool)

(assert (=> b!92102 m!98835))

(assert (=> b!92114 m!98815))

(assert (=> b!92114 m!98815))

(declare-fun m!98837 () Bool)

(assert (=> b!92114 m!98837))

(declare-fun m!98839 () Bool)

(assert (=> b!92117 m!98839))

(declare-fun m!98841 () Bool)

(assert (=> bm!9065 m!98841))

(declare-fun m!98843 () Bool)

(assert (=> bm!9061 m!98843))

(assert (=> bm!9066 m!98827))

(assert (=> b!92108 m!98815))

(declare-fun m!98845 () Bool)

(assert (=> b!92108 m!98845))

(declare-fun m!98847 () Bool)

(assert (=> b!92108 m!98847))

(declare-fun m!98849 () Bool)

(assert (=> b!92108 m!98849))

(assert (=> b!92108 m!98815))

(declare-fun m!98851 () Bool)

(assert (=> b!92108 m!98851))

(assert (=> b!92108 m!98845))

(assert (=> b!92108 m!98847))

(assert (=> b!92110 m!98815))

(assert (=> b!92110 m!98815))

(declare-fun m!98853 () Bool)

(assert (=> b!92110 m!98853))

(assert (=> b!92098 m!98815))

(assert (=> b!92098 m!98815))

(assert (=> b!92098 m!98853))

(assert (=> d!24211 m!98515))

(assert (=> d!24077 d!24211))

(declare-fun d!24213 () Bool)

(declare-fun e!60062 () Bool)

(assert (=> d!24213 e!60062))

(declare-fun res!46834 () Bool)

(assert (=> d!24213 (=> (not res!46834) (not e!60062))))

(declare-fun lt!44988 () ListLongMap!1517)

(assert (=> d!24213 (= res!46834 (contains!784 lt!44988 (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(declare-fun lt!44987 () List!1581)

(assert (=> d!24213 (= lt!44988 (ListLongMap!1518 lt!44987))))

(declare-fun lt!44985 () Unit!2738)

(declare-fun lt!44986 () Unit!2738)

(assert (=> d!24213 (= lt!44985 lt!44986)))

(assert (=> d!24213 (= (getValueByKey!144 lt!44987 (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24213 (= lt!44986 (lemmaContainsTupThenGetReturnValue!63 lt!44987 (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24213 (= lt!44987 (insertStrictlySorted!65 (toList!774 call!8948) (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24213 (= (+!129 call!8948 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44988)))

(declare-fun b!92119 () Bool)

(declare-fun res!46835 () Bool)

(assert (=> b!92119 (=> (not res!46835) (not e!60062))))

(assert (=> b!92119 (= res!46835 (= (getValueByKey!144 (toList!774 lt!44988) (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(declare-fun b!92120 () Bool)

(assert (=> b!92120 (= e!60062 (contains!786 (toList!774 lt!44988) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))

(assert (= (and d!24213 res!46834) b!92119))

(assert (= (and b!92119 res!46835) b!92120))

(declare-fun m!98855 () Bool)

(assert (=> d!24213 m!98855))

(declare-fun m!98857 () Bool)

(assert (=> d!24213 m!98857))

(declare-fun m!98859 () Bool)

(assert (=> d!24213 m!98859))

(declare-fun m!98861 () Bool)

(assert (=> d!24213 m!98861))

(declare-fun m!98863 () Bool)

(assert (=> b!92119 m!98863))

(declare-fun m!98865 () Bool)

(assert (=> b!92120 m!98865))

(assert (=> b!91658 d!24213))

(assert (=> b!91639 d!24159))

(assert (=> b!91816 d!24159))

(declare-fun d!24215 () Bool)

(declare-fun e!60063 () Bool)

(assert (=> d!24215 e!60063))

(declare-fun res!46836 () Bool)

(assert (=> d!24215 (=> res!46836 e!60063)))

(declare-fun lt!44989 () Bool)

(assert (=> d!24215 (= res!46836 (not lt!44989))))

(declare-fun lt!44992 () Bool)

(assert (=> d!24215 (= lt!44989 lt!44992)))

(declare-fun lt!44990 () Unit!2738)

(declare-fun e!60064 () Unit!2738)

(assert (=> d!24215 (= lt!44990 e!60064)))

(declare-fun c!15347 () Bool)

(assert (=> d!24215 (= c!15347 lt!44992)))

(assert (=> d!24215 (= lt!44992 (containsKey!148 (toList!774 lt!44682) (_1!1155 lt!44511)))))

(assert (=> d!24215 (= (contains!784 lt!44682 (_1!1155 lt!44511)) lt!44989)))

(declare-fun b!92121 () Bool)

(declare-fun lt!44991 () Unit!2738)

(assert (=> b!92121 (= e!60064 lt!44991)))

(assert (=> b!92121 (= lt!44991 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 lt!44682) (_1!1155 lt!44511)))))

(assert (=> b!92121 (isDefined!98 (getValueByKey!144 (toList!774 lt!44682) (_1!1155 lt!44511)))))

(declare-fun b!92122 () Bool)

(declare-fun Unit!2761 () Unit!2738)

(assert (=> b!92122 (= e!60064 Unit!2761)))

(declare-fun b!92123 () Bool)

(assert (=> b!92123 (= e!60063 (isDefined!98 (getValueByKey!144 (toList!774 lt!44682) (_1!1155 lt!44511))))))

(assert (= (and d!24215 c!15347) b!92121))

(assert (= (and d!24215 (not c!15347)) b!92122))

(assert (= (and d!24215 (not res!46836)) b!92123))

(declare-fun m!98867 () Bool)

(assert (=> d!24215 m!98867))

(declare-fun m!98869 () Bool)

(assert (=> b!92121 m!98869))

(assert (=> b!92121 m!98177))

(assert (=> b!92121 m!98177))

(declare-fun m!98871 () Bool)

(assert (=> b!92121 m!98871))

(assert (=> b!92123 m!98177))

(assert (=> b!92123 m!98177))

(assert (=> b!92123 m!98871))

(assert (=> d!24071 d!24215))

(declare-fun b!92127 () Bool)

(declare-fun e!60066 () Option!150)

(assert (=> b!92127 (= e!60066 None!148)))

(declare-fun b!92125 () Bool)

(declare-fun e!60065 () Option!150)

(assert (=> b!92125 (= e!60065 e!60066)))

(declare-fun c!15349 () Bool)

(assert (=> b!92125 (= c!15349 (and ((_ is Cons!1577) lt!44681) (not (= (_1!1155 (h!2169 lt!44681)) (_1!1155 lt!44511)))))))

(declare-fun d!24217 () Bool)

(declare-fun c!15348 () Bool)

(assert (=> d!24217 (= c!15348 (and ((_ is Cons!1577) lt!44681) (= (_1!1155 (h!2169 lt!44681)) (_1!1155 lt!44511))))))

(assert (=> d!24217 (= (getValueByKey!144 lt!44681 (_1!1155 lt!44511)) e!60065)))

(declare-fun b!92124 () Bool)

(assert (=> b!92124 (= e!60065 (Some!149 (_2!1155 (h!2169 lt!44681))))))

(declare-fun b!92126 () Bool)

(assert (=> b!92126 (= e!60066 (getValueByKey!144 (t!5419 lt!44681) (_1!1155 lt!44511)))))

(assert (= (and d!24217 c!15348) b!92124))

(assert (= (and d!24217 (not c!15348)) b!92125))

(assert (= (and b!92125 c!15349) b!92126))

(assert (= (and b!92125 (not c!15349)) b!92127))

(declare-fun m!98873 () Bool)

(assert (=> b!92126 m!98873))

(assert (=> d!24071 d!24217))

(declare-fun d!24219 () Bool)

(assert (=> d!24219 (= (getValueByKey!144 lt!44681 (_1!1155 lt!44511)) (Some!149 (_2!1155 lt!44511)))))

(declare-fun lt!44993 () Unit!2738)

(assert (=> d!24219 (= lt!44993 (choose!553 lt!44681 (_1!1155 lt!44511) (_2!1155 lt!44511)))))

(declare-fun e!60067 () Bool)

(assert (=> d!24219 e!60067))

(declare-fun res!46837 () Bool)

(assert (=> d!24219 (=> (not res!46837) (not e!60067))))

(assert (=> d!24219 (= res!46837 (isStrictlySorted!296 lt!44681))))

(assert (=> d!24219 (= (lemmaContainsTupThenGetReturnValue!63 lt!44681 (_1!1155 lt!44511) (_2!1155 lt!44511)) lt!44993)))

(declare-fun b!92128 () Bool)

(declare-fun res!46838 () Bool)

(assert (=> b!92128 (=> (not res!46838) (not e!60067))))

(assert (=> b!92128 (= res!46838 (containsKey!148 lt!44681 (_1!1155 lt!44511)))))

(declare-fun b!92129 () Bool)

(assert (=> b!92129 (= e!60067 (contains!786 lt!44681 (tuple2!2291 (_1!1155 lt!44511) (_2!1155 lt!44511))))))

(assert (= (and d!24219 res!46837) b!92128))

(assert (= (and b!92128 res!46838) b!92129))

(assert (=> d!24219 m!98171))

(declare-fun m!98875 () Bool)

(assert (=> d!24219 m!98875))

(declare-fun m!98877 () Bool)

(assert (=> d!24219 m!98877))

(declare-fun m!98879 () Bool)

(assert (=> b!92128 m!98879))

(declare-fun m!98881 () Bool)

(assert (=> b!92129 m!98881))

(assert (=> d!24071 d!24219))

(declare-fun b!92130 () Bool)

(declare-fun c!15352 () Bool)

(declare-fun e!60071 () List!1581)

(declare-fun c!15351 () Bool)

(assert (=> b!92130 (= e!60071 (ite c!15351 (t!5419 (toList!774 lt!44504)) (ite c!15352 (Cons!1577 (h!2169 (toList!774 lt!44504)) (t!5419 (toList!774 lt!44504))) Nil!1578)))))

(declare-fun b!92131 () Bool)

(declare-fun e!60070 () List!1581)

(declare-fun call!9071 () List!1581)

(assert (=> b!92131 (= e!60070 call!9071)))

(declare-fun bm!9068 () Bool)

(declare-fun call!9072 () List!1581)

(declare-fun call!9073 () List!1581)

(assert (=> bm!9068 (= call!9072 call!9073)))

(declare-fun c!15350 () Bool)

(declare-fun bm!9069 () Bool)

(assert (=> bm!9069 (= call!9073 ($colon$colon!74 e!60071 (ite c!15350 (h!2169 (toList!774 lt!44504)) (tuple2!2291 (_1!1155 lt!44511) (_2!1155 lt!44511)))))))

(declare-fun c!15353 () Bool)

(assert (=> bm!9069 (= c!15353 c!15350)))

(declare-fun b!92132 () Bool)

(declare-fun e!60068 () List!1581)

(assert (=> b!92132 (= e!60068 call!9073)))

(declare-fun b!92133 () Bool)

(assert (=> b!92133 (= e!60070 call!9071)))

(declare-fun b!92134 () Bool)

(declare-fun e!60072 () List!1581)

(assert (=> b!92134 (= e!60072 call!9072)))

(declare-fun b!92135 () Bool)

(assert (=> b!92135 (= e!60071 (insertStrictlySorted!65 (t!5419 (toList!774 lt!44504)) (_1!1155 lt!44511) (_2!1155 lt!44511)))))

(declare-fun b!92136 () Bool)

(assert (=> b!92136 (= c!15352 (and ((_ is Cons!1577) (toList!774 lt!44504)) (bvsgt (_1!1155 (h!2169 (toList!774 lt!44504))) (_1!1155 lt!44511))))))

(assert (=> b!92136 (= e!60072 e!60070)))

(declare-fun bm!9070 () Bool)

(assert (=> bm!9070 (= call!9071 call!9072)))

(declare-fun b!92137 () Bool)

(declare-fun res!46840 () Bool)

(declare-fun e!60069 () Bool)

(assert (=> b!92137 (=> (not res!46840) (not e!60069))))

(declare-fun lt!44994 () List!1581)

(assert (=> b!92137 (= res!46840 (containsKey!148 lt!44994 (_1!1155 lt!44511)))))

(declare-fun b!92138 () Bool)

(assert (=> b!92138 (= e!60068 e!60072)))

(assert (=> b!92138 (= c!15351 (and ((_ is Cons!1577) (toList!774 lt!44504)) (= (_1!1155 (h!2169 (toList!774 lt!44504))) (_1!1155 lt!44511))))))

(declare-fun b!92139 () Bool)

(assert (=> b!92139 (= e!60069 (contains!786 lt!44994 (tuple2!2291 (_1!1155 lt!44511) (_2!1155 lt!44511))))))

(declare-fun d!24221 () Bool)

(assert (=> d!24221 e!60069))

(declare-fun res!46839 () Bool)

(assert (=> d!24221 (=> (not res!46839) (not e!60069))))

(assert (=> d!24221 (= res!46839 (isStrictlySorted!296 lt!44994))))

(assert (=> d!24221 (= lt!44994 e!60068)))

(assert (=> d!24221 (= c!15350 (and ((_ is Cons!1577) (toList!774 lt!44504)) (bvslt (_1!1155 (h!2169 (toList!774 lt!44504))) (_1!1155 lt!44511))))))

(assert (=> d!24221 (isStrictlySorted!296 (toList!774 lt!44504))))

(assert (=> d!24221 (= (insertStrictlySorted!65 (toList!774 lt!44504) (_1!1155 lt!44511) (_2!1155 lt!44511)) lt!44994)))

(assert (= (and d!24221 c!15350) b!92132))

(assert (= (and d!24221 (not c!15350)) b!92138))

(assert (= (and b!92138 c!15351) b!92134))

(assert (= (and b!92138 (not c!15351)) b!92136))

(assert (= (and b!92136 c!15352) b!92131))

(assert (= (and b!92136 (not c!15352)) b!92133))

(assert (= (or b!92131 b!92133) bm!9070))

(assert (= (or b!92134 bm!9070) bm!9068))

(assert (= (or b!92132 bm!9068) bm!9069))

(assert (= (and bm!9069 c!15353) b!92135))

(assert (= (and bm!9069 (not c!15353)) b!92130))

(assert (= (and d!24221 res!46839) b!92137))

(assert (= (and b!92137 res!46840) b!92139))

(declare-fun m!98883 () Bool)

(assert (=> b!92137 m!98883))

(declare-fun m!98885 () Bool)

(assert (=> b!92139 m!98885))

(declare-fun m!98887 () Bool)

(assert (=> b!92135 m!98887))

(declare-fun m!98889 () Bool)

(assert (=> bm!9069 m!98889))

(declare-fun m!98891 () Bool)

(assert (=> d!24221 m!98891))

(assert (=> d!24221 m!98643))

(assert (=> d!24071 d!24221))

(declare-fun d!24223 () Bool)

(declare-fun e!60073 () Bool)

(assert (=> d!24223 e!60073))

(declare-fun res!46841 () Bool)

(assert (=> d!24223 (=> res!46841 e!60073)))

(declare-fun lt!44995 () Bool)

(assert (=> d!24223 (= res!46841 (not lt!44995))))

(declare-fun lt!44998 () Bool)

(assert (=> d!24223 (= lt!44995 lt!44998)))

(declare-fun lt!44996 () Unit!2738)

(declare-fun e!60074 () Unit!2738)

(assert (=> d!24223 (= lt!44996 e!60074)))

(declare-fun c!15354 () Bool)

(assert (=> d!24223 (= c!15354 lt!44998)))

(assert (=> d!24223 (= lt!44998 (containsKey!148 (toList!774 lt!44640) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!24223 (= (contains!784 lt!44640 #b1000000000000000000000000000000000000000000000000000000000000000) lt!44995)))

(declare-fun b!92140 () Bool)

(declare-fun lt!44997 () Unit!2738)

(assert (=> b!92140 (= e!60074 lt!44997)))

(assert (=> b!92140 (= lt!44997 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 lt!44640) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!92140 (isDefined!98 (getValueByKey!144 (toList!774 lt!44640) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!92141 () Bool)

(declare-fun Unit!2762 () Unit!2738)

(assert (=> b!92141 (= e!60074 Unit!2762)))

(declare-fun b!92142 () Bool)

(assert (=> b!92142 (= e!60073 (isDefined!98 (getValueByKey!144 (toList!774 lt!44640) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!24223 c!15354) b!92140))

(assert (= (and d!24223 (not c!15354)) b!92141))

(assert (= (and d!24223 (not res!46841)) b!92142))

(declare-fun m!98893 () Bool)

(assert (=> d!24223 m!98893))

(declare-fun m!98895 () Bool)

(assert (=> b!92140 m!98895))

(declare-fun m!98897 () Bool)

(assert (=> b!92140 m!98897))

(assert (=> b!92140 m!98897))

(declare-fun m!98899 () Bool)

(assert (=> b!92140 m!98899))

(assert (=> b!92142 m!98897))

(assert (=> b!92142 m!98897))

(assert (=> b!92142 m!98899))

(assert (=> bm!8931 d!24223))

(declare-fun d!24225 () Bool)

(declare-fun e!60075 () Bool)

(assert (=> d!24225 e!60075))

(declare-fun res!46842 () Bool)

(assert (=> d!24225 (=> res!46842 e!60075)))

(declare-fun lt!44999 () Bool)

(assert (=> d!24225 (= res!46842 (not lt!44999))))

(declare-fun lt!45002 () Bool)

(assert (=> d!24225 (= lt!44999 lt!45002)))

(declare-fun lt!45000 () Unit!2738)

(declare-fun e!60076 () Unit!2738)

(assert (=> d!24225 (= lt!45000 e!60076)))

(declare-fun c!15355 () Bool)

(assert (=> d!24225 (= c!15355 lt!45002)))

(assert (=> d!24225 (= lt!45002 (containsKey!148 (toList!774 lt!44640) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!24225 (= (contains!784 lt!44640 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!44999)))

(declare-fun b!92143 () Bool)

(declare-fun lt!45001 () Unit!2738)

(assert (=> b!92143 (= e!60076 lt!45001)))

(assert (=> b!92143 (= lt!45001 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 lt!44640) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!92143 (isDefined!98 (getValueByKey!144 (toList!774 lt!44640) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!92144 () Bool)

(declare-fun Unit!2763 () Unit!2738)

(assert (=> b!92144 (= e!60076 Unit!2763)))

(declare-fun b!92145 () Bool)

(assert (=> b!92145 (= e!60075 (isDefined!98 (getValueByKey!144 (toList!774 lt!44640) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!24225 c!15355) b!92143))

(assert (= (and d!24225 (not c!15355)) b!92144))

(assert (= (and d!24225 (not res!46842)) b!92145))

(assert (=> d!24225 m!98075))

(declare-fun m!98901 () Bool)

(assert (=> d!24225 m!98901))

(assert (=> b!92143 m!98075))

(declare-fun m!98903 () Bool)

(assert (=> b!92143 m!98903))

(assert (=> b!92143 m!98075))

(assert (=> b!92143 m!98505))

(assert (=> b!92143 m!98505))

(declare-fun m!98905 () Bool)

(assert (=> b!92143 m!98905))

(assert (=> b!92145 m!98075))

(assert (=> b!92145 m!98505))

(assert (=> b!92145 m!98505))

(assert (=> b!92145 m!98905))

(assert (=> b!91579 d!24225))

(declare-fun d!24227 () Bool)

(declare-fun e!60077 () Bool)

(assert (=> d!24227 e!60077))

(declare-fun res!46843 () Bool)

(assert (=> d!24227 (=> (not res!46843) (not e!60077))))

(declare-fun lt!45006 () ListLongMap!1517)

(assert (=> d!24227 (= res!46843 (contains!784 lt!45006 (_1!1155 (ite (or c!15209 c!15213) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(declare-fun lt!45005 () List!1581)

(assert (=> d!24227 (= lt!45006 (ListLongMap!1518 lt!45005))))

(declare-fun lt!45003 () Unit!2738)

(declare-fun lt!45004 () Unit!2738)

(assert (=> d!24227 (= lt!45003 lt!45004)))

(assert (=> d!24227 (= (getValueByKey!144 lt!45005 (_1!1155 (ite (or c!15209 c!15213) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))) (Some!149 (_2!1155 (ite (or c!15209 c!15213) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(assert (=> d!24227 (= lt!45004 (lemmaContainsTupThenGetReturnValue!63 lt!45005 (_1!1155 (ite (or c!15209 c!15213) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (_2!1155 (ite (or c!15209 c!15213) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(assert (=> d!24227 (= lt!45005 (insertStrictlySorted!65 (toList!774 (ite c!15209 call!8945 (ite c!15213 call!8949 call!8950))) (_1!1155 (ite (or c!15209 c!15213) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (_2!1155 (ite (or c!15209 c!15213) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(assert (=> d!24227 (= (+!129 (ite c!15209 call!8945 (ite c!15213 call!8949 call!8950)) (ite (or c!15209 c!15213) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) lt!45006)))

(declare-fun b!92146 () Bool)

(declare-fun res!46844 () Bool)

(assert (=> b!92146 (=> (not res!46844) (not e!60077))))

(assert (=> b!92146 (= res!46844 (= (getValueByKey!144 (toList!774 lt!45006) (_1!1155 (ite (or c!15209 c!15213) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))) (Some!149 (_2!1155 (ite (or c!15209 c!15213) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))))

(declare-fun b!92147 () Bool)

(assert (=> b!92147 (= e!60077 (contains!786 (toList!774 lt!45006) (ite (or c!15209 c!15213) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (= (and d!24227 res!46843) b!92146))

(assert (= (and b!92146 res!46844) b!92147))

(declare-fun m!98907 () Bool)

(assert (=> d!24227 m!98907))

(declare-fun m!98909 () Bool)

(assert (=> d!24227 m!98909))

(declare-fun m!98911 () Bool)

(assert (=> d!24227 m!98911))

(declare-fun m!98913 () Bool)

(assert (=> d!24227 m!98913))

(declare-fun m!98915 () Bool)

(assert (=> b!92146 m!98915))

(declare-fun m!98917 () Bool)

(assert (=> b!92147 m!98917))

(assert (=> bm!8944 d!24227))

(declare-fun d!24229 () Bool)

(declare-fun e!60078 () Bool)

(assert (=> d!24229 e!60078))

(declare-fun res!46845 () Bool)

(assert (=> d!24229 (=> (not res!46845) (not e!60078))))

(declare-fun lt!45010 () ListLongMap!1517)

(assert (=> d!24229 (= res!46845 (contains!784 lt!45010 (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(declare-fun lt!45009 () List!1581)

(assert (=> d!24229 (= lt!45010 (ListLongMap!1518 lt!45009))))

(declare-fun lt!45007 () Unit!2738)

(declare-fun lt!45008 () Unit!2738)

(assert (=> d!24229 (= lt!45007 lt!45008)))

(assert (=> d!24229 (= (getValueByKey!144 lt!45009 (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))) (Some!149 (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(assert (=> d!24229 (= lt!45008 (lemmaContainsTupThenGetReturnValue!63 lt!45009 (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(assert (=> d!24229 (= lt!45009 (insertStrictlySorted!65 (toList!774 call!8999) (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(assert (=> d!24229 (= (+!129 call!8999 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) lt!45010)))

(declare-fun b!92148 () Bool)

(declare-fun res!46846 () Bool)

(assert (=> b!92148 (=> (not res!46846) (not e!60078))))

(assert (=> b!92148 (= res!46846 (= (getValueByKey!144 (toList!774 lt!45010) (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))) (Some!149 (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))))))

(declare-fun b!92149 () Bool)

(assert (=> b!92149 (= e!60078 (contains!786 (toList!774 lt!45010) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))))

(assert (= (and d!24229 res!46845) b!92148))

(assert (= (and b!92148 res!46846) b!92149))

(declare-fun m!98919 () Bool)

(assert (=> d!24229 m!98919))

(declare-fun m!98921 () Bool)

(assert (=> d!24229 m!98921))

(declare-fun m!98923 () Bool)

(assert (=> d!24229 m!98923))

(declare-fun m!98925 () Bool)

(assert (=> d!24229 m!98925))

(declare-fun m!98927 () Bool)

(assert (=> b!92148 m!98927))

(declare-fun m!98929 () Bool)

(assert (=> b!92149 m!98929))

(assert (=> b!91753 d!24229))

(declare-fun bm!9071 () Bool)

(declare-fun call!9074 () Bool)

(declare-fun c!15356 () Bool)

(assert (=> bm!9071 (= call!9074 (arrayNoDuplicates!0 (_keys!4086 (_2!1156 lt!44506)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!15356 (Cons!1578 (select (arr!1966 (_keys!4086 (_2!1156 lt!44506))) #b00000000000000000000000000000000) Nil!1579) Nil!1579)))))

(declare-fun b!92150 () Bool)

(declare-fun e!60081 () Bool)

(assert (=> b!92150 (= e!60081 call!9074)))

(declare-fun b!92151 () Bool)

(declare-fun e!60082 () Bool)

(assert (=> b!92151 (= e!60082 (contains!787 Nil!1579 (select (arr!1966 (_keys!4086 (_2!1156 lt!44506))) #b00000000000000000000000000000000)))))

(declare-fun d!24231 () Bool)

(declare-fun res!46849 () Bool)

(declare-fun e!60080 () Bool)

(assert (=> d!24231 (=> res!46849 e!60080)))

(assert (=> d!24231 (= res!46849 (bvsge #b00000000000000000000000000000000 (size!2213 (_keys!4086 (_2!1156 lt!44506)))))))

(assert (=> d!24231 (= (arrayNoDuplicates!0 (_keys!4086 (_2!1156 lt!44506)) #b00000000000000000000000000000000 Nil!1579) e!60080)))

(declare-fun b!92152 () Bool)

(assert (=> b!92152 (= e!60081 call!9074)))

(declare-fun b!92153 () Bool)

(declare-fun e!60079 () Bool)

(assert (=> b!92153 (= e!60079 e!60081)))

(assert (=> b!92153 (= c!15356 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (_2!1156 lt!44506))) #b00000000000000000000000000000000)))))

(declare-fun b!92154 () Bool)

(assert (=> b!92154 (= e!60080 e!60079)))

(declare-fun res!46848 () Bool)

(assert (=> b!92154 (=> (not res!46848) (not e!60079))))

(assert (=> b!92154 (= res!46848 (not e!60082))))

(declare-fun res!46847 () Bool)

(assert (=> b!92154 (=> (not res!46847) (not e!60082))))

(assert (=> b!92154 (= res!46847 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (_2!1156 lt!44506))) #b00000000000000000000000000000000)))))

(assert (= (and d!24231 (not res!46849)) b!92154))

(assert (= (and b!92154 res!46847) b!92151))

(assert (= (and b!92154 res!46848) b!92153))

(assert (= (and b!92153 c!15356) b!92150))

(assert (= (and b!92153 (not c!15356)) b!92152))

(assert (= (or b!92150 b!92152) bm!9071))

(assert (=> bm!9071 m!98815))

(declare-fun m!98931 () Bool)

(assert (=> bm!9071 m!98931))

(assert (=> b!92151 m!98815))

(assert (=> b!92151 m!98815))

(declare-fun m!98933 () Bool)

(assert (=> b!92151 m!98933))

(assert (=> b!92153 m!98815))

(assert (=> b!92153 m!98815))

(assert (=> b!92153 m!98853))

(assert (=> b!92154 m!98815))

(assert (=> b!92154 m!98815))

(assert (=> b!92154 m!98853))

(assert (=> b!91592 d!24231))

(declare-fun d!24233 () Bool)

(declare-fun e!60083 () Bool)

(assert (=> d!24233 e!60083))

(declare-fun res!46850 () Bool)

(assert (=> d!24233 (=> res!46850 e!60083)))

(declare-fun lt!45011 () Bool)

(assert (=> d!24233 (= res!46850 (not lt!45011))))

(declare-fun lt!45014 () Bool)

(assert (=> d!24233 (= lt!45011 lt!45014)))

(declare-fun lt!45012 () Unit!2738)

(declare-fun e!60084 () Unit!2738)

(assert (=> d!24233 (= lt!45012 e!60084)))

(declare-fun c!15357 () Bool)

(assert (=> d!24233 (= c!15357 lt!45014)))

(assert (=> d!24233 (= lt!45014 (containsKey!148 (toList!774 lt!44673) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!24233 (= (contains!784 lt!44673 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!45011)))

(declare-fun b!92155 () Bool)

(declare-fun lt!45013 () Unit!2738)

(assert (=> b!92155 (= e!60084 lt!45013)))

(assert (=> b!92155 (= lt!45013 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 lt!44673) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!92155 (isDefined!98 (getValueByKey!144 (toList!774 lt!44673) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!92156 () Bool)

(declare-fun Unit!2764 () Unit!2738)

(assert (=> b!92156 (= e!60084 Unit!2764)))

(declare-fun b!92157 () Bool)

(assert (=> b!92157 (= e!60083 (isDefined!98 (getValueByKey!144 (toList!774 lt!44673) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!24233 c!15357) b!92155))

(assert (= (and d!24233 (not c!15357)) b!92156))

(assert (= (and d!24233 (not res!46850)) b!92157))

(assert (=> d!24233 m!98075))

(declare-fun m!98935 () Bool)

(assert (=> d!24233 m!98935))

(assert (=> b!92155 m!98075))

(declare-fun m!98937 () Bool)

(assert (=> b!92155 m!98937))

(assert (=> b!92155 m!98075))

(assert (=> b!92155 m!98645))

(assert (=> b!92155 m!98645))

(declare-fun m!98939 () Bool)

(assert (=> b!92155 m!98939))

(assert (=> b!92157 m!98075))

(assert (=> b!92157 m!98645))

(assert (=> b!92157 m!98645))

(assert (=> b!92157 m!98939))

(assert (=> b!91632 d!24233))

(declare-fun d!24235 () Bool)

(declare-fun e!60085 () Bool)

(assert (=> d!24235 e!60085))

(declare-fun res!46851 () Bool)

(assert (=> d!24235 (=> (not res!46851) (not e!60085))))

(declare-fun lt!45018 () ListLongMap!1517)

(assert (=> d!24235 (= res!46851 (contains!784 lt!45018 (_1!1155 (tuple2!2291 lt!44695 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(declare-fun lt!45017 () List!1581)

(assert (=> d!24235 (= lt!45018 (ListLongMap!1518 lt!45017))))

(declare-fun lt!45015 () Unit!2738)

(declare-fun lt!45016 () Unit!2738)

(assert (=> d!24235 (= lt!45015 lt!45016)))

(assert (=> d!24235 (= (getValueByKey!144 lt!45017 (_1!1155 (tuple2!2291 lt!44695 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 lt!44695 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24235 (= lt!45016 (lemmaContainsTupThenGetReturnValue!63 lt!45017 (_1!1155 (tuple2!2291 lt!44695 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 lt!44695 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24235 (= lt!45017 (insertStrictlySorted!65 (toList!774 lt!44688) (_1!1155 (tuple2!2291 lt!44695 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 lt!44695 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24235 (= (+!129 lt!44688 (tuple2!2291 lt!44695 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!45018)))

(declare-fun b!92158 () Bool)

(declare-fun res!46852 () Bool)

(assert (=> b!92158 (=> (not res!46852) (not e!60085))))

(assert (=> b!92158 (= res!46852 (= (getValueByKey!144 (toList!774 lt!45018) (_1!1155 (tuple2!2291 lt!44695 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 lt!44695 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(declare-fun b!92159 () Bool)

(assert (=> b!92159 (= e!60085 (contains!786 (toList!774 lt!45018) (tuple2!2291 lt!44695 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))

(assert (= (and d!24235 res!46851) b!92158))

(assert (= (and b!92158 res!46852) b!92159))

(declare-fun m!98941 () Bool)

(assert (=> d!24235 m!98941))

(declare-fun m!98943 () Bool)

(assert (=> d!24235 m!98943))

(declare-fun m!98945 () Bool)

(assert (=> d!24235 m!98945))

(declare-fun m!98947 () Bool)

(assert (=> d!24235 m!98947))

(declare-fun m!98949 () Bool)

(assert (=> b!92158 m!98949))

(declare-fun m!98951 () Bool)

(assert (=> b!92159 m!98951))

(assert (=> b!91646 d!24235))

(declare-fun d!24237 () Bool)

(assert (=> d!24237 (= (apply!87 lt!44697 lt!44693) (get!1257 (getValueByKey!144 (toList!774 lt!44697) lt!44693)))))

(declare-fun bs!3799 () Bool)

(assert (= bs!3799 d!24237))

(declare-fun m!98953 () Bool)

(assert (=> bs!3799 m!98953))

(assert (=> bs!3799 m!98953))

(declare-fun m!98955 () Bool)

(assert (=> bs!3799 m!98955))

(assert (=> b!91646 d!24237))

(declare-fun d!24239 () Bool)

(declare-fun e!60086 () Bool)

(assert (=> d!24239 e!60086))

(declare-fun res!46853 () Bool)

(assert (=> d!24239 (=> (not res!46853) (not e!60086))))

(declare-fun lt!45022 () ListLongMap!1517)

(assert (=> d!24239 (= res!46853 (contains!784 lt!45022 (_1!1155 (tuple2!2291 lt!44685 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(declare-fun lt!45021 () List!1581)

(assert (=> d!24239 (= lt!45022 (ListLongMap!1518 lt!45021))))

(declare-fun lt!45019 () Unit!2738)

(declare-fun lt!45020 () Unit!2738)

(assert (=> d!24239 (= lt!45019 lt!45020)))

(assert (=> d!24239 (= (getValueByKey!144 lt!45021 (_1!1155 (tuple2!2291 lt!44685 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 lt!44685 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24239 (= lt!45020 (lemmaContainsTupThenGetReturnValue!63 lt!45021 (_1!1155 (tuple2!2291 lt!44685 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 lt!44685 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24239 (= lt!45021 (insertStrictlySorted!65 (toList!774 lt!44697) (_1!1155 (tuple2!2291 lt!44685 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 lt!44685 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24239 (= (+!129 lt!44697 (tuple2!2291 lt!44685 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!45022)))

(declare-fun b!92160 () Bool)

(declare-fun res!46854 () Bool)

(assert (=> b!92160 (=> (not res!46854) (not e!60086))))

(assert (=> b!92160 (= res!46854 (= (getValueByKey!144 (toList!774 lt!45022) (_1!1155 (tuple2!2291 lt!44685 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 lt!44685 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(declare-fun b!92161 () Bool)

(assert (=> b!92161 (= e!60086 (contains!786 (toList!774 lt!45022) (tuple2!2291 lt!44685 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))))))

(assert (= (and d!24239 res!46853) b!92160))

(assert (= (and b!92160 res!46854) b!92161))

(declare-fun m!98957 () Bool)

(assert (=> d!24239 m!98957))

(declare-fun m!98959 () Bool)

(assert (=> d!24239 m!98959))

(declare-fun m!98961 () Bool)

(assert (=> d!24239 m!98961))

(declare-fun m!98963 () Bool)

(assert (=> d!24239 m!98963))

(declare-fun m!98965 () Bool)

(assert (=> b!92160 m!98965))

(declare-fun m!98967 () Bool)

(assert (=> b!92161 m!98967))

(assert (=> b!91646 d!24239))

(declare-fun d!24241 () Bool)

(assert (=> d!24241 (= (apply!87 lt!44691 lt!44690) (get!1257 (getValueByKey!144 (toList!774 lt!44691) lt!44690)))))

(declare-fun bs!3800 () Bool)

(assert (= bs!3800 d!24241))

(declare-fun m!98969 () Bool)

(assert (=> bs!3800 m!98969))

(assert (=> bs!3800 m!98969))

(declare-fun m!98971 () Bool)

(assert (=> bs!3800 m!98971))

(assert (=> b!91646 d!24241))

(declare-fun d!24243 () Bool)

(declare-fun e!60087 () Bool)

(assert (=> d!24243 e!60087))

(declare-fun res!46855 () Bool)

(assert (=> d!24243 (=> res!46855 e!60087)))

(declare-fun lt!45023 () Bool)

(assert (=> d!24243 (= res!46855 (not lt!45023))))

(declare-fun lt!45026 () Bool)

(assert (=> d!24243 (= lt!45023 lt!45026)))

(declare-fun lt!45024 () Unit!2738)

(declare-fun e!60088 () Unit!2738)

(assert (=> d!24243 (= lt!45024 e!60088)))

(declare-fun c!15358 () Bool)

(assert (=> d!24243 (= c!15358 lt!45026)))

(assert (=> d!24243 (= lt!45026 (containsKey!148 (toList!774 (+!129 lt!44687 (tuple2!2291 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) lt!44699))))

(assert (=> d!24243 (= (contains!784 (+!129 lt!44687 (tuple2!2291 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44699) lt!45023)))

(declare-fun b!92162 () Bool)

(declare-fun lt!45025 () Unit!2738)

(assert (=> b!92162 (= e!60088 lt!45025)))

(assert (=> b!92162 (= lt!45025 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 (+!129 lt!44687 (tuple2!2291 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) lt!44699))))

(assert (=> b!92162 (isDefined!98 (getValueByKey!144 (toList!774 (+!129 lt!44687 (tuple2!2291 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) lt!44699))))

(declare-fun b!92163 () Bool)

(declare-fun Unit!2765 () Unit!2738)

(assert (=> b!92163 (= e!60088 Unit!2765)))

(declare-fun b!92164 () Bool)

(assert (=> b!92164 (= e!60087 (isDefined!98 (getValueByKey!144 (toList!774 (+!129 lt!44687 (tuple2!2291 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) lt!44699)))))

(assert (= (and d!24243 c!15358) b!92162))

(assert (= (and d!24243 (not c!15358)) b!92163))

(assert (= (and d!24243 (not res!46855)) b!92164))

(declare-fun m!98973 () Bool)

(assert (=> d!24243 m!98973))

(declare-fun m!98975 () Bool)

(assert (=> b!92162 m!98975))

(declare-fun m!98977 () Bool)

(assert (=> b!92162 m!98977))

(assert (=> b!92162 m!98977))

(declare-fun m!98979 () Bool)

(assert (=> b!92162 m!98979))

(assert (=> b!92164 m!98977))

(assert (=> b!92164 m!98977))

(assert (=> b!92164 m!98979))

(assert (=> b!91646 d!24243))

(declare-fun d!24245 () Bool)

(assert (=> d!24245 (= (apply!87 (+!129 lt!44691 (tuple2!2291 lt!44683 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44690) (apply!87 lt!44691 lt!44690))))

(declare-fun lt!45029 () Unit!2738)

(declare-fun choose!556 (ListLongMap!1517 (_ BitVec 64) V!3091 (_ BitVec 64)) Unit!2738)

(assert (=> d!24245 (= lt!45029 (choose!556 lt!44691 lt!44683 (minValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44690))))

(declare-fun e!60091 () Bool)

(assert (=> d!24245 e!60091))

(declare-fun res!46858 () Bool)

(assert (=> d!24245 (=> (not res!46858) (not e!60091))))

(assert (=> d!24245 (= res!46858 (contains!784 lt!44691 lt!44690))))

(assert (=> d!24245 (= (addApplyDifferent!63 lt!44691 lt!44683 (minValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44690) lt!45029)))

(declare-fun b!92168 () Bool)

(assert (=> b!92168 (= e!60091 (not (= lt!44690 lt!44683)))))

(assert (= (and d!24245 res!46858) b!92168))

(assert (=> d!24245 m!98193))

(assert (=> d!24245 m!98193))

(assert (=> d!24245 m!98195))

(assert (=> d!24245 m!98201))

(declare-fun m!98981 () Bool)

(assert (=> d!24245 m!98981))

(declare-fun m!98983 () Bool)

(assert (=> d!24245 m!98983))

(assert (=> b!91646 d!24245))

(declare-fun d!24247 () Bool)

(declare-fun e!60092 () Bool)

(assert (=> d!24247 e!60092))

(declare-fun res!46859 () Bool)

(assert (=> d!24247 (=> (not res!46859) (not e!60092))))

(declare-fun lt!45033 () ListLongMap!1517)

(assert (=> d!24247 (= res!46859 (contains!784 lt!45033 (_1!1155 (tuple2!2291 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(declare-fun lt!45032 () List!1581)

(assert (=> d!24247 (= lt!45033 (ListLongMap!1518 lt!45032))))

(declare-fun lt!45030 () Unit!2738)

(declare-fun lt!45031 () Unit!2738)

(assert (=> d!24247 (= lt!45030 lt!45031)))

(assert (=> d!24247 (= (getValueByKey!144 lt!45032 (_1!1155 (tuple2!2291 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24247 (= lt!45031 (lemmaContainsTupThenGetReturnValue!63 lt!45032 (_1!1155 (tuple2!2291 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24247 (= lt!45032 (insertStrictlySorted!65 (toList!774 lt!44687) (_1!1155 (tuple2!2291 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24247 (= (+!129 lt!44687 (tuple2!2291 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!45033)))

(declare-fun b!92169 () Bool)

(declare-fun res!46860 () Bool)

(assert (=> b!92169 (=> (not res!46860) (not e!60092))))

(assert (=> b!92169 (= res!46860 (= (getValueByKey!144 (toList!774 lt!45033) (_1!1155 (tuple2!2291 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(declare-fun b!92170 () Bool)

(assert (=> b!92170 (= e!60092 (contains!786 (toList!774 lt!45033) (tuple2!2291 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))))))

(assert (= (and d!24247 res!46859) b!92169))

(assert (= (and b!92169 res!46860) b!92170))

(declare-fun m!98985 () Bool)

(assert (=> d!24247 m!98985))

(declare-fun m!98987 () Bool)

(assert (=> d!24247 m!98987))

(declare-fun m!98989 () Bool)

(assert (=> d!24247 m!98989))

(declare-fun m!98991 () Bool)

(assert (=> d!24247 m!98991))

(declare-fun m!98993 () Bool)

(assert (=> b!92169 m!98993))

(declare-fun m!98995 () Bool)

(assert (=> b!92170 m!98995))

(assert (=> b!91646 d!24247))

(declare-fun d!24249 () Bool)

(assert (=> d!24249 (contains!784 (+!129 lt!44687 (tuple2!2291 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44699)))

(declare-fun lt!45036 () Unit!2738)

(declare-fun choose!557 (ListLongMap!1517 (_ BitVec 64) V!3091 (_ BitVec 64)) Unit!2738)

(assert (=> d!24249 (= lt!45036 (choose!557 lt!44687 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44699))))

(assert (=> d!24249 (contains!784 lt!44687 lt!44699)))

(assert (=> d!24249 (= (addStillContains!63 lt!44687 lt!44684 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44699) lt!45036)))

(declare-fun bs!3801 () Bool)

(assert (= bs!3801 d!24249))

(assert (=> bs!3801 m!98183))

(assert (=> bs!3801 m!98183))

(assert (=> bs!3801 m!98213))

(declare-fun m!98997 () Bool)

(assert (=> bs!3801 m!98997))

(declare-fun m!98999 () Bool)

(assert (=> bs!3801 m!98999))

(assert (=> b!91646 d!24249))

(declare-fun d!24251 () Bool)

(assert (=> d!24251 (= (apply!87 (+!129 lt!44691 (tuple2!2291 lt!44683 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44690) (get!1257 (getValueByKey!144 (toList!774 (+!129 lt!44691 (tuple2!2291 lt!44683 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) lt!44690)))))

(declare-fun bs!3802 () Bool)

(assert (= bs!3802 d!24251))

(declare-fun m!99001 () Bool)

(assert (=> bs!3802 m!99001))

(assert (=> bs!3802 m!99001))

(declare-fun m!99003 () Bool)

(assert (=> bs!3802 m!99003))

(assert (=> b!91646 d!24251))

(declare-fun d!24253 () Bool)

(declare-fun e!60093 () Bool)

(assert (=> d!24253 e!60093))

(declare-fun res!46861 () Bool)

(assert (=> d!24253 (=> (not res!46861) (not e!60093))))

(declare-fun lt!45040 () ListLongMap!1517)

(assert (=> d!24253 (= res!46861 (contains!784 lt!45040 (_1!1155 (tuple2!2291 lt!44683 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(declare-fun lt!45039 () List!1581)

(assert (=> d!24253 (= lt!45040 (ListLongMap!1518 lt!45039))))

(declare-fun lt!45037 () Unit!2738)

(declare-fun lt!45038 () Unit!2738)

(assert (=> d!24253 (= lt!45037 lt!45038)))

(assert (=> d!24253 (= (getValueByKey!144 lt!45039 (_1!1155 (tuple2!2291 lt!44683 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 lt!44683 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24253 (= lt!45038 (lemmaContainsTupThenGetReturnValue!63 lt!45039 (_1!1155 (tuple2!2291 lt!44683 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 lt!44683 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24253 (= lt!45039 (insertStrictlySorted!65 (toList!774 lt!44691) (_1!1155 (tuple2!2291 lt!44683 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 lt!44683 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24253 (= (+!129 lt!44691 (tuple2!2291 lt!44683 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!45040)))

(declare-fun b!92172 () Bool)

(declare-fun res!46862 () Bool)

(assert (=> b!92172 (=> (not res!46862) (not e!60093))))

(assert (=> b!92172 (= res!46862 (= (getValueByKey!144 (toList!774 lt!45040) (_1!1155 (tuple2!2291 lt!44683 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 lt!44683 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(declare-fun b!92173 () Bool)

(assert (=> b!92173 (= e!60093 (contains!786 (toList!774 lt!45040) (tuple2!2291 lt!44683 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))

(assert (= (and d!24253 res!46861) b!92172))

(assert (= (and b!92172 res!46862) b!92173))

(declare-fun m!99005 () Bool)

(assert (=> d!24253 m!99005))

(declare-fun m!99007 () Bool)

(assert (=> d!24253 m!99007))

(declare-fun m!99009 () Bool)

(assert (=> d!24253 m!99009))

(declare-fun m!99011 () Bool)

(assert (=> d!24253 m!99011))

(declare-fun m!99013 () Bool)

(assert (=> b!92172 m!99013))

(declare-fun m!99015 () Bool)

(assert (=> b!92173 m!99015))

(assert (=> b!91646 d!24253))

(declare-fun d!24255 () Bool)

(assert (=> d!24255 (= (apply!87 (+!129 lt!44697 (tuple2!2291 lt!44685 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44693) (apply!87 lt!44697 lt!44693))))

(declare-fun lt!45041 () Unit!2738)

(assert (=> d!24255 (= lt!45041 (choose!556 lt!44697 lt!44685 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44693))))

(declare-fun e!60094 () Bool)

(assert (=> d!24255 e!60094))

(declare-fun res!46863 () Bool)

(assert (=> d!24255 (=> (not res!46863) (not e!60094))))

(assert (=> d!24255 (= res!46863 (contains!784 lt!44697 lt!44693))))

(assert (=> d!24255 (= (addApplyDifferent!63 lt!44697 lt!44685 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44693) lt!45041)))

(declare-fun b!92174 () Bool)

(assert (=> b!92174 (= e!60094 (not (= lt!44693 lt!44685)))))

(assert (= (and d!24255 res!46863) b!92174))

(assert (=> d!24255 m!98189))

(assert (=> d!24255 m!98189))

(assert (=> d!24255 m!98199))

(assert (=> d!24255 m!98205))

(declare-fun m!99017 () Bool)

(assert (=> d!24255 m!99017))

(declare-fun m!99019 () Bool)

(assert (=> d!24255 m!99019))

(assert (=> b!91646 d!24255))

(declare-fun d!24257 () Bool)

(assert (=> d!24257 (= (apply!87 (+!129 lt!44688 (tuple2!2291 lt!44695 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44704) (get!1257 (getValueByKey!144 (toList!774 (+!129 lt!44688 (tuple2!2291 lt!44695 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) lt!44704)))))

(declare-fun bs!3803 () Bool)

(assert (= bs!3803 d!24257))

(declare-fun m!99021 () Bool)

(assert (=> bs!3803 m!99021))

(assert (=> bs!3803 m!99021))

(declare-fun m!99023 () Bool)

(assert (=> bs!3803 m!99023))

(assert (=> b!91646 d!24257))

(declare-fun d!24259 () Bool)

(assert (=> d!24259 (= (apply!87 (+!129 lt!44688 (tuple2!2291 lt!44695 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44704) (apply!87 lt!44688 lt!44704))))

(declare-fun lt!45042 () Unit!2738)

(assert (=> d!24259 (= lt!45042 (choose!556 lt!44688 lt!44695 (minValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44704))))

(declare-fun e!60095 () Bool)

(assert (=> d!24259 e!60095))

(declare-fun res!46864 () Bool)

(assert (=> d!24259 (=> (not res!46864) (not e!60095))))

(assert (=> d!24259 (= res!46864 (contains!784 lt!44688 lt!44704))))

(assert (=> d!24259 (= (addApplyDifferent!63 lt!44688 lt!44695 (minValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44704) lt!45042)))

(declare-fun b!92175 () Bool)

(assert (=> b!92175 (= e!60095 (not (= lt!44704 lt!44695)))))

(assert (= (and d!24259 res!46864) b!92175))

(assert (=> d!24259 m!98191))

(assert (=> d!24259 m!98191))

(assert (=> d!24259 m!98211))

(assert (=> d!24259 m!98187))

(declare-fun m!99025 () Bool)

(assert (=> d!24259 m!99025))

(declare-fun m!99027 () Bool)

(assert (=> d!24259 m!99027))

(assert (=> b!91646 d!24259))

(declare-fun b!92176 () Bool)

(declare-fun e!60100 () ListLongMap!1517)

(declare-fun e!60102 () ListLongMap!1517)

(assert (=> b!92176 (= e!60100 e!60102)))

(declare-fun c!15360 () Bool)

(assert (=> b!92176 (= c!15360 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun b!92177 () Bool)

(assert (=> b!92177 (= e!60100 (ListLongMap!1518 Nil!1578))))

(declare-fun b!92178 () Bool)

(declare-fun call!9075 () ListLongMap!1517)

(assert (=> b!92178 (= e!60102 call!9075)))

(declare-fun b!92179 () Bool)

(declare-fun lt!45048 () ListLongMap!1517)

(declare-fun e!60097 () Bool)

(assert (=> b!92179 (= e!60097 (= lt!45048 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun bm!9072 () Bool)

(assert (=> bm!9072 (= call!9075 (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun b!92180 () Bool)

(declare-fun e!60101 () Bool)

(assert (=> b!92180 (= e!60101 e!60097)))

(declare-fun c!15362 () Bool)

(assert (=> b!92180 (= c!15362 (bvslt from!355 (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun b!92181 () Bool)

(declare-fun e!60096 () Bool)

(assert (=> b!92181 (= e!60096 e!60101)))

(declare-fun c!15361 () Bool)

(declare-fun e!60099 () Bool)

(assert (=> b!92181 (= c!15361 e!60099)))

(declare-fun res!46866 () Bool)

(assert (=> b!92181 (=> (not res!46866) (not e!60099))))

(assert (=> b!92181 (= res!46866 (bvslt from!355 (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun b!92182 () Bool)

(assert (=> b!92182 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(assert (=> b!92182 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2214 (_values!2389 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun e!60098 () Bool)

(assert (=> b!92182 (= e!60098 (= (apply!87 lt!45048 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) from!355) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!24261 () Bool)

(assert (=> d!24261 e!60096))

(declare-fun res!46867 () Bool)

(assert (=> d!24261 (=> (not res!46867) (not e!60096))))

(assert (=> d!24261 (= res!46867 (not (contains!784 lt!45048 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!24261 (= lt!45048 e!60100)))

(declare-fun c!15359 () Bool)

(assert (=> d!24261 (= c!15359 (bvsge from!355 (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(assert (=> d!24261 (validMask!0 (mask!6466 (v!2722 (underlying!315 thiss!992))))))

(assert (=> d!24261 (= (getCurrentListMapNoExtraKeys!93 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (_values!2389 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992))) (extraKeys!2237 (v!2722 (underlying!315 thiss!992))) (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) (minValue!2294 (v!2722 (underlying!315 thiss!992))) from!355 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992)))) lt!45048)))

(declare-fun b!92183 () Bool)

(assert (=> b!92183 (= e!60097 (isEmpty!351 lt!45048))))

(declare-fun b!92184 () Bool)

(assert (=> b!92184 (= e!60099 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (=> b!92184 (bvsge from!355 #b00000000000000000000000000000000)))

(declare-fun b!92185 () Bool)

(assert (=> b!92185 (= e!60101 e!60098)))

(assert (=> b!92185 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))))))

(declare-fun res!46868 () Bool)

(assert (=> b!92185 (= res!46868 (contains!784 lt!45048 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (=> b!92185 (=> (not res!46868) (not e!60098))))

(declare-fun b!92186 () Bool)

(declare-fun res!46865 () Bool)

(assert (=> b!92186 (=> (not res!46865) (not e!60096))))

(assert (=> b!92186 (= res!46865 (not (contains!784 lt!45048 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!92187 () Bool)

(declare-fun lt!45046 () Unit!2738)

(declare-fun lt!45043 () Unit!2738)

(assert (=> b!92187 (= lt!45046 lt!45043)))

(declare-fun lt!45047 () (_ BitVec 64))

(declare-fun lt!45044 () V!3091)

(declare-fun lt!45049 () (_ BitVec 64))

(declare-fun lt!45045 () ListLongMap!1517)

(assert (=> b!92187 (not (contains!784 (+!129 lt!45045 (tuple2!2291 lt!45049 lt!45044)) lt!45047))))

(assert (=> b!92187 (= lt!45043 (addStillNotContains!38 lt!45045 lt!45049 lt!45044 lt!45047))))

(assert (=> b!92187 (= lt!45047 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!92187 (= lt!45044 (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) from!355) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!92187 (= lt!45049 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355))))

(assert (=> b!92187 (= lt!45045 call!9075)))

(assert (=> b!92187 (= e!60102 (+!129 call!9075 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) from!355) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!24261 c!15359) b!92177))

(assert (= (and d!24261 (not c!15359)) b!92176))

(assert (= (and b!92176 c!15360) b!92187))

(assert (= (and b!92176 (not c!15360)) b!92178))

(assert (= (or b!92187 b!92178) bm!9072))

(assert (= (and d!24261 res!46867) b!92186))

(assert (= (and b!92186 res!46865) b!92181))

(assert (= (and b!92181 res!46866) b!92184))

(assert (= (and b!92181 c!15361) b!92185))

(assert (= (and b!92181 (not c!15361)) b!92180))

(assert (= (and b!92185 res!46868) b!92182))

(assert (= (and b!92180 c!15362) b!92179))

(assert (= (and b!92180 (not c!15362)) b!92183))

(declare-fun b_lambda!4067 () Bool)

(assert (=> (not b_lambda!4067) (not b!92182)))

(assert (=> b!92182 t!5416))

(declare-fun b_and!5585 () Bool)

(assert (= b_and!5581 (and (=> t!5416 result!3087) b_and!5585)))

(assert (=> b!92182 t!5418))

(declare-fun b_and!5587 () Bool)

(assert (= b_and!5583 (and (=> t!5418 result!3091) b_and!5587)))

(declare-fun b_lambda!4069 () Bool)

(assert (=> (not b_lambda!4069) (not b!92187)))

(assert (=> b!92187 t!5416))

(declare-fun b_and!5589 () Bool)

(assert (= b_and!5585 (and (=> t!5416 result!3087) b_and!5589)))

(assert (=> b!92187 t!5418))

(declare-fun b_and!5591 () Bool)

(assert (= b_and!5587 (and (=> t!5418 result!3091) b_and!5591)))

(assert (=> b!92182 m!97909))

(assert (=> b!92182 m!97909))

(declare-fun m!99029 () Bool)

(assert (=> b!92182 m!99029))

(assert (=> b!92182 m!97917))

(assert (=> b!92182 m!97915))

(assert (=> b!92182 m!97917))

(assert (=> b!92182 m!97919))

(assert (=> b!92182 m!97915))

(declare-fun m!99031 () Bool)

(assert (=> d!24261 m!99031))

(assert (=> d!24261 m!98111))

(declare-fun m!99033 () Bool)

(assert (=> bm!9072 m!99033))

(assert (=> b!92185 m!97909))

(assert (=> b!92185 m!97909))

(declare-fun m!99035 () Bool)

(assert (=> b!92185 m!99035))

(declare-fun m!99037 () Bool)

(assert (=> b!92183 m!99037))

(assert (=> b!92184 m!97909))

(assert (=> b!92184 m!97909))

(assert (=> b!92184 m!98229))

(assert (=> b!92179 m!99033))

(declare-fun m!99039 () Bool)

(assert (=> b!92186 m!99039))

(declare-fun m!99041 () Bool)

(assert (=> b!92187 m!99041))

(assert (=> b!92187 m!97909))

(declare-fun m!99043 () Bool)

(assert (=> b!92187 m!99043))

(assert (=> b!92187 m!97917))

(declare-fun m!99045 () Bool)

(assert (=> b!92187 m!99045))

(assert (=> b!92187 m!97915))

(assert (=> b!92187 m!97917))

(assert (=> b!92187 m!97919))

(assert (=> b!92187 m!97915))

(assert (=> b!92187 m!99045))

(declare-fun m!99047 () Bool)

(assert (=> b!92187 m!99047))

(assert (=> b!92176 m!97909))

(assert (=> b!92176 m!97909))

(assert (=> b!92176 m!98229))

(assert (=> b!91646 d!24261))

(declare-fun d!24263 () Bool)

(assert (=> d!24263 (= (apply!87 (+!129 lt!44697 (tuple2!2291 lt!44685 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44693) (get!1257 (getValueByKey!144 (toList!774 (+!129 lt!44697 (tuple2!2291 lt!44685 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) lt!44693)))))

(declare-fun bs!3804 () Bool)

(assert (= bs!3804 d!24263))

(declare-fun m!99049 () Bool)

(assert (=> bs!3804 m!99049))

(assert (=> bs!3804 m!99049))

(declare-fun m!99051 () Bool)

(assert (=> bs!3804 m!99051))

(assert (=> b!91646 d!24263))

(declare-fun d!24265 () Bool)

(assert (=> d!24265 (= (apply!87 lt!44688 lt!44704) (get!1257 (getValueByKey!144 (toList!774 lt!44688) lt!44704)))))

(declare-fun bs!3805 () Bool)

(assert (= bs!3805 d!24265))

(declare-fun m!99053 () Bool)

(assert (=> bs!3805 m!99053))

(assert (=> bs!3805 m!99053))

(declare-fun m!99055 () Bool)

(assert (=> bs!3805 m!99055))

(assert (=> b!91646 d!24265))

(declare-fun b!92191 () Bool)

(declare-fun e!60104 () Option!150)

(assert (=> b!92191 (= e!60104 None!148)))

(declare-fun b!92189 () Bool)

(declare-fun e!60103 () Option!150)

(assert (=> b!92189 (= e!60103 e!60104)))

(declare-fun c!15364 () Bool)

(assert (=> b!92189 (= c!15364 (and ((_ is Cons!1577) (toList!774 lt!44682)) (not (= (_1!1155 (h!2169 (toList!774 lt!44682))) (_1!1155 lt!44511)))))))

(declare-fun d!24267 () Bool)

(declare-fun c!15363 () Bool)

(assert (=> d!24267 (= c!15363 (and ((_ is Cons!1577) (toList!774 lt!44682)) (= (_1!1155 (h!2169 (toList!774 lt!44682))) (_1!1155 lt!44511))))))

(assert (=> d!24267 (= (getValueByKey!144 (toList!774 lt!44682) (_1!1155 lt!44511)) e!60103)))

(declare-fun b!92188 () Bool)

(assert (=> b!92188 (= e!60103 (Some!149 (_2!1155 (h!2169 (toList!774 lt!44682)))))))

(declare-fun b!92190 () Bool)

(assert (=> b!92190 (= e!60104 (getValueByKey!144 (t!5419 (toList!774 lt!44682)) (_1!1155 lt!44511)))))

(assert (= (and d!24267 c!15363) b!92188))

(assert (= (and d!24267 (not c!15363)) b!92189))

(assert (= (and b!92189 c!15364) b!92190))

(assert (= (and b!92189 (not c!15364)) b!92191))

(declare-fun m!99057 () Bool)

(assert (=> b!92190 m!99057))

(assert (=> b!91637 d!24267))

(declare-fun d!24269 () Bool)

(assert (=> d!24269 (= (apply!87 lt!44640 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1257 (getValueByKey!144 (toList!774 lt!44640) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!3806 () Bool)

(assert (= bs!3806 d!24269))

(declare-fun m!99059 () Bool)

(assert (=> bs!3806 m!99059))

(assert (=> bs!3806 m!99059))

(declare-fun m!99061 () Bool)

(assert (=> bs!3806 m!99061))

(assert (=> b!91567 d!24269))

(declare-fun d!24271 () Bool)

(assert (=> d!24271 (= (apply!87 lt!44703 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1257 (getValueByKey!144 (toList!774 lt!44703) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!3807 () Bool)

(assert (= bs!3807 d!24271))

(assert (=> bs!3807 m!98521))

(assert (=> bs!3807 m!98521))

(declare-fun m!99063 () Bool)

(assert (=> bs!3807 m!99063))

(assert (=> b!91650 d!24271))

(declare-fun d!24273 () Bool)

(declare-fun lt!45050 () Bool)

(assert (=> d!24273 (= lt!45050 (select (content!94 (toList!774 lt!44716)) lt!44511))))

(declare-fun e!60105 () Bool)

(assert (=> d!24273 (= lt!45050 e!60105)))

(declare-fun res!46869 () Bool)

(assert (=> d!24273 (=> (not res!46869) (not e!60105))))

(assert (=> d!24273 (= res!46869 ((_ is Cons!1577) (toList!774 lt!44716)))))

(assert (=> d!24273 (= (contains!786 (toList!774 lt!44716) lt!44511) lt!45050)))

(declare-fun b!92192 () Bool)

(declare-fun e!60106 () Bool)

(assert (=> b!92192 (= e!60105 e!60106)))

(declare-fun res!46870 () Bool)

(assert (=> b!92192 (=> res!46870 e!60106)))

(assert (=> b!92192 (= res!46870 (= (h!2169 (toList!774 lt!44716)) lt!44511))))

(declare-fun b!92193 () Bool)

(assert (=> b!92193 (= e!60106 (contains!786 (t!5419 (toList!774 lt!44716)) lt!44511))))

(assert (= (and d!24273 res!46869) b!92192))

(assert (= (and b!92192 (not res!46870)) b!92193))

(declare-fun m!99065 () Bool)

(assert (=> d!24273 m!99065))

(declare-fun m!99067 () Bool)

(assert (=> d!24273 m!99067))

(declare-fun m!99069 () Bool)

(assert (=> b!92193 m!99069))

(assert (=> b!91665 d!24273))

(declare-fun d!24275 () Bool)

(declare-fun res!46875 () Bool)

(declare-fun e!60115 () Bool)

(assert (=> d!24275 (=> res!46875 e!60115)))

(assert (=> d!24275 (= res!46875 (bvsge #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))

(assert (=> d!24275 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4086 newMap!16) (mask!6466 newMap!16)) e!60115)))

(declare-fun b!92202 () Bool)

(declare-fun e!60114 () Bool)

(declare-fun call!9078 () Bool)

(assert (=> b!92202 (= e!60114 call!9078)))

(declare-fun b!92203 () Bool)

(declare-fun e!60113 () Bool)

(assert (=> b!92203 (= e!60113 call!9078)))

(declare-fun bm!9075 () Bool)

(assert (=> bm!9075 (= call!9078 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4086 newMap!16) (mask!6466 newMap!16)))))

(declare-fun b!92204 () Bool)

(assert (=> b!92204 (= e!60115 e!60113)))

(declare-fun c!15367 () Bool)

(assert (=> b!92204 (= c!15367 (validKeyInArray!0 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!92205 () Bool)

(assert (=> b!92205 (= e!60113 e!60114)))

(declare-fun lt!45057 () (_ BitVec 64))

(assert (=> b!92205 (= lt!45057 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!45058 () Unit!2738)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4134 (_ BitVec 64) (_ BitVec 32)) Unit!2738)

(assert (=> b!92205 (= lt!45058 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4086 newMap!16) lt!45057 #b00000000000000000000000000000000))))

(assert (=> b!92205 (arrayContainsKey!0 (_keys!4086 newMap!16) lt!45057 #b00000000000000000000000000000000)))

(declare-fun lt!45059 () Unit!2738)

(assert (=> b!92205 (= lt!45059 lt!45058)))

(declare-fun res!46876 () Bool)

(assert (=> b!92205 (= res!46876 (= (seekEntryOrOpen!0 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000) (_keys!4086 newMap!16) (mask!6466 newMap!16)) (Found!258 #b00000000000000000000000000000000)))))

(assert (=> b!92205 (=> (not res!46876) (not e!60114))))

(assert (= (and d!24275 (not res!46875)) b!92204))

(assert (= (and b!92204 c!15367) b!92205))

(assert (= (and b!92204 (not c!15367)) b!92203))

(assert (= (and b!92205 res!46876) b!92202))

(assert (= (or b!92202 b!92203) bm!9075))

(declare-fun m!99071 () Bool)

(assert (=> bm!9075 m!99071))

(assert (=> b!92204 m!98409))

(assert (=> b!92204 m!98409))

(assert (=> b!92204 m!98447))

(assert (=> b!92205 m!98409))

(declare-fun m!99073 () Bool)

(assert (=> b!92205 m!99073))

(declare-fun m!99075 () Bool)

(assert (=> b!92205 m!99075))

(assert (=> b!92205 m!98409))

(declare-fun m!99077 () Bool)

(assert (=> b!92205 m!99077))

(assert (=> b!91519 d!24275))

(declare-fun d!24277 () Bool)

(declare-fun e!60116 () Bool)

(assert (=> d!24277 e!60116))

(declare-fun res!46877 () Bool)

(assert (=> d!24277 (=> res!46877 e!60116)))

(declare-fun lt!45060 () Bool)

(assert (=> d!24277 (= res!46877 (not lt!45060))))

(declare-fun lt!45063 () Bool)

(assert (=> d!24277 (= lt!45060 lt!45063)))

(declare-fun lt!45061 () Unit!2738)

(declare-fun e!60117 () Unit!2738)

(assert (=> d!24277 (= lt!45061 e!60117)))

(declare-fun c!15368 () Bool)

(assert (=> d!24277 (= c!15368 lt!45063)))

(assert (=> d!24277 (= lt!45063 (containsKey!148 (toList!774 call!9022) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (=> d!24277 (= (contains!784 call!9022 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) lt!45060)))

(declare-fun b!92206 () Bool)

(declare-fun lt!45062 () Unit!2738)

(assert (=> b!92206 (= e!60117 lt!45062)))

(assert (=> b!92206 (= lt!45062 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 call!9022) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (=> b!92206 (isDefined!98 (getValueByKey!144 (toList!774 call!9022) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun b!92207 () Bool)

(declare-fun Unit!2766 () Unit!2738)

(assert (=> b!92207 (= e!60117 Unit!2766)))

(declare-fun b!92208 () Bool)

(assert (=> b!92208 (= e!60116 (isDefined!98 (getValueByKey!144 (toList!774 call!9022) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355))))))

(assert (= (and d!24277 c!15368) b!92206))

(assert (= (and d!24277 (not c!15368)) b!92207))

(assert (= (and d!24277 (not res!46877)) b!92208))

(assert (=> d!24277 m!97909))

(declare-fun m!99079 () Bool)

(assert (=> d!24277 m!99079))

(assert (=> b!92206 m!97909))

(declare-fun m!99081 () Bool)

(assert (=> b!92206 m!99081))

(assert (=> b!92206 m!97909))

(declare-fun m!99083 () Bool)

(assert (=> b!92206 m!99083))

(assert (=> b!92206 m!99083))

(declare-fun m!99085 () Bool)

(assert (=> b!92206 m!99085))

(assert (=> b!92208 m!97909))

(assert (=> b!92208 m!99083))

(assert (=> b!92208 m!99083))

(assert (=> b!92208 m!99085))

(assert (=> b!91784 d!24277))

(declare-fun d!24279 () Bool)

(declare-fun e!60118 () Bool)

(assert (=> d!24279 e!60118))

(declare-fun res!46878 () Bool)

(assert (=> d!24279 (=> res!46878 e!60118)))

(declare-fun lt!45064 () Bool)

(assert (=> d!24279 (= res!46878 (not lt!45064))))

(declare-fun lt!45067 () Bool)

(assert (=> d!24279 (= lt!45064 lt!45067)))

(declare-fun lt!45065 () Unit!2738)

(declare-fun e!60119 () Unit!2738)

(assert (=> d!24279 (= lt!45065 e!60119)))

(declare-fun c!15369 () Bool)

(assert (=> d!24279 (= c!15369 lt!45067)))

(assert (=> d!24279 (= lt!45067 (containsKey!148 (toList!774 lt!44703) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!24279 (= (contains!784 lt!44703 #b0000000000000000000000000000000000000000000000000000000000000000) lt!45064)))

(declare-fun b!92209 () Bool)

(declare-fun lt!45066 () Unit!2738)

(assert (=> b!92209 (= e!60119 lt!45066)))

(assert (=> b!92209 (= lt!45066 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 lt!44703) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!92209 (isDefined!98 (getValueByKey!144 (toList!774 lt!44703) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!92210 () Bool)

(declare-fun Unit!2767 () Unit!2738)

(assert (=> b!92210 (= e!60119 Unit!2767)))

(declare-fun b!92211 () Bool)

(assert (=> b!92211 (= e!60118 (isDefined!98 (getValueByKey!144 (toList!774 lt!44703) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!24279 c!15369) b!92209))

(assert (= (and d!24279 (not c!15369)) b!92210))

(assert (= (and d!24279 (not res!46878)) b!92211))

(declare-fun m!99087 () Bool)

(assert (=> d!24279 m!99087))

(declare-fun m!99089 () Bool)

(assert (=> b!92209 m!99089))

(assert (=> b!92209 m!98651))

(assert (=> b!92209 m!98651))

(declare-fun m!99091 () Bool)

(assert (=> b!92209 m!99091))

(assert (=> b!92211 m!98651))

(assert (=> b!92211 m!98651))

(assert (=> b!92211 m!99091))

(assert (=> bm!8945 d!24279))

(declare-fun d!24281 () Bool)

(assert (=> d!24281 (= (validKeyInArray!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!91575 d!24281))

(declare-fun d!24283 () Bool)

(assert (=> d!24283 (isDefined!98 (getValueByKey!144 (toList!774 lt!44515) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun lt!45070 () Unit!2738)

(declare-fun choose!558 (List!1581 (_ BitVec 64)) Unit!2738)

(assert (=> d!24283 (= lt!45070 (choose!558 (toList!774 lt!44515) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun e!60122 () Bool)

(assert (=> d!24283 e!60122))

(declare-fun res!46881 () Bool)

(assert (=> d!24283 (=> (not res!46881) (not e!60122))))

(assert (=> d!24283 (= res!46881 (isStrictlySorted!296 (toList!774 lt!44515)))))

(assert (=> d!24283 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 lt!44515) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) lt!45070)))

(declare-fun b!92214 () Bool)

(assert (=> b!92214 (= e!60122 (containsKey!148 (toList!774 lt!44515) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (= (and d!24283 res!46881) b!92214))

(assert (=> d!24283 m!97909))

(assert (=> d!24283 m!98305))

(assert (=> d!24283 m!98305))

(assert (=> d!24283 m!98307))

(assert (=> d!24283 m!97909))

(declare-fun m!99093 () Bool)

(assert (=> d!24283 m!99093))

(declare-fun m!99095 () Bool)

(assert (=> d!24283 m!99095))

(assert (=> b!92214 m!97909))

(assert (=> b!92214 m!98301))

(assert (=> b!91674 d!24283))

(assert (=> b!91674 d!24143))

(assert (=> b!91674 d!24145))

(declare-fun d!24285 () Bool)

(declare-fun lt!45071 () Bool)

(assert (=> d!24285 (= lt!45071 (select (content!94 (toList!774 lt!44653)) lt!44507))))

(declare-fun e!60123 () Bool)

(assert (=> d!24285 (= lt!45071 e!60123)))

(declare-fun res!46882 () Bool)

(assert (=> d!24285 (=> (not res!46882) (not e!60123))))

(assert (=> d!24285 (= res!46882 ((_ is Cons!1577) (toList!774 lt!44653)))))

(assert (=> d!24285 (= (contains!786 (toList!774 lt!44653) lt!44507) lt!45071)))

(declare-fun b!92215 () Bool)

(declare-fun e!60124 () Bool)

(assert (=> b!92215 (= e!60123 e!60124)))

(declare-fun res!46883 () Bool)

(assert (=> b!92215 (=> res!46883 e!60124)))

(assert (=> b!92215 (= res!46883 (= (h!2169 (toList!774 lt!44653)) lt!44507))))

(declare-fun b!92216 () Bool)

(assert (=> b!92216 (= e!60124 (contains!786 (t!5419 (toList!774 lt!44653)) lt!44507))))

(assert (= (and d!24285 res!46882) b!92215))

(assert (= (and b!92215 (not res!46883)) b!92216))

(declare-fun m!99097 () Bool)

(assert (=> d!24285 m!99097))

(declare-fun m!99099 () Bool)

(assert (=> d!24285 m!99099))

(declare-fun m!99101 () Bool)

(assert (=> b!92216 m!99101))

(assert (=> b!91598 d!24285))

(declare-fun d!24287 () Bool)

(assert (=> d!24287 (= (+!129 (getCurrentListMap!456 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 lt!44521)) (getCurrentListMap!456 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) lt!44800 lt!44521 (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!45074 () Unit!2738)

(declare-fun choose!559 (array!4134 array!4136 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3091 V!3091 V!3091 Int) Unit!2738)

(assert (=> d!24287 (= lt!45074 (choose!559 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) lt!44800 (zeroValue!2294 newMap!16) lt!44521 (minValue!2294 newMap!16) (defaultEntry!2406 newMap!16)))))

(assert (=> d!24287 (validMask!0 (mask!6466 newMap!16))))

(assert (=> d!24287 (= (lemmaChangeZeroKeyThenAddPairToListMap!36 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) lt!44800 (zeroValue!2294 newMap!16) lt!44521 (minValue!2294 newMap!16) (defaultEntry!2406 newMap!16)) lt!45074)))

(declare-fun bs!3808 () Bool)

(assert (= bs!3808 d!24287))

(assert (=> bs!3808 m!98055))

(declare-fun m!99103 () Bool)

(assert (=> bs!3808 m!99103))

(assert (=> bs!3808 m!98055))

(declare-fun m!99105 () Bool)

(assert (=> bs!3808 m!99105))

(declare-fun m!99107 () Bool)

(assert (=> bs!3808 m!99107))

(assert (=> bs!3808 m!98389))

(assert (=> b!91763 d!24287))

(declare-fun d!24289 () Bool)

(declare-fun res!46884 () Bool)

(declare-fun e!60127 () Bool)

(assert (=> d!24289 (=> res!46884 e!60127)))

(assert (=> d!24289 (= res!46884 (bvsge #b00000000000000000000000000000000 (size!2213 (_keys!4086 (_2!1156 lt!44506)))))))

(assert (=> d!24289 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4086 (_2!1156 lt!44506)) (mask!6466 (_2!1156 lt!44506))) e!60127)))

(declare-fun b!92217 () Bool)

(declare-fun e!60126 () Bool)

(declare-fun call!9079 () Bool)

(assert (=> b!92217 (= e!60126 call!9079)))

(declare-fun b!92218 () Bool)

(declare-fun e!60125 () Bool)

(assert (=> b!92218 (= e!60125 call!9079)))

(declare-fun bm!9076 () Bool)

(assert (=> bm!9076 (= call!9079 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4086 (_2!1156 lt!44506)) (mask!6466 (_2!1156 lt!44506))))))

(declare-fun b!92219 () Bool)

(assert (=> b!92219 (= e!60127 e!60125)))

(declare-fun c!15370 () Bool)

(assert (=> b!92219 (= c!15370 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (_2!1156 lt!44506))) #b00000000000000000000000000000000)))))

(declare-fun b!92220 () Bool)

(assert (=> b!92220 (= e!60125 e!60126)))

(declare-fun lt!45075 () (_ BitVec 64))

(assert (=> b!92220 (= lt!45075 (select (arr!1966 (_keys!4086 (_2!1156 lt!44506))) #b00000000000000000000000000000000))))

(declare-fun lt!45076 () Unit!2738)

(assert (=> b!92220 (= lt!45076 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4086 (_2!1156 lt!44506)) lt!45075 #b00000000000000000000000000000000))))

(assert (=> b!92220 (arrayContainsKey!0 (_keys!4086 (_2!1156 lt!44506)) lt!45075 #b00000000000000000000000000000000)))

(declare-fun lt!45077 () Unit!2738)

(assert (=> b!92220 (= lt!45077 lt!45076)))

(declare-fun res!46885 () Bool)

(assert (=> b!92220 (= res!46885 (= (seekEntryOrOpen!0 (select (arr!1966 (_keys!4086 (_2!1156 lt!44506))) #b00000000000000000000000000000000) (_keys!4086 (_2!1156 lt!44506)) (mask!6466 (_2!1156 lt!44506))) (Found!258 #b00000000000000000000000000000000)))))

(assert (=> b!92220 (=> (not res!46885) (not e!60126))))

(assert (= (and d!24289 (not res!46884)) b!92219))

(assert (= (and b!92219 c!15370) b!92220))

(assert (= (and b!92219 (not c!15370)) b!92218))

(assert (= (and b!92220 res!46885) b!92217))

(assert (= (or b!92217 b!92218) bm!9076))

(declare-fun m!99109 () Bool)

(assert (=> bm!9076 m!99109))

(assert (=> b!92219 m!98815))

(assert (=> b!92219 m!98815))

(assert (=> b!92219 m!98853))

(assert (=> b!92220 m!98815))

(declare-fun m!99111 () Bool)

(assert (=> b!92220 m!99111))

(declare-fun m!99113 () Bool)

(assert (=> b!92220 m!99113))

(assert (=> b!92220 m!98815))

(declare-fun m!99115 () Bool)

(assert (=> b!92220 m!99115))

(assert (=> b!91591 d!24289))

(assert (=> b!91563 d!24281))

(declare-fun d!24291 () Bool)

(declare-fun lt!45078 () Bool)

(assert (=> d!24291 (= lt!45078 (select (content!94 (toList!774 lt!44708)) lt!44520))))

(declare-fun e!60128 () Bool)

(assert (=> d!24291 (= lt!45078 e!60128)))

(declare-fun res!46886 () Bool)

(assert (=> d!24291 (=> (not res!46886) (not e!60128))))

(assert (=> d!24291 (= res!46886 ((_ is Cons!1577) (toList!774 lt!44708)))))

(assert (=> d!24291 (= (contains!786 (toList!774 lt!44708) lt!44520) lt!45078)))

(declare-fun b!92221 () Bool)

(declare-fun e!60129 () Bool)

(assert (=> b!92221 (= e!60128 e!60129)))

(declare-fun res!46887 () Bool)

(assert (=> b!92221 (=> res!46887 e!60129)))

(assert (=> b!92221 (= res!46887 (= (h!2169 (toList!774 lt!44708)) lt!44520))))

(declare-fun b!92222 () Bool)

(assert (=> b!92222 (= e!60129 (contains!786 (t!5419 (toList!774 lt!44708)) lt!44520))))

(assert (= (and d!24291 res!46886) b!92221))

(assert (= (and b!92221 (not res!46887)) b!92222))

(declare-fun m!99117 () Bool)

(assert (=> d!24291 m!99117))

(declare-fun m!99119 () Bool)

(assert (=> d!24291 m!99119))

(declare-fun m!99121 () Bool)

(assert (=> b!92222 m!99121))

(assert (=> b!91661 d!24291))

(declare-fun d!24293 () Bool)

(declare-fun e!60130 () Bool)

(assert (=> d!24293 e!60130))

(declare-fun res!46888 () Bool)

(assert (=> d!24293 (=> (not res!46888) (not e!60130))))

(declare-fun lt!45082 () ListLongMap!1517)

(assert (=> d!24293 (= res!46888 (contains!784 lt!45082 (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(declare-fun lt!45081 () List!1581)

(assert (=> d!24293 (= lt!45082 (ListLongMap!1518 lt!45081))))

(declare-fun lt!45079 () Unit!2738)

(declare-fun lt!45080 () Unit!2738)

(assert (=> d!24293 (= lt!45079 lt!45080)))

(assert (=> d!24293 (= (getValueByKey!144 lt!45081 (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24293 (= lt!45080 (lemmaContainsTupThenGetReturnValue!63 lt!45081 (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24293 (= lt!45081 (insertStrictlySorted!65 (toList!774 call!8938) (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24293 (= (+!129 call!8938 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!45082)))

(declare-fun b!92223 () Bool)

(declare-fun res!46889 () Bool)

(assert (=> b!92223 (=> (not res!46889) (not e!60130))))

(assert (=> b!92223 (= res!46889 (= (getValueByKey!144 (toList!774 lt!45082) (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(declare-fun b!92224 () Bool)

(assert (=> b!92224 (= e!60130 (contains!786 (toList!774 lt!45082) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))

(assert (= (and d!24293 res!46888) b!92223))

(assert (= (and b!92223 res!46889) b!92224))

(declare-fun m!99123 () Bool)

(assert (=> d!24293 m!99123))

(declare-fun m!99125 () Bool)

(assert (=> d!24293 m!99125))

(declare-fun m!99127 () Bool)

(assert (=> d!24293 m!99127))

(declare-fun m!99129 () Bool)

(assert (=> d!24293 m!99129))

(declare-fun m!99131 () Bool)

(assert (=> b!92223 m!99131))

(declare-fun m!99133 () Bool)

(assert (=> b!92224 m!99133))

(assert (=> b!91582 d!24293))

(declare-fun d!24295 () Bool)

(declare-fun e!60131 () Bool)

(assert (=> d!24295 e!60131))

(declare-fun res!46890 () Bool)

(assert (=> d!24295 (=> res!46890 e!60131)))

(declare-fun lt!45083 () Bool)

(assert (=> d!24295 (= res!46890 (not lt!45083))))

(declare-fun lt!45086 () Bool)

(assert (=> d!24295 (= lt!45083 lt!45086)))

(declare-fun lt!45084 () Unit!2738)

(declare-fun e!60132 () Unit!2738)

(assert (=> d!24295 (= lt!45084 e!60132)))

(declare-fun c!15371 () Bool)

(assert (=> d!24295 (= c!15371 lt!45086)))

(assert (=> d!24295 (= lt!45086 (containsKey!148 (toList!774 lt!44716) (_1!1155 lt!44511)))))

(assert (=> d!24295 (= (contains!784 lt!44716 (_1!1155 lt!44511)) lt!45083)))

(declare-fun b!92225 () Bool)

(declare-fun lt!45085 () Unit!2738)

(assert (=> b!92225 (= e!60132 lt!45085)))

(assert (=> b!92225 (= lt!45085 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 lt!44716) (_1!1155 lt!44511)))))

(assert (=> b!92225 (isDefined!98 (getValueByKey!144 (toList!774 lt!44716) (_1!1155 lt!44511)))))

(declare-fun b!92226 () Bool)

(declare-fun Unit!2768 () Unit!2738)

(assert (=> b!92226 (= e!60132 Unit!2768)))

(declare-fun b!92227 () Bool)

(assert (=> b!92227 (= e!60131 (isDefined!98 (getValueByKey!144 (toList!774 lt!44716) (_1!1155 lt!44511))))))

(assert (= (and d!24295 c!15371) b!92225))

(assert (= (and d!24295 (not c!15371)) b!92226))

(assert (= (and d!24295 (not res!46890)) b!92227))

(declare-fun m!99135 () Bool)

(assert (=> d!24295 m!99135))

(declare-fun m!99137 () Bool)

(assert (=> b!92225 m!99137))

(assert (=> b!92225 m!98265))

(assert (=> b!92225 m!98265))

(declare-fun m!99139 () Bool)

(assert (=> b!92225 m!99139))

(assert (=> b!92227 m!98265))

(assert (=> b!92227 m!98265))

(assert (=> b!92227 m!99139))

(assert (=> d!24081 d!24295))

(declare-fun b!92231 () Bool)

(declare-fun e!60134 () Option!150)

(assert (=> b!92231 (= e!60134 None!148)))

(declare-fun b!92229 () Bool)

(declare-fun e!60133 () Option!150)

(assert (=> b!92229 (= e!60133 e!60134)))

(declare-fun c!15373 () Bool)

(assert (=> b!92229 (= c!15373 (and ((_ is Cons!1577) lt!44715) (not (= (_1!1155 (h!2169 lt!44715)) (_1!1155 lt!44511)))))))

(declare-fun d!24297 () Bool)

(declare-fun c!15372 () Bool)

(assert (=> d!24297 (= c!15372 (and ((_ is Cons!1577) lt!44715) (= (_1!1155 (h!2169 lt!44715)) (_1!1155 lt!44511))))))

(assert (=> d!24297 (= (getValueByKey!144 lt!44715 (_1!1155 lt!44511)) e!60133)))

(declare-fun b!92228 () Bool)

(assert (=> b!92228 (= e!60133 (Some!149 (_2!1155 (h!2169 lt!44715))))))

(declare-fun b!92230 () Bool)

(assert (=> b!92230 (= e!60134 (getValueByKey!144 (t!5419 lt!44715) (_1!1155 lt!44511)))))

(assert (= (and d!24297 c!15372) b!92228))

(assert (= (and d!24297 (not c!15372)) b!92229))

(assert (= (and b!92229 c!15373) b!92230))

(assert (= (and b!92229 (not c!15373)) b!92231))

(declare-fun m!99141 () Bool)

(assert (=> b!92230 m!99141))

(assert (=> d!24081 d!24297))

(declare-fun d!24299 () Bool)

(assert (=> d!24299 (= (getValueByKey!144 lt!44715 (_1!1155 lt!44511)) (Some!149 (_2!1155 lt!44511)))))

(declare-fun lt!45087 () Unit!2738)

(assert (=> d!24299 (= lt!45087 (choose!553 lt!44715 (_1!1155 lt!44511) (_2!1155 lt!44511)))))

(declare-fun e!60135 () Bool)

(assert (=> d!24299 e!60135))

(declare-fun res!46891 () Bool)

(assert (=> d!24299 (=> (not res!46891) (not e!60135))))

(assert (=> d!24299 (= res!46891 (isStrictlySorted!296 lt!44715))))

(assert (=> d!24299 (= (lemmaContainsTupThenGetReturnValue!63 lt!44715 (_1!1155 lt!44511) (_2!1155 lt!44511)) lt!45087)))

(declare-fun b!92232 () Bool)

(declare-fun res!46892 () Bool)

(assert (=> b!92232 (=> (not res!46892) (not e!60135))))

(assert (=> b!92232 (= res!46892 (containsKey!148 lt!44715 (_1!1155 lt!44511)))))

(declare-fun b!92233 () Bool)

(assert (=> b!92233 (= e!60135 (contains!786 lt!44715 (tuple2!2291 (_1!1155 lt!44511) (_2!1155 lt!44511))))))

(assert (= (and d!24299 res!46891) b!92232))

(assert (= (and b!92232 res!46892) b!92233))

(assert (=> d!24299 m!98259))

(declare-fun m!99143 () Bool)

(assert (=> d!24299 m!99143))

(declare-fun m!99145 () Bool)

(assert (=> d!24299 m!99145))

(declare-fun m!99147 () Bool)

(assert (=> b!92232 m!99147))

(declare-fun m!99149 () Bool)

(assert (=> b!92233 m!99149))

(assert (=> d!24081 d!24299))

(declare-fun c!15376 () Bool)

(declare-fun b!92234 () Bool)

(declare-fun c!15375 () Bool)

(declare-fun e!60139 () List!1581)

(assert (=> b!92234 (= e!60139 (ite c!15375 (t!5419 (toList!774 lt!44510)) (ite c!15376 (Cons!1577 (h!2169 (toList!774 lt!44510)) (t!5419 (toList!774 lt!44510))) Nil!1578)))))

(declare-fun b!92235 () Bool)

(declare-fun e!60138 () List!1581)

(declare-fun call!9080 () List!1581)

(assert (=> b!92235 (= e!60138 call!9080)))

(declare-fun bm!9077 () Bool)

(declare-fun call!9081 () List!1581)

(declare-fun call!9082 () List!1581)

(assert (=> bm!9077 (= call!9081 call!9082)))

(declare-fun c!15374 () Bool)

(declare-fun bm!9078 () Bool)

(assert (=> bm!9078 (= call!9082 ($colon$colon!74 e!60139 (ite c!15374 (h!2169 (toList!774 lt!44510)) (tuple2!2291 (_1!1155 lt!44511) (_2!1155 lt!44511)))))))

(declare-fun c!15377 () Bool)

(assert (=> bm!9078 (= c!15377 c!15374)))

(declare-fun b!92236 () Bool)

(declare-fun e!60136 () List!1581)

(assert (=> b!92236 (= e!60136 call!9082)))

(declare-fun b!92237 () Bool)

(assert (=> b!92237 (= e!60138 call!9080)))

(declare-fun b!92238 () Bool)

(declare-fun e!60140 () List!1581)

(assert (=> b!92238 (= e!60140 call!9081)))

(declare-fun b!92239 () Bool)

(assert (=> b!92239 (= e!60139 (insertStrictlySorted!65 (t!5419 (toList!774 lt!44510)) (_1!1155 lt!44511) (_2!1155 lt!44511)))))

(declare-fun b!92240 () Bool)

(assert (=> b!92240 (= c!15376 (and ((_ is Cons!1577) (toList!774 lt!44510)) (bvsgt (_1!1155 (h!2169 (toList!774 lt!44510))) (_1!1155 lt!44511))))))

(assert (=> b!92240 (= e!60140 e!60138)))

(declare-fun bm!9079 () Bool)

(assert (=> bm!9079 (= call!9080 call!9081)))

(declare-fun b!92241 () Bool)

(declare-fun res!46894 () Bool)

(declare-fun e!60137 () Bool)

(assert (=> b!92241 (=> (not res!46894) (not e!60137))))

(declare-fun lt!45088 () List!1581)

(assert (=> b!92241 (= res!46894 (containsKey!148 lt!45088 (_1!1155 lt!44511)))))

(declare-fun b!92242 () Bool)

(assert (=> b!92242 (= e!60136 e!60140)))

(assert (=> b!92242 (= c!15375 (and ((_ is Cons!1577) (toList!774 lt!44510)) (= (_1!1155 (h!2169 (toList!774 lt!44510))) (_1!1155 lt!44511))))))

(declare-fun b!92243 () Bool)

(assert (=> b!92243 (= e!60137 (contains!786 lt!45088 (tuple2!2291 (_1!1155 lt!44511) (_2!1155 lt!44511))))))

(declare-fun d!24301 () Bool)

(assert (=> d!24301 e!60137))

(declare-fun res!46893 () Bool)

(assert (=> d!24301 (=> (not res!46893) (not e!60137))))

(assert (=> d!24301 (= res!46893 (isStrictlySorted!296 lt!45088))))

(assert (=> d!24301 (= lt!45088 e!60136)))

(assert (=> d!24301 (= c!15374 (and ((_ is Cons!1577) (toList!774 lt!44510)) (bvslt (_1!1155 (h!2169 (toList!774 lt!44510))) (_1!1155 lt!44511))))))

(assert (=> d!24301 (isStrictlySorted!296 (toList!774 lt!44510))))

(assert (=> d!24301 (= (insertStrictlySorted!65 (toList!774 lt!44510) (_1!1155 lt!44511) (_2!1155 lt!44511)) lt!45088)))

(assert (= (and d!24301 c!15374) b!92236))

(assert (= (and d!24301 (not c!15374)) b!92242))

(assert (= (and b!92242 c!15375) b!92238))

(assert (= (and b!92242 (not c!15375)) b!92240))

(assert (= (and b!92240 c!15376) b!92235))

(assert (= (and b!92240 (not c!15376)) b!92237))

(assert (= (or b!92235 b!92237) bm!9079))

(assert (= (or b!92238 bm!9079) bm!9077))

(assert (= (or b!92236 bm!9077) bm!9078))

(assert (= (and bm!9078 c!15377) b!92239))

(assert (= (and bm!9078 (not c!15377)) b!92234))

(assert (= (and d!24301 res!46893) b!92241))

(assert (= (and b!92241 res!46894) b!92243))

(declare-fun m!99151 () Bool)

(assert (=> b!92241 m!99151))

(declare-fun m!99153 () Bool)

(assert (=> b!92243 m!99153))

(declare-fun m!99155 () Bool)

(assert (=> b!92239 m!99155))

(declare-fun m!99157 () Bool)

(assert (=> bm!9078 m!99157))

(declare-fun m!99159 () Bool)

(assert (=> d!24301 m!99159))

(declare-fun m!99161 () Bool)

(assert (=> d!24301 m!99161))

(assert (=> d!24081 d!24301))

(assert (=> b!91631 d!24281))

(declare-fun d!24303 () Bool)

(declare-fun e!60141 () Bool)

(assert (=> d!24303 e!60141))

(declare-fun res!46895 () Bool)

(assert (=> d!24303 (=> (not res!46895) (not e!60141))))

(declare-fun lt!45092 () ListLongMap!1517)

(assert (=> d!24303 (= res!46895 (contains!784 lt!45092 (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(declare-fun lt!45091 () List!1581)

(assert (=> d!24303 (= lt!45092 (ListLongMap!1518 lt!45091))))

(declare-fun lt!45089 () Unit!2738)

(declare-fun lt!45090 () Unit!2738)

(assert (=> d!24303 (= lt!45089 lt!45090)))

(assert (=> d!24303 (= (getValueByKey!144 lt!45091 (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))) (Some!149 (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(assert (=> d!24303 (= lt!45090 (lemmaContainsTupThenGetReturnValue!63 lt!45091 (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(assert (=> d!24303 (= lt!45091 (insertStrictlySorted!65 (toList!774 (+!129 lt!44504 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(assert (=> d!24303 (= (+!129 (+!129 lt!44504 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) lt!45092)))

(declare-fun b!92244 () Bool)

(declare-fun res!46896 () Bool)

(assert (=> b!92244 (=> (not res!46896) (not e!60141))))

(assert (=> b!92244 (= res!46896 (= (getValueByKey!144 (toList!774 lt!45092) (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))) (Some!149 (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))))))

(declare-fun b!92245 () Bool)

(assert (=> b!92245 (= e!60141 (contains!786 (toList!774 lt!45092) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))))

(assert (= (and d!24303 res!46895) b!92244))

(assert (= (and b!92244 res!46896) b!92245))

(declare-fun m!99163 () Bool)

(assert (=> d!24303 m!99163))

(declare-fun m!99165 () Bool)

(assert (=> d!24303 m!99165))

(declare-fun m!99167 () Bool)

(assert (=> d!24303 m!99167))

(declare-fun m!99169 () Bool)

(assert (=> d!24303 m!99169))

(declare-fun m!99171 () Bool)

(assert (=> b!92244 m!99171))

(declare-fun m!99173 () Bool)

(assert (=> b!92245 m!99173))

(assert (=> d!24085 d!24303))

(declare-fun d!24305 () Bool)

(declare-fun e!60142 () Bool)

(assert (=> d!24305 e!60142))

(declare-fun res!46897 () Bool)

(assert (=> d!24305 (=> (not res!46897) (not e!60142))))

(declare-fun lt!45096 () ListLongMap!1517)

(assert (=> d!24305 (= res!46897 (contains!784 lt!45096 (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(declare-fun lt!45095 () List!1581)

(assert (=> d!24305 (= lt!45096 (ListLongMap!1518 lt!45095))))

(declare-fun lt!45093 () Unit!2738)

(declare-fun lt!45094 () Unit!2738)

(assert (=> d!24305 (= lt!45093 lt!45094)))

(assert (=> d!24305 (= (getValueByKey!144 lt!45095 (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))) (Some!149 (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(assert (=> d!24305 (= lt!45094 (lemmaContainsTupThenGetReturnValue!63 lt!45095 (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(assert (=> d!24305 (= lt!45095 (insertStrictlySorted!65 (toList!774 lt!44504) (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(assert (=> d!24305 (= (+!129 lt!44504 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) lt!45096)))

(declare-fun b!92246 () Bool)

(declare-fun res!46898 () Bool)

(assert (=> b!92246 (=> (not res!46898) (not e!60142))))

(assert (=> b!92246 (= res!46898 (= (getValueByKey!144 (toList!774 lt!45096) (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))) (Some!149 (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))))))

(declare-fun b!92247 () Bool)

(assert (=> b!92247 (= e!60142 (contains!786 (toList!774 lt!45096) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))))

(assert (= (and d!24305 res!46897) b!92246))

(assert (= (and b!92246 res!46898) b!92247))

(declare-fun m!99175 () Bool)

(assert (=> d!24305 m!99175))

(declare-fun m!99177 () Bool)

(assert (=> d!24305 m!99177))

(declare-fun m!99179 () Bool)

(assert (=> d!24305 m!99179))

(declare-fun m!99181 () Bool)

(assert (=> d!24305 m!99181))

(declare-fun m!99183 () Bool)

(assert (=> b!92246 m!99183))

(declare-fun m!99185 () Bool)

(assert (=> b!92247 m!99185))

(assert (=> d!24085 d!24305))

(declare-fun d!24307 () Bool)

(declare-fun e!60143 () Bool)

(assert (=> d!24307 e!60143))

(declare-fun res!46899 () Bool)

(assert (=> d!24307 (=> (not res!46899) (not e!60143))))

(declare-fun lt!45100 () ListLongMap!1517)

(assert (=> d!24307 (= res!46899 (contains!784 lt!45100 (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(declare-fun lt!45099 () List!1581)

(assert (=> d!24307 (= lt!45100 (ListLongMap!1518 lt!45099))))

(declare-fun lt!45097 () Unit!2738)

(declare-fun lt!45098 () Unit!2738)

(assert (=> d!24307 (= lt!45097 lt!45098)))

(assert (=> d!24307 (= (getValueByKey!144 lt!45099 (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24307 (= lt!45098 (lemmaContainsTupThenGetReturnValue!63 lt!45099 (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24307 (= lt!45099 (insertStrictlySorted!65 (toList!774 lt!44504) (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24307 (= (+!129 lt!44504 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!45100)))

(declare-fun b!92248 () Bool)

(declare-fun res!46900 () Bool)

(assert (=> b!92248 (=> (not res!46900) (not e!60143))))

(assert (=> b!92248 (= res!46900 (= (getValueByKey!144 (toList!774 lt!45100) (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(declare-fun b!92249 () Bool)

(assert (=> b!92249 (= e!60143 (contains!786 (toList!774 lt!45100) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))

(assert (= (and d!24307 res!46899) b!92248))

(assert (= (and b!92248 res!46900) b!92249))

(declare-fun m!99187 () Bool)

(assert (=> d!24307 m!99187))

(declare-fun m!99189 () Bool)

(assert (=> d!24307 m!99189))

(declare-fun m!99191 () Bool)

(assert (=> d!24307 m!99191))

(declare-fun m!99193 () Bool)

(assert (=> d!24307 m!99193))

(declare-fun m!99195 () Bool)

(assert (=> b!92248 m!99195))

(declare-fun m!99197 () Bool)

(assert (=> b!92249 m!99197))

(assert (=> d!24085 d!24307))

(declare-fun d!24309 () Bool)

(assert (=> d!24309 (= (+!129 (+!129 lt!44504 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (+!129 (+!129 lt!44504 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)))))

(assert (=> d!24309 true))

(declare-fun _$28!155 () Unit!2738)

(assert (=> d!24309 (= (choose!551 lt!44504 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))) _$28!155)))

(declare-fun bs!3809 () Bool)

(assert (= bs!3809 d!24309))

(assert (=> bs!3809 m!98281))

(assert (=> bs!3809 m!98281))

(assert (=> bs!3809 m!98289))

(assert (=> bs!3809 m!98283))

(assert (=> bs!3809 m!98283))

(assert (=> bs!3809 m!98287))

(assert (=> d!24085 d!24309))

(declare-fun d!24311 () Bool)

(declare-fun e!60144 () Bool)

(assert (=> d!24311 e!60144))

(declare-fun res!46901 () Bool)

(assert (=> d!24311 (=> (not res!46901) (not e!60144))))

(declare-fun lt!45104 () ListLongMap!1517)

(assert (=> d!24311 (= res!46901 (contains!784 lt!45104 (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(declare-fun lt!45103 () List!1581)

(assert (=> d!24311 (= lt!45104 (ListLongMap!1518 lt!45103))))

(declare-fun lt!45101 () Unit!2738)

(declare-fun lt!45102 () Unit!2738)

(assert (=> d!24311 (= lt!45101 lt!45102)))

(assert (=> d!24311 (= (getValueByKey!144 lt!45103 (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24311 (= lt!45102 (lemmaContainsTupThenGetReturnValue!63 lt!45103 (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24311 (= lt!45103 (insertStrictlySorted!65 (toList!774 (+!129 lt!44504 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))) (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24311 (= (+!129 (+!129 lt!44504 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!45104)))

(declare-fun b!92250 () Bool)

(declare-fun res!46902 () Bool)

(assert (=> b!92250 (=> (not res!46902) (not e!60144))))

(assert (=> b!92250 (= res!46902 (= (getValueByKey!144 (toList!774 lt!45104) (_1!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(declare-fun b!92251 () Bool)

(assert (=> b!92251 (= e!60144 (contains!786 (toList!774 lt!45104) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))

(assert (= (and d!24311 res!46901) b!92250))

(assert (= (and b!92250 res!46902) b!92251))

(declare-fun m!99199 () Bool)

(assert (=> d!24311 m!99199))

(declare-fun m!99201 () Bool)

(assert (=> d!24311 m!99201))

(declare-fun m!99203 () Bool)

(assert (=> d!24311 m!99203))

(declare-fun m!99205 () Bool)

(assert (=> d!24311 m!99205))

(declare-fun m!99207 () Bool)

(assert (=> b!92250 m!99207))

(declare-fun m!99209 () Bool)

(assert (=> b!92251 m!99209))

(assert (=> d!24085 d!24311))

(declare-fun d!24313 () Bool)

(declare-fun e!60147 () Bool)

(assert (=> d!24313 e!60147))

(declare-fun res!46905 () Bool)

(assert (=> d!24313 (=> (not res!46905) (not e!60147))))

(assert (=> d!24313 (= res!46905 (and (bvsge (index!3173 lt!44816) #b00000000000000000000000000000000) (bvslt (index!3173 lt!44816) (size!2213 (_keys!4086 newMap!16)))))))

(declare-fun lt!45107 () Unit!2738)

(declare-fun choose!560 (array!4134 array!4136 (_ BitVec 32) (_ BitVec 32) V!3091 V!3091 (_ BitVec 32) Int) Unit!2738)

(assert (=> d!24313 (= lt!45107 (choose!560 (_keys!4086 newMap!16) lt!44813 (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) (index!3173 lt!44816) (defaultEntry!2406 newMap!16)))))

(assert (=> d!24313 (validMask!0 (mask!6466 newMap!16))))

(assert (=> d!24313 (= (lemmaValidKeyInArrayIsInListMap!94 (_keys!4086 newMap!16) lt!44813 (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) (index!3173 lt!44816) (defaultEntry!2406 newMap!16)) lt!45107)))

(declare-fun b!92254 () Bool)

(assert (=> b!92254 (= e!60147 (contains!784 (getCurrentListMap!456 (_keys!4086 newMap!16) lt!44813 (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)) (select (arr!1966 (_keys!4086 newMap!16)) (index!3173 lt!44816))))))

(assert (= (and d!24313 res!46905) b!92254))

(declare-fun m!99211 () Bool)

(assert (=> d!24313 m!99211))

(assert (=> d!24313 m!98389))

(declare-fun m!99213 () Bool)

(assert (=> b!92254 m!99213))

(assert (=> b!92254 m!98349))

(assert (=> b!92254 m!99213))

(assert (=> b!92254 m!98349))

(declare-fun m!99215 () Bool)

(assert (=> b!92254 m!99215))

(assert (=> b!91765 d!24313))

(declare-fun bm!9080 () Bool)

(declare-fun call!9086 () Bool)

(declare-fun lt!45128 () ListLongMap!1517)

(assert (=> bm!9080 (= call!9086 (contains!784 lt!45128 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!9082 () Bool)

(declare-fun call!9089 () ListLongMap!1517)

(declare-fun call!9088 () ListLongMap!1517)

(assert (=> bm!9082 (= call!9089 call!9088)))

(declare-fun b!92255 () Bool)

(declare-fun e!60157 () Bool)

(assert (=> b!92255 (= e!60157 (validKeyInArray!0 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!92256 () Bool)

(declare-fun e!60156 () ListLongMap!1517)

(declare-fun e!60154 () ListLongMap!1517)

(assert (=> b!92256 (= e!60156 e!60154)))

(declare-fun c!15382 () Bool)

(assert (=> b!92256 (= c!15382 (and (not (= (bvand (extraKeys!2237 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2237 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!92257 () Bool)

(declare-fun e!60155 () Bool)

(declare-fun e!60149 () Bool)

(assert (=> b!92257 (= e!60155 e!60149)))

(declare-fun res!46912 () Bool)

(declare-fun call!9083 () Bool)

(assert (=> b!92257 (= res!46912 call!9083)))

(assert (=> b!92257 (=> (not res!46912) (not e!60149))))

(declare-fun b!92258 () Bool)

(declare-fun call!9085 () ListLongMap!1517)

(assert (=> b!92258 (= e!60154 call!9085)))

(declare-fun bm!9083 () Bool)

(declare-fun call!9087 () ListLongMap!1517)

(declare-fun call!9084 () ListLongMap!1517)

(declare-fun c!15378 () Bool)

(assert (=> bm!9083 (= call!9087 (+!129 (ite c!15378 call!9084 (ite c!15382 call!9088 call!9089)) (ite (or c!15378 c!15382) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 newMap!16)) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 newMap!16)))))))

(declare-fun b!92259 () Bool)

(assert (=> b!92259 (= e!60149 (= (apply!87 lt!45128 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2294 newMap!16)))))

(declare-fun b!92260 () Bool)

(declare-fun e!60148 () ListLongMap!1517)

(assert (=> b!92260 (= e!60148 call!9089)))

(declare-fun b!92261 () Bool)

(declare-fun e!60150 () Bool)

(declare-fun e!60160 () Bool)

(assert (=> b!92261 (= e!60150 e!60160)))

(declare-fun res!46909 () Bool)

(assert (=> b!92261 (= res!46909 call!9086)))

(assert (=> b!92261 (=> (not res!46909) (not e!60160))))

(declare-fun b!92262 () Bool)

(declare-fun e!60158 () Unit!2738)

(declare-fun lt!45123 () Unit!2738)

(assert (=> b!92262 (= e!60158 lt!45123)))

(declare-fun lt!45112 () ListLongMap!1517)

(assert (=> b!92262 (= lt!45112 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (array!4137 (store (arr!1967 (_values!2389 newMap!16)) (index!3173 lt!44816) (ValueCellFull!948 lt!44521)) (size!2214 (_values!2389 newMap!16))) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!45109 () (_ BitVec 64))

(assert (=> b!92262 (= lt!45109 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!45124 () (_ BitVec 64))

(assert (=> b!92262 (= lt!45124 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!45127 () Unit!2738)

(assert (=> b!92262 (= lt!45127 (addStillContains!63 lt!45112 lt!45109 (zeroValue!2294 newMap!16) lt!45124))))

(assert (=> b!92262 (contains!784 (+!129 lt!45112 (tuple2!2291 lt!45109 (zeroValue!2294 newMap!16))) lt!45124)))

(declare-fun lt!45125 () Unit!2738)

(assert (=> b!92262 (= lt!45125 lt!45127)))

(declare-fun lt!45116 () ListLongMap!1517)

(assert (=> b!92262 (= lt!45116 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (array!4137 (store (arr!1967 (_values!2389 newMap!16)) (index!3173 lt!44816) (ValueCellFull!948 lt!44521)) (size!2214 (_values!2389 newMap!16))) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!45108 () (_ BitVec 64))

(assert (=> b!92262 (= lt!45108 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!45115 () (_ BitVec 64))

(assert (=> b!92262 (= lt!45115 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!45126 () Unit!2738)

(assert (=> b!92262 (= lt!45126 (addApplyDifferent!63 lt!45116 lt!45108 (minValue!2294 newMap!16) lt!45115))))

(assert (=> b!92262 (= (apply!87 (+!129 lt!45116 (tuple2!2291 lt!45108 (minValue!2294 newMap!16))) lt!45115) (apply!87 lt!45116 lt!45115))))

(declare-fun lt!45117 () Unit!2738)

(assert (=> b!92262 (= lt!45117 lt!45126)))

(declare-fun lt!45122 () ListLongMap!1517)

(assert (=> b!92262 (= lt!45122 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (array!4137 (store (arr!1967 (_values!2389 newMap!16)) (index!3173 lt!44816) (ValueCellFull!948 lt!44521)) (size!2214 (_values!2389 newMap!16))) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!45110 () (_ BitVec 64))

(assert (=> b!92262 (= lt!45110 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!45118 () (_ BitVec 64))

(assert (=> b!92262 (= lt!45118 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!45111 () Unit!2738)

(assert (=> b!92262 (= lt!45111 (addApplyDifferent!63 lt!45122 lt!45110 (zeroValue!2294 newMap!16) lt!45118))))

(assert (=> b!92262 (= (apply!87 (+!129 lt!45122 (tuple2!2291 lt!45110 (zeroValue!2294 newMap!16))) lt!45118) (apply!87 lt!45122 lt!45118))))

(declare-fun lt!45121 () Unit!2738)

(assert (=> b!92262 (= lt!45121 lt!45111)))

(declare-fun lt!45113 () ListLongMap!1517)

(assert (=> b!92262 (= lt!45113 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (array!4137 (store (arr!1967 (_values!2389 newMap!16)) (index!3173 lt!44816) (ValueCellFull!948 lt!44521)) (size!2214 (_values!2389 newMap!16))) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!45120 () (_ BitVec 64))

(assert (=> b!92262 (= lt!45120 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!45129 () (_ BitVec 64))

(assert (=> b!92262 (= lt!45129 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!92262 (= lt!45123 (addApplyDifferent!63 lt!45113 lt!45120 (minValue!2294 newMap!16) lt!45129))))

(assert (=> b!92262 (= (apply!87 (+!129 lt!45113 (tuple2!2291 lt!45120 (minValue!2294 newMap!16))) lt!45129) (apply!87 lt!45113 lt!45129))))

(declare-fun b!92263 () Bool)

(assert (=> b!92263 (= e!60155 (not call!9083))))

(declare-fun b!92264 () Bool)

(declare-fun e!60153 () Bool)

(assert (=> b!92264 (= e!60153 e!60150)))

(declare-fun c!15380 () Bool)

(assert (=> b!92264 (= c!15380 (not (= (bvand (extraKeys!2237 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!92265 () Bool)

(declare-fun e!60151 () Bool)

(assert (=> b!92265 (= e!60151 (= (apply!87 lt!45128 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)) (get!1254 (select (arr!1967 (array!4137 (store (arr!1967 (_values!2389 newMap!16)) (index!3173 lt!44816) (ValueCellFull!948 lt!44521)) (size!2214 (_values!2389 newMap!16)))) #b00000000000000000000000000000000) (dynLambda!365 (defaultEntry!2406 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!92265 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2214 (array!4137 (store (arr!1967 (_values!2389 newMap!16)) (index!3173 lt!44816) (ValueCellFull!948 lt!44521)) (size!2214 (_values!2389 newMap!16))))))))

(assert (=> b!92265 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))

(declare-fun b!92266 () Bool)

(assert (=> b!92266 (= e!60160 (= (apply!87 lt!45128 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2294 newMap!16)))))

(declare-fun b!92267 () Bool)

(declare-fun e!60152 () Bool)

(assert (=> b!92267 (= e!60152 (validKeyInArray!0 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!24315 () Bool)

(assert (=> d!24315 e!60153))

(declare-fun res!46907 () Bool)

(assert (=> d!24315 (=> (not res!46907) (not e!60153))))

(assert (=> d!24315 (= res!46907 (or (bvsge #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))))

(declare-fun lt!45114 () ListLongMap!1517)

(assert (=> d!24315 (= lt!45128 lt!45114)))

(declare-fun lt!45119 () Unit!2738)

(assert (=> d!24315 (= lt!45119 e!60158)))

(declare-fun c!15379 () Bool)

(assert (=> d!24315 (= c!15379 e!60157)))

(declare-fun res!46908 () Bool)

(assert (=> d!24315 (=> (not res!46908) (not e!60157))))

(assert (=> d!24315 (= res!46908 (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))

(assert (=> d!24315 (= lt!45114 e!60156)))

(assert (=> d!24315 (= c!15378 (and (not (= (bvand (extraKeys!2237 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2237 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!24315 (validMask!0 (mask!6466 newMap!16))))

(assert (=> d!24315 (= (getCurrentListMap!456 (_keys!4086 newMap!16) (array!4137 (store (arr!1967 (_values!2389 newMap!16)) (index!3173 lt!44816) (ValueCellFull!948 lt!44521)) (size!2214 (_values!2389 newMap!16))) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)) lt!45128)))

(declare-fun bm!9081 () Bool)

(assert (=> bm!9081 (= call!9088 call!9084)))

(declare-fun b!92268 () Bool)

(declare-fun res!46911 () Bool)

(assert (=> b!92268 (=> (not res!46911) (not e!60153))))

(declare-fun e!60159 () Bool)

(assert (=> b!92268 (= res!46911 e!60159)))

(declare-fun res!46906 () Bool)

(assert (=> b!92268 (=> res!46906 e!60159)))

(assert (=> b!92268 (= res!46906 (not e!60152))))

(declare-fun res!46913 () Bool)

(assert (=> b!92268 (=> (not res!46913) (not e!60152))))

(assert (=> b!92268 (= res!46913 (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))

(declare-fun b!92269 () Bool)

(assert (=> b!92269 (= e!60150 (not call!9086))))

(declare-fun bm!9084 () Bool)

(assert (=> bm!9084 (= call!9083 (contains!784 lt!45128 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!92270 () Bool)

(declare-fun res!46910 () Bool)

(assert (=> b!92270 (=> (not res!46910) (not e!60153))))

(assert (=> b!92270 (= res!46910 e!60155)))

(declare-fun c!15381 () Bool)

(assert (=> b!92270 (= c!15381 (not (= (bvand (extraKeys!2237 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!92271 () Bool)

(assert (=> b!92271 (= e!60159 e!60151)))

(declare-fun res!46914 () Bool)

(assert (=> b!92271 (=> (not res!46914) (not e!60151))))

(assert (=> b!92271 (= res!46914 (contains!784 lt!45128 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!92271 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))

(declare-fun b!92272 () Bool)

(declare-fun c!15383 () Bool)

(assert (=> b!92272 (= c!15383 (and (not (= (bvand (extraKeys!2237 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2237 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!92272 (= e!60154 e!60148)))

(declare-fun b!92273 () Bool)

(declare-fun Unit!2769 () Unit!2738)

(assert (=> b!92273 (= e!60158 Unit!2769)))

(declare-fun b!92274 () Bool)

(assert (=> b!92274 (= e!60156 (+!129 call!9087 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 newMap!16))))))

(declare-fun b!92275 () Bool)

(assert (=> b!92275 (= e!60148 call!9085)))

(declare-fun bm!9085 () Bool)

(assert (=> bm!9085 (= call!9084 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (array!4137 (store (arr!1967 (_values!2389 newMap!16)) (index!3173 lt!44816) (ValueCellFull!948 lt!44521)) (size!2214 (_values!2389 newMap!16))) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun bm!9086 () Bool)

(assert (=> bm!9086 (= call!9085 call!9087)))

(assert (= (and d!24315 c!15378) b!92274))

(assert (= (and d!24315 (not c!15378)) b!92256))

(assert (= (and b!92256 c!15382) b!92258))

(assert (= (and b!92256 (not c!15382)) b!92272))

(assert (= (and b!92272 c!15383) b!92275))

(assert (= (and b!92272 (not c!15383)) b!92260))

(assert (= (or b!92275 b!92260) bm!9082))

(assert (= (or b!92258 bm!9082) bm!9081))

(assert (= (or b!92258 b!92275) bm!9086))

(assert (= (or b!92274 bm!9081) bm!9085))

(assert (= (or b!92274 bm!9086) bm!9083))

(assert (= (and d!24315 res!46908) b!92255))

(assert (= (and d!24315 c!15379) b!92262))

(assert (= (and d!24315 (not c!15379)) b!92273))

(assert (= (and d!24315 res!46907) b!92268))

(assert (= (and b!92268 res!46913) b!92267))

(assert (= (and b!92268 (not res!46906)) b!92271))

(assert (= (and b!92271 res!46914) b!92265))

(assert (= (and b!92268 res!46911) b!92270))

(assert (= (and b!92270 c!15381) b!92257))

(assert (= (and b!92270 (not c!15381)) b!92263))

(assert (= (and b!92257 res!46912) b!92259))

(assert (= (or b!92257 b!92263) bm!9084))

(assert (= (and b!92270 res!46910) b!92264))

(assert (= (and b!92264 c!15380) b!92261))

(assert (= (and b!92264 (not c!15380)) b!92269))

(assert (= (and b!92261 res!46909) b!92266))

(assert (= (or b!92261 b!92269) bm!9080))

(declare-fun b_lambda!4071 () Bool)

(assert (=> (not b_lambda!4071) (not b!92265)))

(assert (=> b!92265 t!5428))

(declare-fun b_and!5593 () Bool)

(assert (= b_and!5589 (and (=> t!5428 result!3101) b_and!5593)))

(assert (=> b!92265 t!5430))

(declare-fun b_and!5595 () Bool)

(assert (= b_and!5591 (and (=> t!5430 result!3103) b_and!5595)))

(declare-fun m!99217 () Bool)

(assert (=> b!92266 m!99217))

(declare-fun m!99219 () Bool)

(assert (=> b!92262 m!99219))

(declare-fun m!99221 () Bool)

(assert (=> b!92262 m!99221))

(declare-fun m!99223 () Bool)

(assert (=> b!92262 m!99223))

(declare-fun m!99225 () Bool)

(assert (=> b!92262 m!99225))

(declare-fun m!99227 () Bool)

(assert (=> b!92262 m!99227))

(declare-fun m!99229 () Bool)

(assert (=> b!92262 m!99229))

(declare-fun m!99231 () Bool)

(assert (=> b!92262 m!99231))

(assert (=> b!92262 m!99229))

(declare-fun m!99233 () Bool)

(assert (=> b!92262 m!99233))

(assert (=> b!92262 m!98409))

(assert (=> b!92262 m!99225))

(declare-fun m!99235 () Bool)

(assert (=> b!92262 m!99235))

(declare-fun m!99237 () Bool)

(assert (=> b!92262 m!99237))

(declare-fun m!99239 () Bool)

(assert (=> b!92262 m!99239))

(declare-fun m!99241 () Bool)

(assert (=> b!92262 m!99241))

(declare-fun m!99243 () Bool)

(assert (=> b!92262 m!99243))

(declare-fun m!99245 () Bool)

(assert (=> b!92262 m!99245))

(assert (=> b!92262 m!99227))

(declare-fun m!99247 () Bool)

(assert (=> b!92262 m!99247))

(assert (=> b!92262 m!99219))

(declare-fun m!99249 () Bool)

(assert (=> b!92262 m!99249))

(declare-fun m!99251 () Bool)

(assert (=> bm!9083 m!99251))

(declare-fun m!99253 () Bool)

(assert (=> b!92259 m!99253))

(assert (=> b!92271 m!98409))

(assert (=> b!92271 m!98409))

(declare-fun m!99255 () Bool)

(assert (=> b!92271 m!99255))

(declare-fun m!99257 () Bool)

(assert (=> b!92274 m!99257))

(declare-fun m!99259 () Bool)

(assert (=> bm!9084 m!99259))

(declare-fun m!99261 () Bool)

(assert (=> bm!9080 m!99261))

(assert (=> bm!9085 m!99245))

(assert (=> b!92265 m!98409))

(declare-fun m!99263 () Bool)

(assert (=> b!92265 m!99263))

(assert (=> b!92265 m!98441))

(declare-fun m!99265 () Bool)

(assert (=> b!92265 m!99265))

(assert (=> b!92265 m!98409))

(declare-fun m!99267 () Bool)

(assert (=> b!92265 m!99267))

(assert (=> b!92265 m!99263))

(assert (=> b!92265 m!98441))

(assert (=> b!92267 m!98409))

(assert (=> b!92267 m!98409))

(assert (=> b!92267 m!98447))

(assert (=> b!92255 m!98409))

(assert (=> b!92255 m!98409))

(assert (=> b!92255 m!98447))

(assert (=> d!24315 m!98389))

(assert (=> b!91765 d!24315))

(declare-fun d!24317 () Bool)

(declare-fun e!60163 () Bool)

(assert (=> d!24317 e!60163))

(declare-fun res!46917 () Bool)

(assert (=> d!24317 (=> (not res!46917) (not e!60163))))

(assert (=> d!24317 (= res!46917 (and (bvsge (index!3173 lt!44816) #b00000000000000000000000000000000) (bvslt (index!3173 lt!44816) (size!2214 (_values!2389 newMap!16)))))))

(declare-fun lt!45132 () Unit!2738)

(declare-fun choose!561 (array!4134 array!4136 (_ BitVec 32) (_ BitVec 32) V!3091 V!3091 (_ BitVec 32) (_ BitVec 64) V!3091 Int) Unit!2738)

(assert (=> d!24317 (= lt!45132 (choose!561 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) (index!3173 lt!44816) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521 (defaultEntry!2406 newMap!16)))))

(assert (=> d!24317 (validMask!0 (mask!6466 newMap!16))))

(assert (=> d!24317 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!36 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) (index!3173 lt!44816) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521 (defaultEntry!2406 newMap!16)) lt!45132)))

(declare-fun b!92278 () Bool)

(assert (=> b!92278 (= e!60163 (= (+!129 (getCurrentListMap!456 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) (getCurrentListMap!456 (_keys!4086 newMap!16) (array!4137 (store (arr!1967 (_values!2389 newMap!16)) (index!3173 lt!44816) (ValueCellFull!948 lt!44521)) (size!2214 (_values!2389 newMap!16))) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16))))))

(assert (= (and d!24317 res!46917) b!92278))

(assert (=> d!24317 m!97909))

(declare-fun m!99269 () Bool)

(assert (=> d!24317 m!99269))

(assert (=> d!24317 m!98389))

(assert (=> b!92278 m!98055))

(assert (=> b!92278 m!98055))

(declare-fun m!99271 () Bool)

(assert (=> b!92278 m!99271))

(assert (=> b!92278 m!98339))

(assert (=> b!92278 m!98343))

(assert (=> b!91765 d!24317))

(declare-fun d!24319 () Bool)

(declare-fun e!60164 () Bool)

(assert (=> d!24319 e!60164))

(declare-fun res!46918 () Bool)

(assert (=> d!24319 (=> res!46918 e!60164)))

(declare-fun lt!45133 () Bool)

(assert (=> d!24319 (= res!46918 (not lt!45133))))

(declare-fun lt!45136 () Bool)

(assert (=> d!24319 (= lt!45133 lt!45136)))

(declare-fun lt!45134 () Unit!2738)

(declare-fun e!60165 () Unit!2738)

(assert (=> d!24319 (= lt!45134 e!60165)))

(declare-fun c!15384 () Bool)

(assert (=> d!24319 (= c!15384 lt!45136)))

(assert (=> d!24319 (= lt!45136 (containsKey!148 (toList!774 call!9005) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (=> d!24319 (= (contains!784 call!9005 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) lt!45133)))

(declare-fun b!92279 () Bool)

(declare-fun lt!45135 () Unit!2738)

(assert (=> b!92279 (= e!60165 lt!45135)))

(assert (=> b!92279 (= lt!45135 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 call!9005) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (=> b!92279 (isDefined!98 (getValueByKey!144 (toList!774 call!9005) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun b!92280 () Bool)

(declare-fun Unit!2770 () Unit!2738)

(assert (=> b!92280 (= e!60165 Unit!2770)))

(declare-fun b!92281 () Bool)

(assert (=> b!92281 (= e!60164 (isDefined!98 (getValueByKey!144 (toList!774 call!9005) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355))))))

(assert (= (and d!24319 c!15384) b!92279))

(assert (= (and d!24319 (not c!15384)) b!92280))

(assert (= (and d!24319 (not res!46918)) b!92281))

(assert (=> d!24319 m!97909))

(declare-fun m!99273 () Bool)

(assert (=> d!24319 m!99273))

(assert (=> b!92279 m!97909))

(declare-fun m!99275 () Bool)

(assert (=> b!92279 m!99275))

(assert (=> b!92279 m!97909))

(declare-fun m!99277 () Bool)

(assert (=> b!92279 m!99277))

(assert (=> b!92279 m!99277))

(declare-fun m!99279 () Bool)

(assert (=> b!92279 m!99279))

(assert (=> b!92281 m!97909))

(assert (=> b!92281 m!99277))

(assert (=> b!92281 m!99277))

(assert (=> b!92281 m!99279))

(assert (=> b!91765 d!24319))

(declare-fun d!24321 () Bool)

(declare-fun lt!45137 () Bool)

(assert (=> d!24321 (= lt!45137 (select (content!94 (toList!774 lt!44678)) lt!44520))))

(declare-fun e!60166 () Bool)

(assert (=> d!24321 (= lt!45137 e!60166)))

(declare-fun res!46919 () Bool)

(assert (=> d!24321 (=> (not res!46919) (not e!60166))))

(assert (=> d!24321 (= res!46919 ((_ is Cons!1577) (toList!774 lt!44678)))))

(assert (=> d!24321 (= (contains!786 (toList!774 lt!44678) lt!44520) lt!45137)))

(declare-fun b!92282 () Bool)

(declare-fun e!60167 () Bool)

(assert (=> b!92282 (= e!60166 e!60167)))

(declare-fun res!46920 () Bool)

(assert (=> b!92282 (=> res!46920 e!60167)))

(assert (=> b!92282 (= res!46920 (= (h!2169 (toList!774 lt!44678)) lt!44520))))

(declare-fun b!92283 () Bool)

(assert (=> b!92283 (= e!60167 (contains!786 (t!5419 (toList!774 lt!44678)) lt!44520))))

(assert (= (and d!24321 res!46919) b!92282))

(assert (= (and b!92282 (not res!46920)) b!92283))

(declare-fun m!99281 () Bool)

(assert (=> d!24321 m!99281))

(declare-fun m!99283 () Bool)

(assert (=> d!24321 m!99283))

(declare-fun m!99285 () Bool)

(assert (=> b!92283 m!99285))

(assert (=> b!91636 d!24321))

(declare-fun d!24323 () Bool)

(declare-fun e!60168 () Bool)

(assert (=> d!24323 e!60168))

(declare-fun res!46921 () Bool)

(assert (=> d!24323 (=> (not res!46921) (not e!60168))))

(declare-fun lt!45141 () ListLongMap!1517)

(assert (=> d!24323 (= res!46921 (contains!784 lt!45141 (_1!1155 (ite (or c!15188 c!15192) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(declare-fun lt!45140 () List!1581)

(assert (=> d!24323 (= lt!45141 (ListLongMap!1518 lt!45140))))

(declare-fun lt!45138 () Unit!2738)

(declare-fun lt!45139 () Unit!2738)

(assert (=> d!24323 (= lt!45138 lt!45139)))

(assert (=> d!24323 (= (getValueByKey!144 lt!45140 (_1!1155 (ite (or c!15188 c!15192) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))) (Some!149 (_2!1155 (ite (or c!15188 c!15192) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(assert (=> d!24323 (= lt!45139 (lemmaContainsTupThenGetReturnValue!63 lt!45140 (_1!1155 (ite (or c!15188 c!15192) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (_2!1155 (ite (or c!15188 c!15192) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(assert (=> d!24323 (= lt!45140 (insertStrictlySorted!65 (toList!774 (ite c!15188 call!8935 (ite c!15192 call!8939 call!8940))) (_1!1155 (ite (or c!15188 c!15192) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (_2!1155 (ite (or c!15188 c!15192) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(assert (=> d!24323 (= (+!129 (ite c!15188 call!8935 (ite c!15192 call!8939 call!8940)) (ite (or c!15188 c!15192) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) lt!45141)))

(declare-fun b!92284 () Bool)

(declare-fun res!46922 () Bool)

(assert (=> b!92284 (=> (not res!46922) (not e!60168))))

(assert (=> b!92284 (= res!46922 (= (getValueByKey!144 (toList!774 lt!45141) (_1!1155 (ite (or c!15188 c!15192) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))) (Some!149 (_2!1155 (ite (or c!15188 c!15192) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))))

(declare-fun b!92285 () Bool)

(assert (=> b!92285 (= e!60168 (contains!786 (toList!774 lt!45141) (ite (or c!15188 c!15192) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (= (and d!24323 res!46921) b!92284))

(assert (= (and b!92284 res!46922) b!92285))

(declare-fun m!99287 () Bool)

(assert (=> d!24323 m!99287))

(declare-fun m!99289 () Bool)

(assert (=> d!24323 m!99289))

(declare-fun m!99291 () Bool)

(assert (=> d!24323 m!99291))

(declare-fun m!99293 () Bool)

(assert (=> d!24323 m!99293))

(declare-fun m!99295 () Bool)

(assert (=> b!92284 m!99295))

(declare-fun m!99297 () Bool)

(assert (=> b!92285 m!99297))

(assert (=> bm!8934 d!24323))

(declare-fun d!24325 () Bool)

(declare-fun res!46923 () Bool)

(declare-fun e!60169 () Bool)

(assert (=> d!24325 (=> (not res!46923) (not e!60169))))

(assert (=> d!24325 (= res!46923 (simpleValid!62 (_2!1156 lt!44803)))))

(assert (=> d!24325 (= (valid!355 (_2!1156 lt!44803)) e!60169)))

(declare-fun b!92286 () Bool)

(declare-fun res!46924 () Bool)

(assert (=> b!92286 (=> (not res!46924) (not e!60169))))

(assert (=> b!92286 (= res!46924 (= (arrayCountValidKeys!0 (_keys!4086 (_2!1156 lt!44803)) #b00000000000000000000000000000000 (size!2213 (_keys!4086 (_2!1156 lt!44803)))) (_size!451 (_2!1156 lt!44803))))))

(declare-fun b!92287 () Bool)

(declare-fun res!46925 () Bool)

(assert (=> b!92287 (=> (not res!46925) (not e!60169))))

(assert (=> b!92287 (= res!46925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4086 (_2!1156 lt!44803)) (mask!6466 (_2!1156 lt!44803))))))

(declare-fun b!92288 () Bool)

(assert (=> b!92288 (= e!60169 (arrayNoDuplicates!0 (_keys!4086 (_2!1156 lt!44803)) #b00000000000000000000000000000000 Nil!1579))))

(assert (= (and d!24325 res!46923) b!92286))

(assert (= (and b!92286 res!46924) b!92287))

(assert (= (and b!92287 res!46925) b!92288))

(declare-fun m!99299 () Bool)

(assert (=> d!24325 m!99299))

(declare-fun m!99301 () Bool)

(assert (=> b!92286 m!99301))

(declare-fun m!99303 () Bool)

(assert (=> b!92287 m!99303))

(declare-fun m!99305 () Bool)

(assert (=> b!92288 m!99305))

(assert (=> d!24095 d!24325))

(assert (=> d!24095 d!24049))

(declare-fun d!24327 () Bool)

(assert (=> d!24327 (= (apply!87 lt!44703 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) (get!1257 (getValueByKey!144 (toList!774 lt!44703) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355))))))

(declare-fun bs!3810 () Bool)

(assert (= bs!3810 d!24327))

(assert (=> bs!3810 m!97909))

(assert (=> bs!3810 m!98501))

(assert (=> bs!3810 m!98501))

(declare-fun m!99307 () Bool)

(assert (=> bs!3810 m!99307))

(assert (=> b!91649 d!24327))

(assert (=> b!91649 d!24057))

(assert (=> d!24099 d!24105))

(declare-fun d!24329 () Bool)

(assert (=> d!24329 (arrayNoDuplicates!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) from!355 Nil!1579)))

(assert (=> d!24329 true))

(declare-fun _$71!123 () Unit!2738)

(assert (=> d!24329 (= (choose!39 (_keys!4086 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000000 from!355) _$71!123)))

(declare-fun bs!3811 () Bool)

(assert (= bs!3811 d!24329))

(assert (=> bs!3811 m!97923))

(assert (=> d!24099 d!24329))

(assert (=> bm!9001 d!24121))

(declare-fun d!24331 () Bool)

(declare-fun e!60170 () Bool)

(assert (=> d!24331 e!60170))

(declare-fun res!46926 () Bool)

(assert (=> d!24331 (=> (not res!46926) (not e!60170))))

(declare-fun lt!45145 () ListLongMap!1517)

(assert (=> d!24331 (= res!46926 (contains!784 lt!45145 (_1!1155 (tuple2!2291 lt!44620 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(declare-fun lt!45144 () List!1581)

(assert (=> d!24331 (= lt!45145 (ListLongMap!1518 lt!45144))))

(declare-fun lt!45142 () Unit!2738)

(declare-fun lt!45143 () Unit!2738)

(assert (=> d!24331 (= lt!45142 lt!45143)))

(assert (=> d!24331 (= (getValueByKey!144 lt!45144 (_1!1155 (tuple2!2291 lt!44620 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 lt!44620 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24331 (= lt!45143 (lemmaContainsTupThenGetReturnValue!63 lt!45144 (_1!1155 (tuple2!2291 lt!44620 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 lt!44620 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24331 (= lt!45144 (insertStrictlySorted!65 (toList!774 lt!44628) (_1!1155 (tuple2!2291 lt!44620 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 lt!44620 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24331 (= (+!129 lt!44628 (tuple2!2291 lt!44620 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!45145)))

(declare-fun b!92289 () Bool)

(declare-fun res!46927 () Bool)

(assert (=> b!92289 (=> (not res!46927) (not e!60170))))

(assert (=> b!92289 (= res!46927 (= (getValueByKey!144 (toList!774 lt!45145) (_1!1155 (tuple2!2291 lt!44620 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 lt!44620 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(declare-fun b!92290 () Bool)

(assert (=> b!92290 (= e!60170 (contains!786 (toList!774 lt!45145) (tuple2!2291 lt!44620 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))

(assert (= (and d!24331 res!46926) b!92289))

(assert (= (and b!92289 res!46927) b!92290))

(declare-fun m!99309 () Bool)

(assert (=> d!24331 m!99309))

(declare-fun m!99311 () Bool)

(assert (=> d!24331 m!99311))

(declare-fun m!99313 () Bool)

(assert (=> d!24331 m!99313))

(declare-fun m!99315 () Bool)

(assert (=> d!24331 m!99315))

(declare-fun m!99317 () Bool)

(assert (=> b!92289 m!99317))

(declare-fun m!99319 () Bool)

(assert (=> b!92290 m!99319))

(assert (=> b!91570 d!24331))

(assert (=> b!91570 d!24067))

(declare-fun d!24333 () Bool)

(assert (=> d!24333 (= (apply!87 (+!129 lt!44625 (tuple2!2291 lt!44632 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44641) (get!1257 (getValueByKey!144 (toList!774 (+!129 lt!44625 (tuple2!2291 lt!44632 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) lt!44641)))))

(declare-fun bs!3812 () Bool)

(assert (= bs!3812 d!24333))

(declare-fun m!99321 () Bool)

(assert (=> bs!3812 m!99321))

(assert (=> bs!3812 m!99321))

(declare-fun m!99323 () Bool)

(assert (=> bs!3812 m!99323))

(assert (=> b!91570 d!24333))

(declare-fun d!24335 () Bool)

(assert (=> d!24335 (contains!784 (+!129 lt!44624 (tuple2!2291 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44636)))

(declare-fun lt!45146 () Unit!2738)

(assert (=> d!24335 (= lt!45146 (choose!557 lt!44624 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44636))))

(assert (=> d!24335 (contains!784 lt!44624 lt!44636)))

(assert (=> d!24335 (= (addStillContains!63 lt!44624 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44636) lt!45146)))

(declare-fun bs!3813 () Bool)

(assert (= bs!3813 d!24335))

(assert (=> bs!3813 m!98059))

(assert (=> bs!3813 m!98059))

(assert (=> bs!3813 m!98089))

(declare-fun m!99325 () Bool)

(assert (=> bs!3813 m!99325))

(declare-fun m!99327 () Bool)

(assert (=> bs!3813 m!99327))

(assert (=> b!91570 d!24335))

(declare-fun d!24337 () Bool)

(assert (=> d!24337 (= (apply!87 (+!129 lt!44634 (tuple2!2291 lt!44622 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44630) (get!1257 (getValueByKey!144 (toList!774 (+!129 lt!44634 (tuple2!2291 lt!44622 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) lt!44630)))))

(declare-fun bs!3814 () Bool)

(assert (= bs!3814 d!24337))

(declare-fun m!99329 () Bool)

(assert (=> bs!3814 m!99329))

(assert (=> bs!3814 m!99329))

(declare-fun m!99331 () Bool)

(assert (=> bs!3814 m!99331))

(assert (=> b!91570 d!24337))

(declare-fun d!24339 () Bool)

(assert (=> d!24339 (= (apply!87 lt!44625 lt!44641) (get!1257 (getValueByKey!144 (toList!774 lt!44625) lt!44641)))))

(declare-fun bs!3815 () Bool)

(assert (= bs!3815 d!24339))

(declare-fun m!99333 () Bool)

(assert (=> bs!3815 m!99333))

(assert (=> bs!3815 m!99333))

(declare-fun m!99335 () Bool)

(assert (=> bs!3815 m!99335))

(assert (=> b!91570 d!24339))

(declare-fun d!24341 () Bool)

(declare-fun e!60171 () Bool)

(assert (=> d!24341 e!60171))

(declare-fun res!46928 () Bool)

(assert (=> d!24341 (=> res!46928 e!60171)))

(declare-fun lt!45147 () Bool)

(assert (=> d!24341 (= res!46928 (not lt!45147))))

(declare-fun lt!45150 () Bool)

(assert (=> d!24341 (= lt!45147 lt!45150)))

(declare-fun lt!45148 () Unit!2738)

(declare-fun e!60172 () Unit!2738)

(assert (=> d!24341 (= lt!45148 e!60172)))

(declare-fun c!15385 () Bool)

(assert (=> d!24341 (= c!15385 lt!45150)))

(assert (=> d!24341 (= lt!45150 (containsKey!148 (toList!774 (+!129 lt!44624 (tuple2!2291 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) lt!44636))))

(assert (=> d!24341 (= (contains!784 (+!129 lt!44624 (tuple2!2291 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44636) lt!45147)))

(declare-fun b!92291 () Bool)

(declare-fun lt!45149 () Unit!2738)

(assert (=> b!92291 (= e!60172 lt!45149)))

(assert (=> b!92291 (= lt!45149 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 (+!129 lt!44624 (tuple2!2291 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) lt!44636))))

(assert (=> b!92291 (isDefined!98 (getValueByKey!144 (toList!774 (+!129 lt!44624 (tuple2!2291 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) lt!44636))))

(declare-fun b!92292 () Bool)

(declare-fun Unit!2771 () Unit!2738)

(assert (=> b!92292 (= e!60172 Unit!2771)))

(declare-fun b!92293 () Bool)

(assert (=> b!92293 (= e!60171 (isDefined!98 (getValueByKey!144 (toList!774 (+!129 lt!44624 (tuple2!2291 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) lt!44636)))))

(assert (= (and d!24341 c!15385) b!92291))

(assert (= (and d!24341 (not c!15385)) b!92292))

(assert (= (and d!24341 (not res!46928)) b!92293))

(declare-fun m!99337 () Bool)

(assert (=> d!24341 m!99337))

(declare-fun m!99339 () Bool)

(assert (=> b!92291 m!99339))

(declare-fun m!99341 () Bool)

(assert (=> b!92291 m!99341))

(assert (=> b!92291 m!99341))

(declare-fun m!99343 () Bool)

(assert (=> b!92291 m!99343))

(assert (=> b!92293 m!99341))

(assert (=> b!92293 m!99341))

(assert (=> b!92293 m!99343))

(assert (=> b!91570 d!24341))

(declare-fun d!24343 () Bool)

(assert (=> d!24343 (= (apply!87 (+!129 lt!44628 (tuple2!2291 lt!44620 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44627) (apply!87 lt!44628 lt!44627))))

(declare-fun lt!45151 () Unit!2738)

(assert (=> d!24343 (= lt!45151 (choose!556 lt!44628 lt!44620 (minValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44627))))

(declare-fun e!60173 () Bool)

(assert (=> d!24343 e!60173))

(declare-fun res!46929 () Bool)

(assert (=> d!24343 (=> (not res!46929) (not e!60173))))

(assert (=> d!24343 (= res!46929 (contains!784 lt!44628 lt!44627))))

(assert (=> d!24343 (= (addApplyDifferent!63 lt!44628 lt!44620 (minValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44627) lt!45151)))

(declare-fun b!92294 () Bool)

(assert (=> b!92294 (= e!60173 (not (= lt!44627 lt!44620)))))

(assert (= (and d!24343 res!46929) b!92294))

(assert (=> d!24343 m!98069))

(assert (=> d!24343 m!98069))

(assert (=> d!24343 m!98071))

(assert (=> d!24343 m!98079))

(declare-fun m!99345 () Bool)

(assert (=> d!24343 m!99345))

(declare-fun m!99347 () Bool)

(assert (=> d!24343 m!99347))

(assert (=> b!91570 d!24343))

(declare-fun d!24345 () Bool)

(assert (=> d!24345 (= (apply!87 lt!44628 lt!44627) (get!1257 (getValueByKey!144 (toList!774 lt!44628) lt!44627)))))

(declare-fun bs!3816 () Bool)

(assert (= bs!3816 d!24345))

(declare-fun m!99349 () Bool)

(assert (=> bs!3816 m!99349))

(assert (=> bs!3816 m!99349))

(declare-fun m!99351 () Bool)

(assert (=> bs!3816 m!99351))

(assert (=> b!91570 d!24345))

(declare-fun d!24347 () Bool)

(declare-fun e!60174 () Bool)

(assert (=> d!24347 e!60174))

(declare-fun res!46930 () Bool)

(assert (=> d!24347 (=> (not res!46930) (not e!60174))))

(declare-fun lt!45155 () ListLongMap!1517)

(assert (=> d!24347 (= res!46930 (contains!784 lt!45155 (_1!1155 (tuple2!2291 lt!44632 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(declare-fun lt!45154 () List!1581)

(assert (=> d!24347 (= lt!45155 (ListLongMap!1518 lt!45154))))

(declare-fun lt!45152 () Unit!2738)

(declare-fun lt!45153 () Unit!2738)

(assert (=> d!24347 (= lt!45152 lt!45153)))

(assert (=> d!24347 (= (getValueByKey!144 lt!45154 (_1!1155 (tuple2!2291 lt!44632 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 lt!44632 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24347 (= lt!45153 (lemmaContainsTupThenGetReturnValue!63 lt!45154 (_1!1155 (tuple2!2291 lt!44632 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 lt!44632 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24347 (= lt!45154 (insertStrictlySorted!65 (toList!774 lt!44625) (_1!1155 (tuple2!2291 lt!44632 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 lt!44632 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24347 (= (+!129 lt!44625 (tuple2!2291 lt!44632 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!45155)))

(declare-fun b!92295 () Bool)

(declare-fun res!46931 () Bool)

(assert (=> b!92295 (=> (not res!46931) (not e!60174))))

(assert (=> b!92295 (= res!46931 (= (getValueByKey!144 (toList!774 lt!45155) (_1!1155 (tuple2!2291 lt!44632 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 lt!44632 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(declare-fun b!92296 () Bool)

(assert (=> b!92296 (= e!60174 (contains!786 (toList!774 lt!45155) (tuple2!2291 lt!44632 (minValue!2294 (v!2722 (underlying!315 thiss!992))))))))

(assert (= (and d!24347 res!46930) b!92295))

(assert (= (and b!92295 res!46931) b!92296))

(declare-fun m!99353 () Bool)

(assert (=> d!24347 m!99353))

(declare-fun m!99355 () Bool)

(assert (=> d!24347 m!99355))

(declare-fun m!99357 () Bool)

(assert (=> d!24347 m!99357))

(declare-fun m!99359 () Bool)

(assert (=> d!24347 m!99359))

(declare-fun m!99361 () Bool)

(assert (=> b!92295 m!99361))

(declare-fun m!99363 () Bool)

(assert (=> b!92296 m!99363))

(assert (=> b!91570 d!24347))

(declare-fun d!24349 () Bool)

(declare-fun e!60175 () Bool)

(assert (=> d!24349 e!60175))

(declare-fun res!46932 () Bool)

(assert (=> d!24349 (=> (not res!46932) (not e!60175))))

(declare-fun lt!45159 () ListLongMap!1517)

(assert (=> d!24349 (= res!46932 (contains!784 lt!45159 (_1!1155 (tuple2!2291 lt!44622 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(declare-fun lt!45158 () List!1581)

(assert (=> d!24349 (= lt!45159 (ListLongMap!1518 lt!45158))))

(declare-fun lt!45156 () Unit!2738)

(declare-fun lt!45157 () Unit!2738)

(assert (=> d!24349 (= lt!45156 lt!45157)))

(assert (=> d!24349 (= (getValueByKey!144 lt!45158 (_1!1155 (tuple2!2291 lt!44622 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 lt!44622 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24349 (= lt!45157 (lemmaContainsTupThenGetReturnValue!63 lt!45158 (_1!1155 (tuple2!2291 lt!44622 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 lt!44622 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24349 (= lt!45158 (insertStrictlySorted!65 (toList!774 lt!44634) (_1!1155 (tuple2!2291 lt!44622 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 lt!44622 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24349 (= (+!129 lt!44634 (tuple2!2291 lt!44622 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!45159)))

(declare-fun b!92297 () Bool)

(declare-fun res!46933 () Bool)

(assert (=> b!92297 (=> (not res!46933) (not e!60175))))

(assert (=> b!92297 (= res!46933 (= (getValueByKey!144 (toList!774 lt!45159) (_1!1155 (tuple2!2291 lt!44622 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 lt!44622 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(declare-fun b!92298 () Bool)

(assert (=> b!92298 (= e!60175 (contains!786 (toList!774 lt!45159) (tuple2!2291 lt!44622 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))))))

(assert (= (and d!24349 res!46932) b!92297))

(assert (= (and b!92297 res!46933) b!92298))

(declare-fun m!99365 () Bool)

(assert (=> d!24349 m!99365))

(declare-fun m!99367 () Bool)

(assert (=> d!24349 m!99367))

(declare-fun m!99369 () Bool)

(assert (=> d!24349 m!99369))

(declare-fun m!99371 () Bool)

(assert (=> d!24349 m!99371))

(declare-fun m!99373 () Bool)

(assert (=> b!92297 m!99373))

(declare-fun m!99375 () Bool)

(assert (=> b!92298 m!99375))

(assert (=> b!91570 d!24349))

(declare-fun d!24351 () Bool)

(assert (=> d!24351 (= (apply!87 lt!44634 lt!44630) (get!1257 (getValueByKey!144 (toList!774 lt!44634) lt!44630)))))

(declare-fun bs!3817 () Bool)

(assert (= bs!3817 d!24351))

(declare-fun m!99377 () Bool)

(assert (=> bs!3817 m!99377))

(assert (=> bs!3817 m!99377))

(declare-fun m!99379 () Bool)

(assert (=> bs!3817 m!99379))

(assert (=> b!91570 d!24351))

(declare-fun d!24353 () Bool)

(assert (=> d!24353 (= (apply!87 (+!129 lt!44634 (tuple2!2291 lt!44622 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44630) (apply!87 lt!44634 lt!44630))))

(declare-fun lt!45160 () Unit!2738)

(assert (=> d!24353 (= lt!45160 (choose!556 lt!44634 lt!44622 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44630))))

(declare-fun e!60176 () Bool)

(assert (=> d!24353 e!60176))

(declare-fun res!46934 () Bool)

(assert (=> d!24353 (=> (not res!46934) (not e!60176))))

(assert (=> d!24353 (= res!46934 (contains!784 lt!44634 lt!44630))))

(assert (=> d!24353 (= (addApplyDifferent!63 lt!44634 lt!44622 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44630) lt!45160)))

(declare-fun b!92299 () Bool)

(assert (=> b!92299 (= e!60176 (not (= lt!44630 lt!44622)))))

(assert (= (and d!24353 res!46934) b!92299))

(assert (=> d!24353 m!98065))

(assert (=> d!24353 m!98065))

(assert (=> d!24353 m!98077))

(assert (=> d!24353 m!98083))

(declare-fun m!99381 () Bool)

(assert (=> d!24353 m!99381))

(declare-fun m!99383 () Bool)

(assert (=> d!24353 m!99383))

(assert (=> b!91570 d!24353))

(declare-fun d!24355 () Bool)

(assert (=> d!24355 (= (apply!87 (+!129 lt!44625 (tuple2!2291 lt!44632 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44641) (apply!87 lt!44625 lt!44641))))

(declare-fun lt!45161 () Unit!2738)

(assert (=> d!24355 (= lt!45161 (choose!556 lt!44625 lt!44632 (minValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44641))))

(declare-fun e!60177 () Bool)

(assert (=> d!24355 e!60177))

(declare-fun res!46935 () Bool)

(assert (=> d!24355 (=> (not res!46935) (not e!60177))))

(assert (=> d!24355 (= res!46935 (contains!784 lt!44625 lt!44641))))

(assert (=> d!24355 (= (addApplyDifferent!63 lt!44625 lt!44632 (minValue!2294 (v!2722 (underlying!315 thiss!992))) lt!44641) lt!45161)))

(declare-fun b!92300 () Bool)

(assert (=> b!92300 (= e!60177 (not (= lt!44641 lt!44632)))))

(assert (= (and d!24355 res!46935) b!92300))

(assert (=> d!24355 m!98067))

(assert (=> d!24355 m!98067))

(assert (=> d!24355 m!98087))

(assert (=> d!24355 m!98063))

(declare-fun m!99385 () Bool)

(assert (=> d!24355 m!99385))

(declare-fun m!99387 () Bool)

(assert (=> d!24355 m!99387))

(assert (=> b!91570 d!24355))

(declare-fun d!24357 () Bool)

(assert (=> d!24357 (= (apply!87 (+!129 lt!44628 (tuple2!2291 lt!44620 (minValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!44627) (get!1257 (getValueByKey!144 (toList!774 (+!129 lt!44628 (tuple2!2291 lt!44620 (minValue!2294 (v!2722 (underlying!315 thiss!992)))))) lt!44627)))))

(declare-fun bs!3818 () Bool)

(assert (= bs!3818 d!24357))

(declare-fun m!99389 () Bool)

(assert (=> bs!3818 m!99389))

(assert (=> bs!3818 m!99389))

(declare-fun m!99391 () Bool)

(assert (=> bs!3818 m!99391))

(assert (=> b!91570 d!24357))

(declare-fun d!24359 () Bool)

(declare-fun e!60178 () Bool)

(assert (=> d!24359 e!60178))

(declare-fun res!46936 () Bool)

(assert (=> d!24359 (=> (not res!46936) (not e!60178))))

(declare-fun lt!45165 () ListLongMap!1517)

(assert (=> d!24359 (= res!46936 (contains!784 lt!45165 (_1!1155 (tuple2!2291 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(declare-fun lt!45164 () List!1581)

(assert (=> d!24359 (= lt!45165 (ListLongMap!1518 lt!45164))))

(declare-fun lt!45162 () Unit!2738)

(declare-fun lt!45163 () Unit!2738)

(assert (=> d!24359 (= lt!45162 lt!45163)))

(assert (=> d!24359 (= (getValueByKey!144 lt!45164 (_1!1155 (tuple2!2291 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24359 (= lt!45163 (lemmaContainsTupThenGetReturnValue!63 lt!45164 (_1!1155 (tuple2!2291 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24359 (= lt!45164 (insertStrictlySorted!65 (toList!774 lt!44624) (_1!1155 (tuple2!2291 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) (_2!1155 (tuple2!2291 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))))))

(assert (=> d!24359 (= (+!129 lt!44624 (tuple2!2291 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))) lt!45165)))

(declare-fun b!92301 () Bool)

(declare-fun res!46937 () Bool)

(assert (=> b!92301 (=> (not res!46937) (not e!60178))))

(assert (=> b!92301 (= res!46937 (= (getValueByKey!144 (toList!774 lt!45165) (_1!1155 (tuple2!2291 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992)))))) (Some!149 (_2!1155 (tuple2!2291 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))))))))

(declare-fun b!92302 () Bool)

(assert (=> b!92302 (= e!60178 (contains!786 (toList!774 lt!45165) (tuple2!2291 lt!44621 (zeroValue!2294 (v!2722 (underlying!315 thiss!992))))))))

(assert (= (and d!24359 res!46936) b!92301))

(assert (= (and b!92301 res!46937) b!92302))

(declare-fun m!99393 () Bool)

(assert (=> d!24359 m!99393))

(declare-fun m!99395 () Bool)

(assert (=> d!24359 m!99395))

(declare-fun m!99397 () Bool)

(assert (=> d!24359 m!99397))

(declare-fun m!99399 () Bool)

(assert (=> d!24359 m!99399))

(declare-fun m!99401 () Bool)

(assert (=> b!92301 m!99401))

(declare-fun m!99403 () Bool)

(assert (=> b!92302 m!99403))

(assert (=> b!91570 d!24359))

(declare-fun b!92306 () Bool)

(declare-fun e!60180 () Option!150)

(assert (=> b!92306 (= e!60180 None!148)))

(declare-fun b!92304 () Bool)

(declare-fun e!60179 () Option!150)

(assert (=> b!92304 (= e!60179 e!60180)))

(declare-fun c!15387 () Bool)

(assert (=> b!92304 (= c!15387 (and ((_ is Cons!1577) (toList!774 lt!44716)) (not (= (_1!1155 (h!2169 (toList!774 lt!44716))) (_1!1155 lt!44511)))))))

(declare-fun d!24361 () Bool)

(declare-fun c!15386 () Bool)

(assert (=> d!24361 (= c!15386 (and ((_ is Cons!1577) (toList!774 lt!44716)) (= (_1!1155 (h!2169 (toList!774 lt!44716))) (_1!1155 lt!44511))))))

(assert (=> d!24361 (= (getValueByKey!144 (toList!774 lt!44716) (_1!1155 lt!44511)) e!60179)))

(declare-fun b!92303 () Bool)

(assert (=> b!92303 (= e!60179 (Some!149 (_2!1155 (h!2169 (toList!774 lt!44716)))))))

(declare-fun b!92305 () Bool)

(assert (=> b!92305 (= e!60180 (getValueByKey!144 (t!5419 (toList!774 lt!44716)) (_1!1155 lt!44511)))))

(assert (= (and d!24361 c!15386) b!92303))

(assert (= (and d!24361 (not c!15386)) b!92304))

(assert (= (and b!92304 c!15387) b!92305))

(assert (= (and b!92304 (not c!15387)) b!92306))

(declare-fun m!99405 () Bool)

(assert (=> b!92305 m!99405))

(assert (=> b!91664 d!24361))

(declare-fun b!92315 () Bool)

(declare-fun e!60185 () (_ BitVec 32))

(declare-fun call!9092 () (_ BitVec 32))

(assert (=> b!92315 (= e!60185 (bvadd #b00000000000000000000000000000001 call!9092))))

(declare-fun b!92316 () Bool)

(assert (=> b!92316 (= e!60185 call!9092)))

(declare-fun d!24363 () Bool)

(declare-fun lt!45168 () (_ BitVec 32))

(assert (=> d!24363 (and (bvsge lt!45168 #b00000000000000000000000000000000) (bvsle lt!45168 (bvsub (size!2213 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!60186 () (_ BitVec 32))

(assert (=> d!24363 (= lt!45168 e!60186)))

(declare-fun c!15393 () Bool)

(assert (=> d!24363 (= c!15393 (bvsge #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))

(assert (=> d!24363 (and (bvsle #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2213 (_keys!4086 newMap!16)) (size!2213 (_keys!4086 newMap!16))))))

(assert (=> d!24363 (= (arrayCountValidKeys!0 (_keys!4086 newMap!16) #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))) lt!45168)))

(declare-fun b!92317 () Bool)

(assert (=> b!92317 (= e!60186 e!60185)))

(declare-fun c!15392 () Bool)

(assert (=> b!92317 (= c!15392 (validKeyInArray!0 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!9089 () Bool)

(assert (=> bm!9089 (= call!9092 (arrayCountValidKeys!0 (_keys!4086 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2213 (_keys!4086 newMap!16))))))

(declare-fun b!92318 () Bool)

(assert (=> b!92318 (= e!60186 #b00000000000000000000000000000000)))

(assert (= (and d!24363 c!15393) b!92318))

(assert (= (and d!24363 (not c!15393)) b!92317))

(assert (= (and b!92317 c!15392) b!92315))

(assert (= (and b!92317 (not c!15392)) b!92316))

(assert (= (or b!92315 b!92316) bm!9089))

(assert (=> b!92317 m!98409))

(assert (=> b!92317 m!98409))

(assert (=> b!92317 m!98447))

(declare-fun m!99407 () Bool)

(assert (=> bm!9089 m!99407))

(assert (=> b!91518 d!24363))

(declare-fun d!24365 () Bool)

(assert (=> d!24365 (= (map!1224 (_2!1156 lt!44803)) (getCurrentListMap!456 (_keys!4086 (_2!1156 lt!44803)) (_values!2389 (_2!1156 lt!44803)) (mask!6466 (_2!1156 lt!44803)) (extraKeys!2237 (_2!1156 lt!44803)) (zeroValue!2294 (_2!1156 lt!44803)) (minValue!2294 (_2!1156 lt!44803)) #b00000000000000000000000000000000 (defaultEntry!2406 (_2!1156 lt!44803))))))

(declare-fun bs!3819 () Bool)

(assert (= bs!3819 d!24365))

(declare-fun m!99409 () Bool)

(assert (=> bs!3819 m!99409))

(assert (=> bm!9009 d!24365))

(declare-fun d!24367 () Bool)

(declare-fun e!60189 () Bool)

(assert (=> d!24367 e!60189))

(declare-fun res!46943 () Bool)

(assert (=> d!24367 (=> (not res!46943) (not e!60189))))

(declare-fun lt!45173 () SeekEntryResult!258)

(assert (=> d!24367 (= res!46943 ((_ is Found!258) lt!45173))))

(assert (=> d!24367 (= lt!45173 (seekEntryOrOpen!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (_keys!4086 newMap!16) (mask!6466 newMap!16)))))

(declare-fun lt!45174 () Unit!2738)

(declare-fun choose!562 (array!4134 array!4136 (_ BitVec 32) (_ BitVec 32) V!3091 V!3091 (_ BitVec 64) Int) Unit!2738)

(assert (=> d!24367 (= lt!45174 (choose!562 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (defaultEntry!2406 newMap!16)))))

(assert (=> d!24367 (validMask!0 (mask!6466 newMap!16))))

(assert (=> d!24367 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!36 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (defaultEntry!2406 newMap!16)) lt!45174)))

(declare-fun b!92323 () Bool)

(declare-fun res!46942 () Bool)

(assert (=> b!92323 (=> (not res!46942) (not e!60189))))

(assert (=> b!92323 (= res!46942 (inRange!0 (index!3173 lt!45173) (mask!6466 newMap!16)))))

(declare-fun b!92324 () Bool)

(assert (=> b!92324 (= e!60189 (= (select (arr!1966 (_keys!4086 newMap!16)) (index!3173 lt!45173)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (=> b!92324 (and (bvsge (index!3173 lt!45173) #b00000000000000000000000000000000) (bvslt (index!3173 lt!45173) (size!2213 (_keys!4086 newMap!16))))))

(assert (= (and d!24367 res!46943) b!92323))

(assert (= (and b!92323 res!46942) b!92324))

(assert (=> d!24367 m!97909))

(assert (=> d!24367 m!98317))

(assert (=> d!24367 m!97909))

(declare-fun m!99411 () Bool)

(assert (=> d!24367 m!99411))

(assert (=> d!24367 m!98389))

(declare-fun m!99413 () Bool)

(assert (=> b!92323 m!99413))

(declare-fun m!99415 () Bool)

(assert (=> b!92324 m!99415))

(assert (=> bm!9018 d!24367))

(declare-fun d!24369 () Bool)

(assert (=> d!24369 (= (apply!87 lt!44640 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1257 (getValueByKey!144 (toList!774 lt!44640) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!3820 () Bool)

(assert (= bs!3820 d!24369))

(assert (=> bs!3820 m!98897))

(assert (=> bs!3820 m!98897))

(declare-fun m!99417 () Bool)

(assert (=> bs!3820 m!99417))

(assert (=> b!91574 d!24369))

(assert (=> b!91623 d!24281))

(declare-fun d!24371 () Bool)

(declare-fun e!60190 () Bool)

(assert (=> d!24371 e!60190))

(declare-fun res!46944 () Bool)

(assert (=> d!24371 (=> res!46944 e!60190)))

(declare-fun lt!45175 () Bool)

(assert (=> d!24371 (= res!46944 (not lt!45175))))

(declare-fun lt!45178 () Bool)

(assert (=> d!24371 (= lt!45175 lt!45178)))

(declare-fun lt!45176 () Unit!2738)

(declare-fun e!60191 () Unit!2738)

(assert (=> d!24371 (= lt!45176 e!60191)))

(declare-fun c!15394 () Bool)

(assert (=> d!24371 (= c!15394 lt!45178)))

(assert (=> d!24371 (= lt!45178 (containsKey!148 (toList!774 lt!44708) (_1!1155 lt!44520)))))

(assert (=> d!24371 (= (contains!784 lt!44708 (_1!1155 lt!44520)) lt!45175)))

(declare-fun b!92325 () Bool)

(declare-fun lt!45177 () Unit!2738)

(assert (=> b!92325 (= e!60191 lt!45177)))

(assert (=> b!92325 (= lt!45177 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 lt!44708) (_1!1155 lt!44520)))))

(assert (=> b!92325 (isDefined!98 (getValueByKey!144 (toList!774 lt!44708) (_1!1155 lt!44520)))))

(declare-fun b!92326 () Bool)

(declare-fun Unit!2772 () Unit!2738)

(assert (=> b!92326 (= e!60191 Unit!2772)))

(declare-fun b!92327 () Bool)

(assert (=> b!92327 (= e!60190 (isDefined!98 (getValueByKey!144 (toList!774 lt!44708) (_1!1155 lt!44520))))))

(assert (= (and d!24371 c!15394) b!92325))

(assert (= (and d!24371 (not c!15394)) b!92326))

(assert (= (and d!24371 (not res!46944)) b!92327))

(declare-fun m!99419 () Bool)

(assert (=> d!24371 m!99419))

(declare-fun m!99421 () Bool)

(assert (=> b!92325 m!99421))

(assert (=> b!92325 m!98239))

(assert (=> b!92325 m!98239))

(declare-fun m!99423 () Bool)

(assert (=> b!92325 m!99423))

(assert (=> b!92327 m!98239))

(assert (=> b!92327 m!98239))

(assert (=> b!92327 m!99423))

(assert (=> d!24075 d!24371))

(declare-fun b!92331 () Bool)

(declare-fun e!60193 () Option!150)

(assert (=> b!92331 (= e!60193 None!148)))

(declare-fun b!92329 () Bool)

(declare-fun e!60192 () Option!150)

(assert (=> b!92329 (= e!60192 e!60193)))

(declare-fun c!15396 () Bool)

(assert (=> b!92329 (= c!15396 (and ((_ is Cons!1577) lt!44707) (not (= (_1!1155 (h!2169 lt!44707)) (_1!1155 lt!44520)))))))

(declare-fun d!24373 () Bool)

(declare-fun c!15395 () Bool)

(assert (=> d!24373 (= c!15395 (and ((_ is Cons!1577) lt!44707) (= (_1!1155 (h!2169 lt!44707)) (_1!1155 lt!44520))))))

(assert (=> d!24373 (= (getValueByKey!144 lt!44707 (_1!1155 lt!44520)) e!60192)))

(declare-fun b!92328 () Bool)

(assert (=> b!92328 (= e!60192 (Some!149 (_2!1155 (h!2169 lt!44707))))))

(declare-fun b!92330 () Bool)

(assert (=> b!92330 (= e!60193 (getValueByKey!144 (t!5419 lt!44707) (_1!1155 lt!44520)))))

(assert (= (and d!24373 c!15395) b!92328))

(assert (= (and d!24373 (not c!15395)) b!92329))

(assert (= (and b!92329 c!15396) b!92330))

(assert (= (and b!92329 (not c!15396)) b!92331))

(declare-fun m!99425 () Bool)

(assert (=> b!92330 m!99425))

(assert (=> d!24075 d!24373))

(declare-fun d!24375 () Bool)

(assert (=> d!24375 (= (getValueByKey!144 lt!44707 (_1!1155 lt!44520)) (Some!149 (_2!1155 lt!44520)))))

(declare-fun lt!45179 () Unit!2738)

(assert (=> d!24375 (= lt!45179 (choose!553 lt!44707 (_1!1155 lt!44520) (_2!1155 lt!44520)))))

(declare-fun e!60194 () Bool)

(assert (=> d!24375 e!60194))

(declare-fun res!46945 () Bool)

(assert (=> d!24375 (=> (not res!46945) (not e!60194))))

(assert (=> d!24375 (= res!46945 (isStrictlySorted!296 lt!44707))))

(assert (=> d!24375 (= (lemmaContainsTupThenGetReturnValue!63 lt!44707 (_1!1155 lt!44520) (_2!1155 lt!44520)) lt!45179)))

(declare-fun b!92332 () Bool)

(declare-fun res!46946 () Bool)

(assert (=> b!92332 (=> (not res!46946) (not e!60194))))

(assert (=> b!92332 (= res!46946 (containsKey!148 lt!44707 (_1!1155 lt!44520)))))

(declare-fun b!92333 () Bool)

(assert (=> b!92333 (= e!60194 (contains!786 lt!44707 (tuple2!2291 (_1!1155 lt!44520) (_2!1155 lt!44520))))))

(assert (= (and d!24375 res!46945) b!92332))

(assert (= (and b!92332 res!46946) b!92333))

(assert (=> d!24375 m!98233))

(declare-fun m!99427 () Bool)

(assert (=> d!24375 m!99427))

(declare-fun m!99429 () Bool)

(assert (=> d!24375 m!99429))

(declare-fun m!99431 () Bool)

(assert (=> b!92332 m!99431))

(declare-fun m!99433 () Bool)

(assert (=> b!92333 m!99433))

(assert (=> d!24075 d!24375))

(declare-fun c!15399 () Bool)

(declare-fun b!92334 () Bool)

(declare-fun c!15398 () Bool)

(declare-fun e!60198 () List!1581)

(assert (=> b!92334 (= e!60198 (ite c!15398 (t!5419 (toList!774 lt!44519)) (ite c!15399 (Cons!1577 (h!2169 (toList!774 lt!44519)) (t!5419 (toList!774 lt!44519))) Nil!1578)))))

(declare-fun b!92335 () Bool)

(declare-fun e!60197 () List!1581)

(declare-fun call!9093 () List!1581)

(assert (=> b!92335 (= e!60197 call!9093)))

(declare-fun bm!9090 () Bool)

(declare-fun call!9094 () List!1581)

(declare-fun call!9095 () List!1581)

(assert (=> bm!9090 (= call!9094 call!9095)))

(declare-fun bm!9091 () Bool)

(declare-fun c!15397 () Bool)

(assert (=> bm!9091 (= call!9095 ($colon$colon!74 e!60198 (ite c!15397 (h!2169 (toList!774 lt!44519)) (tuple2!2291 (_1!1155 lt!44520) (_2!1155 lt!44520)))))))

(declare-fun c!15400 () Bool)

(assert (=> bm!9091 (= c!15400 c!15397)))

(declare-fun b!92336 () Bool)

(declare-fun e!60195 () List!1581)

(assert (=> b!92336 (= e!60195 call!9095)))

(declare-fun b!92337 () Bool)

(assert (=> b!92337 (= e!60197 call!9093)))

(declare-fun b!92338 () Bool)

(declare-fun e!60199 () List!1581)

(assert (=> b!92338 (= e!60199 call!9094)))

(declare-fun b!92339 () Bool)

(assert (=> b!92339 (= e!60198 (insertStrictlySorted!65 (t!5419 (toList!774 lt!44519)) (_1!1155 lt!44520) (_2!1155 lt!44520)))))

(declare-fun b!92340 () Bool)

(assert (=> b!92340 (= c!15399 (and ((_ is Cons!1577) (toList!774 lt!44519)) (bvsgt (_1!1155 (h!2169 (toList!774 lt!44519))) (_1!1155 lt!44520))))))

(assert (=> b!92340 (= e!60199 e!60197)))

(declare-fun bm!9092 () Bool)

(assert (=> bm!9092 (= call!9093 call!9094)))

(declare-fun b!92341 () Bool)

(declare-fun res!46948 () Bool)

(declare-fun e!60196 () Bool)

(assert (=> b!92341 (=> (not res!46948) (not e!60196))))

(declare-fun lt!45180 () List!1581)

(assert (=> b!92341 (= res!46948 (containsKey!148 lt!45180 (_1!1155 lt!44520)))))

(declare-fun b!92342 () Bool)

(assert (=> b!92342 (= e!60195 e!60199)))

(assert (=> b!92342 (= c!15398 (and ((_ is Cons!1577) (toList!774 lt!44519)) (= (_1!1155 (h!2169 (toList!774 lt!44519))) (_1!1155 lt!44520))))))

(declare-fun b!92343 () Bool)

(assert (=> b!92343 (= e!60196 (contains!786 lt!45180 (tuple2!2291 (_1!1155 lt!44520) (_2!1155 lt!44520))))))

(declare-fun d!24377 () Bool)

(assert (=> d!24377 e!60196))

(declare-fun res!46947 () Bool)

(assert (=> d!24377 (=> (not res!46947) (not e!60196))))

(assert (=> d!24377 (= res!46947 (isStrictlySorted!296 lt!45180))))

(assert (=> d!24377 (= lt!45180 e!60195)))

(assert (=> d!24377 (= c!15397 (and ((_ is Cons!1577) (toList!774 lt!44519)) (bvslt (_1!1155 (h!2169 (toList!774 lt!44519))) (_1!1155 lt!44520))))))

(assert (=> d!24377 (isStrictlySorted!296 (toList!774 lt!44519))))

(assert (=> d!24377 (= (insertStrictlySorted!65 (toList!774 lt!44519) (_1!1155 lt!44520) (_2!1155 lt!44520)) lt!45180)))

(assert (= (and d!24377 c!15397) b!92336))

(assert (= (and d!24377 (not c!15397)) b!92342))

(assert (= (and b!92342 c!15398) b!92338))

(assert (= (and b!92342 (not c!15398)) b!92340))

(assert (= (and b!92340 c!15399) b!92335))

(assert (= (and b!92340 (not c!15399)) b!92337))

(assert (= (or b!92335 b!92337) bm!9092))

(assert (= (or b!92338 bm!9092) bm!9090))

(assert (= (or b!92336 bm!9090) bm!9091))

(assert (= (and bm!9091 c!15400) b!92339))

(assert (= (and bm!9091 (not c!15400)) b!92334))

(assert (= (and d!24377 res!46947) b!92341))

(assert (= (and b!92341 res!46948) b!92343))

(declare-fun m!99435 () Bool)

(assert (=> b!92341 m!99435))

(declare-fun m!99437 () Bool)

(assert (=> b!92343 m!99437))

(declare-fun m!99439 () Bool)

(assert (=> b!92339 m!99439))

(declare-fun m!99441 () Bool)

(assert (=> bm!9091 m!99441))

(declare-fun m!99443 () Bool)

(assert (=> d!24377 m!99443))

(assert (=> d!24377 m!98475))

(assert (=> d!24075 d!24377))

(assert (=> bm!9012 d!24053))

(declare-fun d!24379 () Bool)

(declare-fun lt!45183 () Bool)

(declare-fun content!95 (List!1582) (InoxSet (_ BitVec 64)))

(assert (=> d!24379 (= lt!45183 (select (content!95 Nil!1579) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun e!60205 () Bool)

(assert (=> d!24379 (= lt!45183 e!60205)))

(declare-fun res!46953 () Bool)

(assert (=> d!24379 (=> (not res!46953) (not e!60205))))

(assert (=> d!24379 (= res!46953 ((_ is Cons!1578) Nil!1579))))

(assert (=> d!24379 (= (contains!787 Nil!1579 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) lt!45183)))

(declare-fun b!92348 () Bool)

(declare-fun e!60204 () Bool)

(assert (=> b!92348 (= e!60205 e!60204)))

(declare-fun res!46954 () Bool)

(assert (=> b!92348 (=> res!46954 e!60204)))

(assert (=> b!92348 (= res!46954 (= (h!2170 Nil!1579) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun b!92349 () Bool)

(assert (=> b!92349 (= e!60204 (contains!787 (t!5420 Nil!1579) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (= (and d!24379 res!46953) b!92348))

(assert (= (and b!92348 (not res!46954)) b!92349))

(declare-fun m!99445 () Bool)

(assert (=> d!24379 m!99445))

(assert (=> d!24379 m!97909))

(declare-fun m!99447 () Bool)

(assert (=> d!24379 m!99447))

(assert (=> b!92349 m!97909))

(declare-fun m!99449 () Bool)

(assert (=> b!92349 m!99449))

(assert (=> b!91814 d!24379))

(declare-fun d!24381 () Bool)

(declare-fun e!60206 () Bool)

(assert (=> d!24381 e!60206))

(declare-fun res!46955 () Bool)

(assert (=> d!24381 (=> res!46955 e!60206)))

(declare-fun lt!45184 () Bool)

(assert (=> d!24381 (= res!46955 (not lt!45184))))

(declare-fun lt!45187 () Bool)

(assert (=> d!24381 (= lt!45184 lt!45187)))

(declare-fun lt!45185 () Unit!2738)

(declare-fun e!60207 () Unit!2738)

(assert (=> d!24381 (= lt!45185 e!60207)))

(declare-fun c!15401 () Bool)

(assert (=> d!24381 (= c!15401 lt!45187)))

(assert (=> d!24381 (= lt!45187 (containsKey!148 (toList!774 lt!44640) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!24381 (= (contains!784 lt!44640 #b0000000000000000000000000000000000000000000000000000000000000000) lt!45184)))

(declare-fun b!92350 () Bool)

(declare-fun lt!45186 () Unit!2738)

(assert (=> b!92350 (= e!60207 lt!45186)))

(assert (=> b!92350 (= lt!45186 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 lt!44640) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!92350 (isDefined!98 (getValueByKey!144 (toList!774 lt!44640) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!92351 () Bool)

(declare-fun Unit!2773 () Unit!2738)

(assert (=> b!92351 (= e!60207 Unit!2773)))

(declare-fun b!92352 () Bool)

(assert (=> b!92352 (= e!60206 (isDefined!98 (getValueByKey!144 (toList!774 lt!44640) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!24381 c!15401) b!92350))

(assert (= (and d!24381 (not c!15401)) b!92351))

(assert (= (and d!24381 (not res!46955)) b!92352))

(declare-fun m!99451 () Bool)

(assert (=> d!24381 m!99451))

(declare-fun m!99453 () Bool)

(assert (=> b!92350 m!99453))

(assert (=> b!92350 m!99059))

(assert (=> b!92350 m!99059))

(declare-fun m!99455 () Bool)

(assert (=> b!92350 m!99455))

(assert (=> b!92352 m!99059))

(assert (=> b!92352 m!99059))

(assert (=> b!92352 m!99455))

(assert (=> bm!8935 d!24381))

(assert (=> bm!8940 d!24139))

(declare-fun d!24383 () Bool)

(declare-fun e!60208 () Bool)

(assert (=> d!24383 e!60208))

(declare-fun res!46956 () Bool)

(assert (=> d!24383 (=> res!46956 e!60208)))

(declare-fun lt!45188 () Bool)

(assert (=> d!24383 (= res!46956 (not lt!45188))))

(declare-fun lt!45191 () Bool)

(assert (=> d!24383 (= lt!45188 lt!45191)))

(declare-fun lt!45189 () Unit!2738)

(declare-fun e!60209 () Unit!2738)

(assert (=> d!24383 (= lt!45189 e!60209)))

(declare-fun c!15402 () Bool)

(assert (=> d!24383 (= c!15402 lt!45191)))

(assert (=> d!24383 (= lt!45191 (containsKey!148 (toList!774 lt!44678) (_1!1155 lt!44520)))))

(assert (=> d!24383 (= (contains!784 lt!44678 (_1!1155 lt!44520)) lt!45188)))

(declare-fun b!92353 () Bool)

(declare-fun lt!45190 () Unit!2738)

(assert (=> b!92353 (= e!60209 lt!45190)))

(assert (=> b!92353 (= lt!45190 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 lt!44678) (_1!1155 lt!44520)))))

(assert (=> b!92353 (isDefined!98 (getValueByKey!144 (toList!774 lt!44678) (_1!1155 lt!44520)))))

(declare-fun b!92354 () Bool)

(declare-fun Unit!2774 () Unit!2738)

(assert (=> b!92354 (= e!60209 Unit!2774)))

(declare-fun b!92355 () Bool)

(assert (=> b!92355 (= e!60208 (isDefined!98 (getValueByKey!144 (toList!774 lt!44678) (_1!1155 lt!44520))))))

(assert (= (and d!24383 c!15402) b!92353))

(assert (= (and d!24383 (not c!15402)) b!92354))

(assert (= (and d!24383 (not res!46956)) b!92355))

(declare-fun m!99457 () Bool)

(assert (=> d!24383 m!99457))

(declare-fun m!99459 () Bool)

(assert (=> b!92353 m!99459))

(assert (=> b!92353 m!98165))

(assert (=> b!92353 m!98165))

(declare-fun m!99461 () Bool)

(assert (=> b!92353 m!99461))

(assert (=> b!92355 m!98165))

(assert (=> b!92355 m!98165))

(assert (=> b!92355 m!99461))

(assert (=> d!24069 d!24383))

(declare-fun b!92359 () Bool)

(declare-fun e!60211 () Option!150)

(assert (=> b!92359 (= e!60211 None!148)))

(declare-fun b!92357 () Bool)

(declare-fun e!60210 () Option!150)

(assert (=> b!92357 (= e!60210 e!60211)))

(declare-fun c!15404 () Bool)

(assert (=> b!92357 (= c!15404 (and ((_ is Cons!1577) lt!44677) (not (= (_1!1155 (h!2169 lt!44677)) (_1!1155 lt!44520)))))))

(declare-fun d!24385 () Bool)

(declare-fun c!15403 () Bool)

(assert (=> d!24385 (= c!15403 (and ((_ is Cons!1577) lt!44677) (= (_1!1155 (h!2169 lt!44677)) (_1!1155 lt!44520))))))

(assert (=> d!24385 (= (getValueByKey!144 lt!44677 (_1!1155 lt!44520)) e!60210)))

(declare-fun b!92356 () Bool)

(assert (=> b!92356 (= e!60210 (Some!149 (_2!1155 (h!2169 lt!44677))))))

(declare-fun b!92358 () Bool)

(assert (=> b!92358 (= e!60211 (getValueByKey!144 (t!5419 lt!44677) (_1!1155 lt!44520)))))

(assert (= (and d!24385 c!15403) b!92356))

(assert (= (and d!24385 (not c!15403)) b!92357))

(assert (= (and b!92357 c!15404) b!92358))

(assert (= (and b!92357 (not c!15404)) b!92359))

(declare-fun m!99463 () Bool)

(assert (=> b!92358 m!99463))

(assert (=> d!24069 d!24385))

(declare-fun d!24387 () Bool)

(assert (=> d!24387 (= (getValueByKey!144 lt!44677 (_1!1155 lt!44520)) (Some!149 (_2!1155 lt!44520)))))

(declare-fun lt!45192 () Unit!2738)

(assert (=> d!24387 (= lt!45192 (choose!553 lt!44677 (_1!1155 lt!44520) (_2!1155 lt!44520)))))

(declare-fun e!60212 () Bool)

(assert (=> d!24387 e!60212))

(declare-fun res!46957 () Bool)

(assert (=> d!24387 (=> (not res!46957) (not e!60212))))

(assert (=> d!24387 (= res!46957 (isStrictlySorted!296 lt!44677))))

(assert (=> d!24387 (= (lemmaContainsTupThenGetReturnValue!63 lt!44677 (_1!1155 lt!44520) (_2!1155 lt!44520)) lt!45192)))

(declare-fun b!92360 () Bool)

(declare-fun res!46958 () Bool)

(assert (=> b!92360 (=> (not res!46958) (not e!60212))))

(assert (=> b!92360 (= res!46958 (containsKey!148 lt!44677 (_1!1155 lt!44520)))))

(declare-fun b!92361 () Bool)

(assert (=> b!92361 (= e!60212 (contains!786 lt!44677 (tuple2!2291 (_1!1155 lt!44520) (_2!1155 lt!44520))))))

(assert (= (and d!24387 res!46957) b!92360))

(assert (= (and b!92360 res!46958) b!92361))

(assert (=> d!24387 m!98159))

(declare-fun m!99465 () Bool)

(assert (=> d!24387 m!99465))

(declare-fun m!99467 () Bool)

(assert (=> d!24387 m!99467))

(declare-fun m!99469 () Bool)

(assert (=> b!92360 m!99469))

(declare-fun m!99471 () Bool)

(assert (=> b!92361 m!99471))

(assert (=> d!24069 d!24387))

(declare-fun c!15406 () Bool)

(declare-fun b!92362 () Bool)

(declare-fun c!15407 () Bool)

(declare-fun e!60216 () List!1581)

(assert (=> b!92362 (= e!60216 (ite c!15406 (t!5419 (toList!774 lt!44516)) (ite c!15407 (Cons!1577 (h!2169 (toList!774 lt!44516)) (t!5419 (toList!774 lt!44516))) Nil!1578)))))

(declare-fun b!92363 () Bool)

(declare-fun e!60215 () List!1581)

(declare-fun call!9096 () List!1581)

(assert (=> b!92363 (= e!60215 call!9096)))

(declare-fun bm!9093 () Bool)

(declare-fun call!9097 () List!1581)

(declare-fun call!9098 () List!1581)

(assert (=> bm!9093 (= call!9097 call!9098)))

(declare-fun bm!9094 () Bool)

(declare-fun c!15405 () Bool)

(assert (=> bm!9094 (= call!9098 ($colon$colon!74 e!60216 (ite c!15405 (h!2169 (toList!774 lt!44516)) (tuple2!2291 (_1!1155 lt!44520) (_2!1155 lt!44520)))))))

(declare-fun c!15408 () Bool)

(assert (=> bm!9094 (= c!15408 c!15405)))

(declare-fun b!92364 () Bool)

(declare-fun e!60213 () List!1581)

(assert (=> b!92364 (= e!60213 call!9098)))

(declare-fun b!92365 () Bool)

(assert (=> b!92365 (= e!60215 call!9096)))

(declare-fun b!92366 () Bool)

(declare-fun e!60217 () List!1581)

(assert (=> b!92366 (= e!60217 call!9097)))

(declare-fun b!92367 () Bool)

(assert (=> b!92367 (= e!60216 (insertStrictlySorted!65 (t!5419 (toList!774 lt!44516)) (_1!1155 lt!44520) (_2!1155 lt!44520)))))

(declare-fun b!92368 () Bool)

(assert (=> b!92368 (= c!15407 (and ((_ is Cons!1577) (toList!774 lt!44516)) (bvsgt (_1!1155 (h!2169 (toList!774 lt!44516))) (_1!1155 lt!44520))))))

(assert (=> b!92368 (= e!60217 e!60215)))

(declare-fun bm!9095 () Bool)

(assert (=> bm!9095 (= call!9096 call!9097)))

(declare-fun b!92369 () Bool)

(declare-fun res!46960 () Bool)

(declare-fun e!60214 () Bool)

(assert (=> b!92369 (=> (not res!46960) (not e!60214))))

(declare-fun lt!45193 () List!1581)

(assert (=> b!92369 (= res!46960 (containsKey!148 lt!45193 (_1!1155 lt!44520)))))

(declare-fun b!92370 () Bool)

(assert (=> b!92370 (= e!60213 e!60217)))

(assert (=> b!92370 (= c!15406 (and ((_ is Cons!1577) (toList!774 lt!44516)) (= (_1!1155 (h!2169 (toList!774 lt!44516))) (_1!1155 lt!44520))))))

(declare-fun b!92371 () Bool)

(assert (=> b!92371 (= e!60214 (contains!786 lt!45193 (tuple2!2291 (_1!1155 lt!44520) (_2!1155 lt!44520))))))

(declare-fun d!24389 () Bool)

(assert (=> d!24389 e!60214))

(declare-fun res!46959 () Bool)

(assert (=> d!24389 (=> (not res!46959) (not e!60214))))

(assert (=> d!24389 (= res!46959 (isStrictlySorted!296 lt!45193))))

(assert (=> d!24389 (= lt!45193 e!60213)))

(assert (=> d!24389 (= c!15405 (and ((_ is Cons!1577) (toList!774 lt!44516)) (bvslt (_1!1155 (h!2169 (toList!774 lt!44516))) (_1!1155 lt!44520))))))

(assert (=> d!24389 (isStrictlySorted!296 (toList!774 lt!44516))))

(assert (=> d!24389 (= (insertStrictlySorted!65 (toList!774 lt!44516) (_1!1155 lt!44520) (_2!1155 lt!44520)) lt!45193)))

(assert (= (and d!24389 c!15405) b!92364))

(assert (= (and d!24389 (not c!15405)) b!92370))

(assert (= (and b!92370 c!15406) b!92366))

(assert (= (and b!92370 (not c!15406)) b!92368))

(assert (= (and b!92368 c!15407) b!92363))

(assert (= (and b!92368 (not c!15407)) b!92365))

(assert (= (or b!92363 b!92365) bm!9095))

(assert (= (or b!92366 bm!9095) bm!9093))

(assert (= (or b!92364 bm!9093) bm!9094))

(assert (= (and bm!9094 c!15408) b!92367))

(assert (= (and bm!9094 (not c!15408)) b!92362))

(assert (= (and d!24389 res!46959) b!92369))

(assert (= (and b!92369 res!46960) b!92371))

(declare-fun m!99473 () Bool)

(assert (=> b!92369 m!99473))

(declare-fun m!99475 () Bool)

(assert (=> b!92371 m!99475))

(declare-fun m!99477 () Bool)

(assert (=> b!92367 m!99477))

(declare-fun m!99479 () Bool)

(assert (=> bm!9094 m!99479))

(declare-fun m!99481 () Bool)

(assert (=> d!24389 m!99481))

(declare-fun m!99483 () Bool)

(assert (=> d!24389 m!99483))

(assert (=> d!24069 d!24389))

(assert (=> bm!8946 d!24261))

(assert (=> d!24073 d!24141))

(declare-fun b!92372 () Bool)

(declare-fun e!60218 () (_ BitVec 32))

(declare-fun call!9099 () (_ BitVec 32))

(assert (=> b!92372 (= e!60218 (bvadd #b00000000000000000000000000000001 call!9099))))

(declare-fun b!92373 () Bool)

(assert (=> b!92373 (= e!60218 call!9099)))

(declare-fun d!24391 () Bool)

(declare-fun lt!45194 () (_ BitVec 32))

(assert (=> d!24391 (and (bvsge lt!45194 #b00000000000000000000000000000000) (bvsle lt!45194 (bvsub (size!2213 (_keys!4086 (_2!1156 lt!44506))) #b00000000000000000000000000000000)))))

(declare-fun e!60219 () (_ BitVec 32))

(assert (=> d!24391 (= lt!45194 e!60219)))

(declare-fun c!15410 () Bool)

(assert (=> d!24391 (= c!15410 (bvsge #b00000000000000000000000000000000 (size!2213 (_keys!4086 (_2!1156 lt!44506)))))))

(assert (=> d!24391 (and (bvsle #b00000000000000000000000000000000 (size!2213 (_keys!4086 (_2!1156 lt!44506)))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2213 (_keys!4086 (_2!1156 lt!44506))) (size!2213 (_keys!4086 (_2!1156 lt!44506)))))))

(assert (=> d!24391 (= (arrayCountValidKeys!0 (_keys!4086 (_2!1156 lt!44506)) #b00000000000000000000000000000000 (size!2213 (_keys!4086 (_2!1156 lt!44506)))) lt!45194)))

(declare-fun b!92374 () Bool)

(assert (=> b!92374 (= e!60219 e!60218)))

(declare-fun c!15409 () Bool)

(assert (=> b!92374 (= c!15409 (validKeyInArray!0 (select (arr!1966 (_keys!4086 (_2!1156 lt!44506))) #b00000000000000000000000000000000)))))

(declare-fun bm!9096 () Bool)

(assert (=> bm!9096 (= call!9099 (arrayCountValidKeys!0 (_keys!4086 (_2!1156 lt!44506)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2213 (_keys!4086 (_2!1156 lt!44506)))))))

(declare-fun b!92375 () Bool)

(assert (=> b!92375 (= e!60219 #b00000000000000000000000000000000)))

(assert (= (and d!24391 c!15410) b!92375))

(assert (= (and d!24391 (not c!15410)) b!92374))

(assert (= (and b!92374 c!15409) b!92372))

(assert (= (and b!92374 (not c!15409)) b!92373))

(assert (= (or b!92372 b!92373) bm!9096))

(assert (=> b!92374 m!98815))

(assert (=> b!92374 m!98815))

(assert (=> b!92374 m!98853))

(declare-fun m!99485 () Bool)

(assert (=> bm!9096 m!99485))

(assert (=> b!91590 d!24391))

(declare-fun d!24393 () Bool)

(assert (=> d!24393 (= (get!1256 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) from!355) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!91589 d!24393))

(declare-fun b!92379 () Bool)

(declare-fun e!60221 () Option!150)

(assert (=> b!92379 (= e!60221 None!148)))

(declare-fun b!92377 () Bool)

(declare-fun e!60220 () Option!150)

(assert (=> b!92377 (= e!60220 e!60221)))

(declare-fun c!15412 () Bool)

(assert (=> b!92377 (= c!15412 (and ((_ is Cons!1577) (toList!774 lt!44653)) (not (= (_1!1155 (h!2169 (toList!774 lt!44653))) (_1!1155 lt!44507)))))))

(declare-fun d!24395 () Bool)

(declare-fun c!15411 () Bool)

(assert (=> d!24395 (= c!15411 (and ((_ is Cons!1577) (toList!774 lt!44653)) (= (_1!1155 (h!2169 (toList!774 lt!44653))) (_1!1155 lt!44507))))))

(assert (=> d!24395 (= (getValueByKey!144 (toList!774 lt!44653) (_1!1155 lt!44507)) e!60220)))

(declare-fun b!92376 () Bool)

(assert (=> b!92376 (= e!60220 (Some!149 (_2!1155 (h!2169 (toList!774 lt!44653)))))))

(declare-fun b!92378 () Bool)

(assert (=> b!92378 (= e!60221 (getValueByKey!144 (t!5419 (toList!774 lt!44653)) (_1!1155 lt!44507)))))

(assert (= (and d!24395 c!15411) b!92376))

(assert (= (and d!24395 (not c!15411)) b!92377))

(assert (= (and b!92377 c!15412) b!92378))

(assert (= (and b!92377 (not c!15412)) b!92379))

(declare-fun m!99487 () Bool)

(assert (=> b!92378 m!99487))

(assert (=> b!91597 d!24395))

(declare-fun bm!9097 () Bool)

(declare-fun call!9103 () Bool)

(declare-fun lt!45215 () ListLongMap!1517)

(assert (=> bm!9097 (= call!9103 (contains!784 lt!45215 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!9099 () Bool)

(declare-fun call!9106 () ListLongMap!1517)

(declare-fun call!9105 () ListLongMap!1517)

(assert (=> bm!9099 (= call!9106 call!9105)))

(declare-fun b!92380 () Bool)

(declare-fun e!60231 () Bool)

(assert (=> b!92380 (= e!60231 (validKeyInArray!0 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!92381 () Bool)

(declare-fun e!60230 () ListLongMap!1517)

(declare-fun e!60228 () ListLongMap!1517)

(assert (=> b!92381 (= e!60230 e!60228)))

(declare-fun c!15417 () Bool)

(assert (=> b!92381 (= c!15417 (and (not (= (bvand (ite c!15246 (ite c!15242 (extraKeys!2237 newMap!16) lt!44805) (extraKeys!2237 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!15246 (ite c!15242 (extraKeys!2237 newMap!16) lt!44805) (extraKeys!2237 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!92382 () Bool)

(declare-fun e!60229 () Bool)

(declare-fun e!60223 () Bool)

(assert (=> b!92382 (= e!60229 e!60223)))

(declare-fun res!46967 () Bool)

(declare-fun call!9100 () Bool)

(assert (=> b!92382 (= res!46967 call!9100)))

(assert (=> b!92382 (=> (not res!46967) (not e!60223))))

(declare-fun b!92383 () Bool)

(declare-fun call!9102 () ListLongMap!1517)

(assert (=> b!92383 (= e!60228 call!9102)))

(declare-fun call!9104 () ListLongMap!1517)

(declare-fun call!9101 () ListLongMap!1517)

(declare-fun c!15413 () Bool)

(declare-fun bm!9100 () Bool)

(assert (=> bm!9100 (= call!9104 (+!129 (ite c!15413 call!9101 (ite c!15417 call!9105 call!9106)) (ite (or c!15413 c!15417) (tuple2!2291 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2294 newMap!16)) (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!15246 (ite c!15242 (minValue!2294 newMap!16) lt!44521) (minValue!2294 newMap!16))))))))

(declare-fun b!92384 () Bool)

(assert (=> b!92384 (= e!60223 (= (apply!87 lt!45215 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2294 newMap!16)))))

(declare-fun b!92385 () Bool)

(declare-fun e!60222 () ListLongMap!1517)

(assert (=> b!92385 (= e!60222 call!9106)))

(declare-fun b!92386 () Bool)

(declare-fun e!60224 () Bool)

(declare-fun e!60234 () Bool)

(assert (=> b!92386 (= e!60224 e!60234)))

(declare-fun res!46964 () Bool)

(assert (=> b!92386 (= res!46964 call!9103)))

(assert (=> b!92386 (=> (not res!46964) (not e!60234))))

(declare-fun b!92387 () Bool)

(declare-fun e!60232 () Unit!2738)

(declare-fun lt!45210 () Unit!2738)

(assert (=> b!92387 (= e!60232 lt!45210)))

(declare-fun lt!45199 () ListLongMap!1517)

(assert (=> b!92387 (= lt!45199 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (ite c!15246 (ite c!15242 (extraKeys!2237 newMap!16) lt!44805) (extraKeys!2237 newMap!16)) (zeroValue!2294 newMap!16) (ite c!15246 (ite c!15242 (minValue!2294 newMap!16) lt!44521) (minValue!2294 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!45196 () (_ BitVec 64))

(assert (=> b!92387 (= lt!45196 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!45211 () (_ BitVec 64))

(assert (=> b!92387 (= lt!45211 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!45214 () Unit!2738)

(assert (=> b!92387 (= lt!45214 (addStillContains!63 lt!45199 lt!45196 (zeroValue!2294 newMap!16) lt!45211))))

(assert (=> b!92387 (contains!784 (+!129 lt!45199 (tuple2!2291 lt!45196 (zeroValue!2294 newMap!16))) lt!45211)))

(declare-fun lt!45212 () Unit!2738)

(assert (=> b!92387 (= lt!45212 lt!45214)))

(declare-fun lt!45203 () ListLongMap!1517)

(assert (=> b!92387 (= lt!45203 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (ite c!15246 (ite c!15242 (extraKeys!2237 newMap!16) lt!44805) (extraKeys!2237 newMap!16)) (zeroValue!2294 newMap!16) (ite c!15246 (ite c!15242 (minValue!2294 newMap!16) lt!44521) (minValue!2294 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!45195 () (_ BitVec 64))

(assert (=> b!92387 (= lt!45195 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!45202 () (_ BitVec 64))

(assert (=> b!92387 (= lt!45202 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!45213 () Unit!2738)

(assert (=> b!92387 (= lt!45213 (addApplyDifferent!63 lt!45203 lt!45195 (ite c!15246 (ite c!15242 (minValue!2294 newMap!16) lt!44521) (minValue!2294 newMap!16)) lt!45202))))

(assert (=> b!92387 (= (apply!87 (+!129 lt!45203 (tuple2!2291 lt!45195 (ite c!15246 (ite c!15242 (minValue!2294 newMap!16) lt!44521) (minValue!2294 newMap!16)))) lt!45202) (apply!87 lt!45203 lt!45202))))

(declare-fun lt!45204 () Unit!2738)

(assert (=> b!92387 (= lt!45204 lt!45213)))

(declare-fun lt!45209 () ListLongMap!1517)

(assert (=> b!92387 (= lt!45209 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (ite c!15246 (ite c!15242 (extraKeys!2237 newMap!16) lt!44805) (extraKeys!2237 newMap!16)) (zeroValue!2294 newMap!16) (ite c!15246 (ite c!15242 (minValue!2294 newMap!16) lt!44521) (minValue!2294 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!45197 () (_ BitVec 64))

(assert (=> b!92387 (= lt!45197 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!45205 () (_ BitVec 64))

(assert (=> b!92387 (= lt!45205 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!45198 () Unit!2738)

(assert (=> b!92387 (= lt!45198 (addApplyDifferent!63 lt!45209 lt!45197 (zeroValue!2294 newMap!16) lt!45205))))

(assert (=> b!92387 (= (apply!87 (+!129 lt!45209 (tuple2!2291 lt!45197 (zeroValue!2294 newMap!16))) lt!45205) (apply!87 lt!45209 lt!45205))))

(declare-fun lt!45208 () Unit!2738)

(assert (=> b!92387 (= lt!45208 lt!45198)))

(declare-fun lt!45200 () ListLongMap!1517)

(assert (=> b!92387 (= lt!45200 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (ite c!15246 (ite c!15242 (extraKeys!2237 newMap!16) lt!44805) (extraKeys!2237 newMap!16)) (zeroValue!2294 newMap!16) (ite c!15246 (ite c!15242 (minValue!2294 newMap!16) lt!44521) (minValue!2294 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!45207 () (_ BitVec 64))

(assert (=> b!92387 (= lt!45207 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!45216 () (_ BitVec 64))

(assert (=> b!92387 (= lt!45216 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!92387 (= lt!45210 (addApplyDifferent!63 lt!45200 lt!45207 (ite c!15246 (ite c!15242 (minValue!2294 newMap!16) lt!44521) (minValue!2294 newMap!16)) lt!45216))))

(assert (=> b!92387 (= (apply!87 (+!129 lt!45200 (tuple2!2291 lt!45207 (ite c!15246 (ite c!15242 (minValue!2294 newMap!16) lt!44521) (minValue!2294 newMap!16)))) lt!45216) (apply!87 lt!45200 lt!45216))))

(declare-fun b!92388 () Bool)

(assert (=> b!92388 (= e!60229 (not call!9100))))

(declare-fun b!92389 () Bool)

(declare-fun e!60227 () Bool)

(assert (=> b!92389 (= e!60227 e!60224)))

(declare-fun c!15415 () Bool)

(assert (=> b!92389 (= c!15415 (not (= (bvand (ite c!15246 (ite c!15242 (extraKeys!2237 newMap!16) lt!44805) (extraKeys!2237 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!92390 () Bool)

(declare-fun e!60225 () Bool)

(assert (=> b!92390 (= e!60225 (= (apply!87 lt!45215 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)) (get!1254 (select (arr!1967 (_values!2389 newMap!16)) #b00000000000000000000000000000000) (dynLambda!365 (defaultEntry!2406 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!92390 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2214 (_values!2389 newMap!16))))))

(assert (=> b!92390 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))

(declare-fun b!92391 () Bool)

(assert (=> b!92391 (= e!60234 (= (apply!87 lt!45215 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!15246 (ite c!15242 (minValue!2294 newMap!16) lt!44521) (minValue!2294 newMap!16))))))

(declare-fun b!92392 () Bool)

(declare-fun e!60226 () Bool)

(assert (=> b!92392 (= e!60226 (validKeyInArray!0 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!24397 () Bool)

(assert (=> d!24397 e!60227))

(declare-fun res!46962 () Bool)

(assert (=> d!24397 (=> (not res!46962) (not e!60227))))

(assert (=> d!24397 (= res!46962 (or (bvsge #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))))

(declare-fun lt!45201 () ListLongMap!1517)

(assert (=> d!24397 (= lt!45215 lt!45201)))

(declare-fun lt!45206 () Unit!2738)

(assert (=> d!24397 (= lt!45206 e!60232)))

(declare-fun c!15414 () Bool)

(assert (=> d!24397 (= c!15414 e!60231)))

(declare-fun res!46963 () Bool)

(assert (=> d!24397 (=> (not res!46963) (not e!60231))))

(assert (=> d!24397 (= res!46963 (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))

(assert (=> d!24397 (= lt!45201 e!60230)))

(assert (=> d!24397 (= c!15413 (and (not (= (bvand (ite c!15246 (ite c!15242 (extraKeys!2237 newMap!16) lt!44805) (extraKeys!2237 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!15246 (ite c!15242 (extraKeys!2237 newMap!16) lt!44805) (extraKeys!2237 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!24397 (validMask!0 (mask!6466 newMap!16))))

(assert (=> d!24397 (= (getCurrentListMap!456 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (ite c!15246 (ite c!15242 (extraKeys!2237 newMap!16) lt!44805) (extraKeys!2237 newMap!16)) (zeroValue!2294 newMap!16) (ite c!15246 (ite c!15242 (minValue!2294 newMap!16) lt!44521) (minValue!2294 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)) lt!45215)))

(declare-fun bm!9098 () Bool)

(assert (=> bm!9098 (= call!9105 call!9101)))

(declare-fun b!92393 () Bool)

(declare-fun res!46966 () Bool)

(assert (=> b!92393 (=> (not res!46966) (not e!60227))))

(declare-fun e!60233 () Bool)

(assert (=> b!92393 (= res!46966 e!60233)))

(declare-fun res!46961 () Bool)

(assert (=> b!92393 (=> res!46961 e!60233)))

(assert (=> b!92393 (= res!46961 (not e!60226))))

(declare-fun res!46968 () Bool)

(assert (=> b!92393 (=> (not res!46968) (not e!60226))))

(assert (=> b!92393 (= res!46968 (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))

(declare-fun b!92394 () Bool)

(assert (=> b!92394 (= e!60224 (not call!9103))))

(declare-fun bm!9101 () Bool)

(assert (=> bm!9101 (= call!9100 (contains!784 lt!45215 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!92395 () Bool)

(declare-fun res!46965 () Bool)

(assert (=> b!92395 (=> (not res!46965) (not e!60227))))

(assert (=> b!92395 (= res!46965 e!60229)))

(declare-fun c!15416 () Bool)

(assert (=> b!92395 (= c!15416 (not (= (bvand (ite c!15246 (ite c!15242 (extraKeys!2237 newMap!16) lt!44805) (extraKeys!2237 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!92396 () Bool)

(assert (=> b!92396 (= e!60233 e!60225)))

(declare-fun res!46969 () Bool)

(assert (=> b!92396 (=> (not res!46969) (not e!60225))))

(assert (=> b!92396 (= res!46969 (contains!784 lt!45215 (select (arr!1966 (_keys!4086 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!92396 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))))))

(declare-fun c!15418 () Bool)

(declare-fun b!92397 () Bool)

(assert (=> b!92397 (= c!15418 (and (not (= (bvand (ite c!15246 (ite c!15242 (extraKeys!2237 newMap!16) lt!44805) (extraKeys!2237 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!15246 (ite c!15242 (extraKeys!2237 newMap!16) lt!44805) (extraKeys!2237 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!92397 (= e!60228 e!60222)))

(declare-fun b!92398 () Bool)

(declare-fun Unit!2775 () Unit!2738)

(assert (=> b!92398 (= e!60232 Unit!2775)))

(declare-fun b!92399 () Bool)

(assert (=> b!92399 (= e!60230 (+!129 call!9104 (tuple2!2291 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!15246 (ite c!15242 (minValue!2294 newMap!16) lt!44521) (minValue!2294 newMap!16)))))))

(declare-fun b!92400 () Bool)

(assert (=> b!92400 (= e!60222 call!9102)))

(declare-fun bm!9102 () Bool)

(assert (=> bm!9102 (= call!9101 (getCurrentListMapNoExtraKeys!93 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (ite c!15246 (ite c!15242 (extraKeys!2237 newMap!16) lt!44805) (extraKeys!2237 newMap!16)) (zeroValue!2294 newMap!16) (ite c!15246 (ite c!15242 (minValue!2294 newMap!16) lt!44521) (minValue!2294 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun bm!9103 () Bool)

(assert (=> bm!9103 (= call!9102 call!9104)))

(assert (= (and d!24397 c!15413) b!92399))

(assert (= (and d!24397 (not c!15413)) b!92381))

(assert (= (and b!92381 c!15417) b!92383))

(assert (= (and b!92381 (not c!15417)) b!92397))

(assert (= (and b!92397 c!15418) b!92400))

(assert (= (and b!92397 (not c!15418)) b!92385))

(assert (= (or b!92400 b!92385) bm!9099))

(assert (= (or b!92383 bm!9099) bm!9098))

(assert (= (or b!92383 b!92400) bm!9103))

(assert (= (or b!92399 bm!9098) bm!9102))

(assert (= (or b!92399 bm!9103) bm!9100))

(assert (= (and d!24397 res!46963) b!92380))

(assert (= (and d!24397 c!15414) b!92387))

(assert (= (and d!24397 (not c!15414)) b!92398))

(assert (= (and d!24397 res!46962) b!92393))

(assert (= (and b!92393 res!46968) b!92392))

(assert (= (and b!92393 (not res!46961)) b!92396))

(assert (= (and b!92396 res!46969) b!92390))

(assert (= (and b!92393 res!46966) b!92395))

(assert (= (and b!92395 c!15416) b!92382))

(assert (= (and b!92395 (not c!15416)) b!92388))

(assert (= (and b!92382 res!46967) b!92384))

(assert (= (or b!92382 b!92388) bm!9101))

(assert (= (and b!92395 res!46965) b!92389))

(assert (= (and b!92389 c!15415) b!92386))

(assert (= (and b!92389 (not c!15415)) b!92394))

(assert (= (and b!92386 res!46964) b!92391))

(assert (= (or b!92386 b!92394) bm!9097))

(declare-fun b_lambda!4073 () Bool)

(assert (=> (not b_lambda!4073) (not b!92390)))

(assert (=> b!92390 t!5428))

(declare-fun b_and!5597 () Bool)

(assert (= b_and!5593 (and (=> t!5428 result!3101) b_and!5597)))

(assert (=> b!92390 t!5430))

(declare-fun b_and!5599 () Bool)

(assert (= b_and!5595 (and (=> t!5430 result!3103) b_and!5599)))

(declare-fun m!99489 () Bool)

(assert (=> b!92391 m!99489))

(declare-fun m!99491 () Bool)

(assert (=> b!92387 m!99491))

(declare-fun m!99493 () Bool)

(assert (=> b!92387 m!99493))

(declare-fun m!99495 () Bool)

(assert (=> b!92387 m!99495))

(declare-fun m!99497 () Bool)

(assert (=> b!92387 m!99497))

(declare-fun m!99499 () Bool)

(assert (=> b!92387 m!99499))

(declare-fun m!99501 () Bool)

(assert (=> b!92387 m!99501))

(declare-fun m!99503 () Bool)

(assert (=> b!92387 m!99503))

(assert (=> b!92387 m!99501))

(declare-fun m!99505 () Bool)

(assert (=> b!92387 m!99505))

(assert (=> b!92387 m!98409))

(assert (=> b!92387 m!99497))

(declare-fun m!99507 () Bool)

(assert (=> b!92387 m!99507))

(declare-fun m!99509 () Bool)

(assert (=> b!92387 m!99509))

(declare-fun m!99511 () Bool)

(assert (=> b!92387 m!99511))

(declare-fun m!99513 () Bool)

(assert (=> b!92387 m!99513))

(declare-fun m!99515 () Bool)

(assert (=> b!92387 m!99515))

(declare-fun m!99517 () Bool)

(assert (=> b!92387 m!99517))

(assert (=> b!92387 m!99499))

(declare-fun m!99519 () Bool)

(assert (=> b!92387 m!99519))

(assert (=> b!92387 m!99491))

(declare-fun m!99521 () Bool)

(assert (=> b!92387 m!99521))

(declare-fun m!99523 () Bool)

(assert (=> bm!9100 m!99523))

(declare-fun m!99525 () Bool)

(assert (=> b!92384 m!99525))

(assert (=> b!92396 m!98409))

(assert (=> b!92396 m!98409))

(declare-fun m!99527 () Bool)

(assert (=> b!92396 m!99527))

(declare-fun m!99529 () Bool)

(assert (=> b!92399 m!99529))

(declare-fun m!99531 () Bool)

(assert (=> bm!9101 m!99531))

(declare-fun m!99533 () Bool)

(assert (=> bm!9097 m!99533))

(assert (=> bm!9102 m!99517))

(assert (=> b!92390 m!98409))

(assert (=> b!92390 m!98439))

(assert (=> b!92390 m!98441))

(assert (=> b!92390 m!98443))

(assert (=> b!92390 m!98409))

(declare-fun m!99535 () Bool)

(assert (=> b!92390 m!99535))

(assert (=> b!92390 m!98439))

(assert (=> b!92390 m!98441))

(assert (=> b!92392 m!98409))

(assert (=> b!92392 m!98409))

(assert (=> b!92392 m!98447))

(assert (=> b!92380 m!98409))

(assert (=> b!92380 m!98409))

(assert (=> b!92380 m!98447))

(assert (=> d!24397 m!98389))

(assert (=> bm!9005 d!24397))

(declare-fun d!24399 () Bool)

(declare-fun isEmpty!353 (List!1581) Bool)

(assert (=> d!24399 (= (isEmpty!351 lt!44673) (isEmpty!353 (toList!774 lt!44673)))))

(declare-fun bs!3821 () Bool)

(assert (= bs!3821 d!24399))

(declare-fun m!99537 () Bool)

(assert (=> bs!3821 m!99537))

(assert (=> b!91630 d!24399))

(declare-fun b!92404 () Bool)

(declare-fun e!60236 () Option!150)

(assert (=> b!92404 (= e!60236 None!148)))

(declare-fun b!92402 () Bool)

(declare-fun e!60235 () Option!150)

(assert (=> b!92402 (= e!60235 e!60236)))

(declare-fun c!15420 () Bool)

(assert (=> b!92402 (= c!15420 (and ((_ is Cons!1577) (toList!774 lt!44708)) (not (= (_1!1155 (h!2169 (toList!774 lt!44708))) (_1!1155 lt!44520)))))))

(declare-fun d!24401 () Bool)

(declare-fun c!15419 () Bool)

(assert (=> d!24401 (= c!15419 (and ((_ is Cons!1577) (toList!774 lt!44708)) (= (_1!1155 (h!2169 (toList!774 lt!44708))) (_1!1155 lt!44520))))))

(assert (=> d!24401 (= (getValueByKey!144 (toList!774 lt!44708) (_1!1155 lt!44520)) e!60235)))

(declare-fun b!92401 () Bool)

(assert (=> b!92401 (= e!60235 (Some!149 (_2!1155 (h!2169 (toList!774 lt!44708)))))))

(declare-fun b!92403 () Bool)

(assert (=> b!92403 (= e!60236 (getValueByKey!144 (t!5419 (toList!774 lt!44708)) (_1!1155 lt!44520)))))

(assert (= (and d!24401 c!15419) b!92401))

(assert (= (and d!24401 (not c!15419)) b!92402))

(assert (= (and b!92402 c!15420) b!92403))

(assert (= (and b!92402 (not c!15420)) b!92404))

(declare-fun m!99539 () Bool)

(assert (=> b!92403 m!99539))

(assert (=> b!91660 d!24401))

(declare-fun d!24403 () Bool)

(declare-fun res!46970 () Bool)

(declare-fun e!60237 () Bool)

(assert (=> d!24403 (=> (not res!46970) (not e!60237))))

(assert (=> d!24403 (= res!46970 (simpleValid!62 (v!2722 (underlying!315 thiss!992))))))

(assert (=> d!24403 (= (valid!355 (v!2722 (underlying!315 thiss!992))) e!60237)))

(declare-fun b!92405 () Bool)

(declare-fun res!46971 () Bool)

(assert (=> b!92405 (=> (not res!46971) (not e!60237))))

(assert (=> b!92405 (= res!46971 (= (arrayCountValidKeys!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000000 (size!2213 (_keys!4086 (v!2722 (underlying!315 thiss!992))))) (_size!451 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun b!92406 () Bool)

(declare-fun res!46972 () Bool)

(assert (=> b!92406 (=> (not res!46972) (not e!60237))))

(assert (=> b!92406 (= res!46972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4086 (v!2722 (underlying!315 thiss!992))) (mask!6466 (v!2722 (underlying!315 thiss!992)))))))

(declare-fun b!92407 () Bool)

(assert (=> b!92407 (= e!60237 (arrayNoDuplicates!0 (_keys!4086 (v!2722 (underlying!315 thiss!992))) #b00000000000000000000000000000000 Nil!1579))))

(assert (= (and d!24403 res!46970) b!92405))

(assert (= (and b!92405 res!46971) b!92406))

(assert (= (and b!92406 res!46972) b!92407))

(declare-fun m!99541 () Bool)

(assert (=> d!24403 m!99541))

(declare-fun m!99543 () Bool)

(assert (=> b!92405 m!99543))

(declare-fun m!99545 () Bool)

(assert (=> b!92406 m!99545))

(declare-fun m!99547 () Bool)

(assert (=> b!92407 m!99547))

(assert (=> d!24051 d!24403))

(declare-fun b!92442 () Bool)

(declare-fun res!46998 () Bool)

(declare-fun e!60260 () Bool)

(assert (=> b!92442 (=> (not res!46998) (not e!60260))))

(declare-fun call!9118 () Bool)

(assert (=> b!92442 (= res!46998 call!9118)))

(declare-fun e!60261 () Bool)

(assert (=> b!92442 (= e!60261 e!60260)))

(declare-fun b!92443 () Bool)

(declare-fun res!46999 () Bool)

(declare-fun e!60255 () Bool)

(assert (=> b!92443 (=> (not res!46999) (not e!60255))))

(declare-fun lt!45283 () tuple2!2292)

(assert (=> b!92443 (= res!46999 (valid!355 (_2!1156 lt!45283)))))

(declare-fun b!92444 () Bool)

(declare-fun res!46995 () Bool)

(assert (=> b!92444 (=> (not res!46995) (not e!60260))))

(declare-fun lt!45301 () SeekEntryResult!258)

(assert (=> b!92444 (= res!46995 (= (select (arr!1966 (_keys!4086 newMap!16)) (index!3172 lt!45301)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!92445 () Bool)

(declare-fun e!60259 () Unit!2738)

(declare-fun Unit!2776 () Unit!2738)

(assert (=> b!92445 (= e!60259 Unit!2776)))

(declare-fun lt!45292 () SeekEntryResult!258)

(declare-fun b!92446 () Bool)

(declare-fun e!60256 () Bool)

(assert (=> b!92446 (= e!60256 (= (select (arr!1966 (_keys!4086 newMap!16)) (index!3173 lt!45292)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun b!92447 () Bool)

(declare-fun e!60258 () Bool)

(declare-fun e!60257 () Bool)

(assert (=> b!92447 (= e!60258 e!60257)))

(declare-fun res!46991 () Bool)

(assert (=> b!92447 (= res!46991 call!9118)))

(assert (=> b!92447 (=> (not res!46991) (not e!60257))))

(declare-fun b!92448 () Bool)

(assert (=> b!92448 (= e!60255 (= (map!1224 (_2!1156 lt!45283)) (+!129 (map!1224 newMap!16) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521))))))

(declare-fun bm!9112 () Bool)

(declare-fun call!9115 () Bool)

(assert (=> bm!9112 (= call!9118 call!9115)))

(declare-fun b!92449 () Bool)

(assert (=> b!92449 (= e!60258 ((_ is Undefined!258) lt!45301))))

(declare-fun bm!9113 () Bool)

(declare-fun call!9117 () SeekEntryResult!258)

(assert (=> bm!9113 (= call!9117 (seekEntryOrOpen!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (_keys!4086 newMap!16) (mask!6466 newMap!16)))))

(declare-fun d!24405 () Bool)

(assert (=> d!24405 e!60255))

(declare-fun res!46993 () Bool)

(assert (=> d!24405 (=> (not res!46993) (not e!60255))))

(assert (=> d!24405 (= res!46993 (_1!1156 lt!45283))))

(assert (=> d!24405 (= lt!45283 (tuple2!2293 true (LongMapFixedSize!805 (defaultEntry!2406 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) (bvadd (_size!451 newMap!16) #b00000000000000000000000000000001) (array!4135 (store (arr!1966 (_keys!4086 newMap!16)) (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) (size!2213 (_keys!4086 newMap!16))) (array!4137 (store (arr!1967 (_values!2389 newMap!16)) (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816)) (ValueCellFull!948 lt!44521)) (size!2214 (_values!2389 newMap!16))) (_vacant!451 newMap!16))))))

(declare-fun lt!45291 () Unit!2738)

(declare-fun lt!45279 () Unit!2738)

(assert (=> d!24405 (= lt!45291 lt!45279)))

(declare-fun lt!45288 () array!4136)

(declare-fun lt!45290 () array!4134)

(assert (=> d!24405 (contains!784 (getCurrentListMap!456 lt!45290 lt!45288 (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)) (select (store (arr!1966 (_keys!4086 newMap!16)) (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816))))))

(assert (=> d!24405 (= lt!45279 (lemmaValidKeyInArrayIsInListMap!94 lt!45290 lt!45288 (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816)) (defaultEntry!2406 newMap!16)))))

(assert (=> d!24405 (= lt!45288 (array!4137 (store (arr!1967 (_values!2389 newMap!16)) (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816)) (ValueCellFull!948 lt!44521)) (size!2214 (_values!2389 newMap!16))))))

(assert (=> d!24405 (= lt!45290 (array!4135 (store (arr!1966 (_keys!4086 newMap!16)) (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) (size!2213 (_keys!4086 newMap!16))))))

(declare-fun lt!45295 () Unit!2738)

(declare-fun lt!45284 () Unit!2738)

(assert (=> d!24405 (= lt!45295 lt!45284)))

(declare-fun lt!45303 () array!4134)

(assert (=> d!24405 (= (arrayCountValidKeys!0 lt!45303 (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816)) (bvadd (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!4134 (_ BitVec 32)) Unit!2738)

(assert (=> d!24405 (= lt!45284 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!45303 (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816))))))

(assert (=> d!24405 (= lt!45303 (array!4135 (store (arr!1966 (_keys!4086 newMap!16)) (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) (size!2213 (_keys!4086 newMap!16))))))

(declare-fun lt!45302 () Unit!2738)

(declare-fun lt!45293 () Unit!2738)

(assert (=> d!24405 (= lt!45302 lt!45293)))

(declare-fun lt!45299 () array!4134)

(assert (=> d!24405 (arrayContainsKey!0 lt!45299 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(assert (=> d!24405 (= lt!45293 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!45299 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816))))))

(assert (=> d!24405 (= lt!45299 (array!4135 (store (arr!1966 (_keys!4086 newMap!16)) (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) (size!2213 (_keys!4086 newMap!16))))))

(declare-fun lt!45285 () Unit!2738)

(declare-fun lt!45306 () Unit!2738)

(assert (=> d!24405 (= lt!45285 lt!45306)))

(assert (=> d!24405 (= (+!129 (getCurrentListMap!456 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521)) (getCurrentListMap!456 (array!4135 (store (arr!1966 (_keys!4086 newMap!16)) (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) (size!2213 (_keys!4086 newMap!16))) (array!4137 (store (arr!1967 (_values!2389 newMap!16)) (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816)) (ValueCellFull!948 lt!44521)) (size!2214 (_values!2389 newMap!16))) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!22 (array!4134 array!4136 (_ BitVec 32) (_ BitVec 32) V!3091 V!3091 (_ BitVec 32) (_ BitVec 64) V!3091 Int) Unit!2738)

(assert (=> d!24405 (= lt!45306 (lemmaAddValidKeyToArrayThenAddPairToListMap!22 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521 (defaultEntry!2406 newMap!16)))))

(declare-fun lt!45294 () Unit!2738)

(declare-fun lt!45282 () Unit!2738)

(assert (=> d!24405 (= lt!45294 lt!45282)))

(assert (=> d!24405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4135 (store (arr!1966 (_keys!4086 newMap!16)) (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) (size!2213 (_keys!4086 newMap!16))) (mask!6466 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!4134 (_ BitVec 32) (_ BitVec 32)) Unit!2738)

(assert (=> d!24405 (= lt!45282 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (_keys!4086 newMap!16) (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816)) (mask!6466 newMap!16)))))

(declare-fun lt!45289 () Unit!2738)

(declare-fun lt!45281 () Unit!2738)

(assert (=> d!24405 (= lt!45289 lt!45281)))

(assert (=> d!24405 (= (arrayCountValidKeys!0 (array!4135 (store (arr!1966 (_keys!4086 newMap!16)) (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) (size!2213 (_keys!4086 newMap!16))) #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!4086 newMap!16) #b00000000000000000000000000000000 (size!2213 (_keys!4086 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!4134 (_ BitVec 32) (_ BitVec 64)) Unit!2738)

(assert (=> d!24405 (= lt!45281 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!4086 newMap!16) (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun lt!45277 () Unit!2738)

(declare-fun lt!45280 () Unit!2738)

(assert (=> d!24405 (= lt!45277 lt!45280)))

(declare-fun lt!45278 () (_ BitVec 32))

(declare-fun lt!45305 () List!1582)

(assert (=> d!24405 (arrayNoDuplicates!0 (array!4135 (store (arr!1966 (_keys!4086 newMap!16)) (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) (size!2213 (_keys!4086 newMap!16))) lt!45278 lt!45305)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!4134 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1582) Unit!2738)

(assert (=> d!24405 (= lt!45280 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!4086 newMap!16) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816)) lt!45278 lt!45305))))

(assert (=> d!24405 (= lt!45305 Nil!1579)))

(assert (=> d!24405 (= lt!45278 #b00000000000000000000000000000000)))

(declare-fun lt!45304 () Unit!2738)

(assert (=> d!24405 (= lt!45304 e!60259)))

(declare-fun c!15431 () Bool)

(assert (=> d!24405 (= c!15431 (arrayContainsKey!0 (_keys!4086 newMap!16) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!45298 () Unit!2738)

(declare-fun e!60254 () Unit!2738)

(assert (=> d!24405 (= lt!45298 e!60254)))

(declare-fun c!15432 () Bool)

(assert (=> d!24405 (= c!15432 (contains!784 (getCurrentListMap!456 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (=> d!24405 (valid!355 newMap!16)))

(assert (=> d!24405 (= (updateHelperNewKey!36 newMap!16 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) lt!44521 (ite c!15247 (index!3175 lt!44816) (index!3172 lt!44816))) lt!45283)))

(declare-fun b!92450 () Bool)

(declare-fun res!46992 () Bool)

(assert (=> b!92450 (=> (not res!46992) (not e!60255))))

(assert (=> b!92450 (= res!46992 (contains!784 (map!1224 (_2!1156 lt!45283)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(declare-fun b!92451 () Bool)

(declare-fun res!46997 () Bool)

(assert (=> b!92451 (= res!46997 call!9115)))

(assert (=> b!92451 (=> (not res!46997) (not e!60256))))

(declare-fun b!92452 () Bool)

(declare-fun call!9116 () Bool)

(assert (=> b!92452 (= e!60260 (not call!9116))))

(declare-fun bm!9114 () Bool)

(declare-fun c!15430 () Bool)

(assert (=> bm!9114 (= call!9115 (inRange!0 (ite c!15432 (index!3173 lt!45292) (ite c!15430 (index!3172 lt!45301) (index!3175 lt!45301))) (mask!6466 newMap!16)))))

(declare-fun b!92453 () Bool)

(assert (=> b!92453 (= e!60257 (not call!9116))))

(declare-fun b!92454 () Bool)

(declare-fun Unit!2777 () Unit!2738)

(assert (=> b!92454 (= e!60254 Unit!2777)))

(declare-fun lt!45297 () Unit!2738)

(assert (=> b!92454 (= lt!45297 (lemmaInListMapThenSeekEntryOrOpenFindsIt!36 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (defaultEntry!2406 newMap!16)))))

(assert (=> b!92454 (= lt!45292 call!9117)))

(declare-fun res!46994 () Bool)

(assert (=> b!92454 (= res!46994 ((_ is Found!258) lt!45292))))

(assert (=> b!92454 (=> (not res!46994) (not e!60256))))

(assert (=> b!92454 e!60256))

(declare-fun lt!45287 () Unit!2738)

(assert (=> b!92454 (= lt!45287 lt!45297)))

(assert (=> b!92454 false))

(declare-fun b!92455 () Bool)

(declare-fun res!46996 () Bool)

(assert (=> b!92455 (= res!46996 (= (select (arr!1966 (_keys!4086 newMap!16)) (index!3175 lt!45301)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!92455 (=> (not res!46996) (not e!60257))))

(declare-fun bm!9115 () Bool)

(assert (=> bm!9115 (= call!9116 (arrayContainsKey!0 (_keys!4086 newMap!16) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!92456 () Bool)

(declare-fun lt!45300 () Unit!2738)

(assert (=> b!92456 (= e!60254 lt!45300)))

(assert (=> b!92456 (= lt!45300 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!36 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) (defaultEntry!2406 newMap!16)))))

(assert (=> b!92456 (= lt!45301 call!9117)))

(assert (=> b!92456 (= c!15430 ((_ is MissingZero!258) lt!45301))))

(assert (=> b!92456 e!60261))

(declare-fun b!92457 () Bool)

(declare-fun c!15429 () Bool)

(assert (=> b!92457 (= c!15429 ((_ is MissingVacant!258) lt!45301))))

(assert (=> b!92457 (= e!60261 e!60258)))

(declare-fun b!92458 () Bool)

(declare-fun Unit!2778 () Unit!2738)

(assert (=> b!92458 (= e!60259 Unit!2778)))

(declare-fun lt!45296 () Unit!2738)

(declare-fun lemmaArrayContainsKeyThenInListMap!22 (array!4134 array!4136 (_ BitVec 32) (_ BitVec 32) V!3091 V!3091 (_ BitVec 64) (_ BitVec 32) Int) Unit!2738)

(assert (=> b!92458 (= lt!45296 (lemmaArrayContainsKeyThenInListMap!22 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)))))

(assert (=> b!92458 (contains!784 (getCurrentListMap!456 (_keys!4086 newMap!16) (_values!2389 newMap!16) (mask!6466 newMap!16) (extraKeys!2237 newMap!16) (zeroValue!2294 newMap!16) (minValue!2294 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2406 newMap!16)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355))))

(declare-fun lt!45286 () Unit!2738)

(assert (=> b!92458 (= lt!45286 lt!45296)))

(assert (=> b!92458 false))

(assert (= (and d!24405 c!15432) b!92454))

(assert (= (and d!24405 (not c!15432)) b!92456))

(assert (= (and b!92454 res!46994) b!92451))

(assert (= (and b!92451 res!46997) b!92446))

(assert (= (and b!92456 c!15430) b!92442))

(assert (= (and b!92456 (not c!15430)) b!92457))

(assert (= (and b!92442 res!46998) b!92444))

(assert (= (and b!92444 res!46995) b!92452))

(assert (= (and b!92457 c!15429) b!92447))

(assert (= (and b!92457 (not c!15429)) b!92449))

(assert (= (and b!92447 res!46991) b!92455))

(assert (= (and b!92455 res!46996) b!92453))

(assert (= (or b!92442 b!92447) bm!9112))

(assert (= (or b!92452 b!92453) bm!9115))

(assert (= (or b!92451 bm!9112) bm!9114))

(assert (= (or b!92454 b!92456) bm!9113))

(assert (= (and d!24405 c!15431) b!92458))

(assert (= (and d!24405 (not c!15431)) b!92445))

(assert (= (and d!24405 res!46993) b!92443))

(assert (= (and b!92443 res!46999) b!92450))

(assert (= (and b!92450 res!46992) b!92448))

(assert (=> bm!9115 m!97909))

(assert (=> bm!9115 m!98353))

(declare-fun m!99549 () Bool)

(assert (=> b!92455 m!99549))

(assert (=> bm!9113 m!97909))

(assert (=> bm!9113 m!98317))

(assert (=> b!92458 m!97909))

(declare-fun m!99551 () Bool)

(assert (=> b!92458 m!99551))

(assert (=> b!92458 m!98055))

(assert (=> b!92458 m!98055))

(assert (=> b!92458 m!97909))

(declare-fun m!99553 () Bool)

(assert (=> b!92458 m!99553))

(declare-fun m!99555 () Bool)

(assert (=> b!92443 m!99555))

(assert (=> b!92454 m!97909))

(assert (=> b!92454 m!98321))

(declare-fun m!99557 () Bool)

(assert (=> b!92448 m!99557))

(assert (=> b!92448 m!97973))

(assert (=> b!92448 m!97973))

(declare-fun m!99559 () Bool)

(assert (=> b!92448 m!99559))

(declare-fun m!99561 () Bool)

(assert (=> d!24405 m!99561))

(assert (=> d!24405 m!98055))

(assert (=> d!24405 m!99271))

(assert (=> d!24405 m!97909))

(declare-fun m!99563 () Bool)

(assert (=> d!24405 m!99563))

(assert (=> d!24405 m!97909))

(declare-fun m!99565 () Bool)

(assert (=> d!24405 m!99565))

(declare-fun m!99567 () Bool)

(assert (=> d!24405 m!99567))

(assert (=> d!24405 m!98055))

(assert (=> d!24405 m!98047))

(declare-fun m!99569 () Bool)

(assert (=> d!24405 m!99569))

(declare-fun m!99571 () Bool)

(assert (=> d!24405 m!99571))

(declare-fun m!99573 () Bool)

(assert (=> d!24405 m!99573))

(declare-fun m!99575 () Bool)

(assert (=> d!24405 m!99575))

(declare-fun m!99577 () Bool)

(assert (=> d!24405 m!99577))

(assert (=> d!24405 m!97909))

(declare-fun m!99579 () Bool)

(assert (=> d!24405 m!99579))

(assert (=> d!24405 m!99567))

(declare-fun m!99581 () Bool)

(assert (=> d!24405 m!99581))

(declare-fun m!99583 () Bool)

(assert (=> d!24405 m!99583))

(assert (=> d!24405 m!97909))

(assert (=> d!24405 m!98353))

(assert (=> d!24405 m!97969))

(declare-fun m!99585 () Bool)

(assert (=> d!24405 m!99585))

(declare-fun m!99587 () Bool)

(assert (=> d!24405 m!99587))

(assert (=> d!24405 m!97909))

(declare-fun m!99589 () Bool)

(assert (=> d!24405 m!99589))

(assert (=> d!24405 m!98055))

(assert (=> d!24405 m!97909))

(assert (=> d!24405 m!99553))

(assert (=> d!24405 m!97909))

(declare-fun m!99591 () Bool)

(assert (=> d!24405 m!99591))

(declare-fun m!99593 () Bool)

(assert (=> d!24405 m!99593))

(assert (=> d!24405 m!97909))

(declare-fun m!99595 () Bool)

(assert (=> d!24405 m!99595))

(assert (=> d!24405 m!99581))

(assert (=> b!92450 m!99557))

(assert (=> b!92450 m!99557))

(assert (=> b!92450 m!97909))

(declare-fun m!99597 () Bool)

(assert (=> b!92450 m!99597))

(assert (=> b!92456 m!97909))

(assert (=> b!92456 m!98315))

(declare-fun m!99599 () Bool)

(assert (=> b!92446 m!99599))

(declare-fun m!99601 () Bool)

(assert (=> bm!9114 m!99601))

(declare-fun m!99603 () Bool)

(assert (=> b!92444 m!99603))

(assert (=> bm!8997 d!24405))

(declare-fun d!24407 () Bool)

(declare-fun res!47004 () Bool)

(declare-fun e!60266 () Bool)

(assert (=> d!24407 (=> res!47004 e!60266)))

(assert (=> d!24407 (= res!47004 (and ((_ is Cons!1577) (toList!774 lt!44515)) (= (_1!1155 (h!2169 (toList!774 lt!44515))) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355))))))

(assert (=> d!24407 (= (containsKey!148 (toList!774 lt!44515) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)) e!60266)))

(declare-fun b!92463 () Bool)

(declare-fun e!60267 () Bool)

(assert (=> b!92463 (= e!60266 e!60267)))

(declare-fun res!47005 () Bool)

(assert (=> b!92463 (=> (not res!47005) (not e!60267))))

(assert (=> b!92463 (= res!47005 (and (or (not ((_ is Cons!1577) (toList!774 lt!44515))) (bvsle (_1!1155 (h!2169 (toList!774 lt!44515))) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355))) ((_ is Cons!1577) (toList!774 lt!44515)) (bvslt (_1!1155 (h!2169 (toList!774 lt!44515))) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355))))))

(declare-fun b!92464 () Bool)

(assert (=> b!92464 (= e!60267 (containsKey!148 (t!5419 (toList!774 lt!44515)) (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) from!355)))))

(assert (= (and d!24407 (not res!47004)) b!92463))

(assert (= (and b!92463 res!47005) b!92464))

(assert (=> b!92464 m!97909))

(declare-fun m!99605 () Bool)

(assert (=> b!92464 m!99605))

(assert (=> d!24093 d!24407))

(assert (=> b!91634 d!24129))

(declare-fun d!24409 () Bool)

(declare-fun e!60268 () Bool)

(assert (=> d!24409 e!60268))

(declare-fun res!47006 () Bool)

(assert (=> d!24409 (=> (not res!47006) (not e!60268))))

(declare-fun lt!45310 () ListLongMap!1517)

(assert (=> d!24409 (= res!47006 (contains!784 lt!45310 (_1!1155 (tuple2!2291 lt!44674 lt!44669))))))

(declare-fun lt!45309 () List!1581)

(assert (=> d!24409 (= lt!45310 (ListLongMap!1518 lt!45309))))

(declare-fun lt!45307 () Unit!2738)

(declare-fun lt!45308 () Unit!2738)

(assert (=> d!24409 (= lt!45307 lt!45308)))

(assert (=> d!24409 (= (getValueByKey!144 lt!45309 (_1!1155 (tuple2!2291 lt!44674 lt!44669))) (Some!149 (_2!1155 (tuple2!2291 lt!44674 lt!44669))))))

(assert (=> d!24409 (= lt!45308 (lemmaContainsTupThenGetReturnValue!63 lt!45309 (_1!1155 (tuple2!2291 lt!44674 lt!44669)) (_2!1155 (tuple2!2291 lt!44674 lt!44669))))))

(assert (=> d!24409 (= lt!45309 (insertStrictlySorted!65 (toList!774 lt!44670) (_1!1155 (tuple2!2291 lt!44674 lt!44669)) (_2!1155 (tuple2!2291 lt!44674 lt!44669))))))

(assert (=> d!24409 (= (+!129 lt!44670 (tuple2!2291 lt!44674 lt!44669)) lt!45310)))

(declare-fun b!92465 () Bool)

(declare-fun res!47007 () Bool)

(assert (=> b!92465 (=> (not res!47007) (not e!60268))))

(assert (=> b!92465 (= res!47007 (= (getValueByKey!144 (toList!774 lt!45310) (_1!1155 (tuple2!2291 lt!44674 lt!44669))) (Some!149 (_2!1155 (tuple2!2291 lt!44674 lt!44669)))))))

(declare-fun b!92466 () Bool)

(assert (=> b!92466 (= e!60268 (contains!786 (toList!774 lt!45310) (tuple2!2291 lt!44674 lt!44669)))))

(assert (= (and d!24409 res!47006) b!92465))

(assert (= (and b!92465 res!47007) b!92466))

(declare-fun m!99607 () Bool)

(assert (=> d!24409 m!99607))

(declare-fun m!99609 () Bool)

(assert (=> d!24409 m!99609))

(declare-fun m!99611 () Bool)

(assert (=> d!24409 m!99611))

(declare-fun m!99613 () Bool)

(assert (=> d!24409 m!99613))

(declare-fun m!99615 () Bool)

(assert (=> b!92465 m!99615))

(declare-fun m!99617 () Bool)

(assert (=> b!92466 m!99617))

(assert (=> b!91634 d!24409))

(declare-fun d!24411 () Bool)

(declare-fun e!60269 () Bool)

(assert (=> d!24411 e!60269))

(declare-fun res!47008 () Bool)

(assert (=> d!24411 (=> (not res!47008) (not e!60269))))

(declare-fun lt!45314 () ListLongMap!1517)

(assert (=> d!24411 (= res!47008 (contains!784 lt!45314 (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!45313 () List!1581)

(assert (=> d!24411 (= lt!45314 (ListLongMap!1518 lt!45313))))

(declare-fun lt!45311 () Unit!2738)

(declare-fun lt!45312 () Unit!2738)

(assert (=> d!24411 (= lt!45311 lt!45312)))

(assert (=> d!24411 (= (getValueByKey!144 lt!45313 (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!149 (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!24411 (= lt!45312 (lemmaContainsTupThenGetReturnValue!63 lt!45313 (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!24411 (= lt!45313 (insertStrictlySorted!65 (toList!774 call!8943) (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!24411 (= (+!129 call!8943 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!45314)))

(declare-fun b!92467 () Bool)

(declare-fun res!47009 () Bool)

(assert (=> b!92467 (=> (not res!47009) (not e!60269))))

(assert (=> b!92467 (= res!47009 (= (getValueByKey!144 (toList!774 lt!45314) (_1!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!149 (_2!1155 (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!92468 () Bool)

(assert (=> b!92468 (= e!60269 (contains!786 (toList!774 lt!45314) (tuple2!2291 (select (arr!1966 (_keys!4086 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1254 (select (arr!1967 (_values!2389 (v!2722 (underlying!315 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!365 (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!24411 res!47008) b!92467))

(assert (= (and b!92467 res!47009) b!92468))

(declare-fun m!99619 () Bool)

(assert (=> d!24411 m!99619))

(declare-fun m!99621 () Bool)

(assert (=> d!24411 m!99621))

(declare-fun m!99623 () Bool)

(assert (=> d!24411 m!99623))

(declare-fun m!99625 () Bool)

(assert (=> d!24411 m!99625))

(declare-fun m!99627 () Bool)

(assert (=> b!92467 m!99627))

(declare-fun m!99629 () Bool)

(assert (=> b!92468 m!99629))

(assert (=> b!91634 d!24411))

(declare-fun d!24413 () Bool)

(assert (=> d!24413 (not (contains!784 (+!129 lt!44670 (tuple2!2291 lt!44674 lt!44669)) lt!44672))))

(declare-fun lt!45317 () Unit!2738)

(declare-fun choose!563 (ListLongMap!1517 (_ BitVec 64) V!3091 (_ BitVec 64)) Unit!2738)

(assert (=> d!24413 (= lt!45317 (choose!563 lt!44670 lt!44674 lt!44669 lt!44672))))

(declare-fun e!60272 () Bool)

(assert (=> d!24413 e!60272))

(declare-fun res!47012 () Bool)

(assert (=> d!24413 (=> (not res!47012) (not e!60272))))

(assert (=> d!24413 (= res!47012 (not (contains!784 lt!44670 lt!44672)))))

(assert (=> d!24413 (= (addStillNotContains!38 lt!44670 lt!44674 lt!44669 lt!44672) lt!45317)))

(declare-fun b!92472 () Bool)

(assert (=> b!92472 (= e!60272 (not (= lt!44674 lt!44672)))))

(assert (= (and d!24413 res!47012) b!92472))

(assert (=> d!24413 m!98153))

(assert (=> d!24413 m!98153))

(assert (=> d!24413 m!98155))

(declare-fun m!99631 () Bool)

(assert (=> d!24413 m!99631))

(declare-fun m!99633 () Bool)

(assert (=> d!24413 m!99633))

(assert (=> b!91634 d!24413))

(declare-fun d!24415 () Bool)

(declare-fun e!60273 () Bool)

(assert (=> d!24415 e!60273))

(declare-fun res!47013 () Bool)

(assert (=> d!24415 (=> res!47013 e!60273)))

(declare-fun lt!45318 () Bool)

(assert (=> d!24415 (= res!47013 (not lt!45318))))

(declare-fun lt!45321 () Bool)

(assert (=> d!24415 (= lt!45318 lt!45321)))

(declare-fun lt!45319 () Unit!2738)

(declare-fun e!60274 () Unit!2738)

(assert (=> d!24415 (= lt!45319 e!60274)))

(declare-fun c!15433 () Bool)

(assert (=> d!24415 (= c!15433 lt!45321)))

(assert (=> d!24415 (= lt!45321 (containsKey!148 (toList!774 (+!129 lt!44670 (tuple2!2291 lt!44674 lt!44669))) lt!44672))))

(assert (=> d!24415 (= (contains!784 (+!129 lt!44670 (tuple2!2291 lt!44674 lt!44669)) lt!44672) lt!45318)))

(declare-fun b!92473 () Bool)

(declare-fun lt!45320 () Unit!2738)

(assert (=> b!92473 (= e!60274 lt!45320)))

(assert (=> b!92473 (= lt!45320 (lemmaContainsKeyImpliesGetValueByKeyDefined!97 (toList!774 (+!129 lt!44670 (tuple2!2291 lt!44674 lt!44669))) lt!44672))))

(assert (=> b!92473 (isDefined!98 (getValueByKey!144 (toList!774 (+!129 lt!44670 (tuple2!2291 lt!44674 lt!44669))) lt!44672))))

(declare-fun b!92474 () Bool)

(declare-fun Unit!2779 () Unit!2738)

(assert (=> b!92474 (= e!60274 Unit!2779)))

(declare-fun b!92475 () Bool)

(assert (=> b!92475 (= e!60273 (isDefined!98 (getValueByKey!144 (toList!774 (+!129 lt!44670 (tuple2!2291 lt!44674 lt!44669))) lt!44672)))))

(assert (= (and d!24415 c!15433) b!92473))

(assert (= (and d!24415 (not c!15433)) b!92474))

(assert (= (and d!24415 (not res!47013)) b!92475))

(declare-fun m!99635 () Bool)

(assert (=> d!24415 m!99635))

(declare-fun m!99637 () Bool)

(assert (=> b!92473 m!99637))

(declare-fun m!99639 () Bool)

(assert (=> b!92473 m!99639))

(assert (=> b!92473 m!99639))

(declare-fun m!99641 () Bool)

(assert (=> b!92473 m!99641))

(assert (=> b!92475 m!99639))

(assert (=> b!92475 m!99639))

(assert (=> b!92475 m!99641))

(assert (=> b!91634 d!24415))

(declare-fun b!92479 () Bool)

(declare-fun e!60276 () Option!150)

(assert (=> b!92479 (= e!60276 None!148)))

(declare-fun b!92477 () Bool)

(declare-fun e!60275 () Option!150)

(assert (=> b!92477 (= e!60275 e!60276)))

(declare-fun c!15435 () Bool)

(assert (=> b!92477 (= c!15435 (and ((_ is Cons!1577) (toList!774 lt!44678)) (not (= (_1!1155 (h!2169 (toList!774 lt!44678))) (_1!1155 lt!44520)))))))

(declare-fun d!24417 () Bool)

(declare-fun c!15434 () Bool)

(assert (=> d!24417 (= c!15434 (and ((_ is Cons!1577) (toList!774 lt!44678)) (= (_1!1155 (h!2169 (toList!774 lt!44678))) (_1!1155 lt!44520))))))

(assert (=> d!24417 (= (getValueByKey!144 (toList!774 lt!44678) (_1!1155 lt!44520)) e!60275)))

(declare-fun b!92476 () Bool)

(assert (=> b!92476 (= e!60275 (Some!149 (_2!1155 (h!2169 (toList!774 lt!44678)))))))

(declare-fun b!92478 () Bool)

(assert (=> b!92478 (= e!60276 (getValueByKey!144 (t!5419 (toList!774 lt!44678)) (_1!1155 lt!44520)))))

(assert (= (and d!24417 c!15434) b!92476))

(assert (= (and d!24417 (not c!15434)) b!92477))

(assert (= (and b!92477 c!15435) b!92478))

(assert (= (and b!92477 (not c!15435)) b!92479))

(declare-fun m!99643 () Bool)

(assert (=> b!92478 m!99643))

(assert (=> b!91635 d!24417))

(declare-fun b!92481 () Bool)

(declare-fun e!60277 () Bool)

(assert (=> b!92481 (= e!60277 tp_is_empty!2583)))

(declare-fun condMapEmpty!3583 () Bool)

(declare-fun mapDefault!3583 () ValueCell!948)

(assert (=> mapNonEmpty!3582 (= condMapEmpty!3583 (= mapRest!3582 ((as const (Array (_ BitVec 32) ValueCell!948)) mapDefault!3583)))))

(declare-fun mapRes!3583 () Bool)

(assert (=> mapNonEmpty!3582 (= tp!9270 (and e!60277 mapRes!3583))))

(declare-fun b!92480 () Bool)

(declare-fun e!60278 () Bool)

(assert (=> b!92480 (= e!60278 tp_is_empty!2583)))

(declare-fun mapIsEmpty!3583 () Bool)

(assert (=> mapIsEmpty!3583 mapRes!3583))

(declare-fun mapNonEmpty!3583 () Bool)

(declare-fun tp!9271 () Bool)

(assert (=> mapNonEmpty!3583 (= mapRes!3583 (and tp!9271 e!60278))))

(declare-fun mapValue!3583 () ValueCell!948)

(declare-fun mapRest!3583 () (Array (_ BitVec 32) ValueCell!948))

(declare-fun mapKey!3583 () (_ BitVec 32))

(assert (=> mapNonEmpty!3583 (= mapRest!3582 (store mapRest!3583 mapKey!3583 mapValue!3583))))

(assert (= (and mapNonEmpty!3582 condMapEmpty!3583) mapIsEmpty!3583))

(assert (= (and mapNonEmpty!3582 (not condMapEmpty!3583)) mapNonEmpty!3583))

(assert (= (and mapNonEmpty!3583 ((_ is ValueCellFull!948) mapValue!3583)) b!92480))

(assert (= (and mapNonEmpty!3582 ((_ is ValueCellFull!948) mapDefault!3583)) b!92481))

(declare-fun m!99645 () Bool)

(assert (=> mapNonEmpty!3583 m!99645))

(declare-fun b!92483 () Bool)

(declare-fun e!60279 () Bool)

(assert (=> b!92483 (= e!60279 tp_is_empty!2583)))

(declare-fun condMapEmpty!3584 () Bool)

(declare-fun mapDefault!3584 () ValueCell!948)

(assert (=> mapNonEmpty!3581 (= condMapEmpty!3584 (= mapRest!3581 ((as const (Array (_ BitVec 32) ValueCell!948)) mapDefault!3584)))))

(declare-fun mapRes!3584 () Bool)

(assert (=> mapNonEmpty!3581 (= tp!9269 (and e!60279 mapRes!3584))))

(declare-fun b!92482 () Bool)

(declare-fun e!60280 () Bool)

(assert (=> b!92482 (= e!60280 tp_is_empty!2583)))

(declare-fun mapIsEmpty!3584 () Bool)

(assert (=> mapIsEmpty!3584 mapRes!3584))

(declare-fun mapNonEmpty!3584 () Bool)

(declare-fun tp!9272 () Bool)

(assert (=> mapNonEmpty!3584 (= mapRes!3584 (and tp!9272 e!60280))))

(declare-fun mapKey!3584 () (_ BitVec 32))

(declare-fun mapValue!3584 () ValueCell!948)

(declare-fun mapRest!3584 () (Array (_ BitVec 32) ValueCell!948))

(assert (=> mapNonEmpty!3584 (= mapRest!3581 (store mapRest!3584 mapKey!3584 mapValue!3584))))

(assert (= (and mapNonEmpty!3581 condMapEmpty!3584) mapIsEmpty!3584))

(assert (= (and mapNonEmpty!3581 (not condMapEmpty!3584)) mapNonEmpty!3584))

(assert (= (and mapNonEmpty!3584 ((_ is ValueCellFull!948) mapValue!3584)) b!92482))

(assert (= (and mapNonEmpty!3581 ((_ is ValueCellFull!948) mapDefault!3584)) b!92483))

(declare-fun m!99647 () Bool)

(assert (=> mapNonEmpty!3584 m!99647))

(declare-fun b_lambda!4075 () Bool)

(assert (= b_lambda!4071 (or (and b!91424 b_free!2333 (= (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) (defaultEntry!2406 newMap!16))) (and b!91420 b_free!2335) b_lambda!4075)))

(declare-fun b_lambda!4077 () Bool)

(assert (= b_lambda!4069 (or (and b!91424 b_free!2333) (and b!91420 b_free!2335 (= (defaultEntry!2406 newMap!16) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))))) b_lambda!4077)))

(declare-fun b_lambda!4079 () Bool)

(assert (= b_lambda!4057 (or (and b!91424 b_free!2333 (= (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) (defaultEntry!2406 newMap!16))) (and b!91420 b_free!2335) b_lambda!4079)))

(declare-fun b_lambda!4081 () Bool)

(assert (= b_lambda!4059 (or (and b!91424 b_free!2333 (= (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) (defaultEntry!2406 newMap!16))) (and b!91420 b_free!2335) b_lambda!4081)))

(declare-fun b_lambda!4083 () Bool)

(assert (= b_lambda!4067 (or (and b!91424 b_free!2333) (and b!91420 b_free!2335 (= (defaultEntry!2406 newMap!16) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))))) b_lambda!4083)))

(declare-fun b_lambda!4085 () Bool)

(assert (= b_lambda!4061 (or (and b!91424 b_free!2333) (and b!91420 b_free!2335 (= (defaultEntry!2406 newMap!16) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))))) b_lambda!4085)))

(declare-fun b_lambda!4087 () Bool)

(assert (= b_lambda!4063 (or (and b!91424 b_free!2333) (and b!91420 b_free!2335 (= (defaultEntry!2406 newMap!16) (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))))) b_lambda!4087)))

(declare-fun b_lambda!4089 () Bool)

(assert (= b_lambda!4073 (or (and b!91424 b_free!2333 (= (defaultEntry!2406 (v!2722 (underlying!315 thiss!992))) (defaultEntry!2406 newMap!16))) (and b!91420 b_free!2335) b_lambda!4089)))

(check-sat (not bm!9044) (not b!92018) (not d!24413) (not b!92327) (not d!24303) (not b!92295) (not b!92467) (not bm!9091) (not b!92350) (not b!91971) (not b!92254) (not b!92186) (not b!91833) (not b!92333) (not b!92293) (not d!24185) (not b!91941) (not d!24243) (not bm!9072) (not d!24197) (not d!24325) (not b!92047) (not d!24319) (not b!92078) (not b_next!2333) (not b!92290) (not d!24157) (not b!92367) (not b!91950) (not b!92227) (not b!92285) (not b!92066) (not d!24351) (not b!91944) (not bm!9065) (not b!92146) (not b!92301) (not b!91858) (not d!24329) (not d!24171) (not b!92013) (not d!24119) (not b!92387) (not d!24375) (not b!92371) (not b!91961) (not bm!9096) (not d!24405) (not bm!9051) (not b!91933) (not b!92090) (not b!92450) (not mapNonEmpty!3583) (not d!24291) (not d!24271) (not d!24335) (not b!92016) (not b!92390) (not b!92302) (not d!24357) (not d!24343) (not b_lambda!4089) (not d!24349) (not b_lambda!4085) (not b!92137) (not b!91962) (not d!24257) (not b!91960) (not b!92119) (not d!24305) (not b!92456) (not b!92170) (not bm!9028) (not b!92216) (not bm!9083) (not b!92244) (not b!92123) (not b!92094) (not d!24347) (not d!24415) (not b!92352) (not b!92048) (not d!24183) (not b_lambda!4039) (not b!92246) (not b!91915) (not b!92143) (not b!92109) (not d!24369) (not b!92089) (not b_lambda!4087) (not d!24309) (not d!24247) tp_is_empty!2583 (not d!24377) (not d!24301) (not d!24219) (not b!92391) (not d!24109) (not b_lambda!4065) (not b!92464) (not b!92065) (not b!92037) (not bm!9114) (not b!92162) (not b!92369) (not b!92140) (not bm!9071) (not d!24355) (not d!24143) (not b!92358) (not b!91856) (not d!24261) (not bm!9043) (not b!92454) (not d!24307) (not b!92190) (not b!92232) (not b!92289) (not b!92110) (not b!92251) (not b!92325) (not b!92339) (not d!24117) (not b!92271) (not d!24315) (not d!24371) (not d!24277) (not b!92262) (not b!91887) (not b!92209) (not b!92274) (not d!24203) (not d!24213) (not bm!9080) (not b!92160) (not d!24339) (not b!92343) (not b!92284) (not b!92267) (not b!92031) (not b!92097) (not bm!9064) (not b!92176) (not bm!9059) (not d!24403) (not b!92204) (not d!24259) (not b!91937) (not b!92092) (not b!92040) (not b!92056) (not bm!9027) (not d!24365) (not b!92355) (not b!92341) (not b_lambda!4055) (not bm!9026) (not b!92083) (not b!92058) (not d!24381) (not b!92224) (not d!24273) (not b!91867) (not b!92473) (not b!92223) (not b!92245) (not b!92249) (not d!24139) (not b!92069) (not b!92155) (not b!92164) (not bm!9078) (not d!24265) (not b!92108) (not b!92129) (not bm!9037) (not b!92349) (not d!24223) (not b_lambda!4083) (not bm!9101) (not d!24389) (not d!24263) (not b!92214) (not b!92286) (not b!92185) (not b!92247) (not d!24397) (not b!91947) (not b!91982) (not b!92281) (not d!24345) (not d!24233) (not b!92148) (not b!92255) (not b!92396) (not d!24353) (not d!24399) (not b_next!2335) (not b!92206) (not d!24229) (not b!91945) (not b!92161) (not b!92332) (not bm!9039) (not b!92323) (not d!24251) (not b!92142) (not d!24195) (not d!24331) (not b!91942) (not b_lambda!4081) (not d!24169) (not b!92360) (not b!92147) (not b!92075) (not b!92248) b_and!5597 (not d!24189) (not b!92117) (not b!92071) (not d!24327) (not d!24127) (not b!92151) (not b!91853) (not d!24123) (not b!92139) (not b!92443) (not b!92468) (not d!24133) (not d!24205) (not d!24387) (not d!24411) (not b!92403) (not b!92448) (not d!24149) (not d!24121) (not d!24241) (not b!92233) (not b!92070) (not d!24285) (not b!92033) (not b!91869) (not bm!9097) (not bm!9046) (not b!91850) (not b!92067) (not b!92187) (not d!24253) (not d!24323) (not d!24321) (not b!92399) (not b!92042) (not bm!9069) (not b!92406) (not b!91886) (not b!92079) (not b!92305) (not d!24379) (not bm!9060) (not bm!9052) (not b!92208) (not b!92025) (not d!24179) (not b!91880) (not d!24311) (not b!92169) (not b!91979) (not b!91974) (not b!92384) (not b!92126) (not d!24237) (not d!24111) (not bm!9042) (not d!24235) (not b!92096) (not b!92098) (not b!92121) (not b!92298) (not d!24153) (not b!92380) (not b!92172) (not b!92283) (not b!92011) (not b!91913) (not b!92034) (not b!92149) (not d!24299) (not b!92288) (not d!24245) (not d!24173) (not bm!9085) (not bm!9075) (not b!92019) (not bm!9066) (not b!92027) (not b!92392) (not b_lambda!4051) (not d!24383) (not d!24293) (not d!24177) (not b!92330) (not b!91846) (not b!91978) (not d!24107) (not b!92478) (not b!91917) (not b!92157) (not b!92205) (not bm!9084) (not b!92407) (not b!91843) (not b!92072) (not b!91977) (not b!91865) (not d!24333) (not b!91966) (not bm!9100) (not d!24279) (not b!92291) (not d!24359) (not b!92154) (not d!24249) (not d!24137) (not b!92029) (not b!92088) (not b!91954) (not b!92243) (not b!92068) (not d!24255) (not d!24191) (not b_lambda!4079) (not b!92179) (not b!91940) (not b!91980) (not b!92361) (not b!92036) (not b!92211) (not bm!9023) (not b!92193) (not b!91857) (not d!24341) (not b!92250) (not d!24131) (not b!91969) (not d!24113) (not d!24269) (not b!92265) (not d!24215) (not d!24221) (not b!92159) (not b!92225) (not b!91862) (not b!92183) (not d!24337) (not b!92182) (not b_lambda!4077) (not b!92120) (not d!24317) (not b!91938) (not b!92114) (not d!24239) (not d!24367) (not b!92045) (not b!92466) (not b!92353) (not b!92135) (not b!92241) (not b!92378) (not b!92102) (not bm!9115) (not d!24295) (not b_lambda!4049) (not bm!9113) (not b!92230) (not b!91981) (not b!91844) (not bm!9076) (not b!92219) (not d!24283) (not b!92405) (not b!92220) (not b!92465) (not b!91949) (not b!92039) (not b!92145) (not b!92266) (not d!24155) (not b!91957) (not b!92086) (not b!92153) (not b!92259) (not d!24165) (not b!92054) (not b!92475) (not d!24147) (not b!92222) (not bm!9102) (not b!92158) (not b!91985) (not b!92287) (not bm!9057) (not d!24287) (not b!92173) (not b!92063) (not bm!9094) (not d!24187) (not b!92128) (not b_lambda!4075) b_and!5599 (not b!92105) (not bm!9089) (not b!92458) (not b!92239) (not b_lambda!4053) (not d!24211) (not b!92374) (not b!92317) (not mapNonEmpty!3584) (not d!24135) (not d!24125) (not b!92297) (not b!92279) (not b!92184) (not bm!9054) (not b!92278) (not d!24225) (not b!92080) (not d!24409) (not d!24227) (not d!24313) (not b!92296) (not bm!9061))
(check-sat b_and!5597 b_and!5599 (not b_next!2333) (not b_next!2335))
