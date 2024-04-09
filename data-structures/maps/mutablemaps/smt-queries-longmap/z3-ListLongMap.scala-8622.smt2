; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105036 () Bool)

(assert start!105036)

(declare-fun b_free!26769 () Bool)

(declare-fun b_next!26769 () Bool)

(assert (=> start!105036 (= b_free!26769 (not b_next!26769))))

(declare-fun tp!93804 () Bool)

(declare-fun b_and!44565 () Bool)

(assert (=> start!105036 (= tp!93804 b_and!44565)))

(declare-fun mapNonEmpty!49273 () Bool)

(declare-fun mapRes!49273 () Bool)

(declare-fun tp!93803 () Bool)

(declare-fun e!710680 () Bool)

(assert (=> mapNonEmpty!49273 (= mapRes!49273 (and tp!93803 e!710680))))

(declare-datatypes ((V!47593 0))(
  ( (V!47594 (val!15898 Int)) )
))
(declare-datatypes ((ValueCell!15072 0))(
  ( (ValueCellFull!15072 (v!18595 V!47593)) (EmptyCell!15072) )
))
(declare-fun mapValue!49273 () ValueCell!15072)

(declare-datatypes ((array!80985 0))(
  ( (array!80986 (arr!39053 (Array (_ BitVec 32) ValueCell!15072)) (size!39590 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80985)

(declare-fun mapKey!49273 () (_ BitVec 32))

(declare-fun mapRest!49273 () (Array (_ BitVec 32) ValueCell!15072))

(assert (=> mapNonEmpty!49273 (= (arr!39053 _values!914) (store mapRest!49273 mapKey!49273 mapValue!49273))))

(declare-fun b!1251433 () Bool)

(declare-fun e!710683 () Bool)

(declare-fun e!710681 () Bool)

(assert (=> b!1251433 (= e!710683 e!710681)))

(declare-fun res!834774 () Bool)

(assert (=> b!1251433 (=> res!834774 e!710681)))

(declare-datatypes ((tuple2!20646 0))(
  ( (tuple2!20647 (_1!10333 (_ BitVec 64)) (_2!10333 V!47593)) )
))
(declare-datatypes ((List!27897 0))(
  ( (Nil!27894) (Cons!27893 (h!29102 tuple2!20646) (t!41379 List!27897)) )
))
(declare-datatypes ((ListLongMap!18531 0))(
  ( (ListLongMap!18532 (toList!9281 List!27897)) )
))
(declare-fun lt!564809 () ListLongMap!18531)

(declare-fun contains!7530 (ListLongMap!18531 (_ BitVec 64)) Bool)

(assert (=> b!1251433 (= res!834774 (contains!7530 lt!564809 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47593)

(declare-datatypes ((array!80987 0))(
  ( (array!80988 (arr!39054 (Array (_ BitVec 32) (_ BitVec 64))) (size!39591 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80987)

(declare-fun minValueBefore!43 () V!47593)

(declare-fun getCurrentListMap!4495 (array!80987 array!80985 (_ BitVec 32) (_ BitVec 32) V!47593 V!47593 (_ BitVec 32) Int) ListLongMap!18531)

(assert (=> b!1251433 (= lt!564809 (getCurrentListMap!4495 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251434 () Bool)

(declare-fun e!710678 () Bool)

(declare-fun tp_is_empty!31671 () Bool)

(assert (=> b!1251434 (= e!710678 tp_is_empty!31671)))

(declare-fun b!1251435 () Bool)

(assert (=> b!1251435 (= e!710680 tp_is_empty!31671)))

(declare-fun b!1251436 () Bool)

(declare-fun e!710679 () Bool)

(assert (=> b!1251436 (= e!710679 (and e!710678 mapRes!49273))))

(declare-fun condMapEmpty!49273 () Bool)

(declare-fun mapDefault!49273 () ValueCell!15072)

(assert (=> b!1251436 (= condMapEmpty!49273 (= (arr!39053 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15072)) mapDefault!49273)))))

(declare-fun b!1251437 () Bool)

(declare-fun res!834777 () Bool)

(declare-fun e!710682 () Bool)

(assert (=> b!1251437 (=> (not res!834777) (not e!710682))))

(declare-datatypes ((List!27898 0))(
  ( (Nil!27895) (Cons!27894 (h!29103 (_ BitVec 64)) (t!41380 List!27898)) )
))
(declare-fun arrayNoDuplicates!0 (array!80987 (_ BitVec 32) List!27898) Bool)

(assert (=> b!1251437 (= res!834777 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27895))))

(declare-fun b!1251438 () Bool)

(assert (=> b!1251438 (= e!710681 (bvsle #b00000000000000000000000000000000 (size!39591 _keys!1118)))))

(declare-fun -!2038 (ListLongMap!18531 (_ BitVec 64)) ListLongMap!18531)

(assert (=> b!1251438 (= (-!2038 lt!564809 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564809)))

(declare-datatypes ((Unit!41537 0))(
  ( (Unit!41538) )
))
(declare-fun lt!564811 () Unit!41537)

(declare-fun removeNotPresentStillSame!105 (ListLongMap!18531 (_ BitVec 64)) Unit!41537)

(assert (=> b!1251438 (= lt!564811 (removeNotPresentStillSame!105 lt!564809 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!834778 () Bool)

(assert (=> start!105036 (=> (not res!834778) (not e!710682))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105036 (= res!834778 (validMask!0 mask!1466))))

(assert (=> start!105036 e!710682))

(assert (=> start!105036 true))

(assert (=> start!105036 tp!93804))

(assert (=> start!105036 tp_is_empty!31671))

(declare-fun array_inv!29719 (array!80987) Bool)

(assert (=> start!105036 (array_inv!29719 _keys!1118)))

(declare-fun array_inv!29720 (array!80985) Bool)

(assert (=> start!105036 (and (array_inv!29720 _values!914) e!710679)))

(declare-fun mapIsEmpty!49273 () Bool)

(assert (=> mapIsEmpty!49273 mapRes!49273))

(declare-fun b!1251439 () Bool)

(declare-fun res!834775 () Bool)

(assert (=> b!1251439 (=> (not res!834775) (not e!710682))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80987 (_ BitVec 32)) Bool)

(assert (=> b!1251439 (= res!834775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1251440 () Bool)

(assert (=> b!1251440 (= e!710682 (not e!710683))))

(declare-fun res!834779 () Bool)

(assert (=> b!1251440 (=> res!834779 e!710683)))

(assert (=> b!1251440 (= res!834779 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564808 () ListLongMap!18531)

(declare-fun lt!564810 () ListLongMap!18531)

(assert (=> b!1251440 (= lt!564808 lt!564810)))

(declare-fun minValueAfter!43 () V!47593)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lt!564812 () Unit!41537)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!972 (array!80987 array!80985 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47593 V!47593 V!47593 V!47593 (_ BitVec 32) Int) Unit!41537)

(assert (=> b!1251440 (= lt!564812 (lemmaNoChangeToArrayThenSameMapNoExtras!972 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5654 (array!80987 array!80985 (_ BitVec 32) (_ BitVec 32) V!47593 V!47593 (_ BitVec 32) Int) ListLongMap!18531)

(assert (=> b!1251440 (= lt!564810 (getCurrentListMapNoExtraKeys!5654 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251440 (= lt!564808 (getCurrentListMapNoExtraKeys!5654 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251441 () Bool)

(declare-fun res!834776 () Bool)

(assert (=> b!1251441 (=> (not res!834776) (not e!710682))))

(assert (=> b!1251441 (= res!834776 (and (= (size!39590 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39591 _keys!1118) (size!39590 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!105036 res!834778) b!1251441))

(assert (= (and b!1251441 res!834776) b!1251439))

(assert (= (and b!1251439 res!834775) b!1251437))

(assert (= (and b!1251437 res!834777) b!1251440))

(assert (= (and b!1251440 (not res!834779)) b!1251433))

(assert (= (and b!1251433 (not res!834774)) b!1251438))

(assert (= (and b!1251436 condMapEmpty!49273) mapIsEmpty!49273))

(assert (= (and b!1251436 (not condMapEmpty!49273)) mapNonEmpty!49273))

(get-info :version)

(assert (= (and mapNonEmpty!49273 ((_ is ValueCellFull!15072) mapValue!49273)) b!1251435))

(assert (= (and b!1251436 ((_ is ValueCellFull!15072) mapDefault!49273)) b!1251434))

(assert (= start!105036 b!1251436))

(declare-fun m!1152241 () Bool)

(assert (=> b!1251433 m!1152241))

(declare-fun m!1152243 () Bool)

(assert (=> b!1251433 m!1152243))

(declare-fun m!1152245 () Bool)

(assert (=> mapNonEmpty!49273 m!1152245))

(declare-fun m!1152247 () Bool)

(assert (=> b!1251438 m!1152247))

(declare-fun m!1152249 () Bool)

(assert (=> b!1251438 m!1152249))

(declare-fun m!1152251 () Bool)

(assert (=> start!105036 m!1152251))

(declare-fun m!1152253 () Bool)

(assert (=> start!105036 m!1152253))

(declare-fun m!1152255 () Bool)

(assert (=> start!105036 m!1152255))

(declare-fun m!1152257 () Bool)

(assert (=> b!1251440 m!1152257))

(declare-fun m!1152259 () Bool)

(assert (=> b!1251440 m!1152259))

(declare-fun m!1152261 () Bool)

(assert (=> b!1251440 m!1152261))

(declare-fun m!1152263 () Bool)

(assert (=> b!1251437 m!1152263))

(declare-fun m!1152265 () Bool)

(assert (=> b!1251439 m!1152265))

(check-sat (not b!1251437) tp_is_empty!31671 (not b!1251440) (not start!105036) (not b_next!26769) (not b!1251433) (not b!1251438) b_and!44565 (not mapNonEmpty!49273) (not b!1251439))
(check-sat b_and!44565 (not b_next!26769))
(get-model)

(declare-fun d!137861 () Bool)

(assert (=> d!137861 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!105036 d!137861))

(declare-fun d!137863 () Bool)

(assert (=> d!137863 (= (array_inv!29719 _keys!1118) (bvsge (size!39591 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!105036 d!137863))

(declare-fun d!137865 () Bool)

(assert (=> d!137865 (= (array_inv!29720 _values!914) (bvsge (size!39590 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!105036 d!137865))

(declare-fun d!137867 () Bool)

(assert (=> d!137867 (= (getCurrentListMapNoExtraKeys!5654 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5654 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!564830 () Unit!41537)

(declare-fun choose!1858 (array!80987 array!80985 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47593 V!47593 V!47593 V!47593 (_ BitVec 32) Int) Unit!41537)

(assert (=> d!137867 (= lt!564830 (choose!1858 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!137867 (validMask!0 mask!1466)))

(assert (=> d!137867 (= (lemmaNoChangeToArrayThenSameMapNoExtras!972 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!564830)))

(declare-fun bs!35330 () Bool)

(assert (= bs!35330 d!137867))

(assert (=> bs!35330 m!1152261))

(assert (=> bs!35330 m!1152259))

(declare-fun m!1152293 () Bool)

(assert (=> bs!35330 m!1152293))

(assert (=> bs!35330 m!1152251))

(assert (=> b!1251440 d!137867))

(declare-fun bm!61615 () Bool)

(declare-fun call!61618 () ListLongMap!18531)

(assert (=> bm!61615 (= call!61618 (getCurrentListMapNoExtraKeys!5654 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1251493 () Bool)

(declare-fun res!834809 () Bool)

(declare-fun e!710720 () Bool)

(assert (=> b!1251493 (=> (not res!834809) (not e!710720))))

(declare-fun lt!564849 () ListLongMap!18531)

(assert (=> b!1251493 (= res!834809 (not (contains!7530 lt!564849 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1251494 () Bool)

(declare-fun e!710724 () Bool)

(assert (=> b!1251494 (= e!710720 e!710724)))

(declare-fun c!122143 () Bool)

(declare-fun e!710721 () Bool)

(assert (=> b!1251494 (= c!122143 e!710721)))

(declare-fun res!834807 () Bool)

(assert (=> b!1251494 (=> (not res!834807) (not e!710721))))

(assert (=> b!1251494 (= res!834807 (bvslt #b00000000000000000000000000000000 (size!39591 _keys!1118)))))

(declare-fun b!1251495 () Bool)

(declare-fun lt!564846 () Unit!41537)

(declare-fun lt!564850 () Unit!41537)

(assert (=> b!1251495 (= lt!564846 lt!564850)))

(declare-fun lt!564848 () ListLongMap!18531)

(declare-fun lt!564851 () V!47593)

(declare-fun lt!564847 () (_ BitVec 64))

(declare-fun lt!564845 () (_ BitVec 64))

(declare-fun +!4126 (ListLongMap!18531 tuple2!20646) ListLongMap!18531)

(assert (=> b!1251495 (not (contains!7530 (+!4126 lt!564848 (tuple2!20647 lt!564847 lt!564851)) lt!564845))))

(declare-fun addStillNotContains!312 (ListLongMap!18531 (_ BitVec 64) V!47593 (_ BitVec 64)) Unit!41537)

(assert (=> b!1251495 (= lt!564850 (addStillNotContains!312 lt!564848 lt!564847 lt!564851 lt!564845))))

(assert (=> b!1251495 (= lt!564845 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!20063 (ValueCell!15072 V!47593) V!47593)

(declare-fun dynLambda!3462 (Int (_ BitVec 64)) V!47593)

(assert (=> b!1251495 (= lt!564851 (get!20063 (select (arr!39053 _values!914) #b00000000000000000000000000000000) (dynLambda!3462 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1251495 (= lt!564847 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1251495 (= lt!564848 call!61618)))

(declare-fun e!710722 () ListLongMap!18531)

(assert (=> b!1251495 (= e!710722 (+!4126 call!61618 (tuple2!20647 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000) (get!20063 (select (arr!39053 _values!914) #b00000000000000000000000000000000) (dynLambda!3462 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1251496 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1251496 (= e!710721 (validKeyInArray!0 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1251496 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1251497 () Bool)

(declare-fun e!710723 () Bool)

(assert (=> b!1251497 (= e!710724 e!710723)))

(assert (=> b!1251497 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39591 _keys!1118)))))

(declare-fun res!834808 () Bool)

(assert (=> b!1251497 (= res!834808 (contains!7530 lt!564849 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1251497 (=> (not res!834808) (not e!710723))))

(declare-fun b!1251498 () Bool)

(declare-fun e!710725 () Bool)

(assert (=> b!1251498 (= e!710725 (= lt!564849 (getCurrentListMapNoExtraKeys!5654 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1251499 () Bool)

(assert (=> b!1251499 (= e!710722 call!61618)))

(declare-fun b!1251500 () Bool)

(declare-fun e!710726 () ListLongMap!18531)

(assert (=> b!1251500 (= e!710726 e!710722)))

(declare-fun c!122144 () Bool)

(assert (=> b!1251500 (= c!122144 (validKeyInArray!0 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!137869 () Bool)

(assert (=> d!137869 e!710720))

(declare-fun res!834806 () Bool)

(assert (=> d!137869 (=> (not res!834806) (not e!710720))))

(assert (=> d!137869 (= res!834806 (not (contains!7530 lt!564849 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!137869 (= lt!564849 e!710726)))

(declare-fun c!122141 () Bool)

(assert (=> d!137869 (= c!122141 (bvsge #b00000000000000000000000000000000 (size!39591 _keys!1118)))))

(assert (=> d!137869 (validMask!0 mask!1466)))

(assert (=> d!137869 (= (getCurrentListMapNoExtraKeys!5654 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!564849)))

(declare-fun b!1251501 () Bool)

(assert (=> b!1251501 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39591 _keys!1118)))))

(assert (=> b!1251501 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39590 _values!914)))))

(declare-fun apply!1017 (ListLongMap!18531 (_ BitVec 64)) V!47593)

(assert (=> b!1251501 (= e!710723 (= (apply!1017 lt!564849 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000)) (get!20063 (select (arr!39053 _values!914) #b00000000000000000000000000000000) (dynLambda!3462 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1251502 () Bool)

(declare-fun isEmpty!1027 (ListLongMap!18531) Bool)

(assert (=> b!1251502 (= e!710725 (isEmpty!1027 lt!564849))))

(declare-fun b!1251503 () Bool)

(assert (=> b!1251503 (= e!710726 (ListLongMap!18532 Nil!27894))))

(declare-fun b!1251504 () Bool)

(assert (=> b!1251504 (= e!710724 e!710725)))

(declare-fun c!122142 () Bool)

(assert (=> b!1251504 (= c!122142 (bvslt #b00000000000000000000000000000000 (size!39591 _keys!1118)))))

(assert (= (and d!137869 c!122141) b!1251503))

(assert (= (and d!137869 (not c!122141)) b!1251500))

(assert (= (and b!1251500 c!122144) b!1251495))

(assert (= (and b!1251500 (not c!122144)) b!1251499))

(assert (= (or b!1251495 b!1251499) bm!61615))

(assert (= (and d!137869 res!834806) b!1251493))

(assert (= (and b!1251493 res!834809) b!1251494))

(assert (= (and b!1251494 res!834807) b!1251496))

(assert (= (and b!1251494 c!122143) b!1251497))

(assert (= (and b!1251494 (not c!122143)) b!1251504))

(assert (= (and b!1251497 res!834808) b!1251501))

(assert (= (and b!1251504 c!122142) b!1251498))

(assert (= (and b!1251504 (not c!122142)) b!1251502))

(declare-fun b_lambda!22557 () Bool)

(assert (=> (not b_lambda!22557) (not b!1251495)))

(declare-fun t!41383 () Bool)

(declare-fun tb!11299 () Bool)

(assert (=> (and start!105036 (= defaultEntry!922 defaultEntry!922) t!41383) tb!11299))

(declare-fun result!23289 () Bool)

(assert (=> tb!11299 (= result!23289 tp_is_empty!31671)))

(assert (=> b!1251495 t!41383))

(declare-fun b_and!44569 () Bool)

(assert (= b_and!44565 (and (=> t!41383 result!23289) b_and!44569)))

(declare-fun b_lambda!22559 () Bool)

(assert (=> (not b_lambda!22559) (not b!1251501)))

(assert (=> b!1251501 t!41383))

(declare-fun b_and!44571 () Bool)

(assert (= b_and!44569 (and (=> t!41383 result!23289) b_and!44571)))

(declare-fun m!1152295 () Bool)

(assert (=> b!1251495 m!1152295))

(declare-fun m!1152297 () Bool)

(assert (=> b!1251495 m!1152297))

(declare-fun m!1152299 () Bool)

(assert (=> b!1251495 m!1152299))

(declare-fun m!1152301 () Bool)

(assert (=> b!1251495 m!1152301))

(declare-fun m!1152303 () Bool)

(assert (=> b!1251495 m!1152303))

(assert (=> b!1251495 m!1152297))

(declare-fun m!1152305 () Bool)

(assert (=> b!1251495 m!1152305))

(declare-fun m!1152307 () Bool)

(assert (=> b!1251495 m!1152307))

(declare-fun m!1152309 () Bool)

(assert (=> b!1251495 m!1152309))

(assert (=> b!1251495 m!1152303))

(assert (=> b!1251495 m!1152299))

(declare-fun m!1152311 () Bool)

(assert (=> b!1251498 m!1152311))

(assert (=> b!1251496 m!1152309))

(assert (=> b!1251496 m!1152309))

(declare-fun m!1152313 () Bool)

(assert (=> b!1251496 m!1152313))

(assert (=> b!1251500 m!1152309))

(assert (=> b!1251500 m!1152309))

(assert (=> b!1251500 m!1152313))

(declare-fun m!1152315 () Bool)

(assert (=> d!137869 m!1152315))

(assert (=> d!137869 m!1152251))

(assert (=> b!1251497 m!1152309))

(assert (=> b!1251497 m!1152309))

(declare-fun m!1152317 () Bool)

(assert (=> b!1251497 m!1152317))

(assert (=> bm!61615 m!1152311))

(declare-fun m!1152319 () Bool)

(assert (=> b!1251502 m!1152319))

(assert (=> b!1251501 m!1152297))

(assert (=> b!1251501 m!1152303))

(assert (=> b!1251501 m!1152297))

(assert (=> b!1251501 m!1152305))

(assert (=> b!1251501 m!1152309))

(assert (=> b!1251501 m!1152303))

(assert (=> b!1251501 m!1152309))

(declare-fun m!1152321 () Bool)

(assert (=> b!1251501 m!1152321))

(declare-fun m!1152323 () Bool)

(assert (=> b!1251493 m!1152323))

(assert (=> b!1251440 d!137869))

(declare-fun bm!61616 () Bool)

(declare-fun call!61619 () ListLongMap!18531)

(assert (=> bm!61616 (= call!61619 (getCurrentListMapNoExtraKeys!5654 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1251507 () Bool)

(declare-fun res!834813 () Bool)

(declare-fun e!710727 () Bool)

(assert (=> b!1251507 (=> (not res!834813) (not e!710727))))

(declare-fun lt!564856 () ListLongMap!18531)

(assert (=> b!1251507 (= res!834813 (not (contains!7530 lt!564856 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1251508 () Bool)

(declare-fun e!710731 () Bool)

(assert (=> b!1251508 (= e!710727 e!710731)))

(declare-fun c!122147 () Bool)

(declare-fun e!710728 () Bool)

(assert (=> b!1251508 (= c!122147 e!710728)))

(declare-fun res!834811 () Bool)

(assert (=> b!1251508 (=> (not res!834811) (not e!710728))))

(assert (=> b!1251508 (= res!834811 (bvslt #b00000000000000000000000000000000 (size!39591 _keys!1118)))))

(declare-fun b!1251509 () Bool)

(declare-fun lt!564853 () Unit!41537)

(declare-fun lt!564857 () Unit!41537)

(assert (=> b!1251509 (= lt!564853 lt!564857)))

(declare-fun lt!564855 () ListLongMap!18531)

(declare-fun lt!564854 () (_ BitVec 64))

(declare-fun lt!564852 () (_ BitVec 64))

(declare-fun lt!564858 () V!47593)

(assert (=> b!1251509 (not (contains!7530 (+!4126 lt!564855 (tuple2!20647 lt!564854 lt!564858)) lt!564852))))

(assert (=> b!1251509 (= lt!564857 (addStillNotContains!312 lt!564855 lt!564854 lt!564858 lt!564852))))

(assert (=> b!1251509 (= lt!564852 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1251509 (= lt!564858 (get!20063 (select (arr!39053 _values!914) #b00000000000000000000000000000000) (dynLambda!3462 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1251509 (= lt!564854 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1251509 (= lt!564855 call!61619)))

(declare-fun e!710729 () ListLongMap!18531)

(assert (=> b!1251509 (= e!710729 (+!4126 call!61619 (tuple2!20647 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000) (get!20063 (select (arr!39053 _values!914) #b00000000000000000000000000000000) (dynLambda!3462 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1251510 () Bool)

(assert (=> b!1251510 (= e!710728 (validKeyInArray!0 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1251510 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1251511 () Bool)

(declare-fun e!710730 () Bool)

(assert (=> b!1251511 (= e!710731 e!710730)))

(assert (=> b!1251511 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39591 _keys!1118)))))

(declare-fun res!834812 () Bool)

(assert (=> b!1251511 (= res!834812 (contains!7530 lt!564856 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1251511 (=> (not res!834812) (not e!710730))))

(declare-fun e!710732 () Bool)

(declare-fun b!1251512 () Bool)

(assert (=> b!1251512 (= e!710732 (= lt!564856 (getCurrentListMapNoExtraKeys!5654 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1251513 () Bool)

(assert (=> b!1251513 (= e!710729 call!61619)))

(declare-fun b!1251514 () Bool)

(declare-fun e!710733 () ListLongMap!18531)

(assert (=> b!1251514 (= e!710733 e!710729)))

(declare-fun c!122148 () Bool)

(assert (=> b!1251514 (= c!122148 (validKeyInArray!0 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!137871 () Bool)

(assert (=> d!137871 e!710727))

(declare-fun res!834810 () Bool)

(assert (=> d!137871 (=> (not res!834810) (not e!710727))))

(assert (=> d!137871 (= res!834810 (not (contains!7530 lt!564856 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!137871 (= lt!564856 e!710733)))

(declare-fun c!122145 () Bool)

(assert (=> d!137871 (= c!122145 (bvsge #b00000000000000000000000000000000 (size!39591 _keys!1118)))))

(assert (=> d!137871 (validMask!0 mask!1466)))

(assert (=> d!137871 (= (getCurrentListMapNoExtraKeys!5654 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!564856)))

(declare-fun b!1251515 () Bool)

(assert (=> b!1251515 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39591 _keys!1118)))))

(assert (=> b!1251515 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39590 _values!914)))))

(assert (=> b!1251515 (= e!710730 (= (apply!1017 lt!564856 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000)) (get!20063 (select (arr!39053 _values!914) #b00000000000000000000000000000000) (dynLambda!3462 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1251516 () Bool)

(assert (=> b!1251516 (= e!710732 (isEmpty!1027 lt!564856))))

(declare-fun b!1251517 () Bool)

(assert (=> b!1251517 (= e!710733 (ListLongMap!18532 Nil!27894))))

(declare-fun b!1251518 () Bool)

(assert (=> b!1251518 (= e!710731 e!710732)))

(declare-fun c!122146 () Bool)

(assert (=> b!1251518 (= c!122146 (bvslt #b00000000000000000000000000000000 (size!39591 _keys!1118)))))

(assert (= (and d!137871 c!122145) b!1251517))

(assert (= (and d!137871 (not c!122145)) b!1251514))

(assert (= (and b!1251514 c!122148) b!1251509))

(assert (= (and b!1251514 (not c!122148)) b!1251513))

(assert (= (or b!1251509 b!1251513) bm!61616))

(assert (= (and d!137871 res!834810) b!1251507))

(assert (= (and b!1251507 res!834813) b!1251508))

(assert (= (and b!1251508 res!834811) b!1251510))

(assert (= (and b!1251508 c!122147) b!1251511))

(assert (= (and b!1251508 (not c!122147)) b!1251518))

(assert (= (and b!1251511 res!834812) b!1251515))

(assert (= (and b!1251518 c!122146) b!1251512))

(assert (= (and b!1251518 (not c!122146)) b!1251516))

(declare-fun b_lambda!22561 () Bool)

(assert (=> (not b_lambda!22561) (not b!1251509)))

(assert (=> b!1251509 t!41383))

(declare-fun b_and!44573 () Bool)

(assert (= b_and!44571 (and (=> t!41383 result!23289) b_and!44573)))

(declare-fun b_lambda!22563 () Bool)

(assert (=> (not b_lambda!22563) (not b!1251515)))

(assert (=> b!1251515 t!41383))

(declare-fun b_and!44575 () Bool)

(assert (= b_and!44573 (and (=> t!41383 result!23289) b_and!44575)))

(declare-fun m!1152325 () Bool)

(assert (=> b!1251509 m!1152325))

(assert (=> b!1251509 m!1152297))

(declare-fun m!1152327 () Bool)

(assert (=> b!1251509 m!1152327))

(declare-fun m!1152329 () Bool)

(assert (=> b!1251509 m!1152329))

(assert (=> b!1251509 m!1152303))

(assert (=> b!1251509 m!1152297))

(assert (=> b!1251509 m!1152305))

(declare-fun m!1152331 () Bool)

(assert (=> b!1251509 m!1152331))

(assert (=> b!1251509 m!1152309))

(assert (=> b!1251509 m!1152303))

(assert (=> b!1251509 m!1152327))

(declare-fun m!1152333 () Bool)

(assert (=> b!1251512 m!1152333))

(assert (=> b!1251510 m!1152309))

(assert (=> b!1251510 m!1152309))

(assert (=> b!1251510 m!1152313))

(assert (=> b!1251514 m!1152309))

(assert (=> b!1251514 m!1152309))

(assert (=> b!1251514 m!1152313))

(declare-fun m!1152335 () Bool)

(assert (=> d!137871 m!1152335))

(assert (=> d!137871 m!1152251))

(assert (=> b!1251511 m!1152309))

(assert (=> b!1251511 m!1152309))

(declare-fun m!1152337 () Bool)

(assert (=> b!1251511 m!1152337))

(assert (=> bm!61616 m!1152333))

(declare-fun m!1152339 () Bool)

(assert (=> b!1251516 m!1152339))

(assert (=> b!1251515 m!1152297))

(assert (=> b!1251515 m!1152303))

(assert (=> b!1251515 m!1152297))

(assert (=> b!1251515 m!1152305))

(assert (=> b!1251515 m!1152309))

(assert (=> b!1251515 m!1152303))

(assert (=> b!1251515 m!1152309))

(declare-fun m!1152341 () Bool)

(assert (=> b!1251515 m!1152341))

(declare-fun m!1152343 () Bool)

(assert (=> b!1251507 m!1152343))

(assert (=> b!1251440 d!137871))

(declare-fun b!1251529 () Bool)

(declare-fun e!710743 () Bool)

(declare-fun call!61622 () Bool)

(assert (=> b!1251529 (= e!710743 call!61622)))

(declare-fun b!1251530 () Bool)

(assert (=> b!1251530 (= e!710743 call!61622)))

(declare-fun b!1251531 () Bool)

(declare-fun e!710745 () Bool)

(declare-fun contains!7532 (List!27898 (_ BitVec 64)) Bool)

(assert (=> b!1251531 (= e!710745 (contains!7532 Nil!27895 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!137873 () Bool)

(declare-fun res!834820 () Bool)

(declare-fun e!710742 () Bool)

(assert (=> d!137873 (=> res!834820 e!710742)))

(assert (=> d!137873 (= res!834820 (bvsge #b00000000000000000000000000000000 (size!39591 _keys!1118)))))

(assert (=> d!137873 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27895) e!710742)))

(declare-fun b!1251532 () Bool)

(declare-fun e!710744 () Bool)

(assert (=> b!1251532 (= e!710742 e!710744)))

(declare-fun res!834821 () Bool)

(assert (=> b!1251532 (=> (not res!834821) (not e!710744))))

(assert (=> b!1251532 (= res!834821 (not e!710745))))

(declare-fun res!834822 () Bool)

(assert (=> b!1251532 (=> (not res!834822) (not e!710745))))

(assert (=> b!1251532 (= res!834822 (validKeyInArray!0 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!61619 () Bool)

(declare-fun c!122151 () Bool)

(assert (=> bm!61619 (= call!61622 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122151 (Cons!27894 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000) Nil!27895) Nil!27895)))))

(declare-fun b!1251533 () Bool)

(assert (=> b!1251533 (= e!710744 e!710743)))

(assert (=> b!1251533 (= c!122151 (validKeyInArray!0 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!137873 (not res!834820)) b!1251532))

(assert (= (and b!1251532 res!834822) b!1251531))

(assert (= (and b!1251532 res!834821) b!1251533))

(assert (= (and b!1251533 c!122151) b!1251529))

(assert (= (and b!1251533 (not c!122151)) b!1251530))

(assert (= (or b!1251529 b!1251530) bm!61619))

(assert (=> b!1251531 m!1152309))

(assert (=> b!1251531 m!1152309))

(declare-fun m!1152345 () Bool)

(assert (=> b!1251531 m!1152345))

(assert (=> b!1251532 m!1152309))

(assert (=> b!1251532 m!1152309))

(assert (=> b!1251532 m!1152313))

(assert (=> bm!61619 m!1152309))

(declare-fun m!1152347 () Bool)

(assert (=> bm!61619 m!1152347))

(assert (=> b!1251533 m!1152309))

(assert (=> b!1251533 m!1152309))

(assert (=> b!1251533 m!1152313))

(assert (=> b!1251437 d!137873))

(declare-fun d!137875 () Bool)

(declare-fun lt!564861 () ListLongMap!18531)

(assert (=> d!137875 (not (contains!7530 lt!564861 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!138 (List!27897 (_ BitVec 64)) List!27897)

(assert (=> d!137875 (= lt!564861 (ListLongMap!18532 (removeStrictlySorted!138 (toList!9281 lt!564809) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!137875 (= (-!2038 lt!564809 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564861)))

(declare-fun bs!35331 () Bool)

(assert (= bs!35331 d!137875))

(declare-fun m!1152349 () Bool)

(assert (=> bs!35331 m!1152349))

(declare-fun m!1152351 () Bool)

(assert (=> bs!35331 m!1152351))

(assert (=> b!1251438 d!137875))

(declare-fun d!137877 () Bool)

(assert (=> d!137877 (= (-!2038 lt!564809 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564809)))

(declare-fun lt!564864 () Unit!41537)

(declare-fun choose!1859 (ListLongMap!18531 (_ BitVec 64)) Unit!41537)

(assert (=> d!137877 (= lt!564864 (choose!1859 lt!564809 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!137877 (not (contains!7530 lt!564809 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!137877 (= (removeNotPresentStillSame!105 lt!564809 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564864)))

(declare-fun bs!35332 () Bool)

(assert (= bs!35332 d!137877))

(assert (=> bs!35332 m!1152247))

(declare-fun m!1152353 () Bool)

(assert (=> bs!35332 m!1152353))

(assert (=> bs!35332 m!1152241))

(assert (=> b!1251438 d!137877))

(declare-fun d!137879 () Bool)

(declare-fun e!710750 () Bool)

(assert (=> d!137879 e!710750))

(declare-fun res!834825 () Bool)

(assert (=> d!137879 (=> res!834825 e!710750)))

(declare-fun lt!564874 () Bool)

(assert (=> d!137879 (= res!834825 (not lt!564874))))

(declare-fun lt!564876 () Bool)

(assert (=> d!137879 (= lt!564874 lt!564876)))

(declare-fun lt!564875 () Unit!41537)

(declare-fun e!710751 () Unit!41537)

(assert (=> d!137879 (= lt!564875 e!710751)))

(declare-fun c!122154 () Bool)

(assert (=> d!137879 (= c!122154 lt!564876)))

(declare-fun containsKey!618 (List!27897 (_ BitVec 64)) Bool)

(assert (=> d!137879 (= lt!564876 (containsKey!618 (toList!9281 lt!564809) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!137879 (= (contains!7530 lt!564809 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564874)))

(declare-fun b!1251540 () Bool)

(declare-fun lt!564873 () Unit!41537)

(assert (=> b!1251540 (= e!710751 lt!564873)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!428 (List!27897 (_ BitVec 64)) Unit!41537)

(assert (=> b!1251540 (= lt!564873 (lemmaContainsKeyImpliesGetValueByKeyDefined!428 (toList!9281 lt!564809) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Option!707 0))(
  ( (Some!706 (v!18597 V!47593)) (None!705) )
))
(declare-fun isDefined!468 (Option!707) Bool)

(declare-fun getValueByKey!656 (List!27897 (_ BitVec 64)) Option!707)

(assert (=> b!1251540 (isDefined!468 (getValueByKey!656 (toList!9281 lt!564809) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1251541 () Bool)

(declare-fun Unit!41541 () Unit!41537)

(assert (=> b!1251541 (= e!710751 Unit!41541)))

(declare-fun b!1251542 () Bool)

(assert (=> b!1251542 (= e!710750 (isDefined!468 (getValueByKey!656 (toList!9281 lt!564809) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!137879 c!122154) b!1251540))

(assert (= (and d!137879 (not c!122154)) b!1251541))

(assert (= (and d!137879 (not res!834825)) b!1251542))

(declare-fun m!1152355 () Bool)

(assert (=> d!137879 m!1152355))

(declare-fun m!1152357 () Bool)

(assert (=> b!1251540 m!1152357))

(declare-fun m!1152359 () Bool)

(assert (=> b!1251540 m!1152359))

(assert (=> b!1251540 m!1152359))

(declare-fun m!1152361 () Bool)

(assert (=> b!1251540 m!1152361))

(assert (=> b!1251542 m!1152359))

(assert (=> b!1251542 m!1152359))

(assert (=> b!1251542 m!1152361))

(assert (=> b!1251433 d!137879))

(declare-fun b!1251585 () Bool)

(declare-fun res!834845 () Bool)

(declare-fun e!710789 () Bool)

(assert (=> b!1251585 (=> (not res!834845) (not e!710789))))

(declare-fun e!710787 () Bool)

(assert (=> b!1251585 (= res!834845 e!710787)))

(declare-fun res!834849 () Bool)

(assert (=> b!1251585 (=> res!834849 e!710787)))

(declare-fun e!710788 () Bool)

(assert (=> b!1251585 (= res!834849 (not e!710788))))

(declare-fun res!834852 () Bool)

(assert (=> b!1251585 (=> (not res!834852) (not e!710788))))

(assert (=> b!1251585 (= res!834852 (bvslt #b00000000000000000000000000000000 (size!39591 _keys!1118)))))

(declare-fun bm!61634 () Bool)

(declare-fun call!61639 () ListLongMap!18531)

(declare-fun call!61638 () ListLongMap!18531)

(assert (=> bm!61634 (= call!61639 call!61638)))

(declare-fun d!137881 () Bool)

(assert (=> d!137881 e!710789))

(declare-fun res!834850 () Bool)

(assert (=> d!137881 (=> (not res!834850) (not e!710789))))

(assert (=> d!137881 (= res!834850 (or (bvsge #b00000000000000000000000000000000 (size!39591 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39591 _keys!1118)))))))

(declare-fun lt!564934 () ListLongMap!18531)

(declare-fun lt!564941 () ListLongMap!18531)

(assert (=> d!137881 (= lt!564934 lt!564941)))

(declare-fun lt!564925 () Unit!41537)

(declare-fun e!710784 () Unit!41537)

(assert (=> d!137881 (= lt!564925 e!710784)))

(declare-fun c!122168 () Bool)

(declare-fun e!710781 () Bool)

(assert (=> d!137881 (= c!122168 e!710781)))

(declare-fun res!834851 () Bool)

(assert (=> d!137881 (=> (not res!834851) (not e!710781))))

(assert (=> d!137881 (= res!834851 (bvslt #b00000000000000000000000000000000 (size!39591 _keys!1118)))))

(declare-fun e!710786 () ListLongMap!18531)

(assert (=> d!137881 (= lt!564941 e!710786)))

(declare-fun c!122170 () Bool)

(assert (=> d!137881 (= c!122170 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!137881 (validMask!0 mask!1466)))

(assert (=> d!137881 (= (getCurrentListMap!4495 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!564934)))

(declare-fun bm!61635 () Bool)

(assert (=> bm!61635 (= call!61638 (getCurrentListMapNoExtraKeys!5654 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251586 () Bool)

(declare-fun c!122169 () Bool)

(assert (=> b!1251586 (= c!122169 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!710790 () ListLongMap!18531)

(declare-fun e!710780 () ListLongMap!18531)

(assert (=> b!1251586 (= e!710790 e!710780)))

(declare-fun b!1251587 () Bool)

(assert (=> b!1251587 (= e!710781 (validKeyInArray!0 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!61636 () Bool)

(declare-fun call!61641 () Bool)

(assert (=> bm!61636 (= call!61641 (contains!7530 lt!564934 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1251588 () Bool)

(assert (=> b!1251588 (= e!710786 e!710790)))

(declare-fun c!122172 () Bool)

(assert (=> b!1251588 (= c!122172 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1251589 () Bool)

(declare-fun call!61642 () ListLongMap!18531)

(assert (=> b!1251589 (= e!710780 call!61642)))

(declare-fun bm!61637 () Bool)

(declare-fun call!61637 () Bool)

(assert (=> bm!61637 (= call!61637 (contains!7530 lt!564934 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1251590 () Bool)

(assert (=> b!1251590 (= e!710790 call!61642)))

(declare-fun b!1251591 () Bool)

(declare-fun e!710779 () Bool)

(assert (=> b!1251591 (= e!710779 (= (apply!1017 lt!564934 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000)) (get!20063 (select (arr!39053 _values!914) #b00000000000000000000000000000000) (dynLambda!3462 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1251591 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39590 _values!914)))))

(assert (=> b!1251591 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39591 _keys!1118)))))

(declare-fun b!1251592 () Bool)

(declare-fun call!61640 () ListLongMap!18531)

(assert (=> b!1251592 (= e!710780 call!61640)))

(declare-fun b!1251593 () Bool)

(declare-fun e!710785 () Bool)

(assert (=> b!1251593 (= e!710785 (not call!61641))))

(declare-fun b!1251594 () Bool)

(declare-fun call!61643 () ListLongMap!18531)

(assert (=> b!1251594 (= e!710786 (+!4126 call!61643 (tuple2!20647 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun bm!61638 () Bool)

(assert (=> bm!61638 (= call!61640 call!61639)))

(declare-fun b!1251595 () Bool)

(declare-fun e!710778 () Bool)

(assert (=> b!1251595 (= e!710785 e!710778)))

(declare-fun res!834844 () Bool)

(assert (=> b!1251595 (= res!834844 call!61641)))

(assert (=> b!1251595 (=> (not res!834844) (not e!710778))))

(declare-fun b!1251596 () Bool)

(declare-fun Unit!41542 () Unit!41537)

(assert (=> b!1251596 (= e!710784 Unit!41542)))

(declare-fun b!1251597 () Bool)

(declare-fun e!710782 () Bool)

(assert (=> b!1251597 (= e!710789 e!710782)))

(declare-fun c!122171 () Bool)

(assert (=> b!1251597 (= c!122171 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!61639 () Bool)

(assert (=> bm!61639 (= call!61643 (+!4126 (ite c!122170 call!61638 (ite c!122172 call!61639 call!61640)) (ite (or c!122170 c!122172) (tuple2!20647 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!20647 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun bm!61640 () Bool)

(assert (=> bm!61640 (= call!61642 call!61643)))

(declare-fun b!1251598 () Bool)

(assert (=> b!1251598 (= e!710782 (not call!61637))))

(declare-fun b!1251599 () Bool)

(declare-fun e!710783 () Bool)

(assert (=> b!1251599 (= e!710783 (= (apply!1017 lt!564934 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(declare-fun b!1251600 () Bool)

(assert (=> b!1251600 (= e!710782 e!710783)))

(declare-fun res!834846 () Bool)

(assert (=> b!1251600 (= res!834846 call!61637)))

(assert (=> b!1251600 (=> (not res!834846) (not e!710783))))

(declare-fun b!1251601 () Bool)

(assert (=> b!1251601 (= e!710778 (= (apply!1017 lt!564934 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun b!1251602 () Bool)

(assert (=> b!1251602 (= e!710787 e!710779)))

(declare-fun res!834847 () Bool)

(assert (=> b!1251602 (=> (not res!834847) (not e!710779))))

(assert (=> b!1251602 (= res!834847 (contains!7530 lt!564934 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1251602 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!39591 _keys!1118)))))

(declare-fun b!1251603 () Bool)

(declare-fun lt!564940 () Unit!41537)

(assert (=> b!1251603 (= e!710784 lt!564940)))

(declare-fun lt!564930 () ListLongMap!18531)

(assert (=> b!1251603 (= lt!564930 (getCurrentListMapNoExtraKeys!5654 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!564926 () (_ BitVec 64))

(assert (=> b!1251603 (= lt!564926 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!564922 () (_ BitVec 64))

(assert (=> b!1251603 (= lt!564922 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!564939 () Unit!41537)

(declare-fun addStillContains!1092 (ListLongMap!18531 (_ BitVec 64) V!47593 (_ BitVec 64)) Unit!41537)

(assert (=> b!1251603 (= lt!564939 (addStillContains!1092 lt!564930 lt!564926 zeroValue!871 lt!564922))))

(assert (=> b!1251603 (contains!7530 (+!4126 lt!564930 (tuple2!20647 lt!564926 zeroValue!871)) lt!564922)))

(declare-fun lt!564936 () Unit!41537)

(assert (=> b!1251603 (= lt!564936 lt!564939)))

(declare-fun lt!564938 () ListLongMap!18531)

(assert (=> b!1251603 (= lt!564938 (getCurrentListMapNoExtraKeys!5654 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!564933 () (_ BitVec 64))

(assert (=> b!1251603 (= lt!564933 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!564928 () (_ BitVec 64))

(assert (=> b!1251603 (= lt!564928 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!564937 () Unit!41537)

(declare-fun addApplyDifferent!526 (ListLongMap!18531 (_ BitVec 64) V!47593 (_ BitVec 64)) Unit!41537)

(assert (=> b!1251603 (= lt!564937 (addApplyDifferent!526 lt!564938 lt!564933 minValueBefore!43 lt!564928))))

(assert (=> b!1251603 (= (apply!1017 (+!4126 lt!564938 (tuple2!20647 lt!564933 minValueBefore!43)) lt!564928) (apply!1017 lt!564938 lt!564928))))

(declare-fun lt!564924 () Unit!41537)

(assert (=> b!1251603 (= lt!564924 lt!564937)))

(declare-fun lt!564929 () ListLongMap!18531)

(assert (=> b!1251603 (= lt!564929 (getCurrentListMapNoExtraKeys!5654 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!564942 () (_ BitVec 64))

(assert (=> b!1251603 (= lt!564942 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!564923 () (_ BitVec 64))

(assert (=> b!1251603 (= lt!564923 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!564932 () Unit!41537)

(assert (=> b!1251603 (= lt!564932 (addApplyDifferent!526 lt!564929 lt!564942 zeroValue!871 lt!564923))))

(assert (=> b!1251603 (= (apply!1017 (+!4126 lt!564929 (tuple2!20647 lt!564942 zeroValue!871)) lt!564923) (apply!1017 lt!564929 lt!564923))))

(declare-fun lt!564927 () Unit!41537)

(assert (=> b!1251603 (= lt!564927 lt!564932)))

(declare-fun lt!564931 () ListLongMap!18531)

(assert (=> b!1251603 (= lt!564931 (getCurrentListMapNoExtraKeys!5654 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!564935 () (_ BitVec 64))

(assert (=> b!1251603 (= lt!564935 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!564921 () (_ BitVec 64))

(assert (=> b!1251603 (= lt!564921 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1251603 (= lt!564940 (addApplyDifferent!526 lt!564931 lt!564935 minValueBefore!43 lt!564921))))

(assert (=> b!1251603 (= (apply!1017 (+!4126 lt!564931 (tuple2!20647 lt!564935 minValueBefore!43)) lt!564921) (apply!1017 lt!564931 lt!564921))))

(declare-fun b!1251604 () Bool)

(declare-fun res!834848 () Bool)

(assert (=> b!1251604 (=> (not res!834848) (not e!710789))))

(assert (=> b!1251604 (= res!834848 e!710785)))

(declare-fun c!122167 () Bool)

(assert (=> b!1251604 (= c!122167 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1251605 () Bool)

(assert (=> b!1251605 (= e!710788 (validKeyInArray!0 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000)))))

(assert (= (and d!137881 c!122170) b!1251594))

(assert (= (and d!137881 (not c!122170)) b!1251588))

(assert (= (and b!1251588 c!122172) b!1251590))

(assert (= (and b!1251588 (not c!122172)) b!1251586))

(assert (= (and b!1251586 c!122169) b!1251589))

(assert (= (and b!1251586 (not c!122169)) b!1251592))

(assert (= (or b!1251589 b!1251592) bm!61638))

(assert (= (or b!1251590 bm!61638) bm!61634))

(assert (= (or b!1251590 b!1251589) bm!61640))

(assert (= (or b!1251594 bm!61634) bm!61635))

(assert (= (or b!1251594 bm!61640) bm!61639))

(assert (= (and d!137881 res!834851) b!1251587))

(assert (= (and d!137881 c!122168) b!1251603))

(assert (= (and d!137881 (not c!122168)) b!1251596))

(assert (= (and d!137881 res!834850) b!1251585))

(assert (= (and b!1251585 res!834852) b!1251605))

(assert (= (and b!1251585 (not res!834849)) b!1251602))

(assert (= (and b!1251602 res!834847) b!1251591))

(assert (= (and b!1251585 res!834845) b!1251604))

(assert (= (and b!1251604 c!122167) b!1251595))

(assert (= (and b!1251604 (not c!122167)) b!1251593))

(assert (= (and b!1251595 res!834844) b!1251601))

(assert (= (or b!1251595 b!1251593) bm!61636))

(assert (= (and b!1251604 res!834848) b!1251597))

(assert (= (and b!1251597 c!122171) b!1251600))

(assert (= (and b!1251597 (not c!122171)) b!1251598))

(assert (= (and b!1251600 res!834846) b!1251599))

(assert (= (or b!1251600 b!1251598) bm!61637))

(declare-fun b_lambda!22565 () Bool)

(assert (=> (not b_lambda!22565) (not b!1251591)))

(assert (=> b!1251591 t!41383))

(declare-fun b_and!44577 () Bool)

(assert (= b_and!44575 (and (=> t!41383 result!23289) b_and!44577)))

(declare-fun m!1152363 () Bool)

(assert (=> b!1251601 m!1152363))

(declare-fun m!1152365 () Bool)

(assert (=> b!1251603 m!1152365))

(declare-fun m!1152367 () Bool)

(assert (=> b!1251603 m!1152367))

(declare-fun m!1152369 () Bool)

(assert (=> b!1251603 m!1152369))

(declare-fun m!1152371 () Bool)

(assert (=> b!1251603 m!1152371))

(assert (=> b!1251603 m!1152365))

(declare-fun m!1152373 () Bool)

(assert (=> b!1251603 m!1152373))

(declare-fun m!1152375 () Bool)

(assert (=> b!1251603 m!1152375))

(declare-fun m!1152377 () Bool)

(assert (=> b!1251603 m!1152377))

(declare-fun m!1152379 () Bool)

(assert (=> b!1251603 m!1152379))

(declare-fun m!1152381 () Bool)

(assert (=> b!1251603 m!1152381))

(declare-fun m!1152383 () Bool)

(assert (=> b!1251603 m!1152383))

(assert (=> b!1251603 m!1152379))

(declare-fun m!1152385 () Bool)

(assert (=> b!1251603 m!1152385))

(declare-fun m!1152387 () Bool)

(assert (=> b!1251603 m!1152387))

(declare-fun m!1152389 () Bool)

(assert (=> b!1251603 m!1152389))

(assert (=> b!1251603 m!1152309))

(assert (=> b!1251603 m!1152369))

(assert (=> b!1251603 m!1152261))

(declare-fun m!1152391 () Bool)

(assert (=> b!1251603 m!1152391))

(declare-fun m!1152393 () Bool)

(assert (=> b!1251603 m!1152393))

(assert (=> b!1251603 m!1152387))

(assert (=> b!1251602 m!1152309))

(assert (=> b!1251602 m!1152309))

(declare-fun m!1152395 () Bool)

(assert (=> b!1251602 m!1152395))

(declare-fun m!1152397 () Bool)

(assert (=> bm!61636 m!1152397))

(assert (=> b!1251591 m!1152309))

(declare-fun m!1152399 () Bool)

(assert (=> b!1251591 m!1152399))

(assert (=> b!1251591 m!1152309))

(assert (=> b!1251591 m!1152297))

(assert (=> b!1251591 m!1152303))

(assert (=> b!1251591 m!1152303))

(assert (=> b!1251591 m!1152297))

(assert (=> b!1251591 m!1152305))

(declare-fun m!1152401 () Bool)

(assert (=> b!1251594 m!1152401))

(assert (=> b!1251587 m!1152309))

(assert (=> b!1251587 m!1152309))

(assert (=> b!1251587 m!1152313))

(assert (=> b!1251605 m!1152309))

(assert (=> b!1251605 m!1152309))

(assert (=> b!1251605 m!1152313))

(assert (=> d!137881 m!1152251))

(declare-fun m!1152403 () Bool)

(assert (=> bm!61639 m!1152403))

(assert (=> bm!61635 m!1152261))

(declare-fun m!1152405 () Bool)

(assert (=> bm!61637 m!1152405))

(declare-fun m!1152407 () Bool)

(assert (=> b!1251599 m!1152407))

(assert (=> b!1251433 d!137881))

(declare-fun b!1251614 () Bool)

(declare-fun e!710798 () Bool)

(declare-fun call!61646 () Bool)

(assert (=> b!1251614 (= e!710798 call!61646)))

(declare-fun b!1251615 () Bool)

(declare-fun e!710797 () Bool)

(declare-fun e!710799 () Bool)

(assert (=> b!1251615 (= e!710797 e!710799)))

(declare-fun c!122175 () Bool)

(assert (=> b!1251615 (= c!122175 (validKeyInArray!0 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!61643 () Bool)

(assert (=> bm!61643 (= call!61646 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1251616 () Bool)

(assert (=> b!1251616 (= e!710799 e!710798)))

(declare-fun lt!564950 () (_ BitVec 64))

(assert (=> b!1251616 (= lt!564950 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!564949 () Unit!41537)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!80987 (_ BitVec 64) (_ BitVec 32)) Unit!41537)

(assert (=> b!1251616 (= lt!564949 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!564950 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!80987 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1251616 (arrayContainsKey!0 _keys!1118 lt!564950 #b00000000000000000000000000000000)))

(declare-fun lt!564951 () Unit!41537)

(assert (=> b!1251616 (= lt!564951 lt!564949)))

(declare-fun res!834857 () Bool)

(declare-datatypes ((SeekEntryResult!9957 0))(
  ( (MissingZero!9957 (index!42198 (_ BitVec 32))) (Found!9957 (index!42199 (_ BitVec 32))) (Intermediate!9957 (undefined!10769 Bool) (index!42200 (_ BitVec 32)) (x!110105 (_ BitVec 32))) (Undefined!9957) (MissingVacant!9957 (index!42201 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!80987 (_ BitVec 32)) SeekEntryResult!9957)

(assert (=> b!1251616 (= res!834857 (= (seekEntryOrOpen!0 (select (arr!39054 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9957 #b00000000000000000000000000000000)))))

(assert (=> b!1251616 (=> (not res!834857) (not e!710798))))

(declare-fun d!137883 () Bool)

(declare-fun res!834858 () Bool)

(assert (=> d!137883 (=> res!834858 e!710797)))

(assert (=> d!137883 (= res!834858 (bvsge #b00000000000000000000000000000000 (size!39591 _keys!1118)))))

(assert (=> d!137883 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!710797)))

(declare-fun b!1251617 () Bool)

(assert (=> b!1251617 (= e!710799 call!61646)))

(assert (= (and d!137883 (not res!834858)) b!1251615))

(assert (= (and b!1251615 c!122175) b!1251616))

(assert (= (and b!1251615 (not c!122175)) b!1251617))

(assert (= (and b!1251616 res!834857) b!1251614))

(assert (= (or b!1251614 b!1251617) bm!61643))

(assert (=> b!1251615 m!1152309))

(assert (=> b!1251615 m!1152309))

(assert (=> b!1251615 m!1152313))

(declare-fun m!1152409 () Bool)

(assert (=> bm!61643 m!1152409))

(assert (=> b!1251616 m!1152309))

(declare-fun m!1152411 () Bool)

(assert (=> b!1251616 m!1152411))

(declare-fun m!1152413 () Bool)

(assert (=> b!1251616 m!1152413))

(assert (=> b!1251616 m!1152309))

(declare-fun m!1152415 () Bool)

(assert (=> b!1251616 m!1152415))

(assert (=> b!1251439 d!137883))

(declare-fun condMapEmpty!49279 () Bool)

(declare-fun mapDefault!49279 () ValueCell!15072)

(assert (=> mapNonEmpty!49273 (= condMapEmpty!49279 (= mapRest!49273 ((as const (Array (_ BitVec 32) ValueCell!15072)) mapDefault!49279)))))

(declare-fun e!710805 () Bool)

(declare-fun mapRes!49279 () Bool)

(assert (=> mapNonEmpty!49273 (= tp!93803 (and e!710805 mapRes!49279))))

(declare-fun mapNonEmpty!49279 () Bool)

(declare-fun tp!93813 () Bool)

(declare-fun e!710804 () Bool)

(assert (=> mapNonEmpty!49279 (= mapRes!49279 (and tp!93813 e!710804))))

(declare-fun mapKey!49279 () (_ BitVec 32))

(declare-fun mapValue!49279 () ValueCell!15072)

(declare-fun mapRest!49279 () (Array (_ BitVec 32) ValueCell!15072))

(assert (=> mapNonEmpty!49279 (= mapRest!49273 (store mapRest!49279 mapKey!49279 mapValue!49279))))

(declare-fun b!1251624 () Bool)

(assert (=> b!1251624 (= e!710804 tp_is_empty!31671)))

(declare-fun b!1251625 () Bool)

(assert (=> b!1251625 (= e!710805 tp_is_empty!31671)))

(declare-fun mapIsEmpty!49279 () Bool)

(assert (=> mapIsEmpty!49279 mapRes!49279))

(assert (= (and mapNonEmpty!49273 condMapEmpty!49279) mapIsEmpty!49279))

(assert (= (and mapNonEmpty!49273 (not condMapEmpty!49279)) mapNonEmpty!49279))

(assert (= (and mapNonEmpty!49279 ((_ is ValueCellFull!15072) mapValue!49279)) b!1251624))

(assert (= (and mapNonEmpty!49273 ((_ is ValueCellFull!15072) mapDefault!49279)) b!1251625))

(declare-fun m!1152417 () Bool)

(assert (=> mapNonEmpty!49279 m!1152417))

(declare-fun b_lambda!22567 () Bool)

(assert (= b_lambda!22561 (or (and start!105036 b_free!26769) b_lambda!22567)))

(declare-fun b_lambda!22569 () Bool)

(assert (= b_lambda!22557 (or (and start!105036 b_free!26769) b_lambda!22569)))

(declare-fun b_lambda!22571 () Bool)

(assert (= b_lambda!22563 (or (and start!105036 b_free!26769) b_lambda!22571)))

(declare-fun b_lambda!22573 () Bool)

(assert (= b_lambda!22565 (or (and start!105036 b_free!26769) b_lambda!22573)))

(declare-fun b_lambda!22575 () Bool)

(assert (= b_lambda!22559 (or (and start!105036 b_free!26769) b_lambda!22575)))

(check-sat (not bm!61643) (not d!137875) (not b_lambda!22575) (not b!1251594) (not d!137869) (not b_lambda!22571) (not d!137881) (not b!1251603) (not b!1251514) (not b!1251501) (not b!1251601) tp_is_empty!31671 (not b!1251616) (not b!1251510) (not b!1251502) (not b!1251509) (not b!1251533) (not b!1251507) (not bm!61616) (not b!1251511) (not b!1251497) (not b!1251599) (not b!1251500) (not d!137867) (not b!1251532) (not b!1251615) (not b!1251515) (not b!1251512) (not d!137879) (not bm!61637) (not d!137871) (not b!1251605) (not d!137877) (not b!1251587) b_and!44577 (not bm!61636) (not b_lambda!22569) (not b_lambda!22567) (not b!1251498) (not b!1251531) (not b!1251516) (not bm!61639) (not b_next!26769) (not b!1251602) (not b!1251495) (not bm!61615) (not mapNonEmpty!49279) (not b!1251540) (not b!1251496) (not b!1251493) (not b!1251591) (not bm!61635) (not b_lambda!22573) (not bm!61619) (not b!1251542))
(check-sat b_and!44577 (not b_next!26769))
