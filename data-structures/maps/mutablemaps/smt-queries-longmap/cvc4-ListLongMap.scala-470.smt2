; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9222 () Bool)

(assert start!9222)

(declare-fun b!65562 () Bool)

(declare-fun b_free!2037 () Bool)

(declare-fun b_next!2037 () Bool)

(assert (=> b!65562 (= b_free!2037 (not b_next!2037))))

(declare-fun tp!8259 () Bool)

(declare-fun b_and!4017 () Bool)

(assert (=> b!65562 (= tp!8259 b_and!4017)))

(declare-fun b!65555 () Bool)

(declare-fun b_free!2039 () Bool)

(declare-fun b_next!2039 () Bool)

(assert (=> b!65555 (= b_free!2039 (not b_next!2039))))

(declare-fun tp!8261 () Bool)

(declare-fun b_and!4019 () Bool)

(assert (=> b!65555 (= tp!8261 b_and!4019)))

(declare-fun b!65554 () Bool)

(declare-fun e!42954 () Bool)

(declare-fun e!42946 () Bool)

(declare-fun mapRes!3023 () Bool)

(assert (=> b!65554 (= e!42954 (and e!42946 mapRes!3023))))

(declare-fun condMapEmpty!3023 () Bool)

(declare-datatypes ((V!2893 0))(
  ( (V!2894 (val!1262 Int)) )
))
(declare-datatypes ((array!3806 0))(
  ( (array!3807 (arr!1818 (Array (_ BitVec 32) (_ BitVec 64))) (size!2053 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!874 0))(
  ( (ValueCellFull!874 (v!2460 V!2893)) (EmptyCell!874) )
))
(declare-datatypes ((array!3808 0))(
  ( (array!3809 (arr!1819 (Array (_ BitVec 32) ValueCell!874)) (size!2054 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!656 0))(
  ( (LongMapFixedSize!657 (defaultEntry!2136 Int) (mask!6064 (_ BitVec 32)) (extraKeys!2007 (_ BitVec 32)) (zeroValue!2044 V!2893) (minValue!2044 V!2893) (_size!377 (_ BitVec 32)) (_keys!3776 array!3806) (_values!2119 array!3808) (_vacant!377 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!466 0))(
  ( (Cell!467 (v!2461 LongMapFixedSize!656)) )
))
(declare-datatypes ((LongMap!466 0))(
  ( (LongMap!467 (underlying!244 Cell!466)) )
))
(declare-fun thiss!992 () LongMap!466)

(declare-fun mapDefault!3023 () ValueCell!874)

