; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89248 () Bool)

(assert start!89248)

(declare-fun b!1022823 () Bool)

(declare-fun b_free!20253 () Bool)

(declare-fun b_next!20253 () Bool)

(assert (=> b!1022823 (= b_free!20253 (not b_next!20253))))

(declare-fun tp!71795 () Bool)

(declare-fun b_and!32493 () Bool)

(assert (=> b!1022823 (= tp!71795 b_and!32493)))

(declare-fun mapNonEmpty!37377 () Bool)

(declare-fun mapRes!37377 () Bool)

(declare-fun tp!71794 () Bool)

(declare-fun e!576324 () Bool)

(assert (=> mapNonEmpty!37377 (= mapRes!37377 (and tp!71794 e!576324))))

(declare-datatypes ((V!36837 0))(
  ( (V!36838 (val!12037 Int)) )
))
(declare-datatypes ((ValueCell!11283 0))(
  ( (ValueCellFull!11283 (v!14607 V!36837)) (EmptyCell!11283) )
))
(declare-fun mapValue!37377 () ValueCell!11283)

(declare-datatypes ((array!63974 0))(
  ( (array!63975 (arr!30795 (Array (_ BitVec 32) (_ BitVec 64))) (size!31307 (_ BitVec 32))) )
))
(declare-datatypes ((array!63976 0))(
  ( (array!63977 (arr!30796 (Array (_ BitVec 32) ValueCell!11283)) (size!31308 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5160 0))(
  ( (LongMapFixedSize!5161 (defaultEntry!5932 Int) (mask!29534 (_ BitVec 32)) (extraKeys!5664 (_ BitVec 32)) (zeroValue!5768 V!36837) (minValue!5768 V!36837) (_size!2635 (_ BitVec 32)) (_keys!11074 array!63974) (_values!5955 array!63976) (_vacant!2635 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5160)

(declare-fun mapRest!37377 () (Array (_ BitVec 32) ValueCell!11283))

(declare-fun mapKey!37377 () (_ BitVec 32))

(assert (=> mapNonEmpty!37377 (= (arr!30796 (_values!5955 thiss!1427)) (store mapRest!37377 mapKey!37377 mapValue!37377))))

(declare-fun res!685172 () Bool)

(declare-fun e!576322 () Bool)

(assert (=> start!89248 (=> (not res!685172) (not e!576322))))

(declare-fun valid!1929 (LongMapFixedSize!5160) Bool)

(assert (=> start!89248 (= res!685172 (valid!1929 thiss!1427))))

(assert (=> start!89248 e!576322))

(declare-fun e!576320 () Bool)

(assert (=> start!89248 e!576320))

(assert (=> start!89248 true))

(declare-fun b!1022816 () Bool)

(declare-fun e!576325 () Bool)

(declare-fun e!576323 () Bool)

(assert (=> b!1022816 (= e!576325 (and e!576323 mapRes!37377))))

(declare-fun condMapEmpty!37377 () Bool)

(declare-fun mapDefault!37377 () ValueCell!11283)

(assert (=> b!1022816 (= condMapEmpty!37377 (= (arr!30796 (_values!5955 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11283)) mapDefault!37377)))))

(declare-fun b!1022817 () Bool)

(declare-fun tp_is_empty!23973 () Bool)

(assert (=> b!1022817 (= e!576323 tp_is_empty!23973)))

(declare-fun mapIsEmpty!37377 () Bool)

(assert (=> mapIsEmpty!37377 mapRes!37377))

(declare-fun b!1022818 () Bool)

(declare-fun res!685173 () Bool)

(assert (=> b!1022818 (=> (not res!685173) (not e!576322))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022818 (= res!685173 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1022819 () Bool)

(assert (=> b!1022819 (= e!576324 tp_is_empty!23973)))

(declare-fun b!1022820 () Bool)

(declare-fun res!685170 () Bool)

(assert (=> b!1022820 (=> (not res!685170) (not e!576322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63974 (_ BitVec 32)) Bool)

(assert (=> b!1022820 (= res!685170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11074 thiss!1427) (mask!29534 thiss!1427)))))

(declare-fun b!1022821 () Bool)

(declare-fun res!685169 () Bool)

(assert (=> b!1022821 (=> (not res!685169) (not e!576322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022821 (= res!685169 (validMask!0 (mask!29534 thiss!1427)))))

(declare-fun b!1022822 () Bool)

(declare-fun res!685171 () Bool)

(assert (=> b!1022822 (=> (not res!685171) (not e!576322))))

(assert (=> b!1022822 (= res!685171 (and (= (size!31308 (_values!5955 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29534 thiss!1427))) (= (size!31307 (_keys!11074 thiss!1427)) (size!31308 (_values!5955 thiss!1427))) (bvsge (mask!29534 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5664 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5664 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5664 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5664 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5664 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5664 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5664 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun array_inv!23737 (array!63974) Bool)

(declare-fun array_inv!23738 (array!63976) Bool)

(assert (=> b!1022823 (= e!576320 (and tp!71795 tp_is_empty!23973 (array_inv!23737 (_keys!11074 thiss!1427)) (array_inv!23738 (_values!5955 thiss!1427)) e!576325))))

(declare-fun b!1022824 () Bool)

(assert (=> b!1022824 (= e!576322 false)))

(declare-fun lt!450322 () Bool)

(declare-datatypes ((List!21804 0))(
  ( (Nil!21801) (Cons!21800 (h!22998 (_ BitVec 64)) (t!30849 List!21804)) )
))
(declare-fun arrayNoDuplicates!0 (array!63974 (_ BitVec 32) List!21804) Bool)

(assert (=> b!1022824 (= lt!450322 (arrayNoDuplicates!0 (_keys!11074 thiss!1427) #b00000000000000000000000000000000 Nil!21801))))

(assert (= (and start!89248 res!685172) b!1022818))

(assert (= (and b!1022818 res!685173) b!1022821))

(assert (= (and b!1022821 res!685169) b!1022822))

(assert (= (and b!1022822 res!685171) b!1022820))

(assert (= (and b!1022820 res!685170) b!1022824))

(assert (= (and b!1022816 condMapEmpty!37377) mapIsEmpty!37377))

(assert (= (and b!1022816 (not condMapEmpty!37377)) mapNonEmpty!37377))

(get-info :version)

(assert (= (and mapNonEmpty!37377 ((_ is ValueCellFull!11283) mapValue!37377)) b!1022819))

(assert (= (and b!1022816 ((_ is ValueCellFull!11283) mapDefault!37377)) b!1022817))

(assert (= b!1022823 b!1022816))

(assert (= start!89248 b!1022823))

(declare-fun m!941911 () Bool)

(assert (=> b!1022821 m!941911))

(declare-fun m!941913 () Bool)

(assert (=> b!1022820 m!941913))

(declare-fun m!941915 () Bool)

(assert (=> b!1022824 m!941915))

(declare-fun m!941917 () Bool)

(assert (=> start!89248 m!941917))

(declare-fun m!941919 () Bool)

(assert (=> mapNonEmpty!37377 m!941919))

(declare-fun m!941921 () Bool)

(assert (=> b!1022823 m!941921))

(declare-fun m!941923 () Bool)

(assert (=> b!1022823 m!941923))

(check-sat b_and!32493 (not b!1022823) (not start!89248) (not mapNonEmpty!37377) (not b!1022824) (not b!1022821) tp_is_empty!23973 (not b_next!20253) (not b!1022820))
(check-sat b_and!32493 (not b_next!20253))
