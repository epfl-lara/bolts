; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94114 () Bool)

(assert start!94114)

(declare-fun b_free!21493 () Bool)

(declare-fun b_next!21493 () Bool)

(assert (=> start!94114 (= b_free!21493 (not b_next!21493))))

(declare-fun tp!75911 () Bool)

(declare-fun b_and!34253 () Bool)

(assert (=> start!94114 (= tp!75911 b_and!34253)))

(declare-fun mapNonEmpty!39634 () Bool)

(declare-fun mapRes!39634 () Bool)

(declare-fun tp!75912 () Bool)

(declare-fun e!606331 () Bool)

(assert (=> mapNonEmpty!39634 (= mapRes!39634 (and tp!75912 e!606331))))

(declare-datatypes ((V!38873 0))(
  ( (V!38874 (val!12702 Int)) )
))
(declare-datatypes ((ValueCell!11948 0))(
  ( (ValueCellFull!11948 (v!15315 V!38873)) (EmptyCell!11948) )
))
(declare-fun mapRest!39634 () (Array (_ BitVec 32) ValueCell!11948))

(declare-fun mapValue!39634 () ValueCell!11948)

(declare-datatypes ((array!67576 0))(
  ( (array!67577 (arr!32489 (Array (_ BitVec 32) ValueCell!11948)) (size!33026 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67576)

(declare-fun mapKey!39634 () (_ BitVec 32))

(assert (=> mapNonEmpty!39634 (= (arr!32489 _values!955) (store mapRest!39634 mapKey!39634 mapValue!39634))))

(declare-fun b!1063920 () Bool)

(declare-fun tp_is_empty!25303 () Bool)

(assert (=> b!1063920 (= e!606331 tp_is_empty!25303)))

(declare-fun b!1063921 () Bool)

(declare-fun e!606335 () Bool)

(declare-fun e!606334 () Bool)

(assert (=> b!1063921 (= e!606335 (and e!606334 mapRes!39634))))

(declare-fun condMapEmpty!39634 () Bool)

(declare-fun mapDefault!39634 () ValueCell!11948)

