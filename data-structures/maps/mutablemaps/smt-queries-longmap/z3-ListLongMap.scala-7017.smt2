; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89152 () Bool)

(assert start!89152)

(declare-fun b!1021611 () Bool)

(declare-fun b_free!20157 () Bool)

(declare-fun b_next!20157 () Bool)

(assert (=> b!1021611 (= b_free!20157 (not b_next!20157))))

(declare-fun tp!71507 () Bool)

(declare-fun b_and!32373 () Bool)

(assert (=> b!1021611 (= tp!71507 b_and!32373)))

(declare-fun b!1021605 () Bool)

(declare-fun e!575457 () Bool)

(assert (=> b!1021605 (= e!575457 false)))

(declare-fun lt!450106 () Bool)

(declare-datatypes ((V!36709 0))(
  ( (V!36710 (val!11989 Int)) )
))
(declare-datatypes ((ValueCell!11235 0))(
  ( (ValueCellFull!11235 (v!14559 V!36709)) (EmptyCell!11235) )
))
(declare-datatypes ((array!63782 0))(
  ( (array!63783 (arr!30699 (Array (_ BitVec 32) (_ BitVec 64))) (size!31211 (_ BitVec 32))) )
))
(declare-datatypes ((array!63784 0))(
  ( (array!63785 (arr!30700 (Array (_ BitVec 32) ValueCell!11235)) (size!31212 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5064 0))(
  ( (LongMapFixedSize!5065 (defaultEntry!5884 Int) (mask!29454 (_ BitVec 32)) (extraKeys!5616 (_ BitVec 32)) (zeroValue!5720 V!36709) (minValue!5720 V!36709) (_size!2587 (_ BitVec 32)) (_keys!11026 array!63782) (_values!5907 array!63784) (_vacant!2587 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5064)

(declare-datatypes ((List!21774 0))(
  ( (Nil!21771) (Cons!21770 (h!22968 (_ BitVec 64)) (t!30795 List!21774)) )
))
(declare-fun arrayNoDuplicates!0 (array!63782 (_ BitVec 32) List!21774) Bool)

(assert (=> b!1021605 (= lt!450106 (arrayNoDuplicates!0 (_keys!11026 thiss!1427) #b00000000000000000000000000000000 Nil!21771))))

(declare-fun mapNonEmpty!37233 () Bool)

(declare-fun mapRes!37233 () Bool)

(declare-fun tp!71506 () Bool)

(declare-fun e!575458 () Bool)

(assert (=> mapNonEmpty!37233 (= mapRes!37233 (and tp!71506 e!575458))))

(declare-fun mapValue!37233 () ValueCell!11235)

(declare-fun mapKey!37233 () (_ BitVec 32))

(declare-fun mapRest!37233 () (Array (_ BitVec 32) ValueCell!11235))

(assert (=> mapNonEmpty!37233 (= (arr!30700 (_values!5907 thiss!1427)) (store mapRest!37233 mapKey!37233 mapValue!37233))))

(declare-fun b!1021606 () Bool)

(declare-fun res!684557 () Bool)

(assert (=> b!1021606 (=> (not res!684557) (not e!575457))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63782 (_ BitVec 32)) Bool)

(assert (=> b!1021606 (= res!684557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11026 thiss!1427) (mask!29454 thiss!1427)))))

(declare-fun b!1021607 () Bool)

(declare-fun res!684560 () Bool)

(assert (=> b!1021607 (=> (not res!684560) (not e!575457))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1021607 (= res!684560 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1021608 () Bool)

(declare-fun res!684559 () Bool)

(assert (=> b!1021608 (=> (not res!684559) (not e!575457))))

(assert (=> b!1021608 (= res!684559 (and (= (size!31212 (_values!5907 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29454 thiss!1427))) (= (size!31211 (_keys!11026 thiss!1427)) (size!31212 (_values!5907 thiss!1427))) (bvsge (mask!29454 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5616 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5616 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5616 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5616 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5616 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5616 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5616 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!37233 () Bool)

(assert (=> mapIsEmpty!37233 mapRes!37233))

(declare-fun b!1021609 () Bool)

(declare-fun e!575461 () Bool)

(declare-fun e!575456 () Bool)

(assert (=> b!1021609 (= e!575461 (and e!575456 mapRes!37233))))

(declare-fun condMapEmpty!37233 () Bool)

(declare-fun mapDefault!37233 () ValueCell!11235)

(assert (=> b!1021609 (= condMapEmpty!37233 (= (arr!30700 (_values!5907 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11235)) mapDefault!37233)))))

(declare-fun b!1021610 () Bool)

(declare-fun tp_is_empty!23877 () Bool)

(assert (=> b!1021610 (= e!575456 tp_is_empty!23877)))

(declare-fun e!575459 () Bool)

(declare-fun array_inv!23673 (array!63782) Bool)

(declare-fun array_inv!23674 (array!63784) Bool)

(assert (=> b!1021611 (= e!575459 (and tp!71507 tp_is_empty!23877 (array_inv!23673 (_keys!11026 thiss!1427)) (array_inv!23674 (_values!5907 thiss!1427)) e!575461))))

(declare-fun b!1021612 () Bool)

(declare-fun res!684558 () Bool)

(assert (=> b!1021612 (=> (not res!684558) (not e!575457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1021612 (= res!684558 (validMask!0 (mask!29454 thiss!1427)))))

(declare-fun b!1021604 () Bool)

(assert (=> b!1021604 (= e!575458 tp_is_empty!23877)))

(declare-fun res!684561 () Bool)

(assert (=> start!89152 (=> (not res!684561) (not e!575457))))

(declare-fun valid!1899 (LongMapFixedSize!5064) Bool)

(assert (=> start!89152 (= res!684561 (valid!1899 thiss!1427))))

(assert (=> start!89152 e!575457))

(assert (=> start!89152 e!575459))

(assert (=> start!89152 true))

(assert (= (and start!89152 res!684561) b!1021607))

(assert (= (and b!1021607 res!684560) b!1021612))

(assert (= (and b!1021612 res!684558) b!1021608))

(assert (= (and b!1021608 res!684559) b!1021606))

(assert (= (and b!1021606 res!684557) b!1021605))

(assert (= (and b!1021609 condMapEmpty!37233) mapIsEmpty!37233))

(assert (= (and b!1021609 (not condMapEmpty!37233)) mapNonEmpty!37233))

(get-info :version)

(assert (= (and mapNonEmpty!37233 ((_ is ValueCellFull!11235) mapValue!37233)) b!1021604))

(assert (= (and b!1021609 ((_ is ValueCellFull!11235) mapDefault!37233)) b!1021610))

(assert (= b!1021611 b!1021609))

(assert (= start!89152 b!1021611))

(declare-fun m!941167 () Bool)

(assert (=> b!1021606 m!941167))

(declare-fun m!941169 () Bool)

(assert (=> b!1021611 m!941169))

(declare-fun m!941171 () Bool)

(assert (=> b!1021611 m!941171))

(declare-fun m!941173 () Bool)

(assert (=> b!1021605 m!941173))

(declare-fun m!941175 () Bool)

(assert (=> mapNonEmpty!37233 m!941175))

(declare-fun m!941177 () Bool)

(assert (=> start!89152 m!941177))

(declare-fun m!941179 () Bool)

(assert (=> b!1021612 m!941179))

(check-sat (not mapNonEmpty!37233) (not start!89152) tp_is_empty!23877 (not b!1021611) b_and!32373 (not b!1021605) (not b_next!20157) (not b!1021612) (not b!1021606))
(check-sat b_and!32373 (not b_next!20157))
