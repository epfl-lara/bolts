; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105258 () Bool)

(assert start!105258)

(declare-fun b_free!26939 () Bool)

(declare-fun b_next!26939 () Bool)

(assert (=> start!105258 (= b_free!26939 (not b_next!26939))))

(declare-fun tp!94322 () Bool)

(declare-fun b_and!44763 () Bool)

(assert (=> start!105258 (= tp!94322 b_and!44763)))

(declare-fun b!1253803 () Bool)

(declare-fun res!836141 () Bool)

(declare-fun e!712402 () Bool)

(assert (=> b!1253803 (=> (not res!836141) (not e!712402))))

(declare-datatypes ((array!81319 0))(
  ( (array!81320 (arr!39217 (Array (_ BitVec 32) (_ BitVec 64))) (size!39754 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81319)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81319 (_ BitVec 32)) Bool)

(assert (=> b!1253803 (= res!836141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!49537 () Bool)

(declare-fun mapRes!49537 () Bool)

(declare-fun tp!94323 () Bool)

(declare-fun e!712403 () Bool)

(assert (=> mapNonEmpty!49537 (= mapRes!49537 (and tp!94323 e!712403))))

(declare-datatypes ((V!47819 0))(
  ( (V!47820 (val!15983 Int)) )
))
(declare-datatypes ((ValueCell!15157 0))(
  ( (ValueCellFull!15157 (v!18681 V!47819)) (EmptyCell!15157) )
))
(declare-fun mapValue!49537 () ValueCell!15157)

(declare-fun mapKey!49537 () (_ BitVec 32))

(declare-datatypes ((array!81321 0))(
  ( (array!81322 (arr!39218 (Array (_ BitVec 32) ValueCell!15157)) (size!39755 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81321)

(declare-fun mapRest!49537 () (Array (_ BitVec 32) ValueCell!15157))

(assert (=> mapNonEmpty!49537 (= (arr!39218 _values!914) (store mapRest!49537 mapKey!49537 mapValue!49537))))

(declare-fun b!1253804 () Bool)

(declare-fun e!712401 () Bool)

(declare-fun tp_is_empty!31841 () Bool)

(assert (=> b!1253804 (= e!712401 tp_is_empty!31841)))

(declare-fun b!1253805 () Bool)

(declare-fun e!712399 () Bool)

(assert (=> b!1253805 (= e!712399 (bvsle #b00000000000000000000000000000000 (size!39754 _keys!1118)))))

(declare-fun b!1253806 () Bool)

(declare-fun e!712397 () Bool)

(assert (=> b!1253806 (= e!712397 (and e!712401 mapRes!49537))))

(declare-fun condMapEmpty!49537 () Bool)

(declare-fun mapDefault!49537 () ValueCell!15157)

