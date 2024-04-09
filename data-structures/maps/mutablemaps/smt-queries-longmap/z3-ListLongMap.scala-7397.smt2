; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94196 () Bool)

(assert start!94196)

(declare-fun b_free!21561 () Bool)

(declare-fun b_next!21561 () Bool)

(assert (=> start!94196 (= b_free!21561 (not b_next!21561))))

(declare-fun tp!76118 () Bool)

(declare-fun b_and!34329 () Bool)

(assert (=> start!94196 (= tp!76118 b_and!34329)))

(declare-fun b!1064778 () Bool)

(declare-fun e!606956 () Bool)

(declare-fun e!606957 () Bool)

(declare-fun mapRes!39739 () Bool)

(assert (=> b!1064778 (= e!606956 (and e!606957 mapRes!39739))))

(declare-fun condMapEmpty!39739 () Bool)

(declare-datatypes ((V!38963 0))(
  ( (V!38964 (val!12736 Int)) )
))
(declare-datatypes ((ValueCell!11982 0))(
  ( (ValueCellFull!11982 (v!15349 V!38963)) (EmptyCell!11982) )
))
(declare-datatypes ((array!67704 0))(
  ( (array!67705 (arr!32552 (Array (_ BitVec 32) ValueCell!11982)) (size!33089 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67704)

(declare-fun mapDefault!39739 () ValueCell!11982)

(assert (=> b!1064778 (= condMapEmpty!39739 (= (arr!32552 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11982)) mapDefault!39739)))))

(declare-fun b!1064779 () Bool)

(declare-fun e!606959 () Bool)

(declare-fun tp_is_empty!25371 () Bool)

(assert (=> b!1064779 (= e!606959 tp_is_empty!25371)))

(declare-fun b!1064780 () Bool)

(declare-fun e!606955 () Bool)

(assert (=> b!1064780 (= e!606955 true)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38963)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38963)

(declare-datatypes ((tuple2!16218 0))(
  ( (tuple2!16219 (_1!8119 (_ BitVec 64)) (_2!8119 V!38963)) )
))
(declare-datatypes ((List!22818 0))(
  ( (Nil!22815) (Cons!22814 (h!24023 tuple2!16218) (t!32142 List!22818)) )
))
(declare-datatypes ((ListLongMap!14199 0))(
  ( (ListLongMap!14200 (toList!7115 List!22818)) )
))
(declare-fun lt!469372 () ListLongMap!14199)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67706 0))(
  ( (array!67707 (arr!32553 (Array (_ BitVec 32) (_ BitVec 64))) (size!33090 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67706)

(declare-fun getCurrentListMap!4039 (array!67706 array!67704 (_ BitVec 32) (_ BitVec 32) V!38963 V!38963 (_ BitVec 32) Int) ListLongMap!14199)

(assert (=> b!1064780 (= lt!469372 (getCurrentListMap!4039 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064781 () Bool)

(declare-fun e!606960 () Bool)

(assert (=> b!1064781 (= e!606960 (not e!606955))))

(declare-fun res!710893 () Bool)

(assert (=> b!1064781 (=> res!710893 e!606955)))

(assert (=> b!1064781 (= res!710893 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!469374 () ListLongMap!14199)

(declare-fun lt!469373 () ListLongMap!14199)

(assert (=> b!1064781 (= lt!469374 lt!469373)))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!38963)

(declare-datatypes ((Unit!34891 0))(
  ( (Unit!34892) )
))
(declare-fun lt!469371 () Unit!34891)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!705 (array!67706 array!67704 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38963 V!38963 V!38963 V!38963 (_ BitVec 32) Int) Unit!34891)

(assert (=> b!1064781 (= lt!469371 (lemmaNoChangeToArrayThenSameMapNoExtras!705 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3666 (array!67706 array!67704 (_ BitVec 32) (_ BitVec 32) V!38963 V!38963 (_ BitVec 32) Int) ListLongMap!14199)

(assert (=> b!1064781 (= lt!469373 (getCurrentListMapNoExtraKeys!3666 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064781 (= lt!469374 (getCurrentListMapNoExtraKeys!3666 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39739 () Bool)

(declare-fun tp!76119 () Bool)

(assert (=> mapNonEmpty!39739 (= mapRes!39739 (and tp!76119 e!606959))))

(declare-fun mapRest!39739 () (Array (_ BitVec 32) ValueCell!11982))

(declare-fun mapKey!39739 () (_ BitVec 32))

(declare-fun mapValue!39739 () ValueCell!11982)

(assert (=> mapNonEmpty!39739 (= (arr!32552 _values!955) (store mapRest!39739 mapKey!39739 mapValue!39739))))

(declare-fun res!710894 () Bool)

(assert (=> start!94196 (=> (not res!710894) (not e!606960))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94196 (= res!710894 (validMask!0 mask!1515))))

(assert (=> start!94196 e!606960))

(assert (=> start!94196 true))

(assert (=> start!94196 tp_is_empty!25371))

(declare-fun array_inv!25044 (array!67704) Bool)

(assert (=> start!94196 (and (array_inv!25044 _values!955) e!606956)))

(assert (=> start!94196 tp!76118))

(declare-fun array_inv!25045 (array!67706) Bool)

(assert (=> start!94196 (array_inv!25045 _keys!1163)))

(declare-fun b!1064782 () Bool)

(assert (=> b!1064782 (= e!606957 tp_is_empty!25371)))

(declare-fun mapIsEmpty!39739 () Bool)

(assert (=> mapIsEmpty!39739 mapRes!39739))

(declare-fun b!1064783 () Bool)

(declare-fun res!710896 () Bool)

(assert (=> b!1064783 (=> (not res!710896) (not e!606960))))

(declare-datatypes ((List!22819 0))(
  ( (Nil!22816) (Cons!22815 (h!24024 (_ BitVec 64)) (t!32143 List!22819)) )
))
(declare-fun arrayNoDuplicates!0 (array!67706 (_ BitVec 32) List!22819) Bool)

(assert (=> b!1064783 (= res!710896 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22816))))

(declare-fun b!1064784 () Bool)

(declare-fun res!710892 () Bool)

(assert (=> b!1064784 (=> (not res!710892) (not e!606960))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67706 (_ BitVec 32)) Bool)

(assert (=> b!1064784 (= res!710892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1064785 () Bool)

(declare-fun res!710895 () Bool)

(assert (=> b!1064785 (=> (not res!710895) (not e!606960))))

(assert (=> b!1064785 (= res!710895 (and (= (size!33089 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33090 _keys!1163) (size!33089 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!94196 res!710894) b!1064785))

(assert (= (and b!1064785 res!710895) b!1064784))

(assert (= (and b!1064784 res!710892) b!1064783))

(assert (= (and b!1064783 res!710896) b!1064781))

(assert (= (and b!1064781 (not res!710893)) b!1064780))

(assert (= (and b!1064778 condMapEmpty!39739) mapIsEmpty!39739))

(assert (= (and b!1064778 (not condMapEmpty!39739)) mapNonEmpty!39739))

(get-info :version)

(assert (= (and mapNonEmpty!39739 ((_ is ValueCellFull!11982) mapValue!39739)) b!1064779))

(assert (= (and b!1064778 ((_ is ValueCellFull!11982) mapDefault!39739)) b!1064782))

(assert (= start!94196 b!1064778))

(declare-fun m!983395 () Bool)

(assert (=> b!1064781 m!983395))

(declare-fun m!983397 () Bool)

(assert (=> b!1064781 m!983397))

(declare-fun m!983399 () Bool)

(assert (=> b!1064781 m!983399))

(declare-fun m!983401 () Bool)

(assert (=> mapNonEmpty!39739 m!983401))

(declare-fun m!983403 () Bool)

(assert (=> start!94196 m!983403))

(declare-fun m!983405 () Bool)

(assert (=> start!94196 m!983405))

(declare-fun m!983407 () Bool)

(assert (=> start!94196 m!983407))

(declare-fun m!983409 () Bool)

(assert (=> b!1064780 m!983409))

(declare-fun m!983411 () Bool)

(assert (=> b!1064784 m!983411))

(declare-fun m!983413 () Bool)

(assert (=> b!1064783 m!983413))

(check-sat (not b!1064784) (not b!1064781) (not mapNonEmpty!39739) (not b!1064783) (not b!1064780) b_and!34329 (not b_next!21561) (not start!94196) tp_is_empty!25371)
(check-sat b_and!34329 (not b_next!21561))
