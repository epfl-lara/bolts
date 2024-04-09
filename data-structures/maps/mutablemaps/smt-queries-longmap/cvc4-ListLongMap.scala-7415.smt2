; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94344 () Bool)

(assert start!94344)

(declare-fun b_free!21671 () Bool)

(declare-fun b_next!21671 () Bool)

(assert (=> start!94344 (= b_free!21671 (not b_next!21671))))

(declare-fun tp!76454 () Bool)

(declare-fun b_and!34461 () Bool)

(assert (=> start!94344 (= tp!76454 b_and!34461)))

(declare-fun b!1066439 () Bool)

(declare-fun e!608170 () Bool)

(declare-fun tp_is_empty!25481 () Bool)

(assert (=> b!1066439 (= e!608170 tp_is_empty!25481)))

(declare-fun b!1066440 () Bool)

(declare-fun e!608169 () Bool)

(declare-fun e!608167 () Bool)

(assert (=> b!1066440 (= e!608169 (not e!608167))))

(declare-fun res!711869 () Bool)

(assert (=> b!1066440 (=> res!711869 e!608167)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066440 (= res!711869 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39109 0))(
  ( (V!39110 (val!12791 Int)) )
))
(declare-datatypes ((tuple2!16310 0))(
  ( (tuple2!16311 (_1!8165 (_ BitVec 64)) (_2!8165 V!39109)) )
))
(declare-datatypes ((List!22903 0))(
  ( (Nil!22900) (Cons!22899 (h!24108 tuple2!16310) (t!32231 List!22903)) )
))
(declare-datatypes ((ListLongMap!14291 0))(
  ( (ListLongMap!14292 (toList!7161 List!22903)) )
))
(declare-fun lt!470832 () ListLongMap!14291)

(declare-fun lt!470833 () ListLongMap!14291)

(assert (=> b!1066440 (= lt!470832 lt!470833)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39109)

(declare-datatypes ((Unit!34986 0))(
  ( (Unit!34987) )
))
(declare-fun lt!470836 () Unit!34986)

(declare-datatypes ((ValueCell!12037 0))(
  ( (ValueCellFull!12037 (v!15405 V!39109)) (EmptyCell!12037) )
))
(declare-datatypes ((array!67920 0))(
  ( (array!67921 (arr!32658 (Array (_ BitVec 32) ValueCell!12037)) (size!33195 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67920)

(declare-fun minValue!907 () V!39109)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39109)

(declare-datatypes ((array!67922 0))(
  ( (array!67923 (arr!32659 (Array (_ BitVec 32) (_ BitVec 64))) (size!33196 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67922)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!747 (array!67922 array!67920 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39109 V!39109 V!39109 V!39109 (_ BitVec 32) Int) Unit!34986)

(assert (=> b!1066440 (= lt!470836 (lemmaNoChangeToArrayThenSameMapNoExtras!747 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3708 (array!67922 array!67920 (_ BitVec 32) (_ BitVec 32) V!39109 V!39109 (_ BitVec 32) Int) ListLongMap!14291)

(assert (=> b!1066440 (= lt!470833 (getCurrentListMapNoExtraKeys!3708 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066440 (= lt!470832 (getCurrentListMapNoExtraKeys!3708 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066441 () Bool)

(declare-fun res!711867 () Bool)

(assert (=> b!1066441 (=> (not res!711867) (not e!608169))))

(declare-datatypes ((List!22904 0))(
  ( (Nil!22901) (Cons!22900 (h!24109 (_ BitVec 64)) (t!32232 List!22904)) )
))
(declare-fun arrayNoDuplicates!0 (array!67922 (_ BitVec 32) List!22904) Bool)

(assert (=> b!1066441 (= res!711867 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22901))))

(declare-fun res!711866 () Bool)

(assert (=> start!94344 (=> (not res!711866) (not e!608169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94344 (= res!711866 (validMask!0 mask!1515))))

(assert (=> start!94344 e!608169))

(assert (=> start!94344 true))

(assert (=> start!94344 tp_is_empty!25481))

(declare-fun e!608172 () Bool)

(declare-fun array_inv!25122 (array!67920) Bool)

(assert (=> start!94344 (and (array_inv!25122 _values!955) e!608172)))

(assert (=> start!94344 tp!76454))

(declare-fun array_inv!25123 (array!67922) Bool)

(assert (=> start!94344 (array_inv!25123 _keys!1163)))

(declare-fun b!1066442 () Bool)

(assert (=> b!1066442 (= e!608167 true)))

(declare-fun lt!470830 () ListLongMap!14291)

(declare-fun lt!470831 () ListLongMap!14291)

(declare-fun -!619 (ListLongMap!14291 (_ BitVec 64)) ListLongMap!14291)

(assert (=> b!1066442 (= lt!470830 (-!619 lt!470831 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470829 () ListLongMap!14291)

(assert (=> b!1066442 (= (-!619 lt!470829 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470832)))

(declare-fun lt!470834 () Unit!34986)

(declare-fun addThenRemoveForNewKeyIsSame!28 (ListLongMap!14291 (_ BitVec 64) V!39109) Unit!34986)

(assert (=> b!1066442 (= lt!470834 (addThenRemoveForNewKeyIsSame!28 lt!470832 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470835 () ListLongMap!14291)

(assert (=> b!1066442 (and (= lt!470831 lt!470829) (= lt!470835 lt!470833))))

(declare-fun +!3110 (ListLongMap!14291 tuple2!16310) ListLongMap!14291)

(assert (=> b!1066442 (= lt!470829 (+!3110 lt!470832 (tuple2!16311 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun getCurrentListMap!4073 (array!67922 array!67920 (_ BitVec 32) (_ BitVec 32) V!39109 V!39109 (_ BitVec 32) Int) ListLongMap!14291)

(assert (=> b!1066442 (= lt!470835 (getCurrentListMap!4073 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066442 (= lt!470831 (getCurrentListMap!4073 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066443 () Bool)

(declare-fun e!608171 () Bool)

(declare-fun mapRes!39910 () Bool)

(assert (=> b!1066443 (= e!608172 (and e!608171 mapRes!39910))))

(declare-fun condMapEmpty!39910 () Bool)

(declare-fun mapDefault!39910 () ValueCell!12037)

