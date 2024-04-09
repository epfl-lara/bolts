; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69938 () Bool)

(assert start!69938)

(declare-fun b!812636 () Bool)

(declare-fun e!450227 () Bool)

(declare-fun tp_is_empty!14067 () Bool)

(assert (=> b!812636 (= e!450227 tp_is_empty!14067)))

(declare-fun b!812637 () Bool)

(declare-fun res!555369 () Bool)

(declare-fun e!450226 () Bool)

(assert (=> b!812637 (=> (not res!555369) (not e!450226))))

(declare-datatypes ((array!44324 0))(
  ( (array!44325 (arr!21220 (Array (_ BitVec 32) (_ BitVec 64))) (size!21641 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44324)

(declare-datatypes ((List!15146 0))(
  ( (Nil!15143) (Cons!15142 (h!16271 (_ BitVec 64)) (t!21469 List!15146)) )
))
(declare-fun arrayNoDuplicates!0 (array!44324 (_ BitVec 32) List!15146) Bool)

(assert (=> b!812637 (= res!555369 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15143))))

(declare-fun b!812638 () Bool)

(declare-fun e!450230 () Bool)

(assert (=> b!812638 (= e!450230 tp_is_empty!14067)))

(declare-fun b!812639 () Bool)

(declare-fun e!450229 () Bool)

(declare-fun mapRes!22675 () Bool)

(assert (=> b!812639 (= e!450229 (and e!450230 mapRes!22675))))

(declare-fun condMapEmpty!22675 () Bool)

(declare-datatypes ((V!23757 0))(
  ( (V!23758 (val!7081 Int)) )
))
(declare-datatypes ((ValueCell!6618 0))(
  ( (ValueCellFull!6618 (v!9504 V!23757)) (EmptyCell!6618) )
))
(declare-datatypes ((array!44326 0))(
  ( (array!44327 (arr!21221 (Array (_ BitVec 32) ValueCell!6618)) (size!21642 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44326)

(declare-fun mapDefault!22675 () ValueCell!6618)

(assert (=> b!812639 (= condMapEmpty!22675 (= (arr!21221 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6618)) mapDefault!22675)))))

(declare-fun mapNonEmpty!22675 () Bool)

(declare-fun tp!43783 () Bool)

(assert (=> mapNonEmpty!22675 (= mapRes!22675 (and tp!43783 e!450227))))

(declare-fun mapKey!22675 () (_ BitVec 32))

(declare-fun mapValue!22675 () ValueCell!6618)

(declare-fun mapRest!22675 () (Array (_ BitVec 32) ValueCell!6618))

(assert (=> mapNonEmpty!22675 (= (arr!21221 _values!788) (store mapRest!22675 mapKey!22675 mapValue!22675))))

(declare-fun b!812640 () Bool)

(assert (=> b!812640 (= e!450226 (bvsgt #b00000000000000000000000000000000 (size!21641 _keys!976)))))

(declare-fun b!812641 () Bool)

(declare-fun res!555368 () Bool)

(assert (=> b!812641 (=> (not res!555368) (not e!450226))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44324 (_ BitVec 32)) Bool)

(assert (=> b!812641 (= res!555368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!812642 () Bool)

(declare-fun res!555370 () Bool)

(assert (=> b!812642 (=> (not res!555370) (not e!450226))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812642 (= res!555370 (and (= (size!21642 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21641 _keys!976) (size!21642 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!555371 () Bool)

(assert (=> start!69938 (=> (not res!555371) (not e!450226))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69938 (= res!555371 (validMask!0 mask!1312))))

(assert (=> start!69938 e!450226))

(declare-fun array_inv!16973 (array!44324) Bool)

(assert (=> start!69938 (array_inv!16973 _keys!976)))

(assert (=> start!69938 true))

(declare-fun array_inv!16974 (array!44326) Bool)

(assert (=> start!69938 (and (array_inv!16974 _values!788) e!450229)))

(declare-fun mapIsEmpty!22675 () Bool)

(assert (=> mapIsEmpty!22675 mapRes!22675))

(assert (= (and start!69938 res!555371) b!812642))

(assert (= (and b!812642 res!555370) b!812641))

(assert (= (and b!812641 res!555368) b!812637))

(assert (= (and b!812637 res!555369) b!812640))

(assert (= (and b!812639 condMapEmpty!22675) mapIsEmpty!22675))

(assert (= (and b!812639 (not condMapEmpty!22675)) mapNonEmpty!22675))

(get-info :version)

(assert (= (and mapNonEmpty!22675 ((_ is ValueCellFull!6618) mapValue!22675)) b!812636))

(assert (= (and b!812639 ((_ is ValueCellFull!6618) mapDefault!22675)) b!812638))

(assert (= start!69938 b!812639))

(declare-fun m!754995 () Bool)

(assert (=> b!812637 m!754995))

(declare-fun m!754997 () Bool)

(assert (=> mapNonEmpty!22675 m!754997))

(declare-fun m!754999 () Bool)

(assert (=> b!812641 m!754999))

(declare-fun m!755001 () Bool)

(assert (=> start!69938 m!755001))

(declare-fun m!755003 () Bool)

(assert (=> start!69938 m!755003))

(declare-fun m!755005 () Bool)

(assert (=> start!69938 m!755005))

(check-sat (not b!812641) (not start!69938) (not mapNonEmpty!22675) tp_is_empty!14067 (not b!812637))
(check-sat)
(get-model)

(declare-fun d!104277 () Bool)

(assert (=> d!104277 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!69938 d!104277))

(declare-fun d!104279 () Bool)

(assert (=> d!104279 (= (array_inv!16973 _keys!976) (bvsge (size!21641 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!69938 d!104279))

(declare-fun d!104281 () Bool)

(assert (=> d!104281 (= (array_inv!16974 _values!788) (bvsge (size!21642 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!69938 d!104281))

(declare-fun bm!35484 () Bool)

(declare-fun call!35487 () Bool)

(assert (=> bm!35484 (= call!35487 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun d!104283 () Bool)

(declare-fun res!555388 () Bool)

(declare-fun e!450253 () Bool)

(assert (=> d!104283 (=> res!555388 e!450253)))

(assert (=> d!104283 (= res!555388 (bvsge #b00000000000000000000000000000000 (size!21641 _keys!976)))))

(assert (=> d!104283 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!450253)))

(declare-fun b!812672 () Bool)

(declare-fun e!450254 () Bool)

(assert (=> b!812672 (= e!450254 call!35487)))

(declare-fun b!812673 () Bool)

(declare-fun e!450252 () Bool)

(assert (=> b!812673 (= e!450252 call!35487)))

(declare-fun b!812674 () Bool)

(assert (=> b!812674 (= e!450254 e!450252)))

(declare-fun lt!364145 () (_ BitVec 64))

(assert (=> b!812674 (= lt!364145 (select (arr!21220 _keys!976) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27688 0))(
  ( (Unit!27689) )
))
(declare-fun lt!364144 () Unit!27688)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!44324 (_ BitVec 64) (_ BitVec 32)) Unit!27688)

(assert (=> b!812674 (= lt!364144 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!364145 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!44324 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!812674 (arrayContainsKey!0 _keys!976 lt!364145 #b00000000000000000000000000000000)))

(declare-fun lt!364143 () Unit!27688)

(assert (=> b!812674 (= lt!364143 lt!364144)))

(declare-fun res!555389 () Bool)

(declare-datatypes ((SeekEntryResult!8707 0))(
  ( (MissingZero!8707 (index!37198 (_ BitVec 32))) (Found!8707 (index!37199 (_ BitVec 32))) (Intermediate!8707 (undefined!9519 Bool) (index!37200 (_ BitVec 32)) (x!68259 (_ BitVec 32))) (Undefined!8707) (MissingVacant!8707 (index!37201 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44324 (_ BitVec 32)) SeekEntryResult!8707)

(assert (=> b!812674 (= res!555389 (= (seekEntryOrOpen!0 (select (arr!21220 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8707 #b00000000000000000000000000000000)))))

(assert (=> b!812674 (=> (not res!555389) (not e!450252))))

(declare-fun b!812675 () Bool)

(assert (=> b!812675 (= e!450253 e!450254)))

(declare-fun c!88818 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!812675 (= c!88818 (validKeyInArray!0 (select (arr!21220 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!104283 (not res!555388)) b!812675))

(assert (= (and b!812675 c!88818) b!812674))

(assert (= (and b!812675 (not c!88818)) b!812672))

(assert (= (and b!812674 res!555389) b!812673))

(assert (= (or b!812673 b!812672) bm!35484))

(declare-fun m!755019 () Bool)

(assert (=> bm!35484 m!755019))

(declare-fun m!755021 () Bool)

(assert (=> b!812674 m!755021))

(declare-fun m!755023 () Bool)

(assert (=> b!812674 m!755023))

(declare-fun m!755025 () Bool)

(assert (=> b!812674 m!755025))

(assert (=> b!812674 m!755021))

(declare-fun m!755027 () Bool)

(assert (=> b!812674 m!755027))

(assert (=> b!812675 m!755021))

(assert (=> b!812675 m!755021))

(declare-fun m!755029 () Bool)

(assert (=> b!812675 m!755029))

(assert (=> b!812641 d!104283))

(declare-fun b!812686 () Bool)

(declare-fun e!450264 () Bool)

(declare-fun call!35490 () Bool)

(assert (=> b!812686 (= e!450264 call!35490)))

(declare-fun d!104285 () Bool)

(declare-fun res!555397 () Bool)

(declare-fun e!450265 () Bool)

(assert (=> d!104285 (=> res!555397 e!450265)))

(assert (=> d!104285 (= res!555397 (bvsge #b00000000000000000000000000000000 (size!21641 _keys!976)))))

(assert (=> d!104285 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15143) e!450265)))

(declare-fun b!812687 () Bool)

(assert (=> b!812687 (= e!450264 call!35490)))

(declare-fun b!812688 () Bool)

(declare-fun e!450263 () Bool)

(assert (=> b!812688 (= e!450263 e!450264)))

(declare-fun c!88821 () Bool)

(assert (=> b!812688 (= c!88821 (validKeyInArray!0 (select (arr!21220 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!812689 () Bool)

(declare-fun e!450266 () Bool)

(declare-fun contains!4142 (List!15146 (_ BitVec 64)) Bool)

(assert (=> b!812689 (= e!450266 (contains!4142 Nil!15143 (select (arr!21220 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!35487 () Bool)

(assert (=> bm!35487 (= call!35490 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88821 (Cons!15142 (select (arr!21220 _keys!976) #b00000000000000000000000000000000) Nil!15143) Nil!15143)))))

(declare-fun b!812690 () Bool)

(assert (=> b!812690 (= e!450265 e!450263)))

(declare-fun res!555396 () Bool)

(assert (=> b!812690 (=> (not res!555396) (not e!450263))))

(assert (=> b!812690 (= res!555396 (not e!450266))))

(declare-fun res!555398 () Bool)

(assert (=> b!812690 (=> (not res!555398) (not e!450266))))

(assert (=> b!812690 (= res!555398 (validKeyInArray!0 (select (arr!21220 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!104285 (not res!555397)) b!812690))

(assert (= (and b!812690 res!555398) b!812689))

(assert (= (and b!812690 res!555396) b!812688))

(assert (= (and b!812688 c!88821) b!812686))

(assert (= (and b!812688 (not c!88821)) b!812687))

(assert (= (or b!812686 b!812687) bm!35487))

(assert (=> b!812688 m!755021))

(assert (=> b!812688 m!755021))

(assert (=> b!812688 m!755029))

(assert (=> b!812689 m!755021))

(assert (=> b!812689 m!755021))

(declare-fun m!755031 () Bool)

(assert (=> b!812689 m!755031))

(assert (=> bm!35487 m!755021))

(declare-fun m!755033 () Bool)

(assert (=> bm!35487 m!755033))

(assert (=> b!812690 m!755021))

(assert (=> b!812690 m!755021))

(assert (=> b!812690 m!755029))

(assert (=> b!812637 d!104285))

(declare-fun condMapEmpty!22681 () Bool)

(declare-fun mapDefault!22681 () ValueCell!6618)

(assert (=> mapNonEmpty!22675 (= condMapEmpty!22681 (= mapRest!22675 ((as const (Array (_ BitVec 32) ValueCell!6618)) mapDefault!22681)))))

(declare-fun e!450271 () Bool)

(declare-fun mapRes!22681 () Bool)

(assert (=> mapNonEmpty!22675 (= tp!43783 (and e!450271 mapRes!22681))))

(declare-fun mapNonEmpty!22681 () Bool)

(declare-fun tp!43789 () Bool)

(declare-fun e!450272 () Bool)

(assert (=> mapNonEmpty!22681 (= mapRes!22681 (and tp!43789 e!450272))))

(declare-fun mapKey!22681 () (_ BitVec 32))

(declare-fun mapRest!22681 () (Array (_ BitVec 32) ValueCell!6618))

(declare-fun mapValue!22681 () ValueCell!6618)

(assert (=> mapNonEmpty!22681 (= mapRest!22675 (store mapRest!22681 mapKey!22681 mapValue!22681))))

(declare-fun b!812697 () Bool)

(assert (=> b!812697 (= e!450272 tp_is_empty!14067)))

(declare-fun b!812698 () Bool)

(assert (=> b!812698 (= e!450271 tp_is_empty!14067)))

(declare-fun mapIsEmpty!22681 () Bool)

(assert (=> mapIsEmpty!22681 mapRes!22681))

(assert (= (and mapNonEmpty!22675 condMapEmpty!22681) mapIsEmpty!22681))

(assert (= (and mapNonEmpty!22675 (not condMapEmpty!22681)) mapNonEmpty!22681))

(assert (= (and mapNonEmpty!22681 ((_ is ValueCellFull!6618) mapValue!22681)) b!812697))

(assert (= (and mapNonEmpty!22675 ((_ is ValueCellFull!6618) mapDefault!22681)) b!812698))

(declare-fun m!755035 () Bool)

(assert (=> mapNonEmpty!22681 m!755035))

(check-sat (not bm!35484) (not b!812675) (not b!812688) (not b!812674) (not mapNonEmpty!22681) tp_is_empty!14067 (not b!812689) (not b!812690) (not bm!35487))
(check-sat)
