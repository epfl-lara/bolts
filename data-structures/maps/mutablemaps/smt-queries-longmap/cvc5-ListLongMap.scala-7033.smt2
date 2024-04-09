; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89246 () Bool)

(assert start!89246)

(declare-fun b!1022793 () Bool)

(declare-fun b_free!20251 () Bool)

(declare-fun b_next!20251 () Bool)

(assert (=> b!1022793 (= b_free!20251 (not b_next!20251))))

(declare-fun tp!71789 () Bool)

(declare-fun b_and!32491 () Bool)

(assert (=> b!1022793 (= tp!71789 b_and!32491)))

(declare-fun b!1022789 () Bool)

(declare-fun e!576305 () Bool)

(declare-fun tp_is_empty!23971 () Bool)

(assert (=> b!1022789 (= e!576305 tp_is_empty!23971)))

(declare-fun b!1022790 () Bool)

(declare-fun res!685158 () Bool)

(declare-fun e!576306 () Bool)

(assert (=> b!1022790 (=> (not res!685158) (not e!576306))))

(declare-datatypes ((V!36835 0))(
  ( (V!36836 (val!12036 Int)) )
))
(declare-datatypes ((ValueCell!11282 0))(
  ( (ValueCellFull!11282 (v!14606 V!36835)) (EmptyCell!11282) )
))
(declare-datatypes ((array!63970 0))(
  ( (array!63971 (arr!30793 (Array (_ BitVec 32) (_ BitVec 64))) (size!31305 (_ BitVec 32))) )
))
(declare-datatypes ((array!63972 0))(
  ( (array!63973 (arr!30794 (Array (_ BitVec 32) ValueCell!11282)) (size!31306 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5158 0))(
  ( (LongMapFixedSize!5159 (defaultEntry!5931 Int) (mask!29533 (_ BitVec 32)) (extraKeys!5663 (_ BitVec 32)) (zeroValue!5767 V!36835) (minValue!5767 V!36835) (_size!2634 (_ BitVec 32)) (_keys!11073 array!63970) (_values!5954 array!63972) (_vacant!2634 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5158)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63970 (_ BitVec 32)) Bool)

(assert (=> b!1022790 (= res!685158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11073 thiss!1427) (mask!29533 thiss!1427)))))

(declare-fun b!1022791 () Bool)

(declare-fun e!576302 () Bool)

(assert (=> b!1022791 (= e!576302 tp_is_empty!23971)))

(declare-fun mapNonEmpty!37374 () Bool)

(declare-fun mapRes!37374 () Bool)

(declare-fun tp!71788 () Bool)

(assert (=> mapNonEmpty!37374 (= mapRes!37374 (and tp!71788 e!576305))))

(declare-fun mapRest!37374 () (Array (_ BitVec 32) ValueCell!11282))

(declare-fun mapKey!37374 () (_ BitVec 32))

(declare-fun mapValue!37374 () ValueCell!11282)

(assert (=> mapNonEmpty!37374 (= (arr!30794 (_values!5954 thiss!1427)) (store mapRest!37374 mapKey!37374 mapValue!37374))))

(declare-fun mapIsEmpty!37374 () Bool)

(assert (=> mapIsEmpty!37374 mapRes!37374))

(declare-fun e!576307 () Bool)

(declare-fun e!576303 () Bool)

(declare-fun array_inv!23735 (array!63970) Bool)

(declare-fun array_inv!23736 (array!63972) Bool)

(assert (=> b!1022793 (= e!576303 (and tp!71789 tp_is_empty!23971 (array_inv!23735 (_keys!11073 thiss!1427)) (array_inv!23736 (_values!5954 thiss!1427)) e!576307))))

(declare-fun b!1022794 () Bool)

(declare-fun res!685157 () Bool)

(assert (=> b!1022794 (=> (not res!685157) (not e!576306))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022794 (= res!685157 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1022795 () Bool)

(assert (=> b!1022795 (= e!576307 (and e!576302 mapRes!37374))))

(declare-fun condMapEmpty!37374 () Bool)

(declare-fun mapDefault!37374 () ValueCell!11282)

