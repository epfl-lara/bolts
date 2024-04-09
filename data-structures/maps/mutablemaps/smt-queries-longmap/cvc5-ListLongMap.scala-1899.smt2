; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33892 () Bool)

(assert start!33892)

(declare-fun b_free!7063 () Bool)

(declare-fun b_next!7063 () Bool)

(assert (=> start!33892 (= b_free!7063 (not b_next!7063))))

(declare-fun tp!24701 () Bool)

(declare-fun b_and!14267 () Bool)

(assert (=> start!33892 (= tp!24701 b_and!14267)))

(declare-fun b!337156 () Bool)

(declare-fun e!206912 () Bool)

(declare-fun e!206913 () Bool)

(declare-fun mapRes!11928 () Bool)

(assert (=> b!337156 (= e!206912 (and e!206913 mapRes!11928))))

(declare-fun condMapEmpty!11928 () Bool)

(declare-datatypes ((V!10331 0))(
  ( (V!10332 (val!3552 Int)) )
))
(declare-datatypes ((ValueCell!3164 0))(
  ( (ValueCellFull!3164 (v!5713 V!10331)) (EmptyCell!3164) )
))
(declare-datatypes ((array!17605 0))(
  ( (array!17606 (arr!8327 (Array (_ BitVec 32) ValueCell!3164)) (size!8679 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17605)

(declare-fun mapDefault!11928 () ValueCell!3164)

