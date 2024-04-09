; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93636 () Bool)

(assert start!93636)

(declare-fun b!1059126 () Bool)

(declare-fun e!602793 () Bool)

(declare-datatypes ((List!22542 0))(
  ( (Nil!22539) (Cons!22538 (h!23747 (_ BitVec 64)) (t!31856 List!22542)) )
))
(declare-fun noDuplicate!1588 (List!22542) Bool)

(assert (=> b!1059126 (= e!602793 (not (noDuplicate!1588 Nil!22539)))))

(declare-fun b!1059127 () Bool)

(declare-fun res!707635 () Bool)

(assert (=> b!1059127 (=> (not res!707635) (not e!602793))))

(declare-datatypes ((array!66860 0))(
  ( (array!66861 (arr!32138 (Array (_ BitVec 32) (_ BitVec 64))) (size!32675 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66860)

(assert (=> b!1059127 (= res!707635 (and (bvsle #b00000000000000000000000000000000 (size!32675 _keys!1163)) (bvslt (size!32675 _keys!1163) #b01111111111111111111111111111111)))))

(declare-fun b!1059128 () Bool)

(declare-fun res!707632 () Bool)

(assert (=> b!1059128 (=> (not res!707632) (not e!602793))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66860 (_ BitVec 32)) Bool)

(assert (=> b!1059128 (= res!707632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1059129 () Bool)

(declare-fun e!602789 () Bool)

(declare-fun e!602792 () Bool)

(declare-fun mapRes!39049 () Bool)

(assert (=> b!1059129 (= e!602789 (and e!602792 mapRes!39049))))

(declare-fun condMapEmpty!39049 () Bool)

(declare-datatypes ((V!38371 0))(
  ( (V!38372 (val!12514 Int)) )
))
(declare-datatypes ((ValueCell!11760 0))(
  ( (ValueCellFull!11760 (v!15124 V!38371)) (EmptyCell!11760) )
))
(declare-datatypes ((array!66862 0))(
  ( (array!66863 (arr!32139 (Array (_ BitVec 32) ValueCell!11760)) (size!32676 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66862)

(declare-fun mapDefault!39049 () ValueCell!11760)

(assert (=> b!1059129 (= condMapEmpty!39049 (= (arr!32139 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11760)) mapDefault!39049)))))

(declare-fun b!1059130 () Bool)

(declare-fun tp_is_empty!24927 () Bool)

(assert (=> b!1059130 (= e!602792 tp_is_empty!24927)))

(declare-fun res!707633 () Bool)

(assert (=> start!93636 (=> (not res!707633) (not e!602793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93636 (= res!707633 (validMask!0 mask!1515))))

(assert (=> start!93636 e!602793))

(assert (=> start!93636 true))

(declare-fun array_inv!24754 (array!66862) Bool)

(assert (=> start!93636 (and (array_inv!24754 _values!955) e!602789)))

(declare-fun array_inv!24755 (array!66860) Bool)

(assert (=> start!93636 (array_inv!24755 _keys!1163)))

(declare-fun mapNonEmpty!39049 () Bool)

(declare-fun tp!74856 () Bool)

(declare-fun e!602790 () Bool)

(assert (=> mapNonEmpty!39049 (= mapRes!39049 (and tp!74856 e!602790))))

(declare-fun mapValue!39049 () ValueCell!11760)

(declare-fun mapKey!39049 () (_ BitVec 32))

(declare-fun mapRest!39049 () (Array (_ BitVec 32) ValueCell!11760))

(assert (=> mapNonEmpty!39049 (= (arr!32139 _values!955) (store mapRest!39049 mapKey!39049 mapValue!39049))))

(declare-fun b!1059131 () Bool)

(declare-fun res!707634 () Bool)

(assert (=> b!1059131 (=> (not res!707634) (not e!602793))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1059131 (= res!707634 (and (= (size!32676 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32675 _keys!1163) (size!32676 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39049 () Bool)

(assert (=> mapIsEmpty!39049 mapRes!39049))

(declare-fun b!1059132 () Bool)

(assert (=> b!1059132 (= e!602790 tp_is_empty!24927)))

(assert (= (and start!93636 res!707633) b!1059131))

(assert (= (and b!1059131 res!707634) b!1059128))

(assert (= (and b!1059128 res!707632) b!1059127))

(assert (= (and b!1059127 res!707635) b!1059126))

(assert (= (and b!1059129 condMapEmpty!39049) mapIsEmpty!39049))

(assert (= (and b!1059129 (not condMapEmpty!39049)) mapNonEmpty!39049))

(get-info :version)

(assert (= (and mapNonEmpty!39049 ((_ is ValueCellFull!11760) mapValue!39049)) b!1059132))

(assert (= (and b!1059129 ((_ is ValueCellFull!11760) mapDefault!39049)) b!1059130))

(assert (= start!93636 b!1059129))

(declare-fun m!978779 () Bool)

(assert (=> b!1059126 m!978779))

(declare-fun m!978781 () Bool)

(assert (=> b!1059128 m!978781))

(declare-fun m!978783 () Bool)

(assert (=> start!93636 m!978783))

(declare-fun m!978785 () Bool)

(assert (=> start!93636 m!978785))

(declare-fun m!978787 () Bool)

(assert (=> start!93636 m!978787))

(declare-fun m!978789 () Bool)

(assert (=> mapNonEmpty!39049 m!978789))

(check-sat (not b!1059128) tp_is_empty!24927 (not mapNonEmpty!39049) (not b!1059126) (not start!93636))
(check-sat)
(get-model)

(declare-fun d!128655 () Bool)

(assert (=> d!128655 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!93636 d!128655))

(declare-fun d!128657 () Bool)

(assert (=> d!128657 (= (array_inv!24754 _values!955) (bvsge (size!32676 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!93636 d!128657))

(declare-fun d!128659 () Bool)

(assert (=> d!128659 (= (array_inv!24755 _keys!1163) (bvsge (size!32675 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!93636 d!128659))

(declare-fun d!128661 () Bool)

(declare-fun res!707652 () Bool)

(declare-fun e!602813 () Bool)

(assert (=> d!128661 (=> res!707652 e!602813)))

(assert (=> d!128661 (= res!707652 ((_ is Nil!22539) Nil!22539))))

(assert (=> d!128661 (= (noDuplicate!1588 Nil!22539) e!602813)))

(declare-fun b!1059158 () Bool)

(declare-fun e!602814 () Bool)

(assert (=> b!1059158 (= e!602813 e!602814)))

(declare-fun res!707653 () Bool)

(assert (=> b!1059158 (=> (not res!707653) (not e!602814))))

(declare-fun contains!6226 (List!22542 (_ BitVec 64)) Bool)

(assert (=> b!1059158 (= res!707653 (not (contains!6226 (t!31856 Nil!22539) (h!23747 Nil!22539))))))

(declare-fun b!1059159 () Bool)

(assert (=> b!1059159 (= e!602814 (noDuplicate!1588 (t!31856 Nil!22539)))))

(assert (= (and d!128661 (not res!707652)) b!1059158))

(assert (= (and b!1059158 res!707653) b!1059159))

(declare-fun m!978803 () Bool)

(assert (=> b!1059158 m!978803))

(declare-fun m!978805 () Bool)

(assert (=> b!1059159 m!978805))

(assert (=> b!1059126 d!128661))

(declare-fun b!1059168 () Bool)

(declare-fun e!602821 () Bool)

(declare-fun call!44882 () Bool)

(assert (=> b!1059168 (= e!602821 call!44882)))

(declare-fun b!1059169 () Bool)

(declare-fun e!602822 () Bool)

(assert (=> b!1059169 (= e!602822 call!44882)))

(declare-fun bm!44879 () Bool)

(assert (=> bm!44879 (= call!44882 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1059170 () Bool)

(assert (=> b!1059170 (= e!602822 e!602821)))

(declare-fun lt!467070 () (_ BitVec 64))

(assert (=> b!1059170 (= lt!467070 (select (arr!32138 _keys!1163) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!34707 0))(
  ( (Unit!34708) )
))
(declare-fun lt!467069 () Unit!34707)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!66860 (_ BitVec 64) (_ BitVec 32)) Unit!34707)

(assert (=> b!1059170 (= lt!467069 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!467070 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!66860 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1059170 (arrayContainsKey!0 _keys!1163 lt!467070 #b00000000000000000000000000000000)))

(declare-fun lt!467071 () Unit!34707)

(assert (=> b!1059170 (= lt!467071 lt!467069)))

(declare-fun res!707658 () Bool)

(declare-datatypes ((SeekEntryResult!9864 0))(
  ( (MissingZero!9864 (index!41826 (_ BitVec 32))) (Found!9864 (index!41827 (_ BitVec 32))) (Intermediate!9864 (undefined!10676 Bool) (index!41828 (_ BitVec 32)) (x!94636 (_ BitVec 32))) (Undefined!9864) (MissingVacant!9864 (index!41829 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!66860 (_ BitVec 32)) SeekEntryResult!9864)

(assert (=> b!1059170 (= res!707658 (= (seekEntryOrOpen!0 (select (arr!32138 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9864 #b00000000000000000000000000000000)))))

(assert (=> b!1059170 (=> (not res!707658) (not e!602821))))

(declare-fun b!1059171 () Bool)

(declare-fun e!602823 () Bool)

(assert (=> b!1059171 (= e!602823 e!602822)))

(declare-fun c!107138 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1059171 (= c!107138 (validKeyInArray!0 (select (arr!32138 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!128663 () Bool)

(declare-fun res!707659 () Bool)

(assert (=> d!128663 (=> res!707659 e!602823)))

(assert (=> d!128663 (= res!707659 (bvsge #b00000000000000000000000000000000 (size!32675 _keys!1163)))))

(assert (=> d!128663 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!602823)))

(assert (= (and d!128663 (not res!707659)) b!1059171))

(assert (= (and b!1059171 c!107138) b!1059170))

(assert (= (and b!1059171 (not c!107138)) b!1059169))

(assert (= (and b!1059170 res!707658) b!1059168))

(assert (= (or b!1059168 b!1059169) bm!44879))

(declare-fun m!978807 () Bool)

(assert (=> bm!44879 m!978807))

(declare-fun m!978809 () Bool)

(assert (=> b!1059170 m!978809))

(declare-fun m!978811 () Bool)

(assert (=> b!1059170 m!978811))

(declare-fun m!978813 () Bool)

(assert (=> b!1059170 m!978813))

(assert (=> b!1059170 m!978809))

(declare-fun m!978815 () Bool)

(assert (=> b!1059170 m!978815))

(assert (=> b!1059171 m!978809))

(assert (=> b!1059171 m!978809))

(declare-fun m!978817 () Bool)

(assert (=> b!1059171 m!978817))

(assert (=> b!1059128 d!128663))

(declare-fun condMapEmpty!39055 () Bool)

(declare-fun mapDefault!39055 () ValueCell!11760)

(assert (=> mapNonEmpty!39049 (= condMapEmpty!39055 (= mapRest!39049 ((as const (Array (_ BitVec 32) ValueCell!11760)) mapDefault!39055)))))

(declare-fun e!602829 () Bool)

(declare-fun mapRes!39055 () Bool)

(assert (=> mapNonEmpty!39049 (= tp!74856 (and e!602829 mapRes!39055))))

(declare-fun b!1059178 () Bool)

(declare-fun e!602828 () Bool)

(assert (=> b!1059178 (= e!602828 tp_is_empty!24927)))

(declare-fun b!1059179 () Bool)

(assert (=> b!1059179 (= e!602829 tp_is_empty!24927)))

(declare-fun mapIsEmpty!39055 () Bool)

(assert (=> mapIsEmpty!39055 mapRes!39055))

(declare-fun mapNonEmpty!39055 () Bool)

(declare-fun tp!74862 () Bool)

(assert (=> mapNonEmpty!39055 (= mapRes!39055 (and tp!74862 e!602828))))

(declare-fun mapKey!39055 () (_ BitVec 32))

(declare-fun mapRest!39055 () (Array (_ BitVec 32) ValueCell!11760))

(declare-fun mapValue!39055 () ValueCell!11760)

(assert (=> mapNonEmpty!39055 (= mapRest!39049 (store mapRest!39055 mapKey!39055 mapValue!39055))))

(assert (= (and mapNonEmpty!39049 condMapEmpty!39055) mapIsEmpty!39055))

(assert (= (and mapNonEmpty!39049 (not condMapEmpty!39055)) mapNonEmpty!39055))

(assert (= (and mapNonEmpty!39055 ((_ is ValueCellFull!11760) mapValue!39055)) b!1059178))

(assert (= (and mapNonEmpty!39049 ((_ is ValueCellFull!11760) mapDefault!39055)) b!1059179))

(declare-fun m!978819 () Bool)

(assert (=> mapNonEmpty!39055 m!978819))

(check-sat (not b!1059171) (not b!1059159) (not b!1059158) tp_is_empty!24927 (not b!1059170) (not mapNonEmpty!39055) (not bm!44879))
(check-sat)
