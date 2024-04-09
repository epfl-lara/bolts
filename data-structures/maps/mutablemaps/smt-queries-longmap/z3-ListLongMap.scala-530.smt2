; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13236 () Bool)

(assert start!13236)

(declare-fun b!116686 () Bool)

(declare-fun b_free!2753 () Bool)

(declare-fun b_next!2753 () Bool)

(assert (=> b!116686 (= b_free!2753 (not b_next!2753))))

(declare-fun tp!10633 () Bool)

(declare-fun b_and!7281 () Bool)

(assert (=> b!116686 (= tp!10633 b_and!7281)))

(declare-fun b!116677 () Bool)

(declare-fun b_free!2755 () Bool)

(declare-fun b_next!2755 () Bool)

(assert (=> b!116677 (= b_free!2755 (not b_next!2755))))

(declare-fun tp!10631 () Bool)

(declare-fun b_and!7283 () Bool)

(assert (=> b!116677 (= tp!10631 b_and!7283)))

(declare-fun e!76206 () Bool)

(declare-fun tp_is_empty!2793 () Bool)

(declare-datatypes ((V!3371 0))(
  ( (V!3372 (val!1441 Int)) )
))
(declare-datatypes ((array!4592 0))(
  ( (array!4593 (arr!2176 (Array (_ BitVec 32) (_ BitVec 64))) (size!2437 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1053 0))(
  ( (ValueCellFull!1053 (v!3048 V!3371)) (EmptyCell!1053) )
))
(declare-datatypes ((array!4594 0))(
  ( (array!4595 (arr!2177 (Array (_ BitVec 32) ValueCell!1053)) (size!2438 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1014 0))(
  ( (LongMapFixedSize!1015 (defaultEntry!2719 Int) (mask!6937 (_ BitVec 32)) (extraKeys!2508 (_ BitVec 32)) (zeroValue!2586 V!3371) (minValue!2586 V!3371) (_size!556 (_ BitVec 32)) (_keys!4442 array!4592) (_values!2702 array!4594) (_vacant!556 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1014)

(declare-fun e!76202 () Bool)

(declare-fun array_inv!1323 (array!4592) Bool)

(declare-fun array_inv!1324 (array!4594) Bool)

(assert (=> b!116677 (= e!76206 (and tp!10631 tp_is_empty!2793 (array_inv!1323 (_keys!4442 newMap!16)) (array_inv!1324 (_values!2702 newMap!16)) e!76202))))

(declare-fun b!116678 () Bool)

(declare-fun e!76205 () Bool)

(assert (=> b!116678 (= e!76205 tp_is_empty!2793)))

(declare-fun b!116679 () Bool)

(declare-fun e!76204 () Bool)

(declare-fun e!76207 () Bool)

(assert (=> b!116679 (= e!76204 e!76207)))

(declare-fun b!116680 () Bool)

(declare-fun e!76213 () Bool)

(assert (=> b!116680 (= e!76213 e!76204)))

(declare-fun mapIsEmpty!4321 () Bool)

(declare-fun mapRes!4322 () Bool)

(assert (=> mapIsEmpty!4321 mapRes!4322))

(declare-fun b!116681 () Bool)

(declare-fun e!76211 () Bool)

(assert (=> b!116681 (= e!76211 tp_is_empty!2793)))

(declare-fun b!116682 () Bool)

(declare-fun res!57135 () Bool)

(declare-fun e!76209 () Bool)

(assert (=> b!116682 (=> (not res!57135) (not e!76209))))

(declare-datatypes ((Cell!808 0))(
  ( (Cell!809 (v!3049 LongMapFixedSize!1014)) )
))
(declare-datatypes ((LongMap!808 0))(
  ( (LongMap!809 (underlying!415 Cell!808)) )
))
(declare-fun thiss!992 () LongMap!808)

(assert (=> b!116682 (= res!57135 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6937 newMap!16)) (_size!556 (v!3049 (underlying!415 thiss!992)))))))

(declare-fun b!116683 () Bool)

(declare-fun res!57138 () Bool)

(assert (=> b!116683 (=> (not res!57138) (not e!76209))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!116683 (= res!57138 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2437 (_keys!4442 (v!3049 (underlying!415 thiss!992)))))))))

(declare-fun b!116684 () Bool)

(declare-fun e!76201 () Bool)

(assert (=> b!116684 (= e!76201 tp_is_empty!2793)))

(declare-fun b!116685 () Bool)

(declare-fun e!76210 () Bool)

(assert (=> b!116685 (= e!76210 tp_is_empty!2793)))

(declare-fun e!76212 () Bool)

(assert (=> b!116686 (= e!76207 (and tp!10633 tp_is_empty!2793 (array_inv!1323 (_keys!4442 (v!3049 (underlying!415 thiss!992)))) (array_inv!1324 (_values!2702 (v!3049 (underlying!415 thiss!992)))) e!76212))))

(declare-fun b!116687 () Bool)

(declare-fun res!57136 () Bool)

(assert (=> b!116687 (=> (not res!57136) (not e!76209))))

(declare-fun valid!474 (LongMapFixedSize!1014) Bool)

(assert (=> b!116687 (= res!57136 (valid!474 newMap!16))))

(declare-fun b!116688 () Bool)

(declare-fun mapRes!4321 () Bool)

(assert (=> b!116688 (= e!76212 (and e!76211 mapRes!4321))))

(declare-fun condMapEmpty!4322 () Bool)

(declare-fun mapDefault!4322 () ValueCell!1053)

(assert (=> b!116688 (= condMapEmpty!4322 (= (arr!2177 (_values!2702 (v!3049 (underlying!415 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1053)) mapDefault!4322)))))

(declare-fun b!116689 () Bool)

(assert (=> b!116689 (= e!76202 (and e!76205 mapRes!4322))))

(declare-fun condMapEmpty!4321 () Bool)

(declare-fun mapDefault!4321 () ValueCell!1053)

(assert (=> b!116689 (= condMapEmpty!4321 (= (arr!2177 (_values!2702 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1053)) mapDefault!4321)))))

(declare-fun mapNonEmpty!4322 () Bool)

(declare-fun tp!10632 () Bool)

(assert (=> mapNonEmpty!4322 (= mapRes!4321 (and tp!10632 e!76210))))

(declare-fun mapKey!4321 () (_ BitVec 32))

(declare-fun mapValue!4321 () ValueCell!1053)

(declare-fun mapRest!4321 () (Array (_ BitVec 32) ValueCell!1053))

(assert (=> mapNonEmpty!4322 (= (arr!2177 (_values!2702 (v!3049 (underlying!415 thiss!992)))) (store mapRest!4321 mapKey!4321 mapValue!4321))))

(declare-fun b!116690 () Bool)

(assert (=> b!116690 (= e!76209 false)))

(declare-datatypes ((tuple2!2526 0))(
  ( (tuple2!2527 (_1!1273 (_ BitVec 64)) (_2!1273 V!3371)) )
))
(declare-datatypes ((List!1699 0))(
  ( (Nil!1696) (Cons!1695 (h!2295 tuple2!2526) (t!5977 List!1699)) )
))
(declare-datatypes ((ListLongMap!1655 0))(
  ( (ListLongMap!1656 (toList!843 List!1699)) )
))
(declare-fun lt!60576 () ListLongMap!1655)

(declare-fun map!1353 (LongMapFixedSize!1014) ListLongMap!1655)

(assert (=> b!116690 (= lt!60576 (map!1353 newMap!16))))

(declare-fun lt!60575 () ListLongMap!1655)

(declare-fun getCurrentListMap!516 (array!4592 array!4594 (_ BitVec 32) (_ BitVec 32) V!3371 V!3371 (_ BitVec 32) Int) ListLongMap!1655)

(assert (=> b!116690 (= lt!60575 (getCurrentListMap!516 (_keys!4442 (v!3049 (underlying!415 thiss!992))) (_values!2702 (v!3049 (underlying!415 thiss!992))) (mask!6937 (v!3049 (underlying!415 thiss!992))) (extraKeys!2508 (v!3049 (underlying!415 thiss!992))) (zeroValue!2586 (v!3049 (underlying!415 thiss!992))) (minValue!2586 (v!3049 (underlying!415 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2719 (v!3049 (underlying!415 thiss!992)))))))

(declare-fun mapIsEmpty!4322 () Bool)

(assert (=> mapIsEmpty!4322 mapRes!4321))

(declare-fun res!57137 () Bool)

(assert (=> start!13236 (=> (not res!57137) (not e!76209))))

(declare-fun valid!475 (LongMap!808) Bool)

(assert (=> start!13236 (= res!57137 (valid!475 thiss!992))))

(assert (=> start!13236 e!76209))

(assert (=> start!13236 e!76213))

(assert (=> start!13236 true))

(assert (=> start!13236 e!76206))

(declare-fun mapNonEmpty!4321 () Bool)

(declare-fun tp!10634 () Bool)

(assert (=> mapNonEmpty!4321 (= mapRes!4322 (and tp!10634 e!76201))))

(declare-fun mapValue!4322 () ValueCell!1053)

(declare-fun mapRest!4322 () (Array (_ BitVec 32) ValueCell!1053))

(declare-fun mapKey!4322 () (_ BitVec 32))

(assert (=> mapNonEmpty!4321 (= (arr!2177 (_values!2702 newMap!16)) (store mapRest!4322 mapKey!4322 mapValue!4322))))

(assert (= (and start!13236 res!57137) b!116683))

(assert (= (and b!116683 res!57138) b!116687))

(assert (= (and b!116687 res!57136) b!116682))

(assert (= (and b!116682 res!57135) b!116690))

(assert (= (and b!116688 condMapEmpty!4322) mapIsEmpty!4322))

(assert (= (and b!116688 (not condMapEmpty!4322)) mapNonEmpty!4322))

(get-info :version)

(assert (= (and mapNonEmpty!4322 ((_ is ValueCellFull!1053) mapValue!4321)) b!116685))

(assert (= (and b!116688 ((_ is ValueCellFull!1053) mapDefault!4322)) b!116681))

(assert (= b!116686 b!116688))

(assert (= b!116679 b!116686))

(assert (= b!116680 b!116679))

(assert (= start!13236 b!116680))

(assert (= (and b!116689 condMapEmpty!4321) mapIsEmpty!4321))

(assert (= (and b!116689 (not condMapEmpty!4321)) mapNonEmpty!4321))

(assert (= (and mapNonEmpty!4321 ((_ is ValueCellFull!1053) mapValue!4322)) b!116684))

(assert (= (and b!116689 ((_ is ValueCellFull!1053) mapDefault!4321)) b!116678))

(assert (= b!116677 b!116689))

(assert (= start!13236 b!116677))

(declare-fun m!132867 () Bool)

(assert (=> b!116677 m!132867))

(declare-fun m!132869 () Bool)

(assert (=> b!116677 m!132869))

(declare-fun m!132871 () Bool)

(assert (=> mapNonEmpty!4321 m!132871))

(declare-fun m!132873 () Bool)

(assert (=> b!116687 m!132873))

(declare-fun m!132875 () Bool)

(assert (=> b!116690 m!132875))

(declare-fun m!132877 () Bool)

(assert (=> b!116690 m!132877))

(declare-fun m!132879 () Bool)

(assert (=> b!116686 m!132879))

(declare-fun m!132881 () Bool)

(assert (=> b!116686 m!132881))

(declare-fun m!132883 () Bool)

(assert (=> mapNonEmpty!4322 m!132883))

(declare-fun m!132885 () Bool)

(assert (=> start!13236 m!132885))

(check-sat (not b_next!2755) b_and!7281 (not b!116677) (not b!116690) (not b_next!2753) (not b!116686) (not start!13236) (not mapNonEmpty!4321) (not mapNonEmpty!4322) tp_is_empty!2793 b_and!7283 (not b!116687))
(check-sat b_and!7281 b_and!7283 (not b_next!2753) (not b_next!2755))
