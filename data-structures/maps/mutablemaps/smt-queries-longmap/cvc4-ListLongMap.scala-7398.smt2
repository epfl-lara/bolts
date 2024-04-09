; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94204 () Bool)

(assert start!94204)

(declare-fun b_free!21569 () Bool)

(declare-fun b_next!21569 () Bool)

(assert (=> start!94204 (= b_free!21569 (not b_next!21569))))

(declare-fun tp!76143 () Bool)

(declare-fun b_and!34337 () Bool)

(assert (=> start!94204 (= tp!76143 b_and!34337)))

(declare-fun b!1064874 () Bool)

(declare-fun e!607028 () Bool)

(declare-fun tp_is_empty!25379 () Bool)

(assert (=> b!1064874 (= e!607028 tp_is_empty!25379)))

(declare-fun b!1064875 () Bool)

(declare-fun e!607032 () Bool)

(declare-fun mapRes!39751 () Bool)

(assert (=> b!1064875 (= e!607032 (and e!607028 mapRes!39751))))

(declare-fun condMapEmpty!39751 () Bool)

(declare-datatypes ((V!38973 0))(
  ( (V!38974 (val!12740 Int)) )
))
(declare-datatypes ((ValueCell!11986 0))(
  ( (ValueCellFull!11986 (v!15353 V!38973)) (EmptyCell!11986) )
))
(declare-datatypes ((array!67720 0))(
  ( (array!67721 (arr!32560 (Array (_ BitVec 32) ValueCell!11986)) (size!33097 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67720)

(declare-fun mapDefault!39751 () ValueCell!11986)

