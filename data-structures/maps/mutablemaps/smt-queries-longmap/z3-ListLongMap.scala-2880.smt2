; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41410 () Bool)

(assert start!41410)

(declare-fun b!462499 () Bool)

(declare-fun e!269947 () Bool)

(declare-fun tp_is_empty!12519 () Bool)

(assert (=> b!462499 (= e!269947 tp_is_empty!12519)))

(declare-fun res!276651 () Bool)

(declare-fun e!269950 () Bool)

(assert (=> start!41410 (=> (not res!276651) (not e!269950))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41410 (= res!276651 (validMask!0 mask!1365))))

(assert (=> start!41410 e!269950))

(assert (=> start!41410 true))

(declare-datatypes ((array!28805 0))(
  ( (array!28806 (arr!13833 (Array (_ BitVec 32) (_ BitVec 64))) (size!14185 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28805)

(declare-fun array_inv!9986 (array!28805) Bool)

(assert (=> start!41410 (array_inv!9986 _keys!1025)))

(declare-datatypes ((V!17797 0))(
  ( (V!17798 (val!6304 Int)) )
))
(declare-datatypes ((ValueCell!5916 0))(
  ( (ValueCellFull!5916 (v!8587 V!17797)) (EmptyCell!5916) )
))
(declare-datatypes ((array!28807 0))(
  ( (array!28808 (arr!13834 (Array (_ BitVec 32) ValueCell!5916)) (size!14186 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28807)

(declare-fun e!269946 () Bool)

(declare-fun array_inv!9987 (array!28807) Bool)

(assert (=> start!41410 (and (array_inv!9987 _values!833) e!269946)))

(declare-fun b!462500 () Bool)

(declare-fun res!276652 () Bool)

(assert (=> b!462500 (=> (not res!276652) (not e!269950))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28805 (_ BitVec 32)) Bool)

(assert (=> b!462500 (= res!276652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462501 () Bool)

(declare-fun mapRes!20449 () Bool)

(assert (=> b!462501 (= e!269946 (and e!269947 mapRes!20449))))

(declare-fun condMapEmpty!20449 () Bool)

(declare-fun mapDefault!20449 () ValueCell!5916)

(assert (=> b!462501 (= condMapEmpty!20449 (= (arr!13834 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5916)) mapDefault!20449)))))

(declare-fun b!462502 () Bool)

(declare-fun e!269949 () Bool)

(assert (=> b!462502 (= e!269949 tp_is_empty!12519)))

(declare-fun mapIsEmpty!20449 () Bool)

(assert (=> mapIsEmpty!20449 mapRes!20449))

(declare-fun b!462503 () Bool)

(assert (=> b!462503 (= e!269950 (bvsgt #b00000000000000000000000000000000 (size!14185 _keys!1025)))))

(declare-fun mapNonEmpty!20449 () Bool)

(declare-fun tp!39268 () Bool)

(assert (=> mapNonEmpty!20449 (= mapRes!20449 (and tp!39268 e!269949))))

(declare-fun mapKey!20449 () (_ BitVec 32))

(declare-fun mapValue!20449 () ValueCell!5916)

(declare-fun mapRest!20449 () (Array (_ BitVec 32) ValueCell!5916))

(assert (=> mapNonEmpty!20449 (= (arr!13834 _values!833) (store mapRest!20449 mapKey!20449 mapValue!20449))))

(declare-fun b!462504 () Bool)

(declare-fun res!276653 () Bool)

(assert (=> b!462504 (=> (not res!276653) (not e!269950))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!462504 (= res!276653 (and (= (size!14186 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14185 _keys!1025) (size!14186 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462505 () Bool)

(declare-fun res!276650 () Bool)

(assert (=> b!462505 (=> (not res!276650) (not e!269950))))

(declare-datatypes ((List!8357 0))(
  ( (Nil!8354) (Cons!8353 (h!9209 (_ BitVec 64)) (t!14309 List!8357)) )
))
(declare-fun arrayNoDuplicates!0 (array!28805 (_ BitVec 32) List!8357) Bool)

(assert (=> b!462505 (= res!276650 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8354))))

(assert (= (and start!41410 res!276651) b!462504))

(assert (= (and b!462504 res!276653) b!462500))

(assert (= (and b!462500 res!276652) b!462505))

(assert (= (and b!462505 res!276650) b!462503))

(assert (= (and b!462501 condMapEmpty!20449) mapIsEmpty!20449))

(assert (= (and b!462501 (not condMapEmpty!20449)) mapNonEmpty!20449))

(get-info :version)

(assert (= (and mapNonEmpty!20449 ((_ is ValueCellFull!5916) mapValue!20449)) b!462502))

(assert (= (and b!462501 ((_ is ValueCellFull!5916) mapDefault!20449)) b!462499))

(assert (= start!41410 b!462501))

(declare-fun m!445385 () Bool)

(assert (=> start!41410 m!445385))

(declare-fun m!445387 () Bool)

(assert (=> start!41410 m!445387))

(declare-fun m!445389 () Bool)

(assert (=> start!41410 m!445389))

(declare-fun m!445391 () Bool)

(assert (=> b!462500 m!445391))

(declare-fun m!445393 () Bool)

(assert (=> mapNonEmpty!20449 m!445393))

(declare-fun m!445395 () Bool)

(assert (=> b!462505 m!445395))

(check-sat (not b!462505) (not mapNonEmpty!20449) (not b!462500) tp_is_empty!12519 (not start!41410))
(check-sat)
(get-model)

(declare-fun b!462537 () Bool)

(declare-fun e!269974 () Bool)

(declare-fun call!30203 () Bool)

(assert (=> b!462537 (= e!269974 call!30203)))

(declare-fun b!462538 () Bool)

(declare-fun e!269975 () Bool)

(declare-fun e!269977 () Bool)

(assert (=> b!462538 (= e!269975 e!269977)))

(declare-fun res!276672 () Bool)

(assert (=> b!462538 (=> (not res!276672) (not e!269977))))

(declare-fun e!269976 () Bool)

(assert (=> b!462538 (= res!276672 (not e!269976))))

(declare-fun res!276674 () Bool)

(assert (=> b!462538 (=> (not res!276674) (not e!269976))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!462538 (= res!276674 (validKeyInArray!0 (select (arr!13833 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!462539 () Bool)

(assert (=> b!462539 (= e!269974 call!30203)))

(declare-fun b!462540 () Bool)

(assert (=> b!462540 (= e!269977 e!269974)))

(declare-fun c!56556 () Bool)

(assert (=> b!462540 (= c!56556 (validKeyInArray!0 (select (arr!13833 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun d!74847 () Bool)

(declare-fun res!276673 () Bool)

(assert (=> d!74847 (=> res!276673 e!269975)))

(assert (=> d!74847 (= res!276673 (bvsge #b00000000000000000000000000000000 (size!14185 _keys!1025)))))

(assert (=> d!74847 (= (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8354) e!269975)))

(declare-fun bm!30200 () Bool)

(assert (=> bm!30200 (= call!30203 (arrayNoDuplicates!0 _keys!1025 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56556 (Cons!8353 (select (arr!13833 _keys!1025) #b00000000000000000000000000000000) Nil!8354) Nil!8354)))))

(declare-fun b!462541 () Bool)

(declare-fun contains!2520 (List!8357 (_ BitVec 64)) Bool)

(assert (=> b!462541 (= e!269976 (contains!2520 Nil!8354 (select (arr!13833 _keys!1025) #b00000000000000000000000000000000)))))

(assert (= (and d!74847 (not res!276673)) b!462538))

(assert (= (and b!462538 res!276674) b!462541))

(assert (= (and b!462538 res!276672) b!462540))

(assert (= (and b!462540 c!56556) b!462537))

(assert (= (and b!462540 (not c!56556)) b!462539))

(assert (= (or b!462537 b!462539) bm!30200))

(declare-fun m!445409 () Bool)

(assert (=> b!462538 m!445409))

(assert (=> b!462538 m!445409))

(declare-fun m!445411 () Bool)

(assert (=> b!462538 m!445411))

(assert (=> b!462540 m!445409))

(assert (=> b!462540 m!445409))

(assert (=> b!462540 m!445411))

(assert (=> bm!30200 m!445409))

(declare-fun m!445413 () Bool)

(assert (=> bm!30200 m!445413))

(assert (=> b!462541 m!445409))

(assert (=> b!462541 m!445409))

(declare-fun m!445415 () Bool)

(assert (=> b!462541 m!445415))

(assert (=> b!462505 d!74847))

(declare-fun d!74849 () Bool)

(assert (=> d!74849 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!41410 d!74849))

(declare-fun d!74851 () Bool)

(assert (=> d!74851 (= (array_inv!9986 _keys!1025) (bvsge (size!14185 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!41410 d!74851))

(declare-fun d!74853 () Bool)

(assert (=> d!74853 (= (array_inv!9987 _values!833) (bvsge (size!14186 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!41410 d!74853))

(declare-fun b!462550 () Bool)

(declare-fun e!269985 () Bool)

(declare-fun e!269986 () Bool)

(assert (=> b!462550 (= e!269985 e!269986)))

(declare-fun lt!209217 () (_ BitVec 64))

(assert (=> b!462550 (= lt!209217 (select (arr!13833 _keys!1025) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!13393 0))(
  ( (Unit!13394) )
))
(declare-fun lt!209216 () Unit!13393)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!28805 (_ BitVec 64) (_ BitVec 32)) Unit!13393)

(assert (=> b!462550 (= lt!209216 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!209217 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!28805 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!462550 (arrayContainsKey!0 _keys!1025 lt!209217 #b00000000000000000000000000000000)))

(declare-fun lt!209215 () Unit!13393)

(assert (=> b!462550 (= lt!209215 lt!209216)))

(declare-fun res!276679 () Bool)

(declare-datatypes ((SeekEntryResult!3530 0))(
  ( (MissingZero!3530 (index!16299 (_ BitVec 32))) (Found!3530 (index!16300 (_ BitVec 32))) (Intermediate!3530 (undefined!4342 Bool) (index!16301 (_ BitVec 32)) (x!43143 (_ BitVec 32))) (Undefined!3530) (MissingVacant!3530 (index!16302 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!28805 (_ BitVec 32)) SeekEntryResult!3530)

(assert (=> b!462550 (= res!276679 (= (seekEntryOrOpen!0 (select (arr!13833 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3530 #b00000000000000000000000000000000)))))

(assert (=> b!462550 (=> (not res!276679) (not e!269986))))

(declare-fun b!462551 () Bool)

(declare-fun call!30206 () Bool)

(assert (=> b!462551 (= e!269986 call!30206)))

(declare-fun b!462552 () Bool)

(declare-fun e!269984 () Bool)

(assert (=> b!462552 (= e!269984 e!269985)))

(declare-fun c!56559 () Bool)

(assert (=> b!462552 (= c!56559 (validKeyInArray!0 (select (arr!13833 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!462553 () Bool)

(assert (=> b!462553 (= e!269985 call!30206)))

(declare-fun d!74855 () Bool)

(declare-fun res!276680 () Bool)

(assert (=> d!74855 (=> res!276680 e!269984)))

(assert (=> d!74855 (= res!276680 (bvsge #b00000000000000000000000000000000 (size!14185 _keys!1025)))))

(assert (=> d!74855 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!269984)))

(declare-fun bm!30203 () Bool)

(assert (=> bm!30203 (= call!30206 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(assert (= (and d!74855 (not res!276680)) b!462552))

(assert (= (and b!462552 c!56559) b!462550))

(assert (= (and b!462552 (not c!56559)) b!462553))

(assert (= (and b!462550 res!276679) b!462551))

(assert (= (or b!462551 b!462553) bm!30203))

(assert (=> b!462550 m!445409))

(declare-fun m!445417 () Bool)

(assert (=> b!462550 m!445417))

(declare-fun m!445419 () Bool)

(assert (=> b!462550 m!445419))

(assert (=> b!462550 m!445409))

(declare-fun m!445421 () Bool)

(assert (=> b!462550 m!445421))

(assert (=> b!462552 m!445409))

(assert (=> b!462552 m!445409))

(assert (=> b!462552 m!445411))

(declare-fun m!445423 () Bool)

(assert (=> bm!30203 m!445423))

(assert (=> b!462500 d!74855))

(declare-fun b!462561 () Bool)

(declare-fun e!269991 () Bool)

(assert (=> b!462561 (= e!269991 tp_is_empty!12519)))

(declare-fun b!462560 () Bool)

(declare-fun e!269992 () Bool)

(assert (=> b!462560 (= e!269992 tp_is_empty!12519)))

(declare-fun mapIsEmpty!20455 () Bool)

(declare-fun mapRes!20455 () Bool)

(assert (=> mapIsEmpty!20455 mapRes!20455))

(declare-fun mapNonEmpty!20455 () Bool)

(declare-fun tp!39274 () Bool)

(assert (=> mapNonEmpty!20455 (= mapRes!20455 (and tp!39274 e!269992))))

(declare-fun mapKey!20455 () (_ BitVec 32))

(declare-fun mapRest!20455 () (Array (_ BitVec 32) ValueCell!5916))

(declare-fun mapValue!20455 () ValueCell!5916)

(assert (=> mapNonEmpty!20455 (= mapRest!20449 (store mapRest!20455 mapKey!20455 mapValue!20455))))

(declare-fun condMapEmpty!20455 () Bool)

(declare-fun mapDefault!20455 () ValueCell!5916)

(assert (=> mapNonEmpty!20449 (= condMapEmpty!20455 (= mapRest!20449 ((as const (Array (_ BitVec 32) ValueCell!5916)) mapDefault!20455)))))

(assert (=> mapNonEmpty!20449 (= tp!39268 (and e!269991 mapRes!20455))))

(assert (= (and mapNonEmpty!20449 condMapEmpty!20455) mapIsEmpty!20455))

(assert (= (and mapNonEmpty!20449 (not condMapEmpty!20455)) mapNonEmpty!20455))

(assert (= (and mapNonEmpty!20455 ((_ is ValueCellFull!5916) mapValue!20455)) b!462560))

(assert (= (and mapNonEmpty!20449 ((_ is ValueCellFull!5916) mapDefault!20455)) b!462561))

(declare-fun m!445425 () Bool)

(assert (=> mapNonEmpty!20455 m!445425))

(check-sat (not bm!30203) tp_is_empty!12519 (not b!462552) (not b!462541) (not mapNonEmpty!20455) (not bm!30200) (not b!462540) (not b!462550) (not b!462538))
(check-sat)
