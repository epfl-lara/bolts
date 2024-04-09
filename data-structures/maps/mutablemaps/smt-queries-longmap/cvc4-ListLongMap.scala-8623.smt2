; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105066 () Bool)

(assert start!105066)

(declare-fun b_free!26777 () Bool)

(declare-fun b_next!26777 () Bool)

(assert (=> start!105066 (= b_free!26777 (not b_next!26777))))

(declare-fun tp!93830 () Bool)

(declare-fun b_and!44583 () Bool)

(assert (=> start!105066 (= tp!93830 b_and!44583)))

(declare-fun b!1251682 () Bool)

(declare-fun res!834893 () Bool)

(declare-fun e!710849 () Bool)

(assert (=> b!1251682 (=> (not res!834893) (not e!710849))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81001 0))(
  ( (array!81002 (arr!39060 (Array (_ BitVec 32) (_ BitVec 64))) (size!39597 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81001)

(declare-datatypes ((V!47603 0))(
  ( (V!47604 (val!15902 Int)) )
))
(declare-datatypes ((ValueCell!15076 0))(
  ( (ValueCellFull!15076 (v!18600 V!47603)) (EmptyCell!15076) )
))
(declare-datatypes ((array!81003 0))(
  ( (array!81004 (arr!39061 (Array (_ BitVec 32) ValueCell!15076)) (size!39598 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81003)

(assert (=> b!1251682 (= res!834893 (and (= (size!39598 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39597 _keys!1118) (size!39598 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!49288 () Bool)

(declare-fun mapRes!49288 () Bool)

(assert (=> mapIsEmpty!49288 mapRes!49288))

(declare-fun mapNonEmpty!49288 () Bool)

(declare-fun tp!93831 () Bool)

(declare-fun e!710846 () Bool)

(assert (=> mapNonEmpty!49288 (= mapRes!49288 (and tp!93831 e!710846))))

(declare-fun mapRest!49288 () (Array (_ BitVec 32) ValueCell!15076))

(declare-fun mapKey!49288 () (_ BitVec 32))

(declare-fun mapValue!49288 () ValueCell!15076)

(assert (=> mapNonEmpty!49288 (= (arr!39061 _values!914) (store mapRest!49288 mapKey!49288 mapValue!49288))))

(declare-fun res!834891 () Bool)

(assert (=> start!105066 (=> (not res!834891) (not e!710849))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105066 (= res!834891 (validMask!0 mask!1466))))

(assert (=> start!105066 e!710849))

(assert (=> start!105066 true))

(assert (=> start!105066 tp!93830))

(declare-fun tp_is_empty!31679 () Bool)

(assert (=> start!105066 tp_is_empty!31679))

(declare-fun array_inv!29725 (array!81001) Bool)

(assert (=> start!105066 (array_inv!29725 _keys!1118)))

(declare-fun e!710850 () Bool)

(declare-fun array_inv!29726 (array!81003) Bool)

(assert (=> start!105066 (and (array_inv!29726 _values!914) e!710850)))

(declare-fun b!1251683 () Bool)

(declare-fun res!834894 () Bool)

(assert (=> b!1251683 (=> (not res!834894) (not e!710849))))

(declare-datatypes ((List!27902 0))(
  ( (Nil!27899) (Cons!27898 (h!29107 (_ BitVec 64)) (t!41386 List!27902)) )
))
(declare-fun arrayNoDuplicates!0 (array!81001 (_ BitVec 32) List!27902) Bool)

(assert (=> b!1251683 (= res!834894 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27899))))

(declare-fun b!1251684 () Bool)

(declare-fun res!834892 () Bool)

(assert (=> b!1251684 (=> (not res!834892) (not e!710849))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81001 (_ BitVec 32)) Bool)

(assert (=> b!1251684 (= res!834892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1251685 () Bool)

(declare-fun e!710848 () Bool)

(assert (=> b!1251685 (= e!710848 tp_is_empty!31679)))

(declare-fun b!1251686 () Bool)

(assert (=> b!1251686 (= e!710850 (and e!710848 mapRes!49288))))

(declare-fun condMapEmpty!49288 () Bool)

(declare-fun mapDefault!49288 () ValueCell!15076)

