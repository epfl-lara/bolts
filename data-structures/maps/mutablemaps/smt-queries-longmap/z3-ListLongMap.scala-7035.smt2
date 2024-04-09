; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89260 () Bool)

(assert start!89260)

(declare-fun b!1022979 () Bool)

(declare-fun b_free!20265 () Bool)

(declare-fun b_next!20265 () Bool)

(assert (=> b!1022979 (= b_free!20265 (not b_next!20265))))

(declare-fun tp!71831 () Bool)

(declare-fun b_and!32505 () Bool)

(assert (=> b!1022979 (= tp!71831 b_and!32505)))

(declare-fun b!1022978 () Bool)

(declare-fun e!576433 () Bool)

(declare-fun tp_is_empty!23985 () Bool)

(assert (=> b!1022978 (= e!576433 tp_is_empty!23985)))

(declare-fun e!576428 () Bool)

(declare-fun e!576429 () Bool)

(declare-datatypes ((V!36853 0))(
  ( (V!36854 (val!12043 Int)) )
))
(declare-datatypes ((ValueCell!11289 0))(
  ( (ValueCellFull!11289 (v!14613 V!36853)) (EmptyCell!11289) )
))
(declare-datatypes ((array!63998 0))(
  ( (array!63999 (arr!30807 (Array (_ BitVec 32) (_ BitVec 64))) (size!31319 (_ BitVec 32))) )
))
(declare-datatypes ((array!64000 0))(
  ( (array!64001 (arr!30808 (Array (_ BitVec 32) ValueCell!11289)) (size!31320 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5172 0))(
  ( (LongMapFixedSize!5173 (defaultEntry!5938 Int) (mask!29544 (_ BitVec 32)) (extraKeys!5670 (_ BitVec 32)) (zeroValue!5774 V!36853) (minValue!5774 V!36853) (_size!2641 (_ BitVec 32)) (_keys!11080 array!63998) (_values!5961 array!64000) (_vacant!2641 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5172)

(declare-fun array_inv!23745 (array!63998) Bool)

(declare-fun array_inv!23746 (array!64000) Bool)

(assert (=> b!1022979 (= e!576429 (and tp!71831 tp_is_empty!23985 (array_inv!23745 (_keys!11080 thiss!1427)) (array_inv!23746 (_values!5961 thiss!1427)) e!576428))))

(declare-fun mapNonEmpty!37395 () Bool)

(declare-fun mapRes!37395 () Bool)

(declare-fun tp!71830 () Bool)

(declare-fun e!576431 () Bool)

(assert (=> mapNonEmpty!37395 (= mapRes!37395 (and tp!71830 e!576431))))

(declare-fun mapKey!37395 () (_ BitVec 32))

(declare-fun mapRest!37395 () (Array (_ BitVec 32) ValueCell!11289))

(declare-fun mapValue!37395 () ValueCell!11289)

(assert (=> mapNonEmpty!37395 (= (arr!30808 (_values!5961 thiss!1427)) (store mapRest!37395 mapKey!37395 mapValue!37395))))

(declare-fun b!1022980 () Bool)

(declare-fun res!685261 () Bool)

(declare-fun e!576430 () Bool)

(assert (=> b!1022980 (=> (not res!685261) (not e!576430))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63998 (_ BitVec 32)) Bool)

(assert (=> b!1022980 (= res!685261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11080 thiss!1427) (mask!29544 thiss!1427)))))

(declare-fun b!1022981 () Bool)

(assert (=> b!1022981 (= e!576428 (and e!576433 mapRes!37395))))

(declare-fun condMapEmpty!37395 () Bool)

(declare-fun mapDefault!37395 () ValueCell!11289)

(assert (=> b!1022981 (= condMapEmpty!37395 (= (arr!30808 (_values!5961 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11289)) mapDefault!37395)))))

(declare-fun mapIsEmpty!37395 () Bool)

(assert (=> mapIsEmpty!37395 mapRes!37395))

(declare-fun b!1022982 () Bool)

(assert (=> b!1022982 (= e!576431 tp_is_empty!23985)))

(declare-fun b!1022984 () Bool)

(declare-fun res!685263 () Bool)

(assert (=> b!1022984 (=> (not res!685263) (not e!576430))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022984 (= res!685263 (validMask!0 (mask!29544 thiss!1427)))))

(declare-fun res!685262 () Bool)

(assert (=> start!89260 (=> (not res!685262) (not e!576430))))

(declare-fun valid!1932 (LongMapFixedSize!5172) Bool)

(assert (=> start!89260 (= res!685262 (valid!1932 thiss!1427))))

(assert (=> start!89260 e!576430))

(assert (=> start!89260 e!576429))

(assert (=> start!89260 true))

(declare-fun b!1022983 () Bool)

(declare-fun res!685259 () Bool)

(assert (=> b!1022983 (=> (not res!685259) (not e!576430))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022983 (= res!685259 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1022985 () Bool)

(declare-fun res!685260 () Bool)

(assert (=> b!1022985 (=> (not res!685260) (not e!576430))))

(assert (=> b!1022985 (= res!685260 (and (= (size!31320 (_values!5961 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29544 thiss!1427))) (= (size!31319 (_keys!11080 thiss!1427)) (size!31320 (_values!5961 thiss!1427))) (bvsge (mask!29544 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5670 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5670 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5670 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5670 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5670 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5670 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5670 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1022986 () Bool)

(assert (=> b!1022986 (= e!576430 false)))

(declare-fun lt!450340 () Bool)

(declare-datatypes ((List!21808 0))(
  ( (Nil!21805) (Cons!21804 (h!23002 (_ BitVec 64)) (t!30853 List!21808)) )
))
(declare-fun arrayNoDuplicates!0 (array!63998 (_ BitVec 32) List!21808) Bool)

(assert (=> b!1022986 (= lt!450340 (arrayNoDuplicates!0 (_keys!11080 thiss!1427) #b00000000000000000000000000000000 Nil!21805))))

(assert (= (and start!89260 res!685262) b!1022983))

(assert (= (and b!1022983 res!685259) b!1022984))

(assert (= (and b!1022984 res!685263) b!1022985))

(assert (= (and b!1022985 res!685260) b!1022980))

(assert (= (and b!1022980 res!685261) b!1022986))

(assert (= (and b!1022981 condMapEmpty!37395) mapIsEmpty!37395))

(assert (= (and b!1022981 (not condMapEmpty!37395)) mapNonEmpty!37395))

(get-info :version)

(assert (= (and mapNonEmpty!37395 ((_ is ValueCellFull!11289) mapValue!37395)) b!1022982))

(assert (= (and b!1022981 ((_ is ValueCellFull!11289) mapDefault!37395)) b!1022978))

(assert (= b!1022979 b!1022981))

(assert (= start!89260 b!1022979))

(declare-fun m!941995 () Bool)

(assert (=> b!1022979 m!941995))

(declare-fun m!941997 () Bool)

(assert (=> b!1022979 m!941997))

(declare-fun m!941999 () Bool)

(assert (=> b!1022984 m!941999))

(declare-fun m!942001 () Bool)

(assert (=> b!1022980 m!942001))

(declare-fun m!942003 () Bool)

(assert (=> start!89260 m!942003))

(declare-fun m!942005 () Bool)

(assert (=> mapNonEmpty!37395 m!942005))

(declare-fun m!942007 () Bool)

(assert (=> b!1022986 m!942007))

(check-sat (not start!89260) (not b_next!20265) (not b!1022984) (not b!1022979) (not mapNonEmpty!37395) tp_is_empty!23985 b_and!32505 (not b!1022980) (not b!1022986))
(check-sat b_and!32505 (not b_next!20265))
