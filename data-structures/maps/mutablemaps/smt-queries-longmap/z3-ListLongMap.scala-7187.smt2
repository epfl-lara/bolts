; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92162 () Bool)

(assert start!92162)

(declare-fun b!1047938 () Bool)

(declare-fun b_free!21177 () Bool)

(declare-fun b_next!21177 () Bool)

(assert (=> b!1047938 (= b_free!21177 (not b_next!21177))))

(declare-fun tp!74799 () Bool)

(declare-fun b_and!33905 () Bool)

(assert (=> b!1047938 (= tp!74799 b_and!33905)))

(declare-fun b!1047932 () Bool)

(declare-fun res!697221 () Bool)

(declare-fun e!594283 () Bool)

(assert (=> b!1047932 (=> (not res!697221) (not e!594283))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!38069 0))(
  ( (V!38070 (val!12499 Int)) )
))
(declare-datatypes ((ValueCell!11745 0))(
  ( (ValueCellFull!11745 (v!15100 V!38069)) (EmptyCell!11745) )
))
(declare-datatypes ((array!65958 0))(
  ( (array!65959 (arr!31719 (Array (_ BitVec 32) (_ BitVec 64))) (size!32256 (_ BitVec 32))) )
))
(declare-datatypes ((array!65960 0))(
  ( (array!65961 (arr!31720 (Array (_ BitVec 32) ValueCell!11745)) (size!32257 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6084 0))(
  ( (LongMapFixedSize!6085 (defaultEntry!6446 Int) (mask!30598 (_ BitVec 32)) (extraKeys!6174 (_ BitVec 32)) (zeroValue!6280 V!38069) (minValue!6280 V!38069) (_size!3097 (_ BitVec 32)) (_keys!11722 array!65958) (_values!6469 array!65960) (_vacant!3097 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6084)

(get-info :version)

(declare-datatypes ((SeekEntryResult!9860 0))(
  ( (MissingZero!9860 (index!41810 (_ BitVec 32))) (Found!9860 (index!41811 (_ BitVec 32))) (Intermediate!9860 (undefined!10672 Bool) (index!41812 (_ BitVec 32)) (x!93536 (_ BitVec 32))) (Undefined!9860) (MissingVacant!9860 (index!41813 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!65958 (_ BitVec 32)) SeekEntryResult!9860)

(assert (=> b!1047932 (= res!697221 (not ((_ is Found!9860) (seekEntry!0 key!909 (_keys!11722 thiss!1427) (mask!30598 thiss!1427)))))))

(declare-fun b!1047933 () Bool)

(declare-fun res!697220 () Bool)

(assert (=> b!1047933 (=> (not res!697220) (not e!594283))))

(assert (=> b!1047933 (= res!697220 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1047934 () Bool)

(declare-fun e!594287 () Bool)

(declare-fun e!594282 () Bool)

(declare-fun mapRes!38995 () Bool)

(assert (=> b!1047934 (= e!594287 (and e!594282 mapRes!38995))))

(declare-fun condMapEmpty!38995 () Bool)

(declare-fun mapDefault!38995 () ValueCell!11745)

(assert (=> b!1047934 (= condMapEmpty!38995 (= (arr!31720 (_values!6469 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11745)) mapDefault!38995)))))

(declare-fun mapIsEmpty!38995 () Bool)

(assert (=> mapIsEmpty!38995 mapRes!38995))

(declare-fun mapNonEmpty!38995 () Bool)

(declare-fun tp!74798 () Bool)

(declare-fun e!594285 () Bool)

(assert (=> mapNonEmpty!38995 (= mapRes!38995 (and tp!74798 e!594285))))

(declare-fun mapKey!38995 () (_ BitVec 32))

(declare-fun mapRest!38995 () (Array (_ BitVec 32) ValueCell!11745))

(declare-fun mapValue!38995 () ValueCell!11745)

(assert (=> mapNonEmpty!38995 (= (arr!31720 (_values!6469 thiss!1427)) (store mapRest!38995 mapKey!38995 mapValue!38995))))

(declare-fun res!697219 () Bool)

(assert (=> start!92162 (=> (not res!697219) (not e!594283))))

(declare-fun valid!2237 (LongMapFixedSize!6084) Bool)

(assert (=> start!92162 (= res!697219 (valid!2237 thiss!1427))))

(assert (=> start!92162 e!594283))

(declare-fun e!594286 () Bool)

(assert (=> start!92162 e!594286))

(assert (=> start!92162 true))

(declare-fun b!1047935 () Bool)

(assert (=> b!1047935 (= e!594283 false)))

(declare-datatypes ((tuple2!15946 0))(
  ( (tuple2!15947 (_1!7983 (_ BitVec 64)) (_2!7983 V!38069)) )
))
(declare-datatypes ((List!22167 0))(
  ( (Nil!22164) (Cons!22163 (h!23372 tuple2!15946) (t!31481 List!22167)) )
))
(declare-datatypes ((ListLongMap!13927 0))(
  ( (ListLongMap!13928 (toList!6979 List!22167)) )
))
(declare-fun lt!463072 () ListLongMap!13927)

(declare-fun map!14838 (LongMapFixedSize!6084) ListLongMap!13927)

(assert (=> b!1047935 (= lt!463072 (map!14838 thiss!1427))))

(declare-fun b!1047936 () Bool)

(declare-fun tp_is_empty!24897 () Bool)

(assert (=> b!1047936 (= e!594282 tp_is_empty!24897)))

(declare-fun b!1047937 () Bool)

(assert (=> b!1047937 (= e!594285 tp_is_empty!24897)))

(declare-fun array_inv!24341 (array!65958) Bool)

(declare-fun array_inv!24342 (array!65960) Bool)

(assert (=> b!1047938 (= e!594286 (and tp!74799 tp_is_empty!24897 (array_inv!24341 (_keys!11722 thiss!1427)) (array_inv!24342 (_values!6469 thiss!1427)) e!594287))))

(assert (= (and start!92162 res!697219) b!1047933))

(assert (= (and b!1047933 res!697220) b!1047932))

(assert (= (and b!1047932 res!697221) b!1047935))

(assert (= (and b!1047934 condMapEmpty!38995) mapIsEmpty!38995))

(assert (= (and b!1047934 (not condMapEmpty!38995)) mapNonEmpty!38995))

(assert (= (and mapNonEmpty!38995 ((_ is ValueCellFull!11745) mapValue!38995)) b!1047937))

(assert (= (and b!1047934 ((_ is ValueCellFull!11745) mapDefault!38995)) b!1047936))

(assert (= b!1047938 b!1047934))

(assert (= start!92162 b!1047938))

(declare-fun m!969111 () Bool)

(assert (=> b!1047938 m!969111))

(declare-fun m!969113 () Bool)

(assert (=> b!1047938 m!969113))

(declare-fun m!969115 () Bool)

(assert (=> start!92162 m!969115))

(declare-fun m!969117 () Bool)

(assert (=> mapNonEmpty!38995 m!969117))

(declare-fun m!969119 () Bool)

(assert (=> b!1047935 m!969119))

(declare-fun m!969121 () Bool)

(assert (=> b!1047932 m!969121))

(check-sat (not b!1047932) (not b_next!21177) (not b!1047935) b_and!33905 tp_is_empty!24897 (not start!92162) (not mapNonEmpty!38995) (not b!1047938))
(check-sat b_and!33905 (not b_next!21177))
