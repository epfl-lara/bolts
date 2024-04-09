; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91972 () Bool)

(assert start!91972)

(declare-fun b!1045546 () Bool)

(declare-fun b_free!21143 () Bool)

(declare-fun b_next!21143 () Bool)

(assert (=> b!1045546 (= b_free!21143 (not b_next!21143))))

(declare-fun tp!74688 () Bool)

(declare-fun b_and!33791 () Bool)

(assert (=> b!1045546 (= tp!74688 b_and!33791)))

(declare-fun res!696237 () Bool)

(declare-fun e!592736 () Bool)

(assert (=> start!91972 (=> (not res!696237) (not e!592736))))

(declare-datatypes ((V!38023 0))(
  ( (V!38024 (val!12482 Int)) )
))
(declare-datatypes ((ValueCell!11728 0))(
  ( (ValueCellFull!11728 (v!15079 V!38023)) (EmptyCell!11728) )
))
(declare-datatypes ((array!65886 0))(
  ( (array!65887 (arr!31685 (Array (_ BitVec 32) (_ BitVec 64))) (size!32221 (_ BitVec 32))) )
))
(declare-datatypes ((array!65888 0))(
  ( (array!65889 (arr!31686 (Array (_ BitVec 32) ValueCell!11728)) (size!32222 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6050 0))(
  ( (LongMapFixedSize!6051 (defaultEntry!6421 Int) (mask!30547 (_ BitVec 32)) (extraKeys!6149 (_ BitVec 32)) (zeroValue!6255 V!38023) (minValue!6255 V!38023) (_size!3080 (_ BitVec 32)) (_keys!11690 array!65886) (_values!6444 array!65888) (_vacant!3080 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6050)

(declare-fun valid!2224 (LongMapFixedSize!6050) Bool)

(assert (=> start!91972 (= res!696237 (valid!2224 thiss!1427))))

(assert (=> start!91972 e!592736))

(declare-fun e!592737 () Bool)

(assert (=> start!91972 e!592737))

(assert (=> start!91972 true))

(declare-fun b!1045543 () Bool)

(declare-fun res!696235 () Bool)

(declare-fun e!592735 () Bool)

(assert (=> b!1045543 (=> res!696235 e!592735)))

(declare-datatypes ((Unit!34150 0))(
  ( (Unit!34151) )
))
(declare-datatypes ((tuple2!15896 0))(
  ( (tuple2!15897 (_1!7958 Unit!34150) (_2!7958 LongMapFixedSize!6050)) )
))
(declare-fun lt!461631 () tuple2!15896)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1045543 (= res!696235 (not (validMask!0 (mask!30547 (_2!7958 lt!461631)))))))

(declare-fun b!1045544 () Bool)

(declare-fun e!592733 () Bool)

(declare-fun e!592732 () Bool)

(declare-fun mapRes!38936 () Bool)

(assert (=> b!1045544 (= e!592733 (and e!592732 mapRes!38936))))

(declare-fun condMapEmpty!38936 () Bool)

(declare-fun mapDefault!38936 () ValueCell!11728)

