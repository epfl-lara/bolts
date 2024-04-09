; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69856 () Bool)

(assert start!69856)

(declare-fun b!812000 () Bool)

(declare-fun e!449717 () Bool)

(declare-datatypes ((List!15125 0))(
  ( (Nil!15122) (Cons!15121 (h!16250 (_ BitVec 64)) (t!21448 List!15125)) )
))
(declare-fun noDuplicate!1292 (List!15125) Bool)

(assert (=> b!812000 (= e!449717 (not (noDuplicate!1292 Nil!15122)))))

(declare-fun mapIsEmpty!22579 () Bool)

(declare-fun mapRes!22579 () Bool)

(assert (=> mapIsEmpty!22579 mapRes!22579))

(declare-fun b!812001 () Bool)

(declare-fun res!555030 () Bool)

(assert (=> b!812001 (=> (not res!555030) (not e!449717))))

(declare-datatypes ((array!44212 0))(
  ( (array!44213 (arr!21166 (Array (_ BitVec 32) (_ BitVec 64))) (size!21587 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44212)

(assert (=> b!812001 (= res!555030 (and (bvsle #b00000000000000000000000000000000 (size!21587 _keys!976)) (bvslt (size!21587 _keys!976) #b01111111111111111111111111111111)))))

(declare-fun b!812002 () Bool)

(declare-fun e!449721 () Bool)

(declare-fun tp_is_empty!14007 () Bool)

(assert (=> b!812002 (= e!449721 tp_is_empty!14007)))

(declare-fun res!555033 () Bool)

(assert (=> start!69856 (=> (not res!555033) (not e!449717))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69856 (= res!555033 (validMask!0 mask!1312))))

(assert (=> start!69856 e!449717))

(declare-fun array_inv!16935 (array!44212) Bool)

(assert (=> start!69856 (array_inv!16935 _keys!976)))

(assert (=> start!69856 true))

(declare-datatypes ((V!23677 0))(
  ( (V!23678 (val!7051 Int)) )
))
(declare-datatypes ((ValueCell!6588 0))(
  ( (ValueCellFull!6588 (v!9473 V!23677)) (EmptyCell!6588) )
))
(declare-datatypes ((array!44214 0))(
  ( (array!44215 (arr!21167 (Array (_ BitVec 32) ValueCell!6588)) (size!21588 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44214)

(declare-fun e!449718 () Bool)

(declare-fun array_inv!16936 (array!44214) Bool)

(assert (=> start!69856 (and (array_inv!16936 _values!788) e!449718)))

(declare-fun b!812003 () Bool)

(declare-fun e!449720 () Bool)

(assert (=> b!812003 (= e!449718 (and e!449720 mapRes!22579))))

(declare-fun condMapEmpty!22579 () Bool)

(declare-fun mapDefault!22579 () ValueCell!6588)

(assert (=> b!812003 (= condMapEmpty!22579 (= (arr!21167 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6588)) mapDefault!22579)))))

(declare-fun b!812004 () Bool)

(declare-fun res!555032 () Bool)

(assert (=> b!812004 (=> (not res!555032) (not e!449717))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44212 (_ BitVec 32)) Bool)

(assert (=> b!812004 (= res!555032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!812005 () Bool)

(assert (=> b!812005 (= e!449720 tp_is_empty!14007)))

(declare-fun mapNonEmpty!22579 () Bool)

(declare-fun tp!43687 () Bool)

(assert (=> mapNonEmpty!22579 (= mapRes!22579 (and tp!43687 e!449721))))

(declare-fun mapRest!22579 () (Array (_ BitVec 32) ValueCell!6588))

(declare-fun mapValue!22579 () ValueCell!6588)

(declare-fun mapKey!22579 () (_ BitVec 32))

(assert (=> mapNonEmpty!22579 (= (arr!21167 _values!788) (store mapRest!22579 mapKey!22579 mapValue!22579))))

(declare-fun b!812006 () Bool)

(declare-fun res!555031 () Bool)

(assert (=> b!812006 (=> (not res!555031) (not e!449717))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812006 (= res!555031 (and (= (size!21588 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21587 _keys!976) (size!21588 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!69856 res!555033) b!812006))

(assert (= (and b!812006 res!555031) b!812004))

(assert (= (and b!812004 res!555032) b!812001))

(assert (= (and b!812001 res!555030) b!812000))

(assert (= (and b!812003 condMapEmpty!22579) mapIsEmpty!22579))

(assert (= (and b!812003 (not condMapEmpty!22579)) mapNonEmpty!22579))

(get-info :version)

(assert (= (and mapNonEmpty!22579 ((_ is ValueCellFull!6588) mapValue!22579)) b!812002))

(assert (= (and b!812003 ((_ is ValueCellFull!6588) mapDefault!22579)) b!812005))

(assert (= start!69856 b!812003))

(declare-fun m!754577 () Bool)

(assert (=> b!812000 m!754577))

(declare-fun m!754579 () Bool)

(assert (=> start!69856 m!754579))

(declare-fun m!754581 () Bool)

(assert (=> start!69856 m!754581))

(declare-fun m!754583 () Bool)

(assert (=> start!69856 m!754583))

(declare-fun m!754585 () Bool)

(assert (=> b!812004 m!754585))

(declare-fun m!754587 () Bool)

(assert (=> mapNonEmpty!22579 m!754587))

(check-sat tp_is_empty!14007 (not b!812004) (not mapNonEmpty!22579) (not start!69856) (not b!812000))
(check-sat)
(get-model)

(declare-fun d!104233 () Bool)

(declare-fun res!555050 () Bool)

(declare-fun e!449741 () Bool)

(assert (=> d!104233 (=> res!555050 e!449741)))

(assert (=> d!104233 (= res!555050 ((_ is Nil!15122) Nil!15122))))

(assert (=> d!104233 (= (noDuplicate!1292 Nil!15122) e!449741)))

(declare-fun b!812032 () Bool)

(declare-fun e!449742 () Bool)

(assert (=> b!812032 (= e!449741 e!449742)))

(declare-fun res!555051 () Bool)

(assert (=> b!812032 (=> (not res!555051) (not e!449742))))

(declare-fun contains!4139 (List!15125 (_ BitVec 64)) Bool)

(assert (=> b!812032 (= res!555051 (not (contains!4139 (t!21448 Nil!15122) (h!16250 Nil!15122))))))

(declare-fun b!812033 () Bool)

(assert (=> b!812033 (= e!449742 (noDuplicate!1292 (t!21448 Nil!15122)))))

(assert (= (and d!104233 (not res!555050)) b!812032))

(assert (= (and b!812032 res!555051) b!812033))

(declare-fun m!754601 () Bool)

(assert (=> b!812032 m!754601))

(declare-fun m!754603 () Bool)

(assert (=> b!812033 m!754603))

(assert (=> b!812000 d!104233))

(declare-fun b!812042 () Bool)

(declare-fun e!449749 () Bool)

(declare-fun e!449750 () Bool)

(assert (=> b!812042 (= e!449749 e!449750)))

(declare-fun c!88812 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!812042 (= c!88812 (validKeyInArray!0 (select (arr!21166 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!104235 () Bool)

(declare-fun res!555057 () Bool)

(assert (=> d!104235 (=> res!555057 e!449749)))

(assert (=> d!104235 (= res!555057 (bvsge #b00000000000000000000000000000000 (size!21587 _keys!976)))))

(assert (=> d!104235 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!449749)))

(declare-fun b!812043 () Bool)

(declare-fun e!449751 () Bool)

(declare-fun call!35481 () Bool)

(assert (=> b!812043 (= e!449751 call!35481)))

(declare-fun b!812044 () Bool)

(assert (=> b!812044 (= e!449750 call!35481)))

(declare-fun bm!35478 () Bool)

(assert (=> bm!35478 (= call!35481 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!812045 () Bool)

(assert (=> b!812045 (= e!449750 e!449751)))

(declare-fun lt!364049 () (_ BitVec 64))

(assert (=> b!812045 (= lt!364049 (select (arr!21166 _keys!976) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27684 0))(
  ( (Unit!27685) )
))
(declare-fun lt!364050 () Unit!27684)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!44212 (_ BitVec 64) (_ BitVec 32)) Unit!27684)

(assert (=> b!812045 (= lt!364050 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!364049 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!44212 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!812045 (arrayContainsKey!0 _keys!976 lt!364049 #b00000000000000000000000000000000)))

(declare-fun lt!364051 () Unit!27684)

(assert (=> b!812045 (= lt!364051 lt!364050)))

(declare-fun res!555056 () Bool)

(declare-datatypes ((SeekEntryResult!8705 0))(
  ( (MissingZero!8705 (index!37190 (_ BitVec 32))) (Found!8705 (index!37191 (_ BitVec 32))) (Intermediate!8705 (undefined!9517 Bool) (index!37192 (_ BitVec 32)) (x!68173 (_ BitVec 32))) (Undefined!8705) (MissingVacant!8705 (index!37193 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44212 (_ BitVec 32)) SeekEntryResult!8705)

(assert (=> b!812045 (= res!555056 (= (seekEntryOrOpen!0 (select (arr!21166 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8705 #b00000000000000000000000000000000)))))

(assert (=> b!812045 (=> (not res!555056) (not e!449751))))

(assert (= (and d!104235 (not res!555057)) b!812042))

(assert (= (and b!812042 c!88812) b!812045))

(assert (= (and b!812042 (not c!88812)) b!812044))

(assert (= (and b!812045 res!555056) b!812043))

(assert (= (or b!812043 b!812044) bm!35478))

(declare-fun m!754605 () Bool)

(assert (=> b!812042 m!754605))

(assert (=> b!812042 m!754605))

(declare-fun m!754607 () Bool)

(assert (=> b!812042 m!754607))

(declare-fun m!754609 () Bool)

(assert (=> bm!35478 m!754609))

(assert (=> b!812045 m!754605))

(declare-fun m!754611 () Bool)

(assert (=> b!812045 m!754611))

(declare-fun m!754613 () Bool)

(assert (=> b!812045 m!754613))

(assert (=> b!812045 m!754605))

(declare-fun m!754615 () Bool)

(assert (=> b!812045 m!754615))

(assert (=> b!812004 d!104235))

(declare-fun d!104237 () Bool)

(assert (=> d!104237 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!69856 d!104237))

(declare-fun d!104239 () Bool)

(assert (=> d!104239 (= (array_inv!16935 _keys!976) (bvsge (size!21587 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!69856 d!104239))

(declare-fun d!104241 () Bool)

(assert (=> d!104241 (= (array_inv!16936 _values!788) (bvsge (size!21588 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!69856 d!104241))

(declare-fun condMapEmpty!22585 () Bool)

(declare-fun mapDefault!22585 () ValueCell!6588)

(assert (=> mapNonEmpty!22579 (= condMapEmpty!22585 (= mapRest!22579 ((as const (Array (_ BitVec 32) ValueCell!6588)) mapDefault!22585)))))

(declare-fun e!449756 () Bool)

(declare-fun mapRes!22585 () Bool)

(assert (=> mapNonEmpty!22579 (= tp!43687 (and e!449756 mapRes!22585))))

(declare-fun mapIsEmpty!22585 () Bool)

(assert (=> mapIsEmpty!22585 mapRes!22585))

(declare-fun b!812053 () Bool)

(assert (=> b!812053 (= e!449756 tp_is_empty!14007)))

(declare-fun mapNonEmpty!22585 () Bool)

(declare-fun tp!43693 () Bool)

(declare-fun e!449757 () Bool)

(assert (=> mapNonEmpty!22585 (= mapRes!22585 (and tp!43693 e!449757))))

(declare-fun mapValue!22585 () ValueCell!6588)

(declare-fun mapRest!22585 () (Array (_ BitVec 32) ValueCell!6588))

(declare-fun mapKey!22585 () (_ BitVec 32))

(assert (=> mapNonEmpty!22585 (= mapRest!22579 (store mapRest!22585 mapKey!22585 mapValue!22585))))

(declare-fun b!812052 () Bool)

(assert (=> b!812052 (= e!449757 tp_is_empty!14007)))

(assert (= (and mapNonEmpty!22579 condMapEmpty!22585) mapIsEmpty!22585))

(assert (= (and mapNonEmpty!22579 (not condMapEmpty!22585)) mapNonEmpty!22585))

(assert (= (and mapNonEmpty!22585 ((_ is ValueCellFull!6588) mapValue!22585)) b!812052))

(assert (= (and mapNonEmpty!22579 ((_ is ValueCellFull!6588) mapDefault!22585)) b!812053))

(declare-fun m!754617 () Bool)

(assert (=> mapNonEmpty!22585 m!754617))

(check-sat (not b!812033) (not b!812032) (not b!812045) (not bm!35478) (not b!812042) (not mapNonEmpty!22585) tp_is_empty!14007)
(check-sat)
