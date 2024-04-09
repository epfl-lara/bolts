; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33678 () Bool)

(assert start!33678)

(declare-fun b_free!6905 () Bool)

(declare-fun b_next!6905 () Bool)

(assert (=> start!33678 (= b_free!6905 (not b_next!6905))))

(declare-fun tp!24218 () Bool)

(declare-fun b_and!14103 () Bool)

(assert (=> start!33678 (= tp!24218 b_and!14103)))

(declare-fun b!334234 () Bool)

(declare-fun e!205183 () Bool)

(declare-fun e!205187 () Bool)

(declare-fun mapRes!11682 () Bool)

(assert (=> b!334234 (= e!205183 (and e!205187 mapRes!11682))))

(declare-fun condMapEmpty!11682 () Bool)

(declare-datatypes ((V!10119 0))(
  ( (V!10120 (val!3473 Int)) )
))
(declare-datatypes ((ValueCell!3085 0))(
  ( (ValueCellFull!3085 (v!5631 V!10119)) (EmptyCell!3085) )
))
(declare-datatypes ((array!17303 0))(
  ( (array!17304 (arr!8179 (Array (_ BitVec 32) ValueCell!3085)) (size!8531 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17303)

(declare-fun mapDefault!11682 () ValueCell!3085)

