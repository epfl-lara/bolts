; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71404 () Bool)

(assert start!71404)

(declare-fun b_free!13461 () Bool)

(declare-fun b_next!13461 () Bool)

(assert (=> start!71404 (= b_free!13461 (not b_next!13461))))

(declare-fun tp!47157 () Bool)

(declare-fun b_and!22461 () Bool)

(assert (=> start!71404 (= tp!47157 b_and!22461)))

(declare-fun b!828846 () Bool)

(declare-fun e!461981 () Bool)

(declare-fun e!461978 () Bool)

(assert (=> b!828846 (= e!461981 (not e!461978))))

(declare-fun res!564829 () Bool)

(assert (=> b!828846 (=> res!564829 e!461978)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!828846 (= res!564829 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!25229 0))(
  ( (V!25230 (val!7633 Int)) )
))
(declare-datatypes ((tuple2!10146 0))(
  ( (tuple2!10147 (_1!5083 (_ BitVec 64)) (_2!5083 V!25229)) )
))
(declare-datatypes ((List!15979 0))(
  ( (Nil!15976) (Cons!15975 (h!17104 tuple2!10146) (t!22344 List!15979)) )
))
(declare-datatypes ((ListLongMap!8983 0))(
  ( (ListLongMap!8984 (toList!4507 List!15979)) )
))
(declare-fun lt!375753 () ListLongMap!8983)

(declare-fun lt!375754 () ListLongMap!8983)

(assert (=> b!828846 (= lt!375753 lt!375754)))

(declare-fun zeroValueBefore!34 () V!25229)

(declare-datatypes ((array!46482 0))(
  ( (array!46483 (arr!22277 (Array (_ BitVec 32) (_ BitVec 64))) (size!22698 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46482)

(declare-fun zeroValueAfter!34 () V!25229)

(declare-fun minValue!754 () V!25229)

(declare-datatypes ((ValueCell!7170 0))(
  ( (ValueCellFull!7170 (v!10067 V!25229)) (EmptyCell!7170) )
))
(declare-datatypes ((array!46484 0))(
  ( (array!46485 (arr!22278 (Array (_ BitVec 32) ValueCell!7170)) (size!22699 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46484)

(declare-datatypes ((Unit!28403 0))(
  ( (Unit!28404) )
))
(declare-fun lt!375756 () Unit!28403)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!599 (array!46482 array!46484 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25229 V!25229 V!25229 V!25229 (_ BitVec 32) Int) Unit!28403)

(assert (=> b!828846 (= lt!375756 (lemmaNoChangeToArrayThenSameMapNoExtras!599 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2509 (array!46482 array!46484 (_ BitVec 32) (_ BitVec 32) V!25229 V!25229 (_ BitVec 32) Int) ListLongMap!8983)

(assert (=> b!828846 (= lt!375754 (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!828846 (= lt!375753 (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828847 () Bool)

(declare-fun e!461982 () Bool)

(declare-fun tp_is_empty!15171 () Bool)

(assert (=> b!828847 (= e!461982 tp_is_empty!15171)))

(declare-fun mapNonEmpty!24397 () Bool)

(declare-fun mapRes!24397 () Bool)

(declare-fun tp!47158 () Bool)

(declare-fun e!461977 () Bool)

(assert (=> mapNonEmpty!24397 (= mapRes!24397 (and tp!47158 e!461977))))

(declare-fun mapValue!24397 () ValueCell!7170)

(declare-fun mapKey!24397 () (_ BitVec 32))

(declare-fun mapRest!24397 () (Array (_ BitVec 32) ValueCell!7170))

(assert (=> mapNonEmpty!24397 (= (arr!22278 _values!788) (store mapRest!24397 mapKey!24397 mapValue!24397))))

(declare-fun b!828848 () Bool)

(declare-fun getCurrentListMap!2581 (array!46482 array!46484 (_ BitVec 32) (_ BitVec 32) V!25229 V!25229 (_ BitVec 32) Int) ListLongMap!8983)

(declare-fun +!1939 (ListLongMap!8983 tuple2!10146) ListLongMap!8983)

(assert (=> b!828848 (= e!461978 (= (getCurrentListMap!2581 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (+!1939 lt!375753 (tuple2!10147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun lt!375755 () ListLongMap!8983)

(assert (=> b!828848 (= lt!375755 (getCurrentListMap!2581 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828849 () Bool)

(assert (=> b!828849 (= e!461977 tp_is_empty!15171)))

(declare-fun b!828850 () Bool)

(declare-fun res!564831 () Bool)

(assert (=> b!828850 (=> (not res!564831) (not e!461981))))

(assert (=> b!828850 (= res!564831 (and (= (size!22699 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22698 _keys!976) (size!22699 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!828851 () Bool)

(declare-fun e!461980 () Bool)

(assert (=> b!828851 (= e!461980 (and e!461982 mapRes!24397))))

(declare-fun condMapEmpty!24397 () Bool)

(declare-fun mapDefault!24397 () ValueCell!7170)

(assert (=> b!828851 (= condMapEmpty!24397 (= (arr!22278 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7170)) mapDefault!24397)))))

(declare-fun b!828852 () Bool)

(declare-fun res!564832 () Bool)

(assert (=> b!828852 (=> (not res!564832) (not e!461981))))

(declare-datatypes ((List!15980 0))(
  ( (Nil!15977) (Cons!15976 (h!17105 (_ BitVec 64)) (t!22345 List!15980)) )
))
(declare-fun arrayNoDuplicates!0 (array!46482 (_ BitVec 32) List!15980) Bool)

(assert (=> b!828852 (= res!564832 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15977))))

(declare-fun b!828853 () Bool)

(declare-fun res!564830 () Bool)

(assert (=> b!828853 (=> (not res!564830) (not e!461981))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46482 (_ BitVec 32)) Bool)

(assert (=> b!828853 (= res!564830 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!24397 () Bool)

(assert (=> mapIsEmpty!24397 mapRes!24397))

(declare-fun res!564828 () Bool)

(assert (=> start!71404 (=> (not res!564828) (not e!461981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71404 (= res!564828 (validMask!0 mask!1312))))

(assert (=> start!71404 e!461981))

(assert (=> start!71404 tp_is_empty!15171))

(declare-fun array_inv!17725 (array!46482) Bool)

(assert (=> start!71404 (array_inv!17725 _keys!976)))

(assert (=> start!71404 true))

(declare-fun array_inv!17726 (array!46484) Bool)

(assert (=> start!71404 (and (array_inv!17726 _values!788) e!461980)))

(assert (=> start!71404 tp!47157))

(assert (= (and start!71404 res!564828) b!828850))

(assert (= (and b!828850 res!564831) b!828853))

(assert (= (and b!828853 res!564830) b!828852))

(assert (= (and b!828852 res!564832) b!828846))

(assert (= (and b!828846 (not res!564829)) b!828848))

(assert (= (and b!828851 condMapEmpty!24397) mapIsEmpty!24397))

(assert (= (and b!828851 (not condMapEmpty!24397)) mapNonEmpty!24397))

(get-info :version)

(assert (= (and mapNonEmpty!24397 ((_ is ValueCellFull!7170) mapValue!24397)) b!828849))

(assert (= (and b!828851 ((_ is ValueCellFull!7170) mapDefault!24397)) b!828847))

(assert (= start!71404 b!828851))

(declare-fun m!771923 () Bool)

(assert (=> b!828853 m!771923))

(declare-fun m!771925 () Bool)

(assert (=> b!828848 m!771925))

(declare-fun m!771927 () Bool)

(assert (=> b!828848 m!771927))

(declare-fun m!771929 () Bool)

(assert (=> b!828848 m!771929))

(declare-fun m!771931 () Bool)

(assert (=> b!828846 m!771931))

(declare-fun m!771933 () Bool)

(assert (=> b!828846 m!771933))

(declare-fun m!771935 () Bool)

(assert (=> b!828846 m!771935))

(declare-fun m!771937 () Bool)

(assert (=> mapNonEmpty!24397 m!771937))

(declare-fun m!771939 () Bool)

(assert (=> b!828852 m!771939))

(declare-fun m!771941 () Bool)

(assert (=> start!71404 m!771941))

(declare-fun m!771943 () Bool)

(assert (=> start!71404 m!771943))

(declare-fun m!771945 () Bool)

(assert (=> start!71404 m!771945))

(check-sat (not b_next!13461) (not mapNonEmpty!24397) (not b!828848) (not b!828852) (not start!71404) b_and!22461 (not b!828846) tp_is_empty!15171 (not b!828853))
(check-sat b_and!22461 (not b_next!13461))
(get-model)

(declare-fun d!105147 () Bool)

(assert (=> d!105147 (= (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375771 () Unit!28403)

(declare-fun choose!1420 (array!46482 array!46484 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25229 V!25229 V!25229 V!25229 (_ BitVec 32) Int) Unit!28403)

(assert (=> d!105147 (= lt!375771 (choose!1420 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!105147 (validMask!0 mask!1312)))

(assert (=> d!105147 (= (lemmaNoChangeToArrayThenSameMapNoExtras!599 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375771)))

(declare-fun bs!23153 () Bool)

(assert (= bs!23153 d!105147))

(assert (=> bs!23153 m!771935))

(assert (=> bs!23153 m!771933))

(declare-fun m!771971 () Bool)

(assert (=> bs!23153 m!771971))

(assert (=> bs!23153 m!771941))

(assert (=> b!828846 d!105147))

(declare-fun e!462020 () Bool)

(declare-fun b!828902 () Bool)

(declare-fun lt!375788 () ListLongMap!8983)

(assert (=> b!828902 (= e!462020 (= lt!375788 (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!828903 () Bool)

(declare-fun lt!375792 () Unit!28403)

(declare-fun lt!375791 () Unit!28403)

(assert (=> b!828903 (= lt!375792 lt!375791)))

(declare-fun lt!375790 () (_ BitVec 64))

(declare-fun lt!375787 () (_ BitVec 64))

(declare-fun lt!375786 () V!25229)

(declare-fun lt!375789 () ListLongMap!8983)

(declare-fun contains!4196 (ListLongMap!8983 (_ BitVec 64)) Bool)

(assert (=> b!828903 (not (contains!4196 (+!1939 lt!375789 (tuple2!10147 lt!375787 lt!375786)) lt!375790))))

(declare-fun addStillNotContains!195 (ListLongMap!8983 (_ BitVec 64) V!25229 (_ BitVec 64)) Unit!28403)

(assert (=> b!828903 (= lt!375791 (addStillNotContains!195 lt!375789 lt!375787 lt!375786 lt!375790))))

(assert (=> b!828903 (= lt!375790 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!11806 (ValueCell!7170 V!25229) V!25229)

(declare-fun dynLambda!978 (Int (_ BitVec 64)) V!25229)

(assert (=> b!828903 (= lt!375786 (get!11806 (select (arr!22278 _values!788) #b00000000000000000000000000000000) (dynLambda!978 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!828903 (= lt!375787 (select (arr!22277 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!36073 () ListLongMap!8983)

(assert (=> b!828903 (= lt!375789 call!36073)))

(declare-fun e!462019 () ListLongMap!8983)

(assert (=> b!828903 (= e!462019 (+!1939 call!36073 (tuple2!10147 (select (arr!22277 _keys!976) #b00000000000000000000000000000000) (get!11806 (select (arr!22278 _values!788) #b00000000000000000000000000000000) (dynLambda!978 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!828904 () Bool)

(declare-fun e!462015 () Bool)

(declare-fun e!462016 () Bool)

(assert (=> b!828904 (= e!462015 e!462016)))

(declare-fun c!89607 () Bool)

(declare-fun e!462021 () Bool)

(assert (=> b!828904 (= c!89607 e!462021)))

(declare-fun res!564857 () Bool)

(assert (=> b!828904 (=> (not res!564857) (not e!462021))))

(assert (=> b!828904 (= res!564857 (bvslt #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(declare-fun b!828905 () Bool)

(assert (=> b!828905 (= e!462016 e!462020)))

(declare-fun c!89608 () Bool)

(assert (=> b!828905 (= c!89608 (bvslt #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(declare-fun d!105149 () Bool)

(assert (=> d!105149 e!462015))

(declare-fun res!564856 () Bool)

(assert (=> d!105149 (=> (not res!564856) (not e!462015))))

(assert (=> d!105149 (= res!564856 (not (contains!4196 lt!375788 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!462017 () ListLongMap!8983)

(assert (=> d!105149 (= lt!375788 e!462017)))

(declare-fun c!89609 () Bool)

(assert (=> d!105149 (= c!89609 (bvsge #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(assert (=> d!105149 (validMask!0 mask!1312)))

(assert (=> d!105149 (= (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375788)))

(declare-fun b!828906 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!828906 (= e!462021 (validKeyInArray!0 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!828906 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!828907 () Bool)

(declare-fun res!564859 () Bool)

(assert (=> b!828907 (=> (not res!564859) (not e!462015))))

(assert (=> b!828907 (= res!564859 (not (contains!4196 lt!375788 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!828908 () Bool)

(assert (=> b!828908 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(assert (=> b!828908 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22699 _values!788)))))

(declare-fun e!462018 () Bool)

(declare-fun apply!368 (ListLongMap!8983 (_ BitVec 64)) V!25229)

(assert (=> b!828908 (= e!462018 (= (apply!368 lt!375788 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)) (get!11806 (select (arr!22278 _values!788) #b00000000000000000000000000000000) (dynLambda!978 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!36070 () Bool)

(assert (=> bm!36070 (= call!36073 (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!828909 () Bool)

(assert (=> b!828909 (= e!462019 call!36073)))

(declare-fun b!828910 () Bool)

(assert (=> b!828910 (= e!462017 (ListLongMap!8984 Nil!15976))))

(declare-fun b!828911 () Bool)

(assert (=> b!828911 (= e!462017 e!462019)))

(declare-fun c!89606 () Bool)

(assert (=> b!828911 (= c!89606 (validKeyInArray!0 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828912 () Bool)

(assert (=> b!828912 (= e!462016 e!462018)))

(assert (=> b!828912 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(declare-fun res!564858 () Bool)

(assert (=> b!828912 (= res!564858 (contains!4196 lt!375788 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!828912 (=> (not res!564858) (not e!462018))))

(declare-fun b!828913 () Bool)

(declare-fun isEmpty!655 (ListLongMap!8983) Bool)

(assert (=> b!828913 (= e!462020 (isEmpty!655 lt!375788))))

(assert (= (and d!105149 c!89609) b!828910))

(assert (= (and d!105149 (not c!89609)) b!828911))

(assert (= (and b!828911 c!89606) b!828903))

(assert (= (and b!828911 (not c!89606)) b!828909))

(assert (= (or b!828903 b!828909) bm!36070))

(assert (= (and d!105149 res!564856) b!828907))

(assert (= (and b!828907 res!564859) b!828904))

(assert (= (and b!828904 res!564857) b!828906))

(assert (= (and b!828904 c!89607) b!828912))

(assert (= (and b!828904 (not c!89607)) b!828905))

(assert (= (and b!828912 res!564858) b!828908))

(assert (= (and b!828905 c!89608) b!828902))

(assert (= (and b!828905 (not c!89608)) b!828913))

(declare-fun b_lambda!11281 () Bool)

(assert (=> (not b_lambda!11281) (not b!828903)))

(declare-fun t!22348 () Bool)

(declare-fun tb!4225 () Bool)

(assert (=> (and start!71404 (= defaultEntry!796 defaultEntry!796) t!22348) tb!4225))

(declare-fun result!7999 () Bool)

(assert (=> tb!4225 (= result!7999 tp_is_empty!15171)))

(assert (=> b!828903 t!22348))

(declare-fun b_and!22465 () Bool)

(assert (= b_and!22461 (and (=> t!22348 result!7999) b_and!22465)))

(declare-fun b_lambda!11283 () Bool)

(assert (=> (not b_lambda!11283) (not b!828908)))

(assert (=> b!828908 t!22348))

(declare-fun b_and!22467 () Bool)

(assert (= b_and!22465 (and (=> t!22348 result!7999) b_and!22467)))

(declare-fun m!771973 () Bool)

(assert (=> b!828903 m!771973))

(assert (=> b!828903 m!771973))

(declare-fun m!771975 () Bool)

(assert (=> b!828903 m!771975))

(declare-fun m!771977 () Bool)

(assert (=> b!828903 m!771977))

(assert (=> b!828903 m!771975))

(declare-fun m!771979 () Bool)

(assert (=> b!828903 m!771979))

(declare-fun m!771981 () Bool)

(assert (=> b!828903 m!771981))

(declare-fun m!771983 () Bool)

(assert (=> b!828903 m!771983))

(declare-fun m!771985 () Bool)

(assert (=> b!828903 m!771985))

(assert (=> b!828903 m!771985))

(declare-fun m!771987 () Bool)

(assert (=> b!828903 m!771987))

(declare-fun m!771989 () Bool)

(assert (=> b!828902 m!771989))

(assert (=> b!828908 m!771973))

(assert (=> b!828908 m!771973))

(assert (=> b!828908 m!771975))

(assert (=> b!828908 m!771977))

(assert (=> b!828908 m!771975))

(assert (=> b!828908 m!771979))

(assert (=> b!828908 m!771979))

(declare-fun m!771991 () Bool)

(assert (=> b!828908 m!771991))

(assert (=> b!828906 m!771979))

(assert (=> b!828906 m!771979))

(declare-fun m!771993 () Bool)

(assert (=> b!828906 m!771993))

(declare-fun m!771995 () Bool)

(assert (=> b!828907 m!771995))

(declare-fun m!771997 () Bool)

(assert (=> b!828913 m!771997))

(assert (=> bm!36070 m!771989))

(assert (=> b!828912 m!771979))

(assert (=> b!828912 m!771979))

(declare-fun m!771999 () Bool)

(assert (=> b!828912 m!771999))

(assert (=> b!828911 m!771979))

(assert (=> b!828911 m!771979))

(assert (=> b!828911 m!771993))

(declare-fun m!772001 () Bool)

(assert (=> d!105149 m!772001))

(assert (=> d!105149 m!771941))

(assert (=> b!828846 d!105149))

(declare-fun b!828916 () Bool)

(declare-fun e!462027 () Bool)

(declare-fun lt!375795 () ListLongMap!8983)

(assert (=> b!828916 (= e!462027 (= lt!375795 (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!828917 () Bool)

(declare-fun lt!375799 () Unit!28403)

(declare-fun lt!375798 () Unit!28403)

(assert (=> b!828917 (= lt!375799 lt!375798)))

(declare-fun lt!375796 () ListLongMap!8983)

(declare-fun lt!375797 () (_ BitVec 64))

(declare-fun lt!375793 () V!25229)

(declare-fun lt!375794 () (_ BitVec 64))

(assert (=> b!828917 (not (contains!4196 (+!1939 lt!375796 (tuple2!10147 lt!375794 lt!375793)) lt!375797))))

(assert (=> b!828917 (= lt!375798 (addStillNotContains!195 lt!375796 lt!375794 lt!375793 lt!375797))))

(assert (=> b!828917 (= lt!375797 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!828917 (= lt!375793 (get!11806 (select (arr!22278 _values!788) #b00000000000000000000000000000000) (dynLambda!978 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!828917 (= lt!375794 (select (arr!22277 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!36074 () ListLongMap!8983)

(assert (=> b!828917 (= lt!375796 call!36074)))

(declare-fun e!462026 () ListLongMap!8983)

(assert (=> b!828917 (= e!462026 (+!1939 call!36074 (tuple2!10147 (select (arr!22277 _keys!976) #b00000000000000000000000000000000) (get!11806 (select (arr!22278 _values!788) #b00000000000000000000000000000000) (dynLambda!978 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!828918 () Bool)

(declare-fun e!462022 () Bool)

(declare-fun e!462023 () Bool)

(assert (=> b!828918 (= e!462022 e!462023)))

(declare-fun c!89611 () Bool)

(declare-fun e!462028 () Bool)

(assert (=> b!828918 (= c!89611 e!462028)))

(declare-fun res!564861 () Bool)

(assert (=> b!828918 (=> (not res!564861) (not e!462028))))

(assert (=> b!828918 (= res!564861 (bvslt #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(declare-fun b!828919 () Bool)

(assert (=> b!828919 (= e!462023 e!462027)))

(declare-fun c!89612 () Bool)

(assert (=> b!828919 (= c!89612 (bvslt #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(declare-fun d!105151 () Bool)

(assert (=> d!105151 e!462022))

(declare-fun res!564860 () Bool)

(assert (=> d!105151 (=> (not res!564860) (not e!462022))))

(assert (=> d!105151 (= res!564860 (not (contains!4196 lt!375795 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!462024 () ListLongMap!8983)

(assert (=> d!105151 (= lt!375795 e!462024)))

(declare-fun c!89613 () Bool)

(assert (=> d!105151 (= c!89613 (bvsge #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(assert (=> d!105151 (validMask!0 mask!1312)))

(assert (=> d!105151 (= (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375795)))

(declare-fun b!828920 () Bool)

(assert (=> b!828920 (= e!462028 (validKeyInArray!0 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!828920 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!828921 () Bool)

(declare-fun res!564863 () Bool)

(assert (=> b!828921 (=> (not res!564863) (not e!462022))))

(assert (=> b!828921 (= res!564863 (not (contains!4196 lt!375795 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!828922 () Bool)

(assert (=> b!828922 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(assert (=> b!828922 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22699 _values!788)))))

(declare-fun e!462025 () Bool)

(assert (=> b!828922 (= e!462025 (= (apply!368 lt!375795 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)) (get!11806 (select (arr!22278 _values!788) #b00000000000000000000000000000000) (dynLambda!978 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!36071 () Bool)

(assert (=> bm!36071 (= call!36074 (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!828923 () Bool)

(assert (=> b!828923 (= e!462026 call!36074)))

(declare-fun b!828924 () Bool)

(assert (=> b!828924 (= e!462024 (ListLongMap!8984 Nil!15976))))

(declare-fun b!828925 () Bool)

(assert (=> b!828925 (= e!462024 e!462026)))

(declare-fun c!89610 () Bool)

(assert (=> b!828925 (= c!89610 (validKeyInArray!0 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828926 () Bool)

(assert (=> b!828926 (= e!462023 e!462025)))

(assert (=> b!828926 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(declare-fun res!564862 () Bool)

(assert (=> b!828926 (= res!564862 (contains!4196 lt!375795 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!828926 (=> (not res!564862) (not e!462025))))

(declare-fun b!828927 () Bool)

(assert (=> b!828927 (= e!462027 (isEmpty!655 lt!375795))))

(assert (= (and d!105151 c!89613) b!828924))

(assert (= (and d!105151 (not c!89613)) b!828925))

(assert (= (and b!828925 c!89610) b!828917))

(assert (= (and b!828925 (not c!89610)) b!828923))

(assert (= (or b!828917 b!828923) bm!36071))

(assert (= (and d!105151 res!564860) b!828921))

(assert (= (and b!828921 res!564863) b!828918))

(assert (= (and b!828918 res!564861) b!828920))

(assert (= (and b!828918 c!89611) b!828926))

(assert (= (and b!828918 (not c!89611)) b!828919))

(assert (= (and b!828926 res!564862) b!828922))

(assert (= (and b!828919 c!89612) b!828916))

(assert (= (and b!828919 (not c!89612)) b!828927))

(declare-fun b_lambda!11285 () Bool)

(assert (=> (not b_lambda!11285) (not b!828917)))

(assert (=> b!828917 t!22348))

(declare-fun b_and!22469 () Bool)

(assert (= b_and!22467 (and (=> t!22348 result!7999) b_and!22469)))

(declare-fun b_lambda!11287 () Bool)

(assert (=> (not b_lambda!11287) (not b!828922)))

(assert (=> b!828922 t!22348))

(declare-fun b_and!22471 () Bool)

(assert (= b_and!22469 (and (=> t!22348 result!7999) b_and!22471)))

(assert (=> b!828917 m!771973))

(assert (=> b!828917 m!771973))

(assert (=> b!828917 m!771975))

(assert (=> b!828917 m!771977))

(assert (=> b!828917 m!771975))

(assert (=> b!828917 m!771979))

(declare-fun m!772003 () Bool)

(assert (=> b!828917 m!772003))

(declare-fun m!772005 () Bool)

(assert (=> b!828917 m!772005))

(declare-fun m!772007 () Bool)

(assert (=> b!828917 m!772007))

(assert (=> b!828917 m!772007))

(declare-fun m!772009 () Bool)

(assert (=> b!828917 m!772009))

(declare-fun m!772011 () Bool)

(assert (=> b!828916 m!772011))

(assert (=> b!828922 m!771973))

(assert (=> b!828922 m!771973))

(assert (=> b!828922 m!771975))

(assert (=> b!828922 m!771977))

(assert (=> b!828922 m!771975))

(assert (=> b!828922 m!771979))

(assert (=> b!828922 m!771979))

(declare-fun m!772013 () Bool)

(assert (=> b!828922 m!772013))

(assert (=> b!828920 m!771979))

(assert (=> b!828920 m!771979))

(assert (=> b!828920 m!771993))

(declare-fun m!772015 () Bool)

(assert (=> b!828921 m!772015))

(declare-fun m!772017 () Bool)

(assert (=> b!828927 m!772017))

(assert (=> bm!36071 m!772011))

(assert (=> b!828926 m!771979))

(assert (=> b!828926 m!771979))

(declare-fun m!772019 () Bool)

(assert (=> b!828926 m!772019))

(assert (=> b!828925 m!771979))

(assert (=> b!828925 m!771979))

(assert (=> b!828925 m!771993))

(declare-fun m!772021 () Bool)

(assert (=> d!105151 m!772021))

(assert (=> d!105151 m!771941))

(assert (=> b!828846 d!105151))

(declare-fun b!828936 () Bool)

(declare-fun e!462036 () Bool)

(declare-fun e!462035 () Bool)

(assert (=> b!828936 (= e!462036 e!462035)))

(declare-fun c!89616 () Bool)

(assert (=> b!828936 (= c!89616 (validKeyInArray!0 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828937 () Bool)

(declare-fun e!462037 () Bool)

(assert (=> b!828937 (= e!462035 e!462037)))

(declare-fun lt!375807 () (_ BitVec 64))

(assert (=> b!828937 (= lt!375807 (select (arr!22277 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375808 () Unit!28403)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!46482 (_ BitVec 64) (_ BitVec 32)) Unit!28403)

(assert (=> b!828937 (= lt!375808 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!375807 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!46482 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!828937 (arrayContainsKey!0 _keys!976 lt!375807 #b00000000000000000000000000000000)))

(declare-fun lt!375806 () Unit!28403)

(assert (=> b!828937 (= lt!375806 lt!375808)))

(declare-fun res!564869 () Bool)

(declare-datatypes ((SeekEntryResult!8729 0))(
  ( (MissingZero!8729 (index!37286 (_ BitVec 32))) (Found!8729 (index!37287 (_ BitVec 32))) (Intermediate!8729 (undefined!9541 Bool) (index!37288 (_ BitVec 32)) (x!69995 (_ BitVec 32))) (Undefined!8729) (MissingVacant!8729 (index!37289 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!46482 (_ BitVec 32)) SeekEntryResult!8729)

(assert (=> b!828937 (= res!564869 (= (seekEntryOrOpen!0 (select (arr!22277 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8729 #b00000000000000000000000000000000)))))

(assert (=> b!828937 (=> (not res!564869) (not e!462037))))

(declare-fun d!105153 () Bool)

(declare-fun res!564868 () Bool)

(assert (=> d!105153 (=> res!564868 e!462036)))

(assert (=> d!105153 (= res!564868 (bvsge #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(assert (=> d!105153 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!462036)))

(declare-fun b!828938 () Bool)

(declare-fun call!36077 () Bool)

(assert (=> b!828938 (= e!462037 call!36077)))

(declare-fun b!828939 () Bool)

(assert (=> b!828939 (= e!462035 call!36077)))

(declare-fun bm!36074 () Bool)

(assert (=> bm!36074 (= call!36077 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(assert (= (and d!105153 (not res!564868)) b!828936))

(assert (= (and b!828936 c!89616) b!828937))

(assert (= (and b!828936 (not c!89616)) b!828939))

(assert (= (and b!828937 res!564869) b!828938))

(assert (= (or b!828938 b!828939) bm!36074))

(assert (=> b!828936 m!771979))

(assert (=> b!828936 m!771979))

(assert (=> b!828936 m!771993))

(assert (=> b!828937 m!771979))

(declare-fun m!772023 () Bool)

(assert (=> b!828937 m!772023))

(declare-fun m!772025 () Bool)

(assert (=> b!828937 m!772025))

(assert (=> b!828937 m!771979))

(declare-fun m!772027 () Bool)

(assert (=> b!828937 m!772027))

(declare-fun m!772029 () Bool)

(assert (=> bm!36074 m!772029))

(assert (=> b!828853 d!105153))

(declare-fun b!828951 () Bool)

(declare-fun e!462046 () Bool)

(declare-fun contains!4197 (List!15980 (_ BitVec 64)) Bool)

(assert (=> b!828951 (= e!462046 (contains!4197 Nil!15977 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828952 () Bool)

(declare-fun e!462048 () Bool)

(declare-fun call!36080 () Bool)

(assert (=> b!828952 (= e!462048 call!36080)))

(declare-fun bm!36077 () Bool)

(declare-fun c!89619 () Bool)

(assert (=> bm!36077 (= call!36080 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89619 (Cons!15976 (select (arr!22277 _keys!976) #b00000000000000000000000000000000) Nil!15977) Nil!15977)))))

(declare-fun b!828953 () Bool)

(declare-fun e!462049 () Bool)

(assert (=> b!828953 (= e!462049 e!462048)))

(assert (=> b!828953 (= c!89619 (validKeyInArray!0 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828954 () Bool)

(declare-fun e!462047 () Bool)

(assert (=> b!828954 (= e!462047 e!462049)))

(declare-fun res!564877 () Bool)

(assert (=> b!828954 (=> (not res!564877) (not e!462049))))

(assert (=> b!828954 (= res!564877 (not e!462046))))

(declare-fun res!564876 () Bool)

(assert (=> b!828954 (=> (not res!564876) (not e!462046))))

(assert (=> b!828954 (= res!564876 (validKeyInArray!0 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828950 () Bool)

(assert (=> b!828950 (= e!462048 call!36080)))

(declare-fun d!105155 () Bool)

(declare-fun res!564878 () Bool)

(assert (=> d!105155 (=> res!564878 e!462047)))

(assert (=> d!105155 (= res!564878 (bvsge #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(assert (=> d!105155 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15977) e!462047)))

(assert (= (and d!105155 (not res!564878)) b!828954))

(assert (= (and b!828954 res!564876) b!828951))

(assert (= (and b!828954 res!564877) b!828953))

(assert (= (and b!828953 c!89619) b!828952))

(assert (= (and b!828953 (not c!89619)) b!828950))

(assert (= (or b!828952 b!828950) bm!36077))

(assert (=> b!828951 m!771979))

(assert (=> b!828951 m!771979))

(declare-fun m!772031 () Bool)

(assert (=> b!828951 m!772031))

(assert (=> bm!36077 m!771979))

(declare-fun m!772033 () Bool)

(assert (=> bm!36077 m!772033))

(assert (=> b!828953 m!771979))

(assert (=> b!828953 m!771979))

(assert (=> b!828953 m!771993))

(assert (=> b!828954 m!771979))

(assert (=> b!828954 m!771979))

(assert (=> b!828954 m!771993))

(assert (=> b!828852 d!105155))

(declare-fun d!105157 () Bool)

(assert (=> d!105157 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!71404 d!105157))

(declare-fun d!105159 () Bool)

(assert (=> d!105159 (= (array_inv!17725 _keys!976) (bvsge (size!22698 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!71404 d!105159))

(declare-fun d!105161 () Bool)

(assert (=> d!105161 (= (array_inv!17726 _values!788) (bvsge (size!22699 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!71404 d!105161))

(declare-fun b!828997 () Bool)

(declare-fun e!462078 () Bool)

(assert (=> b!828997 (= e!462078 (validKeyInArray!0 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828998 () Bool)

(declare-fun e!462081 () Bool)

(declare-fun e!462083 () Bool)

(assert (=> b!828998 (= e!462081 e!462083)))

(declare-fun c!89635 () Bool)

(assert (=> b!828998 (= c!89635 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!36098 () ListLongMap!8983)

(declare-fun bm!36092 () Bool)

(declare-fun c!89632 () Bool)

(declare-fun c!89633 () Bool)

(declare-fun call!36095 () ListLongMap!8983)

(declare-fun call!36100 () ListLongMap!8983)

(declare-fun call!36101 () ListLongMap!8983)

(assert (=> bm!36092 (= call!36101 (+!1939 (ite c!89632 call!36098 (ite c!89633 call!36095 call!36100)) (ite (or c!89632 c!89633) (tuple2!10147 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!828999 () Bool)

(declare-fun e!462080 () ListLongMap!8983)

(assert (=> b!828999 (= e!462080 (+!1939 call!36101 (tuple2!10147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!829000 () Bool)

(declare-fun e!462077 () ListLongMap!8983)

(assert (=> b!829000 (= e!462077 call!36100)))

(declare-fun b!829001 () Bool)

(declare-fun e!462087 () ListLongMap!8983)

(declare-fun call!36097 () ListLongMap!8983)

(assert (=> b!829001 (= e!462087 call!36097)))

(declare-fun bm!36093 () Bool)

(assert (=> bm!36093 (= call!36095 call!36098)))

(declare-fun bm!36094 () Bool)

(assert (=> bm!36094 (= call!36098 (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375861 () ListLongMap!8983)

(declare-fun e!462086 () Bool)

(declare-fun b!829002 () Bool)

(assert (=> b!829002 (= e!462086 (= (apply!368 lt!375861 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)) (get!11806 (select (arr!22278 _values!788) #b00000000000000000000000000000000) (dynLambda!978 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!829002 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22699 _values!788)))))

(assert (=> b!829002 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(declare-fun bm!36095 () Bool)

(assert (=> bm!36095 (= call!36097 call!36101)))

(declare-fun b!829004 () Bool)

(declare-fun e!462084 () Bool)

(declare-fun call!36099 () Bool)

(assert (=> b!829004 (= e!462084 (not call!36099))))

(declare-fun b!829005 () Bool)

(declare-fun res!564904 () Bool)

(assert (=> b!829005 (=> (not res!564904) (not e!462081))))

(assert (=> b!829005 (= res!564904 e!462084)))

(declare-fun c!89636 () Bool)

(assert (=> b!829005 (= c!89636 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!36096 () Bool)

(declare-fun call!36096 () Bool)

(assert (=> bm!36096 (= call!36096 (contains!4196 lt!375861 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!36097 () Bool)

(assert (=> bm!36097 (= call!36099 (contains!4196 lt!375861 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!829006 () Bool)

(declare-fun e!462076 () Bool)

(assert (=> b!829006 (= e!462083 e!462076)))

(declare-fun res!564903 () Bool)

(assert (=> b!829006 (= res!564903 call!36096)))

(assert (=> b!829006 (=> (not res!564903) (not e!462076))))

(declare-fun b!829007 () Bool)

(declare-fun e!462079 () Bool)

(assert (=> b!829007 (= e!462079 e!462086)))

(declare-fun res!564901 () Bool)

(assert (=> b!829007 (=> (not res!564901) (not e!462086))))

(assert (=> b!829007 (= res!564901 (contains!4196 lt!375861 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829007 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(declare-fun b!829008 () Bool)

(assert (=> b!829008 (= e!462077 call!36097)))

(declare-fun b!829009 () Bool)

(declare-fun e!462085 () Unit!28403)

(declare-fun Unit!28405 () Unit!28403)

(assert (=> b!829009 (= e!462085 Unit!28405)))

(declare-fun b!829010 () Bool)

(declare-fun res!564899 () Bool)

(assert (=> b!829010 (=> (not res!564899) (not e!462081))))

(assert (=> b!829010 (= res!564899 e!462079)))

(declare-fun res!564897 () Bool)

(assert (=> b!829010 (=> res!564897 e!462079)))

(assert (=> b!829010 (= res!564897 (not e!462078))))

(declare-fun res!564905 () Bool)

(assert (=> b!829010 (=> (not res!564905) (not e!462078))))

(assert (=> b!829010 (= res!564905 (bvslt #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(declare-fun b!829011 () Bool)

(declare-fun c!89637 () Bool)

(assert (=> b!829011 (= c!89637 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!829011 (= e!462087 e!462077)))

(declare-fun b!829012 () Bool)

(assert (=> b!829012 (= e!462076 (= (apply!368 lt!375861 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!829013 () Bool)

(assert (=> b!829013 (= e!462080 e!462087)))

(assert (=> b!829013 (= c!89633 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!36098 () Bool)

(assert (=> bm!36098 (= call!36100 call!36095)))

(declare-fun b!829014 () Bool)

(declare-fun e!462082 () Bool)

(assert (=> b!829014 (= e!462084 e!462082)))

(declare-fun res!564902 () Bool)

(assert (=> b!829014 (= res!564902 call!36099)))

(assert (=> b!829014 (=> (not res!564902) (not e!462082))))

(declare-fun b!829015 () Bool)

(declare-fun e!462088 () Bool)

(assert (=> b!829015 (= e!462088 (validKeyInArray!0 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!105163 () Bool)

(assert (=> d!105163 e!462081))

(declare-fun res!564898 () Bool)

(assert (=> d!105163 (=> (not res!564898) (not e!462081))))

(assert (=> d!105163 (= res!564898 (or (bvsge #b00000000000000000000000000000000 (size!22698 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22698 _keys!976)))))))

(declare-fun lt!375874 () ListLongMap!8983)

(assert (=> d!105163 (= lt!375861 lt!375874)))

(declare-fun lt!375869 () Unit!28403)

(assert (=> d!105163 (= lt!375869 e!462085)))

(declare-fun c!89634 () Bool)

(assert (=> d!105163 (= c!89634 e!462088)))

(declare-fun res!564900 () Bool)

(assert (=> d!105163 (=> (not res!564900) (not e!462088))))

(assert (=> d!105163 (= res!564900 (bvslt #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(assert (=> d!105163 (= lt!375874 e!462080)))

(assert (=> d!105163 (= c!89632 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!105163 (validMask!0 mask!1312)))

(assert (=> d!105163 (= (getCurrentListMap!2581 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375861)))

(declare-fun b!829003 () Bool)

(assert (=> b!829003 (= e!462083 (not call!36096))))

(declare-fun b!829016 () Bool)

(assert (=> b!829016 (= e!462082 (= (apply!368 lt!375861 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun b!829017 () Bool)

(declare-fun lt!375864 () Unit!28403)

(assert (=> b!829017 (= e!462085 lt!375864)))

(declare-fun lt!375858 () ListLongMap!8983)

(assert (=> b!829017 (= lt!375858 (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375854 () (_ BitVec 64))

(assert (=> b!829017 (= lt!375854 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375873 () (_ BitVec 64))

(assert (=> b!829017 (= lt!375873 (select (arr!22277 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375857 () Unit!28403)

(declare-fun addStillContains!319 (ListLongMap!8983 (_ BitVec 64) V!25229 (_ BitVec 64)) Unit!28403)

(assert (=> b!829017 (= lt!375857 (addStillContains!319 lt!375858 lt!375854 zeroValueBefore!34 lt!375873))))

(assert (=> b!829017 (contains!4196 (+!1939 lt!375858 (tuple2!10147 lt!375854 zeroValueBefore!34)) lt!375873)))

(declare-fun lt!375853 () Unit!28403)

(assert (=> b!829017 (= lt!375853 lt!375857)))

(declare-fun lt!375871 () ListLongMap!8983)

(assert (=> b!829017 (= lt!375871 (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375868 () (_ BitVec 64))

(assert (=> b!829017 (= lt!375868 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375862 () (_ BitVec 64))

(assert (=> b!829017 (= lt!375862 (select (arr!22277 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375870 () Unit!28403)

(declare-fun addApplyDifferent!319 (ListLongMap!8983 (_ BitVec 64) V!25229 (_ BitVec 64)) Unit!28403)

(assert (=> b!829017 (= lt!375870 (addApplyDifferent!319 lt!375871 lt!375868 minValue!754 lt!375862))))

(assert (=> b!829017 (= (apply!368 (+!1939 lt!375871 (tuple2!10147 lt!375868 minValue!754)) lt!375862) (apply!368 lt!375871 lt!375862))))

(declare-fun lt!375867 () Unit!28403)

(assert (=> b!829017 (= lt!375867 lt!375870)))

(declare-fun lt!375872 () ListLongMap!8983)

(assert (=> b!829017 (= lt!375872 (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375855 () (_ BitVec 64))

(assert (=> b!829017 (= lt!375855 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375860 () (_ BitVec 64))

(assert (=> b!829017 (= lt!375860 (select (arr!22277 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375856 () Unit!28403)

(assert (=> b!829017 (= lt!375856 (addApplyDifferent!319 lt!375872 lt!375855 zeroValueBefore!34 lt!375860))))

(assert (=> b!829017 (= (apply!368 (+!1939 lt!375872 (tuple2!10147 lt!375855 zeroValueBefore!34)) lt!375860) (apply!368 lt!375872 lt!375860))))

(declare-fun lt!375865 () Unit!28403)

(assert (=> b!829017 (= lt!375865 lt!375856)))

(declare-fun lt!375866 () ListLongMap!8983)

(assert (=> b!829017 (= lt!375866 (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375863 () (_ BitVec 64))

(assert (=> b!829017 (= lt!375863 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375859 () (_ BitVec 64))

(assert (=> b!829017 (= lt!375859 (select (arr!22277 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!829017 (= lt!375864 (addApplyDifferent!319 lt!375866 lt!375863 minValue!754 lt!375859))))

(assert (=> b!829017 (= (apply!368 (+!1939 lt!375866 (tuple2!10147 lt!375863 minValue!754)) lt!375859) (apply!368 lt!375866 lt!375859))))

(assert (= (and d!105163 c!89632) b!828999))

(assert (= (and d!105163 (not c!89632)) b!829013))

(assert (= (and b!829013 c!89633) b!829001))

(assert (= (and b!829013 (not c!89633)) b!829011))

(assert (= (and b!829011 c!89637) b!829008))

(assert (= (and b!829011 (not c!89637)) b!829000))

(assert (= (or b!829008 b!829000) bm!36098))

(assert (= (or b!829001 bm!36098) bm!36093))

(assert (= (or b!829001 b!829008) bm!36095))

(assert (= (or b!828999 bm!36093) bm!36094))

(assert (= (or b!828999 bm!36095) bm!36092))

(assert (= (and d!105163 res!564900) b!829015))

(assert (= (and d!105163 c!89634) b!829017))

(assert (= (and d!105163 (not c!89634)) b!829009))

(assert (= (and d!105163 res!564898) b!829010))

(assert (= (and b!829010 res!564905) b!828997))

(assert (= (and b!829010 (not res!564897)) b!829007))

(assert (= (and b!829007 res!564901) b!829002))

(assert (= (and b!829010 res!564899) b!829005))

(assert (= (and b!829005 c!89636) b!829014))

(assert (= (and b!829005 (not c!89636)) b!829004))

(assert (= (and b!829014 res!564902) b!829016))

(assert (= (or b!829014 b!829004) bm!36097))

(assert (= (and b!829005 res!564904) b!828998))

(assert (= (and b!828998 c!89635) b!829006))

(assert (= (and b!828998 (not c!89635)) b!829003))

(assert (= (and b!829006 res!564903) b!829012))

(assert (= (or b!829006 b!829003) bm!36096))

(declare-fun b_lambda!11289 () Bool)

(assert (=> (not b_lambda!11289) (not b!829002)))

(assert (=> b!829002 t!22348))

(declare-fun b_and!22473 () Bool)

(assert (= b_and!22471 (and (=> t!22348 result!7999) b_and!22473)))

(declare-fun m!772035 () Bool)

(assert (=> bm!36092 m!772035))

(declare-fun m!772037 () Bool)

(assert (=> bm!36096 m!772037))

(assert (=> bm!36094 m!771935))

(assert (=> b!829002 m!771979))

(declare-fun m!772039 () Bool)

(assert (=> b!829002 m!772039))

(assert (=> b!829002 m!771975))

(assert (=> b!829002 m!771973))

(assert (=> b!829002 m!771979))

(assert (=> b!829002 m!771973))

(assert (=> b!829002 m!771975))

(assert (=> b!829002 m!771977))

(assert (=> b!829007 m!771979))

(assert (=> b!829007 m!771979))

(declare-fun m!772041 () Bool)

(assert (=> b!829007 m!772041))

(declare-fun m!772043 () Bool)

(assert (=> bm!36097 m!772043))

(assert (=> d!105163 m!771941))

(assert (=> b!828997 m!771979))

(assert (=> b!828997 m!771979))

(assert (=> b!828997 m!771993))

(declare-fun m!772045 () Bool)

(assert (=> b!828999 m!772045))

(assert (=> b!829015 m!771979))

(assert (=> b!829015 m!771979))

(assert (=> b!829015 m!771993))

(declare-fun m!772047 () Bool)

(assert (=> b!829016 m!772047))

(declare-fun m!772049 () Bool)

(assert (=> b!829012 m!772049))

(declare-fun m!772051 () Bool)

(assert (=> b!829017 m!772051))

(declare-fun m!772053 () Bool)

(assert (=> b!829017 m!772053))

(declare-fun m!772055 () Bool)

(assert (=> b!829017 m!772055))

(declare-fun m!772057 () Bool)

(assert (=> b!829017 m!772057))

(declare-fun m!772059 () Bool)

(assert (=> b!829017 m!772059))

(assert (=> b!829017 m!772055))

(declare-fun m!772061 () Bool)

(assert (=> b!829017 m!772061))

(assert (=> b!829017 m!771979))

(declare-fun m!772063 () Bool)

(assert (=> b!829017 m!772063))

(declare-fun m!772065 () Bool)

(assert (=> b!829017 m!772065))

(assert (=> b!829017 m!772063))

(assert (=> b!829017 m!771935))

(declare-fun m!772067 () Bool)

(assert (=> b!829017 m!772067))

(declare-fun m!772069 () Bool)

(assert (=> b!829017 m!772069))

(declare-fun m!772071 () Bool)

(assert (=> b!829017 m!772071))

(declare-fun m!772073 () Bool)

(assert (=> b!829017 m!772073))

(assert (=> b!829017 m!772071))

(declare-fun m!772075 () Bool)

(assert (=> b!829017 m!772075))

(declare-fun m!772077 () Bool)

(assert (=> b!829017 m!772077))

(assert (=> b!829017 m!772069))

(declare-fun m!772079 () Bool)

(assert (=> b!829017 m!772079))

(assert (=> b!828848 d!105163))

(declare-fun d!105165 () Bool)

(declare-fun e!462091 () Bool)

(assert (=> d!105165 e!462091))

(declare-fun res!564910 () Bool)

(assert (=> d!105165 (=> (not res!564910) (not e!462091))))

(declare-fun lt!375883 () ListLongMap!8983)

(assert (=> d!105165 (= res!564910 (contains!4196 lt!375883 (_1!5083 (tuple2!10147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun lt!375884 () List!15979)

(assert (=> d!105165 (= lt!375883 (ListLongMap!8984 lt!375884))))

(declare-fun lt!375885 () Unit!28403)

(declare-fun lt!375886 () Unit!28403)

(assert (=> d!105165 (= lt!375885 lt!375886)))

(declare-datatypes ((Option!416 0))(
  ( (Some!415 (v!10069 V!25229)) (None!414) )
))
(declare-fun getValueByKey!410 (List!15979 (_ BitVec 64)) Option!416)

(assert (=> d!105165 (= (getValueByKey!410 lt!375884 (_1!5083 (tuple2!10147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!415 (_2!5083 (tuple2!10147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun lemmaContainsTupThenGetReturnValue!226 (List!15979 (_ BitVec 64) V!25229) Unit!28403)

(assert (=> d!105165 (= lt!375886 (lemmaContainsTupThenGetReturnValue!226 lt!375884 (_1!5083 (tuple2!10147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5083 (tuple2!10147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun insertStrictlySorted!264 (List!15979 (_ BitVec 64) V!25229) List!15979)

(assert (=> d!105165 (= lt!375884 (insertStrictlySorted!264 (toList!4507 lt!375753) (_1!5083 (tuple2!10147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5083 (tuple2!10147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!105165 (= (+!1939 lt!375753 (tuple2!10147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) lt!375883)))

(declare-fun b!829022 () Bool)

(declare-fun res!564911 () Bool)

(assert (=> b!829022 (=> (not res!564911) (not e!462091))))

(assert (=> b!829022 (= res!564911 (= (getValueByKey!410 (toList!4507 lt!375883) (_1!5083 (tuple2!10147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!415 (_2!5083 (tuple2!10147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!829023 () Bool)

(declare-fun contains!4198 (List!15979 tuple2!10146) Bool)

(assert (=> b!829023 (= e!462091 (contains!4198 (toList!4507 lt!375883) (tuple2!10147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(assert (= (and d!105165 res!564910) b!829022))

(assert (= (and b!829022 res!564911) b!829023))

(declare-fun m!772081 () Bool)

(assert (=> d!105165 m!772081))

(declare-fun m!772083 () Bool)

(assert (=> d!105165 m!772083))

(declare-fun m!772085 () Bool)

(assert (=> d!105165 m!772085))

(declare-fun m!772087 () Bool)

(assert (=> d!105165 m!772087))

(declare-fun m!772089 () Bool)

(assert (=> b!829022 m!772089))

(declare-fun m!772091 () Bool)

(assert (=> b!829023 m!772091))

(assert (=> b!828848 d!105165))

(declare-fun b!829024 () Bool)

(declare-fun e!462094 () Bool)

(assert (=> b!829024 (= e!462094 (validKeyInArray!0 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!829025 () Bool)

(declare-fun e!462097 () Bool)

(declare-fun e!462099 () Bool)

(assert (=> b!829025 (= e!462097 e!462099)))

(declare-fun c!89641 () Bool)

(assert (=> b!829025 (= c!89641 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!36102 () ListLongMap!8983)

(declare-fun call!36105 () ListLongMap!8983)

(declare-fun call!36108 () ListLongMap!8983)

(declare-fun c!89638 () Bool)

(declare-fun c!89639 () Bool)

(declare-fun bm!36099 () Bool)

(declare-fun call!36107 () ListLongMap!8983)

(assert (=> bm!36099 (= call!36108 (+!1939 (ite c!89638 call!36105 (ite c!89639 call!36102 call!36107)) (ite (or c!89638 c!89639) (tuple2!10147 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!829026 () Bool)

(declare-fun e!462096 () ListLongMap!8983)

(assert (=> b!829026 (= e!462096 (+!1939 call!36108 (tuple2!10147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!829027 () Bool)

(declare-fun e!462093 () ListLongMap!8983)

(assert (=> b!829027 (= e!462093 call!36107)))

(declare-fun b!829028 () Bool)

(declare-fun e!462103 () ListLongMap!8983)

(declare-fun call!36104 () ListLongMap!8983)

(assert (=> b!829028 (= e!462103 call!36104)))

(declare-fun bm!36100 () Bool)

(assert (=> bm!36100 (= call!36102 call!36105)))

(declare-fun bm!36101 () Bool)

(assert (=> bm!36101 (= call!36105 (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun e!462102 () Bool)

(declare-fun lt!375895 () ListLongMap!8983)

(declare-fun b!829029 () Bool)

(assert (=> b!829029 (= e!462102 (= (apply!368 lt!375895 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)) (get!11806 (select (arr!22278 _values!788) #b00000000000000000000000000000000) (dynLambda!978 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!829029 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22699 _values!788)))))

(assert (=> b!829029 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(declare-fun bm!36102 () Bool)

(assert (=> bm!36102 (= call!36104 call!36108)))

(declare-fun b!829031 () Bool)

(declare-fun e!462100 () Bool)

(declare-fun call!36106 () Bool)

(assert (=> b!829031 (= e!462100 (not call!36106))))

(declare-fun b!829032 () Bool)

(declare-fun res!564919 () Bool)

(assert (=> b!829032 (=> (not res!564919) (not e!462097))))

(assert (=> b!829032 (= res!564919 e!462100)))

(declare-fun c!89642 () Bool)

(assert (=> b!829032 (= c!89642 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!36103 () Bool)

(declare-fun call!36103 () Bool)

(assert (=> bm!36103 (= call!36103 (contains!4196 lt!375895 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!36104 () Bool)

(assert (=> bm!36104 (= call!36106 (contains!4196 lt!375895 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!829033 () Bool)

(declare-fun e!462092 () Bool)

(assert (=> b!829033 (= e!462099 e!462092)))

(declare-fun res!564918 () Bool)

(assert (=> b!829033 (= res!564918 call!36103)))

(assert (=> b!829033 (=> (not res!564918) (not e!462092))))

(declare-fun b!829034 () Bool)

(declare-fun e!462095 () Bool)

(assert (=> b!829034 (= e!462095 e!462102)))

(declare-fun res!564916 () Bool)

(assert (=> b!829034 (=> (not res!564916) (not e!462102))))

(assert (=> b!829034 (= res!564916 (contains!4196 lt!375895 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829034 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(declare-fun b!829035 () Bool)

(assert (=> b!829035 (= e!462093 call!36104)))

(declare-fun b!829036 () Bool)

(declare-fun e!462101 () Unit!28403)

(declare-fun Unit!28406 () Unit!28403)

(assert (=> b!829036 (= e!462101 Unit!28406)))

(declare-fun b!829037 () Bool)

(declare-fun res!564914 () Bool)

(assert (=> b!829037 (=> (not res!564914) (not e!462097))))

(assert (=> b!829037 (= res!564914 e!462095)))

(declare-fun res!564912 () Bool)

(assert (=> b!829037 (=> res!564912 e!462095)))

(assert (=> b!829037 (= res!564912 (not e!462094))))

(declare-fun res!564920 () Bool)

(assert (=> b!829037 (=> (not res!564920) (not e!462094))))

(assert (=> b!829037 (= res!564920 (bvslt #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(declare-fun b!829038 () Bool)

(declare-fun c!89643 () Bool)

(assert (=> b!829038 (= c!89643 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!829038 (= e!462103 e!462093)))

(declare-fun b!829039 () Bool)

(assert (=> b!829039 (= e!462092 (= (apply!368 lt!375895 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!829040 () Bool)

(assert (=> b!829040 (= e!462096 e!462103)))

(assert (=> b!829040 (= c!89639 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!36105 () Bool)

(assert (=> bm!36105 (= call!36107 call!36102)))

(declare-fun b!829041 () Bool)

(declare-fun e!462098 () Bool)

(assert (=> b!829041 (= e!462100 e!462098)))

(declare-fun res!564917 () Bool)

(assert (=> b!829041 (= res!564917 call!36106)))

(assert (=> b!829041 (=> (not res!564917) (not e!462098))))

(declare-fun b!829042 () Bool)

(declare-fun e!462104 () Bool)

(assert (=> b!829042 (= e!462104 (validKeyInArray!0 (select (arr!22277 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!105167 () Bool)

(assert (=> d!105167 e!462097))

(declare-fun res!564913 () Bool)

(assert (=> d!105167 (=> (not res!564913) (not e!462097))))

(assert (=> d!105167 (= res!564913 (or (bvsge #b00000000000000000000000000000000 (size!22698 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22698 _keys!976)))))))

(declare-fun lt!375908 () ListLongMap!8983)

(assert (=> d!105167 (= lt!375895 lt!375908)))

(declare-fun lt!375903 () Unit!28403)

(assert (=> d!105167 (= lt!375903 e!462101)))

(declare-fun c!89640 () Bool)

(assert (=> d!105167 (= c!89640 e!462104)))

(declare-fun res!564915 () Bool)

(assert (=> d!105167 (=> (not res!564915) (not e!462104))))

(assert (=> d!105167 (= res!564915 (bvslt #b00000000000000000000000000000000 (size!22698 _keys!976)))))

(assert (=> d!105167 (= lt!375908 e!462096)))

(assert (=> d!105167 (= c!89638 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!105167 (validMask!0 mask!1312)))

(assert (=> d!105167 (= (getCurrentListMap!2581 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375895)))

(declare-fun b!829030 () Bool)

(assert (=> b!829030 (= e!462099 (not call!36103))))

(declare-fun b!829043 () Bool)

(assert (=> b!829043 (= e!462098 (= (apply!368 lt!375895 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!34))))

(declare-fun b!829044 () Bool)

(declare-fun lt!375898 () Unit!28403)

(assert (=> b!829044 (= e!462101 lt!375898)))

(declare-fun lt!375892 () ListLongMap!8983)

(assert (=> b!829044 (= lt!375892 (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375888 () (_ BitVec 64))

(assert (=> b!829044 (= lt!375888 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375907 () (_ BitVec 64))

(assert (=> b!829044 (= lt!375907 (select (arr!22277 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375891 () Unit!28403)

(assert (=> b!829044 (= lt!375891 (addStillContains!319 lt!375892 lt!375888 zeroValueAfter!34 lt!375907))))

(assert (=> b!829044 (contains!4196 (+!1939 lt!375892 (tuple2!10147 lt!375888 zeroValueAfter!34)) lt!375907)))

(declare-fun lt!375887 () Unit!28403)

(assert (=> b!829044 (= lt!375887 lt!375891)))

(declare-fun lt!375905 () ListLongMap!8983)

(assert (=> b!829044 (= lt!375905 (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375902 () (_ BitVec 64))

(assert (=> b!829044 (= lt!375902 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375896 () (_ BitVec 64))

(assert (=> b!829044 (= lt!375896 (select (arr!22277 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375904 () Unit!28403)

(assert (=> b!829044 (= lt!375904 (addApplyDifferent!319 lt!375905 lt!375902 minValue!754 lt!375896))))

(assert (=> b!829044 (= (apply!368 (+!1939 lt!375905 (tuple2!10147 lt!375902 minValue!754)) lt!375896) (apply!368 lt!375905 lt!375896))))

(declare-fun lt!375901 () Unit!28403)

(assert (=> b!829044 (= lt!375901 lt!375904)))

(declare-fun lt!375906 () ListLongMap!8983)

(assert (=> b!829044 (= lt!375906 (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375889 () (_ BitVec 64))

(assert (=> b!829044 (= lt!375889 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375894 () (_ BitVec 64))

(assert (=> b!829044 (= lt!375894 (select (arr!22277 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375890 () Unit!28403)

(assert (=> b!829044 (= lt!375890 (addApplyDifferent!319 lt!375906 lt!375889 zeroValueAfter!34 lt!375894))))

(assert (=> b!829044 (= (apply!368 (+!1939 lt!375906 (tuple2!10147 lt!375889 zeroValueAfter!34)) lt!375894) (apply!368 lt!375906 lt!375894))))

(declare-fun lt!375899 () Unit!28403)

(assert (=> b!829044 (= lt!375899 lt!375890)))

(declare-fun lt!375900 () ListLongMap!8983)

(assert (=> b!829044 (= lt!375900 (getCurrentListMapNoExtraKeys!2509 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375897 () (_ BitVec 64))

(assert (=> b!829044 (= lt!375897 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375893 () (_ BitVec 64))

(assert (=> b!829044 (= lt!375893 (select (arr!22277 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!829044 (= lt!375898 (addApplyDifferent!319 lt!375900 lt!375897 minValue!754 lt!375893))))

(assert (=> b!829044 (= (apply!368 (+!1939 lt!375900 (tuple2!10147 lt!375897 minValue!754)) lt!375893) (apply!368 lt!375900 lt!375893))))

(assert (= (and d!105167 c!89638) b!829026))

(assert (= (and d!105167 (not c!89638)) b!829040))

(assert (= (and b!829040 c!89639) b!829028))

(assert (= (and b!829040 (not c!89639)) b!829038))

(assert (= (and b!829038 c!89643) b!829035))

(assert (= (and b!829038 (not c!89643)) b!829027))

(assert (= (or b!829035 b!829027) bm!36105))

(assert (= (or b!829028 bm!36105) bm!36100))

(assert (= (or b!829028 b!829035) bm!36102))

(assert (= (or b!829026 bm!36100) bm!36101))

(assert (= (or b!829026 bm!36102) bm!36099))

(assert (= (and d!105167 res!564915) b!829042))

(assert (= (and d!105167 c!89640) b!829044))

(assert (= (and d!105167 (not c!89640)) b!829036))

(assert (= (and d!105167 res!564913) b!829037))

(assert (= (and b!829037 res!564920) b!829024))

(assert (= (and b!829037 (not res!564912)) b!829034))

(assert (= (and b!829034 res!564916) b!829029))

(assert (= (and b!829037 res!564914) b!829032))

(assert (= (and b!829032 c!89642) b!829041))

(assert (= (and b!829032 (not c!89642)) b!829031))

(assert (= (and b!829041 res!564917) b!829043))

(assert (= (or b!829041 b!829031) bm!36104))

(assert (= (and b!829032 res!564919) b!829025))

(assert (= (and b!829025 c!89641) b!829033))

(assert (= (and b!829025 (not c!89641)) b!829030))

(assert (= (and b!829033 res!564918) b!829039))

(assert (= (or b!829033 b!829030) bm!36103))

(declare-fun b_lambda!11291 () Bool)

(assert (=> (not b_lambda!11291) (not b!829029)))

(assert (=> b!829029 t!22348))

(declare-fun b_and!22475 () Bool)

(assert (= b_and!22473 (and (=> t!22348 result!7999) b_and!22475)))

(declare-fun m!772093 () Bool)

(assert (=> bm!36099 m!772093))

(declare-fun m!772095 () Bool)

(assert (=> bm!36103 m!772095))

(assert (=> bm!36101 m!771933))

(assert (=> b!829029 m!771979))

(declare-fun m!772097 () Bool)

(assert (=> b!829029 m!772097))

(assert (=> b!829029 m!771975))

(assert (=> b!829029 m!771973))

(assert (=> b!829029 m!771979))

(assert (=> b!829029 m!771973))

(assert (=> b!829029 m!771975))

(assert (=> b!829029 m!771977))

(assert (=> b!829034 m!771979))

(assert (=> b!829034 m!771979))

(declare-fun m!772099 () Bool)

(assert (=> b!829034 m!772099))

(declare-fun m!772101 () Bool)

(assert (=> bm!36104 m!772101))

(assert (=> d!105167 m!771941))

(assert (=> b!829024 m!771979))

(assert (=> b!829024 m!771979))

(assert (=> b!829024 m!771993))

(declare-fun m!772103 () Bool)

(assert (=> b!829026 m!772103))

(assert (=> b!829042 m!771979))

(assert (=> b!829042 m!771979))

(assert (=> b!829042 m!771993))

(declare-fun m!772105 () Bool)

(assert (=> b!829043 m!772105))

(declare-fun m!772107 () Bool)

(assert (=> b!829039 m!772107))

(declare-fun m!772109 () Bool)

(assert (=> b!829044 m!772109))

(declare-fun m!772111 () Bool)

(assert (=> b!829044 m!772111))

(declare-fun m!772113 () Bool)

(assert (=> b!829044 m!772113))

(declare-fun m!772115 () Bool)

(assert (=> b!829044 m!772115))

(declare-fun m!772117 () Bool)

(assert (=> b!829044 m!772117))

(assert (=> b!829044 m!772113))

(declare-fun m!772119 () Bool)

(assert (=> b!829044 m!772119))

(assert (=> b!829044 m!771979))

(declare-fun m!772121 () Bool)

(assert (=> b!829044 m!772121))

(declare-fun m!772123 () Bool)

(assert (=> b!829044 m!772123))

(assert (=> b!829044 m!772121))

(assert (=> b!829044 m!771933))

(declare-fun m!772125 () Bool)

(assert (=> b!829044 m!772125))

(declare-fun m!772127 () Bool)

(assert (=> b!829044 m!772127))

(declare-fun m!772129 () Bool)

(assert (=> b!829044 m!772129))

(declare-fun m!772131 () Bool)

(assert (=> b!829044 m!772131))

(assert (=> b!829044 m!772129))

(declare-fun m!772133 () Bool)

(assert (=> b!829044 m!772133))

(declare-fun m!772135 () Bool)

(assert (=> b!829044 m!772135))

(assert (=> b!829044 m!772127))

(declare-fun m!772137 () Bool)

(assert (=> b!829044 m!772137))

(assert (=> b!828848 d!105167))

(declare-fun mapNonEmpty!24403 () Bool)

(declare-fun mapRes!24403 () Bool)

(declare-fun tp!47167 () Bool)

(declare-fun e!462109 () Bool)

(assert (=> mapNonEmpty!24403 (= mapRes!24403 (and tp!47167 e!462109))))

(declare-fun mapValue!24403 () ValueCell!7170)

(declare-fun mapRest!24403 () (Array (_ BitVec 32) ValueCell!7170))

(declare-fun mapKey!24403 () (_ BitVec 32))

(assert (=> mapNonEmpty!24403 (= mapRest!24397 (store mapRest!24403 mapKey!24403 mapValue!24403))))

(declare-fun condMapEmpty!24403 () Bool)

(declare-fun mapDefault!24403 () ValueCell!7170)

(assert (=> mapNonEmpty!24397 (= condMapEmpty!24403 (= mapRest!24397 ((as const (Array (_ BitVec 32) ValueCell!7170)) mapDefault!24403)))))

(declare-fun e!462110 () Bool)

(assert (=> mapNonEmpty!24397 (= tp!47158 (and e!462110 mapRes!24403))))

(declare-fun b!829052 () Bool)

(assert (=> b!829052 (= e!462110 tp_is_empty!15171)))

(declare-fun mapIsEmpty!24403 () Bool)

(assert (=> mapIsEmpty!24403 mapRes!24403))

(declare-fun b!829051 () Bool)

(assert (=> b!829051 (= e!462109 tp_is_empty!15171)))

(assert (= (and mapNonEmpty!24397 condMapEmpty!24403) mapIsEmpty!24403))

(assert (= (and mapNonEmpty!24397 (not condMapEmpty!24403)) mapNonEmpty!24403))

(assert (= (and mapNonEmpty!24403 ((_ is ValueCellFull!7170) mapValue!24403)) b!829051))

(assert (= (and mapNonEmpty!24397 ((_ is ValueCellFull!7170) mapDefault!24403)) b!829052))

(declare-fun m!772139 () Bool)

(assert (=> mapNonEmpty!24403 m!772139))

(declare-fun b_lambda!11293 () Bool)

(assert (= b_lambda!11291 (or (and start!71404 b_free!13461) b_lambda!11293)))

(declare-fun b_lambda!11295 () Bool)

(assert (= b_lambda!11287 (or (and start!71404 b_free!13461) b_lambda!11295)))

(declare-fun b_lambda!11297 () Bool)

(assert (= b_lambda!11285 (or (and start!71404 b_free!13461) b_lambda!11297)))

(declare-fun b_lambda!11299 () Bool)

(assert (= b_lambda!11283 (or (and start!71404 b_free!13461) b_lambda!11299)))

(declare-fun b_lambda!11301 () Bool)

(assert (= b_lambda!11281 (or (and start!71404 b_free!13461) b_lambda!11301)))

(declare-fun b_lambda!11303 () Bool)

(assert (= b_lambda!11289 (or (and start!71404 b_free!13461) b_lambda!11303)))

(check-sat (not b!829017) (not d!105151) (not b!829023) (not b!828912) (not bm!36070) (not b!828926) (not d!105163) (not b!828902) (not bm!36099) (not b!829043) (not b!829026) (not bm!36074) (not b!828997) (not b!828916) (not b_next!13461) (not b!829007) (not b!829002) (not bm!36097) (not b!828908) (not b!828911) (not b!828913) (not d!105165) (not b_lambda!11301) (not b!828917) (not b_lambda!11303) (not b!828903) (not b!828937) (not b!829034) (not bm!36071) (not mapNonEmpty!24403) (not bm!36077) (not b_lambda!11299) (not b!829024) (not b!829016) (not b!828927) (not b!828953) (not b!828951) (not b!829029) b_and!22475 (not b!829022) (not b!828921) (not b!829044) (not b!828920) (not b_lambda!11297) (not d!105149) (not b!829012) (not b!828925) (not bm!36104) (not b!828999) (not b!828907) (not d!105147) (not b_lambda!11295) (not d!105167) (not b!829042) (not b!828906) (not bm!36103) (not b!829039) (not b!828936) (not bm!36096) (not b!828922) (not b!828954) (not b!829015) tp_is_empty!15171 (not b_lambda!11293) (not bm!36101) (not bm!36094) (not bm!36092))
(check-sat b_and!22475 (not b_next!13461))
