; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33902 () Bool)

(assert start!33902)

(declare-fun b_free!7073 () Bool)

(declare-fun b_next!7073 () Bool)

(assert (=> start!33902 (= b_free!7073 (not b_next!7073))))

(declare-fun tp!24731 () Bool)

(declare-fun b_and!14277 () Bool)

(assert (=> start!33902 (= tp!24731 b_and!14277)))

(declare-fun b!337321 () Bool)

(declare-fun e!206999 () Bool)

(declare-fun e!207003 () Bool)

(declare-fun mapRes!11943 () Bool)

(assert (=> b!337321 (= e!206999 (and e!207003 mapRes!11943))))

(declare-fun condMapEmpty!11943 () Bool)

(declare-datatypes ((V!10343 0))(
  ( (V!10344 (val!3557 Int)) )
))
(declare-datatypes ((ValueCell!3169 0))(
  ( (ValueCellFull!3169 (v!5718 V!10343)) (EmptyCell!3169) )
))
(declare-datatypes ((array!17621 0))(
  ( (array!17622 (arr!8335 (Array (_ BitVec 32) ValueCell!3169)) (size!8687 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17621)

(declare-fun mapDefault!11943 () ValueCell!3169)

