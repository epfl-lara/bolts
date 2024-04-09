; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105322 () Bool)

(assert start!105322)

(declare-fun b_free!26981 () Bool)

(declare-fun b_next!26981 () Bool)

(assert (=> start!105322 (= b_free!26981 (not b_next!26981))))

(declare-fun tp!94452 () Bool)

(declare-fun b_and!44817 () Bool)

(assert (=> start!105322 (= tp!94452 b_and!44817)))

(declare-fun res!836529 () Bool)

(declare-fun e!712891 () Bool)

(assert (=> start!105322 (=> (not res!836529) (not e!712891))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105322 (= res!836529 (validMask!0 mask!1466))))

(assert (=> start!105322 e!712891))

(assert (=> start!105322 true))

(assert (=> start!105322 tp!94452))

(declare-fun tp_is_empty!31883 () Bool)

(assert (=> start!105322 tp_is_empty!31883))

(declare-datatypes ((array!81399 0))(
  ( (array!81400 (arr!39256 (Array (_ BitVec 32) (_ BitVec 64))) (size!39793 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81399)

(declare-fun array_inv!29861 (array!81399) Bool)

(assert (=> start!105322 (array_inv!29861 _keys!1118)))

(declare-datatypes ((V!47875 0))(
  ( (V!47876 (val!16004 Int)) )
))
(declare-datatypes ((ValueCell!15178 0))(
  ( (ValueCellFull!15178 (v!18703 V!47875)) (EmptyCell!15178) )
))
(declare-datatypes ((array!81401 0))(
  ( (array!81402 (arr!39257 (Array (_ BitVec 32) ValueCell!15178)) (size!39794 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81401)

(declare-fun e!712887 () Bool)

(declare-fun array_inv!29862 (array!81401) Bool)

(assert (=> start!105322 (and (array_inv!29862 _values!914) e!712887)))

(declare-fun b!1254483 () Bool)

(declare-fun res!836532 () Bool)

(assert (=> b!1254483 (=> (not res!836532) (not e!712891))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81399 (_ BitVec 32)) Bool)

(assert (=> b!1254483 (= res!836532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49603 () Bool)

(declare-fun mapRes!49603 () Bool)

(assert (=> mapIsEmpty!49603 mapRes!49603))

(declare-fun mapNonEmpty!49603 () Bool)

(declare-fun tp!94451 () Bool)

(declare-fun e!712888 () Bool)

(assert (=> mapNonEmpty!49603 (= mapRes!49603 (and tp!94451 e!712888))))

(declare-fun mapRest!49603 () (Array (_ BitVec 32) ValueCell!15178))

(declare-fun mapKey!49603 () (_ BitVec 32))

(declare-fun mapValue!49603 () ValueCell!15178)

(assert (=> mapNonEmpty!49603 (= (arr!39257 _values!914) (store mapRest!49603 mapKey!49603 mapValue!49603))))

(declare-fun b!1254484 () Bool)

(declare-fun e!712886 () Bool)

(assert (=> b!1254484 (= e!712887 (and e!712886 mapRes!49603))))

(declare-fun condMapEmpty!49603 () Bool)

(declare-fun mapDefault!49603 () ValueCell!15178)

