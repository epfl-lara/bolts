; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94188 () Bool)

(assert start!94188)

(declare-fun b_free!21553 () Bool)

(declare-fun b_next!21553 () Bool)

(assert (=> start!94188 (= b_free!21553 (not b_next!21553))))

(declare-fun tp!76094 () Bool)

(declare-fun b_and!34321 () Bool)

(assert (=> start!94188 (= tp!76094 b_and!34321)))

(declare-fun b!1064682 () Bool)

(declare-fun e!606885 () Bool)

(declare-fun e!606884 () Bool)

(declare-fun mapRes!39727 () Bool)

(assert (=> b!1064682 (= e!606885 (and e!606884 mapRes!39727))))

(declare-fun condMapEmpty!39727 () Bool)

(declare-datatypes ((V!38953 0))(
  ( (V!38954 (val!12732 Int)) )
))
(declare-datatypes ((ValueCell!11978 0))(
  ( (ValueCellFull!11978 (v!15345 V!38953)) (EmptyCell!11978) )
))
(declare-datatypes ((array!67690 0))(
  ( (array!67691 (arr!32545 (Array (_ BitVec 32) ValueCell!11978)) (size!33082 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67690)

(declare-fun mapDefault!39727 () ValueCell!11978)

