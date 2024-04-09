; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89262 () Bool)

(assert start!89262)

(declare-fun b!1023006 () Bool)

(declare-fun b_free!20267 () Bool)

(declare-fun b_next!20267 () Bool)

(assert (=> b!1023006 (= b_free!20267 (not b_next!20267))))

(declare-fun tp!71836 () Bool)

(declare-fun b_and!32507 () Bool)

(assert (=> b!1023006 (= tp!71836 b_and!32507)))

(declare-fun b!1023005 () Bool)

(declare-fun res!685276 () Bool)

(declare-fun e!576448 () Bool)

(assert (=> b!1023005 (=> (not res!685276) (not e!576448))))

(declare-datatypes ((V!36855 0))(
  ( (V!36856 (val!12044 Int)) )
))
(declare-datatypes ((ValueCell!11290 0))(
  ( (ValueCellFull!11290 (v!14614 V!36855)) (EmptyCell!11290) )
))
(declare-datatypes ((array!64002 0))(
  ( (array!64003 (arr!30809 (Array (_ BitVec 32) (_ BitVec 64))) (size!31321 (_ BitVec 32))) )
))
(declare-datatypes ((array!64004 0))(
  ( (array!64005 (arr!30810 (Array (_ BitVec 32) ValueCell!11290)) (size!31322 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5174 0))(
  ( (LongMapFixedSize!5175 (defaultEntry!5939 Int) (mask!29545 (_ BitVec 32)) (extraKeys!5671 (_ BitVec 32)) (zeroValue!5775 V!36855) (minValue!5775 V!36855) (_size!2642 (_ BitVec 32)) (_keys!11081 array!64002) (_values!5962 array!64004) (_vacant!2642 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5174)

(assert (=> b!1023005 (= res!685276 (and (= (size!31322 (_values!5962 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29545 thiss!1427))) (= (size!31321 (_keys!11081 thiss!1427)) (size!31322 (_values!5962 thiss!1427))) (bvsge (mask!29545 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5671 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5671 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5671 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5671 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5671 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5671 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5671 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!576446 () Bool)

(declare-fun tp_is_empty!23987 () Bool)

(declare-fun e!576449 () Bool)

(declare-fun array_inv!23747 (array!64002) Bool)

(declare-fun array_inv!23748 (array!64004) Bool)

(assert (=> b!1023006 (= e!576449 (and tp!71836 tp_is_empty!23987 (array_inv!23747 (_keys!11081 thiss!1427)) (array_inv!23748 (_values!5962 thiss!1427)) e!576446))))

(declare-fun b!1023007 () Bool)

(declare-fun e!576447 () Bool)

(assert (=> b!1023007 (= e!576447 tp_is_empty!23987)))

(declare-fun b!1023008 () Bool)

(declare-fun mapRes!37398 () Bool)

(assert (=> b!1023008 (= e!576446 (and e!576447 mapRes!37398))))

(declare-fun condMapEmpty!37398 () Bool)

(declare-fun mapDefault!37398 () ValueCell!11290)

