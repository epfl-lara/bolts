; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42660 () Bool)

(assert start!42660)

(declare-fun b_free!12057 () Bool)

(declare-fun b_next!12057 () Bool)

(assert (=> start!42660 (= b_free!12057 (not b_next!12057))))

(declare-fun tp!42217 () Bool)

(declare-fun b_and!20575 () Bool)

(assert (=> start!42660 (= tp!42217 b_and!20575)))

(declare-datatypes ((V!19085 0))(
  ( (V!19086 (val!6787 Int)) )
))
(declare-datatypes ((tuple2!8948 0))(
  ( (tuple2!8949 (_1!4484 (_ BitVec 64)) (_2!4484 V!19085)) )
))
(declare-fun lt!216690 () tuple2!8948)

(declare-fun zeroValue!794 () V!19085)

(declare-fun defaultEntry!841 () Int)

(declare-fun e!279294 () Bool)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30679 0))(
  ( (array!30680 (arr!14752 (Array (_ BitVec 32) (_ BitVec 64))) (size!15104 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30679)

(declare-datatypes ((ValueCell!6399 0))(
  ( (ValueCellFull!6399 (v!9077 V!19085)) (EmptyCell!6399) )
))
(declare-datatypes ((array!30681 0))(
  ( (array!30682 (arr!14753 (Array (_ BitVec 32) ValueCell!6399)) (size!15105 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30681)

(declare-fun minValueAfter!38 () V!19085)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun b!475575 () Bool)

(declare-datatypes ((List!9058 0))(
  ( (Nil!9055) (Cons!9054 (h!9910 tuple2!8948) (t!15044 List!9058)) )
))
(declare-datatypes ((ListLongMap!7875 0))(
  ( (ListLongMap!7876 (toList!3953 List!9058)) )
))
(declare-fun lt!216688 () ListLongMap!7875)

(declare-fun +!1732 (ListLongMap!7875 tuple2!8948) ListLongMap!7875)

(declare-fun getCurrentListMap!2268 (array!30679 array!30681 (_ BitVec 32) (_ BitVec 32) V!19085 V!19085 (_ BitVec 32) Int) ListLongMap!7875)

(assert (=> b!475575 (= e!279294 (= (+!1732 lt!216688 lt!216690) (getCurrentListMap!2268 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841)))))

(declare-fun lt!216689 () ListLongMap!7875)

(declare-fun minValueBefore!38 () V!19085)

(assert (=> b!475575 (= (+!1732 lt!216689 lt!216690) (+!1732 (+!1732 lt!216689 (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!216690))))

(assert (=> b!475575 (= lt!216690 (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13985 0))(
  ( (Unit!13986) )
))
(declare-fun lt!216685 () Unit!13985)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!164 (ListLongMap!7875 (_ BitVec 64) V!19085 V!19085) Unit!13985)

(assert (=> b!475575 (= lt!216685 (addSameAsAddTwiceSameKeyDiffValues!164 lt!216689 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!475575 (= lt!216688 (getCurrentListMap!2268 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!475576 () Bool)

(declare-fun res!284043 () Bool)

(declare-fun e!279295 () Bool)

(assert (=> b!475576 (=> (not res!284043) (not e!279295))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30679 (_ BitVec 32)) Bool)

(assert (=> b!475576 (= res!284043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!284045 () Bool)

(assert (=> start!42660 (=> (not res!284045) (not e!279295))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42660 (= res!284045 (validMask!0 mask!1365))))

(assert (=> start!42660 e!279295))

(declare-fun tp_is_empty!13485 () Bool)

(assert (=> start!42660 tp_is_empty!13485))

(assert (=> start!42660 tp!42217))

(assert (=> start!42660 true))

(declare-fun array_inv!10630 (array!30679) Bool)

(assert (=> start!42660 (array_inv!10630 _keys!1025)))

(declare-fun e!279291 () Bool)

(declare-fun array_inv!10631 (array!30681) Bool)

(assert (=> start!42660 (and (array_inv!10631 _values!833) e!279291)))

(declare-fun mapNonEmpty!21952 () Bool)

(declare-fun mapRes!21952 () Bool)

(declare-fun tp!42216 () Bool)

(declare-fun e!279292 () Bool)

(assert (=> mapNonEmpty!21952 (= mapRes!21952 (and tp!42216 e!279292))))

(declare-fun mapRest!21952 () (Array (_ BitVec 32) ValueCell!6399))

(declare-fun mapKey!21952 () (_ BitVec 32))

(declare-fun mapValue!21952 () ValueCell!6399)

(assert (=> mapNonEmpty!21952 (= (arr!14753 _values!833) (store mapRest!21952 mapKey!21952 mapValue!21952))))

(declare-fun b!475577 () Bool)

(declare-fun e!279293 () Bool)

(assert (=> b!475577 (= e!279291 (and e!279293 mapRes!21952))))

(declare-fun condMapEmpty!21952 () Bool)

(declare-fun mapDefault!21952 () ValueCell!6399)

(assert (=> b!475577 (= condMapEmpty!21952 (= (arr!14753 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6399)) mapDefault!21952)))))

(declare-fun b!475578 () Bool)

(assert (=> b!475578 (= e!279292 tp_is_empty!13485)))

(declare-fun b!475579 () Bool)

(declare-fun res!284041 () Bool)

(assert (=> b!475579 (=> (not res!284041) (not e!279295))))

(declare-datatypes ((List!9059 0))(
  ( (Nil!9056) (Cons!9055 (h!9911 (_ BitVec 64)) (t!15045 List!9059)) )
))
(declare-fun arrayNoDuplicates!0 (array!30679 (_ BitVec 32) List!9059) Bool)

(assert (=> b!475579 (= res!284041 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9056))))

(declare-fun b!475580 () Bool)

(declare-fun res!284042 () Bool)

(assert (=> b!475580 (=> (not res!284042) (not e!279295))))

(assert (=> b!475580 (= res!284042 (and (= (size!15105 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15104 _keys!1025) (size!15105 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!475581 () Bool)

(assert (=> b!475581 (= e!279295 (not e!279294))))

(declare-fun res!284044 () Bool)

(assert (=> b!475581 (=> res!284044 e!279294)))

(assert (=> b!475581 (= res!284044 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!216686 () ListLongMap!7875)

(assert (=> b!475581 (= lt!216689 lt!216686)))

(declare-fun lt!216687 () Unit!13985)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!277 (array!30679 array!30681 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!19085 V!19085 V!19085 V!19085 (_ BitVec 32) Int) Unit!13985)

(assert (=> b!475581 (= lt!216687 (lemmaNoChangeToArrayThenSameMapNoExtras!277 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2106 (array!30679 array!30681 (_ BitVec 32) (_ BitVec 32) V!19085 V!19085 (_ BitVec 32) Int) ListLongMap!7875)

(assert (=> b!475581 (= lt!216686 (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!475581 (= lt!216689 (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!475582 () Bool)

(assert (=> b!475582 (= e!279293 tp_is_empty!13485)))

(declare-fun mapIsEmpty!21952 () Bool)

(assert (=> mapIsEmpty!21952 mapRes!21952))

(assert (= (and start!42660 res!284045) b!475580))

(assert (= (and b!475580 res!284042) b!475576))

(assert (= (and b!475576 res!284043) b!475579))

(assert (= (and b!475579 res!284041) b!475581))

(assert (= (and b!475581 (not res!284044)) b!475575))

(assert (= (and b!475577 condMapEmpty!21952) mapIsEmpty!21952))

(assert (= (and b!475577 (not condMapEmpty!21952)) mapNonEmpty!21952))

(get-info :version)

(assert (= (and mapNonEmpty!21952 ((_ is ValueCellFull!6399) mapValue!21952)) b!475578))

(assert (= (and b!475577 ((_ is ValueCellFull!6399) mapDefault!21952)) b!475582))

(assert (= start!42660 b!475577))

(declare-fun m!457793 () Bool)

(assert (=> mapNonEmpty!21952 m!457793))

(declare-fun m!457795 () Bool)

(assert (=> b!475579 m!457795))

(declare-fun m!457797 () Bool)

(assert (=> b!475581 m!457797))

(declare-fun m!457799 () Bool)

(assert (=> b!475581 m!457799))

(declare-fun m!457801 () Bool)

(assert (=> b!475581 m!457801))

(declare-fun m!457803 () Bool)

(assert (=> b!475575 m!457803))

(declare-fun m!457805 () Bool)

(assert (=> b!475575 m!457805))

(declare-fun m!457807 () Bool)

(assert (=> b!475575 m!457807))

(assert (=> b!475575 m!457803))

(declare-fun m!457809 () Bool)

(assert (=> b!475575 m!457809))

(declare-fun m!457811 () Bool)

(assert (=> b!475575 m!457811))

(declare-fun m!457813 () Bool)

(assert (=> b!475575 m!457813))

(declare-fun m!457815 () Bool)

(assert (=> b!475575 m!457815))

(declare-fun m!457817 () Bool)

(assert (=> start!42660 m!457817))

(declare-fun m!457819 () Bool)

(assert (=> start!42660 m!457819))

(declare-fun m!457821 () Bool)

(assert (=> start!42660 m!457821))

(declare-fun m!457823 () Bool)

(assert (=> b!475576 m!457823))

(check-sat tp_is_empty!13485 (not mapNonEmpty!21952) (not start!42660) (not b!475575) (not b!475579) b_and!20575 (not b!475581) (not b_next!12057) (not b!475576))
(check-sat b_and!20575 (not b_next!12057))
(get-model)

(declare-fun d!75519 () Bool)

(declare-fun e!279316 () Bool)

(assert (=> d!75519 e!279316))

(declare-fun res!284066 () Bool)

(assert (=> d!75519 (=> (not res!284066) (not e!279316))))

(declare-fun lt!216718 () ListLongMap!7875)

(declare-fun contains!2562 (ListLongMap!7875 (_ BitVec 64)) Bool)

(assert (=> d!75519 (= res!284066 (contains!2562 lt!216718 (_1!4484 lt!216690)))))

(declare-fun lt!216719 () List!9058)

(assert (=> d!75519 (= lt!216718 (ListLongMap!7876 lt!216719))))

(declare-fun lt!216720 () Unit!13985)

(declare-fun lt!216717 () Unit!13985)

(assert (=> d!75519 (= lt!216720 lt!216717)))

(declare-datatypes ((Option!388 0))(
  ( (Some!387 (v!9079 V!19085)) (None!386) )
))
(declare-fun getValueByKey!382 (List!9058 (_ BitVec 64)) Option!388)

(assert (=> d!75519 (= (getValueByKey!382 lt!216719 (_1!4484 lt!216690)) (Some!387 (_2!4484 lt!216690)))))

(declare-fun lemmaContainsTupThenGetReturnValue!206 (List!9058 (_ BitVec 64) V!19085) Unit!13985)

(assert (=> d!75519 (= lt!216717 (lemmaContainsTupThenGetReturnValue!206 lt!216719 (_1!4484 lt!216690) (_2!4484 lt!216690)))))

(declare-fun insertStrictlySorted!208 (List!9058 (_ BitVec 64) V!19085) List!9058)

(assert (=> d!75519 (= lt!216719 (insertStrictlySorted!208 (toList!3953 lt!216689) (_1!4484 lt!216690) (_2!4484 lt!216690)))))

(assert (=> d!75519 (= (+!1732 lt!216689 lt!216690) lt!216718)))

(declare-fun b!475611 () Bool)

(declare-fun res!284065 () Bool)

(assert (=> b!475611 (=> (not res!284065) (not e!279316))))

(assert (=> b!475611 (= res!284065 (= (getValueByKey!382 (toList!3953 lt!216718) (_1!4484 lt!216690)) (Some!387 (_2!4484 lt!216690))))))

(declare-fun b!475612 () Bool)

(declare-fun contains!2563 (List!9058 tuple2!8948) Bool)

(assert (=> b!475612 (= e!279316 (contains!2563 (toList!3953 lt!216718) lt!216690))))

(assert (= (and d!75519 res!284066) b!475611))

(assert (= (and b!475611 res!284065) b!475612))

(declare-fun m!457857 () Bool)

(assert (=> d!75519 m!457857))

(declare-fun m!457859 () Bool)

(assert (=> d!75519 m!457859))

(declare-fun m!457861 () Bool)

(assert (=> d!75519 m!457861))

(declare-fun m!457863 () Bool)

(assert (=> d!75519 m!457863))

(declare-fun m!457865 () Bool)

(assert (=> b!475611 m!457865))

(declare-fun m!457867 () Bool)

(assert (=> b!475612 m!457867))

(assert (=> b!475575 d!75519))

(declare-fun d!75521 () Bool)

(declare-fun e!279317 () Bool)

(assert (=> d!75521 e!279317))

(declare-fun res!284068 () Bool)

(assert (=> d!75521 (=> (not res!284068) (not e!279317))))

(declare-fun lt!216722 () ListLongMap!7875)

(assert (=> d!75521 (= res!284068 (contains!2562 lt!216722 (_1!4484 (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun lt!216723 () List!9058)

(assert (=> d!75521 (= lt!216722 (ListLongMap!7876 lt!216723))))

(declare-fun lt!216724 () Unit!13985)

(declare-fun lt!216721 () Unit!13985)

(assert (=> d!75521 (= lt!216724 lt!216721)))

(assert (=> d!75521 (= (getValueByKey!382 lt!216723 (_1!4484 (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))) (Some!387 (_2!4484 (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(assert (=> d!75521 (= lt!216721 (lemmaContainsTupThenGetReturnValue!206 lt!216723 (_1!4484 (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) (_2!4484 (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(assert (=> d!75521 (= lt!216723 (insertStrictlySorted!208 (toList!3953 lt!216689) (_1!4484 (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) (_2!4484 (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(assert (=> d!75521 (= (+!1732 lt!216689 (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!216722)))

(declare-fun b!475613 () Bool)

(declare-fun res!284067 () Bool)

(assert (=> b!475613 (=> (not res!284067) (not e!279317))))

(assert (=> b!475613 (= res!284067 (= (getValueByKey!382 (toList!3953 lt!216722) (_1!4484 (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))) (Some!387 (_2!4484 (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))))

(declare-fun b!475614 () Bool)

(assert (=> b!475614 (= e!279317 (contains!2563 (toList!3953 lt!216722) (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))

(assert (= (and d!75521 res!284068) b!475613))

(assert (= (and b!475613 res!284067) b!475614))

(declare-fun m!457869 () Bool)

(assert (=> d!75521 m!457869))

(declare-fun m!457871 () Bool)

(assert (=> d!75521 m!457871))

(declare-fun m!457873 () Bool)

(assert (=> d!75521 m!457873))

(declare-fun m!457875 () Bool)

(assert (=> d!75521 m!457875))

(declare-fun m!457877 () Bool)

(assert (=> b!475613 m!457877))

(declare-fun m!457879 () Bool)

(assert (=> b!475614 m!457879))

(assert (=> b!475575 d!75521))

(declare-fun b!475657 () Bool)

(declare-fun e!279349 () Unit!13985)

(declare-fun Unit!13989 () Unit!13985)

(assert (=> b!475657 (= e!279349 Unit!13989)))

(declare-fun bm!30625 () Bool)

(declare-fun call!30629 () Bool)

(declare-fun lt!216786 () ListLongMap!7875)

(assert (=> bm!30625 (= call!30629 (contains!2562 lt!216786 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!475659 () Bool)

(declare-fun e!279353 () Bool)

(declare-fun e!279350 () Bool)

(assert (=> b!475659 (= e!279353 e!279350)))

(declare-fun res!284095 () Bool)

(assert (=> b!475659 (= res!284095 call!30629)))

(assert (=> b!475659 (=> (not res!284095) (not e!279350))))

(declare-fun b!475660 () Bool)

(declare-fun apply!336 (ListLongMap!7875 (_ BitVec 64)) V!19085)

(assert (=> b!475660 (= e!279350 (= (apply!336 lt!216786 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun b!475661 () Bool)

(declare-fun lt!216777 () Unit!13985)

(assert (=> b!475661 (= e!279349 lt!216777)))

(declare-fun lt!216790 () ListLongMap!7875)

(assert (=> b!475661 (= lt!216790 (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216785 () (_ BitVec 64))

(assert (=> b!475661 (= lt!216785 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216782 () (_ BitVec 64))

(assert (=> b!475661 (= lt!216782 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216778 () Unit!13985)

(declare-fun addStillContains!294 (ListLongMap!7875 (_ BitVec 64) V!19085 (_ BitVec 64)) Unit!13985)

(assert (=> b!475661 (= lt!216778 (addStillContains!294 lt!216790 lt!216785 zeroValue!794 lt!216782))))

(assert (=> b!475661 (contains!2562 (+!1732 lt!216790 (tuple2!8949 lt!216785 zeroValue!794)) lt!216782)))

(declare-fun lt!216773 () Unit!13985)

(assert (=> b!475661 (= lt!216773 lt!216778)))

(declare-fun lt!216779 () ListLongMap!7875)

(assert (=> b!475661 (= lt!216779 (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216774 () (_ BitVec 64))

(assert (=> b!475661 (= lt!216774 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216776 () (_ BitVec 64))

(assert (=> b!475661 (= lt!216776 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216784 () Unit!13985)

(declare-fun addApplyDifferent!294 (ListLongMap!7875 (_ BitVec 64) V!19085 (_ BitVec 64)) Unit!13985)

(assert (=> b!475661 (= lt!216784 (addApplyDifferent!294 lt!216779 lt!216774 minValueBefore!38 lt!216776))))

(assert (=> b!475661 (= (apply!336 (+!1732 lt!216779 (tuple2!8949 lt!216774 minValueBefore!38)) lt!216776) (apply!336 lt!216779 lt!216776))))

(declare-fun lt!216788 () Unit!13985)

(assert (=> b!475661 (= lt!216788 lt!216784)))

(declare-fun lt!216771 () ListLongMap!7875)

(assert (=> b!475661 (= lt!216771 (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216783 () (_ BitVec 64))

(assert (=> b!475661 (= lt!216783 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216769 () (_ BitVec 64))

(assert (=> b!475661 (= lt!216769 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216775 () Unit!13985)

(assert (=> b!475661 (= lt!216775 (addApplyDifferent!294 lt!216771 lt!216783 zeroValue!794 lt!216769))))

(assert (=> b!475661 (= (apply!336 (+!1732 lt!216771 (tuple2!8949 lt!216783 zeroValue!794)) lt!216769) (apply!336 lt!216771 lt!216769))))

(declare-fun lt!216772 () Unit!13985)

(assert (=> b!475661 (= lt!216772 lt!216775)))

(declare-fun lt!216781 () ListLongMap!7875)

(assert (=> b!475661 (= lt!216781 (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216787 () (_ BitVec 64))

(assert (=> b!475661 (= lt!216787 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216780 () (_ BitVec 64))

(assert (=> b!475661 (= lt!216780 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!475661 (= lt!216777 (addApplyDifferent!294 lt!216781 lt!216787 minValueBefore!38 lt!216780))))

(assert (=> b!475661 (= (apply!336 (+!1732 lt!216781 (tuple2!8949 lt!216787 minValueBefore!38)) lt!216780) (apply!336 lt!216781 lt!216780))))

(declare-fun b!475662 () Bool)

(declare-fun e!279356 () Bool)

(declare-fun e!279345 () Bool)

(assert (=> b!475662 (= e!279356 e!279345)))

(declare-fun res!284087 () Bool)

(declare-fun call!30628 () Bool)

(assert (=> b!475662 (= res!284087 call!30628)))

(assert (=> b!475662 (=> (not res!284087) (not e!279345))))

(declare-fun b!475663 () Bool)

(declare-fun e!279346 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!475663 (= e!279346 (validKeyInArray!0 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30626 () Bool)

(declare-fun call!30634 () ListLongMap!7875)

(assert (=> bm!30626 (= call!30634 (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!475664 () Bool)

(declare-fun e!279347 () Bool)

(declare-fun e!279344 () Bool)

(assert (=> b!475664 (= e!279347 e!279344)))

(declare-fun res!284091 () Bool)

(assert (=> b!475664 (=> (not res!284091) (not e!279344))))

(assert (=> b!475664 (= res!284091 (contains!2562 lt!216786 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475664 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(declare-fun c!57148 () Bool)

(declare-fun call!30633 () ListLongMap!7875)

(declare-fun call!30630 () ListLongMap!7875)

(declare-fun bm!30627 () Bool)

(declare-fun call!30631 () ListLongMap!7875)

(declare-fun c!57151 () Bool)

(assert (=> bm!30627 (= call!30630 (+!1732 (ite c!57148 call!30634 (ite c!57151 call!30633 call!30631)) (ite (or c!57148 c!57151) (tuple2!8949 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))))))

(declare-fun bm!30628 () Bool)

(assert (=> bm!30628 (= call!30633 call!30634)))

(declare-fun b!475665 () Bool)

(declare-fun get!7172 (ValueCell!6399 V!19085) V!19085)

(declare-fun dynLambda!928 (Int (_ BitVec 64)) V!19085)

(assert (=> b!475665 (= e!279344 (= (apply!336 lt!216786 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)) (get!7172 (select (arr!14753 _values!833) #b00000000000000000000000000000000) (dynLambda!928 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!475665 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15105 _values!833)))))

(assert (=> b!475665 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(declare-fun b!475666 () Bool)

(declare-fun e!279351 () Bool)

(assert (=> b!475666 (= e!279351 (validKeyInArray!0 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun d!75523 () Bool)

(declare-fun e!279355 () Bool)

(assert (=> d!75523 e!279355))

(declare-fun res!284088 () Bool)

(assert (=> d!75523 (=> (not res!284088) (not e!279355))))

(assert (=> d!75523 (= res!284088 (or (bvsge #b00000000000000000000000000000000 (size!15104 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15104 _keys!1025)))))))

(declare-fun lt!216770 () ListLongMap!7875)

(assert (=> d!75523 (= lt!216786 lt!216770)))

(declare-fun lt!216789 () Unit!13985)

(assert (=> d!75523 (= lt!216789 e!279349)))

(declare-fun c!57147 () Bool)

(assert (=> d!75523 (= c!57147 e!279351)))

(declare-fun res!284094 () Bool)

(assert (=> d!75523 (=> (not res!284094) (not e!279351))))

(assert (=> d!75523 (= res!284094 (bvslt #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(declare-fun e!279354 () ListLongMap!7875)

(assert (=> d!75523 (= lt!216770 e!279354)))

(assert (=> d!75523 (= c!57148 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75523 (validMask!0 mask!1365)))

(assert (=> d!75523 (= (getCurrentListMap!2268 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!216786)))

(declare-fun b!475658 () Bool)

(declare-fun e!279352 () ListLongMap!7875)

(declare-fun call!30632 () ListLongMap!7875)

(assert (=> b!475658 (= e!279352 call!30632)))

(declare-fun b!475667 () Bool)

(assert (=> b!475667 (= e!279356 (not call!30628))))

(declare-fun b!475668 () Bool)

(declare-fun res!284093 () Bool)

(assert (=> b!475668 (=> (not res!284093) (not e!279355))))

(assert (=> b!475668 (= res!284093 e!279347)))

(declare-fun res!284092 () Bool)

(assert (=> b!475668 (=> res!284092 e!279347)))

(assert (=> b!475668 (= res!284092 (not e!279346))))

(declare-fun res!284090 () Bool)

(assert (=> b!475668 (=> (not res!284090) (not e!279346))))

(assert (=> b!475668 (= res!284090 (bvslt #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(declare-fun b!475669 () Bool)

(assert (=> b!475669 (= e!279353 (not call!30629))))

(declare-fun b!475670 () Bool)

(assert (=> b!475670 (= e!279352 call!30631)))

(declare-fun b!475671 () Bool)

(declare-fun e!279348 () ListLongMap!7875)

(assert (=> b!475671 (= e!279348 call!30632)))

(declare-fun b!475672 () Bool)

(assert (=> b!475672 (= e!279354 (+!1732 call!30630 (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)))))

(declare-fun b!475673 () Bool)

(assert (=> b!475673 (= e!279345 (= (apply!336 lt!216786 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!38))))

(declare-fun b!475674 () Bool)

(declare-fun res!284089 () Bool)

(assert (=> b!475674 (=> (not res!284089) (not e!279355))))

(assert (=> b!475674 (= res!284089 e!279353)))

(declare-fun c!57150 () Bool)

(assert (=> b!475674 (= c!57150 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!475675 () Bool)

(assert (=> b!475675 (= e!279355 e!279356)))

(declare-fun c!57149 () Bool)

(assert (=> b!475675 (= c!57149 (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!475676 () Bool)

(assert (=> b!475676 (= e!279354 e!279348)))

(assert (=> b!475676 (= c!57151 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!30629 () Bool)

(assert (=> bm!30629 (= call!30632 call!30630)))

(declare-fun bm!30630 () Bool)

(assert (=> bm!30630 (= call!30628 (contains!2562 lt!216786 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!475677 () Bool)

(declare-fun c!57146 () Bool)

(assert (=> b!475677 (= c!57146 (and (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!475677 (= e!279348 e!279352)))

(declare-fun bm!30631 () Bool)

(assert (=> bm!30631 (= call!30631 call!30633)))

(assert (= (and d!75523 c!57148) b!475672))

(assert (= (and d!75523 (not c!57148)) b!475676))

(assert (= (and b!475676 c!57151) b!475671))

(assert (= (and b!475676 (not c!57151)) b!475677))

(assert (= (and b!475677 c!57146) b!475658))

(assert (= (and b!475677 (not c!57146)) b!475670))

(assert (= (or b!475658 b!475670) bm!30631))

(assert (= (or b!475671 bm!30631) bm!30628))

(assert (= (or b!475671 b!475658) bm!30629))

(assert (= (or b!475672 bm!30628) bm!30626))

(assert (= (or b!475672 bm!30629) bm!30627))

(assert (= (and d!75523 res!284094) b!475666))

(assert (= (and d!75523 c!57147) b!475661))

(assert (= (and d!75523 (not c!57147)) b!475657))

(assert (= (and d!75523 res!284088) b!475668))

(assert (= (and b!475668 res!284090) b!475663))

(assert (= (and b!475668 (not res!284092)) b!475664))

(assert (= (and b!475664 res!284091) b!475665))

(assert (= (and b!475668 res!284093) b!475674))

(assert (= (and b!475674 c!57150) b!475659))

(assert (= (and b!475674 (not c!57150)) b!475669))

(assert (= (and b!475659 res!284095) b!475660))

(assert (= (or b!475659 b!475669) bm!30625))

(assert (= (and b!475674 res!284089) b!475675))

(assert (= (and b!475675 c!57149) b!475662))

(assert (= (and b!475675 (not c!57149)) b!475667))

(assert (= (and b!475662 res!284087) b!475673))

(assert (= (or b!475662 b!475667) bm!30630))

(declare-fun b_lambda!10323 () Bool)

(assert (=> (not b_lambda!10323) (not b!475665)))

(declare-fun t!15048 () Bool)

(declare-fun tb!3945 () Bool)

(assert (=> (and start!42660 (= defaultEntry!841 defaultEntry!841) t!15048) tb!3945))

(declare-fun result!7477 () Bool)

(assert (=> tb!3945 (= result!7477 tp_is_empty!13485)))

(assert (=> b!475665 t!15048))

(declare-fun b_and!20579 () Bool)

(assert (= b_and!20575 (and (=> t!15048 result!7477) b_and!20579)))

(declare-fun m!457881 () Bool)

(assert (=> b!475666 m!457881))

(assert (=> b!475666 m!457881))

(declare-fun m!457883 () Bool)

(assert (=> b!475666 m!457883))

(declare-fun m!457885 () Bool)

(assert (=> b!475661 m!457885))

(declare-fun m!457887 () Bool)

(assert (=> b!475661 m!457887))

(declare-fun m!457889 () Bool)

(assert (=> b!475661 m!457889))

(assert (=> b!475661 m!457889))

(declare-fun m!457891 () Bool)

(assert (=> b!475661 m!457891))

(declare-fun m!457893 () Bool)

(assert (=> b!475661 m!457893))

(declare-fun m!457895 () Bool)

(assert (=> b!475661 m!457895))

(declare-fun m!457897 () Bool)

(assert (=> b!475661 m!457897))

(declare-fun m!457899 () Bool)

(assert (=> b!475661 m!457899))

(declare-fun m!457901 () Bool)

(assert (=> b!475661 m!457901))

(assert (=> b!475661 m!457899))

(declare-fun m!457903 () Bool)

(assert (=> b!475661 m!457903))

(assert (=> b!475661 m!457801))

(declare-fun m!457905 () Bool)

(assert (=> b!475661 m!457905))

(assert (=> b!475661 m!457885))

(declare-fun m!457907 () Bool)

(assert (=> b!475661 m!457907))

(declare-fun m!457909 () Bool)

(assert (=> b!475661 m!457909))

(declare-fun m!457911 () Bool)

(assert (=> b!475661 m!457911))

(assert (=> b!475661 m!457909))

(declare-fun m!457913 () Bool)

(assert (=> b!475661 m!457913))

(assert (=> b!475661 m!457881))

(assert (=> b!475664 m!457881))

(assert (=> b!475664 m!457881))

(declare-fun m!457915 () Bool)

(assert (=> b!475664 m!457915))

(declare-fun m!457917 () Bool)

(assert (=> bm!30630 m!457917))

(assert (=> d!75523 m!457817))

(declare-fun m!457919 () Bool)

(assert (=> b!475672 m!457919))

(assert (=> b!475665 m!457881))

(declare-fun m!457921 () Bool)

(assert (=> b!475665 m!457921))

(declare-fun m!457923 () Bool)

(assert (=> b!475665 m!457923))

(declare-fun m!457925 () Bool)

(assert (=> b!475665 m!457925))

(assert (=> b!475665 m!457881))

(assert (=> b!475665 m!457925))

(assert (=> b!475665 m!457923))

(declare-fun m!457927 () Bool)

(assert (=> b!475665 m!457927))

(assert (=> b!475663 m!457881))

(assert (=> b!475663 m!457881))

(assert (=> b!475663 m!457883))

(declare-fun m!457929 () Bool)

(assert (=> b!475660 m!457929))

(assert (=> bm!30626 m!457801))

(declare-fun m!457931 () Bool)

(assert (=> b!475673 m!457931))

(declare-fun m!457933 () Bool)

(assert (=> bm!30625 m!457933))

(declare-fun m!457935 () Bool)

(assert (=> bm!30627 m!457935))

(assert (=> b!475575 d!75523))

(declare-fun b!475680 () Bool)

(declare-fun e!279362 () Unit!13985)

(declare-fun Unit!13990 () Unit!13985)

(assert (=> b!475680 (= e!279362 Unit!13990)))

(declare-fun bm!30632 () Bool)

(declare-fun call!30636 () Bool)

(declare-fun lt!216808 () ListLongMap!7875)

(assert (=> bm!30632 (= call!30636 (contains!2562 lt!216808 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!475682 () Bool)

(declare-fun e!279366 () Bool)

(declare-fun e!279363 () Bool)

(assert (=> b!475682 (= e!279366 e!279363)))

(declare-fun res!284104 () Bool)

(assert (=> b!475682 (= res!284104 call!30636)))

(assert (=> b!475682 (=> (not res!284104) (not e!279363))))

(declare-fun b!475683 () Bool)

(assert (=> b!475683 (= e!279363 (= (apply!336 lt!216808 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!794))))

(declare-fun b!475684 () Bool)

(declare-fun lt!216799 () Unit!13985)

(assert (=> b!475684 (= e!279362 lt!216799)))

(declare-fun lt!216812 () ListLongMap!7875)

(assert (=> b!475684 (= lt!216812 (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216807 () (_ BitVec 64))

(assert (=> b!475684 (= lt!216807 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216804 () (_ BitVec 64))

(assert (=> b!475684 (= lt!216804 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216800 () Unit!13985)

(assert (=> b!475684 (= lt!216800 (addStillContains!294 lt!216812 lt!216807 zeroValue!794 lt!216804))))

(assert (=> b!475684 (contains!2562 (+!1732 lt!216812 (tuple2!8949 lt!216807 zeroValue!794)) lt!216804)))

(declare-fun lt!216795 () Unit!13985)

(assert (=> b!475684 (= lt!216795 lt!216800)))

(declare-fun lt!216801 () ListLongMap!7875)

(assert (=> b!475684 (= lt!216801 (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216796 () (_ BitVec 64))

(assert (=> b!475684 (= lt!216796 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216798 () (_ BitVec 64))

(assert (=> b!475684 (= lt!216798 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216806 () Unit!13985)

(assert (=> b!475684 (= lt!216806 (addApplyDifferent!294 lt!216801 lt!216796 minValueAfter!38 lt!216798))))

(assert (=> b!475684 (= (apply!336 (+!1732 lt!216801 (tuple2!8949 lt!216796 minValueAfter!38)) lt!216798) (apply!336 lt!216801 lt!216798))))

(declare-fun lt!216810 () Unit!13985)

(assert (=> b!475684 (= lt!216810 lt!216806)))

(declare-fun lt!216793 () ListLongMap!7875)

(assert (=> b!475684 (= lt!216793 (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216805 () (_ BitVec 64))

(assert (=> b!475684 (= lt!216805 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216791 () (_ BitVec 64))

(assert (=> b!475684 (= lt!216791 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216797 () Unit!13985)

(assert (=> b!475684 (= lt!216797 (addApplyDifferent!294 lt!216793 lt!216805 zeroValue!794 lt!216791))))

(assert (=> b!475684 (= (apply!336 (+!1732 lt!216793 (tuple2!8949 lt!216805 zeroValue!794)) lt!216791) (apply!336 lt!216793 lt!216791))))

(declare-fun lt!216794 () Unit!13985)

(assert (=> b!475684 (= lt!216794 lt!216797)))

(declare-fun lt!216803 () ListLongMap!7875)

(assert (=> b!475684 (= lt!216803 (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216809 () (_ BitVec 64))

(assert (=> b!475684 (= lt!216809 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!216802 () (_ BitVec 64))

(assert (=> b!475684 (= lt!216802 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> b!475684 (= lt!216799 (addApplyDifferent!294 lt!216803 lt!216809 minValueAfter!38 lt!216802))))

(assert (=> b!475684 (= (apply!336 (+!1732 lt!216803 (tuple2!8949 lt!216809 minValueAfter!38)) lt!216802) (apply!336 lt!216803 lt!216802))))

(declare-fun b!475685 () Bool)

(declare-fun e!279369 () Bool)

(declare-fun e!279358 () Bool)

(assert (=> b!475685 (= e!279369 e!279358)))

(declare-fun res!284096 () Bool)

(declare-fun call!30635 () Bool)

(assert (=> b!475685 (= res!284096 call!30635)))

(assert (=> b!475685 (=> (not res!284096) (not e!279358))))

(declare-fun b!475686 () Bool)

(declare-fun e!279359 () Bool)

(assert (=> b!475686 (= e!279359 (validKeyInArray!0 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun bm!30633 () Bool)

(declare-fun call!30641 () ListLongMap!7875)

(assert (=> bm!30633 (= call!30641 (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!475687 () Bool)

(declare-fun e!279360 () Bool)

(declare-fun e!279357 () Bool)

(assert (=> b!475687 (= e!279360 e!279357)))

(declare-fun res!284100 () Bool)

(assert (=> b!475687 (=> (not res!284100) (not e!279357))))

(assert (=> b!475687 (= res!284100 (contains!2562 lt!216808 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475687 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(declare-fun bm!30634 () Bool)

(declare-fun c!57157 () Bool)

(declare-fun call!30638 () ListLongMap!7875)

(declare-fun call!30637 () ListLongMap!7875)

(declare-fun c!57154 () Bool)

(declare-fun call!30640 () ListLongMap!7875)

(assert (=> bm!30634 (= call!30637 (+!1732 (ite c!57154 call!30641 (ite c!57157 call!30640 call!30638)) (ite (or c!57154 c!57157) (tuple2!8949 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794) (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))))

(declare-fun bm!30635 () Bool)

(assert (=> bm!30635 (= call!30640 call!30641)))

(declare-fun b!475688 () Bool)

(assert (=> b!475688 (= e!279357 (= (apply!336 lt!216808 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)) (get!7172 (select (arr!14753 _values!833) #b00000000000000000000000000000000) (dynLambda!928 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!475688 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15105 _values!833)))))

(assert (=> b!475688 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(declare-fun b!475689 () Bool)

(declare-fun e!279364 () Bool)

(assert (=> b!475689 (= e!279364 (validKeyInArray!0 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun d!75525 () Bool)

(declare-fun e!279368 () Bool)

(assert (=> d!75525 e!279368))

(declare-fun res!284097 () Bool)

(assert (=> d!75525 (=> (not res!284097) (not e!279368))))

(assert (=> d!75525 (= res!284097 (or (bvsge #b00000000000000000000000000000000 (size!15104 _keys!1025)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15104 _keys!1025)))))))

(declare-fun lt!216792 () ListLongMap!7875)

(assert (=> d!75525 (= lt!216808 lt!216792)))

(declare-fun lt!216811 () Unit!13985)

(assert (=> d!75525 (= lt!216811 e!279362)))

(declare-fun c!57153 () Bool)

(assert (=> d!75525 (= c!57153 e!279364)))

(declare-fun res!284103 () Bool)

(assert (=> d!75525 (=> (not res!284103) (not e!279364))))

(assert (=> d!75525 (= res!284103 (bvslt #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(declare-fun e!279367 () ListLongMap!7875)

(assert (=> d!75525 (= lt!216792 e!279367)))

(assert (=> d!75525 (= c!57154 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!75525 (validMask!0 mask!1365)))

(assert (=> d!75525 (= (getCurrentListMap!2268 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!216808)))

(declare-fun b!475681 () Bool)

(declare-fun e!279365 () ListLongMap!7875)

(declare-fun call!30639 () ListLongMap!7875)

(assert (=> b!475681 (= e!279365 call!30639)))

(declare-fun b!475690 () Bool)

(assert (=> b!475690 (= e!279369 (not call!30635))))

(declare-fun b!475691 () Bool)

(declare-fun res!284102 () Bool)

(assert (=> b!475691 (=> (not res!284102) (not e!279368))))

(assert (=> b!475691 (= res!284102 e!279360)))

(declare-fun res!284101 () Bool)

(assert (=> b!475691 (=> res!284101 e!279360)))

(assert (=> b!475691 (= res!284101 (not e!279359))))

(declare-fun res!284099 () Bool)

(assert (=> b!475691 (=> (not res!284099) (not e!279359))))

(assert (=> b!475691 (= res!284099 (bvslt #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(declare-fun b!475692 () Bool)

(assert (=> b!475692 (= e!279366 (not call!30636))))

(declare-fun b!475693 () Bool)

(assert (=> b!475693 (= e!279365 call!30638)))

(declare-fun b!475694 () Bool)

(declare-fun e!279361 () ListLongMap!7875)

(assert (=> b!475694 (= e!279361 call!30639)))

(declare-fun b!475695 () Bool)

(assert (=> b!475695 (= e!279367 (+!1732 call!30637 (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!475696 () Bool)

(assert (=> b!475696 (= e!279358 (= (apply!336 lt!216808 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!38))))

(declare-fun b!475697 () Bool)

(declare-fun res!284098 () Bool)

(assert (=> b!475697 (=> (not res!284098) (not e!279368))))

(assert (=> b!475697 (= res!284098 e!279366)))

(declare-fun c!57156 () Bool)

(assert (=> b!475697 (= c!57156 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!475698 () Bool)

(assert (=> b!475698 (= e!279368 e!279369)))

(declare-fun c!57155 () Bool)

(assert (=> b!475698 (= c!57155 (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!475699 () Bool)

(assert (=> b!475699 (= e!279367 e!279361)))

(assert (=> b!475699 (= c!57157 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!30636 () Bool)

(assert (=> bm!30636 (= call!30639 call!30637)))

(declare-fun bm!30637 () Bool)

(assert (=> bm!30637 (= call!30635 (contains!2562 lt!216808 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!475700 () Bool)

(declare-fun c!57152 () Bool)

(assert (=> b!475700 (= c!57152 (and (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!58 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!475700 (= e!279361 e!279365)))

(declare-fun bm!30638 () Bool)

(assert (=> bm!30638 (= call!30638 call!30640)))

(assert (= (and d!75525 c!57154) b!475695))

(assert (= (and d!75525 (not c!57154)) b!475699))

(assert (= (and b!475699 c!57157) b!475694))

(assert (= (and b!475699 (not c!57157)) b!475700))

(assert (= (and b!475700 c!57152) b!475681))

(assert (= (and b!475700 (not c!57152)) b!475693))

(assert (= (or b!475681 b!475693) bm!30638))

(assert (= (or b!475694 bm!30638) bm!30635))

(assert (= (or b!475694 b!475681) bm!30636))

(assert (= (or b!475695 bm!30635) bm!30633))

(assert (= (or b!475695 bm!30636) bm!30634))

(assert (= (and d!75525 res!284103) b!475689))

(assert (= (and d!75525 c!57153) b!475684))

(assert (= (and d!75525 (not c!57153)) b!475680))

(assert (= (and d!75525 res!284097) b!475691))

(assert (= (and b!475691 res!284099) b!475686))

(assert (= (and b!475691 (not res!284101)) b!475687))

(assert (= (and b!475687 res!284100) b!475688))

(assert (= (and b!475691 res!284102) b!475697))

(assert (= (and b!475697 c!57156) b!475682))

(assert (= (and b!475697 (not c!57156)) b!475692))

(assert (= (and b!475682 res!284104) b!475683))

(assert (= (or b!475682 b!475692) bm!30632))

(assert (= (and b!475697 res!284098) b!475698))

(assert (= (and b!475698 c!57155) b!475685))

(assert (= (and b!475698 (not c!57155)) b!475690))

(assert (= (and b!475685 res!284096) b!475696))

(assert (= (or b!475685 b!475690) bm!30637))

(declare-fun b_lambda!10325 () Bool)

(assert (=> (not b_lambda!10325) (not b!475688)))

(assert (=> b!475688 t!15048))

(declare-fun b_and!20581 () Bool)

(assert (= b_and!20579 (and (=> t!15048 result!7477) b_and!20581)))

(assert (=> b!475689 m!457881))

(assert (=> b!475689 m!457881))

(assert (=> b!475689 m!457883))

(declare-fun m!457937 () Bool)

(assert (=> b!475684 m!457937))

(declare-fun m!457939 () Bool)

(assert (=> b!475684 m!457939))

(declare-fun m!457941 () Bool)

(assert (=> b!475684 m!457941))

(assert (=> b!475684 m!457941))

(declare-fun m!457943 () Bool)

(assert (=> b!475684 m!457943))

(declare-fun m!457945 () Bool)

(assert (=> b!475684 m!457945))

(declare-fun m!457947 () Bool)

(assert (=> b!475684 m!457947))

(declare-fun m!457949 () Bool)

(assert (=> b!475684 m!457949))

(declare-fun m!457951 () Bool)

(assert (=> b!475684 m!457951))

(declare-fun m!457953 () Bool)

(assert (=> b!475684 m!457953))

(assert (=> b!475684 m!457951))

(declare-fun m!457955 () Bool)

(assert (=> b!475684 m!457955))

(assert (=> b!475684 m!457799))

(declare-fun m!457957 () Bool)

(assert (=> b!475684 m!457957))

(assert (=> b!475684 m!457937))

(declare-fun m!457959 () Bool)

(assert (=> b!475684 m!457959))

(declare-fun m!457961 () Bool)

(assert (=> b!475684 m!457961))

(declare-fun m!457963 () Bool)

(assert (=> b!475684 m!457963))

(assert (=> b!475684 m!457961))

(declare-fun m!457965 () Bool)

(assert (=> b!475684 m!457965))

(assert (=> b!475684 m!457881))

(assert (=> b!475687 m!457881))

(assert (=> b!475687 m!457881))

(declare-fun m!457967 () Bool)

(assert (=> b!475687 m!457967))

(declare-fun m!457969 () Bool)

(assert (=> bm!30637 m!457969))

(assert (=> d!75525 m!457817))

(declare-fun m!457971 () Bool)

(assert (=> b!475695 m!457971))

(assert (=> b!475688 m!457881))

(declare-fun m!457973 () Bool)

(assert (=> b!475688 m!457973))

(assert (=> b!475688 m!457923))

(assert (=> b!475688 m!457925))

(assert (=> b!475688 m!457881))

(assert (=> b!475688 m!457925))

(assert (=> b!475688 m!457923))

(assert (=> b!475688 m!457927))

(assert (=> b!475686 m!457881))

(assert (=> b!475686 m!457881))

(assert (=> b!475686 m!457883))

(declare-fun m!457975 () Bool)

(assert (=> b!475683 m!457975))

(assert (=> bm!30633 m!457799))

(declare-fun m!457977 () Bool)

(assert (=> b!475696 m!457977))

(declare-fun m!457979 () Bool)

(assert (=> bm!30632 m!457979))

(declare-fun m!457981 () Bool)

(assert (=> bm!30634 m!457981))

(assert (=> b!475575 d!75525))

(declare-fun d!75527 () Bool)

(declare-fun e!279370 () Bool)

(assert (=> d!75527 e!279370))

(declare-fun res!284106 () Bool)

(assert (=> d!75527 (=> (not res!284106) (not e!279370))))

(declare-fun lt!216814 () ListLongMap!7875)

(assert (=> d!75527 (= res!284106 (contains!2562 lt!216814 (_1!4484 lt!216690)))))

(declare-fun lt!216815 () List!9058)

(assert (=> d!75527 (= lt!216814 (ListLongMap!7876 lt!216815))))

(declare-fun lt!216816 () Unit!13985)

(declare-fun lt!216813 () Unit!13985)

(assert (=> d!75527 (= lt!216816 lt!216813)))

(assert (=> d!75527 (= (getValueByKey!382 lt!216815 (_1!4484 lt!216690)) (Some!387 (_2!4484 lt!216690)))))

(assert (=> d!75527 (= lt!216813 (lemmaContainsTupThenGetReturnValue!206 lt!216815 (_1!4484 lt!216690) (_2!4484 lt!216690)))))

(assert (=> d!75527 (= lt!216815 (insertStrictlySorted!208 (toList!3953 (+!1732 lt!216689 (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38))) (_1!4484 lt!216690) (_2!4484 lt!216690)))))

(assert (=> d!75527 (= (+!1732 (+!1732 lt!216689 (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!216690) lt!216814)))

(declare-fun b!475701 () Bool)

(declare-fun res!284105 () Bool)

(assert (=> b!475701 (=> (not res!284105) (not e!279370))))

(assert (=> b!475701 (= res!284105 (= (getValueByKey!382 (toList!3953 lt!216814) (_1!4484 lt!216690)) (Some!387 (_2!4484 lt!216690))))))

(declare-fun b!475702 () Bool)

(assert (=> b!475702 (= e!279370 (contains!2563 (toList!3953 lt!216814) lt!216690))))

(assert (= (and d!75527 res!284106) b!475701))

(assert (= (and b!475701 res!284105) b!475702))

(declare-fun m!457983 () Bool)

(assert (=> d!75527 m!457983))

(declare-fun m!457985 () Bool)

(assert (=> d!75527 m!457985))

(declare-fun m!457987 () Bool)

(assert (=> d!75527 m!457987))

(declare-fun m!457989 () Bool)

(assert (=> d!75527 m!457989))

(declare-fun m!457991 () Bool)

(assert (=> b!475701 m!457991))

(declare-fun m!457993 () Bool)

(assert (=> b!475702 m!457993))

(assert (=> b!475575 d!75527))

(declare-fun d!75529 () Bool)

(declare-fun e!279371 () Bool)

(assert (=> d!75529 e!279371))

(declare-fun res!284108 () Bool)

(assert (=> d!75529 (=> (not res!284108) (not e!279371))))

(declare-fun lt!216818 () ListLongMap!7875)

(assert (=> d!75529 (= res!284108 (contains!2562 lt!216818 (_1!4484 lt!216690)))))

(declare-fun lt!216819 () List!9058)

(assert (=> d!75529 (= lt!216818 (ListLongMap!7876 lt!216819))))

(declare-fun lt!216820 () Unit!13985)

(declare-fun lt!216817 () Unit!13985)

(assert (=> d!75529 (= lt!216820 lt!216817)))

(assert (=> d!75529 (= (getValueByKey!382 lt!216819 (_1!4484 lt!216690)) (Some!387 (_2!4484 lt!216690)))))

(assert (=> d!75529 (= lt!216817 (lemmaContainsTupThenGetReturnValue!206 lt!216819 (_1!4484 lt!216690) (_2!4484 lt!216690)))))

(assert (=> d!75529 (= lt!216819 (insertStrictlySorted!208 (toList!3953 lt!216688) (_1!4484 lt!216690) (_2!4484 lt!216690)))))

(assert (=> d!75529 (= (+!1732 lt!216688 lt!216690) lt!216818)))

(declare-fun b!475703 () Bool)

(declare-fun res!284107 () Bool)

(assert (=> b!475703 (=> (not res!284107) (not e!279371))))

(assert (=> b!475703 (= res!284107 (= (getValueByKey!382 (toList!3953 lt!216818) (_1!4484 lt!216690)) (Some!387 (_2!4484 lt!216690))))))

(declare-fun b!475704 () Bool)

(assert (=> b!475704 (= e!279371 (contains!2563 (toList!3953 lt!216818) lt!216690))))

(assert (= (and d!75529 res!284108) b!475703))

(assert (= (and b!475703 res!284107) b!475704))

(declare-fun m!457995 () Bool)

(assert (=> d!75529 m!457995))

(declare-fun m!457997 () Bool)

(assert (=> d!75529 m!457997))

(declare-fun m!457999 () Bool)

(assert (=> d!75529 m!457999))

(declare-fun m!458001 () Bool)

(assert (=> d!75529 m!458001))

(declare-fun m!458003 () Bool)

(assert (=> b!475703 m!458003))

(declare-fun m!458005 () Bool)

(assert (=> b!475704 m!458005))

(assert (=> b!475575 d!75529))

(declare-fun d!75531 () Bool)

(assert (=> d!75531 (= (+!1732 lt!216689 (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)) (+!1732 (+!1732 lt!216689 (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) (tuple2!8949 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun lt!216823 () Unit!13985)

(declare-fun choose!1364 (ListLongMap!7875 (_ BitVec 64) V!19085 V!19085) Unit!13985)

(assert (=> d!75531 (= lt!216823 (choose!1364 lt!216689 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(assert (=> d!75531 (= (addSameAsAddTwiceSameKeyDiffValues!164 lt!216689 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38) lt!216823)))

(declare-fun bs!15105 () Bool)

(assert (= bs!15105 d!75531))

(declare-fun m!458007 () Bool)

(assert (=> bs!15105 m!458007))

(assert (=> bs!15105 m!457803))

(assert (=> bs!15105 m!457803))

(declare-fun m!458009 () Bool)

(assert (=> bs!15105 m!458009))

(declare-fun m!458011 () Bool)

(assert (=> bs!15105 m!458011))

(assert (=> b!475575 d!75531))

(declare-fun d!75533 () Bool)

(declare-fun res!284117 () Bool)

(declare-fun e!279382 () Bool)

(assert (=> d!75533 (=> res!284117 e!279382)))

(assert (=> d!75533 (= res!284117 (bvsge #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(assert (=> d!75533 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9056) e!279382)))

(declare-fun bm!30641 () Bool)

(declare-fun call!30644 () Bool)

(declare-fun c!57160 () Bool)

(assert (=> bm!30641 (= call!30644 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!57160 (Cons!9055 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000) Nil!9056) Nil!9056)))))

(declare-fun b!475715 () Bool)

(declare-fun e!279383 () Bool)

(assert (=> b!475715 (= e!279383 call!30644)))

(declare-fun b!475716 () Bool)

(declare-fun e!279380 () Bool)

(assert (=> b!475716 (= e!279380 e!279383)))

(assert (=> b!475716 (= c!57160 (validKeyInArray!0 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475717 () Bool)

(assert (=> b!475717 (= e!279383 call!30644)))

(declare-fun b!475718 () Bool)

(assert (=> b!475718 (= e!279382 e!279380)))

(declare-fun res!284115 () Bool)

(assert (=> b!475718 (=> (not res!284115) (not e!279380))))

(declare-fun e!279381 () Bool)

(assert (=> b!475718 (= res!284115 (not e!279381))))

(declare-fun res!284116 () Bool)

(assert (=> b!475718 (=> (not res!284116) (not e!279381))))

(assert (=> b!475718 (= res!284116 (validKeyInArray!0 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475719 () Bool)

(declare-fun contains!2564 (List!9059 (_ BitVec 64)) Bool)

(assert (=> b!475719 (= e!279381 (contains!2564 Nil!9056 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)))))

(assert (= (and d!75533 (not res!284117)) b!475718))

(assert (= (and b!475718 res!284116) b!475719))

(assert (= (and b!475718 res!284115) b!475716))

(assert (= (and b!475716 c!57160) b!475717))

(assert (= (and b!475716 (not c!57160)) b!475715))

(assert (= (or b!475717 b!475715) bm!30641))

(assert (=> bm!30641 m!457881))

(declare-fun m!458013 () Bool)

(assert (=> bm!30641 m!458013))

(assert (=> b!475716 m!457881))

(assert (=> b!475716 m!457881))

(assert (=> b!475716 m!457883))

(assert (=> b!475718 m!457881))

(assert (=> b!475718 m!457881))

(assert (=> b!475718 m!457883))

(assert (=> b!475719 m!457881))

(assert (=> b!475719 m!457881))

(declare-fun m!458015 () Bool)

(assert (=> b!475719 m!458015))

(assert (=> b!475579 d!75533))

(declare-fun d!75535 () Bool)

(assert (=> d!75535 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!42660 d!75535))

(declare-fun d!75537 () Bool)

(assert (=> d!75537 (= (array_inv!10630 _keys!1025) (bvsge (size!15104 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!42660 d!75537))

(declare-fun d!75539 () Bool)

(assert (=> d!75539 (= (array_inv!10631 _values!833) (bvsge (size!15105 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!42660 d!75539))

(declare-fun d!75541 () Bool)

(declare-fun res!284123 () Bool)

(declare-fun e!279391 () Bool)

(assert (=> d!75541 (=> res!284123 e!279391)))

(assert (=> d!75541 (= res!284123 (bvsge #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(assert (=> d!75541 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!279391)))

(declare-fun bm!30644 () Bool)

(declare-fun call!30647 () Bool)

(assert (=> bm!30644 (= call!30647 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun b!475728 () Bool)

(declare-fun e!279392 () Bool)

(assert (=> b!475728 (= e!279391 e!279392)))

(declare-fun c!57163 () Bool)

(assert (=> b!475728 (= c!57163 (validKeyInArray!0 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475729 () Bool)

(declare-fun e!279390 () Bool)

(assert (=> b!475729 (= e!279390 call!30647)))

(declare-fun b!475730 () Bool)

(assert (=> b!475730 (= e!279392 e!279390)))

(declare-fun lt!216830 () (_ BitVec 64))

(assert (=> b!475730 (= lt!216830 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun lt!216832 () Unit!13985)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!30679 (_ BitVec 64) (_ BitVec 32)) Unit!13985)

(assert (=> b!475730 (= lt!216832 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!216830 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!30679 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!475730 (arrayContainsKey!0 _keys!1025 lt!216830 #b00000000000000000000000000000000)))

(declare-fun lt!216831 () Unit!13985)

(assert (=> b!475730 (= lt!216831 lt!216832)))

(declare-fun res!284122 () Bool)

(declare-datatypes ((SeekEntryResult!3548 0))(
  ( (MissingZero!3548 (index!16371 (_ BitVec 32))) (Found!3548 (index!16372 (_ BitVec 32))) (Intermediate!3548 (undefined!4360 Bool) (index!16373 (_ BitVec 32)) (x!44647 (_ BitVec 32))) (Undefined!3548) (MissingVacant!3548 (index!16374 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!30679 (_ BitVec 32)) SeekEntryResult!3548)

(assert (=> b!475730 (= res!284122 (= (seekEntryOrOpen!0 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3548 #b00000000000000000000000000000000)))))

(assert (=> b!475730 (=> (not res!284122) (not e!279390))))

(declare-fun b!475731 () Bool)

(assert (=> b!475731 (= e!279392 call!30647)))

(assert (= (and d!75541 (not res!284123)) b!475728))

(assert (= (and b!475728 c!57163) b!475730))

(assert (= (and b!475728 (not c!57163)) b!475731))

(assert (= (and b!475730 res!284122) b!475729))

(assert (= (or b!475729 b!475731) bm!30644))

(declare-fun m!458017 () Bool)

(assert (=> bm!30644 m!458017))

(assert (=> b!475728 m!457881))

(assert (=> b!475728 m!457881))

(assert (=> b!475728 m!457883))

(assert (=> b!475730 m!457881))

(declare-fun m!458019 () Bool)

(assert (=> b!475730 m!458019))

(declare-fun m!458021 () Bool)

(assert (=> b!475730 m!458021))

(assert (=> b!475730 m!457881))

(declare-fun m!458023 () Bool)

(assert (=> b!475730 m!458023))

(assert (=> b!475576 d!75541))

(declare-fun d!75543 () Bool)

(assert (=> d!75543 (= (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!216835 () Unit!13985)

(declare-fun choose!1365 (array!30679 array!30681 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!19085 V!19085 V!19085 V!19085 (_ BitVec 32) Int) Unit!13985)

(assert (=> d!75543 (= lt!216835 (choose!1365 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> d!75543 (validMask!0 mask!1365)))

(assert (=> d!75543 (= (lemmaNoChangeToArrayThenSameMapNoExtras!277 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!216835)))

(declare-fun bs!15106 () Bool)

(assert (= bs!15106 d!75543))

(assert (=> bs!15106 m!457801))

(assert (=> bs!15106 m!457799))

(declare-fun m!458025 () Bool)

(assert (=> bs!15106 m!458025))

(assert (=> bs!15106 m!457817))

(assert (=> b!475581 d!75543))

(declare-fun b!475756 () Bool)

(declare-fun e!279411 () ListLongMap!7875)

(assert (=> b!475756 (= e!279411 (ListLongMap!7876 Nil!9055))))

(declare-fun b!475757 () Bool)

(declare-fun e!279413 () ListLongMap!7875)

(assert (=> b!475757 (= e!279411 e!279413)))

(declare-fun c!57175 () Bool)

(assert (=> b!475757 (= c!57175 (validKeyInArray!0 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475758 () Bool)

(declare-fun e!279412 () Bool)

(declare-fun lt!216854 () ListLongMap!7875)

(assert (=> b!475758 (= e!279412 (= lt!216854 (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!475759 () Bool)

(declare-fun lt!216853 () Unit!13985)

(declare-fun lt!216852 () Unit!13985)

(assert (=> b!475759 (= lt!216853 lt!216852)))

(declare-fun lt!216850 () (_ BitVec 64))

(declare-fun lt!216851 () ListLongMap!7875)

(declare-fun lt!216855 () (_ BitVec 64))

(declare-fun lt!216856 () V!19085)

(assert (=> b!475759 (not (contains!2562 (+!1732 lt!216851 (tuple2!8949 lt!216850 lt!216856)) lt!216855))))

(declare-fun addStillNotContains!171 (ListLongMap!7875 (_ BitVec 64) V!19085 (_ BitVec 64)) Unit!13985)

(assert (=> b!475759 (= lt!216852 (addStillNotContains!171 lt!216851 lt!216850 lt!216856 lt!216855))))

(assert (=> b!475759 (= lt!216855 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!475759 (= lt!216856 (get!7172 (select (arr!14753 _values!833) #b00000000000000000000000000000000) (dynLambda!928 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!475759 (= lt!216850 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30650 () ListLongMap!7875)

(assert (=> b!475759 (= lt!216851 call!30650)))

(assert (=> b!475759 (= e!279413 (+!1732 call!30650 (tuple2!8949 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000) (get!7172 (select (arr!14753 _values!833) #b00000000000000000000000000000000) (dynLambda!928 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!30647 () Bool)

(assert (=> bm!30647 (= call!30650 (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!475760 () Bool)

(declare-fun e!279409 () Bool)

(declare-fun e!279410 () Bool)

(assert (=> b!475760 (= e!279409 e!279410)))

(assert (=> b!475760 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(declare-fun res!284132 () Bool)

(assert (=> b!475760 (= res!284132 (contains!2562 lt!216854 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475760 (=> (not res!284132) (not e!279410))))

(declare-fun b!475761 () Bool)

(declare-fun isEmpty!588 (ListLongMap!7875) Bool)

(assert (=> b!475761 (= e!279412 (isEmpty!588 lt!216854))))

(declare-fun d!75545 () Bool)

(declare-fun e!279408 () Bool)

(assert (=> d!75545 e!279408))

(declare-fun res!284134 () Bool)

(assert (=> d!75545 (=> (not res!284134) (not e!279408))))

(assert (=> d!75545 (= res!284134 (not (contains!2562 lt!216854 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75545 (= lt!216854 e!279411)))

(declare-fun c!57173 () Bool)

(assert (=> d!75545 (= c!57173 (bvsge #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(assert (=> d!75545 (validMask!0 mask!1365)))

(assert (=> d!75545 (= (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841) lt!216854)))

(declare-fun b!475762 () Bool)

(assert (=> b!475762 (= e!279413 call!30650)))

(declare-fun b!475763 () Bool)

(assert (=> b!475763 (= e!279409 e!279412)))

(declare-fun c!57172 () Bool)

(assert (=> b!475763 (= c!57172 (bvslt #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(declare-fun b!475764 () Bool)

(assert (=> b!475764 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(assert (=> b!475764 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15105 _values!833)))))

(assert (=> b!475764 (= e!279410 (= (apply!336 lt!216854 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)) (get!7172 (select (arr!14753 _values!833) #b00000000000000000000000000000000) (dynLambda!928 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!475765 () Bool)

(assert (=> b!475765 (= e!279408 e!279409)))

(declare-fun c!57174 () Bool)

(declare-fun e!279407 () Bool)

(assert (=> b!475765 (= c!57174 e!279407)))

(declare-fun res!284135 () Bool)

(assert (=> b!475765 (=> (not res!284135) (not e!279407))))

(assert (=> b!475765 (= res!284135 (bvslt #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(declare-fun b!475766 () Bool)

(declare-fun res!284133 () Bool)

(assert (=> b!475766 (=> (not res!284133) (not e!279408))))

(assert (=> b!475766 (= res!284133 (not (contains!2562 lt!216854 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!475767 () Bool)

(assert (=> b!475767 (= e!279407 (validKeyInArray!0 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475767 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!75545 c!57173) b!475756))

(assert (= (and d!75545 (not c!57173)) b!475757))

(assert (= (and b!475757 c!57175) b!475759))

(assert (= (and b!475757 (not c!57175)) b!475762))

(assert (= (or b!475759 b!475762) bm!30647))

(assert (= (and d!75545 res!284134) b!475766))

(assert (= (and b!475766 res!284133) b!475765))

(assert (= (and b!475765 res!284135) b!475767))

(assert (= (and b!475765 c!57174) b!475760))

(assert (= (and b!475765 (not c!57174)) b!475763))

(assert (= (and b!475760 res!284132) b!475764))

(assert (= (and b!475763 c!57172) b!475758))

(assert (= (and b!475763 (not c!57172)) b!475761))

(declare-fun b_lambda!10327 () Bool)

(assert (=> (not b_lambda!10327) (not b!475759)))

(assert (=> b!475759 t!15048))

(declare-fun b_and!20583 () Bool)

(assert (= b_and!20581 (and (=> t!15048 result!7477) b_and!20583)))

(declare-fun b_lambda!10329 () Bool)

(assert (=> (not b_lambda!10329) (not b!475764)))

(assert (=> b!475764 t!15048))

(declare-fun b_and!20585 () Bool)

(assert (= b_and!20583 (and (=> t!15048 result!7477) b_and!20585)))

(declare-fun m!458027 () Bool)

(assert (=> d!75545 m!458027))

(assert (=> d!75545 m!457817))

(assert (=> b!475760 m!457881))

(assert (=> b!475760 m!457881))

(declare-fun m!458029 () Bool)

(assert (=> b!475760 m!458029))

(declare-fun m!458031 () Bool)

(assert (=> b!475766 m!458031))

(assert (=> b!475757 m!457881))

(assert (=> b!475757 m!457881))

(assert (=> b!475757 m!457883))

(declare-fun m!458033 () Bool)

(assert (=> bm!30647 m!458033))

(declare-fun m!458035 () Bool)

(assert (=> b!475761 m!458035))

(declare-fun m!458037 () Bool)

(assert (=> b!475759 m!458037))

(declare-fun m!458039 () Bool)

(assert (=> b!475759 m!458039))

(declare-fun m!458041 () Bool)

(assert (=> b!475759 m!458041))

(assert (=> b!475759 m!457925))

(assert (=> b!475759 m!457923))

(assert (=> b!475759 m!457927))

(assert (=> b!475759 m!457923))

(assert (=> b!475759 m!457925))

(assert (=> b!475759 m!458041))

(declare-fun m!458043 () Bool)

(assert (=> b!475759 m!458043))

(assert (=> b!475759 m!457881))

(assert (=> b!475767 m!457881))

(assert (=> b!475767 m!457881))

(assert (=> b!475767 m!457883))

(assert (=> b!475764 m!457881))

(declare-fun m!458045 () Bool)

(assert (=> b!475764 m!458045))

(assert (=> b!475764 m!457925))

(assert (=> b!475764 m!457923))

(assert (=> b!475764 m!457927))

(assert (=> b!475764 m!457923))

(assert (=> b!475764 m!457925))

(assert (=> b!475764 m!457881))

(assert (=> b!475758 m!458033))

(assert (=> b!475581 d!75545))

(declare-fun b!475768 () Bool)

(declare-fun e!279418 () ListLongMap!7875)

(assert (=> b!475768 (= e!279418 (ListLongMap!7876 Nil!9055))))

(declare-fun b!475769 () Bool)

(declare-fun e!279420 () ListLongMap!7875)

(assert (=> b!475769 (= e!279418 e!279420)))

(declare-fun c!57179 () Bool)

(assert (=> b!475769 (= c!57179 (validKeyInArray!0 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!475770 () Bool)

(declare-fun e!279419 () Bool)

(declare-fun lt!216861 () ListLongMap!7875)

(assert (=> b!475770 (= e!279419 (= lt!216861 (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841)))))

(declare-fun b!475771 () Bool)

(declare-fun lt!216860 () Unit!13985)

(declare-fun lt!216859 () Unit!13985)

(assert (=> b!475771 (= lt!216860 lt!216859)))

(declare-fun lt!216857 () (_ BitVec 64))

(declare-fun lt!216862 () (_ BitVec 64))

(declare-fun lt!216863 () V!19085)

(declare-fun lt!216858 () ListLongMap!7875)

(assert (=> b!475771 (not (contains!2562 (+!1732 lt!216858 (tuple2!8949 lt!216857 lt!216863)) lt!216862))))

(assert (=> b!475771 (= lt!216859 (addStillNotContains!171 lt!216858 lt!216857 lt!216863 lt!216862))))

(assert (=> b!475771 (= lt!216862 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!475771 (= lt!216863 (get!7172 (select (arr!14753 _values!833) #b00000000000000000000000000000000) (dynLambda!928 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!475771 (= lt!216857 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000))))

(declare-fun call!30651 () ListLongMap!7875)

(assert (=> b!475771 (= lt!216858 call!30651)))

(assert (=> b!475771 (= e!279420 (+!1732 call!30651 (tuple2!8949 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000) (get!7172 (select (arr!14753 _values!833) #b00000000000000000000000000000000) (dynLambda!928 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!30648 () Bool)

(assert (=> bm!30648 (= call!30651 (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!841))))

(declare-fun b!475772 () Bool)

(declare-fun e!279416 () Bool)

(declare-fun e!279417 () Bool)

(assert (=> b!475772 (= e!279416 e!279417)))

(assert (=> b!475772 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(declare-fun res!284136 () Bool)

(assert (=> b!475772 (= res!284136 (contains!2562 lt!216861 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475772 (=> (not res!284136) (not e!279417))))

(declare-fun b!475773 () Bool)

(assert (=> b!475773 (= e!279419 (isEmpty!588 lt!216861))))

(declare-fun d!75547 () Bool)

(declare-fun e!279415 () Bool)

(assert (=> d!75547 e!279415))

(declare-fun res!284138 () Bool)

(assert (=> d!75547 (=> (not res!284138) (not e!279415))))

(assert (=> d!75547 (= res!284138 (not (contains!2562 lt!216861 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!75547 (= lt!216861 e!279418)))

(declare-fun c!57177 () Bool)

(assert (=> d!75547 (= c!57177 (bvsge #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(assert (=> d!75547 (validMask!0 mask!1365)))

(assert (=> d!75547 (= (getCurrentListMapNoExtraKeys!2106 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) lt!216861)))

(declare-fun b!475774 () Bool)

(assert (=> b!475774 (= e!279420 call!30651)))

(declare-fun b!475775 () Bool)

(assert (=> b!475775 (= e!279416 e!279419)))

(declare-fun c!57176 () Bool)

(assert (=> b!475775 (= c!57176 (bvslt #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(declare-fun b!475776 () Bool)

(assert (=> b!475776 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(assert (=> b!475776 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15105 _values!833)))))

(assert (=> b!475776 (= e!279417 (= (apply!336 lt!216861 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)) (get!7172 (select (arr!14753 _values!833) #b00000000000000000000000000000000) (dynLambda!928 defaultEntry!841 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!475777 () Bool)

(assert (=> b!475777 (= e!279415 e!279416)))

(declare-fun c!57178 () Bool)

(declare-fun e!279414 () Bool)

(assert (=> b!475777 (= c!57178 e!279414)))

(declare-fun res!284139 () Bool)

(assert (=> b!475777 (=> (not res!284139) (not e!279414))))

(assert (=> b!475777 (= res!284139 (bvslt #b00000000000000000000000000000000 (size!15104 _keys!1025)))))

(declare-fun b!475778 () Bool)

(declare-fun res!284137 () Bool)

(assert (=> b!475778 (=> (not res!284137) (not e!279415))))

(assert (=> b!475778 (= res!284137 (not (contains!2562 lt!216861 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!475779 () Bool)

(assert (=> b!475779 (= e!279414 (validKeyInArray!0 (select (arr!14752 _keys!1025) #b00000000000000000000000000000000)))))

(assert (=> b!475779 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!75547 c!57177) b!475768))

(assert (= (and d!75547 (not c!57177)) b!475769))

(assert (= (and b!475769 c!57179) b!475771))

(assert (= (and b!475769 (not c!57179)) b!475774))

(assert (= (or b!475771 b!475774) bm!30648))

(assert (= (and d!75547 res!284138) b!475778))

(assert (= (and b!475778 res!284137) b!475777))

(assert (= (and b!475777 res!284139) b!475779))

(assert (= (and b!475777 c!57178) b!475772))

(assert (= (and b!475777 (not c!57178)) b!475775))

(assert (= (and b!475772 res!284136) b!475776))

(assert (= (and b!475775 c!57176) b!475770))

(assert (= (and b!475775 (not c!57176)) b!475773))

(declare-fun b_lambda!10331 () Bool)

(assert (=> (not b_lambda!10331) (not b!475771)))

(assert (=> b!475771 t!15048))

(declare-fun b_and!20587 () Bool)

(assert (= b_and!20585 (and (=> t!15048 result!7477) b_and!20587)))

(declare-fun b_lambda!10333 () Bool)

(assert (=> (not b_lambda!10333) (not b!475776)))

(assert (=> b!475776 t!15048))

(declare-fun b_and!20589 () Bool)

(assert (= b_and!20587 (and (=> t!15048 result!7477) b_and!20589)))

(declare-fun m!458047 () Bool)

(assert (=> d!75547 m!458047))

(assert (=> d!75547 m!457817))

(assert (=> b!475772 m!457881))

(assert (=> b!475772 m!457881))

(declare-fun m!458049 () Bool)

(assert (=> b!475772 m!458049))

(declare-fun m!458051 () Bool)

(assert (=> b!475778 m!458051))

(assert (=> b!475769 m!457881))

(assert (=> b!475769 m!457881))

(assert (=> b!475769 m!457883))

(declare-fun m!458053 () Bool)

(assert (=> bm!30648 m!458053))

(declare-fun m!458055 () Bool)

(assert (=> b!475773 m!458055))

(declare-fun m!458057 () Bool)

(assert (=> b!475771 m!458057))

(declare-fun m!458059 () Bool)

(assert (=> b!475771 m!458059))

(declare-fun m!458061 () Bool)

(assert (=> b!475771 m!458061))

(assert (=> b!475771 m!457925))

(assert (=> b!475771 m!457923))

(assert (=> b!475771 m!457927))

(assert (=> b!475771 m!457923))

(assert (=> b!475771 m!457925))

(assert (=> b!475771 m!458061))

(declare-fun m!458063 () Bool)

(assert (=> b!475771 m!458063))

(assert (=> b!475771 m!457881))

(assert (=> b!475779 m!457881))

(assert (=> b!475779 m!457881))

(assert (=> b!475779 m!457883))

(assert (=> b!475776 m!457881))

(declare-fun m!458065 () Bool)

(assert (=> b!475776 m!458065))

(assert (=> b!475776 m!457925))

(assert (=> b!475776 m!457923))

(assert (=> b!475776 m!457927))

(assert (=> b!475776 m!457923))

(assert (=> b!475776 m!457925))

(assert (=> b!475776 m!457881))

(assert (=> b!475770 m!458053))

(assert (=> b!475581 d!75547))

(declare-fun b!475786 () Bool)

(declare-fun e!279425 () Bool)

(assert (=> b!475786 (= e!279425 tp_is_empty!13485)))

(declare-fun condMapEmpty!21958 () Bool)

(declare-fun mapDefault!21958 () ValueCell!6399)

(assert (=> mapNonEmpty!21952 (= condMapEmpty!21958 (= mapRest!21952 ((as const (Array (_ BitVec 32) ValueCell!6399)) mapDefault!21958)))))

(declare-fun e!279426 () Bool)

(declare-fun mapRes!21958 () Bool)

(assert (=> mapNonEmpty!21952 (= tp!42216 (and e!279426 mapRes!21958))))

(declare-fun b!475787 () Bool)

(assert (=> b!475787 (= e!279426 tp_is_empty!13485)))

(declare-fun mapNonEmpty!21958 () Bool)

(declare-fun tp!42226 () Bool)

(assert (=> mapNonEmpty!21958 (= mapRes!21958 (and tp!42226 e!279425))))

(declare-fun mapValue!21958 () ValueCell!6399)

(declare-fun mapRest!21958 () (Array (_ BitVec 32) ValueCell!6399))

(declare-fun mapKey!21958 () (_ BitVec 32))

(assert (=> mapNonEmpty!21958 (= mapRest!21952 (store mapRest!21958 mapKey!21958 mapValue!21958))))

(declare-fun mapIsEmpty!21958 () Bool)

(assert (=> mapIsEmpty!21958 mapRes!21958))

(assert (= (and mapNonEmpty!21952 condMapEmpty!21958) mapIsEmpty!21958))

(assert (= (and mapNonEmpty!21952 (not condMapEmpty!21958)) mapNonEmpty!21958))

(assert (= (and mapNonEmpty!21958 ((_ is ValueCellFull!6399) mapValue!21958)) b!475786))

(assert (= (and mapNonEmpty!21952 ((_ is ValueCellFull!6399) mapDefault!21958)) b!475787))

(declare-fun m!458067 () Bool)

(assert (=> mapNonEmpty!21958 m!458067))

(declare-fun b_lambda!10335 () Bool)

(assert (= b_lambda!10331 (or (and start!42660 b_free!12057) b_lambda!10335)))

(declare-fun b_lambda!10337 () Bool)

(assert (= b_lambda!10333 (or (and start!42660 b_free!12057) b_lambda!10337)))

(declare-fun b_lambda!10339 () Bool)

(assert (= b_lambda!10329 (or (and start!42660 b_free!12057) b_lambda!10339)))

(declare-fun b_lambda!10341 () Bool)

(assert (= b_lambda!10325 (or (and start!42660 b_free!12057) b_lambda!10341)))

(declare-fun b_lambda!10343 () Bool)

(assert (= b_lambda!10323 (or (and start!42660 b_free!12057) b_lambda!10343)))

(declare-fun b_lambda!10345 () Bool)

(assert (= b_lambda!10327 (or (and start!42660 b_free!12057) b_lambda!10345)))

(check-sat (not d!75525) (not bm!30637) (not b!475614) (not d!75543) (not b!475769) (not d!75531) (not d!75523) tp_is_empty!13485 (not bm!30633) (not b!475767) b_and!20589 (not b!475764) (not b!475689) (not bm!30626) (not b_lambda!10341) (not b!475771) (not b!475728) (not b!475702) (not b!475758) (not bm!30630) (not bm!30632) (not mapNonEmpty!21958) (not d!75527) (not b!475611) (not b!475664) (not b_lambda!10335) (not b!475663) (not b!475687) (not bm!30627) (not b_lambda!10343) (not b_lambda!10337) (not b!475719) (not b!475613) (not b!475770) (not bm!30625) (not d!75547) (not b!475688) (not b!475772) (not b!475776) (not b!475673) (not bm!30641) (not b_lambda!10339) (not b!475779) (not b!475661) (not b!475612) (not d!75545) (not b!475778) (not b!475666) (not b!475672) (not d!75521) (not b!475761) (not b!475695) (not b!475696) (not b!475660) (not b!475759) (not b!475760) (not d!75519) (not b_next!12057) (not b!475716) (not b!475683) (not b!475757) (not bm!30648) (not b!475703) (not b!475701) (not b!475766) (not b!475704) (not b!475730) (not b!475773) (not b!475718) (not b_lambda!10345) (not bm!30644) (not bm!30634) (not b!475665) (not bm!30647) (not d!75529) (not b!475684) (not b!475686))
(check-sat b_and!20589 (not b_next!12057))
