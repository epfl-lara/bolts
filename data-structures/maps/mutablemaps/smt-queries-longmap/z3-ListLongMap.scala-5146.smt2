; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69828 () Bool)

(assert start!69828)

(declare-fun b!811847 () Bool)

(declare-fun res!554960 () Bool)

(declare-fun e!449598 () Bool)

(assert (=> b!811847 (=> (not res!554960) (not e!449598))))

(declare-datatypes ((array!44184 0))(
  ( (array!44185 (arr!21154 (Array (_ BitVec 32) (_ BitVec 64))) (size!21575 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44184)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23661 0))(
  ( (V!23662 (val!7045 Int)) )
))
(declare-datatypes ((ValueCell!6582 0))(
  ( (ValueCellFull!6582 (v!9467 V!23661)) (EmptyCell!6582) )
))
(declare-datatypes ((array!44186 0))(
  ( (array!44187 (arr!21155 (Array (_ BitVec 32) ValueCell!6582)) (size!21576 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44186)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!811847 (= res!554960 (and (= (size!21576 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21575 _keys!976) (size!21576 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!811848 () Bool)

(declare-fun e!449600 () Bool)

(declare-fun e!449597 () Bool)

(declare-fun mapRes!22555 () Bool)

(assert (=> b!811848 (= e!449600 (and e!449597 mapRes!22555))))

(declare-fun condMapEmpty!22555 () Bool)

(declare-fun mapDefault!22555 () ValueCell!6582)

(assert (=> b!811848 (= condMapEmpty!22555 (= (arr!21155 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6582)) mapDefault!22555)))))

(declare-fun b!811849 () Bool)

(declare-fun tp_is_empty!13995 () Bool)

(assert (=> b!811849 (= e!449597 tp_is_empty!13995)))

(declare-fun res!554959 () Bool)

(assert (=> start!69828 (=> (not res!554959) (not e!449598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69828 (= res!554959 (validMask!0 mask!1312))))

(assert (=> start!69828 e!449598))

(declare-fun array_inv!16927 (array!44184) Bool)

(assert (=> start!69828 (array_inv!16927 _keys!976)))

(assert (=> start!69828 true))

(declare-fun array_inv!16928 (array!44186) Bool)

(assert (=> start!69828 (and (array_inv!16928 _values!788) e!449600)))

(declare-fun b!811850 () Bool)

(declare-fun res!554961 () Bool)

(assert (=> b!811850 (=> (not res!554961) (not e!449598))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44184 (_ BitVec 32)) Bool)

(assert (=> b!811850 (= res!554961 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!22555 () Bool)

(assert (=> mapIsEmpty!22555 mapRes!22555))

(declare-fun b!811851 () Bool)

(assert (=> b!811851 (= e!449598 (bvsgt #b00000000000000000000000000000000 (size!21575 _keys!976)))))

(declare-fun b!811852 () Bool)

(declare-fun e!449601 () Bool)

(assert (=> b!811852 (= e!449601 tp_is_empty!13995)))

(declare-fun mapNonEmpty!22555 () Bool)

(declare-fun tp!43663 () Bool)

(assert (=> mapNonEmpty!22555 (= mapRes!22555 (and tp!43663 e!449601))))

(declare-fun mapValue!22555 () ValueCell!6582)

(declare-fun mapRest!22555 () (Array (_ BitVec 32) ValueCell!6582))

(declare-fun mapKey!22555 () (_ BitVec 32))

(assert (=> mapNonEmpty!22555 (= (arr!21155 _values!788) (store mapRest!22555 mapKey!22555 mapValue!22555))))

(assert (= (and start!69828 res!554959) b!811847))

(assert (= (and b!811847 res!554960) b!811850))

(assert (= (and b!811850 res!554961) b!811851))

(assert (= (and b!811848 condMapEmpty!22555) mapIsEmpty!22555))

(assert (= (and b!811848 (not condMapEmpty!22555)) mapNonEmpty!22555))

(get-info :version)

(assert (= (and mapNonEmpty!22555 ((_ is ValueCellFull!6582) mapValue!22555)) b!811852))

(assert (= (and b!811848 ((_ is ValueCellFull!6582) mapDefault!22555)) b!811849))

(assert (= start!69828 b!811848))

(declare-fun m!754487 () Bool)

(assert (=> start!69828 m!754487))

(declare-fun m!754489 () Bool)

(assert (=> start!69828 m!754489))

(declare-fun m!754491 () Bool)

(assert (=> start!69828 m!754491))

(declare-fun m!754493 () Bool)

(assert (=> b!811850 m!754493))

(declare-fun m!754495 () Bool)

(assert (=> mapNonEmpty!22555 m!754495))

(check-sat (not b!811850) (not start!69828) (not mapNonEmpty!22555) tp_is_empty!13995)
(check-sat)
(get-model)

(declare-fun b!811879 () Bool)

(declare-fun e!449623 () Bool)

(declare-fun call!35475 () Bool)

(assert (=> b!811879 (= e!449623 call!35475)))

(declare-fun b!811880 () Bool)

(declare-fun e!449624 () Bool)

(assert (=> b!811880 (= e!449624 e!449623)))

(declare-fun lt!364033 () (_ BitVec 64))

(assert (=> b!811880 (= lt!364033 (select (arr!21154 _keys!976) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27680 0))(
  ( (Unit!27681) )
))
(declare-fun lt!364032 () Unit!27680)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!44184 (_ BitVec 64) (_ BitVec 32)) Unit!27680)

(assert (=> b!811880 (= lt!364032 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!364033 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!44184 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!811880 (arrayContainsKey!0 _keys!976 lt!364033 #b00000000000000000000000000000000)))

(declare-fun lt!364031 () Unit!27680)

(assert (=> b!811880 (= lt!364031 lt!364032)))

(declare-fun res!554976 () Bool)

(declare-datatypes ((SeekEntryResult!8703 0))(
  ( (MissingZero!8703 (index!37182 (_ BitVec 32))) (Found!8703 (index!37183 (_ BitVec 32))) (Intermediate!8703 (undefined!9515 Bool) (index!37184 (_ BitVec 32)) (x!68151 (_ BitVec 32))) (Undefined!8703) (MissingVacant!8703 (index!37185 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44184 (_ BitVec 32)) SeekEntryResult!8703)

(assert (=> b!811880 (= res!554976 (= (seekEntryOrOpen!0 (select (arr!21154 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8703 #b00000000000000000000000000000000)))))

(assert (=> b!811880 (=> (not res!554976) (not e!449623))))

(declare-fun b!811881 () Bool)

(declare-fun e!449625 () Bool)

(assert (=> b!811881 (= e!449625 e!449624)))

(declare-fun c!88806 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!811881 (= c!88806 (validKeyInArray!0 (select (arr!21154 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!811882 () Bool)

(assert (=> b!811882 (= e!449624 call!35475)))

(declare-fun d!104213 () Bool)

(declare-fun res!554975 () Bool)

(assert (=> d!104213 (=> res!554975 e!449625)))

(assert (=> d!104213 (= res!554975 (bvsge #b00000000000000000000000000000000 (size!21575 _keys!976)))))

(assert (=> d!104213 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!449625)))

(declare-fun bm!35472 () Bool)

(assert (=> bm!35472 (= call!35475 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(assert (= (and d!104213 (not res!554975)) b!811881))

(assert (= (and b!811881 c!88806) b!811880))

(assert (= (and b!811881 (not c!88806)) b!811882))

(assert (= (and b!811880 res!554976) b!811879))

(assert (= (or b!811879 b!811882) bm!35472))

(declare-fun m!754507 () Bool)

(assert (=> b!811880 m!754507))

(declare-fun m!754509 () Bool)

(assert (=> b!811880 m!754509))

(declare-fun m!754511 () Bool)

(assert (=> b!811880 m!754511))

(assert (=> b!811880 m!754507))

(declare-fun m!754513 () Bool)

(assert (=> b!811880 m!754513))

(assert (=> b!811881 m!754507))

(assert (=> b!811881 m!754507))

(declare-fun m!754515 () Bool)

(assert (=> b!811881 m!754515))

(declare-fun m!754517 () Bool)

(assert (=> bm!35472 m!754517))

(assert (=> b!811850 d!104213))

(declare-fun d!104215 () Bool)

(assert (=> d!104215 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!69828 d!104215))

(declare-fun d!104217 () Bool)

(assert (=> d!104217 (= (array_inv!16927 _keys!976) (bvsge (size!21575 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!69828 d!104217))

(declare-fun d!104219 () Bool)

(assert (=> d!104219 (= (array_inv!16928 _values!788) (bvsge (size!21576 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!69828 d!104219))

(declare-fun b!811889 () Bool)

(declare-fun e!449631 () Bool)

(assert (=> b!811889 (= e!449631 tp_is_empty!13995)))

(declare-fun mapNonEmpty!22561 () Bool)

(declare-fun mapRes!22561 () Bool)

(declare-fun tp!43669 () Bool)

(assert (=> mapNonEmpty!22561 (= mapRes!22561 (and tp!43669 e!449631))))

(declare-fun mapValue!22561 () ValueCell!6582)

(declare-fun mapRest!22561 () (Array (_ BitVec 32) ValueCell!6582))

(declare-fun mapKey!22561 () (_ BitVec 32))

(assert (=> mapNonEmpty!22561 (= mapRest!22555 (store mapRest!22561 mapKey!22561 mapValue!22561))))

(declare-fun mapIsEmpty!22561 () Bool)

(assert (=> mapIsEmpty!22561 mapRes!22561))

(declare-fun b!811890 () Bool)

(declare-fun e!449630 () Bool)

(assert (=> b!811890 (= e!449630 tp_is_empty!13995)))

(declare-fun condMapEmpty!22561 () Bool)

(declare-fun mapDefault!22561 () ValueCell!6582)

(assert (=> mapNonEmpty!22555 (= condMapEmpty!22561 (= mapRest!22555 ((as const (Array (_ BitVec 32) ValueCell!6582)) mapDefault!22561)))))

(assert (=> mapNonEmpty!22555 (= tp!43663 (and e!449630 mapRes!22561))))

(assert (= (and mapNonEmpty!22555 condMapEmpty!22561) mapIsEmpty!22561))

(assert (= (and mapNonEmpty!22555 (not condMapEmpty!22561)) mapNonEmpty!22561))

(assert (= (and mapNonEmpty!22561 ((_ is ValueCellFull!6582) mapValue!22561)) b!811889))

(assert (= (and mapNonEmpty!22555 ((_ is ValueCellFull!6582) mapDefault!22561)) b!811890))

(declare-fun m!754519 () Bool)

(assert (=> mapNonEmpty!22561 m!754519))

(check-sat (not b!811880) tp_is_empty!13995 (not bm!35472) (not mapNonEmpty!22561) (not b!811881))
(check-sat)
