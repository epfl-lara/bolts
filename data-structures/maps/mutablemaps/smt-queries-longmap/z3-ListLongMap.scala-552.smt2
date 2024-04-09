; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14716 () Bool)

(assert start!14716)

(declare-fun b!139431 () Bool)

(declare-fun b_free!3017 () Bool)

(declare-fun b_next!3017 () Bool)

(assert (=> b!139431 (= b_free!3017 (not b_next!3017))))

(declare-fun tp!11522 () Bool)

(declare-fun b_and!8717 () Bool)

(assert (=> b!139431 (= tp!11522 b_and!8717)))

(declare-fun b!139420 () Bool)

(declare-fun b_free!3019 () Bool)

(declare-fun b_next!3019 () Bool)

(assert (=> b!139420 (= b_free!3019 (not b_next!3019))))

(declare-fun tp!11524 () Bool)

(declare-fun b_and!8719 () Bool)

(assert (=> b!139420 (= tp!11524 b_and!8719)))

(declare-fun mapIsEmpty!4815 () Bool)

(declare-fun mapRes!4816 () Bool)

(assert (=> mapIsEmpty!4815 mapRes!4816))

(declare-fun b!139416 () Bool)

(declare-fun res!66695 () Bool)

(declare-fun e!90918 () Bool)

(assert (=> b!139416 (=> (not res!66695) (not e!90918))))

(declare-datatypes ((V!3547 0))(
  ( (V!3548 (val!1507 Int)) )
))
(declare-datatypes ((array!4884 0))(
  ( (array!4885 (arr!2308 (Array (_ BitVec 32) (_ BitVec 64))) (size!2580 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1119 0))(
  ( (ValueCellFull!1119 (v!3273 V!3547)) (EmptyCell!1119) )
))
(declare-datatypes ((array!4886 0))(
  ( (array!4887 (arr!2309 (Array (_ BitVec 32) ValueCell!1119)) (size!2581 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1146 0))(
  ( (LongMapFixedSize!1147 (defaultEntry!2937 Int) (mask!7275 (_ BitVec 32)) (extraKeys!2692 (_ BitVec 32)) (zeroValue!2787 V!3547) (minValue!2787 V!3547) (_size!622 (_ BitVec 32)) (_keys!4696 array!4884) (_values!2920 array!4886) (_vacant!622 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1146)

(declare-datatypes ((Cell!934 0))(
  ( (Cell!935 (v!3274 LongMapFixedSize!1146)) )
))
(declare-datatypes ((LongMap!934 0))(
  ( (LongMap!935 (underlying!478 Cell!934)) )
))
(declare-fun thiss!992 () LongMap!934)

(assert (=> b!139416 (= res!66695 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7275 newMap!16)) (_size!622 (v!3274 (underlying!478 thiss!992)))))))

(declare-fun b!139417 () Bool)

(declare-fun e!90909 () Bool)

(declare-fun e!90910 () Bool)

(assert (=> b!139417 (= e!90909 e!90910)))

(declare-fun res!66700 () Bool)

(assert (=> b!139417 (=> (not res!66700) (not e!90910))))

(declare-datatypes ((tuple2!2674 0))(
  ( (tuple2!2675 (_1!1347 (_ BitVec 64)) (_2!1347 V!3547)) )
))
(declare-datatypes ((List!1759 0))(
  ( (Nil!1756) (Cons!1755 (h!2362 tuple2!2674) (t!6343 List!1759)) )
))
(declare-datatypes ((ListLongMap!1741 0))(
  ( (ListLongMap!1742 (toList!886 List!1759)) )
))
(declare-fun lt!73018 () ListLongMap!1741)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!919 (ListLongMap!1741 (_ BitVec 64)) Bool)

(assert (=> b!139417 (= res!66700 (contains!919 lt!73018 (select (arr!2308 (_keys!4696 (v!3274 (underlying!478 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2676 0))(
  ( (tuple2!2677 (_1!1348 Bool) (_2!1348 LongMapFixedSize!1146)) )
))
(declare-fun lt!73017 () tuple2!2676)

(declare-fun update!208 (LongMapFixedSize!1146 (_ BitVec 64) V!3547) tuple2!2676)

(declare-fun get!1531 (ValueCell!1119 V!3547) V!3547)

(declare-fun dynLambda!441 (Int (_ BitVec 64)) V!3547)

(assert (=> b!139417 (= lt!73017 (update!208 newMap!16 (select (arr!2308 (_keys!4696 (v!3274 (underlying!478 thiss!992)))) from!355) (get!1531 (select (arr!2309 (_values!2920 (v!3274 (underlying!478 thiss!992)))) from!355) (dynLambda!441 (defaultEntry!2937 (v!3274 (underlying!478 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!4815 () Bool)

(declare-fun mapRes!4815 () Bool)

(declare-fun tp!11523 () Bool)

(declare-fun e!90915 () Bool)

(assert (=> mapNonEmpty!4815 (= mapRes!4815 (and tp!11523 e!90915))))

(declare-fun mapKey!4816 () (_ BitVec 32))

(declare-fun mapValue!4815 () ValueCell!1119)

(declare-fun mapRest!4815 () (Array (_ BitVec 32) ValueCell!1119))

(assert (=> mapNonEmpty!4815 (= (arr!2309 (_values!2920 newMap!16)) (store mapRest!4815 mapKey!4816 mapValue!4815))))

(declare-fun b!139418 () Bool)

(declare-fun e!90919 () Bool)

(declare-fun e!90914 () Bool)

(assert (=> b!139418 (= e!90919 e!90914)))

(declare-fun b!139419 () Bool)

(assert (=> b!139419 (= e!90918 e!90909)))

(declare-fun res!66697 () Bool)

(assert (=> b!139419 (=> (not res!66697) (not e!90909))))

(declare-fun lt!73020 () ListLongMap!1741)

(assert (=> b!139419 (= res!66697 (and (= lt!73020 lt!73018) (not (= (select (arr!2308 (_keys!4696 (v!3274 (underlying!478 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2308 (_keys!4696 (v!3274 (underlying!478 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1433 (LongMapFixedSize!1146) ListLongMap!1741)

(assert (=> b!139419 (= lt!73018 (map!1433 newMap!16))))

(declare-fun getCurrentListMap!552 (array!4884 array!4886 (_ BitVec 32) (_ BitVec 32) V!3547 V!3547 (_ BitVec 32) Int) ListLongMap!1741)

(assert (=> b!139419 (= lt!73020 (getCurrentListMap!552 (_keys!4696 (v!3274 (underlying!478 thiss!992))) (_values!2920 (v!3274 (underlying!478 thiss!992))) (mask!7275 (v!3274 (underlying!478 thiss!992))) (extraKeys!2692 (v!3274 (underlying!478 thiss!992))) (zeroValue!2787 (v!3274 (underlying!478 thiss!992))) (minValue!2787 (v!3274 (underlying!478 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2937 (v!3274 (underlying!478 thiss!992)))))))

(declare-fun tp_is_empty!2925 () Bool)

(declare-fun e!90911 () Bool)

(declare-fun e!90921 () Bool)

(declare-fun array_inv!1427 (array!4884) Bool)

(declare-fun array_inv!1428 (array!4886) Bool)

(assert (=> b!139420 (= e!90911 (and tp!11524 tp_is_empty!2925 (array_inv!1427 (_keys!4696 newMap!16)) (array_inv!1428 (_values!2920 newMap!16)) e!90921))))

(declare-fun b!139421 () Bool)

(assert (=> b!139421 (= e!90910 (not (or (bvsge (size!2580 (_keys!4696 (v!3274 (underlying!478 thiss!992)))) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000))))))

(declare-datatypes ((List!1760 0))(
  ( (Nil!1757) (Cons!1756 (h!2363 (_ BitVec 64)) (t!6344 List!1760)) )
))
(declare-fun arrayNoDuplicates!0 (array!4884 (_ BitVec 32) List!1760) Bool)

(assert (=> b!139421 (arrayNoDuplicates!0 (_keys!4696 (v!3274 (underlying!478 thiss!992))) from!355 Nil!1757)))

(declare-datatypes ((Unit!4393 0))(
  ( (Unit!4394) )
))
(declare-fun lt!73016 () Unit!4393)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4884 (_ BitVec 32) (_ BitVec 32)) Unit!4393)

(assert (=> b!139421 (= lt!73016 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4696 (v!3274 (underlying!478 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!4884 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!139421 (arrayContainsKey!0 (_keys!4696 (v!3274 (underlying!478 thiss!992))) (select (arr!2308 (_keys!4696 (v!3274 (underlying!478 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!73019 () Unit!4393)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!143 (array!4884 array!4886 (_ BitVec 32) (_ BitVec 32) V!3547 V!3547 (_ BitVec 64) (_ BitVec 32) Int) Unit!4393)

(assert (=> b!139421 (= lt!73019 (lemmaListMapContainsThenArrayContainsFrom!143 (_keys!4696 (v!3274 (underlying!478 thiss!992))) (_values!2920 (v!3274 (underlying!478 thiss!992))) (mask!7275 (v!3274 (underlying!478 thiss!992))) (extraKeys!2692 (v!3274 (underlying!478 thiss!992))) (zeroValue!2787 (v!3274 (underlying!478 thiss!992))) (minValue!2787 (v!3274 (underlying!478 thiss!992))) (select (arr!2308 (_keys!4696 (v!3274 (underlying!478 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2937 (v!3274 (underlying!478 thiss!992)))))))

(declare-fun b!139422 () Bool)

(declare-fun e!90912 () Bool)

(assert (=> b!139422 (= e!90912 tp_is_empty!2925)))

(declare-fun mapIsEmpty!4816 () Bool)

(assert (=> mapIsEmpty!4816 mapRes!4815))

(declare-fun res!66699 () Bool)

(assert (=> start!14716 (=> (not res!66699) (not e!90918))))

(declare-fun valid!551 (LongMap!934) Bool)

(assert (=> start!14716 (= res!66699 (valid!551 thiss!992))))

(assert (=> start!14716 e!90918))

(declare-fun e!90917 () Bool)

(assert (=> start!14716 e!90917))

(assert (=> start!14716 true))

(assert (=> start!14716 e!90911))

(declare-fun b!139423 () Bool)

(declare-fun e!90920 () Bool)

(assert (=> b!139423 (= e!90921 (and e!90920 mapRes!4815))))

(declare-fun condMapEmpty!4815 () Bool)

(declare-fun mapDefault!4816 () ValueCell!1119)

(assert (=> b!139423 (= condMapEmpty!4815 (= (arr!2309 (_values!2920 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1119)) mapDefault!4816)))))

(declare-fun b!139424 () Bool)

(declare-fun e!90907 () Bool)

(assert (=> b!139424 (= e!90907 tp_is_empty!2925)))

(declare-fun b!139425 () Bool)

(declare-fun res!66696 () Bool)

(assert (=> b!139425 (=> (not res!66696) (not e!90918))))

(assert (=> b!139425 (= res!66696 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2580 (_keys!4696 (v!3274 (underlying!478 thiss!992)))))))))

(declare-fun b!139426 () Bool)

(assert (=> b!139426 (= e!90920 tp_is_empty!2925)))

(declare-fun b!139427 () Bool)

(assert (=> b!139427 (= e!90917 e!90919)))

(declare-fun b!139428 () Bool)

(assert (=> b!139428 (= e!90915 tp_is_empty!2925)))

(declare-fun b!139429 () Bool)

(declare-fun e!90913 () Bool)

(assert (=> b!139429 (= e!90913 (and e!90912 mapRes!4816))))

(declare-fun condMapEmpty!4816 () Bool)

(declare-fun mapDefault!4815 () ValueCell!1119)

(assert (=> b!139429 (= condMapEmpty!4816 (= (arr!2309 (_values!2920 (v!3274 (underlying!478 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1119)) mapDefault!4815)))))

(declare-fun mapNonEmpty!4816 () Bool)

(declare-fun tp!11521 () Bool)

(assert (=> mapNonEmpty!4816 (= mapRes!4816 (and tp!11521 e!90907))))

(declare-fun mapKey!4815 () (_ BitVec 32))

(declare-fun mapValue!4816 () ValueCell!1119)

(declare-fun mapRest!4816 () (Array (_ BitVec 32) ValueCell!1119))

(assert (=> mapNonEmpty!4816 (= (arr!2309 (_values!2920 (v!3274 (underlying!478 thiss!992)))) (store mapRest!4816 mapKey!4815 mapValue!4816))))

(declare-fun b!139430 () Bool)

(declare-fun res!66698 () Bool)

(assert (=> b!139430 (=> (not res!66698) (not e!90918))))

(declare-fun valid!552 (LongMapFixedSize!1146) Bool)

(assert (=> b!139430 (= res!66698 (valid!552 newMap!16))))

(assert (=> b!139431 (= e!90914 (and tp!11522 tp_is_empty!2925 (array_inv!1427 (_keys!4696 (v!3274 (underlying!478 thiss!992)))) (array_inv!1428 (_values!2920 (v!3274 (underlying!478 thiss!992)))) e!90913))))

(assert (= (and start!14716 res!66699) b!139425))

(assert (= (and b!139425 res!66696) b!139430))

(assert (= (and b!139430 res!66698) b!139416))

(assert (= (and b!139416 res!66695) b!139419))

(assert (= (and b!139419 res!66697) b!139417))

(assert (= (and b!139417 res!66700) b!139421))

(assert (= (and b!139429 condMapEmpty!4816) mapIsEmpty!4815))

(assert (= (and b!139429 (not condMapEmpty!4816)) mapNonEmpty!4816))

(get-info :version)

(assert (= (and mapNonEmpty!4816 ((_ is ValueCellFull!1119) mapValue!4816)) b!139424))

(assert (= (and b!139429 ((_ is ValueCellFull!1119) mapDefault!4815)) b!139422))

(assert (= b!139431 b!139429))

(assert (= b!139418 b!139431))

(assert (= b!139427 b!139418))

(assert (= start!14716 b!139427))

(assert (= (and b!139423 condMapEmpty!4815) mapIsEmpty!4816))

(assert (= (and b!139423 (not condMapEmpty!4815)) mapNonEmpty!4815))

(assert (= (and mapNonEmpty!4815 ((_ is ValueCellFull!1119) mapValue!4815)) b!139428))

(assert (= (and b!139423 ((_ is ValueCellFull!1119) mapDefault!4816)) b!139426))

(assert (= b!139420 b!139423))

(assert (= start!14716 b!139420))

(declare-fun b_lambda!6275 () Bool)

(assert (=> (not b_lambda!6275) (not b!139417)))

(declare-fun t!6340 () Bool)

(declare-fun tb!2545 () Bool)

(assert (=> (and b!139431 (= (defaultEntry!2937 (v!3274 (underlying!478 thiss!992))) (defaultEntry!2937 (v!3274 (underlying!478 thiss!992)))) t!6340) tb!2545))

(declare-fun result!4171 () Bool)

(assert (=> tb!2545 (= result!4171 tp_is_empty!2925)))

(assert (=> b!139417 t!6340))

(declare-fun b_and!8721 () Bool)

(assert (= b_and!8717 (and (=> t!6340 result!4171) b_and!8721)))

(declare-fun tb!2547 () Bool)

(declare-fun t!6342 () Bool)

(assert (=> (and b!139420 (= (defaultEntry!2937 newMap!16) (defaultEntry!2937 (v!3274 (underlying!478 thiss!992)))) t!6342) tb!2547))

(declare-fun result!4175 () Bool)

(assert (= result!4175 result!4171))

(assert (=> b!139417 t!6342))

(declare-fun b_and!8723 () Bool)

(assert (= b_and!8719 (and (=> t!6342 result!4175) b_and!8723)))

(declare-fun m!166603 () Bool)

(assert (=> b!139420 m!166603))

(declare-fun m!166605 () Bool)

(assert (=> b!139420 m!166605))

(declare-fun m!166607 () Bool)

(assert (=> b!139430 m!166607))

(declare-fun m!166609 () Bool)

(assert (=> b!139431 m!166609))

(declare-fun m!166611 () Bool)

(assert (=> b!139431 m!166611))

(declare-fun m!166613 () Bool)

(assert (=> b!139419 m!166613))

(declare-fun m!166615 () Bool)

(assert (=> b!139419 m!166615))

(declare-fun m!166617 () Bool)

(assert (=> b!139419 m!166617))

(assert (=> b!139417 m!166613))

(declare-fun m!166619 () Bool)

(assert (=> b!139417 m!166619))

(declare-fun m!166621 () Bool)

(assert (=> b!139417 m!166621))

(declare-fun m!166623 () Bool)

(assert (=> b!139417 m!166623))

(declare-fun m!166625 () Bool)

(assert (=> b!139417 m!166625))

(assert (=> b!139417 m!166613))

(assert (=> b!139417 m!166623))

(assert (=> b!139417 m!166613))

(assert (=> b!139417 m!166625))

(declare-fun m!166627 () Bool)

(assert (=> b!139417 m!166627))

(assert (=> b!139417 m!166621))

(declare-fun m!166629 () Bool)

(assert (=> mapNonEmpty!4815 m!166629))

(declare-fun m!166631 () Bool)

(assert (=> b!139421 m!166631))

(declare-fun m!166633 () Bool)

(assert (=> b!139421 m!166633))

(assert (=> b!139421 m!166613))

(declare-fun m!166635 () Bool)

(assert (=> b!139421 m!166635))

(assert (=> b!139421 m!166613))

(assert (=> b!139421 m!166613))

(declare-fun m!166637 () Bool)

(assert (=> b!139421 m!166637))

(declare-fun m!166639 () Bool)

(assert (=> start!14716 m!166639))

(declare-fun m!166641 () Bool)

(assert (=> mapNonEmpty!4816 m!166641))

(check-sat (not b!139430) tp_is_empty!2925 b_and!8721 (not mapNonEmpty!4815) (not b!139421) (not mapNonEmpty!4816) (not b_next!3019) (not b!139420) (not b_next!3017) (not b!139431) (not start!14716) (not b!139417) (not b!139419) (not b_lambda!6275) b_and!8723)
(check-sat b_and!8721 b_and!8723 (not b_next!3017) (not b_next!3019))
