; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73820 () Bool)

(assert start!73820)

(declare-fun b_free!14707 () Bool)

(declare-fun b_next!14707 () Bool)

(assert (=> start!73820 (= b_free!14707 (not b_next!14707))))

(declare-fun tp!51626 () Bool)

(declare-fun b_and!24411 () Bool)

(assert (=> start!73820 (= tp!51626 b_and!24411)))

(declare-fun b!865775 () Bool)

(declare-fun e!482321 () Bool)

(declare-fun e!482317 () Bool)

(declare-fun mapRes!26864 () Bool)

(assert (=> b!865775 (= e!482321 (and e!482317 mapRes!26864))))

(declare-fun condMapEmpty!26864 () Bool)

(declare-datatypes ((V!27505 0))(
  ( (V!27506 (val!8469 Int)) )
))
(declare-datatypes ((ValueCell!7982 0))(
  ( (ValueCellFull!7982 (v!10890 V!27505)) (EmptyCell!7982) )
))
(declare-datatypes ((array!49830 0))(
  ( (array!49831 (arr!23942 (Array (_ BitVec 32) ValueCell!7982)) (size!24383 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49830)

(declare-fun mapDefault!26864 () ValueCell!7982)

