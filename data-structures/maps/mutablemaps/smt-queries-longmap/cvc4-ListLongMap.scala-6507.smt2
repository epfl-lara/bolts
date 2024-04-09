; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82914 () Bool)

(assert start!82914)

(declare-fun b_free!19013 () Bool)

(declare-fun b_next!19013 () Bool)

(assert (=> start!82914 (= b_free!19013 (not b_next!19013))))

(declare-fun tp!66169 () Bool)

(declare-fun b_and!30519 () Bool)

(assert (=> start!82914 (= tp!66169 b_and!30519)))

(declare-fun b!966903 () Bool)

(declare-fun e!545058 () Bool)

(declare-fun e!545055 () Bool)

(declare-fun mapRes!34726 () Bool)

(assert (=> b!966903 (= e!545058 (and e!545055 mapRes!34726))))

(declare-fun condMapEmpty!34726 () Bool)

(declare-datatypes ((V!34077 0))(
  ( (V!34078 (val!10961 Int)) )
))
(declare-datatypes ((ValueCell!10429 0))(
  ( (ValueCellFull!10429 (v!13519 V!34077)) (EmptyCell!10429) )
))
(declare-datatypes ((array!59705 0))(
  ( (array!59706 (arr!28717 (Array (_ BitVec 32) ValueCell!10429)) (size!29197 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59705)

(declare-fun mapDefault!34726 () ValueCell!10429)

