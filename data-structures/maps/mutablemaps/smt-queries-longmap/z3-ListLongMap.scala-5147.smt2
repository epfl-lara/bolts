; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69842 () Bool)

(assert start!69842)

(declare-fun mapNonEmpty!22567 () Bool)

(declare-fun mapRes!22567 () Bool)

(declare-fun tp!43675 () Bool)

(declare-fun e!449658 () Bool)

(assert (=> mapNonEmpty!22567 (= mapRes!22567 (and tp!43675 e!449658))))

(declare-datatypes ((V!23669 0))(
  ( (V!23670 (val!7048 Int)) )
))
(declare-datatypes ((ValueCell!6585 0))(
  ( (ValueCellFull!6585 (v!9470 V!23669)) (EmptyCell!6585) )
))
(declare-fun mapValue!22567 () ValueCell!6585)

(declare-fun mapRest!22567 () (Array (_ BitVec 32) ValueCell!6585))

(declare-datatypes ((array!44198 0))(
  ( (array!44199 (arr!21160 (Array (_ BitVec 32) ValueCell!6585)) (size!21581 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44198)

(declare-fun mapKey!22567 () (_ BitVec 32))

(assert (=> mapNonEmpty!22567 (= (arr!21160 _values!788) (store mapRest!22567 mapKey!22567 mapValue!22567))))

(declare-fun res!554992 () Bool)

(declare-fun e!449660 () Bool)

(assert (=> start!69842 (=> (not res!554992) (not e!449660))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69842 (= res!554992 (validMask!0 mask!1312))))

(assert (=> start!69842 e!449660))

(declare-datatypes ((array!44200 0))(
  ( (array!44201 (arr!21161 (Array (_ BitVec 32) (_ BitVec 64))) (size!21582 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44200)

(declare-fun array_inv!16931 (array!44200) Bool)

(assert (=> start!69842 (array_inv!16931 _keys!976)))

(assert (=> start!69842 true))

(declare-fun e!449659 () Bool)

(declare-fun array_inv!16932 (array!44198) Bool)

(assert (=> start!69842 (and (array_inv!16932 _values!788) e!449659)))

(declare-fun b!811921 () Bool)

(declare-fun res!554994 () Bool)

(assert (=> b!811921 (=> (not res!554994) (not e!449660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44200 (_ BitVec 32)) Bool)

(assert (=> b!811921 (= res!554994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!811922 () Bool)

(declare-fun e!449661 () Bool)

(declare-fun tp_is_empty!14001 () Bool)

(assert (=> b!811922 (= e!449661 tp_is_empty!14001)))

(declare-fun b!811923 () Bool)

(declare-fun res!554993 () Bool)

(assert (=> b!811923 (=> (not res!554993) (not e!449660))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!811923 (= res!554993 (and (= (size!21581 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21582 _keys!976) (size!21581 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!22567 () Bool)

(assert (=> mapIsEmpty!22567 mapRes!22567))

(declare-fun b!811924 () Bool)

(assert (=> b!811924 (= e!449659 (and e!449661 mapRes!22567))))

(declare-fun condMapEmpty!22567 () Bool)

(declare-fun mapDefault!22567 () ValueCell!6585)

(assert (=> b!811924 (= condMapEmpty!22567 (= (arr!21160 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6585)) mapDefault!22567)))))

(declare-fun b!811925 () Bool)

(assert (=> b!811925 (= e!449658 tp_is_empty!14001)))

(declare-fun b!811926 () Bool)

(assert (=> b!811926 (= e!449660 (and (bvsle #b00000000000000000000000000000000 (size!21582 _keys!976)) (bvsge (size!21582 _keys!976) #b01111111111111111111111111111111)))))

(assert (= (and start!69842 res!554992) b!811923))

(assert (= (and b!811923 res!554993) b!811921))

(assert (= (and b!811921 res!554994) b!811926))

(assert (= (and b!811924 condMapEmpty!22567) mapIsEmpty!22567))

(assert (= (and b!811924 (not condMapEmpty!22567)) mapNonEmpty!22567))

(get-info :version)

(assert (= (and mapNonEmpty!22567 ((_ is ValueCellFull!6585) mapValue!22567)) b!811925))

(assert (= (and b!811924 ((_ is ValueCellFull!6585) mapDefault!22567)) b!811922))

(assert (= start!69842 b!811924))

(declare-fun m!754531 () Bool)

(assert (=> mapNonEmpty!22567 m!754531))

(declare-fun m!754533 () Bool)

(assert (=> start!69842 m!754533))

(declare-fun m!754535 () Bool)

(assert (=> start!69842 m!754535))

(declare-fun m!754537 () Bool)

(assert (=> start!69842 m!754537))

(declare-fun m!754539 () Bool)

(assert (=> b!811921 m!754539))

(check-sat (not start!69842) (not b!811921) (not mapNonEmpty!22567) tp_is_empty!14001)
(check-sat)
(get-model)

(declare-fun d!104223 () Bool)

(assert (=> d!104223 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!69842 d!104223))

(declare-fun d!104225 () Bool)

(assert (=> d!104225 (= (array_inv!16931 _keys!976) (bvsge (size!21582 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!69842 d!104225))

(declare-fun d!104227 () Bool)

(assert (=> d!104227 (= (array_inv!16932 _values!788) (bvsge (size!21581 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!69842 d!104227))

(declare-fun b!811953 () Bool)

(declare-fun e!449683 () Bool)

(declare-fun e!449684 () Bool)

(assert (=> b!811953 (= e!449683 e!449684)))

(declare-fun c!88809 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!811953 (= c!88809 (validKeyInArray!0 (select (arr!21161 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!104229 () Bool)

(declare-fun res!555009 () Bool)

(assert (=> d!104229 (=> res!555009 e!449683)))

(assert (=> d!104229 (= res!555009 (bvsge #b00000000000000000000000000000000 (size!21582 _keys!976)))))

(assert (=> d!104229 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!449683)))

(declare-fun b!811954 () Bool)

(declare-fun e!449685 () Bool)

(declare-fun call!35478 () Bool)

(assert (=> b!811954 (= e!449685 call!35478)))

(declare-fun b!811955 () Bool)

(assert (=> b!811955 (= e!449684 call!35478)))

(declare-fun b!811956 () Bool)

(assert (=> b!811956 (= e!449684 e!449685)))

(declare-fun lt!364041 () (_ BitVec 64))

(assert (=> b!811956 (= lt!364041 (select (arr!21161 _keys!976) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27682 0))(
  ( (Unit!27683) )
))
(declare-fun lt!364042 () Unit!27682)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!44200 (_ BitVec 64) (_ BitVec 32)) Unit!27682)

(assert (=> b!811956 (= lt!364042 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!364041 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!44200 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!811956 (arrayContainsKey!0 _keys!976 lt!364041 #b00000000000000000000000000000000)))

(declare-fun lt!364040 () Unit!27682)

(assert (=> b!811956 (= lt!364040 lt!364042)))

(declare-fun res!555008 () Bool)

(declare-datatypes ((SeekEntryResult!8704 0))(
  ( (MissingZero!8704 (index!37186 (_ BitVec 32))) (Found!8704 (index!37187 (_ BitVec 32))) (Intermediate!8704 (undefined!9516 Bool) (index!37188 (_ BitVec 32)) (x!68162 (_ BitVec 32))) (Undefined!8704) (MissingVacant!8704 (index!37189 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44200 (_ BitVec 32)) SeekEntryResult!8704)

(assert (=> b!811956 (= res!555008 (= (seekEntryOrOpen!0 (select (arr!21161 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8704 #b00000000000000000000000000000000)))))

(assert (=> b!811956 (=> (not res!555008) (not e!449685))))

(declare-fun bm!35475 () Bool)

(assert (=> bm!35475 (= call!35478 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(assert (= (and d!104229 (not res!555009)) b!811953))

(assert (= (and b!811953 c!88809) b!811956))

(assert (= (and b!811953 (not c!88809)) b!811955))

(assert (= (and b!811956 res!555008) b!811954))

(assert (= (or b!811954 b!811955) bm!35475))

(declare-fun m!754551 () Bool)

(assert (=> b!811953 m!754551))

(assert (=> b!811953 m!754551))

(declare-fun m!754553 () Bool)

(assert (=> b!811953 m!754553))

(assert (=> b!811956 m!754551))

(declare-fun m!754555 () Bool)

(assert (=> b!811956 m!754555))

(declare-fun m!754557 () Bool)

(assert (=> b!811956 m!754557))

(assert (=> b!811956 m!754551))

(declare-fun m!754559 () Bool)

(assert (=> b!811956 m!754559))

(declare-fun m!754561 () Bool)

(assert (=> bm!35475 m!754561))

(assert (=> b!811921 d!104229))

(declare-fun mapNonEmpty!22573 () Bool)

(declare-fun mapRes!22573 () Bool)

(declare-fun tp!43681 () Bool)

(declare-fun e!449691 () Bool)

(assert (=> mapNonEmpty!22573 (= mapRes!22573 (and tp!43681 e!449691))))

(declare-fun mapValue!22573 () ValueCell!6585)

(declare-fun mapKey!22573 () (_ BitVec 32))

(declare-fun mapRest!22573 () (Array (_ BitVec 32) ValueCell!6585))

(assert (=> mapNonEmpty!22573 (= mapRest!22567 (store mapRest!22573 mapKey!22573 mapValue!22573))))

(declare-fun b!811964 () Bool)

(declare-fun e!449690 () Bool)

(assert (=> b!811964 (= e!449690 tp_is_empty!14001)))

(declare-fun b!811963 () Bool)

(assert (=> b!811963 (= e!449691 tp_is_empty!14001)))

(declare-fun condMapEmpty!22573 () Bool)

(declare-fun mapDefault!22573 () ValueCell!6585)

(assert (=> mapNonEmpty!22567 (= condMapEmpty!22573 (= mapRest!22567 ((as const (Array (_ BitVec 32) ValueCell!6585)) mapDefault!22573)))))

(assert (=> mapNonEmpty!22567 (= tp!43675 (and e!449690 mapRes!22573))))

(declare-fun mapIsEmpty!22573 () Bool)

(assert (=> mapIsEmpty!22573 mapRes!22573))

(assert (= (and mapNonEmpty!22567 condMapEmpty!22573) mapIsEmpty!22573))

(assert (= (and mapNonEmpty!22567 (not condMapEmpty!22573)) mapNonEmpty!22573))

(assert (= (and mapNonEmpty!22573 ((_ is ValueCellFull!6585) mapValue!22573)) b!811963))

(assert (= (and mapNonEmpty!22567 ((_ is ValueCellFull!6585) mapDefault!22573)) b!811964))

(declare-fun m!754563 () Bool)

(assert (=> mapNonEmpty!22573 m!754563))

(check-sat (not mapNonEmpty!22573) tp_is_empty!14001 (not bm!35475) (not b!811953) (not b!811956))
(check-sat)
