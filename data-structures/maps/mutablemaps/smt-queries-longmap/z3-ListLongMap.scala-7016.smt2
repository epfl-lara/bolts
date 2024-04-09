; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89146 () Bool)

(assert start!89146)

(declare-fun b!1021529 () Bool)

(declare-fun b_free!20151 () Bool)

(declare-fun b_next!20151 () Bool)

(assert (=> b!1021529 (= b_free!20151 (not b_next!20151))))

(declare-fun tp!71488 () Bool)

(declare-fun b_and!32367 () Bool)

(assert (=> b!1021529 (= tp!71488 b_and!32367)))

(declare-fun b!1021523 () Bool)

(declare-fun res!684516 () Bool)

(declare-fun e!575407 () Bool)

(assert (=> b!1021523 (=> (not res!684516) (not e!575407))))

(declare-datatypes ((V!36701 0))(
  ( (V!36702 (val!11986 Int)) )
))
(declare-datatypes ((ValueCell!11232 0))(
  ( (ValueCellFull!11232 (v!14556 V!36701)) (EmptyCell!11232) )
))
(declare-datatypes ((array!63770 0))(
  ( (array!63771 (arr!30693 (Array (_ BitVec 32) (_ BitVec 64))) (size!31205 (_ BitVec 32))) )
))
(declare-datatypes ((array!63772 0))(
  ( (array!63773 (arr!30694 (Array (_ BitVec 32) ValueCell!11232)) (size!31206 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5058 0))(
  ( (LongMapFixedSize!5059 (defaultEntry!5881 Int) (mask!29449 (_ BitVec 32)) (extraKeys!5613 (_ BitVec 32)) (zeroValue!5717 V!36701) (minValue!5717 V!36701) (_size!2584 (_ BitVec 32)) (_keys!11023 array!63770) (_values!5904 array!63772) (_vacant!2584 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5058)

(assert (=> b!1021523 (= res!684516 (and (= (size!31206 (_values!5904 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29449 thiss!1427))) (= (size!31205 (_keys!11023 thiss!1427)) (size!31206 (_values!5904 thiss!1427))) (bvsge (mask!29449 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5613 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5613 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5613 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5613 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5613 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5613 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5613 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1021524 () Bool)

(assert (=> b!1021524 (= e!575407 false)))

(declare-fun lt!450097 () Bool)

(declare-datatypes ((List!21772 0))(
  ( (Nil!21769) (Cons!21768 (h!22966 (_ BitVec 64)) (t!30793 List!21772)) )
))
(declare-fun arrayNoDuplicates!0 (array!63770 (_ BitVec 32) List!21772) Bool)

(assert (=> b!1021524 (= lt!450097 (arrayNoDuplicates!0 (_keys!11023 thiss!1427) #b00000000000000000000000000000000 Nil!21769))))

(declare-fun b!1021525 () Bool)

(declare-fun res!684512 () Bool)

(assert (=> b!1021525 (=> (not res!684512) (not e!575407))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1021525 (= res!684512 (validMask!0 (mask!29449 thiss!1427)))))

(declare-fun mapIsEmpty!37224 () Bool)

(declare-fun mapRes!37224 () Bool)

(assert (=> mapIsEmpty!37224 mapRes!37224))

(declare-fun b!1021526 () Bool)

(declare-fun res!684515 () Bool)

(assert (=> b!1021526 (=> (not res!684515) (not e!575407))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63770 (_ BitVec 32)) Bool)

(assert (=> b!1021526 (= res!684515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11023 thiss!1427) (mask!29449 thiss!1427)))))

(declare-fun b!1021527 () Bool)

(declare-fun e!575404 () Bool)

(declare-fun tp_is_empty!23871 () Bool)

(assert (=> b!1021527 (= e!575404 tp_is_empty!23871)))

(declare-fun b!1021528 () Bool)

(declare-fun res!684513 () Bool)

(assert (=> b!1021528 (=> (not res!684513) (not e!575407))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1021528 (= res!684513 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!37224 () Bool)

(declare-fun tp!71489 () Bool)

(declare-fun e!575405 () Bool)

(assert (=> mapNonEmpty!37224 (= mapRes!37224 (and tp!71489 e!575405))))

(declare-fun mapKey!37224 () (_ BitVec 32))

(declare-fun mapValue!37224 () ValueCell!11232)

(declare-fun mapRest!37224 () (Array (_ BitVec 32) ValueCell!11232))

(assert (=> mapNonEmpty!37224 (= (arr!30694 (_values!5904 thiss!1427)) (store mapRest!37224 mapKey!37224 mapValue!37224))))

(declare-fun e!575403 () Bool)

(declare-fun e!575402 () Bool)

(declare-fun array_inv!23667 (array!63770) Bool)

(declare-fun array_inv!23668 (array!63772) Bool)

(assert (=> b!1021529 (= e!575402 (and tp!71488 tp_is_empty!23871 (array_inv!23667 (_keys!11023 thiss!1427)) (array_inv!23668 (_values!5904 thiss!1427)) e!575403))))

(declare-fun res!684514 () Bool)

(assert (=> start!89146 (=> (not res!684514) (not e!575407))))

(declare-fun valid!1896 (LongMapFixedSize!5058) Bool)

(assert (=> start!89146 (= res!684514 (valid!1896 thiss!1427))))

(assert (=> start!89146 e!575407))

(assert (=> start!89146 e!575402))

(assert (=> start!89146 true))

(declare-fun b!1021530 () Bool)

(assert (=> b!1021530 (= e!575405 tp_is_empty!23871)))

(declare-fun b!1021531 () Bool)

(assert (=> b!1021531 (= e!575403 (and e!575404 mapRes!37224))))

(declare-fun condMapEmpty!37224 () Bool)

(declare-fun mapDefault!37224 () ValueCell!11232)

(assert (=> b!1021531 (= condMapEmpty!37224 (= (arr!30694 (_values!5904 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11232)) mapDefault!37224)))))

(assert (= (and start!89146 res!684514) b!1021528))

(assert (= (and b!1021528 res!684513) b!1021525))

(assert (= (and b!1021525 res!684512) b!1021523))

(assert (= (and b!1021523 res!684516) b!1021526))

(assert (= (and b!1021526 res!684515) b!1021524))

(assert (= (and b!1021531 condMapEmpty!37224) mapIsEmpty!37224))

(assert (= (and b!1021531 (not condMapEmpty!37224)) mapNonEmpty!37224))

(get-info :version)

(assert (= (and mapNonEmpty!37224 ((_ is ValueCellFull!11232) mapValue!37224)) b!1021530))

(assert (= (and b!1021531 ((_ is ValueCellFull!11232) mapDefault!37224)) b!1021527))

(assert (= b!1021529 b!1021531))

(assert (= start!89146 b!1021529))

(declare-fun m!941125 () Bool)

(assert (=> b!1021529 m!941125))

(declare-fun m!941127 () Bool)

(assert (=> b!1021529 m!941127))

(declare-fun m!941129 () Bool)

(assert (=> start!89146 m!941129))

(declare-fun m!941131 () Bool)

(assert (=> b!1021524 m!941131))

(declare-fun m!941133 () Bool)

(assert (=> b!1021525 m!941133))

(declare-fun m!941135 () Bool)

(assert (=> b!1021526 m!941135))

(declare-fun m!941137 () Bool)

(assert (=> mapNonEmpty!37224 m!941137))

(check-sat (not b!1021525) (not b!1021529) (not b!1021524) (not b!1021526) (not b_next!20151) tp_is_empty!23871 (not mapNonEmpty!37224) (not start!89146) b_and!32367)
(check-sat b_and!32367 (not b_next!20151))
