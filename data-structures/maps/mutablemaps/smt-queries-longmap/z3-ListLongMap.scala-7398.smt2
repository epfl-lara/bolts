; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94202 () Bool)

(assert start!94202)

(declare-fun b_free!21567 () Bool)

(declare-fun b_next!21567 () Bool)

(assert (=> start!94202 (= b_free!21567 (not b_next!21567))))

(declare-fun tp!76137 () Bool)

(declare-fun b_and!34335 () Bool)

(assert (=> start!94202 (= tp!76137 b_and!34335)))

(declare-fun b!1064850 () Bool)

(declare-fun e!607010 () Bool)

(declare-fun tp_is_empty!25377 () Bool)

(assert (=> b!1064850 (= e!607010 tp_is_empty!25377)))

(declare-fun b!1064851 () Bool)

(declare-fun res!710939 () Bool)

(declare-fun e!607011 () Bool)

(assert (=> b!1064851 (=> (not res!710939) (not e!607011))))

(declare-datatypes ((array!67716 0))(
  ( (array!67717 (arr!32558 (Array (_ BitVec 32) (_ BitVec 64))) (size!33095 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67716)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67716 (_ BitVec 32)) Bool)

(assert (=> b!1064851 (= res!710939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!39748 () Bool)

(declare-fun mapRes!39748 () Bool)

(declare-fun tp!76136 () Bool)

(assert (=> mapNonEmpty!39748 (= mapRes!39748 (and tp!76136 e!607010))))

(declare-fun mapKey!39748 () (_ BitVec 32))

(declare-datatypes ((V!38971 0))(
  ( (V!38972 (val!12739 Int)) )
))
(declare-datatypes ((ValueCell!11985 0))(
  ( (ValueCellFull!11985 (v!15352 V!38971)) (EmptyCell!11985) )
))
(declare-fun mapValue!39748 () ValueCell!11985)

(declare-datatypes ((array!67718 0))(
  ( (array!67719 (arr!32559 (Array (_ BitVec 32) ValueCell!11985)) (size!33096 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67718)

(declare-fun mapRest!39748 () (Array (_ BitVec 32) ValueCell!11985))

(assert (=> mapNonEmpty!39748 (= (arr!32559 _values!955) (store mapRest!39748 mapKey!39748 mapValue!39748))))

(declare-fun b!1064852 () Bool)

(declare-fun res!710938 () Bool)

(assert (=> b!1064852 (=> (not res!710938) (not e!607011))))

(declare-datatypes ((List!22824 0))(
  ( (Nil!22821) (Cons!22820 (h!24029 (_ BitVec 64)) (t!32148 List!22824)) )
))
(declare-fun arrayNoDuplicates!0 (array!67716 (_ BitVec 32) List!22824) Bool)

(assert (=> b!1064852 (= res!710938 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22821))))

(declare-fun b!1064853 () Bool)

(declare-fun e!607013 () Bool)

(declare-fun e!607012 () Bool)

(assert (=> b!1064853 (= e!607013 (and e!607012 mapRes!39748))))

(declare-fun condMapEmpty!39748 () Bool)

(declare-fun mapDefault!39748 () ValueCell!11985)

(assert (=> b!1064853 (= condMapEmpty!39748 (= (arr!32559 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11985)) mapDefault!39748)))))

(declare-fun b!1064855 () Bool)

(assert (=> b!1064855 (= e!607012 tp_is_empty!25377)))

(declare-fun b!1064856 () Bool)

(declare-fun e!607014 () Bool)

(assert (=> b!1064856 (= e!607011 (not e!607014))))

(declare-fun res!710940 () Bool)

(assert (=> b!1064856 (=> res!710940 e!607014)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1064856 (= res!710940 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16224 0))(
  ( (tuple2!16225 (_1!8122 (_ BitVec 64)) (_2!8122 V!38971)) )
))
(declare-datatypes ((List!22825 0))(
  ( (Nil!22822) (Cons!22821 (h!24030 tuple2!16224) (t!32149 List!22825)) )
))
(declare-datatypes ((ListLongMap!14205 0))(
  ( (ListLongMap!14206 (toList!7118 List!22825)) )
))
(declare-fun lt!469408 () ListLongMap!14205)

(declare-fun lt!469409 () ListLongMap!14205)

(assert (=> b!1064856 (= lt!469408 lt!469409)))

(declare-fun zeroValueBefore!47 () V!38971)

(declare-fun minValue!907 () V!38971)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((Unit!34897 0))(
  ( (Unit!34898) )
))
(declare-fun lt!469407 () Unit!34897)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38971)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!708 (array!67716 array!67718 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38971 V!38971 V!38971 V!38971 (_ BitVec 32) Int) Unit!34897)

(assert (=> b!1064856 (= lt!469407 (lemmaNoChangeToArrayThenSameMapNoExtras!708 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3669 (array!67716 array!67718 (_ BitVec 32) (_ BitVec 32) V!38971 V!38971 (_ BitVec 32) Int) ListLongMap!14205)

(assert (=> b!1064856 (= lt!469409 (getCurrentListMapNoExtraKeys!3669 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064856 (= lt!469408 (getCurrentListMapNoExtraKeys!3669 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064857 () Bool)

(assert (=> b!1064857 (= e!607014 true)))

(declare-fun lt!469410 () ListLongMap!14205)

(declare-fun getCurrentListMap!4041 (array!67716 array!67718 (_ BitVec 32) (_ BitVec 32) V!38971 V!38971 (_ BitVec 32) Int) ListLongMap!14205)

(assert (=> b!1064857 (= lt!469410 (getCurrentListMap!4041 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39748 () Bool)

(assert (=> mapIsEmpty!39748 mapRes!39748))

(declare-fun b!1064854 () Bool)

(declare-fun res!710941 () Bool)

(assert (=> b!1064854 (=> (not res!710941) (not e!607011))))

(assert (=> b!1064854 (= res!710941 (and (= (size!33096 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33095 _keys!1163) (size!33096 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!710937 () Bool)

(assert (=> start!94202 (=> (not res!710937) (not e!607011))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94202 (= res!710937 (validMask!0 mask!1515))))

(assert (=> start!94202 e!607011))

(assert (=> start!94202 true))

(assert (=> start!94202 tp_is_empty!25377))

(declare-fun array_inv!25048 (array!67718) Bool)

(assert (=> start!94202 (and (array_inv!25048 _values!955) e!607013)))

(assert (=> start!94202 tp!76137))

(declare-fun array_inv!25049 (array!67716) Bool)

(assert (=> start!94202 (array_inv!25049 _keys!1163)))

(assert (= (and start!94202 res!710937) b!1064854))

(assert (= (and b!1064854 res!710941) b!1064851))

(assert (= (and b!1064851 res!710939) b!1064852))

(assert (= (and b!1064852 res!710938) b!1064856))

(assert (= (and b!1064856 (not res!710940)) b!1064857))

(assert (= (and b!1064853 condMapEmpty!39748) mapIsEmpty!39748))

(assert (= (and b!1064853 (not condMapEmpty!39748)) mapNonEmpty!39748))

(get-info :version)

(assert (= (and mapNonEmpty!39748 ((_ is ValueCellFull!11985) mapValue!39748)) b!1064850))

(assert (= (and b!1064853 ((_ is ValueCellFull!11985) mapDefault!39748)) b!1064855))

(assert (= start!94202 b!1064853))

(declare-fun m!983455 () Bool)

(assert (=> b!1064857 m!983455))

(declare-fun m!983457 () Bool)

(assert (=> start!94202 m!983457))

(declare-fun m!983459 () Bool)

(assert (=> start!94202 m!983459))

(declare-fun m!983461 () Bool)

(assert (=> start!94202 m!983461))

(declare-fun m!983463 () Bool)

(assert (=> b!1064851 m!983463))

(declare-fun m!983465 () Bool)

(assert (=> b!1064856 m!983465))

(declare-fun m!983467 () Bool)

(assert (=> b!1064856 m!983467))

(declare-fun m!983469 () Bool)

(assert (=> b!1064856 m!983469))

(declare-fun m!983471 () Bool)

(assert (=> b!1064852 m!983471))

(declare-fun m!983473 () Bool)

(assert (=> mapNonEmpty!39748 m!983473))

(check-sat (not mapNonEmpty!39748) (not b!1064857) b_and!34335 (not start!94202) tp_is_empty!25377 (not b_next!21567) (not b!1064852) (not b!1064851) (not b!1064856))
(check-sat b_and!34335 (not b_next!21567))
