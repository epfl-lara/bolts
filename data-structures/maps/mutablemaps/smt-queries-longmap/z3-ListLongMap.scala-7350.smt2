; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93842 () Bool)

(assert start!93842)

(declare-fun b_free!21279 () Bool)

(declare-fun b_next!21279 () Bool)

(assert (=> start!93842 (= b_free!21279 (not b_next!21279))))

(declare-fun tp!75261 () Bool)

(declare-fun b_and!34011 () Bool)

(assert (=> start!93842 (= tp!75261 b_and!34011)))

(declare-fun b!1060941 () Bool)

(declare-fun e!604138 () Bool)

(declare-fun tp_is_empty!25089 () Bool)

(assert (=> b!1060941 (= e!604138 tp_is_empty!25089)))

(declare-fun b!1060942 () Bool)

(declare-fun res!708625 () Bool)

(declare-fun e!604142 () Bool)

(assert (=> b!1060942 (=> (not res!708625) (not e!604142))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38587 0))(
  ( (V!38588 (val!12595 Int)) )
))
(declare-datatypes ((ValueCell!11841 0))(
  ( (ValueCellFull!11841 (v!15206 V!38587)) (EmptyCell!11841) )
))
(declare-datatypes ((array!67168 0))(
  ( (array!67169 (arr!32288 (Array (_ BitVec 32) ValueCell!11841)) (size!32825 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67168)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67170 0))(
  ( (array!67171 (arr!32289 (Array (_ BitVec 32) (_ BitVec 64))) (size!32826 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67170)

(assert (=> b!1060942 (= res!708625 (and (= (size!32825 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32826 _keys!1163) (size!32825 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1060943 () Bool)

(declare-fun res!708627 () Bool)

(assert (=> b!1060943 (=> (not res!708627) (not e!604142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67170 (_ BitVec 32)) Bool)

(assert (=> b!1060943 (= res!708627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1060944 () Bool)

(declare-fun e!604139 () Bool)

(assert (=> b!1060944 (= e!604139 tp_is_empty!25089)))

(declare-fun b!1060945 () Bool)

(declare-fun res!708624 () Bool)

(assert (=> b!1060945 (=> (not res!708624) (not e!604142))))

(declare-datatypes ((List!22626 0))(
  ( (Nil!22623) (Cons!22622 (h!23831 (_ BitVec 64)) (t!31942 List!22626)) )
))
(declare-fun arrayNoDuplicates!0 (array!67170 (_ BitVec 32) List!22626) Bool)

(assert (=> b!1060945 (= res!708624 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22623))))

(declare-fun mapNonEmpty!39304 () Bool)

(declare-fun mapRes!39304 () Bool)

(declare-fun tp!75260 () Bool)

(assert (=> mapNonEmpty!39304 (= mapRes!39304 (and tp!75260 e!604138))))

(declare-fun mapRest!39304 () (Array (_ BitVec 32) ValueCell!11841))

(declare-fun mapValue!39304 () ValueCell!11841)

(declare-fun mapKey!39304 () (_ BitVec 32))

(assert (=> mapNonEmpty!39304 (= (arr!32288 _values!955) (store mapRest!39304 mapKey!39304 mapValue!39304))))

(declare-fun b!1060947 () Bool)

(assert (=> b!1060947 (= e!604142 false)))

(declare-datatypes ((tuple2!16014 0))(
  ( (tuple2!16015 (_1!8017 (_ BitVec 64)) (_2!8017 V!38587)) )
))
(declare-datatypes ((List!22627 0))(
  ( (Nil!22624) (Cons!22623 (h!23832 tuple2!16014) (t!31943 List!22627)) )
))
(declare-datatypes ((ListLongMap!13995 0))(
  ( (ListLongMap!13996 (toList!7013 List!22627)) )
))
(declare-fun lt!467413 () ListLongMap!13995)

(declare-fun minValue!907 () V!38587)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38587)

(declare-fun getCurrentListMapNoExtraKeys!3577 (array!67170 array!67168 (_ BitVec 32) (_ BitVec 32) V!38587 V!38587 (_ BitVec 32) Int) ListLongMap!13995)

(assert (=> b!1060947 (= lt!467413 (getCurrentListMapNoExtraKeys!3577 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38587)

(declare-fun lt!467414 () ListLongMap!13995)

(assert (=> b!1060947 (= lt!467414 (getCurrentListMapNoExtraKeys!3577 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39304 () Bool)

(assert (=> mapIsEmpty!39304 mapRes!39304))

(declare-fun b!1060946 () Bool)

(declare-fun e!604141 () Bool)

(assert (=> b!1060946 (= e!604141 (and e!604139 mapRes!39304))))

(declare-fun condMapEmpty!39304 () Bool)

(declare-fun mapDefault!39304 () ValueCell!11841)

(assert (=> b!1060946 (= condMapEmpty!39304 (= (arr!32288 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11841)) mapDefault!39304)))))

(declare-fun res!708626 () Bool)

(assert (=> start!93842 (=> (not res!708626) (not e!604142))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93842 (= res!708626 (validMask!0 mask!1515))))

(assert (=> start!93842 e!604142))

(assert (=> start!93842 true))

(assert (=> start!93842 tp_is_empty!25089))

(declare-fun array_inv!24860 (array!67168) Bool)

(assert (=> start!93842 (and (array_inv!24860 _values!955) e!604141)))

(assert (=> start!93842 tp!75261))

(declare-fun array_inv!24861 (array!67170) Bool)

(assert (=> start!93842 (array_inv!24861 _keys!1163)))

(assert (= (and start!93842 res!708626) b!1060942))

(assert (= (and b!1060942 res!708625) b!1060943))

(assert (= (and b!1060943 res!708627) b!1060945))

(assert (= (and b!1060945 res!708624) b!1060947))

(assert (= (and b!1060946 condMapEmpty!39304) mapIsEmpty!39304))

(assert (= (and b!1060946 (not condMapEmpty!39304)) mapNonEmpty!39304))

(get-info :version)

(assert (= (and mapNonEmpty!39304 ((_ is ValueCellFull!11841) mapValue!39304)) b!1060941))

(assert (= (and b!1060946 ((_ is ValueCellFull!11841) mapDefault!39304)) b!1060944))

(assert (= start!93842 b!1060946))

(declare-fun m!980013 () Bool)

(assert (=> b!1060943 m!980013))

(declare-fun m!980015 () Bool)

(assert (=> start!93842 m!980015))

(declare-fun m!980017 () Bool)

(assert (=> start!93842 m!980017))

(declare-fun m!980019 () Bool)

(assert (=> start!93842 m!980019))

(declare-fun m!980021 () Bool)

(assert (=> mapNonEmpty!39304 m!980021))

(declare-fun m!980023 () Bool)

(assert (=> b!1060945 m!980023))

(declare-fun m!980025 () Bool)

(assert (=> b!1060947 m!980025))

(declare-fun m!980027 () Bool)

(assert (=> b!1060947 m!980027))

(check-sat (not b!1060947) (not start!93842) tp_is_empty!25089 b_and!34011 (not mapNonEmpty!39304) (not b!1060943) (not b_next!21279) (not b!1060945))
(check-sat b_and!34011 (not b_next!21279))
