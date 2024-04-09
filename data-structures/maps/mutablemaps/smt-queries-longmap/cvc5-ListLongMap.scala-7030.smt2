; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89228 () Bool)

(assert start!89228)

(declare-fun b!1022563 () Bool)

(declare-fun b_free!20233 () Bool)

(declare-fun b_next!20233 () Bool)

(assert (=> b!1022563 (= b_free!20233 (not b_next!20233))))

(declare-fun tp!71735 () Bool)

(declare-fun b_and!32467 () Bool)

(assert (=> b!1022563 (= tp!71735 b_and!32467)))

(declare-fun b!1022561 () Bool)

(declare-fun e!576140 () Bool)

(declare-fun e!576141 () Bool)

(declare-fun mapRes!37347 () Bool)

(assert (=> b!1022561 (= e!576140 (and e!576141 mapRes!37347))))

(declare-fun condMapEmpty!37347 () Bool)

(declare-datatypes ((V!36811 0))(
  ( (V!36812 (val!12027 Int)) )
))
(declare-datatypes ((ValueCell!11273 0))(
  ( (ValueCellFull!11273 (v!14597 V!36811)) (EmptyCell!11273) )
))
(declare-datatypes ((array!63934 0))(
  ( (array!63935 (arr!30775 (Array (_ BitVec 32) (_ BitVec 64))) (size!31287 (_ BitVec 32))) )
))
(declare-datatypes ((array!63936 0))(
  ( (array!63937 (arr!30776 (Array (_ BitVec 32) ValueCell!11273)) (size!31288 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5140 0))(
  ( (LongMapFixedSize!5141 (defaultEntry!5922 Int) (mask!29518 (_ BitVec 32)) (extraKeys!5654 (_ BitVec 32)) (zeroValue!5758 V!36811) (minValue!5758 V!36811) (_size!2625 (_ BitVec 32)) (_keys!11064 array!63934) (_values!5945 array!63936) (_vacant!2625 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5140)

(declare-fun mapDefault!37347 () ValueCell!11273)

