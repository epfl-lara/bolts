; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90150 () Bool)

(assert start!90150)

(declare-fun b!1032265 () Bool)

(declare-fun b_free!20721 () Bool)

(declare-fun b_next!20721 () Bool)

(assert (=> b!1032265 (= b_free!20721 (not b_next!20721))))

(declare-fun tp!73234 () Bool)

(declare-fun b_and!33207 () Bool)

(assert (=> b!1032265 (= tp!73234 b_and!33207)))

(declare-fun b!1032264 () Bool)

(declare-fun e!583285 () Bool)

(declare-fun e!583282 () Bool)

(declare-fun mapRes!38115 () Bool)

(assert (=> b!1032264 (= e!583285 (and e!583282 mapRes!38115))))

(declare-fun condMapEmpty!38115 () Bool)

(declare-datatypes ((V!37461 0))(
  ( (V!37462 (val!12271 Int)) )
))
(declare-datatypes ((ValueCell!11517 0))(
  ( (ValueCellFull!11517 (v!14849 V!37461)) (EmptyCell!11517) )
))
(declare-datatypes ((array!64930 0))(
  ( (array!64931 (arr!31263 (Array (_ BitVec 32) (_ BitVec 64))) (size!31781 (_ BitVec 32))) )
))
(declare-datatypes ((array!64932 0))(
  ( (array!64933 (arr!31264 (Array (_ BitVec 32) ValueCell!11517)) (size!31782 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5628 0))(
  ( (LongMapFixedSize!5629 (defaultEntry!6188 Int) (mask!29999 (_ BitVec 32)) (extraKeys!5920 (_ BitVec 32)) (zeroValue!6024 V!37461) (minValue!6024 V!37461) (_size!2869 (_ BitVec 32)) (_keys!11358 array!64930) (_values!6211 array!64932) (_vacant!2869 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5628)

(declare-fun mapDefault!38115 () ValueCell!11517)

(assert (=> b!1032264 (= condMapEmpty!38115 (= (arr!31264 (_values!6211 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11517)) mapDefault!38115)))))

(declare-fun tp_is_empty!24441 () Bool)

(declare-fun e!583283 () Bool)

(declare-fun array_inv!24035 (array!64930) Bool)

(declare-fun array_inv!24036 (array!64932) Bool)

(assert (=> b!1032265 (= e!583283 (and tp!73234 tp_is_empty!24441 (array_inv!24035 (_keys!11358 thiss!1427)) (array_inv!24036 (_values!6211 thiss!1427)) e!583285))))

(declare-fun mapIsEmpty!38115 () Bool)

(assert (=> mapIsEmpty!38115 mapRes!38115))

(declare-fun res!690047 () Bool)

(declare-fun e!583284 () Bool)

(assert (=> start!90150 (=> (not res!690047) (not e!583284))))

(declare-fun valid!2081 (LongMapFixedSize!5628) Bool)

(assert (=> start!90150 (= res!690047 (valid!2081 thiss!1427))))

(assert (=> start!90150 e!583284))

(assert (=> start!90150 e!583283))

(assert (=> start!90150 true))

(declare-fun mapNonEmpty!38115 () Bool)

(declare-fun tp!73235 () Bool)

(declare-fun e!583281 () Bool)

(assert (=> mapNonEmpty!38115 (= mapRes!38115 (and tp!73235 e!583281))))

(declare-fun mapKey!38115 () (_ BitVec 32))

(declare-fun mapRest!38115 () (Array (_ BitVec 32) ValueCell!11517))

(declare-fun mapValue!38115 () ValueCell!11517)

(assert (=> mapNonEmpty!38115 (= (arr!31264 (_values!6211 thiss!1427)) (store mapRest!38115 mapKey!38115 mapValue!38115))))

(declare-fun b!1032266 () Bool)

(assert (=> b!1032266 (= e!583281 tp_is_empty!24441)))

(declare-fun b!1032267 () Bool)

(declare-fun res!690048 () Bool)

(assert (=> b!1032267 (=> (not res!690048) (not e!583284))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1032267 (= res!690048 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1032268 () Bool)

(assert (=> b!1032268 (= e!583282 tp_is_empty!24441)))

(declare-fun b!1032269 () Bool)

(assert (=> b!1032269 (= e!583284 false)))

(declare-datatypes ((SeekEntryResult!9725 0))(
  ( (MissingZero!9725 (index!41270 (_ BitVec 32))) (Found!9725 (index!41271 (_ BitVec 32))) (Intermediate!9725 (undefined!10537 Bool) (index!41272 (_ BitVec 32)) (x!91976 (_ BitVec 32))) (Undefined!9725) (MissingVacant!9725 (index!41273 (_ BitVec 32))) )
))
(declare-fun lt!456003 () SeekEntryResult!9725)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64930 (_ BitVec 32)) SeekEntryResult!9725)

(assert (=> b!1032269 (= lt!456003 (seekEntry!0 key!909 (_keys!11358 thiss!1427) (mask!29999 thiss!1427)))))

(assert (= (and start!90150 res!690047) b!1032267))

(assert (= (and b!1032267 res!690048) b!1032269))

(assert (= (and b!1032264 condMapEmpty!38115) mapIsEmpty!38115))

(assert (= (and b!1032264 (not condMapEmpty!38115)) mapNonEmpty!38115))

(get-info :version)

(assert (= (and mapNonEmpty!38115 ((_ is ValueCellFull!11517) mapValue!38115)) b!1032266))

(assert (= (and b!1032264 ((_ is ValueCellFull!11517) mapDefault!38115)) b!1032268))

(assert (= b!1032265 b!1032264))

(assert (= start!90150 b!1032265))

(declare-fun m!952741 () Bool)

(assert (=> b!1032265 m!952741))

(declare-fun m!952743 () Bool)

(assert (=> b!1032265 m!952743))

(declare-fun m!952745 () Bool)

(assert (=> start!90150 m!952745))

(declare-fun m!952747 () Bool)

(assert (=> mapNonEmpty!38115 m!952747))

(declare-fun m!952749 () Bool)

(assert (=> b!1032269 m!952749))

(check-sat b_and!33207 (not b_next!20721) tp_is_empty!24441 (not start!90150) (not b!1032269) (not b!1032265) (not mapNonEmpty!38115))
(check-sat b_and!33207 (not b_next!20721))
