; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89276 () Bool)

(assert start!89276)

(declare-fun b!1023198 () Bool)

(declare-fun b_free!20281 () Bool)

(declare-fun b_next!20281 () Bool)

(assert (=> b!1023198 (= b_free!20281 (not b_next!20281))))

(declare-fun tp!71878 () Bool)

(declare-fun b_and!32521 () Bool)

(assert (=> b!1023198 (= tp!71878 b_and!32521)))

(declare-fun res!685382 () Bool)

(declare-fun e!576575 () Bool)

(assert (=> start!89276 (=> (not res!685382) (not e!576575))))

(declare-datatypes ((V!36875 0))(
  ( (V!36876 (val!12051 Int)) )
))
(declare-datatypes ((ValueCell!11297 0))(
  ( (ValueCellFull!11297 (v!14621 V!36875)) (EmptyCell!11297) )
))
(declare-datatypes ((array!64030 0))(
  ( (array!64031 (arr!30823 (Array (_ BitVec 32) (_ BitVec 64))) (size!31335 (_ BitVec 32))) )
))
(declare-datatypes ((array!64032 0))(
  ( (array!64033 (arr!30824 (Array (_ BitVec 32) ValueCell!11297)) (size!31336 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5188 0))(
  ( (LongMapFixedSize!5189 (defaultEntry!5946 Int) (mask!29558 (_ BitVec 32)) (extraKeys!5678 (_ BitVec 32)) (zeroValue!5782 V!36875) (minValue!5782 V!36875) (_size!2649 (_ BitVec 32)) (_keys!11088 array!64030) (_values!5969 array!64032) (_vacant!2649 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5188)

(declare-fun valid!1935 (LongMapFixedSize!5188) Bool)

(assert (=> start!89276 (= res!685382 (valid!1935 thiss!1427))))

(assert (=> start!89276 e!576575))

(declare-fun e!576572 () Bool)

(assert (=> start!89276 e!576572))

(assert (=> start!89276 true))

(declare-fun b!1023194 () Bool)

(declare-fun e!576573 () Bool)

(declare-fun e!576574 () Bool)

(declare-fun mapRes!37419 () Bool)

(assert (=> b!1023194 (= e!576573 (and e!576574 mapRes!37419))))

(declare-fun condMapEmpty!37419 () Bool)

(declare-fun mapDefault!37419 () ValueCell!11297)

