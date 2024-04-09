; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93810 () Bool)

(assert start!93810)

(declare-fun b_free!21247 () Bool)

(declare-fun b_next!21247 () Bool)

(assert (=> start!93810 (= b_free!21247 (not b_next!21247))))

(declare-fun tp!75165 () Bool)

(declare-fun b_and!33979 () Bool)

(assert (=> start!93810 (= tp!75165 b_and!33979)))

(declare-fun b!1060605 () Bool)

(declare-fun e!603900 () Bool)

(declare-fun tp_is_empty!25057 () Bool)

(assert (=> b!1060605 (= e!603900 tp_is_empty!25057)))

(declare-fun mapNonEmpty!39256 () Bool)

(declare-fun mapRes!39256 () Bool)

(declare-fun tp!75164 () Bool)

(assert (=> mapNonEmpty!39256 (= mapRes!39256 (and tp!75164 e!603900))))

(declare-datatypes ((V!38545 0))(
  ( (V!38546 (val!12579 Int)) )
))
(declare-datatypes ((ValueCell!11825 0))(
  ( (ValueCellFull!11825 (v!15190 V!38545)) (EmptyCell!11825) )
))
(declare-fun mapRest!39256 () (Array (_ BitVec 32) ValueCell!11825))

(declare-fun mapKey!39256 () (_ BitVec 32))

(declare-fun mapValue!39256 () ValueCell!11825)

(declare-datatypes ((array!67110 0))(
  ( (array!67111 (arr!32259 (Array (_ BitVec 32) ValueCell!11825)) (size!32796 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67110)

(assert (=> mapNonEmpty!39256 (= (arr!32259 _values!955) (store mapRest!39256 mapKey!39256 mapValue!39256))))

(declare-fun b!1060606 () Bool)

(declare-fun e!603902 () Bool)

(declare-fun e!603898 () Bool)

(assert (=> b!1060606 (= e!603902 (and e!603898 mapRes!39256))))

(declare-fun condMapEmpty!39256 () Bool)

(declare-fun mapDefault!39256 () ValueCell!11825)

