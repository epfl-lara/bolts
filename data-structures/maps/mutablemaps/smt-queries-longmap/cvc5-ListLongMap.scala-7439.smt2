; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94542 () Bool)

(assert start!94542)

(declare-fun b_free!21811 () Bool)

(declare-fun b_next!21811 () Bool)

(assert (=> start!94542 (= b_free!21811 (not b_next!21811))))

(declare-fun tp!76883 () Bool)

(declare-fun b_and!34631 () Bool)

(assert (=> start!94542 (= tp!76883 b_and!34631)))

(declare-fun b!1068556 () Bool)

(declare-fun e!609717 () Bool)

(declare-fun e!609716 () Bool)

(declare-fun mapRes!40129 () Bool)

(assert (=> b!1068556 (= e!609717 (and e!609716 mapRes!40129))))

(declare-fun condMapEmpty!40129 () Bool)

(declare-datatypes ((V!39297 0))(
  ( (V!39298 (val!12861 Int)) )
))
(declare-datatypes ((ValueCell!12107 0))(
  ( (ValueCellFull!12107 (v!15477 V!39297)) (EmptyCell!12107) )
))
(declare-datatypes ((array!68196 0))(
  ( (array!68197 (arr!32793 (Array (_ BitVec 32) ValueCell!12107)) (size!33330 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68196)

(declare-fun mapDefault!40129 () ValueCell!12107)

