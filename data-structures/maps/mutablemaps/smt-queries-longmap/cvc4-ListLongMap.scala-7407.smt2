; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94274 () Bool)

(assert start!94274)

(declare-fun b_free!21623 () Bool)

(declare-fun b_next!21623 () Bool)

(assert (=> start!94274 (= b_free!21623 (not b_next!21623))))

(declare-fun tp!76307 () Bool)

(declare-fun b_and!34401 () Bool)

(assert (=> start!94274 (= tp!76307 b_and!34401)))

(declare-fun b!1065679 () Bool)

(declare-fun e!607620 () Bool)

(declare-fun tp_is_empty!25433 () Bool)

(assert (=> b!1065679 (= e!607620 tp_is_empty!25433)))

(declare-fun b!1065680 () Bool)

(declare-fun res!711424 () Bool)

(declare-fun e!607619 () Bool)

(assert (=> b!1065680 (=> (not res!711424) (not e!607619))))

(declare-datatypes ((V!39045 0))(
  ( (V!39046 (val!12767 Int)) )
))
(declare-datatypes ((ValueCell!12013 0))(
  ( (ValueCellFull!12013 (v!15380 V!39045)) (EmptyCell!12013) )
))
(declare-datatypes ((array!67824 0))(
  ( (array!67825 (arr!32611 (Array (_ BitVec 32) ValueCell!12013)) (size!33148 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67824)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67826 0))(
  ( (array!67827 (arr!32612 (Array (_ BitVec 32) (_ BitVec 64))) (size!33149 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67826)

(assert (=> b!1065680 (= res!711424 (and (= (size!33148 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33149 _keys!1163) (size!33148 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!711426 () Bool)

(assert (=> start!94274 (=> (not res!711426) (not e!607619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94274 (= res!711426 (validMask!0 mask!1515))))

(assert (=> start!94274 e!607619))

(assert (=> start!94274 true))

(assert (=> start!94274 tp_is_empty!25433))

(declare-fun e!607618 () Bool)

(declare-fun array_inv!25090 (array!67824) Bool)

(assert (=> start!94274 (and (array_inv!25090 _values!955) e!607618)))

(assert (=> start!94274 tp!76307))

(declare-fun array_inv!25091 (array!67826) Bool)

(assert (=> start!94274 (array_inv!25091 _keys!1163)))

(declare-fun b!1065681 () Bool)

(declare-fun e!607616 () Bool)

(assert (=> b!1065681 (= e!607619 (not e!607616))))

(declare-fun res!711428 () Bool)

(assert (=> b!1065681 (=> res!711428 e!607616)))

(assert (=> b!1065681 (= res!711428 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16268 0))(
  ( (tuple2!16269 (_1!8144 (_ BitVec 64)) (_2!8144 V!39045)) )
))
(declare-datatypes ((List!22866 0))(
  ( (Nil!22863) (Cons!22862 (h!24071 tuple2!16268) (t!32192 List!22866)) )
))
(declare-datatypes ((ListLongMap!14249 0))(
  ( (ListLongMap!14250 (toList!7140 List!22866)) )
))
(declare-fun lt!470122 () ListLongMap!14249)

(declare-fun lt!470121 () ListLongMap!14249)

(assert (=> b!1065681 (= lt!470122 lt!470121)))

(declare-fun zeroValueBefore!47 () V!39045)

(declare-datatypes ((Unit!34942 0))(
  ( (Unit!34943) )
))
(declare-fun lt!470119 () Unit!34942)

(declare-fun minValue!907 () V!39045)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39045)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!727 (array!67826 array!67824 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39045 V!39045 V!39045 V!39045 (_ BitVec 32) Int) Unit!34942)

(assert (=> b!1065681 (= lt!470119 (lemmaNoChangeToArrayThenSameMapNoExtras!727 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3688 (array!67826 array!67824 (_ BitVec 32) (_ BitVec 32) V!39045 V!39045 (_ BitVec 32) Int) ListLongMap!14249)

(assert (=> b!1065681 (= lt!470121 (getCurrentListMapNoExtraKeys!3688 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065681 (= lt!470122 (getCurrentListMapNoExtraKeys!3688 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39835 () Bool)

(declare-fun mapRes!39835 () Bool)

(assert (=> mapIsEmpty!39835 mapRes!39835))

(declare-fun b!1065682 () Bool)

(declare-fun e!607617 () Bool)

(assert (=> b!1065682 (= e!607617 tp_is_empty!25433)))

(declare-fun b!1065683 () Bool)

(declare-fun res!711427 () Bool)

(assert (=> b!1065683 (=> (not res!711427) (not e!607619))))

(declare-datatypes ((List!22867 0))(
  ( (Nil!22864) (Cons!22863 (h!24072 (_ BitVec 64)) (t!32193 List!22867)) )
))
(declare-fun arrayNoDuplicates!0 (array!67826 (_ BitVec 32) List!22867) Bool)

(assert (=> b!1065683 (= res!711427 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22864))))

(declare-fun b!1065684 () Bool)

(assert (=> b!1065684 (= e!607618 (and e!607620 mapRes!39835))))

(declare-fun condMapEmpty!39835 () Bool)

(declare-fun mapDefault!39835 () ValueCell!12013)

