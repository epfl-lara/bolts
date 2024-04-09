; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95130 () Bool)

(assert start!95130)

(declare-fun b_free!22191 () Bool)

(declare-fun b_next!22191 () Bool)

(assert (=> start!95130 (= b_free!22191 (not b_next!22191))))

(declare-fun tp!78057 () Bool)

(declare-fun b_and!35129 () Bool)

(assert (=> start!95130 (= tp!78057 b_and!35129)))

(declare-fun res!716765 () Bool)

(declare-fun e!614330 () Bool)

(assert (=> start!95130 (=> (not res!716765) (not e!614330))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95130 (= res!716765 (validMask!0 mask!1515))))

(assert (=> start!95130 e!614330))

(assert (=> start!95130 true))

(declare-fun tp_is_empty!26001 () Bool)

(assert (=> start!95130 tp_is_empty!26001))

(declare-datatypes ((V!39803 0))(
  ( (V!39804 (val!13051 Int)) )
))
(declare-datatypes ((ValueCell!12297 0))(
  ( (ValueCellFull!12297 (v!15675 V!39803)) (EmptyCell!12297) )
))
(declare-datatypes ((array!68934 0))(
  ( (array!68935 (arr!33151 (Array (_ BitVec 32) ValueCell!12297)) (size!33688 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68934)

(declare-fun e!614329 () Bool)

(declare-fun array_inv!25472 (array!68934) Bool)

(assert (=> start!95130 (and (array_inv!25472 _values!955) e!614329)))

(assert (=> start!95130 tp!78057))

(declare-datatypes ((array!68936 0))(
  ( (array!68937 (arr!33152 (Array (_ BitVec 32) (_ BitVec 64))) (size!33689 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68936)

(declare-fun array_inv!25473 (array!68936) Bool)

(assert (=> start!95130 (array_inv!25473 _keys!1163)))

(declare-fun b!1074941 () Bool)

(declare-fun res!716763 () Bool)

(assert (=> b!1074941 (=> (not res!716763) (not e!614330))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68936 (_ BitVec 32)) Bool)

(assert (=> b!1074941 (= res!716763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1074942 () Bool)

(declare-fun res!716764 () Bool)

(assert (=> b!1074942 (=> (not res!716764) (not e!614330))))

(declare-datatypes ((List!23266 0))(
  ( (Nil!23263) (Cons!23262 (h!24471 (_ BitVec 64)) (t!32622 List!23266)) )
))
(declare-fun arrayNoDuplicates!0 (array!68936 (_ BitVec 32) List!23266) Bool)

(assert (=> b!1074942 (= res!716764 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23263))))

(declare-fun b!1074943 () Bool)

(declare-fun e!614333 () Bool)

(assert (=> b!1074943 (= e!614333 tp_is_empty!26001)))

(declare-fun b!1074944 () Bool)

(declare-fun e!614331 () Bool)

(declare-datatypes ((tuple2!16692 0))(
  ( (tuple2!16693 (_1!8356 (_ BitVec 64)) (_2!8356 V!39803)) )
))
(declare-datatypes ((List!23267 0))(
  ( (Nil!23264) (Cons!23263 (h!24472 tuple2!16692) (t!32623 List!23267)) )
))
(declare-datatypes ((ListLongMap!14673 0))(
  ( (ListLongMap!14674 (toList!7352 List!23267)) )
))
(declare-fun lt!477032 () ListLongMap!14673)

(declare-fun lt!477027 () ListLongMap!14673)

(declare-fun -!707 (ListLongMap!14673 (_ BitVec 64)) ListLongMap!14673)

(assert (=> b!1074944 (= e!614331 (= (-!707 lt!477032 #b0000000000000000000000000000000000000000000000000000000000000000) lt!477027))))

(declare-fun lt!477033 () ListLongMap!14673)

(declare-fun lt!477031 () ListLongMap!14673)

(assert (=> b!1074944 (= (-!707 lt!477033 #b0000000000000000000000000000000000000000000000000000000000000000) lt!477031)))

(declare-datatypes ((Unit!35335 0))(
  ( (Unit!35336) )
))
(declare-fun lt!477030 () Unit!35335)

(declare-fun zeroValueBefore!47 () V!39803)

(declare-fun addThenRemoveForNewKeyIsSame!80 (ListLongMap!14673 (_ BitVec 64) V!39803) Unit!35335)

(assert (=> b!1074944 (= lt!477030 (addThenRemoveForNewKeyIsSame!80 lt!477031 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!477029 () ListLongMap!14673)

(assert (=> b!1074944 (and (= lt!477032 lt!477033) (= lt!477027 lt!477029))))

(declare-fun +!3180 (ListLongMap!14673 tuple2!16692) ListLongMap!14673)

(assert (=> b!1074944 (= lt!477033 (+!3180 lt!477031 (tuple2!16693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun minValue!907 () V!39803)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39803)

(declare-fun getCurrentListMap!4190 (array!68936 array!68934 (_ BitVec 32) (_ BitVec 32) V!39803 V!39803 (_ BitVec 32) Int) ListLongMap!14673)

(assert (=> b!1074944 (= lt!477027 (getCurrentListMap!4190 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1074944 (= lt!477032 (getCurrentListMap!4190 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1074945 () Bool)

(assert (=> b!1074945 (= e!614330 (not e!614331))))

(declare-fun res!716766 () Bool)

(assert (=> b!1074945 (=> res!716766 e!614331)))

(assert (=> b!1074945 (= res!716766 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1074945 (= lt!477031 lt!477029)))

(declare-fun lt!477028 () Unit!35335)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!898 (array!68936 array!68934 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39803 V!39803 V!39803 V!39803 (_ BitVec 32) Int) Unit!35335)

(assert (=> b!1074945 (= lt!477028 (lemmaNoChangeToArrayThenSameMapNoExtras!898 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3879 (array!68936 array!68934 (_ BitVec 32) (_ BitVec 32) V!39803 V!39803 (_ BitVec 32) Int) ListLongMap!14673)

(assert (=> b!1074945 (= lt!477029 (getCurrentListMapNoExtraKeys!3879 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1074945 (= lt!477031 (getCurrentListMapNoExtraKeys!3879 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!40732 () Bool)

(declare-fun mapRes!40732 () Bool)

(declare-fun tp!78056 () Bool)

(assert (=> mapNonEmpty!40732 (= mapRes!40732 (and tp!78056 e!614333))))

(declare-fun mapRest!40732 () (Array (_ BitVec 32) ValueCell!12297))

(declare-fun mapValue!40732 () ValueCell!12297)

(declare-fun mapKey!40732 () (_ BitVec 32))

(assert (=> mapNonEmpty!40732 (= (arr!33151 _values!955) (store mapRest!40732 mapKey!40732 mapValue!40732))))

(declare-fun mapIsEmpty!40732 () Bool)

(assert (=> mapIsEmpty!40732 mapRes!40732))

(declare-fun b!1074946 () Bool)

(declare-fun e!614332 () Bool)

(assert (=> b!1074946 (= e!614329 (and e!614332 mapRes!40732))))

(declare-fun condMapEmpty!40732 () Bool)

(declare-fun mapDefault!40732 () ValueCell!12297)

(assert (=> b!1074946 (= condMapEmpty!40732 (= (arr!33151 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12297)) mapDefault!40732)))))

(declare-fun b!1074947 () Bool)

(assert (=> b!1074947 (= e!614332 tp_is_empty!26001)))

(declare-fun b!1074948 () Bool)

(declare-fun res!716762 () Bool)

(assert (=> b!1074948 (=> (not res!716762) (not e!614330))))

(assert (=> b!1074948 (= res!716762 (and (= (size!33688 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33689 _keys!1163) (size!33688 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!95130 res!716765) b!1074948))

(assert (= (and b!1074948 res!716762) b!1074941))

(assert (= (and b!1074941 res!716763) b!1074942))

(assert (= (and b!1074942 res!716764) b!1074945))

(assert (= (and b!1074945 (not res!716766)) b!1074944))

(assert (= (and b!1074946 condMapEmpty!40732) mapIsEmpty!40732))

(assert (= (and b!1074946 (not condMapEmpty!40732)) mapNonEmpty!40732))

(get-info :version)

(assert (= (and mapNonEmpty!40732 ((_ is ValueCellFull!12297) mapValue!40732)) b!1074943))

(assert (= (and b!1074946 ((_ is ValueCellFull!12297) mapDefault!40732)) b!1074947))

(assert (= start!95130 b!1074946))

(declare-fun m!993921 () Bool)

(assert (=> b!1074945 m!993921))

(declare-fun m!993923 () Bool)

(assert (=> b!1074945 m!993923))

(declare-fun m!993925 () Bool)

(assert (=> b!1074945 m!993925))

(declare-fun m!993927 () Bool)

(assert (=> mapNonEmpty!40732 m!993927))

(declare-fun m!993929 () Bool)

(assert (=> b!1074941 m!993929))

(declare-fun m!993931 () Bool)

(assert (=> b!1074944 m!993931))

(declare-fun m!993933 () Bool)

(assert (=> b!1074944 m!993933))

(declare-fun m!993935 () Bool)

(assert (=> b!1074944 m!993935))

(declare-fun m!993937 () Bool)

(assert (=> b!1074944 m!993937))

(declare-fun m!993939 () Bool)

(assert (=> b!1074944 m!993939))

(declare-fun m!993941 () Bool)

(assert (=> b!1074944 m!993941))

(declare-fun m!993943 () Bool)

(assert (=> start!95130 m!993943))

(declare-fun m!993945 () Bool)

(assert (=> start!95130 m!993945))

(declare-fun m!993947 () Bool)

(assert (=> start!95130 m!993947))

(declare-fun m!993949 () Bool)

(assert (=> b!1074942 m!993949))

(check-sat tp_is_empty!26001 (not b!1074945) (not b_next!22191) (not b!1074942) b_and!35129 (not start!95130) (not b!1074941) (not mapNonEmpty!40732) (not b!1074944))
(check-sat b_and!35129 (not b_next!22191))
