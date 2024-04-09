; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84922 () Bool)

(assert start!84922)

(declare-fun b!991908 () Bool)

(declare-fun e!559547 () Bool)

(declare-fun tp_is_empty!23373 () Bool)

(assert (=> b!991908 (= e!559547 tp_is_empty!23373)))

(declare-fun b!991909 () Bool)

(declare-fun e!559542 () Bool)

(declare-fun mapRes!37131 () Bool)

(assert (=> b!991909 (= e!559542 (and e!559547 mapRes!37131))))

(declare-fun condMapEmpty!37131 () Bool)

(declare-datatypes ((V!36147 0))(
  ( (V!36148 (val!11737 Int)) )
))
(declare-datatypes ((ValueCell!11205 0))(
  ( (ValueCellFull!11205 (v!14314 V!36147)) (EmptyCell!11205) )
))
(declare-datatypes ((array!62697 0))(
  ( (array!62698 (arr!30189 (Array (_ BitVec 32) ValueCell!11205)) (size!30669 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62697)

(declare-fun mapDefault!37131 () ValueCell!11205)

(assert (=> b!991909 (= condMapEmpty!37131 (= (arr!30189 _values!1551) ((as const (Array (_ BitVec 32) ValueCell!11205)) mapDefault!37131)))))

(declare-fun mapNonEmpty!37131 () Bool)

(declare-fun tp!70203 () Bool)

(declare-fun e!559543 () Bool)

(assert (=> mapNonEmpty!37131 (= mapRes!37131 (and tp!70203 e!559543))))

(declare-fun mapRest!37131 () (Array (_ BitVec 32) ValueCell!11205))

(declare-fun mapValue!37131 () ValueCell!11205)

(declare-fun mapKey!37131 () (_ BitVec 32))

(assert (=> mapNonEmpty!37131 (= (arr!30189 _values!1551) (store mapRest!37131 mapKey!37131 mapValue!37131))))

(declare-fun res!663095 () Bool)

(declare-fun e!559545 () Bool)

(assert (=> start!84922 (=> (not res!663095) (not e!559545))))

(declare-fun mask!2471 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84922 (= res!663095 (validMask!0 mask!2471))))

(assert (=> start!84922 e!559545))

(assert (=> start!84922 true))

(declare-fun array_inv!23179 (array!62697) Bool)

(assert (=> start!84922 (and (array_inv!23179 _values!1551) e!559542)))

(declare-datatypes ((array!62699 0))(
  ( (array!62700 (arr!30190 (Array (_ BitVec 32) (_ BitVec 64))) (size!30670 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62699)

(declare-fun array_inv!23180 (array!62699) Bool)

(assert (=> start!84922 (array_inv!23180 _keys!1945)))

(declare-fun b!991910 () Bool)

(declare-fun res!663093 () Bool)

(assert (=> b!991910 (=> (not res!663093) (not e!559545))))

(declare-fun k0!1425 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!991910 (= res!663093 (validKeyInArray!0 k0!1425))))

(declare-fun b!991911 () Bool)

(declare-fun res!663092 () Bool)

(assert (=> b!991911 (=> (not res!663092) (not e!559545))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62699 (_ BitVec 32)) Bool)

(assert (=> b!991911 (= res!663092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471))))

(declare-fun b!991912 () Bool)

(declare-fun res!663097 () Bool)

(assert (=> b!991912 (=> (not res!663097) (not e!559545))))

(declare-datatypes ((List!20985 0))(
  ( (Nil!20982) (Cons!20981 (h!22143 (_ BitVec 64)) (t!29976 List!20985)) )
))
(declare-fun arrayNoDuplicates!0 (array!62699 (_ BitVec 32) List!20985) Bool)

(assert (=> b!991912 (= res!663097 (arrayNoDuplicates!0 _keys!1945 #b00000000000000000000000000000000 Nil!20982))))

(declare-fun b!991913 () Bool)

(declare-fun e!559544 () Bool)

(assert (=> b!991913 (= e!559545 e!559544)))

(declare-fun res!663094 () Bool)

(assert (=> b!991913 (=> (not res!663094) (not e!559544))))

(declare-datatypes ((SeekEntryResult!9207 0))(
  ( (MissingZero!9207 (index!39198 (_ BitVec 32))) (Found!9207 (index!39199 (_ BitVec 32))) (Intermediate!9207 (undefined!10019 Bool) (index!39200 (_ BitVec 32)) (x!86313 (_ BitVec 32))) (Undefined!9207) (MissingVacant!9207 (index!39201 (_ BitVec 32))) )
))
(declare-fun lt!439992 () SeekEntryResult!9207)

(get-info :version)

(assert (=> b!991913 (= res!663094 ((_ is Found!9207) lt!439992))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!62699 (_ BitVec 32)) SeekEntryResult!9207)

(assert (=> b!991913 (= lt!439992 (seekEntry!0 k0!1425 _keys!1945 mask!2471))))

(declare-fun b!991914 () Bool)

(assert (=> b!991914 (= e!559543 tp_is_empty!23373)))

(declare-fun b!991915 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!991915 (= e!559544 (not (inRange!0 (index!39199 lt!439992) mask!2471)))))

(declare-fun b!991916 () Bool)

(declare-fun res!663096 () Bool)

(assert (=> b!991916 (=> (not res!663096) (not e!559545))))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(assert (=> b!991916 (= res!663096 (and (= (size!30669 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30670 _keys!1945) (size!30669 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!37131 () Bool)

(assert (=> mapIsEmpty!37131 mapRes!37131))

(assert (= (and start!84922 res!663095) b!991916))

(assert (= (and b!991916 res!663096) b!991911))

(assert (= (and b!991911 res!663092) b!991912))

(assert (= (and b!991912 res!663097) b!991910))

(assert (= (and b!991910 res!663093) b!991913))

(assert (= (and b!991913 res!663094) b!991915))

(assert (= (and b!991909 condMapEmpty!37131) mapIsEmpty!37131))

(assert (= (and b!991909 (not condMapEmpty!37131)) mapNonEmpty!37131))

(assert (= (and mapNonEmpty!37131 ((_ is ValueCellFull!11205) mapValue!37131)) b!991914))

(assert (= (and b!991909 ((_ is ValueCellFull!11205) mapDefault!37131)) b!991908))

(assert (= start!84922 b!991909))

(declare-fun m!919729 () Bool)

(assert (=> b!991915 m!919729))

(declare-fun m!919731 () Bool)

(assert (=> b!991912 m!919731))

(declare-fun m!919733 () Bool)

(assert (=> start!84922 m!919733))

(declare-fun m!919735 () Bool)

(assert (=> start!84922 m!919735))

(declare-fun m!919737 () Bool)

(assert (=> start!84922 m!919737))

(declare-fun m!919739 () Bool)

(assert (=> b!991913 m!919739))

(declare-fun m!919741 () Bool)

(assert (=> b!991910 m!919741))

(declare-fun m!919743 () Bool)

(assert (=> b!991911 m!919743))

(declare-fun m!919745 () Bool)

(assert (=> mapNonEmpty!37131 m!919745))

(check-sat (not b!991912) (not mapNonEmpty!37131) tp_is_empty!23373 (not b!991910) (not b!991911) (not b!991915) (not b!991913) (not start!84922))
(check-sat)
(get-model)

(declare-fun d!117923 () Bool)

(assert (=> d!117923 (= (inRange!0 (index!39199 lt!439992) mask!2471) (and (bvsge (index!39199 lt!439992) #b00000000000000000000000000000000) (bvslt (index!39199 lt!439992) (bvadd mask!2471 #b00000000000000000000000000000001))))))

(assert (=> b!991915 d!117923))

(declare-fun d!117925 () Bool)

(assert (=> d!117925 (= (validKeyInArray!0 k0!1425) (and (not (= k0!1425 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1425 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!991910 d!117925))

(declare-fun b!991956 () Bool)

(declare-fun e!559573 () SeekEntryResult!9207)

(declare-fun lt!440007 () SeekEntryResult!9207)

(assert (=> b!991956 (= e!559573 (MissingZero!9207 (index!39200 lt!440007)))))

(declare-fun b!991957 () Bool)

(declare-fun c!100563 () Bool)

(declare-fun lt!440006 () (_ BitVec 64))

(assert (=> b!991957 (= c!100563 (= lt!440006 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!559574 () SeekEntryResult!9207)

(assert (=> b!991957 (= e!559574 e!559573)))

(declare-fun b!991958 () Bool)

(declare-fun e!559572 () SeekEntryResult!9207)

(assert (=> b!991958 (= e!559572 e!559574)))

(assert (=> b!991958 (= lt!440006 (select (arr!30190 _keys!1945) (index!39200 lt!440007)))))

(declare-fun c!100562 () Bool)

(assert (=> b!991958 (= c!100562 (= lt!440006 k0!1425))))

(declare-fun b!991959 () Bool)

(assert (=> b!991959 (= e!559574 (Found!9207 (index!39200 lt!440007)))))

(declare-fun b!991960 () Bool)

(declare-fun lt!440004 () SeekEntryResult!9207)

(assert (=> b!991960 (= e!559573 (ite ((_ is MissingVacant!9207) lt!440004) (MissingZero!9207 (index!39201 lt!440004)) lt!440004))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62699 (_ BitVec 32)) SeekEntryResult!9207)

(assert (=> b!991960 (= lt!440004 (seekKeyOrZeroReturnVacant!0 (x!86313 lt!440007) (index!39200 lt!440007) (index!39200 lt!440007) k0!1425 _keys!1945 mask!2471))))

(declare-fun d!117927 () Bool)

(declare-fun lt!440005 () SeekEntryResult!9207)

(assert (=> d!117927 (and (or ((_ is MissingVacant!9207) lt!440005) (not ((_ is Found!9207) lt!440005)) (and (bvsge (index!39199 lt!440005) #b00000000000000000000000000000000) (bvslt (index!39199 lt!440005) (size!30670 _keys!1945)))) (not ((_ is MissingVacant!9207) lt!440005)) (or (not ((_ is Found!9207) lt!440005)) (= (select (arr!30190 _keys!1945) (index!39199 lt!440005)) k0!1425)))))

(assert (=> d!117927 (= lt!440005 e!559572)))

(declare-fun c!100561 () Bool)

(assert (=> d!117927 (= c!100561 (and ((_ is Intermediate!9207) lt!440007) (undefined!10019 lt!440007)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62699 (_ BitVec 32)) SeekEntryResult!9207)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!117927 (= lt!440007 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1425 mask!2471) k0!1425 _keys!1945 mask!2471))))

(assert (=> d!117927 (validMask!0 mask!2471)))

(assert (=> d!117927 (= (seekEntry!0 k0!1425 _keys!1945 mask!2471) lt!440005)))

(declare-fun b!991961 () Bool)

(assert (=> b!991961 (= e!559572 Undefined!9207)))

(assert (= (and d!117927 c!100561) b!991961))

(assert (= (and d!117927 (not c!100561)) b!991958))

(assert (= (and b!991958 c!100562) b!991959))

(assert (= (and b!991958 (not c!100562)) b!991957))

(assert (= (and b!991957 c!100563) b!991956))

(assert (= (and b!991957 (not c!100563)) b!991960))

(declare-fun m!919765 () Bool)

(assert (=> b!991958 m!919765))

(declare-fun m!919767 () Bool)

(assert (=> b!991960 m!919767))

(declare-fun m!919769 () Bool)

(assert (=> d!117927 m!919769))

(declare-fun m!919771 () Bool)

(assert (=> d!117927 m!919771))

(assert (=> d!117927 m!919771))

(declare-fun m!919773 () Bool)

(assert (=> d!117927 m!919773))

(assert (=> d!117927 m!919733))

(assert (=> b!991913 d!117927))

(declare-fun d!117929 () Bool)

(assert (=> d!117929 (= (validMask!0 mask!2471) (and (or (= mask!2471 #b00000000000000000000000000000111) (= mask!2471 #b00000000000000000000000000001111) (= mask!2471 #b00000000000000000000000000011111) (= mask!2471 #b00000000000000000000000000111111) (= mask!2471 #b00000000000000000000000001111111) (= mask!2471 #b00000000000000000000000011111111) (= mask!2471 #b00000000000000000000000111111111) (= mask!2471 #b00000000000000000000001111111111) (= mask!2471 #b00000000000000000000011111111111) (= mask!2471 #b00000000000000000000111111111111) (= mask!2471 #b00000000000000000001111111111111) (= mask!2471 #b00000000000000000011111111111111) (= mask!2471 #b00000000000000000111111111111111) (= mask!2471 #b00000000000000001111111111111111) (= mask!2471 #b00000000000000011111111111111111) (= mask!2471 #b00000000000000111111111111111111) (= mask!2471 #b00000000000001111111111111111111) (= mask!2471 #b00000000000011111111111111111111) (= mask!2471 #b00000000000111111111111111111111) (= mask!2471 #b00000000001111111111111111111111) (= mask!2471 #b00000000011111111111111111111111) (= mask!2471 #b00000000111111111111111111111111) (= mask!2471 #b00000001111111111111111111111111) (= mask!2471 #b00000011111111111111111111111111) (= mask!2471 #b00000111111111111111111111111111) (= mask!2471 #b00001111111111111111111111111111) (= mask!2471 #b00011111111111111111111111111111) (= mask!2471 #b00111111111111111111111111111111)) (bvsle mask!2471 #b00111111111111111111111111111111)))))

(assert (=> start!84922 d!117929))

(declare-fun d!117931 () Bool)

(assert (=> d!117931 (= (array_inv!23179 _values!1551) (bvsge (size!30669 _values!1551) #b00000000000000000000000000000000))))

(assert (=> start!84922 d!117931))

(declare-fun d!117933 () Bool)

(assert (=> d!117933 (= (array_inv!23180 _keys!1945) (bvsge (size!30670 _keys!1945) #b00000000000000000000000000000000))))

(assert (=> start!84922 d!117933))

(declare-fun b!991972 () Bool)

(declare-fun e!559586 () Bool)

(declare-fun call!42088 () Bool)

(assert (=> b!991972 (= e!559586 call!42088)))

(declare-fun b!991973 () Bool)

(declare-fun e!559585 () Bool)

(declare-fun contains!5742 (List!20985 (_ BitVec 64)) Bool)

(assert (=> b!991973 (= e!559585 (contains!5742 Nil!20982 (select (arr!30190 _keys!1945) #b00000000000000000000000000000000)))))

(declare-fun b!991974 () Bool)

(declare-fun e!559583 () Bool)

(declare-fun e!559584 () Bool)

(assert (=> b!991974 (= e!559583 e!559584)))

(declare-fun res!663124 () Bool)

(assert (=> b!991974 (=> (not res!663124) (not e!559584))))

(assert (=> b!991974 (= res!663124 (not e!559585))))

(declare-fun res!663122 () Bool)

(assert (=> b!991974 (=> (not res!663122) (not e!559585))))

(assert (=> b!991974 (= res!663122 (validKeyInArray!0 (select (arr!30190 _keys!1945) #b00000000000000000000000000000000)))))

(declare-fun d!117935 () Bool)

(declare-fun res!663123 () Bool)

(assert (=> d!117935 (=> res!663123 e!559583)))

(assert (=> d!117935 (= res!663123 (bvsge #b00000000000000000000000000000000 (size!30670 _keys!1945)))))

(assert (=> d!117935 (= (arrayNoDuplicates!0 _keys!1945 #b00000000000000000000000000000000 Nil!20982) e!559583)))

(declare-fun b!991975 () Bool)

(assert (=> b!991975 (= e!559586 call!42088)))

(declare-fun bm!42085 () Bool)

(declare-fun c!100566 () Bool)

(assert (=> bm!42085 (= call!42088 (arrayNoDuplicates!0 _keys!1945 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!100566 (Cons!20981 (select (arr!30190 _keys!1945) #b00000000000000000000000000000000) Nil!20982) Nil!20982)))))

(declare-fun b!991976 () Bool)

(assert (=> b!991976 (= e!559584 e!559586)))

(assert (=> b!991976 (= c!100566 (validKeyInArray!0 (select (arr!30190 _keys!1945) #b00000000000000000000000000000000)))))

(assert (= (and d!117935 (not res!663123)) b!991974))

(assert (= (and b!991974 res!663122) b!991973))

(assert (= (and b!991974 res!663124) b!991976))

(assert (= (and b!991976 c!100566) b!991975))

(assert (= (and b!991976 (not c!100566)) b!991972))

(assert (= (or b!991975 b!991972) bm!42085))

(declare-fun m!919775 () Bool)

(assert (=> b!991973 m!919775))

(assert (=> b!991973 m!919775))

(declare-fun m!919777 () Bool)

(assert (=> b!991973 m!919777))

(assert (=> b!991974 m!919775))

(assert (=> b!991974 m!919775))

(declare-fun m!919779 () Bool)

(assert (=> b!991974 m!919779))

(assert (=> bm!42085 m!919775))

(declare-fun m!919781 () Bool)

(assert (=> bm!42085 m!919781))

(assert (=> b!991976 m!919775))

(assert (=> b!991976 m!919775))

(assert (=> b!991976 m!919779))

(assert (=> b!991912 d!117935))

(declare-fun bm!42088 () Bool)

(declare-fun call!42091 () Bool)

(assert (=> bm!42088 (= call!42091 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1945 mask!2471))))

(declare-fun b!991985 () Bool)

(declare-fun e!559595 () Bool)

(declare-fun e!559593 () Bool)

(assert (=> b!991985 (= e!559595 e!559593)))

(declare-fun c!100569 () Bool)

(assert (=> b!991985 (= c!100569 (validKeyInArray!0 (select (arr!30190 _keys!1945) #b00000000000000000000000000000000)))))

(declare-fun b!991986 () Bool)

(declare-fun e!559594 () Bool)

(assert (=> b!991986 (= e!559594 call!42091)))

(declare-fun d!117937 () Bool)

(declare-fun res!663130 () Bool)

(assert (=> d!117937 (=> res!663130 e!559595)))

(assert (=> d!117937 (= res!663130 (bvsge #b00000000000000000000000000000000 (size!30670 _keys!1945)))))

(assert (=> d!117937 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471) e!559595)))

(declare-fun b!991987 () Bool)

(assert (=> b!991987 (= e!559593 call!42091)))

(declare-fun b!991988 () Bool)

(assert (=> b!991988 (= e!559593 e!559594)))

(declare-fun lt!440014 () (_ BitVec 64))

(assert (=> b!991988 (= lt!440014 (select (arr!30190 _keys!1945) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32858 0))(
  ( (Unit!32859) )
))
(declare-fun lt!440016 () Unit!32858)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62699 (_ BitVec 64) (_ BitVec 32)) Unit!32858)

(assert (=> b!991988 (= lt!440016 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1945 lt!440014 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!62699 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!991988 (arrayContainsKey!0 _keys!1945 lt!440014 #b00000000000000000000000000000000)))

(declare-fun lt!440015 () Unit!32858)

(assert (=> b!991988 (= lt!440015 lt!440016)))

(declare-fun res!663129 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62699 (_ BitVec 32)) SeekEntryResult!9207)

(assert (=> b!991988 (= res!663129 (= (seekEntryOrOpen!0 (select (arr!30190 _keys!1945) #b00000000000000000000000000000000) _keys!1945 mask!2471) (Found!9207 #b00000000000000000000000000000000)))))

(assert (=> b!991988 (=> (not res!663129) (not e!559594))))

(assert (= (and d!117937 (not res!663130)) b!991985))

(assert (= (and b!991985 c!100569) b!991988))

(assert (= (and b!991985 (not c!100569)) b!991987))

(assert (= (and b!991988 res!663129) b!991986))

(assert (= (or b!991986 b!991987) bm!42088))

(declare-fun m!919783 () Bool)

(assert (=> bm!42088 m!919783))

(assert (=> b!991985 m!919775))

(assert (=> b!991985 m!919775))

(assert (=> b!991985 m!919779))

(assert (=> b!991988 m!919775))

(declare-fun m!919785 () Bool)

(assert (=> b!991988 m!919785))

(declare-fun m!919787 () Bool)

(assert (=> b!991988 m!919787))

(assert (=> b!991988 m!919775))

(declare-fun m!919789 () Bool)

(assert (=> b!991988 m!919789))

(assert (=> b!991911 d!117937))

(declare-fun b!991995 () Bool)

(declare-fun e!559600 () Bool)

(assert (=> b!991995 (= e!559600 tp_is_empty!23373)))

(declare-fun b!991996 () Bool)

(declare-fun e!559601 () Bool)

(assert (=> b!991996 (= e!559601 tp_is_empty!23373)))

(declare-fun mapIsEmpty!37137 () Bool)

(declare-fun mapRes!37137 () Bool)

(assert (=> mapIsEmpty!37137 mapRes!37137))

(declare-fun condMapEmpty!37137 () Bool)

(declare-fun mapDefault!37137 () ValueCell!11205)

(assert (=> mapNonEmpty!37131 (= condMapEmpty!37137 (= mapRest!37131 ((as const (Array (_ BitVec 32) ValueCell!11205)) mapDefault!37137)))))

(assert (=> mapNonEmpty!37131 (= tp!70203 (and e!559601 mapRes!37137))))

(declare-fun mapNonEmpty!37137 () Bool)

(declare-fun tp!70209 () Bool)

(assert (=> mapNonEmpty!37137 (= mapRes!37137 (and tp!70209 e!559600))))

(declare-fun mapRest!37137 () (Array (_ BitVec 32) ValueCell!11205))

(declare-fun mapValue!37137 () ValueCell!11205)

(declare-fun mapKey!37137 () (_ BitVec 32))

(assert (=> mapNonEmpty!37137 (= mapRest!37131 (store mapRest!37137 mapKey!37137 mapValue!37137))))

(assert (= (and mapNonEmpty!37131 condMapEmpty!37137) mapIsEmpty!37137))

(assert (= (and mapNonEmpty!37131 (not condMapEmpty!37137)) mapNonEmpty!37137))

(assert (= (and mapNonEmpty!37137 ((_ is ValueCellFull!11205) mapValue!37137)) b!991995))

(assert (= (and mapNonEmpty!37131 ((_ is ValueCellFull!11205) mapDefault!37137)) b!991996))

(declare-fun m!919791 () Bool)

(assert (=> mapNonEmpty!37137 m!919791))

(check-sat (not b!991974) (not b!991988) (not mapNonEmpty!37137) (not b!991973) tp_is_empty!23373 (not bm!42088) (not b!991985) (not d!117927) (not b!991976) (not bm!42085) (not b!991960))
(check-sat)
