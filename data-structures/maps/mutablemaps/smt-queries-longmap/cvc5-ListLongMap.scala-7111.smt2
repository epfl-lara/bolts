; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90148 () Bool)

(assert start!90148)

(declare-fun b!1032250 () Bool)

(declare-fun b_free!20719 () Bool)

(declare-fun b_next!20719 () Bool)

(assert (=> b!1032250 (= b_free!20719 (not b_next!20719))))

(declare-fun tp!73228 () Bool)

(declare-fun b_and!33205 () Bool)

(assert (=> b!1032250 (= tp!73228 b_and!33205)))

(declare-fun res!690041 () Bool)

(declare-fun e!583265 () Bool)

(assert (=> start!90148 (=> (not res!690041) (not e!583265))))

(declare-datatypes ((V!37459 0))(
  ( (V!37460 (val!12270 Int)) )
))
(declare-datatypes ((ValueCell!11516 0))(
  ( (ValueCellFull!11516 (v!14848 V!37459)) (EmptyCell!11516) )
))
(declare-datatypes ((array!64926 0))(
  ( (array!64927 (arr!31261 (Array (_ BitVec 32) (_ BitVec 64))) (size!31779 (_ BitVec 32))) )
))
(declare-datatypes ((array!64928 0))(
  ( (array!64929 (arr!31262 (Array (_ BitVec 32) ValueCell!11516)) (size!31780 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5626 0))(
  ( (LongMapFixedSize!5627 (defaultEntry!6187 Int) (mask!29998 (_ BitVec 32)) (extraKeys!5919 (_ BitVec 32)) (zeroValue!6023 V!37459) (minValue!6023 V!37459) (_size!2868 (_ BitVec 32)) (_keys!11357 array!64926) (_values!6210 array!64928) (_vacant!2868 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5626)

(declare-fun valid!2080 (LongMapFixedSize!5626) Bool)

(assert (=> start!90148 (= res!690041 (valid!2080 thiss!1427))))

(assert (=> start!90148 e!583265))

(declare-fun e!583264 () Bool)

(assert (=> start!90148 e!583264))

(assert (=> start!90148 true))

(declare-fun mapIsEmpty!38112 () Bool)

(declare-fun mapRes!38112 () Bool)

(assert (=> mapIsEmpty!38112 mapRes!38112))

(declare-fun mapNonEmpty!38112 () Bool)

(declare-fun tp!73229 () Bool)

(declare-fun e!583262 () Bool)

(assert (=> mapNonEmpty!38112 (= mapRes!38112 (and tp!73229 e!583262))))

(declare-fun mapKey!38112 () (_ BitVec 32))

(declare-fun mapRest!38112 () (Array (_ BitVec 32) ValueCell!11516))

(declare-fun mapValue!38112 () ValueCell!11516)

(assert (=> mapNonEmpty!38112 (= (arr!31262 (_values!6210 thiss!1427)) (store mapRest!38112 mapKey!38112 mapValue!38112))))

(declare-fun b!1032246 () Bool)

(declare-fun res!690042 () Bool)

(assert (=> b!1032246 (=> (not res!690042) (not e!583265))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1032246 (= res!690042 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1032247 () Bool)

(declare-fun e!583267 () Bool)

(declare-fun tp_is_empty!24439 () Bool)

(assert (=> b!1032247 (= e!583267 tp_is_empty!24439)))

(declare-fun b!1032248 () Bool)

(assert (=> b!1032248 (= e!583265 false)))

(declare-datatypes ((SeekEntryResult!9724 0))(
  ( (MissingZero!9724 (index!41266 (_ BitVec 32))) (Found!9724 (index!41267 (_ BitVec 32))) (Intermediate!9724 (undefined!10536 Bool) (index!41268 (_ BitVec 32)) (x!91975 (_ BitVec 32))) (Undefined!9724) (MissingVacant!9724 (index!41269 (_ BitVec 32))) )
))
(declare-fun lt!456000 () SeekEntryResult!9724)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64926 (_ BitVec 32)) SeekEntryResult!9724)

(assert (=> b!1032248 (= lt!456000 (seekEntry!0 key!909 (_keys!11357 thiss!1427) (mask!29998 thiss!1427)))))

(declare-fun b!1032249 () Bool)

(declare-fun e!583266 () Bool)

(assert (=> b!1032249 (= e!583266 (and e!583267 mapRes!38112))))

(declare-fun condMapEmpty!38112 () Bool)

(declare-fun mapDefault!38112 () ValueCell!11516)

