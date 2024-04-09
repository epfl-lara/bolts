; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105010 () Bool)

(assert start!105010)

(declare-fun b_free!26743 () Bool)

(declare-fun b_next!26743 () Bool)

(assert (=> start!105010 (= b_free!26743 (not b_next!26743))))

(declare-fun tp!93726 () Bool)

(declare-fun b_and!44539 () Bool)

(assert (=> start!105010 (= tp!93726 b_and!44539)))

(declare-fun mapIsEmpty!49234 () Bool)

(declare-fun mapRes!49234 () Bool)

(assert (=> mapIsEmpty!49234 mapRes!49234))

(declare-fun b!1251082 () Bool)

(declare-fun e!710409 () Bool)

(declare-fun tp_is_empty!31645 () Bool)

(assert (=> b!1251082 (= e!710409 tp_is_empty!31645)))

(declare-fun b!1251083 () Bool)

(declare-fun res!834540 () Bool)

(declare-fun e!710410 () Bool)

(assert (=> b!1251083 (=> (not res!834540) (not e!710410))))

(declare-datatypes ((array!80937 0))(
  ( (array!80938 (arr!39029 (Array (_ BitVec 32) (_ BitVec 64))) (size!39566 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80937)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80937 (_ BitVec 32)) Bool)

(assert (=> b!1251083 (= res!834540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1251084 () Bool)

(declare-fun res!834542 () Bool)

(assert (=> b!1251084 (=> (not res!834542) (not e!710410))))

(declare-datatypes ((List!27877 0))(
  ( (Nil!27874) (Cons!27873 (h!29082 (_ BitVec 64)) (t!41359 List!27877)) )
))
(declare-fun arrayNoDuplicates!0 (array!80937 (_ BitVec 32) List!27877) Bool)

(assert (=> b!1251084 (= res!834542 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27874))))

(declare-fun b!1251085 () Bool)

(declare-fun e!710408 () Bool)

(declare-fun e!710406 () Bool)

(assert (=> b!1251085 (= e!710408 e!710406)))

(declare-fun res!834541 () Bool)

(assert (=> b!1251085 (=> res!834541 e!710406)))

(declare-datatypes ((V!47559 0))(
  ( (V!47560 (val!15885 Int)) )
))
(declare-datatypes ((tuple2!20624 0))(
  ( (tuple2!20625 (_1!10322 (_ BitVec 64)) (_2!10322 V!47559)) )
))
(declare-datatypes ((List!27878 0))(
  ( (Nil!27875) (Cons!27874 (h!29083 tuple2!20624) (t!41360 List!27878)) )
))
(declare-datatypes ((ListLongMap!18509 0))(
  ( (ListLongMap!18510 (toList!9270 List!27878)) )
))
(declare-fun lt!564615 () ListLongMap!18509)

(declare-fun contains!7521 (ListLongMap!18509 (_ BitVec 64)) Bool)

(assert (=> b!1251085 (= res!834541 (contains!7521 lt!564615 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47559)

(declare-datatypes ((ValueCell!15059 0))(
  ( (ValueCellFull!15059 (v!18582 V!47559)) (EmptyCell!15059) )
))
(declare-datatypes ((array!80939 0))(
  ( (array!80940 (arr!39030 (Array (_ BitVec 32) ValueCell!15059)) (size!39567 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80939)

(declare-fun minValueBefore!43 () V!47559)

(declare-fun getCurrentListMap!4486 (array!80937 array!80939 (_ BitVec 32) (_ BitVec 32) V!47559 V!47559 (_ BitVec 32) Int) ListLongMap!18509)

(assert (=> b!1251085 (= lt!564615 (getCurrentListMap!4486 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49234 () Bool)

(declare-fun tp!93725 () Bool)

(declare-fun e!710411 () Bool)

(assert (=> mapNonEmpty!49234 (= mapRes!49234 (and tp!93725 e!710411))))

(declare-fun mapKey!49234 () (_ BitVec 32))

(declare-fun mapRest!49234 () (Array (_ BitVec 32) ValueCell!15059))

(declare-fun mapValue!49234 () ValueCell!15059)

(assert (=> mapNonEmpty!49234 (= (arr!39030 _values!914) (store mapRest!49234 mapKey!49234 mapValue!49234))))

(declare-fun b!1251086 () Bool)

(declare-fun e!710407 () Bool)

(assert (=> b!1251086 (= e!710407 (and e!710409 mapRes!49234))))

(declare-fun condMapEmpty!49234 () Bool)

(declare-fun mapDefault!49234 () ValueCell!15059)

