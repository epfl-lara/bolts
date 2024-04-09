; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89304 () Bool)

(assert start!89304)

(declare-fun b!1023575 () Bool)

(declare-fun b_free!20309 () Bool)

(declare-fun b_next!20309 () Bool)

(assert (=> b!1023575 (= b_free!20309 (not b_next!20309))))

(declare-fun tp!71963 () Bool)

(declare-fun b_and!32549 () Bool)

(assert (=> b!1023575 (= tp!71963 b_and!32549)))

(declare-fun b!1023572 () Bool)

(declare-fun e!576828 () Bool)

(declare-fun tp_is_empty!24029 () Bool)

(assert (=> b!1023572 (= e!576828 tp_is_empty!24029)))

(declare-fun b!1023573 () Bool)

(declare-fun res!685592 () Bool)

(declare-fun e!576829 () Bool)

(assert (=> b!1023573 (=> (not res!685592) (not e!576829))))

(declare-datatypes ((V!36911 0))(
  ( (V!36912 (val!12065 Int)) )
))
(declare-datatypes ((ValueCell!11311 0))(
  ( (ValueCellFull!11311 (v!14635 V!36911)) (EmptyCell!11311) )
))
(declare-datatypes ((array!64086 0))(
  ( (array!64087 (arr!30851 (Array (_ BitVec 32) (_ BitVec 64))) (size!31363 (_ BitVec 32))) )
))
(declare-datatypes ((array!64088 0))(
  ( (array!64089 (arr!30852 (Array (_ BitVec 32) ValueCell!11311)) (size!31364 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5216 0))(
  ( (LongMapFixedSize!5217 (defaultEntry!5960 Int) (mask!29580 (_ BitVec 32)) (extraKeys!5692 (_ BitVec 32)) (zeroValue!5796 V!36911) (minValue!5796 V!36911) (_size!2663 (_ BitVec 32)) (_keys!11102 array!64086) (_values!5983 array!64088) (_vacant!2663 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5216)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64086 (_ BitVec 32)) Bool)

(assert (=> b!1023573 (= res!685592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11102 thiss!1427) (mask!29580 thiss!1427)))))

(declare-fun b!1023574 () Bool)

(declare-fun res!685589 () Bool)

(assert (=> b!1023574 (=> (not res!685589) (not e!576829))))

(assert (=> b!1023574 (= res!685589 (and (= (size!31364 (_values!5983 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29580 thiss!1427))) (= (size!31363 (_keys!11102 thiss!1427)) (size!31364 (_values!5983 thiss!1427))) (bvsge (mask!29580 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5692 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5692 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5692 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5692 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5692 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5692 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5692 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!37461 () Bool)

(declare-fun mapRes!37461 () Bool)

(assert (=> mapIsEmpty!37461 mapRes!37461))

(declare-fun e!576824 () Bool)

(declare-fun e!576825 () Bool)

(declare-fun array_inv!23773 (array!64086) Bool)

(declare-fun array_inv!23774 (array!64088) Bool)

(assert (=> b!1023575 (= e!576825 (and tp!71963 tp_is_empty!24029 (array_inv!23773 (_keys!11102 thiss!1427)) (array_inv!23774 (_values!5983 thiss!1427)) e!576824))))

(declare-fun b!1023576 () Bool)

(declare-fun res!685590 () Bool)

(assert (=> b!1023576 (=> (not res!685590) (not e!576829))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023576 (= res!685590 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1023577 () Bool)

(declare-fun res!685593 () Bool)

(assert (=> b!1023577 (=> (not res!685593) (not e!576829))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1023577 (= res!685593 (validMask!0 (mask!29580 thiss!1427)))))

(declare-fun b!1023578 () Bool)

(assert (=> b!1023578 (= e!576824 (and e!576828 mapRes!37461))))

(declare-fun condMapEmpty!37461 () Bool)

(declare-fun mapDefault!37461 () ValueCell!11311)

