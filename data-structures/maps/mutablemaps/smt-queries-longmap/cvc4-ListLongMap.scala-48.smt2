; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!804 () Bool)

(assert start!804)

(declare-fun b_free!197 () Bool)

(declare-fun b_next!197 () Bool)

(assert (=> start!804 (= b_free!197 (not b_next!197))))

(declare-fun tp!821 () Bool)

(declare-fun b_and!343 () Bool)

(assert (=> start!804 (= tp!821 b_and!343)))

(declare-fun b!6012 () Bool)

(declare-fun e!3279 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!6012 (= e!3279 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!6013 () Bool)

(declare-fun e!3281 () Bool)

(declare-fun e!3278 () Bool)

(declare-fun mapRes!383 () Bool)

(assert (=> b!6013 (= e!3281 (and e!3278 mapRes!383))))

(declare-fun condMapEmpty!383 () Bool)

(declare-datatypes ((V!543 0))(
  ( (V!544 (val!143 Int)) )
))
(declare-datatypes ((ValueCell!121 0))(
  ( (ValueCellFull!121 (v!1234 V!543)) (EmptyCell!121) )
))
(declare-datatypes ((array!485 0))(
  ( (array!486 (arr!231 (Array (_ BitVec 32) ValueCell!121)) (size!293 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!485)

(declare-fun mapDefault!383 () ValueCell!121)

