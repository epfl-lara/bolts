; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94210 () Bool)

(assert start!94210)

(declare-fun b_free!21575 () Bool)

(declare-fun b_next!21575 () Bool)

(assert (=> start!94210 (= b_free!21575 (not b_next!21575))))

(declare-fun tp!76161 () Bool)

(declare-fun b_and!34343 () Bool)

(assert (=> start!94210 (= tp!76161 b_and!34343)))

(declare-fun b!1064946 () Bool)

(declare-fun e!607084 () Bool)

(declare-fun tp_is_empty!25385 () Bool)

(assert (=> b!1064946 (= e!607084 tp_is_empty!25385)))

(declare-fun b!1064947 () Bool)

(declare-fun e!607083 () Bool)

(declare-fun e!607085 () Bool)

(declare-fun mapRes!39760 () Bool)

(assert (=> b!1064947 (= e!607083 (and e!607085 mapRes!39760))))

(declare-fun condMapEmpty!39760 () Bool)

(declare-datatypes ((V!38981 0))(
  ( (V!38982 (val!12743 Int)) )
))
(declare-datatypes ((ValueCell!11989 0))(
  ( (ValueCellFull!11989 (v!15356 V!38981)) (EmptyCell!11989) )
))
(declare-datatypes ((array!67730 0))(
  ( (array!67731 (arr!32565 (Array (_ BitVec 32) ValueCell!11989)) (size!33102 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67730)

(declare-fun mapDefault!39760 () ValueCell!11989)

