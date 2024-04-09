; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13832 () Bool)

(assert start!13832)

(declare-fun b!127685 () Bool)

(declare-fun b_free!2861 () Bool)

(declare-fun b_next!2861 () Bool)

(assert (=> b!127685 (= b_free!2861 (not b_next!2861))))

(declare-fun tp!10998 () Bool)

(declare-fun b_and!7889 () Bool)

(assert (=> b!127685 (= tp!10998 b_and!7889)))

(declare-fun b!127674 () Bool)

(declare-fun b_free!2863 () Bool)

(declare-fun b_next!2863 () Bool)

(assert (=> b!127674 (= b_free!2863 (not b_next!2863))))

(declare-fun tp!10997 () Bool)

(declare-fun b_and!7891 () Bool)

(assert (=> b!127674 (= tp!10997 b_and!7891)))

(declare-fun b!127669 () Bool)

(declare-fun e!83362 () Bool)

(declare-fun e!83361 () Bool)

(assert (=> b!127669 (= e!83362 e!83361)))

(declare-fun b!127670 () Bool)

(declare-fun e!83363 () Bool)

(declare-fun e!83372 () Bool)

(assert (=> b!127670 (= e!83363 e!83372)))

(declare-fun res!61711 () Bool)

(assert (=> b!127670 (=> (not res!61711) (not e!83372))))

(declare-datatypes ((V!3443 0))(
  ( (V!3444 (val!1468 Int)) )
))
(declare-datatypes ((array!4712 0))(
  ( (array!4713 (arr!2230 (Array (_ BitVec 32) (_ BitVec 64))) (size!2495 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1080 0))(
  ( (ValueCellFull!1080 (v!3136 V!3443)) (EmptyCell!1080) )
))
(declare-datatypes ((array!4714 0))(
  ( (array!4715 (arr!2231 (Array (_ BitVec 32) ValueCell!1080)) (size!2496 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1068 0))(
  ( (LongMapFixedSize!1069 (defaultEntry!2802 Int) (mask!7068 (_ BitVec 32)) (extraKeys!2579 (_ BitVec 32)) (zeroValue!2663 V!3443) (minValue!2663 V!3443) (_size!583 (_ BitVec 32)) (_keys!4539 array!4712) (_values!2785 array!4714) (_vacant!583 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!858 0))(
  ( (Cell!859 (v!3137 LongMapFixedSize!1068)) )
))
(declare-datatypes ((LongMap!858 0))(
  ( (LongMap!859 (underlying!440 Cell!858)) )
))
(declare-fun thiss!992 () LongMap!858)

(declare-datatypes ((tuple2!2574 0))(
  ( (tuple2!2575 (_1!1297 (_ BitVec 64)) (_2!1297 V!3443)) )
))
(declare-datatypes ((List!1722 0))(
  ( (Nil!1719) (Cons!1718 (h!2321 tuple2!2574) (t!6101 List!1722)) )
))
(declare-datatypes ((ListLongMap!1689 0))(
  ( (ListLongMap!1690 (toList!860 List!1722)) )
))
(declare-fun lt!66111 () ListLongMap!1689)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!880 (ListLongMap!1689 (_ BitVec 64)) Bool)

(assert (=> b!127670 (= res!61711 (contains!880 lt!66111 (select (arr!2230 (_keys!4539 (v!3137 (underlying!440 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!1068)

(declare-datatypes ((tuple2!2576 0))(
  ( (tuple2!2577 (_1!1298 Bool) (_2!1298 LongMapFixedSize!1068)) )
))
(declare-fun lt!66109 () tuple2!2576)

(declare-fun update!184 (LongMapFixedSize!1068 (_ BitVec 64) V!3443) tuple2!2576)

(declare-fun get!1458 (ValueCell!1080 V!3443) V!3443)

(declare-fun dynLambda!417 (Int (_ BitVec 64)) V!3443)

(assert (=> b!127670 (= lt!66109 (update!184 newMap!16 (select (arr!2230 (_keys!4539 (v!3137 (underlying!440 thiss!992)))) from!355) (get!1458 (select (arr!2231 (_values!2785 (v!3137 (underlying!440 thiss!992)))) from!355) (dynLambda!417 (defaultEntry!2802 (v!3137 (underlying!440 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!127671 () Bool)

(declare-fun res!61708 () Bool)

(declare-fun e!83358 () Bool)

(assert (=> b!127671 (=> (not res!61708) (not e!83358))))

(assert (=> b!127671 (= res!61708 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2495 (_keys!4539 (v!3137 (underlying!440 thiss!992)))))))))

(declare-fun b!127672 () Bool)

(assert (=> b!127672 (= e!83358 e!83363)))

(declare-fun res!61713 () Bool)

(assert (=> b!127672 (=> (not res!61713) (not e!83363))))

(declare-fun lt!66110 () ListLongMap!1689)

(assert (=> b!127672 (= res!61713 (and (= lt!66110 lt!66111) (not (= (select (arr!2230 (_keys!4539 (v!3137 (underlying!440 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2230 (_keys!4539 (v!3137 (underlying!440 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1387 (LongMapFixedSize!1068) ListLongMap!1689)

(assert (=> b!127672 (= lt!66111 (map!1387 newMap!16))))

(declare-fun getCurrentListMap!532 (array!4712 array!4714 (_ BitVec 32) (_ BitVec 32) V!3443 V!3443 (_ BitVec 32) Int) ListLongMap!1689)

(assert (=> b!127672 (= lt!66110 (getCurrentListMap!532 (_keys!4539 (v!3137 (underlying!440 thiss!992))) (_values!2785 (v!3137 (underlying!440 thiss!992))) (mask!7068 (v!3137 (underlying!440 thiss!992))) (extraKeys!2579 (v!3137 (underlying!440 thiss!992))) (zeroValue!2663 (v!3137 (underlying!440 thiss!992))) (minValue!2663 (v!3137 (underlying!440 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2802 (v!3137 (underlying!440 thiss!992)))))))

(declare-fun b!127673 () Bool)

(declare-fun e!83359 () Bool)

(declare-fun e!83364 () Bool)

(declare-fun mapRes!4525 () Bool)

(assert (=> b!127673 (= e!83359 (and e!83364 mapRes!4525))))

(declare-fun condMapEmpty!4525 () Bool)

(declare-fun mapDefault!4525 () ValueCell!1080)

(assert (=> b!127673 (= condMapEmpty!4525 (= (arr!2231 (_values!2785 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1080)) mapDefault!4525)))))

(declare-fun mapNonEmpty!4525 () Bool)

(declare-fun mapRes!4526 () Bool)

(declare-fun tp!10999 () Bool)

(declare-fun e!83360 () Bool)

(assert (=> mapNonEmpty!4525 (= mapRes!4526 (and tp!10999 e!83360))))

(declare-fun mapRest!4525 () (Array (_ BitVec 32) ValueCell!1080))

(declare-fun mapValue!4525 () ValueCell!1080)

(declare-fun mapKey!4526 () (_ BitVec 32))

(assert (=> mapNonEmpty!4525 (= (arr!2231 (_values!2785 (v!3137 (underlying!440 thiss!992)))) (store mapRest!4525 mapKey!4526 mapValue!4525))))

(declare-fun b!127675 () Bool)

(declare-fun e!83370 () Bool)

(assert (=> b!127675 (= e!83370 e!83362)))

(declare-fun mapIsEmpty!4525 () Bool)

(assert (=> mapIsEmpty!4525 mapRes!4525))

(declare-fun b!127676 () Bool)

(assert (=> b!127676 (= e!83372 (and (= (size!2496 (_values!2785 (v!3137 (underlying!440 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!7068 (v!3137 (underlying!440 thiss!992))))) (= (size!2495 (_keys!4539 (v!3137 (underlying!440 thiss!992)))) (size!2496 (_values!2785 (v!3137 (underlying!440 thiss!992))))) (bvslt (mask!7068 (v!3137 (underlying!440 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun b!127677 () Bool)

(declare-fun res!61709 () Bool)

(assert (=> b!127677 (=> (not res!61709) (not e!83358))))

(assert (=> b!127677 (= res!61709 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7068 newMap!16)) (_size!583 (v!3137 (underlying!440 thiss!992)))))))

(declare-fun b!127678 () Bool)

(declare-fun res!61710 () Bool)

(assert (=> b!127678 (=> (not res!61710) (not e!83372))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!127678 (= res!61710 (validMask!0 (mask!7068 (v!3137 (underlying!440 thiss!992)))))))

(declare-fun b!127679 () Bool)

(declare-fun tp_is_empty!2847 () Bool)

(assert (=> b!127679 (= e!83364 tp_is_empty!2847)))

(declare-fun b!127680 () Bool)

(declare-fun res!61707 () Bool)

(assert (=> b!127680 (=> (not res!61707) (not e!83358))))

(declare-fun valid!506 (LongMapFixedSize!1068) Bool)

(assert (=> b!127680 (= res!61707 (valid!506 newMap!16))))

(declare-fun b!127681 () Bool)

(assert (=> b!127681 (= e!83360 tp_is_empty!2847)))

(declare-fun mapNonEmpty!4526 () Bool)

(declare-fun tp!11000 () Bool)

(declare-fun e!83368 () Bool)

(assert (=> mapNonEmpty!4526 (= mapRes!4525 (and tp!11000 e!83368))))

(declare-fun mapRest!4526 () (Array (_ BitVec 32) ValueCell!1080))

(declare-fun mapValue!4526 () ValueCell!1080)

(declare-fun mapKey!4525 () (_ BitVec 32))

(assert (=> mapNonEmpty!4526 (= (arr!2231 (_values!2785 newMap!16)) (store mapRest!4526 mapKey!4525 mapValue!4526))))

(declare-fun b!127682 () Bool)

(declare-fun e!83367 () Bool)

(declare-fun e!83369 () Bool)

(assert (=> b!127682 (= e!83367 (and e!83369 mapRes!4526))))

(declare-fun condMapEmpty!4526 () Bool)

(declare-fun mapDefault!4526 () ValueCell!1080)

(assert (=> b!127682 (= condMapEmpty!4526 (= (arr!2231 (_values!2785 (v!3137 (underlying!440 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1080)) mapDefault!4526)))))

(declare-fun b!127683 () Bool)

(assert (=> b!127683 (= e!83369 tp_is_empty!2847)))

(declare-fun b!127684 () Bool)

(assert (=> b!127684 (= e!83368 tp_is_empty!2847)))

(declare-fun mapIsEmpty!4526 () Bool)

(assert (=> mapIsEmpty!4526 mapRes!4526))

(declare-fun array_inv!1369 (array!4712) Bool)

(declare-fun array_inv!1370 (array!4714) Bool)

(assert (=> b!127685 (= e!83361 (and tp!10998 tp_is_empty!2847 (array_inv!1369 (_keys!4539 (v!3137 (underlying!440 thiss!992)))) (array_inv!1370 (_values!2785 (v!3137 (underlying!440 thiss!992)))) e!83367))))

(declare-fun e!83365 () Bool)

(assert (=> b!127674 (= e!83365 (and tp!10997 tp_is_empty!2847 (array_inv!1369 (_keys!4539 newMap!16)) (array_inv!1370 (_values!2785 newMap!16)) e!83359))))

(declare-fun res!61712 () Bool)

(assert (=> start!13832 (=> (not res!61712) (not e!83358))))

(declare-fun valid!507 (LongMap!858) Bool)

(assert (=> start!13832 (= res!61712 (valid!507 thiss!992))))

(assert (=> start!13832 e!83358))

(assert (=> start!13832 e!83370))

(assert (=> start!13832 true))

(assert (=> start!13832 e!83365))

(assert (= (and start!13832 res!61712) b!127671))

(assert (= (and b!127671 res!61708) b!127680))

(assert (= (and b!127680 res!61707) b!127677))

(assert (= (and b!127677 res!61709) b!127672))

(assert (= (and b!127672 res!61713) b!127670))

(assert (= (and b!127670 res!61711) b!127678))

(assert (= (and b!127678 res!61710) b!127676))

(assert (= (and b!127682 condMapEmpty!4526) mapIsEmpty!4526))

(assert (= (and b!127682 (not condMapEmpty!4526)) mapNonEmpty!4525))

(get-info :version)

(assert (= (and mapNonEmpty!4525 ((_ is ValueCellFull!1080) mapValue!4525)) b!127681))

(assert (= (and b!127682 ((_ is ValueCellFull!1080) mapDefault!4526)) b!127683))

(assert (= b!127685 b!127682))

(assert (= b!127669 b!127685))

(assert (= b!127675 b!127669))

(assert (= start!13832 b!127675))

(assert (= (and b!127673 condMapEmpty!4525) mapIsEmpty!4525))

(assert (= (and b!127673 (not condMapEmpty!4525)) mapNonEmpty!4526))

(assert (= (and mapNonEmpty!4526 ((_ is ValueCellFull!1080) mapValue!4526)) b!127684))

(assert (= (and b!127673 ((_ is ValueCellFull!1080) mapDefault!4525)) b!127679))

(assert (= b!127674 b!127673))

(assert (= start!13832 b!127674))

(declare-fun b_lambda!5677 () Bool)

(assert (=> (not b_lambda!5677) (not b!127670)))

(declare-fun t!6098 () Bool)

(declare-fun tb!2341 () Bool)

(assert (=> (and b!127685 (= (defaultEntry!2802 (v!3137 (underlying!440 thiss!992))) (defaultEntry!2802 (v!3137 (underlying!440 thiss!992)))) t!6098) tb!2341))

(declare-fun result!3873 () Bool)

(assert (=> tb!2341 (= result!3873 tp_is_empty!2847)))

(assert (=> b!127670 t!6098))

(declare-fun b_and!7893 () Bool)

(assert (= b_and!7889 (and (=> t!6098 result!3873) b_and!7893)))

(declare-fun tb!2343 () Bool)

(declare-fun t!6100 () Bool)

(assert (=> (and b!127674 (= (defaultEntry!2802 newMap!16) (defaultEntry!2802 (v!3137 (underlying!440 thiss!992)))) t!6100) tb!2343))

(declare-fun result!3877 () Bool)

(assert (= result!3877 result!3873))

(assert (=> b!127670 t!6100))

(declare-fun b_and!7895 () Bool)

(assert (= b_and!7891 (and (=> t!6100 result!3877) b_and!7895)))

(declare-fun m!149671 () Bool)

(assert (=> b!127674 m!149671))

(declare-fun m!149673 () Bool)

(assert (=> b!127674 m!149673))

(declare-fun m!149675 () Bool)

(assert (=> b!127678 m!149675))

(declare-fun m!149677 () Bool)

(assert (=> b!127672 m!149677))

(declare-fun m!149679 () Bool)

(assert (=> b!127672 m!149679))

(declare-fun m!149681 () Bool)

(assert (=> b!127672 m!149681))

(declare-fun m!149683 () Bool)

(assert (=> start!13832 m!149683))

(declare-fun m!149685 () Bool)

(assert (=> mapNonEmpty!4526 m!149685))

(declare-fun m!149687 () Bool)

(assert (=> b!127680 m!149687))

(declare-fun m!149689 () Bool)

(assert (=> mapNonEmpty!4525 m!149689))

(declare-fun m!149691 () Bool)

(assert (=> b!127685 m!149691))

(declare-fun m!149693 () Bool)

(assert (=> b!127685 m!149693))

(declare-fun m!149695 () Bool)

(assert (=> b!127670 m!149695))

(declare-fun m!149697 () Bool)

(assert (=> b!127670 m!149697))

(declare-fun m!149699 () Bool)

(assert (=> b!127670 m!149699))

(assert (=> b!127670 m!149677))

(declare-fun m!149701 () Bool)

(assert (=> b!127670 m!149701))

(assert (=> b!127670 m!149677))

(assert (=> b!127670 m!149697))

(assert (=> b!127670 m!149677))

(assert (=> b!127670 m!149699))

(declare-fun m!149703 () Bool)

(assert (=> b!127670 m!149703))

(assert (=> b!127670 m!149695))

(check-sat (not b!127680) (not mapNonEmpty!4526) (not b_lambda!5677) (not b!127672) (not b_next!2861) (not b!127685) (not b_next!2863) (not mapNonEmpty!4525) tp_is_empty!2847 b_and!7895 b_and!7893 (not b!127678) (not start!13832) (not b!127670) (not b!127674))
(check-sat b_and!7893 b_and!7895 (not b_next!2861) (not b_next!2863))
