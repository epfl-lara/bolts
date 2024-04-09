; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75432 () Bool)

(assert start!75432)

(declare-fun b!887645 () Bool)

(declare-fun b_free!15531 () Bool)

(declare-fun b_next!15531 () Bool)

(assert (=> b!887645 (= b_free!15531 (not b_next!15531))))

(declare-fun tp!54538 () Bool)

(declare-fun b_and!25785 () Bool)

(assert (=> b!887645 (= tp!54538 b_and!25785)))

(declare-fun b!887640 () Bool)

(declare-fun e!494452 () Bool)

(declare-fun e!494453 () Bool)

(assert (=> b!887640 (= e!494452 e!494453)))

(declare-fun b!887641 () Bool)

(declare-fun e!494448 () Bool)

(assert (=> b!887641 (= e!494448 false)))

(declare-fun lt!401404 () Bool)

(declare-datatypes ((V!28777 0))(
  ( (V!28778 (val!8980 Int)) )
))
(declare-datatypes ((array!51670 0))(
  ( (array!51671 (arr!24844 (Array (_ BitVec 32) (_ BitVec 64))) (size!25285 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!8448 0))(
  ( (ValueCellFull!8448 (v!11440 V!28777)) (EmptyCell!8448) )
))
(declare-datatypes ((array!51672 0))(
  ( (array!51673 (arr!24845 (Array (_ BitVec 32) ValueCell!8448)) (size!25286 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3912 0))(
  ( (LongMapFixedSize!3913 (defaultEntry!5147 Int) (mask!25544 (_ BitVec 32)) (extraKeys!4841 (_ BitVec 32)) (zeroValue!4945 V!28777) (minValue!4945 V!28777) (_size!2011 (_ BitVec 32)) (_keys!9820 array!51670) (_values!5132 array!51672) (_vacant!2011 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1066 0))(
  ( (Cell!1067 (v!11441 LongMapFixedSize!3912)) )
))
(declare-datatypes ((LongMap!1066 0))(
  ( (LongMap!1067 (underlying!544 Cell!1066)) )
))
(declare-fun thiss!821 () LongMap!1066)

(declare-fun key!666 () (_ BitVec 64))

(declare-fun contains!4309 (LongMapFixedSize!3912 (_ BitVec 64)) Bool)

(assert (=> b!887641 (= lt!401404 (contains!4309 (v!11441 (underlying!544 thiss!821)) key!666))))

(declare-fun b!887642 () Bool)

(declare-fun e!494450 () Bool)

(declare-fun e!494449 () Bool)

(declare-fun mapRes!28318 () Bool)

(assert (=> b!887642 (= e!494450 (and e!494449 mapRes!28318))))

(declare-fun condMapEmpty!28318 () Bool)

(declare-fun mapDefault!28318 () ValueCell!8448)

(assert (=> b!887642 (= condMapEmpty!28318 (= (arr!24845 (_values!5132 (v!11441 (underlying!544 thiss!821)))) ((as const (Array (_ BitVec 32) ValueCell!8448)) mapDefault!28318)))))

(declare-fun res!602220 () Bool)

(assert (=> start!75432 (=> (not res!602220) (not e!494448))))

(declare-fun valid!1516 (LongMap!1066) Bool)

(assert (=> start!75432 (= res!602220 (valid!1516 thiss!821))))

(assert (=> start!75432 e!494448))

(assert (=> start!75432 e!494452))

(assert (=> start!75432 true))

(declare-fun b!887643 () Bool)

(declare-fun tp_is_empty!17859 () Bool)

(assert (=> b!887643 (= e!494449 tp_is_empty!17859)))

(declare-fun b!887644 () Bool)

(declare-fun e!494451 () Bool)

(assert (=> b!887644 (= e!494451 tp_is_empty!17859)))

(declare-fun mapNonEmpty!28318 () Bool)

(declare-fun tp!54537 () Bool)

(assert (=> mapNonEmpty!28318 (= mapRes!28318 (and tp!54537 e!494451))))

(declare-fun mapValue!28318 () ValueCell!8448)

(declare-fun mapRest!28318 () (Array (_ BitVec 32) ValueCell!8448))

(declare-fun mapKey!28318 () (_ BitVec 32))

(assert (=> mapNonEmpty!28318 (= (arr!24845 (_values!5132 (v!11441 (underlying!544 thiss!821)))) (store mapRest!28318 mapKey!28318 mapValue!28318))))

(declare-fun e!494455 () Bool)

(declare-fun array_inv!19530 (array!51670) Bool)

(declare-fun array_inv!19531 (array!51672) Bool)

(assert (=> b!887645 (= e!494455 (and tp!54538 tp_is_empty!17859 (array_inv!19530 (_keys!9820 (v!11441 (underlying!544 thiss!821)))) (array_inv!19531 (_values!5132 (v!11441 (underlying!544 thiss!821)))) e!494450))))

(declare-fun b!887646 () Bool)

(assert (=> b!887646 (= e!494453 e!494455)))

(declare-fun mapIsEmpty!28318 () Bool)

(assert (=> mapIsEmpty!28318 mapRes!28318))

(assert (= (and start!75432 res!602220) b!887641))

(assert (= (and b!887642 condMapEmpty!28318) mapIsEmpty!28318))

(assert (= (and b!887642 (not condMapEmpty!28318)) mapNonEmpty!28318))

(get-info :version)

(assert (= (and mapNonEmpty!28318 ((_ is ValueCellFull!8448) mapValue!28318)) b!887644))

(assert (= (and b!887642 ((_ is ValueCellFull!8448) mapDefault!28318)) b!887643))

(assert (= b!887645 b!887642))

(assert (= b!887646 b!887645))

(assert (= b!887640 b!887646))

(assert (= start!75432 b!887640))

(declare-fun m!827255 () Bool)

(assert (=> b!887641 m!827255))

(declare-fun m!827257 () Bool)

(assert (=> start!75432 m!827257))

(declare-fun m!827259 () Bool)

(assert (=> mapNonEmpty!28318 m!827259))

(declare-fun m!827261 () Bool)

(assert (=> b!887645 m!827261))

(declare-fun m!827263 () Bool)

(assert (=> b!887645 m!827263))

(check-sat (not b!887645) (not b_next!15531) (not b!887641) b_and!25785 (not mapNonEmpty!28318) tp_is_empty!17859 (not start!75432))
(check-sat b_and!25785 (not b_next!15531))
