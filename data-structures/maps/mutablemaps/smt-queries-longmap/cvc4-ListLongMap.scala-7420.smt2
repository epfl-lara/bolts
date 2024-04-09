; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94396 () Bool)

(assert start!94396)

(declare-fun b_free!21701 () Bool)

(declare-fun b_next!21701 () Bool)

(assert (=> start!94396 (= b_free!21701 (not b_next!21701))))

(declare-fun tp!76548 () Bool)

(declare-fun b_and!34503 () Bool)

(assert (=> start!94396 (= tp!76548 b_and!34503)))

(declare-fun b!1066966 () Bool)

(declare-fun e!608539 () Bool)

(declare-fun e!608542 () Bool)

(declare-fun mapRes!39958 () Bool)

(assert (=> b!1066966 (= e!608539 (and e!608542 mapRes!39958))))

(declare-fun condMapEmpty!39958 () Bool)

(declare-datatypes ((V!39149 0))(
  ( (V!39150 (val!12806 Int)) )
))
(declare-datatypes ((ValueCell!12052 0))(
  ( (ValueCellFull!12052 (v!15421 V!39149)) (EmptyCell!12052) )
))
(declare-datatypes ((array!67982 0))(
  ( (array!67983 (arr!32688 (Array (_ BitVec 32) ValueCell!12052)) (size!33225 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67982)

(declare-fun mapDefault!39958 () ValueCell!12052)

