; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105508 () Bool)

(assert start!105508)

(declare-fun b_free!27109 () Bool)

(declare-fun b_next!27109 () Bool)

(assert (=> start!105508 (= b_free!27109 (not b_next!27109))))

(declare-fun tp!94845 () Bool)

(declare-fun b_and!44975 () Bool)

(assert (=> start!105508 (= tp!94845 b_and!44975)))

(declare-fun b!1256447 () Bool)

(declare-fun res!837668 () Bool)

(declare-fun e!714319 () Bool)

(assert (=> b!1256447 (=> (not res!837668) (not e!714319))))

(declare-datatypes ((array!81657 0))(
  ( (array!81658 (arr!39382 (Array (_ BitVec 32) (_ BitVec 64))) (size!39919 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81657)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81657 (_ BitVec 32)) Bool)

(assert (=> b!1256447 (= res!837668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1256448 () Bool)

(declare-fun e!714316 () Bool)

(declare-fun e!714314 () Bool)

(assert (=> b!1256448 (= e!714316 e!714314)))

(declare-fun res!837667 () Bool)

(assert (=> b!1256448 (=> res!837667 e!714314)))

(declare-datatypes ((V!48047 0))(
  ( (V!48048 (val!16068 Int)) )
))
(declare-datatypes ((tuple2!20908 0))(
  ( (tuple2!20909 (_1!10464 (_ BitVec 64)) (_2!10464 V!48047)) )
))
(declare-datatypes ((List!28142 0))(
  ( (Nil!28139) (Cons!28138 (h!29347 tuple2!20908) (t!41638 List!28142)) )
))
(declare-datatypes ((ListLongMap!18793 0))(
  ( (ListLongMap!18794 (toList!9412 List!28142)) )
))
(declare-fun lt!568149 () ListLongMap!18793)

(declare-fun contains!7569 (ListLongMap!18793 (_ BitVec 64)) Bool)

(assert (=> b!1256448 (= res!837667 (contains!7569 lt!568149 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48047)

(declare-datatypes ((ValueCell!15242 0))(
  ( (ValueCellFull!15242 (v!18769 V!48047)) (EmptyCell!15242) )
))
(declare-datatypes ((array!81659 0))(
  ( (array!81660 (arr!39383 (Array (_ BitVec 32) ValueCell!15242)) (size!39920 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81659)

(declare-fun minValueBefore!43 () V!48047)

(declare-fun getCurrentListMap!4573 (array!81657 array!81659 (_ BitVec 32) (_ BitVec 32) V!48047 V!48047 (_ BitVec 32) Int) ListLongMap!18793)

(assert (=> b!1256448 (= lt!568149 (getCurrentListMap!4573 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49804 () Bool)

(declare-fun mapRes!49804 () Bool)

(assert (=> mapIsEmpty!49804 mapRes!49804))

(declare-fun b!1256449 () Bool)

(declare-fun e!714315 () Bool)

(declare-fun tp_is_empty!32011 () Bool)

(assert (=> b!1256449 (= e!714315 tp_is_empty!32011)))

(declare-fun mapNonEmpty!49804 () Bool)

(declare-fun tp!94844 () Bool)

(declare-fun e!714318 () Bool)

(assert (=> mapNonEmpty!49804 (= mapRes!49804 (and tp!94844 e!714318))))

(declare-fun mapRest!49804 () (Array (_ BitVec 32) ValueCell!15242))

(declare-fun mapKey!49804 () (_ BitVec 32))

(declare-fun mapValue!49804 () ValueCell!15242)

(assert (=> mapNonEmpty!49804 (= (arr!39383 _values!914) (store mapRest!49804 mapKey!49804 mapValue!49804))))

(declare-fun b!1256450 () Bool)

(declare-fun res!837666 () Bool)

(assert (=> b!1256450 (=> (not res!837666) (not e!714319))))

(declare-datatypes ((List!28143 0))(
  ( (Nil!28140) (Cons!28139 (h!29348 (_ BitVec 64)) (t!41639 List!28143)) )
))
(declare-fun arrayNoDuplicates!0 (array!81657 (_ BitVec 32) List!28143) Bool)

(assert (=> b!1256450 (= res!837666 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28140))))

(declare-fun b!1256451 () Bool)

(declare-fun res!837665 () Bool)

(assert (=> b!1256451 (=> (not res!837665) (not e!714319))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1256451 (= res!837665 (and (= (size!39920 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39919 _keys!1118) (size!39920 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!837664 () Bool)

(assert (=> start!105508 (=> (not res!837664) (not e!714319))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105508 (= res!837664 (validMask!0 mask!1466))))

(assert (=> start!105508 e!714319))

(assert (=> start!105508 true))

(assert (=> start!105508 tp!94845))

(assert (=> start!105508 tp_is_empty!32011))

(declare-fun array_inv!29947 (array!81657) Bool)

(assert (=> start!105508 (array_inv!29947 _keys!1118)))

(declare-fun e!714317 () Bool)

(declare-fun array_inv!29948 (array!81659) Bool)

(assert (=> start!105508 (and (array_inv!29948 _values!914) e!714317)))

(declare-fun b!1256452 () Bool)

(assert (=> b!1256452 (= e!714314 true)))

(declare-fun -!2091 (ListLongMap!18793 (_ BitVec 64)) ListLongMap!18793)

(assert (=> b!1256452 (= (-!2091 lt!568149 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568149)))

(declare-datatypes ((Unit!41796 0))(
  ( (Unit!41797) )
))
(declare-fun lt!568150 () Unit!41796)

(declare-fun removeNotPresentStillSame!124 (ListLongMap!18793 (_ BitVec 64)) Unit!41796)

(assert (=> b!1256452 (= lt!568150 (removeNotPresentStillSame!124 lt!568149 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256453 () Bool)

(assert (=> b!1256453 (= e!714318 tp_is_empty!32011)))

(declare-fun b!1256454 () Bool)

(assert (=> b!1256454 (= e!714319 (not e!714316))))

(declare-fun res!837669 () Bool)

(assert (=> b!1256454 (=> res!837669 e!714316)))

(assert (=> b!1256454 (= res!837669 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!568152 () ListLongMap!18793)

(declare-fun lt!568151 () ListLongMap!18793)

(assert (=> b!1256454 (= lt!568152 lt!568151)))

(declare-fun lt!568153 () Unit!41796)

(declare-fun minValueAfter!43 () V!48047)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1085 (array!81657 array!81659 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48047 V!48047 V!48047 V!48047 (_ BitVec 32) Int) Unit!41796)

(assert (=> b!1256454 (= lt!568153 (lemmaNoChangeToArrayThenSameMapNoExtras!1085 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5767 (array!81657 array!81659 (_ BitVec 32) (_ BitVec 32) V!48047 V!48047 (_ BitVec 32) Int) ListLongMap!18793)

(assert (=> b!1256454 (= lt!568151 (getCurrentListMapNoExtraKeys!5767 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256454 (= lt!568152 (getCurrentListMapNoExtraKeys!5767 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256455 () Bool)

(assert (=> b!1256455 (= e!714317 (and e!714315 mapRes!49804))))

(declare-fun condMapEmpty!49804 () Bool)

(declare-fun mapDefault!49804 () ValueCell!15242)

