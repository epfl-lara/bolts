; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105022 () Bool)

(assert start!105022)

(declare-fun b_free!26755 () Bool)

(declare-fun b_next!26755 () Bool)

(assert (=> start!105022 (= b_free!26755 (not b_next!26755))))

(declare-fun tp!93761 () Bool)

(declare-fun b_and!44551 () Bool)

(assert (=> start!105022 (= tp!93761 b_and!44551)))

(declare-fun mapNonEmpty!49252 () Bool)

(declare-fun mapRes!49252 () Bool)

(declare-fun tp!93762 () Bool)

(declare-fun e!710532 () Bool)

(assert (=> mapNonEmpty!49252 (= mapRes!49252 (and tp!93762 e!710532))))

(declare-datatypes ((V!47575 0))(
  ( (V!47576 (val!15891 Int)) )
))
(declare-datatypes ((ValueCell!15065 0))(
  ( (ValueCellFull!15065 (v!18588 V!47575)) (EmptyCell!15065) )
))
(declare-fun mapValue!49252 () ValueCell!15065)

(declare-fun mapKey!49252 () (_ BitVec 32))

(declare-fun mapRest!49252 () (Array (_ BitVec 32) ValueCell!15065))

(declare-datatypes ((array!80961 0))(
  ( (array!80962 (arr!39041 (Array (_ BitVec 32) ValueCell!15065)) (size!39578 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80961)

(assert (=> mapNonEmpty!49252 (= (arr!39041 _values!914) (store mapRest!49252 mapKey!49252 mapValue!49252))))

(declare-fun b!1251244 () Bool)

(declare-fun e!710535 () Bool)

(declare-fun e!710533 () Bool)

(assert (=> b!1251244 (= e!710535 (and e!710533 mapRes!49252))))

(declare-fun condMapEmpty!49252 () Bool)

(declare-fun mapDefault!49252 () ValueCell!15065)

