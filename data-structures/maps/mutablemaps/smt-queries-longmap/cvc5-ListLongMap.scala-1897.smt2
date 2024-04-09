; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33880 () Bool)

(assert start!33880)

(declare-fun b_free!7051 () Bool)

(declare-fun b_next!7051 () Bool)

(assert (=> start!33880 (= b_free!7051 (not b_next!7051))))

(declare-fun tp!24666 () Bool)

(declare-fun b_and!14255 () Bool)

(assert (=> start!33880 (= tp!24666 b_and!14255)))

(declare-fun mapIsEmpty!11910 () Bool)

(declare-fun mapRes!11910 () Bool)

(assert (=> mapIsEmpty!11910 mapRes!11910))

(declare-fun b!336959 () Bool)

(declare-fun res!186154 () Bool)

(declare-fun e!206803 () Bool)

(assert (=> b!336959 (=> (not res!186154) (not e!206803))))

(declare-datatypes ((array!17583 0))(
  ( (array!17584 (arr!8316 (Array (_ BitVec 32) (_ BitVec 64))) (size!8668 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17583)

(declare-datatypes ((List!4794 0))(
  ( (Nil!4791) (Cons!4790 (h!5646 (_ BitVec 64)) (t!9896 List!4794)) )
))
(declare-fun arrayNoDuplicates!0 (array!17583 (_ BitVec 32) List!4794) Bool)

(assert (=> b!336959 (= res!186154 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4791))))

(declare-fun b!336960 () Bool)

(declare-fun e!206804 () Bool)

(declare-fun e!206805 () Bool)

(assert (=> b!336960 (= e!206804 (and e!206805 mapRes!11910))))

(declare-fun condMapEmpty!11910 () Bool)

(declare-datatypes ((V!10315 0))(
  ( (V!10316 (val!3546 Int)) )
))
(declare-datatypes ((ValueCell!3158 0))(
  ( (ValueCellFull!3158 (v!5707 V!10315)) (EmptyCell!3158) )
))
(declare-datatypes ((array!17585 0))(
  ( (array!17586 (arr!8317 (Array (_ BitVec 32) ValueCell!3158)) (size!8669 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17585)

(declare-fun mapDefault!11910 () ValueCell!3158)

