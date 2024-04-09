; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95004 () Bool)

(assert start!95004)

(declare-fun b_free!22161 () Bool)

(declare-fun b_next!22161 () Bool)

(assert (=> start!95004 (= b_free!22161 (not b_next!22161))))

(declare-fun tp!77951 () Bool)

(declare-fun b_and!35041 () Bool)

(assert (=> start!95004 (= tp!77951 b_and!35041)))

(declare-fun res!716152 () Bool)

(declare-fun e!613478 () Bool)

(assert (=> start!95004 (=> (not res!716152) (not e!613478))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95004 (= res!716152 (validMask!0 mask!1515))))

(assert (=> start!95004 e!613478))

(assert (=> start!95004 true))

(declare-fun tp_is_empty!25971 () Bool)

(assert (=> start!95004 tp_is_empty!25971))

(declare-datatypes ((V!39763 0))(
  ( (V!39764 (val!13036 Int)) )
))
(declare-datatypes ((ValueCell!12282 0))(
  ( (ValueCellFull!12282 (v!15655 V!39763)) (EmptyCell!12282) )
))
(declare-datatypes ((array!68866 0))(
  ( (array!68867 (arr!33122 (Array (_ BitVec 32) ValueCell!12282)) (size!33659 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68866)

(declare-fun e!613476 () Bool)

(declare-fun array_inv!25452 (array!68866) Bool)

(assert (=> start!95004 (and (array_inv!25452 _values!955) e!613476)))

(assert (=> start!95004 tp!77951))

(declare-datatypes ((array!68868 0))(
  ( (array!68869 (arr!33123 (Array (_ BitVec 32) (_ BitVec 64))) (size!33660 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68868)

(declare-fun array_inv!25453 (array!68868) Bool)

(assert (=> start!95004 (array_inv!25453 _keys!1163)))

(declare-fun mapNonEmpty!40672 () Bool)

(declare-fun mapRes!40672 () Bool)

(declare-fun tp!77952 () Bool)

(declare-fun e!613473 () Bool)

(assert (=> mapNonEmpty!40672 (= mapRes!40672 (and tp!77952 e!613473))))

(declare-fun mapValue!40672 () ValueCell!12282)

(declare-fun mapRest!40672 () (Array (_ BitVec 32) ValueCell!12282))

(declare-fun mapKey!40672 () (_ BitVec 32))

(assert (=> mapNonEmpty!40672 (= (arr!33122 _values!955) (store mapRest!40672 mapKey!40672 mapValue!40672))))

(declare-fun b!1073676 () Bool)

(declare-fun res!716148 () Bool)

(assert (=> b!1073676 (=> (not res!716148) (not e!613478))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68868 (_ BitVec 32)) Bool)

(assert (=> b!1073676 (= res!716148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1073677 () Bool)

(declare-fun res!716149 () Bool)

(assert (=> b!1073677 (=> (not res!716149) (not e!613478))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1073677 (= res!716149 (and (= (size!33659 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33660 _keys!1163) (size!33659 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1073678 () Bool)

(declare-fun e!613474 () Bool)

(assert (=> b!1073678 (= e!613474 tp_is_empty!25971)))

(declare-fun b!1073679 () Bool)

(assert (=> b!1073679 (= e!613473 tp_is_empty!25971)))

(declare-fun b!1073680 () Bool)

(declare-fun e!613477 () Bool)

(assert (=> b!1073680 (= e!613478 (not e!613477))))

(declare-fun res!716151 () Bool)

(assert (=> b!1073680 (=> res!716151 e!613477)))

(assert (=> b!1073680 (= res!716151 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16668 0))(
  ( (tuple2!16669 (_1!8344 (_ BitVec 64)) (_2!8344 V!39763)) )
))
(declare-datatypes ((List!23245 0))(
  ( (Nil!23242) (Cons!23241 (h!24450 tuple2!16668) (t!32591 List!23245)) )
))
(declare-datatypes ((ListLongMap!14649 0))(
  ( (ListLongMap!14650 (toList!7340 List!23245)) )
))
(declare-fun lt!476124 () ListLongMap!14649)

(declare-fun lt!476122 () ListLongMap!14649)

(assert (=> b!1073680 (= lt!476124 lt!476122)))

(declare-datatypes ((Unit!35303 0))(
  ( (Unit!35304) )
))
(declare-fun lt!476123 () Unit!35303)

(declare-fun minValue!907 () V!39763)

(declare-fun zeroValueBefore!47 () V!39763)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39763)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!888 (array!68868 array!68866 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39763 V!39763 V!39763 V!39763 (_ BitVec 32) Int) Unit!35303)

(assert (=> b!1073680 (= lt!476123 (lemmaNoChangeToArrayThenSameMapNoExtras!888 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3869 (array!68868 array!68866 (_ BitVec 32) (_ BitVec 32) V!39763 V!39763 (_ BitVec 32) Int) ListLongMap!14649)

(assert (=> b!1073680 (= lt!476122 (getCurrentListMapNoExtraKeys!3869 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1073680 (= lt!476124 (getCurrentListMapNoExtraKeys!3869 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1073681 () Bool)

(declare-fun res!716150 () Bool)

(assert (=> b!1073681 (=> (not res!716150) (not e!613478))))

(declare-datatypes ((List!23246 0))(
  ( (Nil!23243) (Cons!23242 (h!24451 (_ BitVec 64)) (t!32592 List!23246)) )
))
(declare-fun arrayNoDuplicates!0 (array!68868 (_ BitVec 32) List!23246) Bool)

(assert (=> b!1073681 (= res!716150 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23243))))

(declare-fun b!1073682 () Bool)

(assert (=> b!1073682 (= e!613476 (and e!613474 mapRes!40672))))

(declare-fun condMapEmpty!40672 () Bool)

(declare-fun mapDefault!40672 () ValueCell!12282)

(assert (=> b!1073682 (= condMapEmpty!40672 (= (arr!33122 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12282)) mapDefault!40672)))))

(declare-fun b!1073683 () Bool)

(declare-fun contains!6343 (ListLongMap!14649 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4178 (array!68868 array!68866 (_ BitVec 32) (_ BitVec 32) V!39763 V!39763 (_ BitVec 32) Int) ListLongMap!14649)

(assert (=> b!1073683 (= e!613477 (not (contains!6343 (getCurrentListMap!4178 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!40672 () Bool)

(assert (=> mapIsEmpty!40672 mapRes!40672))

(assert (= (and start!95004 res!716152) b!1073677))

(assert (= (and b!1073677 res!716149) b!1073676))

(assert (= (and b!1073676 res!716148) b!1073681))

(assert (= (and b!1073681 res!716150) b!1073680))

(assert (= (and b!1073680 (not res!716151)) b!1073683))

(assert (= (and b!1073682 condMapEmpty!40672) mapIsEmpty!40672))

(assert (= (and b!1073682 (not condMapEmpty!40672)) mapNonEmpty!40672))

(get-info :version)

(assert (= (and mapNonEmpty!40672 ((_ is ValueCellFull!12282) mapValue!40672)) b!1073679))

(assert (= (and b!1073682 ((_ is ValueCellFull!12282) mapDefault!40672)) b!1073678))

(assert (= start!95004 b!1073682))

(declare-fun m!992731 () Bool)

(assert (=> mapNonEmpty!40672 m!992731))

(declare-fun m!992733 () Bool)

(assert (=> b!1073683 m!992733))

(assert (=> b!1073683 m!992733))

(declare-fun m!992735 () Bool)

(assert (=> b!1073683 m!992735))

(declare-fun m!992737 () Bool)

(assert (=> start!95004 m!992737))

(declare-fun m!992739 () Bool)

(assert (=> start!95004 m!992739))

(declare-fun m!992741 () Bool)

(assert (=> start!95004 m!992741))

(declare-fun m!992743 () Bool)

(assert (=> b!1073680 m!992743))

(declare-fun m!992745 () Bool)

(assert (=> b!1073680 m!992745))

(declare-fun m!992747 () Bool)

(assert (=> b!1073680 m!992747))

(declare-fun m!992749 () Bool)

(assert (=> b!1073681 m!992749))

(declare-fun m!992751 () Bool)

(assert (=> b!1073676 m!992751))

(check-sat (not start!95004) tp_is_empty!25971 (not b!1073683) (not b!1073676) (not b_next!22161) (not mapNonEmpty!40672) b_and!35041 (not b!1073681) (not b!1073680))
(check-sat b_and!35041 (not b_next!22161))
(get-model)

(declare-fun d!129391 () Bool)

(declare-fun e!613502 () Bool)

(assert (=> d!129391 e!613502))

(declare-fun res!716170 () Bool)

(assert (=> d!129391 (=> res!716170 e!613502)))

(declare-fun lt!476144 () Bool)

(assert (=> d!129391 (= res!716170 (not lt!476144))))

(declare-fun lt!476143 () Bool)

(assert (=> d!129391 (= lt!476144 lt!476143)))

(declare-fun lt!476145 () Unit!35303)

(declare-fun e!613501 () Unit!35303)

(assert (=> d!129391 (= lt!476145 e!613501)))

(declare-fun c!107714 () Bool)

(assert (=> d!129391 (= c!107714 lt!476143)))

(declare-fun containsKey!577 (List!23245 (_ BitVec 64)) Bool)

(assert (=> d!129391 (= lt!476143 (containsKey!577 (toList!7340 (getCurrentListMap!4178 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129391 (= (contains!6343 (getCurrentListMap!4178 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) #b0000000000000000000000000000000000000000000000000000000000000000) lt!476144)))

(declare-fun b!1073714 () Bool)

(declare-fun lt!476142 () Unit!35303)

(assert (=> b!1073714 (= e!613501 lt!476142)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!409 (List!23245 (_ BitVec 64)) Unit!35303)

(assert (=> b!1073714 (= lt!476142 (lemmaContainsKeyImpliesGetValueByKeyDefined!409 (toList!7340 (getCurrentListMap!4178 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!659 0))(
  ( (Some!658 (v!15657 V!39763)) (None!657) )
))
(declare-fun isDefined!449 (Option!659) Bool)

(declare-fun getValueByKey!608 (List!23245 (_ BitVec 64)) Option!659)

(assert (=> b!1073714 (isDefined!449 (getValueByKey!608 (toList!7340 (getCurrentListMap!4178 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1073715 () Bool)

(declare-fun Unit!35305 () Unit!35303)

(assert (=> b!1073715 (= e!613501 Unit!35305)))

(declare-fun b!1073716 () Bool)

(assert (=> b!1073716 (= e!613502 (isDefined!449 (getValueByKey!608 (toList!7340 (getCurrentListMap!4178 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!129391 c!107714) b!1073714))

(assert (= (and d!129391 (not c!107714)) b!1073715))

(assert (= (and d!129391 (not res!716170)) b!1073716))

(declare-fun m!992775 () Bool)

(assert (=> d!129391 m!992775))

(declare-fun m!992777 () Bool)

(assert (=> b!1073714 m!992777))

(declare-fun m!992779 () Bool)

(assert (=> b!1073714 m!992779))

(assert (=> b!1073714 m!992779))

(declare-fun m!992781 () Bool)

(assert (=> b!1073714 m!992781))

(assert (=> b!1073716 m!992779))

(assert (=> b!1073716 m!992779))

(assert (=> b!1073716 m!992781))

(assert (=> b!1073683 d!129391))

(declare-fun b!1073759 () Bool)

(declare-fun e!613533 () Bool)

(declare-fun e!613535 () Bool)

(assert (=> b!1073759 (= e!613533 e!613535)))

(declare-fun c!107727 () Bool)

(assert (=> b!1073759 (= c!107727 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!45308 () ListLongMap!14649)

(declare-fun bm!45300 () Bool)

(assert (=> bm!45300 (= call!45308 (getCurrentListMapNoExtraKeys!3869 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1073760 () Bool)

(declare-fun e!613536 () ListLongMap!14649)

(declare-fun call!45305 () ListLongMap!14649)

(declare-fun +!3171 (ListLongMap!14649 tuple2!16668) ListLongMap!14649)

(assert (=> b!1073760 (= e!613536 (+!3171 call!45305 (tuple2!16669 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun bm!45301 () Bool)

(declare-fun call!45309 () ListLongMap!14649)

(assert (=> bm!45301 (= call!45309 call!45305)))

(declare-fun b!1073761 () Bool)

(declare-fun e!613534 () ListLongMap!14649)

(assert (=> b!1073761 (= e!613534 call!45309)))

(declare-fun b!1073762 () Bool)

(declare-fun e!613540 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1073762 (= e!613540 (validKeyInArray!0 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1073764 () Bool)

(declare-fun call!45304 () Bool)

(assert (=> b!1073764 (= e!613535 (not call!45304))))

(declare-fun c!107729 () Bool)

(declare-fun c!107730 () Bool)

(declare-fun call!45306 () ListLongMap!14649)

(declare-fun call!45307 () ListLongMap!14649)

(declare-fun bm!45302 () Bool)

(assert (=> bm!45302 (= call!45305 (+!3171 (ite c!107730 call!45308 (ite c!107729 call!45307 call!45306)) (ite (or c!107730 c!107729) (tuple2!16669 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16669 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1073765 () Bool)

(declare-fun e!613539 () Unit!35303)

(declare-fun Unit!35306 () Unit!35303)

(assert (=> b!1073765 (= e!613539 Unit!35306)))

(declare-fun b!1073766 () Bool)

(declare-fun e!613538 () Bool)

(assert (=> b!1073766 (= e!613535 e!613538)))

(declare-fun res!716195 () Bool)

(assert (=> b!1073766 (= res!716195 call!45304)))

(assert (=> b!1073766 (=> (not res!716195) (not e!613538))))

(declare-fun b!1073767 () Bool)

(declare-fun lt!476198 () ListLongMap!14649)

(declare-fun e!613532 () Bool)

(declare-fun apply!968 (ListLongMap!14649 (_ BitVec 64)) V!39763)

(declare-fun get!17226 (ValueCell!12282 V!39763) V!39763)

(declare-fun dynLambda!2044 (Int (_ BitVec 64)) V!39763)

(assert (=> b!1073767 (= e!613532 (= (apply!968 lt!476198 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000)) (get!17226 (select (arr!33122 _values!955) #b00000000000000000000000000000000) (dynLambda!2044 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1073767 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33659 _values!955)))))

(assert (=> b!1073767 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33660 _keys!1163)))))

(declare-fun b!1073768 () Bool)

(declare-fun lt!476195 () Unit!35303)

(assert (=> b!1073768 (= e!613539 lt!476195)))

(declare-fun lt!476203 () ListLongMap!14649)

(assert (=> b!1073768 (= lt!476203 (getCurrentListMapNoExtraKeys!3869 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476191 () (_ BitVec 64))

(assert (=> b!1073768 (= lt!476191 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476194 () (_ BitVec 64))

(assert (=> b!1073768 (= lt!476194 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476207 () Unit!35303)

(declare-fun addStillContains!650 (ListLongMap!14649 (_ BitVec 64) V!39763 (_ BitVec 64)) Unit!35303)

(assert (=> b!1073768 (= lt!476207 (addStillContains!650 lt!476203 lt!476191 zeroValueBefore!47 lt!476194))))

(assert (=> b!1073768 (contains!6343 (+!3171 lt!476203 (tuple2!16669 lt!476191 zeroValueBefore!47)) lt!476194)))

(declare-fun lt!476192 () Unit!35303)

(assert (=> b!1073768 (= lt!476192 lt!476207)))

(declare-fun lt!476193 () ListLongMap!14649)

(assert (=> b!1073768 (= lt!476193 (getCurrentListMapNoExtraKeys!3869 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476201 () (_ BitVec 64))

(assert (=> b!1073768 (= lt!476201 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476204 () (_ BitVec 64))

(assert (=> b!1073768 (= lt!476204 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476206 () Unit!35303)

(declare-fun addApplyDifferent!502 (ListLongMap!14649 (_ BitVec 64) V!39763 (_ BitVec 64)) Unit!35303)

(assert (=> b!1073768 (= lt!476206 (addApplyDifferent!502 lt!476193 lt!476201 minValue!907 lt!476204))))

(assert (=> b!1073768 (= (apply!968 (+!3171 lt!476193 (tuple2!16669 lt!476201 minValue!907)) lt!476204) (apply!968 lt!476193 lt!476204))))

(declare-fun lt!476211 () Unit!35303)

(assert (=> b!1073768 (= lt!476211 lt!476206)))

(declare-fun lt!476202 () ListLongMap!14649)

(assert (=> b!1073768 (= lt!476202 (getCurrentListMapNoExtraKeys!3869 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476208 () (_ BitVec 64))

(assert (=> b!1073768 (= lt!476208 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476196 () (_ BitVec 64))

(assert (=> b!1073768 (= lt!476196 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476200 () Unit!35303)

(assert (=> b!1073768 (= lt!476200 (addApplyDifferent!502 lt!476202 lt!476208 zeroValueBefore!47 lt!476196))))

(assert (=> b!1073768 (= (apply!968 (+!3171 lt!476202 (tuple2!16669 lt!476208 zeroValueBefore!47)) lt!476196) (apply!968 lt!476202 lt!476196))))

(declare-fun lt!476205 () Unit!35303)

(assert (=> b!1073768 (= lt!476205 lt!476200)))

(declare-fun lt!476190 () ListLongMap!14649)

(assert (=> b!1073768 (= lt!476190 (getCurrentListMapNoExtraKeys!3869 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476197 () (_ BitVec 64))

(assert (=> b!1073768 (= lt!476197 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476199 () (_ BitVec 64))

(assert (=> b!1073768 (= lt!476199 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1073768 (= lt!476195 (addApplyDifferent!502 lt!476190 lt!476197 minValue!907 lt!476199))))

(assert (=> b!1073768 (= (apply!968 (+!3171 lt!476190 (tuple2!16669 lt!476197 minValue!907)) lt!476199) (apply!968 lt!476190 lt!476199))))

(declare-fun b!1073769 () Bool)

(declare-fun e!613530 () Bool)

(assert (=> b!1073769 (= e!613530 (validKeyInArray!0 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1073770 () Bool)

(declare-fun e!613541 () Bool)

(declare-fun e!613531 () Bool)

(assert (=> b!1073770 (= e!613541 e!613531)))

(declare-fun res!716196 () Bool)

(declare-fun call!45303 () Bool)

(assert (=> b!1073770 (= res!716196 call!45303)))

(assert (=> b!1073770 (=> (not res!716196) (not e!613531))))

(declare-fun b!1073771 () Bool)

(declare-fun c!107728 () Bool)

(assert (=> b!1073771 (= c!107728 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!613529 () ListLongMap!14649)

(assert (=> b!1073771 (= e!613529 e!613534)))

(declare-fun bm!45303 () Bool)

(assert (=> bm!45303 (= call!45307 call!45308)))

(declare-fun bm!45304 () Bool)

(assert (=> bm!45304 (= call!45306 call!45307)))

(declare-fun b!1073772 () Bool)

(assert (=> b!1073772 (= e!613529 call!45309)))

(declare-fun d!129393 () Bool)

(assert (=> d!129393 e!613533))

(declare-fun res!716192 () Bool)

(assert (=> d!129393 (=> (not res!716192) (not e!613533))))

(assert (=> d!129393 (= res!716192 (or (bvsge #b00000000000000000000000000000000 (size!33660 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33660 _keys!1163)))))))

(declare-fun lt!476210 () ListLongMap!14649)

(assert (=> d!129393 (= lt!476198 lt!476210)))

(declare-fun lt!476209 () Unit!35303)

(assert (=> d!129393 (= lt!476209 e!613539)))

(declare-fun c!107732 () Bool)

(assert (=> d!129393 (= c!107732 e!613540)))

(declare-fun res!716193 () Bool)

(assert (=> d!129393 (=> (not res!716193) (not e!613540))))

(assert (=> d!129393 (= res!716193 (bvslt #b00000000000000000000000000000000 (size!33660 _keys!1163)))))

(assert (=> d!129393 (= lt!476210 e!613536)))

(assert (=> d!129393 (= c!107730 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129393 (validMask!0 mask!1515)))

(assert (=> d!129393 (= (getCurrentListMap!4178 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476198)))

(declare-fun b!1073763 () Bool)

(assert (=> b!1073763 (= e!613541 (not call!45303))))

(declare-fun b!1073773 () Bool)

(declare-fun e!613537 () Bool)

(assert (=> b!1073773 (= e!613537 e!613532)))

(declare-fun res!716190 () Bool)

(assert (=> b!1073773 (=> (not res!716190) (not e!613532))))

(assert (=> b!1073773 (= res!716190 (contains!6343 lt!476198 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1073773 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33660 _keys!1163)))))

(declare-fun b!1073774 () Bool)

(declare-fun res!716194 () Bool)

(assert (=> b!1073774 (=> (not res!716194) (not e!613533))))

(assert (=> b!1073774 (= res!716194 e!613537)))

(declare-fun res!716191 () Bool)

(assert (=> b!1073774 (=> res!716191 e!613537)))

(assert (=> b!1073774 (= res!716191 (not e!613530))))

(declare-fun res!716189 () Bool)

(assert (=> b!1073774 (=> (not res!716189) (not e!613530))))

(assert (=> b!1073774 (= res!716189 (bvslt #b00000000000000000000000000000000 (size!33660 _keys!1163)))))

(declare-fun bm!45305 () Bool)

(assert (=> bm!45305 (= call!45304 (contains!6343 lt!476198 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!45306 () Bool)

(assert (=> bm!45306 (= call!45303 (contains!6343 lt!476198 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1073775 () Bool)

(declare-fun res!716197 () Bool)

(assert (=> b!1073775 (=> (not res!716197) (not e!613533))))

(assert (=> b!1073775 (= res!716197 e!613541)))

(declare-fun c!107731 () Bool)

(assert (=> b!1073775 (= c!107731 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1073776 () Bool)

(assert (=> b!1073776 (= e!613534 call!45306)))

(declare-fun b!1073777 () Bool)

(assert (=> b!1073777 (= e!613538 (= (apply!968 lt!476198 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1073778 () Bool)

(assert (=> b!1073778 (= e!613536 e!613529)))

(assert (=> b!1073778 (= c!107729 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1073779 () Bool)

(assert (=> b!1073779 (= e!613531 (= (apply!968 lt!476198 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(assert (= (and d!129393 c!107730) b!1073760))

(assert (= (and d!129393 (not c!107730)) b!1073778))

(assert (= (and b!1073778 c!107729) b!1073772))

(assert (= (and b!1073778 (not c!107729)) b!1073771))

(assert (= (and b!1073771 c!107728) b!1073761))

(assert (= (and b!1073771 (not c!107728)) b!1073776))

(assert (= (or b!1073761 b!1073776) bm!45304))

(assert (= (or b!1073772 bm!45304) bm!45303))

(assert (= (or b!1073772 b!1073761) bm!45301))

(assert (= (or b!1073760 bm!45303) bm!45300))

(assert (= (or b!1073760 bm!45301) bm!45302))

(assert (= (and d!129393 res!716193) b!1073762))

(assert (= (and d!129393 c!107732) b!1073768))

(assert (= (and d!129393 (not c!107732)) b!1073765))

(assert (= (and d!129393 res!716192) b!1073774))

(assert (= (and b!1073774 res!716189) b!1073769))

(assert (= (and b!1073774 (not res!716191)) b!1073773))

(assert (= (and b!1073773 res!716190) b!1073767))

(assert (= (and b!1073774 res!716194) b!1073775))

(assert (= (and b!1073775 c!107731) b!1073770))

(assert (= (and b!1073775 (not c!107731)) b!1073763))

(assert (= (and b!1073770 res!716196) b!1073779))

(assert (= (or b!1073770 b!1073763) bm!45306))

(assert (= (and b!1073775 res!716197) b!1073759))

(assert (= (and b!1073759 c!107727) b!1073766))

(assert (= (and b!1073759 (not c!107727)) b!1073764))

(assert (= (and b!1073766 res!716195) b!1073777))

(assert (= (or b!1073766 b!1073764) bm!45305))

(declare-fun b_lambda!16771 () Bool)

(assert (=> (not b_lambda!16771) (not b!1073767)))

(declare-fun t!32595 () Bool)

(declare-fun tb!7169 () Bool)

(assert (=> (and start!95004 (= defaultEntry!963 defaultEntry!963) t!32595) tb!7169))

(declare-fun result!14799 () Bool)

(assert (=> tb!7169 (= result!14799 tp_is_empty!25971)))

(assert (=> b!1073767 t!32595))

(declare-fun b_and!35045 () Bool)

(assert (= b_and!35041 (and (=> t!32595 result!14799) b_and!35045)))

(assert (=> d!129393 m!992737))

(declare-fun m!992783 () Bool)

(assert (=> bm!45306 m!992783))

(declare-fun m!992785 () Bool)

(assert (=> b!1073769 m!992785))

(assert (=> b!1073769 m!992785))

(declare-fun m!992787 () Bool)

(assert (=> b!1073769 m!992787))

(declare-fun m!992789 () Bool)

(assert (=> b!1073779 m!992789))

(assert (=> bm!45300 m!992747))

(declare-fun m!992791 () Bool)

(assert (=> b!1073768 m!992791))

(declare-fun m!992793 () Bool)

(assert (=> b!1073768 m!992793))

(declare-fun m!992795 () Bool)

(assert (=> b!1073768 m!992795))

(declare-fun m!992797 () Bool)

(assert (=> b!1073768 m!992797))

(assert (=> b!1073768 m!992747))

(assert (=> b!1073768 m!992793))

(declare-fun m!992799 () Bool)

(assert (=> b!1073768 m!992799))

(declare-fun m!992801 () Bool)

(assert (=> b!1073768 m!992801))

(assert (=> b!1073768 m!992785))

(declare-fun m!992803 () Bool)

(assert (=> b!1073768 m!992803))

(declare-fun m!992805 () Bool)

(assert (=> b!1073768 m!992805))

(declare-fun m!992807 () Bool)

(assert (=> b!1073768 m!992807))

(assert (=> b!1073768 m!992799))

(declare-fun m!992809 () Bool)

(assert (=> b!1073768 m!992809))

(declare-fun m!992811 () Bool)

(assert (=> b!1073768 m!992811))

(assert (=> b!1073768 m!992801))

(declare-fun m!992813 () Bool)

(assert (=> b!1073768 m!992813))

(declare-fun m!992815 () Bool)

(assert (=> b!1073768 m!992815))

(declare-fun m!992817 () Bool)

(assert (=> b!1073768 m!992817))

(assert (=> b!1073768 m!992805))

(declare-fun m!992819 () Bool)

(assert (=> b!1073768 m!992819))

(declare-fun m!992821 () Bool)

(assert (=> b!1073760 m!992821))

(declare-fun m!992823 () Bool)

(assert (=> bm!45305 m!992823))

(declare-fun m!992825 () Bool)

(assert (=> b!1073767 m!992825))

(declare-fun m!992827 () Bool)

(assert (=> b!1073767 m!992827))

(assert (=> b!1073767 m!992825))

(declare-fun m!992829 () Bool)

(assert (=> b!1073767 m!992829))

(assert (=> b!1073767 m!992785))

(declare-fun m!992831 () Bool)

(assert (=> b!1073767 m!992831))

(assert (=> b!1073767 m!992827))

(assert (=> b!1073767 m!992785))

(declare-fun m!992833 () Bool)

(assert (=> bm!45302 m!992833))

(assert (=> b!1073773 m!992785))

(assert (=> b!1073773 m!992785))

(declare-fun m!992835 () Bool)

(assert (=> b!1073773 m!992835))

(assert (=> b!1073762 m!992785))

(assert (=> b!1073762 m!992785))

(assert (=> b!1073762 m!992787))

(declare-fun m!992837 () Bool)

(assert (=> b!1073777 m!992837))

(assert (=> b!1073683 d!129393))

(declare-fun d!129395 () Bool)

(assert (=> d!129395 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!95004 d!129395))

(declare-fun d!129397 () Bool)

(assert (=> d!129397 (= (array_inv!25452 _values!955) (bvsge (size!33659 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!95004 d!129397))

(declare-fun d!129399 () Bool)

(assert (=> d!129399 (= (array_inv!25453 _keys!1163) (bvsge (size!33660 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!95004 d!129399))

(declare-fun b!1073792 () Bool)

(declare-fun e!613552 () Bool)

(declare-fun contains!6345 (List!23246 (_ BitVec 64)) Bool)

(assert (=> b!1073792 (= e!613552 (contains!6345 Nil!23243 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1073794 () Bool)

(declare-fun e!613551 () Bool)

(declare-fun call!45312 () Bool)

(assert (=> b!1073794 (= e!613551 call!45312)))

(declare-fun bm!45309 () Bool)

(declare-fun c!107735 () Bool)

(assert (=> bm!45309 (= call!45312 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107735 (Cons!23242 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000) Nil!23243) Nil!23243)))))

(declare-fun b!1073795 () Bool)

(declare-fun e!613550 () Bool)

(assert (=> b!1073795 (= e!613550 e!613551)))

(assert (=> b!1073795 (= c!107735 (validKeyInArray!0 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1073796 () Bool)

(declare-fun e!613553 () Bool)

(assert (=> b!1073796 (= e!613553 e!613550)))

(declare-fun res!716206 () Bool)

(assert (=> b!1073796 (=> (not res!716206) (not e!613550))))

(assert (=> b!1073796 (= res!716206 (not e!613552))))

(declare-fun res!716204 () Bool)

(assert (=> b!1073796 (=> (not res!716204) (not e!613552))))

(assert (=> b!1073796 (= res!716204 (validKeyInArray!0 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1073793 () Bool)

(assert (=> b!1073793 (= e!613551 call!45312)))

(declare-fun d!129401 () Bool)

(declare-fun res!716205 () Bool)

(assert (=> d!129401 (=> res!716205 e!613553)))

(assert (=> d!129401 (= res!716205 (bvsge #b00000000000000000000000000000000 (size!33660 _keys!1163)))))

(assert (=> d!129401 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23243) e!613553)))

(assert (= (and d!129401 (not res!716205)) b!1073796))

(assert (= (and b!1073796 res!716204) b!1073792))

(assert (= (and b!1073796 res!716206) b!1073795))

(assert (= (and b!1073795 c!107735) b!1073793))

(assert (= (and b!1073795 (not c!107735)) b!1073794))

(assert (= (or b!1073793 b!1073794) bm!45309))

(assert (=> b!1073792 m!992785))

(assert (=> b!1073792 m!992785))

(declare-fun m!992839 () Bool)

(assert (=> b!1073792 m!992839))

(assert (=> bm!45309 m!992785))

(declare-fun m!992841 () Bool)

(assert (=> bm!45309 m!992841))

(assert (=> b!1073795 m!992785))

(assert (=> b!1073795 m!992785))

(assert (=> b!1073795 m!992787))

(assert (=> b!1073796 m!992785))

(assert (=> b!1073796 m!992785))

(assert (=> b!1073796 m!992787))

(assert (=> b!1073681 d!129401))

(declare-fun b!1073805 () Bool)

(declare-fun e!613561 () Bool)

(declare-fun e!613562 () Bool)

(assert (=> b!1073805 (= e!613561 e!613562)))

(declare-fun c!107738 () Bool)

(assert (=> b!1073805 (= c!107738 (validKeyInArray!0 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1073806 () Bool)

(declare-fun e!613560 () Bool)

(assert (=> b!1073806 (= e!613562 e!613560)))

(declare-fun lt!476220 () (_ BitVec 64))

(assert (=> b!1073806 (= lt!476220 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476218 () Unit!35303)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!68868 (_ BitVec 64) (_ BitVec 32)) Unit!35303)

(assert (=> b!1073806 (= lt!476218 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!476220 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!68868 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1073806 (arrayContainsKey!0 _keys!1163 lt!476220 #b00000000000000000000000000000000)))

(declare-fun lt!476219 () Unit!35303)

(assert (=> b!1073806 (= lt!476219 lt!476218)))

(declare-fun res!716211 () Bool)

(declare-datatypes ((SeekEntryResult!9883 0))(
  ( (MissingZero!9883 (index!41902 (_ BitVec 32))) (Found!9883 (index!41903 (_ BitVec 32))) (Intermediate!9883 (undefined!10695 Bool) (index!41904 (_ BitVec 32)) (x!96238 (_ BitVec 32))) (Undefined!9883) (MissingVacant!9883 (index!41905 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!68868 (_ BitVec 32)) SeekEntryResult!9883)

(assert (=> b!1073806 (= res!716211 (= (seekEntryOrOpen!0 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9883 #b00000000000000000000000000000000)))))

(assert (=> b!1073806 (=> (not res!716211) (not e!613560))))

(declare-fun b!1073807 () Bool)

(declare-fun call!45315 () Bool)

(assert (=> b!1073807 (= e!613562 call!45315)))

(declare-fun b!1073808 () Bool)

(assert (=> b!1073808 (= e!613560 call!45315)))

(declare-fun bm!45312 () Bool)

(assert (=> bm!45312 (= call!45315 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun d!129403 () Bool)

(declare-fun res!716212 () Bool)

(assert (=> d!129403 (=> res!716212 e!613561)))

(assert (=> d!129403 (= res!716212 (bvsge #b00000000000000000000000000000000 (size!33660 _keys!1163)))))

(assert (=> d!129403 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!613561)))

(assert (= (and d!129403 (not res!716212)) b!1073805))

(assert (= (and b!1073805 c!107738) b!1073806))

(assert (= (and b!1073805 (not c!107738)) b!1073807))

(assert (= (and b!1073806 res!716211) b!1073808))

(assert (= (or b!1073808 b!1073807) bm!45312))

(assert (=> b!1073805 m!992785))

(assert (=> b!1073805 m!992785))

(assert (=> b!1073805 m!992787))

(assert (=> b!1073806 m!992785))

(declare-fun m!992843 () Bool)

(assert (=> b!1073806 m!992843))

(declare-fun m!992845 () Bool)

(assert (=> b!1073806 m!992845))

(assert (=> b!1073806 m!992785))

(declare-fun m!992847 () Bool)

(assert (=> b!1073806 m!992847))

(declare-fun m!992849 () Bool)

(assert (=> bm!45312 m!992849))

(assert (=> b!1073676 d!129403))

(declare-fun d!129405 () Bool)

(assert (=> d!129405 (= (getCurrentListMapNoExtraKeys!3869 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3869 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476223 () Unit!35303)

(declare-fun choose!1753 (array!68868 array!68866 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39763 V!39763 V!39763 V!39763 (_ BitVec 32) Int) Unit!35303)

(assert (=> d!129405 (= lt!476223 (choose!1753 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!129405 (validMask!0 mask!1515)))

(assert (=> d!129405 (= (lemmaNoChangeToArrayThenSameMapNoExtras!888 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476223)))

(declare-fun bs!31647 () Bool)

(assert (= bs!31647 d!129405))

(assert (=> bs!31647 m!992747))

(assert (=> bs!31647 m!992745))

(declare-fun m!992851 () Bool)

(assert (=> bs!31647 m!992851))

(assert (=> bs!31647 m!992737))

(assert (=> b!1073680 d!129405))

(declare-fun lt!476240 () ListLongMap!14649)

(declare-fun e!613583 () Bool)

(declare-fun b!1073833 () Bool)

(assert (=> b!1073833 (= e!613583 (= lt!476240 (getCurrentListMapNoExtraKeys!3869 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1073834 () Bool)

(declare-fun e!613579 () ListLongMap!14649)

(declare-fun e!613581 () ListLongMap!14649)

(assert (=> b!1073834 (= e!613579 e!613581)))

(declare-fun c!107747 () Bool)

(assert (=> b!1073834 (= c!107747 (validKeyInArray!0 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1073835 () Bool)

(assert (=> b!1073835 (= e!613579 (ListLongMap!14650 Nil!23242))))

(declare-fun b!1073836 () Bool)

(declare-fun call!45318 () ListLongMap!14649)

(assert (=> b!1073836 (= e!613581 call!45318)))

(declare-fun bm!45315 () Bool)

(assert (=> bm!45315 (= call!45318 (getCurrentListMapNoExtraKeys!3869 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1073837 () Bool)

(assert (=> b!1073837 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33660 _keys!1163)))))

(assert (=> b!1073837 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33659 _values!955)))))

(declare-fun e!613578 () Bool)

(assert (=> b!1073837 (= e!613578 (= (apply!968 lt!476240 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000)) (get!17226 (select (arr!33122 _values!955) #b00000000000000000000000000000000) (dynLambda!2044 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1073838 () Bool)

(declare-fun isEmpty!954 (ListLongMap!14649) Bool)

(assert (=> b!1073838 (= e!613583 (isEmpty!954 lt!476240))))

(declare-fun b!1073839 () Bool)

(declare-fun e!613582 () Bool)

(declare-fun e!613577 () Bool)

(assert (=> b!1073839 (= e!613582 e!613577)))

(declare-fun c!107750 () Bool)

(declare-fun e!613580 () Bool)

(assert (=> b!1073839 (= c!107750 e!613580)))

(declare-fun res!716222 () Bool)

(assert (=> b!1073839 (=> (not res!716222) (not e!613580))))

(assert (=> b!1073839 (= res!716222 (bvslt #b00000000000000000000000000000000 (size!33660 _keys!1163)))))

(declare-fun b!1073840 () Bool)

(declare-fun lt!476239 () Unit!35303)

(declare-fun lt!476241 () Unit!35303)

(assert (=> b!1073840 (= lt!476239 lt!476241)))

(declare-fun lt!476242 () ListLongMap!14649)

(declare-fun lt!476244 () (_ BitVec 64))

(declare-fun lt!476238 () (_ BitVec 64))

(declare-fun lt!476243 () V!39763)

(assert (=> b!1073840 (not (contains!6343 (+!3171 lt!476242 (tuple2!16669 lt!476244 lt!476243)) lt!476238))))

(declare-fun addStillNotContains!263 (ListLongMap!14649 (_ BitVec 64) V!39763 (_ BitVec 64)) Unit!35303)

(assert (=> b!1073840 (= lt!476241 (addStillNotContains!263 lt!476242 lt!476244 lt!476243 lt!476238))))

(assert (=> b!1073840 (= lt!476238 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1073840 (= lt!476243 (get!17226 (select (arr!33122 _values!955) #b00000000000000000000000000000000) (dynLambda!2044 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1073840 (= lt!476244 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1073840 (= lt!476242 call!45318)))

(assert (=> b!1073840 (= e!613581 (+!3171 call!45318 (tuple2!16669 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000) (get!17226 (select (arr!33122 _values!955) #b00000000000000000000000000000000) (dynLambda!2044 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1073841 () Bool)

(declare-fun res!716224 () Bool)

(assert (=> b!1073841 (=> (not res!716224) (not e!613582))))

(assert (=> b!1073841 (= res!716224 (not (contains!6343 lt!476240 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!129407 () Bool)

(assert (=> d!129407 e!613582))

(declare-fun res!716223 () Bool)

(assert (=> d!129407 (=> (not res!716223) (not e!613582))))

(assert (=> d!129407 (= res!716223 (not (contains!6343 lt!476240 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129407 (= lt!476240 e!613579)))

(declare-fun c!107748 () Bool)

(assert (=> d!129407 (= c!107748 (bvsge #b00000000000000000000000000000000 (size!33660 _keys!1163)))))

(assert (=> d!129407 (validMask!0 mask!1515)))

(assert (=> d!129407 (= (getCurrentListMapNoExtraKeys!3869 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476240)))

(declare-fun b!1073842 () Bool)

(assert (=> b!1073842 (= e!613580 (validKeyInArray!0 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1073842 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1073843 () Bool)

(assert (=> b!1073843 (= e!613577 e!613578)))

(assert (=> b!1073843 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33660 _keys!1163)))))

(declare-fun res!716221 () Bool)

(assert (=> b!1073843 (= res!716221 (contains!6343 lt!476240 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1073843 (=> (not res!716221) (not e!613578))))

(declare-fun b!1073844 () Bool)

(assert (=> b!1073844 (= e!613577 e!613583)))

(declare-fun c!107749 () Bool)

(assert (=> b!1073844 (= c!107749 (bvslt #b00000000000000000000000000000000 (size!33660 _keys!1163)))))

(assert (= (and d!129407 c!107748) b!1073835))

(assert (= (and d!129407 (not c!107748)) b!1073834))

(assert (= (and b!1073834 c!107747) b!1073840))

(assert (= (and b!1073834 (not c!107747)) b!1073836))

(assert (= (or b!1073840 b!1073836) bm!45315))

(assert (= (and d!129407 res!716223) b!1073841))

(assert (= (and b!1073841 res!716224) b!1073839))

(assert (= (and b!1073839 res!716222) b!1073842))

(assert (= (and b!1073839 c!107750) b!1073843))

(assert (= (and b!1073839 (not c!107750)) b!1073844))

(assert (= (and b!1073843 res!716221) b!1073837))

(assert (= (and b!1073844 c!107749) b!1073833))

(assert (= (and b!1073844 (not c!107749)) b!1073838))

(declare-fun b_lambda!16773 () Bool)

(assert (=> (not b_lambda!16773) (not b!1073837)))

(assert (=> b!1073837 t!32595))

(declare-fun b_and!35047 () Bool)

(assert (= b_and!35045 (and (=> t!32595 result!14799) b_and!35047)))

(declare-fun b_lambda!16775 () Bool)

(assert (=> (not b_lambda!16775) (not b!1073840)))

(assert (=> b!1073840 t!32595))

(declare-fun b_and!35049 () Bool)

(assert (= b_and!35047 (and (=> t!32595 result!14799) b_and!35049)))

(assert (=> b!1073837 m!992785))

(declare-fun m!992853 () Bool)

(assert (=> b!1073837 m!992853))

(assert (=> b!1073837 m!992827))

(assert (=> b!1073837 m!992825))

(assert (=> b!1073837 m!992829))

(assert (=> b!1073837 m!992825))

(assert (=> b!1073837 m!992785))

(assert (=> b!1073837 m!992827))

(declare-fun m!992855 () Bool)

(assert (=> b!1073841 m!992855))

(assert (=> b!1073834 m!992785))

(assert (=> b!1073834 m!992785))

(assert (=> b!1073834 m!992787))

(assert (=> b!1073842 m!992785))

(assert (=> b!1073842 m!992785))

(assert (=> b!1073842 m!992787))

(declare-fun m!992857 () Bool)

(assert (=> b!1073838 m!992857))

(assert (=> b!1073843 m!992785))

(assert (=> b!1073843 m!992785))

(declare-fun m!992859 () Bool)

(assert (=> b!1073843 m!992859))

(declare-fun m!992861 () Bool)

(assert (=> b!1073840 m!992861))

(declare-fun m!992863 () Bool)

(assert (=> b!1073840 m!992863))

(assert (=> b!1073840 m!992827))

(assert (=> b!1073840 m!992825))

(assert (=> b!1073840 m!992829))

(declare-fun m!992865 () Bool)

(assert (=> b!1073840 m!992865))

(assert (=> b!1073840 m!992825))

(declare-fun m!992867 () Bool)

(assert (=> b!1073840 m!992867))

(assert (=> b!1073840 m!992827))

(assert (=> b!1073840 m!992785))

(assert (=> b!1073840 m!992861))

(declare-fun m!992869 () Bool)

(assert (=> bm!45315 m!992869))

(declare-fun m!992871 () Bool)

(assert (=> d!129407 m!992871))

(assert (=> d!129407 m!992737))

(assert (=> b!1073833 m!992869))

(assert (=> b!1073680 d!129407))

(declare-fun b!1073845 () Bool)

(declare-fun e!613590 () Bool)

(declare-fun lt!476247 () ListLongMap!14649)

(assert (=> b!1073845 (= e!613590 (= lt!476247 (getCurrentListMapNoExtraKeys!3869 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1073846 () Bool)

(declare-fun e!613586 () ListLongMap!14649)

(declare-fun e!613588 () ListLongMap!14649)

(assert (=> b!1073846 (= e!613586 e!613588)))

(declare-fun c!107751 () Bool)

(assert (=> b!1073846 (= c!107751 (validKeyInArray!0 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1073847 () Bool)

(assert (=> b!1073847 (= e!613586 (ListLongMap!14650 Nil!23242))))

(declare-fun b!1073848 () Bool)

(declare-fun call!45319 () ListLongMap!14649)

(assert (=> b!1073848 (= e!613588 call!45319)))

(declare-fun bm!45316 () Bool)

(assert (=> bm!45316 (= call!45319 (getCurrentListMapNoExtraKeys!3869 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1073849 () Bool)

(assert (=> b!1073849 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33660 _keys!1163)))))

(assert (=> b!1073849 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33659 _values!955)))))

(declare-fun e!613585 () Bool)

(assert (=> b!1073849 (= e!613585 (= (apply!968 lt!476247 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000)) (get!17226 (select (arr!33122 _values!955) #b00000000000000000000000000000000) (dynLambda!2044 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1073850 () Bool)

(assert (=> b!1073850 (= e!613590 (isEmpty!954 lt!476247))))

(declare-fun b!1073851 () Bool)

(declare-fun e!613589 () Bool)

(declare-fun e!613584 () Bool)

(assert (=> b!1073851 (= e!613589 e!613584)))

(declare-fun c!107754 () Bool)

(declare-fun e!613587 () Bool)

(assert (=> b!1073851 (= c!107754 e!613587)))

(declare-fun res!716226 () Bool)

(assert (=> b!1073851 (=> (not res!716226) (not e!613587))))

(assert (=> b!1073851 (= res!716226 (bvslt #b00000000000000000000000000000000 (size!33660 _keys!1163)))))

(declare-fun b!1073852 () Bool)

(declare-fun lt!476246 () Unit!35303)

(declare-fun lt!476248 () Unit!35303)

(assert (=> b!1073852 (= lt!476246 lt!476248)))

(declare-fun lt!476245 () (_ BitVec 64))

(declare-fun lt!476249 () ListLongMap!14649)

(declare-fun lt!476251 () (_ BitVec 64))

(declare-fun lt!476250 () V!39763)

(assert (=> b!1073852 (not (contains!6343 (+!3171 lt!476249 (tuple2!16669 lt!476251 lt!476250)) lt!476245))))

(assert (=> b!1073852 (= lt!476248 (addStillNotContains!263 lt!476249 lt!476251 lt!476250 lt!476245))))

(assert (=> b!1073852 (= lt!476245 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1073852 (= lt!476250 (get!17226 (select (arr!33122 _values!955) #b00000000000000000000000000000000) (dynLambda!2044 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1073852 (= lt!476251 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1073852 (= lt!476249 call!45319)))

(assert (=> b!1073852 (= e!613588 (+!3171 call!45319 (tuple2!16669 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000) (get!17226 (select (arr!33122 _values!955) #b00000000000000000000000000000000) (dynLambda!2044 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1073853 () Bool)

(declare-fun res!716228 () Bool)

(assert (=> b!1073853 (=> (not res!716228) (not e!613589))))

(assert (=> b!1073853 (= res!716228 (not (contains!6343 lt!476247 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!129409 () Bool)

(assert (=> d!129409 e!613589))

(declare-fun res!716227 () Bool)

(assert (=> d!129409 (=> (not res!716227) (not e!613589))))

(assert (=> d!129409 (= res!716227 (not (contains!6343 lt!476247 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129409 (= lt!476247 e!613586)))

(declare-fun c!107752 () Bool)

(assert (=> d!129409 (= c!107752 (bvsge #b00000000000000000000000000000000 (size!33660 _keys!1163)))))

(assert (=> d!129409 (validMask!0 mask!1515)))

(assert (=> d!129409 (= (getCurrentListMapNoExtraKeys!3869 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476247)))

(declare-fun b!1073854 () Bool)

(assert (=> b!1073854 (= e!613587 (validKeyInArray!0 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1073854 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1073855 () Bool)

(assert (=> b!1073855 (= e!613584 e!613585)))

(assert (=> b!1073855 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33660 _keys!1163)))))

(declare-fun res!716225 () Bool)

(assert (=> b!1073855 (= res!716225 (contains!6343 lt!476247 (select (arr!33123 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1073855 (=> (not res!716225) (not e!613585))))

(declare-fun b!1073856 () Bool)

(assert (=> b!1073856 (= e!613584 e!613590)))

(declare-fun c!107753 () Bool)

(assert (=> b!1073856 (= c!107753 (bvslt #b00000000000000000000000000000000 (size!33660 _keys!1163)))))

(assert (= (and d!129409 c!107752) b!1073847))

(assert (= (and d!129409 (not c!107752)) b!1073846))

(assert (= (and b!1073846 c!107751) b!1073852))

(assert (= (and b!1073846 (not c!107751)) b!1073848))

(assert (= (or b!1073852 b!1073848) bm!45316))

(assert (= (and d!129409 res!716227) b!1073853))

(assert (= (and b!1073853 res!716228) b!1073851))

(assert (= (and b!1073851 res!716226) b!1073854))

(assert (= (and b!1073851 c!107754) b!1073855))

(assert (= (and b!1073851 (not c!107754)) b!1073856))

(assert (= (and b!1073855 res!716225) b!1073849))

(assert (= (and b!1073856 c!107753) b!1073845))

(assert (= (and b!1073856 (not c!107753)) b!1073850))

(declare-fun b_lambda!16777 () Bool)

(assert (=> (not b_lambda!16777) (not b!1073849)))

(assert (=> b!1073849 t!32595))

(declare-fun b_and!35051 () Bool)

(assert (= b_and!35049 (and (=> t!32595 result!14799) b_and!35051)))

(declare-fun b_lambda!16779 () Bool)

(assert (=> (not b_lambda!16779) (not b!1073852)))

(assert (=> b!1073852 t!32595))

(declare-fun b_and!35053 () Bool)

(assert (= b_and!35051 (and (=> t!32595 result!14799) b_and!35053)))

(assert (=> b!1073849 m!992785))

(declare-fun m!992873 () Bool)

(assert (=> b!1073849 m!992873))

(assert (=> b!1073849 m!992827))

(assert (=> b!1073849 m!992825))

(assert (=> b!1073849 m!992829))

(assert (=> b!1073849 m!992825))

(assert (=> b!1073849 m!992785))

(assert (=> b!1073849 m!992827))

(declare-fun m!992875 () Bool)

(assert (=> b!1073853 m!992875))

(assert (=> b!1073846 m!992785))

(assert (=> b!1073846 m!992785))

(assert (=> b!1073846 m!992787))

(assert (=> b!1073854 m!992785))

(assert (=> b!1073854 m!992785))

(assert (=> b!1073854 m!992787))

(declare-fun m!992877 () Bool)

(assert (=> b!1073850 m!992877))

(assert (=> b!1073855 m!992785))

(assert (=> b!1073855 m!992785))

(declare-fun m!992879 () Bool)

(assert (=> b!1073855 m!992879))

(declare-fun m!992881 () Bool)

(assert (=> b!1073852 m!992881))

(declare-fun m!992883 () Bool)

(assert (=> b!1073852 m!992883))

(assert (=> b!1073852 m!992827))

(assert (=> b!1073852 m!992825))

(assert (=> b!1073852 m!992829))

(declare-fun m!992885 () Bool)

(assert (=> b!1073852 m!992885))

(assert (=> b!1073852 m!992825))

(declare-fun m!992887 () Bool)

(assert (=> b!1073852 m!992887))

(assert (=> b!1073852 m!992827))

(assert (=> b!1073852 m!992785))

(assert (=> b!1073852 m!992881))

(declare-fun m!992889 () Bool)

(assert (=> bm!45316 m!992889))

(declare-fun m!992891 () Bool)

(assert (=> d!129409 m!992891))

(assert (=> d!129409 m!992737))

(assert (=> b!1073845 m!992889))

(assert (=> b!1073680 d!129409))

(declare-fun mapNonEmpty!40678 () Bool)

(declare-fun mapRes!40678 () Bool)

(declare-fun tp!77961 () Bool)

(declare-fun e!613595 () Bool)

(assert (=> mapNonEmpty!40678 (= mapRes!40678 (and tp!77961 e!613595))))

(declare-fun mapKey!40678 () (_ BitVec 32))

(declare-fun mapValue!40678 () ValueCell!12282)

(declare-fun mapRest!40678 () (Array (_ BitVec 32) ValueCell!12282))

(assert (=> mapNonEmpty!40678 (= mapRest!40672 (store mapRest!40678 mapKey!40678 mapValue!40678))))

(declare-fun b!1073863 () Bool)

(assert (=> b!1073863 (= e!613595 tp_is_empty!25971)))

(declare-fun condMapEmpty!40678 () Bool)

(declare-fun mapDefault!40678 () ValueCell!12282)

(assert (=> mapNonEmpty!40672 (= condMapEmpty!40678 (= mapRest!40672 ((as const (Array (_ BitVec 32) ValueCell!12282)) mapDefault!40678)))))

(declare-fun e!613596 () Bool)

(assert (=> mapNonEmpty!40672 (= tp!77952 (and e!613596 mapRes!40678))))

(declare-fun b!1073864 () Bool)

(assert (=> b!1073864 (= e!613596 tp_is_empty!25971)))

(declare-fun mapIsEmpty!40678 () Bool)

(assert (=> mapIsEmpty!40678 mapRes!40678))

(assert (= (and mapNonEmpty!40672 condMapEmpty!40678) mapIsEmpty!40678))

(assert (= (and mapNonEmpty!40672 (not condMapEmpty!40678)) mapNonEmpty!40678))

(assert (= (and mapNonEmpty!40678 ((_ is ValueCellFull!12282) mapValue!40678)) b!1073863))

(assert (= (and mapNonEmpty!40672 ((_ is ValueCellFull!12282) mapDefault!40678)) b!1073864))

(declare-fun m!992893 () Bool)

(assert (=> mapNonEmpty!40678 m!992893))

(declare-fun b_lambda!16781 () Bool)

(assert (= b_lambda!16771 (or (and start!95004 b_free!22161) b_lambda!16781)))

(declare-fun b_lambda!16783 () Bool)

(assert (= b_lambda!16773 (or (and start!95004 b_free!22161) b_lambda!16783)))

(declare-fun b_lambda!16785 () Bool)

(assert (= b_lambda!16777 (or (and start!95004 b_free!22161) b_lambda!16785)))

(declare-fun b_lambda!16787 () Bool)

(assert (= b_lambda!16775 (or (and start!95004 b_free!22161) b_lambda!16787)))

(declare-fun b_lambda!16789 () Bool)

(assert (= b_lambda!16779 (or (and start!95004 b_free!22161) b_lambda!16789)))

(check-sat (not b!1073805) (not b_lambda!16787) (not bm!45309) (not b_lambda!16785) (not b!1073843) (not b!1073792) (not b!1073762) (not b!1073838) (not b!1073714) (not b!1073837) (not bm!45316) (not bm!45312) (not d!129405) (not d!129409) (not b!1073849) (not b_lambda!16789) (not b!1073842) (not b_lambda!16781) (not b!1073760) (not b!1073796) (not b!1073769) (not d!129393) (not b!1073767) (not b!1073846) (not b!1073768) (not b_lambda!16783) (not b!1073806) (not bm!45315) (not b!1073777) (not b!1073853) (not b!1073716) tp_is_empty!25971 (not b!1073855) (not b!1073850) (not bm!45306) (not b!1073795) (not b!1073852) (not b!1073840) (not b_next!22161) (not bm!45305) (not mapNonEmpty!40678) (not bm!45300) (not b!1073773) (not b!1073779) (not d!129391) (not d!129407) (not b!1073845) b_and!35053 (not b!1073841) (not b!1073833) (not b!1073854) (not b!1073834) (not bm!45302))
(check-sat b_and!35053 (not b_next!22161))
