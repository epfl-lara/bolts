; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104952 () Bool)

(assert start!104952)

(declare-fun b_free!26707 () Bool)

(declare-fun b_next!26707 () Bool)

(assert (=> start!104952 (= b_free!26707 (not b_next!26707))))

(declare-fun tp!93614 () Bool)

(declare-fun b_and!44493 () Bool)

(assert (=> start!104952 (= tp!93614 b_and!44493)))

(declare-fun b!1250439 () Bool)

(declare-fun e!709929 () Bool)

(declare-fun tp_is_empty!31609 () Bool)

(assert (=> b!1250439 (= e!709929 tp_is_empty!31609)))

(declare-fun b!1250440 () Bool)

(declare-fun res!834157 () Bool)

(declare-fun e!709930 () Bool)

(assert (=> b!1250440 (=> (not res!834157) (not e!709930))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((array!80867 0))(
  ( (array!80868 (arr!38995 (Array (_ BitVec 32) (_ BitVec 64))) (size!39532 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80867)

(declare-datatypes ((V!47511 0))(
  ( (V!47512 (val!15867 Int)) )
))
(declare-datatypes ((ValueCell!15041 0))(
  ( (ValueCellFull!15041 (v!18563 V!47511)) (EmptyCell!15041) )
))
(declare-datatypes ((array!80869 0))(
  ( (array!80870 (arr!38996 (Array (_ BitVec 32) ValueCell!15041)) (size!39533 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80869)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1250440 (= res!834157 (and (= (size!39533 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39532 _keys!1118) (size!39533 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1250441 () Bool)

(declare-fun e!709928 () Bool)

(assert (=> b!1250441 (= e!709928 tp_is_empty!31609)))

(declare-fun b!1250442 () Bool)

(declare-fun res!834159 () Bool)

(assert (=> b!1250442 (=> (not res!834159) (not e!709930))))

(declare-datatypes ((List!27848 0))(
  ( (Nil!27845) (Cons!27844 (h!29053 (_ BitVec 64)) (t!41328 List!27848)) )
))
(declare-fun arrayNoDuplicates!0 (array!80867 (_ BitVec 32) List!27848) Bool)

(assert (=> b!1250442 (= res!834159 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27845))))

(declare-fun res!834156 () Bool)

(assert (=> start!104952 (=> (not res!834156) (not e!709930))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104952 (= res!834156 (validMask!0 mask!1466))))

(assert (=> start!104952 e!709930))

(assert (=> start!104952 true))

(assert (=> start!104952 tp!93614))

(assert (=> start!104952 tp_is_empty!31609))

(declare-fun array_inv!29679 (array!80867) Bool)

(assert (=> start!104952 (array_inv!29679 _keys!1118)))

(declare-fun e!709931 () Bool)

(declare-fun array_inv!29680 (array!80869) Bool)

(assert (=> start!104952 (and (array_inv!29680 _values!914) e!709931)))

(declare-fun mapNonEmpty!49177 () Bool)

(declare-fun mapRes!49177 () Bool)

(declare-fun tp!93615 () Bool)

(assert (=> mapNonEmpty!49177 (= mapRes!49177 (and tp!93615 e!709928))))

(declare-fun mapKey!49177 () (_ BitVec 32))

(declare-fun mapRest!49177 () (Array (_ BitVec 32) ValueCell!15041))

(declare-fun mapValue!49177 () ValueCell!15041)

(assert (=> mapNonEmpty!49177 (= (arr!38996 _values!914) (store mapRest!49177 mapKey!49177 mapValue!49177))))

(declare-fun b!1250443 () Bool)

(declare-fun e!709927 () Bool)

(declare-fun e!709933 () Bool)

(assert (=> b!1250443 (= e!709927 e!709933)))

(declare-fun res!834160 () Bool)

(assert (=> b!1250443 (=> res!834160 e!709933)))

(declare-datatypes ((tuple2!20592 0))(
  ( (tuple2!20593 (_1!10306 (_ BitVec 64)) (_2!10306 V!47511)) )
))
(declare-datatypes ((List!27849 0))(
  ( (Nil!27846) (Cons!27845 (h!29054 tuple2!20592) (t!41329 List!27849)) )
))
(declare-datatypes ((ListLongMap!18477 0))(
  ( (ListLongMap!18478 (toList!9254 List!27849)) )
))
(declare-fun lt!564222 () ListLongMap!18477)

(declare-fun contains!7505 (ListLongMap!18477 (_ BitVec 64)) Bool)

(assert (=> b!1250443 (= res!834160 (contains!7505 lt!564222 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!47511)

(declare-fun minValueBefore!43 () V!47511)

(declare-fun getCurrentListMap!4471 (array!80867 array!80869 (_ BitVec 32) (_ BitVec 32) V!47511 V!47511 (_ BitVec 32) Int) ListLongMap!18477)

(assert (=> b!1250443 (= lt!564222 (getCurrentListMap!4471 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250444 () Bool)

(assert (=> b!1250444 (= e!709931 (and e!709929 mapRes!49177))))

(declare-fun condMapEmpty!49177 () Bool)

(declare-fun mapDefault!49177 () ValueCell!15041)

