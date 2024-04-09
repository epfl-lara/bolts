; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94508 () Bool)

(assert start!94508)

(declare-fun b_free!21799 () Bool)

(declare-fun b_next!21799 () Bool)

(assert (=> start!94508 (= b_free!21799 (not b_next!21799))))

(declare-fun tp!76845 () Bool)

(declare-fun b_and!34609 () Bool)

(assert (=> start!94508 (= tp!76845 b_and!34609)))

(declare-fun b!1068237 () Bool)

(declare-fun e!609491 () Bool)

(declare-fun e!609487 () Bool)

(declare-fun mapRes!40108 () Bool)

(assert (=> b!1068237 (= e!609491 (and e!609487 mapRes!40108))))

(declare-fun condMapEmpty!40108 () Bool)

(declare-datatypes ((V!39281 0))(
  ( (V!39282 (val!12855 Int)) )
))
(declare-datatypes ((ValueCell!12101 0))(
  ( (ValueCellFull!12101 (v!15470 V!39281)) (EmptyCell!12101) )
))
(declare-datatypes ((array!68172 0))(
  ( (array!68173 (arr!32782 (Array (_ BitVec 32) ValueCell!12101)) (size!33319 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68172)

(declare-fun mapDefault!40108 () ValueCell!12101)

