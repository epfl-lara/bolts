; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105478 () Bool)

(assert start!105478)

(declare-fun b_free!27101 () Bool)

(declare-fun b_next!27101 () Bool)

(assert (=> start!105478 (= b_free!27101 (not b_next!27101))))

(declare-fun tp!94818 () Bool)

(declare-fun b_and!44957 () Bool)

(assert (=> start!105478 (= tp!94818 b_and!44957)))

(declare-fun b!1256182 () Bool)

(declare-fun res!837535 () Bool)

(declare-fun e!714132 () Bool)

(assert (=> b!1256182 (=> (not res!837535) (not e!714132))))

(declare-datatypes ((array!81639 0))(
  ( (array!81640 (arr!39374 (Array (_ BitVec 32) (_ BitVec 64))) (size!39911 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81639)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81639 (_ BitVec 32)) Bool)

(assert (=> b!1256182 (= res!837535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!837533 () Bool)

(assert (=> start!105478 (=> (not res!837533) (not e!714132))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105478 (= res!837533 (validMask!0 mask!1466))))

(assert (=> start!105478 e!714132))

(assert (=> start!105478 true))

(assert (=> start!105478 tp!94818))

(declare-fun tp_is_empty!32003 () Bool)

(assert (=> start!105478 tp_is_empty!32003))

(declare-fun array_inv!29941 (array!81639) Bool)

(assert (=> start!105478 (array_inv!29941 _keys!1118)))

(declare-datatypes ((V!48035 0))(
  ( (V!48036 (val!16064 Int)) )
))
(declare-datatypes ((ValueCell!15238 0))(
  ( (ValueCellFull!15238 (v!18764 V!48035)) (EmptyCell!15238) )
))
(declare-datatypes ((array!81641 0))(
  ( (array!81642 (arr!39375 (Array (_ BitVec 32) ValueCell!15238)) (size!39912 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81641)

(declare-fun e!714131 () Bool)

(declare-fun array_inv!29942 (array!81641) Bool)

(assert (=> start!105478 (and (array_inv!29942 _values!914) e!714131)))

(declare-fun b!1256183 () Bool)

(declare-fun res!837534 () Bool)

(assert (=> b!1256183 (=> (not res!837534) (not e!714132))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1256183 (= res!837534 (and (= (size!39912 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39911 _keys!1118) (size!39912 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1256184 () Bool)

(declare-fun e!714134 () Bool)

(assert (=> b!1256184 (= e!714134 tp_is_empty!32003)))

(declare-fun b!1256185 () Bool)

(declare-fun e!714133 () Bool)

(assert (=> b!1256185 (= e!714133 tp_is_empty!32003)))

(declare-fun mapIsEmpty!49789 () Bool)

(declare-fun mapRes!49789 () Bool)

(assert (=> mapIsEmpty!49789 mapRes!49789))

(declare-fun b!1256186 () Bool)

(declare-fun res!837532 () Bool)

(assert (=> b!1256186 (=> (not res!837532) (not e!714132))))

(declare-datatypes ((List!28137 0))(
  ( (Nil!28134) (Cons!28133 (h!29342 (_ BitVec 64)) (t!41631 List!28137)) )
))
(declare-fun arrayNoDuplicates!0 (array!81639 (_ BitVec 32) List!28137) Bool)

(assert (=> b!1256186 (= res!837532 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28134))))

(declare-fun mapNonEmpty!49789 () Bool)

(declare-fun tp!94817 () Bool)

(assert (=> mapNonEmpty!49789 (= mapRes!49789 (and tp!94817 e!714134))))

(declare-fun mapRest!49789 () (Array (_ BitVec 32) ValueCell!15238))

(declare-fun mapValue!49789 () ValueCell!15238)

(declare-fun mapKey!49789 () (_ BitVec 32))

(assert (=> mapNonEmpty!49789 (= (arr!39375 _values!914) (store mapRest!49789 mapKey!49789 mapValue!49789))))

(declare-fun b!1256187 () Bool)

(declare-fun e!714136 () Bool)

(declare-fun e!714130 () Bool)

(assert (=> b!1256187 (= e!714136 e!714130)))

(declare-fun res!837536 () Bool)

(assert (=> b!1256187 (=> res!837536 e!714130)))

(declare-datatypes ((tuple2!20902 0))(
  ( (tuple2!20903 (_1!10461 (_ BitVec 64)) (_2!10461 V!48035)) )
))
(declare-datatypes ((List!28138 0))(
  ( (Nil!28135) (Cons!28134 (h!29343 tuple2!20902) (t!41632 List!28138)) )
))
(declare-datatypes ((ListLongMap!18787 0))(
  ( (ListLongMap!18788 (toList!9409 List!28138)) )
))
(declare-fun lt!567966 () ListLongMap!18787)

(declare-fun contains!7565 (ListLongMap!18787 (_ BitVec 64)) Bool)

(assert (=> b!1256187 (= res!837536 (contains!7565 lt!567966 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!48035)

(declare-fun minValueBefore!43 () V!48035)

(declare-fun getCurrentListMap!4570 (array!81639 array!81641 (_ BitVec 32) (_ BitVec 32) V!48035 V!48035 (_ BitVec 32) Int) ListLongMap!18787)

(assert (=> b!1256187 (= lt!567966 (getCurrentListMap!4570 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256188 () Bool)

(assert (=> b!1256188 (= e!714131 (and e!714133 mapRes!49789))))

(declare-fun condMapEmpty!49789 () Bool)

(declare-fun mapDefault!49789 () ValueCell!15238)

