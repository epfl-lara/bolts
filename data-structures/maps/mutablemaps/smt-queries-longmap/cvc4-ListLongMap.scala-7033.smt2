; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89250 () Bool)

(assert start!89250)

(declare-fun b!1022846 () Bool)

(declare-fun b_free!20255 () Bool)

(declare-fun b_next!20255 () Bool)

(assert (=> b!1022846 (= b_free!20255 (not b_next!20255))))

(declare-fun tp!71800 () Bool)

(declare-fun b_and!32495 () Bool)

(assert (=> b!1022846 (= tp!71800 b_and!32495)))

(declare-fun b!1022843 () Bool)

(declare-fun res!685187 () Bool)

(declare-fun e!576342 () Bool)

(assert (=> b!1022843 (=> (not res!685187) (not e!576342))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022843 (= res!685187 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1022844 () Bool)

(assert (=> b!1022844 (= e!576342 false)))

(declare-fun lt!450325 () Bool)

(declare-datatypes ((V!36839 0))(
  ( (V!36840 (val!12038 Int)) )
))
(declare-datatypes ((ValueCell!11284 0))(
  ( (ValueCellFull!11284 (v!14608 V!36839)) (EmptyCell!11284) )
))
(declare-datatypes ((array!63978 0))(
  ( (array!63979 (arr!30797 (Array (_ BitVec 32) (_ BitVec 64))) (size!31309 (_ BitVec 32))) )
))
(declare-datatypes ((array!63980 0))(
  ( (array!63981 (arr!30798 (Array (_ BitVec 32) ValueCell!11284)) (size!31310 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5162 0))(
  ( (LongMapFixedSize!5163 (defaultEntry!5933 Int) (mask!29535 (_ BitVec 32)) (extraKeys!5665 (_ BitVec 32)) (zeroValue!5769 V!36839) (minValue!5769 V!36839) (_size!2636 (_ BitVec 32)) (_keys!11075 array!63978) (_values!5956 array!63980) (_vacant!2636 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5162)

(declare-datatypes ((List!21805 0))(
  ( (Nil!21802) (Cons!21801 (h!22999 (_ BitVec 64)) (t!30850 List!21805)) )
))
(declare-fun arrayNoDuplicates!0 (array!63978 (_ BitVec 32) List!21805) Bool)

(assert (=> b!1022844 (= lt!450325 (arrayNoDuplicates!0 (_keys!11075 thiss!1427) #b00000000000000000000000000000000 Nil!21802))))

(declare-fun b!1022845 () Bool)

(declare-fun res!685184 () Bool)

(assert (=> b!1022845 (=> (not res!685184) (not e!576342))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63978 (_ BitVec 32)) Bool)

(assert (=> b!1022845 (= res!685184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11075 thiss!1427) (mask!29535 thiss!1427)))))

(declare-fun mapNonEmpty!37380 () Bool)

(declare-fun mapRes!37380 () Bool)

(declare-fun tp!71801 () Bool)

(declare-fun e!576338 () Bool)

(assert (=> mapNonEmpty!37380 (= mapRes!37380 (and tp!71801 e!576338))))

(declare-fun mapKey!37380 () (_ BitVec 32))

(declare-fun mapRest!37380 () (Array (_ BitVec 32) ValueCell!11284))

(declare-fun mapValue!37380 () ValueCell!11284)

(assert (=> mapNonEmpty!37380 (= (arr!30798 (_values!5956 thiss!1427)) (store mapRest!37380 mapKey!37380 mapValue!37380))))

(declare-fun e!576339 () Bool)

(declare-fun e!576343 () Bool)

(declare-fun tp_is_empty!23975 () Bool)

(declare-fun array_inv!23739 (array!63978) Bool)

(declare-fun array_inv!23740 (array!63980) Bool)

(assert (=> b!1022846 (= e!576339 (and tp!71800 tp_is_empty!23975 (array_inv!23739 (_keys!11075 thiss!1427)) (array_inv!23740 (_values!5956 thiss!1427)) e!576343))))

(declare-fun b!1022847 () Bool)

(declare-fun res!685186 () Bool)

(assert (=> b!1022847 (=> (not res!685186) (not e!576342))))

(assert (=> b!1022847 (= res!685186 (and (= (size!31310 (_values!5956 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29535 thiss!1427))) (= (size!31309 (_keys!11075 thiss!1427)) (size!31310 (_values!5956 thiss!1427))) (bvsge (mask!29535 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5665 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5665 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5665 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5665 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5665 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5665 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5665 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!37380 () Bool)

(assert (=> mapIsEmpty!37380 mapRes!37380))

(declare-fun res!685188 () Bool)

(assert (=> start!89250 (=> (not res!685188) (not e!576342))))

(declare-fun valid!1930 (LongMapFixedSize!5162) Bool)

(assert (=> start!89250 (= res!685188 (valid!1930 thiss!1427))))

(assert (=> start!89250 e!576342))

(assert (=> start!89250 e!576339))

(assert (=> start!89250 true))

(declare-fun b!1022848 () Bool)

(declare-fun res!685185 () Bool)

(assert (=> b!1022848 (=> (not res!685185) (not e!576342))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022848 (= res!685185 (validMask!0 (mask!29535 thiss!1427)))))

(declare-fun b!1022849 () Bool)

(declare-fun e!576340 () Bool)

(assert (=> b!1022849 (= e!576340 tp_is_empty!23975)))

(declare-fun b!1022850 () Bool)

(assert (=> b!1022850 (= e!576338 tp_is_empty!23975)))

(declare-fun b!1022851 () Bool)

(assert (=> b!1022851 (= e!576343 (and e!576340 mapRes!37380))))

(declare-fun condMapEmpty!37380 () Bool)

(declare-fun mapDefault!37380 () ValueCell!11284)

