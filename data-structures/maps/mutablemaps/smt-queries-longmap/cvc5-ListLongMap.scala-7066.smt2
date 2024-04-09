; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89486 () Bool)

(assert start!89486)

(declare-fun b!1025733 () Bool)

(declare-fun b_free!20449 () Bool)

(declare-fun b_next!20449 () Bool)

(assert (=> b!1025733 (= b_free!20449 (not b_next!20449))))

(declare-fun tp!72394 () Bool)

(declare-fun b_and!32713 () Bool)

(assert (=> b!1025733 (= tp!72394 b_and!32713)))

(declare-fun mapIsEmpty!37682 () Bool)

(declare-fun mapRes!37682 () Bool)

(assert (=> mapIsEmpty!37682 mapRes!37682))

(declare-fun b!1025728 () Bool)

(declare-fun res!686807 () Bool)

(declare-fun e!578456 () Bool)

(assert (=> b!1025728 (=> res!686807 e!578456)))

(declare-datatypes ((V!37099 0))(
  ( (V!37100 (val!12135 Int)) )
))
(declare-datatypes ((ValueCell!11381 0))(
  ( (ValueCellFull!11381 (v!14705 V!37099)) (EmptyCell!11381) )
))
(declare-datatypes ((array!64372 0))(
  ( (array!64373 (arr!30991 (Array (_ BitVec 32) (_ BitVec 64))) (size!31505 (_ BitVec 32))) )
))
(declare-datatypes ((array!64374 0))(
  ( (array!64375 (arr!30992 (Array (_ BitVec 32) ValueCell!11381)) (size!31506 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5356 0))(
  ( (LongMapFixedSize!5357 (defaultEntry!6030 Int) (mask!29703 (_ BitVec 32)) (extraKeys!5762 (_ BitVec 32)) (zeroValue!5866 V!37099) (minValue!5866 V!37099) (_size!2733 (_ BitVec 32)) (_keys!11174 array!64372) (_values!6053 array!64374) (_vacant!2733 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5356)

(declare-datatypes ((SeekEntryResult!9615 0))(
  ( (MissingZero!9615 (index!40830 (_ BitVec 32))) (Found!9615 (index!40831 (_ BitVec 32))) (Intermediate!9615 (undefined!10427 Bool) (index!40832 (_ BitVec 32)) (x!91208 (_ BitVec 32))) (Undefined!9615) (MissingVacant!9615 (index!40833 (_ BitVec 32))) )
))
(declare-fun lt!451072 () SeekEntryResult!9615)

(assert (=> b!1025728 (= res!686807 (or (not (= (size!31505 (_keys!11174 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29703 thiss!1427)))) (bvslt (index!40831 lt!451072) #b00000000000000000000000000000000) (bvsge (index!40831 lt!451072) (size!31505 (_keys!11174 thiss!1427)))))))

(declare-fun b!1025729 () Bool)

(declare-fun e!578450 () Bool)

(declare-fun e!578451 () Bool)

(assert (=> b!1025729 (= e!578450 e!578451)))

(declare-fun res!686809 () Bool)

(assert (=> b!1025729 (=> (not res!686809) (not e!578451))))

(assert (=> b!1025729 (= res!686809 (is-Found!9615 lt!451072))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64372 (_ BitVec 32)) SeekEntryResult!9615)

(assert (=> b!1025729 (= lt!451072 (seekEntry!0 key!909 (_keys!11174 thiss!1427) (mask!29703 thiss!1427)))))

(declare-fun b!1025730 () Bool)

(declare-fun res!686805 () Bool)

(assert (=> b!1025730 (=> (not res!686805) (not e!578450))))

(assert (=> b!1025730 (= res!686805 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1025731 () Bool)

(declare-fun e!578452 () Bool)

(declare-fun tp_is_empty!24169 () Bool)

(assert (=> b!1025731 (= e!578452 tp_is_empty!24169)))

(declare-fun b!1025732 () Bool)

(assert (=> b!1025732 (= e!578451 (not e!578456))))

(declare-fun res!686806 () Bool)

(assert (=> b!1025732 (=> res!686806 e!578456)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1025732 (= res!686806 (not (validMask!0 (mask!29703 thiss!1427))))))

(declare-fun lt!451073 () array!64372)

(declare-datatypes ((List!21867 0))(
  ( (Nil!21864) (Cons!21863 (h!23061 (_ BitVec 64)) (t!30936 List!21867)) )
))
(declare-fun arrayNoDuplicates!0 (array!64372 (_ BitVec 32) List!21867) Bool)

(assert (=> b!1025732 (arrayNoDuplicates!0 lt!451073 #b00000000000000000000000000000000 Nil!21864)))

(declare-datatypes ((Unit!33368 0))(
  ( (Unit!33369) )
))
(declare-fun lt!451074 () Unit!33368)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64372 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21867) Unit!33368)

(assert (=> b!1025732 (= lt!451074 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11174 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40831 lt!451072) #b00000000000000000000000000000000 Nil!21864))))

(declare-fun arrayCountValidKeys!0 (array!64372 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025732 (= (arrayCountValidKeys!0 lt!451073 #b00000000000000000000000000000000 (size!31505 (_keys!11174 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11174 thiss!1427) #b00000000000000000000000000000000 (size!31505 (_keys!11174 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025732 (= lt!451073 (array!64373 (store (arr!30991 (_keys!11174 thiss!1427)) (index!40831 lt!451072) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31505 (_keys!11174 thiss!1427))))))

(declare-fun lt!451075 () Unit!33368)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64372 (_ BitVec 32) (_ BitVec 64)) Unit!33368)

(assert (=> b!1025732 (= lt!451075 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11174 thiss!1427) (index!40831 lt!451072) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!578454 () Bool)

(declare-fun e!578453 () Bool)

(declare-fun array_inv!23855 (array!64372) Bool)

(declare-fun array_inv!23856 (array!64374) Bool)

(assert (=> b!1025733 (= e!578453 (and tp!72394 tp_is_empty!24169 (array_inv!23855 (_keys!11174 thiss!1427)) (array_inv!23856 (_values!6053 thiss!1427)) e!578454))))

(declare-fun b!1025734 () Bool)

(assert (=> b!1025734 (= e!578456 true)))

(declare-fun lt!451071 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64372 (_ BitVec 32)) Bool)

(assert (=> b!1025734 (= lt!451071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11174 thiss!1427) (mask!29703 thiss!1427)))))

(declare-fun b!1025736 () Bool)

(declare-fun res!686811 () Bool)

(assert (=> b!1025736 (=> res!686811 e!578456)))

(assert (=> b!1025736 (= res!686811 (not (arrayNoDuplicates!0 (_keys!11174 thiss!1427) #b00000000000000000000000000000000 Nil!21864)))))

(declare-fun mapNonEmpty!37682 () Bool)

(declare-fun tp!72393 () Bool)

(declare-fun e!578449 () Bool)

(assert (=> mapNonEmpty!37682 (= mapRes!37682 (and tp!72393 e!578449))))

(declare-fun mapValue!37682 () ValueCell!11381)

(declare-fun mapRest!37682 () (Array (_ BitVec 32) ValueCell!11381))

(declare-fun mapKey!37682 () (_ BitVec 32))

(assert (=> mapNonEmpty!37682 (= (arr!30992 (_values!6053 thiss!1427)) (store mapRest!37682 mapKey!37682 mapValue!37682))))

(declare-fun b!1025737 () Bool)

(declare-fun res!686810 () Bool)

(assert (=> b!1025737 (=> res!686810 e!578456)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1025737 (= res!686810 (not (validKeyInArray!0 (select (arr!30991 (_keys!11174 thiss!1427)) (index!40831 lt!451072)))))))

(declare-fun b!1025738 () Bool)

(assert (=> b!1025738 (= e!578454 (and e!578452 mapRes!37682))))

(declare-fun condMapEmpty!37682 () Bool)

(declare-fun mapDefault!37682 () ValueCell!11381)

