; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43486 () Bool)

(assert start!43486)

(declare-fun b_free!12257 () Bool)

(declare-fun b_next!12257 () Bool)

(assert (=> start!43486 (= b_free!12257 (not b_next!12257))))

(declare-fun tp!43054 () Bool)

(declare-fun b_and!21035 () Bool)

(assert (=> start!43486 (= tp!43054 b_and!21035)))

(declare-fun b!481519 () Bool)

(declare-fun e!283317 () Bool)

(declare-fun e!283316 () Bool)

(declare-fun mapRes!22363 () Bool)

(assert (=> b!481519 (= e!283317 (and e!283316 mapRes!22363))))

(declare-fun condMapEmpty!22363 () Bool)

(declare-datatypes ((V!19429 0))(
  ( (V!19430 (val!6932 Int)) )
))
(declare-datatypes ((ValueCell!6523 0))(
  ( (ValueCellFull!6523 (v!9221 V!19429)) (EmptyCell!6523) )
))
(declare-datatypes ((array!31175 0))(
  ( (array!31176 (arr!14987 (Array (_ BitVec 32) ValueCell!6523)) (size!15345 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31175)

(declare-fun mapDefault!22363 () ValueCell!6523)

