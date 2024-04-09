; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90220 () Bool)

(assert start!90220)

(declare-fun b!1032697 () Bool)

(declare-fun b_free!20743 () Bool)

(declare-fun b_next!20743 () Bool)

(assert (=> b!1032697 (= b_free!20743 (not b_next!20743))))

(declare-fun tp!73313 () Bool)

(declare-fun b_and!33229 () Bool)

(assert (=> b!1032697 (= tp!73313 b_and!33229)))

(declare-fun b!1032692 () Bool)

(declare-fun e!583605 () Bool)

(declare-datatypes ((V!37491 0))(
  ( (V!37492 (val!12282 Int)) )
))
(declare-datatypes ((ValueCell!11528 0))(
  ( (ValueCellFull!11528 (v!14860 V!37491)) (EmptyCell!11528) )
))
(declare-datatypes ((array!64980 0))(
  ( (array!64981 (arr!31285 (Array (_ BitVec 32) (_ BitVec 64))) (size!31806 (_ BitVec 32))) )
))
(declare-datatypes ((array!64982 0))(
  ( (array!64983 (arr!31286 (Array (_ BitVec 32) ValueCell!11528)) (size!31807 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5650 0))(
  ( (LongMapFixedSize!5651 (defaultEntry!6199 Int) (mask!30024 (_ BitVec 32)) (extraKeys!5931 (_ BitVec 32)) (zeroValue!6035 V!37491) (minValue!6035 V!37491) (_size!2880 (_ BitVec 32)) (_keys!11372 array!64980) (_values!6222 array!64982) (_vacant!2880 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5650)

(assert (=> b!1032692 (= e!583605 (and (= (size!31807 (_values!6222 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30024 thiss!1427))) (= (size!31806 (_keys!11372 thiss!1427)) (size!31807 (_values!6222 thiss!1427))) (bvslt (mask!30024 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!38160 () Bool)

(declare-fun mapRes!38160 () Bool)

(assert (=> mapIsEmpty!38160 mapRes!38160))

(declare-fun mapNonEmpty!38160 () Bool)

(declare-fun tp!73312 () Bool)

(declare-fun e!583601 () Bool)

(assert (=> mapNonEmpty!38160 (= mapRes!38160 (and tp!73312 e!583601))))

(declare-fun mapRest!38160 () (Array (_ BitVec 32) ValueCell!11528))

(declare-fun mapKey!38160 () (_ BitVec 32))

(declare-fun mapValue!38160 () ValueCell!11528)

(assert (=> mapNonEmpty!38160 (= (arr!31286 (_values!6222 thiss!1427)) (store mapRest!38160 mapKey!38160 mapValue!38160))))

(declare-fun b!1032693 () Bool)

(declare-fun res!690241 () Bool)

(assert (=> b!1032693 (=> (not res!690241) (not e!583605))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1032693 (= res!690241 (validMask!0 (mask!30024 thiss!1427)))))

(declare-fun b!1032694 () Bool)

(declare-fun res!690243 () Bool)

(assert (=> b!1032694 (=> (not res!690243) (not e!583605))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1032694 (= res!690243 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1032695 () Bool)

(declare-fun e!583602 () Bool)

(declare-fun tp_is_empty!24463 () Bool)

(assert (=> b!1032695 (= e!583602 tp_is_empty!24463)))

(declare-fun b!1032696 () Bool)

(declare-fun e!583606 () Bool)

(assert (=> b!1032696 (= e!583606 (and e!583602 mapRes!38160))))

(declare-fun condMapEmpty!38160 () Bool)

(declare-fun mapDefault!38160 () ValueCell!11528)

