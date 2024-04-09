; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89206 () Bool)

(assert start!89206)

(declare-fun b!1022335 () Bool)

(declare-fun b_free!20211 () Bool)

(declare-fun b_next!20211 () Bool)

(assert (=> b!1022335 (= b_free!20211 (not b_next!20211))))

(declare-fun tp!71669 () Bool)

(declare-fun b_and!32427 () Bool)

(assert (=> b!1022335 (= tp!71669 b_and!32427)))

(declare-fun b!1022333 () Bool)

(declare-fun res!684966 () Bool)

(declare-fun e!575945 () Bool)

(assert (=> b!1022333 (=> (not res!684966) (not e!575945))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022333 (= res!684966 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1022334 () Bool)

(declare-fun e!575943 () Bool)

(declare-fun e!575946 () Bool)

(declare-fun mapRes!37314 () Bool)

(assert (=> b!1022334 (= e!575943 (and e!575946 mapRes!37314))))

(declare-fun condMapEmpty!37314 () Bool)

(declare-datatypes ((V!36781 0))(
  ( (V!36782 (val!12016 Int)) )
))
(declare-datatypes ((ValueCell!11262 0))(
  ( (ValueCellFull!11262 (v!14586 V!36781)) (EmptyCell!11262) )
))
(declare-datatypes ((array!63890 0))(
  ( (array!63891 (arr!30753 (Array (_ BitVec 32) (_ BitVec 64))) (size!31265 (_ BitVec 32))) )
))
(declare-datatypes ((array!63892 0))(
  ( (array!63893 (arr!30754 (Array (_ BitVec 32) ValueCell!11262)) (size!31266 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5118 0))(
  ( (LongMapFixedSize!5119 (defaultEntry!5911 Int) (mask!29499 (_ BitVec 32)) (extraKeys!5643 (_ BitVec 32)) (zeroValue!5747 V!36781) (minValue!5747 V!36781) (_size!2614 (_ BitVec 32)) (_keys!11053 array!63890) (_values!5934 array!63892) (_vacant!2614 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5118)

(declare-fun mapDefault!37314 () ValueCell!11262)

(assert (=> b!1022334 (= condMapEmpty!37314 (= (arr!30754 (_values!5934 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11262)) mapDefault!37314)))))

(declare-fun e!575944 () Bool)

(declare-fun tp_is_empty!23931 () Bool)

(declare-fun array_inv!23705 (array!63890) Bool)

(declare-fun array_inv!23706 (array!63892) Bool)

(assert (=> b!1022335 (= e!575944 (and tp!71669 tp_is_empty!23931 (array_inv!23705 (_keys!11053 thiss!1427)) (array_inv!23706 (_values!5934 thiss!1427)) e!575943))))

(declare-fun mapIsEmpty!37314 () Bool)

(assert (=> mapIsEmpty!37314 mapRes!37314))

(declare-fun res!684962 () Bool)

(assert (=> start!89206 (=> (not res!684962) (not e!575945))))

(declare-fun valid!1914 (LongMapFixedSize!5118) Bool)

(assert (=> start!89206 (= res!684962 (valid!1914 thiss!1427))))

(assert (=> start!89206 e!575945))

(assert (=> start!89206 e!575944))

(assert (=> start!89206 true))

(declare-fun b!1022336 () Bool)

(declare-fun res!684965 () Bool)

(assert (=> b!1022336 (=> (not res!684965) (not e!575945))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63890 (_ BitVec 32)) Bool)

(assert (=> b!1022336 (= res!684965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11053 thiss!1427) (mask!29499 thiss!1427)))))

(declare-fun b!1022337 () Bool)

(assert (=> b!1022337 (= e!575946 tp_is_empty!23931)))

(declare-fun b!1022338 () Bool)

(assert (=> b!1022338 (= e!575945 false)))

(declare-fun lt!450187 () Bool)

(declare-datatypes ((List!21789 0))(
  ( (Nil!21786) (Cons!21785 (h!22983 (_ BitVec 64)) (t!30810 List!21789)) )
))
(declare-fun arrayNoDuplicates!0 (array!63890 (_ BitVec 32) List!21789) Bool)

(assert (=> b!1022338 (= lt!450187 (arrayNoDuplicates!0 (_keys!11053 thiss!1427) #b00000000000000000000000000000000 Nil!21786))))

(declare-fun b!1022339 () Bool)

(declare-fun res!684964 () Bool)

(assert (=> b!1022339 (=> (not res!684964) (not e!575945))))

(assert (=> b!1022339 (= res!684964 (and (= (size!31266 (_values!5934 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29499 thiss!1427))) (= (size!31265 (_keys!11053 thiss!1427)) (size!31266 (_values!5934 thiss!1427))) (bvsge (mask!29499 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5643 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5643 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5643 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5643 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5643 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5643 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5643 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1022340 () Bool)

(declare-fun e!575947 () Bool)

(assert (=> b!1022340 (= e!575947 tp_is_empty!23931)))

(declare-fun b!1022341 () Bool)

(declare-fun res!684963 () Bool)

(assert (=> b!1022341 (=> (not res!684963) (not e!575945))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022341 (= res!684963 (validMask!0 (mask!29499 thiss!1427)))))

(declare-fun mapNonEmpty!37314 () Bool)

(declare-fun tp!71668 () Bool)

(assert (=> mapNonEmpty!37314 (= mapRes!37314 (and tp!71668 e!575947))))

(declare-fun mapRest!37314 () (Array (_ BitVec 32) ValueCell!11262))

(declare-fun mapKey!37314 () (_ BitVec 32))

(declare-fun mapValue!37314 () ValueCell!11262)

(assert (=> mapNonEmpty!37314 (= (arr!30754 (_values!5934 thiss!1427)) (store mapRest!37314 mapKey!37314 mapValue!37314))))

(assert (= (and start!89206 res!684962) b!1022333))

(assert (= (and b!1022333 res!684966) b!1022341))

(assert (= (and b!1022341 res!684963) b!1022339))

(assert (= (and b!1022339 res!684964) b!1022336))

(assert (= (and b!1022336 res!684965) b!1022338))

(assert (= (and b!1022334 condMapEmpty!37314) mapIsEmpty!37314))

(assert (= (and b!1022334 (not condMapEmpty!37314)) mapNonEmpty!37314))

(get-info :version)

(assert (= (and mapNonEmpty!37314 ((_ is ValueCellFull!11262) mapValue!37314)) b!1022340))

(assert (= (and b!1022334 ((_ is ValueCellFull!11262) mapDefault!37314)) b!1022337))

(assert (= b!1022335 b!1022334))

(assert (= start!89206 b!1022335))

(declare-fun m!941545 () Bool)

(assert (=> b!1022335 m!941545))

(declare-fun m!941547 () Bool)

(assert (=> b!1022335 m!941547))

(declare-fun m!941549 () Bool)

(assert (=> mapNonEmpty!37314 m!941549))

(declare-fun m!941551 () Bool)

(assert (=> b!1022338 m!941551))

(declare-fun m!941553 () Bool)

(assert (=> b!1022341 m!941553))

(declare-fun m!941555 () Bool)

(assert (=> start!89206 m!941555))

(declare-fun m!941557 () Bool)

(assert (=> b!1022336 m!941557))

(check-sat (not b!1022338) (not b_next!20211) tp_is_empty!23931 (not start!89206) b_and!32427 (not mapNonEmpty!37314) (not b!1022335) (not b!1022336) (not b!1022341))
(check-sat b_and!32427 (not b_next!20211))
