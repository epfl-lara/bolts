; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93914 () Bool)

(assert start!93914)

(declare-fun b_free!21351 () Bool)

(declare-fun b_next!21351 () Bool)

(assert (=> start!93914 (= b_free!21351 (not b_next!21351))))

(declare-fun tp!75477 () Bool)

(declare-fun b_and!34083 () Bool)

(assert (=> start!93914 (= tp!75477 b_and!34083)))

(declare-fun b!1061697 () Bool)

(declare-fun e!604680 () Bool)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67302 0))(
  ( (array!67303 (arr!32355 (Array (_ BitVec 32) (_ BitVec 64))) (size!32892 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67302)

(assert (=> b!1061697 (= e!604680 (not (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!32892 _keys!1163)))))))

(declare-datatypes ((V!38683 0))(
  ( (V!38684 (val!12631 Int)) )
))
(declare-datatypes ((tuple2!16060 0))(
  ( (tuple2!16061 (_1!8040 (_ BitVec 64)) (_2!8040 V!38683)) )
))
(declare-datatypes ((List!22675 0))(
  ( (Nil!22672) (Cons!22671 (h!23880 tuple2!16060) (t!31991 List!22675)) )
))
(declare-datatypes ((ListLongMap!14041 0))(
  ( (ListLongMap!14042 (toList!7036 List!22675)) )
))
(declare-fun lt!467706 () ListLongMap!14041)

(declare-fun lt!467708 () ListLongMap!14041)

(assert (=> b!1061697 (= lt!467706 lt!467708)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38683)

(declare-datatypes ((ValueCell!11877 0))(
  ( (ValueCellFull!11877 (v!15242 V!38683)) (EmptyCell!11877) )
))
(declare-datatypes ((array!67304 0))(
  ( (array!67305 (arr!32356 (Array (_ BitVec 32) ValueCell!11877)) (size!32893 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67304)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38683)

(declare-fun minValue!907 () V!38683)

(declare-datatypes ((Unit!34747 0))(
  ( (Unit!34748) )
))
(declare-fun lt!467707 () Unit!34747)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!639 (array!67302 array!67304 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38683 V!38683 V!38683 V!38683 (_ BitVec 32) Int) Unit!34747)

(assert (=> b!1061697 (= lt!467707 (lemmaNoChangeToArrayThenSameMapNoExtras!639 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3600 (array!67302 array!67304 (_ BitVec 32) (_ BitVec 32) V!38683 V!38683 (_ BitVec 32) Int) ListLongMap!14041)

(assert (=> b!1061697 (= lt!467708 (getCurrentListMapNoExtraKeys!3600 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1061697 (= lt!467706 (getCurrentListMapNoExtraKeys!3600 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061698 () Bool)

(declare-fun res!709056 () Bool)

(assert (=> b!1061698 (=> (not res!709056) (not e!604680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67302 (_ BitVec 32)) Bool)

(assert (=> b!1061698 (= res!709056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1061699 () Bool)

(declare-fun res!709057 () Bool)

(assert (=> b!1061699 (=> (not res!709057) (not e!604680))))

(declare-datatypes ((List!22676 0))(
  ( (Nil!22673) (Cons!22672 (h!23881 (_ BitVec 64)) (t!31992 List!22676)) )
))
(declare-fun arrayNoDuplicates!0 (array!67302 (_ BitVec 32) List!22676) Bool)

(assert (=> b!1061699 (= res!709057 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22673))))

(declare-fun mapNonEmpty!39412 () Bool)

(declare-fun mapRes!39412 () Bool)

(declare-fun tp!75476 () Bool)

(declare-fun e!604682 () Bool)

(assert (=> mapNonEmpty!39412 (= mapRes!39412 (and tp!75476 e!604682))))

(declare-fun mapValue!39412 () ValueCell!11877)

(declare-fun mapKey!39412 () (_ BitVec 32))

(declare-fun mapRest!39412 () (Array (_ BitVec 32) ValueCell!11877))

(assert (=> mapNonEmpty!39412 (= (arr!32356 _values!955) (store mapRest!39412 mapKey!39412 mapValue!39412))))

(declare-fun b!1061700 () Bool)

(declare-fun tp_is_empty!25161 () Bool)

(assert (=> b!1061700 (= e!604682 tp_is_empty!25161)))

(declare-fun b!1061701 () Bool)

(declare-fun e!604678 () Bool)

(declare-fun e!604679 () Bool)

(assert (=> b!1061701 (= e!604678 (and e!604679 mapRes!39412))))

(declare-fun condMapEmpty!39412 () Bool)

(declare-fun mapDefault!39412 () ValueCell!11877)

(assert (=> b!1061701 (= condMapEmpty!39412 (= (arr!32356 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11877)) mapDefault!39412)))))

(declare-fun res!709059 () Bool)

(assert (=> start!93914 (=> (not res!709059) (not e!604680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93914 (= res!709059 (validMask!0 mask!1515))))

(assert (=> start!93914 e!604680))

(assert (=> start!93914 true))

(assert (=> start!93914 tp_is_empty!25161))

(declare-fun array_inv!24906 (array!67304) Bool)

(assert (=> start!93914 (and (array_inv!24906 _values!955) e!604678)))

(assert (=> start!93914 tp!75477))

(declare-fun array_inv!24907 (array!67302) Bool)

(assert (=> start!93914 (array_inv!24907 _keys!1163)))

(declare-fun b!1061702 () Bool)

(declare-fun res!709058 () Bool)

(assert (=> b!1061702 (=> (not res!709058) (not e!604680))))

(assert (=> b!1061702 (= res!709058 (and (= (size!32893 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32892 _keys!1163) (size!32893 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1061703 () Bool)

(assert (=> b!1061703 (= e!604679 tp_is_empty!25161)))

(declare-fun mapIsEmpty!39412 () Bool)

(assert (=> mapIsEmpty!39412 mapRes!39412))

(assert (= (and start!93914 res!709059) b!1061702))

(assert (= (and b!1061702 res!709058) b!1061698))

(assert (= (and b!1061698 res!709056) b!1061699))

(assert (= (and b!1061699 res!709057) b!1061697))

(assert (= (and b!1061701 condMapEmpty!39412) mapIsEmpty!39412))

(assert (= (and b!1061701 (not condMapEmpty!39412)) mapNonEmpty!39412))

(get-info :version)

(assert (= (and mapNonEmpty!39412 ((_ is ValueCellFull!11877) mapValue!39412)) b!1061700))

(assert (= (and b!1061701 ((_ is ValueCellFull!11877) mapDefault!39412)) b!1061703))

(assert (= start!93914 b!1061701))

(declare-fun m!980639 () Bool)

(assert (=> b!1061697 m!980639))

(declare-fun m!980641 () Bool)

(assert (=> b!1061697 m!980641))

(declare-fun m!980643 () Bool)

(assert (=> b!1061697 m!980643))

(declare-fun m!980645 () Bool)

(assert (=> start!93914 m!980645))

(declare-fun m!980647 () Bool)

(assert (=> start!93914 m!980647))

(declare-fun m!980649 () Bool)

(assert (=> start!93914 m!980649))

(declare-fun m!980651 () Bool)

(assert (=> b!1061699 m!980651))

(declare-fun m!980653 () Bool)

(assert (=> mapNonEmpty!39412 m!980653))

(declare-fun m!980655 () Bool)

(assert (=> b!1061698 m!980655))

(check-sat (not b!1061697) (not mapNonEmpty!39412) b_and!34083 (not start!93914) (not b!1061698) (not b_next!21351) (not b!1061699) tp_is_empty!25161)
(check-sat b_and!34083 (not b_next!21351))
(get-model)

(declare-fun d!128779 () Bool)

(assert (=> d!128779 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!93914 d!128779))

(declare-fun d!128781 () Bool)

(assert (=> d!128781 (= (array_inv!24906 _values!955) (bvsge (size!32893 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!93914 d!128781))

(declare-fun d!128783 () Bool)

(assert (=> d!128783 (= (array_inv!24907 _keys!1163) (bvsge (size!32892 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!93914 d!128783))

(declare-fun d!128785 () Bool)

(assert (=> d!128785 (= (getCurrentListMapNoExtraKeys!3600 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3600 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!467720 () Unit!34747)

(declare-fun choose!1729 (array!67302 array!67304 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38683 V!38683 V!38683 V!38683 (_ BitVec 32) Int) Unit!34747)

(assert (=> d!128785 (= lt!467720 (choose!1729 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!128785 (validMask!0 mask!1515)))

(assert (=> d!128785 (= (lemmaNoChangeToArrayThenSameMapNoExtras!639 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!467720)))

(declare-fun bs!31206 () Bool)

(assert (= bs!31206 d!128785))

(assert (=> bs!31206 m!980643))

(assert (=> bs!31206 m!980641))

(declare-fun m!980675 () Bool)

(assert (=> bs!31206 m!980675))

(assert (=> bs!31206 m!980645))

(assert (=> b!1061697 d!128785))

(declare-fun b!1061750 () Bool)

(declare-fun lt!467737 () Unit!34747)

(declare-fun lt!467738 () Unit!34747)

(assert (=> b!1061750 (= lt!467737 lt!467738)))

(declare-fun lt!467739 () (_ BitVec 64))

(declare-fun lt!467736 () ListLongMap!14041)

(declare-fun lt!467741 () V!38683)

(declare-fun lt!467735 () (_ BitVec 64))

(declare-fun contains!6232 (ListLongMap!14041 (_ BitVec 64)) Bool)

(declare-fun +!3076 (ListLongMap!14041 tuple2!16060) ListLongMap!14041)

(assert (=> b!1061750 (not (contains!6232 (+!3076 lt!467736 (tuple2!16061 lt!467735 lt!467741)) lt!467739))))

(declare-fun addStillNotContains!248 (ListLongMap!14041 (_ BitVec 64) V!38683 (_ BitVec 64)) Unit!34747)

(assert (=> b!1061750 (= lt!467738 (addStillNotContains!248 lt!467736 lt!467735 lt!467741 lt!467739))))

(assert (=> b!1061750 (= lt!467739 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!16941 (ValueCell!11877 V!38683) V!38683)

(declare-fun dynLambda!2029 (Int (_ BitVec 64)) V!38683)

(assert (=> b!1061750 (= lt!467741 (get!16941 (select (arr!32356 _values!955) #b00000000000000000000000000000000) (dynLambda!2029 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1061750 (= lt!467735 (select (arr!32355 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun call!44903 () ListLongMap!14041)

(assert (=> b!1061750 (= lt!467736 call!44903)))

(declare-fun e!604714 () ListLongMap!14041)

(assert (=> b!1061750 (= e!604714 (+!3076 call!44903 (tuple2!16061 (select (arr!32355 _keys!1163) #b00000000000000000000000000000000) (get!16941 (select (arr!32356 _values!955) #b00000000000000000000000000000000) (dynLambda!2029 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1061751 () Bool)

(declare-fun e!604715 () Bool)

(declare-fun e!604716 () Bool)

(assert (=> b!1061751 (= e!604715 e!604716)))

(declare-fun c!107177 () Bool)

(declare-fun e!604713 () Bool)

(assert (=> b!1061751 (= c!107177 e!604713)))

(declare-fun res!709081 () Bool)

(assert (=> b!1061751 (=> (not res!709081) (not e!604713))))

(assert (=> b!1061751 (= res!709081 (bvslt #b00000000000000000000000000000000 (size!32892 _keys!1163)))))

(declare-fun lt!467740 () ListLongMap!14041)

(declare-fun e!604712 () Bool)

(declare-fun b!1061752 () Bool)

(assert (=> b!1061752 (= e!604712 (= lt!467740 (getCurrentListMapNoExtraKeys!3600 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1061753 () Bool)

(declare-fun res!709080 () Bool)

(assert (=> b!1061753 (=> (not res!709080) (not e!604715))))

(assert (=> b!1061753 (= res!709080 (not (contains!6232 lt!467740 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1061754 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1061754 (= e!604713 (validKeyInArray!0 (select (arr!32355 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1061754 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1061755 () Bool)

(declare-fun isEmpty!939 (ListLongMap!14041) Bool)

(assert (=> b!1061755 (= e!604712 (isEmpty!939 lt!467740))))

(declare-fun b!1061756 () Bool)

(declare-fun e!604718 () ListLongMap!14041)

(assert (=> b!1061756 (= e!604718 e!604714)))

(declare-fun c!107174 () Bool)

(assert (=> b!1061756 (= c!107174 (validKeyInArray!0 (select (arr!32355 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!128787 () Bool)

(assert (=> d!128787 e!604715))

(declare-fun res!709083 () Bool)

(assert (=> d!128787 (=> (not res!709083) (not e!604715))))

(assert (=> d!128787 (= res!709083 (not (contains!6232 lt!467740 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!128787 (= lt!467740 e!604718)))

(declare-fun c!107176 () Bool)

(assert (=> d!128787 (= c!107176 (bvsge #b00000000000000000000000000000000 (size!32892 _keys!1163)))))

(assert (=> d!128787 (validMask!0 mask!1515)))

(assert (=> d!128787 (= (getCurrentListMapNoExtraKeys!3600 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!467740)))

(declare-fun b!1061749 () Bool)

(assert (=> b!1061749 (= e!604716 e!604712)))

(declare-fun c!107175 () Bool)

(assert (=> b!1061749 (= c!107175 (bvslt #b00000000000000000000000000000000 (size!32892 _keys!1163)))))

(declare-fun b!1061757 () Bool)

(assert (=> b!1061757 (= e!604718 (ListLongMap!14042 Nil!22672))))

(declare-fun bm!44900 () Bool)

(assert (=> bm!44900 (= call!44903 (getCurrentListMapNoExtraKeys!3600 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1061758 () Bool)

(assert (=> b!1061758 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32892 _keys!1163)))))

(assert (=> b!1061758 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32893 _values!955)))))

(declare-fun e!604717 () Bool)

(declare-fun apply!953 (ListLongMap!14041 (_ BitVec 64)) V!38683)

(assert (=> b!1061758 (= e!604717 (= (apply!953 lt!467740 (select (arr!32355 _keys!1163) #b00000000000000000000000000000000)) (get!16941 (select (arr!32356 _values!955) #b00000000000000000000000000000000) (dynLambda!2029 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1061759 () Bool)

(assert (=> b!1061759 (= e!604716 e!604717)))

(assert (=> b!1061759 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32892 _keys!1163)))))

(declare-fun res!709082 () Bool)

(assert (=> b!1061759 (= res!709082 (contains!6232 lt!467740 (select (arr!32355 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1061759 (=> (not res!709082) (not e!604717))))

(declare-fun b!1061760 () Bool)

(assert (=> b!1061760 (= e!604714 call!44903)))

(assert (= (and d!128787 c!107176) b!1061757))

(assert (= (and d!128787 (not c!107176)) b!1061756))

(assert (= (and b!1061756 c!107174) b!1061750))

(assert (= (and b!1061756 (not c!107174)) b!1061760))

(assert (= (or b!1061750 b!1061760) bm!44900))

(assert (= (and d!128787 res!709083) b!1061753))

(assert (= (and b!1061753 res!709080) b!1061751))

(assert (= (and b!1061751 res!709081) b!1061754))

(assert (= (and b!1061751 c!107177) b!1061759))

(assert (= (and b!1061751 (not c!107177)) b!1061749))

(assert (= (and b!1061759 res!709082) b!1061758))

(assert (= (and b!1061749 c!107175) b!1061752))

(assert (= (and b!1061749 (not c!107175)) b!1061755))

(declare-fun b_lambda!16475 () Bool)

(assert (=> (not b_lambda!16475) (not b!1061750)))

(declare-fun t!31995 () Bool)

(declare-fun tb!7139 () Bool)

(assert (=> (and start!93914 (= defaultEntry!963 defaultEntry!963) t!31995) tb!7139))

(declare-fun result!14709 () Bool)

(assert (=> tb!7139 (= result!14709 tp_is_empty!25161)))

(assert (=> b!1061750 t!31995))

(declare-fun b_and!34087 () Bool)

(assert (= b_and!34083 (and (=> t!31995 result!14709) b_and!34087)))

(declare-fun b_lambda!16477 () Bool)

(assert (=> (not b_lambda!16477) (not b!1061758)))

(assert (=> b!1061758 t!31995))

(declare-fun b_and!34089 () Bool)

(assert (= b_and!34087 (and (=> t!31995 result!14709) b_and!34089)))

(declare-fun m!980677 () Bool)

(assert (=> b!1061750 m!980677))

(declare-fun m!980679 () Bool)

(assert (=> b!1061750 m!980679))

(declare-fun m!980681 () Bool)

(assert (=> b!1061750 m!980681))

(declare-fun m!980683 () Bool)

(assert (=> b!1061750 m!980683))

(declare-fun m!980685 () Bool)

(assert (=> b!1061750 m!980685))

(assert (=> b!1061750 m!980679))

(declare-fun m!980687 () Bool)

(assert (=> b!1061750 m!980687))

(declare-fun m!980689 () Bool)

(assert (=> b!1061750 m!980689))

(assert (=> b!1061750 m!980681))

(assert (=> b!1061750 m!980685))

(declare-fun m!980691 () Bool)

(assert (=> b!1061750 m!980691))

(assert (=> b!1061756 m!980689))

(assert (=> b!1061756 m!980689))

(declare-fun m!980693 () Bool)

(assert (=> b!1061756 m!980693))

(assert (=> b!1061759 m!980689))

(assert (=> b!1061759 m!980689))

(declare-fun m!980695 () Bool)

(assert (=> b!1061759 m!980695))

(assert (=> b!1061754 m!980689))

(assert (=> b!1061754 m!980689))

(assert (=> b!1061754 m!980693))

(declare-fun m!980697 () Bool)

(assert (=> b!1061752 m!980697))

(declare-fun m!980699 () Bool)

(assert (=> b!1061755 m!980699))

(declare-fun m!980701 () Bool)

(assert (=> d!128787 m!980701))

(assert (=> d!128787 m!980645))

(assert (=> bm!44900 m!980697))

(declare-fun m!980703 () Bool)

(assert (=> b!1061753 m!980703))

(assert (=> b!1061758 m!980689))

(assert (=> b!1061758 m!980685))

(assert (=> b!1061758 m!980679))

(assert (=> b!1061758 m!980689))

(declare-fun m!980705 () Bool)

(assert (=> b!1061758 m!980705))

(assert (=> b!1061758 m!980685))

(assert (=> b!1061758 m!980679))

(assert (=> b!1061758 m!980687))

(assert (=> b!1061697 d!128787))

(declare-fun b!1061764 () Bool)

(declare-fun lt!467744 () Unit!34747)

(declare-fun lt!467745 () Unit!34747)

(assert (=> b!1061764 (= lt!467744 lt!467745)))

(declare-fun lt!467748 () V!38683)

(declare-fun lt!467742 () (_ BitVec 64))

(declare-fun lt!467746 () (_ BitVec 64))

(declare-fun lt!467743 () ListLongMap!14041)

(assert (=> b!1061764 (not (contains!6232 (+!3076 lt!467743 (tuple2!16061 lt!467742 lt!467748)) lt!467746))))

(assert (=> b!1061764 (= lt!467745 (addStillNotContains!248 lt!467743 lt!467742 lt!467748 lt!467746))))

(assert (=> b!1061764 (= lt!467746 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1061764 (= lt!467748 (get!16941 (select (arr!32356 _values!955) #b00000000000000000000000000000000) (dynLambda!2029 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1061764 (= lt!467742 (select (arr!32355 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun call!44904 () ListLongMap!14041)

(assert (=> b!1061764 (= lt!467743 call!44904)))

(declare-fun e!604721 () ListLongMap!14041)

(assert (=> b!1061764 (= e!604721 (+!3076 call!44904 (tuple2!16061 (select (arr!32355 _keys!1163) #b00000000000000000000000000000000) (get!16941 (select (arr!32356 _values!955) #b00000000000000000000000000000000) (dynLambda!2029 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1061765 () Bool)

(declare-fun e!604722 () Bool)

(declare-fun e!604723 () Bool)

(assert (=> b!1061765 (= e!604722 e!604723)))

(declare-fun c!107181 () Bool)

(declare-fun e!604720 () Bool)

(assert (=> b!1061765 (= c!107181 e!604720)))

(declare-fun res!709085 () Bool)

(assert (=> b!1061765 (=> (not res!709085) (not e!604720))))

(assert (=> b!1061765 (= res!709085 (bvslt #b00000000000000000000000000000000 (size!32892 _keys!1163)))))

(declare-fun e!604719 () Bool)

(declare-fun b!1061766 () Bool)

(declare-fun lt!467747 () ListLongMap!14041)

(assert (=> b!1061766 (= e!604719 (= lt!467747 (getCurrentListMapNoExtraKeys!3600 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun b!1061767 () Bool)

(declare-fun res!709084 () Bool)

(assert (=> b!1061767 (=> (not res!709084) (not e!604722))))

(assert (=> b!1061767 (= res!709084 (not (contains!6232 lt!467747 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1061768 () Bool)

(assert (=> b!1061768 (= e!604720 (validKeyInArray!0 (select (arr!32355 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1061768 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1061769 () Bool)

(assert (=> b!1061769 (= e!604719 (isEmpty!939 lt!467747))))

(declare-fun b!1061770 () Bool)

(declare-fun e!604725 () ListLongMap!14041)

(assert (=> b!1061770 (= e!604725 e!604721)))

(declare-fun c!107178 () Bool)

(assert (=> b!1061770 (= c!107178 (validKeyInArray!0 (select (arr!32355 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!128789 () Bool)

(assert (=> d!128789 e!604722))

(declare-fun res!709087 () Bool)

(assert (=> d!128789 (=> (not res!709087) (not e!604722))))

(assert (=> d!128789 (= res!709087 (not (contains!6232 lt!467747 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!128789 (= lt!467747 e!604725)))

(declare-fun c!107180 () Bool)

(assert (=> d!128789 (= c!107180 (bvsge #b00000000000000000000000000000000 (size!32892 _keys!1163)))))

(assert (=> d!128789 (validMask!0 mask!1515)))

(assert (=> d!128789 (= (getCurrentListMapNoExtraKeys!3600 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!467747)))

(declare-fun b!1061763 () Bool)

(assert (=> b!1061763 (= e!604723 e!604719)))

(declare-fun c!107179 () Bool)

(assert (=> b!1061763 (= c!107179 (bvslt #b00000000000000000000000000000000 (size!32892 _keys!1163)))))

(declare-fun b!1061771 () Bool)

(assert (=> b!1061771 (= e!604725 (ListLongMap!14042 Nil!22672))))

(declare-fun bm!44901 () Bool)

(assert (=> bm!44901 (= call!44904 (getCurrentListMapNoExtraKeys!3600 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(declare-fun b!1061772 () Bool)

(assert (=> b!1061772 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32892 _keys!1163)))))

(assert (=> b!1061772 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32893 _values!955)))))

(declare-fun e!604724 () Bool)

(assert (=> b!1061772 (= e!604724 (= (apply!953 lt!467747 (select (arr!32355 _keys!1163) #b00000000000000000000000000000000)) (get!16941 (select (arr!32356 _values!955) #b00000000000000000000000000000000) (dynLambda!2029 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1061773 () Bool)

(assert (=> b!1061773 (= e!604723 e!604724)))

(assert (=> b!1061773 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32892 _keys!1163)))))

(declare-fun res!709086 () Bool)

(assert (=> b!1061773 (= res!709086 (contains!6232 lt!467747 (select (arr!32355 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1061773 (=> (not res!709086) (not e!604724))))

(declare-fun b!1061774 () Bool)

(assert (=> b!1061774 (= e!604721 call!44904)))

(assert (= (and d!128789 c!107180) b!1061771))

(assert (= (and d!128789 (not c!107180)) b!1061770))

(assert (= (and b!1061770 c!107178) b!1061764))

(assert (= (and b!1061770 (not c!107178)) b!1061774))

(assert (= (or b!1061764 b!1061774) bm!44901))

(assert (= (and d!128789 res!709087) b!1061767))

(assert (= (and b!1061767 res!709084) b!1061765))

(assert (= (and b!1061765 res!709085) b!1061768))

(assert (= (and b!1061765 c!107181) b!1061773))

(assert (= (and b!1061765 (not c!107181)) b!1061763))

(assert (= (and b!1061773 res!709086) b!1061772))

(assert (= (and b!1061763 c!107179) b!1061766))

(assert (= (and b!1061763 (not c!107179)) b!1061769))

(declare-fun b_lambda!16479 () Bool)

(assert (=> (not b_lambda!16479) (not b!1061764)))

(assert (=> b!1061764 t!31995))

(declare-fun b_and!34091 () Bool)

(assert (= b_and!34089 (and (=> t!31995 result!14709) b_and!34091)))

(declare-fun b_lambda!16481 () Bool)

(assert (=> (not b_lambda!16481) (not b!1061772)))

(assert (=> b!1061772 t!31995))

(declare-fun b_and!34093 () Bool)

(assert (= b_and!34091 (and (=> t!31995 result!14709) b_and!34093)))

(declare-fun m!980707 () Bool)

(assert (=> b!1061764 m!980707))

(assert (=> b!1061764 m!980679))

(declare-fun m!980709 () Bool)

(assert (=> b!1061764 m!980709))

(declare-fun m!980711 () Bool)

(assert (=> b!1061764 m!980711))

(assert (=> b!1061764 m!980685))

(assert (=> b!1061764 m!980679))

(assert (=> b!1061764 m!980687))

(assert (=> b!1061764 m!980689))

(assert (=> b!1061764 m!980709))

(assert (=> b!1061764 m!980685))

(declare-fun m!980713 () Bool)

(assert (=> b!1061764 m!980713))

(assert (=> b!1061770 m!980689))

(assert (=> b!1061770 m!980689))

(assert (=> b!1061770 m!980693))

(assert (=> b!1061773 m!980689))

(assert (=> b!1061773 m!980689))

(declare-fun m!980715 () Bool)

(assert (=> b!1061773 m!980715))

(assert (=> b!1061768 m!980689))

(assert (=> b!1061768 m!980689))

(assert (=> b!1061768 m!980693))

(declare-fun m!980717 () Bool)

(assert (=> b!1061766 m!980717))

(declare-fun m!980719 () Bool)

(assert (=> b!1061769 m!980719))

(declare-fun m!980721 () Bool)

(assert (=> d!128789 m!980721))

(assert (=> d!128789 m!980645))

(assert (=> bm!44901 m!980717))

(declare-fun m!980723 () Bool)

(assert (=> b!1061767 m!980723))

(assert (=> b!1061772 m!980689))

(assert (=> b!1061772 m!980685))

(assert (=> b!1061772 m!980679))

(assert (=> b!1061772 m!980689))

(declare-fun m!980725 () Bool)

(assert (=> b!1061772 m!980725))

(assert (=> b!1061772 m!980685))

(assert (=> b!1061772 m!980679))

(assert (=> b!1061772 m!980687))

(assert (=> b!1061697 d!128789))

(declare-fun bm!44904 () Bool)

(declare-fun call!44907 () Bool)

(declare-fun c!107184 () Bool)

(assert (=> bm!44904 (= call!44907 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107184 (Cons!22672 (select (arr!32355 _keys!1163) #b00000000000000000000000000000000) Nil!22673) Nil!22673)))))

(declare-fun d!128791 () Bool)

(declare-fun res!709095 () Bool)

(declare-fun e!604737 () Bool)

(assert (=> d!128791 (=> res!709095 e!604737)))

(assert (=> d!128791 (= res!709095 (bvsge #b00000000000000000000000000000000 (size!32892 _keys!1163)))))

(assert (=> d!128791 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22673) e!604737)))

(declare-fun b!1061785 () Bool)

(declare-fun e!604734 () Bool)

(assert (=> b!1061785 (= e!604734 call!44907)))

(declare-fun b!1061786 () Bool)

(assert (=> b!1061786 (= e!604734 call!44907)))

(declare-fun b!1061787 () Bool)

(declare-fun e!604735 () Bool)

(assert (=> b!1061787 (= e!604737 e!604735)))

(declare-fun res!709094 () Bool)

(assert (=> b!1061787 (=> (not res!709094) (not e!604735))))

(declare-fun e!604736 () Bool)

(assert (=> b!1061787 (= res!709094 (not e!604736))))

(declare-fun res!709096 () Bool)

(assert (=> b!1061787 (=> (not res!709096) (not e!604736))))

(assert (=> b!1061787 (= res!709096 (validKeyInArray!0 (select (arr!32355 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1061788 () Bool)

(assert (=> b!1061788 (= e!604735 e!604734)))

(assert (=> b!1061788 (= c!107184 (validKeyInArray!0 (select (arr!32355 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1061789 () Bool)

(declare-fun contains!6233 (List!22676 (_ BitVec 64)) Bool)

(assert (=> b!1061789 (= e!604736 (contains!6233 Nil!22673 (select (arr!32355 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!128791 (not res!709095)) b!1061787))

(assert (= (and b!1061787 res!709096) b!1061789))

(assert (= (and b!1061787 res!709094) b!1061788))

(assert (= (and b!1061788 c!107184) b!1061786))

(assert (= (and b!1061788 (not c!107184)) b!1061785))

(assert (= (or b!1061786 b!1061785) bm!44904))

(assert (=> bm!44904 m!980689))

(declare-fun m!980727 () Bool)

(assert (=> bm!44904 m!980727))

(assert (=> b!1061787 m!980689))

(assert (=> b!1061787 m!980689))

(assert (=> b!1061787 m!980693))

(assert (=> b!1061788 m!980689))

(assert (=> b!1061788 m!980689))

(assert (=> b!1061788 m!980693))

(assert (=> b!1061789 m!980689))

(assert (=> b!1061789 m!980689))

(declare-fun m!980729 () Bool)

(assert (=> b!1061789 m!980729))

(assert (=> b!1061699 d!128791))

(declare-fun d!128793 () Bool)

(declare-fun res!709101 () Bool)

(declare-fun e!604744 () Bool)

(assert (=> d!128793 (=> res!709101 e!604744)))

(assert (=> d!128793 (= res!709101 (bvsge #b00000000000000000000000000000000 (size!32892 _keys!1163)))))

(assert (=> d!128793 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!604744)))

(declare-fun b!1061798 () Bool)

(declare-fun e!604746 () Bool)

(declare-fun call!44910 () Bool)

(assert (=> b!1061798 (= e!604746 call!44910)))

(declare-fun b!1061799 () Bool)

(declare-fun e!604745 () Bool)

(assert (=> b!1061799 (= e!604746 e!604745)))

(declare-fun lt!467757 () (_ BitVec 64))

(assert (=> b!1061799 (= lt!467757 (select (arr!32355 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!467755 () Unit!34747)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!67302 (_ BitVec 64) (_ BitVec 32)) Unit!34747)

(assert (=> b!1061799 (= lt!467755 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!467757 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!67302 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1061799 (arrayContainsKey!0 _keys!1163 lt!467757 #b00000000000000000000000000000000)))

(declare-fun lt!467756 () Unit!34747)

(assert (=> b!1061799 (= lt!467756 lt!467755)))

(declare-fun res!709102 () Bool)

(declare-datatypes ((SeekEntryResult!9868 0))(
  ( (MissingZero!9868 (index!41842 (_ BitVec 32))) (Found!9868 (index!41843 (_ BitVec 32))) (Intermediate!9868 (undefined!10680 Bool) (index!41844 (_ BitVec 32)) (x!94978 (_ BitVec 32))) (Undefined!9868) (MissingVacant!9868 (index!41845 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!67302 (_ BitVec 32)) SeekEntryResult!9868)

(assert (=> b!1061799 (= res!709102 (= (seekEntryOrOpen!0 (select (arr!32355 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9868 #b00000000000000000000000000000000)))))

(assert (=> b!1061799 (=> (not res!709102) (not e!604745))))

(declare-fun bm!44907 () Bool)

(assert (=> bm!44907 (= call!44910 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1061800 () Bool)

(assert (=> b!1061800 (= e!604745 call!44910)))

(declare-fun b!1061801 () Bool)

(assert (=> b!1061801 (= e!604744 e!604746)))

(declare-fun c!107187 () Bool)

(assert (=> b!1061801 (= c!107187 (validKeyInArray!0 (select (arr!32355 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!128793 (not res!709101)) b!1061801))

(assert (= (and b!1061801 c!107187) b!1061799))

(assert (= (and b!1061801 (not c!107187)) b!1061798))

(assert (= (and b!1061799 res!709102) b!1061800))

(assert (= (or b!1061800 b!1061798) bm!44907))

(assert (=> b!1061799 m!980689))

(declare-fun m!980731 () Bool)

(assert (=> b!1061799 m!980731))

(declare-fun m!980733 () Bool)

(assert (=> b!1061799 m!980733))

(assert (=> b!1061799 m!980689))

(declare-fun m!980735 () Bool)

(assert (=> b!1061799 m!980735))

(declare-fun m!980737 () Bool)

(assert (=> bm!44907 m!980737))

(assert (=> b!1061801 m!980689))

(assert (=> b!1061801 m!980689))

(assert (=> b!1061801 m!980693))

(assert (=> b!1061698 d!128793))

(declare-fun mapNonEmpty!39418 () Bool)

(declare-fun mapRes!39418 () Bool)

(declare-fun tp!75486 () Bool)

(declare-fun e!604752 () Bool)

(assert (=> mapNonEmpty!39418 (= mapRes!39418 (and tp!75486 e!604752))))

(declare-fun mapRest!39418 () (Array (_ BitVec 32) ValueCell!11877))

(declare-fun mapValue!39418 () ValueCell!11877)

(declare-fun mapKey!39418 () (_ BitVec 32))

(assert (=> mapNonEmpty!39418 (= mapRest!39412 (store mapRest!39418 mapKey!39418 mapValue!39418))))

(declare-fun b!1061809 () Bool)

(declare-fun e!604751 () Bool)

(assert (=> b!1061809 (= e!604751 tp_is_empty!25161)))

(declare-fun b!1061808 () Bool)

(assert (=> b!1061808 (= e!604752 tp_is_empty!25161)))

(declare-fun mapIsEmpty!39418 () Bool)

(assert (=> mapIsEmpty!39418 mapRes!39418))

(declare-fun condMapEmpty!39418 () Bool)

(declare-fun mapDefault!39418 () ValueCell!11877)

(assert (=> mapNonEmpty!39412 (= condMapEmpty!39418 (= mapRest!39412 ((as const (Array (_ BitVec 32) ValueCell!11877)) mapDefault!39418)))))

(assert (=> mapNonEmpty!39412 (= tp!75476 (and e!604751 mapRes!39418))))

(assert (= (and mapNonEmpty!39412 condMapEmpty!39418) mapIsEmpty!39418))

(assert (= (and mapNonEmpty!39412 (not condMapEmpty!39418)) mapNonEmpty!39418))

(assert (= (and mapNonEmpty!39418 ((_ is ValueCellFull!11877) mapValue!39418)) b!1061808))

(assert (= (and mapNonEmpty!39412 ((_ is ValueCellFull!11877) mapDefault!39418)) b!1061809))

(declare-fun m!980739 () Bool)

(assert (=> mapNonEmpty!39418 m!980739))

(declare-fun b_lambda!16483 () Bool)

(assert (= b_lambda!16479 (or (and start!93914 b_free!21351) b_lambda!16483)))

(declare-fun b_lambda!16485 () Bool)

(assert (= b_lambda!16475 (or (and start!93914 b_free!21351) b_lambda!16485)))

(declare-fun b_lambda!16487 () Bool)

(assert (= b_lambda!16477 (or (and start!93914 b_free!21351) b_lambda!16487)))

(declare-fun b_lambda!16489 () Bool)

(assert (= b_lambda!16481 (or (and start!93914 b_free!21351) b_lambda!16489)))

(check-sat (not b!1061772) (not b!1061754) (not b_lambda!16489) (not b!1061769) b_and!34093 (not bm!44904) (not b!1061799) (not b!1061787) (not bm!44907) tp_is_empty!25161 (not d!128789) (not b!1061766) (not b!1061755) (not b!1061773) (not b!1061759) (not b_lambda!16485) (not d!128785) (not b_lambda!16487) (not b!1061768) (not mapNonEmpty!39418) (not bm!44900) (not b!1061753) (not b!1061752) (not b!1061788) (not b_next!21351) (not b!1061758) (not b!1061801) (not bm!44901) (not b!1061767) (not b_lambda!16483) (not b!1061750) (not d!128787) (not b!1061770) (not b!1061789) (not b!1061764) (not b!1061756))
(check-sat b_and!34093 (not b_next!21351))
