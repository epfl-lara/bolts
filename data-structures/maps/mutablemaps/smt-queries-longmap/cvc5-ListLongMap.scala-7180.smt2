; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91928 () Bool)

(assert start!91928)

(declare-fun b!1045183 () Bool)

(declare-fun b_free!21133 () Bool)

(declare-fun b_next!21133 () Bool)

(assert (=> b!1045183 (= b_free!21133 (not b_next!21133))))

(declare-fun tp!74656 () Bool)

(declare-fun b_and!33763 () Bool)

(assert (=> b!1045183 (= tp!74656 b_and!33763)))

(declare-fun mapIsEmpty!38918 () Bool)

(declare-fun mapRes!38918 () Bool)

(assert (=> mapIsEmpty!38918 mapRes!38918))

(declare-fun b!1045176 () Bool)

(declare-fun e!592474 () Bool)

(declare-fun tp_is_empty!24853 () Bool)

(assert (=> b!1045176 (= e!592474 tp_is_empty!24853)))

(declare-fun b!1045177 () Bool)

(declare-fun res!696061 () Bool)

(declare-fun e!592475 () Bool)

(assert (=> b!1045177 (=> res!696061 e!592475)))

(declare-datatypes ((V!38011 0))(
  ( (V!38012 (val!12477 Int)) )
))
(declare-datatypes ((ValueCell!11723 0))(
  ( (ValueCellFull!11723 (v!15073 V!38011)) (EmptyCell!11723) )
))
(declare-datatypes ((Unit!34130 0))(
  ( (Unit!34131) )
))
(declare-datatypes ((array!65864 0))(
  ( (array!65865 (arr!31675 (Array (_ BitVec 32) (_ BitVec 64))) (size!32211 (_ BitVec 32))) )
))
(declare-datatypes ((array!65866 0))(
  ( (array!65867 (arr!31676 (Array (_ BitVec 32) ValueCell!11723)) (size!32212 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6040 0))(
  ( (LongMapFixedSize!6041 (defaultEntry!6414 Int) (mask!30534 (_ BitVec 32)) (extraKeys!6142 (_ BitVec 32)) (zeroValue!6248 V!38011) (minValue!6248 V!38011) (_size!3075 (_ BitVec 32)) (_keys!11681 array!65864) (_values!6437 array!65866) (_vacant!3075 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15880 0))(
  ( (tuple2!15881 (_1!7950 Unit!34130) (_2!7950 LongMapFixedSize!6040)) )
))
(declare-fun lt!461326 () tuple2!15880)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1045177 (= res!696061 (not (validMask!0 (mask!30534 (_2!7950 lt!461326)))))))

(declare-fun res!696058 () Bool)

(declare-fun e!592469 () Bool)

(assert (=> start!91928 (=> (not res!696058) (not e!592469))))

(declare-fun thiss!1427 () LongMapFixedSize!6040)

(declare-fun valid!2219 (LongMapFixedSize!6040) Bool)

(assert (=> start!91928 (= res!696058 (valid!2219 thiss!1427))))

(assert (=> start!91928 e!592469))

(declare-fun e!592470 () Bool)

(assert (=> start!91928 e!592470))

(assert (=> start!91928 true))

(declare-fun b!1045178 () Bool)

(declare-fun e!592473 () Bool)

(assert (=> b!1045178 (= e!592469 e!592473)))

(declare-fun res!696059 () Bool)

(assert (=> b!1045178 (=> (not res!696059) (not e!592473))))

(declare-datatypes ((SeekEntryResult!9844 0))(
  ( (MissingZero!9844 (index!41746 (_ BitVec 32))) (Found!9844 (index!41747 (_ BitVec 32))) (Intermediate!9844 (undefined!10656 Bool) (index!41748 (_ BitVec 32)) (x!93349 (_ BitVec 32))) (Undefined!9844) (MissingVacant!9844 (index!41749 (_ BitVec 32))) )
))
(declare-fun lt!461327 () SeekEntryResult!9844)

(assert (=> b!1045178 (= res!696059 (is-Found!9844 lt!461327))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65864 (_ BitVec 32)) SeekEntryResult!9844)

(assert (=> b!1045178 (= lt!461327 (seekEntry!0 key!909 (_keys!11681 thiss!1427) (mask!30534 thiss!1427)))))

(declare-fun b!1045179 () Bool)

(declare-fun e!592472 () Bool)

(assert (=> b!1045179 (= e!592472 tp_is_empty!24853)))

(declare-fun b!1045180 () Bool)

(declare-fun e!592471 () Bool)

(assert (=> b!1045180 (= e!592471 (and e!592474 mapRes!38918))))

(declare-fun condMapEmpty!38918 () Bool)

(declare-fun mapDefault!38918 () ValueCell!11723)

