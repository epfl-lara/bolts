; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89182 () Bool)

(assert start!89182)

(declare-fun b!1022016 () Bool)

(declare-fun b_free!20187 () Bool)

(declare-fun b_next!20187 () Bool)

(assert (=> b!1022016 (= b_free!20187 (not b_next!20187))))

(declare-fun tp!71596 () Bool)

(declare-fun b_and!32403 () Bool)

(assert (=> b!1022016 (= tp!71596 b_and!32403)))

(declare-fun b!1022009 () Bool)

(declare-fun res!684786 () Bool)

(declare-fun e!575726 () Bool)

(assert (=> b!1022009 (=> (not res!684786) (not e!575726))))

(declare-datatypes ((V!36749 0))(
  ( (V!36750 (val!12004 Int)) )
))
(declare-datatypes ((ValueCell!11250 0))(
  ( (ValueCellFull!11250 (v!14574 V!36749)) (EmptyCell!11250) )
))
(declare-datatypes ((array!63842 0))(
  ( (array!63843 (arr!30729 (Array (_ BitVec 32) (_ BitVec 64))) (size!31241 (_ BitVec 32))) )
))
(declare-datatypes ((array!63844 0))(
  ( (array!63845 (arr!30730 (Array (_ BitVec 32) ValueCell!11250)) (size!31242 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5094 0))(
  ( (LongMapFixedSize!5095 (defaultEntry!5899 Int) (mask!29479 (_ BitVec 32)) (extraKeys!5631 (_ BitVec 32)) (zeroValue!5735 V!36749) (minValue!5735 V!36749) (_size!2602 (_ BitVec 32)) (_keys!11041 array!63842) (_values!5922 array!63844) (_vacant!2602 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5094)

(assert (=> b!1022009 (= res!684786 (and (= (size!31242 (_values!5922 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29479 thiss!1427))) (= (size!31241 (_keys!11041 thiss!1427)) (size!31242 (_values!5922 thiss!1427))) (bvsge (mask!29479 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5631 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5631 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5631 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5631 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5631 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5631 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5631 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1022010 () Bool)

(declare-fun e!575727 () Bool)

(declare-fun e!575729 () Bool)

(declare-fun mapRes!37278 () Bool)

(assert (=> b!1022010 (= e!575727 (and e!575729 mapRes!37278))))

(declare-fun condMapEmpty!37278 () Bool)

(declare-fun mapDefault!37278 () ValueCell!11250)

(assert (=> b!1022010 (= condMapEmpty!37278 (= (arr!30730 (_values!5922 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11250)) mapDefault!37278)))))

(declare-fun res!684785 () Bool)

(assert (=> start!89182 (=> (not res!684785) (not e!575726))))

(declare-fun valid!1905 (LongMapFixedSize!5094) Bool)

(assert (=> start!89182 (= res!684785 (valid!1905 thiss!1427))))

(assert (=> start!89182 e!575726))

(declare-fun e!575728 () Bool)

(assert (=> start!89182 e!575728))

(assert (=> start!89182 true))

(declare-fun b!1022011 () Bool)

(declare-fun e!575731 () Bool)

(declare-fun tp_is_empty!23907 () Bool)

(assert (=> b!1022011 (= e!575731 tp_is_empty!23907)))

(declare-fun b!1022012 () Bool)

(assert (=> b!1022012 (= e!575729 tp_is_empty!23907)))

(declare-fun b!1022013 () Bool)

(declare-fun res!684783 () Bool)

(assert (=> b!1022013 (=> (not res!684783) (not e!575726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63842 (_ BitVec 32)) Bool)

(assert (=> b!1022013 (= res!684783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11041 thiss!1427) (mask!29479 thiss!1427)))))

(declare-fun b!1022014 () Bool)

(assert (=> b!1022014 (= e!575726 false)))

(declare-fun lt!450151 () Bool)

(declare-datatypes ((List!21780 0))(
  ( (Nil!21777) (Cons!21776 (h!22974 (_ BitVec 64)) (t!30801 List!21780)) )
))
(declare-fun arrayNoDuplicates!0 (array!63842 (_ BitVec 32) List!21780) Bool)

(assert (=> b!1022014 (= lt!450151 (arrayNoDuplicates!0 (_keys!11041 thiss!1427) #b00000000000000000000000000000000 Nil!21777))))

(declare-fun b!1022015 () Bool)

(declare-fun res!684784 () Bool)

(assert (=> b!1022015 (=> (not res!684784) (not e!575726))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022015 (= res!684784 (validMask!0 (mask!29479 thiss!1427)))))

(declare-fun array_inv!23689 (array!63842) Bool)

(declare-fun array_inv!23690 (array!63844) Bool)

(assert (=> b!1022016 (= e!575728 (and tp!71596 tp_is_empty!23907 (array_inv!23689 (_keys!11041 thiss!1427)) (array_inv!23690 (_values!5922 thiss!1427)) e!575727))))

(declare-fun mapIsEmpty!37278 () Bool)

(assert (=> mapIsEmpty!37278 mapRes!37278))

(declare-fun mapNonEmpty!37278 () Bool)

(declare-fun tp!71597 () Bool)

(assert (=> mapNonEmpty!37278 (= mapRes!37278 (and tp!71597 e!575731))))

(declare-fun mapKey!37278 () (_ BitVec 32))

(declare-fun mapRest!37278 () (Array (_ BitVec 32) ValueCell!11250))

(declare-fun mapValue!37278 () ValueCell!11250)

(assert (=> mapNonEmpty!37278 (= (arr!30730 (_values!5922 thiss!1427)) (store mapRest!37278 mapKey!37278 mapValue!37278))))

(declare-fun b!1022017 () Bool)

(declare-fun res!684782 () Bool)

(assert (=> b!1022017 (=> (not res!684782) (not e!575726))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022017 (= res!684782 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!89182 res!684785) b!1022017))

(assert (= (and b!1022017 res!684782) b!1022015))

(assert (= (and b!1022015 res!684784) b!1022009))

(assert (= (and b!1022009 res!684786) b!1022013))

(assert (= (and b!1022013 res!684783) b!1022014))

(assert (= (and b!1022010 condMapEmpty!37278) mapIsEmpty!37278))

(assert (= (and b!1022010 (not condMapEmpty!37278)) mapNonEmpty!37278))

(get-info :version)

(assert (= (and mapNonEmpty!37278 ((_ is ValueCellFull!11250) mapValue!37278)) b!1022011))

(assert (= (and b!1022010 ((_ is ValueCellFull!11250) mapDefault!37278)) b!1022012))

(assert (= b!1022016 b!1022010))

(assert (= start!89182 b!1022016))

(declare-fun m!941377 () Bool)

(assert (=> b!1022015 m!941377))

(declare-fun m!941379 () Bool)

(assert (=> start!89182 m!941379))

(declare-fun m!941381 () Bool)

(assert (=> b!1022013 m!941381))

(declare-fun m!941383 () Bool)

(assert (=> mapNonEmpty!37278 m!941383))

(declare-fun m!941385 () Bool)

(assert (=> b!1022014 m!941385))

(declare-fun m!941387 () Bool)

(assert (=> b!1022016 m!941387))

(declare-fun m!941389 () Bool)

(assert (=> b!1022016 m!941389))

(check-sat (not b_next!20187) (not start!89182) tp_is_empty!23907 (not b!1022015) (not mapNonEmpty!37278) (not b!1022016) b_and!32403 (not b!1022013) (not b!1022014))
(check-sat b_and!32403 (not b_next!20187))
