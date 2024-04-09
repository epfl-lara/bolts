; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94022 () Bool)

(assert start!94022)

(declare-fun b_free!21423 () Bool)

(declare-fun b_next!21423 () Bool)

(assert (=> start!94022 (= b_free!21423 (not b_next!21423))))

(declare-fun tp!75699 () Bool)

(declare-fun b_and!34173 () Bool)

(assert (=> start!94022 (= tp!75699 b_and!34173)))

(declare-fun res!709780 () Bool)

(declare-fun e!605573 () Bool)

(assert (=> start!94022 (=> (not res!709780) (not e!605573))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94022 (= res!709780 (validMask!0 mask!1515))))

(assert (=> start!94022 e!605573))

(assert (=> start!94022 true))

(declare-fun tp_is_empty!25233 () Bool)

(assert (=> start!94022 tp_is_empty!25233))

(declare-datatypes ((V!38779 0))(
  ( (V!38780 (val!12667 Int)) )
))
(declare-datatypes ((ValueCell!11913 0))(
  ( (ValueCellFull!11913 (v!15279 V!38779)) (EmptyCell!11913) )
))
(declare-datatypes ((array!67442 0))(
  ( (array!67443 (arr!32423 (Array (_ BitVec 32) ValueCell!11913)) (size!32960 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67442)

(declare-fun e!605578 () Bool)

(declare-fun array_inv!24954 (array!67442) Bool)

(assert (=> start!94022 (and (array_inv!24954 _values!955) e!605578)))

(assert (=> start!94022 tp!75699))

(declare-datatypes ((array!67444 0))(
  ( (array!67445 (arr!32424 (Array (_ BitVec 32) (_ BitVec 64))) (size!32961 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67444)

(declare-fun array_inv!24955 (array!67444) Bool)

(assert (=> start!94022 (array_inv!24955 _keys!1163)))

(declare-fun mapIsEmpty!39526 () Bool)

(declare-fun mapRes!39526 () Bool)

(assert (=> mapIsEmpty!39526 mapRes!39526))

(declare-fun b!1062894 () Bool)

(declare-fun e!605577 () Bool)

(assert (=> b!1062894 (= e!605578 (and e!605577 mapRes!39526))))

(declare-fun condMapEmpty!39526 () Bool)

(declare-fun mapDefault!39526 () ValueCell!11913)

(assert (=> b!1062894 (= condMapEmpty!39526 (= (arr!32423 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11913)) mapDefault!39526)))))

(declare-fun mapNonEmpty!39526 () Bool)

(declare-fun tp!75698 () Bool)

(declare-fun e!605576 () Bool)

(assert (=> mapNonEmpty!39526 (= mapRes!39526 (and tp!75698 e!605576))))

(declare-fun mapRest!39526 () (Array (_ BitVec 32) ValueCell!11913))

(declare-fun mapValue!39526 () ValueCell!11913)

(declare-fun mapKey!39526 () (_ BitVec 32))

(assert (=> mapNonEmpty!39526 (= (arr!32423 _values!955) (store mapRest!39526 mapKey!39526 mapValue!39526))))

(declare-fun b!1062895 () Bool)

(assert (=> b!1062895 (= e!605576 tp_is_empty!25233)))

(declare-fun b!1062896 () Bool)

(declare-fun res!709782 () Bool)

(assert (=> b!1062896 (=> (not res!709782) (not e!605573))))

(declare-datatypes ((List!22729 0))(
  ( (Nil!22726) (Cons!22725 (h!23934 (_ BitVec 64)) (t!32049 List!22729)) )
))
(declare-fun arrayNoDuplicates!0 (array!67444 (_ BitVec 32) List!22729) Bool)

(assert (=> b!1062896 (= res!709782 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22726))))

(declare-fun b!1062897 () Bool)

(assert (=> b!1062897 (= e!605577 tp_is_empty!25233)))

(declare-fun b!1062898 () Bool)

(declare-fun res!709783 () Bool)

(assert (=> b!1062898 (=> (not res!709783) (not e!605573))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1062898 (= res!709783 (and (= (size!32960 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32961 _keys!1163) (size!32960 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1062899 () Bool)

(declare-fun res!709784 () Bool)

(assert (=> b!1062899 (=> (not res!709784) (not e!605573))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67444 (_ BitVec 32)) Bool)

(assert (=> b!1062899 (= res!709784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1062900 () Bool)

(declare-fun e!605575 () Bool)

(assert (=> b!1062900 (= e!605575 true)))

(declare-datatypes ((tuple2!16120 0))(
  ( (tuple2!16121 (_1!8070 (_ BitVec 64)) (_2!8070 V!38779)) )
))
(declare-datatypes ((List!22730 0))(
  ( (Nil!22727) (Cons!22726 (h!23935 tuple2!16120) (t!32050 List!22730)) )
))
(declare-datatypes ((ListLongMap!14101 0))(
  ( (ListLongMap!14102 (toList!7066 List!22730)) )
))
(declare-fun lt!468393 () ListLongMap!14101)

(declare-fun -!578 (ListLongMap!14101 (_ BitVec 64)) ListLongMap!14101)

(assert (=> b!1062900 (= (-!578 lt!468393 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468393)))

(declare-datatypes ((Unit!34801 0))(
  ( (Unit!34802) )
))
(declare-fun lt!468394 () Unit!34801)

(declare-fun removeNotPresentStillSame!24 (ListLongMap!14101 (_ BitVec 64)) Unit!34801)

(assert (=> b!1062900 (= lt!468394 (removeNotPresentStillSame!24 lt!468393 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1062901 () Bool)

(declare-fun e!605574 () Bool)

(assert (=> b!1062901 (= e!605573 (not e!605574))))

(declare-fun res!709779 () Bool)

(assert (=> b!1062901 (=> res!709779 e!605574)))

(assert (=> b!1062901 (= res!709779 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!468397 () ListLongMap!14101)

(declare-fun lt!468396 () ListLongMap!14101)

(assert (=> b!1062901 (= lt!468397 lt!468396)))

(declare-fun zeroValueBefore!47 () V!38779)

(declare-fun minValue!907 () V!38779)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38779)

(declare-fun lt!468395 () Unit!34801)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!662 (array!67444 array!67442 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38779 V!38779 V!38779 V!38779 (_ BitVec 32) Int) Unit!34801)

(assert (=> b!1062901 (= lt!468395 (lemmaNoChangeToArrayThenSameMapNoExtras!662 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3623 (array!67444 array!67442 (_ BitVec 32) (_ BitVec 32) V!38779 V!38779 (_ BitVec 32) Int) ListLongMap!14101)

(assert (=> b!1062901 (= lt!468396 (getCurrentListMapNoExtraKeys!3623 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1062901 (= lt!468397 (getCurrentListMapNoExtraKeys!3623 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062902 () Bool)

(assert (=> b!1062902 (= e!605574 e!605575)))

(declare-fun res!709781 () Bool)

(assert (=> b!1062902 (=> res!709781 e!605575)))

(declare-fun contains!6262 (ListLongMap!14101 (_ BitVec 64)) Bool)

(assert (=> b!1062902 (= res!709781 (contains!6262 lt!468393 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4011 (array!67444 array!67442 (_ BitVec 32) (_ BitVec 32) V!38779 V!38779 (_ BitVec 32) Int) ListLongMap!14101)

(assert (=> b!1062902 (= lt!468393 (getCurrentListMap!4011 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!94022 res!709780) b!1062898))

(assert (= (and b!1062898 res!709783) b!1062899))

(assert (= (and b!1062899 res!709784) b!1062896))

(assert (= (and b!1062896 res!709782) b!1062901))

(assert (= (and b!1062901 (not res!709779)) b!1062902))

(assert (= (and b!1062902 (not res!709781)) b!1062900))

(assert (= (and b!1062894 condMapEmpty!39526) mapIsEmpty!39526))

(assert (= (and b!1062894 (not condMapEmpty!39526)) mapNonEmpty!39526))

(get-info :version)

(assert (= (and mapNonEmpty!39526 ((_ is ValueCellFull!11913) mapValue!39526)) b!1062895))

(assert (= (and b!1062894 ((_ is ValueCellFull!11913) mapDefault!39526)) b!1062897))

(assert (= start!94022 b!1062894))

(declare-fun m!981739 () Bool)

(assert (=> b!1062901 m!981739))

(declare-fun m!981741 () Bool)

(assert (=> b!1062901 m!981741))

(declare-fun m!981743 () Bool)

(assert (=> b!1062901 m!981743))

(declare-fun m!981745 () Bool)

(assert (=> start!94022 m!981745))

(declare-fun m!981747 () Bool)

(assert (=> start!94022 m!981747))

(declare-fun m!981749 () Bool)

(assert (=> start!94022 m!981749))

(declare-fun m!981751 () Bool)

(assert (=> mapNonEmpty!39526 m!981751))

(declare-fun m!981753 () Bool)

(assert (=> b!1062899 m!981753))

(declare-fun m!981755 () Bool)

(assert (=> b!1062902 m!981755))

(declare-fun m!981757 () Bool)

(assert (=> b!1062902 m!981757))

(declare-fun m!981759 () Bool)

(assert (=> b!1062900 m!981759))

(declare-fun m!981761 () Bool)

(assert (=> b!1062900 m!981761))

(declare-fun m!981763 () Bool)

(assert (=> b!1062896 m!981763))

(check-sat b_and!34173 (not start!94022) (not b!1062900) (not b!1062896) (not b_next!21423) tp_is_empty!25233 (not b!1062901) (not b!1062899) (not mapNonEmpty!39526) (not b!1062902))
(check-sat b_and!34173 (not b_next!21423))
