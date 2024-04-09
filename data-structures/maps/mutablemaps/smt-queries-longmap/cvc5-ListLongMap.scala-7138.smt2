; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90702 () Bool)

(assert start!90702)

(declare-fun b!1036922 () Bool)

(declare-fun b_free!20881 () Bool)

(declare-fun b_next!20881 () Bool)

(assert (=> b!1036922 (= b_free!20881 (not b_next!20881))))

(declare-fun tp!73783 () Bool)

(declare-fun b_and!33431 () Bool)

(assert (=> b!1036922 (= tp!73783 b_and!33431)))

(declare-fun mapNonEmpty!38423 () Bool)

(declare-fun mapRes!38423 () Bool)

(declare-fun tp!73782 () Bool)

(declare-fun e!586513 () Bool)

(assert (=> mapNonEmpty!38423 (= mapRes!38423 (and tp!73782 e!586513))))

(declare-fun mapKey!38423 () (_ BitVec 32))

(declare-datatypes ((V!37675 0))(
  ( (V!37676 (val!12351 Int)) )
))
(declare-datatypes ((ValueCell!11597 0))(
  ( (ValueCellFull!11597 (v!14935 V!37675)) (EmptyCell!11597) )
))
(declare-datatypes ((array!65286 0))(
  ( (array!65287 (arr!31423 (Array (_ BitVec 32) (_ BitVec 64))) (size!31953 (_ BitVec 32))) )
))
(declare-datatypes ((array!65288 0))(
  ( (array!65289 (arr!31424 (Array (_ BitVec 32) ValueCell!11597)) (size!31954 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5788 0))(
  ( (LongMapFixedSize!5789 (defaultEntry!6276 Int) (mask!30177 (_ BitVec 32)) (extraKeys!6004 (_ BitVec 32)) (zeroValue!6110 V!37675) (minValue!6110 V!37675) (_size!2949 (_ BitVec 32)) (_keys!11464 array!65286) (_values!6299 array!65288) (_vacant!2949 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5788)

(declare-fun mapValue!38423 () ValueCell!11597)

(declare-fun mapRest!38423 () (Array (_ BitVec 32) ValueCell!11597))

(assert (=> mapNonEmpty!38423 (= (arr!31424 (_values!6299 thiss!1427)) (store mapRest!38423 mapKey!38423 mapValue!38423))))

(declare-fun e!586518 () Bool)

(declare-fun e!586514 () Bool)

(declare-fun tp_is_empty!24601 () Bool)

(declare-fun array_inv!24135 (array!65286) Bool)

(declare-fun array_inv!24136 (array!65288) Bool)

(assert (=> b!1036922 (= e!586514 (and tp!73783 tp_is_empty!24601 (array_inv!24135 (_keys!11464 thiss!1427)) (array_inv!24136 (_values!6299 thiss!1427)) e!586518))))

(declare-fun b!1036923 () Bool)

(declare-fun e!586515 () Bool)

(assert (=> b!1036923 (= e!586515 (bvsge (size!31953 (_keys!11464 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1036924 () Bool)

(declare-fun res!692051 () Bool)

(declare-fun e!586517 () Bool)

(assert (=> b!1036924 (=> (not res!692051) (not e!586517))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1036924 (= res!692051 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1036925 () Bool)

(declare-fun e!586519 () Bool)

(assert (=> b!1036925 (= e!586519 e!586515)))

(declare-fun res!692054 () Bool)

(assert (=> b!1036925 (=> res!692054 e!586515)))

(declare-datatypes ((SeekEntryResult!9742 0))(
  ( (MissingZero!9742 (index!41338 (_ BitVec 32))) (Found!9742 (index!41339 (_ BitVec 32))) (Intermediate!9742 (undefined!10554 Bool) (index!41340 (_ BitVec 32)) (x!92479 (_ BitVec 32))) (Undefined!9742) (MissingVacant!9742 (index!41341 (_ BitVec 32))) )
))
(declare-fun lt!457343 () SeekEntryResult!9742)

(assert (=> b!1036925 (= res!692054 (or (bvslt (index!41339 lt!457343) #b00000000000000000000000000000000) (bvsge (index!41339 lt!457343) (size!31953 (_keys!11464 thiss!1427)))))))

(declare-fun res!692053 () Bool)

(assert (=> start!90702 (=> (not res!692053) (not e!586517))))

(declare-fun valid!2134 (LongMapFixedSize!5788) Bool)

(assert (=> start!90702 (= res!692053 (valid!2134 thiss!1427))))

(assert (=> start!90702 e!586517))

(assert (=> start!90702 e!586514))

(assert (=> start!90702 true))

(declare-fun mapIsEmpty!38423 () Bool)

(assert (=> mapIsEmpty!38423 mapRes!38423))

(declare-fun b!1036926 () Bool)

(declare-fun e!586516 () Bool)

(assert (=> b!1036926 (= e!586518 (and e!586516 mapRes!38423))))

(declare-fun condMapEmpty!38423 () Bool)

(declare-fun mapDefault!38423 () ValueCell!11597)

