; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104996 () Bool)

(assert start!104996)

(declare-fun b_free!26729 () Bool)

(declare-fun b_next!26729 () Bool)

(assert (=> start!104996 (= b_free!26729 (not b_next!26729))))

(declare-fun tp!93683 () Bool)

(declare-fun b_and!44525 () Bool)

(assert (=> start!104996 (= tp!93683 b_and!44525)))

(declare-fun b!1250893 () Bool)

(declare-fun res!834417 () Bool)

(declare-fun e!710261 () Bool)

(assert (=> b!1250893 (=> (not res!834417) (not e!710261))))

(declare-datatypes ((array!80909 0))(
  ( (array!80910 (arr!39015 (Array (_ BitVec 32) (_ BitVec 64))) (size!39552 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80909)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80909 (_ BitVec 32)) Bool)

(assert (=> b!1250893 (= res!834417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49213 () Bool)

(declare-fun mapRes!49213 () Bool)

(assert (=> mapIsEmpty!49213 mapRes!49213))

(declare-fun b!1250894 () Bool)

(declare-fun res!834419 () Bool)

(assert (=> b!1250894 (=> (not res!834419) (not e!710261))))

(declare-datatypes ((List!27865 0))(
  ( (Nil!27862) (Cons!27861 (h!29070 (_ BitVec 64)) (t!41347 List!27865)) )
))
(declare-fun arrayNoDuplicates!0 (array!80909 (_ BitVec 32) List!27865) Bool)

(assert (=> b!1250894 (= res!834419 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27862))))

(declare-fun mapNonEmpty!49213 () Bool)

(declare-fun tp!93684 () Bool)

(declare-fun e!710260 () Bool)

(assert (=> mapNonEmpty!49213 (= mapRes!49213 (and tp!93684 e!710260))))

(declare-fun mapKey!49213 () (_ BitVec 32))

(declare-datatypes ((V!47539 0))(
  ( (V!47540 (val!15878 Int)) )
))
(declare-datatypes ((ValueCell!15052 0))(
  ( (ValueCellFull!15052 (v!18575 V!47539)) (EmptyCell!15052) )
))
(declare-datatypes ((array!80911 0))(
  ( (array!80912 (arr!39016 (Array (_ BitVec 32) ValueCell!15052)) (size!39553 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80911)

(declare-fun mapRest!49213 () (Array (_ BitVec 32) ValueCell!15052))

(declare-fun mapValue!49213 () ValueCell!15052)

(assert (=> mapNonEmpty!49213 (= (arr!39016 _values!914) (store mapRest!49213 mapKey!49213 mapValue!49213))))

(declare-fun res!834418 () Bool)

(assert (=> start!104996 (=> (not res!834418) (not e!710261))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104996 (= res!834418 (validMask!0 mask!1466))))

(assert (=> start!104996 e!710261))

(assert (=> start!104996 true))

(assert (=> start!104996 tp!93683))

(declare-fun tp_is_empty!31631 () Bool)

(assert (=> start!104996 tp_is_empty!31631))

(declare-fun array_inv!29695 (array!80909) Bool)

(assert (=> start!104996 (array_inv!29695 _keys!1118)))

(declare-fun e!710263 () Bool)

(declare-fun array_inv!29696 (array!80911) Bool)

(assert (=> start!104996 (and (array_inv!29696 _values!914) e!710263)))

(declare-fun b!1250895 () Bool)

(declare-fun e!710264 () Bool)

(declare-fun e!710262 () Bool)

(assert (=> b!1250895 (= e!710264 e!710262)))

(declare-fun res!834414 () Bool)

(assert (=> b!1250895 (=> res!834414 e!710262)))

(declare-datatypes ((tuple2!20610 0))(
  ( (tuple2!20611 (_1!10315 (_ BitVec 64)) (_2!10315 V!47539)) )
))
(declare-datatypes ((List!27866 0))(
  ( (Nil!27863) (Cons!27862 (h!29071 tuple2!20610) (t!41348 List!27866)) )
))
(declare-datatypes ((ListLongMap!18495 0))(
  ( (ListLongMap!18496 (toList!9263 List!27866)) )
))
(declare-fun lt!564512 () ListLongMap!18495)

(declare-fun contains!7514 (ListLongMap!18495 (_ BitVec 64)) Bool)

(assert (=> b!1250895 (= res!834414 (contains!7514 lt!564512 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47539)

(declare-fun minValueBefore!43 () V!47539)

(declare-fun defaultEntry!922 () Int)

(declare-fun getCurrentListMap!4479 (array!80909 array!80911 (_ BitVec 32) (_ BitVec 32) V!47539 V!47539 (_ BitVec 32) Int) ListLongMap!18495)

(assert (=> b!1250895 (= lt!564512 (getCurrentListMap!4479 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250896 () Bool)

(assert (=> b!1250896 (= e!710262 true)))

(declare-fun -!2026 (ListLongMap!18495 (_ BitVec 64)) ListLongMap!18495)

(assert (=> b!1250896 (= (-!2026 lt!564512 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564512)))

(declare-datatypes ((Unit!41505 0))(
  ( (Unit!41506) )
))
(declare-fun lt!564510 () Unit!41505)

(declare-fun removeNotPresentStillSame!93 (ListLongMap!18495 (_ BitVec 64)) Unit!41505)

(assert (=> b!1250896 (= lt!564510 (removeNotPresentStillSame!93 lt!564512 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1250897 () Bool)

(declare-fun e!710258 () Bool)

(assert (=> b!1250897 (= e!710258 tp_is_empty!31631)))

(declare-fun b!1250898 () Bool)

(declare-fun res!834415 () Bool)

(assert (=> b!1250898 (=> (not res!834415) (not e!710261))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1250898 (= res!834415 (and (= (size!39553 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39552 _keys!1118) (size!39553 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1250899 () Bool)

(assert (=> b!1250899 (= e!710260 tp_is_empty!31631)))

(declare-fun b!1250900 () Bool)

(assert (=> b!1250900 (= e!710263 (and e!710258 mapRes!49213))))

(declare-fun condMapEmpty!49213 () Bool)

(declare-fun mapDefault!49213 () ValueCell!15052)

