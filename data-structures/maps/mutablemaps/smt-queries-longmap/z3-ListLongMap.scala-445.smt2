; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8296 () Bool)

(assert start!8296)

(declare-fun b!53658 () Bool)

(declare-fun b_free!1733 () Bool)

(declare-fun b_next!1733 () Bool)

(assert (=> b!53658 (= b_free!1733 (not b_next!1733))))

(declare-fun tp!7301 () Bool)

(declare-fun b_and!3017 () Bool)

(assert (=> b!53658 (= tp!7301 b_and!3017)))

(declare-fun b!53677 () Bool)

(declare-fun b_free!1735 () Bool)

(declare-fun b_next!1735 () Bool)

(assert (=> b!53677 (= b_free!1735 (not b_next!1735))))

(declare-fun tp!7302 () Bool)

(declare-fun b_and!3019 () Bool)

(assert (=> b!53677 (= tp!7302 b_and!3019)))

(declare-datatypes ((V!2691 0))(
  ( (V!2692 (val!1186 Int)) )
))
(declare-datatypes ((array!3488 0))(
  ( (array!3489 (arr!1666 (Array (_ BitVec 32) (_ BitVec 64))) (size!1895 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!798 0))(
  ( (ValueCellFull!798 (v!2256 V!2691)) (EmptyCell!798) )
))
(declare-datatypes ((array!3490 0))(
  ( (array!3491 (arr!1667 (Array (_ BitVec 32) ValueCell!798)) (size!1896 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!504 0))(
  ( (LongMapFixedSize!505 (defaultEntry!1966 Int) (mask!5803 (_ BitVec 32)) (extraKeys!1857 (_ BitVec 32)) (zeroValue!1884 V!2691) (minValue!1884 V!2691) (_size!301 (_ BitVec 32)) (_keys!3586 array!3488) (_values!1949 array!3490) (_vacant!301 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!318 0))(
  ( (Cell!319 (v!2257 LongMapFixedSize!504)) )
))
(declare-datatypes ((LongMap!318 0))(
  ( (LongMap!319 (underlying!170 Cell!318)) )
))
(declare-fun thiss!992 () LongMap!318)

(declare-fun e!35014 () Bool)

(declare-fun tp_is_empty!2283 () Bool)

(declare-fun e!35018 () Bool)

(declare-fun array_inv!977 (array!3488) Bool)

(declare-fun array_inv!978 (array!3490) Bool)

(assert (=> b!53658 (= e!35018 (and tp!7301 tp_is_empty!2283 (array_inv!977 (_keys!3586 (v!2257 (underlying!170 thiss!992)))) (array_inv!978 (_values!1949 (v!2257 (underlying!170 thiss!992)))) e!35014))))

(declare-fun b!53659 () Bool)

(declare-fun e!35023 () Bool)

(assert (=> b!53659 (= e!35023 tp_is_empty!2283)))

(declare-fun res!30409 () Bool)

(declare-fun e!35011 () Bool)

(assert (=> start!8296 (=> (not res!30409) (not e!35011))))

(declare-fun valid!189 (LongMap!318) Bool)

(assert (=> start!8296 (= res!30409 (valid!189 thiss!992))))

(assert (=> start!8296 e!35011))

(declare-fun e!35010 () Bool)

(assert (=> start!8296 e!35010))

(assert (=> start!8296 true))

(declare-fun e!35015 () Bool)

(assert (=> start!8296 e!35015))

(declare-fun b!53660 () Bool)

(declare-fun e!35019 () Bool)

(assert (=> b!53660 (= e!35019 tp_is_empty!2283)))

(declare-fun mapNonEmpty!2519 () Bool)

(declare-fun mapRes!2520 () Bool)

(declare-fun tp!7300 () Bool)

(assert (=> mapNonEmpty!2519 (= mapRes!2520 (and tp!7300 e!35023))))

(declare-fun mapRest!2519 () (Array (_ BitVec 32) ValueCell!798))

(declare-fun mapValue!2520 () ValueCell!798)

(declare-fun newMap!16 () LongMapFixedSize!504)

(declare-fun mapKey!2520 () (_ BitVec 32))

(assert (=> mapNonEmpty!2519 (= (arr!1667 (_values!1949 newMap!16)) (store mapRest!2519 mapKey!2520 mapValue!2520))))

(declare-fun b!53661 () Bool)

(declare-fun res!30411 () Bool)

(declare-fun e!35021 () Bool)

(assert (=> b!53661 (=> (not res!30411) (not e!35021))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3488 (_ BitVec 32)) Bool)

(assert (=> b!53661 (= res!30411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3586 (v!2257 (underlying!170 thiss!992))) (mask!5803 (v!2257 (underlying!170 thiss!992)))))))

(declare-fun b!53662 () Bool)

(declare-fun res!30404 () Bool)

(assert (=> b!53662 (=> (not res!30404) (not e!35021))))

(assert (=> b!53662 (= res!30404 (and (= (size!1896 (_values!1949 (v!2257 (underlying!170 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5803 (v!2257 (underlying!170 thiss!992))))) (= (size!1895 (_keys!3586 (v!2257 (underlying!170 thiss!992)))) (size!1896 (_values!1949 (v!2257 (underlying!170 thiss!992))))) (bvsge (mask!5803 (v!2257 (underlying!170 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1857 (v!2257 (underlying!170 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1857 (v!2257 (underlying!170 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!2519 () Bool)

(declare-fun mapRes!2519 () Bool)

(assert (=> mapIsEmpty!2519 mapRes!2519))

(declare-fun b!53663 () Bool)

(declare-fun res!30407 () Bool)

(assert (=> b!53663 (=> (not res!30407) (not e!35021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!53663 (= res!30407 (validMask!0 (mask!5803 (v!2257 (underlying!170 thiss!992)))))))

(declare-fun mapNonEmpty!2520 () Bool)

(declare-fun tp!7299 () Bool)

(assert (=> mapNonEmpty!2520 (= mapRes!2519 (and tp!7299 e!35019))))

(declare-fun mapRest!2520 () (Array (_ BitVec 32) ValueCell!798))

(declare-fun mapKey!2519 () (_ BitVec 32))

(declare-fun mapValue!2519 () ValueCell!798)

(assert (=> mapNonEmpty!2520 (= (arr!1667 (_values!1949 (v!2257 (underlying!170 thiss!992)))) (store mapRest!2520 mapKey!2519 mapValue!2519))))

(declare-fun mapIsEmpty!2520 () Bool)

(assert (=> mapIsEmpty!2520 mapRes!2520))

(declare-fun b!53664 () Bool)

(declare-fun e!35017 () Bool)

(assert (=> b!53664 (= e!35017 e!35018)))

(declare-fun b!53665 () Bool)

(declare-fun e!35024 () Bool)

(declare-fun e!35012 () Bool)

(assert (=> b!53665 (= e!35024 (and e!35012 mapRes!2520))))

(declare-fun condMapEmpty!2519 () Bool)

(declare-fun mapDefault!2520 () ValueCell!798)

(assert (=> b!53665 (= condMapEmpty!2519 (= (arr!1667 (_values!1949 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!798)) mapDefault!2520)))))

(declare-fun b!53666 () Bool)

(declare-fun res!30403 () Bool)

(assert (=> b!53666 (=> (not res!30403) (not e!35011))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!53666 (= res!30403 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1895 (_keys!3586 (v!2257 (underlying!170 thiss!992)))))))))

(declare-fun b!53667 () Bool)

(declare-fun res!30408 () Bool)

(assert (=> b!53667 (=> (not res!30408) (not e!35021))))

(assert (=> b!53667 (= res!30408 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1895 (_keys!3586 (v!2257 (underlying!170 thiss!992)))))))))

(declare-fun b!53668 () Bool)

(declare-fun res!30406 () Bool)

(assert (=> b!53668 (=> (not res!30406) (not e!35021))))

(declare-datatypes ((List!1380 0))(
  ( (Nil!1377) (Cons!1376 (h!1956 (_ BitVec 64)) (t!4490 List!1380)) )
))
(declare-fun arrayNoDuplicates!0 (array!3488 (_ BitVec 32) List!1380) Bool)

(assert (=> b!53668 (= res!30406 (arrayNoDuplicates!0 (_keys!3586 (v!2257 (underlying!170 thiss!992))) #b00000000000000000000000000000000 Nil!1377))))

(declare-fun b!53669 () Bool)

(declare-fun e!35020 () Bool)

(assert (=> b!53669 (= e!35020 e!35021)))

(declare-fun res!30410 () Bool)

(assert (=> b!53669 (=> (not res!30410) (not e!35021))))

(declare-datatypes ((tuple2!1898 0))(
  ( (tuple2!1899 (_1!959 (_ BitVec 64)) (_2!959 V!2691)) )
))
(declare-datatypes ((List!1381 0))(
  ( (Nil!1378) (Cons!1377 (h!1957 tuple2!1898) (t!4491 List!1381)) )
))
(declare-datatypes ((ListLongMap!1299 0))(
  ( (ListLongMap!1300 (toList!665 List!1381)) )
))
(declare-fun lt!21509 () ListLongMap!1299)

(declare-fun contains!636 (ListLongMap!1299 (_ BitVec 64)) Bool)

(assert (=> b!53669 (= res!30410 (contains!636 lt!21509 (select (arr!1666 (_keys!3586 (v!2257 (underlying!170 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1900 0))(
  ( (tuple2!1901 (_1!960 Bool) (_2!960 LongMapFixedSize!504)) )
))
(declare-fun lt!21511 () tuple2!1900)

(declare-fun update!49 (LongMapFixedSize!504 (_ BitVec 64) V!2691) tuple2!1900)

(declare-fun get!1002 (ValueCell!798 V!2691) V!2691)

(declare-fun dynLambda!277 (Int (_ BitVec 64)) V!2691)

(assert (=> b!53669 (= lt!21511 (update!49 newMap!16 (select (arr!1666 (_keys!3586 (v!2257 (underlying!170 thiss!992)))) from!355) (get!1002 (select (arr!1667 (_values!1949 (v!2257 (underlying!170 thiss!992)))) from!355) (dynLambda!277 (defaultEntry!1966 (v!2257 (underlying!170 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!53670 () Bool)

(assert (=> b!53670 (= e!35011 e!35020)))

(declare-fun res!30401 () Bool)

(assert (=> b!53670 (=> (not res!30401) (not e!35020))))

(declare-fun lt!21508 () ListLongMap!1299)

(assert (=> b!53670 (= res!30401 (and (= lt!21508 lt!21509) (not (= (select (arr!1666 (_keys!3586 (v!2257 (underlying!170 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1666 (_keys!3586 (v!2257 (underlying!170 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1040 (LongMapFixedSize!504) ListLongMap!1299)

(assert (=> b!53670 (= lt!21509 (map!1040 newMap!16))))

(declare-fun getCurrentListMap!372 (array!3488 array!3490 (_ BitVec 32) (_ BitVec 32) V!2691 V!2691 (_ BitVec 32) Int) ListLongMap!1299)

(assert (=> b!53670 (= lt!21508 (getCurrentListMap!372 (_keys!3586 (v!2257 (underlying!170 thiss!992))) (_values!1949 (v!2257 (underlying!170 thiss!992))) (mask!5803 (v!2257 (underlying!170 thiss!992))) (extraKeys!1857 (v!2257 (underlying!170 thiss!992))) (zeroValue!1884 (v!2257 (underlying!170 thiss!992))) (minValue!1884 (v!2257 (underlying!170 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1966 (v!2257 (underlying!170 thiss!992)))))))

(declare-fun b!53671 () Bool)

(declare-fun e!35013 () Bool)

(assert (=> b!53671 (= e!35014 (and e!35013 mapRes!2519))))

(declare-fun condMapEmpty!2520 () Bool)

(declare-fun mapDefault!2519 () ValueCell!798)

(assert (=> b!53671 (= condMapEmpty!2520 (= (arr!1667 (_values!1949 (v!2257 (underlying!170 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!798)) mapDefault!2519)))))

(declare-fun b!53672 () Bool)

(assert (=> b!53672 (= e!35013 tp_is_empty!2283)))

(declare-fun b!53673 () Bool)

(assert (=> b!53673 (= e!35010 e!35017)))

(declare-fun b!53674 () Bool)

(assert (=> b!53674 (= e!35021 false)))

(declare-fun lt!21510 () Bool)

(assert (=> b!53674 (= lt!21510 (contains!636 lt!21508 (select (arr!1666 (_keys!3586 (v!2257 (underlying!170 thiss!992)))) from!355)))))

(declare-fun b!53675 () Bool)

(assert (=> b!53675 (= e!35012 tp_is_empty!2283)))

(declare-fun b!53676 () Bool)

(declare-fun res!30402 () Bool)

(assert (=> b!53676 (=> (not res!30402) (not e!35011))))

(declare-fun valid!190 (LongMapFixedSize!504) Bool)

(assert (=> b!53676 (= res!30402 (valid!190 newMap!16))))

(assert (=> b!53677 (= e!35015 (and tp!7302 tp_is_empty!2283 (array_inv!977 (_keys!3586 newMap!16)) (array_inv!978 (_values!1949 newMap!16)) e!35024))))

(declare-fun b!53678 () Bool)

(declare-fun res!30405 () Bool)

(assert (=> b!53678 (=> (not res!30405) (not e!35011))))

(assert (=> b!53678 (= res!30405 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5803 newMap!16)) (_size!301 (v!2257 (underlying!170 thiss!992)))))))

(assert (= (and start!8296 res!30409) b!53666))

(assert (= (and b!53666 res!30403) b!53676))

(assert (= (and b!53676 res!30402) b!53678))

(assert (= (and b!53678 res!30405) b!53670))

(assert (= (and b!53670 res!30401) b!53669))

(assert (= (and b!53669 res!30410) b!53663))

(assert (= (and b!53663 res!30407) b!53662))

(assert (= (and b!53662 res!30404) b!53661))

(assert (= (and b!53661 res!30411) b!53668))

(assert (= (and b!53668 res!30406) b!53667))

(assert (= (and b!53667 res!30408) b!53674))

(assert (= (and b!53671 condMapEmpty!2520) mapIsEmpty!2519))

(assert (= (and b!53671 (not condMapEmpty!2520)) mapNonEmpty!2520))

(get-info :version)

(assert (= (and mapNonEmpty!2520 ((_ is ValueCellFull!798) mapValue!2519)) b!53660))

(assert (= (and b!53671 ((_ is ValueCellFull!798) mapDefault!2519)) b!53672))

(assert (= b!53658 b!53671))

(assert (= b!53664 b!53658))

(assert (= b!53673 b!53664))

(assert (= start!8296 b!53673))

(assert (= (and b!53665 condMapEmpty!2519) mapIsEmpty!2520))

(assert (= (and b!53665 (not condMapEmpty!2519)) mapNonEmpty!2519))

(assert (= (and mapNonEmpty!2519 ((_ is ValueCellFull!798) mapValue!2520)) b!53659))

(assert (= (and b!53665 ((_ is ValueCellFull!798) mapDefault!2520)) b!53675))

(assert (= b!53677 b!53665))

(assert (= start!8296 b!53677))

(declare-fun b_lambda!2397 () Bool)

(assert (=> (not b_lambda!2397) (not b!53669)))

(declare-fun t!4487 () Bool)

(declare-fun tb!1085 () Bool)

(assert (=> (and b!53658 (= (defaultEntry!1966 (v!2257 (underlying!170 thiss!992))) (defaultEntry!1966 (v!2257 (underlying!170 thiss!992)))) t!4487) tb!1085))

(declare-fun result!2021 () Bool)

(assert (=> tb!1085 (= result!2021 tp_is_empty!2283)))

(assert (=> b!53669 t!4487))

(declare-fun b_and!3021 () Bool)

(assert (= b_and!3017 (and (=> t!4487 result!2021) b_and!3021)))

(declare-fun t!4489 () Bool)

(declare-fun tb!1087 () Bool)

(assert (=> (and b!53677 (= (defaultEntry!1966 newMap!16) (defaultEntry!1966 (v!2257 (underlying!170 thiss!992)))) t!4489) tb!1087))

(declare-fun result!2025 () Bool)

(assert (= result!2025 result!2021))

(assert (=> b!53669 t!4489))

(declare-fun b_and!3023 () Bool)

(assert (= b_and!3019 (and (=> t!4489 result!2025) b_and!3023)))

(declare-fun m!45591 () Bool)

(assert (=> b!53669 m!45591))

(declare-fun m!45593 () Bool)

(assert (=> b!53669 m!45593))

(declare-fun m!45595 () Bool)

(assert (=> b!53669 m!45595))

(declare-fun m!45597 () Bool)

(assert (=> b!53669 m!45597))

(declare-fun m!45599 () Bool)

(assert (=> b!53669 m!45599))

(assert (=> b!53669 m!45597))

(assert (=> b!53669 m!45593))

(assert (=> b!53669 m!45597))

(assert (=> b!53669 m!45595))

(declare-fun m!45601 () Bool)

(assert (=> b!53669 m!45601))

(assert (=> b!53669 m!45591))

(assert (=> b!53674 m!45597))

(assert (=> b!53674 m!45597))

(declare-fun m!45603 () Bool)

(assert (=> b!53674 m!45603))

(declare-fun m!45605 () Bool)

(assert (=> mapNonEmpty!2520 m!45605))

(declare-fun m!45607 () Bool)

(assert (=> b!53663 m!45607))

(declare-fun m!45609 () Bool)

(assert (=> mapNonEmpty!2519 m!45609))

(assert (=> b!53670 m!45597))

(declare-fun m!45611 () Bool)

(assert (=> b!53670 m!45611))

(declare-fun m!45613 () Bool)

(assert (=> b!53670 m!45613))

(declare-fun m!45615 () Bool)

(assert (=> start!8296 m!45615))

(declare-fun m!45617 () Bool)

(assert (=> b!53668 m!45617))

(declare-fun m!45619 () Bool)

(assert (=> b!53658 m!45619))

(declare-fun m!45621 () Bool)

(assert (=> b!53658 m!45621))

(declare-fun m!45623 () Bool)

(assert (=> b!53677 m!45623))

(declare-fun m!45625 () Bool)

(assert (=> b!53677 m!45625))

(declare-fun m!45627 () Bool)

(assert (=> b!53676 m!45627))

(declare-fun m!45629 () Bool)

(assert (=> b!53661 m!45629))

(check-sat (not b_next!1735) (not b!53669) (not start!8296) (not mapNonEmpty!2519) b_and!3021 (not mapNonEmpty!2520) (not b!53670) tp_is_empty!2283 (not b!53674) (not b!53676) (not b_lambda!2397) (not b!53668) b_and!3023 (not b!53677) (not b_next!1733) (not b!53658) (not b!53663) (not b!53661))
(check-sat b_and!3021 b_and!3023 (not b_next!1733) (not b_next!1735))
