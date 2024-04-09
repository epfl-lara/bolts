; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89522 () Bool)

(assert start!89522)

(declare-fun b!1026186 () Bool)

(declare-fun b_free!20485 () Bool)

(declare-fun b_next!20485 () Bool)

(assert (=> b!1026186 (= b_free!20485 (not b_next!20485))))

(declare-fun tp!72502 () Bool)

(declare-fun b_and!32749 () Bool)

(assert (=> b!1026186 (= tp!72502 b_and!32749)))

(declare-fun b!1026181 () Bool)

(declare-fun e!578888 () Bool)

(assert (=> b!1026181 (= e!578888 true)))

(declare-fun lt!451393 () Bool)

(declare-datatypes ((V!37147 0))(
  ( (V!37148 (val!12153 Int)) )
))
(declare-datatypes ((ValueCell!11399 0))(
  ( (ValueCellFull!11399 (v!14723 V!37147)) (EmptyCell!11399) )
))
(declare-datatypes ((array!64444 0))(
  ( (array!64445 (arr!31027 (Array (_ BitVec 32) (_ BitVec 64))) (size!31541 (_ BitVec 32))) )
))
(declare-datatypes ((array!64446 0))(
  ( (array!64447 (arr!31028 (Array (_ BitVec 32) ValueCell!11399)) (size!31542 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5392 0))(
  ( (LongMapFixedSize!5393 (defaultEntry!6048 Int) (mask!29733 (_ BitVec 32)) (extraKeys!5780 (_ BitVec 32)) (zeroValue!5884 V!37147) (minValue!5884 V!37147) (_size!2751 (_ BitVec 32)) (_keys!11192 array!64444) (_values!6071 array!64446) (_vacant!2751 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5392)

(declare-datatypes ((List!21882 0))(
  ( (Nil!21879) (Cons!21878 (h!23076 (_ BitVec 64)) (t!30951 List!21882)) )
))
(declare-fun arrayNoDuplicates!0 (array!64444 (_ BitVec 32) List!21882) Bool)

(assert (=> b!1026181 (= lt!451393 (arrayNoDuplicates!0 (_keys!11192 thiss!1427) #b00000000000000000000000000000000 Nil!21879))))

(declare-fun mapNonEmpty!37736 () Bool)

(declare-fun mapRes!37736 () Bool)

(declare-fun tp!72501 () Bool)

(declare-fun e!578886 () Bool)

(assert (=> mapNonEmpty!37736 (= mapRes!37736 (and tp!72501 e!578886))))

(declare-fun mapValue!37736 () ValueCell!11399)

(declare-fun mapKey!37736 () (_ BitVec 32))

(declare-fun mapRest!37736 () (Array (_ BitVec 32) ValueCell!11399))

(assert (=> mapNonEmpty!37736 (= (arr!31028 (_values!6071 thiss!1427)) (store mapRest!37736 mapKey!37736 mapValue!37736))))

(declare-fun res!687042 () Bool)

(declare-fun e!578887 () Bool)

(assert (=> start!89522 (=> (not res!687042) (not e!578887))))

(declare-fun valid!2000 (LongMapFixedSize!5392) Bool)

(assert (=> start!89522 (= res!687042 (valid!2000 thiss!1427))))

(assert (=> start!89522 e!578887))

(declare-fun e!578882 () Bool)

(assert (=> start!89522 e!578882))

(assert (=> start!89522 true))

(declare-fun b!1026182 () Bool)

(declare-fun e!578883 () Bool)

(declare-fun tp_is_empty!24205 () Bool)

(assert (=> b!1026182 (= e!578883 tp_is_empty!24205)))

(declare-fun b!1026183 () Bool)

(declare-fun e!578885 () Bool)

(assert (=> b!1026183 (= e!578887 e!578885)))

(declare-fun res!687045 () Bool)

(assert (=> b!1026183 (=> (not res!687045) (not e!578885))))

(declare-datatypes ((SeekEntryResult!9629 0))(
  ( (MissingZero!9629 (index!40886 (_ BitVec 32))) (Found!9629 (index!40887 (_ BitVec 32))) (Intermediate!9629 (undefined!10441 Bool) (index!40888 (_ BitVec 32)) (x!91270 (_ BitVec 32))) (Undefined!9629) (MissingVacant!9629 (index!40889 (_ BitVec 32))) )
))
(declare-fun lt!451392 () SeekEntryResult!9629)

(assert (=> b!1026183 (= res!687045 (is-Found!9629 lt!451392))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64444 (_ BitVec 32)) SeekEntryResult!9629)

(assert (=> b!1026183 (= lt!451392 (seekEntry!0 key!909 (_keys!11192 thiss!1427) (mask!29733 thiss!1427)))))

(declare-fun b!1026184 () Bool)

(declare-fun e!578881 () Bool)

(assert (=> b!1026184 (= e!578881 (and e!578883 mapRes!37736))))

(declare-fun condMapEmpty!37736 () Bool)

(declare-fun mapDefault!37736 () ValueCell!11399)

