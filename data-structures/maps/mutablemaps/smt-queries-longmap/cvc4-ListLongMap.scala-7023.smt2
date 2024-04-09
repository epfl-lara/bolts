; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89190 () Bool)

(assert start!89190)

(declare-fun b!1022124 () Bool)

(declare-fun b_free!20195 () Bool)

(declare-fun b_next!20195 () Bool)

(assert (=> b!1022124 (= b_free!20195 (not b_next!20195))))

(declare-fun tp!71621 () Bool)

(declare-fun b_and!32411 () Bool)

(assert (=> b!1022124 (= tp!71621 b_and!32411)))

(declare-fun res!684846 () Bool)

(declare-fun e!575801 () Bool)

(assert (=> start!89190 (=> (not res!684846) (not e!575801))))

(declare-datatypes ((V!36759 0))(
  ( (V!36760 (val!12008 Int)) )
))
(declare-datatypes ((ValueCell!11254 0))(
  ( (ValueCellFull!11254 (v!14578 V!36759)) (EmptyCell!11254) )
))
(declare-datatypes ((array!63858 0))(
  ( (array!63859 (arr!30737 (Array (_ BitVec 32) (_ BitVec 64))) (size!31249 (_ BitVec 32))) )
))
(declare-datatypes ((array!63860 0))(
  ( (array!63861 (arr!30738 (Array (_ BitVec 32) ValueCell!11254)) (size!31250 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5102 0))(
  ( (LongMapFixedSize!5103 (defaultEntry!5903 Int) (mask!29485 (_ BitVec 32)) (extraKeys!5635 (_ BitVec 32)) (zeroValue!5739 V!36759) (minValue!5739 V!36759) (_size!2606 (_ BitVec 32)) (_keys!11045 array!63858) (_values!5926 array!63860) (_vacant!2606 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5102)

(declare-fun valid!1908 (LongMapFixedSize!5102) Bool)

(assert (=> start!89190 (= res!684846 (valid!1908 thiss!1427))))

(assert (=> start!89190 e!575801))

(declare-fun e!575803 () Bool)

(assert (=> start!89190 e!575803))

(assert (=> start!89190 true))

(declare-fun b!1022117 () Bool)

(declare-fun e!575798 () Bool)

(declare-fun tp_is_empty!23915 () Bool)

(assert (=> b!1022117 (= e!575798 tp_is_empty!23915)))

(declare-fun b!1022118 () Bool)

(declare-fun res!684844 () Bool)

(assert (=> b!1022118 (=> (not res!684844) (not e!575801))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022118 (= res!684844 (validMask!0 (mask!29485 thiss!1427)))))

(declare-fun b!1022119 () Bool)

(declare-fun res!684843 () Bool)

(assert (=> b!1022119 (=> (not res!684843) (not e!575801))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022119 (= res!684843 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1022120 () Bool)

(assert (=> b!1022120 (= e!575801 false)))

(declare-fun lt!450163 () Bool)

(declare-datatypes ((List!21782 0))(
  ( (Nil!21779) (Cons!21778 (h!22976 (_ BitVec 64)) (t!30803 List!21782)) )
))
(declare-fun arrayNoDuplicates!0 (array!63858 (_ BitVec 32) List!21782) Bool)

(assert (=> b!1022120 (= lt!450163 (arrayNoDuplicates!0 (_keys!11045 thiss!1427) #b00000000000000000000000000000000 Nil!21779))))

(declare-fun mapIsEmpty!37290 () Bool)

(declare-fun mapRes!37290 () Bool)

(assert (=> mapIsEmpty!37290 mapRes!37290))

(declare-fun b!1022121 () Bool)

(declare-fun res!684842 () Bool)

(assert (=> b!1022121 (=> (not res!684842) (not e!575801))))

(assert (=> b!1022121 (= res!684842 (and (= (size!31250 (_values!5926 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29485 thiss!1427))) (= (size!31249 (_keys!11045 thiss!1427)) (size!31250 (_values!5926 thiss!1427))) (bvsge (mask!29485 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5635 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5635 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5635 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5635 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5635 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5635 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5635 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1022122 () Bool)

(declare-fun res!684845 () Bool)

(assert (=> b!1022122 (=> (not res!684845) (not e!575801))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63858 (_ BitVec 32)) Bool)

(assert (=> b!1022122 (= res!684845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11045 thiss!1427) (mask!29485 thiss!1427)))))

(declare-fun mapNonEmpty!37290 () Bool)

(declare-fun tp!71620 () Bool)

(declare-fun e!575802 () Bool)

(assert (=> mapNonEmpty!37290 (= mapRes!37290 (and tp!71620 e!575802))))

(declare-fun mapValue!37290 () ValueCell!11254)

(declare-fun mapRest!37290 () (Array (_ BitVec 32) ValueCell!11254))

(declare-fun mapKey!37290 () (_ BitVec 32))

(assert (=> mapNonEmpty!37290 (= (arr!30738 (_values!5926 thiss!1427)) (store mapRest!37290 mapKey!37290 mapValue!37290))))

(declare-fun b!1022123 () Bool)

(assert (=> b!1022123 (= e!575802 tp_is_empty!23915)))

(declare-fun e!575799 () Bool)

(declare-fun array_inv!23693 (array!63858) Bool)

(declare-fun array_inv!23694 (array!63860) Bool)

(assert (=> b!1022124 (= e!575803 (and tp!71621 tp_is_empty!23915 (array_inv!23693 (_keys!11045 thiss!1427)) (array_inv!23694 (_values!5926 thiss!1427)) e!575799))))

(declare-fun b!1022125 () Bool)

(assert (=> b!1022125 (= e!575799 (and e!575798 mapRes!37290))))

(declare-fun condMapEmpty!37290 () Bool)

(declare-fun mapDefault!37290 () ValueCell!11254)

