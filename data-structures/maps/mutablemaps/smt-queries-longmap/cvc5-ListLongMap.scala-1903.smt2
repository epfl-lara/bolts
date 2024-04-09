; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33916 () Bool)

(assert start!33916)

(declare-fun b_free!7087 () Bool)

(declare-fun b_next!7087 () Bool)

(assert (=> start!33916 (= b_free!7087 (not b_next!7087))))

(declare-fun tp!24774 () Bool)

(declare-fun b_and!14291 () Bool)

(assert (=> start!33916 (= tp!24774 b_and!14291)))

(declare-fun b!337563 () Bool)

(declare-fun e!207136 () Bool)

(declare-fun e!207137 () Bool)

(declare-fun mapRes!11964 () Bool)

(assert (=> b!337563 (= e!207136 (and e!207137 mapRes!11964))))

(declare-fun condMapEmpty!11964 () Bool)

(declare-datatypes ((V!10363 0))(
  ( (V!10364 (val!3564 Int)) )
))
(declare-datatypes ((ValueCell!3176 0))(
  ( (ValueCellFull!3176 (v!5725 V!10363)) (EmptyCell!3176) )
))
(declare-datatypes ((array!17643 0))(
  ( (array!17644 (arr!8346 (Array (_ BitVec 32) ValueCell!3176)) (size!8698 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17643)

(declare-fun mapDefault!11964 () ValueCell!3176)

