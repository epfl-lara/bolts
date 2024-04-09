; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41328 () Bool)

(assert start!41328)

(declare-fun res!276315 () Bool)

(declare-fun e!269438 () Bool)

(assert (=> start!41328 (=> (not res!276315) (not e!269438))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41328 (= res!276315 (validMask!0 mask!1365))))

(assert (=> start!41328 e!269438))

(assert (=> start!41328 true))

(declare-datatypes ((array!28683 0))(
  ( (array!28684 (arr!13774 (Array (_ BitVec 32) (_ BitVec 64))) (size!14126 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28683)

(declare-fun array_inv!9942 (array!28683) Bool)

(assert (=> start!41328 (array_inv!9942 _keys!1025)))

(declare-datatypes ((V!17717 0))(
  ( (V!17718 (val!6274 Int)) )
))
(declare-datatypes ((ValueCell!5886 0))(
  ( (ValueCellFull!5886 (v!8556 V!17717)) (EmptyCell!5886) )
))
(declare-datatypes ((array!28685 0))(
  ( (array!28686 (arr!13775 (Array (_ BitVec 32) ValueCell!5886)) (size!14127 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28685)

(declare-fun e!269441 () Bool)

(declare-fun array_inv!9943 (array!28685) Bool)

(assert (=> start!41328 (and (array_inv!9943 _values!833) e!269441)))

(declare-fun mapIsEmpty!20353 () Bool)

(declare-fun mapRes!20353 () Bool)

(assert (=> mapIsEmpty!20353 mapRes!20353))

(declare-fun b!461863 () Bool)

(declare-fun e!269440 () Bool)

(assert (=> b!461863 (= e!269441 (and e!269440 mapRes!20353))))

(declare-fun condMapEmpty!20353 () Bool)

(declare-fun mapDefault!20353 () ValueCell!5886)

(assert (=> b!461863 (= condMapEmpty!20353 (= (arr!13775 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5886)) mapDefault!20353)))))

(declare-fun b!461864 () Bool)

(declare-fun tp_is_empty!12459 () Bool)

(assert (=> b!461864 (= e!269440 tp_is_empty!12459)))

(declare-fun b!461865 () Bool)

(declare-fun res!276313 () Bool)

(assert (=> b!461865 (=> (not res!276313) (not e!269438))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!461865 (= res!276313 (and (= (size!14127 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14126 _keys!1025) (size!14127 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!461866 () Bool)

(declare-fun res!276314 () Bool)

(assert (=> b!461866 (=> (not res!276314) (not e!269438))))

(assert (=> b!461866 (= res!276314 (and (bvsle #b00000000000000000000000000000000 (size!14126 _keys!1025)) (bvslt (size!14126 _keys!1025) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!20353 () Bool)

(declare-fun tp!39172 () Bool)

(declare-fun e!269439 () Bool)

(assert (=> mapNonEmpty!20353 (= mapRes!20353 (and tp!39172 e!269439))))

(declare-fun mapRest!20353 () (Array (_ BitVec 32) ValueCell!5886))

(declare-fun mapKey!20353 () (_ BitVec 32))

(declare-fun mapValue!20353 () ValueCell!5886)

(assert (=> mapNonEmpty!20353 (= (arr!13775 _values!833) (store mapRest!20353 mapKey!20353 mapValue!20353))))

(declare-fun b!461867 () Bool)

(declare-fun res!276312 () Bool)

(assert (=> b!461867 (=> (not res!276312) (not e!269438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28683 (_ BitVec 32)) Bool)

(assert (=> b!461867 (= res!276312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!461868 () Bool)

(assert (=> b!461868 (= e!269439 tp_is_empty!12459)))

(declare-fun b!461869 () Bool)

(declare-datatypes ((List!8336 0))(
  ( (Nil!8333) (Cons!8332 (h!9188 (_ BitVec 64)) (t!14288 List!8336)) )
))
(declare-fun noDuplicate!201 (List!8336) Bool)

(assert (=> b!461869 (= e!269438 (not (noDuplicate!201 Nil!8333)))))

(assert (= (and start!41328 res!276315) b!461865))

(assert (= (and b!461865 res!276313) b!461867))

(assert (= (and b!461867 res!276312) b!461866))

(assert (= (and b!461866 res!276314) b!461869))

(assert (= (and b!461863 condMapEmpty!20353) mapIsEmpty!20353))

(assert (= (and b!461863 (not condMapEmpty!20353)) mapNonEmpty!20353))

(get-info :version)

(assert (= (and mapNonEmpty!20353 ((_ is ValueCellFull!5886) mapValue!20353)) b!461868))

(assert (= (and b!461863 ((_ is ValueCellFull!5886) mapDefault!20353)) b!461864))

(assert (= start!41328 b!461863))

(declare-fun m!444967 () Bool)

(assert (=> start!41328 m!444967))

(declare-fun m!444969 () Bool)

(assert (=> start!41328 m!444969))

(declare-fun m!444971 () Bool)

(assert (=> start!41328 m!444971))

(declare-fun m!444973 () Bool)

(assert (=> mapNonEmpty!20353 m!444973))

(declare-fun m!444975 () Bool)

(assert (=> b!461867 m!444975))

(declare-fun m!444977 () Bool)

(assert (=> b!461869 m!444977))

(check-sat tp_is_empty!12459 (not mapNonEmpty!20353) (not start!41328) (not b!461869) (not b!461867))
(check-sat)
(get-model)

(declare-fun d!74803 () Bool)

(declare-fun res!276332 () Bool)

(declare-fun e!269461 () Bool)

(assert (=> d!74803 (=> res!276332 e!269461)))

(assert (=> d!74803 (= res!276332 ((_ is Nil!8333) Nil!8333))))

(assert (=> d!74803 (= (noDuplicate!201 Nil!8333) e!269461)))

(declare-fun b!461895 () Bool)

(declare-fun e!269462 () Bool)

(assert (=> b!461895 (= e!269461 e!269462)))

(declare-fun res!276333 () Bool)

(assert (=> b!461895 (=> (not res!276333) (not e!269462))))

(declare-fun contains!2517 (List!8336 (_ BitVec 64)) Bool)

(assert (=> b!461895 (= res!276333 (not (contains!2517 (t!14288 Nil!8333) (h!9188 Nil!8333))))))

(declare-fun b!461896 () Bool)

(assert (=> b!461896 (= e!269462 (noDuplicate!201 (t!14288 Nil!8333)))))

(assert (= (and d!74803 (not res!276332)) b!461895))

(assert (= (and b!461895 res!276333) b!461896))

(declare-fun m!444991 () Bool)

(assert (=> b!461895 m!444991))

(declare-fun m!444993 () Bool)

(assert (=> b!461896 m!444993))

(assert (=> b!461869 d!74803))

(declare-fun d!74805 () Bool)

(assert (=> d!74805 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!41328 d!74805))

(declare-fun d!74807 () Bool)

(assert (=> d!74807 (= (array_inv!9942 _keys!1025) (bvsge (size!14126 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!41328 d!74807))

(declare-fun d!74809 () Bool)

(assert (=> d!74809 (= (array_inv!9943 _values!833) (bvsge (size!14127 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!41328 d!74809))

(declare-fun b!461905 () Bool)

(declare-fun e!269469 () Bool)

(declare-fun e!269470 () Bool)

(assert (=> b!461905 (= e!269469 e!269470)))

(declare-fun lt!209121 () (_ BitVec 64))

(assert (=> b!461905 (= lt!209121 (select (arr!13774 _keys!1025) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!13389 0))(
  ( (Unit!13390) )
))
(declare-fun lt!209122 () Unit!13389)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!28683 (_ BitVec 64) (_ BitVec 32)) Unit!13389)

(assert (=> b!461905 (= lt!209122 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!209121 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!28683 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!461905 (arrayContainsKey!0 _keys!1025 lt!209121 #b00000000000000000000000000000000)))

(declare-fun lt!209123 () Unit!13389)

(assert (=> b!461905 (= lt!209123 lt!209122)))

(declare-fun res!276339 () Bool)

(declare-datatypes ((SeekEntryResult!3528 0))(
  ( (MissingZero!3528 (index!16291 (_ BitVec 32))) (Found!3528 (index!16292 (_ BitVec 32))) (Intermediate!3528 (undefined!4340 Bool) (index!16293 (_ BitVec 32)) (x!43057 (_ BitVec 32))) (Undefined!3528) (MissingVacant!3528 (index!16294 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!28683 (_ BitVec 32)) SeekEntryResult!3528)

(assert (=> b!461905 (= res!276339 (= (seekEntryOrOpen!0 (select (arr!13774 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3528 #b00000000000000000000000000000000)))))

(assert (=> b!461905 (=> (not res!276339) (not e!269470))))

(declare-fun b!461906 () Bool)

(declare-fun call!30197 () Bool)

(assert (=> b!461906 (= e!269470 call!30197)))

(declare-fun b!461907 () Bool)

(declare-fun e!269471 () Bool)

(assert (=> b!461907 (= e!269471 e!269469)))

(declare-fun c!56550 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!461907 (= c!56550 (validKeyInArray!0 (select (arr!13774 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun d!74811 () Bool)

(declare-fun res!276338 () Bool)

(assert (=> d!74811 (=> res!276338 e!269471)))

(assert (=> d!74811 (= res!276338 (bvsge #b00000000000000000000000000000000 (size!14126 _keys!1025)))))

(assert (=> d!74811 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!269471)))

(declare-fun bm!30194 () Bool)

(assert (=> bm!30194 (= call!30197 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun b!461908 () Bool)

(assert (=> b!461908 (= e!269469 call!30197)))

(assert (= (and d!74811 (not res!276338)) b!461907))

(assert (= (and b!461907 c!56550) b!461905))

(assert (= (and b!461907 (not c!56550)) b!461908))

(assert (= (and b!461905 res!276339) b!461906))

(assert (= (or b!461906 b!461908) bm!30194))

(declare-fun m!444995 () Bool)

(assert (=> b!461905 m!444995))

(declare-fun m!444997 () Bool)

(assert (=> b!461905 m!444997))

(declare-fun m!444999 () Bool)

(assert (=> b!461905 m!444999))

(assert (=> b!461905 m!444995))

(declare-fun m!445001 () Bool)

(assert (=> b!461905 m!445001))

(assert (=> b!461907 m!444995))

(assert (=> b!461907 m!444995))

(declare-fun m!445003 () Bool)

(assert (=> b!461907 m!445003))

(declare-fun m!445005 () Bool)

(assert (=> bm!30194 m!445005))

(assert (=> b!461867 d!74811))

(declare-fun condMapEmpty!20359 () Bool)

(declare-fun mapDefault!20359 () ValueCell!5886)

(assert (=> mapNonEmpty!20353 (= condMapEmpty!20359 (= mapRest!20353 ((as const (Array (_ BitVec 32) ValueCell!5886)) mapDefault!20359)))))

(declare-fun e!269476 () Bool)

(declare-fun mapRes!20359 () Bool)

(assert (=> mapNonEmpty!20353 (= tp!39172 (and e!269476 mapRes!20359))))

(declare-fun b!461916 () Bool)

(assert (=> b!461916 (= e!269476 tp_is_empty!12459)))

(declare-fun mapNonEmpty!20359 () Bool)

(declare-fun tp!39178 () Bool)

(declare-fun e!269477 () Bool)

(assert (=> mapNonEmpty!20359 (= mapRes!20359 (and tp!39178 e!269477))))

(declare-fun mapValue!20359 () ValueCell!5886)

(declare-fun mapKey!20359 () (_ BitVec 32))

(declare-fun mapRest!20359 () (Array (_ BitVec 32) ValueCell!5886))

(assert (=> mapNonEmpty!20359 (= mapRest!20353 (store mapRest!20359 mapKey!20359 mapValue!20359))))

(declare-fun b!461915 () Bool)

(assert (=> b!461915 (= e!269477 tp_is_empty!12459)))

(declare-fun mapIsEmpty!20359 () Bool)

(assert (=> mapIsEmpty!20359 mapRes!20359))

(assert (= (and mapNonEmpty!20353 condMapEmpty!20359) mapIsEmpty!20359))

(assert (= (and mapNonEmpty!20353 (not condMapEmpty!20359)) mapNonEmpty!20359))

(assert (= (and mapNonEmpty!20359 ((_ is ValueCellFull!5886) mapValue!20359)) b!461915))

(assert (= (and mapNonEmpty!20353 ((_ is ValueCellFull!5886) mapDefault!20359)) b!461916))

(declare-fun m!445007 () Bool)

(assert (=> mapNonEmpty!20359 m!445007))

(check-sat (not mapNonEmpty!20359) tp_is_empty!12459 (not b!461907) (not b!461896) (not b!461895) (not bm!30194) (not b!461905))
(check-sat)
