; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94800 () Bool)

(assert start!94800)

(declare-fun b_free!22017 () Bool)

(declare-fun b_next!22017 () Bool)

(assert (=> start!94800 (= b_free!22017 (not b_next!22017))))

(declare-fun tp!77510 () Bool)

(declare-fun b_and!34865 () Bool)

(assert (=> start!94800 (= tp!77510 b_and!34865)))

(declare-fun b!1071484 () Bool)

(declare-fun e!611886 () Bool)

(declare-fun e!611884 () Bool)

(assert (=> b!1071484 (= e!611886 (not e!611884))))

(declare-fun res!714867 () Bool)

(assert (=> b!1071484 (=> res!714867 e!611884)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1071484 (= res!714867 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39571 0))(
  ( (V!39572 (val!12964 Int)) )
))
(declare-datatypes ((tuple2!16562 0))(
  ( (tuple2!16563 (_1!8291 (_ BitVec 64)) (_2!8291 V!39571)) )
))
(declare-datatypes ((List!23145 0))(
  ( (Nil!23142) (Cons!23141 (h!24350 tuple2!16562) (t!32485 List!23145)) )
))
(declare-datatypes ((ListLongMap!14543 0))(
  ( (ListLongMap!14544 (toList!7287 List!23145)) )
))
(declare-fun lt!474202 () ListLongMap!14543)

(declare-fun lt!474198 () ListLongMap!14543)

(assert (=> b!1071484 (= lt!474202 lt!474198)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39571)

(declare-datatypes ((Unit!35235 0))(
  ( (Unit!35236) )
))
(declare-fun lt!474200 () Unit!35235)

(declare-datatypes ((ValueCell!12210 0))(
  ( (ValueCellFull!12210 (v!15581 V!39571)) (EmptyCell!12210) )
))
(declare-datatypes ((array!68584 0))(
  ( (array!68585 (arr!32984 (Array (_ BitVec 32) ValueCell!12210)) (size!33521 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68584)

(declare-fun minValue!907 () V!39571)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39571)

(declare-datatypes ((array!68586 0))(
  ( (array!68587 (arr!32985 (Array (_ BitVec 32) (_ BitVec 64))) (size!33522 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68586)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!859 (array!68586 array!68584 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39571 V!39571 V!39571 V!39571 (_ BitVec 32) Int) Unit!35235)

(assert (=> b!1071484 (= lt!474200 (lemmaNoChangeToArrayThenSameMapNoExtras!859 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3820 (array!68586 array!68584 (_ BitVec 32) (_ BitVec 32) V!39571 V!39571 (_ BitVec 32) Int) ListLongMap!14543)

(assert (=> b!1071484 (= lt!474198 (getCurrentListMapNoExtraKeys!3820 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071484 (= lt!474202 (getCurrentListMapNoExtraKeys!3820 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!474193 () ListLongMap!14543)

(declare-fun e!611882 () Bool)

(declare-fun lt!474197 () tuple2!16562)

(declare-fun b!1071485 () Bool)

(declare-fun +!3143 (ListLongMap!14543 tuple2!16562) ListLongMap!14543)

(assert (=> b!1071485 (= e!611882 (= lt!474193 (+!3143 lt!474198 lt!474197)))))

(declare-fun b!1071486 () Bool)

(declare-fun res!714863 () Bool)

(assert (=> b!1071486 (=> (not res!714863) (not e!611886))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68586 (_ BitVec 32)) Bool)

(assert (=> b!1071486 (= res!714863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1071487 () Bool)

(declare-fun e!611885 () Bool)

(declare-fun e!611887 () Bool)

(declare-fun mapRes!40447 () Bool)

(assert (=> b!1071487 (= e!611885 (and e!611887 mapRes!40447))))

(declare-fun condMapEmpty!40447 () Bool)

(declare-fun mapDefault!40447 () ValueCell!12210)

(assert (=> b!1071487 (= condMapEmpty!40447 (= (arr!32984 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12210)) mapDefault!40447)))))

(declare-fun b!1071488 () Bool)

(declare-fun res!714866 () Bool)

(assert (=> b!1071488 (=> (not res!714866) (not e!611886))))

(declare-datatypes ((List!23146 0))(
  ( (Nil!23143) (Cons!23142 (h!24351 (_ BitVec 64)) (t!32486 List!23146)) )
))
(declare-fun arrayNoDuplicates!0 (array!68586 (_ BitVec 32) List!23146) Bool)

(assert (=> b!1071488 (= res!714866 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23143))))

(declare-fun res!714862 () Bool)

(assert (=> start!94800 (=> (not res!714862) (not e!611886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94800 (= res!714862 (validMask!0 mask!1515))))

(assert (=> start!94800 e!611886))

(assert (=> start!94800 true))

(declare-fun tp_is_empty!25827 () Bool)

(assert (=> start!94800 tp_is_empty!25827))

(declare-fun array_inv!25360 (array!68584) Bool)

(assert (=> start!94800 (and (array_inv!25360 _values!955) e!611885)))

(assert (=> start!94800 tp!77510))

(declare-fun array_inv!25361 (array!68586) Bool)

(assert (=> start!94800 (array_inv!25361 _keys!1163)))

(declare-fun mapNonEmpty!40447 () Bool)

(declare-fun tp!77511 () Bool)

(declare-fun e!611883 () Bool)

(assert (=> mapNonEmpty!40447 (= mapRes!40447 (and tp!77511 e!611883))))

(declare-fun mapValue!40447 () ValueCell!12210)

(declare-fun mapRest!40447 () (Array (_ BitVec 32) ValueCell!12210))

(declare-fun mapKey!40447 () (_ BitVec 32))

(assert (=> mapNonEmpty!40447 (= (arr!32984 _values!955) (store mapRest!40447 mapKey!40447 mapValue!40447))))

(declare-fun b!1071489 () Bool)

(declare-fun res!714865 () Bool)

(assert (=> b!1071489 (=> (not res!714865) (not e!611886))))

(assert (=> b!1071489 (= res!714865 (and (= (size!33521 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33522 _keys!1163) (size!33521 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!40447 () Bool)

(assert (=> mapIsEmpty!40447 mapRes!40447))

(declare-fun b!1071490 () Bool)

(assert (=> b!1071490 (= e!611887 tp_is_empty!25827)))

(declare-fun b!1071491 () Bool)

(assert (=> b!1071491 (= e!611884 true)))

(declare-fun lt!474199 () ListLongMap!14543)

(declare-fun lt!474203 () ListLongMap!14543)

(declare-fun -!679 (ListLongMap!14543 (_ BitVec 64)) ListLongMap!14543)

(assert (=> b!1071491 (= lt!474199 (-!679 lt!474203 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!474195 () ListLongMap!14543)

(declare-fun lt!474196 () ListLongMap!14543)

(assert (=> b!1071491 (= lt!474195 lt!474196)))

(declare-fun lt!474204 () Unit!35235)

(declare-fun addCommutativeForDiffKeys!723 (ListLongMap!14543 (_ BitVec 64) V!39571 (_ BitVec 64) V!39571) Unit!35235)

(assert (=> b!1071491 (= lt!474204 (addCommutativeForDiffKeys!723 lt!474202 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!474194 () ListLongMap!14543)

(assert (=> b!1071491 (= (-!679 lt!474196 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474194)))

(declare-fun lt!474201 () tuple2!16562)

(assert (=> b!1071491 (= lt!474196 (+!3143 lt!474194 lt!474201))))

(declare-fun lt!474192 () Unit!35235)

(declare-fun addThenRemoveForNewKeyIsSame!53 (ListLongMap!14543 (_ BitVec 64) V!39571) Unit!35235)

(assert (=> b!1071491 (= lt!474192 (addThenRemoveForNewKeyIsSame!53 lt!474194 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1071491 (= lt!474194 (+!3143 lt!474202 lt!474197))))

(assert (=> b!1071491 e!611882))

(declare-fun res!714864 () Bool)

(assert (=> b!1071491 (=> (not res!714864) (not e!611882))))

(assert (=> b!1071491 (= res!714864 (= lt!474203 lt!474195))))

(assert (=> b!1071491 (= lt!474195 (+!3143 (+!3143 lt!474202 lt!474201) lt!474197))))

(assert (=> b!1071491 (= lt!474197 (tuple2!16563 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071491 (= lt!474201 (tuple2!16563 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun getCurrentListMap!4151 (array!68586 array!68584 (_ BitVec 32) (_ BitVec 32) V!39571 V!39571 (_ BitVec 32) Int) ListLongMap!14543)

(assert (=> b!1071491 (= lt!474193 (getCurrentListMap!4151 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071491 (= lt!474203 (getCurrentListMap!4151 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071492 () Bool)

(assert (=> b!1071492 (= e!611883 tp_is_empty!25827)))

(assert (= (and start!94800 res!714862) b!1071489))

(assert (= (and b!1071489 res!714865) b!1071486))

(assert (= (and b!1071486 res!714863) b!1071488))

(assert (= (and b!1071488 res!714866) b!1071484))

(assert (= (and b!1071484 (not res!714867)) b!1071491))

(assert (= (and b!1071491 res!714864) b!1071485))

(assert (= (and b!1071487 condMapEmpty!40447) mapIsEmpty!40447))

(assert (= (and b!1071487 (not condMapEmpty!40447)) mapNonEmpty!40447))

(get-info :version)

(assert (= (and mapNonEmpty!40447 ((_ is ValueCellFull!12210) mapValue!40447)) b!1071492))

(assert (= (and b!1071487 ((_ is ValueCellFull!12210) mapDefault!40447)) b!1071490))

(assert (= start!94800 b!1071487))

(declare-fun m!990175 () Bool)

(assert (=> mapNonEmpty!40447 m!990175))

(declare-fun m!990177 () Bool)

(assert (=> b!1071488 m!990177))

(declare-fun m!990179 () Bool)

(assert (=> start!94800 m!990179))

(declare-fun m!990181 () Bool)

(assert (=> start!94800 m!990181))

(declare-fun m!990183 () Bool)

(assert (=> start!94800 m!990183))

(declare-fun m!990185 () Bool)

(assert (=> b!1071491 m!990185))

(declare-fun m!990187 () Bool)

(assert (=> b!1071491 m!990187))

(declare-fun m!990189 () Bool)

(assert (=> b!1071491 m!990189))

(declare-fun m!990191 () Bool)

(assert (=> b!1071491 m!990191))

(declare-fun m!990193 () Bool)

(assert (=> b!1071491 m!990193))

(declare-fun m!990195 () Bool)

(assert (=> b!1071491 m!990195))

(assert (=> b!1071491 m!990189))

(declare-fun m!990197 () Bool)

(assert (=> b!1071491 m!990197))

(declare-fun m!990199 () Bool)

(assert (=> b!1071491 m!990199))

(declare-fun m!990201 () Bool)

(assert (=> b!1071491 m!990201))

(declare-fun m!990203 () Bool)

(assert (=> b!1071491 m!990203))

(declare-fun m!990205 () Bool)

(assert (=> b!1071485 m!990205))

(declare-fun m!990207 () Bool)

(assert (=> b!1071484 m!990207))

(declare-fun m!990209 () Bool)

(assert (=> b!1071484 m!990209))

(declare-fun m!990211 () Bool)

(assert (=> b!1071484 m!990211))

(declare-fun m!990213 () Bool)

(assert (=> b!1071486 m!990213))

(check-sat b_and!34865 (not b!1071484) tp_is_empty!25827 (not b_next!22017) (not b!1071486) (not start!94800) (not b!1071488) (not mapNonEmpty!40447) (not b!1071485) (not b!1071491))
(check-sat b_and!34865 (not b_next!22017))
