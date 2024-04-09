; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93872 () Bool)

(assert start!93872)

(declare-fun b_free!21309 () Bool)

(declare-fun b_next!21309 () Bool)

(assert (=> start!93872 (= b_free!21309 (not b_next!21309))))

(declare-fun tp!75351 () Bool)

(declare-fun b_and!34041 () Bool)

(assert (=> start!93872 (= tp!75351 b_and!34041)))

(declare-fun mapIsEmpty!39349 () Bool)

(declare-fun mapRes!39349 () Bool)

(assert (=> mapIsEmpty!39349 mapRes!39349))

(declare-fun b!1061256 () Bool)

(declare-fun res!708805 () Bool)

(declare-fun e!604366 () Bool)

(assert (=> b!1061256 (=> (not res!708805) (not e!604366))))

(declare-datatypes ((array!67224 0))(
  ( (array!67225 (arr!32316 (Array (_ BitVec 32) (_ BitVec 64))) (size!32853 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67224)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67224 (_ BitVec 32)) Bool)

(assert (=> b!1061256 (= res!708805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1061257 () Bool)

(assert (=> b!1061257 (= e!604366 (not true))))

(declare-datatypes ((V!38627 0))(
  ( (V!38628 (val!12610 Int)) )
))
(declare-datatypes ((tuple2!16034 0))(
  ( (tuple2!16035 (_1!8027 (_ BitVec 64)) (_2!8027 V!38627)) )
))
(declare-datatypes ((List!22646 0))(
  ( (Nil!22643) (Cons!22642 (h!23851 tuple2!16034) (t!31962 List!22646)) )
))
(declare-datatypes ((ListLongMap!14015 0))(
  ( (ListLongMap!14016 (toList!7023 List!22646)) )
))
(declare-fun lt!467519 () ListLongMap!14015)

(declare-fun lt!467517 () ListLongMap!14015)

(assert (=> b!1061257 (= lt!467519 lt!467517)))

(declare-fun zeroValueBefore!47 () V!38627)

(declare-datatypes ((ValueCell!11856 0))(
  ( (ValueCellFull!11856 (v!15221 V!38627)) (EmptyCell!11856) )
))
(declare-datatypes ((array!67226 0))(
  ( (array!67227 (arr!32317 (Array (_ BitVec 32) ValueCell!11856)) (size!32854 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67226)

(declare-fun minValue!907 () V!38627)

(declare-datatypes ((Unit!34721 0))(
  ( (Unit!34722) )
))
(declare-fun lt!467518 () Unit!34721)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38627)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!626 (array!67224 array!67226 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38627 V!38627 V!38627 V!38627 (_ BitVec 32) Int) Unit!34721)

(assert (=> b!1061257 (= lt!467518 (lemmaNoChangeToArrayThenSameMapNoExtras!626 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3587 (array!67224 array!67226 (_ BitVec 32) (_ BitVec 32) V!38627 V!38627 (_ BitVec 32) Int) ListLongMap!14015)

(assert (=> b!1061257 (= lt!467517 (getCurrentListMapNoExtraKeys!3587 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061257 (= lt!467519 (getCurrentListMapNoExtraKeys!3587 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061258 () Bool)

(declare-fun e!604364 () Bool)

(declare-fun tp_is_empty!25119 () Bool)

(assert (=> b!1061258 (= e!604364 tp_is_empty!25119)))

(declare-fun b!1061259 () Bool)

(declare-fun res!708804 () Bool)

(assert (=> b!1061259 (=> (not res!708804) (not e!604366))))

(assert (=> b!1061259 (= res!708804 (and (= (size!32854 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32853 _keys!1163) (size!32854 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061260 () Bool)

(declare-fun res!708806 () Bool)

(assert (=> b!1061260 (=> (not res!708806) (not e!604366))))

(declare-datatypes ((List!22647 0))(
  ( (Nil!22644) (Cons!22643 (h!23852 (_ BitVec 64)) (t!31963 List!22647)) )
))
(declare-fun arrayNoDuplicates!0 (array!67224 (_ BitVec 32) List!22647) Bool)

(assert (=> b!1061260 (= res!708806 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22644))))

(declare-fun res!708807 () Bool)

(assert (=> start!93872 (=> (not res!708807) (not e!604366))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93872 (= res!708807 (validMask!0 mask!1515))))

(assert (=> start!93872 e!604366))

(assert (=> start!93872 true))

(assert (=> start!93872 tp_is_empty!25119))

(declare-fun e!604367 () Bool)

(declare-fun array_inv!24882 (array!67226) Bool)

(assert (=> start!93872 (and (array_inv!24882 _values!955) e!604367)))

(assert (=> start!93872 tp!75351))

(declare-fun array_inv!24883 (array!67224) Bool)

(assert (=> start!93872 (array_inv!24883 _keys!1163)))

(declare-fun b!1061261 () Bool)

(declare-fun e!604363 () Bool)

(assert (=> b!1061261 (= e!604363 tp_is_empty!25119)))

(declare-fun b!1061262 () Bool)

(assert (=> b!1061262 (= e!604367 (and e!604363 mapRes!39349))))

(declare-fun condMapEmpty!39349 () Bool)

(declare-fun mapDefault!39349 () ValueCell!11856)

(assert (=> b!1061262 (= condMapEmpty!39349 (= (arr!32317 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11856)) mapDefault!39349)))))

(declare-fun mapNonEmpty!39349 () Bool)

(declare-fun tp!75350 () Bool)

(assert (=> mapNonEmpty!39349 (= mapRes!39349 (and tp!75350 e!604364))))

(declare-fun mapRest!39349 () (Array (_ BitVec 32) ValueCell!11856))

(declare-fun mapKey!39349 () (_ BitVec 32))

(declare-fun mapValue!39349 () ValueCell!11856)

(assert (=> mapNonEmpty!39349 (= (arr!32317 _values!955) (store mapRest!39349 mapKey!39349 mapValue!39349))))

(assert (= (and start!93872 res!708807) b!1061259))

(assert (= (and b!1061259 res!708804) b!1061256))

(assert (= (and b!1061256 res!708805) b!1061260))

(assert (= (and b!1061260 res!708806) b!1061257))

(assert (= (and b!1061262 condMapEmpty!39349) mapIsEmpty!39349))

(assert (= (and b!1061262 (not condMapEmpty!39349)) mapNonEmpty!39349))

(get-info :version)

(assert (= (and mapNonEmpty!39349 ((_ is ValueCellFull!11856) mapValue!39349)) b!1061258))

(assert (= (and b!1061262 ((_ is ValueCellFull!11856) mapDefault!39349)) b!1061261))

(assert (= start!93872 b!1061262))

(declare-fun m!980261 () Bool)

(assert (=> b!1061256 m!980261))

(declare-fun m!980263 () Bool)

(assert (=> b!1061257 m!980263))

(declare-fun m!980265 () Bool)

(assert (=> b!1061257 m!980265))

(declare-fun m!980267 () Bool)

(assert (=> b!1061257 m!980267))

(declare-fun m!980269 () Bool)

(assert (=> b!1061260 m!980269))

(declare-fun m!980271 () Bool)

(assert (=> start!93872 m!980271))

(declare-fun m!980273 () Bool)

(assert (=> start!93872 m!980273))

(declare-fun m!980275 () Bool)

(assert (=> start!93872 m!980275))

(declare-fun m!980277 () Bool)

(assert (=> mapNonEmpty!39349 m!980277))

(check-sat (not b!1061257) (not mapNonEmpty!39349) (not b!1061260) b_and!34041 (not b!1061256) (not b_next!21309) (not start!93872) tp_is_empty!25119)
(check-sat b_and!34041 (not b_next!21309))
