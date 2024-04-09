; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89142 () Bool)

(assert start!89142)

(declare-fun b!1021471 () Bool)

(declare-fun b_free!20147 () Bool)

(declare-fun b_next!20147 () Bool)

(assert (=> b!1021471 (= b_free!20147 (not b_next!20147))))

(declare-fun tp!71476 () Bool)

(declare-fun b_and!32363 () Bool)

(assert (=> b!1021471 (= tp!71476 b_and!32363)))

(declare-fun mapNonEmpty!37218 () Bool)

(declare-fun mapRes!37218 () Bool)

(declare-fun tp!71477 () Bool)

(declare-fun e!575368 () Bool)

(assert (=> mapNonEmpty!37218 (= mapRes!37218 (and tp!71477 e!575368))))

(declare-fun mapKey!37218 () (_ BitVec 32))

(declare-datatypes ((V!36695 0))(
  ( (V!36696 (val!11984 Int)) )
))
(declare-datatypes ((ValueCell!11230 0))(
  ( (ValueCellFull!11230 (v!14554 V!36695)) (EmptyCell!11230) )
))
(declare-fun mapValue!37218 () ValueCell!11230)

(declare-fun mapRest!37218 () (Array (_ BitVec 32) ValueCell!11230))

(declare-datatypes ((array!63762 0))(
  ( (array!63763 (arr!30689 (Array (_ BitVec 32) (_ BitVec 64))) (size!31201 (_ BitVec 32))) )
))
(declare-datatypes ((array!63764 0))(
  ( (array!63765 (arr!30690 (Array (_ BitVec 32) ValueCell!11230)) (size!31202 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5054 0))(
  ( (LongMapFixedSize!5055 (defaultEntry!5879 Int) (mask!29445 (_ BitVec 32)) (extraKeys!5611 (_ BitVec 32)) (zeroValue!5715 V!36695) (minValue!5715 V!36695) (_size!2582 (_ BitVec 32)) (_keys!11021 array!63762) (_values!5902 array!63764) (_vacant!2582 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5054)

(assert (=> mapNonEmpty!37218 (= (arr!30690 (_values!5902 thiss!1427)) (store mapRest!37218 mapKey!37218 mapValue!37218))))

(declare-fun mapIsEmpty!37218 () Bool)

(assert (=> mapIsEmpty!37218 mapRes!37218))

(declare-fun b!1021469 () Bool)

(declare-fun e!575366 () Bool)

(declare-fun tp_is_empty!23867 () Bool)

(assert (=> b!1021469 (= e!575366 tp_is_empty!23867)))

(declare-fun res!684482 () Bool)

(declare-fun e!575371 () Bool)

(assert (=> start!89142 (=> (not res!684482) (not e!575371))))

(declare-fun valid!1894 (LongMapFixedSize!5054) Bool)

(assert (=> start!89142 (= res!684482 (valid!1894 thiss!1427))))

(assert (=> start!89142 e!575371))

(declare-fun e!575370 () Bool)

(assert (=> start!89142 e!575370))

(assert (=> start!89142 true))

(declare-fun b!1021470 () Bool)

(assert (=> b!1021470 (= e!575371 false)))

(declare-fun lt!450091 () Bool)

(declare-datatypes ((List!21770 0))(
  ( (Nil!21767) (Cons!21766 (h!22964 (_ BitVec 64)) (t!30791 List!21770)) )
))
(declare-fun arrayNoDuplicates!0 (array!63762 (_ BitVec 32) List!21770) Bool)

(assert (=> b!1021470 (= lt!450091 (arrayNoDuplicates!0 (_keys!11021 thiss!1427) #b00000000000000000000000000000000 Nil!21767))))

(declare-fun e!575367 () Bool)

(declare-fun array_inv!23663 (array!63762) Bool)

(declare-fun array_inv!23664 (array!63764) Bool)

(assert (=> b!1021471 (= e!575370 (and tp!71476 tp_is_empty!23867 (array_inv!23663 (_keys!11021 thiss!1427)) (array_inv!23664 (_values!5902 thiss!1427)) e!575367))))

(declare-fun b!1021472 () Bool)

(declare-fun res!684484 () Bool)

(assert (=> b!1021472 (=> (not res!684484) (not e!575371))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1021472 (= res!684484 (validMask!0 (mask!29445 thiss!1427)))))

(declare-fun b!1021473 () Bool)

(declare-fun res!684486 () Bool)

(assert (=> b!1021473 (=> (not res!684486) (not e!575371))))

(assert (=> b!1021473 (= res!684486 (and (= (size!31202 (_values!5902 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29445 thiss!1427))) (= (size!31201 (_keys!11021 thiss!1427)) (size!31202 (_values!5902 thiss!1427))) (bvsge (mask!29445 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5611 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5611 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5611 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5611 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5611 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5611 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5611 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1021474 () Bool)

(declare-fun res!684483 () Bool)

(assert (=> b!1021474 (=> (not res!684483) (not e!575371))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63762 (_ BitVec 32)) Bool)

(assert (=> b!1021474 (= res!684483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11021 thiss!1427) (mask!29445 thiss!1427)))))

(declare-fun b!1021475 () Bool)

(assert (=> b!1021475 (= e!575368 tp_is_empty!23867)))

(declare-fun b!1021476 () Bool)

(assert (=> b!1021476 (= e!575367 (and e!575366 mapRes!37218))))

(declare-fun condMapEmpty!37218 () Bool)

(declare-fun mapDefault!37218 () ValueCell!11230)

