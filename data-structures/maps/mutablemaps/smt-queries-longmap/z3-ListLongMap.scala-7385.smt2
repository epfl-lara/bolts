; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94110 () Bool)

(assert start!94110)

(declare-fun b_free!21489 () Bool)

(declare-fun b_next!21489 () Bool)

(assert (=> start!94110 (= b_free!21489 (not b_next!21489))))

(declare-fun tp!75900 () Bool)

(declare-fun b_and!34249 () Bool)

(assert (=> start!94110 (= tp!75900 b_and!34249)))

(declare-fun b!1063878 () Bool)

(declare-fun e!606301 () Bool)

(declare-fun tp_is_empty!25299 () Bool)

(assert (=> b!1063878 (= e!606301 tp_is_empty!25299)))

(declare-fun mapNonEmpty!39628 () Bool)

(declare-fun mapRes!39628 () Bool)

(declare-fun tp!75899 () Bool)

(declare-fun e!606305 () Bool)

(assert (=> mapNonEmpty!39628 (= mapRes!39628 (and tp!75899 e!606305))))

(declare-datatypes ((V!38867 0))(
  ( (V!38868 (val!12700 Int)) )
))
(declare-datatypes ((ValueCell!11946 0))(
  ( (ValueCellFull!11946 (v!15313 V!38867)) (EmptyCell!11946) )
))
(declare-fun mapValue!39628 () ValueCell!11946)

(declare-fun mapKey!39628 () (_ BitVec 32))

(declare-fun mapRest!39628 () (Array (_ BitVec 32) ValueCell!11946))

(declare-datatypes ((array!67568 0))(
  ( (array!67569 (arr!32485 (Array (_ BitVec 32) ValueCell!11946)) (size!33022 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67568)

(assert (=> mapNonEmpty!39628 (= (arr!32485 _values!955) (store mapRest!39628 mapKey!39628 mapValue!39628))))

(declare-fun b!1063879 () Bool)

(assert (=> b!1063879 (= e!606305 tp_is_empty!25299)))

(declare-fun b!1063880 () Bool)

(declare-fun res!710373 () Bool)

(declare-fun e!606304 () Bool)

(assert (=> b!1063880 (=> (not res!710373) (not e!606304))))

(declare-datatypes ((array!67570 0))(
  ( (array!67571 (arr!32486 (Array (_ BitVec 32) (_ BitVec 64))) (size!33023 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67570)

(declare-datatypes ((List!22772 0))(
  ( (Nil!22769) (Cons!22768 (h!23977 (_ BitVec 64)) (t!32094 List!22772)) )
))
(declare-fun arrayNoDuplicates!0 (array!67570 (_ BitVec 32) List!22772) Bool)

(assert (=> b!1063880 (= res!710373 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22769))))

(declare-fun b!1063881 () Bool)

(declare-fun e!606302 () Bool)

(assert (=> b!1063881 (= e!606302 (and e!606301 mapRes!39628))))

(declare-fun condMapEmpty!39628 () Bool)

(declare-fun mapDefault!39628 () ValueCell!11946)

(assert (=> b!1063881 (= condMapEmpty!39628 (= (arr!32485 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11946)) mapDefault!39628)))))

(declare-fun b!1063882 () Bool)

(declare-fun res!710370 () Bool)

(assert (=> b!1063882 (=> (not res!710370) (not e!606304))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1063882 (= res!710370 (and (= (size!33022 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33023 _keys!1163) (size!33022 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!710372 () Bool)

(assert (=> start!94110 (=> (not res!710372) (not e!606304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94110 (= res!710372 (validMask!0 mask!1515))))

(assert (=> start!94110 e!606304))

(assert (=> start!94110 true))

(assert (=> start!94110 tp_is_empty!25299))

(declare-fun array_inv!24992 (array!67568) Bool)

(assert (=> start!94110 (and (array_inv!24992 _values!955) e!606302)))

(assert (=> start!94110 tp!75900))

(declare-fun array_inv!24993 (array!67570) Bool)

(assert (=> start!94110 (array_inv!24993 _keys!1163)))

(declare-fun b!1063883 () Bool)

(assert (=> b!1063883 (= e!606304 (not true))))

(declare-datatypes ((tuple2!16168 0))(
  ( (tuple2!16169 (_1!8094 (_ BitVec 64)) (_2!8094 V!38867)) )
))
(declare-datatypes ((List!22773 0))(
  ( (Nil!22770) (Cons!22769 (h!23978 tuple2!16168) (t!32095 List!22773)) )
))
(declare-datatypes ((ListLongMap!14149 0))(
  ( (ListLongMap!14150 (toList!7090 List!22773)) )
))
(declare-fun lt!468950 () ListLongMap!14149)

(declare-fun lt!468949 () ListLongMap!14149)

(assert (=> b!1063883 (= lt!468950 lt!468949)))

(declare-fun zeroValueBefore!47 () V!38867)

(declare-datatypes ((Unit!34847 0))(
  ( (Unit!34848) )
))
(declare-fun lt!468948 () Unit!34847)

(declare-fun minValue!907 () V!38867)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38867)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!683 (array!67570 array!67568 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38867 V!38867 V!38867 V!38867 (_ BitVec 32) Int) Unit!34847)

(assert (=> b!1063883 (= lt!468948 (lemmaNoChangeToArrayThenSameMapNoExtras!683 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3644 (array!67570 array!67568 (_ BitVec 32) (_ BitVec 32) V!38867 V!38867 (_ BitVec 32) Int) ListLongMap!14149)

(assert (=> b!1063883 (= lt!468949 (getCurrentListMapNoExtraKeys!3644 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063883 (= lt!468950 (getCurrentListMapNoExtraKeys!3644 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063884 () Bool)

(declare-fun res!710371 () Bool)

(assert (=> b!1063884 (=> (not res!710371) (not e!606304))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67570 (_ BitVec 32)) Bool)

(assert (=> b!1063884 (= res!710371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39628 () Bool)

(assert (=> mapIsEmpty!39628 mapRes!39628))

(assert (= (and start!94110 res!710372) b!1063882))

(assert (= (and b!1063882 res!710370) b!1063884))

(assert (= (and b!1063884 res!710371) b!1063880))

(assert (= (and b!1063880 res!710373) b!1063883))

(assert (= (and b!1063881 condMapEmpty!39628) mapIsEmpty!39628))

(assert (= (and b!1063881 (not condMapEmpty!39628)) mapNonEmpty!39628))

(get-info :version)

(assert (= (and mapNonEmpty!39628 ((_ is ValueCellFull!11946) mapValue!39628)) b!1063879))

(assert (= (and b!1063881 ((_ is ValueCellFull!11946) mapDefault!39628)) b!1063878))

(assert (= start!94110 b!1063881))

(declare-fun m!982643 () Bool)

(assert (=> start!94110 m!982643))

(declare-fun m!982645 () Bool)

(assert (=> start!94110 m!982645))

(declare-fun m!982647 () Bool)

(assert (=> start!94110 m!982647))

(declare-fun m!982649 () Bool)

(assert (=> mapNonEmpty!39628 m!982649))

(declare-fun m!982651 () Bool)

(assert (=> b!1063884 m!982651))

(declare-fun m!982653 () Bool)

(assert (=> b!1063880 m!982653))

(declare-fun m!982655 () Bool)

(assert (=> b!1063883 m!982655))

(declare-fun m!982657 () Bool)

(assert (=> b!1063883 m!982657))

(declare-fun m!982659 () Bool)

(assert (=> b!1063883 m!982659))

(check-sat (not start!94110) tp_is_empty!25299 (not mapNonEmpty!39628) (not b!1063880) (not b_next!21489) (not b!1063883) (not b!1063884) b_and!34249)
(check-sat b_and!34249 (not b_next!21489))
