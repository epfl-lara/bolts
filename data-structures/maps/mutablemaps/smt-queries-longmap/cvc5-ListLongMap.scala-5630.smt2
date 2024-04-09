; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73592 () Bool)

(assert start!73592)

(declare-fun b_free!14479 () Bool)

(declare-fun b_next!14479 () Bool)

(assert (=> start!73592 (= b_free!14479 (not b_next!14479))))

(declare-fun tp!50942 () Bool)

(declare-fun b_and!23955 () Bool)

(assert (=> start!73592 (= tp!50942 b_and!23955)))

(declare-fun b!860140 () Bool)

(declare-fun e!479331 () Bool)

(declare-fun e!479336 () Bool)

(declare-fun mapRes!26522 () Bool)

(assert (=> b!860140 (= e!479331 (and e!479336 mapRes!26522))))

(declare-fun condMapEmpty!26522 () Bool)

(declare-datatypes ((V!27201 0))(
  ( (V!27202 (val!8355 Int)) )
))
(declare-datatypes ((ValueCell!7868 0))(
  ( (ValueCellFull!7868 (v!10776 V!27201)) (EmptyCell!7868) )
))
(declare-datatypes ((array!49388 0))(
  ( (array!49389 (arr!23721 (Array (_ BitVec 32) ValueCell!7868)) (size!24162 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49388)

(declare-fun mapDefault!26522 () ValueCell!7868)

