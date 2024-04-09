; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94356 () Bool)

(assert start!94356)

(declare-fun b_free!21683 () Bool)

(declare-fun b_next!21683 () Bool)

(assert (=> start!94356 (= b_free!21683 (not b_next!21683))))

(declare-fun tp!76490 () Bool)

(declare-fun b_and!34473 () Bool)

(assert (=> start!94356 (= tp!76490 b_and!34473)))

(declare-fun b!1066583 () Bool)

(declare-fun e!608279 () Bool)

(declare-fun tp_is_empty!25493 () Bool)

(assert (=> b!1066583 (= e!608279 tp_is_empty!25493)))

(declare-fun b!1066584 () Bool)

(declare-fun res!711959 () Bool)

(declare-fun e!608276 () Bool)

(assert (=> b!1066584 (=> (not res!711959) (not e!608276))))

(declare-datatypes ((array!67944 0))(
  ( (array!67945 (arr!32670 (Array (_ BitVec 32) (_ BitVec 64))) (size!33207 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67944)

(declare-datatypes ((List!22914 0))(
  ( (Nil!22911) (Cons!22910 (h!24119 (_ BitVec 64)) (t!32242 List!22914)) )
))
(declare-fun arrayNoDuplicates!0 (array!67944 (_ BitVec 32) List!22914) Bool)

(assert (=> b!1066584 (= res!711959 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22911))))

(declare-fun mapIsEmpty!39928 () Bool)

(declare-fun mapRes!39928 () Bool)

(assert (=> mapIsEmpty!39928 mapRes!39928))

(declare-fun b!1066585 () Bool)

(declare-fun e!608278 () Bool)

(assert (=> b!1066585 (= e!608276 (not e!608278))))

(declare-fun res!711957 () Bool)

(assert (=> b!1066585 (=> res!711957 e!608278)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066585 (= res!711957 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39125 0))(
  ( (V!39126 (val!12797 Int)) )
))
(declare-datatypes ((tuple2!16322 0))(
  ( (tuple2!16323 (_1!8171 (_ BitVec 64)) (_2!8171 V!39125)) )
))
(declare-datatypes ((List!22915 0))(
  ( (Nil!22912) (Cons!22911 (h!24120 tuple2!16322) (t!32243 List!22915)) )
))
(declare-datatypes ((ListLongMap!14303 0))(
  ( (ListLongMap!14304 (toList!7167 List!22915)) )
))
(declare-fun lt!470973 () ListLongMap!14303)

(declare-fun lt!470980 () ListLongMap!14303)

(assert (=> b!1066585 (= lt!470973 lt!470980)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39125)

(declare-datatypes ((Unit!34998 0))(
  ( (Unit!34999) )
))
(declare-fun lt!470979 () Unit!34998)

(declare-datatypes ((ValueCell!12043 0))(
  ( (ValueCellFull!12043 (v!15411 V!39125)) (EmptyCell!12043) )
))
(declare-datatypes ((array!67946 0))(
  ( (array!67947 (arr!32671 (Array (_ BitVec 32) ValueCell!12043)) (size!33208 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67946)

(declare-fun minValue!907 () V!39125)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39125)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!753 (array!67944 array!67946 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39125 V!39125 V!39125 V!39125 (_ BitVec 32) Int) Unit!34998)

(assert (=> b!1066585 (= lt!470979 (lemmaNoChangeToArrayThenSameMapNoExtras!753 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3714 (array!67944 array!67946 (_ BitVec 32) (_ BitVec 32) V!39125 V!39125 (_ BitVec 32) Int) ListLongMap!14303)

(assert (=> b!1066585 (= lt!470980 (getCurrentListMapNoExtraKeys!3714 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066585 (= lt!470973 (getCurrentListMapNoExtraKeys!3714 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!711956 () Bool)

(assert (=> start!94356 (=> (not res!711956) (not e!608276))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94356 (= res!711956 (validMask!0 mask!1515))))

(assert (=> start!94356 e!608276))

(assert (=> start!94356 true))

(assert (=> start!94356 tp_is_empty!25493))

(declare-fun e!608280 () Bool)

(declare-fun array_inv!25134 (array!67946) Bool)

(assert (=> start!94356 (and (array_inv!25134 _values!955) e!608280)))

(assert (=> start!94356 tp!76490))

(declare-fun array_inv!25135 (array!67944) Bool)

(assert (=> start!94356 (array_inv!25135 _keys!1163)))

(declare-fun b!1066586 () Bool)

(declare-fun res!711960 () Bool)

(assert (=> b!1066586 (=> (not res!711960) (not e!608276))))

(assert (=> b!1066586 (= res!711960 (and (= (size!33208 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33207 _keys!1163) (size!33208 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1066587 () Bool)

(assert (=> b!1066587 (= e!608278 true)))

(declare-fun lt!470975 () ListLongMap!14303)

(declare-fun lt!470977 () ListLongMap!14303)

(declare-fun -!625 (ListLongMap!14303 (_ BitVec 64)) ListLongMap!14303)

(assert (=> b!1066587 (= lt!470975 (-!625 lt!470977 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470976 () ListLongMap!14303)

(assert (=> b!1066587 (= (-!625 lt!470976 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470973)))

(declare-fun lt!470974 () Unit!34998)

(declare-fun addThenRemoveForNewKeyIsSame!34 (ListLongMap!14303 (_ BitVec 64) V!39125) Unit!34998)

(assert (=> b!1066587 (= lt!470974 (addThenRemoveForNewKeyIsSame!34 lt!470973 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470978 () ListLongMap!14303)

(assert (=> b!1066587 (and (= lt!470977 lt!470976) (= lt!470978 lt!470980))))

(declare-fun +!3116 (ListLongMap!14303 tuple2!16322) ListLongMap!14303)

(assert (=> b!1066587 (= lt!470976 (+!3116 lt!470973 (tuple2!16323 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun getCurrentListMap!4079 (array!67944 array!67946 (_ BitVec 32) (_ BitVec 32) V!39125 V!39125 (_ BitVec 32) Int) ListLongMap!14303)

(assert (=> b!1066587 (= lt!470978 (getCurrentListMap!4079 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066587 (= lt!470977 (getCurrentListMap!4079 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066588 () Bool)

(declare-fun e!608275 () Bool)

(assert (=> b!1066588 (= e!608275 tp_is_empty!25493)))

(declare-fun b!1066589 () Bool)

(assert (=> b!1066589 (= e!608280 (and e!608279 mapRes!39928))))

(declare-fun condMapEmpty!39928 () Bool)

(declare-fun mapDefault!39928 () ValueCell!12043)

