; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70700 () Bool)

(assert start!70700)

(declare-fun b_free!12963 () Bool)

(declare-fun b_next!12963 () Bool)

(assert (=> start!70700 (= b_free!12963 (not b_next!12963))))

(declare-fun tp!45628 () Bool)

(declare-fun b_and!21835 () Bool)

(assert (=> start!70700 (= tp!45628 b_and!21835)))

(declare-fun b!820833 () Bool)

(declare-fun e!456144 () Bool)

(declare-fun tp_is_empty!14673 () Bool)

(assert (=> b!820833 (= e!456144 tp_is_empty!14673)))

(declare-fun b!820834 () Bool)

(declare-fun res!560114 () Bool)

(declare-fun e!456140 () Bool)

(assert (=> b!820834 (=> (not res!560114) (not e!456140))))

(declare-datatypes ((array!45506 0))(
  ( (array!45507 (arr!21801 (Array (_ BitVec 32) (_ BitVec 64))) (size!22222 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45506)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((V!24565 0))(
  ( (V!24566 (val!7384 Int)) )
))
(declare-datatypes ((ValueCell!6921 0))(
  ( (ValueCellFull!6921 (v!9811 V!24565)) (EmptyCell!6921) )
))
(declare-datatypes ((array!45508 0))(
  ( (array!45509 (arr!21802 (Array (_ BitVec 32) ValueCell!6921)) (size!22223 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45508)

(assert (=> b!820834 (= res!560114 (and (= (size!22223 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22222 _keys!976) (size!22223 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!23614 () Bool)

(declare-fun mapRes!23614 () Bool)

(declare-fun tp!45627 () Bool)

(declare-fun e!456141 () Bool)

(assert (=> mapNonEmpty!23614 (= mapRes!23614 (and tp!45627 e!456141))))

(declare-fun mapRest!23614 () (Array (_ BitVec 32) ValueCell!6921))

(declare-fun mapKey!23614 () (_ BitVec 32))

(declare-fun mapValue!23614 () ValueCell!6921)

(assert (=> mapNonEmpty!23614 (= (arr!21802 _values!788) (store mapRest!23614 mapKey!23614 mapValue!23614))))

(declare-fun b!820835 () Bool)

(assert (=> b!820835 (= e!456140 (not (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!22222 _keys!976)))))))

(declare-datatypes ((tuple2!9734 0))(
  ( (tuple2!9735 (_1!4877 (_ BitVec 64)) (_2!4877 V!24565)) )
))
(declare-datatypes ((List!15594 0))(
  ( (Nil!15591) (Cons!15590 (h!16719 tuple2!9734) (t!21935 List!15594)) )
))
(declare-datatypes ((ListLongMap!8571 0))(
  ( (ListLongMap!8572 (toList!4301 List!15594)) )
))
(declare-fun lt!368949 () ListLongMap!8571)

(declare-fun lt!368948 () ListLongMap!8571)

(assert (=> b!820835 (= lt!368949 lt!368948)))

(declare-fun zeroValueBefore!34 () V!24565)

(declare-fun zeroValueAfter!34 () V!24565)

(declare-fun minValue!754 () V!24565)

(declare-datatypes ((Unit!28055 0))(
  ( (Unit!28056) )
))
(declare-fun lt!368947 () Unit!28055)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!451 (array!45506 array!45508 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24565 V!24565 V!24565 V!24565 (_ BitVec 32) Int) Unit!28055)

(assert (=> b!820835 (= lt!368947 (lemmaNoChangeToArrayThenSameMapNoExtras!451 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2335 (array!45506 array!45508 (_ BitVec 32) (_ BitVec 32) V!24565 V!24565 (_ BitVec 32) Int) ListLongMap!8571)

(assert (=> b!820835 (= lt!368948 (getCurrentListMapNoExtraKeys!2335 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820835 (= lt!368949 (getCurrentListMapNoExtraKeys!2335 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!820836 () Bool)

(declare-fun e!456143 () Bool)

(assert (=> b!820836 (= e!456143 (and e!456144 mapRes!23614))))

(declare-fun condMapEmpty!23614 () Bool)

(declare-fun mapDefault!23614 () ValueCell!6921)

(assert (=> b!820836 (= condMapEmpty!23614 (= (arr!21802 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6921)) mapDefault!23614)))))

(declare-fun b!820837 () Bool)

(assert (=> b!820837 (= e!456141 tp_is_empty!14673)))

(declare-fun b!820838 () Bool)

(declare-fun res!560115 () Bool)

(assert (=> b!820838 (=> (not res!560115) (not e!456140))))

(declare-datatypes ((List!15595 0))(
  ( (Nil!15592) (Cons!15591 (h!16720 (_ BitVec 64)) (t!21936 List!15595)) )
))
(declare-fun arrayNoDuplicates!0 (array!45506 (_ BitVec 32) List!15595) Bool)

(assert (=> b!820838 (= res!560115 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15592))))

(declare-fun res!560112 () Bool)

(assert (=> start!70700 (=> (not res!560112) (not e!456140))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70700 (= res!560112 (validMask!0 mask!1312))))

(assert (=> start!70700 e!456140))

(assert (=> start!70700 tp_is_empty!14673))

(declare-fun array_inv!17391 (array!45506) Bool)

(assert (=> start!70700 (array_inv!17391 _keys!976)))

(assert (=> start!70700 true))

(declare-fun array_inv!17392 (array!45508) Bool)

(assert (=> start!70700 (and (array_inv!17392 _values!788) e!456143)))

(assert (=> start!70700 tp!45628))

(declare-fun mapIsEmpty!23614 () Bool)

(assert (=> mapIsEmpty!23614 mapRes!23614))

(declare-fun b!820839 () Bool)

(declare-fun res!560113 () Bool)

(assert (=> b!820839 (=> (not res!560113) (not e!456140))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45506 (_ BitVec 32)) Bool)

(assert (=> b!820839 (= res!560113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!70700 res!560112) b!820834))

(assert (= (and b!820834 res!560114) b!820839))

(assert (= (and b!820839 res!560113) b!820838))

(assert (= (and b!820838 res!560115) b!820835))

(assert (= (and b!820836 condMapEmpty!23614) mapIsEmpty!23614))

(assert (= (and b!820836 (not condMapEmpty!23614)) mapNonEmpty!23614))

(get-info :version)

(assert (= (and mapNonEmpty!23614 ((_ is ValueCellFull!6921) mapValue!23614)) b!820837))

(assert (= (and b!820836 ((_ is ValueCellFull!6921) mapDefault!23614)) b!820833))

(assert (= start!70700 b!820836))

(declare-fun m!762801 () Bool)

(assert (=> start!70700 m!762801))

(declare-fun m!762803 () Bool)

(assert (=> start!70700 m!762803))

(declare-fun m!762805 () Bool)

(assert (=> start!70700 m!762805))

(declare-fun m!762807 () Bool)

(assert (=> b!820839 m!762807))

(declare-fun m!762809 () Bool)

(assert (=> b!820838 m!762809))

(declare-fun m!762811 () Bool)

(assert (=> b!820835 m!762811))

(declare-fun m!762813 () Bool)

(assert (=> b!820835 m!762813))

(declare-fun m!762815 () Bool)

(assert (=> b!820835 m!762815))

(declare-fun m!762817 () Bool)

(assert (=> mapNonEmpty!23614 m!762817))

(check-sat (not b!820835) (not b!820838) tp_is_empty!14673 (not b_next!12963) (not b!820839) (not mapNonEmpty!23614) (not start!70700) b_and!21835)
(check-sat b_and!21835 (not b_next!12963))
(get-model)

(declare-fun d!104679 () Bool)

(assert (=> d!104679 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!70700 d!104679))

(declare-fun d!104681 () Bool)

(assert (=> d!104681 (= (array_inv!17391 _keys!976) (bvsge (size!22222 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!70700 d!104681))

(declare-fun d!104683 () Bool)

(assert (=> d!104683 (= (array_inv!17392 _values!788) (bvsge (size!22223 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!70700 d!104683))

(declare-fun b!820871 () Bool)

(declare-fun e!456170 () Bool)

(declare-fun e!456169 () Bool)

(assert (=> b!820871 (= e!456170 e!456169)))

(declare-fun res!560134 () Bool)

(assert (=> b!820871 (=> (not res!560134) (not e!456169))))

(declare-fun e!456171 () Bool)

(assert (=> b!820871 (= res!560134 (not e!456171))))

(declare-fun res!560135 () Bool)

(assert (=> b!820871 (=> (not res!560135) (not e!456171))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!820871 (= res!560135 (validKeyInArray!0 (select (arr!21801 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!820872 () Bool)

(declare-fun e!456168 () Bool)

(assert (=> b!820872 (= e!456169 e!456168)))

(declare-fun c!89132 () Bool)

(assert (=> b!820872 (= c!89132 (validKeyInArray!0 (select (arr!21801 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!35712 () Bool)

(declare-fun call!35715 () Bool)

(assert (=> bm!35712 (= call!35715 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89132 (Cons!15591 (select (arr!21801 _keys!976) #b00000000000000000000000000000000) Nil!15592) Nil!15592)))))

(declare-fun d!104685 () Bool)

(declare-fun res!560136 () Bool)

(assert (=> d!104685 (=> res!560136 e!456170)))

(assert (=> d!104685 (= res!560136 (bvsge #b00000000000000000000000000000000 (size!22222 _keys!976)))))

(assert (=> d!104685 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15592) e!456170)))

(declare-fun b!820873 () Bool)

(assert (=> b!820873 (= e!456168 call!35715)))

(declare-fun b!820874 () Bool)

(assert (=> b!820874 (= e!456168 call!35715)))

(declare-fun b!820875 () Bool)

(declare-fun contains!4165 (List!15595 (_ BitVec 64)) Bool)

(assert (=> b!820875 (= e!456171 (contains!4165 Nil!15592 (select (arr!21801 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!104685 (not res!560136)) b!820871))

(assert (= (and b!820871 res!560135) b!820875))

(assert (= (and b!820871 res!560134) b!820872))

(assert (= (and b!820872 c!89132) b!820873))

(assert (= (and b!820872 (not c!89132)) b!820874))

(assert (= (or b!820873 b!820874) bm!35712))

(declare-fun m!762837 () Bool)

(assert (=> b!820871 m!762837))

(assert (=> b!820871 m!762837))

(declare-fun m!762839 () Bool)

(assert (=> b!820871 m!762839))

(assert (=> b!820872 m!762837))

(assert (=> b!820872 m!762837))

(assert (=> b!820872 m!762839))

(assert (=> bm!35712 m!762837))

(declare-fun m!762841 () Bool)

(assert (=> bm!35712 m!762841))

(assert (=> b!820875 m!762837))

(assert (=> b!820875 m!762837))

(declare-fun m!762843 () Bool)

(assert (=> b!820875 m!762843))

(assert (=> b!820838 d!104685))

(declare-fun d!104687 () Bool)

(assert (=> d!104687 (= (getCurrentListMapNoExtraKeys!2335 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2335 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!368961 () Unit!28055)

(declare-fun choose!1405 (array!45506 array!45508 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24565 V!24565 V!24565 V!24565 (_ BitVec 32) Int) Unit!28055)

(assert (=> d!104687 (= lt!368961 (choose!1405 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!104687 (validMask!0 mask!1312)))

(assert (=> d!104687 (= (lemmaNoChangeToArrayThenSameMapNoExtras!451 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!368961)))

(declare-fun bs!22889 () Bool)

(assert (= bs!22889 d!104687))

(assert (=> bs!22889 m!762815))

(assert (=> bs!22889 m!762813))

(declare-fun m!762845 () Bool)

(assert (=> bs!22889 m!762845))

(assert (=> bs!22889 m!762801))

(assert (=> b!820835 d!104687))

(declare-fun e!456190 () Bool)

(declare-fun b!820900 () Bool)

(declare-fun lt!368980 () ListLongMap!8571)

(assert (=> b!820900 (= e!456190 (= lt!368980 (getCurrentListMapNoExtraKeys!2335 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!820901 () Bool)

(declare-fun res!560146 () Bool)

(declare-fun e!456186 () Bool)

(assert (=> b!820901 (=> (not res!560146) (not e!456186))))

(declare-fun contains!4166 (ListLongMap!8571 (_ BitVec 64)) Bool)

(assert (=> b!820901 (= res!560146 (not (contains!4166 lt!368980 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!820902 () Bool)

(declare-fun e!456188 () Bool)

(assert (=> b!820902 (= e!456186 e!456188)))

(declare-fun c!89141 () Bool)

(declare-fun e!456191 () Bool)

(assert (=> b!820902 (= c!89141 e!456191)))

(declare-fun res!560145 () Bool)

(assert (=> b!820902 (=> (not res!560145) (not e!456191))))

(assert (=> b!820902 (= res!560145 (bvslt #b00000000000000000000000000000000 (size!22222 _keys!976)))))

(declare-fun b!820903 () Bool)

(assert (=> b!820903 (= e!456191 (validKeyInArray!0 (select (arr!21801 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!820903 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!820904 () Bool)

(declare-fun lt!368977 () Unit!28055)

(declare-fun lt!368982 () Unit!28055)

(assert (=> b!820904 (= lt!368977 lt!368982)))

(declare-fun lt!368978 () (_ BitVec 64))

(declare-fun lt!368976 () (_ BitVec 64))

(declare-fun lt!368979 () V!24565)

(declare-fun lt!368981 () ListLongMap!8571)

(declare-fun +!1826 (ListLongMap!8571 tuple2!9734) ListLongMap!8571)

(assert (=> b!820904 (not (contains!4166 (+!1826 lt!368981 (tuple2!9735 lt!368976 lt!368979)) lt!368978))))

(declare-fun addStillNotContains!183 (ListLongMap!8571 (_ BitVec 64) V!24565 (_ BitVec 64)) Unit!28055)

(assert (=> b!820904 (= lt!368982 (addStillNotContains!183 lt!368981 lt!368976 lt!368979 lt!368978))))

(assert (=> b!820904 (= lt!368978 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!11628 (ValueCell!6921 V!24565) V!24565)

(declare-fun dynLambda!966 (Int (_ BitVec 64)) V!24565)

(assert (=> b!820904 (= lt!368979 (get!11628 (select (arr!21802 _values!788) #b00000000000000000000000000000000) (dynLambda!966 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!820904 (= lt!368976 (select (arr!21801 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!35718 () ListLongMap!8571)

(assert (=> b!820904 (= lt!368981 call!35718)))

(declare-fun e!456189 () ListLongMap!8571)

(assert (=> b!820904 (= e!456189 (+!1826 call!35718 (tuple2!9735 (select (arr!21801 _keys!976) #b00000000000000000000000000000000) (get!11628 (select (arr!21802 _values!788) #b00000000000000000000000000000000) (dynLambda!966 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!820905 () Bool)

(declare-fun isEmpty!643 (ListLongMap!8571) Bool)

(assert (=> b!820905 (= e!456190 (isEmpty!643 lt!368980))))

(declare-fun b!820906 () Bool)

(assert (=> b!820906 (= e!456188 e!456190)))

(declare-fun c!89143 () Bool)

(assert (=> b!820906 (= c!89143 (bvslt #b00000000000000000000000000000000 (size!22222 _keys!976)))))

(declare-fun b!820907 () Bool)

(declare-fun e!456187 () ListLongMap!8571)

(assert (=> b!820907 (= e!456187 e!456189)))

(declare-fun c!89144 () Bool)

(assert (=> b!820907 (= c!89144 (validKeyInArray!0 (select (arr!21801 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!820908 () Bool)

(assert (=> b!820908 (= e!456189 call!35718)))

(declare-fun d!104689 () Bool)

(assert (=> d!104689 e!456186))

(declare-fun res!560148 () Bool)

(assert (=> d!104689 (=> (not res!560148) (not e!456186))))

(assert (=> d!104689 (= res!560148 (not (contains!4166 lt!368980 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104689 (= lt!368980 e!456187)))

(declare-fun c!89142 () Bool)

(assert (=> d!104689 (= c!89142 (bvsge #b00000000000000000000000000000000 (size!22222 _keys!976)))))

(assert (=> d!104689 (validMask!0 mask!1312)))

(assert (=> d!104689 (= (getCurrentListMapNoExtraKeys!2335 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!368980)))

(declare-fun b!820909 () Bool)

(declare-fun e!456192 () Bool)

(assert (=> b!820909 (= e!456188 e!456192)))

(assert (=> b!820909 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22222 _keys!976)))))

(declare-fun res!560147 () Bool)

(assert (=> b!820909 (= res!560147 (contains!4166 lt!368980 (select (arr!21801 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!820909 (=> (not res!560147) (not e!456192))))

(declare-fun b!820910 () Bool)

(assert (=> b!820910 (= e!456187 (ListLongMap!8572 Nil!15591))))

(declare-fun bm!35715 () Bool)

(assert (=> bm!35715 (= call!35718 (getCurrentListMapNoExtraKeys!2335 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!820911 () Bool)

(assert (=> b!820911 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22222 _keys!976)))))

(assert (=> b!820911 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22223 _values!788)))))

(declare-fun apply!356 (ListLongMap!8571 (_ BitVec 64)) V!24565)

(assert (=> b!820911 (= e!456192 (= (apply!356 lt!368980 (select (arr!21801 _keys!976) #b00000000000000000000000000000000)) (get!11628 (select (arr!21802 _values!788) #b00000000000000000000000000000000) (dynLambda!966 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!104689 c!89142) b!820910))

(assert (= (and d!104689 (not c!89142)) b!820907))

(assert (= (and b!820907 c!89144) b!820904))

(assert (= (and b!820907 (not c!89144)) b!820908))

(assert (= (or b!820904 b!820908) bm!35715))

(assert (= (and d!104689 res!560148) b!820901))

(assert (= (and b!820901 res!560146) b!820902))

(assert (= (and b!820902 res!560145) b!820903))

(assert (= (and b!820902 c!89141) b!820909))

(assert (= (and b!820902 (not c!89141)) b!820906))

(assert (= (and b!820909 res!560147) b!820911))

(assert (= (and b!820906 c!89143) b!820900))

(assert (= (and b!820906 (not c!89143)) b!820905))

(declare-fun b_lambda!11025 () Bool)

(assert (=> (not b_lambda!11025) (not b!820904)))

(declare-fun t!21938 () Bool)

(declare-fun tb!4201 () Bool)

(assert (=> (and start!70700 (= defaultEntry!796 defaultEntry!796) t!21938) tb!4201))

(declare-fun result!7927 () Bool)

(assert (=> tb!4201 (= result!7927 tp_is_empty!14673)))

(assert (=> b!820904 t!21938))

(declare-fun b_and!21839 () Bool)

(assert (= b_and!21835 (and (=> t!21938 result!7927) b_and!21839)))

(declare-fun b_lambda!11027 () Bool)

(assert (=> (not b_lambda!11027) (not b!820911)))

(assert (=> b!820911 t!21938))

(declare-fun b_and!21841 () Bool)

(assert (= b_and!21839 (and (=> t!21938 result!7927) b_and!21841)))

(declare-fun m!762847 () Bool)

(assert (=> b!820904 m!762847))

(declare-fun m!762849 () Bool)

(assert (=> b!820904 m!762849))

(declare-fun m!762851 () Bool)

(assert (=> b!820904 m!762851))

(assert (=> b!820904 m!762847))

(declare-fun m!762853 () Bool)

(assert (=> b!820904 m!762853))

(declare-fun m!762855 () Bool)

(assert (=> b!820904 m!762855))

(assert (=> b!820904 m!762851))

(declare-fun m!762857 () Bool)

(assert (=> b!820904 m!762857))

(declare-fun m!762859 () Bool)

(assert (=> b!820904 m!762859))

(assert (=> b!820904 m!762837))

(assert (=> b!820904 m!762855))

(assert (=> b!820903 m!762837))

(assert (=> b!820903 m!762837))

(assert (=> b!820903 m!762839))

(declare-fun m!762861 () Bool)

(assert (=> bm!35715 m!762861))

(assert (=> b!820900 m!762861))

(assert (=> b!820909 m!762837))

(assert (=> b!820909 m!762837))

(declare-fun m!762863 () Bool)

(assert (=> b!820909 m!762863))

(declare-fun m!762865 () Bool)

(assert (=> b!820905 m!762865))

(declare-fun m!762867 () Bool)

(assert (=> d!104689 m!762867))

(assert (=> d!104689 m!762801))

(assert (=> b!820911 m!762837))

(declare-fun m!762869 () Bool)

(assert (=> b!820911 m!762869))

(assert (=> b!820911 m!762851))

(assert (=> b!820911 m!762855))

(assert (=> b!820911 m!762851))

(assert (=> b!820911 m!762857))

(assert (=> b!820911 m!762837))

(assert (=> b!820911 m!762855))

(declare-fun m!762871 () Bool)

(assert (=> b!820901 m!762871))

(assert (=> b!820907 m!762837))

(assert (=> b!820907 m!762837))

(assert (=> b!820907 m!762839))

(assert (=> b!820835 d!104689))

(declare-fun b!820914 () Bool)

(declare-fun lt!368987 () ListLongMap!8571)

(declare-fun e!456197 () Bool)

(assert (=> b!820914 (= e!456197 (= lt!368987 (getCurrentListMapNoExtraKeys!2335 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!820915 () Bool)

(declare-fun res!560150 () Bool)

(declare-fun e!456193 () Bool)

(assert (=> b!820915 (=> (not res!560150) (not e!456193))))

(assert (=> b!820915 (= res!560150 (not (contains!4166 lt!368987 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!820916 () Bool)

(declare-fun e!456195 () Bool)

(assert (=> b!820916 (= e!456193 e!456195)))

(declare-fun c!89145 () Bool)

(declare-fun e!456198 () Bool)

(assert (=> b!820916 (= c!89145 e!456198)))

(declare-fun res!560149 () Bool)

(assert (=> b!820916 (=> (not res!560149) (not e!456198))))

(assert (=> b!820916 (= res!560149 (bvslt #b00000000000000000000000000000000 (size!22222 _keys!976)))))

(declare-fun b!820917 () Bool)

(assert (=> b!820917 (= e!456198 (validKeyInArray!0 (select (arr!21801 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!820917 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!820918 () Bool)

(declare-fun lt!368984 () Unit!28055)

(declare-fun lt!368989 () Unit!28055)

(assert (=> b!820918 (= lt!368984 lt!368989)))

(declare-fun lt!368983 () (_ BitVec 64))

(declare-fun lt!368985 () (_ BitVec 64))

(declare-fun lt!368988 () ListLongMap!8571)

(declare-fun lt!368986 () V!24565)

(assert (=> b!820918 (not (contains!4166 (+!1826 lt!368988 (tuple2!9735 lt!368983 lt!368986)) lt!368985))))

(assert (=> b!820918 (= lt!368989 (addStillNotContains!183 lt!368988 lt!368983 lt!368986 lt!368985))))

(assert (=> b!820918 (= lt!368985 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!820918 (= lt!368986 (get!11628 (select (arr!21802 _values!788) #b00000000000000000000000000000000) (dynLambda!966 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!820918 (= lt!368983 (select (arr!21801 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!35719 () ListLongMap!8571)

(assert (=> b!820918 (= lt!368988 call!35719)))

(declare-fun e!456196 () ListLongMap!8571)

(assert (=> b!820918 (= e!456196 (+!1826 call!35719 (tuple2!9735 (select (arr!21801 _keys!976) #b00000000000000000000000000000000) (get!11628 (select (arr!21802 _values!788) #b00000000000000000000000000000000) (dynLambda!966 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!820919 () Bool)

(assert (=> b!820919 (= e!456197 (isEmpty!643 lt!368987))))

(declare-fun b!820920 () Bool)

(assert (=> b!820920 (= e!456195 e!456197)))

(declare-fun c!89147 () Bool)

(assert (=> b!820920 (= c!89147 (bvslt #b00000000000000000000000000000000 (size!22222 _keys!976)))))

(declare-fun b!820921 () Bool)

(declare-fun e!456194 () ListLongMap!8571)

(assert (=> b!820921 (= e!456194 e!456196)))

(declare-fun c!89148 () Bool)

(assert (=> b!820921 (= c!89148 (validKeyInArray!0 (select (arr!21801 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!820922 () Bool)

(assert (=> b!820922 (= e!456196 call!35719)))

(declare-fun d!104691 () Bool)

(assert (=> d!104691 e!456193))

(declare-fun res!560152 () Bool)

(assert (=> d!104691 (=> (not res!560152) (not e!456193))))

(assert (=> d!104691 (= res!560152 (not (contains!4166 lt!368987 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104691 (= lt!368987 e!456194)))

(declare-fun c!89146 () Bool)

(assert (=> d!104691 (= c!89146 (bvsge #b00000000000000000000000000000000 (size!22222 _keys!976)))))

(assert (=> d!104691 (validMask!0 mask!1312)))

(assert (=> d!104691 (= (getCurrentListMapNoExtraKeys!2335 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!368987)))

(declare-fun b!820923 () Bool)

(declare-fun e!456199 () Bool)

(assert (=> b!820923 (= e!456195 e!456199)))

(assert (=> b!820923 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22222 _keys!976)))))

(declare-fun res!560151 () Bool)

(assert (=> b!820923 (= res!560151 (contains!4166 lt!368987 (select (arr!21801 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!820923 (=> (not res!560151) (not e!456199))))

(declare-fun b!820924 () Bool)

(assert (=> b!820924 (= e!456194 (ListLongMap!8572 Nil!15591))))

(declare-fun bm!35716 () Bool)

(assert (=> bm!35716 (= call!35719 (getCurrentListMapNoExtraKeys!2335 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!820925 () Bool)

(assert (=> b!820925 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22222 _keys!976)))))

(assert (=> b!820925 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22223 _values!788)))))

(assert (=> b!820925 (= e!456199 (= (apply!356 lt!368987 (select (arr!21801 _keys!976) #b00000000000000000000000000000000)) (get!11628 (select (arr!21802 _values!788) #b00000000000000000000000000000000) (dynLambda!966 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!104691 c!89146) b!820924))

(assert (= (and d!104691 (not c!89146)) b!820921))

(assert (= (and b!820921 c!89148) b!820918))

(assert (= (and b!820921 (not c!89148)) b!820922))

(assert (= (or b!820918 b!820922) bm!35716))

(assert (= (and d!104691 res!560152) b!820915))

(assert (= (and b!820915 res!560150) b!820916))

(assert (= (and b!820916 res!560149) b!820917))

(assert (= (and b!820916 c!89145) b!820923))

(assert (= (and b!820916 (not c!89145)) b!820920))

(assert (= (and b!820923 res!560151) b!820925))

(assert (= (and b!820920 c!89147) b!820914))

(assert (= (and b!820920 (not c!89147)) b!820919))

(declare-fun b_lambda!11029 () Bool)

(assert (=> (not b_lambda!11029) (not b!820918)))

(assert (=> b!820918 t!21938))

(declare-fun b_and!21843 () Bool)

(assert (= b_and!21841 (and (=> t!21938 result!7927) b_and!21843)))

(declare-fun b_lambda!11031 () Bool)

(assert (=> (not b_lambda!11031) (not b!820925)))

(assert (=> b!820925 t!21938))

(declare-fun b_and!21845 () Bool)

(assert (= b_and!21843 (and (=> t!21938 result!7927) b_and!21845)))

(declare-fun m!762873 () Bool)

(assert (=> b!820918 m!762873))

(declare-fun m!762875 () Bool)

(assert (=> b!820918 m!762875))

(assert (=> b!820918 m!762851))

(assert (=> b!820918 m!762873))

(declare-fun m!762877 () Bool)

(assert (=> b!820918 m!762877))

(assert (=> b!820918 m!762855))

(assert (=> b!820918 m!762851))

(assert (=> b!820918 m!762857))

(declare-fun m!762879 () Bool)

(assert (=> b!820918 m!762879))

(assert (=> b!820918 m!762837))

(assert (=> b!820918 m!762855))

(assert (=> b!820917 m!762837))

(assert (=> b!820917 m!762837))

(assert (=> b!820917 m!762839))

(declare-fun m!762881 () Bool)

(assert (=> bm!35716 m!762881))

(assert (=> b!820914 m!762881))

(assert (=> b!820923 m!762837))

(assert (=> b!820923 m!762837))

(declare-fun m!762883 () Bool)

(assert (=> b!820923 m!762883))

(declare-fun m!762885 () Bool)

(assert (=> b!820919 m!762885))

(declare-fun m!762887 () Bool)

(assert (=> d!104691 m!762887))

(assert (=> d!104691 m!762801))

(assert (=> b!820925 m!762837))

(declare-fun m!762889 () Bool)

(assert (=> b!820925 m!762889))

(assert (=> b!820925 m!762851))

(assert (=> b!820925 m!762855))

(assert (=> b!820925 m!762851))

(assert (=> b!820925 m!762857))

(assert (=> b!820925 m!762837))

(assert (=> b!820925 m!762855))

(declare-fun m!762891 () Bool)

(assert (=> b!820915 m!762891))

(assert (=> b!820921 m!762837))

(assert (=> b!820921 m!762837))

(assert (=> b!820921 m!762839))

(assert (=> b!820835 d!104691))

(declare-fun b!820934 () Bool)

(declare-fun e!456208 () Bool)

(declare-fun call!35722 () Bool)

(assert (=> b!820934 (= e!456208 call!35722)))

(declare-fun d!104693 () Bool)

(declare-fun res!560158 () Bool)

(declare-fun e!456206 () Bool)

(assert (=> d!104693 (=> res!560158 e!456206)))

(assert (=> d!104693 (= res!560158 (bvsge #b00000000000000000000000000000000 (size!22222 _keys!976)))))

(assert (=> d!104693 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!456206)))

(declare-fun bm!35719 () Bool)

(assert (=> bm!35719 (= call!35722 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!820935 () Bool)

(declare-fun e!456207 () Bool)

(assert (=> b!820935 (= e!456206 e!456207)))

(declare-fun c!89151 () Bool)

(assert (=> b!820935 (= c!89151 (validKeyInArray!0 (select (arr!21801 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!820936 () Bool)

(assert (=> b!820936 (= e!456207 call!35722)))

(declare-fun b!820937 () Bool)

(assert (=> b!820937 (= e!456207 e!456208)))

(declare-fun lt!368997 () (_ BitVec 64))

(assert (=> b!820937 (= lt!368997 (select (arr!21801 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!368998 () Unit!28055)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!45506 (_ BitVec 64) (_ BitVec 32)) Unit!28055)

(assert (=> b!820937 (= lt!368998 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!368997 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!45506 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!820937 (arrayContainsKey!0 _keys!976 lt!368997 #b00000000000000000000000000000000)))

(declare-fun lt!368996 () Unit!28055)

(assert (=> b!820937 (= lt!368996 lt!368998)))

(declare-fun res!560157 () Bool)

(declare-datatypes ((SeekEntryResult!8717 0))(
  ( (MissingZero!8717 (index!37238 (_ BitVec 32))) (Found!8717 (index!37239 (_ BitVec 32))) (Intermediate!8717 (undefined!9529 Bool) (index!37240 (_ BitVec 32)) (x!69187 (_ BitVec 32))) (Undefined!8717) (MissingVacant!8717 (index!37241 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!45506 (_ BitVec 32)) SeekEntryResult!8717)

(assert (=> b!820937 (= res!560157 (= (seekEntryOrOpen!0 (select (arr!21801 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8717 #b00000000000000000000000000000000)))))

(assert (=> b!820937 (=> (not res!560157) (not e!456208))))

(assert (= (and d!104693 (not res!560158)) b!820935))

(assert (= (and b!820935 c!89151) b!820937))

(assert (= (and b!820935 (not c!89151)) b!820936))

(assert (= (and b!820937 res!560157) b!820934))

(assert (= (or b!820934 b!820936) bm!35719))

(declare-fun m!762893 () Bool)

(assert (=> bm!35719 m!762893))

(assert (=> b!820935 m!762837))

(assert (=> b!820935 m!762837))

(assert (=> b!820935 m!762839))

(assert (=> b!820937 m!762837))

(declare-fun m!762895 () Bool)

(assert (=> b!820937 m!762895))

(declare-fun m!762897 () Bool)

(assert (=> b!820937 m!762897))

(assert (=> b!820937 m!762837))

(declare-fun m!762899 () Bool)

(assert (=> b!820937 m!762899))

(assert (=> b!820839 d!104693))

(declare-fun b!820944 () Bool)

(declare-fun e!456214 () Bool)

(assert (=> b!820944 (= e!456214 tp_is_empty!14673)))

(declare-fun condMapEmpty!23620 () Bool)

(declare-fun mapDefault!23620 () ValueCell!6921)

(assert (=> mapNonEmpty!23614 (= condMapEmpty!23620 (= mapRest!23614 ((as const (Array (_ BitVec 32) ValueCell!6921)) mapDefault!23620)))))

(declare-fun e!456213 () Bool)

(declare-fun mapRes!23620 () Bool)

(assert (=> mapNonEmpty!23614 (= tp!45627 (and e!456213 mapRes!23620))))

(declare-fun mapNonEmpty!23620 () Bool)

(declare-fun tp!45637 () Bool)

(assert (=> mapNonEmpty!23620 (= mapRes!23620 (and tp!45637 e!456214))))

(declare-fun mapValue!23620 () ValueCell!6921)

(declare-fun mapRest!23620 () (Array (_ BitVec 32) ValueCell!6921))

(declare-fun mapKey!23620 () (_ BitVec 32))

(assert (=> mapNonEmpty!23620 (= mapRest!23614 (store mapRest!23620 mapKey!23620 mapValue!23620))))

(declare-fun b!820945 () Bool)

(assert (=> b!820945 (= e!456213 tp_is_empty!14673)))

(declare-fun mapIsEmpty!23620 () Bool)

(assert (=> mapIsEmpty!23620 mapRes!23620))

(assert (= (and mapNonEmpty!23614 condMapEmpty!23620) mapIsEmpty!23620))

(assert (= (and mapNonEmpty!23614 (not condMapEmpty!23620)) mapNonEmpty!23620))

(assert (= (and mapNonEmpty!23620 ((_ is ValueCellFull!6921) mapValue!23620)) b!820944))

(assert (= (and mapNonEmpty!23614 ((_ is ValueCellFull!6921) mapDefault!23620)) b!820945))

(declare-fun m!762901 () Bool)

(assert (=> mapNonEmpty!23620 m!762901))

(declare-fun b_lambda!11033 () Bool)

(assert (= b_lambda!11025 (or (and start!70700 b_free!12963) b_lambda!11033)))

(declare-fun b_lambda!11035 () Bool)

(assert (= b_lambda!11031 (or (and start!70700 b_free!12963) b_lambda!11035)))

(declare-fun b_lambda!11037 () Bool)

(assert (= b_lambda!11027 (or (and start!70700 b_free!12963) b_lambda!11037)))

(declare-fun b_lambda!11039 () Bool)

(assert (= b_lambda!11029 (or (and start!70700 b_free!12963) b_lambda!11039)))

(check-sat (not b_lambda!11035) (not b!820919) (not b!820909) (not bm!35715) (not bm!35719) (not mapNonEmpty!23620) (not b!820872) (not b!820900) (not b!820925) (not b!820875) (not bm!35712) (not b!820903) (not b!820914) (not d!104691) (not b!820921) (not b!820911) (not b!820905) (not b_lambda!11037) tp_is_empty!14673 (not b!820937) (not b!820904) (not bm!35716) (not b_next!12963) (not b!820918) (not b_lambda!11039) (not b_lambda!11033) (not b!820917) b_and!21845 (not b!820935) (not b!820907) (not d!104687) (not b!820871) (not b!820901) (not b!820915) (not d!104689) (not b!820923))
(check-sat b_and!21845 (not b_next!12963))
