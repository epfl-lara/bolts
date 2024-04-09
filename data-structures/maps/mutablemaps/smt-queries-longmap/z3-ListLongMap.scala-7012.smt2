; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89102 () Bool)

(assert start!89102)

(declare-fun b!1021137 () Bool)

(declare-fun b_free!20127 () Bool)

(declare-fun b_next!20127 () Bool)

(assert (=> b!1021137 (= b_free!20127 (not b_next!20127))))

(declare-fun tp!71410 () Bool)

(declare-fun b_and!32333 () Bool)

(assert (=> b!1021137 (= tp!71410 b_and!32333)))

(declare-fun b!1021132 () Bool)

(declare-fun e!575086 () Bool)

(declare-fun e!575084 () Bool)

(assert (=> b!1021132 (= e!575086 e!575084)))

(declare-fun res!684399 () Bool)

(declare-fun e!575081 () Bool)

(assert (=> start!89102 (=> (not res!684399) (not e!575081))))

(declare-datatypes ((V!36669 0))(
  ( (V!36670 (val!11974 Int)) )
))
(declare-datatypes ((array!63718 0))(
  ( (array!63719 (arr!30669 (Array (_ BitVec 32) (_ BitVec 64))) (size!31181 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!11220 0))(
  ( (ValueCellFull!11220 (v!14536 V!36669)) (EmptyCell!11220) )
))
(declare-datatypes ((array!63720 0))(
  ( (array!63721 (arr!30670 (Array (_ BitVec 32) ValueCell!11220)) (size!31182 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5034 0))(
  ( (LongMapFixedSize!5035 (defaultEntry!5869 Int) (mask!29429 (_ BitVec 32)) (extraKeys!5601 (_ BitVec 32)) (zeroValue!5705 V!36669) (minValue!5705 V!36669) (_size!2572 (_ BitVec 32)) (_keys!11011 array!63718) (_values!5892 array!63720) (_vacant!2572 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1102 0))(
  ( (Cell!1103 (v!14537 LongMapFixedSize!5034)) )
))
(declare-datatypes ((LongMap!1102 0))(
  ( (LongMap!1103 (underlying!562 Cell!1102)) )
))
(declare-fun thiss!908 () LongMap!1102)

(declare-fun valid!1885 (LongMap!1102) Bool)

(assert (=> start!89102 (= res!684399 (valid!1885 thiss!908))))

(assert (=> start!89102 e!575081))

(assert (=> start!89102 e!575086))

(assert (=> start!89102 true))

(declare-fun b!1021133 () Bool)

(declare-fun e!575083 () Bool)

(declare-fun tp_is_empty!23847 () Bool)

(assert (=> b!1021133 (= e!575083 tp_is_empty!23847)))

(declare-fun mapNonEmpty!37182 () Bool)

(declare-fun mapRes!37182 () Bool)

(declare-fun tp!71411 () Bool)

(declare-fun e!575082 () Bool)

(assert (=> mapNonEmpty!37182 (= mapRes!37182 (and tp!71411 e!575082))))

(declare-fun mapRest!37182 () (Array (_ BitVec 32) ValueCell!11220))

(declare-fun mapValue!37182 () ValueCell!11220)

(declare-fun mapKey!37182 () (_ BitVec 32))

(assert (=> mapNonEmpty!37182 (= (arr!30670 (_values!5892 (v!14537 (underlying!562 thiss!908)))) (store mapRest!37182 mapKey!37182 mapValue!37182))))

(declare-fun b!1021134 () Bool)

(assert (=> b!1021134 (= e!575081 false)))

(declare-fun lt!449971 () Bool)

(declare-fun key!697 () (_ BitVec 64))

(declare-datatypes ((tuple2!15566 0))(
  ( (tuple2!15567 (_1!7793 Bool) (_2!7793 LongMapFixedSize!5034)) )
))
(declare-fun remove!6 (LongMapFixedSize!5034 (_ BitVec 64)) tuple2!15566)

(assert (=> b!1021134 (= lt!449971 (valid!1885 (LongMap!1103 (Cell!1103 (_2!7793 (remove!6 (v!14537 (underlying!562 thiss!908)) key!697))))))))

(declare-fun b!1021135 () Bool)

(declare-fun e!575079 () Bool)

(assert (=> b!1021135 (= e!575079 (and e!575083 mapRes!37182))))

(declare-fun condMapEmpty!37182 () Bool)

(declare-fun mapDefault!37182 () ValueCell!11220)

(assert (=> b!1021135 (= condMapEmpty!37182 (= (arr!30670 (_values!5892 (v!14537 (underlying!562 thiss!908)))) ((as const (Array (_ BitVec 32) ValueCell!11220)) mapDefault!37182)))))

(declare-fun mapIsEmpty!37182 () Bool)

(assert (=> mapIsEmpty!37182 mapRes!37182))

(declare-fun b!1021136 () Bool)

(declare-fun e!575085 () Bool)

(assert (=> b!1021136 (= e!575084 e!575085)))

(declare-fun array_inv!23645 (array!63718) Bool)

(declare-fun array_inv!23646 (array!63720) Bool)

(assert (=> b!1021137 (= e!575085 (and tp!71410 tp_is_empty!23847 (array_inv!23645 (_keys!11011 (v!14537 (underlying!562 thiss!908)))) (array_inv!23646 (_values!5892 (v!14537 (underlying!562 thiss!908)))) e!575079))))

(declare-fun b!1021138 () Bool)

(assert (=> b!1021138 (= e!575082 tp_is_empty!23847)))

(assert (= (and start!89102 res!684399) b!1021134))

(assert (= (and b!1021135 condMapEmpty!37182) mapIsEmpty!37182))

(assert (= (and b!1021135 (not condMapEmpty!37182)) mapNonEmpty!37182))

(get-info :version)

(assert (= (and mapNonEmpty!37182 ((_ is ValueCellFull!11220) mapValue!37182)) b!1021138))

(assert (= (and b!1021135 ((_ is ValueCellFull!11220) mapDefault!37182)) b!1021133))

(assert (= b!1021137 b!1021135))

(assert (= b!1021136 b!1021137))

(assert (= b!1021132 b!1021136))

(assert (= start!89102 b!1021132))

(declare-fun m!940877 () Bool)

(assert (=> start!89102 m!940877))

(declare-fun m!940879 () Bool)

(assert (=> mapNonEmpty!37182 m!940879))

(declare-fun m!940881 () Bool)

(assert (=> b!1021134 m!940881))

(declare-fun m!940883 () Bool)

(assert (=> b!1021134 m!940883))

(declare-fun m!940885 () Bool)

(assert (=> b!1021137 m!940885))

(declare-fun m!940887 () Bool)

(assert (=> b!1021137 m!940887))

(check-sat tp_is_empty!23847 (not start!89102) (not b!1021137) (not b_next!20127) (not mapNonEmpty!37182) b_and!32333 (not b!1021134))
(check-sat b_and!32333 (not b_next!20127))
