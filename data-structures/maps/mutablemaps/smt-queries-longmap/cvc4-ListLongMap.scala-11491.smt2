; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133780 () Bool)

(assert start!133780)

(declare-fun b_free!32111 () Bool)

(declare-fun b_next!32111 () Bool)

(assert (=> start!133780 (= b_free!32111 (not b_next!32111))))

(declare-fun tp!113538 () Bool)

(declare-fun b_and!51691 () Bool)

(assert (=> start!133780 (= tp!113538 b_and!51691)))

(declare-fun b!1563808 () Bool)

(declare-fun e!871603 () Bool)

(declare-fun e!871606 () Bool)

(declare-fun mapRes!59622 () Bool)

(assert (=> b!1563808 (= e!871603 (and e!871606 mapRes!59622))))

(declare-fun condMapEmpty!59622 () Bool)

(declare-datatypes ((V!59981 0))(
  ( (V!59982 (val!19499 Int)) )
))
(declare-datatypes ((ValueCell!18385 0))(
  ( (ValueCellFull!18385 (v!22248 V!59981)) (EmptyCell!18385) )
))
(declare-datatypes ((array!104323 0))(
  ( (array!104324 (arr!50349 (Array (_ BitVec 32) ValueCell!18385)) (size!50900 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104323)

(declare-fun mapDefault!59622 () ValueCell!18385)

