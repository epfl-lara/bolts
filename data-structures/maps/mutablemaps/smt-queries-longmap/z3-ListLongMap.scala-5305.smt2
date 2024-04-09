; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71060 () Bool)

(assert start!71060)

(declare-fun b_free!13239 () Bool)

(declare-fun b_next!13239 () Bool)

(assert (=> start!71060 (= b_free!13239 (not b_next!13239))))

(declare-fun tp!46470 () Bool)

(declare-fun b_and!22161 () Bool)

(assert (=> start!71060 (= tp!46470 b_and!22161)))

(declare-fun b!824749 () Bool)

(declare-fun e!458979 () Bool)

(declare-datatypes ((array!46044 0))(
  ( (array!46045 (arr!22065 (Array (_ BitVec 32) (_ BitVec 64))) (size!22486 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46044)

(assert (=> b!824749 (= e!458979 (bvsle #b00000000000000000000000000000000 (size!22486 _keys!976)))))

(declare-datatypes ((V!24933 0))(
  ( (V!24934 (val!7522 Int)) )
))
(declare-fun zeroValueBefore!34 () V!24933)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24933)

(declare-datatypes ((ValueCell!7059 0))(
  ( (ValueCellFull!7059 (v!9951 V!24933)) (EmptyCell!7059) )
))
(declare-datatypes ((array!46046 0))(
  ( (array!46047 (arr!22066 (Array (_ BitVec 32) ValueCell!7059)) (size!22487 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46046)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-datatypes ((tuple2!9952 0))(
  ( (tuple2!9953 (_1!4986 (_ BitVec 64)) (_2!4986 V!24933)) )
))
(declare-datatypes ((List!15800 0))(
  ( (Nil!15797) (Cons!15796 (h!16925 tuple2!9952) (t!22151 List!15800)) )
))
(declare-datatypes ((ListLongMap!8789 0))(
  ( (ListLongMap!8790 (toList!4410 List!15800)) )
))
(declare-fun lt!372007 () ListLongMap!8789)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2522 (array!46044 array!46046 (_ BitVec 32) (_ BitVec 32) V!24933 V!24933 (_ BitVec 32) Int) ListLongMap!8789)

(assert (=> b!824749 (= lt!372007 (getCurrentListMap!2522 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824750 () Bool)

(declare-fun res!562386 () Bool)

(declare-fun e!458982 () Bool)

(assert (=> b!824750 (=> (not res!562386) (not e!458982))))

(declare-datatypes ((List!15801 0))(
  ( (Nil!15798) (Cons!15797 (h!16926 (_ BitVec 64)) (t!22152 List!15801)) )
))
(declare-fun arrayNoDuplicates!0 (array!46044 (_ BitVec 32) List!15801) Bool)

(assert (=> b!824750 (= res!562386 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15798))))

(declare-fun b!824752 () Bool)

(assert (=> b!824752 (= e!458982 (not e!458979))))

(declare-fun res!562387 () Bool)

(assert (=> b!824752 (=> res!562387 e!458979)))

(assert (=> b!824752 (= res!562387 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!372006 () ListLongMap!8789)

(declare-fun lt!372004 () ListLongMap!8789)

(assert (=> b!824752 (= lt!372006 lt!372004)))

(declare-fun zeroValueAfter!34 () V!24933)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28262 0))(
  ( (Unit!28263) )
))
(declare-fun lt!372005 () Unit!28262)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!546 (array!46044 array!46046 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24933 V!24933 V!24933 V!24933 (_ BitVec 32) Int) Unit!28262)

(assert (=> b!824752 (= lt!372005 (lemmaNoChangeToArrayThenSameMapNoExtras!546 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2430 (array!46044 array!46046 (_ BitVec 32) (_ BitVec 32) V!24933 V!24933 (_ BitVec 32) Int) ListLongMap!8789)

(assert (=> b!824752 (= lt!372004 (getCurrentListMapNoExtraKeys!2430 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824752 (= lt!372006 (getCurrentListMapNoExtraKeys!2430 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824753 () Bool)

(declare-fun res!562385 () Bool)

(assert (=> b!824753 (=> (not res!562385) (not e!458982))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46044 (_ BitVec 32)) Bool)

(assert (=> b!824753 (= res!562385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!824754 () Bool)

(declare-fun e!458981 () Bool)

(declare-fun tp_is_empty!14949 () Bool)

(assert (=> b!824754 (= e!458981 tp_is_empty!14949)))

(declare-fun res!562384 () Bool)

(assert (=> start!71060 (=> (not res!562384) (not e!458982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71060 (= res!562384 (validMask!0 mask!1312))))

(assert (=> start!71060 e!458982))

(assert (=> start!71060 tp_is_empty!14949))

(declare-fun array_inv!17581 (array!46044) Bool)

(assert (=> start!71060 (array_inv!17581 _keys!976)))

(assert (=> start!71060 true))

(declare-fun e!458980 () Bool)

(declare-fun array_inv!17582 (array!46046) Bool)

(assert (=> start!71060 (and (array_inv!17582 _values!788) e!458980)))

(assert (=> start!71060 tp!46470))

(declare-fun b!824751 () Bool)

(declare-fun e!458983 () Bool)

(assert (=> b!824751 (= e!458983 tp_is_empty!14949)))

(declare-fun mapNonEmpty!24043 () Bool)

(declare-fun mapRes!24043 () Bool)

(declare-fun tp!46471 () Bool)

(assert (=> mapNonEmpty!24043 (= mapRes!24043 (and tp!46471 e!458983))))

(declare-fun mapKey!24043 () (_ BitVec 32))

(declare-fun mapRest!24043 () (Array (_ BitVec 32) ValueCell!7059))

(declare-fun mapValue!24043 () ValueCell!7059)

(assert (=> mapNonEmpty!24043 (= (arr!22066 _values!788) (store mapRest!24043 mapKey!24043 mapValue!24043))))

(declare-fun b!824755 () Bool)

(assert (=> b!824755 (= e!458980 (and e!458981 mapRes!24043))))

(declare-fun condMapEmpty!24043 () Bool)

(declare-fun mapDefault!24043 () ValueCell!7059)

(assert (=> b!824755 (= condMapEmpty!24043 (= (arr!22066 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7059)) mapDefault!24043)))))

(declare-fun b!824756 () Bool)

(declare-fun res!562388 () Bool)

(assert (=> b!824756 (=> (not res!562388) (not e!458982))))

(assert (=> b!824756 (= res!562388 (and (= (size!22487 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22486 _keys!976) (size!22487 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!24043 () Bool)

(assert (=> mapIsEmpty!24043 mapRes!24043))

(assert (= (and start!71060 res!562384) b!824756))

(assert (= (and b!824756 res!562388) b!824753))

(assert (= (and b!824753 res!562385) b!824750))

(assert (= (and b!824750 res!562386) b!824752))

(assert (= (and b!824752 (not res!562387)) b!824749))

(assert (= (and b!824755 condMapEmpty!24043) mapIsEmpty!24043))

(assert (= (and b!824755 (not condMapEmpty!24043)) mapNonEmpty!24043))

(get-info :version)

(assert (= (and mapNonEmpty!24043 ((_ is ValueCellFull!7059) mapValue!24043)) b!824751))

(assert (= (and b!824755 ((_ is ValueCellFull!7059) mapDefault!24043)) b!824754))

(assert (= start!71060 b!824755))

(declare-fun m!766851 () Bool)

(assert (=> b!824753 m!766851))

(declare-fun m!766853 () Bool)

(assert (=> mapNonEmpty!24043 m!766853))

(declare-fun m!766855 () Bool)

(assert (=> b!824749 m!766855))

(declare-fun m!766857 () Bool)

(assert (=> b!824750 m!766857))

(declare-fun m!766859 () Bool)

(assert (=> start!71060 m!766859))

(declare-fun m!766861 () Bool)

(assert (=> start!71060 m!766861))

(declare-fun m!766863 () Bool)

(assert (=> start!71060 m!766863))

(declare-fun m!766865 () Bool)

(assert (=> b!824752 m!766865))

(declare-fun m!766867 () Bool)

(assert (=> b!824752 m!766867))

(declare-fun m!766869 () Bool)

(assert (=> b!824752 m!766869))

(check-sat (not b!824750) (not start!71060) (not b!824749) (not b!824753) (not mapNonEmpty!24043) tp_is_empty!14949 (not b!824752) (not b_next!13239) b_and!22161)
(check-sat b_and!22161 (not b_next!13239))
(get-model)

(declare-fun b!824789 () Bool)

(declare-fun e!459009 () Bool)

(declare-fun call!35842 () Bool)

(assert (=> b!824789 (= e!459009 call!35842)))

(declare-fun b!824790 () Bool)

(declare-fun e!459010 () Bool)

(assert (=> b!824790 (= e!459009 e!459010)))

(declare-fun lt!372028 () (_ BitVec 64))

(assert (=> b!824790 (= lt!372028 (select (arr!22065 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!372027 () Unit!28262)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!46044 (_ BitVec 64) (_ BitVec 32)) Unit!28262)

(assert (=> b!824790 (= lt!372027 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!372028 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!46044 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!824790 (arrayContainsKey!0 _keys!976 lt!372028 #b00000000000000000000000000000000)))

(declare-fun lt!372026 () Unit!28262)

(assert (=> b!824790 (= lt!372026 lt!372027)))

(declare-fun res!562409 () Bool)

(declare-datatypes ((SeekEntryResult!8722 0))(
  ( (MissingZero!8722 (index!37258 (_ BitVec 32))) (Found!8722 (index!37259 (_ BitVec 32))) (Intermediate!8722 (undefined!9534 Bool) (index!37260 (_ BitVec 32)) (x!69615 (_ BitVec 32))) (Undefined!8722) (MissingVacant!8722 (index!37261 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!46044 (_ BitVec 32)) SeekEntryResult!8722)

(assert (=> b!824790 (= res!562409 (= (seekEntryOrOpen!0 (select (arr!22065 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8722 #b00000000000000000000000000000000)))))

(assert (=> b!824790 (=> (not res!562409) (not e!459010))))

(declare-fun d!104881 () Bool)

(declare-fun res!562408 () Bool)

(declare-fun e!459008 () Bool)

(assert (=> d!104881 (=> res!562408 e!459008)))

(assert (=> d!104881 (= res!562408 (bvsge #b00000000000000000000000000000000 (size!22486 _keys!976)))))

(assert (=> d!104881 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!459008)))

(declare-fun b!824791 () Bool)

(assert (=> b!824791 (= e!459010 call!35842)))

(declare-fun b!824792 () Bool)

(assert (=> b!824792 (= e!459008 e!459009)))

(declare-fun c!89308 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!824792 (= c!89308 (validKeyInArray!0 (select (arr!22065 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!35839 () Bool)

(assert (=> bm!35839 (= call!35842 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(assert (= (and d!104881 (not res!562408)) b!824792))

(assert (= (and b!824792 c!89308) b!824790))

(assert (= (and b!824792 (not c!89308)) b!824789))

(assert (= (and b!824790 res!562409) b!824791))

(assert (= (or b!824791 b!824789) bm!35839))

(declare-fun m!766891 () Bool)

(assert (=> b!824790 m!766891))

(declare-fun m!766893 () Bool)

(assert (=> b!824790 m!766893))

(declare-fun m!766895 () Bool)

(assert (=> b!824790 m!766895))

(assert (=> b!824790 m!766891))

(declare-fun m!766897 () Bool)

(assert (=> b!824790 m!766897))

(assert (=> b!824792 m!766891))

(assert (=> b!824792 m!766891))

(declare-fun m!766899 () Bool)

(assert (=> b!824792 m!766899))

(declare-fun m!766901 () Bool)

(assert (=> bm!35839 m!766901))

(assert (=> b!824753 d!104881))

(declare-fun d!104883 () Bool)

(assert (=> d!104883 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!71060 d!104883))

(declare-fun d!104885 () Bool)

(assert (=> d!104885 (= (array_inv!17581 _keys!976) (bvsge (size!22486 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!71060 d!104885))

(declare-fun d!104887 () Bool)

(assert (=> d!104887 (= (array_inv!17582 _values!788) (bvsge (size!22487 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!71060 d!104887))

(declare-fun b!824835 () Bool)

(declare-fun e!459039 () ListLongMap!8789)

(declare-fun call!35863 () ListLongMap!8789)

(assert (=> b!824835 (= e!459039 call!35863)))

(declare-fun b!824836 () Bool)

(declare-fun call!35860 () ListLongMap!8789)

(assert (=> b!824836 (= e!459039 call!35860)))

(declare-fun b!824837 () Bool)

(declare-fun e!459041 () ListLongMap!8789)

(declare-fun call!35861 () ListLongMap!8789)

(declare-fun +!1873 (ListLongMap!8789 tuple2!9952) ListLongMap!8789)

(assert (=> b!824837 (= e!459041 (+!1873 call!35861 (tuple2!9953 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!824838 () Bool)

(declare-fun e!459044 () Bool)

(assert (=> b!824838 (= e!459044 (validKeyInArray!0 (select (arr!22065 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!824839 () Bool)

(declare-fun res!562435 () Bool)

(declare-fun e!459046 () Bool)

(assert (=> b!824839 (=> (not res!562435) (not e!459046))))

(declare-fun e!459042 () Bool)

(assert (=> b!824839 (= res!562435 e!459042)))

(declare-fun res!562432 () Bool)

(assert (=> b!824839 (=> res!562432 e!459042)))

(declare-fun e!459047 () Bool)

(assert (=> b!824839 (= res!562432 (not e!459047))))

(declare-fun res!562436 () Bool)

(assert (=> b!824839 (=> (not res!562436) (not e!459047))))

(assert (=> b!824839 (= res!562436 (bvslt #b00000000000000000000000000000000 (size!22486 _keys!976)))))

(declare-fun b!824840 () Bool)

(declare-fun e!459045 () Unit!28262)

(declare-fun lt!372079 () Unit!28262)

(assert (=> b!824840 (= e!459045 lt!372079)))

(declare-fun lt!372082 () ListLongMap!8789)

(assert (=> b!824840 (= lt!372082 (getCurrentListMapNoExtraKeys!2430 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!372092 () (_ BitVec 64))

(assert (=> b!824840 (= lt!372092 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!372075 () (_ BitVec 64))

(assert (=> b!824840 (= lt!372075 (select (arr!22065 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!372078 () Unit!28262)

(declare-fun addStillContains!313 (ListLongMap!8789 (_ BitVec 64) V!24933 (_ BitVec 64)) Unit!28262)

(assert (=> b!824840 (= lt!372078 (addStillContains!313 lt!372082 lt!372092 zeroValueBefore!34 lt!372075))))

(declare-fun contains!4177 (ListLongMap!8789 (_ BitVec 64)) Bool)

(assert (=> b!824840 (contains!4177 (+!1873 lt!372082 (tuple2!9953 lt!372092 zeroValueBefore!34)) lt!372075)))

(declare-fun lt!372085 () Unit!28262)

(assert (=> b!824840 (= lt!372085 lt!372078)))

(declare-fun lt!372090 () ListLongMap!8789)

(assert (=> b!824840 (= lt!372090 (getCurrentListMapNoExtraKeys!2430 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!372080 () (_ BitVec 64))

(assert (=> b!824840 (= lt!372080 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!372093 () (_ BitVec 64))

(assert (=> b!824840 (= lt!372093 (select (arr!22065 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!372091 () Unit!28262)

(declare-fun addApplyDifferent!313 (ListLongMap!8789 (_ BitVec 64) V!24933 (_ BitVec 64)) Unit!28262)

(assert (=> b!824840 (= lt!372091 (addApplyDifferent!313 lt!372090 lt!372080 minValue!754 lt!372093))))

(declare-fun apply!361 (ListLongMap!8789 (_ BitVec 64)) V!24933)

(assert (=> b!824840 (= (apply!361 (+!1873 lt!372090 (tuple2!9953 lt!372080 minValue!754)) lt!372093) (apply!361 lt!372090 lt!372093))))

(declare-fun lt!372086 () Unit!28262)

(assert (=> b!824840 (= lt!372086 lt!372091)))

(declare-fun lt!372088 () ListLongMap!8789)

(assert (=> b!824840 (= lt!372088 (getCurrentListMapNoExtraKeys!2430 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!372076 () (_ BitVec 64))

(assert (=> b!824840 (= lt!372076 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!372073 () (_ BitVec 64))

(assert (=> b!824840 (= lt!372073 (select (arr!22065 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!372094 () Unit!28262)

(assert (=> b!824840 (= lt!372094 (addApplyDifferent!313 lt!372088 lt!372076 zeroValueBefore!34 lt!372073))))

(assert (=> b!824840 (= (apply!361 (+!1873 lt!372088 (tuple2!9953 lt!372076 zeroValueBefore!34)) lt!372073) (apply!361 lt!372088 lt!372073))))

(declare-fun lt!372089 () Unit!28262)

(assert (=> b!824840 (= lt!372089 lt!372094)))

(declare-fun lt!372074 () ListLongMap!8789)

(assert (=> b!824840 (= lt!372074 (getCurrentListMapNoExtraKeys!2430 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!372087 () (_ BitVec 64))

(assert (=> b!824840 (= lt!372087 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!372081 () (_ BitVec 64))

(assert (=> b!824840 (= lt!372081 (select (arr!22065 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!824840 (= lt!372079 (addApplyDifferent!313 lt!372074 lt!372087 minValue!754 lt!372081))))

(assert (=> b!824840 (= (apply!361 (+!1873 lt!372074 (tuple2!9953 lt!372087 minValue!754)) lt!372081) (apply!361 lt!372074 lt!372081))))

(declare-fun b!824841 () Bool)

(declare-fun e!459037 () Bool)

(assert (=> b!824841 (= e!459042 e!459037)))

(declare-fun res!562429 () Bool)

(assert (=> b!824841 (=> (not res!562429) (not e!459037))))

(declare-fun lt!372083 () ListLongMap!8789)

(assert (=> b!824841 (= res!562429 (contains!4177 lt!372083 (select (arr!22065 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!824841 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22486 _keys!976)))))

(declare-fun bm!35854 () Bool)

(declare-fun call!35862 () ListLongMap!8789)

(assert (=> bm!35854 (= call!35862 (getCurrentListMapNoExtraKeys!2430 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824842 () Bool)

(declare-fun e!459049 () ListLongMap!8789)

(assert (=> b!824842 (= e!459041 e!459049)))

(declare-fun c!89326 () Bool)

(assert (=> b!824842 (= c!89326 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!35855 () Bool)

(declare-fun call!35858 () Bool)

(assert (=> bm!35855 (= call!35858 (contains!4177 lt!372083 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!35856 () Bool)

(declare-fun call!35859 () Bool)

(assert (=> bm!35856 (= call!35859 (contains!4177 lt!372083 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!824843 () Bool)

(assert (=> b!824843 (= e!459047 (validKeyInArray!0 (select (arr!22065 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!824844 () Bool)

(declare-fun e!459043 () Bool)

(assert (=> b!824844 (= e!459043 (= (apply!361 lt!372083 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun b!824845 () Bool)

(declare-fun Unit!28264 () Unit!28262)

(assert (=> b!824845 (= e!459045 Unit!28264)))

(declare-fun d!104889 () Bool)

(assert (=> d!104889 e!459046))

(declare-fun res!562434 () Bool)

(assert (=> d!104889 (=> (not res!562434) (not e!459046))))

(assert (=> d!104889 (= res!562434 (or (bvsge #b00000000000000000000000000000000 (size!22486 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22486 _keys!976)))))))

(declare-fun lt!372077 () ListLongMap!8789)

(assert (=> d!104889 (= lt!372083 lt!372077)))

(declare-fun lt!372084 () Unit!28262)

(assert (=> d!104889 (= lt!372084 e!459045)))

(declare-fun c!89324 () Bool)

(assert (=> d!104889 (= c!89324 e!459044)))

(declare-fun res!562433 () Bool)

(assert (=> d!104889 (=> (not res!562433) (not e!459044))))

(assert (=> d!104889 (= res!562433 (bvslt #b00000000000000000000000000000000 (size!22486 _keys!976)))))

(assert (=> d!104889 (= lt!372077 e!459041)))

(declare-fun c!89322 () Bool)

(assert (=> d!104889 (= c!89322 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!104889 (validMask!0 mask!1312)))

(assert (=> d!104889 (= (getCurrentListMap!2522 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!372083)))

(declare-fun b!824846 () Bool)

(declare-fun e!459038 () Bool)

(assert (=> b!824846 (= e!459038 (= (apply!361 lt!372083 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!824847 () Bool)

(declare-fun c!89325 () Bool)

(assert (=> b!824847 (= c!89325 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!824847 (= e!459049 e!459039)))

(declare-fun bm!35857 () Bool)

(assert (=> bm!35857 (= call!35863 call!35861)))

(declare-fun b!824848 () Bool)

(declare-fun get!11725 (ValueCell!7059 V!24933) V!24933)

(declare-fun dynLambda!971 (Int (_ BitVec 64)) V!24933)

(assert (=> b!824848 (= e!459037 (= (apply!361 lt!372083 (select (arr!22065 _keys!976) #b00000000000000000000000000000000)) (get!11725 (select (arr!22066 _values!788) #b00000000000000000000000000000000) (dynLambda!971 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!824848 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22487 _values!788)))))

(assert (=> b!824848 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22486 _keys!976)))))

(declare-fun bm!35858 () Bool)

(declare-fun call!35857 () ListLongMap!8789)

(assert (=> bm!35858 (= call!35857 call!35862)))

(declare-fun b!824849 () Bool)

(declare-fun e!459040 () Bool)

(assert (=> b!824849 (= e!459040 (not call!35859))))

(declare-fun b!824850 () Bool)

(declare-fun e!459048 () Bool)

(assert (=> b!824850 (= e!459048 (not call!35858))))

(declare-fun bm!35859 () Bool)

(assert (=> bm!35859 (= call!35861 (+!1873 (ite c!89322 call!35862 (ite c!89326 call!35857 call!35860)) (ite (or c!89322 c!89326) (tuple2!9953 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!9953 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!824851 () Bool)

(declare-fun res!562428 () Bool)

(assert (=> b!824851 (=> (not res!562428) (not e!459046))))

(assert (=> b!824851 (= res!562428 e!459040)))

(declare-fun c!89321 () Bool)

(assert (=> b!824851 (= c!89321 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!35860 () Bool)

(assert (=> bm!35860 (= call!35860 call!35857)))

(declare-fun b!824852 () Bool)

(assert (=> b!824852 (= e!459040 e!459043)))

(declare-fun res!562430 () Bool)

(assert (=> b!824852 (= res!562430 call!35859)))

(assert (=> b!824852 (=> (not res!562430) (not e!459043))))

(declare-fun b!824853 () Bool)

(assert (=> b!824853 (= e!459048 e!459038)))

(declare-fun res!562431 () Bool)

(assert (=> b!824853 (= res!562431 call!35858)))

(assert (=> b!824853 (=> (not res!562431) (not e!459038))))

(declare-fun b!824854 () Bool)

(assert (=> b!824854 (= e!459046 e!459048)))

(declare-fun c!89323 () Bool)

(assert (=> b!824854 (= c!89323 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!824855 () Bool)

(assert (=> b!824855 (= e!459049 call!35863)))

(assert (= (and d!104889 c!89322) b!824837))

(assert (= (and d!104889 (not c!89322)) b!824842))

(assert (= (and b!824842 c!89326) b!824855))

(assert (= (and b!824842 (not c!89326)) b!824847))

(assert (= (and b!824847 c!89325) b!824835))

(assert (= (and b!824847 (not c!89325)) b!824836))

(assert (= (or b!824835 b!824836) bm!35860))

(assert (= (or b!824855 bm!35860) bm!35858))

(assert (= (or b!824855 b!824835) bm!35857))

(assert (= (or b!824837 bm!35858) bm!35854))

(assert (= (or b!824837 bm!35857) bm!35859))

(assert (= (and d!104889 res!562433) b!824838))

(assert (= (and d!104889 c!89324) b!824840))

(assert (= (and d!104889 (not c!89324)) b!824845))

(assert (= (and d!104889 res!562434) b!824839))

(assert (= (and b!824839 res!562436) b!824843))

(assert (= (and b!824839 (not res!562432)) b!824841))

(assert (= (and b!824841 res!562429) b!824848))

(assert (= (and b!824839 res!562435) b!824851))

(assert (= (and b!824851 c!89321) b!824852))

(assert (= (and b!824851 (not c!89321)) b!824849))

(assert (= (and b!824852 res!562430) b!824844))

(assert (= (or b!824852 b!824849) bm!35856))

(assert (= (and b!824851 res!562428) b!824854))

(assert (= (and b!824854 c!89323) b!824853))

(assert (= (and b!824854 (not c!89323)) b!824850))

(assert (= (and b!824853 res!562431) b!824846))

(assert (= (or b!824853 b!824850) bm!35855))

(declare-fun b_lambda!11125 () Bool)

(assert (=> (not b_lambda!11125) (not b!824848)))

(declare-fun t!22155 () Bool)

(declare-fun tb!4211 () Bool)

(assert (=> (and start!71060 (= defaultEntry!796 defaultEntry!796) t!22155) tb!4211))

(declare-fun result!7957 () Bool)

(assert (=> tb!4211 (= result!7957 tp_is_empty!14949)))

(assert (=> b!824848 t!22155))

(declare-fun b_and!22165 () Bool)

(assert (= b_and!22161 (and (=> t!22155 result!7957) b_and!22165)))

(declare-fun m!766903 () Bool)

(assert (=> bm!35859 m!766903))

(assert (=> b!824841 m!766891))

(assert (=> b!824841 m!766891))

(declare-fun m!766905 () Bool)

(assert (=> b!824841 m!766905))

(assert (=> b!824838 m!766891))

(assert (=> b!824838 m!766891))

(assert (=> b!824838 m!766899))

(declare-fun m!766907 () Bool)

(assert (=> b!824837 m!766907))

(declare-fun m!766909 () Bool)

(assert (=> b!824846 m!766909))

(declare-fun m!766911 () Bool)

(assert (=> b!824848 m!766911))

(declare-fun m!766913 () Bool)

(assert (=> b!824848 m!766913))

(declare-fun m!766915 () Bool)

(assert (=> b!824848 m!766915))

(assert (=> b!824848 m!766891))

(assert (=> b!824848 m!766891))

(declare-fun m!766917 () Bool)

(assert (=> b!824848 m!766917))

(assert (=> b!824848 m!766913))

(assert (=> b!824848 m!766911))

(declare-fun m!766919 () Bool)

(assert (=> bm!35855 m!766919))

(assert (=> b!824840 m!766869))

(declare-fun m!766921 () Bool)

(assert (=> b!824840 m!766921))

(declare-fun m!766923 () Bool)

(assert (=> b!824840 m!766923))

(declare-fun m!766925 () Bool)

(assert (=> b!824840 m!766925))

(declare-fun m!766927 () Bool)

(assert (=> b!824840 m!766927))

(declare-fun m!766929 () Bool)

(assert (=> b!824840 m!766929))

(declare-fun m!766931 () Bool)

(assert (=> b!824840 m!766931))

(declare-fun m!766933 () Bool)

(assert (=> b!824840 m!766933))

(declare-fun m!766935 () Bool)

(assert (=> b!824840 m!766935))

(declare-fun m!766937 () Bool)

(assert (=> b!824840 m!766937))

(assert (=> b!824840 m!766891))

(declare-fun m!766939 () Bool)

(assert (=> b!824840 m!766939))

(declare-fun m!766941 () Bool)

(assert (=> b!824840 m!766941))

(assert (=> b!824840 m!766933))

(assert (=> b!824840 m!766929))

(declare-fun m!766943 () Bool)

(assert (=> b!824840 m!766943))

(declare-fun m!766945 () Bool)

(assert (=> b!824840 m!766945))

(declare-fun m!766947 () Bool)

(assert (=> b!824840 m!766947))

(declare-fun m!766949 () Bool)

(assert (=> b!824840 m!766949))

(assert (=> b!824840 m!766947))

(assert (=> b!824840 m!766925))

(declare-fun m!766951 () Bool)

(assert (=> b!824844 m!766951))

(declare-fun m!766953 () Bool)

(assert (=> bm!35856 m!766953))

(assert (=> b!824843 m!766891))

(assert (=> b!824843 m!766891))

(assert (=> b!824843 m!766899))

(assert (=> d!104889 m!766859))

(assert (=> bm!35854 m!766869))

(assert (=> b!824749 d!104889))

(declare-fun b!824868 () Bool)

(declare-fun e!459059 () Bool)

(declare-fun contains!4178 (List!15801 (_ BitVec 64)) Bool)

(assert (=> b!824868 (= e!459059 (contains!4178 Nil!15798 (select (arr!22065 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!824869 () Bool)

(declare-fun e!459061 () Bool)

(declare-fun e!459060 () Bool)

(assert (=> b!824869 (= e!459061 e!459060)))

(declare-fun c!89329 () Bool)

(assert (=> b!824869 (= c!89329 (validKeyInArray!0 (select (arr!22065 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!35863 () Bool)

(declare-fun call!35866 () Bool)

(assert (=> bm!35863 (= call!35866 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89329 (Cons!15797 (select (arr!22065 _keys!976) #b00000000000000000000000000000000) Nil!15798) Nil!15798)))))

(declare-fun b!824870 () Bool)

(assert (=> b!824870 (= e!459060 call!35866)))

(declare-fun b!824871 () Bool)

(assert (=> b!824871 (= e!459060 call!35866)))

(declare-fun d!104891 () Bool)

(declare-fun res!562443 () Bool)

(declare-fun e!459058 () Bool)

(assert (=> d!104891 (=> res!562443 e!459058)))

(assert (=> d!104891 (= res!562443 (bvsge #b00000000000000000000000000000000 (size!22486 _keys!976)))))

(assert (=> d!104891 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15798) e!459058)))

(declare-fun b!824872 () Bool)

(assert (=> b!824872 (= e!459058 e!459061)))

(declare-fun res!562445 () Bool)

(assert (=> b!824872 (=> (not res!562445) (not e!459061))))

(assert (=> b!824872 (= res!562445 (not e!459059))))

(declare-fun res!562444 () Bool)

(assert (=> b!824872 (=> (not res!562444) (not e!459059))))

(assert (=> b!824872 (= res!562444 (validKeyInArray!0 (select (arr!22065 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!104891 (not res!562443)) b!824872))

(assert (= (and b!824872 res!562444) b!824868))

(assert (= (and b!824872 res!562445) b!824869))

(assert (= (and b!824869 c!89329) b!824870))

(assert (= (and b!824869 (not c!89329)) b!824871))

(assert (= (or b!824870 b!824871) bm!35863))

(assert (=> b!824868 m!766891))

(assert (=> b!824868 m!766891))

(declare-fun m!766955 () Bool)

(assert (=> b!824868 m!766955))

(assert (=> b!824869 m!766891))

(assert (=> b!824869 m!766891))

(assert (=> b!824869 m!766899))

(assert (=> bm!35863 m!766891))

(declare-fun m!766957 () Bool)

(assert (=> bm!35863 m!766957))

(assert (=> b!824872 m!766891))

(assert (=> b!824872 m!766891))

(assert (=> b!824872 m!766899))

(assert (=> b!824750 d!104891))

(declare-fun d!104893 () Bool)

(assert (=> d!104893 (= (getCurrentListMapNoExtraKeys!2430 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2430 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!372097 () Unit!28262)

(declare-fun choose!1412 (array!46044 array!46046 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24933 V!24933 V!24933 V!24933 (_ BitVec 32) Int) Unit!28262)

(assert (=> d!104893 (= lt!372097 (choose!1412 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!104893 (validMask!0 mask!1312)))

(assert (=> d!104893 (= (lemmaNoChangeToArrayThenSameMapNoExtras!546 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!372097)))

(declare-fun bs!23034 () Bool)

(assert (= bs!23034 d!104893))

(assert (=> bs!23034 m!766869))

(assert (=> bs!23034 m!766867))

(declare-fun m!766959 () Bool)

(assert (=> bs!23034 m!766959))

(assert (=> bs!23034 m!766859))

(assert (=> b!824752 d!104893))

(declare-fun b!824897 () Bool)

(declare-fun e!459077 () ListLongMap!8789)

(declare-fun call!35869 () ListLongMap!8789)

(assert (=> b!824897 (= e!459077 call!35869)))

(declare-fun b!824898 () Bool)

(declare-fun e!459082 () ListLongMap!8789)

(assert (=> b!824898 (= e!459082 e!459077)))

(declare-fun c!89341 () Bool)

(assert (=> b!824898 (= c!89341 (validKeyInArray!0 (select (arr!22065 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!824899 () Bool)

(declare-fun e!459079 () Bool)

(declare-fun lt!372117 () ListLongMap!8789)

(declare-fun isEmpty!648 (ListLongMap!8789) Bool)

(assert (=> b!824899 (= e!459079 (isEmpty!648 lt!372117))))

(declare-fun d!104895 () Bool)

(declare-fun e!459081 () Bool)

(assert (=> d!104895 e!459081))

(declare-fun res!562454 () Bool)

(assert (=> d!104895 (=> (not res!562454) (not e!459081))))

(assert (=> d!104895 (= res!562454 (not (contains!4177 lt!372117 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104895 (= lt!372117 e!459082)))

(declare-fun c!89339 () Bool)

(assert (=> d!104895 (= c!89339 (bvsge #b00000000000000000000000000000000 (size!22486 _keys!976)))))

(assert (=> d!104895 (validMask!0 mask!1312)))

(assert (=> d!104895 (= (getCurrentListMapNoExtraKeys!2430 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!372117)))

(declare-fun b!824900 () Bool)

(declare-fun res!562456 () Bool)

(assert (=> b!824900 (=> (not res!562456) (not e!459081))))

(assert (=> b!824900 (= res!562456 (not (contains!4177 lt!372117 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!824901 () Bool)

(assert (=> b!824901 (= e!459079 (= lt!372117 (getCurrentListMapNoExtraKeys!2430 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun bm!35866 () Bool)

(assert (=> bm!35866 (= call!35869 (getCurrentListMapNoExtraKeys!2430 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!824902 () Bool)

(declare-fun e!459076 () Bool)

(assert (=> b!824902 (= e!459076 e!459079)))

(declare-fun c!89338 () Bool)

(assert (=> b!824902 (= c!89338 (bvslt #b00000000000000000000000000000000 (size!22486 _keys!976)))))

(declare-fun b!824903 () Bool)

(declare-fun e!459080 () Bool)

(assert (=> b!824903 (= e!459076 e!459080)))

(assert (=> b!824903 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22486 _keys!976)))))

(declare-fun res!562455 () Bool)

(assert (=> b!824903 (= res!562455 (contains!4177 lt!372117 (select (arr!22065 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!824903 (=> (not res!562455) (not e!459080))))

(declare-fun b!824904 () Bool)

(assert (=> b!824904 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22486 _keys!976)))))

(assert (=> b!824904 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22487 _values!788)))))

(assert (=> b!824904 (= e!459080 (= (apply!361 lt!372117 (select (arr!22065 _keys!976) #b00000000000000000000000000000000)) (get!11725 (select (arr!22066 _values!788) #b00000000000000000000000000000000) (dynLambda!971 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!824905 () Bool)

(assert (=> b!824905 (= e!459081 e!459076)))

(declare-fun c!89340 () Bool)

(declare-fun e!459078 () Bool)

(assert (=> b!824905 (= c!89340 e!459078)))

(declare-fun res!562457 () Bool)

(assert (=> b!824905 (=> (not res!562457) (not e!459078))))

(assert (=> b!824905 (= res!562457 (bvslt #b00000000000000000000000000000000 (size!22486 _keys!976)))))

(declare-fun b!824906 () Bool)

(assert (=> b!824906 (= e!459082 (ListLongMap!8790 Nil!15797))))

(declare-fun b!824907 () Bool)

(declare-fun lt!372116 () Unit!28262)

(declare-fun lt!372112 () Unit!28262)

(assert (=> b!824907 (= lt!372116 lt!372112)))

(declare-fun lt!372115 () V!24933)

(declare-fun lt!372118 () ListLongMap!8789)

(declare-fun lt!372114 () (_ BitVec 64))

(declare-fun lt!372113 () (_ BitVec 64))

(assert (=> b!824907 (not (contains!4177 (+!1873 lt!372118 (tuple2!9953 lt!372113 lt!372115)) lt!372114))))

(declare-fun addStillNotContains!188 (ListLongMap!8789 (_ BitVec 64) V!24933 (_ BitVec 64)) Unit!28262)

(assert (=> b!824907 (= lt!372112 (addStillNotContains!188 lt!372118 lt!372113 lt!372115 lt!372114))))

(assert (=> b!824907 (= lt!372114 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!824907 (= lt!372115 (get!11725 (select (arr!22066 _values!788) #b00000000000000000000000000000000) (dynLambda!971 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!824907 (= lt!372113 (select (arr!22065 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!824907 (= lt!372118 call!35869)))

(assert (=> b!824907 (= e!459077 (+!1873 call!35869 (tuple2!9953 (select (arr!22065 _keys!976) #b00000000000000000000000000000000) (get!11725 (select (arr!22066 _values!788) #b00000000000000000000000000000000) (dynLambda!971 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!824908 () Bool)

(assert (=> b!824908 (= e!459078 (validKeyInArray!0 (select (arr!22065 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!824908 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!104895 c!89339) b!824906))

(assert (= (and d!104895 (not c!89339)) b!824898))

(assert (= (and b!824898 c!89341) b!824907))

(assert (= (and b!824898 (not c!89341)) b!824897))

(assert (= (or b!824907 b!824897) bm!35866))

(assert (= (and d!104895 res!562454) b!824900))

(assert (= (and b!824900 res!562456) b!824905))

(assert (= (and b!824905 res!562457) b!824908))

(assert (= (and b!824905 c!89340) b!824903))

(assert (= (and b!824905 (not c!89340)) b!824902))

(assert (= (and b!824903 res!562455) b!824904))

(assert (= (and b!824902 c!89338) b!824901))

(assert (= (and b!824902 (not c!89338)) b!824899))

(declare-fun b_lambda!11127 () Bool)

(assert (=> (not b_lambda!11127) (not b!824904)))

(assert (=> b!824904 t!22155))

(declare-fun b_and!22167 () Bool)

(assert (= b_and!22165 (and (=> t!22155 result!7957) b_and!22167)))

(declare-fun b_lambda!11129 () Bool)

(assert (=> (not b_lambda!11129) (not b!824907)))

(assert (=> b!824907 t!22155))

(declare-fun b_and!22169 () Bool)

(assert (= b_and!22167 (and (=> t!22155 result!7957) b_and!22169)))

(declare-fun m!766961 () Bool)

(assert (=> b!824907 m!766961))

(declare-fun m!766963 () Bool)

(assert (=> b!824907 m!766963))

(assert (=> b!824907 m!766891))

(assert (=> b!824907 m!766911))

(assert (=> b!824907 m!766913))

(assert (=> b!824907 m!766915))

(declare-fun m!766965 () Bool)

(assert (=> b!824907 m!766965))

(assert (=> b!824907 m!766961))

(assert (=> b!824907 m!766913))

(assert (=> b!824907 m!766911))

(declare-fun m!766967 () Bool)

(assert (=> b!824907 m!766967))

(declare-fun m!766969 () Bool)

(assert (=> bm!35866 m!766969))

(declare-fun m!766971 () Bool)

(assert (=> d!104895 m!766971))

(assert (=> d!104895 m!766859))

(assert (=> b!824904 m!766891))

(assert (=> b!824904 m!766911))

(assert (=> b!824904 m!766913))

(assert (=> b!824904 m!766915))

(assert (=> b!824904 m!766913))

(assert (=> b!824904 m!766911))

(assert (=> b!824904 m!766891))

(declare-fun m!766973 () Bool)

(assert (=> b!824904 m!766973))

(assert (=> b!824901 m!766969))

(declare-fun m!766975 () Bool)

(assert (=> b!824899 m!766975))

(assert (=> b!824898 m!766891))

(assert (=> b!824898 m!766891))

(assert (=> b!824898 m!766899))

(assert (=> b!824908 m!766891))

(assert (=> b!824908 m!766891))

(assert (=> b!824908 m!766899))

(declare-fun m!766977 () Bool)

(assert (=> b!824900 m!766977))

(assert (=> b!824903 m!766891))

(assert (=> b!824903 m!766891))

(declare-fun m!766979 () Bool)

(assert (=> b!824903 m!766979))

(assert (=> b!824752 d!104895))

(declare-fun b!824909 () Bool)

(declare-fun e!459084 () ListLongMap!8789)

(declare-fun call!35870 () ListLongMap!8789)

(assert (=> b!824909 (= e!459084 call!35870)))

(declare-fun b!824910 () Bool)

(declare-fun e!459089 () ListLongMap!8789)

(assert (=> b!824910 (= e!459089 e!459084)))

(declare-fun c!89345 () Bool)

(assert (=> b!824910 (= c!89345 (validKeyInArray!0 (select (arr!22065 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!824911 () Bool)

(declare-fun e!459086 () Bool)

(declare-fun lt!372124 () ListLongMap!8789)

(assert (=> b!824911 (= e!459086 (isEmpty!648 lt!372124))))

(declare-fun d!104897 () Bool)

(declare-fun e!459088 () Bool)

(assert (=> d!104897 e!459088))

(declare-fun res!562458 () Bool)

(assert (=> d!104897 (=> (not res!562458) (not e!459088))))

(assert (=> d!104897 (= res!562458 (not (contains!4177 lt!372124 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104897 (= lt!372124 e!459089)))

(declare-fun c!89343 () Bool)

(assert (=> d!104897 (= c!89343 (bvsge #b00000000000000000000000000000000 (size!22486 _keys!976)))))

(assert (=> d!104897 (validMask!0 mask!1312)))

(assert (=> d!104897 (= (getCurrentListMapNoExtraKeys!2430 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!372124)))

(declare-fun b!824912 () Bool)

(declare-fun res!562460 () Bool)

(assert (=> b!824912 (=> (not res!562460) (not e!459088))))

(assert (=> b!824912 (= res!562460 (not (contains!4177 lt!372124 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!824913 () Bool)

(assert (=> b!824913 (= e!459086 (= lt!372124 (getCurrentListMapNoExtraKeys!2430 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun bm!35867 () Bool)

(assert (=> bm!35867 (= call!35870 (getCurrentListMapNoExtraKeys!2430 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!824914 () Bool)

(declare-fun e!459083 () Bool)

(assert (=> b!824914 (= e!459083 e!459086)))

(declare-fun c!89342 () Bool)

(assert (=> b!824914 (= c!89342 (bvslt #b00000000000000000000000000000000 (size!22486 _keys!976)))))

(declare-fun b!824915 () Bool)

(declare-fun e!459087 () Bool)

(assert (=> b!824915 (= e!459083 e!459087)))

(assert (=> b!824915 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22486 _keys!976)))))

(declare-fun res!562459 () Bool)

(assert (=> b!824915 (= res!562459 (contains!4177 lt!372124 (select (arr!22065 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!824915 (=> (not res!562459) (not e!459087))))

(declare-fun b!824916 () Bool)

(assert (=> b!824916 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22486 _keys!976)))))

(assert (=> b!824916 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22487 _values!788)))))

(assert (=> b!824916 (= e!459087 (= (apply!361 lt!372124 (select (arr!22065 _keys!976) #b00000000000000000000000000000000)) (get!11725 (select (arr!22066 _values!788) #b00000000000000000000000000000000) (dynLambda!971 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!824917 () Bool)

(assert (=> b!824917 (= e!459088 e!459083)))

(declare-fun c!89344 () Bool)

(declare-fun e!459085 () Bool)

(assert (=> b!824917 (= c!89344 e!459085)))

(declare-fun res!562461 () Bool)

(assert (=> b!824917 (=> (not res!562461) (not e!459085))))

(assert (=> b!824917 (= res!562461 (bvslt #b00000000000000000000000000000000 (size!22486 _keys!976)))))

(declare-fun b!824918 () Bool)

(assert (=> b!824918 (= e!459089 (ListLongMap!8790 Nil!15797))))

(declare-fun b!824919 () Bool)

(declare-fun lt!372123 () Unit!28262)

(declare-fun lt!372119 () Unit!28262)

(assert (=> b!824919 (= lt!372123 lt!372119)))

(declare-fun lt!372120 () (_ BitVec 64))

(declare-fun lt!372121 () (_ BitVec 64))

(declare-fun lt!372125 () ListLongMap!8789)

(declare-fun lt!372122 () V!24933)

(assert (=> b!824919 (not (contains!4177 (+!1873 lt!372125 (tuple2!9953 lt!372120 lt!372122)) lt!372121))))

(assert (=> b!824919 (= lt!372119 (addStillNotContains!188 lt!372125 lt!372120 lt!372122 lt!372121))))

(assert (=> b!824919 (= lt!372121 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!824919 (= lt!372122 (get!11725 (select (arr!22066 _values!788) #b00000000000000000000000000000000) (dynLambda!971 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!824919 (= lt!372120 (select (arr!22065 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!824919 (= lt!372125 call!35870)))

(assert (=> b!824919 (= e!459084 (+!1873 call!35870 (tuple2!9953 (select (arr!22065 _keys!976) #b00000000000000000000000000000000) (get!11725 (select (arr!22066 _values!788) #b00000000000000000000000000000000) (dynLambda!971 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!824920 () Bool)

(assert (=> b!824920 (= e!459085 (validKeyInArray!0 (select (arr!22065 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!824920 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!104897 c!89343) b!824918))

(assert (= (and d!104897 (not c!89343)) b!824910))

(assert (= (and b!824910 c!89345) b!824919))

(assert (= (and b!824910 (not c!89345)) b!824909))

(assert (= (or b!824919 b!824909) bm!35867))

(assert (= (and d!104897 res!562458) b!824912))

(assert (= (and b!824912 res!562460) b!824917))

(assert (= (and b!824917 res!562461) b!824920))

(assert (= (and b!824917 c!89344) b!824915))

(assert (= (and b!824917 (not c!89344)) b!824914))

(assert (= (and b!824915 res!562459) b!824916))

(assert (= (and b!824914 c!89342) b!824913))

(assert (= (and b!824914 (not c!89342)) b!824911))

(declare-fun b_lambda!11131 () Bool)

(assert (=> (not b_lambda!11131) (not b!824916)))

(assert (=> b!824916 t!22155))

(declare-fun b_and!22171 () Bool)

(assert (= b_and!22169 (and (=> t!22155 result!7957) b_and!22171)))

(declare-fun b_lambda!11133 () Bool)

(assert (=> (not b_lambda!11133) (not b!824919)))

(assert (=> b!824919 t!22155))

(declare-fun b_and!22173 () Bool)

(assert (= b_and!22171 (and (=> t!22155 result!7957) b_and!22173)))

(declare-fun m!766981 () Bool)

(assert (=> b!824919 m!766981))

(declare-fun m!766983 () Bool)

(assert (=> b!824919 m!766983))

(assert (=> b!824919 m!766891))

(assert (=> b!824919 m!766911))

(assert (=> b!824919 m!766913))

(assert (=> b!824919 m!766915))

(declare-fun m!766985 () Bool)

(assert (=> b!824919 m!766985))

(assert (=> b!824919 m!766981))

(assert (=> b!824919 m!766913))

(assert (=> b!824919 m!766911))

(declare-fun m!766987 () Bool)

(assert (=> b!824919 m!766987))

(declare-fun m!766989 () Bool)

(assert (=> bm!35867 m!766989))

(declare-fun m!766991 () Bool)

(assert (=> d!104897 m!766991))

(assert (=> d!104897 m!766859))

(assert (=> b!824916 m!766891))

(assert (=> b!824916 m!766911))

(assert (=> b!824916 m!766913))

(assert (=> b!824916 m!766915))

(assert (=> b!824916 m!766913))

(assert (=> b!824916 m!766911))

(assert (=> b!824916 m!766891))

(declare-fun m!766993 () Bool)

(assert (=> b!824916 m!766993))

(assert (=> b!824913 m!766989))

(declare-fun m!766995 () Bool)

(assert (=> b!824911 m!766995))

(assert (=> b!824910 m!766891))

(assert (=> b!824910 m!766891))

(assert (=> b!824910 m!766899))

(assert (=> b!824920 m!766891))

(assert (=> b!824920 m!766891))

(assert (=> b!824920 m!766899))

(declare-fun m!766997 () Bool)

(assert (=> b!824912 m!766997))

(assert (=> b!824915 m!766891))

(assert (=> b!824915 m!766891))

(declare-fun m!766999 () Bool)

(assert (=> b!824915 m!766999))

(assert (=> b!824752 d!104897))

(declare-fun b!824927 () Bool)

(declare-fun e!459095 () Bool)

(assert (=> b!824927 (= e!459095 tp_is_empty!14949)))

(declare-fun condMapEmpty!24049 () Bool)

(declare-fun mapDefault!24049 () ValueCell!7059)

(assert (=> mapNonEmpty!24043 (= condMapEmpty!24049 (= mapRest!24043 ((as const (Array (_ BitVec 32) ValueCell!7059)) mapDefault!24049)))))

(declare-fun e!459094 () Bool)

(declare-fun mapRes!24049 () Bool)

(assert (=> mapNonEmpty!24043 (= tp!46471 (and e!459094 mapRes!24049))))

(declare-fun b!824928 () Bool)

(assert (=> b!824928 (= e!459094 tp_is_empty!14949)))

(declare-fun mapIsEmpty!24049 () Bool)

(assert (=> mapIsEmpty!24049 mapRes!24049))

(declare-fun mapNonEmpty!24049 () Bool)

(declare-fun tp!46480 () Bool)

(assert (=> mapNonEmpty!24049 (= mapRes!24049 (and tp!46480 e!459095))))

(declare-fun mapValue!24049 () ValueCell!7059)

(declare-fun mapKey!24049 () (_ BitVec 32))

(declare-fun mapRest!24049 () (Array (_ BitVec 32) ValueCell!7059))

(assert (=> mapNonEmpty!24049 (= mapRest!24043 (store mapRest!24049 mapKey!24049 mapValue!24049))))

(assert (= (and mapNonEmpty!24043 condMapEmpty!24049) mapIsEmpty!24049))

(assert (= (and mapNonEmpty!24043 (not condMapEmpty!24049)) mapNonEmpty!24049))

(assert (= (and mapNonEmpty!24049 ((_ is ValueCellFull!7059) mapValue!24049)) b!824927))

(assert (= (and mapNonEmpty!24043 ((_ is ValueCellFull!7059) mapDefault!24049)) b!824928))

(declare-fun m!767001 () Bool)

(assert (=> mapNonEmpty!24049 m!767001))

(declare-fun b_lambda!11135 () Bool)

(assert (= b_lambda!11125 (or (and start!71060 b_free!13239) b_lambda!11135)))

(declare-fun b_lambda!11137 () Bool)

(assert (= b_lambda!11127 (or (and start!71060 b_free!13239) b_lambda!11137)))

(declare-fun b_lambda!11139 () Bool)

(assert (= b_lambda!11131 (or (and start!71060 b_free!13239) b_lambda!11139)))

(declare-fun b_lambda!11141 () Bool)

(assert (= b_lambda!11133 (or (and start!71060 b_free!13239) b_lambda!11141)))

(declare-fun b_lambda!11143 () Bool)

(assert (= b_lambda!11129 (or (and start!71060 b_free!13239) b_lambda!11143)))

(check-sat (not b!824911) (not b!824837) (not d!104895) (not b!824913) (not d!104893) (not bm!35859) (not b_next!13239) (not b!824916) (not b_lambda!11139) (not b!824915) b_and!22173 (not b_lambda!11135) (not b!824872) (not b!824868) (not b!824841) (not b!824903) (not b!824843) (not b!824900) (not b!824901) (not b!824907) (not b!824869) (not b!824792) (not b!824790) (not d!104889) (not b!824908) (not b!824910) (not b!824840) (not b!824912) (not mapNonEmpty!24049) (not bm!35863) (not b!824898) (not b_lambda!11141) (not b!824920) (not bm!35839) (not bm!35855) (not b!824899) (not bm!35867) (not b!824919) tp_is_empty!14949 (not b_lambda!11137) (not b!824846) (not bm!35856) (not b!824848) (not d!104897) (not b_lambda!11143) (not b!824838) (not bm!35854) (not b!824904) (not b!824844) (not bm!35866))
(check-sat b_and!22173 (not b_next!13239))
