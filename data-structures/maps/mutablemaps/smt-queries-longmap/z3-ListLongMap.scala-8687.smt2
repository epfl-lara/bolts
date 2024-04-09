; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105558 () Bool)

(assert start!105558)

(declare-fun b_free!27159 () Bool)

(declare-fun b_next!27159 () Bool)

(assert (=> start!105558 (= b_free!27159 (not b_next!27159))))

(declare-fun tp!94995 () Bool)

(declare-fun b_and!45025 () Bool)

(assert (=> start!105558 (= tp!94995 b_and!45025)))

(declare-fun b!1257122 () Bool)

(declare-fun e!714844 () Bool)

(declare-fun e!714841 () Bool)

(assert (=> b!1257122 (= e!714844 (not e!714841))))

(declare-fun res!838119 () Bool)

(assert (=> b!1257122 (=> res!838119 e!714841)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1257122 (= res!838119 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!48113 0))(
  ( (V!48114 (val!16093 Int)) )
))
(declare-datatypes ((tuple2!20950 0))(
  ( (tuple2!20951 (_1!10485 (_ BitVec 64)) (_2!10485 V!48113)) )
))
(declare-datatypes ((List!28182 0))(
  ( (Nil!28179) (Cons!28178 (h!29387 tuple2!20950) (t!41678 List!28182)) )
))
(declare-datatypes ((ListLongMap!18835 0))(
  ( (ListLongMap!18836 (toList!9433 List!28182)) )
))
(declare-fun lt!568525 () ListLongMap!18835)

(declare-fun lt!568524 () ListLongMap!18835)

(assert (=> b!1257122 (= lt!568525 lt!568524)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48113)

(declare-datatypes ((Unit!41838 0))(
  ( (Unit!41839) )
))
(declare-fun lt!568526 () Unit!41838)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48113)

(declare-datatypes ((array!81755 0))(
  ( (array!81756 (arr!39431 (Array (_ BitVec 32) (_ BitVec 64))) (size!39968 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81755)

(declare-datatypes ((ValueCell!15267 0))(
  ( (ValueCellFull!15267 (v!18794 V!48113)) (EmptyCell!15267) )
))
(declare-datatypes ((array!81757 0))(
  ( (array!81758 (arr!39432 (Array (_ BitVec 32) ValueCell!15267)) (size!39969 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81757)

(declare-fun minValueBefore!43 () V!48113)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1103 (array!81755 array!81757 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48113 V!48113 V!48113 V!48113 (_ BitVec 32) Int) Unit!41838)

(assert (=> b!1257122 (= lt!568526 (lemmaNoChangeToArrayThenSameMapNoExtras!1103 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5785 (array!81755 array!81757 (_ BitVec 32) (_ BitVec 32) V!48113 V!48113 (_ BitVec 32) Int) ListLongMap!18835)

(assert (=> b!1257122 (= lt!568524 (getCurrentListMapNoExtraKeys!5785 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257122 (= lt!568525 (getCurrentListMapNoExtraKeys!5785 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49879 () Bool)

(declare-fun mapRes!49879 () Bool)

(assert (=> mapIsEmpty!49879 mapRes!49879))

(declare-fun b!1257123 () Bool)

(declare-fun e!714840 () Bool)

(declare-fun tp_is_empty!32061 () Bool)

(assert (=> b!1257123 (= e!714840 tp_is_empty!32061)))

(declare-fun b!1257124 () Bool)

(declare-fun res!838115 () Bool)

(assert (=> b!1257124 (=> (not res!838115) (not e!714844))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81755 (_ BitVec 32)) Bool)

(assert (=> b!1257124 (= res!838115 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1257125 () Bool)

(declare-fun res!838117 () Bool)

(assert (=> b!1257125 (=> (not res!838117) (not e!714844))))

(assert (=> b!1257125 (= res!838117 (and (= (size!39969 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39968 _keys!1118) (size!39969 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!49879 () Bool)

(declare-fun tp!94994 () Bool)

(assert (=> mapNonEmpty!49879 (= mapRes!49879 (and tp!94994 e!714840))))

(declare-fun mapRest!49879 () (Array (_ BitVec 32) ValueCell!15267))

(declare-fun mapValue!49879 () ValueCell!15267)

(declare-fun mapKey!49879 () (_ BitVec 32))

(assert (=> mapNonEmpty!49879 (= (arr!39432 _values!914) (store mapRest!49879 mapKey!49879 mapValue!49879))))

(declare-fun b!1257126 () Bool)

(declare-fun res!838118 () Bool)

(assert (=> b!1257126 (=> (not res!838118) (not e!714844))))

(declare-datatypes ((List!28183 0))(
  ( (Nil!28180) (Cons!28179 (h!29388 (_ BitVec 64)) (t!41679 List!28183)) )
))
(declare-fun arrayNoDuplicates!0 (array!81755 (_ BitVec 32) List!28183) Bool)

(assert (=> b!1257126 (= res!838118 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28180))))

(declare-fun b!1257127 () Bool)

(declare-fun e!714845 () Bool)

(declare-fun e!714839 () Bool)

(assert (=> b!1257127 (= e!714845 (and e!714839 mapRes!49879))))

(declare-fun condMapEmpty!49879 () Bool)

(declare-fun mapDefault!49879 () ValueCell!15267)

(assert (=> b!1257127 (= condMapEmpty!49879 (= (arr!39432 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15267)) mapDefault!49879)))))

(declare-fun b!1257128 () Bool)

(declare-fun e!714842 () Bool)

(assert (=> b!1257128 (= e!714842 (bvsle #b00000000000000000000000000000000 (size!39968 _keys!1118)))))

(declare-fun lt!568527 () ListLongMap!18835)

(declare-fun -!2108 (ListLongMap!18835 (_ BitVec 64)) ListLongMap!18835)

(assert (=> b!1257128 (= (-!2108 lt!568527 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568527)))

(declare-fun lt!568528 () Unit!41838)

(declare-fun removeNotPresentStillSame!141 (ListLongMap!18835 (_ BitVec 64)) Unit!41838)

(assert (=> b!1257128 (= lt!568528 (removeNotPresentStillSame!141 lt!568527 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!838114 () Bool)

(assert (=> start!105558 (=> (not res!838114) (not e!714844))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105558 (= res!838114 (validMask!0 mask!1466))))

(assert (=> start!105558 e!714844))

(assert (=> start!105558 true))

(assert (=> start!105558 tp!94995))

(assert (=> start!105558 tp_is_empty!32061))

(declare-fun array_inv!29985 (array!81755) Bool)

(assert (=> start!105558 (array_inv!29985 _keys!1118)))

(declare-fun array_inv!29986 (array!81757) Bool)

(assert (=> start!105558 (and (array_inv!29986 _values!914) e!714845)))

(declare-fun b!1257129 () Bool)

(assert (=> b!1257129 (= e!714841 e!714842)))

(declare-fun res!838116 () Bool)

(assert (=> b!1257129 (=> res!838116 e!714842)))

(declare-fun contains!7586 (ListLongMap!18835 (_ BitVec 64)) Bool)

(assert (=> b!1257129 (= res!838116 (contains!7586 lt!568527 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4590 (array!81755 array!81757 (_ BitVec 32) (_ BitVec 32) V!48113 V!48113 (_ BitVec 32) Int) ListLongMap!18835)

(assert (=> b!1257129 (= lt!568527 (getCurrentListMap!4590 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1257130 () Bool)

(assert (=> b!1257130 (= e!714839 tp_is_empty!32061)))

(assert (= (and start!105558 res!838114) b!1257125))

(assert (= (and b!1257125 res!838117) b!1257124))

(assert (= (and b!1257124 res!838115) b!1257126))

(assert (= (and b!1257126 res!838118) b!1257122))

(assert (= (and b!1257122 (not res!838119)) b!1257129))

(assert (= (and b!1257129 (not res!838116)) b!1257128))

(assert (= (and b!1257127 condMapEmpty!49879) mapIsEmpty!49879))

(assert (= (and b!1257127 (not condMapEmpty!49879)) mapNonEmpty!49879))

(get-info :version)

(assert (= (and mapNonEmpty!49879 ((_ is ValueCellFull!15267) mapValue!49879)) b!1257123))

(assert (= (and b!1257127 ((_ is ValueCellFull!15267) mapDefault!49879)) b!1257130))

(assert (= start!105558 b!1257127))

(declare-fun m!1157785 () Bool)

(assert (=> b!1257122 m!1157785))

(declare-fun m!1157787 () Bool)

(assert (=> b!1257122 m!1157787))

(declare-fun m!1157789 () Bool)

(assert (=> b!1257122 m!1157789))

(declare-fun m!1157791 () Bool)

(assert (=> b!1257128 m!1157791))

(declare-fun m!1157793 () Bool)

(assert (=> b!1257128 m!1157793))

(declare-fun m!1157795 () Bool)

(assert (=> start!105558 m!1157795))

(declare-fun m!1157797 () Bool)

(assert (=> start!105558 m!1157797))

(declare-fun m!1157799 () Bool)

(assert (=> start!105558 m!1157799))

(declare-fun m!1157801 () Bool)

(assert (=> b!1257129 m!1157801))

(declare-fun m!1157803 () Bool)

(assert (=> b!1257129 m!1157803))

(declare-fun m!1157805 () Bool)

(assert (=> mapNonEmpty!49879 m!1157805))

(declare-fun m!1157807 () Bool)

(assert (=> b!1257126 m!1157807))

(declare-fun m!1157809 () Bool)

(assert (=> b!1257124 m!1157809))

(check-sat (not mapNonEmpty!49879) (not b_next!27159) (not start!105558) (not b!1257122) (not b!1257126) b_and!45025 (not b!1257129) (not b!1257128) tp_is_empty!32061 (not b!1257124))
(check-sat b_and!45025 (not b_next!27159))
(get-model)

(declare-fun d!138145 () Bool)

(declare-fun res!838142 () Bool)

(declare-fun e!714874 () Bool)

(assert (=> d!138145 (=> res!838142 e!714874)))

(assert (=> d!138145 (= res!838142 (bvsge #b00000000000000000000000000000000 (size!39968 _keys!1118)))))

(assert (=> d!138145 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!714874)))

(declare-fun bm!61804 () Bool)

(declare-fun call!61807 () Bool)

(assert (=> bm!61804 (= call!61807 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1257166 () Bool)

(declare-fun e!714875 () Bool)

(assert (=> b!1257166 (= e!714875 call!61807)))

(declare-fun b!1257167 () Bool)

(declare-fun e!714873 () Bool)

(assert (=> b!1257167 (= e!714874 e!714873)))

(declare-fun c!122397 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1257167 (= c!122397 (validKeyInArray!0 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1257168 () Bool)

(assert (=> b!1257168 (= e!714873 call!61807)))

(declare-fun b!1257169 () Bool)

(assert (=> b!1257169 (= e!714873 e!714875)))

(declare-fun lt!568550 () (_ BitVec 64))

(assert (=> b!1257169 (= lt!568550 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!568552 () Unit!41838)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!81755 (_ BitVec 64) (_ BitVec 32)) Unit!41838)

(assert (=> b!1257169 (= lt!568552 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!568550 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!81755 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1257169 (arrayContainsKey!0 _keys!1118 lt!568550 #b00000000000000000000000000000000)))

(declare-fun lt!568551 () Unit!41838)

(assert (=> b!1257169 (= lt!568551 lt!568552)))

(declare-fun res!838143 () Bool)

(declare-datatypes ((SeekEntryResult!9964 0))(
  ( (MissingZero!9964 (index!42226 (_ BitVec 32))) (Found!9964 (index!42227 (_ BitVec 32))) (Intermediate!9964 (undefined!10776 Bool) (index!42228 (_ BitVec 32)) (x!110709 (_ BitVec 32))) (Undefined!9964) (MissingVacant!9964 (index!42229 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!81755 (_ BitVec 32)) SeekEntryResult!9964)

(assert (=> b!1257169 (= res!838143 (= (seekEntryOrOpen!0 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9964 #b00000000000000000000000000000000)))))

(assert (=> b!1257169 (=> (not res!838143) (not e!714875))))

(assert (= (and d!138145 (not res!838142)) b!1257167))

(assert (= (and b!1257167 c!122397) b!1257169))

(assert (= (and b!1257167 (not c!122397)) b!1257168))

(assert (= (and b!1257169 res!838143) b!1257166))

(assert (= (or b!1257166 b!1257168) bm!61804))

(declare-fun m!1157837 () Bool)

(assert (=> bm!61804 m!1157837))

(declare-fun m!1157839 () Bool)

(assert (=> b!1257167 m!1157839))

(assert (=> b!1257167 m!1157839))

(declare-fun m!1157841 () Bool)

(assert (=> b!1257167 m!1157841))

(assert (=> b!1257169 m!1157839))

(declare-fun m!1157843 () Bool)

(assert (=> b!1257169 m!1157843))

(declare-fun m!1157845 () Bool)

(assert (=> b!1257169 m!1157845))

(assert (=> b!1257169 m!1157839))

(declare-fun m!1157847 () Bool)

(assert (=> b!1257169 m!1157847))

(assert (=> b!1257124 d!138145))

(declare-fun d!138147 () Bool)

(assert (=> d!138147 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!105558 d!138147))

(declare-fun d!138149 () Bool)

(assert (=> d!138149 (= (array_inv!29985 _keys!1118) (bvsge (size!39968 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!105558 d!138149))

(declare-fun d!138151 () Bool)

(assert (=> d!138151 (= (array_inv!29986 _values!914) (bvsge (size!39969 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!105558 d!138151))

(declare-fun d!138153 () Bool)

(declare-fun e!714880 () Bool)

(assert (=> d!138153 e!714880))

(declare-fun res!838146 () Bool)

(assert (=> d!138153 (=> res!838146 e!714880)))

(declare-fun lt!568563 () Bool)

(assert (=> d!138153 (= res!838146 (not lt!568563))))

(declare-fun lt!568564 () Bool)

(assert (=> d!138153 (= lt!568563 lt!568564)))

(declare-fun lt!568561 () Unit!41838)

(declare-fun e!714881 () Unit!41838)

(assert (=> d!138153 (= lt!568561 e!714881)))

(declare-fun c!122400 () Bool)

(assert (=> d!138153 (= c!122400 lt!568564)))

(declare-fun containsKey!620 (List!28182 (_ BitVec 64)) Bool)

(assert (=> d!138153 (= lt!568564 (containsKey!620 (toList!9433 lt!568527) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138153 (= (contains!7586 lt!568527 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568563)))

(declare-fun b!1257176 () Bool)

(declare-fun lt!568562 () Unit!41838)

(assert (=> b!1257176 (= e!714881 lt!568562)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!430 (List!28182 (_ BitVec 64)) Unit!41838)

(assert (=> b!1257176 (= lt!568562 (lemmaContainsKeyImpliesGetValueByKeyDefined!430 (toList!9433 lt!568527) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!711 0))(
  ( (Some!710 (v!18796 V!48113)) (None!709) )
))
(declare-fun isDefined!470 (Option!711) Bool)

(declare-fun getValueByKey!660 (List!28182 (_ BitVec 64)) Option!711)

(assert (=> b!1257176 (isDefined!470 (getValueByKey!660 (toList!9433 lt!568527) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1257177 () Bool)

(declare-fun Unit!41842 () Unit!41838)

(assert (=> b!1257177 (= e!714881 Unit!41842)))

(declare-fun b!1257178 () Bool)

(assert (=> b!1257178 (= e!714880 (isDefined!470 (getValueByKey!660 (toList!9433 lt!568527) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!138153 c!122400) b!1257176))

(assert (= (and d!138153 (not c!122400)) b!1257177))

(assert (= (and d!138153 (not res!838146)) b!1257178))

(declare-fun m!1157849 () Bool)

(assert (=> d!138153 m!1157849))

(declare-fun m!1157851 () Bool)

(assert (=> b!1257176 m!1157851))

(declare-fun m!1157853 () Bool)

(assert (=> b!1257176 m!1157853))

(assert (=> b!1257176 m!1157853))

(declare-fun m!1157855 () Bool)

(assert (=> b!1257176 m!1157855))

(assert (=> b!1257178 m!1157853))

(assert (=> b!1257178 m!1157853))

(assert (=> b!1257178 m!1157855))

(assert (=> b!1257129 d!138153))

(declare-fun b!1257221 () Bool)

(declare-fun e!714918 () Bool)

(declare-fun call!61825 () Bool)

(assert (=> b!1257221 (= e!714918 (not call!61825))))

(declare-fun d!138155 () Bool)

(declare-fun e!714920 () Bool)

(assert (=> d!138155 e!714920))

(declare-fun res!838171 () Bool)

(assert (=> d!138155 (=> (not res!838171) (not e!714920))))

(assert (=> d!138155 (= res!838171 (or (bvsge #b00000000000000000000000000000000 (size!39968 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39968 _keys!1118)))))))

(declare-fun lt!568618 () ListLongMap!18835)

(declare-fun lt!568613 () ListLongMap!18835)

(assert (=> d!138155 (= lt!568618 lt!568613)))

(declare-fun lt!568630 () Unit!41838)

(declare-fun e!714919 () Unit!41838)

(assert (=> d!138155 (= lt!568630 e!714919)))

(declare-fun c!122418 () Bool)

(declare-fun e!714915 () Bool)

(assert (=> d!138155 (= c!122418 e!714915)))

(declare-fun res!838173 () Bool)

(assert (=> d!138155 (=> (not res!838173) (not e!714915))))

(assert (=> d!138155 (= res!838173 (bvslt #b00000000000000000000000000000000 (size!39968 _keys!1118)))))

(declare-fun e!714916 () ListLongMap!18835)

(assert (=> d!138155 (= lt!568613 e!714916)))

(declare-fun c!122413 () Bool)

(assert (=> d!138155 (= c!122413 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138155 (validMask!0 mask!1466)))

(assert (=> d!138155 (= (getCurrentListMap!4590 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!568618)))

(declare-fun bm!61819 () Bool)

(declare-fun call!61827 () ListLongMap!18835)

(declare-fun call!61823 () ListLongMap!18835)

(assert (=> bm!61819 (= call!61827 call!61823)))

(declare-fun b!1257222 () Bool)

(declare-fun e!714909 () Bool)

(declare-fun call!61822 () Bool)

(assert (=> b!1257222 (= e!714909 (not call!61822))))

(declare-fun bm!61820 () Bool)

(declare-fun call!61828 () ListLongMap!18835)

(assert (=> bm!61820 (= call!61828 (getCurrentListMapNoExtraKeys!5785 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1257223 () Bool)

(declare-fun res!838169 () Bool)

(assert (=> b!1257223 (=> (not res!838169) (not e!714920))))

(declare-fun e!714917 () Bool)

(assert (=> b!1257223 (= res!838169 e!714917)))

(declare-fun res!838172 () Bool)

(assert (=> b!1257223 (=> res!838172 e!714917)))

(declare-fun e!714908 () Bool)

(assert (=> b!1257223 (= res!838172 (not e!714908))))

(declare-fun res!838166 () Bool)

(assert (=> b!1257223 (=> (not res!838166) (not e!714908))))

(assert (=> b!1257223 (= res!838166 (bvslt #b00000000000000000000000000000000 (size!39968 _keys!1118)))))

(declare-fun b!1257224 () Bool)

(declare-fun call!61824 () ListLongMap!18835)

(declare-fun +!4167 (ListLongMap!18835 tuple2!20950) ListLongMap!18835)

(assert (=> b!1257224 (= e!714916 (+!4167 call!61824 (tuple2!20951 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun b!1257225 () Bool)

(declare-fun res!838165 () Bool)

(assert (=> b!1257225 (=> (not res!838165) (not e!714920))))

(assert (=> b!1257225 (= res!838165 e!714918)))

(declare-fun c!122414 () Bool)

(assert (=> b!1257225 (= c!122414 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1257226 () Bool)

(declare-fun e!714911 () Bool)

(assert (=> b!1257226 (= e!714909 e!714911)))

(declare-fun res!838167 () Bool)

(assert (=> b!1257226 (= res!838167 call!61822)))

(assert (=> b!1257226 (=> (not res!838167) (not e!714911))))

(declare-fun b!1257227 () Bool)

(declare-fun e!714910 () ListLongMap!18835)

(declare-fun call!61826 () ListLongMap!18835)

(assert (=> b!1257227 (= e!714910 call!61826)))

(declare-fun b!1257228 () Bool)

(declare-fun e!714912 () Bool)

(declare-fun apply!1024 (ListLongMap!18835 (_ BitVec 64)) V!48113)

(declare-fun get!20200 (ValueCell!15267 V!48113) V!48113)

(declare-fun dynLambda!3469 (Int (_ BitVec 64)) V!48113)

(assert (=> b!1257228 (= e!714912 (= (apply!1024 lt!568618 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000)) (get!20200 (select (arr!39432 _values!914) #b00000000000000000000000000000000) (dynLambda!3469 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1257228 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39969 _values!914)))))

(assert (=> b!1257228 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39968 _keys!1118)))))

(declare-fun b!1257229 () Bool)

(declare-fun Unit!41843 () Unit!41838)

(assert (=> b!1257229 (= e!714919 Unit!41843)))

(declare-fun bm!61821 () Bool)

(assert (=> bm!61821 (= call!61823 call!61828)))

(declare-fun bm!61822 () Bool)

(assert (=> bm!61822 (= call!61825 (contains!7586 lt!568618 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1257230 () Bool)

(declare-fun e!714913 () Bool)

(assert (=> b!1257230 (= e!714918 e!714913)))

(declare-fun res!838170 () Bool)

(assert (=> b!1257230 (= res!838170 call!61825)))

(assert (=> b!1257230 (=> (not res!838170) (not e!714913))))

(declare-fun b!1257231 () Bool)

(declare-fun e!714914 () ListLongMap!18835)

(assert (=> b!1257231 (= e!714914 call!61826)))

(declare-fun c!122415 () Bool)

(declare-fun bm!61823 () Bool)

(assert (=> bm!61823 (= call!61824 (+!4167 (ite c!122413 call!61828 (ite c!122415 call!61823 call!61827)) (ite (or c!122413 c!122415) (tuple2!20951 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!20951 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun b!1257232 () Bool)

(assert (=> b!1257232 (= e!714914 call!61827)))

(declare-fun b!1257233 () Bool)

(assert (=> b!1257233 (= e!714916 e!714910)))

(assert (=> b!1257233 (= c!122415 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1257234 () Bool)

(declare-fun lt!568610 () Unit!41838)

(assert (=> b!1257234 (= e!714919 lt!568610)))

(declare-fun lt!568627 () ListLongMap!18835)

(assert (=> b!1257234 (= lt!568627 (getCurrentListMapNoExtraKeys!5785 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!568620 () (_ BitVec 64))

(assert (=> b!1257234 (= lt!568620 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!568614 () (_ BitVec 64))

(assert (=> b!1257234 (= lt!568614 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!568623 () Unit!41838)

(declare-fun addStillContains!1097 (ListLongMap!18835 (_ BitVec 64) V!48113 (_ BitVec 64)) Unit!41838)

(assert (=> b!1257234 (= lt!568623 (addStillContains!1097 lt!568627 lt!568620 zeroValue!871 lt!568614))))

(assert (=> b!1257234 (contains!7586 (+!4167 lt!568627 (tuple2!20951 lt!568620 zeroValue!871)) lt!568614)))

(declare-fun lt!568628 () Unit!41838)

(assert (=> b!1257234 (= lt!568628 lt!568623)))

(declare-fun lt!568611 () ListLongMap!18835)

(assert (=> b!1257234 (= lt!568611 (getCurrentListMapNoExtraKeys!5785 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!568625 () (_ BitVec 64))

(assert (=> b!1257234 (= lt!568625 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!568624 () (_ BitVec 64))

(assert (=> b!1257234 (= lt!568624 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!568609 () Unit!41838)

(declare-fun addApplyDifferent!531 (ListLongMap!18835 (_ BitVec 64) V!48113 (_ BitVec 64)) Unit!41838)

(assert (=> b!1257234 (= lt!568609 (addApplyDifferent!531 lt!568611 lt!568625 minValueBefore!43 lt!568624))))

(assert (=> b!1257234 (= (apply!1024 (+!4167 lt!568611 (tuple2!20951 lt!568625 minValueBefore!43)) lt!568624) (apply!1024 lt!568611 lt!568624))))

(declare-fun lt!568615 () Unit!41838)

(assert (=> b!1257234 (= lt!568615 lt!568609)))

(declare-fun lt!568616 () ListLongMap!18835)

(assert (=> b!1257234 (= lt!568616 (getCurrentListMapNoExtraKeys!5785 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!568621 () (_ BitVec 64))

(assert (=> b!1257234 (= lt!568621 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!568617 () (_ BitVec 64))

(assert (=> b!1257234 (= lt!568617 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!568622 () Unit!41838)

(assert (=> b!1257234 (= lt!568622 (addApplyDifferent!531 lt!568616 lt!568621 zeroValue!871 lt!568617))))

(assert (=> b!1257234 (= (apply!1024 (+!4167 lt!568616 (tuple2!20951 lt!568621 zeroValue!871)) lt!568617) (apply!1024 lt!568616 lt!568617))))

(declare-fun lt!568619 () Unit!41838)

(assert (=> b!1257234 (= lt!568619 lt!568622)))

(declare-fun lt!568629 () ListLongMap!18835)

(assert (=> b!1257234 (= lt!568629 (getCurrentListMapNoExtraKeys!5785 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!568626 () (_ BitVec 64))

(assert (=> b!1257234 (= lt!568626 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!568612 () (_ BitVec 64))

(assert (=> b!1257234 (= lt!568612 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1257234 (= lt!568610 (addApplyDifferent!531 lt!568629 lt!568626 minValueBefore!43 lt!568612))))

(assert (=> b!1257234 (= (apply!1024 (+!4167 lt!568629 (tuple2!20951 lt!568626 minValueBefore!43)) lt!568612) (apply!1024 lt!568629 lt!568612))))

(declare-fun b!1257235 () Bool)

(assert (=> b!1257235 (= e!714913 (= (apply!1024 lt!568618 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1257236 () Bool)

(assert (=> b!1257236 (= e!714908 (validKeyInArray!0 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!61824 () Bool)

(assert (=> bm!61824 (= call!61822 (contains!7586 lt!568618 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1257237 () Bool)

(assert (=> b!1257237 (= e!714917 e!714912)))

(declare-fun res!838168 () Bool)

(assert (=> b!1257237 (=> (not res!838168) (not e!714912))))

(assert (=> b!1257237 (= res!838168 (contains!7586 lt!568618 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1257237 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39968 _keys!1118)))))

(declare-fun b!1257238 () Bool)

(assert (=> b!1257238 (= e!714911 (= (apply!1024 lt!568618 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(declare-fun b!1257239 () Bool)

(assert (=> b!1257239 (= e!714920 e!714909)))

(declare-fun c!122417 () Bool)

(assert (=> b!1257239 (= c!122417 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1257240 () Bool)

(declare-fun c!122416 () Bool)

(assert (=> b!1257240 (= c!122416 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1257240 (= e!714910 e!714914)))

(declare-fun bm!61825 () Bool)

(assert (=> bm!61825 (= call!61826 call!61824)))

(declare-fun b!1257241 () Bool)

(assert (=> b!1257241 (= e!714915 (validKeyInArray!0 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!138155 c!122413) b!1257224))

(assert (= (and d!138155 (not c!122413)) b!1257233))

(assert (= (and b!1257233 c!122415) b!1257227))

(assert (= (and b!1257233 (not c!122415)) b!1257240))

(assert (= (and b!1257240 c!122416) b!1257231))

(assert (= (and b!1257240 (not c!122416)) b!1257232))

(assert (= (or b!1257231 b!1257232) bm!61819))

(assert (= (or b!1257227 bm!61819) bm!61821))

(assert (= (or b!1257227 b!1257231) bm!61825))

(assert (= (or b!1257224 bm!61821) bm!61820))

(assert (= (or b!1257224 bm!61825) bm!61823))

(assert (= (and d!138155 res!838173) b!1257241))

(assert (= (and d!138155 c!122418) b!1257234))

(assert (= (and d!138155 (not c!122418)) b!1257229))

(assert (= (and d!138155 res!838171) b!1257223))

(assert (= (and b!1257223 res!838166) b!1257236))

(assert (= (and b!1257223 (not res!838172)) b!1257237))

(assert (= (and b!1257237 res!838168) b!1257228))

(assert (= (and b!1257223 res!838169) b!1257225))

(assert (= (and b!1257225 c!122414) b!1257230))

(assert (= (and b!1257225 (not c!122414)) b!1257221))

(assert (= (and b!1257230 res!838170) b!1257235))

(assert (= (or b!1257230 b!1257221) bm!61822))

(assert (= (and b!1257225 res!838165) b!1257239))

(assert (= (and b!1257239 c!122417) b!1257226))

(assert (= (and b!1257239 (not c!122417)) b!1257222))

(assert (= (and b!1257226 res!838167) b!1257238))

(assert (= (or b!1257226 b!1257222) bm!61824))

(declare-fun b_lambda!22697 () Bool)

(assert (=> (not b_lambda!22697) (not b!1257228)))

(declare-fun t!41682 () Bool)

(declare-fun tb!11313 () Bool)

(assert (=> (and start!105558 (= defaultEntry!922 defaultEntry!922) t!41682) tb!11313))

(declare-fun result!23331 () Bool)

(assert (=> tb!11313 (= result!23331 tp_is_empty!32061)))

(assert (=> b!1257228 t!41682))

(declare-fun b_and!45029 () Bool)

(assert (= b_and!45025 (and (=> t!41682 result!23331) b_and!45029)))

(assert (=> b!1257237 m!1157839))

(assert (=> b!1257237 m!1157839))

(declare-fun m!1157857 () Bool)

(assert (=> b!1257237 m!1157857))

(assert (=> b!1257241 m!1157839))

(assert (=> b!1257241 m!1157839))

(assert (=> b!1257241 m!1157841))

(assert (=> b!1257236 m!1157839))

(assert (=> b!1257236 m!1157839))

(assert (=> b!1257236 m!1157841))

(assert (=> bm!61820 m!1157789))

(declare-fun m!1157859 () Bool)

(assert (=> bm!61822 m!1157859))

(declare-fun m!1157861 () Bool)

(assert (=> b!1257238 m!1157861))

(declare-fun m!1157863 () Bool)

(assert (=> b!1257228 m!1157863))

(assert (=> b!1257228 m!1157839))

(declare-fun m!1157865 () Bool)

(assert (=> b!1257228 m!1157865))

(assert (=> b!1257228 m!1157863))

(declare-fun m!1157867 () Bool)

(assert (=> b!1257228 m!1157867))

(declare-fun m!1157869 () Bool)

(assert (=> b!1257228 m!1157869))

(assert (=> b!1257228 m!1157839))

(assert (=> b!1257228 m!1157867))

(assert (=> d!138155 m!1157795))

(declare-fun m!1157871 () Bool)

(assert (=> bm!61824 m!1157871))

(declare-fun m!1157873 () Bool)

(assert (=> b!1257235 m!1157873))

(declare-fun m!1157875 () Bool)

(assert (=> bm!61823 m!1157875))

(declare-fun m!1157877 () Bool)

(assert (=> b!1257224 m!1157877))

(declare-fun m!1157879 () Bool)

(assert (=> b!1257234 m!1157879))

(declare-fun m!1157881 () Bool)

(assert (=> b!1257234 m!1157881))

(declare-fun m!1157883 () Bool)

(assert (=> b!1257234 m!1157883))

(declare-fun m!1157885 () Bool)

(assert (=> b!1257234 m!1157885))

(declare-fun m!1157887 () Bool)

(assert (=> b!1257234 m!1157887))

(declare-fun m!1157889 () Bool)

(assert (=> b!1257234 m!1157889))

(declare-fun m!1157891 () Bool)

(assert (=> b!1257234 m!1157891))

(declare-fun m!1157893 () Bool)

(assert (=> b!1257234 m!1157893))

(declare-fun m!1157895 () Bool)

(assert (=> b!1257234 m!1157895))

(assert (=> b!1257234 m!1157839))

(declare-fun m!1157897 () Bool)

(assert (=> b!1257234 m!1157897))

(declare-fun m!1157899 () Bool)

(assert (=> b!1257234 m!1157899))

(assert (=> b!1257234 m!1157897))

(assert (=> b!1257234 m!1157887))

(declare-fun m!1157901 () Bool)

(assert (=> b!1257234 m!1157901))

(assert (=> b!1257234 m!1157893))

(declare-fun m!1157903 () Bool)

(assert (=> b!1257234 m!1157903))

(declare-fun m!1157905 () Bool)

(assert (=> b!1257234 m!1157905))

(assert (=> b!1257234 m!1157889))

(declare-fun m!1157907 () Bool)

(assert (=> b!1257234 m!1157907))

(assert (=> b!1257234 m!1157789))

(assert (=> b!1257129 d!138155))

(declare-fun d!138157 () Bool)

(declare-fun lt!568633 () ListLongMap!18835)

(assert (=> d!138157 (not (contains!7586 lt!568633 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!142 (List!28182 (_ BitVec 64)) List!28182)

(assert (=> d!138157 (= lt!568633 (ListLongMap!18836 (removeStrictlySorted!142 (toList!9433 lt!568527) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138157 (= (-!2108 lt!568527 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568633)))

(declare-fun bs!35542 () Bool)

(assert (= bs!35542 d!138157))

(declare-fun m!1157909 () Bool)

(assert (=> bs!35542 m!1157909))

(declare-fun m!1157911 () Bool)

(assert (=> bs!35542 m!1157911))

(assert (=> b!1257128 d!138157))

(declare-fun d!138159 () Bool)

(assert (=> d!138159 (= (-!2108 lt!568527 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568527)))

(declare-fun lt!568636 () Unit!41838)

(declare-fun choose!1869 (ListLongMap!18835 (_ BitVec 64)) Unit!41838)

(assert (=> d!138159 (= lt!568636 (choose!1869 lt!568527 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138159 (not (contains!7586 lt!568527 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138159 (= (removeNotPresentStillSame!141 lt!568527 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568636)))

(declare-fun bs!35543 () Bool)

(assert (= bs!35543 d!138159))

(assert (=> bs!35543 m!1157791))

(declare-fun m!1157913 () Bool)

(assert (=> bs!35543 m!1157913))

(assert (=> bs!35543 m!1157801))

(assert (=> b!1257128 d!138159))

(declare-fun d!138161 () Bool)

(declare-fun res!838180 () Bool)

(declare-fun e!714932 () Bool)

(assert (=> d!138161 (=> res!838180 e!714932)))

(assert (=> d!138161 (= res!838180 (bvsge #b00000000000000000000000000000000 (size!39968 _keys!1118)))))

(assert (=> d!138161 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28180) e!714932)))

(declare-fun b!1257254 () Bool)

(declare-fun e!714931 () Bool)

(assert (=> b!1257254 (= e!714932 e!714931)))

(declare-fun res!838181 () Bool)

(assert (=> b!1257254 (=> (not res!838181) (not e!714931))))

(declare-fun e!714930 () Bool)

(assert (=> b!1257254 (= res!838181 (not e!714930))))

(declare-fun res!838182 () Bool)

(assert (=> b!1257254 (=> (not res!838182) (not e!714930))))

(assert (=> b!1257254 (= res!838182 (validKeyInArray!0 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1257255 () Bool)

(declare-fun e!714929 () Bool)

(declare-fun call!61831 () Bool)

(assert (=> b!1257255 (= e!714929 call!61831)))

(declare-fun b!1257256 () Bool)

(declare-fun contains!7588 (List!28183 (_ BitVec 64)) Bool)

(assert (=> b!1257256 (= e!714930 (contains!7588 Nil!28180 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!61828 () Bool)

(declare-fun c!122421 () Bool)

(assert (=> bm!61828 (= call!61831 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122421 (Cons!28179 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000) Nil!28180) Nil!28180)))))

(declare-fun b!1257257 () Bool)

(assert (=> b!1257257 (= e!714931 e!714929)))

(assert (=> b!1257257 (= c!122421 (validKeyInArray!0 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1257258 () Bool)

(assert (=> b!1257258 (= e!714929 call!61831)))

(assert (= (and d!138161 (not res!838180)) b!1257254))

(assert (= (and b!1257254 res!838182) b!1257256))

(assert (= (and b!1257254 res!838181) b!1257257))

(assert (= (and b!1257257 c!122421) b!1257255))

(assert (= (and b!1257257 (not c!122421)) b!1257258))

(assert (= (or b!1257255 b!1257258) bm!61828))

(assert (=> b!1257254 m!1157839))

(assert (=> b!1257254 m!1157839))

(assert (=> b!1257254 m!1157841))

(assert (=> b!1257256 m!1157839))

(assert (=> b!1257256 m!1157839))

(declare-fun m!1157915 () Bool)

(assert (=> b!1257256 m!1157915))

(assert (=> bm!61828 m!1157839))

(declare-fun m!1157917 () Bool)

(assert (=> bm!61828 m!1157917))

(assert (=> b!1257257 m!1157839))

(assert (=> b!1257257 m!1157839))

(assert (=> b!1257257 m!1157841))

(assert (=> b!1257126 d!138161))

(declare-fun d!138163 () Bool)

(assert (=> d!138163 (= (getCurrentListMapNoExtraKeys!5785 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5785 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!568639 () Unit!41838)

(declare-fun choose!1870 (array!81755 array!81757 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48113 V!48113 V!48113 V!48113 (_ BitVec 32) Int) Unit!41838)

(assert (=> d!138163 (= lt!568639 (choose!1870 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!138163 (validMask!0 mask!1466)))

(assert (=> d!138163 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1103 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!568639)))

(declare-fun bs!35544 () Bool)

(assert (= bs!35544 d!138163))

(assert (=> bs!35544 m!1157789))

(assert (=> bs!35544 m!1157787))

(declare-fun m!1157919 () Bool)

(assert (=> bs!35544 m!1157919))

(assert (=> bs!35544 m!1157795))

(assert (=> b!1257122 d!138163))

(declare-fun b!1257283 () Bool)

(declare-fun e!714953 () Bool)

(declare-fun e!714951 () Bool)

(assert (=> b!1257283 (= e!714953 e!714951)))

(assert (=> b!1257283 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39968 _keys!1118)))))

(declare-fun res!838193 () Bool)

(declare-fun lt!568657 () ListLongMap!18835)

(assert (=> b!1257283 (= res!838193 (contains!7586 lt!568657 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1257283 (=> (not res!838193) (not e!714951))))

(declare-fun b!1257284 () Bool)

(declare-fun e!714949 () Bool)

(declare-fun isEmpty!1034 (ListLongMap!18835) Bool)

(assert (=> b!1257284 (= e!714949 (isEmpty!1034 lt!568657))))

(declare-fun d!138165 () Bool)

(declare-fun e!714948 () Bool)

(assert (=> d!138165 e!714948))

(declare-fun res!838194 () Bool)

(assert (=> d!138165 (=> (not res!838194) (not e!714948))))

(assert (=> d!138165 (= res!838194 (not (contains!7586 lt!568657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!714947 () ListLongMap!18835)

(assert (=> d!138165 (= lt!568657 e!714947)))

(declare-fun c!122433 () Bool)

(assert (=> d!138165 (= c!122433 (bvsge #b00000000000000000000000000000000 (size!39968 _keys!1118)))))

(assert (=> d!138165 (validMask!0 mask!1466)))

(assert (=> d!138165 (= (getCurrentListMapNoExtraKeys!5785 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!568657)))

(declare-fun bm!61831 () Bool)

(declare-fun call!61834 () ListLongMap!18835)

(assert (=> bm!61831 (= call!61834 (getCurrentListMapNoExtraKeys!5785 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1257285 () Bool)

(declare-fun e!714950 () ListLongMap!18835)

(assert (=> b!1257285 (= e!714947 e!714950)))

(declare-fun c!122432 () Bool)

(assert (=> b!1257285 (= c!122432 (validKeyInArray!0 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1257286 () Bool)

(declare-fun e!714952 () Bool)

(assert (=> b!1257286 (= e!714952 (validKeyInArray!0 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1257286 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1257287 () Bool)

(assert (=> b!1257287 (= e!714949 (= lt!568657 (getCurrentListMapNoExtraKeys!5785 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1257288 () Bool)

(assert (=> b!1257288 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39968 _keys!1118)))))

(assert (=> b!1257288 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39969 _values!914)))))

(assert (=> b!1257288 (= e!714951 (= (apply!1024 lt!568657 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000)) (get!20200 (select (arr!39432 _values!914) #b00000000000000000000000000000000) (dynLambda!3469 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1257289 () Bool)

(declare-fun lt!568656 () Unit!41838)

(declare-fun lt!568658 () Unit!41838)

(assert (=> b!1257289 (= lt!568656 lt!568658)))

(declare-fun lt!568660 () ListLongMap!18835)

(declare-fun lt!568659 () V!48113)

(declare-fun lt!568654 () (_ BitVec 64))

(declare-fun lt!568655 () (_ BitVec 64))

(assert (=> b!1257289 (not (contains!7586 (+!4167 lt!568660 (tuple2!20951 lt!568655 lt!568659)) lt!568654))))

(declare-fun addStillNotContains!319 (ListLongMap!18835 (_ BitVec 64) V!48113 (_ BitVec 64)) Unit!41838)

(assert (=> b!1257289 (= lt!568658 (addStillNotContains!319 lt!568660 lt!568655 lt!568659 lt!568654))))

(assert (=> b!1257289 (= lt!568654 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1257289 (= lt!568659 (get!20200 (select (arr!39432 _values!914) #b00000000000000000000000000000000) (dynLambda!3469 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1257289 (= lt!568655 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1257289 (= lt!568660 call!61834)))

(assert (=> b!1257289 (= e!714950 (+!4167 call!61834 (tuple2!20951 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000) (get!20200 (select (arr!39432 _values!914) #b00000000000000000000000000000000) (dynLambda!3469 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1257290 () Bool)

(assert (=> b!1257290 (= e!714953 e!714949)))

(declare-fun c!122430 () Bool)

(assert (=> b!1257290 (= c!122430 (bvslt #b00000000000000000000000000000000 (size!39968 _keys!1118)))))

(declare-fun b!1257291 () Bool)

(assert (=> b!1257291 (= e!714950 call!61834)))

(declare-fun b!1257292 () Bool)

(declare-fun res!838191 () Bool)

(assert (=> b!1257292 (=> (not res!838191) (not e!714948))))

(assert (=> b!1257292 (= res!838191 (not (contains!7586 lt!568657 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1257293 () Bool)

(assert (=> b!1257293 (= e!714948 e!714953)))

(declare-fun c!122431 () Bool)

(assert (=> b!1257293 (= c!122431 e!714952)))

(declare-fun res!838192 () Bool)

(assert (=> b!1257293 (=> (not res!838192) (not e!714952))))

(assert (=> b!1257293 (= res!838192 (bvslt #b00000000000000000000000000000000 (size!39968 _keys!1118)))))

(declare-fun b!1257294 () Bool)

(assert (=> b!1257294 (= e!714947 (ListLongMap!18836 Nil!28179))))

(assert (= (and d!138165 c!122433) b!1257294))

(assert (= (and d!138165 (not c!122433)) b!1257285))

(assert (= (and b!1257285 c!122432) b!1257289))

(assert (= (and b!1257285 (not c!122432)) b!1257291))

(assert (= (or b!1257289 b!1257291) bm!61831))

(assert (= (and d!138165 res!838194) b!1257292))

(assert (= (and b!1257292 res!838191) b!1257293))

(assert (= (and b!1257293 res!838192) b!1257286))

(assert (= (and b!1257293 c!122431) b!1257283))

(assert (= (and b!1257293 (not c!122431)) b!1257290))

(assert (= (and b!1257283 res!838193) b!1257288))

(assert (= (and b!1257290 c!122430) b!1257287))

(assert (= (and b!1257290 (not c!122430)) b!1257284))

(declare-fun b_lambda!22699 () Bool)

(assert (=> (not b_lambda!22699) (not b!1257288)))

(assert (=> b!1257288 t!41682))

(declare-fun b_and!45031 () Bool)

(assert (= b_and!45029 (and (=> t!41682 result!23331) b_and!45031)))

(declare-fun b_lambda!22701 () Bool)

(assert (=> (not b_lambda!22701) (not b!1257289)))

(assert (=> b!1257289 t!41682))

(declare-fun b_and!45033 () Bool)

(assert (= b_and!45031 (and (=> t!41682 result!23331) b_and!45033)))

(declare-fun m!1157921 () Bool)

(assert (=> d!138165 m!1157921))

(assert (=> d!138165 m!1157795))

(assert (=> b!1257289 m!1157863))

(declare-fun m!1157923 () Bool)

(assert (=> b!1257289 m!1157923))

(assert (=> b!1257289 m!1157867))

(declare-fun m!1157925 () Bool)

(assert (=> b!1257289 m!1157925))

(assert (=> b!1257289 m!1157863))

(assert (=> b!1257289 m!1157867))

(assert (=> b!1257289 m!1157869))

(assert (=> b!1257289 m!1157839))

(declare-fun m!1157927 () Bool)

(assert (=> b!1257289 m!1157927))

(assert (=> b!1257289 m!1157923))

(declare-fun m!1157929 () Bool)

(assert (=> b!1257289 m!1157929))

(assert (=> b!1257288 m!1157863))

(assert (=> b!1257288 m!1157839))

(declare-fun m!1157931 () Bool)

(assert (=> b!1257288 m!1157931))

(assert (=> b!1257288 m!1157867))

(assert (=> b!1257288 m!1157863))

(assert (=> b!1257288 m!1157867))

(assert (=> b!1257288 m!1157869))

(assert (=> b!1257288 m!1157839))

(declare-fun m!1157933 () Bool)

(assert (=> b!1257292 m!1157933))

(declare-fun m!1157935 () Bool)

(assert (=> b!1257284 m!1157935))

(assert (=> b!1257285 m!1157839))

(assert (=> b!1257285 m!1157839))

(assert (=> b!1257285 m!1157841))

(assert (=> b!1257286 m!1157839))

(assert (=> b!1257286 m!1157839))

(assert (=> b!1257286 m!1157841))

(declare-fun m!1157937 () Bool)

(assert (=> b!1257287 m!1157937))

(assert (=> b!1257283 m!1157839))

(assert (=> b!1257283 m!1157839))

(declare-fun m!1157939 () Bool)

(assert (=> b!1257283 m!1157939))

(assert (=> bm!61831 m!1157937))

(assert (=> b!1257122 d!138165))

(declare-fun b!1257295 () Bool)

(declare-fun e!714960 () Bool)

(declare-fun e!714958 () Bool)

(assert (=> b!1257295 (= e!714960 e!714958)))

(assert (=> b!1257295 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39968 _keys!1118)))))

(declare-fun res!838197 () Bool)

(declare-fun lt!568664 () ListLongMap!18835)

(assert (=> b!1257295 (= res!838197 (contains!7586 lt!568664 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1257295 (=> (not res!838197) (not e!714958))))

(declare-fun b!1257296 () Bool)

(declare-fun e!714956 () Bool)

(assert (=> b!1257296 (= e!714956 (isEmpty!1034 lt!568664))))

(declare-fun d!138167 () Bool)

(declare-fun e!714955 () Bool)

(assert (=> d!138167 e!714955))

(declare-fun res!838198 () Bool)

(assert (=> d!138167 (=> (not res!838198) (not e!714955))))

(assert (=> d!138167 (= res!838198 (not (contains!7586 lt!568664 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!714954 () ListLongMap!18835)

(assert (=> d!138167 (= lt!568664 e!714954)))

(declare-fun c!122437 () Bool)

(assert (=> d!138167 (= c!122437 (bvsge #b00000000000000000000000000000000 (size!39968 _keys!1118)))))

(assert (=> d!138167 (validMask!0 mask!1466)))

(assert (=> d!138167 (= (getCurrentListMapNoExtraKeys!5785 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!568664)))

(declare-fun call!61835 () ListLongMap!18835)

(declare-fun bm!61832 () Bool)

(assert (=> bm!61832 (= call!61835 (getCurrentListMapNoExtraKeys!5785 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1257297 () Bool)

(declare-fun e!714957 () ListLongMap!18835)

(assert (=> b!1257297 (= e!714954 e!714957)))

(declare-fun c!122436 () Bool)

(assert (=> b!1257297 (= c!122436 (validKeyInArray!0 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1257298 () Bool)

(declare-fun e!714959 () Bool)

(assert (=> b!1257298 (= e!714959 (validKeyInArray!0 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1257298 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1257299 () Bool)

(assert (=> b!1257299 (= e!714956 (= lt!568664 (getCurrentListMapNoExtraKeys!5785 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1257300 () Bool)

(assert (=> b!1257300 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39968 _keys!1118)))))

(assert (=> b!1257300 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39969 _values!914)))))

(assert (=> b!1257300 (= e!714958 (= (apply!1024 lt!568664 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000)) (get!20200 (select (arr!39432 _values!914) #b00000000000000000000000000000000) (dynLambda!3469 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1257301 () Bool)

(declare-fun lt!568663 () Unit!41838)

(declare-fun lt!568665 () Unit!41838)

(assert (=> b!1257301 (= lt!568663 lt!568665)))

(declare-fun lt!568662 () (_ BitVec 64))

(declare-fun lt!568661 () (_ BitVec 64))

(declare-fun lt!568666 () V!48113)

(declare-fun lt!568667 () ListLongMap!18835)

(assert (=> b!1257301 (not (contains!7586 (+!4167 lt!568667 (tuple2!20951 lt!568662 lt!568666)) lt!568661))))

(assert (=> b!1257301 (= lt!568665 (addStillNotContains!319 lt!568667 lt!568662 lt!568666 lt!568661))))

(assert (=> b!1257301 (= lt!568661 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1257301 (= lt!568666 (get!20200 (select (arr!39432 _values!914) #b00000000000000000000000000000000) (dynLambda!3469 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1257301 (= lt!568662 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1257301 (= lt!568667 call!61835)))

(assert (=> b!1257301 (= e!714957 (+!4167 call!61835 (tuple2!20951 (select (arr!39431 _keys!1118) #b00000000000000000000000000000000) (get!20200 (select (arr!39432 _values!914) #b00000000000000000000000000000000) (dynLambda!3469 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1257302 () Bool)

(assert (=> b!1257302 (= e!714960 e!714956)))

(declare-fun c!122434 () Bool)

(assert (=> b!1257302 (= c!122434 (bvslt #b00000000000000000000000000000000 (size!39968 _keys!1118)))))

(declare-fun b!1257303 () Bool)

(assert (=> b!1257303 (= e!714957 call!61835)))

(declare-fun b!1257304 () Bool)

(declare-fun res!838195 () Bool)

(assert (=> b!1257304 (=> (not res!838195) (not e!714955))))

(assert (=> b!1257304 (= res!838195 (not (contains!7586 lt!568664 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1257305 () Bool)

(assert (=> b!1257305 (= e!714955 e!714960)))

(declare-fun c!122435 () Bool)

(assert (=> b!1257305 (= c!122435 e!714959)))

(declare-fun res!838196 () Bool)

(assert (=> b!1257305 (=> (not res!838196) (not e!714959))))

(assert (=> b!1257305 (= res!838196 (bvslt #b00000000000000000000000000000000 (size!39968 _keys!1118)))))

(declare-fun b!1257306 () Bool)

(assert (=> b!1257306 (= e!714954 (ListLongMap!18836 Nil!28179))))

(assert (= (and d!138167 c!122437) b!1257306))

(assert (= (and d!138167 (not c!122437)) b!1257297))

(assert (= (and b!1257297 c!122436) b!1257301))

(assert (= (and b!1257297 (not c!122436)) b!1257303))

(assert (= (or b!1257301 b!1257303) bm!61832))

(assert (= (and d!138167 res!838198) b!1257304))

(assert (= (and b!1257304 res!838195) b!1257305))

(assert (= (and b!1257305 res!838196) b!1257298))

(assert (= (and b!1257305 c!122435) b!1257295))

(assert (= (and b!1257305 (not c!122435)) b!1257302))

(assert (= (and b!1257295 res!838197) b!1257300))

(assert (= (and b!1257302 c!122434) b!1257299))

(assert (= (and b!1257302 (not c!122434)) b!1257296))

(declare-fun b_lambda!22703 () Bool)

(assert (=> (not b_lambda!22703) (not b!1257300)))

(assert (=> b!1257300 t!41682))

(declare-fun b_and!45035 () Bool)

(assert (= b_and!45033 (and (=> t!41682 result!23331) b_and!45035)))

(declare-fun b_lambda!22705 () Bool)

(assert (=> (not b_lambda!22705) (not b!1257301)))

(assert (=> b!1257301 t!41682))

(declare-fun b_and!45037 () Bool)

(assert (= b_and!45035 (and (=> t!41682 result!23331) b_and!45037)))

(declare-fun m!1157941 () Bool)

(assert (=> d!138167 m!1157941))

(assert (=> d!138167 m!1157795))

(assert (=> b!1257301 m!1157863))

(declare-fun m!1157943 () Bool)

(assert (=> b!1257301 m!1157943))

(assert (=> b!1257301 m!1157867))

(declare-fun m!1157945 () Bool)

(assert (=> b!1257301 m!1157945))

(assert (=> b!1257301 m!1157863))

(assert (=> b!1257301 m!1157867))

(assert (=> b!1257301 m!1157869))

(assert (=> b!1257301 m!1157839))

(declare-fun m!1157947 () Bool)

(assert (=> b!1257301 m!1157947))

(assert (=> b!1257301 m!1157943))

(declare-fun m!1157949 () Bool)

(assert (=> b!1257301 m!1157949))

(assert (=> b!1257300 m!1157863))

(assert (=> b!1257300 m!1157839))

(declare-fun m!1157951 () Bool)

(assert (=> b!1257300 m!1157951))

(assert (=> b!1257300 m!1157867))

(assert (=> b!1257300 m!1157863))

(assert (=> b!1257300 m!1157867))

(assert (=> b!1257300 m!1157869))

(assert (=> b!1257300 m!1157839))

(declare-fun m!1157953 () Bool)

(assert (=> b!1257304 m!1157953))

(declare-fun m!1157955 () Bool)

(assert (=> b!1257296 m!1157955))

(assert (=> b!1257297 m!1157839))

(assert (=> b!1257297 m!1157839))

(assert (=> b!1257297 m!1157841))

(assert (=> b!1257298 m!1157839))

(assert (=> b!1257298 m!1157839))

(assert (=> b!1257298 m!1157841))

(declare-fun m!1157957 () Bool)

(assert (=> b!1257299 m!1157957))

(assert (=> b!1257295 m!1157839))

(assert (=> b!1257295 m!1157839))

(declare-fun m!1157959 () Bool)

(assert (=> b!1257295 m!1157959))

(assert (=> bm!61832 m!1157957))

(assert (=> b!1257122 d!138167))

(declare-fun condMapEmpty!49885 () Bool)

(declare-fun mapDefault!49885 () ValueCell!15267)

(assert (=> mapNonEmpty!49879 (= condMapEmpty!49885 (= mapRest!49879 ((as const (Array (_ BitVec 32) ValueCell!15267)) mapDefault!49885)))))

(declare-fun e!714965 () Bool)

(declare-fun mapRes!49885 () Bool)

(assert (=> mapNonEmpty!49879 (= tp!94994 (and e!714965 mapRes!49885))))

(declare-fun b!1257313 () Bool)

(declare-fun e!714966 () Bool)

(assert (=> b!1257313 (= e!714966 tp_is_empty!32061)))

(declare-fun mapIsEmpty!49885 () Bool)

(assert (=> mapIsEmpty!49885 mapRes!49885))

(declare-fun b!1257314 () Bool)

(assert (=> b!1257314 (= e!714965 tp_is_empty!32061)))

(declare-fun mapNonEmpty!49885 () Bool)

(declare-fun tp!95004 () Bool)

(assert (=> mapNonEmpty!49885 (= mapRes!49885 (and tp!95004 e!714966))))

(declare-fun mapValue!49885 () ValueCell!15267)

(declare-fun mapRest!49885 () (Array (_ BitVec 32) ValueCell!15267))

(declare-fun mapKey!49885 () (_ BitVec 32))

(assert (=> mapNonEmpty!49885 (= mapRest!49879 (store mapRest!49885 mapKey!49885 mapValue!49885))))

(assert (= (and mapNonEmpty!49879 condMapEmpty!49885) mapIsEmpty!49885))

(assert (= (and mapNonEmpty!49879 (not condMapEmpty!49885)) mapNonEmpty!49885))

(assert (= (and mapNonEmpty!49885 ((_ is ValueCellFull!15267) mapValue!49885)) b!1257313))

(assert (= (and mapNonEmpty!49879 ((_ is ValueCellFull!15267) mapDefault!49885)) b!1257314))

(declare-fun m!1157961 () Bool)

(assert (=> mapNonEmpty!49885 m!1157961))

(declare-fun b_lambda!22707 () Bool)

(assert (= b_lambda!22699 (or (and start!105558 b_free!27159) b_lambda!22707)))

(declare-fun b_lambda!22709 () Bool)

(assert (= b_lambda!22697 (or (and start!105558 b_free!27159) b_lambda!22709)))

(declare-fun b_lambda!22711 () Bool)

(assert (= b_lambda!22701 (or (and start!105558 b_free!27159) b_lambda!22711)))

(declare-fun b_lambda!22713 () Bool)

(assert (= b_lambda!22705 (or (and start!105558 b_free!27159) b_lambda!22713)))

(declare-fun b_lambda!22715 () Bool)

(assert (= b_lambda!22703 (or (and start!105558 b_free!27159) b_lambda!22715)))

(check-sat (not d!138159) (not b!1257228) (not b_lambda!22713) b_and!45037 (not b!1257292) (not b!1257234) (not d!138165) (not d!138157) (not b!1257224) (not bm!61804) (not b!1257237) (not bm!61823) (not b!1257254) (not b!1257299) (not b!1257289) (not b!1257167) (not bm!61822) (not b_next!27159) (not b!1257283) (not bm!61831) (not b!1257257) (not b_lambda!22709) (not b!1257176) (not b!1257286) (not b!1257169) (not b!1257238) (not bm!61828) (not b!1257285) (not b!1257284) (not bm!61832) (not bm!61824) (not b!1257287) tp_is_empty!32061 (not b!1257236) (not b!1257296) (not b_lambda!22715) (not d!138163) (not b!1257241) (not bm!61820) (not b!1257300) (not mapNonEmpty!49885) (not b!1257297) (not b!1257178) (not b!1257304) (not b!1257301) (not b!1257288) (not d!138155) (not d!138167) (not b_lambda!22711) (not b_lambda!22707) (not b!1257295) (not b!1257298) (not d!138153) (not b!1257235) (not b!1257256))
(check-sat b_and!45037 (not b_next!27159))
