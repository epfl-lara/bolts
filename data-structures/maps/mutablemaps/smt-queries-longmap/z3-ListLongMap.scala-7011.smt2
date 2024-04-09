; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89096 () Bool)

(assert start!89096)

(declare-fun b!1021073 () Bool)

(declare-fun b_free!20121 () Bool)

(declare-fun b_next!20121 () Bool)

(assert (=> b!1021073 (= b_free!20121 (not b_next!20121))))

(declare-fun tp!71392 () Bool)

(declare-fun b_and!32327 () Bool)

(assert (=> b!1021073 (= tp!71392 b_and!32327)))

(declare-fun b!1021069 () Bool)

(declare-fun e!575014 () Bool)

(declare-fun e!575011 () Bool)

(assert (=> b!1021069 (= e!575014 e!575011)))

(declare-fun b!1021070 () Bool)

(declare-fun e!575013 () Bool)

(assert (=> b!1021070 (= e!575011 e!575013)))

(declare-fun mapIsEmpty!37173 () Bool)

(declare-fun mapRes!37173 () Bool)

(assert (=> mapIsEmpty!37173 mapRes!37173))

(declare-fun mapNonEmpty!37173 () Bool)

(declare-fun tp!71393 () Bool)

(declare-fun e!575010 () Bool)

(assert (=> mapNonEmpty!37173 (= mapRes!37173 (and tp!71393 e!575010))))

(declare-datatypes ((V!36661 0))(
  ( (V!36662 (val!11971 Int)) )
))
(declare-datatypes ((ValueCell!11217 0))(
  ( (ValueCellFull!11217 (v!14530 V!36661)) (EmptyCell!11217) )
))
(declare-fun mapValue!37173 () ValueCell!11217)

(declare-datatypes ((array!63706 0))(
  ( (array!63707 (arr!30663 (Array (_ BitVec 32) (_ BitVec 64))) (size!31175 (_ BitVec 32))) )
))
(declare-datatypes ((array!63708 0))(
  ( (array!63709 (arr!30664 (Array (_ BitVec 32) ValueCell!11217)) (size!31176 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5028 0))(
  ( (LongMapFixedSize!5029 (defaultEntry!5866 Int) (mask!29424 (_ BitVec 32)) (extraKeys!5598 (_ BitVec 32)) (zeroValue!5702 V!36661) (minValue!5702 V!36661) (_size!2569 (_ BitVec 32)) (_keys!11008 array!63706) (_values!5889 array!63708) (_vacant!2569 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1096 0))(
  ( (Cell!1097 (v!14531 LongMapFixedSize!5028)) )
))
(declare-datatypes ((LongMap!1096 0))(
  ( (LongMap!1097 (underlying!559 Cell!1096)) )
))
(declare-fun thiss!908 () LongMap!1096)

(declare-fun mapRest!37173 () (Array (_ BitVec 32) ValueCell!11217))

(declare-fun mapKey!37173 () (_ BitVec 32))

(assert (=> mapNonEmpty!37173 (= (arr!30664 (_values!5889 (v!14531 (underlying!559 thiss!908)))) (store mapRest!37173 mapKey!37173 mapValue!37173))))

(declare-fun res!684390 () Bool)

(declare-fun e!575009 () Bool)

(assert (=> start!89096 (=> (not res!684390) (not e!575009))))

(declare-fun valid!1883 (LongMap!1096) Bool)

(assert (=> start!89096 (= res!684390 (valid!1883 thiss!908))))

(assert (=> start!89096 e!575009))

(assert (=> start!89096 e!575014))

(assert (=> start!89096 true))

(declare-fun b!1021071 () Bool)

(declare-fun e!575008 () Bool)

(declare-fun tp_is_empty!23841 () Bool)

(assert (=> b!1021071 (= e!575008 tp_is_empty!23841)))

(declare-fun b!1021072 () Bool)

(assert (=> b!1021072 (= e!575009 false)))

(declare-fun lt!449962 () Bool)

(declare-fun key!697 () (_ BitVec 64))

(declare-datatypes ((tuple2!15564 0))(
  ( (tuple2!15565 (_1!7792 Bool) (_2!7792 LongMapFixedSize!5028)) )
))
(declare-fun remove!5 (LongMapFixedSize!5028 (_ BitVec 64)) tuple2!15564)

(assert (=> b!1021072 (= lt!449962 (valid!1883 (LongMap!1097 (Cell!1097 (_2!7792 (remove!5 (v!14531 (underlying!559 thiss!908)) key!697))))))))

(declare-fun e!575012 () Bool)

(declare-fun array_inv!23643 (array!63706) Bool)

(declare-fun array_inv!23644 (array!63708) Bool)

(assert (=> b!1021073 (= e!575013 (and tp!71392 tp_is_empty!23841 (array_inv!23643 (_keys!11008 (v!14531 (underlying!559 thiss!908)))) (array_inv!23644 (_values!5889 (v!14531 (underlying!559 thiss!908)))) e!575012))))

(declare-fun b!1021074 () Bool)

(assert (=> b!1021074 (= e!575010 tp_is_empty!23841)))

(declare-fun b!1021075 () Bool)

(assert (=> b!1021075 (= e!575012 (and e!575008 mapRes!37173))))

(declare-fun condMapEmpty!37173 () Bool)

(declare-fun mapDefault!37173 () ValueCell!11217)

(assert (=> b!1021075 (= condMapEmpty!37173 (= (arr!30664 (_values!5889 (v!14531 (underlying!559 thiss!908)))) ((as const (Array (_ BitVec 32) ValueCell!11217)) mapDefault!37173)))))

(assert (= (and start!89096 res!684390) b!1021072))

(assert (= (and b!1021075 condMapEmpty!37173) mapIsEmpty!37173))

(assert (= (and b!1021075 (not condMapEmpty!37173)) mapNonEmpty!37173))

(get-info :version)

(assert (= (and mapNonEmpty!37173 ((_ is ValueCellFull!11217) mapValue!37173)) b!1021074))

(assert (= (and b!1021075 ((_ is ValueCellFull!11217) mapDefault!37173)) b!1021071))

(assert (= b!1021073 b!1021075))

(assert (= b!1021070 b!1021073))

(assert (= b!1021069 b!1021070))

(assert (= start!89096 b!1021069))

(declare-fun m!940841 () Bool)

(assert (=> mapNonEmpty!37173 m!940841))

(declare-fun m!940843 () Bool)

(assert (=> start!89096 m!940843))

(declare-fun m!940845 () Bool)

(assert (=> b!1021072 m!940845))

(declare-fun m!940847 () Bool)

(assert (=> b!1021072 m!940847))

(declare-fun m!940849 () Bool)

(assert (=> b!1021073 m!940849))

(declare-fun m!940851 () Bool)

(assert (=> b!1021073 m!940851))

(check-sat (not start!89096) (not b!1021072) (not b_next!20121) b_and!32327 tp_is_empty!23841 (not b!1021073) (not mapNonEmpty!37173))
(check-sat b_and!32327 (not b_next!20121))
