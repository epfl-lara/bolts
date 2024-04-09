; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89194 () Bool)

(assert start!89194)

(declare-fun b!1022175 () Bool)

(declare-fun b_free!20199 () Bool)

(declare-fun b_next!20199 () Bool)

(assert (=> b!1022175 (= b_free!20199 (not b_next!20199))))

(declare-fun tp!71632 () Bool)

(declare-fun b_and!32415 () Bool)

(assert (=> b!1022175 (= tp!71632 b_and!32415)))

(declare-fun b!1022171 () Bool)

(declare-fun e!575837 () Bool)

(assert (=> b!1022171 (= e!575837 false)))

(declare-fun lt!450169 () Bool)

(declare-datatypes ((V!36765 0))(
  ( (V!36766 (val!12010 Int)) )
))
(declare-datatypes ((ValueCell!11256 0))(
  ( (ValueCellFull!11256 (v!14580 V!36765)) (EmptyCell!11256) )
))
(declare-datatypes ((array!63866 0))(
  ( (array!63867 (arr!30741 (Array (_ BitVec 32) (_ BitVec 64))) (size!31253 (_ BitVec 32))) )
))
(declare-datatypes ((array!63868 0))(
  ( (array!63869 (arr!30742 (Array (_ BitVec 32) ValueCell!11256)) (size!31254 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5106 0))(
  ( (LongMapFixedSize!5107 (defaultEntry!5905 Int) (mask!29489 (_ BitVec 32)) (extraKeys!5637 (_ BitVec 32)) (zeroValue!5741 V!36765) (minValue!5741 V!36765) (_size!2608 (_ BitVec 32)) (_keys!11047 array!63866) (_values!5928 array!63868) (_vacant!2608 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5106)

(declare-datatypes ((List!21784 0))(
  ( (Nil!21781) (Cons!21780 (h!22978 (_ BitVec 64)) (t!30805 List!21784)) )
))
(declare-fun arrayNoDuplicates!0 (array!63866 (_ BitVec 32) List!21784) Bool)

(assert (=> b!1022171 (= lt!450169 (arrayNoDuplicates!0 (_keys!11047 thiss!1427) #b00000000000000000000000000000000 Nil!21781))))

(declare-fun b!1022172 () Bool)

(declare-fun res!684872 () Bool)

(assert (=> b!1022172 (=> (not res!684872) (not e!575837))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022172 (= res!684872 (validMask!0 (mask!29489 thiss!1427)))))

(declare-fun b!1022173 () Bool)

(declare-fun e!575839 () Bool)

(declare-fun tp_is_empty!23919 () Bool)

(assert (=> b!1022173 (= e!575839 tp_is_empty!23919)))

(declare-fun b!1022174 () Bool)

(declare-fun res!684873 () Bool)

(assert (=> b!1022174 (=> (not res!684873) (not e!575837))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022174 (= res!684873 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!575838 () Bool)

(declare-fun e!575836 () Bool)

(declare-fun array_inv!23697 (array!63866) Bool)

(declare-fun array_inv!23698 (array!63868) Bool)

(assert (=> b!1022175 (= e!575836 (and tp!71632 tp_is_empty!23919 (array_inv!23697 (_keys!11047 thiss!1427)) (array_inv!23698 (_values!5928 thiss!1427)) e!575838))))

(declare-fun b!1022176 () Bool)

(declare-fun mapRes!37296 () Bool)

(assert (=> b!1022176 (= e!575838 (and e!575839 mapRes!37296))))

(declare-fun condMapEmpty!37296 () Bool)

(declare-fun mapDefault!37296 () ValueCell!11256)

(assert (=> b!1022176 (= condMapEmpty!37296 (= (arr!30742 (_values!5928 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11256)) mapDefault!37296)))))

(declare-fun mapNonEmpty!37296 () Bool)

(declare-fun tp!71633 () Bool)

(declare-fun e!575835 () Bool)

(assert (=> mapNonEmpty!37296 (= mapRes!37296 (and tp!71633 e!575835))))

(declare-fun mapKey!37296 () (_ BitVec 32))

(declare-fun mapRest!37296 () (Array (_ BitVec 32) ValueCell!11256))

(declare-fun mapValue!37296 () ValueCell!11256)

(assert (=> mapNonEmpty!37296 (= (arr!30742 (_values!5928 thiss!1427)) (store mapRest!37296 mapKey!37296 mapValue!37296))))

(declare-fun b!1022177 () Bool)

(declare-fun res!684876 () Bool)

(assert (=> b!1022177 (=> (not res!684876) (not e!575837))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63866 (_ BitVec 32)) Bool)

(assert (=> b!1022177 (= res!684876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11047 thiss!1427) (mask!29489 thiss!1427)))))

(declare-fun res!684875 () Bool)

(assert (=> start!89194 (=> (not res!684875) (not e!575837))))

(declare-fun valid!1909 (LongMapFixedSize!5106) Bool)

(assert (=> start!89194 (= res!684875 (valid!1909 thiss!1427))))

(assert (=> start!89194 e!575837))

(assert (=> start!89194 e!575836))

(assert (=> start!89194 true))

(declare-fun b!1022178 () Bool)

(assert (=> b!1022178 (= e!575835 tp_is_empty!23919)))

(declare-fun mapIsEmpty!37296 () Bool)

(assert (=> mapIsEmpty!37296 mapRes!37296))

(declare-fun b!1022179 () Bool)

(declare-fun res!684874 () Bool)

(assert (=> b!1022179 (=> (not res!684874) (not e!575837))))

(assert (=> b!1022179 (= res!684874 (and (= (size!31254 (_values!5928 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29489 thiss!1427))) (= (size!31253 (_keys!11047 thiss!1427)) (size!31254 (_values!5928 thiss!1427))) (bvsge (mask!29489 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5637 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5637 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5637 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5637 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5637 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5637 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5637 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!89194 res!684875) b!1022174))

(assert (= (and b!1022174 res!684873) b!1022172))

(assert (= (and b!1022172 res!684872) b!1022179))

(assert (= (and b!1022179 res!684874) b!1022177))

(assert (= (and b!1022177 res!684876) b!1022171))

(assert (= (and b!1022176 condMapEmpty!37296) mapIsEmpty!37296))

(assert (= (and b!1022176 (not condMapEmpty!37296)) mapNonEmpty!37296))

(get-info :version)

(assert (= (and mapNonEmpty!37296 ((_ is ValueCellFull!11256) mapValue!37296)) b!1022178))

(assert (= (and b!1022176 ((_ is ValueCellFull!11256) mapDefault!37296)) b!1022173))

(assert (= b!1022175 b!1022176))

(assert (= start!89194 b!1022175))

(declare-fun m!941461 () Bool)

(assert (=> b!1022172 m!941461))

(declare-fun m!941463 () Bool)

(assert (=> start!89194 m!941463))

(declare-fun m!941465 () Bool)

(assert (=> b!1022177 m!941465))

(declare-fun m!941467 () Bool)

(assert (=> b!1022171 m!941467))

(declare-fun m!941469 () Bool)

(assert (=> b!1022175 m!941469))

(declare-fun m!941471 () Bool)

(assert (=> b!1022175 m!941471))

(declare-fun m!941473 () Bool)

(assert (=> mapNonEmpty!37296 m!941473))

(check-sat (not b!1022171) b_and!32415 (not start!89194) (not b!1022177) (not b!1022172) (not b!1022175) (not b_next!20199) (not mapNonEmpty!37296) tp_is_empty!23919)
(check-sat b_and!32415 (not b_next!20199))
