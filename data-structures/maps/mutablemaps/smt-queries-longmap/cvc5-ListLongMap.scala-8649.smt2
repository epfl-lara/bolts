; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105248 () Bool)

(assert start!105248)

(declare-fun b_free!26929 () Bool)

(declare-fun b_next!26929 () Bool)

(assert (=> start!105248 (= b_free!26929 (not b_next!26929))))

(declare-fun tp!94292 () Bool)

(declare-fun b_and!44753 () Bool)

(assert (=> start!105248 (= tp!94292 b_and!44753)))

(declare-fun b!1253675 () Bool)

(declare-fun res!836060 () Bool)

(declare-fun e!712303 () Bool)

(assert (=> b!1253675 (=> (not res!836060) (not e!712303))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81301 0))(
  ( (array!81302 (arr!39208 (Array (_ BitVec 32) (_ BitVec 64))) (size!39745 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81301)

(declare-datatypes ((V!47807 0))(
  ( (V!47808 (val!15978 Int)) )
))
(declare-datatypes ((ValueCell!15152 0))(
  ( (ValueCellFull!15152 (v!18676 V!47807)) (EmptyCell!15152) )
))
(declare-datatypes ((array!81303 0))(
  ( (array!81304 (arr!39209 (Array (_ BitVec 32) ValueCell!15152)) (size!39746 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81303)

(assert (=> b!1253675 (= res!836060 (and (= (size!39746 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39745 _keys!1118) (size!39746 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!836056 () Bool)

(assert (=> start!105248 (=> (not res!836056) (not e!712303))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105248 (= res!836056 (validMask!0 mask!1466))))

(assert (=> start!105248 e!712303))

(assert (=> start!105248 true))

(assert (=> start!105248 tp!94292))

(declare-fun tp_is_empty!31831 () Bool)

(assert (=> start!105248 tp_is_empty!31831))

(declare-fun array_inv!29829 (array!81301) Bool)

(assert (=> start!105248 (array_inv!29829 _keys!1118)))

(declare-fun e!712304 () Bool)

(declare-fun array_inv!29830 (array!81303) Bool)

(assert (=> start!105248 (and (array_inv!29830 _values!914) e!712304)))

(declare-fun mapIsEmpty!49522 () Bool)

(declare-fun mapRes!49522 () Bool)

(assert (=> mapIsEmpty!49522 mapRes!49522))

(declare-fun b!1253676 () Bool)

(declare-fun e!712299 () Bool)

(assert (=> b!1253676 (= e!712304 (and e!712299 mapRes!49522))))

(declare-fun condMapEmpty!49522 () Bool)

(declare-fun mapDefault!49522 () ValueCell!15152)

