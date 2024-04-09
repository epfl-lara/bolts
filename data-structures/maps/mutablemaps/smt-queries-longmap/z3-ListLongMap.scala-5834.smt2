; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75336 () Bool)

(assert start!75336)

(declare-fun b!887007 () Bool)

(declare-fun b_free!15507 () Bool)

(declare-fun b_next!15507 () Bool)

(assert (=> b!887007 (= b_free!15507 (not b_next!15507))))

(declare-fun tp!54455 () Bool)

(declare-fun b_and!25731 () Bool)

(assert (=> b!887007 (= tp!54455 b_and!25731)))

(declare-fun tp_is_empty!17835 () Bool)

(declare-fun e!493940 () Bool)

(declare-datatypes ((V!28745 0))(
  ( (V!28746 (val!8968 Int)) )
))
(declare-datatypes ((ValueCell!8436 0))(
  ( (ValueCellFull!8436 (v!11412 V!28745)) (EmptyCell!8436) )
))
(declare-datatypes ((array!51616 0))(
  ( (array!51617 (arr!24820 (Array (_ BitVec 32) ValueCell!8436)) (size!25261 (_ BitVec 32))) )
))
(declare-datatypes ((array!51618 0))(
  ( (array!51619 (arr!24821 (Array (_ BitVec 32) (_ BitVec 64))) (size!25262 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3888 0))(
  ( (LongMapFixedSize!3889 (defaultEntry!5132 Int) (mask!25518 (_ BitVec 32)) (extraKeys!4825 (_ BitVec 32)) (zeroValue!4929 V!28745) (minValue!4929 V!28745) (_size!1999 (_ BitVec 32)) (_keys!9803 array!51618) (_values!5116 array!51616) (_vacant!1999 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1042 0))(
  ( (Cell!1043 (v!11413 LongMapFixedSize!3888)) )
))
(declare-datatypes ((LongMap!1042 0))(
  ( (LongMap!1043 (underlying!532 Cell!1042)) )
))
(declare-fun thiss!833 () LongMap!1042)

(declare-fun e!493937 () Bool)

(declare-fun array_inv!19514 (array!51618) Bool)

(declare-fun array_inv!19515 (array!51616) Bool)

(assert (=> b!887007 (= e!493940 (and tp!54455 tp_is_empty!17835 (array_inv!19514 (_keys!9803 (v!11413 (underlying!532 thiss!833)))) (array_inv!19515 (_values!5116 (v!11413 (underlying!532 thiss!833)))) e!493937))))

(declare-fun b!887008 () Bool)

(declare-fun e!493935 () Bool)

(declare-fun e!493939 () Bool)

(assert (=> b!887008 (= e!493935 e!493939)))

(declare-fun b!887009 () Bool)

(declare-fun e!493936 () Bool)

(assert (=> b!887009 (= e!493936 false)))

(declare-fun lt!401147 () Bool)

(declare-fun key!673 () (_ BitVec 64))

(declare-fun contains!4298 (LongMap!1042 (_ BitVec 64)) Bool)

(assert (=> b!887009 (= lt!401147 (contains!4298 thiss!833 key!673))))

(declare-fun lt!401148 () V!28745)

(declare-fun apply!389 (LongMapFixedSize!3888 (_ BitVec 64)) V!28745)

(assert (=> b!887009 (= lt!401148 (apply!389 (v!11413 (underlying!532 thiss!833)) key!673))))

(declare-fun mapNonEmpty!28272 () Bool)

(declare-fun mapRes!28272 () Bool)

(declare-fun tp!54456 () Bool)

(declare-fun e!493934 () Bool)

(assert (=> mapNonEmpty!28272 (= mapRes!28272 (and tp!54456 e!493934))))

(declare-fun mapRest!28272 () (Array (_ BitVec 32) ValueCell!8436))

(declare-fun mapKey!28272 () (_ BitVec 32))

(declare-fun mapValue!28272 () ValueCell!8436)

(assert (=> mapNonEmpty!28272 (= (arr!24820 (_values!5116 (v!11413 (underlying!532 thiss!833)))) (store mapRest!28272 mapKey!28272 mapValue!28272))))

(declare-fun b!887010 () Bool)

(assert (=> b!887010 (= e!493934 tp_is_empty!17835)))

(declare-fun b!887011 () Bool)

(declare-fun e!493933 () Bool)

(assert (=> b!887011 (= e!493937 (and e!493933 mapRes!28272))))

(declare-fun condMapEmpty!28272 () Bool)

(declare-fun mapDefault!28272 () ValueCell!8436)

(assert (=> b!887011 (= condMapEmpty!28272 (= (arr!24820 (_values!5116 (v!11413 (underlying!532 thiss!833)))) ((as const (Array (_ BitVec 32) ValueCell!8436)) mapDefault!28272)))))

(declare-fun b!887012 () Bool)

(assert (=> b!887012 (= e!493933 tp_is_empty!17835)))

(declare-fun res!602081 () Bool)

(assert (=> start!75336 (=> (not res!602081) (not e!493936))))

(declare-fun valid!1505 (LongMap!1042) Bool)

(assert (=> start!75336 (= res!602081 (valid!1505 thiss!833))))

(assert (=> start!75336 e!493936))

(assert (=> start!75336 e!493935))

(assert (=> start!75336 true))

(declare-fun mapIsEmpty!28272 () Bool)

(assert (=> mapIsEmpty!28272 mapRes!28272))

(declare-fun b!887013 () Bool)

(assert (=> b!887013 (= e!493939 e!493940)))

(assert (= (and start!75336 res!602081) b!887009))

(assert (= (and b!887011 condMapEmpty!28272) mapIsEmpty!28272))

(assert (= (and b!887011 (not condMapEmpty!28272)) mapNonEmpty!28272))

(get-info :version)

(assert (= (and mapNonEmpty!28272 ((_ is ValueCellFull!8436) mapValue!28272)) b!887010))

(assert (= (and b!887011 ((_ is ValueCellFull!8436) mapDefault!28272)) b!887012))

(assert (= b!887007 b!887011))

(assert (= b!887013 b!887007))

(assert (= b!887008 b!887013))

(assert (= start!75336 b!887008))

(declare-fun m!826839 () Bool)

(assert (=> b!887007 m!826839))

(declare-fun m!826841 () Bool)

(assert (=> b!887007 m!826841))

(declare-fun m!826843 () Bool)

(assert (=> b!887009 m!826843))

(declare-fun m!826845 () Bool)

(assert (=> b!887009 m!826845))

(declare-fun m!826847 () Bool)

(assert (=> mapNonEmpty!28272 m!826847))

(declare-fun m!826849 () Bool)

(assert (=> start!75336 m!826849))

(check-sat (not b!887009) (not start!75336) tp_is_empty!17835 (not b!887007) (not b_next!15507) b_and!25731 (not mapNonEmpty!28272))
(check-sat b_and!25731 (not b_next!15507))
