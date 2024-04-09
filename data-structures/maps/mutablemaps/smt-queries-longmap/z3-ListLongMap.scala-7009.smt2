; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89084 () Bool)

(assert start!89084)

(declare-fun b!1020947 () Bool)

(declare-fun b_free!20109 () Bool)

(declare-fun b_next!20109 () Bool)

(assert (=> b!1020947 (= b_free!20109 (not b_next!20109))))

(declare-fun tp!71357 () Bool)

(declare-fun b_and!32315 () Bool)

(assert (=> b!1020947 (= tp!71357 b_and!32315)))

(declare-fun b!1020943 () Bool)

(declare-fun e!574864 () Bool)

(declare-fun e!574866 () Bool)

(declare-fun mapRes!37155 () Bool)

(assert (=> b!1020943 (= e!574864 (and e!574866 mapRes!37155))))

(declare-fun condMapEmpty!37155 () Bool)

(declare-datatypes ((V!36645 0))(
  ( (V!36646 (val!11965 Int)) )
))
(declare-datatypes ((array!63682 0))(
  ( (array!63683 (arr!30651 (Array (_ BitVec 32) (_ BitVec 64))) (size!31163 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!11211 0))(
  ( (ValueCellFull!11211 (v!14518 V!36645)) (EmptyCell!11211) )
))
(declare-datatypes ((array!63684 0))(
  ( (array!63685 (arr!30652 (Array (_ BitVec 32) ValueCell!11211)) (size!31164 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5016 0))(
  ( (LongMapFixedSize!5017 (defaultEntry!5860 Int) (mask!29414 (_ BitVec 32)) (extraKeys!5592 (_ BitVec 32)) (zeroValue!5696 V!36645) (minValue!5696 V!36645) (_size!2563 (_ BitVec 32)) (_keys!11002 array!63682) (_values!5883 array!63684) (_vacant!2563 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1084 0))(
  ( (Cell!1085 (v!14519 LongMapFixedSize!5016)) )
))
(declare-datatypes ((LongMap!1084 0))(
  ( (LongMap!1085 (underlying!553 Cell!1084)) )
))
(declare-fun thiss!908 () LongMap!1084)

(declare-fun mapDefault!37155 () ValueCell!11211)

(assert (=> b!1020943 (= condMapEmpty!37155 (= (arr!30652 (_values!5883 (v!14519 (underlying!553 thiss!908)))) ((as const (Array (_ BitVec 32) ValueCell!11211)) mapDefault!37155)))))

(declare-fun b!1020944 () Bool)

(declare-fun e!574865 () Bool)

(declare-fun tp_is_empty!23829 () Bool)

(assert (=> b!1020944 (= e!574865 tp_is_empty!23829)))

(declare-fun b!1020945 () Bool)

(assert (=> b!1020945 (= e!574866 tp_is_empty!23829)))

(declare-fun mapIsEmpty!37155 () Bool)

(assert (=> mapIsEmpty!37155 mapRes!37155))

(declare-fun res!684372 () Bool)

(declare-fun e!574868 () Bool)

(assert (=> start!89084 (=> (not res!684372) (not e!574868))))

(declare-fun valid!1879 (LongMap!1084) Bool)

(assert (=> start!89084 (= res!684372 (valid!1879 thiss!908))))

(assert (=> start!89084 e!574868))

(declare-fun e!574863 () Bool)

(assert (=> start!89084 e!574863))

(assert (=> start!89084 true))

(declare-fun b!1020946 () Bool)

(declare-fun e!574869 () Bool)

(assert (=> b!1020946 (= e!574863 e!574869)))

(declare-fun mapNonEmpty!37155 () Bool)

(declare-fun tp!71356 () Bool)

(assert (=> mapNonEmpty!37155 (= mapRes!37155 (and tp!71356 e!574865))))

(declare-fun mapKey!37155 () (_ BitVec 32))

(declare-fun mapRest!37155 () (Array (_ BitVec 32) ValueCell!11211))

(declare-fun mapValue!37155 () ValueCell!11211)

(assert (=> mapNonEmpty!37155 (= (arr!30652 (_values!5883 (v!14519 (underlying!553 thiss!908)))) (store mapRest!37155 mapKey!37155 mapValue!37155))))

(declare-fun e!574867 () Bool)

(declare-fun array_inv!23639 (array!63682) Bool)

(declare-fun array_inv!23640 (array!63684) Bool)

(assert (=> b!1020947 (= e!574867 (and tp!71357 tp_is_empty!23829 (array_inv!23639 (_keys!11002 (v!14519 (underlying!553 thiss!908)))) (array_inv!23640 (_values!5883 (v!14519 (underlying!553 thiss!908)))) e!574864))))

(declare-fun b!1020948 () Bool)

(assert (=> b!1020948 (= e!574869 e!574867)))

(declare-fun b!1020949 () Bool)

(assert (=> b!1020949 (= e!574868 false)))

(declare-fun lt!449944 () Bool)

(declare-fun key!697 () (_ BitVec 64))

(declare-datatypes ((tuple2!15558 0))(
  ( (tuple2!15559 (_1!7789 Bool) (_2!7789 LongMapFixedSize!5016)) )
))
(declare-fun remove!2 (LongMapFixedSize!5016 (_ BitVec 64)) tuple2!15558)

(assert (=> b!1020949 (= lt!449944 (valid!1879 (LongMap!1085 (Cell!1085 (_2!7789 (remove!2 (v!14519 (underlying!553 thiss!908)) key!697))))))))

(assert (= (and start!89084 res!684372) b!1020949))

(assert (= (and b!1020943 condMapEmpty!37155) mapIsEmpty!37155))

(assert (= (and b!1020943 (not condMapEmpty!37155)) mapNonEmpty!37155))

(get-info :version)

(assert (= (and mapNonEmpty!37155 ((_ is ValueCellFull!11211) mapValue!37155)) b!1020944))

(assert (= (and b!1020943 ((_ is ValueCellFull!11211) mapDefault!37155)) b!1020945))

(assert (= b!1020947 b!1020943))

(assert (= b!1020948 b!1020947))

(assert (= b!1020946 b!1020948))

(assert (= start!89084 b!1020946))

(declare-fun m!940769 () Bool)

(assert (=> start!89084 m!940769))

(declare-fun m!940771 () Bool)

(assert (=> mapNonEmpty!37155 m!940771))

(declare-fun m!940773 () Bool)

(assert (=> b!1020947 m!940773))

(declare-fun m!940775 () Bool)

(assert (=> b!1020947 m!940775))

(declare-fun m!940777 () Bool)

(assert (=> b!1020949 m!940777))

(declare-fun m!940779 () Bool)

(assert (=> b!1020949 m!940779))

(check-sat b_and!32315 (not mapNonEmpty!37155) (not b!1020947) (not b!1020949) tp_is_empty!23829 (not b_next!20109) (not start!89084))
(check-sat b_and!32315 (not b_next!20109))
