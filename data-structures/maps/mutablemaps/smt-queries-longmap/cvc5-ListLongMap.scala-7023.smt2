; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89186 () Bool)

(assert start!89186)

(declare-fun b!1022068 () Bool)

(declare-fun b_free!20191 () Bool)

(declare-fun b_next!20191 () Bool)

(assert (=> b!1022068 (= b_free!20191 (not b_next!20191))))

(declare-fun tp!71608 () Bool)

(declare-fun b_and!32407 () Bool)

(assert (=> b!1022068 (= tp!71608 b_and!32407)))

(declare-fun b!1022063 () Bool)

(declare-fun res!684816 () Bool)

(declare-fun e!575764 () Bool)

(assert (=> b!1022063 (=> (not res!684816) (not e!575764))))

(declare-datatypes ((V!36755 0))(
  ( (V!36756 (val!12006 Int)) )
))
(declare-datatypes ((ValueCell!11252 0))(
  ( (ValueCellFull!11252 (v!14576 V!36755)) (EmptyCell!11252) )
))
(declare-datatypes ((array!63850 0))(
  ( (array!63851 (arr!30733 (Array (_ BitVec 32) (_ BitVec 64))) (size!31245 (_ BitVec 32))) )
))
(declare-datatypes ((array!63852 0))(
  ( (array!63853 (arr!30734 (Array (_ BitVec 32) ValueCell!11252)) (size!31246 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5098 0))(
  ( (LongMapFixedSize!5099 (defaultEntry!5901 Int) (mask!29483 (_ BitVec 32)) (extraKeys!5633 (_ BitVec 32)) (zeroValue!5737 V!36755) (minValue!5737 V!36755) (_size!2604 (_ BitVec 32)) (_keys!11043 array!63850) (_values!5924 array!63852) (_vacant!2604 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5098)

(assert (=> b!1022063 (= res!684816 (and (= (size!31246 (_values!5924 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29483 thiss!1427))) (= (size!31245 (_keys!11043 thiss!1427)) (size!31246 (_values!5924 thiss!1427))) (bvsge (mask!29483 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5633 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5633 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5633 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5633 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5633 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5633 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5633 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1022064 () Bool)

(declare-fun res!684815 () Bool)

(assert (=> b!1022064 (=> (not res!684815) (not e!575764))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63850 (_ BitVec 32)) Bool)

(assert (=> b!1022064 (= res!684815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11043 thiss!1427) (mask!29483 thiss!1427)))))

(declare-fun b!1022065 () Bool)

(declare-fun res!684812 () Bool)

(assert (=> b!1022065 (=> (not res!684812) (not e!575764))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022065 (= res!684812 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!684814 () Bool)

(assert (=> start!89186 (=> (not res!684814) (not e!575764))))

(declare-fun valid!1906 (LongMapFixedSize!5098) Bool)

(assert (=> start!89186 (= res!684814 (valid!1906 thiss!1427))))

(assert (=> start!89186 e!575764))

(declare-fun e!575767 () Bool)

(assert (=> start!89186 e!575767))

(assert (=> start!89186 true))

(declare-fun b!1022066 () Bool)

(declare-fun e!575766 () Bool)

(declare-fun e!575762 () Bool)

(declare-fun mapRes!37284 () Bool)

(assert (=> b!1022066 (= e!575766 (and e!575762 mapRes!37284))))

(declare-fun condMapEmpty!37284 () Bool)

(declare-fun mapDefault!37284 () ValueCell!11252)

