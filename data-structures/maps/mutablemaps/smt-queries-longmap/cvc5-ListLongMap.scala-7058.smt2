; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89438 () Bool)

(assert start!89438)

(declare-fun b!1024946 () Bool)

(declare-fun b_free!20401 () Bool)

(declare-fun b_next!20401 () Bool)

(assert (=> b!1024946 (= b_free!20401 (not b_next!20401))))

(declare-fun tp!72250 () Bool)

(declare-fun b_and!32665 () Bool)

(assert (=> b!1024946 (= tp!72250 b_and!32665)))

(declare-fun mapIsEmpty!37610 () Bool)

(declare-fun mapRes!37610 () Bool)

(assert (=> mapIsEmpty!37610 mapRes!37610))

(declare-fun b!1024936 () Bool)

(declare-fun e!577880 () Bool)

(declare-fun e!577878 () Bool)

(assert (=> b!1024936 (= e!577880 (not e!577878))))

(declare-fun res!686306 () Bool)

(assert (=> b!1024936 (=> res!686306 e!577878)))

(declare-datatypes ((V!37035 0))(
  ( (V!37036 (val!12111 Int)) )
))
(declare-datatypes ((ValueCell!11357 0))(
  ( (ValueCellFull!11357 (v!14681 V!37035)) (EmptyCell!11357) )
))
(declare-datatypes ((array!64276 0))(
  ( (array!64277 (arr!30943 (Array (_ BitVec 32) (_ BitVec 64))) (size!31457 (_ BitVec 32))) )
))
(declare-datatypes ((array!64278 0))(
  ( (array!64279 (arr!30944 (Array (_ BitVec 32) ValueCell!11357)) (size!31458 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5308 0))(
  ( (LongMapFixedSize!5309 (defaultEntry!6006 Int) (mask!29663 (_ BitVec 32)) (extraKeys!5738 (_ BitVec 32)) (zeroValue!5842 V!37035) (minValue!5842 V!37035) (_size!2709 (_ BitVec 32)) (_keys!11150 array!64276) (_values!6029 array!64278) (_vacant!2709 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5308)

(assert (=> b!1024936 (= res!686306 (or (bvsge (size!31457 (_keys!11150 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31457 (_keys!11150 thiss!1427)))))))

(declare-datatypes ((SeekEntryResult!9597 0))(
  ( (MissingZero!9597 (index!40758 (_ BitVec 32))) (Found!9597 (index!40759 (_ BitVec 32))) (Intermediate!9597 (undefined!10409 Bool) (index!40760 (_ BitVec 32)) (x!91126 (_ BitVec 32))) (Undefined!9597) (MissingVacant!9597 (index!40761 (_ BitVec 32))) )
))
(declare-fun lt!450745 () SeekEntryResult!9597)

(declare-fun arrayCountValidKeys!0 (array!64276 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1024936 (= (arrayCountValidKeys!0 (array!64277 (store (arr!30943 (_keys!11150 thiss!1427)) (index!40759 lt!450745) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31457 (_keys!11150 thiss!1427))) #b00000000000000000000000000000000 (size!31457 (_keys!11150 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11150 thiss!1427) #b00000000000000000000000000000000 (size!31457 (_keys!11150 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33338 0))(
  ( (Unit!33339) )
))
(declare-fun lt!450744 () Unit!33338)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64276 (_ BitVec 32) (_ BitVec 64)) Unit!33338)

(assert (=> b!1024936 (= lt!450744 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11150 thiss!1427) (index!40759 lt!450745) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024937 () Bool)

(declare-fun res!686301 () Bool)

(assert (=> b!1024937 (=> res!686301 e!577878)))

(declare-datatypes ((List!21848 0))(
  ( (Nil!21845) (Cons!21844 (h!23042 (_ BitVec 64)) (t!30917 List!21848)) )
))
(declare-fun noDuplicate!1484 (List!21848) Bool)

(assert (=> b!1024937 (= res!686301 (not (noDuplicate!1484 Nil!21845)))))

(declare-fun b!1024938 () Bool)

(declare-fun e!577877 () Bool)

(assert (=> b!1024938 (= e!577877 e!577880)))

(declare-fun res!686303 () Bool)

(assert (=> b!1024938 (=> (not res!686303) (not e!577880))))

(assert (=> b!1024938 (= res!686303 (is-Found!9597 lt!450745))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64276 (_ BitVec 32)) SeekEntryResult!9597)

(assert (=> b!1024938 (= lt!450745 (seekEntry!0 key!909 (_keys!11150 thiss!1427) (mask!29663 thiss!1427)))))

(declare-fun b!1024939 () Bool)

(declare-fun res!686305 () Bool)

(assert (=> b!1024939 (=> res!686305 e!577878)))

(declare-fun contains!5976 (List!21848 (_ BitVec 64)) Bool)

(assert (=> b!1024939 (= res!686305 (contains!5976 Nil!21845 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024940 () Bool)

(declare-fun e!577875 () Bool)

(declare-fun tp_is_empty!24121 () Bool)

(assert (=> b!1024940 (= e!577875 tp_is_empty!24121)))

(declare-fun mapNonEmpty!37610 () Bool)

(declare-fun tp!72249 () Bool)

(assert (=> mapNonEmpty!37610 (= mapRes!37610 (and tp!72249 e!577875))))

(declare-fun mapValue!37610 () ValueCell!11357)

(declare-fun mapKey!37610 () (_ BitVec 32))

(declare-fun mapRest!37610 () (Array (_ BitVec 32) ValueCell!11357))

(assert (=> mapNonEmpty!37610 (= (arr!30944 (_values!6029 thiss!1427)) (store mapRest!37610 mapKey!37610 mapValue!37610))))

(declare-fun b!1024941 () Bool)

(declare-fun res!686302 () Bool)

(assert (=> b!1024941 (=> (not res!686302) (not e!577877))))

(assert (=> b!1024941 (= res!686302 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1024942 () Bool)

(declare-fun res!686307 () Bool)

(assert (=> b!1024942 (=> res!686307 e!577878)))

(assert (=> b!1024942 (= res!686307 (contains!5976 Nil!21845 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024943 () Bool)

(declare-fun e!577874 () Bool)

(declare-fun e!577879 () Bool)

(assert (=> b!1024943 (= e!577874 (and e!577879 mapRes!37610))))

(declare-fun condMapEmpty!37610 () Bool)

(declare-fun mapDefault!37610 () ValueCell!11357)

