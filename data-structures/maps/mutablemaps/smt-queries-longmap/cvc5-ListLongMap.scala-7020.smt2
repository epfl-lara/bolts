; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89168 () Bool)

(assert start!89168)

(declare-fun b!1021823 () Bool)

(declare-fun b_free!20173 () Bool)

(declare-fun b_next!20173 () Bool)

(assert (=> b!1021823 (= b_free!20173 (not b_next!20173))))

(declare-fun tp!71554 () Bool)

(declare-fun b_and!32389 () Bool)

(assert (=> b!1021823 (= tp!71554 b_and!32389)))

(declare-fun b!1021820 () Bool)

(declare-fun res!684678 () Bool)

(declare-fun e!575603 () Bool)

(assert (=> b!1021820 (=> (not res!684678) (not e!575603))))

(declare-datatypes ((V!36731 0))(
  ( (V!36732 (val!11997 Int)) )
))
(declare-datatypes ((ValueCell!11243 0))(
  ( (ValueCellFull!11243 (v!14567 V!36731)) (EmptyCell!11243) )
))
(declare-datatypes ((array!63814 0))(
  ( (array!63815 (arr!30715 (Array (_ BitVec 32) (_ BitVec 64))) (size!31227 (_ BitVec 32))) )
))
(declare-datatypes ((array!63816 0))(
  ( (array!63817 (arr!30716 (Array (_ BitVec 32) ValueCell!11243)) (size!31228 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5080 0))(
  ( (LongMapFixedSize!5081 (defaultEntry!5892 Int) (mask!29468 (_ BitVec 32)) (extraKeys!5624 (_ BitVec 32)) (zeroValue!5728 V!36731) (minValue!5728 V!36731) (_size!2595 (_ BitVec 32)) (_keys!11034 array!63814) (_values!5915 array!63816) (_vacant!2595 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5080)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63814 (_ BitVec 32)) Bool)

(assert (=> b!1021820 (= res!684678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11034 thiss!1427) (mask!29468 thiss!1427)))))

(declare-fun b!1021821 () Bool)

(declare-fun e!575604 () Bool)

(declare-fun e!575600 () Bool)

(declare-fun mapRes!37257 () Bool)

(assert (=> b!1021821 (= e!575604 (and e!575600 mapRes!37257))))

(declare-fun condMapEmpty!37257 () Bool)

(declare-fun mapDefault!37257 () ValueCell!11243)

