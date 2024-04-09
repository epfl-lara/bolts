; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105084 () Bool)

(assert start!105084)

(declare-fun b_free!26795 () Bool)

(declare-fun b_next!26795 () Bool)

(assert (=> start!105084 (= b_free!26795 (not b_next!26795))))

(declare-fun tp!93885 () Bool)

(declare-fun b_and!44601 () Bool)

(assert (=> start!105084 (= tp!93885 b_and!44601)))

(declare-fun mapNonEmpty!49315 () Bool)

(declare-fun mapRes!49315 () Bool)

(declare-fun tp!93884 () Bool)

(declare-fun e!710981 () Bool)

(assert (=> mapNonEmpty!49315 (= mapRes!49315 (and tp!93884 e!710981))))

(declare-fun mapKey!49315 () (_ BitVec 32))

(declare-datatypes ((V!47627 0))(
  ( (V!47628 (val!15911 Int)) )
))
(declare-datatypes ((ValueCell!15085 0))(
  ( (ValueCellFull!15085 (v!18609 V!47627)) (EmptyCell!15085) )
))
(declare-fun mapRest!49315 () (Array (_ BitVec 32) ValueCell!15085))

(declare-datatypes ((array!81037 0))(
  ( (array!81038 (arr!39078 (Array (_ BitVec 32) ValueCell!15085)) (size!39615 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81037)

(declare-fun mapValue!49315 () ValueCell!15085)

(assert (=> mapNonEmpty!49315 (= (arr!39078 _values!914) (store mapRest!49315 mapKey!49315 mapValue!49315))))

(declare-fun b!1251871 () Bool)

(declare-fun res!835000 () Bool)

(declare-fun e!710984 () Bool)

(assert (=> b!1251871 (=> (not res!835000) (not e!710984))))

(declare-datatypes ((array!81039 0))(
  ( (array!81040 (arr!39079 (Array (_ BitVec 32) (_ BitVec 64))) (size!39616 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81039)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81039 (_ BitVec 32)) Bool)

(assert (=> b!1251871 (= res!835000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1251872 () Bool)

(declare-fun e!710985 () Bool)

(declare-fun e!710982 () Bool)

(assert (=> b!1251872 (= e!710985 (and e!710982 mapRes!49315))))

(declare-fun condMapEmpty!49315 () Bool)

(declare-fun mapDefault!49315 () ValueCell!15085)

