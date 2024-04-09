; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82530 () Bool)

(assert start!82530)

(declare-fun mapNonEmpty!34150 () Bool)

(declare-fun mapRes!34150 () Bool)

(declare-fun tp!65080 () Bool)

(declare-fun e!542098 () Bool)

(assert (=> mapNonEmpty!34150 (= mapRes!34150 (and tp!65080 e!542098))))

(declare-fun mapKey!34150 () (_ BitVec 32))

(declare-datatypes ((V!33565 0))(
  ( (V!33566 (val!10769 Int)) )
))
(declare-datatypes ((ValueCell!10237 0))(
  ( (ValueCellFull!10237 (v!13327 V!33565)) (EmptyCell!10237) )
))
(declare-fun mapValue!34150 () ValueCell!10237)

(declare-datatypes ((array!58971 0))(
  ( (array!58972 (arr!28350 (Array (_ BitVec 32) ValueCell!10237)) (size!28830 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58971)

(declare-fun mapRest!34150 () (Array (_ BitVec 32) ValueCell!10237))

(assert (=> mapNonEmpty!34150 (= (arr!28350 _values!1400) (store mapRest!34150 mapKey!34150 mapValue!34150))))

(declare-fun b!961346 () Bool)

(declare-fun e!542095 () Bool)

(declare-fun e!542094 () Bool)

(assert (=> b!961346 (= e!542095 (and e!542094 mapRes!34150))))

(declare-fun condMapEmpty!34150 () Bool)

(declare-fun mapDefault!34150 () ValueCell!10237)

