; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82926 () Bool)

(assert start!82926)

(declare-fun b_free!19025 () Bool)

(declare-fun b_next!19025 () Bool)

(assert (=> start!82926 (= b_free!19025 (not b_next!19025))))

(declare-fun tp!66205 () Bool)

(declare-fun b_and!30531 () Bool)

(assert (=> start!82926 (= tp!66205 b_and!30531)))

(declare-fun mapNonEmpty!34744 () Bool)

(declare-fun mapRes!34744 () Bool)

(declare-fun tp!66204 () Bool)

(declare-fun e!545148 () Bool)

(assert (=> mapNonEmpty!34744 (= mapRes!34744 (and tp!66204 e!545148))))

(declare-datatypes ((V!34093 0))(
  ( (V!34094 (val!10967 Int)) )
))
(declare-datatypes ((ValueCell!10435 0))(
  ( (ValueCellFull!10435 (v!13525 V!34093)) (EmptyCell!10435) )
))
(declare-fun mapValue!34744 () ValueCell!10435)

(declare-datatypes ((array!59725 0))(
  ( (array!59726 (arr!28727 (Array (_ BitVec 32) ValueCell!10435)) (size!29207 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59725)

(declare-fun mapRest!34744 () (Array (_ BitVec 32) ValueCell!10435))

(declare-fun mapKey!34744 () (_ BitVec 32))

(assert (=> mapNonEmpty!34744 (= (arr!28727 _values!1400) (store mapRest!34744 mapKey!34744 mapValue!34744))))

(declare-fun b!967101 () Bool)

(declare-fun e!545145 () Bool)

(declare-fun e!545146 () Bool)

(assert (=> b!967101 (= e!545145 (and e!545146 mapRes!34744))))

(declare-fun condMapEmpty!34744 () Bool)

(declare-fun mapDefault!34744 () ValueCell!10435)

