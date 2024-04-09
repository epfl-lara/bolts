; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104998 () Bool)

(assert start!104998)

(declare-fun b_free!26731 () Bool)

(declare-fun b_next!26731 () Bool)

(assert (=> start!104998 (= b_free!26731 (not b_next!26731))))

(declare-fun tp!93689 () Bool)

(declare-fun b_and!44527 () Bool)

(assert (=> start!104998 (= tp!93689 b_and!44527)))

(declare-fun b!1250920 () Bool)

(declare-fun res!834433 () Bool)

(declare-fun e!710281 () Bool)

(assert (=> b!1250920 (=> (not res!834433) (not e!710281))))

(declare-datatypes ((array!80913 0))(
  ( (array!80914 (arr!39017 (Array (_ BitVec 32) (_ BitVec 64))) (size!39554 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80913)

(declare-datatypes ((List!27867 0))(
  ( (Nil!27864) (Cons!27863 (h!29072 (_ BitVec 64)) (t!41349 List!27867)) )
))
(declare-fun arrayNoDuplicates!0 (array!80913 (_ BitVec 32) List!27867) Bool)

(assert (=> b!1250920 (= res!834433 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27864))))

(declare-fun b!1250921 () Bool)

(declare-fun e!710282 () Bool)

(declare-fun tp_is_empty!31633 () Bool)

(assert (=> b!1250921 (= e!710282 tp_is_empty!31633)))

(declare-fun b!1250922 () Bool)

(declare-fun e!710283 () Bool)

(assert (=> b!1250922 (= e!710283 true)))

(declare-datatypes ((V!47543 0))(
  ( (V!47544 (val!15879 Int)) )
))
(declare-datatypes ((tuple2!20612 0))(
  ( (tuple2!20613 (_1!10316 (_ BitVec 64)) (_2!10316 V!47543)) )
))
(declare-datatypes ((List!27868 0))(
  ( (Nil!27865) (Cons!27864 (h!29073 tuple2!20612) (t!41350 List!27868)) )
))
(declare-datatypes ((ListLongMap!18497 0))(
  ( (ListLongMap!18498 (toList!9264 List!27868)) )
))
(declare-fun lt!564524 () ListLongMap!18497)

(declare-fun -!2027 (ListLongMap!18497 (_ BitVec 64)) ListLongMap!18497)

(assert (=> b!1250922 (= (-!2027 lt!564524 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564524)))

(declare-datatypes ((Unit!41507 0))(
  ( (Unit!41508) )
))
(declare-fun lt!564523 () Unit!41507)

(declare-fun removeNotPresentStillSame!94 (ListLongMap!18497 (_ BitVec 64)) Unit!41507)

(assert (=> b!1250922 (= lt!564523 (removeNotPresentStillSame!94 lt!564524 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1250923 () Bool)

(declare-fun res!834435 () Bool)

(assert (=> b!1250923 (=> (not res!834435) (not e!710281))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80913 (_ BitVec 32)) Bool)

(assert (=> b!1250923 (= res!834435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1250924 () Bool)

(declare-fun res!834436 () Bool)

(assert (=> b!1250924 (=> (not res!834436) (not e!710281))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15053 0))(
  ( (ValueCellFull!15053 (v!18576 V!47543)) (EmptyCell!15053) )
))
(declare-datatypes ((array!80915 0))(
  ( (array!80916 (arr!39018 (Array (_ BitVec 32) ValueCell!15053)) (size!39555 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80915)

(assert (=> b!1250924 (= res!834436 (and (= (size!39555 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39554 _keys!1118) (size!39555 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!834434 () Bool)

(assert (=> start!104998 (=> (not res!834434) (not e!710281))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104998 (= res!834434 (validMask!0 mask!1466))))

(assert (=> start!104998 e!710281))

(assert (=> start!104998 true))

(assert (=> start!104998 tp!93689))

(assert (=> start!104998 tp_is_empty!31633))

(declare-fun array_inv!29697 (array!80913) Bool)

(assert (=> start!104998 (array_inv!29697 _keys!1118)))

(declare-fun e!710285 () Bool)

(declare-fun array_inv!29698 (array!80915) Bool)

(assert (=> start!104998 (and (array_inv!29698 _values!914) e!710285)))

(declare-fun b!1250925 () Bool)

(declare-fun e!710284 () Bool)

(assert (=> b!1250925 (= e!710284 e!710283)))

(declare-fun res!834437 () Bool)

(assert (=> b!1250925 (=> res!834437 e!710283)))

(declare-fun contains!7515 (ListLongMap!18497 (_ BitVec 64)) Bool)

(assert (=> b!1250925 (= res!834437 (contains!7515 lt!564524 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!47543)

(declare-fun minValueBefore!43 () V!47543)

(declare-fun getCurrentListMap!4480 (array!80913 array!80915 (_ BitVec 32) (_ BitVec 32) V!47543 V!47543 (_ BitVec 32) Int) ListLongMap!18497)

(assert (=> b!1250925 (= lt!564524 (getCurrentListMap!4480 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250926 () Bool)

(declare-fun e!710280 () Bool)

(declare-fun mapRes!49216 () Bool)

(assert (=> b!1250926 (= e!710285 (and e!710280 mapRes!49216))))

(declare-fun condMapEmpty!49216 () Bool)

(declare-fun mapDefault!49216 () ValueCell!15053)

