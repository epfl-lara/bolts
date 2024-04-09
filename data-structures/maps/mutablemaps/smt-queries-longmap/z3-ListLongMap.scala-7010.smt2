; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89090 () Bool)

(assert start!89090)

(declare-fun b!1021009 () Bool)

(declare-fun b_free!20115 () Bool)

(declare-fun b_next!20115 () Bool)

(assert (=> b!1021009 (= b_free!20115 (not b_next!20115))))

(declare-fun tp!71375 () Bool)

(declare-fun b_and!32321 () Bool)

(assert (=> b!1021009 (= tp!71375 b_and!32321)))

(declare-fun b!1021006 () Bool)

(declare-fun e!574941 () Bool)

(declare-fun e!574936 () Bool)

(assert (=> b!1021006 (= e!574941 e!574936)))

(declare-fun b!1021007 () Bool)

(declare-fun e!574938 () Bool)

(assert (=> b!1021007 (= e!574938 false)))

(declare-fun lt!449953 () Bool)

(declare-datatypes ((V!36653 0))(
  ( (V!36654 (val!11968 Int)) )
))
(declare-datatypes ((array!63694 0))(
  ( (array!63695 (arr!30657 (Array (_ BitVec 32) (_ BitVec 64))) (size!31169 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!11214 0))(
  ( (ValueCellFull!11214 (v!14524 V!36653)) (EmptyCell!11214) )
))
(declare-datatypes ((array!63696 0))(
  ( (array!63697 (arr!30658 (Array (_ BitVec 32) ValueCell!11214)) (size!31170 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5022 0))(
  ( (LongMapFixedSize!5023 (defaultEntry!5863 Int) (mask!29419 (_ BitVec 32)) (extraKeys!5595 (_ BitVec 32)) (zeroValue!5699 V!36653) (minValue!5699 V!36653) (_size!2566 (_ BitVec 32)) (_keys!11005 array!63694) (_values!5886 array!63696) (_vacant!2566 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1090 0))(
  ( (Cell!1091 (v!14525 LongMapFixedSize!5022)) )
))
(declare-datatypes ((LongMap!1090 0))(
  ( (LongMap!1091 (underlying!556 Cell!1090)) )
))
(declare-fun thiss!908 () LongMap!1090)

(declare-fun key!697 () (_ BitVec 64))

(declare-fun valid!1880 (LongMap!1090) Bool)

(declare-datatypes ((tuple2!15560 0))(
  ( (tuple2!15561 (_1!7790 Bool) (_2!7790 LongMapFixedSize!5022)) )
))
(declare-fun remove!3 (LongMapFixedSize!5022 (_ BitVec 64)) tuple2!15560)

(assert (=> b!1021007 (= lt!449953 (valid!1880 (LongMap!1091 (Cell!1091 (_2!7790 (remove!3 (v!14525 (underlying!556 thiss!908)) key!697))))))))

(declare-fun b!1021008 () Bool)

(declare-fun e!574940 () Bool)

(declare-fun tp_is_empty!23835 () Bool)

(assert (=> b!1021008 (= e!574940 tp_is_empty!23835)))

(declare-fun e!574937 () Bool)

(declare-fun e!574942 () Bool)

(declare-fun array_inv!23641 (array!63694) Bool)

(declare-fun array_inv!23642 (array!63696) Bool)

(assert (=> b!1021009 (= e!574942 (and tp!71375 tp_is_empty!23835 (array_inv!23641 (_keys!11005 (v!14525 (underlying!556 thiss!908)))) (array_inv!23642 (_values!5886 (v!14525 (underlying!556 thiss!908)))) e!574937))))

(declare-fun res!684381 () Bool)

(assert (=> start!89090 (=> (not res!684381) (not e!574938))))

(assert (=> start!89090 (= res!684381 (valid!1880 thiss!908))))

(assert (=> start!89090 e!574938))

(assert (=> start!89090 e!574941))

(assert (=> start!89090 true))

(declare-fun mapNonEmpty!37164 () Bool)

(declare-fun mapRes!37164 () Bool)

(declare-fun tp!71374 () Bool)

(assert (=> mapNonEmpty!37164 (= mapRes!37164 (and tp!71374 e!574940))))

(declare-fun mapRest!37164 () (Array (_ BitVec 32) ValueCell!11214))

(declare-fun mapValue!37164 () ValueCell!11214)

(declare-fun mapKey!37164 () (_ BitVec 32))

(assert (=> mapNonEmpty!37164 (= (arr!30658 (_values!5886 (v!14525 (underlying!556 thiss!908)))) (store mapRest!37164 mapKey!37164 mapValue!37164))))

(declare-fun b!1021010 () Bool)

(assert (=> b!1021010 (= e!574936 e!574942)))

(declare-fun mapIsEmpty!37164 () Bool)

(assert (=> mapIsEmpty!37164 mapRes!37164))

(declare-fun b!1021011 () Bool)

(declare-fun e!574939 () Bool)

(assert (=> b!1021011 (= e!574939 tp_is_empty!23835)))

(declare-fun b!1021012 () Bool)

(assert (=> b!1021012 (= e!574937 (and e!574939 mapRes!37164))))

(declare-fun condMapEmpty!37164 () Bool)

(declare-fun mapDefault!37164 () ValueCell!11214)

(assert (=> b!1021012 (= condMapEmpty!37164 (= (arr!30658 (_values!5886 (v!14525 (underlying!556 thiss!908)))) ((as const (Array (_ BitVec 32) ValueCell!11214)) mapDefault!37164)))))

(assert (= (and start!89090 res!684381) b!1021007))

(assert (= (and b!1021012 condMapEmpty!37164) mapIsEmpty!37164))

(assert (= (and b!1021012 (not condMapEmpty!37164)) mapNonEmpty!37164))

(get-info :version)

(assert (= (and mapNonEmpty!37164 ((_ is ValueCellFull!11214) mapValue!37164)) b!1021008))

(assert (= (and b!1021012 ((_ is ValueCellFull!11214) mapDefault!37164)) b!1021011))

(assert (= b!1021009 b!1021012))

(assert (= b!1021010 b!1021009))

(assert (= b!1021006 b!1021010))

(assert (= start!89090 b!1021006))

(declare-fun m!940805 () Bool)

(assert (=> b!1021007 m!940805))

(declare-fun m!940807 () Bool)

(assert (=> b!1021007 m!940807))

(declare-fun m!940809 () Bool)

(assert (=> b!1021009 m!940809))

(declare-fun m!940811 () Bool)

(assert (=> b!1021009 m!940811))

(declare-fun m!940813 () Bool)

(assert (=> start!89090 m!940813))

(declare-fun m!940815 () Bool)

(assert (=> mapNonEmpty!37164 m!940815))

(check-sat (not mapNonEmpty!37164) (not b!1021007) (not b!1021009) (not start!89090) (not b_next!20115) tp_is_empty!23835 b_and!32321)
(check-sat b_and!32321 (not b_next!20115))
