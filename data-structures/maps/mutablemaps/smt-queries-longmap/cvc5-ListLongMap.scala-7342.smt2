; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93780 () Bool)

(assert start!93780)

(declare-fun b_free!21229 () Bool)

(declare-fun b_next!21229 () Bool)

(assert (=> start!93780 (= b_free!21229 (not b_next!21229))))

(declare-fun tp!75107 () Bool)

(declare-fun b_and!33957 () Bool)

(assert (=> start!93780 (= tp!75107 b_and!33957)))

(declare-fun b!1060343 () Bool)

(declare-fun e!603719 () Bool)

(declare-fun tp_is_empty!25039 () Bool)

(assert (=> b!1060343 (= e!603719 tp_is_empty!25039)))

(declare-fun b!1060344 () Bool)

(declare-fun e!603715 () Bool)

(declare-fun mapRes!39226 () Bool)

(assert (=> b!1060344 (= e!603715 (and e!603719 mapRes!39226))))

(declare-fun condMapEmpty!39226 () Bool)

(declare-datatypes ((V!38521 0))(
  ( (V!38522 (val!12570 Int)) )
))
(declare-datatypes ((ValueCell!11816 0))(
  ( (ValueCellFull!11816 (v!15181 V!38521)) (EmptyCell!11816) )
))
(declare-datatypes ((array!67076 0))(
  ( (array!67077 (arr!32243 (Array (_ BitVec 32) ValueCell!11816)) (size!32780 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67076)

(declare-fun mapDefault!39226 () ValueCell!11816)

