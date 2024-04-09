; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93824 () Bool)

(assert start!93824)

(declare-fun b_free!21261 () Bool)

(declare-fun b_next!21261 () Bool)

(assert (=> start!93824 (= b_free!21261 (not b_next!21261))))

(declare-fun tp!75206 () Bool)

(declare-fun b_and!33993 () Bool)

(assert (=> start!93824 (= tp!75206 b_and!33993)))

(declare-fun b!1060752 () Bool)

(declare-fun e!604007 () Bool)

(declare-fun e!604004 () Bool)

(declare-fun mapRes!39277 () Bool)

(assert (=> b!1060752 (= e!604007 (and e!604004 mapRes!39277))))

(declare-fun condMapEmpty!39277 () Bool)

(declare-datatypes ((V!38563 0))(
  ( (V!38564 (val!12586 Int)) )
))
(declare-datatypes ((ValueCell!11832 0))(
  ( (ValueCellFull!11832 (v!15197 V!38563)) (EmptyCell!11832) )
))
(declare-datatypes ((array!67136 0))(
  ( (array!67137 (arr!32272 (Array (_ BitVec 32) ValueCell!11832)) (size!32809 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67136)

(declare-fun mapDefault!39277 () ValueCell!11832)

(assert (=> b!1060752 (= condMapEmpty!39277 (= (arr!32272 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11832)) mapDefault!39277)))))

(declare-fun mapIsEmpty!39277 () Bool)

(assert (=> mapIsEmpty!39277 mapRes!39277))

(declare-fun res!708516 () Bool)

(declare-fun e!604006 () Bool)

(assert (=> start!93824 (=> (not res!708516) (not e!604006))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93824 (= res!708516 (validMask!0 mask!1515))))

(assert (=> start!93824 e!604006))

(assert (=> start!93824 true))

(declare-fun tp_is_empty!25071 () Bool)

(assert (=> start!93824 tp_is_empty!25071))

(declare-fun array_inv!24854 (array!67136) Bool)

(assert (=> start!93824 (and (array_inv!24854 _values!955) e!604007)))

(assert (=> start!93824 tp!75206))

(declare-datatypes ((array!67138 0))(
  ( (array!67139 (arr!32273 (Array (_ BitVec 32) (_ BitVec 64))) (size!32810 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67138)

(declare-fun array_inv!24855 (array!67138) Bool)

(assert (=> start!93824 (array_inv!24855 _keys!1163)))

(declare-fun b!1060753 () Bool)

(declare-fun res!708519 () Bool)

(assert (=> b!1060753 (=> (not res!708519) (not e!604006))))

(declare-datatypes ((List!22615 0))(
  ( (Nil!22612) (Cons!22611 (h!23820 (_ BitVec 64)) (t!31931 List!22615)) )
))
(declare-fun arrayNoDuplicates!0 (array!67138 (_ BitVec 32) List!22615) Bool)

(assert (=> b!1060753 (= res!708519 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22612))))

(declare-fun mapNonEmpty!39277 () Bool)

(declare-fun tp!75207 () Bool)

(declare-fun e!604003 () Bool)

(assert (=> mapNonEmpty!39277 (= mapRes!39277 (and tp!75207 e!604003))))

(declare-fun mapRest!39277 () (Array (_ BitVec 32) ValueCell!11832))

(declare-fun mapKey!39277 () (_ BitVec 32))

(declare-fun mapValue!39277 () ValueCell!11832)

(assert (=> mapNonEmpty!39277 (= (arr!32272 _values!955) (store mapRest!39277 mapKey!39277 mapValue!39277))))

(declare-fun b!1060754 () Bool)

(assert (=> b!1060754 (= e!604004 tp_is_empty!25071)))

(declare-fun b!1060755 () Bool)

(declare-fun res!708517 () Bool)

(assert (=> b!1060755 (=> (not res!708517) (not e!604006))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1060755 (= res!708517 (and (= (size!32809 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32810 _keys!1163) (size!32809 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1060756 () Bool)

(declare-fun res!708518 () Bool)

(assert (=> b!1060756 (=> (not res!708518) (not e!604006))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67138 (_ BitVec 32)) Bool)

(assert (=> b!1060756 (= res!708518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1060757 () Bool)

(assert (=> b!1060757 (= e!604003 tp_is_empty!25071)))

(declare-fun b!1060758 () Bool)

(assert (=> b!1060758 (= e!604006 false)))

(declare-datatypes ((tuple2!16004 0))(
  ( (tuple2!16005 (_1!8012 (_ BitVec 64)) (_2!8012 V!38563)) )
))
(declare-datatypes ((List!22616 0))(
  ( (Nil!22613) (Cons!22612 (h!23821 tuple2!16004) (t!31932 List!22616)) )
))
(declare-datatypes ((ListLongMap!13985 0))(
  ( (ListLongMap!13986 (toList!7008 List!22616)) )
))
(declare-fun lt!467359 () ListLongMap!13985)

(declare-fun minValue!907 () V!38563)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38563)

(declare-fun getCurrentListMapNoExtraKeys!3572 (array!67138 array!67136 (_ BitVec 32) (_ BitVec 32) V!38563 V!38563 (_ BitVec 32) Int) ListLongMap!13985)

(assert (=> b!1060758 (= lt!467359 (getCurrentListMapNoExtraKeys!3572 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38563)

(declare-fun lt!467360 () ListLongMap!13985)

(assert (=> b!1060758 (= lt!467360 (getCurrentListMapNoExtraKeys!3572 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!93824 res!708516) b!1060755))

(assert (= (and b!1060755 res!708517) b!1060756))

(assert (= (and b!1060756 res!708518) b!1060753))

(assert (= (and b!1060753 res!708519) b!1060758))

(assert (= (and b!1060752 condMapEmpty!39277) mapIsEmpty!39277))

(assert (= (and b!1060752 (not condMapEmpty!39277)) mapNonEmpty!39277))

(get-info :version)

(assert (= (and mapNonEmpty!39277 ((_ is ValueCellFull!11832) mapValue!39277)) b!1060757))

(assert (= (and b!1060752 ((_ is ValueCellFull!11832) mapDefault!39277)) b!1060754))

(assert (= start!93824 b!1060752))

(declare-fun m!979869 () Bool)

(assert (=> b!1060756 m!979869))

(declare-fun m!979871 () Bool)

(assert (=> mapNonEmpty!39277 m!979871))

(declare-fun m!979873 () Bool)

(assert (=> start!93824 m!979873))

(declare-fun m!979875 () Bool)

(assert (=> start!93824 m!979875))

(declare-fun m!979877 () Bool)

(assert (=> start!93824 m!979877))

(declare-fun m!979879 () Bool)

(assert (=> b!1060753 m!979879))

(declare-fun m!979881 () Bool)

(assert (=> b!1060758 m!979881))

(declare-fun m!979883 () Bool)

(assert (=> b!1060758 m!979883))

(check-sat b_and!33993 (not b!1060758) tp_is_empty!25071 (not mapNonEmpty!39277) (not start!93824) (not b!1060753) (not b_next!21261) (not b!1060756))
(check-sat b_and!33993 (not b_next!21261))
