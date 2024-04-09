; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89456 () Bool)

(assert start!89456)

(declare-fun b!1025241 () Bool)

(declare-fun b_free!20419 () Bool)

(declare-fun b_next!20419 () Bool)

(assert (=> b!1025241 (= b_free!20419 (not b_next!20419))))

(declare-fun tp!72303 () Bool)

(declare-fun b_and!32683 () Bool)

(assert (=> b!1025241 (= tp!72303 b_and!32683)))

(declare-fun mapIsEmpty!37637 () Bool)

(declare-fun mapRes!37637 () Bool)

(assert (=> mapIsEmpty!37637 mapRes!37637))

(declare-fun b!1025233 () Bool)

(declare-fun res!686491 () Bool)

(declare-fun e!578091 () Bool)

(assert (=> b!1025233 (=> res!686491 e!578091)))

(declare-datatypes ((V!37059 0))(
  ( (V!37060 (val!12120 Int)) )
))
(declare-datatypes ((ValueCell!11366 0))(
  ( (ValueCellFull!11366 (v!14690 V!37059)) (EmptyCell!11366) )
))
(declare-datatypes ((array!64312 0))(
  ( (array!64313 (arr!30961 (Array (_ BitVec 32) (_ BitVec 64))) (size!31475 (_ BitVec 32))) )
))
(declare-datatypes ((array!64314 0))(
  ( (array!64315 (arr!30962 (Array (_ BitVec 32) ValueCell!11366)) (size!31476 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5326 0))(
  ( (LongMapFixedSize!5327 (defaultEntry!6015 Int) (mask!29678 (_ BitVec 32)) (extraKeys!5747 (_ BitVec 32)) (zeroValue!5851 V!37059) (minValue!5851 V!37059) (_size!2718 (_ BitVec 32)) (_keys!11159 array!64312) (_values!6038 array!64314) (_vacant!2718 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5326)

(declare-datatypes ((SeekEntryResult!9604 0))(
  ( (MissingZero!9604 (index!40786 (_ BitVec 32))) (Found!9604 (index!40787 (_ BitVec 32))) (Intermediate!9604 (undefined!10416 Bool) (index!40788 (_ BitVec 32)) (x!91157 (_ BitVec 32))) (Undefined!9604) (MissingVacant!9604 (index!40789 (_ BitVec 32))) )
))
(declare-fun lt!450846 () SeekEntryResult!9604)

(assert (=> b!1025233 (= res!686491 (or (not (= (size!31475 (_keys!11159 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29678 thiss!1427)))) (bvslt (index!40787 lt!450846) #b00000000000000000000000000000000) (bvsge (index!40787 lt!450846) (size!31475 (_keys!11159 thiss!1427)))))))

(declare-fun b!1025234 () Bool)

(declare-fun e!578095 () Bool)

(declare-fun tp_is_empty!24139 () Bool)

(assert (=> b!1025234 (= e!578095 tp_is_empty!24139)))

(declare-fun mapNonEmpty!37637 () Bool)

(declare-fun tp!72304 () Bool)

(declare-fun e!578094 () Bool)

(assert (=> mapNonEmpty!37637 (= mapRes!37637 (and tp!72304 e!578094))))

(declare-fun mapKey!37637 () (_ BitVec 32))

(declare-fun mapRest!37637 () (Array (_ BitVec 32) ValueCell!11366))

(declare-fun mapValue!37637 () ValueCell!11366)

(assert (=> mapNonEmpty!37637 (= (arr!30962 (_values!6038 thiss!1427)) (store mapRest!37637 mapKey!37637 mapValue!37637))))

(declare-fun b!1025235 () Bool)

(assert (=> b!1025235 (= e!578094 tp_is_empty!24139)))

(declare-fun b!1025236 () Bool)

(declare-fun res!686495 () Bool)

(assert (=> b!1025236 (=> res!686495 e!578091)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1025236 (= res!686495 (not (validKeyInArray!0 (select (arr!30961 (_keys!11159 thiss!1427)) (index!40787 lt!450846)))))))

(declare-fun b!1025238 () Bool)

(declare-fun res!686493 () Bool)

(declare-fun e!578096 () Bool)

(assert (=> b!1025238 (=> (not res!686493) (not e!578096))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1025238 (= res!686493 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1025239 () Bool)

(declare-fun res!686490 () Bool)

(assert (=> b!1025239 (=> res!686490 e!578091)))

(declare-datatypes ((List!21856 0))(
  ( (Nil!21853) (Cons!21852 (h!23050 (_ BitVec 64)) (t!30925 List!21856)) )
))
(declare-fun arrayNoDuplicates!0 (array!64312 (_ BitVec 32) List!21856) Bool)

(assert (=> b!1025239 (= res!686490 (not (arrayNoDuplicates!0 (_keys!11159 thiss!1427) #b00000000000000000000000000000000 Nil!21853)))))

(declare-fun b!1025240 () Bool)

(declare-fun e!578090 () Bool)

(assert (=> b!1025240 (= e!578090 (and e!578095 mapRes!37637))))

(declare-fun condMapEmpty!37637 () Bool)

(declare-fun mapDefault!37637 () ValueCell!11366)

