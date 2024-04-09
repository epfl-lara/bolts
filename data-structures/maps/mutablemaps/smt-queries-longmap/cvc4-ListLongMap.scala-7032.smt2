; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89244 () Bool)

(assert start!89244)

(declare-fun b!1022766 () Bool)

(declare-fun b_free!20249 () Bool)

(declare-fun b_next!20249 () Bool)

(assert (=> b!1022766 (= b_free!20249 (not b_next!20249))))

(declare-fun tp!71782 () Bool)

(declare-fun b_and!32489 () Bool)

(assert (=> b!1022766 (= tp!71782 b_and!32489)))

(declare-fun b!1022762 () Bool)

(declare-fun e!576288 () Bool)

(declare-fun tp_is_empty!23969 () Bool)

(assert (=> b!1022762 (= e!576288 tp_is_empty!23969)))

(declare-fun b!1022763 () Bool)

(declare-fun res!685139 () Bool)

(declare-fun e!576289 () Bool)

(assert (=> b!1022763 (=> (not res!685139) (not e!576289))))

(declare-datatypes ((V!36831 0))(
  ( (V!36832 (val!12035 Int)) )
))
(declare-datatypes ((ValueCell!11281 0))(
  ( (ValueCellFull!11281 (v!14605 V!36831)) (EmptyCell!11281) )
))
(declare-datatypes ((array!63966 0))(
  ( (array!63967 (arr!30791 (Array (_ BitVec 32) (_ BitVec 64))) (size!31303 (_ BitVec 32))) )
))
(declare-datatypes ((array!63968 0))(
  ( (array!63969 (arr!30792 (Array (_ BitVec 32) ValueCell!11281)) (size!31304 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5156 0))(
  ( (LongMapFixedSize!5157 (defaultEntry!5930 Int) (mask!29530 (_ BitVec 32)) (extraKeys!5662 (_ BitVec 32)) (zeroValue!5766 V!36831) (minValue!5766 V!36831) (_size!2633 (_ BitVec 32)) (_keys!11072 array!63966) (_values!5953 array!63968) (_vacant!2633 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5156)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022763 (= res!685139 (validMask!0 (mask!29530 thiss!1427)))))

(declare-fun b!1022764 () Bool)

(declare-fun res!685140 () Bool)

(assert (=> b!1022764 (=> (not res!685140) (not e!576289))))

(assert (=> b!1022764 (= res!685140 (and (= (size!31304 (_values!5953 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29530 thiss!1427))) (= (size!31303 (_keys!11072 thiss!1427)) (size!31304 (_values!5953 thiss!1427))) (bvsge (mask!29530 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5662 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5662 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5662 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5662 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5662 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5662 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5662 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1022765 () Bool)

(declare-fun res!685142 () Bool)

(assert (=> b!1022765 (=> (not res!685142) (not e!576289))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022765 (= res!685142 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!576284 () Bool)

(declare-fun e!576287 () Bool)

(declare-fun array_inv!23733 (array!63966) Bool)

(declare-fun array_inv!23734 (array!63968) Bool)

(assert (=> b!1022766 (= e!576284 (and tp!71782 tp_is_empty!23969 (array_inv!23733 (_keys!11072 thiss!1427)) (array_inv!23734 (_values!5953 thiss!1427)) e!576287))))

(declare-fun b!1022767 () Bool)

(assert (=> b!1022767 (= e!576289 false)))

(declare-fun lt!450316 () Bool)

(declare-datatypes ((List!21803 0))(
  ( (Nil!21800) (Cons!21799 (h!22997 (_ BitVec 64)) (t!30848 List!21803)) )
))
(declare-fun arrayNoDuplicates!0 (array!63966 (_ BitVec 32) List!21803) Bool)

(assert (=> b!1022767 (= lt!450316 (arrayNoDuplicates!0 (_keys!11072 thiss!1427) #b00000000000000000000000000000000 Nil!21800))))

(declare-fun b!1022768 () Bool)

(declare-fun res!685143 () Bool)

(assert (=> b!1022768 (=> (not res!685143) (not e!576289))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63966 (_ BitVec 32)) Bool)

(assert (=> b!1022768 (= res!685143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11072 thiss!1427) (mask!29530 thiss!1427)))))

(declare-fun res!685141 () Bool)

(assert (=> start!89244 (=> (not res!685141) (not e!576289))))

(declare-fun valid!1928 (LongMapFixedSize!5156) Bool)

(assert (=> start!89244 (= res!685141 (valid!1928 thiss!1427))))

(assert (=> start!89244 e!576289))

(assert (=> start!89244 e!576284))

(assert (=> start!89244 true))

(declare-fun mapNonEmpty!37371 () Bool)

(declare-fun mapRes!37371 () Bool)

(declare-fun tp!71783 () Bool)

(declare-fun e!576286 () Bool)

(assert (=> mapNonEmpty!37371 (= mapRes!37371 (and tp!71783 e!576286))))

(declare-fun mapValue!37371 () ValueCell!11281)

(declare-fun mapKey!37371 () (_ BitVec 32))

(declare-fun mapRest!37371 () (Array (_ BitVec 32) ValueCell!11281))

(assert (=> mapNonEmpty!37371 (= (arr!30792 (_values!5953 thiss!1427)) (store mapRest!37371 mapKey!37371 mapValue!37371))))

(declare-fun mapIsEmpty!37371 () Bool)

(assert (=> mapIsEmpty!37371 mapRes!37371))

(declare-fun b!1022769 () Bool)

(assert (=> b!1022769 (= e!576286 tp_is_empty!23969)))

(declare-fun b!1022770 () Bool)

(assert (=> b!1022770 (= e!576287 (and e!576288 mapRes!37371))))

(declare-fun condMapEmpty!37371 () Bool)

(declare-fun mapDefault!37371 () ValueCell!11281)

