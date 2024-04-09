; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94132 () Bool)

(assert start!94132)

(declare-fun b_free!21511 () Bool)

(declare-fun b_next!21511 () Bool)

(assert (=> start!94132 (= b_free!21511 (not b_next!21511))))

(declare-fun tp!75965 () Bool)

(declare-fun b_and!34271 () Bool)

(assert (=> start!94132 (= tp!75965 b_and!34271)))

(declare-fun b!1064109 () Bool)

(declare-fun e!606467 () Bool)

(declare-fun tp_is_empty!25321 () Bool)

(assert (=> b!1064109 (= e!606467 tp_is_empty!25321)))

(declare-fun b!1064110 () Bool)

(declare-fun e!606469 () Bool)

(declare-fun e!606470 () Bool)

(declare-fun mapRes!39661 () Bool)

(assert (=> b!1064110 (= e!606469 (and e!606470 mapRes!39661))))

(declare-fun condMapEmpty!39661 () Bool)

(declare-datatypes ((V!38897 0))(
  ( (V!38898 (val!12711 Int)) )
))
(declare-datatypes ((ValueCell!11957 0))(
  ( (ValueCellFull!11957 (v!15324 V!38897)) (EmptyCell!11957) )
))
(declare-datatypes ((array!67610 0))(
  ( (array!67611 (arr!32506 (Array (_ BitVec 32) ValueCell!11957)) (size!33043 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67610)

(declare-fun mapDefault!39661 () ValueCell!11957)

