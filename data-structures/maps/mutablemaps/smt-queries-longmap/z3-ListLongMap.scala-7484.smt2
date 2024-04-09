; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94890 () Bool)

(assert start!94890)

(declare-fun b_free!22083 () Bool)

(declare-fun b_next!22083 () Bool)

(assert (=> start!94890 (= b_free!22083 (not b_next!22083))))

(declare-fun tp!77712 () Bool)

(declare-fun b_and!34943 () Bool)

(assert (=> start!94890 (= tp!77712 b_and!34943)))

(declare-fun b!1072572 () Bool)

(declare-fun res!715551 () Bool)

(declare-fun e!612709 () Bool)

(assert (=> b!1072572 (=> (not res!715551) (not e!612709))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39659 0))(
  ( (V!39660 (val!12997 Int)) )
))
(declare-datatypes ((ValueCell!12243 0))(
  ( (ValueCellFull!12243 (v!15615 V!39659)) (EmptyCell!12243) )
))
(declare-datatypes ((array!68714 0))(
  ( (array!68715 (arr!33048 (Array (_ BitVec 32) ValueCell!12243)) (size!33585 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68714)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68716 0))(
  ( (array!68717 (arr!33049 (Array (_ BitVec 32) (_ BitVec 64))) (size!33586 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68716)

(assert (=> b!1072572 (= res!715551 (and (= (size!33585 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33586 _keys!1163) (size!33585 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072573 () Bool)

(declare-fun e!612706 () Bool)

(assert (=> b!1072573 (= e!612709 (not e!612706))))

(declare-fun res!715554 () Bool)

(assert (=> b!1072573 (=> res!715554 e!612706)))

(assert (=> b!1072573 (= res!715554 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16616 0))(
  ( (tuple2!16617 (_1!8318 (_ BitVec 64)) (_2!8318 V!39659)) )
))
(declare-datatypes ((List!23197 0))(
  ( (Nil!23194) (Cons!23193 (h!24402 tuple2!16616) (t!32539 List!23197)) )
))
(declare-datatypes ((ListLongMap!14597 0))(
  ( (ListLongMap!14598 (toList!7314 List!23197)) )
))
(declare-fun lt!475638 () ListLongMap!14597)

(declare-fun lt!475631 () ListLongMap!14597)

(assert (=> b!1072573 (= lt!475638 lt!475631)))

(declare-fun zeroValueBefore!47 () V!39659)

(declare-datatypes ((Unit!35289 0))(
  ( (Unit!35290) )
))
(declare-fun lt!475632 () Unit!35289)

(declare-fun minValue!907 () V!39659)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39659)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!883 (array!68716 array!68714 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39659 V!39659 V!39659 V!39659 (_ BitVec 32) Int) Unit!35289)

(assert (=> b!1072573 (= lt!475632 (lemmaNoChangeToArrayThenSameMapNoExtras!883 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3844 (array!68716 array!68714 (_ BitVec 32) (_ BitVec 32) V!39659 V!39659 (_ BitVec 32) Int) ListLongMap!14597)

(assert (=> b!1072573 (= lt!475631 (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072573 (= lt!475638 (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!40549 () Bool)

(declare-fun mapRes!40549 () Bool)

(declare-fun tp!77711 () Bool)

(declare-fun e!612703 () Bool)

(assert (=> mapNonEmpty!40549 (= mapRes!40549 (and tp!77711 e!612703))))

(declare-fun mapRest!40549 () (Array (_ BitVec 32) ValueCell!12243))

(declare-fun mapKey!40549 () (_ BitVec 32))

(declare-fun mapValue!40549 () ValueCell!12243)

(assert (=> mapNonEmpty!40549 (= (arr!33048 _values!955) (store mapRest!40549 mapKey!40549 mapValue!40549))))

(declare-fun b!1072574 () Bool)

(declare-fun tp_is_empty!25893 () Bool)

(assert (=> b!1072574 (= e!612703 tp_is_empty!25893)))

(declare-fun mapIsEmpty!40549 () Bool)

(assert (=> mapIsEmpty!40549 mapRes!40549))

(declare-fun b!1072575 () Bool)

(declare-fun e!612704 () Bool)

(assert (=> b!1072575 (= e!612704 (bvsle #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(declare-fun b!1072576 () Bool)

(declare-fun e!612705 () Bool)

(assert (=> b!1072576 (= e!612705 tp_is_empty!25893)))

(declare-fun res!715555 () Bool)

(assert (=> start!94890 (=> (not res!715555) (not e!612709))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94890 (= res!715555 (validMask!0 mask!1515))))

(assert (=> start!94890 e!612709))

(assert (=> start!94890 true))

(assert (=> start!94890 tp_is_empty!25893))

(declare-fun e!612707 () Bool)

(declare-fun array_inv!25404 (array!68714) Bool)

(assert (=> start!94890 (and (array_inv!25404 _values!955) e!612707)))

(assert (=> start!94890 tp!77712))

(declare-fun array_inv!25405 (array!68716) Bool)

(assert (=> start!94890 (array_inv!25405 _keys!1163)))

(declare-fun b!1072577 () Bool)

(assert (=> b!1072577 (= e!612707 (and e!612705 mapRes!40549))))

(declare-fun condMapEmpty!40549 () Bool)

(declare-fun mapDefault!40549 () ValueCell!12243)

(assert (=> b!1072577 (= condMapEmpty!40549 (= (arr!33048 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12243)) mapDefault!40549)))))

(declare-fun b!1072578 () Bool)

(declare-fun res!715553 () Bool)

(assert (=> b!1072578 (=> (not res!715553) (not e!612709))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68716 (_ BitVec 32)) Bool)

(assert (=> b!1072578 (= res!715553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun lt!475635 () ListLongMap!14597)

(declare-fun b!1072579 () Bool)

(declare-fun lt!475642 () tuple2!16616)

(declare-fun e!612708 () Bool)

(declare-fun +!3168 (ListLongMap!14597 tuple2!16616) ListLongMap!14597)

(assert (=> b!1072579 (= e!612708 (= lt!475635 (+!3168 lt!475631 lt!475642)))))

(declare-fun b!1072580 () Bool)

(declare-fun res!715557 () Bool)

(assert (=> b!1072580 (=> (not res!715557) (not e!612709))))

(declare-datatypes ((List!23198 0))(
  ( (Nil!23195) (Cons!23194 (h!24403 (_ BitVec 64)) (t!32540 List!23198)) )
))
(declare-fun arrayNoDuplicates!0 (array!68716 (_ BitVec 32) List!23198) Bool)

(assert (=> b!1072580 (= res!715557 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23195))))

(declare-fun b!1072581 () Bool)

(assert (=> b!1072581 (= e!612706 e!612704)))

(declare-fun res!715556 () Bool)

(assert (=> b!1072581 (=> res!715556 e!612704)))

(declare-fun lt!475633 () ListLongMap!14597)

(declare-fun -!703 (ListLongMap!14597 (_ BitVec 64)) ListLongMap!14597)

(assert (=> b!1072581 (= res!715556 (not (= (-!703 lt!475633 #b0000000000000000000000000000000000000000000000000000000000000000) lt!475635)))))

(declare-fun lt!475641 () ListLongMap!14597)

(declare-fun lt!475636 () ListLongMap!14597)

(assert (=> b!1072581 (= lt!475641 lt!475636)))

(declare-fun lt!475634 () Unit!35289)

(declare-fun addCommutativeForDiffKeys!747 (ListLongMap!14597 (_ BitVec 64) V!39659 (_ BitVec 64) V!39659) Unit!35289)

(assert (=> b!1072581 (= lt!475634 (addCommutativeForDiffKeys!747 lt!475638 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!475640 () ListLongMap!14597)

(assert (=> b!1072581 (= (-!703 lt!475636 #b0000000000000000000000000000000000000000000000000000000000000000) lt!475640)))

(declare-fun lt!475639 () tuple2!16616)

(assert (=> b!1072581 (= lt!475636 (+!3168 lt!475640 lt!475639))))

(declare-fun lt!475637 () Unit!35289)

(declare-fun addThenRemoveForNewKeyIsSame!77 (ListLongMap!14597 (_ BitVec 64) V!39659) Unit!35289)

(assert (=> b!1072581 (= lt!475637 (addThenRemoveForNewKeyIsSame!77 lt!475640 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1072581 (= lt!475640 (+!3168 lt!475638 lt!475642))))

(assert (=> b!1072581 e!612708))

(declare-fun res!715552 () Bool)

(assert (=> b!1072581 (=> (not res!715552) (not e!612708))))

(assert (=> b!1072581 (= res!715552 (= lt!475633 lt!475641))))

(assert (=> b!1072581 (= lt!475641 (+!3168 (+!3168 lt!475638 lt!475639) lt!475642))))

(assert (=> b!1072581 (= lt!475642 (tuple2!16617 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1072581 (= lt!475639 (tuple2!16617 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun getCurrentListMap!4175 (array!68716 array!68714 (_ BitVec 32) (_ BitVec 32) V!39659 V!39659 (_ BitVec 32) Int) ListLongMap!14597)

(assert (=> b!1072581 (= lt!475635 (getCurrentListMap!4175 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072581 (= lt!475633 (getCurrentListMap!4175 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!94890 res!715555) b!1072572))

(assert (= (and b!1072572 res!715551) b!1072578))

(assert (= (and b!1072578 res!715553) b!1072580))

(assert (= (and b!1072580 res!715557) b!1072573))

(assert (= (and b!1072573 (not res!715554)) b!1072581))

(assert (= (and b!1072581 res!715552) b!1072579))

(assert (= (and b!1072581 (not res!715556)) b!1072575))

(assert (= (and b!1072577 condMapEmpty!40549) mapIsEmpty!40549))

(assert (= (and b!1072577 (not condMapEmpty!40549)) mapNonEmpty!40549))

(get-info :version)

(assert (= (and mapNonEmpty!40549 ((_ is ValueCellFull!12243) mapValue!40549)) b!1072574))

(assert (= (and b!1072577 ((_ is ValueCellFull!12243) mapDefault!40549)) b!1072576))

(assert (= start!94890 b!1072577))

(declare-fun m!991739 () Bool)

(assert (=> b!1072578 m!991739))

(declare-fun m!991741 () Bool)

(assert (=> b!1072581 m!991741))

(declare-fun m!991743 () Bool)

(assert (=> b!1072581 m!991743))

(assert (=> b!1072581 m!991743))

(declare-fun m!991745 () Bool)

(assert (=> b!1072581 m!991745))

(declare-fun m!991747 () Bool)

(assert (=> b!1072581 m!991747))

(declare-fun m!991749 () Bool)

(assert (=> b!1072581 m!991749))

(declare-fun m!991751 () Bool)

(assert (=> b!1072581 m!991751))

(declare-fun m!991753 () Bool)

(assert (=> b!1072581 m!991753))

(declare-fun m!991755 () Bool)

(assert (=> b!1072581 m!991755))

(declare-fun m!991757 () Bool)

(assert (=> b!1072581 m!991757))

(declare-fun m!991759 () Bool)

(assert (=> b!1072581 m!991759))

(declare-fun m!991761 () Bool)

(assert (=> mapNonEmpty!40549 m!991761))

(declare-fun m!991763 () Bool)

(assert (=> b!1072580 m!991763))

(declare-fun m!991765 () Bool)

(assert (=> b!1072573 m!991765))

(declare-fun m!991767 () Bool)

(assert (=> b!1072573 m!991767))

(declare-fun m!991769 () Bool)

(assert (=> b!1072573 m!991769))

(declare-fun m!991771 () Bool)

(assert (=> b!1072579 m!991771))

(declare-fun m!991773 () Bool)

(assert (=> start!94890 m!991773))

(declare-fun m!991775 () Bool)

(assert (=> start!94890 m!991775))

(declare-fun m!991777 () Bool)

(assert (=> start!94890 m!991777))

(check-sat (not mapNonEmpty!40549) (not b!1072579) (not start!94890) (not b!1072581) (not b!1072580) (not b_next!22083) tp_is_empty!25893 b_and!34943 (not b!1072578) (not b!1072573))
(check-sat b_and!34943 (not b_next!22083))
(get-model)

(declare-fun d!129313 () Bool)

(assert (=> d!129313 (= (+!3168 (+!3168 lt!475638 (tuple2!16617 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (tuple2!16617 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)) (+!3168 (+!3168 lt!475638 (tuple2!16617 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)) (tuple2!16617 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun lt!475681 () Unit!35289)

(declare-fun choose!1750 (ListLongMap!14597 (_ BitVec 64) V!39659 (_ BitVec 64) V!39659) Unit!35289)

(assert (=> d!129313 (= lt!475681 (choose!1750 lt!475638 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> d!129313 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129313 (= (addCommutativeForDiffKeys!747 lt!475638 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907) lt!475681)))

(declare-fun bs!31603 () Bool)

(assert (= bs!31603 d!129313))

(declare-fun m!991819 () Bool)

(assert (=> bs!31603 m!991819))

(declare-fun m!991821 () Bool)

(assert (=> bs!31603 m!991821))

(assert (=> bs!31603 m!991819))

(declare-fun m!991823 () Bool)

(assert (=> bs!31603 m!991823))

(assert (=> bs!31603 m!991821))

(declare-fun m!991825 () Bool)

(assert (=> bs!31603 m!991825))

(declare-fun m!991827 () Bool)

(assert (=> bs!31603 m!991827))

(assert (=> b!1072581 d!129313))

(declare-fun d!129315 () Bool)

(declare-fun e!612736 () Bool)

(assert (=> d!129315 e!612736))

(declare-fun res!715584 () Bool)

(assert (=> d!129315 (=> (not res!715584) (not e!612736))))

(declare-fun lt!475692 () ListLongMap!14597)

(declare-fun contains!6337 (ListLongMap!14597 (_ BitVec 64)) Bool)

(assert (=> d!129315 (= res!715584 (contains!6337 lt!475692 (_1!8318 lt!475639)))))

(declare-fun lt!475693 () List!23197)

(assert (=> d!129315 (= lt!475692 (ListLongMap!14598 lt!475693))))

(declare-fun lt!475691 () Unit!35289)

(declare-fun lt!475690 () Unit!35289)

(assert (=> d!129315 (= lt!475691 lt!475690)))

(declare-datatypes ((Option!658 0))(
  ( (Some!657 (v!15617 V!39659)) (None!656) )
))
(declare-fun getValueByKey!607 (List!23197 (_ BitVec 64)) Option!658)

(assert (=> d!129315 (= (getValueByKey!607 lt!475693 (_1!8318 lt!475639)) (Some!657 (_2!8318 lt!475639)))))

(declare-fun lemmaContainsTupThenGetReturnValue!286 (List!23197 (_ BitVec 64) V!39659) Unit!35289)

(assert (=> d!129315 (= lt!475690 (lemmaContainsTupThenGetReturnValue!286 lt!475693 (_1!8318 lt!475639) (_2!8318 lt!475639)))))

(declare-fun insertStrictlySorted!378 (List!23197 (_ BitVec 64) V!39659) List!23197)

(assert (=> d!129315 (= lt!475693 (insertStrictlySorted!378 (toList!7314 lt!475638) (_1!8318 lt!475639) (_2!8318 lt!475639)))))

(assert (=> d!129315 (= (+!3168 lt!475638 lt!475639) lt!475692)))

(declare-fun b!1072616 () Bool)

(declare-fun res!715583 () Bool)

(assert (=> b!1072616 (=> (not res!715583) (not e!612736))))

(assert (=> b!1072616 (= res!715583 (= (getValueByKey!607 (toList!7314 lt!475692) (_1!8318 lt!475639)) (Some!657 (_2!8318 lt!475639))))))

(declare-fun b!1072617 () Bool)

(declare-fun contains!6338 (List!23197 tuple2!16616) Bool)

(assert (=> b!1072617 (= e!612736 (contains!6338 (toList!7314 lt!475692) lt!475639))))

(assert (= (and d!129315 res!715584) b!1072616))

(assert (= (and b!1072616 res!715583) b!1072617))

(declare-fun m!991829 () Bool)

(assert (=> d!129315 m!991829))

(declare-fun m!991831 () Bool)

(assert (=> d!129315 m!991831))

(declare-fun m!991833 () Bool)

(assert (=> d!129315 m!991833))

(declare-fun m!991835 () Bool)

(assert (=> d!129315 m!991835))

(declare-fun m!991837 () Bool)

(assert (=> b!1072616 m!991837))

(declare-fun m!991839 () Bool)

(assert (=> b!1072617 m!991839))

(assert (=> b!1072581 d!129315))

(declare-fun d!129317 () Bool)

(declare-fun e!612737 () Bool)

(assert (=> d!129317 e!612737))

(declare-fun res!715586 () Bool)

(assert (=> d!129317 (=> (not res!715586) (not e!612737))))

(declare-fun lt!475696 () ListLongMap!14597)

(assert (=> d!129317 (= res!715586 (contains!6337 lt!475696 (_1!8318 lt!475639)))))

(declare-fun lt!475697 () List!23197)

(assert (=> d!129317 (= lt!475696 (ListLongMap!14598 lt!475697))))

(declare-fun lt!475695 () Unit!35289)

(declare-fun lt!475694 () Unit!35289)

(assert (=> d!129317 (= lt!475695 lt!475694)))

(assert (=> d!129317 (= (getValueByKey!607 lt!475697 (_1!8318 lt!475639)) (Some!657 (_2!8318 lt!475639)))))

(assert (=> d!129317 (= lt!475694 (lemmaContainsTupThenGetReturnValue!286 lt!475697 (_1!8318 lt!475639) (_2!8318 lt!475639)))))

(assert (=> d!129317 (= lt!475697 (insertStrictlySorted!378 (toList!7314 lt!475640) (_1!8318 lt!475639) (_2!8318 lt!475639)))))

(assert (=> d!129317 (= (+!3168 lt!475640 lt!475639) lt!475696)))

(declare-fun b!1072618 () Bool)

(declare-fun res!715585 () Bool)

(assert (=> b!1072618 (=> (not res!715585) (not e!612737))))

(assert (=> b!1072618 (= res!715585 (= (getValueByKey!607 (toList!7314 lt!475696) (_1!8318 lt!475639)) (Some!657 (_2!8318 lt!475639))))))

(declare-fun b!1072619 () Bool)

(assert (=> b!1072619 (= e!612737 (contains!6338 (toList!7314 lt!475696) lt!475639))))

(assert (= (and d!129317 res!715586) b!1072618))

(assert (= (and b!1072618 res!715585) b!1072619))

(declare-fun m!991841 () Bool)

(assert (=> d!129317 m!991841))

(declare-fun m!991843 () Bool)

(assert (=> d!129317 m!991843))

(declare-fun m!991845 () Bool)

(assert (=> d!129317 m!991845))

(declare-fun m!991847 () Bool)

(assert (=> d!129317 m!991847))

(declare-fun m!991849 () Bool)

(assert (=> b!1072618 m!991849))

(declare-fun m!991851 () Bool)

(assert (=> b!1072619 m!991851))

(assert (=> b!1072581 d!129317))

(declare-fun b!1072662 () Bool)

(declare-fun lt!475750 () ListLongMap!14597)

(declare-fun e!612775 () Bool)

(declare-fun apply!966 (ListLongMap!14597 (_ BitVec 64)) V!39659)

(declare-fun get!17198 (ValueCell!12243 V!39659) V!39659)

(declare-fun dynLambda!2042 (Int (_ BitVec 64)) V!39659)

(assert (=> b!1072662 (= e!612775 (= (apply!966 lt!475750 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)) (get!17198 (select (arr!33048 _values!955) #b00000000000000000000000000000000) (dynLambda!2042 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1072662 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33585 _values!955)))))

(assert (=> b!1072662 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(declare-fun d!129319 () Bool)

(declare-fun e!612765 () Bool)

(assert (=> d!129319 e!612765))

(declare-fun res!715608 () Bool)

(assert (=> d!129319 (=> (not res!715608) (not e!612765))))

(assert (=> d!129319 (= res!715608 (or (bvsge #b00000000000000000000000000000000 (size!33586 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33586 _keys!1163)))))))

(declare-fun lt!475757 () ListLongMap!14597)

(assert (=> d!129319 (= lt!475750 lt!475757)))

(declare-fun lt!475761 () Unit!35289)

(declare-fun e!612776 () Unit!35289)

(assert (=> d!129319 (= lt!475761 e!612776)))

(declare-fun c!107659 () Bool)

(declare-fun e!612772 () Bool)

(assert (=> d!129319 (= c!107659 e!612772)))

(declare-fun res!715610 () Bool)

(assert (=> d!129319 (=> (not res!715610) (not e!612772))))

(assert (=> d!129319 (= res!715610 (bvslt #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(declare-fun e!612767 () ListLongMap!14597)

(assert (=> d!129319 (= lt!475757 e!612767)))

(declare-fun c!107660 () Bool)

(assert (=> d!129319 (= c!107660 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129319 (validMask!0 mask!1515)))

(assert (=> d!129319 (= (getCurrentListMap!4175 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!475750)))

(declare-fun bm!45252 () Bool)

(declare-fun call!45255 () ListLongMap!14597)

(declare-fun call!45257 () ListLongMap!14597)

(assert (=> bm!45252 (= call!45255 call!45257)))

(declare-fun bm!45253 () Bool)

(declare-fun call!45261 () ListLongMap!14597)

(assert (=> bm!45253 (= call!45257 call!45261)))

(declare-fun b!1072663 () Bool)

(declare-fun e!612764 () ListLongMap!14597)

(declare-fun call!45260 () ListLongMap!14597)

(assert (=> b!1072663 (= e!612764 call!45260)))

(declare-fun b!1072664 () Bool)

(declare-fun e!612773 () Bool)

(declare-fun e!612770 () Bool)

(assert (=> b!1072664 (= e!612773 e!612770)))

(declare-fun res!715609 () Bool)

(declare-fun call!45259 () Bool)

(assert (=> b!1072664 (= res!715609 call!45259)))

(assert (=> b!1072664 (=> (not res!715609) (not e!612770))))

(declare-fun bm!45254 () Bool)

(assert (=> bm!45254 (= call!45259 (contains!6337 lt!475750 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1072665 () Bool)

(declare-fun Unit!35293 () Unit!35289)

(assert (=> b!1072665 (= e!612776 Unit!35293)))

(declare-fun b!1072666 () Bool)

(assert (=> b!1072666 (= e!612767 e!612764)))

(declare-fun c!107656 () Bool)

(assert (=> b!1072666 (= c!107656 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1072667 () Bool)

(declare-fun c!107657 () Bool)

(assert (=> b!1072667 (= c!107657 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!612766 () ListLongMap!14597)

(assert (=> b!1072667 (= e!612764 e!612766)))

(declare-fun b!1072668 () Bool)

(declare-fun call!45256 () ListLongMap!14597)

(assert (=> b!1072668 (= e!612767 (+!3168 call!45256 (tuple2!16617 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun b!1072669 () Bool)

(declare-fun e!612771 () Bool)

(assert (=> b!1072669 (= e!612771 e!612775)))

(declare-fun res!715612 () Bool)

(assert (=> b!1072669 (=> (not res!715612) (not e!612775))))

(assert (=> b!1072669 (= res!715612 (contains!6337 lt!475750 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1072669 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(declare-fun b!1072670 () Bool)

(declare-fun e!612768 () Bool)

(declare-fun call!45258 () Bool)

(assert (=> b!1072670 (= e!612768 (not call!45258))))

(declare-fun bm!45255 () Bool)

(assert (=> bm!45255 (= call!45260 call!45256)))

(declare-fun b!1072671 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1072671 (= e!612772 (validKeyInArray!0 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1072672 () Bool)

(assert (=> b!1072672 (= e!612766 call!45260)))

(declare-fun b!1072673 () Bool)

(declare-fun res!715607 () Bool)

(assert (=> b!1072673 (=> (not res!715607) (not e!612765))))

(assert (=> b!1072673 (= res!715607 e!612768)))

(declare-fun c!107658 () Bool)

(assert (=> b!1072673 (= c!107658 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072674 () Bool)

(assert (=> b!1072674 (= e!612766 call!45255)))

(declare-fun b!1072675 () Bool)

(assert (=> b!1072675 (= e!612773 (not call!45259))))

(declare-fun b!1072676 () Bool)

(declare-fun e!612774 () Bool)

(assert (=> b!1072676 (= e!612774 (= (apply!966 lt!475750 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!47))))

(declare-fun b!1072677 () Bool)

(assert (=> b!1072677 (= e!612768 e!612774)))

(declare-fun res!715605 () Bool)

(assert (=> b!1072677 (= res!715605 call!45258)))

(assert (=> b!1072677 (=> (not res!715605) (not e!612774))))

(declare-fun b!1072678 () Bool)

(declare-fun res!715613 () Bool)

(assert (=> b!1072678 (=> (not res!715613) (not e!612765))))

(assert (=> b!1072678 (= res!715613 e!612771)))

(declare-fun res!715611 () Bool)

(assert (=> b!1072678 (=> res!715611 e!612771)))

(declare-fun e!612769 () Bool)

(assert (=> b!1072678 (= res!715611 (not e!612769))))

(declare-fun res!715606 () Bool)

(assert (=> b!1072678 (=> (not res!715606) (not e!612769))))

(assert (=> b!1072678 (= res!715606 (bvslt #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(declare-fun b!1072679 () Bool)

(assert (=> b!1072679 (= e!612769 (validKeyInArray!0 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45256 () Bool)

(assert (=> bm!45256 (= call!45261 (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072680 () Bool)

(assert (=> b!1072680 (= e!612765 e!612773)))

(declare-fun c!107661 () Bool)

(assert (=> b!1072680 (= c!107661 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!45257 () Bool)

(assert (=> bm!45257 (= call!45256 (+!3168 (ite c!107660 call!45261 (ite c!107656 call!45257 call!45255)) (ite (or c!107660 c!107656) (tuple2!16617 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!47) (tuple2!16617 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1072681 () Bool)

(declare-fun lt!475762 () Unit!35289)

(assert (=> b!1072681 (= e!612776 lt!475762)))

(declare-fun lt!475747 () ListLongMap!14597)

(assert (=> b!1072681 (= lt!475747 (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!475742 () (_ BitVec 64))

(assert (=> b!1072681 (= lt!475742 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!475753 () (_ BitVec 64))

(assert (=> b!1072681 (= lt!475753 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!475754 () Unit!35289)

(declare-fun addStillContains!649 (ListLongMap!14597 (_ BitVec 64) V!39659 (_ BitVec 64)) Unit!35289)

(assert (=> b!1072681 (= lt!475754 (addStillContains!649 lt!475747 lt!475742 zeroValueAfter!47 lt!475753))))

(assert (=> b!1072681 (contains!6337 (+!3168 lt!475747 (tuple2!16617 lt!475742 zeroValueAfter!47)) lt!475753)))

(declare-fun lt!475744 () Unit!35289)

(assert (=> b!1072681 (= lt!475744 lt!475754)))

(declare-fun lt!475763 () ListLongMap!14597)

(assert (=> b!1072681 (= lt!475763 (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!475758 () (_ BitVec 64))

(assert (=> b!1072681 (= lt!475758 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!475759 () (_ BitVec 64))

(assert (=> b!1072681 (= lt!475759 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!475755 () Unit!35289)

(declare-fun addApplyDifferent!501 (ListLongMap!14597 (_ BitVec 64) V!39659 (_ BitVec 64)) Unit!35289)

(assert (=> b!1072681 (= lt!475755 (addApplyDifferent!501 lt!475763 lt!475758 minValue!907 lt!475759))))

(assert (=> b!1072681 (= (apply!966 (+!3168 lt!475763 (tuple2!16617 lt!475758 minValue!907)) lt!475759) (apply!966 lt!475763 lt!475759))))

(declare-fun lt!475751 () Unit!35289)

(assert (=> b!1072681 (= lt!475751 lt!475755)))

(declare-fun lt!475745 () ListLongMap!14597)

(assert (=> b!1072681 (= lt!475745 (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!475746 () (_ BitVec 64))

(assert (=> b!1072681 (= lt!475746 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!475748 () (_ BitVec 64))

(assert (=> b!1072681 (= lt!475748 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!475760 () Unit!35289)

(assert (=> b!1072681 (= lt!475760 (addApplyDifferent!501 lt!475745 lt!475746 zeroValueAfter!47 lt!475748))))

(assert (=> b!1072681 (= (apply!966 (+!3168 lt!475745 (tuple2!16617 lt!475746 zeroValueAfter!47)) lt!475748) (apply!966 lt!475745 lt!475748))))

(declare-fun lt!475743 () Unit!35289)

(assert (=> b!1072681 (= lt!475743 lt!475760)))

(declare-fun lt!475749 () ListLongMap!14597)

(assert (=> b!1072681 (= lt!475749 (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!475756 () (_ BitVec 64))

(assert (=> b!1072681 (= lt!475756 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!475752 () (_ BitVec 64))

(assert (=> b!1072681 (= lt!475752 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1072681 (= lt!475762 (addApplyDifferent!501 lt!475749 lt!475756 minValue!907 lt!475752))))

(assert (=> b!1072681 (= (apply!966 (+!3168 lt!475749 (tuple2!16617 lt!475756 minValue!907)) lt!475752) (apply!966 lt!475749 lt!475752))))

(declare-fun b!1072682 () Bool)

(assert (=> b!1072682 (= e!612770 (= (apply!966 lt!475750 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun bm!45258 () Bool)

(assert (=> bm!45258 (= call!45258 (contains!6337 lt!475750 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!129319 c!107660) b!1072668))

(assert (= (and d!129319 (not c!107660)) b!1072666))

(assert (= (and b!1072666 c!107656) b!1072663))

(assert (= (and b!1072666 (not c!107656)) b!1072667))

(assert (= (and b!1072667 c!107657) b!1072672))

(assert (= (and b!1072667 (not c!107657)) b!1072674))

(assert (= (or b!1072672 b!1072674) bm!45252))

(assert (= (or b!1072663 bm!45252) bm!45253))

(assert (= (or b!1072663 b!1072672) bm!45255))

(assert (= (or b!1072668 bm!45253) bm!45256))

(assert (= (or b!1072668 bm!45255) bm!45257))

(assert (= (and d!129319 res!715610) b!1072671))

(assert (= (and d!129319 c!107659) b!1072681))

(assert (= (and d!129319 (not c!107659)) b!1072665))

(assert (= (and d!129319 res!715608) b!1072678))

(assert (= (and b!1072678 res!715606) b!1072679))

(assert (= (and b!1072678 (not res!715611)) b!1072669))

(assert (= (and b!1072669 res!715612) b!1072662))

(assert (= (and b!1072678 res!715613) b!1072673))

(assert (= (and b!1072673 c!107658) b!1072677))

(assert (= (and b!1072673 (not c!107658)) b!1072670))

(assert (= (and b!1072677 res!715605) b!1072676))

(assert (= (or b!1072677 b!1072670) bm!45258))

(assert (= (and b!1072673 res!715607) b!1072680))

(assert (= (and b!1072680 c!107661) b!1072664))

(assert (= (and b!1072680 (not c!107661)) b!1072675))

(assert (= (and b!1072664 res!715609) b!1072682))

(assert (= (or b!1072664 b!1072675) bm!45254))

(declare-fun b_lambda!16731 () Bool)

(assert (=> (not b_lambda!16731) (not b!1072662)))

(declare-fun t!32543 () Bool)

(declare-fun tb!7165 () Bool)

(assert (=> (and start!94890 (= defaultEntry!963 defaultEntry!963) t!32543) tb!7165))

(declare-fun result!14787 () Bool)

(assert (=> tb!7165 (= result!14787 tp_is_empty!25893)))

(assert (=> b!1072662 t!32543))

(declare-fun b_and!34947 () Bool)

(assert (= b_and!34943 (and (=> t!32543 result!14787) b_and!34947)))

(declare-fun m!991853 () Bool)

(assert (=> b!1072671 m!991853))

(assert (=> b!1072671 m!991853))

(declare-fun m!991855 () Bool)

(assert (=> b!1072671 m!991855))

(declare-fun m!991857 () Bool)

(assert (=> bm!45254 m!991857))

(declare-fun m!991859 () Bool)

(assert (=> b!1072681 m!991859))

(declare-fun m!991861 () Bool)

(assert (=> b!1072681 m!991861))

(declare-fun m!991863 () Bool)

(assert (=> b!1072681 m!991863))

(declare-fun m!991865 () Bool)

(assert (=> b!1072681 m!991865))

(assert (=> b!1072681 m!991767))

(declare-fun m!991867 () Bool)

(assert (=> b!1072681 m!991867))

(declare-fun m!991869 () Bool)

(assert (=> b!1072681 m!991869))

(assert (=> b!1072681 m!991867))

(declare-fun m!991871 () Bool)

(assert (=> b!1072681 m!991871))

(assert (=> b!1072681 m!991853))

(declare-fun m!991873 () Bool)

(assert (=> b!1072681 m!991873))

(declare-fun m!991875 () Bool)

(assert (=> b!1072681 m!991875))

(declare-fun m!991877 () Bool)

(assert (=> b!1072681 m!991877))

(declare-fun m!991879 () Bool)

(assert (=> b!1072681 m!991879))

(assert (=> b!1072681 m!991875))

(declare-fun m!991881 () Bool)

(assert (=> b!1072681 m!991881))

(declare-fun m!991883 () Bool)

(assert (=> b!1072681 m!991883))

(declare-fun m!991885 () Bool)

(assert (=> b!1072681 m!991885))

(declare-fun m!991887 () Bool)

(assert (=> b!1072681 m!991887))

(assert (=> b!1072681 m!991885))

(assert (=> b!1072681 m!991877))

(assert (=> d!129319 m!991773))

(assert (=> b!1072679 m!991853))

(assert (=> b!1072679 m!991853))

(assert (=> b!1072679 m!991855))

(declare-fun m!991889 () Bool)

(assert (=> b!1072668 m!991889))

(assert (=> b!1072669 m!991853))

(assert (=> b!1072669 m!991853))

(declare-fun m!991891 () Bool)

(assert (=> b!1072669 m!991891))

(declare-fun m!991893 () Bool)

(assert (=> b!1072682 m!991893))

(declare-fun m!991895 () Bool)

(assert (=> bm!45257 m!991895))

(assert (=> bm!45256 m!991767))

(declare-fun m!991897 () Bool)

(assert (=> b!1072676 m!991897))

(declare-fun m!991899 () Bool)

(assert (=> b!1072662 m!991899))

(assert (=> b!1072662 m!991853))

(declare-fun m!991901 () Bool)

(assert (=> b!1072662 m!991901))

(assert (=> b!1072662 m!991853))

(declare-fun m!991903 () Bool)

(assert (=> b!1072662 m!991903))

(assert (=> b!1072662 m!991903))

(assert (=> b!1072662 m!991899))

(declare-fun m!991905 () Bool)

(assert (=> b!1072662 m!991905))

(declare-fun m!991907 () Bool)

(assert (=> bm!45258 m!991907))

(assert (=> b!1072581 d!129319))

(declare-fun b!1072685 () Bool)

(declare-fun lt!475772 () ListLongMap!14597)

(declare-fun e!612788 () Bool)

(assert (=> b!1072685 (= e!612788 (= (apply!966 lt!475772 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)) (get!17198 (select (arr!33048 _values!955) #b00000000000000000000000000000000) (dynLambda!2042 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1072685 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33585 _values!955)))))

(assert (=> b!1072685 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(declare-fun d!129321 () Bool)

(declare-fun e!612778 () Bool)

(assert (=> d!129321 e!612778))

(declare-fun res!715617 () Bool)

(assert (=> d!129321 (=> (not res!715617) (not e!612778))))

(assert (=> d!129321 (= res!715617 (or (bvsge #b00000000000000000000000000000000 (size!33586 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33586 _keys!1163)))))))

(declare-fun lt!475779 () ListLongMap!14597)

(assert (=> d!129321 (= lt!475772 lt!475779)))

(declare-fun lt!475783 () Unit!35289)

(declare-fun e!612789 () Unit!35289)

(assert (=> d!129321 (= lt!475783 e!612789)))

(declare-fun c!107665 () Bool)

(declare-fun e!612785 () Bool)

(assert (=> d!129321 (= c!107665 e!612785)))

(declare-fun res!715619 () Bool)

(assert (=> d!129321 (=> (not res!715619) (not e!612785))))

(assert (=> d!129321 (= res!715619 (bvslt #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(declare-fun e!612780 () ListLongMap!14597)

(assert (=> d!129321 (= lt!475779 e!612780)))

(declare-fun c!107666 () Bool)

(assert (=> d!129321 (= c!107666 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129321 (validMask!0 mask!1515)))

(assert (=> d!129321 (= (getCurrentListMap!4175 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!475772)))

(declare-fun bm!45259 () Bool)

(declare-fun call!45262 () ListLongMap!14597)

(declare-fun call!45264 () ListLongMap!14597)

(assert (=> bm!45259 (= call!45262 call!45264)))

(declare-fun bm!45260 () Bool)

(declare-fun call!45268 () ListLongMap!14597)

(assert (=> bm!45260 (= call!45264 call!45268)))

(declare-fun b!1072686 () Bool)

(declare-fun e!612777 () ListLongMap!14597)

(declare-fun call!45267 () ListLongMap!14597)

(assert (=> b!1072686 (= e!612777 call!45267)))

(declare-fun b!1072687 () Bool)

(declare-fun e!612786 () Bool)

(declare-fun e!612783 () Bool)

(assert (=> b!1072687 (= e!612786 e!612783)))

(declare-fun res!715618 () Bool)

(declare-fun call!45266 () Bool)

(assert (=> b!1072687 (= res!715618 call!45266)))

(assert (=> b!1072687 (=> (not res!715618) (not e!612783))))

(declare-fun bm!45261 () Bool)

(assert (=> bm!45261 (= call!45266 (contains!6337 lt!475772 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1072688 () Bool)

(declare-fun Unit!35294 () Unit!35289)

(assert (=> b!1072688 (= e!612789 Unit!35294)))

(declare-fun b!1072689 () Bool)

(assert (=> b!1072689 (= e!612780 e!612777)))

(declare-fun c!107662 () Bool)

(assert (=> b!1072689 (= c!107662 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1072690 () Bool)

(declare-fun c!107663 () Bool)

(assert (=> b!1072690 (= c!107663 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!612779 () ListLongMap!14597)

(assert (=> b!1072690 (= e!612777 e!612779)))

(declare-fun b!1072691 () Bool)

(declare-fun call!45263 () ListLongMap!14597)

(assert (=> b!1072691 (= e!612780 (+!3168 call!45263 (tuple2!16617 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun b!1072692 () Bool)

(declare-fun e!612784 () Bool)

(assert (=> b!1072692 (= e!612784 e!612788)))

(declare-fun res!715621 () Bool)

(assert (=> b!1072692 (=> (not res!715621) (not e!612788))))

(assert (=> b!1072692 (= res!715621 (contains!6337 lt!475772 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1072692 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(declare-fun b!1072693 () Bool)

(declare-fun e!612781 () Bool)

(declare-fun call!45265 () Bool)

(assert (=> b!1072693 (= e!612781 (not call!45265))))

(declare-fun bm!45262 () Bool)

(assert (=> bm!45262 (= call!45267 call!45263)))

(declare-fun b!1072694 () Bool)

(assert (=> b!1072694 (= e!612785 (validKeyInArray!0 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1072695 () Bool)

(assert (=> b!1072695 (= e!612779 call!45267)))

(declare-fun b!1072696 () Bool)

(declare-fun res!715616 () Bool)

(assert (=> b!1072696 (=> (not res!715616) (not e!612778))))

(assert (=> b!1072696 (= res!715616 e!612781)))

(declare-fun c!107664 () Bool)

(assert (=> b!1072696 (= c!107664 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072697 () Bool)

(assert (=> b!1072697 (= e!612779 call!45262)))

(declare-fun b!1072698 () Bool)

(assert (=> b!1072698 (= e!612786 (not call!45266))))

(declare-fun b!1072699 () Bool)

(declare-fun e!612787 () Bool)

(assert (=> b!1072699 (= e!612787 (= (apply!966 lt!475772 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(declare-fun b!1072700 () Bool)

(assert (=> b!1072700 (= e!612781 e!612787)))

(declare-fun res!715614 () Bool)

(assert (=> b!1072700 (= res!715614 call!45265)))

(assert (=> b!1072700 (=> (not res!715614) (not e!612787))))

(declare-fun b!1072701 () Bool)

(declare-fun res!715622 () Bool)

(assert (=> b!1072701 (=> (not res!715622) (not e!612778))))

(assert (=> b!1072701 (= res!715622 e!612784)))

(declare-fun res!715620 () Bool)

(assert (=> b!1072701 (=> res!715620 e!612784)))

(declare-fun e!612782 () Bool)

(assert (=> b!1072701 (= res!715620 (not e!612782))))

(declare-fun res!715615 () Bool)

(assert (=> b!1072701 (=> (not res!715615) (not e!612782))))

(assert (=> b!1072701 (= res!715615 (bvslt #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(declare-fun b!1072702 () Bool)

(assert (=> b!1072702 (= e!612782 (validKeyInArray!0 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45263 () Bool)

(assert (=> bm!45263 (= call!45268 (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072703 () Bool)

(assert (=> b!1072703 (= e!612778 e!612786)))

(declare-fun c!107667 () Bool)

(assert (=> b!1072703 (= c!107667 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!45264 () Bool)

(assert (=> bm!45264 (= call!45263 (+!3168 (ite c!107666 call!45268 (ite c!107662 call!45264 call!45262)) (ite (or c!107666 c!107662) (tuple2!16617 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16617 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(declare-fun b!1072704 () Bool)

(declare-fun lt!475784 () Unit!35289)

(assert (=> b!1072704 (= e!612789 lt!475784)))

(declare-fun lt!475769 () ListLongMap!14597)

(assert (=> b!1072704 (= lt!475769 (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!475764 () (_ BitVec 64))

(assert (=> b!1072704 (= lt!475764 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!475775 () (_ BitVec 64))

(assert (=> b!1072704 (= lt!475775 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!475776 () Unit!35289)

(assert (=> b!1072704 (= lt!475776 (addStillContains!649 lt!475769 lt!475764 zeroValueBefore!47 lt!475775))))

(assert (=> b!1072704 (contains!6337 (+!3168 lt!475769 (tuple2!16617 lt!475764 zeroValueBefore!47)) lt!475775)))

(declare-fun lt!475766 () Unit!35289)

(assert (=> b!1072704 (= lt!475766 lt!475776)))

(declare-fun lt!475785 () ListLongMap!14597)

(assert (=> b!1072704 (= lt!475785 (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!475780 () (_ BitVec 64))

(assert (=> b!1072704 (= lt!475780 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!475781 () (_ BitVec 64))

(assert (=> b!1072704 (= lt!475781 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!475777 () Unit!35289)

(assert (=> b!1072704 (= lt!475777 (addApplyDifferent!501 lt!475785 lt!475780 minValue!907 lt!475781))))

(assert (=> b!1072704 (= (apply!966 (+!3168 lt!475785 (tuple2!16617 lt!475780 minValue!907)) lt!475781) (apply!966 lt!475785 lt!475781))))

(declare-fun lt!475773 () Unit!35289)

(assert (=> b!1072704 (= lt!475773 lt!475777)))

(declare-fun lt!475767 () ListLongMap!14597)

(assert (=> b!1072704 (= lt!475767 (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!475768 () (_ BitVec 64))

(assert (=> b!1072704 (= lt!475768 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!475770 () (_ BitVec 64))

(assert (=> b!1072704 (= lt!475770 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!475782 () Unit!35289)

(assert (=> b!1072704 (= lt!475782 (addApplyDifferent!501 lt!475767 lt!475768 zeroValueBefore!47 lt!475770))))

(assert (=> b!1072704 (= (apply!966 (+!3168 lt!475767 (tuple2!16617 lt!475768 zeroValueBefore!47)) lt!475770) (apply!966 lt!475767 lt!475770))))

(declare-fun lt!475765 () Unit!35289)

(assert (=> b!1072704 (= lt!475765 lt!475782)))

(declare-fun lt!475771 () ListLongMap!14597)

(assert (=> b!1072704 (= lt!475771 (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!475778 () (_ BitVec 64))

(assert (=> b!1072704 (= lt!475778 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!475774 () (_ BitVec 64))

(assert (=> b!1072704 (= lt!475774 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1072704 (= lt!475784 (addApplyDifferent!501 lt!475771 lt!475778 minValue!907 lt!475774))))

(assert (=> b!1072704 (= (apply!966 (+!3168 lt!475771 (tuple2!16617 lt!475778 minValue!907)) lt!475774) (apply!966 lt!475771 lt!475774))))

(declare-fun b!1072705 () Bool)

(assert (=> b!1072705 (= e!612783 (= (apply!966 lt!475772 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun bm!45265 () Bool)

(assert (=> bm!45265 (= call!45265 (contains!6337 lt!475772 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!129321 c!107666) b!1072691))

(assert (= (and d!129321 (not c!107666)) b!1072689))

(assert (= (and b!1072689 c!107662) b!1072686))

(assert (= (and b!1072689 (not c!107662)) b!1072690))

(assert (= (and b!1072690 c!107663) b!1072695))

(assert (= (and b!1072690 (not c!107663)) b!1072697))

(assert (= (or b!1072695 b!1072697) bm!45259))

(assert (= (or b!1072686 bm!45259) bm!45260))

(assert (= (or b!1072686 b!1072695) bm!45262))

(assert (= (or b!1072691 bm!45260) bm!45263))

(assert (= (or b!1072691 bm!45262) bm!45264))

(assert (= (and d!129321 res!715619) b!1072694))

(assert (= (and d!129321 c!107665) b!1072704))

(assert (= (and d!129321 (not c!107665)) b!1072688))

(assert (= (and d!129321 res!715617) b!1072701))

(assert (= (and b!1072701 res!715615) b!1072702))

(assert (= (and b!1072701 (not res!715620)) b!1072692))

(assert (= (and b!1072692 res!715621) b!1072685))

(assert (= (and b!1072701 res!715622) b!1072696))

(assert (= (and b!1072696 c!107664) b!1072700))

(assert (= (and b!1072696 (not c!107664)) b!1072693))

(assert (= (and b!1072700 res!715614) b!1072699))

(assert (= (or b!1072700 b!1072693) bm!45265))

(assert (= (and b!1072696 res!715616) b!1072703))

(assert (= (and b!1072703 c!107667) b!1072687))

(assert (= (and b!1072703 (not c!107667)) b!1072698))

(assert (= (and b!1072687 res!715618) b!1072705))

(assert (= (or b!1072687 b!1072698) bm!45261))

(declare-fun b_lambda!16733 () Bool)

(assert (=> (not b_lambda!16733) (not b!1072685)))

(assert (=> b!1072685 t!32543))

(declare-fun b_and!34949 () Bool)

(assert (= b_and!34947 (and (=> t!32543 result!14787) b_and!34949)))

(assert (=> b!1072694 m!991853))

(assert (=> b!1072694 m!991853))

(assert (=> b!1072694 m!991855))

(declare-fun m!991909 () Bool)

(assert (=> bm!45261 m!991909))

(declare-fun m!991911 () Bool)

(assert (=> b!1072704 m!991911))

(declare-fun m!991913 () Bool)

(assert (=> b!1072704 m!991913))

(declare-fun m!991915 () Bool)

(assert (=> b!1072704 m!991915))

(declare-fun m!991917 () Bool)

(assert (=> b!1072704 m!991917))

(assert (=> b!1072704 m!991769))

(declare-fun m!991919 () Bool)

(assert (=> b!1072704 m!991919))

(declare-fun m!991921 () Bool)

(assert (=> b!1072704 m!991921))

(assert (=> b!1072704 m!991919))

(declare-fun m!991923 () Bool)

(assert (=> b!1072704 m!991923))

(assert (=> b!1072704 m!991853))

(declare-fun m!991925 () Bool)

(assert (=> b!1072704 m!991925))

(declare-fun m!991927 () Bool)

(assert (=> b!1072704 m!991927))

(declare-fun m!991929 () Bool)

(assert (=> b!1072704 m!991929))

(declare-fun m!991931 () Bool)

(assert (=> b!1072704 m!991931))

(assert (=> b!1072704 m!991927))

(declare-fun m!991933 () Bool)

(assert (=> b!1072704 m!991933))

(declare-fun m!991935 () Bool)

(assert (=> b!1072704 m!991935))

(declare-fun m!991937 () Bool)

(assert (=> b!1072704 m!991937))

(declare-fun m!991939 () Bool)

(assert (=> b!1072704 m!991939))

(assert (=> b!1072704 m!991937))

(assert (=> b!1072704 m!991929))

(assert (=> d!129321 m!991773))

(assert (=> b!1072702 m!991853))

(assert (=> b!1072702 m!991853))

(assert (=> b!1072702 m!991855))

(declare-fun m!991941 () Bool)

(assert (=> b!1072691 m!991941))

(assert (=> b!1072692 m!991853))

(assert (=> b!1072692 m!991853))

(declare-fun m!991943 () Bool)

(assert (=> b!1072692 m!991943))

(declare-fun m!991945 () Bool)

(assert (=> b!1072705 m!991945))

(declare-fun m!991947 () Bool)

(assert (=> bm!45264 m!991947))

(assert (=> bm!45263 m!991769))

(declare-fun m!991949 () Bool)

(assert (=> b!1072699 m!991949))

(assert (=> b!1072685 m!991899))

(assert (=> b!1072685 m!991853))

(declare-fun m!991951 () Bool)

(assert (=> b!1072685 m!991951))

(assert (=> b!1072685 m!991853))

(assert (=> b!1072685 m!991903))

(assert (=> b!1072685 m!991903))

(assert (=> b!1072685 m!991899))

(assert (=> b!1072685 m!991905))

(declare-fun m!991953 () Bool)

(assert (=> bm!45265 m!991953))

(assert (=> b!1072581 d!129321))

(declare-fun d!129323 () Bool)

(declare-fun e!612790 () Bool)

(assert (=> d!129323 e!612790))

(declare-fun res!715624 () Bool)

(assert (=> d!129323 (=> (not res!715624) (not e!612790))))

(declare-fun lt!475788 () ListLongMap!14597)

(assert (=> d!129323 (= res!715624 (contains!6337 lt!475788 (_1!8318 lt!475642)))))

(declare-fun lt!475789 () List!23197)

(assert (=> d!129323 (= lt!475788 (ListLongMap!14598 lt!475789))))

(declare-fun lt!475787 () Unit!35289)

(declare-fun lt!475786 () Unit!35289)

(assert (=> d!129323 (= lt!475787 lt!475786)))

(assert (=> d!129323 (= (getValueByKey!607 lt!475789 (_1!8318 lt!475642)) (Some!657 (_2!8318 lt!475642)))))

(assert (=> d!129323 (= lt!475786 (lemmaContainsTupThenGetReturnValue!286 lt!475789 (_1!8318 lt!475642) (_2!8318 lt!475642)))))

(assert (=> d!129323 (= lt!475789 (insertStrictlySorted!378 (toList!7314 lt!475638) (_1!8318 lt!475642) (_2!8318 lt!475642)))))

(assert (=> d!129323 (= (+!3168 lt!475638 lt!475642) lt!475788)))

(declare-fun b!1072706 () Bool)

(declare-fun res!715623 () Bool)

(assert (=> b!1072706 (=> (not res!715623) (not e!612790))))

(assert (=> b!1072706 (= res!715623 (= (getValueByKey!607 (toList!7314 lt!475788) (_1!8318 lt!475642)) (Some!657 (_2!8318 lt!475642))))))

(declare-fun b!1072707 () Bool)

(assert (=> b!1072707 (= e!612790 (contains!6338 (toList!7314 lt!475788) lt!475642))))

(assert (= (and d!129323 res!715624) b!1072706))

(assert (= (and b!1072706 res!715623) b!1072707))

(declare-fun m!991955 () Bool)

(assert (=> d!129323 m!991955))

(declare-fun m!991957 () Bool)

(assert (=> d!129323 m!991957))

(declare-fun m!991959 () Bool)

(assert (=> d!129323 m!991959))

(declare-fun m!991961 () Bool)

(assert (=> d!129323 m!991961))

(declare-fun m!991963 () Bool)

(assert (=> b!1072706 m!991963))

(declare-fun m!991965 () Bool)

(assert (=> b!1072707 m!991965))

(assert (=> b!1072581 d!129323))

(declare-fun d!129325 () Bool)

(assert (=> d!129325 (= (-!703 (+!3168 lt!475640 (tuple2!16617 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) #b0000000000000000000000000000000000000000000000000000000000000000) lt!475640)))

(declare-fun lt!475792 () Unit!35289)

(declare-fun choose!1751 (ListLongMap!14597 (_ BitVec 64) V!39659) Unit!35289)

(assert (=> d!129325 (= lt!475792 (choose!1751 lt!475640 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> d!129325 (not (contains!6337 lt!475640 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129325 (= (addThenRemoveForNewKeyIsSame!77 lt!475640 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) lt!475792)))

(declare-fun bs!31604 () Bool)

(assert (= bs!31604 d!129325))

(declare-fun m!991967 () Bool)

(assert (=> bs!31604 m!991967))

(assert (=> bs!31604 m!991967))

(declare-fun m!991969 () Bool)

(assert (=> bs!31604 m!991969))

(declare-fun m!991971 () Bool)

(assert (=> bs!31604 m!991971))

(declare-fun m!991973 () Bool)

(assert (=> bs!31604 m!991973))

(assert (=> b!1072581 d!129325))

(declare-fun d!129327 () Bool)

(declare-fun e!612791 () Bool)

(assert (=> d!129327 e!612791))

(declare-fun res!715626 () Bool)

(assert (=> d!129327 (=> (not res!715626) (not e!612791))))

(declare-fun lt!475795 () ListLongMap!14597)

(assert (=> d!129327 (= res!715626 (contains!6337 lt!475795 (_1!8318 lt!475642)))))

(declare-fun lt!475796 () List!23197)

(assert (=> d!129327 (= lt!475795 (ListLongMap!14598 lt!475796))))

(declare-fun lt!475794 () Unit!35289)

(declare-fun lt!475793 () Unit!35289)

(assert (=> d!129327 (= lt!475794 lt!475793)))

(assert (=> d!129327 (= (getValueByKey!607 lt!475796 (_1!8318 lt!475642)) (Some!657 (_2!8318 lt!475642)))))

(assert (=> d!129327 (= lt!475793 (lemmaContainsTupThenGetReturnValue!286 lt!475796 (_1!8318 lt!475642) (_2!8318 lt!475642)))))

(assert (=> d!129327 (= lt!475796 (insertStrictlySorted!378 (toList!7314 (+!3168 lt!475638 lt!475639)) (_1!8318 lt!475642) (_2!8318 lt!475642)))))

(assert (=> d!129327 (= (+!3168 (+!3168 lt!475638 lt!475639) lt!475642) lt!475795)))

(declare-fun b!1072708 () Bool)

(declare-fun res!715625 () Bool)

(assert (=> b!1072708 (=> (not res!715625) (not e!612791))))

(assert (=> b!1072708 (= res!715625 (= (getValueByKey!607 (toList!7314 lt!475795) (_1!8318 lt!475642)) (Some!657 (_2!8318 lt!475642))))))

(declare-fun b!1072709 () Bool)

(assert (=> b!1072709 (= e!612791 (contains!6338 (toList!7314 lt!475795) lt!475642))))

(assert (= (and d!129327 res!715626) b!1072708))

(assert (= (and b!1072708 res!715625) b!1072709))

(declare-fun m!991975 () Bool)

(assert (=> d!129327 m!991975))

(declare-fun m!991977 () Bool)

(assert (=> d!129327 m!991977))

(declare-fun m!991979 () Bool)

(assert (=> d!129327 m!991979))

(declare-fun m!991981 () Bool)

(assert (=> d!129327 m!991981))

(declare-fun m!991983 () Bool)

(assert (=> b!1072708 m!991983))

(declare-fun m!991985 () Bool)

(assert (=> b!1072709 m!991985))

(assert (=> b!1072581 d!129327))

(declare-fun d!129329 () Bool)

(declare-fun lt!475799 () ListLongMap!14597)

(assert (=> d!129329 (not (contains!6337 lt!475799 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!75 (List!23197 (_ BitVec 64)) List!23197)

(assert (=> d!129329 (= lt!475799 (ListLongMap!14598 (removeStrictlySorted!75 (toList!7314 lt!475633) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129329 (= (-!703 lt!475633 #b0000000000000000000000000000000000000000000000000000000000000000) lt!475799)))

(declare-fun bs!31605 () Bool)

(assert (= bs!31605 d!129329))

(declare-fun m!991987 () Bool)

(assert (=> bs!31605 m!991987))

(declare-fun m!991989 () Bool)

(assert (=> bs!31605 m!991989))

(assert (=> b!1072581 d!129329))

(declare-fun d!129331 () Bool)

(declare-fun lt!475800 () ListLongMap!14597)

(assert (=> d!129331 (not (contains!6337 lt!475800 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!129331 (= lt!475800 (ListLongMap!14598 (removeStrictlySorted!75 (toList!7314 lt!475636) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129331 (= (-!703 lt!475636 #b0000000000000000000000000000000000000000000000000000000000000000) lt!475800)))

(declare-fun bs!31606 () Bool)

(assert (= bs!31606 d!129331))

(declare-fun m!991991 () Bool)

(assert (=> bs!31606 m!991991))

(declare-fun m!991993 () Bool)

(assert (=> bs!31606 m!991993))

(assert (=> b!1072581 d!129331))

(declare-fun b!1072720 () Bool)

(declare-fun e!612800 () Bool)

(declare-fun call!45271 () Bool)

(assert (=> b!1072720 (= e!612800 call!45271)))

(declare-fun d!129333 () Bool)

(declare-fun res!715633 () Bool)

(declare-fun e!612801 () Bool)

(assert (=> d!129333 (=> res!715633 e!612801)))

(assert (=> d!129333 (= res!715633 (bvsge #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(assert (=> d!129333 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23195) e!612801)))

(declare-fun b!1072721 () Bool)

(declare-fun e!612803 () Bool)

(assert (=> b!1072721 (= e!612803 e!612800)))

(declare-fun c!107670 () Bool)

(assert (=> b!1072721 (= c!107670 (validKeyInArray!0 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1072722 () Bool)

(declare-fun e!612802 () Bool)

(declare-fun contains!6339 (List!23198 (_ BitVec 64)) Bool)

(assert (=> b!1072722 (= e!612802 (contains!6339 Nil!23195 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45268 () Bool)

(assert (=> bm!45268 (= call!45271 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107670 (Cons!23194 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000) Nil!23195) Nil!23195)))))

(declare-fun b!1072723 () Bool)

(assert (=> b!1072723 (= e!612801 e!612803)))

(declare-fun res!715635 () Bool)

(assert (=> b!1072723 (=> (not res!715635) (not e!612803))))

(assert (=> b!1072723 (= res!715635 (not e!612802))))

(declare-fun res!715634 () Bool)

(assert (=> b!1072723 (=> (not res!715634) (not e!612802))))

(assert (=> b!1072723 (= res!715634 (validKeyInArray!0 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1072724 () Bool)

(assert (=> b!1072724 (= e!612800 call!45271)))

(assert (= (and d!129333 (not res!715633)) b!1072723))

(assert (= (and b!1072723 res!715634) b!1072722))

(assert (= (and b!1072723 res!715635) b!1072721))

(assert (= (and b!1072721 c!107670) b!1072724))

(assert (= (and b!1072721 (not c!107670)) b!1072720))

(assert (= (or b!1072724 b!1072720) bm!45268))

(assert (=> b!1072721 m!991853))

(assert (=> b!1072721 m!991853))

(assert (=> b!1072721 m!991855))

(assert (=> b!1072722 m!991853))

(assert (=> b!1072722 m!991853))

(declare-fun m!991995 () Bool)

(assert (=> b!1072722 m!991995))

(assert (=> bm!45268 m!991853))

(declare-fun m!991997 () Bool)

(assert (=> bm!45268 m!991997))

(assert (=> b!1072723 m!991853))

(assert (=> b!1072723 m!991853))

(assert (=> b!1072723 m!991855))

(assert (=> b!1072580 d!129333))

(declare-fun d!129335 () Bool)

(declare-fun e!612804 () Bool)

(assert (=> d!129335 e!612804))

(declare-fun res!715637 () Bool)

(assert (=> d!129335 (=> (not res!715637) (not e!612804))))

(declare-fun lt!475803 () ListLongMap!14597)

(assert (=> d!129335 (= res!715637 (contains!6337 lt!475803 (_1!8318 lt!475642)))))

(declare-fun lt!475804 () List!23197)

(assert (=> d!129335 (= lt!475803 (ListLongMap!14598 lt!475804))))

(declare-fun lt!475802 () Unit!35289)

(declare-fun lt!475801 () Unit!35289)

(assert (=> d!129335 (= lt!475802 lt!475801)))

(assert (=> d!129335 (= (getValueByKey!607 lt!475804 (_1!8318 lt!475642)) (Some!657 (_2!8318 lt!475642)))))

(assert (=> d!129335 (= lt!475801 (lemmaContainsTupThenGetReturnValue!286 lt!475804 (_1!8318 lt!475642) (_2!8318 lt!475642)))))

(assert (=> d!129335 (= lt!475804 (insertStrictlySorted!378 (toList!7314 lt!475631) (_1!8318 lt!475642) (_2!8318 lt!475642)))))

(assert (=> d!129335 (= (+!3168 lt!475631 lt!475642) lt!475803)))

(declare-fun b!1072725 () Bool)

(declare-fun res!715636 () Bool)

(assert (=> b!1072725 (=> (not res!715636) (not e!612804))))

(assert (=> b!1072725 (= res!715636 (= (getValueByKey!607 (toList!7314 lt!475803) (_1!8318 lt!475642)) (Some!657 (_2!8318 lt!475642))))))

(declare-fun b!1072726 () Bool)

(assert (=> b!1072726 (= e!612804 (contains!6338 (toList!7314 lt!475803) lt!475642))))

(assert (= (and d!129335 res!715637) b!1072725))

(assert (= (and b!1072725 res!715636) b!1072726))

(declare-fun m!991999 () Bool)

(assert (=> d!129335 m!991999))

(declare-fun m!992001 () Bool)

(assert (=> d!129335 m!992001))

(declare-fun m!992003 () Bool)

(assert (=> d!129335 m!992003))

(declare-fun m!992005 () Bool)

(assert (=> d!129335 m!992005))

(declare-fun m!992007 () Bool)

(assert (=> b!1072725 m!992007))

(declare-fun m!992009 () Bool)

(assert (=> b!1072726 m!992009))

(assert (=> b!1072579 d!129335))

(declare-fun b!1072735 () Bool)

(declare-fun e!612813 () Bool)

(declare-fun e!612812 () Bool)

(assert (=> b!1072735 (= e!612813 e!612812)))

(declare-fun c!107673 () Bool)

(assert (=> b!1072735 (= c!107673 (validKeyInArray!0 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!129337 () Bool)

(declare-fun res!715642 () Bool)

(assert (=> d!129337 (=> res!715642 e!612813)))

(assert (=> d!129337 (= res!715642 (bvsge #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(assert (=> d!129337 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!612813)))

(declare-fun b!1072736 () Bool)

(declare-fun call!45274 () Bool)

(assert (=> b!1072736 (= e!612812 call!45274)))

(declare-fun b!1072737 () Bool)

(declare-fun e!612811 () Bool)

(assert (=> b!1072737 (= e!612812 e!612811)))

(declare-fun lt!475813 () (_ BitVec 64))

(assert (=> b!1072737 (= lt!475813 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!475811 () Unit!35289)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!68716 (_ BitVec 64) (_ BitVec 32)) Unit!35289)

(assert (=> b!1072737 (= lt!475811 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!475813 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!68716 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1072737 (arrayContainsKey!0 _keys!1163 lt!475813 #b00000000000000000000000000000000)))

(declare-fun lt!475812 () Unit!35289)

(assert (=> b!1072737 (= lt!475812 lt!475811)))

(declare-fun res!715643 () Bool)

(declare-datatypes ((SeekEntryResult!9881 0))(
  ( (MissingZero!9881 (index!41894 (_ BitVec 32))) (Found!9881 (index!41895 (_ BitVec 32))) (Intermediate!9881 (undefined!10693 Bool) (index!41896 (_ BitVec 32)) (x!96110 (_ BitVec 32))) (Undefined!9881) (MissingVacant!9881 (index!41897 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!68716 (_ BitVec 32)) SeekEntryResult!9881)

(assert (=> b!1072737 (= res!715643 (= (seekEntryOrOpen!0 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9881 #b00000000000000000000000000000000)))))

(assert (=> b!1072737 (=> (not res!715643) (not e!612811))))

(declare-fun b!1072738 () Bool)

(assert (=> b!1072738 (= e!612811 call!45274)))

(declare-fun bm!45271 () Bool)

(assert (=> bm!45271 (= call!45274 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(assert (= (and d!129337 (not res!715642)) b!1072735))

(assert (= (and b!1072735 c!107673) b!1072737))

(assert (= (and b!1072735 (not c!107673)) b!1072736))

(assert (= (and b!1072737 res!715643) b!1072738))

(assert (= (or b!1072738 b!1072736) bm!45271))

(assert (=> b!1072735 m!991853))

(assert (=> b!1072735 m!991853))

(assert (=> b!1072735 m!991855))

(assert (=> b!1072737 m!991853))

(declare-fun m!992011 () Bool)

(assert (=> b!1072737 m!992011))

(declare-fun m!992013 () Bool)

(assert (=> b!1072737 m!992013))

(assert (=> b!1072737 m!991853))

(declare-fun m!992015 () Bool)

(assert (=> b!1072737 m!992015))

(declare-fun m!992017 () Bool)

(assert (=> bm!45271 m!992017))

(assert (=> b!1072578 d!129337))

(declare-fun d!129339 () Bool)

(assert (=> d!129339 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!94890 d!129339))

(declare-fun d!129341 () Bool)

(assert (=> d!129341 (= (array_inv!25404 _values!955) (bvsge (size!33585 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!94890 d!129341))

(declare-fun d!129343 () Bool)

(assert (=> d!129343 (= (array_inv!25405 _keys!1163) (bvsge (size!33586 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!94890 d!129343))

(declare-fun d!129345 () Bool)

(assert (=> d!129345 (= (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!475816 () Unit!35289)

(declare-fun choose!1752 (array!68716 array!68714 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39659 V!39659 V!39659 V!39659 (_ BitVec 32) Int) Unit!35289)

(assert (=> d!129345 (= lt!475816 (choose!1752 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!129345 (validMask!0 mask!1515)))

(assert (=> d!129345 (= (lemmaNoChangeToArrayThenSameMapNoExtras!883 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!475816)))

(declare-fun bs!31607 () Bool)

(assert (= bs!31607 d!129345))

(assert (=> bs!31607 m!991769))

(assert (=> bs!31607 m!991767))

(declare-fun m!992019 () Bool)

(assert (=> bs!31607 m!992019))

(assert (=> bs!31607 m!991773))

(assert (=> b!1072573 d!129345))

(declare-fun b!1072763 () Bool)

(declare-fun e!612831 () Bool)

(declare-fun e!612828 () Bool)

(assert (=> b!1072763 (= e!612831 e!612828)))

(assert (=> b!1072763 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(declare-fun res!715653 () Bool)

(declare-fun lt!475836 () ListLongMap!14597)

(assert (=> b!1072763 (= res!715653 (contains!6337 lt!475836 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1072763 (=> (not res!715653) (not e!612828))))

(declare-fun b!1072764 () Bool)

(declare-fun e!612832 () Bool)

(assert (=> b!1072764 (= e!612831 e!612832)))

(declare-fun c!107682 () Bool)

(assert (=> b!1072764 (= c!107682 (bvslt #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(declare-fun b!1072765 () Bool)

(declare-fun e!612829 () ListLongMap!14597)

(declare-fun e!612833 () ListLongMap!14597)

(assert (=> b!1072765 (= e!612829 e!612833)))

(declare-fun c!107683 () Bool)

(assert (=> b!1072765 (= c!107683 (validKeyInArray!0 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun call!45277 () ListLongMap!14597)

(declare-fun bm!45274 () Bool)

(assert (=> bm!45274 (= call!45277 (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1072766 () Bool)

(declare-fun e!612830 () Bool)

(assert (=> b!1072766 (= e!612830 e!612831)))

(declare-fun c!107684 () Bool)

(declare-fun e!612834 () Bool)

(assert (=> b!1072766 (= c!107684 e!612834)))

(declare-fun res!715655 () Bool)

(assert (=> b!1072766 (=> (not res!715655) (not e!612834))))

(assert (=> b!1072766 (= res!715655 (bvslt #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(declare-fun d!129347 () Bool)

(assert (=> d!129347 e!612830))

(declare-fun res!715652 () Bool)

(assert (=> d!129347 (=> (not res!715652) (not e!612830))))

(assert (=> d!129347 (= res!715652 (not (contains!6337 lt!475836 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129347 (= lt!475836 e!612829)))

(declare-fun c!107685 () Bool)

(assert (=> d!129347 (= c!107685 (bvsge #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(assert (=> d!129347 (validMask!0 mask!1515)))

(assert (=> d!129347 (= (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!475836)))

(declare-fun b!1072767 () Bool)

(assert (=> b!1072767 (= e!612829 (ListLongMap!14598 Nil!23194))))

(declare-fun b!1072768 () Bool)

(declare-fun res!715654 () Bool)

(assert (=> b!1072768 (=> (not res!715654) (not e!612830))))

(assert (=> b!1072768 (= res!715654 (not (contains!6337 lt!475836 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1072769 () Bool)

(assert (=> b!1072769 (= e!612832 (= lt!475836 (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1072770 () Bool)

(assert (=> b!1072770 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(assert (=> b!1072770 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33585 _values!955)))))

(assert (=> b!1072770 (= e!612828 (= (apply!966 lt!475836 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)) (get!17198 (select (arr!33048 _values!955) #b00000000000000000000000000000000) (dynLambda!2042 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1072771 () Bool)

(assert (=> b!1072771 (= e!612833 call!45277)))

(declare-fun b!1072772 () Bool)

(assert (=> b!1072772 (= e!612834 (validKeyInArray!0 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1072772 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1072773 () Bool)

(declare-fun lt!475837 () Unit!35289)

(declare-fun lt!475835 () Unit!35289)

(assert (=> b!1072773 (= lt!475837 lt!475835)))

(declare-fun lt!475832 () (_ BitVec 64))

(declare-fun lt!475831 () ListLongMap!14597)

(declare-fun lt!475834 () V!39659)

(declare-fun lt!475833 () (_ BitVec 64))

(assert (=> b!1072773 (not (contains!6337 (+!3168 lt!475831 (tuple2!16617 lt!475832 lt!475834)) lt!475833))))

(declare-fun addStillNotContains!261 (ListLongMap!14597 (_ BitVec 64) V!39659 (_ BitVec 64)) Unit!35289)

(assert (=> b!1072773 (= lt!475835 (addStillNotContains!261 lt!475831 lt!475832 lt!475834 lt!475833))))

(assert (=> b!1072773 (= lt!475833 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1072773 (= lt!475834 (get!17198 (select (arr!33048 _values!955) #b00000000000000000000000000000000) (dynLambda!2042 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1072773 (= lt!475832 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1072773 (= lt!475831 call!45277)))

(assert (=> b!1072773 (= e!612833 (+!3168 call!45277 (tuple2!16617 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000) (get!17198 (select (arr!33048 _values!955) #b00000000000000000000000000000000) (dynLambda!2042 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1072774 () Bool)

(declare-fun isEmpty!952 (ListLongMap!14597) Bool)

(assert (=> b!1072774 (= e!612832 (isEmpty!952 lt!475836))))

(assert (= (and d!129347 c!107685) b!1072767))

(assert (= (and d!129347 (not c!107685)) b!1072765))

(assert (= (and b!1072765 c!107683) b!1072773))

(assert (= (and b!1072765 (not c!107683)) b!1072771))

(assert (= (or b!1072773 b!1072771) bm!45274))

(assert (= (and d!129347 res!715652) b!1072768))

(assert (= (and b!1072768 res!715654) b!1072766))

(assert (= (and b!1072766 res!715655) b!1072772))

(assert (= (and b!1072766 c!107684) b!1072763))

(assert (= (and b!1072766 (not c!107684)) b!1072764))

(assert (= (and b!1072763 res!715653) b!1072770))

(assert (= (and b!1072764 c!107682) b!1072769))

(assert (= (and b!1072764 (not c!107682)) b!1072774))

(declare-fun b_lambda!16735 () Bool)

(assert (=> (not b_lambda!16735) (not b!1072770)))

(assert (=> b!1072770 t!32543))

(declare-fun b_and!34951 () Bool)

(assert (= b_and!34949 (and (=> t!32543 result!14787) b_and!34951)))

(declare-fun b_lambda!16737 () Bool)

(assert (=> (not b_lambda!16737) (not b!1072773)))

(assert (=> b!1072773 t!32543))

(declare-fun b_and!34953 () Bool)

(assert (= b_and!34951 (and (=> t!32543 result!14787) b_and!34953)))

(declare-fun m!992021 () Bool)

(assert (=> b!1072773 m!992021))

(assert (=> b!1072773 m!991903))

(assert (=> b!1072773 m!991903))

(assert (=> b!1072773 m!991899))

(assert (=> b!1072773 m!991905))

(assert (=> b!1072773 m!991899))

(declare-fun m!992023 () Bool)

(assert (=> b!1072773 m!992023))

(assert (=> b!1072773 m!992023))

(declare-fun m!992025 () Bool)

(assert (=> b!1072773 m!992025))

(assert (=> b!1072773 m!991853))

(declare-fun m!992027 () Bool)

(assert (=> b!1072773 m!992027))

(declare-fun m!992029 () Bool)

(assert (=> b!1072774 m!992029))

(assert (=> b!1072765 m!991853))

(assert (=> b!1072765 m!991853))

(assert (=> b!1072765 m!991855))

(declare-fun m!992031 () Bool)

(assert (=> b!1072769 m!992031))

(assert (=> bm!45274 m!992031))

(declare-fun m!992033 () Bool)

(assert (=> d!129347 m!992033))

(assert (=> d!129347 m!991773))

(declare-fun m!992035 () Bool)

(assert (=> b!1072768 m!992035))

(assert (=> b!1072770 m!991903))

(assert (=> b!1072770 m!991903))

(assert (=> b!1072770 m!991899))

(assert (=> b!1072770 m!991905))

(assert (=> b!1072770 m!991853))

(declare-fun m!992037 () Bool)

(assert (=> b!1072770 m!992037))

(assert (=> b!1072770 m!991899))

(assert (=> b!1072770 m!991853))

(assert (=> b!1072772 m!991853))

(assert (=> b!1072772 m!991853))

(assert (=> b!1072772 m!991855))

(assert (=> b!1072763 m!991853))

(assert (=> b!1072763 m!991853))

(declare-fun m!992039 () Bool)

(assert (=> b!1072763 m!992039))

(assert (=> b!1072573 d!129347))

(declare-fun b!1072775 () Bool)

(declare-fun e!612838 () Bool)

(declare-fun e!612835 () Bool)

(assert (=> b!1072775 (= e!612838 e!612835)))

(assert (=> b!1072775 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(declare-fun res!715657 () Bool)

(declare-fun lt!475843 () ListLongMap!14597)

(assert (=> b!1072775 (= res!715657 (contains!6337 lt!475843 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1072775 (=> (not res!715657) (not e!612835))))

(declare-fun b!1072776 () Bool)

(declare-fun e!612839 () Bool)

(assert (=> b!1072776 (= e!612838 e!612839)))

(declare-fun c!107686 () Bool)

(assert (=> b!1072776 (= c!107686 (bvslt #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(declare-fun b!1072777 () Bool)

(declare-fun e!612836 () ListLongMap!14597)

(declare-fun e!612840 () ListLongMap!14597)

(assert (=> b!1072777 (= e!612836 e!612840)))

(declare-fun c!107687 () Bool)

(assert (=> b!1072777 (= c!107687 (validKeyInArray!0 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45275 () Bool)

(declare-fun call!45278 () ListLongMap!14597)

(assert (=> bm!45275 (= call!45278 (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1072778 () Bool)

(declare-fun e!612837 () Bool)

(assert (=> b!1072778 (= e!612837 e!612838)))

(declare-fun c!107688 () Bool)

(declare-fun e!612841 () Bool)

(assert (=> b!1072778 (= c!107688 e!612841)))

(declare-fun res!715659 () Bool)

(assert (=> b!1072778 (=> (not res!715659) (not e!612841))))

(assert (=> b!1072778 (= res!715659 (bvslt #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(declare-fun d!129349 () Bool)

(assert (=> d!129349 e!612837))

(declare-fun res!715656 () Bool)

(assert (=> d!129349 (=> (not res!715656) (not e!612837))))

(assert (=> d!129349 (= res!715656 (not (contains!6337 lt!475843 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!129349 (= lt!475843 e!612836)))

(declare-fun c!107689 () Bool)

(assert (=> d!129349 (= c!107689 (bvsge #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(assert (=> d!129349 (validMask!0 mask!1515)))

(assert (=> d!129349 (= (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!475843)))

(declare-fun b!1072779 () Bool)

(assert (=> b!1072779 (= e!612836 (ListLongMap!14598 Nil!23194))))

(declare-fun b!1072780 () Bool)

(declare-fun res!715658 () Bool)

(assert (=> b!1072780 (=> (not res!715658) (not e!612837))))

(assert (=> b!1072780 (= res!715658 (not (contains!6337 lt!475843 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1072781 () Bool)

(assert (=> b!1072781 (= e!612839 (= lt!475843 (getCurrentListMapNoExtraKeys!3844 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1072782 () Bool)

(assert (=> b!1072782 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33586 _keys!1163)))))

(assert (=> b!1072782 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33585 _values!955)))))

(assert (=> b!1072782 (= e!612835 (= (apply!966 lt!475843 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)) (get!17198 (select (arr!33048 _values!955) #b00000000000000000000000000000000) (dynLambda!2042 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1072783 () Bool)

(assert (=> b!1072783 (= e!612840 call!45278)))

(declare-fun b!1072784 () Bool)

(assert (=> b!1072784 (= e!612841 (validKeyInArray!0 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1072784 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1072785 () Bool)

(declare-fun lt!475844 () Unit!35289)

(declare-fun lt!475842 () Unit!35289)

(assert (=> b!1072785 (= lt!475844 lt!475842)))

(declare-fun lt!475839 () (_ BitVec 64))

(declare-fun lt!475840 () (_ BitVec 64))

(declare-fun lt!475841 () V!39659)

(declare-fun lt!475838 () ListLongMap!14597)

(assert (=> b!1072785 (not (contains!6337 (+!3168 lt!475838 (tuple2!16617 lt!475839 lt!475841)) lt!475840))))

(assert (=> b!1072785 (= lt!475842 (addStillNotContains!261 lt!475838 lt!475839 lt!475841 lt!475840))))

(assert (=> b!1072785 (= lt!475840 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1072785 (= lt!475841 (get!17198 (select (arr!33048 _values!955) #b00000000000000000000000000000000) (dynLambda!2042 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1072785 (= lt!475839 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1072785 (= lt!475838 call!45278)))

(assert (=> b!1072785 (= e!612840 (+!3168 call!45278 (tuple2!16617 (select (arr!33049 _keys!1163) #b00000000000000000000000000000000) (get!17198 (select (arr!33048 _values!955) #b00000000000000000000000000000000) (dynLambda!2042 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1072786 () Bool)

(assert (=> b!1072786 (= e!612839 (isEmpty!952 lt!475843))))

(assert (= (and d!129349 c!107689) b!1072779))

(assert (= (and d!129349 (not c!107689)) b!1072777))

(assert (= (and b!1072777 c!107687) b!1072785))

(assert (= (and b!1072777 (not c!107687)) b!1072783))

(assert (= (or b!1072785 b!1072783) bm!45275))

(assert (= (and d!129349 res!715656) b!1072780))

(assert (= (and b!1072780 res!715658) b!1072778))

(assert (= (and b!1072778 res!715659) b!1072784))

(assert (= (and b!1072778 c!107688) b!1072775))

(assert (= (and b!1072778 (not c!107688)) b!1072776))

(assert (= (and b!1072775 res!715657) b!1072782))

(assert (= (and b!1072776 c!107686) b!1072781))

(assert (= (and b!1072776 (not c!107686)) b!1072786))

(declare-fun b_lambda!16739 () Bool)

(assert (=> (not b_lambda!16739) (not b!1072782)))

(assert (=> b!1072782 t!32543))

(declare-fun b_and!34955 () Bool)

(assert (= b_and!34953 (and (=> t!32543 result!14787) b_and!34955)))

(declare-fun b_lambda!16741 () Bool)

(assert (=> (not b_lambda!16741) (not b!1072785)))

(assert (=> b!1072785 t!32543))

(declare-fun b_and!34957 () Bool)

(assert (= b_and!34955 (and (=> t!32543 result!14787) b_and!34957)))

(declare-fun m!992041 () Bool)

(assert (=> b!1072785 m!992041))

(assert (=> b!1072785 m!991903))

(assert (=> b!1072785 m!991903))

(assert (=> b!1072785 m!991899))

(assert (=> b!1072785 m!991905))

(assert (=> b!1072785 m!991899))

(declare-fun m!992043 () Bool)

(assert (=> b!1072785 m!992043))

(assert (=> b!1072785 m!992043))

(declare-fun m!992045 () Bool)

(assert (=> b!1072785 m!992045))

(assert (=> b!1072785 m!991853))

(declare-fun m!992047 () Bool)

(assert (=> b!1072785 m!992047))

(declare-fun m!992049 () Bool)

(assert (=> b!1072786 m!992049))

(assert (=> b!1072777 m!991853))

(assert (=> b!1072777 m!991853))

(assert (=> b!1072777 m!991855))

(declare-fun m!992051 () Bool)

(assert (=> b!1072781 m!992051))

(assert (=> bm!45275 m!992051))

(declare-fun m!992053 () Bool)

(assert (=> d!129349 m!992053))

(assert (=> d!129349 m!991773))

(declare-fun m!992055 () Bool)

(assert (=> b!1072780 m!992055))

(assert (=> b!1072782 m!991903))

(assert (=> b!1072782 m!991903))

(assert (=> b!1072782 m!991899))

(assert (=> b!1072782 m!991905))

(assert (=> b!1072782 m!991853))

(declare-fun m!992057 () Bool)

(assert (=> b!1072782 m!992057))

(assert (=> b!1072782 m!991899))

(assert (=> b!1072782 m!991853))

(assert (=> b!1072784 m!991853))

(assert (=> b!1072784 m!991853))

(assert (=> b!1072784 m!991855))

(assert (=> b!1072775 m!991853))

(assert (=> b!1072775 m!991853))

(declare-fun m!992059 () Bool)

(assert (=> b!1072775 m!992059))

(assert (=> b!1072573 d!129349))

(declare-fun mapNonEmpty!40555 () Bool)

(declare-fun mapRes!40555 () Bool)

(declare-fun tp!77721 () Bool)

(declare-fun e!612846 () Bool)

(assert (=> mapNonEmpty!40555 (= mapRes!40555 (and tp!77721 e!612846))))

(declare-fun mapValue!40555 () ValueCell!12243)

(declare-fun mapRest!40555 () (Array (_ BitVec 32) ValueCell!12243))

(declare-fun mapKey!40555 () (_ BitVec 32))

(assert (=> mapNonEmpty!40555 (= mapRest!40549 (store mapRest!40555 mapKey!40555 mapValue!40555))))

(declare-fun b!1072793 () Bool)

(assert (=> b!1072793 (= e!612846 tp_is_empty!25893)))

(declare-fun b!1072794 () Bool)

(declare-fun e!612847 () Bool)

(assert (=> b!1072794 (= e!612847 tp_is_empty!25893)))

(declare-fun condMapEmpty!40555 () Bool)

(declare-fun mapDefault!40555 () ValueCell!12243)

(assert (=> mapNonEmpty!40549 (= condMapEmpty!40555 (= mapRest!40549 ((as const (Array (_ BitVec 32) ValueCell!12243)) mapDefault!40555)))))

(assert (=> mapNonEmpty!40549 (= tp!77711 (and e!612847 mapRes!40555))))

(declare-fun mapIsEmpty!40555 () Bool)

(assert (=> mapIsEmpty!40555 mapRes!40555))

(assert (= (and mapNonEmpty!40549 condMapEmpty!40555) mapIsEmpty!40555))

(assert (= (and mapNonEmpty!40549 (not condMapEmpty!40555)) mapNonEmpty!40555))

(assert (= (and mapNonEmpty!40555 ((_ is ValueCellFull!12243) mapValue!40555)) b!1072793))

(assert (= (and mapNonEmpty!40549 ((_ is ValueCellFull!12243) mapDefault!40555)) b!1072794))

(declare-fun m!992061 () Bool)

(assert (=> mapNonEmpty!40555 m!992061))

(declare-fun b_lambda!16743 () Bool)

(assert (= b_lambda!16735 (or (and start!94890 b_free!22083) b_lambda!16743)))

(declare-fun b_lambda!16745 () Bool)

(assert (= b_lambda!16731 (or (and start!94890 b_free!22083) b_lambda!16745)))

(declare-fun b_lambda!16747 () Bool)

(assert (= b_lambda!16739 (or (and start!94890 b_free!22083) b_lambda!16747)))

(declare-fun b_lambda!16749 () Bool)

(assert (= b_lambda!16733 (or (and start!94890 b_free!22083) b_lambda!16749)))

(declare-fun b_lambda!16751 () Bool)

(assert (= b_lambda!16741 (or (and start!94890 b_free!22083) b_lambda!16751)))

(declare-fun b_lambda!16753 () Bool)

(assert (= b_lambda!16737 (or (and start!94890 b_free!22083) b_lambda!16753)))

(check-sat (not b!1072721) (not b!1072765) (not b!1072772) (not b!1072777) (not b!1072694) (not bm!45256) (not b!1072726) b_and!34957 (not d!129319) (not b!1072706) (not b!1072723) (not b!1072768) (not bm!45275) (not b!1072709) (not d!129331) (not b!1072662) (not bm!45257) (not b!1072775) (not b_lambda!16743) tp_is_empty!25893 (not b!1072616) (not bm!45268) (not b!1072769) (not d!129321) (not b!1072685) (not b!1072668) (not b!1072773) (not d!129345) (not d!129315) (not b!1072770) (not b!1072708) (not bm!45271) (not bm!45254) (not b!1072679) (not b!1072669) (not d!129349) (not b!1072618) (not b!1072763) (not bm!45265) (not b_lambda!16751) (not b!1072702) (not b!1072676) (not b!1072705) (not bm!45261) (not b!1072699) (not b_lambda!16749) (not b!1072784) (not b!1072722) (not b!1072782) (not b!1072785) (not b!1072692) (not b!1072681) (not d!129347) (not b!1072617) (not d!129327) (not b_lambda!16747) (not b!1072774) (not bm!45258) (not d!129325) (not b!1072780) (not b!1072619) (not d!129329) (not b!1072786) (not bm!45274) (not b_lambda!16745) (not b_lambda!16753) (not d!129335) (not b_next!22083) (not b!1072691) (not bm!45264) (not b!1072671) (not d!129323) (not d!129313) (not b!1072725) (not bm!45263) (not b!1072781) (not b!1072735) (not d!129317) (not b!1072707) (not b!1072704) (not b!1072682) (not mapNonEmpty!40555) (not b!1072737))
(check-sat b_and!34957 (not b_next!22083))
