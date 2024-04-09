; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3934 () Bool)

(assert start!3934)

(declare-fun b_free!841 () Bool)

(declare-fun b_next!841 () Bool)

(assert (=> start!3934 (= b_free!841 (not b_next!841))))

(declare-fun tp!3942 () Bool)

(declare-fun b_and!1653 () Bool)

(assert (=> start!3934 (= tp!3942 b_and!1653)))

(declare-fun b!28025 () Bool)

(declare-fun e!18175 () Bool)

(declare-fun e!18173 () Bool)

(declare-fun mapRes!1321 () Bool)

(assert (=> b!28025 (= e!18175 (and e!18173 mapRes!1321))))

(declare-fun condMapEmpty!1321 () Bool)

(declare-datatypes ((V!1419 0))(
  ( (V!1420 (val!624 Int)) )
))
(declare-datatypes ((ValueCell!398 0))(
  ( (ValueCellFull!398 (v!1713 V!1419)) (EmptyCell!398) )
))
(declare-datatypes ((array!1617 0))(
  ( (array!1618 (arr!762 (Array (_ BitVec 32) ValueCell!398)) (size!863 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1617)

(declare-fun mapDefault!1321 () ValueCell!398)

