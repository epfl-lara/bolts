; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94926 () Bool)

(assert start!94926)

(declare-fun b_free!22095 () Bool)

(declare-fun b_next!22095 () Bool)

(assert (=> start!94926 (= b_free!22095 (not b_next!22095))))

(declare-fun tp!77750 () Bool)

(declare-fun b_and!34967 () Bool)

(assert (=> start!94926 (= tp!77750 b_and!34967)))

(declare-fun b!1072893 () Bool)

(declare-fun e!612921 () Bool)

(declare-fun e!612918 () Bool)

(declare-fun mapRes!40570 () Bool)

(assert (=> b!1072893 (= e!612921 (and e!612918 mapRes!40570))))

(declare-fun condMapEmpty!40570 () Bool)

(declare-datatypes ((V!39675 0))(
  ( (V!39676 (val!13003 Int)) )
))
(declare-datatypes ((ValueCell!12249 0))(
  ( (ValueCellFull!12249 (v!15622 V!39675)) (EmptyCell!12249) )
))
(declare-datatypes ((array!68740 0))(
  ( (array!68741 (arr!33060 (Array (_ BitVec 32) ValueCell!12249)) (size!33597 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68740)

(declare-fun mapDefault!40570 () ValueCell!12249)

(assert (=> b!1072893 (= condMapEmpty!40570 (= (arr!33060 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12249)) mapDefault!40570)))))

(declare-fun b!1072894 () Bool)

(declare-fun res!715717 () Bool)

(declare-fun e!612919 () Bool)

(assert (=> b!1072894 (=> (not res!715717) (not e!612919))))

(declare-datatypes ((array!68742 0))(
  ( (array!68743 (arr!33061 (Array (_ BitVec 32) (_ BitVec 64))) (size!33598 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68742)

(declare-datatypes ((List!23205 0))(
  ( (Nil!23202) (Cons!23201 (h!24410 (_ BitVec 64)) (t!32549 List!23205)) )
))
(declare-fun arrayNoDuplicates!0 (array!68742 (_ BitVec 32) List!23205) Bool)

(assert (=> b!1072894 (= res!715717 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23202))))

(declare-fun b!1072895 () Bool)

(declare-fun e!612922 () Bool)

(declare-fun tp_is_empty!25905 () Bool)

(assert (=> b!1072895 (= e!612922 tp_is_empty!25905)))

(declare-fun res!715716 () Bool)

(assert (=> start!94926 (=> (not res!715716) (not e!612919))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94926 (= res!715716 (validMask!0 mask!1515))))

(assert (=> start!94926 e!612919))

(assert (=> start!94926 true))

(assert (=> start!94926 tp_is_empty!25905))

(declare-fun array_inv!25412 (array!68740) Bool)

(assert (=> start!94926 (and (array_inv!25412 _values!955) e!612921)))

(assert (=> start!94926 tp!77750))

(declare-fun array_inv!25413 (array!68742) Bool)

(assert (=> start!94926 (array_inv!25413 _keys!1163)))

(declare-fun b!1072896 () Bool)

(assert (=> b!1072896 (= e!612918 tp_is_empty!25905)))

(declare-fun mapIsEmpty!40570 () Bool)

(assert (=> mapIsEmpty!40570 mapRes!40570))

(declare-fun b!1072897 () Bool)

(assert (=> b!1072897 (= e!612919 false)))

(declare-datatypes ((tuple2!16626 0))(
  ( (tuple2!16627 (_1!8323 (_ BitVec 64)) (_2!8323 V!39675)) )
))
(declare-datatypes ((List!23206 0))(
  ( (Nil!23203) (Cons!23202 (h!24411 tuple2!16626) (t!32550 List!23206)) )
))
(declare-datatypes ((ListLongMap!14607 0))(
  ( (ListLongMap!14608 (toList!7319 List!23206)) )
))
(declare-fun lt!475882 () ListLongMap!14607)

(declare-fun minValue!907 () V!39675)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39675)

(declare-fun getCurrentListMapNoExtraKeys!3849 (array!68742 array!68740 (_ BitVec 32) (_ BitVec 32) V!39675 V!39675 (_ BitVec 32) Int) ListLongMap!14607)

(assert (=> b!1072897 (= lt!475882 (getCurrentListMapNoExtraKeys!3849 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!39675)

(declare-fun lt!475883 () ListLongMap!14607)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072897 (= lt!475883 (getCurrentListMapNoExtraKeys!3849 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072898 () Bool)

(declare-fun res!715718 () Bool)

(assert (=> b!1072898 (=> (not res!715718) (not e!612919))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68742 (_ BitVec 32)) Bool)

(assert (=> b!1072898 (= res!715718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1072899 () Bool)

(declare-fun res!715719 () Bool)

(assert (=> b!1072899 (=> (not res!715719) (not e!612919))))

(assert (=> b!1072899 (= res!715719 (and (= (size!33597 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33598 _keys!1163) (size!33597 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!40570 () Bool)

(declare-fun tp!77751 () Bool)

(assert (=> mapNonEmpty!40570 (= mapRes!40570 (and tp!77751 e!612922))))

(declare-fun mapKey!40570 () (_ BitVec 32))

(declare-fun mapValue!40570 () ValueCell!12249)

(declare-fun mapRest!40570 () (Array (_ BitVec 32) ValueCell!12249))

(assert (=> mapNonEmpty!40570 (= (arr!33060 _values!955) (store mapRest!40570 mapKey!40570 mapValue!40570))))

(assert (= (and start!94926 res!715716) b!1072899))

(assert (= (and b!1072899 res!715719) b!1072898))

(assert (= (and b!1072898 res!715718) b!1072894))

(assert (= (and b!1072894 res!715717) b!1072897))

(assert (= (and b!1072893 condMapEmpty!40570) mapIsEmpty!40570))

(assert (= (and b!1072893 (not condMapEmpty!40570)) mapNonEmpty!40570))

(get-info :version)

(assert (= (and mapNonEmpty!40570 ((_ is ValueCellFull!12249) mapValue!40570)) b!1072895))

(assert (= (and b!1072893 ((_ is ValueCellFull!12249) mapDefault!40570)) b!1072896))

(assert (= start!94926 b!1072893))

(declare-fun m!992133 () Bool)

(assert (=> b!1072894 m!992133))

(declare-fun m!992135 () Bool)

(assert (=> mapNonEmpty!40570 m!992135))

(declare-fun m!992137 () Bool)

(assert (=> b!1072898 m!992137))

(declare-fun m!992139 () Bool)

(assert (=> start!94926 m!992139))

(declare-fun m!992141 () Bool)

(assert (=> start!94926 m!992141))

(declare-fun m!992143 () Bool)

(assert (=> start!94926 m!992143))

(declare-fun m!992145 () Bool)

(assert (=> b!1072897 m!992145))

(declare-fun m!992147 () Bool)

(assert (=> b!1072897 m!992147))

(check-sat b_and!34967 (not mapNonEmpty!40570) (not b!1072898) tp_is_empty!25905 (not start!94926) (not b!1072897) (not b!1072894) (not b_next!22095))
(check-sat b_and!34967 (not b_next!22095))
