; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89328 () Bool)

(assert start!89328)

(declare-fun b!1023818 () Bool)

(declare-fun b_free!20333 () Bool)

(declare-fun b_next!20333 () Bool)

(assert (=> b!1023818 (= b_free!20333 (not b_next!20333))))

(declare-fun tp!72035 () Bool)

(declare-fun b_and!32595 () Bool)

(assert (=> b!1023818 (= tp!72035 b_and!32595)))

(declare-fun b!1023813 () Bool)

(declare-fun e!577044 () Bool)

(declare-fun e!577045 () Bool)

(declare-fun mapRes!37497 () Bool)

(assert (=> b!1023813 (= e!577044 (and e!577045 mapRes!37497))))

(declare-fun condMapEmpty!37497 () Bool)

(declare-datatypes ((V!36943 0))(
  ( (V!36944 (val!12077 Int)) )
))
(declare-datatypes ((ValueCell!11323 0))(
  ( (ValueCellFull!11323 (v!14647 V!36943)) (EmptyCell!11323) )
))
(declare-datatypes ((array!64134 0))(
  ( (array!64135 (arr!30875 (Array (_ BitVec 32) (_ BitVec 64))) (size!31387 (_ BitVec 32))) )
))
(declare-datatypes ((array!64136 0))(
  ( (array!64137 (arr!30876 (Array (_ BitVec 32) ValueCell!11323)) (size!31388 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5240 0))(
  ( (LongMapFixedSize!5241 (defaultEntry!5972 Int) (mask!29600 (_ BitVec 32)) (extraKeys!5704 (_ BitVec 32)) (zeroValue!5808 V!36943) (minValue!5808 V!36943) (_size!2675 (_ BitVec 32)) (_keys!11114 array!64134) (_values!5995 array!64136) (_vacant!2675 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5240)

(declare-fun mapDefault!37497 () ValueCell!11323)

