; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89192 () Bool)

(assert start!89192)

(declare-fun b!1022144 () Bool)

(declare-fun b_free!20197 () Bool)

(declare-fun b_next!20197 () Bool)

(assert (=> b!1022144 (= b_free!20197 (not b_next!20197))))

(declare-fun tp!71627 () Bool)

(declare-fun b_and!32413 () Bool)

(assert (=> b!1022144 (= tp!71627 b_and!32413)))

(declare-fun e!575818 () Bool)

(declare-fun tp_is_empty!23917 () Bool)

(declare-datatypes ((V!36763 0))(
  ( (V!36764 (val!12009 Int)) )
))
(declare-datatypes ((ValueCell!11255 0))(
  ( (ValueCellFull!11255 (v!14579 V!36763)) (EmptyCell!11255) )
))
(declare-datatypes ((array!63862 0))(
  ( (array!63863 (arr!30739 (Array (_ BitVec 32) (_ BitVec 64))) (size!31251 (_ BitVec 32))) )
))
(declare-datatypes ((array!63864 0))(
  ( (array!63865 (arr!30740 (Array (_ BitVec 32) ValueCell!11255)) (size!31252 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5104 0))(
  ( (LongMapFixedSize!5105 (defaultEntry!5904 Int) (mask!29488 (_ BitVec 32)) (extraKeys!5636 (_ BitVec 32)) (zeroValue!5740 V!36763) (minValue!5740 V!36763) (_size!2607 (_ BitVec 32)) (_keys!11046 array!63862) (_values!5927 array!63864) (_vacant!2607 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5104)

(declare-fun e!575820 () Bool)

(declare-fun array_inv!23695 (array!63862) Bool)

(declare-fun array_inv!23696 (array!63864) Bool)

(assert (=> b!1022144 (= e!575820 (and tp!71627 tp_is_empty!23917 (array_inv!23695 (_keys!11046 thiss!1427)) (array_inv!23696 (_values!5927 thiss!1427)) e!575818))))

(declare-fun b!1022145 () Bool)

(declare-fun e!575821 () Bool)

(assert (=> b!1022145 (= e!575821 tp_is_empty!23917)))

(declare-fun b!1022146 () Bool)

(declare-fun res!684857 () Bool)

(declare-fun e!575819 () Bool)

(assert (=> b!1022146 (=> (not res!684857) (not e!575819))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022146 (= res!684857 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1022147 () Bool)

(declare-fun res!684860 () Bool)

(assert (=> b!1022147 (=> (not res!684860) (not e!575819))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63862 (_ BitVec 32)) Bool)

(assert (=> b!1022147 (= res!684860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11046 thiss!1427) (mask!29488 thiss!1427)))))

(declare-fun b!1022148 () Bool)

(assert (=> b!1022148 (= e!575819 false)))

(declare-fun lt!450166 () Bool)

(declare-datatypes ((List!21783 0))(
  ( (Nil!21780) (Cons!21779 (h!22977 (_ BitVec 64)) (t!30804 List!21783)) )
))
(declare-fun arrayNoDuplicates!0 (array!63862 (_ BitVec 32) List!21783) Bool)

(assert (=> b!1022148 (= lt!450166 (arrayNoDuplicates!0 (_keys!11046 thiss!1427) #b00000000000000000000000000000000 Nil!21780))))

(declare-fun b!1022149 () Bool)

(declare-fun res!684858 () Bool)

(assert (=> b!1022149 (=> (not res!684858) (not e!575819))))

(assert (=> b!1022149 (= res!684858 (and (= (size!31252 (_values!5927 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29488 thiss!1427))) (= (size!31251 (_keys!11046 thiss!1427)) (size!31252 (_values!5927 thiss!1427))) (bvsge (mask!29488 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5636 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5636 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5636 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5636 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5636 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5636 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5636 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1022150 () Bool)

(declare-fun e!575816 () Bool)

(assert (=> b!1022150 (= e!575816 tp_is_empty!23917)))

(declare-fun b!1022151 () Bool)

(declare-fun res!684859 () Bool)

(assert (=> b!1022151 (=> (not res!684859) (not e!575819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022151 (= res!684859 (validMask!0 (mask!29488 thiss!1427)))))

(declare-fun mapNonEmpty!37293 () Bool)

(declare-fun mapRes!37293 () Bool)

(declare-fun tp!71626 () Bool)

(assert (=> mapNonEmpty!37293 (= mapRes!37293 (and tp!71626 e!575821))))

(declare-fun mapRest!37293 () (Array (_ BitVec 32) ValueCell!11255))

(declare-fun mapValue!37293 () ValueCell!11255)

(declare-fun mapKey!37293 () (_ BitVec 32))

(assert (=> mapNonEmpty!37293 (= (arr!30740 (_values!5927 thiss!1427)) (store mapRest!37293 mapKey!37293 mapValue!37293))))

(declare-fun b!1022152 () Bool)

(assert (=> b!1022152 (= e!575818 (and e!575816 mapRes!37293))))

(declare-fun condMapEmpty!37293 () Bool)

(declare-fun mapDefault!37293 () ValueCell!11255)

