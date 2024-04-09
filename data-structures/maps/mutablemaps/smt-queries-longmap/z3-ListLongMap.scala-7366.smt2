; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93952 () Bool)

(assert start!93952)

(declare-fun b_free!21375 () Bool)

(declare-fun b_next!21375 () Bool)

(assert (=> start!93952 (= b_free!21375 (not b_next!21375))))

(declare-fun tp!75551 () Bool)

(declare-fun b_and!34115 () Bool)

(assert (=> start!93952 (= tp!75551 b_and!34115)))

(declare-fun mapIsEmpty!39451 () Bool)

(declare-fun mapRes!39451 () Bool)

(assert (=> mapIsEmpty!39451 mapRes!39451))

(declare-fun b!1062089 () Bool)

(declare-fun res!709289 () Bool)

(declare-fun e!604970 () Bool)

(assert (=> b!1062089 (=> (not res!709289) (not e!604970))))

(declare-datatypes ((array!67350 0))(
  ( (array!67351 (arr!32378 (Array (_ BitVec 32) (_ BitVec 64))) (size!32915 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67350)

(declare-datatypes ((List!22693 0))(
  ( (Nil!22690) (Cons!22689 (h!23898 (_ BitVec 64)) (t!32011 List!22693)) )
))
(declare-fun arrayNoDuplicates!0 (array!67350 (_ BitVec 32) List!22693) Bool)

(assert (=> b!1062089 (= res!709289 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22690))))

(declare-fun b!1062090 () Bool)

(declare-fun e!604968 () Bool)

(declare-fun e!604971 () Bool)

(assert (=> b!1062090 (= e!604968 (and e!604971 mapRes!39451))))

(declare-fun condMapEmpty!39451 () Bool)

(declare-datatypes ((V!38715 0))(
  ( (V!38716 (val!12643 Int)) )
))
(declare-datatypes ((ValueCell!11889 0))(
  ( (ValueCellFull!11889 (v!15254 V!38715)) (EmptyCell!11889) )
))
(declare-datatypes ((array!67352 0))(
  ( (array!67353 (arr!32379 (Array (_ BitVec 32) ValueCell!11889)) (size!32916 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67352)

(declare-fun mapDefault!39451 () ValueCell!11889)

(assert (=> b!1062090 (= condMapEmpty!39451 (= (arr!32379 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11889)) mapDefault!39451)))))

(declare-fun b!1062091 () Bool)

(declare-fun res!709286 () Bool)

(assert (=> b!1062091 (=> (not res!709286) (not e!604970))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1062091 (= res!709286 (and (= (size!32916 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32915 _keys!1163) (size!32916 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1062092 () Bool)

(declare-fun e!604969 () Bool)

(assert (=> b!1062092 (= e!604969 true)))

(declare-datatypes ((tuple2!16080 0))(
  ( (tuple2!16081 (_1!8050 (_ BitVec 64)) (_2!8050 V!38715)) )
))
(declare-datatypes ((List!22694 0))(
  ( (Nil!22691) (Cons!22690 (h!23899 tuple2!16080) (t!32012 List!22694)) )
))
(declare-datatypes ((ListLongMap!14061 0))(
  ( (ListLongMap!14062 (toList!7046 List!22694)) )
))
(declare-fun lt!467911 () ListLongMap!14061)

(declare-fun -!561 (ListLongMap!14061 (_ BitVec 64)) ListLongMap!14061)

(assert (=> b!1062092 (= (-!561 lt!467911 #b0000000000000000000000000000000000000000000000000000000000000000) lt!467911)))

(declare-datatypes ((Unit!34765 0))(
  ( (Unit!34766) )
))
(declare-fun lt!467909 () Unit!34765)

(declare-fun removeNotPresentStillSame!7 (ListLongMap!14061 (_ BitVec 64)) Unit!34765)

(assert (=> b!1062092 (= lt!467909 (removeNotPresentStillSame!7 lt!467911 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!39451 () Bool)

(declare-fun tp!75552 () Bool)

(declare-fun e!604973 () Bool)

(assert (=> mapNonEmpty!39451 (= mapRes!39451 (and tp!75552 e!604973))))

(declare-fun mapKey!39451 () (_ BitVec 32))

(declare-fun mapValue!39451 () ValueCell!11889)

(declare-fun mapRest!39451 () (Array (_ BitVec 32) ValueCell!11889))

(assert (=> mapNonEmpty!39451 (= (arr!32379 _values!955) (store mapRest!39451 mapKey!39451 mapValue!39451))))

(declare-fun b!1062093 () Bool)

(declare-fun tp_is_empty!25185 () Bool)

(assert (=> b!1062093 (= e!604971 tp_is_empty!25185)))

(declare-fun b!1062094 () Bool)

(declare-fun e!604974 () Bool)

(assert (=> b!1062094 (= e!604970 (not e!604974))))

(declare-fun res!709291 () Bool)

(assert (=> b!1062094 (=> res!709291 e!604974)))

(assert (=> b!1062094 (= res!709291 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!467910 () ListLongMap!14061)

(declare-fun lt!467913 () ListLongMap!14061)

(assert (=> b!1062094 (= lt!467910 lt!467913)))

(declare-fun zeroValueBefore!47 () V!38715)

(declare-fun lt!467912 () Unit!34765)

(declare-fun minValue!907 () V!38715)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38715)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!648 (array!67350 array!67352 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38715 V!38715 V!38715 V!38715 (_ BitVec 32) Int) Unit!34765)

(assert (=> b!1062094 (= lt!467912 (lemmaNoChangeToArrayThenSameMapNoExtras!648 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3609 (array!67350 array!67352 (_ BitVec 32) (_ BitVec 32) V!38715 V!38715 (_ BitVec 32) Int) ListLongMap!14061)

(assert (=> b!1062094 (= lt!467913 (getCurrentListMapNoExtraKeys!3609 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1062094 (= lt!467910 (getCurrentListMapNoExtraKeys!3609 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062096 () Bool)

(declare-fun res!709288 () Bool)

(assert (=> b!1062096 (=> (not res!709288) (not e!604970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67350 (_ BitVec 32)) Bool)

(assert (=> b!1062096 (= res!709288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1062097 () Bool)

(assert (=> b!1062097 (= e!604973 tp_is_empty!25185)))

(declare-fun res!709287 () Bool)

(assert (=> start!93952 (=> (not res!709287) (not e!604970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93952 (= res!709287 (validMask!0 mask!1515))))

(assert (=> start!93952 e!604970))

(assert (=> start!93952 true))

(assert (=> start!93952 tp_is_empty!25185))

(declare-fun array_inv!24922 (array!67352) Bool)

(assert (=> start!93952 (and (array_inv!24922 _values!955) e!604968)))

(assert (=> start!93952 tp!75551))

(declare-fun array_inv!24923 (array!67350) Bool)

(assert (=> start!93952 (array_inv!24923 _keys!1163)))

(declare-fun b!1062095 () Bool)

(assert (=> b!1062095 (= e!604974 e!604969)))

(declare-fun res!709290 () Bool)

(assert (=> b!1062095 (=> res!709290 e!604969)))

(declare-fun contains!6242 (ListLongMap!14061 (_ BitVec 64)) Bool)

(assert (=> b!1062095 (= res!709290 (contains!6242 lt!467911 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!3992 (array!67350 array!67352 (_ BitVec 32) (_ BitVec 32) V!38715 V!38715 (_ BitVec 32) Int) ListLongMap!14061)

(assert (=> b!1062095 (= lt!467911 (getCurrentListMap!3992 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!93952 res!709287) b!1062091))

(assert (= (and b!1062091 res!709286) b!1062096))

(assert (= (and b!1062096 res!709288) b!1062089))

(assert (= (and b!1062089 res!709289) b!1062094))

(assert (= (and b!1062094 (not res!709291)) b!1062095))

(assert (= (and b!1062095 (not res!709290)) b!1062092))

(assert (= (and b!1062090 condMapEmpty!39451) mapIsEmpty!39451))

(assert (= (and b!1062090 (not condMapEmpty!39451)) mapNonEmpty!39451))

(get-info :version)

(assert (= (and mapNonEmpty!39451 ((_ is ValueCellFull!11889) mapValue!39451)) b!1062097))

(assert (= (and b!1062090 ((_ is ValueCellFull!11889) mapDefault!39451)) b!1062093))

(assert (= start!93952 b!1062090))

(declare-fun m!980989 () Bool)

(assert (=> mapNonEmpty!39451 m!980989))

(declare-fun m!980991 () Bool)

(assert (=> b!1062096 m!980991))

(declare-fun m!980993 () Bool)

(assert (=> b!1062094 m!980993))

(declare-fun m!980995 () Bool)

(assert (=> b!1062094 m!980995))

(declare-fun m!980997 () Bool)

(assert (=> b!1062094 m!980997))

(declare-fun m!980999 () Bool)

(assert (=> b!1062089 m!980999))

(declare-fun m!981001 () Bool)

(assert (=> b!1062095 m!981001))

(declare-fun m!981003 () Bool)

(assert (=> b!1062095 m!981003))

(declare-fun m!981005 () Bool)

(assert (=> b!1062092 m!981005))

(declare-fun m!981007 () Bool)

(assert (=> b!1062092 m!981007))

(declare-fun m!981009 () Bool)

(assert (=> start!93952 m!981009))

(declare-fun m!981011 () Bool)

(assert (=> start!93952 m!981011))

(declare-fun m!981013 () Bool)

(assert (=> start!93952 m!981013))

(check-sat (not mapNonEmpty!39451) (not b!1062096) (not b!1062095) tp_is_empty!25185 (not b_next!21375) (not b!1062089) b_and!34115 (not b!1062092) (not b!1062094) (not start!93952))
(check-sat b_and!34115 (not b_next!21375))
