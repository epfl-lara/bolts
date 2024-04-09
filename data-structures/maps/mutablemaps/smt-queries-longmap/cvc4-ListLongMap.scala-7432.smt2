; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94482 () Bool)

(assert start!94482)

(declare-fun b_free!21773 () Bool)

(declare-fun b_next!21773 () Bool)

(assert (=> start!94482 (= b_free!21773 (not b_next!21773))))

(declare-fun tp!76767 () Bool)

(declare-fun b_and!34583 () Bool)

(assert (=> start!94482 (= tp!76767 b_and!34583)))

(declare-fun res!712699 () Bool)

(declare-fun e!609219 () Bool)

(assert (=> start!94482 (=> (not res!712699) (not e!609219))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94482 (= res!712699 (validMask!0 mask!1515))))

(assert (=> start!94482 e!609219))

(assert (=> start!94482 true))

(declare-fun tp_is_empty!25583 () Bool)

(assert (=> start!94482 tp_is_empty!25583))

(declare-datatypes ((V!39245 0))(
  ( (V!39246 (val!12842 Int)) )
))
(declare-datatypes ((ValueCell!12088 0))(
  ( (ValueCellFull!12088 (v!15457 V!39245)) (EmptyCell!12088) )
))
(declare-datatypes ((array!68120 0))(
  ( (array!68121 (arr!32756 (Array (_ BitVec 32) ValueCell!12088)) (size!33293 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68120)

(declare-fun e!609217 () Bool)

(declare-fun array_inv!25194 (array!68120) Bool)

(assert (=> start!94482 (and (array_inv!25194 _values!955) e!609217)))

(assert (=> start!94482 tp!76767))

(declare-datatypes ((array!68122 0))(
  ( (array!68123 (arr!32757 (Array (_ BitVec 32) (_ BitVec 64))) (size!33294 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68122)

(declare-fun array_inv!25195 (array!68122) Bool)

(assert (=> start!94482 (array_inv!25195 _keys!1163)))

(declare-fun mapNonEmpty!40069 () Bool)

(declare-fun mapRes!40069 () Bool)

(declare-fun tp!76766 () Bool)

(declare-fun e!609213 () Bool)

(assert (=> mapNonEmpty!40069 (= mapRes!40069 (and tp!76766 e!609213))))

(declare-fun mapRest!40069 () (Array (_ BitVec 32) ValueCell!12088))

(declare-fun mapKey!40069 () (_ BitVec 32))

(declare-fun mapValue!40069 () ValueCell!12088)

(assert (=> mapNonEmpty!40069 (= (arr!32756 _values!955) (store mapRest!40069 mapKey!40069 mapValue!40069))))

(declare-fun b!1067886 () Bool)

(declare-fun res!712701 () Bool)

(assert (=> b!1067886 (=> (not res!712701) (not e!609219))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68122 (_ BitVec 32)) Bool)

(assert (=> b!1067886 (= res!712701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067887 () Bool)

(assert (=> b!1067887 (= e!609213 tp_is_empty!25583)))

(declare-fun b!1067888 () Bool)

(declare-fun e!609216 () Bool)

(assert (=> b!1067888 (= e!609219 (not e!609216))))

(declare-fun res!712702 () Bool)

(assert (=> b!1067888 (=> res!712702 e!609216)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1067888 (= res!712702 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16380 0))(
  ( (tuple2!16381 (_1!8200 (_ BitVec 64)) (_2!8200 V!39245)) )
))
(declare-datatypes ((List!22971 0))(
  ( (Nil!22968) (Cons!22967 (h!24176 tuple2!16380) (t!32303 List!22971)) )
))
(declare-datatypes ((ListLongMap!14361 0))(
  ( (ListLongMap!14362 (toList!7196 List!22971)) )
))
(declare-fun lt!471689 () ListLongMap!14361)

(declare-fun lt!471687 () ListLongMap!14361)

(assert (=> b!1067888 (= lt!471689 lt!471687)))

(declare-fun zeroValueBefore!47 () V!39245)

(declare-fun minValue!907 () V!39245)

(declare-datatypes ((Unit!35058 0))(
  ( (Unit!35059) )
))
(declare-fun lt!471686 () Unit!35058)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39245)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!780 (array!68122 array!68120 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39245 V!39245 V!39245 V!39245 (_ BitVec 32) Int) Unit!35058)

(assert (=> b!1067888 (= lt!471686 (lemmaNoChangeToArrayThenSameMapNoExtras!780 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3741 (array!68122 array!68120 (_ BitVec 32) (_ BitVec 32) V!39245 V!39245 (_ BitVec 32) Int) ListLongMap!14361)

(assert (=> b!1067888 (= lt!471687 (getCurrentListMapNoExtraKeys!3741 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067888 (= lt!471689 (getCurrentListMapNoExtraKeys!3741 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067889 () Bool)

(declare-fun res!712700 () Bool)

(assert (=> b!1067889 (=> (not res!712700) (not e!609219))))

(declare-datatypes ((List!22972 0))(
  ( (Nil!22969) (Cons!22968 (h!24177 (_ BitVec 64)) (t!32304 List!22972)) )
))
(declare-fun arrayNoDuplicates!0 (array!68122 (_ BitVec 32) List!22972) Bool)

(assert (=> b!1067889 (= res!712700 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22969))))

(declare-fun b!1067890 () Bool)

(declare-fun e!609214 () Bool)

(assert (=> b!1067890 (= e!609216 e!609214)))

(declare-fun res!712698 () Bool)

(assert (=> b!1067890 (=> res!712698 e!609214)))

(declare-fun lt!471688 () ListLongMap!14361)

(declare-fun contains!6302 (ListLongMap!14361 (_ BitVec 64)) Bool)

(assert (=> b!1067890 (= res!712698 (contains!6302 lt!471688 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4092 (array!68122 array!68120 (_ BitVec 32) (_ BitVec 32) V!39245 V!39245 (_ BitVec 32) Int) ListLongMap!14361)

(assert (=> b!1067890 (= lt!471688 (getCurrentListMap!4092 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067891 () Bool)

(assert (=> b!1067891 (= e!609214 true)))

(declare-fun -!637 (ListLongMap!14361 (_ BitVec 64)) ListLongMap!14361)

(assert (=> b!1067891 (= (-!637 lt!471688 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471688)))

(declare-fun lt!471685 () Unit!35058)

(declare-fun removeNotPresentStillSame!46 (ListLongMap!14361 (_ BitVec 64)) Unit!35058)

(assert (=> b!1067891 (= lt!471685 (removeNotPresentStillSame!46 lt!471688 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1067892 () Bool)

(declare-fun e!609218 () Bool)

(assert (=> b!1067892 (= e!609217 (and e!609218 mapRes!40069))))

(declare-fun condMapEmpty!40069 () Bool)

(declare-fun mapDefault!40069 () ValueCell!12088)

